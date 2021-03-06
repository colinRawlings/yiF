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
LIBS:ard_shield-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L ARDUINO_MICRO_SHIELD U2
U 1 1 584C3B47
P 5900 3550
F 0 "U2" H 7650 3950 60  0000 C CNN
F 1 "ARDUINO_MICRO_SHIELD" H 6750 4150 60  0000 C CNN
F 2 "arduino_micro_shield:ARDUINO_MICRO_SHIELD" H 6300 3500 60  0001 C CNN
F 3 "" H 6300 3500 60  0000 C CNN
	1    5900 3550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X05 P7
U 1 1 584C3DD7
P 10000 4000
F 0 "P7" H 10000 4300 50  0000 C CNN
F 1 "CONN_lensX05" V 10100 4000 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x05" H 10000 4000 50  0001 C CNN
F 3 "" H 10000 4000 50  0000 C CNN
	1    10000 4000
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P8
U 1 1 584C4053
P 10000 4600
F 0 "P8" H 10000 4750 50  0000 C CNN
F 1 "CONN_lensX02" V 10100 4600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x02" H 10000 4600 50  0001 C CNN
F 3 "" H 10000 4600 50  0000 C CNN
	1    10000 4600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 584D8820
P 1600 1300
F 0 "P1" H 1600 1450 50  0000 C CNN
F 1 "CONN_bat" H 1700 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02" H 1600 1300 50  0001 C CNN
F 3 "" H 1600 1300 50  0000 C CNN
	1    1600 1300
	-1   0    0    1   
$EndComp
Text GLabel 10400 3800 2    60   Output ~ 0
Vbat_gnd
Text GLabel 9600 4550 0    60   Output ~ 0
Vbat_gnd
Text GLabel 10350 4100 2    60   Output ~ 0
MOSI
Text GLabel 10350 4000 2    60   Output ~ 0
MISO
Text GLabel 10350 3900 2    60   Output ~ 0
DCLK
Text GLabel 10400 4200 2    60   Output ~ 0
Lens_5V
Text GLabel 9600 4650 0    60   Output ~ 0
Lens_5V
Text Notes 9950 3650 0    60   ~ 0
Connector to lens	
Text GLabel 7250 3700 2    60   Input ~ 0
MISO
Text GLabel 7250 3600 2    60   Input ~ 0
DCLK
Text GLabel 5350 3600 0    60   Input ~ 0
MOSI
Text GLabel 2600 1350 2    60   Input ~ 0
Vbat_gnd_if1
$Comp
L CONN_02X03 P4
U 1 1 584D8F75
P 4950 1200
F 0 "P4" H 4950 1400 50  0000 C CNN
F 1 "CONN_if1_if1" H 4950 1000 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x03" H 4950 0   50  0001 C CNN
F 3 "" H 4950 0   50  0000 C CNN
	1    4950 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P6
U 1 1 584D8FB8
P 7550 1150
F 0 "P6" H 7550 1350 50  0000 C CNN
F 1 "CONN_if1_main" H 7550 950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 7550 -50 50  0001 C CNN
F 3 "" H 7550 -50 50  0000 C CNN
	1    7550 1150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 584D90B6
P 4950 1900
F 0 "P5" H 4950 2050 50  0000 C CNN
F 1 "CONN_Voltmeter" V 5050 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4950 1900 50  0001 C CNN
F 3 "" H 4950 1900 50  0000 C CNN
	1    4950 1900
	1    0    0    -1  
$EndComp
Text GLabel 4500 1950 0    60   Input ~ 0
Vbat_gnd_if1
Text GLabel 4500 1850 0    60   Input ~ 0
Vbat_7V_if1
$Comp
L SPST SW4
U 1 1 584D928A
P 2450 1100
F 0 "SW4" H 2450 1200 50  0000 C CNN
F 1 "Sbat" H 2450 1000 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_Matias_Quiet" H 2450 1100 50  0001 C CNN
F 3 "" H 2450 1100 50  0000 C CNN
	1    2450 1100
	1    0    0    -1  
