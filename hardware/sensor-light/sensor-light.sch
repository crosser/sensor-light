EESchema Schematic File Version 2
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
P 5750 4300
F 0 "U2" H 4250 4900 50  0000 C CNN
F 1 "MSP430G2553IN20" H 7000 3750 50  0000 C CNN
F 2 "20N" H 4300 3750 50  0001 C CIN
F 3 "" H 5700 4300 50  0001 C CNN
	1    5750 4300
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 5A4A4C0F
P 2200 3900
F 0 "C1" H 2225 4000 50  0000 L CNN
F 1 "10uF" H 2225 3800 50  0000 L CNN
F 2 "" H 2238 3750 50  0001 C CNN
F 3 "" H 2200 3900 50  0001 C CNN
	1    2200 3900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A4A4D3B
P 9650 4850
F 0 "R2" V 9730 4850 50  0000 C CNN
F 1 "100 KOhm" V 9650 4850 50  0000 C CNN
F 2 "" V 9580 4850 50  0001 C CNN
F 3 "" H 9650 4850 50  0001 C CNN
	1    9650 4850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A4A4DD8
P 9300 4200
F 0 "R1" V 9380 4200 50  0000 C CNN
F 1 "27 Ohm" V 9300 4200 50  0000 C CNN
F 2 "" V 9230 4200 50  0001 C CNN
F 3 "" H 9300 4200 50  0001 C CNN
	1    9300 4200
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02_MALE J1
U 1 1 5A4A4E4F
P 1100 5400
F 0 "J1" H 1100 5575 50  0000 C CNN
F 1 "Power IN 12V" H 1100 5200 50  0000 C CNN
F 2 "" H 1100 5500 50  0001 C CNN
F 3 "" H 1100 5500 50  0001 C CNN
	1    1100 5400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02_FEMALE J6
U 1 1 5A4A4EAE
P 10050 2850
F 0 "J6" H 10050 3000 50  0000 C CNN
F 1 "PWM Power OUT 12V" H 10150 2850 50  0000 C BNN
F 2 "" H 10050 2850 50  0001 C CNN
F 3 "" H 10050 2850 50  0001 C CNN
	1    10050 2850
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_DGS Q1
U 1 1 5A4A4F0F
P 9850 4200
F 0 "Q1" H 10050 4250 50  0000 L CNN
F 1 "IRLML2502" H 10050 4150 50  0000 L CNN
F 2 "" H 10050 4300 50  0001 C CNN
F 3 "" H 9850 4200 50  0001 C CNN
	1    9850 4200
	1    0    0    -1  
$EndComp
$Comp
L LD1117S33TR U1
U 1 1 5A4A4F7A
P 1800 3350
F 0 "U1" H 1800 3600 50  0000 C CNN
F 1 "Reg 3.3V" H 1800 3550 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 1800 3450 50  0001 C CNN
F 3 "" H 1800 3350 50  0001 C CNN
	1    1800 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03_MALE J5
U 1 1 5A4A4FE3
P 8950 3500
F 0 "J5" H 8950 3775 50  0000 C CNN
F 1 "Light Sensor Header" H 8975 3225 50  0000 C CNN
F 2 "" H 8950 3700 50  0001 C CNN
F 3 "" H 8950 3700 50  0001 C CNN
	1    8950 3500
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03_MALE J3
U 1 1 5A4A5096
P 3150 3950
F 0 "J3" H 3150 4225 50  0000 C CNN
F 1 "PIR Sensor Header 1" H 3175 3675 50  0000 C CNN
F 2 "" H 3150 4150 50  0001 C CNN
F 3 "" H 3150 4150 50  0001 C CNN
	1    3150 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03_MALE J2
U 1 1 5A4A5117
P 2550 4800
F 0 "J2" H 2550 5075 50  0000 C CNN
F 1 "PIR Sensor Header 2" H 2575 4525 50  0000 C CNN
F 2 "" H 2550 5000 50  0001 C CNN
F 3 "" H 2550 5000 50  0001 C CNN
	1    2550 4800
	1    0    0    -1  
