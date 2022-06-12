module LLC_top(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

	//--------------------------------rx_fifo相关接口-----------------------------------
    input wire [511:0] mac_rx_fifo_dout			,//输出MAC fifo 存储数据
	input wire [7:0] mac_rx_fifo_empty        	,//输出MAC fifo empty
	input wire [7:0] mac_rx_fifo_almost_empty 	,//输出MAC fifo almost_empty
	input wire [7:0] mac_rx_fifo_underflow    	,//输出MAC读溢出

	output wire [7:0] mac_rx_fifo_rd_clk      ,//外部传入MACfifo读时钟
	output wire [7:0] mac_rx_fifo_rd_en       ,//外部输入MAC fifo读使能
	//----------------------------------------------------------------------------------

	//------------------------rx_que_fifo相关接口----------------------------------
	input wire [143:0] 	mac_rx_que_fifo_dout			,//输出数据
	input wire [7:0]	mac_rx_que_fifo_empty			,	//读空信号
	input wire [7:0]	mac_rx_que_fifo_almost_empty	,		//读将空信号
	input wire [7:0]	mac_rx_que_fifo_underflow		,	//读溢出信号

	output wire [7:0] mac_rx_que_fifo_rd_en	,//读使能
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//---------------------------------------------------------------------------------

	//-----------------------------------tx_fifo相关接口---------------------------------
    input wire [7:0]	mac_tx_fifo_full        , //tx_fifo满信号
	input wire [7:0]	mac_tx_fifo_almost_full , //tx_fifo将满信号
	input wire [7:0]	mac_tx_fifo_overflow    ,//tx_fifo 写溢出信号
	input wire [7:0] 	mac_tx_fifo_prog_empty	,//可编程空信号，用于判定可以写入信息

	output wire [7:0]	mac_tx_fifo_wr_clk      ,//tx_fifo写时钟
	output wire [511:0] mac_tx_fifo_din  		,//tx_fifo写数据
	output wire [7:0]	mac_tx_fifo_wr_en       ,//tx_fifo写使能
	//-----------------------------------------------------------------------------------

	//------------------------tx_que_fifo相关接口-------------------------------------------
	input wire [7:0]	mac_tx_que_fifo_full			,	//写满信号
	input wire [7:0]	mac_tx_que_fifo_almost_full	,	//写将满信号
	input wire [7:0]	mac_tx_que_fifo_overflow		,	//写溢出信号

	output wire [7:0]		mac_tx_que_fifo_wr_en	,//写使能
	output wire [143:0] 	mac_tx_que_fifo_din		//输入数据
	//output wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk
	//--------------------------------------------------------------------------------------
);

//------------------------ctl_center模块与queue模块wire------------------------
	wire [24:0] que_fifo_data_din;//接收数据
	wire rx_fifo_data_en;//接收数据使能
	wire [2:0] rx_fifo_choose;//接收选择信号

	wire [2:0] tx_fifo_choose;//发送选择信号
	wire tx_que_data_en;//读取发送数据信号
	wire [24:0] que_fifo_data_dout;//que输出数据
	wire tx_que_data_empty;//que队列缓存空信号
//---------------------------------------------------------------------------

//-----------------------ctl_center模块与MAC地址表模块wire----------------------
	wire mac_addr_en;
	wire [47:0] D_mac;
	wire [47:0] S_mac;

	wire [2:0] S_port_num;
	wire [2:0] D_port_num;
	wire D_port_num_en;
	wire flooding;
//---------------------------------------------------------------------------

//----------------------ctl_center模块与cache模块wire--------------------------
	wire [63:0] rx_data;
	wire rx_en;
	wire [8:0] rx_addr;

	wire tx_en;
	wire [8:0] tx_addr;
	wire [63:0] tx_data;
//----------------------------------------------------------------------------

