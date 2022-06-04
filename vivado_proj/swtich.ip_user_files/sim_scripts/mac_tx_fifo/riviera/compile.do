vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/fifo_generator_v13_2_6
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap fifo_generator_v13_2_6 riviera/fifo_generator_v13_2_6
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../swtich.gen/sources_1/ip/mac_tx_fifo/sim/mac_tx_fifo.v" \

vlog -work xil_defaultlib \
"glbl.v"
