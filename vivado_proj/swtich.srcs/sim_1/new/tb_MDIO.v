`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2022 05:46:52 PM
// Design Name: 
// Module Name: tb_MDIO
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_MDIO();

    //状态机参数
    parameter IDLE     = 8'b0000_0001;
    parameter PRE      = 8'b0000_0010;
    parameter START    = 8'b0000_0100;
    parameter OP_CODE  = 8'b0000_1000;
    parameter PHY_ADDR = 8'b0001_0000;
    parameter REG_ADDR = 8'b0010_0000;
    parameter TA       = 8'b0100_0000;
    parameter REG_DATA = 8'b1000_0000;

reg [4:0] cnt;//状态机中计数器，计数bit位数

reg mac_clk;
reg sys_rst_n;
reg link;
reg data_in;
wire rd_PHYreg_en;
wire [4:0] REG_addr;

wire MDIO_data;

wire mdc;
wire reg_data_en;
wire [15:0] reg_data;
wire [15:0] mac_reg_data;
wire data_out;

integer i;

initial begin
    mac_clk = 1'b0;
    sys_rst_n <= 1'b0;
    #200
    sys_rst_n <= 1'b1;
    #20
    #650
    #475
    for (i=0; i<8; i = i+1) begin
        #10
        force MDIO_data = 0;
        #10
        force MDIO_data = 1;
    end
    #160
    force MDIO_data = 1'bz;
end

always #5 mac_clk = ~mac_clk;

//assign MDIO_data = link ? data_in : 1'bz;
assign data_out = (!link) ? MDIO_data : 1'bz;

    /*状态机内计数器
    always @(posedge mdc or negedge sys_rst_n) begin
        if (sys_rst_n == 1'b1)
            cnt <= 5'b0;
        else
            case(state)
                IDLE:
                    cnt <= 5'b0;
                PRE:
                    if(cnt == 5'd31)
                        cnt <= 5'b0;
                    else
                        cnt <= cnt + 1;
                START:
                    if(cnt == 5'd1)
                        cnt <= 5'b0;
                    else
                        cnt <= cnt + 1;
                OP_CODE:
                    if(cnt == 5'd1)
                        cnt <= 5'b0;
                    else
                        cnt <= cnt + 1;
                PHY_ADDR:
                    if(cnt == 5'd4)
                        cnt <= 5'b0;
                    else
                        cnt <= cnt + 1;
                REG_ADDR:
                    if(cnt == 5'd4)
                        cnt <= 5'b0;
                    else
                        cnt <= cnt + 1;
                TA:
                    if(cnt == 5'd1)
                        cnt <= 5'b0;
                    else
                        cnt <= cnt + 1;
                REG_DATA:
                    if(cnt == 5'd15)
                        cnt <= 5'b0;
                    else
                        cnt <= cnt + 1;
                default : ;
            endcase
    end

    always @(posedge MDC or negedge sys_rst_n) begin
        if (sys_rst_n == 1'b1)
            link <= 1'b0;
        else
            case(state)
                IDLE:
                    link <= 1'b0;
                PRE:
                    link <= 1'b0;
                START:
                    
                OP_CODE:
                    
                PHY_ADDR:

                REG_ADDR:
                TA:
                REG_DATA:
                default:
            endcase
    end
*/
MDIO MDIO_inst(
    //------------------------------系统信号---------------------------------
    .mac_clk        (mac_clk),     //input wire 
    .sys_rst_n      (sys_rst_n),   //input wire 
    //----------------------------------------------------------------------

    //------------------------reg_ctl模块信号--------------------------------
    .rd_PHYreg_en   (rd_PHYreg_en),    //读取寄存器使能信号 input wire
    .REG_addr       (REG_addr),    //读取寄存器地址  input wire [4:0] 

    .reg_data     (reg_data),      //                   output reg [15:0] 
    .reg_data_en  (reg_data_en),    //PHY寄存器数据有效信号 output reg  
    //----------------------------------------------------------------------

    //------------------------PHY接口信号------------------------------------
    .MDIO_data    (MDIO_data), //PHY管理数据 inout wire 

    .mdc          (mdc)      //PHY管理时钟         output wire 
    //----------------------------------------------------------------------
    );

reg_ctl reg_ctl_inst(
    //---------------------------系统信号-------------------------------
    .mac_clk        (mac_clk),                         //input wire 
    .sys_rst_n      (sys_rst_n),                         //input wire 
    //-----------------------------------------------------------------

    //--------------------------MDIO模块信号-----------------------------
    .reg_data_en    (reg_data_en),     //PHY寄存器数据有效信号     input wire 
    .reg_data       (reg_data),     //PHY某个寄存器的数据   input wire [15:0] 

    .REG_addr       (REG_addr),     //寄存器地址                output reg [4:0] 
    .rd_PHYreg_en   (rd_PHYreg_en),       //读取PHY寄存器信号       output reg 
    //------------------------------------------------------------------

    //output wire [4:0] PHY_addr, //暂时用不到
    .mac_reg_data   (mac_reg_data)     //MAC缓存下某个寄存器的数据 output wire  [15:0] 
    //.rd_MACreg_en   ()   //MAC寄存器数据可读取信号  output reg 
);

endmodule