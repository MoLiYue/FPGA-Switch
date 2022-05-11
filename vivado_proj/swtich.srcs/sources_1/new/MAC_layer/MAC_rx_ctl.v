/*

*/
module MAC_rx_ctl(
	//----------------------系统信号----------------------------------
	input wire sys_rst_n, 
	//---------------------------------------------------------------

	//------------------------gmii接口--------------------------------
	input wire gmii_rx_clk,//GMII接收时钟 
	input wire gmii_rx_dv,//GMII接收数据有效信号
	input wire [7:0] gmii_rxd,//GMII接收数据 
	//----------------------------------------------------------------
	
	//-------------------------其他------------------------------------
	input wire tx_busy,//半双工情况下发送忙信号
	input wire [1:0] duplex_mode,//全双工：10 半双工：01
	input wire [2:0] speed_mode, //速度模式	100：1000Mbps 010：100Mbps 001：10Mbps
	//----------------------------------------------------------------

	//---------------------rx_fifo相关接口------------------------------
	input wire mac_rx_fifo_full, 	//写满信号
	input wire mac_rx_fifo_almost_full, 	//写将满信号
	input wire mac_rx_fifo_overflow, 	//写溢出信号

	output wire mac_rx_fifo_wr_clk,//写时钟
    output wire [7:0] mac_rx_fifo_din,//输入数据			CRC输入待校验的8位数据
	output reg mac_rx_fifo_wr_en,//写使能
	//-----------------------------------------------------------------

	//------------------------CRC校验相关端口----------------------------
	input reg [31:0] crc_data,		//CRC校验数据
	input wire [31:0] crc_next,	//CRC下次校验完成数据
	input reg crc_err,//CRC校验错误信号

	output reg crc_en,		//crc使能，进行校验标志
	output reg crc_clr		//crc数据复位信号
	//-------------------------------------------------------------------

);
//mac控制状态机状态
localparam RX_DROP    = 7'b000_0001;
localparam RX_IPG     = 7'b000_0010;
localparam RX_IDLE    = 7'b000_0100;
localparam RX_PRE     = 7'b000_1000;
localparam RX_DATA    = 7'b001_0000;
localparam RX_CRCCHK  = 7'b010_0000;
localparam RX_ERRSTOP = 7'b100_0000;
//全双工、半双工模式
localparam HALF_DUPLEX = 2'b01;
localparam FULL_DUPLEX = 2'b10;
//速度模式
localparam _1000MBPS = 3'b100;
localparam _100MBPS  = 3'b010;
localparam _10MBPS   = 3'b001;
//mac帧间隔
parameter IPG_CNT_MAX = 4'd11;			//IPG_CNT_MAX = 96bit/8bit = 12
//7字节前导码，第8字节SFD
parameter PRE_CNT_MAX = 4'd7;
//最大帧长度及最小帧长度
parameter LEN_MIN = 6'd63;//最小帧长度为64字节
parameter LEN_MAX = 11'd1517;//最大帧长度1518字节，最大数据长度为1500

reg [6:0] cur_state;
reg [6:0] next_state;
reg [10:0] cnt;
reg sw_en;
reg err_en;
reg [15:0] mac_length;//mac帧长度

assign mac_rx_fifo_wr_clk = gmii_rx_clk;
assign mac_rx_fifo_din = gmii_rxd;

