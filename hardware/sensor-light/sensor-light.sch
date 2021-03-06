EESchema Schematic File Version 2
LIBS:sensor-light-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:msp430
LIBS:switches
LIBS:sensor-light-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MSP430G2553IN20 U2
U 1 1 5A4A4B70
P 7100 4300
F 0 "U2" H 5600 4900 50  0000 C CNN
F 1 "MSP430G2553IN20" H 8350 3750 50  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm_Socket" H 5650 3750 50  0001 C CIN
F 3 "" H 7050 4300 50  0001 C CNN
	1    7100 4300
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 5A4A4C0F
P 3200 3900
F 0 "C1" H 3225 4000 50  0000 L CNN
F 1 "10μF" H 3225 3800 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 3238 3750 50  0001 C CNN
F 3 "" H 3200 3900 50  0001 C CNN
	1    3200 3900
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q1
U 1 1 5A4A4F0F
P 1800 2750
F 0 "Q1" V 1700 2850 50  0000 L CNN
F 1 "IRLML2502" V 2000 2850 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2000 2850 50  0001 C CNN
F 3 "" H 1800 2750 50  0001 C CNN
	1    1800 2750
	0    -1   -1   0   
$EndComp
$Comp
L LD1117S33TR U1
U 1 1 5A4A4F7A
P 2800 3350
F 0 "U1" H 2800 3600 50  0000 C CNN
F 1 "Reg 3.3V" H 2800 3550 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 2800 3450 50  0001 C CNN
F 3 "" H 2800 3350 50  0001 C CNN
	1    2800 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03_MALE J5
U 1 1 5A4A4FE3
P 10300 4600
F 0 "J5" H 10300 4875 50  0000 C CNN
F 1 "Light Sensor" H 10325 4325 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 10300 4800 50  0001 C CNN
F 3 "" H 10300 4800 50  0001 C CNN
	1    10300 4600
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03_MALE J3
U 1 1 5A4A5096
P 4150 3950
F 0 "J3" H 4150 4225 50  0000 C CNN
F 1 "PIR Sensor 1" H 4175 3675 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 4150 4150 50  0001 C CNN
F 3 "" H 4150 4150 50  0001 C CNN
	1    4150 3950
	1    0    0    1   
$EndComp
$Comp
L CONN_01X03_MALE J2
U 1 1 5A4A5117
P 3550 4800
F 0 "J2" H 3550 5075 50  0000 C CNN
F 1 "PIR Sensor 2" H 3575 4525 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 3550 5000 50  0001 C CNN
F 3 "" H 3550 5000 50  0001 C CNN
	1    3550 4800
	1    0    0    1   
$EndComp
$Comp
L SW_DIP_x01 SW1
U 1 1 5A4A528A
P 9550 5200
F 0 "SW1" H 9550 5350 50  0000 C CNN
F 1 "Manual ON/OFF" H 9550 5050 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 9550 5200 50  0001 C CNN
F 3 "" H 9550 5200 50  0001 C CNN
	1    9550 5200
	0    1    1    0   
$EndComp
$Comp
L LED-RESCUE-sensor-light D2
U 1 1 5A4A52F3
P 9150 5050
F 0 "D2" H 9150 5150 50  0000 C CNN
F 1 "Green 2mA" H 9150 4950 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 9150 5050 50  0001 C CNN
F 3 "" H 9150 5050 50  0001 C CNN
	1    9150 5050
	0    -1   -1   0   
$EndComp
$Comp
L LED-RESCUE-sensor-light D1
U 1 1 5A4A535C
P 8900 5250
F 0 "D1" H 8900 5350 50  0000 C CNN
F 1 "Red 2mA" H 8900 5150 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 8900 5250 50  0001 C CNN
F 3 "" H 8900 5250 50  0001 C CNN
	1    8900 5250
	0    -1   -1   0   
$EndComp
NoConn ~ 8800 4100
NoConn ~ 8800 4500
NoConn ~ 8800 4700
NoConn ~ 5400 4000
NoConn ~ 5400 4100
NoConn ~ 5400 4200
NoConn ~ 5400 4300
NoConn ~ 5400 4600
NoConn ~ 5400 4700
$Comp
L R R3
U 1 1 5A4C95F9
P 8900 4950
F 0 "R3" V 8980 4950 50  0000 C CNN
F 1 "681" V 8800 4950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 8830 4950 50  0001 C CNN
F 3 "" H 8900 4950 50  0001 C CNN
	1    8900 4950
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5A4C9666
P 9150 4750
F 0 "R4" V 9230 4750 50  0000 C CNN
F 1 "681" V 9050 4750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 9080 4750 50  0001 C CNN
F 3 "" H 9150 4750 50  0001 C CNN
	1    9150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5500 7100 4950
