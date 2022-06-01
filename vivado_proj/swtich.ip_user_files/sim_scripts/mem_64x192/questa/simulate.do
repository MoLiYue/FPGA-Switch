onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mem_64x192_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mem_64x192.udo}

run -all

quit -force
