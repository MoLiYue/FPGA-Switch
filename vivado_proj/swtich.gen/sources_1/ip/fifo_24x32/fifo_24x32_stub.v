// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri May 27 17:52:15 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/fifo_24x32/fifo_24x32_stub.v
// Design      : fifo_24x32
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbv484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *)
module fifo_24x32(clk, rst, din, wr_en, rd_en, dout, full, almost_full, 
  empty, almost_empty, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[23:0],wr_en,rd_en,dout[23:0],full,almost_full,empty,almost_empty,wr_rst_busy,rd_rst_busy" */;
  input clk;
  input rst;
  input [23:0]din;
  input wr_en;
  input rd_en;
  output [23:0]dout;
  output full;
  output almost_full;
  output empty;
  output almost_empty;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
