// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat May 21 10:50:17 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mac_rx_ctl_fifo_18x16_stub.v
// Design      : mac_rx_ctl_fifo_18x16
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  almost_full, empty, almost_empty, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[17:0],wr_en,rd_en,dout[17:0],full,almost_full,empty,almost_empty,wr_rst_busy,rd_rst_busy" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [17:0]din;
  input wr_en;
  input rd_en;
  output [17:0]dout;
  output full;
  output almost_full;
  output empty;
  output almost_empty;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
