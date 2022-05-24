module MAC_top(
    //------------------------------系统信号---------------------------------
    input wire sys_rst_n	,	//系统复位信号
	input wire sys_clk		,		//MAC控制器全局系统时钟(100MHz)
    //----------------------------------------------------------------------
	
	//---------------------------MDIO接口------------------------------
	//input wire rd_PHYreg_en,//读取寄存器使能信号 input wire

	inout wire MDIO_data	,			//PHY管理数据 inout wire  

	output wire mdc			,//PHY管理时钟         output wire
	//-----------------------------------------------------------------

	//----------------------------PHY接口------------------------------
	input wire			rgmii_rxc		,		//MAC控制器接收数据时钟
	input wire			rgmii_rx_ctl	,
	input wire [3:0]	rgmii_rxd		,

    output wire 		rgmii_txc		,      //RGMII发送时钟
    output wire 		rgmii_tx_ctl	,    //RGMII发送数据控制信号
    output wire [3:0] 	rgmii_txd		,           //RGMII 发送数据
	//-----------------------------------------------------------------

	//----------------------rx_fifo相关面向LLC接口--------------------------------------
	input wire mac_rx_fifo_rd_clk	,//外部传入MACfifo读时钟
	input wire mac_rx_fifo_rd_en	,//外部输入MAC fifo读使能

	output wire [63:0] 	mac_rx_fifo_dout				,//输出MAC fifo 存储数据
	output wire 		mac_rx_fifo_empty				,//输出MAC fifo empty
	output wire 		mac_rx_fifo_almost_empty		,//输出MAC fifo almost_empty
	output wire 		mac_rx_fifo_underflow			,//输出MAC读溢出
	//--------------------------------------------------------------------------------

	//------------------------rx_que_fifo相关面向LLC接口-----------------------------
	input wire mac_rx_que_fifo_rd_en	,//读使能
	//input wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk

	output wire [17:0] 	mac_rx_que_fifo_dout			,//输出数据
	output wire 		mac_rx_que_fifo_empty			,	//读空信号
	output wire 		mac_rx_que_fifo_almost_empty	,		//读将空信号
	output wire 		mac_rx_que_fifo_underflow		,	//读溢出信号
	//-----------------------------------------------------------------------------

	//------------------------tx_fifo相关面向LLC接口---------------------------
	input wire 			mac_tx_fifo_wr_clk	,//tx_fifo写时钟
	input wire [63:0] 	mac_tx_fifo_din		,//tx_fifo写数据
	input wire 			mac_tx_fifo_wr_en	,//tx_fifo写使能

	output wire mac_tx_fifo_full			, //tx_fifo满信号
	output wire mac_tx_fifo_almost_full		, //tx_fifo将满信号
	output wire mac_tx_fifo_overflow		, //tx_fifo 写溢出信号
	//------------------------------------------------------------------

    //------------------------tx_que_fifo相关面向LLC接口-----------------------------
	input wire 			mac_tx_que_fifo_wr_en	,//写使能
	input wire [17:0] 	mac_tx_que_fifo_din		,//输入数据
	//input wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk

	output wire mac_tx_que_fifo_full		,	//写满信号
	output wire mac_tx_que_fifo_almost_full	,	//写将满信号
	output wire mac_tx_que_fifo_overflow		//写溢出信号
	//-----------------------------------------------------------------------------
);

//----------------------------------------------wire-reg----------------------------------------------------
//--                                                                                                    ----
//--                                                                                                    ----
//----------------------------------------------------------------------------------------------------------

//rx_fifo相关wire
wire		mac_rx_fifo_wr_clk;
wire [7:0]	mac_rx_fifo_din;
wire		mac_rx_fifo_wr_en;
wire		mac_rx_fifo_full;
wire		mac_rx_fifo_almost_full;
wire		mac_rx_fifo_overflow;//输出MAC fifo 写溢出

