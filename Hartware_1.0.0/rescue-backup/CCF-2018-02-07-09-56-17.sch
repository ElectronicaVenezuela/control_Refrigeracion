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
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8725 2100 725  250 
U 58C444B9
F0 "Acon_NTC" 60
F1 "Acon_NTC.sch" 60
F2 "T_A" O L 8725 2175 60 
F3 "T_R" O L 8725 2275 60 
$EndSheet
$Sheet
S 8725 2575 725  450 
U 58C40082
F0 "Botones" 60
F1 "Botones.sch" 60
F2 "P" O L 8725 2650 60 
F3 "S" O L 8725 2750 60 
F4 "+" O L 8725 2850 60 
F5 "-" O L 8725 2950 60 
$EndSheet
$Sheet
S 6875 4100 1125 1200
U 58C47798
F0 "7SEGMENTOS_X_3" 60
F1 "7SEGMENTOS_X_3.sch" 60
F2 "E1" O L 6875 5225 60 
F3 "E2" O L 6875 5125 60 
F4 "E3" O L 6875 5025 60 
F5 "A" I L 6875 4150 60 
F6 "B" I L 6875 4250 60 
F7 "C" I L 6875 4350 60 
F8 "D" I L 6875 4450 60 
F9 "E" I L 6875 4550 60 
F10 "F" I L 6875 4650 60 
F11 "G" I L 6875 4750 60 
F12 "DP" I L 6875 4850 60 
$EndSheet
$Sheet
S 8725 3425 725  700 
U 58C53409
F0 "OutTriac" 60
F1 "OutTriac.sch" 60
F2 "Compresor" I L 8725 3650 60 
F3 "Ventilador" I L 8725 3750 60 
F4 "Resistencia" I L 8725 3850 60 
$EndSheet
$Comp
L PIC18F2550 U1
U 1 1 58C6406C
P 4950 3700
F 0 "U1" H 5475 5100 60  0000 C CNN
F 1 "PIC18F2550" H 5325 2350 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W7.62mm_LongPads" H 4950 3700 60  0001 C CNN
F 3 "" H 4950 3700 60  0001 C CNN
	1    4950 3700
	1    0    0    -1  
$EndComp
$Comp
L DIODE D2
U 1 1 58C6A24A
P 3600 3075
F 0 "D2" H 3600 3175 40  0000 C CNN
F 1 "DIODE" H 3600 2975 40  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 3600 3075 60  0001 C CNN
F 3 "" H 3600 3075 60  0000 C CNN
	1    3600 3075
	0    1    1    0   
$EndComp
Text GLabel 3600 2800 1    60   Input ~ 0
VDD
Text GLabel 3475 3450 0    60   Input ~ 0
VDDP
$Comp
L GND #PWR01
U 1 1 58C6CA91
P 3475 3775
F 0 "#PWR01" H 3475 3775 30  0001 C CNN
F 1 "GND" H 3475 3705 30  0001 C CNN
F 2 "" H 3475 3775 60  0001 C CNN
F 3 "" H 3475 3775 60  0001 C CNN
	1    3475 3775
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58C70D60
P 8575 4225
F 0 "R4" V 8655 4225 40  0000 C CNN
F 1 "330" V 8582 4226 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8505 4225 30  0001 C CNN
F 3 "" H 8575 4225 30  0000 C CNN
	1    8575 4225
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58C70E66
P 8400 4225
F 0 "R3" V 8480 4225 40  0000 C CNN
F 1 "330" V 8407 4226 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8330 4225 30  0001 C CNN
F 3 "" H 8400 4225 30  0000 C CNN
	1    8400 4225
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58C70F49
P 8225 4225
F 0 "R2" V 8305 4225 40  0000 C CNN
F 1 "330" V 8232 4226 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8155 4225 30  0001 C CNN
F 3 "" H 8225 4225 30  0000 C CNN
	1    8225 4225
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 58C71DC5
P 8575 4775
F 0 "D5" H 8575 4875 50  0000 C CNN
F 1 "LED" H 8575 4675 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 8575 4775 60  0001 C CNN
F 3 "" H 8575 4775 60  0000 C CNN
	1    8575 4775
	0    1    1    0   
