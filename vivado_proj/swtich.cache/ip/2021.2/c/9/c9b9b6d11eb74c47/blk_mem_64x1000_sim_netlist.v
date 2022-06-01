// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat May 28 16:26:05 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_64x1000_sim_netlist.v
// Design      : blk_mem_64x1000
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbv484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_64x1000,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [63:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     12.166101 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_64x1000.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1000" *) 
  (* C_READ_DEPTH_B = "1000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1000" *) 
  (* C_WRITE_DEPTH_B = "1000" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48496)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
