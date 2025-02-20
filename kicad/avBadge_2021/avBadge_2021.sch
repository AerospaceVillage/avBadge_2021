EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Aerospace Village Badge 2021"
Date "2021-05-06"
Rev "0.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Author: Dan Allen"
$EndDescr
$Comp
L Device:LED D6
U 1 1 607B7010
P 7450 5350
F 0 "D6" H 7443 5567 50  0000 C CNN
F 1 "LED" H 7443 5476 50  0000 C CNN
F 2 "sunled:XZM2CRK45WT-9" H 7450 5350 50  0001 C CNN
F 3 "~" H 7450 5350 50  0001 C CNN
	1    7450 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 607B73BB
P 7850 5350
F 0 "D7" H 7843 5567 50  0000 C CNN
F 1 "LED" H 7843 5476 50  0000 C CNN
F 2 "sunled:XZM2CRK45WT-9" H 7850 5350 50  0001 C CNN
F 3 "~" H 7850 5350 50  0001 C CNN
	1    7850 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 607B77D9
P 7450 5800
F 0 "R14" H 7520 5846 50  0000 L CNN
F 1 "330" H 7520 5755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 7380 5800 50  0001 C CNN
F 3 "~" H 7450 5800 50  0001 C CNN
	1    7450 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 607B7AF9
P 7850 5800
F 0 "R15" H 7920 5846 50  0000 L CNN
F 1 "330" H 7920 5755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 7780 5800 50  0001 C CNN
F 3 "~" H 7850 5800 50  0001 C CNN
	1    7850 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 607B8D09
P 8200 6050
F 0 "#PWR021" H 8200 5800 50  0001 C CNN
F 1 "GND" H 8205 5877 50  0000 C CNN
F 2 "" H 8200 6050 50  0001 C CNN
F 3 "" H 8200 6050 50  0001 C CNN
	1    8200 6050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 607BA1C2
P 7000 5000
F 0 "Q1" H 7190 5046 50  0000 L CNN
F 1 "2N3904" H 7190 4955 50  0000 L CNN
F 2 "aerospace_badge:SOT-23-NPN" H 7200 4925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7000 5000 50  0001 L CNN
	1    7000 5000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 607C14AB
P 950 7400
F 0 "#FLG02" H 950 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 950 7573 50  0000 C CNN
F 2 "" H 950 7400 50  0001 C CNN
F 3 "~" H 950 7400 50  0001 C CNN
	1    950  7400
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 607C2503
P 1300 6800
F 0 "#FLG01" H 1300 6875 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 7000 50  0000 C CNN
F 2 "" H 1300 6800 50  0001 C CNN
F 3 "~" H 1300 6800 50  0001 C CNN
	1    1300 6800
	0    -1   -1   0   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 607C2959
P 1300 7100
F 0 "BT1" H 1418 7196 50  0000 L CNN
F 1 "Battery_Cell" H 1418 7105 50  0000 L CNN
F 2 "2479_battery_holder:2479" V 1300 7160 50  0001 C CNN
F 3 "~" V 1300 7160 50  0001 C CNN
	1    1300 7100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 607C2FA0
P 1300 6500
F 0 "SW1" V 1346 6312 50  0000 R CNN
F 1 "SW_SPDT" V 1255 6312 50  0000 R CNN
F 2 "aerospace_badge:switch_JS202011SCQN" H 1300 6500 50  0001 C CNN
F 3 "~" H 1300 6500 50  0001 C CNN
	1    1300 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 607CA8A6
P 1300 7400
F 0 "#PWR022" H 1300 7150 50  0001 C CNN
F 1 "GND" H 1300 7200 50  0000 C CNN
F 2 "" H 1300 7400 50  0001 C CNN
F 3 "" H 1300 7400 50  0001 C CNN
	1    1300 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7400 1300 7300
Wire Wire Line
	950  7400 950  7300
Wire Wire Line
	950  7300 1300 7300
Connection ~ 1300 7300
Wire Wire Line
	1300 7300 1300 7200
Wire Wire Line
	1300 6900 1300 6800
Text Notes 5450 1050 2    50   ~ 0
Tower Beacon
Text Notes 8150 1050 2    50   ~ 0
Tower Light Gun
$Comp
L Device:R R6
U 1 1 607EC702
P 7400 1850
F 0 "R6" H 7470 1896 50  0000 L CNN
F 1 "330" H 7470 1805 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 7330 1850 50  0001 C CNN
F 3 "~" H 7400 1850 50  0001 C CNN
	1    7400 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 607ECAB7
