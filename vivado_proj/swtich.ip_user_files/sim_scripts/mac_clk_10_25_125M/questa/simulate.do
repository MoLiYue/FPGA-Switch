onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mac_clk_10_25_125M_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mac_clk_10_25_125M.udo}

run -all

quit -force
