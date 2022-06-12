// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jun 12 13:10:38 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_DVI_Transmitter_0_0/base_DVI_Transmitter_0_0_stub.v
// Design      : base_DVI_Transmitter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dvi_transmitter_top,Vivado 2018.3" *)
module base_DVI_Transmitter_0_0(pclk, pclk_x5, reset_n, video_din, video_hsync, 
  video_vsync, video_de, tmds_clk_p, tmds_clk_n, tmds_data_p, tmds_data_n, tmds_oen)
/* synthesis syn_black_box black_box_pad_pin="pclk,pclk_x5,reset_n,video_din[23:0],video_hsync,video_vsync,video_de,tmds_clk_p,tmds_clk_n,tmds_data_p[2:0],tmds_data_n[2:0],tmds_oen" */;
  input pclk;
  input pclk_x5;
  input reset_n;
  input [23:0]video_din;
  input video_hsync;
  input video_vsync;
  input video_de;
  output tmds_clk_p;
  output tmds_clk_n;
  output [2:0]tmds_data_p;
  output [2:0]tmds_data_n;
  output tmds_oen;
endmodule
