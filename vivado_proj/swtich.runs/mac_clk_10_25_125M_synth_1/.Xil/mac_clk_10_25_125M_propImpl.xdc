set_property SRC_FILE_INFO {cfile:/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M.xdc rfile:../../../swtich.gen/sources_1/ip/mac_clk_10_25_125M/mac_clk_10_25_125M.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
