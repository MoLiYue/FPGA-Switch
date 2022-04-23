/*
rmii_rx rmii_rx_inst(
    //以太网RMII接口
    .rmii_rxc	    (rmii_rxc),		//RMII接收时钟        input wire
    .rmii_rx_ctl   	(rmii_rx_ctl),	//RMII接收数据控制信号 input wire
    .rmii_rxd	    (rmii_rxd),		//RMII接收数据        input wire [1:0]
    //以太网MII接口
    .mii_rx_clk    	(mii_rx_clk),	//MII接收时钟        output wire
    .mii_rx_dv	    (mii_rx_dv),	//MII接收数据有效信号 output wire
    .mii_rxd	    (mii_rxd) 		//MII接收数据        output wire [3:0]
    );
*/
module rmii_rx(
    //以太网RMII接口
    input wire          rmii_rxc	,   //RMII接收时钟
    input wire          rmii_rx_ctl ,   //RMII接收数据控制信号
    input wire [1:0]    rmii_rxd	,   //RMII接收数据
    //以太网MII接口
    output wire 		mii_rx_clk	,   //MII接收时钟
    output wire 		mii_rx_dv	,   //MII接收数据有效信号
    output wire [3:0] 	mii_rxd	        //MII接收数据
);



    //wire define
    wire        rmii_rxc_bufg      ;//全局时钟缓存
    wire        rmii_rxc_bufio     ;//全局时钟IO缓存
    wire [3:0]  rmii_rxd_delay     ;//rmii_rxd输入延时
    wire        rmii_rx_ctl_delay  ;//rmii_rx_ctl输入延时
    wire [1:0]  mii_rxdv_t         ;//两位GMII接收有效信号

    assign mii_rx_clk = rmii_rxc;
    assign mii_rx_dv = mii_rxdv_t[0] & mii_rxdv_t[1];

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Set/Reset type: "SYNC" or "ASYNC" 
    ) IDDR_rx_ctl_inst (
      .Q1(mii_rxdv_t[0]), // 1-bit output for positive edge of clock
      .Q2(mii_rxdv_t[1]), // 1-bit output for negative edge of clock
      .C(rmii_rxc),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(rmii_rx_ctl),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
    );

    //rmii_rxd输入延时与双沿采样
    genvar i;
    generate for (i=0; i<2; i = i+1)
        begin : rxdata_bus
    
            IDDR #(
              .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                              //    or "SAME_EDGE_PIPELINED" 
              .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
              .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
              .SRTYPE("ASYNC") // Set/Reset type: "SYNC" or "ASYNC" 
            ) IDDR_rxd_inst (
              .Q1(mii_rxd[i+2]), // 1-bit output for positive edge of clock
              .Q2(mii_rxd[i]), // 1-bit output for negative edge of clock
              .C(rmii_rxc),   // 1-bit clock input
              .CE(1'b1), // 1-bit clock enable input
              .D(rmii_rxd[i]),   // 1-bit DDR data input
              .R(1'b0),   // 1-bit reset
              .S(1'b0)    // 1-bit set
            );
        end
    endgenerate
    
endmodule