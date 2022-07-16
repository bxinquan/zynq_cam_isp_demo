// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Jul 15 22:35:24 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.gen/sources_1/bd/base/ip/base_xil_camif_0_0/base_xil_camif_0_0_sim_netlist.v
// Design      : base_xil_camif_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "base_xil_camif_0_0,xil_camif_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xil_camif_v1_0,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module base_xil_camif_0_0
   (irq,
    cam_xclk,
    cam_pclk,
    cam_href,
    cam_vsync,
    cam_data,
    out_pclk,
    out_href,
    out_vsync,
    out_raw,
    s00_axi_aclk,
    s00_axi_aresetn,
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
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cam_xclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cam_xclk, FREQ_HZ 96000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input cam_xclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cam_pclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cam_pclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_cam_pclk, INSERT_VIP 0" *) input cam_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 camera ACTIVE_VIDEO" *) input cam_href;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 camera VSYNC" *) input cam_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 camera DATA" *) input [7:0]cam_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 out_pclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_pclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_xil_camif_0_0_out_pclk, INSERT_VIP 0" *) output out_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 raw ACTIVE_VIDEO" *) output out_href;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 raw VSYNC" *) output out_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 raw DATA" *) output [7:0]out_raw;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_vsync;
  wire cam_xclk;
  wire irq;
  wire out_href;
  wire out_pclk;
  wire [7:0]out_raw;
  wire out_vsync;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  base_xil_camif_0_0_xil_camif_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .cam_data(cam_data),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_pclk_0(out_pclk),
        .cam_vsync(cam_vsync),
        .cam_xclk(cam_xclk),
        .irq(irq),
        .out_href(out_href),
        .out_raw(out_raw),
        .out_vsync(out_vsync),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[0]),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "dvp_raw_timing_colorbar" *) 
