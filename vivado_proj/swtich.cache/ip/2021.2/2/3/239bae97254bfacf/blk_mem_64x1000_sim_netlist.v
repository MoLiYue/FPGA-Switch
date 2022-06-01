// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat May 28 13:18:03 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_64x1000_sim_netlist.v
// Design      : blk_mem_64x1000
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
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
