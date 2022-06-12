`timescale 1ns / 1ps
module tb_rx_ctl_center();

reg sys_clk;
reg sys_rst_n;



initial begin
    sys_clk = 1'b0;
    sys_rst_n <= 1'b0;
    #20
    sys_rst_n <= 1'b1;

end

always #5 sys_clk = ~sys_clk;

rx_ctl_center rx_ctl_center_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk		(sys_clk),//input wire 
    .sys_rst_n		(sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

    //--------------------------------------arbiter相关接口----------------------------
    //rx_fifo相关接口
    .rx_fifo_dout			(rx_fifo_dout),//输出MAC fifo 存储数据input wire [63:0] 
	.rx_fifo_rd_en			(rx_fifo_rd_en),//外部输入MAC fifo读使能input wire 
	
	//rx相关-----------------------------------------
    .rx_mac_choose		(rx_mac_choose),//接收端MAC选择信号input wire [2:0] 
	.mac_length			(mac_length),//接收mac地址长度input wire [15:0] 
    .mac_length_ju		(mac_length_ju),//8bit转64bit mac帧长度input wire [7:0] 
    .mac_length_en		(mac_length_en),//mac长度数据有效信号input wire 
	//input wire ctl_center_rx_busy,	//控制中心正在接收数据
	//------------------------------------------------------------------------------------

    //-----------------------------------mac_addr（MAC地址表）相关信号----------------------------------
	.flooding			(flooding),//泛洪信号input wire 

	.mac_addr_en		(mac_addr_en),//mac地址有效信号output reg 
	.D_mac				(D_mac),//目的地址output reg [47:0] 
	.S_mac				(S_mac),//源地址output reg [47:0] 
	.S_port_num			(S_port_num),//源端口output wire [2:0] 

	//------------------------------------------------------------------------------------

    //----------------------------------内存cache相关信号--------------------------------------
	.rx_addr		(rx_addr),//接收逻辑地址input wire [8:0] 

	.rx_data		(rx_data),//接收数据output reg [63:0] 
	.rx_en			(rx_en),//接收使能信号output reg 
    //----------------------------------------------------------------------------------------

    //--------------------------------------queue相关------------------------------------------
	.rx_queue_data			(rx_queue_data),//接收的数据信息output reg [24:0] 
	.rx_queue_en			(rx_queue_en),//接收数据信息有效信号，同时也为rx_fifo_choose有效信号output reg 
	.rx_fifo_choose			(rx_fifo_choose)//接收数据选择信号与rx_mac_choose相同output reg [2:0] 
);



endmodule