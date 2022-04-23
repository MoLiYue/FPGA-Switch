/*
rgmii_tx rgmii_tx_inst(
    //GMII发送端口
    .gmii_tx_clk (gmii_tx_clk),//GMII发送时钟        input
    .gmii_tx_en  (gmii_tx_en),//GMII输出数据有效信号    input
    .gmii_txd    (gmii_txd),//GMII输出数据        input   [7:0]
    //RGMII发送端口
    .rgmii_txc   (rgmii_txc),//RGMII发送数据时钟       output
    .rgmii_tx_ctl(rgmii_tx_ctl),//RGMII输出数据有效信号    output
    .rgmii_txd   (rgmii_txd) //RGMII输出数据           output  [3:0]
    );
*/
module rgmii_tx(
    //GMII发送端口
    input           gmii_tx_clk ,//GMII发送时钟
    input           gmii_tx_en  ,//GMII输出数据有效信号
    input   [7:0]   gmii_txd    ,//GMII输出数据
    //RGMII发送端口
    output          rgmii_txc   ,//RGMII发送数据时钟
    output          rgmii_tx_ctl,//RGMII输出数据有效信号
    output  [3:0]   rgmii_txd    //RGMII输出数据
);

    assign rgmii_txc = gmii_tx_clk;

    ODDR #(
      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Set/Reset type: "SYNC" or "ASYNC" 
    ) ODDR_inst (
      .Q(rgmii_tx_ctl),   // 1-bit DDR output
      .C(gmii_tx_clk),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D1(gmii_tx_en), // 1-bit data input (positive edge)
      .D2(gmii_tx_en), // 1-bit data input (negative edge)
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
    );

    genvar i;
    generate for (i=0; i<4; i=i+1)
        begin : txdata_bus
            ODDR #(
              .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
              .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
              .SRTYPE("ASYNC") // Set/Reset type: "SYNC" or "ASYNC" 
            ) ODDR_inst_1 (
              .Q(rgmii_txd[i]),   // 1-bit DDR output
              .C(gmii_tx_clk),   // 1-bit clock input
              .CE(1'b1), // 1-bit clock enable input
              .D1(gmii_txd[i]), // 1-bit data input (positive edge)
              .D2(gmii_txd[i+4]), // 1-bit data input (negative edge)
              .R(1'b0),   // 1-bit reset
              .S(1'b0)    // 1-bit set
            );
        end
    endgenerate
endmodule