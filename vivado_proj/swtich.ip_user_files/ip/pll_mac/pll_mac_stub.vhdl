-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sun May 15 19:06:19 2022
-- Host        : mlyue running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/pll_mac/pll_mac_stub.vhdl
-- Design      : pll_mac
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pll_mac is
  Port ( 
    clk_125M : out STD_LOGIC;
    clk_25M : out STD_LOGIC;
    clk_10M : out STD_LOGIC;
    mac_clk : in STD_LOGIC
  );

end pll_mac;

architecture stub of pll_mac is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_125M,clk_25M,clk_10M,mac_clk";
begin
end;
