// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat May 28 14:48:10 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Work/fpga/zynq_camera_vdma_lcd/zynq_camera_vdma_lcd.srcs/sources_1/bd/design_1/ip/design_1_v_tc_0_0/design_1_v_tc_0_0_sim_netlist.v
// Design      : design_1_v_tc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_v_tc_0_0,v_tc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "v_tc,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_v_tc_0_0
   (clk,
    clken,
    gen_clken,
    hsync_out,
    hblank_out,
    vsync_out,
    vblank_out,
    active_video_out,
    resetn,
    fsync_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF vtiming_in:vtiming_out, ASSOCIATED_RESET resetn, ASSOCIATED_CLKEN clken, FREQ_HZ 120000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 clken_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME clken_intf, POLARITY ACTIVE_LOW" *) input clken;
  input gen_clken;
  (* x_interface_info = "xilinx.com:interface:video_timing:2.0 vtiming_out HSYNC" *) output hsync_out;
  (* x_interface_info = "xilinx.com:interface:video_timing:2.0 vtiming_out HBLANK" *) output hblank_out;
  (* x_interface_info = "xilinx.com:interface:video_timing:2.0 vtiming_out VSYNC" *) output vsync_out;
  (* x_interface_info = "xilinx.com:interface:video_timing:2.0 vtiming_out VBLANK" *) output vblank_out;
  (* x_interface_info = "xilinx.com:interface:video_timing:2.0 vtiming_out ACTIVE_VIDEO" *) output active_video_out;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output [0:0]fsync_out;

  wire active_video_out;
  wire clk;
  wire clken;
  wire [0:0]fsync_out;
  wire gen_clken;
  wire hblank_out;
  wire hsync_out;
  wire resetn;
  wire vblank_out;
  wire vsync_out;
  wire NLW_U0_active_chroma_out_UNCONNECTED;
  wire NLW_U0_field_id_out_UNCONNECTED;
  wire NLW_U0_irq_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire [31:0]NLW_U0_intc_if_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_CONTROL = "0" *) 
  (* C_DETECT_EN = "0" *) 
  (* C_DET_ACHROMA_EN = "0" *) 
  (* C_DET_AVIDEO_EN = "1" *) 
  (* C_DET_FIELDID_EN = "0" *) 
  (* C_DET_HBLANK_EN = "1" *) 
  (* C_DET_HSYNC_EN = "1" *) 
  (* C_DET_VBLANK_EN = "1" *) 
  (* C_DET_VSYNC_EN = "1" *) 
  (* C_FAMILY = "virtex5" *) 
  (* C_FSYNC_HSTART0 = "0" *) 
  (* C_FSYNC_HSTART1 = "0" *) 
  (* C_FSYNC_HSTART10 = "0" *) 
  (* C_FSYNC_HSTART11 = "0" *) 
  (* C_FSYNC_HSTART12 = "0" *) 
  (* C_FSYNC_HSTART13 = "0" *) 
  (* C_FSYNC_HSTART14 = "0" *) 
  (* C_FSYNC_HSTART15 = "0" *) 
  (* C_FSYNC_HSTART2 = "0" *) 
  (* C_FSYNC_HSTART3 = "0" *) 
  (* C_FSYNC_HSTART4 = "0" *) 
  (* C_FSYNC_HSTART5 = "0" *) 
  (* C_FSYNC_HSTART6 = "0" *) 
  (* C_FSYNC_HSTART7 = "0" *) 
  (* C_FSYNC_HSTART8 = "0" *) 
  (* C_FSYNC_HSTART9 = "0" *) 
  (* C_FSYNC_VSTART0 = "0" *) 
  (* C_FSYNC_VSTART1 = "0" *) 
  (* C_FSYNC_VSTART10 = "0" *) 
  (* C_FSYNC_VSTART11 = "0" *) 
  (* C_FSYNC_VSTART12 = "0" *) 
  (* C_FSYNC_VSTART13 = "0" *) 
  (* C_FSYNC_VSTART14 = "0" *) 
  (* C_FSYNC_VSTART15 = "0" *) 
  (* C_FSYNC_VSTART2 = "0" *) 
  (* C_FSYNC_VSTART3 = "0" *) 
  (* C_FSYNC_VSTART4 = "0" *) 
  (* C_FSYNC_VSTART5 = "0" *) 
  (* C_FSYNC_VSTART6 = "0" *) 
  (* C_FSYNC_VSTART7 = "0" *) 
  (* C_FSYNC_VSTART8 = "0" *) 
  (* C_FSYNC_VSTART9 = "0" *) 
  (* C_GENERATE_EN = "1" *) 
  (* C_GEN_ACHROMA_EN = "0" *) 
  (* C_GEN_ACHROMA_POLARITY = "1" *) 
  (* C_GEN_AUTO_SWITCH = "0" *) 
  (* C_GEN_AVIDEO_EN = "1" *) 
  (* C_GEN_AVIDEO_POLARITY = "1" *) 
  (* C_GEN_CPARITY = "0" *) 
  (* C_GEN_F0_VBLANK_HEND = "2560" *) 
  (* C_GEN_F0_VBLANK_HSTART = "2560" *) 
  (* C_GEN_F0_VFRAME_SIZE = "1940" *) 
  (* C_GEN_F0_VSYNC_HEND = "2560" *) 
  (* C_GEN_F0_VSYNC_HSTART = "2560" *) 
  (* C_GEN_F0_VSYNC_VEND = "1935" *) 
  (* C_GEN_F0_VSYNC_VSTART = "1925" *) 
  (* C_GEN_F1_VBLANK_HEND = "1280" *) 
  (* C_GEN_F1_VBLANK_HSTART = "1280" *) 
  (* C_GEN_F1_VFRAME_SIZE = "750" *) 
  (* C_GEN_F1_VSYNC_HEND = "1280" *) 
  (* C_GEN_F1_VSYNC_HSTART = "1280" *) 
  (* C_GEN_F1_VSYNC_VEND = "729" *) 
  (* C_GEN_F1_VSYNC_VSTART = "724" *) 
  (* C_GEN_FIELDID_EN = "0" *) 
  (* C_GEN_FIELDID_POLARITY = "1" *) 
  (* C_GEN_HACTIVE_SIZE = "2560" *) 
  (* C_GEN_HBLANK_EN = "1" *) 
  (* C_GEN_HBLANK_POLARITY = "1" *) 
  (* C_GEN_HFRAME_SIZE = "2760" *) 
  (* C_GEN_HSYNC_EN = "1" *) 
  (* C_GEN_HSYNC_END = "2710" *) 
  (* C_GEN_HSYNC_POLARITY = "1" *) 
  (* C_GEN_HSYNC_START = "2610" *) 
  (* C_GEN_INTERLACED = "0" *) 
  (* C_GEN_VACTIVE_SIZE = "1920" *) 
  (* C_GEN_VBLANK_EN = "1" *) 
  (* C_GEN_VBLANK_POLARITY = "1" *) 
  (* C_GEN_VIDEO_FORMAT = "2" *) 
  (* C_GEN_VSYNC_EN = "1" *) 
  (* C_GEN_VSYNC_POLARITY = "1" *) 
  (* C_HAS_AXI4_LITE = "0" *) 
  (* C_HAS_INTC_IF = "0" *) 
  (* C_INTERLACE_EN = "0" *) 
  (* C_IRQEN = "0" *) 
  (* C_LINE_DELAY = "0" *) 
  (* C_MAX_LINES = "4096" *) 
  (* C_MAX_PIXELS = "4096" *) 
  (* C_NUM_FSYNCS = "1" *) 
  (* C_PIXEL_DELAY = "0" *) 
  (* C_SYNC_EN = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_CLK_FREQ_HZ = "100000000" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_v_tc_0_0_v_tc U0
       (.active_chroma_in(1'b0),
        .active_chroma_out(NLW_U0_active_chroma_out_UNCONNECTED),
        .active_video_in(1'b0),
        .active_video_out(active_video_out),
        .clk(clk),
        .clken(clken),
        .det_clken(1'b1),
        .field_id_in(1'b0),
        .field_id_out(NLW_U0_field_id_out_UNCONNECTED),
        .fsync_in(1'b0),
        .fsync_out(fsync_out),
        .gen_clken(gen_clken),
        .hblank_in(1'b0),
        .hblank_out(hblank_out),
        .hsync_in(1'b0),
        .hsync_out(hsync_out),
        .intc_if(NLW_U0_intc_if_UNCONNECTED[31:0]),
        .irq(NLW_U0_irq_UNCONNECTED),
        .resetn(resetn),
        .s_axi_aclk(1'b0),
        .s_axi_aclken(1'b1),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(1'b1),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .vblank_in(1'b0),
        .vblank_out(vblank_out),
        .vsync_in(1'b0),
        .vsync_out(vsync_out));
endmodule

(* ORIG_REF_NAME = "tc_generator" *) 
module design_1_v_tc_0_0_tc_generator
   (fsync_out,
    hsync_out,
    hblank_out,
    vsync_out,
    vblank_reg_0,
    active_video_reg_0,
    active_chroma_out,
    reg_update,
    p_1_out,
    \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_0 ,
    gen_active_video_d_reg,
    clk,
    \genr_control_regs[0] ,
    fsync_in,
    \time_control_regs[19] ,
    core_d_out,
    clken,
    gen_clken,
    \core_control_regs[0] ,
    gen_vblank_d,
    gen_active_video_d,
    resetn_out,
    p_0_in0_in,
    D,
    \time_control_regs[21] ,
    \time_control_regs[22] ,
    \time_control_regs[16] ,
    \time_control_regs[25] ,
    \time_control_regs[24] ,
    \time_control_regs[23] );
  output [0:0]fsync_out;
  output hsync_out;
  output hblank_out;
  output vsync_out;
  output vblank_reg_0;
  output active_video_reg_0;
  output active_chroma_out;
  output reg_update;
  output [0:0]p_1_out;
  output \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_0 ;
  output gen_active_video_d_reg;
  input clk;
  input [2:0]\genr_control_regs[0] ;
  input fsync_in;
  input [5:0]\time_control_regs[19] ;
  input core_d_out;
  input clken;
  input gen_clken;
  input [23:0]\core_control_regs[0] ;
  input gen_vblank_d;
  input gen_active_video_d;
  input resetn_out;
  input p_0_in0_in;
  input [11:0]D;
  input [11:0]\time_control_regs[21] ;
  input [23:0]\time_control_regs[22] ;
  input [23:0]\time_control_regs[16] ;
  input [23:0]\time_control_regs[25] ;
  input [23:0]\time_control_regs[24] ;
  input [23:0]\time_control_regs[23] ;

  wire [11:0]D;
  wire active_chroma_i_1_n_0;
  wire active_chroma_out;
  wire active_video0;
  wire active_video_int_i_1_n_0;
  wire active_video_int_reg_n_0;
  wire active_video_reg_0;
  wire all_cfg_i_1_n_0;
  wire all_cfg_reg_n_0;
  wire clk;
  wire clken;
  wire [23:0]\core_control_regs[0] ;
  wire core_d_out;
  wire eqOp0_out;
  wire eqOp10_out;
  wire eqOp11_out;
  wire eqOp12_out;
  wire eqOp13_out;
  wire eqOp14_out;
  wire eqOp1_out;
  wire eqOp2_out;
  wire eqOp3_out;
  wire eqOp4_out;
  wire eqOp5_out;
  wire eqOp6_out;
  wire eqOp7_out;
  wire eqOp8_out;
  wire eqOp9_out;
  wire eqOp_carry_i_1_n_0;
  wire eqOp_carry_i_2_n_0;
  wire eqOp_carry_i_3_n_0;
  wire eqOp_carry_i_4_n_0;
  wire eqOp_carry_n_1;
  wire eqOp_carry_n_2;
  wire eqOp_carry_n_3;
  wire \eqOp_inferred__0/i__carry_n_1 ;
  wire \eqOp_inferred__0/i__carry_n_2 ;
  wire \eqOp_inferred__0/i__carry_n_3 ;
  wire \eqOp_inferred__10/i__carry_n_1 ;
  wire \eqOp_inferred__10/i__carry_n_2 ;
  wire \eqOp_inferred__10/i__carry_n_3 ;
  wire \eqOp_inferred__11/i__carry_n_1 ;
  wire \eqOp_inferred__11/i__carry_n_2 ;
  wire \eqOp_inferred__11/i__carry_n_3 ;
  wire \eqOp_inferred__12/i__carry_n_1 ;
  wire \eqOp_inferred__12/i__carry_n_2 ;
  wire \eqOp_inferred__12/i__carry_n_3 ;
  wire \eqOp_inferred__13/i__carry_n_1 ;
  wire \eqOp_inferred__13/i__carry_n_2 ;
  wire \eqOp_inferred__13/i__carry_n_3 ;
  wire \eqOp_inferred__14/i__carry_n_1 ;
  wire \eqOp_inferred__14/i__carry_n_2 ;
  wire \eqOp_inferred__14/i__carry_n_3 ;
  wire \eqOp_inferred__15/i__carry_n_1 ;
  wire \eqOp_inferred__15/i__carry_n_2 ;
  wire \eqOp_inferred__15/i__carry_n_3 ;
  wire \eqOp_inferred__16/i__carry_n_1 ;
  wire \eqOp_inferred__16/i__carry_n_2 ;
  wire \eqOp_inferred__16/i__carry_n_3 ;
  wire \eqOp_inferred__2/i__carry_n_1 ;
  wire \eqOp_inferred__2/i__carry_n_2 ;
  wire \eqOp_inferred__2/i__carry_n_3 ;
  wire \eqOp_inferred__3/i__carry_n_0 ;
  wire \eqOp_inferred__3/i__carry_n_1 ;
  wire \eqOp_inferred__3/i__carry_n_2 ;
  wire \eqOp_inferred__3/i__carry_n_3 ;
  wire \eqOp_inferred__4/i__carry_n_1 ;
  wire \eqOp_inferred__4/i__carry_n_2 ;
  wire \eqOp_inferred__4/i__carry_n_3 ;
  wire \eqOp_inferred__5/i__carry_n_1 ;
  wire \eqOp_inferred__5/i__carry_n_2 ;
  wire \eqOp_inferred__5/i__carry_n_3 ;
  wire \eqOp_inferred__6/i__carry_n_1 ;
  wire \eqOp_inferred__6/i__carry_n_2 ;
  wire \eqOp_inferred__6/i__carry_n_3 ;
  wire \eqOp_inferred__7/i__carry_n_1 ;
  wire \eqOp_inferred__7/i__carry_n_2 ;
  wire \eqOp_inferred__7/i__carry_n_3 ;
  wire \eqOp_inferred__9/i__carry_n_1 ;
  wire \eqOp_inferred__9/i__carry_n_2 ;
  wire \eqOp_inferred__9/i__carry_n_3 ;
  wire fsync_in;
  wire [0:0]fsync_out;
  wire fsync_out0;
  wire gen_active_video_d;
  wire gen_active_video_d_reg;
  wire gen_ce;
  wire gen_clken;
  wire gen_vblank_d;
  wire \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_0 ;
  wire [2:0]\genr_control_regs[0] ;
  wire \h_count[0]_i_1_n_0 ;
  wire \h_count[0]_i_3_n_0 ;
  wire [11:0]h_count_reg;
  wire \h_count_reg[0]_i_2_n_0 ;
  wire \h_count_reg[0]_i_2_n_1 ;
  wire \h_count_reg[0]_i_2_n_2 ;
  wire \h_count_reg[0]_i_2_n_3 ;
  wire \h_count_reg[0]_i_2_n_4 ;
  wire \h_count_reg[0]_i_2_n_5 ;
  wire \h_count_reg[0]_i_2_n_6 ;
  wire \h_count_reg[0]_i_2_n_7 ;
  wire \h_count_reg[4]_i_1_n_0 ;
  wire \h_count_reg[4]_i_1_n_1 ;
  wire \h_count_reg[4]_i_1_n_2 ;
  wire \h_count_reg[4]_i_1_n_3 ;
  wire \h_count_reg[4]_i_1_n_4 ;
  wire \h_count_reg[4]_i_1_n_5 ;
  wire \h_count_reg[4]_i_1_n_6 ;
  wire \h_count_reg[4]_i_1_n_7 ;
  wire \h_count_reg[8]_i_1_n_1 ;
  wire \h_count_reg[8]_i_1_n_2 ;
  wire \h_count_reg[8]_i_1_n_3 ;
  wire \h_count_reg[8]_i_1_n_4 ;
  wire \h_count_reg[8]_i_1_n_5 ;
  wire \h_count_reg[8]_i_1_n_6 ;
  wire \h_count_reg[8]_i_1_n_7 ;
  wire hblank0;
  wire hblank_int_i_1_n_0;
  wire hblank_int_reg_n_0;
  wire hblank_out;
  wire [11:0]hbp_start;
  wire [11:0]hfp_start;
  wire hsync0;
  wire hsync_int_i_1_n_0;
  wire hsync_int_reg_n_0;
  wire hsync_out;
  wire [11:0]hsync_start;
  wire [11:0]htotal;
  wire \htotal[11]_i_1_n_0 ;
  wire [11:0]htotal_1;
  wire \htotal_1[11]_i_2_n_0 ;
  wire \htotal_1[11]_i_3_n_0 ;
  wire \htotal_1[11]_i_4_n_0 ;
  wire \htotal_1[11]_i_5_n_0 ;
  wire \htotal_1[3]_i_2_n_0 ;
  wire \htotal_1[3]_i_3_n_0 ;
  wire \htotal_1[3]_i_4_n_0 ;
  wire \htotal_1[7]_i_2_n_0 ;
  wire \htotal_1[7]_i_3_n_0 ;
  wire \htotal_1[7]_i_4_n_0 ;
  wire \htotal_1[7]_i_5_n_0 ;
  wire \htotal_1_reg[11]_i_1_n_1 ;
  wire \htotal_1_reg[11]_i_1_n_2 ;
  wire \htotal_1_reg[11]_i_1_n_3 ;
  wire \htotal_1_reg[3]_i_1_n_0 ;
  wire \htotal_1_reg[3]_i_1_n_1 ;
  wire \htotal_1_reg[3]_i_1_n_2 ;
  wire \htotal_1_reg[3]_i_1_n_3 ;
  wire \htotal_1_reg[7]_i_1_n_0 ;
  wire \htotal_1_reg[7]_i_1_n_1 ;
  wire \htotal_1_reg[7]_i_1_n_2 ;
  wire \htotal_1_reg[7]_i_1_n_3 ;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__10_n_0;
  wire i__carry_i_1__11_n_0;
  wire i__carry_i_1__12_n_0;
  wire i__carry_i_1__13_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1__6_n_0;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_1__8_n_0;
  wire i__carry_i_1__9_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__10_n_0;
  wire i__carry_i_2__11_n_0;
  wire i__carry_i_2__12_n_0;
  wire i__carry_i_2__13_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2__6_n_0;
  wire i__carry_i_2__7_n_0;
  wire i__carry_i_2__8_n_0;
  wire i__carry_i_2__9_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__10_n_0;
  wire i__carry_i_3__11_n_0;
  wire i__carry_i_3__12_n_0;
  wire i__carry_i_3__13_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3__6_n_0;
  wire i__carry_i_3__7_n_0;
  wire i__carry_i_3__8_n_0;
  wire i__carry_i_3__9_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__10_n_0;
  wire i__carry_i_4__11_n_0;
  wire i__carry_i_4__12_n_0;
  wire i__carry_i_4__13_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4__5_n_0;
  wire i__carry_i_4__6_n_0;
  wire i__carry_i_4__7_n_0;
  wire i__carry_i_4__8_n_0;
  wire i__carry_i_4__9_n_0;
  wire i__carry_i_4_n_0;
  wire last_line;
  wire last_line_i_1_n_0;
  wire line_end;
  wire line_end_i_1_n_0;
  wire line_end_v;
  wire line_end_v_i_1_n_0;
  wire [11:0]minusOp;
  wire p_0_in0_in;
  wire [0:0]p_1_out;
  wire p_3_in;
  wire \param_cfg_reg_n_0_[4] ;
  wire reg_update;
  wire resetn_out;
  wire sw_enable_d;
  wire sw_enable_d_i_1_n_0;
  wire [23:0]\time_control_regs[16] ;
  wire [5:0]\time_control_regs[19] ;
  wire [11:0]\time_control_regs[21] ;
  wire [23:0]\time_control_regs[22] ;
  wire [23:0]\time_control_regs[23] ;
  wire [23:0]\time_control_regs[24] ;
  wire [23:0]\time_control_regs[25] ;
  wire [11:0]v0active_start_hori;
  wire [11:0]v0bp_start;
  wire [11:0]v0bp_start_hori;
  wire [11:0]v0fp_start;
  wire [11:0]v0fp_start0_in;
  wire \v0fp_start[11]_i_2_n_0 ;
  wire \v0fp_start[11]_i_3_n_0 ;
  wire \v0fp_start[11]_i_4_n_0 ;
  wire \v0fp_start[4]_i_2_n_0 ;
  wire \v0fp_start[4]_i_3_n_0 ;
  wire \v0fp_start[4]_i_4_n_0 ;
  wire \v0fp_start[4]_i_5_n_0 ;
  wire \v0fp_start[8]_i_2_n_0 ;
  wire \v0fp_start[8]_i_3_n_0 ;
  wire \v0fp_start[8]_i_4_n_0 ;
  wire \v0fp_start[8]_i_5_n_0 ;
  wire [11:0]v0fp_start_hori;
  wire \v0fp_start_reg[11]_i_1_n_2 ;
  wire \v0fp_start_reg[11]_i_1_n_3 ;
  wire \v0fp_start_reg[4]_i_1_n_0 ;
  wire \v0fp_start_reg[4]_i_1_n_1 ;
  wire \v0fp_start_reg[4]_i_1_n_2 ;
  wire \v0fp_start_reg[4]_i_1_n_3 ;
  wire \v0fp_start_reg[8]_i_1_n_0 ;
  wire \v0fp_start_reg[8]_i_1_n_1 ;
  wire \v0fp_start_reg[8]_i_1_n_2 ;
  wire \v0fp_start_reg[8]_i_1_n_3 ;
  wire [11:0]v0sync_start;
  wire [11:0]v0sync_start_hori;
  wire [11:0]v0total;
  wire [11:0]v0total0_in;
  wire \v0total[11]_i_2_n_0 ;
  wire \v0total[11]_i_3_n_0 ;
  wire \v0total[11]_i_4_n_0 ;
  wire \v0total[4]_i_2_n_0 ;
  wire \v0total[4]_i_3_n_0 ;
  wire \v0total[4]_i_4_n_0 ;
  wire \v0total[4]_i_5_n_0 ;
  wire \v0total[8]_i_2_n_0 ;
  wire \v0total[8]_i_3_n_0 ;
  wire \v0total[8]_i_4_n_0 ;
  wire \v0total[8]_i_5_n_0 ;
  wire \v0total_reg[11]_i_1_n_2 ;
  wire \v0total_reg[11]_i_1_n_3 ;
  wire \v0total_reg[4]_i_1_n_0 ;
  wire \v0total_reg[4]_i_1_n_1 ;
  wire \v0total_reg[4]_i_1_n_2 ;
  wire \v0total_reg[4]_i_1_n_3 ;
  wire \v0total_reg[8]_i_1_n_0 ;
  wire \v0total_reg[8]_i_1_n_1 ;
  wire \v0total_reg[8]_i_1_n_2 ;
  wire \v0total_reg[8]_i_1_n_3 ;
  wire v_count058_out;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[0]_i_4_n_0 ;
  wire [11:0]v_count_reg;
  wire \v_count_reg[0]_i_3_n_0 ;
  wire \v_count_reg[0]_i_3_n_1 ;
  wire \v_count_reg[0]_i_3_n_2 ;
  wire \v_count_reg[0]_i_3_n_3 ;
  wire \v_count_reg[0]_i_3_n_4 ;
  wire \v_count_reg[0]_i_3_n_5 ;
  wire \v_count_reg[0]_i_3_n_6 ;
  wire \v_count_reg[0]_i_3_n_7 ;
  wire \v_count_reg[4]_i_1_n_0 ;
  wire \v_count_reg[4]_i_1_n_1 ;
  wire \v_count_reg[4]_i_1_n_2 ;
  wire \v_count_reg[4]_i_1_n_3 ;
  wire \v_count_reg[4]_i_1_n_4 ;
  wire \v_count_reg[4]_i_1_n_5 ;
  wire \v_count_reg[4]_i_1_n_6 ;
  wire \v_count_reg[4]_i_1_n_7 ;
  wire \v_count_reg[8]_i_1_n_1 ;
  wire \v_count_reg[8]_i_1_n_2 ;
  wire \v_count_reg[8]_i_1_n_3 ;
  wire \v_count_reg[8]_i_1_n_4 ;
  wire \v_count_reg[8]_i_1_n_5 ;
  wire \v_count_reg[8]_i_1_n_6 ;
  wire \v_count_reg[8]_i_1_n_7 ;
  wire vblank0;
  wire vblank_int_i_1_n_0;
  wire vblank_int_reg_n_0;
  wire vblank_reg_0;
  wire vsync0;
  wire vsync_int_i_1_n_0;
  wire vsync_int_reg_n_0;
  wire vsync_out;
  wire [3:0]NLW_eqOp_carry_O_UNCONNECTED;
  wire [3:0]\NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__10/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__11/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__12/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__13/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__14/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__15/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__16/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__4/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__6/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__7/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__9/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_h_count_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_htotal_1_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_v0fp_start_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_v0fp_start_reg[11]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_v0total_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_v0total_reg[11]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_v_count_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    U_VIDEO_CTRL_i_1
       (.I0(fsync_out),
        .I1(core_d_out),
        .I2(\genr_control_regs[0] [0]),
        .I3(\genr_control_regs[0] [1]),
        .O(reg_update));
  LUT1 #(
    .INIT(2'h1)) 
    active_chroma_i_1
       (.I0(\time_control_regs[19] [5]),
        .O(active_chroma_i_1_n_0));
  FDRE active_chroma_reg
       (.C(clk),
        .CE(gen_ce),
        .D(active_chroma_i_1_n_0),
        .Q(active_chroma_out),
        .R(p_3_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h59)) 
    active_video_i_1
       (.I0(\time_control_regs[19] [4]),
        .I1(hblank_int_reg_n_0),
        .I2(active_video_int_reg_n_0),
        .O(active_video0));
  LUT6 #(
    .INIT(64'hFF7F7F7FAA000000)) 
    active_video_int_i_1
       (.I0(gen_ce),
        .I1(eqOp9_out),
        .I2(eqOp1_out),
        .I3(eqOp4_out),
        .I4(eqOp10_out),
        .I5(active_video_int_reg_n_0),
        .O(active_video_int_i_1_n_0));
  FDSE active_video_int_reg
       (.C(clk),
        .CE(1'b1),
        .D(active_video_int_i_1_n_0),
        .Q(active_video_int_reg_n_0),
        .S(p_3_in));
  FDRE active_video_reg
       (.C(clk),
        .CE(gen_ce),
        .D(active_video0),
        .Q(active_video_reg_0),
        .R(p_3_in));
  LUT6 #(
    .INIT(64'h00000000EEAE2222)) 
    all_cfg_i_1
       (.I0(all_cfg_reg_n_0),
        .I1(gen_ce),
        .I2(\genr_control_regs[0] [2]),
        .I3(fsync_in),
        .I4(\param_cfg_reg_n_0_[4] ),
        .I5(\htotal[11]_i_1_n_0 ),
        .O(all_cfg_i_1_n_0));
  FDRE all_cfg_reg
       (.C(clk),
        .CE(1'b1),
        .D(all_cfg_i_1_n_0),
        .Q(all_cfg_reg_n_0),
        .R(1'b0));
  CARRY4 eqOp_carry
       (.CI(1'b0),
        .CO({eqOp14_out,eqOp_carry_n_1,eqOp_carry_n_2,eqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry_O_UNCONNECTED[3:0]),
        .S({eqOp_carry_i_1_n_0,eqOp_carry_i_2_n_0,eqOp_carry_i_3_n_0,eqOp_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_1
       (.I0(h_count_reg[9]),
        .I1(htotal_1[9]),
        .I2(htotal_1[11]),
        .I3(h_count_reg[11]),
        .I4(htotal_1[10]),
        .I5(h_count_reg[10]),
        .O(eqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_2
       (.I0(h_count_reg[6]),
        .I1(htotal_1[6]),
        .I2(htotal_1[8]),
        .I3(h_count_reg[8]),
        .I4(htotal_1[7]),
        .I5(h_count_reg[7]),
        .O(eqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_3
       (.I0(h_count_reg[3]),
        .I1(htotal_1[3]),
        .I2(htotal_1[5]),
        .I3(h_count_reg[5]),
        .I4(htotal_1[4]),
        .I5(h_count_reg[4]),
        .O(eqOp_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_4
       (.I0(h_count_reg[0]),
        .I1(htotal_1[0]),
        .I2(htotal_1[2]),
        .I3(h_count_reg[2]),
        .I4(htotal_1[1]),
        .I5(h_count_reg[1]),
        .O(eqOp_carry_i_4_n_0));
  CARRY4 \eqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({eqOp13_out,\eqOp_inferred__0/i__carry_n_1 ,\eqOp_inferred__0/i__carry_n_2 ,\eqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \eqOp_inferred__10/i__carry 
       (.CI(1'b0),
        .CO({eqOp6_out,\eqOp_inferred__10/i__carry_n_1 ,\eqOp_inferred__10/i__carry_n_2 ,\eqOp_inferred__10/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__10/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__6_n_0,i__carry_i_2__6_n_0,i__carry_i_3__6_n_0,i__carry_i_4__6_n_0}));
  CARRY4 \eqOp_inferred__11/i__carry 
       (.CI(1'b0),
        .CO({eqOp7_out,\eqOp_inferred__11/i__carry_n_1 ,\eqOp_inferred__11/i__carry_n_2 ,\eqOp_inferred__11/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__11/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__7_n_0,i__carry_i_2__7_n_0,i__carry_i_3__7_n_0,i__carry_i_4__7_n_0}));
  CARRY4 \eqOp_inferred__12/i__carry 
       (.CI(1'b0),
        .CO({eqOp8_out,\eqOp_inferred__12/i__carry_n_1 ,\eqOp_inferred__12/i__carry_n_2 ,\eqOp_inferred__12/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__12/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__8_n_0,i__carry_i_2__8_n_0,i__carry_i_3__8_n_0,i__carry_i_4__8_n_0}));
  CARRY4 \eqOp_inferred__13/i__carry 
       (.CI(1'b0),
        .CO({eqOp2_out,\eqOp_inferred__13/i__carry_n_1 ,\eqOp_inferred__13/i__carry_n_2 ,\eqOp_inferred__13/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__13/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__9_n_0,i__carry_i_2__9_n_0,i__carry_i_3__9_n_0,i__carry_i_4__9_n_0}));
  CARRY4 \eqOp_inferred__14/i__carry 
       (.CI(1'b0),
        .CO({eqOp4_out,\eqOp_inferred__14/i__carry_n_1 ,\eqOp_inferred__14/i__carry_n_2 ,\eqOp_inferred__14/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__14/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__10_n_0,i__carry_i_2__10_n_0,i__carry_i_3__10_n_0,i__carry_i_4__10_n_0}));
  CARRY4 \eqOp_inferred__15/i__carry 
       (.CI(1'b0),
        .CO({eqOp3_out,\eqOp_inferred__15/i__carry_n_1 ,\eqOp_inferred__15/i__carry_n_2 ,\eqOp_inferred__15/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__15/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__11_n_0,i__carry_i_2__11_n_0,i__carry_i_3__11_n_0,i__carry_i_4__11_n_0}));
  CARRY4 \eqOp_inferred__16/i__carry 
       (.CI(1'b0),
        .CO({eqOp1_out,\eqOp_inferred__16/i__carry_n_1 ,\eqOp_inferred__16/i__carry_n_2 ,\eqOp_inferred__16/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__16/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__13_n_0,i__carry_i_2__13_n_0,i__carry_i_3__13_n_0,i__carry_i_4__13_n_0}));
  CARRY4 \eqOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({eqOp0_out,\eqOp_inferred__2/i__carry_n_1 ,\eqOp_inferred__2/i__carry_n_2 ,\eqOp_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \eqOp_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\eqOp_inferred__3/i__carry_n_0 ,\eqOp_inferred__3/i__carry_n_1 ,\eqOp_inferred__3/i__carry_n_2 ,\eqOp_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}));
  CARRY4 \eqOp_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({eqOp12_out,\eqOp_inferred__4/i__carry_n_1 ,\eqOp_inferred__4/i__carry_n_2 ,\eqOp_inferred__4/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__4/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}));
  CARRY4 \eqOp_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({eqOp11_out,\eqOp_inferred__5/i__carry_n_1 ,\eqOp_inferred__5/i__carry_n_2 ,\eqOp_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}));
  CARRY4 \eqOp_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({eqOp9_out,\eqOp_inferred__6/i__carry_n_1 ,\eqOp_inferred__6/i__carry_n_2 ,\eqOp_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__6/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__12_n_0,i__carry_i_2__12_n_0,i__carry_i_3__12_n_0,i__carry_i_4__12_n_0}));
  CARRY4 \eqOp_inferred__7/i__carry 
       (.CI(1'b0),
        .CO({eqOp10_out,\eqOp_inferred__7/i__carry_n_1 ,\eqOp_inferred__7/i__carry_n_2 ,\eqOp_inferred__7/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__7/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__4_n_0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0}));
  CARRY4 \eqOp_inferred__9/i__carry 
       (.CI(1'b0),
        .CO({eqOp5_out,\eqOp_inferred__9/i__carry_n_1 ,\eqOp_inferred__9/i__carry_n_2 ,\eqOp_inferred__9/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__9/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__5_n_0,i__carry_i_2__5_n_0,i__carry_i_3__5_n_0,i__carry_i_4__5_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    \fsync_out[0]_i_1 
       (.I0(\htotal[11]_i_1_n_0 ),
        .I1(all_cfg_reg_n_0),
        .O(p_3_in));
  LUT2 #(
    .INIT(4'h8)) 
    \fsync_out[0]_i_2 
       (.I0(clken),
        .I1(gen_clken),
        .O(gen_ce));
  LUT2 #(
    .INIT(4'h8)) 
    \fsync_out[0]_i_3 
       (.I0(\eqOp_inferred__3/i__carry_n_0 ),
        .I1(eqOp0_out),
        .O(fsync_out0));
  FDRE \fsync_out_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(fsync_out0),
        .Q(fsync_out),
        .R(p_3_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1 
       (.I0(\genr_control_regs[0] [1]),
        .I1(\genr_control_regs[0] [0]),
        .I2(core_d_out),
        .O(\generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8FFF8FFF8FF)) 
    \h_count[0]_i_1 
       (.I0(\genr_control_regs[0] [2]),
        .I1(fsync_in),
        .I2(\htotal[11]_i_1_n_0 ),
        .I3(all_cfg_reg_n_0),
        .I4(gen_ce),
        .I5(line_end),
        .O(\h_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_3 
       (.I0(h_count_reg[0]),
        .O(\h_count[0]_i_3_n_0 ));
  FDRE \h_count_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[0]_i_2_n_7 ),
        .Q(h_count_reg[0]),
        .R(\h_count[0]_i_1_n_0 ));
  CARRY4 \h_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\h_count_reg[0]_i_2_n_0 ,\h_count_reg[0]_i_2_n_1 ,\h_count_reg[0]_i_2_n_2 ,\h_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\h_count_reg[0]_i_2_n_4 ,\h_count_reg[0]_i_2_n_5 ,\h_count_reg[0]_i_2_n_6 ,\h_count_reg[0]_i_2_n_7 }),
        .S({h_count_reg[3:1],\h_count[0]_i_3_n_0 }));
  FDRE \h_count_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[8]_i_1_n_5 ),
        .Q(h_count_reg[10]),
        .R(\h_count[0]_i_1_n_0 ));
  FDRE \h_count_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[8]_i_1_n_4 ),
        .Q(h_count_reg[11]),
        .R(\h_count[0]_i_1_n_0 ));
  FDRE \h_count_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[0]_i_2_n_6 ),
        .Q(h_count_reg[1]),
        .R(\h_count[0]_i_1_n_0 ));
  FDRE \h_count_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[0]_i_2_n_5 ),
        .Q(h_count_reg[2]),
        .R(\h_count[0]_i_1_n_0 ));
  FDRE \h_count_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[0]_i_2_n_4 ),
        .Q(h_count_reg[3]),
        .R(\h_count[0]_i_1_n_0 ));
  FDRE \h_count_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[4]_i_1_n_7 ),
        .Q(h_count_reg[4]),
        .R(\h_count[0]_i_1_n_0 ));
  CARRY4 \h_count_reg[4]_i_1 
       (.CI(\h_count_reg[0]_i_2_n_0 ),
        .CO({\h_count_reg[4]_i_1_n_0 ,\h_count_reg[4]_i_1_n_1 ,\h_count_reg[4]_i_1_n_2 ,\h_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_count_reg[4]_i_1_n_4 ,\h_count_reg[4]_i_1_n_5 ,\h_count_reg[4]_i_1_n_6 ,\h_count_reg[4]_i_1_n_7 }),
        .S(h_count_reg[7:4]));
  FDRE \h_count_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[4]_i_1_n_6 ),
        .Q(h_count_reg[5]),
        .R(\h_count[0]_i_1_n_0 ));
  FDRE \h_count_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[4]_i_1_n_5 ),
        .Q(h_count_reg[6]),
        .R(\h_count[0]_i_1_n_0 ));
  FDRE \h_count_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[4]_i_1_n_4 ),
        .Q(h_count_reg[7]),
        .R(\h_count[0]_i_1_n_0 ));
  FDRE \h_count_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[8]_i_1_n_7 ),
        .Q(h_count_reg[8]),
        .R(\h_count[0]_i_1_n_0 ));
  CARRY4 \h_count_reg[8]_i_1 
       (.CI(\h_count_reg[4]_i_1_n_0 ),
        .CO({\NLW_h_count_reg[8]_i_1_CO_UNCONNECTED [3],\h_count_reg[8]_i_1_n_1 ,\h_count_reg[8]_i_1_n_2 ,\h_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\h_count_reg[8]_i_1_n_4 ,\h_count_reg[8]_i_1_n_5 ,\h_count_reg[8]_i_1_n_6 ,\h_count_reg[8]_i_1_n_7 }),
        .S(h_count_reg[11:8]));
  FDRE \h_count_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(\h_count_reg[8]_i_1_n_6 ),
        .Q(h_count_reg[9]),
        .R(\h_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    hblank_i_1
       (.I0(\time_control_regs[19] [1]),
        .I1(hblank_int_reg_n_0),
        .O(hblank0));
  LUT4 #(
    .INIT(16'hDFC0)) 
    hblank_int_i_1
       (.I0(eqOp10_out),
        .I1(eqOp9_out),
        .I2(gen_ce),
        .I3(hblank_int_reg_n_0),
        .O(hblank_int_i_1_n_0));
  FDRE hblank_int_reg
       (.C(clk),
        .CE(1'b1),
        .D(hblank_int_i_1_n_0),
        .Q(hblank_int_reg_n_0),
        .R(p_3_in));
  FDRE hblank_reg
       (.C(clk),
        .CE(gen_ce),
        .D(hblank0),
        .Q(hblank_out),
        .R(p_3_in));
  FDRE \hbp_start_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [12]),
        .Q(hbp_start[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [22]),
        .Q(hbp_start[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [23]),
        .Q(hbp_start[11]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [13]),
        .Q(hbp_start[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [14]),
        .Q(hbp_start[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [15]),
        .Q(hbp_start[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [16]),
        .Q(hbp_start[4]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [17]),
        .Q(hbp_start[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [18]),
        .Q(hbp_start[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [19]),
        .Q(hbp_start[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [20]),
        .Q(hbp_start[8]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hbp_start_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [21]),
        .Q(hbp_start[9]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [0]),
        .Q(hfp_start[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [10]),
        .Q(hfp_start[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [11]),
        .Q(hfp_start[11]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [1]),
        .Q(hfp_start[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [2]),
        .Q(hfp_start[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [3]),
        .Q(hfp_start[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [4]),
        .Q(hfp_start[4]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [5]),
        .Q(hfp_start[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [6]),
        .Q(hfp_start[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [7]),
        .Q(hfp_start[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [8]),
        .Q(hfp_start[8]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hfp_start_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[16] [9]),
        .Q(hfp_start[9]),
        .R(\htotal[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    hsync_i_1
       (.I0(\time_control_regs[19] [3]),
        .I1(hsync_int_reg_n_0),
        .O(hsync0));
  LUT6 #(
    .INIT(64'hFFFFF4CCFFFFFFFF)) 
    hsync_int_i_1
       (.I0(eqOp12_out),
        .I1(hsync_int_reg_n_0),
        .I2(eqOp11_out),
        .I3(gen_ce),
        .I4(\htotal[11]_i_1_n_0 ),
        .I5(all_cfg_reg_n_0),
        .O(hsync_int_i_1_n_0));
  FDRE hsync_int_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_int_i_1_n_0),
        .Q(hsync_int_reg_n_0),
        .R(1'b0));
  FDRE hsync_reg
       (.C(clk),
        .CE(gen_ce),
        .D(hsync0),
        .Q(hsync_out),
        .R(p_3_in));
  FDRE \hsync_start_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [0]),
        .Q(hsync_start[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [10]),
        .Q(hsync_start[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [11]),
        .Q(hsync_start[11]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [1]),
        .Q(hsync_start[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [2]),
        .Q(hsync_start[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [3]),
        .Q(hsync_start[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [4]),
        .Q(hsync_start[4]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [5]),
        .Q(hsync_start[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [6]),
        .Q(hsync_start[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [7]),
        .Q(hsync_start[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [8]),
        .Q(hsync_start[8]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \hsync_start_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[22] [9]),
        .Q(hsync_start[9]),
        .R(\htotal[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \htotal[11]_i_1 
       (.I0(resetn_out),
        .I1(sw_enable_d),
        .O(\htotal[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[11]_i_2 
       (.I0(htotal[11]),
        .O(\htotal_1[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[11]_i_3 
       (.I0(htotal[10]),
        .O(\htotal_1[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[11]_i_4 
       (.I0(htotal[9]),
        .O(\htotal_1[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[11]_i_5 
       (.I0(htotal[8]),
        .O(\htotal_1[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[3]_i_2 
       (.I0(htotal[3]),
        .O(\htotal_1[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[3]_i_3 
       (.I0(htotal[2]),
        .O(\htotal_1[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[3]_i_4 
       (.I0(htotal[1]),
        .O(\htotal_1[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[7]_i_2 
       (.I0(htotal[7]),
        .O(\htotal_1[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[7]_i_3 
       (.I0(htotal[6]),
        .O(\htotal_1[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[7]_i_4 
       (.I0(htotal[5]),
        .O(\htotal_1[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \htotal_1[7]_i_5 
       (.I0(htotal[4]),
        .O(\htotal_1[7]_i_5_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[0]),
        .Q(htotal_1[0]),
        .S(p_3_in));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[10]),
        .Q(htotal_1[10]),
        .S(p_3_in));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[11]),
        .Q(htotal_1[11]),
        .S(p_3_in));
  CARRY4 \htotal_1_reg[11]_i_1 
       (.CI(\htotal_1_reg[7]_i_1_n_0 ),
        .CO({\NLW_htotal_1_reg[11]_i_1_CO_UNCONNECTED [3],\htotal_1_reg[11]_i_1_n_1 ,\htotal_1_reg[11]_i_1_n_2 ,\htotal_1_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,htotal[10:8]}),
        .O(minusOp[11:8]),
        .S({\htotal_1[11]_i_2_n_0 ,\htotal_1[11]_i_3_n_0 ,\htotal_1[11]_i_4_n_0 ,\htotal_1[11]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[1]),
        .Q(htotal_1[1]),
        .S(p_3_in));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[2]),
        .Q(htotal_1[2]),
        .S(p_3_in));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[3]),
        .Q(htotal_1[3]),
        .S(p_3_in));
  CARRY4 \htotal_1_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\htotal_1_reg[3]_i_1_n_0 ,\htotal_1_reg[3]_i_1_n_1 ,\htotal_1_reg[3]_i_1_n_2 ,\htotal_1_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({htotal[3:1],1'b0}),
        .O(minusOp[3:0]),
        .S({\htotal_1[3]_i_2_n_0 ,\htotal_1[3]_i_3_n_0 ,\htotal_1[3]_i_4_n_0 ,htotal[0]}));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[4]),
        .Q(htotal_1[4]),
        .S(p_3_in));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[5]),
        .Q(htotal_1[5]),
        .S(p_3_in));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[6]),
        .Q(htotal_1[6]),
        .S(p_3_in));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[7]),
        .Q(htotal_1[7]),
        .S(p_3_in));
  CARRY4 \htotal_1_reg[7]_i_1 
       (.CI(\htotal_1_reg[3]_i_1_n_0 ),
        .CO({\htotal_1_reg[7]_i_1_n_0 ,\htotal_1_reg[7]_i_1_n_1 ,\htotal_1_reg[7]_i_1_n_2 ,\htotal_1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(htotal[7:4]),
        .O(minusOp[7:4]),
        .S({\htotal_1[7]_i_2_n_0 ,\htotal_1[7]_i_3_n_0 ,\htotal_1[7]_i_4_n_0 ,\htotal_1[7]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[8]),
        .Q(htotal_1[8]),
        .S(p_3_in));
  FDSE #(
    .INIT(1'b0)) 
    \htotal_1_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(minusOp[9]),
        .Q(htotal_1[9]),
        .S(p_3_in));
  FDRE \htotal_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[0]),
        .Q(htotal[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[10]),
        .Q(htotal[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[11]),
        .Q(htotal[11]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[1]),
        .Q(htotal[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[2]),
        .Q(htotal[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[3]),
        .Q(htotal[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[4]),
        .Q(htotal[4]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[5]),
        .Q(htotal[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[6]),
        .Q(htotal[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[7]),
        .Q(htotal[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[8]),
        .Q(htotal[8]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \htotal_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(D[9]),
        .Q(htotal[9]),
        .R(\htotal[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(v_count_reg[9]),
        .I1(v0total[9]),
        .I2(v0total[11]),
        .I3(v_count_reg[11]),
        .I4(v0total[10]),
        .I5(v_count_reg[10]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(h_count_reg[9]),
        .I1(\core_control_regs[0] [9]),
        .I2(\core_control_regs[0] [11]),
        .I3(h_count_reg[11]),
        .I4(\core_control_regs[0] [10]),
        .I5(h_count_reg[10]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__1
       (.I0(v_count_reg[9]),
        .I1(\core_control_regs[0] [21]),
        .I2(\core_control_regs[0] [23]),
        .I3(v_count_reg[11]),
        .I4(\core_control_regs[0] [22]),
        .I5(v_count_reg[10]),
        .O(i__carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__10
       (.I0(v_count_reg[9]),
        .I1(v0fp_start[9]),
        .I2(v0fp_start[11]),
        .I3(v_count_reg[11]),
        .I4(v0fp_start[10]),
        .I5(v_count_reg[10]),
        .O(i__carry_i_1__10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__11
       (.I0(h_count_reg[9]),
        .I1(v0fp_start_hori[9]),
        .I2(v0fp_start_hori[11]),
        .I3(h_count_reg[11]),
        .I4(v0fp_start_hori[10]),
        .I5(h_count_reg[10]),
        .O(i__carry_i_1__11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_1__12
       (.I0(h_count_reg[11]),
        .I1(h_count_reg[10]),
        .I2(h_count_reg[9]),
        .O(i__carry_i_1__12_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_1__13
       (.I0(v_count_reg[11]),
        .I1(v_count_reg[10]),
        .I2(v_count_reg[9]),
        .O(i__carry_i_1__13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__2
       (.I0(h_count_reg[9]),
        .I1(hsync_start[9]),
        .I2(hsync_start[11]),
        .I3(h_count_reg[11]),
        .I4(hsync_start[10]),
        .I5(h_count_reg[10]),
        .O(i__carry_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__3
       (.I0(h_count_reg[9]),
        .I1(hbp_start[9]),
        .I2(hbp_start[11]),
        .I3(h_count_reg[11]),
        .I4(hbp_start[10]),
        .I5(h_count_reg[10]),
        .O(i__carry_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__4
       (.I0(h_count_reg[9]),
        .I1(hfp_start[9]),
        .I2(hfp_start[11]),
        .I3(h_count_reg[11]),
        .I4(hfp_start[10]),
        .I5(h_count_reg[10]),
        .O(i__carry_i_1__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__5
       (.I0(h_count_reg[9]),
        .I1(v0bp_start_hori[9]),
        .I2(v0bp_start_hori[11]),
        .I3(h_count_reg[11]),
        .I4(v0bp_start_hori[10]),
        .I5(h_count_reg[10]),
        .O(i__carry_i_1__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__6
       (.I0(v_count_reg[9]),
        .I1(v0bp_start[9]),
        .I2(v0bp_start[11]),
        .I3(v_count_reg[11]),
        .I4(v0bp_start[10]),
        .I5(v_count_reg[10]),
        .O(i__carry_i_1__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__7
       (.I0(h_count_reg[9]),
        .I1(v0sync_start_hori[9]),
        .I2(v0sync_start_hori[11]),
        .I3(h_count_reg[11]),
        .I4(v0sync_start_hori[10]),
        .I5(h_count_reg[10]),
        .O(i__carry_i_1__7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__8
       (.I0(v_count_reg[9]),
        .I1(v0sync_start[9]),
        .I2(v0sync_start[11]),
        .I3(v_count_reg[11]),
        .I4(v0sync_start[10]),
        .I5(v_count_reg[10]),
        .O(i__carry_i_1__8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__9
       (.I0(h_count_reg[9]),
        .I1(v0active_start_hori[9]),
        .I2(v0active_start_hori[11]),
        .I3(h_count_reg[11]),
        .I4(v0active_start_hori[10]),
        .I5(h_count_reg[10]),
        .O(i__carry_i_1__9_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(v_count_reg[6]),
        .I1(v0total[6]),
        .I2(v0total[8]),
        .I3(v_count_reg[8]),
        .I4(v0total[7]),
        .I5(v_count_reg[7]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(h_count_reg[6]),
        .I1(\core_control_regs[0] [6]),
        .I2(\core_control_regs[0] [8]),
        .I3(h_count_reg[8]),
        .I4(\core_control_regs[0] [7]),
        .I5(h_count_reg[7]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__1
       (.I0(v_count_reg[6]),
        .I1(\core_control_regs[0] [18]),
        .I2(\core_control_regs[0] [20]),
        .I3(v_count_reg[8]),
        .I4(\core_control_regs[0] [19]),
        .I5(v_count_reg[7]),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__10
       (.I0(v_count_reg[6]),
        .I1(v0fp_start[6]),
        .I2(v0fp_start[8]),
        .I3(v_count_reg[8]),
        .I4(v0fp_start[7]),
        .I5(v_count_reg[7]),
        .O(i__carry_i_2__10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__11
       (.I0(h_count_reg[6]),
        .I1(v0fp_start_hori[6]),
        .I2(v0fp_start_hori[8]),
        .I3(h_count_reg[8]),
        .I4(v0fp_start_hori[7]),
        .I5(h_count_reg[7]),
        .O(i__carry_i_2__11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_2__12
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[7]),
        .I2(h_count_reg[6]),
        .O(i__carry_i_2__12_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_2__13
       (.I0(v_count_reg[8]),
        .I1(v_count_reg[7]),
        .I2(v_count_reg[6]),
        .O(i__carry_i_2__13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__2
       (.I0(h_count_reg[6]),
        .I1(hsync_start[6]),
        .I2(hsync_start[8]),
        .I3(h_count_reg[8]),
        .I4(hsync_start[7]),
        .I5(h_count_reg[7]),
        .O(i__carry_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__3
       (.I0(h_count_reg[6]),
        .I1(hbp_start[6]),
        .I2(hbp_start[8]),
        .I3(h_count_reg[8]),
        .I4(hbp_start[7]),
        .I5(h_count_reg[7]),
        .O(i__carry_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__4
       (.I0(h_count_reg[6]),
        .I1(hfp_start[6]),
        .I2(hfp_start[8]),
        .I3(h_count_reg[8]),
        .I4(hfp_start[7]),
        .I5(h_count_reg[7]),
        .O(i__carry_i_2__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__5
       (.I0(h_count_reg[6]),
        .I1(v0bp_start_hori[6]),
        .I2(v0bp_start_hori[8]),
        .I3(h_count_reg[8]),
        .I4(v0bp_start_hori[7]),
        .I5(h_count_reg[7]),
        .O(i__carry_i_2__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__6
       (.I0(v_count_reg[6]),
        .I1(v0bp_start[6]),
        .I2(v0bp_start[8]),
        .I3(v_count_reg[8]),
        .I4(v0bp_start[7]),
        .I5(v_count_reg[7]),
        .O(i__carry_i_2__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__7
       (.I0(h_count_reg[6]),
        .I1(v0sync_start_hori[6]),
        .I2(v0sync_start_hori[8]),
        .I3(h_count_reg[8]),
        .I4(v0sync_start_hori[7]),
        .I5(h_count_reg[7]),
        .O(i__carry_i_2__7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__8
       (.I0(v_count_reg[6]),
        .I1(v0sync_start[6]),
        .I2(v0sync_start[8]),
        .I3(v_count_reg[8]),
        .I4(v0sync_start[7]),
        .I5(v_count_reg[7]),
        .O(i__carry_i_2__8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__9
       (.I0(h_count_reg[6]),
        .I1(v0active_start_hori[6]),
        .I2(v0active_start_hori[8]),
        .I3(h_count_reg[8]),
        .I4(v0active_start_hori[7]),
        .I5(h_count_reg[7]),
        .O(i__carry_i_2__9_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(v_count_reg[3]),
        .I1(v0total[3]),
        .I2(v0total[5]),
        .I3(v_count_reg[5]),
        .I4(v0total[4]),
        .I5(v_count_reg[4]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(h_count_reg[3]),
        .I1(\core_control_regs[0] [3]),
        .I2(\core_control_regs[0] [5]),
        .I3(h_count_reg[5]),
        .I4(\core_control_regs[0] [4]),
        .I5(h_count_reg[4]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__1
       (.I0(v_count_reg[3]),
        .I1(\core_control_regs[0] [15]),
        .I2(\core_control_regs[0] [17]),
        .I3(v_count_reg[5]),
        .I4(\core_control_regs[0] [16]),
        .I5(v_count_reg[4]),
        .O(i__carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__10
       (.I0(v_count_reg[3]),
        .I1(v0fp_start[3]),
        .I2(v0fp_start[5]),
        .I3(v_count_reg[5]),
        .I4(v0fp_start[4]),
        .I5(v_count_reg[4]),
        .O(i__carry_i_3__10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__11
       (.I0(h_count_reg[3]),
        .I1(v0fp_start_hori[3]),
        .I2(v0fp_start_hori[5]),
        .I3(h_count_reg[5]),
        .I4(v0fp_start_hori[4]),
        .I5(h_count_reg[4]),
        .O(i__carry_i_3__11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_3__12
       (.I0(h_count_reg[5]),
        .I1(h_count_reg[4]),
        .I2(h_count_reg[3]),
        .O(i__carry_i_3__12_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_3__13
       (.I0(v_count_reg[5]),
        .I1(v_count_reg[4]),
        .I2(v_count_reg[3]),
        .O(i__carry_i_3__13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__2
       (.I0(h_count_reg[3]),
        .I1(hsync_start[3]),
        .I2(hsync_start[5]),
        .I3(h_count_reg[5]),
        .I4(hsync_start[4]),
        .I5(h_count_reg[4]),
        .O(i__carry_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__3
       (.I0(h_count_reg[3]),
        .I1(hbp_start[3]),
        .I2(hbp_start[5]),
        .I3(h_count_reg[5]),
        .I4(hbp_start[4]),
        .I5(h_count_reg[4]),
        .O(i__carry_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__4
       (.I0(h_count_reg[3]),
        .I1(hfp_start[3]),
        .I2(hfp_start[5]),
        .I3(h_count_reg[5]),
        .I4(hfp_start[4]),
        .I5(h_count_reg[4]),
        .O(i__carry_i_3__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__5
       (.I0(h_count_reg[3]),
        .I1(v0bp_start_hori[3]),
        .I2(v0bp_start_hori[5]),
        .I3(h_count_reg[5]),
        .I4(v0bp_start_hori[4]),
        .I5(h_count_reg[4]),
        .O(i__carry_i_3__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__6
       (.I0(v_count_reg[3]),
        .I1(v0bp_start[3]),
        .I2(v0bp_start[5]),
        .I3(v_count_reg[5]),
        .I4(v0bp_start[4]),
        .I5(v_count_reg[4]),
        .O(i__carry_i_3__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__7
       (.I0(h_count_reg[3]),
        .I1(v0sync_start_hori[3]),
        .I2(v0sync_start_hori[5]),
        .I3(h_count_reg[5]),
        .I4(v0sync_start_hori[4]),
        .I5(h_count_reg[4]),
        .O(i__carry_i_3__7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__8
       (.I0(v_count_reg[3]),
        .I1(v0sync_start[3]),
        .I2(v0sync_start[5]),
        .I3(v_count_reg[5]),
        .I4(v0sync_start[4]),
        .I5(v_count_reg[4]),
        .O(i__carry_i_3__8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__9
       (.I0(h_count_reg[3]),
        .I1(v0active_start_hori[3]),
        .I2(v0active_start_hori[5]),
        .I3(h_count_reg[5]),
        .I4(v0active_start_hori[4]),
        .I5(h_count_reg[4]),
        .O(i__carry_i_3__9_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(v_count_reg[0]),
        .I1(v0total[0]),
        .I2(v0total[2]),
        .I3(v_count_reg[2]),
        .I4(v0total[1]),
        .I5(v_count_reg[1]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__0
       (.I0(h_count_reg[0]),
        .I1(\core_control_regs[0] [0]),
        .I2(\core_control_regs[0] [2]),
        .I3(h_count_reg[2]),
        .I4(\core_control_regs[0] [1]),
        .I5(h_count_reg[1]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__1
       (.I0(v_count_reg[0]),
        .I1(\core_control_regs[0] [12]),
        .I2(\core_control_regs[0] [14]),
        .I3(v_count_reg[2]),
        .I4(\core_control_regs[0] [13]),
        .I5(v_count_reg[1]),
        .O(i__carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__10
       (.I0(v_count_reg[0]),
        .I1(v0fp_start[0]),
        .I2(v0fp_start[2]),
        .I3(v_count_reg[2]),
        .I4(v0fp_start[1]),
        .I5(v_count_reg[1]),
        .O(i__carry_i_4__10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__11
       (.I0(h_count_reg[0]),
        .I1(v0fp_start_hori[0]),
        .I2(v0fp_start_hori[2]),
        .I3(h_count_reg[2]),
        .I4(v0fp_start_hori[1]),
        .I5(h_count_reg[1]),
        .O(i__carry_i_4__11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_4__12
       (.I0(h_count_reg[2]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[0]),
        .O(i__carry_i_4__12_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_4__13
       (.I0(v_count_reg[2]),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[0]),
        .O(i__carry_i_4__13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__2
       (.I0(h_count_reg[0]),
        .I1(hsync_start[0]),
        .I2(hsync_start[2]),
        .I3(h_count_reg[2]),
        .I4(hsync_start[1]),
        .I5(h_count_reg[1]),
        .O(i__carry_i_4__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__3
       (.I0(h_count_reg[0]),
        .I1(hbp_start[0]),
        .I2(hbp_start[2]),
        .I3(h_count_reg[2]),
        .I4(hbp_start[1]),
        .I5(h_count_reg[1]),
        .O(i__carry_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__4
       (.I0(h_count_reg[0]),
        .I1(hfp_start[0]),
        .I2(hfp_start[2]),
        .I3(h_count_reg[2]),
        .I4(hfp_start[1]),
        .I5(h_count_reg[1]),
        .O(i__carry_i_4__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__5
       (.I0(h_count_reg[0]),
        .I1(v0bp_start_hori[0]),
        .I2(v0bp_start_hori[2]),
        .I3(h_count_reg[2]),
        .I4(v0bp_start_hori[1]),
        .I5(h_count_reg[1]),
        .O(i__carry_i_4__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__6
       (.I0(v_count_reg[0]),
        .I1(v0bp_start[0]),
        .I2(v0bp_start[2]),
        .I3(v_count_reg[2]),
        .I4(v0bp_start[1]),
        .I5(v_count_reg[1]),
        .O(i__carry_i_4__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__7
       (.I0(h_count_reg[0]),
        .I1(v0sync_start_hori[0]),
        .I2(v0sync_start_hori[2]),
        .I3(h_count_reg[2]),
        .I4(v0sync_start_hori[1]),
        .I5(h_count_reg[1]),
        .O(i__carry_i_4__7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__8
       (.I0(v_count_reg[0]),
        .I1(v0sync_start[0]),
        .I2(v0sync_start[2]),
        .I3(v_count_reg[2]),
        .I4(v0sync_start[1]),
        .I5(v_count_reg[1]),
        .O(i__carry_i_4__8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__9
       (.I0(h_count_reg[0]),
        .I1(v0active_start_hori[0]),
        .I2(v0active_start_hori[2]),
        .I3(h_count_reg[2]),
        .I4(v0active_start_hori[1]),
        .I5(h_count_reg[1]),
        .O(i__carry_i_4__9_n_0));
  LUT5 #(
    .INIT(32'h24000000)) 
    \intr_status_int[13]_i_2 
       (.I0(\time_control_regs[19] [4]),
        .I1(gen_active_video_d),
        .I2(active_video_reg_0),
        .I3(p_0_in0_in),
        .I4(resetn_out),
        .O(gen_active_video_d_reg));
  LUT6 #(
    .INIT(64'h2424FF2424FF2424)) 
    \intr_status_int[13]_i_3 
       (.I0(\time_control_regs[19] [0]),
        .I1(gen_vblank_d),
        .I2(vblank_reg_0),
        .I3(active_video_reg_0),
        .I4(gen_active_video_d),
        .I5(\time_control_regs[19] [4]),
        .O(p_1_out));
  LUT6 #(
    .INIT(64'h0000000000E2E2E2)) 
    last_line_i_1
       (.I0(last_line),
        .I1(gen_ce),
        .I2(eqOp13_out),
        .I3(\genr_control_regs[0] [2]),
        .I4(fsync_in),
        .I5(p_3_in),
        .O(last_line_i_1_n_0));
  FDRE last_line_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_line_i_1_n_0),
        .Q(last_line),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000002C002C002C)) 
    line_end_i_1
       (.I0(eqOp14_out),
        .I1(line_end),
        .I2(gen_ce),
        .I3(p_3_in),
        .I4(fsync_in),
        .I5(\genr_control_regs[0] [2]),
        .O(line_end_i_1_n_0));
  FDRE line_end_reg
       (.C(clk),
        .CE(1'b1),
        .D(line_end_i_1_n_0),
        .Q(line_end),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000002C002C002C)) 
    line_end_v_i_1
       (.I0(eqOp14_out),
        .I1(line_end_v),
        .I2(gen_ce),
        .I3(p_3_in),
        .I4(fsync_in),
        .I5(\genr_control_regs[0] [2]),
        .O(line_end_v_i_1_n_0));
  FDRE line_end_v_reg
       (.C(clk),
        .CE(1'b1),
        .D(line_end_v_i_1_n_0),
        .Q(line_end_v),
        .R(1'b0));
  FDRE \param_cfg_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(1'b1),
        .Q(\param_cfg_reg_n_0_[4] ),
        .R(\htotal[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF2A0000)) 
    sw_enable_d_i_1
       (.I0(sw_enable_d),
        .I1(line_end_v),
        .I2(last_line),
        .I3(\generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_0 ),
        .I4(resetn_out),
        .O(sw_enable_d_i_1_n_0));
  FDRE sw_enable_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(sw_enable_d_i_1_n_0),
        .Q(sw_enable_d),
        .R(1'b0));
  FDRE \v0active_start_hori_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [12]),
        .Q(v0active_start_hori[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [22]),
        .Q(v0active_start_hori[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [23]),
        .Q(v0active_start_hori[11]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [13]),
        .Q(v0active_start_hori[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [14]),
        .Q(v0active_start_hori[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [15]),
        .Q(v0active_start_hori[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [16]),
        .Q(v0active_start_hori[4]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [17]),
        .Q(v0active_start_hori[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [18]),
        .Q(v0active_start_hori[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [19]),
        .Q(v0active_start_hori[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [20]),
        .Q(v0active_start_hori[8]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0active_start_hori_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [21]),
        .Q(v0active_start_hori[9]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [12]),
        .Q(v0bp_start_hori[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [22]),
        .Q(v0bp_start_hori[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [23]),
        .Q(v0bp_start_hori[11]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [13]),
        .Q(v0bp_start_hori[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [14]),
        .Q(v0bp_start_hori[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [15]),
        .Q(v0bp_start_hori[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [16]),
        .Q(v0bp_start_hori[4]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [17]),
        .Q(v0bp_start_hori[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [18]),
        .Q(v0bp_start_hori[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [19]),
        .Q(v0bp_start_hori[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [20]),
        .Q(v0bp_start_hori[8]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_hori_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [21]),
        .Q(v0bp_start_hori[9]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [12]),
        .Q(v0bp_start[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [22]),
        .Q(v0bp_start[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [23]),
        .Q(v0bp_start[11]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [13]),
        .Q(v0bp_start[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [14]),
        .Q(v0bp_start[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [15]),
        .Q(v0bp_start[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [16]),
        .Q(v0bp_start[4]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [17]),
        .Q(v0bp_start[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [18]),
        .Q(v0bp_start[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [19]),
        .Q(v0bp_start[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [20]),
        .Q(v0bp_start[8]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0bp_start_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [21]),
        .Q(v0bp_start[9]),
        .R(\htotal[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[0]_i_1 
       (.I0(\time_control_regs[16] [12]),
        .O(v0fp_start0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[11]_i_2 
       (.I0(\time_control_regs[16] [23]),
        .O(\v0fp_start[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[11]_i_3 
       (.I0(\time_control_regs[16] [22]),
        .O(\v0fp_start[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[11]_i_4 
       (.I0(\time_control_regs[16] [21]),
        .O(\v0fp_start[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[4]_i_2 
       (.I0(\time_control_regs[16] [16]),
        .O(\v0fp_start[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[4]_i_3 
       (.I0(\time_control_regs[16] [15]),
        .O(\v0fp_start[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[4]_i_4 
       (.I0(\time_control_regs[16] [14]),
        .O(\v0fp_start[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[4]_i_5 
       (.I0(\time_control_regs[16] [13]),
        .O(\v0fp_start[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[8]_i_2 
       (.I0(\time_control_regs[16] [20]),
        .O(\v0fp_start[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[8]_i_3 
       (.I0(\time_control_regs[16] [19]),
        .O(\v0fp_start[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[8]_i_4 
       (.I0(\time_control_regs[16] [18]),
        .O(\v0fp_start[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0fp_start[8]_i_5 
       (.I0(\time_control_regs[16] [17]),
        .O(\v0fp_start[8]_i_5_n_0 ));
  FDRE \v0fp_start_hori_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [0]),
        .Q(v0fp_start_hori[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [10]),
        .Q(v0fp_start_hori[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [11]),
        .Q(v0fp_start_hori[11]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [1]),
        .Q(v0fp_start_hori[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [2]),
        .Q(v0fp_start_hori[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [3]),
        .Q(v0fp_start_hori[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [4]),
        .Q(v0fp_start_hori[4]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [5]),
        .Q(v0fp_start_hori[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [6]),
        .Q(v0fp_start_hori[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [7]),
        .Q(v0fp_start_hori[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [8]),
        .Q(v0fp_start_hori[8]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_hori_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[23] [9]),
        .Q(v0fp_start_hori[9]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[0]),
        .Q(v0fp_start[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[10]),
        .Q(v0fp_start[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[11]),
        .Q(v0fp_start[11]),
        .R(\htotal[11]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \v0fp_start_reg[11]_i_1 
       (.CI(\v0fp_start_reg[8]_i_1_n_0 ),
        .CO({\NLW_v0fp_start_reg[11]_i_1_CO_UNCONNECTED [3:2],\v0fp_start_reg[11]_i_1_n_2 ,\v0fp_start_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\time_control_regs[16] [22:21]}),
        .O({\NLW_v0fp_start_reg[11]_i_1_O_UNCONNECTED [3],v0fp_start0_in[11:9]}),
        .S({1'b0,\v0fp_start[11]_i_2_n_0 ,\v0fp_start[11]_i_3_n_0 ,\v0fp_start[11]_i_4_n_0 }));
  FDRE \v0fp_start_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[1]),
        .Q(v0fp_start[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[2]),
        .Q(v0fp_start[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[3]),
        .Q(v0fp_start[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[4]),
        .Q(v0fp_start[4]),
        .R(\htotal[11]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \v0fp_start_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\v0fp_start_reg[4]_i_1_n_0 ,\v0fp_start_reg[4]_i_1_n_1 ,\v0fp_start_reg[4]_i_1_n_2 ,\v0fp_start_reg[4]_i_1_n_3 }),
        .CYINIT(\time_control_regs[16] [12]),
        .DI(\time_control_regs[16] [16:13]),
        .O(v0fp_start0_in[4:1]),
        .S({\v0fp_start[4]_i_2_n_0 ,\v0fp_start[4]_i_3_n_0 ,\v0fp_start[4]_i_4_n_0 ,\v0fp_start[4]_i_5_n_0 }));
  FDRE \v0fp_start_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[5]),
        .Q(v0fp_start[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[6]),
        .Q(v0fp_start[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[7]),
        .Q(v0fp_start[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0fp_start_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[8]),
        .Q(v0fp_start[8]),
        .R(\htotal[11]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \v0fp_start_reg[8]_i_1 
       (.CI(\v0fp_start_reg[4]_i_1_n_0 ),
        .CO({\v0fp_start_reg[8]_i_1_n_0 ,\v0fp_start_reg[8]_i_1_n_1 ,\v0fp_start_reg[8]_i_1_n_2 ,\v0fp_start_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\time_control_regs[16] [20:17]),
        .O(v0fp_start0_in[8:5]),
        .S({\v0fp_start[8]_i_2_n_0 ,\v0fp_start[8]_i_3_n_0 ,\v0fp_start[8]_i_4_n_0 ,\v0fp_start[8]_i_5_n_0 }));
  FDRE \v0fp_start_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0fp_start0_in[9]),
        .Q(v0fp_start[9]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [0]),
        .Q(v0sync_start_hori[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [10]),
        .Q(v0sync_start_hori[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [11]),
        .Q(v0sync_start_hori[11]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [1]),
        .Q(v0sync_start_hori[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [2]),
        .Q(v0sync_start_hori[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [3]),
        .Q(v0sync_start_hori[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [4]),
        .Q(v0sync_start_hori[4]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [5]),
        .Q(v0sync_start_hori[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [6]),
        .Q(v0sync_start_hori[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [7]),
        .Q(v0sync_start_hori[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [8]),
        .Q(v0sync_start_hori[8]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_hori_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[25] [9]),
        .Q(v0sync_start_hori[9]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [0]),
        .Q(v0sync_start[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [10]),
        .Q(v0sync_start[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [11]),
        .Q(v0sync_start[11]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [1]),
        .Q(v0sync_start[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [2]),
        .Q(v0sync_start[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [3]),
        .Q(v0sync_start[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [4]),
        .Q(v0sync_start[4]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [5]),
        .Q(v0sync_start[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [6]),
        .Q(v0sync_start[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [7]),
        .Q(v0sync_start[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [8]),
        .Q(v0sync_start[8]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0sync_start_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(\time_control_regs[24] [9]),
        .Q(v0sync_start[9]),
        .R(\htotal[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[0]_i_1 
       (.I0(\time_control_regs[21] [0]),
        .O(v0total0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[11]_i_2 
       (.I0(\time_control_regs[21] [11]),
        .O(\v0total[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[11]_i_3 
       (.I0(\time_control_regs[21] [10]),
        .O(\v0total[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[11]_i_4 
       (.I0(\time_control_regs[21] [9]),
        .O(\v0total[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[4]_i_2 
       (.I0(\time_control_regs[21] [4]),
        .O(\v0total[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[4]_i_3 
       (.I0(\time_control_regs[21] [3]),
        .O(\v0total[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[4]_i_4 
       (.I0(\time_control_regs[21] [2]),
        .O(\v0total[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[4]_i_5 
       (.I0(\time_control_regs[21] [1]),
        .O(\v0total[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[8]_i_2 
       (.I0(\time_control_regs[21] [8]),
        .O(\v0total[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[8]_i_3 
       (.I0(\time_control_regs[21] [7]),
        .O(\v0total[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[8]_i_4 
       (.I0(\time_control_regs[21] [6]),
        .O(\v0total[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v0total[8]_i_5 
       (.I0(\time_control_regs[21] [5]),
        .O(\v0total[8]_i_5_n_0 ));
  FDRE \v0total_reg[0] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[0]),
        .Q(v0total[0]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0total_reg[10] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[10]),
        .Q(v0total[10]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0total_reg[11] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[11]),
        .Q(v0total[11]),
        .R(\htotal[11]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \v0total_reg[11]_i_1 
       (.CI(\v0total_reg[8]_i_1_n_0 ),
        .CO({\NLW_v0total_reg[11]_i_1_CO_UNCONNECTED [3:2],\v0total_reg[11]_i_1_n_2 ,\v0total_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\time_control_regs[21] [10:9]}),
        .O({\NLW_v0total_reg[11]_i_1_O_UNCONNECTED [3],v0total0_in[11:9]}),
        .S({1'b0,\v0total[11]_i_2_n_0 ,\v0total[11]_i_3_n_0 ,\v0total[11]_i_4_n_0 }));
  FDRE \v0total_reg[1] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[1]),
        .Q(v0total[1]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0total_reg[2] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[2]),
        .Q(v0total[2]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0total_reg[3] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[3]),
        .Q(v0total[3]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0total_reg[4] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[4]),
        .Q(v0total[4]),
        .R(\htotal[11]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \v0total_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\v0total_reg[4]_i_1_n_0 ,\v0total_reg[4]_i_1_n_1 ,\v0total_reg[4]_i_1_n_2 ,\v0total_reg[4]_i_1_n_3 }),
        .CYINIT(\time_control_regs[21] [0]),
        .DI(\time_control_regs[21] [4:1]),
        .O(v0total0_in[4:1]),
        .S({\v0total[4]_i_2_n_0 ,\v0total[4]_i_3_n_0 ,\v0total[4]_i_4_n_0 ,\v0total[4]_i_5_n_0 }));
  FDRE \v0total_reg[5] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[5]),
        .Q(v0total[5]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0total_reg[6] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[6]),
        .Q(v0total[6]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0total_reg[7] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[7]),
        .Q(v0total[7]),
        .R(\htotal[11]_i_1_n_0 ));
  FDRE \v0total_reg[8] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[8]),
        .Q(v0total[8]),
        .R(\htotal[11]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \v0total_reg[8]_i_1 
       (.CI(\v0total_reg[4]_i_1_n_0 ),
        .CO({\v0total_reg[8]_i_1_n_0 ,\v0total_reg[8]_i_1_n_1 ,\v0total_reg[8]_i_1_n_2 ,\v0total_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\time_control_regs[21] [8:5]),
        .O(v0total0_in[8:5]),
        .S({\v0total[8]_i_2_n_0 ,\v0total[8]_i_3_n_0 ,\v0total[8]_i_4_n_0 ,\v0total[8]_i_5_n_0 }));
  FDRE \v0total_reg[9] 
       (.C(clk),
        .CE(gen_ce),
        .D(v0total0_in[9]),
        .Q(v0total[9]),
        .R(\htotal[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F8F8F8F8)) 
    \v_count[0]_i_1 
       (.I0(\genr_control_regs[0] [2]),
        .I1(fsync_in),
        .I2(p_3_in),
        .I3(gen_ce),
        .I4(line_end_v),
        .I5(last_line),
        .O(\v_count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \v_count[0]_i_2 
       (.I0(gen_ce),
        .I1(line_end_v),
        .I2(last_line),
        .O(v_count058_out));
  LUT1 #(
    .INIT(2'h1)) 
    \v_count[0]_i_4 
       (.I0(v_count_reg[0]),
        .O(\v_count[0]_i_4_n_0 ));
  FDRE \v_count_reg[0] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[0]_i_3_n_7 ),
        .Q(v_count_reg[0]),
        .R(\v_count[0]_i_1_n_0 ));
  CARRY4 \v_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\v_count_reg[0]_i_3_n_0 ,\v_count_reg[0]_i_3_n_1 ,\v_count_reg[0]_i_3_n_2 ,\v_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\v_count_reg[0]_i_3_n_4 ,\v_count_reg[0]_i_3_n_5 ,\v_count_reg[0]_i_3_n_6 ,\v_count_reg[0]_i_3_n_7 }),
        .S({v_count_reg[3:1],\v_count[0]_i_4_n_0 }));
  FDRE \v_count_reg[10] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[8]_i_1_n_5 ),
        .Q(v_count_reg[10]),
        .R(\v_count[0]_i_1_n_0 ));
  FDRE \v_count_reg[11] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[8]_i_1_n_4 ),
        .Q(v_count_reg[11]),
        .R(\v_count[0]_i_1_n_0 ));
  FDRE \v_count_reg[1] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[0]_i_3_n_6 ),
        .Q(v_count_reg[1]),
        .R(\v_count[0]_i_1_n_0 ));
  FDRE \v_count_reg[2] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[0]_i_3_n_5 ),
        .Q(v_count_reg[2]),
        .R(\v_count[0]_i_1_n_0 ));
  FDRE \v_count_reg[3] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[0]_i_3_n_4 ),
        .Q(v_count_reg[3]),
        .R(\v_count[0]_i_1_n_0 ));
  FDRE \v_count_reg[4] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[4]_i_1_n_7 ),
        .Q(v_count_reg[4]),
        .R(\v_count[0]_i_1_n_0 ));
  CARRY4 \v_count_reg[4]_i_1 
       (.CI(\v_count_reg[0]_i_3_n_0 ),
        .CO({\v_count_reg[4]_i_1_n_0 ,\v_count_reg[4]_i_1_n_1 ,\v_count_reg[4]_i_1_n_2 ,\v_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_count_reg[4]_i_1_n_4 ,\v_count_reg[4]_i_1_n_5 ,\v_count_reg[4]_i_1_n_6 ,\v_count_reg[4]_i_1_n_7 }),
        .S(v_count_reg[7:4]));
  FDRE \v_count_reg[5] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[4]_i_1_n_6 ),
        .Q(v_count_reg[5]),
        .R(\v_count[0]_i_1_n_0 ));
  FDRE \v_count_reg[6] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[4]_i_1_n_5 ),
        .Q(v_count_reg[6]),
        .R(\v_count[0]_i_1_n_0 ));
  FDRE \v_count_reg[7] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[4]_i_1_n_4 ),
        .Q(v_count_reg[7]),
        .R(\v_count[0]_i_1_n_0 ));
  FDRE \v_count_reg[8] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[8]_i_1_n_7 ),
        .Q(v_count_reg[8]),
        .R(\v_count[0]_i_1_n_0 ));
  CARRY4 \v_count_reg[8]_i_1 
       (.CI(\v_count_reg[4]_i_1_n_0 ),
        .CO({\NLW_v_count_reg[8]_i_1_CO_UNCONNECTED [3],\v_count_reg[8]_i_1_n_1 ,\v_count_reg[8]_i_1_n_2 ,\v_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_count_reg[8]_i_1_n_4 ,\v_count_reg[8]_i_1_n_5 ,\v_count_reg[8]_i_1_n_6 ,\v_count_reg[8]_i_1_n_7 }),
        .S(v_count_reg[11:8]));
  FDRE \v_count_reg[9] 
       (.C(clk),
        .CE(v_count058_out),
        .D(\v_count_reg[8]_i_1_n_6 ),
        .Q(v_count_reg[9]),
        .R(\v_count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    vblank_i_1
       (.I0(\time_control_regs[19] [0]),
        .I1(vblank_int_reg_n_0),
        .O(vblank0));
  LUT6 #(
    .INIT(64'hF777FFFFF0000000)) 
    vblank_int_i_1
       (.I0(eqOp3_out),
        .I1(eqOp4_out),
        .I2(last_line),
        .I3(eqOp2_out),
        .I4(gen_ce),
        .I5(vblank_int_reg_n_0),
        .O(vblank_int_i_1_n_0));
  FDSE vblank_int_reg
       (.C(clk),
        .CE(1'b1),
        .D(vblank_int_i_1_n_0),
        .Q(vblank_int_reg_n_0),
        .S(p_3_in));
  FDRE vblank_reg
       (.C(clk),
        .CE(gen_ce),
        .D(vblank0),
        .Q(vblank_reg_0),
        .R(p_3_in));
  LUT2 #(
    .INIT(4'h6)) 
    vsync_i_1
       (.I0(\time_control_regs[19] [2]),
        .I1(vsync_int_reg_n_0),
        .O(vsync0));
  LUT6 #(
    .INIT(64'hF777FFFFF0000000)) 
    vsync_int_i_1
       (.I0(eqOp8_out),
        .I1(eqOp7_out),
        .I2(eqOp6_out),
        .I3(eqOp5_out),
        .I4(gen_ce),
        .I5(vsync_int_reg_n_0),
        .O(vsync_int_i_1_n_0));
  FDSE vsync_int_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_int_i_1_n_0),
        .Q(vsync_int_reg_n_0),
        .S(p_3_in));
  FDRE vsync_reg
       (.C(clk),
        .CE(gen_ce),
        .D(vsync0),
        .Q(vsync_out),
        .R(p_3_in));
endmodule

(* ORIG_REF_NAME = "tc_top" *) 
module design_1_v_tc_0_0_tc_top
   (fsync_out,
    hsync_out,
    hblank_out,
    vsync_out,
    vblank_reg,
    active_video_reg,
    active_chroma_out,
    reg_update,
    \genr_status_regs[1] ,
    clk,
    clken,
    \genr_control_regs[0] ,
    fsync_in,
    \time_control_regs[19] ,
    core_d_out,
    gen_clken,
    resetn_out,
    \core_control_regs[0] ,
    D,
    \time_control_regs[21] ,
    \time_control_regs[22] ,
    \time_control_regs[16] ,
    \time_control_regs[25] ,
    \time_control_regs[24] ,
    \time_control_regs[23] );
  output [0:0]fsync_out;
  output hsync_out;
  output hblank_out;
  output vsync_out;
  output vblank_reg;
  output active_video_reg;
  output active_chroma_out;
  output reg_update;
  output [5:0]\genr_status_regs[1] ;
  input clk;
  input clken;
  input [3:0]\genr_control_regs[0] ;
  input fsync_in;
  input [5:0]\time_control_regs[19] ;
  input core_d_out;
  input gen_clken;
  input resetn_out;
  input [23:0]\core_control_regs[0] ;
  input [11:0]D;
  input [11:0]\time_control_regs[21] ;
  input [23:0]\time_control_regs[22] ;
  input [23:0]\time_control_regs[16] ;
  input [23:0]\time_control_regs[25] ;
  input [23:0]\time_control_regs[24] ;
  input [23:0]\time_control_regs[23] ;

  wire [11:0]D;
  wire \GEN_GENERATOR.U_TC_GEN_n_10 ;
  wire \GEN_GENERATOR.U_TC_GEN_n_9 ;
  wire active_chroma_out;
  wire active_video_reg;
  wire clk;
  wire clken;
  wire [23:0]\core_control_regs[0] ;
  wire core_d_out;
  wire \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_n_0 ;
  wire \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0 ;
  wire \detect_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0 ;
  wire detect_en_d_reg_gate_n_0;
  wire detect_en_d_reg_r_0_n_0;
  wire detect_en_d_reg_r_1_n_0;
  wire detect_en_d_reg_r_n_0;
  wire fsync_in;
  wire [0:0]fsync_out;
  wire gen_active_video_d;
  wire gen_clken;
  wire gen_vblank_d;
  wire \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0 ;
  wire \generate_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0 ;
  wire generate_en_d_reg_gate_n_0;
  wire [3:0]\genr_control_regs[0] ;
  wire [5:0]\genr_status_regs[1] ;
  wire hblank_out;
  wire hsync_out;
  wire \intr_status_int[10]_i_1_n_0 ;
  wire \intr_status_int[11]_i_1_n_0 ;
  wire \intr_status_int[12]_i_1_n_0 ;
  wire \intr_status_int[13]_i_1_n_0 ;
  wire \intr_status_int[16]_i_1_n_0 ;
  wire \intr_status_int[9]_i_1_n_0 ;
  wire p_0_in;
  wire p_0_in0_in;
  wire [13:13]p_1_out;
  wire reg_update;
  wire reset;
  wire resetn_out;
  wire [23:0]\time_control_regs[16] ;
  wire [5:0]\time_control_regs[19] ;
  wire [11:0]\time_control_regs[21] ;
  wire [23:0]\time_control_regs[22] ;
  wire [23:0]\time_control_regs[23] ;
  wire [23:0]\time_control_regs[24] ;
  wire [23:0]\time_control_regs[25] ;
  wire vblank_reg;
  wire vsync_out;

  design_1_v_tc_0_0_tc_generator \GEN_GENERATOR.U_TC_GEN 
       (.D(D),
        .active_chroma_out(active_chroma_out),
        .active_video_reg_0(active_video_reg),
        .clk(clk),
        .clken(clken),
        .\core_control_regs[0] (\core_control_regs[0] ),
        .core_d_out(core_d_out),
        .fsync_in(fsync_in),
        .fsync_out(fsync_out),
        .gen_active_video_d(gen_active_video_d),
        .gen_active_video_d_reg(\GEN_GENERATOR.U_TC_GEN_n_10 ),
        .gen_clken(gen_clken),
        .gen_vblank_d(gen_vblank_d),
        .\generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_0 (\GEN_GENERATOR.U_TC_GEN_n_9 ),
        .\genr_control_regs[0] ({\genr_control_regs[0] [3],\genr_control_regs[0] [1:0]}),
        .hblank_out(hblank_out),
        .hsync_out(hsync_out),
        .p_0_in0_in(p_0_in0_in),
        .p_1_out(p_1_out),
        .reg_update(reg_update),
        .resetn_out(resetn_out),
        .\time_control_regs[16] (\time_control_regs[16] ),
        .\time_control_regs[19] (\time_control_regs[19] ),
        .\time_control_regs[21] (\time_control_regs[21] ),
        .\time_control_regs[22] (\time_control_regs[22] ),
        .\time_control_regs[23] (\time_control_regs[23] ),
        .\time_control_regs[24] (\time_control_regs[24] ),
        .\time_control_regs[25] (\time_control_regs[25] ),
        .vblank_reg_0(vblank_reg),
        .vsync_out(vsync_out));
  (* srl_bus_name = "U0/\U_TC_TOP/detect_en_d_reg " *) 
  (* srl_name = "U0/\U_TC_TOP/detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0 " *) 
  SRL16E \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(clken),
        .CLK(clk),
        .D(\detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_n_0 ),
        .Q(\detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1 
       (.I0(\genr_control_regs[0] [2]),
        .I1(\genr_control_regs[0] [0]),
        .I2(core_d_out),
        .O(\detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_n_0 ));
  FDRE \detect_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1 
       (.C(clk),
        .CE(clken),
        .D(\detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0 ),
        .Q(\detect_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \detect_en_d_reg[3] 
       (.C(clk),
        .CE(clken),
        .D(detect_en_d_reg_gate_n_0),
        .Q(p_0_in),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    detect_en_d_reg_gate
       (.I0(\detect_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0 ),
        .I1(detect_en_d_reg_r_1_n_0),
        .O(detect_en_d_reg_gate_n_0));
  FDRE detect_en_d_reg_r
       (.C(clk),
        .CE(clken),
        .D(1'b1),
        .Q(detect_en_d_reg_r_n_0),
        .R(reset));
  FDRE detect_en_d_reg_r_0
       (.C(clk),
        .CE(clken),
        .D(detect_en_d_reg_r_n_0),
        .Q(detect_en_d_reg_r_0_n_0),
        .R(reset));
  FDRE detect_en_d_reg_r_1
       (.C(clk),
        .CE(clken),
        .D(detect_en_d_reg_r_0_n_0),
        .Q(detect_en_d_reg_r_1_n_0),
        .R(reset));
  FDRE gen_active_video_d_reg
       (.C(clk),
        .CE(clken),
        .D(active_video_reg),
        .Q(gen_active_video_d),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    gen_vblank_d_i_1
       (.I0(resetn_out),
        .O(reset));
  FDRE gen_vblank_d_reg
       (.C(clk),
        .CE(clken),
        .D(vblank_reg),
        .Q(gen_vblank_d),
        .R(reset));
  (* srl_bus_name = "U0/\U_TC_TOP/generate_en_d_reg " *) 
  (* srl_name = "U0/\U_TC_TOP/generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0 " *) 
  SRL16E \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(clken),
        .CLK(clk),
        .D(\GEN_GENERATOR.U_TC_GEN_n_9 ),
        .Q(\generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0 ));
  FDRE \generate_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1 
       (.C(clk),
        .CE(clken),
        .D(\generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0 ),
        .Q(\generate_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \generate_en_d_reg[3] 
       (.C(clk),
        .CE(clken),
        .D(generate_en_d_reg_gate_n_0),
        .Q(p_0_in0_in),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    generate_en_d_reg_gate
       (.I0(\generate_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0 ),
        .I1(detect_en_d_reg_r_1_n_0),
        .O(generate_en_d_reg_gate_n_0));
  LUT4 #(
    .INIT(16'hB000)) 
    \intr_status_int[10]_i_1 
       (.I0(p_0_in),
        .I1(clken),
        .I2(resetn_out),
        .I3(\genr_status_regs[1] [1]),
        .O(\intr_status_int[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \intr_status_int[11]_i_1 
       (.I0(p_0_in),
        .I1(clken),
        .I2(resetn_out),
        .I3(\genr_status_regs[1] [2]),
        .O(\intr_status_int[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3000000AAAA0000)) 
    \intr_status_int[12]_i_1 
       (.I0(\genr_status_regs[1] [3]),
        .I1(\time_control_regs[19] [0]),
        .I2(vblank_reg),
        .I3(p_0_in0_in),
        .I4(resetn_out),
        .I5(clken),
        .O(\intr_status_int[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFAAAA8A00AAAA)) 
    \intr_status_int[13]_i_1 
       (.I0(\GEN_GENERATOR.U_TC_GEN_n_10 ),
        .I1(p_1_out),
        .I2(p_0_in0_in),
        .I3(clken),
        .I4(resetn_out),
        .I5(\genr_status_regs[1] [4]),
        .O(\intr_status_int[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC000AA00)) 
    \intr_status_int[16]_i_1 
       (.I0(\genr_status_regs[1] [5]),
        .I1(fsync_out),
        .I2(p_0_in0_in),
        .I3(resetn_out),
        .I4(clken),
        .O(\intr_status_int[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC0A0)) 
    \intr_status_int[9]_i_1 
       (.I0(\genr_status_regs[1] [0]),
        .I1(p_0_in),
        .I2(resetn_out),
        .I3(clken),
        .O(\intr_status_int[9]_i_1_n_0 ));
  FDRE \intr_status_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\intr_status_int[10]_i_1_n_0 ),
        .Q(\genr_status_regs[1] [1]),
        .R(1'b0));
  FDRE \intr_status_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\intr_status_int[11]_i_1_n_0 ),
        .Q(\genr_status_regs[1] [2]),
        .R(1'b0));
  FDRE \intr_status_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\intr_status_int[12]_i_1_n_0 ),
        .Q(\genr_status_regs[1] [3]),
        .R(1'b0));
  FDRE \intr_status_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\intr_status_int[13]_i_1_n_0 ),
        .Q(\genr_status_regs[1] [4]),
        .R(1'b0));
  FDRE \intr_status_int_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\intr_status_int[16]_i_1_n_0 ),
        .Q(\genr_status_regs[1] [5]),
        .R(1'b0));
  FDRE \intr_status_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\intr_status_int[9]_i_1_n_0 ),
        .Q(\genr_status_regs[1] [0]),
        .R(1'b0));
endmodule

(* C_CONTROL = "0" *) (* C_DETECT_EN = "0" *) (* C_DET_ACHROMA_EN = "0" *) 
(* C_DET_AVIDEO_EN = "1" *) (* C_DET_FIELDID_EN = "0" *) (* C_DET_HBLANK_EN = "1" *) 
(* C_DET_HSYNC_EN = "1" *) (* C_DET_VBLANK_EN = "1" *) (* C_DET_VSYNC_EN = "1" *) 
(* C_FAMILY = "virtex5" *) (* C_FSYNC_HSTART0 = "0" *) (* C_FSYNC_HSTART1 = "0" *) 
(* C_FSYNC_HSTART10 = "0" *) (* C_FSYNC_HSTART11 = "0" *) (* C_FSYNC_HSTART12 = "0" *) 
(* C_FSYNC_HSTART13 = "0" *) (* C_FSYNC_HSTART14 = "0" *) (* C_FSYNC_HSTART15 = "0" *) 
(* C_FSYNC_HSTART2 = "0" *) (* C_FSYNC_HSTART3 = "0" *) (* C_FSYNC_HSTART4 = "0" *) 
(* C_FSYNC_HSTART5 = "0" *) (* C_FSYNC_HSTART6 = "0" *) (* C_FSYNC_HSTART7 = "0" *) 
(* C_FSYNC_HSTART8 = "0" *) (* C_FSYNC_HSTART9 = "0" *) (* C_FSYNC_VSTART0 = "0" *) 
(* C_FSYNC_VSTART1 = "0" *) (* C_FSYNC_VSTART10 = "0" *) (* C_FSYNC_VSTART11 = "0" *) 
(* C_FSYNC_VSTART12 = "0" *) (* C_FSYNC_VSTART13 = "0" *) (* C_FSYNC_VSTART14 = "0" *) 
(* C_FSYNC_VSTART15 = "0" *) (* C_FSYNC_VSTART2 = "0" *) (* C_FSYNC_VSTART3 = "0" *) 
(* C_FSYNC_VSTART4 = "0" *) (* C_FSYNC_VSTART5 = "0" *) (* C_FSYNC_VSTART6 = "0" *) 
(* C_FSYNC_VSTART7 = "0" *) (* C_FSYNC_VSTART8 = "0" *) (* C_FSYNC_VSTART9 = "0" *) 
(* C_GENERATE_EN = "1" *) (* C_GEN_ACHROMA_EN = "0" *) (* C_GEN_ACHROMA_POLARITY = "1" *) 
(* C_GEN_AUTO_SWITCH = "0" *) (* C_GEN_AVIDEO_EN = "1" *) (* C_GEN_AVIDEO_POLARITY = "1" *) 
(* C_GEN_CPARITY = "0" *) (* C_GEN_F0_VBLANK_HEND = "2560" *) (* C_GEN_F0_VBLANK_HSTART = "2560" *) 
(* C_GEN_F0_VFRAME_SIZE = "1940" *) (* C_GEN_F0_VSYNC_HEND = "2560" *) (* C_GEN_F0_VSYNC_HSTART = "2560" *) 
(* C_GEN_F0_VSYNC_VEND = "1935" *) (* C_GEN_F0_VSYNC_VSTART = "1925" *) (* C_GEN_F1_VBLANK_HEND = "1280" *) 
(* C_GEN_F1_VBLANK_HSTART = "1280" *) (* C_GEN_F1_VFRAME_SIZE = "750" *) (* C_GEN_F1_VSYNC_HEND = "1280" *) 
(* C_GEN_F1_VSYNC_HSTART = "1280" *) (* C_GEN_F1_VSYNC_VEND = "729" *) (* C_GEN_F1_VSYNC_VSTART = "724" *) 
(* C_GEN_FIELDID_EN = "0" *) (* C_GEN_FIELDID_POLARITY = "1" *) (* C_GEN_HACTIVE_SIZE = "2560" *) 
(* C_GEN_HBLANK_EN = "1" *) (* C_GEN_HBLANK_POLARITY = "1" *) (* C_GEN_HFRAME_SIZE = "2760" *) 
(* C_GEN_HSYNC_EN = "1" *) (* C_GEN_HSYNC_END = "2710" *) (* C_GEN_HSYNC_POLARITY = "1" *) 
(* C_GEN_HSYNC_START = "2610" *) (* C_GEN_INTERLACED = "0" *) (* C_GEN_VACTIVE_SIZE = "1920" *) 
(* C_GEN_VBLANK_EN = "1" *) (* C_GEN_VBLANK_POLARITY = "1" *) (* C_GEN_VIDEO_FORMAT = "2" *) 
(* C_GEN_VSYNC_EN = "1" *) (* C_GEN_VSYNC_POLARITY = "1" *) (* C_HAS_AXI4_LITE = "0" *) 
(* C_HAS_INTC_IF = "0" *) (* C_INTERLACE_EN = "0" *) (* C_IRQEN = "0" *) 
(* C_LINE_DELAY = "0" *) (* C_MAX_LINES = "4096" *) (* C_MAX_PIXELS = "4096" *) 
(* C_NUM_FSYNCS = "1" *) (* C_PIXEL_DELAY = "0" *) (* C_SYNC_EN = "0" *) 
(* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_CLK_FREQ_HZ = "100000000" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* ORIG_REF_NAME = "v_tc" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_v_tc_0_0_v_tc
   (s_axi_aclk,
    s_axi_aclken,
    s_axi_aresetn,
    clk,
    clken,
    resetn,
    det_clken,
    gen_clken,
    intc_if,
    hsync_in,
    hblank_in,
    vsync_in,
    vblank_in,
    field_id_in,
    active_video_in,
    active_chroma_in,
    fsync_in,
    fsync_out,
    hsync_out,
    hblank_out,
    vsync_out,
    vblank_out,
    field_id_out,
    active_video_out,
    active_chroma_out,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    irq);
  (* sigis = "CLK" *) input s_axi_aclk;
  input s_axi_aclken;
  (* sigis = "RST" *) input s_axi_aresetn;
  (* sigis = "CLK" *) input clk;
  input clken;
  (* sigis = "RST" *) input resetn;
  input det_clken;
  input gen_clken;
  output [31:0]intc_if;
  input hsync_in;
  input hblank_in;
  input vsync_in;
  input vblank_in;
  input field_id_in;
  input active_video_in;
  input active_chroma_in;
  input fsync_in;
  output [0:0]fsync_out;
  output hsync_out;
  output hblank_out;
  output vsync_out;
  output vblank_out;
  output field_id_out;
  output active_video_out;
  output active_chroma_out;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output irq;

  wire \<const0> ;
  wire U_VIDEO_CTRL_n_1022;
  wire U_VIDEO_CTRL_n_1023;
  wire U_VIDEO_CTRL_n_1024;
  wire U_VIDEO_CTRL_n_1025;
  wire U_VIDEO_CTRL_n_1054;
  wire U_VIDEO_CTRL_n_1055;
  wire U_VIDEO_CTRL_n_1056;
  wire U_VIDEO_CTRL_n_1057;
  wire U_VIDEO_CTRL_n_1086;
  wire U_VIDEO_CTRL_n_1087;
  wire U_VIDEO_CTRL_n_1088;
  wire U_VIDEO_CTRL_n_1089;
  wire U_VIDEO_CTRL_n_1118;
  wire U_VIDEO_CTRL_n_1119;
  wire U_VIDEO_CTRL_n_1120;
  wire U_VIDEO_CTRL_n_1121;
  wire U_VIDEO_CTRL_n_1150;
  wire U_VIDEO_CTRL_n_1151;
  wire U_VIDEO_CTRL_n_1152;
  wire U_VIDEO_CTRL_n_1153;
  wire U_VIDEO_CTRL_n_1154;
  wire U_VIDEO_CTRL_n_1155;
  wire U_VIDEO_CTRL_n_1156;
  wire U_VIDEO_CTRL_n_1157;
  wire U_VIDEO_CTRL_n_1158;
  wire U_VIDEO_CTRL_n_1159;
  wire U_VIDEO_CTRL_n_1160;
  wire U_VIDEO_CTRL_n_1161;
  wire U_VIDEO_CTRL_n_1162;
  wire U_VIDEO_CTRL_n_1163;
  wire U_VIDEO_CTRL_n_1164;
  wire U_VIDEO_CTRL_n_1165;
  wire U_VIDEO_CTRL_n_1182;
  wire U_VIDEO_CTRL_n_1183;
  wire U_VIDEO_CTRL_n_1184;
  wire U_VIDEO_CTRL_n_1185;
  wire U_VIDEO_CTRL_n_1694;
  wire U_VIDEO_CTRL_n_1695;
  wire U_VIDEO_CTRL_n_1696;
  wire U_VIDEO_CTRL_n_1697;
  wire U_VIDEO_CTRL_n_734;
  wire U_VIDEO_CTRL_n_735;
  wire U_VIDEO_CTRL_n_736;
  wire U_VIDEO_CTRL_n_737;
  wire U_VIDEO_CTRL_n_806;
  wire U_VIDEO_CTRL_n_808;
  wire U_VIDEO_CTRL_n_809;
  wire U_VIDEO_CTRL_n_810;
  wire U_VIDEO_CTRL_n_811;
  wire U_VIDEO_CTRL_n_894;
  wire U_VIDEO_CTRL_n_895;
  wire U_VIDEO_CTRL_n_896;
  wire U_VIDEO_CTRL_n_897;
  wire U_VIDEO_CTRL_n_926;
  wire U_VIDEO_CTRL_n_927;
  wire U_VIDEO_CTRL_n_928;
  wire U_VIDEO_CTRL_n_929;
  wire U_VIDEO_CTRL_n_958;
  wire U_VIDEO_CTRL_n_959;
  wire U_VIDEO_CTRL_n_960;
  wire U_VIDEO_CTRL_n_961;
  wire U_VIDEO_CTRL_n_990;
  wire U_VIDEO_CTRL_n_991;
  wire U_VIDEO_CTRL_n_992;
  wire U_VIDEO_CTRL_n_993;
  wire active_chroma_out;
  wire active_video_out;
  wire clk;
  wire clken;
  wire [27:0]\core_control_regs[0] ;
  wire [27:0]\core_control_regs[16] ;
  wire core_d;
  wire field_id_in;
  wire fsync_in;
  wire [0:0]fsync_out;
  wire gen_clken;
  wire [0:0]gen_v0chroma_start;
  wire \gen_v0chroma_start[0]_i_1_n_0 ;
  wire [31:0]\genr_control_regs[0] ;
  wire hblank_out;
  wire hsync_out;
  wire [16:9]\^intc_if ;
  wire irq;
  wire reg_update;
  wire resetn;
  wire s_axi_aclk;
  wire s_axi_aclken;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [27:0]\time_control_regs[16] ;
  wire [9:0]\time_control_regs[18] ;
  wire [6:0]\time_control_regs[19] ;
  wire [11:0]\time_control_regs[20] ;
  wire [27:0]\time_control_regs[21] ;
  wire [27:0]\time_control_regs[22] ;
  wire [27:0]\time_control_regs[23] ;
  wire [27:0]\time_control_regs[24] ;
  wire [27:0]\time_control_regs[25] ;
  wire [27:0]\time_control_regs[26] ;
  wire [27:0]\time_control_regs[27] ;
  wire [27:0]\time_control_regs[28] ;
  wire [27:16]\time_control_regs[29] ;
  wire vblank_out;
  wire vresetn;
  wire vsync_out;
  wire NLW_U_VIDEO_CTRL_ipif_cs_out_UNCONNECTED;
  wire NLW_U_VIDEO_CTRL_ipif_rnw_out_UNCONNECTED;
  wire [31:28]\NLW_U_VIDEO_CTRL_core_control_regs[0]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[10]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[11]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[12]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[13]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[14]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[15]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_core_control_regs[16]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[1]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[2]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[3]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[4]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[5]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[6]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[7]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[8]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_core_control_regs[9]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[1]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[2]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[3]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[4]_UNCONNECTED ;
  wire [8:0]NLW_U_VIDEO_CTRL_ipif_addr_out_UNCONNECTED;
  wire [31:0]NLW_U_VIDEO_CTRL_ipif_data_out_UNCONNECTED;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[0]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[10]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[11]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[12]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[13]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[14]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[15]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_time_control_regs[16]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[17]_UNCONNECTED ;
  wire [31:10]\NLW_U_VIDEO_CTRL_time_control_regs[18]_UNCONNECTED ;
  wire [31:7]\NLW_U_VIDEO_CTRL_time_control_regs[19]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[1]_UNCONNECTED ;
  wire [31:12]\NLW_U_VIDEO_CTRL_time_control_regs[20]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_time_control_regs[21]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_time_control_regs[22]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_time_control_regs[23]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_time_control_regs[24]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_time_control_regs[25]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_time_control_regs[26]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_time_control_regs[27]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_time_control_regs[28]_UNCONNECTED ;
  wire [31:28]\NLW_U_VIDEO_CTRL_time_control_regs[29]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[2]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[3]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[4]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[5]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[6]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[7]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[8]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[9]_UNCONNECTED ;

  assign field_id_out = \<const0> ;
  assign intc_if[31] = \<const0> ;
  assign intc_if[30] = \<const0> ;
  assign intc_if[29] = \<const0> ;
  assign intc_if[28] = \<const0> ;
  assign intc_if[27] = \<const0> ;
  assign intc_if[26] = \<const0> ;
  assign intc_if[25] = \<const0> ;
  assign intc_if[24] = \<const0> ;
  assign intc_if[23] = \<const0> ;
  assign intc_if[22] = \<const0> ;
  assign intc_if[21] = \<const0> ;
  assign intc_if[20] = \<const0> ;
  assign intc_if[19] = \<const0> ;
  assign intc_if[18] = \<const0> ;
  assign intc_if[17] = \<const0> ;
  assign intc_if[16] = \^intc_if [16];
  assign intc_if[15] = \<const0> ;
  assign intc_if[14] = \<const0> ;
  assign intc_if[13:9] = \^intc_if [13:9];
  assign intc_if[8] = \<const0> ;
  assign intc_if[7] = \<const0> ;
  assign intc_if[6] = \<const0> ;
  assign intc_if[5] = \<const0> ;
  assign intc_if[4] = \<const0> ;
  assign intc_if[3] = \<const0> ;
  assign intc_if[2] = \<const0> ;
  assign intc_if[1] = \<const0> ;
  assign intc_if[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_v_tc_0_0_tc_top U_TC_TOP
       (.D(\time_control_regs[20] ),
        .active_chroma_out(active_chroma_out),
        .active_video_reg(active_video_out),
        .clk(clk),
        .clken(clken),
        .\core_control_regs[0] ({\core_control_regs[0] [27:16],\core_control_regs[0] [11:0]}),
        .core_d_out(core_d),
        .fsync_in(fsync_in),
        .fsync_out(fsync_out),
        .gen_clken(gen_clken),
        .\genr_control_regs[0] ({\genr_control_regs[0] [5],\genr_control_regs[0] [3:2],\genr_control_regs[0] [0]}),
        .\genr_status_regs[1] ({\^intc_if [16],\^intc_if [13:9]}),
        .hblank_out(hblank_out),
        .hsync_out(hsync_out),
        .reg_update(reg_update),
        .resetn_out(vresetn),
        .\time_control_regs[16] ({\time_control_regs[16] [27:16],\time_control_regs[16] [11:0]}),
        .\time_control_regs[19] (\time_control_regs[19] [5:0]),
        .\time_control_regs[21] (\time_control_regs[21] [11:0]),
        .\time_control_regs[22] ({\time_control_regs[22] [27:16],\time_control_regs[22] [11:0]}),
        .\time_control_regs[23] ({\time_control_regs[23] [27:16],\time_control_regs[23] [11:0]}),
        .\time_control_regs[24] ({\time_control_regs[24] [27:16],\time_control_regs[24] [11:0]}),
        .\time_control_regs[25] ({\time_control_regs[25] [27:16],\time_control_regs[25] [11:0]}),
        .vblank_reg(vblank_out),
        .vsync_out(vsync_out));
  (* C_COREGEN_PATCH = "0" *) 
  (* C_CORE_AXI_WRITE = "544'b0000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111" *) 
  (* C_CORE_DBUFFER = "544'b0000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100000000000000000000000000000000" *) 
  (* C_CORE_DEFAULT = "544'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_CORE_NUM_REGS = "17" *) 
  (* C_FAMILY = "virtex5" *) 
  (* C_GENR_AXI_WRITE = "160'b1100011111111111111011110010111111111111111111110011111100000000000000000011111100000000000000001111111111111111001111110000000000000000000000000000000000000000" *) 
  (* C_GENR_DBUFFER = "160'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_GENR_DEFAULT = "160'b0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_GENR_NUM_REGS = "5" *) 
  (* C_GENR_SELFCLR = "256'b0000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_HAS_AXI4_LITE = "0" *) 
  (* C_HAS_IRQ = "0" *) 
  (* C_IS_EVAL = "FALSE" *) 
  (* C_REVISION_NUMBER = "11" *) 
  (* C_SRESET_LENGTH = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TIMEOUT_HOURS = "8" *) 
  (* C_TIMEOUT_MINS = "0" *) 
  (* C_TIME_AXI_WRITE = "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111000111111111111100000000000000000000000000000000000000000000000000000011110011110000000000000000000000000111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111" *) 
  (* C_TIME_DBUFFER = "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111000111111111111100000000000000000000000000000000000000000000000000000011100000000000000000000000000000000011111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111" *) 
  (* C_TIME_DEFAULT = "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011110000000000010100000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000111111100000000000000000000101011001000000000101110111000000111100101000000101010010110000010100011001000001010000000000000101000000000000001111000111100000111100001010000101000000000000010100000000000000101000000000000010100000000000000101101100100000010110101000000010100000000000001010000000000000111100000000000101000000000" *) 
  (* C_TIME_NUM_REGS = "30" *) 
  (* C_VERSION_MAJOR = "6" *) 
  (* C_VERSION_MINOR = "1" *) 
  (* C_VERSION_REVISION = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_v_tc_0_0_video_ctrl U_VIDEO_CTRL
       (.aclk(s_axi_aclk),
        .aclk_en(s_axi_aclken),
        .aresetn(s_axi_aresetn),
        .\core_control_regs[0] ({\NLW_U_VIDEO_CTRL_core_control_regs[0]_UNCONNECTED [31:28],\core_control_regs[0] [27:16],U_VIDEO_CTRL_n_1182,U_VIDEO_CTRL_n_1183,U_VIDEO_CTRL_n_1184,U_VIDEO_CTRL_n_1185,\core_control_regs[0] [11:0]}),
        .\core_control_regs[10] (\NLW_U_VIDEO_CTRL_core_control_regs[10]_UNCONNECTED [31:0]),
        .\core_control_regs[11] (\NLW_U_VIDEO_CTRL_core_control_regs[11]_UNCONNECTED [31:0]),
        .\core_control_regs[12] (\NLW_U_VIDEO_CTRL_core_control_regs[12]_UNCONNECTED [31:0]),
        .\core_control_regs[13] (\NLW_U_VIDEO_CTRL_core_control_regs[13]_UNCONNECTED [31:0]),
        .\core_control_regs[14] (\NLW_U_VIDEO_CTRL_core_control_regs[14]_UNCONNECTED [31:0]),
        .\core_control_regs[15] (\NLW_U_VIDEO_CTRL_core_control_regs[15]_UNCONNECTED [31:0]),
        .\core_control_regs[16] ({\NLW_U_VIDEO_CTRL_core_control_regs[16]_UNCONNECTED [31:28],\core_control_regs[16] [27:16],U_VIDEO_CTRL_n_1694,U_VIDEO_CTRL_n_1695,U_VIDEO_CTRL_n_1696,U_VIDEO_CTRL_n_1697,\core_control_regs[16] [11:0]}),
        .\core_control_regs[1] (\NLW_U_VIDEO_CTRL_core_control_regs[1]_UNCONNECTED [31:0]),
        .\core_control_regs[2] (\NLW_U_VIDEO_CTRL_core_control_regs[2]_UNCONNECTED [31:0]),
        .\core_control_regs[3] (\NLW_U_VIDEO_CTRL_core_control_regs[3]_UNCONNECTED [31:0]),
        .\core_control_regs[4] (\NLW_U_VIDEO_CTRL_core_control_regs[4]_UNCONNECTED [31:0]),
        .\core_control_regs[5] (\NLW_U_VIDEO_CTRL_core_control_regs[5]_UNCONNECTED [31:0]),
        .\core_control_regs[6] (\NLW_U_VIDEO_CTRL_core_control_regs[6]_UNCONNECTED [31:0]),
        .\core_control_regs[7] (\NLW_U_VIDEO_CTRL_core_control_regs[7]_UNCONNECTED [31:0]),
        .\core_control_regs[8] (\NLW_U_VIDEO_CTRL_core_control_regs[8]_UNCONNECTED [31:0]),
        .\core_control_regs[9] (\NLW_U_VIDEO_CTRL_core_control_regs[9]_UNCONNECTED [31:0]),
        .core_d_out(core_d),
        .\core_status_regs[0] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[10] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[11] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[12] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[13] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[14] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[15] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[16] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[1] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[2] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[3] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[4] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[5] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[6] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[7] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[8] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[9] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_control_regs[0] (\genr_control_regs[0] ),
        .\genr_control_regs[1] (\NLW_U_VIDEO_CTRL_genr_control_regs[1]_UNCONNECTED [31:0]),
        .\genr_control_regs[2] (\NLW_U_VIDEO_CTRL_genr_control_regs[2]_UNCONNECTED [31:0]),
        .\genr_control_regs[3] (\NLW_U_VIDEO_CTRL_genr_control_regs[3]_UNCONNECTED [31:0]),
        .\genr_control_regs[4] (\NLW_U_VIDEO_CTRL_genr_control_regs[4]_UNCONNECTED [31:0]),
        .\genr_status_regs[0] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_status_regs[1] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\^intc_if [16],1'b0,1'b0,\^intc_if [13:9],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_status_regs[2] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_status_regs[3] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_status_regs[4] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ipif_addr_out(NLW_U_VIDEO_CTRL_ipif_addr_out_UNCONNECTED[8:0]),
        .ipif_cs_out(NLW_U_VIDEO_CTRL_ipif_cs_out_UNCONNECTED),
        .ipif_data_out(NLW_U_VIDEO_CTRL_ipif_data_out_UNCONNECTED[31:0]),
        .ipif_rnw_out(NLW_U_VIDEO_CTRL_ipif_rnw_out_UNCONNECTED),
        .irq(irq),
        .reg_update(reg_update),
        .resetn_out(vresetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\time_control_regs[0] (\NLW_U_VIDEO_CTRL_time_control_regs[0]_UNCONNECTED [31:0]),
        .\time_control_regs[10] (\NLW_U_VIDEO_CTRL_time_control_regs[10]_UNCONNECTED [31:0]),
        .\time_control_regs[11] (\NLW_U_VIDEO_CTRL_time_control_regs[11]_UNCONNECTED [31:0]),
        .\time_control_regs[12] (\NLW_U_VIDEO_CTRL_time_control_regs[12]_UNCONNECTED [31:0]),
        .\time_control_regs[13] (\NLW_U_VIDEO_CTRL_time_control_regs[13]_UNCONNECTED [31:0]),
        .\time_control_regs[14] (\NLW_U_VIDEO_CTRL_time_control_regs[14]_UNCONNECTED [31:0]),
        .\time_control_regs[15] (\NLW_U_VIDEO_CTRL_time_control_regs[15]_UNCONNECTED [31:0]),
        .\time_control_regs[16] ({\NLW_U_VIDEO_CTRL_time_control_regs[16]_UNCONNECTED [31:28],\time_control_regs[16] [27:16],U_VIDEO_CTRL_n_734,U_VIDEO_CTRL_n_735,U_VIDEO_CTRL_n_736,U_VIDEO_CTRL_n_737,\time_control_regs[16] [11:0]}),
        .\time_control_regs[17] (\NLW_U_VIDEO_CTRL_time_control_regs[17]_UNCONNECTED [31:0]),
        .\time_control_regs[18] ({\NLW_U_VIDEO_CTRL_time_control_regs[18]_UNCONNECTED [31:10],\time_control_regs[18] [9:8],U_VIDEO_CTRL_n_806,\time_control_regs[18] [6],U_VIDEO_CTRL_n_808,U_VIDEO_CTRL_n_809,U_VIDEO_CTRL_n_810,U_VIDEO_CTRL_n_811,\time_control_regs[18] [1:0]}),
        .\time_control_regs[19] ({\NLW_U_VIDEO_CTRL_time_control_regs[19]_UNCONNECTED [31:7],\time_control_regs[19] }),
        .\time_control_regs[1] (\NLW_U_VIDEO_CTRL_time_control_regs[1]_UNCONNECTED [31:0]),
        .\time_control_regs[20] ({\NLW_U_VIDEO_CTRL_time_control_regs[20]_UNCONNECTED [31:12],\time_control_regs[20] }),
        .\time_control_regs[21] ({\NLW_U_VIDEO_CTRL_time_control_regs[21]_UNCONNECTED [31:28],\time_control_regs[21] [27:16],U_VIDEO_CTRL_n_894,U_VIDEO_CTRL_n_895,U_VIDEO_CTRL_n_896,U_VIDEO_CTRL_n_897,\time_control_regs[21] [11:0]}),
        .\time_control_regs[22] ({\NLW_U_VIDEO_CTRL_time_control_regs[22]_UNCONNECTED [31:28],\time_control_regs[22] [27:16],U_VIDEO_CTRL_n_926,U_VIDEO_CTRL_n_927,U_VIDEO_CTRL_n_928,U_VIDEO_CTRL_n_929,\time_control_regs[22] [11:0]}),
        .\time_control_regs[23] ({\NLW_U_VIDEO_CTRL_time_control_regs[23]_UNCONNECTED [31:28],\time_control_regs[23] [27:16],U_VIDEO_CTRL_n_958,U_VIDEO_CTRL_n_959,U_VIDEO_CTRL_n_960,U_VIDEO_CTRL_n_961,\time_control_regs[23] [11:0]}),
        .\time_control_regs[24] ({\NLW_U_VIDEO_CTRL_time_control_regs[24]_UNCONNECTED [31:28],\time_control_regs[24] [27:16],U_VIDEO_CTRL_n_990,U_VIDEO_CTRL_n_991,U_VIDEO_CTRL_n_992,U_VIDEO_CTRL_n_993,\time_control_regs[24] [11:0]}),
        .\time_control_regs[25] ({\NLW_U_VIDEO_CTRL_time_control_regs[25]_UNCONNECTED [31:28],\time_control_regs[25] [27:16],U_VIDEO_CTRL_n_1022,U_VIDEO_CTRL_n_1023,U_VIDEO_CTRL_n_1024,U_VIDEO_CTRL_n_1025,\time_control_regs[25] [11:0]}),
        .\time_control_regs[26] ({\NLW_U_VIDEO_CTRL_time_control_regs[26]_UNCONNECTED [31:28],\time_control_regs[26] [27:16],U_VIDEO_CTRL_n_1054,U_VIDEO_CTRL_n_1055,U_VIDEO_CTRL_n_1056,U_VIDEO_CTRL_n_1057,\time_control_regs[26] [11:0]}),
        .\time_control_regs[27] ({\NLW_U_VIDEO_CTRL_time_control_regs[27]_UNCONNECTED [31:28],\time_control_regs[27] [27:16],U_VIDEO_CTRL_n_1086,U_VIDEO_CTRL_n_1087,U_VIDEO_CTRL_n_1088,U_VIDEO_CTRL_n_1089,\time_control_regs[27] [11:0]}),
        .\time_control_regs[28] ({\NLW_U_VIDEO_CTRL_time_control_regs[28]_UNCONNECTED [31:28],\time_control_regs[28] [27:16],U_VIDEO_CTRL_n_1118,U_VIDEO_CTRL_n_1119,U_VIDEO_CTRL_n_1120,U_VIDEO_CTRL_n_1121,\time_control_regs[28] [11:0]}),
        .\time_control_regs[29] ({\NLW_U_VIDEO_CTRL_time_control_regs[29]_UNCONNECTED [31:28],\time_control_regs[29] ,U_VIDEO_CTRL_n_1150,U_VIDEO_CTRL_n_1151,U_VIDEO_CTRL_n_1152,U_VIDEO_CTRL_n_1153,U_VIDEO_CTRL_n_1154,U_VIDEO_CTRL_n_1155,U_VIDEO_CTRL_n_1156,U_VIDEO_CTRL_n_1157,U_VIDEO_CTRL_n_1158,U_VIDEO_CTRL_n_1159,U_VIDEO_CTRL_n_1160,U_VIDEO_CTRL_n_1161,U_VIDEO_CTRL_n_1162,U_VIDEO_CTRL_n_1163,U_VIDEO_CTRL_n_1164,U_VIDEO_CTRL_n_1165}),
        .\time_control_regs[2] (\NLW_U_VIDEO_CTRL_time_control_regs[2]_UNCONNECTED [31:0]),
        .\time_control_regs[3] (\NLW_U_VIDEO_CTRL_time_control_regs[3]_UNCONNECTED [31:0]),
        .\time_control_regs[4] (\NLW_U_VIDEO_CTRL_time_control_regs[4]_UNCONNECTED [31:0]),
        .\time_control_regs[5] (\NLW_U_VIDEO_CTRL_time_control_regs[5]_UNCONNECTED [31:0]),
        .\time_control_regs[6] (\NLW_U_VIDEO_CTRL_time_control_regs[6]_UNCONNECTED [31:0]),
        .\time_control_regs[7] (\NLW_U_VIDEO_CTRL_time_control_regs[7]_UNCONNECTED [31:0]),
        .\time_control_regs[8] (\NLW_U_VIDEO_CTRL_time_control_regs[8]_UNCONNECTED [31:0]),
        .\time_control_regs[9] (\NLW_U_VIDEO_CTRL_time_control_regs[9]_UNCONNECTED [31:0]),
        .\time_status_regs[0] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[10] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[11] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[12] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[13] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[14] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[15] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[16] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[17] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\^intc_if [13:12],1'b0}),
        .\time_status_regs[18] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[19] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[1] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\^intc_if [11:10],1'b0}),
        .\time_status_regs[20] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[21] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[22] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[23] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[24] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[25] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[26] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[27] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[28] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[29] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[2] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gen_v0chroma_start,field_id_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[3] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[4] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[5] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[6] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[7] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[8] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[9] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_aclk(clk),
        .vid_aclk_en(clken),
        .vid_aresetn(resetn));
  LUT6 #(
    .INIT(64'hC0A000A000A000A0)) 
    \gen_v0chroma_start[0]_i_1 
       (.I0(gen_v0chroma_start),
        .I1(\time_control_regs[18] [8]),
        .I2(resetn),
        .I3(clken),
        .I4(\time_control_regs[18] [0]),
        .I5(\time_control_regs[18] [1]),
        .O(\gen_v0chroma_start[0]_i_1_n_0 ));
  FDRE \gen_v0chroma_start_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\gen_v0chroma_start[0]_i_1_n_0 ),
        .Q(gen_v0chroma_start),
        .R(1'b0));
endmodule

(* C_COREGEN_PATCH = "0" *) (* C_CORE_AXI_WRITE = "544'b0000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111" *) (* C_CORE_DBUFFER = "544'b0000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100000000000000000000000000000000" *) 
(* C_CORE_DEFAULT = "544'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_CORE_NUM_REGS = "17" *) (* C_FAMILY = "virtex5" *) 
(* C_GENR_AXI_WRITE = "160'b1100011111111111111011110010111111111111111111110011111100000000000000000011111100000000000000001111111111111111001111110000000000000000000000000000000000000000" *) (* C_GENR_DBUFFER = "160'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_GENR_DEFAULT = "160'b0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_GENR_NUM_REGS = "5" *) (* C_GENR_SELFCLR = "256'b0000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_HAS_AXI4_LITE = "0" *) 
(* C_HAS_IRQ = "0" *) (* C_IS_EVAL = "FALSE" *) (* C_REVISION_NUMBER = "11" *) 
(* C_SRESET_LENGTH = "2" *) (* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_TIMEOUT_HOURS = "8" *) (* C_TIMEOUT_MINS = "0" *) (* C_TIME_AXI_WRITE = "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111000111111111111100000000000000000000000000000000000000000000000000000011110011110000000000000000000000000111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111" *) 
(* C_TIME_DBUFFER = "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111000111111111111100000000000000000000000000000000000000000000000000000011100000000000000000000000000000000011111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111" *) (* C_TIME_DEFAULT = "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011110000000000010100000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000111111100000000000000000000101011001000000000101110111000000111100101000000101010010110000010100011001000001010000000000000101000000000000001111000111100000111100001010000101000000000000010100000000000000101000000000000010100000000000000101101100100000010110101000000010100000000000001010000000000000111100000000000101000000000" *) (* C_TIME_NUM_REGS = "30" *) 
(* C_VERSION_MAJOR = "6" *) (* C_VERSION_MINOR = "1" *) (* C_VERSION_REVISION = "0" *) 
(* ORIG_REF_NAME = "video_ctrl" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_v_tc_0_0_video_ctrl
   (aclk,
    aclk_en,
    aresetn,
    vid_aclk,
    vid_aclk_en,
    vid_aresetn,
    reg_update,
    irq,
    resetn_out,
    core_d_out,
    ipif_addr_out,
    ipif_rnw_out,
    ipif_cs_out,
    ipif_data_out,
    \genr_control_regs[0] ,
    \genr_control_regs[1] ,
    \genr_control_regs[2] ,
    \genr_control_regs[3] ,
    \genr_control_regs[4] ,
    \genr_status_regs[0] ,
    \genr_status_regs[1] ,
    \genr_status_regs[2] ,
    \genr_status_regs[3] ,
    \genr_status_regs[4] ,
    \time_control_regs[0] ,
    \time_control_regs[1] ,
    \time_control_regs[2] ,
    \time_control_regs[3] ,
    \time_control_regs[4] ,
    \time_control_regs[5] ,
    \time_control_regs[6] ,
    \time_control_regs[7] ,
    \time_control_regs[8] ,
    \time_control_regs[9] ,
    \time_control_regs[10] ,
    \time_control_regs[11] ,
    \time_control_regs[12] ,
    \time_control_regs[13] ,
    \time_control_regs[14] ,
    \time_control_regs[15] ,
    \time_control_regs[16] ,
    \time_control_regs[17] ,
    \time_control_regs[18] ,
    \time_control_regs[19] ,
    \time_control_regs[20] ,
    \time_control_regs[21] ,
    \time_control_regs[22] ,
    \time_control_regs[23] ,
    \time_control_regs[24] ,
    \time_control_regs[25] ,
    \time_control_regs[26] ,
    \time_control_regs[27] ,
    \time_control_regs[28] ,
    \time_control_regs[29] ,
    \time_status_regs[0] ,
    \time_status_regs[1] ,
    \time_status_regs[2] ,
    \time_status_regs[3] ,
    \time_status_regs[4] ,
    \time_status_regs[5] ,
    \time_status_regs[6] ,
    \time_status_regs[7] ,
    \time_status_regs[8] ,
    \time_status_regs[9] ,
    \time_status_regs[10] ,
    \time_status_regs[11] ,
    \time_status_regs[12] ,
    \time_status_regs[13] ,
    \time_status_regs[14] ,
    \time_status_regs[15] ,
    \time_status_regs[16] ,
    \time_status_regs[17] ,
    \time_status_regs[18] ,
    \time_status_regs[19] ,
    \time_status_regs[20] ,
    \time_status_regs[21] ,
    \time_status_regs[22] ,
    \time_status_regs[23] ,
    \time_status_regs[24] ,
    \time_status_regs[25] ,
    \time_status_regs[26] ,
    \time_status_regs[27] ,
    \time_status_regs[28] ,
    \time_status_regs[29] ,
    \core_control_regs[0] ,
    \core_control_regs[1] ,
    \core_control_regs[2] ,
    \core_control_regs[3] ,
    \core_control_regs[4] ,
    \core_control_regs[5] ,
    \core_control_regs[6] ,
    \core_control_regs[7] ,
    \core_control_regs[8] ,
    \core_control_regs[9] ,
    \core_control_regs[10] ,
    \core_control_regs[11] ,
    \core_control_regs[12] ,
    \core_control_regs[13] ,
    \core_control_regs[14] ,
    \core_control_regs[15] ,
    \core_control_regs[16] ,
    \core_status_regs[0] ,
    \core_status_regs[1] ,
    \core_status_regs[2] ,
    \core_status_regs[3] ,
    \core_status_regs[4] ,
    \core_status_regs[5] ,
    \core_status_regs[6] ,
    \core_status_regs[7] ,
    \core_status_regs[8] ,
    \core_status_regs[9] ,
    \core_status_regs[10] ,
    \core_status_regs[11] ,
    \core_status_regs[12] ,
    \core_status_regs[13] ,
    \core_status_regs[14] ,
    \core_status_regs[15] ,
    \core_status_regs[16] ,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  input aclk;
  input aclk_en;
  input aresetn;
  input vid_aclk;
  input vid_aclk_en;
  input vid_aresetn;
  input reg_update;
  output irq;
  output resetn_out;
  output core_d_out;
  output [8:0]ipif_addr_out;
  output ipif_rnw_out;
  output ipif_cs_out;
  output [31:0]ipif_data_out;
  output [31:0]\genr_control_regs[0] ;
  output [31:0]\genr_control_regs[1] ;
  output [31:0]\genr_control_regs[2] ;
  output [31:0]\genr_control_regs[3] ;
  output [31:0]\genr_control_regs[4] ;
  input [31:0]\genr_status_regs[0] ;
  input [31:0]\genr_status_regs[1] ;
  input [31:0]\genr_status_regs[2] ;
  input [31:0]\genr_status_regs[3] ;
  input [31:0]\genr_status_regs[4] ;
  output [31:0]\time_control_regs[0] ;
  output [31:0]\time_control_regs[1] ;
  output [31:0]\time_control_regs[2] ;
  output [31:0]\time_control_regs[3] ;
  output [31:0]\time_control_regs[4] ;
  output [31:0]\time_control_regs[5] ;
  output [31:0]\time_control_regs[6] ;
  output [31:0]\time_control_regs[7] ;
  output [31:0]\time_control_regs[8] ;
  output [31:0]\time_control_regs[9] ;
  output [31:0]\time_control_regs[10] ;
  output [31:0]\time_control_regs[11] ;
  output [31:0]\time_control_regs[12] ;
  output [31:0]\time_control_regs[13] ;
  output [31:0]\time_control_regs[14] ;
  output [31:0]\time_control_regs[15] ;
  output [31:0]\time_control_regs[16] ;
  output [31:0]\time_control_regs[17] ;
  output [31:0]\time_control_regs[18] ;
  output [31:0]\time_control_regs[19] ;
  output [31:0]\time_control_regs[20] ;
  output [31:0]\time_control_regs[21] ;
  output [31:0]\time_control_regs[22] ;
  output [31:0]\time_control_regs[23] ;
  output [31:0]\time_control_regs[24] ;
  output [31:0]\time_control_regs[25] ;
  output [31:0]\time_control_regs[26] ;
  output [31:0]\time_control_regs[27] ;
  output [31:0]\time_control_regs[28] ;
  output [31:0]\time_control_regs[29] ;
  input [31:0]\time_status_regs[0] ;
  input [31:0]\time_status_regs[1] ;
  input [31:0]\time_status_regs[2] ;
  input [31:0]\time_status_regs[3] ;
  input [31:0]\time_status_regs[4] ;
  input [31:0]\time_status_regs[5] ;
  input [31:0]\time_status_regs[6] ;
  input [31:0]\time_status_regs[7] ;
  input [31:0]\time_status_regs[8] ;
  input [31:0]\time_status_regs[9] ;
  input [31:0]\time_status_regs[10] ;
  input [31:0]\time_status_regs[11] ;
  input [31:0]\time_status_regs[12] ;
  input [31:0]\time_status_regs[13] ;
  input [31:0]\time_status_regs[14] ;
  input [31:0]\time_status_regs[15] ;
  input [31:0]\time_status_regs[16] ;
  input [31:0]\time_status_regs[17] ;
  input [31:0]\time_status_regs[18] ;
  input [31:0]\time_status_regs[19] ;
  input [31:0]\time_status_regs[20] ;
  input [31:0]\time_status_regs[21] ;
  input [31:0]\time_status_regs[22] ;
  input [31:0]\time_status_regs[23] ;
  input [31:0]\time_status_regs[24] ;
  input [31:0]\time_status_regs[25] ;
  input [31:0]\time_status_regs[26] ;
  input [31:0]\time_status_regs[27] ;
  input [31:0]\time_status_regs[28] ;
  input [31:0]\time_status_regs[29] ;
  output [31:0]\core_control_regs[0] ;
  output [31:0]\core_control_regs[1] ;
  output [31:0]\core_control_regs[2] ;
  output [31:0]\core_control_regs[3] ;
  output [31:0]\core_control_regs[4] ;
  output [31:0]\core_control_regs[5] ;
  output [31:0]\core_control_regs[6] ;
  output [31:0]\core_control_regs[7] ;
  output [31:0]\core_control_regs[8] ;
  output [31:0]\core_control_regs[9] ;
  output [31:0]\core_control_regs[10] ;
  output [31:0]\core_control_regs[11] ;
  output [31:0]\core_control_regs[12] ;
  output [31:0]\core_control_regs[13] ;
  output [31:0]\core_control_regs[14] ;
  output [31:0]\core_control_regs[15] ;
  output [31:0]\core_control_regs[16] ;
  input [31:0]\core_status_regs[0] ;
  input [31:0]\core_status_regs[1] ;
  input [31:0]\core_status_regs[2] ;
  input [31:0]\core_status_regs[3] ;
  input [31:0]\core_status_regs[4] ;
  input [31:0]\core_status_regs[5] ;
  input [31:0]\core_status_regs[6] ;
  input [31:0]\core_status_regs[7] ;
  input [31:0]\core_status_regs[8] ;
  input [31:0]\core_status_regs[9] ;
  input [31:0]\core_status_regs[10] ;
  input [31:0]\core_status_regs[11] ;
  input [31:0]\core_status_regs[12] ;
  input [31:0]\core_status_regs[13] ;
  input [31:0]\core_status_regs[14] ;
  input [31:0]\core_status_regs[15] ;
  input [31:0]\core_status_regs[16] ;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire vid_aresetn;

  assign \core_control_regs[0] [31] = \<const0> ;
  assign \core_control_regs[0] [30] = \<const0> ;
  assign \core_control_regs[0] [29] = \<const0> ;
  assign \core_control_regs[0] [28] = \<const0> ;
  assign \core_control_regs[0] [27] = \<const0> ;
  assign \core_control_regs[0] [26] = \<const0> ;
  assign \core_control_regs[0] [25] = \<const0> ;
  assign \core_control_regs[0] [24] = \<const0> ;
  assign \core_control_regs[0] [23] = \<const0> ;
  assign \core_control_regs[0] [22] = \<const0> ;
  assign \core_control_regs[0] [21] = \<const0> ;
  assign \core_control_regs[0] [20] = \<const0> ;
  assign \core_control_regs[0] [19] = \<const0> ;
  assign \core_control_regs[0] [18] = \<const0> ;
  assign \core_control_regs[0] [17] = \<const0> ;
  assign \core_control_regs[0] [16] = \<const0> ;
  assign \core_control_regs[0] [15] = \<const0> ;
  assign \core_control_regs[0] [14] = \<const0> ;
  assign \core_control_regs[0] [13] = \<const0> ;
  assign \core_control_regs[0] [12] = \<const0> ;
  assign \core_control_regs[0] [11] = \<const0> ;
  assign \core_control_regs[0] [10] = \<const0> ;
  assign \core_control_regs[0] [9] = \<const0> ;
  assign \core_control_regs[0] [8] = \<const0> ;
  assign \core_control_regs[0] [7] = \<const0> ;
  assign \core_control_regs[0] [6] = \<const0> ;
  assign \core_control_regs[0] [5] = \<const0> ;
  assign \core_control_regs[0] [4] = \<const0> ;
  assign \core_control_regs[0] [3] = \<const0> ;
  assign \core_control_regs[0] [2] = \<const0> ;
  assign \core_control_regs[0] [1] = \<const0> ;
  assign \core_control_regs[0] [0] = \<const0> ;
  assign \core_control_regs[10] [31] = \<const0> ;
  assign \core_control_regs[10] [30] = \<const0> ;
  assign \core_control_regs[10] [29] = \<const0> ;
  assign \core_control_regs[10] [28] = \<const0> ;
  assign \core_control_regs[10] [27] = \<const0> ;
  assign \core_control_regs[10] [26] = \<const0> ;
  assign \core_control_regs[10] [25] = \<const0> ;
  assign \core_control_regs[10] [24] = \<const0> ;
  assign \core_control_regs[10] [23] = \<const0> ;
  assign \core_control_regs[10] [22] = \<const0> ;
  assign \core_control_regs[10] [21] = \<const0> ;
  assign \core_control_regs[10] [20] = \<const0> ;
  assign \core_control_regs[10] [19] = \<const0> ;
  assign \core_control_regs[10] [18] = \<const0> ;
  assign \core_control_regs[10] [17] = \<const0> ;
  assign \core_control_regs[10] [16] = \<const0> ;
  assign \core_control_regs[10] [15] = \<const0> ;
  assign \core_control_regs[10] [14] = \<const0> ;
  assign \core_control_regs[10] [13] = \<const0> ;
  assign \core_control_regs[10] [12] = \<const0> ;
  assign \core_control_regs[10] [11] = \<const0> ;
  assign \core_control_regs[10] [10] = \<const0> ;
  assign \core_control_regs[10] [9] = \<const0> ;
  assign \core_control_regs[10] [8] = \<const0> ;
  assign \core_control_regs[10] [7] = \<const0> ;
  assign \core_control_regs[10] [6] = \<const0> ;
  assign \core_control_regs[10] [5] = \<const0> ;
  assign \core_control_regs[10] [4] = \<const0> ;
  assign \core_control_regs[10] [3] = \<const0> ;
  assign \core_control_regs[10] [2] = \<const0> ;
  assign \core_control_regs[10] [1] = \<const0> ;
  assign \core_control_regs[10] [0] = \<const0> ;
  assign \core_control_regs[11] [31] = \<const0> ;
  assign \core_control_regs[11] [30] = \<const0> ;
  assign \core_control_regs[11] [29] = \<const0> ;
  assign \core_control_regs[11] [28] = \<const0> ;
  assign \core_control_regs[11] [27] = \<const0> ;
  assign \core_control_regs[11] [26] = \<const0> ;
  assign \core_control_regs[11] [25] = \<const0> ;
  assign \core_control_regs[11] [24] = \<const0> ;
  assign \core_control_regs[11] [23] = \<const0> ;
  assign \core_control_regs[11] [22] = \<const0> ;
  assign \core_control_regs[11] [21] = \<const0> ;
  assign \core_control_regs[11] [20] = \<const0> ;
  assign \core_control_regs[11] [19] = \<const0> ;
  assign \core_control_regs[11] [18] = \<const0> ;
  assign \core_control_regs[11] [17] = \<const0> ;
  assign \core_control_regs[11] [16] = \<const0> ;
  assign \core_control_regs[11] [15] = \<const0> ;
  assign \core_control_regs[11] [14] = \<const0> ;
  assign \core_control_regs[11] [13] = \<const0> ;
  assign \core_control_regs[11] [12] = \<const0> ;
  assign \core_control_regs[11] [11] = \<const0> ;
  assign \core_control_regs[11] [10] = \<const0> ;
  assign \core_control_regs[11] [9] = \<const0> ;
  assign \core_control_regs[11] [8] = \<const0> ;
  assign \core_control_regs[11] [7] = \<const0> ;
  assign \core_control_regs[11] [6] = \<const0> ;
  assign \core_control_regs[11] [5] = \<const0> ;
  assign \core_control_regs[11] [4] = \<const0> ;
  assign \core_control_regs[11] [3] = \<const0> ;
  assign \core_control_regs[11] [2] = \<const0> ;
  assign \core_control_regs[11] [1] = \<const0> ;
  assign \core_control_regs[11] [0] = \<const0> ;
  assign \core_control_regs[12] [31] = \<const0> ;
  assign \core_control_regs[12] [30] = \<const0> ;
  assign \core_control_regs[12] [29] = \<const0> ;
  assign \core_control_regs[12] [28] = \<const0> ;
  assign \core_control_regs[12] [27] = \<const0> ;
  assign \core_control_regs[12] [26] = \<const0> ;
  assign \core_control_regs[12] [25] = \<const0> ;
  assign \core_control_regs[12] [24] = \<const0> ;
  assign \core_control_regs[12] [23] = \<const0> ;
  assign \core_control_regs[12] [22] = \<const0> ;
  assign \core_control_regs[12] [21] = \<const0> ;
  assign \core_control_regs[12] [20] = \<const0> ;
  assign \core_control_regs[12] [19] = \<const0> ;
  assign \core_control_regs[12] [18] = \<const0> ;
  assign \core_control_regs[12] [17] = \<const0> ;
  assign \core_control_regs[12] [16] = \<const0> ;
  assign \core_control_regs[12] [15] = \<const0> ;
  assign \core_control_regs[12] [14] = \<const0> ;
  assign \core_control_regs[12] [13] = \<const0> ;
  assign \core_control_regs[12] [12] = \<const0> ;
  assign \core_control_regs[12] [11] = \<const0> ;
  assign \core_control_regs[12] [10] = \<const0> ;
  assign \core_control_regs[12] [9] = \<const0> ;
  assign \core_control_regs[12] [8] = \<const0> ;
  assign \core_control_regs[12] [7] = \<const0> ;
  assign \core_control_regs[12] [6] = \<const0> ;
  assign \core_control_regs[12] [5] = \<const0> ;
  assign \core_control_regs[12] [4] = \<const0> ;
  assign \core_control_regs[12] [3] = \<const0> ;
  assign \core_control_regs[12] [2] = \<const0> ;
  assign \core_control_regs[12] [1] = \<const0> ;
  assign \core_control_regs[12] [0] = \<const0> ;
  assign \core_control_regs[13] [31] = \<const0> ;
  assign \core_control_regs[13] [30] = \<const0> ;
  assign \core_control_regs[13] [29] = \<const0> ;
  assign \core_control_regs[13] [28] = \<const0> ;
  assign \core_control_regs[13] [27] = \<const0> ;
  assign \core_control_regs[13] [26] = \<const0> ;
  assign \core_control_regs[13] [25] = \<const0> ;
  assign \core_control_regs[13] [24] = \<const0> ;
  assign \core_control_regs[13] [23] = \<const0> ;
  assign \core_control_regs[13] [22] = \<const0> ;
  assign \core_control_regs[13] [21] = \<const0> ;
  assign \core_control_regs[13] [20] = \<const0> ;
  assign \core_control_regs[13] [19] = \<const0> ;
  assign \core_control_regs[13] [18] = \<const0> ;
  assign \core_control_regs[13] [17] = \<const0> ;
  assign \core_control_regs[13] [16] = \<const0> ;
  assign \core_control_regs[13] [15] = \<const0> ;
  assign \core_control_regs[13] [14] = \<const0> ;
  assign \core_control_regs[13] [13] = \<const0> ;
  assign \core_control_regs[13] [12] = \<const0> ;
  assign \core_control_regs[13] [11] = \<const0> ;
  assign \core_control_regs[13] [10] = \<const0> ;
  assign \core_control_regs[13] [9] = \<const0> ;
  assign \core_control_regs[13] [8] = \<const0> ;
  assign \core_control_regs[13] [7] = \<const0> ;
  assign \core_control_regs[13] [6] = \<const0> ;
  assign \core_control_regs[13] [5] = \<const0> ;
  assign \core_control_regs[13] [4] = \<const0> ;
  assign \core_control_regs[13] [3] = \<const0> ;
  assign \core_control_regs[13] [2] = \<const0> ;
  assign \core_control_regs[13] [1] = \<const0> ;
  assign \core_control_regs[13] [0] = \<const0> ;
  assign \core_control_regs[14] [31] = \<const0> ;
  assign \core_control_regs[14] [30] = \<const0> ;
  assign \core_control_regs[14] [29] = \<const0> ;
  assign \core_control_regs[14] [28] = \<const0> ;
  assign \core_control_regs[14] [27] = \<const0> ;
  assign \core_control_regs[14] [26] = \<const0> ;
  assign \core_control_regs[14] [25] = \<const0> ;
  assign \core_control_regs[14] [24] = \<const0> ;
  assign \core_control_regs[14] [23] = \<const0> ;
  assign \core_control_regs[14] [22] = \<const0> ;
  assign \core_control_regs[14] [21] = \<const0> ;
  assign \core_control_regs[14] [20] = \<const0> ;
  assign \core_control_regs[14] [19] = \<const0> ;
  assign \core_control_regs[14] [18] = \<const0> ;
  assign \core_control_regs[14] [17] = \<const0> ;
  assign \core_control_regs[14] [16] = \<const0> ;
  assign \core_control_regs[14] [15] = \<const0> ;
  assign \core_control_regs[14] [14] = \<const0> ;
  assign \core_control_regs[14] [13] = \<const0> ;
  assign \core_control_regs[14] [12] = \<const0> ;
  assign \core_control_regs[14] [11] = \<const0> ;
  assign \core_control_regs[14] [10] = \<const0> ;
  assign \core_control_regs[14] [9] = \<const0> ;
  assign \core_control_regs[14] [8] = \<const0> ;
  assign \core_control_regs[14] [7] = \<const0> ;
  assign \core_control_regs[14] [6] = \<const0> ;
  assign \core_control_regs[14] [5] = \<const0> ;
  assign \core_control_regs[14] [4] = \<const0> ;
  assign \core_control_regs[14] [3] = \<const0> ;
  assign \core_control_regs[14] [2] = \<const0> ;
  assign \core_control_regs[14] [1] = \<const0> ;
  assign \core_control_regs[14] [0] = \<const0> ;
  assign \core_control_regs[15] [31] = \<const0> ;
  assign \core_control_regs[15] [30] = \<const0> ;
  assign \core_control_regs[15] [29] = \<const0> ;
  assign \core_control_regs[15] [28] = \<const0> ;
  assign \core_control_regs[15] [27] = \<const0> ;
  assign \core_control_regs[15] [26] = \<const0> ;
  assign \core_control_regs[15] [25] = \<const0> ;
  assign \core_control_regs[15] [24] = \<const0> ;
  assign \core_control_regs[15] [23] = \<const0> ;
  assign \core_control_regs[15] [22] = \<const0> ;
  assign \core_control_regs[15] [21] = \<const0> ;
  assign \core_control_regs[15] [20] = \<const0> ;
  assign \core_control_regs[15] [19] = \<const0> ;
  assign \core_control_regs[15] [18] = \<const0> ;
  assign \core_control_regs[15] [17] = \<const0> ;
  assign \core_control_regs[15] [16] = \<const0> ;
  assign \core_control_regs[15] [15] = \<const0> ;
  assign \core_control_regs[15] [14] = \<const0> ;
  assign \core_control_regs[15] [13] = \<const0> ;
  assign \core_control_regs[15] [12] = \<const0> ;
  assign \core_control_regs[15] [11] = \<const0> ;
  assign \core_control_regs[15] [10] = \<const0> ;
  assign \core_control_regs[15] [9] = \<const0> ;
  assign \core_control_regs[15] [8] = \<const0> ;
  assign \core_control_regs[15] [7] = \<const0> ;
  assign \core_control_regs[15] [6] = \<const0> ;
  assign \core_control_regs[15] [5] = \<const0> ;
  assign \core_control_regs[15] [4] = \<const0> ;
  assign \core_control_regs[15] [3] = \<const0> ;
  assign \core_control_regs[15] [2] = \<const0> ;
  assign \core_control_regs[15] [1] = \<const0> ;
  assign \core_control_regs[15] [0] = \<const0> ;
  assign \core_control_regs[16] [31] = \<const0> ;
  assign \core_control_regs[16] [30] = \<const0> ;
  assign \core_control_regs[16] [29] = \<const0> ;
  assign \core_control_regs[16] [28] = \<const0> ;
  assign \core_control_regs[16] [27] = \<const0> ;
  assign \core_control_regs[16] [26] = \<const0> ;
  assign \core_control_regs[16] [25] = \<const0> ;
  assign \core_control_regs[16] [24] = \<const0> ;
  assign \core_control_regs[16] [23] = \<const0> ;
  assign \core_control_regs[16] [22] = \<const0> ;
  assign \core_control_regs[16] [21] = \<const0> ;
  assign \core_control_regs[16] [20] = \<const0> ;
  assign \core_control_regs[16] [19] = \<const0> ;
  assign \core_control_regs[16] [18] = \<const0> ;
  assign \core_control_regs[16] [17] = \<const0> ;
  assign \core_control_regs[16] [16] = \<const0> ;
  assign \core_control_regs[16] [15] = \<const0> ;
  assign \core_control_regs[16] [14] = \<const0> ;
  assign \core_control_regs[16] [13] = \<const0> ;
  assign \core_control_regs[16] [12] = \<const0> ;
  assign \core_control_regs[16] [11] = \<const0> ;
  assign \core_control_regs[16] [10] = \<const0> ;
  assign \core_control_regs[16] [9] = \<const0> ;
  assign \core_control_regs[16] [8] = \<const0> ;
  assign \core_control_regs[16] [7] = \<const0> ;
  assign \core_control_regs[16] [6] = \<const0> ;
  assign \core_control_regs[16] [5] = \<const0> ;
  assign \core_control_regs[16] [4] = \<const0> ;
  assign \core_control_regs[16] [3] = \<const0> ;
  assign \core_control_regs[16] [2] = \<const0> ;
  assign \core_control_regs[16] [1] = \<const0> ;
  assign \core_control_regs[16] [0] = \<const0> ;
  assign \core_control_regs[1] [31] = \<const0> ;
  assign \core_control_regs[1] [30] = \<const0> ;
  assign \core_control_regs[1] [29] = \<const0> ;
  assign \core_control_regs[1] [28] = \<const0> ;
  assign \core_control_regs[1] [27] = \<const0> ;
  assign \core_control_regs[1] [26] = \<const0> ;
  assign \core_control_regs[1] [25] = \<const0> ;
  assign \core_control_regs[1] [24] = \<const0> ;
  assign \core_control_regs[1] [23] = \<const0> ;
  assign \core_control_regs[1] [22] = \<const0> ;
  assign \core_control_regs[1] [21] = \<const0> ;
  assign \core_control_regs[1] [20] = \<const0> ;
  assign \core_control_regs[1] [19] = \<const0> ;
  assign \core_control_regs[1] [18] = \<const0> ;
  assign \core_control_regs[1] [17] = \<const0> ;
  assign \core_control_regs[1] [16] = \<const0> ;
  assign \core_control_regs[1] [15] = \<const0> ;
  assign \core_control_regs[1] [14] = \<const0> ;
  assign \core_control_regs[1] [13] = \<const0> ;
  assign \core_control_regs[1] [12] = \<const0> ;
  assign \core_control_regs[1] [11] = \<const0> ;
  assign \core_control_regs[1] [10] = \<const0> ;
  assign \core_control_regs[1] [9] = \<const0> ;
  assign \core_control_regs[1] [8] = \<const0> ;
  assign \core_control_regs[1] [7] = \<const0> ;
  assign \core_control_regs[1] [6] = \<const0> ;
  assign \core_control_regs[1] [5] = \<const0> ;
  assign \core_control_regs[1] [4] = \<const0> ;
  assign \core_control_regs[1] [3] = \<const0> ;
  assign \core_control_regs[1] [2] = \<const0> ;
  assign \core_control_regs[1] [1] = \<const0> ;
  assign \core_control_regs[1] [0] = \<const0> ;
  assign \core_control_regs[2] [31] = \<const0> ;
  assign \core_control_regs[2] [30] = \<const0> ;
  assign \core_control_regs[2] [29] = \<const0> ;
  assign \core_control_regs[2] [28] = \<const0> ;
  assign \core_control_regs[2] [27] = \<const0> ;
  assign \core_control_regs[2] [26] = \<const0> ;
  assign \core_control_regs[2] [25] = \<const0> ;
  assign \core_control_regs[2] [24] = \<const0> ;
  assign \core_control_regs[2] [23] = \<const0> ;
  assign \core_control_regs[2] [22] = \<const0> ;
  assign \core_control_regs[2] [21] = \<const0> ;
  assign \core_control_regs[2] [20] = \<const0> ;
  assign \core_control_regs[2] [19] = \<const0> ;
  assign \core_control_regs[2] [18] = \<const0> ;
  assign \core_control_regs[2] [17] = \<const0> ;
  assign \core_control_regs[2] [16] = \<const0> ;
  assign \core_control_regs[2] [15] = \<const0> ;
  assign \core_control_regs[2] [14] = \<const0> ;
  assign \core_control_regs[2] [13] = \<const0> ;
  assign \core_control_regs[2] [12] = \<const0> ;
  assign \core_control_regs[2] [11] = \<const0> ;
  assign \core_control_regs[2] [10] = \<const0> ;
  assign \core_control_regs[2] [9] = \<const0> ;
  assign \core_control_regs[2] [8] = \<const0> ;
  assign \core_control_regs[2] [7] = \<const0> ;
  assign \core_control_regs[2] [6] = \<const0> ;
  assign \core_control_regs[2] [5] = \<const0> ;
  assign \core_control_regs[2] [4] = \<const0> ;
  assign \core_control_regs[2] [3] = \<const0> ;
  assign \core_control_regs[2] [2] = \<const0> ;
  assign \core_control_regs[2] [1] = \<const0> ;
  assign \core_control_regs[2] [0] = \<const0> ;
  assign \core_control_regs[3] [31] = \<const0> ;
  assign \core_control_regs[3] [30] = \<const0> ;
  assign \core_control_regs[3] [29] = \<const0> ;
  assign \core_control_regs[3] [28] = \<const0> ;
  assign \core_control_regs[3] [27] = \<const0> ;
  assign \core_control_regs[3] [26] = \<const0> ;
  assign \core_control_regs[3] [25] = \<const0> ;
  assign \core_control_regs[3] [24] = \<const0> ;
  assign \core_control_regs[3] [23] = \<const0> ;
  assign \core_control_regs[3] [22] = \<const0> ;
  assign \core_control_regs[3] [21] = \<const0> ;
  assign \core_control_regs[3] [20] = \<const0> ;
  assign \core_control_regs[3] [19] = \<const0> ;
  assign \core_control_regs[3] [18] = \<const0> ;
  assign \core_control_regs[3] [17] = \<const0> ;
  assign \core_control_regs[3] [16] = \<const0> ;
  assign \core_control_regs[3] [15] = \<const0> ;
  assign \core_control_regs[3] [14] = \<const0> ;
  assign \core_control_regs[3] [13] = \<const0> ;
  assign \core_control_regs[3] [12] = \<const0> ;
  assign \core_control_regs[3] [11] = \<const0> ;
  assign \core_control_regs[3] [10] = \<const0> ;
  assign \core_control_regs[3] [9] = \<const0> ;
  assign \core_control_regs[3] [8] = \<const0> ;
  assign \core_control_regs[3] [7] = \<const0> ;
  assign \core_control_regs[3] [6] = \<const0> ;
  assign \core_control_regs[3] [5] = \<const0> ;
  assign \core_control_regs[3] [4] = \<const0> ;
  assign \core_control_regs[3] [3] = \<const0> ;
  assign \core_control_regs[3] [2] = \<const0> ;
  assign \core_control_regs[3] [1] = \<const0> ;
  assign \core_control_regs[3] [0] = \<const0> ;
  assign \core_control_regs[4] [31] = \<const0> ;
  assign \core_control_regs[4] [30] = \<const0> ;
  assign \core_control_regs[4] [29] = \<const0> ;
  assign \core_control_regs[4] [28] = \<const0> ;
  assign \core_control_regs[4] [27] = \<const0> ;
  assign \core_control_regs[4] [26] = \<const0> ;
  assign \core_control_regs[4] [25] = \<const0> ;
  assign \core_control_regs[4] [24] = \<const0> ;
  assign \core_control_regs[4] [23] = \<const0> ;
  assign \core_control_regs[4] [22] = \<const0> ;
  assign \core_control_regs[4] [21] = \<const0> ;
  assign \core_control_regs[4] [20] = \<const0> ;
  assign \core_control_regs[4] [19] = \<const0> ;
  assign \core_control_regs[4] [18] = \<const0> ;
  assign \core_control_regs[4] [17] = \<const0> ;
  assign \core_control_regs[4] [16] = \<const0> ;
  assign \core_control_regs[4] [15] = \<const0> ;
  assign \core_control_regs[4] [14] = \<const0> ;
  assign \core_control_regs[4] [13] = \<const0> ;
  assign \core_control_regs[4] [12] = \<const0> ;
  assign \core_control_regs[4] [11] = \<const0> ;
  assign \core_control_regs[4] [10] = \<const0> ;
  assign \core_control_regs[4] [9] = \<const0> ;
  assign \core_control_regs[4] [8] = \<const0> ;
  assign \core_control_regs[4] [7] = \<const0> ;
  assign \core_control_regs[4] [6] = \<const0> ;
  assign \core_control_regs[4] [5] = \<const0> ;
  assign \core_control_regs[4] [4] = \<const0> ;
  assign \core_control_regs[4] [3] = \<const0> ;
  assign \core_control_regs[4] [2] = \<const0> ;
  assign \core_control_regs[4] [1] = \<const0> ;
  assign \core_control_regs[4] [0] = \<const0> ;
  assign \core_control_regs[5] [31] = \<const0> ;
  assign \core_control_regs[5] [30] = \<const0> ;
  assign \core_control_regs[5] [29] = \<const0> ;
  assign \core_control_regs[5] [28] = \<const0> ;
  assign \core_control_regs[5] [27] = \<const0> ;
  assign \core_control_regs[5] [26] = \<const0> ;
  assign \core_control_regs[5] [25] = \<const0> ;
  assign \core_control_regs[5] [24] = \<const0> ;
  assign \core_control_regs[5] [23] = \<const0> ;
  assign \core_control_regs[5] [22] = \<const0> ;
  assign \core_control_regs[5] [21] = \<const0> ;
  assign \core_control_regs[5] [20] = \<const0> ;
  assign \core_control_regs[5] [19] = \<const0> ;
  assign \core_control_regs[5] [18] = \<const0> ;
  assign \core_control_regs[5] [17] = \<const0> ;
  assign \core_control_regs[5] [16] = \<const0> ;
  assign \core_control_regs[5] [15] = \<const0> ;
  assign \core_control_regs[5] [14] = \<const0> ;
  assign \core_control_regs[5] [13] = \<const0> ;
  assign \core_control_regs[5] [12] = \<const0> ;
  assign \core_control_regs[5] [11] = \<const0> ;
  assign \core_control_regs[5] [10] = \<const0> ;
  assign \core_control_regs[5] [9] = \<const0> ;
  assign \core_control_regs[5] [8] = \<const0> ;
  assign \core_control_regs[5] [7] = \<const0> ;
  assign \core_control_regs[5] [6] = \<const0> ;
  assign \core_control_regs[5] [5] = \<const0> ;
  assign \core_control_regs[5] [4] = \<const0> ;
  assign \core_control_regs[5] [3] = \<const0> ;
  assign \core_control_regs[5] [2] = \<const0> ;
  assign \core_control_regs[5] [1] = \<const0> ;
  assign \core_control_regs[5] [0] = \<const0> ;
  assign \core_control_regs[6] [31] = \<const0> ;
  assign \core_control_regs[6] [30] = \<const0> ;
  assign \core_control_regs[6] [29] = \<const0> ;
  assign \core_control_regs[6] [28] = \<const0> ;
  assign \core_control_regs[6] [27] = \<const0> ;
  assign \core_control_regs[6] [26] = \<const0> ;
  assign \core_control_regs[6] [25] = \<const0> ;
  assign \core_control_regs[6] [24] = \<const0> ;
  assign \core_control_regs[6] [23] = \<const0> ;
  assign \core_control_regs[6] [22] = \<const0> ;
  assign \core_control_regs[6] [21] = \<const0> ;
  assign \core_control_regs[6] [20] = \<const0> ;
  assign \core_control_regs[6] [19] = \<const0> ;
  assign \core_control_regs[6] [18] = \<const0> ;
  assign \core_control_regs[6] [17] = \<const0> ;
  assign \core_control_regs[6] [16] = \<const0> ;
  assign \core_control_regs[6] [15] = \<const0> ;
  assign \core_control_regs[6] [14] = \<const0> ;
  assign \core_control_regs[6] [13] = \<const0> ;
  assign \core_control_regs[6] [12] = \<const0> ;
  assign \core_control_regs[6] [11] = \<const0> ;
  assign \core_control_regs[6] [10] = \<const0> ;
  assign \core_control_regs[6] [9] = \<const0> ;
  assign \core_control_regs[6] [8] = \<const0> ;
  assign \core_control_regs[6] [7] = \<const0> ;
  assign \core_control_regs[6] [6] = \<const0> ;
  assign \core_control_regs[6] [5] = \<const0> ;
  assign \core_control_regs[6] [4] = \<const0> ;
  assign \core_control_regs[6] [3] = \<const0> ;
  assign \core_control_regs[6] [2] = \<const0> ;
  assign \core_control_regs[6] [1] = \<const0> ;
  assign \core_control_regs[6] [0] = \<const0> ;
  assign \core_control_regs[7] [31] = \<const0> ;
  assign \core_control_regs[7] [30] = \<const0> ;
  assign \core_control_regs[7] [29] = \<const0> ;
  assign \core_control_regs[7] [28] = \<const0> ;
  assign \core_control_regs[7] [27] = \<const0> ;
  assign \core_control_regs[7] [26] = \<const0> ;
  assign \core_control_regs[7] [25] = \<const0> ;
  assign \core_control_regs[7] [24] = \<const0> ;
  assign \core_control_regs[7] [23] = \<const0> ;
  assign \core_control_regs[7] [22] = \<const0> ;
  assign \core_control_regs[7] [21] = \<const0> ;
  assign \core_control_regs[7] [20] = \<const0> ;
  assign \core_control_regs[7] [19] = \<const0> ;
  assign \core_control_regs[7] [18] = \<const0> ;
  assign \core_control_regs[7] [17] = \<const0> ;
  assign \core_control_regs[7] [16] = \<const0> ;
  assign \core_control_regs[7] [15] = \<const0> ;
  assign \core_control_regs[7] [14] = \<const0> ;
  assign \core_control_regs[7] [13] = \<const0> ;
  assign \core_control_regs[7] [12] = \<const0> ;
  assign \core_control_regs[7] [11] = \<const0> ;
  assign \core_control_regs[7] [10] = \<const0> ;
  assign \core_control_regs[7] [9] = \<const0> ;
  assign \core_control_regs[7] [8] = \<const0> ;
  assign \core_control_regs[7] [7] = \<const0> ;
  assign \core_control_regs[7] [6] = \<const0> ;
  assign \core_control_regs[7] [5] = \<const0> ;
  assign \core_control_regs[7] [4] = \<const0> ;
  assign \core_control_regs[7] [3] = \<const0> ;
  assign \core_control_regs[7] [2] = \<const0> ;
  assign \core_control_regs[7] [1] = \<const0> ;
  assign \core_control_regs[7] [0] = \<const0> ;
  assign \core_control_regs[8] [31] = \<const0> ;
  assign \core_control_regs[8] [30] = \<const0> ;
  assign \core_control_regs[8] [29] = \<const0> ;
  assign \core_control_regs[8] [28] = \<const0> ;
  assign \core_control_regs[8] [27] = \<const0> ;
  assign \core_control_regs[8] [26] = \<const0> ;
  assign \core_control_regs[8] [25] = \<const0> ;
  assign \core_control_regs[8] [24] = \<const0> ;
  assign \core_control_regs[8] [23] = \<const0> ;
  assign \core_control_regs[8] [22] = \<const0> ;
  assign \core_control_regs[8] [21] = \<const0> ;
  assign \core_control_regs[8] [20] = \<const0> ;
  assign \core_control_regs[8] [19] = \<const0> ;
  assign \core_control_regs[8] [18] = \<const0> ;
  assign \core_control_regs[8] [17] = \<const0> ;
  assign \core_control_regs[8] [16] = \<const0> ;
  assign \core_control_regs[8] [15] = \<const0> ;
  assign \core_control_regs[8] [14] = \<const0> ;
  assign \core_control_regs[8] [13] = \<const0> ;
  assign \core_control_regs[8] [12] = \<const0> ;
  assign \core_control_regs[8] [11] = \<const0> ;
  assign \core_control_regs[8] [10] = \<const0> ;
  assign \core_control_regs[8] [9] = \<const0> ;
  assign \core_control_regs[8] [8] = \<const0> ;
  assign \core_control_regs[8] [7] = \<const0> ;
  assign \core_control_regs[8] [6] = \<const0> ;
  assign \core_control_regs[8] [5] = \<const0> ;
  assign \core_control_regs[8] [4] = \<const0> ;
  assign \core_control_regs[8] [3] = \<const0> ;
  assign \core_control_regs[8] [2] = \<const0> ;
  assign \core_control_regs[8] [1] = \<const0> ;
  assign \core_control_regs[8] [0] = \<const0> ;
  assign \core_control_regs[9] [31] = \<const0> ;
  assign \core_control_regs[9] [30] = \<const0> ;
  assign \core_control_regs[9] [29] = \<const0> ;
  assign \core_control_regs[9] [28] = \<const0> ;
  assign \core_control_regs[9] [27] = \<const0> ;
  assign \core_control_regs[9] [26] = \<const0> ;
  assign \core_control_regs[9] [25] = \<const0> ;
  assign \core_control_regs[9] [24] = \<const0> ;
  assign \core_control_regs[9] [23] = \<const0> ;
  assign \core_control_regs[9] [22] = \<const0> ;
  assign \core_control_regs[9] [21] = \<const0> ;
  assign \core_control_regs[9] [20] = \<const0> ;
  assign \core_control_regs[9] [19] = \<const0> ;
  assign \core_control_regs[9] [18] = \<const0> ;
  assign \core_control_regs[9] [17] = \<const0> ;
  assign \core_control_regs[9] [16] = \<const0> ;
  assign \core_control_regs[9] [15] = \<const0> ;
  assign \core_control_regs[9] [14] = \<const0> ;
  assign \core_control_regs[9] [13] = \<const0> ;
  assign \core_control_regs[9] [12] = \<const0> ;
  assign \core_control_regs[9] [11] = \<const0> ;
  assign \core_control_regs[9] [10] = \<const0> ;
  assign \core_control_regs[9] [9] = \<const0> ;
  assign \core_control_regs[9] [8] = \<const0> ;
  assign \core_control_regs[9] [7] = \<const0> ;
  assign \core_control_regs[9] [6] = \<const0> ;
  assign \core_control_regs[9] [5] = \<const0> ;
  assign \core_control_regs[9] [4] = \<const0> ;
  assign \core_control_regs[9] [3] = \<const0> ;
  assign \core_control_regs[9] [2] = \<const0> ;
  assign \core_control_regs[9] [1] = \<const0> ;
  assign \core_control_regs[9] [0] = \<const0> ;
  assign core_d_out = \<const0> ;
  assign \genr_control_regs[0] [31] = \<const0> ;
  assign \genr_control_regs[0] [30] = \<const0> ;
  assign \genr_control_regs[0] [29] = \<const0> ;
  assign \genr_control_regs[0] [28] = \<const0> ;
  assign \genr_control_regs[0] [27] = \<const0> ;
  assign \genr_control_regs[0] [26] = \<const0> ;
  assign \genr_control_regs[0] [25] = \<const0> ;
  assign \genr_control_regs[0] [24] = \<const0> ;
  assign \genr_control_regs[0] [23] = \<const0> ;
  assign \genr_control_regs[0] [22] = \<const0> ;
  assign \genr_control_regs[0] [21] = \<const0> ;
  assign \genr_control_regs[0] [20] = \<const0> ;
  assign \genr_control_regs[0] [19] = \<const0> ;
  assign \genr_control_regs[0] [18] = \<const0> ;
  assign \genr_control_regs[0] [17] = \<const0> ;
  assign \genr_control_regs[0] [16] = \<const0> ;
  assign \genr_control_regs[0] [15] = \<const0> ;
  assign \genr_control_regs[0] [14] = \<const0> ;
  assign \genr_control_regs[0] [13] = \<const0> ;
  assign \genr_control_regs[0] [12] = \<const0> ;
  assign \genr_control_regs[0] [11] = \<const0> ;
  assign \genr_control_regs[0] [10] = \<const0> ;
  assign \genr_control_regs[0] [9] = \<const0> ;
  assign \genr_control_regs[0] [8] = \<const0> ;
  assign \genr_control_regs[0] [7] = \<const0> ;
  assign \genr_control_regs[0] [6] = \<const0> ;
  assign \genr_control_regs[0] [5] = \<const0> ;
  assign \genr_control_regs[0] [4] = \<const0> ;
  assign \genr_control_regs[0] [3] = \<const0> ;
  assign \genr_control_regs[0] [2] = \<const0> ;
  assign \genr_control_regs[0] [1] = \<const0> ;
  assign \genr_control_regs[0] [0] = \<const1> ;
  assign \genr_control_regs[1] [31] = \<const0> ;
  assign \genr_control_regs[1] [30] = \<const0> ;
  assign \genr_control_regs[1] [29] = \<const0> ;
  assign \genr_control_regs[1] [28] = \<const0> ;
  assign \genr_control_regs[1] [27] = \<const0> ;
  assign \genr_control_regs[1] [26] = \<const0> ;
  assign \genr_control_regs[1] [25] = \<const0> ;
  assign \genr_control_regs[1] [24] = \<const0> ;
  assign \genr_control_regs[1] [23] = \<const0> ;
  assign \genr_control_regs[1] [22] = \<const0> ;
  assign \genr_control_regs[1] [21] = \<const0> ;
  assign \genr_control_regs[1] [20] = \<const0> ;
  assign \genr_control_regs[1] [19] = \<const0> ;
  assign \genr_control_regs[1] [18] = \<const0> ;
  assign \genr_control_regs[1] [17] = \<const0> ;
  assign \genr_control_regs[1] [16] = \<const0> ;
  assign \genr_control_regs[1] [15] = \<const0> ;
  assign \genr_control_regs[1] [14] = \<const0> ;
  assign \genr_control_regs[1] [13] = \<const0> ;
  assign \genr_control_regs[1] [12] = \<const0> ;
  assign \genr_control_regs[1] [11] = \<const0> ;
  assign \genr_control_regs[1] [10] = \<const0> ;
  assign \genr_control_regs[1] [9] = \<const0> ;
  assign \genr_control_regs[1] [8] = \<const0> ;
  assign \genr_control_regs[1] [7] = \<const0> ;
  assign \genr_control_regs[1] [6] = \<const0> ;
  assign \genr_control_regs[1] [5] = \<const0> ;
  assign \genr_control_regs[1] [4] = \<const0> ;
  assign \genr_control_regs[1] [3] = \<const0> ;
  assign \genr_control_regs[1] [2] = \<const0> ;
  assign \genr_control_regs[1] [1] = \<const0> ;
  assign \genr_control_regs[1] [0] = \<const0> ;
  assign \genr_control_regs[2] [31] = \<const0> ;
  assign \genr_control_regs[2] [30] = \<const0> ;
  assign \genr_control_regs[2] [29] = \<const0> ;
  assign \genr_control_regs[2] [28] = \<const0> ;
  assign \genr_control_regs[2] [27] = \<const0> ;
  assign \genr_control_regs[2] [26] = \<const0> ;
  assign \genr_control_regs[2] [25] = \<const0> ;
  assign \genr_control_regs[2] [24] = \<const0> ;
  assign \genr_control_regs[2] [23] = \<const0> ;
  assign \genr_control_regs[2] [22] = \<const0> ;
  assign \genr_control_regs[2] [21] = \<const0> ;
  assign \genr_control_regs[2] [20] = \<const0> ;
  assign \genr_control_regs[2] [19] = \<const0> ;
  assign \genr_control_regs[2] [18] = \<const0> ;
  assign \genr_control_regs[2] [17] = \<const0> ;
  assign \genr_control_regs[2] [16] = \<const0> ;
  assign \genr_control_regs[2] [15] = \<const0> ;
  assign \genr_control_regs[2] [14] = \<const0> ;
  assign \genr_control_regs[2] [13] = \<const0> ;
  assign \genr_control_regs[2] [12] = \<const0> ;
  assign \genr_control_regs[2] [11] = \<const0> ;
  assign \genr_control_regs[2] [10] = \<const0> ;
  assign \genr_control_regs[2] [9] = \<const0> ;
  assign \genr_control_regs[2] [8] = \<const0> ;
  assign \genr_control_regs[2] [7] = \<const0> ;
  assign \genr_control_regs[2] [6] = \<const0> ;
  assign \genr_control_regs[2] [5] = \<const0> ;
  assign \genr_control_regs[2] [4] = \<const0> ;
  assign \genr_control_regs[2] [3] = \<const0> ;
  assign \genr_control_regs[2] [2] = \<const0> ;
  assign \genr_control_regs[2] [1] = \<const0> ;
  assign \genr_control_regs[2] [0] = \<const0> ;
  assign \genr_control_regs[3] [31] = \<const0> ;
  assign \genr_control_regs[3] [30] = \<const0> ;
  assign \genr_control_regs[3] [29] = \<const0> ;
  assign \genr_control_regs[3] [28] = \<const0> ;
  assign \genr_control_regs[3] [27] = \<const0> ;
  assign \genr_control_regs[3] [26] = \<const0> ;
  assign \genr_control_regs[3] [25] = \<const0> ;
  assign \genr_control_regs[3] [24] = \<const0> ;
  assign \genr_control_regs[3] [23] = \<const0> ;
  assign \genr_control_regs[3] [22] = \<const0> ;
  assign \genr_control_regs[3] [21] = \<const0> ;
  assign \genr_control_regs[3] [20] = \<const0> ;
  assign \genr_control_regs[3] [19] = \<const0> ;
  assign \genr_control_regs[3] [18] = \<const0> ;
  assign \genr_control_regs[3] [17] = \<const0> ;
  assign \genr_control_regs[3] [16] = \<const0> ;
  assign \genr_control_regs[3] [15] = \<const0> ;
  assign \genr_control_regs[3] [14] = \<const0> ;
  assign \genr_control_regs[3] [13] = \<const0> ;
  assign \genr_control_regs[3] [12] = \<const0> ;
  assign \genr_control_regs[3] [11] = \<const0> ;
  assign \genr_control_regs[3] [10] = \<const0> ;
  assign \genr_control_regs[3] [9] = \<const0> ;
  assign \genr_control_regs[3] [8] = \<const0> ;
  assign \genr_control_regs[3] [7] = \<const0> ;
  assign \genr_control_regs[3] [6] = \<const0> ;
  assign \genr_control_regs[3] [5] = \<const0> ;
  assign \genr_control_regs[3] [4] = \<const0> ;
  assign \genr_control_regs[3] [3] = \<const0> ;
  assign \genr_control_regs[3] [2] = \<const0> ;
  assign \genr_control_regs[3] [1] = \<const0> ;
  assign \genr_control_regs[3] [0] = \<const0> ;
  assign \genr_control_regs[4] [31] = \<const0> ;
  assign \genr_control_regs[4] [30] = \<const0> ;
  assign \genr_control_regs[4] [29] = \<const0> ;
  assign \genr_control_regs[4] [28] = \<const0> ;
  assign \genr_control_regs[4] [27] = \<const0> ;
  assign \genr_control_regs[4] [26] = \<const0> ;
  assign \genr_control_regs[4] [25] = \<const0> ;
  assign \genr_control_regs[4] [24] = \<const0> ;
  assign \genr_control_regs[4] [23] = \<const0> ;
  assign \genr_control_regs[4] [22] = \<const0> ;
  assign \genr_control_regs[4] [21] = \<const0> ;
  assign \genr_control_regs[4] [20] = \<const0> ;
  assign \genr_control_regs[4] [19] = \<const0> ;
  assign \genr_control_regs[4] [18] = \<const0> ;
  assign \genr_control_regs[4] [17] = \<const0> ;
  assign \genr_control_regs[4] [16] = \<const0> ;
  assign \genr_control_regs[4] [15] = \<const0> ;
  assign \genr_control_regs[4] [14] = \<const0> ;
  assign \genr_control_regs[4] [13] = \<const0> ;
  assign \genr_control_regs[4] [12] = \<const0> ;
  assign \genr_control_regs[4] [11] = \<const0> ;
  assign \genr_control_regs[4] [10] = \<const0> ;
  assign \genr_control_regs[4] [9] = \<const0> ;
  assign \genr_control_regs[4] [8] = \<const0> ;
  assign \genr_control_regs[4] [7] = \<const0> ;
  assign \genr_control_regs[4] [6] = \<const0> ;
  assign \genr_control_regs[4] [5] = \<const0> ;
  assign \genr_control_regs[4] [4] = \<const0> ;
  assign \genr_control_regs[4] [3] = \<const0> ;
  assign \genr_control_regs[4] [2] = \<const0> ;
  assign \genr_control_regs[4] [1] = \<const0> ;
  assign \genr_control_regs[4] [0] = \<const0> ;
  assign ipif_addr_out[8] = \<const0> ;
  assign ipif_addr_out[7] = \<const0> ;
  assign ipif_addr_out[6] = \<const0> ;
  assign ipif_addr_out[5] = \<const0> ;
  assign ipif_addr_out[4] = \<const0> ;
  assign ipif_addr_out[3] = \<const0> ;
  assign ipif_addr_out[2] = \<const0> ;
  assign ipif_addr_out[1] = \<const0> ;
  assign ipif_addr_out[0] = \<const0> ;
  assign ipif_cs_out = \<const0> ;
  assign ipif_data_out[31] = \<const0> ;
  assign ipif_data_out[30] = \<const0> ;
  assign ipif_data_out[29] = \<const0> ;
  assign ipif_data_out[28] = \<const0> ;
  assign ipif_data_out[27] = \<const0> ;
  assign ipif_data_out[26] = \<const0> ;
  assign ipif_data_out[25] = \<const0> ;
  assign ipif_data_out[24] = \<const0> ;
  assign ipif_data_out[23] = \<const0> ;
  assign ipif_data_out[22] = \<const0> ;
  assign ipif_data_out[21] = \<const0> ;
  assign ipif_data_out[20] = \<const0> ;
  assign ipif_data_out[19] = \<const0> ;
  assign ipif_data_out[18] = \<const0> ;
  assign ipif_data_out[17] = \<const0> ;
  assign ipif_data_out[16] = \<const0> ;
  assign ipif_data_out[15] = \<const0> ;
  assign ipif_data_out[14] = \<const0> ;
  assign ipif_data_out[13] = \<const0> ;
  assign ipif_data_out[12] = \<const0> ;
  assign ipif_data_out[11] = \<const0> ;
  assign ipif_data_out[10] = \<const0> ;
  assign ipif_data_out[9] = \<const0> ;
  assign ipif_data_out[8] = \<const0> ;
  assign ipif_data_out[7] = \<const0> ;
  assign ipif_data_out[6] = \<const0> ;
  assign ipif_data_out[5] = \<const0> ;
  assign ipif_data_out[4] = \<const0> ;
  assign ipif_data_out[3] = \<const0> ;
  assign ipif_data_out[2] = \<const0> ;
  assign ipif_data_out[1] = \<const0> ;
  assign ipif_data_out[0] = \<const0> ;
  assign ipif_rnw_out = \<const1> ;
  assign irq = \<const0> ;
  assign resetn_out = vid_aresetn;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign \time_control_regs[0] [31] = \<const0> ;
  assign \time_control_regs[0] [30] = \<const0> ;
  assign \time_control_regs[0] [29] = \<const0> ;
  assign \time_control_regs[0] [28] = \<const0> ;
  assign \time_control_regs[0] [27] = \<const0> ;
  assign \time_control_regs[0] [26] = \<const0> ;
  assign \time_control_regs[0] [25] = \<const0> ;
  assign \time_control_regs[0] [24] = \<const0> ;
  assign \time_control_regs[0] [23] = \<const0> ;
  assign \time_control_regs[0] [22] = \<const0> ;
  assign \time_control_regs[0] [21] = \<const0> ;
  assign \time_control_regs[0] [20] = \<const0> ;
  assign \time_control_regs[0] [19] = \<const0> ;
  assign \time_control_regs[0] [18] = \<const0> ;
  assign \time_control_regs[0] [17] = \<const0> ;
  assign \time_control_regs[0] [16] = \<const0> ;
  assign \time_control_regs[0] [15] = \<const0> ;
  assign \time_control_regs[0] [14] = \<const0> ;
  assign \time_control_regs[0] [13] = \<const0> ;
  assign \time_control_regs[0] [12] = \<const0> ;
  assign \time_control_regs[0] [11] = \<const0> ;
  assign \time_control_regs[0] [10] = \<const0> ;
  assign \time_control_regs[0] [9] = \<const0> ;
  assign \time_control_regs[0] [8] = \<const0> ;
  assign \time_control_regs[0] [7] = \<const0> ;
  assign \time_control_regs[0] [6] = \<const0> ;
  assign \time_control_regs[0] [5] = \<const0> ;
  assign \time_control_regs[0] [4] = \<const0> ;
  assign \time_control_regs[0] [3] = \<const0> ;
  assign \time_control_regs[0] [2] = \<const0> ;
  assign \time_control_regs[0] [1] = \<const0> ;
  assign \time_control_regs[0] [0] = \<const0> ;
  assign \time_control_regs[10] [31] = \<const0> ;
  assign \time_control_regs[10] [30] = \<const0> ;
  assign \time_control_regs[10] [29] = \<const0> ;
  assign \time_control_regs[10] [28] = \<const0> ;
  assign \time_control_regs[10] [27] = \<const0> ;
  assign \time_control_regs[10] [26] = \<const0> ;
  assign \time_control_regs[10] [25] = \<const0> ;
  assign \time_control_regs[10] [24] = \<const0> ;
  assign \time_control_regs[10] [23] = \<const0> ;
  assign \time_control_regs[10] [22] = \<const0> ;
  assign \time_control_regs[10] [21] = \<const0> ;
  assign \time_control_regs[10] [20] = \<const0> ;
  assign \time_control_regs[10] [19] = \<const0> ;
  assign \time_control_regs[10] [18] = \<const0> ;
  assign \time_control_regs[10] [17] = \<const0> ;
  assign \time_control_regs[10] [16] = \<const0> ;
  assign \time_control_regs[10] [15] = \<const0> ;
  assign \time_control_regs[10] [14] = \<const0> ;
  assign \time_control_regs[10] [13] = \<const0> ;
  assign \time_control_regs[10] [12] = \<const0> ;
  assign \time_control_regs[10] [11] = \<const0> ;
  assign \time_control_regs[10] [10] = \<const0> ;
  assign \time_control_regs[10] [9] = \<const0> ;
  assign \time_control_regs[10] [8] = \<const0> ;
  assign \time_control_regs[10] [7] = \<const0> ;
  assign \time_control_regs[10] [6] = \<const0> ;
  assign \time_control_regs[10] [5] = \<const0> ;
  assign \time_control_regs[10] [4] = \<const0> ;
  assign \time_control_regs[10] [3] = \<const0> ;
  assign \time_control_regs[10] [2] = \<const0> ;
  assign \time_control_regs[10] [1] = \<const0> ;
  assign \time_control_regs[10] [0] = \<const0> ;
  assign \time_control_regs[11] [31] = \<const0> ;
  assign \time_control_regs[11] [30] = \<const0> ;
  assign \time_control_regs[11] [29] = \<const0> ;
  assign \time_control_regs[11] [28] = \<const0> ;
  assign \time_control_regs[11] [27] = \<const0> ;
  assign \time_control_regs[11] [26] = \<const0> ;
  assign \time_control_regs[11] [25] = \<const0> ;
  assign \time_control_regs[11] [24] = \<const0> ;
  assign \time_control_regs[11] [23] = \<const0> ;
  assign \time_control_regs[11] [22] = \<const0> ;
  assign \time_control_regs[11] [21] = \<const0> ;
  assign \time_control_regs[11] [20] = \<const0> ;
  assign \time_control_regs[11] [19] = \<const0> ;
  assign \time_control_regs[11] [18] = \<const0> ;
  assign \time_control_regs[11] [17] = \<const0> ;
  assign \time_control_regs[11] [16] = \<const0> ;
  assign \time_control_regs[11] [15] = \<const0> ;
  assign \time_control_regs[11] [14] = \<const0> ;
  assign \time_control_regs[11] [13] = \<const0> ;
  assign \time_control_regs[11] [12] = \<const0> ;
  assign \time_control_regs[11] [11] = \<const0> ;
  assign \time_control_regs[11] [10] = \<const0> ;
  assign \time_control_regs[11] [9] = \<const0> ;
  assign \time_control_regs[11] [8] = \<const0> ;
  assign \time_control_regs[11] [7] = \<const0> ;
  assign \time_control_regs[11] [6] = \<const0> ;
  assign \time_control_regs[11] [5] = \<const0> ;
  assign \time_control_regs[11] [4] = \<const0> ;
  assign \time_control_regs[11] [3] = \<const0> ;
  assign \time_control_regs[11] [2] = \<const0> ;
  assign \time_control_regs[11] [1] = \<const0> ;
  assign \time_control_regs[11] [0] = \<const0> ;
  assign \time_control_regs[12] [31] = \<const0> ;
  assign \time_control_regs[12] [30] = \<const0> ;
  assign \time_control_regs[12] [29] = \<const0> ;
  assign \time_control_regs[12] [28] = \<const0> ;
  assign \time_control_regs[12] [27] = \<const0> ;
  assign \time_control_regs[12] [26] = \<const0> ;
  assign \time_control_regs[12] [25] = \<const0> ;
  assign \time_control_regs[12] [24] = \<const0> ;
  assign \time_control_regs[12] [23] = \<const0> ;
  assign \time_control_regs[12] [22] = \<const0> ;
  assign \time_control_regs[12] [21] = \<const0> ;
  assign \time_control_regs[12] [20] = \<const0> ;
  assign \time_control_regs[12] [19] = \<const0> ;
  assign \time_control_regs[12] [18] = \<const0> ;
  assign \time_control_regs[12] [17] = \<const0> ;
  assign \time_control_regs[12] [16] = \<const0> ;
  assign \time_control_regs[12] [15] = \<const0> ;
  assign \time_control_regs[12] [14] = \<const0> ;
  assign \time_control_regs[12] [13] = \<const0> ;
  assign \time_control_regs[12] [12] = \<const0> ;
  assign \time_control_regs[12] [11] = \<const0> ;
  assign \time_control_regs[12] [10] = \<const0> ;
  assign \time_control_regs[12] [9] = \<const0> ;
  assign \time_control_regs[12] [8] = \<const0> ;
  assign \time_control_regs[12] [7] = \<const0> ;
  assign \time_control_regs[12] [6] = \<const0> ;
  assign \time_control_regs[12] [5] = \<const0> ;
  assign \time_control_regs[12] [4] = \<const0> ;
  assign \time_control_regs[12] [3] = \<const0> ;
  assign \time_control_regs[12] [2] = \<const0> ;
  assign \time_control_regs[12] [1] = \<const0> ;
  assign \time_control_regs[12] [0] = \<const0> ;
  assign \time_control_regs[13] [31] = \<const0> ;
  assign \time_control_regs[13] [30] = \<const0> ;
  assign \time_control_regs[13] [29] = \<const0> ;
  assign \time_control_regs[13] [28] = \<const0> ;
  assign \time_control_regs[13] [27] = \<const0> ;
  assign \time_control_regs[13] [26] = \<const0> ;
  assign \time_control_regs[13] [25] = \<const0> ;
  assign \time_control_regs[13] [24] = \<const0> ;
  assign \time_control_regs[13] [23] = \<const0> ;
  assign \time_control_regs[13] [22] = \<const0> ;
  assign \time_control_regs[13] [21] = \<const0> ;
  assign \time_control_regs[13] [20] = \<const0> ;
  assign \time_control_regs[13] [19] = \<const0> ;
  assign \time_control_regs[13] [18] = \<const0> ;
  assign \time_control_regs[13] [17] = \<const0> ;
  assign \time_control_regs[13] [16] = \<const0> ;
  assign \time_control_regs[13] [15] = \<const0> ;
  assign \time_control_regs[13] [14] = \<const0> ;
  assign \time_control_regs[13] [13] = \<const0> ;
  assign \time_control_regs[13] [12] = \<const0> ;
  assign \time_control_regs[13] [11] = \<const0> ;
  assign \time_control_regs[13] [10] = \<const0> ;
  assign \time_control_regs[13] [9] = \<const0> ;
  assign \time_control_regs[13] [8] = \<const0> ;
  assign \time_control_regs[13] [7] = \<const0> ;
  assign \time_control_regs[13] [6] = \<const0> ;
  assign \time_control_regs[13] [5] = \<const0> ;
  assign \time_control_regs[13] [4] = \<const0> ;
  assign \time_control_regs[13] [3] = \<const0> ;
  assign \time_control_regs[13] [2] = \<const0> ;
  assign \time_control_regs[13] [1] = \<const0> ;
  assign \time_control_regs[13] [0] = \<const0> ;
  assign \time_control_regs[14] [31] = \<const0> ;
  assign \time_control_regs[14] [30] = \<const0> ;
  assign \time_control_regs[14] [29] = \<const0> ;
  assign \time_control_regs[14] [28] = \<const0> ;
  assign \time_control_regs[14] [27] = \<const0> ;
  assign \time_control_regs[14] [26] = \<const0> ;
  assign \time_control_regs[14] [25] = \<const0> ;
  assign \time_control_regs[14] [24] = \<const0> ;
  assign \time_control_regs[14] [23] = \<const0> ;
  assign \time_control_regs[14] [22] = \<const0> ;
  assign \time_control_regs[14] [21] = \<const0> ;
  assign \time_control_regs[14] [20] = \<const0> ;
  assign \time_control_regs[14] [19] = \<const0> ;
  assign \time_control_regs[14] [18] = \<const0> ;
  assign \time_control_regs[14] [17] = \<const0> ;
  assign \time_control_regs[14] [16] = \<const0> ;
  assign \time_control_regs[14] [15] = \<const0> ;
  assign \time_control_regs[14] [14] = \<const0> ;
  assign \time_control_regs[14] [13] = \<const0> ;
  assign \time_control_regs[14] [12] = \<const0> ;
  assign \time_control_regs[14] [11] = \<const0> ;
  assign \time_control_regs[14] [10] = \<const0> ;
  assign \time_control_regs[14] [9] = \<const0> ;
  assign \time_control_regs[14] [8] = \<const0> ;
  assign \time_control_regs[14] [7] = \<const0> ;
  assign \time_control_regs[14] [6] = \<const0> ;
  assign \time_control_regs[14] [5] = \<const0> ;
  assign \time_control_regs[14] [4] = \<const0> ;
  assign \time_control_regs[14] [3] = \<const0> ;
  assign \time_control_regs[14] [2] = \<const0> ;
  assign \time_control_regs[14] [1] = \<const0> ;
  assign \time_control_regs[14] [0] = \<const0> ;
  assign \time_control_regs[15] [31] = \<const0> ;
  assign \time_control_regs[15] [30] = \<const0> ;
  assign \time_control_regs[15] [29] = \<const0> ;
  assign \time_control_regs[15] [28] = \<const0> ;
  assign \time_control_regs[15] [27] = \<const0> ;
  assign \time_control_regs[15] [26] = \<const0> ;
  assign \time_control_regs[15] [25] = \<const0> ;
  assign \time_control_regs[15] [24] = \<const0> ;
  assign \time_control_regs[15] [23] = \<const0> ;
  assign \time_control_regs[15] [22] = \<const0> ;
  assign \time_control_regs[15] [21] = \<const0> ;
  assign \time_control_regs[15] [20] = \<const0> ;
  assign \time_control_regs[15] [19] = \<const0> ;
  assign \time_control_regs[15] [18] = \<const0> ;
  assign \time_control_regs[15] [17] = \<const0> ;
  assign \time_control_regs[15] [16] = \<const0> ;
  assign \time_control_regs[15] [15] = \<const0> ;
  assign \time_control_regs[15] [14] = \<const0> ;
  assign \time_control_regs[15] [13] = \<const0> ;
  assign \time_control_regs[15] [12] = \<const0> ;
  assign \time_control_regs[15] [11] = \<const0> ;
  assign \time_control_regs[15] [10] = \<const0> ;
  assign \time_control_regs[15] [9] = \<const0> ;
  assign \time_control_regs[15] [8] = \<const0> ;
  assign \time_control_regs[15] [7] = \<const0> ;
  assign \time_control_regs[15] [6] = \<const0> ;
  assign \time_control_regs[15] [5] = \<const0> ;
  assign \time_control_regs[15] [4] = \<const0> ;
  assign \time_control_regs[15] [3] = \<const0> ;
  assign \time_control_regs[15] [2] = \<const0> ;
  assign \time_control_regs[15] [1] = \<const0> ;
  assign \time_control_regs[15] [0] = \<const0> ;
  assign \time_control_regs[16] [31] = \<const0> ;
  assign \time_control_regs[16] [30] = \<const0> ;
  assign \time_control_regs[16] [29] = \<const0> ;
  assign \time_control_regs[16] [28] = \<const0> ;
  assign \time_control_regs[16] [27] = \<const0> ;
  assign \time_control_regs[16] [26] = \<const1> ;
  assign \time_control_regs[16] [25] = \<const1> ;
  assign \time_control_regs[16] [24] = \<const1> ;
  assign \time_control_regs[16] [23] = \<const1> ;
  assign \time_control_regs[16] [22] = \<const0> ;
  assign \time_control_regs[16] [21] = \<const0> ;
  assign \time_control_regs[16] [20] = \<const0> ;
  assign \time_control_regs[16] [19] = \<const0> ;
  assign \time_control_regs[16] [18] = \<const0> ;
  assign \time_control_regs[16] [17] = \<const0> ;
  assign \time_control_regs[16] [16] = \<const0> ;
  assign \time_control_regs[16] [15] = \<const0> ;
  assign \time_control_regs[16] [14] = \<const0> ;
  assign \time_control_regs[16] [13] = \<const0> ;
  assign \time_control_regs[16] [12] = \<const0> ;
  assign \time_control_regs[16] [11] = \<const1> ;
  assign \time_control_regs[16] [10] = \<const0> ;
  assign \time_control_regs[16] [9] = \<const1> ;
  assign \time_control_regs[16] [8] = \<const0> ;
  assign \time_control_regs[16] [7] = \<const0> ;
  assign \time_control_regs[16] [6] = \<const0> ;
  assign \time_control_regs[16] [5] = \<const0> ;
  assign \time_control_regs[16] [4] = \<const0> ;
  assign \time_control_regs[16] [3] = \<const0> ;
  assign \time_control_regs[16] [2] = \<const0> ;
  assign \time_control_regs[16] [1] = \<const0> ;
  assign \time_control_regs[16] [0] = \<const0> ;
  assign \time_control_regs[17] [31] = \<const0> ;
  assign \time_control_regs[17] [30] = \<const0> ;
  assign \time_control_regs[17] [29] = \<const0> ;
  assign \time_control_regs[17] [28] = \<const0> ;
  assign \time_control_regs[17] [27] = \<const0> ;
  assign \time_control_regs[17] [26] = \<const0> ;
  assign \time_control_regs[17] [25] = \<const0> ;
  assign \time_control_regs[17] [24] = \<const0> ;
  assign \time_control_regs[17] [23] = \<const0> ;
  assign \time_control_regs[17] [22] = \<const0> ;
  assign \time_control_regs[17] [21] = \<const0> ;
  assign \time_control_regs[17] [20] = \<const0> ;
  assign \time_control_regs[17] [19] = \<const0> ;
  assign \time_control_regs[17] [18] = \<const0> ;
  assign \time_control_regs[17] [17] = \<const0> ;
  assign \time_control_regs[17] [16] = \<const0> ;
  assign \time_control_regs[17] [15] = \<const0> ;
  assign \time_control_regs[17] [14] = \<const0> ;
  assign \time_control_regs[17] [13] = \<const0> ;
  assign \time_control_regs[17] [12] = \<const0> ;
  assign \time_control_regs[17] [11] = \<const0> ;
  assign \time_control_regs[17] [10] = \<const0> ;
  assign \time_control_regs[17] [9] = \<const0> ;
  assign \time_control_regs[17] [8] = \<const0> ;
  assign \time_control_regs[17] [7] = \<const0> ;
  assign \time_control_regs[17] [6] = \<const0> ;
  assign \time_control_regs[17] [5] = \<const0> ;
  assign \time_control_regs[17] [4] = \<const0> ;
  assign \time_control_regs[17] [3] = \<const0> ;
  assign \time_control_regs[17] [2] = \<const0> ;
  assign \time_control_regs[17] [1] = \<const0> ;
  assign \time_control_regs[17] [0] = \<const0> ;
  assign \time_control_regs[18] [31] = \<const0> ;
  assign \time_control_regs[18] [30] = \<const0> ;
  assign \time_control_regs[18] [29] = \<const0> ;
  assign \time_control_regs[18] [28] = \<const0> ;
  assign \time_control_regs[18] [27] = \<const0> ;
  assign \time_control_regs[18] [26] = \<const0> ;
  assign \time_control_regs[18] [25] = \<const0> ;
  assign \time_control_regs[18] [24] = \<const0> ;
  assign \time_control_regs[18] [23] = \<const0> ;
  assign \time_control_regs[18] [22] = \<const0> ;
  assign \time_control_regs[18] [21] = \<const0> ;
  assign \time_control_regs[18] [20] = \<const0> ;
  assign \time_control_regs[18] [19] = \<const0> ;
  assign \time_control_regs[18] [18] = \<const0> ;
  assign \time_control_regs[18] [17] = \<const0> ;
  assign \time_control_regs[18] [16] = \<const0> ;
  assign \time_control_regs[18] [15] = \<const0> ;
  assign \time_control_regs[18] [14] = \<const0> ;
  assign \time_control_regs[18] [13] = \<const0> ;
  assign \time_control_regs[18] [12] = \<const0> ;
  assign \time_control_regs[18] [11] = \<const0> ;
  assign \time_control_regs[18] [10] = \<const0> ;
  assign \time_control_regs[18] [9] = \<const0> ;
  assign \time_control_regs[18] [8] = \<const0> ;
  assign \time_control_regs[18] [7] = \<const0> ;
  assign \time_control_regs[18] [6] = \<const0> ;
  assign \time_control_regs[18] [5] = \<const0> ;
  assign \time_control_regs[18] [4] = \<const0> ;
  assign \time_control_regs[18] [3] = \<const0> ;
  assign \time_control_regs[18] [2] = \<const0> ;
  assign \time_control_regs[18] [1] = \<const1> ;
  assign \time_control_regs[18] [0] = \<const0> ;
  assign \time_control_regs[19] [31] = \<const0> ;
  assign \time_control_regs[19] [30] = \<const0> ;
  assign \time_control_regs[19] [29] = \<const0> ;
  assign \time_control_regs[19] [28] = \<const0> ;
  assign \time_control_regs[19] [27] = \<const0> ;
  assign \time_control_regs[19] [26] = \<const0> ;
  assign \time_control_regs[19] [25] = \<const0> ;
  assign \time_control_regs[19] [24] = \<const0> ;
  assign \time_control_regs[19] [23] = \<const0> ;
  assign \time_control_regs[19] [22] = \<const0> ;
  assign \time_control_regs[19] [21] = \<const0> ;
  assign \time_control_regs[19] [20] = \<const0> ;
  assign \time_control_regs[19] [19] = \<const0> ;
  assign \time_control_regs[19] [18] = \<const0> ;
  assign \time_control_regs[19] [17] = \<const0> ;
  assign \time_control_regs[19] [16] = \<const0> ;
  assign \time_control_regs[19] [15] = \<const0> ;
  assign \time_control_regs[19] [14] = \<const0> ;
  assign \time_control_regs[19] [13] = \<const0> ;
  assign \time_control_regs[19] [12] = \<const0> ;
  assign \time_control_regs[19] [11] = \<const0> ;
  assign \time_control_regs[19] [10] = \<const0> ;
  assign \time_control_regs[19] [9] = \<const0> ;
  assign \time_control_regs[19] [8] = \<const0> ;
  assign \time_control_regs[19] [7] = \<const0> ;
  assign \time_control_regs[19] [6] = \<const1> ;
  assign \time_control_regs[19] [5] = \<const1> ;
  assign \time_control_regs[19] [4] = \<const1> ;
  assign \time_control_regs[19] [3] = \<const1> ;
  assign \time_control_regs[19] [2] = \<const1> ;
  assign \time_control_regs[19] [1] = \<const1> ;
  assign \time_control_regs[19] [0] = \<const1> ;
  assign \time_control_regs[1] [31] = \<const0> ;
  assign \time_control_regs[1] [30] = \<const0> ;
  assign \time_control_regs[1] [29] = \<const0> ;
  assign \time_control_regs[1] [28] = \<const0> ;
  assign \time_control_regs[1] [27] = \<const0> ;
  assign \time_control_regs[1] [26] = \<const0> ;
  assign \time_control_regs[1] [25] = \<const0> ;
  assign \time_control_regs[1] [24] = \<const0> ;
  assign \time_control_regs[1] [23] = \<const0> ;
  assign \time_control_regs[1] [22] = \<const0> ;
  assign \time_control_regs[1] [21] = \<const0> ;
  assign \time_control_regs[1] [20] = \<const0> ;
  assign \time_control_regs[1] [19] = \<const0> ;
  assign \time_control_regs[1] [18] = \<const0> ;
  assign \time_control_regs[1] [17] = \<const0> ;
  assign \time_control_regs[1] [16] = \<const0> ;
  assign \time_control_regs[1] [15] = \<const0> ;
  assign \time_control_regs[1] [14] = \<const0> ;
  assign \time_control_regs[1] [13] = \<const0> ;
  assign \time_control_regs[1] [12] = \<const0> ;
  assign \time_control_regs[1] [11] = \<const0> ;
  assign \time_control_regs[1] [10] = \<const0> ;
  assign \time_control_regs[1] [9] = \<const0> ;
  assign \time_control_regs[1] [8] = \<const0> ;
  assign \time_control_regs[1] [7] = \<const0> ;
  assign \time_control_regs[1] [6] = \<const0> ;
  assign \time_control_regs[1] [5] = \<const0> ;
  assign \time_control_regs[1] [4] = \<const0> ;
  assign \time_control_regs[1] [3] = \<const0> ;
  assign \time_control_regs[1] [2] = \<const0> ;
  assign \time_control_regs[1] [1] = \<const0> ;
  assign \time_control_regs[1] [0] = \<const0> ;
  assign \time_control_regs[20] [31] = \<const0> ;
  assign \time_control_regs[20] [30] = \<const0> ;
  assign \time_control_regs[20] [29] = \<const0> ;
  assign \time_control_regs[20] [28] = \<const0> ;
  assign \time_control_regs[20] [27] = \<const0> ;
  assign \time_control_regs[20] [26] = \<const0> ;
  assign \time_control_regs[20] [25] = \<const0> ;
  assign \time_control_regs[20] [24] = \<const0> ;
  assign \time_control_regs[20] [23] = \<const0> ;
  assign \time_control_regs[20] [22] = \<const0> ;
  assign \time_control_regs[20] [21] = \<const0> ;
  assign \time_control_regs[20] [20] = \<const0> ;
  assign \time_control_regs[20] [19] = \<const0> ;
  assign \time_control_regs[20] [18] = \<const0> ;
  assign \time_control_regs[20] [17] = \<const0> ;
  assign \time_control_regs[20] [16] = \<const0> ;
  assign \time_control_regs[20] [15] = \<const0> ;
  assign \time_control_regs[20] [14] = \<const0> ;
  assign \time_control_regs[20] [13] = \<const0> ;
  assign \time_control_regs[20] [12] = \<const0> ;
  assign \time_control_regs[20] [11] = \<const1> ;
  assign \time_control_regs[20] [10] = \<const0> ;
  assign \time_control_regs[20] [9] = \<const1> ;
  assign \time_control_regs[20] [8] = \<const0> ;
  assign \time_control_regs[20] [7] = \<const1> ;
  assign \time_control_regs[20] [6] = \<const1> ;
  assign \time_control_regs[20] [5] = \<const0> ;
  assign \time_control_regs[20] [4] = \<const0> ;
  assign \time_control_regs[20] [3] = \<const1> ;
  assign \time_control_regs[20] [2] = \<const0> ;
  assign \time_control_regs[20] [1] = \<const0> ;
  assign \time_control_regs[20] [0] = \<const0> ;
  assign \time_control_regs[21] [31] = \<const0> ;
  assign \time_control_regs[21] [30] = \<const0> ;
  assign \time_control_regs[21] [29] = \<const0> ;
  assign \time_control_regs[21] [28] = \<const0> ;
  assign \time_control_regs[21] [27] = \<const0> ;
  assign \time_control_regs[21] [26] = \<const0> ;
  assign \time_control_regs[21] [25] = \<const1> ;
  assign \time_control_regs[21] [24] = \<const0> ;
  assign \time_control_regs[21] [23] = \<const1> ;
  assign \time_control_regs[21] [22] = \<const1> ;
  assign \time_control_regs[21] [21] = \<const1> ;
  assign \time_control_regs[21] [20] = \<const0> ;
  assign \time_control_regs[21] [19] = \<const1> ;
  assign \time_control_regs[21] [18] = \<const1> ;
  assign \time_control_regs[21] [17] = \<const1> ;
  assign \time_control_regs[21] [16] = \<const0> ;
  assign \time_control_regs[21] [15] = \<const0> ;
  assign \time_control_regs[21] [14] = \<const0> ;
  assign \time_control_regs[21] [13] = \<const0> ;
  assign \time_control_regs[21] [12] = \<const0> ;
  assign \time_control_regs[21] [11] = \<const0> ;
  assign \time_control_regs[21] [10] = \<const1> ;
  assign \time_control_regs[21] [9] = \<const1> ;
  assign \time_control_regs[21] [8] = \<const1> ;
  assign \time_control_regs[21] [7] = \<const1> ;
  assign \time_control_regs[21] [6] = \<const0> ;
  assign \time_control_regs[21] [5] = \<const0> ;
  assign \time_control_regs[21] [4] = \<const1> ;
  assign \time_control_regs[21] [3] = \<const0> ;
  assign \time_control_regs[21] [2] = \<const1> ;
  assign \time_control_regs[21] [1] = \<const0> ;
  assign \time_control_regs[21] [0] = \<const0> ;
  assign \time_control_regs[22] [31] = \<const0> ;
  assign \time_control_regs[22] [30] = \<const0> ;
  assign \time_control_regs[22] [29] = \<const0> ;
  assign \time_control_regs[22] [28] = \<const0> ;
  assign \time_control_regs[22] [27] = \<const1> ;
  assign \time_control_regs[22] [26] = \<const0> ;
  assign \time_control_regs[22] [25] = \<const1> ;
  assign \time_control_regs[22] [24] = \<const0> ;
  assign \time_control_regs[22] [23] = \<const1> ;
  assign \time_control_regs[22] [22] = \<const0> ;
  assign \time_control_regs[22] [21] = \<const0> ;
  assign \time_control_regs[22] [20] = \<const1> ;
  assign \time_control_regs[22] [19] = \<const0> ;
  assign \time_control_regs[22] [18] = \<const1> ;
  assign \time_control_regs[22] [17] = \<const1> ;
  assign \time_control_regs[22] [16] = \<const0> ;
  assign \time_control_regs[22] [15] = \<const0> ;
  assign \time_control_regs[22] [14] = \<const0> ;
  assign \time_control_regs[22] [13] = \<const0> ;
  assign \time_control_regs[22] [12] = \<const0> ;
  assign \time_control_regs[22] [11] = \<const1> ;
  assign \time_control_regs[22] [10] = \<const0> ;
  assign \time_control_regs[22] [9] = \<const1> ;
  assign \time_control_regs[22] [8] = \<const0> ;
  assign \time_control_regs[22] [7] = \<const0> ;
  assign \time_control_regs[22] [6] = \<const0> ;
  assign \time_control_regs[22] [5] = \<const1> ;
  assign \time_control_regs[22] [4] = \<const1> ;
  assign \time_control_regs[22] [3] = \<const0> ;
  assign \time_control_regs[22] [2] = \<const0> ;
  assign \time_control_regs[22] [1] = \<const1> ;
  assign \time_control_regs[22] [0] = \<const0> ;
  assign \time_control_regs[23] [31] = \<const0> ;
  assign \time_control_regs[23] [30] = \<const0> ;
  assign \time_control_regs[23] [29] = \<const0> ;
  assign \time_control_regs[23] [28] = \<const0> ;
  assign \time_control_regs[23] [27] = \<const1> ;
  assign \time_control_regs[23] [26] = \<const0> ;
  assign \time_control_regs[23] [25] = \<const1> ;
  assign \time_control_regs[23] [24] = \<const0> ;
  assign \time_control_regs[23] [23] = \<const0> ;
  assign \time_control_regs[23] [22] = \<const0> ;
  assign \time_control_regs[23] [21] = \<const0> ;
  assign \time_control_regs[23] [20] = \<const0> ;
  assign \time_control_regs[23] [19] = \<const0> ;
  assign \time_control_regs[23] [18] = \<const0> ;
  assign \time_control_regs[23] [17] = \<const0> ;
  assign \time_control_regs[23] [16] = \<const0> ;
  assign \time_control_regs[23] [15] = \<const0> ;
  assign \time_control_regs[23] [14] = \<const0> ;
  assign \time_control_regs[23] [13] = \<const0> ;
  assign \time_control_regs[23] [12] = \<const0> ;
  assign \time_control_regs[23] [11] = \<const1> ;
  assign \time_control_regs[23] [10] = \<const0> ;
  assign \time_control_regs[23] [9] = \<const1> ;
  assign \time_control_regs[23] [8] = \<const0> ;
  assign \time_control_regs[23] [7] = \<const0> ;
  assign \time_control_regs[23] [6] = \<const0> ;
  assign \time_control_regs[23] [5] = \<const0> ;
  assign \time_control_regs[23] [4] = \<const0> ;
  assign \time_control_regs[23] [3] = \<const0> ;
  assign \time_control_regs[23] [2] = \<const0> ;
  assign \time_control_regs[23] [1] = \<const0> ;
  assign \time_control_regs[23] [0] = \<const0> ;
  assign \time_control_regs[24] [31] = \<const0> ;
  assign \time_control_regs[24] [30] = \<const0> ;
  assign \time_control_regs[24] [29] = \<const0> ;
  assign \time_control_regs[24] [28] = \<const0> ;
  assign \time_control_regs[24] [27] = \<const0> ;
  assign \time_control_regs[24] [26] = \<const1> ;
  assign \time_control_regs[24] [25] = \<const1> ;
  assign \time_control_regs[24] [24] = \<const1> ;
  assign \time_control_regs[24] [23] = \<const1> ;
  assign \time_control_regs[24] [22] = \<const0> ;
  assign \time_control_regs[24] [21] = \<const0> ;
  assign \time_control_regs[24] [20] = \<const0> ;
  assign \time_control_regs[24] [19] = \<const1> ;
  assign \time_control_regs[24] [18] = \<const1> ;
  assign \time_control_regs[24] [17] = \<const1> ;
  assign \time_control_regs[24] [16] = \<const1> ;
  assign \time_control_regs[24] [15] = \<const0> ;
  assign \time_control_regs[24] [14] = \<const0> ;
  assign \time_control_regs[24] [13] = \<const0> ;
  assign \time_control_regs[24] [12] = \<const0> ;
  assign \time_control_regs[24] [11] = \<const0> ;
  assign \time_control_regs[24] [10] = \<const1> ;
  assign \time_control_regs[24] [9] = \<const1> ;
  assign \time_control_regs[24] [8] = \<const1> ;
  assign \time_control_regs[24] [7] = \<const1> ;
  assign \time_control_regs[24] [6] = \<const0> ;
  assign \time_control_regs[24] [5] = \<const0> ;
  assign \time_control_regs[24] [4] = \<const0> ;
  assign \time_control_regs[24] [3] = \<const0> ;
  assign \time_control_regs[24] [2] = \<const1> ;
  assign \time_control_regs[24] [1] = \<const0> ;
  assign \time_control_regs[24] [0] = \<const1> ;
  assign \time_control_regs[25] [31] = \<const0> ;
  assign \time_control_regs[25] [30] = \<const0> ;
  assign \time_control_regs[25] [29] = \<const0> ;
  assign \time_control_regs[25] [28] = \<const0> ;
  assign \time_control_regs[25] [27] = \<const1> ;
  assign \time_control_regs[25] [26] = \<const0> ;
  assign \time_control_regs[25] [25] = \<const1> ;
  assign \time_control_regs[25] [24] = \<const0> ;
  assign \time_control_regs[25] [23] = \<const0> ;
  assign \time_control_regs[25] [22] = \<const0> ;
  assign \time_control_regs[25] [21] = \<const0> ;
  assign \time_control_regs[25] [20] = \<const0> ;
  assign \time_control_regs[25] [19] = \<const0> ;
  assign \time_control_regs[25] [18] = \<const0> ;
  assign \time_control_regs[25] [17] = \<const0> ;
  assign \time_control_regs[25] [16] = \<const0> ;
  assign \time_control_regs[25] [15] = \<const0> ;
  assign \time_control_regs[25] [14] = \<const0> ;
  assign \time_control_regs[25] [13] = \<const0> ;
  assign \time_control_regs[25] [12] = \<const0> ;
  assign \time_control_regs[25] [11] = \<const1> ;
  assign \time_control_regs[25] [10] = \<const0> ;
  assign \time_control_regs[25] [9] = \<const1> ;
  assign \time_control_regs[25] [8] = \<const0> ;
  assign \time_control_regs[25] [7] = \<const0> ;
  assign \time_control_regs[25] [6] = \<const0> ;
  assign \time_control_regs[25] [5] = \<const0> ;
  assign \time_control_regs[25] [4] = \<const0> ;
  assign \time_control_regs[25] [3] = \<const0> ;
  assign \time_control_regs[25] [2] = \<const0> ;
  assign \time_control_regs[25] [1] = \<const0> ;
  assign \time_control_regs[25] [0] = \<const0> ;
  assign \time_control_regs[26] [31] = \<const0> ;
  assign \time_control_regs[26] [30] = \<const0> ;
  assign \time_control_regs[26] [29] = \<const0> ;
  assign \time_control_regs[26] [28] = \<const0> ;
  assign \time_control_regs[26] [27] = \<const0> ;
  assign \time_control_regs[26] [26] = \<const1> ;
  assign \time_control_regs[26] [25] = \<const0> ;
  assign \time_control_regs[26] [24] = \<const1> ;
  assign \time_control_regs[26] [23] = \<const0> ;
  assign \time_control_regs[26] [22] = \<const0> ;
  assign \time_control_regs[26] [21] = \<const0> ;
  assign \time_control_regs[26] [20] = \<const0> ;
  assign \time_control_regs[26] [19] = \<const0> ;
  assign \time_control_regs[26] [18] = \<const0> ;
  assign \time_control_regs[26] [17] = \<const0> ;
  assign \time_control_regs[26] [16] = \<const0> ;
  assign \time_control_regs[26] [15] = \<const0> ;
  assign \time_control_regs[26] [14] = \<const0> ;
  assign \time_control_regs[26] [13] = \<const0> ;
  assign \time_control_regs[26] [12] = \<const0> ;
  assign \time_control_regs[26] [11] = \<const0> ;
  assign \time_control_regs[26] [10] = \<const1> ;
  assign \time_control_regs[26] [9] = \<const0> ;
  assign \time_control_regs[26] [8] = \<const1> ;
  assign \time_control_regs[26] [7] = \<const0> ;
  assign \time_control_regs[26] [6] = \<const0> ;
  assign \time_control_regs[26] [5] = \<const0> ;
  assign \time_control_regs[26] [4] = \<const0> ;
  assign \time_control_regs[26] [3] = \<const0> ;
  assign \time_control_regs[26] [2] = \<const0> ;
  assign \time_control_regs[26] [1] = \<const0> ;
  assign \time_control_regs[26] [0] = \<const0> ;
  assign \time_control_regs[27] [31] = \<const0> ;
  assign \time_control_regs[27] [30] = \<const0> ;
  assign \time_control_regs[27] [29] = \<const0> ;
  assign \time_control_regs[27] [28] = \<const0> ;
  assign \time_control_regs[27] [27] = \<const0> ;
  assign \time_control_regs[27] [26] = \<const0> ;
  assign \time_control_regs[27] [25] = \<const1> ;
  assign \time_control_regs[27] [24] = \<const0> ;
  assign \time_control_regs[27] [23] = \<const1> ;
  assign \time_control_regs[27] [22] = \<const1> ;
  assign \time_control_regs[27] [21] = \<const0> ;
  assign \time_control_regs[27] [20] = \<const1> ;
  assign \time_control_regs[27] [19] = \<const1> ;
  assign \time_control_regs[27] [18] = \<const0> ;
  assign \time_control_regs[27] [17] = \<const0> ;
  assign \time_control_regs[27] [16] = \<const1> ;
  assign \time_control_regs[27] [15] = \<const0> ;
  assign \time_control_regs[27] [14] = \<const0> ;
  assign \time_control_regs[27] [13] = \<const0> ;
  assign \time_control_regs[27] [12] = \<const0> ;
  assign \time_control_regs[27] [11] = \<const0> ;
  assign \time_control_regs[27] [10] = \<const0> ;
  assign \time_control_regs[27] [9] = \<const1> ;
  assign \time_control_regs[27] [8] = \<const0> ;
  assign \time_control_regs[27] [7] = \<const1> ;
  assign \time_control_regs[27] [6] = \<const1> ;
  assign \time_control_regs[27] [5] = \<const0> ;
  assign \time_control_regs[27] [4] = \<const1> ;
  assign \time_control_regs[27] [3] = \<const0> ;
  assign \time_control_regs[27] [2] = \<const1> ;
  assign \time_control_regs[27] [1] = \<const0> ;
  assign \time_control_regs[27] [0] = \<const0> ;
  assign \time_control_regs[28] [31] = \<const0> ;
  assign \time_control_regs[28] [30] = \<const0> ;
  assign \time_control_regs[28] [29] = \<const0> ;
  assign \time_control_regs[28] [28] = \<const0> ;
  assign \time_control_regs[28] [27] = \<const0> ;
  assign \time_control_regs[28] [26] = \<const1> ;
  assign \time_control_regs[28] [25] = \<const0> ;
  assign \time_control_regs[28] [24] = \<const1> ;
  assign \time_control_regs[28] [23] = \<const0> ;
  assign \time_control_regs[28] [22] = \<const0> ;
  assign \time_control_regs[28] [21] = \<const0> ;
  assign \time_control_regs[28] [20] = \<const0> ;
  assign \time_control_regs[28] [19] = \<const0> ;
  assign \time_control_regs[28] [18] = \<const0> ;
  assign \time_control_regs[28] [17] = \<const0> ;
  assign \time_control_regs[28] [16] = \<const0> ;
  assign \time_control_regs[28] [15] = \<const0> ;
  assign \time_control_regs[28] [14] = \<const0> ;
  assign \time_control_regs[28] [13] = \<const0> ;
  assign \time_control_regs[28] [12] = \<const0> ;
  assign \time_control_regs[28] [11] = \<const0> ;
  assign \time_control_regs[28] [10] = \<const1> ;
  assign \time_control_regs[28] [9] = \<const0> ;
  assign \time_control_regs[28] [8] = \<const1> ;
  assign \time_control_regs[28] [7] = \<const0> ;
  assign \time_control_regs[28] [6] = \<const0> ;
  assign \time_control_regs[28] [5] = \<const0> ;
  assign \time_control_regs[28] [4] = \<const0> ;
  assign \time_control_regs[28] [3] = \<const0> ;
  assign \time_control_regs[28] [2] = \<const0> ;
  assign \time_control_regs[28] [1] = \<const0> ;
  assign \time_control_regs[28] [0] = \<const0> ;
  assign \time_control_regs[29] [31] = \<const0> ;
  assign \time_control_regs[29] [30] = \<const0> ;
  assign \time_control_regs[29] [29] = \<const0> ;
  assign \time_control_regs[29] [28] = \<const0> ;
  assign \time_control_regs[29] [27] = \<const0> ;
  assign \time_control_regs[29] [26] = \<const1> ;
  assign \time_control_regs[29] [25] = \<const1> ;
  assign \time_control_regs[29] [24] = \<const1> ;
  assign \time_control_regs[29] [23] = \<const1> ;
  assign \time_control_regs[29] [22] = \<const0> ;
  assign \time_control_regs[29] [21] = \<const0> ;
  assign \time_control_regs[29] [20] = \<const0> ;
  assign \time_control_regs[29] [19] = \<const0> ;
  assign \time_control_regs[29] [18] = \<const0> ;
  assign \time_control_regs[29] [17] = \<const0> ;
  assign \time_control_regs[29] [16] = \<const0> ;
  assign \time_control_regs[29] [15] = \<const0> ;
  assign \time_control_regs[29] [14] = \<const0> ;
  assign \time_control_regs[29] [13] = \<const0> ;
  assign \time_control_regs[29] [12] = \<const0> ;
  assign \time_control_regs[29] [11] = \<const1> ;
  assign \time_control_regs[29] [10] = \<const0> ;
  assign \time_control_regs[29] [9] = \<const1> ;
  assign \time_control_regs[29] [8] = \<const0> ;
  assign \time_control_regs[29] [7] = \<const0> ;
  assign \time_control_regs[29] [6] = \<const0> ;
  assign \time_control_regs[29] [5] = \<const0> ;
  assign \time_control_regs[29] [4] = \<const0> ;
  assign \time_control_regs[29] [3] = \<const0> ;
  assign \time_control_regs[29] [2] = \<const0> ;
  assign \time_control_regs[29] [1] = \<const0> ;
  assign \time_control_regs[29] [0] = \<const0> ;
  assign \time_control_regs[2] [31] = \<const0> ;
  assign \time_control_regs[2] [30] = \<const0> ;
  assign \time_control_regs[2] [29] = \<const0> ;
  assign \time_control_regs[2] [28] = \<const0> ;
  assign \time_control_regs[2] [27] = \<const0> ;
  assign \time_control_regs[2] [26] = \<const0> ;
  assign \time_control_regs[2] [25] = \<const0> ;
  assign \time_control_regs[2] [24] = \<const0> ;
  assign \time_control_regs[2] [23] = \<const0> ;
  assign \time_control_regs[2] [22] = \<const0> ;
  assign \time_control_regs[2] [21] = \<const0> ;
  assign \time_control_regs[2] [20] = \<const0> ;
  assign \time_control_regs[2] [19] = \<const0> ;
  assign \time_control_regs[2] [18] = \<const0> ;
  assign \time_control_regs[2] [17] = \<const0> ;
  assign \time_control_regs[2] [16] = \<const0> ;
  assign \time_control_regs[2] [15] = \<const0> ;
  assign \time_control_regs[2] [14] = \<const0> ;
  assign \time_control_regs[2] [13] = \<const0> ;
  assign \time_control_regs[2] [12] = \<const0> ;
  assign \time_control_regs[2] [11] = \<const0> ;
  assign \time_control_regs[2] [10] = \<const0> ;
  assign \time_control_regs[2] [9] = \<const0> ;
  assign \time_control_regs[2] [8] = \<const0> ;
  assign \time_control_regs[2] [7] = \<const0> ;
  assign \time_control_regs[2] [6] = \<const0> ;
  assign \time_control_regs[2] [5] = \<const0> ;
  assign \time_control_regs[2] [4] = \<const0> ;
  assign \time_control_regs[2] [3] = \<const0> ;
  assign \time_control_regs[2] [2] = \<const0> ;
  assign \time_control_regs[2] [1] = \<const0> ;
  assign \time_control_regs[2] [0] = \<const0> ;
  assign \time_control_regs[3] [31] = \<const0> ;
  assign \time_control_regs[3] [30] = \<const0> ;
  assign \time_control_regs[3] [29] = \<const0> ;
  assign \time_control_regs[3] [28] = \<const0> ;
  assign \time_control_regs[3] [27] = \<const0> ;
  assign \time_control_regs[3] [26] = \<const0> ;
  assign \time_control_regs[3] [25] = \<const0> ;
  assign \time_control_regs[3] [24] = \<const0> ;
  assign \time_control_regs[3] [23] = \<const0> ;
  assign \time_control_regs[3] [22] = \<const0> ;
  assign \time_control_regs[3] [21] = \<const0> ;
  assign \time_control_regs[3] [20] = \<const0> ;
  assign \time_control_regs[3] [19] = \<const0> ;
  assign \time_control_regs[3] [18] = \<const0> ;
  assign \time_control_regs[3] [17] = \<const0> ;
  assign \time_control_regs[3] [16] = \<const0> ;
  assign \time_control_regs[3] [15] = \<const0> ;
  assign \time_control_regs[3] [14] = \<const0> ;
  assign \time_control_regs[3] [13] = \<const0> ;
  assign \time_control_regs[3] [12] = \<const0> ;
  assign \time_control_regs[3] [11] = \<const0> ;
  assign \time_control_regs[3] [10] = \<const0> ;
  assign \time_control_regs[3] [9] = \<const0> ;
  assign \time_control_regs[3] [8] = \<const0> ;
  assign \time_control_regs[3] [7] = \<const0> ;
  assign \time_control_regs[3] [6] = \<const0> ;
  assign \time_control_regs[3] [5] = \<const0> ;
  assign \time_control_regs[3] [4] = \<const0> ;
  assign \time_control_regs[3] [3] = \<const0> ;
  assign \time_control_regs[3] [2] = \<const0> ;
  assign \time_control_regs[3] [1] = \<const0> ;
  assign \time_control_regs[3] [0] = \<const0> ;
  assign \time_control_regs[4] [31] = \<const0> ;
  assign \time_control_regs[4] [30] = \<const0> ;
  assign \time_control_regs[4] [29] = \<const0> ;
  assign \time_control_regs[4] [28] = \<const0> ;
  assign \time_control_regs[4] [27] = \<const0> ;
  assign \time_control_regs[4] [26] = \<const0> ;
  assign \time_control_regs[4] [25] = \<const0> ;
  assign \time_control_regs[4] [24] = \<const0> ;
  assign \time_control_regs[4] [23] = \<const0> ;
  assign \time_control_regs[4] [22] = \<const0> ;
  assign \time_control_regs[4] [21] = \<const0> ;
  assign \time_control_regs[4] [20] = \<const0> ;
  assign \time_control_regs[4] [19] = \<const0> ;
  assign \time_control_regs[4] [18] = \<const0> ;
  assign \time_control_regs[4] [17] = \<const0> ;
  assign \time_control_regs[4] [16] = \<const0> ;
  assign \time_control_regs[4] [15] = \<const0> ;
  assign \time_control_regs[4] [14] = \<const0> ;
  assign \time_control_regs[4] [13] = \<const0> ;
  assign \time_control_regs[4] [12] = \<const0> ;
  assign \time_control_regs[4] [11] = \<const0> ;
  assign \time_control_regs[4] [10] = \<const0> ;
  assign \time_control_regs[4] [9] = \<const0> ;
  assign \time_control_regs[4] [8] = \<const0> ;
  assign \time_control_regs[4] [7] = \<const0> ;
  assign \time_control_regs[4] [6] = \<const0> ;
  assign \time_control_regs[4] [5] = \<const0> ;
  assign \time_control_regs[4] [4] = \<const0> ;
  assign \time_control_regs[4] [3] = \<const0> ;
  assign \time_control_regs[4] [2] = \<const0> ;
  assign \time_control_regs[4] [1] = \<const0> ;
  assign \time_control_regs[4] [0] = \<const0> ;
  assign \time_control_regs[5] [31] = \<const0> ;
  assign \time_control_regs[5] [30] = \<const0> ;
  assign \time_control_regs[5] [29] = \<const0> ;
  assign \time_control_regs[5] [28] = \<const0> ;
  assign \time_control_regs[5] [27] = \<const0> ;
  assign \time_control_regs[5] [26] = \<const0> ;
  assign \time_control_regs[5] [25] = \<const0> ;
  assign \time_control_regs[5] [24] = \<const0> ;
  assign \time_control_regs[5] [23] = \<const0> ;
  assign \time_control_regs[5] [22] = \<const0> ;
  assign \time_control_regs[5] [21] = \<const0> ;
  assign \time_control_regs[5] [20] = \<const0> ;
  assign \time_control_regs[5] [19] = \<const0> ;
  assign \time_control_regs[5] [18] = \<const0> ;
  assign \time_control_regs[5] [17] = \<const0> ;
  assign \time_control_regs[5] [16] = \<const0> ;
  assign \time_control_regs[5] [15] = \<const0> ;
  assign \time_control_regs[5] [14] = \<const0> ;
  assign \time_control_regs[5] [13] = \<const0> ;
  assign \time_control_regs[5] [12] = \<const0> ;
  assign \time_control_regs[5] [11] = \<const0> ;
  assign \time_control_regs[5] [10] = \<const0> ;
  assign \time_control_regs[5] [9] = \<const0> ;
  assign \time_control_regs[5] [8] = \<const0> ;
  assign \time_control_regs[5] [7] = \<const0> ;
  assign \time_control_regs[5] [6] = \<const0> ;
  assign \time_control_regs[5] [5] = \<const0> ;
  assign \time_control_regs[5] [4] = \<const0> ;
  assign \time_control_regs[5] [3] = \<const0> ;
  assign \time_control_regs[5] [2] = \<const0> ;
  assign \time_control_regs[5] [1] = \<const0> ;
  assign \time_control_regs[5] [0] = \<const0> ;
  assign \time_control_regs[6] [31] = \<const0> ;
  assign \time_control_regs[6] [30] = \<const0> ;
  assign \time_control_regs[6] [29] = \<const0> ;
  assign \time_control_regs[6] [28] = \<const0> ;
  assign \time_control_regs[6] [27] = \<const0> ;
  assign \time_control_regs[6] [26] = \<const0> ;
  assign \time_control_regs[6] [25] = \<const0> ;
  assign \time_control_regs[6] [24] = \<const0> ;
  assign \time_control_regs[6] [23] = \<const0> ;
  assign \time_control_regs[6] [22] = \<const0> ;
  assign \time_control_regs[6] [21] = \<const0> ;
  assign \time_control_regs[6] [20] = \<const0> ;
  assign \time_control_regs[6] [19] = \<const0> ;
  assign \time_control_regs[6] [18] = \<const0> ;
  assign \time_control_regs[6] [17] = \<const0> ;
  assign \time_control_regs[6] [16] = \<const0> ;
  assign \time_control_regs[6] [15] = \<const0> ;
  assign \time_control_regs[6] [14] = \<const0> ;
  assign \time_control_regs[6] [13] = \<const0> ;
  assign \time_control_regs[6] [12] = \<const0> ;
  assign \time_control_regs[6] [11] = \<const0> ;
  assign \time_control_regs[6] [10] = \<const0> ;
  assign \time_control_regs[6] [9] = \<const0> ;
  assign \time_control_regs[6] [8] = \<const0> ;
  assign \time_control_regs[6] [7] = \<const0> ;
  assign \time_control_regs[6] [6] = \<const0> ;
  assign \time_control_regs[6] [5] = \<const0> ;
  assign \time_control_regs[6] [4] = \<const0> ;
  assign \time_control_regs[6] [3] = \<const0> ;
  assign \time_control_regs[6] [2] = \<const0> ;
  assign \time_control_regs[6] [1] = \<const0> ;
  assign \time_control_regs[6] [0] = \<const0> ;
  assign \time_control_regs[7] [31] = \<const0> ;
  assign \time_control_regs[7] [30] = \<const0> ;
  assign \time_control_regs[7] [29] = \<const0> ;
  assign \time_control_regs[7] [28] = \<const0> ;
  assign \time_control_regs[7] [27] = \<const0> ;
  assign \time_control_regs[7] [26] = \<const0> ;
  assign \time_control_regs[7] [25] = \<const0> ;
  assign \time_control_regs[7] [24] = \<const0> ;
  assign \time_control_regs[7] [23] = \<const0> ;
  assign \time_control_regs[7] [22] = \<const0> ;
  assign \time_control_regs[7] [21] = \<const0> ;
  assign \time_control_regs[7] [20] = \<const0> ;
  assign \time_control_regs[7] [19] = \<const0> ;
  assign \time_control_regs[7] [18] = \<const0> ;
  assign \time_control_regs[7] [17] = \<const0> ;
  assign \time_control_regs[7] [16] = \<const0> ;
  assign \time_control_regs[7] [15] = \<const0> ;
  assign \time_control_regs[7] [14] = \<const0> ;
  assign \time_control_regs[7] [13] = \<const0> ;
  assign \time_control_regs[7] [12] = \<const0> ;
  assign \time_control_regs[7] [11] = \<const0> ;
  assign \time_control_regs[7] [10] = \<const0> ;
  assign \time_control_regs[7] [9] = \<const0> ;
  assign \time_control_regs[7] [8] = \<const0> ;
  assign \time_control_regs[7] [7] = \<const0> ;
  assign \time_control_regs[7] [6] = \<const0> ;
  assign \time_control_regs[7] [5] = \<const0> ;
  assign \time_control_regs[7] [4] = \<const0> ;
  assign \time_control_regs[7] [3] = \<const0> ;
  assign \time_control_regs[7] [2] = \<const0> ;
  assign \time_control_regs[7] [1] = \<const0> ;
  assign \time_control_regs[7] [0] = \<const0> ;
  assign \time_control_regs[8] [31] = \<const0> ;
  assign \time_control_regs[8] [30] = \<const0> ;
  assign \time_control_regs[8] [29] = \<const0> ;
  assign \time_control_regs[8] [28] = \<const0> ;
  assign \time_control_regs[8] [27] = \<const0> ;
  assign \time_control_regs[8] [26] = \<const0> ;
  assign \time_control_regs[8] [25] = \<const0> ;
  assign \time_control_regs[8] [24] = \<const0> ;
  assign \time_control_regs[8] [23] = \<const0> ;
  assign \time_control_regs[8] [22] = \<const0> ;
  assign \time_control_regs[8] [21] = \<const0> ;
  assign \time_control_regs[8] [20] = \<const0> ;
  assign \time_control_regs[8] [19] = \<const0> ;
  assign \time_control_regs[8] [18] = \<const0> ;
  assign \time_control_regs[8] [17] = \<const0> ;
  assign \time_control_regs[8] [16] = \<const0> ;
  assign \time_control_regs[8] [15] = \<const0> ;
  assign \time_control_regs[8] [14] = \<const0> ;
  assign \time_control_regs[8] [13] = \<const0> ;
  assign \time_control_regs[8] [12] = \<const0> ;
  assign \time_control_regs[8] [11] = \<const0> ;
  assign \time_control_regs[8] [10] = \<const0> ;
  assign \time_control_regs[8] [9] = \<const0> ;
  assign \time_control_regs[8] [8] = \<const0> ;
  assign \time_control_regs[8] [7] = \<const0> ;
  assign \time_control_regs[8] [6] = \<const0> ;
  assign \time_control_regs[8] [5] = \<const0> ;
  assign \time_control_regs[8] [4] = \<const0> ;
  assign \time_control_regs[8] [3] = \<const0> ;
  assign \time_control_regs[8] [2] = \<const0> ;
  assign \time_control_regs[8] [1] = \<const0> ;
  assign \time_control_regs[8] [0] = \<const0> ;
  assign \time_control_regs[9] [31] = \<const0> ;
  assign \time_control_regs[9] [30] = \<const0> ;
  assign \time_control_regs[9] [29] = \<const0> ;
  assign \time_control_regs[9] [28] = \<const0> ;
  assign \time_control_regs[9] [27] = \<const0> ;
  assign \time_control_regs[9] [26] = \<const0> ;
  assign \time_control_regs[9] [25] = \<const0> ;
  assign \time_control_regs[9] [24] = \<const0> ;
  assign \time_control_regs[9] [23] = \<const0> ;
  assign \time_control_regs[9] [22] = \<const0> ;
  assign \time_control_regs[9] [21] = \<const0> ;
  assign \time_control_regs[9] [20] = \<const0> ;
  assign \time_control_regs[9] [19] = \<const0> ;
  assign \time_control_regs[9] [18] = \<const0> ;
  assign \time_control_regs[9] [17] = \<const0> ;
  assign \time_control_regs[9] [16] = \<const0> ;
  assign \time_control_regs[9] [15] = \<const0> ;
  assign \time_control_regs[9] [14] = \<const0> ;
  assign \time_control_regs[9] [13] = \<const0> ;
  assign \time_control_regs[9] [12] = \<const0> ;
  assign \time_control_regs[9] [11] = \<const0> ;
  assign \time_control_regs[9] [10] = \<const0> ;
  assign \time_control_regs[9] [9] = \<const0> ;
  assign \time_control_regs[9] [8] = \<const0> ;
  assign \time_control_regs[9] [7] = \<const0> ;
  assign \time_control_regs[9] [6] = \<const0> ;
  assign \time_control_regs[9] [5] = \<const0> ;
  assign \time_control_regs[9] [4] = \<const0> ;
  assign \time_control_regs[9] [3] = \<const0> ;
  assign \time_control_regs[9] [2] = \<const0> ;
  assign \time_control_regs[9] [1] = \<const0> ;
  assign \time_control_regs[9] [0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
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
