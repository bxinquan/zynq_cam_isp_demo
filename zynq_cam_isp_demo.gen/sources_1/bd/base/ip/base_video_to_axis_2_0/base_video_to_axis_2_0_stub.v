// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Sep 19 20:23:14 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.gen/sources_1/bd/base/ip/base_video_to_axis_2_0/base_video_to_axis_2_0_stub.v
// Design      : base_video_to_axis_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "video_to_axis_v1_0,Vivado 2021.1" *)
module base_video_to_axis_2_0(vid_clk, vid_rstn, vid_vsync, vid_active_video, 
  vid_data, aclk, aresetn, m_axis_tdata, m_axis_tvalid, m_axis_tready, m_axis_tlast, 
  m_axis_tuser, overflow)
/* synthesis syn_black_box black_box_pad_pin="vid_clk,vid_rstn,vid_vsync,vid_active_video,vid_data[23:0],aclk,aresetn,m_axis_tdata[23:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tuser,overflow" */;
  input vid_clk;
  input vid_rstn;
  input vid_vsync;
  input vid_active_video;
  input [23:0]vid_data;
  input aclk;
  input aresetn;
  output [23:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output m_axis_tuser;
  output overflow;
endmodule
