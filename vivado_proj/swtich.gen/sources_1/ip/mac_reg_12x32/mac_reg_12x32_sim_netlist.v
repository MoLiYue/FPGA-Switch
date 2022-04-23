// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Apr  4 16:59:40 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_reg_12x32/mac_reg_12x32_sim_netlist.v
// Design      : mac_reg_12x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mac_reg_12x32,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module mac_reg_12x32
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
  mac_reg_12x32_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20048)
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
