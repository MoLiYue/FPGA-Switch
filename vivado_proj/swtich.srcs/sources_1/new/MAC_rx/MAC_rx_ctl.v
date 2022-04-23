module MAC_rx_ctl( 
	input wire rx_clk,//GMII接收时钟 
	input wire sys_rst_n, 
	input wire [7:0] mac_rxd,//GMII接收数据 
	input wire rx_dv,//GMII接收数据有效信号
	input wire tx_busy,//半双工情况下发送忙信号
	input wire [1:0] mode,//全双工或者半双工模式

    output reg [7:0] rxd_data
);
//mac控制状态机状态
parameter RX_DROP    = 7'b000_0001;
parameter RX_IPG     = 7'b000_0010;
parameter RX_IDLE    = 7'b000_0100;
parameter RX_PRE     = 7'b000_1000;
parameter RX_DATA    = 7'b001_0000;
parameter RX_CRCCHK  = 7'b010_0000;
parameter RX_ERRSTOP = 7'b100_0000;
//全双工、半双工模式
parameter HALF_DUPLEX = 2'b01;
parameter FULL_DUPLEX = 2'b10;
//mac帧间隔
parameter IPG_CNT_MAX = 4'd11;			//IPG_CNT_MAX = 96bit/8bit = 12
//7字节前导码，第8字节SFD
parameter PRE_CNT_MAX = 4'd7;
//最大帧长度及最小帧长度
parameter LEN_MIN = 6'd63;//最小帧长度为64字节
parameter LEN_MAX = 11'd1535;//最大数据长度1518字节，推导最大帧长度为1536

reg [6:0] cur_state;
reg [6:0] next_state;
reg [10:0] cnt;

//状态机Byte计数器
always@(posedge rx_clk or negedge sys_rst_n) begin
	if(sys_rst_n == 1'b0)
		cnt <= 4'b0;
	else
		case(state)
			RX_DROP: ;
			RX_IPG:
				if(cnt == IPG_CNT_MAX)
					cnt <= 11'b0;
				else
					cnt <= cnt + 1;
			RX_IDLE: ;
			RX_PRE:
				if(cnt == PRE_CNT_MAX)
					cnt <= 11'b0;
				else
					cnt <= cnt + 1;
			RX_DATA: ;
			RX_CRCCHK: ;
			default: cnt <= 11'b0;
		endcase
end

//（三段式状态机）同步时序描述状态转移
always @(posedge rx_clk or negedge sys_rst_n) begin
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
			if(rx_dv == 1'b0)
				next_state = RX_IPG;
			else
				next_state = RX_DROP;
		RX_IPG:
			if(rx_dv == 1'b1)
				next_state = RX_DROP;
			else if(cnt == IPG_CNT_MAX)
				next_state = RX_IDLE;
			else
				next_state = RX_IPG;
		RX_IDLE:
			if(rx_dv == 0)
				next_state = RX_DROP;
			else if(mode == HALF_DUPLEX && tx_busy)
				next_state = RX_DROP;
			else if(rx_dv == 1 && mac_rxd == 8'h55)
				next_state = RX_PRE;
			else if(rx_dv == 1 && mac_rxd != 8'h55)
				next_state = RX_DROP;
			else
				next_state = RX_IDLE;
		RX_PRE:
			if(mac_rxd == 8'hd5)
				next_state = RX_DATA;
			else if(cnt == PRE_CNT_MAX && mac_rxd != 8'hd5)
				next_state = RX_DROP;
			else
				next_state = RX_PRE;
		RX_DATA:
			if(rx_dv == 0)
				next_state = RX_CRCCHK;
			else if(cnt > LEN_MAX || cnt < LEN_MIN)
				next_state = RX_DROP;
		RX_CRCCHK:;

		default: ;	
	endcase
end




endmodule