$EndComp
Text GLabel 3050 1100 2    60   Input ~ 0
Vbat_7V_if1
Text GLabel 4600 1050 0    60   Input ~ 0
Vbat_7V_if1
Text GLabel 5350 1050 2    60   Input ~ 0
Vbat_gnd_if1
Text GLabel 7000 1000 0    60   Output ~ 0
Vbat_gnd
Text GLabel 8100 1000 2    60   Output ~ 0
Vbat_7V
$Comp
L SPST SW5
U 1 1 584D9741
P 2450 1800
F 0 "SW5" H 2450 1900 50  0000 C CNN
F 1 "Sset" H 2450 1700 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH-12mm" H 2450 1800 50  0001 C CNN
F 3 "" H 2450 1800 50  0000 C CNN
	1    2450 1800
	1    0    0    -1  
$EndComp
$Comp
L SPST SW6
U 1 1 584D9787
P 2450 2150
F 0 "SW6" H 2450 2250 50  0000 C CNN
F 1 "Srecall" H 2450 2050 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH-12mm" H 2450 2150 50  0001 C CNN
F 3 "" H 2450 2150 50  0000 C CNN
	1    2450 2150
	1    0    0    -1  
$EndComp
Text GLabel 3050 1800 2    60   Input ~ 0
Vbat_gnd_if1
Text GLabel 3050 2150 2    60   Input ~ 0
Vbat_gnd_if1
Text GLabel 5350 1200 2    60   Input ~ 0
LED_status_if1
Text GLabel 4600 1200 0    60   Input ~ 0
LED_err_if1
Text GLabel 4550 2300 0    60   Input ~ 0
LED_err_if1
Text GLabel 4550 2800 0    60   Input ~ 0
LED_status_if1
Text GLabel 4550 2500 0    60   Input ~ 0
Vbat_gnd_if1
Text GLabel 4550 3000 0    60   Input ~ 0
Vbat_gnd_if1
Text GLabel 7000 1150 0    60   Input ~ 0
LED_status
Text GLabel 8100 1150 2    60   Input ~ 0
LED_err
Text GLabel 4600 1350 0    60   Input ~ 0
Sset_if1
Text GLabel 5350 1350 2    60   Input ~ 0
Srecall_if1
Text GLabel 1800 1800 0    60   Input ~ 0
Sset_if1
Text GLabel 1800 2150 0    60   Input ~ 0
Srecall_if1
Text GLabel 7000 1300 0    60   Input ~ 0
Srecall
Text GLabel 8100 1300 2    60   Input ~ 0
Sset
Text GLabel 4600 5100 0    60   Input ~ 0
LED_status
Text GLabel 4600 5200 0    60   Input ~ 0
LED_err
Text GLabel 5400 4600 0    60   Input ~ 0
Sset
Text GLabel 5450 4800 0    60   Input ~ 0
Srecall
Text GLabel 7250 3900 2    60   Output ~ 0
Vbat_gnd
$Comp
L CONN_01X04 P2
U 1 1 584DACBD
P 4000 6800
F 0 "P2" H 4000 7050 50  0000 C CNN
F 1 "CONN_if2_if2" V 4100 6800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04" H 4000 6800 50  0001 C CNN
F 3 "" H 4000 6800 50  0000 C CNN
	1    4000 6800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 584DAD04
P 4550 6800
F 0 "P3" H 4550 7050 50  0000 C CNN
F 1 "CONN_if2_main" V 4650 6800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x04" H 4550 6800 50  0001 C CNN
F 3 "" H 4550 6800 50  0000 C CNN
	1    4550 6800
	-1   0    0    -1  
$EndComp
Text GLabel 5000 6950 2    60   Input ~ 0
Vbat_gnd
Text GLabel 3650 6950 0    60   Input ~ 0
Vbat_gnd_if2
Text GLabel 3650 6650 0    60   Input ~ 0
Splus_if2
Text GLabel 3650 6750 0    60   Input ~ 0
Sminus_if2
Text GLabel 3650 6850 0    60   Input ~ 0
SAv_if2
Text GLabel 5000 6850 2    60   Input ~ 0
SAv
Text GLabel 5000 6750 2    60   Input ~ 0
Sminus
Text GLabel 5000 6650 2    60   Input ~ 0
Splus
Text GLabel 7250 3800 2    60   Output ~ 0
Vbat_7V
$Comp
L SPST SW3
U 1 1 584DC70B
P 1700 7050
F 0 "SW3" H 1700 7150 50  0000 C CNN
F 1 "SAv" H 1700 6950 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH-12mm" H 1700 7050 50  0001 C CNN
F 3 "" H 1700 7050 50  0000 C CNN
	1    1700 7050
	1    0    0    -1  
