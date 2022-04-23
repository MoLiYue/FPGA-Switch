`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2022 02:40:37 PM
// Design Name: 
// Module Name: mii_to_rmii_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mii_to_rmii_tb();

reg rmii_rxc;
reg [1:0] rmii_rxd;
reg rmii_rx_ctl;

reg mii_tx_clk;
reg mii_tx_en;
reg [3:0] mii_txd;

wire mii_rx_clk;
wire mii_rx_dv	;
wire [3:0] mii_rxd	;

wire rmii_txc		;
wire rmii_tx_ctl	;
wire [1:0] rmii_txd;

reg [2:0] cnt;

initial begin
	rmii_rxc = 1'b0;
	mii_tx_clk = 1'b0;
	
	mii_tx_en <= 1'b0;
	rmii_rx_ctl <= 1'b0;
	cnt <= 4'b0;

	rmii_rxd <= 4'b0;
	mii_txd <= 8'b0;
	#200
	mii_tx_en <= 1'b1;
	rmii_rx_ctl <= 1'b1;
end

	always #10 rmii_rxc = ~rmii_rxc;		//百兆网输入时钟模拟？50Hz
	always #5 mii_tx_clk = ~mii_tx_clk;	    //系统时钟模拟 100Hz

    always @(posedge mii_tx_clk) begin
		if (mii_tx_en == 0)
			mii_txd <= 4'b0;
		else begin
			case(cnt)
				4'd1:mii_txd <= 4'b0001;
				4'd2:mii_txd <= 4'b0010;
				4'd3:mii_txd <= 4'b0100;
				4'd4:mii_txd <= 4'b1000;
				4'd5:mii_txd <= 4'b0100;
				4'd6:mii_txd <= 4'b0010;
				4'd7:mii_txd <= 4'b0001;
			endcase
		end
	end

    always @(posedge mii_tx_clk) begin
		if (mii_tx_en == 0)
			cnt <= 3'b0;
		else if(cnt == 3'b111) begin
			cnt <= 3'b0;
		end else
			cnt <= cnt + 1;
	end

    mii_to_rmii mii_to_rmii_inst(
        .rmii_rxc		(rmii_txc),   //RMII接收时钟				input wire 		    
        .rmii_rx_ctl	(rmii_tx_ctl),   //RMII接收数据控制信号	input wire 		    	
        .rmii_rxd		(rmii_txd),   //RMII接收数据				input wire [1:0] 	

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
