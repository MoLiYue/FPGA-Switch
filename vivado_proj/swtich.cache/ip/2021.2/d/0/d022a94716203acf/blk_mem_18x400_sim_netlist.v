// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue May 31 15:01:09 2022
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