$EndComp
$Comp
L LED D4
U 1 1 58C723AC
P 8400 4775
F 0 "D4" H 8400 4875 50  0000 C CNN
F 1 "LED" H 8400 4675 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 8400 4775 60  0001 C CNN
F 3 "" H 8400 4775 60  0000 C CNN
	1    8400 4775
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 58C72492
P 8225 4775
F 0 "D3" H 8225 4875 50  0000 C CNN
F 1 "LED" H 8225 4675 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 8225 4775 60  0001 C CNN
F 3 "" H 8225 4775 60  0000 C CNN
	1    8225 4775
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 58C73740
P 8400 5100
F 0 "#PWR02" H 8400 5100 30  0001 C CNN
F 1 "GND" H 8400 5030 30  0001 C CNN
F 2 "" H 8400 5100 60  0001 C CNN
F 3 "" H 8400 5100 60  0001 C CNN
	1    8400 5100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58C76301
P 2750 2050
F 0 "R1" V 2830 2050 40  0000 C CNN
F 1 "10k" V 2757 2051 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2680 2050 30  0001 C CNN
F 3 "" H 2750 2050 30  0000 C CNN
	1    2750 2050
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58C7640F
P 2750 2800
F 0 "C3" H 2750 2900 40  0000 L CNN
F 1 "100nF" H 2756 2715 40  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 2788 2650 30  0001 C CNN
F 3 "" H 2750 2800 60  0000 C CNN
	1    2750 2800
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 58C76514
P 3025 2450
F 0 "D1" H 3025 2550 40  0000 C CNN
F 1 "DIODE" H 3025 2350 40  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 3025 2450 60  0001 C CNN
F 3 "" H 3025 2450 60  0000 C CNN
	1    3025 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58C77411
P 2750 3050
F 0 "#PWR03" H 2750 3050 30  0001 C CNN
F 1 "GND" H 2750 2980 30  0001 C CNN
F 2 "" H 2750 3050 60  0001 C CNN
F 3 "" H 2750 3050 60  0001 C CNN
	1    2750 3050
	1    0    0    -1  
$EndComp
Text GLabel 2750 1675 1    60   Input ~ 0
VDD
Text GLabel 3600 2275 1    60   Input ~ 0
VPP
Wire Wire Line
	3600 2800 3600 2875
Wire Wire Line
	3475 3450 3750 3450
Wire Wire Line
	3600 3450 3600 3275
Connection ~ 3600 3450
Wire Wire Line
	3750 3650 3600 3650
Wire Wire Line
	3600 3650 3600 3850
Wire Wire Line
	3600 3850 3750 3850
Wire Wire Line
	3475 3775 3475 3750
Wire Wire Line
	3475 3750 3600 3750
Connection ~ 3600 3750
Wire Wire Line
	6150 3650 8725 3650
Wire Wire Line
	6150 3750 8725 3750
Wire Wire Line
	6150 3850 8725 3850
Wire Wire Line
	8575 3975 8575 3850
Connection ~ 8575 3850
Wire Wire Line
	8400 3975 8400 3750
Connection ~ 8400 3750
Wire Wire Line
	8225 3975 8225 3650
Connection ~ 8225 3650
Wire Wire Line
	8575 4575 8575 4475
Wire Wire Line
	8400 4575 8400 4475
Wire Wire Line
	8225 4575 8225 4475
Wire Wire Line
	8225 4975 8225 5050
Wire Wire Line
	8225 5050 8575 5050
Wire Wire Line
	8575 5050 8575 4975
Wire Wire Line
	8400 4975 8400 5100
Connection ~ 8400 5050
Wire Wire Line
	2825 2450 2750 2450
Wire Wire Line
	2750 2300 2750 2600
Connection ~ 2750 2450
Wire Wire Line
	3225 2450 3750 2450
Wire Wire Line
	2750 3050 2750 3000
Wire Wire Line
	2750 1675 2750 1800
Wire Wire Line
	3600 2275 3600 2450
Connection ~ 3600 2450
Wire Wire Line
	6150 4150 6875 4150
Wire Wire Line
	6875 4250 6150 4250
Wire Wire Line
	6150 4350 6875 4350
Wire Wire Line
	6875 4450 6150 4450
Wire Wire Line
	6150 4550 6875 4550
Wire Wire Line
	6875 4650 6150 4650
Wire Wire Line
	6150 4750 6875 4750
Wire Wire Line
	6875 4850 6150 4850
Wire Wire Line
	6875 5025 6600 5025
Wire Wire Line
	6600 5025 6600 3450
Wire Wire Line
	6600 3450 6150 3450
Wire Wire Line
	6875 5125 6550 5125
Wire Wire Line
	6550 5125 6550 3350
Wire Wire Line
	6550 3350 6150 3350
Wire Wire Line
	6875 5225 6500 5225
