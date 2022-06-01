#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/tools/Xilinx/Vivado/2021.2/ids_lite/ISE/bin/lin64:/home/tools/Xilinx/Vivado/2021.2/bin
else
  PATH=/home/tools/Xilinx/Vivado/2021.2/ids_lite/ISE/bin/lin64:/home/tools/Xilinx/Vivado/2021.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.runs/fifo_24x32_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log fifo_24x32.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source fifo_24x32.tcl
