// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Oct  3 01:57:15 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.gen/sources_1/bd/base/ip/base_axis_to_video_0_0/base_axis_to_video_0_0_stub.v
// Design      : base_axis_to_video_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_to_video_v1_0,Vivado 2021.1" *)
module base_axis_to_video_0_0(aclk, aresetn, s_axis_tdata, s_axis_tvalid, 
  s_axis_tready, s_axis_tlast, s_axis_tuser, vid_clk, vid_rstn, vid_hsync, vid_vsync, 
  vid_active_video, vid_data, locked, underflow)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tdata[7:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,s_axis_tuser,vid_clk,vid_rstn,vid_hsync,vid_vsync,vid_active_video,vid_data[7:0],locked,underflow" */;
  input aclk;
  input aresetn;
  input [7:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  input s_axis_tuser;
  input vid_clk;
  input vid_rstn;
  output vid_hsync;
  output vid_vsync;
  output vid_active_video;
  output [7:0]vid_data;
  output locked;
  output underflow;
endmodule