//---------------------ctl_center模块与arbiter模块wire--------------------------
	wire [2:0] rx_mac_choose;//接收端MAC选择信号
	wire [15:0] mac_length;//接收mac地址长度
	wire [7:0] mac_length_ju;//8bit转64bit mac帧长度
	wire mac_length_en;//mac长度数据有效信号

	wire [2:0] rx_mac_choose;
	wire [2:0] tx_mac_choose;

	wire rx_fifo_rd_clk;
	wire rx_fifo_rd_en ;

	wire [63:0] rx_fifo_dout ;
	wire rx_fifo_empty       ;
	wire rx_fifo_almost_empty;
	wire rx_fifo_underflow   ;

	wire tx_fifo_wr_clk;
	wire [63:0] tx_fifo_din   ;
	wire tx_fifo_wr_en ;

	wire tx_fifo_full       ;
	wire tx_fifo_almost_full;
	wire tx_fifo_overflow   ;
//----------------------------------------------------------------------------

//arbiter模块
arbiter arbiter_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk    (sys_clk),//input wire 
    .sys_rst_n  (sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

	//--------------------------------rx_fifo相关接口-----------------------------------
    .mac_rx_fifo_dout           (mac_rx_fifo_dout),//输出MAC fifo 存储数据         input wire [511:0]
	.mac_rx_fifo_empty          (mac_rx_fifo_empty),//输出MAC fifo empty     input wire [7:0]
	.mac_rx_fifo_almost_empty   (mac_rx_fifo_almost_empty),//输出MAC fifo almost_empty      input wire [7:0]
	.mac_rx_fifo_underflow      (mac_rx_fifo_underflow),//输出MAC读溢出      input wire [7:0]

	.mac_rx_fifo_rd_clk         (mac_rx_fifo_rd_clk),   //外部传入MACfifo读时钟       output wire [7:0]
	.mac_rx_fifo_rd_en          (mac_rx_fifo_rd_en),    //外部输入MAC fifo读使能      output wire [7:0]
	//----------------------------------------------------------------------------------

	//------------------------rx_que_fifo相关接口-----------------------------------------
	.mac_rx_que_fifo_dout			(mac_rx_que_fifo_dout),//输出数据input wire [143:0] 			
	.mac_rx_que_fifo_empty			(mac_rx_que_fifo_empty),//读空信号input wire [7:0]			
	.mac_rx_que_fifo_almost_empty	(mac_rx_que_fifo_almost_empty),//读将空信号input wire [7:0]			
	.mac_rx_que_fifo_underflow		(mac_rx_que_fifo_underflow),//读溢出信号input wire [7:0]			

	.mac_rx_que_fifo_rd_en			(mac_rx_que_fifo_rd_en),//读使能output wire [7:0]			
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//----------------------------------------------------------------------------------

	//-----------------------------------tx_fifo相关接口---------------------------------
    .mac_tx_fifo_full         	(mac_tx_fifo_full), //tx_fifo满信号        input wire [7:0]
	.mac_tx_fifo_almost_full  	(mac_tx_fifo_almost_full), //tx_fifo将满信号      input wire [7:0]
	.mac_tx_fifo_overflow     	(mac_tx_fifo_overflow),//tx_fifo 写溢出信号    input wire [7:0]
	.mac_tx_fifo_prog_empty		(mac_tx_fifo_prog_empty),//可编程空信号，用于判定可以写入信息	input wire [7:0] 	

	.mac_tx_fifo_wr_clk      (mac_tx_fifo_wr_clk),//tx_fifo写时钟  output wire         [7:0]
	.mac_tx_fifo_din         (mac_tx_fifo_din),//tx_fifo写数据  output wire [511:0]
	.mac_tx_fifo_wr_en       (mac_tx_fifo_wr_en),//tx_fifo写使能  output wire         [7:0]
	//-----------------------------------------------------------------------------------

	//------------------------tx_que_fifo相关接口-------------------------------------------
	.mac_tx_que_fifo_full			(mac_tx_que_fifo_full),//写满信号input wire [7:0]	
	.mac_tx_que_fifo_almost_full	(mac_tx_que_fifo_almost_full),//写将满信号input wire [7:0]	
	.mac_tx_que_fifo_overflow		(mac_tx_que_fifo_overflow),//写溢出信号input wire [7:0]	

	.mac_tx_que_fifo_wr_en		(mac_tx_que_fifo_wr_en),//写使能output wire [7:0]			
	.mac_tx_que_fifo_din		(mac_tx_que_fifo_din),//输入数据output wire [143:0] 		
	//output wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk
	//--------------------------------------------------------------------------------------

//-----------------------------------------面向ctl_center的接口------------------------------------------
	//---------------------------------------rx相关-----------------------------------------
    .rx_mac_choose		(rx_mac_choose),//接收端MAC选择信号output wire [2:0] 
	.mac_length			(mac_length),//接收mac地址长度output wire [15:0] 
    .mac_length_ju		(mac_length_ju),//8bit转64bit mac帧长度output wire [7:0] 
    .mac_length_en		(mac_length_en),//mac长度数据有效信号output wire 
	//----------------------------------------tx相关----------------------------------------
	.tx_mac_choose		(tx_mac_choose),//发送端MAC选择信号output wire [2:0] 
	//--------------------------------选择后的rx_fifo相关接口---------------------------------
	.rx_fifo_rd_en        (rx_fifo_rd_en),//外部输入MAC fifo读使能  output wire 
	.rx_fifo_dout         (rx_fifo_dout),//输出MAC fifo 存储数据              output wire [63:0]  
	.rx_fifo_empty        (rx_fifo_empty),//输出MAC fifo empty          output wire         
	.rx_fifo_almost_empty (rx_fifo_almost_empty),//输出MAC fifo almost_empty   output wire         
	.rx_fifo_underflow    (rx_fifo_underflow),//输出MAC读溢出               output wire         
	//----------------------------------------------------------------------------------

	//---------------------------------选择后的tx_fifo相关接口--------------------------------
	.tx_fifo_wr_clk      (tx_fifo_wr_clk),//tx_fifo写时钟   input wire          
	.tx_fifo_din         (tx_fifo_din),//tx_fifo写数据          input wire [63:0]   
	.tx_fifo_wr_en       (tx_fifo_wr_en),//tx_fifo写使能   input wire          

	.tx_fifo_full         (tx_fifo_full), //tx_fifo满信号     output wire 
	.tx_fifo_almost_full  (tx_fifo_almost_full), //tx_fifo将满信号   output wire 
	.tx_fifo_overflow     (tx_fifo_overflow)//tx_fifo 写溢出信号  output wire 
	//-----------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------
);

