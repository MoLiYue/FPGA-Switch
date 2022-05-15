`timescale 1ns / 1ps

module tb_clock_ctl();

reg sys_clk;
reg sys_rst_n;
reg [2:0] speed_mode;

wire gmii_tx_clk;
wire MDIO_clk;

initial begin
    sys_clk = 1'b0;
    sys_rst_n <= 1'b0;
    #20
    sys_rst_n <= 1'b1;
    #1000
    speed_mode <= 3'b100;
    #1000
    speed_mode <= 3'b010;
    #1000
    speed_mode <= 3'b001;
end

always #5 sys_clk = ~sys_clk;

clock_ctl clock_ctl_inst(
    .mac_clk        (sys_clk), //系统时钟 input wire 
    .sys_rst_n      (sys_rst_n),   //input wire 

    .speed_mode     (speed_mode),    //速度模式	100：1000Mbps 010：100Mbps 001：10Mbps  input wire [2:0] 

    .gmii_tx_clk    (gmii_tx_clk), //output wire 
    .MDIO_clk       (MDIO_clk) //MDIO时钟    output wire 
);
endmodule