Wire Wire Line
	3200 3300 9850 3300
Wire Wire Line
	7100 3300 7100 3600
Wire Wire Line
	2800 5500 2800 3600
Connection ~ 2800 5500
Wire Wire Line
	3200 3300 3200 3750
Connection ~ 3200 5500
Connection ~ 3200 3300
Connection ~ 7100 5500
Wire Wire Line
	8800 4400 10000 4400
Wire Wire Line
	10000 5500 10000 4800
Connection ~ 9550 5500
Wire Wire Line
	9550 4300 9550 4900
Wire Wire Line
	3850 5500 3850 5000
Connection ~ 3850 5500
Wire Wire Line
	3850 4600 3850 3300
Connection ~ 3850 3300
Wire Wire Line
	4450 3300 4450 3750
Wire Wire Line
	4450 5500 4450 4150
Wire Wire Line
	4450 3950 4600 3950
Wire Wire Line
	4600 3950 4600 4400
Wire Wire Line
	4600 4400 5400 4400
Wire Wire Line
	5400 4500 4150 4500
Wire Wire Line
	4150 4500 4150 4800
Wire Wire Line
	4150 4800 3850 4800
Connection ~ 8900 5500
Wire Wire Line
	9150 5500 9150 5200
Connection ~ 9150 5500
Wire Wire Line
	8900 4600 8800 4600
Wire Wire Line
	9150 4000 8800 4000
Wire Wire Line
	8800 4300 9550 4300
Connection ~ 7100 3300
Connection ~ 4450 3300
Connection ~ 4450 5500
Wire Wire Line
	3200 5500 3200 4050
Wire Wire Line
	8900 5500 8900 5400
Wire Wire Line
	9150 4600 9150 4000
Wire Wire Line
	8900 4800 8900 4600
$Comp
L CONN_01X04_FEMALE-RESCUE-sensor-light J6
U 1 1 5A4A4EAE
P 1100 3200
F 0 "J6" H 1100 3350 50  0000 C CNN
F 1 "Power IN/OUT 12V" V 1350 2850 50  0000 L CNN
F 2 "local:AKZ692_4" H 1100 3200 50  0001 C CNN
F 3 "" H 1100 3200 50  0001 C CNN
	1    1100 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 3300 2400 3300
Wire Wire Line
	1200 3500 1200 5500
Wire Wire Line
	1400 3300 1400 2900
Wire Wire Line
	1400 2900 1200 2900
Connection ~ 1400 3300
Wire Wire Line
	1200 3100 1250 3100
Wire Wire Line
	1200 5500 10000 5500
Wire Wire Line
	1250 3100 1250 2650
Wire Wire Line
	1250 2650 1600 2650
Wire Wire Line
	8800 4200 9000 4200
Wire Wire Line
	9000 4200 9000 2950
Wire Wire Line
	9000 2950 1800 2950
Wire Wire Line
	5200 4250 5200 5500
Connection ~ 5200 5500
Wire Wire Line
	5200 3650 5200 3300
Connection ~ 5200 3300
Wire Wire Line
	5400 3850 5200 3850
Wire Wire Line
	5300 4050 5200 4050
Wire Wire Line
	8800 3850 8800 3650
Wire Wire Line
	8800 3650 5300 3650
Wire Wire Line
	2000 2650 2100 2650
Wire Wire Line
	2100 2650 2100 5500
Connection ~ 2100 5500
Wire Wire Line
	10000 4600 9850 4600
Wire Wire Line
	9850 4600 9850 3300
$Comp
L CONN_01X04_MALE J4
U 1 1 5A4A5801
P 4900 3950
F 0 "J4" H 4900 4325 50  0000 C CNN
F 1 "PROG Header" H 4900 3550 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04_Pitch2.54mm" H 4900 4250 50  0001 C CNN
F 3 "" H 4900 4250 50  0001 C CNN
	1    4900 3950
	1    0    0    1   
$EndComp
Wire Wire Line
	5300 3650 5300 4050
$Comp
L C C2
U 1 1 5A8C5F51
P 1700 3900
F 0 "C2" H 1725 4000 50  0000 L CNN
F 1 "100nF" H 1725 3800 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 1738 3750 50  0001 C CNN
F 3 "" H 1700 3900 50  0000 C CNN
	1    1700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3750 1700 3300
Connection ~ 1700 3300
Wire Wire Line
	1700 4050 1700 5500
Connection ~ 1700 5500
$EndSCHEMATC
