/*
rgmii_rx rgmii_rx_inst(
    //以太网RGMII接口
    .rgmii_rxc	    (rgmii_rxc),//RGMII接收时钟        input wire
    .rgmii_rx_ctl   (rgmii_rx_ctl),//RGMII接收数据控制信号 input wire
    .rgmii_rxd	    (rgmii_rxd),//RGMII接收数据        input wire [3:0]
    //以太网GMII接口
    .gmii_rx_clk    (gmii_rx_clk),//GMII接收时钟        output wire
    .gmii_rx_dv	    (gmii_rx_dv),//GMII接收数据有效信号 output wire
    .gmii_rxd	    (gmii_rxd) //GMII接收数据        output wire [7:0]
    );
*/
module rgmii_rx(
    //以太网RGMII接口
    input wire          rgmii_rxc	,//RGMII接收时钟
    input wire          rgmii_rx_ctl,//RGMII接收数据控制信号
    input wire [3:0]    rgmii_rxd	,//RGMII接收数据
    //以太网GMII接口
    output wire 		gmii_rx_clk	,//GMII接收时钟
    output wire 		gmii_rx_dv	,//GMII接收数据有效信号
    output wire [7:0] 	gmii_rxd	 //GMII接收数据
);

    //wire define
    wire        rgmii_rxc_bufg      ;//全局时钟缓存
    wire        rgmii_rxc_bufio     ;//全局时钟IO缓存
    wire [3:0]  rgmii_rxd_delay     ;//rgmii_rxd输入延时
    wire        rgmii_rx_ctl_delay  ;//rgmii_rx_ctl输入延时
    wire [1:0]  gmii_rxdv_t         ;//两位GMII接收有效信号

    assign gmii_rx_clk = rgmii_rxc;
    assign gmii_rx_dv = gmii_rxdv_t[0] & gmii_rxdv_t[1];//原理未知

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Set/Reset type: "SYNC" or "ASYNC" 
    ) IDDR_rx_ctl_inst (
      .Q1(gmii_rxdv_t[0]), // 1-bit output for positive edge of clock
      .Q2(gmii_rxdv_t[1]), // 1-bit output for negative edge of clock
      .C(rgmii_rxc),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(rgmii_rx_ctl),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
    );

    //rgmii_rxd输入延时与双沿采样
    genvar i;
    generate for (i=0; i<4; i = i+1)
        begin : rxdata_bus
    
            IDDR #(
              .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                              //    or "SAME_EDGE_PIPELINED" 
              .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
              .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
              .SRTYPE("ASYNC") // Set/Reset type: "SYNC" or "ASYNC" 
            ) IDDR_rxd_inst (
              .Q1(gmii_rxd[i+4]), // 1-bit output for positive edge of clock
              .Q2(gmii_rxd[i]), // 1-bit output for negative edge of clock
              .C(rgmii_rxc),   // 1-bit clock input
              .CE(1'b1), // 1-bit clock enable input
              .D(rgmii_rxd[i]),   // 1-bit DDR data input
              .R(1'b0),   // 1-bit reset
              .S(1'b0)    // 1-bit set
            );
        end
    endgenerate
    
endmodule