EESchema Schematic File Version 4
LIBS:D21_2550-cache
EELAYER 26 0
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
Text GLabel 3650 4250 0    60   Input ~ 0
Nac
Text GLabel 3650 3650 0    60   Input ~ 0
Vac
Text GLabel 8350 3650 2    60   Output ~ 0
VDD
$Comp
L Device:CP1 C1
U 1 1 56F69FA4
P 5200 3900
F 0 "C1" H 5250 4000 50  0000 L CNN
F 1 "4,7uF" H 5250 3800 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 5200 3900 60  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_A4072_A759.pdf" H 5200 3900 60  0001 C CNN
F 4 "A759KS475M2EAAE496" H 5200 3900 50  0001 C CNN "Campo4"
	1    5200 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 56F82842
P 4600 3650
F 0 "R1" V 4680 3650 40  0000 C CNN
F 1 "300k" V 4607 3651 40  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.24x1.80mm_HandSolder" V 4530 3650 30  0001 C CNN
F 3 "" H 4600 3650 30  0000 C CNN
	1    4600 3650
	0    1    1    0   
$EndComp
$Comp
L Mss_devices:PBO-3-S5 U8
U 1 1 5A7C683A
P 6450 3800
F 0 "U8" H 6450 4197 60  0000 C CNN
F 1 "PBO-3-S5" H 6450 4091 60  0000 C CNN
F 2 "Devices_MSS:PBO-3-S5" H 6350 3900 60  0001 C CNN
F 3 "http://www.cui.com/product/resource/pbo-3.pdf" H 6350 3900 60  0001 C CNN
F 4 "PBO-3-S5" H 6450 3800 50  0001 C CNN "Campo4"
	1    6450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3750 5200 3750
Wire Wire Line
	5850 3950 5700 3950
Wire Wire Line
	5700 3950 5700 4100
Wire Wire Line
	5700 4100 5200 4100
Wire Wire Line
	5200 4100 5200 4050
Wire Wire Line
	5850 4050 5750 4050
Wire Wire Line
	5750 4050 5750 4250
Wire Wire Line
	5750 4250 4200 4250
$Comp
L Device:L_Core_Ferrite L1
U 1 1 5A7D0814
P 5400 3650
F 0 "L1" V 5625 3650 50  0000 C CNN
F 1 "SDR0503-472JL" V 5534 3650 50  0000 C CNN
F 2 "Devices_MSS:SDR0503-XXX" H 5400 3650 50  0001 C CNN
F 3 "http://www.bourns.com/docs/Product-Datasheets/SDR0503.pdf" H 5400 3650 50  0001 C CNN
F 4 "SDR0503-472JL" V 5400 3650 50  0001 C CNN "Campo4"
	1    5400 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 3650 5850 3650
Wire Wire Line
	5250 3650 4750 3650
$Comp
L Device:Varistor RV1
U 1 1 5A7D0BB3
P 4200 3950
F 0 "RV1" H 3900 4000 50  0000 L CNN
F 1 "B72214S0351K101" H 3350 3900 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" V 4130 3950 50  0001 C CNN
F 3 "https://en.tdk.eu/inf/70/db/var_11/SIOV_Leaded_StandarD.pdf" H 4200 3950 50  0001 C CNN
F 4 "B72214S0351K101" H 4200 3950 50  0001 C CNN "Campo4"
	1    4200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3800 4200 3650
Wire Wire Line
	4200 4100 4200 4250
Connection ~ 4200 4250
Wire Wire Line
	4200 4250 3650 4250
Wire Wire Line
	3650 3650 4200 3650
Connection ~ 4200 3650
$Comp
L Device:C C8
U 1 1 5A7D114C
P 6500 4350
F 0 "C8" V 6340 4350 50  0000 C CNN
F 1 "1nF" V 6249 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.50mm_HandSolder" H 6538 4200 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_commercial_midvoltage_en.pdf" H 6500 4350 50  0001 C CNN
F 4 "C2012C0G2W102J060AA" V 6500 4350 50  0001 C CNN "Campo4"
	1    6500 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 4350 5200 4350
Wire Wire Line
	5200 4350 5200 4100
