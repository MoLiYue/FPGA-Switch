// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon May 30 19:53:40 2022
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
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [17:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [17:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [17:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [17:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [17:0]dina;
  wire [17:0]dinb;
  wire [17:0]douta;
  wire [17:0]doutb;
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
  wire [17:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.1733 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_READ_WIDTH_A = "18" *) 
  (* C_READ_WIDTH_B = "18" *) 
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
  (* C_WRITE_WIDTH_A = "18" *) 
  (* C_WRITE_WIDTH_B = "18" *) 
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[17:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19392)
`pragma protect data_block
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
GZOHQOfpzDJ9x+Hz
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
