EESchema Schematic File Version 4
LIBS:omega-dock-new-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L omega-dock-new-rescue:USB_A-RESCUE-omega-dock-new J1
U 1 1 5950B98B
P 1450 1950
F 0 "J1" H 1250 2400 50  0000 L CNN
F 1 "USB_A" H 1250 2300 50  0000 L CNN
F 2 "Connector_USB:USB_A_Horizontal" H 1600 1900 50  0001 C CNN
F 3 "" H 1600 1900 50  0001 C CNN
	1    1450 1950
	1    0    0    -1  
$EndComp
$Comp
L power1:+5V #PWR02
U 1 1 5950BD7E
P 1800 1450
F 0 "#PWR02" H 1800 1300 50  0001 C CNN
F 1 "+5V" H 1800 1590 50  0000 C CNN
F 2 "" H 1800 1450 50  0001 C CNN
F 3 "" H 1800 1450 50  0001 C CNN
	1    1800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1950 1950 1950
Wire Wire Line
	1950 1950 1950 1800
Wire Wire Line
	1950 1800 2600 1800
Wire Wire Line
	1750 2050 1950 2050
Wire Wire Line
	1950 2050 1950 2100
Wire Wire Line
	1950 2100 2600 2100
$Comp
L power1:GND #PWR03
U 1 1 595105A0
P 2400 2150
F 0 "#PWR03" H 2400 1900 50  0001 C CNN
F 1 "GND" H 2400 2000 50  0000 C CNN
F 2 "" H 2400 2150 50  0001 C CNN
F 3 "" H 2400 2150 50  0001 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
$Comp
L power1:+3.3V #PWR05
U 1 1 59510668
P 3650 1650
F 0 "#PWR05" H 3650 1500 50  0001 C CNN
F 1 "+3.3V" H 3650 1790 50  0000 C CNN
F 2 "" H 3650 1650 50  0001 C CNN
F 3 "" H 3650 1650 50  0001 C CNN
	1    3650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1950 2400 1950
Wire Wire Line
	2400 1950 2400 2150
Wire Wire Line
	3500 1950 3650 1950
Wire Wire Line
	3650 1950 3650 1650
Wire Wire Line
	5700 3800 5500 3800
Wire Wire Line
	3500 1800 3850 1800
Wire Wire Line
	5700 3650 5500 3650
$Comp
L power1:GND #PWR01
U 1 1 59512193
P 1450 2500
F 0 "#PWR01" H 1450 2250 50  0001 C CNN
F 1 "GND" H 1450 2350 50  0000 C CNN
F 2 "" H 1450 2500 50  0001 C CNN
F 3 "" H 1450 2500 50  0001 C CNN
	1    1450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3500 5700 3500
Wire Wire Line
	5700 3500 5700 3400
Wire Wire Line
	4000 3350 3950 3350
Wire Wire Line
	3950 3350 3950 2950
Wire Wire Line
	3700 2950 3950 2950
Wire Wire Line
	5500 2950 5500 3350
$Comp
L power1:GND #PWR06
U 1 1 595130B7
P 3700 3200
F 0 "#PWR06" H 3700 2950 50  0001 C CNN
F 1 "GND" H 3700 3050 50  0000 C CNN
F 2 "" H 3700 3200 50  0001 C CNN
F 3 "" H 3700 3200 50  0001 C CNN
	1    3700 3200
	1    0    0    -1  
$EndComp
$Comp
L power1:+3.3V #PWR08
U 1 1 595130E9
P 5700 3400
F 0 "#PWR08" H 5700 3250 50  0001 C CNN
F 1 "+3.3V" H 5700 3540 50  0000 C CNN
F 2 "" H 5700 3400 50  0001 C CNN
F 3 "" H 5700 3400 50  0001 C CNN
	1    5700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2950 3700 3200
Connection ~ 3950 2950
NoConn ~ 4000 3500
NoConn ~ 4000 3650
NoConn ~ 4000 3800
NoConn ~ 4000 4400
NoConn ~ 4000 4550
NoConn ~ 4000 4700
NoConn ~ 4000 4850
NoConn ~ 4000 5000
NoConn ~ 4000 5150
NoConn ~ 4000 5300
NoConn ~ 5500 4250
NoConn ~ 5500 5150
NoConn ~ 5500 5300
Wire Wire Line
	1350 2350 1350 2400
