`timescale 1ns / 1ps

module tb_MAC_tx_ctl();

parameter DATA = 89;	//data文件长度

initial $readmemh ("/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sim_1/new/tx_data.txt", data_mem);

reg mac_clk;
reg sys_rst_n;

reg [7:0] data_mem [DATA:0];//data_mem是一个存储器，相当于一个ram
reg [7:0] cnt_data; //数据包字节计数器

initial begin
    mac_clk = 1'b0;
    sys_rst_n <= 1'b0;
    #20
    sys_rst_n <= 1'b1;
    mac_tx_que_fifo_dout <= DATA;
    mac_tx_que_fifo_underflow <= 0;
    mac_tx_que_fifo_almost_empty <= 0;
    mac_tx_que_fifo_empty <= 0;

    mac_tx_fifo_empty <= 0;
    mac_tx_fifo_almost_empty <= 0;
    mac_tx_fifo_underflow <= 0;
end

reg mac_tx_que_fifo_empty;
reg mac_tx_que_fifo_almost_empty	;
reg mac_tx_que_fifo_underflow		;
reg [17:0] mac_tx_que_fifo_dout;

wire [7:0] mac_tx_fifo_dout		;
reg mac_tx_fifo_empty			;
reg mac_tx_fifo_almost_empty	;
reg mac_tx_fifo_underflow		;

wire mac_tx_fifo_rd_en;
wire mac_tx_que_fifo_rd_en;

wire [7:0] gmii_txd	;
wire gmii_tx_clk;
wire gmii_tx_en ;

always #4 mac_clk = ~mac_clk;

//cnt_data:数据包字节计数器
always @(posedge mac_clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		cnt_data <= 8'd0;
	else if(mac_tx_fifo_rd_en == 1'b1)
		cnt_data <= cnt_data + 1'b1;
	else if(mac_tx_fifo_rd_en == 1'b0)
		cnt_data <= 0;
	else
		cnt_data <= cnt_data;

//接收队列缓存输出
always @(*) begin
    if(mac_tx_que_fifo_rd_en)
        mac_tx_que_fifo_dout = DATA + 1;
end

//mac_tx_fifo_dout:LLC发送数据
assign mac_tx_fifo_dout = (mac_tx_fifo_rd_en == 1'b1) ? data_mem[cnt_data] : 8'b0;

MAC_tx_ctl MAC_tx_ctl_inst(
    //------------------------------系统信号------------------------------------
    .mac_clk		(mac_clk),//发送时钟		input wire 
    .sys_rst_n		(sys_rst_n),//复位			input wire 
    //-------------------------------------------------------------------------

    //-----------------------------tx_fifo相关接口------------------------------
    .mac_tx_fifo_dout			(mac_tx_fifo_dout),//读数据			input wire [7:0] 	
    .mac_tx_fifo_empty			(mac_tx_fifo_empty),//已空				input wire 			
    .mac_tx_fifo_almost_empty	(mac_tx_fifo_almost_empty),//将空				input wire 			
    .mac_tx_fifo_underflow		(mac_tx_fifo_underflow),//下溢出，读溢出	input wire 			

	.mac_tx_fifo_rd_en			(mac_tx_fifo_rd_en),//读使能信号		output reg 			
    //-------------------------------------------------------------------------

	//------------------------rx_que_fifo相关信号-----------------------------
	.mac_tx_que_fifo_empty			(mac_tx_que_fifo_empty),//读空信号		input wire 
	.mac_tx_que_fifo_almost_empty	(mac_tx_que_fifo_almost_empty),//读将空信号	input wire 
	.mac_tx_que_fifo_underflow		(mac_tx_que_fifo_underflow),//读溢出信号	input wire 
	.mac_tx_que_fifo_dout	(mac_tx_que_fifo_dout),//输出数据	input wire [17:0] 

	.mac_tx_que_fifo_rd_en	(mac_tx_que_fifo_rd_en),//读使能	output wire 			
	//output wire mac_rx_que_fifo_clk,	//同mac_rx_que_fifo_clk
	//------------------------------------------------------------------------

	//-------------------------reg_ctl相关接口---------------------------------
    .speed_mode		(3'b100),//速度模式    100：1000Mbps 010：100Mbps 001：10Mbps	input wire [2:0] 
	.duplex_mode	(2'b10),//双工模式   10：full 01：half							input wire [1:0] 
	//-------------------------------------------------------------------------

    //---------------------------gmii接口----------------------------------------------
    .gmii_txd		(gmii_txd),    //GMII发送时钟				output wire 		 [7:0] 
    .gmii_tx_clk	(gmii_tx_clk),    //GMII发送数据有效信号		output wire 		
    .gmii_tx_en     (gmii_tx_en)     //GMII发送数据					output wire
    //---------------------------------------------------------------------------------

);
endmodule