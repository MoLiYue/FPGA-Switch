module gmii_rx(input					clk,
               input					rst_n,
			   
               input					gmii_rx_dv,
               input			[7:0]	gmii_rxd,

               output	reg				rec_pkt_done,
               output	reg				rec_cn,
               output	reg		[31:0]	rec_data,
               output	reg		[15:0]	rec_byte_num,
               );
	//parameter define
	//MAC地址？
	//parameter BOARD_MAC = 48'hff_ff_ff_ff_ff_ff;
	//IP地址？
	parameter BOARD_IP	 = {8'd0, 8'd0, 8'd0, 8'd0};

	localparam IDLE			 = 7'b000_0001;		//初始状态，等待接收前导码
	localparam PACKET_HEAD	 = 7'b000_0010;		//接收前导码状态
	localparam ETH_HEAD		 = 7'b000_0100;		//接收以太网帧头
	//（接收IP首部）
	//（接收UDP首部）
	localparam REC_DATA		 = 7'b010_0000;		//接收有效数据
	localparam REC_END		 = 7'b100_0000;		//接收结束

	localparam ETH_TYPE		 = 16'h0800	 ;		//以太网协议类型IP协议

	//reg define
	reg		[6:0]	cur_state		;	//当前状态
	reg		[6:0]	next_state		;	//下一个状态

	reg				sw_en			;	//状态跳转标志信号
	reg				err_en			;	//解析错误使能信号
	reg		[4:0]	cnt_byte		;	//解析数据字节计数器
	reg		[47:0]	des_mac			;	//目的MAC地址（本模块中表示开发板MAC地址）
	reg		[47:0]	sour_mac		;	//源MAC地址（本模块中表示电脑MAC地址）
	reg		[15:0]	eth_type		;	//以太网类型
	reg		[31:0]	des_ip			;	//目的IP地址（不模块中表示开发板IP地址）
	//reg		[5:0]	ip_len			;	//IP首部长度
	//reg		[15:0]	udp_len			;	//UDP首部长度
	reg		[15:0]	cnt_data		;	//数据长度计数
	reg		[15:0]	data_len		;	//有效数据字节长度
	reg		[1:0]	cnt_rec_data	;	//8bit转32bit计数器

	//****************************************************
	//**				main code
	//****************************************************

	//（三段式状态机）同步时序描述状态转移
	always @(posedge clk or negedge rst_n) begin
	    if (rst_n == 1'b0)
	        // reset
	        cur_state <= IDLE;
	    else
	        cur_state <= next_state;
	end

	//组合逻辑判断状态转移条件
	always @(*) begin
	    next_state = IDLE;
	    case(cur_state)
	        IDLE : 								//等待接收前导码
	        	if (sw_en)
	        	    next_state = PACKET_HEAD;
	        	else
	        	    next_state = IDLE;
	        PACKET_HEAD :						//接收前导码
	        	if (sw_en)
	        	    next_state = ETH_HEAD;
	        	else if (err_en)
	        	    next_state = REC_END;
	        	else
	        	    next_state = PACKET_HEAD;
	        ETH_HEAD : 							//接收以太网帧头
	        	if (sw_en)
	        	    next_state = REC_DATA;
	        	else if (err_en)
	        	next_state = REC_END;
	        	else
	        	next_state = ETH_HEAD;
	        REC_DATA :							//接收有效数据
	        	if (sw_en)
	        	    next_state = REC_END;
	        	else
	        	    next_state = REC_DATA;
	        REC_END : 							//接收结束
	        	if (sw_en)
	        	    next_state = IDLE;
	        	else
	        	    next_state = REC_END;
	    endcase
	end
    
    always @(posedge clk or negedge rst_n) begin
        if (rst_n == 1'b0) begin
            // reset
            sw_en        <= 1'b0;
            err_en       <= 1'b0;
            cnt_byte     <= 5'd0;
            des_mac      <= 48'd0;
            sour_mac     <= 48'd0;
            eth_type     <= 16'd0;
            //des_ip     <= 32'd0;
            //ip_len     <= 6'd0;
            //udp_len    <= 16'd0;
            cnt_data     <= 16'd0;
            data_len     <= 16'd0;
            cnt_rec_data <= 2'd0;
            rec_en       <= 1'b0;
            rec_data     <= 32'd0;
            rec_pkt_done <= 1'b0;
            rec_byte_num <= 16'd0;
        end else begin
            sw_en        <= 1'b0;
            err_en       <= 1'b0;
            rec_en       <= 1'b0;
            rec_pkt_done <= 1'b0;
            case(next_state)
                IDLE :
                if ((gmii_rx_dv == 1'b1) && (gmii_rxd == 8'h55))
                    sw_en <= 1'b1;
                PACKET_HEAD :
                    if (gmii_rx_dv) begin
                        cnt_byte <= cnt_byte + 5'd1;
                        if ((cnt_byte < 5'd6)&&(gmii_rxd != 8'h55))//7 个 8'h55
                            err_en <= 1'b1;
                        else if (cnt_byte == 5'd6) begin
                            cnt_byte <= 5'd0;
                            if (gmii_rxd == 8'hd5)
                                sw_en <= 1'b1;
                            else
                                err_en <= 1'b1;
                        end
                    end
            	ETH_HEAD :
                    if (gmii_rx_dv) begin
                        cnt_byte <= cnt_byte + 5'b1;
                        if (cnt_byte < 5'd6)
                            des_mac <= {des_mac[39:0],gmii_rxd};	//目的MAC地址
                        else if (cnt_byte < 5'd12)
                            sour_mac <= {sour_mac[39:0],gmii_rxd};	//源MAC地址
                        else if (cnt_byte == 5'd12)
                            eth_type[15:8] <= gmii_rxd;				//以太网协议类型
                        else if (cnt_byte == 5'd13) begin
                            eth_type[7:0] <= gmii_rxd;
                            cnt_byte      <= 5'd0;
                            //判断MAC地址是否位开发板MAC地址或者公共地址---------二层交换机lan口没有MAC地址-----需要更改
                            if (((des_mac == 48'hff_ff_ff_ff_ff_ff))
                                && eth_type[15:8] == ETH_TYPE[15:8]
                                && gmii_rxd == ETH_TYPE[7:0])
                                sw_en <= 1'b1;
                            else
                                err_en <= 1'b1;
                        end
                    end
				REC_DATA:

                default : ;
            endcase
        end
    end
endmodule
