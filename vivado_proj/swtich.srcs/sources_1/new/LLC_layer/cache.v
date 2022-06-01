module cache(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    //------------------------------------ctl_center接口------------------------------------
    //rx
	input wire rx_dout,//接收数据
	input wire rx_en,//接收使能
	output wire [8:0] rx_addr,//接收地址
    //tx
    input wire tx_en,//发送数据使能信号
	output wire tx_din//发送数据
);

//MMU内存管理单元
MMU MMU_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk     (sys_clk),//input wire 
    .sys_rst_n   (sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------
    
    //------------------------------面向ctl_center的接口--------------------------------
    //rx
    .rx_en              (rx_en),//接收使能信号    input wire 

    .rx_cur_logic_addr  (rx_addr),//输出的当前rx逻辑地址    output reg [8:0] 
    //tx
    .tx_en              (tx_en),//发送使能信号，由发送仲裁模块提供   input wire 
    .tx_cur_logic_addr  (tx_cur_logic_addr),//输入的当前tx逻辑地址    input wire [8:0] 

    //------------------------------------面向RAM的接口----------------------------------
    //rx
    .rx_cur_phy_addr    (rx_cur_phy_addr),//输出当前rx物理地址    output reg [16:0] 
    //tx
    .tx_cur_phy_addr    (tx_cur_phy_addr)//输出当前tx物理地址 output reg [16:0] 

);

//存储单元
mem_64x192 mem_64x76800_inst (
    .clka(sys_clk),    // input wire clka
    .ena(1'b1),      // input wire ena
    .wea(wea),      // input wire [0 : 0] wea
    .addra(addra),  // input wire [16 : 0] addra
    .dina(tx_din),    // input wire [63 : 0] dina
    .clkb(sys_clk),    // input wire clkb
    .enb(1'b1),      // input wire enb
    .addrb(addrb),  // input wire [16 : 0] addrb
    .doutb(doutb)  // output wire [63 : 0] doutb
);

endmodule