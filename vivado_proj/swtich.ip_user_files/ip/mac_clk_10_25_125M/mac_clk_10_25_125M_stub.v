// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Apr 16 19:49:49 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M_stub.v
// Design      : mac_clk_10_25_125M
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mac_clk_10_25_125M(clk_10M, clk_25M, clk_125M, resetn, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_10M,clk_25M,clk_125M,resetn,locked,clk_in1" */;
  output clk_10M;
  output clk_25M;
  output clk_125M;
  input resetn;
  output locked;
  input clk_in1;
endmodule