$EndComp
$Comp
L SPST SW2
U 1 1 584DC797
P 1700 6650
F 0 "SW2" H 1700 6750 50  0000 C CNN
F 1 "Sminus" H 1700 6550 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH-12mm" H 1700 6650 50  0001 C CNN
F 3 "" H 1700 6650 50  0000 C CNN
	1    1700 6650
	1    0    0    -1  
$EndComp
$Comp
L SPST SW1
U 1 1 584DC7DD
P 1700 6250
F 0 "SW1" H 1700 6350 50  0000 C CNN
F 1 "Splus" H 1700 6150 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH-12mm" H 1700 6250 50  0001 C CNN
F 3 "" H 1700 6250 50  0000 C CNN
	1    1700 6250
	1    0    0    -1  
$EndComp
Text GLabel 1150 7050 0    60   Input ~ 0
Vbat_gnd_if2
Text GLabel 1150 6250 0    60   Input ~ 0
Vbat_gnd_if2
Text GLabel 1150 6650 0    60   Input ~ 0
Vbat_gnd_if2
Text GLabel 2350 6250 2    60   Input ~ 0
Splus_if2
Text GLabel 2350 6650 2    60   Input ~ 0
Sminus_if2
Text GLabel 2350 7050 2    60   Input ~ 0
SAv_if2
Text GLabel 5400 4400 0    60   Input ~ 0
Splus
Text GLabel 5400 4500 0    60   Input ~ 0
Sminus
$Comp
L Led_Small D1
U 1 1 584DD30E
P 4950 2400
F 0 "D1" H 4900 2525 50  0000 L CNN
F 1 "Led_err" H 4775 2300 50  0000 L CNN
F 2 "LEDs:LED-3MM" V 4950 2400 50  0001 C CNN
F 3 "" V 4950 2400 50  0000 C CNN
	1    4950 2400
	0    -1   -1   0   
$EndComp
$Comp
L Led_Small D2
U 1 1 584DD686
P 4950 2900
F 0 "D2" H 4900 3025 50  0000 L CNN
F 1 "Led_status" H 4775 2800 50  0000 L CNN
F 2 "LEDs:LED-3MM" V 4950 2900 50  0001 C CNN
F 3 "" V 4950 2900 50  0000 C CNN
	1    4950 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 584DD9C5
P 5150 5100
F 0 "R2" V 5230 5100 50  0000 C CNN
F 1 "470" V 5150 5100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5080 5100 50  0001 C CNN
F 3 "" H 5150 5100 50  0000 C CNN
	1    5150 5100
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 584DDA87
P 5150 5300
F 0 "R3" V 5230 5300 50  0000 C CNN
F 1 "470" V 5150 5300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5080 5300 50  0001 C CNN
F 3 "" H 5150 5300 50  0000 C CNN
	1    5150 5300
	0    1    1    0   
$EndComp
Text GLabel 900  3600 0    60   Output ~ 0
Vbat_7V
$Comp
L GND #PWR01
U 1 1 584DE4A4
P 7300 700
F 0 "#PWR01" H 7300 450 50  0001 C CNN
F 1 "GND" H 7300 550 50  0000 C CNN
F 2 "" H 7300 700 50  0000 C CNN
F 3 "" H 7300 700 50  0000 C CNN
	1    7300 700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 584DE791
P 1400 4150
F 0 "#PWR02" H 1400 3900 50  0001 C CNN
F 1 "GND" H 1400 4000 50  0000 C CNN
F 2 "" H 1400 4150 50  0000 C CNN
F 3 "" H 1400 4150 50  0000 C CNN
	1    1400 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 584DE7E4
