-makelib xcelium_lib/xpm -sv \
  "/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../swtich.gen/sources_1/ip/pll_mac/pll_mac_clk_wiz.v" \
  "../../../../swtich.gen/sources_1/ip/pll_mac/pll_mac.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

