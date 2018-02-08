EESchema Schematic File Version 4
LIBS:D21_2550-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L Connector_Generic:Conn_01x02 P2
U 1 1 56D55FD7
P 3850 2950
F 0 "P2" H 3850 3100 50  0000 C CNN
F 1 "CONN_01X02" V 3950 2950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 3850 2950 50  0001 C CNN
F 3 "" H 3850 2950 50  0000 C CNN
	1    3850 2950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 P3
U 1 1 56D56090
P 3850 5100
F 0 "P3" H 3850 5250 50  0000 C CNN
F 1 "CONN_01X02" V 3950 5100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 3850 5100 50  0001 C CNN
F 3 "" H 3850 5100 50  0000 C CNN
	1    3850 5100
	-1   0    0    1   
$EndComp
Text GLabel 4100 1700 1    60   Input ~ 0
VDD
Text GLabel 4100 4150 1    60   Input ~ 0
VDD
Text HLabel 4300 2850 2    60   Output ~ 0
T_A
Text HLabel 4350 5000 2    60   Output ~ 0
T_R
$Comp
L Device:R R18
U 1 1 56FD73A4
P 4100 2100
F 0 "R18" V 4180 2100 50  0000 C CNN
F 1 "20k" V 4100 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 4030 2100 50  0001 C CNN
F 3 "" H 4100 2100 50  0000 C CNN
	1    4100 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 56FD753F
P 4100 4500
F 0 "R19" V 4180 4500 50  0000 C CNN
F 1 "20k" V 4100 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 4030 4500 50  0001 C CNN
F 3 "" H 4100 4500 50  0000 C CNN
	1    4100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5000 4100 5000
Wire Wire Line
	4100 5000 4100 4650
Wire Wire Line
	4050 5100 4100 5100
Wire Wire Line
	4100 5100 4100 5450
Wire Wire Line
	4050 2950 4100 2950
Wire Wire Line
	4100 2950 4100 3350
Wire Wire Line
	4050 2850 4100 2850
Wire Wire Line
	4100 2850 4100 2250
Wire Wire Line
	4100 1700 4100 1950
Wire Wire Line
	4100 4350 4100 4150
Connection ~ 4100 5000
Connection ~ 4100 2850
Wire Wire Line
	4100 5000 4350 5000
Wire Wire Line
	4100 2850 4300 2850
$Comp
L power:GND #PWR013
U 1 1 5A80DF5C
P 4100 3350
F 0 "#PWR013" H 4100 3100 50  0001 C CNN
F 1 "GND" H 4105 3177 50  0000 C CNN
F 2 "" H 4100 3350 50  0001 C CNN
F 3 "" H 4100 3350 50  0001 C CNN
	1    4100 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5A80DFC2
P 4100 5450
F 0 "#PWR014" H 4100 5200 50  0001 C CNN
F 1 "GND" H 4105 5277 50  0000 C CNN
F 2 "" H 4100 5450 50  0001 C CNN
F 3 "" H 4100 5450 50  0001 C CNN
	1    4100 5450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
