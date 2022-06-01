// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat May 28 14:04:32 2022
// Host        : mlyue running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/mlyue/Documents/FPGA_A7/Switch/vivado_proj/swtich.gen/sources_1/ip/mac_ctl_fifo_18x16/mac_ctl_fifo_18x16_sim_netlist.v
// Design      : mac_ctl_fifo_18x16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbv484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mac_ctl_fifo_18x16,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module mac_ctl_fifo_18x16
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    almost_empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [17:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [17:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_empty;
  wire almost_full;
  wire [17:0]din;
  wire [17:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  mac_ctl_fifo_18x16_fifo_generator_v13_2_6 U0
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module mac_ctl_fifo_18x16_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module mac_ctl_fifo_18x16_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module mac_ctl_fifo_18x16_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module mac_ctl_fifo_18x16_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module mac_ctl_fifo_18x16_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module mac_ctl_fifo_18x16_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 79888)
`pragma protect data_block
VVysORw/xk1POVanrKD1L+ddZwHlOiW+SpevlCa7PlXwKxL8cgl2lASxR8YsNzpCS37FCcUhvvtG
GrNVBwEa0MPXDgqzIqfWKQTvtwgNlD3xHXrJyxdtaQSZ8mqBPvRb08wfRbWfJflYeMBk8ycF/jcv
njf/sErGeyLfoJqqqWgmnm9zfpnI9/FQzfXxYMBdbu160/OnHtSVZW694UljdcpGVBaEGlDGVBok
MbzqHgYi+I9DOrB5h3eykXl5geIfAgspbkSe4zTMPEnfIH2S+MOY0I9TvzBWiWwsHosPkwD2LbEI
/512NzL8eTJ8mayNT3wQmCPbfs+w7JIujPsxtM3r8X/4FBWR04baJSLgLukpGmBLcOTQ71rH5ASy
LKbUSDoGBhc1b05uks33OPk/mjRPsTZqtOTS5g19Z7e77JvIZAAWwujpgJacpXtXypHL9JSqeubO
rQtTEAn+1KkHtVx/dD+s/QMIBsVpnfxiXCUUUqXRul/iuMxn5E3lIf2xGVAVNbcnLJ9zFO6LZTOd
SXAjUqmz/hPnfMjuSOGhFxA9eJCLGJOdJxQO6u5mcoiGnCvwVbT1PmlQFBM9WzmYvND2IAbbUiob
51HpZlE9eWku9NqPC4lwTzlOiQ/pKyU7ESvWXAbUNJULXxn5ruuFHDtJ604Ih/lotCeknXXBHUUR
uU679jyleMfjwoIzSJnzK8Uxm63QUdteI+rhdzu3cVuK53tKl4Ox2FjcGv3vlbKDvByhtBCbSzc/
7lDGrLynJmfVMZ/cd2yawjLQGO5l2+HH49u1UW2DgzLQiA0WgxvTVcwNr8KhE24P5byAS1D0igv8
ZvguXlFQq6+A/w8HSTVSpMownulaOv0988QMO962o+6y8Qflb/h6H6+SvUbm+KK8fuSv2aEhLiRD
YW0z9cCuCu2y67/7b3ydx9uNO5i9vim7qB51k+iO7kwga1XhNP6NSnJOfBOfv4EADDUKY+XFBcTo
VoogoBDaRfjC/a7EZJeD43OhaK5wXaVvAlXI3Jlr5vQmEtyKfRvVIJzhW5Krehhg8YDEldCPUWp6
/ah7KXKqzArn12dPWyVo0xdP8Dvrm4prYlpGoOgitJ5cpn5pSWptpznMwhatuoUF7ktxC3L85Tkf
AqQoFz6i1veYfys1/bIOD/pCHomRQak8lbBTmegckMKk9cbETT85PXEpKOVtgJNycxnPEzMGaoXx
N7WtOXmuPV1saY2KEhJQ7QrrJRJmZtXuc13xd66Bq8msa27jhyMp/kYHnOP7pfPbZNyju1sjZOKf
rc7ay4suQ64IG+iaN2j0V1CuMmlA9Hy4rN2i2NJaxfRgOhhTFqLDmsiZkLWDt6OvFHoogVImg+9o
CMw6LyHQlh6jZAJrV8BS+4MGFEscks+yEB0H+7iwxzUVMcqwak/EQlMplqvc2I7K5GnSBrT0mQFF
Vz9cQCb/fsw3e0uzmxDNIFwTPhmc/b7S8hhrUK37Q8xMg0MbBu9ZJXRZJp6qPhO4X6SF89iSmJty
vAMH7iw7V1k+D81S7YtPpsq8d/aH+O60hmx/JI+YGWUcAsoDc1c8mOcB+KKTjDTQyMxiqFnGXk5G
LRpt2KraVi3+3ZN0rRx7QLZ32fRoVrbiXiHhcL1OAYKMpHxqTX3qrCZfK0BE2hBjOE8C6SJvtWoI
GH4V4tOABEcz+8ZVz9Lg+CDHHDeF++ww/VOn7L+P3lLSf7YwVF/MACZfSTgJiXQ81CVc2uPTKMQm
JsdedaJH+IR1CRiQ2nm5tF/5MKFcZFAKHgnv85ukep+KMdGFdGCkWN81XmH6r26pa87ShBPXFTGM
beMHj+L4CwM89LrPyFcE2v+52HbXEodt/dMzd9sdvIhk8micsF9LwHiw0GU4EkV9bRafzyaea6af
6Fb06FC5QaV+Dk0wSCp4cx4LlBp0a7IKRvZJQU8/slXnfmDUItV2KMRCCo0lGUkHGKD6EZug5fdF
hDF2+B01S0DRahLYtJAz4JbD7WYi4FfHkQvw1SV4CXMC3lSHbvcy6d+x1KKuoKWRiBmspN7AQlFI
F99zfqsNtdbT5NsCbfSMesNsVLDagOzcsA0Awr9BtPePG0H6uEpLu69ApagljumIRLLgcbhnQovm
csl+guPJ7uKgxhWQA6H3z2kxIGdChRkf4f20EVFL/ljhO7SgVI3kbCEwlNRtTICCuMlZKO3LINcV
JoyFZpryvqAfhcyBaV0jdXFJB/YaEvz7/LAjXt/tvZ3cNLNilvmcYFwIn1/yZHLOESGpLd44THoY
NrOebaYwrEx62a4i9sgLK20DyuAlgF2rfQ+yySl0qcAdlYweKiDpRwfD7tTWprfRAjHmk4jKwrW8
nMn++UrXLcVBgBIZTN7qhAT1vbVveaKss7ecMfcYDM/j8QD7daaSmyF7PzcRLguzjWnZnc7DGAGS
ITz7JUcEClZiBZbzX2A6D8ETv8N71NDgZ9CDaVHNc/RZzB0ZnClV++dX2Db9DJ3OySHIMPMIjyDZ
nwm1aFXJGhmN/hAvu5DG70E1aEVDlIJYA2AYKM9cs77P80ceXJconenOOK/+FFI7RdiEGHnfsbGp
MixqJ2PGRvjzotQJwjh+omqHj89azej65ZrnAqcumXcfytGNJLW1bIqzU4/XBWHclg1JvvzNbj7h
rjZuXbNfuTGtb8+dhzkXytqaIJNMhRToDBK9jT1QrQemjoNwCJSgUnsLTgYm04XK4ItFN7+N6Mxu
9X460MMg4ffVz6xfmU/e9hkKApcdW0V+RHshwHu9f0U/SiwwLwVlCuZxSPSkIqPmsZhms9srkOB/
Zhawh3NNdK8nSEUPaKFVDi+tTe5nEfFnQMILFQUI1+WWa2xz8YtW2joJST+cvj2rdTt5qLRO4u8p
VGnR75RwGgWIr2e/ZSdS27V6n20QuV7N9OLnyjyV8a6JDm+XxP71ztXEPGTPg6BV4mZc72rek3lR
z6qjITxWRVRslmrHZRvz3soAw0HGILGsPONWZLaM8bunPog9qeeFyhwP/ynXJ7L6oJZWT7ATsGUR
mn7jvAKwxgL9LLNQSfmF7VB11jB92mGOmHktKD06TmL4ZXmZ0XopxfOkDcJljAOSJaz9qt/kbDe5
1eW8xkUCICMhNxTnx4C67XCyiS2ve1BKXG7sNLdGv6ib3Ud465NaBiLSTZGeTqBkXGwIr5lFsyEk
qN2hpt6MieFBbRzQZk168WS3WimHVmBq6C3ikfQ8R95dKTtO7Nqnowc1F+qvg3M9u4FIB/tb01HW
z5I8ck7dYAu2PeCCjMvLmwL5xd7HRxPOTkusl0f7rCy+ScHWlaoooD3ea1v4QS2UNh2/kPLwh99A
5MvoIcjt68lPd7m8JLwjnbOHE+LWXqJfniEDi6SB7oaia0lOGBvcOfHqjPBSY4dftlOKEMQZWb7G
xCCc1y0MXEbF6DS0lCbFRMyGQzvhujEjcPV8UIiDH4n0TnpSEKsW4Mgct5ehIlHCYn3Yy+aJDF5o
NrHlzZv1JIk1xliZPfs/KrSk3KrdwTFN8PVkw3vs8Ln/zLZAMKeo8gvlZM/mw58TVymiwK//PGYY
HoLGWCzYH7YU+p0XXKsIenhVuvblKJHfiesP91fMoUtcC9WVwJ6ZAmAp+Ky9fC0MZWrFhCJbm4ua
k7ftQs0P8ONlUI4WV976zQTP2lkm1Q/gsP8LJIdTbZfH4ccG4IH31sjPp6cLPyLUOcqpr+Uv6zg/
JohptHvyYBasJ23wdWv3AeCBJddmFOy+rLzOBok6fCBHRtyfLKyMCnPyAUh0bPc9M1ZlLuDQpq8j
1n3jzkW2Az21+62D+3ScNL3Qxl7NAEZLWChqI0DEz+Ei2hNvxwNSUSERSy/XdHQqlphfzR4Elt9U
XJjIYbq4ZUAtd3kotDhAG25SvnrTzN4G48cdq79y9YnVjQORyPddUJ0x9Wj4vWjCWnAHJ6dJJE9i
cpXc+AtQDC/QDDsTGIq8ZHdeDjKknu0lv0rdLsdUeqCe+Hdf1geEB56p/kJOysx9eABe3+y6VgZD
ShaldAvXLOrIDFtvzT1y7AveFYx5t3kEHTI2KHOXuzBISFhD5JyyRxQcNFW2RUa2u29BpEuS79Ct
d07DDOnZdYXtsyw84GcHjOXINZlD2NwgrXKIG1hGu3UWNaEC6h+xv9LulkHRHA6zu1E+W8Q4GzlR
jBKxP+aCXQuXpVGxoQiTW5W5ziYJoBNOmKJE3jE8hOjlCwDCDsfVTVqkNf6mGaydVXhJ8vAqKm3O
4RAmNjXutuKg5ttSm2KCv1KebI+BOfiDy/Ghj/DIKYN3MlOKPmUNFZJIt6eyY0jOqmZFQmlrdMqe
NGWMitbSFfprae0GDjvTIyZKw5dD9ePTnJp1I7lfXDyRy5CtNadznBo5sLzm6HuWZIudE8mERBVK
RsD7ns5qBS4tf2gNO9yb7o74iClg0Z4IXrsCCCsgryJySIi8tClMrOMwy8+q6jTjjvqG7LaLiGUV
Q68S2KY2Pw4A4ScgcgUoA1zlgEfBCUUVhdeiVtTd/LF8/hGOvjayypar1iUrm5EKZ01Cv4/ePfSM
ZsMY1nEbu7iqo9W3lnkXVdt1OV5ZMiHgZLj8QrIbWxr6cwM5BODkY0FszlF0oGtAErDrEBaI2PzN
jyPan8oJjp+h+h7kPyVQIQ4kDvKBwMD2O9K5ejOPM4Z/juF/FDJ+x4n0m0Mcftro6I7WY/t9RNS/
psgiBGff0udE6xZ6q2j/RwuZCE+YrvZRz6TzjEUQUD/1H/IfKaGDBmOqH9pRikSOFtynvdOSY+8P
Lcm41i54PvHfilJYX2RX1HVoy81TrwLIQRbcZGpWXD5g0Y/rLaLHGJ04JpKIAioi0Z9uNtNdq0Gv
ygMoaK1O3ozRmewE39AWjZhoS+59m2TtrTk/0k7z1GatXF6MIKdaCZ4EMFahG1VO/3NXBYz7ax2c
Zg49m+bhZBEvi5QTaUReKF09CpBz73y89dW+dKPG2Tqbq35WF+VcRedmdFK2ZhMkA36H3IXGNIHm
ed828dsFPSHj0m4VxOaKTVTFTGEHVeXPQrgykNZi1WvQTDnaOE4VNwlIDd5HWqNgwqAOGwvFrrgs
7+DBbzcQcWFR9MqRYW4yJ3quXN8fSQQnOLAkVIXiHIPtosDScMFCfw7weLjJbi8aVATJeavJzfYD
nGeG5NzzeJ7vIS5IPjgf7yoceCKKeqQg1MYDMrAKs9z8qwBdaw5l4vyV0NcZCXQyjxJq+zpbV+MT
1z5z09XNyivV/jlhTh/nTBW9O/jpmFCBIRVKwtQ9RS+RjBaU6u0TWtHymqnYyj8iMJ2j3sDoqiSv
5iTeP1yDFf+6b/tOgCi75ORmIFFxq0VJouibhmyIU+r7w0GKPClT4o2IWSiBlslryjsYkUsBIMWr
kr5I9HxsrgllcXK/j+/hXKVI6RqT4tx9RTtZbRFHSVann6F3qP8cLLgST/c4Wy3WG+4JO8DWPc4e
RmzYktKfKwlOcMolLaDKiNVgKow2kiIVT31GFn7Ml8mr4hiUBFmRu2E6e1sdllRVtVMadeWpJiyE
NHkpDoRNhRjFAlsaUyKqHLqjwhU3GTpWcgNTrZNvclsC0Htd4VqmrDTv9cz1unLOVF5Z+J1+o9Ml
0tqrO/iuym2gLb+bG1mI7S6M5Tygu1JHtEzoXps3m7c31/WEwPL2l13w9eTcFiyCDujGb4kDVBxn
E0MRbtxOn1OhQLFdP/qOHJ7LIHgLuFaHFSfKT9XkGeic8sHG1veQ1HMS4PoGdvgRm/SFvWVUx9YX
VGlkmeYSZ8uQi+Y/8CZpSNIVkGeZCsL4HgvAsdQ2V1laR673Lv7wv2iwNulYwBQ0lWwY4VKw0Vq+
ro/gb2dO2c7rL/PUh+Tmk67+Wqy6Nz8hEqN3eZaJLCift5BJW1N8qhI3DcaZktid/oZoINQJovQz
8xoqey1uQKTsJM1wM6G6GJlyu409fqbYwS8j+Dwq59ypRDGjVS6+7fAtshAkHXiJT+mxpgRnKNBt
DdU16VLojQ49TD+Ml/S3KlBNAraFYQr+pNGt8dAzOqTnwolxa5M8pAz+92CkEx2nfxjSIjO3d61h
zAK1FExBg5BQELAuKv+KzxrNGhiyLz5pN8kvQIecQKFfXQsHkkuhpdHMhswsRpdVjKm+O7ZUoJ/Y
8btrNBQIbhBXyEEA4W0gesD7vxljZwhguLALZw2C/Ev37kPImymZamtJtOdIE0g5CljXCTKJp1rl
r+iHIwjbD6d2MfOx67JtRQUbsVnYBU6ApPZbn3sxNNN0UqnecJJVTBxPL9y3FCd0eWVymPDsE2gu
8rwc912sKJ9XXkXGv9gOU86Hglu7jeIflVX+kpyovrHkvp7KHxmalKGogD5gwhDoqSoYD+9Lvij3
f7kWEYX8omRoNZTgS1nML9vAvh53X3+vPlql+bf9Sb7kYrPeXnPP+LDtyZt0oBx+9eNAF2VU8JoR
i0EMA0NlI3UuCB4Bpe57BWm1Vm9fPeCifsPsA5aisgKOP2mzklOLfnDCaetluPbtbP36umGLuA3F
ycFQ1pCECjHtO6vlLuHU4D0cKwD/NQxlDyK77UJcm+8lsZ8+qCynh7hXJoRHJBdValfznI9KQQxw
2X49hXVkOss8KYiEIqWqD0Z5gkjYEl16Fj+Puxn3Vuujcji3SNL3XcdWFkRa369atJ92Zy1dcHyX
hw3TGAnNIc8mOXAZcv0ioZxl8ywxVcY/chfkuYAIYZ852mzf8qSwWTSt5xXoKEwNRe10tAPIVqrM
GaJIWDabC/pgW9/aJTtzqZW0TnKgRZcj4cR9oOpfxYLTlKVNvcngV0rD5thPCggK9LB3Tvmd+yiZ
5IBGT+bPkrL46pwsKRSr6pRu8ji/ZkXbPZ3pHsnLHn3ch9Te6UknGv69Pwst9sf8yaf/sq4q5Iy4
RRM8IgnvVcRKe3V5uViBl4kajfEsDyYrPRtm0RA0zyg0N4S2MmohwUW1lRa5PGK3rNSst3k66+VA
Q9CHd8fW/oHnt4S72RKeQadjao390mB1N+I4n2TuGUyfzgQNwKNCPl8DUAxL8+RdnHpa9Z0ka1Gb
YoPhAkrEpmFhCthvb9IwgoCh3uEjwJsawLgH27FROj6YeePjUsa77tgdi1s4/1+WhhoaDauJ3eyF
LIVXf2NiPTk/Jo9BV/abA+nI8j/E2Y+Y2VrAXzj4fTSTSZHbxoTIIO0x/4Mk9lF/hg2xd9kY7nD7
+pypacuGTu89z9VnOBZTv+0rQ4spmrpFoh9nG0BZk0qf60NQIg/qeK5cZ6hWPn1CLSMxNsdZ4SbN
Jfgszts9i775Kkmu8TmxO43qLEjgygMKJJdEDNRCxxRBoIhRKk1xac6kh0t7rkfFGxfwzc/ZXnPH
F9DHRXXx64u86+hN4exBeCvb6I6FQ2HYeITqiJmkYr6rdgsdxE13S1yP1S+jygYBGE0vo3zdrsjy
oss405dSi+0Ws2QEEWtv2ShtN/DrIXDxj72q2AQ/81sXVkY2JfeYweMndw6h/HlLBXLyBegdnPCz
SfYEGepaSqEno/BFVpqEJ4rFdyOy1Ie9lc7JAY8ZsydCKlzZdqITJbMlz9VmLz1kfDmwAzkyAGhH
cjlgrKD9hWrEK+PozxMGMBdY+may/MGpna14G/G2Qe2Qm0OxXUIMiPN7UkJGYqOzdOc9xQmg/tFK
z0eO9L2BJsr5/KdonjZEYorTwNGjJgiglxG+v1ZyAyXqi4oWCfsc73L5ICEN1Iv4olAdjiJMSoWT
NBwj4CmEWDom5HSnDZ6An9BkA0aGjgMFD5LodbCUG39fdW+r6QFvXp40Dk+X4N/eoy0+HigncS+o
44wh2sSgMsD/cEKYJ2WT6Afu/pGfTVO+hv7TITokZTF+9nLGvpYjWhIy5z+nE7wWbp87bC1K7+uS
Vw0bS0nDDnDYGWeSaCxMdcDgtNE8DfydTLrTv6BUy1owlMAS/uaxkyDiGaChb8XiBGhjJVpO5D3Z
f0pz5otlmnEO4SK8I6qyOoUyBqCKAGqKiFySDtYroEgIo1wP7oXwIIXh8Ikg18flTqDbO9Uaj3IF
1zxRo/ZwwoD+s2oZ/eN9dcjRMQNKXBuql3Ap2Ug1ang9j9Pv4VKRyPc0WNYArGt0LVIZ6f9JCxwm
rDxEw8kKwsIMl1zgULKkkDQ7qKJVrrX9NfyiWmkljHj6INLuYYFNWen9a75cxou8451Hc4Qnv2Z8
wPrcoSPnPt75INqTiP2LwJDsYsqczRgOZ0N2x0tdWIraoD2TL7YcmXVqfuy9MXzGN/m8mrlFFo+m
28nYLKRKsAW68QuQyJAKYYnVTT4zFUYxz31hyk0yq9UC999urGi/iKdVc9prmO4a1PaQmG11qRP2
wIcm30Sw8YuT4RPKsQR6PPveJ9/6+RqOpoylPV/ubAWX4eL+3l2/sEDndOoJ7GR5Bj3CJYRm7y6B
D5WvpbOtS0n7OPWkmnlQw6yP2g6COZZ/EuyTocXXS3nQBcjaIyyJj4o765kctCTtmsBsg+uxIEHO
O5gY7Vd5N0n0bnbYo5LLBVMQIdOxKvZD85NMrm3Vz4xK9c3H+V56ciYKl/xfRq6BbTjpRY4amEE5
Hvr9wpl5NAaX4gUjb3eQQAji+7Dg4YuWAH2l+PTJJrkW6IfzFFMnwlw6zRcxNP3IQPoNzDPXSamI
cjHK/gV+lV7ppXGlc7m2csD44SPaTJBl/yWKfFxuSiFqUQkChSodkaHzXGfHjxEWXbGSBDZec1iW
6TlBQPORieyCoVRI3p40LmP00805hbDev9B4YaBEAP0+q/vIcffI6tVzxPd2PcCvH0BVyrIIF1OU
llyvHGBtqqi3nElEJbuBIMBWjV14YJoWkJyFCdY8Jj1bWXszAvrO18rj8DOZyr3GfU+A1A+AUGGG
WHlXGHtj/sA3SHRMe4iNvl8mTMtWdafjCGyVLi8Z6iWQjmdvUS8gfN29Ntz4uYjGF/LZU3mWkVFC
t1DkXzXFD0gBLG6NKJvd+Va6gocKqI9ko09vupHDcDvZ31QifKYrYoDycagE3UKqEO1CWpoyj9FJ
piwJnB9Jsm0KLoDcApKB/YANfdDRR8AJau4BP8CmO86WjiUunx/TSjkMXxZHwRySY/D52eafe5IX
NBnm8a8hpqOo7/mQ6MnnH9IJ2+RUbG6tRyUHBrRgBgLxt6r14ya7guvQu5MvnriXSukq71deBtXW
YdKOIMigmqnjO8UDOmMSLup31wJ4zh8UEgVMk12uJRQ3guPb7zeyhF+j0FXEVG9/ubPssgyWnn3Z
zR00Swv9kr5uhiIKzoCkU5IwL+C/CoguqCtX1OJs+AHEhLjcXuNkC1m52uUapM24bZ78HAaprjeq
01pnzyuz+QNn+Q8jranPUCAzPUs47zIE9t+jjg+1Qh9l+NIvov9FNf69hpWkM9DZXKn3JAsH1a/8
QwDqybt3iGPHoYT0SB1uKVliXAghWZf8/FGCIQmFnNSAzPrEjDCZwiSPNKXphB+dpJ/rutNZiOcZ
iwgVlS8gfjd7hM4p/AvWX724Si/TYmeRRZQ9LGf2XHb3ReHlUlI0hgA+3h0P7pdT5+R6BP9GlR7Q
+iyND1GzUXYhRLK7d71e27gVJXc1qX4aH2ZzwSFzNNEqJkn5x7DP1tbN5JCQ3awVF0fWfxG73xmI
PZhgofxPUoC5N+m+KCuAc0RrvXN+pLDQ/nmJD+xx36GzmpT2Ohou4yjrOfuJPZlu5mawit9XIWw9
aYzKMV2QR9TJVi21joq9PDyir8PTTko9iNaP3Y9C6SDrsW1bFtvT4C8mDl4DZEfnPK03R1W/np7R
+SfpgpP5YbeCbBsFLE5wdw4tD2FDYIpmhoBYivkfUqksMo0L3WjWjmvb+xUi2+JIeWgFToehjss8
V6LbIhPCDqD4EvqmhE2fvg/AZ7cfRa3Ch1+kXFO6fZOvgIh8lix1kT9KYEgsMujcoTw68lh2ymru
G6iMD7qnj70DJfg1pmYIAIKnvXb7crSP+4ejPqFY4z03tVWk6TU4DgQWSen3ta+mprmCxsBn4guL
86VG64UZPqIdtKfhh6gmOaUFRyRhrxsNrJQgBvyyXIcNTMyQsFRksATcMUhumxze0gbwTAxjoKyK
j6dJVIZySDaTzFketJ1HEG2d8fVVTUXM9liwfTExlHqEmkB8iunoT7n9GcOsvva2mtW8k57DwB59
y1HhNHueZLK9SH4uy6XCsxleQLMHfXIZ5JIgnHLKUL7dhx1GyAj1vNbhFqeFVc2CvCXcSMdRy9eV
eZDvsq2XwuwjHGYMB+ljrzpCtf57QB5gcSxFJfDaH1cAQ+P34U/N3CP2xA4d6qv9V5o0Auae3MiS
KJIDYLmACEZl57z6BWVghfI1vwOOLJ7wuv98imTgkDYYbAVf841S0eRbwxHkueXFRypExWd/FaLn
Yw3sccjg+uQvav8LhCJuLkzbbnpjmAOw7NK4Xet9/Z+v4tGxawgaBICNHhEoH4bscyHsrctqD7kh
QHHTKJBGml7e7uBAeNPWc8jEs70ZGWSSt/bZnI2gLel7KwpkGiT3OnJfN3hUIGErp5zIzmRpTZV0
4wurVd34Vt5nzdBVn2iJZ2Z2UFnYPCaZT1pU/JA69B2yNXPZ8nF2+ZI+SLYUCCP7LIhxcsvVcnXK
/DRUF6gQmLJSh45Ge6wMwRAcFR32tk+uhfVa7j2uTyA/+0sTaztrg0+i+t5VvdUW9NIzlBwsVksj
rdH7NoS7WHaujETKk20/W4q50N4bDdGGPDT22Zh+jeBg2BBzVgTX+q8i+LlU7xex5vnEp7caWdL5
8WhpoyEP6Gq52jYflJPNfLeXSQM2Aq8SYInrJWbR+4KEom+pTW6150fB+SNdkCbzrwtO4m3bMYga
A/PSQ2z4Xs4a3h7w3d+28ra+MPjxtyQLo5jmkpwA/lzsHn9xCETZfiKYcgTGeuADt+zdnUE7lkn9
sQh7BS5WSuTAUFQYwnIEPV82/S7A6Q12fLV7TyvMcYhIBkWg0JMhDzmszchfSjRVfvRWDCh/S+6C
8fYVKQSUe6agSSuHYz3wF/L8xMtpCFnOtnV18jEFPVUZkxQhn6l/j9fFiB9gEtx9I+fVRDyJabi5
w/1TpcEAKT3eeQlXxI5KE/JAFVwGIzGthmMScoW8OARE6klBlYWdPbfYyhyERn4IhEzpIyOzKA6L
Cl9rmO671a0PuK48Ykl+EWJv0wkTwQkHwvggMNw39tEoBeOkwm0CbwwdIno9FTtbJT9c6s25Ey+g
gh8Ayk9QDDF0jgr8V/UrTayd/GHNoa5/HOavVFAdWSQ00N9vavsJGetuApFsYJUIum+BYhIinc9L
5pk6C+psfHhX93dHDjGbNe5wbIVlehKGvSfXYwazihmGxcmmB6vUPUmnS3BpicAAqCeT7ac14w4v
Ud5XphrYIZLdAgLZB8KGjPKKqOLR/ygH2LQKzf819BxlEBhvwpvsEVhGZtCQs50vh+IImndSMqHr
/141aAre5mUcxfYGp5NpezjZPyE1Tmi4zbJCDFv4dguInhDlnwi4oyDDGhmUiFtt2BGTRirbup+o
tPaOoUnWJxYF/2DYJRxwC02gzO8K1ajU4+3wjNEreDrhJ+NqwSBrZ9MnkMW2C3srEX4FzzMsBwpn
ieLACJxatdk3p0wgFBiyQlhOHMdW2FD9MoFaWzHuaAKhetgBv79JwPs95bsyE7lulOfIoCg/ojrz
BNNfulSdofRhljUplGw3HPMtsoJWHRIuSxSTHFpsLelVOzoewvdtXbtRhz/2yixEI0gCOf5YigAX
CZWCPrYvD7ROZi6q2aHfoBrumEXFIVpnCtIq+bbxa1LJ2+cmQDqkDC+mshszg4q52B6z3dgW0aQn
XZo1257kW5eF7Bte9U0HD34OO6V6w+Y1oV5h8aPw9G0xi2FgJO1Z+s2H9tdaDZoVqmZoSHdyW1CT
e7QRAP3kxZ5c+PlgLxA5q1r7HxmmmHeSM5uib+2aZPpmANvGebb3bQP/Ky5ZbUeg81qvIEOhYfGo
CvKqdQSjB0aJBWqp2M4QMtkaM3KZUR6I0ywG53GGOetXCUdRKkEB/PQZnfyZV8Ss/qNhRBQVYxun
jB/lRcCZSd0TwSZg4wnbvkTWLO9edh5XbuqvyPtx999oUDFdBJvUvK1Mu1qtVpAVawJVaJpc82n7
HpMgXVw18JG+8BeWTf/vKkETYcpRtjeyWSyAoVkT3VR2HIX57ofWyDL/G9gPNuZDVsiZhv8ufl+j
njRN7NcYAFlMk2pTjNQxF5HJDcsyH2jzauNeX4bmduKYUunLj6JfspxwIePn4vokNih39Kp8SOOi
SQNss8fiqf8kLmOyxsbLLktHmMZCgiipdIuRqD2Po2Nb+9PI+dE8kcxPIirYzDy3X8myVSQXRqSN
FnshopuEjU/Sld0ZiQF2WsuuS5hc0SagpFhW6Ajv/UAY8kXGfFxyYMFj/t3tgEcVK6ZslNdOvMCV
4e1Cc5AySFZ/7fcfcEXulpRHs+aAbOlVAR8Nwr0H9kND3XxLlxiuNbqX70L3PECAidGYuVbAC10+
neA+PnB8k5DT2kYCPz0eAiPlGHtv+tKLXgh3ujqcuQolF/vAHZPyUc/aus5WH6MEtW0v2FudomPJ
pJoF8E26/aioVKze4flZtve1+XqmMruD0NVH04/P4WCQqoDRlAbpi7YIy5mmxGB3HIEtUeLU69cI
tz54EnvGBzsSrzNA5p/yipV123EUhlBI9Y+a8/gV3rAYtdv0qhG+nUIOmkEj7Me0mAGOVs6bHuu3
Q5yxMrNVLdL+MnU4TDZ7+DLFTBs1vrYIksY8tfKuDKEEcFrQ3HiTtZQ+p7/15Yze/yhANiV0MjZA
z98HXXCOHMknuSLQgh6863RRlp8h4Rh4K+JFXcGSTalsByqA7TzVEEXCSa+Q6bT2tK2naYsoJzH2
NGdDZZsxrwBWjRJtk+uteeyslI2w9ChRal0I4lOhgUvolsYoMz92EwRQtr6Nd8+7U3p4QpBWjvgY
9Nbem92DG9jTonNUT/+49neCthm3MF8ZiKPTuYDsvgu5JQa073PXcQlKBL9Jq7RXKGQ3rjihZwCD
T440TS3BcG67b1phd7DQtpgzEeJJV5u0/mtrPm0pxihRwQ1B2JyXdM1J3vGF2PSr35W3cG8BhDJA
clFjHR6of44lTBzYvgzZYWWRdMVN8PlYrMN7Dm48SHdRAvfOTKUFwxvMgd1h4EZzYSElzn8UIzL0
iKZjkZRKzpTKihOhduzK4/yX5E3LxbmxUsbMyJoz8SLeqDW6wXnEwSETe5dfl57RQjIqS6K45GCl
qq/D186lNGZtL4qrL3xuHX54yoShzThtLMQWkTyZaDVv2NKeN5ytbrVyTS6Q2Mg7jaWMRwxfq7zJ
J4TbF9Bqz4JUV4Rk/fIeic9hW004bjoDBH+IyYB9oaTwIkghcznnYJejL8Fzyxmr/7xNVOszWPaE
6hT6vcHOGFt3x2o5g1OShLMAEW/iMitHxJ77fP7MMw+yUmSEwYVi5ZC/hE3394HMLnoVGD70gxb/
CtVgYp0R8XG4I63EnmbQ0fFr6azp2dwpOa46dyUCvyKlrgj9EBWmj4KYjxcb0cq6h/5JB6XhT34z
tiGQvhp0t8aqzK8qkLupAFc3WJ+ViJNnHK2G0j3a8O8eJYj6F0gVt84T0UQYaf3xfk9/t4aosw7M
lIQfmAAiWiNatB2u1M43AgucHTEiOW3ElSYSfufc35fb4PK9GTjtBwXJADz50h+3GPGxD2ET/t3H
jOzExIOJgUYUkS6m/AvmKMqjR6LynCOg3s+gEaqUtSCMnr45CRA51sT0rSm8UzvUUHjnlL9V40bL
EH4/vikM+DOZ9JLCMKOISo08eKqkWXskHm/Bnn0ax5PbTbGs81qoHs7Sohi+LVpBGTleudaoIl97
1+h49MDNdShNnUuH3OxAhXTWouqzkuLZQzQASLJDILDE4tqmPNbeGyXxEQJX9zQP7AH5vjB7exkt
c9IE16nVIKvrdAOjaYiXFbzWjJj+W0lL8GUbjRN8irflAHyBCe2Qq+T3/3Gun5Y2y/BFgpky8jvQ
5xbTel3DssuOb7pDhov5FjUgcrUWRfiyZPA0ghzBDoigcS+kygdLu/+cVsjCURz6Is0fPZRUtDqV
xGjKC5FbQqxyoQJ41funiyreGm9tAxjztbF++v4Z4bCbtCxwIeqesPT4IhlkT1xHK4Jgv2ua/CZ1
Eyigwbiyq/YjIrO+G425IZUvmtmjiKGgpW1QWa1btk8hBEsYfI71+edDJr8LNBHHOspH0DnbKOQL
eCCg++uKvQuUE/fOLkWaxq2xfYrfpMjBCv3G07x0ppnxIQ3TwSd5E4BzbAgqLW8yeGwpCfgPmSR3
8i2yI0bGVKs75/UONkPGZz7Wz7yvxWL5rmJoARfs0/lzpZZMosuau+hQ06wavN1hfmAhIRdTqCJA
LZ12ukCNnhdAUcBi9kvPpPRslKKI7q5j+zjtjc2HzIMHlJ3rrqPq05tQA2y3Qr1CJEp5poDYkwe8
PpNLw5+8dIvWB78ZIXGL2P225y/VC0f1QerBljI2T4IE2jY+zv8FpW8I3aScLzcLtt1r7gMC0RFK
Dw7+V3ckL6GK5ed7g6H6uoSHtxY3GMSgPfamDkY4sRPbKm5Ahcl2cfxq3kKBEO9db3XzuHxqFEnh
SM+qF2rEITU9j/fukcY0aAULEhxt98YEGHujX4RhYsHt/FRl+ayorPaIl4glthP/K4LIkL9uMmNg
hsWqa2oZLRPEU2bhEpf0nMMUuKUR6oXVCvnaTDnE290y/JG0lcr2+8ewCpYYiNEmch+NBA3VkH5X
n+nBAA7YYgXiNT0T6EVPOf47t8/CWfOkJ6eZkX7//aqxUQkv2XN/ReRMqTv3RlBJKCrgZmXZ3KMZ
KKHlo37Bt77CkG12wigF7Rb3na0Ct795y1xb+qH+ohZMX87PWV9q8sHsN/pRn+9omRZhojT5NuY/
lqG40LER+23+rEPIkzh5nloZENDuoRpHZ0g+HN1KD6tRTBvX2dpiiM5IxsrhHT6qXMMTW6xk/RoC
rN0S//aeRVoaoprHmMb8b52kf2aQYmQVDjWU6tpO92AO7lSatJu7H/ZaMwwXt87BBxUEV8CR1MxM
VhZ4GoawqdwR4Wp6E57WlgKh7/PSkuJCXF7V40BK5gw+eh6IiiwSClMXSBQIm0/BV27pXI1DTSzG
AHFbhEAfFMdCXckfejNHSeY5jsfUOnkY2VUIk7JNqbDlzAmAkyTfvzgFRmBdbZdGdSrxiEGTorMp
S1q7hJCzEhVbLWCbb+lwGGe9y1yPPOIl+drqVAKYLbgZZG2p2bWpprq+8t6NBz25Fa333HbSCW7l
+iW574jp+f+dNDvjSPlaKyRvnye96G+4PrmPm7u/8bitjiJCKoDGh0BhOp4FPia9SNWfXp/i+hM4
nOSe3Lp7AXE77+nS8zTmG3wB3K/Q1ElfUG/ysJ6ebWrGcmOnI5qNFNq1vbJ/lhzAr5sW8w74HR+B
ZLKZMIv5wSJGXYEQ6SXycgk+jl3LxTzdTTpQpO/NyRJC5hLvsK5uBLkx2C8V3cFjMiI3oQ6+je5D
bamOsFOBc3ccyixAwBe/WP+Vmac96/EZm2L584ehLixLXMux6REFIKS4hVg0GVXpvFDN7McAF4+v
DuV5bgZIG0dR64UTjVea/uEvwakLFV9Ggk6bgJIHYHL1k8d89111ABbg3PcHqq4l5S0umh6r/yV5
ImEtDVBgNOCApWzmK91MbdgQ53ew6wV3xmv+bEL8/SOyD99URZjk0bBtBmOdf6EQ+FjQFwV1rh+H
aA6Clvu6r7kyAALckF2Dk8/PkAFFStWZnpnPf9m1uImIz6qLVu5jwXOmxdzAUWJ55OXgNBxYKNwP
sfsNiA1zjl3wyDDAxwpUhM1zklKzPJ1q7lSH/Rk3Wq74hFfxtWBGjr7dJpQZtnKGuz/RSP4NzCkg
ji+rJ9WDC5gNjHU4jVKqINPCDXtgYda3hnMNrAW+ySl2YN8QmIW42XATnwq3qksNf+eIuz1GrEVl
lVp3kiGBqT7VzHD+cUy2a/SupvsMGTuDTh4JP9CHIZO478ugQ604gQdt/RVgZm/aCDXF/qMuMw43
gEot8gbiO78KzfJ3o6RfGhcjTagyrC+CyAVbUMzZnMor1BqdUQ3rDMmbqIBev5mrjq/hW454J0ee
04DmEQbMQm2N7lQiYrVIa9LxMWxFC2ONpQIl/Kr3ohv8J1LRC9nFFvXhP1cTrVInVhy4dY1U9ghH
l+U0gx8b71euKi5t9AWjj5n2WIj3LDBdf0RBbptsYjS/ktdgHEDfcWWIQzc4nWuma4mX0HBVGxog
sVHADl+jdUFQG9v4Pa5SJLErZSFJKO/2rRGmjRDS/VgKHAB6a+DPnd+ynWK76I0n/KwCqIBNN24x
nDnSuCklOjFyL62iM155vqn/xMt+YYXI2pDVZUiYNFVebEbtHIGPYs4o+b0M/Ozxy1CBbXGizY/J
N58j5gIgpVHsZvbGgJC1hzC/GcO/xqAG99bdHSURO2XeF6zf+C2yoN4q56eZiAJ1SALNxDpgoJle
DG8GL1Lw9GKQQ/rmKB90FNIVAX1iqdMwqMiLA9OKJwON12I72D9fOT4LajZAoRxpsUFddKnP0l8t
Zg7MW3OjXK0eP1MpzXMIbiFH+zz3Uu8S62KfGk8e/IaAEwkpLQ4RpjYPmmeVT9weQZ8RjjWGfPmz
XEZBVYYpSV/b6D91/xJOqmWFCEkavk0Vt5bogeT8Q7KQvEMPDVXFyAQ35TluGundKQSHzTOk22gD
m0SkPiRzYbCMXn/2k4z0wYF37CQX9KPzIOfgFiXIz0BF7EPVD0lCAa8/1XyL0g0BS8K/137e+IfJ
WN847K23jgbUZFXjNmmzmonAB4qYY4Zd1hEjJdR/lgcVDnBXbS70zFgVO3ZmNvz5eeousZrCqt+8
QMKtqJgUk6qZZvIWrHSBOhCgxQKIF3eotnfhuLqd9SK66WWINtmUhhXrlStA+NvgfEc7TftvqLNS
3NfCMLD1Rjht8ik4TFgjbIRTNlrWuNWD91WYBIpgHIG9E1ovRwy+v9DiVKr014rxO3Selfkccpu4
zPjGvHL9HTew55e06/YurrMklTqWZBj0WbKHd+ArMZtHXQe6k+czfetdQUuABNzFskH0S+xPecfw
pHgxTqCkSO2faLPKSw3IJlHaSVdPkj9wzjSOqcWQ5lVOePtmRLcZQJFtK9sklIMB/5Ag3A39GYTq
XFIMlhgFkN10zVLFMMNNUtIZMnKeZb0hh8ZA8Ehnj3l6SSHSG81FgIJWeecYTeieDZn5CUcDl+R0
6Kf6x+ffn+zhUHyfw1whg0HnnPydX12tkwRvho3MpaJ3Z+dM+NAoxxQvzj5/aHrhuUTMbm57Oefa
BioJPxLGS80dH4NL7bKTlxL4HmfGmU8fP3ozCmJNInt/gGSfBoLFVOtv+U9HH/2EYNoaHjpfIgVt
zkEnkc7135BdxgFDim2QGv0LtGhQ55annN8x7OFFNbmlXIgl49b9LPpvo2SSK1sIYKuDDfYHl97l
A4wPdMyCW0UN9FLzmbKQQqCqI+FfiCUYJPPRwA7RgYM6hAIXQqdN/g/jSssB+XeQLeG7VeW3L8BY
qsLgzUjWgfYYB9ZP8tz+ONs1WqKx/iGaOK+qc/T681hCI0W8J7r6VAvuDgVfPrFQGpMTKxISUU1b
SiQwxUibwYRQTg+TNFEHdsT5nLq+15ePjVJQrDu3X2sJb+tP1AnfQtHY8MY6rMpvu25UQ2SDyE5F
1wkQd3Z7zGxfl7tLbWB3uELWplmPkYmo0cvl/HSdwrlsJ8Hw1TzJ78wO4zul1cy1MKQ9O9HdUojN
BImvC6zD3HQIS/um5aKFcyYFYKtyqW6rgc5D/7MW7on2L4BHTK5s36eyv1d7ZwWA/5CZFO2e/En5
zjRVr/5wTMWivp7FdT9rBIoWNIbhhn61CGRtcmR5G3lOBIrAs/bpNWsVytyqc8ztuU7dN2Oh8rx8
OG0iiG1G/3awXQfTLEHhTX/xWi5LKB0CyNmxDJLnSnM6X75kOwyDGJq0UeluSSIxU1SPlVwlAhiL
3wgfa8cGwVGSzU4dMhJW6ovqyIymfHeNQK9iRGRQAt8lUAqe9p9w8xnpkIzaPrJwOYDNYOO0K8ad
qPeN/DakAveUr6Zs3n1h4+OkUqz+8uZsUd7sCMtZhSkk1+LhBFMhEdTeVJV/YntA6Q8mERpXeBcG
SkHa1q7isiDici0K0sI/qPA6KfwRwmKXboUgu5W4lD1uWQdYxPl7Bbovgju971wSHf/Tcz8TlIui
Mc1Im+/7FRrmxyZD5sRC77gKjnpf29pHtkVSO0H4W/S7Q8wORBbbMn7kst58xqqZMyA/dkjkhK2t
Pxpb568FgpzlMj1TAByyUS6NbeVqZ1jXxJskYZww2gpUvAkBKr09rLufC/0GibvPIUfITL1Qtnax
/nGCZfuaqZFZHd03oBDZLotbuHPP+XmOen1mqLNxEUBeX7VjqUXKsk1wk9nYtEe5RD7apiZ3DFyO
Kk+RW2yEhlks9f10bC409hG+b/WOZWPlIK+fpYv+TML8rjT5WDDu1s6/9xYQcDpIArqw2DFm/vbF
ukqC70pe38uULJug7ugCJO3Dr0dc623uNFMHYuvQSHULbXPLdEk1eZdreBRkgyA7S2cnoWdOLYdR
35rG+GI2s+icgG/G+0b+IwCOrAqmJqjSQU7LN1M22qmwL0V7IqZN+UkvYo2muiGP5qO2AOlZZ5iQ
lAWiQlJ2YasXmPqvvAGybSPIISf0QwmrFQd2361vkXtC1b6Ya5IV/xI+D9giRP/SuGH3OkulzgAY
aO46M4Kc9uLbz4clAuZn/D/Swis+PinGk3qbyo03M6Xyr1b0UhlprCZHwwnALwEj5mLoWb/Y059j
MIp2D+iMz7rH0D8rqSwu/xZDsCyVf2YY5yMQ3s0LPoxqoxpbo9lW3jt00Rz/T+86KKLlTpHPuGJp
PjyINFBqmms12UJocZAjPEwVn4gM9i0JS/fcxmh0FchiJ3FMgFcyA5jpNsb5HPk96gcYgp3bnD3Z
0Euf+12V+ahQQJtSp25tulK9Gc2PN7WyFrfqnVp01f4wEBzh2vMoFB3UuJrHFvx8Snr/mBz6U7/P
9CqvzcmTqAxyGP8LmSIDz3BlPV5llFY4vbr9WDNdBw3u1FfGJDSEC7ZN5FGu7lr/2oi+OsjITnmk
OliHqBlOheBJLIcOVUZrvS/bc/AcFHkPoeRnQtpA8gUfg/jQSAfOIXmEodTmUsad6JuyVbqalQHc
rwik8UPlpEClZPT9gN8W860NnWyfoN51x/AZw4dgiY3Dce/aD6ozfS5FDpsknUiZsOtznvgohZTJ
71Hgn8e04fJC3QmEdwIaksVYqvT0gkXOMGwVZeecBn5Vawh2OVCYi1WnIBWzbCeEc6WX18EtL57y
S0vV3yoR9hEBeXKMUfxSB2RufYAVUT5eEHoOgsj1KxwXGr1Z3tHQdTUu6G9GYDW+v4K7HUdosIqZ
WkjuTqp5AfmB/A3TpdFnqSJBTrIxmAAAGWFcPT0AtG/H3uWki146zlA2y6zYfDPCa2/7K87e+IT7
iq6auAiZ++Q6zC/bLqZROLIHU2VnPKxFidllOtX8Gbr8J3Z3RGNJRKvEySG5sWGzdGKjxzpwclN+
fq0dMF/UlOwuU2YZC49gPkwGfrCSI2qjBh/nnJ+jLdkXBPE5BP6jdeaUotWmPvY9C/af3gzJy33W
FRRjuibD7krklggOzsL2soQ/PiTPSuBh2hCajxxpkHZdMDiABaSIKVYXTI6QEXNItDf9Wxiwsl8p
FAcOc/EdfQKHxa6ayQkabZCenDclNBNw8WpL57H44OuZUgt4WFtBcZERPCoT5MTdvCP7zV95g0PO
VI/JW5inVbYTeP1gye/w6zWuZMe+9/BPlrc+ztdrsFHbCerIVqbw55KBasIVXuWjbNkf7UjEUKWx
fv+Vi5ROdALoKDHOlM3QpvqXBjafiinqV1jMxsYzwMG5Gc1IIxGs/Dzh6pYYJjamEENqCs47GaWF
xfRqMqKmpAk77noDL3Vp+qwV4/DIWpA6YqrVsLIvf3BA4bbrN6NDQ5knoemCArCkpyRyIxiiZIGS
R3p8KLsIp4w8sN5TD5GgZEWThwHUbFThljCboY6COQbJXSohqUhef2fKsXDK9JfLXtWMwz6bToYr
mlz7TFHqFEMH5vcKnLNEjEpZDtFdaiDgeT/X4gy4OKuJORr9pqI9H+S8WVBYzqEa6HsxDi2IElSQ
zremARqFXzngE/iYyJSRzJ7NME1WV2U4avL14IZ128Ik76PaDiGpDKmj8mLzVp8qOypvNBIw6jpy
CWw6OzTmMeX50DUhT56RdMlTFAZYDQPnbIxFHxV8KclIDB7IRDcHD9CZ4/eMFh3Yo/x8TM/DnngY
jXQAh4dM3GGQ9m2FT1bqGdxLwV9BCXpeOsKDxSjGy7DSD+aEzPKeDHswWHpbxeEhEPt7O4PekAYT
+hevfW78XuLHeXX+38/lFJMlt7N8Z3tRnSZ+oW8HMq2j6aIYFGbuhYOp7AnrZzl0RwBo/uU4eoVy
bCjUg7PoVAj5RbklR84CukVZSct2KIgdNh8vGhhhJO5NGFrFTo+ocsd/WXz/3o1ku+p94+shJ3Vj
kZe4GDH/0BUTElxmScfO9BRoys2ynYZNo+baHRmN116O1gK7bLBQweoyl7/b9g8BfSu7tCXd2dFR
yhAlVi74rcE0/z5GqCpqJkm+2CrW3hsCBw99qpZrzZHS0KjqWXza/UKWVIhx1ZaOBfx+DpPlsB/F
VfeDVBYKWmDzHWiRm2+EU0Ymh2x8blBzgnvrZhxl5qMMsQ8dnv4/UqnV0La7Z4ODNWZr2k6qwqTt
lMMK55AQWHvjCYK6lSnMlkuixC+gmZUD1pNK/XC0b3r0bI/Ifb4WhJmCr+tKz80BHjhsXuSJ9Y42
sr/tPUDGHeMIRGUiTFuqCe0fH8BolpR9WMlieNYGmE1nWQtn37RYh2IJU+eqBFSHYJi/SQ4p4/Da
rmA2VhAFeM3wL1vdrpb6jT61bBU9kbkmgmjWJZzwMcLOr5hmERh1kLz3l4vKgenKtVOFi0mtXgIn
NAVZJmTpkKCFQCkI8u8RGAIfCQ9IcpJDfLI26RnGEtAS9M6VHEHxFD47XKSDTK3kfmVtkVnZQoTO
LGfYAZ1njW6A9lxqrRh2cdOqrM/57AsXmfY9DKXeqv4QtvD/VrFO1tn9CgQFivNEgT7Ba8QpifJK
H8BxgFmQK3VFvecVlUd2NG7csb6kdNFfYc0PE4nfY3lx1cG/WXMZ6h9Zu8II0Fx0BFewm8cpCriO
86G3mNZA4heG0239h9UF53EqU0HURxYaLIqvMuo7vrLbgKjmrA5COStZwLxs+/NzkZ2Rq2T0SlQ0
1TO59Zdc9/vM5yZQvlzyjc/nQPkxe6X6K3lfHwgRDcv9DQCckrUVINz7P1xxTXiSHS2jpnn7Oocv
Obh1ubvRMOQyU6Vc76CTqoWKMJp3oy1WuiWkpbjjZy6D+wZHBNzFs00pi4kedJApqLWqqyxBB69o
/2xaLLmO5MORZ5IL4NP9DzbC+VvNKbrjn+X2i+g2KUkODbiWE68ggPPGnEofaUnyEruEQ4hb5hT/
zDicI/IX7wud9GYbmUsrUZ37s74bIWjyUcyscZUA7S+f+uoeps5l3eJL/TjNjP4aJX99lBM1dLDd
p1CO7Z5+xzyOl6DYRDQEpKYLW0bIV+vy7H92f+4nkuQ1jE7bhLSjj3V6rJO275tiMyJ10O8Rw32C
kkVUR4dI5BprRskCYZbO+Ssfw0q5Xr/Bp4GgmjQtxYaU5g/5u0bqbkHdKkB9PfQ6MQ6ycuqfPZfW
BayNqS1GRXYU/KZrzcDrnCs5z5ODRkdfWT05R4bFcTv2cTRTjP5+SpPF/bpc8IY5NSsAlVXRqQnt
WSmUPWnsTnFUiCf9HkhUNnfaNCLkflgfS0zRg52Z1qv/IrHC9xX8mTuj4E2EXGiCR/MGUtPYCnag
CsirRKTh6CV9oEYsqysXyKyywhkX/vEdEdOxWVj3lNyomu9vBUFAd9uUJgE6mbI43O64udkGsBPO
xIx78FTJcLsL1TL0QHQAvwVOOBhY/ZuU3fzZ2g726JdoTKUgyomfKf19YvC4ASZnC89I4MHqmH6x
KpOXQ4XvUgsFrG5ym1MoZ89Jmd9MuT9jGzyzUdpnWM5zdoDqazOQA5jCs9RplV5mgZZP/zhrwCFY
g/OwQ2kwhNDjihjUMa7l3/SUqva+otpF1B1bGNl75+FmgaAiSAohkWwZT0VQMJfInVNSnESenQjm
bNxF8fI+vHYCFt3WvsaYQXDP07E4XFwfg6Y41f8Na5tLkc+E+YhU3SkZ7Bu+Yc5QlGK8pOPfZ60w
qdbVjSHqAD4A99dwxQn8WVxB6wU51WvG195FCP3x5IlWoHG2n+BT1UkySwo5f+CuVTw7k2DwREBe
s7JS0YcbjoKz3Wx5u9ZiITPElvkhnBIwuaGvHzQaysi6TqL/lR9ztL2RPuc8NoN4atUWy1y3ZJw/
AACR92w1x3WxbdC2gR9cpb/+ryXs/Y3ILgb3pmDiK9rW64oi11dMUwyVruuuITtfjxMyXEwR5Z5C
fjQ6C3B2DGMd4j182G+QOcW9Gfm4Mgoo2cG017ZO86Okc/aGpbW/XNtBMomrFiXkeoWMnmlAXBXw
a4Xl+TmPRXaT3NYtSQa3mc7jYQ9zyz0Bz6I+ND+3X9PlluOAbtaY1PMWc6XxfKdE2e3NdJVVUx5X
hPxUs8FA8a86VrtUDiFq7rrE/junHi45Nf8q7mOdxWxVp9gaunWmcNViUGyr4rJ+Zx177B3IDYxn
nFCAPT+YlAU8OdJujDqDnb3dtDiptDxwAOcUyLpx7+op8CK51UOfwTteLLnEdH+qW31VwegyQiRY
klmFqemKjJAy/EOjiocvaZF8fMDB1XW2c9XWGMT8kxVRTsGZoe7R3A+g9jj+DJp8B29MjSmu3/o4
/HWTCKu3Y+W2tKzwycwGY5SQ+ZzeQBaK7LPje3+hoDu78Xw3Hppdw4DmNVksa4JIRoLrvinDD0em
5tG5zzlkWcsW42t1vfomRu/ZNBcMwDCpE+OAfXMGCl6XslOdHsxcthHYCZQdD+1ZiHYt0Uxlgkbh
8X+beJ/4dzLm+7x+OI8Hk1e+MhUKc/7yMmhnR2tCKDbHwafalt0pit3q/ecNhJ+Hm5tyXVfBWkQZ
VPQI9kQGF6wLp96BHQmnVX1/NjOa8zaLh0Tw0DDDf72b1P93DnkFf3p8EhhOBb4Vpxre/OxbmxPN
jrA0w7mGkyN4P1lOdc/8ms8+E1MD5Ku++cXJqGFFrthPUcq7GGxWIraLFJ9HfOWE6KNvi0EaxYfK
ohsEo3camVwwT1+8d2JC7jXHyZr5ZrnWiHWPIyxAdld6GR+CJw9L0XGp236yGc6OzbO/hWZmyYxS
XhT1Ala8fOihdN1XLtbwYj+wjiRD2qUtgVbYNRgHdBHCT+dsp1fcdGDSqgzl/Rwet1Hzh5gtP532
hjD+otIVa63276+UuTwH9JGKc4M5grZCQxsxRgb66FwBcvKrAWoWgUgriJkMgn+cGW6JYFniRNGC
CzxcS8YdchXXZBa6F9L0H5p/f7uQ9UGpNbpZ8S8FvVrsIbFzM0gQYFTr+BI19BQMBaU87nNgU2b8
LXdJLouETk2S+Ww3+D5iMgB9I5p4YNBnFo3jtNQ78KKL4JVHM5cZg+egNAG891/EankQl8Um4F1j
iWXypMq6n3RUgaz3jFC48AF1qx0w+shexRxEIaHF1mmMaWGxFj3sDI9tSyx3i+Ffo50O6Wl4D7RL
62vFRALDV2HL2kAvzNVFaTIrz/a9W8il+WwaSn6oAjv7atn2miXC2p0dnnh2LB4iL5Bpn/hOL9IZ
BVuOLjBEG9rl64OAfkHhmjn7qgCG9YF4fjYS0RVrZ46rQfntvC1hW4subh11i1wty5YsjhlBFjTt
1q/8t4SnQ4L/x5eg3Y2dFdl1DtIfTL44sS6ML9Xv5FDoaG5Y073pb0rqU7izScKbKDj/EILsmrIr
Cs5IylqxiaB2qKu3o3UKhEXwOrYvcrSK8mbP+xp8tg2cvovRMCEsbYgGnGdOpe+zn3lB69pdlEr6
XXRBNbpYSuMp7Kd3D2H2sFLHPoNKnSpNjMJ53/wofg1f75SD2XlPqYtFukosjw6NHQiO27ydKU4V
60fTCuvPfm2imStlL3NfYVRo38XyKj6Udk5eXIHZuiPN9c8b10JCRMbIeNmqjQSJtYZXyv6DnRsJ
x81BTyqFIYbBtbbFpwF5j1dDeTcDrYxIxkCY8aGM0U+fjYiSDbIHviWLzi26BUvb1Kvukt9bX2X+
Q62dEL6rzfPyoP0nfaVWQRZ1Z3EYnOFjK72Jaz67NgLc2wCbHd3ilCpaK4tgv8EA7saSmjRCZRdT
rEE2Z7web4A9sCr86cfKOiILF6J5SGJYIQwo0rFtbsMznZkxiqV1q0w2jY+jYQ8HPJ9okJEovEj7
0rbs5dY8/G0K2KIc/dLaNANIdWPo8LUIU07OdrC9esHcUr94wxGZSbC3tWfqDJa/UDZEcZcYAIj5
noYwlWSF5euSulpoOXiWWX7et9Ge4OVrHiJUG3hrzA71lvAsYXaNT6hLT3jdgcpD/u3uwafwXmae
lcBhO+3kla2524fNRNgATBa/e3nulsJK3DtcN+6ryfBnYk7sa7P8YaAH1g/Vzj3T0LgTpCLFhSNw
PZkweHjSI+Exaal2eSW9Y1ojoaEoRVVKghHe+b453NQHLn/n/wRrbX1/cxyTqah/difOlxxPlM5/
YwP1IXJDVzNLcp+RFp+I4OBU2t5PCEysIf8QjmElXUkiQtt7+HL6uarVTpuNfbj/Bn61pPoIPITP
H2yV1wiXj6f2fEcWlvwjAhOIDYsJBk4siGk9DgCHBzfaIAPDp8rfqUXZr+/faEs00UXKA4eNTVk3
I9n0IoD1qL+88uqe24JJjtg5EqHi6Wc/VIeq1qFX6Yw4z0KhtMufEgCo7U0r4za/U4L1lfUk2SCK
Te0t3KjwvYoVaOlXXChVR46QPHm0kZtNmiYTN3qBDKv7VBnkR04wjvdYRTDs6/OLTE2/nN9bpHYn
jdhdmMuij4NdM8ybHPQ8vTRya1RqzApL7j1ClIFJ8rzmFtTePtWTyukleJj6acoaou7Zp4SP4RRx
Bo04A21qH4vhyAE0FZ1I2iPc0+5ntXQZJdDdP2kMdb05tBrfOIbArPTrXctNfT/rOa/a01kmBeez
FiV/LklXY9JFbIuJdk5ghhXaNBXacuBaq7evtD8aiXWOFGK5umbf/avkmuGo9AX4AmbpK4CFjY/B
jkjd5FMIAg/NKXCc1iAbyZT3QQrjvk0ypyZePyqA7aK0plk1NVWh7mKfErSzBLeGjGpQo9Gzy+e6
8L0Vb57xdOxvmuU/SyBuaeGVi8s8zrRRaIR2ksyo0hc0uzMCZuZfbwzPfNZapGqU8yZjRfJWxQBr
fqdm4/yOaBtLKSlwDedjHicLv4LUZ0dWWhcCtWoZRiVS7FKmV5Tfv5xHE52mq3TyfZ0Fx8T4Htab
ciJFp5mmvdTS7pSOab1zVJUotRdnFI8TKgBXaHVDOsav/x7yJUDxoFta1jwRyzAfeHMBvDJHxHLD
tFSrN4Yl5cGgdHA9rDXzIw4fNfktMJ/e9LcG2qV/KF2EBC6hhPOeOuS2nYUArkpFN+p6+Y5dRGXL
SHLMjwNLkPZLFYxcwRTUklLiWzcF23HguREJuYXxBM0aHiq6gDG2/x+AfcNf5Loh7QN6ni0TecHK
tp/JRghYF2VwOpMBkcm+6u1LA/7EoMwqGhRlza5SFuQYtAGFutO4CtAJq0dAW96g1ZzRD1iBzP15
g2UFLoLqlabq+A2ZrvyPEtX5RjGt2tYxAYkDe2aSOdFz4+abw3yoBxnR5kNhBqgSjdlT6IFjeHbE
f02XVyjlvbeP/mGx6I6ThrTpgWy0Q0pzH9hHlCCG0IYaIV2jRJF89jZ+MGJ3hRqyCVVUPkpEu5Xz
6Trh6fLyBMMLSZDMfbIdoVF4mDTO1ANCkMXArlXm+gf+zQ6180Qy5JrLqmj7NOzZ0xGY3ptqH2m9
rGWz2XnrrYTquuQxKwrHfXXR15dUT1Flt1D/q0kt/XcwYa2Yc1A/ltmfoVo57dMxjZ0/7RE3KpRj
ihzjwp57BKSYoS4C1z1l8uOweS5LpXVbXpBUPov7S042JhmZvMPgx9Sosp2EPKdPnTr7WOsv+O3a
JEzsuOs7PLPGf+kKBXKnRtY/LwUbiifWU909NjzQc6QCTsYaHF3tHcgIQD0AJfDxOIM0KRMFMq0F
MRydA+xC6lqO75ZF+4XIopdz8nc1FyyRvfv850K3iCmE3HOHjBnxSQX5kQpkhaND/CbZSmb8mZZc
YIxfJSv3UM2S6U0OrLZTTk/y5e07jRMfBJLqzoJ6BMhvHaY2Eeet88QzlNj+mZa41gHb7rvjCh/V
IUWxlu8EHwAf1yUYpzmWY1Jfv3v4Nje1mVO8I5rrApakS0+WI0DPhTOOiqwhTymrKtR3C6CRAPtY
PH+GvDBlluSCJTBv4NkROI9zY48b4LdZHUB6cfaPx8qWD7KqrB9TXLlLNArcUa0cddCQD1dIwmEF
81U/ITlTQe9D+l3xrWADPru0rSAF+T7NUHqBR6ByhSxkGET7VLsQ154OwPuf4dH2ig5wBGXDKJfr
OeXEF3BBIzW/WDCwDKzcpDhit89xld/CdFwZTFJuZJZXoWYa/ZigrMmX8jKD0tJbt6NldPsQjwWL
BjoKn2n5Ndnfwag5xz6/hA1142lEtxxky2t90Xk8txO3ezdZw/VBdX8OMpRmSb3iIn/6uPtZqNLC
7KAjbC7tywQ4hR1kURiktkwnuqwogCmMK1Ibg7orOtJUc3EPHk5CwTCzBw4gO8HHVzeEVmSlN7xK
1NAYQyfYZ3cztZ3neXllqmMrq9xPlzwQhA4sbuhPx+HB5ulCuf+YwMT+tP9vVpwTvuxJgBFi6fvv
S+S3aryLy40xcn3ynUnLN3P2V9mxKT97SmC4IJf0noXWYaSn2CWt4xD+PlAiBluoS9aMONOmwa15
gnT9djk1AXByEkq61WKaJxRXO5OT4jbe58KOlQcnEpYWSvyPSrj/hG7ZKoGN/ck6hA1KhCMYYMEF
WEoE+FrCd0fx2tM86G2nrkLyaBARbhMLjNtCejW+5mkkkT2UrHOhDvmwnZgScZ6V/vwGid/mSwdC
PBsap8aujGBMwRfA0bewcMMfAE8MAE4x+tuYr7srEqWHXob88f8c5t8CZWq8iTStjsViLLz/XMlA
AQlceleUIXlAFufzk1VECcB0S61u35ndrPTUZw269KwgFIXAOidun5GcERN101cqf5bksFVY+4M6
6u2a2FRDS56luYRJxxEHhCiF1xVbtP23uinYx4V8X4MuKwAE1mBmWeooSw5drnPoOe4zz4H4Q+Nq
GFBqd3G2EXMl2fdpWOglN6qISPHiYodd6wbSFnE44c2Vn9WuRxeeZMKrK3hYnNicZMap0cuwkIo3
MbeePWEl1yhj3XomlfcI9IAxr95D2Q8qEI9TrEZ48gC+wMq4rUbPG5ZFrjEk3ZZ+8g6AW8ta80ER
TOZQpSi4CAjjKfEiYJ37cw7w/H8HDKbtfgAzQqkI1zZ8aRVBX6R4jGQyH7nA70kj0vG2v1omClCp
dz98KYqiBXP9aNU2ly3k0CS56+TyQoXnGoYigkuJU2fAPqsuXz+Ty61rEHT98XCqUJGPaKM08QQG
oaNitF1xzJ/y67l9AZgyW8O4uY2Q1X/FRU8ijwMOFTpmfFnM9XvHW2RoGdohVzE6gZCya/I0bDzB
hZC3W3Qma7/nDKGfpiWXoLrGqICQXyf4RD7vNog0PNfIpJj18cozr7c0fLe3u5ZJKiBgHlA6ZjMF
klfvSMTEKPNhkRcBoSIlET09QlQ1YmcToCXOL8d8AndVY3pOqkpioXnMYph2m8Z7PA59gg4KSPQ0
FD4kkGyfuc/sHlFfTbPJRU+SF5jjPVETawpiIdqPEBLr/uQFDUA/euoGpPmLAlpKFtGMFXjPzSiw
E/ZlrxISrGowWayil3ohQOMWrFs/XUqUxGaSjQPJm5of1SsDlHE+xnvWadPxVmSQgX4iDoyH0+pO
eZ9LbhFcyVypR9itvpjMGRrGZjeHiPXcm/Tq3GG2LMthiO8ln+edVw2TZAGS3Wap8lwcQshQTHuG
/WzStQPitstZVOEj1KKEQNWE+iedUaEDjGqUPOxFHEUpWg/dAJO7f6VINiS+yCs7y5NKkh/mkAT4
UxW5l8HFprHydJ4ZEv9O4PXj+nARSkhQ3LucdbwU3W/V/l7UVD/lfT+N39zyAk/LSUv+FOBhDLrU
erZf+CnxWYb3k2Z+W3CHYKAcW47Sckm4OlqSwJX+rk2J/6lBD6jyw4zOi6XlogUWVwkFK5crMvED
LOqDxZ7P4Rvcdk0tMTCuepFsY2DzoShE+zZZ+2O+dOUIv9oIJ5WSLxHAYaPF78/LMXVG1UYjWMB8
Avhv7C7ucm47ba3KlpXC5JObFXyIp1TrDekIUu9F3r86kvHNmq+uuiyrevaiq+VlBj0zjpjvKxRd
FaOtIvk9FAQBE+heiM5KShEkb1jWTUDVGY3T0RSTEcPe60yb0UaAlZS6RQyKSZhBodlb+jE7LRCv
QL7/hN5spWXYnNn2RI/zFk85yf0uv2fSsxyelmAAO3R34g9IWFx0raHtvOyh7YwHGfeHRJiXee7q
712mW2Lif2NJgod6Tr14aO+HoVInBI9uWfV9xuAYGwEdKIs4NtT3XfyDNG2e2SzfPwKmfgrttrOo
ubmQishlyAx0aQvjfQlJ1fki6eIWZENS28hYndgCWmkCmhBIvSRA6bcJzJY/M0IfMCQ6NAGRs4N9
8CSG/tZpTG6FdzaZc2jMm0R/20cKAuY2eM5zg6Twvcw5IT4a9Q5z2mRC5dysPZMpDg+vF+VJntLo
22Ffp/MxpBDcg7DastgR8IQPqKPmt5bov4O6KRr8U9ncDQFjiBxlyzbw5FGG0fErsuGEPPWva87t
VMcTZNyKBq6OLaIErL6ApcMO7NiYQxg87MLE8fP9UHFfgXTPeNEeNkihb2+I0cpRRXnQcOwA1rnr
QGdh9Q8UEYfZ5x6JEfgb4W2a0goGcQP/1ZO5zLQM8KkoHhjmjoickgfB1d0scQmq3BUAb6XtXlC3
h5BCe2st7I7Fel88M5E8JyftBtVSj+g3lWTbmb9BnwL8QbREeG272dFtLuzusCXJq29QZLcUPtGe
vQb41bA7S9bn66bJ/GWJBKSn8jHw7I6X4KFkG1XeovmB2QukPkkbE2Fr/cYhjO6nu04XZZ5rhm34
CuD6AXXXxRClQGT4ycKGLoucH0mmOKTZRo2huVRIuz/wLPrub9uMjnRvFjBbhN63tYSalItoLvVO
mo0aDglLqQ0Veer6UkAbrymgZHmFE2jtl2OgjuipDid+J6UMba/8kLO2iIHd36LYYEnGbNAHYn87
YO/2ncnrhOX/jTB1sm13k/B9uKLxc/OH0QmJJ4txhs/GZ/ZdkixsciSXbSWvKRXIHn7H/mn6gTJH
ADWSd65P6mmdXlnTez+hwGEWZCm2eKNbqXc6OmatULknHZNASCigi4zULf0+osvViugfdpLwQyQI
IW8ng5FeF6STZ3QrfZbJw1lSgFlbU7kOJjhtUipWjJLN4KwATQZudBkTgGn35hl3MTM/qkglfE4E
t3vigvevua1ygkqBYgy4Q2131Vd5vfMF7sZ4OdFXfX6YikFHYaYPBSBSfV0iQqfT95cAc5TtmYtd
RIvnel9oi2mXnN7GxE+90ORZMgfFQpMtweY7eWH7Yi2WdSQPezwIdEXKRq4p12YudYtdJHPJ5TMi
J7cyQUJ4n2nGGq+0zM9/J1lcPC0GrLqtyRtFrcPGSRSLStXE2dG0SLmuq5qVeJRKWd0IyZWJ7moV
QZCBumvof3BK7gB6wmP3PCyd+qGGOx9oMFaJ1y3cTGdZElgDmhVLOzwVALTRgBL1341WuPrCVk8d
XZKEoK/hR4f6MsEnrBIyI11xWbmMU8IXUDIItwUacn461K16BdRoVFtkLwdf9fdJZgZfekFwaNEC
c8L/X6YwDJQDjqheLpdOY9WRWGNSfTFOajtK3riP1DLpAqFy8kbpwyNuD51k9DNIsDuczWx5blox
VS1wKA9MPxrtLRr3rLn3zTlAlMLmXqsGw5iaWolqnmp8NWjMeP4wW5IVrKpqPjMfvgIBv02GpWtZ
yeyTx4qdgr21GZOYqvahDg+nPA3UfVKW+BOSZCE1evDqtTQ+oF4FeEa44qrzIMjVX7Xn860Qjwra
CiiZ2jw7S7Ot62fRnGhGOYYGQ6caZg6HrnBPtPJfXPjf/jZFk0FYjeaisqCrj4ZYfWbzZ9rlBg4M
/tGKz99XFNgQOKohxFRXKY7Yzb/ZvmceZoUS/kxaqSJ4z+qzOqfKWrcMp4ijQg4v80czWf8MibW6
GR7TbATd/dwmqwq1614JGKYOwrO6SU5cE7CGWvDkv1fhAZoAQGNu3gLXXWKkR+qNYNR3TdFUq/l4
ZwBbQM7vw410e4plV+wIDYDg/2GoxqvdNdHm8ADtuvRZx4GCf6BYMsid5J6ByO/cW7jJoI05qwl5
3iuE6nky79PX5maHNG3d9ITkVwSSNm3cpe15u4Cbm1G3hBkZ73Q2WdrFFbIeADtxAsi/jkTYlQru
g2xL0JT0+iWV6hDc8j9sr+N1QoCSyfzi6bqMjTcKNzsL6ZqDvPkXbGMxSb16vqWMKBWW5bfwRII1
seGcXmW8BgRo+dJyD5hhn6KBvQELrxK0xaPTvJyKeJdqc21rvHX4YC/+UfrlLW92ISRIiBQ8zkls
P0RJUV70J3RI6uzQhsV54yAK5/97x4WzON9KXmfm+r2etxKR/o8PSpZ3PnXC0GOpUGP8euwVNEcl
Vw9rDoP4UpNXRnZA5JqJ7bkHEdaOCxyvnP+zpmXsp34terWov2pjnBfVTqgAFAiRU0u0CzSgGopj
SQJOITKJZSNCPPO2OFr6BXphn367HwLClV3WPSCndINMRQ4XwqXmraEoCoQB0KDyPGnT0GmvM46N
u6Di/1OleioD6z6p/DhTXS8DNRhPK2FIdSRdPDMrEfdrggPOEMDx9kqvM2zAVsc6Do2kQsg0HAIf
a5jVHvl6RAnHRQs3zl+JbRFjEnT8N6/AsB5C3ufO64Bnxv1AHeLe/ML/iaXcbFEU6IcGzkMngupq
Urs1BgfRUu1FxiBsNxLnNesODfVHX0L7zgcIwVJ8sdrkt0czUCKYtKOuAd7TiRSiveqk4vjMmD3M
4dExSgY0UYBVFcURCe0JUMV7lo/FUk2Tzz0g5K5dWmPKG1fTyzKkcw5JxEiwwnotYopt6NQezVeZ
57FVvrmh6j2CDrXn8yMnW3aI46IhoHteTXNnmA69phgwkv9sLi75DZXXTZr+D14Wgd6kBn6G/oty
3+MEZ4p68yMQpTdyIujAIzo4AEbPQfOq2sMExsaoXWrarjJ0s1i15h6bV6MZIgG5nxduvSYT5ESK
5Twh6ioHicHLlC9wnlacLUqq7QNPgwPZ4jUjevKTqbHzFaRd4elcBRtWgKi1+Lgpw74fVBIkax45
OHmZJBuw/311TZhTvbUSvMV6oZFf4mIMRaDZUrwmyyrSyuekPbSppQc+0dyLS0F56MmNu0d2SCje
oqJmOSBat9Ircda9h7G6MDRHYb/QFNylkQu3b/lI0rYpld215x2Yoc0ldOocH8O2LrEpuFGts2lC
SFFQViIvD6gNeysLuerJl7F9YD96d+j09XBmvEFMU9rDt0HEA7+mhgCLCqUTfagUozxfbqA2bKI+
Z2Y0kzCbDEWO7aQso9haHjX2/4AveWWO/rSCEHRqyoKiKOgXTlt2N4q3Qvlx3AaRdwYPS/hzZGRs
z7iaaHg5fmG3eaPRXt4YZ/4V08IKgM1r5ZQJFMvq593GKP4/U3kVovVCPVeqIOPNKZnEtaEgliEv
kDDmHZYJaDxnSP0EaL0s93rnzd4g7hDAcZC6GnM4jd0weEz2W24t0avzyf7xGt4RiVn5xT+XNbjz
J2GWzs9E7P6jLEYRgYY1zzobsBgaMfy0Guk5t9P6+EBF7vCp8o1GhFJYHk1juItJbHVyF5wVNGef
Uwja31XTC5po/zHT5cFPXNWSj4QzYBgKLBBZk/Kld7ddvLyHbQri6bPa9QaiwiyPXInzSLgTFxfx
3m5dkv0cW2gNXGlfCbWKSQa9VyWhmmZ6ARBi3sIZBMbPUHVot287FkiWVLxMBlH/vD0WaMpcLgxl
+pNSGtoolrrx95pL6rZl1g6bAMVw3lk9CRVbx3JC1cYwrU6oP/Tn8x/lOtSwSOtyyPkpF+OMDK4H
q/k5qKCRXfhbzrTiHqPgulfdt6oaZ6dq2xj8D4gBtywZFuIwpz4w0GXQRFmHvlSDrOyBtpPCK4eC
nJDPs9LhFpqMormdnfnVANsInkdWZm7QHxZujpFCB3KAtSkDi4/KjbOcCVY8Ou3gHMWGmuYuXKfU
KGVkMtxCNZoG8TglAHuTTVyIJQ4SWkxx28svXnFxl5RuN+Yk8OCJ+pzzqAK3KV5WqZLWVLFwOhg2
drxiRJDw7EY4CbwarVk0A3wl+aFdMaCM5KZkOvY5+BfbBUSoxzx3rbSv3jPEiYmw/iKXeGwjb8/8
VW+5WP5lMZuGXcylBysHpbbj9UOiH83u69FHTvYhale8+kw93R3yigGR8Ewz8s628yVpKeEqty1l
2TbsbEYoevWDEP6OWQDHfgiatdLk6F1wcYvTnSdAdfwZSJRqtq4tWKiKl/7QIbMq3nqZcTlBxLs7
hyC/RadUn/N1dPkf96fndvvcds+mgw4ekWHlHVNr/UDF8awxVDSpgUz4FWFd8UEob5Ky3rezDj+9
kYSCUkJq9aIAyaRaPMFqRGgamONyESIM/TQKcNBZJU79t2Z1GNZcEZfxLVZRvdJ1jexfr/iPCzMH
HO/U2vy5U1ptpwmSsDDu6/HReW355nc26hDQQTHUxVQ92SSvv0/CcAw5+DR7jCqDSeGY9ftNIUPP
dnd2orgQodxInnmLyuk5YUcFFGWbtc+FDJ7RaJvigEfJ5joYgWyX6g9AaPGqf8puT5rBHt02SkPl
G27DaRYklO+lMWVBiwctVomANZsMgDB2T1E/GQqbah2WCi6TaC+vTMNAL28Tgz49qdE47NltzsgX
U8D3Yg0XeDg3bqvreLSiRBV/2gLmNUq8txgJrjKsMTWtfdWO+rmw4A+r5jGVngs7UeQQ8BWPSHwN
W4kfzEcNY4LNkja82KEidOQ4WBYIFGJg6AHgVS00zQgLsu0mZd+3499/xItSevFMEML69yg0UngR
HwGK3g4s/KtkPMQH/nLxV1vYqAGSDQxRfLfAwB/98S5cWXnJ2FuVhyv/KG/4u9GOjbjLtfhjV1E8
okD5CrJcwCeSuo/ZeBWu2V6EqjQp/iUtnmbbrHUQxltX2DAVmWuChG4QZ4xVV9/tZZGzEYgREouT
itWfPI5FZAj1R04erpYG7MpKlIZFCh7NAmnPpNJVbC60mox06PKyrMhFm4FlhNC19fNsgv1Cutmx
5ABrpkf/TbIrp3jqjPyQoYHM5yk1sAoR4LJS4Q4lJOxgkq8L7gmstM3icKLJhRA7K9TKedr4zaEo
sw9rfrYHpVJb0irwYX4vbjGLKZ8F6xlR4nD2zQAaaxmcYLwLWU8PqgNqd+Sdv9rXI9QAaBQEYqBt
YPxZPUzqj5H7jOOajsE/JzG8+JOnwq+ypE7N4bhBfUAgNN/IbRFLRcWJjel0o74sNpsseHnxfupl
1zDY0kOw/UWO3nyeaaYhZbykbuIP97rNT3tnxjeO7IGX1V++oRoMMYv4yhKnNcZE7TtLX2knSTMZ
nn7Do38mjtPZA7BNTylsHH+JZdQHjn5g0jVW4qgyJEPURUJVm8lee0aaqHaAIr3qjtEse6jMsm9e
dqrxZGh8SFIqChFCz4AWXjOgaQVQU9Gl6lYB89P1iUvnrwNAV0nOpkDdIpPYCJu3B7Cd97XspvMP
9nd8G/Us3SdNCJUwk1OmetNy+olfvpNG4bvP92lM3oZY+k6sPdXHfGAQJtlwEpQrj9lFbVABNNGt
ALahZg+sL6Ma/49ie/LaHCjoncvv5YQkZ4r2gSM2G+wb8ve+Rs/dEb+OOkTqA8Tg3Jh9hZki258g
xo6KUD5/9YCom+2/3PsKqaavDEDh93N7ghqS39zJ9rl23KFDkSqwo4jpYBVfoFkjZpcdIxvuc6uP
9fXIfmRqBVns/PlqcWHC+UN6EPgZR14MHQnkgV+UAyD8nSlh7dAhcQCf8D8E+EqUy0IU6dx82e0K
um98ya11rF8432u/Nxd3IGcZ+dQELHhFqArjlb6xT17hMmB9n72hGoxY0uyUUnHO3nLDzsDhRmpi
ewx37Z8rRd6ydWDwSoFuN7piSvZkAX0RJXAUzl9mB6AbB4hcXc9ZktXW2nqCJtj2N5dbreiLElfZ
2aNvvnXabEe3Hxl0soZFsSGbxpVQbMcmk8XQT2EdxXICzMvacRDQ3PbzrJKorLoId6oaIGCuY1J3
znzSiAJxTkqq1AWBidKQmPQm6Ry4W/l+/IZFJ9qJX8Mm4PH6b9eT99ovGVjvef/0jAgn/6WCr53t
RNRMP0s8FSB8qc9hlBKKU0VbrNZfQYJ4FfeoVdZXkrdVdF/woyOeyGwjPeheZjGlFqugeJRucLSc
fpijoOXizwjLks/3X6z0IYm8zCcG6yUleEvwSRldy4mVLCi2rQ5L0BhQ8Rv9jpzqSnzxSTLlQDU3
K1unR9LyuROuz1OH020yyFYQfMIZIY/IGw6U6i1DSLEI1HJIoDVSi3GMovJqWEC5+8YFyS7XIt9J
e+/9E0YdBarCvHpZ6gNBOkhvQgr6IPBp6PEflLwhV2LXEJs0P7S6pStwPaz/QuX8cuTppFPHNi1T
K5YlSUL0suRmovUJOo9FVN9e+SDd8AFiQSV3PVNvWTXt7z8vBYtya6hEaYp7ccyMExaF74wpzRds
A+A9LDoQzk5TwecHth21rlKBLmYP6jLOObOvQj/3Nykms+nWYldG0+67ZQIrI9ZvmHrc4ftR4TaE
0EQbdSyQkdFiqfUMarlFY7zvRS8ld0pvUR43d84hpeRSg0ALIjal3q4xch0EKEG1zFK/8EKGjuO7
0HchqhQn/wxKzGTAu+D2+uRWjYs46KHFXBFVl1OuHULyvqrltBj0T8Vs/G43Pb+IUs6VIldtedPE
0YYzN4jzghnL4PnA/Kb5PHnmhFA4M8CCQVUADF09nKMPrQdpghj0c8XC94Nm0oZbi52j16CU0uVp
uk6G4/I23vVsaqMHaokEUym+gZfAS1j50Ey6YHTeWjyxtFiw+qwoSLlrNutuFZOcR5ARgNmQpE2/
itVTMSguL8Nj3nSdpfKvxZpkHjljXWEBAY6PjFmjfPOk0pVcN5eNQWkbpS4yqy3NxIp9rTrqpBy6
M200nShgRfm6icAbxI4opUInoAa+gIKtr0JrXvZP142P+YA+x40l/9E5v+HxK38YTP4inV8CusmQ
0OVu3IOfpXj+geFi2AVc86sNMWN5dWLE+XuuJWYB31V8ScDHu8NN0dm1/zwwCa/5npunxIKqRGYm
HTkNT8lFJC/GJ0TVP1dI8Yxa110/ax0Zf6iQcefr/0KLm9Hsgvxp9qBE8d4HaA+aJ0PuZCAknNfX
mSOsRI8b0esY3ixNAJrzPt5kO3n0MXxXkBMIBSZ+8OIto+Z+kAPPEiTUJFGHyfHpcP0wTpOLxLbs
rrWXTS6xHuljD3NlUZTOVx0s9SRzU8cNEr0MFpo+MESTxyxZTHnVyPDIx3tRn8SeWVBBjP4yUq93
Grqm+eZJHMLL4OiaoOsseJm9FpDKKEl4Av2kBn7xIGiemRnOh8fU/54nuLD2VLefb8nU9+K9C7B3
VnFys8cRkED9tffzt4uhL++C4SBm+Dcr/4XVGnma/xIyrdE6U00Xt89jfLnDY09et7bJlQfbKnEf
+y2O5L6kr0wwwsQs184zmen4PwmgGBZ2rKRzF12rRsMcFWCXl98gf6UFGGCJr8Epb2sO7yFQogiT
2T+9ULrCLxAL6ZdvRdocTrllORhBrt50xnKzIZJlxTOIsac1F+6SKZte40k4SUby9fcsz38TwGIc
INZTX6b3HPqypciqshSBGBRjJsvhxItc74vGVr1yUV/zZeB6L9wFGfIoKIQU0KDz2h0oJ2cRkqkP
W5ypSImQkXNspeINdUPrJrNLDAZNT5Jr+Aw+0dB+DhD4NCMrCoUuR0mqxOOyGaWUefxDTmQgeicM
CeDOKoPN1OXhwghKRXLjV5oVePM/DoJzXOcjzGx9FdU4dVcTVw0Nx/SxZYfXLQDnj7RszzHZaQU6
oSIQrypoVzwJ8Dv/DXBtWLmEB4kwQH7awpVomoe6up0+RHerndk7kiWAcsU6Yfy/pJotNg6iKjab
5F5N0kvBfsTB/B/+2ca2wd1SP8blHN7EDSc4LQBiI+Y2HsJcNL0QAGZRCwM8xrdkDFklSk900/Xv
6Bfie4jQ7Sk/CuIYYtJHs0etJIUX59oeK+nEwMup8cDT7xb+FuKK1BtQWWN5eTLJI+3xc23JYMv0
WzF0owxD2DAdG8G77yFEzeaqKxQ5zhbVLE5UL+sO7De5V5xvUlaYHRJNWt7AsfdXWLwE7br3heLE
n7y2EBCki56//otgQhBqFxxurgkF3DBjureQbQFoh0WgkCVtJP0BuZpfruJZb61Ej2+n9KVWaNGA
2q7T65dYxoqX3YhBZpo7OabROcWTA2L0+8t8MvJN+/ho6FEyaYK4l4PhLIoDnmOMr1xBBgQJyXe6
NN44FJzBUM1/99Yc2NGBz9wohma04VdnOu+9/lfNINDg3uABpYa9femnBaiTb6VwP6SGdVMXfdyg
ViHfcH/SmRSF7+nCsfiF0bqorj+h4n17qwSppe6/9srhzcgAvmOepCZDn6XL6DWlLi1xUBbkOGT5
agOh+GUQgLunHacbkHfbTA+JfpVoLaZLqTInZR83LvQjzH8Xy38GBHyx6bI/Q4/f/oAfGWKM6MOY
hYf3l1UCIclXZYdGktwSEZ6rLWdwKx21P3/4un9p4lKjfmXGQ+z+fDTBprTS7uHPL5IWzVwncmZl
K8cHM0okk87JV9Su4isZ+dT1ZLR6quTX4jjdVGcIDpIZIONPaMInI0yrh0PexiL2np1XQZNH0taN
STE8GYTzCPVSOT5df4+LrikTwyIH/wY6qaB62kEMFRNuq9S+d5lkzCBaWotHUXpE29njDNboN3Ei
PzgpmNyr3ctXO+s72uOdFXWfq/zvgR7T2LDA/U9VgVP1rJxyIa23zsOC1j3CcSz1pEEWy/YLBBey
6FjROQCznlkS0uVP/ft3VU9F9CnPxgI2fb6JHdnwy3OKI8qFngS8Zeqw02JpeFxOlsCy55g7fg4v
kmP+dwUDCmP4EoMVsFYbhCflNxmcdbzHi30tZWEHwys7so8sBjTxnthi5wrpwnc/qe2DvFCiovLp
uNVMLarmYhHwtw/eHtdS0RmGGjBscE60oB9txGWY15NQWBB5pLrMDL8kXkXi8gOr3RTERPMvlzY5
YkEq4WSRBVyq8ztaRWTx+8hYya5N5lF7PQtFCr6iIXvavrn1FFFx2JAg9dQBlA2e5ILtgc/2zIYO
ffPqlfcKl8SZsjcOC6ZrTSAoFHo2oi5AXprHqOWYk++9+Ni9fIhjxyYIvg8egzmlgmnNBLbubIRX
rPWmh90NvraadTQvauOqsWNIS7DkA8vJKKEjhz3jea6HPbFPrd9NKGvaUQNtsVH8X5CTily8l0xz
MdEiySC+qAlIQXl6X1T/Q+A7d5BgDypxJZHO1SLYsmgAfMoTy3hXj12kS/IXzJ+K5WQKKgNmuASG
AY+3/00DLcP+Q4tFbs2EMuyv0jQf3Qrzy4ZYtg3VxH7Z4NWkplWrnkrkKlnyDKnbk1z2oaK4hJE8
wMegm7ZzI52XOmSSWaZlH2UWArua/PmuU2fXCYj39nnAubN/OgNXrT0CWzPynJp4xvdQDOzhYHdy
RxKrwuJ6nc/oJVU5eYuMgoBrPcJ/wsbOUN1HNvFRIN7EEgJYa5210GsWHYWrclOnZgFQBC2aGFLX
b7RgXpMjT4mY/Fd+o6Oz6ztS1kpRrN0saMNesMDQ+qTLxZkO/W9FAg7JwOMNty6EgNTMrxdhJmLK
UorKKXha4j4LppfFTbX7kt8acHkdwbK38lktzQX6HF+bG6F9hUYnKFLNGo+Qx3sgd9/DQLkPKDv5
1k8/uZmCEtVmlXU/BmAlJnT8jYLw/iPnhDLVbPv+j1eb02b82xuxAPkdaZYP8a4AuOGzs+5zaUYE
ObDg1K9/s11Wz71OxcKqCntsmc5evCSz1f8jausK9hdKhqC3+kfl7zXlVUMcyAUrW5THDV/vd6vT
J+DoYo6Pp8eQB8s6hgcIeirnsfKS0z5EJ1OgS1YabYPwW+EgdXhtd/INeRNpikYyvWWYalc78eWm
hDIPyNRvhkUKnwsYocyK9fNij35HL65KYRG5RGong6hBeB1Awnf+lfgQ0td9Ebb9oMXCJk9Ab8Vh
pK+Fl/IEGISnEFCV08P2FVp89g4ADZU1kpNhokEMnOiMpuNKMlTgl3NIVn1Gg9xIkIj0gf/RZYip
a8+SLpcNokvgv32BYaXYnYoH9TX0D9y8JbihQJUbw72A/4hCam0kneeHIoneU8CbZgfLjOW2s7zZ
LKX39aMHNfAYN6C91jClNBcIeQLiJSsBCsW5Qmcj+z3RAou2hiAYPXwiJ/DFHvsIl/Ulii5JyVxK
dEk3dKkeP4Av1i6fcpgr22gpwvZtTqJMqssAIcMZuLD1Bh+EgFqQgucEju01Vf8VibdArUgzuv0U
QAziy9isEVyYWcWFKzfh9UmJMUJptCOEFxuYIXZg3m8HopWOEvElJU8bExiuNSQ9PfxySptGK3py
riS8QZ6jsw+osI8WZbtgu3+UN1jkLC4FXca4yYy0Y+u2K6iwLSbXipV2W1KXsG76f1oLpPJO3mIE
ZvNGP02xLXD0cFBRUVuhcvWDAXdL13mGkj0/JO/RC5zJI9o83mIBhAcaXwMigh2Hc58bX4ASwL9l
4HMQ4lKRA/a/AgCm2+RqdxCVVO3MTkODkDUhKcvSgYvLxpwElG5DfurXBCk4goBre86HqUisFRBF
SjOHot0l2sR/bSztPIWZpuwcfJY4cf3n/DEJeOnhyX791Civbhq3AaVPk9EXV9bjet5PMAcxxuOu
Tmsuna5d4uYk+4Ai5kX86KBQFFwzBZuu0EtGrWNUixmTydefOfGShIs4xHWPuWaTC2Puvo4gXPgu
1OEqVnhWBUyCo8VznhFvGaaAsIBk6S73RGxyDwWma6KS2p2q19zvD4vXkqDxRJJi87LoUW039JtP
+b2/dS7+mgQBCh0byBdhPS1CUNXxQTKly5RCzwNRPzaErkNXdCeloeR2xgtathNlEeocZ847JmXd
hbWMam1YgQ0pnOl0GoGPXqAmUSFqG+vuetYCkdO6t+4Pv8ilII/npeaqVQm6XsxwcWoGJZxWwnvI
oDl3KTHhDJArs9gEUNPxzm88ELQNzuYUNR6944MzfyttE601K+wEArnU4kdfySoOI45dwltfLmh7
XmlqB2tcbx6diFlGCGFmE/THJjkF+FUmtglYNOIjz0YSs4F/sVIvsL+mJl+/aiMTChqQkONN5e9p
hAUlG3gZ2lF7EXkZDce2l8Zafeph1hLTXNbrm1FVLRpVj6mdA0W3ihq5thao+IVUbK+CS8cF8DGk
7RuESvB+D8fHU6ojrbytJrpROdk/VD+QW2Sw37nHnFy5AoWkq9mYKaZlPzaFdu0F5Ko8wgDn/hda
pz9tZ6uOGPYsUPO5NNKOsDmHPsxzvDe8P9Wp7qkDMM9IyvIXpXWvr2jkx7qBn+XmAzx2AP+qVPi+
+uXy14SzcluayKLw0nKG10EwjY2ywkVLBtlBdxEnnOwqxX/g0gUzqUQ+USLwgzlSSgLznozjXM65
B/tkTYdYmIUfw8GUn2r53BMrxYNgYQbUhLQSKc2oZYR7bK2FP1uzjy6lxIdpv+WEBkfWh5BkBrvq
Xw6P9mM8181Jx9EDsDpiI4bStAsfIhn5Jxt3ZbEiYTUZy7H2Y6f8JLo/1knnlu1no5aYQFedBDyg
3Ad2xB0U1oZbAIHq19gvVldph4lGa4auiBypT1y77m9AqlzLsJ1Sidz+BZD6HmZFr5o3GRq07RTW
QEI3s2Ht50Y2lHqUaL+LpT8Euo4EZ7z+iDNCzMxgSqhwHlDKqzduf3hMpJU42gqum2Kzx1KzgG1Z
XvLoc1VvQpymgac1y7uHn1fqgEHstYH7k70La2HKnlVf2xxkHHuxuwmKPBxwA08x5gkV0Thu1CkL
AnT/XFMUyXXPFZJXjIM6dpQ3W4oGZA1lv7aGMo5cPeJEEIOyp+V0oFGvk2YSxbHYbQccEn3E8Qw5
7J3swf+fpYug+zVt5/9UzPdDzvaorU+DN4DowSK7jBTZMA+bx3UJX/mFjL/YFz3KWiYk3SXIlpXp
hBuBP3Hl8we9O0pQZxEqmhLr5bPI50DlhmY1w4H8f41ddE8pG4zbNcVspMCfGVE3khFAG+I/jYJl
kxvQhTu5Z70onskqOne/8sKCZF4GS8yUxr9fpG0aEz1noDz7ka606JpZ9adifLK3FdR9y/e/jBIm
akQKwamjEIdzUTPBvKKjHRkEGx0Z9UZ+8+u7H3HvwtbJHikVPWVu5LZSulAemPTdFtRjmmDq2tZE
GR/zqCMvl89dwEVBVVnjTZAfwl0fa13hh9or2OohWaQE0JH13N/75oMoIA0u/eTWReQTLPH9pt0d
d6kz46HXCSBDMu8vyuYOqVLzYy9EHK2g+/TK+TZv4TlPSN3McZ1LrWCUcbCYYhev8TewoiMd8s6K
mqMWfqHDA7i9nGivuJsWcoafTsyZaFpq+G5DTfGrMvfu79Ml4V6GntJJgYBFdh7H1iB66BXYTHvy
8VTtwfjHXV0etvF/hYXjgrPH7Ch0oKDtUm6gUqjuhL8iuNsY7ek6c3SQsJXhiGnVLYqdT0HTgVcH
bWwCI8sd5sJHHwn6X1p4NFk0kr3osHsOyLnrzkHcsUq7I3aR//m8hoDYk4u045X5HGRdrgBySAeK
+IGHuioo5JWLOPYKMcH6Eopxtz2CYA/erdMMIFiBfyAWx+TuNXnHTB8BvXqkEzOvpXYQVg6yBZb1
btRnQwkrWWmYoZewY0obFWLSXBeu2SQzrJ1pdcCT3gj7ZxmaaBRlLwliXAqku3gUzgl/jJSPCVUf
0jM/5p17DXytk+NnQD91UKNVRFeEYupkVf9GbPqMHHcbBO5KHUa94l3rjCmsN1x902ptOIwiJVS7
Y1wbHbyB54Ixqi10Xn1ucgYt7JqbrVilHlludb+UJsoUylIRAxqUswqmqrWD+wC9Vv44hhuv/Ln2
r+C8RbG0AWD0dPjVjP9erovPJNUqrpRyfx5BevxzmINMeDSmUJpFbhFJsHg+TF6s/faHBxTT1tuh
j4kGgSSzaRoP98fMCtdnJzJUQbV5CpAxy16Loqho1RQyTt306WWezFBF4x7sBRuA+kf73nxYsezx
REl5SsbYQ/bjjH8o7Q3xD/GjXfTJVBFpbD9yMk53WYP7YxZqJ19k8ALIXZObJwFLAyoYr8ptK67V
RiPqKn4EzdVd/sS617tUmlY8ItQLQRaWaed1UQOBBVQ+bflmAmruNLhLhbgDBQLxt96ViK9OkB2z
ftc68YYDdX7WT89YNMnUaxvvWyvarEqH9rEfWB1bLoHmULsWldG5gRrMV/fC1pRcR/z44juXxjW5
qgN+kXHO8SMUoAeKj/xlx0uVI9spxIMAIGp+0RJ0cIuug8Fb13AvdzraeC51+/1dTHJaqHXUQ5Ea
QXpgRp/m7TNvUd2ER6XwDycxwypiEtb9S/0BkXKyftrzUwSfE62qtju/OEUzHWJhTbFEmhhRKXwh
gsGwBpHzUL/Z0m9uSt/TdhSp5QF2/wpRlEUWXUsvpWKGsJICPvoAU6xJjp2Po8BPmrrv9w0uNCRI
/b4g6wP+iHrqMYtEB5c8ncUnOVjMdoxeUg/l4LirJElR7a3OTdvwtmhOeXWDEo1LGJ9/48aoex7O
InA5kOS2S4Ro1lfTAsqeoNGwYeeJ8f3rqPKTuyj6GF2AHpJm732do7NAph3LpaTyfIStW05KornI
l4ax7MiyZHkaayibt4JFrTPuhX0/jqw/4GWL4UD8M6cb/W3sNbmGBTzVAraffw9TFg6p+eMKAX5M
OkNlxdgxBXweXQ/Ew2DZ/jkuDW3y5angcr3DvKzI9p3q7TNHnotx5QkLiOl/cJ5mdnDB6MK0911M
vm7yK07ob/mQSzyVwke2JTnO1UQh8LwxbHkKCI/C5WZjBhLXdXFgdrsKRNUKRvZUPK3ueten18QH
HMbL3Y8ILn66ll3yHSrv0l8CgUYUZJ+Ci/X0Px27fzqViONem9gu3re/L+Ea2Wne0pYKdwruhK4m
iAfyzTLYVE3zOjxyYmVOaqOTg4yVTRA5KX1LTshC0Z8VQOg+nPx0/TPxmB4jrUIB2Xxdq56wCOWx
6bzC+rIECkAXuuOherB4XYKneOV/c1YAm7xln+OrbuMAnI553hORDsuJvCCiNmR896CGm6z5wLdu
WTWsX+wmXx2O5iCNTwZ8H0aor4crOU5HZMEptx4Sh9zoaMP/u/S2UoW3fgmFPmMDp3n6vCj2j3Ms
/WAp4SaLcqMnZsPCgmoLRPwp3Tq6LA7jOjwYvWN1Jv6bm+6f0SVLJCFtjgUEm6tvpou3n0McoP2X
/ql9jMtJ4oEgcKrYYojQ2jQ0SlU8bPcY+AXg/lU5F/hgOfECqE/6jelS1sn7B4LXHpriKIunVfOv
EkwpG6uiWqD1QcTMht/af0/LHDc/rqcSV0iHvDOBOs2gjeM4h3qfe/dFx5xKZ1SBNObWdc64ufu9
cFF6pm6ldeANb2HcqGp+kqZfI0dTlhTRkqyRKvaC6lZBsg9nrVzRL0IKOn7JBqY/+CQJbH61DUeu
bgjGyV4PTU+W7+d8egS3sAKPj36Px5O+C6DonYGmc5yWmss5JBfdeKOTLaazC/Ryk9PKVizTWj7w
Pa9ftczdaGePCM+faaHgfjxTnPNT6OmdkangJFYinEyR5NwimzdO+baGkS/TxLYJOPM0GIrp6lFE
8ZH9lSjO9iFYVNxQmMYNi74N0ZXsK/4ztMKHMxjiwZ91Mwrd8PjHJzDnKl6lmXbuiKQxAwhVZJ2t
0Umc7GOPL4RfmLwNDSe5p6YTkDvzImlCWFremHzG+P2CKQIm/OXBmEpLNgIB2iwoRc2ESa85UJrB
YLrI7y4P8aWRCl3V8S7OC8jiutvWsHlZ/V2BuZ8BjN9jSr4AqeaP7mUYnDNLbn1kW+BAw0zo4Pit
jWjTRe3tZNXOhWy597w0zn0W9ALmeVnXpHw9SoTO5eXarRFIIxMfGabYl40tq92UR6CVjfxgJQCg
MpJM7VDsSA3ineqhJX008ZKhGj5cmWsrL8sjaXnt+iDUcJ7Vv6gzaHCSrX662iB36cAD3VTD8/hF
YCkWV9mv5oNjEUgHo3kh/E4UXlNfqn7Ri597kNt1s8us6llYR3ArDT7rky3CHnl4YNJpiHYkQgeA
kcRDGgU0cb675WRWkHcfUe04PRuh6Z+2O/B6plUE4cqR8kDDhz7l8E3hpbuclhAnhhrk/uVw66T6
3G6yigTS4kcF4WPol2gg+UPorI5nPK4/exUOJBB19RuxzQ/9tC2wOcTavK1Q/ZtgUHzhF5xmV1Xl
leuEOY/ZR/f/L4s/xpqizpSxQLGdJ+9GIY55RmZHNvdoTR0Q8qafzd1QYtl35jh7jnoyJkGbhtzS
MFE2u/xAYq4ILNI7ifN/IrbD+OFXq/VjwMwFookodBkFdSV3qrb0lJkaVSIXvQRmce7THbhvm8k9
TYWWCzZIpjlo6gXGSbJ1qF0J5QWHlTrQ3J1tK91knhCDG9wcYIElQU5QZZO+1ZdDbHeGaCHfg5E/
Ggg8cP38JUkGnZCakDiblvPEEu35mSqOYLQITOJ3/s4X9mf7ckE4d9hgwC92f32tsgpGx9os1S/4
WK9F1vs377ZjxoNhadZ3CIv0RgSHA7nY9B3NBqk5DJyTSxUCWPwoDIMKB+fWRUq0IhnyjVReg2+4
4R0CeMrrcurxTBLqXiM1mVSLBJHa3f3717ZDw1EWMi0W07Wax5clsYk+vdmHj0/BQFSJT8iLJcU/
/06OaDLTcqlkU+1ID8kA1Yrb9h6dwBpAibnoBZ2YXHRySbsHUT2oYyETHhfVedYqkYxuPQvR0RFQ
xFpGgP/+P7xGIvqc2+d4Jws+Okr9jyyoC1HuEvfpPIFhjrpKuwWkJJ9SxLpowX+y6duvHru0/sOC
K9n/l8ZN+UBjIh1XV829sJJeLJsCTCrAsqbYFP0Azbpi36Qk+ccG2kz+L8A+6kLI/lzCIi6DP0Oe
hw/dQYzqZVr/t9IaKWb9a2pvYW5/n1iwfneIuNKp3/dVz3lP1bcor4Y+021I+6au5cxG6ke5EbrH
ONUa879wJBFBcDDrkZqHEUU/C0Ph4G86SDHuWL8pJ04L2DtCjIC3Mt6O/AFlXPPKHVP47Zr3MIOB
co5V88XiBg/fKN9DgUdPc8oja5Zkv5SNe5rLsgTD8mNJ+kc94gplPjmfExrY2H6OeSDkw7XpROzS
ByifHWC7qWPtEtWGzv6o0OOzdJIy5wlnmrwyLTeBKesI7ycFEH4LZPnsnB9GV53K74XKDXCd14kw
FJGpIz9vQ0zNz48yinN1FCxrVSDhAlbjdw+tYYvbvQxhk+5WJbY8PdezGIee1trV3Vry6LBbcB5W
S/tPAcGVLWJfQlQ0PeezGwu5FyIzXzOffaL4HtzJa9/FYOh+GJrFmOw+eOps7B2QdFwwlg+BQSqg
9X9k6ojHa2y34CL3ZibG5MTWiuSrM8TyeK2FXJgC0ECz6aIkf49M6G92qFomv/bUud7dUd/bHRyq
qhgwh35xnJY/tVxoHVxlFdOA/Yizln5+VcX0s5F4uHDpIo9I68u3um/J49sGgGxhTYeIw2aONaix
T4onV3ypQiZr9iKXrfsaL38o1yyO61qiQO5hQx7abefgf0rVuZNLGcaH2cEiHSChj23Azs7dbtEF
dmFgubkhp1oQL7CWFMUZlAzVgInlmQ2kcvRObtdw07BEeOmnFNYo1as/6sEty0l148Csj0dIpZBB
RJxhl80Ui97ySaMfV/xUwdde8+uWyCQEMUD8jAAZAfb4W7S+sUBqpZwpvhpDhmcdcLePIofwUXiW
z7vJzIsY8N1PztwNmbaCm1pTZF6hlQYTS/dCzAYR46kml0BnIsCSWMavceYINTDHMS+/DSA1fxhb
6ONk5M3zRiAKreHLMCMFUnWON8nrqm8pN/sjV+YaBOZnDPXnEANTa7EGi/o+qdaCZWpjb1CZ57BR
Qq0Uz3z4A0vh0B99MgTqupmZd8GUFLJJeQH1ttCuH2WFwxzUepqudUyX8JCf7CaI2Cj5IGjwjmwW
sQNGNI2SLYpTsFSfG7eW/I1q+NbgxmgvGwretHy6Pcx/abBm16E29vifnDi9QGjBCaEfVnov6H6k
DXkZAXqig+jnGHYhPBcECnOkknS3S2vOj3Gb2qVt5qcHvhZnPNOpW6/cUtbtYWUM5JFvooWtpEX3
6wpIo0BGpIn7O8soOEMO7s6G28m3uD1+9ToTHPXQzLPsPixdC3uMJcgc3NEtMJizbjv+qiCbJaua
U0GnO6ogDAlJgwlptsAGIOObk8fw/NbEOCQHmfhMDgI8tPWzSIE7Q/F0Ugmi+rDJuuwvwgQkm9cc
AAy3FvDGBP+aIfmIYGB44FteMb4iKeKtgwWAizMKXkl3YQAEtQ6B/bCO0CfBy5x/Z6HrFZtxVIy0
05R1DTAdNCkA/TP8z+5vsmgybh1gHNYphnVnjnQ+V+XJSTqbSW9rGvxRT3DY10rBOXg5TT0iUL1m
A3RenRwIuEneuumj848+Kq5GQLbWcNaOlOwCSSArR5RL7OR4E8Mx8Hl7hSigsPBFY9atcgcTaigy
CLyxz+1aDwixJQWVe7dtE2qdPMB8UAKPZZ35752iQXtaEQaM0SNY3s9TtJP1FwhWc3puOxXRMERY
nRrLOuNrSU7GGfmR3y1YqvdWM7Jno3M/I/FKXbo2G8waQPK517fWTioIC5a/nsNSWj7kWNysh5yG
c0Ww/5cMuCNstfGwyS3E5mSilx/nC0rIyFexggocFj5p6G/BZ8fadunVhqudcb6eWCw/Jw7pEAlb
DiFf0iWiyKfYt1fBzrhYy2Dw8LMTY9v6GTkIjMoFbiX9ab/qHZXrFdx0dhjGO9gRB0xZSbsbFeGR
Me6I6zcM+4eys9+69ybFYx66D55h4IdL0evy68mCxbfqz4sZ9/QaaCjcKYUCv448OzEc1V9EC4uf
Yd8DYRE01XdcNj6qdaOvaVPWg9c0aL60tZ06y5acF55gpVqqkFU8RU3yfrPpsuNKnn2kvVLUEnA+
O45W+gLKPGlVHA4PD/Mxi0k0dqY1ZVsUPPuPtcgBoLPbOLTGd+ll/uUnph3Z3voGcDgxeE+2nhaA
/MDCNWSRBIk0CJRHv2zu0VDjgJuPjGw+GGp6QOf2ZsxIrTpBiZGt7DyDUs1EUTK8MrfVZA7o27xG
ICAYUGf2Mew+Iep2V8XxYb02QgP/Kr2YE0kTxNll34lvGZc/rgOvo1ibeDulRFHYklQVwRYSMlGE
iQ9tqQcROeboQS/WfJb1U0GGz0kHADiXehD7lwtQEvLLoIJj8i6CcUrWAkbXKS9gIizGT2rL4wni
Ov0EHkrh3+JdZeQkcfAiOgy628C5ggTQFzhZU4m3HjK07ocnIOKy357Okm4pUurNYkE3nd2+XF9q
TUtd75aIe2aArFUqYbmMXuo3yZ8QfnJz1w2sg/lIq1WxppI4TMCtEP8FijCQLjQXwyGjrR7dEyug
UStqJQaSOVrvTqRft6V9MniA//LaflRJJEFdLGfv/qRt3J2wPVwFZe5CwfqgiMU8sQ0D7COryUSo
9sOea6cSbjRQP6IcxR9hJeoA5gpt6UmgOOz80sCgUVACI+nQ2zF3kT+v6K8bbya7lWncAecCSeVx
+jKun5dUVCCZWu4PAOl83TGYitPNTlAksR2+VxWdlZ75jKqkW8JgXa0/DYmv1wsctJFact71I/nO
kfms0tNzjKAQVTJ2SbKc7ZjGOYbIRnzLWJhEwmcT/a16tJzdUUB8zr991I7L4FQCk2cFe9nv1I2X
TZTLZBvKyMzU2lCjVtSXoako/V9WEDP7/HiFzXGftfhxbPRUTKKRWWQ7WdHvqAYozOGamjUv5bhP
SoiPPugadz1cst0ODXXZS7Qtm51sumca0wy11HGilNQHQrSF7czQNtCjoWvqNmbHdvk6sFUmX5G9
sQwk//yQFdBo6frWDAzM00JfjrZWLhD5iNMnpN++fMUH95q+BKOsy4gzl/nqMByMyzgBomKbg5iu
IEfmB9ZrCoeYbhHEdX31H6U9GsUg4oEEEwMXrF/JQh4gqQG/dLounGW21fazmPS5NgWvCvx4ERDE
l5dDqeYsmm2iQ2F2DejU0f7mLJs0cpdOvpLofA6WMqSlwNtKNRNMhsjybAlYuUrn2JXk+SWubQOe
zdjtQOv7MDbcQVR4DmRXv10Tc+bsBL+ndj71V8BEf0OqMnJuNOm8ZZee3CQBu5IKcqLvSPmILdZB
DvhN8ruCQ2IPY74hgtlr8S/zbHd9beKeKO7Lq9ZRyKg8U/zuMvYLcOrMDLgZDYSlyBcve+3DIQAx
LGQI3+csdxFJald3jPz2Wg0EdMFhzysxnLZEHNhA5JdAM0qNp6yl0PUG37J5LZy1QvAvGZcnJ8Ak
yxRHjJUQe54t42jG8WTf7cbeLR+jh4uMxXQMOSuys2iMXxG00FTkzO3sO6HTuJWQMMyPC3NRku4F
nQOCpZleEdulX58PGokrfDyzNunHCEyGIfl8+9B/ZV607m1Z1fJv5ep2R9oe5jCn1teJ+8NNig81
YKlEtUtDk22jxhYR3QiLCwBzwZcHGA+AnemeyQBI/lVuK0F1FPYzUwIXoGpWBfw53C3oaXmrJc6D
5crQU6ZwYVqj16lNzfaicgbZPKDrYQsl5sCm3Cve25hyPpDM8OPQLHYTZWygX8KTE+LLxuiCaX2U
HkK8AbqgjrfrGnCjP85qdDYI2gvbHKsq4Z2rOc51MUi0WV6sfehI92cI70tEe1YN26x535zfX5WT
Iplip00Mt0zmWo97aHv02u6VSzXdiYD3MrDMy24WZCuF/5cdyPhpHMpEuVtcdLXeabeTfNAJ+jDf
e5rU0l/zCD3+EdhIL7bsFbzdArhH6qkk07LElHq3zSGuEqYp/ioUgYBqRamXscwbj82XHQQ/z4rA
M4cI7UyBOI9rpxKmdHwIydFt0VJK+c7a+j+3UpWXtDttV/Xym7dD2Ev2al11NlAcHf5gwEo3fIPg
klH9EKFXE9h67MAZLp8Ig5Ej4SkZE59w1tHRPAmJO/cSiBZoLoZdCp88wuVCxjT7qlT2oDA+56Rb
6635TV3u21/rovXkgda0YIRlvJKuZj42soI0TZpD5Gk2H4swluGaglyPwfES/UmgZzHsyI2PM24c
P33v3Q4Gw2N+bCTLzBGCMGTQicGAwfKfFyAtJ20v4uz2xootdUl+1NfjrSdMgVBd9Msme0FEZPMp
SVIJDgOST1hPAUwv441ZP1OV5QLxUOa+iScKvXLSOe0uCfNqyK7mR79gxxrEpntGi9umZ4SrmbFl
bpfrl4s6l+JvUKUdca3Qj7L3/n4SvuS7osueI5b1YfA50S8AoqiK+J5wYQi2omXb8xiGFb/2wCJY
a/UGeOywq8kvd4BEAZsSyF5/qWgNvdpSZqQWAUBfhf5R0YknUmylHU9vfR9/QP6ao3hKpwV/2TpY
QAMSMmOUvH6wGopnxBaHVlKceWJ00jyg/TxDRsBzMliKBUt47Q3zStcmzsfotbb1Ma29zzctknLT
7m+ZbTDUianMeKa+5R3lbmAG9WpOs+aq34mzkFnBveYtZZPmfcqcPP9caL3SDpano9FRWPD6BQq/
RgAXHW0NwJzA3ewtWbC6bkGMFjkpfRiFZoy5Ni1oq/QejIbm20qu+h8taudt47Lp8GVLCGFbYqNI
pW8jJyaEfuGUZOGQHxsxKKBno26H/GmIADyVfOebYLyJrNwkNbtutoTifYoqscWPt6rztAcYF2/a
a7T7nrZKudGfc0M0iUtv5cUue1MRRJ/aWPeaHRgl7GL0CbNzJBhB1jeRoXPzkBUybzjVxNj0UrBx
gs7O4NR9bApOr6Z3c3axw7gMtouPGg052w5i6rJZZPp3/KOuc+jI6Tbn9kKQ7xYi3NGPQ3xJr7M7
vU+H0cOr8wzq2c27i1wrzlpRNPNmYQ3eBJ9jU3rh2eFmI3d6QASB43Eg/MST5OjDEKHU5M12r3Sm
PwwJaQa4pooj2dcV0t0kbBOj4PnHnmNpDwyZBhrObP4SVax/sriy7m301suNcK7CopcUTdSR6r/G
M03yFW6MDQsbsTgwdsljbc9WU5N/xC9zASSzMPON9uQJiYNDzzz3eCOIAvmlxWdMHiX8XFIoQFhs
AIBynISS8FCkJjkne8zskGK10FAcIaYS9g6y6pN35jNeQU9nS7PBSN0Z+4gDGZ0q3ibNe5P5XziW
x7QIWmZXs0KyRoktBvXfsrxCDUeavg9hfBOzrFZYkBTdJ+vPkqD3r4h967d/krB+TTyzwce9aQnZ
7gQgguv2CIQNeI1YZ+0m+79a68eBTTKQOi2dc+ze6MhP0Hzojmk9H17T8RxlBtSYjT6c2pM/kHap
UERa2oZTScGdOlJoxw3BcoZdCjajQzl4U50NUAZJuM5wJgx+38EEwrQxVBDd4Rnssv030jNfDb2/
SlDP9oATXgFV80bkJkngPrr1i6/z8ohKfQp+fTlfcz/2ZjGNcrRDgRlBUztTjO4mCfSSbVXlE7Qk
ZG02KYG2ea1cHeaQKnxyzEj3ZOJNJ+tJKeRoUy7+XO4EBzZrFTLj2st9l+v4dIRBtUm12CGjnt7f
CNzuoOfRhD5JoH2Ts5G1AXI6h2lBl9oEBaOFLPXO7HRn5z7sDwMafef1rTfRKRYXEJvZWGuN65A6
j4VyvJOO0+9BomXTDH8E7WLT7n6lbzHswN9G33RADne0aIqRWb7f8s3H7HwVyutP+VbYQ5wNdazK
LLqXCUkuZCs2NlfpnVKn6Gpcue+XQ9SfjO01eSMcc1fGk2y7d8avWBDAAL5uyDc7itdFzk/VVr3U
LeGBB9sCC7np8JooVQhzX3UuE8SLYwSHlQSWt4tas9D8JtzMlC6ak39IxFFE7r/3khgqveRC/RH4
qN5uP0BmuFffbNuxjNaNGgRNpqZiR9x/1aw3J7srO0O0eBY5vLGcxYWSn4kF4F1M3dD84Je6SmTj
4n+fMTMec43HUKKlwix4xBd6BpO4N4acvwssxj8FB51gUIe+f7u8ONjWeNkCC1oBd35TCBe4cW5e
/b55jQN4V6iCXKSAYQ1MJp1ytS3/xPqs+kaGpxLPdbVWbjJpJucg6ML7TXLRmCCx22gVWfiXCPL1
PPPiB3Ckd7mmninWRzRBj7unRZ8h/iQ+hD0ZsSlU9wrpra3Y/3c0bbUIQ4dxail6vcagsnqIt7oj
gQLfHn8BHl6iSoFFishB7TOKpk5RwbYAUz3Y1r71OXHcAmg/5kEiFcFMLJ90z6G4FGUNhkjmo8NY
8DShbG4HERyyiyLIoNmUUQ2lzT7NqUXnhByawlwSrZp2Ya9HKee/ug3RHeP5ApyLJasDzDRmBvuV
gpOfKKKXCzMzc17QemsfX3orCDyDge9IAcBE7brWbB6z2HSjqXWHpuZmQZMYrs0WjReLjUilQG4T
LAw3sh2VGSPSXMkczck8Rmrb2YaSlmmftwMkhsXkb6O+QzLQCoZl8+xRcdR34oLJOi4tE7GNLS0W
LGF/G9HLoc/DoZcLe6C2Xg2Zlzq+cnyulGpj7IJCk86JWi1HxUrAlatuoYVwWs/jdF55QP1kTgD/
gM0XxMYVAlpShgbq8qfAANhjTYWmCck6xN6d1pCtDNq6LyOf/AH63KJHF29+OfbGbUYQEQntULap
QOR7eNWO70tohGpXy13BaeG/EL2U4CWid3++3OxGqte2vLQ8d8WxWGPfSy7DUXkQacd37rU4pkJf
GPNPdhRgyFRzpiWztyvILs6tGgl8V0/drgT+9LZIITByTD4Nnf+9FmvLs4f2OgPUCSediuKJODcK
prd03r0WPBY2PpPO6+XMbECJp5LYucuLlEC7DGo8wmn7z9bLUm90laVeBcqMYIr0mpxE06g0pTuJ
siGOnnYcUzm3MVSrQYbs+uVA/m3pr19vbXBWxL0O3FzADeBFMkEYIoKHRW57eEWg9nC+CWPGToI6
C4OIFt4Qr/ika/m8TGZLekv6OMwCGDUY7BGOH8s0+Q0/YS0eeMYj+dB0AdF2IRp5cTOT5h5d3MVZ
7NeyMWTs/q31bUuTNJngTqVI+AttglfKvQP/3WcMJprQcN9CH/vjk6FL9B0U7pn7AhlC5xi3H+Q+
V+Dcxq6zZfJBfYvt087S79v0rO/fKQXKhdt/uxDSxOZUymJIPj9ecdnTg4mP6pF+EWJTVptinoI8
k7KliXeh8qEqFcCVoN+Pi5/2V1ZxjXNs/DAJ8Rnrg7B3DtyPQcZQgSsofq/kpgdrifYJGrc0S4hP
5nivI8A5hZ6lQ9D+cRJHowSgOHQmNJmolc6OjZiwkuwz0p7t+KWyK+N+q2aJcub9SmsSN+lAvtRz
RMCUJ8iJHcnq5Ug7Ww9s4etSEeY1+ni6C7U5pEh6cIfkq8z0KHYyHikv54UMnf2HbPm+LH43m8ld
NIpgbpJBaSIqfgHsGwWVddkjbGWeOYD4+0eJBxjYShTavkmXqAnavYUeYUsCc4qsZhBX0ZIZahoP
6gYYUlVyntUFnZLJfvozCcopxIllGkMmobeuEELlMUhu07lEi6t4KMDFSLS897MqeCGXwK3Xy+jp
0DCs4RrHTksmEA5KrZk9vOiUSQBKXdtHILqZLwO9h1agcg79FRPLfA9eGraeKcPrrYliWYl3bWJ2
mMMJd/mAQEYqFU3Z1ClW1krUmDdlZculXiXdFaE1ACfALVvxSe8pMHMpPFoi4q752oR2Fedx6kKp
+pMxlz0xA3ACAirhYSc8NPOBknRtXrENvvPyWu8qN/pevFozd5YAcvUXRUGcNi+p7rkN7JVQKEWb
EWE5fC+iu3v07AkUnps8QPvVFyWFyeeHyRebrq49b62CDy1ZtRfX/99PVgwAv6JhMT//svKE8yv8
ddunTlt3UaefMmZdAqZeHpXgkfUvphlvtK3mXR1biirqtERbI8+uGH+uPX8W0e2ncfuLajslMDei
ncQawe6g1mF7Y6cjou6wDV/eUZ+0TTGZnP0Y/jY2AJjrdzjYOXVg8hFI5DLMox1IJWk2gFiHcFC6
cN9F7Sa7WAM/Dv0rTcyVZdFETfcdB6cX6qhLg1KxopDY6t+d1+c0vVdHjEzwlh5symd+23y3XrIr
h4Y1vOd/VbnKi/rUNRXTL5rL7ZyMvl2LhvLjhkyzL27f9VlKERF6aqOKPfpCaUrxpuHVpn9VDqPU
l/JGn0ofQpoX5YcakdrTE+br8OClMw5OvFC7Ax//Q7jGA31tsP677S2V5WcDyQOkw5YEkudcvwek
7o2SlutJdq/u7q2iO10ctgTuYHNnjufHwr0CpdTHUX6fqC7ZUGOwiDTzwRI/hLIz97/SDFwodgkc
Y43cUxgQD3DDunlgybEvxaioqUBc0VOr+TPB1poOThpK0AI2DDjlYmTqE8lsjTTnTN/jMDmtHwsn
61YzF00bcoHZDUV60O8ms0sfDrw8lZxaQp8ZzaMuH9+WdBrbQJhJ6nanoaAPy9s226vYPc1m3yo9
9YwtbiNA2E3sCJNwhH7yHC4lRUgv5wn1ndOyqnhG2KWiJgkVf1/qxqX7QZ4TRqVYkTcPuCkLzcNH
yhamb+x5DBOxSSG1arcRcZSAaYZM6gYm4vWqxGeo15PRJZHrZ4DOGq7TkjZqq0geCGNBHbR5vpnM
p8w+Z4Z6HDBTLusEn5ereCu8rqNlOq1bl+vnWpo73f2FlpP8OQJj8v+/2mSYxa8bZtBFFOBf/WEJ
9MuVrYQCuplxZwWYuEUVIHQXXoVgbjTFFicq6VHNP/MtwkncrU7j9h/vWbSrwoQjEhHsLT9iW0ug
I5//hKW3Hqx2BL683tmyJKAwzymp9DoZqcpGAtPKNi80doHuD7kysocZn+67HDhlnprT8Yc9fSqH
7XZc1ZIrT8GwzzzY4cGRAZVqrSvNxbN3qX/TSCMzuaEnqb2lYY+JwjuqCQAsLw0EV2sOEfHyv2an
zmRXpH/tnb0+KFMlY7UPyLIQx8p/dYWfPJ57//DFf2PF59YhMe3dPRVv+sPBGUBmfFD1UDb5G/Fs
mJOx6lwVqqAM31BbPuKI3bMuzTtYOTsEKYPXkt84oHNvIx4kECvJqHicYgzdiWvqG1bw4rQf8HBO
7Dz3LfK9zdrvRHByfU84gQsYCd4xypAEDg9gNp/SHrQa3WWuyHz2RGMooIXyrirfCHdN/MoIGjyJ
3rpjeUYnx+Bdi1qwQbWL2CJA/vA2I+uloLxl9c1gPCRnxccG4kYS6MnBEddP2nzwODNybJyLeppJ
DM8n4Bv+W/aQMh4pO2o2UeelRM3lev+rXefsQWVUWCJQN7vR4TrRbxOg1Uo76ppfY7hp3zA03eaS
N1uxYMWJs5qkp2HlblyqEbt8VkJfhKVzuTXBX3jZzN2BDpc1D0tjyq3xO2Gjq5ZJ2PaF/sN3Zhts
JKR0GO8p7fMt0Vf4mlVohtwMDnwWlLwaUBgH7CWnyJYMpB3a5A/BCuVkwogzk/UgK7UeS5icNlp+
ZMUSjPRKXT8v36lv05XTbz/5sjSe+lwMOBY/LU+p/dgf17ml0iwMeCOYV78B0tHLpFZazJrIj7Fx
dnHh1lnEtU+ssjPusxpf5LTQhOr7H3BCVZoglgdC2JxuTgJ9zk2+9NWoDGpHaf3ZfkWcyG8UYhRX
aPqiD4u9UET1ciNOFI823TxWsyPqhg9OjjNB9IkLHeD4pYKONYMjOfdVteDIpbspyTK8YnAloOHD
P9qImeoTx9gaZU4Xl/tz/D1GgQ8tlwXfDYHjeUOJrPmBQdB+jUaid/EU8f/wbgam6PpSYMfqgPh+
w8CIlycP8g6ntbALjF5ghK5gEUaujMXcrXJba8J1vBEHnFY7n2dibqZKRq4RmTMh4jkiKsIhQllx
xMScJSiYoJhKlkvANA+DqyXihPMy7XZA1mkEY23cdaOFiLl0ut5otWqhDOeOnB0o4xiddLN0euRL
iy66dYUK8zATecbgHT9FjxNamQJTPvIHkWYdhi1XWJyye/jgwJfy8TPnbkL53zQQ6GD3juk41rDy
xm418YOGqIG43+b/PHQ+R5M3mFRh61SHsgOAzNEnc1fzHJxZNQ/E/1ZTADwHjCo+sDojxfDVMhGI
E6X7BYKbpDNC4h5zOvr22+U66+iy49uibAsjmLv5RZ+ef7OeYbZO/4hiNu2eqFLuv6xNGI79Oqec
K0PX2bodthf3ruVvYTWB8csvfdx1hYEV/PmerCay/A1ASZ+I2tWmV9uRFguxH5evMjl1w2iO69C/
wrOBcyWHNjdpySXkv5naLmTGAMZ/R24giy10QSC+e8faaTQYEyJYq0MokcAcLmU2LbWHMtvor+Wp
xiyyQ6GyJ4mWEFAMZtm6aUAPOdUyg/n1Hvx22v+8GnYsWueVdm3ji/pFaUgMiTrYkmsnrMSWc8aU
dilNcxCsFu8eVLvz7Tm/46cfDpdnqjsDyVuaw1y90Cqo96dOp12egKx2BkF0tiRtcjCDXzFAolu4
o0ETLSYZWLaCoavxDtACNtPlfBUw+aFY4q1mxE2V9v+T83pUk0hYV8ZbKuHHrtU95GIf0hOoDB7x
eexSN0EoMO7+30YFsllAnINOn2lIz8lYK+YbGZUnKzCpeMX8ed9Xwv4ebvvrEAJq+YkzXcPgOrqO
Bgo9+//6eJVNMo1KmlpGHWn3hzppJgVMWJVldMTrJlKqmwwLjtGxd9zyUZscWcNfyQ65bqBiDR3B
xhBduQPgBJ4bZwQCtW02WXJO5cYC9wBAPsSyWpFKnn5qEOGDC4eoiYCzAVMlv4fDhw6OXM549XpS
lbqQI9BpIID/2Mp3X1ceKPWJRu11mJAkVe9rorU1hxXwX0YGXNAhcVsjVTBUHAee7r8NMSYvOSH7
JdEXlwvWyboqC8BgxHBA06doVSMskPTQy6v7ShPQCel/ct40O/WSN63iD5RnUrmrEtYkHMM2Cxzg
LTul+ch1MRTKgexjYptxx5XHuRlCtmZq3PnPXd2kzNRbKoKpB6f4TXF/iSZ1DvOrpf8JdVVlQA2q
p36PANBtD6MHvUnVurpQNXN2rGGEZxsFlhuHB+OuZLGu0++sKR0Tyr6pzYk14K7YlT+2iiNQUZ8z
DP0Rwn1caQTmI+35+D3ZIRy8o9qiIDiNZASXq81ffOZdk7kK8wuIwvVJ5c8kacQSGPUqkI0i3tZa
2bODN7Sbhxd6t0CRv/Kh2ymTzL83m+Zy7wLwnXMdg/Y9mEoTwBAKderOBcLMy/s2ZZPSSowAdGm1
g0hDfNnKPxlODrODM46UHTKtIaiLPSPlwQWt0xgyE59Y/lu69XTvFCO+3mOe+cKfRU1dohPGcfVp
JDqvtGmOxEr+RVUMsj9Fdmo9bSHfKCgwYg3nxPLibcXpBkHeZrdQPwaGYHrzVO+UO8xDTwM39nY9
UsdIxxKWgfuY6upBOY5Qh/tv0BD3Wh2WtmALF8wfl3m7YVnNw/8Cqi2jfIs7c3VOQeCPUo27VGsC
L1AlWcDwWukL2tGVdt6sS9DLLIzWWjfilawmg5BfJtQphgYA1noqiAY7YEnizfnNrfJU/x9fl7y/
RiSrxJYAXMea4veeLH9n5322QR1i8X8E0J699jS01mRi0OZ/gh8aSHLsMoQp+pVaqFxExFSZ1ffA
uZ7HzAegvmYp6+idZHrmbp3Ay1GL4BGaB9OvCLIFztKzUDSZxapGCOCzA/lfRHVXIXU2sIz55PNj
X+VAkSOZcxbmoTKI8UoJH82lS3/AWh0zyx7ex1K1I4DrMu5UCx3OITt2tKL9HjPL5iR87PEjuIGg
EEfR8p11fNs+ALc+3hdYgphWvC+GP+KLALZNEhD/GaZkd5GdP4XpkLTIbbCnj3EV5ZGtpTGl6tyW
AlWbd5oy2EkeWkto/0Ng8g2XeDp3wPqavw/T8Y9u/l0gR0bK6YyniVszNWDag70AcYbd37EK+d1p
rT532sxkOzUEcehe2mtEygYEuloQcWidZP+ey3pM8HZbEMPvye16zFnY94WUUJlCqqTkUp6IGFFE
r7zzWWahx3VZ6hMpRcfbtBa/gPSo6KsPd0WyaPYfERPFJ9weM/QajKL7CzxIhtweDRKQ4AjcigSf
6TWmuc1iac9ywEs5YnSngSoD4nHjydzj61Dx01pehpo13PDWoVNL1bsjfZcGCzMKbm0GtxpdxsGR
+LePq849y2G69h2kJLMvY9oXyJbDZK8VDKCwOhUfswFvmZdYf7dtBaLSahD07zmOesjCKQJigHHf
U+gK/j06DoodTMVPT3ZSDPJVxp0RtGa8MxyDidf9dZeyoXIKDGE8udwqsLDteYImO8JFNUbs1T2L
h57ySyVRSM5BbXwQ1wHts7CzgMHz60zLpBDoPQSOrNdgQdoxVXc9+i6StLBmdjkJWvQ7dwYZSKtZ
sMzXraes60ZSGPSpaRepBjkjxmLE3Mo7UE6Svyfyc6E/kjzcabGa1CgabIKVV/2avyKTZfa/c1Hv
7MvLsD5+yovey26YFHE2+DfqXF7R3UgOdcym8eIYyHPY6yxQ4pCQITvwHnOutHZq66crLmL2if6h
5OqttJP91JHAXkPr8JrCbPMrTPJeA7Im/gx7NtlYO0Ei8o2KcjXjXKqVNOj/AcHl0RW0sYh7dBGd
t7vspG5g71K0eSeDXH468cC04fzP9GomSvGBMRUhzGmQ01HNw8j2BVnYG9RMvszVA5goD/HI/trG
jDpAGSamY1UjEEzQz56d1XXLvgQBVaUgx9ISD+QIgx44BN97QWuoZhnXwMRqzoklz+Ou7oPZKKAS
xQzJWcvcrsnFYHw9IlcBKGNZY8aFmEW3GJUYgexrNd2oYg0PJAx1RJi5jcTtHCrucifLvtIyVl7+
Xtj6dak7rJaqK7nK1aVcgsmxyWIEvsA5dMSj4TL0zgcp51Z4jxOYCWBCehdt7NFUvqdln3sfZPCi
i0J0t7i2/nVcocuipJVySZrFA+O0VaLrCXQFE3FEVymXbmPWCVPrbpuHyoRgfhGxTHRwcQncDO+x
a76UK0mydcSbz+S8a+WpDToHWrKxvd5VPzYpPZU73WMkNYiP5C7AQRp59k4S0JrpVSOznjCVosg7
BIedeTBkNC2oVEg0zPgCIQcZpuC9uF4XfI7xVWgtflrBZ4JmX6i25evfrRNgS+wSGSKO2UaBT5ui
cmhV5uzoLakFqM9MZ5h9njEFNiU/tPHnmOY+UdvhlXzJP7z78uTuYLnwYeZTE7X/pkPECfhjhcTc
NmJiaZ4tgwzfVj7n07aUZswG6AJG5nQiA9RTCQ+zu1RF4lye3CtwYDhrlxKgG9MJrQIXi9CqneUz
lyfZ9XnWhR59jFJNSVigWnqgithzrXjoIyg89g9T1TcCby+sE+WODMjkwwRogX99Dtxb8F8aZnHc
bpZkGWr6McsR3nVlXFVwzgTdORNrgImFQfrcwOaJHvDMkdD75F/WPRC2swk2dYLM3UWdebwklFUq
O4/bjdbKdXL4jccHWcsTwmqc3ZWJyuZbyNF0NaZTIOsFpqNyn/5Ru1PYXYeJAKeE08O0J0g4pgYT
y3hiRn9oIFyP4UlntF2FJOJZVLK/HF+tlU6XN+x2C+ZJqMuVsyK/JAFfkq4rCbyZOq3jS4BLHCq9
mF3ABt4LZT0WY/v22KGu1BGxk1RGAeAOK9qdaNtvHicH8s7eZsGy9Dl/aoOMS+XACdAjqR+a6W5O
khbJyOHD2CMNx18pkYFkzylmabipESmwz6yjFqW1ozNtc49fAQy0J4d/740CkMMKhKOb9EGEYkzj
FZeru5sjBUuzmqlYzsGlVuQDkujfcGvnR/zrKVKEFtbYPOMMWjN5hhTKiWSR3kddi3faaJztqXzT
80CMVlXFR81Yblt/ycTQM+Oo87zE7iX4Si/S0nVO31hvrG+ZB2sPY7cboT8Mh4A5zjDh4UJYMSfR
HYqJ8teVhieRguwxcNHS1wbgFaCLcwEKF/fKEHu6NYH9p8tifHhVoFAjqtTYMqm7eMI2DbqmsxL0
gAksyO+UJlT0yDFjnu+tSzbzCntlkbjQe/fSYMxmUCm7spJLnQPSSI6XT+pBl376z4C2SBlkirXj
llGOq0Tgx+KFjLcVtNPxZXnM+3yYoHEQRZ2PiXVBnNxu55D1mD0Jlie1Lr0enuJz9SpZJRgb759u
PTC0dCSfGr6Nc+fgFXgdr5iosU1gXVXKWrnQX21jdCWI27atBwzF7zobeOFmY1gaBp6JEBWhH+eB
nckUNrVWTFZhFbwkMEOn8HSshgv6arpLpgGKX1lftGLebDGbZsuPNnZqRIc4kPSHKaSNtRqlSgMl
CtfR4KPVAe4jfmWnNQoOs7VEIWAeU1wKWX2mNeJ8yAQ1Twne6eMF3lDySOSQ+oRsM46JtWc57wcL
VzghM2zvch70mIBCQzJwyhmmBGV7Fq8CTmEEtRO05Aa7A1MzvSltmNG8fpOqBrK5w0ibipNBo6do
9wYO34Dt61NwfMyjhFOQmzM0L3EV4WrkobEQQPTIv2qrHcwZRxjdfrBbQWG37YMRkb9Oxl15bPtZ
XwZ0Rl66/f2LnbvSsW5/fkIdAISTYpjckqTufKz8VNEmFPfMTyy9kL/lZEdwnlcTeQgBLjHh8yGX
0SPu+ggBHdKTgmygOzuqQBtKOH0TPuzN8X+6kCIQkZjUNwJZUECuufqqIuDNvT0cF59cw/S4r6r+
CuK6Ht8+QaLd7HdPpYVkNkmm1nwa5K3wDmgIcqy8wFMzDbqnKRonJX6YfLccjCHSh2zU9XDHzZ61
LhtmoXFU0sxLPE6DwTtZChyFy1RJLeH+WpKCaOqlv4cKM/TsTthD2krafAR/UVXp68qtv7bldAeF
UEpxf0Jsohxdk6g6cPrutebGtiY+OKrhkVF8cjSnPfVSX2M1UfDi2QyLYGf407uvq21tFjdkmPyQ
IOW9bv5/KgVaaZwtcO8AfbmQZKA9xg1QkbI+o/hNObwsWD9vF2NPsIoma6E8VEpu/HYT2wgwrfMK
WdEB0OY8PrMc9hrOVUE+PNVHjf93IeZl6lvJ1CHnITexVhFUTm0tHaXbZfevuKYU+9XQorpHnBpb
oSIsNKXilHqslTlyWm5ff9/M7wUhpOos7bbFeDiycwcbVoqaucipCB/qicvzC+C2oAVAVln0iRDe
wyesfBsddqDH8uH6Dm7ORWNDEqVyUsiq8JSv9pA22XIBgRyEy5zyYyW6ZUIeb2aN5Bt+b3t7vrnR
0ZFQrkFEH0unK8jkKN2bcMcmr2c87zx1JVVM9bzh/1k3l24VTAOnap2xAlz6Nw+Mo64zi/BMAc7H
Ge+JFccl93uwvcit5LQg6ejYfpGIomf5suig0YrlF312nldufw3jsix1645ugmSTtSLuUeqcUlUW
DC6+jONRXnbaqzXqwKFD5gLvMDmxlmw6SdfoQdu7FpFxkPjzu3TkzToF8UcEbwy891LJDpOrfa+9
ly/HpYZydv1bjWnXtlEOY3Ot+3cuTutN29Y9De5ucwxjnuB0pJyOA07+4stj+BZVzjUruGn6ItwA
HBcOvO5AV59QsB07KVhjW1xs3DwOVhPWfXrJNd71vl5NOd7cp64f5FNyiIhnJ8nx42Oxvou/bBws
N0ncN3dokmZdpSmXk4O3tQy4TAai7axYA6fEoJ/Nk7T02aBZcJkxSl1yK/xgBkO8/AwLHKL3lBGE
BXChaqEivk4u+BNphe/UU2qpNcq0D2bTK6d3gmaaLjsPH3KKbO5GVA1ctVFLlaQxA6SMLEdUxaW0
CbyckeU3ogcTdqKPknujNBvpE74GhHpSA0lXYLj8PljwJREk901ke2gqp1mF5/qunUGy1jxxpm+T
TBBRPfCOWzSDqdpS8Oao5A0OwFG8n+QbagYghXOQXbKoKw5SVVBP/iX7a2QOw0yL3M5XNAAO4xp2
oYmZw07yuZd1QQ+C8zWxGjX65b4iwvuz+4Ff+z5XQP08kngQtiuJmp9vGRx0pEkmYmvXCFELj5K4
ZwrzFgA8CW3d68C5ZQPRSMSTF4irU42177Wyo2KOBboIiAwoSJp+5LgEeLxBYll8T+WbvsClm8jO
jpakjTPfJDT2MMApkNlvXFdzXUoUKt++wC03t6PmACDMg2FG+p1KdF2zYoNEZyvAnMZlPhzp1DWy
R4NLMjMrNcVWdrdaoKpS1JkUlUBZ0wYFFyBALI8P1NV7Kim1VxaYXD2TBL8nimCXEAppEEi2z/P0
wNT8vBsSX20vvn/8eggPdinJdEA8c2rnUH2o110z1eVnQy4gnHAleyuxwbbCRk96h/pKFtJIg+bk
l1xwtTrP1FeSvlF7vO+Ms7ZJc3T8v+ct9oWbn/qmCuDrnEcD2cxShamjU+H4+5ZGqmb+3DF35+tg
m+WpWapZduWNfHp3688dWcFaH36uUY7+OIib7P0m2O9hHo3PAgsSI+8Mo4WgQ4cwWIfjIla2sQEv
1yHfeIVUeNcKzx299QjrT1ZpDebQ4tkVKShKfl+eCB7/6b1C/0V+kt4thd/e7/Nn6ZrV0czQw/7I
JlPlIJt0RIy26wSZKiuRnBlZj0lsODdo9I3TQE6heK0VpL1gKCDp3JDUvyLp+mr1lqkax9uK8JR9
oox1n7HOK+PkOyiO6LR0VtfgVc5AYTnNmQToY71AG7OzZMLcEYd4SM20KFyEOSGeVUfEfl9qJykn
KCD1XgHg9Fxtn17Erd/5tF3j3QiYOpNu3TF4jSlu9shIuz4Gg/amIZY3fAddEz35XJZQpS6Dkbeb
b3SWSyOfKtVW0PK+mubegh4wX1Rygq6VRVactQFou7H4Ec/BTKN4RuK8gYhwGKR9OhdJV2DVxGKR
Lbzz+nyQ9ssh1o2Y0Rd43fb0v8TR65gMPde6asZ8NrH3XPrzHjKp6KCxoV1wT0dy+jKD+cJB5Bi/
Lcgmccq0LqLLegmZ58FSdJ9PlnxBca5of3uyk5nxVaUanMkaVrezOcbQFsDkK5bw8hi/lSSvjRit
21LmSXHFtXLgdY+ZwEyMpT8e7KB9JmnlTwJJmwVlYY7rk0kr/VXYJ2LFLG1sc73cZbSpWVFli67K
A1WoOL9PZ4lNim/N/1+6ipYIpkn1E3FonwKFGDfgO47b3vIML1tIQuAN99lmbbfiz3lPcgIpUZxb
hmPUCsIr8XKcQW9UTxxLl7B0FQB+cc+4nczf7amKuK3Bm4atfls7SpFbYrDDzDkLmsPZC/qyZddB
Crzb1gAuySeM2Ny5PLrmg66q3YSGdqGNY5dOXF0X2uZ/5v+wt+XG7j3NS4D1wzX7AVdosSL6XL5M
VtSEcNl9tRejN7OUmMI+7su0RUDZQojAcYXiz0q1c1/NbmyXh7m1w3mWE2NPb7ZwSCqRcLBK3WkD
Xg0etNucKouHVTTLeI1Av9+I9lZuxv69xpWZINN4iUq5O91QzGu9qYYBysdvK01gqi8eV93qis6r
gNCsphxLpHEdlxP1TEiCdxYAXxf+vDhidR5hzAy0DZ5Mf4ZY4Hw28S1BgBZ2bsdSXCRwzKwDv5BD
NStkgq5rmLKp0bkECG4MriO3DBDy/j/0W5veUL7bAjCVLidwKJh9jpw8xp9kf1SFrVJ8Q33+dinf
ClJy7fuNqkC0mPTSDDBDXHsicgrcyfzNiMv++vhcI/9b4B2ApJjLefcK/jaOvgO9oTsUBfWOTgpJ
BAPr7myo4EcLduHYLrb9rlG80HW+u/+sUohxj2Zrnefh/mkuFLACGZXhPQo4TCK6OY49Oi8AViQS
RaxS1nbcwHQBt03jZ9xePPUg4gx0JIiQ13fSdXsp9OmtW44U2TrMZ/3xxHP5OuR7XJyAUOpGKRFv
P2Oz6nEBCZrgq7RB2lvkkWlmvtObNSWtA1oUwPIngviVvaN0WPRmwyeAP+lWnbBjgS8+hWtKBIyl
OSKItXiby0WNsitli26e2/pLmZAScDJXagb0j+4FbDwnm5EnMn9+w68aheatFCSEJaeN3gQ40tIU
Z61frzfAfk7d9WS6FUyEk716HrSO0YbqyGafUFG4R821iwtted7EIsNzFphQtDN/LydfmS3Ebu1F
ErVMSJqmL2zz1p+zG0IgLlUeHMRwrGsZVDp3FYWg256lp4vtSW+4xVig+kKrke/7qb9u1lJdlS5z
uX2mmqXcjIkYDSZy2Cx8/03IVL6VxUD1RwUIchWFOHRDg+QmsWjbr85a2G6fOM5CBk4PG4aYUlXd
dx2UYtu3i/Ag8oxQyExyAQpuxjLfWYzDHEJhjq5EPiCzKTWeQ0+IwSg3b2Zk3NyjRSkEQk6xxWyO
T+JkJozYfnequUfTj03BeZjaD3JTHMlcKiR389Ov2MJMODrdH9WSmJCQUaqEIdLNRIvEvSvml1Bp
ZUibDE8Qzd0fgnYhN99ZRXicN1FaVSLgs2jsfXQ+6J8RqkxwTNA8ov0NSwl4felGROlj6b6wCN8/
b+kuI8cPVDnfWwwqENOnvR7y6AhPF9pW28n2py9NqGK6KGJMXszuiKR1gcQJeCzLlEijh+E3Hrg+
8BxdJjLVbb2A/JOT9JZk6qXYfZNS/qx/tovAq2rQwMrUXdfl9T6UxdiyQO+6rK8GI/ST1qkap8yI
brJrTquSn8+sXNqRitvQAAFsdziYpI/Q73OH1mpzD08UAf0Xl4rW7oMKtIXQZpWzOUN2UsDgouZA
NhPHhcc9B6vfGRcqxyozCXqx5hXB06xQ4lTlwAGinke0t7amujst/3t6pfGEdVwkdVmsVkq/QFUh
gT1zslWCLPKeM13LxGfV3/92948a5mIZpHoi/cAl1YwTbRsPL6ADAcT9lezRrXr0T4MYLXGxnDOf
EYcRBaaL61bwRLHY28/9U9rdJhtthfbMRWCSEf6apLB9KawflvW3u0EJHGMzxaFQLdpPbSio3csQ
vntB9vsZCJ3+h/XyE9HCu/AxKIO6zDiTBxHsRd+yg38RHxspkjoD6d3S6ywkOhIpl3jcmTuAeTaX
8qJg4vaPgAEBnwj8Q1RYw2EgLqukOeHnbAi7/bxGN6ximHDBGkhPL/xweeJqx1wXzqgxeGMI4QSS
AQ20wGzITIXnqDvb9CcAxl0B/7yyM9QNff/gOUQEbpOIeK4qIR53fnpNWvISwiVzTURaM/S/e6dF
ECDRRmz/TMgU9Gjg5/OY3H5Kc8YoVFO00Jf9wyYxisRgm/3olGLCaCRMsok/vmjFEHTQwblpEZBX
0vxlKYdIT7OCUbjm/iPnZh4nkRiqXswBX2p0j+TpIpl6pbXAAmW2mL8D7GSXtPzQOjeTmNeOjT9d
HxZaELTZdc0cZzcUHsCCEjraqJT4Ut2It1Do5DNkKm0I+k152QR3Hp1nk61tX5z2JkvesYxYgZTl
HcRPC92qBrJgSlvkBQkmRFE4icKsNl7Kv7oYSr0Rd8mxCBPTh5EI9TNYfmK3nnFG5BUekLQ0bv8s
34RmFsMtGvfbX/XxRorAWWl+YhXWhBBL3S1ZdJHHp/mJkQE47izuP6zrvNh+yNzA+t2xodHrHiJr
B3YS+n5DBFE0yexAAwCbF0I0k47TRUr+m/OL8gJ1ZsfdYOGYWAt6nlsttRLr2xfo1KYeDWXLncS6
v0MNbF4YzAGuaXBWc/Et/VZyoFhfZXWZmoMdGEJ2JYmq4uXAZLedmduZ9h+XG3260/KkG9NCZ1m+
KmNW4wS+xchDnKaR1vAQv0wwgDv3xFl6VHhrMpbDJuDbgPagn+SvQvLx1XN53EuJWZUJ6LPP6tRk
TT9cqEmD1Z8taS14Diy4sjVyTIb9zC9st3QFesNeapIoC1ZJQt7F4XPOcVNBqj9bNBY8hgDipj/R
lOfYqpnjrbbpO+9toBFyszSwSvOTGhNy0o0jxjyB1NoRUzxO9mGqZHKyimYat5pGwYOdPJyGoXWc
W4sUffSSJDzMSrEImLc8bf8D9QKJ0g+uKfbsDb4wetlZHS0fOtXl9JJewiQMYBX85c1NrjZ3sOL6
G+yGPt+cPqmJXQwQUewMcBM4Jd/fxX0F3L3XVqymtqp4S9usn/UsMxL5UOwuYWubAOzHFCwXG1Tu
T+LkMwmaSVm/A+po+cnGMBNeBJDpGgJN645a1Mlx80Ix4h2UMZwpMGzdOFTFCbxclEUMVFJeh4Oe
EU67ItMTJyKwvGi0AtP57hROPxUwmCFXpIsL1Zi0c/A/gFS1FOhYiOaKwCIpxqSHiRdoEe5QtZuK
ArGY2FuwG6F7AMoK3EJJQ+aWz1Xs/4CQ9vnAPW5VYwy8YMsEVDPF3EHLT6fqNQniHhLdsZ4gV5xb
mKSW7hUdDGLoyr+ao6WApdggzHQCY6f9WGcaFFm7gw59gTcQKTYhhTlF6hWTj0myRXuD7p+Uln+5
4vlNZQ/nk2ikgFbAfz3+tY8o65AviT9BjJaYD42lem9/bv6MkJSelIMZwZiS+n/VC+fAU2irhCxx
ZC+VDLdY7k37US3Ewg56E8aJd2LFLih3BcDf6vF6YRaJt9fR51n5FPtmIdf2xg8AuKp06WzPVxAF
YOczo3LI/4t+f8ZbFk2flv1G/IaYhlO0Rg7wA+fmu0bslrnEii/W6YcKG0rIuNjnolpX3A62UAgk
E1+phKUAOCwhTS9RFEjzqBNUTnUgWL48i+rjxqNsmhZxGNw58D8sdBqcOaslLT9oTPBYrQ+HJEBY
M7UrXhe4aovvDnbh4C0pvIKd292UdIzyNe8lqnEP/FP7ttUCS8FJaYxEcTTEL7ma11VxCU9lrUxz
TNVvfJtahAOfUK+GJ1f1ydItLgL4UEemJ3Bbwhd3T+k3Gsr5tpDmB44VYw1nlVBew9hHbTEa1yoB
dU4b/udJd131Ppodl3ieKgFL4a9M/FLP336n1CDPvFdh45NHdPs3d2TCOwEfQnCA5sK3i+rdU1SD
0mNgwiEcyTiJKBLqM+mtq87ZIDD+wri4DXTFpw9l0LyhyX0Q4vr3iEnAMzFl4tKLJZInh9ulLGFn
3n6QErYoLSCVMR2D6IKcH/xXqfqhCYOQ+CSmvHRQuUHhnqClOSF+mhY5MoO8GxnGCA+pcJuy4yUO
l/L/ADr/d1w2kMcW3FTg8kE0qoPGMzbkc2VKZ3C/86h6QQGkaRxPxUZNOYgjpkv3pxTWnD1pcF10
ZuwxPZTBlKyHV5mu23aM0Vq/JMUBc+lvUytoPjJIISc03zkdYWOC51LpJBImzr/weXlf4hcEwybB
p0sGqkvGtjb7d5+WjC6nvTUhMthmjI2y0Yn+dFFtBjQRYAdzI5jzOt2CfFYi9th3YPtIswEgFfaE
koSjaKjT4C/tz8JB+BuKkuxk6w05GARqkU/DQEvQFbO8KwQwdpUmPe9ko8OVJQIdV36TxhVjAw6j
0g4ID1RwJl86Tb6kCtSB1iuh6ygpXFmXZA6ZPVsr27Xs9vxzede9Ik8Zi/nP15Fy1snjZ3NduxLy
U2MLyf/D5HWQh06mXicahW2TLHEsH9dyQ2vAWzPElArrBA7+yI4fIxM4l30I7tFYzqcVs1ExOsE5
cqiOKLOjNqREr1yoXHis8DYvO7GEDcGfCLaYgwEp0zIVvIyv6emyKE6awJeYOWcDTjAGZhSqC4bb
H6wTChAEg9a9xN7dMdK6ikOZN1lZRf2sROUwUygTKOpcHMLytUdivSrV7FIa08aLnjDpAKPqx7/7
G+OWfJybiN/H812zB69BdLV63oFVn8PIe5Gx+l2tEK8V0+fJrXy3gzIKLHfNfTx1uf2aH60/snCR
jykask/4rHusDkktt2rvefXgOViPFxorDu2wElSRwPHv+fpsnyFJDoYQPxtKuEn1I0lyjmegwSPc
05gTMfLKAAFYTF4yNPEFCEJk8rhG7dfMZ1cR/H1fIicMqQ4he9m+u+Sxe4QmQIrxuv1fvFSvLh99
HyT99hN4Dicuy5ECm7NcWgtHjXTaXOek1ZyE3r2GcCey3EOoNPAM7uuPEPvzz0OO4+yjDCSC3wxR
OUEKc0dJTTMk+MLsf53mKpEYm3BQ7AccGHQEpizHLrSJ9IC/dSPJTKuOwLv3jld72BdClHKuXpd4
AQdxVioYGhG+oLBjldRXCYQ4lvNuXweEjxTvxMD8DrgtiUeGo1rbY6VhFiMATlOwHfLiZ9qidIiZ
GjkjmNhyEHmfaf4bdBge/REU2V72+0dA/XGxwrwgf5+IbG1iNEObL8bBfbH+gTVIcAwyUNHh5+3O
VYANYmAWG6RQY/7faHiIIjHumZ8LmcD4yEFTHwx+PoMvJkTAp/9Iyz2zlzANJs/WubeSK/aDYVhQ
mfP0k2UjIJDgv82ZilU8GOGOo+ygRqJD1HlV5noXHx4HVqtJTKByatbhLS+dznrdT6O4MLeCeYpO
7Hcbh+oXCzPdrdU7ZdrblVWqjHYUcZY8wzvoYCPIP8kQiPIWsh2mmL7x2lj1IDmeScVARp6PrrNH
QZyr87DcuDRffcaE5CZc3FRtNgZuIcAhRIFgi0cWEg5agDhWxDdh6k5/j4Rpxui+DlCSdyaSjz87
Mj9MLcGYX6eDgW8LS4lPcnnCq14fkAuXMFMEF6NK6AKOa+xVVy+qvUjueJAfNhkFrkZiGiKNEj5u
aQn/3IwnIB8E2Pj45YMqdH1g0SHppBR9BAsfqBGuwe8wtEcDFK33tvvRIZCIJNPUD2/244KQbf/B
KLEw+aTuw4/Q4TwokJoXyoyj/GtqGbxKsa3W3egpqi89t0z7pZrRy0081f9TdGJQqd5yDLTsZmde
pYQjneRdAo54RhWBG+H874ZrPFoU6pYIITOKeyefJJUodRHnBYLkxqdaCXxbu0XLxUX8oITR0X04
PNSXefMCIiTP2U9Ply5wKJJ45bquTwkGNs9nFwtFiQm3rj1UWTL1/ccRqJrrVnSREyP/+lJ65wyK
XVRuabrRiRm0KkX22C0ZpVEH7GQCVMJEhqM7tQfvMIShMc6751SSS57qQyxFX09IscY6kCgfBfIi
YxRJXMmq5ahX7Mq8WELQNGZx5j1KWNJ6QtbP4r0CXqF+W1S38V7vlHEIZokNlgy4Kgj0+jAqFWbH
m3Xenxk+v9TVU+yWjJTGiKMqowFY6JxnFJuhB1NTGMk5siYiFagMZuyEFpC4Zrq43MFH0LtGbX1T
VOjT6bDZXw3ulMU3aA2Y39FOjrxwOVVFgmRjGLwSNIkeD5DYHg4lxXBTeNAiS5d85WAE4BzSQJ8r
33B/odXWRDhXuHi80iFbUVLT3I4XUrWubBqiQ13fQBSoUV5NZ7vPKYjwu70FvN08szG3vLZ7uXZX
St+Ws/S1xHtxuYS7B7lDVvgucKuM2aiaTZs3i3kFqFU0+anuKyuZTjQvi0F682igl6zmJzgIiW1d
yrDx3PKuc74dZpqhIW9si6X49+IOiMGRNiHJTNFPtE/+PawHDtMutQHj3j/wtPPdtawJ6XsunPSC
A408Id0VMgIp0V61k+BkH9psGQZimcI8PNSOWdLhjKM2iMryk9htyg8R1AclyShciXS2NyoVd2Zt
jWc7H4KdsnmnQFNhx1ix/piQ+sBFM989N2c0e3OOOMhllYHf/w2j9hK9kMBVu5FLwSKAVt+Pro1E
15qlKsUTxf+QV3Uj1SFRullUehCn2QLzZaOxd+qitFkLCTq/BJfzESUYcHvByzRHLQT/GIKWLR52
KOeepzXanbNoyuDyi5npkCKFNlfJmsoSe6zKciby9te5516GDDkh/pteQtKM1pBuRU8e/tLmDbmy
R5TONhqKoDeWKhTTN+QRSRzdLSGSWuEK+v+PUuupm9/5f+2EmA4AjluC6MDcsA7i6Qg3r7sSejrN
qfD1qVLaKNg/11wt1+bWFosQk95HqBXhv5Bmg6aw6w9rlVHD2b55etU0UsXq/ieW34rms5/0AHjE
n5bhgYK4inbIS8dTe95ssNWB3/y9I4cncAgbK88BT2foVHe+E1E+m8t4qhAjLbOuQfNomvZIXsK6
MGorg75eQ0/yraNFHo/CqQtPtsoyvpTDtWvqMkzekEi60elOpEOaT2BV3TxkAlAPR+J3QUQkDMgV
jdVx9KUohSO7TWUxLD9R5mcBtNlniSTz5piARxp+V6Vw9XD0tTT1iF1z6q+bBDofLXGz7vC87wiJ
G1acwikwIN6vNXf70hEBJ+1Ltoo0DQUNIPcBvQ0EoPj8Tp9RpH/8dRv4+X9vEo6dDXG/Kds5R/pu
zFvaW0OINqWLv6x49CgY+bUtCtFNeqdGTc749KYw2jofaEkXfaikKrDTsi4PU2ac+pyGrR+GEd3R
PW7yjeGNVBbtLxMLtXq7rNsagaKQK/Tic9Nn5I1mPG/fmGsQ800MLhdLHJ93nG3ferlvzTQV1W/d
pq2/mZxDQ8Fwdjp1wLuUo26A2Ah9ZpHXUYx/2u4T4yQWSjPoPfdjtVAPrEogrJADYhHhuJikmqMH
VV+gemCzbPid1BTgl4fLzuPSeLE+2BJTyj+z/M+w0KeKC0mgAHh/MPOYV1TRZgInxpCFJiwei/WL
5PKucF/fClpGM6xOtS7BO8HKkFeVlzCIfPp/DVT/DMsO6hdiBzAkSnwnrrJEdDEV5JuexjnFPobz
R16nVUfHiPBYHn1PlndDgAGMXssvAH86cmoLhVaeBhN8yp8i6YLiw1s0rRc2O8VFk+oCfhUhUcZ+
sA6Dv6wKwJcN73sA6wFxIijGDNiS0mQYiCTLYGm2oJ8MjHdczS00NHMfDGCmXBr/jRm0ESIsVnEt
8aRyDcCOart41nkfu8eCvW/kyY8SZo8Eh2vtgrY47pGCeklhVO/wkAvipB3WphO5YyHPbLqUDSlx
zfIhupQplYh0zFrfjG52zsprWUR/QX4lIJc05y5IEHvBYXiEtLu+uu4izatFWxmbQ8Q8MG3K78pk
/naaXnIZH/WsH2ob+io6UBO9SUNogz7HhsDmTdOrLjiYT+K7sM58Er7oA1ueaRMjUzhLuZRjvgk0
KQLVvrNld0Wi/c/nbt4f9/KTMC4unKJkncm37mnFjDskAUoSz0FQYQe+zvpu1Vd4yjZG6ZSS7dWU
6YgryJEsvq2djz5wYVeEU+zSKIbjvvznuti6QFqh3l4csofiTnTzcVKTlJSn9LIO6npCzzxD52pc
U9UAHEd7pV8fT+kFiL5rhIcc6Hk9Lilos0yNiQRWChasNMSRvT/2CeQC93T+/EQY+1loJriuwksv
jyB007v3y4JNh4v0NB+WcEQMznHCQTW1SNIuEvMIc7U3hs1I+4I4/FOnxqsEqxdnFd0rvVG1zFzj
2bOsNG15sKgD52+VyJ/v23wMlKDkoQ7orAJr77pcIxov2564r/d0QgYAYxe0l0vksOWb0L0lizyP
WjhSYrW5yk09Gl+ZwxOWRIvCJR62IpzUz6uUXCFDvgh1KqjJ7b31lSkI7oLxl6wlOaPZkIrWJk1w
B8Hmphku62KmPccrffumDhcfrvSdAfTa5LMx9qMV/huKOI46aPWZdzfbpNAR1T6+J1n6+PQiWXZL
Cgfy9GHCKohqwYLGJ8x6PCFGBpKKDkOCYnPOV4cSCOaf1whh3KkU3UW5vNgHvOdUcVPlg2vXj4Fx
14YKKNe5DhFcibi9v70oW4pnr8oT6VKKHr7YWTPhQCh7HSN/86rin95Vh1eJruPIjfVI4bwrK0Rz
EsJ24uuIiTeJsw9dgNFtOnUvRP9tq5wkGNeLWSHdDMcw08n/GcRmD/oyDwhT02XEpMifyBg62ZVn
THSBcsFePxPXu1RL9Z3vublAyiIMS9ccnZMAoUpT9s3Nl76I927f1Ri7gMIe5AilGqWcqvBowugh
CBSgYCFwxR6Fb/H8Idxif5HqENtg91VBg3HSCtzJW9ia0m9uQI2P6C051pUu0STXTRcr+MntXfNF
1f9Mv6MUb5etWrefQHG6xkQSVFkquWA4tSHVAlkSX/elQV1A27LjsHGYfWZHsRwLh5OOgjNWzEL5
qTHCYI4cInTd7RYmvabJX9R0+NNgBrrY8bcBpb03zhyaAq6my3lvWHqSy+CDnK4c2dggjkGIsqty
RXViTshsDiBiqaQRS9Lz/llyS/Noigm8/mB8DMNUp9Tom3+PM2+wq/OQPiVnZSJmbGaAk8wNsWjm
uf+K6BZBJXrbixrZaxPio8DrvI9+SmpsMiCdIW/zATcWgTGliJQ6mcSBcwpIp7yK0Oy7BMOSOvgP
94f40U+QJcGOgLLPeSloqwy3CzQ2pQhn18PYQ8QW8AizfKzhc1Toli7XLgGnHe995ZX7fAtQhCmG
vK+nVVizwX2b1drezBbAhQKHeysOhBGK580KYMu0rWh10g9SpGd60CR9hT/NLTOLAr1mhTqSDyQL
lMoiZT3y7uenFCn4OOzBk/FrZImAiKEgrf4jLfFh+z4p5LEdoP9EpOvF79gOv3crncgKaq4VlzlR
nswXotoYtnUMrImL7IuGQG+2dH/sp8+Q8kaFAy2f28yzZzSKFCTy5WsnkbhtkFA890Iu2PsQYF0c
ZTQaSfBmQGs8Cw3TsqbQy6xeDxSNmQV27+T4Lcnie/YPKHTY2efVnGlOvScm5ykdQilBVareDD09
7AYxxUSSbIqIAh/LH76YGCvnjMxNvSWrwysOuu0/+Y/FrwygQP8Gdpc6gBAgmqjyVljkEdsINr2X
sZ+Jqf/1nToYVEvK+KOOnY0C2R/WzLCj9VStCcAgEdho5muGTLtwrsi9X0LLAcop/MCRCIsEzUfM
unhyokpKsevOfV5evsFdT4Td4sp3EG6V7klWXYMWf/UfNakzSwcRC6L0gowtFf0QxqZ9zriwKJ5/
0Z1dTEN+vn9aXqEdD8bBni30BVepQuCFnPWYH+TjtHCbkD5BHmE4jIlsJRNBK21Q1NHKF5qO/74Z
rVfdqzrOH2DxoFjFIeLAwRnGiBdRWV244st4dlfP/RX9gz9MgqSdYlod2tPJWz60xiCQOaPekXLn
KLVx9SMK8LxzKQry2a3yo7gJLDsGsZmmxEsS8vlJH/LIVvaSt2zj8VC0Mdd7IQnRjxLIe15+QjX+
QcskJ3UyLUYefgcFWCwHiX1DB2P0jBsenZ3fsKXMe+aeAdcWo4ALUrBYrwJ2UK6kxXYafsV4/jRF
6UcYGdwykjRSaH6OxBPZiqsIzLfprEIlmG/HAFA37KS476wgddaYTukP4p7DdH45WC/5wXSofmQA
D69JhxLBfxl3r+g0VbLB4vR17shInGklb8ljAwVgKPNuY3Elbx9K9qZBjj2r/S+SwZmWOmCx3tSk
4jIsSfl6N+xL/KOZ7bvvQ3WAGGw/zQPoucgBH1HXniEGgbvCH9ZBb8Umhi+DAbd6Fl7xM9kTkzfW
S0QZVf/DxZBkQTKYPg/A+NFsN5d7LPyQJNSpOZ4S8zspXXWYEy7jsq/Jg2Ml0aomnQ/DUMlZSRgz
KKNXqvAsQYel2MrlVe9gqvT6U5r8OxpnsBXI8oOfHh5ZNnkMLMgIwPh1VZi2mByrCYGktuG245/C
4pjUaNeGv0ovYw/qT1ez0auV9ajc4F+0W16wRTgjiPQkzO8gS1yzQEoohyHVyGC/WG5RVSkq1I5y
FkXHcYDOoDIrsXHiIcInuBJvwKfpeQXLe2NxEC1slbJhekXTiQKXmmlLxEF8V/gf/OoLvXA+jk28
jGUaPj0wdr5mTsXoew4YW+EXXFwtwETQNGWokKrZP+88PRaBzrg5ZXkoXPJJvKqirQCtB/MtS25w
ao84FrCdkfpO/Ws7x2B3MlaZVX9Z12prGJrjD8g5jHZDDTbahvF3aJ/P6WJLyvHLqvBBIkath5CV
QVDs8oOL+PRiKo2UpdVJONQEd0mNftR+fNeOpu5p/8eAl2eAy9cLDFAjy/Ni1eZONhdrEk9PdF7J
AAiSOXxLQuvEqCvGL6Y10IWtCk4Zn8igyKzJ4QpDFwO02IZsMBr7GyvrCLDwMiohDQTvwGh0Cy1Q
dj6CKiq+8+vpvtfguNb1zW/AYqGVMrPr307dk2DnpRlkBF8bfkP4smft2qLy3bXaoqktRIFmU3J6
y2E+ZxQpx14WHBSTedba27r+oMvl8xWoH64tMlXNYv85DukrNnPtX84Q4kFDa6YH5SbWsyRNoeum
qx9U0zTM5Qj9AZzB69wZjMOAiUFhemzkQVRNAbNXw85a+2k90ivo4nNWO4H6jfZexDbPzEsCuY1A
YKzhEoVuclaof5X5NfyqIulf0zqrnbC8x+kOBw/lpFuSf6wxma5wXKAQXuxGcFVgquYUjqwXYcAN
tdXxbvDiDjfzszNuAnCWVP7pexmpnwr2sEtM3tiwlpuycKgjLLRWCkPchFrjZPOxBA7tid4zaHbQ
mC873GuDvONF05sww/037e5Pw6rqw1ksXI8KIGz5g+yr0CwjPx2s06sdNjcootuPHi47AQqVcVcQ
Z2kfRfSLaXBfMN4fyAnmQLhKQEjUJT2gB2UpgGjRXzlwhFDAKbze0QeLSbSNwiKHzp2mpoTPLRy6
bpKjXNEEPKk2j/j0BqWZV5gGE1mjHorA2PvUr3ms9+j6AuT5apQkK3fgEAaLkrW9V/+jhZgTELoY
h/Do6FjRNYojKaPYf4q9hWS1ZrwVnKbwcfiBAlzLnz8NZvidRJwE7rLmV4r/EMEEfTPfTb/p4Bz8
m1wgAVHKvQyfPmSceKd7fStlMTMGQpQUYJUSajxTXffq9Hkd2m+WRbrksCqfgD4d/ajalIHfmXkb
IRdMU9M/pjgLjSQcoFaqDeA5idkxX1tMlU+b4XGG+L2QgWGc69NgcqZ156tjqwYgg7EjXpWeqqk+
oP7QwPBcz+nw8IpMjt6Lipj/kiRIVWTQws34yuLMlWglvai2C0KzXf+t6SiuxhGO6PUe69JxqpUo
xRsUafL6opoblHDDWBlU7/bDZ65+mqqJHMy3aqwGZDUY6QXcyHjmZD2sLXsrFE7nzBjJkyGUJNgQ
t8aG3HFX6DuVISQTwwsliorhpEm6NrzLczwEp99J8sxQ6yaHWjZq9FwdL+cjghtrzBmL5z6c1P/P
1sP8c3BJkfSqopSm6luHjIXd9heRPig2hYJJjbVFNOF85ihW7UdFhwRdcftreRkWmAYz2eP3wWEI
4DdmAnlbyO+YvVhbQRXHb5B+uUuuzQkXCdj2WJcfJH8lnMDyY7czy+lmorBqfLjYQSEEn5GSdqDv
B+2hixXrKj8lECA0roInTtOSmb79ZISr9kT0qcnMA/ZQ+8pdHanomV7Ak2xt3A8H2zsArMGekvnm
akB5IT0DGJ4cRjs2xX79a+NW7stdpJxGbchUPms/xWUMnt8g/pYmo+3cW2kjd8zsYi11TcJZxjxR
eUMT4UBmxKR0TeGeChcfRn+1aGmNjixOj61cjSBtKWBWnfvMp0a+LmkjOfr3UoroHnPiH818n0Ir
9kgW1Mu2OsXgJNCijMJj5Hn18QPrJC82QrhheLRdxMgv9ag9yT82iNRNl2L75nvBuf2euzx0VhDo
Gtpk342VULWfELbzM1ftQTcN8BY41br506rblsjX2qoQchFbqDoWxUzUevoZhTcC8YHLArBuJwbo
BAkck8Xc+2kQuUTo8ameeikoTMw+hTLUHYB9cwjTRxCiZUaoccUgBJaZYP6YQPiPqpq9MGIGej8a
a101RUVMjoCpMrdxpiEkFxsTwDyFx4+/WC6PwBNefGH8EXh03r3OhTehwDKvOrAJRj5p5k0Uj/Ys
Ec3uA2VVfVfWuO95qZgjcLkjcgXrGkM7KOQZaENn4iC0dGQ4KtpomYLjAB4yqzZo5H+BgCF/gZ/E
TFJlb2qsQqDWsZJL1eEoSOufsHYbq+3dMSOsoo20TpnVEJR7djotq8xbrnNPwhSGRLD3FciqEYMG
7L1OP7TTWou2/fmL/2alpDQDrC1o19sbnKAIWr7/WZXXjcl3ndeXooSw57Noiy+dqH+0a9Z8VW1j
xyTmGsutSeMznPRnLzoRoEFTmxERJSphMCif3QUCt4WIp5C4YxkAEMZpOSF+HSgrH1AhPwCjNN7p
5AknNj52wIQ0VAnxBqy+Voh1svvJcbCLlbrqQ0K8Npc2vuMSdUOzHR35RcAsiH9G9a1bEOuvjg2S
ya6HNoODpXJuVqONhq1RkakgpNFgDoyM1Bb6nCKpCkFSZmEhtELXFONE66L1u7VIw+z37tE1DYdx
JHUFXR6xbHRhdvSN5O09NfITYBdk073GslKBa3ZmIl+Y3HKlNppnwn0MTyoMSs0z4pr8IjUeuqQF
sbxuWUYkQ46npxfOGXkZiS1dNwVPJcgHN3tX3Xfe5jB4rA5tir5Cw4+4l67YgkOJfjTm9aHBgHOf
sxJ5ur2IRQKpMMlL+IAUmqjmYTC7RFs0q47qji5VPV7x7CncpvAc7kSt1YuNCjsonnklOGNPIRK8
wpKv+181MRyUoNyP0GXV2wdxS7U5XiTIMsGj85Pc5wjUQrYZhMOei7nsXJutbx9q1iFr4JGgo2lJ
onIm75OaAPV7Yl2nfH9I46kh/62oUbPB2ic7vlQtwVWLntDVQcMz2EmM/SsVAdZOKwHbQSs33JPv
pJSdld4kaE7KgkvtAFdwylqH5cV3f5InSxqAV8CWpdCCQAhtYtd2RAWiT4yArXfWbGPWeNPFX7lZ
bIEDhGiBOKtN0FBoZG1enqwpEM//YBr5gZGpVo+8APH7GqqxIb5U6zYxlTTy1U7Mq+wAGGoXYuGO
3KAZKZivnLa7tBw2EHpuAqrogFNSjWL91xs+zWB0RpwHuFCgcgpItxHikGX9FEKpzryQEYYL9ZOx
PQ3Z/Q3PNTOcqhALWe+QhEoeqci5lQwjVmJCvrxbgD3GIQ9OT2Ve8j+CS2nAfPUOHkKbXVzGiaOf
iYP5TUBtFrOxx57YvnU+XGcL63x6HwWXD2VtvhjNEB/AcK70D/YUHGqz6/teGY36bcXSxU0xu2CG
nmBs7d7M8wUI+mLP6/4pL+Tl1Nsq6lleD738T7sYJ7sJ2e5fJgD1rUFSlIaUXgGc6hTiqKQiSpS8
54egTneYPubL1vRTjxu1Xqsauz4yck2RKlmXeZX8z7JE1vHKJHbjvPk34juYnSV3wvELl4YCcXzm
hX1kJR8M6jsFs4IDg1w6R9tsu+06F2SgNSbE3k0/jPfS5iNgfoMmmpFIJBO0mI7uJv43D4Z3XHsE
TBNi8/Gd786G8srIXe+HOkrrGpYtd1+K19f6xvwYw3uWY/uFVFk7EUl96OuztAjV3SOa/nCblVsK
SJVAU/d0xtUvxkhidfBBWZKguy1GOh8/f92ih3Jw1ZnJdA0mW2Ti2sswsfdiZPksyXn7y1oJdMth
iEnL/PteRpIHNv9wmOzEdza88ULENw7iW36sLpp7J5t/QxfqiFTSRt90zjMxDXnusN0rxZ9lWfnr
6ob55uiBuycUDRPcCrLEzKiCXCfi8OMDGaM9haz/P5PyuzikEGeiwiD9ayVk12Pc/Y/KwUNi5iZE
fEecAwFlE2F1D/jb2/y1Qy6rYlLhnKCLx7Ds5MUVdRTQqbtvXVqlFAalI+w8dmgRltWETXLCphtp
yFTrCxBW7OW9EW5ZY/7g+QYVjbWhOUo3zfnp6ngHRjCKNJtDOkqI3oLfKrSV+VruN7GQX6bNsh+9
eb+yg7Bj1CwR9pm1tc/a7Rb3g1l1+P2smWeivvW+JEpAomW1z4xzeBhE/RPEknJB1QaySteDFdKU
AWLOS6Aya6L0knWkk+fHUSOpzCzNO+fsnysvqnPKQIftXrRVJ3QVbO6GaUcfH9VByJd5fyzcDgJr
JhGvXfwB/0qFzlKp7jpBhzwmYf30NItVQAaw3suHpDfVi+lY62QBIbtBGSvXTUI+2T+bX4ublSAO
a9j6PsKplf0vKgZ4J97p4WkFEnW6TdeW5jTV1lxPzPFfl7hW7UlM849x5eXJ2lcIFWdJHsXpbTRI
x7zgLa7QKilO+6A13FBB6Zb0CloLTczhUxGVO25umCY3NLwbS8qi0GbUSxJT8HI89NNhRUDfdY8j
K7lfBSxQRQKYE1+zuhbJAWSjkhym4R1j0jZ/C7PZjClFenV0lCVoWSs1SuaTyGUC9QrutZSNnxPm
JJ8DHbJ0PbiAx46AXaz0G6J1Ad0oqr95SLRH/bVz01p3qu9txZ1ii4lNCFwv0puVZqJ9FPsYMROO
xvxhmrkUtdcewmk65KSUV5l+7wgruREJF5GwdFTvbsu+gkusYNFtWfyn82gpvptcn/K08cGXiriP
gaYtRGTviO1qf/+wcq/126NUoY08hNaL/2ijEEzs1jtyWT4Coh/V34TxH4OZPBmOLlub+gE/+964
zjoXq0qwtEU7aephpemRRtWC8dZYGres0m/a4F3tJ+ELZoiLBt2R68elr7AEe+cHiSlMg/PoNaL8
aPjY9941JCEPukJaztXor/uZrGBAIfQw/ZVPhBtgJxllg1ldqicAcbkSUnLFlRpG+sVs4MmOuepk
IP8T8U/cw/iLaWzfNVOJ5GTcu29yuGh5KPTfZ765GOCDLqk17b4Mi+7x7FOkpIlfxnYOXGkZV7Ck
7KZWNUJjcQfZb+SiIR0f4EKNXvauXIk7lXbfsL4Eg0s7Dp1VxF1Z8/ohN5o/tXC1039KGZZnvcMs
p/BhikHmYM5W6WrUshJacJk0RmjZjG6JEhjhg2yBE/wXZ2b0jUpoF8V4OdeDYG29MalKPd/FeUW6
tGjr9oTNdz1NEsZwgmu4LmasWpYKUJTTifxotIAKZYpGJiF6YCRb4dVDgHxHXlgfHv6g4VoX0ypV
+ru8z5ZQHQ/ZkhzJ21CBpOg1GKml++VO9HEPjHrhO4jXu1qs9umU3RBf/IkrajX5cmofC7TZRXBF
D/j4HZnt0KP9R3BDW1UV/KGrQN1RGzL951y8IVmtGIQH2xCAsIMQaZ2i2qKBNg/CMfgwepWQxjj4
AkkvERVQOh52gfpaAMx1jMf8IaS4uDovUPMNirLu3R6UFMl0onkSvuqvhcVAEUs0qyRqZTnjpnoN
eDJACFk/p0FpkLSQuOJbwUinvRPpPtLGgSAEufTaeVk7Awe64DE3uMUoeq8OeLorzjWQwVEUFx5X
EnfANVhreeon1VS2obrXInJL7sZgrdk4vKLX+W4vDdIwl2Z1zmbVIvTowMxxyZFbVw9R6tWk9pa0
k4arMmw5XPv8OAhT6Lw1V3kMr7uI9qKGy1kiBGvDsE8Q9GSwEszFE5Lx7g9PYclNd7LpM+jFZcDn
WaNo7DQ74h9zML0Ani2gdfTmgXGAuYnglmywbkLK5H+dtSdTJP8/+/Edg9MryErwA0blbiPftnqT
TCRi2Ndt5vfwaK/+5dYVtQdfev6XKT7rbQ4EylzYTvCbR8NefEVyiBK4+LldZKoAkyXwJBJ6avvX
4BlRkgvl7MKILmt1IxkfkE1HQiHWQgZJwC1/9fM5ZiOiwrdWdiFGAKeDD2EJL9asvJy5NKhmj+mL
elkM9nLlfXWHNPEaOBpPgWpyGMikN/+RuX8i8FlNesx0fm570a2CO9yQaQzNeRhDKD4Ww4SpLrzX
OMeQ1KBgzInIG+r98thSckSR7L8sPsDVBixJxacNctN9NGN+SVsPIwLjvaFCvarxh2GreciHnxEg
QFd8/g2HJQLQdVHEwGdr5LI7m/PXG1F4lrsKh4K5+7sT7lIeDYJreQyKp2f7GCIZ5Ji1AmMdzm69
+WDoAkRCLBQbX6SNdglZ3NhP6yMyJoPcGuUEfjRN2jEdhcTwZLiiEyo9cdC5xmPoz8JLOFUKIYxK
zpHH+ji9x1YcsBhypRFy8+ImjIdNAqvVMTsJh+q/H6RyUqH0dh6qA3Ah2SBUrvmEluNFgnr03hT0
v1C1vrRQ0qwJaRTJeFB393DTsidJQka92n3zfE02GzhMReyWQFU+mHSFimCL52Nvv6WWGSU2fvMG
7G7LAjPO/dwu8yI5WAp3Cej75MMyrxw+hIUrct8TQkC/kHhao4It5SkHiB9TwTuujPbGVzTufyje
Yj+aAUPvRwBCsgTsgTVBqEinf9qIxavHRFEmq09fQmXIKgmvVULiyRhc63tQwR8MWJ//ibghbKcs
9+TOALIEw7E2SHzkrJlSeXI05U46AMGqCtjtPsbYAWHwD1SqAJ7WqLueCZP1LUc13OAR1eNvY+e1
Gzyo/E7TLoxloW2ppggF5uXIrT6Qdbuigm+7V0pQo2asChp5BygNcB+2N/4ctkJ4sqR/AiP+DNxy
de6obyfGa7MKOi5oYzxR8duUdGx25tZB0TVjcX5B4M69B937JECY75ErSh7U/LWWcedu8Rdg59CA
Yt4Pxcr4X08pDLc2q/Eg3XQKtZVRCwobLeto0OJS8/CfODPMTlMS/wwB2JebS4UvIijKAnhPctIo
kJ80fqEqWK6NAGWlhztw2r8Jp3me64teRYGlVptKTQNp/VVha+pbDaTq/RAFCEaSLa+ohlXlv1b9
gLZHW6rN5SrdoS+eOvdlNCjcNXEnY7we2xYbiQxLN7mc37CITioEuTBeXVbVdH1Ymk48NTyA3pPU
XlRZns4d5ePkPhaTnfZvT3QOdEwPYzIZZge2F5bus+yALKPsJQcyWNJL3guWEgkN/cJfTTa3GX/W
w+e1gctGjKBhIEBiJ6ToQY0dgTmZb1HFkrdtoApOXHWC70LZGWfyFdkKs/CpYXev80yqTNENhIej
61r0b79BFscs/L9BcRryKw+lpXWRiKyZdpxuQCmYjI/E1mzGbHFgB34Ai67KNz7wIvNqx3c9I6B+
VVaPp9hdh1/dG63NWbD1ef2qlR3lTYD2xYmtiDI3TSkzS0Aeg9h4xKe6d8yRKgX//pJnFz2ECrfI
+YYksP+y7m5J0RX/uNC0mIqQ0K7JMu3C2PY0qDgNoxFP6dvXrDBDKd7Si/jOhFNsLVwBVsOIpkj+
l8m5kkyOYl1Ubhwjz9j2vKD/EmwPuCHh+TOA1Du/nim+8P4XPQzg0k3XrkkO9q2QfvMJqLuBTXh/
XL3ZKYEgwlNaituqMP+BxgGA2hnvouwtDW0yLkkzGASCL5bof+8VTUqYNQSAckfg4TRUQIYHk3Yz
aPtC/dTnjU6jWZO2+5smlbaQhbY0OzpJ9dgSW5hU0ZeH/TE032PNcTImD5Gb4B5ij6vImPaxt4Vb
kBaKA4d5XcwBC/bOOUwUPst8eEtqWlWlY8L1DFyJYMqD6MCxtwMv4LiNaJAEmJMewlGcHcm+zD7M
soOBco9LNTO2exnT7foxYMvax0hrLGsZyO8qz6AoUJCRxb5cQobTLZHGdy80vVIiloYBl80UF0SG
kotnF6Vhs+2uOAFHr1JpXwUJSbaiiPukrke//QE+tXn/nSDPuTlzf6nzdzUpgWabcYWG86qGN3mV
Hw4nL+i3mgFzJIyEtRQOTXwpNVbFNvT6cdLUvT5umQUL8ihWJjNUNnFuDX05nXSsDsF1xLK51TEe
O80WEKSr8orxTiidSHk/GQ600drnSbwoGeb/d7Um0lsKOtFv1vPh1xYNvOmhuQ/SfWRKtLd5xhEp
RIb4XuIUjsnodsWV4cd5pVuYt6bE0RbdwNa6TkxE/D/kdaBQ9iJ5kvV8qmGcUACwlPg4QnAYAMxY
tJNGMQPQrpkJ3K0NTVsF5XWZ68g21hSApoyr/JIkNRgPj2bv5w/NE6iclSeiA/Y/gJEYN4td/vCv
dcTcCWm9i6Esi2xxbJXp6VaTusGL1VcQEcX0HhqUCyKm9/9Zb2bcBeppt6fsBFP546ddK0mx6Rik
TV1/oAh70JiWcXL7/RNqkiajMDOvvXSH14Xs2HUfLaLnphzUdg/8ZqNzDil2Zdl6hjR8b++/sk/X
ry6v2a+qMM/2C4FSWsI1fDH+KNX772Eyoxvcz1m4Fnbuhq2nC3ga8ULwXTDwhlnu87G/BofKTse2
9aFWM/xnFY583DyZ8PTW+kSV9gXykXCODlw/TZwgRGD6mVzbIzhh7Fk3coxdr4Ie5DExHAX+/tC5
6vmyT7XQUmmrjRp2MkvI7QVPjmA131rNTMre4aMkasuwoOSNs3tHslq2t+JcmlrUdf8PPPjTcArm
3NIBzUrzSxG6j9+MChZAyyyi8nlJxbd/nJUM6fCWiF7zKZn0Lu5XfllHnG8lJQSrvN0bcumNdME8
/rh4Cuxu4Z8YgrT3qQ25bf+tmrkO38tNnCTe6dr+KfhGp9VjoWsOlFHEzIGQNK0LhyBcXI/jyNnn
NTJt8nnhgVFFn6ZK7eKsARGzwW4C2FHee7VdykGMVb5dZFnkBMwdffi/iU6DPdCQCrnLwiH53YEn
b6at/exg5Me2OJNiJdL05+TPiOrlpLe+u3xLM2E9G2RDwzaVNJKWGjCQmRSwCPV/MA4aj2tpBUxL
PfzCAWjm2GevCT/dziT6aujNZHhG0kD1Ao/SIekqcF1bdcwntyClNhnH7HzCWTqfrlPsQN96N+TR
hTEemUku7B1qNXtB48LzrEBkxj/0o0D+1o7/9Al08ofMwERLWGzTUw2HWbC6IGQ5ByqFDt7KdP69
/CmAoZnTn9D40o5a/+ylWFT1lOKzuc9LijLw/IxBbs6hdl8i9gg4cn0cAo0IjxbXmTOCcBwuFAdh
if+3LPmNAE/kbnsU1vw0WQP2AoHt//uI74aUbNyQ5g5n9Ian3pVOlVTb0Ue6aWLmqd+3laOlRhD3
gZ4sHn9eNOrbPWD/TxvMDRvTipzR3jDUVk2A5u9Fki8qMcgInf+8sfKE0GYULZhQEHn84vj0C+Cu
9RdIBtYOFL8AjRnQLmckU7JdjGdfu4ib5Xbg6Tq7bmVoNg6lhSXeSKGdNLjVzIiES5dYVuHWNIqk
G/2Jg0f1YX3OtyvdTqbwNdStPUP5TdUorHgYQdmPOcGEIW2bQ6dV7SB06FUZp1/qKFmpgQl69pvR
1EdVSsgh5y6M5mdmslErqEQM5n3XhRdQIlp73GYPwzSHSkh5QLt9kx4zM+btZJGNMUXH/PkiUV17
dBCFlWTHTBy4BoVtQb3SsfCqJyCMTv1gWKdSPdAbCGOBZXAFHHeseZKElYoO7PrrAEIVhC4gFfmX
GDPBZG9BjGS0XBS4UES5YMKpq5T1/7bx6FoyOb8Z3rfdTXOTmNxSM+v6oDLpJcBQpviszUejsIFU
AO0gQFb3UHv9eSZCauZJx2B65MzEqfps5a61Ri8m2ktI6/RURL2qm+e2Fe+JkpD9wDR4KTDuQNth
BV2/PR1rpPAITUOcDwRFsXDLr7mKothoLlREezCreFxTH/KxcWLuVYvhf71wdvaBMMNDVpGsOkJ1
M+hAMWJu/9X1ASHluRhPSxXOi6wh4MqZ8hMULgZT8fXdxwzVV3EBCJ2ZVDmMUIghWnepoJyP6z1/
DUeNKj70e/WFCICLXpVMvaSxbhXJcHOGOPJRgswYKV//dQ7tWNYGJLsNftTrjJ0JkuzJPBVvH2lC
aDwjso7rK4Fy6NHArH8OPhgT+fV8iLau7E7+zohu7BYQavPKXcuhC0KZFB3shHc/WvRaxqUwYvF0
TOvckFqXYCB8/vKxQDyEsnts/rUqkRMel4hX668qZbVCs5R8xLkNdEsW4bzZA/RCWASFBAXAUFTP
pnFZaoeHL0iAPhDfNuALaMUfXo0eANhROp+tLRVOoUp+gHm/XfBh7KcJgAupebJgL0GGGPvsgphK
VSPzqgmZ1lwIDCEnjlF6zL8qM9fhKSer8XK/EUDkg0F1+qM8J/v/H6FQZG1pMm/FmLxgVziHhBxN
Skt2WdIpLSxnoeQOkmAYGa8v4r2BTdSmxT0QNBhjpHNqrJIcmWnI9G0iX1d7pyyHF+eAbd2eBYx+
ZFKU/cCTmVs28n13RGjHFpoQd9OkId8GUW3rLLEPaxvGhj3BFE8FDwqMNLXIWsjPyR8K0GugBA8Q
ca+cMCzQYCAwc0M24WYvp8Z+d5vHsRx9TxaudR91Lw+ST2CtCoUWQRIiDR/pvHdGY6isganuzuZ7
qS64ANxJuAE6yRP5FaHm3C06udnjs7VNdHqJXYTJWlKxeD99UdUeEFj8OESPKWlL9EI5Xg1ZJwtg
EaippgfUlXwuT5CbIMfFZaN+yMbh5URZPSMzToLLHtoIktPs4WKkMv3LqLt7uRi5wL4NIzMnoIkg
qYI63rdpjAOFNnTTr1CER9yWXl3sucq7ZalFfGX7vLVHKHh0QIlNfrXOZ8X7Hyg6Xcz362X0klhU
Om1UPFLhJ3JVbr1Nw2RgeJl8Vy0El5x8n/BFrUPUlp5qyQCdrQ4qmkSOiYJX6Wy9rT+yP+DzPTzV
rL0Muj+L1Yn5tP7ZQIi9HGnblXyDApQ8ALEgFQ5LVqTC/FzPPaYd0mouNInUcE7I5Yy28EBCXgDj
cQ+UKR6jq0CSauviBal/9VcUq95GcqOPUkDzkHsJoZFfTh0cV3bc2SlA85TV0J/JeXEdUjM25pPr
hfLwf89lJhBvckAPWAoIlfIBHQWwh9QNyKGV2JQzx1280u/oRIM5xA3KsOaK1eXEWNB5icnl8tIx
oNsXalVD7EitJnUhyMKuwrhvBX9DIiCz+Ld83MwFWNQSwSI+ECA2uk1orBfddWSKMloNzcZkVOr6
ksSXuA6DyshfvO4nYIKa1zNCilDi7fHtH2XKx46VNWuwusGUA4jT3mu0MxVSwkM1eOPMZx5fdWBc
uppwgBgKM05CGl57sOFoHKLudGojgoTJ6IxeroP3DTKUE5rRNmAfn05sHbbP4eUT/uAlcfh2JQQT
rw/x0Z74YBfM5Tatu26idghQvdSCxMJuUZVDD/oVJYqE8C9rWkwHROMSXFRAdj1RlXktrfX+ZkV5
iRHcz/RumrbIwOW8v8kGkmhhoyBcm/Sy4uhYkJb4q37Zhm2/SkgZq+KnLJRd4NnPHOV1QLbqdP7Y
+iwaUi7WsL0W87bB0Tp6TSwm1fguHfuarJUmHTaTAqz55czMXL+yCRTxUTKzvU9fpEWF7WxdxsJ6
EjbEBi9Vx8WVrrXEQGKOMd0NI3Jzr4Uwae6AVogKqIWTrYzqK/A1KuW7GEDEAvu7glxYnmOhUF0U
zEyL31h1pRSPOzYHwdTsfR+k58fgSHBe3LUfEVgoMs2oXYPtth622II3+/AmtFNzXF6egI7CGMq9
SkjO80k/iBmZykS03ioZyAfGwrMQpPVXZUTcOZHFJyuw/FK2KAJkgQG5xsJU9O2Wfbfvq1nS3lG+
6INbO0tuv2xdgtwOlTJprrGuwY/cAy16fh1S6/Qvj5Zls9KqEAzzHPDIh925uKuj4Lywe6l/sBHE
/PsJiinHDavXcqsRnkUWKHVsn4sBF0Mm1Q+JH1feM466DklM35aFCzHeLnvsZL2rOC6RCv5eWtv0
X8k9WSzdJhHcKGcXNBRgTeAaMuURtb8E1cwWduydKgBUQ1dNsmRg4ZAjD/2IAaHKScTMQHZYRQFe
BbKE8GrXvfS7uGNdlkHp5WCRpJiKHDgZBHypow33VLmCxd44MRma65Dz8l30zx25l7v2xPKPJApi
fhW9NulBA5dd3v6qh/VZ0pYF1hHKr3V/idtZm1LtDD2syAoHhMzGDPbEiFY2TKa1djB3saleh140
o+V2kdR+V4Y5YfQonUEIauCfz4QHCUzP+tGMN0Qe8UH0tnbAYIlA7Z+XrQJzR0GXT1He4+XDPKLs
obbRA4bGVkgqITvlG7s8oEKHLJJlpudQY0BJIlF+C3y8M0m40UzmlqsK7i+K6YDmQyj9bovWP4My
qeqi3TDTARVt6AVOW8ZftPfK9kYR5U/ODFFe8WFlGtPIn2itGFLCdpXgKct+CJc9kPWHx1MR0dHj
N07UvP84dpolRnxARp4ki9QbcV40+tcb8gKS5yWwvfQ174ZuVbPYpR8m2/GPgv4ml+/iEaXTIUac
3xOFsmOskE6umJ3F2G2v0GWsKku2fqEC/iYCDGCnQuBKodGuDkGEAp1E7/cZS73TVYyuBvlCXGrO
Gv8l3rGXnADHmAYgHrE+NQzv+Dofke1Jsx8dxf0g1ZT4Q5Xo5s5Uo6ckOpg+hPZWPV8FVlR0mLCG
HBtFNipYlr39xFhjT8yyp3qnYANAwOXXLxEl+A4AR3QH9fNqQgjvn1z7EPetwmK9GmHL3o7cNjl5
dE68trsE0u2uq6ALS2rVUTArjuImxUYe00MWsx0fHBOCM1J/LZQxAPa/K/STAG70HJR5iljIuKoq
FLdj8Iil0HW2ik7ePp8xvhmFsZen/fgg+Z4sLwvFLBoW25qXzPufZqPItpFYuGA38n8GpinsnfdI
4BkDVO+kLMI1ost0/VvtGJcZpw0Ldjfr4wogYn+igo4TKJ0Mphy3ehS0u6PKXxDtWpXySOYlCtzg
bFa2lcompMGCtLtKhJRRMreS9+uTHMlCMg4xnHYF6bvM0UntVRH+y1bAyGjHJNt2I7q/rK+r4E3u
CIQ4Fy505SlTeiQq2czxIMNBsm2rp27hr5zDwXJx33GTK02vowh9Xg5yk2MkwCTcaPr9zbm9YnYC
2XyPSaQBXImmvH2meZXNvSxxqUn+gdnssl5eJhzJDxt9BT/Cun/P+oBrMdI79e06HYSaIyg5qaiL
3aCgN8FiCcL5LAzF0tfzv8yuTv/hv0BQT7Ozq8IWlZJDdCMdTQrvaUzyz13jcVns+4bqGDI8GE3y
NUGjaGWHpREWW+bZETmnL5fvrdV5s/Bkio/BYPal5EPP4QukGv1p3VMF5xK8wY9Gf3npYFxPGw55
OuFqzKfoHiT1uzgPe/4PW9UL92Ep9kN4FlqXtMAihDPI4jmCJjgTy0ZgF8PFiC8Xw0fnGRW13b+b
mPL2SzEuf8aRJGLys+3IYHQlbXbWOyfB9gvlLUNngu1b2MinNEDO69l2bRT7hWhz7aKJCWLYXENO
CPgEFipA9deimIbpBentEv/c1e1DBZBPwcqWAScFA3tNyIi9i3RYNLCrhZwUEP6gBXgxXFaCydKT
YcPA42oslYpfaF4eeTTeQracuNJEO8e8qcqvKZLCiMX0zZPu4gjqKSIeJnLAsVBd4TX0aiK8/ZSP
vWIDsNB68WtHE/NsZKSiqyln7Ez+eGNbKGH+p2APOXW+nys5IbocBtHaL4yM6fjVHiDQtyMS7uSf
pxib/hZnYLeAnuO4yda3nMUwiys7VWysiNEZkOUM+KJDv9FZgROGKEBIkbD+hKb2CTpqxyVlPlUk
kmcCYdp3S6lP3w/hlTSG580olmbD5Luzwsvd1TFU6Vxu4UJfFB8wriCyfbUXmpMmZA/Fte7Z6j55
175fPEHwdedDrBu92y+h2j8op3Rb+Xi3kOupnGZmjgIbNyw5AZB1QAI7eA22A8rY3T2NyepH99Hc
i0KgrwbYkL5gUeIZaLMYs3DyADunKlkhAaRuS5qzwdjnoR8s69Ms+KGJMmZ2d2J+evjVPyxA8Kuj
09Befn6ehNs5Fc9dIXruPtmStj8vH2Nma5b54hsBeNeOkccynEIIHcGZJOsNbNrP6880ALlK2V6i
WPlpL259l+y3du9Lyo0K8Q5x5HZiUMtMcFwM9ou0P4+HRT6bLlEgY/um4toIFDQ2VyIEqy/w1yz+
A9Z4bbJQbU0WNKxTCTiUE7v884qviLAoPxL2Lcm29ZGxMk10B5uxuOnvmUwc4+SxtluL5naWFfGi
9w35bAgIiQ85Bzu6fc6RgNHnzG//fWifrlxe47IfFjb7fUYIn6BgubGj61UTqJLRLzxitRnepb8g
WrUXmYz0CE4ZzVelLGAfWRNL26ZgEcUzr/f4z+YKfTDNC40GENZI0MMSa5mZimoOorpAn+zgNEWv
o6xznELJJwSVCpae9fLZ14QFZWfChk0gpo7kAwtk4yLyHY+di/APnBNXaSgFuZSqZOI6w20r7SXC
pFfAOoA0zj0uSjvFDBvm4NJCgrqzVZHcpu1HXhYwiVyoRh51vqdxL9+YtL0fa74njKyzurHZ8pyq
lhvx7Dfcydolc9M9uGWsuuxoLYHFxEOKN6plufafPQNFJKhCQ7siW9hee+l8hfTI7WB4/nj/P2aM
l/WLT07qGYRbobTg1rIs01eFIaH8jznmqIMV5AZAb5Js2t0AepVtwE1qn6BupCAChSod6vChgfg0
EKzAo481a3Pmpv+vYR1BE4g2SSk8F/fcTHP+HYUC2PrTtwUN43MmR4CC8rB+tMY0tMHyXiqUm6Ax
CKAbRJbJKoj5qsqqVHCKL26dW3rUjf415Wi0d8o5zmkiWieq9B6bkXrimi172OMy2luuxUejB/Gz
9aazKcZVdFZZwKiDGrSJAF+RK7rPpo/hESnegMQcXIyNWRthZ5mOlseqSu7cJhm3PumTpO6G84ux
UekHN68K2mSL9pGc+/oijooKJQybV8kAIs7GeGqmc+mdcshKIgusEr9L6D+mvWEbvd9Yym+qAYSK
m262wJSpOcjreisbKK3Xu63DZUBCTo7P0KbtixJcMT+lrqd0hsplw2HgKz3tDMxQ9tApHTkBfD1r
4/yl161JrOVYOVCUw4ahzmSPRu3xpKEpq6RsyFMj+bR1QX9cpPp5hIOh7l1USX1z8J2tDdv7Q+hi
YlZmGHs4ewg7wY+tT8YjRdkCn6wA46pmVlLifRufYPO54ZYM2O7+49rrf/VqI0ytxpScQ1cMv72e
k4A2zsKeUXS5sAw8pQEhifHnzpBbc/AQnDek2oXxlj2Utesldv8xhuR8aRPhJ0Rx9Mgsi7T0vfrB
1VEqDYo0YmIsU0ydrwgDzcteeWSpVklzmiQPL3patK9zSR0E6flP1gham2BmWREefhfVi/iIvGEm
NJpxCy2lGdZcocVIapda+GRnyjjPzJIY/pGpLA1QcdB3gnWoLmYvkoq7WpMedSxNdy6XQQLQzk51
41yrhg+T04lUAeST7aX4qFa5vSsrGzoQxD6ev6OuQiwD4SaZeWJuTInhRrHyZxlCmIW+1s3AxGyN
55S94wBKO1NqijpStdac7LnQ6QSKfSpajgLT0ORMMDsFtCKpe9p89+rAWTIpkNxOh7txTyiUSnEi
4proc6sJTBJaDbxYnSO/cX9fkQy4PUzgAxZxGkrJGnLkn+EEK4ISgG1oRU3lQEJXcC2ebqpCKrM/
jPICeWEwBJ2xYeMdAsgFJCBH6F3nYp68oyqDyfhS/jqc5d9U9riP1ABvsuNsNWjM84t6nh+ItuJm
nCv07uuTHM9XN6jLYOxaoTnCaycWyVlM6QihvKix7/CfEjd1Y5kqQpm1D3f4PjMmiRA7gsENplkp
2+/oExaX5tR6M1G0SfKYxGt5kvG6kkoKtPYWhEUdzjIbUNh/ZUteoXBQ5546FwP1jFQPQQ0kQdia
ZapTnygZM2vEW638zKahM0/uzkzw0Am/xMACUIDJbQHkHbxt7LebymUT4BFYzW2s/VX9Suo0pA5F
Edxpq9FSFBQJ0og+UN5RZ9wXEFgv5NveKaqj16p301G1e3YuEULAjgyElMK7hNekyMGEbsVJ+HOP
OKsqPbfwdp4mUPQ9tSwagAorCGoOVNqewK6jaG+MS/MuUtZvnlcgb2An7x2TBGz3hH8tWNwtOUTW
gnpGZiW1oMV7jlzznTSJYhiRERf+YNylNhADSOAVDguIq64Ldn8LzHsha4NF8yvtVJT1Xk/+6G3G
UV2/qu8DNcKa8qD36rH2t3XxO6NWB0lvZ6VZXoYCwtBivxEAYV18debktjwyxJ5+so7d7yecnmb5
qPL1qIkkx2z0gtm673uRm3guo0jAQTmWor+dunKEjDaj+0OhOykjm7ul/laXIOmXh4AYXzloojyF
2eH99z9jmnnzZE9Hr9zh0tLsA98G600qyOPjax+F8jVgz2fY4+YBu0cZiHkyKN7MVzY4dfUaFzpt
0oygyxTMBxpG+ibVLsUrdvkdGiHXbkloIgUSotj51bajv8GY5UPHGO1LD83nFEU0jWAqBUTOOmSY
FdJmCr/KjP7VXsWvQIJZUpo4mor/+JpmL51pyTCNAFzvzrRJKlUar5fE5sLVM/vGiTKxUAj9EO75
+AZU+vOXEMUK2MFyT6IOEqlzapUFsGbVGijIa+qORqwF348SxseA9M62DX+pc7T2zn7VcPZzmyYs
y5yDbXFYx56FllF+l79biGeyFHOKrpbKtpaVE+/2a51GNKiQTP5LgvDralok7MIIGj9cJ7gSGhmY
pKGyQgf6ysgjo7IRwpT5naqe6tfEH5eEzQevVNkypkv0r/lpWbiK7Sb8QvMJpDD9m8xVKnar4lFm
/H7r10tHLmDifNaKRmpjQbd7ABjoxcRPZ2u70aNQmA+X/ClIDkvfqPw9vTwOHC7fcy5Vwvccmg9q
c5MlysEVrqRKO/KETeBVvrdpEFFRTsZcwt6cH/OQ8KX3cTAoFwgkEOc4Ktdfnod+t0CcrNwWcV4L
hfQhoFHgw8BwDXAXeM8+dI97OPwcMw1aKX0N4BytVGSwy2QpUToGogcvWu1//wLyXoYXixr94qiB
9LXP9aYFeLXUnIVIEX/NvTxf7rCwEyb5RIFVw79fEOJhop7w/rFLw+UTipBX5/d29yJ2J27hOvmg
y4FakPkuLlvEZ/ZwtO8jZE13eOph1kln7bgKPFFzCNs/FE8dj56zJ+6k9vpQHkoO3Ji8ICupN5jg
9TtbCnVi7zbq4Jn3UhkmQ0gKTbd8UG8UE95e2ODdAXyn33dHlVqNw7sUtrSLbI0z0KYH4BIj1kX8
HNqSi2mfU10EKwwD2wExbacS4twXQxjSerRRczSXWi/I6nVfHa3ZkXTYy0xXEuRIrKetgLhMpbN/
SYOStOoCXeG6s/HDoNRpD6ZpzblT2CvhSzfS/MqsaO9UWsE/M27jFKDu9feoUzFBrakKsU0g33Up
0+tPSxWRmDdycNIVmH+st6jUxZ+Gd8U+JJ+LCjtEpWxjUCYoXR8vRhIMVOLiPhp8H2zsHKm2xHUp
+4YbU3rUCbknjUOMzV7EU0nIKoRfDzqkDrHqiKo8jlKxPlmQJKy+o4DWTzn070aYebPu9acF5rIo
ZWpKuqypkYIaKHMgqw9pTjEPXHkTiKCz9Es5ef2Erwz92XwouhA7DqLL1aJNYJNJyrpbZmZNnpKC
GME+6QKpQWiDjQx3Q+WXAruKvoMw59Kz6L6pXsOdjjfJHAUrI8XNT7dTuk0pyiWIGGSJ0Np5EFQ6
xMO20RD3az+8bRQV7lKCn+RlqKDeks/fhr0qZXriv96pNMbVxD7msHMOexbNOhD/RSenUOWPl8Y5
U0Q1zrtC8xpYpvX2Shd8+aDgZoVM8suL0JuZLiIs32ogx04lSL9i6meVF8I8USmXWvzfNVWW2xqh
esEIpYZy421UIY5WuxzRpQlqgo7MgzqBwBFa6CkEbrX2PCfLi7RBIqpb9hRlIWlzZCvXpPv8A7O8
WTNLpMMglhPpo2KVwbVI8hQ4uAVj1l6irVcb6UnIr7ztdHUgJ6WO4dVPW/0x72gKoFUfmB1YrC+Z
InwTjx9gIeJi9MckmGI1T26ckc3HG3SHnt5E1aw6xE/OjynsVcVMw4WYLQ1zdrksUghL9MT6zVtW
jiP5RIbAWWUaG+L0+m1X0hU1nV+o1cGWjgp7Uj+OchYQ7Lk4E4/6JzVenlFoMmC1QrvRnihWDHBI
l7KJzwGj9aoTRXUp2bjzRLm9vyavdOfA1LGIeQwOsHKge5q5bqq3ZVAoNm7yNLh7rl3BgKpEP3e3
GlevWiIw5zqFCabd0nYb9VIoIG0QPmaPHsxv4BMt6+rpkn822aTYfplITbj1pKgIcrUujI+Y8fT8
tXaSkJqayaRTuseTCS3dpioIt0/yiBsaDt3CUDcee/s7WadJYoxS5qlCNsw0liAddHMQD0wJaaXr
I0ToNLrBDX1/yiI2taO7jbnzGTb1WCAWXsTZNC30V34/XS54C01q7X23js2DE7VEjJnoseiZ7bU9
DGz6erfMwHxIHKGq6vQ8x1JkZqaGPwmM/RK3Wj7BomSCle1pFU/AqHzU5RiyDwmqZFvQ7fdZSCCF
cY1uHfpQ8JaNaYvIVHzEX70U54ANvn9+F4ky7fzzYyImDz9B6cm00e4QqXlBSQAqZOndk5tuTXI0
dW/AIPNT0WJ0MOmCus5mWUdIIWmrdauaTUwbGpDcX6MP7wBnOi2evKGnSigpOWGF+3eKa84ar31E
OCuIm2S3p+/T5R0QfR2fuG2RwDSqdfD7xco+LF1pTatRauyVwjntYKsMApC1/e74hUTfVuZMy659
Ro06BzyuJY+GU49XoiKPSRdCSb+GEvaUz00woRPepo7Z2Lop+vJQL4w8qoHTAYH3cyO+M7cKsZn4
ztGSGNSlpbvUge89PguCFna3o3fXVA2Svz9S9EiFB+5VRP8xqOBweZLx94exdKy/mjeAmkT8b3SX
XLikPlIAz8tufPrHhHreqYj7oHm6K7e51tAwWNhrneYk1hXP8tv0IohgJATBwnet5OS2pP+EhkAI
jBBPGT9T3Gf9+4ydETAF7+P2SNbuQFGHpBWlDERz0LpOS5K1XVIauyBa7xGmLVwcFqDcDNn+2EVi
XIC/6uWh+N3KR790zQUrvY1N3zzsTmUSB40HLPM/sEEwcd6Lvp3jmxizA7FL6+YImncVily6LBnS
ASKLE3b8LTvoBPpbqpXTIxRtV15g+1BHoUAzLLyH3mzKMjZAbKVBQQfjuYabPiD4jP7M15T989RL
JP3jcX/1qMnIzLfeCqiFDN6X3bwcVCI0BCcgc+6aVvykqwMnE0hZwIJVVvxPDh3w+xKKh00IIGrB
QzIVqV+P075eZDmtqeCpBXetdyul+zRXhPQa+iSWrZohxYlyvvqlwo6ez8jmoPGf4v5tO1iMmL8w
VFWg7W6l6ZQkAz+41lHuPX4pTnfa4n8IvEe3LBWHtG1HsqxJORhubU/hH5f/vI91XizSv6fqvN4B
QfxGqw+LUGpZ88RGyA7HJjZrdRap+G5QT1jtDIQ0T4tTAKHFnTOoNl4MtkVU7YYt5/cczEa9+zAZ
QpCmTxLMfItneia/9a0+UD6Hm7ic3CmYNwjgPID+magWK0XqAuj6kQ9lolEgeP+79ASFsgeR15Is
6vcKlxu1ilWStemFhJi+JZ5KHEIF2D/331G466HeqFKwd+Fpo4bkbAcgwQO9wwWs87eDbW3kRCAh
l62FeNFpANjAh13Ej/0NzlsCXi2eRTKaAwKBWbBAZYieWWeISyx8bxEmc6Qp7OqcZEU3eLsZpkIo
QKFWufYj4Tg+1pHqzbFcZXM+IPoy71ZSukmY+HaKAFeR0cVUdXS43TzfiO7KK6GOVePgQJ7vExfM
eLY2kQroMCKyM6a8vUjkYnlWxPmvZU4b/LS5czB1Sidq/AvTsk8nVPB0/cBJ+j7UE2OxAvWtMct6
oEhORwp+4DYOW0+A19JhnQRyabrYJTEqCii7T4BVcUQFJIynv9cjUw9+bmvn90NV2hL/HXowKYIw
X0u12aox2yC735ZN8O+bb/hLPj8HV1eMA/LYr1B8Xh4L8XDHdTF1fwTeH6LlpFeVBjaG7hJuua9b
IgPZgSJRuiHERyyfN9FnJOhdka3E4gcsfQ6aA4qcvJKeCvH8ilpAe/McEvJTcenXeLA1upc47Hi/
SdT5Av/ZCAAlFenjMi7xZsBjm2IPihoP204uwuH/SMGe+iuknoIOX+gmf7mhkIQsde/gRke0K0Ay
EOPodXNjGIHTvxG9LsDqaIbOSs5WZX4Nz7yeqskITCywBdgy2SwxXtNJGDm1kBglQF8XGOab/yBP
rjdWpeXE5/7lBfMibzj65MCfdZnEhgHUUYUWOnuGisjpitWLdpvMereM4BWhG9wKkxyC+a2YXTSf
5aU90PGjIwqOgxYe6VHoL1NXZCHMLF4DUO8mN7IVBrDDjjXjr0io+jbgOh2NN/hNuZPaHCXJ6opq
wHGSqw/KeVoZfVRLccQQ6nkhvaohKO2w4Qo3dk2mjE418SHb1p9wwFf9t0ydfo6uRL8swufWcTwZ
Y9CMqHV0ImR0dCgg1HLiZbWoNY/aZWMHWF5iAFD7S0/lMlpZHsz803n/f5UeVNPh7FisBq9UPqoY
ojl7xjFcxpkpnDeLX4RruJI7A34pY+KxlOlN2d5b4sEs/8P2ZoSlrCaeTcSZ8Rv+RxKxZR1tU1R8
VYIlnEag4eUitsdqihpJxlnxVOm+j2EBTf/vsATg+Mh2IYRvy9iELeZ3T5CxL555hhE8zP1LfNE7
L6kWdlk1aqtqNMwGrP+CPN54e/b5zqQ5T29+hBhYdMb08hsNi3X1Dz0EVOaW4upGc2Mh9pChM2xy
v4FM6tNogWraXiS0E9KGvGvKLzqUj2w4VL199L4FsrxmIpHpf+yjYytlu3xCj7KczphsL5JswEU7
jNznqyGo2f3XF9C6FMreN3G0AsTcTq69aaaCuwIvfcYF6mH5V1X0Xq4oGptfgq7KDnB5Z0YvQwfq
JbYsP0UVcvlVHdJP11WB6xx5y3l91jch21h7UDlnviDHyq3nbIEeK45UYW6X5OMrWTsFI2XBUjln
ljGq3HopsG0lpRxJgnoHqsbxPZbJgy1FKFmXYIESu2pIoadeMDYoaJbeUtSSPHC0nFnvTlidXepi
85hwke9JNLfx7jseBFYED4BAubFRfqpOAe075pbMntk2ea4yrrb46i7m9U9cpfRR/pXK9l130Y80
XMoRlq3Dle3/rYbpKdDWgfwkVbeq8szExMZk907ZFt2u7t7bBvBLFYttKrq0z5bOoyUjk7GyCAyK
R8QdOE820770YvYHySnRbRpL7dpdnpthZS5lcWq00YTQ26ZK7jCPT2Bke1gc47AdAJGr30wA9jPf
3s0g/24n+3itq0kjQNQJZ+UHcur6n2JxT71I/sQmezWbytk26QxY+R8BZAR2Ufq44E89MKlvIIuI
+lirIikn5Z3mVymhxPM89RCxjoOBN8g0RN7qikDVlOIoEc5VodT0oMeYleyAvRGVxtjhrKecRu3U
IxyCzwS/eHrfGLX7KwrPt5iF23XUE+J+xS/zuJA/yZ+TZja7t1bQyoOfkHrM9terUisgl+E2fSYh
KvOTiko0Bei72V/ttZf1USXdlRu7A1R5qmBVY0S/KuxoLYlpzaTzT9PEojMq8l6BN1kLBDG+jria
VWXbIPc0jsoXdKWQUYihS+3TyOTwYba5VyO0oC9ziowJajwS10ionecsdGIUtVVwZYnP06Cm7LBA
Zs/tZVpnP++6z9zRmsVq5+QBXK+zAWCp8fEqDsBmb3Snziebvntl2V7TuC111/4vnmscr/58u6gF
zdsGPxQW5KYMthhmPJLLK7B/BewSNLOWGFS+kKFumrVzYsXfEGKuNO9eLPHdjZrjhGQd/LLwb7Xw
WdD0kQqaXJrtMyv7RmQ2dNfo12besgkaz4EbEnDUKPNXY7oEfjY5tAr5UMskiEbT8dICdbIbvjtS
1dyMwn7HhjKLnK2YmEmKHbmIlqHosgcQ3jjSlZOOsbAlNoH5xdshPL5JRRxDrZRhlayt/F1925SS
nV0K0IU4popmstQl6eR1N6/XN2RSgCivUY1ofukP0M/zRw/AROpLxtsmvomvtLuMoKjDlPR8gzz4
1DsAzUeXjJOEXDgpNuAzN998XKewkOGbgZdosp6aIBsvHXZSZiKYwVEVyCMhq4UK0eYoMYHaRA3i
Tdw7Hpg+8Sksm70nMtm1o4TD69WJxXoqNHgiy4YXThkOqjSnhb2MTEwhZljqWrhsCpveCsyShC+u
OTi5zcQjlKsSwT+smxYxzzZ3Zd3OfguXRCgwPwvcHoP7ct5QEeQWppCAdjcMpG2g5ILG07Vcq92O
jkjEzfeZey95CUscMqeF48fkMag32E/T5hY1651AUUT2TTwC5bxjy1VnduilxSzK+Tja+R1mH/9g
A5a+ODw9ZxKCXMxLgXs9GE0D+Qfr962Kgh2IGmoG0QGiDFBmgU0hdLwQ1L65jVGiC63tM3O75HAY
MtLp7tPtx0tQeJtYo0HtM0nLfRdutttAuI+2VtPJAeYHSHyd5SbOQdwXHNrrxGZKsojA4TXWA73L
ZuWcYgP45ijpv6eCHAonxcpu5rjwG8XPwFmraUzb+rJwbtHdwuopqfk4kgKXs4y6Of4OYk7Zi5PL
gCLDzEDRqvRRZqlMmASFEW9U6ZxN6Yb8WaWm4mJkH0gHdLBu4cr9YaCgk3dyMoJIlpijxPXFq0vw
ruKSXQR62CeXoBKawUODi11OGE/rcyK1vbgxUTcUzmm0INGIHNT6PNyJCSBa/hX7XIdqqutKsJjF
kGZ1Ma5SuO0D7a5rPQrLNh12tRritY+mR1zFfNrttW3cvPWj+wp9MHXkxR6YvfdkUKUjSdavOncO
ipaD7a4HbABdzV4ZLWXF9A1i0JxB3jryxzM6IXUxKEnWWTJ5yj5KD2ZJ81JyDwIILn73nYVYOpvX
eLdVdpKzdnjxpImXqWWp+QJsWmlBbfhsRqOnV6jgbOXV0lmKCecy1teAWlW8hF7AV4iNjikV+wso
ZE6bOXpv4a0eKKAiU70mjJuP3HeGpXky2fzmnP0Ds/6Xd6BngI29G4zigT2sOoZLLx+30LvUeDIp
X4V/z6CY8VoxIG+o/HRhoOFLgOPmYb9miCjRVtQltbdl7Gw866D5QOszIprJMPppAZ8ZWieD3VBh
lWuOn+hzWv8FZTwXyR/W8sQKwgO05Yx8QaQkGW0K3kTiEs58wAQt8py0rfVtM+MaERQruTUzLSt1
p8zz85laMIBS5SaPuSeC4vlmMRpbw+BQspi3GRbu2QRNpDCKP0OjS2NlP2tPf0z520P3l5KXhovq
KtDWS72QRpKCKm3BgqqcCIWOWhDnFJrTHoe9fORPDgXFD6OXklh6O4gqQq4ddVK8Zx/u7Ym+SuHb
lDFimjXKFBL4ToGjzQ1FdA5ranpJPC+fmPJC/lBSZQu7+fhFkX4JbJiikEJn5ZHS+9ZJiyNVRv5y
yrcIWZB+jklZK/do2h/K+IAbqyzGuheruLcO+cqWqTa96LlCJgGPaFFrYCQt9ZJrkjdbIThE/Ezh
GUcEMrc91Xmgpsa9Mw2VRrTrqfbpFRIRSe9PZHnLuchFqp+Po4/NYXFTZaFTft9xElD5IgjZp0wd
S1jz/6QkBemE4jLzS2o7Dk2yj7ANURiOhAKOyqXVq8ev2+qW+ClBryeEgdkelx2F62t6yFcGDH7l
a21UqGiR+VgL2bFtrvaKMsYeazaMW3uaBD+o7x4P2Zups+ApP2bgmoAsp1ADwjxstkli1Uy/pUUC
t3uZVs6Fctan8deM6XM6Sl3UsOxFLUzL3fZweb+34WAckpyqTMpZ899kqfBMlTog6gPTj2Lh4DlQ
XG5iuUREAfNn/ngE5Pg/6YYNY+ghRBzY/yM0RH6D91G/K07RC8YJSCxn2wKiJvgL9TPlSVhJqhe7
kR0tZoJhS+qjWacRsTOl+YLVOTXtxjBGoA076XvKgAsxHBWw6K3Sm7UiY9hpy9PwCzyEfdqwdM2h
QbwMyXOocQ6SbOMdYZbTE9964I/MWZ7v0KJ8gJuYCcgRxIK3Oju/7OP0kzShOxK8SixnwmXmd5RO
xKB1EeBbZn6lKR3VQBqTXp/WLfFY5IK3kKlDp0UMvcy7OVGHSGiO+lkXhKnQJGvesgo04T89+bEu
V71RFuQJQdRX3siThxaqhfjRWeaZ9gYg41bjVNPpexfxBFZCp0X82KmrAZL0kAplcji5BfP/Sj/y
nD6zbYe7CbwZ4EYzrQJaIzjjfq3VT5t6DXXPUFxJcUZt4Dgkj1zQv4BCE6ZPNOgLSbn0W5UrLiEv
AZdJgeWrV6LwN1W3UemYTcgccYKq7Ttgno6LTEUIrkcGuT/Auqm6a/Ut85FkErWZS4nOHeM3vfC9
rCmudIPc5vu8MczfjLKYF1ALJcxvBHGe+PRAbqLMcevTRXp2o11ZI21V48dsYDQnjuYaucA6gxX8
4zuCjOGUm1lMRH3VKoV/6jEsTPHGUtCt6wc/CBmnsESJrFCmTYpzGb3VprNjpwipQNimP6JKxdnN
vvusGz4Tp1xl+nlvd7NDq83+KAGYmWe8lgHwq1NpnkHwpOZGJ5Gg/ZBams2R8yaqj4sfHzqdr+bd
llJow356iX9dJv/mHOlEOhkNXhN5+zDpMDitda/PhxqodXloXka7MfVkmqTwFClN03J2EsxBApVV
gYy/Y/gOY1JiEvgUwjO+YGwxgKXENkusIi38H16XRnLiVnaUsuP761FTVLMYzYz7QbaypOZ6MPmx
Olp4+3AY1oc+JrB/D1XKxHpiHfy/y162LnaTC8LOkDYMjwAM8FETcRtWDtr8ZNy/+zakvhUhT8Sm
qw3584sFk9KffPaUxqQFhvlyBMJiQCXW/PNYvCsW488KCL2T+aCypXPfMvgtefvJIwUKMcXcXDwC
DHe3J3XQsH4JRkLpt1kuqTAVHRlAnnptfZK+FGruJ+7A1JBkLuniCutcH36gMqKSy5nkS5EzS+fo
5nqjDx4EOoZ1Yb/4cokHtCYPuKO+ZkrpBXr9PkJmfHmUEQya69vxDHKi8YRUba6rO4ZKxCkQOB06
n03JbxJ3ndJJO40xIyCV2paHURgUh2vHDPuJiNrHRuz7JlFArlvcMe3jR8RJ0tPjHFVTPOXe/Ref
9uvoCOctbK2Itd/NN9RgM+Tu2UkLJK1c4x9Jr3ZWdCjjy5nLH2aCKIwRgVXe/BNQvdDGRWCElYoN
ZZ1+9drnn6xLTcIuxikxugMpc3ek+mdCZ97wsB7KENmsC4EF+noyLjhvt5d20/UX+7FHkW8bSVhR
W09VazATG2DUAyL1V+hqB0VGC8dqsFMfK9eeAKlMzijoGLt45CzBqZVpwPx1fTBZGg1Np/ykTAKq
WkyWN0H96NKbt74vdIMJiLE7PV3yPmhXMRY87NSTnV18Oi3q+olutoaWlD5Q6ivlExuyjEaqimOT
+DrFMVaXDX10XElNWJc2XPBiIMDWp1NMZA34WVri5j1TNnQ9yAras0m2M6uDLBKywhEePucyVqpS
aVoLXYRNlmMYJwabxTYEZED5aF1nYTWaOav9Pi3b2Eq8rr+xb9d71dFrVyXbP3cgmNq2DbbLumfS
RmE6TbSjoOR8/NEIOS/VILEiIAGXX9MWnxqkilTOAbPkilk25v8KnMq51ssn7qREJrtb75/LUFYJ
ef5m53kryx+3ZJp6dAXeKg837RjDEqrGxMI+c39Rw0oVysy0f7kqyPQfRlVcBXPN2oUxMPD8lwUE
JFL8p+fR8VRnOKBdiAe3DJClrqVqjpzPN0S3sxtLK7tx62R7HQflZ+CO2sX2BrifNXoSE/EnlJaF
8bpnyaA6il/j38clQf2S37o7r/9DG1dgmDAOiqau/hJUfdWeAoWVeNWaQO4NVZ5dtV/PlTiyvkiM
fsnx5hKNI/j3Voe/6PK4Y/Mysi7K/aiy5gpc1hPdBw1vGTSE9uAw+4okIdgqh8MzWC7rdXi0YSBj
0TdMrSLShIPnmGtygGo1eurEH8soBMPMQIJltRiX1twik04sKj5SwU+p6Pq91vqN2je750y3IN37
2HyDoIuKnnfELx/mbPgfNFYA1JOnO4JoHylLIeONL0/2QK3nttMyJsBRYbX6NyViqOCMM7PQ0zNz
Fm93k0nG0JlcZpoK4d90Z4jr5f8i2EEQnpZAS0xlRqMRBj3Blk5VMF6CaZA7IFgU7lu7TvgKkdZj
KuvPy8rvtU/01C0vfSZ+iacD7wMBCa7dOfeSE6dXqnS94zS9KlteRELDHSDGD2s1jmU/7AxqGu2I
8mzZo9iuwFb33kKZtIXazgps9K9Tcr/pmkDYakI91oBbIAsnIXp0OD5MbAe3TQqnD/Xi0z04K4lT
5hwKRIWiL3OsTqGdNzS/3lh+TnPUG0JqXEshFlhcA3a92MwDgo+U5kdoffpIChK8r1Gi1VAIPuWa
69XjBqbGJpEY2kvUXkyvm4nwwjnMeX2nkEC8g3hp/SrHE/v86MxZnMuRDRp9mUPDgodVD8SoYkIa
GQ8Tsia+QJeLWnQ120uXuNozt92/xoNaOs5uihzhnoIyLoKYavKVhr0D+M/vof0+lR0saWrvfNKR
HXQe+FBKS4wg3pfgwiBMWRVuP2j7498TXRZ+hs/UfbTGKNrCx4IrqZozm/Ky2x3oes4r7Un3Z8Km
8vpWFmMscPZsptKe6k/j7JPz/kLvRZHKBuPf2XnwZuDr9r1BrmFUh7bn5W6cJip4JdZE68dsrFjd
jPJS4aIFQNWcvuQ9up1eEQN+bfi310FztN9TrVvedmIUDtW4gjQrJpXb86++PJTH0HfCu1c24DPA
FuiO/Z90cxaPLE+8+GzV16FYFoqLK5su/7wEK7jxgA38IhzvGiXY5iWeG4ctmkiH5JJciQ/WrS+V
1vmOfKYiAXMC9GrGMOj+pM17fXOTLUTjjHANNFCDFMq60XOS2o9TtP8ZdJKc7l0gSC1AATfGCwio
tEdPko9Phw3nBzGTo/9CRd8u7ELWMnqC0X2OPd3dne3pC0CTSOHLLI4DLP8S9DEUMn7+5FwCZMBD
jsR1SThgJisCSRnf3hPxZBJ3z7dGrdkFB7jF2SAOMrptJ/XZNMt/jIiVmHM4RVEt2w0/L23bW4iC
VHPUQ2zAlwNGUd1cMWL6yi+cTfb3JSrB1f+Ci6enI+/oiYLLJj9Uq2ArUnK4Wlibnl8WTfaV9tDs
/UtHJTXY+dH7D3NfOKGpKvNkN+bPzsBu73Rt1cvLntDyVIAaBdqopN/ogysXMXyoeDcKz1kEwFP3
cWWo+tJmG6GCXmyvKQes/AO57iHPouUDz5VfG1pQNK53EK7dIpbaRk2z09RjKBSqkDYYfCJvOS66
2IUw7LKceWMdX+kwTZxkK/IODPFBwB+WafO7MH9h4qiJC/UDB+LaBUsWICL35JErHSJGQTkyT9mn
b9RVqgwAlPcjFPZBUC+SmaJEjxrURLY6SiQz9WyL+5pIFV4YLMSyIj48mptK9TZjq8BmCIB49ZHG
WXgMJrchumHi7mUf9vBFasjcFEhuiosZuv/XpTfgGWQZOz3N0iXKF4Esu70BBKyNaMl8Xfmt6epP
3BKtw+jbl0HlvNYI1hSiltQ8DV611QLqeJjzmAMyhM7HVIZm+T0zEXMvFeHDmx8phZqJ1RGzq//0
GF94mfKglL/Ds1CjbrKTOyz35Mhk3pj2txAYe8wV89CzAXwp9iJhDHEs8gieXa2yZd0hxFFMRZfK
XSlvCwBtTtgb+gB1i8QEsJatzZwIc6PXw4BVOcmEWnx3kh+wDXalfLQvdaWVfVO+iNU/DKzRqx8Q
YTM81YFykXrDlaHQ96x/sHFyHFmkwAzcz0cSt3eY98u+LHhzQucQGbYHHIwsEMjYW3Q3p5EYiXG6
JHqqxPESPQREdyCGHFv5kUnULzWbH/YCsRM5TiKXbozd+37qrwYvYuIuVdboeLwlDYQems+OEHl9
PPvIVz07h2BC8tcv4iPEaDtFjwOrlp3/0w6ppou/NR5KVdF9qPK2Nqedxx/AVTuPcdjpISeEsvCv
XQXxnQX71Q7Yh9nRsnUevVXFlwLOLGJxiTeMyt2CKe7HjhNODdIGSBys1Vtb20tlHUQW0lEHn6ch
r2Jgye1mrHiUli69+dB8KVvNNFt3w6m/Fs+ODjWxo2HREcPDCNiaId7PXaFuAQXQZ81G02WraMt4
Aiobp1u2PbLTSNwjyL3OXBR2/ooE7ON29h2FTwzJ0Lo6da+l9N1CCIrdeoxtsTcNWS3TZ+yfmGVC
YPDfmokJKNfVhZFenD7KI94pitkhs9ZitWNV8Lc/hVAN/dVY/jm7cacHDXrV/NwaThBWz9G0xSK2
iSqQd71noguNsemkq3EInGCJ8KVGiupL5eh1BjSgRqrNJf6pZIPSFj/TgcCkwjHa2UItG4NvwA0b
YXLu0iWFfW1/nZX6wK1mqaL8+7lUNiUQy8Hk10dKLzmdpIUoosDY6+U/SIVvBEpEbCwQJoqGzyDt
O36BVEprwFVmmlQGBpl5WW+d+723Xc75sSX4/QnRhg4X3+eSSu9xGG5ZRO5zPVgKjPzX8Oh7N7pG
X6uMngUyUxEk3yFXMS2TAaK9/q/JhBQwfDS9cwOwu9jxcNMgp/yEkHunYb6VMny1B4LWlijbiw20
QLifj2G16f1XGNyawSFPwsLp1RQjarXQC0KCaIQMJ4WZxhrjdM0HqWH4clFO7RkzSFw3Ntn+Etz4
Cp90xjifuJGao/IcBoPkuyLRFt7rVoCmhl690LeQU6Znd6pi3odVlyyV5NzAdQkkjnfzCUqaZ/cY
6J2xY3BOhZgUpQDlAghwZSnqCBpzWmEd+uA8YR2WGKxlxzmI4S4+5e3XxdjMDZHIfCsVyXLppioA
eYKxa/XBBZw7ISklbYXrjgADpkuNfNkgku6REAizXyf+tdLYCdtqKYJlvCrcbo1YVQ8ezwpPJqC7
Y6RgQI3jTXQtDw7WxA4KUcMbPCNW6+RHqp85+IdKnG+1uToFE4+UIOUcwlAHTff8eeEH90h9tOQB
c5QCy575a6K6RcnYD2b3nXLLvg6fgNWnEwYY8Q7fVJnz272yYyrhi0brXb6bfsUfKR43BxmYMGa+
5+Zp/V7zKBQWH5+RgXDjSwRhET0kIT9O31vW5HTwNsRDoIO3X3lBeS7fQVIWz0bEqUaIjlCaUWuV
7o1hfvcJ8KICooNOOD4QLVJe3jEKBwSBL2MuOArvKhhs0Vqd8rdLfiIOcJDpV+bYBQCHpfHdg1Xj
RuZEVNR9EKRzuaasZxtchoUhP2RWt/MZz4K8zONC22OVABBjZ0yFTldEz9M1UPt+06FesGbUtKju
y5EgZ0LV/S97hwcPBVqKaId+9KB7fYTP31/JB8DdmdcTgJx8AHN6mUgSTVIka4HZRImbl21hGsUZ
yb/2+Rb+sLTyegAisWZNYQMWiMcXvemKIj6eso1ODivQEjmY/j4HGSIHysWScUbXL7yzVVz42k3/
amsielgJP/Hovva0ik+tx/X7nMbxiGu4seCmf9Ws2YgWofu3/5mh2JX7oilYNhEJAB/h0QJ3jWu6
ba1FZIpzgN32f8aKyLIMH8hlVU1ZpXgaIBSOVLc1SJ3WQZQ4yKS92QLd2V2o9gK+Kpu4S6Hyi9cN
9MU4Sxl1ZLhTZErHPp1TFDPIYNI3l2HEOQgAzmcRtel3g1zvCiNDBRy4tYXWGGTrppXppY/TExtQ
uc9XDYIaivdgAGE09kxc7WgaGf6dubOueCMdwRiAul9P4LrIthA7de9B4H0e1OycLBUqZc9bg+wm
LJgBMXJu5xg1fkcCsu2Z7LGq9kFgBu60hp+r2NJzNlcDh2ROG18A/5zcw2CPklm5t6UWxbw1Z03V
CqzSEEM8hmM808Dg69+HMDXv54Irnmfe1/Bv/PIJ5sqI0KnS2PNsn10nHWZYxjnpRqH0xzjsEoB5
P0ze3TQhD/8xljw/POTMThV7V4ER8fNHK+nDySuxWCYacjZtL0Sh3VvkXSFbjFkhF3ReXzpQHHgt
1cRy3VQVramG0a0MTHNagUcHRdd+LT/wIB5J7YxAcYVfGJ7bbJNrUw0b5hPeMB2UoN0xDCa73q27
upVMLz1bgqMpKl4TSZe29Mito3SVEGPCoFhnDwMeEUwrQCo/kb5AC90yNXCvrvxNhzQvpASN85Td
IexUElXnbWSDWZy2a78esjht3OW+OgZ1CNw28mTph51nqA2Fe6XPhYrrTfW1MSpSsJ84wJv2vnbm
qLcuB92xaPcm7V5zFpaqkMbF+a0tYZkWw3BYASddDfsSF5uSNcx/4PZvk3PSkf03ogiPU5iWBPyi
E5NpddAx8Mk6D35G/sTDeSz3BZ6gMOaOdZNIxvmRI9Icgo7g/vj03qCot0uLO8tMtZ23vsqiYD1p
o2EsjqPkL7bKMT9EECuren8sWxbAnnLdkMkrnMsPUamFeDC20J6BXWiIo/FI76+7kwht26dSAZLZ
2bd9jt31WRYiIMViFYwmq9mR1NrLsMmlNgV2ETPfOqsKllFoNk6NaO2DdndQ/1LYFv5hPhqoiCI3
zpYUKYYORDTUCbzAIoqmP77Sex9dQDqcnx4H7fw8t1jcYU91q4uPLRdj89HghMmsqkPtNsw7sEIb
s73ZG+uj+VlEjSWagdOrVezkUQX0y6nQy6Up4BQ71bm10wY+5vL1z16DadZvA6G5mMgk/lPVtg3x
HkLN2dMvtMLHkw+z18jjwcsNXMTjW3C5RCCsMQxDcJTH1sGfHjIY9mu4hmQpjioQT6xwVB+U0str
LDSmQCr38zFL2UP9fW20/ABrSHbbQF1wRdSBiQHTjhh47yoYmxEtepc7isqZURdpEzG8Yy+vNfX1
/OESu3Hpwma8QB9qw/Xxk+Vri6Y6jDuOahaYWP3B5sCTLa4ULyxVtiMl2vQ7u1hFNSJXD6VPX0r3
IN/d8OlekpUGO3iLZKPBa2aNyhy3CFHzP8fn81rG5ZeSP7LEFRovKnIN+ThpewBrP+nWSvYMhRKI
MVFQBMBAB817TECq5x1GML67z8lk+1VYEQe3Pmu8Y/CV5ihdz7sPjRHMu2WjzDpNp+hHmJKQumG9
6/BL7W4jbhA/bLivnGmNPe+GjDhq2WEUtL6F7Quyp4RduF9FtA7tqTUBlnAWa6yjdWo9mZfOSW3u
qpe56TN0FHgkKri8ahRRWSxpOVRYhQSRN+qpQ4J8LtHKzlmjSLuw8tH9CDfnwoewDWCjeqy8Joyh
poDJyOcZtm9vfxCjTUxXrCZhGrhD6gw6fxSqiLDti9Y5KO6dMCIrAVhQIbfVhaegjcLrtn8WspBA
ptkuv7PX/ua/EfqXozPNnu0venQq8GRY+EGn3OIJgWHek4rWpnw7YfHHfisGGOYUgg2ELcIHGaNS
XSbyCfLgSxZ0fwR6FEBTc3ALpoqOXzXmMA/kva7SBovnQfiuEAuUI4YRpWgIIpFBuDuQhJt9oCza
0adbHDsJapHlcWtpzAhQTVmaQtS6/H1dbAnH9wiB3uLrbXw5ltljd0n/YEL/YssPdqkKv+GvP3Ug
WXAl61j0gN4cdxeSbsefauAT17aHWSQb24gH+F/0PH20bfsaGspvozOq16SBZAJugR2lPjriOd8Q
dn/F68JJUdL5SuPMwI+tHPpnIUbXaDWjwx4SG8DFN/RrgT/u2H4hw/IhDRu5k799R76m6z8QPG1f
cuqShZ6lWPFdHfLVlerz5dB/oMvgxsyYUcoNh41ERMyO5AlXBixV/MifCqDm+VX1CYxhCWhwkJf9
rU3EA0yOcH6G9+AyHa28jGZLpIzoQKE+YHPzbevCBa/J8fcLGivHa4u4oMu5TcvBg0H3B7WCT27U
DSpbQbwRG8nI/qGgu5MuSJpREeukdWqymx5R7h8TNN1I45jGHqzRnTRiI1nKf9IkfFAqtB4ilR1A
SobE6wYLZiMGlVgk+MbaJtcDRz8o7OX/AcvtZTg/4KVMCuEGAWYxVXfuX756l8K+Sgce37lRYUnV
IkJclPEkX1C6G93I7/4+zivv/zCD3CwBF1QYRLh2NouHF7HVswoYYzbDxuptPMx97ZjAsLDzgXv9
YhE/gR0tibz399nZFA7UeiT+Fhbx37FodDR76FuwM+cx0sd2AKipXmLSzF5yBj4cd2azhDCHwerf
rkohIjs3aFe+3Qxujgpt4CaGZsIlglSBABK+f5IjUCe3q/W0zpklzZprieZFCP/4nFESJM90v4xN
0DKPX96ag0TKPjGVn0ubUFy5+xjJRWolahDnyeKcTS8TY+esJ5zOn3xANYNGXbLmoCmjd1HddUhH
UcOCI+mHW/D21lRHO8LzscEMT99mY2Q5AwQK6E3v4S+b2yisvG+2EPtgrHpwfs5XxMBPXsQP5INe
bbtSsnp4C7UU4fpmRhqvxgGsyfbnSHVPHt+E/mPG+wtb/Q+3YSi2OhpiSUZYIGEsfFsuuCPR/gMZ
k3RXy5Xkjqbn++TnfMgGQNvJqrPiMOkUt/1KeoaBKx42ovI3hVtOiPz3F47maxPp6VCOn6pTCjtA
wv+itjsezTClxhwuO7sa8Cd02/zPHmlLmX6jYzpl58mW5FPvepgceKI/lEMfjKOM8YrD+vX69GBi
bmjQRZtZHX6YmH/0QTIkkCn5gr21tohapxX0GaItgo6VUcPSbTp3YmPIVjmFMYa/LnTppSOSXR/F
VTsKol3eTwso9ShrXIDnK39JdU7HaQBJGz2nPy/SmlqGmdOx3hnau95zeZfvLPub3v5iVEZoHkUd
Oa7hjAdVm+f1k2tAuBOdS+9Gxu3AFNBPOWt71Xu+HxgtFsB2QO9kczY/vUQcvuzPg3YNzdI2MbJY
MX5mrW4MWL2HOhq5FsViIlr4aT2rVKkbPe3Ig9oi2AI2tVCNYoZizZLZFn5rCvwr3QboINZ0Jflo
0Dyml9ArMWBEu6oga8KVwpFaMWg6R+QQDx1Pd4YjdeFCTYJPtunjn0UMxEbP3znfS/Bs0KEFa1Vm
CRVn95KzIX5Ohlt4TWJEfiF2QZaXoC254qEL/hc1MULjvP+AGIY9V/TPvpcz0B9lnTrBoMj51D0m
pWh7yjX4UwFsYgp3INyy1fTpy2Kkckbv2e90Dd09fNF8YMHOmUMWWwPgVxDW8xkBfoa83Zu7iSqa
2MpOQMJ75ypMKtX8sYsc1rG3QRCTCztu0jSc2HWkA05yu/90u6bRnqkBToNS/E5YdudfmhjbOibW
uw+2z1foSQl1Y/jnQWBo4QLaqo7L1gzL2asHp1VSILYFfyOHJUtszDU9Mn705fGx01PL+RcM5DGY
ERoqq9bry3s1wqqbaANtP/vPx/LsmG277FD7TRecGFx0fENi8IksDBP98vmLGPmm5LoMqLWmsBON
/7nCVLDElW0CyQzc+kJHMrP7qNz+RRz0ATYNogjqbQZBF5oBazaK3F9O+TEGK1gAd0mgAO9kqi+e
H6/tL6G4hcW9vqz+NtocIQfocKMD4sF6zNuMA5pMsA4/7WmXtO5kOWFMyp3bAXKBcUB14Q+TBZ2d
vvCACDmhi0ZUs9w9Qu2TLMWD+aA4zWW2zzQDdJ/OtUJJ8LDkkwL9vsYrUPn28AK9nrqJyFBtFmCW
TIBK7J+ef8TW8/RG5GgNJWcMPMDr1t4Mfkbu4KXkvgmr73kJc9hLMunrBLQ5NVCRgxtJFLvoI9Zb
ogtXJ5Wj7OCwSsK5h49z7nzCY5AjheDldph8hyWtpTIGUrdmzc1TPBn7lPhv8IMejEFN9rIZwBmE
EDCaps7jD4+I375XihSoZRFb01SvPTs+CqjopJKZSmokAz6qfWmaY+rPp7hfywhYDgNT18+L5hea
ruhhqDvHiNo2eU/MuVktPX7ZGzd2clR2OpfEIqAvb9lsjwJ4FFd5FiNTCQGxd/y4tbIb76lj+m3F
4cs+fIFIjPR3H69IGjjxB4kcuD8eggBnkXgVePqx6o9nXsUqIURv0L9zJy3kAD3/J/zxYzlF+yFc
y5ubOuAUMl2eOjW6EVQUIPivMiFKTIE9+Gz8mODcSeI5cDBGGM6JyIutpzP7gFHhBnhufCnJ7NBD
B6U1oxj6UxKMzlA5OKXRTYtExpiS0z2G5gUSuJX1LcJN2hZgJ+EB03Qa0Tz7rzzG3fI/1AfqeZMq
w3j+JecbNA0fPCjhax9DYO8mrFsAcvnMFKsQ4AKuUqwiVGCj7/ECZBFaDFQN0bpChpv4oPtEzcab
MIUEASXQH0Tdb1pbAWyZkPWbMlWFfU1QSdPzqPo1PqXf2QsW5XfVK9HnSSdOFM9klBu4CjU1us9L
1nKXHRy5oaT1D3JMPkkRbOJgWJZdGJGe8YXUEN5t7iU5IbDTPmRQdEKlKHTvv74NHYrToL79JgRD
PMPIyOLpQsVTo62hirET2dPrC/TPJs9saTuN1sz9HQD8KRD/jhn9AljzWqcg1qlXStGioYpPd2hC
CgHbNC6TQC9cZxsbqbnIfCfWRMYqmNbGGQzAUJ/Z96kDJQQxm1r6rXt5+ShjGrw0cVLu+n53DG1e
IWQn59A37MbYFaXlRPiJ3krCf8G8Cd5FuoN3SiqNaA2N7QeeBAZ1gzkIqdEjjsPaEtsaDuIpqw3W
CLEs5BXr466Jsy0zZbU0IZffo7nimH+8ODzf0kgW7ejTIFtkEU84GoyeqGlHyDSSchBrp7Ur8F+H
yzV6p5liVGv2G408+1MN8++4OzLModHGPrHdy9rIIA==
`pragma protect end_protected
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26336)
`pragma protect data_block
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
j7o=
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
