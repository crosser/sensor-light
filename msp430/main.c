#include <msp430.h> 

static volatile unsigned int ADC_Result;
static volatile unsigned int irq_events = 0;
enum {ev_btn1 = 0, ev_btn2, ev_pir1, ev_pir2, ev_tmr, ev_adc, ev_MAX};

int main(void)
{
	int Duty_Cycle = 1;
	int Increment = 1;
	unsigned int Time_Count = 0;
	unsigned int Time_Left = 5;

	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	// Configure GPIO Out
	P1DIR |= BIT0|BIT1|BIT2;	// Set LEDs & PWM to output direction
	P1OUT &= ~(BIT0|BIT1);		// P1.0&1 LEDs off
	P1SEL1 |= BIT2;			// P1.2 PWM out

	// Configure GPIO In
	P2DIR &= ~(BIT3|BIT7);		// Buttons
	P2OUT |= BIT3|BIT7;		// Pull up
	P2REN |= BIT3|BIT7;		// Enable pull-up
	P2IES |= BIT3|BIT7;		// INT on Hi->Lo edge
	P2IE  |= BIT3|BIT7;		// INT enable

	P2DIR &= ~(BIT2|BIT5);		// PIR Sensors
	P2OUT &= ~(BIT2|BIT5);		// Pull down
	P2REN |= BIT2|BIT5;		// Enable pull-down
	P2IES &= ~(BIT2|BIT5);		// INT on Lo->Hi edge
	P2IE  |= BIT2|BIT5;		// INT enable

	// Configure ADC A7 pin
	SYSCFG2 |= ADCPCTL7;

	// Configure ADC10
	ADCCTL0 |= ADCSHT_2 | ADCON;	// ADCON, S&H=16 ADC clks
	ADCCTL1 |= ADCSHP;		// ADCCLK = MODOSC; sampling timer
	ADCCTL2 |= ADCRES;		// 10-bit conversion results
	ADCMCTL0 |= ADCINCH_7;		// A7 ADC input select; Vref=AVCC
	ADCIE |= ADCIE0;		// Enable ADC conv complete interrupt

	// Configure timer A0 for PWM
	TA0CCR0 = 10000-1;		// PWM Period
	TA0CCTL2 = OUTMOD_7;		// CCR2 reset/set
	TA0CCR2 = 500;			// CCR2 PWM duty cycle
	TA0CTL = TASSEL__SMCLK | MC__UP | TACLR;	// SMCLK, up mode, clear TAR

	//Configure timer A1 for counting time
	TA1CTL |= TASSEL__SMCLK | MC__CONTINUOUS | TACLR | TAIE;	// SMCLK, no divider, continuous mode

	// Disable the GPIO power-on default high-impedance mode to activate
	// previously configured port settings
	PM5CTL0 &= ~LOCKLPM5;

	while(1)
	{
		unsigned int events;

		_disable_interrupts();
		events = irq_events;
		irq_events = 0;
		_enable_interrupts();

		// Button 2 or PIR events initiate light measurement and tuns on green led
		if (events & (1<<ev_btn2|1<<ev_pir1|1<<ev_pir2)) {
			if (Duty_Cycle > 1) {
				Time_Left = 15;
				continue;
			}
			ADCCTL0 |= ADCENC | ADCSC;	// Sampling and conversion start
			P1OUT |= BIT1;	// Set P1.1 LED on
		}

		// End of light measurement, set new Duty_Cycle and zero increment and tuns off green led
		if (events & 1<<ev_adc) {
			P1OUT &= ~BIT1;	// Clear P1.1 LED off
			if (Time_Left)
				continue;
			if (ADC_Result < 200)
				continue;
			Time_Left = 15;
			Increment = 1;
		}

		// Button 1 sets non-zero increment (and toggles it)
		if (events & 1<<ev_btn1) {
			if (Duty_Cycle > 5000) {
				Time_Left = 0;
				Increment = -1;
			} else {
				Time_Left = 15;
				Increment = 1;
			}
		}

		// Timer event (100 ms) changed duty cycle and flashes red led
		if (events & 1<<ev_tmr) {
			if (Time_Count++ > 10) {
				Time_Count = 0;
				P1OUT ^= BIT0;
				if (Time_Left)
					Time_Left--;
				else if (Duty_Cycle > 1)
					Increment = -1;
			}
			if (Increment == 0)
				continue;
			else if (Increment > 0)
				Duty_Cycle *= 2;
			else if (Increment < 0)
				Duty_Cycle /= 2;
			if (Duty_Cycle < 1) {
				Duty_Cycle = 1;
				Increment = 0;
			}
			if (Duty_Cycle > (10000-1)) {
				Duty_Cycle = 10000-1;
				Increment = 0;
			}
			TA0CCR2 = Duty_Cycle;
		}
		__bis_SR_register(LPM0_bits | GIE);
		__no_operation();
	}
	return 0; /* not reached */
}

