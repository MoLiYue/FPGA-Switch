module clock_ctl(
    input wire sys_clk, //系统时钟
    input wire sys_rst_n,

    input wire [2:0] speed_mode,    //速度模式	100：1000Mbps 010：100Mbps 001：10Mbps  input wire [2:0] 

    output reg mac_clk,     //发送时钟
    output wire MDIO_clk        //MDIO时钟
);

localparam _1000M = 3'b100;
localparam _100M = 3'b010;
localparam _10M = 3'b001;

reg clk_2500K;  //2.5MHz 时钟
reg [3:0] cnt;    //10分频计数器

wire clk_125M;
wire clk_25M;

always @(*) begin
    case(speed_mode)
        _1000M: mac_clk = clk_125M;
        _100M: mac_clk = clk_25M;
        _10M: mac_clk = clk_2500K;
    endcase
end

//cnt计数
always @(posedge clk_25M or negedge sys_rst_n) begin
    if(!sys_rst_n)
        cnt <= 4'b0;
    else if(cnt == 4'd10)
        cnt <= 4'b0;
    else
        cnt <= cnt + 1;
end

//2.5MHz时钟
always @(posedge clk_25M or negedge sys_rst_n) begin
    if(!sys_rst_n)
        clk_2500K <= 1'b0;
    else if(cnt == 4'd10)
        clk_2500K <= ~clk_2500K;
    else
        clk_2500K <= clk_2500K + 1;
end

pll_mac pll_mac_inst
   (
    // Clock out ports
    .clk_125M(clk_125M),     // output clk_125M
    .clk_25M(clk_25M),     // output clk_25M
    .clk_10M(MDIO_clk),     // output clk_10M
   // Clock in ports
    .sys_clk(sys_clk));      // input sys_clk

endmodule