//mac_addr模块
mac_addr
#(
    .OLD_TIME    ()//老化时间   16'd48000
)mac_addr_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk      (sys_clk),//input wire 
    .sys_rst_n    (sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

	//-----------------------------------mac_addr相关信号----------------------------------
	.mac_addr_en	(mac_addr_en),//mac地址有效信号  input wire 
	.D_mac		    (D_mac),//目的地址     input wire [47:0] 
	.S_mac		    (S_mac),//源地址       input wire [47:0] 
	//------------------------------------------------------------------------------------

    .S_port_num     (S_port_num),//源地址端口号   input wire [2:0] 

    .D_port_num     (D_port_num),//查询的目的地址端口号   output reg [2:0] 
    .D_port_num_en  (D_port_num_en),//查询的目的地址端口号使能    output reg 
    .flooding       (flooding)//泛洪信号  output reg 
);

cache cache_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk	(sys_clk),//input wire 
    .sys_rst_n	(sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

    //------------------------------------ctl_center接口------------------------------------
    //rx
	.rx_data		(rx_data),//接收数据input wire [63:0] 
	.rx_en			(rx_en),//接收使能input wire 
	.rx_addr		(rx_addr),//接收地址output wire [8:0] 
    //tx
    .tx_en		(tx_en),//发送数据使能信号	input wire 
    .tx_addr	(tx_addr),//发送数据逻辑地址信息	input wire [8:0] 
	.tx_data	(tx_data)//发送数据	output wire [63:0] 
	//------------------------------------------------------------------------------------
);



