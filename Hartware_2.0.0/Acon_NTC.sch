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
Text GLabel 5900 3450 1    60   Input ~ 0
VDD
Text HLabel 6150 4100 2    60   Output ~ 0
T_A
Text HLabel 6150 4300 2    60   Output ~ 0
T_R
$Comp
L Device:R R18
U 1 1 56FD73A4
P 5800 3800
F 0 "R18" V 5880 3800 50  0000 C CNN
F 1 "20k" V 5800 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 5730 3800 50  0001 C CNN
F 3 "http://www.susumu.co.jp/common/pdf/n_catalog_partition01_en.pdf" H 5800 3800 50  0001 C CNN
F 4 "RG2012P-203-B-T5" V 5800 3800 50  0001 C CNN "Campo4"
	1    5800 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 56FD753F
P 6000 3800
F 0 "R19" V 6080 3800 50  0000 C CNN
F 1 "20k" V 6000 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 5930 3800 50  0001 C CNN
F 3 "http://www.susumu.co.jp/common/pdf/n_catalog_partition01_en.pdf" H 6000 3800 50  0001 C CNN
F 4 "RG2012P-203-B-T5" V 6000 3800 50  0001 C CNN "Campo4"
	1    6000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4300 6000 3950
Wire Wire Line
	5800 4200 5800 4400
Wire Wire Line
	5800 4100 5800 3950
Wire Wire Line
	5800 3550 5800 3650
Connection ~ 6000 4300
Connection ~ 5800 4100
Wire Wire Line
	6000 4300 6150 4300
Wire Wire Line
	5800 4100 6150 4100
$Comp
L power:GND #PWR013
U 1 1 5A80DF5C
P 5800 4600
F 0 "#PWR013" H 5800 4350 50  0001 C CNN
F 1 "GND" H 5805 4427 50  0000 C CNN
F 2 "" H 5800 4600 50  0001 C CNN
F 3 "" H 5800 4600 50  0001 C CNN
	1    5800 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5A8A68C2
P 5350 4300
F 0 "J1" H 5270 3875 50  0000 C CNN
F 1 "THR" H 5270 3966 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 5350 4300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/B4B-XH-A-LF-SN/455-2249-ND/1651047" H 5350 4300 50  0001 C CNN
F 4 "B4B-XH-A(LF)(SN)" H 5350 4300 50  0001 C CNN "Campo4"
	1    5350 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 4100 5800 4100
Wire Wire Line
	5550 4200 5800 4200
Wire Wire Line
	5550 4300 6000 4300
Wire Wire Line
	5550 4400 5800 4400
Connection ~ 5800 4400
Wire Wire Line
	5800 4400 5800 4600
Wire Wire Line
	5800 3550 5900 3550
Wire Wire Line
	6000 3550 6000 3650
Wire Wire Line
	5900 3450 5900 3550
Connection ~ 5900 3550
Wire Wire Line
	5900 3550 6000 3550
$EndSCHEMATC
