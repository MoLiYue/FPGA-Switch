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

parameter DATA = 89;	//CRC文件长度

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

initial $readmemh ("/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sim_1/new/CRC_check1.txt", data_mem);

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


assign crc_byte_normal = ~crc_data;


CRC_chk CRC_chk_inst(
.Reset_n     (sys_rst_n),
.Clk         (clk),
.CRC_data    (data),
.CRC_init    (),
.CRC_en      (crc_en),
//From CPU  ()
.CRC_chk_en  (1'b1),
.CRC_err     (crc_err)
);
endmodule
