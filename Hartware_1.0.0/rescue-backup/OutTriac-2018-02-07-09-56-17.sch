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
LIBS:special
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
LIBS:CCF-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 5 5
Title "Salida de potencia con triac"
Date ""
Rev ""
Comp "MIO"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2500 2400 0    60   Input ~ 0
Compresor
Text HLabel 2500 4400 0    60   Input ~ 0
Ventilador
Text HLabel 2500 6250 0    60   Input ~ 0
Resistencia
Connection ~ 5000 1950
Wire Wire Line
	5000 2150 5000 1950
Text GLabel 7650 4000 0    60   Output ~ 0
Vac
Text GLabel 7650 4400 0    60   Output ~ 0
Nac
Wire Wire Line
	5550 3150 5000 3150
Wire Wire Line
	5300 3250 5300 3150
Connection ~ 5300 3150
Text GLabel 5950 1950 2    60   Input ~ 0
CO
Connection ~ 5550 1950
Text GLabel 7900 4100 0    60   Output ~ 0
RE
Text GLabel 7650 4200 0    60   Output ~ 0
VE
Text GLabel 7900 4300 0    60   Output ~ 0
CO
Wire Wire Line
	8050 4000 7650 4000
Wire Wire Line
	7900 4100 8050 4100
Wire Wire Line
	8050 4200 7650 4200
Wire Wire Line
	7900 4300 8050 4300
Wire Wire Line
	8050 4400 7650 4400
Wire Wire Line
	3850 2400 4050 2400
Wire Wire Line
	4050 2400 4050 1950
Wire Wire Line
	4550 1950 5950 1950
$Comp
L MOC3021M IC1
U 1 1 58C56BEB
P 3500 2500
F 0 "IC1" H 3286 2679 40  0000 C CNN
F 1 "MOC3021M" H 3600 2315 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm_LongPads" H 3336 2325 29  0000 C CNN
F 3 "" H 3500 2500 60  0001 C CNN
	1    3500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2400 2500 2400
$Comp
L R R17
U 1 1 58C575AF
P 2975 2900
F 0 "R17" V 3055 2900 40  0000 C CNN
F 1 "330" V 2982 2901 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2905 2900 30  0001 C CNN
F 3 "" H 2975 2900 30  0000 C CNN
	1    2975 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 58C5762F
P 2975 3225
F 0 "#PWR012" H 2975 3225 30  0001 C CNN
F 1 "GND" H 2975 3155 30  0001 C CNN
F 2 "" H 2975 3225 60  0001 C CNN
F 3 "" H 2975 3225 60  0001 C CNN
	1    2975 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 3225 2975 3150
Wire Wire Line
	3150 2600 2975 2600
Wire Wire Line
	2975 2600 2975 2650
$Comp
L R R20
U 1 1 58C57C4D
P 4300 1950
F 0 "R20" V 4380 1950 40  0000 C CNN
F 1 "330" V 4307 1951 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4230 1950 30  0001 C CNN
F 3 "" H 4300 1950 30  0000 C CNN
	1    4300 1950
	0    1    1    0   
$EndComp
$Comp
L TRIAC U2
U 1 1 58C587E4
P 5000 2550
F 0 "U2" H 4750 2900 70  0000 C CNN
F 1 "TRIAC" H 4700 2300 60  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 5000 2550 60  0001 C CNN
F 3 "" H 5000 2550 60  0000 C CNN
	1    5000 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3150 5000 2800
Wire Wire Line
	4500 2750 4050 2750
Wire Wire Line
	4050 2750 4050 2600
Wire Wire Line
	4050 2600 3850 2600
$Comp
L C C4
U 1 1 58C59E22
P 5550 2850
F 0 "C4" H 5550 2950 40  0000 L CNN
F 1 "100nF" H 5556 2765 40  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 5588 2700 30  0001 C CNN
F 3 "" H 5550 2850 60  0000 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 58C5A017
P 5550 2250
F 0 "R23" V 5630 2250 40  0000 C CNN
F 1 "100" V 5557 2251 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5480 2250 30  0001 C CNN
F 3 "" H 5550 2250 30  0000 C CNN
	1    5550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2000 5550 1950
Wire Wire Line
	5550 3150 5550 3050
Wire Wire Line
	5550 2650 5550 2500
$Comp
L CONN_5 P1
U 1 1 58C5B993
P 8450 4200
F 0 "P1" V 8400 4200 50  0000 C CNN
F 1 "CONN_5" V 8500 4200 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-5pol" H 8450 4200 60  0001 C CNN
F 3 "" H 8450 4200 60  0001 C CNN
	1    8450 4200
	1    0    0    -1  
$EndComp
Text GLabel 5950 3950 2    60   Input Italic 0
VE
Text GLabel 5950 5800 2    60   Input ~ 0
RE
Text GLabel 5300 3250 3    60   Input ~ 0
Nac
Connection ~ 5000 3950
Wire Wire Line
	5000 4150 5000 3950
Wire Wire Line
	5550 5150 5000 5150
Wire Wire Line
	5300 5250 5300 5150
Connection ~ 5300 5150
Connection ~ 5550 3950
Wire Wire Line
	3850 4400 4050 4400
Wire Wire Line
	4050 4400 4050 3950
Wire Wire Line
	4550 3950 5950 3950
$Comp
L MOC3021M IC2
U 1 1 58C5E957
P 3500 4500
F 0 "IC2" H 3286 4679 40  0000 C CNN
F 1 "MOC3021M" H 3600 4315 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm_LongPads" H 3336 4325 29  0000 C CNN
F 3 "" H 3500 4500 60  0001 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4400 2500 4400
$Comp
L R R18
U 1 1 58C5E95E
P 2975 4900
F 0 "R18" V 3055 4900 40  0000 C CNN
F 1 "330" V 2982 4901 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2905 4900 30  0001 C CNN
F 3 "" H 2975 4900 30  0000 C CNN
	1    2975 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 58C5E964
