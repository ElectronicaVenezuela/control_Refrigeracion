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
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3250 1450 0    60   Output ~ 0
E1
Text HLabel 3250 2200 0    60   Output ~ 0
E2
Text HLabel 3250 2900 0    60   Output ~ 0
E3
Text HLabel 7050 3700 2    60   Input ~ 0
A
Text HLabel 7050 3800 2    60   Input ~ 0
B
Text HLabel 7050 3900 2    60   Input ~ 0
C
Text HLabel 7050 4000 2    60   Input ~ 0
D
Text HLabel 7050 4100 2    60   Input ~ 0
E
Text HLabel 7050 4200 2    60   Input ~ 0
F
Text HLabel 7050 4300 2    60   Input ~ 0
G
Wire Wire Line
	4800 3500 4800 3350
Wire Wire Line
	4800 3350 6600 3350
Wire Wire Line
	5400 3350 5400 3500
Wire Wire Line
	5900 4600 5900 4750
Wire Wire Line
	5900 4750 6600 4750
Wire Wire Line
	6600 4750 6600 3350
Connection ~ 5400 3350
Wire Wire Line
	5100 3500 5100 3250
Wire Wire Line
	5100 3250 6750 3250
Wire Wire Line
	5500 3250 5500 3500
Wire Wire Line
	6000 3250 6000 3500
Connection ~ 5500 3250
Wire Wire Line
	5200 3500 5200 3400
Wire Wire Line
	5200 3400 6700 3400
Wire Wire Line
	6100 3400 6100 3500
Wire Wire Line
	5600 3500 5600 3400
Connection ~ 5600 3400
Wire Wire Line
	6000 4700 6000 4600
Wire Wire Line
	5100 4700 6700 4700
Wire Wire Line
	5500 4700 5500 4600
Wire Wire Line
	5100 4600 5100 4700
Connection ~ 5500 4700
Wire Wire Line
	5800 4600 5800 4800
Wire Wire Line
	4900 4800 6750 4800
Wire Wire Line
	4900 4800 4900 4600
Wire Wire Line
	5400 4600 5400 4800
Connection ~ 5400 4800
Wire Wire Line
	5700 4650 5700 4600
Wire Wire Line
	4800 4650 6800 4650
Wire Wire Line
	5300 4650 5300 4600
Wire Wire Line
	4800 4600 4800 4650
Connection ~ 5300 4650
Wire Wire Line
	4900 3500 4900 3450
Wire Wire Line
	4900 3450 6850 3450
Wire Wire Line
	5300 3450 5300 3500
Wire Wire Line
	5900 3450 5900 3500
Connection ~ 5300 3450
Wire Wire Line
	5800 3500 5800 3200
Wire Wire Line
	5800 3200 5850 3200
Wire Wire Line
	5650 3200 5700 3200
Wire Wire Line
	5700 3200 5700 3500
Wire Wire Line
	7050 3700 6750 3700
Wire Wire Line
	6750 3700 6750 3250
Connection ~ 6000 3250
Wire Wire Line
	7050 3800 6700 3800
Wire Wire Line
	6700 3800 6700 3400
Connection ~ 6100 3400
Wire Wire Line
	7050 3900 6700 3900
Wire Wire Line
	6700 3900 6700 4700
Connection ~ 6000 4700
Wire Wire Line
	7050 4000 6750 4000
Wire Wire Line
	6750 4000 6750 4800
Connection ~ 5800 4800
Wire Wire Line
	6800 4650 6800 4100
Wire Wire Line
	6800 4100 7050 4100
Connection ~ 5700 4650
Wire Wire Line
	7050 4200 6850 4200
Wire Wire Line
	6850 4200 6850 3450
Connection ~ 5900 3450
Wire Wire Line
	7050 4300 6600 4300
Connection ~ 6600 4300
Wire Wire Line
	4300 1700 4300 1650
Wire Wire Line
	4300 2450 4300 2400
Wire Wire Line
	4300 3150 4300 3100
Wire Wire Line
	4000 2900 3800 2900
Wire Wire Line
	3800 2200 4000 2200
Wire Wire Line
	3800 1450 4000 1450
Wire Wire Line
	5000 2800 5000 1000
Wire Wire Line
	5000 1000 4300 1000
Wire Wire Line
	4300 1000 4300 1250
Wire Wire Line
	5650 1900 4300 1900
Wire Wire Line
	4300 1900 4300 2000
Wire Wire Line
	5850 2600 4300 2600
Wire Wire Line
	4300 2600 4300 2700
NoConn ~ 6100 4600
NoConn ~ 5200 4600
NoConn ~ 5000 4600
Text HLabel 7050 4400 2    60   Input ~ 0
DP
Wire Wire Line
	7050 4400 6850 4400
