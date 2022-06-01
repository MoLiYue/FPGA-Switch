`timescale 1ns / 1ps

module tb_MMU();

reg sys_clk;
reg sys_rst_n;

reg rx_en;
reg tx_en;
reg [8:0] tx_cur_logic_addr;
wire [8:0] rx_cur_logic_addr;

wire [16:0] rx_cur_phy_addr;
wire [16:0] tx_cur_phy_addr;



initial begin
    sys_clk = 1'b0;
    sys_rst_n <= 1'b0;
    tx_cur_logic_addr <= 9'd0;
    #100
    sys_rst_n <= 1'b1;
    rx_en <= 1'b1;
    tx_en <= 1'b1;
    tx_cur_logic_addr <= 9'd10;
    #300
    rx_en <= 1'b0;
    tx_en <= 1'b0;
    #50
    rx_en <= 1'b1;
    tx_en <= 1'b1;
    tx_cur_logic_addr <= 9'd0;
    #300
    rx_en <= 1'b0;
    tx_en <= 1'b0;
end

always #5 sys_clk = ~sys_clk;

MMU MMU_inst(
    //---------------------------------系统信号----------------------------------------
    .sys_clk     (sys_clk),//input wire 
    .sys_rst_n   (sys_rst_n),//input wire 
    //--------------------------------------------------------------------------------
    
    //------------------------------面向ctl_center的接口--------------------------------
    //rx
    .rx_en              (rx_en),//接收使能信号    input wire 

    .rx_cur_logic_addr  (rx_cur_logic_addr),//输出的当前rx逻辑地址    output reg [8:0] 
    //tx
    .tx_en              (tx_en),//接收使能信号，有接收仲裁模块提供   input wire 
    .tx_cur_logic_addr  (tx_cur_logic_addr),//输出的当前tx逻辑地址    input wire [8:0] 

    //------------------------------------面向RAM的接口----------------------------------
    //rx
    .rx_cur_phy_addr    (rx_cur_phy_addr),//输出当前rx物理地址    output reg [16:0] 
    //tx
    .tx_cur_phy_addr    (tx_cur_phy_addr)//输出当前tx物理地址 output reg [16:0] 

);

endmodule