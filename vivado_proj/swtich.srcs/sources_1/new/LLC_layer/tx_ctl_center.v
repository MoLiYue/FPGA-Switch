module tx_ctl_center(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    //--------------------------------------arbiter相关接口----------------------------
    //tx_fifo相关接口
	output reg [63:0] tx_fifo_din,//tx_fifo写数据
	output reg tx_fifo_wr_en,//tx_fifo写使能

	//tx相关-----------------------------------------
	input wire [2:0] tx_mac_choose,//发送端MAC选择信号
	input wire tx_en,//可以转发使能信号

	output reg tx_data_ready,//接收转发模块准备好数据信息
    //------------------------------------------------------------------------------------

    //----------------------------------内存cache相关信号--------------------------------------
    input wire [63:0] tx_data,//发送数据

	output reg [8:0] tx_addr,//发送数据逻辑地址信息
	output reg cache_tx_en,//发送数据使能信号
    //------------------------------------------------------------------------------------

    //--------------------------------------queue相关------------------------------------------
    input wire [24:0] que_fifo_data_dout,//que输出数据
	input wire tx_que_data_empty,//que数据空信号

	output wire tx_que_data_en,//数据使能信号
	output reg tx_fifo_choose_en	,//fifo选择使能信号
	output reg [2:0] tx_fifo_choose//fifo选择信号
    //----------------------------------------------------------------------------------------
);

//------------------------------------tx--------------------------------------------
//----																			----
//----																			----
//----																			----
//----------------------------------------------------------------------------------
localparam TX_IDLE 				= 7'b000_0001;
localparam TX_RDQUE_DATA 		= 7'b000_0010;
localparam TX_RDMACTABLE_DATA 	= 7'b000_0100;
localparam TX_DATA 				= 7'b000_1000;
localparam TX_EMPTY 			= 7'b001_0000;
localparam TX_OK 				= 7'b010_0000;
localparam TX_CHECK 			= 7'b100_0000;

reg [6:0] tx_cur_state;
reg [6:0] tx_next_state;

reg [15:0] tx_mac_length;

always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		tx_fifo_choose <= 3'b0;
	else if(tx_en)
		tx_fifo_choose <= tx_mac_choose;
	else
		tx_fifo_choose <= tx_fifo_choose;
end

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
				tx_next_state = TX_RDMACTABLE_DATA;
			else if(tx_que_data_empty)
				tx_next_state = TX_EMPTY;
			else
				tx_next_state = tx_cur_state;
		
		TX_RDMACTABLE_DATA:
				tx_next_state = TX_DATA;
		TX_DATA:
			if(!cache_tx_en)
				tx_next_state = TX_OK;
			else
				tx_next_state = tx_cur_state;
		TX_OK:;
		TX_EMPTY:;
		TX_CHECK:;
		default:;
	endcase
end


//tx_fifo_din
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		tx_fifo_din <= 64'd0;
	else
		case(tx_next_state)
			TX_DATA:
				tx_fifo_din <= tx_data;
			default:
				tx_fifo_din <= 64'd0;
		endcase
end

//tx_fifo_wr_en
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		tx_fifo_wr_en <= 1'd0;
	else
		case(tx_next_state)
			TX_DATA:
				tx_fifo_wr_en <= cache_tx_en;
			default:
				tx_fifo_wr_en <= 1'd0;
		endcase
end

//读发送队列
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		tx_mac_length <= 16'd0;
	else
		case(tx_next_state)
			TX_RDQUE_DATA:
				if(tx_que_data_en)
					tx_mac_length <= que_fifo_data_dout[15:0];
				else
					tx_mac_length <= tx_mac_length;
			default:
				tx_mac_length <= tx_mac_length;
		endcase
end

//读内存cache_tx_en
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		cache_tx_en <= 1'd0;
	else
		case(tx_next_state)
			TX_DATA:
				cache_tx_en <= 1'b1;
			default:
				cache_tx_en <= 1'd0;
		endcase
end

//读内存tx_addr
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
        tx_addr <= 9'd0;
    else
        case(tx_next_state)
            TX_RDQUE_DATA:
                if(tx_que_data_en)
                    tx_addr <= que_fifo_data_dout[24:16];
                else
                    tx_addr <= tx_addr;
			TX_DATA:
                tx_addr <= tx_addr;
            default:
                tx_addr <= 9'd0;
        endcase
end
    
endmodule