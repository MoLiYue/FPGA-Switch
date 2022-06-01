module ctl_center(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

//--------------------------------------arbiter相关接口-----------------------------------------------------
    //rx_fifo相关接口
    input wire [63:0] rx_fifo_dout,//输出MAC fifo 存储数据
	input wire rx_fifo_rd_en,//外部输入MAC fifo读使能
	//rx相关-----------------------------------------
    input wire [2:0] rx_mac_choose,        //接收端MAC选择信号
	input wire [15:0] mac_length,           //接收mac地址长度
    input wire [7:0] mac_length_ju,          //8bit转64bit mac帧长度
    input wire mac_length_en,               //mac长度数据有效信号
	//input wire ctl_center_rx_busy,	//控制中心正在接收数据
	//------------------------------------------------------------------------------------
	//tx_fifo相关接口
	output reg [63:0] tx_fifo_din,//tx_fifo写数据
	output reg tx_fifo_wr_en,//tx_fifo写使能
	//tx相关-----------------------------------------
	input wire [2:0] tx_mac_choose,			//发送端MAC选择信号
	input wire tx_en,//可以转发使能信号

	output reg tx_data_ready,//接收转发模块准备好数据信息
//--------------------------------------------------------------------------------------------------------

	//-----------------------------------mac_addr相关信号----------------------------------
	output reg mac_addr_en			,//mac地址有效信号
	output reg [47:0] D_mac			,//目的地址
	output reg [47:0] S_mac			,//源地址
	output wire [2:0] S_port_num	,//源端口
	//------------------------------------------------------------------------------------

//----------------------------------cache相关信号--------------------------------------
	//rx
	output reg rx_dout,//接收数据
	output reg rx_en,//接收使能信号
	//tx
	input wire tx_din,//发送数据
	input wire [8:0] cur_logic_addr,//可用的地址

//------------------------------------------------------------------------------------

//--------------------------------------queue相关------------------------------------------
	input wire tx_que_data_en,//数据使能信号
	input wire [23:0] que_fifo_data_dout,//que输出数据

	output reg fifo_choose_en	,//
	output wire [2:0] fifo_choose
	//output 

	
//----------------------------------------------------------------------------------------
);

//---------------------------------------rx---------------------------------------------
//----																				----
//----																				----
//----																				----
//----																				----
//--------------------------------------------------------------------------------------
localparam RX_IDLE 	= 3'b001;
localparam RX_DATA 	= 3'b010;
localparam RX_OK 	= 3'b100;

reg [2:0] rx_cur_state;
reg [2:0] rx_next_state;

reg [7:0] data_cnt;//数据长度计数器
reg [15:0] mac8_length;	//8bit帧长度寄存器
reg [7:0] mac64_length;	//64bit帧长度寄存器

assign S_port_num = rx_mac_choose;

//64bit帧长度寄存器赋值
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		mac64_length <= 8'd0;
	else if(mac_length_en)
		mac64_length <= mac_length_ju;
	else
		mac64_length <= mac64_length;
end

//8bit帧长度寄存器赋值
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		mac8_length <= 16'd0;
	else if(mac_length_en)
		mac8_length <= mac_length;
	else
		mac8_length <= mac8_length;
end

//rx_state状态机
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
			if(rx_fifo_rd_en == 1)
				rx_next_state = RX_DATA;
			else
				rx_next_state = rx_cur_state;
		RX_DATA:
			if(rx_fifo_rd_en == 0)
				rx_next_state = RX_OK;
			else
				rx_next_state = rx_cur_state;
		RX_OK:
			rx_next_state = RX_IDLE;
		default: rx_next_state = RX_DATA;
	endcase
end

//mac_addr相关信号
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n) begin
		D_mac <= 48'd0;
		S_mac <= 48'd0;
		mac_addr_en <= 1'b0;
	end else
		case (rx_next_state)
			RX_DATA: 
				case(data_cnt)
					8'd1: begin
						D_mac <= rx_fifo_dout[63:16];
						S_mac[47:32] <= rx_fifo_dout[15:0];
					end
					8'd2: begin
						S_mac[31:0] <= rx_fifo_dout[63:32];
						mac_addr_en <= 1'b1;
					end
					default: ;
				endcase
			default: D_mac <= 48'd0;
		endcase
end

//数据长度计数器
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		data_cnt <= 8'd0;
	else
		case(rx_next_state)
			RX_DATA: 
				data_cnt <= data_cnt + 1;
			default:
				data_cnt <= 8'd0;
		endcase
end

//------------------------------------tx--------------------------------------------
//----																			----
//----																			----
//----																			----
//----------------------------------------------------------------------------------
localparam TX_IDLE 			= 5'b0_0001;
localparam TX_RDQUE_DATA 	= 5'b0_0001;
localparam TX_RDMEM_DATA 	= 5'b0_0001;
localparam TX_DATA 			= 5'b0_0010;
localparam TX_EMPTY 		= 5'b0_0100;
localparam TX_OK 			= 5'b0_1000;
localparam TX_CHECK 		= 5'b1_0000;

reg [4:0] tx_cur_state;
reg [4:0] tx_next_state;

assign fifo_choose = tx_mac_choose;

//tx_state状态机
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		tx_cur_state <= TX_IDLE;
	else
		tx_cur_state <= tx_next_state;
end
//tx_state状态转移
always @(*) begin
	tx_next_state = TX_IDLE;
	case(tx_cur_state)
		TX_IDLE:
			if(tx_en)
				tx_next_state = TX_RDQUE_DATA;
			else
				tx_next_state = tx_cur_state;
		TX_RDQUE_DATA:
			if(tx_que_data_en)
				tx_next_state = TX_RDMEM_DATA;
			else
				tx_next_state = tx_cur_state;
		TX_RDMEM_DATA:
			if(tx_mem_data_en)
				tx_next_state = TX_DATA;
			else
				tx_next_state = tx_cur_state;
		TX_DATA:;

		TX_EMPTY:;
		TX_OK:;
		TX_CHECK:;
		default:;
	endcase
end

endmodule