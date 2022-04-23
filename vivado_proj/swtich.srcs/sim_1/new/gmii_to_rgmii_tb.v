`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 10:04:15 PM
// Design Name: 
// Module Name: gmii_to_rgmii_tb
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


module gmii_to_rgmii_tb();

reg rgmii_rxc;
reg [3:0] rgmii_rxd;
reg rgmii_rx_ctl;

reg gmii_tx_clk;
reg gmii_tx_en;
reg [7:0] gmii_txd;

wire gmii_rx_clk;
wire gmii_rx_dv	;
wire [7:0] gmii_rxd	;

wire rgmii_txc		;
wire rgmii_tx_ctl	;
wire [3:0] rgmii_txd;

reg [3:0] cnt;

initial begin
	rgmii_rxc = 1'b0;
	gmii_tx_clk = 1'b0;
	
	gmii_tx_en <= 1'b0;
	rgmii_rx_ctl <= 1'b0;
	cnt <= 4'b0;

	rgmii_rxd <= 4'b0;
	gmii_txd <= 8'b0;
	#200
	gmii_tx_en <= 1'b1;
	rgmii_rx_ctl <= 1'b1;
end

	//always #4 rgmii_rxc = ~rgmii_rxc;		//千兆网输入时钟模拟？125Hz
	always #10 rgmii_rxc = ~rgmii_rxc;		//千兆网输入时钟模拟？50Hz
	always #5 gmii_tx_clk = ~gmii_tx_clk;	//系统时钟模拟 100Hz

	always @(posedge gmii_tx_clk) begin
		if (gmii_tx_en == 0)
			gmii_txd <= 8'b0;
		else begin
			case(cnt)
				4'd1:gmii_txd  <= 8'b00000001;
				4'd2:gmii_txd  <= 8'b00000010;
				4'd3:gmii_txd  <= 8'b00000100;
				4'd4:gmii_txd  <= 8'b00001000;
				4'd5:gmii_txd  <= 8'b00010000;
				4'd6:gmii_txd  <= 8'b00100000;
				4'd7:gmii_txd  <= 8'b01000000;
				4'd8:gmii_txd  <= 8'b10000000;
				4'd9:gmii_txd  <= 8'b01000000;
				4'd10:gmii_txd <= 8'b00100000;
				4'd11:gmii_txd <= 8'b00010000;
				4'd12:gmii_txd <= 8'b00001000;
				4'd13:gmii_txd <= 8'b00000100;
				4'd14:gmii_txd <= 8'b00000010;
				4'd15:gmii_txd <= 8'b00000001;
			endcase
		end
	end

	always @(posedge gmii_tx_clk) begin
		if (gmii_tx_en == 0)
			cnt <= 4'b0;
		else if(cnt == 4'b1111) begin
			cnt <= 4'b0;
		end else
			cnt <= cnt + 1;
	end

    gmii_to_rgmii gmii_to_rgmii_inst(
        .rgmii_rxc		(rgmii_txc),   //RGMII接收时钟				input wire 		    
        .rgmii_rx_ctl	(rgmii_tx_ctl),   //RGMII接收数据控制信号	input wire 		    	
        .rgmii_rxd		(rgmii_txd),   //RGMII接收数据				input wire [3:0] 	

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
endmodule