P 7400 1650
F 0 "R4" H 7470 1696 50  0000 L CNN
F 1 "330" H 7470 1605 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 7330 1650 50  0001 C CNN
F 3 "~" H 7400 1650 50  0001 C CNN
	1    7400 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 607ECCF5
P 7400 1450
F 0 "R2" H 7470 1496 50  0000 L CNN
F 1 "330" H 7470 1405 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 7330 1450 50  0001 C CNN
F 3 "~" H 7400 1450 50  0001 C CNN
	1    7400 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 607F201A
P 5650 1650
F 0 "#PWR03" H 5650 1500 50  0001 C CNN
F 1 "VCC" H 5665 1823 50  0000 C CNN
F 2 "" H 5650 1650 50  0001 C CNN
F 3 "" H 5650 1650 50  0001 C CNN
	1    5650 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1650 5450 1650
Wire Wire Line
	7700 1450 7550 1450
Wire Wire Line
	7700 1650 7550 1650
Wire Wire Line
	7700 1850 7550 1850
$Comp
L power:VCC #PWR04
U 1 1 6080B8A8
P 8250 1650
F 0 "#PWR04" H 8250 1500 50  0001 C CNN
F 1 "VCC" H 8265 1823 50  0000 C CNN
F 2 "" H 8250 1650 50  0001 C CNN
F 3 "" H 8250 1650 50  0001 C CNN
	1    8250 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 1650 8250 1650
$Comp
L Device:R R13
U 1 1 608182C7
P 6500 5000
F 0 "R13" H 6570 5046 50  0000 L CNN
F 1 "1K" H 6570 4955 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 6430 5000 50  0001 C CNN
F 3 "~" H 6500 5000 50  0001 C CNN
	1    6500 5000
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 6081CB9B
P 7100 4650
F 0 "#PWR015" H 7100 4500 50  0001 C CNN
F 1 "VCC" H 7115 4823 50  0000 C CNN
F 2 "" H 7100 4650 50  0001 C CNN
F 3 "" H 7100 4650 50  0001 C CNN
	1    7100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5000 6800 5000
$Comp
L Device:LED D8
U 1 1 60830161
P 8200 5350
F 0 "D8" H 8193 5567 50  0000 C CNN
F 1 "LED" H 8193 5476 50  0000 C CNN
F 2 "sunled:XZDGK45WT-9" H 8200 5350 50  0001 C CNN
F 3 "~" H 8200 5350 50  0001 C CNN
	1    8200 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D10
U 1 1 60830675
P 8900 5350
F 0 "D10" H 8893 5567 50  0000 C CNN
F 1 "LED" H 8893 5476 50  0000 C CNN
F 2 "sunled:XZMYK45WT-9" H 8900 5350 50  0001 C CNN
F 3 "~" H 8900 5350 50  0001 C CNN
	1    8900 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 608309B1
P 8200 5800
F 0 "R16" H 8270 5846 50  0000 L CNN
F 1 "330" H 8270 5755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 8130 5800 50  0001 C CNN
F 3 "~" H 8200 5800 50  0001 C CNN
	1    8200 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 60830D91
P 8900 5800
F 0 "R18" H 8970 5846 50  0000 L CNN
F 1 "330" H 8970 5755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 8830 5800 50  0001 C CNN
F 3 "~" H 8900 5800 50  0001 C CNN
	1    8900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5200 7450 5200
Wire Wire Line
	7450 5200 7850 5200
Connection ~ 7450 5200
Wire Wire Line
	7850 5200 8200 5200
Connection ~ 7850 5200
Connection ~ 8200 5200
Wire Wire Line
	7450 5500 7450 5650
Wire Wire Line
	7850 5500 7850 5650
Wire Wire Line
	8200 5500 8200 5650
Wire Wire Line
	8900 5500 8900 5650
Wire Wire Line
	7850 5950 8200 5950
Connection ~ 7850 5950
Connection ~ 8200 5950
Wire Wire Line
	8200 6050 8200 5950
