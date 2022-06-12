module ctl_center(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

//--------------------------------------arbiter相关接口-----------------------------------------------------
    //---------------------------------rx_fifo相关接口--------------------------------------
    input wire [63:0] rx_fifo_dout		,//输出MAC fifo 存储数据
	input wire rx_fifo_rd_en			,//外部输入MAC fifo读使能
	
	//--------------------------------------rx相关-----------------------------------------
    input wire [2:0] rx_mac_choose		,//接收端MAC选择信号
	input wire [15:0] mac_length		,//接收mac地址长度
    input wire [7:0] mac_length_ju		,//8bit转64bit mac帧长度
    input wire mac_length_en			,//mac长度数据有效信号
	//input wire ctl_center_rx_busy,	//控制中心正在接收数据
	//------------------------------------------------------------------------------------

	//---------------------------------tx_fifo相关接口-------------------------------------
	output wire [63:0] tx_fifo_din,//tx_fifo写数据
	output wire tx_fifo_wr_en,//tx_fifo写使能

	//--------------------------------------tx相关----------------------------------------
	input wire [2:0] tx_mac_choose,//发送端MAC选择信号
	input wire tx_en,//可以转发使能信号

	output wire tx_data_ready,//接收转发模块准备好数据信息
	//-----------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------

//-----------------------------------mac_addr（MAC地址表）相关信号--------------------------------------------
	//----------------------------------------rx-----------------------------------------
	input wire flooding,//泛洪信号

	output wire mac_addr_en			,//mac地址有效信号
	output wire [47:0] D_mac		,//目的地址
	output wire [47:0] S_mac		,//源地址
	output wire [2:0] S_port_num	,//源端口
	//-----------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------

//----------------------------------内存cache相关信号------------------------------------------------------
	//rx
	input wire [8:0] rx_addr,//接收逻辑地址

	output wire [63:0] rx_data,//接收数据
	output wire rx_en,//接收使能信号
	//tx
	input wire [63:0] tx_data,//发送数据

	output wire [8:0] tx_addr,//发送数据逻辑地址信息
	output wire cache_tx_en,//发送数据使能信号
//--------------------------------------------------------------------------------------------------------

//--------------------------------------queue相关----------------------------------------------------------
	//接收部分
	output wire [24:0] rx_queue_data,//接收的数据信息
	output wire rx_queue_en,//接收数据信息有效信号，同时也为rx_fifo_choose有效信号
	output wire [2:0] rx_fifo_choose,//接收数据选择信号与rx_mac_choose相同

	//发送部分
	input wire [24:0] que_fifo_data_dout,//que输出数据
	input wire tx_que_data_empty,//que数据空信号

	output wire tx_que_data_en,//数据使能信号
	output wire tx_fifo_choose_en	,//fifo选择使能信号
	output wire [2:0] tx_fifo_choose//fifo选择信号
	//output 

	
//--------------------------------------------------------------------------------------------------------
);

//
rx_ctl_center rx_ctl_center_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk		(sys_clk),//input wire 
    .sys_rst_n		(sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

    //--------------------------------------arbiter相关接口----------------------------
    //rx_fifo相关接口
    .rx_fifo_dout			(rx_fifo_dout),//输出MAC fifo 存储数据input wire [63:0] 
	.rx_fifo_rd_en			(rx_fifo_rd_en),//外部输入MAC fifo读使能input wire 
	
	//rx相关-----------------------------------------
    .rx_mac_choose		(rx_mac_choose),//接收端MAC选择信号input wire [2:0] 
	.mac_length			(mac_length),//接收mac地址长度input wire [15:0] 
    .mac_length_ju		(mac_length_ju),//8bit转64bit mac帧长度input wire [7:0] 
    .mac_length_en		(mac_length_en),//mac长度数据有效信号input wire 
	//input wire ctl_center_rx_busy,	//控制中心正在接收数据
	//------------------------------------------------------------------------------------

    //-----------------------------------mac_addr（MAC地址表）相关信号----------------------------------
	.flooding			(flooding),//泛洪信号input wire 

	.mac_addr_en		(mac_addr_en),//mac地址有效信号output reg 
	.D_mac				(D_mac),//目的地址output reg [47:0] 
	.S_mac				(S_mac),//源地址output reg [47:0] 
	.S_port_num			(S_port_num),//源端口output wire [2:0] 

	//------------------------------------------------------------------------------------

    //----------------------------------内存cache相关信号--------------------------------------
	.rx_addr		(rx_addr),//接收逻辑地址input wire [8:0] 

	.rx_data		(rx_data),//接收数据output reg [63:0] 
	.rx_en			(rx_en),//接收使能信号output reg 
    //----------------------------------------------------------------------------------------

    //--------------------------------------queue相关------------------------------------------
	.rx_queue_data			(rx_queue_data),//接收的数据信息output reg [24:0] 
	.rx_queue_en			(rx_queue_en),//接收数据信息有效信号，同时也为rx_fifo_choose有效信号output reg 
	.rx_fifo_choose			(rx_fifo_choose)//接收数据选择信号与rx_mac_choose相同output reg [2:0] 
);

//
tx_ctl_center tx_ctl_center_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk		(sys_clk),//input wire 
    .sys_rst_n		(sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

    //--------------------------------------arbiter相关接口----------------------------
    //tx_fifo相关接口
	.tx_fifo_din		(tx_fifo_din),//tx_fifo写数据output reg [63:0] 
	.tx_fifo_wr_en		(tx_fifo_wr_en),//tx_fifo写使能output reg 

	//tx相关-----------------------------------------
	.tx_mac_choose		(tx_mac_choose),//发送端MAC选择信号input wire [2:0] 
	.tx_en				(tx_en),//可以转发使能信号input wire 

	.tx_data_ready		(tx_data_ready),//接收转发模块准备好数据信息output reg 
    //------------------------------------------------------------------------------------

    //----------------------------------内存cache相关信号--------------------------------------
    .tx_data			(tx_data),//发送数据input wire [63:0] 

	.tx_addr			(tx_addr),//发送数据逻辑地址信息output reg [8:0] 
	.cache_tx_en		(cache_tx_en),//发送数据使能信号output reg 
    //------------------------------------------------------------------------------------

    //--------------------------------------queue相关------------------------------------------
    .que_fifo_data_dout		(que_fifo_data_dout),//que输出数据input wire [24:0] 
	.tx_que_data_empty		(tx_que_data_empty),//que数据空信号input wire 

	.tx_que_data_en			(tx_que_data_en),//数据使能信号output wire 
	.tx_fifo_choose_en		(tx_fifo_choose_en),//fifo选择使能信号output reg 
	.tx_fifo_choose			(tx_fifo_choose)//fifo选择信号output reg [2:0] 
    //----------------------------------------------------------------------------------------
);

endmodule