module arbiter_rx(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    //input wire ctl_center_rx_busy,      //控制中心正在接收数据
    output reg [15:0] mac_length,           //接收mac地址长度
    output reg [7:0] mac_length_ju,          //8bit转64bit mac帧长度
    output reg mac_length_en,               //mac长度数据有效信号
    output reg [2:0] rx_mac_choose,        //接收端MAC选择信号

    //--------------------------------rx_fifo相关接口-----------------------------------
	input wire [7:0] mac_rx_fifo_empty        ,//输出MAC fifo empty
	input wire [7:0] mac_rx_fifo_almost_empty ,//输出MAC fifo almost_empty
	input wire [7:0] mac_rx_fifo_underflow    ,//输出MAC读溢出

	output reg [7:0] mac_rx_fifo_rd_en       ,//外部输入MAC fifo读使能
	//----------------------------------------------------------------------------------

    //------------------------rx_que_fifo相关接口-----------------------------
	input wire [143:0] 	        mac_rx_que_fifo_dout			,//输出数据
	input wire [7:0]			mac_rx_que_fifo_empty			,	//读空信号
	input wire [7:0]			mac_rx_que_fifo_almost_empty	,		//读将空信号
	input wire [7:0]			mac_rx_que_fifo_underflow		,	//读溢出信号

	output reg [7:0]		    mac_rx_que_fifo_rd_en			   //读使能
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//-----------------------------------------------------------------------------
);

localparam RX_IDLE      = 5'b0_0001;//接收空闲状态
localparam RX_CHOOSE    = 5'b0_0010;//选择接收端口
localparam RX_QUE_DATA  = 5'b0_0100;//接收帧长度信息
localparam RX_DATA      = 5'b0_1000;//接收数据
localparam RX_ERR       = 5'b1_0000;//错误帧数据，抛弃

reg [2:0] cnt[7:0];
reg [7:0] mac_length_cnt;   //64bit帧长度计数器

reg [4:0] cur_state;
reg [4:0] next_state;

/*
always @(*) begin
    if(!sys_rst_n) begin
        cnt[0] = 3'd0;
        cnt[1] = 3'd0;
        cnt[2] = 3'd0;
        cnt[3] = 3'd0;
        cnt[4] = 3'd0;
        cnt[5] = 3'd0;
        cnt[6] = 3'd0;
        cnt[7] = 3'd0;
        mac_rx_que_fifo_rd_en = 8'b0;
        mac_length = 16'd0;
    end 
    if(!mac_rx_que_fifo_empty[0] && cnt[0] == 0 && !ctl_center_rx_busy) begin  //等待队列不空、计数器为0、接收状态不忙
        rx_mac_choose = 3'd0;
        cnt[0] = 3'd7;
        mac_length = mac_rx_que_fifo_dout[17:0];
        mac_rx_que_fifo_rd_en[0] = 1'b1;
    end else if(!mac_rx_que_fifo_empty[0] && cnt[0] != 0 && !ctl_center_rx_busy) begin //等待队列不空、计数器不为0、接收状态不忙
        cnt[0] = cnt[0] - 1;
    end else if(!mac_rx_que_fifo_empty[1] && cnt[1] == 0 && !ctl_center_rx_busy) begin //等待队列不空、计数器为0
        rx_mac_choose = 3'd1;
        cnt[1] = 3'd7;
    end else if(!mac_rx_que_fifo_empty[1] && cnt[1] != 0 && !ctl_center_rx_busy) begin //等待队列不空、计数器不为0
        cnt[1] = cnt[1] - 1;
    end else if(!mac_rx_que_fifo_empty[2] || cnt[2] == 0 && !ctl_center_rx_busy) begin
        rx_mac_choose = 3'd2;
        cnt[2] = 3'd7;
    end else if(!mac_rx_que_fifo_empty[2] || cnt[2] != 0 && !ctl_center_rx_busy) begin
        cnt[2] = cnt[2] - 1;
    end else if(!mac_rx_que_fifo_empty[3] || cnt[3] == 0 && !ctl_center_rx_busy) begin
        rx_mac_choose = 3'd3;
        cnt[3] = 3'd7;
    end else if(!mac_rx_que_fifo_empty[3] || cnt[3] != 0 && !ctl_center_rx_busy) begin
        cnt[3] = cnt[3] - 1;
    end else if(!mac_rx_que_fifo_empty[4] || cnt[4] == 0 && !ctl_center_rx_busy) begin
        rx_mac_choose = 3'd4;
        cnt[4] = 3'd7;
    end else if(!mac_rx_que_fifo_empty[4] || cnt[4] != 0 && !ctl_center_rx_busy) begin
        cnt[4] = cnt[4] - 1;
    end else if(!mac_rx_que_fifo_empty[5] || cnt[5] == 0 && !ctl_center_rx_busy) begin
        rx_mac_choose = 3'd5;
        cnt[5] = 3'd7;
    end else if(!mac_rx_que_fifo_empty[5] || cnt[5] != 0 && !ctl_center_rx_busy) begin
        cnt[5] = cnt[5] - 1;
    end else if(!mac_rx_que_fifo_empty[6] || cnt[6] == 0 && !ctl_center_rx_busy) begin
        rx_mac_choose = 3'd6;
        cnt[6] = 3'd7;
    end else if(!mac_rx_que_fifo_empty[6] || cnt[6] != 0 && !ctl_center_rx_busy) begin
        cnt[6] = cnt[6] - 1;
    end else if(!mac_rx_que_fifo_empty[7] || cnt[7] == 0 && !ctl_center_rx_busy) begin
        rx_mac_choose = 3'd6;
        cnt[7] = 3'd7;
    end else if(!mac_rx_que_fifo_empty[7] || cnt[7] != 0 && !ctl_center_rx_busy) begin
        cnt[7] = cnt[7] - 1;
    end 
end
*/

