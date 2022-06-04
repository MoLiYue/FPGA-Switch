module mac_addr#(
    parameter OLD_TIME = 16'd48000//老化时间
)
(
    //---------------------------------系统信号----------------------------------------
    input wire sys_clk,
    input wire sys_rst_n,
    //--------------------------------------------------------------------------------

	//-----------------------------------mac_addr相关信号----------------------------------
	input wire mac_addr_en		,//mac地址有效信号
	input wire [47:0] D_mac		,//目的地址
	input wire [47:0] S_mac		,//源地址
	//------------------------------------------------------------------------------------

    input wire [2:0] S_port_num,//源地址端口号

    output wire [2:0] D_port_num,//查询的目的地址端口号
    output reg D_port_num_en,//查询的目的地址端口号使能
    output reg flooding//泛洪信号
);

localparam IDLE     = 5'b0_0001;
localparam HASH     = 5'b0_0010;
localparam SEARCH   = 5'b0_0100;//如果查找到则输出端口号，反之泛洪
localparam WRITE    = 5'b0_1000;//如果查找到则renew,反之写入
localparam FLOODING = 5'b1_0000;


reg [4:0] cur_state;
reg [4:0] next_state;

reg [2:0] search_cnt;
reg [2:0] write_cnt;

reg crc_en;
reg crc_init;
wire [9:0] D_mac_addr;
wire [9:0] S_mac_addr;
reg [9:0] mac_addr;

reg [63:0] D_mac_table;
reg [63:0] S_mac_table;
reg [63:0] S_mac_table_din;
reg S_mac_table_we;
wire [63:0] mac_table;

//search_cnt计数器
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        search_cnt <= 3'b0;
    else
        case(next_state)
            SEARCH:
                search_cnt <= search_cnt + 1;
            default: 
                search_cnt <= 3'b0;
        endcase
end

//write_cnt计数器
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        write_cnt <= 3'b0;
    else
        case(next_state)
            WRITE:
                write_cnt <= write_cnt + 1;
            default:
                write_cnt <= 3'b0;
        endcase
end

//状态机
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        cur_state <= IDLE;
    else
        cur_state <= next_state;
