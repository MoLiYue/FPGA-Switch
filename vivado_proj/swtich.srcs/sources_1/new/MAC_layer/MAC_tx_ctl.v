/*
MAC_tx_ctl MAC_tx_ctl_inst(
    //------------------------------系统信号------------------------------------
    .mac_clk		(mac_clk),//发送时钟		input wire 
    .sys_rst_n		(sys_rst_n),//复位			input wire 
    //-------------------------------------------------------------------------

    //-----------------------------tx_fifo相关接口------------------------------
    .mac_tx_fifo_dout			(mac_tx_fifo_dout),//读数据			input wire [7:0] 	
    .mac_tx_fifo_empty			(mac_tx_fifo_empty),//已空				input wire 			
    .mac_tx_fifo_almost_empty	(mac_tx_fifo_almost_empty),//将空				input wire 			
    .mac_tx_fifo_underflow		(mac_tx_fifo_underflow),//下溢出，读溢出	input wire 			

	.mac_tx_fifo_rd_en			(mac_tx_fifo_rd_en),//读使能信号		output reg 			
    //-------------------------------------------------------------------------

	//------------------------rx_que_fifo相关信号-----------------------------
	.mac_tx_que_fifo_empty			(mac_tx_que_fifo_empty),//读空信号		input wire 
	.mac_tx_que_fifo_almost_empty	(mac_tx_que_fifo_almost_empty),//读将空信号	input wire 
	.mac_tx_que_fifo_underflow		(mac_tx_que_fifo_underflow),//读溢出信号	input wire 
	.mac_tx_que_fifo_dout	(mac_tx_que_fifo_dout),//输出数据	input wire [17:0] 

	.mac_tx_que_fifo_rd_en	(mac_tx_que_fifo_rd_en),//读使能	output wire 			
	//output wire mac_rx_que_fifo_clk,	//同mac_rx_que_fifo_clk
	//------------------------------------------------------------------------

	//-------------------------reg_ctl相关接口---------------------------------
    .speed_mode		(speed_mode),//速度模式    100：1000Mbps 010：100Mbps 001：10Mbps	input wire [2:0] 
	.duplex_mode	(duplex_mode),//双工模式   10：full 01：half							input wire [1:0] 
	//-------------------------------------------------------------------------

    //---------------------------gmii接口----------------------------------------------
    .gmii_txd		(gmii_txd),    //GMII发送时钟				output wire 		 [7:0] 
    .gmii_tx_clk	(gmii_tx_clk),    //GMII发送数据有效信号		output wire 		
    .gmii_tx_en     (gmii_tx_en)     //GMII发送数据					output wire
    //---------------------------------------------------------------------------------

);
*/

module MAC_tx_ctl(
    //------------------------------系统信号------------------------------------
    input wire mac_clk,      //发送时钟
    input wire sys_rst_n,   //复位
    //-------------------------------------------------------------------------

    //-----------------------------tx_fifo相关接口------------------------------
    input wire [7:0] mac_tx_fifo_dout,      //读数据
    input wire mac_tx_fifo_empty,           //已空
    input wire mac_tx_fifo_almost_empty,    //将空
    input wire mac_tx_fifo_underflow,       //下溢出，读溢出

	output reg mac_tx_fifo_rd_en,           //读使能信号
    //-------------------------------------------------------------------------

	//------------------------rx_que_fifo相关信号-----------------------------
	input wire mac_tx_que_fifo_empty,	//读空信号
	input wire mac_tx_que_fifo_almost_empty,		//读将空信号
	input wire mac_tx_que_fifo_underflow,	//读溢出信号
	input wire [17:0] mac_tx_que_fifo_dout,//输出数据

	output reg mac_tx_que_fifo_rd_en,//读使能
	//output wire mac_rx_que_fifo_clk,	//同mac_rx_que_fifo_clk
	//------------------------------------------------------------------------

	//-------------------------reg_ctl相关接口---------------------------------
    input wire [2:0] speed_mode,//速度模式    100：1000Mbps 010：100Mbps 001：10Mbps
	input wire [1:0] duplex_mode,//双工模式   10：full 01：half
	//-------------------------------------------------------------------------

    //---------------------------gmii接口----------------------------------------------
    output reg [7:0] gmii_txd,     //GMII发送时钟				output wire 		
    output wire gmii_tx_clk,        //GMII发送数据有效信号		output wire 		
    output wire gmii_tx_en          //GMII发送数据					output wire
    //---------------------------------------------------------------------------------

);

