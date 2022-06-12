/*
MDIO MDIO_inst(
    //------------------------------系统信号---------------------------------
    .MDIO_clk        (MDIO_clk),     //input wire 
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
*/
module MDIO(
    //------------------------------系统信号---------------------------------
    input wire MDIO_clk,     //mac控制器时钟     10MHz
    input wire sys_rst_n,
    //----------------------------------------------------------------------

    //------------------------reg_ctl模块信号--------------------------------
    input wire rd_PHYreg_en,    //读取PHY寄存器使能信号
    input wire [4:0] REG_addr,    //读取寄存器地址

    output reg [15:0] reg_data,//PHY某个寄存器的数据
    output reg reg_data_en,  //PHY寄存器数据有效信号
    //----------------------------------------------------------------------

    //------------------------PHY接口信号------------------------------------
    inout wire MDIO_data, //PHY管理数据

    output wire mdc      //PHY管理时钟 10Mhz
    //----------------------------------------------------------------------
);
    
    parameter PHY_addr = 5'b00001;
    parameter OP_code = 2'b10;  //OP_CODE: read:10, write:01
    
    reg [7:0] state;//状态机状态
    reg [4:0] cnt;//状态机中计数器，计数bit位数
    reg sw_en;//状态机转移使能
    reg err_en;//状态机转移使能
    //wire err_en
    //assign err_en = err_en1 & err_en2 & ...
    reg MDIO_data_tx;
    reg MDIO_data_tx_ctl;
    reg MDIO_data_rx;
    reg reg_data_rx_en;

    wire MDIO_data_in;

    //状态机参数
    parameter IDLE     = 8'b0000_0001;
    parameter PRE      = 8'b0000_0010;
    parameter START    = 8'b0000_0100;
    parameter OP_CODE  = 8'b0000_1000;
    parameter PHY_ADDR = 8'b0001_0000;
    parameter REG_ADDR = 8'b0010_0000;
    parameter TA       = 8'b0100_0000;
    parameter REG_DATA = 8'b1000_0000;
    
    assign mdc = MDIO_clk;
    assign MDIO_data = MDIO_data_tx_ctl ? MDIO_data_tx : 1'bz;
    assign MDIO_data_in = (!MDIO_data_tx_ctl) & MDIO_data;

    //状态机内计数器cnt
    always @(posedge mdc or negedge sys_rst_n) begin
        if (sys_rst_n == 1'b0)
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

    //状态机
    always @(posedge mdc or negedge sys_rst_n) begin
        if (sys_rst_n == 1'b0)
            state <= IDLE;
        else
            case (state)
                IDLE: 
                    if(sw_en)
                        state <= PRE;
                    else
                        state <= IDLE;
                PRE:
                    if(sw_en)
                        state <= START;
                    else if(err_en)
                        state <= IDLE;
                    else
                        state <= PRE;
                START:
                    if(sw_en)
                        state <= OP_CODE;
                    else if(err_en)
                        state <= IDLE;
                    else
                        state <= START;
                OP_CODE:
                    if(sw_en)
                        state <= PHY_ADDR;
                    else if(err_en)
                        state <= IDLE;
                    else
                        state <= OP_CODE;
                PHY_ADDR:
                    if(sw_en)
                        state <= REG_ADDR;
                    else if(err_en)
                        state <= IDLE;
                    else
                        state <= PHY_ADDR;
                REG_ADDR:
                    if(sw_en)
                        state <= TA;
                    else if(err_en)
                        state <= IDLE;
                    else
                        state <= REG_ADDR;
                TA:
                    if(sw_en)
                        state <= REG_DATA;
                    else if(err_en)
                        state <= IDLE;
                    else
                        state <= TA;
                REG_DATA:
                    if(sw_en)
                        state <= IDLE;
                    else if(err_en)
                        state <= IDLE;
                    else
                        state <= REG_DATA;
                default: state <= IDLE;
            endcase
    end

    //MDIO输出及输入
    always @(posedge mdc or negedge sys_rst_n) begin
        if (sys_rst_n == 1'b0) begin
            MDIO_data_tx <= 1'b0;
            MDIO_data_rx <= 1'b0;
            reg_data <= 16'd0;
        end else
            case(state)
                IDLE:
                    MDIO_data_tx <= 1'b0;
                PRE:
                    MDIO_data_tx <= 1'b1;
                START:
                    case(cnt)
                        5'd0:MDIO_data_tx <= 1'b0;
                        5'd1:MDIO_data_tx <= 1'b1;
                        default : ;
                    endcase
                OP_CODE:
                    case(cnt)
                        5'd0:MDIO_data_tx <= OP_code[1];
                        5'd1:MDIO_data_tx <= OP_code[0];
                        default : ;
                    endcase
                PHY_ADDR:
                    case(cnt)
                        5'd0:MDIO_data_tx <= PHY_addr[4];
                        5'd1:MDIO_data_tx <= PHY_addr[3];
                        5'd2:MDIO_data_tx <= PHY_addr[2];
                        5'd3:MDIO_data_tx <= PHY_addr[1];
                        5'd4:MDIO_data_tx <= PHY_addr[0];
                        default : ;
                    endcase
                REG_ADDR:
                    case(cnt)
                        5'd0:MDIO_data_tx <= REG_addr[4];
                        5'd1:MDIO_data_tx <= REG_addr[3];
                        5'd2:MDIO_data_tx <= REG_addr[2];
                        5'd3:MDIO_data_tx <= REG_addr[1];
                        5'd4:MDIO_data_tx <= REG_addr[0];
                        default : ;
                    endcase
                TA: 
                    MDIO_data_rx <= MDIO_data_in;
                REG_DATA: 
                    case(cnt)
                        5'd0 :reg_data[15] <= MDIO_data_in;
                        5'd1 :reg_data[14] <= MDIO_data_in;
                        5'd2 :reg_data[13] <= MDIO_data_in;
                        5'd3 :reg_data[12] <= MDIO_data_in;
                        5'd4 :reg_data[11] <= MDIO_data_in;
                        5'd5 :reg_data[10] <= MDIO_data_in;
                        5'd6 :reg_data[9 ] <= MDIO_data_in;
                        5'd7 :reg_data[8 ] <= MDIO_data_in;
                        5'd8 :reg_data[7 ] <= MDIO_data_in;
                        5'd9 :reg_data[6 ] <= MDIO_data_in;
                        5'd10:reg_data[5 ] <= MDIO_data_in;
                        5'd11:reg_data[4 ] <= MDIO_data_in;
                        5'd12:reg_data[3 ] <= MDIO_data_in;
                        5'd13:reg_data[2 ] <= MDIO_data_in;
                        5'd14:reg_data[1 ] <= MDIO_data_in;
                        5'd15:reg_data[0 ] <= MDIO_data_in;
                        default : ;
                    endcase
                default : ;
            endcase
    end

    //MDIO_data inout控制信号 0:in 1:out
    always @(posedge mdc or negedge sys_rst_n) begin
        if (sys_rst_n == 1'b0)
            MDIO_data_tx_ctl <= 1'b0;
        else
            case(state)
                IDLE:
                    MDIO_data_tx_ctl <= 1'b0;
                PRE:
                    MDIO_data_tx_ctl <= 1'b1;
                START:
                    MDIO_data_tx_ctl <= 1'b1;
                OP_CODE:
                    MDIO_data_tx_ctl <= 1'b1;
                PHY_ADDR:
                    MDIO_data_tx_ctl <= 1'b1;
                REG_ADDR:
                    MDIO_data_tx_ctl <= 1'b1;
                TA:
                    MDIO_data_tx_ctl <= 1'b0;
                REG_DATA:
                    MDIO_data_tx_ctl <= 1'b0;
                default: ;
            endcase
    end

    //reg_data采集信号
    always @(posedge mdc or negedge sys_rst_n) begin
        if (sys_rst_n == 1'b0)
            reg_data_rx_en <= 1'b0;
        else
            case(state)
                IDLE:
                    reg_data_rx_en <= 1'b0;
                PRE:
                    reg_data_rx_en <= 1'b0;
                START:
                    reg_data_rx_en <= 1'b0;
                OP_CODE:
                    reg_data_rx_en <= 1'b0;
                PHY_ADDR:
                    reg_data_rx_en <= 1'b0;
                REG_ADDR:
                    reg_data_rx_en <= 1'b0;
                TA:
                    reg_data_rx_en <= 1'b0;
                REG_DATA:
                    reg_data_rx_en <= 1'b1;
                default: ;
            endcase
    end

    //交换机状态转移使能
    always @(posedge mdc or negedge sys_rst_n) begin
        if (sys_rst_n == 1'b0)
            sw_en <= 1'b0;
        else
            case(state)
                IDLE:
                    if(rd_PHYreg_en == 1'b1)
                        sw_en <= 1'b1;
                    else
                        sw_en <= 1'b0;
                PRE:
                    if(cnt == 5'd30)
                        sw_en <= 1'b1;
                    else
                        sw_en <= 1'b0;
                START:
                    if(cnt == 5'd0)
                        sw_en <= 1'b1;
                    else
                        sw_en <= 1'b0;
                OP_CODE:
                    if(cnt == 5'd0)
                        sw_en <= 1'b1;
                    else
                        sw_en <= 1'b0;
                PHY_ADDR:
                    if(cnt == 5'd3)
                        sw_en <= 1'b1;
                    else
                        sw_en <= 1'b0;
                REG_ADDR:
                    if(cnt == 5'd3)
                        sw_en <= 1'b1;
                    else
                        sw_en <= 1'b0;
                TA:
                    if(cnt == 5'd0)
                        sw_en <= 1'b1;
                    else
                        sw_en <= 1'b0;
                REG_DATA:
                    if(cnt == 5'd14)
                        sw_en <= 1'b1;
                    else
                        sw_en <= 1'b0;
                default: ;
            endcase
    end

    //reg_data有效信号
    always @(posedge mdc or negedge sys_rst_n) begin
        if (sys_rst_n == 1'b0)
            reg_data_en <= 1'b0;
        else
            case(state)
                REG_DATA:
                    if(cnt == 5'd15)
                        reg_data_en <= 1'b1;
                    else
                        reg_data_en <= 1'b0;
                default: reg_data_en <= 1'b0;
            endcase
    end
endmodule
