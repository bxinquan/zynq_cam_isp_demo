// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: openedv.com:user:DVI_Transmitter:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module base_DVI_Transmitter_0_0 (
  pclk,
  pclk_x5,
  reset_n,
  video_din,
  video_hsync,
  video_vsync,
  video_de,
  tmds_clk_p,
  tmds_clk_n,
  tmds_data_p,
  tmds_data_n,
  tmds_oen
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pclk, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pclk CLK" *)
input wire pclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pclk_x5, FREQ_HZ 371250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pclk_x5 CLK" *)
input wire pclk_x5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 Video_In DATA" *)
input wire [23 : 0] video_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 Video_In HSYNC" *)
input wire video_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 Video_In VSYNC" *)
input wire video_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 Video_In ACTIVE_VIDEO" *)
input wire video_de;
(* X_INTERFACE_INFO = "openedv.com:user:TMDS:1.0 TMDS TMDS_CLK_P" *)
output wire tmds_clk_p;
(* X_INTERFACE_INFO = "openedv.com:user:TMDS:1.0 TMDS TMDS_CLK_N" *)
output wire tmds_clk_n;
(* X_INTERFACE_INFO = "openedv.com:user:TMDS:1.0 TMDS TMDS_DATA_P" *)
output wire [2 : 0] tmds_data_p;
(* X_INTERFACE_INFO = "openedv.com:user:TMDS:1.0 TMDS TMDS_DATA_N" *)
output wire [2 : 0] tmds_data_n;
output wire tmds_oen;

  dvi_transmitter_top inst (
    .pclk(pclk),
    .pclk_x5(pclk_x5),
    .reset_n(reset_n),
    .video_din(video_din),
    .video_hsync(video_hsync),
    .video_vsync(video_vsync),
    .video_de(video_de),
    .tmds_clk_p(tmds_clk_p),
    .tmds_clk_n(tmds_clk_n),
    .tmds_data_p(tmds_data_p),
    .tmds_data_n(tmds_data_n),
    .tmds_oen(tmds_oen)
  );
endmodule
