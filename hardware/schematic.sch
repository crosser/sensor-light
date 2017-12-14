EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
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
Wire Wire Line
	1850 5050 10050 5050
$Comp
L GND #PWR?
U 1 1 5A326219
P 1850 5200
F 0 "#PWR?" H 1850 4950 50  0001 C CNN
F 1 "GND" H 1850 5050 50  0000 C CNN
F 2 "" H 1850 5200 50  0000 C CNN
F 3 "" H 1850 5200 50  0000 C CNN
	1    1850 5200
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q1
U 1 1 5A3279EB
P 9950 4550
F 0 "Q1" H 10250 4600 50  0000 R CNN
F 1 "IRLML2502" H 10600 4500 50  0000 R CNN
F 2 "" H 10150 4650 50  0000 C CNN
F 3 "" H 9950 4550 50  0000 C CNN
	1    9950 4550
	1    0    0    -1  
$EndComp
$Comp
L LED LED
U 1 1 5A327AB9
P 10050 4150
F 0 "LED Strip" H 10050 4250 50  0000 C CNN
F 1 "LED" H 10050 4050 50  0000 C CNN
F 2 "" H 10050 4150 50  0000 C CNN
F 3 "" H 10050 4150 50  0000 C CNN
	1    10050 4150
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5A327D95
P 10050 4900
F 0 "R3" V 10130 4900 50  0000 C CNN
F 1 "10 O" V 10050 4900 50  0000 C CNN
F 2 "" V 9980 4900 50  0000 C CNN
F 3 "" H 10050 4900 50  0000 C CNN
	1    10050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4000 10050 3350
$Comp
L R R2
U 1 1 5A327F62
P 9600 4550
F 0 "R2" V 9680 4550 50  0000 C CNN
F 1 "27 O" V 9600 4550 50  0000 C CNN
F 2 "" V 9530 4550 50  0000 C CNN
F 3 "" H 9600 4550 50  0000 C CNN
	1    9600 4550
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5A327FCB
P 9450 4900
F 0 "R1" V 9530 4900 50  0000 C CNN
F 1 "100 kO" V 9450 4900 50  0000 C CNN
F 2 "" V 9380 4900 50  0000 C CNN
F 3 "" H 9450 4900 50  0000 C CNN
	1    9450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4750 9450 4550
$EndSCHEMATC
