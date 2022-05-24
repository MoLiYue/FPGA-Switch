module arbiter_rx(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    input wire ctl_center_rx_busy,      //控制中心正在接收数据

    output reg [2:0] rx_mac_choose,        //接收端MAC选择信号

    //--------------------------------rx_fifo相关接口-----------------------------------
	input wire [7:0] mac_rx_fifo_empty        ,//输出MAC fifo empty
	input wire [7:0] mac_rx_fifo_almost_empty ,//输出MAC fifo almost_empty
	input wire [7:0] mac_rx_fifo_underflow    ,//输出MAC读溢出

	output wire [7:0] mac_rx_fifo_rd_en       ,//外部输入MAC fifo读使能
	//----------------------------------------------------------------------------------

    //------------------------rx_que_fifo相关接口-----------------------------
	input wire [142:0] 	        mac_rx_que_fifo_dout			,//输出数据
	input wire [7:0]			mac_rx_que_fifo_empty			,	//读空信号
	input wire [7:0]			mac_rx_que_fifo_almost_empty	,		//读将空信号
	input wire [7:0]			mac_rx_que_fifo_underflow		,	//读溢出信号

	output wire [7:0]		    mac_rx_que_fifo_rd_en			   //读使能
	//output wire mac_rx_que_fifo_rd_clk,	//同mac_rx_fifo_rd_clk
	//-----------------------------------------------------------------------------
);

reg [2:0] cnt[7:0];
reg [15:0] mac_length;
reg [15:0] mac_length_cnt;

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
    end if(!mac_rx_que_fifo_empty[0] && cnt[0] == 0 && !ctl_center_rx_busy) begin  //等待队列不空、计数器为0、接收状态不忙
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

always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        mac_length_cnt <= 16'd0;
    else if(mac_rx_que_fifo_rd_en[0] == 1)
        
    else if()
end

//always @(posedge sys_clk or negedge sys_rst_n) begin
//    if(!sys_rst_n)
//
//end

endmodule