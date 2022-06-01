// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat May 28 13:35:32 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.50945 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_64x1000.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 49344)
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
