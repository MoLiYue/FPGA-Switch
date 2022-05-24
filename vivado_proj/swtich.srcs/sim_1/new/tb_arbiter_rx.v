`timescale 1ns / 1ps

module tb_arbiter_rx();

reg sys_clk;
reg sys_rst_n;

reg ctl_center_rx_busy;
reg mac_rx_fifo_empty [7:0];
reg mac_rx_fifo_almost_empty [7:0];
reg mac_rx_fifo_underflow[7:0];
reg mac_rx_que_fifo_empty[7:0];
reg mac_rx_que_fifo_dout[7:0];

wire [2:0] rx_mac_choose;
wire mac_rx_fifo_rd_en [7:0];
wire mac_rx_que_fifo_rd_en [7:0];

always #5 sys_clk = ~sys_clk;

initial begin
    sys_clk = 1'B0;
    sys_rst_n <= 1'b0;
    #20
    sys_rst_n <= 1'b1;
end

arbiter_rx arbiter_rx_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk    (sys_clk),     //input wire 
    .sys_rst_n  (sys_rst_n),   //input wire 
    //--------------------------------------------------------------------------------

    .ctl_center_rx_busy (ctl_center_rx_busy),    //                input wire          

    .rx_mac_choose      (rx_mac_choose),        //接收端MAC选择信号  output reg [2:0]    

    //--------------------------------rx_fifo相关接口-----------------------------------
	.mac_rx_fifo_empty        (mac_rx_fifo_empty),//输出MAC fifo empty            input wire [7:0]8个一组
	.mac_rx_fifo_almost_empty (mac_rx_fifo_almost_empty),//输出MAC fifo almost_empty     input wire [7:0]8个一组
	.mac_rx_fifo_underflow    (mac_rx_fifo_underflow),//输出MAC读溢出                 input wire [7:0]8个一组

	.mac_rx_fifo_rd_en       (mac_rx_fifo_rd_en),//外部输入MAC fifo读使能 output wire [7:0]8个一组
	//----------------------------------------------------------------------------------

    //------------------------rx_que_fifo相关面向LLC接口-----------------------------
	.mac_rx_que_fifo_dout			(mac_rx_que_fifo_dout),      //输出数据      input wire [17:0] 	[7:0]
	.mac_rx_que_fifo_empty			(mac_rx_que_fifo_empty),	    //读空信号      input wire 			[7:0]
	.mac_rx_que_fifo_almost_empty	(),		//读将空信号    input wire 			[7:0]
	.mac_rx_que_fifo_underflow		(),	    //读溢出信号    input wire 			[7:0]

	.mac_rx_que_fifo_rd_en			(mac_rx_que_fifo_rd_en)   //读使能        output wire 		[7:0]
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//-----------------------------------------------------------------------------
);

endmodule