wire 			mac_rx_que_fifo_full;
wire 			mac_rx_que_fifo_almost_full;
wire 			mac_rx_que_fifo_overflow;
wire 			mac_rx_que_fifo_wr_en;
wire [17:0] 	mac_rx_que_fifo_din;

wire [2:0] data_added;
wire data_added_en;

//tx_fifo相关wire
wire 		mac_tx_fifo_rd_clk; //读时钟
wire 		mac_tx_fifo_rd_en; //读使能
wire [7:0] 	mac_tx_fifo_dout; //读数据
wire 		mac_tx_fifo_almost_empty; //读将空信号
wire 		mac_tx_fifo_empty; //读空信号
wire 		mac_tx_fifo_underflow; //读溢出信号

wire [17:0] 	mac_tx_que_fifo_dout			;
wire 			mac_tx_que_fifo_empty			;
wire 			mac_tx_que_fifo_almost_empty	;
wire 			mac_tx_que_fifo_underflow		;
wire 			mac_tx_que_fifo_rd_en;

//gmii相关wire
wire gmii_rx_clk;
wire gmii_rx_dv;
wire [7:0] gmii_rxd;

wire gmii_tx_clk;
wire gmii_tx_en;
wire [7:0] gmii_txd;

//MDIO相关wire
wire [4:0] REG_addr;//读取寄存器地址  input wire [4:0]
wire [15:0] reg_data;
wire reg_data_en;//PHY寄存器数据有效信号 output reg
wire MDIO_clk;

//reg_ctl相关wire
wire [1:0] 	duplex_mode;    //双工模式   10：full 01：half							output wire [1:0] 	
wire [2:0] 	speed_mode;     //速度模式    100：1000Mbps 010：100Mbps 001：10Mbps		output wire [2:0] 	

//控制模块相关wire
wire tx_busy;

//时钟模块相关wire
wire mac_clk;

//RGMII与GMII转换模块
gmii_to_rgmii gmii_to_rgmii_inst(
    .rgmii_rxc		(rgmii_rxc),   //RGMII接收时钟				input wire 		    
    .rgmii_rx_ctl	(rgmii_rx_ctl),   //RGMII接收数据控制信号	input wire 		    	
    .rgmii_rxd		(rgmii_rxd),   //RGMII接收数据				input wire [3:0] 	

    .gmii_rx_clk	(gmii_rx_clk),    //GMII接收时钟			output wire 		
    .gmii_rx_dv		(gmii_rx_dv),     //GMII接收数据有效信号	output wire 		
    .gmii_rxd		(gmii_rxd),  //GMII接收数据				output wire [7:0] 	

    .gmii_tx_clk	(gmii_tx_clk),    //GMII发送时钟				input wire 			
    .gmii_tx_en		(gmii_tx_en),     //GMII发送数据有效信号		input wire 				
    .gmii_txd		(gmii_txd),   //GMII发送数据					input wire [7:0] 	

    .rgmii_txc		(rgmii_txc),      //RGMII发送时钟			output wire 			
    .rgmii_tx_ctl	(rgmii_tx_ctl),    //RGMII发送数据控制信号	output wire 				
    .rgmii_txd		(rgmii_txd)			//RGMII输出数据			output wire [3:0] 	
);

clock_ctl clock_ctl_inst(
    .sys_clk        (sys_clk), //系统时钟 input wire 
    .sys_rst_n      (sys_rst_n),   //input wire 

    .speed_mode     (speed_mode),    //速度模式	100：1000Mbps 010：100Mbps 001：10Mbps  input wire [2:0] 

    .mac_clk    	(mac_clk), //output wire 
    .MDIO_clk       (MDIO_clk) //MDIO时钟    output wire 
);

