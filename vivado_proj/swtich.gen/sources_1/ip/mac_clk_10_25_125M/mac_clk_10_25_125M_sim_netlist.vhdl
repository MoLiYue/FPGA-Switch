-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sat Apr 16 19:49:49 2022
-- Host        : mlyue running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim
--               /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M_sim_netlist.vhdl
-- Design      : mac_clk_10_25_125M
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mac_clk_10_25_125M_clk_wiz is
  port (
    clk_10M : out STD_LOGIC;
    clk_25M : out STD_LOGIC;
    clk_125M : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end mac_clk_10_25_125M_clk_wiz;

architecture STRUCTURE of mac_clk_10_25_125M_clk_wiz is
  signal clk_10M_mac_clk_10_25_125M : STD_LOGIC;
  signal clk_125M_mac_clk_10_25_125M : STD_LOGIC;
  signal clk_25M_mac_clk_10_25_125M : STD_LOGIC;
  signal clk_in1_mac_clk_10_25_125M : STD_LOGIC;
  signal clkfbout_buf_mac_clk_10_25_125M : STD_LOGIC;
  signal clkfbout_mac_clk_10_25_125M : STD_LOGIC;
  signal reset_high : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout3_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of plle2_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_mac_clk_10_25_125M,
      O => clkfbout_buf_mac_clk_10_25_125M
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_mac_clk_10_25_125M
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_10M_mac_clk_10_25_125M,
      O => clk_10M
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_25M_mac_clk_10_25_125M,
      O => clk_25M
    );
clkout3_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_125M_mac_clk_10_25_125M,
      O => clk_125M
    );
plle2_adv_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 10,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 100,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 40,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 8,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => clkfbout_buf_mac_clk_10_25_125M,
      CLKFBOUT => clkfbout_mac_clk_10_25_125M,
      CLKIN1 => clk_in1_mac_clk_10_25_125M,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => clk_10M_mac_clk_10_25_125M,
      CLKOUT1 => clk_25M_mac_clk_10_25_125M,
      CLKOUT2 => clk_125M_mac_clk_10_25_125M,
      CLKOUT3 => NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT4 => NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_plle2_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_plle2_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked,
      PWRDWN => '0',
      RST => reset_high
    );
plle2_adv_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => reset_high
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mac_clk_10_25_125M is
  port (
    clk_10M : out STD_LOGIC;
    clk_25M : out STD_LOGIC;
    clk_125M : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mac_clk_10_25_125M : entity is true;
end mac_clk_10_25_125M;

architecture STRUCTURE of mac_clk_10_25_125M is
begin
inst: entity work.mac_clk_10_25_125M_clk_wiz
     port map (
      clk_10M => clk_10M,
      clk_125M => clk_125M,
      clk_25M => clk_25M,
      clk_in1 => clk_in1,
      locked => locked,
      resetn => resetn
    );
end STRUCTURE;
