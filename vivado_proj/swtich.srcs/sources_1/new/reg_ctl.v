/*
reg_ctl reg_ctl_inst(
    .mac_clk        (mac_clk),                         //input wire 
    .sys_rst_n      (sys_rst_n),                         //input wire 

    .reg_data_en    (reg_data_en),     //PHY寄存器数据有效信号     input wire 
    .reg_data       (reg_data),     //PHY某个寄存器的数据   input wire [15:0] 

    //output wire [4:0] PHY_addr, //暂时用不到
    .REG_addr       (REG_addr),     //寄存器地址                output reg [4:0] 
    .mac_reg_data   (mac_reg_data),     //MAC缓存下某个寄存器的数据 output wire  [15:0] 
    .rd_PHYreg_en   (rd_PHYreg_en)       //读取PHY寄存器信号       output reg 

    //.rd_MACreg_en   ()   //MAC寄存器数据可读取信号  output reg 
);
*/
module reg_ctl(
    input wire mac_clk,
    input wire sys_rst_n,

    input wire reg_data_en, //PHY寄存器数据有效信号
    input wire [15:0] reg_data,     //PHY某个寄存器的数据

    //output wire [4:0] PHY_addr, //暂时用不到
    output reg [4:0] REG_addr, //寄存器地址
    output wire [15:0] mac_reg_data,     //MAC缓存下某个寄存器的数据
    output reg rd_PHYreg_en       //读取PHY寄存器信号

    //output reg rd_MACreg_en   //MAC寄存器数据可读取信号
);
    //IEEE802.3
    parameter IDLE      = 21'b0000_0000_0000_0000_0000_1;//空闲状态
    parameter BMCR      = 21'b0000_0000_0000_0000_0001_0;//Basic Mode Control Register, Address 0x00
    parameter BMSR      = 21'b0000_0000_0000_0000_0010_0;//Basic Mode Status Register, Address 0x01
    parameter PHYID1    = 21'b0000_0000_0000_0000_0100_0;//PHY Identifier Register 1, Address 0x02
    parameter PHYID2    = 21'b0000_0000_0000_0000_1000_0;//PHY Identifier Register 2, Address 0x03
    parameter ANAR      = 21'b0000_0000_0000_0001_0000_0;//Auto-Negotiation Advertising Register, Address 0x04
    parameter ANLPAR    = 21'b0000_0000_0000_0010_0000_0;//Auto-Negotiation Link Partner Ability Register, Address 0x05
    parameter ANER      = 21'b0000_0000_0000_0100_0000_0;//Auto-Negotiation Expansion Register, Address 0x06
    parameter ANNPTR    = 21'b0000_0000_0000_1000_0000_0;//Auto-Negotiation Next Page Transmit Register, Address 0x07
    parameter ANNPRR    = 21'b0000_0000_0001_0000_0000_0;//Auto-Negotiation Next Page Receive Register, Address 0x08
    parameter GBCR      = 21'b0000_0000_0010_0000_0000_0;//1000Base-T Control Register, Address 0x09
    parameter GBSR      = 21'b0000_0000_0100_0000_0000_0;//1000Base-T Status Register, Address 0x0A
    //Reserved 11-12
    parameter MACR      = 21'b0000_0000_1000_0000_0000_0;//MMD Access Control Register, Address 0x0D
    parameter MAADR     = 21'b0000_0001_0000_0000_0000_0;//MMD Access Address Data Register, Address 0x0E
    parameter GBESR     = 21'b0000_0010_0000_0000_0000_0;//1000Base-T Extended Status Register, Address 0x0F
    //Spical Register
    //Reserved 16-17
    parameter INER      = 21'b0000_0100_0000_0000_0000_0;//Interrupt Enable Register, Page 0xa42, Address 0x12
    parameter PHYCR1    = 21'b0000_1000_0000_0000_0000_0;//PHY Specific Control Register 1, Page 0xa43, Address 0x18
    parameter PHYCR2    = 21'b0001_0000_0000_0000_0000_0;//PHY Specific Control Register 2, Page 0xa43, Address 0x19
    //Reserved 19-23
    parameter PHYSR     = 21'b0010_0000_0000_0000_0000_0;//PHY Specific Status Register, Page 0xa43, Address 0x1A
    parameter INSR      = 21'b0100_0000_0000_0000_0000_0;//Interrupt Status Register, Page 0xa43, Address 0x1D
    //Reserved 30
    parameter PAGSR     = 21'b1000_0000_0000_0000_0000_0;//Page Select Register, Page 0xa43, Address 0x1F

    //parameter PHYSCR  PHY Special Cofig Register, Page 0xa46, Address 0x14
    //parameter LCR     LED Control Register, Page 0xd04, Address 0x10
    //parameter EEELCR  EEE LED Control Register, Page 0xd04, Address 0x11
    //parameter MIICR   MII Control Register, Page 0xd08, Address 0x15
    //parameter INTBCR  INTB Pin Control Register, Page 0xd40, Address 0x16
    //parameter PC1R    PCS Control 1 Register, MMD Device 3, Address 0x00
    //parameter PS1R    PCS Status1 Register, MMD Device 3, Address 0x01
    //parameter EEECR   EEE Capability Register, MMD Device 3, Address 0x14
    //parameter EEEWER  EEE Wake Error Register, MMD Device 3, Address 0x16
    //parameter EEEAR   EEE Advertisement Register, MMD Device 7, Address 0x3c
    //parameter EEELPAR EEE Link Partner Ability Register, MMD Device 7, Address 0x3d

    reg [6:0] cnt;  //间隔时间计数器
    reg [20:0] state;//状态机状态

    //轮询发送 读取PHY寄存器 间隔时间计数器
    always @(posedge mac_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            cnt <= 7'b0;
        else if(cnt == 7'd65)
            cnt <= 7'd0;
        else
            cnt <= cnt + 1;
    end

    //循环查询 寄存器地址
    always @(posedge mac_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            REG_addr <= 5'd0;
        else if(reg_data_en == 1'b1)
            REG_addr <= REG_addr + 1;
        else if(reg_data_en == 1'b1 && REG_addr == 5'b11111)
            REG_addr <= 5'd0;
        else
            REG_addr <= REG_addr;
    end

    always @(posedge mac_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            rd_PHYreg_en <= 1'b0;
        else if(cnt == 7'd65)
            rd_PHYreg_en <= 1'b1;
        else
            rd_PHYreg_en <= 1'b0;
    end

    //状态转移条件
    always @(posedge mac_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            state <= 21'd0;
        else
            case(REG_addr)
                5'd0 : state <= BMCR   ;
                5'd1 : state <= BMSR   ;
                5'd2 : state <= PHYID1 ;
                5'd3 : state <= PHYID2 ;
                5'd4 : state <= ANAR   ;
                5'd5 : state <= ANLPAR ;
                5'd6 : state <= ANER   ;
                5'd7 : state <= ANNPTR ;
                5'd8 : state <= ANNPRR ;
                5'd9 : state <= GBCR   ;
                5'd10: state <= GBSR   ;
                5'd13: state <= MACR   ;
                5'd14: state <= MAADR  ;
                5'd15: state <= GBESR  ;
                5'd18: state <= INER   ;
                5'd24: state <= PHYCR1 ;
                5'd25: state <= PHYCR2 ;
                5'd26: state <= PHYSR  ;
                5'd29: state <= INSR   ;
                5'd31: state <= PAGSR  ;
                default: state <= IDLE ;
            endcase
    end


    //寄存器inst
    mac_reg_12x32 mac_reg_12x32_inst (
        .clka(mac_clk),    // input wire clka
        .wea(reg_data_en),      // input wire [0 : 0] wea
        .addra(REG_addr),  // input wire [4 : 0] addra
        .dina(reg_data),    // input wire [15 : 0] dina

        .douta(mac_reg_data)  // output wire [15 : 0] douta
    );
endmodule