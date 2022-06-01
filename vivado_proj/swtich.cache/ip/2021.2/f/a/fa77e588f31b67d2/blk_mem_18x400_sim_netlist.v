// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue May 31 13:17:18 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_18x400_sim_netlist.v
// Design      : blk_mem_18x400
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbv484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_18x400,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [19:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [19:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [19:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [19:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [19:0]dina;
  wire [19:0]dinb;
  wire [19:0]douta;
  wire [19:0]doutb;
  wire enb;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [19:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.66065 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "blk_mem_18x400.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "400" *) 
  (* C_READ_DEPTH_B = "400" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "20" *) 
  (* C_READ_WIDTH_B = "20" *) 
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
  (* C_WRITE_DEPTH_A = "400" *) 
  (* C_WRITE_DEPTH_B = "400" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "20" *) 
  (* C_WRITE_WIDTH_B = "20" *) 
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
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[19:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31616)
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
