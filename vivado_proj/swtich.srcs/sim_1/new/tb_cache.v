module tb_cache();

parameter DATA = 11;	//data文件长度

reg sys_clk;
reg sys_rst_n;

wire [63:0] rx_data;
reg rx_en;
reg tx_en;
reg [8:0] tx_addr;
reg [7:0] cnt_data;
reg [63:0] data_mem [DATA:0];//data_mem是一个存储器，相当于一个ram

reg start_flag;

wire rx_addr;
wire tx_data;

//读取sim文件夹下面的data.txt文件，并把读出的数据定义为data_mem
initial $readmemh ("/home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.srcs/sim_1/new/64data.txt", data_mem);

initial begin
    sys_clk = 1'b0;
    sys_rst_n <= 1'b0;
    tx_en <= 1'b0;
    tx_addr <= 9'd0;
    #20
    sys_rst_n <= 1'b1;
    #100
	start_flag <= 1'b1;
	#50
	start_flag <= 1'b0;
    #300
    start_flag <= 1'b1;
	#50
	start_flag <= 1'b0;
    #15
    tx_en <= 1'b1;
    tx_addr <= 9'd0;
    #120
    tx_en <= 1'b0;
    #100
    tx_en <= 1'b1;
    tx_addr <= 9'd1;
    #120
    tx_en <= 1'b0;
end

always #5 sys_clk = ~sys_clk;

//rx_en:PHY芯片输入数据有效信号
always @(posedge sys_clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		rx_en <= 1'b0;
	else if(cnt_data == DATA)
		rx_en <= 1'b0;
	else if(start_flag == 1'b1)
		rx_en <= 1'b1;
	else
		rx_en <= rx_en;

//cnt_data:数据包字节计数器
always @(posedge sys_clk or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)
		cnt_data <= 8'd0;
	else if(rx_en == 1'b1)
		cnt_data <= cnt_data + 1'b1;
	else if(rx_en == 1'b0)
		cnt_data <= 0;
	else
		cnt_data <= cnt_data;

//eth_rx_data:PHY芯片输入数据
assign rx_data = (rx_en == 1'b1) ? data_mem[cnt_data] : 64'b0;

cache cache_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk        (sys_clk),//input wire 
    .sys_rst_n      (sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

    //------------------------------------ctl_center接口------------------------------------
    //rx
	.rx_data     (rx_data),//接收数据   input wire [63:0] 
	.rx_en       (rx_en),//接收使能 input wire 
	.rx_addr     (rx_addr),//接收地址   output wire [8:0] 
    //tx
    .tx_en       (tx_en),//发送数据使能信号 input wire 
    .tx_addr     (tx_addr),//发送数据逻辑地址信息   input wire [8:0] 
	.tx_data     (tx_data)//发送数据 output wire 
);

endmodule