//循环计数器
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_mac_choose <= 3'b0;
    else
        case(next_state)
            RX_CHOOSE:
                rx_mac_choose <= rx_mac_choose + 1;
            default:
                rx_mac_choose <= rx_mac_choose;
        endcase
end

//状态机
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        cur_state <= RX_IDLE;
    else
        cur_state <= next_state;
end
//状态转移
always @(*) begin
    if(!sys_rst_n) begin
        next_state = RX_IDLE;
    end else
        case (cur_state)
            RX_IDLE: 
                if(mac_rx_que_fifo_empty == 0)
                    next_state = cur_state;
                else
                    next_state = RX_CHOOSE;
            RX_CHOOSE:
                if(!mac_rx_que_fifo_empty[rx_mac_choose])
                    next_state = RX_QUE_DATA;
                else if(mac_rx_que_fifo_empty == 0)
                    next_state = RX_IDLE;
                else
                    next_state = cur_state;
            RX_QUE_DATA:
                    next_state = RX_DATA;
            RX_DATA:
                if(mac_length == 0)
                    next_state = RX_IDLE;
                else if(mac_length_cnt == mac_length_ju)
                    next_state = RX_IDLE;
                else if(mac_rx_fifo_empty[rx_mac_choose])
                    next_state = RX_ERR;
                else
                    next_state = cur_state;
            RX_ERR:
                    next_state = RX_IDLE;
            default: 
                next_state = RX_IDLE;
        endcase
end

//64bit帧长度计数器
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        mac_length_cnt <= 16'd0;
    else
        case (next_state)
            RX_DATA: 
                mac_length_cnt <= mac_length_cnt + 1;
            default: 
                mac_length_cnt <= 8'd0;
        endcase
end

//读取mac帧长度
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        mac_length <= 16'd0;
    else
        case (next_state)
            RX_QUE_DATA: 
                case(rx_mac_choose)
                    3'd0: mac_length <= mac_rx_que_fifo_dout[18*0+15:18*0];
                    3'd1: mac_length <= mac_rx_que_fifo_dout[18*1+15:18*1];
                    3'd2: mac_length <= mac_rx_que_fifo_dout[18*2+15:18*2];
                    3'd3: mac_length <= mac_rx_que_fifo_dout[18*3+15:18*3];
                    3'd4: mac_length <= mac_rx_que_fifo_dout[18*4+15:18*4];
                    3'd5: mac_length <= mac_rx_que_fifo_dout[18*5+15:18*5];
                    3'd6: mac_length <= mac_rx_que_fifo_dout[18*6+15:18*6];
                    3'd7: mac_length <= mac_rx_que_fifo_dout[18*7+15:18*7];
                endcase
            RX_DATA:
                mac_length <= mac_length;
            default: 
                mac_length <= 16'd0;
        endcase
end

//读取mac帧长度使能
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        mac_length_en <= 1'd0;
    else
        case (next_state)
            RX_QUE_DATA: 
                mac_length_en <= 1'd1;
            default: 
                mac_length_en <= 1'd0;
        endcase
end

//发送读取接收队列缓存使能
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        mac_rx_que_fifo_rd_en <= 8'd0;
    else
        case (next_state)
            RX_QUE_DATA: 
                mac_rx_que_fifo_rd_en[rx_mac_choose] <= 1'd1;
            default: 
                mac_rx_que_fifo_rd_en[rx_mac_choose] <= 1'd0;
        endcase
end

//发送读取接收数据缓存使能
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        mac_rx_fifo_rd_en <= 8'd0;
    else
        case (next_state)
            RX_DATA: 
                if(mac_length == 0)
                    mac_rx_fifo_rd_en[rx_mac_choose] <= 1'd0;
                else
                    mac_rx_fifo_rd_en[rx_mac_choose] <= 1'd1;
            default: 
                mac_rx_fifo_rd_en[rx_mac_choose] <= 1'd0;
        endcase
end

//8bit转64bit mac帧长度
always @(*) begin
    if(mac_length >> 3 << 3 == mac_length)
        mac_length_ju = (mac_length >> 3);
    else 
        mac_length_ju = (mac_length >> 3) + 1;
end


endmodule