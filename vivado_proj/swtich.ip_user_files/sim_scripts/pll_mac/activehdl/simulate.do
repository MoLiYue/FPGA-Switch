onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+pll_mac -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.pll_mac xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {pll_mac.udo}

run -all

endsim

quit -force
