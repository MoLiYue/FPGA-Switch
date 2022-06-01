module rx_fifo_top(
    //------------------------------系统信号---------------------------------
    input wire sys_rst_n	,//系统复位信号
	input wire mac_clk		,//MAC控制器全局系统时钟(发送时钟)
    //----------------------------------------------------------------------

	//----------------------rx_fifo相关面向LLC接口----------------------------
	input wire mac_rx_fifo_rd_clk	,//外部传入MACfifo读时钟
	input wire mac_rx_fifo_rd_en	,//外部输入MAC fifo读使能

	output wire [63:0] 	mac_rx_fifo_dout			,//输出MAC fifo 存储数据
	output wire 		mac_rx_fifo_empty			,//输出MAC fifo empty
	output wire 		mac_rx_fifo_almost_empty	,//输出MAC fifo almost_empty
	output wire 		mac_rx_fifo_underflow		,//输出MAC读溢出
	//------------------------------------------------------------------------

	//---------------------rx_fifo相关面向MAC接口------------------------------------------
	input wire 			mac_rx_fifo_wr_clk	,//rx_fifo写时钟			rx_que_fifo写时钟
    input wire [7:0] 	mac_rx_fifo_din		,//输入数据			CRC输入待校验的8位数据
	input wire 			mac_rx_fifo_wr_en	,//写使能
	input wire [2:0] 	data_added			,//需要补充的长度
	input wire 			data_added_en		,//补充长度使能

	output wire mac_rx_fifo_full			, 	//写满信号
	output wire mac_rx_fifo_almost_full		, 	//写将满信号
	output wire mac_rx_fifo_overflow		, 	//写溢出信号
	//------------------------------------------------------------------------------

	//------------------------rx_que_fifo相关面向MAC接口-----------------------------
	input wire 			mac_rx_que_fifo_wr_en	,//写使能
	input wire [17:0] 	mac_rx_que_fifo_din		,//输入数据
	//input wire mac_rx_que_fifo_wr_clk,	//同mac_rx_fifo_wr_clk

	output wire mac_rx_que_fifo_full		,	//写满信号
	output wire mac_rx_que_fifo_almost_full	,	//写将满信号
	output wire mac_rx_que_fifo_overflow	,	//写溢出信号
	//-----------------------------------------------------------------------------

	//------------------------rx_que_fifo相关面向LLC接口-----------------------------
	input wire mac_rx_que_fifo_rd_en	,//读使能
	//input wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk

	output wire [17:0] 	mac_rx_que_fifo_dout			,//输出数据
	output wire 		mac_rx_que_fifo_empty			,	//读空信号
	output wire 		mac_rx_que_fifo_almost_empty	,		//读将空信号
	output wire 		mac_rx_que_fifo_underflow			//读溢出信号
	//-----------------------------------------------------------------------------
);

wire wr_en;//
wire [7:0] din;//

reg [2:0] cnt;//补充空位计数器
reg wr_en_tmp;//补充写使能

//状态机相关reg
reg [1:0] cur_state;
reg [1:0] next_state;

//暂时无用
wire mac_rx_que_fifo_wr_rst_busy;
wire mac_rx_que_fifo_rd_rst_busy;

//补充空位计数器
always @(posedge mac_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		cnt <= 3'd0;
	else 
	case(next_state)
		2'b10:
			if(cnt == data_added)
				cnt <= 3'd0;
			else
				cnt <= cnt + 1;
		default:
			cnt <= 3'd0;
	endcase
end

//状态转换
always @(posedge mac_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		cur_state <= 2'b01;
	else
		cur_state <= next_state;
end

//补充状态与直接输入数据状态状态机
always @(*) begin
	next_state = 2'b01;
	case(cur_state)
		2'b01:
			if(data_added_en)
				next_state = 2'b10;
			else
				next_state = cur_state;
		2'b10:
			if(cnt == data_added)
				next_state = 2'b01;
			else
				next_state = cur_state;
	endcase
end

//补充写使能有效
always @(cur_state) begin
	if(cur_state == 2'b10 && data_added != 0)
		wr_en_tmp = 1'b1;
	else
		wr_en_tmp = 1'b1;
end

//补充与直写选择
assign wr_en = wr_en_tmp ? wr_en_tmp : mac_rx_fifo_wr_en;
assign din = wr_en_tmp ? 8'd0 : mac_rx_fifo_din;

//rx_fifo接收缓存模块
mac_rx_fifo mac_rx_fifo_8x4096_64x512_inst (
	.rst(sys_rst_n),                      // input wire rst
	.wr_clk(mac_rx_fifo_wr_clk),                // input wire wr_clk 125MHz
	.rd_clk(mac_rx_fifo_rd_clk),                // input wire rd_clk 100MHz
	.din(din),                      // input wire [7 : 0] din
	.wr_en(wr_en),                  // input wire wr_en
	.rd_en(mac_rx_fifo_rd_en),                  // input wire rd_en
	.dout(mac_rx_fifo_dout),                    // output wire [63 : 0] dout
	.full(mac_rx_fifo_full),                    // output wire full
	.almost_full(mac_rx_fifo_almost_full),      // output wire almost_full
	.wr_ack(),                // output wire wr_ack
	.overflow(mac_rx_fifo_overflow),            // output wire overflow
	.empty(mac_rx_fifo_empty),                  // output wire empty
	.almost_empty(mac_rx_fifo_almost_empty),    // output wire almost_empty
	.valid(),                  // output wire valid
	.underflow(mac_rx_fifo_underflow),          // output wire underflow
	.rd_data_count(),  // output wire [7 : 0] rd_data_count
	.wr_data_count(),  // output wire [10 : 0] wr_data_count
	.wr_rst_busy(),      // output wire wr_rst_busy
	.rd_rst_busy()      // output wire rd_rst_busy
);

//接收队列缓存模块
mac_ctl_fifo_18x16 mac_rx_ctl_fifo_18x16_inst (
	.rst(sys_rst_n),                    // input wire rst
	.wr_clk(mac_rx_fifo_wr_clk),              // input wire wr_clk
	.rd_clk(mac_rx_fifo_rd_clk),              // input wire rd_clk
	.din(mac_rx_que_fifo_din),                    // input wire [17 : 0] din
	.wr_en(mac_rx_que_fifo_wr_en),                // input wire wr_en
	.rd_en(mac_rx_que_fifo_rd_en),                // input wire rd_en
	.dout(mac_rx_que_fifo_dout),                  // output wire [17 : 0] dout
	.full(mac_rx_que_fifo_full),                  // output wire full
	.almost_full(mac_rx_que_fifo_almost_full),    // output wire almost_full
	.empty(mac_rx_que_fifo_empty),                // output wire empty
	.almost_empty(mac_rx_que_fifo_almost_empty),  // output wire almost_empty
	.wr_rst_busy(mac_rx_que_fifo_wr_rst_busy),    // output wire wr_rst_busy
	.rd_rst_busy(mac_rx_que_fifo_rd_rst_busy)    // output wire rd_rst_busy
);
endmodule