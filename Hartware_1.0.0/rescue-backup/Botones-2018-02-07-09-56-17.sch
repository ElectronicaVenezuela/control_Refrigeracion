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
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6550 3400 0    60   Output ~ 0
P
Text HLabel 6550 4700 0    60   Output ~ 0
S
Text HLabel 4900 3400 2    60   Output ~ 0
+
Text HLabel 4900 4700 2    60   Output ~ 0
-
$Comp
L SW_PUSH SW3
U 1 1 56F1AEBD
P 7100 3400
F 0 "SW3" H 7250 3510 50  0000 C CNN
F 1 "SW_PUSH" H 7100 3320 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH-12mm" H 7100 3400 50  0001 C CNN
F 3 "" H 7100 3400 50  0000 C CNN
	1    7100 3400
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW4
U 1 1 56F1AF0A
P 7100 4700
F 0 "SW4" H 7250 4810 50  0000 C CNN
F 1 "SW_PUSH" H 7100 4620 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH-12mm" H 7100 4700 50  0001 C CNN
F 3 "" H 7100 4700 50  0000 C CNN
	1    7100 4700
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 56F1AF41
P 4300 3400
F 0 "SW1" H 4450 3510 50  0000 C CNN
F 1 "SW_PUSH" H 4300 3320 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH-12mm" H 4300 3400 50  0001 C CNN
F 3 "" H 4300 3400 50  0000 C CNN
	1    4300 3400
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 56F1AF64
P 4300 4700
F 0 "SW2" H 4450 4810 50  0000 C CNN
F 1 "SW_PUSH" H 4300 4620 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH-12mm" H 4300 4700 50  0001 C CNN
F 3 "" H 4300 4700 50  0000 C CNN
	1    4300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3400 3750 5050
Wire Wire Line
	3750 4700 4000 4700
Wire Wire Line
	4600 4700 4900 4700
Connection ~ 4750 4700
Wire Wire Line
	3750 3400 4000 3400
Wire Wire Line
	4600 3400 4900 3400
Connection ~ 4750 3400
Wire Wire Line
	6550 3400 6800 3400
Connection ~ 6700 3400
Wire Wire Line
	6550 4700 6800 4700
Connection ~ 6700 4700
Wire Wire Line
	7400 4700 7600 4700
Wire Wire Line
	7600 3400 7600 5050
Wire Wire Line
	7400 3400 7600 3400
Text GLabel 6700 2450 1    60   Input ~ 0
VDD
Text GLabel 6700 3950 1    60   Input ~ 0
VDD
Text GLabel 4750 3950 1    60   Input ~ 0
VDD
Text GLabel 4750 2450 1    60   Input ~ 0
VDD
Connection ~ 7600 4700
Connection ~ 3750 4700
$Comp
L R R9
U 1 1 58C40DFC
P 6700 2850
F 0 "R9" V 6780 2850 40  0000 C CNN
F 1 "10k" V 6707 2851 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 6630 2850 30  0001 C CNN
F 3 "" H 6700 2850 30  0000 C CNN
	1    6700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2600 6700 2450
Wire Wire Line
	6700 3100 6700 3400
$Comp
L R R10
U 1 1 58C417F1
P 6700 4350
F 0 "R10" V 6780 4350 40  0000 C CNN
F 1 "10k" V 6707 4351 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 6630 4350 30  0001 C CNN
F 3 "" H 6700 4350 30  0000 C CNN
	1    6700 4350
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 58C418A4
P 4750 4350
F 0 "R8" V 4830 4350 40  0000 C CNN
F 1 "10k" V 4757 4351 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4680 4350 30  0001 C CNN
F 3 "" H 4750 4350 30  0000 C CNN
	1    4750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4100 4750 3950
Wire Wire Line
	4750 4600 4750 4700
Wire Wire Line
	6700 4600 6700 4700
Wire Wire Line
	6700 4100 6700 3950
$Comp
L R R7
U 1 1 58C41E57
P 4750 2850
F 0 "R7" V 4830 2850 40  0000 C CNN
F 1 "10k" V 4757 2851 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4680 2850 30  0001 C CNN
F 3 "" H 4750 2850 30  0000 C CNN
	1    4750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2600 4750 2450
Wire Wire Line
	4750 3100 4750 3400
$Comp
L GND #PWR07
U 1 1 58C424F9
P 3750 5050
F 0 "#PWR07" H 3750 5050 30  0001 C CNN
F 1 "GND" H 3750 4980 30  0001 C CNN
F 2 "" H 3750 5050 60  0001 C CNN
F 3 "" H 3750 5050 60  0001 C CNN
	1    3750 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58C4271D
P 7600 5050
F 0 "#PWR08" H 7600 5050 30  0001 C CNN
F 1 "GND" H 7600 4980 30  0001 C CNN
F 2 "" H 7600 5050 60  0001 C CNN
F 3 "" H 7600 5050 60  0001 C CNN
	1    7600 5050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
