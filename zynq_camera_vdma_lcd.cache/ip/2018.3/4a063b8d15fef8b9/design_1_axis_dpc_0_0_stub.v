// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan 20 00:05:03 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis_dpc_0_0_stub.v
// Design      : design_1_axis_dpc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_dpc_v1_0,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(axis_aclk, axis_aresetn, s00_axis_tdata, 
  s00_axis_tlast, s00_axis_tvalid, s00_axis_tuser, s00_axis_tready, m00_axis_tdata, 
  m00_axis_tlast, m00_axis_tuser, m00_axis_tvalid, m00_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="axis_aclk,axis_aresetn,s00_axis_tdata[7:0],s00_axis_tlast,s00_axis_tvalid,s00_axis_tuser,s00_axis_tready,m00_axis_tdata[7:0],m00_axis_tlast,m00_axis_tuser,m00_axis_tvalid,m00_axis_tready" */;
  input axis_aclk;
  input axis_aresetn;
  input [7:0]s00_axis_tdata;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input s00_axis_tuser;
  output s00_axis_tready;
  output [7:0]m00_axis_tdata;
  output m00_axis_tlast;
  output m00_axis_tuser;
  output m00_axis_tvalid;
  input m00_axis_tready;
endmodule
