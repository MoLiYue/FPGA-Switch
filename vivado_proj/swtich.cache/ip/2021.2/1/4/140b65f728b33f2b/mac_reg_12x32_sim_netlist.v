// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Apr  4 16:59:39 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mac_reg_12x32_sim_netlist.v
// Design      : mac_reg_12x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mac_reg_12x32,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire [0:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_INIT_FILE = "mac_reg_12x32.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20064)
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
