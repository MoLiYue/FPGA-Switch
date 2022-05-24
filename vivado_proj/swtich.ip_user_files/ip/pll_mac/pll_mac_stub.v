// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat May 21 17:23:33 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub -rename_top pll_mac -prefix
//               pll_mac_ pll_mac_stub.v
// Design      : pll_mac
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pll_mac(clk_125M, clk_25M, clk_10M, sys_clk)
/* synthesis syn_black_box black_box_pad_pin="clk_125M,clk_25M,clk_10M,sys_clk" */;
  output clk_125M;
  output clk_25M;
  output clk_10M;
  input sys_clk;
endmodule