P 950 4150
F 0 "#PWR03" H 950 3900 50  0001 C CNN
F 1 "GND" H 950 4000 50  0000 C CNN
F 2 "" H 950 4150 50  0000 C CNN
F 3 "" H 950 4150 50  0000 C CNN
	1    950  4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 584DE889
P 1950 4150
F 0 "#PWR04" H 1950 3900 50  0001 C CNN
F 1 "GND" H 1950 4000 50  0000 C CNN
F 2 "" H 1950 4150 50  0000 C CNN
F 3 "" H 1950 4150 50  0000 C CNN
	1    1950 4150
	1    0    0    -1  
$EndComp
$Comp
L CAP C1
U 1 1 584DE984
P 950 3850
F 0 "C1" H 1000 3950 50  0000 L CNN
F 1 "0.1u" H 1000 3750 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 950 3850 60  0001 C CNN
F 3 "" H 950 3850 60  0000 C CNN
	1    950  3850
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 584DEEF9
P 1950 3800
F 0 "C2" H 1975 3900 50  0000 L CNN
F 1 "CP" H 1975 3700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7_W2_P5" H 1988 3650 50  0001 C CNN
F 3 "" H 1950 3800 50  0000 C CNN
	1    1950 3800
	1    0    0    -1  
$EndComp
Text GLabel 4600 5000 0    60   Input ~ 0
Lpow
Text GLabel 2550 4650 3    60   Input ~ 0
Lpow
$Comp
L R R1
U 1 1 584DF60D
P 2550 4250
F 0 "R1" V 2630 4250 50  0000 C CNN
F 1 "1k" V 2550 4250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2480 4250 50  0001 C CNN
F 3 "" H 2550 4250 50  0000 C CNN
	1    2550 4250
	1    0    0    -1  
$EndComp
Text GLabel 3600 3600 2    60   Input ~ 0
Lens_5V
NoConn ~ 5700 3700
NoConn ~ 5700 3800
NoConn ~ 5700 3900
NoConn ~ 5700 4000
NoConn ~ 5700 4100
NoConn ~ 5700 4200
NoConn ~ 5700 4300
NoConn ~ 5700 4700
NoConn ~ 7050 5200
NoConn ~ 7050 5100
NoConn ~ 7050 5000
NoConn ~ 7050 4900
NoConn ~ 7050 4800
NoConn ~ 7050 4700
NoConn ~ 7050 4600
NoConn ~ 7050 4500
NoConn ~ 7050 4400
NoConn ~ 7050 4100
NoConn ~ 7050 4000
Text GLabel 5450 4900 0    60   Input ~ 0
SAv
$Comp
L LM7805CT U1
U 1 1 584E2B29
P 1400 3600
F 0 "U1" H 1200 3800 50  0000 C CNN
F 1 "LM2937" H 1400 3800 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 1400 3700 50  0000 C CIN
F 3 "" H 1400 3600 50  0000 C CNN
	1    1400 3600
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_EBC Q1
U 1 1 584E5924
P 2550 3700
F 0 "Q1" H 2850 3750 50  0000 R CNN
F 1 "Q_PNP_EBC" H 3150 3650 50  0000 R CNN
F 2 "" H 2750 3800 50  0000 C CNN
F 3 "" H 2550 3700 50  0000 C CNN
	1    2550 3700
	0    1    -1   0   
$EndComp
Wire Wire Line
	9600 4650 9800 4650
Wire Wire Line
	7250 3600 7050 3600
Wire Wire Line
	5350 3600 5700 3600
Wire Wire Line
	1800 1350 2600 1350
Wire Wire Line
	1800 1250 1950 1250
Wire Wire Line
	1950 1250 1950 1100
Wire Wire Line
	3050 1100 2950 1100
Wire Wire Line
	4600 1050 4700 1050
Wire Wire Line
	4700 1050 4700 1100
Wire Wire Line
	5200 1100 5200 1050
Wire Wire Line
	5200 1050 5350 1050
Wire Wire Line
	7000 1000 7300 1000
Wire Wire Line
	7300 1000 7300 1050
Wire Wire Line
	7800 1050 7800 1000
Wire Wire Line
	7800 1000 8100 1000
Wire Wire Line
	2950 2150 3050 2150
Wire Wire Line
	2950 1800 3050 1800