//状态机Byte计数器
always@(posedge gmii_rx_clk or negedge sys_rst_n) begin
	if(sys_rst_n == 1'b0)
		cnt <= 11'b0;
	else
		case(next_state)
			RX_DROP: ;
			RX_IPG:
				if(cnt == IPG_CNT_MAX)
					cnt <= 11'b0;
				else
					cnt <= cnt + 1;
			RX_IDLE: ;
			RX_PRE:
				if(gmii_rx_dv)
					cnt <= cnt + 1;
				else if(cnt == 11'd6)
					cnt <= 11'd0;
				else
					cnt <= 11'd0;
			RX_DATA: 
				if(gmii_rx_dv)
					cnt <= cnt + 1;
				else if(cnt > LEN_MAX || cnt < LEN_MIN)
					cnt <= 11'd0;
				else
					cnt <= 11'd0;
			RX_CRCCHK: ;
			default: cnt <= 11'b0;
		endcase
end

//（三段式状态机）同步时序描述状态转移
always @(posedge gmii_rx_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		cur_state <= RX_DROP;
	else
		cur_state <= next_state;
end

//组合逻辑控制状态转换
always@(*) begin
	next_state = RX_DROP;
	case(cur_state)
		RX_DROP:
			if(sw_en)
				next_state = RX_IPG;
			else
				next_state = RX_DROP;
		RX_IPG:
			if(sw_en)
				next_state = RX_IDLE;
			else if(err_en) 
				next_state = RX_DROP;
			else
				next_state = RX_IPG;
		RX_IDLE:
			if(sw_en)
				next_state = RX_PRE;
			else if(err_en)
				next_state = RX_DROP;
			else
				next_state = RX_IDLE;
		RX_PRE:
			if(sw_en)
				next_state = RX_DATA;
			else if(err_en)
				next_state = RX_DROP;
			else
				next_state = RX_PRE;
		RX_DATA:
			if(sw_en)
				next_state = RX_CRCCHK;
			else if(err_en)
				next_state = RX_DROP;
			else
				next_state = RX_DATA;
		RX_CRCCHK:
			if(sw_en)
				next_state = RX_DROP;
			else if(err_en)
				next_state = RX_DROP;
			else
				next_state = RX_CRCCHK;
		default: next_state = RX_DROP;
	endcase
end

//时序电路描述状态输出，解析以太网数据
//sw_en信号触发条件
always @(posedge gmii_rx_clk or negedge sys_rst_n) begin
	if(!sys_rst_n) begin
		sw_en <= 1'b0;
	end else begin
		case(next_state)
			RX_DROP:
				if(gmii_rx_dv == 0)
					sw_en <= 1'b1;
				else
					sw_en <= 1'b0;
			RX_IPG:
				if(cnt == IPG_CNT_MAX)
					sw_en <= 1'b1;
				else
					sw_en <= 1'b0;
			RX_IDLE:
				if(gmii_rx_dv == 1 && gmii_rxd == 8'h55)
					sw_en <= 1'b1;
				else
					sw_en <= 1'b0;
			RX_PRE:
				if(gmii_rx_dv && cnt == 11'd6 && gmii_rxd == 8'hd5)
					sw_en <= 1'b1;
				else
					sw_en <= 1'b0;
			RX_DATA:
				if(gmii_rx_dv == 1'b0 && sw_en == 1'b0)
					sw_en <= 1'b1;
				else
					sw_en <= 1'b0;
			RX_CRCCHK:;
			default: ;
		endcase 
	end 
end 

//err_en信号触发条件
always @(posedge gmii_rx_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		err_en <= 1'b0;
	else
		case(next_state)
			RX_DROP:;
			RX_IPG:;
			RX_IDLE:
				if(gmii_rx_dv == 1'b0 || (duplex_mode == HALF_DUPLEX && tx_busy == 1'b1))
					err_en <= 1'b1;
				else 
					err_en <= 1'b0;
			RX_PRE:
				if(gmii_rx_dv == 1'b0 || ((cnt < 11'd6) && (gmii_rxd != 8'h55) || (cnt == 11'd6) && (gmii_rxd != 8'hd5)))
					err_en <= 1'b1;
				else
					err_en <= 1'b0;
			RX_DATA:
				if(gmii_rx_dv == 1'b0 || (cnt > LEN_MAX || cnt < LEN_MIN))
					err_en <= 1'b1;
				else
					err_en <= 1'b0;
			RX_CRCCHK:;
			default:;
		endcase
end

//mac_rx_fifo_din
always @(posedge gmii_rx_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		mac_rx_fifo_wr_en <= 1'd0;
	else
		case(next_state)
			//RX_DROP:;
			//RX_IPG:;
			//RX_IDLE:;
			//RX_PRE:;
			RX_DATA:
				mac_rx_fifo_wr_en <= 1'd1;
			//RX_CRCCHK:;
			default: mac_rx_fifo_wr_en <= 1'd0;
		endcase
end 

//抓取mac帧长度
always @(posedge gmii_rx_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		mac_length <= 16'd0;
	else
		case(next_state)
			//RX_DROP:;
			//RX_IPG:;
			//RX_IDLE:;
			//RX_PRE:;
			RX_DATA:
				mac_length <= mac_length + 1'b1;
			//RX_CRCCHK:;
			default: mac_rx_fifo_wr_en <= 1'd0;
		endcase
end 

//crc_en使能信号
always @(posedge gmii_rx_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		crc_en <= 1'b0;
	else
		case(next_state)
			//RX_DROP:;
			//RX_IPG:;
			//RX_IDLE:;
			//RX_PRE:;
			RX_DATA:
				crc_en <= 1'b1;
			//RX_CRCCHK:;
			default: crc_en <= 1'b0;
		endcase
end

//crc_clr清除信号
always @(posedge gmii_rx_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		crc_clr <= 1'b0;
	else
		case(next_state)
			RX_DROP:
				crc_clr <= 1'b1;
			RX_IPG:
				crc_clr <= 1'b1;
			RX_IDLE:
				crc_clr <= 1'b1;
			RX_PRE:
				crc_clr <= 1'b1;
			//RX_DATA:
			//RX_CRCCHK:;
			default: crc_clr <= 1'b0;
		endcase
end
endmodule