$Comp
L Device:LED D5
U 1 1 60838F57
P 7250 3800
F 0 "D5" H 7243 4017 50  0000 C CNN
F 1 "LED" H 7243 3926 50  0000 C CNN
F 2 "aerospace_badge:led_in-s124ar" H 7250 3800 50  0001 C CNN
F 3 "~" H 7250 3800 50  0001 C CNN
	1    7250 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 608393BB
P 7250 3450
F 0 "D3" H 7243 3667 50  0000 C CNN
F 1 "LED" H 7243 3576 50  0000 C CNN
F 2 "aerospace_badge:led_in-s124ar" H 7250 3450 50  0001 C CNN
F 3 "~" H 7250 3450 50  0001 C CNN
	1    7250 3450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 60839A1C
P 7700 3800
F 0 "R10" H 7770 3846 50  0000 L CNN
F 1 "330" H 7770 3755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 7630 3800 50  0001 C CNN
F 3 "~" H 7700 3800 50  0001 C CNN
	1    7700 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 60839F2D
P 7700 3450
F 0 "R8" H 7770 3496 50  0000 L CNN
F 1 "330" H 7770 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 7630 3450 50  0001 C CNN
F 3 "~" H 7700 3450 50  0001 C CNN
	1    7700 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 3450 7550 3450
Wire Wire Line
	7400 3800 7550 3800
Wire Wire Line
	7850 3800 7850 3600
$Comp
L power:GND #PWR09
U 1 1 6083C185
P 8000 3600
F 0 "#PWR09" H 8000 3350 50  0001 C CNN
F 1 "GND" H 8005 3427 50  0000 C CNN
F 2 "" H 8000 3600 50  0001 C CNN
F 3 "" H 8000 3600 50  0001 C CNN
	1    8000 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 3600 7850 3600
Connection ~ 7850 3600
Wire Wire Line
	7850 3600 7850 3450
Text Notes 7750 3150 2    50   ~ 0
Flashing White LEDs
Text Notes 7900 5050 0    50   ~ 0
Runway Lighting (Red, Green, Yellow)
$Comp
L power:VCC #PWR018
U 1 1 6085AA8F
P 1200 6300
F 0 "#PWR018" H 1200 6150 50  0001 C CNN
F 1 "VCC" H 1215 6473 50  0000 C CNN
F 2 "" H 1200 6300 50  0001 C CNN
F 3 "" H 1200 6300 50  0001 C CNN
	1    1200 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6085B00A
P 4100 3800
F 0 "R9" H 4170 3846 50  0000 L CNN
F 1 "10K" H 4170 3755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 4030 3800 50  0001 C CNN
F 3 "~" H 4100 3800 50  0001 C CNN
	1    4100 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6085DA66
P 3950 3800
F 0 "#PWR010" H 3950 3550 50  0001 C CNN
F 1 "GND" H 3955 3627 50  0000 C CNN
F 2 "" H 3950 3800 50  0001 C CNN
F 3 "" H 3950 3800 50  0001 C CNN
	1    3950 3800
	0    1    1    0   
$EndComp
NoConn ~ 1400 6300
$Comp
L Device:LED D11
U 1 1 6090A05B
P 9250 5350
F 0 "D11" H 9243 5567 50  0000 C CNN
F 1 "LED" H 9243 5476 50  0000 C CNN
F 2 "sunled:XZMYK45WT-9" H 9250 5350 50  0001 C CNN
F 3 "~" H 9250 5350 50  0001 C CNN
	1    9250 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R19
U 1 1 6090AEF6
P 9250 5800
F 0 "R19" H 9320 5846 50  0000 L CNN
F 1 "330" H 9320 5755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 9180 5800 50  0001 C CNN
F 3 "~" H 9250 5800 50  0001 C CNN
	1    9250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5200 9250 5200
Connection ~ 8900 5200
Wire Wire Line
	9250 5500 9250 5650
Wire Wire Line
	9250 5950 8900 5950
Connection ~ 8900 5950
$Comp
L Device:C C2
U 1 1 609DA0C9
P 6850 5800
F 0 "C2" H 6965 5846 50  0000 L CNN
F 1 ".1uF" H 6965 5755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" H 6888 5650 50  0001 C CNN
F 3 "~" H 6850 5800 50  0001 C CNN
	1    6850 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5950 7450 5950
Connection ~ 7450 5950
Wire Wire Line
	7450 5950 7850 5950
