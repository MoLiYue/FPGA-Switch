onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mac_tx_fifo_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mac_tx_fifo.udo}

run -all

quit -force
