module arbiter_tx(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    input wire tx_data_ready,//接收转发模块准备好数据信息

    output reg [2:0] tx_mac_choose,        //发送端MAC选择信号
    output reg tx_en,//可以转发使能信号


    //-----------------------------------tx_fifo相关接口---------------------------------
    input wire [7:0]	mac_tx_fifo_full         ,//tx_fifo满信号
	input wire [7:0]	mac_tx_fifo_almost_full  ,//tx_fifo将满信号
	input wire [7:0]	mac_tx_fifo_overflow     ,//tx_fifo 写溢出信号
    input wire [7:0] 	mac_tx_fifo_prog_empty	,//可编程空信号，用于判定可以写入信息

	output wire [7:0]	mac_tx_fifo_wr_en       ,//tx_fifo写使能
	//-----------------------------------------------------------------------------------

    //------------------------tx_que_fifo相关接口-------------------------------------------
	input wire [7:0]	mac_tx_que_fifo_full			,	//写满信号
	input wire [7:0]	mac_tx_que_fifo_almost_full	,	//写将满信号
	input wire [7:0]	mac_tx_que_fifo_overflow		,	//写溢出信号

	output wire [7:0]			mac_tx_que_fifo_wr_en	,//写使能
	output wire [143:0] 		mac_tx_que_fifo_din		,//输入数据
	//output wire mac_tx_que_fifo_wr_clk,	//同mac_tx_fifo_wr_clk
	//--------------------------------------------------------------------------------------

);

localparam TX_IDLE      = 5'b0_0001;//发送空闲状态
localparam TX_CHOOSE    = 5'b0_0010;//选择发送端口
localparam TX_QUE_DATA  = 5'b0_0100;//发送帧长度信息
localparam TX_DATA      = 5'b0_1000;//发送数据
localparam TX_ERR       = 5'b1_0000;//错误帧数据，抛弃

reg [4:0] cur_state;
reg [4:0] next_state;

//循环计数器
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        tx_mac_choose <= 3'b0;
    else
        case(next_state)
            TX_CHOOSE:
                tx_mac_choose <= tx_mac_choose + 1;
            default:
                tx_mac_choose <= tx_mac_choose;
        endcase
end

//状态机
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        cur_state <= TX_IDLE;
    else
        cur_state <= next_state;
end
//状态转移
always @(*) begin
    if(!sys_rst_n) begin
        next_state = TX_IDLE;
    end else
        case (cur_state)
            TX_IDLE:
                if(mac_tx_fifo_prog_empty == 0)
                    next_state = cur_state;
                else    
                    next_state = TX_CHOOSE;
            TX_CHOOSE:
                if(!mac_tx_fifo_prog_empty[tx_mac_choose])
                    next_state = TX_QUE_DATA;
                else if(mac_tx_fifo_prog_empty == 0)
                    next_state = TX_IDLE;
                else    
                    next_state = cur_state;
            TX_QUE_DATA:
                if(tx_data_ready)
                    next_state = TX_DATA;
                else
                    next_state = cur_state;
            TX_DATA:
                if()

        endcase
end

endmodule