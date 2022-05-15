module ctl_center(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    //------------------------------------rx_fifo接口----------------------------------
    input wire [63:0] mac_rx_fifo_dout,//输出MAC fifo 存储数据
	input wire mac_rx_fifo_empty,//输出MAC fifo empty
	input wire mac_rx_fifo_almost_empty,//输出MAC fifo almost_empty
	input wire mac_rx_fifo_underflow,//输出MAC读溢出

    output wire mac_rx_fifo_rd_clk,//外部传入MAC fifo读时钟
	output reg mac_rx_fifo_rd_en,//外部输入MAC fifo读使能
	//---------------------------------------------------------------------------------

	//------------------------tx_fifo相关接口--------------------------------------------
	output wire mac_tx_fifo_wr_clk,//tx_fifo写时钟
	output wire [63:0] mac_tx_fifo_din,//tx_fifo写数据
	output reg mac_tx_fifo_wr_en,//tx_fifo写使能

	input wire mac_tx_fifo_full, //tx_fifo满信号
	input wire mac_tx_fifo_almost_full, //tx_fifo将满信号
	input wire mac_tx_fifo_overflow, //tx_fifo 写溢出信号
	//-----------------------------------------------------------------------------------

    //
    output reg [2:0] mac_choose
);

localparam RX_IDLE = ;
localparam RX_DATA = ;

assign mac_rx_fifo_rd_clk = sys_clk;

assign mac_tx_fifo_wr_clk = sys_clk;


endmodule