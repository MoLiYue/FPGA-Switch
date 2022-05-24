module Switch(
    //------------------------------系统信号---------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //----------------------------------------------------------------------

	//----------------------------PHY接口------------------------------
	input wire	[7:0]		rgmii_rxc		,		//MAC控制器接收数据时钟
	input wire	[7:0]		rgmii_rx_ctl	,
	input wire  [31:0]	    rgmii_rxd		,

    output wire [7:0]		rgmii_txc		,      //RGMII发送时钟
    output wire [7:0]		rgmii_tx_ctl	,    //RGMII发送数据控制信号
    output wire [31:0] 	    rgmii_txd		,           //RGMII 发送数据
	//-----------------------------------------------------------------

	//---------------------------MDIO接口------------------------------
	//input wire rd_PHYreg_en,//读取寄存器使能信号 input wire

	inout wire  [7:0]   MDIO_data	,			//PHY管理数据 inout wire  

	output wire [7:0]   mdc			//PHY管理时钟         output wire
	//-----------------------------------------------------------------
);

//
wire mac_rx_fifo_rd_clk	[7:0];
wire mac_rx_fifo_rd_en	[7:0];

wire [63:0] mac_rx_fifo_dout			[7:0];
wire mac_rx_fifo_empty			[7:0];
wire mac_rx_fifo_almost_empty	[7:0];
wire mac_rx_fifo_underflow		[7:0];

wire mac_rx_que_fifo_rd_en	[7:0];

wire [17:0] mac_rx_que_fifo_dout			[7:0];
wire mac_rx_que_fifo_empty			[7:0];
wire mac_rx_que_fifo_almost_empty	[7:0];
wire mac_rx_que_fifo_underflow		[7:0];

wire mac_tx_fifo_wr_clk	    [7:0];
wire [63:0] mac_tx_fifo_din		[7:0];
wire mac_tx_fifo_wr_en	    [7:0];

wire mac_tx_fifo_full		[7:0];
wire mac_tx_fifo_almost_full[7:0];
wire mac_tx_fifo_overflow	[7:0];

wire mac_tx_que_fifo_wr_en	[7:0];
wire [17:0] mac_tx_que_fifo_din	[7:0];

wire mac_tx_que_fifo_full		[7:0];
wire mac_tx_que_fifo_almost_full[7:0];
wire mac_tx_que_fifo_overflow	[7:0];

