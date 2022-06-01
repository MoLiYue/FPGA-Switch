/*
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
    .tx_en              (tx_en),//发送使能信号，由发送仲裁模块提供   input wire 
    .tx_cur_logic_addr  (tx_cur_logic_addr),//输入的当前tx逻辑地址    input wire [8:0] 

    //------------------------------------面向RAM的接口----------------------------------
    //rx
    .rx_cur_phy_addr    (rx_cur_phy_addr),//输出当前rx物理地址    output reg [16:0] 
    //tx
    .tx_cur_phy_addr    (tx_cur_phy_addr)//输出当前tx物理地址 output reg [16:0] 

);
*/

module MMU(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------
    
    //------------------------------面向ctl_center的接口--------------------------------
    //rx
    input wire rx_en,//接收使能信号
    output reg [8:0] rx_cur_logic_addr,//输出的当前rx逻辑地址
    //tx
    input wire tx_en,//发送使能信号，由发送仲裁模块提供   input wire 
    input wire [8:0] tx_cur_logic_addr,//输出的当前tx逻辑地址

    //------------------------------------面向RAM的接口----------------------------------
    //rx
    output reg [16:0] rx_cur_phy_addr,//输出当前rx物理地址
    //tx
    output reg [16:0] tx_cur_phy_addr//输出当前tx物理地址

);

//-------------------------------------rx-----------------------------------------------
//----                                                                              ----
//----                                                                              ----
//----                                                                              ----
//----                                                                              ----
//--------------------------------------------------------------------------------------

    reg [8:0] cur_cnt;
    reg [8:0] next_cnt;
    wire [8:0] addra;
    reg [19:0] next_cnt_din;

    reg change_delay1;
    reg change_delay2;
    wire pos_rx_en = change_delay1 && (~change_delay2);
    wire neg_rx_en = (~change_delay1) && change_delay2;

    wire [19:0] next_cnt_dout;

    assign addra = (cur_state == SEARCH) ?  next_cnt : cur_cnt;

    //采集rx_en上升沿、下降沿信号
    always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        change_delay1 <= 1'b0;
    else
        change_delay1 <= rx_en;
    end
    always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        change_delay2 <= 1'b0;
    else
        change_delay2 <= change_delay1;
    end

    //cur_cnt
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n)
            cur_cnt <= 9'd0;
        else if(pos_rx_en)
            cur_cnt <= next_cnt;
        else
            cur_cnt <= cur_cnt;
    end

    //cur_

    localparam IDLE     = 2'b01;
    localparam SEARCH   = 2'b10;

    reg [1:0] cur_state;
    reg [1:0] next_state;

    reg [1:0] search_cur_state;
    reg [1:0] search_next_state;

    //search状态机
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n)
            search_cur_state <= IDLE;
        else
            search_cur_state <= search_next_state;
    end
    //search状态转换
    always @(*) begin
        search_next_state = IDLE;
        case(search_cur_state)
            IDLE: 
                if(cur_state == SEARCH)
                    search_next_state = SEARCH;
            SEARCH: 
                if(cur_state == SEARCH)
                    search_next_state = IDLE;
            default: search_next_state = IDLE;
        endcase
    end

    //next_cnt状态机
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n)
            cur_state <= IDLE;
        else
            cur_state <= next_state;
    end
    //next_cnt状态转换
    always @(*) begin
        next_state = SEARCH;
        case(cur_state)
            IDLE:
                if(pos_rx_en)
                    next_state = SEARCH;
                else
                    next_state = cur_state;
            SEARCH:
                case(search_cur_state)
                    SEARCH:
                        if(next_cnt_dout[19:17] == 3'b000)
                            next_state = IDLE;
                        else
                            next_state = cur_state;
                    default: ;
                endcase
            default: next_state = IDLE;
        endcase
    end

    //next_cnt
    always @(*) begin
        if(!sys_rst_n)
            next_cnt = 9'd1;
        else
            case(cur_state)
                IDLE:
                    next_cnt = next_cnt;
                SEARCH:
                    if(search_cur_state == IDLE)
                        next_cnt = next_cnt + 1;
                    else
                        next_cnt = next_cnt;
                default:
                    next_cnt = next_cnt;
            endcase
    end

    //next_cnt_din
    always @(*) begin
        if(!sys_rst_n)
            next_cnt_din = 20'd0;
        else if(pos_rx_en)
            next_cnt_din = {3'd1, next_cnt_dout[16:0]};
        else if(neg_rx_en)
            next_cnt_din = {3'd1, next_cnt_dout[16:0]};
        else
            next_cnt_din = next_cnt_din;
    end

    //rx_cur_phy_addr
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n)
            rx_cur_phy_addr <= 17'd0;
        else if(pos_rx_en)
            rx_cur_phy_addr <= next_cnt_dout[16:0];
        else
            rx_cur_phy_addr <= rx_cur_phy_addr;
    end

    //rx_cur_logic_addr
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n)
            rx_cur_logic_addr <= 9'd0;
        else if(neg_rx_en)
            rx_cur_logic_addr <= cur_cnt;
        else
            rx_cur_logic_addr <= rx_cur_logic_addr;
    end

//-------------------------------------tx---------------------------------------
//----                                                                      ----
//----                                                                      ----
//----                                                                      ----
//------------------------------------------------------------------------------
    wire [19:0] tx_rd_dout;

    reg change_delay3;
    reg change_delay4;
    reg [2:0] tx_minus;
    reg [19:0] tx_rd_din;

    wire pos_tx_en = change_delay3 && (~change_delay4);
    wire neg_tx_en = (~change_delay3) && change_delay4;

    //采集tx_en上升沿、下降沿信号
    always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        change_delay3 <= 1'b0;
    else
        change_delay3 <= tx_en;
    end
    always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        change_delay4 <= 1'b0;
    else
        change_delay4 <= change_delay3;
    end

    //tx_cur_phy_addr
    always @(*) begin
        if(pos_tx_en)
            tx_cur_phy_addr = tx_rd_dout[16:0];
        else
            tx_cur_phy_addr = tx_cur_phy_addr;
    end

    always @(*) begin
        if(!sys_rst_n)
            tx_minus = 3'd0;
        else if(pos_tx_en && tx_minus != 0)
            tx_minus = tx_rd_dout[19:17] - 1;
        else
            tx_minus = tx_minus;
    end

    always @(*) begin
        if(!sys_rst_n)
            tx_rd_din = 20'd0;
        else if(pos_tx_en)
            tx_rd_din = {tx_minus, tx_rd_dout[16:0]};
        else
            tx_rd_din = tx_rd_din;
    end

blk_mem_18x400 blk_mem_18x400_inst (
    .clka(sys_clk),    // input wire clka
    .wea(pos_rx_en),      // input wire [0 : 0] wea
    .addra(addra),  // input wire [8 : 0] addra
    .dina(next_cnt_din),    // input wire [19 : 0] dina
    .douta(next_cnt_dout),  // output wire [19 : 0] douta
    .clkb(sys_clk),    // input wire clkb
    .web(neg_tx_en),      // input wire [0 : 0] web
    .addrb(tx_cur_logic_addr),  // input wire [8 : 0] addrb
    .dinb(tx_rd_din),    // input wire [19 : 0] dinb
    .doutb(tx_rd_dout)  // output wire [19 : 0] doutb
);

endmodule