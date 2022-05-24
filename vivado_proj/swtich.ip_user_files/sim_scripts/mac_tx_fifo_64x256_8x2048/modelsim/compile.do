vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/fifo_generator_v13_2_6
vlib modelsim_lib/msim/xil_defaultlib

vmap fifo_generator_v13_2_6 modelsim_lib/msim/fifo_generator_v13_2_6
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work fifo_generator_v13_2_6 -64 -incr -mfcu \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -64 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6 -64 -incr -mfcu \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../../swtich.gen/sources_1/ip/mac_tx_fifo_64x256_8x2048/sim/mac_tx_fifo_64x256_8x2048.v" \


vlog -work xil_defaultlib \
"glbl.v"