//mac_top
genvar i;
generate for (i = 0; i<8; i = i+1)
    begin: mac_bus
        MAC_top MAC_top_inst(
            //------------------------------系统信号---------------------------------
            .sys_rst_n	    (sys_rst_n),	    //系统复位信号                  input wire 
        	.sys_clk		(sys_clk),		//MAC控制器全局系统时钟(100MHz) input wire 
            //----------------------------------------------------------------------

        	//---------------------------MDIO接口------------------------------
        	//input wire rd_PHYreg_en,//读取寄存器使能信号 input wire

        	.MDIO_data	    (MDIO_data[i]),			//PHY管理数据 inout wire  

        	.mdc			(mdc[i]),//PHY管理时钟         output wire
        	//-----------------------------------------------------------------

        	//----------------------------PHY接口------------------------------
        	.rgmii_rxc		(rgmii_rxc[i]),		    //MAC控制器接收数据时钟     input wire			
        	.rgmii_rx_ctl	(rgmii_rx_ctl[i]),       //                            input wire			
        	.rgmii_rxd		(rgmii_rxd[4*i+3:4*i]),        //                           input wire [3:0]	

            .rgmii_txc		(rgmii_txc[i]),         //RGMII发送时钟              output wire 		
            .rgmii_tx_ctl	(rgmii_tx_ctl[i]),      //RGMII发送数据控制信号        output wire 		
            .rgmii_txd		(rgmii_txd[4*i+3:4*i]),           //RGMII 发送数据        output wire [3:0] 	
        	//-----------------------------------------------------------------

        	//----------------------rx_fifo相关面向LLC接口----------------------------
        	.mac_rx_fifo_rd_clk	(mac_rx_fifo_rd_clk[i]),//外部传入MACfifo读时钟    input wire 
        	.mac_rx_fifo_rd_en	(mac_rx_fifo_rd_en[i]),//外部输入MAC fifo读使能   input wire 

        	.mac_rx_fifo_dout				(mac_rx_fifo_dout[i]),//输出MAC fifo 存储数据        output wire [63:0] 	
        	.mac_rx_fifo_empty				(mac_rx_fifo_empty[i]),//输出MAC fifo empty           output wire 		
        	.mac_rx_fifo_almost_empty		(mac_rx_fifo_almost_empty[i]),//输出MAC fifo almost_empty    output wire 		
        	.mac_rx_fifo_underflow			(mac_rx_fifo_underflow[i]),//输出MAC读溢出                output wire 		
        	//-----------------------------------------------------------------

        	//------------------------rx_que_fifo相关面向LLC接口-----------------------------
        	.mac_rx_que_fifo_rd_en	(mac_rx_que_fifo_rd_en[i]),//读使能       input wire 
        	//input wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk

        	.mac_rx_que_fifo_dout			(mac_rx_que_fifo_dout[i]),//输出数据     output wire [17:0] 	
        	.mac_rx_que_fifo_empty			(mac_rx_que_fifo_empty[i]),//读空信号     output wire 		
        	.mac_rx_que_fifo_almost_empty	(mac_rx_que_fifo_almost_empty[i]),//读将空信号   output wire 		
        	.mac_rx_que_fifo_underflow		(mac_rx_que_fifo_underflow[i]),//读溢出信号   output wire 		
        	//-----------------------------------------------------------------------------

        	//------------------------tx_fifo相关面向LLC接口---------------------------
        	.mac_tx_fifo_wr_clk	    (mac_tx_fifo_wr_clk[i]),//tx_fifo写时钟    input wire 			
        	.mac_tx_fifo_din		(mac_tx_fifo_din[i]),//tx_fifo写数据    input wire [63:0] 	
        	.mac_tx_fifo_wr_en	    (mac_tx_fifo_wr_en[i]),//tx_fifo写使能    input wire 			

        	.mac_tx_fifo_full			    (mac_tx_fifo_full[i]), //tx_fifo满信号       output wire 
        	.mac_tx_fifo_almost_full		(mac_tx_fifo_almost_full[i]), //tx_fifo将满信号     output wire 
        	.mac_tx_fifo_overflow		    (mac_tx_fifo_overflow[i]), //tx_fifo 写溢出信号  output wire 
        	//------------------------------------------------------------------

            //------------------------tx_que_fifo相关面向LLC接口-----------------------------
        	.mac_tx_que_fifo_wr_en	    (mac_tx_que_fifo_wr_en[i]),//写使能   input wire 			
        	.mac_tx_que_fifo_din		(mac_tx_que_fifo_din[i]),//输入数据 input wire [17:0] 	
        	//input wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk

        	.mac_tx_que_fifo_full		    (mac_tx_que_fifo_full[i]),	//写满信号      output wire 
        	.mac_tx_que_fifo_almost_full	(mac_tx_que_fifo_almost_full[i]),	//写将满信号    output wire 
        	.mac_tx_que_fifo_overflow		(mac_tx_que_fifo_overflow[i])    //写溢出信号    output wire 
        	//-----------------------------------------------------------------------------
        );
    end
endgenerate

