
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/utils_1/imports/synth_1/MAC_top.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2t
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/utils_1/imports/synth_1/MAC_top.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
t
Command: %s
53*	vivadotcl2C
/synth_design -top Switch -part xc7a200tfbv484-22default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a200t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a200t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a200tfbv484-22default:defaultZ21-403h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
a
#Helper process launched with PID %s4824*oasys2
6990112default:defaultZ8-7075h px? 
?
%s has already been declared976*oasys2!
rx_mac_choose2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/LLC_top.v2default:default2
872default:default8@Z8-976h px? 
?
 second declaration of %s ignored2654*oasys2!
rx_mac_choose2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/LLC_top.v2default:default2
872default:default8@Z8-2654h px? 
?
%s is declared here994*oasys2!
rx_mac_choose2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/LLC_top.v2default:default2
822default:default8@Z8-994h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
	cur_state2default:default2p
Z/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/MMU.v2default:default2
672default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
SEARCH2default:default2p
Z/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/MMU.v2default:default2
672default:default8@Z8-6901h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2724.094 ; gain = 0.000 ; free physical = 206 ; free virtual = 14440
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
Switch2default:default2
 2default:default2e
O/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/Switch.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
MAC_top2default:default2
 2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_top.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
gmii_to_rgmii2default:default2
 2default:default2~
h/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/gmii_to_rgmii/gmii_to_rgmii.v2default:default2
202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
rgmii_rx2default:default2
 2default:default2y
c/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/gmii_to_rgmii/rgmii_rx.v2default:default2
132default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
IDDR2default:default2
 2default:default2T
>/home/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
571782default:default8@Z8-6157h px? 
h
%s
*synth2P
<	Parameter DDR_CLK_EDGE bound to: SAME_EDGE - type: string 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter INIT_Q1 bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter INIT_Q2 bound to: 1'b0 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter SRTYPE bound to: ASYNC - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IDDR2default:default2
 2default:default2
12default:default2
12default:default2T
>/home/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
571782default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rgmii_rx2default:default2
 2default:default2
22default:default2
12default:default2y
c/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/gmii_to_rgmii/rgmii_rx.v2default:default2
132default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
rgmii_tx2default:default2
 2default:default2y
c/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/gmii_to_rgmii/rgmii_tx.v2default:default2
132default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
ODDR2default:default2
 2default:default2T
>/home/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
747492default:default8@Z8-6157h px? 
h
%s
*synth2P
<	Parameter DDR_CLK_EDGE bound to: SAME_EDGE - type: string 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter SRTYPE bound to: ASYNC - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ODDR2default:default2
 2default:default2
32default:default2
12default:default2T
>/home/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
747492default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rgmii_tx2default:default2
 2default:default2
42default:default2
12default:default2y
c/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/gmii_to_rgmii/rgmii_tx.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
gmii_to_rgmii2default:default2
 2default:default2
52default:default2
12default:default2~
h/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/gmii_to_rgmii/gmii_to_rgmii.v2default:default2
202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	clock_ctl2default:default2
 2default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
12default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
222default:default8@Z8-155h px? 
?
synthesizing module '%s'%s4497*oasys2
pll_mac2default:default2
 2default:default2?
u/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/pll_mac_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pll_mac2default:default2
 2default:default2
62default:default2
12default:default2?
u/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/pll_mac_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clock_ctl2default:default2
 2default:default2
72default:default2
12default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
MDIO2default:default2
 2default:default2q