end
//状态转移
always @(*) begin
    next_state = IDLE;
    case(cur_state)
        IDLE:
            if(mac_addr_en && D_mac == 48'hff_ff_ff_ff_ff_ff)
                next_state = FLOODING;
            else if(mac_addr_en)
                next_state = HASH;
            else    
                next_state = cur_state;
        HASH:
            next_state = SEARCH;
        SEARCH:
            if(search_cnt == 3'd3 && D_mac_table[63] == 1'b0)
                next_state = FLOODING;
            else if(search_cnt == 3'd3)
                next_state = WRITE;
            else
                next_state = cur_state;
        WRITE:
            if(write_cnt == 3'd4)
                next_state = IDLE;
            else
                next_state = cur_state;
        FLOODING:
            next_state = WRITE;
    endcase
end

//flooding
always @(*) begin
    if(cur_state == FLOODING)
        flooding = 1'b1;
    else    
        flooding = 1'b0;
end

//crc_en信号
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        crc_en <= 1'b0;
    else
        case (next_state)
            HASH: 
                crc_en <= 1'b1;
            default: crc_en <= 1'b0;
        endcase
end

//crc_init信号
always @(*) begin
    if(!sys_rst_n)
        crc_init = 1'b0;
    else
        case (cur_state)
            IDLE: 
                if(mac_addr_en)
                    crc_init = 1'b1;
                else
                    crc_init = 1'b0;
            default: crc_init = 1'b0;
        endcase
end

//mac_addr数据
always @(*) begin
    if(!sys_rst_n)
        mac_addr = 10'b0;
    else
        case (cur_state)
            SEARCH: 
                mac_addr = D_mac_addr;
            WRITE:
                mac_addr = S_mac_addr;
            default: mac_addr = 10'b0;
        endcase
end

assign D_port_num = D_mac_table[12:10];

//D_mac_table
always @(*) begin
    if(!sys_rst_n)
        D_mac_table <= 64'b0;
    else
        case (cur_state)
            SEARCH: 
                case(search_cnt)
                    3'd3:
                        D_mac_table <= mac_table;
                    default:
                        D_mac_table <= D_mac_table;
                endcase
            default: 
                D_mac_table <= D_mac_table;
        endcase
end

//D_mac_table_en信号
always @(*) begin
    if(!sys_rst_n)
        D_port_num_en = 1'b0;
    else
        case (cur_state)
            SEARCH: 
                if(search_cnt == 3'd3 && D_mac_table[63] != 1'b0)
                    D_port_num_en = 1'b1;
                else
                    D_port_num_en = 1'b0;
            default: 
                D_port_num_en = 1'b0;
        endcase
end

//S_mac_table
always @(*) begin
    if(!sys_rst_n) begin
        S_mac_table <= 64'b0;
        S_mac_table_din <= 64'b0;
        S_mac_table_we <= 1'b0;
    end else
        case (cur_state)
            WRITE: 
                case(write_cnt)
                    3'd3: S_mac_table <= mac_table;
                    3'd4: 
                        if(S_mac_table[63] == 0) begin
                            S_mac_table_din <= {1'b1, 1'b1, 1'b0, S_mac, S_port_num, 10'b0};//更新
                            S_mac_table_we <= 1'b1;
                        end else if(S_mac_table[63] == 1) begin
                            if(S_mac_table[60:13] == S_mac) begin
                                S_mac_table_din <= {1'b1, 1'b1, 1'b0, S_mac_table[60:0]};//更新老化
                                S_mac_table_we <= 1'b1;
                            end else begin
                                S_mac_table_din <= {1'b1, 1'b1, 1'b0, S_mac, S_port_num, 10'b0};//更新
                                S_mac_table_we <= 1'b1;
                            end
                        end
                    default: S_mac_table <= S_mac_table;
                endcase
            default: begin
                S_mac_table <= S_mac_table;
                S_mac_table_we <= 1'b0;
            end
        endcase
end

//----------------------------------------------老化功能-----------------------------------------------------
//----                                                                                                  ----
//----                                                                                                  ----
//----                                                                                                  ----
//----                                                                                                  ----
//----------------------------------------------------------------------------------------------------------


localparam OLD_IDLE = 2'b01;
localparam OLDING  = 2'b10;

reg [15:0] old_cnt;
reg [3:0] search_write_cnt;

reg [1:0] old_cur_state;
reg [1:0] old_next_state;

reg olding_we;
reg [9:0] olding_addr;
reg [63:0] wr_olding_table;
wire [63:0] rd_olding_table;

//老化计时器
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        old_cnt <= 16'd0;
    else
        case(old_next_state)
            OLD_IDLE:
                old_cnt <= old_cnt + 1;
            default:
                old_cnt <= 16'd0;
        endcase
end

//计时器
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        search_write_cnt <= 4'd0;
    else 
        case(old_next_state)
            OLDING:
                if(search_write_cnt == 4'd2)
                    search_write_cnt <= 4'd0;
                else
                    search_write_cnt <= search_write_cnt + 1;
            default:
                search_write_cnt <= 4'd0;
        endcase
end

//状态机
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        old_cur_state <= OLD_IDLE;
    else
        old_cur_state <= old_next_state;
end
//状态转移
always @(*) begin
    old_next_state = OLD_IDLE;
    case(old_cur_state)
        OLD_IDLE:
            if(old_cnt == OLD_TIME)
                old_next_state = OLDING;
            else
                old_next_state = old_cur_state;
        OLDING:
            if(olding_addr == 10'h3e8)//这个地址用不上，所以作为边界
                old_next_state = OLD_IDLE;
            else
                old_next_state = old_cur_state;
        default: old_next_state = OLD_IDLE;
    endcase
end


//老化
always @(*) begin
    olding_we = 1'b0;
    wr_olding_table = 64'd0;
    if(old_cur_state == OLDING)
        case(search_write_cnt)
            4'd2: begin
                    case(rd_olding_table[63:62])
                        2'b11:
                            wr_olding_table = {2'b10,rd_olding_table[61:0]};
                        2'b10:
                            wr_olding_table = {2'b00,rd_olding_table[61:0]};
                        default:
                            wr_olding_table = 64'd0;
                    endcase
                    olding_we = 1'b1;
                end
            default:
                olding_we = 1'b0;
        endcase
end

//地址更替
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        olding_addr <= 10'd0;
    else
        case(old_next_state)
            OLDING:
                if(olding_we == 1'b1)
                    olding_addr <= olding_addr + 1;
                else
                    olding_addr <= olding_addr;
            default:
                olding_addr = 10'd0;
        endcase
end

//HASH
crc_10 crc_10_instD(
    .data_in    (D_mac),//input [47:0] 
    .crc_en     (crc_en),//input 
    .crc_init   (crc_init),//input 
    .crc_out    (D_mac_addr),//output [9:0] 
    .rst_n      (sys_rst_n),//input 
    .clk        (sys_clk)//input 
    );

crc_10 crc_10_instS(
    .data_in    (S_mac),//input [47:0] 
    .crc_en     (crc_en),//input 
    .crc_init   (crc_init),//input 
    .crc_out    (S_mac_addr),//output [9:0] 
    .rst_n      (sys_rst_n),//input 
    .clk        (sys_clk)//input 
    );
//存储模块
blk_mem_64x1000 your_instance_name (
    .clka(sys_clk),    // input wire clka
    .wea(S_mac_table_we),      // input wire [0 : 0] wea
    .addra(mac_addr),  // input wire [9 : 0] addra
    .dina(S_mac_table_din),    // input wire [63 : 0] dina
    .douta(mac_table),  // output wire [63 : 0] douta

    .clkb(sys_clk),    // input wire clkb
    .web(olding_we),      // input wire [0 : 0] web
    .addrb(olding_addr),  // input wire [9 : 0] addrb
    .dinb(wr_olding_table),    // input wire [63 : 0] dinb
    .doutb(rd_olding_table)  // output wire [63 : 0] doutb
);
endmodule