//llc_top
LLC_top LLC_top_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk		(sys_clk),//input wire 
    .sys_rst_n		(sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------

	//--------------------------------rx_fifo相关接口-----------------------------------
    .mac_rx_fifo_dout			({	mac_rx_fifo_dout[7],
									mac_rx_fifo_dout[6],
									mac_rx_fifo_dout[5],
									mac_rx_fifo_dout[4],
									mac_rx_fifo_dout[3],
									mac_rx_fifo_dout[2],
									mac_rx_fifo_dout[1],
									mac_rx_fifo_dout[0]
								}),//输出MAC fifo 存储数据		input wire [511:0] 	
	.mac_rx_fifo_empty        	({	mac_rx_fifo_empty[7],
									mac_rx_fifo_empty[6],
									mac_rx_fifo_empty[5],
									mac_rx_fifo_empty[4],
									mac_rx_fifo_empty[3],
									mac_rx_fifo_empty[2],
									mac_rx_fifo_empty[1],
									mac_rx_fifo_empty[0]
								}),//输出MAC fifo empty			input wire [7:0] 	
	.mac_rx_fifo_almost_empty 	({	mac_rx_fifo_almost_empty[7],
									mac_rx_fifo_almost_empty[6],
									mac_rx_fifo_almost_empty[5],
									mac_rx_fifo_almost_empty[4],
									mac_rx_fifo_almost_empty[3],
									mac_rx_fifo_almost_empty[2],
									mac_rx_fifo_almost_empty[1],
									mac_rx_fifo_almost_empty[0]
								}),//输出MAC fifo almost_empty	input wire [7:0] 	
	.mac_rx_fifo_underflow    	({	mac_rx_fifo_underflow[7],
									mac_rx_fifo_underflow[6],
									mac_rx_fifo_underflow[5],
									mac_rx_fifo_underflow[4],
									mac_rx_fifo_underflow[3],
									mac_rx_fifo_underflow[2],
									mac_rx_fifo_underflow[1],
									mac_rx_fifo_underflow[0]
								}),//输出MAC读溢出				input wire [7:0] 	

	.mac_rx_fifo_rd_clk      	({	mac_rx_fifo_rd_clk[7],
									mac_rx_fifo_rd_clk[6],
									mac_rx_fifo_rd_clk[5],
									mac_rx_fifo_rd_clk[4],
									mac_rx_fifo_rd_clk[3],
									mac_rx_fifo_rd_clk[2],
									mac_rx_fifo_rd_clk[1],
									mac_rx_fifo_rd_clk[0]
								}),//外部传入MACfifo读时钟	output wire [7:0] 
	.mac_rx_fifo_rd_en       	({	mac_rx_fifo_rd_en[7],
									mac_rx_fifo_rd_en[6],
									mac_rx_fifo_rd_en[5],
									mac_rx_fifo_rd_en[4],
									mac_rx_fifo_rd_en[3],
									mac_rx_fifo_rd_en[2],
									mac_rx_fifo_rd_en[1],
									mac_rx_fifo_rd_en[0]
								}),//外部输入MAC fifo读使能	output wire [7:0] 
	//----------------------------------------------------------------------------------

	//------------------------rx_que_fifo相关接口----------------------------------
	.mac_rx_que_fifo_dout			({	mac_rx_que_fifo_dout[7],
										mac_rx_que_fifo_dout[6],
										mac_rx_que_fifo_dout[5],
										mac_rx_que_fifo_dout[4],
										mac_rx_que_fifo_dout[3],
										mac_rx_que_fifo_dout[2],
										mac_rx_que_fifo_dout[1],
										mac_rx_que_fifo_dout[0]
									}),//输出数据		input wire [143:0] 	
	.mac_rx_que_fifo_empty			({	mac_rx_que_fifo_empty[7],
										mac_rx_que_fifo_empty[6],
										mac_rx_que_fifo_empty[5],
										mac_rx_que_fifo_empty[4],
										mac_rx_que_fifo_empty[3],
										mac_rx_que_fifo_empty[2],
										mac_rx_que_fifo_empty[1],
										mac_rx_que_fifo_empty[0]
									}),//读空信号		input wire [7:0]	
	.mac_rx_que_fifo_almost_empty	({	mac_rx_que_fifo_almost_empty[7],
										mac_rx_que_fifo_almost_empty[6],
										mac_rx_que_fifo_almost_empty[5],
										mac_rx_que_fifo_almost_empty[4],
										mac_rx_que_fifo_almost_empty[3],
										mac_rx_que_fifo_almost_empty[2],
										mac_rx_que_fifo_almost_empty[1],
										mac_rx_que_fifo_almost_empty[0]
									}),//读将空信号	input wire [7:0]	
	.mac_rx_que_fifo_underflow		({	mac_rx_que_fifo_underflow[7],
										mac_rx_que_fifo_underflow[6],
										mac_rx_que_fifo_underflow[5],
										mac_rx_que_fifo_underflow[4],
										mac_rx_que_fifo_underflow[3],
										mac_rx_que_fifo_underflow[2],
										mac_rx_que_fifo_underflow[1],
										mac_rx_que_fifo_underflow[0]
									}),//读溢出信号	input wire [7:0]	

	.mac_rx_que_fifo_rd_en	({	mac_rx_que_fifo_rd_en[7],
								mac_rx_que_fifo_rd_en[6],
								mac_rx_que_fifo_rd_en[5],
								mac_rx_que_fifo_rd_en[4],
								mac_rx_que_fifo_rd_en[3],
								mac_rx_que_fifo_rd_en[2],
								mac_rx_que_fifo_rd_en[1],
								mac_rx_que_fifo_rd_en[0]
							}),//读使能	output wire 
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//---------------------------------------------------------------------------------

	//-----------------------------------tx_fifo相关接口---------------------------------
    .mac_tx_fifo_full         	({	mac_tx_fifo_full[7],
									mac_tx_fifo_full[6],
									mac_tx_fifo_full[5],
									mac_tx_fifo_full[4],
									mac_tx_fifo_full[3],
									mac_tx_fifo_full[2],
									mac_tx_fifo_full[1],
									mac_tx_fifo_full[0]
								}), //tx_fifo满信号		input wire [7:0]	
	.mac_tx_fifo_almost_full  	({	mac_tx_fifo_almost_full[7],
									mac_tx_fifo_almost_full[6],
									mac_tx_fifo_almost_full[5],
									mac_tx_fifo_almost_full[4],
									mac_tx_fifo_almost_full[3],
									mac_tx_fifo_almost_full[2],
									mac_tx_fifo_almost_full[1],
									mac_tx_fifo_almost_full[0]
								}), //tx_fifo将满信号	input wire [7:0]	
	.mac_tx_fifo_overflow     	({	mac_tx_fifo_overflow[7],
									mac_tx_fifo_overflow[6],
									mac_tx_fifo_overflow[5],
									mac_tx_fifo_overflow[4],
									mac_tx_fifo_overflow[3],
									mac_tx_fifo_overflow[2],
									mac_tx_fifo_overflow[1],
									mac_tx_fifo_overflow[0]
								}),//tx_fifo 写溢出信号	input wire [7:0]	

	.mac_tx_fifo_wr_clk      	({	mac_tx_fifo_wr_clk[7],
									mac_tx_fifo_wr_clk[6],
									mac_tx_fifo_wr_clk[5],
									mac_tx_fifo_wr_clk[4],
									mac_tx_fifo_wr_clk[3],
									mac_tx_fifo_wr_clk[2],
									mac_tx_fifo_wr_clk[1],
									mac_tx_fifo_wr_clk[0]
								}),//tx_fifo写时钟		output wire [7:0]	
	.mac_tx_fifo_din  			({	mac_tx_fifo_din[7],
									mac_tx_fifo_din[6],
									mac_tx_fifo_din[5],
									mac_tx_fifo_din[4],
									mac_tx_fifo_din[3],
									mac_tx_fifo_din[2],
									mac_tx_fifo_din[1],
									mac_tx_fifo_din[0]
								}),//tx_fifo写数据		output wire [511:0] 
	.mac_tx_fifo_wr_en       	({	mac_tx_fifo_wr_en[7],
									mac_tx_fifo_wr_en[6],
									mac_tx_fifo_wr_en[5],
									mac_tx_fifo_wr_en[4],
									mac_tx_fifo_wr_en[3],
									mac_tx_fifo_wr_en[2],
									mac_tx_fifo_wr_en[1],
									mac_tx_fifo_wr_en[0]
								}),//tx_fifo写使能		output wire [7:0]	
	//-----------------------------------------------------------------------------------

	//------------------------tx_que_fifo相关接口-------------------------------------------
	.mac_tx_que_fifo_full			({	mac_tx_que_fifo_full[7],
										mac_tx_que_fifo_full[6],
										mac_tx_que_fifo_full[5],
										mac_tx_que_fifo_full[4],
										mac_tx_que_fifo_full[3],
										mac_tx_que_fifo_full[2],
										mac_tx_que_fifo_full[1],
										mac_tx_que_fifo_full[0]
									}),	//写满信号		input wire [7:0]	
	.mac_tx_que_fifo_almost_full	({	mac_tx_que_fifo_almost_full[7],
										mac_tx_que_fifo_almost_full[6],
										mac_tx_que_fifo_almost_full[5],
										mac_tx_que_fifo_almost_full[4],
										mac_tx_que_fifo_almost_full[3],
										mac_tx_que_fifo_almost_full[2],
										mac_tx_que_fifo_almost_full[1],
										mac_tx_que_fifo_almost_full[0]
									}),	//写将满信号	input wire [7:0]	
	.mac_tx_que_fifo_overflow		({	mac_tx_que_fifo_overflow[7],
										mac_tx_que_fifo_overflow[6],
										mac_tx_que_fifo_overflow[5],
										mac_tx_que_fifo_overflow[4],
										mac_tx_que_fifo_overflow[3],
										mac_tx_que_fifo_overflow[2],
										mac_tx_que_fifo_overflow[1],
										mac_tx_que_fifo_overflow[0]
									}),	//写溢出信号	input wire [7:0]	

	.mac_tx_que_fifo_wr_en		({	mac_tx_que_fifo_wr_en[7],
									mac_tx_que_fifo_wr_en[6],
									mac_tx_que_fifo_wr_en[5],
									mac_tx_que_fifo_wr_en[4],
									mac_tx_que_fifo_wr_en[3],
									mac_tx_que_fifo_wr_en[2],
									mac_tx_que_fifo_wr_en[1],
									mac_tx_que_fifo_wr_en[0]
								}),//写使能		output wire [7:0]		
	.mac_tx_que_fifo_din		({	mac_tx_que_fifo_din[7],
									mac_tx_que_fifo_din[6],
									mac_tx_que_fifo_din[5],
									mac_tx_que_fifo_din[4],
									mac_tx_que_fifo_din[3],
									mac_tx_que_fifo_din[2],
									mac_tx_que_fifo_din[1],
									mac_tx_que_fifo_din[0]
								})//输入数据	output wire [143:0] 	
	//output wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk
	//--------------------------------------------------------------------------------------
);



endmodule