module base_xil_camif_0_0_dvp_raw_timing_colorbar
   (dvp_vsync_reg_0,
    dvp_href_reg_0,
    D,
    cam_xclk,
    module_reset,
    out_vsync_reg,
    cam_vsync,
    cam_href,
    cam_data);
  output dvp_vsync_reg_0;
  output dvp_href_reg_0;
  output [7:0]D;
  input cam_xclk;
  input module_reset;
  input out_vsync_reg;
  input cam_vsync;
  input cam_href;
  input [7:0]cam_data;

  wire [7:0]D;
  wire [7:0]cam_data;
  wire cam_href;
  wire cam_vsync;
  wire cam_xclk;
  wire dvp_href0;
  wire dvp_href_i_2_n_0;
  wire dvp_href_i_3_n_0;
  wire dvp_href_i_4_n_0;
  wire dvp_href_reg_0;
  wire dvp_vsync0;
  wire dvp_vsync_reg_0;
  wire gen_href;
  wire gen_vsync;
  wire line_cnt;
  wire \line_cnt[0]_i_1_n_0 ;
  wire \line_cnt[0]_i_2_n_0 ;
  wire \line_cnt[0]_i_3_n_0 ;
  wire \line_cnt[10]_i_2_n_0 ;
  wire \line_cnt[10]_i_3_n_0 ;
  wire \line_cnt[10]_i_4_n_0 ;
  wire \line_cnt[10]_i_5_n_0 ;
  wire \line_cnt[10]_i_6_n_0 ;
  wire \line_cnt[1]_i_1_n_0 ;
  wire \line_cnt[2]_i_1_n_0 ;
  wire \line_cnt[3]_i_1_n_0 ;
  wire \line_cnt[4]_i_1_n_0 ;
  wire \line_cnt[5]_i_1_n_0 ;
  wire \line_cnt[5]_i_2_n_0 ;
  wire \line_cnt[6]_i_1_n_0 ;
  wire \line_cnt[6]_i_2_n_0 ;
  wire \line_cnt[7]_i_1_n_0 ;
  wire \line_cnt[8]_i_1_n_0 ;
  wire \line_cnt[9]_i_1_n_0 ;
  wire \line_cnt_reg_n_0_[0] ;
  wire \line_cnt_reg_n_0_[10] ;
  wire \line_cnt_reg_n_0_[1] ;
  wire \line_cnt_reg_n_0_[2] ;
  wire \line_cnt_reg_n_0_[3] ;
  wire \line_cnt_reg_n_0_[4] ;
  wire \line_cnt_reg_n_0_[5] ;
  wire \line_cnt_reg_n_0_[6] ;
  wire \line_cnt_reg_n_0_[7] ;
  wire \line_cnt_reg_n_0_[8] ;
  wire \line_cnt_reg_n_0_[9] ;
  wire module_reset;
  wire out_vsync_reg;
  wire [11:0]p_0_in;
  wire [11:0]pix_cnt;
  wire [11:1]pix_cnt0;
  wire \pix_cnt[0]_i_2_n_0 ;
  wire \pix_cnt[0]_i_3_n_0 ;
  wire \pix_cnt[0]_i_4_n_0 ;
  wire \pix_cnt[0]_i_5_n_0 ;
  wire \pix_cnt[11]_i_2_n_0 ;
  wire \pix_cnt[11]_i_4_n_0 ;
  wire \pix_cnt[11]_i_5_n_0 ;
  wire \pix_cnt_reg[11]_i_3_n_2 ;
  wire \pix_cnt_reg[11]_i_3_n_3 ;
  wire \pix_cnt_reg[4]_i_2_n_0 ;
  wire \pix_cnt_reg[4]_i_2_n_1 ;
  wire \pix_cnt_reg[4]_i_2_n_2 ;
  wire \pix_cnt_reg[4]_i_2_n_3 ;
  wire \pix_cnt_reg[8]_i_2_n_0 ;
  wire \pix_cnt_reg[8]_i_2_n_1 ;
  wire \pix_cnt_reg[8]_i_2_n_2 ;
  wire \pix_cnt_reg[8]_i_2_n_3 ;
  wire [7:7]raw_data;
  wire \raw_data[7]_i_10_n_0 ;
  wire \raw_data[7]_i_11_n_0 ;
  wire \raw_data[7]_i_12_n_0 ;
  wire \raw_data[7]_i_13_n_0 ;
  wire \raw_data[7]_i_14_n_0 ;
  wire \raw_data[7]_i_15_n_0 ;
  wire \raw_data[7]_i_16_n_0 ;
  wire \raw_data[7]_i_17_n_0 ;
  wire \raw_data[7]_i_18_n_0 ;
  wire \raw_data[7]_i_19_n_0 ;
  wire \raw_data[7]_i_1_n_0 ;
  wire \raw_data[7]_i_20_n_0 ;
  wire \raw_data[7]_i_21_n_0 ;
  wire \raw_data[7]_i_22_n_0 ;
  wire \raw_data[7]_i_23_n_0 ;
  wire \raw_data[7]_i_24_n_0 ;
  wire \raw_data[7]_i_25_n_0 ;
  wire \raw_data[7]_i_26_n_0 ;
  wire \raw_data[7]_i_27_n_0 ;
  wire \raw_data[7]_i_2_n_0 ;
  wire \raw_data[7]_i_3_n_0 ;
  wire \raw_data[7]_i_4_n_0 ;
  wire \raw_data[7]_i_5_n_0 ;
  wire \raw_data[7]_i_6_n_0 ;
  wire \raw_data[7]_i_7_n_0 ;
  wire \raw_data[7]_i_8_n_0 ;
  wire \raw_data[7]_i_9_n_0 ;
  wire [3:2]\NLW_pix_cnt_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_pix_cnt_reg[11]_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFF00E000)) 
    dvp_href_i_1
       (.I0(\line_cnt_reg_n_0_[3] ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[4] ),
        .I3(dvp_href_i_2_n_0),
        .I4(dvp_href_i_3_n_0),
        .O(dvp_href0));
  LUT6 #(
    .INIT(64'hFFFCFFFCFFFFFFFE)) 
    dvp_href_i_2
       (.I0(pix_cnt[5]),
        .I1(pix_cnt[9]),
        .I2(pix_cnt[11]),
        .I3(\pix_cnt[0]_i_5_n_0 ),
        .I4(\pix_cnt[0]_i_4_n_0 ),
        .I5(dvp_href_i_4_n_0),
        .O(dvp_href_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    dvp_href_i_3
       (.I0(\line_cnt_reg_n_0_[5] ),
        .I1(\line_cnt_reg_n_0_[6] ),
        .I2(\line_cnt_reg_n_0_[9] ),
        .I3(\line_cnt_reg_n_0_[10] ),
        .I4(\line_cnt_reg_n_0_[8] ),
        .I5(\line_cnt_reg_n_0_[7] ),
        .O(dvp_href_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    dvp_href_i_4
       (.I0(pix_cnt[6]),
        .I1(pix_cnt[7]),
        .O(dvp_href_i_4_n_0));
  FDCE dvp_href_reg
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_href0),
        .Q(gen_href));
  LUT6 #(
    .INIT(64'h0111111111001000)) 
    dvp_vsync_i_1
       (.I0(\line_cnt_reg_n_0_[4] ),
        .I1(dvp_href_i_3_n_0),
        .I2(\line_cnt_reg_n_0_[1] ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .I4(\line_cnt_reg_n_0_[0] ),
        .I5(\line_cnt_reg_n_0_[3] ),
        .O(dvp_vsync0));
  FDCE dvp_vsync_reg
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_vsync0),
        .Q(gen_vsync));
  LUT5 #(
    .INIT(32'hFFFF00F1)) 
    \line_cnt[0]_i_1 
       (.I0(\line_cnt_reg_n_0_[5] ),
        .I1(\line_cnt_reg_n_0_[6] ),
        .I2(\line_cnt[0]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[0] ),
        .I4(\line_cnt[0]_i_3_n_0 ),
        .O(\line_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \line_cnt[0]_i_2 
       (.I0(\line_cnt_reg_n_0_[8] ),
        .I1(\line_cnt_reg_n_0_[7] ),
        .I2(\line_cnt_reg_n_0_[9] ),
        .O(\line_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555557F)) 
    \line_cnt[0]_i_3 
       (.I0(\line_cnt_reg_n_0_[10] ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[3] ),
        .I3(\line_cnt_reg_n_0_[6] ),
        .I4(\line_cnt_reg_n_0_[4] ),
        .I5(\line_cnt_reg_n_0_[0] ),
        .O(\line_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \line_cnt[10]_i_1 
       (.I0(pix_cnt[7]),
        .I1(pix_cnt[6]),
        .I2(pix_cnt[5]),
        .I3(pix_cnt[9]),
        .I4(\pix_cnt[0]_i_5_n_0 ),
        .I5(\line_cnt[10]_i_3_n_0 ),
        .O(line_cnt));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \line_cnt[10]_i_2 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt_reg_n_0_[10] ),
        .I2(\line_cnt[10]_i_5_n_0 ),
        .I3(\line_cnt_reg_n_0_[9] ),
        .I4(\line_cnt_reg_n_0_[7] ),
        .I5(\line_cnt_reg_n_0_[8] ),
        .O(\line_cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \line_cnt[10]_i_3 
       (.I0(pix_cnt[3]),
        .I1(pix_cnt[4]),
        .I2(pix_cnt[2]),
        .I3(pix_cnt[11]),
        .I4(pix_cnt[1]),
        .I5(pix_cnt[0]),
        .O(\line_cnt[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFFFFF7FFF)) 
    \line_cnt[10]_i_4 
       (.I0(\line_cnt_reg_n_0_[9] ),
        .I1(\line_cnt_reg_n_0_[7] ),
        .I2(\line_cnt_reg_n_0_[8] ),
        .I3(\line_cnt_reg_n_0_[10] ),
        .I4(\line_cnt[10]_i_6_n_0 ),
        .I5(\line_cnt_reg_n_0_[6] ),
        .O(\line_cnt[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \line_cnt[10]_i_5 
       (.I0(\line_cnt_reg_n_0_[5] ),
        .I1(\line_cnt[5]_i_2_n_0 ),
        .I2(\line_cnt_reg_n_0_[2] ),
        .I3(\line_cnt_reg_n_0_[3] ),
        .I4(\line_cnt_reg_n_0_[4] ),
        .I5(\line_cnt_reg_n_0_[6] ),
        .O(\line_cnt[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h01115555FFFFFFFF)) 
    \line_cnt[10]_i_6 
       (.I0(\line_cnt_reg_n_0_[4] ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .I3(\line_cnt_reg_n_0_[1] ),
        .I4(\line_cnt_reg_n_0_[3] ),
        .I5(\line_cnt_reg_n_0_[5] ),
        .O(\line_cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \line_cnt[1]_i_1 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt_reg_n_0_[1] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .O(\line_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \line_cnt[2]_i_1 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .I3(\line_cnt_reg_n_0_[1] ),
        .O(\line_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \line_cnt[3]_i_1 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt_reg_n_0_[3] ),
        .I2(\line_cnt_reg_n_0_[2] ),
        .I3(\line_cnt_reg_n_0_[1] ),
        .I4(\line_cnt_reg_n_0_[0] ),
        .O(\line_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \line_cnt[4]_i_1 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt_reg_n_0_[4] ),
        .I2(\line_cnt_reg_n_0_[3] ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .I4(\line_cnt_reg_n_0_[1] ),
        .I5(\line_cnt_reg_n_0_[0] ),
        .O(\line_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8288888888888888)) 
    \line_cnt[5]_i_1 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt_reg_n_0_[5] ),
        .I2(\line_cnt[5]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .I4(\line_cnt_reg_n_0_[3] ),
        .I5(\line_cnt_reg_n_0_[4] ),
        .O(\line_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \line_cnt[5]_i_2 
       (.I0(\line_cnt_reg_n_0_[0] ),
        .I1(\line_cnt_reg_n_0_[1] ),
        .O(\line_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \line_cnt[6]_i_1 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt_reg_n_0_[6] ),
        .I2(\line_cnt[6]_i_2_n_0 ),
        .O(\line_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \line_cnt[6]_i_2 
       (.I0(\line_cnt_reg_n_0_[4] ),
        .I1(\line_cnt_reg_n_0_[3] ),
        .I2(\line_cnt_reg_n_0_[2] ),
        .I3(\line_cnt_reg_n_0_[1] ),
        .I4(\line_cnt_reg_n_0_[0] ),
        .I5(\line_cnt_reg_n_0_[5] ),
        .O(\line_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \line_cnt[7]_i_1 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt_reg_n_0_[7] ),
        .I2(\line_cnt[10]_i_5_n_0 ),
        .O(\line_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \line_cnt[8]_i_1 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt_reg_n_0_[8] ),
        .I2(\line_cnt[10]_i_5_n_0 ),
        .I3(\line_cnt_reg_n_0_[7] ),
        .O(\line_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \line_cnt[9]_i_1 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt_reg_n_0_[9] ),
        .I2(\line_cnt[10]_i_5_n_0 ),
        .I3(\line_cnt_reg_n_0_[8] ),
        .I4(\line_cnt_reg_n_0_[7] ),
        .O(\line_cnt[9]_i_1_n_0 ));
  FDCE \line_cnt_reg[0] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[0]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[0] ));
  FDCE \line_cnt_reg[10] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[10]_i_2_n_0 ),
        .Q(\line_cnt_reg_n_0_[10] ));
  FDCE \line_cnt_reg[1] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[1]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[1] ));
  FDCE \line_cnt_reg[2] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[2]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[2] ));
  FDCE \line_cnt_reg[3] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[3]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[3] ));
  FDCE \line_cnt_reg[4] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[4]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[4] ));
  FDCE \line_cnt_reg[5] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[5]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[5] ));
  FDCE \line_cnt_reg[6] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[6]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[6] ));
  FDCE \line_cnt_reg[7] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[7]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[7] ));
  FDCE \line_cnt_reg[8] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[8]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[8] ));
  FDCE \line_cnt_reg[9] 
       (.C(cam_xclk),
        .CE(line_cnt),
        .CLR(module_reset),
        .D(\line_cnt[9]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    out_href_i_1
       (.I0(gen_href),
        .I1(out_vsync_reg),
        .I2(cam_href),
        .O(dvp_href_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_raw[0]_i_1 
       (.I0(gen_href),
        .I1(raw_data),
        .I2(out_vsync_reg),
        .I3(cam_data[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_raw[1]_i_1 
       (.I0(gen_href),
        .I1(raw_data),
        .I2(out_vsync_reg),
        .I3(cam_data[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_raw[2]_i_1 
       (.I0(gen_href),
        .I1(raw_data),
        .I2(out_vsync_reg),
        .I3(cam_data[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_raw[3]_i_1 
       (.I0(gen_href),
        .I1(raw_data),
        .I2(out_vsync_reg),
        .I3(cam_data[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_raw[4]_i_1 
       (.I0(gen_href),
        .I1(raw_data),
        .I2(out_vsync_reg),
        .I3(cam_data[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_raw[5]_i_1 
       (.I0(gen_href),
        .I1(raw_data),
        .I2(out_vsync_reg),
        .I3(cam_data[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_raw[6]_i_1 
       (.I0(gen_href),
        .I1(raw_data),
        .I2(out_vsync_reg),
        .I3(cam_data[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_raw[7]_i_1 
       (.I0(gen_href),
        .I1(raw_data),
        .I2(out_vsync_reg),
        .I3(cam_data[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    out_vsync_i_1
       (.I0(gen_vsync),
        .I1(out_vsync_reg),
        .I2(cam_vsync),
        .O(dvp_vsync_reg_0));
  LUT6 #(
    .INIT(64'h00000000DDDDFDFF)) 
    \pix_cnt[0]_i_1 
       (.I0(pix_cnt[11]),
        .I1(\pix_cnt[0]_i_2_n_0 ),
        .I2(\pix_cnt[0]_i_3_n_0 ),
        .I3(\pix_cnt[0]_i_4_n_0 ),
        .I4(\pix_cnt[0]_i_5_n_0 ),
        .I5(pix_cnt[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \pix_cnt[0]_i_2 
       (.I0(pix_cnt[9]),
        .I1(pix_cnt[10]),
        .O(\pix_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pix_cnt[0]_i_3 
       (.I0(pix_cnt[7]),
        .I1(pix_cnt[6]),
        .I2(pix_cnt[5]),
        .O(\pix_cnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix_cnt[0]_i_4 
       (.I0(pix_cnt[3]),
        .I1(pix_cnt[4]),
        .O(\pix_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix_cnt[0]_i_5 
       (.I0(pix_cnt[8]),
        .I1(pix_cnt[10]),
        .O(\pix_cnt[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[10]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[10]),
        .O(p_0_in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[11]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFF5555DDFD)) 
    \pix_cnt[11]_i_2 
       (.I0(pix_cnt[11]),
        .I1(\pix_cnt[0]_i_3_n_0 ),
        .I2(\pix_cnt[11]_i_4_n_0 ),
        .I3(\pix_cnt[0]_i_4_n_0 ),
        .I4(\pix_cnt[0]_i_5_n_0 ),
        .I5(\pix_cnt[11]_i_5_n_0 ),
        .O(\pix_cnt[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \pix_cnt[11]_i_4 
       (.I0(pix_cnt[0]),
        .I1(pix_cnt[1]),
        .O(\pix_cnt[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000010000FFFF)) 
    \pix_cnt[11]_i_5 
       (.I0(pix_cnt[3]),
        .I1(pix_cnt[4]),
        .I2(pix_cnt[8]),
        .I3(pix_cnt[2]),
        .I4(pix_cnt[10]),
        .I5(pix_cnt[9]),
        .O(\pix_cnt[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[1]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[2]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[3]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[4]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[5]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[6]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[7]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[8]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[9]_i_1 
       (.I0(\pix_cnt[11]_i_2_n_0 ),
        .I1(pix_cnt0[9]),
        .O(p_0_in[9]));
  FDCE \pix_cnt_reg[0] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[0]),
        .Q(pix_cnt[0]));
  FDCE \pix_cnt_reg[10] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[10]),
        .Q(pix_cnt[10]));
  FDCE \pix_cnt_reg[11] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[11]),
        .Q(pix_cnt[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pix_cnt_reg[11]_i_3 
       (.CI(\pix_cnt_reg[8]_i_2_n_0 ),
        .CO({\NLW_pix_cnt_reg[11]_i_3_CO_UNCONNECTED [3:2],\pix_cnt_reg[11]_i_3_n_2 ,\pix_cnt_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pix_cnt_reg[11]_i_3_O_UNCONNECTED [3],pix_cnt0[11:9]}),
        .S({1'b0,pix_cnt[11:9]}));
  FDCE \pix_cnt_reg[1] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[1]),
        .Q(pix_cnt[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[2]),
        .Q(pix_cnt[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[3]),
        .Q(pix_cnt[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[4]),
        .Q(pix_cnt[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pix_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\pix_cnt_reg[4]_i_2_n_0 ,\pix_cnt_reg[4]_i_2_n_1 ,\pix_cnt_reg[4]_i_2_n_2 ,\pix_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(pix_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pix_cnt0[4:1]),
        .S(pix_cnt[4:1]));
  FDCE \pix_cnt_reg[5] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[5]),
        .Q(pix_cnt[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[6]),
        .Q(pix_cnt[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[7]),
        .Q(pix_cnt[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[8]),
        .Q(pix_cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pix_cnt_reg[8]_i_2 
       (.CI(\pix_cnt_reg[4]_i_2_n_0 ),
        .CO({\pix_cnt_reg[8]_i_2_n_0 ,\pix_cnt_reg[8]_i_2_n_1 ,\pix_cnt_reg[8]_i_2_n_2 ,\pix_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pix_cnt0[8:5]),
        .S(pix_cnt[8:5]));
  FDCE \pix_cnt_reg[9] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(p_0_in[9]),
        .Q(pix_cnt[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \raw_data[7]_i_1 
       (.I0(\raw_data[7]_i_2_n_0 ),
        .I1(\raw_data[7]_i_3_n_0 ),
        .I2(\raw_data[7]_i_4_n_0 ),
        .I3(\raw_data[7]_i_5_n_0 ),
        .I4(\raw_data[7]_i_6_n_0 ),
        .I5(\raw_data[7]_i_7_n_0 ),
        .O(\raw_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555FFFF5555FFEA)) 
    \raw_data[7]_i_10 
       (.I0(pix_cnt[6]),
        .I1(pix_cnt[3]),
        .I2(pix_cnt[2]),
        .I3(pix_cnt[4]),
        .I4(pix_cnt[5]),
        .I5(pix_cnt[7]),
        .O(\raw_data[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \raw_data[7]_i_11 
       (.I0(pix_cnt[9]),
        .I1(pix_cnt[10]),
        .I2(pix_cnt[8]),
        .O(\raw_data[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \raw_data[7]_i_12 
       (.I0(pix_cnt[0]),
        .I1(\line_cnt_reg_n_0_[0] ),
        .O(\raw_data[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4440444044404040)) 
    \raw_data[7]_i_13 
       (.I0(pix_cnt[6]),
        .I1(pix_cnt[7]),
        .I2(pix_cnt[5]),
        .I3(pix_cnt[4]),
        .I4(pix_cnt[3]),
        .I5(pix_cnt[2]),
        .O(\raw_data[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h77777FFF88888888)) 
    \raw_data[7]_i_14 
       (.I0(pix_cnt[6]),
        .I1(pix_cnt[7]),
        .I2(pix_cnt[3]),
        .I3(pix_cnt[4]),
        .I4(pix_cnt[5]),
        .I5(pix_cnt[8]),
        .O(\raw_data[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00101010)) 
    \raw_data[7]_i_15 
       (.I0(pix_cnt[9]),
        .I1(pix_cnt[11]),
        .I2(pix_cnt[10]),
        .I3(\line_cnt_reg_n_0_[0] ),
        .I4(pix_cnt[0]),
        .O(\raw_data[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000001FFFFFFFFF)) 
    \raw_data[7]_i_16 
       (.I0(pix_cnt[3]),
        .I1(pix_cnt[2]),
        .I2(pix_cnt[4]),
        .I3(pix_cnt[5]),
        .I4(pix_cnt[6]),
        .I5(pix_cnt[7]),
        .O(\raw_data[7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF8000000)) 
    \raw_data[7]_i_17 
       (.I0(pix_cnt[3]),
        .I1(pix_cnt[4]),
        .I2(pix_cnt[5]),
        .I3(pix_cnt[6]),
        .I4(pix_cnt[7]),
        .O(\raw_data[7]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \raw_data[7]_i_18 
       (.I0(pix_cnt[10]),
        .I1(pix_cnt[11]),
        .I2(pix_cnt[9]),
        .O(\raw_data[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6666616166606161)) 
    \raw_data[7]_i_19 
       (.I0(pix_cnt[0]),
        .I1(\line_cnt_reg_n_0_[0] ),
        .I2(pix_cnt[7]),
        .I3(pix_cnt[4]),
        .I4(pix_cnt[6]),
        .I5(pix_cnt[5]),
        .O(\raw_data[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAA00000EAAC0000)) 
    \raw_data[7]_i_2 
       (.I0(\raw_data[7]_i_8_n_0 ),
        .I1(\raw_data[7]_i_9_n_0 ),
        .I2(pix_cnt[0]),
        .I3(\line_cnt_reg_n_0_[0] ),
        .I4(pix_cnt[11]),
        .I5(\pix_cnt[0]_i_5_n_0 ),
        .O(\raw_data[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \raw_data[7]_i_20 
       (.I0(pix_cnt[9]),
        .I1(pix_cnt[11]),
        .O(\raw_data[7]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \raw_data[7]_i_21 
       (.I0(pix_cnt[7]),
        .I1(pix_cnt[5]),
        .I2(pix_cnt[4]),
        .O(\raw_data[7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \raw_data[7]_i_22 
       (.I0(pix_cnt[0]),
        .I1(\line_cnt_reg_n_0_[0] ),
        .I2(pix_cnt[6]),
        .I3(pix_cnt[11]),
        .I4(pix_cnt[9]),
        .O(\raw_data[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \raw_data[7]_i_23 
       (.I0(pix_cnt[6]),
        .I1(pix_cnt[5]),
        .I2(pix_cnt[7]),
        .I3(pix_cnt[2]),
        .I4(pix_cnt[3]),
        .I5(pix_cnt[4]),
        .O(\raw_data[7]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \raw_data[7]_i_24 
       (.I0(pix_cnt[8]),
        .I1(pix_cnt[10]),
        .I2(pix_cnt[9]),
        .I3(pix_cnt[11]),
        .O(\raw_data[7]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \raw_data[7]_i_25 
       (.I0(pix_cnt[7]),
        .I1(pix_cnt[5]),
        .I2(pix_cnt[2]),
        .I3(pix_cnt[3]),
        .I4(pix_cnt[4]),
        .O(\raw_data[7]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \raw_data[7]_i_26 
       (.I0(\line_cnt_reg_n_0_[0] ),
        .I1(pix_cnt[0]),
        .I2(pix_cnt[7]),
        .I3(pix_cnt[6]),
        .O(\raw_data[7]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \raw_data[7]_i_27 
       (.I0(pix_cnt[9]),
        .I1(pix_cnt[11]),
        .I2(pix_cnt[10]),
        .I3(pix_cnt[8]),
        .O(\raw_data[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0808080808)) 
    \raw_data[7]_i_3 
       (.I0(\raw_data[7]_i_10_n_0 ),
        .I1(\raw_data[7]_i_11_n_0 ),
        .I2(\raw_data[7]_i_12_n_0 ),
        .I3(\raw_data[7]_i_13_n_0 ),
        .I4(\raw_data[7]_i_14_n_0 ),
        .I5(\raw_data[7]_i_15_n_0 ),
        .O(\raw_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0000AA000000000)) 
    \raw_data[7]_i_4 
       (.I0(\raw_data[7]_i_16_n_0 ),
        .I1(\raw_data[7]_i_17_n_0 ),
        .I2(pix_cnt[0]),
        .I3(\line_cnt_reg_n_0_[0] ),
        .I4(pix_cnt[8]),
        .I5(\raw_data[7]_i_18_n_0 ),
        .O(\raw_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h008F00FF00880000)) 
    \raw_data[7]_i_5 
       (.I0(\raw_data[7]_i_19_n_0 ),
        .I1(\raw_data[7]_i_20_n_0 ),
        .I2(\raw_data[7]_i_21_n_0 ),
        .I3(pix_cnt[10]),
        .I4(pix_cnt[8]),
        .I5(\raw_data[7]_i_22_n_0 ),
        .O(\raw_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8008800080008000)) 
    \raw_data[7]_i_6 
       (.I0(pix_cnt[10]),
        .I1(\raw_data[7]_i_20_n_0 ),
        .I2(pix_cnt[0]),
        .I3(\line_cnt_reg_n_0_[0] ),
        .I4(pix_cnt[8]),
        .I5(\raw_data[7]_i_23_n_0 ),
        .O(\raw_data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7070707070)) 
    \raw_data[7]_i_7 
       (.I0(\pix_cnt[0]_i_4_n_0 ),
        .I1(pix_cnt[7]),
        .I2(\raw_data[7]_i_24_n_0 ),
        .I3(\raw_data[7]_i_25_n_0 ),
        .I4(\raw_data[7]_i_26_n_0 ),
        .I5(\raw_data[7]_i_27_n_0 ),
        .O(\raw_data[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000222F222)) 
    \raw_data[7]_i_8 
       (.I0(pix_cnt[7]),
        .I1(pix_cnt[8]),
        .I2(pix_cnt[5]),
        .I3(pix_cnt[6]),
        .I4(pix_cnt[9]),
        .I5(pix_cnt[10]),
        .O(\raw_data[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \raw_data[7]_i_9 
       (.I0(pix_cnt[6]),
        .I1(pix_cnt[7]),
        .I2(pix_cnt[5]),
        .O(\raw_data[7]_i_9_n_0 ));
  FDCE \raw_data_reg[7] 
       (.C(cam_xclk),
        .CE(1'b1),
        .CLR(module_reset),
        .D(\raw_data[7]_i_1_n_0 ),
        .Q(raw_data));
endmodule

(* ORIG_REF_NAME = "xil_camif_v1_0" *) 
module base_xil_camif_0_0_xil_camif_v1_0
   (cam_pclk_0,
    out_href,
    out_vsync,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    out_raw,
    S_AXI_ARREADY,
    s00_axi_rdata,
    irq,
    s00_axi_rvalid,
    s00_axi_bvalid,
    cam_pclk,
    cam_xclk,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_araddr,
    s00_axi_arvalid,
    cam_vsync,
    cam_href,
    cam_data,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_bready,
    s00_axi_rready);
  output cam_pclk_0;
  output out_href;
  output out_vsync;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [7:0]out_raw;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output irq;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input cam_pclk;
  input cam_xclk;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input cam_vsync;
  input cam_href;
  input [7:0]cam_data;
  input s00_axi_aresetn;
  input [0:0]s00_axi_wdata;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_pclk_0;
  wire cam_vsync;
  wire cam_xclk;
  wire irq;
  wire out_href;
  wire [7:0]out_raw;
  wire out_vsync;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [0:0]s00_axi_wdata;
  wire s00_axi_wvalid;

  base_xil_camif_0_0_xil_camif_v1_0_S00_AXI xil_camif_v1_0_S00_AXI_inst
       (.CLK(cam_pclk_0),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .cam_data(cam_data),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_vsync(cam_vsync),
        .cam_xclk(cam_xclk),
        .irq(irq),
        .out_href(out_href),
        .out_raw(out_raw),
        .out_vsync(out_vsync),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "xil_camif_v1_0_S00_AXI" *) 
module base_xil_camif_0_0_xil_camif_v1_0_S00_AXI
   (CLK,
    out_href,
    out_vsync,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    out_raw,
    S_AXI_ARREADY,
    s00_axi_rdata,
    irq,
    s00_axi_rvalid,
    s00_axi_bvalid,
    cam_pclk,
    cam_xclk,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_araddr,
    s00_axi_arvalid,
    cam_vsync,
    cam_href,
    cam_data,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_bready,
    s00_axi_rready);
  output CLK;
  output out_href;
  output out_vsync;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [7:0]out_raw;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output irq;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input cam_pclk;
  input cam_xclk;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input cam_vsync;
  input cam_href;
  input [7:0]cam_data;
  input s00_axi_aresetn;
  input [0:0]s00_axi_wdata;
  input s00_axi_bready;
  input s00_axi_rready;

  wire CLK;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[16]_i_1_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[18]_i_1_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[20]_i_1_n_0 ;
  wire \axi_rdata[21]_i_1_n_0 ;
  wire \axi_rdata[22]_i_1_n_0 ;
  wire \axi_rdata[23]_i_1_n_0 ;
  wire \axi_rdata[24]_i_1_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_vsync;
  wire cam_xclk;
  wire colorbar_en_i_1_n_0;
  wire colorbar_en_reg_n_0;
  wire dvp_colorbar_timing_generator_n_0;
  wire dvp_colorbar_timing_generator_n_1;
  wire dvp_colorbar_timing_generator_n_2;
  wire dvp_colorbar_timing_generator_n_3;
  wire dvp_colorbar_timing_generator_n_4;
  wire dvp_colorbar_timing_generator_n_5;
  wire dvp_colorbar_timing_generator_n_6;
  wire dvp_colorbar_timing_generator_n_7;
  wire dvp_colorbar_timing_generator_n_8;
  wire dvp_colorbar_timing_generator_n_9;
  wire \dvp_frame_cnt[0]_i_2_n_0 ;
  wire [31:0]dvp_frame_cnt_reg;
  wire \dvp_frame_cnt_reg[0]_i_1_n_0 ;
  wire \dvp_frame_cnt_reg[0]_i_1_n_1 ;
  wire \dvp_frame_cnt_reg[0]_i_1_n_2 ;
  wire \dvp_frame_cnt_reg[0]_i_1_n_3 ;
  wire \dvp_frame_cnt_reg[0]_i_1_n_4 ;
  wire \dvp_frame_cnt_reg[0]_i_1_n_5 ;
  wire \dvp_frame_cnt_reg[0]_i_1_n_6 ;
  wire \dvp_frame_cnt_reg[0]_i_1_n_7 ;
  wire \dvp_frame_cnt_reg[12]_i_1_n_0 ;
  wire \dvp_frame_cnt_reg[12]_i_1_n_1 ;
  wire \dvp_frame_cnt_reg[12]_i_1_n_2 ;
  wire \dvp_frame_cnt_reg[12]_i_1_n_3 ;
  wire \dvp_frame_cnt_reg[12]_i_1_n_4 ;
  wire \dvp_frame_cnt_reg[12]_i_1_n_5 ;
  wire \dvp_frame_cnt_reg[12]_i_1_n_6 ;
  wire \dvp_frame_cnt_reg[12]_i_1_n_7 ;
  wire \dvp_frame_cnt_reg[16]_i_1_n_0 ;
  wire \dvp_frame_cnt_reg[16]_i_1_n_1 ;
  wire \dvp_frame_cnt_reg[16]_i_1_n_2 ;
  wire \dvp_frame_cnt_reg[16]_i_1_n_3 ;
  wire \dvp_frame_cnt_reg[16]_i_1_n_4 ;
  wire \dvp_frame_cnt_reg[16]_i_1_n_5 ;
  wire \dvp_frame_cnt_reg[16]_i_1_n_6 ;
  wire \dvp_frame_cnt_reg[16]_i_1_n_7 ;
  wire \dvp_frame_cnt_reg[20]_i_1_n_0 ;
  wire \dvp_frame_cnt_reg[20]_i_1_n_1 ;
  wire \dvp_frame_cnt_reg[20]_i_1_n_2 ;
  wire \dvp_frame_cnt_reg[20]_i_1_n_3 ;
  wire \dvp_frame_cnt_reg[20]_i_1_n_4 ;
  wire \dvp_frame_cnt_reg[20]_i_1_n_5 ;
  wire \dvp_frame_cnt_reg[20]_i_1_n_6 ;
  wire \dvp_frame_cnt_reg[20]_i_1_n_7 ;
  wire \dvp_frame_cnt_reg[24]_i_1_n_0 ;
  wire \dvp_frame_cnt_reg[24]_i_1_n_1 ;
  wire \dvp_frame_cnt_reg[24]_i_1_n_2 ;
  wire \dvp_frame_cnt_reg[24]_i_1_n_3 ;
  wire \dvp_frame_cnt_reg[24]_i_1_n_4 ;
  wire \dvp_frame_cnt_reg[24]_i_1_n_5 ;
  wire \dvp_frame_cnt_reg[24]_i_1_n_6 ;
  wire \dvp_frame_cnt_reg[24]_i_1_n_7 ;
  wire \dvp_frame_cnt_reg[28]_i_1_n_1 ;
  wire \dvp_frame_cnt_reg[28]_i_1_n_2 ;
  wire \dvp_frame_cnt_reg[28]_i_1_n_3 ;
  wire \dvp_frame_cnt_reg[28]_i_1_n_4 ;
  wire \dvp_frame_cnt_reg[28]_i_1_n_5 ;
  wire \dvp_frame_cnt_reg[28]_i_1_n_6 ;
  wire \dvp_frame_cnt_reg[28]_i_1_n_7 ;
  wire \dvp_frame_cnt_reg[4]_i_1_n_0 ;
  wire \dvp_frame_cnt_reg[4]_i_1_n_1 ;
  wire \dvp_frame_cnt_reg[4]_i_1_n_2 ;
  wire \dvp_frame_cnt_reg[4]_i_1_n_3 ;
  wire \dvp_frame_cnt_reg[4]_i_1_n_4 ;
  wire \dvp_frame_cnt_reg[4]_i_1_n_5 ;
  wire \dvp_frame_cnt_reg[4]_i_1_n_6 ;
  wire \dvp_frame_cnt_reg[4]_i_1_n_7 ;
  wire \dvp_frame_cnt_reg[8]_i_1_n_0 ;
  wire \dvp_frame_cnt_reg[8]_i_1_n_1 ;
  wire \dvp_frame_cnt_reg[8]_i_1_n_2 ;
  wire \dvp_frame_cnt_reg[8]_i_1_n_3 ;
  wire \dvp_frame_cnt_reg[8]_i_1_n_4 ;
  wire \dvp_frame_cnt_reg[8]_i_1_n_5 ;
  wire \dvp_frame_cnt_reg[8]_i_1_n_6 ;
  wire \dvp_frame_cnt_reg[8]_i_1_n_7 ;
  wire [15:0]dvp_height;
  wire [15:0]dvp_width;
  wire dvp_width0;
  wire int_frame_done0;
  wire int_frame_done_i_1_n_0;
  wire int_frame_done_reg_n_0;
  wire int_mask_frame_done_i_1_n_0;
  wire int_mask_frame_done_reg_n_0;
  wire irq;
  wire \line_cnt[0]_i_1__0_n_0 ;
  wire \line_cnt[0]_i_3__0_n_0 ;
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
  wire module_reset;
  wire module_reset_i_1_n_0;
  wire out_href;
  wire [7:0]out_raw;
  wire out_vsync;
  wire [2:0]p_0_in_0;
  wire \pix_cnt[0]_i_2__0_n_0 ;
  wire \pix_cnt[0]_i_3__0_n_0 ;
  wire \pix_cnt[0]_i_4__0_n_0 ;
  wire \pix_cnt[0]_i_5__0_n_0 ;
  wire \pix_cnt[0]_i_6_n_0 ;
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
  wire \pix_cnt_reg[0]_i_1_n_0 ;
  wire \pix_cnt_reg[0]_i_1_n_1 ;
  wire \pix_cnt_reg[0]_i_1_n_2 ;
  wire \pix_cnt_reg[0]_i_1_n_3 ;
  wire \pix_cnt_reg[0]_i_1_n_4 ;
  wire \pix_cnt_reg[0]_i_1_n_5 ;
  wire \pix_cnt_reg[0]_i_1_n_6 ;
  wire \pix_cnt_reg[0]_i_1_n_7 ;
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
  wire prev_vsync;
  wire prev_vsync_onclk;
  wire [0:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [0:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;
  wire [3:3]\NLW_dvp_frame_cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_line_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pix_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in_0[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in_0[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in_0[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(dvp_frame_cnt_reg[0]),
        .I1(dvp_height[0]),
        .I2(sel0[1]),
        .I3(dvp_width[0]),
        .I4(sel0[0]),
        .I5(module_reset),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[0]_i_3 
       (.I0(int_mask_frame_done_reg_n_0),
        .I1(sel0[1]),
        .I2(int_frame_done_reg_n_0),
        .I3(sel0[0]),
        .I4(colorbar_en_reg_n_0),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[10]_i_1 
       (.I0(dvp_width[10]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[10]),
        .I4(dvp_frame_cnt_reg[10]),
        .I5(sel0[2]),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[11]_i_1 
       (.I0(dvp_width[11]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[11]),
        .I4(dvp_frame_cnt_reg[11]),
        .I5(sel0[2]),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[12]_i_1 
       (.I0(dvp_width[12]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[12]),
        .I4(dvp_frame_cnt_reg[12]),
        .I5(sel0[2]),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[13]_i_1 
       (.I0(dvp_width[13]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[13]),
        .I4(dvp_frame_cnt_reg[13]),
        .I5(sel0[2]),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[14]_i_1 
       (.I0(dvp_width[14]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[14]),
        .I4(dvp_frame_cnt_reg[14]),
        .I5(sel0[2]),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[15]_i_1 
       (.I0(dvp_width[15]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[15]),
        .I4(dvp_frame_cnt_reg[15]),
        .I5(sel0[2]),
        .O(\axi_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[16]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[16]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[17]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[17]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[18]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[18]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[19]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[19]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[1]_i_1 
       (.I0(dvp_width[1]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[1]),
        .I4(dvp_frame_cnt_reg[1]),
        .I5(sel0[2]),
        .O(\axi_rdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[20]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[20]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[21]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[21]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[22]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[22]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[23]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[23]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[24]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[24]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[25]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[25]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[26]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[26]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[27]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[27]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[28]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[28]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[29]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[29]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[2]_i_1 
       (.I0(dvp_width[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[2]),
        .I4(dvp_frame_cnt_reg[2]),
        .I5(sel0[2]),
        .O(\axi_rdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[30]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[30]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[31]_i_1 
       (.I0(sel0[0]),
        .I1(dvp_frame_cnt_reg[31]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[3]_i_1 
       (.I0(dvp_width[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[3]),
        .I4(dvp_frame_cnt_reg[3]),
        .I5(sel0[2]),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[4]_i_1 
       (.I0(dvp_width[4]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[4]),
        .I4(dvp_frame_cnt_reg[4]),
        .I5(sel0[2]),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[5]_i_1 
       (.I0(dvp_width[5]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[5]),
        .I4(dvp_frame_cnt_reg[5]),
        .I5(sel0[2]),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[6]_i_1 
       (.I0(dvp_width[6]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[6]),
        .I4(dvp_frame_cnt_reg[6]),
        .I5(sel0[2]),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[7]_i_1 
       (.I0(dvp_width[7]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[7]),
        .I4(dvp_frame_cnt_reg[7]),
        .I5(sel0[2]),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[8]_i_1 
       (.I0(dvp_width[8]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[8]),
        .I4(dvp_frame_cnt_reg[8]),
        .I5(sel0[2]),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \axi_rdata[9]_i_1 
       (.I0(dvp_width[9]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(dvp_height[9]),
        .I4(dvp_frame_cnt_reg[9]),
        .I5(sel0[2]),
        .O(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[31]_i_1_n_0 ),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    colorbar_en_i_1
       (.I0(s00_axi_wdata),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(slv_reg_wren__2),
        .I5(colorbar_en_reg_n_0),
        .O(colorbar_en_i_1_n_0));
  FDRE colorbar_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(colorbar_en_i_1_n_0),
        .Q(colorbar_en_reg_n_0),
        .R(axi_awready_i_1_n_0));
  base_xil_camif_0_0_dvp_raw_timing_colorbar dvp_colorbar_timing_generator
       (.D({dvp_colorbar_timing_generator_n_2,dvp_colorbar_timing_generator_n_3,dvp_colorbar_timing_generator_n_4,dvp_colorbar_timing_generator_n_5,dvp_colorbar_timing_generator_n_6,dvp_colorbar_timing_generator_n_7,dvp_colorbar_timing_generator_n_8,dvp_colorbar_timing_generator_n_9}),
        .cam_data(cam_data),
        .cam_href(cam_href),
        .cam_vsync(cam_vsync),
        .cam_xclk(cam_xclk),
        .dvp_href_reg_0(dvp_colorbar_timing_generator_n_1),
        .dvp_vsync_reg_0(dvp_colorbar_timing_generator_n_0),
        .module_reset(module_reset),
        .out_vsync_reg(colorbar_en_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \dvp_frame_cnt[0]_i_2 
       (.I0(dvp_frame_cnt_reg[0]),
        .O(\dvp_frame_cnt[0]_i_2_n_0 ));
  FDCE \dvp_frame_cnt_reg[0] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[0]_i_1_n_7 ),
        .Q(dvp_frame_cnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dvp_frame_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\dvp_frame_cnt_reg[0]_i_1_n_0 ,\dvp_frame_cnt_reg[0]_i_1_n_1 ,\dvp_frame_cnt_reg[0]_i_1_n_2 ,\dvp_frame_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\dvp_frame_cnt_reg[0]_i_1_n_4 ,\dvp_frame_cnt_reg[0]_i_1_n_5 ,\dvp_frame_cnt_reg[0]_i_1_n_6 ,\dvp_frame_cnt_reg[0]_i_1_n_7 }),
        .S({dvp_frame_cnt_reg[3:1],\dvp_frame_cnt[0]_i_2_n_0 }));
  FDCE \dvp_frame_cnt_reg[10] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[8]_i_1_n_5 ),
        .Q(dvp_frame_cnt_reg[10]));
  FDCE \dvp_frame_cnt_reg[11] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[8]_i_1_n_4 ),
        .Q(dvp_frame_cnt_reg[11]));
  FDCE \dvp_frame_cnt_reg[12] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[12]_i_1_n_7 ),
        .Q(dvp_frame_cnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dvp_frame_cnt_reg[12]_i_1 
       (.CI(\dvp_frame_cnt_reg[8]_i_1_n_0 ),
        .CO({\dvp_frame_cnt_reg[12]_i_1_n_0 ,\dvp_frame_cnt_reg[12]_i_1_n_1 ,\dvp_frame_cnt_reg[12]_i_1_n_2 ,\dvp_frame_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dvp_frame_cnt_reg[12]_i_1_n_4 ,\dvp_frame_cnt_reg[12]_i_1_n_5 ,\dvp_frame_cnt_reg[12]_i_1_n_6 ,\dvp_frame_cnt_reg[12]_i_1_n_7 }),
        .S(dvp_frame_cnt_reg[15:12]));
  FDCE \dvp_frame_cnt_reg[13] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[12]_i_1_n_6 ),
        .Q(dvp_frame_cnt_reg[13]));
  FDCE \dvp_frame_cnt_reg[14] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[12]_i_1_n_5 ),
        .Q(dvp_frame_cnt_reg[14]));
  FDCE \dvp_frame_cnt_reg[15] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[12]_i_1_n_4 ),
        .Q(dvp_frame_cnt_reg[15]));
  FDCE \dvp_frame_cnt_reg[16] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[16]_i_1_n_7 ),
        .Q(dvp_frame_cnt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dvp_frame_cnt_reg[16]_i_1 
       (.CI(\dvp_frame_cnt_reg[12]_i_1_n_0 ),
        .CO({\dvp_frame_cnt_reg[16]_i_1_n_0 ,\dvp_frame_cnt_reg[16]_i_1_n_1 ,\dvp_frame_cnt_reg[16]_i_1_n_2 ,\dvp_frame_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dvp_frame_cnt_reg[16]_i_1_n_4 ,\dvp_frame_cnt_reg[16]_i_1_n_5 ,\dvp_frame_cnt_reg[16]_i_1_n_6 ,\dvp_frame_cnt_reg[16]_i_1_n_7 }),
        .S(dvp_frame_cnt_reg[19:16]));
  FDCE \dvp_frame_cnt_reg[17] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[16]_i_1_n_6 ),
        .Q(dvp_frame_cnt_reg[17]));
  FDCE \dvp_frame_cnt_reg[18] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[16]_i_1_n_5 ),
        .Q(dvp_frame_cnt_reg[18]));
  FDCE \dvp_frame_cnt_reg[19] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[16]_i_1_n_4 ),
        .Q(dvp_frame_cnt_reg[19]));
  FDCE \dvp_frame_cnt_reg[1] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[0]_i_1_n_6 ),
        .Q(dvp_frame_cnt_reg[1]));
  FDCE \dvp_frame_cnt_reg[20] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[20]_i_1_n_7 ),
        .Q(dvp_frame_cnt_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dvp_frame_cnt_reg[20]_i_1 
       (.CI(\dvp_frame_cnt_reg[16]_i_1_n_0 ),
        .CO({\dvp_frame_cnt_reg[20]_i_1_n_0 ,\dvp_frame_cnt_reg[20]_i_1_n_1 ,\dvp_frame_cnt_reg[20]_i_1_n_2 ,\dvp_frame_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dvp_frame_cnt_reg[20]_i_1_n_4 ,\dvp_frame_cnt_reg[20]_i_1_n_5 ,\dvp_frame_cnt_reg[20]_i_1_n_6 ,\dvp_frame_cnt_reg[20]_i_1_n_7 }),
        .S(dvp_frame_cnt_reg[23:20]));
  FDCE \dvp_frame_cnt_reg[21] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[20]_i_1_n_6 ),
        .Q(dvp_frame_cnt_reg[21]));
  FDCE \dvp_frame_cnt_reg[22] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[20]_i_1_n_5 ),
        .Q(dvp_frame_cnt_reg[22]));
  FDCE \dvp_frame_cnt_reg[23] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[20]_i_1_n_4 ),
        .Q(dvp_frame_cnt_reg[23]));
  FDCE \dvp_frame_cnt_reg[24] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[24]_i_1_n_7 ),
        .Q(dvp_frame_cnt_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dvp_frame_cnt_reg[24]_i_1 
       (.CI(\dvp_frame_cnt_reg[20]_i_1_n_0 ),
        .CO({\dvp_frame_cnt_reg[24]_i_1_n_0 ,\dvp_frame_cnt_reg[24]_i_1_n_1 ,\dvp_frame_cnt_reg[24]_i_1_n_2 ,\dvp_frame_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dvp_frame_cnt_reg[24]_i_1_n_4 ,\dvp_frame_cnt_reg[24]_i_1_n_5 ,\dvp_frame_cnt_reg[24]_i_1_n_6 ,\dvp_frame_cnt_reg[24]_i_1_n_7 }),
        .S(dvp_frame_cnt_reg[27:24]));
  FDCE \dvp_frame_cnt_reg[25] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[24]_i_1_n_6 ),
        .Q(dvp_frame_cnt_reg[25]));
  FDCE \dvp_frame_cnt_reg[26] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[24]_i_1_n_5 ),
        .Q(dvp_frame_cnt_reg[26]));
  FDCE \dvp_frame_cnt_reg[27] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[24]_i_1_n_4 ),
        .Q(dvp_frame_cnt_reg[27]));
  FDCE \dvp_frame_cnt_reg[28] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[28]_i_1_n_7 ),
        .Q(dvp_frame_cnt_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dvp_frame_cnt_reg[28]_i_1 
       (.CI(\dvp_frame_cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_dvp_frame_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\dvp_frame_cnt_reg[28]_i_1_n_1 ,\dvp_frame_cnt_reg[28]_i_1_n_2 ,\dvp_frame_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dvp_frame_cnt_reg[28]_i_1_n_4 ,\dvp_frame_cnt_reg[28]_i_1_n_5 ,\dvp_frame_cnt_reg[28]_i_1_n_6 ,\dvp_frame_cnt_reg[28]_i_1_n_7 }),
        .S(dvp_frame_cnt_reg[31:28]));
  FDCE \dvp_frame_cnt_reg[29] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[28]_i_1_n_6 ),
        .Q(dvp_frame_cnt_reg[29]));
  FDCE \dvp_frame_cnt_reg[2] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[0]_i_1_n_5 ),
        .Q(dvp_frame_cnt_reg[2]));
  FDCE \dvp_frame_cnt_reg[30] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[28]_i_1_n_5 ),
        .Q(dvp_frame_cnt_reg[30]));
  FDCE \dvp_frame_cnt_reg[31] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[28]_i_1_n_4 ),
        .Q(dvp_frame_cnt_reg[31]));
  FDCE \dvp_frame_cnt_reg[3] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[0]_i_1_n_4 ),
        .Q(dvp_frame_cnt_reg[3]));
  FDCE \dvp_frame_cnt_reg[4] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[4]_i_1_n_7 ),
        .Q(dvp_frame_cnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dvp_frame_cnt_reg[4]_i_1 
       (.CI(\dvp_frame_cnt_reg[0]_i_1_n_0 ),
        .CO({\dvp_frame_cnt_reg[4]_i_1_n_0 ,\dvp_frame_cnt_reg[4]_i_1_n_1 ,\dvp_frame_cnt_reg[4]_i_1_n_2 ,\dvp_frame_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dvp_frame_cnt_reg[4]_i_1_n_4 ,\dvp_frame_cnt_reg[4]_i_1_n_5 ,\dvp_frame_cnt_reg[4]_i_1_n_6 ,\dvp_frame_cnt_reg[4]_i_1_n_7 }),
        .S(dvp_frame_cnt_reg[7:4]));
  FDCE \dvp_frame_cnt_reg[5] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[4]_i_1_n_6 ),
        .Q(dvp_frame_cnt_reg[5]));
  FDCE \dvp_frame_cnt_reg[6] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[4]_i_1_n_5 ),
        .Q(dvp_frame_cnt_reg[6]));
  FDCE \dvp_frame_cnt_reg[7] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[4]_i_1_n_4 ),
        .Q(dvp_frame_cnt_reg[7]));
  FDCE \dvp_frame_cnt_reg[8] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[8]_i_1_n_7 ),
        .Q(dvp_frame_cnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dvp_frame_cnt_reg[8]_i_1 
       (.CI(\dvp_frame_cnt_reg[4]_i_1_n_0 ),
        .CO({\dvp_frame_cnt_reg[8]_i_1_n_0 ,\dvp_frame_cnt_reg[8]_i_1_n_1 ,\dvp_frame_cnt_reg[8]_i_1_n_2 ,\dvp_frame_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dvp_frame_cnt_reg[8]_i_1_n_4 ,\dvp_frame_cnt_reg[8]_i_1_n_5 ,\dvp_frame_cnt_reg[8]_i_1_n_6 ,\dvp_frame_cnt_reg[8]_i_1_n_7 }),
        .S(dvp_frame_cnt_reg[11:8]));
  FDCE \dvp_frame_cnt_reg[9] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(\dvp_frame_cnt_reg[8]_i_1_n_6 ),
        .Q(dvp_frame_cnt_reg[9]));
  FDCE \dvp_height_reg[0] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[0]),
        .Q(dvp_height[0]));
  FDCE \dvp_height_reg[10] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[10]),
        .Q(dvp_height[10]));
  FDCE \dvp_height_reg[11] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[11]),
        .Q(dvp_height[11]));
  FDCE \dvp_height_reg[12] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[12]),
        .Q(dvp_height[12]));
  FDCE \dvp_height_reg[13] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[13]),
        .Q(dvp_height[13]));
  FDCE \dvp_height_reg[14] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[14]),
        .Q(dvp_height[14]));
  FDCE \dvp_height_reg[15] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[15]),
        .Q(dvp_height[15]));
  FDCE \dvp_height_reg[1] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[1]),
        .Q(dvp_height[1]));
  FDCE \dvp_height_reg[2] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[2]),
        .Q(dvp_height[2]));
  FDCE \dvp_height_reg[3] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[3]),
        .Q(dvp_height[3]));
  FDCE \dvp_height_reg[4] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[4]),
        .Q(dvp_height[4]));
  FDCE \dvp_height_reg[5] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[5]),
        .Q(dvp_height[5]));
  FDCE \dvp_height_reg[6] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[6]),
        .Q(dvp_height[6]));
  FDCE \dvp_height_reg[7] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[7]),
        .Q(dvp_height[7]));
  FDCE \dvp_height_reg[8] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[8]),
        .Q(dvp_height[8]));
  FDCE \dvp_height_reg[9] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(line_cnt_reg[9]),
        .Q(dvp_height[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \dvp_width[15]_i_1 
       (.I0(out_vsync),
        .I1(prev_vsync),
        .O(dvp_width0));
  FDCE \dvp_width_reg[0] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[0]),
        .Q(dvp_width[0]));
  FDCE \dvp_width_reg[10] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[10]),
        .Q(dvp_width[10]));
  FDCE \dvp_width_reg[11] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[11]),
        .Q(dvp_width[11]));
  FDCE \dvp_width_reg[12] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[12]),
        .Q(dvp_width[12]));
  FDCE \dvp_width_reg[13] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[13]),
        .Q(dvp_width[13]));
  FDCE \dvp_width_reg[14] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[14]),
        .Q(dvp_width[14]));
  FDCE \dvp_width_reg[15] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[15]),
        .Q(dvp_width[15]));
  FDCE \dvp_width_reg[1] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[1]),
        .Q(dvp_width[1]));
  FDCE \dvp_width_reg[2] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[2]),
        .Q(dvp_width[2]));
  FDCE \dvp_width_reg[3] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[3]),
        .Q(dvp_width[3]));
  FDCE \dvp_width_reg[4] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[4]),
        .Q(dvp_width[4]));
  FDCE \dvp_width_reg[5] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[5]),
        .Q(dvp_width[5]));
  FDCE \dvp_width_reg[6] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[6]),
        .Q(dvp_width[6]));
  FDCE \dvp_width_reg[7] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[7]),
        .Q(dvp_width[7]));
  FDCE \dvp_width_reg[8] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[8]),
        .Q(dvp_width[8]));
  FDCE \dvp_width_reg[9] 
       (.C(CLK),
        .CE(dvp_width0),
        .CLR(module_reset),
        .D(pix_cnt_reg[9]),
        .Q(dvp_width[9]));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFF0000)) 
    int_frame_done_i_1
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(int_frame_done0),
        .I5(int_frame_done_reg_n_0),
        .O(int_frame_done_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    int_frame_done_i_2
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT2 #(
    .INIT(4'h2)) 
    int_frame_done_i_3
       (.I0(out_vsync),
        .I1(prev_vsync_onclk),
        .O(int_frame_done0));
  FDRE int_frame_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_frame_done_i_1_n_0),
        .Q(int_frame_done_reg_n_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    int_mask_frame_done_i_1
       (.I0(s00_axi_wdata),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[0]),
        .I4(slv_reg_wren__2),
        .I5(int_mask_frame_done_reg_n_0),
        .O(int_mask_frame_done_i_1_n_0));
  FDSE int_mask_frame_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_mask_frame_done_i_1_n_0),
        .Q(int_mask_frame_done_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    irq_INST_0
       (.I0(int_frame_done_reg_n_0),
        .I1(int_mask_frame_done_reg_n_0),
        .O(irq));
  LUT4 #(
    .INIT(16'h4F44)) 
    \line_cnt[0]_i_1__0 
       (.I0(out_vsync),
        .I1(prev_vsync),
        .I2(out_href),
        .I3(prev_href),
        .O(\line_cnt[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[0]_i_3__0 
       (.I0(line_cnt_reg[0]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[0]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[0]_i_4 
       (.I0(line_cnt_reg[3]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[0]_i_5 
       (.I0(line_cnt_reg[2]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[0]_i_6 
       (.I0(line_cnt_reg[1]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \line_cnt[0]_i_7 
       (.I0(line_cnt_reg[0]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[12]_i_2 
       (.I0(line_cnt_reg[15]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[12]_i_3 
       (.I0(line_cnt_reg[14]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[12]_i_4 
       (.I0(line_cnt_reg[13]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[12]_i_5 
       (.I0(line_cnt_reg[12]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[4]_i_2 
       (.I0(line_cnt_reg[7]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[4]_i_3 
       (.I0(line_cnt_reg[6]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[4]_i_4 
       (.I0(line_cnt_reg[5]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[4]_i_5 
       (.I0(line_cnt_reg[4]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[8]_i_2 
       (.I0(line_cnt_reg[11]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[8]_i_3 
       (.I0(line_cnt_reg[10]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[8]_i_4 
       (.I0(line_cnt_reg[9]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \line_cnt[8]_i_5 
       (.I0(line_cnt_reg[8]),
        .I1(out_vsync),
        .I2(prev_vsync),
        .O(\line_cnt[8]_i_5_n_0 ));
  FDCE \line_cnt_reg[0] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[0]_i_2_n_7 ),
        .Q(line_cnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \line_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\line_cnt_reg[0]_i_2_n_0 ,\line_cnt_reg[0]_i_2_n_1 ,\line_cnt_reg[0]_i_2_n_2 ,\line_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_cnt[0]_i_3__0_n_0 }),
        .O({\line_cnt_reg[0]_i_2_n_4 ,\line_cnt_reg[0]_i_2_n_5 ,\line_cnt_reg[0]_i_2_n_6 ,\line_cnt_reg[0]_i_2_n_7 }),
        .S({\line_cnt[0]_i_4_n_0 ,\line_cnt[0]_i_5_n_0 ,\line_cnt[0]_i_6_n_0 ,\line_cnt[0]_i_7_n_0 }));
  FDCE \line_cnt_reg[10] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[8]_i_1_n_5 ),
        .Q(line_cnt_reg[10]));
  FDCE \line_cnt_reg[11] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[8]_i_1_n_4 ),
        .Q(line_cnt_reg[11]));
  FDCE \line_cnt_reg[12] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[12]_i_1_n_7 ),
        .Q(line_cnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \line_cnt_reg[12]_i_1 
       (.CI(\line_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_line_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\line_cnt_reg[12]_i_1_n_1 ,\line_cnt_reg[12]_i_1_n_2 ,\line_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_cnt_reg[12]_i_1_n_4 ,\line_cnt_reg[12]_i_1_n_5 ,\line_cnt_reg[12]_i_1_n_6 ,\line_cnt_reg[12]_i_1_n_7 }),
        .S({\line_cnt[12]_i_2_n_0 ,\line_cnt[12]_i_3_n_0 ,\line_cnt[12]_i_4_n_0 ,\line_cnt[12]_i_5_n_0 }));
  FDCE \line_cnt_reg[13] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[12]_i_1_n_6 ),
        .Q(line_cnt_reg[13]));
  FDCE \line_cnt_reg[14] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[12]_i_1_n_5 ),
        .Q(line_cnt_reg[14]));
  FDCE \line_cnt_reg[15] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[12]_i_1_n_4 ),
        .Q(line_cnt_reg[15]));
  FDCE \line_cnt_reg[1] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[0]_i_2_n_6 ),
        .Q(line_cnt_reg[1]));
  FDCE \line_cnt_reg[2] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[0]_i_2_n_5 ),
        .Q(line_cnt_reg[2]));
  FDCE \line_cnt_reg[3] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[0]_i_2_n_4 ),
        .Q(line_cnt_reg[3]));
  FDCE \line_cnt_reg[4] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[4]_i_1_n_7 ),
        .Q(line_cnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \line_cnt_reg[4]_i_1 
       (.CI(\line_cnt_reg[0]_i_2_n_0 ),
        .CO({\line_cnt_reg[4]_i_1_n_0 ,\line_cnt_reg[4]_i_1_n_1 ,\line_cnt_reg[4]_i_1_n_2 ,\line_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_cnt_reg[4]_i_1_n_4 ,\line_cnt_reg[4]_i_1_n_5 ,\line_cnt_reg[4]_i_1_n_6 ,\line_cnt_reg[4]_i_1_n_7 }),
        .S({\line_cnt[4]_i_2_n_0 ,\line_cnt[4]_i_3_n_0 ,\line_cnt[4]_i_4_n_0 ,\line_cnt[4]_i_5_n_0 }));
  FDCE \line_cnt_reg[5] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[4]_i_1_n_6 ),
        .Q(line_cnt_reg[5]));
  FDCE \line_cnt_reg[6] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[4]_i_1_n_5 ),
        .Q(line_cnt_reg[6]));
  FDCE \line_cnt_reg[7] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[4]_i_1_n_4 ),
        .Q(line_cnt_reg[7]));
  FDCE \line_cnt_reg[8] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[8]_i_1_n_7 ),
        .Q(line_cnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \line_cnt_reg[8]_i_1 
       (.CI(\line_cnt_reg[4]_i_1_n_0 ),
        .CO({\line_cnt_reg[8]_i_1_n_0 ,\line_cnt_reg[8]_i_1_n_1 ,\line_cnt_reg[8]_i_1_n_2 ,\line_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_cnt_reg[8]_i_1_n_4 ,\line_cnt_reg[8]_i_1_n_5 ,\line_cnt_reg[8]_i_1_n_6 ,\line_cnt_reg[8]_i_1_n_7 }),
        .S({\line_cnt[8]_i_2_n_0 ,\line_cnt[8]_i_3_n_0 ,\line_cnt[8]_i_4_n_0 ,\line_cnt[8]_i_5_n_0 }));
  FDCE \line_cnt_reg[9] 
       (.C(CLK),
        .CE(\line_cnt[0]_i_1__0_n_0 ),
        .CLR(module_reset),
        .D(\line_cnt_reg[8]_i_1_n_6 ),
        .Q(line_cnt_reg[9]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    module_reset_i_1
       (.I0(s00_axi_wdata),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(slv_reg_wren__2),
        .I5(module_reset),
        .O(module_reset_i_1_n_0));
  FDSE module_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(module_reset_i_1_n_0),
        .Q(module_reset),
        .S(axi_awready_i_1_n_0));
  FDCE out_href_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_colorbar_timing_generator_n_1),
        .Q(out_href));
  LUT4 #(
    .INIT(16'h00E2)) 
    out_pclk_INST_0
       (.I0(cam_pclk),
        .I1(colorbar_en_reg_n_0),
        .I2(cam_xclk),
        .I3(module_reset),
        .O(CLK));
  FDCE \out_raw_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_colorbar_timing_generator_n_9),
        .Q(out_raw[0]));
  FDCE \out_raw_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_colorbar_timing_generator_n_8),
        .Q(out_raw[1]));
  FDCE \out_raw_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_colorbar_timing_generator_n_7),
        .Q(out_raw[2]));
  FDCE \out_raw_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_colorbar_timing_generator_n_6),
        .Q(out_raw[3]));
  FDCE \out_raw_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_colorbar_timing_generator_n_5),
        .Q(out_raw[4]));
  FDCE \out_raw_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_colorbar_timing_generator_n_4),
        .Q(out_raw[5]));
  FDCE \out_raw_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_colorbar_timing_generator_n_3),
        .Q(out_raw[6]));
  FDCE \out_raw_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_colorbar_timing_generator_n_2),
        .Q(out_raw[7]));
  FDCE out_vsync_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(module_reset),
        .D(dvp_colorbar_timing_generator_n_0),
        .Q(out_vsync));
  LUT3 #(
    .INIT(8'hF4)) 
    \pix_cnt[0]_i_2__0 
       (.I0(prev_href),
        .I1(out_href),
        .I2(pix_cnt_reg[0]),
        .O(\pix_cnt[0]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[0]_i_3__0 
       (.I0(pix_cnt_reg[3]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[0]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[0]_i_4__0 
       (.I0(pix_cnt_reg[2]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[0]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[0]_i_5__0 
       (.I0(pix_cnt_reg[1]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[0]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h75)) 
    \pix_cnt[0]_i_6 
       (.I0(pix_cnt_reg[0]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[12]_i_2 
       (.I0(pix_cnt_reg[15]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[12]_i_3 
       (.I0(pix_cnt_reg[14]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[12]_i_4 
       (.I0(pix_cnt_reg[13]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[12]_i_5 
       (.I0(pix_cnt_reg[12]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[4]_i_2 
       (.I0(pix_cnt_reg[7]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[4]_i_3 
       (.I0(pix_cnt_reg[6]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[4]_i_4 
       (.I0(pix_cnt_reg[5]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[4]_i_5 
       (.I0(pix_cnt_reg[4]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[8]_i_2 
       (.I0(pix_cnt_reg[11]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[8]_i_3 
       (.I0(pix_cnt_reg[10]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[8]_i_4 
       (.I0(pix_cnt_reg[9]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \pix_cnt[8]_i_5 
       (.I0(pix_cnt_reg[8]),
        .I1(prev_href),
        .I2(out_href),
        .O(\pix_cnt[8]_i_5_n_0 ));
  FDCE \pix_cnt_reg[0] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[0]_i_1_n_7 ),
        .Q(pix_cnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pix_cnt_reg[0]_i_1_n_0 ,\pix_cnt_reg[0]_i_1_n_1 ,\pix_cnt_reg[0]_i_1_n_2 ,\pix_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pix_cnt[0]_i_2__0_n_0 }),
        .O({\pix_cnt_reg[0]_i_1_n_4 ,\pix_cnt_reg[0]_i_1_n_5 ,\pix_cnt_reg[0]_i_1_n_6 ,\pix_cnt_reg[0]_i_1_n_7 }),
        .S({\pix_cnt[0]_i_3__0_n_0 ,\pix_cnt[0]_i_4__0_n_0 ,\pix_cnt[0]_i_5__0_n_0 ,\pix_cnt[0]_i_6_n_0 }));
  FDCE \pix_cnt_reg[10] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[8]_i_1_n_5 ),
        .Q(pix_cnt_reg[10]));
  FDCE \pix_cnt_reg[11] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[8]_i_1_n_4 ),
        .Q(pix_cnt_reg[11]));
  FDCE \pix_cnt_reg[12] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[12]_i_1_n_7 ),
        .Q(pix_cnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_reg[12]_i_1 
       (.CI(\pix_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pix_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\pix_cnt_reg[12]_i_1_n_1 ,\pix_cnt_reg[12]_i_1_n_2 ,\pix_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[12]_i_1_n_4 ,\pix_cnt_reg[12]_i_1_n_5 ,\pix_cnt_reg[12]_i_1_n_6 ,\pix_cnt_reg[12]_i_1_n_7 }),
        .S({\pix_cnt[12]_i_2_n_0 ,\pix_cnt[12]_i_3_n_0 ,\pix_cnt[12]_i_4_n_0 ,\pix_cnt[12]_i_5_n_0 }));
  FDCE \pix_cnt_reg[13] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[12]_i_1_n_6 ),
        .Q(pix_cnt_reg[13]));
  FDCE \pix_cnt_reg[14] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[12]_i_1_n_5 ),
        .Q(pix_cnt_reg[14]));
  FDCE \pix_cnt_reg[15] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[12]_i_1_n_4 ),
        .Q(pix_cnt_reg[15]));
  FDCE \pix_cnt_reg[1] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[0]_i_1_n_6 ),
        .Q(pix_cnt_reg[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[0]_i_1_n_5 ),
        .Q(pix_cnt_reg[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[0]_i_1_n_4 ),
        .Q(pix_cnt_reg[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[4]_i_1_n_7 ),
        .Q(pix_cnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_reg[4]_i_1 
       (.CI(\pix_cnt_reg[0]_i_1_n_0 ),
        .CO({\pix_cnt_reg[4]_i_1_n_0 ,\pix_cnt_reg[4]_i_1_n_1 ,\pix_cnt_reg[4]_i_1_n_2 ,\pix_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[4]_i_1_n_4 ,\pix_cnt_reg[4]_i_1_n_5 ,\pix_cnt_reg[4]_i_1_n_6 ,\pix_cnt_reg[4]_i_1_n_7 }),
        .S({\pix_cnt[4]_i_2_n_0 ,\pix_cnt[4]_i_3_n_0 ,\pix_cnt[4]_i_4_n_0 ,\pix_cnt[4]_i_5_n_0 }));
  FDCE \pix_cnt_reg[5] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[4]_i_1_n_6 ),
        .Q(pix_cnt_reg[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[4]_i_1_n_5 ),
        .Q(pix_cnt_reg[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[4]_i_1_n_4 ),
        .Q(pix_cnt_reg[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[8]_i_1_n_7 ),
        .Q(pix_cnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pix_cnt_reg[8]_i_1 
       (.CI(\pix_cnt_reg[4]_i_1_n_0 ),
        .CO({\pix_cnt_reg[8]_i_1_n_0 ,\pix_cnt_reg[8]_i_1_n_1 ,\pix_cnt_reg[8]_i_1_n_2 ,\pix_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[8]_i_1_n_4 ,\pix_cnt_reg[8]_i_1_n_5 ,\pix_cnt_reg[8]_i_1_n_6 ,\pix_cnt_reg[8]_i_1_n_7 }),
        .S({\pix_cnt[8]_i_2_n_0 ,\pix_cnt[8]_i_3_n_0 ,\pix_cnt[8]_i_4_n_0 ,\pix_cnt[8]_i_5_n_0 }));
  FDCE \pix_cnt_reg[9] 
       (.C(CLK),
        .CE(out_href),
        .CLR(module_reset),
        .D(\pix_cnt_reg[8]_i_1_n_6 ),
        .Q(pix_cnt_reg[9]));
  FDRE prev_href_reg
       (.C(CLK),
        .CE(1'b1),
        .D(out_href),
        .Q(prev_href),
        .R(1'b0));
  FDRE prev_vsync_onclk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_vsync),
        .Q(prev_vsync_onclk),
        .R(1'b0));
  FDRE prev_vsync_reg
       (.C(CLK),
        .CE(1'b1),
        .D(out_vsync),
        .Q(prev_vsync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule
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
