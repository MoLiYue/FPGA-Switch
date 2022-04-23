vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu -sv "+incdir+../../../ipstatic" \
"/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../ipstatic" \
"../../../../swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M_clk_wiz.v" \
"../../../../swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M.v" \

vlog -work xil_defaultlib \
"glbl.v"
