`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2022 11:34:52 AM
// Design Name: 
// Module Name: tb_MAC_rx_ctl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_MAC_rx_ctl();

parameter DATA = 97;	//data文件长度
//reg define
reg eth_rx_clk;		//PHY芯片接收数据时钟信号
reg eth_tx_clk;		//PHY芯片发送数据时钟信号
reg sys_rst_n;		//系统复位，低电平有效
reg eth_rxdv;		//PHY芯片输入数据有效信号
reg [7:0] data_mem [DATA:0];//data_mem是一个存储器，相当于一个ram
reg [7:0] cnt_data; //数据包字节计数器
reg start_flag;		//数据输入开始标志信号




//wrie define
wire rec_end;			//数据接收使能信号
wire [3:0] rec_en;		//接收数据
wire rec_data;			//数据包接收完成信号
wire rec_data_num;		//接受数据字节数
wire [7:0] eth_rx_data; //PHT芯片输入数据


wire [7:0] mac_rx_fifo_din;
wire mac_rx_fifo_wr_en;
wire mac_rx_fifo_clk;

//读取sim文件夹下面的data.txt文件，并把读出的数据定义为data_mem
initial $readmemh ("/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sim_1/new/data.txt", data_mem);

//时钟、复位信号
initial begin
	eth_rx_clk = 1'b1;
	eth_tx_clk = 1'b1;
	sys_rst_n <= 1'b0;
	start_flag <= 1'b0;
	#200
	sys_rst_n <= 1'b1;
	#100
	start_flag <= 1'b1;
	#50
	start_flag <= 1'b0;
	#2000
	start_flag <= 1'b1;
	#50
	start_flag <= 1'b0;
end

always #4 eth_rx_clk = ~eth_rx_clk;
always #4 eth_tx_clk = ~eth_tx_clk;

//eth_rxdv:PHY芯片输入数据有效信号
always @(posedge eth_rx_clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		eth_rxdv <= 1'b0;
	else if(cnt_data == DATA)
		eth_rxdv <= 1'b0;
	else if(start_flag == 1'b1)
		eth_rxdv <= 1'b1;
	else
		eth_rxdv <= eth_rxdv;

//cnt_data:数据包字节计数器
always @(posedge eth_rx_clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		cnt_data <= 8'd0;
	else if(eth_rxdv == 1'b1)
		cnt_data <= cnt_data + 1'b1;
	else if(eth_rxdv == 1'b0)
		cnt_data <= 0;
	else
		cnt_data <= cnt_data;

//eth_rx_data:PHY芯片输入数据
assign eth_rx_data = (eth_rxdv == 1'b1) ? data_mem[cnt_data] : 8'b0;

                                              
MAC_rx_ctl_top MAC_rx_ctl_top_inst( 
	//----------------------系统信号----------------------------------
	.sys_rst_n(sys_rst_n), //input wire 
	//---------------------------------------------------------------

	//------------------------gmii接口--------------------------------
	.gmii_rx_clk    (eth_rx_clk),//GMII接收时钟 input wire 
	.gmii_rx_dv     (eth_rxdv),//GMII接收数据有效信号input wire 
	.gmii_rxd       (eth_rx_data),//GMII接收数据 input wire [7:0] 
	//----------------------------------------------------------------
	
	//-------------------------其他------------------------------------
	.tx_busy        (1'b0),//半双工情况下发送忙信号input wire 
	.duplex_mode    (2'b10),//全双工：10 半双工：01input wire [1:0] 
	.speed_mode     (3'b100), //速度模式	100：1000Mbps 010：100Mbps 001：10Mbpsinput wire [2:0] 
	//----------------------------------------------------------------

	//---------------------rx_fifo相关接口------------------------------
	.mac_rx_fifo_full       (1'b0), 	//写满信号  input wire 
	.mac_rx_fifo_almost_full(1'b0), 	//写将满信号    input wire 
	.mac_rx_fifo_overflow   (1'b0), 	//写溢出信号    input wire 

	.mac_rx_fifo_wr_clk (mac_rx_fifo_clk),//写时钟 output wire 
    .mac_rx_fifo_din    (mac_rx_fifo_din),//输入数据87ui  output wire [7:0] 
	.mac_rx_fifo_wr_en  (mac_rx_fifo_wr_en)//写使能   output reg 
	//-----------------------------------------------------------------
);

endmodule
