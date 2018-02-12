EESchema Schematic File Version 4
LIBS:D21_2550-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L Switch:SW_Push SW3
U 1 1 56F1AEBD
P 7100 3400
F 0 "SW3" H 7250 3510 50  0000 C CNN
F 1 "TL3305AF260QG" H 7100 3320 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_EVPBF" H 7100 3400 50  0001 C CNN
F 3 "https://www.e-switch.com/system/asset/product_line/data_sheet/213/TL3305.pdf" H 7100 3400 50  0001 C CNN
F 4 "TL3305AF260QG" H 7100 3400 50  0001 C CNN "Campo4"
	1    7100 3400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 56F1AF0A
P 7100 4700
F 0 "SW4" H 7250 4810 50  0000 C CNN
F 1 "TL3305AF260QG" H 7100 4620 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_EVPBF" H 7100 4700 50  0001 C CNN
F 3 "https://www.e-switch.com/system/asset/product_line/data_sheet/213/TL3305.pdf" H 7100 4700 50  0001 C CNN
F 4 "TL3305AF260QG" H 7100 4700 50  0001 C CNN "Campo4"
	1    7100 4700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 56F1AF41
P 4300 3400
F 0 "SW1" H 4450 3510 50  0000 C CNN
F 1 "TL3305AF260QG" H 4300 3320 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_EVPBF" H 4300 3400 50  0001 C CNN
F 3 "https://www.e-switch.com/system/asset/product_line/data_sheet/213/TL3305.pdf" H 4300 3400 50  0001 C CNN
F 4 "TL3305AF260QG" H 4300 3400 50  0001 C CNN "Campo4"
	1    4300 3400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 56F1AF64
P 4300 4700
F 0 "SW2" H 4450 4810 50  0000 C CNN
F 1 "TL3305AF260QG" H 4300 4620 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_EVPBF" H 4300 4700 50  0001 C CNN
F 3 "https://www.e-switch.com/system/asset/product_line/data_sheet/213/TL3305.pdf" H 4300 4700 50  0001 C CNN
F 4 "TL3305AF260QG" H 4300 4700 50  0001 C CNN "Campo4"
	1    4300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3400 3750 4700
Wire Wire Line
	3750 4700 4100 4700
Wire Wire Line
	4750 4400 4750 4700
Connection ~ 4750 4700
Wire Wire Line
	3750 3400 4100 3400
Wire Wire Line
	4500 3400 4750 3400
Wire Wire Line
	4750 3000 4750 3400
Connection ~ 4750 3400
Wire Wire Line
	6550 3400 6700 3400
Wire Wire Line
	6700 3000 6700 3400
Connection ~ 6700 3400
Wire Wire Line
	6700 4400 6700 4700
Wire Wire Line
	6550 4700 6700 4700
Connection ~ 6700 4700
Wire Wire Line
	7600 3400 7600 4700
Wire Wire Line
	7300 3400 7600 3400
Text GLabel 6700 2450 1    60   Input ~ 0
VDD
Text GLabel 6700 3950 1    60   Input ~ 0
VDD
Text GLabel 4750 3950 1    60   Input ~ 0
VDD
Text GLabel 4750 2450 1    60   Input ~ 0
VDD
Wire Wire Line
	4750 2450 4750 2700
Wire Wire Line
	6700 2450 6700 2700
Wire Wire Line
	6700 3950 6700 4100
Wire Wire Line
	4750 3950 4750 4100
$Comp
L Device:R R20
U 1 1 56FD7B86
P 4750 2850
F 0 "R20" V 4830 2850 50  0000 C CNN
F 1 "10k" V 4750 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 4680 2850 50  0001 C CNN
F 3 "" H 4750 2850 50  0000 C CNN
	1    4750 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 56FD7C8A
P 6700 2850
F 0 "R22" V 6780 2850 50  0000 C CNN
F 1 "10k" V 6700 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 6630 2850 50  0001 C CNN
F 3 "" H 6700 2850 50  0000 C CNN
	1    6700 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 56FD7D5D
P 6700 4250
F 0 "R23" V 6780 4250 50  0000 C CNN
F 1 "10k" V 6700 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 6630 4250 50  0001 C CNN
F 3 "" H 6700 4250 50  0000 C CNN
	1    6700 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 56FD7F21
P 4750 4250
F 0 "R21" V 4830 4250 50  0000 C CNN
F 1 "10k" V 4750 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 4680 4250 50  0001 C CNN
F 3 "" H 4750 4250 50  0000 C CNN
	1    4750 4250
	1    0    0    -1  
$EndComp
Connection ~ 7600 4700
Connection ~ 3750 4700
Wire Wire Line
	4750 4700 4900 4700
Wire Wire Line
	4750 3400 4900 3400
Wire Wire Line
	6700 3400 6900 3400
Wire Wire Line
	6700 4700 6900 4700
Wire Wire Line
	7600 4700 7600 5050
Wire Wire Line
	3750 4700 3750 5050
Wire Wire Line
	4500 4700 4750 4700
Wire Wire Line
	7300 4700 7600 4700
$Comp
L power:GND #PWR016
U 1 1 5A80FF15
P 7600 5050
F 0 "#PWR016" H 7600 4800 50  0001 C CNN
F 1 "GND" H 7605 4877 50  0000 C CNN
F 2 "" H 7600 5050 50  0001 C CNN
F 3 "" H 7600 5050 50  0001 C CNN
	1    7600 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5A80FF98
P 3750 5050
F 0 "#PWR015" H 3750 4800 50  0001 C CNN
F 1 "GND" H 3755 4877 50  0000 C CNN
F 2 "" H 3750 5050 50  0001 C CNN
F 3 "" H 3750 5050 50  0001 C CNN
	1    3750 5050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
