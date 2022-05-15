onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib pll_mac_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {pll_mac.udo}

run -all

quit -force
