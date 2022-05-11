/*
reg_ctl reg_ctl_inst(
    //---------------------------系统信号-------------------------------
    .mac_clk		(mac_clk),	//input wire
    .sys_rst_n		(sys_rst_n),	//input wire
    //-----------------------------------------------------------------

    //--------------------------MDIO模块信号-----------------------------
    .reg_data_en	(reg_data_en),         //PHY寄存器数据有效信号 input wire 			
    .reg_data		(reg_data),     		//PHY某个寄存器的数据 input wire [15:0] 	

    .REG_addr		(REG_addr),      //寄存器地址			output reg [4:0] 	
    .rd_PHYreg_en	(rd_PHYreg_en),       //读取PHY寄存器信号	output reg 			
    //------------------------------------------------------------------


    //output wire [4:0] PHY_addr, //暂时用不到
    .duplex_mode	(duplex_mode), //双工模式   10：full 01：half							output wire [1:0] 	
    .speed_mode		(speed_mode), //速度模式    100：1000Mbps 010：100Mbps 001：10Mbps		output wire [2:0] 	

    //output reg rd_MACreg_en   //MAC寄存器数据可读取信号
);
*/
module reg_ctl(
    //---------------------------系统信号-------------------------------
    input wire mac_clk,
    input wire sys_rst_n,
    //-----------------------------------------------------------------

    //--------------------------MDIO模块信号-----------------------------
    input wire reg_data_en,         //PHY寄存器数据有效信号
    input wire [15:0] reg_data,     //PHY某个寄存器的数据

    output reg [4:0] REG_addr,      //寄存器地址
    output reg rd_PHYreg_en,       //读取PHY寄存器信号
    //------------------------------------------------------------------


    //output wire [4:0] PHY_addr, //暂时用不到
    output wire [1:0] duplex_mode, //双工模式   10：full 01：half
    output wire [2:0] speed_mode, //速度模式    100：1000Mbps 010：100Mbps 001：10Mbps

    //output wire [15:0] mac_reg_data     //MAC缓存下某个寄存器的数据 目前似乎仅用于测试

    //output reg rd_MACreg_en   //MAC寄存器数据可读取信号
);

    //speed_mode
    localparam _1000MBPS = 3'b100;
    localparam _100MBPS  = 3'b010;
    localparam _10MBPS   = 3'b001;
    //duplex_mode 
    localparam FULL_DUPLEX = 2'b10;
    localparam HALF_DUPLEX = 2'b01;

    //IEEE802.3
    localparam BMCR      = 5'd0; //Basic Mode Control Register, Address 0x00
    localparam BMSR      = 5'd1; //Basic Mode Status Register, Address 0x01
    localparam PHYID1    = 5'd2; //PHY Identifier Register 1, Address 0x02
    localparam PHYID2    = 5'd3; //PHY Identifier Register 2, Address 0x03
    localparam ANAR      = 5'd4; //Auto-Negotiation Advertising Register, Address 0x04
    localparam ANLPAR    = 5'd5; //Auto-Negotiation Link Partner Ability Register, Address 0x05
    localparam ANER      = 5'd6; //Auto-Negotiation Expansion Register, Address 0x06
    localparam ANNPTR    = 5'd7; //Auto-Negotiation Next Page Transmit Register, Address 0x07
    localparam ANNPRR    = 5'd8; //Auto-Negotiation Next Page Receive Register, Address 0x08
    localparam GBCR      = 5'd9; //1000Base-T Control Register, Address 0x09
    localparam GBSR      = 5'd10;//1000Base-T Status Register, Address 0x0A
    //Reserved 11-12
    localparam MACR      = 5'd13;//MMD Access Control Register, Address 0x0D
    localparam MAADR     = 5'd14;//MMD Access Address Data Register, Address 0x0E
    localparam GBESR     = 5'd15;//1000Base-T Extended Status Register, Address 0x0F
    //Spical Register
    //Reserved 16-17
    localparam INER      = 5'd18;//Interrupt Enable Register, Page 0xa42, Address 0x12
    //Reserved 19-23
    localparam PHYCR1    = 5'd24;//PHY Specific Control Register 1, Page 0xa43, Address 0x18
    localparam PHYCR2    = 5'd25;//PHY Specific Control Register 2, Page 0xa43, Address 0x19
    localparam PHYSR     = 5'd26;//PHY Specific Status Register, Page 0xa43, Address 0x1A
    //Reserved 27-28
    localparam INSR      = 5'd29;//Interrupt Status Register, Page 0xa43, Address 0x1D
    //Reserved 30
    localparam PAGSR     = 5'd31;//Page Select Register, Page 0xa43, Address 0x1F

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
    reg mode_check_en; //判断mode的使能信号
    reg [15:0] phy_reg[0:31]; //mac中的phy寄存器信息存储寄存器
    