Wire Wire Line
	6850 5650 6850 4750
Wire Wire Line
	6850 4750 7100 4750
Wire Wire Line
	7100 4750 7100 4800
$Comp
L Device:R R1
U 1 1 60A0EA41
P 4900 1450
F 0 "R1" H 4970 1496 50  0000 L CNN
F 1 "330" H 4970 1405 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 4830 1450 50  0001 C CNN
F 3 "~" H 4900 1450 50  0001 C CNN
	1    4900 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 60A0EFF7
P 4900 1650
F 0 "R3" H 4970 1696 50  0000 L CNN
F 1 "330" H 4970 1605 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 4830 1650 50  0001 C CNN
F 3 "~" H 4900 1650 50  0001 C CNN
	1    4900 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 60A0F3DC
P 4900 1850
F 0 "R5" H 4970 1896 50  0000 L CNN
F 1 "330" H 4970 1805 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 4830 1850 50  0001 C CNN
F 3 "~" H 4900 1850 50  0001 C CNN
	1    4900 1850
	0    -1   -1   0   
$EndComp
$Comp
L LED:SunLED_RGB_ReverseMount D1
U 1 1 60962DBB
P 5250 1650
F 0 "D1" H 5250 2167 50  0000 C CNN
F 1 "SunLED_RGB_ReverseMount" H 5250 2076 50  0000 C CNN
F 2 "sunled:XZMDKCBDDG45S-9" H 5250 2150 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/APFA3010LSEEZGKQBKC.pdf" H 5250 1200 50  0001 C CNN
	1    5250 1650
	1    0    0    -1  
$EndComp
$Comp
L LED:SunLED_RGB_ReverseMount D2
U 1 1 609668C2
P 7900 1650
F 0 "D2" H 7900 2167 50  0000 C CNN
F 1 "SunLED_RGB_ReverseMount" H 7900 2076 50  0000 C CNN
F 2 "sunled:XZMDKCBDDG45S-9" H 7900 2150 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/APFA3010LSEEZGKQBKC.pdf" H 7900 1200 50  0001 C CNN
	1    7900 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 60A3BFDC
P 4100 4350
F 0 "R12" H 4170 4396 50  0000 L CNN
F 1 "10K" H 4170 4305 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 4030 4350 50  0001 C CNN
F 3 "~" H 4100 4350 50  0001 C CNN
	1    4100 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60A3BFE2
P 3950 4350
F 0 "#PWR013" H 3950 4100 50  0001 C CNN
F 1 "GND" H 3955 4177 50  0000 C CNN
F 2 "" H 3950 4350 50  0001 C CNN
F 3 "" H 3950 4350 50  0001 C CNN
	1    3950 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 3450 7100 3700
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 60843E9C
P 1300 1300
F 0 "J1" H 971 1396 50  0000 R CNN
F 1 "AVR-ISP-6" H 971 1305 50  0000 R CNN
F 2 "aerospace_badge:AVR-ISP-6" V 1050 1350 50  0001 C CNN
F 3 " ~" H 25  750 50  0001 C CNN
	1    1300 1300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 6085045D
P 1200 800
F 0 "#PWR01" H 1200 650 50  0001 C CNN
F 1 "VCC" H 1215 973 50  0000 C CNN
F 2 "" H 1200 800 50  0001 C CNN
F 3 "" H 1200 800 50  0001 C CNN
	1    1200 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6084FECC
P 1200 1700
F 0 "#PWR05" H 1200 1450 50  0001 C CNN
F 1 "GND" H 1205 1527 50  0000 C CNN
F 2 "" H 1200 1700 50  0001 C CNN
F 3 "" H 1200 1700 50  0001 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega8-16AU U1
U 1 1 608E9FF1
P 2400 3350
F 0 "U1" H 2400 4931 50  0000 C CNN
F 1 "ATmega8-16AU" H 2400 4840 50  0000 C CNN
F 2 "digikey-footprints:TQFP-32_7x7mm" H 2400 3350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2486-8-bit-avr-microcontroller-atmega8_l_datasheet.pdf" H 2400 3350 50  0001 C CNN
	1    2400 3350
	1    0    0    -1  
