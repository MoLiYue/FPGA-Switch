#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue May 24 19:10:43 CST 2022
# SW Build 3367213 on Tue Oct 19 02:47:39 MDT 2021
#
# IP Build 3369179 on Thu Oct 21 08:25:16 MDT 2021
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim tb_arbiter_rx_behav -key {Behavioral:sim_1:Functional:tb_arbiter_rx} -tclbatch tb_arbiter_rx.tcl -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_MAC_rx_ctl_behav.wcfg -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_CRC_check_behav.wcfg -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_clock_ctl_behav.wcfg -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_CRC_gen_behav.wcfg -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_MDIO_behav.wcfg -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_MAC_tx_ctl_behav.wcfg -log simulate.log"
xsim tb_arbiter_rx_behav -key {Behavioral:sim_1:Functional:tb_arbiter_rx} -tclbatch tb_arbiter_rx.tcl -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_MAC_rx_ctl_behav.wcfg -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_CRC_check_behav.wcfg -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_clock_ctl_behav.wcfg -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_CRC_gen_behav.wcfg -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_MDIO_behav.wcfg -view /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/tb_MAC_tx_ctl_behav.wcfg -log simulate.log