P 2975 5225
F 0 "#PWR013" H 2975 5225 30  0001 C CNN
F 1 "GND" H 2975 5155 30  0001 C CNN
F 2 "" H 2975 5225 60  0001 C CNN
F 3 "" H 2975 5225 60  0001 C CNN
	1    2975 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 5225 2975 5150
Wire Wire Line
	3150 4600 2975 4600
Wire Wire Line
	2975 4600 2975 4650
$Comp
L R R21
U 1 1 58C5E96D
P 4300 3950
F 0 "R21" V 4380 3950 40  0000 C CNN
F 1 "330" V 4307 3951 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4230 3950 30  0001 C CNN
F 3 "" H 4300 3950 30  0000 C CNN
	1    4300 3950
	0    1    1    0   
$EndComp
$Comp
L TRIAC U3
U 1 1 58C5E973
P 5000 4550
F 0 "U3" H 4750 4900 70  0000 C CNN
F 1 "TRIAC" H 4700 4300 60  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 5000 4550 60  0001 C CNN
F 3 "" H 5000 4550 60  0000 C CNN
	1    5000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5150 5000 4800
Wire Wire Line
	4500 4750 4050 4750
Wire Wire Line
	4050 4750 4050 4600
Wire Wire Line
	4050 4600 3850 4600
$Comp
L C C5
U 1 1 58C5E97D
P 5550 4850
F 0 "C5" H 5550 4950 40  0000 L CNN
F 1 "100nF" H 5556 4765 40  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 5588 4700 30  0001 C CNN
F 3 "" H 5550 4850 60  0000 C CNN
	1    5550 4850
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 58C5E983
P 5550 4250
F 0 "R24" V 5630 4250 40  0000 C CNN
F 1 "100" V 5557 4251 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5480 4250 30  0001 C CNN
F 3 "" H 5550 4250 30  0000 C CNN
	1    5550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4000 5550 3950
Wire Wire Line
	5550 5150 5550 5050
Wire Wire Line
	5550 4650 5550 4500
Text GLabel 5300 5250 3    60   Input ~ 0
Nac
Connection ~ 5000 5800
Wire Wire Line
	5000 6000 5000 5800
Wire Wire Line
	5550 7000 5000 7000
Wire Wire Line
	5300 7100 5300 7000
Connection ~ 5300 7000
Connection ~ 5550 5800
Wire Wire Line
	3850 6250 4050 6250
Wire Wire Line
	4050 6250 4050 5800
Wire Wire Line
	4550 5800 5950 5800
$Comp
L MOC3021M IC3
U 1 1 58C5EFD8
P 3500 6350
F 0 "IC3" H 3286 6529 40  0000 C CNN
F 1 "MOC3021M" H 3600 6165 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm_LongPads" H 3336 6175 29  0000 C CNN
F 3 "" H 3500 6350 60  0001 C CNN
	1    3500 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6250 2500 6250
$Comp
L R R19
U 1 1 58C5EFDF
P 2975 6750
F 0 "R19" V 3055 6750 40  0000 C CNN
F 1 "330" V 2982 6751 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2905 6750 30  0001 C CNN
F 3 "" H 2975 6750 30  0000 C CNN
	1    2975 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 58C5EFE5
P 2975 7075
F 0 "#PWR014" H 2975 7075 30  0001 C CNN
F 1 "GND" H 2975 7005 30  0001 C CNN
F 2 "" H 2975 7075 60  0001 C CNN
F 3 "" H 2975 7075 60  0001 C CNN
	1    2975 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 7075 2975 7000
Wire Wire Line
	3150 6450 2975 6450
Wire Wire Line
	2975 6450 2975 6500
$Comp
L R R22
U 1 1 58C5EFEE
P 4300 5800
F 0 "R22" V 4380 5800 40  0000 C CNN
F 1 "330" V 4307 5801 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4230 5800 30  0001 C CNN
F 3 "" H 4300 5800 30  0000 C CNN
	1    4300 5800
	0    1    1    0   
$EndComp
$Comp
L TRIAC U4
U 1 1 58C5EFF4
P 5000 6400
F 0 "U4" H 4750 6750 70  0000 C CNN
F 1 "TRIAC" H 4700 6150 60  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 5000 6400 60  0001 C CNN
F 3 "" H 5000 6400 60  0000 C CNN
	1    5000 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 7000 5000 6650
Wire Wire Line
	4500 6600 4050 6600
Wire Wire Line
	4050 6600 4050 6450
Wire Wire Line
	4050 6450 3850 6450
$Comp
L C C6
U 1 1 58C5EFFE
P 5550 6700
F 0 "C6" H 5550 6800 40  0000 L CNN
F 1 "100nF" H 5556 6615 40  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 5588 6550 30  0001 C CNN
F 3 "" H 5550 6700 60  0000 C CNN
	1    5550 6700
	1    0    0    -1  
$EndComp
$Comp
L R R25
U 1 1 58C5F004
P 5550 6100
F 0 "R25" V 5630 6100 40  0000 C CNN
F 1 "100" V 5557 6101 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5480 6100 30  0001 C CNN
F 3 "" H 5550 6100 30  0000 C CNN
	1    5550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5850 5550 5800
Wire Wire Line
	5550 7000 5550 6900
Wire Wire Line
	5550 6500 5550 6350
Text GLabel 5300 7100 3    60   Input ~ 0
Nac
$EndSCHEMATC
