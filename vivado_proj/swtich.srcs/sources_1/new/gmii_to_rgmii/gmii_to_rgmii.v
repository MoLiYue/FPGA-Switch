/*
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
*/  
module gmii_to_rgmii(input wire 		rgmii_rxc	,   //RGMII接收时钟
                     input wire 		rgmii_rx_ctl,   //RGMII接收数据控制信号
                     input wire [3:0] 	rgmii_rxd	,   //RGMII接收数据

                     output wire 		gmii_rx_clk	,    //GMII接收时钟
                     output wire 		gmii_rx_dv	,     //GMII接收数据有效信号
                     output wire [7:0] 	gmii_rxd	,  //GMII接收数据

                     input wire 		gmii_tx_clk	,    //GMII发送时钟
                     input wire 		gmii_tx_en	,     //GMII发送数据有效信号
                     input wire [7:0] 	gmii_txd	,   //GMII发送数据

                     output wire 		rgmii_txc	,      //RGMII发送时钟
                     output wire 		rgmii_tx_ctl,    //RGMII发送数据控制信号
                     output wire [3:0] 	rgmii_txd           //RGMII 发送数据
                     );

    rgmii_rx rgmii_rx_inst(
    //以太网RGMII接口
    .rgmii_rxc	    (rgmii_rxc),//RGMII接收时钟        input wire
    .rgmii_rx_ctl   (rgmii_rx_ctl),//RGMII接收数据控制信号 input wire
    .rgmii_rxd	    (rgmii_rxd),//RGMII接收数据        input wire [3:0]
    //以太网GMII接口
    .gmii_rx_clk    (gmii_rx_clk),//GMII接收时钟        output wire
    .gmii_rx_dv	    (gmii_rx_dv),//GMII接收数据有效信号 output wire
    .gmii_rxd	    (gmii_rxd) //GMII接收数据        output wire [7:0]
    );
    
    rgmii_tx rgmii_tx_inst(
    //GMII发送端口
    .gmii_tx_clk (gmii_tx_clk),//GMII发送时钟        input
    .gmii_tx_en  (gmii_tx_en),//GMII输出数据有效信号    input
    .gmii_txd    (gmii_txd),//GMII输出数据        input   [7:0]
    //RGMII发送端口
    .rgmii_txc   (rgmii_txc),//RGMII发送数据时钟       output
    .rgmii_tx_ctl(rgmii_tx_ctl),//RGMII输出数据有效信号    output
    .rgmii_txd   (rgmii_txd) //RGMII输出数据           output  [3:0]
    );
    
endmodule
