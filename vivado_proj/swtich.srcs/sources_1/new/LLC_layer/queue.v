module queue(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

//------------------------------面向ctl_center信号-------------------------------------------
    //rx接收（queue输入端）
    input wire [24:0] que_fifo_data_din,//接收数据
    input wire [2:0] rx_fifo_choose,//接收选择信号
    input wire rx_fifo_data_en,//接收数据使能

    //tx发送（queue输出端）
    input wire [2:0] tx_fifo_choose,//发送选择信号
    input wire tx_que_data_en,//读取发送数据信号

    output reg [24:0] que_fifo_data_dout,//que输出数据
    output reg tx_que_data_empty//que队列缓存是否为空
//------------------------------------------------------------------------------------
);

//rx
reg [24:0] que_fifo_din[7:0];//接收数据
reg que_fifo_wr_en[7:0];//接收数据写使能
wire que_fifo_full[7:0];//接收队列满
wire que_fifo_almost_full[7:0];//接收队列将满

//tx
wire [24:0] que_fifo_dout[7:0];//发送数据
reg que_fifo_rd_en[7:0];//发送数据读使能
wire que_fifo_empty[7:0];//发送队列空***
wire que_fifo_almost_empty[7:0];//发送队列将空





wire wr_rst_busy[7:0];
wire rd_rst_busy[7:0];

//always @(*) begin
//    que_fifo_din[0] = que_fifo_din_bus[24*0+23:24*0];
//    que_fifo_din[1] = que_fifo_din_bus[24*1+23:24*1];
//    que_fifo_din[2] = que_fifo_din_bus[24*2+23:24*2];
//    que_fifo_din[3] = que_fifo_din_bus[24*3+23:24*3];
//    que_fifo_din[4] = que_fifo_din_bus[24*4+23:24*4];
//    que_fifo_din[5] = que_fifo_din_bus[24*5+23:24*5];
//    que_fifo_din[6] = que_fifo_din_bus[24*6+23:24*6];
//    que_fifo_din[7] = que_fifo_din_bus[24*7+23:24*7];
//end

//-------------------------------------------rx---------------------------------
//----                                                                      ----
//----                                                                      ----
//----                                                                      ----
//------------------------------------------------------------------------------


//rx接收数据选择
always @(*) begin
    case(rx_fifo_choose)
        3'd0: que_fifo_din[0] = que_fifo_data_din;
        3'd1: que_fifo_din[1] = que_fifo_data_din;
        3'd2: que_fifo_din[2] = que_fifo_data_din;
        3'd3: que_fifo_din[3] = que_fifo_data_din;
        3'd4: que_fifo_din[4] = que_fifo_data_din;
        3'd5: que_fifo_din[5] = que_fifo_data_din;
        3'd6: que_fifo_din[6] = que_fifo_data_din;
        3'd7: que_fifo_din[7] = que_fifo_data_din;
        default: ;
    endcase
end

//rx接收数据写使能信号
always @(*) begin
    case(rx_fifo_choose)
        3'd0: que_fifo_wr_en[0] = rx_fifo_data_en;
        3'd1: que_fifo_wr_en[1] = rx_fifo_data_en;
        3'd2: que_fifo_wr_en[2] = rx_fifo_data_en;
        3'd3: que_fifo_wr_en[3] = rx_fifo_data_en;
        3'd4: que_fifo_wr_en[4] = rx_fifo_data_en;
        3'd5: que_fifo_wr_en[5] = rx_fifo_data_en;
        3'd6: que_fifo_wr_en[6] = rx_fifo_data_en;
        3'd7: que_fifo_wr_en[7] = rx_fifo_data_en;
        default: ;
    endcase
end


//tx发送数据选择
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
        default: que_fifo_data_dout = 25'd0;
    endcase
end

//que_fifo_empty缓存队列空信号
always @(*) begin
    case(tx_fifo_choose)
        3'd0: tx_que_data_empty = que_fifo_empty[0];
        3'd1: tx_que_data_empty = que_fifo_empty[1];
        3'd2: tx_que_data_empty = que_fifo_empty[2];
        3'd3: tx_que_data_empty = que_fifo_empty[3];
        3'd4: tx_que_data_empty = que_fifo_empty[4];
        3'd5: tx_que_data_empty = que_fifo_empty[5];
        3'd6: tx_que_data_empty = que_fifo_empty[6];
        3'd7: tx_que_data_empty = que_fifo_empty[7];
        default: tx_que_data_empty = 1'd0;
    endcase
end

//tx_que_data_en
always @(*) begin
    case(tx_fifo_choose)
        3'd0: que_fifo_rd_en[0] = tx_que_data_en;
        3'd1: que_fifo_rd_en[1] = tx_que_data_en;
        3'd2: que_fifo_rd_en[2] = tx_que_data_en;
        3'd3: que_fifo_rd_en[3] = tx_que_data_en;
        3'd4: que_fifo_rd_en[4] = tx_que_data_en;
        3'd5: que_fifo_rd_en[5] = tx_que_data_en;
        3'd6: que_fifo_rd_en[6] = tx_que_data_en;
        3'd7: que_fifo_rd_en[7] = tx_que_data_en;
        default: ;
    endcase
end

genvar i;
generate for (i=0; i<8; i=i+1)
    begin: queue_bus
        fifo_24x32 fifo_24x32_inst (
            .clk(sys_clk),                    // input wire clk
            .rst(sys_rst_n),                    // input wire rst
            .din(que_fifo_din[i]),                    // input wire [23 : 0] din
            .wr_en(que_fifo_wr_en[i]),                // input wire wr_en
            .rd_en(que_fifo_rd_en[i]),                // input wire rd_en
            .dout(que_fifo_dout[i]),                  // output wire [23 : 0] dout
            .full(que_fifo_full[i]),                  // output wire full
            .almost_full(que_fifo_almost_full[i]),    // output wire almost_full
            .empty(que_fifo_empty[i]),                // output wire empty
            .almost_empty(que_fifo_almost_empty[i]),  // output wire almost_empty
            .wr_rst_busy(wr_rst_busy[i]),    // output wire wr_rst_busy
            .rd_rst_busy(rd_rst_busy[i])    // output wire rd_rst_busy
        );
    end
endgenerate

endmodule