$EndComp
$Comp
L SW_DIP_x01 SW1
U 1 1 5A4A528A
P 8200 5200
F 0 "SW1" H 8200 5350 50  0000 C CNN
F 1 "Manual ON/OFF" H 8200 5050 50  0000 C CNN
F 2 "" H 8200 5200 50  0001 C CNN
F 3 "" H 8200 5200 50  0001 C CNN
	1    8200 5200
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 5A4A52F3
P 7800 5050
F 0 "D2" H 7800 5150 50  0000 C CNN
F 1 "Green LED" H 7800 4950 50  0000 C CNN
F 2 "" H 7800 5050 50  0001 C CNN
F 3 "" H 7800 5050 50  0001 C CNN
	1    7800 5050
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 5A4A535C
P 7550 5250
F 0 "D1" H 7550 5350 50  0000 C CNN
F 1 "Red LED" H 7550 5150 50  0000 C CNN
F 2 "" H 7550 5250 50  0001 C CNN
F 3 "" H 7550 5250 50  0001 C CNN
	1    7550 5250
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X04_MALE J4
U 1 1 5A4A5801
P 5750 2200
F 0 "J4" H 5750 2575 50  0000 C CNN
F 1 "PROG Header" H 5750 1800 50  0000 C CNN
F 2 "" H 5750 2500 50  0001 C CNN
F 3 "" H 5750 2500 50  0001 C CNN
	1    5750 2200
	0    1    1    0   
$EndComp
$Comp
L GNDREF #PWR01
U 1 1 5A4A62AF
P 5750 5500
F 0 "#PWR01" H 5750 5250 50  0001 C CNN
F 1 "GNDREF" H 5750 5350 50  0000 C CNN
F 2 "" H 5750 5500 50  0001 C CNN
F 3 "" H 5750 5500 50  0001 C CNN
	1    5750 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5500 9950 5500
Wire Wire Line
	5750 4950 5750 5500
Wire Wire Line
	2200 3300 8650 3300
Wire Wire Line
	5750 3300 5750 3600
Wire Wire Line
	1800 3600 1800 5500
Connection ~ 1800 5500
Wire Wire Line
	1400 2750 1400 5300
Wire Wire Line
	1400 3300 1950 3300
Wire Wire Line
	1400 2750 9950 2750
Connection ~ 1400 3300
Wire Wire Line
	2200 3300 2200 3750
Wire Wire Line
	9950 2950 9950 4000
Wire Wire Line
	9950 5500 9950 4400
Connection ~ 2200 5500
Connection ~ 2200 3300
Wire Wire Line
	9650 4200 9650 4700
Wire Wire Line
	9650 5000 9650 5500
Connection ~ 9650 5500
Connection ~ 9650 4200
Connection ~ 5750 5500
Wire Wire Line
	7450 4400 8400 4400
Wire Wire Line
	8400 4400 8400 3500
Wire Wire Line
	8400 3500 8650 3500
Wire Wire Line
	8650 3700 8650 5500
Connection ~ 8650 5500
Wire Wire Line
	9450 4200 9650 4200
Wire Wire Line
	9150 4200 7450 4200
Connection ~ 8200 5500
Wire Wire Line
	8200 4300 8200 4900
Wire Wire Line
	2850 5000 2850 5500
Connection ~ 2850 5500
Wire Wire Line
	2850 4600 2850 3300
Connection ~ 2850 3300
Wire Wire Line
	3450 3300 3450 3750
Wire Wire Line
	3450 5500 3450 4150
Wire Wire Line
	3450 3950 3600 3950
Wire Wire Line
	3600 3950 3600 4400
Wire Wire Line
	3600 4400 4050 4400
Wire Wire Line
	4050 4500 3150 4500
Wire Wire Line
	3150 4500 3150 4800
Wire Wire Line
	3150 4800 2850 4800
Connection ~ 7550 5500
Wire Wire Line
	7800 5200 7800 5500
Connection ~ 7800 5500
Wire Wire Line
	7550 5100 7550 4600
Wire Wire Line
	7550 4600 7450 4600
Wire Wire Line
	7800 4900 7800 4000
Wire Wire Line
	7800 4000 7450 4000
Wire Wire Line
	7450 4300 8200 4300
Connection ~ 5750 3300
Connection ~ 3450 3300
Connection ~ 3450 5500
Wire Wire Line
	2200 5500 2200 4050
Wire Wire Line
	5450 2500 3800 2500
Wire Wire Line
	3800 2500 3800 5500
Connection ~ 3800 5500
Wire Wire Line
	4050 3850 4050 3100
Wire Wire Line
	4050 3100 5650 3100
Wire Wire Line
	5650 3100 5650 2500
Wire Wire Line
	7450 3850 7450 3100
Wire Wire Line
	7450 3100 5850 3100
Wire Wire Line
	5850 3100 5850 2500
Wire Wire Line
	7550 5500 7550 5400
Wire Wire Line
	6050 2500 6050 3300
Connection ~ 6050 3300
NoConn ~ 7450 4100
NoConn ~ 7450 4500
NoConn ~ 7450 4700
NoConn ~ 4050 4000
NoConn ~ 4050 4100
NoConn ~ 4050 4200
NoConn ~ 4050 4300
NoConn ~ 4050 4600
NoConn ~ 4050 4700
$EndSCHEMATC
