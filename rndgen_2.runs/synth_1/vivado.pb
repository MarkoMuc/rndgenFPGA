
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:062default:default2
394.2772default:default2
61.1682default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental D:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/utils_1/imports/synth_1/spi_master.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2j
VD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/utils_1/imports/synth_1/spi_master.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
q
Command: %s
53*	vivadotcl2@
,synth_design -top top -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
103122default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2`
JD:/Apps/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1222.742 ; gain = 408.879
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
top2default:default2[
ED:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/top.vhd2default:default2
312default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	prescaler2default:default2_
KD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/prescaler.vhd2default:default2
222default:default2
prescl_inst2default:default2
	prescaler2default:default2[
ED:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/top.vhd2default:default2
672default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	prescaler2default:default2a
KD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/prescaler.vhd2default:default2
292default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	prescaler2default:default2
02default:default2
12default:default2a
KD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/prescaler.vhd2default:default2
292default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

spi_master2default:default2`
LD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/spi_master.vhd2default:default2
282default:default2
spi_inst2default:default2

spi_master2default:default2[
ED:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/top.vhd2default:default2
722default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

spi_master2default:default2b
LD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/spi_master.vhd2default:default2
422default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

spi_master2default:default2
02default:default2
12default:default2b
LD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/spi_master.vhd2default:default2
422default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2!
data_transmit2default:default2e
OD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/data_transmit.vhd2default:default2
432default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2#
UART_controller2default:default2g
QD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/UART_controller.vhd2default:default2
182default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2!
prescaleruart2default:default2e
OD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/prescaleruart.vhd2default:default2
182default:default8@Z8-638h px� 
[
%s
*synth2C
/	Parameter width bound to: 14 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
prescaleruart2default:default2
02default:default2
12default:default2e
OD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/prescaleruart.vhd2default:default2
182default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2"
shift_register2default:default2f
PD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/shift_register.vhd2default:default2
182default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
shift_register2default:default2
02default:default2
12default:default2f
PD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/shift_register.vhd2default:default2
182default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2

tx_control2default:default2e
OD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/tx_controller.vhd2default:default2
202default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

tx_control2default:default2
02default:default2
12default:default2e
OD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/tx_controller.vhd2default:default2
202default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
UART_controller2default:default2
02default:default2
12default:default2g
QD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/UART_controller.vhd2default:default2
182default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
data_transmit2default:default2
02default:default2
12default:default2e
OD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/data_transmit.vhd2default:default2
432default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
top2default:default2
02default:default2
12default:default2[
ED:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/sources_1/new/top.vhd2default:default2
312default:default8@Z8-256h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1319.168 ; gain = 505.305
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1319.168 ; gain = 505.305
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1319.168 ; gain = 505.305
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0142default:default2
1319.1682default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2j
TD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/constrs_1/imports/Vivado/nexyzA7.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2j
TD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/constrs_1/imports/Vivado/nexyzA7.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2h
TD:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.srcs/constrs_1/imports/Vivado/nexyzA7.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1382.9842default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
1382.9842default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2`
JD:/Apps/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2

spi_master2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2

tx_control2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�                power_up | 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001 |                          0000000
2default:defaulth p
x
� 
�
%s
*synth2�
�                  cs_low | 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010 |                          0000001
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_cmd1 | 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100 |                          0000010
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_cmd2 | 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000 |                          0000011
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_cmd3 | 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000 |                          0000100
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_cmd4 | 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000 |                          0000101
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_cmd5 | 000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000 |                          0000110
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_cmd6 | 000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000 |                          0000111
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_cmd7 | 000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000 |                          0001000
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_cmd8 | 000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000 |                          0001001
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_pcr1 | 000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000 |                          0001010
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_pcr2 | 000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000 |                          0001011
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_pcr3 | 000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000 |                          0001100
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_pcr4 | 000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000 |                          0001101
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_pcr5 | 000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000 |                          0001110
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_pcr6 | 000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000 |                          0001111
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_pcr7 | 000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000 |                          0010000
2default:defaulth p
x
� 
�
%s
*synth2�
�              write_pcr8 | 000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000 |                          0010001
2default:defaulth p
x
� 
�
%s
*synth2�
�             write_mode1 | 000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000 |                          0010010
2default:defaulth p
x
� 
�
%s
*synth2�
�             write_mode2 | 000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000 |                          0010011
2default:defaulth p
x
� 
�
%s
*synth2�
�             write_mode3 | 000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000 |                          0010100
2default:defaulth p
x
� 
�
%s
*synth2�
�             write_mode4 | 000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000 |                          0010101
2default:defaulth p
x
� 
�
%s
*synth2�
�             write_mode5 | 000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000 |                          0010110
2default:defaulth p
x
� 
�
%s
*synth2�
�             write_mode6 | 000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000 |                          0010111
2default:defaulth p
x
� 
�
%s
*synth2�
�             write_mode7 | 000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000 |                          0011000
2default:defaulth p
x
� 
�
%s
*synth2�
�             write_mode8 | 000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000 |                          0011001
2default:defaulth p
x
� 
�
%s
*synth2�
�                 wait_40 | 000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000 |                          0011010
2default:defaulth p
x
� 
�
%s
*synth2�
�                read_low | 000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000 |                          0011011
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_cmd1 | 000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000 |                          0011100
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_cmd2 | 000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000 |                          0011101
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_cmd3 | 000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000 |                          0011110
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_cmd4 | 000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000 |                          0011111
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_cmd5 | 000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000 |                          0100000
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_cmd6 | 000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000 |                          0100001
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_cmd7 | 000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000 |                          0100010
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_cmd8 | 000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000 |                          0100011
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_adr1 | 000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000 |                          0100100
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_adr2 | 000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000 |                          0100101
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_adr3 | 000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000 |                          0100110
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_adr4 | 000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000 |                          0100111
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_adr5 | 000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000 |                          0101000
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_adr6 | 000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000 |                          0101001
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_adr7 | 000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000 |                          0101010
2default:defaulth p
x
� 
�
%s
*synth2�
�               read_adr8 | 000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000 |                          0101011
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_xdata1 | 000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000 |                          0101100
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_xdata2 | 000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000 |                          0101101
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_xdata3 | 000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000 |                          0101110
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_xdata4 | 000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000 |                          0101111
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_xdata5 | 000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000 |                          0110000
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_xdata6 | 000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000 |                          0110001
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_xdata7 | 000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000 |                          0110010
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_xdata8 | 000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000 |                          0110011
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_x2data1 | 000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000 |                          0110100
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_x2data2 | 000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000 |                          0110101
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_x2data3 | 000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000 |                          0110110
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_x2data4 | 000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000 |                          0110111
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_x2data5 | 000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000 |                          0111000
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_x2data6 | 000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000 |                          0111001
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_x2data7 | 000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000 |                          0111010
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_x2data8 | 000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000 |                          0111011
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_ydata1 | 000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000 |                          0111100
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_ydata2 | 000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000 |                          0111101
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_ydata3 | 000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000 |                          0111110
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_ydata4 | 000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000 |                          0111111
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_ydata5 | 000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000 |                          1000000
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_ydata6 | 000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000 |                          1000001
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_ydata7 | 000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000 |                          1000010
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_ydata8 | 000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000 |                          1000011
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_y2data1 | 000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000 |                          1000100
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_y2data2 | 000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000 |                          1000101
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_y2data3 | 000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000 |                          1000110
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_y2data4 | 000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000 |                          1000111
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_y2data5 | 000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000 |                          1001000
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_y2data6 | 000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000 |                          1001001
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_y2data7 | 000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000 |                          1001010
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_y2data8 | 000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1001011
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_zdata1 | 000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1001100
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_zdata2 | 000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1001101
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_zdata3 | 000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1001110
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_zdata4 | 000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1001111
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_zdata5 | 000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1010000
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_zdata6 | 000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1010001
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_zdata7 | 000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1010010
2default:defaulth p
x
� 
�
%s
*synth2�
�             read_zdata8 | 000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1010011
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_z2data1 | 000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1010100
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_z2data2 | 000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1010101
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_z2data3 | 000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1010110
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_z2data4 | 000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1010111
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_z2data5 | 000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1011000
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_z2data6 | 000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1011001
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_z2data7 | 001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1011010
2default:defaulth p
x
� 
�
%s
*synth2�
�            read_z2data8 | 010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1011011
2default:defaulth p
x
� 
�
%s
*synth2�
�                 wait_10 | 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 |                          1011100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2

spi_master2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                st_reset |                     000000000001 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 st_idle |                     000000000010 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_                st_start |                     000000000100 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_                   st_b0 |                     000000001000 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2s
_                   st_b1 |                     000000010000 |                             0100
2default:defaulth p
x
� 
�
%s
*synth2s
_                   st_b2 |                     000000100000 |                             0101
2default:defaulth p
x
� 
�
%s
*synth2s
_                   st_b3 |                     000001000000 |                             0110
2default:defaulth p
x
� 
�
%s
*synth2s
_                   st_b4 |                     000010000000 |                             0111
2default:defaulth p
x
� 
�
%s
*synth2s
_                   st_b5 |                     000100000000 |                             1000
2default:defaulth p
x
� 
�
%s
*synth2s
_                   st_b6 |                     001000000000 |                             1001
2default:defaulth p
x
� 
�
%s
*synth2s
_                   st_b7 |                     010000000000 |                             1010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 st_stop |                     100000000000 |                             1011
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2

tx_control2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:21 ; elapsed = 00:00:24 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 17    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	  93 Input   93 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  93 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  93 Input   16 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  93 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  12 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:36 ; elapsed = 00:00:39 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:37 ; elapsed = 00:00:40 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    13|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     4|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    15|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    23|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    36|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    11|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    34|
2default:defaulth px� 
D
%s*synth2,
|9     |FDRE   |   210|
2default:defaulth px� 
D
%s*synth2,
|10    |FDSE   |    11|
2default:defaulth px� 
D
%s*synth2,
|11    |IBUF   |     4|
2default:defaulth px� 
D
%s*synth2,
|12    |OBUF   |     5|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:31 ; elapsed = 00:00:42 . Memory (MB): peak = 1382.984 ; gain = 505.305
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:43 ; elapsed = 00:00:46 . Memory (MB): peak = 1382.984 ; gain = 569.121
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1382.9842default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
132default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1382.9842default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
f
$Synth Design complete, checksum: %s
562*	vivadotcl2
9c66abe2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:482default:default2
00:00:542default:default2
1382.9842default:default2
963.8322default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2S
?D:/DESKTOPMA/CODE/Vivado/rndgen_2/rndgen_2.runs/synth_1/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Mar 30 01:00:09 20232default:defaultZ17-206h px� 


End Record