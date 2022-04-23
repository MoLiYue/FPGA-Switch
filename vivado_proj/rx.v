module rx(
    input wire clk,         //输入时钟，PHY时钟
    input wire rst_n,

    input wire [7:0] gmii_rxd,

);