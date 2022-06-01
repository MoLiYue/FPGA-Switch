module tb_mac_addr();

reg sys_clk;
reg sys_rst_n;

reg [2:0] S_port_num;

reg mac_addr_en;
reg [47:0] D_mac		;
reg [47:0] S_mac		;

wire [2:0] D_port_num;
wire flooding;
wire D_port_num_en;

initial begin
    sys_clk = 1'b0;
    sys_rst_n <= 1'b0;
    #20
    sys_rst_n <= 1'b1;
    S_port_num <= 3'd1;
    #25
    mac_addr_en <= 1'b1;
    D_mac <= 48'h12_34_56_78_9a_bc;
    S_mac <= 48'h88_88_77_77_66_66;
    #10
    mac_addr_en <= 1'b0;
    #150
    S_port_num <= 3'd2;
    mac_addr_en <= 1'b1;
    S_mac <= 48'h12_34_56_78_9a_bc;
    D_mac <= 48'h88_88_77_77_66_66;
    #10
    mac_addr_en <= 1'b0;
end


always #5 sys_clk = ~sys_clk;

mac_addr
#(
    .OLD_TIME    (16'd100)//老化时间   16'd48000
)mac_addr_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk      (sys_clk),//input wire 
    .sys_rst_n    (sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

	//-----------------------------------mac_addr相关信号----------------------------------
	.mac_addr_en	(mac_addr_en),//mac地址有效信号  input wire 
	.D_mac		    (D_mac),//目的地址     input wire [47:0] 
	.S_mac		    (S_mac),//源地址       input wire [47:0] 
	//------------------------------------------------------------------------------------

    .S_port_num     (S_port_num),//源地址端口号   input wire [2:0] 

    .D_port_num     (D_port_num),//查询的目的地址端口号   output reg [2:0] 
    .D_port_num_en  (D_port_num_en),//查询的目的地址端口号使能    output reg 
    .flooding       (flooding)//泛洪信号  output reg 
);

endmodule