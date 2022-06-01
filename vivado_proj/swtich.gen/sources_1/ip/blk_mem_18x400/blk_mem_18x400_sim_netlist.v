// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue May 31 15:30:03 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/blk_mem_18x400/blk_mem_18x400_sim_netlist.v
// Design      : blk_mem_18x400
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbv484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_18x400,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module blk_mem_18x400
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
  blk_mem_18x400_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31328)
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
