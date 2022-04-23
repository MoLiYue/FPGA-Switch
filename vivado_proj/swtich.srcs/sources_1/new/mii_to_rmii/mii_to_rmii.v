/*
    mii_to_rmii mii_to_rmii_inst(
        .rmii_rxc		(rmii_rxc),   //RMII接收时钟				input wire 		    
        .rmii_rx_ctl	(rmii_rx_ctl),   //RMII接收数据控制信号	input wire 		    	
        .rmii_rxd		(rmii_rxd),   //RMII接收数据				input wire [1:0] 	

        .mii_rx_clk	    (mii_rx_clk),    //MII接收时钟			output wire 		
        .mii_rx_dv		(mii_rx_dv),     //MII接收数据有效信号	output wire 		
        .mii_rxd		(mii_rxd),  //MII接收数据				output wire [3:0] 	

        .mii_tx_clk	    (mii_tx_clk),    //MII发送时钟				input wire 			
        .mii_tx_en		(mii_tx_en),     //MII发送数据有效信号		input wire 				
        .mii_txd		(mii_txd),   //MII发送数据					input wire [3:0] 	

        .rmii_txc		(rmii_txc),      //RMII发送时钟			output wire 			
        .rmii_tx_ctl	(rmii_tx_ctl),    //RMII发送数据控制信号	output wire 				
        .rmii_txd		(rmii_txd)			//RMII输出数据			output wire [1:0] 	
	);
*/  
module mii_to_rmii(
    input wire 		    rmii_rxc	,   //RMII接收时钟
    input wire 		    rmii_rx_ctl ,   //RMII接收数据控制信号
    input wire [1:0] 	rmii_rxd	,   //RMII接收数据

    output wire 		mii_rx_clk	,   //MII接收时钟
    output wire 		mii_rx_dv	,   //MII接收数据有效信号
    output wire [3:0] 	mii_rxd	    ,   //MII接收数据

    input wire 		    mii_tx_clk	,   //MII发送时钟
    input wire 		    mii_tx_en	,   //MII发送数据有效信号
    input wire [3:0] 	mii_txd	    ,   //MII发送数据

    output wire 		rmii_txc	,   //RMII发送时钟
    output wire 		rmii_tx_ctl ,   //RMII发送数据控制信号
    output wire [1:0] 	rmii_txd        //RMII 发送数据
);


rmii_tx rmii_tx_inst(
    //MII发送端口
    .mii_tx_clk (mii_tx_clk),   //MII发送时钟        input
    .mii_tx_en  (mii_tx_en),    //MII输出数据有效信号    input
    .mii_txd    (mii_txd),      //MII输出数据        input   [3:0]
    //RMII发送端口
    .rmii_txc   (rmii_txc),     //RMII发送数据时钟       output
    .rmii_tx_ctl(rmii_tx_ctl),  //RMII输出数据有效信号    output
    .rmii_txd   (rmii_txd)      //RMII输出数据           output  [1:0]
    );

rmii_rx rmii_rx_inst(
    //以太网RMII接口
    .rmii_rxc	    (rmii_rxc),		//RMII接收时钟        input wire
    .rmii_rx_ctl   	(rmii_rx_ctl),	//RMII接收数据控制信号 input wire
    .rmii_rxd	    (rmii_rxd),		//RMII接收数据        input wire [1:0]
    //以太网MII接口
    .mii_rx_clk    	(mii_rx_clk),	//MII接收时钟        output wire
    .mii_rx_dv	    (mii_rx_dv),	//MII接收数据有效信号 output wire
    .mii_rxd	    (mii_rxd) 		//MII接收数据        output wire [3:0]
    );
endmodule