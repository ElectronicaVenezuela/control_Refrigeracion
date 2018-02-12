EESchema Schematic File Version 4
LIBS:D21_2550-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 7
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
Wire Wire Line
	4850 2600 3850 2600
Connection ~ 5000 1950
Wire Wire Line
	3150 2750 3150 2600
Wire Wire Line
	3150 2600 3250 2600
Wire Wire Line
	3250 2400 2500 2400
Wire Wire Line
	3150 3100 3150 3050
$Comp
L Connector_Generic:Conn_01x05 P1
U 1 1 56D598FF
P 8250 4200
F 0 "P1" H 8250 4550 50  0000 C CNN
F 1 "POWER I/O" V 8350 4200 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-5_P5.08mm" H 8250 4200 50  0001 C CNN
F 3 "" H 8250 4200 50  0000 C CNN
	1    8250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2350 5000 1950
Text GLabel 7650 4000 0    60   Output ~ 0
Vac
Text GLabel 7650 4400 0    60   Output ~ 0
Nac
Text GLabel 5950 5800 2    60   Input ~ 0
RE
Text GLabel 5950 3950 2    60   Input Italic 0
VE
Wire Wire Line
	5550 1950 5550 2150
Wire Wire Line
	5550 2450 5550 2650
Wire Wire Line
	5550 2950 5550 3150
Wire Wire Line
	5550 3150 5300 3150
Wire Wire Line
	5000 3150 5000 2650
Text GLabel 5300 3250 3    60   Input ~ 0
Nac
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
	4050 1950 4250 1950
Wire Wire Line
	4550 1950 5000 1950
Wire Wire Line
	4850 4600 3850 4600
Connection ~ 5000 3950
Wire Wire Line
	3150 4750 3150 4600
Wire Wire Line
	3150 4600 3250 4600
Wire Wire Line
	3250 4400 2500 4400
Wire Wire Line
	3150 5100 3150 5050
Wire Wire Line
	5000 4350 5000 3950
Wire Wire Line
	5550 3950 5550 4150
Wire Wire Line
	5550 4450 5550 4650
Wire Wire Line
	5550 4950 5550 5150
Wire Wire Line
	5550 5150 5300 5150
Wire Wire Line
	5000 5150 5000 4650
Text GLabel 5300 5250 3    60   Input ~ 0
Nac
Wire Wire Line
	5300 5250 5300 5150
Connection ~ 5300 5150
Connection ~ 5550 3950
Wire Wire Line
	3850 4400 4050 4400
Wire Wire Line
	4050 4400 4050 3950
Wire Wire Line
	4050 3950 4250 3950
Wire Wire Line
	4550 3950 5000 3950
Wire Wire Line
	4850 6450 3850 6450
Connection ~ 5000 5800
Wire Wire Line
	3150 6600 3150 6450
Wire Wire Line
	3150 6450 3250 6450
Wire Wire Line
	3250 6250 2500 6250
Wire Wire Line
	3150 6950 3150 6900
Wire Wire Line
	5000 6200 5000 5800
Wire Wire Line
	5550 5800 5550 6000
Wire Wire Line
	5550 6300 5550 6500
Wire Wire Line
	5550 6800 5550 7000
Wire Wire Line
	5550 7000 5300 7000
Text GLabel 5300 7100 3    60   Input ~ 0
Nac
Wire Wire Line
	5300 7100 5300 7000
Connection ~ 5300 7000
Connection ~ 5550 5800
Wire Wire Line
	3850 6250 4050 6250
Wire Wire Line
	4050 6250 4050 5800
Wire Wire Line
	4050 5800 4250 5800
Wire Wire Line
	4550 5800 5000 5800
$Comp
L Device:Q_TRIAC_A1A2G U5
U 1 1 56E01680
P 5000 2500
F 0 "U5" H 5129 2553 60  0000 L CNN
F 1 "Z0103MN 5AA4" H 5129 2447 60  0000 L CNN
F 2 "Devices_MSS:SOT-223-Z01" H 4950 2200 60  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/af/ee/c1/7b/df/8a/46/d7/CD00002268.pdf/files/CD00002268.pdf/jcr:content/translations/en.CD00002268.pdf" H 4950 2100 60  0001 C CNN
F 4 "Z0103MN 5AA4" H 5000 2500 50  0001 C CNN "Campo4"
	1    5000 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_TRIAC_A1A2G U6
