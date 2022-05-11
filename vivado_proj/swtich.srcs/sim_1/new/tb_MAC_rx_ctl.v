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
//reg define
reg eth_rx_clk;		//PHY芯片接收数据时钟信号
reg eth_tx_clk;		//PHY芯片发送数据时钟信号
reg sys_rst_n;		//系统复位，低电平有效
reg eth_rxdv;		//PHY芯片输入数据有效信号
reg [7:0] data_mem [69:0];//data_mem是一个存储器，相当于一个ram
reg [7:0] cnt_data; //数据包字节计数器
reg start_flag;		//数据输入开始标志信号

//wrie define
wire rec_end;			//数据接收使能信号
wire [3:0] rec_en;		//接收数据
wire rec_data;			//数据包接收完成信号
wire rec_data_num;		//接受数据字节数
wire [7:0] eth_rx_data; //PHT芯片输入数据

//读取sim文件夹下面的data.txt文件，并把读出的数据定义为data_mem
initial $readmemh ("./data.txt", data_mem);

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
end

always #20 eth_rx_clk = ~eth_rx_clk;
always #20 eth_tx_clk = ~eth_tx_clk;

//eth_rxdv:PHY芯片输入数据有效信号
always @(negedge eth_rx_clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		eth_rxdv <= 1'b0;
	else if(cnt_data == 69)
		eth_rxdv <= 1'b0;
	else if(start_flag == 1'b1)
		eth_rxdv <= 1'b1;
	else
		eth_rxdv <= eth_rxdv;

//cnt_data:数据包字节计数器
always @(negedge eth_rx_clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		cnt_data <= 8'd0;
	else if(eth_rxdv == 1'b1)
		cnt_data <= cnt_data + 1'b1;
	else
		cnt_data <= cnt_data;

//eth_rx_data:PHY芯片输入数据
assign eth_rx_data = (eth_rxdv == 1'b1) ? data_mem[cnt_data] : 8'b0;

                                              
MAC_rx_ctl MAC_rx_ctl_inst( 
	.rx_clk		(eth_rx_clk),//GMII接收时钟				input wire
	.sys_rst_n	(sys_rst_n),	//系统复位时钟					input wire   
	.mac_rxd	(eth_rx_data),//GMII接收数据			input wire   [7:0]
	.rx_dv		(eth_rxdv),//GMII接收数据有效信号		input wire   
	.tx_busy	(1'b0),//半双工情况下发送忙信号				input wire   	
	.mode		(2'b10),//全双工或者半双工模式				input wire   [1:0]

    .rxd_data	()//output reg [7:0] 
);

endmodule