Wire Wire Line
	1350 2400 1450 2400
Wire Wire Line
	1450 2350 1450 2400
Connection ~ 1450 2400
Text Label 3850 1800 2    60   ~ 0
D+
Text Label 3850 2100 2    60   ~ 0
D-
Text Label 2000 1800 0    60   ~ 0
UD+
Text Label 2000 2100 0    60   ~ 0
UD-
$Comp
L omega-dock-new-rescue:Polyfuse-RESCUE-omega-dock-new F1
U 1 1 5952722D
P 1800 1600
F 0 "F1" V 1700 1600 50  0000 C CNN
F 1 "1.5A" V 1900 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.24x1.80mm_HandSolder" H 1850 1400 50  0001 L CNN
F 3 "" H 1800 1600 50  0001 C CNN
	1    1800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1750 1800 1750
$Comp
L omega-dock-new:USBLC6-2 U1
U 1 1 5951020C
P 3050 2000
F 0 "U1" H 3050 2300 60  0000 C CNN
F 1 "USBLC6-2" H 3050 1800 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 3050 2000 60  0001 C CNN
F 3 "" H 3050 2000 60  0001 C CNN
	1    3050 2000
	1    0    0    -1  
$EndComp
$Comp
L omega-dock-new:OMEGA_2 U2
U 1 1 5952F8F9
P 4750 4400
F 0 "U2" H 5200 5650 60  0000 C CNN
F 1 "OMEGA_2" H 4500 5650 60  0000 C CNN
F 2 "Devices_MSS:OMEGA_2" H 4750 5000 60  0001 C CNN
F 3 "" H 4750 5000 60  0001 C CNN
	1    4750 4400
	1    0    0    -1  
$EndComp
Text Notes 7350 7500 0    60   ~ 0
Omega dock\ new
Text Notes 8150 7650 0    60   ~ 0
August 7, 2017
Text Notes 10600 7650 0    60   ~ 0
1.0
Text Notes 7000 7100 0    79   ~ 0
https://github.com/5N44P/omega-dock-new
$Comp
L Device:LED_ALT D4
U 1 1 5986906A
P 6850 3450
F 0 "D4" V 6888 3332 50  0000 R CNN
F 1 "PWR" V 6797 3332 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 6850 3450 50  0001 C CNN
F 3 "" H 6850 3450 50  0001 C CNN
F 4 "LITEON LTST-C150KFKT" V 6850 3450 60  0001 C CNN "Codice TME"
	1    6850 3450
	0    -1   -1   0   
$EndComp
$Comp
L power1:+3.3V #PWR010
U 1 1 598696ED
P 6850 3000
F 0 "#PWR010" H 6850 2850 50  0001 C CNN
F 1 "+3.3V" H 6865 3173 50  0000 C CNN
F 2 "" H 6850 3000 50  0001 C CNN
F 3 "" H 6850 3000 50  0001 C CNN
	1    6850 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5986972A
P 6850 3150
F 0 "R8" H 6920 3196 50  0000 L CNN
F 1 "150R" H 6920 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 6780 3150 50  0001 C CNN
F 3 "" H 6850 3150 50  0001 C CNN
	1    6850 3150
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR011
U 1 1 5986977F
P 6850 3600
F 0 "#PWR011" H 6850 3350 50  0001 C CNN
F 1 "GND" H 6855 3427 50  0000 C CNN
F 2 "" H 6850 3600 50  0001 C CNN
F 3 "" H 6850 3600 50  0001 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2950 5500 2950
Wire Wire Line
	1450 2400 1450 2500
Text GLabel 5650 3950 2    60   Input ~ 0
RX
Text GLabel 5650 4100 2    60   Input ~ 0
TX
Wire Wire Line
	5650 3950 5500 3950
Wire Wire Line
	5500 4100 5650 4100
$Sheet
S 8500 1250 1450 1150
U 5A9C25A2
F0 "FuenteST" 60
F1 "FuenteST.sch" 60
$EndSheet
$Sheet
S 1100 3750 1250 1250
U 5A9C4ACF
F0 "OutTriac" 60
F1 "OutTriac.sch" 60
F2 "Compresor" I R 2350 3950 60 
F3 "Ventilador" I R 2350 4100 60 
F4 "Resistencia" I R 2350 4250 60 
$EndSheet
$Comp
L Device:LED_ALT D1
U 1 1 5AA2375F
P 2650 4550
F 0 "D1" V 2688 4629 50  0000 L CNN
F 1 "LED" V 2597 4629 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 2650 4550 50  0001 C CNN
F 3 "~" H 2650 4550 50  0001 C CNN
	1    2650 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5AA238CD
