module tx_fifo_top(
    //------------------------------系统信号---------------------------------
    input wire sys_rst_n	,//系统复位信号
	input wire mac_clk		,//MAC控制器全局系统时钟(发送时钟)
    //----------------------------------------------------------------------

	//----------------------tx_fifo相关面向MAC接口----------------------------
	input wire mac_tx_fifo_rd_clk	,//外部传入MACfifo读时钟
	input wire mac_tx_fifo_rd_en	,//外部输入MAC fifo读使能

	output wire [7:0] 	mac_tx_fifo_dout			,//输出MAC fifo 存储数据
	output wire 		mac_tx_fifo_empty			,//输出MAC fifo empty
	output wire 		mac_tx_fifo_almost_empty	,//输出MAC fifo almost_empty
	output wire 		mac_tx_fifo_underflow		,//输出MAC读溢出
	//------------------------------------------------------------------------

    //---------------------tx_fifo相关面向LLC接口------------------------------------------
	input wire 			mac_tx_fifo_wr_clk	,//tx_fifo写时钟			tx_que_fifo写时钟
    input wire [63:0] 	mac_tx_fifo_din		,//输入数据
	input wire 			mac_tx_fifo_wr_en	,//写使能

	output wire mac_tx_fifo_full			, 	//写满信号
	output wire mac_tx_fifo_almost_full		, 	//写将满信号
	output wire mac_tx_fifo_overflow		, 	//写溢出信号
	//------------------------------------------------------------------------------

    //------------------------tx_que_fifo相关面向LLC接口-----------------------------
	input wire 			mac_tx_que_fifo_wr_en	,//写使能
	input wire [17:0] 	mac_tx_que_fifo_din		,//输入数据
	//input wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk

	output wire mac_tx_que_fifo_full		,	//写满信号
	output wire mac_tx_que_fifo_almost_full	,	//写将满信号
	output wire mac_tx_que_fifo_overflow	,	//写溢出信号
	//-----------------------------------------------------------------------------

	//------------------------tx_que_fifo相关面向MAC接口-----------------------------
	input wire mac_tx_que_fifo_rd_en	,//读使能
	//input wire mac_tx_que_fifo_rd_clk,	//同mac_tx_fifo_rd_clk

	output wire [17:0] 	mac_tx_que_fifo_dout			,//输出数据
	output wire 		mac_tx_que_fifo_empty			,	//读空信号
	output wire 		mac_tx_que_fifo_almost_empty	,		//读将空信号
	output wire 		mac_tx_que_fifo_underflow			//读溢出信号
	//-----------------------------------------------------------------------------
);

//暂时无用
wire mac_tx_que_fifo_wr_rst_busy;
wire mac_tx_que_fifo_rd_rst_busy;

//tx_fifo发送数据缓存模块
mac_tx_fifo_64x256_8x2048 mac_tx_fifo_64x256_8x2048_inst (
    .rst(sys_rst_n),                      // input wire rst
    .wr_clk(mac_tx_fifo_wr_clk),                // input wire wr_clk 100MHz
    .rd_clk(mac_clk),                // input wire rd_clk 125MHz
    .din(mac_tx_fifo_din),                      // input wire [63 : 0] din
    .wr_en(mac_tx_fifo_wr_en),                  // input wire wr_en
    .rd_en(mac_tx_fifo_rd_en),                  // input wire rd_en
    .dout(mac_tx_fifo_dout),                    // output wire [7 : 0] dout
    .full(mac_tx_fifo_full),                    // output wire full
    .almost_full(mac_tx_fifo_almost_full),      // output wire almost_full
    .wr_ack(),                // output wire wr_ackf
    .overflow(mac_tx_fifo_overflow),            // output wire overflow
    .empty(mac_tx_fifo_empty),                  // output wire empty
    .almost_empty(mac_tx_fifo_almost_empty),    // output wire almost_empty
    .valid(),                  // output wire valid
    .underflow(mac_tx_fifo_underflow),          // output wire underflow
    .rd_data_count(),  // output wire [10 : 0] rd_data_count
    .wr_data_count(),  // output wire [7 : 0] wr_data_count
    .wr_rst_busy(),      // output wire wr_rst_busy
    .rd_rst_busy()      // output wire rd_rst_busy
);

//发送队列缓存模块
mac_rx_ctl_fifo_18x16 mac_tx_ctl_fifo_18x16_inst (
	.rst(sys_rst_n),                    // input wire rst
	.wr_clk(mac_tx_fifo_wr_clk),              // input wire wr_clk 100MHz
	.rd_clk(mac_tx_fifo_rd_clk),              // input wire rd_clk 125MHz
	.din(mac_tx_que_fifo_din),                    // input wire [17 : 0] din
	.wr_en(mac_tx_que_fifo_wr_en),                // input wire wr_en
	.rd_en(mac_tx_que_fifo_rd_en),                // input wire rd_en
	.dout(mac_tx_que_fifo_dout),                  // output wire [17 : 0] dout
	.full(mac_tx_que_fifo_full),                  // output wire full
	.almost_full(mac_tx_que_fifo_almost_full),    // output wire almost_full
	.empty(mac_tx_que_fifo_empty),                // output wire empty
	.almost_empty(mac_tx_que_fifo_almost_empty),  // output wire almost_empty
	.wr_rst_busy(mac_tx_que_fifo_wr_rst_busy),    // output wire wr_rst_busy
	.rd_rst_busy(mac_tx_que_fifo_rd_rst_busy)    // output wire rd_rst_busy
);
endmodule