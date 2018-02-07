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
Sheet 2 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1700 3200 0    60   Input ~ 0
Nac
Text GLabel 1700 3000 0    60   Input ~ 0
Vac
$Comp
L D_Zener D5
U 1 1 56F22E6D
P 5350 2950
F 0 "D5" H 5350 3050 50  0000 C CNN
F 1 "1N4733A" H 5350 2850 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 5350 2950 50  0001 C CNN
F 3 "" H 5350 2950 50  0000 C CNN
	1    5350 2950
	0    1    1    0
$EndComp
Text GLabel 5350 2050 1    60   Input ~ 0
VDD
$Comp
L CP1 C1
U 1 1 56F69FA4
P 4550 3000
F 0 "C1" H 4600 3100 50  0000 L CNN
F 1 "680uf" H 4600 2900 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D8_L11.5_P3.5" H 4550 3000 60  0001 C CNN
F 3 "" H 4550 3000 60  0000 C CNN
	1    4550 3000
	1    0    0    -1
$EndComp
$Comp
L R R1
U 1 1 56F82842
P 2600 2750
F 0 "R1" V 2680 2750 40  0000 C CNN
F 1 "300k" V 2607 2751 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2530 2750 30  0001 C CNN
F 3 "" H 2600 2750 30  0000 C CNN
	1    2600 2750
	0    1    1    0
$EndComp
Wire Wire Line
	3400 2200 3800 2200
Wire Wire Line
	3800 2200 4550 2200
Wire Wire Line
	4550 2200 4800 2200
Wire Wire Line
	3400 3950 3800 3950
Wire Wire Line
	3800 3950 4000 3950
Wire Wire Line
	4000 3950 4550 3950
Wire Wire Line
	4550 3950 5350 3950
Connection ~ 3800 3200
Connection ~ 3400 3000
Connection ~ 3800 2200
Connection ~ 3800 3950
Connection ~ 4550 2200
Wire Wire Line
	4000 3950 4000 4050
Connection ~ 4000 3950
Wire Wire Line
	3400 3950 3400 3650
Wire Wire Line
	3800 3650 3800 3950
Wire Wire Line
	3800 2750 3800 3200
Wire Wire Line
	3800 3200 3800 3350
Wire Wire Line
	3400 2750 3400 3000
Wire Wire Line
	3400 3000 3400 3350
Wire Wire Line
	3400 2450 3400 2200
Wire Wire Line
	3800 2450 3800 2200
Wire Wire Line
	4550 3150 4550 3950
Wire Wire Line
	1700 3200 3800 3200
$Comp
L D D1
U 1 1 56FC9299
P 3400 2600
F 0 "D1" H 3400 2700 50  0000 C CNN
F 1 "1N4007" H 3400 2500 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" H 3400 2600 50  0001 C CNN
F 3 "" H 3400 2600 50  0000 C CNN
	1    3400 2600
	0    1    1    0
$EndComp
$Comp
L D D3
U 1 1 56FC930C
P 3800 2600
F 0 "D3" H 3800 2700 50  0000 C CNN
F 1 "1N4007" H 3800 2500 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" H 3800 2600 50  0001 C CNN
F 3 "" H 3800 2600 50  0000 C CNN
	1    3800 2600
	0    1    1    0
$EndComp
$Comp
L D D2
U 1 1 56FC93DD
P 3400 3500
F 0 "D2" H 3400 3600 50  0000 C CNN
F 1 "1N4007" H 3400 3400 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" H 3400 3500 50  0001 C CNN
F 3 "" H 3400 3500 50  0000 C CNN
	1    3400 3500
	0    1    1    0
$EndComp
$Comp
L D D4
U 1 1 56FC9402
P 3800 3500
F 0 "D4" H 3800 3600 50  0000 C CNN
F 1 "1N4007" H 3800 3400 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" H 3800 3500 50  0001 C CNN
F 3 "" H 3800 3500 50  0000 C CNN
	1    3800 3500
	0    1    1    0
$EndComp
$Comp
L GND #PWR01
U 1 1 56FDA682
P 4000 4050
F 0 "#PWR01" H 4000 3800 50  0001 C CNN
F 1 "GND" H 4000 3900 50  0000 C CNN
F 2 "" H 4000 4050 50  0000 C CNN
F 3 "" H 4000 4050 50  0000 C CNN
	1    4000 4050
	1    0    0    -1
$EndComp
$Comp
L C C8
U 1 1 5702B30B
P 2600 3000
AR Path="/5702B30B" Ref="C8"  Part="1"
AR Path="/56D4C312/5702B30B" Ref="C8"  Part="1"
F 0 "C8" H 2625 3100 50  0000 L CNN
F 1 "4.7uf" H 2625 2900 50  0000 L CNN
F 2 "Choke_Axial_ThroughHole:Choke_Horizontal_RM25mm" H 2638 2850 50  0001 C CNN
F 3 "" H 2600 3000 50  0000 C CNN
	1    2600 3000
	0    1    1    0
$EndComp
Wire Wire Line
	2750 3000 3000 3000
Wire Wire Line
	3000 3000 3400 3000
Wire Wire Line
	2450 3000 2200 3000
Wire Wire Line
	2200 3000 1700 3000
Wire Wire Line
	2450 2750 2200 2750
Wire Wire Line
	2200 2750 2200 3000
Connection ~ 2200 3000
Wire Wire Line
	2750 2750 3000 2750
Wire Wire Line
	3000 2750 3000 3000
Connection ~ 3000 3000
$Comp
L R R27
U 1 1 5702BA59
P 4950 2200
F 0 "R27" V 5030 2200 50  0000 C CNN
F 1 "100" V 4950 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4880 2200 50  0001 C CNN
F 3 "" H 4950 2200 50  0000 C CNN
	1    4950 2200
	0    1    1    0
$EndComp
Wire Wire Line
	5100 2200 5350 2200
Wire Wire Line
	5350 2050 5350 2200
Wire Wire Line
	5350 2200 5350 2800
Connection ~ 5350 2200
Wire Wire Line
	4550 2850 4550 2200
Wire Wire Line
	5350 3950 5350 3100
Connection ~ 4550 3950
$EndSCHEMATC
