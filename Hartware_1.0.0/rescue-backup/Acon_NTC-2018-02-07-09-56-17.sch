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
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4100 1700 1    60   Input ~ 0
VDD
Text GLabel 4125 3425 1    60   Input ~ 0
VDD
Text HLabel 4300 2850 2    60   Output ~ 0
T_A
Text HLabel 4375 4275 2    60   Output ~ 0
T_R
Wire Wire Line
	3650 4275 4375 4275
Wire Wire Line
	3650 2850 4300 2850
Connection ~ 4125 4275
Connection ~ 4100 2850
$Comp
L GND #PWR06
U 1 1 58C44BB0
P 3850 3525
F 0 "#PWR06" H 3850 3525 30  0001 C CNN
F 1 "GND" H 3850 3455 30  0001 C CNN
F 2 "" H 3850 3525 60  0001 C CNN
F 3 "" H 3850 3525 60  0001 C CNN
	1    3850 3525
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58C44DE4
P 4125 3750
F 0 "R6" V 4205 3750 40  0000 C CNN
F 1 "20K" V 4132 3751 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4055 3750 30  0001 C CNN
F 3 "" H 4125 3750 30  0000 C CNN
	1    4125 3750
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 58C44F19
P 4100 2100
F 0 "R5" V 4180 2100 40  0000 C CNN
F 1 "20K" V 4107 2101 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4030 2100 30  0001 C CNN
F 3 "" H 4100 2100 30  0000 C CNN
	1    4100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1850 4100 1700
Wire Wire Line
	4100 2350 4100 2850
Wire Wire Line
	4125 3500 4125 3425
Wire Wire Line
	4125 4000 4125 4275
$Comp
L CONN_4 T1
U 1 1 58CD9250
P 3075 3500
F 0 "T1" V 3025 3500 50  0000 C CNN
F 1 "NTC" V 3125 3500 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 3075 3500 60  0001 C CNN
F 3 "" H 3075 3500 60  0001 C CNN
	1    3075 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3425 3350 3650 3350
Wire Wire Line
	3650 3350 3650 2850
Wire Wire Line
	3425 3450 3850 3450
Wire Wire Line
	3425 3550 3750 3550
Wire Wire Line
	3650 3650 3650 4275
Wire Wire Line
	3650 3650 3425 3650
Wire Wire Line
	3850 3450 3850 3525
Wire Wire Line
	3750 3550 3750 3450
Connection ~ 3750 3450
$EndSCHEMATC
