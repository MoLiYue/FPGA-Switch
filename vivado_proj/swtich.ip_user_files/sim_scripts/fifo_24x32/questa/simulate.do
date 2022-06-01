onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_24x32_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fifo_24x32.udo}

run -all

quit -force
