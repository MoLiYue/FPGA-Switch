module ctl_center(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    //------------------------------------rx_fifo接口----------------------------------
    input wire [63:0] rx_fifo_dout,//输出MAC fifo 存储数据
	input wire rx_fifo_empty,//输出MAC fifo empty
	input wire rx_fifo_almost_empty,//输出MAC fifo almost_empty
	input wire rx_fifo_underflow,//输出MAC读溢出
	
	output reg rx_fifo_rd_en,//外部输入MAC fifo读使能
    output wire rx_fifo_rd_clk,//外部传入MAC fifo读时钟
	//---------------------------------------------------------------------------------

	//------------------------rx_que_fifo相关接口----------------------------------
	input wire [17:0] 	rx_que_fifo_dout			,//输出数据
	input wire 			rx_que_fifo_empty			,	//读空信号
	input wire 			rx_que_fifo_almost_empty	,		//读将空信号
	input wire 			rx_que_fifo_underflow		,	//读溢出信号

	output wire 		rx_que_fifo_rd_en			,//读使能
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//----------------------------------------------------------------------------------

	//------------------------tx_fifo相关接口--------------------------------------------
	output wire tx_fifo_wr_clk,//tx_fifo写时钟
	output wire [63:0] tx_fifo_din,//tx_fifo写数据
	output reg tx_fifo_wr_en,//tx_fifo写使能

	input wire tx_fifo_full, //tx_fifo满信号
	input wire tx_fifo_almost_full, //tx_fifo将满信号
	input wire tx_fifo_overflow, //tx_fifo 写溢出信号
	//-----------------------------------------------------------------------------------



    //
    input wire [2:0] rx_mac_choose,        //接收端MAC选择信号
	input wire [2:0] tx_mac_choose,			//发送端MAC选择信号

	input wire ctl_center_rx_busy,	//控制中心正在接收数据
);

localparam RX_IDLE 	= 3'b001;
localparam RX_DATA 	= 3'b010;
localparam RX_OK 	= 3'b100;

localparam TX_IDLE 	= 3'b001;
localparam TX_DATA 	= 3'b010;
localparam TX_OK 	= 3'b100;

//rx
reg [2:0] rx_cur_state;
reg [2:0] rx_next_state;

reg [47:0] D_mac;
reg [47:0] S_mac;

reg [7:0] length_cnt;	//64bit帧长度计数器

reg [7:0] mac_length;	//64bit帧长度寄存器

assign rx_fifo_rd_clk = sys_clk;

assign tx_fifo_wr_clk = sys_clk;

always @(*) begin
	mac_length = ;
end

//rx_state
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		rx_cur_state <= RX_IDLE;
	else
		rx_cur_state <= rx_next_state;
end
//rx_state状态转换
always @(*) begin
	rx_next_state = RX_IDLE;
	case (rx_cur_state)
		RX_IDLE: 
			if(mac_rx_fifo_rd_en == 1)
				rx_next_state = RX_DATA;
			else
				rx_next_state = rx_cur_state;
		RX_DATA:
			if(mac_rx_fifo_rd_en == 0)
				rx_next_state = RX_OK;
			else
				rx_next_state = rx_cur_state;
		RX_OK:
			rx_next_state = RX_IDLE;
		default: rx_next_state = RX_DATA;
	endcase
end

always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		D_mac <= 48'd0;
	else
		case (rx_next_state)
			RX_DATA: 
			default: 
		endcase
end

always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		length_cnt <= 8'd0;
	else
		case(rx_next_state)
			RX_DATA: 
				if(length_cnt == )
		endcase
end


endmodule