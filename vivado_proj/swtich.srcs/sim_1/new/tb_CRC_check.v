`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: 
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
module tb_CRC_check();

reg clk;
reg sys_rst_n;

reg [7:0] data;
reg crc_en;
reg crc_clr;
reg [7:0] cnt;

wire [31:0] crc_data;
wire [31:0] crc_next;
wire crc_err;


initial begin
    clk = 1'b0;
    crc_en = 1'b0;
	crc_clr = 1'b0;
    sys_rst_n <= 1'b0;
    
    #20
    sys_rst_n <= 1'b1;
	crc_en = 1'b1;
end

always #10 clk = ~clk;

always @(posedge clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		data <= 8'b0;
	else if(data == 8'b1111_1111)
		data <= 8'b0;
	else
		data <= data + 1;
end 


CRC_check CRC_check_inst(
	//--------------------------系统信号------------------------------------------
	.clk     (clk),		//接受时钟信号  input wire 
	.sys_rst_n  (sys_rst_n),	//系统复位信号  input wire 
	//---------------------------------------------------------------------------

	//
	.data       (data),	//输入待校验的8位数据   input wire [7:0] 
	.crc_en     (crc_en),		//crc使能，开始校验标志input wire 
	.crc_clr    (crc_clr),		//crc数据复位信号input wire 
	
	.crc_data   (crc_data),		//CRC校验数据       output reg [31:0] 
	.crc_next   (crc_next),	//CRC下次校验完成数据    output wire [31:0] 
	.crc_err    (crc_err)    //CRC校验错误信号            output reg 
	//
);
endmodule
