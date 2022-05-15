module arbiter(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    input wire [2:0] mac_choose,        //MAC选择信号

	//--------------------------------rx_fifo相关接口-----------------------------------
    input wire [63:0] mac_rx_fifo_dout  [7:0],//输出MAC fifo 存储数据
	input wire mac_rx_fifo_empty        [7:0],//输出MAC fifo empty
	input wire mac_rx_fifo_almost_empty [7:0],//输出MAC fifo almost_empty
	input wire mac_rx_fifo_underflow    [7:0],//输出MAC读溢出

	output wire mac_rx_fifo_rd_clk      [7:0],//外部传入MACfifo读时钟
	output wire mac_rx_fifo_rd_en       [7:0],//外部输入MAC fifo读使能
	//----------------------------------------------------------------------------------

	//-----------------------------------tx_fifo相关接口---------------------------------
    input wire mac_tx_fifo_full         [7:0], //tx_fifo满信号
	input wire mac_tx_fifo_almost_full  [7:0], //tx_fifo将满信号
	input wire mac_tx_fifo_overflow     [7:0],//tx_fifo 写溢出信号

	output wire mac_tx_fifo_wr_clk      [7:0],//tx_fifo写时钟
	output wire [63:0] mac_tx_fifo_din  [7:0],//tx_fifo写数据
	output wire mac_tx_fifo_wr_en       [7:0],//tx_fifo写使能
	//-----------------------------------------------------------------------------------

	//--------------------------------选择后的rx_fifo相关接口---------------------------------
	input wire rx_fifo_rd_clk      ,//外部传入MACfifo读时钟
	input wire rx_fifo_rd_en       ,//外部输入MAC fifo读使能

	output wire [63:0] rx_fifo_dout  ,//输出MAC fifo 存储数据
	output wire rx_fifo_empty        ,//输出MAC fifo empty
	output wire rx_fifo_almost_empty ,//输出MAC fifo almost_empty
	output wire rx_fifo_underflow    ,//输出MAC读溢出
	//----------------------------------------------------------------------------------

	//---------------------------------选择后的tx_fifo相关接口--------------------------------
	input wire tx_fifo_wr_clk      ,//tx_fifo写时钟
	input wire [63:0] tx_fifo_din  ,//tx_fifo写数据
	input wire tx_fifo_wr_en       ,//tx_fifo写使能

	output wire tx_fifo_full         , //tx_fifo满信号
	output wire tx_fifo_almost_full  , //tx_fifo将满信号
	output wire tx_fifo_overflow     //tx_fifo 写溢出信号
	//-----------------------------------------------------------------------------------
);

//rx信号选择
assign mac_rx_fifo_rd_clk [mac_choose] = rx_fifo_rd_clk;
assign mac_rx_fifo_rd_en  [mac_choose] = rx_fifo_rd_en ;

assign rx_fifo_dout         = mac_rx_fifo_dout          [mac_choose];
assign rx_fifo_empty        = mac_rx_fifo_empty         [mac_choose];
assign rx_fifo_almost_empty = mac_rx_fifo_almost_empty  [mac_choose];
assign rx_fifo_underflow    = mac_rx_fifo_underflow     [mac_choose];
//tx信号选择
assign mac_tx_fifo_wr_clk   [mac_choose] = tx_fifo_wr_clk;
assign mac_tx_fifo_din      [mac_choose] = tx_fifo_din   ;
assign mac_tx_fifo_wr_en    [mac_choose] = tx_fifo_wr_en ;

assign tx_fifo_full        = mac_tx_fifo_full       [mac_choose];
assign tx_fifo_almost_full = mac_tx_fifo_almost_full[mac_choose];
assign tx_fifo_overflow    = mac_tx_fifo_overflow   [mac_choose];

endmodule