U 1 1 56E01A0B
P 5000 4500
F 0 "U6" H 5129 4553 60  0000 L CNN
F 1 "Z0103MN 5AA4" H 5129 4447 60  0000 L CNN
F 2 "Devices_MSS:SOT-223-Z01" H 4950 4200 60  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/af/ee/c1/7b/df/8a/46/d7/CD00002268.pdf/files/CD00002268.pdf/jcr:content/translations/en.CD00002268.pdf" H 4950 4100 60  0001 C CNN
F 4 "Z0103MN 5AA4" H 5000 4500 50  0001 C CNN "Campo4"
	1    5000 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_TRIAC_A1A2G U7
U 1 1 56E01C28
P 5000 6350
F 0 "U7" H 5129 6403 60  0000 L CNN
F 1 "Z0103MN 5AA4" H 5129 6297 60  0000 L CNN
F 2 "Devices_MSS:SOT-223-Z01" H 4950 6050 60  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/af/ee/c1/7b/df/8a/46/d7/CD00002268.pdf/files/CD00002268.pdf/jcr:content/translations/en.CD00002268.pdf" H 4950 5950 60  0001 C CNN
F 4 "Z0103MN 5AA4" H 5000 6350 50  0001 C CNN "Campo4"
	1    5000 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 56FDDC11
P 3150 2900
F 0 "R3" V 3230 2900 50  0000 C CNN
F 1 "330" V 3150 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 3080 2900 50  0001 C CNN
F 3 "" H 3150 2900 50  0000 C CNN
	1    3150 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 56FDDD7A
P 4400 1950
F 0 "R6" V 4480 1950 50  0000 C CNN
F 1 "330" V 4400 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 4330 1950 50  0001 C CNN
F 3 "" H 4400 1950 50  0000 C CNN
	1    4400 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 56FDDED3
P 5550 2300
F 0 "R9" V 5630 2300 50  0000 C CNN
F 1 "100" V 5550 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.24x2.70mm_HandSolder" V 5480 2300 50  0001 C CNN
F 3 "" H 5550 2300 50  0000 C CNN
	1    5550 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 56FDE044
P 5550 4300
F 0 "R10" V 5630 4300 50  0000 C CNN
F 1 "100" V 5550 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.24x2.70mm_HandSolder" V 5480 4300 50  0001 C CNN
F 3 "" H 5550 4300 50  0000 C CNN
	1    5550 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 56FDE0AB
P 4400 3950
F 0 "R7" V 4480 3950 50  0000 C CNN
F 1 "330" V 4400 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 4330 3950 50  0001 C CNN
F 3 "" H 4400 3950 50  0000 C CNN
	1    4400 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 56FDE232
P 3150 4900
F 0 "R4" V 3230 4900 50  0000 C CNN
F 1 "330" V 3150 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 3080 4900 50  0001 C CNN
F 3 "" H 3150 4900 50  0000 C CNN
	1    3150 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 56FDE373
P 5550 6150
F 0 "R11" V 5630 6150 50  0000 C CNN
F 1 "100" V 5550 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.24x2.70mm_HandSolder" V 5480 6150 50  0001 C CNN
F 3 "" H 5550 6150 50  0000 C CNN
	1    5550 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 56FDE7E3
P 4400 5800
F 0 "R8" V 4480 5800 50  0000 C CNN
F 1 "330" V 4400 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 4330 5800 50  0001 C CNN
F 3 "" H 4400 5800 50  0000 C CNN
	1    4400 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 56FDE9FE
P 3150 6750
F 0 "R5" V 3230 6750 50  0000 C CNN
F 1 "330" V 3150 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 3080 6750 50  0001 C CNN
F 3 "" H 3150 6750 50  0000 C CNN
	1    3150 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 56FDEE79
P 5550 6650
AR Path="/56FDEE79" Ref="C6"  Part="1" 
AR Path="/56D4C343/56D4C3A8/56FDEE79" Ref="C6"  Part="1" 
F 0 "C6" H 5575 6750 50  0000 L CNN
F 1 "100nF" H 5575 6550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.24x1.80mm_HandSolder" H 5588 6500 50  0001 C CNN
F 3 "https://search.murata.co.jp/Ceramy/image/img/A01X/G101/ENG/GRM31CR72E104KW03-01.pdf" H 5550 6650 50  0001 C CNN
F 4 "GRM31CR72E104KW03L" H 5550 6650 50  0001 C CNN "Campo4"
	1    5550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 56FDF00C
