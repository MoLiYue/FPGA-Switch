module MAC_rx_ctl_top(
    //---------------------系统信号---------------------
    input wire sys_rst_n,
    //-------------------------------------------------

	//------------------------gmii接口--------------------------------
	input wire gmii_rx_clk,//GMII接收时钟 
	input wire gmii_rx_dv,//GMII接收数据有效信号
	input wire [7:0] gmii_rxd,//GMII接收数据 
	//----------------------------------------------------------------
	
	//-------------------------其他------------------------------------
	input wire tx_busy,//半双工情况下发送忙信号
	input wire [1:0] duplex_mode,//全双工：10 半双工：01
	input wire [2:0] speed_mode, //速度模式	100：1000Mbps 010：100Mbps 001：10Mbps
	//----------------------------------------------------------------

	//------------------------rx_que_fifo相关信号-----------------------------
	input wire mac_rx_que_fifo_full,	//写满信号
	input wire mac_rx_que_fifo_almost_full,		//写将满信号
	input wire mac_rx_que_fifo_overflow,	//写溢出信号

	output reg mac_rx_que_fifo_wr_en,//写使能
	output wire [7:0] mac_rx_que_fifo_din,//输入数据
	//output wire mac_rx_que_fifo_clk,	//同mac_rx_fifo_wr_clk
	//------------------------------------------------------------------------

    //---------------------rx_fifo相关接口------------------------------
	input wire mac_rx_fifo_full, 	//写满信号
	input wire mac_rx_fifo_almost_full, 	//写将满信号
	input wire mac_rx_fifo_overflow, 	//写溢出信号

	output wire mac_rx_fifo_wr_clk,//写时钟
    output wire [7:0] mac_rx_fifo_din,//输入数据8bit
	output wire mac_rx_fifo_wr_en//写使能
	//-----------------------------------------------------------------
);

//CRC相关wire
wire [31:0] crc_data;
wire [31:0] crc_next;
wire [7:0] crc_input_data;
wire crc_en;
wire crc_clr;
wire crc_err;//无用

//MAC_rx_ctl inst
MAC_rx_ctl MAC_rx_ctl_inst(
	//----------------------系统信号----------------------------------
	.sys_rst_n(sys_rst_n), //input wire 
	//---------------------------------------------------------------

	//------------------------gmii接口--------------------------------
	.gmii_rx_clk    (gmii_rx_clk),//GMII接收时钟 input wire 
	.gmii_rx_dv     (gmii_rx_dv),//GMII接收数据有效信号input wire 
	.gmii_rxd       (gmii_rxd),//GMII接收数据 input wire [7:0] 
	//----------------------------------------------------------------
	
	//-------------------------其他------------------------------------
	.tx_busy        (tx_busy),//半双工情况下发送忙信号input wire 
	.duplex_mode    (duplex_mode),//全双工：10 半双工：01input wire [1:0] 
	.speed_mode     (speed_mode), //速度模式	100：1000Mbps 010：100Mbps 001：10Mbpsinput wire [2:0] 
	//----------------------------------------------------------------

	//---------------------rx_fifo相关接口------------------------------
	.mac_rx_fifo_full       (mac_rx_fifo_full), 	//写满信号  input wire 
	.mac_rx_fifo_almost_full(mac_rx_fifo_almost_full), 	//写将满信号    input wire 
	.mac_rx_fifo_overflow   (mac_rx_fifo_overflow), 	//写溢出信号    input wire 

	.mac_rx_fifo_wr_clk (mac_rx_fifo_wr_clk),//写时钟 output wire 
    .mac_rx_fifo_din    (mac_rx_fifo_din),//输入数据87ui  output wire [7:0] 
	.mac_rx_fifo_wr_en  (mac_rx_fifo_wr_en),//写使能   output reg 
	//-----------------------------------------------------------------

	//------------------------rx_que_fifo相关信号-----------------------------
	.mac_rx_que_fifo_full			(mac_rx_que_fifo_full),	//写满信号	input wire 
	.mac_rx_que_fifo_almost_full	(mac_rx_que_fifo_almost_full),	//写将满信号	input wire 
	.mac_rx_que_fifo_overflow		(mac_rx_que_fifo_overflow),	//写溢出信号input wire 

	.mac_rx_que_fifo_wr_en			(mac_rx_que_fifo_wr_en),//写使能		output reg 
	.mac_rx_que_fifo_din			(mac_rx_que_fifo_din),//输入数据		output wire [7:0] 
	//output wire mac_rx_que_fifo_clk,	//同mac_rx_que_fifo_clk
	//------------------------------------------------------------------------

	//------------------------CRC校验相关端口----------------------------
	.crc_data	(crc_data),		//CRC校验数据		input wire [31:0]
	.crc_next	(crc_next[31:24]),	//CRC下次校验完成数据	input wire [7:0] 
	.crc_err	(crc_err),//CRC校验错误信号		input wire 

	.crc_en		(crc_en),		//crc使能，进行校验标志	output reg 
	.crc_clr	(crc_clr)		//crc数据复位信号		output reg 
	//-------------------------------------------------------------------
);
//CRC_check inst
CRC_check CRC_check_inst(
	//--------------------------系统信号------------------------------------------
	.clk     (gmii_rx_clk),		//接收时钟信号  input wire 
	.sys_rst_n  (sys_rst_n),	//系统复位信号  input wire 
	//---------------------------------------------------------------------------

	//
	.data       (mac_rx_fifo_din),	//输入待校验的8位数据   input wire [7:0] 
	.crc_en     (crc_en),		//crc使能，开始校验标志input wire 
	.crc_clr    (crc_clr),		//crc数据复位信号input wire 
	
	.crc_data   (crc_data),		//CRC校验数据       output reg [31:0] 
	.crc_next   (crc_next),	//CRC下次校验完成数据    output wire [31:0] 
	.crc_err    (crc_err)    //CRC校验错误信号            output reg 
	//
);

endmodule