//MDIO模块
MDIO MDIO_inst(
    //------------------------------系统信号---------------------------------
    .MDIO_clk    (MDIO_clk),     //input wire 
    .sys_rst_n  (sys_rst_n),   //input wire 
    //----------------------------------------------------------------------
    
    //------------------------reg_ctl模块信号--------------------------------
    .rd_PHYreg_en  (rd_PHYreg_en),    //读取寄存器使能信号 input wire
    .REG_addr   (REG_addr),    //读取寄存器地址  input wire [4:0] 

    .reg_data     (reg_data),      //                   output reg [15:0] 
    .reg_data_en  (reg_data_en),    //PHY寄存器数据有效信号 output reg 
    //----------------------------------------------------------------------

    //------------------------PHY接口信号------------------------------------
    .MDIO_data    (MDIO_data), //PHY管理数据 inout wire 

    .mdc          (mdc)      //PHY管理时钟         output wire  
    //----------------------------------------------------------------------
);

//reg_ctl模块
reg_ctl reg_ctl_inst(
    //---------------------------系统信号-------------------------------
    .MDIO_clk		(MDIO_clk),	//input wire
    .sys_rst_n		(sys_rst_n),	//input wire
    //-----------------------------------------------------------------

    //--------------------------MDIO模块信号-----------------------------
    .reg_data_en	(reg_data_en),         //PHY寄存器数据有效信号 input wire 			
    .reg_data		(reg_data),     		//PHY某个寄存器的数据 input wire [15:0] 	

    .REG_addr		(REG_addr),      //寄存器地址			output reg [4:0] 	
    .rd_PHYreg_en	(rd_PHYreg_en),       //读取PHY寄存器信号	output reg 			
    //------------------------------------------------------------------


    //output wire [4:0] PHY_addr, //暂时用不到
    .duplex_mode	(duplex_mode), //双工模式   10：full 01：half							output wire [1:0] 	
    .speed_mode		(speed_mode) //速度模式    100：1000Mbps 010：100Mbps 001：10Mbps		output wire [2:0] 	

    //output reg rd_MACreg_en   //MAC寄存器数据可读取信号
);

//接收控制模块
MAC_rx_ctl_top MAC_rx_ctl_top_inst(
    //---------------------系统信号---------------------
    .sys_rst_n  (sys_rst_n),      //input wire 
    //-------------------------------------------------

	//------------------------gmii接口--------------------------------
	.gmii_rx_clk    (gmii_rx_clk),//GMII接收时钟 input wire 
	.gmii_rx_dv     (gmii_rx_dv),//GMII接收数据有效信号 input wire 
	.gmii_rxd       (gmii_rxd),//GMII接收数据 input wire [7:0] 
	//----------------------------------------------------------------
	
	//-------------------------其他------------------------------------
	.tx_busy        (tx_busy),//半双工情况下发送忙信号 input wire 
	.duplex_mode    (duplex_mode),//全双工：10 半双工：01 input wire [1:0] 
	.speed_mode     (speed_mode), //速度模式	100：1000Mbps 010：100Mbps 001：10Mbps  input wire [2:0] 
	//----------------------------------------------------------------

	//------------------------rx_que_fifo相关信号-----------------------------
	.mac_rx_que_fifo_full           (mac_rx_que_fifo_full),	//写满信号 input wire 
	.mac_rx_que_fifo_almost_full    (mac_rx_que_fifo_almost_full),		//写将满信号 input wire 
	.mac_rx_que_fifo_overflow       (mac_rx_que_fifo_overflow),	//写溢出信号 input wire 

	.mac_rx_que_fifo_wr_en      (mac_rx_que_fifo_wr_en),//写使能 output reg 
	.mac_rx_que_fifo_din        (mac_rx_que_fifo_din),//输入数据 output wire [17:0] 
	//output wire mac_rx_que_fifo_clk,	//同mac_rx_fifo_wr_clk
	//------------------------------------------------------------------------

    //---------------------rx_fifo相关接口------------------------------
	.mac_rx_fifo_full           (mac_rx_fifo_full), 	//写满信号input wire 
	.mac_rx_fifo_almost_full    (mac_rx_fifo_almost_full), 	//写将满信号input wire 
	.mac_rx_fifo_overflow       (mac_rx_fifo_overflow), 	//写溢出信号input wire 

	.mac_rx_fifo_wr_clk     (mac_rx_fifo_wr_clk),//写时钟 output wire 
    .mac_rx_fifo_din        (mac_rx_fifo_din),//输入数据8bit output wire [7:0] 
	.mac_rx_fifo_wr_en      (mac_rx_fifo_wr_en),//写使能 output wire 

	.data_added		(data_added),//需要补充的长度output wire [2:0] 	
	.data_added_en	(data_added_en)//补充长度使能output wire 		
	//-----------------------------------------------------------------
);

