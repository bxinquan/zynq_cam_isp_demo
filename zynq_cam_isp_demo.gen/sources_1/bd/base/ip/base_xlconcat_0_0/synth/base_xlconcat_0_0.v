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


// IP VLNV: xilinx.com:ip:xlconcat:2.1
// IP Revision: 4

(* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2021.1" *)
(* CHECK_LICENSE_TYPE = "base_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}" *)
(* CORE_GENERATION_INFO = "base_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{x_ipProduct=Vivado 2021.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlconcat,x_ipVersion=2.1,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,IN0_WIDTH=1,IN1_WIDTH=1,IN2_WIDTH=1,IN3_WIDTH=1,IN4_WIDTH=1,IN5_WIDTH=1,IN6_WIDTH=1,IN7_WIDTH=1,IN8_WIDTH=1,IN9_WIDTH=1,IN10_WIDTH=1,IN11_WIDTH=1,IN12_WIDTH=1,IN13_WIDTH=1,IN14_WIDTH=1,IN15_WIDTH=1,IN16_WIDTH=1,IN17_WIDTH=1,IN18_WIDTH=1,IN19_WIDTH=1,IN20_WIDTH=1,IN21_WIDTH=1,IN22_WIDTH=1,IN23_WID\
TH=1,IN24_WIDTH=1,IN25_WIDTH=1,IN26_WIDTH=1,IN27_WIDTH=1,IN28_WIDTH=1,IN29_WIDTH=1,IN30_WIDTH=1,IN31_WIDTH=1,IN32_WIDTH=1,IN33_WIDTH=1,IN34_WIDTH=1,IN35_WIDTH=1,IN36_WIDTH=1,IN37_WIDTH=1,IN38_WIDTH=1,IN39_WIDTH=1,IN40_WIDTH=1,IN41_WIDTH=1,IN42_WIDTH=1,IN43_WIDTH=1,IN44_WIDTH=1,IN45_WIDTH=1,IN46_WIDTH=1,IN47_WIDTH=1,IN48_WIDTH=1,IN49_WIDTH=1,IN50_WIDTH=1,IN51_WIDTH=1,IN52_WIDTH=1,IN53_WIDTH=1,IN54_WIDTH=1,IN55_WIDTH=1,IN56_WIDTH=1,IN57_WIDTH=1,IN58_WIDTH=1,IN59_WIDTH=1,IN60_WIDTH=1,IN61_WIDTH=1,I\
N62_WIDTH=1,IN63_WIDTH=1,IN64_WIDTH=1,IN65_WIDTH=1,IN66_WIDTH=1,IN67_WIDTH=1,IN68_WIDTH=1,IN69_WIDTH=1,IN70_WIDTH=1,IN71_WIDTH=1,IN72_WIDTH=1,IN73_WIDTH=1,IN74_WIDTH=1,IN75_WIDTH=1,IN76_WIDTH=1,IN77_WIDTH=1,IN78_WIDTH=1,IN79_WIDTH=1,IN80_WIDTH=1,IN81_WIDTH=1,IN82_WIDTH=1,IN83_WIDTH=1,IN84_WIDTH=1,IN85_WIDTH=1,IN86_WIDTH=1,IN87_WIDTH=1,IN88_WIDTH=1,IN89_WIDTH=1,IN90_WIDTH=1,IN91_WIDTH=1,IN92_WIDTH=1,IN93_WIDTH=1,IN94_WIDTH=1,IN95_WIDTH=1,IN96_WIDTH=1,IN97_WIDTH=1,IN98_WIDTH=1,IN99_WIDTH=1,IN100_W\
IDTH=1,IN101_WIDTH=1,IN102_WIDTH=1,IN103_WIDTH=1,IN104_WIDTH=1,IN105_WIDTH=1,IN106_WIDTH=1,IN107_WIDTH=1,IN108_WIDTH=1,IN109_WIDTH=1,IN110_WIDTH=1,IN111_WIDTH=1,IN112_WIDTH=1,IN113_WIDTH=1,IN114_WIDTH=1,IN115_WIDTH=1,IN116_WIDTH=1,IN117_WIDTH=1,IN118_WIDTH=1,IN119_WIDTH=1,IN120_WIDTH=1,IN121_WIDTH=1,IN122_WIDTH=1,IN123_WIDTH=1,IN124_WIDTH=1,IN125_WIDTH=1,IN126_WIDTH=1,IN127_WIDTH=1,dout_width=11,NUM_PORTS=11}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module base_xlconcat_0_0 (
  In0,
  In1,
  In2,
  In3,
  In4,
  In5,
  In6,
  In7,
  In8,
  In9,
  In10,
  dout
);

input wire [0 : 0] In0;
input wire [0 : 0] In1;
input wire [0 : 0] In2;
input wire [0 : 0] In3;
input wire [0 : 0] In4;
input wire [0 : 0] In5;
input wire [0 : 0] In6;
input wire [0 : 0] In7;
input wire [0 : 0] In8;
input wire [0 : 0] In9;
input wire [0 : 0] In10;
output wire [10 : 0] dout;

  xlconcat_v2_1_4_xlconcat #(
    .IN0_WIDTH(1),
    .IN1_WIDTH(1),
    .IN2_WIDTH(1),
    .IN3_WIDTH(1),
    .IN4_WIDTH(1),
    .IN5_WIDTH(1),
    .IN6_WIDTH(1),
    .IN7_WIDTH(1),
    .IN8_WIDTH(1),
    .IN9_WIDTH(1),
    .IN10_WIDTH(1),
    .IN11_WIDTH(1),
    .IN12_WIDTH(1),
    .IN13_WIDTH(1),
    .IN14_WIDTH(1),
    .IN15_WIDTH(1),
    .IN16_WIDTH(1),
    .IN17_WIDTH(1),
    .IN18_WIDTH(1),
    .IN19_WIDTH(1),
    .IN20_WIDTH(1),
    .IN21_WIDTH(1),
    .IN22_WIDTH(1),
    .IN23_WIDTH(1),
    .IN24_WIDTH(1),
    .IN25_WIDTH(1),
    .IN26_WIDTH(1),
    .IN27_WIDTH(1),
    .IN28_WIDTH(1),
    .IN29_WIDTH(1),
    .IN30_WIDTH(1),
    .IN31_WIDTH(1),
    .IN32_WIDTH(1),
    .IN33_WIDTH(1),
    .IN34_WIDTH(1),
    .IN35_WIDTH(1),
    .IN36_WIDTH(1),
    .IN37_WIDTH(1),
    .IN38_WIDTH(1),
    .IN39_WIDTH(1),
    .IN40_WIDTH(1),
    .IN41_WIDTH(1),
    .IN42_WIDTH(1),
    .IN43_WIDTH(1),
    .IN44_WIDTH(1),
    .IN45_WIDTH(1),
    .IN46_WIDTH(1),
    .IN47_WIDTH(1),
    .IN48_WIDTH(1),
    .IN49_WIDTH(1),
    .IN50_WIDTH(1),
    .IN51_WIDTH(1),
    .IN52_WIDTH(1),
    .IN53_WIDTH(1),
    .IN54_WIDTH(1),
    .IN55_WIDTH(1),
    .IN56_WIDTH(1),
    .IN57_WIDTH(1),
    .IN58_WIDTH(1),
    .IN59_WIDTH(1),
    .IN60_WIDTH(1),
    .IN61_WIDTH(1),
    .IN62_WIDTH(1),
    .IN63_WIDTH(1),
    .IN64_WIDTH(1),
    .IN65_WIDTH(1),
    .IN66_WIDTH(1),
    .IN67_WIDTH(1),
    .IN68_WIDTH(1),
    .IN69_WIDTH(1),
    .IN70_WIDTH(1),
    .IN71_WIDTH(1),
    .IN72_WIDTH(1),
    .IN73_WIDTH(1),
    .IN74_WIDTH(1),
    .IN75_WIDTH(1),
    .IN76_WIDTH(1),
    .IN77_WIDTH(1),
    .IN78_WIDTH(1),
    .IN79_WIDTH(1),
    .IN80_WIDTH(1),
    .IN81_WIDTH(1),
    .IN82_WIDTH(1),
    .IN83_WIDTH(1),
    .IN84_WIDTH(1),
    .IN85_WIDTH(1),
    .IN86_WIDTH(1),
    .IN87_WIDTH(1),
    .IN88_WIDTH(1),
    .IN89_WIDTH(1),
    .IN90_WIDTH(1),
    .IN91_WIDTH(1),
    .IN92_WIDTH(1),
    .IN93_WIDTH(1),
    .IN94_WIDTH(1),
    .IN95_WIDTH(1),
    .IN96_WIDTH(1),
    .IN97_WIDTH(1),
    .IN98_WIDTH(1),
    .IN99_WIDTH(1),
    .IN100_WIDTH(1),
    .IN101_WIDTH(1),
    .IN102_WIDTH(1),
    .IN103_WIDTH(1),
    .IN104_WIDTH(1),
    .IN105_WIDTH(1),
    .IN106_WIDTH(1),
    .IN107_WIDTH(1),
    .IN108_WIDTH(1),
    .IN109_WIDTH(1),
    .IN110_WIDTH(1),
    .IN111_WIDTH(1),
    .IN112_WIDTH(1),
    .IN113_WIDTH(1),
    .IN114_WIDTH(1),
    .IN115_WIDTH(1),
    .IN116_WIDTH(1),
    .IN117_WIDTH(1),
    .IN118_WIDTH(1),
    .IN119_WIDTH(1),
    .IN120_WIDTH(1),
    .IN121_WIDTH(1),
    .IN122_WIDTH(1),
    .IN123_WIDTH(1),
    .IN124_WIDTH(1),
    .IN125_WIDTH(1),
    .IN126_WIDTH(1),
    .IN127_WIDTH(1),
    .dout_width(11),
    .NUM_PORTS(11)
  ) inst (
    .In0(In0),
    .In1(In1),
    .In2(In2),
    .In3(In3),
    .In4(In4),
    .In5(In5),
    .In6(In6),
    .In7(In7),
    .In8(In8),
    .In9(In9),
    .In10(In10),
    .In11(1'B0),
    .In12(1'B0),
    .In13(1'B0),
    .In14(1'B0),
    .In15(1'B0),
    .In16(1'B0),
    .In17(1'B0),
    .In18(1'B0),
    .In19(1'B0),
    .In20(1'B0),
    .In21(1'B0),
    .In22(1'B0),
    .In23(1'B0),
    .In24(1'B0),
    .In25(1'B0),
    .In26(1'B0),
    .In27(1'B0),
    .In28(1'B0),
    .In29(1'B0),
    .In30(1'B0),
    .In31(1'B0),
    .In32(1'B0),
    .In33(1'B0),
    .In34(1'B0),
    .In35(1'B0),
    .In36(1'B0),
    .In37(1'B0),
    .In38(1'B0),
    .In39(1'B0),
    .In40(1'B0),
    .In41(1'B0),
    .In42(1'B0),
    .In43(1'B0),
    .In44(1'B0),
    .In45(1'B0),
    .In46(1'B0),
    .In47(1'B0),
    .In48(1'B0),
    .In49(1'B0),
    .In50(1'B0),
    .In51(1'B0),
    .In52(1'B0),
    .In53(1'B0),
    .In54(1'B0),
    .In55(1'B0),
    .In56(1'B0),
    .In57(1'B0),
    .In58(1'B0),
    .In59(1'B0),
    .In60(1'B0),
    .In61(1'B0),
    .In62(1'B0),
    .In63(1'B0),
    .In64(1'B0),
    .In65(1'B0),
    .In66(1'B0),
    .In67(1'B0),
    .In68(1'B0),
    .In69(1'B0),
    .In70(1'B0),
    .In71(1'B0),
    .In72(1'B0),
    .In73(1'B0),
    .In74(1'B0),
    .In75(1'B0),
    .In76(1'B0),
    .In77(1'B0),
    .In78(1'B0),
    .In79(1'B0),
    .In80(1'B0),
    .In81(1'B0),
    .In82(1'B0),
    .In83(1'B0),
    .In84(1'B0),
    .In85(1'B0),
    .In86(1'B0),
    .In87(1'B0),
    .In88(1'B0),
    .In89(1'B0),
    .In90(1'B0),
    .In91(1'B0),
    .In92(1'B0),
    .In93(1'B0),
    .In94(1'B0),
    .In95(1'B0),
    .In96(1'B0),
    .In97(1'B0),
    .In98(1'B0),
    .In99(1'B0),
    .In100(1'B0),
    .In101(1'B0),
    .In102(1'B0),
    .In103(1'B0),
    .In104(1'B0),
    .In105(1'B0),
    .In106(1'B0),
    .In107(1'B0),
    .In108(1'B0),
    .In109(1'B0),
    .In110(1'B0),
    .In111(1'B0),
    .In112(1'B0),
    .In113(1'B0),
    .In114(1'B0),
    .In115(1'B0),
    .In116(1'B0),
    .In117(1'B0),
    .In118(1'B0),
    .In119(1'B0),
    .In120(1'B0),
    .In121(1'B0),
    .In122(1'B0),
    .In123(1'B0),
    .In124(1'B0),
    .In125(1'B0),
    .In126(1'B0),
    .In127(1'B0),
    .dout(dout)
  );
endmodule
