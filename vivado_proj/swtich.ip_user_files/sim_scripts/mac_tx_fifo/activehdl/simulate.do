onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+mac_tx_fifo -L xpm -L fifo_generator_v13_2_6 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mac_tx_fifo xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {mac_tx_fifo.udo}

run -all

endsim

quit -force
