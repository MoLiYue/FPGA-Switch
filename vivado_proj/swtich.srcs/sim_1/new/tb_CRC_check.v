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

parameter DATA = 85;	//CRC文件长度

reg clk;
reg sys_rst_n;

reg [7:0] data_mem [DATA:0];//data_mem是一个存储器，相当于一个ram
reg crc_en;
reg crc_clr;
reg [7:0] cnt_data;
reg start_flag;		//数据输入开始标志信号

wire [31:0] crc_data;
wire [31:0] crc_next;
wire crc_err;
wire [7:0] data;
wire [31:0] crc_byte;
wire [31:0] crc_byte_normal;

initial $readmemh ("/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sim_1/new/CRC1.txt", data_mem);

initial begin
    clk = 1'b0;
    crc_en <= 1'b0;
	crc_clr <= 1'b0;
    sys_rst_n <= 1'b0;
    
    #20
    sys_rst_n <= 1'b1;
	#100
	start_flag <= 1'b1;
	#50
	start_flag <= 1'b0;

end

always #10 clk = ~clk;

//crc_en:CRC校验使能信号
always @(posedge clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		crc_en <= 1'b0;
	else if(cnt_data == DATA)
		crc_en <= 1'b0;
	else if(start_flag == 1'b1)
		crc_en <= 1'b1;
	else
		crc_en <= crc_en;

//cnt_data:数据包字节计数器
always @(posedge clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		cnt_data <= 8'd0;
	else if(crc_en == 1'b1)
		cnt_data <= cnt_data + 1'b1;
	else if(crc_en == 1'b0)
		cnt_data <= 0;
	else
		cnt_data <= cnt_data;

//data:CRC输入数据
assign data = (crc_en == 1'b1) ? data_mem[cnt_data] : 8'h00;


assign crc_byte = {~crc_next[24], ~crc_next[25],
				~crc_next[26],~crc_next[27],
				~crc_next[28], ~crc_next[29],
				~crc_next[30],~crc_next[31],
				~crc_data[16], ~crc_data[17],
				~crc_data[18],~crc_data[19],
				~crc_data[20], ~crc_data[21],
				~crc_data[22],~crc_data[23],
				~crc_data[8], ~crc_data[9],
				~crc_data[10],~crc_data[11],
				~crc_data[12], ~crc_data[13],
				~crc_data[14],~crc_data[15],
				~crc_data[0], ~crc_data[1],
				~crc_data[2],~crc_data[3],
				~crc_data[4], ~crc_data[5],
				~crc_data[6],~crc_data[7]};

assign crc_byte_normal = {			//这个不太对，因为开头都是ff
				crc_next[24], crc_next[25],
				crc_next[26], crc_next[27],
				crc_next[28], crc_next[29],
				crc_next[30], crc_next[31],
				crc_data[16], crc_data[17],
				crc_data[18], crc_data[19],
				crc_data[20], crc_data[21],
				crc_data[22], crc_data[23],
				crc_data[8],  crc_data[9],
				crc_data[10], crc_data[11],
				crc_data[12], crc_data[13],
				crc_data[14], crc_data[15],
				crc_data[0],  crc_data[1],
				crc_data[2],  crc_data[3],
				crc_data[4],  crc_data[5],
				crc_data[6],  crc_data[7]};

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