// TIMER interrupt routine
#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector = TIMER1_A1_VECTOR
__interrupt void Timer_A (void)
#elif defined(__GNUC__)
void __attribute__ ((interrupt(TIMER1_A1_VECTOR))) Timer_A (void)
#else
#error Compiler not supported!
#endif
{
	switch(__even_in_range(TA1IV,TA1IV_TAIFG))
	{
		case TA1IV_NONE:
			break;	// No interrupt
		case TA1IV_TACCR1:
			break;	// CCR1 not used
		case TA1IV_TACCR2:
			break;	// CCR2 not used
		case TA1IV_TAIFG:
			irq_events |= 1<<ev_tmr;
			__bic_SR_register_on_exit(LPM0_bits);	// Clear CPUOFF bit from LPM0
			break;
		default:
			break;
	}
	//if (Time_Count++ > 1000) {
	//    Time_Count = 0;
	//    __bic_SR_register_on_exit(LPM0_bits);	// Clear CPUOFF bit from LPM0
	//}
}

// ADC interrupt service routine
#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector=ADC_VECTOR
__interrupt void ADC_ISR(void)
#elif defined(__GNUC__)
void __attribute__ ((interrupt(ADC_VECTOR))) ADC_ISR (void)
#else
#error Compiler not supported!
#endif
{
	switch(__even_in_range(ADCIV,ADCIV_ADCIFG))
	{
		case ADCIV_NONE:
			break;
		case ADCIV_ADCOVIFG:
			break;
		case ADCIV_ADCTOVIFG:
			break;
		case ADCIV_ADCHIIFG:
			break;
		case ADCIV_ADCLOIFG:
			break;
		case ADCIV_ADCINIFG:
			break;
		case ADCIV_ADCIFG:
			ADC_Result = ADCMEM0;
			irq_events |= 1<<ev_adc;
			__bic_SR_register_on_exit(LPM0_bits);	// Clear CPUOFF bit from LPM0
			break;
		default:
			break;
	}
}

// GPIO interrupt service routine
#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector=PORT2_VECTOR
__interrupt void Port_2(void)
#elif defined(__GNUC__)
void __attribute__ ((interrupt(PORT2_VECTOR))) Port_2 (void)
#else
#error Compiler not supported!
#endif
{
	if (P2IFG & BIT3) {
		irq_events |= 1<<ev_btn1;
		P2IFG &= ~BIT3;	// Clear P1.3 IFG
	}
	if (P2IFG & BIT7) {
		irq_events |= 1<<ev_btn2;
		P2IFG &= ~BIT7;	// Clear P1.3 IFG
	}
	if (P2IFG & BIT2) {
		irq_events |= 1<<ev_pir1;
		P2IFG &= ~BIT2;	// Clear P1.4 IFG
	}
	if (P2IFG & BIT5) {
		irq_events |= 1<<ev_pir2;
		P2IFG &= ~BIT5;	// Clear P1.7 IFG
	}
	__bic_SR_register_on_exit(LPM3_bits);	// Exit LPM3
}