$EndComp
NoConn ~ 3000 2050
$Comp
L power:GND #PWR06
U 1 1 607E1918
P 2100 1800
F 0 "#PWR06" H 2100 1550 50  0001 C CNN
F 1 "GND" H 2105 1627 50  0000 C CNN
F 2 "" H 2100 1800 50  0001 C CNN
F 3 "" H 2100 1800 50  0001 C CNN
	1    2100 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 607E0D0E
P 2250 1800
F 0 "C1" H 2365 1846 50  0000 L CNN
F 1 ".1uF" H 2365 1755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" H 2288 1650 50  0001 C CNN
F 3 "~" H 2250 1800 50  0001 C CNN
	1    2250 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 607DB61F
P 2400 4750
F 0 "#PWR016" H 2400 4500 50  0001 C CNN
F 1 "GND" H 2405 4577 50  0000 C CNN
F 2 "" H 2400 4750 50  0001 C CNN
F 3 "" H 2400 4750 50  0001 C CNN
	1    2400 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 607D4BE3
P 2400 1600
F 0 "#PWR02" H 2400 1450 50  0001 C CNN
F 1 "VCC" H 2415 1773 50  0000 C CNN
F 2 "" H 2400 1600 50  0001 C CNN
F 3 "" H 2400 1600 50  0001 C CNN
	1    2400 1600
	1    0    0    -1  
$EndComp
Connection ~ 2400 1800
Wire Wire Line
	2400 1800 2400 1950
Wire Wire Line
	2400 1600 2400 1800
Wire Wire Line
	1800 2250 1800 1400
Wire Wire Line
	1800 1400 1700 1400
Wire Wire Line
	1700 1300 3450 1300
Wire Wire Line
	3450 1300 3450 2750
Wire Wire Line
	3450 2750 3000 2750
Wire Wire Line
	1700 1200 3500 1200
Wire Wire Line
	3500 1200 3500 2550
Wire Wire Line
	3500 2550 3000 2550
Wire Wire Line
	1700 1100 3550 1100
Wire Wire Line
	3550 1100 3550 2650
Wire Wire Line
	3550 2650 3000 2650
Text Notes 4550 4050 2    50   ~ 0
PCL Interrupt
Text Notes 4350 4500 2    50   ~ 0
Lost Comms Interrupt
Wire Wire Line
	4350 3800 4350 3850
Wire Wire Line
	4350 3850 3000 3850
Connection ~ 4350 3800
Wire Wire Line
	4350 3800 4250 3800
Wire Wire Line
	3000 3950 3850 3950
Wire Wire Line
	3850 3950 3850 4200
Wire Wire Line
	3850 4200 4350 4200
Wire Wire Line
	4350 4200 4350 4350
Connection ~ 4350 4350
Wire Wire Line
	4350 4350 4250 4350
Wire Wire Line
	3000 2450 6350 2450
Wire Wire Line
	3000 3250 6900 3250
Wire Wire Line
	6900 3250 6900 3700
Wire Wire Line
	6900 3700 7100 3700
Connection ~ 7100 3700
Wire Wire Line
	7100 3700 7100 3800
Connection ~ 9250 5950
Connection ~ 9250 5200
Wire Wire Line
	9550 5950 9250 5950
Wire Wire Line
	9550 5500 9550 5650
Wire Wire Line
	9250 5200 9550 5200
$Comp
L Device:LED D12
U 1 1 6090B35B
P 9550 5350
F 0 "D12" H 9543 5567 50  0000 C CNN
F 1 "LED" H 9543 5476 50  0000 C CNN
F 2 "sunled:XZMYK45WT-9" H 9550 5350 50  0001 C CNN
F 3 "~" H 9550 5350 50  0001 C CNN
	1    9550 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 6090B132
P 9550 5800
F 0 "R20" H 9620 5846 50  0000 L CNN
F 1 "330" H 9620 5755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 9480 5800 50  0001 C CNN
F 3 "~" H 9550 5800 50  0001 C CNN
	1    9550 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3650 10150 3800
$Comp
L Device:R R11
U 1 1 60B2399F
P 10150 3950
F 0 "R11" H 10220 3996 50  0000 L CNN
F 1 "330" H 10220 3905 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 10080 3950 50  0001 C CNN
F 3 "~" H 10150 3950 50  0001 C CNN
	1    10150 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 60B23999