//rx_fifo接收缓存模块
rx_fifo_top rx_fifo_top_inst(
    //------------------------------系统信号---------------------------------
    .sys_rst_n  (sys_rst_n),	//系统复位信号  input wire 
	.mac_clk    (gmii_rx_clk),		//(接收时钟)   input wire 
    //----------------------------------------------------------------------

	//----------------------rx_fifo相关面向LLC接口----------------------------
	.mac_rx_fifo_rd_clk (mac_rx_fifo_rd_clk),//外部传入MACfifo读时钟input wire 
	.mac_rx_fifo_rd_en  (mac_rx_fifo_rd_en),//外部输入MAC fifo读使能input wire 

	.mac_rx_fifo_dout           (mac_rx_fifo_dout),//输出MAC fifo 存储数据        output wire [63:0]  
	.mac_rx_fifo_empty          (mac_rx_fifo_empty),//输出MAC fifo empty           output wire         
	.mac_rx_fifo_almost_empty   (mac_rx_fifo_almost_empty),//输出MAC fifo almost_empty    output wire         
	.mac_rx_fifo_underflow      (mac_rx_fifo_underflow),//输出MAC读溢出                output wire         
	//------------------------------------------------------------------------

	//---------------------rx_fifo相关面向MAC接口------------------------------------------
	.mac_rx_fifo_wr_clk  (mac_rx_fifo_wr_clk),//rx_fifo写时钟			rx_que_fifo写时钟   input wire          
    .mac_rx_fifo_din     (mac_rx_fifo_din),//输入数据			CRC输入待校验的8位数    input wire [7:0]    
	.mac_rx_fifo_wr_en   (mac_rx_fifo_wr_en),//写使能                                   input wire          
	.data_added          (data_added),//需要补充的长度                           input wire [2:0]    
	.data_added_en       (data_added_en),//补充长度使能                             input wire          

	.mac_rx_fifo_full            (mac_rx_fifo_full), 	//写满信号	output wire 
	.mac_rx_fifo_almost_full     (mac_rx_fifo_almost_full), 	//写将满信号output wire 
	.mac_rx_fifo_overflow        (mac_rx_fifo_overflow), 	//写溢出信号output wire 
	//------------------------------------------------------------------------------

	//------------------------rx_que_fifo相关面向MAC接口-----------------------------
	.mac_rx_que_fifo_wr_en		(mac_rx_que_fifo_wr_en),//写使能	input wire 			
	.mac_rx_que_fifo_din		(mac_rx_que_fifo_din),//输入数据	input wire [17:0] 	
	//input wire mac_rx_que_fifo_wr_clk,	//同mac_rx_fifo_wr_clk

	.mac_rx_que_fifo_full			(mac_rx_que_fifo_full),	//写满信号	output wire 
	.mac_rx_que_fifo_almost_full	(mac_rx_que_fifo_almost_full),	//写将满信号output wire 
	.mac_rx_que_fifo_overflow		(mac_rx_que_fifo_overflow),	//写溢出信号output wire 
	//------------------------------------------------------------------------

	//------------------------rx_que_fifo相关面向LLC接口-----------------------------
	.mac_rx_que_fifo_rd_en	(mac_rx_que_fifo_rd_en),//读使能	input wire 			

	//input wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	.mac_rx_que_fifo_dout	(mac_rx_que_fifo_dout),//输出数据	output wire [17:0] 	
	.mac_rx_que_fifo_empty			(mac_rx_que_fifo_empty),	//读空信号	output wire 
	.mac_rx_que_fifo_almost_empty	(mac_rx_que_fifo_almost_empty),	//读将空信号output wire 
	.mac_rx_que_fifo_underflow		(mac_rx_que_fifo_underflow)	//读溢出信号output wire 
	//------------------------------------------------------------------------
);