P 5550 4800
AR Path="/56FDF00C" Ref="C5"  Part="1" 
AR Path="/56D4C343/56D4C3A8/56FDF00C" Ref="C5"  Part="1" 
F 0 "C5" H 5575 4900 50  0000 L CNN
F 1 "100nF" H 5575 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.24x1.80mm_HandSolder" H 5588 4650 50  0001 C CNN
F 3 "https://search.murata.co.jp/Ceramy/image/img/A01X/G101/ENG/GRM31CR72E104KW03-01.pdf" H 5550 4800 50  0001 C CNN
F 4 "GRM31CR72E104KW03L" H 5550 4800 50  0001 C CNN "Campo4"
	1    5550 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 56FDF295
P 5550 2800
AR Path="/56FDF295" Ref="C4"  Part="1" 
AR Path="/56D4C343/56D4C3A8/56FDF295" Ref="C4"  Part="1" 
F 0 "C4" H 5575 2900 50  0000 L CNN
F 1 "100nF" H 5575 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.24x1.80mm_HandSolder" H 5588 2650 50  0001 C CNN
F 3 "https://search.murata.co.jp/Ceramy/image/img/A01X/G101/ENG/GRM31CR72E104KW03-01.pdf" H 5550 2800 50  0001 C CNN
F 4 "GRM31CR72E104KW03L" H 5550 2800 50  0001 C CNN "Campo4"
	1    5550 2800
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:MOC3021M U2
U 1 1 570033F9
P 3550 2500
F 0 "U2" H 3340 2690 50  0000 L CNN
F 1 "MOC3063S-TA1" H 3550 2700 50  0000 L CNN
F 2 "Devices_MSS:MOC306X" H 3350 2300 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 3525 2500 50  0001 L CNN
F 4 "MOC3063S-TA1" H 3550 2500 50  0001 C CNN "Campo4"
	1    3550 2500
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:MOC3021M U3
U 1 1 57004250
P 3550 4500
F 0 "U3" H 3340 4690 50  0000 L CNN
F 1 "MOC3063S-TA1" H 3550 4700 50  0000 L CNN
F 2 "Devices_MSS:MOC306X" H 3350 4300 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 3525 4500 50  0001 L CNN
F 4 "MOC3063S-TA1" H 3550 4500 50  0001 C CNN "Campo4"
	1    3550 4500
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:MOC3021M U4
U 1 1 57004690
P 3550 6350
F 0 "U4" H 3340 6540 50  0000 L CNN
F 1 "MOC3063S-TA1" H 3550 6550 50  0000 L CNN
F 2 "Devices_MSS:MOC306X" H 3350 6150 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 3525 6350 50  0001 L CNN
F 4 "MOC3063S-TA1" H 3550 6350 50  0001 C CNN "Campo4"
	1    3550 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1950 5550 1950
Wire Wire Line
	5300 3150 5000 3150
Wire Wire Line
	5550 1950 5950 1950
Wire Wire Line
	5000 3950 5550 3950
Wire Wire Line
	5300 5150 5000 5150
Wire Wire Line
	5550 3950 5950 3950
Wire Wire Line
	5000 5800 5550 5800
Wire Wire Line
	5300 7000 5000 7000
Wire Wire Line
	5550 5800 5950 5800
Wire Wire Line
	5000 6500 5000 7000
$Comp
L power:GND #PWR07
U 1 1 5A81E19A
P 3150 3100
F 0 "#PWR07" H 3150 2850 50  0001 C CNN
F 1 "GND" H 3155 2927 50  0000 C CNN
F 2 "" H 3150 3100 50  0001 C CNN
F 3 "" H 3150 3100 50  0001 C CNN
	1    3150 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5A81E2E8
P 3150 5100
F 0 "#PWR08" H 3150 4850 50  0001 C CNN
F 1 "GND" H 3155 4927 50  0000 C CNN
F 2 "" H 3150 5100 50  0001 C CNN
F 3 "" H 3150 5100 50  0001 C CNN
	1    3150 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5A81E44A
P 3150 6950
F 0 "#PWR09" H 3150 6700 50  0001 C CNN
F 1 "GND" H 3155 6777 50  0000 C CNN
F 2 "" H 3150 6950 50  0001 C CNN
F 3 "" H 3150 6950 50  0001 C CNN
	1    3150 6950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
