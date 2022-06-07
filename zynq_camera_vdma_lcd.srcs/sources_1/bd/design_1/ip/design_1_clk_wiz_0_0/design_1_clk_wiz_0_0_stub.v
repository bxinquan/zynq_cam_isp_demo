// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun  7 07:35:26 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Work/fpga/zynq_camera_vdma_lcd/zynq_camera_vdma_lcd.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_stub.v
// Design      : design_1_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_0_0(camif_xclk, cam_xclk, lcd_clk, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="camif_xclk,cam_xclk,lcd_clk,locked,clk_in1" */;
  output camif_xclk;
  output cam_xclk;
  output lcd_clk;
  output locked;
  input clk_in1;
endmodule
