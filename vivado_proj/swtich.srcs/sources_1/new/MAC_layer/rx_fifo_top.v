module rx_fifo_top(
    //------------------------------系统信号---------------------------------
    input wire sys_rst_n,	//系统复位信号
	input wire mac_clk,		//MAC控制器全局系统时钟(发送时钟)
    //----------------------------------------------------------------------

	//----------------------rx_fifo相关接口----------------------------
	input wire mac_rx_fifo_rd_clk,//外部传入MACfifo读时钟
	input wire mac_rx_fifo_rd_en,//外部输入MAC fifo读使能

	output wire [63:0] mac_rx_fifo_dout,//输出MAC fifo 存储数据
	output wire mac_rx_fifo_empty,//输出MAC fifo empty
	output wire mac_rx_fifo_almost_empty,//输出MAC fifo almost_empty
	output wire mac_rx_fifo_underflow,//输出MAC读溢出
	//-----------------------------------------------------------------

    //rx_fifo相关wire
    wire		mac_rx_fifo_wr_clk;
    wire [7:0]	mac_rx_fifo_din;
    wire		mac_rx_fifo_wr_en;
    wire		mac_rx_fifo_full;
    wire		mac_rx_fifo_almost_full;
    wire		mac_rx_fifo_overflow;//输出MAC fifo 写溢出
);



mac_rx_fifo_8x2048_64x265 mac_rx_fifo_8x2048_64x265_inst (
	.rst(sys_rst_n),                      // input wire rst
	.wr_clk(mac_rx_fifo_wr_clk),                // input wire wr_clk 125MHz
	.rd_clk(mac_rx_fifo_rd_clk),                // input wire rd_clk 100MHz
	.din(mac_rx_fifo_din),                      // input wire [7 : 0] din
	.wr_en(mac_rx_fifo_wr_en),                  // input wire wr_en
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

endmodule