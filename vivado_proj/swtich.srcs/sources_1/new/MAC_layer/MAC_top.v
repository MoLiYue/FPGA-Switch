module MAC_top(
    input wire sys_rst_n,	//系统复位信号
	input wire mac_clk,		//MAC控制器全局系统时钟(发送时钟)
	
	//---------------------------MDIO接口------------------------------
	//input wire rd_PHYreg_en,//读取寄存器使能信号 input wire

	inout wire MDIO_data,			//PHY管理数据 inout wire  

	output wire mdc,//PHY管理时钟         output wire
	//-----------------------------------------------------------------

	//----------------------------PHY接口------------------------------
	input wire			rgmii_rxc,		//MAC控制器接收数据时钟
	input wire			rgmii_rx_ctl,
	input wire [3:0]	rgmii_rxd,

    output wire 		rgmii_txc	,      //RGMII发送时钟
    output wire 		rgmii_tx_ctl,    //RGMII发送数据控制信号
    output wire [3:0] 	rgmii_txd,           //RGMII 发送数据
	//-----------------------------------------------------------------

	//----------------------rx_fifo相关接口----------------------------
	input wire mac_rx_fifo_rd_clk,//外部传入MACfifo读时钟
	input wire mac_rx_fifo_rd_en,//外部输入MAC fifo读使能

	output wire [63:0] mac_rx_fifo_dout,//输出MAC fifo 存储数据
	output wire mac_rx_fifo_empty,//输出MAC fifo empty
	output wire mac_rx_fifo_almost_empty,//输出MAC fifo almost_empty
	output wire mac_rx_fifo_underflow,//输出MAC读溢出
	//-----------------------------------------------------------------

	//------------------------tx_fifo相关接口---------------------------
	input wire mac_tx_fifo_wr_clk,//tx_fifo写时钟
	input wire [63:0] mac_tx_fifo_din,//tx_fifo写数据
	input wire mac_tx_fifo_wr_en,//tx_fifo写使能

	output wire mac_tx_fifo_full, //tx_fifo满信号
	output wire mac_tx_fifo_almost_full, //tx_fifo将满信号
	output wire mac_tx_fifo_overflow //tx_fifo 写溢出信号
	//------------------------------------------------------------------
);
//rx_fifo相关wire
wire		mac_rx_fifo_wr_clk;
wire [7:0]	mac_rx_fifo_din;
wire		mac_rx_fifo_wr_en;
wire		mac_rx_fifo_full;
wire		mac_rx_fifo_almost_full;
wire		mac_rx_fifo_overflow;//输出MAC fifo 写溢出

//tx_fifo相关wire
wire mac_tx_fifo_rd_clk; //读时钟
wire mac_tx_fifo_rd_en; //读使能
wire mac_tx_fifo_dout; //读数据
wire mac_tx_fifo_almost_empty; //读将空信号
wire mac_tx_fifo_empty; //读空信号
wire mac_tx_fifo_underflow; //读溢出信号


//MDIO相关wire
wire [4:0] REG_addr;//读取寄存器地址  input wire [4:0]
wire [15:0] reg_data;
wire reg_data_en;//PHY寄存器数据有效信号 output reg

//reg_ctl相关wire
wire [1:0] 	duplex_mode;    //双工模式   10：full 01：half							output wire [1:0] 	
wire [2:0] 	speed_mode;     //速度模式    100：1000Mbps 010：100Mbps 001：10Mbps		output wire [2:0] 	

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


//MDIO模块
MDIO MDIO_inst(
    .mac_clk    (mac_clk),     //input wire 
    .sys_rst_n  (sys_rst_n),   //input wire 
    .rd_PHYreg_en  (rd_PHYreg_en),    //读取寄存器使能信号 input wire
    .REG_addr   (REG_addr),    //读取寄存器地址  input wire [4:0] 

    .MDIO_data    (MDIO_data), //PHY管理数据 inout wire 

    .mdc          (mdc),      //PHY管理时钟         output wire 
    .reg_data     (reg_data),      //                   output reg [15:0] 
    .reg_data_en  (reg_data_en)    //PHY寄存器数据有效信号 output reg  
);

//reg_ctl模块
reg_ctl reg_ctl_inst(
    //---------------------------系统信号-------------------------------
    .mac_clk		(mac_clk),	//input wire
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
    .speed_mode		(speed_mode), //速度模式    100：1000Mbps 010：100Mbps 001：10Mbps		output wire [2:0] 	

    //output reg rd_MACreg_en   //MAC寄存器数据可读取信号
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
endmodule
