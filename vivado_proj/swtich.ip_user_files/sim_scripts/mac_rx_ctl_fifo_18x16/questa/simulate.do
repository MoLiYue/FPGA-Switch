onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mac_rx_ctl_fifo_18x16_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mac_rx_ctl_fifo_18x16.udo}

run -all

quit -force