[/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MDIO.v2default:default2
232default:default8@Z8-6157h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
MDIO_data_rx_reg2default:default2q
[/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MDIO.v2default:default2
1892default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
reg_data_rx_en_reg2default:default2q
[/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MDIO.v2default:default2
2822default:default8@Z8-6014h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
err_en2default:default2
MDIO2default:default2q
[/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MDIO.v2default:default2
502default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MDIO2default:default2
 2default:default2
82default:default2
12default:default2q
[/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MDIO.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
reg_ctl2default:default2
 2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
242default:default8@Z8-6157h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
mode_check_en_reg2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1632default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
phy_reg_reg[0]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
phy_reg_reg[2]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
phy_reg_reg[3]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
phy_reg_reg[6]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
phy_reg_reg[7]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
phy_reg_reg[8]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
phy_reg_reg[9]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[11]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[12]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[13]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[14]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[15]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[16]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[17]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[18]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[19]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[20]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[21]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[22]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[23]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[24]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[25]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[26]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[27]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[28]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[29]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[30]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
phy_reg_reg[31]2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
1102default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
reg_ctl2default:default2
 2default:default2
92default:default2
12default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/reg_ctl.v2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
MAC_rx_ctl_top2default:default2
 2default:default2{
e/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_rx_ctl_top.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

MAC_rx_ctl2default:default2
 2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_rx_ctl.v2default:default2
42default:default8@Z8-6157h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2

mac_length2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_rx_ctl.v2default:default2
3432default:default8@Z8-567h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	sw_en_reg2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_rx_ctl.v2default:default2
1992default:default8@Z8-6014h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2!
data_added_en2default:default2

MAC_rx_ctl2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_rx_ctl.v2default:default2
302default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2)
mac_rx_que_fifo_wr_en2default:default2

MAC_rx_ctl2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_rx_ctl.v2default:default2
382default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2'
mac_rx_que_fifo_din2default:default2

MAC_rx_ctl2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_rx_ctl.v2default:default2
392default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MAC_rx_ctl2default:default2
 2default:default2
102default:default2
12default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_rx_ctl.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
CRC_chk2default:default2
 2default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/CRC_check.v2default:default2
502default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CRC_chk2default:default2
 2default:default2
112default:default2
12default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/CRC_check.v2default:default2
502default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
crc_data2default:default2"
MAC_rx_ctl_top2default:default2{
e/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_rx_ctl_top.v2default:default2
422default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
MAC_rx_ctl_top2default:default2
 2default:default2
122default:default2
12default:default2{
e/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_rx_ctl_top.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

MAC_tx_ctl2default:default2
 2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_tx_ctl.v2default:default2
412default:default8@Z8-6157h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2)
mac_tx_que_fifo_empty2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_tx_ctl.v2default:default2
2322default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	sys_rst_n2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_tx_ctl.v2default:default2
2402default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2)
mac_tx_que_fifo_rd_en2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_tx_ctl.v2default:default2
2402default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2(
mac_tx_que_fifo_dout2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_tx_ctl.v2default:default2
2402default:default8@Z8-567h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2

gmii_tx_en2default:default2

MAC_tx_ctl2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_tx_ctl.v2default:default2
742default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MAC_tx_ctl2default:default2
 2default:default2
132default:default2
12default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_tx_ctl.v2default:default2
412default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
rx_fifo_top2default:default2
 2default:default2x
b/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/rx_fifo_top.v2default:default2
12default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2x
b/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/rx_fifo_top.v2default:default2
912default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2

data_added2default:default2x
b/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/rx_fifo_top.v2default:default2
1062default:default8@Z8-567h px? 
?
synthesizing module '%s'%s4497*oasys2
mac_rx_fifo2default:default2
 2default:default2?
y/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/mac_rx_fifo_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mac_rx_fifo2default:default2
 2default:default2
142default:default2
12default:default2?
y/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/mac_rx_fifo_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
mac_ctl_fifo_18x162default:default2
 2default:default2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/mac_ctl_fifo_18x16_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
mac_ctl_fifo_18x162default:default2
 2default:default2
152default:default2
12default:default2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/mac_ctl_fifo_18x16_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2,
mac_rx_que_fifo_overflow2default:default2
rx_fifo_top2default:default2x
b/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/rx_fifo_top.v2default:default2
362default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2-
mac_rx_que_fifo_underflow2default:default2
rx_fifo_top2default:default2x
b/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/rx_fifo_top.v2default:default2
462default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rx_fifo_top2default:default2
 2default:default2
162default:default2
12default:default2x
b/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/rx_fifo_top.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
tx_fifo_top2default:default2
 2default:default2x
b/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/tx_fifo_top.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
mac_tx_fifo2default:default2
 2default:default2?
y/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/mac_tx_fifo_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mac_tx_fifo2default:default2
 2default:default2
172default:default2
12default:default2?
y/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/mac_tx_fifo_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2,
mac_tx_que_fifo_overflow2default:default2
tx_fifo_top2default:default2x
b/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/tx_fifo_top.v2default:default2
352default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2-
mac_tx_que_fifo_underflow2default:default2
tx_fifo_top2default:default2x
b/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/tx_fifo_top.v2default:default2
452default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tx_fifo_top2default:default2
 2default:default2
182default:default2
12default:default2x
b/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/tx_fifo_top.v2default:default2
12default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2&
mac_tx_fifo_rd_clk2default:default2
MAC_top2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_top.v2default:default2
902default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
tx_busy2default:default2
MAC_top2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_top.v2default:default2
1232default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MAC_top2default:default2
 2default:default2
192default:default2
12default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_top.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
LLC_top2default:default2
 2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/LLC_top.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
arbiter2default:default2
 2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

arbiter_rx2default:default2
 2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter_rx.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

arbiter_rx2default:default2
 2default:default2
202default:default2
12default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter_rx.v2default:default2
12default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2&
mac_tx_fifo_wr_clk2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
342default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2#
mac_tx_fifo_din2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
352default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2%
mac_tx_fifo_wr_en2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
362default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2)
mac_tx_que_fifo_wr_en2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
442default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2'
mac_tx_que_fifo_din2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
452default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2!
tx_mac_choose2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
562default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2!
rx_fifo_empty2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
622default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2(
rx_fifo_almost_empty2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
632default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2%
rx_fifo_underflow2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
642default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2 
tx_fifo_full2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
722default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2'
tx_fifo_almost_full2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
732default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2$
tx_fifo_overflow2default:default2
arbiter2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
742default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
arbiter2default:default2
 2default:default2
212default:default2
12default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/arbiter.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mac_addr2default:default2
 2default:default2u
_/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/mac_addr.v2default:default2
12default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2u
_/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/mac_addr.v2default:default2
842default:default8@Z8-155h px? 
?
synthesizing module '%s'%s4497*oasys2
crc_102default:default2
 2default:default2s
]/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/crc_10.v2default:default2
142default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
crc_102default:default2
 2default:default2
222default:default2
12default:default2s
]/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/crc_10.v2default:default2
142default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
blk_mem_64x10002default:default2
 2default:default2?
}/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/blk_mem_64x1000_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
blk_mem_64x10002default:default2
 2default:default2
232default:default2
12default:default2?
}/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/blk_mem_64x1000_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mac_addr2default:default2
 2default:default2
242default:default2
12default:default2u
_/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/mac_addr.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
cache2default:default2
 2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/cache.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
MMU2default:default2
 2default:default2p
Z/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/MMU.v2default:default2
262default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2"
blk_mem_18x4002default:default2
 2default:default2?
|/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/blk_mem_18x400_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
blk_mem_18x4002default:default2
 2default:default2
252default:default2
12default:default2?
|/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/blk_mem_18x400_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
change_delay2_reg2default:default2p
Z/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/MMU.v2default:default2
782default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MMU2default:default2
 2default:default2
262default:default2
12default:default2p
Z/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/MMU.v2default:default2
262default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

mem_64x1922default:default2
 2default:default2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/mem_64x192_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

mem_64x1922default:default2
 2default:default2
272default:default2
12default:default2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/mem_64x192_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cache2default:default2
 2default:default2
282default:default2
12default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/cache.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

ctl_center2default:default2
 2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/ctl_center.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
rx_ctl_center2default:default2
 2default:default2z
d/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/rx_ctl_center.v2default:default2
12default:default8@Z8-6157h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
mac64_length_reg2default:default2z
d/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/rx_ctl_center.v2default:default2
772default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
rx_ctl_center2default:default2
 2default:default2
292default:default2
12default:default2z
d/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/rx_ctl_center.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
tx_ctl_center2default:default2
 2default:default2z
d/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/tx_ctl_center.v2default:default2
12default:default8@Z8-6157h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
tx_mac_length_reg2default:default2z
d/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/tx_ctl_center.v2default:default2
1312default:default8@Z8-6014h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2"
tx_que_data_en2default:default2!
tx_ctl_center2default:default2z
d/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/tx_ctl_center.v2default:default2
302default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2!
tx_data_ready2default:default2!
tx_ctl_center2default:default2z
d/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/tx_ctl_center.v2default:default2
162default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2%
tx_fifo_choose_en2default:default2!
tx_ctl_center2default:default2z
d/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/tx_ctl_center.v2default:default2
312default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
tx_ctl_center2default:default2
 2default:default2
302default:default2
12default:default2z
d/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/tx_ctl_center.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ctl_center2default:default2
 2default:default2
312default:default2
12default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/ctl_center.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
queue2default:default2
 2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

fifo_24x322default:default2
 2default:default2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/fifo_24x32_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

fifo_24x322default:default2
 2default:default2
322default:default2
12default:default2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/.Xil/Vivado-698582-mlyue/realtime/fifo_24x32_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
din2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1412default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
dout2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1442default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
din2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1412default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
dout2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1442default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
din2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1412default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
dout2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1442default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
din2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1412default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
dout2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1442default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
din2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1412default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
dout2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1442default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
din2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1412default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
dout2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1442default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
din2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1412default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
dout2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1442default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
din2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1412default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
dout2default:default2
242default:default2

fifo_24x322default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1442default:default8@Z8-689h px? 
?
default block is never used226*oasys2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
612default:default8@Z8-226h px? 
?
default block is never used226*oasys2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
762default:default8@Z8-226h px? 
?
default block is never used226*oasys2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
922default:default8@Z8-226h px? 
?
default block is never used226*oasys2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1072default:default8@Z8-226h px? 
?
default block is never used226*oasys2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1222default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
queue2default:default2
 2default:default2
332default:default2
12default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
12default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2"
tx_fifo_wr_clk2default:default2
LLC_top2default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/LLC_top.v2default:default2
982default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LLC_top2default:default2
 2default:default2
342default:default2
12default:default2t
^/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/LLC_top.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Switch2default:default2
 2default:default2
352default:default2
12default:default2e
O/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/Switch.v2default:default2
12default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
tx_data_ready2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2%
tx_fifo_choose_en2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2*
que_fifo_data_dout[15]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2*
que_fifo_data_dout[14]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2*
que_fifo_data_dout[13]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2*
que_fifo_data_dout[12]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2*
que_fifo_data_dout[11]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2*
que_fifo_data_dout[10]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
que_fifo_data_dout[9]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
que_fifo_data_dout[8]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
que_fifo_data_dout[7]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
que_fifo_data_dout[6]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
que_fifo_data_dout[5]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
que_fifo_data_dout[4]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
que_fifo_data_dout[3]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
que_fifo_data_dout[2]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
que_fifo_data_dout[1]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
que_fifo_data_dout[0]2default:default2!
tx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2$
mac_length_ju[7]2default:default2!
rx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2$
mac_length_ju[6]2default:default2!
rx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2$
mac_length_ju[5]2default:default2!
rx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2$
mac_length_ju[4]2default:default2!
rx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2$
mac_length_ju[3]2default:default2!
rx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2$
mac_length_ju[2]2default:default2!
rx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2$
mac_length_ju[1]2default:default2!
rx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2$
mac_length_ju[0]2default:default2!
rx_ctl_center2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2/
mac_rx_fifo_almost_empty[7]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2/
mac_rx_fifo_almost_empty[6]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2/
mac_rx_fifo_almost_empty[5]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2/
mac_rx_fifo_almost_empty[4]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2/
mac_rx_fifo_almost_empty[3]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2/
mac_rx_fifo_almost_empty[2]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2/
mac_rx_fifo_almost_empty[1]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2/
mac_rx_fifo_almost_empty[0]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_fifo_underflow[7]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_fifo_underflow[6]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_fifo_underflow[5]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_fifo_underflow[4]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_fifo_underflow[3]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_fifo_underflow[2]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_fifo_underflow[1]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_fifo_underflow[0]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
mac_rx_que_fifo_dout[143]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
mac_rx_que_fifo_dout[142]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
mac_rx_que_fifo_dout[125]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
mac_rx_que_fifo_dout[124]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
mac_rx_que_fifo_dout[107]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
mac_rx_que_fifo_dout[106]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_que_fifo_dout[89]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_que_fifo_dout[88]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_que_fifo_dout[71]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_que_fifo_dout[70]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_que_fifo_dout[53]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_que_fifo_dout[52]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_que_fifo_dout[35]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_que_fifo_dout[34]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_que_fifo_dout[17]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
mac_rx_que_fifo_dout[16]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys23
mac_rx_que_fifo_almost_empty[7]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys23
mac_rx_que_fifo_almost_empty[6]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys23
mac_rx_que_fifo_almost_empty[5]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys23
mac_rx_que_fifo_almost_empty[4]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys23
mac_rx_que_fifo_almost_empty[3]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys23
mac_rx_que_fifo_almost_empty[2]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys23
mac_rx_que_fifo_almost_empty[1]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys23
mac_rx_que_fifo_almost_empty[0]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys20
mac_rx_que_fifo_underflow[7]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys20
mac_rx_que_fifo_underflow[6]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys20
mac_rx_que_fifo_underflow[5]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys20
mac_rx_que_fifo_underflow[4]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys20
mac_rx_que_fifo_underflow[3]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys20
mac_rx_que_fifo_underflow[2]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys20
mac_rx_que_fifo_underflow[1]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys20
mac_rx_que_fifo_underflow[0]2default:default2

arbiter_rx2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
mac_tx_fifo_wr_clk[7]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
mac_tx_fifo_wr_clk[6]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
mac_tx_fifo_wr_clk[5]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
mac_tx_fifo_wr_clk[4]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
mac_tx_fifo_wr_clk[3]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
mac_tx_fifo_wr_clk[2]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
mac_tx_fifo_wr_clk[1]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
mac_tx_fifo_wr_clk[0]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[511]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[510]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[509]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[508]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[507]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[506]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[505]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[504]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[503]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[502]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[501]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[500]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[499]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[498]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[497]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[496]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[495]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
mac_tx_fifo_din[494]2default:default2
arbiter2default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2724.094 ; gain = 0.000 ; free physical = 375 ; free virtual = 13690
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2724.094 ; gain = 0.000 ; free physical = 1272 ; free virtual = 14605
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2724.094 ; gain = 0.000 ; free physical = 1272 ; free virtual = 14605
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.082default:default2
00:00:00.082default:default2
2724.0942default:default2
0.0002default:default2
12662default:default2
146002default:defaultZ17-722h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
802default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mem_64x192/mem_64x192/mem_64x192_in_context.xdc2default:default2?
)LLC_top_inst/cache_inst/mem_64x76800_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mem_64x192/mem_64x192/mem_64x192_in_context.xdc2default:default2?
)LLC_top_inst/cache_inst/mem_64x76800_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[0].fifo_24x32_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[0].fifo_24x32_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[1].fifo_24x32_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[1].fifo_24x32_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[2].fifo_24x32_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[2].fifo_24x32_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[3].fifo_24x32_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[3].fifo_24x32_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[4].fifo_24x32_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[4].fifo_24x32_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[5].fifo_24x32_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[5].fifo_24x32_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[6].fifo_24x32_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[6].fifo_24x32_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[7].fifo_24x32_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
x/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32/fifo_24x32_in_context.xdc2default:default2J
4LLC_top_inst/queue_inst/queue_bus[7].fifo_24x32_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/blk_mem_64x1000/blk_mem_64x1000/blk_mem_64x1000_in_context.xdc2default:default2C
-LLC_top_inst/mac_addr_inst/your_instance_name	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/blk_mem_64x1000/blk_mem_64x1000/blk_mem_64x1000_in_context.xdc2default:default2C
-LLC_top_inst/mac_addr_inst/your_instance_name	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[0].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[0].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[1].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-848h px? 
?
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
sys_clk2default:default2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2
12default:default8@Z18-619h px?
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[1].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[2].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-848h px? 
?
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
sys_clk2default:default2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2
12default:default8@Z18-619h px?
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[2].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[3].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-848h px? 
?
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
sys_clk2default:default2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2
12default:default8@Z18-619h px?
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[3].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[4].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-848h px? 
?
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
sys_clk2default:default2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2
12default:default8@Z18-619h px?
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[4].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[5].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-848h px? 
?
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
sys_clk2default:default2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2
12default:default8@Z18-619h px?
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[5].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[6].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-848h px? 
?
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
sys_clk2default:default2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2
12default:default8@Z18-619h px?
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[6].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[7].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-848h px? 
?
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
sys_clk2default:default2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2
12default:default8@Z18-619h px?
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
o/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac/pll_mac_in_context.xdc2default:default2I
3mac_bus[7].MAC_top_inst/clock_ctl_inst/pll_mac_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[0].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[0].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[0].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[0].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[1].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[1].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[1].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[1].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[2].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[2].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[2].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[2].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[3].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[3].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[3].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[3].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[4].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[4].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[4].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[4].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[5].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[5].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[5].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[5].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[6].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[6].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[6].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[6].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[7].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[7].MAC_top_inst/rx_fifo_top_inst/mac_rx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[7].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_in_context.xdc2default:default2Y
Cmac_bus[7].MAC_top_inst/tx_fifo_top_inst/mac_tx_ctl_fifo_18x16_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[0].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[0].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[1].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[1].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[2].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[2].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[3].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[3].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[4].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[4].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[5].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[5].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[6].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[6].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[7].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_rx_fifo/mac_rx_fifo/mac_rx_fifo_in_context.xdc2default:default2]
Gmac_bus[7].MAC_top_inst/rx_fifo_top_inst/mac_rx_fifo_8x4096_64x512_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[0].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[0].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[1].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[1].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[2].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[2].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[3].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[3].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[4].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[4].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[5].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[5].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[6].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[6].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[7].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
{/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_tx_fifo/mac_tx_fifo/mac_tx_fifo_in_context.xdc2default:default2]
Gmac_bus[7].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/blk_mem_18x400/blk_mem_18x400/blk_mem_18x400_in_context.xdc2default:default2J
4LLC_top_inst/cache_inst/MMU_inst/blk_mem_18x400_inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/blk_mem_18x400/blk_mem_18x400/blk_mem_18x400_in_context.xdc2default:default2J
4LLC_top_inst/cache_inst/MMU_inst/blk_mem_18x400_inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2j
T/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/constrs_1/new/test1.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2j
T/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/constrs_1/new/test1.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2787.8832default:default2
0.0002default:default2
10602default:default2
144042default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.072default:default2
00:00:00.032default:default2
2787.8832default:default2
0.0002default:default2
10592default:default2
144032default:defaultZ17-722h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2=
)LLC_top_inst/cache_inst/mem_64x76800_inst2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2H
4LLC_top_inst/cache_inst/MMU_inst/blk_mem_18x400_inst2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2A
-LLC_top_inst/mac_addr_inst/your_instance_name2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2[
Gmac_bus[0].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst2default:default2
rd_clk2default:default2
8.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2[
Gmac_bus[1].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst2default:default2
rd_clk2default:default2
8.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2[
Gmac_bus[2].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst2default:default2
rd_clk2default:default2
8.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2[
Gmac_bus[3].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst2default:default2
rd_clk2default:default2
8.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2[
Gmac_bus[4].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst2default:default2
rd_clk2default:default2
8.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2[
Gmac_bus[5].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst2default:default2
rd_clk2default:default2
8.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2[
Gmac_bus[6].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst2default:default2
rd_clk2default:default2
8.0002default:defaultZ38-316h px? 
?
?Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002default:default2[
Gmac_bus[7].MAC_top_inst/tx_fifo_top_inst/mac_tx_fifo_64x512_8x4096_inst2default:default2
rd_clk2default:default2
8.0002default:defaultZ38-316h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1222 ; free virtual = 14570
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a200tfbv484-2
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1222 ; free virtual = 14570
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1217 ; free virtual = 14564
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
MDIO2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
cur_state_reg2default:default2

MAC_rx_ctl2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
cur_state_reg2default:default2

MAC_tx_ctl2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
cur_state_reg2default:default2

arbiter_rx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
cur_state_reg2default:default2
mac_addr2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2%
old_cur_state_reg2default:default2
mac_addr2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2(
search_cur_state_reg2default:default2
MMU2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2$
rx_cur_state_reg2default:default2!
rx_ctl_center2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2$
tx_cur_state_reg2default:default2!
tx_ctl_center2default:defaultZ8-802h px? 
?
!inferring latch for variable '%s'327*oasys2
mac_clk_reg2default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
232default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                         00000001 |                         00000001
2default:defaulth p
x
? 
?
%s
*synth2s
_                     PRE |                         00000010 |                         00000010
2default:defaulth p
x
? 
?
%s
*synth2s
_                   START |                         00000100 |                         00000100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 OP_CODE |                         00001000 |                         00001000
2default:defaulth p
x
? 
?
%s
*synth2s
_                PHY_ADDR |                         00010000 |                         00010000
2default:defaulth p
x
? 
?
%s
*synth2s
_                REG_ADDR |                         00100000 |                         00100000
2default:defaulth p
x
? 
?
%s
*synth2s
_                      TA |                         01000000 |                         01000000
2default:defaulth p
x
? 
?
%s
*synth2s
_                REG_DATA |                         10000000 |                         10000000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
	state_reg2default:default2
MDIO2default:defaultZ8-3898h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_DROP |                         00000001 |                         00000001
2default:defaulth p
x
? 
?
%s
*synth2s
_                  RX_IFG |                         00000010 |                         00000010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_IDLE |                         00000100 |                         00000100
2default:defaulth p
x
? 
?
%s
*synth2s
_                  RX_PRE |                         00001000 |                         00001000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  RX_SFD |                         00010000 |                         00010000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_DATA |                         00100000 |                         00100000
2default:defaulth p
x
? 
?
%s
*synth2s
_               RX_CRCCHK |                         01000000 |                         01000000
2default:defaulth p
x
? 
?
%s
*synth2s
_           RX_FFFULLDROP |                         10000000 |                         10000000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2!
cur_state_reg2default:default2

MAC_rx_ctl2default:defaultZ8-3898h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                TX_DEFER |                  000000000000001 |                  000000000000001
2default:defaulth p
x
? 
?
%s
*synth2s
_                  TX_IFG |                  000000000000010 |                  000000000000010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_IDLE |                  000000000000100 |                  000000000000100
2default:defaulth p
x
? 
?
%s
*synth2s
_                  TX_PRE |                  000000000001000 |                  000000000001000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  TX_SFD |                  000000000010000 |                  000000000010000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_DATA |                  000000000100000 |                  000000000100000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2!
cur_state_reg2default:default2

MAC_tx_ctl2default:defaultZ8-3898h px? 
?
!inferring latch for variable '%s'327*oasys2"
mac_length_reg2default:default2w
a/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/MAC_tx_ctl.v2default:default2
2422default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
mac_clk_reg2default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
mac_clk_reg2default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
mac_clk_reg2default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
mac_clk_reg2default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
mac_clk_reg2default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
mac_clk_reg2default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
mac_clk_reg2default:default2v
`/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/MAC_layer/clock_ctl.v2default:default2
232default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_IDLE |                            00001 |                            00001
2default:defaulth p
x
? 
?
%s
*synth2s
_               RX_CHOOSE |                            00010 |                            00010
2default:defaulth p
x
? 
?
%s
*synth2s
_             RX_QUE_DATA |                            00100 |                            00100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_DATA |                            01000 |                            01000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  RX_ERR |                            10000 |                            10000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2!
cur_state_reg2default:default2

arbiter_rx2default:defaultZ8-3898h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                            00001 |                            00001
2default:defaulth p
x
? 
?
%s
*synth2s
_                    HASH |                            00010 |                            00010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  SEARCH |                            00100 |                            00100
2default:defaulth p
x
? 
?
%s
*synth2s
_                FLOODING |                            10000 |                            10000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   WRITE |                            01000 |                            01000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2!
cur_state_reg2default:default2
mac_addr2default:defaultZ8-3898h px? 
?
!inferring latch for variable '%s'327*oasys2#
D_mac_table_reg2default:default2u
_/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/mac_addr.v2default:default2
1602default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
S_mac_table_reg2default:default2u
_/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/mac_addr.v2default:default2
1992default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                OLD_IDLE |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                  OLDING |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2%
old_cur_state_reg2default:default2
mac_addr2default:defaultZ8-3898h px? 
?
!inferring latch for variable '%s'327*oasys2&
S_mac_table_we_reg2default:default2u
_/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/mac_addr.v2default:default2
2012default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2'
S_mac_table_din_reg2default:default2u
_/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/mac_addr.v2default:default2
2002default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
next_cnt_reg2default:default2p
Z/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/MMU.v2default:default2
1572default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                  SEARCH |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2(
search_cur_state_reg2default:default2
MMU2default:defaultZ8-3898h px? 
?
!inferring latch for variable '%s'327*oasys2$
next_cnt_din_reg2default:default2p
Z/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/MMU.v2default:default2
1752default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
tx_rd_din_reg2default:default2p
Z/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/MMU.v2default:default2
2562default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_IDLE |                             0001 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_DATA |                             0010 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                   RX_OK |                             0100 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_             RX_FLOODING |                             1000 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2$
rx_cur_state_reg2default:default2!
rx_ctl_center2default:defaultZ8-3898h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_IDLE |                          0000001 |                          0000001
2default:defaulth p
x
? 
?
%s
*synth2s
_           TX_RDQUE_DATA |                          0000010 |                          0000010
2default:defaulth p
x
? 
?
%s
*synth2s
_      TX_RDMACTABLE_DATA |                          0000100 |                          0000100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_DATA |                          0001000 |                          0001000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   TX_OK |                          0100000 |                          0100000
2default:defaulth p
x
? 
?
%s
*synth2s
_                TX_EMPTY |                          0010000 |                          0010000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2$
tx_cur_state_reg2default:default2!
tx_ctl_center2default:defaultZ8-3898h px? 
?
!inferring latch for variable '%s'327*oasys2'
que_fifo_din_reg[0]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_wr_en_reg[0]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
772default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_rd_en_reg[0]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2'
que_fifo_din_reg[1]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_wr_en_reg[1]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
772default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_rd_en_reg[1]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2'
que_fifo_din_reg[2]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_wr_en_reg[2]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
772default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_rd_en_reg[2]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2'
que_fifo_din_reg[3]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_wr_en_reg[3]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
772default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_rd_en_reg[3]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2'
que_fifo_din_reg[4]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_wr_en_reg[4]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
772default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_rd_en_reg[4]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2'
que_fifo_din_reg[5]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_wr_en_reg[5]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
772default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_rd_en_reg[5]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2'
que_fifo_din_reg[6]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_wr_en_reg[6]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
772default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_rd_en_reg[6]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1232default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2'
que_fifo_din_reg[7]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_wr_en_reg[7]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
772default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2)
que_fifo_rd_en_reg[7]2default:default2r
\/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sources_1/new/LLC_layer/queue.v2default:default2
1232default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1217 ; free virtual = 14568
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 17    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 18    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 21    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit       Adders := 8     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 112   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit         XORs := 98    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit         XORs := 26    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit         XORs := 64    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit         XORs := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit         XORs := 24    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  12 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  21 Input      1 Bit         XORs := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  26 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  22 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  25 Input      1 Bit         XORs := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  27 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               48 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               25 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 59    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 20    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 22    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 112   
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   48 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   48 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   20 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 34    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input   16 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   16 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 24    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input   11 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    8 Bit        Muxes := 48    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 90    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 40    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 99    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    6 Bit        Muxes := 40    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    6 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 142   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    5 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    5 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    5 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 150   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    4 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 117   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    3 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 157   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    2 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 244   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 58    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 40    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  21 Input    1 Bit        Muxes := 32    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 24    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 16    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2m
YPart Resources:
DSPs: 740 (col length:100)
BRAMs: 730 (col length: RAMB18 100 RAMB36 50)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[62]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[61]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[60]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[59]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[58]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[57]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[56]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[55]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[54]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[53]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[52]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[51]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[50]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[49]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[48]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[47]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[46]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[45]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[44]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[43]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[42]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[41]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[40]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[39]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[38]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[37]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[36]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[35]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[34]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[33]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[32]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[31]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[30]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[29]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[28]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[27]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[26]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[25]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[24]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[23]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[22]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[21]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[20]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[19]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[18]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[17]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[16]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[15]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[14]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[13]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[12]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[11]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/D_mac_table_reg[10]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 mac_addr_inst/D_mac_table_reg[9]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 mac_addr_inst/D_mac_table_reg[8]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 mac_addr_inst/D_mac_table_reg[7]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 mac_addr_inst/D_mac_table_reg[6]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 mac_addr_inst/D_mac_table_reg[5]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 mac_addr_inst/D_mac_table_reg[4]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 mac_addr_inst/D_mac_table_reg[3]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 mac_addr_inst/D_mac_table_reg[2]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 mac_addr_inst/D_mac_table_reg[1]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 mac_addr_inst/D_mac_table_reg[0]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/S_mac_table_reg[62]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!mac_addr_inst/S_mac_table_reg[61]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"queue_inst/que_fifo_din_reg[0][24]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"queue_inst/que_fifo_din_reg[1][24]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"queue_inst/que_fifo_din_reg[2][24]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"queue_inst/que_fifo_din_reg[3][24]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"queue_inst/que_fifo_din_reg[4][24]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"queue_inst/que_fifo_din_reg[5][24]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"queue_inst/que_fifo_din_reg[6][24]2default:default2
LLC_top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"queue_inst/que_fifo_din_reg[7][24]2default:default2
LLC_top2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1217 ; free virtual = 14584
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
redefining clock '%s'565*oasys2
sys_clk2default:defaultZ8-565h px? 
R
redefining clock '%s'565*oasys2
sys_clk2default:defaultZ8-565h px? 
R
redefining clock '%s'565*oasys2
sys_clk2default:defaultZ8-565h px? 
R
redefining clock '%s'565*oasys2
sys_clk2default:defaultZ8-565h px? 
R
redefining clock '%s'565*oasys2
sys_clk2default:defaultZ8-565h px? 
R
redefining clock '%s'565*oasys2
sys_clk2default:defaultZ8-565h px? 
R
redefining clock '%s'565*oasys2
sys_clk2default:defaultZ8-565h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1088 ; free virtual = 14459
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1100 ; free virtual = 14471
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/mac_addr_inst/S_mac_table_din_reg[61]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2I
5LLC_top_inst/cache_inst/MMU_inst/next_cnt_din_reg[19]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2I
5LLC_top_inst/cache_inst/MMU_inst/next_cnt_din_reg[18]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-LLC_top_inst/queue_inst/que_fifo_rd_en_reg[0]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-LLC_top_inst/queue_inst/que_fifo_rd_en_reg[1]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-LLC_top_inst/queue_inst/que_fifo_rd_en_reg[2]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-LLC_top_inst/queue_inst/que_fifo_rd_en_reg[3]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-LLC_top_inst/queue_inst/que_fifo_rd_en_reg[4]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-LLC_top_inst/queue_inst/que_fifo_rd_en_reg[5]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-LLC_top_inst/queue_inst/que_fifo_rd_en_reg[6]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-LLC_top_inst/queue_inst/que_fifo_rd_en_reg[7]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[19]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[18]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[17]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[16]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[15]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[14]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[13]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[12]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[11]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[10]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2E
1LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[9]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2E
1LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[8]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2E
1LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[7]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2E
1LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[6]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2E
1LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[5]2default:default2
Switch2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2E
1LLC_top_inst/cache_inst/MMU_inst/tx_rd_din_reg[4]2default:default2
Switch2default:defaultZ8-3332h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:27 ; elapsed = 00:00:29 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1097 ; free virtual = 14468
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:30 ; elapsed = 00:00:32 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1107 ; free virtual = 14479
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:30 ; elapsed = 00:00:32 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1107 ; free virtual = 14479
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1106 ; free virtual = 14478
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1106 ; free virtual = 14478
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1106 ; free virtual = 14478
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1106 ; free virtual = 14478
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
T
%s
*synth2<
(+------+-------------------+----------+
2default:defaulth p
x
? 
T
%s
*synth2<
(|      |BlackBox name      |Instances |
2default:defaulth p
x
? 
T
%s
*synth2<
(+------+-------------------+----------+
2default:defaulth p
x
? 
T
%s
*synth2<
(|1     |mem_64x192         |         1|
2default:defaulth p
x
? 
T
%s
*synth2<
(|2     |blk_mem_18x400     |         1|
2default:defaulth p
x
? 
T
%s
*synth2<
(|3     |blk_mem_64x1000    |         1|
2default:defaulth p
x
? 
T
%s
*synth2<
(|4     |fifo_24x32         |         8|
2default:defaulth p
x
? 
T
%s
*synth2<
(|5     |pll_mac            |         8|
2default:defaulth p
x
? 
T
%s
*synth2<
(|6     |mac_rx_fifo        |         8|
2default:defaulth p
x
? 
T
%s
*synth2<
(|7     |mac_ctl_fifo_18x16 |        16|
2default:defaulth p
x
? 
T
%s
*synth2<
(|8     |mac_tx_fifo        |         8|
2default:defaulth p
x
? 
T
%s
*synth2<
(+------+-------------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
P
%s*synth28
$+------+-------------------+------+
2default:defaulth px? 
P
%s*synth28
$|      |Cell               |Count |
2default:defaulth px? 
P
%s*synth28
$+------+-------------------+------+
2default:defaulth px? 
P
%s*synth28
$|1     |blk_mem_18x400     |     1|
2default:defaulth px? 
P
%s*synth28
$|2     |blk_mem_64x1000    |     1|
2default:defaulth px? 
P
%s*synth28
$|3     |fifo_24x32         |     8|
2default:defaulth px? 
P
%s*synth28
$|11    |mac_ctl_fifo_18x16 |    16|
2default:defaulth px? 
P
%s*synth28
$|27    |mac_rx_fifo        |     8|
2default:defaulth px? 
P
%s*synth28
$|35    |mac_tx_fifo        |     8|
2default:defaulth px? 
P
%s*synth28
$|43    |mem_64x192         |     1|
2default:defaulth px? 
P
%s*synth28
$|44    |pll_mac            |     8|
2default:defaulth px? 
P
%s*synth28
$|52    |BUFG               |    12|
2default:defaulth px? 
P
%s*synth28
$|53    |CARRY4             |    68|
2default:defaulth px? 
P
%s*synth28
$|54    |IDDR               |    40|
2default:defaulth px? 
P
%s*synth28
$|55    |LUT1               |    35|
2default:defaulth px? 
P
%s*synth28
$|56    |LUT2               |   150|
2default:defaulth px? 
P
%s*synth28
$|57    |LUT3               |   238|
2default:defaulth px? 
P
%s*synth28
$|58    |LUT4               |   449|
2default:defaulth px? 
P
%s*synth28
$|59    |LUT5               |   497|
2default:defaulth px? 
P
%s*synth28
$|60    |LUT6               |   730|
2default:defaulth px? 
P
%s*synth28
$|61    |MUXF7              |    11|
2default:defaulth px? 
P
%s*synth28
$|62    |ODDR               |    40|
2default:defaulth px? 
P
%s*synth28
$|63    |FDCE               |  1233|
2default:defaulth px? 
P
%s*synth28
$|64    |FDPE               |    50|
2default:defaulth px? 
P
%s*synth28
$|65    |LD                 |   226|
2default:defaulth px? 
P
%s*synth28
$|66    |LDC                |   263|
2default:defaulth px? 
P
%s*synth28
$|67    |LDP                |     1|
2default:defaulth px? 
P
%s*synth28
$|68    |IBUF               |    49|
2default:defaulth px? 
P
%s*synth28
$|69    |IOBUF              |     8|
2default:defaulth px? 
P
%s*synth28
$|70    |OBUF               |    56|
2default:defaulth px? 
P
%s*synth28
$+------+-------------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1106 ; free virtual = 14478
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
u
%s
*synth2]
ISynthesis finished with 0 errors, 0 critical warnings and 1094 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 2787.883 ; gain = 0.000 ; free physical = 1159 ; free virtual = 14531
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 2787.883 ; gain = 63.789 ; free physical = 1159 ; free virtual = 14531
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.042default:default2
00:00:00.042default:default2
2787.8832default:default2
0.0002default:default2
12572default:default2
146342default:defaultZ17-722h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
6572default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
g
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
12default:defaultZ31-140h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2787.8832default:default2
0.0002default:default2
11892default:default2
145662default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 498 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 8 instances
  LD => LDCE: 226 instances
  LDC => LDCE: 263 instances
  LDP => LDPE: 1 instance 
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
e63764062default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1202default:default2
3552default:default2
22default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:392default:default2
00:00:362default:default2
2787.8832default:default2
64.0312default:default2
12732default:default2
146502default:defaultZ17-722h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2c
O/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/synth_1/Switch.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2v
bExecuting : report_utilization -file Switch_utilization_synth.rpt -pb Switch_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Jun 10 15:57:17 20222default:defaultZ17-206h px? 


End Record