//ctl_center
ctl_center ctl_center_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk		(sys_clk),//input wire 
    .sys_rst_n		(sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

//--------------------------------------arbiter相关接口-----------------------------------------------------
    //---------------------------------rx_fifo相关接口--------------------------------------
    .rx_fifo_dout		(rx_fifo_dout),//输出MAC fifo 存储数据input wire [63:0] 
	.rx_fifo_rd_en		(rx_fifo_rd_en),//外部输入MAC fifo读使能input wire 
	
	//--------------------------------------rx相关-----------------------------------------
    .rx_mac_choose		(rx_mac_choose),//接收端MAC选择信号input wire [2:0] 
	.mac_length			(mac_length),//接收mac地址长度input wire [15:0] 
    .mac_length_ju		(mac_length_ju),//8bit转64bit mac帧长度input wire [7:0] 
    .mac_length_en		(mac_length_en),//mac长度数据有效信号input wire 
	//input wire ctl_center_rx_busy,	//控制中心正在接收数据
	//------------------------------------------------------------------------------------

	//---------------------------------tx_fifo相关接口-------------------------------------
	.tx_fifo_din		(tx_fifo_din),//tx_fifo写数据output wire [63:0] 
	.tx_fifo_wr_en		(tx_fifo_wr_en),//tx_fifo写使能output wire 

	//--------------------------------------tx相关----------------------------------------
	.tx_mac_choose		(tx_mac_choose),//发送端MAC选择信号input wire [2:0] 
	.tx_en				(tx_en),//可以转发使能信号input wire 

	.tx_data_ready		(tx_data_ready),//接收转发模块准备好数据信息output wire 
	//-----------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------

//-----------------------------------mac_addr（MAC地址表）相关信号--------------------------------------------
	//----------------------------------------rx-----------------------------------------
	.flooding			(flooding),//泛洪信号input wire 

	.mac_addr_en		(mac_addr_en),//mac地址有效信号output wire 
	.D_mac				(D_mac),//目的地址output wire [47:0] 
	.S_mac				(S_mac),//源地址output wire [47:0] 
	.S_port_num			(S_port_num),//源端口output wire [2:0] 
	//-----------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------

//----------------------------------内存cache相关信号------------------------------------------------------
	//rx
	.rx_addr		(rx_addr),//接收逻辑地址input wire [8:0] 

	.rx_data		(rx_data),//接收数据output wire [63:0] 
	.rx_en			(rx_en),//接收使能信号output wire 
	//tx
	.tx_data		(tx_data),//发送数据input wire [63:0] 

	.tx_addr		(tx_addr),//发送数据逻辑地址信息output wire [8:0] 
	.cache_tx_en	(tx_en),//发送数据使能信号output wire 
//--------------------------------------------------------------------------------------------------------

//--------------------------------------queue相关----------------------------------------------------------
	//接收部分
	.rx_queue_data			(que_fifo_data_din),//接收的数据信息output wire [24:0] 
	.rx_queue_en			(rx_fifo_data_en),//接收数据信息有效信号，同时也为rx_fifo_choose有效信号output wire 
	.rx_fifo_choose			(rx_fifo_choose),//接收数据选择信号与rx_mac_choose相同output wire [2:0] 

	//发送部分
	.que_fifo_data_dout		(que_fifo_data_dout),//que输出数据input wire [24:0] 
	.tx_que_data_empty		(tx_que_data_empty),//que数据空信号input wire 

	.tx_que_data_en			(tx_que_data_en),//数据使能信号output wire 
	.tx_fifo_choose_en		(tx_fifo_choose_en),//发送fifo选择使能信号output wire 
	.tx_fifo_choose			(tx_fifo_choose)//fifo选择信号output wire [2:0] 
	//output 

	
//--------------------------------------------------------------------------------------------------------
);

//queue
queue queue_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk		(sys_clk),//input wire 
    .sys_rst_n		(sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

//------------------------------面向ctl_center信号-------------------------------------------
    //rx接收（queue输入端）
    .que_fifo_data_din		(que_fifo_data_din),//接收数据input wire [24:0] 
    .rx_fifo_choose			(rx_fifo_choose),//接收选择信号input wire [2:0] 
    .rx_fifo_data_en		(rx_fifo_data_en),//接收数据使能input wire 

    //tx发送（queue输出端）
    .tx_fifo_choose		(tx_fifo_choose),//发送选择信号input wire [2:0] 
    .tx_que_data_en		(tx_que_data_en),//读取发送数据信号input wire 

    .que_fifo_data_dout		(que_fifo_data_dout),//que输出数据output wire [24:0] 
    .tx_que_data_empty		(tx_que_data_empty)//que队列缓存空信号output wire 
//------------------------------------------------------------------------------------
);
endmodule