module rx_ctl_center(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    //--------------------------------------arbiter相关接口----------------------------
    //rx_fifo相关接口
    input wire [63:0] rx_fifo_dout		,//输出MAC fifo 存储数据
	input wire rx_fifo_rd_en			,//外部输入MAC fifo读使能
	
	//rx相关-----------------------------------------
    input wire [2:0] rx_mac_choose		,//接收端MAC选择信号
	input wire [15:0] mac_length		,//接收mac地址长度
    input wire [7:0] mac_length_ju		,//8bit转64bit mac帧长度
    input wire mac_length_en			,//mac长度数据有效信号
	//input wire ctl_center_rx_busy,	//控制中心正在接收数据
	//------------------------------------------------------------------------------------

    //-----------------------------------mac_addr（MAC地址表）相关信号----------------------------------
	input wire flooding,//泛洪信号

	output reg mac_addr_en			,//mac地址有效信号
	output reg [47:0] D_mac			,//目的地址
	output reg [47:0] S_mac			,//源地址
	output wire [2:0] S_port_num	,//源端口

	//------------------------------------------------------------------------------------

    //----------------------------------内存cache相关信号--------------------------------------
	input wire [8:0] rx_addr,//接收逻辑地址

	output reg [63:0] rx_data,//接收数据
	output reg rx_en,//接收使能信号
    //----------------------------------------------------------------------------------------

    //--------------------------------------queue相关------------------------------------------
	output reg [24:0] rx_queue_data,//接收的数据信息
	output reg rx_queue_en,//接收数据信息有效信号，同时也为rx_fifo_choose有效信号
	output reg [2:0] rx_fifo_choose//接收数据选择信号与rx_mac_choose相同
);

//---------------------------------------rx---------------------------------------------
//----																				----
//----																				----
//----																				----
//----																				----
//--------------------------------------------------------------------------------------
localparam RX_IDLE 	    = 4'b0001;
localparam RX_DATA 	    = 4'b0010;
localparam RX_OK 	    = 4'b0100;
localparam RX_FLOODING  = 4'b1000;

reg flooding_en;
reg [3:0] rx_cur_state;
reg [3:0] rx_next_state;

reg [3:0] flooding_cnt;
reg [7:0] data_cnt;//数据长度计数器
reg [15:0] mac8_length;	//8bit帧长度寄存器
reg [7:0] mac64_length;	//64bit帧长度寄存器
reg [24:0] queue_data;//queue转发队列数据结构

assign S_port_num = rx_mac_choose;

//rx_en接收使能信号
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		rx_en <= 1'b0;
	else
		rx_en <= rx_fifo_rd_en;
end

//64bit帧长度寄存器赋值，对数据进行缓存
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		mac64_length <= 8'd0;
	else if(mac_length_en)
		mac64_length <= mac_length_ju;
	else
		mac64_length <= mac64_length;
end

//8bit帧长度寄存器赋值，对数据进行缓存
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
            if(flooding_en)
                rx_next_state = RX_FLOODING;
            else
			    rx_next_state = RX_IDLE;
        RX_FLOODING:
            if(flooding_cnt == 4'd8)
                rx_next_state = RX_IDLE;
            else
                rx_next_state = rx_cur_state;
		default: rx_next_state = RX_IDLE;
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

//rx_data缓存数据
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		rx_data <= 64'd0;
	else
		case(rx_next_state)
			RX_DATA: 
				rx_data <= rx_fifo_dout;
			default:
				rx_data <= 64'd0;
		endcase
end

//rx_queue_data 对rx_addr接收的逻辑地址进行存储
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		rx_queue_data <= 25'd0;
	else
		case(rx_next_state)
			RX_DATA: 
				rx_queue_data <= {rx_addr, mac8_length};
			default:
				rx_queue_data <= rx_queue_data;
		endcase
end

//rx_queue_en 接收信息发给发送队列的使能信号
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		rx_queue_en <= 1'b0;
	else
		case(rx_next_state)
			RX_OK:
				rx_queue_en <= 1'b1;
			default:
				rx_queue_en <= 1'b0;
		endcase
end

//flooding_cnt
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
        flooding_cnt <= 4'd0;
    else
        case(rx_next_state)
            RX_FLOODING:
                flooding_cnt <= flooding_cnt + 1;
            default:
                flooding_cnt <= 4'd0;
        endcase
end
            

//rx_fifo_choose打一拍
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		rx_fifo_choose <= 3'd0;
	else
        case(rx_next_state)
            RX_FLOODING:
                rx_fifo_choose <= flooding_cnt - 1;
            default:
		        rx_fifo_choose <= rx_mac_choose;
        endcase
end

//flooding_en泛洪保持信号
always @(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
        flooding_en <= 1'b0;
    else if(flooding)
        flooding_en <= 1'b1;
    else if(rx_next_state == RX_IDLE)
        flooding_en <= 1'b0;
    else
        flooding_en <= flooding_en;
end

endmodule