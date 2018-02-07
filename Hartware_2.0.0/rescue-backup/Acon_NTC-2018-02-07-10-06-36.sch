EESchema Schematic File Version 2
LIBS:D21_2550-rescue
LIBS:PIC
LIBS:HDC-XX
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
EELAYER 25 0
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
L Conn_01x02 P2
U 1 1 56D55FD7
P 3850 2900
F 0 "P2" H 3850 3050 50  0000 C CNN
F 1 "CONN_01X02" V 3950 2900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 3850 2900 50  0001 C CNN
F 3 "" H 3850 2900 50  0000 C CNN
	1    3850 2900
	-1   0    0    1
$EndComp
$Comp
L Conn_01x02 P3
U 1 1 56D56090
P 3850 5050
F 0 "P3" H 3850 5200 50  0000 C CNN
F 1 "CONN_01X02" V 3950 5050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 3850 5050 50  0001 C CNN
F 3 "" H 3850 5050 50  0000 C CNN
	1    3850 5050
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
L R-RESCUE-D21_2550 R18
U 1 1 56FD73A4
P 4100 2100
F 0 "R18" V 4180 2100 50  0000 C CNN
F 1 "20k" V 4100 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4030 2100 50  0001 C CNN
F 3 "" H 4100 2100 50  0000 C CNN
	1    4100 2100
	1    0    0    -1
$EndComp
$Comp
L R-RESCUE-D21_2550 R19
U 1 1 56FD753F
P 4100 4500
F 0 "R19" V 4180 4500 50  0000 C CNN
F 1 "20k" V 4100 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4030 4500 50  0001 C CNN
F 3 "" H 4100 4500 50  0000 C CNN
	1    4100 4500
	1    0    0    -1
$EndComp
$Comp
L GND-RESCUE-D21_2550 #PWR013
U 1 1 56FD75D4
P 4100 5450
F 0 "#PWR013" H 4100 5200 50  0001 C CNN
F 1 "GND" H 4100 5300 50  0000 C CNN
F 2 "" H 4100 5450 50  0000 C CNN
F 3 "" H 4100 5450 50  0000 C CNN
	1    4100 5450
	1    0    0    -1
$EndComp
$Comp
L GND-RESCUE-D21_2550 #PWR014
U 1 1 56FD7654
P 4100 3350
F 0 "#PWR014" H 4100 3100 50  0001 C CNN
F 1 "GND" H 4100 3200 50  0000 C CNN
F 2 "" H 4100 3350 50  0000 C CNN
F 3 "" H 4100 3350 50  0000 C CNN
	1    4100 3350
	1    0    0    -1
$EndComp
Wire Wire Line
	4050 5000 4350 5000
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
	4050 2850 4300 2850
Wire Wire Line
	4100 2850 4100 2250
Wire Wire Line
	4100 1700 4100 1950
Wire Wire Line
	4100 4350 4100 4150
Connection ~ 4100 5000
Connection ~ 4100 2850
$EndSCHEMATC
