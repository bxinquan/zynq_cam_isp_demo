// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun  7 07:37:10 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Work/fpga/zynq_camera_vdma_lcd/zynq_camera_vdma_lcd.srcs/sources_1/bd/design_1/ip/design_1_xil_vip_0_0/design_1_xil_vip_0_0_sim_netlist.v
// Design      : design_1_xil_vip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_xil_vip_0_0,xil_vip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xil_vip_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_xil_vip_0_0
   (pclk,
    rst_n,
    in_href,
    in_vsync,
    in_yuv,
    out_pclk,
    out_href,
    out_vsync,
    out_rgb,
    irq,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pclk, ASSOCIATED_RESET rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_xil_camif_0_0_out_pclk, INSERT_VIP 0" *) input pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 yuv ACTIVE_VIDEO" *) input in_href;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 yuv VSYNC" *) input in_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 yuv DATA" *) input [23:0]in_yuv;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 out_pclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_pclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_xil_vip_0_0_out_pclk, INSERT_VIP 0" *) output out_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 rgb ACTIVE_VIDEO" *) output out_href;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 rgb VSYNC" *) output out_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 rgb DATA" *) output [23:0]out_rgb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [11:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [11:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire XOUT1_carry_i_9_n_0;
  wire in_href;
  wire in_vsync;
  wire [23:0]in_yuv;
  wire inst_n_0;
  wire inst_n_1;
  wire inst_n_10;
  wire inst_n_11;
  wire inst_n_12;
  wire inst_n_13;
  wire inst_n_14;
  wire inst_n_15;
  wire inst_n_16;
  wire inst_n_17;
  wire inst_n_18;
  wire inst_n_19;
  wire inst_n_2;
  wire inst_n_20;
  wire inst_n_21;
  wire inst_n_22;
  wire inst_n_23;
  wire inst_n_24;
  wire inst_n_25;
  wire inst_n_26;
  wire inst_n_27;
  wire inst_n_28;
  wire inst_n_29;
  wire inst_n_3;
  wire inst_n_30;
  wire inst_n_31;
  wire inst_n_32;
  wire inst_n_33;
  wire inst_n_34;
  wire inst_n_35;
  wire inst_n_36;
  wire inst_n_37;
  wire inst_n_38;
  wire inst_n_39;
  wire inst_n_4;
  wire inst_n_40;
  wire inst_n_41;
  wire inst_n_42;
  wire inst_n_43;
  wire inst_n_44;
  wire inst_n_45;
  wire inst_n_46;
  wire inst_n_47;
  wire inst_n_48;
  wire inst_n_49;
  wire inst_n_5;
  wire inst_n_50;
  wire inst_n_51;
  wire inst_n_52;
  wire inst_n_53;
  wire inst_n_54;
  wire inst_n_55;
  wire inst_n_56;
  wire inst_n_57;
  wire inst_n_58;
  wire inst_n_59;
  wire inst_n_6;
  wire inst_n_60;
  wire inst_n_61;
  wire inst_n_62;
  wire inst_n_63;
  wire inst_n_7;
  wire inst_n_72;
  wire inst_n_8;
  wire inst_n_9;
  wire irq;
  wire \osd_pix_buf_t5_reg[0]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[10]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[11]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[12]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[13]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[14]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[15]_i_3_n_0 ;
  wire \osd_pix_buf_t5_reg[16]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[17]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[18]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[19]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[1]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[20]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[21]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[22]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[23]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[24]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[25]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[26]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[27]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[28]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[29]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[2]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[30]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[31]_i_4_n_0 ;
  wire \osd_pix_buf_t5_reg[31]_i_5_n_0 ;
  wire \osd_pix_buf_t5_reg[3]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[4]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[5]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[6]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[7]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[8]_i_2_n_0 ;
  wire \osd_pix_buf_t5_reg[9]_i_2_n_0 ;
  wire out_href;
  wire out_pclk;
  wire [23:0]out_rgb;
  wire out_vsync;
  wire pclk;
  wire rst_n;
  wire s00_axi_aclk;
  wire [11:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [11:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire \xil_vip_v1_0_S00_AXI_inst/osd_ram_ren ;
  wire \xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/href_t3 ;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDCE XOUT1_carry_i_9
       (.C(pclk),
        .CE(1'b1),
        .CLR(inst_n_72),
        .D(1'b1),
        .Q(XOUT1_carry_i_9_n_0));
  design_1_xil_vip_0_0_xil_vip_v1_0 inst
       (.DOADO({inst_n_0,inst_n_1,inst_n_2,inst_n_3,inst_n_4,inst_n_5,inst_n_6,inst_n_7,inst_n_8,inst_n_9,inst_n_10,inst_n_11,inst_n_12,inst_n_13,inst_n_14,inst_n_15,inst_n_16,inst_n_17,inst_n_18,inst_n_19,inst_n_20,inst_n_21,inst_n_22,inst_n_23,inst_n_24,inst_n_25,inst_n_26,inst_n_27,inst_n_28,inst_n_29,inst_n_30,inst_n_31}),
        .DOBDO({inst_n_32,inst_n_33,inst_n_34,inst_n_35,inst_n_36,inst_n_37,inst_n_38,inst_n_39,inst_n_40,inst_n_41,inst_n_42,inst_n_43,inst_n_44,inst_n_45,inst_n_46,inst_n_47,inst_n_48,inst_n_49,inst_n_50,inst_n_51,inst_n_52,inst_n_53,inst_n_54,inst_n_55,inst_n_56,inst_n_57,inst_n_58,inst_n_59,inst_n_60,inst_n_61,inst_n_62,inst_n_63}),
        .\ZOUT_reg[19] (XOUT1_carry_i_9_n_0),
        .axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .axi_wready_reg(s00_axi_wready),
        .href_t3(\xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/href_t3 ),
        .in_href(in_href),
        .in_vsync(in_vsync),
        .in_yuv(in_yuv),
        .irq(irq),
        .\osd_pix_buf_t5_reg[0] (\osd_pix_buf_t5_reg[0]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[0]_0 (\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .\osd_pix_buf_t5_reg[10] (\osd_pix_buf_t5_reg[10]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[11] (\osd_pix_buf_t5_reg[11]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[12] (\osd_pix_buf_t5_reg[12]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[13] (\osd_pix_buf_t5_reg[13]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[14] (\osd_pix_buf_t5_reg[14]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[15] (\osd_pix_buf_t5_reg[15]_i_3_n_0 ),
        .\osd_pix_buf_t5_reg[16] (\osd_pix_buf_t5_reg[16]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[17] (\osd_pix_buf_t5_reg[17]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[18] (\osd_pix_buf_t5_reg[18]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[19] (\osd_pix_buf_t5_reg[19]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[1] (\osd_pix_buf_t5_reg[1]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[20] (\osd_pix_buf_t5_reg[20]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[21] (\osd_pix_buf_t5_reg[21]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[22] (\osd_pix_buf_t5_reg[22]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[23] (\osd_pix_buf_t5_reg[23]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[24] (\osd_pix_buf_t5_reg[24]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[25] (\osd_pix_buf_t5_reg[25]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[26] (\osd_pix_buf_t5_reg[26]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[27] (\osd_pix_buf_t5_reg[27]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[28] (\osd_pix_buf_t5_reg[28]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[29] (\osd_pix_buf_t5_reg[29]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[2] (\osd_pix_buf_t5_reg[2]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[30] (\osd_pix_buf_t5_reg[30]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[31] (\osd_pix_buf_t5_reg[31]_i_5_n_0 ),
        .\osd_pix_buf_t5_reg[3] (\osd_pix_buf_t5_reg[3]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[4] (\osd_pix_buf_t5_reg[4]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[5] (\osd_pix_buf_t5_reg[5]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[6] (\osd_pix_buf_t5_reg[6]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[7] (\osd_pix_buf_t5_reg[7]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[8] (\osd_pix_buf_t5_reg[8]_i_2_n_0 ),
        .\osd_pix_buf_t5_reg[9] (\osd_pix_buf_t5_reg[9]_i_2_n_0 ),
        .osd_ram_ren(\xil_vip_v1_0_S00_AXI_inst/osd_ram_ren ),
        .out_href(out_href),
        .out_pclk_r_reg(out_pclk),
        .out_rgb(out_rgb),
        .out_vsync(out_vsync),
        .pclk(pclk),
        .rst_n(rst_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[11:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[11:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[24]_0 (\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .s00_axi_rdata_0_sp_1(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_10_sp_1(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_11_sp_1(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_12_sp_1(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_13_sp_1(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_14_sp_1(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_15_sp_1(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_16_sp_1(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_17_sp_1(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_18_sp_1(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_19_sp_1(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_1_sp_1(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_20_sp_1(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_21_sp_1(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_22_sp_1(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_23_sp_1(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_24_sp_1(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_25_sp_1(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_26_sp_1(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_27_sp_1(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_28_sp_1(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_29_sp_1(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_2_sp_1(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_30_sp_1(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_31_sp_1(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_3_sp_1(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_4_sp_1(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_5_sp_1(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_6_sp_1(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_7_sp_1(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_8_sp_1(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .s00_axi_rdata_9_sp_1(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_yuv2rgb_en_reg(inst_n_72));
  FDRE \osd_pix_buf_t5_reg[0]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_63),
        .Q(\osd_pix_buf_t5_reg[0]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[10]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_53),
        .Q(\osd_pix_buf_t5_reg[10]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[11]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_52),
        .Q(\osd_pix_buf_t5_reg[11]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[12]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_51),
        .Q(\osd_pix_buf_t5_reg[12]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[13]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_50),
        .Q(\osd_pix_buf_t5_reg[13]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[14]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_49),
        .Q(\osd_pix_buf_t5_reg[14]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[15]_i_3 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_48),
        .Q(\osd_pix_buf_t5_reg[15]_i_3_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[16]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_47),
        .Q(\osd_pix_buf_t5_reg[16]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[17]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_46),
        .Q(\osd_pix_buf_t5_reg[17]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[18]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_45),
        .Q(\osd_pix_buf_t5_reg[18]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[19]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_44),
        .Q(\osd_pix_buf_t5_reg[19]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[1]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_62),
        .Q(\osd_pix_buf_t5_reg[1]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[20]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_43),
        .Q(\osd_pix_buf_t5_reg[20]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[21]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_42),
        .Q(\osd_pix_buf_t5_reg[21]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[22]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_41),
        .Q(\osd_pix_buf_t5_reg[22]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[23]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_40),
        .Q(\osd_pix_buf_t5_reg[23]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[24]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_39),
        .Q(\osd_pix_buf_t5_reg[24]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[25]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_38),
        .Q(\osd_pix_buf_t5_reg[25]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[26]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_37),
        .Q(\osd_pix_buf_t5_reg[26]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[27]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_36),
        .Q(\osd_pix_buf_t5_reg[27]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[28]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_35),
        .Q(\osd_pix_buf_t5_reg[28]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[29]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_34),
        .Q(\osd_pix_buf_t5_reg[29]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[2]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_61),
        .Q(\osd_pix_buf_t5_reg[2]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[30]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_33),
        .Q(\osd_pix_buf_t5_reg[30]_i_2_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \osd_pix_buf_t5_reg[31]_i_4 
       (.C(out_pclk),
        .CE(1'b1),
        .D(\xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/href_t3 ),
        .Q(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[31]_i_5 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_32),
        .Q(\osd_pix_buf_t5_reg[31]_i_5_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[3]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_60),
        .Q(\osd_pix_buf_t5_reg[3]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[4]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_59),
        .Q(\osd_pix_buf_t5_reg[4]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[5]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_58),
        .Q(\osd_pix_buf_t5_reg[5]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[6]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_57),
        .Q(\osd_pix_buf_t5_reg[6]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[7]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_56),
        .Q(\osd_pix_buf_t5_reg[7]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[8]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_55),
        .Q(\osd_pix_buf_t5_reg[8]_i_2_n_0 ),
        .R(1'b0));
  FDRE \osd_pix_buf_t5_reg[9]_i_2 
       (.C(out_pclk),
        .CE(\osd_pix_buf_t5_reg[31]_i_4_n_0 ),
        .D(inst_n_54),
        .Q(\osd_pix_buf_t5_reg[9]_i_2_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[0]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_31),
        .Q(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[10]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_21),
        .Q(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[11]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_20),
        .Q(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[12]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_19),
        .Q(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[13]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_18),
        .Q(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[14]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_17),
        .Q(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[15]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_16),
        .Q(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[16]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_15),
        .Q(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[17]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_14),
        .Q(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[18]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_13),
        .Q(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[19]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_12),
        .Q(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[1]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_30),
        .Q(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[20]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_11),
        .Q(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[21]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_10),
        .Q(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[22]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_9),
        .Q(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[23]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_8),
        .Q(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[24]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_7),
        .Q(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[25]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_6),
        .Q(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[26]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_5),
        .Q(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[27]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_4),
        .Q(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[28]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_3),
        .Q(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[29]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_2),
        .Q(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[2]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_29),
        .Q(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[30]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_1),
        .Q(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[31]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_0),
        .Q(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \s00_axi_rdata[31]_INST_0_i_2 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\xil_vip_v1_0_S00_AXI_inst/osd_ram_ren ),
        .Q(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[3]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_28),
        .Q(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[4]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_27),
        .Q(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[5]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_26),
        .Q(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[6]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_25),
        .Q(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[7]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_24),
        .Q(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[8]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_23),
        .Q(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .R(1'b0));
  FDRE \s00_axi_rdata[9]_INST_0_i_1 
       (.C(s00_axi_aclk),
        .CE(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .D(inst_n_22),
        .Q(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "full_dp_ram" *) 
module design_1_xil_vip_0_0_full_dp_ram
   (DOADO,
    DOBDO,
    s00_axi_rdata,
    D,
    s00_axi_aclk,
    CLK,
    Q,
    s00_axi_wdata,
    \s00_axi_rdata[24] ,
    \s00_axi_rdata[24]_0 ,
    \s00_axi_rdata[24]_1 ,
    \s00_axi_rdata[25] ,
    \s00_axi_rdata[26] ,
    \s00_axi_rdata[27] ,
    \s00_axi_rdata[28] ,
    \s00_axi_rdata[29] ,
    \s00_axi_rdata[30] ,
    \s00_axi_rdata[31] ,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    s00_axi_awvalid,
    s00_axi_wvalid,
    \osd_pix_buf_t5_reg[0] ,
    \osd_pix_buf_t5_reg[0]_0 ,
    \osd_pix_buf_t5_reg[0]_1 ,
    \osd_pix_buf_t5_reg[31] ,
    \osd_pix_buf_t5_reg[1] ,
    \osd_pix_buf_t5_reg[2] ,
    \osd_pix_buf_t5_reg[3] ,
    \osd_pix_buf_t5_reg[4] ,
    \osd_pix_buf_t5_reg[5] ,
    \osd_pix_buf_t5_reg[6] ,
    \osd_pix_buf_t5_reg[7] ,
    \osd_pix_buf_t5_reg[8] ,
    \osd_pix_buf_t5_reg[9] ,
    \osd_pix_buf_t5_reg[10] ,
    \osd_pix_buf_t5_reg[11] ,
    \osd_pix_buf_t5_reg[12] ,
    \osd_pix_buf_t5_reg[13] ,
    \osd_pix_buf_t5_reg[14] ,
    \osd_pix_buf_t5_reg[15] ,
    \osd_pix_buf_t5_reg[16] ,
    \osd_pix_buf_t5_reg[17] ,
    \osd_pix_buf_t5_reg[18] ,
    \osd_pix_buf_t5_reg[19] ,
    \osd_pix_buf_t5_reg[20] ,
    \osd_pix_buf_t5_reg[21] ,
    \osd_pix_buf_t5_reg[22] ,
    \osd_pix_buf_t5_reg[23] ,
    \osd_pix_buf_t5_reg[24] ,
    \osd_pix_buf_t5_reg[25] ,
    \osd_pix_buf_t5_reg[26] ,
    \osd_pix_buf_t5_reg[27] ,
    \osd_pix_buf_t5_reg[28] ,
    \osd_pix_buf_t5_reg[29] ,
    \osd_pix_buf_t5_reg[30] ,
    \osd_pix_buf_t5_reg[31]_0 );
  output [31:0]DOADO;
  output [31:0]DOBDO;
  output [7:0]s00_axi_rdata;
  output [31:0]D;
  input s00_axi_aclk;
  input CLK;
  input [8:0]Q;
  input [31:0]s00_axi_wdata;
  input \s00_axi_rdata[24] ;
  input \s00_axi_rdata[24]_0 ;
  input [9:0]\s00_axi_rdata[24]_1 ;
  input \s00_axi_rdata[25] ;
  input \s00_axi_rdata[26] ;
  input \s00_axi_rdata[27] ;
  input \s00_axi_rdata[28] ;
  input \s00_axi_rdata[29] ;
  input \s00_axi_rdata[30] ;
  input \s00_axi_rdata[31] ;
  input [9:0]mem_reg_0;
  input mem_reg_1;
  input mem_reg_2;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input \osd_pix_buf_t5_reg[0] ;
  input \osd_pix_buf_t5_reg[0]_0 ;
  input \osd_pix_buf_t5_reg[0]_1 ;
  input [30:0]\osd_pix_buf_t5_reg[31] ;
  input \osd_pix_buf_t5_reg[1] ;
  input \osd_pix_buf_t5_reg[2] ;
  input \osd_pix_buf_t5_reg[3] ;
  input \osd_pix_buf_t5_reg[4] ;
  input \osd_pix_buf_t5_reg[5] ;
  input \osd_pix_buf_t5_reg[6] ;
  input \osd_pix_buf_t5_reg[7] ;
  input \osd_pix_buf_t5_reg[8] ;
  input \osd_pix_buf_t5_reg[9] ;
  input \osd_pix_buf_t5_reg[10] ;
  input \osd_pix_buf_t5_reg[11] ;
  input \osd_pix_buf_t5_reg[12] ;
  input \osd_pix_buf_t5_reg[13] ;
  input \osd_pix_buf_t5_reg[14] ;
  input \osd_pix_buf_t5_reg[15] ;
  input \osd_pix_buf_t5_reg[16] ;
  input \osd_pix_buf_t5_reg[17] ;
  input \osd_pix_buf_t5_reg[18] ;
  input \osd_pix_buf_t5_reg[19] ;
  input \osd_pix_buf_t5_reg[20] ;
  input \osd_pix_buf_t5_reg[21] ;
  input \osd_pix_buf_t5_reg[22] ;
  input \osd_pix_buf_t5_reg[23] ;
  input \osd_pix_buf_t5_reg[24] ;
  input \osd_pix_buf_t5_reg[25] ;
  input \osd_pix_buf_t5_reg[26] ;
  input \osd_pix_buf_t5_reg[27] ;
  input \osd_pix_buf_t5_reg[28] ;
  input \osd_pix_buf_t5_reg[29] ;
  input \osd_pix_buf_t5_reg[30] ;
  input \osd_pix_buf_t5_reg[31]_0 ;

  wire CLK;
  wire [31:0]D;
  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire [8:0]Q;
  wire [9:0]mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire \osd_pix_buf_t5_reg[0] ;
  wire \osd_pix_buf_t5_reg[0]_0 ;
  wire \osd_pix_buf_t5_reg[0]_1 ;
  wire \osd_pix_buf_t5_reg[10] ;
  wire \osd_pix_buf_t5_reg[11] ;
  wire \osd_pix_buf_t5_reg[12] ;
  wire \osd_pix_buf_t5_reg[13] ;
  wire \osd_pix_buf_t5_reg[14] ;
  wire \osd_pix_buf_t5_reg[15] ;
  wire \osd_pix_buf_t5_reg[16] ;
  wire \osd_pix_buf_t5_reg[17] ;
  wire \osd_pix_buf_t5_reg[18] ;
  wire \osd_pix_buf_t5_reg[19] ;
  wire \osd_pix_buf_t5_reg[1] ;
  wire \osd_pix_buf_t5_reg[20] ;
  wire \osd_pix_buf_t5_reg[21] ;
  wire \osd_pix_buf_t5_reg[22] ;
  wire \osd_pix_buf_t5_reg[23] ;
  wire \osd_pix_buf_t5_reg[24] ;
  wire \osd_pix_buf_t5_reg[25] ;
  wire \osd_pix_buf_t5_reg[26] ;
  wire \osd_pix_buf_t5_reg[27] ;
  wire \osd_pix_buf_t5_reg[28] ;
  wire \osd_pix_buf_t5_reg[29] ;
  wire \osd_pix_buf_t5_reg[2] ;
  wire \osd_pix_buf_t5_reg[30] ;
  wire [30:0]\osd_pix_buf_t5_reg[31] ;
  wire \osd_pix_buf_t5_reg[31]_0 ;
  wire \osd_pix_buf_t5_reg[3] ;
  wire \osd_pix_buf_t5_reg[4] ;
  wire \osd_pix_buf_t5_reg[5] ;
  wire \osd_pix_buf_t5_reg[6] ;
  wire \osd_pix_buf_t5_reg[7] ;
  wire \osd_pix_buf_t5_reg[8] ;
  wire \osd_pix_buf_t5_reg[9] ;
  wire [8:0]osd_ram_addr;
  wire osd_ram_wen;
  wire s00_axi_aclk;
  wire s00_axi_awvalid;
  wire [7:0]s00_axi_rdata;
  wire \s00_axi_rdata[24] ;
  wire \s00_axi_rdata[24]_0 ;
  wire [9:0]\s00_axi_rdata[24]_1 ;
  wire \s00_axi_rdata[25] ;
  wire \s00_axi_rdata[26] ;
  wire \s00_axi_rdata[27] ;
  wire \s00_axi_rdata[28] ;
  wire \s00_axi_rdata[29] ;
  wire \s00_axi_rdata[30] ;
  wire \s00_axi_rdata[31] ;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,osd_ram_addr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(CLK),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s00_axi_wdata),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({osd_ram_wen,osd_ram_wen,osd_ram_wen,osd_ram_wen}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_reg_i_10__0
       (.I0(mem_reg_0[9]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(mem_reg_2),
        .I4(mem_reg_1),
        .O(osd_ram_wen));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    mem_reg_i_1__0
       (.I0(mem_reg_0[8]),
        .I1(mem_reg_1),
        .I2(mem_reg_2),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(\s00_axi_rdata[24]_1 [8]),
        .O(osd_ram_addr[8]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    mem_reg_i_2__0
       (.I0(mem_reg_0[7]),
        .I1(mem_reg_1),
        .I2(mem_reg_2),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(\s00_axi_rdata[24]_1 [7]),
        .O(osd_ram_addr[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    mem_reg_i_3__0
       (.I0(mem_reg_0[6]),
        .I1(mem_reg_1),
        .I2(mem_reg_2),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(\s00_axi_rdata[24]_1 [6]),
        .O(osd_ram_addr[6]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    mem_reg_i_4__0
       (.I0(mem_reg_0[5]),
        .I1(mem_reg_1),
        .I2(mem_reg_2),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(\s00_axi_rdata[24]_1 [5]),
        .O(osd_ram_addr[5]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    mem_reg_i_5__0
       (.I0(mem_reg_0[4]),
        .I1(mem_reg_1),
        .I2(mem_reg_2),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(\s00_axi_rdata[24]_1 [4]),
        .O(osd_ram_addr[4]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    mem_reg_i_6__0
       (.I0(mem_reg_0[3]),
        .I1(mem_reg_1),
        .I2(mem_reg_2),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(\s00_axi_rdata[24]_1 [3]),
        .O(osd_ram_addr[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    mem_reg_i_7__0
       (.I0(mem_reg_0[2]),
        .I1(mem_reg_1),
        .I2(mem_reg_2),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(\s00_axi_rdata[24]_1 [2]),
        .O(osd_ram_addr[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    mem_reg_i_8__0
       (.I0(mem_reg_0[1]),
        .I1(mem_reg_1),
        .I2(mem_reg_2),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(\s00_axi_rdata[24]_1 [1]),
        .O(osd_ram_addr[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    mem_reg_i_9__0
       (.I0(mem_reg_0[0]),
        .I1(mem_reg_1),
        .I2(mem_reg_2),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(\s00_axi_rdata[24]_1 [0]),
        .O(osd_ram_addr[0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \osd_pix_buf_t5[0]_i_1 
       (.I0(\osd_pix_buf_t5_reg[0] ),
        .I1(\osd_pix_buf_t5_reg[0]_0 ),
        .I2(DOBDO[0]),
        .I3(\osd_pix_buf_t5_reg[0]_1 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[10]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [9]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[10]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[10] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[11]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [10]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[11]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[11] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[12]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [11]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[12]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[12] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[13]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [12]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[13]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[13] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[14]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [13]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[14]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[14] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[15]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [14]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[15]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[15] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[16]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [15]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[16]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[16] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[17]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [16]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[17]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[17] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[18]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [17]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[18]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[18] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[19]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [18]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[19]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[19] ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[1]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [0]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[1]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[20]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [19]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[20]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[20] ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[21]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [20]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[21]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[21] ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[22]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [21]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[22]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[22] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[23]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [22]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[23]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[23] ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[24]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [23]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[24]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[24] ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[25]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [24]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[25]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[25] ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[26]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [25]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[26]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[26] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[27]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [26]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[27]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[27] ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[28]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [27]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[28]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[28] ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[29]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [28]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[29]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[29] ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[2]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [1]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[2]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[30]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [29]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[30]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[30] ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[31]_i_2 
       (.I0(\osd_pix_buf_t5_reg[31] [30]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[31]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[31]_0 ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[3]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [2]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[3]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[4]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [3]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[4]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[5]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [4]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[5]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[5] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[6]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [5]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[6]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[6] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[7]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [6]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[7]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[7] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[8]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [7]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[8]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \osd_pix_buf_t5[9]_i_1 
       (.I0(\osd_pix_buf_t5_reg[31] [8]),
        .I1(\osd_pix_buf_t5_reg[0]_1 ),
        .I2(DOBDO[9]),
        .I3(\osd_pix_buf_t5_reg[0]_0 ),
        .I4(\osd_pix_buf_t5_reg[9] ),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hE200)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24] ),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(DOADO[24]),
        .I3(\s00_axi_rdata[24]_1 [9]),
        .O(s00_axi_rdata[0]));
  LUT4 #(
    .INIT(16'hE200)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25] ),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(DOADO[25]),
        .I3(\s00_axi_rdata[24]_1 [9]),
        .O(s00_axi_rdata[1]));
  LUT4 #(
    .INIT(16'hE200)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26] ),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(DOADO[26]),
        .I3(\s00_axi_rdata[24]_1 [9]),
        .O(s00_axi_rdata[2]));
  LUT4 #(
    .INIT(16'hE200)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27] ),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(DOADO[27]),
        .I3(\s00_axi_rdata[24]_1 [9]),
        .O(s00_axi_rdata[3]));
  LUT4 #(
    .INIT(16'hE200)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28] ),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(DOADO[28]),
        .I3(\s00_axi_rdata[24]_1 [9]),
        .O(s00_axi_rdata[4]));
  LUT4 #(
    .INIT(16'hE200)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29] ),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(DOADO[29]),
        .I3(\s00_axi_rdata[24]_1 [9]),
        .O(s00_axi_rdata[5]));
  LUT4 #(
    .INIT(16'hE200)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30] ),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(DOADO[30]),
        .I3(\s00_axi_rdata[24]_1 [9]),
        .O(s00_axi_rdata[6]));
  LUT4 #(
    .INIT(16'hE200)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31] ),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(DOADO[31]),
        .I3(\s00_axi_rdata[24]_1 [9]),
        .O(s00_axi_rdata[7]));
endmodule

(* ORIG_REF_NAME = "shift_register" *) 
module design_1_xil_vip_0_0_shift_register
   (D,
    mem_reg,
    pclk,
    out_href,
    \in_r_reg[7]_0 );
  output [7:0]D;
  output [7:0]mem_reg;
  input pclk;
  input out_href;
  input [7:0]\in_r_reg[7]_0 ;

  wire [7:0]D;
  wire \gen_ram_inst[1].u_ram_n_19 ;
  wire [7:0]in_r;
  wire [7:0]\in_r_reg[7]_0 ;
  wire [7:0]mem_reg;
  wire out_href;
  wire pclk;
  wire [10:0]pos;
  wire pos_r;
  wire \pos_r[0]_i_3_n_0 ;
  wire [11:0]pos_r_reg;
  wire \pos_r_reg[0]_i_2_n_0 ;
  wire \pos_r_reg[0]_i_2_n_1 ;
  wire \pos_r_reg[0]_i_2_n_2 ;
  wire \pos_r_reg[0]_i_2_n_3 ;
  wire \pos_r_reg[0]_i_2_n_4 ;
  wire \pos_r_reg[0]_i_2_n_5 ;
  wire \pos_r_reg[0]_i_2_n_6 ;
  wire \pos_r_reg[0]_i_2_n_7 ;
  wire \pos_r_reg[4]_i_1_n_0 ;
  wire \pos_r_reg[4]_i_1_n_1 ;
  wire \pos_r_reg[4]_i_1_n_2 ;
  wire \pos_r_reg[4]_i_1_n_3 ;
  wire \pos_r_reg[4]_i_1_n_4 ;
  wire \pos_r_reg[4]_i_1_n_5 ;
  wire \pos_r_reg[4]_i_1_n_6 ;
  wire \pos_r_reg[4]_i_1_n_7 ;
  wire \pos_r_reg[8]_i_1_n_1 ;
  wire \pos_r_reg[8]_i_1_n_2 ;
  wire \pos_r_reg[8]_i_1_n_3 ;
  wire \pos_r_reg[8]_i_1_n_4 ;
  wire \pos_r_reg[8]_i_1_n_5 ;
  wire \pos_r_reg[8]_i_1_n_6 ;
  wire \pos_r_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_pos_r_reg[8]_i_1_CO_UNCONNECTED ;

  design_1_xil_vip_0_0_simple_dp_ram__parameterized1 \gen_ram_inst[0].u_ram 
       (.ADDRARDADDR(pos),
        .D(D),
        .Q(in_r),
        .out(pos_r_reg[11]),
        .out_href(out_href),
        .pclk(pclk));
  design_1_xil_vip_0_0_simple_dp_ram__parameterized1_4 \gen_ram_inst[1].u_ram 
       (.ADDRARDADDR(pos),
        .D(D),
        .mem_reg_0(mem_reg),
        .out(pos_r_reg),
        .out_href(out_href),
        .pclk(pclk),
        .\pos_r_reg[3] (\gen_ram_inst[1].u_ram_n_19 ));
  FDRE \in_r_reg[0] 
       (.C(pclk),
        .CE(out_href),
        .D(\in_r_reg[7]_0 [0]),
        .Q(in_r[0]),
        .R(1'b0));
  FDRE \in_r_reg[1] 
       (.C(pclk),
        .CE(out_href),
        .D(\in_r_reg[7]_0 [1]),
        .Q(in_r[1]),
        .R(1'b0));
  FDRE \in_r_reg[2] 
       (.C(pclk),
        .CE(out_href),
        .D(\in_r_reg[7]_0 [2]),
        .Q(in_r[2]),
        .R(1'b0));
  FDRE \in_r_reg[3] 
       (.C(pclk),
        .CE(out_href),
        .D(\in_r_reg[7]_0 [3]),
        .Q(in_r[3]),
        .R(1'b0));
  FDRE \in_r_reg[4] 
       (.C(pclk),
        .CE(out_href),
        .D(\in_r_reg[7]_0 [4]),
        .Q(in_r[4]),
        .R(1'b0));
  FDRE \in_r_reg[5] 
       (.C(pclk),
        .CE(out_href),
        .D(\in_r_reg[7]_0 [5]),
        .Q(in_r[5]),
        .R(1'b0));
  FDRE \in_r_reg[6] 
       (.C(pclk),
        .CE(out_href),
        .D(\in_r_reg[7]_0 [6]),
        .Q(in_r[6]),
        .R(1'b0));
  FDRE \in_r_reg[7] 
       (.C(pclk),
        .CE(out_href),
        .D(\in_r_reg[7]_0 [7]),
        .Q(in_r[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCCC40000)) 
    \pos_r[0]_i_1 
       (.I0(\gen_ram_inst[1].u_ram_n_19 ),
        .I1(out_href),
        .I2(pos_r_reg[10]),
        .I3(pos_r_reg[9]),
        .I4(pos_r_reg[11]),
        .O(pos_r));
  LUT1 #(
    .INIT(2'h1)) 
    \pos_r[0]_i_3 
       (.I0(pos_r_reg[0]),
        .O(\pos_r[0]_i_3_n_0 ));
  FDRE \pos_r_reg[0] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[0]_i_2_n_7 ),
        .Q(pos_r_reg[0]),
        .R(pos_r));
  CARRY4 \pos_r_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pos_r_reg[0]_i_2_n_0 ,\pos_r_reg[0]_i_2_n_1 ,\pos_r_reg[0]_i_2_n_2 ,\pos_r_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pos_r_reg[0]_i_2_n_4 ,\pos_r_reg[0]_i_2_n_5 ,\pos_r_reg[0]_i_2_n_6 ,\pos_r_reg[0]_i_2_n_7 }),
        .S({pos_r_reg[3:1],\pos_r[0]_i_3_n_0 }));
  FDRE \pos_r_reg[10] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[8]_i_1_n_5 ),
        .Q(pos_r_reg[10]),
        .R(pos_r));
  FDRE \pos_r_reg[11] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[8]_i_1_n_4 ),
        .Q(pos_r_reg[11]),
        .R(pos_r));
  FDRE \pos_r_reg[1] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[0]_i_2_n_6 ),
        .Q(pos_r_reg[1]),
        .R(pos_r));
  FDRE \pos_r_reg[2] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[0]_i_2_n_5 ),
        .Q(pos_r_reg[2]),
        .R(pos_r));
  FDRE \pos_r_reg[3] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[0]_i_2_n_4 ),
        .Q(pos_r_reg[3]),
        .R(pos_r));
  FDRE \pos_r_reg[4] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[4]_i_1_n_7 ),
        .Q(pos_r_reg[4]),
        .R(pos_r));
  CARRY4 \pos_r_reg[4]_i_1 
       (.CI(\pos_r_reg[0]_i_2_n_0 ),
        .CO({\pos_r_reg[4]_i_1_n_0 ,\pos_r_reg[4]_i_1_n_1 ,\pos_r_reg[4]_i_1_n_2 ,\pos_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_r_reg[4]_i_1_n_4 ,\pos_r_reg[4]_i_1_n_5 ,\pos_r_reg[4]_i_1_n_6 ,\pos_r_reg[4]_i_1_n_7 }),
        .S(pos_r_reg[7:4]));
  FDRE \pos_r_reg[5] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[4]_i_1_n_6 ),
        .Q(pos_r_reg[5]),
        .R(pos_r));
  FDRE \pos_r_reg[6] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[4]_i_1_n_5 ),
        .Q(pos_r_reg[6]),
        .R(pos_r));
  FDRE \pos_r_reg[7] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[4]_i_1_n_4 ),
        .Q(pos_r_reg[7]),
        .R(pos_r));
  FDRE \pos_r_reg[8] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[8]_i_1_n_7 ),
        .Q(pos_r_reg[8]),
        .R(pos_r));
  CARRY4 \pos_r_reg[8]_i_1 
       (.CI(\pos_r_reg[4]_i_1_n_0 ),
        .CO({\NLW_pos_r_reg[8]_i_1_CO_UNCONNECTED [3],\pos_r_reg[8]_i_1_n_1 ,\pos_r_reg[8]_i_1_n_2 ,\pos_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_r_reg[8]_i_1_n_4 ,\pos_r_reg[8]_i_1_n_5 ,\pos_r_reg[8]_i_1_n_6 ,\pos_r_reg[8]_i_1_n_7 }),
        .S(pos_r_reg[11:8]));
  FDRE \pos_r_reg[9] 
       (.C(pclk),
        .CE(out_href),
        .D(\pos_r_reg[8]_i_1_n_6 ),
        .Q(pos_r_reg[9]),
        .R(pos_r));
endmodule

(* ORIG_REF_NAME = "simple_dp_ram" *) 
module design_1_xil_vip_0_0_simple_dp_ram__parameterized1
   (D,
    pclk,
    out_href,
    out,
    ADDRARDADDR,
    Q);
  output [7:0]D;
  input pclk;
  input out_href;
  input [0:0]out;
  input [10:0]ADDRARDADDR;
  input [7:0]Q;

  wire [10:0]ADDRARDADDR;
  wire [7:0]D;
  wire [7:0]Q;
  wire [0:0]out;
  wire out_href;
  wire pclk;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "20472" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,out,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(pclk),
        .CLKBWRCLK(pclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],D}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(out_href),
        .ENBWREN(out_href),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({out_href,out_href,out_href,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "simple_dp_ram" *) 
module design_1_xil_vip_0_0_simple_dp_ram__parameterized1_4
   (mem_reg_0,
    ADDRARDADDR,
    \pos_r_reg[3] ,
    pclk,
    out_href,
    out,
    D);
  output [7:0]mem_reg_0;
  output [10:0]ADDRARDADDR;
  output \pos_r_reg[3] ;
  input pclk;
  input out_href;
  input [11:0]out;
  input [7:0]D;

  wire [10:0]ADDRARDADDR;
  wire [7:0]D;
  wire [7:0]mem_reg_0;
  wire mem_reg_i_13_n_0;
  wire [11:0]out;
  wire out_href;
  wire pclk;
  wire \pos_r_reg[3] ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "20472" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,out[11],ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out[11],ADDRARDADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(pclk),
        .CLKBWRCLK(pclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],mem_reg_0}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(out_href),
        .ENBWREN(out_href),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({out_href,out_href,out_href,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_1
       (.I0(out[10]),
        .I1(out[11]),
        .O(ADDRARDADDR[10]));
  LUT4 #(
    .INIT(16'hFFA8)) 
    mem_reg_i_10
       (.I0(out[11]),
        .I1(out[9]),
        .I2(out[10]),
        .I3(out[1]),
        .O(ADDRARDADDR[1]));
  LUT5 #(
    .INIT(32'h10FF0000)) 
    mem_reg_i_11
       (.I0(out[10]),
        .I1(out[9]),
        .I2(\pos_r_reg[3] ),
        .I3(out[11]),
        .I4(out[0]),
        .O(ADDRARDADDR[0]));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    mem_reg_i_12
       (.I0(out[3]),
        .I1(out[4]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(mem_reg_i_13_n_0),
        .O(\pos_r_reg[3] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    mem_reg_i_13
       (.I0(out[6]),
        .I1(out[5]),
        .I2(out[8]),
        .I3(out[7]),
        .O(mem_reg_i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_2
       (.I0(out[9]),
        .I1(out[11]),
        .O(ADDRARDADDR[9]));
  LUT4 #(
    .INIT(16'hFFA8)) 
    mem_reg_i_3
       (.I0(out[11]),
        .I1(out[9]),
        .I2(out[10]),
        .I3(out[8]),
        .O(ADDRARDADDR[8]));
  LUT4 #(
    .INIT(16'hFFA8)) 
    mem_reg_i_4
       (.I0(out[11]),
        .I1(out[9]),
        .I2(out[10]),
        .I3(out[7]),
        .O(ADDRARDADDR[7]));
  LUT4 #(
    .INIT(16'hFFA8)) 
    mem_reg_i_5
       (.I0(out[11]),
        .I1(out[9]),
        .I2(out[10]),
        .I3(out[6]),
        .O(ADDRARDADDR[6]));
  LUT4 #(
    .INIT(16'hFFA8)) 
    mem_reg_i_6
       (.I0(out[11]),
        .I1(out[9]),
        .I2(out[10]),
        .I3(out[5]),
        .O(ADDRARDADDR[5]));
  LUT4 #(
    .INIT(16'hFFA8)) 
    mem_reg_i_7
       (.I0(out[11]),
        .I1(out[9]),
        .I2(out[10]),
        .I3(out[4]),
        .O(ADDRARDADDR[4]));
  LUT4 #(
    .INIT(16'hFFA8)) 
    mem_reg_i_8
       (.I0(out[11]),
        .I1(out[9]),
        .I2(out[10]),
        .I3(out[3]),
        .O(ADDRARDADDR[3]));
  LUT4 #(
    .INIT(16'hFFA8)) 
    mem_reg_i_9
       (.I0(out[11]),
        .I1(out[9]),
        .I2(out[10]),
        .I3(out[2]),
        .O(ADDRARDADDR[2]));
endmodule

(* ORIG_REF_NAME = "vid_mux" *) 
module design_1_xil_vip_0_0_vid_mux
   (crop_href_o,
    crop_vsync_o,
    int_frame_done0,
    out_rgb,
    \data_reg_reg[23]_0 ,
    E,
    vsync_reg_reg_0,
    vsync_reg_reg_1,
    DI,
    dscale_b_o,
    dscale_g_o,
    dscale_r_o,
    out_href,
    in_href,
    pclk,
    \data_reg_reg[0]_0 ,
    yuv2rgb_vsync_o,
    s_osd_en,
    osd_vsync,
    prev_vsync,
    Q,
    s_dscale_en,
    \out_rgb[23] ,
    prev_href,
    prev_vsync_0,
    vsync_t1,
    \pix_x_t1_reg[3] ,
    href_t1,
    out_href_0,
    osd_href,
    D);
  output crop_href_o;
  output crop_vsync_o;
  output int_frame_done0;
  output [23:0]out_rgb;
  output [23:0]\data_reg_reg[23]_0 ;
  output [0:0]E;
  output vsync_reg_reg_0;
  output vsync_reg_reg_1;
  output [0:0]DI;
  output [7:0]dscale_b_o;
  output [7:0]dscale_g_o;
  output [7:0]dscale_r_o;
  output out_href;
  input in_href;
  input pclk;
  input \data_reg_reg[0]_0 ;
  input yuv2rgb_vsync_o;
  input s_osd_en;
  input osd_vsync;
  input prev_vsync;
  input [23:0]Q;
  input s_dscale_en;
  input [23:0]\out_rgb[23] ;
  input prev_href;
  input prev_vsync_0;
  input vsync_t1;
  input \pix_x_t1_reg[3] ;
  input href_t1;
  input out_href_0;
  input osd_href;
  input [23:0]D;

  wire [23:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [23:0]Q;
  wire crop_href_o;
  wire crop_vsync_o;
  wire \data_reg_reg[0]_0 ;
  wire [23:0]\data_reg_reg[23]_0 ;
  wire [7:0]dscale_b_o;
  wire [7:0]dscale_g_o;
  wire [7:0]dscale_r_o;
  wire href_t1;
  wire in_href;
  wire int_frame_done0;
  wire osd_href;
  wire osd_vsync;
  wire out_href;
  wire out_href_0;
  wire [23:0]out_rgb;
  wire [23:0]\out_rgb[23] ;
  wire \out_rgb[23]_INST_0_i_1_n_0 ;
  wire pclk;
  wire \pix_x_t1_reg[3] ;
  wire prev_href;
  wire prev_vsync;
  wire prev_vsync_0;
  wire s_dscale_en;
  wire s_osd_en;
  wire vsync_reg_reg_0;
  wire vsync_reg_reg_1;
  wire vsync_t1;
  wire yuv2rgb_vsync_o;

  FDCE \data_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[0]),
        .Q(\data_reg_reg[23]_0 [0]));
  FDCE \data_reg_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[10]),
        .Q(\data_reg_reg[23]_0 [10]));
  FDCE \data_reg_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[11]),
        .Q(\data_reg_reg[23]_0 [11]));
  FDCE \data_reg_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[12]),
        .Q(\data_reg_reg[23]_0 [12]));
  FDCE \data_reg_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[13]),
        .Q(\data_reg_reg[23]_0 [13]));
  FDCE \data_reg_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[14]),
        .Q(\data_reg_reg[23]_0 [14]));
  FDCE \data_reg_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[15]),
        .Q(\data_reg_reg[23]_0 [15]));
  FDCE \data_reg_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[16]),
        .Q(\data_reg_reg[23]_0 [16]));
  FDCE \data_reg_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[17]),
        .Q(\data_reg_reg[23]_0 [17]));
  FDCE \data_reg_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[18]),
        .Q(\data_reg_reg[23]_0 [18]));
  FDCE \data_reg_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[19]),
        .Q(\data_reg_reg[23]_0 [19]));
  FDCE \data_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[1]),
        .Q(\data_reg_reg[23]_0 [1]));
  FDCE \data_reg_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[20]),
        .Q(\data_reg_reg[23]_0 [20]));
  FDCE \data_reg_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[21]),
        .Q(\data_reg_reg[23]_0 [21]));
  FDCE \data_reg_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[22]),
        .Q(\data_reg_reg[23]_0 [22]));
  FDCE \data_reg_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[23]),
        .Q(\data_reg_reg[23]_0 [23]));
  FDCE \data_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[2]),
        .Q(\data_reg_reg[23]_0 [2]));
  FDCE \data_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[3]),
        .Q(\data_reg_reg[23]_0 [3]));
  FDCE \data_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[4]),
        .Q(\data_reg_reg[23]_0 [4]));
  FDCE \data_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[5]),
        .Q(\data_reg_reg[23]_0 [5]));
  FDCE \data_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[6]),
        .Q(\data_reg_reg[23]_0 [6]));
  FDCE \data_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[7]),
        .Q(\data_reg_reg[23]_0 [7]));
  FDCE \data_reg_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[8]),
        .Q(\data_reg_reg[23]_0 [8]));
  FDCE \data_reg_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[9]),
        .Q(\data_reg_reg[23]_0 [9]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [0]),
        .I2(Q[0]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_b_o[0]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [10]),
        .I2(Q[10]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_g_o[2]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [11]),
        .I2(Q[11]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_g_o[3]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [12]),
        .I2(Q[12]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_g_o[4]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [13]),
        .I2(Q[13]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_g_o[5]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [14]),
        .I2(Q[14]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_g_o[6]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [15]),
        .I2(Q[15]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_g_o[7]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [16]),
        .I2(Q[16]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_r_o[0]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [17]),
        .I2(Q[17]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_r_o[1]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [18]),
        .I2(Q[18]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_r_o[2]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [19]),
        .I2(Q[19]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_r_o[3]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [1]),
        .I2(Q[1]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_b_o[1]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [20]),
        .I2(Q[20]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_r_o[4]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [21]),
        .I2(Q[21]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_r_o[5]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [22]),
        .I2(Q[22]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_r_o[6]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [23]),
        .I2(Q[23]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_r_o[7]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [2]),
        .I2(Q[2]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_b_o[2]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [3]),
        .I2(Q[3]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_b_o[3]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [4]),
        .I2(Q[4]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_b_o[4]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [5]),
        .I2(Q[5]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_b_o[5]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [6]),
        .I2(Q[6]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_b_o[6]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [7]),
        .I2(Q[7]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_b_o[7]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [8]),
        .I2(Q[8]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_g_o[0]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1 
       (.I0(s_dscale_en),
        .I1(\data_reg_reg[23]_0 [9]),
        .I2(Q[9]),
        .I3(\out_rgb[23]_INST_0_i_1_n_0 ),
        .O(dscale_g_o[1]));
  FDCE href_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_href),
        .Q(crop_href_o));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    int_frame_done_i_4
       (.I0(crop_vsync_o),
        .I1(s_osd_en),
        .I2(osd_vsync),
        .I3(prev_vsync),
        .O(int_frame_done0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h44F4)) 
    \line_cnt[3]_i_1 
       (.I0(crop_href_o),
        .I1(prev_href),
        .I2(prev_vsync_0),
        .I3(crop_vsync_o),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \line_cnt[3]_i_3 
       (.I0(crop_vsync_o),
        .I1(prev_vsync_0),
        .O(vsync_reg_reg_0));
  LUT5 #(
    .INIT(32'hF0FFF044)) 
    out_href_INST_0
       (.I0(s_dscale_en),
        .I1(crop_href_o),
        .I2(osd_href),
        .I3(s_osd_en),
        .I4(out_href_0),
        .O(out_href));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[0]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[0]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [0]),
        .I5(\out_rgb[23] [0]),
        .O(out_rgb[0]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[10]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[10]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [10]),
        .I5(\out_rgb[23] [10]),
        .O(out_rgb[10]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[11]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[11]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [11]),
        .I5(\out_rgb[23] [11]),
        .O(out_rgb[11]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[12]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[12]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [12]),
        .I5(\out_rgb[23] [12]),
        .O(out_rgb[12]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[13]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[13]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [13]),
        .I5(\out_rgb[23] [13]),
        .O(out_rgb[13]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[14]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[14]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [14]),
        .I5(\out_rgb[23] [14]),
        .O(out_rgb[14]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[15]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[15]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [15]),
        .I5(\out_rgb[23] [15]),
        .O(out_rgb[15]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[16]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[16]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [16]),
        .I5(\out_rgb[23] [16]),
        .O(out_rgb[16]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[17]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[17]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [17]),
        .I5(\out_rgb[23] [17]),
        .O(out_rgb[17]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[18]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[18]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [18]),
        .I5(\out_rgb[23] [18]),
        .O(out_rgb[18]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[19]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[19]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [19]),
        .I5(\out_rgb[23] [19]),
        .O(out_rgb[19]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[1]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[1]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [1]),
        .I5(\out_rgb[23] [1]),
        .O(out_rgb[1]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[20]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[20]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [20]),
        .I5(\out_rgb[23] [20]),
        .O(out_rgb[20]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[21]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[21]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [21]),
        .I5(\out_rgb[23] [21]),
        .O(out_rgb[21]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[22]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[22]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [22]),
        .I5(\out_rgb[23] [22]),
        .O(out_rgb[22]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[23]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[23]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [23]),
        .I5(\out_rgb[23] [23]),
        .O(out_rgb[23]));
  LUT3 #(
    .INIT(8'h40)) 
    \out_rgb[23]_INST_0_i_1 
       (.I0(crop_vsync_o),
        .I1(s_dscale_en),
        .I2(out_href_0),
        .O(\out_rgb[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[2]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[2]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [2]),
        .I5(\out_rgb[23] [2]),
        .O(out_rgb[2]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[3]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[3]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [3]),
        .I5(\out_rgb[23] [3]),
        .O(out_rgb[3]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[4]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[4]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [4]),
        .I5(\out_rgb[23] [4]),
        .O(out_rgb[4]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[5]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[5]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [5]),
        .I5(\out_rgb[23] [5]),
        .O(out_rgb[5]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[6]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[6]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [6]),
        .I5(\out_rgb[23] [6]),
        .O(out_rgb[6]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[7]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[7]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [7]),
        .I5(\out_rgb[23] [7]),
        .O(out_rgb[7]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[8]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[8]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [8]),
        .I5(\out_rgb[23] [8]),
        .O(out_rgb[8]));
  LUT6 #(
    .INIT(64'hECFFECEC20332020)) 
    \out_rgb[9]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(s_osd_en),
        .I2(Q[9]),
        .I3(s_dscale_en),
        .I4(\data_reg_reg[23]_0 [9]),
        .I5(\out_rgb[23] [9]),
        .O(out_rgb[9]));
  LUT4 #(
    .INIT(16'hFFD5)) 
    \pix_x_t1[0]_i_2 
       (.I0(crop_href_o),
        .I1(\pix_x_t1_reg[3] ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .O(DI));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pix_y_t1[10]_i_3 
       (.I0(crop_vsync_o),
        .I1(vsync_t1),
        .O(vsync_reg_reg_1));
  FDCE vsync_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(yuv2rgb_vsync_o),
        .Q(crop_vsync_o));
endmodule

(* ORIG_REF_NAME = "vid_mux" *) 
module design_1_xil_vip_0_0_vid_mux_0
   (in_href,
    out_href,
    D,
    out_vsync,
    out_data,
    s_sobel_en,
    sobel_href,
    href_reg_reg_0,
    pclk,
    vsync_reg_reg_0,
    vsync_reg_reg_1,
    Q);
  output in_href;
  output out_href;
  output [15:0]D;
  output out_vsync;
  output [7:0]out_data;
  input s_sobel_en;
  input sobel_href;
  input href_reg_reg_0;
  input pclk;
  input vsync_reg_reg_0;
  input vsync_reg_reg_1;
  input [23:0]Q;

  wire [15:0]D;
  wire [23:0]Q;
  wire \data_reg_reg_n_0_[0] ;
  wire \data_reg_reg_n_0_[1] ;
  wire \data_reg_reg_n_0_[2] ;
  wire \data_reg_reg_n_0_[3] ;
  wire \data_reg_reg_n_0_[4] ;
  wire \data_reg_reg_n_0_[5] ;
  wire \data_reg_reg_n_0_[6] ;
  wire \data_reg_reg_n_0_[7] ;
  wire [7:0]hist_equ_u_o;
  wire href_reg_reg_0;
  wire in_href;
  wire [7:0]out_data;
  wire out_href;
  wire out_vsync;
  wire pclk;
  wire s_sobel_en;
  wire sobel_href;
  wire vsync_reg_reg_0;
  wire vsync_reg_reg_1;

  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[0]_i_1__1 
       (.I0(\data_reg_reg_n_0_[0] ),
        .I1(s_sobel_en),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[10]_i_1__1 
       (.I0(hist_equ_u_o[2]),
        .I1(s_sobel_en),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[11]_i_1__1 
       (.I0(hist_equ_u_o[3]),
        .I1(s_sobel_en),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[12]_i_1__1 
       (.I0(hist_equ_u_o[4]),
        .I1(s_sobel_en),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[13]_i_1__1 
       (.I0(hist_equ_u_o[5]),
        .I1(s_sobel_en),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[14]_i_1__1 
       (.I0(hist_equ_u_o[6]),
        .I1(s_sobel_en),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_reg[15]_i_1__1 
       (.I0(hist_equ_u_o[7]),
        .I1(s_sobel_en),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[1]_i_1__1 
       (.I0(\data_reg_reg_n_0_[1] ),
        .I1(s_sobel_en),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[2]_i_1__1 
       (.I0(\data_reg_reg_n_0_[2] ),
        .I1(s_sobel_en),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[3]_i_1__1 
       (.I0(\data_reg_reg_n_0_[3] ),
        .I1(s_sobel_en),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[4]_i_1__1 
       (.I0(\data_reg_reg_n_0_[4] ),
        .I1(s_sobel_en),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[5]_i_1__1 
       (.I0(\data_reg_reg_n_0_[5] ),
        .I1(s_sobel_en),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[6]_i_1__1 
       (.I0(\data_reg_reg_n_0_[6] ),
        .I1(s_sobel_en),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_reg[7]_i_1__1 
       (.I0(\data_reg_reg_n_0_[7] ),
        .I1(s_sobel_en),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[8]_i_1__1 
       (.I0(hist_equ_u_o[0]),
        .I1(s_sobel_en),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[9]_i_1__1 
       (.I0(hist_equ_u_o[1]),
        .I1(s_sobel_en),
        .O(D[9]));
  FDCE \data_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[0]),
        .Q(\data_reg_reg_n_0_[0] ));
  FDCE \data_reg_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[10]),
        .Q(hist_equ_u_o[2]));
  FDCE \data_reg_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[11]),
        .Q(hist_equ_u_o[3]));
  FDCE \data_reg_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[12]),
        .Q(hist_equ_u_o[4]));
  FDCE \data_reg_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[13]),
        .Q(hist_equ_u_o[5]));
  FDCE \data_reg_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[14]),
        .Q(hist_equ_u_o[6]));
  FDCE \data_reg_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[15]),
        .Q(hist_equ_u_o[7]));
  FDCE \data_reg_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[16]),
        .Q(out_data[0]));
  FDCE \data_reg_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[17]),
        .Q(out_data[1]));
  FDCE \data_reg_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[18]),
        .Q(out_data[2]));
  FDCE \data_reg_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[19]),
        .Q(out_data[3]));
  FDCE \data_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[1]),
        .Q(\data_reg_reg_n_0_[1] ));
  FDCE \data_reg_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[20]),
        .Q(out_data[4]));
  FDCE \data_reg_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[21]),
        .Q(out_data[5]));
  FDCE \data_reg_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[22]),
        .Q(out_data[6]));
  FDCE \data_reg_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[23]),
        .Q(out_data[7]));
  FDCE \data_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[2]),
        .Q(\data_reg_reg_n_0_[2] ));
  FDCE \data_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[3]),
        .Q(\data_reg_reg_n_0_[3] ));
  FDCE \data_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[4]),
        .Q(\data_reg_reg_n_0_[4] ));
  FDCE \data_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[5]),
        .Q(\data_reg_reg_n_0_[5] ));
  FDCE \data_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[6]),
        .Q(\data_reg_reg_n_0_[6] ));
  FDCE \data_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[7]),
        .Q(\data_reg_reg_n_0_[7] ));
  FDCE \data_reg_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[8]),
        .Q(hist_equ_u_o[0]));
  FDCE \data_reg_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(Q[9]),
        .Q(hist_equ_u_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    href_reg_i_1__0
       (.I0(out_href),
        .I1(s_sobel_en),
        .I2(sobel_href),
        .O(in_href));
  FDCE href_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(href_reg_reg_0),
        .Q(out_href));
  FDCE vsync_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(vsync_reg_reg_1),
        .Q(out_vsync));
endmodule

(* ORIG_REF_NAME = "vid_mux" *) 
module design_1_xil_vip_0_0_vid_mux_1
   (out_href,
    out_vsync,
    out_data,
    in_href,
    pclk,
    \data_reg_reg[0]_0 ,
    in_vsync,
    in_yuv);
  output out_href;
  output out_vsync;
  output [23:0]out_data;
  input in_href;
  input pclk;
  input \data_reg_reg[0]_0 ;
  input in_vsync;
  input [23:0]in_yuv;

  wire \data_reg_reg[0]_0 ;
  wire in_href;
  wire in_vsync;
  wire [23:0]in_yuv;
  wire [23:0]out_data;
  wire out_href;
  wire out_vsync;
  wire pclk;

  FDCE \data_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[0]),
        .Q(out_data[0]));
  FDCE \data_reg_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[10]),
        .Q(out_data[10]));
  FDCE \data_reg_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[11]),
        .Q(out_data[11]));
  FDCE \data_reg_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[12]),
        .Q(out_data[12]));
  FDCE \data_reg_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[13]),
        .Q(out_data[13]));
  FDCE \data_reg_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[14]),
        .Q(out_data[14]));
  FDCE \data_reg_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[15]),
        .Q(out_data[15]));
  FDCE \data_reg_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[16]),
        .Q(out_data[16]));
  FDCE \data_reg_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[17]),
        .Q(out_data[17]));
  FDCE \data_reg_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[18]),
        .Q(out_data[18]));
  FDCE \data_reg_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[19]),
        .Q(out_data[19]));
  FDCE \data_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[1]),
        .Q(out_data[1]));
  FDCE \data_reg_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[20]),
        .Q(out_data[20]));
  FDCE \data_reg_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[21]),
        .Q(out_data[21]));
  FDCE \data_reg_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[22]),
        .Q(out_data[22]));
  FDCE \data_reg_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[23]),
        .Q(out_data[23]));
  FDCE \data_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[2]),
        .Q(out_data[2]));
  FDCE \data_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[3]),
        .Q(out_data[3]));
  FDCE \data_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[4]),
        .Q(out_data[4]));
  FDCE \data_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[5]),
        .Q(out_data[5]));
  FDCE \data_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[6]),
        .Q(out_data[6]));
  FDCE \data_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[7]),
        .Q(out_data[7]));
  FDCE \data_reg_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[8]),
        .Q(out_data[8]));
  FDCE \data_reg_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_yuv[9]),
        .Q(out_data[9]));
  FDCE href_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_href),
        .Q(out_href));
  FDCE vsync_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_vsync),
        .Q(out_vsync));
endmodule

(* ORIG_REF_NAME = "vid_mux" *) 
module design_1_xil_vip_0_0_vid_mux_2
   (sobel_href_o,
    sobel_vsync_o,
    in_href,
    Q,
    in_href_0,
    pclk,
    \data_reg_reg[0]_0 ,
    in_vsync,
    s_yuv2rgb_en,
    yuv2rgb_href,
    D);
  output sobel_href_o;
  output sobel_vsync_o;
  output in_href;
  output [23:0]Q;
  input in_href_0;
  input pclk;
  input \data_reg_reg[0]_0 ;
  input in_vsync;
  input s_yuv2rgb_en;
  input yuv2rgb_href;
  input [23:0]D;

  wire [23:0]D;
  wire [23:0]Q;
  wire \data_reg_reg[0]_0 ;
  wire in_href;
  wire in_href_0;
  wire in_vsync;
  wire pclk;
  wire s_yuv2rgb_en;
  wire sobel_href_o;
  wire sobel_vsync_o;
  wire yuv2rgb_href;

  FDCE \data_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \data_reg_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \data_reg_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \data_reg_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \data_reg_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \data_reg_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \data_reg_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \data_reg_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \data_reg_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \data_reg_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \data_reg_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \data_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \data_reg_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \data_reg_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \data_reg_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \data_reg_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \data_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \data_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \data_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \data_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \data_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \data_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \data_reg_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \data_reg_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[9]),
        .Q(Q[9]));
  LUT3 #(
    .INIT(8'hE2)) 
    href_reg_i_1__0__0
       (.I0(sobel_href_o),
        .I1(s_yuv2rgb_en),
        .I2(yuv2rgb_href),
        .O(in_href));
  FDCE href_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_href_0),
        .Q(sobel_href_o));
  FDCE vsync_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_vsync),
        .Q(sobel_vsync_o));
endmodule

(* ORIG_REF_NAME = "vid_mux" *) 
module design_1_xil_vip_0_0_vid_mux_3
   (yuv2rgb_href_o,
    yuv2rgb_vsync_o,
    href_reg_reg_0,
    DI,
    Q,
    in_href,
    pclk,
    vsync_reg_reg_0,
    in_vsync,
    prev_href,
    prev_vsync,
    D);
  output yuv2rgb_href_o;
  output yuv2rgb_vsync_o;
  output href_reg_reg_0;
  output [0:0]DI;
  output [23:0]Q;
  input in_href;
  input pclk;
  input vsync_reg_reg_0;
  input in_vsync;
  input prev_href;
  input prev_vsync;
  input [23:0]D;

  wire [23:0]D;
  wire [0:0]DI;
  wire [23:0]Q;
  wire href_reg_reg_0;
  wire in_href;
  wire in_vsync;
  wire pclk;
  wire prev_href;
  wire prev_vsync;
  wire vsync_reg_reg_0;
  wire yuv2rgb_href_o;
  wire yuv2rgb_vsync_o;

  FDCE \data_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \data_reg_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \data_reg_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \data_reg_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \data_reg_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \data_reg_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \data_reg_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \data_reg_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \data_reg_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \data_reg_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \data_reg_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \data_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \data_reg_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \data_reg_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \data_reg_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \data_reg_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \data_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \data_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \data_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \data_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \data_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \data_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \data_reg_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \data_reg_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(D[9]),
        .Q(Q[9]));
  FDCE href_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(in_href),
        .Q(yuv2rgb_href_o));
  LUT4 #(
    .INIT(16'h44F4)) 
    \line_cnt[0]_i_1 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(prev_vsync),
        .I3(yuv2rgb_vsync_o),
        .O(href_reg_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    \line_cnt[0]_i_3 
       (.I0(yuv2rgb_vsync_o),
        .I1(prev_vsync),
        .O(DI));
  FDCE vsync_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(vsync_reg_reg_0),
        .D(in_vsync),
        .Q(yuv2rgb_vsync_o));
endmodule

(* ORIG_REF_NAME = "vip_crop" *) 
module design_1_xil_vip_0_0_vip_crop
   (prev_href,
    prev_vsync,
    D,
    in_href,
    yuv2rgb_href_o,
    pclk,
    yuv2rgb_vsync_o,
    \line_cnt_reg[15]_0 ,
    out_href3_carry__2_0,
    out_href1_carry__0_0,
    s_crop_en,
    s_module_reset,
    rst_n,
    out_href3_carry__2_1,
    \out_href1_inferred__0/i__carry__2_0 ,
    Q,
    DI);
  output prev_href;
  output prev_vsync;
  output [23:0]D;
  output in_href;
  input yuv2rgb_href_o;
  input pclk;
  input yuv2rgb_vsync_o;
  input \line_cnt_reg[15]_0 ;
  input [15:0]out_href3_carry__2_0;
  input [15:0]out_href1_carry__0_0;
  input s_crop_en;
  input s_module_reset;
  input rst_n;
  input [15:0]out_href3_carry__2_1;
  input [15:0]\out_href1_inferred__0/i__carry__2_0 ;
  input [23:0]Q;
  input [0:0]DI;

  wire [23:0]D;
  wire [0:0]DI;
  wire [23:0]Q;
  wire [23:0]data_r;
  wire \data_reg[23]_i_2_n_0 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire in_href;
  wire \line_cnt[0]_i_4_n_0 ;
  wire \line_cnt[0]_i_5_n_0 ;
  wire \line_cnt[0]_i_6_n_0 ;
  wire \line_cnt[0]_i_7_n_0 ;
  wire \line_cnt[12]_i_2_n_0 ;
  wire \line_cnt[12]_i_3_n_0 ;
  wire \line_cnt[12]_i_4_n_0 ;
  wire \line_cnt[12]_i_5_n_0 ;
  wire \line_cnt[4]_i_2_n_0 ;
  wire \line_cnt[4]_i_3_n_0 ;
  wire \line_cnt[4]_i_4_n_0 ;
  wire \line_cnt[4]_i_5_n_0 ;
  wire \line_cnt[8]_i_2_n_0 ;
  wire \line_cnt[8]_i_3_n_0 ;
  wire \line_cnt[8]_i_4_n_0 ;
  wire \line_cnt[8]_i_5_n_0 ;
  wire [15:0]line_cnt_reg;
  wire \line_cnt_reg[0]_i_2_n_0 ;
  wire \line_cnt_reg[0]_i_2_n_1 ;
  wire \line_cnt_reg[0]_i_2_n_2 ;
  wire \line_cnt_reg[0]_i_2_n_3 ;
  wire \line_cnt_reg[0]_i_2_n_4 ;
  wire \line_cnt_reg[0]_i_2_n_5 ;
  wire \line_cnt_reg[0]_i_2_n_6 ;
  wire \line_cnt_reg[0]_i_2_n_7 ;
  wire \line_cnt_reg[12]_i_1_n_1 ;
  wire \line_cnt_reg[12]_i_1_n_2 ;
  wire \line_cnt_reg[12]_i_1_n_3 ;
  wire \line_cnt_reg[12]_i_1_n_4 ;
  wire \line_cnt_reg[12]_i_1_n_5 ;
  wire \line_cnt_reg[12]_i_1_n_6 ;
  wire \line_cnt_reg[12]_i_1_n_7 ;
  wire \line_cnt_reg[15]_0 ;
  wire \line_cnt_reg[4]_i_1_n_0 ;
  wire \line_cnt_reg[4]_i_1_n_1 ;
  wire \line_cnt_reg[4]_i_1_n_2 ;
  wire \line_cnt_reg[4]_i_1_n_3 ;
  wire \line_cnt_reg[4]_i_1_n_4 ;
  wire \line_cnt_reg[4]_i_1_n_5 ;
  wire \line_cnt_reg[4]_i_1_n_6 ;
  wire \line_cnt_reg[4]_i_1_n_7 ;
  wire \line_cnt_reg[8]_i_1_n_0 ;
  wire \line_cnt_reg[8]_i_1_n_1 ;
  wire \line_cnt_reg[8]_i_1_n_2 ;
  wire \line_cnt_reg[8]_i_1_n_3 ;
  wire \line_cnt_reg[8]_i_1_n_4 ;
  wire \line_cnt_reg[8]_i_1_n_5 ;
  wire \line_cnt_reg[8]_i_1_n_6 ;
  wire \line_cnt_reg[8]_i_1_n_7 ;
  wire [15:0]out_href1_carry__0_0;
  wire out_href1_carry__0_i_1_n_0;
  wire out_href1_carry__0_i_2_n_0;
  wire out_href1_carry__0_i_3_n_0;
  wire out_href1_carry__0_i_4_n_0;
  wire out_href1_carry__0_i_5_n_0;
  wire out_href1_carry__0_i_6_n_0;
  wire out_href1_carry__0_i_7_n_0;
  wire out_href1_carry__0_i_8_n_0;
  wire out_href1_carry__0_n_0;
  wire out_href1_carry__0_n_1;
  wire out_href1_carry__0_n_2;
  wire out_href1_carry__0_n_3;
  wire out_href1_carry_i_1_n_0;
  wire out_href1_carry_i_2_n_0;
  wire out_href1_carry_i_3_n_0;
  wire out_href1_carry_i_4_n_0;
  wire out_href1_carry_i_5_n_0;
  wire out_href1_carry_i_6_n_0;
  wire out_href1_carry_i_7_n_0;
  wire out_href1_carry_i_8_n_0;
  wire out_href1_carry_n_0;
  wire out_href1_carry_n_1;
  wire out_href1_carry_n_2;
  wire out_href1_carry_n_3;
  wire \out_href1_inferred__0/i__carry__0_n_0 ;
  wire \out_href1_inferred__0/i__carry__0_n_1 ;
  wire \out_href1_inferred__0/i__carry__0_n_2 ;
  wire \out_href1_inferred__0/i__carry__0_n_3 ;
  wire \out_href1_inferred__0/i__carry__0_n_4 ;
  wire \out_href1_inferred__0/i__carry__0_n_5 ;
  wire \out_href1_inferred__0/i__carry__0_n_6 ;
  wire \out_href1_inferred__0/i__carry__0_n_7 ;
  wire \out_href1_inferred__0/i__carry__1_n_0 ;
  wire \out_href1_inferred__0/i__carry__1_n_1 ;
  wire \out_href1_inferred__0/i__carry__1_n_2 ;
  wire \out_href1_inferred__0/i__carry__1_n_3 ;
  wire \out_href1_inferred__0/i__carry__1_n_4 ;
  wire \out_href1_inferred__0/i__carry__1_n_5 ;
  wire \out_href1_inferred__0/i__carry__1_n_6 ;
  wire \out_href1_inferred__0/i__carry__1_n_7 ;
  wire [15:0]\out_href1_inferred__0/i__carry__2_0 ;
  wire \out_href1_inferred__0/i__carry__2_n_1 ;
  wire \out_href1_inferred__0/i__carry__2_n_2 ;
  wire \out_href1_inferred__0/i__carry__2_n_3 ;
  wire \out_href1_inferred__0/i__carry__2_n_4 ;
  wire \out_href1_inferred__0/i__carry__2_n_5 ;
  wire \out_href1_inferred__0/i__carry__2_n_6 ;
  wire \out_href1_inferred__0/i__carry__2_n_7 ;
  wire \out_href1_inferred__0/i__carry_n_0 ;
  wire \out_href1_inferred__0/i__carry_n_1 ;
  wire \out_href1_inferred__0/i__carry_n_2 ;
  wire \out_href1_inferred__0/i__carry_n_3 ;
  wire \out_href1_inferred__0/i__carry_n_4 ;
  wire \out_href1_inferred__0/i__carry_n_5 ;
  wire \out_href1_inferred__0/i__carry_n_6 ;
  wire \out_href1_inferred__0/i__carry_n_7 ;
  wire out_href20_in;
  wire out_href2_carry__0_i_1_n_0;
  wire out_href2_carry__0_i_2_n_0;
  wire out_href2_carry__0_i_3_n_0;
  wire out_href2_carry__0_i_4_n_0;
  wire out_href2_carry__0_i_5_n_0;
  wire out_href2_carry__0_i_6_n_0;
  wire out_href2_carry__0_i_7_n_0;
  wire out_href2_carry__0_i_8_n_0;
  wire out_href2_carry__0_n_1;
  wire out_href2_carry__0_n_2;
  wire out_href2_carry__0_n_3;
  wire out_href2_carry_i_1_n_0;
  wire out_href2_carry_i_2_n_0;
  wire out_href2_carry_i_3_n_0;
  wire out_href2_carry_i_4_n_0;
  wire out_href2_carry_i_5_n_0;
  wire out_href2_carry_i_6_n_0;
  wire out_href2_carry_i_7_n_0;
  wire out_href2_carry_i_8_n_0;
  wire out_href2_carry_n_0;
  wire out_href2_carry_n_1;
  wire out_href2_carry_n_2;
  wire out_href2_carry_n_3;
  wire out_href3_carry__0_i_1_n_0;
  wire out_href3_carry__0_i_2_n_0;
  wire out_href3_carry__0_i_3_n_0;
  wire out_href3_carry__0_i_4_n_0;
  wire out_href3_carry__0_n_0;
  wire out_href3_carry__0_n_1;
  wire out_href3_carry__0_n_2;
  wire out_href3_carry__0_n_3;
  wire out_href3_carry__0_n_4;
  wire out_href3_carry__0_n_5;
  wire out_href3_carry__0_n_6;
  wire out_href3_carry__0_n_7;
  wire out_href3_carry__1_i_1_n_0;
  wire out_href3_carry__1_i_2_n_0;
  wire out_href3_carry__1_i_3_n_0;
  wire out_href3_carry__1_i_4_n_0;
  wire out_href3_carry__1_n_0;
  wire out_href3_carry__1_n_1;
  wire out_href3_carry__1_n_2;
  wire out_href3_carry__1_n_3;
  wire out_href3_carry__1_n_4;
  wire out_href3_carry__1_n_5;
  wire out_href3_carry__1_n_6;
  wire out_href3_carry__1_n_7;
  wire [15:0]out_href3_carry__2_0;
  wire [15:0]out_href3_carry__2_1;
  wire out_href3_carry__2_i_1_n_0;
  wire out_href3_carry__2_i_2_n_0;
  wire out_href3_carry__2_i_3_n_0;
  wire out_href3_carry__2_i_4_n_0;
  wire out_href3_carry__2_n_1;
  wire out_href3_carry__2_n_2;
  wire out_href3_carry__2_n_3;
  wire out_href3_carry__2_n_4;
  wire out_href3_carry__2_n_5;
  wire out_href3_carry__2_n_6;
  wire out_href3_carry__2_n_7;
  wire out_href3_carry_i_1_n_0;
  wire out_href3_carry_i_2_n_0;
  wire out_href3_carry_i_3_n_0;
  wire out_href3_carry_i_4_n_0;
  wire out_href3_carry_n_0;
  wire out_href3_carry_n_1;
  wire out_href3_carry_n_2;
  wire out_href3_carry_n_3;
  wire out_href3_carry_n_4;
  wire out_href3_carry_n_5;
  wire out_href3_carry_n_6;
  wire out_href3_carry_n_7;
  wire p_1_out_carry__0_i_1_n_0;
  wire p_1_out_carry__0_i_2_n_0;
  wire p_1_out_carry__0_i_3_n_0;
  wire p_1_out_carry__0_i_4_n_0;
  wire p_1_out_carry__0_n_0;
  wire p_1_out_carry__0_n_1;
  wire p_1_out_carry__0_n_2;
  wire p_1_out_carry__0_n_3;
  wire p_1_out_carry__1_i_1_n_0;
  wire p_1_out_carry__1_i_2_n_0;
  wire p_1_out_carry__1_i_3_n_0;
  wire p_1_out_carry__1_i_4_n_0;
  wire p_1_out_carry__1_n_0;
  wire p_1_out_carry__1_n_1;
  wire p_1_out_carry__1_n_2;
  wire p_1_out_carry__1_n_3;
  wire p_1_out_carry__2_i_1_n_0;
  wire p_1_out_carry__2_i_2_n_0;
  wire p_1_out_carry__2_i_3_n_0;
  wire p_1_out_carry__2_i_4_n_0;
  wire p_1_out_carry__2_n_0;
  wire p_1_out_carry__2_n_1;
  wire p_1_out_carry__2_n_2;
  wire p_1_out_carry__2_n_3;
  wire p_1_out_carry_i_1_n_0;
  wire p_1_out_carry_i_2_n_0;
  wire p_1_out_carry_i_3_n_0;
  wire p_1_out_carry_i_4_n_0;
  wire p_1_out_carry_n_0;
  wire p_1_out_carry_n_1;
  wire p_1_out_carry_n_2;
  wire p_1_out_carry_n_3;
  wire \p_1_out_inferred__0/i__carry__0_n_0 ;
  wire \p_1_out_inferred__0/i__carry__0_n_1 ;
  wire \p_1_out_inferred__0/i__carry__0_n_2 ;
  wire \p_1_out_inferred__0/i__carry__0_n_3 ;
  wire \p_1_out_inferred__0/i__carry__1_n_0 ;
  wire \p_1_out_inferred__0/i__carry__1_n_1 ;
  wire \p_1_out_inferred__0/i__carry__1_n_2 ;
  wire \p_1_out_inferred__0/i__carry__1_n_3 ;
  wire \p_1_out_inferred__0/i__carry__2_n_0 ;
  wire \p_1_out_inferred__0/i__carry__2_n_1 ;
  wire \p_1_out_inferred__0/i__carry__2_n_2 ;
  wire \p_1_out_inferred__0/i__carry__2_n_3 ;
  wire \p_1_out_inferred__0/i__carry_n_0 ;
  wire \p_1_out_inferred__0/i__carry_n_1 ;
  wire \p_1_out_inferred__0/i__carry_n_2 ;
  wire \p_1_out_inferred__0/i__carry_n_3 ;
  wire pclk;
  wire \pix_cnt[0]_i_10_n_0 ;
  wire \pix_cnt[0]_i_1_n_0 ;
  wire \pix_cnt[0]_i_3_n_0 ;
  wire \pix_cnt[0]_i_4_n_0 ;
  wire \pix_cnt[0]_i_5_n_0 ;
  wire \pix_cnt[0]_i_6_n_0 ;
  wire \pix_cnt[0]_i_7_n_0 ;
  wire \pix_cnt[0]_i_8_n_0 ;
  wire \pix_cnt[0]_i_9_n_0 ;
  wire \pix_cnt[12]_i_2_n_0 ;
  wire \pix_cnt[12]_i_3_n_0 ;
  wire \pix_cnt[12]_i_4_n_0 ;
  wire \pix_cnt[12]_i_5_n_0 ;
  wire \pix_cnt[4]_i_2_n_0 ;
  wire \pix_cnt[4]_i_3_n_0 ;
  wire \pix_cnt[4]_i_4_n_0 ;
  wire \pix_cnt[4]_i_5_n_0 ;
  wire \pix_cnt[8]_i_2_n_0 ;
  wire \pix_cnt[8]_i_3_n_0 ;
  wire \pix_cnt[8]_i_4_n_0 ;
  wire \pix_cnt[8]_i_5_n_0 ;
  wire [15:0]pix_cnt_reg;
  wire \pix_cnt_reg[0]_i_2_n_0 ;
  wire \pix_cnt_reg[0]_i_2_n_1 ;
  wire \pix_cnt_reg[0]_i_2_n_2 ;
  wire \pix_cnt_reg[0]_i_2_n_3 ;
  wire \pix_cnt_reg[0]_i_2_n_4 ;
  wire \pix_cnt_reg[0]_i_2_n_5 ;
  wire \pix_cnt_reg[0]_i_2_n_6 ;
  wire \pix_cnt_reg[0]_i_2_n_7 ;
  wire \pix_cnt_reg[12]_i_1_n_1 ;
  wire \pix_cnt_reg[12]_i_1_n_2 ;
  wire \pix_cnt_reg[12]_i_1_n_3 ;
  wire \pix_cnt_reg[12]_i_1_n_4 ;
  wire \pix_cnt_reg[12]_i_1_n_5 ;
  wire \pix_cnt_reg[12]_i_1_n_6 ;
  wire \pix_cnt_reg[12]_i_1_n_7 ;
  wire \pix_cnt_reg[4]_i_1_n_0 ;
  wire \pix_cnt_reg[4]_i_1_n_1 ;
  wire \pix_cnt_reg[4]_i_1_n_2 ;
  wire \pix_cnt_reg[4]_i_1_n_3 ;
  wire \pix_cnt_reg[4]_i_1_n_4 ;
  wire \pix_cnt_reg[4]_i_1_n_5 ;
  wire \pix_cnt_reg[4]_i_1_n_6 ;
  wire \pix_cnt_reg[4]_i_1_n_7 ;
  wire \pix_cnt_reg[8]_i_1_n_0 ;
  wire \pix_cnt_reg[8]_i_1_n_1 ;
  wire \pix_cnt_reg[8]_i_1_n_2 ;
  wire \pix_cnt_reg[8]_i_1_n_3 ;
  wire \pix_cnt_reg[8]_i_1_n_4 ;
  wire \pix_cnt_reg[8]_i_1_n_5 ;
  wire \pix_cnt_reg[8]_i_1_n_6 ;
  wire \pix_cnt_reg[8]_i_1_n_7 ;
  wire prev_href;
  wire prev_href_i_1_n_0;
  wire prev_vsync;
  wire rst_n;
  wire s_crop_en;
  wire s_module_reset;
  wire yuv2rgb_href_o;
  wire yuv2rgb_vsync_o;
  wire [3:3]\NLW_line_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_out_href1_carry_O_UNCONNECTED;
  wire [3:0]NLW_out_href1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_out_href1_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_out_href2_carry_O_UNCONNECTED;
  wire [3:0]NLW_out_href2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_out_href3_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_carry_O_UNCONNECTED;
  wire [3:0]NLW_p_1_out_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_p_1_out_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_p_1_out_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_p_1_out_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_p_1_out_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_p_1_out_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_p_1_out_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:3]\NLW_pix_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  FDCE \data_r_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[0]),
        .Q(data_r[0]));
  FDCE \data_r_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[10]),
        .Q(data_r[10]));
  FDCE \data_r_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[11]),
        .Q(data_r[11]));
  FDCE \data_r_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[12]),
        .Q(data_r[12]));
  FDCE \data_r_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[13]),
        .Q(data_r[13]));
  FDCE \data_r_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[14]),
        .Q(data_r[14]));
  FDCE \data_r_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[15]),
        .Q(data_r[15]));
  FDCE \data_r_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[16]),
        .Q(data_r[16]));
  FDCE \data_r_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[17]),
        .Q(data_r[17]));
  FDCE \data_r_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[18]),
        .Q(data_r[18]));
  FDCE \data_r_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[19]),
        .Q(data_r[19]));
  FDCE \data_r_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[1]),
        .Q(data_r[1]));
  FDCE \data_r_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[20]),
        .Q(data_r[20]));
  FDCE \data_r_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[21]),
        .Q(data_r[21]));
  FDCE \data_r_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[22]),
        .Q(data_r[22]));
  FDCE \data_r_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[23]),
        .Q(data_r[23]));
  FDCE \data_r_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[2]),
        .Q(data_r[2]));
  FDCE \data_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[3]),
        .Q(data_r[3]));
  FDCE \data_r_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[4]),
        .Q(data_r[4]));
  FDCE \data_r_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[5]),
        .Q(data_r[5]));
  FDCE \data_r_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[6]),
        .Q(data_r[6]));
  FDCE \data_r_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[7]),
        .Q(data_r[7]));
  FDCE \data_r_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[8]),
        .Q(data_r[8]));
  FDCE \data_r_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(Q[9]),
        .Q(data_r[9]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[0]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[0]),
        .I2(data_r[0]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[10]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[10]),
        .I2(data_r[10]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[11]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[11]),
        .I2(data_r[11]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[12]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[12]),
        .I2(data_r[12]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[13]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[13]),
        .I2(data_r[13]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[14]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[14]),
        .I2(data_r[14]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[15]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[15]),
        .I2(data_r[15]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[16]_i_1__1 
       (.I0(s_crop_en),
        .I1(Q[16]),
        .I2(data_r[16]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[17]_i_1__1 
       (.I0(s_crop_en),
        .I1(Q[17]),
        .I2(data_r[17]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[18]_i_1__1 
       (.I0(s_crop_en),
        .I1(Q[18]),
        .I2(data_r[18]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[19]_i_1__1 
       (.I0(s_crop_en),
        .I1(Q[19]),
        .I2(data_r[19]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[1]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[1]),
        .I2(data_r[1]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[20]_i_1__1 
       (.I0(s_crop_en),
        .I1(Q[20]),
        .I2(data_r[20]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[21]_i_1__1 
       (.I0(s_crop_en),
        .I1(Q[21]),
        .I2(data_r[21]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[22]_i_1__1 
       (.I0(s_crop_en),
        .I1(Q[22]),
        .I2(data_r[22]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[23]_i_1__1 
       (.I0(s_crop_en),
        .I1(Q[23]),
        .I2(data_r[23]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \data_reg[23]_i_2 
       (.I0(out_href20_in),
        .I1(out_href1_carry__0_n_0),
        .I2(s_crop_en),
        .I3(\p_1_out_inferred__0/i__carry__2_n_0 ),
        .I4(p_1_out_carry__2_n_0),
        .O(\data_reg[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[2]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[2]),
        .I2(data_r[2]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[3]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[3]),
        .I2(data_r[3]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[4]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[4]),
        .I2(data_r[4]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[5]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[5]),
        .I2(data_r[5]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[6]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[6]),
        .I2(data_r[6]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[7]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[7]),
        .I2(data_r[7]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[8]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[8]),
        .I2(data_r[8]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hF444)) 
    \data_reg[9]_i_1__0 
       (.I0(s_crop_en),
        .I1(Q[9]),
        .I2(data_r[9]),
        .I3(\data_reg[23]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h03AA00AA00AA00AA)) 
    href_reg_i_1__1
       (.I0(yuv2rgb_href_o),
        .I1(p_1_out_carry__2_n_0),
        .I2(\p_1_out_inferred__0/i__carry__2_n_0 ),
        .I3(s_crop_en),
        .I4(out_href1_carry__0_n_0),
        .I5(out_href20_in),
        .O(in_href));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__0
       (.I0(out_href1_carry__0_0[7]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(line_cnt_reg[7]),
        .I1(\out_href1_inferred__0/i__carry__0_n_4 ),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__0
       (.I0(out_href1_carry__0_0[6]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [6]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(line_cnt_reg[6]),
        .I1(\out_href1_inferred__0/i__carry__0_n_5 ),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__0
       (.I0(out_href1_carry__0_0[5]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [5]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(line_cnt_reg[5]),
        .I1(\out_href1_inferred__0/i__carry__0_n_6 ),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__0
       (.I0(out_href1_carry__0_0[4]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [4]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__1
       (.I0(line_cnt_reg[4]),
        .I1(\out_href1_inferred__0/i__carry__0_n_7 ),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1
       (.I0(out_href1_carry__0_0[11]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__0
       (.I0(line_cnt_reg[11]),
        .I1(\out_href1_inferred__0/i__carry__1_n_4 ),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2
       (.I0(out_href1_carry__0_0[10]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(line_cnt_reg[10]),
        .I1(\out_href1_inferred__0/i__carry__1_n_5 ),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3
       (.I0(out_href1_carry__0_0[9]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__0
       (.I0(line_cnt_reg[9]),
        .I1(\out_href1_inferred__0/i__carry__1_n_6 ),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4
       (.I0(out_href1_carry__0_0[8]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4__0
       (.I0(line_cnt_reg[8]),
        .I1(\out_href1_inferred__0/i__carry__1_n_7 ),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_1
       (.I0(out_href1_carry__0_0[15]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__0
       (.I0(line_cnt_reg[15]),
        .I1(\out_href1_inferred__0/i__carry__2_n_4 ),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2
       (.I0(out_href1_carry__0_0[14]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__0
       (.I0(line_cnt_reg[14]),
        .I1(\out_href1_inferred__0/i__carry__2_n_5 ),
        .O(i__carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3
       (.I0(out_href1_carry__0_0[13]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3__0
       (.I0(line_cnt_reg[13]),
        .I1(\out_href1_inferred__0/i__carry__2_n_6 ),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4
       (.I0(out_href1_carry__0_0[12]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [12]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4__0
       (.I0(line_cnt_reg[12]),
        .I1(\out_href1_inferred__0/i__carry__2_n_7 ),
        .O(i__carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__0
       (.I0(out_href1_carry__0_0[3]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [3]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__1
       (.I0(line_cnt_reg[3]),
        .I1(\out_href1_inferred__0/i__carry_n_4 ),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__0
       (.I0(out_href1_carry__0_0[2]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [2]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__1
       (.I0(line_cnt_reg[2]),
        .I1(\out_href1_inferred__0/i__carry_n_5 ),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__0
       (.I0(out_href1_carry__0_0[1]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [1]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__1
       (.I0(line_cnt_reg[1]),
        .I1(\out_href1_inferred__0/i__carry_n_6 ),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__0
       (.I0(out_href1_carry__0_0[0]),
        .I1(\out_href1_inferred__0/i__carry__2_0 [0]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__1
       (.I0(line_cnt_reg[0]),
        .I1(\out_href1_inferred__0/i__carry_n_7 ),
        .O(i__carry_i_4__1_n_0));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[0]_i_4 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[3]),
        .O(\line_cnt[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[0]_i_5 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[2]),
        .O(\line_cnt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[0]_i_6 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[1]),
        .O(\line_cnt[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h51)) 
    \line_cnt[0]_i_7 
       (.I0(line_cnt_reg[0]),
        .I1(prev_vsync),
        .I2(yuv2rgb_vsync_o),
        .O(\line_cnt[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[12]_i_2 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[15]),
        .O(\line_cnt[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[12]_i_3 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[14]),
        .O(\line_cnt[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[12]_i_4 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[13]),
        .O(\line_cnt[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[12]_i_5 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[12]),
        .O(\line_cnt[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[4]_i_2 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[7]),
        .O(\line_cnt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[4]_i_3 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[6]),
        .O(\line_cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[4]_i_4 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[5]),
        .O(\line_cnt[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[4]_i_5 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[4]),
        .O(\line_cnt[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[8]_i_2 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[11]),
        .O(\line_cnt[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[8]_i_3 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[10]),
        .O(\line_cnt[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[8]_i_4 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[9]),
        .O(\line_cnt[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[8]_i_5 
       (.I0(prev_vsync),
        .I1(yuv2rgb_vsync_o),
        .I2(line_cnt_reg[8]),
        .O(\line_cnt[8]_i_5_n_0 ));
  FDPE \line_cnt_reg[0] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[0]_i_2_n_7 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[0]));
  CARRY4 \line_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\line_cnt_reg[0]_i_2_n_0 ,\line_cnt_reg[0]_i_2_n_1 ,\line_cnt_reg[0]_i_2_n_2 ,\line_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\line_cnt_reg[0]_i_2_n_4 ,\line_cnt_reg[0]_i_2_n_5 ,\line_cnt_reg[0]_i_2_n_6 ,\line_cnt_reg[0]_i_2_n_7 }),
        .S({\line_cnt[0]_i_4_n_0 ,\line_cnt[0]_i_5_n_0 ,\line_cnt[0]_i_6_n_0 ,\line_cnt[0]_i_7_n_0 }));
  FDPE \line_cnt_reg[10] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[8]_i_1_n_5 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[10]));
  FDPE \line_cnt_reg[11] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[8]_i_1_n_4 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[11]));
  FDPE \line_cnt_reg[12] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[12]_i_1_n_7 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[12]));
  CARRY4 \line_cnt_reg[12]_i_1 
       (.CI(\line_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_line_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\line_cnt_reg[12]_i_1_n_1 ,\line_cnt_reg[12]_i_1_n_2 ,\line_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_cnt_reg[12]_i_1_n_4 ,\line_cnt_reg[12]_i_1_n_5 ,\line_cnt_reg[12]_i_1_n_6 ,\line_cnt_reg[12]_i_1_n_7 }),
        .S({\line_cnt[12]_i_2_n_0 ,\line_cnt[12]_i_3_n_0 ,\line_cnt[12]_i_4_n_0 ,\line_cnt[12]_i_5_n_0 }));
  FDPE \line_cnt_reg[13] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[12]_i_1_n_6 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[13]));
  FDPE \line_cnt_reg[14] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[12]_i_1_n_5 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[14]));
  FDPE \line_cnt_reg[15] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[12]_i_1_n_4 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[15]));
  FDPE \line_cnt_reg[1] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[0]_i_2_n_6 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[1]));
  FDPE \line_cnt_reg[2] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[0]_i_2_n_5 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[2]));
  FDPE \line_cnt_reg[3] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[0]_i_2_n_4 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[3]));
  FDPE \line_cnt_reg[4] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[4]_i_1_n_7 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[4]));
  CARRY4 \line_cnt_reg[4]_i_1 
       (.CI(\line_cnt_reg[0]_i_2_n_0 ),
        .CO({\line_cnt_reg[4]_i_1_n_0 ,\line_cnt_reg[4]_i_1_n_1 ,\line_cnt_reg[4]_i_1_n_2 ,\line_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_cnt_reg[4]_i_1_n_4 ,\line_cnt_reg[4]_i_1_n_5 ,\line_cnt_reg[4]_i_1_n_6 ,\line_cnt_reg[4]_i_1_n_7 }),
        .S({\line_cnt[4]_i_2_n_0 ,\line_cnt[4]_i_3_n_0 ,\line_cnt[4]_i_4_n_0 ,\line_cnt[4]_i_5_n_0 }));
  FDPE \line_cnt_reg[5] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[4]_i_1_n_6 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[5]));
  FDPE \line_cnt_reg[6] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[4]_i_1_n_5 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[6]));
  FDPE \line_cnt_reg[7] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[4]_i_1_n_4 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[7]));
  FDPE \line_cnt_reg[8] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[8]_i_1_n_7 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[8]));
  CARRY4 \line_cnt_reg[8]_i_1 
       (.CI(\line_cnt_reg[4]_i_1_n_0 ),
        .CO({\line_cnt_reg[8]_i_1_n_0 ,\line_cnt_reg[8]_i_1_n_1 ,\line_cnt_reg[8]_i_1_n_2 ,\line_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_cnt_reg[8]_i_1_n_4 ,\line_cnt_reg[8]_i_1_n_5 ,\line_cnt_reg[8]_i_1_n_6 ,\line_cnt_reg[8]_i_1_n_7 }),
        .S({\line_cnt[8]_i_2_n_0 ,\line_cnt[8]_i_3_n_0 ,\line_cnt[8]_i_4_n_0 ,\line_cnt[8]_i_5_n_0 }));
  FDPE \line_cnt_reg[9] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[8]_i_1_n_6 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[9]));
  CARRY4 out_href1_carry
       (.CI(1'b0),
        .CO({out_href1_carry_n_0,out_href1_carry_n_1,out_href1_carry_n_2,out_href1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({out_href1_carry_i_1_n_0,out_href1_carry_i_2_n_0,out_href1_carry_i_3_n_0,out_href1_carry_i_4_n_0}),
        .O(NLW_out_href1_carry_O_UNCONNECTED[3:0]),
        .S({out_href1_carry_i_5_n_0,out_href1_carry_i_6_n_0,out_href1_carry_i_7_n_0,out_href1_carry_i_8_n_0}));
  CARRY4 out_href1_carry__0
       (.CI(out_href1_carry_n_0),
        .CO({out_href1_carry__0_n_0,out_href1_carry__0_n_1,out_href1_carry__0_n_2,out_href1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({out_href1_carry__0_i_1_n_0,out_href1_carry__0_i_2_n_0,out_href1_carry__0_i_3_n_0,out_href1_carry__0_i_4_n_0}),
        .O(NLW_out_href1_carry__0_O_UNCONNECTED[3:0]),
        .S({out_href1_carry__0_i_5_n_0,out_href1_carry__0_i_6_n_0,out_href1_carry__0_i_7_n_0,out_href1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href1_carry__0_i_1
       (.I0(line_cnt_reg[15]),
        .I1(out_href1_carry__0_0[15]),
        .I2(line_cnt_reg[14]),
        .I3(out_href1_carry__0_0[14]),
        .O(out_href1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href1_carry__0_i_2
       (.I0(line_cnt_reg[13]),
        .I1(out_href1_carry__0_0[13]),
        .I2(line_cnt_reg[12]),
        .I3(out_href1_carry__0_0[12]),
        .O(out_href1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href1_carry__0_i_3
       (.I0(line_cnt_reg[11]),
        .I1(out_href1_carry__0_0[11]),
        .I2(line_cnt_reg[10]),
        .I3(out_href1_carry__0_0[10]),
        .O(out_href1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href1_carry__0_i_4
       (.I0(line_cnt_reg[9]),
        .I1(out_href1_carry__0_0[9]),
        .I2(line_cnt_reg[8]),
        .I3(out_href1_carry__0_0[8]),
        .O(out_href1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href1_carry__0_i_5
       (.I0(out_href1_carry__0_0[15]),
        .I1(line_cnt_reg[15]),
        .I2(out_href1_carry__0_0[14]),
        .I3(line_cnt_reg[14]),
        .O(out_href1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href1_carry__0_i_6
       (.I0(out_href1_carry__0_0[13]),
        .I1(line_cnt_reg[13]),
        .I2(out_href1_carry__0_0[12]),
        .I3(line_cnt_reg[12]),
        .O(out_href1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href1_carry__0_i_7
       (.I0(out_href1_carry__0_0[11]),
        .I1(line_cnt_reg[11]),
        .I2(out_href1_carry__0_0[10]),
        .I3(line_cnt_reg[10]),
        .O(out_href1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href1_carry__0_i_8
       (.I0(out_href1_carry__0_0[9]),
        .I1(line_cnt_reg[9]),
        .I2(out_href1_carry__0_0[8]),
        .I3(line_cnt_reg[8]),
        .O(out_href1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href1_carry_i_1
       (.I0(line_cnt_reg[7]),
        .I1(out_href1_carry__0_0[7]),
        .I2(line_cnt_reg[6]),
        .I3(out_href1_carry__0_0[6]),
        .O(out_href1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href1_carry_i_2
       (.I0(line_cnt_reg[5]),
        .I1(out_href1_carry__0_0[5]),
        .I2(line_cnt_reg[4]),
        .I3(out_href1_carry__0_0[4]),
        .O(out_href1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href1_carry_i_3
       (.I0(line_cnt_reg[3]),
        .I1(out_href1_carry__0_0[3]),
        .I2(line_cnt_reg[2]),
        .I3(out_href1_carry__0_0[2]),
        .O(out_href1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href1_carry_i_4
       (.I0(line_cnt_reg[1]),
        .I1(out_href1_carry__0_0[1]),
        .I2(line_cnt_reg[0]),
        .I3(out_href1_carry__0_0[0]),
        .O(out_href1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href1_carry_i_5
       (.I0(out_href1_carry__0_0[7]),
        .I1(line_cnt_reg[7]),
        .I2(out_href1_carry__0_0[6]),
        .I3(line_cnt_reg[6]),
        .O(out_href1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href1_carry_i_6
       (.I0(out_href1_carry__0_0[5]),
        .I1(line_cnt_reg[5]),
        .I2(out_href1_carry__0_0[4]),
        .I3(line_cnt_reg[4]),
        .O(out_href1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href1_carry_i_7
       (.I0(out_href1_carry__0_0[3]),
        .I1(line_cnt_reg[3]),
        .I2(out_href1_carry__0_0[2]),
        .I3(line_cnt_reg[2]),
        .O(out_href1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href1_carry_i_8
       (.I0(out_href1_carry__0_0[1]),
        .I1(line_cnt_reg[1]),
        .I2(out_href1_carry__0_0[0]),
        .I3(line_cnt_reg[0]),
        .O(out_href1_carry_i_8_n_0));
  CARRY4 \out_href1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\out_href1_inferred__0/i__carry_n_0 ,\out_href1_inferred__0/i__carry_n_1 ,\out_href1_inferred__0/i__carry_n_2 ,\out_href1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(out_href1_carry__0_0[3:0]),
        .O({\out_href1_inferred__0/i__carry_n_4 ,\out_href1_inferred__0/i__carry_n_5 ,\out_href1_inferred__0/i__carry_n_6 ,\out_href1_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \out_href1_inferred__0/i__carry__0 
       (.CI(\out_href1_inferred__0/i__carry_n_0 ),
        .CO({\out_href1_inferred__0/i__carry__0_n_0 ,\out_href1_inferred__0/i__carry__0_n_1 ,\out_href1_inferred__0/i__carry__0_n_2 ,\out_href1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(out_href1_carry__0_0[7:4]),
        .O({\out_href1_inferred__0/i__carry__0_n_4 ,\out_href1_inferred__0/i__carry__0_n_5 ,\out_href1_inferred__0/i__carry__0_n_6 ,\out_href1_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \out_href1_inferred__0/i__carry__1 
       (.CI(\out_href1_inferred__0/i__carry__0_n_0 ),
        .CO({\out_href1_inferred__0/i__carry__1_n_0 ,\out_href1_inferred__0/i__carry__1_n_1 ,\out_href1_inferred__0/i__carry__1_n_2 ,\out_href1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(out_href1_carry__0_0[11:8]),
        .O({\out_href1_inferred__0/i__carry__1_n_4 ,\out_href1_inferred__0/i__carry__1_n_5 ,\out_href1_inferred__0/i__carry__1_n_6 ,\out_href1_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \out_href1_inferred__0/i__carry__2 
       (.CI(\out_href1_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_out_href1_inferred__0/i__carry__2_CO_UNCONNECTED [3],\out_href1_inferred__0/i__carry__2_n_1 ,\out_href1_inferred__0/i__carry__2_n_2 ,\out_href1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,out_href1_carry__0_0[14:12]}),
        .O({\out_href1_inferred__0/i__carry__2_n_4 ,\out_href1_inferred__0/i__carry__2_n_5 ,\out_href1_inferred__0/i__carry__2_n_6 ,\out_href1_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 out_href2_carry
       (.CI(1'b0),
        .CO({out_href2_carry_n_0,out_href2_carry_n_1,out_href2_carry_n_2,out_href2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({out_href2_carry_i_1_n_0,out_href2_carry_i_2_n_0,out_href2_carry_i_3_n_0,out_href2_carry_i_4_n_0}),
        .O(NLW_out_href2_carry_O_UNCONNECTED[3:0]),
        .S({out_href2_carry_i_5_n_0,out_href2_carry_i_6_n_0,out_href2_carry_i_7_n_0,out_href2_carry_i_8_n_0}));
  CARRY4 out_href2_carry__0
       (.CI(out_href2_carry_n_0),
        .CO({out_href20_in,out_href2_carry__0_n_1,out_href2_carry__0_n_2,out_href2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({out_href2_carry__0_i_1_n_0,out_href2_carry__0_i_2_n_0,out_href2_carry__0_i_3_n_0,out_href2_carry__0_i_4_n_0}),
        .O(NLW_out_href2_carry__0_O_UNCONNECTED[3:0]),
        .S({out_href2_carry__0_i_5_n_0,out_href2_carry__0_i_6_n_0,out_href2_carry__0_i_7_n_0,out_href2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href2_carry__0_i_1
       (.I0(pix_cnt_reg[15]),
        .I1(out_href3_carry__2_0[15]),
        .I2(pix_cnt_reg[14]),
        .I3(out_href3_carry__2_0[14]),
        .O(out_href2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href2_carry__0_i_2
       (.I0(pix_cnt_reg[13]),
        .I1(out_href3_carry__2_0[13]),
        .I2(pix_cnt_reg[12]),
        .I3(out_href3_carry__2_0[12]),
        .O(out_href2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href2_carry__0_i_3
       (.I0(pix_cnt_reg[11]),
        .I1(out_href3_carry__2_0[11]),
        .I2(pix_cnt_reg[10]),
        .I3(out_href3_carry__2_0[10]),
        .O(out_href2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href2_carry__0_i_4
       (.I0(pix_cnt_reg[9]),
        .I1(out_href3_carry__2_0[9]),
        .I2(pix_cnt_reg[8]),
        .I3(out_href3_carry__2_0[8]),
        .O(out_href2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href2_carry__0_i_5
       (.I0(out_href3_carry__2_0[15]),
        .I1(pix_cnt_reg[15]),
        .I2(out_href3_carry__2_0[14]),
        .I3(pix_cnt_reg[14]),
        .O(out_href2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href2_carry__0_i_6
       (.I0(out_href3_carry__2_0[13]),
        .I1(pix_cnt_reg[13]),
        .I2(out_href3_carry__2_0[12]),
        .I3(pix_cnt_reg[12]),
        .O(out_href2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href2_carry__0_i_7
       (.I0(out_href3_carry__2_0[11]),
        .I1(pix_cnt_reg[11]),
        .I2(out_href3_carry__2_0[10]),
        .I3(pix_cnt_reg[10]),
        .O(out_href2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href2_carry__0_i_8
       (.I0(out_href3_carry__2_0[9]),
        .I1(pix_cnt_reg[9]),
        .I2(out_href3_carry__2_0[8]),
        .I3(pix_cnt_reg[8]),
        .O(out_href2_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href2_carry_i_1
       (.I0(pix_cnt_reg[7]),
        .I1(out_href3_carry__2_0[7]),
        .I2(pix_cnt_reg[6]),
        .I3(out_href3_carry__2_0[6]),
        .O(out_href2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href2_carry_i_2
       (.I0(pix_cnt_reg[5]),
        .I1(out_href3_carry__2_0[5]),
        .I2(pix_cnt_reg[4]),
        .I3(out_href3_carry__2_0[4]),
        .O(out_href2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href2_carry_i_3
       (.I0(pix_cnt_reg[3]),
        .I1(out_href3_carry__2_0[3]),
        .I2(pix_cnt_reg[2]),
        .I3(out_href3_carry__2_0[2]),
        .O(out_href2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    out_href2_carry_i_4
       (.I0(pix_cnt_reg[1]),
        .I1(out_href3_carry__2_0[1]),
        .I2(pix_cnt_reg[0]),
        .I3(out_href3_carry__2_0[0]),
        .O(out_href2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href2_carry_i_5
       (.I0(out_href3_carry__2_0[7]),
        .I1(pix_cnt_reg[7]),
        .I2(out_href3_carry__2_0[6]),
        .I3(pix_cnt_reg[6]),
        .O(out_href2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href2_carry_i_6
       (.I0(out_href3_carry__2_0[5]),
        .I1(pix_cnt_reg[5]),
        .I2(out_href3_carry__2_0[4]),
        .I3(pix_cnt_reg[4]),
        .O(out_href2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href2_carry_i_7
       (.I0(out_href3_carry__2_0[3]),
        .I1(pix_cnt_reg[3]),
        .I2(out_href3_carry__2_0[2]),
        .I3(pix_cnt_reg[2]),
        .O(out_href2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_href2_carry_i_8
       (.I0(out_href3_carry__2_0[1]),
        .I1(pix_cnt_reg[1]),
        .I2(out_href3_carry__2_0[0]),
        .I3(pix_cnt_reg[0]),
        .O(out_href2_carry_i_8_n_0));
  CARRY4 out_href3_carry
       (.CI(1'b0),
        .CO({out_href3_carry_n_0,out_href3_carry_n_1,out_href3_carry_n_2,out_href3_carry_n_3}),
        .CYINIT(1'b0),
        .DI(out_href3_carry__2_0[3:0]),
        .O({out_href3_carry_n_4,out_href3_carry_n_5,out_href3_carry_n_6,out_href3_carry_n_7}),
        .S({out_href3_carry_i_1_n_0,out_href3_carry_i_2_n_0,out_href3_carry_i_3_n_0,out_href3_carry_i_4_n_0}));
  CARRY4 out_href3_carry__0
       (.CI(out_href3_carry_n_0),
        .CO({out_href3_carry__0_n_0,out_href3_carry__0_n_1,out_href3_carry__0_n_2,out_href3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(out_href3_carry__2_0[7:4]),
        .O({out_href3_carry__0_n_4,out_href3_carry__0_n_5,out_href3_carry__0_n_6,out_href3_carry__0_n_7}),
        .S({out_href3_carry__0_i_1_n_0,out_href3_carry__0_i_2_n_0,out_href3_carry__0_i_3_n_0,out_href3_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__0_i_1
       (.I0(out_href3_carry__2_0[7]),
        .I1(out_href3_carry__2_1[7]),
        .O(out_href3_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__0_i_2
       (.I0(out_href3_carry__2_0[6]),
        .I1(out_href3_carry__2_1[6]),
        .O(out_href3_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__0_i_3
       (.I0(out_href3_carry__2_0[5]),
        .I1(out_href3_carry__2_1[5]),
        .O(out_href3_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__0_i_4
       (.I0(out_href3_carry__2_0[4]),
        .I1(out_href3_carry__2_1[4]),
        .O(out_href3_carry__0_i_4_n_0));
  CARRY4 out_href3_carry__1
       (.CI(out_href3_carry__0_n_0),
        .CO({out_href3_carry__1_n_0,out_href3_carry__1_n_1,out_href3_carry__1_n_2,out_href3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(out_href3_carry__2_0[11:8]),
        .O({out_href3_carry__1_n_4,out_href3_carry__1_n_5,out_href3_carry__1_n_6,out_href3_carry__1_n_7}),
        .S({out_href3_carry__1_i_1_n_0,out_href3_carry__1_i_2_n_0,out_href3_carry__1_i_3_n_0,out_href3_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__1_i_1
       (.I0(out_href3_carry__2_0[11]),
        .I1(out_href3_carry__2_1[11]),
        .O(out_href3_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__1_i_2
       (.I0(out_href3_carry__2_0[10]),
        .I1(out_href3_carry__2_1[10]),
        .O(out_href3_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__1_i_3
       (.I0(out_href3_carry__2_0[9]),
        .I1(out_href3_carry__2_1[9]),
        .O(out_href3_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__1_i_4
       (.I0(out_href3_carry__2_0[8]),
        .I1(out_href3_carry__2_1[8]),
        .O(out_href3_carry__1_i_4_n_0));
  CARRY4 out_href3_carry__2
       (.CI(out_href3_carry__1_n_0),
        .CO({NLW_out_href3_carry__2_CO_UNCONNECTED[3],out_href3_carry__2_n_1,out_href3_carry__2_n_2,out_href3_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,out_href3_carry__2_0[14:12]}),
        .O({out_href3_carry__2_n_4,out_href3_carry__2_n_5,out_href3_carry__2_n_6,out_href3_carry__2_n_7}),
        .S({out_href3_carry__2_i_1_n_0,out_href3_carry__2_i_2_n_0,out_href3_carry__2_i_3_n_0,out_href3_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__2_i_1
       (.I0(out_href3_carry__2_0[15]),
        .I1(out_href3_carry__2_1[15]),
        .O(out_href3_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__2_i_2
       (.I0(out_href3_carry__2_0[14]),
        .I1(out_href3_carry__2_1[14]),
        .O(out_href3_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__2_i_3
       (.I0(out_href3_carry__2_0[13]),
        .I1(out_href3_carry__2_1[13]),
        .O(out_href3_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry__2_i_4
       (.I0(out_href3_carry__2_0[12]),
        .I1(out_href3_carry__2_1[12]),
        .O(out_href3_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry_i_1
       (.I0(out_href3_carry__2_0[3]),
        .I1(out_href3_carry__2_1[3]),
        .O(out_href3_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry_i_2
       (.I0(out_href3_carry__2_0[2]),
        .I1(out_href3_carry__2_1[2]),
        .O(out_href3_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry_i_3
       (.I0(out_href3_carry__2_0[1]),
        .I1(out_href3_carry__2_1[1]),
        .O(out_href3_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out_href3_carry_i_4
       (.I0(out_href3_carry__2_0[0]),
        .I1(out_href3_carry__2_1[0]),
        .O(out_href3_carry_i_4_n_0));
  CARRY4 p_1_out_carry
       (.CI(1'b0),
        .CO({p_1_out_carry_n_0,p_1_out_carry_n_1,p_1_out_carry_n_2,p_1_out_carry_n_3}),
        .CYINIT(1'b1),
        .DI(pix_cnt_reg[3:0]),
        .O(NLW_p_1_out_carry_O_UNCONNECTED[3:0]),
        .S({p_1_out_carry_i_1_n_0,p_1_out_carry_i_2_n_0,p_1_out_carry_i_3_n_0,p_1_out_carry_i_4_n_0}));
  CARRY4 p_1_out_carry__0
       (.CI(p_1_out_carry_n_0),
        .CO({p_1_out_carry__0_n_0,p_1_out_carry__0_n_1,p_1_out_carry__0_n_2,p_1_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(pix_cnt_reg[7:4]),
        .O(NLW_p_1_out_carry__0_O_UNCONNECTED[3:0]),
        .S({p_1_out_carry__0_i_1_n_0,p_1_out_carry__0_i_2_n_0,p_1_out_carry__0_i_3_n_0,p_1_out_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_1
       (.I0(pix_cnt_reg[7]),
        .I1(out_href3_carry__0_n_4),
        .O(p_1_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_2
       (.I0(pix_cnt_reg[6]),
        .I1(out_href3_carry__0_n_5),
        .O(p_1_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_3
       (.I0(pix_cnt_reg[5]),
        .I1(out_href3_carry__0_n_6),
        .O(p_1_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_4
       (.I0(pix_cnt_reg[4]),
        .I1(out_href3_carry__0_n_7),
        .O(p_1_out_carry__0_i_4_n_0));
  CARRY4 p_1_out_carry__1
       (.CI(p_1_out_carry__0_n_0),
        .CO({p_1_out_carry__1_n_0,p_1_out_carry__1_n_1,p_1_out_carry__1_n_2,p_1_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(pix_cnt_reg[11:8]),
        .O(NLW_p_1_out_carry__1_O_UNCONNECTED[3:0]),
        .S({p_1_out_carry__1_i_1_n_0,p_1_out_carry__1_i_2_n_0,p_1_out_carry__1_i_3_n_0,p_1_out_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_1
       (.I0(pix_cnt_reg[11]),
        .I1(out_href3_carry__1_n_4),
        .O(p_1_out_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_2
       (.I0(pix_cnt_reg[10]),
        .I1(out_href3_carry__1_n_5),
        .O(p_1_out_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_3
       (.I0(pix_cnt_reg[9]),
        .I1(out_href3_carry__1_n_6),
        .O(p_1_out_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_4
       (.I0(pix_cnt_reg[8]),
        .I1(out_href3_carry__1_n_7),
        .O(p_1_out_carry__1_i_4_n_0));
  CARRY4 p_1_out_carry__2
       (.CI(p_1_out_carry__1_n_0),
        .CO({p_1_out_carry__2_n_0,p_1_out_carry__2_n_1,p_1_out_carry__2_n_2,p_1_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(pix_cnt_reg[15:12]),
        .O(NLW_p_1_out_carry__2_O_UNCONNECTED[3:0]),
        .S({p_1_out_carry__2_i_1_n_0,p_1_out_carry__2_i_2_n_0,p_1_out_carry__2_i_3_n_0,p_1_out_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_1
       (.I0(pix_cnt_reg[15]),
        .I1(out_href3_carry__2_n_4),
        .O(p_1_out_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_2
       (.I0(pix_cnt_reg[14]),
        .I1(out_href3_carry__2_n_5),
        .O(p_1_out_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_3
       (.I0(pix_cnt_reg[13]),
        .I1(out_href3_carry__2_n_6),
        .O(p_1_out_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__2_i_4
       (.I0(pix_cnt_reg[12]),
        .I1(out_href3_carry__2_n_7),
        .O(p_1_out_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_1
       (.I0(pix_cnt_reg[3]),
        .I1(out_href3_carry_n_4),
        .O(p_1_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_2
       (.I0(pix_cnt_reg[2]),
        .I1(out_href3_carry_n_5),
        .O(p_1_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_3
       (.I0(pix_cnt_reg[1]),
        .I1(out_href3_carry_n_6),
        .O(p_1_out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_4
       (.I0(pix_cnt_reg[0]),
        .I1(out_href3_carry_n_7),
        .O(p_1_out_carry_i_4_n_0));
  CARRY4 \p_1_out_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\p_1_out_inferred__0/i__carry_n_0 ,\p_1_out_inferred__0/i__carry_n_1 ,\p_1_out_inferred__0/i__carry_n_2 ,\p_1_out_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(line_cnt_reg[3:0]),
        .O(\NLW_p_1_out_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}));
  CARRY4 \p_1_out_inferred__0/i__carry__0 
       (.CI(\p_1_out_inferred__0/i__carry_n_0 ),
        .CO({\p_1_out_inferred__0/i__carry__0_n_0 ,\p_1_out_inferred__0/i__carry__0_n_1 ,\p_1_out_inferred__0/i__carry__0_n_2 ,\p_1_out_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(line_cnt_reg[7:4]),
        .O(\NLW_p_1_out_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  CARRY4 \p_1_out_inferred__0/i__carry__1 
       (.CI(\p_1_out_inferred__0/i__carry__0_n_0 ),
        .CO({\p_1_out_inferred__0/i__carry__1_n_0 ,\p_1_out_inferred__0/i__carry__1_n_1 ,\p_1_out_inferred__0/i__carry__1_n_2 ,\p_1_out_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(line_cnt_reg[11:8]),
        .O(\NLW_p_1_out_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \p_1_out_inferred__0/i__carry__2 
       (.CI(\p_1_out_inferred__0/i__carry__1_n_0 ),
        .CO({\p_1_out_inferred__0/i__carry__2_n_0 ,\p_1_out_inferred__0/i__carry__2_n_1 ,\p_1_out_inferred__0/i__carry__2_n_2 ,\p_1_out_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(line_cnt_reg[15:12]),
        .O(\NLW_p_1_out_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \pix_cnt[0]_i_1 
       (.I0(pix_cnt_reg[4]),
        .I1(pix_cnt_reg[3]),
        .I2(pix_cnt_reg[0]),
        .I3(\pix_cnt[0]_i_3_n_0 ),
        .I4(\pix_cnt[0]_i_4_n_0 ),
        .O(\pix_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7F77FFFF)) 
    \pix_cnt[0]_i_10 
       (.I0(pix_cnt_reg[14]),
        .I1(pix_cnt_reg[13]),
        .I2(prev_href),
        .I3(yuv2rgb_href_o),
        .I4(pix_cnt_reg[15]),
        .O(\pix_cnt[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \pix_cnt[0]_i_3 
       (.I0(pix_cnt_reg[2]),
        .I1(pix_cnt_reg[1]),
        .I2(pix_cnt_reg[11]),
        .I3(pix_cnt_reg[12]),
        .I4(\pix_cnt[0]_i_10_n_0 ),
        .O(\pix_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pix_cnt[0]_i_4 
       (.I0(pix_cnt_reg[9]),
        .I1(pix_cnt_reg[10]),
        .I2(pix_cnt_reg[7]),
        .I3(pix_cnt_reg[8]),
        .I4(pix_cnt_reg[6]),
        .I5(pix_cnt_reg[5]),
        .O(\pix_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pix_cnt[0]_i_5 
       (.I0(prev_href),
        .I1(yuv2rgb_href_o),
        .O(\pix_cnt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[0]_i_6 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[3]),
        .O(\pix_cnt[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[0]_i_7 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[2]),
        .O(\pix_cnt[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[0]_i_8 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[1]),
        .O(\pix_cnt[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h51)) 
    \pix_cnt[0]_i_9 
       (.I0(pix_cnt_reg[0]),
        .I1(yuv2rgb_href_o),
        .I2(prev_href),
        .O(\pix_cnt[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB0)) 
    \pix_cnt[12]_i_2 
       (.I0(prev_href),
        .I1(yuv2rgb_href_o),
        .I2(pix_cnt_reg[15]),
        .O(\pix_cnt[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[12]_i_3 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[14]),
        .O(\pix_cnt[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[12]_i_4 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[13]),
        .O(\pix_cnt[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[12]_i_5 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[12]),
        .O(\pix_cnt[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[4]_i_2 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[7]),
        .O(\pix_cnt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[4]_i_3 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[6]),
        .O(\pix_cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[4]_i_4 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[5]),
        .O(\pix_cnt[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[4]_i_5 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[4]),
        .O(\pix_cnt[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[8]_i_2 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[11]),
        .O(\pix_cnt[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[8]_i_3 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[10]),
        .O(\pix_cnt[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[8]_i_4 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[9]),
        .O(\pix_cnt[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[8]_i_5 
       (.I0(yuv2rgb_href_o),
        .I1(prev_href),
        .I2(pix_cnt_reg[8]),
        .O(\pix_cnt[8]_i_5_n_0 ));
  FDCE \pix_cnt_reg[0] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_7 ),
        .Q(pix_cnt_reg[0]));
  CARRY4 \pix_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pix_cnt_reg[0]_i_2_n_0 ,\pix_cnt_reg[0]_i_2_n_1 ,\pix_cnt_reg[0]_i_2_n_2 ,\pix_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pix_cnt[0]_i_5_n_0 }),
        .O({\pix_cnt_reg[0]_i_2_n_4 ,\pix_cnt_reg[0]_i_2_n_5 ,\pix_cnt_reg[0]_i_2_n_6 ,\pix_cnt_reg[0]_i_2_n_7 }),
        .S({\pix_cnt[0]_i_6_n_0 ,\pix_cnt[0]_i_7_n_0 ,\pix_cnt[0]_i_8_n_0 ,\pix_cnt[0]_i_9_n_0 }));
  FDCE \pix_cnt_reg[10] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_5 ),
        .Q(pix_cnt_reg[10]));
  FDCE \pix_cnt_reg[11] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_4 ),
        .Q(pix_cnt_reg[11]));
  FDCE \pix_cnt_reg[12] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_7 ),
        .Q(pix_cnt_reg[12]));
  CARRY4 \pix_cnt_reg[12]_i_1 
       (.CI(\pix_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pix_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\pix_cnt_reg[12]_i_1_n_1 ,\pix_cnt_reg[12]_i_1_n_2 ,\pix_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[12]_i_1_n_4 ,\pix_cnt_reg[12]_i_1_n_5 ,\pix_cnt_reg[12]_i_1_n_6 ,\pix_cnt_reg[12]_i_1_n_7 }),
        .S({\pix_cnt[12]_i_2_n_0 ,\pix_cnt[12]_i_3_n_0 ,\pix_cnt[12]_i_4_n_0 ,\pix_cnt[12]_i_5_n_0 }));
  FDCE \pix_cnt_reg[13] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_6 ),
        .Q(pix_cnt_reg[13]));
  FDCE \pix_cnt_reg[14] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_5 ),
        .Q(pix_cnt_reg[14]));
  FDCE \pix_cnt_reg[15] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_4 ),
        .Q(pix_cnt_reg[15]));
  FDCE \pix_cnt_reg[1] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_6 ),
        .Q(pix_cnt_reg[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_5 ),
        .Q(pix_cnt_reg[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_4 ),
        .Q(pix_cnt_reg[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_7 ),
        .Q(pix_cnt_reg[4]));
  CARRY4 \pix_cnt_reg[4]_i_1 
       (.CI(\pix_cnt_reg[0]_i_2_n_0 ),
        .CO({\pix_cnt_reg[4]_i_1_n_0 ,\pix_cnt_reg[4]_i_1_n_1 ,\pix_cnt_reg[4]_i_1_n_2 ,\pix_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[4]_i_1_n_4 ,\pix_cnt_reg[4]_i_1_n_5 ,\pix_cnt_reg[4]_i_1_n_6 ,\pix_cnt_reg[4]_i_1_n_7 }),
        .S({\pix_cnt[4]_i_2_n_0 ,\pix_cnt[4]_i_3_n_0 ,\pix_cnt[4]_i_4_n_0 ,\pix_cnt[4]_i_5_n_0 }));
  FDCE \pix_cnt_reg[5] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_6 ),
        .Q(pix_cnt_reg[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_5 ),
        .Q(pix_cnt_reg[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_4 ),
        .Q(pix_cnt_reg[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_7 ),
        .Q(pix_cnt_reg[8]));
  CARRY4 \pix_cnt_reg[8]_i_1 
       (.CI(\pix_cnt_reg[4]_i_1_n_0 ),
        .CO({\pix_cnt_reg[8]_i_1_n_0 ,\pix_cnt_reg[8]_i_1_n_1 ,\pix_cnt_reg[8]_i_1_n_2 ,\pix_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[8]_i_1_n_4 ,\pix_cnt_reg[8]_i_1_n_5 ,\pix_cnt_reg[8]_i_1_n_6 ,\pix_cnt_reg[8]_i_1_n_7 }),
        .S({\pix_cnt[8]_i_2_n_0 ,\pix_cnt[8]_i_3_n_0 ,\pix_cnt[8]_i_4_n_0 ,\pix_cnt[8]_i_5_n_0 }));
  FDCE \pix_cnt_reg[9] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_6 ),
        .Q(pix_cnt_reg[9]));
  LUT3 #(
    .INIT(8'hDF)) 
    prev_href_i_1
       (.I0(s_crop_en),
        .I1(s_module_reset),
        .I2(rst_n),
        .O(prev_href_i_1_n_0));
  FDCE prev_href_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(yuv2rgb_href_o),
        .Q(prev_href));
  FDCE prev_vsync_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(yuv2rgb_vsync_o),
        .Q(prev_vsync));
endmodule

(* ORIG_REF_NAME = "vip_dscale" *) 
module design_1_xil_vip_0_0_vip_dscale
   (prev_vsync,
    prev_href,
    \line_cnt_reg[2]_0 ,
    dscale_href_o,
    href_reg_reg,
    CLK,
    Q,
    pclk,
    crop_vsync_o,
    crop_href_o,
    s_dscale_en,
    s_module_reset,
    rst_n,
    \line_cnt_reg[0]_0 ,
    \line_cnt_reg[0]_1 ,
    \pix_cnt_reg[0]_0 ,
    E,
    \data_r_reg[23]_0 );
  output prev_vsync;
  output prev_href;
  output \line_cnt_reg[2]_0 ;
  output dscale_href_o;
  output href_reg_reg;
  output CLK;
  output [23:0]Q;
  input pclk;
  input crop_vsync_o;
  input crop_href_o;
  input s_dscale_en;
  input s_module_reset;
  input rst_n;
  input [3:0]\line_cnt_reg[0]_0 ;
  input \line_cnt_reg[0]_1 ;
  input [3:0]\pix_cnt_reg[0]_0 ;
  input [0:0]E;
  input [23:0]\data_r_reg[23]_0 ;

  wire CLK;
  wire [0:0]E;
  wire [23:0]Q;
  wire crop_href_o;
  wire crop_vsync_o;
  wire data_r0;
  wire [23:0]\data_r_reg[23]_0 ;
  wire dscale_href_o;
  wire dscale_pclk;
  wire href_reg_reg;
  wire [3:0]line_cnt;
  wire \line_cnt[0]_i_1__0_n_0 ;
  wire \line_cnt[0]_i_2_n_0 ;
  wire \line_cnt[1]_i_1_n_0 ;
  wire \line_cnt[2]_i_1_n_0 ;
  wire \line_cnt[3]_i_2_n_0 ;
  wire \line_cnt[3]_i_4_n_0 ;
  wire [3:0]\line_cnt_reg[0]_0 ;
  wire \line_cnt_reg[0]_1 ;
  wire \line_cnt_reg[2]_0 ;
  wire out_pclk_r_i_2_n_0;
  wire [3:0]p_0_in;
  wire p_0_in_0;
  wire pclk;
  wire \pix_cnt[3]_i_2_n_0 ;
  wire [3:0]pix_cnt_reg;
  wire [3:0]\pix_cnt_reg[0]_0 ;
  wire prev_href;
  wire prev_vsync;
  wire rst_n;
  wire s_dscale_en;
  wire s_module_reset;

  LUT5 #(
    .INIT(32'h00000001)) 
    \data_r[23]_i_1 
       (.I0(pix_cnt_reg[2]),
        .I1(pix_cnt_reg[3]),
        .I2(pix_cnt_reg[0]),
        .I3(pix_cnt_reg[1]),
        .I4(\line_cnt_reg[2]_0 ),
        .O(data_r0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_r[23]_i_2 
       (.I0(line_cnt[2]),
        .I1(line_cnt[1]),
        .I2(line_cnt[3]),
        .I3(line_cnt[0]),
        .O(\line_cnt_reg[2]_0 ));
  FDCE \data_r_reg[0] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [0]),
        .Q(Q[0]));
  FDCE \data_r_reg[10] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [10]),
        .Q(Q[10]));
  FDCE \data_r_reg[11] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [11]),
        .Q(Q[11]));
  FDCE \data_r_reg[12] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [12]),
        .Q(Q[12]));
  FDCE \data_r_reg[13] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [13]),
        .Q(Q[13]));
  FDCE \data_r_reg[14] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [14]),
        .Q(Q[14]));
  FDCE \data_r_reg[15] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [15]),
        .Q(Q[15]));
  FDCE \data_r_reg[16] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [16]),
        .Q(Q[16]));
  FDCE \data_r_reg[17] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [17]),
        .Q(Q[17]));
  FDCE \data_r_reg[18] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [18]),
        .Q(Q[18]));
  FDCE \data_r_reg[19] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [19]),
        .Q(Q[19]));
  FDCE \data_r_reg[1] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [1]),
        .Q(Q[1]));
  FDCE \data_r_reg[20] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [20]),
        .Q(Q[20]));
  FDCE \data_r_reg[21] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [21]),
        .Q(Q[21]));
  FDCE \data_r_reg[22] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [22]),
        .Q(Q[22]));
  FDCE \data_r_reg[23] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [23]),
        .Q(Q[23]));
  FDCE \data_r_reg[2] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [2]),
        .Q(Q[2]));
  FDCE \data_r_reg[3] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [3]),
        .Q(Q[3]));
  FDCE \data_r_reg[4] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [4]),
        .Q(Q[4]));
  FDCE \data_r_reg[5] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [5]),
        .Q(Q[5]));
  FDCE \data_r_reg[6] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [6]),
        .Q(Q[6]));
  FDCE \data_r_reg[7] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [7]),
        .Q(Q[7]));
  FDCE \data_r_reg[8] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [8]),
        .Q(Q[8]));
  FDCE \data_r_reg[9] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\data_r_reg[23]_0 [9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h5555555700000000)) 
    href_t1_i_1
       (.I0(s_dscale_en),
        .I1(line_cnt[2]),
        .I2(line_cnt[1]),
        .I3(line_cnt[3]),
        .I4(line_cnt[0]),
        .I5(crop_href_o),
        .O(dscale_href_o));
  LUT6 #(
    .INIT(64'h00000000E0E0F0E0)) 
    \line_cnt[0]_i_1__0 
       (.I0(\line_cnt[0]_i_2_n_0 ),
        .I1(\line_cnt_reg[0]_0 [0]),
        .I2(\line_cnt_reg[0]_1 ),
        .I3(\line_cnt_reg[0]_0 [3]),
        .I4(line_cnt[3]),
        .I5(line_cnt[0]),
        .O(\line_cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h66F6FFFFFFFF66F6)) 
    \line_cnt[0]_i_2 
       (.I0(\line_cnt_reg[0]_0 [2]),
        .I1(line_cnt[2]),
        .I2(line_cnt[3]),
        .I3(\line_cnt_reg[0]_0 [3]),
        .I4(line_cnt[1]),
        .I5(\line_cnt_reg[0]_0 [1]),
        .O(\line_cnt[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h60660000)) 
    \line_cnt[1]_i_1 
       (.I0(line_cnt[0]),
        .I1(line_cnt[1]),
        .I2(crop_vsync_o),
        .I3(prev_vsync),
        .I4(\line_cnt[3]_i_4_n_0 ),
        .O(\line_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7800787800000000)) 
    \line_cnt[2]_i_1 
       (.I0(line_cnt[0]),
        .I1(line_cnt[1]),
        .I2(line_cnt[2]),
        .I3(crop_vsync_o),
        .I4(prev_vsync),
        .I5(\line_cnt[3]_i_4_n_0 ),
        .O(\line_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F80000000000000)) 
    \line_cnt[3]_i_2 
       (.I0(line_cnt[0]),
        .I1(line_cnt[1]),
        .I2(line_cnt[2]),
        .I3(line_cnt[3]),
        .I4(\line_cnt_reg[0]_1 ),
        .I5(\line_cnt[3]_i_4_n_0 ),
        .O(\line_cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF66F6)) 
    \line_cnt[3]_i_4 
       (.I0(\line_cnt_reg[0]_0 [0]),
        .I1(line_cnt[0]),
        .I2(\line_cnt_reg[0]_0 [3]),
        .I3(line_cnt[3]),
        .I4(\line_cnt[0]_i_2_n_0 ),
        .O(\line_cnt[3]_i_4_n_0 ));
  FDCE \line_cnt_reg[0] 
       (.C(pclk),
        .CE(E),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\line_cnt[0]_i_1__0_n_0 ),
        .Q(line_cnt[0]));
  FDCE \line_cnt_reg[1] 
       (.C(pclk),
        .CE(E),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\line_cnt[1]_i_1_n_0 ),
        .Q(line_cnt[1]));
  FDCE \line_cnt_reg[2] 
       (.C(pclk),
        .CE(E),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\line_cnt[2]_i_1_n_0 ),
        .Q(line_cnt[2]));
  FDCE \line_cnt_reg[3] 
       (.C(pclk),
        .CE(E),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\line_cnt[3]_i_2_n_0 ),
        .Q(line_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    out_href_INST_0_i_1
       (.I0(crop_href_o),
        .I1(line_cnt[0]),
        .I2(line_cnt[3]),
        .I3(line_cnt[1]),
        .I4(line_cnt[2]),
        .O(href_reg_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    out_pclk_INST_0
       (.I0(dscale_pclk),
        .I1(s_dscale_en),
        .I2(pclk),
        .O(CLK));
  LUT4 #(
    .INIT(16'h0001)) 
    out_pclk_r_i_1
       (.I0(pix_cnt_reg[1]),
        .I1(pix_cnt_reg[0]),
        .I2(pix_cnt_reg[3]),
        .I3(pix_cnt_reg[2]),
        .O(p_0_in_0));
  LUT3 #(
    .INIT(8'hDF)) 
    out_pclk_r_i_2
       (.I0(s_dscale_en),
        .I1(s_module_reset),
        .I2(rst_n),
        .O(out_pclk_r_i_2_n_0));
  FDCE out_pclk_r_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(p_0_in_0),
        .Q(dscale_pclk));
  LUT3 #(
    .INIT(8'h32)) 
    \pix_cnt[0]_i_1__0 
       (.I0(\pix_cnt_reg[0]_0 [0]),
        .I1(pix_cnt_reg[0]),
        .I2(\pix_cnt[3]_i_2_n_0 ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0DE0)) 
    \pix_cnt[1]_i_1 
       (.I0(\pix_cnt_reg[0]_0 [0]),
        .I1(\pix_cnt[3]_i_2_n_0 ),
        .I2(pix_cnt_reg[1]),
        .I3(pix_cnt_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0DE0D0E0)) 
    \pix_cnt[2]_i_1 
       (.I0(\pix_cnt_reg[0]_0 [0]),
        .I1(\pix_cnt[3]_i_2_n_0 ),
        .I2(pix_cnt_reg[2]),
        .I3(pix_cnt_reg[0]),
        .I4(pix_cnt_reg[1]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h0DD0D0D0E0E0E0E0)) 
    \pix_cnt[3]_i_1 
       (.I0(\pix_cnt_reg[0]_0 [0]),
        .I1(\pix_cnt[3]_i_2_n_0 ),
        .I2(pix_cnt_reg[3]),
        .I3(pix_cnt_reg[2]),
        .I4(pix_cnt_reg[1]),
        .I5(pix_cnt_reg[0]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \pix_cnt[3]_i_2 
       (.I0(\pix_cnt_reg[0]_0 [3]),
        .I1(pix_cnt_reg[3]),
        .I2(\pix_cnt_reg[0]_0 [2]),
        .I3(pix_cnt_reg[2]),
        .I4(pix_cnt_reg[1]),
        .I5(\pix_cnt_reg[0]_0 [1]),
        .O(\pix_cnt[3]_i_2_n_0 ));
  FDCE \pix_cnt_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(p_0_in[0]),
        .Q(pix_cnt_reg[0]));
  FDCE \pix_cnt_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(p_0_in[1]),
        .Q(pix_cnt_reg[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(p_0_in[2]),
        .Q(pix_cnt_reg[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(p_0_in[3]),
        .Q(pix_cnt_reg[3]));
  FDCE prev_href_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(crop_href_o),
        .Q(prev_href));
  FDCE prev_vsync_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(crop_vsync_o),
        .Q(prev_vsync));
endmodule

(* ORIG_REF_NAME = "vip_osd" *) 
module design_1_xil_vip_0_0_vip_osd
   (DOADO,
    DOBDO,
    href_t1,
    href_t3,
    osd_href,
    vsync_t1,
    osd_vsync,
    s00_axi_rdata,
    out_vsync,
    \data_t6_reg[23]_0 ,
    s00_axi_aclk,
    CLK,
    s00_axi_wdata,
    dscale_href_o,
    crop_vsync_o,
    dscale_r_o,
    dscale_g_o,
    dscale_b_o,
    \s00_axi_rdata[24] ,
    \s00_axi_rdata[24]_0 ,
    Q,
    \s00_axi_rdata[25] ,
    \s00_axi_rdata[26] ,
    \s00_axi_rdata[27] ,
    \s00_axi_rdata[28] ,
    \s00_axi_rdata[29] ,
    \s00_axi_rdata[30] ,
    \s00_axi_rdata[31] ,
    \osd_x1_r_reg[11]_0 ,
    \osd_y0_r_reg[10]_0 ,
    \osd_y1_r_reg[10]_0 ,
    s_osd_en,
    s_module_reset,
    rst_n,
    crop_href_o,
    \pix_y_t1_reg[0]_0 ,
    s_dscale_en,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    s00_axi_awvalid,
    s00_axi_wvalid,
    \pix_y_t1_reg[4]_0 ,
    DI,
    \color_bg_r_reg[23]_0 ,
    \color_fg_r_reg[23]_0 ,
    \osd_x0_r_reg[10]_0 ,
    \osd_pix_buf_t5_reg[0]_0 ,
    \osd_pix_buf_t5_reg[0]_1 ,
    \osd_pix_buf_t5_reg[1]_0 ,
    \osd_pix_buf_t5_reg[2]_0 ,
    \osd_pix_buf_t5_reg[3]_0 ,
    \osd_pix_buf_t5_reg[4]_0 ,
    \osd_pix_buf_t5_reg[5]_0 ,
    \osd_pix_buf_t5_reg[6]_0 ,
    \osd_pix_buf_t5_reg[7]_0 ,
    \osd_pix_buf_t5_reg[8]_0 ,
    \osd_pix_buf_t5_reg[9]_0 ,
    \osd_pix_buf_t5_reg[10]_0 ,
    \osd_pix_buf_t5_reg[11]_0 ,
    \osd_pix_buf_t5_reg[12]_0 ,
    \osd_pix_buf_t5_reg[13]_0 ,
    \osd_pix_buf_t5_reg[14]_0 ,
    \osd_pix_buf_t5_reg[15]_0 ,
    \osd_pix_buf_t5_reg[16]_0 ,
    \osd_pix_buf_t5_reg[17]_0 ,
    \osd_pix_buf_t5_reg[18]_0 ,
    \osd_pix_buf_t5_reg[19]_0 ,
    \osd_pix_buf_t5_reg[20]_0 ,
    \osd_pix_buf_t5_reg[21]_0 ,
    \osd_pix_buf_t5_reg[22]_0 ,
    \osd_pix_buf_t5_reg[23]_0 ,
    \osd_pix_buf_t5_reg[24]_0 ,
    \osd_pix_buf_t5_reg[25]_0 ,
    \osd_pix_buf_t5_reg[26]_0 ,
    \osd_pix_buf_t5_reg[27]_0 ,
    \osd_pix_buf_t5_reg[28]_0 ,
    \osd_pix_buf_t5_reg[29]_0 ,
    \osd_pix_buf_t5_reg[30]_0 ,
    \osd_pix_buf_t5_reg[31]_0 );
  output [31:0]DOADO;
  output [31:0]DOBDO;
  output href_t1;
  output href_t3;
  output osd_href;
  output vsync_t1;
  output osd_vsync;
  output [7:0]s00_axi_rdata;
  output out_vsync;
  output [23:0]\data_t6_reg[23]_0 ;
  input s00_axi_aclk;
  input CLK;
  input [31:0]s00_axi_wdata;
  input dscale_href_o;
  input crop_vsync_o;
  input [7:0]dscale_r_o;
  input [7:0]dscale_g_o;
  input [7:0]dscale_b_o;
  input \s00_axi_rdata[24] ;
  input \s00_axi_rdata[24]_0 ;
  input [9:0]Q;
  input \s00_axi_rdata[25] ;
  input \s00_axi_rdata[26] ;
  input \s00_axi_rdata[27] ;
  input \s00_axi_rdata[28] ;
  input \s00_axi_rdata[29] ;
  input \s00_axi_rdata[30] ;
  input \s00_axi_rdata[31] ;
  input [11:0]\osd_x1_r_reg[11]_0 ;
  input [10:0]\osd_y0_r_reg[10]_0 ;
  input [10:0]\osd_y1_r_reg[10]_0 ;
  input s_osd_en;
  input s_module_reset;
  input rst_n;
  input crop_href_o;
  input \pix_y_t1_reg[0]_0 ;
  input s_dscale_en;
  input [9:0]mem_reg;
  input mem_reg_0;
  input mem_reg_1;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input \pix_y_t1_reg[4]_0 ;
  input [0:0]DI;
  input [23:0]\color_bg_r_reg[23]_0 ;
  input [23:0]\color_fg_r_reg[23]_0 ;
  input [11:0]\osd_x0_r_reg[10]_0 ;
  input \osd_pix_buf_t5_reg[0]_0 ;
  input \osd_pix_buf_t5_reg[0]_1 ;
  input \osd_pix_buf_t5_reg[1]_0 ;
  input \osd_pix_buf_t5_reg[2]_0 ;
  input \osd_pix_buf_t5_reg[3]_0 ;
  input \osd_pix_buf_t5_reg[4]_0 ;
  input \osd_pix_buf_t5_reg[5]_0 ;
  input \osd_pix_buf_t5_reg[6]_0 ;
  input \osd_pix_buf_t5_reg[7]_0 ;
  input \osd_pix_buf_t5_reg[8]_0 ;
  input \osd_pix_buf_t5_reg[9]_0 ;
  input \osd_pix_buf_t5_reg[10]_0 ;
  input \osd_pix_buf_t5_reg[11]_0 ;
  input \osd_pix_buf_t5_reg[12]_0 ;
  input \osd_pix_buf_t5_reg[13]_0 ;
  input \osd_pix_buf_t5_reg[14]_0 ;
  input \osd_pix_buf_t5_reg[15]_0 ;
  input \osd_pix_buf_t5_reg[16]_0 ;
  input \osd_pix_buf_t5_reg[17]_0 ;
  input \osd_pix_buf_t5_reg[18]_0 ;
  input \osd_pix_buf_t5_reg[19]_0 ;
  input \osd_pix_buf_t5_reg[20]_0 ;
  input \osd_pix_buf_t5_reg[21]_0 ;
  input \osd_pix_buf_t5_reg[22]_0 ;
  input \osd_pix_buf_t5_reg[23]_0 ;
  input \osd_pix_buf_t5_reg[24]_0 ;
  input \osd_pix_buf_t5_reg[25]_0 ;
  input \osd_pix_buf_t5_reg[26]_0 ;
  input \osd_pix_buf_t5_reg[27]_0 ;
  input \osd_pix_buf_t5_reg[28]_0 ;
  input \osd_pix_buf_t5_reg[29]_0 ;
  input \osd_pix_buf_t5_reg[30]_0 ;
  input \osd_pix_buf_t5_reg[31]_0 ;

  wire CLK;
  wire [0:0]DI;
  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire [9:0]Q;
  wire [23:0]color_bg_r;
  wire [23:0]\color_bg_r_reg[23]_0 ;
  wire [23:0]color_fg_r;
  wire [23:0]\color_fg_r_reg[23]_0 ;
  wire crop_href_o;
  wire crop_vsync_o;
  wire [31:1]data1;
  wire data_t1_reg_c_n_0;
  wire data_t2_reg_c_n_0;
  wire \data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire \data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ;
  wire data_t3_reg_c_n_0;
  wire \data_t4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[10]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[11]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[12]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[13]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[14]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[15]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[16]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[17]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[18]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[19]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[20]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[21]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[22]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[23]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[8]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire \data_t4_reg[9]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ;
  wire data_t4_reg_c_n_0;
  wire data_t4_reg_gate__0_n_0;
  wire data_t4_reg_gate__10_n_0;
  wire data_t4_reg_gate__11_n_0;
  wire data_t4_reg_gate__12_n_0;
  wire data_t4_reg_gate__13_n_0;
  wire data_t4_reg_gate__14_n_0;
  wire data_t4_reg_gate__15_n_0;
  wire data_t4_reg_gate__16_n_0;
  wire data_t4_reg_gate__17_n_0;
  wire data_t4_reg_gate__18_n_0;
  wire data_t4_reg_gate__19_n_0;
  wire data_t4_reg_gate__1_n_0;
  wire data_t4_reg_gate__20_n_0;
  wire data_t4_reg_gate__21_n_0;
  wire data_t4_reg_gate__22_n_0;
  wire data_t4_reg_gate__2_n_0;
  wire data_t4_reg_gate__3_n_0;
  wire data_t4_reg_gate__4_n_0;
  wire data_t4_reg_gate__5_n_0;
  wire data_t4_reg_gate__6_n_0;
  wire data_t4_reg_gate__7_n_0;
  wire data_t4_reg_gate__8_n_0;
  wire data_t4_reg_gate__9_n_0;
  wire data_t4_reg_gate_n_0;
  wire [23:0]data_t5;
  wire \data_t6[0]_i_1_n_0 ;
  wire \data_t6[10]_i_1_n_0 ;
  wire \data_t6[11]_i_1_n_0 ;
  wire \data_t6[12]_i_1_n_0 ;
  wire \data_t6[13]_i_1_n_0 ;
  wire \data_t6[14]_i_1_n_0 ;
  wire \data_t6[15]_i_1_n_0 ;
  wire \data_t6[16]_i_1_n_0 ;
  wire \data_t6[17]_i_1_n_0 ;
  wire \data_t6[18]_i_1_n_0 ;
  wire \data_t6[19]_i_1_n_0 ;
  wire \data_t6[1]_i_1_n_0 ;
  wire \data_t6[20]_i_1_n_0 ;
  wire \data_t6[21]_i_1_n_0 ;
  wire \data_t6[22]_i_1_n_0 ;
  wire \data_t6[23]_i_1_n_0 ;
  wire \data_t6[2]_i_1_n_0 ;
  wire \data_t6[3]_i_1_n_0 ;
  wire \data_t6[4]_i_1_n_0 ;
  wire \data_t6[5]_i_1_n_0 ;
  wire \data_t6[6]_i_1_n_0 ;
  wire \data_t6[7]_i_1_n_0 ;
  wire \data_t6[8]_i_1_n_0 ;
  wire \data_t6[9]_i_1_n_0 ;
  wire [23:0]\data_t6_reg[23]_0 ;
  wire [7:0]dscale_b_o;
  wire [7:0]dscale_g_o;
  wire dscale_href_o;
  wire [7:0]dscale_r_o;
  wire href_t1;
  wire href_t1_i_2_n_0;
  wire href_t2;
  wire href_t3;
  wire href_t4;
  wire href_t5;
  wire href_t6_i_1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [9:0]mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire osd_href;
  wire osd_on_t2;
  wire osd_on_t20;
  wire osd_on_t21;
  wire osd_on_t21_carry__0_i_1_n_0;
  wire osd_on_t21_carry__0_i_2_n_0;
  wire osd_on_t21_carry__0_i_3_n_0;
  wire osd_on_t21_carry__0_i_4_n_0;
  wire osd_on_t21_carry__0_n_3;
  wire osd_on_t21_carry_i_1_n_0;
  wire osd_on_t21_carry_i_2_n_0;
  wire osd_on_t21_carry_i_3_n_0;
  wire osd_on_t21_carry_i_4_n_0;
  wire osd_on_t21_carry_i_5_n_0;
  wire osd_on_t21_carry_i_6_n_0;
  wire osd_on_t21_carry_i_7_n_0;
  wire osd_on_t21_carry_i_8_n_0;
  wire osd_on_t21_carry_n_0;
  wire osd_on_t21_carry_n_1;
  wire osd_on_t21_carry_n_2;
  wire osd_on_t21_carry_n_3;
  wire osd_on_t22;
  wire osd_on_t22_carry__0_i_1_n_0;
  wire osd_on_t22_carry__0_i_2_n_0;
  wire osd_on_t22_carry__0_i_3_n_0;
  wire osd_on_t22_carry__0_i_4_n_0;
  wire osd_on_t22_carry__0_n_3;
  wire osd_on_t22_carry_i_1_n_0;
  wire osd_on_t22_carry_i_2_n_0;
  wire osd_on_t22_carry_i_3_n_0;
  wire osd_on_t22_carry_i_4_n_0;
  wire osd_on_t22_carry_i_5_n_0;
  wire osd_on_t22_carry_i_6_n_0;
  wire osd_on_t22_carry_i_7_n_0;
  wire osd_on_t22_carry_i_8_n_0;
  wire osd_on_t22_carry_n_0;
  wire osd_on_t22_carry_n_1;
  wire osd_on_t22_carry_n_2;
  wire osd_on_t22_carry_n_3;
  wire osd_on_t23;
  wire osd_on_t231_in;
  wire osd_on_t23_carry__0_i_1_n_0;
  wire osd_on_t23_carry__0_i_2_n_0;
  wire osd_on_t23_carry__0_i_3_n_0;
  wire osd_on_t23_carry__0_i_4_n_0;
  wire osd_on_t23_carry__0_n_3;
  wire osd_on_t23_carry_i_1_n_0;
  wire osd_on_t23_carry_i_2_n_0;
  wire osd_on_t23_carry_i_3_n_0;
  wire osd_on_t23_carry_i_4_n_0;
  wire osd_on_t23_carry_i_5_n_0;
  wire osd_on_t23_carry_i_6_n_0;
  wire osd_on_t23_carry_i_7_n_0;
  wire osd_on_t23_carry_i_8_n_0;
  wire osd_on_t23_carry_n_0;
  wire osd_on_t23_carry_n_1;
  wire osd_on_t23_carry_n_2;
  wire osd_on_t23_carry_n_3;
  wire \osd_on_t23_inferred__0/i__carry__0_n_3 ;
  wire \osd_on_t23_inferred__0/i__carry_n_0 ;
  wire \osd_on_t23_inferred__0/i__carry_n_1 ;
  wire \osd_on_t23_inferred__0/i__carry_n_2 ;
  wire \osd_on_t23_inferred__0/i__carry_n_3 ;
  wire osd_on_t3;
  wire osd_on_t4;
  wire osd_on_t5;
  wire osd_pix_buf_t5;
  wire \osd_pix_buf_t5[15]_i_2_n_0 ;
  wire \osd_pix_buf_t5[31]_i_3_n_0 ;
  wire \osd_pix_buf_t5_reg[0]_0 ;
  wire \osd_pix_buf_t5_reg[0]_1 ;
  wire \osd_pix_buf_t5_reg[10]_0 ;
  wire \osd_pix_buf_t5_reg[11]_0 ;
  wire \osd_pix_buf_t5_reg[12]_0 ;
  wire \osd_pix_buf_t5_reg[13]_0 ;
  wire \osd_pix_buf_t5_reg[14]_0 ;
  wire \osd_pix_buf_t5_reg[15]_0 ;
  wire \osd_pix_buf_t5_reg[16]_0 ;
  wire \osd_pix_buf_t5_reg[17]_0 ;
  wire \osd_pix_buf_t5_reg[18]_0 ;
  wire \osd_pix_buf_t5_reg[19]_0 ;
  wire \osd_pix_buf_t5_reg[1]_0 ;
  wire \osd_pix_buf_t5_reg[20]_0 ;
  wire \osd_pix_buf_t5_reg[21]_0 ;
  wire \osd_pix_buf_t5_reg[22]_0 ;
  wire \osd_pix_buf_t5_reg[23]_0 ;
  wire \osd_pix_buf_t5_reg[24]_0 ;
  wire \osd_pix_buf_t5_reg[25]_0 ;
  wire \osd_pix_buf_t5_reg[26]_0 ;
  wire \osd_pix_buf_t5_reg[27]_0 ;
  wire \osd_pix_buf_t5_reg[28]_0 ;
  wire \osd_pix_buf_t5_reg[29]_0 ;
  wire \osd_pix_buf_t5_reg[2]_0 ;
  wire \osd_pix_buf_t5_reg[30]_0 ;
  wire \osd_pix_buf_t5_reg[31]_0 ;
  wire \osd_pix_buf_t5_reg[3]_0 ;
  wire \osd_pix_buf_t5_reg[4]_0 ;
  wire \osd_pix_buf_t5_reg[5]_0 ;
  wire \osd_pix_buf_t5_reg[6]_0 ;
  wire \osd_pix_buf_t5_reg[7]_0 ;
  wire \osd_pix_buf_t5_reg[8]_0 ;
  wire \osd_pix_buf_t5_reg[9]_0 ;
  wire \osd_pix_buf_t5_reg_n_0_[31] ;
  wire [4:0]osd_pix_idx_t3;
  wire \osd_pix_idx_t3[0]_i_1_n_0 ;
  wire \osd_pix_idx_t3[1]_i_1_n_0 ;
  wire \osd_pix_idx_t3[2]_i_1_n_0 ;
  wire \osd_pix_idx_t3[3]_i_1_n_0 ;
  wire \osd_pix_idx_t3[4]_i_1_n_0 ;
  wire \osd_pix_idx_t3[4]_i_2_n_0 ;
  wire \osd_pix_idx_t3[4]_i_3_n_0 ;
  wire [4:0]osd_pix_idx_t4;
  wire \osd_raddr_t3[8]_i_1_n_0 ;
  wire \osd_raddr_t3[8]_i_3_n_0 ;
  wire \osd_raddr_t3[8]_i_4_n_0 ;
  wire [8:0]osd_raddr_t3_reg__0;
  wire osd_ram_n_100;
  wire osd_ram_n_101;
  wire osd_ram_n_102;
  wire osd_ram_n_103;
  wire osd_ram_n_72;
  wire osd_ram_n_73;
  wire osd_ram_n_74;
  wire osd_ram_n_75;
  wire osd_ram_n_76;
  wire osd_ram_n_77;
  wire osd_ram_n_78;
  wire osd_ram_n_79;
  wire osd_ram_n_80;
  wire osd_ram_n_81;
  wire osd_ram_n_82;
  wire osd_ram_n_83;
  wire osd_ram_n_84;
  wire osd_ram_n_85;
  wire osd_ram_n_86;
  wire osd_ram_n_87;
  wire osd_ram_n_88;
  wire osd_ram_n_89;
  wire osd_ram_n_90;
  wire osd_ram_n_91;
  wire osd_ram_n_92;
  wire osd_ram_n_93;
  wire osd_ram_n_94;
  wire osd_ram_n_95;
  wire osd_ram_n_96;
  wire osd_ram_n_97;
  wire osd_ram_n_98;
  wire osd_ram_n_99;
  wire osd_vsync;
  wire [11:0]osd_x0_r;
  wire \osd_x0_r[0]_i_1_n_0 ;
  wire \osd_x0_r[10]_i_1_n_0 ;
  wire \osd_x0_r[11]_i_1_n_0 ;
  wire \osd_x0_r[1]_i_1_n_0 ;
  wire \osd_x0_r[2]_i_1_n_0 ;
  wire \osd_x0_r[3]_i_1_n_0 ;
  wire \osd_x0_r[4]_i_1_n_0 ;
  wire \osd_x0_r[5]_i_1_n_0 ;
  wire \osd_x0_r[6]_i_1_n_0 ;
  wire \osd_x0_r[7]_i_1_n_0 ;
  wire \osd_x0_r[8]_i_1_n_0 ;
  wire \osd_x0_r[9]_i_1_n_0 ;
  wire [11:0]\osd_x0_r_reg[10]_0 ;
  wire [11:0]osd_x1_r;
  wire [12:0]osd_x1_r3;
  wire \osd_x1_r[11]_i_10_n_0 ;
  wire \osd_x1_r[11]_i_11_n_0 ;
  wire \osd_x1_r[11]_i_12_n_0 ;
  wire \osd_x1_r[11]_i_17_n_0 ;
  wire \osd_x1_r[11]_i_18_n_0 ;
  wire \osd_x1_r[11]_i_19_n_0 ;
  wire \osd_x1_r[11]_i_20_n_0 ;
  wire \osd_x1_r[11]_i_21_n_0 ;
  wire \osd_x1_r[11]_i_22_n_0 ;
  wire \osd_x1_r[11]_i_23_n_0 ;
  wire \osd_x1_r[11]_i_24_n_0 ;
  wire \osd_x1_r[11]_i_25_n_0 ;
  wire \osd_x1_r[11]_i_26_n_0 ;
  wire \osd_x1_r[11]_i_27_n_0 ;
  wire \osd_x1_r[11]_i_28_n_0 ;
  wire \osd_x1_r[11]_i_3_n_0 ;
  wire \osd_x1_r[11]_i_4_n_0 ;
  wire \osd_x1_r[11]_i_5_n_0 ;
  wire \osd_x1_r[11]_i_6_n_0 ;
  wire \osd_x1_r[11]_i_7_n_0 ;
  wire \osd_x1_r[11]_i_8_n_0 ;
  wire \osd_x1_r[11]_i_9_n_0 ;
  wire \osd_x1_r[3]_i_2_n_0 ;
  wire \osd_x1_r[3]_i_3_n_0 ;
  wire \osd_x1_r[3]_i_4_n_0 ;
  wire \osd_x1_r[3]_i_5_n_0 ;
  wire \osd_x1_r[3]_i_6_n_0 ;
  wire \osd_x1_r[3]_i_7_n_0 ;
  wire \osd_x1_r[3]_i_8_n_0 ;
  wire \osd_x1_r[3]_i_9_n_0 ;
  wire \osd_x1_r[7]_i_2_n_0 ;
  wire \osd_x1_r[7]_i_3_n_0 ;
  wire \osd_x1_r[7]_i_4_n_0 ;
  wire \osd_x1_r[7]_i_5_n_0 ;
  wire \osd_x1_r[7]_i_6_n_0 ;
  wire \osd_x1_r[7]_i_7_n_0 ;
  wire \osd_x1_r[7]_i_8_n_0 ;
  wire \osd_x1_r[7]_i_9_n_0 ;
  wire [11:0]\osd_x1_r_reg[11]_0 ;
  wire \osd_x1_r_reg[11]_i_14_n_0 ;
  wire \osd_x1_r_reg[11]_i_14_n_1 ;
  wire \osd_x1_r_reg[11]_i_14_n_2 ;
  wire \osd_x1_r_reg[11]_i_14_n_3 ;
  wire \osd_x1_r_reg[11]_i_15_n_0 ;
  wire \osd_x1_r_reg[11]_i_15_n_1 ;
  wire \osd_x1_r_reg[11]_i_15_n_2 ;
  wire \osd_x1_r_reg[11]_i_15_n_3 ;
  wire \osd_x1_r_reg[11]_i_16_n_0 ;
  wire \osd_x1_r_reg[11]_i_16_n_1 ;
  wire \osd_x1_r_reg[11]_i_16_n_2 ;
  wire \osd_x1_r_reg[11]_i_16_n_3 ;
  wire \osd_x1_r_reg[11]_i_2_n_1 ;
  wire \osd_x1_r_reg[11]_i_2_n_2 ;
  wire \osd_x1_r_reg[11]_i_2_n_3 ;
  wire \osd_x1_r_reg[11]_i_2_n_4 ;
  wire \osd_x1_r_reg[11]_i_2_n_5 ;
  wire \osd_x1_r_reg[11]_i_2_n_6 ;
  wire \osd_x1_r_reg[11]_i_2_n_7 ;
  wire \osd_x1_r_reg[3]_i_1_n_0 ;
  wire \osd_x1_r_reg[3]_i_1_n_1 ;
  wire \osd_x1_r_reg[3]_i_1_n_2 ;
  wire \osd_x1_r_reg[3]_i_1_n_3 ;
  wire \osd_x1_r_reg[3]_i_1_n_4 ;
  wire \osd_x1_r_reg[3]_i_1_n_5 ;
  wire \osd_x1_r_reg[3]_i_1_n_6 ;
  wire \osd_x1_r_reg[3]_i_1_n_7 ;
  wire \osd_x1_r_reg[7]_i_1_n_0 ;
  wire \osd_x1_r_reg[7]_i_1_n_1 ;
  wire \osd_x1_r_reg[7]_i_1_n_2 ;
  wire \osd_x1_r_reg[7]_i_1_n_3 ;
  wire \osd_x1_r_reg[7]_i_1_n_4 ;
  wire \osd_x1_r_reg[7]_i_1_n_5 ;
  wire \osd_x1_r_reg[7]_i_1_n_6 ;
  wire \osd_x1_r_reg[7]_i_1_n_7 ;
  wire [10:0]osd_y0_r;
  wire osd_y0_r2__9;
  wire \osd_y0_r[0]_i_1_n_0 ;
  wire \osd_y0_r[10]_i_1_n_0 ;
  wire \osd_y0_r[10]_i_3_n_0 ;
  wire \osd_y0_r[1]_i_1_n_0 ;
  wire \osd_y0_r[2]_i_1_n_0 ;
  wire \osd_y0_r[3]_i_1_n_0 ;
  wire \osd_y0_r[4]_i_1_n_0 ;
  wire \osd_y0_r[5]_i_1_n_0 ;
  wire \osd_y0_r[6]_i_1_n_0 ;
  wire \osd_y0_r[7]_i_1_n_0 ;
  wire \osd_y0_r[8]_i_1_n_0 ;
  wire \osd_y0_r[9]_i_1_n_0 ;
  wire [10:0]\osd_y0_r_reg[10]_0 ;
  wire [10:0]osd_y1_r;
  wire [11:0]osd_y1_r3;
  wire \osd_y1_r[10]_i_11_n_0 ;
  wire \osd_y1_r[10]_i_12_n_0 ;
  wire \osd_y1_r[10]_i_13_n_0 ;
  wire \osd_y1_r[10]_i_14_n_0 ;
  wire \osd_y1_r[10]_i_16_n_0 ;
  wire \osd_y1_r[10]_i_17_n_0 ;
  wire \osd_y1_r[10]_i_18_n_0 ;
  wire \osd_y1_r[10]_i_19_n_0 ;
  wire \osd_y1_r[10]_i_20_n_0 ;
  wire \osd_y1_r[10]_i_21_n_0 ;
  wire \osd_y1_r[10]_i_22_n_0 ;
  wire \osd_y1_r[10]_i_2_n_0 ;
  wire \osd_y1_r[10]_i_3_n_0 ;
  wire \osd_y1_r[10]_i_4_n_0 ;
  wire \osd_y1_r[10]_i_5_n_0 ;
  wire \osd_y1_r[10]_i_6_n_0 ;
  wire \osd_y1_r[10]_i_8_n_0 ;
  wire \osd_y1_r[10]_i_9_n_0 ;
  wire \osd_y1_r[3]_i_2_n_0 ;
  wire \osd_y1_r[3]_i_3_n_0 ;
  wire \osd_y1_r[3]_i_4_n_0 ;
  wire \osd_y1_r[3]_i_5_n_0 ;
  wire \osd_y1_r[3]_i_6_n_0 ;
  wire \osd_y1_r[3]_i_7_n_0 ;
  wire \osd_y1_r[3]_i_8_n_0 ;
  wire \osd_y1_r[3]_i_9_n_0 ;
  wire \osd_y1_r[7]_i_2_n_0 ;
  wire \osd_y1_r[7]_i_3_n_0 ;
  wire \osd_y1_r[7]_i_4_n_0 ;
  wire \osd_y1_r[7]_i_5_n_0 ;
  wire \osd_y1_r[7]_i_6_n_0 ;
  wire \osd_y1_r[7]_i_7_n_0 ;
  wire \osd_y1_r[7]_i_8_n_0 ;
  wire \osd_y1_r[7]_i_9_n_0 ;
  wire [10:0]\osd_y1_r_reg[10]_0 ;
  wire \osd_y1_r_reg[10]_i_10_n_2 ;
  wire \osd_y1_r_reg[10]_i_10_n_3 ;
  wire \osd_y1_r_reg[10]_i_15_n_0 ;
  wire \osd_y1_r_reg[10]_i_15_n_1 ;
  wire \osd_y1_r_reg[10]_i_15_n_2 ;
  wire \osd_y1_r_reg[10]_i_15_n_3 ;
  wire \osd_y1_r_reg[10]_i_1_n_2 ;
  wire \osd_y1_r_reg[10]_i_1_n_3 ;
  wire \osd_y1_r_reg[10]_i_1_n_5 ;
  wire \osd_y1_r_reg[10]_i_1_n_6 ;
  wire \osd_y1_r_reg[10]_i_1_n_7 ;
  wire \osd_y1_r_reg[10]_i_7_n_0 ;
  wire \osd_y1_r_reg[10]_i_7_n_1 ;
  wire \osd_y1_r_reg[10]_i_7_n_2 ;
  wire \osd_y1_r_reg[10]_i_7_n_3 ;
  wire \osd_y1_r_reg[3]_i_1_n_0 ;
  wire \osd_y1_r_reg[3]_i_1_n_1 ;
  wire \osd_y1_r_reg[3]_i_1_n_2 ;
  wire \osd_y1_r_reg[3]_i_1_n_3 ;
  wire \osd_y1_r_reg[3]_i_1_n_4 ;
  wire \osd_y1_r_reg[3]_i_1_n_5 ;
  wire \osd_y1_r_reg[3]_i_1_n_6 ;
  wire \osd_y1_r_reg[3]_i_1_n_7 ;
  wire \osd_y1_r_reg[7]_i_1_n_0 ;
  wire \osd_y1_r_reg[7]_i_1_n_1 ;
  wire \osd_y1_r_reg[7]_i_1_n_2 ;
  wire \osd_y1_r_reg[7]_i_1_n_3 ;
  wire \osd_y1_r_reg[7]_i_1_n_4 ;
  wire \osd_y1_r_reg[7]_i_1_n_5 ;
  wire \osd_y1_r_reg[7]_i_1_n_6 ;
  wire \osd_y1_r_reg[7]_i_1_n_7 ;
  wire out_vsync;
  wire [10:0]p_0_in__0;
  wire [8:0]p_0_in__1;
  wire \pix_x_t1[0]_i_3_n_0 ;
  wire \pix_x_t1[0]_i_4_n_0 ;
  wire \pix_x_t1[0]_i_5_n_0 ;
  wire \pix_x_t1[0]_i_6_n_0 ;
  wire \pix_x_t1[4]_i_2_n_0 ;
  wire \pix_x_t1[4]_i_3_n_0 ;
  wire \pix_x_t1[4]_i_4_n_0 ;
  wire \pix_x_t1[4]_i_5_n_0 ;
  wire \pix_x_t1[8]_i_2_n_0 ;
  wire \pix_x_t1[8]_i_3_n_0 ;
  wire \pix_x_t1[8]_i_4_n_0 ;
  wire \pix_x_t1[8]_i_5_n_0 ;
  wire [11:0]pix_x_t1_reg;
  wire \pix_x_t1_reg[0]_i_1_n_0 ;
  wire \pix_x_t1_reg[0]_i_1_n_1 ;
  wire \pix_x_t1_reg[0]_i_1_n_2 ;
  wire \pix_x_t1_reg[0]_i_1_n_3 ;
  wire \pix_x_t1_reg[0]_i_1_n_4 ;
  wire \pix_x_t1_reg[0]_i_1_n_5 ;
  wire \pix_x_t1_reg[0]_i_1_n_6 ;
  wire \pix_x_t1_reg[0]_i_1_n_7 ;
  wire \pix_x_t1_reg[4]_i_1_n_0 ;
  wire \pix_x_t1_reg[4]_i_1_n_1 ;
  wire \pix_x_t1_reg[4]_i_1_n_2 ;
  wire \pix_x_t1_reg[4]_i_1_n_3 ;
  wire \pix_x_t1_reg[4]_i_1_n_4 ;
  wire \pix_x_t1_reg[4]_i_1_n_5 ;
  wire \pix_x_t1_reg[4]_i_1_n_6 ;
  wire \pix_x_t1_reg[4]_i_1_n_7 ;
  wire \pix_x_t1_reg[8]_i_1_n_1 ;
  wire \pix_x_t1_reg[8]_i_1_n_2 ;
  wire \pix_x_t1_reg[8]_i_1_n_3 ;
  wire \pix_x_t1_reg[8]_i_1_n_4 ;
  wire \pix_x_t1_reg[8]_i_1_n_5 ;
  wire \pix_x_t1_reg[8]_i_1_n_6 ;
  wire \pix_x_t1_reg[8]_i_1_n_7 ;
  wire pix_y_t112_out;
  wire \pix_y_t1[10]_i_1_n_0 ;
  wire \pix_y_t1[10]_i_4_n_0 ;
  wire \pix_y_t1[10]_i_5_n_0 ;
  wire \pix_y_t1[5]_i_2_n_0 ;
  wire \pix_y_t1_reg[0]_0 ;
  wire \pix_y_t1_reg[4]_0 ;
  wire [10:0]pix_y_t1_reg__0;
  wire rst_n;
  wire s00_axi_aclk;
  wire s00_axi_awvalid;
  wire [7:0]s00_axi_rdata;
  wire \s00_axi_rdata[24] ;
  wire \s00_axi_rdata[24]_0 ;
  wire \s00_axi_rdata[25] ;
  wire \s00_axi_rdata[26] ;
  wire \s00_axi_rdata[27] ;
  wire \s00_axi_rdata[28] ;
  wire \s00_axi_rdata[29] ;
  wire \s00_axi_rdata[30] ;
  wire \s00_axi_rdata[31] ;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire s_dscale_en;
  wire s_module_reset;
  wire s_osd_en;
  wire vsync_t1;
  wire vsync_t2;
  wire vsync_t3;
  wire vsync_t4;
  wire vsync_t5;
  wire [3:0]NLW_osd_on_t21_carry_O_UNCONNECTED;
  wire [3:2]NLW_osd_on_t21_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_osd_on_t21_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_osd_on_t22_carry_O_UNCONNECTED;
  wire [3:2]NLW_osd_on_t22_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_osd_on_t22_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_osd_on_t23_carry_O_UNCONNECTED;
  wire [3:2]NLW_osd_on_t23_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_osd_on_t23_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_osd_on_t23_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_osd_on_t23_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_osd_on_t23_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_osd_x1_r_reg[11]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_osd_x1_r_reg[11]_i_13_O_UNCONNECTED ;
  wire [3:3]\NLW_osd_x1_r_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_osd_y1_r_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_osd_y1_r_reg[10]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_osd_y1_r_reg[10]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_osd_y1_r_reg[10]_i_10_O_UNCONNECTED ;
  wire [3:3]\NLW_pix_x_t1_reg[8]_i_1_CO_UNCONNECTED ;

  FDCE \color_bg_r_reg[0] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [0]),
        .Q(color_bg_r[0]));
  FDCE \color_bg_r_reg[10] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [10]),
        .Q(color_bg_r[10]));
  FDCE \color_bg_r_reg[11] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [11]),
        .Q(color_bg_r[11]));
  FDCE \color_bg_r_reg[12] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [12]),
        .Q(color_bg_r[12]));
  FDCE \color_bg_r_reg[13] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [13]),
        .Q(color_bg_r[13]));
  FDCE \color_bg_r_reg[14] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [14]),
        .Q(color_bg_r[14]));
  FDCE \color_bg_r_reg[15] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [15]),
        .Q(color_bg_r[15]));
  FDCE \color_bg_r_reg[16] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [16]),
        .Q(color_bg_r[16]));
  FDCE \color_bg_r_reg[17] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [17]),
        .Q(color_bg_r[17]));
  FDCE \color_bg_r_reg[18] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [18]),
        .Q(color_bg_r[18]));
  FDCE \color_bg_r_reg[19] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [19]),
        .Q(color_bg_r[19]));
  FDCE \color_bg_r_reg[1] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [1]),
        .Q(color_bg_r[1]));
  FDCE \color_bg_r_reg[20] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [20]),
        .Q(color_bg_r[20]));
  FDCE \color_bg_r_reg[21] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [21]),
        .Q(color_bg_r[21]));
  FDCE \color_bg_r_reg[22] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [22]),
        .Q(color_bg_r[22]));
  FDCE \color_bg_r_reg[23] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [23]),
        .Q(color_bg_r[23]));
  FDCE \color_bg_r_reg[2] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [2]),
        .Q(color_bg_r[2]));
  FDCE \color_bg_r_reg[3] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [3]),
        .Q(color_bg_r[3]));
  FDCE \color_bg_r_reg[4] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [4]),
        .Q(color_bg_r[4]));
  FDCE \color_bg_r_reg[5] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [5]),
        .Q(color_bg_r[5]));
  FDCE \color_bg_r_reg[6] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [6]),
        .Q(color_bg_r[6]));
  FDCE \color_bg_r_reg[7] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [7]),
        .Q(color_bg_r[7]));
  FDCE \color_bg_r_reg[8] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [8]),
        .Q(color_bg_r[8]));
  FDCE \color_bg_r_reg[9] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_bg_r_reg[23]_0 [9]),
        .Q(color_bg_r[9]));
  FDCE \color_fg_r_reg[0] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [0]),
        .Q(color_fg_r[0]));
  FDCE \color_fg_r_reg[10] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [10]),
        .Q(color_fg_r[10]));
  FDCE \color_fg_r_reg[11] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [11]),
        .Q(color_fg_r[11]));
  FDCE \color_fg_r_reg[12] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [12]),
        .Q(color_fg_r[12]));
  FDCE \color_fg_r_reg[13] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [13]),
        .Q(color_fg_r[13]));
  FDCE \color_fg_r_reg[14] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [14]),
        .Q(color_fg_r[14]));
  FDCE \color_fg_r_reg[15] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [15]),
        .Q(color_fg_r[15]));
  FDCE \color_fg_r_reg[16] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [16]),
        .Q(color_fg_r[16]));
  FDCE \color_fg_r_reg[17] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [17]),
        .Q(color_fg_r[17]));
  FDCE \color_fg_r_reg[18] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [18]),
        .Q(color_fg_r[18]));
  FDCE \color_fg_r_reg[19] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [19]),
        .Q(color_fg_r[19]));
  FDCE \color_fg_r_reg[1] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [1]),
        .Q(color_fg_r[1]));
  FDCE \color_fg_r_reg[20] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [20]),
        .Q(color_fg_r[20]));
  FDCE \color_fg_r_reg[21] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [21]),
        .Q(color_fg_r[21]));
  FDCE \color_fg_r_reg[22] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [22]),
        .Q(color_fg_r[22]));
  FDCE \color_fg_r_reg[23] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [23]),
        .Q(color_fg_r[23]));
  FDCE \color_fg_r_reg[2] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [2]),
        .Q(color_fg_r[2]));
  FDCE \color_fg_r_reg[3] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [3]),
        .Q(color_fg_r[3]));
  FDCE \color_fg_r_reg[4] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [4]),
        .Q(color_fg_r[4]));
  FDCE \color_fg_r_reg[5] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [5]),
        .Q(color_fg_r[5]));
  FDCE \color_fg_r_reg[6] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [6]),
        .Q(color_fg_r[6]));
  FDCE \color_fg_r_reg[7] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [7]),
        .Q(color_fg_r[7]));
  FDCE \color_fg_r_reg[8] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [8]),
        .Q(color_fg_r[8]));
  FDCE \color_fg_r_reg[9] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t6_i_1_n_0),
        .D(\color_fg_r_reg[23]_0 [9]),
        .Q(color_fg_r[9]));
  FDCE data_t1_reg_c
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(1'b1),
        .Q(data_t1_reg_c_n_0));
  FDCE data_t2_reg_c
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(data_t1_reg_c_n_0),
        .Q(data_t2_reg_c_n_0));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_b_o[0]),
        .Q(\data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_g_o[2]),
        .Q(\data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_g_o[3]),
        .Q(\data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_g_o[4]),
        .Q(\data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_g_o[5]),
        .Q(\data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_g_o[6]),
        .Q(\data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_g_o[7]),
        .Q(\data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_r_o[0]),
        .Q(\data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_r_o[1]),
        .Q(\data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_r_o[2]),
        .Q(\data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_r_o[3]),
        .Q(\data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_b_o[1]),
        .Q(\data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_r_o[4]),
        .Q(\data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_r_o[5]),
        .Q(\data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_r_o[6]),
        .Q(\data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_r_o[7]),
        .Q(\data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_b_o[2]),
        .Q(\data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_b_o[3]),
        .Q(\data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_b_o[4]),
        .Q(\data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_b_o[5]),
        .Q(\data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_b_o[6]),
        .Q(\data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_b_o[7]),
        .Q(\data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_g_o[0]),
        .Q(\data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c " *) 
  SRL16E \data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(dscale_g_o[1]),
        .Q(\data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ));
  FDCE data_t3_reg_c
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(data_t2_reg_c_n_0),
        .Q(data_t3_reg_c_n_0));
  FDRE \data_t4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[10]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[10]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[11]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[11]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[12]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[12]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[13]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[13]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[14]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[14]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[15]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[15]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[16]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[16]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[17]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[17]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[18]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[18]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[19]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[19]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[20]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[20]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[21]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[21]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[22]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[22]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[23]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[23]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[8]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[8]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \data_t4_reg[9]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0 ),
        .Q(\data_t4_reg[9]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .R(1'b0));
  FDCE data_t4_reg_c
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(data_t3_reg_c_n_0),
        .Q(data_t4_reg_c_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate
       (.I0(\data_t4_reg[23]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__0
       (.I0(\data_t4_reg[22]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__1
       (.I0(\data_t4_reg[21]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__10
       (.I0(\data_t4_reg[12]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__11
       (.I0(\data_t4_reg[11]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__12
       (.I0(\data_t4_reg[10]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__13
       (.I0(\data_t4_reg[9]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__14
       (.I0(\data_t4_reg[8]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__15
       (.I0(\data_t4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__16
       (.I0(\data_t4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__17
       (.I0(\data_t4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__18
       (.I0(\data_t4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__19
       (.I0(\data_t4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__2
       (.I0(\data_t4_reg[20]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__20
       (.I0(\data_t4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__21
       (.I0(\data_t4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__22
       (.I0(\data_t4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__3
       (.I0(\data_t4_reg[19]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__4
       (.I0(\data_t4_reg[18]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__5
       (.I0(\data_t4_reg[17]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__6
       (.I0(\data_t4_reg[16]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__7
       (.I0(\data_t4_reg[15]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__8
       (.I0(\data_t4_reg[14]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_t4_reg_gate__9
       (.I0(\data_t4_reg[13]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0 ),
        .I1(data_t4_reg_c_n_0),
        .O(data_t4_reg_gate__9_n_0));
  FDCE \data_t5_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__22_n_0),
        .Q(data_t5[0]));
  FDCE \data_t5_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__12_n_0),
        .Q(data_t5[10]));
  FDCE \data_t5_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__11_n_0),
        .Q(data_t5[11]));
  FDCE \data_t5_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__10_n_0),
        .Q(data_t5[12]));
  FDCE \data_t5_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__9_n_0),
        .Q(data_t5[13]));
  FDCE \data_t5_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__8_n_0),
        .Q(data_t5[14]));
  FDCE \data_t5_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__7_n_0),
        .Q(data_t5[15]));
  FDCE \data_t5_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__6_n_0),
        .Q(data_t5[16]));
  FDCE \data_t5_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__5_n_0),
        .Q(data_t5[17]));
  FDCE \data_t5_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__4_n_0),
        .Q(data_t5[18]));
  FDCE \data_t5_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__3_n_0),
        .Q(data_t5[19]));
  FDCE \data_t5_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__21_n_0),
        .Q(data_t5[1]));
  FDCE \data_t5_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__2_n_0),
        .Q(data_t5[20]));
  FDCE \data_t5_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__1_n_0),
        .Q(data_t5[21]));
  FDCE \data_t5_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__0_n_0),
        .Q(data_t5[22]));
  FDCE \data_t5_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate_n_0),
        .Q(data_t5[23]));
  FDCE \data_t5_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__20_n_0),
        .Q(data_t5[2]));
  FDCE \data_t5_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__19_n_0),
        .Q(data_t5[3]));
  FDCE \data_t5_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__18_n_0),
        .Q(data_t5[4]));
  FDCE \data_t5_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__17_n_0),
        .Q(data_t5[5]));
  FDCE \data_t5_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__16_n_0),
        .Q(data_t5[6]));
  FDCE \data_t5_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__15_n_0),
        .Q(data_t5[7]));
  FDCE \data_t5_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__14_n_0),
        .Q(data_t5[8]));
  FDCE \data_t5_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(data_t4_reg_gate__13_n_0),
        .Q(data_t5[9]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[0]_i_1 
       (.I0(href_t5),
        .I1(data_t5[0]),
        .I2(osd_on_t5),
        .I3(color_bg_r[0]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[0]),
        .O(\data_t6[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[10]_i_1 
       (.I0(href_t5),
        .I1(data_t5[10]),
        .I2(osd_on_t5),
        .I3(color_bg_r[10]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[10]),
        .O(\data_t6[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[11]_i_1 
       (.I0(href_t5),
        .I1(data_t5[11]),
        .I2(osd_on_t5),
        .I3(color_bg_r[11]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[11]),
        .O(\data_t6[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[12]_i_1 
       (.I0(href_t5),
        .I1(data_t5[12]),
        .I2(osd_on_t5),
        .I3(color_bg_r[12]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[12]),
        .O(\data_t6[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[13]_i_1 
       (.I0(href_t5),
        .I1(data_t5[13]),
        .I2(osd_on_t5),
        .I3(color_bg_r[13]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[13]),
        .O(\data_t6[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[14]_i_1 
       (.I0(href_t5),
        .I1(data_t5[14]),
        .I2(osd_on_t5),
        .I3(color_bg_r[14]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[14]),
        .O(\data_t6[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[15]_i_1 
       (.I0(href_t5),
        .I1(data_t5[15]),
        .I2(osd_on_t5),
        .I3(color_bg_r[15]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[15]),
        .O(\data_t6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[16]_i_1 
       (.I0(href_t5),
        .I1(data_t5[16]),
        .I2(osd_on_t5),
        .I3(color_bg_r[16]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[16]),
        .O(\data_t6[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[17]_i_1 
       (.I0(href_t5),
        .I1(data_t5[17]),
        .I2(osd_on_t5),
        .I3(color_bg_r[17]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[17]),
        .O(\data_t6[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[18]_i_1 
       (.I0(href_t5),
        .I1(data_t5[18]),
        .I2(osd_on_t5),
        .I3(color_bg_r[18]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[18]),
        .O(\data_t6[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[19]_i_1 
       (.I0(href_t5),
        .I1(data_t5[19]),
        .I2(osd_on_t5),
        .I3(color_bg_r[19]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[19]),
        .O(\data_t6[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[1]_i_1 
       (.I0(href_t5),
        .I1(data_t5[1]),
        .I2(osd_on_t5),
        .I3(color_bg_r[1]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[1]),
        .O(\data_t6[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[20]_i_1 
       (.I0(href_t5),
        .I1(data_t5[20]),
        .I2(osd_on_t5),
        .I3(color_bg_r[20]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[20]),
        .O(\data_t6[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[21]_i_1 
       (.I0(href_t5),
        .I1(data_t5[21]),
        .I2(osd_on_t5),
        .I3(color_bg_r[21]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[21]),
        .O(\data_t6[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[22]_i_1 
       (.I0(href_t5),
        .I1(data_t5[22]),
        .I2(osd_on_t5),
        .I3(color_bg_r[22]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[22]),
        .O(\data_t6[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[23]_i_1 
       (.I0(href_t5),
        .I1(data_t5[23]),
        .I2(osd_on_t5),
        .I3(color_bg_r[23]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[23]),
        .O(\data_t6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[2]_i_1 
       (.I0(href_t5),
        .I1(data_t5[2]),
        .I2(osd_on_t5),
        .I3(color_bg_r[2]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[2]),
        .O(\data_t6[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[3]_i_1 
       (.I0(href_t5),
        .I1(data_t5[3]),
        .I2(osd_on_t5),
        .I3(color_bg_r[3]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[3]),
        .O(\data_t6[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[4]_i_1 
       (.I0(href_t5),
        .I1(data_t5[4]),
        .I2(osd_on_t5),
        .I3(color_bg_r[4]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[4]),
        .O(\data_t6[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[5]_i_1 
       (.I0(href_t5),
        .I1(data_t5[5]),
        .I2(osd_on_t5),
        .I3(color_bg_r[5]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[5]),
        .O(\data_t6[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[6]_i_1 
       (.I0(href_t5),
        .I1(data_t5[6]),
        .I2(osd_on_t5),
        .I3(color_bg_r[6]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[6]),
        .O(\data_t6[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[7]_i_1 
       (.I0(href_t5),
        .I1(data_t5[7]),
        .I2(osd_on_t5),
        .I3(color_bg_r[7]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[7]),
        .O(\data_t6[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[8]_i_1 
       (.I0(href_t5),
        .I1(data_t5[8]),
        .I2(osd_on_t5),
        .I3(color_bg_r[8]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[8]),
        .O(\data_t6[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_t6[9]_i_1 
       (.I0(href_t5),
        .I1(data_t5[9]),
        .I2(osd_on_t5),
        .I3(color_bg_r[9]),
        .I4(\osd_pix_buf_t5_reg_n_0_[31] ),
        .I5(color_fg_r[9]),
        .O(\data_t6[9]_i_1_n_0 ));
  FDCE \data_t6_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[0]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [0]));
  FDCE \data_t6_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[10]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [10]));
  FDCE \data_t6_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[11]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [11]));
  FDCE \data_t6_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[12]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [12]));
  FDCE \data_t6_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[13]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [13]));
  FDCE \data_t6_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[14]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [14]));
  FDCE \data_t6_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[15]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [15]));
  FDCE \data_t6_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[16]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [16]));
  FDCE \data_t6_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[17]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [17]));
  FDCE \data_t6_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[18]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [18]));
  FDCE \data_t6_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[19]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [19]));
  FDCE \data_t6_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[1]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [1]));
  FDCE \data_t6_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[20]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [20]));
  FDCE \data_t6_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[21]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [21]));
  FDCE \data_t6_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[22]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [22]));
  FDCE \data_t6_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[23]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [23]));
  FDCE \data_t6_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[2]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [2]));
  FDCE \data_t6_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[3]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [3]));
  FDCE \data_t6_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[4]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [4]));
  FDCE \data_t6_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[5]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [5]));
  FDCE \data_t6_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[6]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [6]));
  FDCE \data_t6_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[7]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [7]));
  FDCE \data_t6_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[8]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [8]));
  FDCE \data_t6_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(\data_t6[9]_i_1_n_0 ),
        .Q(\data_t6_reg[23]_0 [9]));
  LUT3 #(
    .INIT(8'hDF)) 
    href_t1_i_2
       (.I0(s_osd_en),
        .I1(s_module_reset),
        .I2(rst_n),
        .O(href_t1_i_2_n_0));
  FDCE href_t1_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(dscale_href_o),
        .Q(href_t1));
  FDCE href_t2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(href_t1),
        .Q(href_t2));
  FDCE href_t3_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(href_t2),
        .Q(href_t3));
  FDCE href_t4_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(href_t3),
        .Q(href_t4));
  FDCE href_t5_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(href_t4),
        .Q(href_t5));
  LUT3 #(
    .INIT(8'hDF)) 
    href_t6_i_1
       (.I0(s_osd_en),
        .I1(s_module_reset),
        .I2(rst_n),
        .O(href_t6_i_1_n_0));
  FDCE href_t6_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(href_t5),
        .Q(osd_href));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1
       (.I0(pix_x_t1_reg[11]),
        .I1(osd_x0_r[11]),
        .I2(pix_x_t1_reg[10]),
        .I3(osd_x0_r[10]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(pix_x_t1_reg[9]),
        .I1(osd_x0_r[9]),
        .I2(pix_x_t1_reg[8]),
        .I3(osd_x0_r[8]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_3
       (.I0(osd_x0_r[11]),
        .I1(pix_x_t1_reg[11]),
        .I2(osd_x0_r[10]),
        .I3(pix_x_t1_reg[10]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_4
       (.I0(osd_x0_r[9]),
        .I1(pix_x_t1_reg[9]),
        .I2(osd_x0_r[8]),
        .I3(pix_x_t1_reg[8]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(pix_x_t1_reg[7]),
        .I1(osd_x0_r[7]),
        .I2(pix_x_t1_reg[6]),
        .I3(osd_x0_r[6]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(pix_x_t1_reg[5]),
        .I1(osd_x0_r[5]),
        .I2(pix_x_t1_reg[4]),
        .I3(osd_x0_r[4]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(pix_x_t1_reg[3]),
        .I1(osd_x0_r[3]),
        .I2(pix_x_t1_reg[2]),
        .I3(osd_x0_r[2]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(pix_x_t1_reg[1]),
        .I1(osd_x0_r[1]),
        .I2(pix_x_t1_reg[0]),
        .I3(osd_x0_r[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(osd_x0_r[7]),
        .I1(pix_x_t1_reg[7]),
        .I2(osd_x0_r[6]),
        .I3(pix_x_t1_reg[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(osd_x0_r[5]),
        .I1(pix_x_t1_reg[5]),
        .I2(osd_x0_r[4]),
        .I3(pix_x_t1_reg[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(osd_x0_r[3]),
        .I1(pix_x_t1_reg[3]),
        .I2(osd_x0_r[2]),
        .I3(pix_x_t1_reg[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(osd_x0_r[1]),
        .I1(pix_x_t1_reg[1]),
        .I2(osd_x0_r[0]),
        .I3(pix_x_t1_reg[0]),
        .O(i__carry_i_8_n_0));
  CARRY4 osd_on_t21_carry
       (.CI(1'b0),
        .CO({osd_on_t21_carry_n_0,osd_on_t21_carry_n_1,osd_on_t21_carry_n_2,osd_on_t21_carry_n_3}),
        .CYINIT(1'b0),
        .DI({osd_on_t21_carry_i_1_n_0,osd_on_t21_carry_i_2_n_0,osd_on_t21_carry_i_3_n_0,osd_on_t21_carry_i_4_n_0}),
        .O(NLW_osd_on_t21_carry_O_UNCONNECTED[3:0]),
        .S({osd_on_t21_carry_i_5_n_0,osd_on_t21_carry_i_6_n_0,osd_on_t21_carry_i_7_n_0,osd_on_t21_carry_i_8_n_0}));
  CARRY4 osd_on_t21_carry__0
       (.CI(osd_on_t21_carry_n_0),
        .CO({NLW_osd_on_t21_carry__0_CO_UNCONNECTED[3:2],osd_on_t21,osd_on_t21_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,osd_on_t21_carry__0_i_1_n_0,osd_on_t21_carry__0_i_2_n_0}),
        .O(NLW_osd_on_t21_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,osd_on_t21_carry__0_i_3_n_0,osd_on_t21_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    osd_on_t21_carry__0_i_1
       (.I0(osd_y1_r[10]),
        .I1(pix_y_t1_reg__0[10]),
        .O(osd_on_t21_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t21_carry__0_i_2
       (.I0(osd_y1_r[9]),
        .I1(pix_y_t1_reg__0[9]),
        .I2(osd_y1_r[8]),
        .I3(pix_y_t1_reg__0[8]),
        .O(osd_on_t21_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    osd_on_t21_carry__0_i_3
       (.I0(pix_y_t1_reg__0[10]),
        .I1(osd_y1_r[10]),
        .O(osd_on_t21_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t21_carry__0_i_4
       (.I0(osd_y1_r[9]),
        .I1(pix_y_t1_reg__0[9]),
        .I2(osd_y1_r[8]),
        .I3(pix_y_t1_reg__0[8]),
        .O(osd_on_t21_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t21_carry_i_1
       (.I0(osd_y1_r[7]),
        .I1(pix_y_t1_reg__0[7]),
        .I2(osd_y1_r[6]),
        .I3(pix_y_t1_reg__0[6]),
        .O(osd_on_t21_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t21_carry_i_2
       (.I0(osd_y1_r[5]),
        .I1(pix_y_t1_reg__0[5]),
        .I2(osd_y1_r[4]),
        .I3(pix_y_t1_reg__0[4]),
        .O(osd_on_t21_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t21_carry_i_3
       (.I0(osd_y1_r[3]),
        .I1(pix_y_t1_reg__0[3]),
        .I2(osd_y1_r[2]),
        .I3(pix_y_t1_reg__0[2]),
        .O(osd_on_t21_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t21_carry_i_4
       (.I0(osd_y1_r[1]),
        .I1(pix_y_t1_reg__0[1]),
        .I2(osd_y1_r[0]),
        .I3(pix_y_t1_reg__0[0]),
        .O(osd_on_t21_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t21_carry_i_5
       (.I0(osd_y1_r[7]),
        .I1(pix_y_t1_reg__0[7]),
        .I2(osd_y1_r[6]),
        .I3(pix_y_t1_reg__0[6]),
        .O(osd_on_t21_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t21_carry_i_6
       (.I0(osd_y1_r[5]),
        .I1(pix_y_t1_reg__0[5]),
        .I2(osd_y1_r[4]),
        .I3(pix_y_t1_reg__0[4]),
        .O(osd_on_t21_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    osd_on_t21_carry_i_7
       (.I0(pix_y_t1_reg__0[2]),
        .I1(pix_y_t1_reg__0[3]),
        .I2(osd_y1_r[2]),
        .I3(osd_y1_r[3]),
        .O(osd_on_t21_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    osd_on_t21_carry_i_8
       (.I0(pix_y_t1_reg__0[0]),
        .I1(pix_y_t1_reg__0[1]),
        .I2(osd_y1_r[0]),
        .I3(osd_y1_r[1]),
        .O(osd_on_t21_carry_i_8_n_0));
  CARRY4 osd_on_t22_carry
       (.CI(1'b0),
        .CO({osd_on_t22_carry_n_0,osd_on_t22_carry_n_1,osd_on_t22_carry_n_2,osd_on_t22_carry_n_3}),
        .CYINIT(1'b1),
        .DI({osd_on_t22_carry_i_1_n_0,osd_on_t22_carry_i_2_n_0,osd_on_t22_carry_i_3_n_0,osd_on_t22_carry_i_4_n_0}),
        .O(NLW_osd_on_t22_carry_O_UNCONNECTED[3:0]),
        .S({osd_on_t22_carry_i_5_n_0,osd_on_t22_carry_i_6_n_0,osd_on_t22_carry_i_7_n_0,osd_on_t22_carry_i_8_n_0}));
  CARRY4 osd_on_t22_carry__0
       (.CI(osd_on_t22_carry_n_0),
        .CO({NLW_osd_on_t22_carry__0_CO_UNCONNECTED[3:2],osd_on_t22,osd_on_t22_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,osd_on_t22_carry__0_i_1_n_0,osd_on_t22_carry__0_i_2_n_0}),
        .O(NLW_osd_on_t22_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,osd_on_t22_carry__0_i_3_n_0,osd_on_t22_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    osd_on_t22_carry__0_i_1
       (.I0(pix_y_t1_reg__0[10]),
        .I1(osd_y0_r[10]),
        .O(osd_on_t22_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t22_carry__0_i_2
       (.I0(pix_y_t1_reg__0[9]),
        .I1(osd_y0_r[9]),
        .I2(pix_y_t1_reg__0[8]),
        .I3(osd_y0_r[8]),
        .O(osd_on_t22_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    osd_on_t22_carry__0_i_3
       (.I0(osd_y0_r[10]),
        .I1(pix_y_t1_reg__0[10]),
        .O(osd_on_t22_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t22_carry__0_i_4
       (.I0(osd_y0_r[9]),
        .I1(pix_y_t1_reg__0[9]),
        .I2(osd_y0_r[8]),
        .I3(pix_y_t1_reg__0[8]),
        .O(osd_on_t22_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    osd_on_t22_carry_i_1
       (.I0(pix_y_t1_reg__0[7]),
        .I1(osd_y0_r[6]),
        .I2(pix_y_t1_reg__0[6]),
        .I3(osd_y0_r[7]),
        .O(osd_on_t22_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    osd_on_t22_carry_i_2
       (.I0(pix_y_t1_reg__0[5]),
        .I1(osd_y0_r[4]),
        .I2(pix_y_t1_reg__0[4]),
        .I3(osd_y0_r[5]),
        .O(osd_on_t22_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    osd_on_t22_carry_i_3
       (.I0(pix_y_t1_reg__0[3]),
        .I1(osd_y0_r[2]),
        .I2(pix_y_t1_reg__0[2]),
        .I3(osd_y0_r[3]),
        .O(osd_on_t22_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    osd_on_t22_carry_i_4
       (.I0(pix_y_t1_reg__0[1]),
        .I1(osd_y0_r[0]),
        .I2(pix_y_t1_reg__0[0]),
        .I3(osd_y0_r[1]),
        .O(osd_on_t22_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t22_carry_i_5
       (.I0(osd_y0_r[7]),
        .I1(pix_y_t1_reg__0[7]),
        .I2(osd_y0_r[6]),
        .I3(pix_y_t1_reg__0[6]),
        .O(osd_on_t22_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t22_carry_i_6
       (.I0(osd_y0_r[5]),
        .I1(pix_y_t1_reg__0[5]),
        .I2(osd_y0_r[4]),
        .I3(pix_y_t1_reg__0[4]),
        .O(osd_on_t22_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    osd_on_t22_carry_i_7
       (.I0(pix_y_t1_reg__0[2]),
        .I1(pix_y_t1_reg__0[3]),
        .I2(osd_y0_r[2]),
        .I3(osd_y0_r[3]),
        .O(osd_on_t22_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    osd_on_t22_carry_i_8
       (.I0(pix_y_t1_reg__0[0]),
        .I1(pix_y_t1_reg__0[1]),
        .I2(osd_y0_r[0]),
        .I3(osd_y0_r[1]),
        .O(osd_on_t22_carry_i_8_n_0));
  CARRY4 osd_on_t23_carry
       (.CI(1'b0),
        .CO({osd_on_t23_carry_n_0,osd_on_t23_carry_n_1,osd_on_t23_carry_n_2,osd_on_t23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({osd_on_t23_carry_i_1_n_0,osd_on_t23_carry_i_2_n_0,osd_on_t23_carry_i_3_n_0,osd_on_t23_carry_i_4_n_0}),
        .O(NLW_osd_on_t23_carry_O_UNCONNECTED[3:0]),
        .S({osd_on_t23_carry_i_5_n_0,osd_on_t23_carry_i_6_n_0,osd_on_t23_carry_i_7_n_0,osd_on_t23_carry_i_8_n_0}));
  CARRY4 osd_on_t23_carry__0
       (.CI(osd_on_t23_carry_n_0),
        .CO({NLW_osd_on_t23_carry__0_CO_UNCONNECTED[3:2],osd_on_t23,osd_on_t23_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,osd_on_t23_carry__0_i_1_n_0,osd_on_t23_carry__0_i_2_n_0}),
        .O(NLW_osd_on_t23_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,osd_on_t23_carry__0_i_3_n_0,osd_on_t23_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t23_carry__0_i_1
       (.I0(osd_x1_r[11]),
        .I1(pix_x_t1_reg[11]),
        .I2(osd_x1_r[10]),
        .I3(pix_x_t1_reg[10]),
        .O(osd_on_t23_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t23_carry__0_i_2
       (.I0(osd_x1_r[9]),
        .I1(pix_x_t1_reg[9]),
        .I2(osd_x1_r[8]),
        .I3(pix_x_t1_reg[8]),
        .O(osd_on_t23_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t23_carry__0_i_3
       (.I0(osd_x1_r[11]),
        .I1(pix_x_t1_reg[11]),
        .I2(osd_x1_r[10]),
        .I3(pix_x_t1_reg[10]),
        .O(osd_on_t23_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t23_carry__0_i_4
       (.I0(osd_x1_r[9]),
        .I1(pix_x_t1_reg[9]),
        .I2(osd_x1_r[8]),
        .I3(pix_x_t1_reg[8]),
        .O(osd_on_t23_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t23_carry_i_1
       (.I0(osd_x1_r[7]),
        .I1(pix_x_t1_reg[7]),
        .I2(osd_x1_r[6]),
        .I3(pix_x_t1_reg[6]),
        .O(osd_on_t23_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t23_carry_i_2
       (.I0(osd_x1_r[5]),
        .I1(pix_x_t1_reg[5]),
        .I2(osd_x1_r[4]),
        .I3(pix_x_t1_reg[4]),
        .O(osd_on_t23_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t23_carry_i_3
       (.I0(osd_x1_r[3]),
        .I1(pix_x_t1_reg[3]),
        .I2(osd_x1_r[2]),
        .I3(pix_x_t1_reg[2]),
        .O(osd_on_t23_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    osd_on_t23_carry_i_4
       (.I0(osd_x1_r[1]),
        .I1(pix_x_t1_reg[1]),
        .I2(osd_x1_r[0]),
        .I3(pix_x_t1_reg[0]),
        .O(osd_on_t23_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t23_carry_i_5
       (.I0(osd_x1_r[7]),
        .I1(pix_x_t1_reg[7]),
        .I2(osd_x1_r[6]),
        .I3(pix_x_t1_reg[6]),
        .O(osd_on_t23_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t23_carry_i_6
       (.I0(osd_x1_r[5]),
        .I1(pix_x_t1_reg[5]),
        .I2(osd_x1_r[4]),
        .I3(pix_x_t1_reg[4]),
        .O(osd_on_t23_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t23_carry_i_7
       (.I0(osd_x1_r[3]),
        .I1(pix_x_t1_reg[3]),
        .I2(osd_x1_r[2]),
        .I3(pix_x_t1_reg[2]),
        .O(osd_on_t23_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    osd_on_t23_carry_i_8
       (.I0(osd_x1_r[1]),
        .I1(pix_x_t1_reg[1]),
        .I2(osd_x1_r[0]),
        .I3(pix_x_t1_reg[0]),
        .O(osd_on_t23_carry_i_8_n_0));
  CARRY4 \osd_on_t23_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\osd_on_t23_inferred__0/i__carry_n_0 ,\osd_on_t23_inferred__0/i__carry_n_1 ,\osd_on_t23_inferred__0/i__carry_n_2 ,\osd_on_t23_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_osd_on_t23_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \osd_on_t23_inferred__0/i__carry__0 
       (.CI(\osd_on_t23_inferred__0/i__carry_n_0 ),
        .CO({\NLW_osd_on_t23_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],osd_on_t231_in,\osd_on_t23_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}),
        .O(\NLW_osd_on_t23_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h8000)) 
    osd_on_t2_i_1
       (.I0(osd_on_t21),
        .I1(osd_on_t231_in),
        .I2(osd_on_t23),
        .I3(osd_on_t22),
        .O(osd_on_t20));
  FDCE osd_on_t2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(osd_on_t20),
        .Q(osd_on_t2));
  FDCE osd_on_t3_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(osd_on_t2),
        .Q(osd_on_t3));
  FDCE osd_on_t4_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(osd_on_t3),
        .Q(osd_on_t4));
  FDCE osd_on_t5_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(osd_on_t4),
        .Q(osd_on_t5));
  LUT3 #(
    .INIT(8'hDF)) 
    \osd_pix_buf_t5[15]_i_2 
       (.I0(s_osd_en),
        .I1(s_module_reset),
        .I2(rst_n),
        .O(\osd_pix_buf_t5[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \osd_pix_buf_t5[31]_i_1 
       (.I0(href_t4),
        .I1(osd_on_t4),
        .I2(\osd_pix_buf_t5[31]_i_3_n_0 ),
        .O(osd_pix_buf_t5));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \osd_pix_buf_t5[31]_i_3 
       (.I0(osd_pix_idx_t4[0]),
        .I1(osd_pix_idx_t4[3]),
        .I2(osd_pix_idx_t4[4]),
        .I3(osd_pix_idx_t4[2]),
        .I4(osd_pix_idx_t4[1]),
        .O(\osd_pix_buf_t5[31]_i_3_n_0 ));
  FDCE \osd_pix_buf_t5_reg[0] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_103),
        .Q(data1[1]));
  FDCE \osd_pix_buf_t5_reg[10] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_93),
        .Q(data1[11]));
  FDCE \osd_pix_buf_t5_reg[11] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_92),
        .Q(data1[12]));
  FDCE \osd_pix_buf_t5_reg[12] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_91),
        .Q(data1[13]));
  FDCE \osd_pix_buf_t5_reg[13] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_90),
        .Q(data1[14]));
  FDCE \osd_pix_buf_t5_reg[14] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_89),
        .Q(data1[15]));
  FDCE \osd_pix_buf_t5_reg[15] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_88),
        .Q(data1[16]));
  FDCE \osd_pix_buf_t5_reg[16] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_87),
        .Q(data1[17]));
  FDCE \osd_pix_buf_t5_reg[17] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_86),
        .Q(data1[18]));
  FDCE \osd_pix_buf_t5_reg[18] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_85),
        .Q(data1[19]));
  FDCE \osd_pix_buf_t5_reg[19] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_84),
        .Q(data1[20]));
  FDCE \osd_pix_buf_t5_reg[1] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_102),
        .Q(data1[2]));
  FDCE \osd_pix_buf_t5_reg[20] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_83),
        .Q(data1[21]));
  FDCE \osd_pix_buf_t5_reg[21] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_82),
        .Q(data1[22]));
  FDCE \osd_pix_buf_t5_reg[22] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_81),
        .Q(data1[23]));
  FDCE \osd_pix_buf_t5_reg[23] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_80),
        .Q(data1[24]));
  FDCE \osd_pix_buf_t5_reg[24] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_79),
        .Q(data1[25]));
  FDCE \osd_pix_buf_t5_reg[25] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_78),
        .Q(data1[26]));
  FDCE \osd_pix_buf_t5_reg[26] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_77),
        .Q(data1[27]));
  FDCE \osd_pix_buf_t5_reg[27] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_76),
        .Q(data1[28]));
  FDCE \osd_pix_buf_t5_reg[28] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_75),
        .Q(data1[29]));
  FDCE \osd_pix_buf_t5_reg[29] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_74),
        .Q(data1[30]));
  FDCE \osd_pix_buf_t5_reg[2] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_101),
        .Q(data1[3]));
  FDCE \osd_pix_buf_t5_reg[30] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t1_i_2_n_0),
        .D(osd_ram_n_73),
        .Q(data1[31]));
  FDCE \osd_pix_buf_t5_reg[31] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(href_t6_i_1_n_0),
        .D(osd_ram_n_72),
        .Q(\osd_pix_buf_t5_reg_n_0_[31] ));
  FDCE \osd_pix_buf_t5_reg[3] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_100),
        .Q(data1[4]));
  FDCE \osd_pix_buf_t5_reg[4] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_99),
        .Q(data1[5]));
  FDCE \osd_pix_buf_t5_reg[5] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_98),
        .Q(data1[6]));
  FDCE \osd_pix_buf_t5_reg[6] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_97),
        .Q(data1[7]));
  FDCE \osd_pix_buf_t5_reg[7] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_96),
        .Q(data1[8]));
  FDCE \osd_pix_buf_t5_reg[8] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_95),
        .Q(data1[9]));
  FDCE \osd_pix_buf_t5_reg[9] 
       (.C(CLK),
        .CE(osd_pix_buf_t5),
        .CLR(\osd_pix_buf_t5[15]_i_2_n_0 ),
        .D(osd_ram_n_94),
        .Q(data1[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \osd_pix_idx_t3[0]_i_1 
       (.I0(vsync_t2),
        .I1(vsync_t3),
        .I2(osd_pix_idx_t3[0]),
        .O(\osd_pix_idx_t3[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \osd_pix_idx_t3[1]_i_1 
       (.I0(osd_pix_idx_t3[0]),
        .I1(osd_pix_idx_t3[1]),
        .I2(\osd_pix_idx_t3[4]_i_3_n_0 ),
        .O(\osd_pix_idx_t3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFF78)) 
    \osd_pix_idx_t3[2]_i_1 
       (.I0(osd_pix_idx_t3[1]),
        .I1(osd_pix_idx_t3[0]),
        .I2(osd_pix_idx_t3[2]),
        .I3(\osd_pix_idx_t3[4]_i_3_n_0 ),
        .O(\osd_pix_idx_t3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFF7F80)) 
    \osd_pix_idx_t3[3]_i_1 
       (.I0(osd_pix_idx_t3[2]),
        .I1(osd_pix_idx_t3[0]),
        .I2(osd_pix_idx_t3[1]),
        .I3(osd_pix_idx_t3[3]),
        .I4(\osd_pix_idx_t3[4]_i_3_n_0 ),
        .O(\osd_pix_idx_t3[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \osd_pix_idx_t3[4]_i_1 
       (.I0(osd_on_t2),
        .I1(href_t2),
        .I2(vsync_t2),
        .I3(vsync_t3),
        .O(\osd_pix_idx_t3[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFF8000)) 
    \osd_pix_idx_t3[4]_i_2 
       (.I0(osd_pix_idx_t3[3]),
        .I1(osd_pix_idx_t3[1]),
        .I2(osd_pix_idx_t3[0]),
        .I3(osd_pix_idx_t3[2]),
        .I4(osd_pix_idx_t3[4]),
        .I5(\osd_pix_idx_t3[4]_i_3_n_0 ),
        .O(\osd_pix_idx_t3[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \osd_pix_idx_t3[4]_i_3 
       (.I0(vsync_t3),
        .I1(vsync_t2),
        .O(\osd_pix_idx_t3[4]_i_3_n_0 ));
  FDCE \osd_pix_idx_t3_reg[0] 
       (.C(CLK),
        .CE(\osd_pix_idx_t3[4]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(\osd_pix_idx_t3[0]_i_1_n_0 ),
        .Q(osd_pix_idx_t3[0]));
  FDCE \osd_pix_idx_t3_reg[1] 
       (.C(CLK),
        .CE(\osd_pix_idx_t3[4]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(\osd_pix_idx_t3[1]_i_1_n_0 ),
        .Q(osd_pix_idx_t3[1]));
  FDCE \osd_pix_idx_t3_reg[2] 
       (.C(CLK),
        .CE(\osd_pix_idx_t3[4]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(\osd_pix_idx_t3[2]_i_1_n_0 ),
        .Q(osd_pix_idx_t3[2]));
  FDCE \osd_pix_idx_t3_reg[3] 
       (.C(CLK),
        .CE(\osd_pix_idx_t3[4]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(\osd_pix_idx_t3[3]_i_1_n_0 ),
        .Q(osd_pix_idx_t3[3]));
  FDCE \osd_pix_idx_t3_reg[4] 
       (.C(CLK),
        .CE(\osd_pix_idx_t3[4]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(\osd_pix_idx_t3[4]_i_2_n_0 ),
        .Q(osd_pix_idx_t3[4]));
  FDCE \osd_pix_idx_t4_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(osd_pix_idx_t3[0]),
        .Q(osd_pix_idx_t4[0]));
  FDCE \osd_pix_idx_t4_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(osd_pix_idx_t3[1]),
        .Q(osd_pix_idx_t4[1]));
  FDCE \osd_pix_idx_t4_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(osd_pix_idx_t3[2]),
        .Q(osd_pix_idx_t4[2]));
  FDCE \osd_pix_idx_t4_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(osd_pix_idx_t3[3]),
        .Q(osd_pix_idx_t4[3]));
  FDCE \osd_pix_idx_t4_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(osd_pix_idx_t3[4]),
        .Q(osd_pix_idx_t4[4]));
  LUT3 #(
    .INIT(8'h4F)) 
    \osd_raddr_t3[0]_i_1 
       (.I0(vsync_t2),
        .I1(vsync_t3),
        .I2(osd_raddr_t3_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    \osd_raddr_t3[1]_i_1 
       (.I0(vsync_t2),
        .I1(vsync_t3),
        .I2(osd_raddr_t3_reg__0[1]),
        .I3(osd_raddr_t3_reg__0[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \osd_raddr_t3[2]_i_1 
       (.I0(vsync_t2),
        .I1(vsync_t3),
        .I2(osd_raddr_t3_reg__0[2]),
        .I3(osd_raddr_t3_reg__0[0]),
        .I4(osd_raddr_t3_reg__0[1]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'h4FF4F4F4F4F4F4F4)) 
    \osd_raddr_t3[3]_i_1 
       (.I0(vsync_t2),
        .I1(vsync_t3),
        .I2(osd_raddr_t3_reg__0[3]),
        .I3(osd_raddr_t3_reg__0[1]),
        .I4(osd_raddr_t3_reg__0[0]),
        .I5(osd_raddr_t3_reg__0[2]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'hBEEEEEEEEEEEEEEE)) 
    \osd_raddr_t3[4]_i_1 
       (.I0(\osd_pix_idx_t3[4]_i_3_n_0 ),
        .I1(osd_raddr_t3_reg__0[4]),
        .I2(osd_raddr_t3_reg__0[2]),
        .I3(osd_raddr_t3_reg__0[0]),
        .I4(osd_raddr_t3_reg__0[1]),
        .I5(osd_raddr_t3_reg__0[3]),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    \osd_raddr_t3[5]_i_1 
       (.I0(vsync_t2),
        .I1(vsync_t3),
        .I2(osd_raddr_t3_reg__0[5]),
        .I3(\osd_raddr_t3[8]_i_4_n_0 ),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \osd_raddr_t3[6]_i_1 
       (.I0(vsync_t2),
        .I1(vsync_t3),
        .I2(osd_raddr_t3_reg__0[6]),
        .I3(\osd_raddr_t3[8]_i_4_n_0 ),
        .I4(osd_raddr_t3_reg__0[5]),
        .O(p_0_in__1[6]));
  LUT6 #(
    .INIT(64'h4FF4F4F4F4F4F4F4)) 
    \osd_raddr_t3[7]_i_1 
       (.I0(vsync_t2),
        .I1(vsync_t3),
        .I2(osd_raddr_t3_reg__0[7]),
        .I3(osd_raddr_t3_reg__0[6]),
        .I4(osd_raddr_t3_reg__0[5]),
        .I5(\osd_raddr_t3[8]_i_4_n_0 ),
        .O(p_0_in__1[7]));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \osd_raddr_t3[8]_i_1 
       (.I0(\osd_raddr_t3[8]_i_3_n_0 ),
        .I1(href_t2),
        .I2(osd_on_t2),
        .I3(vsync_t2),
        .I4(vsync_t3),
        .O(\osd_raddr_t3[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBEEEEEEEEEEEEEEE)) 
    \osd_raddr_t3[8]_i_2 
       (.I0(\osd_pix_idx_t3[4]_i_3_n_0 ),
        .I1(osd_raddr_t3_reg__0[8]),
        .I2(osd_raddr_t3_reg__0[5]),
        .I3(osd_raddr_t3_reg__0[6]),
        .I4(osd_raddr_t3_reg__0[7]),
        .I5(\osd_raddr_t3[8]_i_4_n_0 ),
        .O(p_0_in__1[8]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \osd_raddr_t3[8]_i_3 
       (.I0(osd_pix_idx_t3[3]),
        .I1(osd_pix_idx_t3[1]),
        .I2(osd_pix_idx_t3[0]),
        .I3(osd_pix_idx_t3[2]),
        .I4(osd_pix_idx_t3[4]),
        .O(\osd_raddr_t3[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \osd_raddr_t3[8]_i_4 
       (.I0(osd_raddr_t3_reg__0[3]),
        .I1(osd_raddr_t3_reg__0[1]),
        .I2(osd_raddr_t3_reg__0[0]),
        .I3(osd_raddr_t3_reg__0[2]),
        .I4(osd_raddr_t3_reg__0[4]),
        .O(\osd_raddr_t3[8]_i_4_n_0 ));
  FDCE \osd_raddr_t3_reg[0] 
       (.C(CLK),
        .CE(\osd_raddr_t3[8]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(p_0_in__1[0]),
        .Q(osd_raddr_t3_reg__0[0]));
  FDCE \osd_raddr_t3_reg[1] 
       (.C(CLK),
        .CE(\osd_raddr_t3[8]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(p_0_in__1[1]),
        .Q(osd_raddr_t3_reg__0[1]));
  FDCE \osd_raddr_t3_reg[2] 
       (.C(CLK),
        .CE(\osd_raddr_t3[8]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(p_0_in__1[2]),
        .Q(osd_raddr_t3_reg__0[2]));
  FDCE \osd_raddr_t3_reg[3] 
       (.C(CLK),
        .CE(\osd_raddr_t3[8]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(p_0_in__1[3]),
        .Q(osd_raddr_t3_reg__0[3]));
  FDCE \osd_raddr_t3_reg[4] 
       (.C(CLK),
        .CE(\osd_raddr_t3[8]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(p_0_in__1[4]),
        .Q(osd_raddr_t3_reg__0[4]));
  FDCE \osd_raddr_t3_reg[5] 
       (.C(CLK),
        .CE(\osd_raddr_t3[8]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(p_0_in__1[5]),
        .Q(osd_raddr_t3_reg__0[5]));
  FDCE \osd_raddr_t3_reg[6] 
       (.C(CLK),
        .CE(\osd_raddr_t3[8]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(p_0_in__1[6]),
        .Q(osd_raddr_t3_reg__0[6]));
  FDCE \osd_raddr_t3_reg[7] 
       (.C(CLK),
        .CE(\osd_raddr_t3[8]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(p_0_in__1[7]),
        .Q(osd_raddr_t3_reg__0[7]));
  FDCE \osd_raddr_t3_reg[8] 
       (.C(CLK),
        .CE(\osd_raddr_t3[8]_i_1_n_0 ),
        .CLR(href_t6_i_1_n_0),
        .D(p_0_in__1[8]),
        .Q(osd_raddr_t3_reg__0[8]));
  design_1_xil_vip_0_0_full_dp_ram osd_ram
       (.CLK(CLK),
        .D({osd_ram_n_72,osd_ram_n_73,osd_ram_n_74,osd_ram_n_75,osd_ram_n_76,osd_ram_n_77,osd_ram_n_78,osd_ram_n_79,osd_ram_n_80,osd_ram_n_81,osd_ram_n_82,osd_ram_n_83,osd_ram_n_84,osd_ram_n_85,osd_ram_n_86,osd_ram_n_87,osd_ram_n_88,osd_ram_n_89,osd_ram_n_90,osd_ram_n_91,osd_ram_n_92,osd_ram_n_93,osd_ram_n_94,osd_ram_n_95,osd_ram_n_96,osd_ram_n_97,osd_ram_n_98,osd_ram_n_99,osd_ram_n_100,osd_ram_n_101,osd_ram_n_102,osd_ram_n_103}),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .Q(osd_raddr_t3_reg__0),
        .mem_reg_0(mem_reg),
        .mem_reg_1(mem_reg_0),
        .mem_reg_2(mem_reg_1),
        .\osd_pix_buf_t5_reg[0] (\osd_pix_buf_t5_reg[0]_0 ),
        .\osd_pix_buf_t5_reg[0]_0 (\osd_pix_buf_t5_reg[0]_1 ),
        .\osd_pix_buf_t5_reg[0]_1 (\osd_pix_buf_t5[31]_i_3_n_0 ),
        .\osd_pix_buf_t5_reg[10] (\osd_pix_buf_t5_reg[10]_0 ),
        .\osd_pix_buf_t5_reg[11] (\osd_pix_buf_t5_reg[11]_0 ),
        .\osd_pix_buf_t5_reg[12] (\osd_pix_buf_t5_reg[12]_0 ),
        .\osd_pix_buf_t5_reg[13] (\osd_pix_buf_t5_reg[13]_0 ),
        .\osd_pix_buf_t5_reg[14] (\osd_pix_buf_t5_reg[14]_0 ),
        .\osd_pix_buf_t5_reg[15] (\osd_pix_buf_t5_reg[15]_0 ),
        .\osd_pix_buf_t5_reg[16] (\osd_pix_buf_t5_reg[16]_0 ),
        .\osd_pix_buf_t5_reg[17] (\osd_pix_buf_t5_reg[17]_0 ),
        .\osd_pix_buf_t5_reg[18] (\osd_pix_buf_t5_reg[18]_0 ),
        .\osd_pix_buf_t5_reg[19] (\osd_pix_buf_t5_reg[19]_0 ),
        .\osd_pix_buf_t5_reg[1] (\osd_pix_buf_t5_reg[1]_0 ),
        .\osd_pix_buf_t5_reg[20] (\osd_pix_buf_t5_reg[20]_0 ),
        .\osd_pix_buf_t5_reg[21] (\osd_pix_buf_t5_reg[21]_0 ),
        .\osd_pix_buf_t5_reg[22] (\osd_pix_buf_t5_reg[22]_0 ),
        .\osd_pix_buf_t5_reg[23] (\osd_pix_buf_t5_reg[23]_0 ),
        .\osd_pix_buf_t5_reg[24] (\osd_pix_buf_t5_reg[24]_0 ),
        .\osd_pix_buf_t5_reg[25] (\osd_pix_buf_t5_reg[25]_0 ),
        .\osd_pix_buf_t5_reg[26] (\osd_pix_buf_t5_reg[26]_0 ),
        .\osd_pix_buf_t5_reg[27] (\osd_pix_buf_t5_reg[27]_0 ),
        .\osd_pix_buf_t5_reg[28] (\osd_pix_buf_t5_reg[28]_0 ),
        .\osd_pix_buf_t5_reg[29] (\osd_pix_buf_t5_reg[29]_0 ),
        .\osd_pix_buf_t5_reg[2] (\osd_pix_buf_t5_reg[2]_0 ),
        .\osd_pix_buf_t5_reg[30] (\osd_pix_buf_t5_reg[30]_0 ),
        .\osd_pix_buf_t5_reg[31] (data1),
        .\osd_pix_buf_t5_reg[31]_0 (\osd_pix_buf_t5_reg[31]_0 ),
        .\osd_pix_buf_t5_reg[3] (\osd_pix_buf_t5_reg[3]_0 ),
        .\osd_pix_buf_t5_reg[4] (\osd_pix_buf_t5_reg[4]_0 ),
        .\osd_pix_buf_t5_reg[5] (\osd_pix_buf_t5_reg[5]_0 ),
        .\osd_pix_buf_t5_reg[6] (\osd_pix_buf_t5_reg[6]_0 ),
        .\osd_pix_buf_t5_reg[7] (\osd_pix_buf_t5_reg[7]_0 ),
        .\osd_pix_buf_t5_reg[8] (\osd_pix_buf_t5_reg[8]_0 ),
        .\osd_pix_buf_t5_reg[9] (\osd_pix_buf_t5_reg[9]_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[24] (\s00_axi_rdata[24] ),
        .\s00_axi_rdata[24]_0 (\s00_axi_rdata[24]_0 ),
        .\s00_axi_rdata[24]_1 (Q),
        .\s00_axi_rdata[25] (\s00_axi_rdata[25] ),
        .\s00_axi_rdata[26] (\s00_axi_rdata[26] ),
        .\s00_axi_rdata[27] (\s00_axi_rdata[27] ),
        .\s00_axi_rdata[28] (\s00_axi_rdata[28] ),
        .\s00_axi_rdata[29] (\s00_axi_rdata[29] ),
        .\s00_axi_rdata[30] (\s00_axi_rdata[30] ),
        .\s00_axi_rdata[31] (\s00_axi_rdata[31] ),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \osd_x0_r[0]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [10]),
        .I2(\osd_x0_r_reg[10]_0 [9]),
        .I3(\osd_x0_r_reg[10]_0 [0]),
        .O(\osd_x0_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \osd_x0_r[10]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [10]),
        .O(\osd_x0_r[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \osd_x0_r[11]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [10]),
        .I1(\osd_x0_r_reg[10]_0 [9]),
        .I2(\osd_x0_r_reg[10]_0 [11]),
        .O(\osd_x0_r[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \osd_x0_r[1]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [10]),
        .I2(\osd_x0_r_reg[10]_0 [9]),
        .I3(\osd_x0_r_reg[10]_0 [1]),
        .O(\osd_x0_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \osd_x0_r[2]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [10]),
        .I2(\osd_x0_r_reg[10]_0 [9]),
        .I3(\osd_x0_r_reg[10]_0 [2]),
        .O(\osd_x0_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \osd_x0_r[3]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [10]),
        .I2(\osd_x0_r_reg[10]_0 [9]),
        .I3(\osd_x0_r_reg[10]_0 [3]),
        .O(\osd_x0_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \osd_x0_r[4]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [10]),
        .I2(\osd_x0_r_reg[10]_0 [9]),
        .I3(\osd_x0_r_reg[10]_0 [4]),
        .O(\osd_x0_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \osd_x0_r[5]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [10]),
        .I2(\osd_x0_r_reg[10]_0 [9]),
        .I3(\osd_x0_r_reg[10]_0 [5]),
        .O(\osd_x0_r[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \osd_x0_r[6]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [10]),
        .I2(\osd_x0_r_reg[10]_0 [9]),
        .I3(\osd_x0_r_reg[10]_0 [6]),
        .O(\osd_x0_r[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \osd_x0_r[7]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [10]),
        .I2(\osd_x0_r_reg[10]_0 [9]),
        .I3(\osd_x0_r_reg[10]_0 [7]),
        .O(\osd_x0_r[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \osd_x0_r[8]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [10]),
        .I2(\osd_x0_r_reg[10]_0 [9]),
        .I3(\osd_x0_r_reg[10]_0 [8]),
        .O(\osd_x0_r[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \osd_x0_r[9]_i_1 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x0_r_reg[10]_0 [9]),
        .O(\osd_x0_r[9]_i_1_n_0 ));
  FDCE \osd_x0_r_reg[0] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[0]_i_1_n_0 ),
        .Q(osd_x0_r[0]));
  FDCE \osd_x0_r_reg[10] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[10]_i_1_n_0 ),
        .Q(osd_x0_r[10]));
  FDCE \osd_x0_r_reg[11] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[11]_i_1_n_0 ),
        .Q(osd_x0_r[11]));
  FDCE \osd_x0_r_reg[1] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[1]_i_1_n_0 ),
        .Q(osd_x0_r[1]));
  FDCE \osd_x0_r_reg[2] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[2]_i_1_n_0 ),
        .Q(osd_x0_r[2]));
  FDCE \osd_x0_r_reg[3] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[3]_i_1_n_0 ),
        .Q(osd_x0_r[3]));
  FDCE \osd_x0_r_reg[4] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[4]_i_1_n_0 ),
        .Q(osd_x0_r[4]));
  FDCE \osd_x0_r_reg[5] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[5]_i_1_n_0 ),
        .Q(osd_x0_r[5]));
  FDCE \osd_x0_r_reg[6] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[6]_i_1_n_0 ),
        .Q(osd_x0_r[6]));
  FDCE \osd_x0_r_reg[7] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[7]_i_1_n_0 ),
        .Q(osd_x0_r[7]));
  FDCE \osd_x0_r_reg[8] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[8]_i_1_n_0 ),
        .Q(osd_x0_r[8]));
  FDCE \osd_x0_r_reg[9] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x0_r[9]_i_1_n_0 ),
        .Q(osd_x0_r[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \osd_x1_r[11]_i_1 
       (.I0(vsync_t1),
        .I1(crop_vsync_o),
        .O(pix_y_t112_out));
  LUT3 #(
    .INIT(8'h1F)) 
    \osd_x1_r[11]_i_10 
       (.I0(osd_x1_r3[9]),
        .I1(osd_x1_r3[10]),
        .I2(osd_x1_r3[11]),
        .O(\osd_x1_r[11]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \osd_x1_r[11]_i_11 
       (.I0(osd_x1_r3[0]),
        .I1(osd_x1_r3[10]),
        .I2(osd_x1_r3[2]),
        .I3(osd_x1_r3[1]),
        .O(\osd_x1_r[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \osd_x1_r[11]_i_12 
       (.I0(osd_x1_r3[3]),
        .I1(osd_x1_r3[4]),
        .I2(osd_x1_r3[5]),
        .I3(osd_x1_r3[6]),
        .I4(osd_x1_r3[8]),
        .I5(osd_x1_r3[7]),
        .O(\osd_x1_r[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_17 
       (.I0(\osd_x0_r_reg[10]_0 [11]),
        .I1(\osd_x1_r_reg[11]_0 [11]),
        .O(\osd_x1_r[11]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_18 
       (.I0(\osd_x0_r_reg[10]_0 [10]),
        .I1(\osd_x1_r_reg[11]_0 [10]),
        .O(\osd_x1_r[11]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_19 
       (.I0(\osd_x0_r_reg[10]_0 [9]),
        .I1(\osd_x1_r_reg[11]_0 [9]),
        .O(\osd_x1_r[11]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_20 
       (.I0(\osd_x0_r_reg[10]_0 [8]),
        .I1(\osd_x1_r_reg[11]_0 [8]),
        .O(\osd_x1_r[11]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_21 
       (.I0(\osd_x0_r_reg[10]_0 [3]),
        .I1(\osd_x1_r_reg[11]_0 [3]),
        .O(\osd_x1_r[11]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_22 
       (.I0(\osd_x0_r_reg[10]_0 [2]),
        .I1(\osd_x1_r_reg[11]_0 [2]),
        .O(\osd_x1_r[11]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_23 
       (.I0(\osd_x0_r_reg[10]_0 [1]),
        .I1(\osd_x1_r_reg[11]_0 [1]),
        .O(\osd_x1_r[11]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_24 
       (.I0(\osd_x0_r_reg[10]_0 [0]),
        .I1(\osd_x1_r_reg[11]_0 [0]),
        .O(\osd_x1_r[11]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_25 
       (.I0(\osd_x0_r_reg[10]_0 [7]),
        .I1(\osd_x1_r_reg[11]_0 [7]),
        .O(\osd_x1_r[11]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_26 
       (.I0(\osd_x0_r_reg[10]_0 [6]),
        .I1(\osd_x1_r_reg[11]_0 [6]),
        .O(\osd_x1_r[11]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_27 
       (.I0(\osd_x0_r_reg[10]_0 [5]),
        .I1(\osd_x1_r_reg[11]_0 [5]),
        .O(\osd_x1_r[11]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_x1_r[11]_i_28 
       (.I0(\osd_x0_r_reg[10]_0 [4]),
        .I1(\osd_x1_r_reg[11]_0 [4]),
        .O(\osd_x1_r[11]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[11]_i_3 
       (.I0(\osd_x1_r_reg[11]_0 [10]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[11]_i_4 
       (.I0(\osd_x1_r_reg[11]_0 [9]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[11]_i_5 
       (.I0(\osd_x1_r_reg[11]_0 [8]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[11]_i_6 
       (.I0(\osd_x1_r_reg[11]_0 [11]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [11]),
        .O(\osd_x1_r[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[11]_i_7 
       (.I0(\osd_x1_r_reg[11]_0 [10]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [10]),
        .O(\osd_x1_r[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[11]_i_8 
       (.I0(\osd_x1_r_reg[11]_0 [9]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [9]),
        .O(\osd_x1_r[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[11]_i_9 
       (.I0(\osd_x1_r_reg[11]_0 [8]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [8]),
        .O(\osd_x1_r[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[3]_i_2 
       (.I0(\osd_x1_r_reg[11]_0 [3]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[3]_i_3 
       (.I0(\osd_x1_r_reg[11]_0 [2]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[3]_i_4 
       (.I0(\osd_x1_r_reg[11]_0 [1]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[3]_i_5 
       (.I0(\osd_x1_r_reg[11]_0 [0]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[3]_i_6 
       (.I0(\osd_x1_r_reg[11]_0 [3]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [3]),
        .O(\osd_x1_r[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[3]_i_7 
       (.I0(\osd_x1_r_reg[11]_0 [2]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [2]),
        .O(\osd_x1_r[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[3]_i_8 
       (.I0(\osd_x1_r_reg[11]_0 [1]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [1]),
        .O(\osd_x1_r[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[3]_i_9 
       (.I0(\osd_x1_r_reg[11]_0 [0]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [0]),
        .O(\osd_x1_r[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[7]_i_2 
       (.I0(\osd_x1_r_reg[11]_0 [7]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[7]_i_3 
       (.I0(\osd_x1_r_reg[11]_0 [6]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[7]_i_4 
       (.I0(\osd_x1_r_reg[11]_0 [5]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000A888)) 
    \osd_x1_r[7]_i_5 
       (.I0(\osd_x1_r_reg[11]_0 [4]),
        .I1(\osd_x1_r[11]_i_10_n_0 ),
        .I2(\osd_x1_r[11]_i_11_n_0 ),
        .I3(\osd_x1_r[11]_i_12_n_0 ),
        .I4(osd_x1_r3[12]),
        .O(\osd_x1_r[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[7]_i_6 
       (.I0(\osd_x1_r_reg[11]_0 [7]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [7]),
        .O(\osd_x1_r[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[7]_i_7 
       (.I0(\osd_x1_r_reg[11]_0 [6]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [6]),
        .O(\osd_x1_r[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[7]_i_8 
       (.I0(\osd_x1_r_reg[11]_0 [5]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [5]),
        .O(\osd_x1_r[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1111100022222000)) 
    \osd_x1_r[7]_i_9 
       (.I0(\osd_x1_r_reg[11]_0 [4]),
        .I1(osd_x1_r3[12]),
        .I2(\osd_x1_r[11]_i_12_n_0 ),
        .I3(\osd_x1_r[11]_i_11_n_0 ),
        .I4(\osd_x1_r[11]_i_10_n_0 ),
        .I5(\osd_x0_r_reg[10]_0 [4]),
        .O(\osd_x1_r[7]_i_9_n_0 ));
  FDCE \osd_x1_r_reg[0] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[3]_i_1_n_7 ),
        .Q(osd_x1_r[0]));
  FDCE \osd_x1_r_reg[10] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[11]_i_2_n_5 ),
        .Q(osd_x1_r[10]));
  FDCE \osd_x1_r_reg[11] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[11]_i_2_n_4 ),
        .Q(osd_x1_r[11]));
  CARRY4 \osd_x1_r_reg[11]_i_13 
       (.CI(\osd_x1_r_reg[11]_i_14_n_0 ),
        .CO({\NLW_osd_x1_r_reg[11]_i_13_CO_UNCONNECTED [3:1],osd_x1_r3[12]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_osd_x1_r_reg[11]_i_13_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \osd_x1_r_reg[11]_i_14 
       (.CI(\osd_x1_r_reg[11]_i_16_n_0 ),
        .CO({\osd_x1_r_reg[11]_i_14_n_0 ,\osd_x1_r_reg[11]_i_14_n_1 ,\osd_x1_r_reg[11]_i_14_n_2 ,\osd_x1_r_reg[11]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI(\osd_x0_r_reg[10]_0 [11:8]),
        .O(osd_x1_r3[11:8]),
        .S({\osd_x1_r[11]_i_17_n_0 ,\osd_x1_r[11]_i_18_n_0 ,\osd_x1_r[11]_i_19_n_0 ,\osd_x1_r[11]_i_20_n_0 }));
  CARRY4 \osd_x1_r_reg[11]_i_15 
       (.CI(1'b0),
        .CO({\osd_x1_r_reg[11]_i_15_n_0 ,\osd_x1_r_reg[11]_i_15_n_1 ,\osd_x1_r_reg[11]_i_15_n_2 ,\osd_x1_r_reg[11]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI(\osd_x0_r_reg[10]_0 [3:0]),
        .O(osd_x1_r3[3:0]),
        .S({\osd_x1_r[11]_i_21_n_0 ,\osd_x1_r[11]_i_22_n_0 ,\osd_x1_r[11]_i_23_n_0 ,\osd_x1_r[11]_i_24_n_0 }));
  CARRY4 \osd_x1_r_reg[11]_i_16 
       (.CI(\osd_x1_r_reg[11]_i_15_n_0 ),
        .CO({\osd_x1_r_reg[11]_i_16_n_0 ,\osd_x1_r_reg[11]_i_16_n_1 ,\osd_x1_r_reg[11]_i_16_n_2 ,\osd_x1_r_reg[11]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI(\osd_x0_r_reg[10]_0 [7:4]),
        .O(osd_x1_r3[7:4]),
        .S({\osd_x1_r[11]_i_25_n_0 ,\osd_x1_r[11]_i_26_n_0 ,\osd_x1_r[11]_i_27_n_0 ,\osd_x1_r[11]_i_28_n_0 }));
  CARRY4 \osd_x1_r_reg[11]_i_2 
       (.CI(\osd_x1_r_reg[7]_i_1_n_0 ),
        .CO({\NLW_osd_x1_r_reg[11]_i_2_CO_UNCONNECTED [3],\osd_x1_r_reg[11]_i_2_n_1 ,\osd_x1_r_reg[11]_i_2_n_2 ,\osd_x1_r_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\osd_x1_r[11]_i_3_n_0 ,\osd_x1_r[11]_i_4_n_0 ,\osd_x1_r[11]_i_5_n_0 }),
        .O({\osd_x1_r_reg[11]_i_2_n_4 ,\osd_x1_r_reg[11]_i_2_n_5 ,\osd_x1_r_reg[11]_i_2_n_6 ,\osd_x1_r_reg[11]_i_2_n_7 }),
        .S({\osd_x1_r[11]_i_6_n_0 ,\osd_x1_r[11]_i_7_n_0 ,\osd_x1_r[11]_i_8_n_0 ,\osd_x1_r[11]_i_9_n_0 }));
  FDCE \osd_x1_r_reg[1] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[3]_i_1_n_6 ),
        .Q(osd_x1_r[1]));
  FDCE \osd_x1_r_reg[2] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[3]_i_1_n_5 ),
        .Q(osd_x1_r[2]));
  FDCE \osd_x1_r_reg[3] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[3]_i_1_n_4 ),
        .Q(osd_x1_r[3]));
  CARRY4 \osd_x1_r_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\osd_x1_r_reg[3]_i_1_n_0 ,\osd_x1_r_reg[3]_i_1_n_1 ,\osd_x1_r_reg[3]_i_1_n_2 ,\osd_x1_r_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\osd_x1_r[3]_i_2_n_0 ,\osd_x1_r[3]_i_3_n_0 ,\osd_x1_r[3]_i_4_n_0 ,\osd_x1_r[3]_i_5_n_0 }),
        .O({\osd_x1_r_reg[3]_i_1_n_4 ,\osd_x1_r_reg[3]_i_1_n_5 ,\osd_x1_r_reg[3]_i_1_n_6 ,\osd_x1_r_reg[3]_i_1_n_7 }),
        .S({\osd_x1_r[3]_i_6_n_0 ,\osd_x1_r[3]_i_7_n_0 ,\osd_x1_r[3]_i_8_n_0 ,\osd_x1_r[3]_i_9_n_0 }));
  FDCE \osd_x1_r_reg[4] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[7]_i_1_n_7 ),
        .Q(osd_x1_r[4]));
  FDCE \osd_x1_r_reg[5] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[7]_i_1_n_6 ),
        .Q(osd_x1_r[5]));
  FDCE \osd_x1_r_reg[6] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[7]_i_1_n_5 ),
        .Q(osd_x1_r[6]));
  FDCE \osd_x1_r_reg[7] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[7]_i_1_n_4 ),
        .Q(osd_x1_r[7]));
  CARRY4 \osd_x1_r_reg[7]_i_1 
       (.CI(\osd_x1_r_reg[3]_i_1_n_0 ),
        .CO({\osd_x1_r_reg[7]_i_1_n_0 ,\osd_x1_r_reg[7]_i_1_n_1 ,\osd_x1_r_reg[7]_i_1_n_2 ,\osd_x1_r_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\osd_x1_r[7]_i_2_n_0 ,\osd_x1_r[7]_i_3_n_0 ,\osd_x1_r[7]_i_4_n_0 ,\osd_x1_r[7]_i_5_n_0 }),
        .O({\osd_x1_r_reg[7]_i_1_n_4 ,\osd_x1_r_reg[7]_i_1_n_5 ,\osd_x1_r_reg[7]_i_1_n_6 ,\osd_x1_r_reg[7]_i_1_n_7 }),
        .S({\osd_x1_r[7]_i_6_n_0 ,\osd_x1_r[7]_i_7_n_0 ,\osd_x1_r[7]_i_8_n_0 ,\osd_x1_r[7]_i_9_n_0 }));
  FDCE \osd_x1_r_reg[8] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[11]_i_2_n_7 ),
        .Q(osd_x1_r[8]));
  FDCE \osd_x1_r_reg[9] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_x1_r_reg[11]_i_2_n_6 ),
        .Q(osd_x1_r[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[0]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [0]),
        .O(\osd_y0_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[10]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [10]),
        .O(\osd_y0_r[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \osd_y0_r[10]_i_2 
       (.I0(\osd_y0_r_reg[10]_0 [0]),
        .I1(\osd_y0_r[10]_i_3_n_0 ),
        .I2(\osd_y0_r_reg[10]_0 [9]),
        .I3(\osd_y0_r_reg[10]_0 [10]),
        .I4(\osd_y0_r_reg[10]_0 [7]),
        .I5(\osd_y0_r_reg[10]_0 [8]),
        .O(osd_y0_r2__9));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \osd_y0_r[10]_i_3 
       (.I0(\osd_y0_r_reg[10]_0 [2]),
        .I1(\osd_y0_r_reg[10]_0 [1]),
        .I2(\osd_y0_r_reg[10]_0 [5]),
        .I3(\osd_y0_r_reg[10]_0 [6]),
        .I4(\osd_y0_r_reg[10]_0 [3]),
        .I5(\osd_y0_r_reg[10]_0 [4]),
        .O(\osd_y0_r[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[1]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [1]),
        .O(\osd_y0_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[2]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [2]),
        .O(\osd_y0_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[3]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [3]),
        .O(\osd_y0_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[4]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [4]),
        .O(\osd_y0_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[5]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [5]),
        .O(\osd_y0_r[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[6]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [6]),
        .O(\osd_y0_r[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[7]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [7]),
        .O(\osd_y0_r[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[8]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [8]),
        .O(\osd_y0_r[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \osd_y0_r[9]_i_1 
       (.I0(osd_y0_r2__9),
        .I1(\osd_y0_r_reg[10]_0 [9]),
        .O(\osd_y0_r[9]_i_1_n_0 ));
  FDCE \osd_y0_r_reg[0] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[0]_i_1_n_0 ),
        .Q(osd_y0_r[0]));
  FDCE \osd_y0_r_reg[10] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[10]_i_1_n_0 ),
        .Q(osd_y0_r[10]));
  FDCE \osd_y0_r_reg[1] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[1]_i_1_n_0 ),
        .Q(osd_y0_r[1]));
  FDCE \osd_y0_r_reg[2] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[2]_i_1_n_0 ),
        .Q(osd_y0_r[2]));
  FDCE \osd_y0_r_reg[3] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[3]_i_1_n_0 ),
        .Q(osd_y0_r[3]));
  FDCE \osd_y0_r_reg[4] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[4]_i_1_n_0 ),
        .Q(osd_y0_r[4]));
  FDCE \osd_y0_r_reg[5] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[5]_i_1_n_0 ),
        .Q(osd_y0_r[5]));
  FDCE \osd_y0_r_reg[6] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[6]_i_1_n_0 ),
        .Q(osd_y0_r[6]));
  FDCE \osd_y0_r_reg[7] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[7]_i_1_n_0 ),
        .Q(osd_y0_r[7]));
  FDCE \osd_y0_r_reg[8] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[8]_i_1_n_0 ),
        .Q(osd_y0_r[8]));
  FDCE \osd_y0_r_reg[9] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y0_r[9]_i_1_n_0 ),
        .Q(osd_y0_r[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_11 
       (.I0(\osd_y0_r_reg[10]_0 [3]),
        .I1(\osd_y1_r_reg[10]_0 [3]),
        .O(\osd_y1_r[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_12 
       (.I0(\osd_y0_r_reg[10]_0 [2]),
        .I1(\osd_y1_r_reg[10]_0 [2]),
        .O(\osd_y1_r[10]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_13 
       (.I0(\osd_y0_r_reg[10]_0 [1]),
        .I1(\osd_y1_r_reg[10]_0 [1]),
        .O(\osd_y1_r[10]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_14 
       (.I0(\osd_y0_r_reg[10]_0 [0]),
        .I1(\osd_y1_r_reg[10]_0 [0]),
        .O(\osd_y1_r[10]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_16 
       (.I0(\osd_y0_r_reg[10]_0 [10]),
        .I1(\osd_y1_r_reg[10]_0 [10]),
        .O(\osd_y1_r[10]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_17 
       (.I0(\osd_y0_r_reg[10]_0 [9]),
        .I1(\osd_y1_r_reg[10]_0 [9]),
        .O(\osd_y1_r[10]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_18 
       (.I0(\osd_y0_r_reg[10]_0 [8]),
        .I1(\osd_y1_r_reg[10]_0 [8]),
        .O(\osd_y1_r[10]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_19 
       (.I0(\osd_y0_r_reg[10]_0 [7]),
        .I1(\osd_y1_r_reg[10]_0 [7]),
        .O(\osd_y1_r[10]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \osd_y1_r[10]_i_2 
       (.I0(\osd_y1_r_reg[10]_0 [9]),
        .I1(osd_y1_r3[0]),
        .I2(\osd_y1_r[10]_i_8_n_0 ),
        .I3(\osd_y1_r[10]_i_9_n_0 ),
        .I4(osd_y1_r3[11]),
        .O(\osd_y1_r[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_20 
       (.I0(\osd_y0_r_reg[10]_0 [6]),
        .I1(\osd_y1_r_reg[10]_0 [6]),
        .O(\osd_y1_r[10]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_21 
       (.I0(\osd_y0_r_reg[10]_0 [5]),
        .I1(\osd_y1_r_reg[10]_0 [5]),
        .O(\osd_y1_r[10]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \osd_y1_r[10]_i_22 
       (.I0(\osd_y0_r_reg[10]_0 [4]),
        .I1(\osd_y1_r_reg[10]_0 [4]),
        .O(\osd_y1_r[10]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \osd_y1_r[10]_i_3 
       (.I0(\osd_y1_r_reg[10]_0 [8]),
        .I1(osd_y1_r3[0]),
        .I2(\osd_y1_r[10]_i_8_n_0 ),
        .I3(\osd_y1_r[10]_i_9_n_0 ),
        .I4(osd_y1_r3[11]),
        .O(\osd_y1_r[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[10]_i_4 
       (.I0(\osd_y1_r_reg[10]_0 [10]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [10]),
        .O(\osd_y1_r[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[10]_i_5 
       (.I0(\osd_y1_r_reg[10]_0 [9]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [9]),
        .O(\osd_y1_r[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[10]_i_6 
       (.I0(\osd_y1_r_reg[10]_0 [8]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [8]),
        .O(\osd_y1_r[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \osd_y1_r[10]_i_8 
       (.I0(osd_y1_r3[2]),
        .I1(osd_y1_r3[1]),
        .I2(osd_y1_r3[5]),
        .I3(osd_y1_r3[6]),
        .I4(osd_y1_r3[3]),
        .I5(osd_y1_r3[4]),
        .O(\osd_y1_r[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \osd_y1_r[10]_i_9 
       (.I0(osd_y1_r3[8]),
        .I1(osd_y1_r3[7]),
        .I2(osd_y1_r3[10]),
        .I3(osd_y1_r3[9]),
        .O(\osd_y1_r[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \osd_y1_r[3]_i_2 
       (.I0(\osd_y1_r_reg[10]_0 [3]),
        .I1(osd_y1_r3[0]),
        .I2(\osd_y1_r[10]_i_8_n_0 ),
        .I3(\osd_y1_r[10]_i_9_n_0 ),
        .I4(osd_y1_r3[11]),
        .O(\osd_y1_r[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \osd_y1_r[3]_i_3 
       (.I0(\osd_y1_r_reg[10]_0 [2]),
        .I1(osd_y1_r3[0]),
        .I2(\osd_y1_r[10]_i_8_n_0 ),
        .I3(\osd_y1_r[10]_i_9_n_0 ),
        .I4(osd_y1_r3[11]),
        .O(\osd_y1_r[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \osd_y1_r[3]_i_4 
       (.I0(\osd_y1_r_reg[10]_0 [1]),
        .I1(osd_y1_r3[0]),
        .I2(\osd_y1_r[10]_i_8_n_0 ),
        .I3(\osd_y1_r[10]_i_9_n_0 ),
        .I4(osd_y1_r3[11]),
        .O(\osd_y1_r[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \osd_y1_r[3]_i_5 
       (.I0(\osd_y1_r_reg[10]_0 [0]),
        .I1(osd_y1_r3[0]),
        .I2(\osd_y1_r[10]_i_8_n_0 ),
        .I3(\osd_y1_r[10]_i_9_n_0 ),
        .I4(osd_y1_r3[11]),
        .O(\osd_y1_r[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[3]_i_6 
       (.I0(\osd_y1_r_reg[10]_0 [3]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [3]),
        .O(\osd_y1_r[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[3]_i_7 
       (.I0(\osd_y1_r_reg[10]_0 [2]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [2]),
        .O(\osd_y1_r[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[3]_i_8 
       (.I0(\osd_y1_r_reg[10]_0 [1]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [1]),
        .O(\osd_y1_r[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[3]_i_9 
       (.I0(\osd_y1_r_reg[10]_0 [0]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [0]),
        .O(\osd_y1_r[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \osd_y1_r[7]_i_2 
       (.I0(\osd_y1_r_reg[10]_0 [7]),
        .I1(osd_y1_r3[0]),
        .I2(\osd_y1_r[10]_i_8_n_0 ),
        .I3(\osd_y1_r[10]_i_9_n_0 ),
        .I4(osd_y1_r3[11]),
        .O(\osd_y1_r[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \osd_y1_r[7]_i_3 
       (.I0(\osd_y1_r_reg[10]_0 [6]),
        .I1(osd_y1_r3[0]),
        .I2(\osd_y1_r[10]_i_8_n_0 ),
        .I3(\osd_y1_r[10]_i_9_n_0 ),
        .I4(osd_y1_r3[11]),
        .O(\osd_y1_r[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \osd_y1_r[7]_i_4 
       (.I0(\osd_y1_r_reg[10]_0 [5]),
        .I1(osd_y1_r3[0]),
        .I2(\osd_y1_r[10]_i_8_n_0 ),
        .I3(\osd_y1_r[10]_i_9_n_0 ),
        .I4(osd_y1_r3[11]),
        .O(\osd_y1_r[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \osd_y1_r[7]_i_5 
       (.I0(\osd_y1_r_reg[10]_0 [4]),
        .I1(osd_y1_r3[0]),
        .I2(\osd_y1_r[10]_i_8_n_0 ),
        .I3(\osd_y1_r[10]_i_9_n_0 ),
        .I4(osd_y1_r3[11]),
        .O(\osd_y1_r[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[7]_i_6 
       (.I0(\osd_y1_r_reg[10]_0 [7]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [7]),
        .O(\osd_y1_r[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[7]_i_7 
       (.I0(\osd_y1_r_reg[10]_0 [6]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [6]),
        .O(\osd_y1_r[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[7]_i_8 
       (.I0(\osd_y1_r_reg[10]_0 [5]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [5]),
        .O(\osd_y1_r[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0101011102020222)) 
    \osd_y1_r[7]_i_9 
       (.I0(\osd_y1_r_reg[10]_0 [4]),
        .I1(osd_y1_r3[11]),
        .I2(\osd_y1_r[10]_i_9_n_0 ),
        .I3(\osd_y1_r[10]_i_8_n_0 ),
        .I4(osd_y1_r3[0]),
        .I5(\osd_y0_r_reg[10]_0 [4]),
        .O(\osd_y1_r[7]_i_9_n_0 ));
  FDCE \osd_y1_r_reg[0] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[3]_i_1_n_7 ),
        .Q(osd_y1_r[0]));
  FDCE \osd_y1_r_reg[10] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[10]_i_1_n_5 ),
        .Q(osd_y1_r[10]));
  CARRY4 \osd_y1_r_reg[10]_i_1 
       (.CI(\osd_y1_r_reg[7]_i_1_n_0 ),
        .CO({\NLW_osd_y1_r_reg[10]_i_1_CO_UNCONNECTED [3:2],\osd_y1_r_reg[10]_i_1_n_2 ,\osd_y1_r_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\osd_y1_r[10]_i_2_n_0 ,\osd_y1_r[10]_i_3_n_0 }),
        .O({\NLW_osd_y1_r_reg[10]_i_1_O_UNCONNECTED [3],\osd_y1_r_reg[10]_i_1_n_5 ,\osd_y1_r_reg[10]_i_1_n_6 ,\osd_y1_r_reg[10]_i_1_n_7 }),
        .S({1'b0,\osd_y1_r[10]_i_4_n_0 ,\osd_y1_r[10]_i_5_n_0 ,\osd_y1_r[10]_i_6_n_0 }));
  CARRY4 \osd_y1_r_reg[10]_i_10 
       (.CI(\osd_y1_r_reg[10]_i_15_n_0 ),
        .CO({osd_y1_r3[11],\NLW_osd_y1_r_reg[10]_i_10_CO_UNCONNECTED [2],\osd_y1_r_reg[10]_i_10_n_2 ,\osd_y1_r_reg[10]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\osd_y0_r_reg[10]_0 [10:8]}),
        .O({\NLW_osd_y1_r_reg[10]_i_10_O_UNCONNECTED [3],osd_y1_r3[10:8]}),
        .S({1'b1,\osd_y1_r[10]_i_16_n_0 ,\osd_y1_r[10]_i_17_n_0 ,\osd_y1_r[10]_i_18_n_0 }));
  CARRY4 \osd_y1_r_reg[10]_i_15 
       (.CI(\osd_y1_r_reg[10]_i_7_n_0 ),
        .CO({\osd_y1_r_reg[10]_i_15_n_0 ,\osd_y1_r_reg[10]_i_15_n_1 ,\osd_y1_r_reg[10]_i_15_n_2 ,\osd_y1_r_reg[10]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI(\osd_y0_r_reg[10]_0 [7:4]),
        .O(osd_y1_r3[7:4]),
        .S({\osd_y1_r[10]_i_19_n_0 ,\osd_y1_r[10]_i_20_n_0 ,\osd_y1_r[10]_i_21_n_0 ,\osd_y1_r[10]_i_22_n_0 }));
  CARRY4 \osd_y1_r_reg[10]_i_7 
       (.CI(1'b0),
        .CO({\osd_y1_r_reg[10]_i_7_n_0 ,\osd_y1_r_reg[10]_i_7_n_1 ,\osd_y1_r_reg[10]_i_7_n_2 ,\osd_y1_r_reg[10]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(\osd_y0_r_reg[10]_0 [3:0]),
        .O(osd_y1_r3[3:0]),
        .S({\osd_y1_r[10]_i_11_n_0 ,\osd_y1_r[10]_i_12_n_0 ,\osd_y1_r[10]_i_13_n_0 ,\osd_y1_r[10]_i_14_n_0 }));
  FDCE \osd_y1_r_reg[1] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[3]_i_1_n_6 ),
        .Q(osd_y1_r[1]));
  FDCE \osd_y1_r_reg[2] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[3]_i_1_n_5 ),
        .Q(osd_y1_r[2]));
  FDCE \osd_y1_r_reg[3] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[3]_i_1_n_4 ),
        .Q(osd_y1_r[3]));
  CARRY4 \osd_y1_r_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\osd_y1_r_reg[3]_i_1_n_0 ,\osd_y1_r_reg[3]_i_1_n_1 ,\osd_y1_r_reg[3]_i_1_n_2 ,\osd_y1_r_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\osd_y1_r[3]_i_2_n_0 ,\osd_y1_r[3]_i_3_n_0 ,\osd_y1_r[3]_i_4_n_0 ,\osd_y1_r[3]_i_5_n_0 }),
        .O({\osd_y1_r_reg[3]_i_1_n_4 ,\osd_y1_r_reg[3]_i_1_n_5 ,\osd_y1_r_reg[3]_i_1_n_6 ,\osd_y1_r_reg[3]_i_1_n_7 }),
        .S({\osd_y1_r[3]_i_6_n_0 ,\osd_y1_r[3]_i_7_n_0 ,\osd_y1_r[3]_i_8_n_0 ,\osd_y1_r[3]_i_9_n_0 }));
  FDCE \osd_y1_r_reg[4] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[7]_i_1_n_7 ),
        .Q(osd_y1_r[4]));
  FDCE \osd_y1_r_reg[5] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[7]_i_1_n_6 ),
        .Q(osd_y1_r[5]));
  FDCE \osd_y1_r_reg[6] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[7]_i_1_n_5 ),
        .Q(osd_y1_r[6]));
  FDCE \osd_y1_r_reg[7] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[7]_i_1_n_4 ),
        .Q(osd_y1_r[7]));
  CARRY4 \osd_y1_r_reg[7]_i_1 
       (.CI(\osd_y1_r_reg[3]_i_1_n_0 ),
        .CO({\osd_y1_r_reg[7]_i_1_n_0 ,\osd_y1_r_reg[7]_i_1_n_1 ,\osd_y1_r_reg[7]_i_1_n_2 ,\osd_y1_r_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\osd_y1_r[7]_i_2_n_0 ,\osd_y1_r[7]_i_3_n_0 ,\osd_y1_r[7]_i_4_n_0 ,\osd_y1_r[7]_i_5_n_0 }),
        .O({\osd_y1_r_reg[7]_i_1_n_4 ,\osd_y1_r_reg[7]_i_1_n_5 ,\osd_y1_r_reg[7]_i_1_n_6 ,\osd_y1_r_reg[7]_i_1_n_7 }),
        .S({\osd_y1_r[7]_i_6_n_0 ,\osd_y1_r[7]_i_7_n_0 ,\osd_y1_r[7]_i_8_n_0 ,\osd_y1_r[7]_i_9_n_0 }));
  FDCE \osd_y1_r_reg[8] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[10]_i_1_n_7 ),
        .Q(osd_y1_r[8]));
  FDCE \osd_y1_r_reg[9] 
       (.C(CLK),
        .CE(pix_y_t112_out),
        .CLR(href_t1_i_2_n_0),
        .D(\osd_y1_r_reg[10]_i_1_n_6 ),
        .Q(osd_y1_r[9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    out_vsync_INST_0
       (.I0(osd_vsync),
        .I1(s_osd_en),
        .I2(crop_vsync_o),
        .O(out_vsync));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[0]_i_3 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[3]),
        .O(\pix_x_t1[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[0]_i_4 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[2]),
        .O(\pix_x_t1[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[0]_i_5 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[1]),
        .O(\pix_x_t1[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFD5)) 
    \pix_x_t1[0]_i_6 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[0]),
        .O(\pix_x_t1[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[4]_i_2 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[7]),
        .O(\pix_x_t1[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[4]_i_3 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[6]),
        .O(\pix_x_t1[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[4]_i_4 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[5]),
        .O(\pix_x_t1[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[4]_i_5 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[4]),
        .O(\pix_x_t1[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[8]_i_2 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[11]),
        .O(\pix_x_t1[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[8]_i_3 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[10]),
        .O(\pix_x_t1[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[8]_i_4 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[9]),
        .O(\pix_x_t1[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pix_x_t1[8]_i_5 
       (.I0(crop_href_o),
        .I1(\pix_y_t1_reg[0]_0 ),
        .I2(s_dscale_en),
        .I3(href_t1),
        .I4(pix_x_t1_reg[8]),
        .O(\pix_x_t1[8]_i_5_n_0 ));
  FDCE \pix_x_t1_reg[0] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[0]_i_1_n_7 ),
        .Q(pix_x_t1_reg[0]));
  CARRY4 \pix_x_t1_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pix_x_t1_reg[0]_i_1_n_0 ,\pix_x_t1_reg[0]_i_1_n_1 ,\pix_x_t1_reg[0]_i_1_n_2 ,\pix_x_t1_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\pix_x_t1_reg[0]_i_1_n_4 ,\pix_x_t1_reg[0]_i_1_n_5 ,\pix_x_t1_reg[0]_i_1_n_6 ,\pix_x_t1_reg[0]_i_1_n_7 }),
        .S({\pix_x_t1[0]_i_3_n_0 ,\pix_x_t1[0]_i_4_n_0 ,\pix_x_t1[0]_i_5_n_0 ,\pix_x_t1[0]_i_6_n_0 }));
  FDCE \pix_x_t1_reg[10] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[8]_i_1_n_5 ),
        .Q(pix_x_t1_reg[10]));
  FDCE \pix_x_t1_reg[11] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[8]_i_1_n_4 ),
        .Q(pix_x_t1_reg[11]));
  FDCE \pix_x_t1_reg[1] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[0]_i_1_n_6 ),
        .Q(pix_x_t1_reg[1]));
  FDCE \pix_x_t1_reg[2] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[0]_i_1_n_5 ),
        .Q(pix_x_t1_reg[2]));
  FDCE \pix_x_t1_reg[3] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[0]_i_1_n_4 ),
        .Q(pix_x_t1_reg[3]));
  FDCE \pix_x_t1_reg[4] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[4]_i_1_n_7 ),
        .Q(pix_x_t1_reg[4]));
  CARRY4 \pix_x_t1_reg[4]_i_1 
       (.CI(\pix_x_t1_reg[0]_i_1_n_0 ),
        .CO({\pix_x_t1_reg[4]_i_1_n_0 ,\pix_x_t1_reg[4]_i_1_n_1 ,\pix_x_t1_reg[4]_i_1_n_2 ,\pix_x_t1_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_x_t1_reg[4]_i_1_n_4 ,\pix_x_t1_reg[4]_i_1_n_5 ,\pix_x_t1_reg[4]_i_1_n_6 ,\pix_x_t1_reg[4]_i_1_n_7 }),
        .S({\pix_x_t1[4]_i_2_n_0 ,\pix_x_t1[4]_i_3_n_0 ,\pix_x_t1[4]_i_4_n_0 ,\pix_x_t1[4]_i_5_n_0 }));
  FDCE \pix_x_t1_reg[5] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[4]_i_1_n_6 ),
        .Q(pix_x_t1_reg[5]));
  FDCE \pix_x_t1_reg[6] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[4]_i_1_n_5 ),
        .Q(pix_x_t1_reg[6]));
  FDCE \pix_x_t1_reg[7] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[4]_i_1_n_4 ),
        .Q(pix_x_t1_reg[7]));
  FDCE \pix_x_t1_reg[8] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[8]_i_1_n_7 ),
        .Q(pix_x_t1_reg[8]));
  CARRY4 \pix_x_t1_reg[8]_i_1 
       (.CI(\pix_x_t1_reg[4]_i_1_n_0 ),
        .CO({\NLW_pix_x_t1_reg[8]_i_1_CO_UNCONNECTED [3],\pix_x_t1_reg[8]_i_1_n_1 ,\pix_x_t1_reg[8]_i_1_n_2 ,\pix_x_t1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_x_t1_reg[8]_i_1_n_4 ,\pix_x_t1_reg[8]_i_1_n_5 ,\pix_x_t1_reg[8]_i_1_n_6 ,\pix_x_t1_reg[8]_i_1_n_7 }),
        .S({\pix_x_t1[8]_i_2_n_0 ,\pix_x_t1[8]_i_3_n_0 ,\pix_x_t1[8]_i_4_n_0 ,\pix_x_t1[8]_i_5_n_0 }));
  FDCE \pix_x_t1_reg[9] 
       (.C(CLK),
        .CE(dscale_href_o),
        .CLR(href_t1_i_2_n_0),
        .D(\pix_x_t1_reg[8]_i_1_n_6 ),
        .Q(pix_x_t1_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \pix_y_t1[0]_i_1 
       (.I0(vsync_t1),
        .I1(crop_vsync_o),
        .I2(pix_y_t1_reg__0[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h80AA80AAFFFF80AA)) 
    \pix_y_t1[10]_i_1 
       (.I0(href_t1),
        .I1(s_dscale_en),
        .I2(\pix_y_t1_reg[0]_0 ),
        .I3(crop_href_o),
        .I4(vsync_t1),
        .I5(crop_vsync_o),
        .O(\pix_y_t1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pix_y_t1[10]_i_2 
       (.I0(\pix_y_t1_reg[4]_0 ),
        .I1(pix_y_t1_reg__0[10]),
        .I2(\pix_y_t1[10]_i_4_n_0 ),
        .I3(pix_y_t1_reg__0[8]),
        .I4(pix_y_t1_reg__0[9]),
        .I5(\pix_y_t1[10]_i_5_n_0 ),
        .O(p_0_in__0[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \pix_y_t1[10]_i_4 
       (.I0(pix_y_t1_reg__0[6]),
        .I1(pix_y_t1_reg__0[7]),
        .O(\pix_y_t1[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pix_y_t1[10]_i_5 
       (.I0(pix_y_t1_reg__0[5]),
        .I1(pix_y_t1_reg__0[4]),
        .I2(pix_y_t1_reg__0[0]),
        .I3(pix_y_t1_reg__0[1]),
        .I4(pix_y_t1_reg__0[2]),
        .I5(pix_y_t1_reg__0[3]),
        .O(\pix_y_t1[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0DD0)) 
    \pix_y_t1[1]_i_1 
       (.I0(vsync_t1),
        .I1(crop_vsync_o),
        .I2(pix_y_t1_reg__0[1]),
        .I3(pix_y_t1_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0DD0D0D0)) 
    \pix_y_t1[2]_i_1 
       (.I0(vsync_t1),
        .I1(crop_vsync_o),
        .I2(pix_y_t1_reg__0[2]),
        .I3(pix_y_t1_reg__0[0]),
        .I4(pix_y_t1_reg__0[1]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h0DD0D0D0D0D0D0D0)) 
    \pix_y_t1[3]_i_1 
       (.I0(vsync_t1),
        .I1(crop_vsync_o),
        .I2(pix_y_t1_reg__0[3]),
        .I3(pix_y_t1_reg__0[1]),
        .I4(pix_y_t1_reg__0[0]),
        .I5(pix_y_t1_reg__0[2]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pix_y_t1[4]_i_1 
       (.I0(\pix_y_t1_reg[4]_0 ),
        .I1(pix_y_t1_reg__0[4]),
        .I2(pix_y_t1_reg__0[3]),
        .I3(pix_y_t1_reg__0[2]),
        .I4(pix_y_t1_reg__0[1]),
        .I5(pix_y_t1_reg__0[0]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pix_y_t1[5]_i_1 
       (.I0(\pix_y_t1_reg[4]_0 ),
        .I1(pix_y_t1_reg__0[5]),
        .I2(\pix_y_t1[5]_i_2_n_0 ),
        .I3(pix_y_t1_reg__0[2]),
        .I4(pix_y_t1_reg__0[3]),
        .I5(pix_y_t1_reg__0[4]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \pix_y_t1[5]_i_2 
       (.I0(pix_y_t1_reg__0[0]),
        .I1(pix_y_t1_reg__0[1]),
        .O(\pix_y_t1[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0DD0)) 
    \pix_y_t1[6]_i_1 
       (.I0(vsync_t1),
        .I1(crop_vsync_o),
        .I2(pix_y_t1_reg__0[6]),
        .I3(\pix_y_t1[10]_i_5_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0DD0D0D0)) 
    \pix_y_t1[7]_i_1 
       (.I0(vsync_t1),
        .I1(crop_vsync_o),
        .I2(pix_y_t1_reg__0[7]),
        .I3(\pix_y_t1[10]_i_5_n_0 ),
        .I4(pix_y_t1_reg__0[6]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h0DD0D0D0D0D0D0D0)) 
    \pix_y_t1[8]_i_1 
       (.I0(vsync_t1),
        .I1(crop_vsync_o),
        .I2(pix_y_t1_reg__0[8]),
        .I3(pix_y_t1_reg__0[7]),
        .I4(pix_y_t1_reg__0[6]),
        .I5(\pix_y_t1[10]_i_5_n_0 ),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pix_y_t1[9]_i_1 
       (.I0(\pix_y_t1_reg[4]_0 ),
        .I1(pix_y_t1_reg__0[9]),
        .I2(pix_y_t1_reg__0[8]),
        .I3(pix_y_t1_reg__0[6]),
        .I4(pix_y_t1_reg__0[7]),
        .I5(\pix_y_t1[10]_i_5_n_0 ),
        .O(p_0_in__0[9]));
  FDCE \pix_y_t1_reg[0] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[0]),
        .Q(pix_y_t1_reg__0[0]));
  FDCE \pix_y_t1_reg[10] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[10]),
        .Q(pix_y_t1_reg__0[10]));
  FDCE \pix_y_t1_reg[1] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[1]),
        .Q(pix_y_t1_reg__0[1]));
  FDCE \pix_y_t1_reg[2] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[2]),
        .Q(pix_y_t1_reg__0[2]));
  FDCE \pix_y_t1_reg[3] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[3]),
        .Q(pix_y_t1_reg__0[3]));
  FDCE \pix_y_t1_reg[4] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[4]),
        .Q(pix_y_t1_reg__0[4]));
  FDCE \pix_y_t1_reg[5] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[5]),
        .Q(pix_y_t1_reg__0[5]));
  FDCE \pix_y_t1_reg[6] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[6]),
        .Q(pix_y_t1_reg__0[6]));
  FDCE \pix_y_t1_reg[7] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[7]),
        .Q(pix_y_t1_reg__0[7]));
  FDCE \pix_y_t1_reg[8] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[8]),
        .Q(pix_y_t1_reg__0[8]));
  FDCE \pix_y_t1_reg[9] 
       (.C(CLK),
        .CE(\pix_y_t1[10]_i_1_n_0 ),
        .CLR(href_t1_i_2_n_0),
        .D(p_0_in__0[9]),
        .Q(pix_y_t1_reg__0[9]));
  FDCE vsync_t1_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(crop_vsync_o),
        .Q(vsync_t1));
  FDCE vsync_t2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(vsync_t1),
        .Q(vsync_t2));
  FDCE vsync_t3_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t1_i_2_n_0),
        .D(vsync_t2),
        .Q(vsync_t3));
  FDCE vsync_t4_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(vsync_t3),
        .Q(vsync_t4));
  FDCE vsync_t5_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(vsync_t4),
        .Q(vsync_t5));
  FDCE vsync_t6_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(href_t6_i_1_n_0),
        .D(vsync_t5),
        .Q(osd_vsync));
endmodule

(* ORIG_REF_NAME = "vip_sobel" *) 
module design_1_xil_vip_0_0_vip_sobel
   (sobel_href,
    D,
    in_vsync,
    pclk,
    out_href,
    out_vsync,
    s_sobel_en,
    s_module_reset,
    rst_n,
    \in_r_reg[7] );
  output sobel_href;
  output [7:0]D;
  output in_vsync;
  input pclk;
  input out_href;
  input out_vsync;
  input s_sobel_en;
  input s_module_reset;
  input rst_n;
  input [7:0]\in_r_reg[7] ;

  wire [7:0]D;
  wire \g[10]_i_2_n_0 ;
  wire \g[10]_i_3_n_0 ;
  wire \g[3]_i_2_n_0 ;
  wire \g[3]_i_3_n_0 ;
  wire \g[3]_i_4_n_0 ;
  wire \g[3]_i_5_n_0 ;
  wire \g[7]_i_2_n_0 ;
  wire \g[7]_i_3_n_0 ;
  wire \g[7]_i_4_n_0 ;
  wire \g[7]_i_5_n_0 ;
  wire \g_reg[10]_i_1_n_1 ;
  wire \g_reg[10]_i_1_n_3 ;
  wire \g_reg[10]_i_1_n_6 ;
  wire \g_reg[10]_i_1_n_7 ;
  wire \g_reg[3]_i_1_n_0 ;
  wire \g_reg[3]_i_1_n_1 ;
  wire \g_reg[3]_i_1_n_2 ;
  wire \g_reg[3]_i_1_n_3 ;
  wire \g_reg[3]_i_1_n_4 ;
  wire \g_reg[3]_i_1_n_5 ;
  wire \g_reg[3]_i_1_n_6 ;
  wire \g_reg[3]_i_1_n_7 ;
  wire \g_reg[7]_i_1_n_0 ;
  wire \g_reg[7]_i_1_n_1 ;
  wire \g_reg[7]_i_1_n_2 ;
  wire \g_reg[7]_i_1_n_3 ;
  wire \g_reg[7]_i_1_n_4 ;
  wire \g_reg[7]_i_1_n_5 ;
  wire \g_reg[7]_i_1_n_6 ;
  wire \g_reg[7]_i_1_n_7 ;
  wire \g_reg_n_0_[0] ;
  wire \g_reg_n_0_[10] ;
  wire \g_reg_n_0_[1] ;
  wire \g_reg_n_0_[2] ;
  wire \g_reg_n_0_[3] ;
  wire \g_reg_n_0_[4] ;
  wire \g_reg_n_0_[5] ;
  wire \g_reg_n_0_[6] ;
  wire \g_reg_n_0_[7] ;
  wire \g_reg_n_0_[8] ;
  wire \g_reg_n_0_[9] ;
  wire [9:0]gx;
  wire [9:0]gx0;
  wire gx0_carry__0_i_1_n_0;
  wire gx0_carry__0_i_2_n_0;
  wire gx0_carry__0_i_3_n_0;
  wire gx0_carry__0_i_4_n_0;
  wire gx0_carry__0_i_5_n_0;
  wire gx0_carry__0_i_6_n_0;
  wire gx0_carry__0_i_7_n_0;
  wire gx0_carry__0_i_8_n_0;
  wire gx0_carry__0_n_0;
  wire gx0_carry__0_n_1;
  wire gx0_carry__0_n_2;
  wire gx0_carry__0_n_3;
  wire gx0_carry__1_i_1_n_0;
  wire gx0_carry__1_i_2_n_0;
  wire gx0_carry__1_i_3_n_0;
  wire gx0_carry__1_n_3;
  wire gx0_carry_i_1_n_0;
  wire gx0_carry_i_2_n_0;
  wire gx0_carry_i_3_n_0;
  wire gx0_carry_i_4_n_0;
  wire gx0_carry_i_5_n_0;
  wire gx0_carry_i_6_n_0;
  wire gx0_carry_i_7_n_0;
  wire gx0_carry_i_8_n_0;
  wire gx0_carry_n_0;
  wire gx0_carry_n_1;
  wire gx0_carry_n_2;
  wire gx0_carry_n_3;
  wire [9:0]gx1;
  wire gx10__1_carry__0_i_1_n_0;
  wire gx10__1_carry__0_i_2_n_0;
  wire gx10__1_carry__0_i_3_n_0;
  wire gx10__1_carry__0_i_4_n_0;
  wire gx10__1_carry__0_i_5_n_0;
  wire gx10__1_carry__0_i_6_n_0;
  wire gx10__1_carry__0_i_7_n_0;
  wire gx10__1_carry__0_i_8_n_0;
  wire gx10__1_carry__0_n_0;
  wire gx10__1_carry__0_n_1;
  wire gx10__1_carry__0_n_2;
  wire gx10__1_carry__0_n_3;
  wire gx10__1_carry__0_n_4;
  wire gx10__1_carry__0_n_5;
  wire gx10__1_carry__0_n_6;
  wire gx10__1_carry__0_n_7;
  wire gx10__1_carry__1_i_1_n_0;
  wire gx10__1_carry__1_n_2;
  wire gx10__1_carry__1_n_7;
  wire gx10__1_carry_i_1_n_0;
  wire gx10__1_carry_i_2_n_0;
  wire gx10__1_carry_i_3_n_0;
  wire gx10__1_carry_i_4_n_0;
  wire gx10__1_carry_i_5_n_0;
  wire gx10__1_carry_i_6_n_0;
  wire gx10__1_carry_n_0;
  wire gx10__1_carry_n_1;
  wire gx10__1_carry_n_2;
  wire gx10__1_carry_n_3;
  wire gx10__1_carry_n_4;
  wire gx10__1_carry_n_5;
  wire gx10__1_carry_n_6;
  wire gx10__1_carry_n_7;
  wire [8:1]gx12;
  wire gx2;
  wire gx2_carry__0_i_1_n_0;
  wire gx2_carry__0_i_2_n_0;
  wire gx2_carry_i_1_n_0;
  wire gx2_carry_i_2_n_0;
  wire gx2_carry_i_3_n_0;
  wire gx2_carry_i_4_n_0;
  wire gx2_carry_i_5_n_0;
  wire gx2_carry_i_6_n_0;
  wire gx2_carry_i_7_n_0;
  wire gx2_carry_i_8_n_0;
  wire gx2_carry_n_0;
  wire gx2_carry_n_1;
  wire gx2_carry_n_2;
  wire gx2_carry_n_3;
  wire [9:0]gx3;
  wire gx30__1_carry__0_i_1_n_0;
  wire gx30__1_carry__0_i_2_n_0;
  wire gx30__1_carry__0_i_3_n_0;
  wire gx30__1_carry__0_i_4_n_0;
  wire gx30__1_carry__0_i_5_n_0;
  wire gx30__1_carry__0_i_6_n_0;
  wire gx30__1_carry__0_i_7_n_0;
  wire gx30__1_carry__0_i_8_n_0;
  wire gx30__1_carry__0_n_0;
  wire gx30__1_carry__0_n_1;
  wire gx30__1_carry__0_n_2;
  wire gx30__1_carry__0_n_3;
  wire gx30__1_carry__0_n_4;
  wire gx30__1_carry__0_n_5;
  wire gx30__1_carry__0_n_6;
  wire gx30__1_carry__0_n_7;
  wire gx30__1_carry__1_i_1_n_0;
  wire gx30__1_carry__1_n_2;
  wire gx30__1_carry__1_n_7;
  wire gx30__1_carry_i_1_n_0;
  wire gx30__1_carry_i_2_n_0;
  wire gx30__1_carry_i_3_n_0;
  wire gx30__1_carry_i_4_n_0;
  wire gx30__1_carry_i_5_n_0;
  wire gx30__1_carry_i_6_n_0;
  wire gx30__1_carry_n_0;
  wire gx30__1_carry_n_1;
  wire gx30__1_carry_n_2;
  wire gx30__1_carry_n_3;
  wire gx30__1_carry_n_4;
  wire gx30__1_carry_n_5;
  wire gx30__1_carry_n_6;
  wire gx30__1_carry_n_7;
  wire [8:1]gx32;
  wire [9:0]gy;
  wire [9:0]gy0;
  wire gy0_carry__0_i_5_n_0;
  wire gy0_carry__0_i_6_n_0;
  wire gy0_carry__0_i_7_n_0;
  wire gy0_carry__0_i_8_n_0;
  wire gy0_carry__0_n_0;
  wire gy0_carry__0_n_1;
  wire gy0_carry__0_n_2;
  wire gy0_carry__0_n_3;
  wire gy0_carry__1_i_2_n_0;
  wire gy0_carry__1_i_3_n_0;
  wire gy0_carry__1_n_3;
  wire gy0_carry_i_5_n_0;
  wire gy0_carry_i_6_n_0;
  wire gy0_carry_i_7_n_0;
  wire gy0_carry_i_8_n_0;
  wire gy0_carry_n_0;
  wire gy0_carry_n_1;
  wire gy0_carry_n_2;
  wire gy0_carry_n_3;
  wire [9:0]gy1;
  wire gy10__1_carry__0_i_1_n_0;
  wire gy10__1_carry__0_i_2_n_0;
  wire gy10__1_carry__0_i_3_n_0;
  wire gy10__1_carry__0_i_4_n_0;
  wire gy10__1_carry__0_i_5_n_0;
  wire gy10__1_carry__0_i_6_n_0;
  wire gy10__1_carry__0_i_7_n_0;
  wire gy10__1_carry__0_i_8_n_0;
  wire gy10__1_carry__0_n_0;
  wire gy10__1_carry__0_n_1;
  wire gy10__1_carry__0_n_2;
  wire gy10__1_carry__0_n_3;
  wire gy10__1_carry__0_n_4;
  wire gy10__1_carry__0_n_5;
  wire gy10__1_carry__0_n_6;
  wire gy10__1_carry__0_n_7;
  wire gy10__1_carry__1_i_1_n_0;
  wire gy10__1_carry__1_n_2;
  wire gy10__1_carry__1_n_7;
  wire gy10__1_carry_i_1_n_0;
  wire gy10__1_carry_i_2_n_0;
  wire gy10__1_carry_i_3_n_0;
  wire gy10__1_carry_i_4_n_0;
  wire gy10__1_carry_i_5_n_0;
  wire gy10__1_carry_i_6_n_0;
  wire gy10__1_carry_n_0;
  wire gy10__1_carry_n_1;
  wire gy10__1_carry_n_2;
  wire gy10__1_carry_n_3;
  wire gy10__1_carry_n_4;
  wire gy10__1_carry_n_5;
  wire gy10__1_carry_n_6;
  wire gy10__1_carry_n_7;
  wire [8:1]gy12;
  wire gy2;
  wire gy2_carry__0_i_1_n_0;
  wire gy2_carry__0_i_2_n_0;
  wire gy2_carry_i_1_n_0;
  wire gy2_carry_i_2_n_0;
  wire gy2_carry_i_3_n_0;
  wire gy2_carry_i_4_n_0;
  wire gy2_carry_i_5_n_0;
  wire gy2_carry_i_6_n_0;
  wire gy2_carry_i_7_n_0;
  wire gy2_carry_i_8_n_0;
  wire gy2_carry_n_0;
  wire gy2_carry_n_1;
  wire gy2_carry_n_2;
  wire gy2_carry_n_3;
  wire [9:0]gy3;
  wire gy30__1_carry__0_i_1_n_0;
  wire gy30__1_carry__0_i_2_n_0;
  wire gy30__1_carry__0_i_3_n_0;
  wire gy30__1_carry__0_i_4_n_0;
  wire gy30__1_carry__0_i_5_n_0;
  wire gy30__1_carry__0_i_6_n_0;
  wire gy30__1_carry__0_i_7_n_0;
  wire gy30__1_carry__0_i_8_n_0;
  wire gy30__1_carry__0_n_0;
  wire gy30__1_carry__0_n_1;
  wire gy30__1_carry__0_n_2;
  wire gy30__1_carry__0_n_3;
  wire gy30__1_carry__1_i_1_n_0;
  wire gy30__1_carry_i_1_n_0;
  wire gy30__1_carry_i_2_n_0;
  wire gy30__1_carry_i_3_n_0;
  wire gy30__1_carry_i_4_n_0;
  wire gy30__1_carry_i_5_n_0;
  wire gy30__1_carry_i_6_n_0;
  wire gy30__1_carry_n_0;
  wire gy30__1_carry_n_1;
  wire gy30__1_carry_n_2;
  wire gy30__1_carry_n_3;
  wire [8:1]gy32;
  wire \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ;
  wire \href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ;
  wire href_dly_reg_c_0_n_0;
  wire href_dly_reg_c_1_n_0;
  wire href_dly_reg_c_2_n_0;
  wire href_dly_reg_c_3_n_0;
  wire href_dly_reg_c_4_n_0;
  wire href_dly_reg_c_n_0;
  wire href_dly_reg_gate_n_0;
  wire [7:0]\in_r_reg[7] ;
  wire in_vsync;
  wire line2buf_n_0;
  wire line2buf_n_1;
  wire line2buf_n_2;
  wire line2buf_n_3;
  wire line2buf_n_4;
  wire line2buf_n_5;
  wire line2buf_n_6;
  wire line2buf_n_7;
  wire [7:0]out;
  wire \out[0]_i_1_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[3]_i_1_n_0 ;
  wire \out[4]_i_1_n_0 ;
  wire \out[5]_i_1_n_0 ;
  wire \out[6]_i_1_n_0 ;
  wire \out[7]_i_1_n_0 ;
  wire out_href;
  wire out_vsync;
  wire [7:0]p11;
  wire [7:0]p13;
  wire [7:0]p22;
  wire [7:0]p31;
  wire \p31[7]_i_1_n_0 ;
  wire [7:0]p33;
  wire [9:0]p_0_in;
  wire [8:0]p_1_in;
  wire pclk;
  wire rst_n;
  wire s_module_reset;
  wire s_sobel_en;
  wire sobel_href;
  wire sobel_vsync;
  wire [7:0]tap1x;
  wire \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ;
  wire \vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ;
  wire vsync_dly_reg_gate_n_0;
  wire [3:1]\NLW_g_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_reg[10]_i_1_O_UNCONNECTED ;
  wire [3:1]NLW_gx0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_gx0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gx10__1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_gx10__1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gx2_carry_O_UNCONNECTED;
  wire [3:1]NLW_gx2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_gx2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_gx30__1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_gx30__1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_gy0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_gy0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gy10__1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_gy10__1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gy2_carry_O_UNCONNECTED;
  wire [3:1]NLW_gy2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_gy2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_gy30__1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_gy30__1_carry__1_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[16]_i_1 
       (.I0(out[0]),
        .I1(sobel_href),
        .I2(s_sobel_en),
        .I3(\in_r_reg[7] [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[17]_i_1 
       (.I0(out[1]),
        .I1(sobel_href),
        .I2(s_sobel_en),
        .I3(\in_r_reg[7] [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[18]_i_1 
       (.I0(out[2]),
        .I1(sobel_href),
        .I2(s_sobel_en),
        .I3(\in_r_reg[7] [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[19]_i_1 
       (.I0(out[3]),
        .I1(sobel_href),
        .I2(s_sobel_en),
        .I3(\in_r_reg[7] [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[20]_i_1 
       (.I0(out[4]),
        .I1(sobel_href),
        .I2(s_sobel_en),
        .I3(\in_r_reg[7] [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[21]_i_1 
       (.I0(out[5]),
        .I1(sobel_href),
        .I2(s_sobel_en),
        .I3(\in_r_reg[7] [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[22]_i_1 
       (.I0(out[6]),
        .I1(sobel_href),
        .I2(s_sobel_en),
        .I3(\in_r_reg[7] [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[23]_i_1 
       (.I0(out[7]),
        .I1(sobel_href),
        .I2(s_sobel_en),
        .I3(\in_r_reg[7] [7]),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \g[10]_i_2 
       (.I0(gx[9]),
        .I1(gy[9]),
        .O(\g[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[10]_i_3 
       (.I0(gx[8]),
        .I1(gy[8]),
        .O(\g[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[3]_i_2 
       (.I0(gx[3]),
        .I1(gy[3]),
        .O(\g[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[3]_i_3 
       (.I0(gx[2]),
        .I1(gy[2]),
        .O(\g[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[3]_i_4 
       (.I0(gx[1]),
        .I1(gy[1]),
        .O(\g[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[3]_i_5 
       (.I0(gx[0]),
        .I1(gy[0]),
        .O(\g[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[7]_i_2 
       (.I0(gx[7]),
        .I1(gy[7]),
        .O(\g[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[7]_i_3 
       (.I0(gx[6]),
        .I1(gy[6]),
        .O(\g[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[7]_i_4 
       (.I0(gx[5]),
        .I1(gy[5]),
        .O(\g[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[7]_i_5 
       (.I0(gx[4]),
        .I1(gy[4]),
        .O(\g[7]_i_5_n_0 ));
  FDCE \g_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[3]_i_1_n_7 ),
        .Q(\g_reg_n_0_[0] ));
  FDCE \g_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[10]_i_1_n_1 ),
        .Q(\g_reg_n_0_[10] ));
  CARRY4 \g_reg[10]_i_1 
       (.CI(\g_reg[7]_i_1_n_0 ),
        .CO({\NLW_g_reg[10]_i_1_CO_UNCONNECTED [3],\g_reg[10]_i_1_n_1 ,\NLW_g_reg[10]_i_1_CO_UNCONNECTED [1],\g_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,gx[9:8]}),
        .O({\NLW_g_reg[10]_i_1_O_UNCONNECTED [3:2],\g_reg[10]_i_1_n_6 ,\g_reg[10]_i_1_n_7 }),
        .S({1'b0,1'b1,\g[10]_i_2_n_0 ,\g[10]_i_3_n_0 }));
  FDCE \g_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[3]_i_1_n_6 ),
        .Q(\g_reg_n_0_[1] ));
  FDCE \g_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[3]_i_1_n_5 ),
        .Q(\g_reg_n_0_[2] ));
  FDCE \g_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[3]_i_1_n_4 ),
        .Q(\g_reg_n_0_[3] ));
  CARRY4 \g_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\g_reg[3]_i_1_n_0 ,\g_reg[3]_i_1_n_1 ,\g_reg[3]_i_1_n_2 ,\g_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(gx[3:0]),
        .O({\g_reg[3]_i_1_n_4 ,\g_reg[3]_i_1_n_5 ,\g_reg[3]_i_1_n_6 ,\g_reg[3]_i_1_n_7 }),
        .S({\g[3]_i_2_n_0 ,\g[3]_i_3_n_0 ,\g[3]_i_4_n_0 ,\g[3]_i_5_n_0 }));
  FDCE \g_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[7]_i_1_n_7 ),
        .Q(\g_reg_n_0_[4] ));
  FDCE \g_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[7]_i_1_n_6 ),
        .Q(\g_reg_n_0_[5] ));
  FDCE \g_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[7]_i_1_n_5 ),
        .Q(\g_reg_n_0_[6] ));
  FDCE \g_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[7]_i_1_n_4 ),
        .Q(\g_reg_n_0_[7] ));
  CARRY4 \g_reg[7]_i_1 
       (.CI(\g_reg[3]_i_1_n_0 ),
        .CO({\g_reg[7]_i_1_n_0 ,\g_reg[7]_i_1_n_1 ,\g_reg[7]_i_1_n_2 ,\g_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(gx[7:4]),
        .O({\g_reg[7]_i_1_n_4 ,\g_reg[7]_i_1_n_5 ,\g_reg[7]_i_1_n_6 ,\g_reg[7]_i_1_n_7 }),
        .S({\g[7]_i_2_n_0 ,\g[7]_i_3_n_0 ,\g[7]_i_4_n_0 ,\g[7]_i_5_n_0 }));
  FDCE \g_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[10]_i_1_n_7 ),
        .Q(\g_reg_n_0_[8] ));
  FDCE \g_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[10]_i_1_n_6 ),
        .Q(\g_reg_n_0_[9] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 gx0_carry
       (.CI(1'b0),
        .CO({gx0_carry_n_0,gx0_carry_n_1,gx0_carry_n_2,gx0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({gx0_carry_i_1_n_0,gx0_carry_i_2_n_0,gx0_carry_i_3_n_0,gx0_carry_i_4_n_0}),
        .O(gx0[3:0]),
        .S({gx0_carry_i_5_n_0,gx0_carry_i_6_n_0,gx0_carry_i_7_n_0,gx0_carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 gx0_carry__0
       (.CI(gx0_carry_n_0),
        .CO({gx0_carry__0_n_0,gx0_carry__0_n_1,gx0_carry__0_n_2,gx0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gx0_carry__0_i_1_n_0,gx0_carry__0_i_2_n_0,gx0_carry__0_i_3_n_0,gx0_carry__0_i_4_n_0}),
        .O(gx0[7:4]),
        .S({gx0_carry__0_i_5_n_0,gx0_carry__0_i_6_n_0,gx0_carry__0_i_7_n_0,gx0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h53)) 
    gx0_carry__0_i_1
       (.I0(gx3[7]),
        .I1(gx1[7]),
        .I2(gx2),
        .O(gx0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    gx0_carry__0_i_2
       (.I0(gx3[6]),
        .I1(gx1[6]),
        .I2(gx2),
        .O(gx0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    gx0_carry__0_i_3
       (.I0(gx3[5]),
        .I1(gx1[5]),
        .I2(gx2),
        .O(gx0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    gx0_carry__0_i_4
       (.I0(gx3[4]),
        .I1(gx1[4]),
        .I2(gx2),
        .O(gx0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gx0_carry__0_i_5
       (.I0(gx3[7]),
        .I1(gx1[7]),
        .O(gx0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gx0_carry__0_i_6
       (.I0(gx3[6]),
        .I1(gx1[6]),
        .O(gx0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gx0_carry__0_i_7
       (.I0(gx3[5]),
        .I1(gx1[5]),
        .O(gx0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gx0_carry__0_i_8
       (.I0(gx3[4]),
        .I1(gx1[4]),
        .O(gx0_carry__0_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 gx0_carry__1
       (.CI(gx0_carry__0_n_0),
        .CO({NLW_gx0_carry__1_CO_UNCONNECTED[3:1],gx0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gx0_carry__1_i_1_n_0}),
        .O({NLW_gx0_carry__1_O_UNCONNECTED[3:2],gx0[9:8]}),
        .S({1'b0,1'b0,gx0_carry__1_i_2_n_0,gx0_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h53)) 
    gx0_carry__1_i_1
       (.I0(gx3[8]),
        .I1(gx1[8]),
        .I2(gx2),
        .O(gx0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gx0_carry__1_i_2
       (.I0(gx3[9]),
        .I1(gx1[9]),
        .O(gx0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gx0_carry__1_i_3
       (.I0(gx3[8]),
        .I1(gx1[8]),
        .O(gx0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    gx0_carry_i_1
       (.I0(gx3[3]),
        .I1(gx1[3]),
        .I2(gx2),
        .O(gx0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    gx0_carry_i_2
       (.I0(gx3[2]),
        .I1(gx1[2]),
        .I2(gx2),
        .O(gx0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    gx0_carry_i_3
       (.I0(gx3[1]),
        .I1(gx1[1]),
        .I2(gx2),
        .O(gx0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    gx0_carry_i_4
       (.I0(gx3[0]),
        .I1(gx1[0]),
        .I2(gx2),
        .O(gx0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gx0_carry_i_5
       (.I0(gx3[3]),
        .I1(gx1[3]),
        .O(gx0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gx0_carry_i_6
       (.I0(gx3[2]),
        .I1(gx1[2]),
        .O(gx0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gx0_carry_i_7
       (.I0(gx3[1]),
        .I1(gx1[1]),
        .O(gx0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gx0_carry_i_8
       (.I0(gx3[0]),
        .I1(gx1[0]),
        .O(gx0_carry_i_8_n_0));
  CARRY4 gx10__1_carry
       (.CI(1'b0),
        .CO({gx10__1_carry_n_0,gx10__1_carry_n_1,gx10__1_carry_n_2,gx10__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gx10__1_carry_i_1_n_0,gx10__1_carry_i_2_n_0,p11[1:0]}),
        .O({gx10__1_carry_n_4,gx10__1_carry_n_5,gx10__1_carry_n_6,gx10__1_carry_n_7}),
        .S({gx10__1_carry_i_3_n_0,gx10__1_carry_i_4_n_0,gx10__1_carry_i_5_n_0,gx10__1_carry_i_6_n_0}));
  CARRY4 gx10__1_carry__0
       (.CI(gx10__1_carry_n_0),
        .CO({gx10__1_carry__0_n_0,gx10__1_carry__0_n_1,gx10__1_carry__0_n_2,gx10__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gx10__1_carry__0_i_1_n_0,gx10__1_carry__0_i_2_n_0,gx10__1_carry__0_i_3_n_0,gx10__1_carry__0_i_4_n_0}),
        .O({gx10__1_carry__0_n_4,gx10__1_carry__0_n_5,gx10__1_carry__0_n_6,gx10__1_carry__0_n_7}),
        .S({gx10__1_carry__0_i_5_n_0,gx10__1_carry__0_i_6_n_0,gx10__1_carry__0_i_7_n_0,gx10__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gx10__1_carry__0_i_1
       (.I0(gx12[6]),
        .I1(p31[6]),
        .I2(p11[6]),
        .O(gx10__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gx10__1_carry__0_i_2
       (.I0(gx12[5]),
        .I1(p31[5]),
        .I2(p11[5]),
        .O(gx10__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gx10__1_carry__0_i_3
       (.I0(gx12[4]),
        .I1(p31[4]),
        .I2(p11[4]),
        .O(gx10__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gx10__1_carry__0_i_4
       (.I0(gx12[3]),
        .I1(p31[3]),
        .I2(p11[3]),
        .O(gx10__1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gx10__1_carry__0_i_5
       (.I0(gx10__1_carry__0_i_1_n_0),
        .I1(p31[7]),
        .I2(gx12[7]),
        .I3(p11[7]),
        .O(gx10__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gx10__1_carry__0_i_6
       (.I0(gx12[6]),
        .I1(p31[6]),
        .I2(p11[6]),
        .I3(gx10__1_carry__0_i_2_n_0),
        .O(gx10__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gx10__1_carry__0_i_7
       (.I0(gx12[5]),
        .I1(p31[5]),
        .I2(p11[5]),
        .I3(gx10__1_carry__0_i_3_n_0),
        .O(gx10__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gx10__1_carry__0_i_8
       (.I0(gx12[4]),
        .I1(p31[4]),
        .I2(p11[4]),
        .I3(gx10__1_carry__0_i_4_n_0),
        .O(gx10__1_carry__0_i_8_n_0));
  CARRY4 gx10__1_carry__1
       (.CI(gx10__1_carry__0_n_0),
        .CO({NLW_gx10__1_carry__1_CO_UNCONNECTED[3:2],gx10__1_carry__1_n_2,NLW_gx10__1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gx12[8]}),
        .O({NLW_gx10__1_carry__1_O_UNCONNECTED[3:1],gx10__1_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,gx10__1_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h17E8)) 
    gx10__1_carry__1_i_1
       (.I0(p11[7]),
        .I1(p31[7]),
        .I2(gx12[7]),
        .I3(gx12[8]),
        .O(gx10__1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gx10__1_carry_i_1
       (.I0(gx12[2]),
        .I1(p31[2]),
        .I2(p11[2]),
        .O(gx10__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gx10__1_carry_i_2
       (.I0(p11[2]),
        .I1(gx12[2]),
        .I2(p31[2]),
        .O(gx10__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gx10__1_carry_i_3
       (.I0(gx12[3]),
        .I1(p31[3]),
        .I2(p11[3]),
        .I3(gx10__1_carry_i_1_n_0),
        .O(gx10__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    gx10__1_carry_i_4
       (.I0(gx12[2]),
        .I1(p31[2]),
        .I2(p11[2]),
        .I3(p31[1]),
        .I4(gx12[1]),
        .O(gx10__1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gx10__1_carry_i_5
       (.I0(gx12[1]),
        .I1(p31[1]),
        .I2(p11[1]),
        .O(gx10__1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gx10__1_carry_i_6
       (.I0(p11[0]),
        .I1(p31[0]),
        .O(gx10__1_carry_i_6_n_0));
  FDCE \gx1_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx10__1_carry_n_7),
        .Q(gx1[0]));
  FDCE \gx1_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx10__1_carry_n_6),
        .Q(gx1[1]));
  FDCE \gx1_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx10__1_carry_n_5),
        .Q(gx1[2]));
  FDCE \gx1_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx10__1_carry_n_4),
        .Q(gx1[3]));
  FDCE \gx1_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx10__1_carry__0_n_7),
        .Q(gx1[4]));
  FDCE \gx1_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx10__1_carry__0_n_6),
        .Q(gx1[5]));
  FDCE \gx1_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx10__1_carry__0_n_5),
        .Q(gx1[6]));
  FDCE \gx1_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx10__1_carry__0_n_4),
        .Q(gx1[7]));
  FDCE \gx1_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx10__1_carry__1_n_7),
        .Q(gx1[8]));
  FDCE \gx1_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx10__1_carry__1_n_2),
        .Q(gx1[9]));
  CARRY4 gx2_carry
       (.CI(1'b0),
        .CO({gx2_carry_n_0,gx2_carry_n_1,gx2_carry_n_2,gx2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gx2_carry_i_1_n_0,gx2_carry_i_2_n_0,gx2_carry_i_3_n_0,gx2_carry_i_4_n_0}),
        .O(NLW_gx2_carry_O_UNCONNECTED[3:0]),
        .S({gx2_carry_i_5_n_0,gx2_carry_i_6_n_0,gx2_carry_i_7_n_0,gx2_carry_i_8_n_0}));
  CARRY4 gx2_carry__0
       (.CI(gx2_carry_n_0),
        .CO({NLW_gx2_carry__0_CO_UNCONNECTED[3:1],gx2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gx2_carry__0_i_1_n_0}),
        .O(NLW_gx2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,gx2_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gx2_carry__0_i_1
       (.I0(gx1[8]),
        .I1(gx3[8]),
        .I2(gx3[9]),
        .I3(gx1[9]),
        .O(gx2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gx2_carry__0_i_2
       (.I0(gx1[8]),
        .I1(gx3[8]),
        .I2(gx1[9]),
        .I3(gx3[9]),
        .O(gx2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gx2_carry_i_1
       (.I0(gx1[6]),
        .I1(gx3[6]),
        .I2(gx3[7]),
        .I3(gx1[7]),
        .O(gx2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gx2_carry_i_2
       (.I0(gx1[4]),
        .I1(gx3[4]),
        .I2(gx3[5]),
        .I3(gx1[5]),
        .O(gx2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gx2_carry_i_3
       (.I0(gx1[2]),
        .I1(gx3[2]),
        .I2(gx3[3]),
        .I3(gx1[3]),
        .O(gx2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gx2_carry_i_4
       (.I0(gx1[0]),
        .I1(gx3[0]),
        .I2(gx3[1]),
        .I3(gx1[1]),
        .O(gx2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gx2_carry_i_5
       (.I0(gx1[6]),
        .I1(gx3[6]),
        .I2(gx1[7]),
        .I3(gx3[7]),
        .O(gx2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gx2_carry_i_6
       (.I0(gx1[4]),
        .I1(gx3[4]),
        .I2(gx1[5]),
        .I3(gx3[5]),
        .O(gx2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gx2_carry_i_7
       (.I0(gx1[2]),
        .I1(gx3[2]),
        .I2(gx1[3]),
        .I3(gx3[3]),
        .O(gx2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gx2_carry_i_8
       (.I0(gx1[0]),
        .I1(gx3[0]),
        .I2(gx1[1]),
        .I3(gx3[1]),
        .O(gx2_carry_i_8_n_0));
  CARRY4 gx30__1_carry
       (.CI(1'b0),
        .CO({gx30__1_carry_n_0,gx30__1_carry_n_1,gx30__1_carry_n_2,gx30__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gx30__1_carry_i_1_n_0,gx30__1_carry_i_2_n_0,p13[1:0]}),
        .O({gx30__1_carry_n_4,gx30__1_carry_n_5,gx30__1_carry_n_6,gx30__1_carry_n_7}),
        .S({gx30__1_carry_i_3_n_0,gx30__1_carry_i_4_n_0,gx30__1_carry_i_5_n_0,gx30__1_carry_i_6_n_0}));
  CARRY4 gx30__1_carry__0
       (.CI(gx30__1_carry_n_0),
        .CO({gx30__1_carry__0_n_0,gx30__1_carry__0_n_1,gx30__1_carry__0_n_2,gx30__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gx30__1_carry__0_i_1_n_0,gx30__1_carry__0_i_2_n_0,gx30__1_carry__0_i_3_n_0,gx30__1_carry__0_i_4_n_0}),
        .O({gx30__1_carry__0_n_4,gx30__1_carry__0_n_5,gx30__1_carry__0_n_6,gx30__1_carry__0_n_7}),
        .S({gx30__1_carry__0_i_5_n_0,gx30__1_carry__0_i_6_n_0,gx30__1_carry__0_i_7_n_0,gx30__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gx30__1_carry__0_i_1
       (.I0(gx32[6]),
        .I1(p33[6]),
        .I2(p13[6]),
        .O(gx30__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gx30__1_carry__0_i_2
       (.I0(gx32[5]),
        .I1(p33[5]),
        .I2(p13[5]),
        .O(gx30__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gx30__1_carry__0_i_3
       (.I0(gx32[4]),
        .I1(p33[4]),
        .I2(p13[4]),
        .O(gx30__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gx30__1_carry__0_i_4
       (.I0(gx32[3]),
        .I1(p33[3]),
        .I2(p13[3]),
        .O(gx30__1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gx30__1_carry__0_i_5
       (.I0(gx30__1_carry__0_i_1_n_0),
        .I1(p33[7]),
        .I2(gx32[7]),
        .I3(p13[7]),
        .O(gx30__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gx30__1_carry__0_i_6
       (.I0(gx32[6]),
        .I1(p33[6]),
        .I2(p13[6]),
        .I3(gx30__1_carry__0_i_2_n_0),
        .O(gx30__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gx30__1_carry__0_i_7
       (.I0(gx32[5]),
        .I1(p33[5]),
        .I2(p13[5]),
        .I3(gx30__1_carry__0_i_3_n_0),
        .O(gx30__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gx30__1_carry__0_i_8
       (.I0(gx32[4]),
        .I1(p33[4]),
        .I2(p13[4]),
        .I3(gx30__1_carry__0_i_4_n_0),
        .O(gx30__1_carry__0_i_8_n_0));
  CARRY4 gx30__1_carry__1
       (.CI(gx30__1_carry__0_n_0),
        .CO({NLW_gx30__1_carry__1_CO_UNCONNECTED[3:2],gx30__1_carry__1_n_2,NLW_gx30__1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gx32[8]}),
        .O({NLW_gx30__1_carry__1_O_UNCONNECTED[3:1],gx30__1_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,gx30__1_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h17E8)) 
    gx30__1_carry__1_i_1
       (.I0(p13[7]),
        .I1(p33[7]),
        .I2(gx32[7]),
        .I3(gx32[8]),
        .O(gx30__1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gx30__1_carry_i_1
       (.I0(gx32[2]),
        .I1(p33[2]),
        .I2(p13[2]),
        .O(gx30__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gx30__1_carry_i_2
       (.I0(p13[2]),
        .I1(gx32[2]),
        .I2(p33[2]),
        .O(gx30__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gx30__1_carry_i_3
       (.I0(gx32[3]),
        .I1(p33[3]),
        .I2(p13[3]),
        .I3(gx30__1_carry_i_1_n_0),
        .O(gx30__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    gx30__1_carry_i_4
       (.I0(gx32[2]),
        .I1(p33[2]),
        .I2(p13[2]),
        .I3(p33[1]),
        .I4(gx32[1]),
        .O(gx30__1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gx30__1_carry_i_5
       (.I0(gx32[1]),
        .I1(p33[1]),
        .I2(p13[1]),
        .O(gx30__1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gx30__1_carry_i_6
       (.I0(p13[0]),
        .I1(p33[0]),
        .O(gx30__1_carry_i_6_n_0));
  FDCE \gx3_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx30__1_carry_n_7),
        .Q(gx3[0]));
  FDCE \gx3_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx30__1_carry_n_6),
        .Q(gx3[1]));
  FDCE \gx3_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx30__1_carry_n_5),
        .Q(gx3[2]));
  FDCE \gx3_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx30__1_carry_n_4),
        .Q(gx3[3]));
  FDCE \gx3_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx30__1_carry__0_n_7),
        .Q(gx3[4]));
  FDCE \gx3_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx30__1_carry__0_n_6),
        .Q(gx3[5]));
  FDCE \gx3_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx30__1_carry__0_n_5),
        .Q(gx3[6]));
  FDCE \gx3_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx30__1_carry__0_n_4),
        .Q(gx3[7]));
  FDCE \gx3_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx30__1_carry__1_n_7),
        .Q(gx3[8]));
  FDCE \gx3_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx30__1_carry__1_n_2),
        .Q(gx3[9]));
  FDCE \gx_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[0]),
        .Q(gx[0]));
  FDCE \gx_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[1]),
        .Q(gx[1]));
  FDCE \gx_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[2]),
        .Q(gx[2]));
  FDCE \gx_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[3]),
        .Q(gx[3]));
  FDCE \gx_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[4]),
        .Q(gx[4]));
  FDCE \gx_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[5]),
        .Q(gx[5]));
  FDCE \gx_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[6]),
        .Q(gx[6]));
  FDCE \gx_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[7]),
        .Q(gx[7]));
  FDCE \gx_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[8]),
        .Q(gx[8]));
  FDCE \gx_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[9]),
        .Q(gx[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 gy0_carry
       (.CI(1'b0),
        .CO({gy0_carry_n_0,gy0_carry_n_1,gy0_carry_n_2,gy0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O(gy0[3:0]),
        .S({gy0_carry_i_5_n_0,gy0_carry_i_6_n_0,gy0_carry_i_7_n_0,gy0_carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 gy0_carry__0
       (.CI(gy0_carry_n_0),
        .CO({gy0_carry__0_n_0,gy0_carry__0_n_1,gy0_carry__0_n_2,gy0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_in[7:4]),
        .O(gy0[7:4]),
        .S({gy0_carry__0_i_5_n_0,gy0_carry__0_i_6_n_0,gy0_carry__0_i_7_n_0,gy0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h53)) 
    gy0_carry__0_i_1
       (.I0(gy3[7]),
        .I1(gy1[7]),
        .I2(gy2),
        .O(p_1_in[7]));
  LUT3 #(
    .INIT(8'h53)) 
    gy0_carry__0_i_2
       (.I0(gy3[6]),
        .I1(gy1[6]),
        .I2(gy2),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'h53)) 
    gy0_carry__0_i_3
       (.I0(gy3[5]),
        .I1(gy1[5]),
        .I2(gy2),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'h53)) 
    gy0_carry__0_i_4
       (.I0(gy3[4]),
        .I1(gy1[4]),
        .I2(gy2),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h9)) 
    gy0_carry__0_i_5
       (.I0(gy3[7]),
        .I1(gy1[7]),
        .O(gy0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gy0_carry__0_i_6
       (.I0(gy3[6]),
        .I1(gy1[6]),
        .O(gy0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gy0_carry__0_i_7
       (.I0(gy3[5]),
        .I1(gy1[5]),
        .O(gy0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gy0_carry__0_i_8
       (.I0(gy3[4]),
        .I1(gy1[4]),
        .O(gy0_carry__0_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 gy0_carry__1
       (.CI(gy0_carry__0_n_0),
        .CO({NLW_gy0_carry__1_CO_UNCONNECTED[3:1],gy0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[8]}),
        .O({NLW_gy0_carry__1_O_UNCONNECTED[3:2],gy0[9:8]}),
        .S({1'b0,1'b0,gy0_carry__1_i_2_n_0,gy0_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h53)) 
    gy0_carry__1_i_1
       (.I0(gy3[8]),
        .I1(gy1[8]),
        .I2(gy2),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h9)) 
    gy0_carry__1_i_2
       (.I0(gy3[9]),
        .I1(gy1[9]),
        .O(gy0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gy0_carry__1_i_3
       (.I0(gy3[8]),
        .I1(gy1[8]),
        .O(gy0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    gy0_carry_i_1
       (.I0(gy3[3]),
        .I1(gy1[3]),
        .I2(gy2),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'h53)) 
    gy0_carry_i_2
       (.I0(gy3[2]),
        .I1(gy1[2]),
        .I2(gy2),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'h53)) 
    gy0_carry_i_3
       (.I0(gy3[1]),
        .I1(gy1[1]),
        .I2(gy2),
        .O(p_1_in[1]));
  LUT3 #(
    .INIT(8'h53)) 
    gy0_carry_i_4
       (.I0(gy3[0]),
        .I1(gy1[0]),
        .I2(gy2),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h9)) 
    gy0_carry_i_5
       (.I0(gy3[3]),
        .I1(gy1[3]),
        .O(gy0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gy0_carry_i_6
       (.I0(gy3[2]),
        .I1(gy1[2]),
        .O(gy0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gy0_carry_i_7
       (.I0(gy3[1]),
        .I1(gy1[1]),
        .O(gy0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gy0_carry_i_8
       (.I0(gy3[0]),
        .I1(gy1[0]),
        .O(gy0_carry_i_8_n_0));
  CARRY4 gy10__1_carry
       (.CI(1'b0),
        .CO({gy10__1_carry_n_0,gy10__1_carry_n_1,gy10__1_carry_n_2,gy10__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gy10__1_carry_i_1_n_0,gy10__1_carry_i_2_n_0,p11[1:0]}),
        .O({gy10__1_carry_n_4,gy10__1_carry_n_5,gy10__1_carry_n_6,gy10__1_carry_n_7}),
        .S({gy10__1_carry_i_3_n_0,gy10__1_carry_i_4_n_0,gy10__1_carry_i_5_n_0,gy10__1_carry_i_6_n_0}));
  CARRY4 gy10__1_carry__0
       (.CI(gy10__1_carry_n_0),
        .CO({gy10__1_carry__0_n_0,gy10__1_carry__0_n_1,gy10__1_carry__0_n_2,gy10__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gy10__1_carry__0_i_1_n_0,gy10__1_carry__0_i_2_n_0,gy10__1_carry__0_i_3_n_0,gy10__1_carry__0_i_4_n_0}),
        .O({gy10__1_carry__0_n_4,gy10__1_carry__0_n_5,gy10__1_carry__0_n_6,gy10__1_carry__0_n_7}),
        .S({gy10__1_carry__0_i_5_n_0,gy10__1_carry__0_i_6_n_0,gy10__1_carry__0_i_7_n_0,gy10__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gy10__1_carry__0_i_1
       (.I0(gy12[6]),
        .I1(p13[6]),
        .I2(p11[6]),
        .O(gy10__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gy10__1_carry__0_i_2
       (.I0(gy12[5]),
        .I1(p13[5]),
        .I2(p11[5]),
        .O(gy10__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gy10__1_carry__0_i_3
       (.I0(gy12[4]),
        .I1(p13[4]),
        .I2(p11[4]),
        .O(gy10__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gy10__1_carry__0_i_4
       (.I0(gy12[3]),
        .I1(p13[3]),
        .I2(p11[3]),
        .O(gy10__1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gy10__1_carry__0_i_5
       (.I0(gy10__1_carry__0_i_1_n_0),
        .I1(p13[7]),
        .I2(gy12[7]),
        .I3(p11[7]),
        .O(gy10__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gy10__1_carry__0_i_6
       (.I0(gy12[6]),
        .I1(p13[6]),
        .I2(p11[6]),
        .I3(gy10__1_carry__0_i_2_n_0),
        .O(gy10__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gy10__1_carry__0_i_7
       (.I0(gy12[5]),
        .I1(p13[5]),
        .I2(p11[5]),
        .I3(gy10__1_carry__0_i_3_n_0),
        .O(gy10__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gy10__1_carry__0_i_8
       (.I0(gy12[4]),
        .I1(p13[4]),
        .I2(p11[4]),
        .I3(gy10__1_carry__0_i_4_n_0),
        .O(gy10__1_carry__0_i_8_n_0));
  CARRY4 gy10__1_carry__1
       (.CI(gy10__1_carry__0_n_0),
        .CO({NLW_gy10__1_carry__1_CO_UNCONNECTED[3:2],gy10__1_carry__1_n_2,NLW_gy10__1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gy12[8]}),
        .O({NLW_gy10__1_carry__1_O_UNCONNECTED[3:1],gy10__1_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,gy10__1_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h17E8)) 
    gy10__1_carry__1_i_1
       (.I0(p11[7]),
        .I1(p13[7]),
        .I2(gy12[7]),
        .I3(gy12[8]),
        .O(gy10__1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gy10__1_carry_i_1
       (.I0(gy12[2]),
        .I1(p13[2]),
        .I2(p11[2]),
        .O(gy10__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gy10__1_carry_i_2
       (.I0(p11[2]),
        .I1(gy12[2]),
        .I2(p13[2]),
        .O(gy10__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gy10__1_carry_i_3
       (.I0(gy12[3]),
        .I1(p13[3]),
        .I2(p11[3]),
        .I3(gy10__1_carry_i_1_n_0),
        .O(gy10__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    gy10__1_carry_i_4
       (.I0(gy12[2]),
        .I1(p13[2]),
        .I2(p11[2]),
        .I3(p13[1]),
        .I4(gy12[1]),
        .O(gy10__1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gy10__1_carry_i_5
       (.I0(gy12[1]),
        .I1(p13[1]),
        .I2(p11[1]),
        .O(gy10__1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gy10__1_carry_i_6
       (.I0(p11[0]),
        .I1(p13[0]),
        .O(gy10__1_carry_i_6_n_0));
  FDCE \gy1_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy10__1_carry_n_7),
        .Q(gy1[0]));
  FDCE \gy1_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy10__1_carry_n_6),
        .Q(gy1[1]));
  FDCE \gy1_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy10__1_carry_n_5),
        .Q(gy1[2]));
  FDCE \gy1_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy10__1_carry_n_4),
        .Q(gy1[3]));
  FDCE \gy1_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy10__1_carry__0_n_7),
        .Q(gy1[4]));
  FDCE \gy1_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy10__1_carry__0_n_6),
        .Q(gy1[5]));
  FDCE \gy1_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy10__1_carry__0_n_5),
        .Q(gy1[6]));
  FDCE \gy1_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy10__1_carry__0_n_4),
        .Q(gy1[7]));
  FDCE \gy1_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy10__1_carry__1_n_7),
        .Q(gy1[8]));
  FDCE \gy1_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy10__1_carry__1_n_2),
        .Q(gy1[9]));
  CARRY4 gy2_carry
       (.CI(1'b0),
        .CO({gy2_carry_n_0,gy2_carry_n_1,gy2_carry_n_2,gy2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gy2_carry_i_1_n_0,gy2_carry_i_2_n_0,gy2_carry_i_3_n_0,gy2_carry_i_4_n_0}),
        .O(NLW_gy2_carry_O_UNCONNECTED[3:0]),
        .S({gy2_carry_i_5_n_0,gy2_carry_i_6_n_0,gy2_carry_i_7_n_0,gy2_carry_i_8_n_0}));
  CARRY4 gy2_carry__0
       (.CI(gy2_carry_n_0),
        .CO({NLW_gy2_carry__0_CO_UNCONNECTED[3:1],gy2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gy2_carry__0_i_1_n_0}),
        .O(NLW_gy2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,gy2_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gy2_carry__0_i_1
       (.I0(gy1[8]),
        .I1(gy3[8]),
        .I2(gy3[9]),
        .I3(gy1[9]),
        .O(gy2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gy2_carry__0_i_2
       (.I0(gy1[8]),
        .I1(gy3[8]),
        .I2(gy1[9]),
        .I3(gy3[9]),
        .O(gy2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gy2_carry_i_1
       (.I0(gy1[6]),
        .I1(gy3[6]),
        .I2(gy3[7]),
        .I3(gy1[7]),
        .O(gy2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gy2_carry_i_2
       (.I0(gy1[4]),
        .I1(gy3[4]),
        .I2(gy3[5]),
        .I3(gy1[5]),
        .O(gy2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gy2_carry_i_3
       (.I0(gy1[2]),
        .I1(gy3[2]),
        .I2(gy3[3]),
        .I3(gy1[3]),
        .O(gy2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gy2_carry_i_4
       (.I0(gy1[0]),
        .I1(gy3[0]),
        .I2(gy3[1]),
        .I3(gy1[1]),
        .O(gy2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gy2_carry_i_5
       (.I0(gy1[6]),
        .I1(gy3[6]),
        .I2(gy1[7]),
        .I3(gy3[7]),
        .O(gy2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gy2_carry_i_6
       (.I0(gy1[4]),
        .I1(gy3[4]),
        .I2(gy1[5]),
        .I3(gy3[5]),
        .O(gy2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gy2_carry_i_7
       (.I0(gy1[2]),
        .I1(gy3[2]),
        .I2(gy1[3]),
        .I3(gy3[3]),
        .O(gy2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gy2_carry_i_8
       (.I0(gy1[0]),
        .I1(gy3[0]),
        .I2(gy1[1]),
        .I3(gy3[1]),
        .O(gy2_carry_i_8_n_0));
  CARRY4 gy30__1_carry
       (.CI(1'b0),
        .CO({gy30__1_carry_n_0,gy30__1_carry_n_1,gy30__1_carry_n_2,gy30__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gy30__1_carry_i_1_n_0,gy30__1_carry_i_2_n_0,p31[1:0]}),
        .O(p_0_in[3:0]),
        .S({gy30__1_carry_i_3_n_0,gy30__1_carry_i_4_n_0,gy30__1_carry_i_5_n_0,gy30__1_carry_i_6_n_0}));
  CARRY4 gy30__1_carry__0
       (.CI(gy30__1_carry_n_0),
        .CO({gy30__1_carry__0_n_0,gy30__1_carry__0_n_1,gy30__1_carry__0_n_2,gy30__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gy30__1_carry__0_i_1_n_0,gy30__1_carry__0_i_2_n_0,gy30__1_carry__0_i_3_n_0,gy30__1_carry__0_i_4_n_0}),
        .O(p_0_in[7:4]),
        .S({gy30__1_carry__0_i_5_n_0,gy30__1_carry__0_i_6_n_0,gy30__1_carry__0_i_7_n_0,gy30__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gy30__1_carry__0_i_1
       (.I0(gy32[6]),
        .I1(p33[6]),
        .I2(p31[6]),
        .O(gy30__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gy30__1_carry__0_i_2
       (.I0(gy32[5]),
        .I1(p33[5]),
        .I2(p31[5]),
        .O(gy30__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gy30__1_carry__0_i_3
       (.I0(gy32[4]),
        .I1(p33[4]),
        .I2(p31[4]),
        .O(gy30__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gy30__1_carry__0_i_4
       (.I0(gy32[3]),
        .I1(p33[3]),
        .I2(p31[3]),
        .O(gy30__1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gy30__1_carry__0_i_5
       (.I0(gy30__1_carry__0_i_1_n_0),
        .I1(p33[7]),
        .I2(gy32[7]),
        .I3(p31[7]),
        .O(gy30__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gy30__1_carry__0_i_6
       (.I0(gy32[6]),
        .I1(p33[6]),
        .I2(p31[6]),
        .I3(gy30__1_carry__0_i_2_n_0),
        .O(gy30__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gy30__1_carry__0_i_7
       (.I0(gy32[5]),
        .I1(p33[5]),
        .I2(p31[5]),
        .I3(gy30__1_carry__0_i_3_n_0),
        .O(gy30__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gy30__1_carry__0_i_8
       (.I0(gy32[4]),
        .I1(p33[4]),
        .I2(p31[4]),
        .I3(gy30__1_carry__0_i_4_n_0),
        .O(gy30__1_carry__0_i_8_n_0));
  CARRY4 gy30__1_carry__1
       (.CI(gy30__1_carry__0_n_0),
        .CO({NLW_gy30__1_carry__1_CO_UNCONNECTED[3:2],p_0_in[9],NLW_gy30__1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gy32[8]}),
        .O({NLW_gy30__1_carry__1_O_UNCONNECTED[3:1],p_0_in[8]}),
        .S({1'b0,1'b0,1'b1,gy30__1_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h17E8)) 
    gy30__1_carry__1_i_1
       (.I0(p31[7]),
        .I1(p33[7]),
        .I2(gy32[7]),
        .I3(gy32[8]),
        .O(gy30__1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gy30__1_carry_i_1
       (.I0(gy32[2]),
        .I1(p33[2]),
        .I2(p31[2]),
        .O(gy30__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gy30__1_carry_i_2
       (.I0(p31[2]),
        .I1(gy32[2]),
        .I2(p33[2]),
        .O(gy30__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gy30__1_carry_i_3
       (.I0(gy32[3]),
        .I1(p33[3]),
        .I2(p31[3]),
        .I3(gy30__1_carry_i_1_n_0),
        .O(gy30__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    gy30__1_carry_i_4
       (.I0(gy32[2]),
        .I1(p33[2]),
        .I2(p31[2]),
        .I3(p33[1]),
        .I4(gy32[1]),
        .O(gy30__1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gy30__1_carry_i_5
       (.I0(gy32[1]),
        .I1(p33[1]),
        .I2(p31[1]),
        .O(gy30__1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gy30__1_carry_i_6
       (.I0(p31[0]),
        .I1(p33[0]),
        .O(gy30__1_carry_i_6_n_0));
  FDCE \gy3_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(gy3[0]));
  FDCE \gy3_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(gy3[1]));
  FDCE \gy3_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(gy3[2]));
  FDCE \gy3_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(gy3[3]));
  FDCE \gy3_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(gy3[4]));
  FDCE \gy3_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(gy3[5]));
  FDCE \gy3_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(gy3[6]));
  FDCE \gy3_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(gy3[7]));
  FDCE \gy3_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(gy3[8]));
  FDCE \gy3_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(gy3[9]));
  FDCE \gy_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[0]),
        .Q(gy[0]));
  FDCE \gy_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[1]),
        .Q(gy[1]));
  FDCE \gy_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[2]),
        .Q(gy[2]));
  FDCE \gy_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[3]),
        .Q(gy[3]));
  FDCE \gy_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[4]),
        .Q(gy[4]));
  FDCE \gy_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[5]),
        .Q(gy[5]));
  FDCE \gy_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[6]),
        .Q(gy[6]));
  FDCE \gy_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[7]),
        .Q(gy[7]));
  FDCE \gy_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[8]),
        .Q(gy[8]));
  FDCE \gy_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[9]),
        .Q(gy[9]));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/href_dly_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 " *) 
  SRL16E \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(out_href),
        .Q(\href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ));
  FDRE \href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4 
       (.C(pclk),
        .CE(1'b1),
        .D(\href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ),
        .Q(\href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ),
        .R(1'b0));
  FDCE \href_dly_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_gate_n_0),
        .Q(sobel_href));
  FDCE href_dly_reg_c
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(1'b1),
        .Q(href_dly_reg_c_n_0));
  FDCE href_dly_reg_c_0
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_c_n_0),
        .Q(href_dly_reg_c_0_n_0));
  FDCE href_dly_reg_c_1
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_c_0_n_0),
        .Q(href_dly_reg_c_1_n_0));
  FDCE href_dly_reg_c_2
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_c_1_n_0),
        .Q(href_dly_reg_c_2_n_0));
  FDCE href_dly_reg_c_3
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_c_2_n_0),
        .Q(href_dly_reg_c_3_n_0));
  FDCE href_dly_reg_c_4
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_c_3_n_0),
        .Q(href_dly_reg_c_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    href_dly_reg_gate
       (.I0(\href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ),
        .I1(href_dly_reg_c_4_n_0),
        .O(href_dly_reg_gate_n_0));
  design_1_xil_vip_0_0_shift_register line2buf
       (.D({line2buf_n_0,line2buf_n_1,line2buf_n_2,line2buf_n_3,line2buf_n_4,line2buf_n_5,line2buf_n_6,line2buf_n_7}),
        .\in_r_reg[7]_0 (\in_r_reg[7] ),
        .mem_reg(tap1x),
        .out_href(out_href),
        .pclk(pclk));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[0]_i_1 
       (.I0(\g_reg_n_0_[0] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[1]_i_1 
       (.I0(\g_reg_n_0_[1] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[2]_i_1 
       (.I0(\g_reg_n_0_[2] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[3]_i_1 
       (.I0(\g_reg_n_0_[3] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[4]_i_1 
       (.I0(\g_reg_n_0_[4] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[5]_i_1 
       (.I0(\g_reg_n_0_[5] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[6]_i_1 
       (.I0(\g_reg_n_0_[6] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[7]_i_1 
       (.I0(\g_reg_n_0_[7] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[7]_i_1_n_0 ));
  FDCE \out_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[0]_i_1_n_0 ),
        .Q(out[0]));
  FDCE \out_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[1]_i_1_n_0 ),
        .Q(out[1]));
  FDCE \out_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[2]_i_1_n_0 ),
        .Q(out[2]));
  FDCE \out_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[3]_i_1_n_0 ),
        .Q(out[3]));
  FDCE \out_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[4]_i_1_n_0 ),
        .Q(out[4]));
  FDCE \out_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[5]_i_1_n_0 ),
        .Q(out[5]));
  FDCE \out_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[6]_i_1_n_0 ),
        .Q(out[6]));
  FDCE \out_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[7]_i_1_n_0 ),
        .Q(out[7]));
  FDCE \p11_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [0]),
        .Q(p11[0]));
  FDCE \p11_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [1]),
        .Q(p11[1]));
  FDCE \p11_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [2]),
        .Q(p11[2]));
  FDCE \p11_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [3]),
        .Q(p11[3]));
  FDCE \p11_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [4]),
        .Q(p11[4]));
  FDCE \p11_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [5]),
        .Q(p11[5]));
  FDCE \p11_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [6]),
        .Q(p11[6]));
  FDCE \p11_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [7]),
        .Q(p11[7]));
  FDCE \p12_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[0]),
        .Q(gy12[1]));
  FDCE \p12_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[1]),
        .Q(gy12[2]));
  FDCE \p12_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[2]),
        .Q(gy12[3]));
  FDCE \p12_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[3]),
        .Q(gy12[4]));
  FDCE \p12_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[4]),
        .Q(gy12[5]));
  FDCE \p12_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[5]),
        .Q(gy12[6]));
  FDCE \p12_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[6]),
        .Q(gy12[7]));
  FDCE \p12_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[7]),
        .Q(gy12[8]));
  FDCE \p13_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[1]),
        .Q(p13[0]));
  FDCE \p13_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[2]),
        .Q(p13[1]));
  FDCE \p13_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[3]),
        .Q(p13[2]));
  FDCE \p13_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[4]),
        .Q(p13[3]));
  FDCE \p13_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[5]),
        .Q(p13[4]));
  FDCE \p13_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[6]),
        .Q(p13[5]));
  FDCE \p13_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[7]),
        .Q(p13[6]));
  FDCE \p13_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[8]),
        .Q(p13[7]));
  FDCE \p21_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_7),
        .Q(gx12[1]));
  FDCE \p21_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_6),
        .Q(gx12[2]));
  FDCE \p21_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_5),
        .Q(gx12[3]));
  FDCE \p21_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_4),
        .Q(gx12[4]));
  FDCE \p21_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_3),
        .Q(gx12[5]));
  FDCE \p21_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_2),
        .Q(gx12[6]));
  FDCE \p21_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_1),
        .Q(gx12[7]));
  FDCE \p21_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_0),
        .Q(gx12[8]));
  FDCE \p22_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[1]),
        .Q(p22[0]));
  FDCE \p22_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[2]),
        .Q(p22[1]));
  FDCE \p22_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[3]),
        .Q(p22[2]));
  FDCE \p22_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[4]),
        .Q(p22[3]));
  FDCE \p22_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[5]),
        .Q(p22[4]));
  FDCE \p22_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[6]),
        .Q(p22[5]));
  FDCE \p22_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[7]),
        .Q(p22[6]));
  FDCE \p22_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[8]),
        .Q(p22[7]));
  FDCE \p23_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[0]),
        .Q(gx32[1]));
  FDCE \p23_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[1]),
        .Q(gx32[2]));
  FDCE \p23_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[2]),
        .Q(gx32[3]));
  FDCE \p23_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[3]),
        .Q(gx32[4]));
  FDCE \p23_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[4]),
        .Q(gx32[5]));
  FDCE \p23_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[5]),
        .Q(gx32[6]));
  FDCE \p23_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[6]),
        .Q(gx32[7]));
  FDCE \p23_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[7]),
        .Q(gx32[8]));
  LUT3 #(
    .INIT(8'hDF)) 
    \p31[7]_i_1 
       (.I0(s_sobel_en),
        .I1(s_module_reset),
        .I2(rst_n),
        .O(\p31[7]_i_1_n_0 ));
  FDCE \p31_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[0]),
        .Q(p31[0]));
  FDCE \p31_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[1]),
        .Q(p31[1]));
  FDCE \p31_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[2]),
        .Q(p31[2]));
  FDCE \p31_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[3]),
        .Q(p31[3]));
  FDCE \p31_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[4]),
        .Q(p31[4]));
  FDCE \p31_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[5]),
        .Q(p31[5]));
  FDCE \p31_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[6]),
        .Q(p31[6]));
  FDCE \p31_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[7]),
        .Q(p31[7]));
  FDCE \p32_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[0]),
        .Q(gy32[1]));
  FDCE \p32_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[1]),
        .Q(gy32[2]));
  FDCE \p32_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[2]),
        .Q(gy32[3]));
  FDCE \p32_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[3]),
        .Q(gy32[4]));
  FDCE \p32_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[4]),
        .Q(gy32[5]));
  FDCE \p32_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[5]),
        .Q(gy32[6]));
  FDCE \p32_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[6]),
        .Q(gy32[7]));
  FDCE \p32_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[7]),
        .Q(gy32[8]));
  FDCE \p33_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[1]),
        .Q(p33[0]));
  FDCE \p33_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[2]),
        .Q(p33[1]));
  FDCE \p33_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[3]),
        .Q(p33[2]));
  FDCE \p33_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[4]),
        .Q(p33[3]));
  FDCE \p33_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[5]),
        .Q(p33[4]));
  FDCE \p33_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[6]),
        .Q(p33[5]));
  FDCE \p33_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[7]),
        .Q(p33[6]));
  FDCE \p33_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[8]),
        .Q(p33[7]));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/vsync_dly_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 " *) 
  SRL16E \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(out_vsync),
        .Q(\vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ));
  FDRE \vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4 
       (.C(pclk),
        .CE(1'b1),
        .D(\vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ),
        .Q(\vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ),
        .R(1'b0));
  FDCE \vsync_dly_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(vsync_dly_reg_gate_n_0),
        .Q(sobel_vsync));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    vsync_dly_reg_gate
       (.I0(\vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ),
        .I1(href_dly_reg_c_4_n_0),
        .O(vsync_dly_reg_gate_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    vsync_reg_i_1
       (.I0(sobel_vsync),
        .I1(s_sobel_en),
        .I2(out_vsync),
        .O(in_vsync));
endmodule

(* ORIG_REF_NAME = "vip_top" *) 
module design_1_xil_vip_0_0_vip_top
   (DOADO,
    DOBDO,
    out_pclk_r_reg,
    href_t3,
    s_yuv2rgb_en_reg,
    int_frame_done0,
    s00_axi_rdata,
    out_rgb,
    out_href,
    out_vsync,
    pclk,
    vsync_reg_reg,
    s00_axi_aclk,
    s00_axi_wdata,
    s_osd_en,
    prev_vsync,
    \s00_axi_rdata[24] ,
    \s00_axi_rdata[24]_0 ,
    Q,
    \s00_axi_rdata[25] ,
    \s00_axi_rdata[26] ,
    \s00_axi_rdata[27] ,
    \s00_axi_rdata[28] ,
    \s00_axi_rdata[29] ,
    \s00_axi_rdata[30] ,
    \s00_axi_rdata[31] ,
    \ZOUT_reg[19] ,
    \osd_x1_r_reg[11] ,
    \osd_y0_r_reg[10] ,
    \osd_y1_r_reg[10] ,
    s_module_reset,
    rst_n,
    s_dscale_en,
    s_crop_en,
    s_yuv2rgb_en,
    s_sobel_en,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    s00_axi_awvalid,
    s00_axi_wvalid,
    \color_bg_r_reg[23] ,
    \color_fg_r_reg[23] ,
    \osd_x0_r_reg[10] ,
    \osd_pix_buf_t5_reg[0] ,
    \osd_pix_buf_t5_reg[0]_0 ,
    \osd_pix_buf_t5_reg[1] ,
    \osd_pix_buf_t5_reg[2] ,
    \osd_pix_buf_t5_reg[3] ,
    \osd_pix_buf_t5_reg[4] ,
    \osd_pix_buf_t5_reg[5] ,
    \osd_pix_buf_t5_reg[6] ,
    \osd_pix_buf_t5_reg[7] ,
    \osd_pix_buf_t5_reg[8] ,
    \osd_pix_buf_t5_reg[9] ,
    \osd_pix_buf_t5_reg[10] ,
    \osd_pix_buf_t5_reg[11] ,
    \osd_pix_buf_t5_reg[12] ,
    \osd_pix_buf_t5_reg[13] ,
    \osd_pix_buf_t5_reg[14] ,
    \osd_pix_buf_t5_reg[15] ,
    \osd_pix_buf_t5_reg[16] ,
    \osd_pix_buf_t5_reg[17] ,
    \osd_pix_buf_t5_reg[18] ,
    \osd_pix_buf_t5_reg[19] ,
    \osd_pix_buf_t5_reg[20] ,
    \osd_pix_buf_t5_reg[21] ,
    \osd_pix_buf_t5_reg[22] ,
    \osd_pix_buf_t5_reg[23] ,
    \osd_pix_buf_t5_reg[24] ,
    \osd_pix_buf_t5_reg[25] ,
    \osd_pix_buf_t5_reg[26] ,
    \osd_pix_buf_t5_reg[27] ,
    \osd_pix_buf_t5_reg[28] ,
    \osd_pix_buf_t5_reg[29] ,
    \osd_pix_buf_t5_reg[30] ,
    \osd_pix_buf_t5_reg[31] ,
    in_href,
    in_vsync,
    in_yuv,
    out_href3_carry__2,
    out_href3_carry__2_0,
    out_href1_carry__0,
    \out_href1_inferred__0/i__carry__2 ,
    \line_cnt_reg[0] ,
    \pix_cnt_reg[0] );
  output [31:0]DOADO;
  output [31:0]DOBDO;
  output out_pclk_r_reg;
  output href_t3;
  output s_yuv2rgb_en_reg;
  output int_frame_done0;
  output [7:0]s00_axi_rdata;
  output [23:0]out_rgb;
  output out_href;
  output out_vsync;
  input pclk;
  input vsync_reg_reg;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input s_osd_en;
  input prev_vsync;
  input \s00_axi_rdata[24] ;
  input \s00_axi_rdata[24]_0 ;
  input [9:0]Q;
  input \s00_axi_rdata[25] ;
  input \s00_axi_rdata[26] ;
  input \s00_axi_rdata[27] ;
  input \s00_axi_rdata[28] ;
  input \s00_axi_rdata[29] ;
  input \s00_axi_rdata[30] ;
  input \s00_axi_rdata[31] ;
  input \ZOUT_reg[19] ;
  input [11:0]\osd_x1_r_reg[11] ;
  input [10:0]\osd_y0_r_reg[10] ;
  input [10:0]\osd_y1_r_reg[10] ;
  input s_module_reset;
  input rst_n;
  input s_dscale_en;
  input s_crop_en;
  input s_yuv2rgb_en;
  input s_sobel_en;
  input [9:0]mem_reg;
  input mem_reg_0;
  input mem_reg_1;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [23:0]\color_bg_r_reg[23] ;
  input [23:0]\color_fg_r_reg[23] ;
  input [11:0]\osd_x0_r_reg[10] ;
  input \osd_pix_buf_t5_reg[0] ;
  input \osd_pix_buf_t5_reg[0]_0 ;
  input \osd_pix_buf_t5_reg[1] ;
  input \osd_pix_buf_t5_reg[2] ;
  input \osd_pix_buf_t5_reg[3] ;
  input \osd_pix_buf_t5_reg[4] ;
  input \osd_pix_buf_t5_reg[5] ;
  input \osd_pix_buf_t5_reg[6] ;
  input \osd_pix_buf_t5_reg[7] ;
  input \osd_pix_buf_t5_reg[8] ;
  input \osd_pix_buf_t5_reg[9] ;
  input \osd_pix_buf_t5_reg[10] ;
  input \osd_pix_buf_t5_reg[11] ;
  input \osd_pix_buf_t5_reg[12] ;
  input \osd_pix_buf_t5_reg[13] ;
  input \osd_pix_buf_t5_reg[14] ;
  input \osd_pix_buf_t5_reg[15] ;
  input \osd_pix_buf_t5_reg[16] ;
  input \osd_pix_buf_t5_reg[17] ;
  input \osd_pix_buf_t5_reg[18] ;
  input \osd_pix_buf_t5_reg[19] ;
  input \osd_pix_buf_t5_reg[20] ;
  input \osd_pix_buf_t5_reg[21] ;
  input \osd_pix_buf_t5_reg[22] ;
  input \osd_pix_buf_t5_reg[23] ;
  input \osd_pix_buf_t5_reg[24] ;
  input \osd_pix_buf_t5_reg[25] ;
  input \osd_pix_buf_t5_reg[26] ;
  input \osd_pix_buf_t5_reg[27] ;
  input \osd_pix_buf_t5_reg[28] ;
  input \osd_pix_buf_t5_reg[29] ;
  input \osd_pix_buf_t5_reg[30] ;
  input \osd_pix_buf_t5_reg[31] ;
  input in_href;
  input in_vsync;
  input [23:0]in_yuv;
  input [15:0]out_href3_carry__2;
  input [15:0]out_href3_carry__2_0;
  input [15:0]out_href1_carry__0;
  input [15:0]\out_href1_inferred__0/i__carry__2 ;
  input [3:0]\line_cnt_reg[0] ;
  input [3:0]\pix_cnt_reg[0] ;

  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire [9:0]Q;
  wire \ZOUT_reg[19] ;
  wire [23:0]\color_bg_r_reg[23] ;
  wire [23:0]\color_fg_r_reg[23] ;
  wire [7:0]crop_g_o;
  wire crop_href_o;
  wire [7:0]crop_r_o;
  wire crop_vsync_o;
  wire [23:0]data_r;
  wire [7:0]dscale_b_o;
  wire [7:0]dscale_g_o;
  wire dscale_href_o;
  wire dscale_i0_n_2;
  wire dscale_i0_n_4;
  wire [7:0]dscale_r_o;
  wire hist_equ_href_o;
  wire hist_equ_vsync_o;
  wire [7:0]hist_equ_y_o;
  wire href_t1;
  wire href_t3;
  wire [23:0]in_data;
  wire [23:0]in_data_4;
  wire [23:0]in_data_9;
  wire in_href;
  wire in_href_0;
  wire in_href_5;
  wire in_href_6;
  wire in_href_o;
  wire [7:0]in_u_o;
  wire in_vsync;
  wire in_vsync_7;
  wire in_vsync_8;
  wire in_vsync_o;
  wire [7:0]in_y_o;
  wire [23:0]in_yuv;
  wire int_frame_done0;
  wire [3:0]\line_cnt_reg[0] ;
  wire [9:0]mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mux_crop_i0_n_43;
  wire mux_crop_i0_n_44;
  wire mux_crop_i0_n_45;
  wire mux_crop_i0_n_46;
  wire mux_crop_i0_n_47;
  wire mux_crop_i0_n_48;
  wire mux_crop_i0_n_49;
  wire mux_crop_i0_n_50;
  wire mux_crop_i0_n_51;
  wire mux_crop_i0_n_52;
  wire mux_crop_i0_n_53;
  wire mux_crop_i0_n_54;
  wire mux_in_n_18;
  wire mux_in_n_19;
  wire mux_in_n_20;
  wire mux_in_n_21;
  wire mux_in_n_22;
  wire mux_in_n_23;
  wire mux_in_n_24;
  wire mux_in_n_25;
  wire mux_sobel_i0_n_19;
  wire mux_sobel_i0_n_20;
  wire mux_sobel_i0_n_21;
  wire mux_sobel_i0_n_22;
  wire mux_sobel_i0_n_23;
  wire mux_sobel_i0_n_24;
  wire mux_sobel_i0_n_25;
  wire mux_sobel_i0_n_26;
  wire mux_yuv2rgb_i0_n_2;
  wire mux_yuv2rgb_i0_n_20;
  wire mux_yuv2rgb_i0_n_21;
  wire mux_yuv2rgb_i0_n_22;
  wire mux_yuv2rgb_i0_n_23;
  wire mux_yuv2rgb_i0_n_24;
  wire mux_yuv2rgb_i0_n_25;
  wire mux_yuv2rgb_i0_n_26;
  wire mux_yuv2rgb_i0_n_27;
  wire mux_yuv2rgb_i0_n_3;
  wire [7:0]osd_g;
  wire osd_href;
  wire osd_i0_n_100;
  wire osd_i0_n_101;
  wire osd_i0_n_94;
  wire osd_i0_n_95;
  wire osd_i0_n_96;
  wire osd_i0_n_97;
  wire osd_i0_n_98;
  wire osd_i0_n_99;
  wire \osd_pix_buf_t5_reg[0] ;
  wire \osd_pix_buf_t5_reg[0]_0 ;
  wire \osd_pix_buf_t5_reg[10] ;
  wire \osd_pix_buf_t5_reg[11] ;
  wire \osd_pix_buf_t5_reg[12] ;
  wire \osd_pix_buf_t5_reg[13] ;
  wire \osd_pix_buf_t5_reg[14] ;
  wire \osd_pix_buf_t5_reg[15] ;
  wire \osd_pix_buf_t5_reg[16] ;
  wire \osd_pix_buf_t5_reg[17] ;
  wire \osd_pix_buf_t5_reg[18] ;
  wire \osd_pix_buf_t5_reg[19] ;
  wire \osd_pix_buf_t5_reg[1] ;
  wire \osd_pix_buf_t5_reg[20] ;
  wire \osd_pix_buf_t5_reg[21] ;
  wire \osd_pix_buf_t5_reg[22] ;
  wire \osd_pix_buf_t5_reg[23] ;
  wire \osd_pix_buf_t5_reg[24] ;
  wire \osd_pix_buf_t5_reg[25] ;
  wire \osd_pix_buf_t5_reg[26] ;
  wire \osd_pix_buf_t5_reg[27] ;
  wire \osd_pix_buf_t5_reg[28] ;
  wire \osd_pix_buf_t5_reg[29] ;
  wire \osd_pix_buf_t5_reg[2] ;
  wire \osd_pix_buf_t5_reg[30] ;
  wire \osd_pix_buf_t5_reg[31] ;
  wire \osd_pix_buf_t5_reg[3] ;
  wire \osd_pix_buf_t5_reg[4] ;
  wire \osd_pix_buf_t5_reg[5] ;
  wire \osd_pix_buf_t5_reg[6] ;
  wire \osd_pix_buf_t5_reg[7] ;
  wire \osd_pix_buf_t5_reg[8] ;
  wire \osd_pix_buf_t5_reg[9] ;
  wire [7:0]osd_r;
  wire osd_vsync;
  wire [11:0]\osd_x0_r_reg[10] ;
  wire [11:0]\osd_x1_r_reg[11] ;
  wire [10:0]\osd_y0_r_reg[10] ;
  wire [10:0]\osd_y1_r_reg[10] ;
  wire out_href;
  wire [15:0]out_href1_carry__0;
  wire [15:0]\out_href1_inferred__0/i__carry__2 ;
  wire [15:0]out_href3_carry__2;
  wire [15:0]out_href3_carry__2_0;
  wire out_pclk_r_reg;
  wire [23:0]out_rgb;
  wire out_vsync;
  wire pclk;
  wire [3:0]\pix_cnt_reg[0] ;
  wire prev_href;
  wire prev_href_2;
  wire prev_vsync;
  wire prev_vsync_1;
  wire prev_vsync_3;
  wire rst_n;
  wire s00_axi_aclk;
  wire s00_axi_awvalid;
  wire [7:0]s00_axi_rdata;
  wire \s00_axi_rdata[24] ;
  wire \s00_axi_rdata[24]_0 ;
  wire \s00_axi_rdata[25] ;
  wire \s00_axi_rdata[26] ;
  wire \s00_axi_rdata[27] ;
  wire \s00_axi_rdata[28] ;
  wire \s00_axi_rdata[29] ;
  wire \s00_axi_rdata[30] ;
  wire \s00_axi_rdata[31] ;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire s_crop_en;
  wire s_dscale_en;
  wire s_module_reset;
  wire s_osd_en;
  wire s_sobel_en;
  wire s_yuv2rgb_en;
  wire s_yuv2rgb_en_reg;
  wire sobel_href;
  wire sobel_href_o;
  wire [7:0]sobel_u_o;
  wire sobel_vsync_o;
  wire [7:0]sobel_y_o;
  wire vsync_reg_reg;
  wire vsync_t1;
  wire [7:0]yuv2rgb_g_o;
  wire yuv2rgb_href;
  wire yuv2rgb_href_o;
  wire [7:0]yuv2rgb_r_o;
  wire yuv2rgb_vsync_o;

  design_1_xil_vip_0_0_vip_crop crop_i0
       (.D(in_data),
        .DI(mux_yuv2rgb_i0_n_3),
        .Q({yuv2rgb_r_o,yuv2rgb_g_o,mux_yuv2rgb_i0_n_20,mux_yuv2rgb_i0_n_21,mux_yuv2rgb_i0_n_22,mux_yuv2rgb_i0_n_23,mux_yuv2rgb_i0_n_24,mux_yuv2rgb_i0_n_25,mux_yuv2rgb_i0_n_26,mux_yuv2rgb_i0_n_27}),
        .in_href(in_href_0),
        .\line_cnt_reg[15]_0 (mux_yuv2rgb_i0_n_2),
        .out_href1_carry__0_0(out_href1_carry__0),
        .\out_href1_inferred__0/i__carry__2_0 (\out_href1_inferred__0/i__carry__2 ),
        .out_href3_carry__2_0(out_href3_carry__2),
        .out_href3_carry__2_1(out_href3_carry__2_0),
        .pclk(pclk),
        .prev_href(prev_href),
        .prev_vsync(prev_vsync_1),
        .rst_n(rst_n),
        .s_crop_en(s_crop_en),
        .s_module_reset(s_module_reset),
        .yuv2rgb_href_o(yuv2rgb_href_o),
        .yuv2rgb_vsync_o(yuv2rgb_vsync_o));
  design_1_xil_vip_0_0_vip_dscale dscale_i0
       (.CLK(out_pclk_r_reg),
        .E(mux_crop_i0_n_51),
        .Q(data_r),
        .crop_href_o(crop_href_o),
        .crop_vsync_o(crop_vsync_o),
        .\data_r_reg[23]_0 ({crop_r_o,crop_g_o,mux_crop_i0_n_43,mux_crop_i0_n_44,mux_crop_i0_n_45,mux_crop_i0_n_46,mux_crop_i0_n_47,mux_crop_i0_n_48,mux_crop_i0_n_49,mux_crop_i0_n_50}),
        .dscale_href_o(dscale_href_o),
        .href_reg_reg(dscale_i0_n_4),
        .\line_cnt_reg[0]_0 (\line_cnt_reg[0] ),
        .\line_cnt_reg[0]_1 (mux_crop_i0_n_52),
        .\line_cnt_reg[2]_0 (dscale_i0_n_2),
        .pclk(pclk),
        .\pix_cnt_reg[0]_0 (\pix_cnt_reg[0] ),
        .prev_href(prev_href_2),
        .prev_vsync(prev_vsync_3),
        .rst_n(rst_n),
        .s_dscale_en(s_dscale_en),
        .s_module_reset(s_module_reset));
  design_1_xil_vip_0_0_vid_mux mux_crop_i0
       (.D(in_data),
        .DI(mux_crop_i0_n_54),
        .E(mux_crop_i0_n_51),
        .Q(data_r),
        .crop_href_o(crop_href_o),
        .crop_vsync_o(crop_vsync_o),
        .\data_reg_reg[0]_0 (vsync_reg_reg),
        .\data_reg_reg[23]_0 ({crop_r_o,crop_g_o,mux_crop_i0_n_43,mux_crop_i0_n_44,mux_crop_i0_n_45,mux_crop_i0_n_46,mux_crop_i0_n_47,mux_crop_i0_n_48,mux_crop_i0_n_49,mux_crop_i0_n_50}),
        .dscale_b_o(dscale_b_o),
        .dscale_g_o(dscale_g_o),
        .dscale_r_o(dscale_r_o),
        .href_t1(href_t1),
        .in_href(in_href_0),
        .int_frame_done0(int_frame_done0),
        .osd_href(osd_href),
        .osd_vsync(osd_vsync),
        .out_href(out_href),
        .out_href_0(dscale_i0_n_4),
        .out_rgb(out_rgb),
        .\out_rgb[23] ({osd_r,osd_g,osd_i0_n_94,osd_i0_n_95,osd_i0_n_96,osd_i0_n_97,osd_i0_n_98,osd_i0_n_99,osd_i0_n_100,osd_i0_n_101}),
        .pclk(pclk),
        .\pix_x_t1_reg[3] (dscale_i0_n_2),
        .prev_href(prev_href_2),
        .prev_vsync(prev_vsync),
        .prev_vsync_0(prev_vsync_3),
        .s_dscale_en(s_dscale_en),
        .s_osd_en(s_osd_en),
        .vsync_reg_reg_0(mux_crop_i0_n_52),
        .vsync_reg_reg_1(mux_crop_i0_n_53),
        .vsync_t1(vsync_t1),
        .yuv2rgb_vsync_o(yuv2rgb_vsync_o));
  design_1_xil_vip_0_0_vid_mux_0 mux_hist_equ_i0
       (.D(in_data_4[15:0]),
        .Q({in_y_o,in_u_o,mux_in_n_18,mux_in_n_19,mux_in_n_20,mux_in_n_21,mux_in_n_22,mux_in_n_23,mux_in_n_24,mux_in_n_25}),
        .href_reg_reg_0(in_href_o),
        .in_href(in_href_5),
        .out_data(hist_equ_y_o),
        .out_href(hist_equ_href_o),
        .out_vsync(hist_equ_vsync_o),
        .pclk(pclk),
        .s_sobel_en(s_sobel_en),
        .sobel_href(sobel_href),
        .vsync_reg_reg_0(vsync_reg_reg),
        .vsync_reg_reg_1(in_vsync_o));
  design_1_xil_vip_0_0_vid_mux_1 mux_in
       (.\data_reg_reg[0]_0 (vsync_reg_reg),
        .in_href(in_href),
        .in_vsync(in_vsync),
        .in_yuv(in_yuv),
        .out_data({in_y_o,in_u_o,mux_in_n_18,mux_in_n_19,mux_in_n_20,mux_in_n_21,mux_in_n_22,mux_in_n_23,mux_in_n_24,mux_in_n_25}),
        .out_href(in_href_o),
        .out_vsync(in_vsync_o),
        .pclk(pclk));
  design_1_xil_vip_0_0_vid_mux_2 mux_sobel_i0
       (.D(in_data_4),
        .Q({sobel_y_o,sobel_u_o,mux_sobel_i0_n_19,mux_sobel_i0_n_20,mux_sobel_i0_n_21,mux_sobel_i0_n_22,mux_sobel_i0_n_23,mux_sobel_i0_n_24,mux_sobel_i0_n_25,mux_sobel_i0_n_26}),
        .\data_reg_reg[0]_0 (vsync_reg_reg),
        .in_href(in_href_6),
        .in_href_0(in_href_5),
        .in_vsync(in_vsync_7),
        .pclk(pclk),
        .s_yuv2rgb_en(s_yuv2rgb_en),
        .sobel_href_o(sobel_href_o),
        .sobel_vsync_o(sobel_vsync_o),
        .yuv2rgb_href(yuv2rgb_href));
  design_1_xil_vip_0_0_vid_mux_3 mux_yuv2rgb_i0
       (.D(in_data_9),
        .DI(mux_yuv2rgb_i0_n_3),
        .Q({yuv2rgb_r_o,yuv2rgb_g_o,mux_yuv2rgb_i0_n_20,mux_yuv2rgb_i0_n_21,mux_yuv2rgb_i0_n_22,mux_yuv2rgb_i0_n_23,mux_yuv2rgb_i0_n_24,mux_yuv2rgb_i0_n_25,mux_yuv2rgb_i0_n_26,mux_yuv2rgb_i0_n_27}),
        .href_reg_reg_0(mux_yuv2rgb_i0_n_2),
        .in_href(in_href_6),
        .in_vsync(in_vsync_8),
        .pclk(pclk),
        .prev_href(prev_href),
        .prev_vsync(prev_vsync_1),
        .vsync_reg_reg_0(vsync_reg_reg),
        .yuv2rgb_href_o(yuv2rgb_href_o),
        .yuv2rgb_vsync_o(yuv2rgb_vsync_o));
  design_1_xil_vip_0_0_vip_osd osd_i0
       (.CLK(out_pclk_r_reg),
        .DI(mux_crop_i0_n_54),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .Q(Q),
        .\color_bg_r_reg[23]_0 (\color_bg_r_reg[23] ),
        .\color_fg_r_reg[23]_0 (\color_fg_r_reg[23] ),
        .crop_href_o(crop_href_o),
        .crop_vsync_o(crop_vsync_o),
        .\data_t6_reg[23]_0 ({osd_r,osd_g,osd_i0_n_94,osd_i0_n_95,osd_i0_n_96,osd_i0_n_97,osd_i0_n_98,osd_i0_n_99,osd_i0_n_100,osd_i0_n_101}),
        .dscale_b_o(dscale_b_o),
        .dscale_g_o(dscale_g_o),
        .dscale_href_o(dscale_href_o),
        .dscale_r_o(dscale_r_o),
        .href_t1(href_t1),
        .href_t3(href_t3),
        .mem_reg(mem_reg),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(mem_reg_1),
        .osd_href(osd_href),
        .\osd_pix_buf_t5_reg[0]_0 (\osd_pix_buf_t5_reg[0] ),
        .\osd_pix_buf_t5_reg[0]_1 (\osd_pix_buf_t5_reg[0]_0 ),
        .\osd_pix_buf_t5_reg[10]_0 (\osd_pix_buf_t5_reg[10] ),
        .\osd_pix_buf_t5_reg[11]_0 (\osd_pix_buf_t5_reg[11] ),
        .\osd_pix_buf_t5_reg[12]_0 (\osd_pix_buf_t5_reg[12] ),
        .\osd_pix_buf_t5_reg[13]_0 (\osd_pix_buf_t5_reg[13] ),
        .\osd_pix_buf_t5_reg[14]_0 (\osd_pix_buf_t5_reg[14] ),
        .\osd_pix_buf_t5_reg[15]_0 (\osd_pix_buf_t5_reg[15] ),
        .\osd_pix_buf_t5_reg[16]_0 (\osd_pix_buf_t5_reg[16] ),
        .\osd_pix_buf_t5_reg[17]_0 (\osd_pix_buf_t5_reg[17] ),
        .\osd_pix_buf_t5_reg[18]_0 (\osd_pix_buf_t5_reg[18] ),
        .\osd_pix_buf_t5_reg[19]_0 (\osd_pix_buf_t5_reg[19] ),
        .\osd_pix_buf_t5_reg[1]_0 (\osd_pix_buf_t5_reg[1] ),
        .\osd_pix_buf_t5_reg[20]_0 (\osd_pix_buf_t5_reg[20] ),
        .\osd_pix_buf_t5_reg[21]_0 (\osd_pix_buf_t5_reg[21] ),
        .\osd_pix_buf_t5_reg[22]_0 (\osd_pix_buf_t5_reg[22] ),
        .\osd_pix_buf_t5_reg[23]_0 (\osd_pix_buf_t5_reg[23] ),
        .\osd_pix_buf_t5_reg[24]_0 (\osd_pix_buf_t5_reg[24] ),
        .\osd_pix_buf_t5_reg[25]_0 (\osd_pix_buf_t5_reg[25] ),
        .\osd_pix_buf_t5_reg[26]_0 (\osd_pix_buf_t5_reg[26] ),
        .\osd_pix_buf_t5_reg[27]_0 (\osd_pix_buf_t5_reg[27] ),
        .\osd_pix_buf_t5_reg[28]_0 (\osd_pix_buf_t5_reg[28] ),
        .\osd_pix_buf_t5_reg[29]_0 (\osd_pix_buf_t5_reg[29] ),
        .\osd_pix_buf_t5_reg[2]_0 (\osd_pix_buf_t5_reg[2] ),
        .\osd_pix_buf_t5_reg[30]_0 (\osd_pix_buf_t5_reg[30] ),
        .\osd_pix_buf_t5_reg[31]_0 (\osd_pix_buf_t5_reg[31] ),
        .\osd_pix_buf_t5_reg[3]_0 (\osd_pix_buf_t5_reg[3] ),
        .\osd_pix_buf_t5_reg[4]_0 (\osd_pix_buf_t5_reg[4] ),
        .\osd_pix_buf_t5_reg[5]_0 (\osd_pix_buf_t5_reg[5] ),
        .\osd_pix_buf_t5_reg[6]_0 (\osd_pix_buf_t5_reg[6] ),
        .\osd_pix_buf_t5_reg[7]_0 (\osd_pix_buf_t5_reg[7] ),
        .\osd_pix_buf_t5_reg[8]_0 (\osd_pix_buf_t5_reg[8] ),
        .\osd_pix_buf_t5_reg[9]_0 (\osd_pix_buf_t5_reg[9] ),
        .osd_vsync(osd_vsync),
        .\osd_x0_r_reg[10]_0 (\osd_x0_r_reg[10] ),
        .\osd_x1_r_reg[11]_0 (\osd_x1_r_reg[11] ),
        .\osd_y0_r_reg[10]_0 (\osd_y0_r_reg[10] ),
        .\osd_y1_r_reg[10]_0 (\osd_y1_r_reg[10] ),
        .out_vsync(out_vsync),
        .\pix_y_t1_reg[0]_0 (dscale_i0_n_2),
        .\pix_y_t1_reg[4]_0 (mux_crop_i0_n_53),
        .rst_n(rst_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[24] (\s00_axi_rdata[24] ),
        .\s00_axi_rdata[24]_0 (\s00_axi_rdata[24]_0 ),
        .\s00_axi_rdata[25] (\s00_axi_rdata[25] ),
        .\s00_axi_rdata[26] (\s00_axi_rdata[26] ),
        .\s00_axi_rdata[27] (\s00_axi_rdata[27] ),
        .\s00_axi_rdata[28] (\s00_axi_rdata[28] ),
        .\s00_axi_rdata[29] (\s00_axi_rdata[29] ),
        .\s00_axi_rdata[30] (\s00_axi_rdata[30] ),
        .\s00_axi_rdata[31] (\s00_axi_rdata[31] ),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_dscale_en(s_dscale_en),
        .s_module_reset(s_module_reset),
        .s_osd_en(s_osd_en),
        .vsync_t1(vsync_t1));
  design_1_xil_vip_0_0_vip_sobel sobel_i0
       (.D(in_data_4[23:16]),
        .\in_r_reg[7] (hist_equ_y_o),
        .in_vsync(in_vsync_7),
        .out_href(hist_equ_href_o),
        .out_vsync(hist_equ_vsync_o),
        .pclk(pclk),
        .rst_n(rst_n),
        .s_module_reset(s_module_reset),
        .s_sobel_en(s_sobel_en),
        .sobel_href(sobel_href));
  design_1_xil_vip_0_0_vip_yuv2rgb yuv2rgb_i0
       (.D(in_data_9),
        .Q({sobel_y_o,sobel_u_o,mux_sobel_i0_n_19,mux_sobel_i0_n_20,mux_sobel_i0_n_21,mux_sobel_i0_n_22,mux_sobel_i0_n_23,mux_sobel_i0_n_24,mux_sobel_i0_n_25,mux_sobel_i0_n_26}),
        .\ZOUT_reg[19]_0 (\ZOUT_reg[19] ),
        .in_vsync(in_vsync_8),
        .pclk(pclk),
        .rst_n(rst_n),
        .s_module_reset(s_module_reset),
        .s_yuv2rgb_en(s_yuv2rgb_en),
        .s_yuv2rgb_en_reg(s_yuv2rgb_en_reg),
        .sobel_href_o(sobel_href_o),
        .sobel_vsync_o(sobel_vsync_o),
        .yuv2rgb_href(yuv2rgb_href));
endmodule

(* ORIG_REF_NAME = "vip_yuv2rgb" *) 
module design_1_xil_vip_0_0_vip_yuv2rgb
   (s_yuv2rgb_en_reg,
    yuv2rgb_href,
    D,
    in_vsync,
    pclk,
    sobel_href_o,
    sobel_vsync_o,
    \ZOUT_reg[19]_0 ,
    s_yuv2rgb_en,
    s_module_reset,
    rst_n,
    Q);
  output s_yuv2rgb_en_reg;
  output yuv2rgb_href;
  output [23:0]D;
  output in_vsync;
  input pclk;
  input sobel_href_o;
  input sobel_vsync_o;
  input \ZOUT_reg[19]_0 ;
  input s_yuv2rgb_en;
  input s_module_reset;
  input rst_n;
  input [23:0]Q;

  wire [7:0]B;
  wire \B[0]_i_1_n_0 ;
  wire \B[1]_i_1_n_0 ;
  wire \B[2]_i_1_n_0 ;
  wire \B[3]_i_1_n_0 ;
  wire \B[4]_i_1_n_0 ;
  wire \B[5]_i_1_n_0 ;
  wire \B[6]_i_1_n_0 ;
  wire \B[7]_i_1_n_0 ;
  wire [23:0]D;
  wire [7:0]G;
  wire \G[0]_i_1_n_0 ;
  wire \G[1]_i_1_n_0 ;
  wire \G[2]_i_1_n_0 ;
  wire \G[3]_i_1_n_0 ;
  wire \G[4]_i_1_n_0 ;
  wire \G[5]_i_1_n_0 ;
  wire \G[6]_i_1_n_0 ;
  wire \G[7]_i_1_n_0 ;
  wire [23:0]Q;
  wire [7:0]R;
  wire XOUT1_carry__0_i_1_n_0;
  wire XOUT1_carry__0_i_2_n_0;
  wire XOUT1_carry__0_i_3_n_0;
  wire XOUT1_carry__0_i_4_n_0;
  wire XOUT1_carry__0_i_5_n_0;
  wire XOUT1_carry__0_i_6_n_0;
  wire XOUT1_carry__0_i_7_n_0;
  wire XOUT1_carry__0_i_8_n_0;
  wire XOUT1_carry__0_n_0;
  wire XOUT1_carry__0_n_1;
  wire XOUT1_carry__0_n_2;
  wire XOUT1_carry__0_n_3;
  wire XOUT1_carry__1_i_1_n_0;
  wire XOUT1_carry__1_i_2_n_0;
  wire XOUT1_carry__1_i_3_n_0;
  wire XOUT1_carry__1_i_4_n_0;
  wire XOUT1_carry__1_i_5_n_0;
  wire XOUT1_carry__1_i_6_n_0;
  wire XOUT1_carry__1_i_7_n_0;
  wire XOUT1_carry__1_i_8_n_0;
  wire XOUT1_carry__1_n_0;
  wire XOUT1_carry__1_n_1;
  wire XOUT1_carry__1_n_2;
  wire XOUT1_carry__1_n_3;
  wire XOUT1_carry__1_n_4;
  wire XOUT1_carry__1_n_5;
  wire XOUT1_carry__1_n_6;
  wire XOUT1_carry__2_i_1_n_0;
  wire XOUT1_carry__2_i_2_n_0;
  wire XOUT1_carry__2_i_3_n_0;
  wire XOUT1_carry__2_i_4_n_0;
  wire XOUT1_carry__2_i_5_n_0;
  wire XOUT1_carry__2_i_6_n_0;
  wire XOUT1_carry__2_i_7_n_0;
  wire XOUT1_carry__2_i_8_n_0;
  wire XOUT1_carry__2_n_0;
  wire XOUT1_carry__2_n_1;
  wire XOUT1_carry__2_n_2;
  wire XOUT1_carry__2_n_3;
  wire XOUT1_carry__2_n_4;
  wire XOUT1_carry__2_n_5;
  wire XOUT1_carry__2_n_6;
  wire XOUT1_carry__2_n_7;
  wire XOUT1_carry__3_i_1_n_0;
  wire XOUT1_carry__3_i_2_n_0;
  wire XOUT1_carry__3_i_3_n_0;
  wire XOUT1_carry__3_i_4_n_0;
  wire XOUT1_carry__3_i_5_n_0;
  wire XOUT1_carry__3_n_1;
  wire XOUT1_carry__3_n_2;
  wire XOUT1_carry__3_n_3;
  wire XOUT1_carry__3_n_5;
  wire XOUT1_carry__3_n_6;
  wire XOUT1_carry__3_n_7;
  wire XOUT1_carry_i_2_n_0;
  wire XOUT1_carry_i_3_n_0;
  wire XOUT1_carry_i_4_n_0;
  wire XOUT1_carry_i_5_n_0;
  wire XOUT1_carry_i_6_n_0;
  wire XOUT1_carry_i_7_n_0;
  wire XOUT1_carry_i_8_n_0;
  wire XOUT1_carry_n_0;
  wire XOUT1_carry_n_1;
  wire XOUT1_carry_n_2;
  wire XOUT1_carry_n_3;
  wire \XOUT_reg_n_0_[0] ;
  wire \XOUT_reg_n_0_[19] ;
  wire \XOUT_reg_n_0_[1] ;
  wire \XOUT_reg_n_0_[2] ;
  wire \XOUT_reg_n_0_[3] ;
  wire \XOUT_reg_n_0_[4] ;
  wire \XOUT_reg_n_0_[5] ;
  wire \XOUT_reg_n_0_[6] ;
  wire \XOUT_reg_n_0_[7] ;
  wire \XOUT_reg_n_0_[8] ;
  wire \XOUT_reg_n_0_[9] ;
  wire [19:9]YOUT1;
  wire YOUT1__1_carry__0_i_1_n_0;
  wire YOUT1__1_carry__0_i_2_n_0;
  wire YOUT1__1_carry__0_i_3_n_0;
  wire YOUT1__1_carry__0_i_4_n_0;
  wire YOUT1__1_carry__0_i_5_n_0;
  wire YOUT1__1_carry__0_i_6_n_0;
  wire YOUT1__1_carry__0_i_7_n_0;
  wire YOUT1__1_carry__0_i_8_n_0;
  wire YOUT1__1_carry__0_n_0;
  wire YOUT1__1_carry__0_n_1;
  wire YOUT1__1_carry__0_n_2;
  wire YOUT1__1_carry__0_n_3;
  wire YOUT1__1_carry__1_i_10_n_0;
  wire YOUT1__1_carry__1_i_1_n_0;
  wire YOUT1__1_carry__1_i_2_n_0;
  wire YOUT1__1_carry__1_i_3_n_0;
  wire YOUT1__1_carry__1_i_4_n_0;
  wire YOUT1__1_carry__1_i_5_n_0;
  wire YOUT1__1_carry__1_i_6_n_0;
  wire YOUT1__1_carry__1_i_7_n_0;
  wire YOUT1__1_carry__1_i_8_n_0;
  wire YOUT1__1_carry__1_n_0;
  wire YOUT1__1_carry__1_n_1;
  wire YOUT1__1_carry__1_n_2;
  wire YOUT1__1_carry__1_n_3;
  wire YOUT1__1_carry__2_i_12_n_0;
  wire YOUT1__1_carry__2_i_14_n_0;
  wire YOUT1__1_carry__2_i_15_n_0;
  wire YOUT1__1_carry__2_i_16_n_0;
  wire YOUT1__1_carry__2_i_1_n_0;
  wire YOUT1__1_carry__2_i_2_n_0;
  wire YOUT1__1_carry__2_i_3_n_0;
  wire YOUT1__1_carry__2_i_4_n_0;
  wire YOUT1__1_carry__2_i_5_n_0;
  wire YOUT1__1_carry__2_i_6_n_0;
  wire YOUT1__1_carry__2_i_7_n_0;
  wire YOUT1__1_carry__2_i_8_n_0;
  wire YOUT1__1_carry__2_n_0;
  wire YOUT1__1_carry__2_n_1;
  wire YOUT1__1_carry__2_n_2;
  wire YOUT1__1_carry__2_n_3;
  wire YOUT1__1_carry__3_i_2_n_0;
  wire YOUT1__1_carry__3_i_3_n_0;
  wire YOUT1__1_carry__3_i_4_n_0;
  wire YOUT1__1_carry__3_i_5_n_0;
  wire YOUT1__1_carry__3_n_2;
  wire YOUT1__1_carry__3_n_3;
  wire YOUT1__1_carry_i_1_n_0;
  wire YOUT1__1_carry_i_2_n_0;
  wire YOUT1__1_carry_i_3_n_0;
  wire YOUT1__1_carry_i_4_n_0;
  wire YOUT1__1_carry_i_5_n_0;
  wire YOUT1__1_carry_i_6_n_0;
  wire YOUT1__1_carry_i_7_n_0;
  wire YOUT1__1_carry_n_0;
  wire YOUT1__1_carry_n_1;
  wire YOUT1__1_carry_n_2;
  wire YOUT1__1_carry_n_3;
  wire \YOUT_reg_n_0_[0] ;
  wire \YOUT_reg_n_0_[19] ;
  wire \YOUT_reg_n_0_[1] ;
  wire \YOUT_reg_n_0_[2] ;
  wire \YOUT_reg_n_0_[3] ;
  wire \YOUT_reg_n_0_[4] ;
  wire \YOUT_reg_n_0_[5] ;
  wire \YOUT_reg_n_0_[6] ;
  wire \YOUT_reg_n_0_[7] ;
  wire \YOUT_reg_n_0_[8] ;
  wire \YOUT_reg_n_0_[9] ;
  wire [19:9]ZOUT1;
  wire ZOUT1_carry__0_i_1_n_0;
  wire ZOUT1_carry__0_i_2_n_0;
  wire ZOUT1_carry__0_i_3_n_0;
  wire ZOUT1_carry__0_i_4_n_0;
  wire ZOUT1_carry__0_i_5_n_0;
  wire ZOUT1_carry__0_i_6_n_0;
  wire ZOUT1_carry__0_i_7_n_0;
  wire ZOUT1_carry__0_i_8_n_0;
  wire ZOUT1_carry__0_n_0;
  wire ZOUT1_carry__0_n_1;
  wire ZOUT1_carry__0_n_2;
  wire ZOUT1_carry__0_n_3;
  wire ZOUT1_carry__1_i_1_n_0;
  wire ZOUT1_carry__1_i_2_n_0;
  wire ZOUT1_carry__1_i_3_n_0;
  wire ZOUT1_carry__1_i_4_n_0;
  wire ZOUT1_carry__1_i_5_n_0;
  wire ZOUT1_carry__1_i_6_n_0;
  wire ZOUT1_carry__1_i_7_n_0;
  wire ZOUT1_carry__1_i_8_n_0;
  wire ZOUT1_carry__1_n_0;
  wire ZOUT1_carry__1_n_1;
  wire ZOUT1_carry__1_n_2;
  wire ZOUT1_carry__1_n_3;
  wire ZOUT1_carry__2_i_1_n_0;
  wire ZOUT1_carry__2_i_2_n_0;
  wire ZOUT1_carry__2_i_3_n_0;
  wire ZOUT1_carry__2_i_4_n_0;
  wire ZOUT1_carry__2_i_5_n_0;
  wire ZOUT1_carry__2_i_6_n_0;
  wire ZOUT1_carry__2_i_7_n_0;
  wire ZOUT1_carry__2_i_8_n_0;
  wire ZOUT1_carry__2_n_0;
  wire ZOUT1_carry__2_n_1;
  wire ZOUT1_carry__2_n_2;
  wire ZOUT1_carry__2_n_3;
  wire ZOUT1_carry__3_i_1_n_0;
  wire ZOUT1_carry__3_i_2_n_0;
  wire ZOUT1_carry__3_i_3_n_0;
  wire ZOUT1_carry__3_i_4_n_0;
  wire ZOUT1_carry__3_i_5_n_0;
  wire ZOUT1_carry__3_i_6_n_0;
  wire ZOUT1_carry__3_i_7_n_0;
  wire ZOUT1_carry__3_n_1;
  wire ZOUT1_carry__3_n_2;
  wire ZOUT1_carry__3_n_3;
  wire ZOUT1_carry_i_5_n_0;
  wire ZOUT1_carry_i_6_n_0;
  wire ZOUT1_carry_i_7_n_0;
  wire ZOUT1_carry_i_8_n_0;
  wire ZOUT1_carry_n_0;
  wire ZOUT1_carry_n_1;
  wire ZOUT1_carry_n_2;
  wire ZOUT1_carry_n_3;
  wire \ZOUT_reg[19]_0 ;
  wire \ZOUT_reg_n_0_[0] ;
  wire \ZOUT_reg_n_0_[19] ;
  wire \ZOUT_reg_n_0_[1] ;
  wire \ZOUT_reg_n_0_[2] ;
  wire \ZOUT_reg_n_0_[3] ;
  wire \ZOUT_reg_n_0_[4] ;
  wire \ZOUT_reg_n_0_[5] ;
  wire \ZOUT_reg_n_0_[6] ;
  wire \ZOUT_reg_n_0_[7] ;
  wire \ZOUT_reg_n_0_[8] ;
  wire \ZOUT_reg_n_0_[9] ;
  wire \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ;
  wire \href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ;
  wire href_r_reg_c_5_n_0;
  wire href_r_reg_c_6_n_0;
  wire href_r_reg_c_n_0;
  wire href_r_reg_gate_n_0;
  wire [15:3]img_Cb_r1;
  wire [15:6]img_Cb_r10;
  wire \img_Cb_r1[13]_i_2_n_0 ;
  wire \img_Cb_r1[13]_i_3_n_0 ;
  wire \img_Cb_r1[13]_i_4_n_0 ;
  wire \img_Cb_r1[13]_i_5_n_0 ;
  wire \img_Cb_r1[13]_i_6_n_0 ;
  wire \img_Cb_r1[13]_i_7_n_0 ;
  wire \img_Cb_r1[13]_i_8_n_0 ;
  wire \img_Cb_r1[13]_i_9_n_0 ;
  wire \img_Cb_r1[15]_i_2_n_0 ;
  wire \img_Cb_r1[15]_i_3_n_0 ;
  wire \img_Cb_r1[15]_i_4_n_0 ;
  wire \img_Cb_r1[9]_i_2_n_0 ;
  wire \img_Cb_r1[9]_i_3_n_0 ;
  wire \img_Cb_r1[9]_i_4_n_0 ;
  wire \img_Cb_r1[9]_i_5_n_0 ;
  wire \img_Cb_r1[9]_i_6_n_0 ;
  wire \img_Cb_r1[9]_i_7_n_0 ;
  wire \img_Cb_r1[9]_i_8_n_0 ;
  wire \img_Cb_r1_reg[13]_i_1_n_0 ;
  wire \img_Cb_r1_reg[13]_i_1_n_1 ;
  wire \img_Cb_r1_reg[13]_i_1_n_2 ;
  wire \img_Cb_r1_reg[13]_i_1_n_3 ;
  wire \img_Cb_r1_reg[15]_i_1_n_3 ;
  wire \img_Cb_r1_reg[9]_i_1_n_0 ;
  wire \img_Cb_r1_reg[9]_i_1_n_1 ;
  wire \img_Cb_r1_reg[9]_i_1_n_2 ;
  wire \img_Cb_r1_reg[9]_i_1_n_3 ;
  wire [2:2]img_Cb_r2;
  wire img_Cb_r20_n_100;
  wire img_Cb_r20_n_101;
  wire img_Cb_r20_n_102;
  wire img_Cb_r20_n_103;
  wire img_Cb_r20_n_104;
  wire img_Cb_r20_n_105;
  wire img_Cb_r20_n_87;
  wire img_Cb_r20_n_88;
  wire img_Cb_r20_n_89;
  wire img_Cb_r20_n_90;
  wire img_Cb_r20_n_91;
  wire img_Cb_r20_n_92;
  wire img_Cb_r20_n_93;
  wire img_Cb_r20_n_94;
  wire img_Cb_r20_n_95;
  wire img_Cb_r20_n_96;
  wire img_Cb_r20_n_97;
  wire img_Cb_r20_n_98;
  wire img_Cb_r20_n_99;
  wire [2:2]img_Cr_r1;
  wire img_Cr_r10_n_100;
  wire img_Cr_r10_n_101;
  wire img_Cr_r10_n_102;
  wire img_Cr_r10_n_103;
  wire img_Cr_r10_n_104;
  wire img_Cr_r10_n_105;
  wire img_Cr_r10_n_88;
  wire img_Cr_r10_n_89;
  wire img_Cr_r10_n_90;
  wire img_Cr_r10_n_91;
  wire img_Cr_r10_n_92;
  wire img_Cr_r10_n_93;
  wire img_Cr_r10_n_94;
  wire img_Cr_r10_n_95;
  wire img_Cr_r10_n_96;
  wire img_Cr_r10_n_97;
  wire img_Cr_r10_n_98;
  wire img_Cr_r10_n_99;
  wire [16:5]img_Cr_r2;
  wire [16:5]img_Cr_r20;
  wire \img_Cr_r2[11]_i_2_n_0 ;
  wire \img_Cr_r2[11]_i_3_n_0 ;
  wire \img_Cr_r2[11]_i_4_n_0 ;
  wire \img_Cr_r2[11]_i_5_n_0 ;
  wire \img_Cr_r2[15]_i_10_n_0 ;
  wire \img_Cr_r2[15]_i_11_n_0 ;
  wire \img_Cr_r2[15]_i_3_n_0 ;
  wire \img_Cr_r2[15]_i_5_n_0 ;
  wire \img_Cr_r2[15]_i_6_n_0 ;
  wire \img_Cr_r2[15]_i_7_n_0 ;
  wire \img_Cr_r2[15]_i_8_n_0 ;
  wire \img_Cr_r2[15]_i_9_n_0 ;
  wire \img_Cr_r2[16]_i_3_n_0 ;
  wire \img_Cr_r2[16]_i_4_n_0 ;
  wire \img_Cr_r2[7]_i_2_n_0 ;
  wire \img_Cr_r2_reg[11]_i_1_n_0 ;
  wire \img_Cr_r2_reg[11]_i_1_n_1 ;
  wire \img_Cr_r2_reg[11]_i_1_n_2 ;
  wire \img_Cr_r2_reg[11]_i_1_n_3 ;
  wire \img_Cr_r2_reg[15]_i_1_n_0 ;
  wire \img_Cr_r2_reg[15]_i_1_n_1 ;
  wire \img_Cr_r2_reg[15]_i_1_n_2 ;
  wire \img_Cr_r2_reg[15]_i_1_n_3 ;
  wire \img_Cr_r2_reg[15]_i_2_n_0 ;
  wire \img_Cr_r2_reg[15]_i_2_n_1 ;
  wire \img_Cr_r2_reg[15]_i_2_n_2 ;
  wire \img_Cr_r2_reg[15]_i_2_n_3 ;
  wire \img_Cr_r2_reg[15]_i_2_n_4 ;
  wire \img_Cr_r2_reg[15]_i_2_n_5 ;
  wire \img_Cr_r2_reg[15]_i_2_n_6 ;
  wire \img_Cr_r2_reg[15]_i_2_n_7 ;
  wire \img_Cr_r2_reg[15]_i_4_n_0 ;
  wire \img_Cr_r2_reg[15]_i_4_n_1 ;
  wire \img_Cr_r2_reg[15]_i_4_n_2 ;
  wire \img_Cr_r2_reg[15]_i_4_n_3 ;
  wire \img_Cr_r2_reg[15]_i_4_n_4 ;
  wire \img_Cr_r2_reg[15]_i_4_n_5 ;
  wire \img_Cr_r2_reg[15]_i_4_n_6 ;
  wire \img_Cr_r2_reg[15]_i_4_n_7 ;
  wire \img_Cr_r2_reg[16]_i_2_n_3 ;
  wire \img_Cr_r2_reg[16]_i_2_n_6 ;
  wire \img_Cr_r2_reg[16]_i_2_n_7 ;
  wire \img_Cr_r2_reg[7]_i_1_n_0 ;
  wire \img_Cr_r2_reg[7]_i_1_n_1 ;
  wire \img_Cr_r2_reg[7]_i_1_n_2 ;
  wire \img_Cr_r2_reg[7]_i_1_n_3 ;
  wire [17:0]img_Y_r1;
  wire img_Y_r10_n_100;
  wire img_Y_r10_n_101;
  wire img_Y_r10_n_102;
  wire img_Y_r10_n_103;
  wire img_Y_r10_n_104;
  wire img_Y_r10_n_105;
  wire img_Y_r10_n_88;
  wire img_Y_r10_n_89;
  wire img_Y_r10_n_90;
  wire img_Y_r10_n_91;
  wire img_Y_r10_n_92;
  wire img_Y_r10_n_93;
  wire img_Y_r10_n_94;
  wire img_Y_r10_n_95;
  wire img_Y_r10_n_96;
  wire img_Y_r10_n_97;
  wire img_Y_r10_n_98;
  wire img_Y_r10_n_99;
  wire [7:0]in_u_reg;
  wire [7:0]in_v_reg;
  wire in_vsync;
  wire [7:0]in_y_reg;
  wire [7:0]p_0_in;
  wire p_0_in0;
  wire pclk;
  wire rst_n;
  wire s_module_reset;
  wire s_yuv2rgb_en;
  wire s_yuv2rgb_en_reg;
  wire sobel_href_o;
  wire sobel_vsync_o;
  wire \vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ;
  wire \vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ;
  wire vsync_r_reg_gate_n_0;
  wire yuv2rgb_href;
  wire yuv2rgb_vsync;
  wire [3:0]NLW_XOUT1_carry_O_UNCONNECTED;
  wire [3:0]NLW_XOUT1_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_XOUT1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_XOUT1_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_YOUT1__1_carry_O_UNCONNECTED;
  wire [3:0]NLW_YOUT1__1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_YOUT1__1_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_YOUT1__1_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_ZOUT1_carry_O_UNCONNECTED;
  wire [3:0]NLW_ZOUT1_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_ZOUT1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_ZOUT1_carry__3_CO_UNCONNECTED;
  wire [3:1]\NLW_img_Cb_r1_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_img_Cb_r1_reg[15]_i_1_O_UNCONNECTED ;
  wire NLW_img_Cb_r20_CARRYCASCOUT_UNCONNECTED;
  wire NLW_img_Cb_r20_MULTSIGNOUT_UNCONNECTED;
  wire NLW_img_Cb_r20_OVERFLOW_UNCONNECTED;
  wire NLW_img_Cb_r20_PATTERNBDETECT_UNCONNECTED;
  wire NLW_img_Cb_r20_PATTERNDETECT_UNCONNECTED;
  wire NLW_img_Cb_r20_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_img_Cb_r20_ACOUT_UNCONNECTED;
  wire [17:0]NLW_img_Cb_r20_BCOUT_UNCONNECTED;
  wire [3:0]NLW_img_Cb_r20_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_img_Cb_r20_P_UNCONNECTED;
  wire [47:0]NLW_img_Cb_r20_PCOUT_UNCONNECTED;
  wire NLW_img_Cr_r10_CARRYCASCOUT_UNCONNECTED;
  wire NLW_img_Cr_r10_MULTSIGNOUT_UNCONNECTED;
  wire NLW_img_Cr_r10_OVERFLOW_UNCONNECTED;
  wire NLW_img_Cr_r10_PATTERNBDETECT_UNCONNECTED;
  wire NLW_img_Cr_r10_PATTERNDETECT_UNCONNECTED;
  wire NLW_img_Cr_r10_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_img_Cr_r10_ACOUT_UNCONNECTED;
  wire [17:0]NLW_img_Cr_r10_BCOUT_UNCONNECTED;
  wire [3:0]NLW_img_Cr_r10_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_img_Cr_r10_P_UNCONNECTED;
  wire [47:0]NLW_img_Cr_r10_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_img_Cr_r2_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_img_Cr_r2_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_img_Cr_r2_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_img_Cr_r2_reg[16]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_img_Cr_r2_reg[7]_i_1_O_UNCONNECTED ;
  wire NLW_img_Y_r10_CARRYCASCOUT_UNCONNECTED;
  wire NLW_img_Y_r10_MULTSIGNOUT_UNCONNECTED;
  wire NLW_img_Y_r10_OVERFLOW_UNCONNECTED;
  wire NLW_img_Y_r10_PATTERNBDETECT_UNCONNECTED;
  wire NLW_img_Y_r10_PATTERNDETECT_UNCONNECTED;
  wire NLW_img_Y_r10_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_img_Y_r10_ACOUT_UNCONNECTED;
  wire [17:0]NLW_img_Y_r10_BCOUT_UNCONNECTED;
  wire [3:0]NLW_img_Y_r10_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_img_Y_r10_P_UNCONNECTED;
  wire [47:0]NLW_img_Y_r10_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[0]_i_1 
       (.I0(\ZOUT_reg_n_0_[0] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[1]_i_1 
       (.I0(\ZOUT_reg_n_0_[1] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[2]_i_1 
       (.I0(\ZOUT_reg_n_0_[2] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[3]_i_1 
       (.I0(\ZOUT_reg_n_0_[3] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[4]_i_1 
       (.I0(\ZOUT_reg_n_0_[4] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[5]_i_1 
       (.I0(\ZOUT_reg_n_0_[5] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[6]_i_1 
       (.I0(\ZOUT_reg_n_0_[6] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[7]_i_1 
       (.I0(\ZOUT_reg_n_0_[7] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[7]_i_1_n_0 ));
  FDCE \B_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\B[0]_i_1_n_0 ),
        .Q(B[0]));
  FDCE \B_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\B[1]_i_1_n_0 ),
        .Q(B[1]));
  FDCE \B_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\B[2]_i_1_n_0 ),
        .Q(B[2]));
  FDCE \B_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\B[3]_i_1_n_0 ),
        .Q(B[3]));
  FDCE \B_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\B[4]_i_1_n_0 ),
        .Q(B[4]));
  FDCE \B_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\B[5]_i_1_n_0 ),
        .Q(B[5]));
  FDCE \B_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\B[6]_i_1_n_0 ),
        .Q(B[6]));
  FDCE \B_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\B[7]_i_1_n_0 ),
        .Q(B[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[0]_i_1 
       (.I0(\YOUT_reg_n_0_[0] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[1]_i_1 
       (.I0(\YOUT_reg_n_0_[1] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[2]_i_1 
       (.I0(\YOUT_reg_n_0_[2] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[3]_i_1 
       (.I0(\YOUT_reg_n_0_[3] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[4]_i_1 
       (.I0(\YOUT_reg_n_0_[4] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[5]_i_1 
       (.I0(\YOUT_reg_n_0_[5] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[6]_i_1 
       (.I0(\YOUT_reg_n_0_[6] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[7]_i_1 
       (.I0(\YOUT_reg_n_0_[7] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[7]_i_1_n_0 ));
  FDCE \G_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\G[0]_i_1_n_0 ),
        .Q(G[0]));
  FDCE \G_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\G[1]_i_1_n_0 ),
        .Q(G[1]));
  FDCE \G_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\G[2]_i_1_n_0 ),
        .Q(G[2]));
  FDCE \G_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\G[3]_i_1_n_0 ),
        .Q(G[3]));
  FDCE \G_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\G[4]_i_1_n_0 ),
        .Q(G[4]));
  FDCE \G_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\G[5]_i_1_n_0 ),
        .Q(G[5]));
  FDCE \G_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\G[6]_i_1_n_0 ),
        .Q(G[6]));
  FDCE \G_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(\G[7]_i_1_n_0 ),
        .Q(G[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[0]_i_1 
       (.I0(\XOUT_reg_n_0_[0] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[1]_i_1 
       (.I0(\XOUT_reg_n_0_[1] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[2]_i_1 
       (.I0(\XOUT_reg_n_0_[2] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[3]_i_1 
       (.I0(\XOUT_reg_n_0_[3] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[4]_i_1 
       (.I0(\XOUT_reg_n_0_[4] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[5]_i_1 
       (.I0(\XOUT_reg_n_0_[5] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[6]_i_1 
       (.I0(\XOUT_reg_n_0_[6] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[7]_i_1 
       (.I0(\XOUT_reg_n_0_[7] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[7]));
  FDCE \R_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(p_0_in[0]),
        .Q(R[0]));
  FDCE \R_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(p_0_in[1]),
        .Q(R[1]));
  FDCE \R_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(p_0_in[2]),
        .Q(R[2]));
  FDCE \R_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(p_0_in[3]),
        .Q(R[3]));
  FDCE \R_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(p_0_in[4]),
        .Q(R[4]));
  FDCE \R_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(p_0_in[5]),
        .Q(R[5]));
  FDCE \R_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(p_0_in[6]),
        .Q(R[6]));
  FDCE \R_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(p_0_in[7]),
        .Q(R[7]));
  CARRY4 XOUT1_carry
       (.CI(1'b0),
        .CO({XOUT1_carry_n_0,XOUT1_carry_n_1,XOUT1_carry_n_2,XOUT1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({img_Cr_r1,XOUT1_carry_i_2_n_0,XOUT1_carry_i_3_n_0,XOUT1_carry_i_4_n_0}),
        .O(NLW_XOUT1_carry_O_UNCONNECTED[3:0]),
        .S({XOUT1_carry_i_5_n_0,XOUT1_carry_i_6_n_0,XOUT1_carry_i_7_n_0,XOUT1_carry_i_8_n_0}));
  CARRY4 XOUT1_carry__0
       (.CI(XOUT1_carry_n_0),
        .CO({XOUT1_carry__0_n_0,XOUT1_carry__0_n_1,XOUT1_carry__0_n_2,XOUT1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({XOUT1_carry__0_i_1_n_0,XOUT1_carry__0_i_2_n_0,XOUT1_carry__0_i_3_n_0,XOUT1_carry__0_i_4_n_0}),
        .O(NLW_XOUT1_carry__0_O_UNCONNECTED[3:0]),
        .S({XOUT1_carry__0_i_5_n_0,XOUT1_carry__0_i_6_n_0,XOUT1_carry__0_i_7_n_0,XOUT1_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h80)) 
    XOUT1_carry__0_i_1
       (.I0(img_Cr_r10_n_99),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_99),
        .O(XOUT1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    XOUT1_carry__0_i_2
       (.I0(img_Y_r10_n_100),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_100),
        .O(XOUT1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    XOUT1_carry__0_i_3
       (.I0(img_Cr_r10_n_100),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_100),
        .O(XOUT1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    XOUT1_carry__0_i_4
       (.I0(img_Y_r10_n_102),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_102),
        .O(XOUT1_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h87007800)) 
    XOUT1_carry__0_i_5
       (.I0(img_Y_r10_n_99),
        .I1(img_Cr_r10_n_99),
        .I2(img_Cr_r10_n_98),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_98),
        .O(XOUT1_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    XOUT1_carry__0_i_6
       (.I0(img_Cr_r10_n_100),
        .I1(img_Y_r10_n_100),
        .I2(img_Cr_r10_n_99),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_99),
        .O(XOUT1_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    XOUT1_carry__0_i_7
       (.I0(img_Cr_r10_n_100),
        .I1(img_Y_r10_n_100),
        .I2(img_Y_r10_n_101),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cr_r10_n_101),
        .O(XOUT1_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    XOUT1_carry__0_i_8
       (.I0(img_Cr_r10_n_102),
        .I1(img_Y_r10_n_102),
        .I2(img_Cr_r10_n_101),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_101),
        .O(XOUT1_carry__0_i_8_n_0));
  CARRY4 XOUT1_carry__1
       (.CI(XOUT1_carry__0_n_0),
        .CO({XOUT1_carry__1_n_0,XOUT1_carry__1_n_1,XOUT1_carry__1_n_2,XOUT1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({XOUT1_carry__1_i_1_n_0,XOUT1_carry__1_i_2_n_0,XOUT1_carry__1_i_3_n_0,XOUT1_carry__1_i_4_n_0}),
        .O({XOUT1_carry__1_n_4,XOUT1_carry__1_n_5,XOUT1_carry__1_n_6,NLW_XOUT1_carry__1_O_UNCONNECTED[0]}),
        .S({XOUT1_carry__1_i_5_n_0,XOUT1_carry__1_i_6_n_0,XOUT1_carry__1_i_7_n_0,XOUT1_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h80)) 
    XOUT1_carry__1_i_1
       (.I0(img_Cr_r10_n_95),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_95),
        .O(XOUT1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    XOUT1_carry__1_i_2
       (.I0(img_Y_r10_n_96),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_96),
        .O(XOUT1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    XOUT1_carry__1_i_3
       (.I0(img_Cr_r10_n_96),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_96),
        .O(XOUT1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    XOUT1_carry__1_i_4
       (.I0(img_Cr_r10_n_98),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_98),
        .O(XOUT1_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h87007800)) 
    XOUT1_carry__1_i_5
       (.I0(img_Y_r10_n_95),
        .I1(img_Cr_r10_n_95),
        .I2(img_Cr_r10_n_94),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_94),
        .O(XOUT1_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    XOUT1_carry__1_i_6
       (.I0(img_Cr_r10_n_96),
        .I1(img_Y_r10_n_96),
        .I2(img_Cr_r10_n_95),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_95),
        .O(XOUT1_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    XOUT1_carry__1_i_7
       (.I0(img_Cr_r10_n_96),
        .I1(img_Y_r10_n_96),
        .I2(img_Y_r10_n_97),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cr_r10_n_97),
        .O(XOUT1_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h87007800)) 
    XOUT1_carry__1_i_8
       (.I0(img_Y_r10_n_98),
        .I1(img_Cr_r10_n_98),
        .I2(img_Cr_r10_n_97),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_97),
        .O(XOUT1_carry__1_i_8_n_0));
  CARRY4 XOUT1_carry__2
       (.CI(XOUT1_carry__1_n_0),
        .CO({XOUT1_carry__2_n_0,XOUT1_carry__2_n_1,XOUT1_carry__2_n_2,XOUT1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({XOUT1_carry__2_i_1_n_0,XOUT1_carry__2_i_2_n_0,XOUT1_carry__2_i_3_n_0,XOUT1_carry__2_i_4_n_0}),
        .O({XOUT1_carry__2_n_4,XOUT1_carry__2_n_5,XOUT1_carry__2_n_6,XOUT1_carry__2_n_7}),
        .S({XOUT1_carry__2_i_5_n_0,XOUT1_carry__2_i_6_n_0,XOUT1_carry__2_i_7_n_0,XOUT1_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'hC8)) 
    XOUT1_carry__2_i_1
       (.I0(img_Y_r10_n_91),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_91),
        .O(XOUT1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    XOUT1_carry__2_i_2
       (.I0(img_Cr_r10_n_91),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_91),
        .O(XOUT1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    XOUT1_carry__2_i_3
       (.I0(img_Cr_r10_n_93),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_93),
        .O(XOUT1_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    XOUT1_carry__2_i_4
       (.I0(img_Cr_r10_n_94),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_94),
        .O(XOUT1_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    XOUT1_carry__2_i_5
       (.I0(img_Cr_r10_n_91),
        .I1(img_Y_r10_n_91),
        .I2(img_Cr_r10_n_90),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_90),
        .O(XOUT1_carry__2_i_5_n_0));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    XOUT1_carry__2_i_6
       (.I0(img_Cr_r10_n_91),
        .I1(img_Y_r10_n_91),
        .I2(img_Y_r10_n_92),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cr_r10_n_92),
        .O(XOUT1_carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'h87007800)) 
    XOUT1_carry__2_i_7
       (.I0(img_Y_r10_n_93),
        .I1(img_Cr_r10_n_93),
        .I2(img_Cr_r10_n_92),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_92),
        .O(XOUT1_carry__2_i_7_n_0));
  LUT5 #(
    .INIT(32'h87007800)) 
    XOUT1_carry__2_i_8
       (.I0(img_Y_r10_n_94),
        .I1(img_Cr_r10_n_94),
        .I2(img_Cr_r10_n_93),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_93),
        .O(XOUT1_carry__2_i_8_n_0));
  CARRY4 XOUT1_carry__3
       (.CI(XOUT1_carry__2_n_0),
        .CO({NLW_XOUT1_carry__3_CO_UNCONNECTED[3],XOUT1_carry__3_n_1,XOUT1_carry__3_n_2,XOUT1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,XOUT1_carry__3_i_1_n_0,XOUT1_carry__3_i_2_n_0}),
        .O({p_0_in0,XOUT1_carry__3_n_5,XOUT1_carry__3_n_6,XOUT1_carry__3_n_7}),
        .S({1'b1,XOUT1_carry__3_i_3_n_0,XOUT1_carry__3_i_4_n_0,XOUT1_carry__3_i_5_n_0}));
  LUT3 #(
    .INIT(8'hB7)) 
    XOUT1_carry__3_i_1
       (.I0(img_Cr_r10_n_88),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_88),
        .O(XOUT1_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    XOUT1_carry__3_i_2
       (.I0(img_Cr_r10_n_90),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_90),
        .O(XOUT1_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h37)) 
    XOUT1_carry__3_i_3
       (.I0(img_Y_r10_n_88),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_88),
        .O(XOUT1_carry__3_i_3_n_0));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    XOUT1_carry__3_i_4
       (.I0(img_Cr_r10_n_88),
        .I1(img_Y_r10_n_88),
        .I2(img_Y_r10_n_89),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cr_r10_n_89),
        .O(XOUT1_carry__3_i_4_n_0));
  LUT5 #(
    .INIT(32'h87007800)) 
    XOUT1_carry__3_i_5
       (.I0(img_Y_r10_n_90),
        .I1(img_Cr_r10_n_90),
        .I2(img_Cr_r10_n_89),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_89),
        .O(XOUT1_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    XOUT1_carry_i_1
       (.I0(img_Cr_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Cr_r1));
  LUT2 #(
    .INIT(4'h8)) 
    XOUT1_carry_i_2
       (.I0(img_Y_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(XOUT1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    XOUT1_carry_i_3
       (.I0(img_Y_r10_n_104),
        .I1(\ZOUT_reg[19]_0 ),
        .O(XOUT1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    XOUT1_carry_i_4
       (.I0(img_Y_r10_n_105),
        .I1(\ZOUT_reg[19]_0 ),
        .O(XOUT1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6F9F)) 
    XOUT1_carry_i_5
       (.I0(img_Cr_r10_n_102),
        .I1(img_Y_r10_n_102),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Cr_r10_n_103),
        .O(XOUT1_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    XOUT1_carry_i_6
       (.I0(img_Cr_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_103),
        .O(XOUT1_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    XOUT1_carry_i_7
       (.I0(img_Y_r10_n_104),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_104),
        .O(XOUT1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    XOUT1_carry_i_8
       (.I0(img_Y_r10_n_105),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_105),
        .O(XOUT1_carry_i_8_n_0));
  FDCE \XOUT_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(XOUT1_carry__1_n_6),
        .Q(\XOUT_reg_n_0_[0] ));
  FDCE \XOUT_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(p_0_in0),
        .Q(\XOUT_reg_n_0_[19] ));
  FDCE \XOUT_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(XOUT1_carry__1_n_5),
        .Q(\XOUT_reg_n_0_[1] ));
  FDCE \XOUT_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(XOUT1_carry__1_n_4),
        .Q(\XOUT_reg_n_0_[2] ));
  FDCE \XOUT_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(XOUT1_carry__2_n_7),
        .Q(\XOUT_reg_n_0_[3] ));
  FDCE \XOUT_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(XOUT1_carry__2_n_6),
        .Q(\XOUT_reg_n_0_[4] ));
  FDCE \XOUT_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(XOUT1_carry__2_n_5),
        .Q(\XOUT_reg_n_0_[5] ));
  FDCE \XOUT_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(XOUT1_carry__2_n_4),
        .Q(\XOUT_reg_n_0_[6] ));
  FDCE \XOUT_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(XOUT1_carry__3_n_7),
        .Q(\XOUT_reg_n_0_[7] ));
  FDCE \XOUT_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(XOUT1_carry__3_n_6),
        .Q(\XOUT_reg_n_0_[8] ));
  FDCE \XOUT_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(XOUT1_carry__3_n_5),
        .Q(\XOUT_reg_n_0_[9] ));
  CARRY4 YOUT1__1_carry
       (.CI(1'b0),
        .CO({YOUT1__1_carry_n_0,YOUT1__1_carry_n_1,YOUT1__1_carry_n_2,YOUT1__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({YOUT1__1_carry_i_1_n_0,YOUT1__1_carry_i_2_n_0,YOUT1__1_carry_i_3_n_0,1'b1}),
        .O(NLW_YOUT1__1_carry_O_UNCONNECTED[3:0]),
        .S({YOUT1__1_carry_i_4_n_0,YOUT1__1_carry_i_5_n_0,YOUT1__1_carry_i_6_n_0,YOUT1__1_carry_i_7_n_0}));
  CARRY4 YOUT1__1_carry__0
       (.CI(YOUT1__1_carry_n_0),
        .CO({YOUT1__1_carry__0_n_0,YOUT1__1_carry__0_n_1,YOUT1__1_carry__0_n_2,YOUT1__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({YOUT1__1_carry__0_i_1_n_0,YOUT1__1_carry__0_i_2_n_0,YOUT1__1_carry__0_i_3_n_0,YOUT1__1_carry__0_i_4_n_0}),
        .O(NLW_YOUT1__1_carry__0_O_UNCONNECTED[3:0]),
        .S({YOUT1__1_carry__0_i_5_n_0,YOUT1__1_carry__0_i_6_n_0,YOUT1__1_carry__0_i_7_n_0,YOUT1__1_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h9000F999F999F999)) 
    YOUT1__1_carry__0_i_1
       (.I0(img_Cb_r1[7]),
        .I1(img_Cr_r2[7]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_98),
        .I4(img_Cb_r1[6]),
        .I5(img_Cr_r2[6]),
        .O(YOUT1__1_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__0_i_10
       (.I0(img_Y_r10_n_98),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__0_i_11
       (.I0(img_Y_r10_n_99),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[6]));
  LUT6 #(
    .INIT(64'h9000F999F999F999)) 
    YOUT1__1_carry__0_i_2
       (.I0(img_Cb_r1[6]),
        .I1(img_Cr_r2[6]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_99),
        .I4(img_Cb_r1[5]),
        .I5(img_Cr_r2[5]),
        .O(YOUT1__1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hF88F)) 
    YOUT1__1_carry__0_i_3
       (.I0(img_Y_r10_n_100),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r1[5]),
        .I3(img_Cr_r2[5]),
        .O(YOUT1__1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    YOUT1__1_carry__0_i_4
       (.I0(img_Y_r10_n_101),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r1[4]),
        .O(YOUT1__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996699669)) 
    YOUT1__1_carry__0_i_5
       (.I0(YOUT1__1_carry__0_i_1_n_0),
        .I1(img_Y_r1[8]),
        .I2(img_Cb_r1[8]),
        .I3(img_Cr_r2[8]),
        .I4(img_Cr_r2[7]),
        .I5(img_Cb_r1[7]),
        .O(YOUT1__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    YOUT1__1_carry__0_i_6
       (.I0(YOUT1__1_carry__0_i_2_n_0),
        .I1(img_Cb_r1[7]),
        .I2(img_Cr_r2[7]),
        .I3(img_Y_r1[7]),
        .I4(img_Cr_r2[6]),
        .I5(img_Cb_r1[6]),
        .O(YOUT1__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    YOUT1__1_carry__0_i_7
       (.I0(YOUT1__1_carry__0_i_3_n_0),
        .I1(img_Cb_r1[6]),
        .I2(img_Cr_r2[6]),
        .I3(img_Y_r1[6]),
        .I4(img_Cr_r2[5]),
        .I5(img_Cb_r1[5]),
        .O(YOUT1__1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h2D55D2AAD2AA2D55)) 
    YOUT1__1_carry__0_i_8
       (.I0(img_Cb_r1[4]),
        .I1(img_Y_r10_n_101),
        .I2(img_Y_r10_n_100),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cr_r2[5]),
        .I5(img_Cb_r1[5]),
        .O(YOUT1__1_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__0_i_9
       (.I0(img_Y_r10_n_97),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[8]));
  CARRY4 YOUT1__1_carry__1
       (.CI(YOUT1__1_carry__0_n_0),
        .CO({YOUT1__1_carry__1_n_0,YOUT1__1_carry__1_n_1,YOUT1__1_carry__1_n_2,YOUT1__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({YOUT1__1_carry__1_i_1_n_0,YOUT1__1_carry__1_i_2_n_0,YOUT1__1_carry__1_i_3_n_0,YOUT1__1_carry__1_i_4_n_0}),
        .O(YOUT1[12:9]),
        .S({YOUT1__1_carry__1_i_5_n_0,YOUT1__1_carry__1_i_6_n_0,YOUT1__1_carry__1_i_7_n_0,YOUT1__1_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'h9000F999F999F999)) 
    YOUT1__1_carry__1_i_1
       (.I0(img_Cb_r1[11]),
        .I1(img_Cr_r2[11]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_94),
        .I4(img_Cb_r1[10]),
        .I5(img_Cr_r2[10]),
        .O(YOUT1__1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    YOUT1__1_carry__1_i_10
       (.I0(img_Cr_r2[9]),
        .I1(img_Cb_r1[9]),
        .O(YOUT1__1_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__1_i_11
       (.I0(img_Y_r10_n_93),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[12]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__1_i_12
       (.I0(img_Y_r10_n_94),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[11]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__1_i_13
       (.I0(img_Y_r10_n_95),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[10]));
  LUT6 #(
    .INIT(64'h9000F999F999F999)) 
    YOUT1__1_carry__1_i_2
       (.I0(img_Cb_r1[10]),
        .I1(img_Cr_r2[10]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_95),
        .I4(img_Cb_r1[9]),
        .I5(img_Cr_r2[9]),
        .O(YOUT1__1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9090F990F990F9F9)) 
    YOUT1__1_carry__1_i_3
       (.I0(img_Cb_r1[9]),
        .I1(img_Cr_r2[9]),
        .I2(img_Y_r1[9]),
        .I3(img_Y_r1[8]),
        .I4(img_Cr_r2[8]),
        .I5(img_Cb_r1[8]),
        .O(YOUT1__1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hD42B03032BD4FCFC)) 
    YOUT1__1_carry__1_i_4
       (.I0(img_Y_r10_n_97),
        .I1(img_Cr_r2[8]),
        .I2(img_Cb_r1[8]),
        .I3(img_Y_r10_n_96),
        .I4(\ZOUT_reg[19]_0 ),
        .I5(YOUT1__1_carry__1_i_10_n_0),
        .O(YOUT1__1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996699669)) 
    YOUT1__1_carry__1_i_5
       (.I0(YOUT1__1_carry__1_i_1_n_0),
        .I1(img_Y_r1[12]),
        .I2(img_Cb_r1[12]),
        .I3(img_Cr_r2[12]),
        .I4(img_Cr_r2[11]),
        .I5(img_Cb_r1[11]),
        .O(YOUT1__1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    YOUT1__1_carry__1_i_6
       (.I0(YOUT1__1_carry__1_i_2_n_0),
        .I1(img_Cb_r1[11]),
        .I2(img_Cr_r2[11]),
        .I3(img_Y_r1[11]),
        .I4(img_Cr_r2[10]),
        .I5(img_Cb_r1[10]),
        .O(YOUT1__1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    YOUT1__1_carry__1_i_7
       (.I0(YOUT1__1_carry__1_i_3_n_0),
        .I1(img_Cb_r1[10]),
        .I2(img_Cr_r2[10]),
        .I3(img_Y_r1[10]),
        .I4(img_Cr_r2[9]),
        .I5(img_Cb_r1[9]),
        .O(YOUT1__1_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h95AAAA95AA9595AA)) 
    YOUT1__1_carry__1_i_8
       (.I0(YOUT1__1_carry__1_i_4_n_0),
        .I1(img_Cr_r2[7]),
        .I2(img_Cb_r1[7]),
        .I3(img_Y_r1[8]),
        .I4(img_Cb_r1[8]),
        .I5(img_Cr_r2[8]),
        .O(YOUT1__1_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__1_i_9
       (.I0(img_Y_r10_n_96),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[9]));
  CARRY4 YOUT1__1_carry__2
       (.CI(YOUT1__1_carry__1_n_0),
        .CO({YOUT1__1_carry__2_n_0,YOUT1__1_carry__2_n_1,YOUT1__1_carry__2_n_2,YOUT1__1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({YOUT1__1_carry__2_i_1_n_0,YOUT1__1_carry__2_i_2_n_0,YOUT1__1_carry__2_i_3_n_0,YOUT1__1_carry__2_i_4_n_0}),
        .O(YOUT1[16:13]),
        .S({YOUT1__1_carry__2_i_5_n_0,YOUT1__1_carry__2_i_6_n_0,YOUT1__1_carry__2_i_7_n_0,YOUT1__1_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'hD42B03032BD4FCFC)) 
    YOUT1__1_carry__2_i_1
       (.I0(img_Y_r10_n_90),
        .I1(img_Cr_r2[15]),
        .I2(img_Cb_r1[15]),
        .I3(img_Y_r10_n_89),
        .I4(\ZOUT_reg[19]_0 ),
        .I5(img_Cr_r2[16]),
        .O(YOUT1__1_carry__2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__2_i_10
       (.I0(img_Y_r10_n_92),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[13]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__2_i_11
       (.I0(img_Y_r10_n_89),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[16]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h7111)) 
    YOUT1__1_carry__2_i_12
       (.I0(img_Cb_r1[14]),
        .I1(img_Cr_r2[14]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_91),
        .O(YOUT1__1_carry__2_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__2_i_13
       (.I0(img_Y_r10_n_90),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[15]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    YOUT1__1_carry__2_i_14
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_90),
        .I2(img_Cb_r1[15]),
        .I3(img_Cr_r2[15]),
        .O(YOUT1__1_carry__2_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    YOUT1__1_carry__2_i_15
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_91),
        .I2(img_Cb_r1[14]),
        .I3(img_Cr_r2[14]),
        .O(YOUT1__1_carry__2_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    YOUT1__1_carry__2_i_16
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_92),
        .I2(img_Cb_r1[13]),
        .I3(img_Cr_r2[13]),
        .O(YOUT1__1_carry__2_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000960096009696)) 
    YOUT1__1_carry__2_i_2
       (.I0(img_Cr_r2[14]),
        .I1(img_Cb_r1[14]),
        .I2(img_Y_r1[14]),
        .I3(img_Y_r1[13]),
        .I4(img_Cr_r2[13]),
        .I5(img_Cb_r1[13]),
        .O(YOUT1__1_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000960096009696)) 
    YOUT1__1_carry__2_i_3
       (.I0(img_Cr_r2[13]),
        .I1(img_Cb_r1[13]),
        .I2(img_Y_r1[13]),
        .I3(img_Y_r1[12]),
        .I4(img_Cr_r2[12]),
        .I5(img_Cb_r1[12]),
        .O(YOUT1__1_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000966696669666)) 
    YOUT1__1_carry__2_i_4
       (.I0(img_Cr_r2[12]),
        .I1(img_Cb_r1[12]),
        .I2(img_Y_r10_n_93),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r1[11]),
        .I5(img_Cr_r2[11]),
        .O(YOUT1__1_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h6999666966699666)) 
    YOUT1__1_carry__2_i_5
       (.I0(img_Cr_r2[16]),
        .I1(img_Y_r1[16]),
        .I2(YOUT1__1_carry__2_i_12_n_0),
        .I3(img_Y_r1[15]),
        .I4(img_Cb_r1[15]),
        .I5(img_Cr_r2[15]),
        .O(YOUT1__1_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h6999666966696669)) 
    YOUT1__1_carry__2_i_6
       (.I0(YOUT1__1_carry__2_i_2_n_0),
        .I1(YOUT1__1_carry__2_i_14_n_0),
        .I2(img_Cb_r1[14]),
        .I3(img_Cr_r2[14]),
        .I4(\ZOUT_reg[19]_0 ),
        .I5(img_Y_r10_n_91),
        .O(YOUT1__1_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h6999666966696669)) 
    YOUT1__1_carry__2_i_7
       (.I0(YOUT1__1_carry__2_i_3_n_0),
        .I1(YOUT1__1_carry__2_i_15_n_0),
        .I2(img_Cb_r1[13]),
        .I3(img_Cr_r2[13]),
        .I4(\ZOUT_reg[19]_0 ),
        .I5(img_Y_r10_n_92),
        .O(YOUT1__1_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h6999666966696669)) 
    YOUT1__1_carry__2_i_8
       (.I0(YOUT1__1_carry__2_i_4_n_0),
        .I1(YOUT1__1_carry__2_i_16_n_0),
        .I2(img_Cb_r1[12]),
        .I3(img_Cr_r2[12]),
        .I4(\ZOUT_reg[19]_0 ),
        .I5(img_Y_r10_n_93),
        .O(YOUT1__1_carry__2_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__2_i_9
       (.I0(img_Y_r10_n_91),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[14]));
  CARRY4 YOUT1__1_carry__3
       (.CI(YOUT1__1_carry__2_n_0),
        .CO({NLW_YOUT1__1_carry__3_CO_UNCONNECTED[3:2],YOUT1__1_carry__3_n_2,YOUT1__1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,img_Y_r1[17],YOUT1__1_carry__3_i_2_n_0}),
        .O({NLW_YOUT1__1_carry__3_O_UNCONNECTED[3],YOUT1[19:17]}),
        .S({1'b0,1'b1,YOUT1__1_carry__3_i_3_n_0,YOUT1__1_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry__3_i_1
       (.I0(img_Y_r10_n_88),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[17]));
  LUT6 #(
    .INIT(64'h4040C440C440D5D5)) 
    YOUT1__1_carry__3_i_2
       (.I0(img_Cr_r2[16]),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_89),
        .I3(img_Y_r10_n_90),
        .I4(img_Cr_r2[15]),
        .I5(img_Cb_r1[15]),
        .O(YOUT1__1_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    YOUT1__1_carry__3_i_3
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_88),
        .O(YOUT1__1_carry__3_i_3_n_0));
  LUT5 #(
    .INIT(32'h8EF571F5)) 
    YOUT1__1_carry__3_i_4
       (.I0(YOUT1__1_carry__3_i_5_n_0),
        .I1(img_Y_r10_n_89),
        .I2(img_Cr_r2[16]),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_88),
        .O(YOUT1__1_carry__3_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h7111)) 
    YOUT1__1_carry__3_i_5
       (.I0(img_Cb_r1[15]),
        .I1(img_Cr_r2[15]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_90),
        .O(YOUT1__1_carry__3_i_5_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    YOUT1__1_carry_i_1
       (.I0(img_Y_r10_n_102),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r1[3]),
        .O(YOUT1__1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry_i_2
       (.I0(img_Y_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(YOUT1__1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    YOUT1__1_carry_i_3
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_103),
        .O(YOUT1__1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hD2AA2D55)) 
    YOUT1__1_carry_i_4
       (.I0(img_Cb_r1[3]),
        .I1(img_Y_r10_n_102),
        .I2(img_Y_r10_n_101),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r1[4]),
        .O(YOUT1__1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9C6C)) 
    YOUT1__1_carry_i_5
       (.I0(img_Y_r10_n_102),
        .I1(img_Cb_r1[3]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_103),
        .O(YOUT1__1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    YOUT1__1_carry_i_6
       (.I0(img_Y_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(YOUT1__1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    YOUT1__1_carry_i_7
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_104),
        .O(YOUT1__1_carry_i_7_n_0));
  FDCE \YOUT_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[9]),
        .Q(\YOUT_reg_n_0_[0] ));
  FDCE \YOUT_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[19]),
        .Q(\YOUT_reg_n_0_[19] ));
  FDCE \YOUT_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[10]),
        .Q(\YOUT_reg_n_0_[1] ));
  FDCE \YOUT_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[11]),
        .Q(\YOUT_reg_n_0_[2] ));
  FDCE \YOUT_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[12]),
        .Q(\YOUT_reg_n_0_[3] ));
  FDCE \YOUT_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[13]),
        .Q(\YOUT_reg_n_0_[4] ));
  FDCE \YOUT_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[14]),
        .Q(\YOUT_reg_n_0_[5] ));
  FDCE \YOUT_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[15]),
        .Q(\YOUT_reg_n_0_[6] ));
  FDCE \YOUT_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[16]),
        .Q(\YOUT_reg_n_0_[7] ));
  FDCE \YOUT_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[17]),
        .Q(\YOUT_reg_n_0_[8] ));
  FDCE \YOUT_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(YOUT1[18]),
        .Q(\YOUT_reg_n_0_[9] ));
  CARRY4 ZOUT1_carry
       (.CI(1'b0),
        .CO({ZOUT1_carry_n_0,ZOUT1_carry_n_1,ZOUT1_carry_n_2,ZOUT1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({img_Cb_r2,img_Y_r1[2:0]}),
        .O(NLW_ZOUT1_carry_O_UNCONNECTED[3:0]),
        .S({ZOUT1_carry_i_5_n_0,ZOUT1_carry_i_6_n_0,ZOUT1_carry_i_7_n_0,ZOUT1_carry_i_8_n_0}));
  CARRY4 ZOUT1_carry__0
       (.CI(ZOUT1_carry_n_0),
        .CO({ZOUT1_carry__0_n_0,ZOUT1_carry__0_n_1,ZOUT1_carry__0_n_2,ZOUT1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ZOUT1_carry__0_i_1_n_0,ZOUT1_carry__0_i_2_n_0,ZOUT1_carry__0_i_3_n_0,ZOUT1_carry__0_i_4_n_0}),
        .O(NLW_ZOUT1_carry__0_O_UNCONNECTED[3:0]),
        .S({ZOUT1_carry__0_i_5_n_0,ZOUT1_carry__0_i_6_n_0,ZOUT1_carry__0_i_7_n_0,ZOUT1_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h80)) 
    ZOUT1_carry__0_i_1
       (.I0(img_Cb_r20_n_99),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_99),
        .O(ZOUT1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    ZOUT1_carry__0_i_2
       (.I0(img_Y_r10_n_100),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_100),
        .O(ZOUT1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    ZOUT1_carry__0_i_3
       (.I0(img_Cb_r20_n_100),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_100),
        .O(ZOUT1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    ZOUT1_carry__0_i_4
       (.I0(img_Cb_r20_n_102),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_102),
        .O(ZOUT1_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h87007800)) 
    ZOUT1_carry__0_i_5
       (.I0(img_Y_r10_n_99),
        .I1(img_Cb_r20_n_99),
        .I2(img_Cb_r20_n_98),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_98),
        .O(ZOUT1_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    ZOUT1_carry__0_i_6
       (.I0(img_Cb_r20_n_100),
        .I1(img_Y_r10_n_100),
        .I2(img_Cb_r20_n_99),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_99),
        .O(ZOUT1_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    ZOUT1_carry__0_i_7
       (.I0(img_Cb_r20_n_100),
        .I1(img_Y_r10_n_100),
        .I2(img_Y_r10_n_101),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r20_n_101),
        .O(ZOUT1_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h87007800)) 
    ZOUT1_carry__0_i_8
       (.I0(img_Y_r10_n_102),
        .I1(img_Cb_r20_n_102),
        .I2(img_Cb_r20_n_101),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_101),
        .O(ZOUT1_carry__0_i_8_n_0));
  CARRY4 ZOUT1_carry__1
       (.CI(ZOUT1_carry__0_n_0),
        .CO({ZOUT1_carry__1_n_0,ZOUT1_carry__1_n_1,ZOUT1_carry__1_n_2,ZOUT1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ZOUT1_carry__1_i_1_n_0,ZOUT1_carry__1_i_2_n_0,ZOUT1_carry__1_i_3_n_0,ZOUT1_carry__1_i_4_n_0}),
        .O({ZOUT1[11:9],NLW_ZOUT1_carry__1_O_UNCONNECTED[0]}),
        .S({ZOUT1_carry__1_i_5_n_0,ZOUT1_carry__1_i_6_n_0,ZOUT1_carry__1_i_7_n_0,ZOUT1_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hC8)) 
    ZOUT1_carry__1_i_1
       (.I0(img_Y_r10_n_95),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_95),
        .O(ZOUT1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    ZOUT1_carry__1_i_2
       (.I0(img_Y_r10_n_96),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_96),
        .O(ZOUT1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    ZOUT1_carry__1_i_3
       (.I0(img_Cb_r20_n_96),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_96),
        .O(ZOUT1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    ZOUT1_carry__1_i_4
       (.I0(img_Cb_r20_n_98),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_98),
        .O(ZOUT1_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    ZOUT1_carry__1_i_5
       (.I0(img_Cb_r20_n_95),
        .I1(img_Y_r10_n_95),
        .I2(img_Cb_r20_n_94),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_94),
        .O(ZOUT1_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h1EFFE1FF)) 
    ZOUT1_carry__1_i_6
       (.I0(img_Cb_r20_n_96),
        .I1(img_Y_r10_n_96),
        .I2(img_Cb_r20_n_95),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_95),
        .O(ZOUT1_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    ZOUT1_carry__1_i_7
       (.I0(img_Cb_r20_n_96),
        .I1(img_Y_r10_n_96),
        .I2(img_Y_r10_n_97),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r20_n_97),
        .O(ZOUT1_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h87007800)) 
    ZOUT1_carry__1_i_8
       (.I0(img_Y_r10_n_98),
        .I1(img_Cb_r20_n_98),
        .I2(img_Cb_r20_n_97),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_97),
        .O(ZOUT1_carry__1_i_8_n_0));
  CARRY4 ZOUT1_carry__2
       (.CI(ZOUT1_carry__1_n_0),
        .CO({ZOUT1_carry__2_n_0,ZOUT1_carry__2_n_1,ZOUT1_carry__2_n_2,ZOUT1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ZOUT1_carry__2_i_1_n_0,ZOUT1_carry__2_i_2_n_0,ZOUT1_carry__2_i_3_n_0,ZOUT1_carry__2_i_4_n_0}),
        .O(ZOUT1[15:12]),
        .S({ZOUT1_carry__2_i_5_n_0,ZOUT1_carry__2_i_6_n_0,ZOUT1_carry__2_i_7_n_0,ZOUT1_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'hC8)) 
    ZOUT1_carry__2_i_1
       (.I0(img_Y_r10_n_91),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_91),
        .O(ZOUT1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    ZOUT1_carry__2_i_2
       (.I0(img_Cb_r20_n_91),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_91),
        .O(ZOUT1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    ZOUT1_carry__2_i_3
       (.I0(img_Y_r10_n_93),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_93),
        .O(ZOUT1_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    ZOUT1_carry__2_i_4
       (.I0(img_Cb_r20_n_93),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_93),
        .O(ZOUT1_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'h1EFFE1FF)) 
    ZOUT1_carry__2_i_5
       (.I0(img_Cb_r20_n_91),
        .I1(img_Y_r10_n_91),
        .I2(img_Cb_r20_n_90),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_90),
        .O(ZOUT1_carry__2_i_5_n_0));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    ZOUT1_carry__2_i_6
       (.I0(img_Cb_r20_n_91),
        .I1(img_Y_r10_n_91),
        .I2(img_Y_r10_n_92),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r20_n_92),
        .O(ZOUT1_carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    ZOUT1_carry__2_i_7
       (.I0(img_Cb_r20_n_93),
        .I1(img_Y_r10_n_93),
        .I2(img_Cb_r20_n_92),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_92),
        .O(ZOUT1_carry__2_i_7_n_0));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    ZOUT1_carry__2_i_8
       (.I0(img_Cb_r20_n_93),
        .I1(img_Y_r10_n_93),
        .I2(img_Y_r10_n_94),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r20_n_94),
        .O(ZOUT1_carry__2_i_8_n_0));
  CARRY4 ZOUT1_carry__3
       (.CI(ZOUT1_carry__2_n_0),
        .CO({NLW_ZOUT1_carry__3_CO_UNCONNECTED[3],ZOUT1_carry__3_n_1,ZOUT1_carry__3_n_2,ZOUT1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ZOUT1_carry__3_i_1_n_0,ZOUT1_carry__3_i_2_n_0,ZOUT1_carry__3_i_3_n_0}),
        .O(ZOUT1[19:16]),
        .S({ZOUT1_carry__3_i_4_n_0,ZOUT1_carry__3_i_5_n_0,ZOUT1_carry__3_i_6_n_0,ZOUT1_carry__3_i_7_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    ZOUT1_carry__3_i_1
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Cb_r20_n_87),
        .O(ZOUT1_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    ZOUT1_carry__3_i_2
       (.I0(img_Y_r10_n_89),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_89),
        .O(ZOUT1_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    ZOUT1_carry__3_i_3
       (.I0(img_Y_r10_n_90),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_90),
        .O(ZOUT1_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ZOUT1_carry__3_i_4
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Cb_r20_n_87),
        .O(ZOUT1_carry__3_i_4_n_0));
  LUT4 #(
    .INIT(16'h9F5F)) 
    ZOUT1_carry__3_i_5
       (.I0(img_Cb_r20_n_87),
        .I1(img_Y_r10_n_88),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Cb_r20_n_88),
        .O(ZOUT1_carry__3_i_5_n_0));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    ZOUT1_carry__3_i_6
       (.I0(img_Cb_r20_n_89),
        .I1(img_Y_r10_n_89),
        .I2(img_Cb_r20_n_88),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_88),
        .O(ZOUT1_carry__3_i_6_n_0));
  LUT5 #(
    .INIT(32'h1EFFE1FF)) 
    ZOUT1_carry__3_i_7
       (.I0(img_Cb_r20_n_90),
        .I1(img_Y_r10_n_90),
        .I2(img_Cb_r20_n_89),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_89),
        .O(ZOUT1_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ZOUT1_carry_i_1
       (.I0(img_Cb_r20_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Cb_r2));
  LUT2 #(
    .INIT(4'h8)) 
    ZOUT1_carry_i_2
       (.I0(img_Y_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ZOUT1_carry_i_3
       (.I0(img_Y_r10_n_104),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ZOUT1_carry_i_4
       (.I0(img_Y_r10_n_105),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[0]));
  LUT4 #(
    .INIT(16'h9060)) 
    ZOUT1_carry_i_5
       (.I0(img_Cb_r20_n_103),
        .I1(img_Cb_r20_n_102),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_102),
        .O(ZOUT1_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hB7)) 
    ZOUT1_carry_i_6
       (.I0(img_Cb_r20_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_103),
        .O(ZOUT1_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    ZOUT1_carry_i_7
       (.I0(img_Y_r10_n_104),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_104),
        .O(ZOUT1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    ZOUT1_carry_i_8
       (.I0(img_Y_r10_n_105),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_105),
        .O(ZOUT1_carry_i_8_n_0));
  FDCE \ZOUT_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[9]),
        .Q(\ZOUT_reg_n_0_[0] ));
  FDCE \ZOUT_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[19]),
        .Q(\ZOUT_reg_n_0_[19] ));
  FDCE \ZOUT_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[10]),
        .Q(\ZOUT_reg_n_0_[1] ));
  FDCE \ZOUT_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[11]),
        .Q(\ZOUT_reg_n_0_[2] ));
  FDCE \ZOUT_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[12]),
        .Q(\ZOUT_reg_n_0_[3] ));
  FDCE \ZOUT_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[13]),
        .Q(\ZOUT_reg_n_0_[4] ));
  FDCE \ZOUT_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[14]),
        .Q(\ZOUT_reg_n_0_[5] ));
  FDCE \ZOUT_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[15]),
        .Q(\ZOUT_reg_n_0_[6] ));
  FDCE \ZOUT_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[16]),
        .Q(\ZOUT_reg_n_0_[7] ));
  FDCE \ZOUT_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[17]),
        .Q(\ZOUT_reg_n_0_[8] ));
  FDCE \ZOUT_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(ZOUT1[18]),
        .Q(\ZOUT_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[0]_i_1 
       (.I0(B[0]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[10]_i_1 
       (.I0(G[2]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[11]_i_1 
       (.I0(G[3]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[12]_i_1 
       (.I0(G[4]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[13]_i_1 
       (.I0(G[5]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[14]_i_1 
       (.I0(G[6]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[15]_i_1 
       (.I0(G[7]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[16]_i_1__0 
       (.I0(R[0]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[16]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[17]_i_1__0 
       (.I0(R[1]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[17]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[18]_i_1__0 
       (.I0(R[2]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[18]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[19]_i_1__0 
       (.I0(R[3]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[19]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[1]_i_1 
       (.I0(B[1]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[20]_i_1__0 
       (.I0(R[4]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[20]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[21]_i_1__0 
       (.I0(R[5]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[21]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[22]_i_1__0 
       (.I0(R[6]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[22]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[23]_i_1__0 
       (.I0(R[7]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[23]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[2]_i_1 
       (.I0(B[2]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[3]_i_1 
       (.I0(B[3]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[4]_i_1 
       (.I0(B[4]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[5]_i_1 
       (.I0(B[5]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[6]_i_1 
       (.I0(B[6]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[7]_i_1 
       (.I0(B[7]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[8]_i_1 
       (.I0(G[0]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_reg[9]_i_1 
       (.I0(G[1]),
        .I1(yuv2rgb_href),
        .I2(s_yuv2rgb_en),
        .I3(Q[9]),
        .O(D[9]));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/href_r_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 " *) 
  SRL16E \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(sobel_href_o),
        .Q(\href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ));
  FDRE \href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6 
       (.C(pclk),
        .CE(1'b1),
        .D(\href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ),
        .Q(\href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ),
        .R(1'b0));
  FDCE \href_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(href_r_reg_gate_n_0),
        .Q(yuv2rgb_href));
  FDCE href_r_reg_c
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(1'b1),
        .Q(href_r_reg_c_n_0));
  FDCE href_r_reg_c_5
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(href_r_reg_c_n_0),
        .Q(href_r_reg_c_5_n_0));
  FDCE href_r_reg_c_6
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(href_r_reg_c_5_n_0),
        .Q(href_r_reg_c_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    href_r_reg_gate
       (.I0(\href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ),
        .I1(href_r_reg_c_6_n_0),
        .O(href_r_reg_gate_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \img_Cb_r1[13]_i_2 
       (.I0(in_u_reg[4]),
        .I1(in_u_reg[6]),
        .O(\img_Cb_r1[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \img_Cb_r1[13]_i_3 
       (.I0(in_u_reg[3]),
        .I1(in_u_reg[5]),
        .O(\img_Cb_r1[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \img_Cb_r1[13]_i_4 
       (.I0(in_u_reg[4]),
        .I1(in_u_reg[7]),
        .I2(in_u_reg[2]),
        .O(\img_Cb_r1[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \img_Cb_r1[13]_i_5 
       (.I0(in_u_reg[3]),
        .I1(in_u_reg[6]),
        .I2(in_u_reg[1]),
        .O(\img_Cb_r1[13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \img_Cb_r1[13]_i_6 
       (.I0(in_u_reg[6]),
        .I1(in_u_reg[4]),
        .I2(in_u_reg[7]),
        .I3(in_u_reg[5]),
        .O(\img_Cb_r1[13]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \img_Cb_r1[13]_i_7 
       (.I0(in_u_reg[5]),
        .I1(in_u_reg[3]),
        .I2(in_u_reg[6]),
        .I3(in_u_reg[4]),
        .O(\img_Cb_r1[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \img_Cb_r1[13]_i_8 
       (.I0(in_u_reg[2]),
        .I1(in_u_reg[7]),
        .I2(in_u_reg[4]),
        .I3(in_u_reg[5]),
        .I4(in_u_reg[3]),
        .O(\img_Cb_r1[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \img_Cb_r1[13]_i_9 
       (.I0(in_u_reg[1]),
        .I1(in_u_reg[6]),
        .I2(in_u_reg[3]),
        .I3(in_u_reg[4]),
        .I4(in_u_reg[7]),
        .I5(in_u_reg[2]),
        .O(\img_Cb_r1[13]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \img_Cb_r1[15]_i_2 
       (.I0(in_u_reg[5]),
        .I1(in_u_reg[7]),
        .O(\img_Cb_r1[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cb_r1[15]_i_3 
       (.I0(in_u_reg[6]),
        .I1(in_u_reg[7]),
        .O(\img_Cb_r1[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \img_Cb_r1[15]_i_4 
       (.I0(in_u_reg[7]),
        .I1(in_u_reg[5]),
        .I2(in_u_reg[6]),
        .O(\img_Cb_r1[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \img_Cb_r1[9]_i_2 
       (.I0(in_u_reg[2]),
        .I1(in_u_reg[5]),
        .I2(in_u_reg[0]),
        .O(\img_Cb_r1[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \img_Cb_r1[9]_i_3 
       (.I0(in_u_reg[2]),
        .I1(in_u_reg[5]),
        .I2(in_u_reg[0]),
        .O(\img_Cb_r1[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \img_Cb_r1[9]_i_4 
       (.I0(in_u_reg[3]),
        .I1(in_u_reg[0]),
        .O(\img_Cb_r1[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \img_Cb_r1[9]_i_5 
       (.I0(in_u_reg[0]),
        .I1(in_u_reg[5]),
        .I2(in_u_reg[2]),
        .I3(in_u_reg[3]),
        .I4(in_u_reg[6]),
        .I5(in_u_reg[1]),
        .O(\img_Cb_r1[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \img_Cb_r1[9]_i_6 
       (.I0(in_u_reg[2]),
        .I1(in_u_reg[5]),
        .I2(in_u_reg[0]),
        .I3(in_u_reg[1]),
        .I4(in_u_reg[4]),
        .O(\img_Cb_r1[9]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \img_Cb_r1[9]_i_7 
       (.I0(in_u_reg[0]),
        .I1(in_u_reg[3]),
        .I2(in_u_reg[4]),
        .I3(in_u_reg[1]),
        .O(\img_Cb_r1[9]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cb_r1[9]_i_8 
       (.I0(in_u_reg[0]),
        .I1(in_u_reg[3]),
        .O(\img_Cb_r1[9]_i_8_n_0 ));
  FDCE \img_Cb_r1_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cb_r10[10]),
        .Q(img_Cb_r1[10]));
  FDCE \img_Cb_r1_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cb_r10[11]),
        .Q(img_Cb_r1[11]));
  FDCE \img_Cb_r1_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cb_r10[12]),
        .Q(img_Cb_r1[12]));
  FDCE \img_Cb_r1_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cb_r10[13]),
        .Q(img_Cb_r1[13]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \img_Cb_r1_reg[13]_i_1 
       (.CI(\img_Cb_r1_reg[9]_i_1_n_0 ),
        .CO({\img_Cb_r1_reg[13]_i_1_n_0 ,\img_Cb_r1_reg[13]_i_1_n_1 ,\img_Cb_r1_reg[13]_i_1_n_2 ,\img_Cb_r1_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\img_Cb_r1[13]_i_2_n_0 ,\img_Cb_r1[13]_i_3_n_0 ,\img_Cb_r1[13]_i_4_n_0 ,\img_Cb_r1[13]_i_5_n_0 }),
        .O(img_Cb_r10[13:10]),
        .S({\img_Cb_r1[13]_i_6_n_0 ,\img_Cb_r1[13]_i_7_n_0 ,\img_Cb_r1[13]_i_8_n_0 ,\img_Cb_r1[13]_i_9_n_0 }));
  FDCE \img_Cb_r1_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cb_r10[14]),
        .Q(img_Cb_r1[14]));
  FDCE \img_Cb_r1_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cb_r10[15]),
        .Q(img_Cb_r1[15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \img_Cb_r1_reg[15]_i_1 
       (.CI(\img_Cb_r1_reg[13]_i_1_n_0 ),
        .CO({\NLW_img_Cb_r1_reg[15]_i_1_CO_UNCONNECTED [3:1],\img_Cb_r1_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\img_Cb_r1[15]_i_2_n_0 }),
        .O({\NLW_img_Cb_r1_reg[15]_i_1_O_UNCONNECTED [3:2],img_Cb_r10[15:14]}),
        .S({1'b0,1'b0,\img_Cb_r1[15]_i_3_n_0 ,\img_Cb_r1[15]_i_4_n_0 }));
  FDCE \img_Cb_r1_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(in_u_reg[0]),
        .Q(img_Cb_r1[3]));
  FDCE \img_Cb_r1_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(in_u_reg[1]),
        .Q(img_Cb_r1[4]));
  FDCE \img_Cb_r1_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(in_u_reg[2]),
        .Q(img_Cb_r1[5]));
  FDCE \img_Cb_r1_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cb_r10[6]),
        .Q(img_Cb_r1[6]));
  FDCE \img_Cb_r1_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cb_r10[7]),
        .Q(img_Cb_r1[7]));
  FDCE \img_Cb_r1_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cb_r10[8]),
        .Q(img_Cb_r1[8]));
  FDCE \img_Cb_r1_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cb_r10[9]),
        .Q(img_Cb_r1[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \img_Cb_r1_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\img_Cb_r1_reg[9]_i_1_n_0 ,\img_Cb_r1_reg[9]_i_1_n_1 ,\img_Cb_r1_reg[9]_i_1_n_2 ,\img_Cb_r1_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\img_Cb_r1[9]_i_2_n_0 ,\img_Cb_r1[9]_i_3_n_0 ,\img_Cb_r1[9]_i_4_n_0 ,1'b0}),
        .O(img_Cb_r10[9:6]),
        .S({\img_Cb_r1[9]_i_5_n_0 ,\img_Cb_r1[9]_i_6_n_0 ,\img_Cb_r1[9]_i_7_n_0 ,\img_Cb_r1[9]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    img_Cb_r20
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_u_reg}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_img_Cb_r20_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_img_Cb_r20_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_img_Cb_r20_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_img_Cb_r20_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_img_Cb_r20_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_img_Cb_r20_OVERFLOW_UNCONNECTED),
        .P({NLW_img_Cb_r20_P_UNCONNECTED[47:19],img_Cb_r20_n_87,img_Cb_r20_n_88,img_Cb_r20_n_89,img_Cb_r20_n_90,img_Cb_r20_n_91,img_Cb_r20_n_92,img_Cb_r20_n_93,img_Cb_r20_n_94,img_Cb_r20_n_95,img_Cb_r20_n_96,img_Cb_r20_n_97,img_Cb_r20_n_98,img_Cb_r20_n_99,img_Cb_r20_n_100,img_Cb_r20_n_101,img_Cb_r20_n_102,img_Cb_r20_n_103,img_Cb_r20_n_104,img_Cb_r20_n_105}),
        .PATTERNBDETECT(NLW_img_Cb_r20_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_img_Cb_r20_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_img_Cb_r20_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_img_Cb_r20_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    img_Cr_r10
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_v_reg}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_img_Cr_r10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_img_Cr_r10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_img_Cr_r10_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_img_Cr_r10_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_img_Cr_r10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_img_Cr_r10_OVERFLOW_UNCONNECTED),
        .P({NLW_img_Cr_r10_P_UNCONNECTED[47:18],img_Cr_r10_n_88,img_Cr_r10_n_89,img_Cr_r10_n_90,img_Cr_r10_n_91,img_Cr_r10_n_92,img_Cr_r10_n_93,img_Cr_r10_n_94,img_Cr_r10_n_95,img_Cr_r10_n_96,img_Cr_r10_n_97,img_Cr_r10_n_98,img_Cr_r10_n_99,img_Cr_r10_n_100,img_Cr_r10_n_101,img_Cr_r10_n_102,img_Cr_r10_n_103,img_Cr_r10_n_104,img_Cr_r10_n_105}),
        .PATTERNBDETECT(NLW_img_Cr_r10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_img_Cr_r10_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_img_Cr_r10_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_img_Cr_r10_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[11]_i_2 
       (.I0(in_v_reg[6]),
        .I1(\img_Cr_r2_reg[15]_i_2_n_7 ),
        .O(\img_Cr_r2[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[11]_i_3 
       (.I0(in_v_reg[5]),
        .I1(\img_Cr_r2_reg[15]_i_4_n_4 ),
        .O(\img_Cr_r2[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[11]_i_4 
       (.I0(in_v_reg[4]),
        .I1(\img_Cr_r2_reg[15]_i_4_n_5 ),
        .O(\img_Cr_r2[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[11]_i_5 
       (.I0(in_v_reg[3]),
        .I1(\img_Cr_r2_reg[15]_i_4_n_6 ),
        .O(\img_Cr_r2[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_10 
       (.I0(in_v_reg[0]),
        .I1(in_v_reg[2]),
        .O(\img_Cr_r2[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \img_Cr_r2[15]_i_11 
       (.I0(in_v_reg[1]),
        .O(\img_Cr_r2[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[15]_i_3 
       (.I0(in_v_reg[7]),
        .I1(\img_Cr_r2_reg[15]_i_2_n_6 ),
        .O(\img_Cr_r2[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_5 
       (.I0(in_v_reg[5]),
        .I1(in_v_reg[7]),
        .O(\img_Cr_r2[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_6 
       (.I0(in_v_reg[4]),
        .I1(in_v_reg[6]),
        .O(\img_Cr_r2[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_7 
       (.I0(in_v_reg[3]),
        .I1(in_v_reg[5]),
        .O(\img_Cr_r2[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_8 
       (.I0(in_v_reg[2]),
        .I1(in_v_reg[4]),
        .O(\img_Cr_r2[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_9 
       (.I0(in_v_reg[1]),
        .I1(in_v_reg[3]),
        .O(\img_Cr_r2[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \img_Cr_r2[16]_i_3 
       (.I0(in_v_reg[7]),
        .O(\img_Cr_r2[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \img_Cr_r2[16]_i_4 
       (.I0(in_v_reg[6]),
        .O(\img_Cr_r2[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[7]_i_2 
       (.I0(in_v_reg[2]),
        .I1(\img_Cr_r2_reg[15]_i_4_n_7 ),
        .O(\img_Cr_r2[7]_i_2_n_0 ));
  FDCE \img_Cr_r2_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[10]),
        .Q(img_Cr_r2[10]));
  FDCE \img_Cr_r2_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[11]),
        .Q(img_Cr_r2[11]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[11]_i_1 
       (.CI(\img_Cr_r2_reg[7]_i_1_n_0 ),
        .CO({\img_Cr_r2_reg[11]_i_1_n_0 ,\img_Cr_r2_reg[11]_i_1_n_1 ,\img_Cr_r2_reg[11]_i_1_n_2 ,\img_Cr_r2_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in_v_reg[6:3]),
        .O(img_Cr_r20[11:8]),
        .S({\img_Cr_r2[11]_i_2_n_0 ,\img_Cr_r2[11]_i_3_n_0 ,\img_Cr_r2[11]_i_4_n_0 ,\img_Cr_r2[11]_i_5_n_0 }));
  FDCE \img_Cr_r2_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[12]),
        .Q(img_Cr_r2[12]));
  FDCE \img_Cr_r2_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[13]),
        .Q(img_Cr_r2[13]));
  FDCE \img_Cr_r2_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[14]),
        .Q(img_Cr_r2[14]));
  FDCE \img_Cr_r2_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[15]),
        .Q(img_Cr_r2[15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[15]_i_1 
       (.CI(\img_Cr_r2_reg[11]_i_1_n_0 ),
        .CO({\img_Cr_r2_reg[15]_i_1_n_0 ,\img_Cr_r2_reg[15]_i_1_n_1 ,\img_Cr_r2_reg[15]_i_1_n_2 ,\img_Cr_r2_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in_v_reg[7]}),
        .O(img_Cr_r20[15:12]),
        .S({\img_Cr_r2_reg[16]_i_2_n_7 ,\img_Cr_r2_reg[15]_i_2_n_4 ,\img_Cr_r2_reg[15]_i_2_n_5 ,\img_Cr_r2[15]_i_3_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[15]_i_2 
       (.CI(\img_Cr_r2_reg[15]_i_4_n_0 ),
        .CO({\img_Cr_r2_reg[15]_i_2_n_0 ,\img_Cr_r2_reg[15]_i_2_n_1 ,\img_Cr_r2_reg[15]_i_2_n_2 ,\img_Cr_r2_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(in_v_reg[5:2]),
        .O({\img_Cr_r2_reg[15]_i_2_n_4 ,\img_Cr_r2_reg[15]_i_2_n_5 ,\img_Cr_r2_reg[15]_i_2_n_6 ,\img_Cr_r2_reg[15]_i_2_n_7 }),
        .S({\img_Cr_r2[15]_i_5_n_0 ,\img_Cr_r2[15]_i_6_n_0 ,\img_Cr_r2[15]_i_7_n_0 ,\img_Cr_r2[15]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[15]_i_4 
       (.CI(1'b0),
        .CO({\img_Cr_r2_reg[15]_i_4_n_0 ,\img_Cr_r2_reg[15]_i_4_n_1 ,\img_Cr_r2_reg[15]_i_4_n_2 ,\img_Cr_r2_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({in_v_reg[1:0],1'b0,1'b1}),
        .O({\img_Cr_r2_reg[15]_i_4_n_4 ,\img_Cr_r2_reg[15]_i_4_n_5 ,\img_Cr_r2_reg[15]_i_4_n_6 ,\img_Cr_r2_reg[15]_i_4_n_7 }),
        .S({\img_Cr_r2[15]_i_9_n_0 ,\img_Cr_r2[15]_i_10_n_0 ,\img_Cr_r2[15]_i_11_n_0 ,in_v_reg[0]}));
  FDCE \img_Cr_r2_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[16]),
        .Q(img_Cr_r2[16]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[16]_i_1 
       (.CI(\img_Cr_r2_reg[15]_i_1_n_0 ),
        .CO(\NLW_img_Cr_r2_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_img_Cr_r2_reg[16]_i_1_O_UNCONNECTED [3:1],img_Cr_r20[16]}),
        .S({1'b0,1'b0,1'b0,\img_Cr_r2_reg[16]_i_2_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[16]_i_2 
       (.CI(\img_Cr_r2_reg[15]_i_2_n_0 ),
        .CO({\NLW_img_Cr_r2_reg[16]_i_2_CO_UNCONNECTED [3:1],\img_Cr_r2_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in_v_reg[6]}),
        .O({\NLW_img_Cr_r2_reg[16]_i_2_O_UNCONNECTED [3:2],\img_Cr_r2_reg[16]_i_2_n_6 ,\img_Cr_r2_reg[16]_i_2_n_7 }),
        .S({1'b0,1'b0,\img_Cr_r2[16]_i_3_n_0 ,\img_Cr_r2[16]_i_4_n_0 }));
  FDCE \img_Cr_r2_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[5]),
        .Q(img_Cr_r2[5]));
  FDCE \img_Cr_r2_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[6]),
        .Q(img_Cr_r2[6]));
  FDCE \img_Cr_r2_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[7]),
        .Q(img_Cr_r2[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\img_Cr_r2_reg[7]_i_1_n_0 ,\img_Cr_r2_reg[7]_i_1_n_1 ,\img_Cr_r2_reg[7]_i_1_n_2 ,\img_Cr_r2_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({in_v_reg[2:0],1'b0}),
        .O({img_Cr_r20[7:5],\NLW_img_Cr_r2_reg[7]_i_1_O_UNCONNECTED [0]}),
        .S({\img_Cr_r2[7]_i_2_n_0 ,in_v_reg[1:0],1'b0}));
  FDCE \img_Cr_r2_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[8]),
        .Q(img_Cr_r2[8]));
  FDCE \img_Cr_r2_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(img_Cr_r20[9]),
        .Q(img_Cr_r2[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    img_Y_r10
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_y_reg}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_img_Y_r10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_img_Y_r10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_img_Y_r10_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_img_Y_r10_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_img_Y_r10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_img_Y_r10_OVERFLOW_UNCONNECTED),
        .P({NLW_img_Y_r10_P_UNCONNECTED[47:18],img_Y_r10_n_88,img_Y_r10_n_89,img_Y_r10_n_90,img_Y_r10_n_91,img_Y_r10_n_92,img_Y_r10_n_93,img_Y_r10_n_94,img_Y_r10_n_95,img_Y_r10_n_96,img_Y_r10_n_97,img_Y_r10_n_98,img_Y_r10_n_99,img_Y_r10_n_100,img_Y_r10_n_101,img_Y_r10_n_102,img_Y_r10_n_103,img_Y_r10_n_104,img_Y_r10_n_105}),
        .PATTERNBDETECT(NLW_img_Y_r10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_img_Y_r10_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_img_Y_r10_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_img_Y_r10_UNDERFLOW_UNCONNECTED));
  FDCE \in_u_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[8]),
        .Q(in_u_reg[0]));
  FDCE \in_u_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[9]),
        .Q(in_u_reg[1]));
  FDCE \in_u_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[10]),
        .Q(in_u_reg[2]));
  FDCE \in_u_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[11]),
        .Q(in_u_reg[3]));
  FDCE \in_u_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[12]),
        .Q(in_u_reg[4]));
  FDCE \in_u_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[13]),
        .Q(in_u_reg[5]));
  FDCE \in_u_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[14]),
        .Q(in_u_reg[6]));
  FDCE \in_u_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[15]),
        .Q(in_u_reg[7]));
  LUT3 #(
    .INIT(8'hDF)) 
    \in_v_reg[7]_i_1 
       (.I0(s_yuv2rgb_en),
        .I1(s_module_reset),
        .I2(rst_n),
        .O(s_yuv2rgb_en_reg));
  FDCE \in_v_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[0]),
        .Q(in_v_reg[0]));
  FDCE \in_v_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[1]),
        .Q(in_v_reg[1]));
  FDCE \in_v_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[2]),
        .Q(in_v_reg[2]));
  FDCE \in_v_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[3]),
        .Q(in_v_reg[3]));
  FDCE \in_v_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[4]),
        .Q(in_v_reg[4]));
  FDCE \in_v_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[5]),
        .Q(in_v_reg[5]));
  FDCE \in_v_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[6]),
        .Q(in_v_reg[6]));
  FDCE \in_v_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[7]),
        .Q(in_v_reg[7]));
  FDCE \in_y_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[16]),
        .Q(in_y_reg[0]));
  FDCE \in_y_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[17]),
        .Q(in_y_reg[1]));
  FDCE \in_y_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[18]),
        .Q(in_y_reg[2]));
  FDCE \in_y_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[19]),
        .Q(in_y_reg[3]));
  FDCE \in_y_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[20]),
        .Q(in_y_reg[4]));
  FDCE \in_y_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[21]),
        .Q(in_y_reg[5]));
  FDCE \in_y_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[22]),
        .Q(in_y_reg[6]));
  FDCE \in_y_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(Q[23]),
        .Q(in_y_reg[7]));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/vsync_r_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 " *) 
  SRL16E \vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(sobel_vsync_o),
        .Q(\vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ));
  FDRE \vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6 
       (.C(pclk),
        .CE(1'b1),
        .D(\vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ),
        .Q(\vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ),
        .R(1'b0));
  FDCE \vsync_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_yuv2rgb_en_reg),
        .D(vsync_r_reg_gate_n_0),
        .Q(yuv2rgb_vsync));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    vsync_r_reg_gate
       (.I0(\vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ),
        .I1(href_r_reg_c_6_n_0),
        .O(vsync_r_reg_gate_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    vsync_reg_i_1__0
       (.I0(yuv2rgb_vsync),
        .I1(s_yuv2rgb_en),
        .I2(sobel_vsync_o),
        .O(in_vsync));
endmodule

(* ORIG_REF_NAME = "xil_vip_v1_0" *) 
module design_1_xil_vip_0_0_xil_vip_v1_0
   (DOADO,
    DOBDO,
    out_pclk_r_reg,
    href_t3,
    axi_awready_reg,
    axi_wready_reg,
    out_vsync,
    axi_arready_reg,
    s00_axi_bvalid,
    axi_rvalid_reg,
    s_yuv2rgb_en_reg,
    s00_axi_rdata,
    out_rgb,
    irq,
    out_href,
    osd_ram_ren,
    pclk,
    s00_axi_aclk,
    s00_axi_wdata,
    rst_n,
    in_vsync,
    s00_axi_aresetn,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_rdata_24_sp_1,
    \s00_axi_rdata[24]_0 ,
    s00_axi_rdata_25_sp_1,
    s00_axi_rdata_26_sp_1,
    s00_axi_rdata_27_sp_1,
    s00_axi_rdata_28_sp_1,
    s00_axi_rdata_29_sp_1,
    s00_axi_rdata_30_sp_1,
    s00_axi_rdata_31_sp_1,
    \ZOUT_reg[19] ,
    s00_axi_awaddr,
    s00_axi_araddr,
    \osd_pix_buf_t5_reg[0] ,
    \osd_pix_buf_t5_reg[0]_0 ,
    \osd_pix_buf_t5_reg[1] ,
    \osd_pix_buf_t5_reg[2] ,
    \osd_pix_buf_t5_reg[3] ,
    \osd_pix_buf_t5_reg[4] ,
    \osd_pix_buf_t5_reg[5] ,
    \osd_pix_buf_t5_reg[6] ,
    \osd_pix_buf_t5_reg[7] ,
    \osd_pix_buf_t5_reg[8] ,
    \osd_pix_buf_t5_reg[9] ,
    \osd_pix_buf_t5_reg[10] ,
    \osd_pix_buf_t5_reg[11] ,
    \osd_pix_buf_t5_reg[12] ,
    \osd_pix_buf_t5_reg[13] ,
    \osd_pix_buf_t5_reg[14] ,
    \osd_pix_buf_t5_reg[15] ,
    \osd_pix_buf_t5_reg[16] ,
    \osd_pix_buf_t5_reg[17] ,
    \osd_pix_buf_t5_reg[18] ,
    \osd_pix_buf_t5_reg[19] ,
    \osd_pix_buf_t5_reg[20] ,
    \osd_pix_buf_t5_reg[21] ,
    \osd_pix_buf_t5_reg[22] ,
    \osd_pix_buf_t5_reg[23] ,
    \osd_pix_buf_t5_reg[24] ,
    \osd_pix_buf_t5_reg[25] ,
    \osd_pix_buf_t5_reg[26] ,
    \osd_pix_buf_t5_reg[27] ,
    \osd_pix_buf_t5_reg[28] ,
    \osd_pix_buf_t5_reg[29] ,
    \osd_pix_buf_t5_reg[30] ,
    \osd_pix_buf_t5_reg[31] ,
    in_href,
    in_yuv,
    s00_axi_rdata_0_sp_1,
    s00_axi_rdata_1_sp_1,
    s00_axi_rdata_2_sp_1,
    s00_axi_rdata_3_sp_1,
    s00_axi_rdata_4_sp_1,
    s00_axi_rdata_5_sp_1,
    s00_axi_rdata_6_sp_1,
    s00_axi_rdata_7_sp_1,
    s00_axi_rdata_8_sp_1,
    s00_axi_rdata_9_sp_1,
    s00_axi_rdata_10_sp_1,
    s00_axi_rdata_11_sp_1,
    s00_axi_rdata_12_sp_1,
    s00_axi_rdata_13_sp_1,
    s00_axi_rdata_14_sp_1,
    s00_axi_rdata_15_sp_1,
    s00_axi_rdata_16_sp_1,
    s00_axi_rdata_17_sp_1,
    s00_axi_rdata_18_sp_1,
    s00_axi_rdata_19_sp_1,
    s00_axi_rdata_20_sp_1,
    s00_axi_rdata_21_sp_1,
    s00_axi_rdata_22_sp_1,
    s00_axi_rdata_23_sp_1);
  output [31:0]DOADO;
  output [31:0]DOBDO;
  output out_pclk_r_reg;
  output href_t3;
  output axi_awready_reg;
  output axi_wready_reg;
  output out_vsync;
  output axi_arready_reg;
  output s00_axi_bvalid;
  output axi_rvalid_reg;
  output s_yuv2rgb_en_reg;
  output [31:0]s00_axi_rdata;
  output [23:0]out_rgb;
  output irq;
  output out_href;
  output osd_ram_ren;
  input pclk;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input rst_n;
  input in_vsync;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_rdata_24_sp_1;
  input \s00_axi_rdata[24]_0 ;
  input s00_axi_rdata_25_sp_1;
  input s00_axi_rdata_26_sp_1;
  input s00_axi_rdata_27_sp_1;
  input s00_axi_rdata_28_sp_1;
  input s00_axi_rdata_29_sp_1;
  input s00_axi_rdata_30_sp_1;
  input s00_axi_rdata_31_sp_1;
  input \ZOUT_reg[19] ;
  input [9:0]s00_axi_awaddr;
  input [9:0]s00_axi_araddr;
  input \osd_pix_buf_t5_reg[0] ;
  input \osd_pix_buf_t5_reg[0]_0 ;
  input \osd_pix_buf_t5_reg[1] ;
  input \osd_pix_buf_t5_reg[2] ;
  input \osd_pix_buf_t5_reg[3] ;
  input \osd_pix_buf_t5_reg[4] ;
  input \osd_pix_buf_t5_reg[5] ;
  input \osd_pix_buf_t5_reg[6] ;
  input \osd_pix_buf_t5_reg[7] ;
  input \osd_pix_buf_t5_reg[8] ;
  input \osd_pix_buf_t5_reg[9] ;
  input \osd_pix_buf_t5_reg[10] ;
  input \osd_pix_buf_t5_reg[11] ;
  input \osd_pix_buf_t5_reg[12] ;
  input \osd_pix_buf_t5_reg[13] ;
  input \osd_pix_buf_t5_reg[14] ;
  input \osd_pix_buf_t5_reg[15] ;
  input \osd_pix_buf_t5_reg[16] ;
  input \osd_pix_buf_t5_reg[17] ;
  input \osd_pix_buf_t5_reg[18] ;
  input \osd_pix_buf_t5_reg[19] ;
  input \osd_pix_buf_t5_reg[20] ;
  input \osd_pix_buf_t5_reg[21] ;
  input \osd_pix_buf_t5_reg[22] ;
  input \osd_pix_buf_t5_reg[23] ;
  input \osd_pix_buf_t5_reg[24] ;
  input \osd_pix_buf_t5_reg[25] ;
  input \osd_pix_buf_t5_reg[26] ;
  input \osd_pix_buf_t5_reg[27] ;
  input \osd_pix_buf_t5_reg[28] ;
  input \osd_pix_buf_t5_reg[29] ;
  input \osd_pix_buf_t5_reg[30] ;
  input \osd_pix_buf_t5_reg[31] ;
  input in_href;
  input [23:0]in_yuv;
  input s00_axi_rdata_0_sp_1;
  input s00_axi_rdata_1_sp_1;
  input s00_axi_rdata_2_sp_1;
  input s00_axi_rdata_3_sp_1;
  input s00_axi_rdata_4_sp_1;
  input s00_axi_rdata_5_sp_1;
  input s00_axi_rdata_6_sp_1;
  input s00_axi_rdata_7_sp_1;
  input s00_axi_rdata_8_sp_1;
  input s00_axi_rdata_9_sp_1;
  input s00_axi_rdata_10_sp_1;
  input s00_axi_rdata_11_sp_1;
  input s00_axi_rdata_12_sp_1;
  input s00_axi_rdata_13_sp_1;
  input s00_axi_rdata_14_sp_1;
  input s00_axi_rdata_15_sp_1;
  input s00_axi_rdata_16_sp_1;
  input s00_axi_rdata_17_sp_1;
  input s00_axi_rdata_18_sp_1;
  input s00_axi_rdata_19_sp_1;
  input s00_axi_rdata_20_sp_1;
  input s00_axi_rdata_21_sp_1;
  input s00_axi_rdata_22_sp_1;
  input s00_axi_rdata_23_sp_1;

  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire \ZOUT_reg[19] ;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire axi_wready_reg;
  wire href_t3;
  wire in_href;
  wire in_vsync;
  wire [23:0]in_yuv;
  wire irq;
  wire \osd_pix_buf_t5_reg[0] ;
  wire \osd_pix_buf_t5_reg[0]_0 ;
  wire \osd_pix_buf_t5_reg[10] ;
  wire \osd_pix_buf_t5_reg[11] ;
  wire \osd_pix_buf_t5_reg[12] ;
  wire \osd_pix_buf_t5_reg[13] ;
  wire \osd_pix_buf_t5_reg[14] ;
  wire \osd_pix_buf_t5_reg[15] ;
  wire \osd_pix_buf_t5_reg[16] ;
  wire \osd_pix_buf_t5_reg[17] ;
  wire \osd_pix_buf_t5_reg[18] ;
  wire \osd_pix_buf_t5_reg[19] ;
  wire \osd_pix_buf_t5_reg[1] ;
  wire \osd_pix_buf_t5_reg[20] ;
  wire \osd_pix_buf_t5_reg[21] ;
  wire \osd_pix_buf_t5_reg[22] ;
  wire \osd_pix_buf_t5_reg[23] ;
  wire \osd_pix_buf_t5_reg[24] ;
  wire \osd_pix_buf_t5_reg[25] ;
  wire \osd_pix_buf_t5_reg[26] ;
  wire \osd_pix_buf_t5_reg[27] ;
  wire \osd_pix_buf_t5_reg[28] ;
  wire \osd_pix_buf_t5_reg[29] ;
  wire \osd_pix_buf_t5_reg[2] ;
  wire \osd_pix_buf_t5_reg[30] ;
  wire \osd_pix_buf_t5_reg[31] ;
  wire \osd_pix_buf_t5_reg[3] ;
  wire \osd_pix_buf_t5_reg[4] ;
  wire \osd_pix_buf_t5_reg[5] ;
  wire \osd_pix_buf_t5_reg[6] ;
  wire \osd_pix_buf_t5_reg[7] ;
  wire \osd_pix_buf_t5_reg[8] ;
  wire \osd_pix_buf_t5_reg[9] ;
  wire osd_ram_ren;
  wire out_href;
  wire out_pclk_r_reg;
  wire [23:0]out_rgb;
  wire out_vsync;
  wire pclk;
  wire rst_n;
  wire s00_axi_aclk;
  wire [9:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [9:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[24]_0 ;
  wire s00_axi_rdata_0_sn_1;
  wire s00_axi_rdata_10_sn_1;
  wire s00_axi_rdata_11_sn_1;
  wire s00_axi_rdata_12_sn_1;
  wire s00_axi_rdata_13_sn_1;
  wire s00_axi_rdata_14_sn_1;
  wire s00_axi_rdata_15_sn_1;
  wire s00_axi_rdata_16_sn_1;
  wire s00_axi_rdata_17_sn_1;
  wire s00_axi_rdata_18_sn_1;
  wire s00_axi_rdata_19_sn_1;
  wire s00_axi_rdata_1_sn_1;
  wire s00_axi_rdata_20_sn_1;
  wire s00_axi_rdata_21_sn_1;
  wire s00_axi_rdata_22_sn_1;
  wire s00_axi_rdata_23_sn_1;
  wire s00_axi_rdata_24_sn_1;
  wire s00_axi_rdata_25_sn_1;
  wire s00_axi_rdata_26_sn_1;
  wire s00_axi_rdata_27_sn_1;
  wire s00_axi_rdata_28_sn_1;
  wire s00_axi_rdata_29_sn_1;
  wire s00_axi_rdata_2_sn_1;
  wire s00_axi_rdata_30_sn_1;
  wire s00_axi_rdata_31_sn_1;
  wire s00_axi_rdata_3_sn_1;
  wire s00_axi_rdata_4_sn_1;
  wire s00_axi_rdata_5_sn_1;
  wire s00_axi_rdata_6_sn_1;
  wire s00_axi_rdata_7_sn_1;
  wire s00_axi_rdata_8_sn_1;
  wire s00_axi_rdata_9_sn_1;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire s_yuv2rgb_en_reg;

  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  assign s00_axi_rdata_10_sn_1 = s00_axi_rdata_10_sp_1;
  assign s00_axi_rdata_11_sn_1 = s00_axi_rdata_11_sp_1;
  assign s00_axi_rdata_12_sn_1 = s00_axi_rdata_12_sp_1;
  assign s00_axi_rdata_13_sn_1 = s00_axi_rdata_13_sp_1;
  assign s00_axi_rdata_14_sn_1 = s00_axi_rdata_14_sp_1;
  assign s00_axi_rdata_15_sn_1 = s00_axi_rdata_15_sp_1;
  assign s00_axi_rdata_16_sn_1 = s00_axi_rdata_16_sp_1;
  assign s00_axi_rdata_17_sn_1 = s00_axi_rdata_17_sp_1;
  assign s00_axi_rdata_18_sn_1 = s00_axi_rdata_18_sp_1;
  assign s00_axi_rdata_19_sn_1 = s00_axi_rdata_19_sp_1;
  assign s00_axi_rdata_1_sn_1 = s00_axi_rdata_1_sp_1;
  assign s00_axi_rdata_20_sn_1 = s00_axi_rdata_20_sp_1;
  assign s00_axi_rdata_21_sn_1 = s00_axi_rdata_21_sp_1;
  assign s00_axi_rdata_22_sn_1 = s00_axi_rdata_22_sp_1;
  assign s00_axi_rdata_23_sn_1 = s00_axi_rdata_23_sp_1;
  assign s00_axi_rdata_24_sn_1 = s00_axi_rdata_24_sp_1;
  assign s00_axi_rdata_25_sn_1 = s00_axi_rdata_25_sp_1;
  assign s00_axi_rdata_26_sn_1 = s00_axi_rdata_26_sp_1;
  assign s00_axi_rdata_27_sn_1 = s00_axi_rdata_27_sp_1;
  assign s00_axi_rdata_28_sn_1 = s00_axi_rdata_28_sp_1;
  assign s00_axi_rdata_29_sn_1 = s00_axi_rdata_29_sp_1;
  assign s00_axi_rdata_2_sn_1 = s00_axi_rdata_2_sp_1;
  assign s00_axi_rdata_30_sn_1 = s00_axi_rdata_30_sp_1;
  assign s00_axi_rdata_31_sn_1 = s00_axi_rdata_31_sp_1;
  assign s00_axi_rdata_3_sn_1 = s00_axi_rdata_3_sp_1;
  assign s00_axi_rdata_4_sn_1 = s00_axi_rdata_4_sp_1;
  assign s00_axi_rdata_5_sn_1 = s00_axi_rdata_5_sp_1;
  assign s00_axi_rdata_6_sn_1 = s00_axi_rdata_6_sp_1;
  assign s00_axi_rdata_7_sn_1 = s00_axi_rdata_7_sp_1;
  assign s00_axi_rdata_8_sn_1 = s00_axi_rdata_8_sp_1;
  assign s00_axi_rdata_9_sn_1 = s00_axi_rdata_9_sp_1;
  design_1_xil_vip_0_0_xil_vip_v1_0_S00_AXI xil_vip_v1_0_S00_AXI_inst
       (.CLK(out_pclk_r_reg),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .\ZOUT_reg[19] (\ZOUT_reg[19] ),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .href_t3(href_t3),
        .in_href(in_href),
        .in_vsync(in_vsync),
        .in_yuv(in_yuv),
        .irq(irq),
        .\osd_pix_buf_t5_reg[0] (\osd_pix_buf_t5_reg[0] ),
        .\osd_pix_buf_t5_reg[0]_0 (\osd_pix_buf_t5_reg[0]_0 ),
        .\osd_pix_buf_t5_reg[10] (\osd_pix_buf_t5_reg[10] ),
        .\osd_pix_buf_t5_reg[11] (\osd_pix_buf_t5_reg[11] ),
        .\osd_pix_buf_t5_reg[12] (\osd_pix_buf_t5_reg[12] ),
        .\osd_pix_buf_t5_reg[13] (\osd_pix_buf_t5_reg[13] ),
        .\osd_pix_buf_t5_reg[14] (\osd_pix_buf_t5_reg[14] ),
        .\osd_pix_buf_t5_reg[15] (\osd_pix_buf_t5_reg[15] ),
        .\osd_pix_buf_t5_reg[16] (\osd_pix_buf_t5_reg[16] ),
        .\osd_pix_buf_t5_reg[17] (\osd_pix_buf_t5_reg[17] ),
        .\osd_pix_buf_t5_reg[18] (\osd_pix_buf_t5_reg[18] ),
        .\osd_pix_buf_t5_reg[19] (\osd_pix_buf_t5_reg[19] ),
        .\osd_pix_buf_t5_reg[1] (\osd_pix_buf_t5_reg[1] ),
        .\osd_pix_buf_t5_reg[20] (\osd_pix_buf_t5_reg[20] ),
        .\osd_pix_buf_t5_reg[21] (\osd_pix_buf_t5_reg[21] ),
        .\osd_pix_buf_t5_reg[22] (\osd_pix_buf_t5_reg[22] ),
        .\osd_pix_buf_t5_reg[23] (\osd_pix_buf_t5_reg[23] ),
        .\osd_pix_buf_t5_reg[24] (\osd_pix_buf_t5_reg[24] ),
        .\osd_pix_buf_t5_reg[25] (\osd_pix_buf_t5_reg[25] ),
        .\osd_pix_buf_t5_reg[26] (\osd_pix_buf_t5_reg[26] ),
        .\osd_pix_buf_t5_reg[27] (\osd_pix_buf_t5_reg[27] ),
        .\osd_pix_buf_t5_reg[28] (\osd_pix_buf_t5_reg[28] ),
        .\osd_pix_buf_t5_reg[29] (\osd_pix_buf_t5_reg[29] ),
        .\osd_pix_buf_t5_reg[2] (\osd_pix_buf_t5_reg[2] ),
        .\osd_pix_buf_t5_reg[30] (\osd_pix_buf_t5_reg[30] ),
        .\osd_pix_buf_t5_reg[31] (\osd_pix_buf_t5_reg[31] ),
        .\osd_pix_buf_t5_reg[3] (\osd_pix_buf_t5_reg[3] ),
        .\osd_pix_buf_t5_reg[4] (\osd_pix_buf_t5_reg[4] ),
        .\osd_pix_buf_t5_reg[5] (\osd_pix_buf_t5_reg[5] ),
        .\osd_pix_buf_t5_reg[6] (\osd_pix_buf_t5_reg[6] ),
        .\osd_pix_buf_t5_reg[7] (\osd_pix_buf_t5_reg[7] ),
        .\osd_pix_buf_t5_reg[8] (\osd_pix_buf_t5_reg[8] ),
        .\osd_pix_buf_t5_reg[9] (\osd_pix_buf_t5_reg[9] ),
        .osd_ram_ren(osd_ram_ren),
        .out_href(out_href),
        .out_rgb(out_rgb),
        .out_vsync(out_vsync),
        .pclk(pclk),
        .rst_n(rst_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[24]_0 (\s00_axi_rdata[24]_0 ),
        .s00_axi_rdata_0_sp_1(s00_axi_rdata_0_sn_1),
        .s00_axi_rdata_10_sp_1(s00_axi_rdata_10_sn_1),
        .s00_axi_rdata_11_sp_1(s00_axi_rdata_11_sn_1),
        .s00_axi_rdata_12_sp_1(s00_axi_rdata_12_sn_1),
        .s00_axi_rdata_13_sp_1(s00_axi_rdata_13_sn_1),
        .s00_axi_rdata_14_sp_1(s00_axi_rdata_14_sn_1),
        .s00_axi_rdata_15_sp_1(s00_axi_rdata_15_sn_1),
        .s00_axi_rdata_16_sp_1(s00_axi_rdata_16_sn_1),
        .s00_axi_rdata_17_sp_1(s00_axi_rdata_17_sn_1),
        .s00_axi_rdata_18_sp_1(s00_axi_rdata_18_sn_1),
        .s00_axi_rdata_19_sp_1(s00_axi_rdata_19_sn_1),
        .s00_axi_rdata_1_sp_1(s00_axi_rdata_1_sn_1),
        .s00_axi_rdata_20_sp_1(s00_axi_rdata_20_sn_1),
        .s00_axi_rdata_21_sp_1(s00_axi_rdata_21_sn_1),
        .s00_axi_rdata_22_sp_1(s00_axi_rdata_22_sn_1),
        .s00_axi_rdata_23_sp_1(s00_axi_rdata_23_sn_1),
        .s00_axi_rdata_24_sp_1(s00_axi_rdata_24_sn_1),
        .s00_axi_rdata_25_sp_1(s00_axi_rdata_25_sn_1),
        .s00_axi_rdata_26_sp_1(s00_axi_rdata_26_sn_1),
        .s00_axi_rdata_27_sp_1(s00_axi_rdata_27_sn_1),
        .s00_axi_rdata_28_sp_1(s00_axi_rdata_28_sn_1),
        .s00_axi_rdata_29_sp_1(s00_axi_rdata_29_sn_1),
        .s00_axi_rdata_2_sp_1(s00_axi_rdata_2_sn_1),
        .s00_axi_rdata_30_sp_1(s00_axi_rdata_30_sn_1),
        .s00_axi_rdata_31_sp_1(s00_axi_rdata_31_sn_1),
        .s00_axi_rdata_3_sp_1(s00_axi_rdata_3_sn_1),
        .s00_axi_rdata_4_sp_1(s00_axi_rdata_4_sn_1),
        .s00_axi_rdata_5_sp_1(s00_axi_rdata_5_sn_1),
        .s00_axi_rdata_6_sp_1(s00_axi_rdata_6_sn_1),
        .s00_axi_rdata_7_sp_1(s00_axi_rdata_7_sn_1),
        .s00_axi_rdata_8_sp_1(s00_axi_rdata_8_sn_1),
        .s00_axi_rdata_9_sp_1(s00_axi_rdata_9_sn_1),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_yuv2rgb_en_reg_0(s_yuv2rgb_en_reg));
endmodule

(* ORIG_REF_NAME = "xil_vip_v1_0_S00_AXI" *) 
module design_1_xil_vip_0_0_xil_vip_v1_0_S00_AXI
   (DOADO,
    DOBDO,
    CLK,
    href_t3,
    axi_awready_reg_0,
    axi_wready_reg_0,
    out_vsync,
    axi_arready_reg_0,
    s00_axi_bvalid,
    axi_rvalid_reg_0,
    s_yuv2rgb_en_reg_0,
    s00_axi_rdata,
    out_rgb,
    irq,
    out_href,
    osd_ram_ren,
    pclk,
    s00_axi_aclk,
    s00_axi_wdata,
    rst_n,
    in_vsync,
    s00_axi_aresetn,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_rdata_24_sp_1,
    \s00_axi_rdata[24]_0 ,
    s00_axi_rdata_25_sp_1,
    s00_axi_rdata_26_sp_1,
    s00_axi_rdata_27_sp_1,
    s00_axi_rdata_28_sp_1,
    s00_axi_rdata_29_sp_1,
    s00_axi_rdata_30_sp_1,
    s00_axi_rdata_31_sp_1,
    \ZOUT_reg[19] ,
    s00_axi_awaddr,
    s00_axi_araddr,
    \osd_pix_buf_t5_reg[0] ,
    \osd_pix_buf_t5_reg[0]_0 ,
    \osd_pix_buf_t5_reg[1] ,
    \osd_pix_buf_t5_reg[2] ,
    \osd_pix_buf_t5_reg[3] ,
    \osd_pix_buf_t5_reg[4] ,
    \osd_pix_buf_t5_reg[5] ,
    \osd_pix_buf_t5_reg[6] ,
    \osd_pix_buf_t5_reg[7] ,
    \osd_pix_buf_t5_reg[8] ,
    \osd_pix_buf_t5_reg[9] ,
    \osd_pix_buf_t5_reg[10] ,
    \osd_pix_buf_t5_reg[11] ,
    \osd_pix_buf_t5_reg[12] ,
    \osd_pix_buf_t5_reg[13] ,
    \osd_pix_buf_t5_reg[14] ,
    \osd_pix_buf_t5_reg[15] ,
    \osd_pix_buf_t5_reg[16] ,
    \osd_pix_buf_t5_reg[17] ,
    \osd_pix_buf_t5_reg[18] ,
    \osd_pix_buf_t5_reg[19] ,
    \osd_pix_buf_t5_reg[20] ,
    \osd_pix_buf_t5_reg[21] ,
    \osd_pix_buf_t5_reg[22] ,
    \osd_pix_buf_t5_reg[23] ,
    \osd_pix_buf_t5_reg[24] ,
    \osd_pix_buf_t5_reg[25] ,
    \osd_pix_buf_t5_reg[26] ,
    \osd_pix_buf_t5_reg[27] ,
    \osd_pix_buf_t5_reg[28] ,
    \osd_pix_buf_t5_reg[29] ,
    \osd_pix_buf_t5_reg[30] ,
    \osd_pix_buf_t5_reg[31] ,
    in_href,
    in_yuv,
    s00_axi_rdata_0_sp_1,
    s00_axi_rdata_1_sp_1,
    s00_axi_rdata_2_sp_1,
    s00_axi_rdata_3_sp_1,
    s00_axi_rdata_4_sp_1,
    s00_axi_rdata_5_sp_1,
    s00_axi_rdata_6_sp_1,
    s00_axi_rdata_7_sp_1,
    s00_axi_rdata_8_sp_1,
    s00_axi_rdata_9_sp_1,
    s00_axi_rdata_10_sp_1,
    s00_axi_rdata_11_sp_1,
    s00_axi_rdata_12_sp_1,
    s00_axi_rdata_13_sp_1,
    s00_axi_rdata_14_sp_1,
    s00_axi_rdata_15_sp_1,
    s00_axi_rdata_16_sp_1,
    s00_axi_rdata_17_sp_1,
    s00_axi_rdata_18_sp_1,
    s00_axi_rdata_19_sp_1,
    s00_axi_rdata_20_sp_1,
    s00_axi_rdata_21_sp_1,
    s00_axi_rdata_22_sp_1,
    s00_axi_rdata_23_sp_1);
  output [31:0]DOADO;
  output [31:0]DOBDO;
  output CLK;
  output href_t3;
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output out_vsync;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output axi_rvalid_reg_0;
  output s_yuv2rgb_en_reg_0;
  output [31:0]s00_axi_rdata;
  output [23:0]out_rgb;
  output irq;
  output out_href;
  output osd_ram_ren;
  input pclk;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input rst_n;
  input in_vsync;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_rdata_24_sp_1;
  input \s00_axi_rdata[24]_0 ;
  input s00_axi_rdata_25_sp_1;
  input s00_axi_rdata_26_sp_1;
  input s00_axi_rdata_27_sp_1;
  input s00_axi_rdata_28_sp_1;
  input s00_axi_rdata_29_sp_1;
  input s00_axi_rdata_30_sp_1;
  input s00_axi_rdata_31_sp_1;
  input \ZOUT_reg[19] ;
  input [9:0]s00_axi_awaddr;
  input [9:0]s00_axi_araddr;
  input \osd_pix_buf_t5_reg[0] ;
  input \osd_pix_buf_t5_reg[0]_0 ;
  input \osd_pix_buf_t5_reg[1] ;
  input \osd_pix_buf_t5_reg[2] ;
  input \osd_pix_buf_t5_reg[3] ;
  input \osd_pix_buf_t5_reg[4] ;
  input \osd_pix_buf_t5_reg[5] ;
  input \osd_pix_buf_t5_reg[6] ;
  input \osd_pix_buf_t5_reg[7] ;
  input \osd_pix_buf_t5_reg[8] ;
  input \osd_pix_buf_t5_reg[9] ;
  input \osd_pix_buf_t5_reg[10] ;
  input \osd_pix_buf_t5_reg[11] ;
  input \osd_pix_buf_t5_reg[12] ;
  input \osd_pix_buf_t5_reg[13] ;
  input \osd_pix_buf_t5_reg[14] ;
  input \osd_pix_buf_t5_reg[15] ;
  input \osd_pix_buf_t5_reg[16] ;
  input \osd_pix_buf_t5_reg[17] ;
  input \osd_pix_buf_t5_reg[18] ;
  input \osd_pix_buf_t5_reg[19] ;
  input \osd_pix_buf_t5_reg[20] ;
  input \osd_pix_buf_t5_reg[21] ;
  input \osd_pix_buf_t5_reg[22] ;
  input \osd_pix_buf_t5_reg[23] ;
  input \osd_pix_buf_t5_reg[24] ;
  input \osd_pix_buf_t5_reg[25] ;
  input \osd_pix_buf_t5_reg[26] ;
  input \osd_pix_buf_t5_reg[27] ;
  input \osd_pix_buf_t5_reg[28] ;
  input \osd_pix_buf_t5_reg[29] ;
  input \osd_pix_buf_t5_reg[30] ;
  input \osd_pix_buf_t5_reg[31] ;
  input in_href;
  input [23:0]in_yuv;
  input s00_axi_rdata_0_sp_1;
  input s00_axi_rdata_1_sp_1;
  input s00_axi_rdata_2_sp_1;
  input s00_axi_rdata_3_sp_1;
  input s00_axi_rdata_4_sp_1;
  input s00_axi_rdata_5_sp_1;
  input s00_axi_rdata_6_sp_1;
  input s00_axi_rdata_7_sp_1;
  input s00_axi_rdata_8_sp_1;
  input s00_axi_rdata_9_sp_1;
  input s00_axi_rdata_10_sp_1;
  input s00_axi_rdata_11_sp_1;
  input s00_axi_rdata_12_sp_1;
  input s00_axi_rdata_13_sp_1;
  input s00_axi_rdata_14_sp_1;
  input s00_axi_rdata_15_sp_1;
  input s00_axi_rdata_16_sp_1;
  input s00_axi_rdata_17_sp_1;
  input s00_axi_rdata_18_sp_1;
  input s00_axi_rdata_19_sp_1;
  input s00_axi_rdata_20_sp_1;
  input s00_axi_rdata_21_sp_1;
  input s00_axi_rdata_22_sp_1;
  input s00_axi_rdata_23_sp_1;

  wire CLK;
  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire \ZOUT_reg[19] ;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_araddr_area_id;
  wire \axi_araddr_reg_n_0_[10] ;
  wire \axi_araddr_reg_n_0_[7] ;
  wire \axi_araddr_reg_n_0_[8] ;
  wire \axi_araddr_reg_n_0_[9] ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awaddr_area_id;
  wire \axi_awaddr_reg_n_0_[10] ;
  wire \axi_awaddr_reg_n_0_[8] ;
  wire \axi_awaddr_reg_n_0_[9] ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire [23:0]axi_rdata;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[0]_i_8_n_0 ;
  wire \axi_rdata[0]_i_9_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [15:0]crop_h;
  wire \crop_h[15]_i_2_n_0 ;
  wire crop_h_3;
  wire [15:0]crop_w;
  wire crop_w_9;
  wire [15:0]crop_x;
  wire crop_x_6;
  wire [15:0]crop_y;
  wire crop_y_13;
  wire [5:0]data1;
  wire [3:0]dscale_h;
  wire dscale_h_5;
  wire [3:0]dscale_v;
  wire dscale_v_12;
  wire [7:0]equ_max;
  wire equ_max_14;
  wire [7:0]equ_min;
  wire equ_min_10;
  wire frame_start;
  wire hist_equ_en;
  wire hist_equ_en_i_2_n_0;
  wire href_reg_i_1_n_0;
  wire href_t3;
  wire in_href;
  wire in_vsync;
  wire [23:0]in_yuv;
  wire int_frame_done;
  wire int_frame_done0;
  wire int_frame_done_i_1_n_0;
  wire int_frame_done_i_2_n_0;
  wire int_frame_done_i_3_n_0;
  wire int_mask_frame_done;
  wire int_mask_frame_done_i_1_n_0;
  wire irq;
  wire module_reset;
  wire module_reset_i_1_n_0;
  wire module_reset_i_2_n_0;
  wire [15:0]osd_h;
  wire osd_h_11;
  wire \osd_pix_buf_t5_reg[0] ;
  wire \osd_pix_buf_t5_reg[0]_0 ;
  wire \osd_pix_buf_t5_reg[10] ;
  wire \osd_pix_buf_t5_reg[11] ;
  wire \osd_pix_buf_t5_reg[12] ;
  wire \osd_pix_buf_t5_reg[13] ;
  wire \osd_pix_buf_t5_reg[14] ;
  wire \osd_pix_buf_t5_reg[15] ;
  wire \osd_pix_buf_t5_reg[16] ;
  wire \osd_pix_buf_t5_reg[17] ;
  wire \osd_pix_buf_t5_reg[18] ;
  wire \osd_pix_buf_t5_reg[19] ;
  wire \osd_pix_buf_t5_reg[1] ;
  wire \osd_pix_buf_t5_reg[20] ;
  wire \osd_pix_buf_t5_reg[21] ;
  wire \osd_pix_buf_t5_reg[22] ;
  wire \osd_pix_buf_t5_reg[23] ;
  wire \osd_pix_buf_t5_reg[24] ;
  wire \osd_pix_buf_t5_reg[25] ;
  wire \osd_pix_buf_t5_reg[26] ;
  wire \osd_pix_buf_t5_reg[27] ;
  wire \osd_pix_buf_t5_reg[28] ;
  wire \osd_pix_buf_t5_reg[29] ;
  wire \osd_pix_buf_t5_reg[2] ;
  wire \osd_pix_buf_t5_reg[30] ;
  wire \osd_pix_buf_t5_reg[31] ;
  wire \osd_pix_buf_t5_reg[3] ;
  wire \osd_pix_buf_t5_reg[4] ;
  wire \osd_pix_buf_t5_reg[5] ;
  wire \osd_pix_buf_t5_reg[6] ;
  wire \osd_pix_buf_t5_reg[7] ;
  wire \osd_pix_buf_t5_reg[8] ;
  wire \osd_pix_buf_t5_reg[9] ;
  wire osd_ram_ren;
  wire [23:0]osd_rgb_bg;
  wire osd_rgb_bg_1;
  wire [23:0]osd_rgb_fg;
  wire osd_rgb_fg_7;
  wire [15:0]osd_w;
  wire osd_w_4;
  wire [15:0]osd_x;
  wire osd_x_8;
  wire [15:0]osd_y;
  wire osd_y_2;
  wire out_href;
  wire [23:0]out_rgb;
  wire out_vsync;
  wire p_0_in;
  wire p_0_in0;
  wire [4:0]p_0_in_0;
  wire p_12_in;
  wire p_13_in;
  wire [23:0]p_1_in;
  wire pclk;
  wire prev_vsync;
  wire prev_vsync_r;
  wire rst_n;
  wire s00_axi_aclk;
  wire [9:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [9:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[24]_0 ;
  wire s00_axi_rdata_0_sn_1;
  wire s00_axi_rdata_10_sn_1;
  wire s00_axi_rdata_11_sn_1;
  wire s00_axi_rdata_12_sn_1;
  wire s00_axi_rdata_13_sn_1;
  wire s00_axi_rdata_14_sn_1;
  wire s00_axi_rdata_15_sn_1;
  wire s00_axi_rdata_16_sn_1;
  wire s00_axi_rdata_17_sn_1;
  wire s00_axi_rdata_18_sn_1;
  wire s00_axi_rdata_19_sn_1;
  wire s00_axi_rdata_1_sn_1;
  wire s00_axi_rdata_20_sn_1;
  wire s00_axi_rdata_21_sn_1;
  wire s00_axi_rdata_22_sn_1;
  wire s00_axi_rdata_23_sn_1;
  wire s00_axi_rdata_24_sn_1;
  wire s00_axi_rdata_25_sn_1;
  wire s00_axi_rdata_26_sn_1;
  wire s00_axi_rdata_27_sn_1;
  wire s00_axi_rdata_28_sn_1;
  wire s00_axi_rdata_29_sn_1;
  wire s00_axi_rdata_2_sn_1;
  wire s00_axi_rdata_30_sn_1;
  wire s00_axi_rdata_31_sn_1;
  wire s00_axi_rdata_3_sn_1;
  wire s00_axi_rdata_4_sn_1;
  wire s00_axi_rdata_5_sn_1;
  wire s00_axi_rdata_6_sn_1;
  wire s00_axi_rdata_7_sn_1;
  wire s00_axi_rdata_8_sn_1;
  wire s00_axi_rdata_9_sn_1;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire s_crop_en;
  wire [15:0]s_crop_h;
  wire [15:0]s_crop_w;
  wire [15:0]s_crop_x;
  wire [15:0]s_crop_y;
  wire s_dscale_en;
  wire [3:0]s_dscale_h;
  wire [3:0]s_dscale_v;
  wire s_module_reset;
  wire s_osd_en;
  wire [10:0]s_osd_h;
  wire [23:0]s_osd_rgb_bg;
  wire [23:0]s_osd_rgb_fg;
  wire [11:0]s_osd_w;
  wire [11:0]s_osd_x;
  wire [10:0]s_osd_y;
  wire s_sobel_en;
  wire s_yuv2rgb_en;
  wire s_yuv2rgb_en_reg_0;
  wire [4:0]sel0;

  assign s00_axi_rdata_0_sn_1 = s00_axi_rdata_0_sp_1;
  assign s00_axi_rdata_10_sn_1 = s00_axi_rdata_10_sp_1;
  assign s00_axi_rdata_11_sn_1 = s00_axi_rdata_11_sp_1;
  assign s00_axi_rdata_12_sn_1 = s00_axi_rdata_12_sp_1;
  assign s00_axi_rdata_13_sn_1 = s00_axi_rdata_13_sp_1;
  assign s00_axi_rdata_14_sn_1 = s00_axi_rdata_14_sp_1;
  assign s00_axi_rdata_15_sn_1 = s00_axi_rdata_15_sp_1;
  assign s00_axi_rdata_16_sn_1 = s00_axi_rdata_16_sp_1;
  assign s00_axi_rdata_17_sn_1 = s00_axi_rdata_17_sp_1;
  assign s00_axi_rdata_18_sn_1 = s00_axi_rdata_18_sp_1;
  assign s00_axi_rdata_19_sn_1 = s00_axi_rdata_19_sp_1;
  assign s00_axi_rdata_1_sn_1 = s00_axi_rdata_1_sp_1;
  assign s00_axi_rdata_20_sn_1 = s00_axi_rdata_20_sp_1;
  assign s00_axi_rdata_21_sn_1 = s00_axi_rdata_21_sp_1;
  assign s00_axi_rdata_22_sn_1 = s00_axi_rdata_22_sp_1;
  assign s00_axi_rdata_23_sn_1 = s00_axi_rdata_23_sp_1;
  assign s00_axi_rdata_24_sn_1 = s00_axi_rdata_24_sp_1;
  assign s00_axi_rdata_25_sn_1 = s00_axi_rdata_25_sp_1;
  assign s00_axi_rdata_26_sn_1 = s00_axi_rdata_26_sp_1;
  assign s00_axi_rdata_27_sn_1 = s00_axi_rdata_27_sp_1;
  assign s00_axi_rdata_28_sn_1 = s00_axi_rdata_28_sp_1;
  assign s00_axi_rdata_29_sn_1 = s00_axi_rdata_29_sp_1;
  assign s00_axi_rdata_2_sn_1 = s00_axi_rdata_2_sp_1;
  assign s00_axi_rdata_30_sn_1 = s00_axi_rdata_30_sp_1;
  assign s00_axi_rdata_31_sn_1 = s00_axi_rdata_31_sp_1;
  assign s00_axi_rdata_3_sn_1 = s00_axi_rdata_3_sp_1;
  assign s00_axi_rdata_4_sn_1 = s00_axi_rdata_4_sp_1;
  assign s00_axi_rdata_5_sn_1 = s00_axi_rdata_5_sp_1;
  assign s00_axi_rdata_6_sn_1 = s00_axi_rdata_6_sp_1;
  assign s00_axi_rdata_7_sn_1 = s00_axi_rdata_7_sp_1;
  assign s00_axi_rdata_8_sn_1 = s00_axi_rdata_8_sp_1;
  assign s00_axi_rdata_9_sn_1 = s00_axi_rdata_9_sp_1;
  LUT6 #(
    .INIT(64'hFF7FF070F070F070)) 
    aw_en_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(aw_en_reg_n_0),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  FDRE \axi_araddr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[8]),
        .Q(\axi_araddr_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[9]),
        .Q(axi_araddr_area_id),
        .R(p_0_in));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[4]),
        .Q(sel0[4]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[5]),
        .Q(\axi_araddr_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[6]),
        .Q(\axi_araddr_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[7]),
        .Q(\axi_araddr_reg_n_0_[9] ),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[8]),
        .Q(\axi_awaddr_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[9]),
        .Q(axi_awaddr_area_id),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in_0[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in_0[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in_0[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in_0[3]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[4]),
        .Q(p_0_in_0[4]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[5]),
        .Q(p_0_in0),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[6]),
        .Q(\axi_awaddr_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[7]),
        .Q(\axi_awaddr_reg_n_0_[9] ),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(axi_awready_reg_0),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000022E22222)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata[0]_i_3_n_0 ),
        .I3(sel0[1]),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .I5(\axi_rdata[0]_i_5_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\axi_rdata[0]_i_8_n_0 ),
        .I5(\axi_rdata[0]_i_9_n_0 ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \axi_rdata[0]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    \axi_rdata[0]_i_4 
       (.I0(int_mask_frame_done),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(int_frame_done),
        .O(\axi_rdata[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[0]_i_5 
       (.I0(\axi_araddr_reg_n_0_[7] ),
        .I1(\axi_araddr_reg_n_0_[8] ),
        .I2(\axi_araddr_reg_n_0_[9] ),
        .I3(\axi_araddr_reg_n_0_[10] ),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_6 
       (.I0(crop_y[0]),
        .I1(crop_h[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[0]),
        .I5(crop_w[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_7 
       (.I0(osd_h[0]),
        .I1(osd_rgb_bg[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[0]),
        .I5(osd_rgb_fg[0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_8 
       (.I0(data1[0]),
        .I1(equ_max[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(module_reset),
        .I5(equ_min[0]),
        .O(\axi_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_9 
       (.I0(dscale_v[0]),
        .I1(osd_y[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(dscale_h[0]),
        .I5(osd_x[0]),
        .O(\axi_rdata[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEF0AA0000000000)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .I2(\axi_rdata[10]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\axi_rdata[15]_i_5_n_0 ),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \axi_rdata[10]_i_2 
       (.I0(osd_y[10]),
        .I1(osd_x[10]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[10]_i_3 
       (.I0(osd_h[10]),
        .I1(osd_rgb_bg[10]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[10]),
        .I5(osd_rgb_fg[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[10]_i_4 
       (.I0(crop_y[10]),
        .I1(crop_h[10]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[10]),
        .I5(crop_w[10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEF0AA0000000000)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .I2(\axi_rdata[11]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\axi_rdata[15]_i_5_n_0 ),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \axi_rdata[11]_i_2 
       (.I0(osd_y[11]),
        .I1(osd_x[11]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[11]_i_3 
       (.I0(osd_h[11]),
        .I1(osd_rgb_bg[11]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[11]),
        .I5(osd_rgb_fg[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[11]_i_4 
       (.I0(crop_y[11]),
        .I1(crop_h[11]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[11]),
        .I5(crop_w[11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEF0AA0000000000)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .I2(\axi_rdata[12]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\axi_rdata[15]_i_5_n_0 ),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \axi_rdata[12]_i_2 
       (.I0(osd_y[12]),
        .I1(osd_x[12]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[12]_i_3 
       (.I0(osd_h[12]),
        .I1(osd_rgb_bg[12]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[12]),
        .I5(osd_rgb_fg[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[12]_i_4 
       (.I0(crop_y[12]),
        .I1(crop_h[12]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[12]),
        .I5(crop_w[12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEF0AA0000000000)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .I2(\axi_rdata[13]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\axi_rdata[15]_i_5_n_0 ),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \axi_rdata[13]_i_2 
       (.I0(osd_y[13]),
        .I1(osd_x[13]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[13]_i_3 
       (.I0(osd_h[13]),
        .I1(osd_rgb_bg[13]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[13]),
        .I5(osd_rgb_fg[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[13]_i_4 
       (.I0(crop_y[13]),
        .I1(crop_h[13]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[13]),
        .I5(crop_w[13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEF0AA0000000000)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .I2(\axi_rdata[14]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\axi_rdata[15]_i_5_n_0 ),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \axi_rdata[14]_i_2 
       (.I0(osd_y[14]),
        .I1(osd_x[14]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[14]_i_3 
       (.I0(osd_h[14]),
        .I1(osd_rgb_bg[14]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[14]),
        .I5(osd_rgb_fg[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[14]_i_4 
       (.I0(crop_y[14]),
        .I1(crop_h[14]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[14]),
        .I5(crop_w[14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEF0AA0000000000)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .I2(\axi_rdata[15]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\axi_rdata[15]_i_5_n_0 ),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \axi_rdata[15]_i_2 
       (.I0(osd_y[15]),
        .I1(osd_x[15]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[15]_i_3 
       (.I0(osd_h[15]),
        .I1(osd_rgb_bg[15]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[15]),
        .I5(osd_rgb_fg[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[15]_i_4 
       (.I0(crop_y[15]),
        .I1(crop_h[15]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[15]),
        .I5(crop_w[15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \axi_rdata[15]_i_5 
       (.I0(\axi_araddr_reg_n_0_[10] ),
        .I1(\axi_araddr_reg_n_0_[9] ),
        .I2(\axi_araddr_reg_n_0_[8] ),
        .I3(\axi_araddr_reg_n_0_[7] ),
        .I4(sel0[4]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \axi_rdata[16]_i_1 
       (.I0(osd_rgb_bg[16]),
        .I1(osd_rgb_fg[16]),
        .I2(sel0[2]),
        .I3(\axi_rdata[23]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \axi_rdata[17]_i_1 
       (.I0(osd_rgb_bg[17]),
        .I1(osd_rgb_fg[17]),
        .I2(sel0[2]),
        .I3(\axi_rdata[23]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \axi_rdata[18]_i_1 
       (.I0(osd_rgb_bg[18]),
        .I1(osd_rgb_fg[18]),
        .I2(sel0[2]),
        .I3(\axi_rdata[23]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \axi_rdata[19]_i_1 
       (.I0(osd_rgb_bg[19]),
        .I1(osd_rgb_fg[19]),
        .I2(sel0[2]),
        .I3(\axi_rdata[23]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \axi_rdata[1]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_araddr_reg_n_0_[7] ),
        .I2(\axi_araddr_reg_n_0_[8] ),
        .I3(\axi_araddr_reg_n_0_[9] ),
        .I4(\axi_araddr_reg_n_0_[10] ),
        .I5(\axi_rdata[1]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_2 
       (.I0(\axi_rdata[1]_i_3_n_0 ),
        .I1(\axi_rdata[1]_i_4_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\axi_rdata[1]_i_5_n_0 ),
        .I5(\axi_rdata[1]_i_6_n_0 ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_3 
       (.I0(crop_y[1]),
        .I1(crop_h[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[1]),
        .I5(crop_w[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_4 
       (.I0(osd_h[1]),
        .I1(osd_rgb_bg[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[1]),
        .I5(osd_rgb_fg[1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[1]_i_5 
       (.I0(equ_min[1]),
        .I1(data1[1]),
        .I2(equ_max[1]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_6 
       (.I0(dscale_v[1]),
        .I1(osd_y[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(dscale_h[1]),
        .I5(osd_x[1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \axi_rdata[20]_i_1 
       (.I0(osd_rgb_bg[20]),
        .I1(osd_rgb_fg[20]),
        .I2(sel0[2]),
        .I3(\axi_rdata[23]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \axi_rdata[21]_i_1 
       (.I0(osd_rgb_bg[21]),
        .I1(osd_rgb_fg[21]),
        .I2(sel0[2]),
        .I3(\axi_rdata[23]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \axi_rdata[22]_i_1 
       (.I0(osd_rgb_bg[22]),
        .I1(osd_rgb_fg[22]),
        .I2(sel0[2]),
        .I3(\axi_rdata[23]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \axi_rdata[23]_i_1 
       (.I0(osd_rgb_bg[23]),
        .I1(osd_rgb_fg[23]),
        .I2(sel0[2]),
        .I3(\axi_rdata[23]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \axi_rdata[23]_i_2 
       (.I0(sel0[4]),
        .I1(\axi_araddr_reg_n_0_[7] ),
        .I2(\axi_araddr_reg_n_0_[8] ),
        .I3(\axi_araddr_reg_n_0_[9] ),
        .I4(\axi_araddr_reg_n_0_[10] ),
        .I5(sel0[3]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \axi_rdata[2]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_araddr_reg_n_0_[7] ),
        .I2(\axi_araddr_reg_n_0_[8] ),
        .I3(\axi_araddr_reg_n_0_[9] ),
        .I4(\axi_araddr_reg_n_0_[10] ),
        .I5(\axi_rdata[2]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[2]_i_2 
       (.I0(\axi_rdata[2]_i_3_n_0 ),
        .I1(\axi_rdata[2]_i_4_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\axi_rdata[2]_i_5_n_0 ),
        .I5(\axi_rdata[2]_i_6_n_0 ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[2]_i_3 
       (.I0(crop_y[2]),
        .I1(crop_h[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[2]),
        .I5(crop_w[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[2]_i_4 
       (.I0(osd_h[2]),
        .I1(osd_rgb_bg[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[2]),
        .I5(osd_rgb_fg[2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[2]_i_5 
       (.I0(equ_min[2]),
        .I1(data1[2]),
        .I2(equ_max[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[2]_i_6 
       (.I0(dscale_v[2]),
        .I1(osd_y[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(dscale_h[2]),
        .I5(osd_x[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \axi_rdata[3]_i_1 
       (.I0(sel0[4]),
        .I1(\axi_araddr_reg_n_0_[7] ),
        .I2(\axi_araddr_reg_n_0_[8] ),
        .I3(\axi_araddr_reg_n_0_[9] ),
        .I4(\axi_araddr_reg_n_0_[10] ),
        .I5(\axi_rdata[3]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[3]_i_2 
       (.I0(\axi_rdata[3]_i_3_n_0 ),
        .I1(\axi_rdata[3]_i_4_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\axi_rdata[3]_i_5_n_0 ),
        .I5(\axi_rdata[3]_i_6_n_0 ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[3]_i_3 
       (.I0(crop_y[3]),
        .I1(crop_h[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[3]),
        .I5(crop_w[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[3]_i_4 
       (.I0(osd_h[3]),
        .I1(osd_rgb_bg[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[3]),
        .I5(osd_rgb_fg[3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[3]_i_5 
       (.I0(equ_min[3]),
        .I1(data1[3]),
        .I2(equ_max[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[3]_i_6 
       (.I0(dscale_v[3]),
        .I1(osd_y[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(dscale_h[3]),
        .I5(osd_x[3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[15]_i_5_n_0 ),
        .I1(\axi_rdata[4]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[4]_i_3_n_0 ),
        .I4(\axi_rdata[4]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFA8200000A820)) 
    \axi_rdata[4]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(osd_x[4]),
        .I3(osd_y[4]),
        .I4(sel0[2]),
        .I5(\axi_rdata[4]_i_5_n_0 ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[4]_i_3 
       (.I0(crop_y[4]),
        .I1(crop_h[4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[4]),
        .I5(crop_w[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[4]_i_4 
       (.I0(equ_min[4]),
        .I1(data1[4]),
        .I2(equ_max[4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[4]_i_5 
       (.I0(osd_h[4]),
        .I1(osd_rgb_bg[4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[4]),
        .I5(osd_rgb_fg[4]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[15]_i_5_n_0 ),
        .I1(\axi_rdata[5]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[5]_i_3_n_0 ),
        .I4(\axi_rdata[5]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFA8200000A820)) 
    \axi_rdata[5]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(osd_x[5]),
        .I3(osd_y[5]),
        .I4(sel0[2]),
        .I5(\axi_rdata[5]_i_5_n_0 ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[5]_i_3 
       (.I0(crop_y[5]),
        .I1(crop_h[5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[5]),
        .I5(crop_w[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[5]_i_4 
       (.I0(equ_min[5]),
        .I1(data1[5]),
        .I2(equ_max[5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[5]_i_5 
       (.I0(osd_h[5]),
        .I1(osd_rgb_bg[5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[5]),
        .I5(osd_rgb_fg[5]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .I2(\axi_rdata[15]_i_5_n_0 ),
        .I3(sel0[3]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFA8200000A820)) 
    \axi_rdata[6]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(osd_x[6]),
        .I3(osd_y[6]),
        .I4(sel0[2]),
        .I5(\axi_rdata[6]_i_4_n_0 ),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA8200000A820)) 
    \axi_rdata[6]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(equ_min[6]),
        .I3(equ_max[6]),
        .I4(sel0[2]),
        .I5(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[6]_i_4 
       (.I0(osd_h[6]),
        .I1(osd_rgb_bg[6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[6]),
        .I5(osd_rgb_fg[6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[6]_i_5 
       (.I0(crop_y[6]),
        .I1(crop_h[6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[6]),
        .I5(crop_w[6]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .I2(\axi_rdata[15]_i_5_n_0 ),
        .I3(sel0[3]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFFA8200000A820)) 
    \axi_rdata[7]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(osd_x[7]),
        .I3(osd_y[7]),
        .I4(sel0[2]),
        .I5(\axi_rdata[7]_i_4_n_0 ),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA8200000A820)) 
    \axi_rdata[7]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(equ_min[7]),
        .I3(equ_max[7]),
        .I4(sel0[2]),
        .I5(\axi_rdata[7]_i_5_n_0 ),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[7]_i_4 
       (.I0(osd_h[7]),
        .I1(osd_rgb_bg[7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[7]),
        .I5(osd_rgb_fg[7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[7]_i_5 
       (.I0(crop_y[7]),
        .I1(crop_h[7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[7]),
        .I5(crop_w[7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEF0AA0000000000)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .I2(\axi_rdata[8]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\axi_rdata[15]_i_5_n_0 ),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \axi_rdata[8]_i_2 
       (.I0(osd_y[8]),
        .I1(osd_x[8]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[8]_i_3 
       (.I0(osd_h[8]),
        .I1(osd_rgb_bg[8]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[8]),
        .I5(osd_rgb_fg[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[8]_i_4 
       (.I0(crop_y[8]),
        .I1(crop_h[8]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[8]),
        .I5(crop_w[8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEF0AA0000000000)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .I2(\axi_rdata[9]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\axi_rdata[15]_i_5_n_0 ),
        .O(p_1_in[9]));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \axi_rdata[9]_i_2 
       (.I0(osd_y[9]),
        .I1(osd_x[9]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[9]_i_3 
       (.I0(osd_h[9]),
        .I1(osd_rgb_bg[9]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(osd_w[9]),
        .I5(osd_rgb_fg[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[9]_i_4 
       (.I0(crop_y[9]),
        .I1(crop_h[9]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(crop_x[9]),
        .I5(crop_w[9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[0]),
        .Q(axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[10]),
        .Q(axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[11]),
        .Q(axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[12]),
        .Q(axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[13]),
        .Q(axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[14]),
        .Q(axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[15]),
        .Q(axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[16]),
        .Q(axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[17]),
        .Q(axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[18]),
        .Q(axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[19]),
        .Q(axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[1]),
        .Q(axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[20]),
        .Q(axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[21]),
        .Q(axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[22]),
        .Q(axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[23]),
        .Q(axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[2]),
        .Q(axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[3]),
        .Q(axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[4]),
        .Q(axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[5]),
        .Q(axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[6]),
        .Q(axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[7]),
        .Q(axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[8]),
        .Q(axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_12_in),
        .D(p_1_in[9]),
        .Q(axi_rdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(axi_wready_reg_0),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(p_0_in));
  FDRE crop_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[3]),
        .Q(data1[3]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \crop_h[15]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[4]),
        .I5(\crop_h[15]_i_2_n_0 ),
        .O(crop_h_3));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \crop_h[15]_i_2 
       (.I0(axi_awaddr_area_id),
        .I1(p_13_in),
        .I2(\axi_awaddr_reg_n_0_[10] ),
        .I3(\axi_awaddr_reg_n_0_[9] ),
        .I4(\axi_awaddr_reg_n_0_[8] ),
        .I5(p_0_in0),
        .O(\crop_h[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \crop_h[15]_i_3 
       (.I0(axi_awready_reg_0),
        .I1(axi_wready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(p_13_in));
  FDRE \crop_h_reg[0] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[0]),
        .Q(crop_h[0]),
        .R(p_0_in));
  FDSE \crop_h_reg[10] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[10]),
        .Q(crop_h[10]),
        .S(p_0_in));
  FDRE \crop_h_reg[11] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[11]),
        .Q(crop_h[11]),
        .R(p_0_in));
  FDRE \crop_h_reg[12] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[12]),
        .Q(crop_h[12]),
        .R(p_0_in));
  FDRE \crop_h_reg[13] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[13]),
        .Q(crop_h[13]),
        .R(p_0_in));
  FDRE \crop_h_reg[14] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[14]),
        .Q(crop_h[14]),
        .R(p_0_in));
  FDRE \crop_h_reg[15] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[15]),
        .Q(crop_h[15]),
        .R(p_0_in));
  FDRE \crop_h_reg[1] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[1]),
        .Q(crop_h[1]),
        .R(p_0_in));
  FDRE \crop_h_reg[2] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[2]),
        .Q(crop_h[2]),
        .R(p_0_in));
  FDRE \crop_h_reg[3] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[3]),
        .Q(crop_h[3]),
        .R(p_0_in));
  FDRE \crop_h_reg[4] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[4]),
        .Q(crop_h[4]),
        .R(p_0_in));
  FDRE \crop_h_reg[5] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[5]),
        .Q(crop_h[5]),
        .R(p_0_in));
  FDRE \crop_h_reg[6] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[6]),
        .Q(crop_h[6]),
        .R(p_0_in));
  FDSE \crop_h_reg[7] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[7]),
        .Q(crop_h[7]),
        .S(p_0_in));
  FDSE \crop_h_reg[8] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[8]),
        .Q(crop_h[8]),
        .S(p_0_in));
  FDSE \crop_h_reg[9] 
       (.C(s00_axi_aclk),
        .CE(crop_h_3),
        .D(s00_axi_wdata[9]),
        .Q(crop_h[9]),
        .S(p_0_in));
  LUT5 #(
    .INIT(32'h10000000)) 
    \crop_w[15]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(int_frame_done_i_2_n_0),
        .O(crop_w_9));
  FDRE \crop_w_reg[0] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[0]),
        .Q(crop_w[0]),
        .R(p_0_in));
  FDRE \crop_w_reg[10] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[10]),
        .Q(crop_w[10]),
        .R(p_0_in));
  FDSE \crop_w_reg[11] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[11]),
        .Q(crop_w[11]),
        .S(p_0_in));
  FDRE \crop_w_reg[12] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[12]),
        .Q(crop_w[12]),
        .R(p_0_in));
  FDRE \crop_w_reg[13] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[13]),
        .Q(crop_w[13]),
        .R(p_0_in));
  FDRE \crop_w_reg[14] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[14]),
        .Q(crop_w[14]),
        .R(p_0_in));
  FDRE \crop_w_reg[15] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[15]),
        .Q(crop_w[15]),
        .R(p_0_in));
  FDRE \crop_w_reg[1] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[1]),
        .Q(crop_w[1]),
        .R(p_0_in));
  FDRE \crop_w_reg[2] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[2]),
        .Q(crop_w[2]),
        .R(p_0_in));
  FDRE \crop_w_reg[3] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[3]),
        .Q(crop_w[3]),
        .R(p_0_in));
  FDRE \crop_w_reg[4] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[4]),
        .Q(crop_w[4]),
        .R(p_0_in));
  FDRE \crop_w_reg[5] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[5]),
        .Q(crop_w[5]),
        .R(p_0_in));
  FDRE \crop_w_reg[6] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[6]),
        .Q(crop_w[6]),
        .R(p_0_in));
  FDRE \crop_w_reg[7] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[7]),
        .Q(crop_w[7]),
        .R(p_0_in));
  FDRE \crop_w_reg[8] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[8]),
        .Q(crop_w[8]),
        .R(p_0_in));
  FDSE \crop_w_reg[9] 
       (.C(s00_axi_aclk),
        .CE(crop_w_9),
        .D(s00_axi_wdata[9]),
        .Q(crop_w[9]),
        .S(p_0_in));
  LUT5 #(
    .INIT(32'h00100000)) 
    \crop_x[15]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(int_frame_done_i_2_n_0),
        .O(crop_x_6));
  FDRE \crop_x_reg[0] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[0]),
        .Q(crop_x[0]),
        .R(p_0_in));
  FDRE \crop_x_reg[10] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[10]),
        .Q(crop_x[10]),
        .R(p_0_in));
  FDRE \crop_x_reg[11] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[11]),
        .Q(crop_x[11]),
        .R(p_0_in));
  FDRE \crop_x_reg[12] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[12]),
        .Q(crop_x[12]),
        .R(p_0_in));
  FDRE \crop_x_reg[13] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[13]),
        .Q(crop_x[13]),
        .R(p_0_in));
  FDRE \crop_x_reg[14] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[14]),
        .Q(crop_x[14]),
        .R(p_0_in));
  FDRE \crop_x_reg[15] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[15]),
        .Q(crop_x[15]),
        .R(p_0_in));
  FDRE \crop_x_reg[1] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[1]),
        .Q(crop_x[1]),
        .R(p_0_in));
  FDRE \crop_x_reg[2] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[2]),
        .Q(crop_x[2]),
        .R(p_0_in));
  FDRE \crop_x_reg[3] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[3]),
        .Q(crop_x[3]),
        .R(p_0_in));
  FDRE \crop_x_reg[4] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[4]),
        .Q(crop_x[4]),
        .R(p_0_in));
  FDRE \crop_x_reg[5] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[5]),
        .Q(crop_x[5]),
        .R(p_0_in));
  FDRE \crop_x_reg[6] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[6]),
        .Q(crop_x[6]),
        .R(p_0_in));
  FDRE \crop_x_reg[7] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[7]),
        .Q(crop_x[7]),
        .R(p_0_in));
  FDRE \crop_x_reg[8] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[8]),
        .Q(crop_x[8]),
        .R(p_0_in));
  FDRE \crop_x_reg[9] 
       (.C(s00_axi_aclk),
        .CE(crop_x_6),
        .D(s00_axi_wdata[9]),
        .Q(crop_x[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00100000)) 
    \crop_y[15]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(hist_equ_en_i_2_n_0),
        .O(crop_y_13));
  FDRE \crop_y_reg[0] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[0]),
        .Q(crop_y[0]),
        .R(p_0_in));
  FDRE \crop_y_reg[10] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[10]),
        .Q(crop_y[10]),
        .R(p_0_in));
  FDRE \crop_y_reg[11] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[11]),
        .Q(crop_y[11]),
        .R(p_0_in));
  FDRE \crop_y_reg[12] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[12]),
        .Q(crop_y[12]),
        .R(p_0_in));
  FDRE \crop_y_reg[13] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[13]),
        .Q(crop_y[13]),
        .R(p_0_in));
  FDRE \crop_y_reg[14] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[14]),
        .Q(crop_y[14]),
        .R(p_0_in));
  FDRE \crop_y_reg[15] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[15]),
        .Q(crop_y[15]),
        .R(p_0_in));
  FDRE \crop_y_reg[1] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[1]),
        .Q(crop_y[1]),
        .R(p_0_in));
  FDRE \crop_y_reg[2] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[2]),
        .Q(crop_y[2]),
        .R(p_0_in));
  FDRE \crop_y_reg[3] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[3]),
        .Q(crop_y[3]),
        .R(p_0_in));
  FDRE \crop_y_reg[4] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[4]),
        .Q(crop_y[4]),
        .R(p_0_in));
  FDRE \crop_y_reg[5] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[5]),
        .Q(crop_y[5]),
        .R(p_0_in));
  FDRE \crop_y_reg[6] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[6]),
        .Q(crop_y[6]),
        .R(p_0_in));
  FDRE \crop_y_reg[7] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[7]),
        .Q(crop_y[7]),
        .R(p_0_in));
  FDRE \crop_y_reg[8] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[8]),
        .Q(crop_y[8]),
        .R(p_0_in));
  FDRE \crop_y_reg[9] 
       (.C(s00_axi_aclk),
        .CE(crop_y_13),
        .D(s00_axi_wdata[9]),
        .Q(crop_y[9]),
        .R(p_0_in));
  FDRE dscale_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[4]),
        .Q(data1[4]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00040000)) 
    \dscale_h[3]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(int_frame_done_i_2_n_0),
        .O(dscale_h_5));
  FDSE \dscale_h_reg[0] 
       (.C(s00_axi_aclk),
        .CE(dscale_h_5),
        .D(s00_axi_wdata[0]),
        .Q(dscale_h[0]),
        .S(p_0_in));
  FDRE \dscale_h_reg[1] 
       (.C(s00_axi_aclk),
        .CE(dscale_h_5),
        .D(s00_axi_wdata[1]),
        .Q(dscale_h[1]),
        .R(p_0_in));
  FDRE \dscale_h_reg[2] 
       (.C(s00_axi_aclk),
        .CE(dscale_h_5),
        .D(s00_axi_wdata[2]),
        .Q(dscale_h[2]),
        .R(p_0_in));
  FDRE \dscale_h_reg[3] 
       (.C(s00_axi_aclk),
        .CE(dscale_h_5),
        .D(s00_axi_wdata[3]),
        .Q(dscale_h[3]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h01000000)) 
    \dscale_v[3]_i_1 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[4]),
        .I3(p_0_in_0[3]),
        .I4(hist_equ_en_i_2_n_0),
        .O(dscale_v_12));
  FDSE \dscale_v_reg[0] 
       (.C(s00_axi_aclk),
        .CE(dscale_v_12),
        .D(s00_axi_wdata[0]),
        .Q(dscale_v[0]),
        .S(p_0_in));
  FDRE \dscale_v_reg[1] 
       (.C(s00_axi_aclk),
        .CE(dscale_v_12),
        .D(s00_axi_wdata[1]),
        .Q(dscale_v[1]),
        .R(p_0_in));
  FDRE \dscale_v_reg[2] 
       (.C(s00_axi_aclk),
        .CE(dscale_v_12),
        .D(s00_axi_wdata[2]),
        .Q(dscale_v[2]),
        .R(p_0_in));
  FDRE \dscale_v_reg[3] 
       (.C(s00_axi_aclk),
        .CE(dscale_v_12),
        .D(s00_axi_wdata[3]),
        .Q(dscale_v[3]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00100000)) 
    \equ_max[7]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[2]),
        .I4(hist_equ_en_i_2_n_0),
        .O(equ_max_14));
  FDRE \equ_max_reg[0] 
       (.C(s00_axi_aclk),
        .CE(equ_max_14),
        .D(s00_axi_wdata[0]),
        .Q(equ_max[0]),
        .R(p_0_in));
  FDRE \equ_max_reg[1] 
       (.C(s00_axi_aclk),
        .CE(equ_max_14),
        .D(s00_axi_wdata[1]),
        .Q(equ_max[1]),
        .R(p_0_in));
  FDSE \equ_max_reg[2] 
       (.C(s00_axi_aclk),
        .CE(equ_max_14),
        .D(s00_axi_wdata[2]),
        .Q(equ_max[2]),
        .S(p_0_in));
  FDSE \equ_max_reg[3] 
       (.C(s00_axi_aclk),
        .CE(equ_max_14),
        .D(s00_axi_wdata[3]),
        .Q(equ_max[3]),
        .S(p_0_in));
  FDSE \equ_max_reg[4] 
       (.C(s00_axi_aclk),
        .CE(equ_max_14),
        .D(s00_axi_wdata[4]),
        .Q(equ_max[4]),
        .S(p_0_in));
  FDRE \equ_max_reg[5] 
       (.C(s00_axi_aclk),
        .CE(equ_max_14),
        .D(s00_axi_wdata[5]),
        .Q(equ_max[5]),
        .R(p_0_in));
  FDSE \equ_max_reg[6] 
       (.C(s00_axi_aclk),
        .CE(equ_max_14),
        .D(s00_axi_wdata[6]),
        .Q(equ_max[6]),
        .S(p_0_in));
  FDSE \equ_max_reg[7] 
       (.C(s00_axi_aclk),
        .CE(equ_max_14),
        .D(s00_axi_wdata[7]),
        .Q(equ_max[7]),
        .S(p_0_in));
  LUT5 #(
    .INIT(32'h01000000)) 
    \equ_min[7]_i_1 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(int_frame_done_i_2_n_0),
        .O(equ_min_10));
  FDRE \equ_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(equ_min_10),
        .D(s00_axi_wdata[0]),
        .Q(equ_min[0]),
        .R(p_0_in));
  FDRE \equ_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(equ_min_10),
        .D(s00_axi_wdata[1]),
        .Q(equ_min[1]),
        .R(p_0_in));
  FDRE \equ_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(equ_min_10),
        .D(s00_axi_wdata[2]),
        .Q(equ_min[2]),
        .R(p_0_in));
  FDSE \equ_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(equ_min_10),
        .D(s00_axi_wdata[3]),
        .Q(equ_min[3]),
        .S(p_0_in));
  FDRE \equ_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(equ_min_10),
        .D(s00_axi_wdata[4]),
        .Q(equ_min[4]),
        .R(p_0_in));
  FDSE \equ_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(equ_min_10),
        .D(s00_axi_wdata[5]),
        .Q(equ_min[5]),
        .S(p_0_in));
  FDRE \equ_min_reg[6] 
       (.C(s00_axi_aclk),
        .CE(equ_min_10),
        .D(s00_axi_wdata[6]),
        .Q(equ_min[6]),
        .R(p_0_in));
  FDRE \equ_min_reg[7] 
       (.C(s00_axi_aclk),
        .CE(equ_min_10),
        .D(s00_axi_wdata[7]),
        .Q(equ_min[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00010000)) 
    hist_equ_en_i_1
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[4]),
        .I3(p_0_in_0[3]),
        .I4(hist_equ_en_i_2_n_0),
        .O(hist_equ_en));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    hist_equ_en_i_2
       (.I0(\crop_h[15]_i_2_n_0 ),
        .I1(p_0_in_0[0]),
        .O(hist_equ_en_i_2_n_0));
  FDRE hist_equ_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[0]),
        .Q(data1[0]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'hB)) 
    href_reg_i_1
       (.I0(s_module_reset),
        .I1(rst_n),
        .O(href_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFF0000)) 
    int_frame_done_i_1
       (.I0(int_frame_done_i_2_n_0),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[4]),
        .I3(int_frame_done_i_3_n_0),
        .I4(int_frame_done0),
        .I5(int_frame_done),
        .O(int_frame_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_frame_done_i_2
       (.I0(\crop_h[15]_i_2_n_0 ),
        .I1(p_0_in_0[0]),
        .O(int_frame_done_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    int_frame_done_i_3
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[1]),
        .O(int_frame_done_i_3_n_0));
  FDRE int_frame_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_frame_done_i_1_n_0),
        .Q(int_frame_done),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    int_mask_frame_done_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(int_frame_done_i_3_n_0),
        .I2(p_0_in_0[4]),
        .I3(p_0_in_0[3]),
        .I4(hist_equ_en_i_2_n_0),
        .I5(int_mask_frame_done),
        .O(int_mask_frame_done_i_1_n_0));
  FDSE int_mask_frame_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_mask_frame_done_i_1_n_0),
        .Q(int_mask_frame_done),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    irq_INST_0
       (.I0(int_frame_done),
        .I1(int_mask_frame_done),
        .O(irq));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    module_reset_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(module_reset_i_2_n_0),
        .I4(int_frame_done_i_2_n_0),
        .I5(module_reset),
        .O(module_reset_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    module_reset_i_2
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .O(module_reset_i_2_n_0));
  FDSE module_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(module_reset_i_1_n_0),
        .Q(module_reset),
        .S(p_0_in));
  FDRE osd_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[5]),
        .Q(data1[5]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00400000)) 
    \osd_h[15]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(hist_equ_en_i_2_n_0),
        .O(osd_h_11));
  FDRE \osd_h_reg[0] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[0]),
        .Q(osd_h[0]),
        .R(p_0_in));
  FDRE \osd_h_reg[10] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[10]),
        .Q(osd_h[10]),
        .R(p_0_in));
  FDRE \osd_h_reg[11] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[11]),
        .Q(osd_h[11]),
        .R(p_0_in));
  FDRE \osd_h_reg[12] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[12]),
        .Q(osd_h[12]),
        .R(p_0_in));
  FDRE \osd_h_reg[13] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[13]),
        .Q(osd_h[13]),
        .R(p_0_in));
  FDRE \osd_h_reg[14] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[14]),
        .Q(osd_h[14]),
        .R(p_0_in));
  FDRE \osd_h_reg[15] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[15]),
        .Q(osd_h[15]),
        .R(p_0_in));
  FDRE \osd_h_reg[1] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[1]),
        .Q(osd_h[1]),
        .R(p_0_in));
  FDRE \osd_h_reg[2] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[2]),
        .Q(osd_h[2]),
        .R(p_0_in));
  FDRE \osd_h_reg[3] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[3]),
        .Q(osd_h[3]),
        .R(p_0_in));
  FDRE \osd_h_reg[4] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[4]),
        .Q(osd_h[4]),
        .R(p_0_in));
  FDRE \osd_h_reg[5] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[5]),
        .Q(osd_h[5]),
        .R(p_0_in));
  FDRE \osd_h_reg[6] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[6]),
        .Q(osd_h[6]),
        .R(p_0_in));
  FDRE \osd_h_reg[7] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[7]),
        .Q(osd_h[7]),
        .R(p_0_in));
  FDRE \osd_h_reg[8] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[8]),
        .Q(osd_h[8]),
        .R(p_0_in));
  FDRE \osd_h_reg[9] 
       (.C(s00_axi_aclk),
        .CE(osd_h_11),
        .D(s00_axi_wdata[9]),
        .Q(osd_h[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \osd_rgb_bg[23]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(\crop_h[15]_i_2_n_0 ),
        .O(osd_rgb_bg_1));
  FDRE \osd_rgb_bg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[0]),
        .Q(osd_rgb_bg[0]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[10]),
        .Q(osd_rgb_bg[10]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[11]),
        .Q(osd_rgb_bg[11]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[12]),
        .Q(osd_rgb_bg[12]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[13]),
        .Q(osd_rgb_bg[13]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[14]),
        .Q(osd_rgb_bg[14]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[15]),
        .Q(osd_rgb_bg[15]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[16]),
        .Q(osd_rgb_bg[16]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[17]),
        .Q(osd_rgb_bg[17]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[18]),
        .Q(osd_rgb_bg[18]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[19]),
        .Q(osd_rgb_bg[19]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[1]),
        .Q(osd_rgb_bg[1]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[20]),
        .Q(osd_rgb_bg[20]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[21]),
        .Q(osd_rgb_bg[21]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[22]),
        .Q(osd_rgb_bg[22]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[23]),
        .Q(osd_rgb_bg[23]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[2]),
        .Q(osd_rgb_bg[2]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[3]),
        .Q(osd_rgb_bg[3]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[4]),
        .Q(osd_rgb_bg[4]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[5]),
        .Q(osd_rgb_bg[5]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[6]),
        .Q(osd_rgb_bg[6]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[7]),
        .Q(osd_rgb_bg[7]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[8]),
        .Q(osd_rgb_bg[8]),
        .R(p_0_in));
  FDRE \osd_rgb_bg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_bg_1),
        .D(s00_axi_wdata[9]),
        .Q(osd_rgb_bg[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h40000000)) 
    \osd_rgb_fg[23]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(int_frame_done_i_2_n_0),
        .O(osd_rgb_fg_7));
  FDRE \osd_rgb_fg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[0]),
        .Q(osd_rgb_fg[0]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[10]),
        .Q(osd_rgb_fg[10]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[11]),
        .Q(osd_rgb_fg[11]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[12]),
        .Q(osd_rgb_fg[12]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[13]),
        .Q(osd_rgb_fg[13]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[14]),
        .Q(osd_rgb_fg[14]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[15]),
        .Q(osd_rgb_fg[15]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[16]),
        .Q(osd_rgb_fg[16]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[17]),
        .Q(osd_rgb_fg[17]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[18]),
        .Q(osd_rgb_fg[18]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[19]),
        .Q(osd_rgb_fg[19]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[1]),
        .Q(osd_rgb_fg[1]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[20]),
        .Q(osd_rgb_fg[20]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[21]),
        .Q(osd_rgb_fg[21]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[22]),
        .Q(osd_rgb_fg[22]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[23]),
        .Q(osd_rgb_fg[23]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[2]),
        .Q(osd_rgb_fg[2]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[3]),
        .Q(osd_rgb_fg[3]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[4]),
        .Q(osd_rgb_fg[4]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[5]),
        .Q(osd_rgb_fg[5]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[6]),
        .Q(osd_rgb_fg[6]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[7]),
        .Q(osd_rgb_fg[7]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[8]),
        .Q(osd_rgb_fg[8]),
        .R(p_0_in));
  FDRE \osd_rgb_fg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(osd_rgb_fg_7),
        .D(s00_axi_wdata[9]),
        .Q(osd_rgb_fg[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00400000)) 
    \osd_w[15]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(int_frame_done_i_2_n_0),
        .O(osd_w_4));
  FDRE \osd_w_reg[0] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[0]),
        .Q(osd_w[0]),
        .R(p_0_in));
  FDRE \osd_w_reg[10] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[10]),
        .Q(osd_w[10]),
        .R(p_0_in));
  FDRE \osd_w_reg[11] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[11]),
        .Q(osd_w[11]),
        .R(p_0_in));
  FDRE \osd_w_reg[12] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[12]),
        .Q(osd_w[12]),
        .R(p_0_in));
  FDRE \osd_w_reg[13] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[13]),
        .Q(osd_w[13]),
        .R(p_0_in));
  FDRE \osd_w_reg[14] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[14]),
        .Q(osd_w[14]),
        .R(p_0_in));
  FDRE \osd_w_reg[15] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[15]),
        .Q(osd_w[15]),
        .R(p_0_in));
  FDRE \osd_w_reg[1] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[1]),
        .Q(osd_w[1]),
        .R(p_0_in));
  FDRE \osd_w_reg[2] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[2]),
        .Q(osd_w[2]),
        .R(p_0_in));
  FDRE \osd_w_reg[3] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[3]),
        .Q(osd_w[3]),
        .R(p_0_in));
  FDRE \osd_w_reg[4] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[4]),
        .Q(osd_w[4]),
        .R(p_0_in));
  FDRE \osd_w_reg[5] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[5]),
        .Q(osd_w[5]),
        .R(p_0_in));
  FDRE \osd_w_reg[6] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[6]),
        .Q(osd_w[6]),
        .R(p_0_in));
  FDRE \osd_w_reg[7] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[7]),
        .Q(osd_w[7]),
        .R(p_0_in));
  FDRE \osd_w_reg[8] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[8]),
        .Q(osd_w[8]),
        .R(p_0_in));
  FDRE \osd_w_reg[9] 
       (.C(s00_axi_aclk),
        .CE(osd_w_4),
        .D(s00_axi_wdata[9]),
        .Q(osd_w[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h10000000)) 
    \osd_x[15]_i_1 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(int_frame_done_i_2_n_0),
        .O(osd_x_8));
  FDRE \osd_x_reg[0] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[0]),
        .Q(osd_x[0]),
        .R(p_0_in));
  FDRE \osd_x_reg[10] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[10]),
        .Q(osd_x[10]),
        .R(p_0_in));
  FDRE \osd_x_reg[11] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[11]),
        .Q(osd_x[11]),
        .R(p_0_in));
  FDRE \osd_x_reg[12] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[12]),
        .Q(osd_x[12]),
        .R(p_0_in));
  FDRE \osd_x_reg[13] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[13]),
        .Q(osd_x[13]),
        .R(p_0_in));
  FDRE \osd_x_reg[14] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[14]),
        .Q(osd_x[14]),
        .R(p_0_in));
  FDRE \osd_x_reg[15] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[15]),
        .Q(osd_x[15]),
        .R(p_0_in));
  FDRE \osd_x_reg[1] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[1]),
        .Q(osd_x[1]),
        .R(p_0_in));
  FDRE \osd_x_reg[2] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[2]),
        .Q(osd_x[2]),
        .R(p_0_in));
  FDRE \osd_x_reg[3] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[3]),
        .Q(osd_x[3]),
        .R(p_0_in));
  FDRE \osd_x_reg[4] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[4]),
        .Q(osd_x[4]),
        .R(p_0_in));
  FDRE \osd_x_reg[5] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[5]),
        .Q(osd_x[5]),
        .R(p_0_in));
  FDRE \osd_x_reg[6] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[6]),
        .Q(osd_x[6]),
        .R(p_0_in));
  FDRE \osd_x_reg[7] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[7]),
        .Q(osd_x[7]),
        .R(p_0_in));
  FDRE \osd_x_reg[8] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[8]),
        .Q(osd_x[8]),
        .R(p_0_in));
  FDRE \osd_x_reg[9] 
       (.C(s00_axi_aclk),
        .CE(osd_x_8),
        .D(s00_axi_wdata[9]),
        .Q(osd_x[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \osd_y[15]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(\crop_h[15]_i_2_n_0 ),
        .O(osd_y_2));
  FDRE \osd_y_reg[0] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[0]),
        .Q(osd_y[0]),
        .R(p_0_in));
  FDRE \osd_y_reg[10] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[10]),
        .Q(osd_y[10]),
        .R(p_0_in));
  FDRE \osd_y_reg[11] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[11]),
        .Q(osd_y[11]),
        .R(p_0_in));
  FDRE \osd_y_reg[12] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[12]),
        .Q(osd_y[12]),
        .R(p_0_in));
  FDRE \osd_y_reg[13] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[13]),
        .Q(osd_y[13]),
        .R(p_0_in));
  FDRE \osd_y_reg[14] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[14]),
        .Q(osd_y[14]),
        .R(p_0_in));
  FDRE \osd_y_reg[15] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[15]),
        .Q(osd_y[15]),
        .R(p_0_in));
  FDRE \osd_y_reg[1] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[1]),
        .Q(osd_y[1]),
        .R(p_0_in));
  FDRE \osd_y_reg[2] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[2]),
        .Q(osd_y[2]),
        .R(p_0_in));
  FDRE \osd_y_reg[3] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[3]),
        .Q(osd_y[3]),
        .R(p_0_in));
  FDRE \osd_y_reg[4] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[4]),
        .Q(osd_y[4]),
        .R(p_0_in));
  FDRE \osd_y_reg[5] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[5]),
        .Q(osd_y[5]),
        .R(p_0_in));
  FDRE \osd_y_reg[6] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[6]),
        .Q(osd_y[6]),
        .R(p_0_in));
  FDRE \osd_y_reg[7] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[7]),
        .Q(osd_y[7]),
        .R(p_0_in));
  FDRE \osd_y_reg[8] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[8]),
        .Q(osd_y[8]),
        .R(p_0_in));
  FDRE \osd_y_reg[9] 
       (.C(s00_axi_aclk),
        .CE(osd_y_2),
        .D(s00_axi_wdata[9]),
        .Q(osd_y[9]),
        .R(p_0_in));
  FDRE prev_vsync_r_reg
       (.C(pclk),
        .CE(1'b1),
        .D(in_vsync),
        .Q(prev_vsync_r),
        .R(1'b0));
  FDRE prev_vsync_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_vsync),
        .Q(prev_vsync),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(DOADO[0]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_0_sn_1),
        .I3(axi_rdata[0]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[0]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(DOADO[10]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_10_sn_1),
        .I3(axi_rdata[10]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[10]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(DOADO[11]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_11_sn_1),
        .I3(axi_rdata[11]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[11]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(DOADO[12]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_12_sn_1),
        .I3(axi_rdata[12]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[12]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(DOADO[13]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_13_sn_1),
        .I3(axi_rdata[13]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[13]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(DOADO[14]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_14_sn_1),
        .I3(axi_rdata[14]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[14]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(DOADO[15]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_15_sn_1),
        .I3(axi_rdata[15]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[15]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(DOADO[16]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_16_sn_1),
        .I3(axi_rdata[16]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[16]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(DOADO[17]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_17_sn_1),
        .I3(axi_rdata[17]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[17]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(DOADO[18]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_18_sn_1),
        .I3(axi_rdata[18]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[18]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(DOADO[19]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_19_sn_1),
        .I3(axi_rdata[19]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[19]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(DOADO[1]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_1_sn_1),
        .I3(axi_rdata[1]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[1]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(DOADO[20]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_20_sn_1),
        .I3(axi_rdata[20]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[20]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(DOADO[21]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_21_sn_1),
        .I3(axi_rdata[21]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[21]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(DOADO[22]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_22_sn_1),
        .I3(axi_rdata[22]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[22]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(DOADO[23]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_23_sn_1),
        .I3(axi_rdata[23]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[23]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(DOADO[2]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_2_sn_1),
        .I3(axi_rdata[2]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \s00_axi_rdata[31]_INST_0_i_3 
       (.I0(axi_araddr_area_id),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .O(osd_ram_ren));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(DOADO[3]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_3_sn_1),
        .I3(axi_rdata[3]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[3]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(DOADO[4]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_4_sn_1),
        .I3(axi_rdata[4]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[4]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(DOADO[5]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_5_sn_1),
        .I3(axi_rdata[5]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[5]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(DOADO[6]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_6_sn_1),
        .I3(axi_rdata[6]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[6]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(DOADO[7]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_7_sn_1),
        .I3(axi_rdata[7]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[7]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(DOADO[8]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_8_sn_1),
        .I3(axi_rdata[8]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[8]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(DOADO[9]),
        .I1(\s00_axi_rdata[24]_0 ),
        .I2(s00_axi_rdata_9_sn_1),
        .I3(axi_rdata[9]),
        .I4(axi_araddr_area_id),
        .O(s00_axi_rdata[9]));
  FDRE s_crop_en_reg
       (.C(pclk),
        .CE(frame_start),
        .D(data1[3]),
        .Q(s_crop_en),
        .R(1'b0));
  FDRE \s_crop_h_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[0]),
        .Q(s_crop_h[0]),
        .R(1'b0));
  FDRE \s_crop_h_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[10]),
        .Q(s_crop_h[10]),
        .R(1'b0));
  FDRE \s_crop_h_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[11]),
        .Q(s_crop_h[11]),
        .R(1'b0));
  FDRE \s_crop_h_reg[12] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[12]),
        .Q(s_crop_h[12]),
        .R(1'b0));
  FDRE \s_crop_h_reg[13] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[13]),
        .Q(s_crop_h[13]),
        .R(1'b0));
  FDRE \s_crop_h_reg[14] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[14]),
        .Q(s_crop_h[14]),
        .R(1'b0));
  FDRE \s_crop_h_reg[15] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[15]),
        .Q(s_crop_h[15]),
        .R(1'b0));
  FDRE \s_crop_h_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[1]),
        .Q(s_crop_h[1]),
        .R(1'b0));
  FDRE \s_crop_h_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[2]),
        .Q(s_crop_h[2]),
        .R(1'b0));
  FDRE \s_crop_h_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[3]),
        .Q(s_crop_h[3]),
        .R(1'b0));
  FDRE \s_crop_h_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[4]),
        .Q(s_crop_h[4]),
        .R(1'b0));
  FDRE \s_crop_h_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[5]),
        .Q(s_crop_h[5]),
        .R(1'b0));
  FDRE \s_crop_h_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[6]),
        .Q(s_crop_h[6]),
        .R(1'b0));
  FDRE \s_crop_h_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[7]),
        .Q(s_crop_h[7]),
        .R(1'b0));
  FDRE \s_crop_h_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[8]),
        .Q(s_crop_h[8]),
        .R(1'b0));
  FDRE \s_crop_h_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[9]),
        .Q(s_crop_h[9]),
        .R(1'b0));
  FDRE \s_crop_w_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[0]),
        .Q(s_crop_w[0]),
        .R(1'b0));
  FDRE \s_crop_w_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[10]),
        .Q(s_crop_w[10]),
        .R(1'b0));
  FDRE \s_crop_w_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[11]),
        .Q(s_crop_w[11]),
        .R(1'b0));
  FDRE \s_crop_w_reg[12] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[12]),
        .Q(s_crop_w[12]),
        .R(1'b0));
  FDRE \s_crop_w_reg[13] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[13]),
        .Q(s_crop_w[13]),
        .R(1'b0));
  FDRE \s_crop_w_reg[14] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[14]),
        .Q(s_crop_w[14]),
        .R(1'b0));
  FDRE \s_crop_w_reg[15] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[15]),
        .Q(s_crop_w[15]),
        .R(1'b0));
  FDRE \s_crop_w_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[1]),
        .Q(s_crop_w[1]),
        .R(1'b0));
  FDRE \s_crop_w_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[2]),
        .Q(s_crop_w[2]),
        .R(1'b0));
  FDRE \s_crop_w_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[3]),
        .Q(s_crop_w[3]),
        .R(1'b0));
  FDRE \s_crop_w_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[4]),
        .Q(s_crop_w[4]),
        .R(1'b0));
  FDRE \s_crop_w_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[5]),
        .Q(s_crop_w[5]),
        .R(1'b0));
  FDRE \s_crop_w_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[6]),
        .Q(s_crop_w[6]),
        .R(1'b0));
  FDRE \s_crop_w_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[7]),
        .Q(s_crop_w[7]),
        .R(1'b0));
  FDRE \s_crop_w_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[8]),
        .Q(s_crop_w[8]),
        .R(1'b0));
  FDRE \s_crop_w_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[9]),
        .Q(s_crop_w[9]),
        .R(1'b0));
  FDRE \s_crop_x_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[0]),
        .Q(s_crop_x[0]),
        .R(1'b0));
  FDRE \s_crop_x_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[10]),
        .Q(s_crop_x[10]),
        .R(1'b0));
  FDRE \s_crop_x_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[11]),
        .Q(s_crop_x[11]),
        .R(1'b0));
  FDRE \s_crop_x_reg[12] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[12]),
        .Q(s_crop_x[12]),
        .R(1'b0));
  FDRE \s_crop_x_reg[13] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[13]),
        .Q(s_crop_x[13]),
        .R(1'b0));
  FDRE \s_crop_x_reg[14] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[14]),
        .Q(s_crop_x[14]),
        .R(1'b0));
  FDRE \s_crop_x_reg[15] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[15]),
        .Q(s_crop_x[15]),
        .R(1'b0));
  FDRE \s_crop_x_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[1]),
        .Q(s_crop_x[1]),
        .R(1'b0));
  FDRE \s_crop_x_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[2]),
        .Q(s_crop_x[2]),
        .R(1'b0));
  FDRE \s_crop_x_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[3]),
        .Q(s_crop_x[3]),
        .R(1'b0));
  FDRE \s_crop_x_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[4]),
        .Q(s_crop_x[4]),
        .R(1'b0));
  FDRE \s_crop_x_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[5]),
        .Q(s_crop_x[5]),
        .R(1'b0));
  FDRE \s_crop_x_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[6]),
        .Q(s_crop_x[6]),
        .R(1'b0));
  FDRE \s_crop_x_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[7]),
        .Q(s_crop_x[7]),
        .R(1'b0));
  FDRE \s_crop_x_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[8]),
        .Q(s_crop_x[8]),
        .R(1'b0));
  FDRE \s_crop_x_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[9]),
        .Q(s_crop_x[9]),
        .R(1'b0));
  FDRE \s_crop_y_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[0]),
        .Q(s_crop_y[0]),
        .R(1'b0));
  FDRE \s_crop_y_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[10]),
        .Q(s_crop_y[10]),
        .R(1'b0));
  FDRE \s_crop_y_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[11]),
        .Q(s_crop_y[11]),
        .R(1'b0));
  FDRE \s_crop_y_reg[12] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[12]),
        .Q(s_crop_y[12]),
        .R(1'b0));
  FDRE \s_crop_y_reg[13] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[13]),
        .Q(s_crop_y[13]),
        .R(1'b0));
  FDRE \s_crop_y_reg[14] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[14]),
        .Q(s_crop_y[14]),
        .R(1'b0));
  FDRE \s_crop_y_reg[15] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[15]),
        .Q(s_crop_y[15]),
        .R(1'b0));
  FDRE \s_crop_y_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[1]),
        .Q(s_crop_y[1]),
        .R(1'b0));
  FDRE \s_crop_y_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[2]),
        .Q(s_crop_y[2]),
        .R(1'b0));
  FDRE \s_crop_y_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[3]),
        .Q(s_crop_y[3]),
        .R(1'b0));
  FDRE \s_crop_y_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[4]),
        .Q(s_crop_y[4]),
        .R(1'b0));
  FDRE \s_crop_y_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[5]),
        .Q(s_crop_y[5]),
        .R(1'b0));
  FDRE \s_crop_y_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[6]),
        .Q(s_crop_y[6]),
        .R(1'b0));
  FDRE \s_crop_y_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[7]),
        .Q(s_crop_y[7]),
        .R(1'b0));
  FDRE \s_crop_y_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[8]),
        .Q(s_crop_y[8]),
        .R(1'b0));
  FDRE \s_crop_y_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[9]),
        .Q(s_crop_y[9]),
        .R(1'b0));
  FDRE s_dscale_en_reg
       (.C(pclk),
        .CE(frame_start),
        .D(data1[4]),
        .Q(s_dscale_en),
        .R(1'b0));
  FDRE \s_dscale_h_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_h[0]),
        .Q(s_dscale_h[0]),
        .R(1'b0));
  FDRE \s_dscale_h_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_h[1]),
        .Q(s_dscale_h[1]),
        .R(1'b0));
  FDRE \s_dscale_h_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_h[2]),
        .Q(s_dscale_h[2]),
        .R(1'b0));
  FDRE \s_dscale_h_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_h[3]),
        .Q(s_dscale_h[3]),
        .R(1'b0));
  FDRE \s_dscale_v_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_v[0]),
        .Q(s_dscale_v[0]),
        .R(1'b0));
  FDRE \s_dscale_v_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_v[1]),
        .Q(s_dscale_v[1]),
        .R(1'b0));
  FDRE \s_dscale_v_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_v[2]),
        .Q(s_dscale_v[2]),
        .R(1'b0));
  FDRE \s_dscale_v_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_v[3]),
        .Q(s_dscale_v[3]),
        .R(1'b0));
  FDRE s_module_reset_reg
       (.C(pclk),
        .CE(1'b1),
        .D(module_reset),
        .Q(s_module_reset),
        .R(1'b0));
  FDRE s_osd_en_reg
       (.C(pclk),
        .CE(frame_start),
        .D(data1[5]),
        .Q(s_osd_en),
        .R(1'b0));
  FDRE \s_osd_h_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[0]),
        .Q(s_osd_h[0]),
        .R(1'b0));
  FDRE \s_osd_h_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[10]),
        .Q(s_osd_h[10]),
        .R(1'b0));
  FDRE \s_osd_h_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[1]),
        .Q(s_osd_h[1]),
        .R(1'b0));
  FDRE \s_osd_h_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[2]),
        .Q(s_osd_h[2]),
        .R(1'b0));
  FDRE \s_osd_h_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[3]),
        .Q(s_osd_h[3]),
        .R(1'b0));
  FDRE \s_osd_h_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[4]),
        .Q(s_osd_h[4]),
        .R(1'b0));
  FDRE \s_osd_h_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[5]),
        .Q(s_osd_h[5]),
        .R(1'b0));
  FDRE \s_osd_h_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[6]),
        .Q(s_osd_h[6]),
        .R(1'b0));
  FDRE \s_osd_h_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[7]),
        .Q(s_osd_h[7]),
        .R(1'b0));
  FDRE \s_osd_h_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[8]),
        .Q(s_osd_h[8]),
        .R(1'b0));
  FDRE \s_osd_h_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_h[9]),
        .Q(s_osd_h[9]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[0]),
        .Q(s_osd_rgb_bg[0]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[10]),
        .Q(s_osd_rgb_bg[10]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[11]),
        .Q(s_osd_rgb_bg[11]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[12] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[12]),
        .Q(s_osd_rgb_bg[12]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[13] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[13]),
        .Q(s_osd_rgb_bg[13]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[14] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[14]),
        .Q(s_osd_rgb_bg[14]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[15] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[15]),
        .Q(s_osd_rgb_bg[15]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[16] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[16]),
        .Q(s_osd_rgb_bg[16]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[17] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[17]),
        .Q(s_osd_rgb_bg[17]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[18] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[18]),
        .Q(s_osd_rgb_bg[18]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[19] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[19]),
        .Q(s_osd_rgb_bg[19]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[1]),
        .Q(s_osd_rgb_bg[1]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[20] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[20]),
        .Q(s_osd_rgb_bg[20]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[21] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[21]),
        .Q(s_osd_rgb_bg[21]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[22] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[22]),
        .Q(s_osd_rgb_bg[22]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[23] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[23]),
        .Q(s_osd_rgb_bg[23]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[2]),
        .Q(s_osd_rgb_bg[2]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[3]),
        .Q(s_osd_rgb_bg[3]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[4]),
        .Q(s_osd_rgb_bg[4]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[5]),
        .Q(s_osd_rgb_bg[5]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[6]),
        .Q(s_osd_rgb_bg[6]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[7]),
        .Q(s_osd_rgb_bg[7]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[8]),
        .Q(s_osd_rgb_bg[8]),
        .R(1'b0));
  FDRE \s_osd_rgb_bg_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_bg[9]),
        .Q(s_osd_rgb_bg[9]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[0]),
        .Q(s_osd_rgb_fg[0]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[10]),
        .Q(s_osd_rgb_fg[10]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[11]),
        .Q(s_osd_rgb_fg[11]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[12] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[12]),
        .Q(s_osd_rgb_fg[12]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[13] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[13]),
        .Q(s_osd_rgb_fg[13]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[14] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[14]),
        .Q(s_osd_rgb_fg[14]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[15] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[15]),
        .Q(s_osd_rgb_fg[15]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[16] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[16]),
        .Q(s_osd_rgb_fg[16]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[17] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[17]),
        .Q(s_osd_rgb_fg[17]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[18] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[18]),
        .Q(s_osd_rgb_fg[18]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[19] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[19]),
        .Q(s_osd_rgb_fg[19]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[1]),
        .Q(s_osd_rgb_fg[1]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[20] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[20]),
        .Q(s_osd_rgb_fg[20]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[21] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[21]),
        .Q(s_osd_rgb_fg[21]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[22] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[22]),
        .Q(s_osd_rgb_fg[22]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[23] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[23]),
        .Q(s_osd_rgb_fg[23]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[2]),
        .Q(s_osd_rgb_fg[2]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[3]),
        .Q(s_osd_rgb_fg[3]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[4]),
        .Q(s_osd_rgb_fg[4]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[5]),
        .Q(s_osd_rgb_fg[5]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[6]),
        .Q(s_osd_rgb_fg[6]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[7]),
        .Q(s_osd_rgb_fg[7]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[8]),
        .Q(s_osd_rgb_fg[8]),
        .R(1'b0));
  FDRE \s_osd_rgb_fg_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_rgb_fg[9]),
        .Q(s_osd_rgb_fg[9]),
        .R(1'b0));
  FDRE \s_osd_w_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[0]),
        .Q(s_osd_w[0]),
        .R(1'b0));
  FDRE \s_osd_w_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[10]),
        .Q(s_osd_w[10]),
        .R(1'b0));
  FDRE \s_osd_w_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[11]),
        .Q(s_osd_w[11]),
        .R(1'b0));
  FDRE \s_osd_w_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[1]),
        .Q(s_osd_w[1]),
        .R(1'b0));
  FDRE \s_osd_w_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[2]),
        .Q(s_osd_w[2]),
        .R(1'b0));
  FDRE \s_osd_w_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[3]),
        .Q(s_osd_w[3]),
        .R(1'b0));
  FDRE \s_osd_w_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[4]),
        .Q(s_osd_w[4]),
        .R(1'b0));
  FDRE \s_osd_w_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[5]),
        .Q(s_osd_w[5]),
        .R(1'b0));
  FDRE \s_osd_w_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[6]),
        .Q(s_osd_w[6]),
        .R(1'b0));
  FDRE \s_osd_w_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[7]),
        .Q(s_osd_w[7]),
        .R(1'b0));
  FDRE \s_osd_w_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[8]),
        .Q(s_osd_w[8]),
        .R(1'b0));
  FDRE \s_osd_w_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_w[9]),
        .Q(s_osd_w[9]),
        .R(1'b0));
  FDRE \s_osd_x_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[0]),
        .Q(s_osd_x[0]),
        .R(1'b0));
  FDRE \s_osd_x_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[10]),
        .Q(s_osd_x[10]),
        .R(1'b0));
  FDRE \s_osd_x_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[11]),
        .Q(s_osd_x[11]),
        .R(1'b0));
  FDRE \s_osd_x_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[1]),
        .Q(s_osd_x[1]),
        .R(1'b0));
  FDRE \s_osd_x_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[2]),
        .Q(s_osd_x[2]),
        .R(1'b0));
  FDRE \s_osd_x_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[3]),
        .Q(s_osd_x[3]),
        .R(1'b0));
  FDRE \s_osd_x_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[4]),
        .Q(s_osd_x[4]),
        .R(1'b0));
  FDRE \s_osd_x_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[5]),
        .Q(s_osd_x[5]),
        .R(1'b0));
  FDRE \s_osd_x_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[6]),
        .Q(s_osd_x[6]),
        .R(1'b0));
  FDRE \s_osd_x_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[7]),
        .Q(s_osd_x[7]),
        .R(1'b0));
  FDRE \s_osd_x_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[8]),
        .Q(s_osd_x[8]),
        .R(1'b0));
  FDRE \s_osd_x_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_x[9]),
        .Q(s_osd_x[9]),
        .R(1'b0));
  FDRE \s_osd_y_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[0]),
        .Q(s_osd_y[0]),
        .R(1'b0));
  FDRE \s_osd_y_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[10]),
        .Q(s_osd_y[10]),
        .R(1'b0));
  FDRE \s_osd_y_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[1]),
        .Q(s_osd_y[1]),
        .R(1'b0));
  FDRE \s_osd_y_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[2]),
        .Q(s_osd_y[2]),
        .R(1'b0));
  FDRE \s_osd_y_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[3]),
        .Q(s_osd_y[3]),
        .R(1'b0));
  FDRE \s_osd_y_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[4]),
        .Q(s_osd_y[4]),
        .R(1'b0));
  FDRE \s_osd_y_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[5]),
        .Q(s_osd_y[5]),
        .R(1'b0));
  FDRE \s_osd_y_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[6]),
        .Q(s_osd_y[6]),
        .R(1'b0));
  FDRE \s_osd_y_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[7]),
        .Q(s_osd_y[7]),
        .R(1'b0));
  FDRE \s_osd_y_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[8]),
        .Q(s_osd_y[8]),
        .R(1'b0));
  FDRE \s_osd_y_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(osd_y[9]),
        .Q(s_osd_y[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_sobel_en_i_1
       (.I0(prev_vsync_r),
        .I1(in_vsync),
        .O(frame_start));
  FDRE s_sobel_en_reg
       (.C(pclk),
        .CE(frame_start),
        .D(data1[1]),
        .Q(s_sobel_en),
        .R(1'b0));
  FDRE s_yuv2rgb_en_reg
       (.C(pclk),
        .CE(frame_start),
        .D(data1[2]),
        .Q(s_yuv2rgb_en),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .O(p_12_in));
  FDRE sobel_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[1]),
        .Q(data1[1]),
        .R(p_0_in));
  design_1_xil_vip_0_0_vip_top vip_top_i0
       (.DOADO(DOADO),
        .DOBDO(DOBDO),
        .Q({axi_araddr_area_id,\axi_araddr_reg_n_0_[10] ,\axi_araddr_reg_n_0_[9] ,\axi_araddr_reg_n_0_[8] ,\axi_araddr_reg_n_0_[7] ,sel0}),
        .\ZOUT_reg[19] (\ZOUT_reg[19] ),
        .\color_bg_r_reg[23] (s_osd_rgb_bg),
        .\color_fg_r_reg[23] (s_osd_rgb_fg),
        .href_t3(href_t3),
        .in_href(in_href),
        .in_vsync(in_vsync),
        .in_yuv(in_yuv),
        .int_frame_done0(int_frame_done0),
        .\line_cnt_reg[0] (s_dscale_v),
        .mem_reg({axi_awaddr_area_id,\axi_awaddr_reg_n_0_[10] ,\axi_awaddr_reg_n_0_[9] ,\axi_awaddr_reg_n_0_[8] ,p_0_in0,p_0_in_0}),
        .mem_reg_0(axi_awready_reg_0),
        .mem_reg_1(axi_wready_reg_0),
        .\osd_pix_buf_t5_reg[0] (\osd_pix_buf_t5_reg[0] ),
        .\osd_pix_buf_t5_reg[0]_0 (\osd_pix_buf_t5_reg[0]_0 ),
        .\osd_pix_buf_t5_reg[10] (\osd_pix_buf_t5_reg[10] ),
        .\osd_pix_buf_t5_reg[11] (\osd_pix_buf_t5_reg[11] ),
        .\osd_pix_buf_t5_reg[12] (\osd_pix_buf_t5_reg[12] ),
        .\osd_pix_buf_t5_reg[13] (\osd_pix_buf_t5_reg[13] ),
        .\osd_pix_buf_t5_reg[14] (\osd_pix_buf_t5_reg[14] ),
        .\osd_pix_buf_t5_reg[15] (\osd_pix_buf_t5_reg[15] ),
        .\osd_pix_buf_t5_reg[16] (\osd_pix_buf_t5_reg[16] ),
        .\osd_pix_buf_t5_reg[17] (\osd_pix_buf_t5_reg[17] ),
        .\osd_pix_buf_t5_reg[18] (\osd_pix_buf_t5_reg[18] ),
        .\osd_pix_buf_t5_reg[19] (\osd_pix_buf_t5_reg[19] ),
        .\osd_pix_buf_t5_reg[1] (\osd_pix_buf_t5_reg[1] ),
        .\osd_pix_buf_t5_reg[20] (\osd_pix_buf_t5_reg[20] ),
        .\osd_pix_buf_t5_reg[21] (\osd_pix_buf_t5_reg[21] ),
        .\osd_pix_buf_t5_reg[22] (\osd_pix_buf_t5_reg[22] ),
        .\osd_pix_buf_t5_reg[23] (\osd_pix_buf_t5_reg[23] ),
        .\osd_pix_buf_t5_reg[24] (\osd_pix_buf_t5_reg[24] ),
        .\osd_pix_buf_t5_reg[25] (\osd_pix_buf_t5_reg[25] ),
        .\osd_pix_buf_t5_reg[26] (\osd_pix_buf_t5_reg[26] ),
        .\osd_pix_buf_t5_reg[27] (\osd_pix_buf_t5_reg[27] ),
        .\osd_pix_buf_t5_reg[28] (\osd_pix_buf_t5_reg[28] ),
        .\osd_pix_buf_t5_reg[29] (\osd_pix_buf_t5_reg[29] ),
        .\osd_pix_buf_t5_reg[2] (\osd_pix_buf_t5_reg[2] ),
        .\osd_pix_buf_t5_reg[30] (\osd_pix_buf_t5_reg[30] ),
        .\osd_pix_buf_t5_reg[31] (\osd_pix_buf_t5_reg[31] ),
        .\osd_pix_buf_t5_reg[3] (\osd_pix_buf_t5_reg[3] ),
        .\osd_pix_buf_t5_reg[4] (\osd_pix_buf_t5_reg[4] ),
        .\osd_pix_buf_t5_reg[5] (\osd_pix_buf_t5_reg[5] ),
        .\osd_pix_buf_t5_reg[6] (\osd_pix_buf_t5_reg[6] ),
        .\osd_pix_buf_t5_reg[7] (\osd_pix_buf_t5_reg[7] ),
        .\osd_pix_buf_t5_reg[8] (\osd_pix_buf_t5_reg[8] ),
        .\osd_pix_buf_t5_reg[9] (\osd_pix_buf_t5_reg[9] ),
        .\osd_x0_r_reg[10] (s_osd_x),
        .\osd_x1_r_reg[11] (s_osd_w),
        .\osd_y0_r_reg[10] (s_osd_y),
        .\osd_y1_r_reg[10] (s_osd_h),
        .out_href(out_href),
        .out_href1_carry__0(s_crop_y),
        .\out_href1_inferred__0/i__carry__2 (s_crop_h),
        .out_href3_carry__2(s_crop_x),
        .out_href3_carry__2_0(s_crop_w),
        .out_pclk_r_reg(CLK),
        .out_rgb(out_rgb),
        .out_vsync(out_vsync),
        .pclk(pclk),
        .\pix_cnt_reg[0] (s_dscale_h),
        .prev_vsync(prev_vsync),
        .rst_n(rst_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_rdata(s00_axi_rdata[31:24]),
        .\s00_axi_rdata[24] (s00_axi_rdata_24_sn_1),
        .\s00_axi_rdata[24]_0 (\s00_axi_rdata[24]_0 ),
        .\s00_axi_rdata[25] (s00_axi_rdata_25_sn_1),
        .\s00_axi_rdata[26] (s00_axi_rdata_26_sn_1),
        .\s00_axi_rdata[27] (s00_axi_rdata_27_sn_1),
        .\s00_axi_rdata[28] (s00_axi_rdata_28_sn_1),
        .\s00_axi_rdata[29] (s00_axi_rdata_29_sn_1),
        .\s00_axi_rdata[30] (s00_axi_rdata_30_sn_1),
        .\s00_axi_rdata[31] (s00_axi_rdata_31_sn_1),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_crop_en(s_crop_en),
        .s_dscale_en(s_dscale_en),
        .s_module_reset(s_module_reset),
        .s_osd_en(s_osd_en),
        .s_sobel_en(s_sobel_en),
        .s_yuv2rgb_en(s_yuv2rgb_en),
        .s_yuv2rgb_en_reg(s_yuv2rgb_en_reg_0),
        .vsync_reg_reg(href_reg_i_1_n_0));
  FDSE yuv2rgb_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[2]),
        .Q(data1[2]),
        .S(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
