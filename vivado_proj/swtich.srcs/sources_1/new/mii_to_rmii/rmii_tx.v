/*
rmii_tx rmii_tx_inst(
    //MII发送端口
    .mii_tx_clk (mii_tx_clk),   //MII发送时钟        input
    .mii_tx_en  (mii_tx_en),    //MII输出数据有效信号    input
    .mii_txd    (mii_txd),      //MII输出数据        input   [3:0]
    //RMII发送端口
    .rmii_txc   (rmii_txc),     //RMII发送数据时钟       output
    .rmii_tx_ctl(rmii_tx_ctl),  //RMII输出数据有效信号    output
    .rmii_txd   (rmii_txd)      //RMII输出数据           output  [1:0]
    );
*/
module rmii_tx(
    //MII发送端口
    input           mii_tx_clk ,//MII发送时钟
    input           mii_tx_en  ,//MII输出数据有效信号
    input   [3:0]   mii_txd    ,//MII输出数据
    //RGMII发送端口
    output          rmii_txc   ,//RMII发送数据时钟
    output          rmii_tx_ctl,//RMII输出数据有效信号
    output  [1:0]   rmii_txd    //RMII输出数据
);


    assign rmii_txc = mii_tx_clk;

    ODDR #(
      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Set/Reset type: "SYNC" or "ASYNC" 
    ) ODDR_tx_ctl_inst (
      .Q(rmii_tx_ctl),   // 1-bit DDR output
      .C(mii_tx_clk),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D1(mii_tx_en), // 1-bit data input (positive edge)
      .D2(mii_tx_en), // 1-bit data input (negative edge)
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
    );

    genvar i;
    generate for (i=0; i<2; i=i+1)
        begin : txdata_bus
            ODDR #(
              .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
              .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
              .SRTYPE("ASYNC") // Set/Reset type: "SYNC" or "ASYNC" 
            ) ODDR_txd_inst (
              .Q(rmii_txd[i]),   // 1-bit DDR output
              .C(mii_tx_clk),   // 1-bit clock input
              .CE(1'b1), // 1-bit clock enable input
              .D1(mii_txd[i]), // 1-bit data input (positive edge)
              .D2(mii_txd[i+2]), // 1-bit data input (negative edge)
              .R(1'b0),   // 1-bit reset
              .S(1'b0)    // 1-bit set
            );
        end
    endgenerate
endmodule