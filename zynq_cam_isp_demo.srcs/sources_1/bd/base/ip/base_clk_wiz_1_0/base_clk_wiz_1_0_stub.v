// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jun 12 13:10:28 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_clk_wiz_1_0/base_clk_wiz_1_0_stub.v
// Design      : base_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module base_clk_wiz_1_0(dvi_clk, dvi_clk_x5, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="dvi_clk,dvi_clk_x5,locked,clk_in1" */;
  output dvi_clk;
  output dvi_clk_x5;
  output locked;
  input clk_in1;
endmodule
