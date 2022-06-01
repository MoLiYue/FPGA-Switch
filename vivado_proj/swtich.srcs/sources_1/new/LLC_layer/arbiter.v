module arbiter(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

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
	input wire [7:0]			mac_rx_que_fifo_empty			,//读空信号
	input wire [7:0]			mac_rx_que_fifo_almost_empty	,//读将空信号
	input wire [7:0]			mac_rx_que_fifo_underflow		,//读溢出信号

	output wire [7:0]			mac_rx_que_fifo_rd_en			,//读使能
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//----------------------------------------------------------------------------------

	//-----------------------------------tx_fifo相关接口---------------------------------
    input wire [7:0]	mac_tx_fifo_full        ,//tx_fifo满信号
	input wire [7:0]	mac_tx_fifo_almost_full ,//tx_fifo将满信号
	input wire [7:0]	mac_tx_fifo_overflow    ,//tx_fifo 写溢出信号
	input wire [7:0] 	mac_tx_fifo_prog_empty	,//可编程空信号，用于判定可以写入信息

	output wire [7:0] 	mac_tx_fifo_wr_clk      ,//tx_fifo写时钟
	output wire [511:0] mac_tx_fifo_din  		,//tx_fifo写数据
	output wire [7:0]	mac_tx_fifo_wr_en       ,//tx_fifo写使能
	//-----------------------------------------------------------------------------------

	//------------------------tx_que_fifo相关接口-------------------------------------------
	input wire [7:0]	mac_tx_que_fifo_full			,	//写满信号
	input wire [7:0]	mac_tx_que_fifo_almost_full	,	//写将满信号
	input wire [7:0]	mac_tx_que_fifo_overflow		,	//写溢出信号

	output wire [7:0]			mac_tx_que_fifo_wr_en	,//写使能
	output wire [143:0] 		mac_tx_que_fifo_din		,//输入数据
	//output wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk
	//--------------------------------------------------------------------------------------

//-----------------------------------------面向ctl_center的接口------------------------------------------
	//---------------------------------------rx相关-----------------------------------------
    output wire [2:0] rx_mac_choose,        //接收端MAC选择信号
	output wire [15:0] mac_length,           //接收mac地址长度
    output wire [7:0] mac_length_ju,          //8bit转64bit mac帧长度
    output wire mac_length_en,               //mac长度数据有效信号
	//----------------------------------------tx相关----------------------------------------
	output wire [2:0] tx_mac_choose,			//发送端MAC选择信号
	//--------------------------------选择后的rx_fifo相关接口---------------------------------
	//input wire rx_fifo_rd_clk      ,//外部传入MACfifo读时钟		使用sys_clk

	output wire rx_fifo_rd_en       ,//外部输入MAC fifo读使能
	output reg [63:0] rx_fifo_dout  ,//输出MAC fifo 存储数据
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
	//--------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------
);

//rx时钟信号
assign mac_rx_fifo_rd_clk = {sys_clk,sys_clk,sys_clk,sys_clk,sys_clk,sys_clk,sys_clk,sys_clk};


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

//rx_fifo_rd_en接收读取使能
assign rx_fifo_rd_en = mac_rx_fifo_rd_en[0] || mac_rx_fifo_rd_en[1] || 
						mac_rx_fifo_rd_en[2] || mac_rx_fifo_rd_en[3] || 
						mac_rx_fifo_rd_en[4] || mac_rx_fifo_rd_en[5] || 
						mac_rx_fifo_rd_en[6] || mac_rx_fifo_rd_en[7];

always @(*) begin
	if(!sys_rst_n)
		rx_fifo_dout = 64'd0;
	else 
		case(rx_mac_choose)
			3'd0: rx_fifo_dout = mac_rx_fifo_dout[64*0+63:64*0];
			3'd1: rx_fifo_dout = mac_rx_fifo_dout[64*1+63:64*1];
			3'd2: rx_fifo_dout = mac_rx_fifo_dout[64*2+63:64*2];
			3'd3: rx_fifo_dout = mac_rx_fifo_dout[64*3+63:64*3];
			3'd4: rx_fifo_dout = mac_rx_fifo_dout[64*4+63:64*4];
			3'd5: rx_fifo_dout = mac_rx_fifo_dout[64*5+63:64*5];
			3'd6: rx_fifo_dout = mac_rx_fifo_dout[64*6+63:64*6];
			3'd7: rx_fifo_dout = mac_rx_fifo_dout[64*7+63:64*7];
		endcase
end
//rx信号选择模块
arbiter_rx arbiter_rx_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk		(sys_clk),//input wire 
    .sys_rst_n		(sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

	//-----------------------------面向ctl_center的接口------------------------------------------
    //.ctl_center_rx_busy	(ctl_center_rx_busy),      //控制中心正在接收数据input wire 
    .mac_length		(mac_length),           //接收mac地址长度output reg [15:0] 
    .mac_length_ju	(mac_length_ju),          //8bit转64bit mac帧长度output reg [7:0] 
    .mac_length_en	(mac_length_en),               //mac长度数据有效信号output reg 
    .rx_mac_choose	(rx_mac_choose),        //接收端MAC选择信号output reg [2:0] 
	//-----------------------------------------------------------------------------------------

    //--------------------------------rx_fifo相关接口-----------------------------------
	.mac_rx_fifo_empty        (mac_rx_fifo_empty),//输出MAC fifo empty			input wire [7:0] 
	.mac_rx_fifo_almost_empty (mac_rx_fifo_almost_empty),//输出MAC fifo almost_empty	input wire [7:0] 
	.mac_rx_fifo_underflow    (mac_rx_fifo_underflow),//输出MAC读溢出				input wire [7:0] 

	.mac_rx_fifo_rd_en      	(mac_rx_fifo_rd_en),//外部输入MAC fifo读使能output reg [7:0] 
	//----------------------------------------------------------------------------------

    //------------------------rx_que_fifo相关接口-----------------------------
	.mac_rx_que_fifo_dout			(mac_rx_que_fifo_dout),//输出数据		input wire [143:0] 	        
	.mac_rx_que_fifo_empty			(mac_rx_que_fifo_empty),//读空信号		input wire [7:0]			
	.mac_rx_que_fifo_almost_empty	(mac_rx_que_fifo_almost_empty),//读将空信号	input wire [7:0]			
	.mac_rx_que_fifo_underflow		(mac_rx_que_fifo_underflow),//读溢出信号	input wire [7:0]			

	.mac_rx_que_fifo_rd_en			(mac_rx_que_fifo_rd_en)   //读使能	output reg [7:0]		    
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//-----------------------------------------------------------------------------
);


//tx信号选择模块

endmodule