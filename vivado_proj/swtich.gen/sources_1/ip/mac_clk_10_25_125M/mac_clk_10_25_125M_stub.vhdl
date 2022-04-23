-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sat Apr 16 19:49:49 2022
-- Host        : mlyue running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M_stub.vhdl
-- Design      : mac_clk_10_25_125M
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mac_clk_10_25_125M is
  Port ( 
    clk_10M : out STD_LOGIC;
    clk_25M : out STD_LOGIC;
    clk_125M : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end mac_clk_10_25_125M;

architecture stub of mac_clk_10_25_125M is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_10M,clk_25M,clk_125M,resetn,locked,clk_in1";
begin
end;