//tx_fifo发送缓存模块
tx_fifo_top tx_fifo_top_inst(
    //------------------------------系统信号---------------------------------
    .sys_rst_n		(sys_rst_n),//系统复位信号						input wire 
	.mac_clk		(mac_clk),//MAC控制器全局系统时钟(发送时钟)	input wire 
    //----------------------------------------------------------------------

	//----------------------tx_fifo相关面向MAC接口----------------------------
	.mac_tx_fifo_rd_clk	(mac_tx_fifo_rd_clk),//外部传入MACfifo读时钟	input wire 
	.mac_tx_fifo_rd_en	(mac_tx_fifo_rd_en),//外部输入MAC fifo读使能	input wire 

	.mac_tx_fifo_dout			(mac_tx_fifo_dout),//输出MAC fifo 存储数据		output wire [7:0] 	
	.mac_tx_fifo_empty			(mac_tx_fifo_empty),//输出MAC fifo empty			output wire 		
	.mac_tx_fifo_almost_empty	(mac_tx_fifo_almost_empty),//输出MAC fifo almost_empty	output wire 		
	.mac_tx_fifo_underflow		(mac_tx_fifo_underflow),//输出MAC读溢出				output wire 		
	//------------------------------------------------------------------------

    //---------------------tx_fifo相关面向LLC接口------------------------------------------
	.mac_tx_fifo_wr_clk		(mac_tx_fifo_wr_clk),//tx_fifo写时钟			tx_que_fifo写时钟	input wire 			
    .mac_tx_fifo_din		(mac_tx_fifo_din),//输入数据			CRC输入待校验的8位数据	input wire [63:0] 	
	.mac_tx_fifo_wr_en		(mac_tx_fifo_wr_en),//写使能										input wire 			

	.mac_tx_fifo_full				(mac_tx_fifo_full), 	//写满信号		output wire 
	.mac_tx_fifo_almost_full		(mac_tx_fifo_almost_full), 	//写将满信号	output wire 
	.mac_tx_fifo_overflow			(mac_tx_fifo_overflow), 	//写溢出信号	output wire 
	//------------------------------------------------------------------------------

    //------------------------tx_que_fifo相关面向LLC接口-----------------------------
	.mac_tx_que_fifo_wr_en		(mac_tx_que_fifo_wr_en),//写使能	input wire 			
	.mac_tx_que_fifo_din		(mac_tx_que_fifo_din),//输入数据	input wire [17:0] 	
	//input wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk

	.mac_tx_que_fifo_full			(mac_tx_que_fifo_full),	//写满信号		output wire 
	.mac_tx_que_fifo_almost_full	(mac_tx_que_fifo_almost_full),	//写将满信号	output wire 
	.mac_tx_que_fifo_overflow		(mac_tx_que_fifo_overflow),	//写溢出信号	output wire 
	//-----------------------------------------------------------------------------

	//------------------------tx_que_fifo相关面向MAC接口-----------------------------
	.mac_tx_que_fifo_rd_en	(mac_tx_que_fifo_rd_en),//读使能	input wire 
	//input wire mac_tx_que_fifo_rd_clk,	//同mac_tx_fifo_rd_clk

	.mac_tx_que_fifo_dout			(mac_tx_que_fifo_dout),//输出数据		output wire [17:0] 	
	.mac_tx_que_fifo_empty			(mac_tx_que_fifo_empty),//读空信号		output wire 		
	.mac_tx_que_fifo_almost_empty	(mac_tx_que_fifo_almost_empty),//读将空信号	output wire 		
	.mac_tx_que_fifo_underflow		(mac_tx_que_fifo_underflow) //读溢出信号	output wire 		
	//-----------------------------------------------------------------------------
);


endmodule
