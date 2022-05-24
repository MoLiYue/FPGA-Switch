onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+mac_rx_fifo_8x2048_64x265 -L fifo_generator_v13_2_6 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mac_rx_fifo_8x2048_64x265 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {mac_rx_fifo_8x2048_64x265.udo}

run -all

endsim

quit -force