Wire Wire Line
	4550 3000 4950 3000
Wire Wire Line
	4550 2800 4950 2800
Wire Wire Line
	4550 2500 4950 2500
Wire Wire Line
	4550 2300 4950 2300
Wire Wire Line
	4600 1200 4700 1200
Wire Wire Line
	5200 1200 5350 1200
Wire Wire Line
	7000 1150 7300 1150
Wire Wire Line
	7800 1150 8100 1150
Wire Wire Line
	4600 1350 4700 1350
Wire Wire Line
	4700 1350 4700 1300
Wire Wire Line
	5200 1300 5250 1300
Wire Wire Line
	5250 1300 5250 1350
Wire Wire Line
	5250 1350 5350 1350
Wire Wire Line
	1800 1800 1950 1800
Wire Wire Line
	1950 2150 1800 2150
Wire Wire Line
	7000 1300 7300 1300
Wire Wire Line
	7300 1300 7300 1250
Wire Wire Line
	7800 1250 7950 1250
Wire Wire Line
	7950 1250 7950 1300
Wire Wire Line
	7950 1300 8100 1300
Wire Wire Line
	4600 5100 5000 5100
Wire Wire Line
	5450 4800 5700 4800
Wire Wire Line
	7250 3800 7050 3800
Wire Wire Line
	3650 6750 3800 6750
Wire Wire Line
	4750 6950 5000 6950
Wire Wire Line
	5000 6650 4750 6650
Wire Wire Line
	5000 6750 4750 6750
Wire Wire Line
	5000 6850 4750 6850
Wire Wire Line
	9600 4550 9800 4550
Wire Wire Line
	7250 3700 7050 3700
Wire Wire Line
	7050 3900 7250 3900
Wire Wire Line
	4600 5200 4850 5200
Wire Wire Line
	5400 4600 5700 4600
Wire Wire Line
	4500 1850 4750 1850
Wire Wire Line
	4750 1950 4500 1950
Wire Wire Line
	3650 6650 3800 6650
Wire Wire Line
	3800 6850 3650 6850
Wire Wire Line
	3650 6950 3800 6950
Wire Wire Line
	1150 7050 1200 7050
Wire Wire Line
	1200 6650 1150 6650
Wire Wire Line
	1150 6250 1200 6250
Wire Wire Line
	2350 7050 2200 7050
Wire Wire Line
	2200 6650 2350 6650
Wire Wire Line
	2350 6250 2200 6250
Wire Wire Line
	5400 4400 5700 4400
Wire Wire Line
	5700 4500 5400 4500
Wire Wire Line
	5000 5300 4850 5300
Wire Wire Line
	4850 5300 4850 5200
Wire Wire Line
	5300 5100 5700 5100
Wire Wire Line
	5700 5200 5500 5200
Wire Wire Line
	5500 5200 5500 5300
Wire Wire Line
	5500 5300 5300 5300
Wire Wire Line
	7300 700  7100 700 
Wire Wire Line
	7100 700  7100 1000
Connection ~ 7100 1000
Wire Wire Line
	950  4150 950  4050
Wire Wire Line
	1400 3850 1400 4150
Wire Wire Line
	1950 3950 1950 4150
Wire Wire Line
	900  3600 1000 3600
Wire Wire Line
	950  3650 950  3600
Connection ~ 950  3600
Wire Wire Line
	1950 3600 1950 3650
Connection ~ 1950 3600
Wire Wire Line
	4600 5000 5700 5000
Wire Wire Line
	2550 4650 2550 4400
Wire Wire Line
	5450 4900 5700 4900
Wire Wire Line
	1000 3600 1000 3550
Wire Wire Line
	1800 3550 1800 3600
Wire Wire Line
	10200 3800 10400 3800
Wire Wire Line
	10350 3900 10200 3900
Wire Wire Line
	10350 4000 10200 4000
Wire Wire Line
	10350 4100 10200 4100
Wire Wire Line
	10200 4200 10400 4200
Wire Wire Line
	1800 3600 2350 3600
Wire Wire Line
	2550 3900 2550 4100
Wire Wire Line
	2750 3600 3600 3600
$EndSCHEMATC