//-------------------------------------------------------------------------------------------------
    wire [4:0] anlpar_and_anar;
    //100M、10M判断   [4]:100-T4  [3]:100-TX_full  [2]:100-TX_half  [1]:10-T_full  [0]:10-T_half
    wire [1:0] gbsr;
    //1000M判断  [1]:full_duplex  [0]:half_duplex
//--------------------------------------------------------------------------------------------------

    wire mode_en; //模式有效信号

    assign mode_en = phy_reg[BMSR][5];  //读取Auto-Negotiation Complete信号

//    assign mac_reg_data = phy_reg[REG_addr]; //目前似乎仅用作测试

    //100M\10M判断
    assign anlpar_and_anar = phy_reg[ANLPAR][9:5] & phy_reg[ANAR][9:5];
    //1000M判断
    assign gbsr = phy_reg[GBSR][11:10];

    //组合逻辑实现自协商模式判断
    always @(posedge mac_clk or negedge sys_rst_n) begin
        if(!sys_rst_n) begin
            duplex_mode <= 2'b0;
            speed_mode <= 3'b0;
        end else if(mode_en == 1) begin //可能存在优化
            if(gbsr[1] == 1) begin
                duplex_mode <= FULL_DUPLEX;
                speed_mode <= _1000MBPS;
            end else if(gbsr[0] == 1) begin
                duplex_mode <= HALF_DUPLEX;
                speed_mode <= _1000MBPS;
            end else if(anlpar_and_anar[3] == 1) begin
                duplex_mode <= FULL_DUPLEX;
                speed_mode <= _100MBPS;
            end else if(anlpar_and_anar[2] == 1) begin
                duplex_mode <= HALF_DUPLEX;
                speed_mode <= _100MBPS;
            end else if(anlpar_and_anar[1] == 1) begin
                duplex_mode <= FULL_DUPLEX;
                speed_mode <= _10MBPS;
            end else if(anlpar_and_anar[0] == 1) begin
                duplex_mode <= HALF_DUPLEX;
                speed_mode <= _10MBPS;
            end
        end else begin
            duplex_mode <= 2'b0;
            speed_mode <= 3'b0;
        end
    end

    //轮询发送 读取PHY寄存器 间隔时间计数器
    always @(posedge mac_clk or negedge sys_rst_n) begin
        if(sys_rst_n == 1'b0)
            cnt <= 7'b0;
        else if(cnt == 7'd65)
            cnt <= 7'd0;
        else
            cnt <= cnt + 1;
    end

    //模式检查使能信号
    always @(posedge mac_clk or negedge sys_rst_n) begin
        if(!sys_rst_n)
            mode_check_en <= 1'b0;
        else if(reg_data_en == 1'b1 && REG_addr == 5'b11111)
            mode_check_en <= 1'b1;
        else
            mode_check_en <= 1'b0;
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
        if(sys_rst_n == 1'b0) begin
            phy_reg[0]  <= 16'd0;
            phy_reg[1]  <= 16'd0;
            phy_reg[2]  <= 16'd0;
            phy_reg[3]  <= 16'd0;
            phy_reg[4]  <= 16'd0;
            phy_reg[5]  <= 16'd0;
            phy_reg[6]  <= 16'd0;
            phy_reg[7]  <= 16'd0;
            phy_reg[8]  <= 16'd0;
            phy_reg[9]  <= 16'd0;
            phy_reg[10] <= 16'd0;
            phy_reg[11] <= 16'd0;
            phy_reg[12] <= 16'd0;
            phy_reg[13] <= 16'd0;
            phy_reg[14] <= 16'd0;
            phy_reg[15] <= 16'd0;
            phy_reg[16] <= 16'd0;
            phy_reg[17] <= 16'd0;
            phy_reg[18] <= 16'd0;
            phy_reg[19] <= 16'd0;
            phy_reg[20] <= 16'd0;
            phy_reg[21] <= 16'd0;
            phy_reg[22] <= 16'd0;
            phy_reg[23] <= 16'd0;
            phy_reg[24] <= 16'd0;
            phy_reg[25] <= 16'd0;
            phy_reg[26] <= 16'd0;
            phy_reg[27] <= 16'd0;
            phy_reg[28] <= 16'd0;
            phy_reg[29] <= 16'd0;
            phy_reg[30] <= 16'd0;
            phy_reg[31] <= 16'd0;
        end else
            case(REG_addr)
                5'd0  : if(reg_data_en == 1'b1) phy_reg[0]  <= reg_data; else phy_reg[0]  <= phy_reg[0] ;
                5'd1  : if(reg_data_en == 1'b1) phy_reg[1]  <= reg_data; else phy_reg[1]  <= phy_reg[1] ;
                5'd2  : if(reg_data_en == 1'b1) phy_reg[2]  <= reg_data; else phy_reg[2]  <= phy_reg[2] ;
                5'd3  : if(reg_data_en == 1'b1) phy_reg[3]  <= reg_data; else phy_reg[3]  <= phy_reg[3] ;
                5'd4  : if(reg_data_en == 1'b1) phy_reg[4]  <= reg_data; else phy_reg[4]  <= phy_reg[4] ;
                5'd5  : if(reg_data_en == 1'b1) phy_reg[5]  <= reg_data; else phy_reg[5]  <= phy_reg[5] ;
                5'd6  : if(reg_data_en == 1'b1) phy_reg[6]  <= reg_data; else phy_reg[6]  <= phy_reg[6] ;
                5'd7  : if(reg_data_en == 1'b1) phy_reg[7]  <= reg_data; else phy_reg[7]  <= phy_reg[7] ;
                5'd8  : if(reg_data_en == 1'b1) phy_reg[8]  <= reg_data; else phy_reg[8]  <= phy_reg[8] ;
                5'd9  : if(reg_data_en == 1'b1) phy_reg[9]  <= reg_data; else phy_reg[9]  <= phy_reg[9] ;
                5'd10 : if(reg_data_en == 1'b1) phy_reg[10] <= reg_data; else phy_reg[10] <= phy_reg[10];
                5'd13 : if(reg_data_en == 1'b1) phy_reg[13] <= reg_data; else phy_reg[13] <= phy_reg[13];
                5'd14 : if(reg_data_en == 1'b1) phy_reg[14] <= reg_data; else phy_reg[14] <= phy_reg[14];
                5'd15 : if(reg_data_en == 1'b1) phy_reg[15] <= reg_data; else phy_reg[15] <= phy_reg[15];
                5'd18 : if(reg_data_en == 1'b1) phy_reg[18] <= reg_data; else phy_reg[18] <= phy_reg[18];
                5'd24 : if(reg_data_en == 1'b1) phy_reg[24] <= reg_data; else phy_reg[24] <= phy_reg[24];
                5'd25 : if(reg_data_en == 1'b1) phy_reg[25] <= reg_data; else phy_reg[25] <= phy_reg[25];
                5'd26 : if(reg_data_en == 1'b1) phy_reg[26] <= reg_data; else phy_reg[26] <= phy_reg[26];
                5'd29 : if(reg_data_en == 1'b1) phy_reg[29] <= reg_data; else phy_reg[29] <= phy_reg[29];
                5'd31 : if(reg_data_en == 1'b1) phy_reg[31] <= reg_data; else phy_reg[31] <= phy_reg[31];
                default : ;
            endcase
    end


    //寄存器inst
//    mac_reg_12x32 mac_reg_12x32_inst (
//        .clka(mac_clk),    // input wire clka
//        .wea(reg_data_en),      // input wire [0 : 0] wea
//        .addra(REG_addr),  // input wire [4 : 0] addra
//        .dina(reg_data),    // input wire [15 : 0] dina
//
//        .douta(mac_reg_data)  // output wire [15 : 0] douta
//    );
endmodule