P 2650 4950
F 0 "R1" H 2720 4996 50  0000 L CNN
F 1 "220" H 2720 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 2580 4950 50  0001 C CNN
F 3 "~" H 2650 4950 50  0001 C CNN
	1    2650 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D2
U 1 1 5AA23B11
P 3000 4550
F 0 "D2" V 3038 4433 50  0000 R CNN
F 1 "LED" V 2947 4433 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 3000 4550 50  0001 C CNN
F 3 "~" H 3000 4550 50  0001 C CNN
	1    3000 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5AA23B18
P 3000 4950
F 0 "R2" H 3070 4996 50  0000 L CNN
F 1 "220" H 3070 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 2930 4950 50  0001 C CNN
F 3 "~" H 3000 4950 50  0001 C CNN
	1    3000 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D3
U 1 1 5AA24F19
P 3350 4550
F 0 "D3" V 3388 4433 50  0000 R CNN
F 1 "LED" V 3297 4433 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 3350 4550 50  0001 C CNN
F 3 "~" H 3350 4550 50  0001 C CNN
	1    3350 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5AA24F20
P 3350 4950
F 0 "R3" H 3420 4996 50  0000 L CNN
F 1 "220" H 3420 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 3280 4950 50  0001 C CNN
F 3 "~" H 3350 4950 50  0001 C CNN
	1    3350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4800 2650 4700
Wire Wire Line
	3000 4700 3000 4800
Wire Wire Line
	3350 4700 3350 4800
Wire Wire Line
	2650 5100 2650 5200
Wire Wire Line
	2650 5200 3000 5200
Wire Wire Line
	3350 5200 3350 5100
Wire Wire Line
	3000 5100 3000 5200
Connection ~ 3000 5200
Wire Wire Line
	3000 5200 3350 5200
Wire Wire Line
	2650 4400 2650 4250
Wire Wire Line
	2650 4250 2350 4250
Wire Wire Line
	2350 4100 3000 4100
Wire Wire Line
	3000 4100 3000 4400
Wire Wire Line
	3350 4400 3350 3950
Wire Wire Line
	3350 3950 2350 3950
$Comp
L power:GND #PWR04
U 1 1 5AA3CA72
P 3000 5250
F 0 "#PWR04" H 3000 5000 50  0001 C CNN
F 1 "GND" H 3005 5077 50  0000 C CNN
F 2 "" H 3000 5250 50  0001 C CNN
F 3 "" H 3000 5250 50  0001 C CNN
	1    3000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5250 3000 5200
NoConn ~ 4000 5450
NoConn ~ 4000 5600
Wire Wire Line
	4000 3950 3350 3950
Connection ~ 3350 3950
Wire Wire Line
	4000 4100 3000 4100
Connection ~ 3000 4100
Wire Wire Line
	4000 4250 2650 4250
Connection ~ 2650 4250
Text Label 5700 3650 2    60   ~ 0
D+
Wire Wire Line
	3500 2100 3850 2100
Text Label 5700 3800 2    60   ~ 0
D-
Wire Wire Line
	6600 5450 5750 5450
Wire Wire Line
	6600 5550 6050 5550
Wire Wire Line
	5550 5550 5550 5600
Wire Wire Line
	5550 5600 5500 5600
$Comp
L Mss_devices:TLA2024IRUGT U11
U 1 1 5AD2A46A
P 7150 5500
F 0 "U11" H 7150 4750 60  0000 C CNN
F 1 "TLA2024IRUGT" H 7150 4856 60  0000 C CNN
F 2 "Devices_MSS:PQFP-N10" H 6850 5550 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tla2024.pdf" H 6850 5550 60  0001 C CNN
	1    7150 5500
	-1   0    0    1   
$EndComp
NoConn ~ 6600 5750
Wire Wire Line
	6600 5250 6500 5250
Wire Wire Line
	7150 4950 7150 4900
Wire Wire Line
	7150 4900 6500 4900
Wire Wire Line
	6500 4900 6500 5000
