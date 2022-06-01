// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri May 27 14:19:48 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mem_64x192_sim_netlist.v
// Design      : mem_64x192
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbv484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mem_64x192,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire ena;
  wire enb;
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
  wire [63:0]NLW_U0_douta_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.356425 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "mem_64x192.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "192" *) 
  (* C_READ_DEPTH_B = "192" *) 
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
  (* C_WRITE_DEPTH_A = "192" *) 
  (* C_WRITE_DEPTH_B = "192" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[63:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31232)
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
