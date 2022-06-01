module queue(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

//------------------------------面向ctl_center信号-------------------------------------------
    //tx
    input wire [2:0] tx_fifo_choose,//发送选择信号
    
    output reg tx_que_data_en,//
    output wire [23:0] que_fifo_data_dout,//que输出数据
    //rx
    input wire [192:0] que_fifo_din_bus,//输入队列bus
//------------------------------------------------------------------------------------

    //------------------------------面向
);

wire [23:0] que_fifo_din[7:0];
wire [23:0] que_fifo_dout[7:0];
wire que_fifo_wr_en[7:0];
wire que_fifo_rd_en[7:0];


always @(*) begin
    que_fifo_din[0] = que_fifo_din_bus[24*0+23:24*0];
    que_fifo_din[1] = que_fifo_din_bus[24*1+23:24*1];
    que_fifo_din[2] = que_fifo_din_bus[24*2+23:24*2];
    que_fifo_din[3] = que_fifo_din_bus[24*3+23:24*3];
    que_fifo_din[4] = que_fifo_din_bus[24*4+23:24*4];
    que_fifo_din[5] = que_fifo_din_bus[24*5+23:24*5];
    que_fifo_din[6] = que_fifo_din_bus[24*6+23:24*6];
    que_fifo_din[7] = que_fifo_din_bus[24*7+23:24*7];
end

always @(*) begin
    case(tx_fifo_choose)
        3'd0: que_fifo_data_dout = que_fifo_dout[0];
        3'd1: que_fifo_data_dout = que_fifo_dout[1];
        3'd2: que_fifo_data_dout = que_fifo_dout[2];
        3'd3: que_fifo_data_dout = que_fifo_dout[3];
        3'd4: que_fifo_data_dout = que_fifo_dout[4];
        3'd5: que_fifo_data_dout = que_fifo_dout[5];
        3'd6: que_fifo_data_dout = que_fifo_dout[6];
        3'd7: que_fifo_data_dout = que_fifo_dout[7];
        default: que_fifo_data_dout = 24'd0;
    endcase
end

genvar i;
generate for (i=0; i<4; i=i+1)
    begin: queue_bus
        fifo_24x32 fifo_24x32_inst (
            .clk(sys_clk),                    // input wire clk
            .rst(sys_rst_n),                    // input wire rst
            .din(que_fifo_din[i]),                    // input wire [23 : 0] din
            .wr_en(que_fifo_wr_en[i]),                // input wire wr_en
            .rd_en(que_fifo_rd_en[i]),                // input wire rd_en
            .dout(que_fifo_dout[i]),                  // output wire [23 : 0] dout
            .full(full),                  // output wire full
            .almost_full(almost_full),    // output wire almost_full
            .empty(empty),                // output wire empty
            .almost_empty(almost_empty),  // output wire almost_empty
            .wr_rst_busy(wr_rst_busy),    // output wire wr_rst_busy
            .rd_rst_busy(rd_rst_busy)    // output wire rd_rst_busy
        );
    end
endgenerate

endmodule