P 10150 3500
F 0 "D4" H 10143 3717 50  0000 C CNN
F 1 "LED" H 10143 3626 50  0000 C CNN
F 2 "sunled:XZFBB45S-9" H 10150 3500 50  0001 C CNN
F 3 "~" H 10150 3500 50  0001 C CNN
	1    10150 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60B2EAD8
P 10150 4100
F 0 "#PWR012" H 10150 3850 50  0001 C CNN
F 1 "GND" H 10155 3927 50  0000 C CNN
F 2 "" H 10150 4100 50  0001 C CNN
F 3 "" H 10150 4100 50  0001 C CNN
	1    10150 4100
	1    0    0    -1  
$EndComp
Text Notes 9850 3300 0    50   ~ 10
UFO
Wire Wire Line
	3000 4150 3550 4150
Wire Wire Line
	3550 4150 3550 3000
Wire Wire Line
	3550 3000 6900 3000
Wire Wire Line
	6900 3000 6900 1450
Wire Wire Line
	6900 1450 7250 1450
Wire Wire Line
	3000 4250 3500 4250
Wire Wire Line
	3500 4250 3500 2950
Wire Wire Line
	3500 2950 6950 2950
Wire Wire Line
	6950 2950 6950 1650
Wire Wire Line
	6950 1650 7250 1650
Wire Wire Line
	3000 2350 7000 2350
Wire Wire Line
	7000 2350 7000 1850
Wire Wire Line
	7000 1850 7250 1850
Wire Wire Line
	3000 2950 3150 2950
Wire Wire Line
	3150 2950 3150 2850
Wire Wire Line
	3150 2850 4400 2850
Wire Wire Line
	4400 2850 4400 1450
Wire Wire Line
	4400 1450 4750 1450
Wire Wire Line
	3000 3050 3200 3050
Wire Wire Line
	3200 3050 3200 2900
Wire Wire Line
	3200 2900 4450 2900
Wire Wire Line
	4450 2900 4450 1650
Wire Wire Line
	4450 1650 4750 1650
Wire Wire Line
	3000 3150 4500 3150
Wire Wire Line
	4500 3150 4500 1850
Wire Wire Line
	4500 1850 4750 1850
$Comp
L power:GND #PWR017
U 1 1 60B5A204
P 3550 5600
F 0 "#PWR017" H 3550 5350 50  0001 C CNN
F 1 "GND" H 3550 5400 50  0000 C CNN
F 2 "" H 3550 5600 50  0001 C CNN
F 3 "" H 3550 5600 50  0001 C CNN
	1    3550 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 3750 3350 3750
Wire Wire Line
	3350 3750 3350 5400
Wire Wire Line
	3350 5400 3550 5400
Wire Wire Line
	3000 3650 3400 3650
Wire Wire Line
	3400 3650 3400 5500
Wire Wire Line
	3400 5500 3550 5500
$Comp
L Device:R R7
U 1 1 60B69BEF
P 4800 3450
F 0 "R7" H 4870 3496 50  0000 L CNN
F 1 "10K" H 4870 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 4730 3450 50  0001 C CNN
F 3 "~" H 4800 3450 50  0001 C CNN
	1    4800 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 60B69BF5
P 4650 3450
F 0 "#PWR07" H 4650 3200 50  0001 C CNN
F 1 "GND" H 4655 3277 50  0000 C CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "" H 4650 3450 50  0001 C CNN
	1    4650 3450
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 60B69C02
P 5950 3800
F 0 "#PWR08" H 5950 3650 50  0001 C CNN
F 1 "VCC" H 5965 3973 50  0000 C CNN
F 2 "" H 5950 3800 50  0001 C CNN
F 3 "" H 5950 3800 50  0001 C CNN
	1    5950 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 3450 5050 3450
Text Notes 4650 3600 0    50   ~ 10
UFO Trigger
Wire Wire Line
	3000 4050 3650 4050
Wire Wire Line
	3650 4050 3650 3350
Wire Wire Line
	3650 3350 5050 3350
Wire Wire Line
	5050 3350 5050 3450
Connection ~ 5050 3450
Wire Wire Line
	5050 3450 5150 3450
Wire Wire Line
	3000 2250 10150 2250
Wire Wire Line
	10150 2250 10150 3350