Wire Wire Line
	6850 4400 6850 4850
Wire Wire Line
	6850 4850 5600 4850
$Comp
L HDC-5633 D8
U 1 1 56D509C3
P 5400 4000
F 0 "D8" H 5425 4175 60  0000 C CNN
F 1 "HDC-5633" H 5450 3875 60  0000 C CNN
F 2 "Display:7seg-HDC-19x37.5mm" H 4500 4450 60  0001 C CNN
F 3 "" H 4500 4450 60  0000 C CNN
	1    5400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4850 5600 4600
$Comp
L GND #PWR09
U 1 1 58C48089
P 4300 3150
F 0 "#PWR09" H 4300 3150 30  0001 C CNN
F 1 "GND" H 4300 3080 30  0001 C CNN
F 2 "" H 4300 3150 60  0001 C CNN
F 3 "" H 4300 3150 60  0001 C CNN
	1    4300 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 58C48287
P 4300 2450
F 0 "#PWR010" H 4300 2450 30  0001 C CNN
F 1 "GND" H 4300 2380 30  0001 C CNN
F 2 "" H 4300 2450 60  0001 C CNN
F 3 "" H 4300 2450 60  0001 C CNN
	1    4300 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 58C48417
P 4300 1700
F 0 "#PWR011" H 4300 1700 30  0001 C CNN
F 1 "GND" H 4300 1630 30  0001 C CNN
F 2 "" H 4300 1700 60  0001 C CNN
F 3 "" H 4300 1700 60  0001 C CNN
	1    4300 1700
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 58C48AED
P 3550 2900
F 0 "R13" V 3630 2900 40  0000 C CNN
F 1 "2,7k" V 3557 2901 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3480 2900 30  0001 C CNN
F 3 "" H 3550 2900 30  0000 C CNN
	1    3550 2900
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 58C48C27
P 3550 2200
F 0 "R12" V 3630 2200 40  0000 C CNN
F 1 "2,7k" V 3557 2201 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3480 2200 30  0001 C CNN
F 3 "" H 3550 2200 30  0000 C CNN
	1    3550 2200
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 58C48CFB
P 3550 1450
F 0 "R11" V 3630 1450 40  0000 C CNN
F 1 "2,7k" V 3557 1451 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3480 1450 30  0001 C CNN
F 3 "" H 3550 1450 30  0000 C CNN
	1    3550 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 1450 3300 1450
Wire Wire Line
	3300 2200 3250 2200
Wire Wire Line
	3300 2900 3250 2900
$Comp
L NPN Q1
U 1 1 58C49B48
P 4200 1450
F 0 "Q1" H 4200 1300 50  0000 R CNN
F 1 "NPN" H 4200 1600 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 4200 1450 60  0001 C CNN
F 3 "" H 4200 1450 60  0000 C CNN
	1    4200 1450
	1    0    0    -1  
$EndComp
$Comp
L NPN Q2
U 1 1 58C4A06D
P 4200 2200
F 0 "Q2" H 4200 2050 50  0000 R CNN
F 1 "NPN" H 4200 2350 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 4200 2200 60  0001 C CNN
F 3 "" H 4200 2200 60  0000 C CNN
	1    4200 2200
	1    0    0    -1  
$EndComp
$Comp
L NPN Q3
U 1 1 58C4A156
P 4200 2900
F 0 "Q3" H 4200 2750 50  0000 R CNN
F 1 "NPN" H 4200 3050 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 4200 2900 60  0001 C CNN
F 3 "" H 4200 2900 60  0000 C CNN
	1    4200 2900
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 58C4A5EE
P 5000 3050
F 0 "R14" V 5080 3050 40  0000 C CNN
F 1 "22" V 5007 3051 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM15mm" V 4930 3050 30  0001 C CNN
F 3 "" H 5000 3050 30  0000 C CNN
	1    5000 3050
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 58C4A619
P 5650 2950
F 0 "R15" V 5730 2950 40  0000 C CNN
F 1 "22" V 5657 2951 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM15mm" V 5580 2950 30  0001 C CNN
F 3 "" H 5650 2950 30  0000 C CNN
	1    5650 2950
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 58C4A66A
P 5850 2950
F 0 "R16" V 5930 2950 40  0000 C CNN
F 1 "22" V 5857 2951 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM15mm" V 5780 2950 30  0001 C CNN
F 3 "" H 5850 2950 30  0000 C CNN
	1    5850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2700 5850 2600
Wire Wire Line
	5650 2700 5650 1900
Wire Wire Line
	5000 3300 5000 3500
$EndSCHEMATC
