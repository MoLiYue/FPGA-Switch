module MAC_tx_ctl(
    //------------------------------系统信号------------------------------------
    input wire gmii_tx_clk,      //发送时钟
    input wire sys_rst_n,   //复位
    //-------------------------------------------------------------------------

    //-----------------------------tx_fifo相关接口------------------------------
    input wire [7:0] mac_tx_fifo_dout,      //读数据
    input wire mac_tx_fifo_rd_en,           //读使能信号
    input wire mac_tx_fifo_empty,           //已空
    input wire mac_tx_fifo_almost_empty,    //将空
    input wire mac_tx_fifo_underflow,       //下溢出
    //-------------------------------------------------------------------------

	//-------------------------reg_ctl相关接口---------------------------------
    input wire [2:0] speed_mode,//
	input wire [1:0] duplex_mode,//
	//-------------------------------------------------------------------------

    output wire [7:0] mac_txd,
    output wire txc,
    output wire tx_en

);

localparam TX_DEFER     = 10'b00_0000_0001;
localparam TX_IPG       = 10'b00_0000_0010;
localparam TX_IDLE      = 10'b00_0000_0100;
localparam TX_PRE       = 10'b00_0000_1000;
localparam TX_SFD       = 10'b00_0001_0000;
localparam TX_DATA      = 10'b00_0010_0000;
localparam TX_JAM       = 10'b00_0100_0000;
localparam TX_BCKOFF    = 10'b00_1000_0000;
localparam TX_PAD       = 10'b01_0000_0000;
localparam TX_FCS       = 10'b10_0000_0000;

reg [9:0] cur_state;
reg [9:0] next_state;
reg sw_en;

//
always @(posedge gmii_tx_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        cur_state <= TX_DEFER;
    else
        cur_state <= next_state;
end

always @(*) begin
    next_state = TX_DEFER;
    case(cur_state)
        TX_DEFER:
            if(sw_en)
                next_state = TX_IPG;
            else
				next_state = TX_DEFER;
		TX_IPG:
			if(sw_en)
				next_state = TX_IDLE;
			else
				next_state = TX_IPG;
		TX_IDLE:
			if(sw_en)
				next_state = TX_PRE;
			else
				next_state = TX_IDLE;
		TX_SFD:
			if(sw_en)
				next_state = TX_DATA;
			else
				next_state = 



end


always @(posedge gmii_tx_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)


end



endmodule