Connection ~ 5200 4100
$Comp
L Device:CP1 C9
U 1 1 5A7D13BE
P 7250 3850
F 0 "C9" H 7365 3896 50  0000 L CNN
F 1 "270uF" H 7365 3805 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 7250 3850 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Panasonic%20Capacitors%20PDFs/FKS_Series_Type_V.pdf" H 7250 3850 50  0001 C CNN
F 4 "EEE-FKC271XSP" H 7250 3850 50  0001 C CNN "Campo4"
	1    7250 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C10
U 1 1 5A7D141C
P 7750 3850
F 0 "C10" H 7865 3896 50  0000 L CNN
F 1 "68uF" H 7865 3805 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 7750 3850 50  0001 C CNN
F 3 "http://nichicon-us.com/english/products/pdfs/e-uud.pdf" H 7750 3850 50  0001 C CNN
F 4 "UUD1V680MCL1GS" H 7750 3850 50  0001 C CNN "Campo4"
	1    7750 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L2
U 1 1 5A7D1470
P 7500 3650
F 0 "L2" V 7725 3650 50  0000 C CNN
F 1 "74479776247" V 7634 3650 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.50mm_HandSolder" H 7500 3650 50  0001 C CNN
F 3 "http://katalog.we-online.de/pbs/datasheet/74479776247.pdf" H 7500 3650 50  0001 C CNN
F 4 "74479776247" V 7500 3650 50  0001 C CNN "Campo4"
	1    7500 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 3650 7250 3650
Wire Wire Line
	7250 3700 7250 3650
Connection ~ 7250 3650
Wire Wire Line
	7250 3650 7050 3650
Wire Wire Line
	7750 3700 7750 3650
Wire Wire Line
	7750 3650 7650 3650
Wire Wire Line
	7050 4050 7250 4050
Wire Wire Line
	7750 4050 7750 4000
Wire Wire Line
	7250 4000 7250 4050
Connection ~ 7250 4050
Wire Wire Line
	7250 4050 7750 4050
Wire Wire Line
	6650 4350 7250 4350
Wire Wire Line
	7250 4350 7250 4050
Connection ~ 7750 3650
$Comp
L power:GND #PWR01
U 1 1 5A7D3146
P 7750 4100
F 0 "#PWR01" H 7750 3850 50  0001 C CNN
F 1 "GND" H 7755 3927 50  0000 C CNN
F 2 "" H 7750 4100 50  0001 C CNN
F 3 "" H 7750 4100 50  0001 C CNN
	1    7750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4100 7750 4050
Connection ~ 7750 4050
$Comp
L Device:CP1 C11
U 1 1 5A7D40B9
P 4900 3900
F 0 "C11" H 4950 4000 50  0000 L CNN
F 1 "4,7uF" H 4950 3800 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 4900 3900 60  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_A4072_A759.pdf" H 4900 3900 60  0001 C CNN
F 4 "A759KS475M2EAAE496" H 4900 3900 50  0001 C CNN "Campo4"
	1    4900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3750 5200 3750
Connection ~ 5200 3750
Wire Wire Line
	5200 4100 4900 4100
Wire Wire Line
	4900 4100 4900 4050
Text Label 7100 3650 0    60   ~ 0
VO
$Comp
L Device:C C12
U 1 1 5A7F66F8
P 8200 3850
F 0 "C12" H 8315 3896 50  0000 L CNN
F 1 "100nF" H 8315 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.24x1.80mm_HandSolder" H 8238 3700 50  0001 C CNN
F 3 "https://search.kemet.com/component-edge/download/datasheet/C1206C104K5RACTU.pdf" H 8200 3850 50  0001 C CNN
F 4 "C1206C104K5RAC7867" H 8200 3850 50  0001 C CNN "Campo4"
	1    8200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3700 8200 3650
Wire Wire Line
	7750 3650 8200 3650
Wire Wire Line
	8350 3650 8200 3650
Connection ~ 8200 3650
Wire Wire Line
	8200 4000 8200 4050
Wire Wire Line
	8200 4050 7750 4050
Wire Wire Line
	4200 3650 4450 3650
$EndSCHEMATC
