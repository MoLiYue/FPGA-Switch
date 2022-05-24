module arbiter(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    output wire [2:0] rx_mac_choose,        //接收端MAC选择信号
	output wire [2:0] tx_mac_choose,			//发送端MAC选择信号

	//--------------------------------rx_fifo相关接口-----------------------------------
    input wire [511:0] 	mac_rx_fifo_dout  			,//输出MAC fifo 存储数据
	input wire [7:0]	mac_rx_fifo_empty        	,//输出MAC fifo empty
	input wire [7:0]	mac_rx_fifo_almost_empty 	,//输出MAC fifo almost_empty
	input wire [7:0]	mac_rx_fifo_underflow    	,//输出MAC读溢出

	output wire [7:0]	mac_rx_fifo_rd_clk      ,//外部传入MACfifo读时钟
	output wire [7:0]	mac_rx_fifo_rd_en       ,//外部输入MAC fifo读使能
	//----------------------------------------------------------------------------------

	//------------------------rx_que_fifo相关接口-----------------------------------------
	input wire [143:0] 			mac_rx_que_fifo_dout			,//输出数据
	input wire [7:0]			mac_rx_que_fifo_empty			,	//读空信号
	input wire [7:0]			mac_rx_que_fifo_almost_empty	,		//读将空信号
	input wire [7:0]			mac_rx_que_fifo_underflow		,	//读溢出信号

	output wire [7:0]			mac_rx_que_fifo_rd_en			,//读使能
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//----------------------------------------------------------------------------------

	//-----------------------------------tx_fifo相关接口---------------------------------
    input wire [7:0]	mac_tx_fifo_full         , //tx_fifo满信号
	input wire [7:0]	mac_tx_fifo_almost_full  , //tx_fifo将满信号
	input wire [7:0]	mac_tx_fifo_overflow     ,//tx_fifo 写溢出信号

	output wire [7:0] 	mac_tx_fifo_wr_clk      ,//tx_fifo写时钟
	output wire [511:0] mac_tx_fifo_din  		,//tx_fifo写数据
	output wire [7:0]	mac_tx_fifo_wr_en       ,//tx_fifo写使能
	//-----------------------------------------------------------------------------------

	//------------------------tx_que_fifo相关接口-------------------------------------------
	input wire [7:0]	mac_tx_que_fifo_full			,	//写满信号
	input wire [7:0]	mac_tx_que_fifo_almost_full	,	//写将满信号
	input wire [7:0]	mac_tx_que_fifo_overflow		,	//写溢出信号

	output wire [7:0]		mac_tx_que_fifo_wr_en	,//写使能
	output wire [143:0] 		mac_tx_que_fifo_din		,//输入数据
	//output wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk
	//--------------------------------------------------------------------------------------

	//--------------------------------选择后的rx_fifo相关接口---------------------------------
	input wire rx_fifo_rd_clk      ,//外部传入MACfifo读时钟
	input wire rx_fifo_rd_en       ,//外部输入MAC fifo读使能

	output wire [63:0] rx_fifo_dout  ,//输出MAC fifo 存储数据
	output wire rx_fifo_empty        ,//输出MAC fifo empty
	output wire rx_fifo_almost_empty ,//输出MAC fifo almost_empty
	output wire rx_fifo_underflow    ,//输出MAC读溢出
	//----------------------------------------------------------------------------------

	//------------------------选择后的rx_que_fifo相关接口----------------------------------
	input wire [17:0] 	rx_que_fifo_dout			,//输出数据
	input wire 			rx_que_fifo_empty			,	//读空信号
	input wire 			rx_que_fifo_almost_empty	,		//读将空信号
	input wire 			rx_que_fifo_underflow		,	//读溢出信号

	output wire 		rx_que_fifo_rd_en			,//读使能
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//----------------------------------------------------------------------------------

	//---------------------------------选择后的tx_fifo相关接口--------------------------------
	input wire tx_fifo_wr_clk      ,//tx_fifo写时钟
	input wire [63:0] tx_fifo_din  ,//tx_fifo写数据
	input wire tx_fifo_wr_en       ,//tx_fifo写使能

	output wire tx_fifo_full         , //tx_fifo满信号
	output wire tx_fifo_almost_full  , //tx_fifo将满信号
	output wire tx_fifo_overflow     ,//tx_fifo 写溢出信号
	//--------------------------------------------------------------------------------------

	//------------------------选择后的tx_que_fifo相关接口-------------------------------------------
	input wire 		tx_que_fifo_full			,	//写满信号
	input wire 		tx_que_fifo_almost_full		,	//写将满信号
	input wire 		tx_que_fifo_overflow		,	//写溢出信号

	output wire 		tx_que_fifo_wr_en	,//写使能
	output wire [17:0] 	tx_que_fifo_din		//输入数据
	//output wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk
	//--------------------------------------------------------------------------------------
);

//rx信号选择
//assign mac_rx_fifo_rd_clk [rx_mac_choose] = rx_fifo_rd_clk;
//assign mac_rx_fifo_rd_en  [rx_mac_choose] = rx_fifo_rd_en ;
//
//assign rx_fifo_dout         = mac_rx_fifo_dout          [rx_mac_choose];
//assign rx_fifo_empty        = mac_rx_fifo_empty         [rx_mac_choose];
//assign rx_fifo_almost_empty = mac_rx_fifo_almost_empty  [rx_mac_choose];
//assign rx_fifo_underflow    = mac_rx_fifo_underflow     [rx_mac_choose];
//tx信号选择
//assign mac_tx_fifo_wr_clk   [tx_mac_choose] = tx_fifo_wr_clk;
//assign mac_tx_fifo_din      [tx_mac_choose] = tx_fifo_din   ;
//assign mac_tx_fifo_wr_en    [tx_mac_choose] = tx_fifo_wr_en ;
//
//assign tx_fifo_full        = mac_tx_fifo_full       [tx_mac_choose];
//assign tx_fifo_almost_full = mac_tx_fifo_almost_full[tx_mac_choose];
//assign tx_fifo_overflow    = mac_tx_fifo_overflow   [tx_mac_choose];

//rx信号选择模块

//tx信号选择模块

endmodule