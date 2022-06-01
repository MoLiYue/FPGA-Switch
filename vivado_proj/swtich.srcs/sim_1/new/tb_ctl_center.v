module tb_ctl_center();

reg sys_clk;
reg sys_rst_n;

reg [63:0] rx_fifo_dout ;
reg rx_fifo_rd_en;

reg [2:0] rx_mac_choose;
reg [15:0] mac_length   ;
reg [7:0] mac_length_ju;
reg mac_length_en;

wire [63:0] tx_fifo_din  ;
wire tx_fifo_wr_en;

reg [2:0] tx_mac_choose;
reg tx_en        ;

wire tx_data_ready;

initial begin
    sys_rst_n <= 1'b0;
    sys_clk = 1'b0;
    #30
    sys_rst_n <= 1'b0;

end

always #5 sys_clk = sys_clk;

ctl_center ctl_center_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk     (sys_clk),//input wire 
    .sys_rst_n   (sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

//--------------------------------------arbiter相关接口-----------------------------------------------------
    //rx_fifo相关接口
    .rx_fifo_dout       (rx_fifo_dout),//输出MAC fifo 存储数据    input wire [63:0] 
	.rx_fifo_rd_en      (rx_fifo_rd_en),//外部输入MAC fifo读使能  input wire 
	//rx相关-----------------------------------------
    .rx_mac_choose      (rx_mac_choose),        //接收端MAC选择信号   input wire [2:0] 
	.mac_length         (mac_length),           //接收mac地址长度 input wire [15:0] 
    .mac_length_ju      (mac_length_ju),          //8bit转64bit mac帧长度 input wire [7:0] 
    .mac_length_en      (mac_length_en),               //mac长度数据有效信号  input wire 
	//input wire ctl_center_rx_busy,	//控制中心正在接收数据
	//------------------------------------------------------------------------------------
	//tx_fifo相关接口
	.tx_fifo_din    (tx_fifo_din),//tx_fifo写数据     output reg [63:0] 
	.tx_fifo_wr_en  (tx_fifo_wr_en),//tx_fifo写使能   output reg 
	//tx相关-----------------------------------------
	.tx_mac_choose   (tx_mac_choose),			//发送端MAC选择信号 input wire [2:0] 
	.tx_en           (tx_en),//可以转发使能信号 input wire 

	.tx_data_ready      (tx_data_ready),//接收转发模块准备好数据信息  output reg 
//--------------------------------------------------------------------------------------------------------

	//-----------------------------------mac_addr相关信号----------------------------------
	.mac_addr_en		(mac_addr_en),//mac地址有效信号output reg 
	.D_mac			    (D_mac),//目的地址output reg [47:0] 
	.S_mac			    (S_mac),//源地址output reg [47:0] 
	.S_port_num	        (S_port_num),//源端口output wire [2:0] 
	//------------------------------------------------------------------------------------

//----------------------------------cache相关信号--------------------------------------
	//rx
	.rx_dout     (rx_dout),//接收数据output reg [63:0] 
	.rx_en       (rx_en),//接收使能信号output reg 
	//tx
	.tx_din          (tx_din),//发送数据input wire 
	.cur_logic_addr  (cur_logic_addr),//可用的地址input wire [8:0] 

//------------------------------------------------------------------------------------

//--------------------------------------queue相关------------------------------------------
	.tx_que_data_en         (tx_que_data_en),//数据使能信号input wire 
	.que_fifo_data_dout     (que_fifo_data_dout),//que输出数据input wire [23:0] 

	.fifo_choose_en	        (fifo_choose_en),//fifo选择使能信号output reg 
	.fifo_choose            (fifo_choose)//fifo选择信号output wire [2:0] 
	//output 

	
//----------------------------------------------------------------------------------------
);
endmodule