NoConn ~ 3000 4350
NoConn ~ 3000 3450
NoConn ~ 3000 3350
NoConn ~ 2500 1950
NoConn ~ 1800 2450
NoConn ~ 1800 2650
NoConn ~ 1800 2850
NoConn ~ 1800 3050
NoConn ~ 1800 3150
NoConn ~ 2500 4750
Connection ~ 1300 6800
Wire Wire Line
	1300 6800 1300 6700
Wire Wire Line
	6350 2450 6350 5000
$Comp
L avBadge_symbols:OpenConnections S1
U 1 1 60C26AEC
P 5550 3700
F 0 "S1" H 5625 3925 50  0000 C CNN
F 1 "OpenConnections" H 5625 3834 50  0000 C CNN
F 2 "aerospace_badge:artboard_smooth2" H 5550 3700 50  0001 C CNN
F 3 "" H 5550 3700 50  0001 C CNN
	1    5550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3800 5300 3800
Wire Wire Line
	5150 3450 5150 3700
Wire Wire Line
	5150 3700 5300 3700
Wire Wire Line
	5250 4350 5250 3900
Wire Wire Line
	5250 3900 5300 3900
Wire Wire Line
	4350 4350 5250 4350
Text Notes 8200 6400 0    50   ~ 10
R
Text Notes 7450 6400 0    50   ~ 10
G
Text Notes 7800 6400 0    50   ~ 10
G
Text Notes 8900 6400 0    50   ~ 10
Y
Text Notes 9250 6400 0    50   ~ 10
Y
Text Notes 9550 6400 0    50   ~ 10
Y
Wire Wire Line
	8200 5200 8900 5200
Wire Wire Line
	8200 5950 8900 5950
$Comp
L avBadge_symbols:SerialConnector P1
U 1 1 60ADF153
P 3700 5500
F 0 "P1" H 3928 5551 50  0000 L CNN
F 1 "SerialConnector" H 3928 5460 50  0000 L CNN
F 2 "aerospace_badge:serialConnector" H 3700 5500 50  0001 C CNN
F 3 "" H 3700 5500 50  0001 C CNN
	1    3700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4750 7100 4650
Connection ~ 7100 4750
$Comp
L Device:LED D9
U 1 1 60B1DCE4
P 9700 3500
F 0 "D9" H 9693 3717 50  0000 C CNN
F 1 "LED" H 9693 3626 50  0000 C CNN
F 2 "sunled:XZFBB45S-9" H 9700 3500 50  0001 C CNN
F 3 "~" H 9700 3500 50  0001 C CNN
	1    9700 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 60B1E1BD
P 9700 3950
F 0 "R17" H 9770 3996 50  0000 L CNN
F 1 "330" H 9770 3905 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_3216Metric" V 9630 3950 50  0001 C CNN
F 3 "~" H 9700 3950 50  0001 C CNN
	1    9700 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60B1E737
P 9700 4100
F 0 "#PWR011" H 9700 3850 50  0001 C CNN
F 1 "GND" H 9705 3927 50  0000 C CNN
F 2 "" H 9700 4100 50  0001 C CNN
F 3 "" H 9700 4100 50  0001 C CNN
	1    9700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3650 9700 3800
Wire Wire Line
	9700 3350 10150 3350
Connection ~ 10150 3350
$Comp
L sao1_69:SAO_1.69 J2
U 1 1 60C11C3B
P 2700 5900
F 0 "J2" H 3078 5801 50  0000 L CNN
F 1 "SAO_1.69" H 3078 5710 50  0000 L CNN
F 2 "space_shuttle_SAO:sao_1.69" H 2700 5900 50  0001 C CNN
F 3 "" H 2700 5900 50  0001 C CNN
	1    2700 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60C139CB
P 2500 5900
F 0 "#PWR0101" H 2500 5650 50  0001 C CNN
F 1 "GND" V 2505 5772 50  0000 R CNN
F 2 "" H 2500 5900 50  0001 C CNN
F 3 "" H 2500 5900 50  0001 C CNN
	1    2500 5900
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 60C14445
P 2500 5800
F 0 "#PWR0102" H 2500 5650 50  0001 C CNN
F 1 "VCC" V 2515 5927 50  0000 L CNN
F 2 "" H 2500 5800 50  0001 C CNN
F 3 "" H 2500 5800 50  0001 C CNN
	1    2500 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 5800 2600 5800
Wire Wire Line
	2500 5900 2600 5900
$EndSCHEMATC
