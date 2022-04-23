vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M_clk_wiz.v" \
"../../../../swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M.v" \

vlog -work xil_defaultlib \
"glbl.v"

