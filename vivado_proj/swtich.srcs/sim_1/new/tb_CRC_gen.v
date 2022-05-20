`timescale 1ns / 1ps

module tb_CRC_gen();

parameter DATA = 85;	//CRC文件长度

reg clk;
reg sys_rst_n;

reg [7:0] data_mem [DATA:0];//data_mem是一个存储器，相当于一个ram
reg crc_en;
reg crc_clr;
reg [7:0] cnt_data;
reg start_flag;		//数据输入开始标志信号

reg CRC_rd;
reg [2:0] CRC_rd_cnt;

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

always @(*) begin
    if(crc_en == 1'b0)
	    CRC_rd = 1'd1;
    if(CRC_rd_cnt == 3'd4)
        CRC_rd = 1'd0;
end

always @(posedge clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0)
        CRC_rd_cnt <= 3'b0;
    else if(CRC_rd)
        CRC_rd_cnt <= CRC_rd_cnt + 1;
    else if(CRC_rd_cnt == 3'd4)
        CRC_rd_cnt <= 3'b0;
    else
        CRC_rd_cnt <= 3'b0;
end


//data:CRC输入数据
assign data = (crc_en == 1'b1) ? data_mem[cnt_data] : crc_data;


assign crc_byte_normal = ~crc_data;


CRC_gen CRC_gen_inst(
.Reset_n       (sys_rst_n),
.Clk         (clk),
.Init        (),
.Frame_data  (data),
.Data_en     (crc_en),
.CRC_rd      (CRC_rd),
.CRC_end     (),
.CRC_out     (crc_data)

);

endmodule