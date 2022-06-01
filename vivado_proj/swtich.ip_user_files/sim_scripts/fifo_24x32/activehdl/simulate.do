onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+fifo_24x32 -L xpm -L fifo_generator_v13_2_6 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_24x32 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {fifo_24x32.udo}

run -all

endsim

quit -force
