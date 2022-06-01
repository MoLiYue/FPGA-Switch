// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue May 31 15:30:03 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [19:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [19:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
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
  (* C_INIT_FILE_NAME = "blk_mem_18x400.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31344)
`pragma protect data_block
RIZdmXHrQZW2C6K6PZdM+FgonKLUNCqnXbWvpY3Ln6QySRfld9PaxLfGu6din2SHl8uchy8+nUN9
gNQq1QuXLSs0wQDGc7esws3ieJCgDs1UlM/6OmHl890e3gxQfN9xRwKQ72RJpAQZ0jacoxdI9K9e
mUJG9QJAwBJbzABciKDnfjw8akaFXfiSYO2R+4K+K1A6kWAyFhc/JNX+kaluNROT34WV/g3a5nQV
Xt1qdZsPczgKvD2zzcnEwAcQ+lHZRvcoV6sqsy87ip1lHFtpfidh3BYoBi6PDDF82HnypLgcueMh
XURsrwfgd0JNCyXq1L3jFZy5VW1kal3wM++qURMDMxAY0sWqgobwfhySUYJlmG2kQvjeYqu5+YXh
nK2hjIF8domEaQymqcpXrd6lm4AH9B2Px07qaVrLbxoUIKyAYY1vURqBXnIN5FEDcxXYQFe81si0
9FU+9016bd18JbXNRywmsLzQZfjcfJ9wCua12Z1aoTow2t4yBpdFmnv9KQSxXf0XGDdhbb1JtCeu
nnt5UHCbQwBnrWb0kpB3sNlgNPTuZuxH6xxJoqlM6YUedSRHPNh1Bpcgor7V6apQzvEGQDYd1GHi
pgfzhI3IUn1VnHryIfgIItMz41o7VYDBbhh7xdCxtayx3ryGK0yuRNCDCG63gSoAmhyseQwOd4Nr
Q/Hlw00bz8fr1TRt8e5SMPd6wkAgx+cRJ7sc/bJ6K10LIXU8SAkdqoVGJQL7MVpNH9uqVkapt9Ew
tgPyOsbYuAKJh6mS0HrBGuN3LmbJDmgfNa5YbdMO7MJlNF1xgbyM+fRxWzFhudYaJ3R1QYBiAujS
/PNluezss/pjrFOBP7iXBFLVn1nT27UdPvMZ2KTW36hcFys4BXdI55YDdspS9YLU/Wqrf1ia8scv
o78dhZk0nbHRlmggtex5y4jBfUQPZ0+SPj+JDqNiyDkgkHHamyeB99gd1PKy5cGq5rBZIeQdPLz7
t54cYUKKX51j2VqX4AEEuRiG1Bz/u3MowtDRK92n62NqLrB57KI9GPeteVpW3CUTnzgCuR5es3M5
0n0RmJ72n0sUnSfeNxo9Tcxw+GX+LnN5DJEBf50my/4wdqLpDVb5bz23c4Uh8oXpWkp1pXMUWnBN
rNDCdOJMmnxHv8fvlKob/c4L+UedwPblr4f6w5reK97I5UNkZiMsMlKwSbGoRNqNI4rNLvMN0kfy
u8V/Kb/92ApSXLacL/xG2qjLzulxIXHbzLvd5/8rfaXwOhjtPHVWkFFicebJg0PxWr/OxqMGpd5k
/Ezurp4c6X8NsDtRttmOhxxOtklQamWjza8yAN/Oohm2Wig/jcLtAB+JoZEv6hjPmxxAZnrrj3Ly
x+ZpvhCs8m2eXx8nHsraz0QFU26pD6swpBQeKhkiThROk46QrtHaHcECVQh7sntxkZ0xGMgqaaFk
Skf/4fLvMfD1mmHYZ+IHNM2Plg4BREK746YODN0f4B2YsgLnwOaeWuZO3S+LZ4mfra58ONNbS8YL
wF3flR32Ij1iQGSOkZHTRCnpmQ6dpKwPq2w4zPXqsF9AbAnMqM7IQbh9QWG8pfpLkzgu+ilE27Ot
O0nmPvi2VYKR5l8bimbbM4a86YJiNNGlBQuIQFFiIeKBOHvRlwoRCJ0U2F8FyhDJXyYXeXCVUIjQ
BI1kOSolUfzMl8UYWp/eMswKDpiyKC1K0uUDJ3eWA/RD9h4FRJY23ntVep4kpkBNTs+UpbcReoua
0v5psfoU6U9G4mGeYNZuzzdRop0l2Xu3D7xPnrrlVV8li3Sm2GqrCrwMGP2mdmBLX3Cekw5Ap179
neqykaWaIGpDq7hvuIdnS2AQTtLq8LKmfgcoVToMv9wlnka60PK6x+zXzCgHM2Y8pEfMfGCBVa8i
9OzVeD3e2ymOO/CaGBxnJGy2YaNupwjLrB29wfVO8IIF/kEY2hqdruC81/iYvopAv+S981YeoaC+
PUcpxA9jG0imoAw195eZylUl2yJoWxfv/iK+vGfXxI24abIi6iSLIF/r67vSvyVPEV/Ar2OBM/Cy
FceOOBRRe1Tl9A163/Pp2AXhbeHLY8k7dNbE8rlzEY3Pvupnoc6GRHrc7o69KnAkHYSzHR1Y228S
bacohSFYDBrXLM3Ma5OGcOpZCT/BoKhYK0iOOD9mMNv/r7G8PyjRZFEetHWvCucqJltRpI2zshDv
1GJn/tNO1JH5l+qX+rynC/SMwEuZbrVUwZEVLZxetO2cfeuyHGglch7nL5CY0krJFcwhHclfr5E/
2CAebPkPYM7hPLBWKKeAOh6sC7iS7Jx0uU+ax1uXEA+sI0xMpHbaVfVzl+lpilfaWATIIgavOfxV
ZLOnyA3mBjhPzjpFO5q6PB07Atv/82pme6hkHXtnYSV6YS9N0z2SwDx0bGfTtFb/fbZ6WOR1nGQt
aMOpVUXZeD6KBmr+r74+VO54uCka7PjfPCZObFEhwI6+Ahc1LbVqH0qXLjZdNlqKe3EFDcUBhliG
oo8eRv+c6ZeuOil62b3j6fTNPfoyPLS0xCB2Jy8oeattxz/rAYWqtrm/bAx1QTkdF+oIG51ni2PP
jctQdBzf/Reyz4Da9tBn/SbMs91pcYD/1HT9Vxk/Tkx8vmSbLCQPj1dUNnIa1P6qDciPP0HP2D6I
i8bBravaw+v8/r/Vc06SpVIKqOBGxxxdXyOH/kKddby/JovjCbHLSx7dUohkEVootSFH8vyveuMf
H82LY3Xon/oRxW2KcTJAdk7RhmEKr5vAqKJRO4stkE4U4Zzqp9JDmD9Bb4Dull4QB6cIWQmHnKlf
SgkxXRe4qUCBm6eUwHWQ69bjLdwYv/Q4VkEQlljBlyou+aa3oE4Qg4DPznRwI4paTCrAl9mKrgsH
a5zAIqhmMDR/vl/2nXGYarOVF6i/48NJzAPd9F/AJTKIJ+qfHD+MqyRU+WJiuDi6hRzhgJc17Cc5
zaSE1ChU/RgcqHiIklo1jRWGlgZwoDq1fU/9tsgFhk9ve1M5ZlcBT/1hkEPJugNIflJzqmkJ26eb
y6EAvha+vhUzCyXSgzt6deI7o6Njdpx4wDkRuzz+8xVdDDmZL2Ez3Dc1QQIsaCELuIrBYVX5y8hO
+ChqiytEv4P0Vr38ibCB2yDEyNtdppS4dVRNP9P0KLn7d5lmw9zM5ETrQQUz08rNv5do1Mpgds73
ThL0E7oCztgSK7ty59UpDQKZNZzHtIj5HKR6uwFXN3+N2hnM41laG3DlzLcGS1c7YhdJ0HiezwAa
5V5ew70ugRJGLBPLL6Y0RQ7OuMErFYFYHbul1SMEGX0GDUG7gGPjxMYMgQNdk1drj+F9lKfhd73Z
YdrzDT/L4c8eKo1ayWRHuecrd4VEIrkvBxB6ooYqZ9btNI2DfXQ7k8sHiKY54PdQxSf4hNk59i7F
t95giWKFd3LKh9ssUWBdLBsnIEbXNZBwra00+YmvTZIQkh2nPy1iY6ayjMPL20nXXrhG7uiJnVOK
Ntl57bR4SZrkxoYZCvY4MDzNauZa9j8eU/PIVALS3iXTzatv3idjItjwfmrSXnJP7Yy2QHx9OCXq
7406jcjGD+wvh7d31HZkRFJYeQXF846nABzY2wFgMGj7MJ69ur7UXSHIGYDzOypBdXspFgaVQBM5
eyULjC1Zyk2wxiLPHrx2Dzg/kEIRj+j706d/QXsAk+GtH1218C3aTkn6JP4OQ09Qir/CWbKbXyYH
TotWaBR2gVs5RGaJgRzRSI0PbPHCamosV4Ui/TXxmbjdQws7sSQwLcf6bY6scEYM89G6MwV1iMAG
lEtAetdTAjO9DeWS1HgB6eBreZBGSH+blO8pZLVOwSGvBf4rxCuCAmdzM1a+4litbSIMOUx/tie3
rcJ/dcsSTmzVCoKMlU5OhEy2C1rdSWuWTvwr+7PjUU0hBFgRRwQo2I6nWKElshDyG71/IwG8TVR6
KA2fVlTfft70yxUnvfUkj/rh+Wf1D81B9LZHTUz7QW2cMbO4yqcSp11ouZRpq6dQtv9r9oAd8dQH
Po5piobPe8Pbk9+pJQ71XdmhgWChGbY44KGLj5VES96MPTIdvKbAAIGR6Qb3vi2feNfK/GjlTWeG
nVsTch44eZBWAvU5h2001wMKXNLkq1UeL30wtKiytJhGY6tocQAvnChDGc1I1iyMCsZCvFJP1eXT
Mh9jkwbZFM23t6JnV/M9xEj3sKeYIHHxNksTTS0MnrrvV8P3I1Y08mzZ0jbPqGKTiLdeUUFR5RGm
n+V33uAbvxpgJRx5b9PCL+v8/o0jctG1139rV4i0qxjZvI2b8gMfXpSc7RhXn4YjG0JjOnPF2oqQ
YRQMdSSzuMS7vI4IzSmHWGZ9oqltoixdhpIuyPcAVIAmoPxxjf/aXqwNL/PY7Yd1ijbbRNhCpyRr
1YQu+MCGJNDnxL37TZ2olC1/6J8Y5Lu0Bv61T6pfeRd4fJ7dWjR7s6DT+eq+DjeBYt8JHI6+gLlB
s4ZGzGiiP7incaPtciEyBASgn48zxARrw2LAw5jYUySR0mHIfMDc0YC0Xme39ceBPn9Rm+w1H0A/
WdZbBjIfyXvfGKRIBj71M4lhIkgbEmb8Ovnqz95leTI1xUc3pLeYmxYP5EmcBdF0zjGN5OwGiS3H
BCBwwLuhANP8YyesjO0LKKSY++sWh/ruCSyAuh87l3DG+AH/eXwKIFWWxQDSQqXG15FkBnwQ7odf
pS0JpJ7qBCV7oYHumZy4/qO3rc5Drch0vR1ojOdyF6gLVyPBvcwsDKK+Y+q+56jhleUUT2mT8TcB
Q56ZOeOZSW6JdIcsTxovM559KBPriNwJ1sNv1q/9mu4EM9jydsrsPMQVQCscE1Pse6PNjvrZe90d
CFs8DnJ4jxhdrgNRnoi5lucIF6GUoqHGx48jdqOOCr5IHRv2jo/dKza3wfLv3KF8bjS78Lr8FzMd
UHrrUPB8iNqw9GvO/Qq8ulzudCqxI7hQrmY10hQzv8ETrZozoUT1mJb0z+xSkmt1AZEiKzj6mtT9
MeVjvtfBo0ud2ZdbeWZr7mIl9uT391HsFbxV/ZFfHw1mCck1BaLgXor6cVrp8YJu3OLx+zKlnlHq
bbKtRE2R3RJznI00qC7UBSWBGYFdwDf4suV4gtMhfsatKiX4oUVEDT+A4wrFLo4XAD/cMYsyz9jh
9Dn+am/QH+4O9F89W92TH+0wevpRcwLr2AImRSQYRu/NsEFoMgDvCH137M3L83/xjEbg+z9+72SR
7SZOOgEnE/la0MyH1Hiqq2Oqn4w91raiMp0vP5ghG/HYvEQz5IDwI9DPJw255KiMLfpBIVywBpw1
ZhDPA9moLsEYIUwBOxG2qwaef9Amz53/sAHlX5qCp390BNiI5k1d8zT2o4K8SGBMInMy2xFnQFPC
KokGTcMr6syeyG5mEq4qP79IHZ4kPN/72rWG+omZfZv309dXbmdmQkIKuEiYsHBIMSyP8QZttB1V
nC0cPIeCfP9RFu03BfUGaEhHuz3+bwrrOaF/xUIUGH+K83JLhXWkKi6cC/1tJXfvvGQV/D3uXQh0
yLK/4kVJQZPVRKSXbU9yF7Ug4Q12FvC6+rPG7ZcPivruojJ0B3jZDlFHazg7ZFsv39HpmV+0MEVI
QsbLuR4wJMggWLeNayUM/RpWwNweKYQ5b9A8dzhA1XOFCX7Bd1GXj4u5CuX5KQG3gCziQlNDWlXb
L3ZFg9KTVhmO10NHgB+wOg10mZps5RQpDRr/xWAclYC8XwTJqDYwr3NLVm0v3QFkhMO3hpm2Tm/7
8d1QpT0pMuKZblVSLpcualaj41f98XMVOuYF7nqAHM5oIRq+M7CyvCSE1qaUrOGkIaTitWr9ZBwk
XL07/sx+ABm/QgT9sFbNyx02N927Tei3MIhwW6+AWWwLg1jTnITMsfhj7FZZ4kMGeNPxf2tVZPV7
fgvtvpottLyd9W/jz9Lmr+kOibGWWxbfSMwi+aRVkgLWDIGbvQGSYLSDeELEVjSv+PRc4kcEW9KY
Bg3KqHhY/iQfNOiQTEyf/OLq8EfvHiSdv8eFsYW1j7d5EjD1yo5HUqysXcOQzZNYPCasPgrUIPc7
RZAXpyBNuhyBgE0MEi1WKr5cUYA/KDzjKwwhMpQXrdoAXry7w93Td0Guw7byhDRDl9OxbTT9ndyb
wGlagvU8rY+HgRCI/kMIgntm7vm8DD5ugI8nersppvB46/LsUDfQUlm0Fhm22C4a2IIr2slirFYg
Op0OQmdLYmbUj558Ys5lzxYhmjye7ceg9HQ+kF/KhCZbZCr7q8hl/ewanpm3bxG6nx/gLa2Q52Na
0Ax8mRlqfLq8O78Fbul9rElyD24MjYL5pHqMAinEthcu3aTZxTFtbtIYNxeKXAZijzji8nWBIyEa
wcskb+0PQOD0DhL2clvoRAsnccp9Uy99M8+y7BeNtNSW7Z9gxSQhevqsnkTp2QGeOUiInAVuqSTR
IVND9LJfKJT5VT3uwLniRvERJyCVd7KWv/XZ9DfNrnWxxsi6ZS4PiKvLXtp3yLHtP0j8bWhwoPim
T7l6PK0F10taRUfiQg0g2SNJwvlz3hRgVu8/IYyOcneffgZK32Voz68+dnrbOm7BIrdqTFI15LRt
1aQExQL2vJ9ns/rbfuYVLllgncjc+jJxVc9Vld5EF1L/BkcuAQojs8rwrafsg4yJj+2tBrYGDg1J
lY0enSF8Majt67JJmBf4/KF+r3uewHah9bNv/3nhBQ+yqMRF0jUpccrofmdBIwICEbFuohUbcolz
MxuVy/YH2KejiioFfvTsGib5kLbBawFKSmz6++SLfC7nVCo/PbiHvlxhdxXr3kgOnsRHeqmBvegV
0edb3/NsdB93MC8nQGWFfwkdSwJM1msdLgeHV8naPW2BWMQn16XHn3LFfPjALbttz+WV/nNt6OY4
SC9GgAsbFdQR5yw/z1RiDm6J5ygiH1b5XzwlOVFfd9Te6snqZqbxJ3eQQOfgULDHXXWl0mz8Xp/b
QnYZ0Lsju7w5Fnnlyswbe82JQjaQoaNRNDxw7W3aqB3/ilDU6r8YyYv76lhkktw7f4fc+6E1/E5U
xUbiQiLSw8mvLDF5h/QzwXiBUXBA3V7Jsz3zP1BUcBdqd/JBzlyh/pA48UsCQk7wB6377b/MnIZi
sKTFUO3FddgiFYh1WSMG9wWoeue+BTvGJUriEIV9YvCcTK6vLVGS3TZO77Cl4zQdNIMbIBOnwXph
xHXpUjCVOgahxdwZDLkic0eOVPRzU3bNoTtlcozFtst5HONklM0MBPTLfpf9jW78lswPQqPgzvDJ
Yd9GybTKkYXgGzF2xinu9Nkmb90iCbrdRx5uaKs4fzl2d64SlTncTAenE+AKspKHwLKZaYA4gLf4
uTD+76K6aY9I2/HFzS72hrtyv2zfuLgoKKEY7iAZJrwIaWumTdvQTbj9rvZEIzr8t4iYBWvsnsIQ
WksVaFqeaK4BHyShleGb74pyUA2QQT0SvhyRenzFxm7xxmQPYpAMpBEr4od5YDOZIEAE/DTKLsRa
hEl0MJMw4P4y3HjjaYnIWz7BOSrltqe6oMKvLozPl1fhrN+UHxtgULWY5Ey944FeUGAv3v8yUtTf
SuVwdIN70zYPiPbNKaAdP5YWyJMko6xj2djB61rNfa0zjzuoR6wLNLmBRcleM/NBPbaBWKQiVq8U
vNq/9PfT+Puf2v4wC2Lymh6zbCWnVQzmRUXSlja/1IOJZ+7u+l3JVNSMPRySD/B41VNfpfS8jm5O
nanAkvf6SQYDjpMpOJFNVeL7sKV5vpwmkvSJIrS4n3QcPM3gkXHw9YoOzF2U94nS0rZx8lh0Rqi5
eGsJPArf7NvN+Hh2BYT1DM1miO0sFqwfj0hhorPbul9GNxgFDR4EyAwhol+PginzqbATt95cx/RX
icR2RD0VlqosqN+CoESZLThCo1PQuNj4aJdWHR85gCemEAFT5R1WZLSHNT1tUztfVb5l8SxBpR84
b2sMthHvK1xAck23aqOqc8+myioCueWaCHSwZMei4mPpCjX+Uq78O6h5LwCgowyfhm8cKd9OTkmX
oiR/kCBxXvSK8sqMQfP51CD+YXdWKx2jmbwvPLWrMmsAkEx1ZX3pYnqbDrixSpIkWhzcGmdunlEg
BFWHb/IXNz1lZ00jfnxxXFH6I8/brm6trEgmY1Oh0T2FUD7hsuos7dNStsvp+l8F72g8GwNixfxx
EYq/Mwf/22sTaSlzHXMGKHIvFqbmVgZgr5YT745R9K2GkNl/1POa+GBSLAzzYL0ESvmzoQyA92ve
M/Lv1ggm7xWrtys4yNG6BTKjvwOwuAJgjBWnEWkHoFMg7Rvy60ZZhVzXPN3zS6AKjPpJzI/kw43n
MZQ85Yt/WB48DFWJjW+4KtutMkfqctMHQIt7rCNHTSd9z6evOYHvTaudZoocUvvX/F0Hjlxcrgvy
U2XDly0xOm04GfcWXSWy6p05Yy9Q4p5P+26RWryVG1Fwjise2S5tl1UQV5X7pNYad3QAIcXQSHbc
ZGF4Jl4uq/dfkoUc92R9mXkSfkzkZPcxJS7INgHd+Bq9Ye/bY4wtQnDr93w9frr/cuAql5bn0OCf
89//fpHizG/4a94Iy1q/2uL+qLz+MDUYbzNB9oI59OhNNirpYa9v/cj4gxj+Nepoq+VdsK9sZuk9
RTrU4DlGAcdbt2HIGJQKHtcvyED2BQllKHk4N30cNrkh/lW+22b1IbYgekdx6qbrQj2BVeMtMOEm
AOGc7ZEud0r5FRsNw4a0Tfv6GnguwbgGAeYO1sQJoPlPfEr/YQlE4Wn9wRvgeYR4xtf7Y6S6g8YH
oqCep3zTZZSg24pVENvrDlTt7Q6SQFPMqBjyAyuOxTCiQOu735jKlARVKu5ILtQ5HiIYwyGLLFBi
gPk3TiYpZWCJbx8Sv2DaIHr5wdrI9G8sNqn7kcRYJqGr0oEmYt0pJnslWFHnN8h3ApC6jNZ3WLs0
ffrcwLAAlqaAfWeIExTiuYrjIXpEsOglXjFh08wQna2spt14tlm3Czk3Kn4ZbX7fylD6ZW2DjCNX
VbOAjpg7tOviq6XHPDpiogsxDhL27NxX7Z3D8dHqwlX+OWF1PuUdwn5dO0GJOfs4RvV2lApFme5u
f8wTM+b1IV06dwqXgFUE4hty3ob3erKopZkSGgvmM0fOnEFNGRFyygrdAA5sNgLziiZyuTydX//2
wG+Ov2PBacleYb0KB4FTXYWJY5wVwYZI4MMNT3dApoY+hZq+wc4TmL1nyEqGWZz1Txp0EX2a/8Uz
D/bOIJvBvPs9dyaJ4GsV52QDNil1Xe6Ln2A9AeVayYhUSaUvBv24dXBA+VoxmJiVH7fyFlhsTEDL
rmlgXC6oloVxcCxNc47XsdPqU1Wm5+AI+/9bQhM+SckpJlA5zrSSNG95F+8c1I80JMrKImUS+VNr
x8/90QYTUn7+URNaKrLoZ6zfbTBI6zeTBrKWCTTn17VXes5D6ga664ch9+OyumyImUf9q6ccQ8nn
jyGCPA3DiJj7BaeNNLyQNKCrFkbKEiqpspVN2+uoHJgYB+h68hJkhM/ZIMShZnSN2F/bCsYPu8Fk
BpziTPHl6mSBZq3DrS4xm0Twed+aWl0NRyCv9+5+b7TIx1RDR7rpWskVY4aqQIz08poumthYb3Pq
KbMdIEJlBx8ksyG//wZZ7+UR/zl3LNMprbTL2r7x7CmYtfwbkObpG855LXQqogh9X4LwQ9bkNHax
tJboWIWhRlUW+DG8KJllS/6j62AwhnpAj3wokNf4YWxGnszI+LawJruPlc2I1V033iKxVI7It8aZ
0BzKVsg2Tx6DCejVBFGeHr8Mvgpej/9CuaKJ4A7r2U7IC4kaq0Wkq750It+IPyZEM9HgKRdT9Zg2
nMeGZhiPxYIGbc4T5E96WyCzG/5Ji8/6Xp+I5S4s0nAcbadQaqs0PYDJBM7Rei2ZWbRJ5br495l9
77kVSKhUTRPau6wPQrWMsXup8GGpgyZ/Gh8MgFHgUmdiNN8YCIbmyGKRk0HX3zYQ7ek0gQYSjuxC
KUBmRDZq7SOqUVennbnSgm86qYZKnx4QMncN9o3W1K64UOAPB+pJYw85CRyhggLKjlojDwYemDbN
Jim8LdPPg3J5MPxSR6G8dycE6nKdGba9lXSZCEACjRfCd6rIgCb8Mc86RmvLw5KpVcjt4eo0Gpvr
yrQuY8YY/NfQGwH5oHBc6GXEx3oxJLAPvdbtSfwfX9dAg7Jmh16oIdIQ5Q5qimfp76dlTgVDjCyL
6OwWhGeOYuOdpxbkW0QYoXoC/S7zOmm/1awsSN9+gZmY3ARnnjugwWg0qvlpof0Wk3tWYmUNm1AP
vP/WTN7V2KtDdF7Q/Lr1AQxlNQnKuPZZlyPDywLkM5yrewRyZ3bckwMXlLzv1xq3+rIJl+MlMRAN
+ckQP9MiyR8ShAjlZNOvps+maYMjEZ5jXlkD79urQZ0L/ybxFoSpoKRDNwTp2pbPaIC14zoV2dBS
t2OzqmagTrTNt8MP/TiIdJU1ulfacQBu9cyGawPcBZhQHTjGGpgw64PuTP7kcVeGNSbNenGkvUDr
hAkqaqxhAugOPBwsa40kw30nM32M0bcn26XQ9r5Eck19igvJoNndhAw+tcRkcXSStbA3HqQ53pIU
dZ6N4Kwqlmh7oiVhiz9BuJnklROLA9q3wG7+nkS6gbU3ppDmiQF0UY0qlo2Qv9IhxOCoto47+Fkp
5fda6XpS+r8vk1PcZXMbnD9dko8doNMrKM4Fy7DlgeJzsCUZ5rP+fGl/6dZyiI2KHkeFroQg/ax8
JLi3G0Kpfr8yribLzcERc28cSbIf13/bdR2AeMda9iKS/IQuctBtheyYxlkCIGLnaDNQw8QwAjJ9
Vf4U/Mp/pl0DIVOerXeKTYMiCiZEIXgtoEWMa6VSZmtj0t6jz0VAPWojBZ6Ykh8WVI443jQt4cA/
45OYeMpgXlLs+/nPtu7y8rYkobF0jk4XT5H9/LM6WLmfWpGbDqXmdni1OMAv8SK0Qk5Lbpf4yPDY
9kdzO3ZfbOxm0hrN2xRIboiuD5t8SD0WX/9KLLr5iyfiE1QRy84pSUQXi5wpcCJMwOXmZsbFRzGU
o/v+NtFyVtOgwAYbiZu3sEY0C3w0SglwtzqTeEj2iQ8P1QWRutgPAgzHBpYVeJzlvG9i1Z1Y7P0B
iAE75ZaS0q1VJES0+uQtlVGV1SiIGljlU/nHDqleo04GR1kmoMD9IQQsQ9Pqz7RVY0MuuDrIlMHh
y2aDLrGcu3jz/XTa9SqqS1ptmEEDi5zE6YCYkGxlRhKFrbWxhCUBOaFFMA9lP8+q7QAHSOzYg6LS
dkZcolQoLm8Gs1G2nJonJ4W2nYekQmSB0vMstam/uQFsg8WORIwO4Z58+tOsRUeBCxyJCtszS53a
T3nMZpxszGVyZTxKHfRKAwpzlo1XI/44WZRXCTlWSAUmvnOTf68q2bdo0smzjq6lkcbAoOVIUyBv
Uu3AHsCQsh7Xg0Wv4F9RUPd5SuWo4QD5PebocrHgpd0qqCqOoVmbcb4+3OusuYK6rKH0u+4bLHO7
h5bsaWbOYgzLNxZOrrxrFQIsbw5KMiO7OKgkEi8GTZqZXxjIJr9kUe6LemdClq74pAgGDINvcxtM
/9pSc9lG9Ne2nkEmsBhCg/QGpy/z0ueG4/fqsimKzXs4p1r9ejuLhCvjixdI8XPUGuvwFrUhA8aK
0xi8aCWuPCMT6nPSOs5/zhOqC7I/d9E/yRVbdm3a8en6oBqoMHVcyUng+2ophmEZoe+8MuS7j4UF
Me5rrhzVtpHjZdT0h1WkeCvTEoWV3tmyVct+Ld21px1VmpmohhGuVc5KEMmaAUI5FdkIqibsAxft
qfq9HrB2FnKJy4dGCwSwpkJZoOT1BM8+ehYxB5pQ+67U+GVKpddepmaU6Z91vHy3u31joW7nncto
/77rtDY0tl7FVjOMrzdoG95x2Y6E6adsPe3VPEKlgtPs8Tiwa2jYSTYSJLOHlIfczVDPp4Hxc0KI
cJ8kgg+BecMmZhnQPOhGtTgzQ40hzlM2MNDREz3285rMXmo81S/sm5ERv1/6hY6HMPojhs3WDL6Q
RAmkPH0xghr6+ZAdsvEZ7kaNFYVH5G5PhWcKs9B5joAQhNaR8txnuuyt7aoscu21aAl7nDbJmAQV
qpngBqYuYPb9MESyB03g5nFEWjPinCQiiGENNW+vlDDkiE7KB4x4TtyYpE1hHdrTbyGpshvM2QyI
4RSsYt8kVttbI6tcpbPcIVCXsJxQRbxOFFQ17RfKgsKNQkM+1+C6Ys79opsHReylirejQfmoKiqR
UT3/PL1mu9YLbKOxTFoiNrE+kK7+/KEDtHIYKJtilK64if8rwx5TTDsIy9XcVGJOzeJkGcCGfxsG
2WjII6bFZowXxGEbW7MD+XNIvD3s1S76RzPckVjXZaTEOFfRwx3r78Ct0toSbJxRMej5Q27Le3YT
yMv14J41KA3L3fumQFM5t5j9G/xDzm5a4f3woPWAAZx9FqaT0IZ2Em3xA5EjzDPo6jFjZC8mIS2R
FdOqcGmizPhuRIk08TjMq8VJnC3Qx/+Z7Q1Ko+8eQRFI1+uqONHbGkInZhmwRJTMc6+8gvnjk+Mv
htY60lu7OrkkPtW0pt0nUwsBQaiTg9IfYRDE8QqN7gvxQjgpIwo5nOV2dRVEfEEI0DCJOj6VuqXk
cw3oSOgQYMY091+ZGOCieQBmVdpUuId3Aq77pKDOv9xiKAKcXRLXz85m6b5wDhC84VoMffmSGLU9
ZPxlnhzJr7DR9mSwK9xQlJpXMM+ITJG2AySFYzvWUpfYiz/ig/aq/yKJ9zPogQdU58ClRzLtNv1W
idsZRSrlrUnCOomEvWUirIiGws6h9kPG8CM32lwVrVahk3JIJsTBQrA+XYwrp3+CO0r5H5DsFR5F
YB3b45xpSNC7DSipEw82iQntbPuOzzK+1yTU89dSHT/b62Pk7Hv6c434s+rgsFhKKyvHFnsSLDqq
6YrM27iQvMAhR3fvrsyryCfyNvG6YC0K6+dnIPsA9NgnP1sO9VmGNYYMpZeHUa+rYoUPaoZUM1CX
+VRJdiSblWfthzD4y2WyTzER1pAZEnq1JGIhnTpWM7IQgQm36KKD7Ww76fz7jtgQjv9IGNdNmpCy
FEoJTmUmXCospBEeOsVx/Plh9/7J94Ye5Ezg5bevMuZetTeplLjXNjzBXrAnFsR3Ze/wx3Y3adW4
JkYw6K/FUaM22nc1v540lzv+IGhekPEyX7SZNl+wXrT+V/KwAbNsSntgi+zhprntyoSZwdR/LAbR
thkRNGK8/vrucGK7qC+8CY04s7jGWMe+lOB7Bq948uKUCcVxheG64XNBdsP6x8K3XSRq4FSXwLQ4
xw+Bf+QDJ+kBHpMruaNF8ZFaz7GR2CAvPZfJofsZo1dQm3IeQvRyC+bGYj9GvaJpwn9tb5WJOl03
evbohKsc6sDVhzdcObRvZ0BhhwaVmM3WDTcYbM1ELD6YJFlViRtgn+l3B69I33R0hXaf9aMj0xuA
6Yj1aIvEIQasVu426Rn6jPv1scZHFvjqtZZJCZnA3KofYoCJ5wFOfKX2uqCrNrZb7r9VdXZw74D8
gJriQD2CsTscy1h1/cvUzZFvCc9ysntDxRgx6ZSFHpHX+8YRyL7Ivay1OMTxYnTCZFQLmZYqqwRu
2BoN6Xfszi2+XFlXEATGT4DGJCBNVusBrFD5nnQLQueoFP9HrPbAalfROmAsAu9Tqqslb26ro4Lm
TrCxVVHUYW/KiONIBGjvwdBn+/82JJwKjedlQgPiG1jh8TuG+emFDrZudp114I2eXVN18k7WITBD
3jhV0QozchOj9ZORx/yxmDxcLuTI3Z+glMez96lXUuARn72RTCExLM1YDofucC1QvUNT3Td5dTgz
KSuWuDVTv/8+0kemx30W5UkmR7EpCMesURY6mXEK6o78l66ppzL0lCoTYJwLFyxmTYV1p0UTiyi8
diAujzo46A6eIqnJHSYau90CRDPiMrbJ7sd4FJmJEW9dSJYvCxfX2YPmSryqtBGv79tle/qAd/nk
6vbPV+v4JXHBCCXE71Fr6UuhmWFu8m7aUWW5aROtJI0S3eyqr4ABQjq36Ql1QlONAZWnRNSeGOaB
viLau8so5NQ0LxstyUIOn8neANqX7BanCY450s4MiKMrRWYUg+dLzs95ulU+JkgHT7SZKP+njfGu
wJAyWFZu6oNBCcZgX+m31Vll8muOyazh1qAFVNhN79BqeEdJvf0C3II+ot3dR6VH19kqoaCstGQM
Kejwdt3OOQtlA8FeH8bUUG//d6tI9mVoFRTWvSjKbIiFlfIL6SfXV2MLODaHpQHlNFB7Cmi7f5cq
TfMdCtN9lYCqQ5hI9EKoSZ9XfAb+G6FxEi2Xbm3muoKQi3LwTlTHbrwAmApNgrMCxS5UcuXfAF8Q
PuDcdexczFcr8j0HqcXUxquvq+pW0KuZpuCgODg50kl/+PxSgscQRcWPEKd69SEx4vyVNDhlYwDQ
EuBTTCdk/S6+azsx7Umtm0alKvhyNywu5r13qeVJXoQt4cBQ798XzaqqHc9b7AhTyEzrh2FGCDEF
Gw63/oAD/EKEPU+0qRVkpHJ+jHSkTUx13iYF4e57jiiqkmQLF9GaDWvAQNesXWQT41e0ILmxEuBv
G/1CPGoGJlReXfQ1JYXZLEODkstQxDlgeeMVdrv8QBHOqh25bSqxPudDA6cP9FoePimkoNc0OsKp
fqka/BRw69gHKBjplF4902lN5V+3qE+8vzG02VEHDrCYzZtR/Y59gBD4k3z6ti2ItyHjiiQofWDk
RHPaCWu2DixmF0Aar+F8dzv0832wvpe3W97ZX19j4unHrOS0Nn7wTZTfTUixjjn/83BLqLtdozhn
vcuiuK/KxC37IbJ647CuJsqj1xLkHtgMq57RnUl5eykV1gp7he5D2FyCFbynYWmvNw8KjUHJEWtj
+R7bhG6PRaFL1+KxjWoxYDK9/oUPJW5DFD4ENflxhNZxbL9tVUvc+JnLjb1w+v1YInokDHXTH6FV
NCcj1B2TwMPsd2asJYCV4S4oVyifKWkxqW4h0Va3xQhY/1+g9wfseazsHBuIZe5zups8Cj6d0CUD
2QmR/28DIjZaycKn5/V8OpynXCHs8HEj1zf3hkPDw0bEsQUzbIJIW9OmW46UVVXjFAQ48GLVNasu
6ohpp4Nm9EMJn3HZiEhrg3jwiH2VMiqwRRlBme/oTMCXoadRO2aUSdpNXdHIsLJoN7NdiIxTGWnD
DCuFkvECeVzd+Ydp0b2/SepBPjp9+Ja7sr+pPj+NFv7a4ipbEBRl3gfpQQapaKudbhIx0n7TMpO9
jZoUN2CKL4Oxetwgi3oonLVlT+4utstYgRKE2ZpGlfQSdG3ZXFw5EBR6+ywJST52kq0jgtYO2Qnk
RPKCIcW42OnORbh5tyxzApy9QkQg6JI745u54aUO4jlIdKJ0DbnRcmBFSKqoE2AiUBRXFoI46DzO
Ga/nIPXnx7t29ytrJCKpaWQyGOW+1ZGvC7T7GXm4e0L9H4HkxawLJfZg3xBMAU99zIsN+x6w26tP
RgKGZNbwdHR3JscmhrTTFh9oUpQD7FI4bi92nNR+r26WheYmRQfTkYC47s1lqcQO5AdzuJjLa65h
K9/W88/LGqclpiLm7NPXgEdKpTk7bxRbvrQDQEgqw+NSC+QrualGwOGjQkzX6WhBOC1pCj1SnZ34
Qzdemcn89ybSpD3ErI9N10GBcsoVpdkP5QrnPyMT4UPi3/RSC/FWlyi0o8RzigxOuFBH9dQaFXZ4
yal83GImCCnOiLeG+5e3dxgQLSAruLx2X+GR7qBKSGl1pgU2DQjsJu5H0XlTUgTEGRGj3HBLBzsv
4BOdC6JBILUht0dsPD7X77f0n4brfWUD/pucAt+LpCjJkH1IgXNjL6aLGgMErB9SppJtrmeaTBxa
uhnHjPdvP6hez+tobZ4kdxf/o+oC4/v1gs6XVPoNDLxCkd7tCBvM+UKB5BUonbg4xt+lgWQdOLLJ
J17or7HaY0qHYSAwrgTBbx6ffX8fES4sBJuw/MupQfEpJAgZm4SBGkmyPIbCUPJ5Wd/+jzSYixhR
+tLtoVtWTDXhIlPgAvm56/mQSxzYu3Usu125iSgEE7vxT/rK6AeSXmcds26Unqeoi0B5nfLckgxv
k1s0ClkDNFXMc2bM/bJoQRii7TR/BDdV3BK+In3d7GWVNFNdTCNERSPq8gYZBlC0EBKDG12Z9B7x
nTOWj7kNt9/8VoEwOEMkAb6pm+V4IlqGcs1xlLI83lKM3I7cYGi8dwgCBk1xQTEIt1J8b1gvS2Zw
HmzfVWQ3h6nLP3ayeCpRh9gLkEz6V3aLXoi0W5gBxl0lF2w9/H6RZ2dU2vzV7GQKqO0CNFH0QfVr
J5hLNcdNgKYEz82RjAijg/GTUKJviYDo6ySVqiLxTiw5UkoXa7jN8gI3NKnI8shCFyP0Deq/wLHY
k8YW4uqGybj6fJmkhrijUbwygSSTwoTK0ZODyC7oQkuQ+xJxSCUT/LHgdsDBNIRjnRpm6SHS6BeL
iB18ky4V7ACa58sdcR56sQglz9U9x75h1/NU8MQWorgf26TBkAGbpFmUtknm/nocMf8MTvtFUb/m
/0N60Xa10s1xkvZUYjSfAD3N9zT8+CYTIZjcxMFw7wcJ7ePzPhWP9dQB+Odsids1YuN94WNcAI1m
S128c5nwDFNv8BkPywDuFMqo0iq4akAY/LbFf5GmyR0KOw8pRTiOvagKF6EGewzXwPY48IVc58UY
V9qWp5aN0v+Cu3sigOWLznxaoRPkfxMT4zqu4YsZzpoHjuj6WC3nwa8b+YR66R0lzDexmQCyI7Z2
FKzEKPPJNCrxLAa9PHIyRQNR00pQSZ/ALraiCCUu1MYzDrjxu9NZZ1orqzLb1Doddh7AJcIQQ00g
ys9N1Qb4NSnA0gm4iVY/2P2R51XV5YyWQdbEfXSwXeFO28lD1Zyvpj+EqhyAwni1XHMMw7b9gj7C
QYJaycqnESjjJinu3fJhpETTDwqPqiHMU1aRzPK6JIGJ6SBxpHRgYMfVt6ePCqLLCMn29IRakuHl
g5bTZnKEzZ8ehI1v+uG3g6+anc+mZJX+RXOpyZirchcIve4Ha77lSp353b64slxxXqxzB95MWRvx
kHmHP4vBQK68IXzEC/EN22SYPvMtqZN6GJ6ATxB/xPCrQ6l/3dCXSyNdoydR3s8NBywl7ozzu2lM
DbTojYTgrAKosVi/OAScyKm1qSsb58RIo0i0K/yJ++QXYH+/svPywbQkQBWiI7LAEVFUry1BjApT
Iz3d0/SUaUKNPromltpKyQP/VKGwxi0/0NwClkWfOHOkePMyFYduvvQCGCNnkYeHazSsCybl6M/5
alB1fgpUy2fVlrMvluL962YY0qt05JCLwKS8SalxE8FO0/jybP8oZaGhB3N7Y80GG6mx8qKgONja
rYyKG+tIebgzrBezZd26XbV2MuYNty10GovXtKP4gIIwc1lj8WMAh4acIM3V22eaLgpz9CfNRj/g
+0rLYoAaqODB1PKb54oVmcALN0z8WH7ReyP3kwLhvF1bwjQVrR3rPQYjq17w8Fa/gk9fLCwDTIJe
i1u1O4b4GxA+27gu3XPxWT7qsGpC0WJUi356wbjFsfHwIbLhK70+p0AnF8EYn71B28KDW8k2N9XR
Fv7vA/k8/zOo4Ccv84rQ5qN2jLAToJoV+hT0JusQgCSF5IVLGWt55w8Cft4MLJd5Yk+efGqOwjGc
bsxATKLYfZ4JCj3WetVO9VUuyaAw3WWMkpwcXJ3IOJTyPMdZtZTkdegdFCm7VmiDbrg/6XGTbWoM
+3ekZf5y+AJpYPRPFbr56Ha/S8NhXVvdjZQDRTFZRVWrZo4ZAVowC78TZBt5ShWC7Hqd0xQIKBg+
ydZEy5jG/9wRGeaowyJVtlsCCmW+Wz1pjNrJzyOPZR6Ijq0aRyd+7OdCazUzIKjiIfrXXMLLJzk4
GUQDvkAmh4gcOiOpZPVdEdpL51NCyrPPEX5VkxI6k+ildhkdN0PqExV8xJF+HPxfSK3Gpwec6PKo
J1fOU/U3ReFCCeZmy5Jm4D+JAbxgwVSKp1PGPpS4lggTxwOSnQCIRk5QO4shmZd2tf5Te1lp5SwZ
RfDfp8MXfve9wi9e3YZy+V6qZ3NHXTKZOUxVUVx8NvpQ2sbU8firmapDPWzSCrKSkb2D+NTQ/orZ
gshRv076lGBarX0OTy3o0sFL9oF4mFfoIX0Gzq0FNc+CwSbDJ6sWGnwVspOBTm3PyUSNrCuyn7yI
F8Qw1wwYCyjG4E2d7UI8SxzYJ+VT3TaDlOuo39BWrsshG6R9Gqg5rLSMIZ5uHMGuAkFELPkNt4Ok
EhWqZrryEg8jBgvRcHupnu9aVlC1UidYvUG+ZX06Qs3bdxduTU4jCEGzUiLbM6oBSmnn+wDFbrGC
5gDLFaOA64vNFRI8r3TjHRT/dcTXq/sljepTqPQQQx4Tp6RGgx8sk4nGU0WwSXaOaEk96hfCBJ2L
qjmza6xTO/nvslUR0R/uUHZQgrlP/pg8XpK135t8qFlpIjeOuPZemMA1rJQsbr4Plg+DYUoEyJzI
H9paGkl4cNM7ROwc2xw/JijIghkfg0sQKxw47XKHBvjQizlSXDAjBTVQWLvS0VnD0vRZL8+Inb7E
s4TO6ul9Arzio56LwCLAa/MR/R+K/6CHO6gCJSdt75stP8mvNCVDyctMBfAtK6dGvrIzayI47sIA
1/6EOCT6xNQ6zj2AfOiWQWUpmeRIgQGkdTopnmiQvduDwWACr9+kYG74anODSCUcsoI0X5Gg7Zzb
Vb6kFc7Pmxc4h0piwflcMLgFMzQigTwMritSl7r/jKhjbWTMMCjd8JgGgyIltiswhJEXOqOTfAmJ
p7cAvPUNkNzzYo2rsanYMWO4Re+X5Cb0qy3ZGFOD73eHaZFOzbMkzIir5wYrvWT1VDWVFeWo+cK3
M9LZXg9/aCSGoXwF3hrY6hVczCZkatQgMFMixr/C2dwhKwzuG06DTl0lzYytKzVDF9sxDgU2IQlI
/pLHgvAGw8htpFZCIb27lWXcsmBIgp2/7U7phyiWywAsH/c21+6GffKpp02pje8EOv7oeSz4ypoS
3gAUOiNs94QK2j1LbXJzTOx0scsHqVZmS4VX+SDu2uPi0urPbzr05tOno4XtO6svUrJUZWgvFgzL
yxRIDWidvOTHWf4HVXzVmI/Md72u+s760fCN2YGEEZlHobyyF2Lg5KmEmZ9frYUjpUYyJHI9qlge
D9y/w/He2jix4xyxsiUnJT1hVrGUWsk6AJn6/PmYJj9bmCLplHQqW1aFle7ywwSP685hW4jM93xt
jft7fIAuxR789Eiz8R+0ZFcwLyVvJEzFTcpBAtCjOq79LxrohlH6ZYAsxkWN3yzW8F8P4mdNF17n
izDkpnOTIzOJUvSJpM2S6lvGdraqeb4zrKr/AEqEEMhJXvgE5nzm51R8TA4ogv+kCptRmBtj4mYV
MvHZS60xou62jWIyJgFPuhebSmrEWD8DkHNpqeDk1vz9BF37uBqwAMe92eYJiKwbX2UTrVTRR/W8
0tqSSPUYOcjWeyVkPfvf8k5YgywT1zRID/W0vvzbwCri1rr3N4aQofNguLl6/KSR979bN91LEKil
Jq8kVMnEaFIyfUZRELITeaN/teF+IIsB6IGq5Unw6bKsPudev0mEcFiRL0Xe4W/awBPX4NQgM/tK
wzOIELnsOz0/DFQGrZZPQ6x/VjCtUmBpKc4rqvN+527ewSAm2R/ljgGzolKe+7yCfw5hbGpDg009
lkEc+3YJenKlsrH604PP5T+vPDVhimVwdlju+Apj/1j3kDdFY0wBMFDzBLk90+PRXxCFF32u1vGI
/uzm7m/X+azip/C5VYXK7Tuy5MJcaxerWMp94gqaF3sFiqIK3NCiSRv2usTkvNtPNTtRNiGnYbuj
9IyL4fY4hxJMN/jPBjJZmdJ0RVTSh8m1uOIqI+RMpiibfMKm0O2EHVoJP+ESZ/PN5ljq5IMDwxv+
lIOmcww9k1RZnmZN9gnAY9OSgku3/A/apatX6VuFjE8oP38O2uDivgwvAhDurXp+ResJiojQ3Ir3
ggspylYbDzsiDrVYdVd5nKi1JbZu6i6UHoNXk+r8Nrwxk6vheX2OXlRmP9CuuslilLQn5UuYjuxA
tXlufq3u0fbi3PoiKjVZyOuYA7PYliXeXMF30lObBNBR2tBzc4/xuvPo/1zcoyy+0HvvhP9cFm18
mgQywyqgNlAMZdnmKO7nrRTkfquvlcdvE+inziAXNt23Iu08iA5zO8MPaPLPPIk/9BzdcXdUar38
Je1LgynHKyN67YGvvam33fTBElFJtDtsli4gsdRbgciyB0/vW2CgLcUs+2Gd0vzt9gNTMM5tjZhw
fLLf7rI3CAvjiqkMcq8drwhUrclBv2kyBHWFbTfDAb51n3rOzffe0wN04gbN6ovF1ZfqV+0JaF2y
UnKTOMR5iktmXShHMH/8591QjvLdFzSrZwGETMNEaTf/jDdiFyAZSOfyRDZl3wD/8UjukZdKCDIf
eURoKRUHGuSDjPRjadwkLGjGcJRP5LyaYleFsHdy5AARpWyjEV7owaFhfM8kIz5lP++g55JPhuYc
07TRDrvhMYK56OcgbuGnLqCeTi+xGse0VyDVji8mB0McQiO2bwrjig5E4NZ1y4+usCmZLsp6dQ1K
kQ5+vzhX/uKIwMlPWU7gHFxa63TiEjhT5/d99WOsvTapstKEjI7MFDugpLe9o3JIm3WgsUwOrL/W
MyMCMs0bkiP1X5DWOZBdjN4L6ObRqVztc/UcsORG4jw2+IH/kFgNF7RwZ99+TIdBxeAZUFsroawg
V4xFBQ7ds9SDQM7zzZTK4iVc1BMqDsBjY4TRVA/lSHikJLpfI6FZL//g7nZPdMcOfOGRZ9vRHw1f
ppBSLMzntmcY8Sx/6m5364YoNzUnirldpgSndethME/+o/HmSDYXtYV4FRWaks+1klzhWjC/39Lu
2IcxQDGz0Eie1yXCNY8oFWLpAsfaLZfL/xkoF/yTn2pw+HESlpg/HcS/y+g6aUFoWQ3e14SK3HD/
37FvGgthCYqL3SKiOJ/JGszgyLu3EDNkQ3LA4C80p8R7v3IRYW2X05kNe9prg6XLGCYBE92KAu5p
YVsx/IhGeLoGGIJY7o8ieiYSUsOWwNTu6bvPNemuu+/H3QXPu5e75QWoKZjQkQwkCFF5OQJvsuGJ
mRoYXxxFBZRAxX1lX/QKP1mNvXK/HLnq5OgNiwKGwNJsu9tLf1nApDAasJOdRVGSVsFG6ALDFbn1
PGirMdtchDIS4pVN8ke8mrZZxxjHlKv2YMhy/oxsGsws8IqWJqYJVc8gDeIGbVuFWK3yDzphjGOL
DNTv7hd/WYQpEw0WEM0mNo58SsArovfOSk2SgCV6oca6t0iEzqj2wb/nT4NXA9LCl+yJLfbE0TGE
MH+yp3OW/JwlDgl4Ld09Fs6FpglwApe1xl43iJlYpPJsyAZm1r9Mmitzbzm4fDkO85tlQfoDAy2P
YIk6D62X20csgvHXC1bIoDf85V5US6MLmYHZnojuln6RbGv/vI9YhGK9SVl78tqbQrL29LA8uAt3
NXIaXXdtSncQYLv/yKVfmURnWk1AHLPZmshHidNWAdOghCr07KQwA+jsCPq8gIwZ4O5nLTR1gGgz
2uphnrXXttEn7+3K2IW8/Y7c9RuYTli8ignprpgLWyHPKMmk38joE2tHxa1oy06mGwL6na5JpGzB
UP2/d97h/NZiBl82tkpM87sPblMG7IV+vbe6Mv6fPbL+Db0kvZZCvt3EwZ0fshi/I2w9gKecQlyO
X23xTBIWlxGcTxvbs7QUGgnJWNYOO70U735z8E946Ht/BsE+xlUvX0n5PfcBHF3i/QeT+v/3S3v3
SShlkuuG6fcOlRLtn7YZ/ys9J8w6c+qJ5esDLpxM6zXVvRuBbyolVA8rYJOBG/UT6Ho3gcFUQBmi
rSGi1CxcO8HkHbF1XvrXUPCIjP5/Yjb61pg/4Q7Ys1YN38PVUcDZHdOaI5m8PoS0wEKqTuf/29bs
7GCXUZoBMr/ILfKtP7AM8Wvhu56qDC1kWjN7zz5MtaI1OoOVoMaErYphBpOEbYcC2jtdz/TgMhFw
LB/kNU41VoQup1YYK3A/bLyXq4tLf8dXO33gmx66cz1nyaHipMSkmS2ETZsH4FukPJis3e22XeFG
eAPL5twbnR2J+UFfO5A38uAeV2RJs6a1XKNR6cqTfniZ6bsSENGo8jHfp6eFXSVeC/IZ5tPAM6Om
1WxxpRRjEpFPTKtLt51gy8fG1H66YzoRrfYME4gnYsPXFJWWlG9WcmqDVJfbpFPChX6uc0PKGgR4
DnOIobKVgU8ji7yBJ3a8sU8R6fTCwEnd3pdaX1Be+zc+DtHNwUmtPnMR5l2zQ+Tm8cM9ASy8rtBa
3+zKLiD7rchxUYVGYzaXXmbT7MDX3qy5zqpZXOqTDDhozKdESr1mwE/BmViLppfU5mAmZMgBwXS3
rPLXYv7npUw+b9ebkg5sLxS+Cyp0PAcYyWAE+V5kUh73EsVFv62XEsT/XzDuAxBUBraDVYzeNKs9
5G88SPFjg+DCAFRJHYpgI0R00cmSoHXT17IWYJxbmrykjPoI+iv0tLzSzebWGpR5VVKGufRaU201
hMPbkGrwRsvYtL9xIHOXxWLfkNTByUqxYmgiguHw0oQ+/s1+lhf/zIiWHoKW9WMxkkO84DLOwsQo
vmyyV5bZ/5y12UWjKGngTfp5/hAzZN7cILTTB2gmm0oNwZwKIswbWE2O0c5VHXTNMQjC3TFHwDIn
ZdrOR5JhDQGvCf7L0YEjgoA6Her3NAb0rGtIZODWw+mLT5uwjt2uUFMj3aXZHD8reP1fIbVR16nz
lGwS18vSPvDTV38PUFK5ZCxNCkKm3B2r4yJ63p3iZMJPFTlBuD7Z2pyElATfdrzGJS5FZRg8P4xX
IwrcbwMxTOYtM6d6AXTQ01qkBwChGd91pEhPtSF4zNGXLowFqjm2uG+jWAOnkiMjHoC7+l3Nv2/7
HxEg9x7Ul8d5o5H9rDl/YYyTZMesZZbr6lZeHtz3c2WM4tHS/8hYQHNGV8vfXTxNPT8ZXBUL4/O5
7Op7Q9vsD7f45wt8EcI3ibArq7zNqBuI1gNaHEJQZMqjEp78Zn1geq8+jXavKyq1fIuunCUnpAVQ
Z+nyf6ek78kgA0a5t8w8sl3+ONmJrI5m95+Gl7Qox3Y2QqgUkkntBmGYcA82VBWCv3Y4qHRT03wa
fW1hkoK2lhVy6J0G07SncbVaO5R11hUr7CJ6TrLYFzluvjpurw43S79fQ/w2fBmiRSfEwCaDbNM8
R19/CM3mczLxxZCIbUQrR+iGSMg4tWIbGvDVtFw3LRSfbeMNn1Etg/iLVJIRD1Yk4n2sw3smVMZb
3A7dO1qYPYK+54YAXyrYDm+3nHrQG9BxEE8+cn6itQW0Z2q40uL3vqsHcAN8Nv3Q5pDfLBTnInyA
KXMhmVAffVLbml2ow8di0sWAUAXzFs2XRtqhbcgmN3a48sL024hrjPCKpvRFX1lzFVyKS3cwg2gM
u7OzcfMNY65zh8dc8mn1Lv0THTtPSlmWMqiYBPGeiPwROKJZhcJYcFxmUg/qyS0SfJr9jA8NqdJ6
4wBV7wYzvAmuAl/uA4Hhu0bjSZesAT+SRuIWacM2+S3KmImNOM8shDg4OyEH5ECGt9xS68lPmP8+
FveIqxL5aivky48d0hLGzMSqMHZ+wWCbOrMNAEI9FqRwh9d2BnoC8lDo20KjL1X7Ama2TMmxsOTD
EPBqMIOOhtkJ9RJnB/MowgMvAO720uTs+pnT+NoEgRbW4qtWpUZCNZNxZ4JjVLGk4KtNZsoyt2aH
p+pyTpcXzv4hwGVxUBqohq7stIpBWVwV9ofM82TKhTIr4hGl5IRhonL1IGLKhmnoJRj+A0B+1TOZ
aWL3jpDGBIq+d1k0RVOKUOCJrbJ3rU1R1W+kdewXMV13ICZtKWufPglnQyjsmrnexsU/NvVzjf2D
KgMuBb0EiV8GPchScRcNUAaOcxeiHkzIGBMV0GycDntSag1aPW66gFqraI6aoGArH0uWL3+gOROj
e/3OzXpa7iwdk+UMLFH6314A8wBY4m48FkVu6njBocowLIs2r9iZQa9p+dgHzqinmVxZk/F/9fjA
Cb6vr7WWjySt0Qikfwbwp2c5PLQeb9lN8q6FeDzxMNlp13F5IR7qORtTHYAyVeLLBGQyFgZjYIMf
HPDVhRmm4ElTOP5jNVGDyuN56DEbi9nd/sZz4+gx9qQT82kYpP9Pzv+2zRVKC51eKBRnJgpxn5Z7
k6uZ3cnSW8VKeX/kLB0fgLrhPjCdHxqKpOjbc3kZunefDdIr8RqpipCouI5aVOJI/TRKNZDd+NPh
NEx+z1Zy+l6OeR/UQ8Szx3OosE5ZND+V29HIYprfKLy/dXwVTiZTAnx5A7KRKkuBFAXufecFcjxQ
kGytVrJrIhCKRMhXsTkrHvEFxYWoE+ewhk5N1aW20O02rPA5yIKaE+IVGIZHKLEj3A093qQoZHQx
hTVkrCwyZqFDkaYAymLAWnXAFu5VSrHfyja1m/Obp6SfM2Og0218zrT9IQTNP4NlIzI+YxJb1Hu7
sHlJOwxcaDDdW0IPbBqYbHOCcD0uASfOvMRHnUiYAWcjNDVuFOz81PElmFMVqaVQNVPKWCCNzVDS
dVrDL3fh7ObeL/RI1u+8UTKJRuWWnxu4U6g7PlVmLZmyZTXORtCu3Tfk5YeGST+AcXNCW0PAHb+8
sSN70N2fsyvDvpyaFPNHbk2FHejzhMVsvhsGGOBIx9GTISae4EtC871YIyYK76FtXJ3xvH7mdJd2
axjA5mBgdltE6JNcsX0rGbpHt46zJTYNDkSUSzvGdfHT2nNM0FiKH2s+oag+5mUFuKwm45jAwNti
kfMU3w9G0QyAf1qXfFaj+1dZmLMKnlL1ZTK2sth3/GAEwv/9ypslgDTDLuouE228ZLOZGoVks4Yr
SwDvO2dQiYQoMEjkmEG976OkoyUwilNJarYGDCdSWEaR1UbElHaaVidyZHq9+S5tU3tq6U+v+LuQ
IltD4O/NR4KRJ8EGfMOY99e2t0u9N17PAdrmTuYYxYiM6cu9pfOe4r6hZkZ8blJbKybqnsi6prZt
T+HlWeYqTAysF7hQA9TjUaPGBv4iQJJ4kvu9JoBl7Daza1ReHX+0sRUGMhvCT+EwUg3QP8FhEiZg
FRlOexVCPfzgUE+omJc+ylab90oO0LvwlGLG8u+XcN2NF53jVLlXKIod7YytE1PoSQe8HOhR4wit
poZIRVFjNrgyHunvZMXul5xnDjw/XKIEZKfg1FS8Zupaym6gbksIPkRAAwaEXv6RMlzT3Y1Lenus
91Lik5V97sDwCbPIZEbcCSh5BR88weul410N5XyitCguBILLEAHtWu0b6t9cml9h8kP9z9mo5woo
fObPrMZ3n7SWTsEyzJolDVP/xVN2gUPQXpvNKOH7cAXq/tHhjK8fV9foc8iViLYrFNOzPb9VMHKv
YI/WYGWDFXLOsHwy73uXUP0MlKia7YIZuth0jFpaupRxl51DdyHV3NGPcJ7bEVD+Qq8BWBd7qGHr
gTYaOE1zCItlEHn1OQq6sfqpvytyzSMjwwqOwavTa/ASHhCHfbQpiFI6EiD4iIZY8GaX9ZJPrEwh
0kSVAg4driU56XSOcxl1+DDDddUtmcjXbc3rLrqa/7jaoLd+3htI+dckj0grWzNLmi+bL3wTzm2l
42TVpSLO1abNBe5ZsQKX0K7KDLd+dcyLOlb9bCI4ECm2y+lun3JHiM3lnEh9EgfeCqZL25btEhPc
zgWQm4MtAa0T2RNAKIx17t7VZOIIjcSiFs7gHVV5BaGYEznCuBcZaRtZDxhtTXAc7pybYRi23xcP
7XdnO2nJgZA5qQTfmkmCBN3lxpEJdcefAfoYTKOZtPKoBQfl5bEDf4k6Goyb6rqWhu3uZmAYJ8ZI
QzjqJGKdKPOFtrp2rdYVR23QPu8AP6yqsxOxsBaJdSE47wz7DiMUCmVSX3N1TholJi+3G+ntSvm0
WAaLQS0JyyshwJkXuJrb5XqFVDYicvvvInM87IoNEBUmvz6PYEBGbtJvgSZBtb3SaxZaMP3YtZ8q
tbVi9Cyuf01Wokf46P3RZSiW41wxbvMCFUuUQugv75pZYIO1DL3DUxP1JA2QBYXToCdkAtjkee8q
9moG+b6MV0NBGl3O/gZQ4N8TSHXEs4yzkq/nuNnkrw/SiXRIDfO6t0odLqHAbwb7a+FIbWj7RZQw
6cp4P8caFMTZ6Lgt2vK0gJFcidfJRsdfV+kxtL6Cc0/63F8zAdCqRweocO+fftx4PKK/6P4tyMz5
Y8F2/pKYENBEJSVZJc6ya2kPF/jf7GMA7uHfB/9HQYvLfA+8FZY50acEzs1VkBdoLhWGaI0q30g2
6qY/xQaFCicmcIEprnA0lVk5OgYsr7q+KhhPZ93Zta3m8ELsMRPTZi1XAHAFKnJw9XJjhxAqvMlr
DkPUJtOCXzwPcVOY+SCrv0rXR9lv7edfoJF1KwOpkAygrh1LKn1joB4Mrmqax7pW8WyWhJcvWvcX
wHwPUnSxoKYlEQJ6qe86k8AXpWlMxAw50XJxVqbD2mmjYfN798LJwYToEgNxsy+kDs8fC2DUEB7c
RApVqU+sixDPGvYKWow8a+n9OnlFaAuQMfpwx26O5QitHh+X9Go57ACpoPdT7Y+ynMVL55e2qmbE
S62/TozBicU9AYgBjymAZFgyfdUbQBHZ02lsjxaKRm/sTOlUXuqPi5H9d3pUkYzlgotvqn/P9aMC
acuMhvjHkQQ11rK4aoR2VZgxP0ZvB7o5z2cpDnXW8Aa67ig2VopVLMGw2IBZaFcVyaltxnQYmBTU
yS3/cw4Ev6jc47PjuyW0fV+aq81ciSvlTY0fNNIEjl+32s90lb5K3FD5PbVajrowR6BQdTgCs7tH
T4EjQOoQ54XNInLFo0+VO65LdOyKte0GwIPAVgdwKbGWHBRnYRNiMnyckJ0tW4JhND21ZlPkFDok
Ybzj8VS2q2yIPNAA9qqUeJQGyrOsHlHc5UDp5DJgJZGEaX9OiNXPnMJhylitocq4ROSPkcnJ5dpz
ossmT5+HlgW1TpxHbfZASimnd7w93ZMQdGzhHGQbP+uidneQApgHiJn0AvudtdYyO8pbCiB5J2Hs
BwjFLloql9xGoaSmkX0Eo5SagTUVfZ1J+K4pVBJe/tCLIKj8ZbgFg4dguVaJSgbDawhjc33nXfGC
l7Rj6LUJRaK17INo/r2gcNe32PYzyB0m0OheoxtskXa0JEJGo+Y6r7gAplt8uqi/CLZRo2zbMPrg
+NaMASxs2uf+VIGc6EV/kLbWU2Mlu5rBwBwN0WVLySz/INEzL92PmcSYUzPTfh6Ea/HMRPoVB+9T
emocNb40Mpp8yDmY7yLwPjl98n7Sfo3ImbiHPqa1Lngvs+Q2NzmG5rPioULIEK2Ppq3NtLt565TA
KKCjDdIvjE+I53F/B6VbqSuZ3mhm0Mh0dXXVanvFyWCMkAx+RVkrfLLWtggVfxWTsTDjiWJF+9Uh
qV8aN7A79xErDqdvRU+aeFbrUBDhLauisz1hRc227L8TEpZyClaz4QmBGviytiuPCWSr26Ot3Lws
Zy5Fbww/6NX8rzbmNVzhbzpvUTh8RnHM1AUht3ZHR2de650ovZ0ggG1H251Ml3bnq8AGe43womgo
YqrhmIQQPoE7nqy48avucyyABqUVsjFzSbIk0Id6GbJju6MWtYjtHy65ISPcLlumUr2RVGMUJlC5
BNRgLE5+I89Lhdtw9DVW/ZOKQCNeXQZHuRqqPG6RYPIWyUnPoOVNZbhRsnbPqeo3ME8uWJgydNc2
mLv9uL7c01tI2FRS7GLxfubgcDZ6fVoxelAlaJEUTylGBrJwjJfUCTid3wJWsU+uxRqcEEGf/P/z
bfXry5HCE4WOCycnJVLhHTcGkMm4hEUDUVX36pC6wgBUZhjc4UrRXnHEn+X0m+OzKVNHXYFP4hSq
awSCzb1ZKRYXTA8gPsTB5bZtihwrBA5FvgskAxJQRXxV87XZKeiVwgBflDRpcC4t1Y8vAOro0l1D
HjD9fSzG06fiABS4WOje0hcG7ajwVy1Cl0LGO5yryJN+Kuj81mDJuwnUn8cD4W+8E2r7lc82n8DQ
i915gBIwHLokmqe393By1LwZH97cZW5OYFUmE3OQCbZ7xfyAzFDVnEohi8bpuTI+HwR3JV9VZ9W9
vhUTPkCTnmmUQhJwj2Fs1VNgn9AevhTO6T5Hs8v8alOsFPwk16OOulYCT1eNhVeLI2NDmiNEgeJe
dRefsXjE9cnWQua5NcPBkwp2IJE6vGAElK7fKblgd6wWOzaQ6FCtgXiLuP4AjJYvInQF4O36hwoY
IPIkcsiydcLBPL02gkUvJwpEGSxTHiqvvp7RaUxHl7VjIi+2FfBnpBGYZWNI9q7rKZA1xvFFt64Y
0aoxj+VcHL+UHIQiYda0kO0Hr31+pNaKfJJDz6l256LjEYhRWrxACNVKurvKAjm+uqcGJjv+JBxL
hkVw+tzPE9ZnBhUmrfui4zk0XS+dCHmdluTwEJHhvw40UYV5vXlnk4uut9ldcB9/oyiMrPnj3RvK
c1FRdW1vG0tr2HBcOtXJUv44ziBw/jCgqO9qUQXTqcT16kJvdDEO8jzEb3qwr5/WHXJgvrYKgwZM
AA2hjDctNdzF0iiRAw7TArlMT3LBdAbDT0HpC3Zjbw/3xqC3rRgynQ3+vYJlYKfmajAyPXgUgCdV
l3HU38rGZmAiAYi9Bnr9T2q9/c22f2rg092Ja1NLOf6+2HLjJj+eLyWOydpdY3nMp3w9NIg4/6B0
9UoDixUg3oB3WAlp0vJTjrSbNcCA6TaqdBMeGejWdD4La7qwjiDgRiGwqOTLx0kvMs4tWnv1jc6N
DdJ9fRhwZ+ruQzQbI/fz8DDn+UlQoX2VjIsNKdK6rJ6K2lVbNzPyoycTnvO+1x3Pys9WiKk/qcls
p9fg76U2OHhSsl+S5Mb4zpCoHIYlFdz1Y1/ptzNwpXmtmGmWE7SFlbFcQ5W4FIBEUaooQRcdCIZT
Yra7ggpMKDYwEpoeV/Ny+lp9p0AFldgnMFSBMznDqM+hYok5ZOAH8rmdVzITMR1WVZGzW42llaaN
p442iOFb8OoEogmSFdiEeJPqR75n2cIbwy7SVEhUJilMnFInPHQ7ymymP/8AGGBdHRJ1RW5PBJKk
aFueyfBpdUOp/kIECMP7dLISesOAhOBK5u/FSGyqaka0dKG5RmtZltGEsUWTQAf7uwJiZZ8J77r/
6daQ3uffbW0TctZ9BmYCcwTFgeOHBXJ+q1kjuUHim8MA+nhrr4S92excHrHh8slyWuIgneDt6Qf/
cixPexY6TJQfj+USedTTNy6pJO8NyRTsoVYbiaXF5IeNK3VwvGIHJoAZNEyf0KiVc1vYnSE9nzw8
klBez27IvZe9PEfJ0PKJEpXqwlpOuUE+qVaJWpWMjgo6EWp06qhchEgVq83fGgv3qwAN7mK0JoGk
IshpRAswIgxsK9o75nG5w28G45jL6zoAa5ZyQhMo8ZtIwr7RJeUqi6J1VZGcDlmaDVFR5zRZ8T4K
jl5HtGMOs4Mj6ID2PfM4/2mE6thzlg5VSE3ek+BRtXj9KRICggrBXVT7adrARPVEcXuMlHRNjL3V
RZfDYgLFLCwoHf/TBje5bk73HVhaD9gaVigbdHZO7AhDZFOEGnVCXrk0U21Lmf4TKx4HsBeVHvCZ
klgU3wI7shw0v52madP8qZCvPjMHjexUgfLfb3YwCHpo2qftReYWzYIrZSitISTZF5w6zXbZQLj3
9zKDWljcNCiy08/K49Z2OHLHtqM8OcW973rFn4S3vlc52tbjyiAKrL5H9mEvikmgqqeE74dH2iwj
eSDC640IEPDswK9/dXXmoleQkKlEGbmi5ZEAU2WxQVRbHSH18/6tzPrGY4xk/vMQJmMv1eReWfSw
LRn4Jve7jivFak/fnmRtbDO0ZQcPaskfS/78tJlU+cnfs9uSqR8ONQElYlDo7Qk1ah9EIKOQw7u2
2NYaXiaw8W/FOVHk0imeAvSvV66G7mlfdYH1k+aez+iGHTxuHa65dZStz/N686hxGK536OfbsOCt
+Pox7Ep3ZuCNvnDQHWiCRylp89zBohC3U319vkchtjDroSuqrv1U409TCUnKYrLCP3/Rv7asYeb4
k1FKnzK19cEvh74bsEr93un7C9mgezp9+JlSqKioGio/IkKDuldkOivXwQJgcH2BgP6jzg81+WY7
77cgbSQ7cQVSO5asCUeG651P4C/QcWBZuMda9qldHHYefvc30ZteRaeEtjE/7CLr548mvnt9XkAg
iKLmUDzEhWzrY4X/X3nj+qF8hbL9tTJYKGJ2SRxCN701g+W2FqGu0iQUZdcvCJ9pfvjaOBPjkY1W
QOESlCSqUrjjEAmjkLfQ+OQP4bJ6ueSQJwmduCOM+s03u1fiK5KOPl/l6YYUOLw3xMfBpW0248KT
2YB0nncrEhakLpzyqzUyu7WEbAkKRr0vJU0V6cYkttOA1jXBM4H9emIfjty4KEIsMLc4/HdZ2cKW
JDmp5OQT425+t5nmRnLtyBCNPrEdv/NtUv41vlQZ7pgmqSmE0PFVMrUEW6yWBhC9kgF2K6K3MCNV
PArTmzI8PMabBdk90VZmeN+1XEIotRHXjkGU2CggkCVazFZ6CiqQRcARH7dCqKX8oJ1M4VlZPL5e
D52ND0c00ONBDmVGflyPz2JH6CP1wUJF0l5y5IDFcbenVCMvYcNpuMx7Mhg4/Ma2v/Xdnnjmj9Ub
niLaq8lOUgrPbsT/Oe3tUAJaRofzcnXZefOSU95FsKb7pZLTOz+tIM033rUGAS0WPNVLv+LzBdr+
IR3zOHTdBi3bQyuQPCqijTW1KIhb2GYjrrV1CGCaiY+mDqdM8cw3Qvhuk+L3B6w4x67CHTq1TSrW
flWMSdHeky/BlyekoHQrocGBw14ZtIA81A+TCjYm46xaKJwq3rIblPWwRsW1jRQ3NR9mmfxl1IRz
9VLffgwyOKFjXxTfJkb8VahyAlsK3V6lsLYr9unz5lK+MGsHm0VGpvwIGLX9ygpLspRxaMhxgVRu
5RH9A8Y7DKH0DY+nr4er57T0PSLW5Fio1WCwYXbkvHi9PfXmYfyA/Yh5g6O2iuMyoYdsIQm7HBnx
REYuI3ehs3PlU5ArZkaIgQphxGwLY5JQIGcFe6x6IMIjA4swpEPpit5qwNCTmLj/NsivR7iJF12U
PvdGIVUJpoS5T1rZF5t2yrogSPr0uq0M1cMeHsFI1YYMGGUgbY/bwX8n9FELw3jCgHuyAt+mk0uq
FFBuQZGxsx0V/4EdM9KLxZaSV9+N5C7IZ71PBdmWz9PT3L73Z4WeaRuT8W6fJjqT1n5ojXC9sqCi
q4sXijvZvIfSMbphEFU+vEEl3hkOOYBRCD6khkmtsPT3VaGUjVKMScMEZ2gvrHhaLQqPKNFAneMn
AVk60TJkc2F3iQNp8N1ody9spvTRocVihgHZTq7F2+fgdcZx3vo/iuqiJwuWzzfQgs2qpt+/Y/nR
54V3iRlo/O2wNCxUxhio6P0aVuoWiFnj0CYLIwPlUvnPHt6SODpdPKremVzdQP1y9dCNLZoFClov
jmiK7mRRr1q6iJNHH2Vlr2Kysug/efGQqhdDMTJNi555mqhga4Vnk234Jc21WX4j7ZtatZeWIGiV
F0rPJF1Ck1dso8wL6v4UuiEjeeaCpQwYcag3OXFF6eJzyocgbcrXmVJ04YUXN6N8BvsDzhMnOdOX
/dCeZz0WgQB40cuUwk/+AvnAQF8Zjsya7xwSHjNlhRLZeN3FLz8Ku2NpG/JXj37fsCHByTcE50eb
q7nTLkj8HFZ5aBvzfA9oKawiIURVjOoggUUu5TlDSGDrIjE+P1BW0MU/wBMFyBCYwx9Myw/dm3iy
BMZxReEPj8LFD7m3g09+ByDS/Qz5ZQO5Tl04H/TxgftbaCGt2Q1v0aRRQB5X+MNNQry4QOYpukH4
zfiYBXttkV7UwJmc9fYEn5PZ9347SGs/2rOdJ4R1kq3prpABrXwAd/nXJvs1pz4i1TXWL7Pnhl/g
RCP+KbxmLOFZueUpEUfjteYBm2wlgRqCRG+ygbrQ3emGzh7eyWa5SriQMJc0lZq3ECpkcNgDonjT
Dkx6GCwh0NlsJTusfV248mO/ZtmWv5JhII2uAj/qeWmOjb4FyXxO+JcMYrKs/HIoR5tqV5fY8373
QEcWve4mjrqadfMAYocppeAB8AzjLJv735nWykMJq0f0w27eUpBTGtd6ZGYuMSBHEtYwjW+K7Fab
0mE67tTKdv7dpd3XiY6MZiMiioGtV1GiJEfOVe68BgQ96VfPLIkG+cst3JCQRc/Wl3iSqCA+l0s4
c33DQ2kfaSH8+TcqH7a4GqpN7YrJOYqANx3llF4HZbG5IU4sd9/KuIzoAqmbwrJo7LbXBOKbSzsb
V66I6Ae4xjaJg96D37uSwCuA5XUPSfVrN5wz2nh2ksGIevV08nNz1ll0kYF0ADgsGK8r5WZYTfXa
XBTLSNNFTR7jiLHBhnA+VW3BfEJ/n8yDo5z7DalRohMVlxL1n77E5LD7uOD9pfb8ZDRtKXKPxIIW
eUGbvjN8eNQuD0NTIDYMPPpSqp7oGMi/8M1iOCp+mkN+AaS0PDC+y+CTgJSkrY/POspnij53XrNm
Xv6ilnbWjN0XEViLqou5GIoNwnET190w4poclvFI+bswj6RC3iukdoBkog2BLmvaKtcVOBi+yCJU
N8xGQN3mF3O6gkVPJEAezkd7NZEEsluL0IYteZobD5eMHoZKu60NaDPlL3LirLf1dT1FMZLzaqlL
gS54PIMSq9BvmmXmN94LWgWsF17MzU6l04te6LZIzdnFMU/XX3eq2+JPXLyFfaDNbgwwtZHd07jN
tAH/Rd0cKEqQavMaUYIdw1KvUWHg2ujvUr65kHM5lAicuwRPNLUPeev23b10UoboLd/qI68A3PPN
eKMy7rnfnzflisf+IWn5h5TDACEPBeddQiyJiOtMRBR9JC/E/33imAZeZqWXg3S/4zKNS9nk5OR6
301lZIJrgjU0G3j2DrgSTGRAJZPB8OvqcszatWJkm3UsZVPxninIQSbXPZUEOIaYgXHEQyxfk0Jh
ak9mkN6WYtamF++XqCszp2UZihLDJP6fty8+fTqYZU+SbUd8TJdYEBdxBdR1joscCFvjlndd3J/d
FXbfogbdjnOUydsEBpHS7diikGM3iJ9TV5FPLLFSE54IiBDMzDBJxOxWp2RnuwRbEuPeaxMh9nsE
lrTuItncYhJKo+dfkHFMJ/6thEJyzVI7mHSNXCfVunKGvgH/eFwH4TnnJRVPIEnd7dg0IYM7X6yk
hntD2ExWnud2rvZYIOxCcdh+6tl3LnzQZtPZ5CsdXES2mPTbiXqDUlWqqTMa+rMeymo9I+nZyXjt
t0LgFB5tX6nD0rTRtfsW/3WUQp6Fmy2TG28GQ4doLRiu+b9yua6UTX4iPiKKal9lT8y/g2KtdPwm
3Kj5hYeEwM1ZcQlzZtxjKf2pOwRadXawiX2ptVmj76uRfLNha7cQ4za+UQysxPbInXGHmwNP++jW
GVlV9RS66cE7Jr26KuLFCQbvEadP4P+Soa9PQR/7IXdKtY2s66JuISomWMsGWl00+EJ6vhZzD9vL
iIcBrQ41f2EQDirK2Mx0H3REpJ8n6Wr6DxgLD04MRRTvkWBzuMB9NGQNMg+fucwZgh7PJRKKtbrm
qWpSVEs2MDVGvf33zmPRStK4WlOCo/jo/IpVQqSDDuN1SO/AJAR4GVjYz6eaFfvthUTE7+RyRaX7
ZOWPWgY4QH5wl0Vn4qzIg1B9nyvEMDczSPrd1QRemZ5QgomWte1hnOt+ud0UJt89OCnePpWiOm4P
/FLlHxQcDhg4Q1LiQvmL3WsjG1nBjfog0aJgEdtkmzXy2DdCFPjlp3T4b8KM5l+yTGCHQ9XEEW6w
zOpb4CRvl5ZJabQTbC/fGmZd7fW/deaPCRdfpP3XJwGeQ7b1AgQkG2Di6yPDoJ3qTVxgCczpEaXF
jB8Du9EPrehZ1hsGCe7ivyjG77spEWPs0xCL6LYymT/iOgqEcO9fl7xvXb3yj7ieudwft4ZdYB5r
bOyH6hgMMjOrmYT5iGs0eJ68KBGQaNIEcrQe9MdkTA72oY+r4TCzMILXups26OJQ7nfEIWvZFUEA
2D6UXgMCPF++taj3b1tBVugiki0P2b4Mc0w/6uBLQMM9337q2bARjE7ZIhke2pTHMMGWetNh3VIX
HLEikulvTQz1g8/6md3nbjFhf8BmvhuZmKrVe8qO7wTgH+6Zfoa3feWJ9HWCZZErkep1rMQnRTvV
YEDW+nnoiVVNkK9Dmfp4BzOydfycmNbKP/W2Zaej2Ma6+ecwVRtTDeF2KWodDqdm4Z7uD5MECAyw
2tsPGW3Tz5d7Q/Dp4bskLiWLd/GGyKJz4kpl0KCXMJBTBMB5JD0WNoVJagULK1ykYLWzBv2TldnW
PIuWJ2WLG/UxnHMMHuiBxokgy2ghhMvoJcnrjfJdRE9Qr8Xl3LEMVQrBiyLaQtT/9XKDzdqwlee6
zwZ8QfcZ5bnHimIljNblTSy9N+SlYjcyyTrRwaaaK/+MGfMqGXNQLxcw8RR7zw+8VspDLPOmDvM/
SI6P7zhhfYxXObtzM4yNJPtEJItEphVd04ekcCSJ2+DkOKQ43WpoSnzunA0iJObvYAi2Ak+QeOn/
j0679aOJZvhs+6rbS3I6nSbY6xOhPIufLcH7eja7GyNx/0jz1b7RmM4iCQSZM4kqul93Tb+TQtc5
Sg6XxpPPKwF+XghQV0chIOVAE2h7INfVXXIzDzOnUL9e77SLbk/Uqg1lgay7PZ8qdIPce10maojk
3R9uHicN1ZRs/znmxsE74dyES5ZJYBWbFMyd8JNXSdMZ6y4iOK1AHT9PUBKpAMT5kwvpqom/oS/V
sAxCiNziRAVICWCEbUCU905zcZKaCJo7i0oynAS2KNJiWw92QWecpuhFJXscvRsCOCCNg3AvGTvV
67SpoV2L6M/Juh5NcPCzSmB7nrtCDj11Izkcd5dJ/awdONjlMhwwe8wMTB459wS1g0pmUnOm2X+E
4mgbMz3D/UA6d2V1CpXHuMCytJ6mDO0ncE4ft/EYASxJL46/Hl37m1qEjCa5wuxLOBKrW0TwNVxH
/Rr8xxamYetUSEd3VR6z6NTBjzdc6bbOzcUcKeh7QSi3swJkrBn9G1djVt3GUukc1AWJSA3a3NHw
r3MPb5c1l2h//nGzQNUmUxlD6IwWdZoJOB+EplVBONvylmU9NOJHTtGQNgWBOvHVexal4X/hJhLM
KATdaXDDM6hTeb6Rr0rtxuc37ttCPKuxlU0dUfNHgSXhIKgIw0iGlTwMA2trFZ9+fYGMuHASAIyV
l17qCPkfU55ybuvZhYA4FuPeYpx0Ar1pfaxasHGiMLgBrG1EfBp7zJitCqx+cRvscfygA4f0Y6s8
cnMSa741TjDJk6GjXWe1qXhWL8KD5DsjHqxuKSgyjgSMu7Gz+RuRkijOnQ6q0VZHjOU+IVons5oM
ZgSoYNOhxTBZ2GVR5HcVRq9KVdID8bBLDIbQcapCNu2wiSRI/2j8B11OwUFT8r2Vrk2yl9ipTQHG
QRyW8fEFOvkColItnVpZRgRzxnrgkMLY8595p4xSKCM96HupZgZHC5e6Bp2HdiYaA/se0LLxZBWV
klH4TJsr3x3Fo0iMRgMRB+/c3IPpGpmNKjrIGzOrGPU7x317xjFXm7lDkk3cqcNEKhncIFyxcuKY
VRPGXLxbLdohvEFtDxQrJJk6e5IRZk9CSPXICbvUAwoU5alUpMtd9DrQdjGYcGE4t+c7mJYFMpxj
+ik6blq6R1XqJOo0rhbPFT1lUuPMIWjDDARG2XBKjxcvnmCaAo4ecexCd0qvB9Nl9pw9anMsoRPi
7VBdCGwRtCzw24LlwY3uCKf5a8hAxc8NfCMDpu/MzCZABmJrkf9JCM911V84TPySzGoX/72UaKM8
t+z8PJBJffwDtYivP5tIrDPZSwGesRKJFZu+yfXS315US4Q48UUt/St9c1y52QLv9vR3TzBrjFRp
r4nFgXbNCIU2ovV76Q1x8xsFVKMCtLFHBa9mad3YgjHrH7SFzQfa6/aP1qM1D2bLHcvCEAszN57M
OLzBIANbVPjU6RQ/9VGMhLzC8RwyEwaN61rboBExHyBPPI9ICqgyxXMSWVeiGZWZ7Y22EHCw0bEj
wK5QWZBBTnY63RKzvS8T3SSgDetr5a7aqwFcEUzVn1MuFgYp3YM6jdJo+NP9AT5N/rMocCafBE63
hbecbcLB9fn8gNczdb0Csuebng+6umlaYI6Ra5h9mk0M27fmBWdNAUNTudspsd9CngKCMTn+GaVv
UZw5GuFRjSV74calsr/0DR+N2uvTKkuQXvjUO/eSmI+vp7rUf84lTK7H/YOVkkorJPjjLy/xeqiI
lb+wmaLmgTMXSwBZ6rUjNKX6k3OulOftqWwLTlPTVoW0H4j2jY5JKiNOY6Z5qUxogl70CeoZ7rpX
4FEI8MbXyfZoVvPOD7Q1hq5duKtzYp3lTosag9D7ZV9P6pKxNBTOcpBSn2SjK3v53rs2JpMh8MnF
RGYckrajcDw0HqBDxW7/TFcxDnduovfTG0La+tql3GNCZagEVkW5Q/2xNkUrLLK0HCMoTENZUj11
RO++M96NrVcNqujjFTem9UZkEOnlvOeRGRfkQxME4TbK9LkszIbKqw16bcrtQSeoTGiYpUqOWLWL
9QgY7vPHaYAeTIl7dSKCJ6q+Qm/asPx4M6iQMzy77cAOnOWF/7zN9aUzVxwWoWhTjOiSOQNpy2BN
zikNwvnmUkBHYoOyFV72Yr8S+R6uLRTshELBYoRfCu9Lj/jqrJO52XDO2zQX92BA47Pbyl7vW5B8
OUCmSfTxCxIU38G/7ssngpiGb9ibUTxaeUsaxAoIzavgrSwKoKXHDrMKKV9kIBICeE4Sfwje9s9S
qI2V+3O1KYzZWnt0IpefcAS05nafOIU7nCNIlEVOG+mrojrGlIboxftKr+eenPfi8RNeWznyUk42
hEdM6GddKviZYsd/woeDc0SRkP4z8U5lcoFjFTKhrYbS2OCfsHXP7OUtBLY6vigCPNcBXz4BXKSd
VvqR+s576xUXFnv8TTOI0kV6+eBnp3PSZsFOMRXtfaZn8iHxuKB8ZX8+evWUz0bzY43v0eHFR55U
Bxt2qjaMdKSutGmWEVrAFZnYM2VQdQFoO0Zp3C2iiy8ntTcTrjfVb7g27A2DQbWu3cZYDJNBSCzt
7SCMmZ+o/0AuK73tJBjAIYYRNtzEOKTP2xRNnZxsdFOfJeNsf4Skzblc/CqIFrnTwX4+UdZyLO2R
DKHpaXMn/R2JhobbwvaCOdgthuRUpgr/TxY7jo+RMAZBbkLYNsx3H0CF9ZVJFiyVoHNz4ERVcAKj
0aKLNlUkge5vtNYciQ9EGkRulVkW4OglWvjsxDk9zA5h22sVhnxmjldu8bMvNPpHscMRUo/O7BPx
DreY25S0DplW0b2wiXODCL8HRQIsi/BzcVKbkceix/XNrxHPVBHEKsGHPikaU2iityBm0Xq8KGK3
fqkgaBYnPeqbdgx6Ty//kAETYc27y6Ca3a3LVK8nSp33Q7n8b7HF6MWyt1Uo5C+csVDTWvxdOgvr
efZdp7lcUIfyzuF9kRQnrcrcPFMhnsfFGXxqmld0QxhrH6QLT1LcdpisuDmK9lr3TUygFSIFpVEi
akHvscWU1cM0uUyz6rtR8Dv85MRfxyVbDzJ49VZ3+Ci15jmtZYBGhE8Lwy6loUeQby8rHGP6bxzG
zFR+XK4BXotMfaCwr+99acDz/fHLnACr2Tf77jfC9qX8RNFHl6VJup5aEUq0ucrYbMt1Rokq6Xxq
HhHsYaGQhV3uWyV+Bnfr1y4xWiDlukid+4iPhCavvD9mgOGX6MbG87EE5MIaZwUQqne3fLwgGTkT
zeRNOVsgOWflr0aYBA7K9RDju1D12xh27jGM184AnT3E8xS8B653K7JXuhoyzi6Pw5H94Ed4JpU1
zr3Zkzo/U/wGpPwWgOPpy1mRFyowf4tcB0FvhvbHQ3UXs5tiFRJG2MUWPdf2AWsOzPKO6CcgrPmo
jo+GxsrNEX4mYpNVBF34l33XzU6xqLmrrOxavPsONEyRkiGtTW+i/vfAA2C7ST9cTlC8qWjpF8wB
bg1ffjTfhBvkQ7or93c9OYYHb/qJMr0aq295hR6x1z2MvANwFNreNpUG/r5nCQkIVW2CQ4MzPqXQ
7bpXqQ1sWRnwHmlVZYgXmPQPbkgxT/U5mE8PViTjDPkT7j7u9GpT4M02ekEIKmDK+/xHnNz6oXAC
0DH1wHzVKWhMIIkLkyj09n6iBYzNnkoZeIDSUX8bEHXDHC8898y2Vn+81wPfhH1o9P60T2SUdZdf
igP9hINTjdVfS4OwWHATVscezoxrHPVgnlKd2Fvp3e/+1JS+FYVi/Fef9Cp5GeM8R7MIBipem/m3
auFUbK8yYzteNha+RVHZpbYdK3SxzF+7OY6/Vzi5myx27NiBms1m0+gFMkjZwQ06jNexV/HkZ3sD
RZUm177O751CO57YDtAgotLHDMiPQwA8Rk9dNb6UN7EM6drMP1fUSq6YqWGXC8erKIQgrHeHtoi4
OqUwRstyEi79RMb2xTdmjKRUt3WHQsTPAb11i9EnIpSSq1LPnMSglAdY2uigNCjBXl+S8KbUdxCo
f4OGQaki/6/jbZwxt7doVB6//0WCdafK1oPhV9OMXEuDBqlVXBPaDnqJsQP4Dihc74R1O4WdYrcO
WZXzr7A2P4LdE8Iohh631vIWsK6wOnlgJNTNSxgqAiTds1e+ZEZFM54Nv+OYzOv4BhxdT4hjP1Du
6Jegq+AfR5A/Mg/YDNvg9ubDxuyIO2RTHsIrMcs+XBuP/IyFg1CPhh+UWtI5uhn+9WJHEI1Qa9gu
l1xOaEsK1hSR00sqsbIcKZW00M4kSoNA5RKgFsP+lpddLaxw34nTixNKHRR3/eyUiGraVre1trAF
xyMDgCJVCYfiOrNDjLg1YGS9Y9BLbLSUmaJB8r+9N5oGmh+I1gn+08pgF5UsprtHVrx0Tk7dfmyt
2QmIEMDrPQpMvmH74WC1Uaxhc+VkPOiV9/Hwop7txAy8VO8nZ6Lgu0YZDdVoqN7eK70QmDRi86Kn
/hxqJETTtAzH6aqPmSTwOCkhzCo475c8c09SjwLF5RJPGGO3u12Si+DjjlnrhbpQIPco25HD6xP8
s0XEf2881jg9E88SZsST1pflFOmhtcRsK6evABCqjvBxSjKBnik2bE9sPff3BRY3bqkIrSufYXly
3DUY9aV5BXEliK/HaD9IHct9KeCC4wnLVjgVbU6hMo9eDNVnyg5XNmLDLcoPY97LpJxNQMSE8fFe
1II0jb6QGc8UCfcFIK2m2UyuyA6wzDv8+UQGyxsh11NJjxD+n3hFoxPKNCHYaYvaI1ZoBPjzdFRB
4BsvVLlJZEEiazEMPyoKnHZ6kysL2FPIyj/zOqrHolv/KoKR9dCtnK8IWiRDNhA7iusSP4xxSdlw
8FbisxRaLSjSPFtn1UVGyJ5x0lVMxotC8Nd7eyXM6Iv+BH6QcRhuKZTGndgRBRRk0YQMGqNtjiwz
eSKw2j1w3/qXKDBOsBEC/IlzFf4uYHgd0+CoO6ZMK8qQKgv68CoTtdX3eIfDMTpzaSm5KkaT9OR/
KkbXgGTADwvGIm74TVA6zms6N56OiZ9gjpza9Au4v2EKHhx3DbHdE9jUIlOXSstEclWOl/gcgUm9
O5oVqRiC0cZsp+MQOzC6mFAeEtZX4GtT31SwgvHyYmAGgpOxn8PGoMr3U8zehbrKCcU0z/D1DJf+
Phq4fvfhznE25MnMDyT5EV9Xxy7LcKxLSGN0ZvyT2dKMuqXd5kzCWF7Sg2u/T98xJw9z7MH8iyy9
yGoBEfC/FSd0HHkRoNTuKT7hdhLwz5dXSFG1dCs3QGdfMovw5EsgxUJX9Z1dcVtoJylEj7BBpFes
5MKxyDUXe3QxlP6KYMVw+BvdgWD/MehKeX5b6xZxWEQ4USM2nzVtT+NozW0r2o6DnJ0NjLxywvIu
jNiRbC9Natoi+EWfISVU6UYk//PDwbWQ4nIWE6jVdRM0bNdItt6eqImC13fBnsFXKqH6zzuE7AU+
5+hf7YkejUsxasSi0Z8Ur9zZH70jhn93fzI/iYcTZktqrSL03byjO09AD6t/umfEBDIaEzfXXvTP
RLssdOUYFjBPm/scVWy6MpPsElQce/AhM2v+Jp3plJCuMEURuCXcTWE9hnVKorzcSZiDCLF2SkQr
rYGA+xh8PY1YBK3s07NC/EzCrQW13WnZANBy8J0s/7NawCPu6B/fY7+U43iqtyOpLbrey+ldg5rN
AqfwS3W9biemldsfLE/hgNRc4e4fKwKWd1mGQI6f82Wo8m0cK1lolochexuEXn4pIoA3851I6IB9
ZHHodI7BES/zjvLf84eIkmKFqqkZgHgsKK4hBQZjxK/hHG0jc85xQYTDgfhD2eVvTH89uZYwfNO6
kSQwl1z9naEcFcXxSW63n9mEhAKkHit3O/MVcVtAWieCUdKhKA3zyR8x1+abXp706AHGj79MWUMO
kf2u8EsmBRSa2/5P9gbnXT6vLtxitZOCYnkGjviJs22RKX7BPTEa3WMDKTGvDwE/pesTeqaSPAen
0OtmKBh7RLJYIM7+Cd4c0a/KHFGQpxjfx7jAYkF2gpepj/EuQRxKJPo2OSkLf63wSBr+PjLFJxua
drmUlsKyrqyEVLBoNHVN56900+BD2p/AAWdzkXFrD4GzC220DmL6wtQ1YR5PYCdWjWerdCEC1MnM
ZwVZKKN62XXfoHKs0I5ZawGY95jXLHdT9GyKUgXwC6GoMB8sRakva9AGzKqmpo8D/gfgSrkmBK49
31KSpscvUVCZWfnmFNc8gPcGLLKBRYxAZ64/wZKd2K+4f8VRSdtSIHwvxnE9PetKsnhNnkRfTFhM
xTjWlmU7UCw96zAj65uICAIwRLzUuG4h8nIgqcxKavQGfThI2UBQOokteKlNMgrHzQXYI9EsgYW9
u1QEUGPKYAWzXgKG9bY/zMVfGgiBkTZYPJxWagy27UXTMefist1m8vX1RyySHFnY76fpWUI9npxt
igJpwhhR8cT7ZL8Vh1j6veId/Gm2EHTZ3MMBJuOQEyTO9LMLCDAz1I7bWEUCzfi6oAy4kxEDMTmg
uxhvUd3lOQA60TlapqtqCzANlbWgCw6c2nKr50wo5W5Zji8n2Fei3qUOTm4TUiHDRG8tWUjCARmu
7rL+bvgjMeWuFfyJ2LNET63TIQQqj9wjpAZSEKCP8/Fe/OrDcI6wM8GDsD2u82P04ZIuAHQWJjkj
i20fFsln3clAgVEmrZ1rfW2WVXMUdd1Z6bG4UULEgv5vpe34LOQDN6MNRsOG1xxlf+pUg3UdMewH
ZUt+N11tHw7qM/SOtM4LCMuf/lZUmDsdIB5gfQLIRULTqOVD3I+r5Oktm+/FpK/6s/uBuaNQSnCv
ZdHM3roQGkIgrFt1zNWiTDcPHVluemCvbfPLMqX5GfdhuCGdEmLd09r2Z63wD7KITFux
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