Wire Wire Line
	6500 5225 6500 3250
Wire Wire Line
	6500 3250 6150 3250
NoConn ~ 6150 3550
Wire Wire Line
	8725 2950 6150 2950
Wire Wire Line
	8725 2750 6150 2750
Wire Wire Line
	8725 2650 6150 2650
Wire Wire Line
	8725 2275 7450 2275
Wire Wire Line
	7450 2275 7450 2550
Wire Wire Line
	7450 2550 6150 2550
Wire Wire Line
	6150 2450 7425 2450
Wire Wire Line
	7425 2450 7425 2175
Wire Wire Line
	7425 2175 8725 2175
Text GLabel 6200 5200 3    60   Input ~ 0
PGC
Text GLabel 6350 5200 3    60   Input ~ 0
PGD
Wire Wire Line
	6200 5200 6200 4750
Connection ~ 6200 4750
Wire Wire Line
	6350 5200 6350 4850
Connection ~ 6350 4850
NoConn ~ 3750 4600
$Comp
L CRYSTAL X1
U 1 1 58CAB0D4
P 2200 5850
F 0 "X1" H 2200 6000 60  0000 C CNN
F 1 "CRYSTAL" H 2200 5700 60  0000 C CNN
F 2 "Crystals:HC-49V" H 2200 5850 60  0001 C CNN
F 3 "" H 2200 5850 60  0000 C CNN
	1    2200 5850
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58CAB6EC
P 1850 6225
F 0 "C1" H 1850 6325 40  0000 L CNN
F 1 "22pF" H 1856 6140 40  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 1888 6075 30  0001 C CNN
F 3 "" H 1850 6225 60  0000 C CNN
	1    1850 6225
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 58CABBAF
P 2550 6225
F 0 "C2" H 2550 6325 40  0000 L CNN
F 1 "22pF" H 2556 6140 40  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 2588 6075 30  0001 C CNN
F 3 "" H 2550 6225 60  0000 C CNN
	1    2550 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5850 2550 5850
Wire Wire Line
	2550 5625 2550 6025
Wire Wire Line
	1900 5850 1850 5850
Wire Wire Line
	1850 5625 1850 6025
Wire Wire Line
	1850 6425 1850 6475
Wire Wire Line
	1850 6475 2550 6475
Wire Wire Line
	2550 6475 2550 6425
$Comp
L GND #PWR04
U 1 1 58CAD845
P 2200 6525
F 0 "#PWR04" H 2200 6525 30  0001 C CNN
F 1 "GND" H 2200 6455 30  0001 C CNN
F 2 "" H 2200 6525 60  0001 C CNN
F 3 "" H 2200 6525 60  0001 C CNN
	1    2200 6525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6525 2200 6475
Connection ~ 2200 6475
Text GLabel 2550 5625 1    60   Input ~ 0
CLK1
Text GLabel 1850 5625 1    60   Input ~ 0
CLK0
Connection ~ 1850 5850
Connection ~ 2550 5850
Text GLabel 3475 4775 0    60   Input ~ 0
CLK1
Text GLabel 3475 4950 0    60   Input ~ 0
CLK0
Wire Wire Line
	3475 4775 3575 4775
Wire Wire Line
	3575 4775 3575 4800
Wire Wire Line
	3575 4800 3750 4800
Wire Wire Line
	3750 4900 3575 4900
Wire Wire Line
	3575 4900 3575 4950
Wire Wire Line
	3575 4950 3475 4950
Wire Wire Line
	6150 2850 8725 2850
$Comp
L CONN_2 VIN1
U 1 1 58CCC6F3
P 4175 6350
F 0 "VIN1" V 4125 6350 40  0000 C CNN
F 1 "SRC" V 4225 6350 40  0000 C CNN
F 2 "Connectors:JACK_ALIM" H 4175 6350 60  0001 C CNN
F 3 "" H 4175 6350 60  0001 C CNN
	1    4175 6350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 58CCD22A
P 4625 6525
F 0 "#PWR05" H 4625 6525 30  0001 C CNN
F 1 "GND" H 4625 6455 30  0001 C CNN
F 2 "" H 4625 6525 60  0001 C CNN
F 3 "" H 4625 6525 60  0001 C CNN
	1    4625 6525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4525 6450 4625 6450
Wire Wire Line
	4625 6450 4625 6525
Text GLabel 4625 6200 1    60   Input ~ 0
VDD
Wire Wire Line
	4625 6200 4625 6250
Wire Wire Line
	4625 6250 4525 6250
$EndSCHEMATC
