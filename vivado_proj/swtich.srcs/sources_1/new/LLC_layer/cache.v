module cache(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

    //------------------------------------ctl_center接口------------------------------------
    //rx
	input wire [63:0] rx_data,//接收数据
	input wire rx_en,//接收使能
	output wire [8:0] rx_addr,//接收地址
    //tx
    input wire tx_en,//发送数据使能信号
    input wire [8:0] tx_addr,//发送数据逻辑地址信息
	output wire tx_data//发送数据
);

//----------------------------------------------------rx----------------------------------------
//----                                                                                      ----
//----                                                                                      ----
//----                                                                                      ----
//----------------------------------------------------------------------------------------------
wire [16:0] rx_cur_phy_addr;
reg [16:0] rx_phy_addr;
reg [63:0] rx_data_delay1;
reg [63:0] rx_data_delay2;
reg rx_en_delay1;
reg rx_en_delay2;

//rx_en_delay1，可能需要延迟一个周期以保持同步
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_en_delay1 <= 1'b0;
    else
        rx_en_delay1 <= rx_en;
end
//rx_en_delay1，可能需要延迟一个周期以保持同步
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_en_delay2 <= 1'b0;
    else
        rx_en_delay2 <= rx_en_delay1;
end

//rx_data，延迟一个周期
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_data_delay1 <= 64'd0;
    else
        rx_data_delay1 <= rx_data;
end
//rx_data，延迟两个周期
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_data_delay2 <= 64'd0;
    else
        rx_data_delay2 <= rx_data_delay1;
end

//rx_phy_addr
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        rx_phy_addr <= 17'b0;
    else if(rx_en_delay2)
        rx_phy_addr <= rx_phy_addr + 1;
    else
        rx_phy_addr <= rx_cur_phy_addr;
end

//----------------------------------------------------tx----------------------------------------
//----                                                                                      ----
//----                                                                                      ----
//----                                                                                      ----
//----------------------------------------------------------------------------------------------

wire [16:0] tx_cur_phy_addr;
reg [16:0] tx_phy_addr;
reg tx_en_delay1;
reg tx_en_delay2;
reg tx_en_delay3;

//tx_en_delay1，可能需要延迟一个周期以保持同步
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        tx_en_delay1 <= 1'b0;
    else
        tx_en_delay1 <= tx_en;
end
//tx_en_delay2，可能需要延迟一个周期以保持同步
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        tx_en_delay2 <= 1'b0;
    else
        tx_en_delay2 <= tx_en_delay1;
end
//tx_en_delay3，可能需要延迟一个周期以保持同步
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        tx_en_delay3 <= 1'b0;
    else
        tx_en_delay3 <= tx_en_delay2;
end

//tx_phy_addr
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        tx_phy_addr <= 17'b0;
    else if(tx_en_delay3)
        tx_phy_addr <= tx_phy_addr + 1;
    else
        tx_phy_addr <= tx_cur_phy_addr;
end

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
    .tx_cur_logic_addr  (tx_addr),//输入的当前tx逻辑地址    input wire [8:0] 

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
    .wea(rx_en_delay2),      // input wire [0 : 0] wea
    .addra(rx_phy_addr),  // input wire [16 : 0] addra
    .dina(rx_data_delay2),    // input wire [63 : 0] dina
    .clkb(sys_clk),    // input wire clkb
    .enb(1'b1),      // input wire enb
    .addrb(tx_phy_addr),  // input wire [16 : 0] addrb
    .doutb(tx_data)  // output wire [63 : 0] doutb
);

endmodule