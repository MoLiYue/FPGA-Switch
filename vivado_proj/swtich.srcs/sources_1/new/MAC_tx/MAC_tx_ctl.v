module MAC_tx_ctl(
    input wire sys_clk,      //接收时钟
    input wire sys_rst_n,   //复位


    input wire [2:0] mod,//待定

    output wire [7:0] mac_txd,
    output wire txc,
    output wire tx_en

);

always @(posedge rx_clk or negedge rx_dv) begin
    if(rx_dv == 1'b0)

end



endmodule