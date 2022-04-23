module MAC_top(
    input wire sys_clk,//系统时钟
    input wire sys_rst_n,//系统异步复位

    input wire          rxc     ,   //接收时钟2.5MHz、25MHz、125MHz
    input wire          rx_ctl  ,   //
    input wire [3:0]    rxd     ,   //

    output wire         txc,//发送时钟2.5MHz、25MHz、125MHz
    output wire         tx_ctl,
    output wire [3:0]   txd
);

wire        rx_clk  ;//接收时钟
wire        rx_dv   ;//接受数据有效信号
wire [7:0]  mac_rxd ;//接受数据

wire        tx_clk  ;//发送时钟
wire        tx_en   ;//发送数据有效信号
wire [7:0]  mac_txd ;//发送数据

//接收数据rgmii/mii选择
assign rxc      = ( == ) ? rgmii_rxc    : mii_rxc;
assign rx_ctl   = ( == ) ? rgmii_rx_ctl : mii_rx_ctl;
assign rxd      = ( == ) ? rgmii_rxd    : mii_rxd;

//发送数据rgmii/mii选择
assign txc      = ( == ) ? rgmii_txc    : mii_tx_clk;
assign tx_ctl   = ( == ) ? rgmii_tx_ctl : mii_tx_en;
assign txd      = ( == ) ? rgmii_txd    : mii_txd;

//
assign rx_clk   = ( == ) ? gmii_rx_clk  : mii_rx_clk;
assign rx_dv    = ( == ) ? gmii_rx_dv   : mii_rx_dv ;
assign mac_rxd  = ( == ) ? gmii_rxd     : mii_rxd   ;

//
assign tx_clk   = ( == ) ? gmii_tx_clk  : mii_tx_clk;
assign tx_en    = ( == ) ? gmii_tx_en   : mii_tx_en ;
assign mac_txd  = ( == ) ? gmii_txd     : mii_txd   ;


//======================================instance===========================================
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

endmodule