-makelib xcelium_lib/xpm -sv \
  "/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../swtich.gen/sources_1/ip/mac_reg_12x32/sim/mac_reg_12x32.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