$Comp
L power:GND #PWR0101
U 1 1 5AD31553
P 6400 5050
F 0 "#PWR0101" H 6400 4800 50  0001 C CNN
F 1 "GND" H 6405 4877 50  0000 C CNN
F 2 "" H 6400 5050 50  0001 C CNN
F 3 "" H 6400 5050 50  0001 C CNN
	1    6400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5050 6400 5000
Wire Wire Line
	6400 5000 6500 5000
Connection ~ 6500 5000
Wire Wire Line
	6500 5000 6500 5250
Wire Wire Line
	7400 6150 7400 6200
Wire Wire Line
	7400 6200 7150 6200
Wire Wire Line
	7150 6200 7150 6050
NoConn ~ 5500 4600
NoConn ~ 5500 4700
NoConn ~ 5500 4800
NoConn ~ 5500 4900
$Comp
L Device:R R4
U 1 1 5AD38004
P 5750 5200
F 0 "R4" H 5820 5246 50  0000 L CNN
F 1 "10K" H 5820 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 5680 5200 50  0001 C CNN
F 3 "~" H 5750 5200 50  0001 C CNN
	1    5750 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5AD3810A
P 6050 5200
F 0 "R5" H 6120 5246 50  0000 L CNN
F 1 "10K" H 6120 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 5980 5200 50  0001 C CNN
F 3 "~" H 6050 5200 50  0001 C CNN
	1    6050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5350 6050 5550
Connection ~ 6050 5550
Wire Wire Line
	6050 5550 5550 5550
Wire Wire Line
	5750 5350 5750 5450
Connection ~ 5750 5450
Wire Wire Line
	5750 5450 5500 5450
Wire Wire Line
	6050 5050 6050 4900
Wire Wire Line
	6050 4900 5900 4900
Wire Wire Line
	5750 4900 5750 5050
$Comp
L power:+3.3V #PWR07
U 1 1 5AD3B08A
P 5900 4850
F 0 "#PWR07" H 5900 4700 50  0001 C CNN
F 1 "+3.3V" H 5915 5023 50  0000 C CNN
F 2 "" H 5900 4850 50  0001 C CNN
F 3 "" H 5900 4850 50  0001 C CNN
	1    5900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4850 5900 4900
Connection ~ 5900 4900
Wire Wire Line
	5900 4900 5750 4900
Text Label 6200 5450 0    60   ~ 0
SCL
Text Label 6200 5550 0    60   ~ 0
SDA
$Comp
L Device:R R6
U 1 1 5AD3CDFA
P 8450 5350
F 0 "R6" H 8520 5396 50  0000 L CNN
F 1 "10K" H 8520 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 8380 5350 50  0001 C CNN
F 3 "~" H 8450 5350 50  0001 C CNN
	1    8450 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5AD3D220
P 8950 5350
F 0 "R7" H 9020 5396 50  0000 L CNN
F 1 "10K" H 9020 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 8880 5350 50  0001 C CNN
F 3 "~" H 8950 5350 50  0001 C CNN
	1    8950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5650 8450 5650
Wire Wire Line
	8450 5650 8450 5500
Wire Wire Line
	8950 5500 8950 5550
Wire Wire Line
	7700 5550 8950 5550
$Comp
L power:GND #PWR013
U 1 1 5AD488FF
P 8950 5950
F 0 "#PWR013" H 8950 5700 50  0001 C CNN
F 1 "GND" H 8955 5777 50  0000 C CNN
F 2 "" H 8950 5950 50  0001 C CNN
F 3 "" H 8950 5950 50  0001 C CNN
	1    8950 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5200 8450 5100
Wire Wire Line
	8450 5100 8700 5100
Wire Wire Line
	8950 5100 8950 5200
$Comp
L power:+5V #PWR09
U 1 1 5AD4BCD5
P 7400 6150
F 0 "#PWR09" H 7400 6000 50  0001 C CNN
F 1 "+5V" H 7415 6323 50  0000 C CNN
F 2 "" H 7400 6150 50  0001 C CNN
F 3 "" H 7400 6150 50  0001 C CNN
	1    7400 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5AD4BDDB
P 8700 5050
F 0 "#PWR012" H 8700 4900 50  0001 C CNN
F 1 "+5V" H 8715 5223 50  0000 C CNN
F 2 "" H 8700 5050 50  0001 C CNN
F 3 "" H 8700 5050 50  0001 C CNN
	1    8700 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5050 8700 5100