localparam TX_DEFER     		= 15'b000_0000_0000_0001;		//系统的初始状态
localparam TX_IFG       		= 15'b000_0000_0000_0010;		//控制发送帧的时间间隔
localparam TX_IDLE      		= 15'b000_0000_0000_0100;		//空闲状态（分全双工或者半双工）
localparam TX_PRE       		= 15'b000_0000_0000_1000;		//发送8‘h55前导码
localparam TX_SFD       		= 15'b000_0000_0001_0000;		//发送8’hd5
localparam TX_DATA      		= 15'b000_0000_0010_0000;		//发送数据
localparam TX_JAM       		= 15'b000_0000_0100_0000;
localparam TX_BCKOFF    		= 15'b000_0000_1000_0000;
localparam TX_PAD       		= 15'b000_0001_0000_0000;
localparam TX_FCS       		= 15'b000_0010_0000_0000;
localparam TX_PAUSE				= 15'b000_0100_0000_0000;
localparam TX_JAMDROP 			= 15'b000_1000_0000_0000;
localparam TX_FFEMPTYDROP 		= 15'b001_0000_0000_0000;
localparam TX_SWITCHNEXT 		= 15'b010_0000_0000_0000;
localparam TX_SENDPAUSEFRAME 	= 15'b100_0000_0000_0000;

//速度模式
localparam FULL_DUPLEX = 2'b10;
localparam HALF_DUPLEX = 2'b01;

//mac帧间隔
parameter IFG_CNT_MAX = 4'd11;			//IFG_CNT_MAX = 96bit/8bit = 12
parameter PRE_CNT_MAX = 3'd7;		

reg [14:0] cur_state;
reg [14:0] next_state;
reg sw_en;
reg [3:0] IFG_cnt;
reg [2:0] PRE_cnt;

reg [15:0] mac_length;
reg [15:0] mac_length_cnt;

assign gmii_tx_clk = mac_clk;

//IFG计数器
always @(posedge mac_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        IFG_cnt <= 4'b0;
    else
        case(next_state)
			TX_IFG:
				if(IFG_cnt == IFG_CNT_MAX)
					IFG_cnt <= 4'b0;
				else
					IFG_cnt <= IFG_cnt + 1;
			default: IFG_cnt <= 4'b0;
		endcase
end

//PRE计数器
always @(posedge mac_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        PRE_cnt <= 3'b0;
    else
        case(next_state)
			TX_PRE:
				if(PRE_cnt == PRE_CNT_MAX)
					PRE_cnt <= 3'b0;
				else
					PRE_cnt <= PRE_cnt + 1;
			default: PRE_cnt <= 3'b0;
		endcase
end

//发送帧长度计数器
always @(posedge mac_clk or negedge sys_rst_n) begin
	if(!sys_rst_n)
		mac_length_cnt <= 16'd0;
	else
		case(next_state)
			TX_DATA:
				if(mac_length_cnt == mac_length)
					mac_length_cnt <= 16'd0;
				else
					mac_length_cnt <= mac_length_cnt + 16'd1;
			default: mac_length_cnt <= 16'd0;
		endcase
end
//
always @(posedge mac_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        cur_state <= TX_DEFER;
    else
        cur_state <= next_state;
end

//状态转移
always @(*) begin
    next_state = TX_DEFER;
    case(cur_state)
        TX_DEFER:
            if((duplex_mode == FULL_DUPLEX) || 1'b1)//if ((FullDuplex)||(!FullDuplex&&!CRS))
                next_state = TX_IFG;
            else
				next_state = TX_DEFER;
		TX_IFG:
			if(IFG_cnt == IFG_CNT_MAX)
				next_state = TX_IDLE;
			else
				next_state = TX_IFG;
		TX_IDLE:
			if(!mac_tx_que_fifo_empty)
				next_state = TX_PRE;
			else
				next_state = TX_IDLE;
		TX_PRE:
			if(PRE_cnt == PRE_CNT_MAX)
				next_state = TX_SFD;
			else
				next_state = TX_PRE;
		TX_SFD:
				next_state = TX_DATA;
        TX_DATA:
            if(mac_length_cnt == mac_length)
				next_state = TX_DEFER;
			else
				next_state = TX_DATA;
		default: next_state = TX_DEFER;
	endcase
end

//gmii_txd信号
always @(posedge mac_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
		gmii_txd <= 8'd0;
	else
		case(next_state)
			TX_PRE:
				gmii_txd <= 8'h55;
			TX_SFD:
				gmii_txd <= 8'hd5;
			TX_DATA:
				gmii_txd <= mac_tx_fifo_dout;
			default: gmii_txd <= 8'd0;
		endcase

end

//tx_fifo_rd_en接收数据缓存信号读取使能
always @(posedge mac_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
		mac_tx_fifo_rd_en <= 1'b0;
	else
		case(next_state)
			TX_DATA:
				mac_tx_fifo_rd_en <= 1'b1;
			default:
				mac_tx_fifo_rd_en <= 1'b0;
		endcase
end

//mac_tx_que_fifo_rd_en接收队列缓存读取使能
always @(cur_state) begin
    if(!mac_tx_que_fifo_empty && cur_state == TX_SFD)
		mac_tx_que_fifo_rd_en = 1'b1;
	else
		mac_tx_que_fifo_rd_en = 1'b0;
end

//从接收队列缓存接收mac_length
always @(cur_state) begin
	if(!sys_rst_n)
		mac_length = 16'b0;
	else if(mac_tx_que_fifo_rd_en == 1'b1)
		mac_length = mac_tx_que_fifo_dout[15:0];
	else
		mac_length = mac_length;
end

//

endmodule
