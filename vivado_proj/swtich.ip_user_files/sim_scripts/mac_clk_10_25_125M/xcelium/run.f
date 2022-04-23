-makelib xcelium_lib/xpm -sv \
  "/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/home/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M_clk_wiz.v" \
  "../../../../swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