Connection ~ 8700 5100
Wire Wire Line
	8700 5100 8950 5100
Wire Wire Line
	7700 5450 8050 5450
Text Label 8050 5450 2    60   ~ 0
V_TEST
Wire Wire Line
	7700 5350 8050 5350
Text Label 8050 5350 2    60   ~ 0
I_TEST
Text GLabel 10350 3700 1    60   Input ~ 0
Vac
$Comp
L Device:R R19
U 1 1 5AD514A0
P 10350 4650
F 0 "R19" H 10420 4696 50  0000 L CNN
F 1 "43.5K" H 10420 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 10280 4650 50  0001 C CNN
F 3 "~" H 10350 4650 50  0001 C CNN
	1    10350 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5AD515D2
P 10350 5150
F 0 "R20" H 10420 5196 50  0000 L CNN
F 1 "1K" H 10420 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 10280 5150 50  0001 C CNN
F 3 "~" H 10350 5150 50  0001 C CNN
	1    10350 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:D D5
U 1 1 5AD517AC
P 10350 3900
F 0 "D5" V 10396 3821 50  0000 R CNN
F 1 "D" V 10305 3821 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad0.97x1.50mm_HandSolder" H 10350 3900 50  0001 C CNN
F 3 "~" H 10350 3900 50  0001 C CNN
	1    10350 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10350 3750 10350 3700
Wire Wire Line
	10350 4500 10350 4400
Wire Wire Line
	10350 5000 10350 4900
$Comp
L power:GND #PWR025
U 1 1 5AD56D7C
P 10350 5400
F 0 "#PWR025" H 10350 5150 50  0001 C CNN
F 1 "GND" H 10355 5227 50  0000 C CNN
F 2 "" H 10350 5400 50  0001 C CNN
F 3 "" H 10350 5400 50  0001 C CNN
	1    10350 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5400 10350 5300
$Comp
L Device:CP1 C1
U 1 1 5AD58CC8
P 10000 5150
F 0 "C1" H 10115 5196 50  0000 L CNN
F 1 "10uF" H 10115 5105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.3" H 10000 5150 50  0001 C CNN
F 3 "~" H 10000 5150 50  0001 C CNN
	1    10000 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5AD58E19
P 10000 5400
F 0 "#PWR014" H 10000 5150 50  0001 C CNN
F 1 "GND" H 10005 5227 50  0000 C CNN
F 2 "" H 10000 5400 50  0001 C CNN
F 3 "" H 10000 5400 50  0001 C CNN
	1    10000 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5400 10000 5300
Wire Wire Line
	10000 5000 10000 4900
Wire Wire Line
	10000 4900 10350 4900
Connection ~ 10350 4900
Wire Wire Line
	10350 4900 10350 4800
Wire Wire Line
	10000 4900 9650 4900
Connection ~ 10000 4900
Text Label 9650 4900 0    60   ~ 0
V_TEST
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5AD66D0A
P 9400 5650
F 0 "J2" H 9480 5642 50  0000 L CNN
F 1 "Conn_01x04" H 9480 5551 50  0000 L CNN
F 2 "Connector_JST:JST_XH_S04B-XH-A-1_1x04_P2.50mm_Horizontal" H 9400 5650 50  0001 C CNN
F 3 "~" H 9400 5650 50  0001 C CNN
	1    9400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5550 8950 5550
Connection ~ 8950 5550
Wire Wire Line
	9200 5750 8450 5750
Wire Wire Line
	8450 5750 8450 5650
Connection ~ 8450 5650
Wire Wire Line
	8950 5950 8950 5850
Wire Wire Line
	8950 5650 9200 5650
Wire Wire Line
	9200 5850 8950 5850
Connection ~ 8950 5850
Wire Wire Line
	8950 5850 8950 5650
$Comp
L Device:R R21
U 1 1 5AD71C70
P 10350 4250
F 0 "R21" H 10420 4296 50  0000 L CNN
F 1 "43.5K" H 10420 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.50mm_HandSolder" V 10280 4250 50  0001 C CNN
F 3 "~" H 10350 4250 50  0001 C CNN
	1    10350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 4100 10350 4050
$EndSCHEMATC
