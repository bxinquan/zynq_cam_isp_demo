//----------------------------------------------------------------------------//
//                                                                            //
//  COPYRIGHT (C) 2011, VIPcore Group, Fudan University                       //
//                                                                            //
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE                //
//  EXPRESSED WRITTEN CONSENT OF VIPcore Group                                //
//                                                                            //
//  VIPcore                   ihttp://10.133.20.18                             //
//  Fudan University          me.fudan.edu.cn                                 //
//----------------------------------------------------------------------------//
// Filename       : coding_style_datapath.v                                   //
// Author         : Huailu Ren                                                //
// Email          : hlren.pub@gmail.com                                       //
// Created        : 2011-4-6 01:49:50                                         //
//----------------------------------------------------------------------------//
// Description    :                                                           //
//                                                                            //
// $Id$                                                                       //
//----------------------------------------------------------------------------//
`include "enc_defines.v"

module tq_iht4x4 (
  iht_s00_i, iht_s01_i, iht_s02_i, iht_s03_i,
  iht_s10_i, iht_s11_i, iht_s12_i, iht_s13_i,
  iht_s20_i, iht_s21_i, iht_s22_i, iht_s23_i,
  iht_s30_i, iht_s31_i, iht_s32_i, iht_s33_i,
  
  iht_d00_o, iht_d01_o, iht_d02_o, iht_d03_o,
  iht_d10_o, iht_d11_o, iht_d12_o, iht_d13_o,
  iht_d20_o, iht_d21_o, iht_d22_o, iht_d23_o,
  iht_d30_o, iht_d31_o, iht_d32_o, iht_d33_o
);

parameter IN_WIDTH = 15;    
parameter OUT_WIDTH = 15;   


input  [IN_WIDTH-1:0] iht_s00_i, iht_s01_i, iht_s02_i, iht_s03_i;
input  [IN_WIDTH-1:0] iht_s10_i, iht_s11_i, iht_s12_i, iht_s13_i;
input  [IN_WIDTH-1:0] iht_s20_i, iht_s21_i, iht_s22_i, iht_s23_i;
input  [IN_WIDTH-1:0] iht_s30_i, iht_s31_i, iht_s32_i, iht_s33_i;

output [OUT_WIDTH-1:0] iht_d00_o, iht_d01_o, iht_d02_o, iht_d03_o;
output [OUT_WIDTH-1:0] iht_d10_o, iht_d11_o, iht_d12_o, iht_d13_o;
output [OUT_WIDTH-1:0] iht_d20_o, iht_d21_o, iht_d22_o, iht_d23_o;
output [OUT_WIDTH-1:0] iht_d30_o, iht_d31_o, iht_d32_o, iht_d33_o;

wire   [IN_WIDTH-1:0] iht_t00_w, iht_t01_w, iht_t02_w, iht_t03_w;
wire   [IN_WIDTH-1:0] iht_t10_w, iht_t11_w, iht_t12_w, iht_t13_w;
wire   [IN_WIDTH-1:0] iht_t20_w, iht_t21_w, iht_t22_w, iht_t23_w;
wire   [IN_WIDTH-1:0] iht_t30_w, iht_t31_w, iht_t32_w, iht_t33_w;

tq_iht4 #(IN_WIDTH)  u_iht_h0(
	.s0(iht_s00_i), .s1(iht_s01_i), .s2(iht_s02_i), .s3(iht_s03_i), 
	.d0(iht_t00_w), .d1(iht_t01_w), .d2(iht_t02_w), .d3(iht_t03_w)
	);
tq_iht4 #(IN_WIDTH)  u_iht_h1(
	.s0(iht_s10_i), .s1(iht_s11_i), .s2(iht_s12_i), .s3(iht_s13_i), 
	.d0(iht_t10_w), .d1(iht_t11_w), .d2(iht_t12_w), .d3(iht_t13_w)
	);
tq_iht4 #(IN_WIDTH)  u_iht_h2(
	.s0(iht_s20_i), .s1(iht_s21_i), .s2(iht_s22_i), .s3(iht_s23_i), 
	.d0(iht_t20_w), .d1(iht_t21_w), .d2(iht_t22_w), .d3(iht_t23_w)
	);
tq_iht4 #(IN_WIDTH)  u_iht_h3(
	.s0(iht_s30_i), .s1(iht_s31_i), .s2(iht_s32_i), .s3(iht_s33_i), 
	.d0(iht_t30_w), .d1(iht_t31_w), .d2(iht_t32_w), .d3(iht_t33_w)
	);

tq_iht4 #(IN_WIDTH) u_iht_v0(
	.s0(iht_t00_w), .s1(iht_t10_w), .s2(iht_t20_w), .s3(iht_t30_w), 
	.d0(iht_d00_o), .d1(iht_d01_o), .d2(iht_d02_o), .d3(iht_d03_o)
	);
tq_iht4 #(IN_WIDTH) u_iht_v1(
	.s0(iht_t01_w), .s1(iht_t11_w), .s2(iht_t21_w), .s3(iht_t31_w), 
	.d0(iht_d10_o), .d1(iht_d11_o), .d2(iht_d12_o), .d3(iht_d13_o)
	);
tq_iht4 #(IN_WIDTH) u_iht_v2(
	.s0(iht_t02_w), .s1(iht_t12_w), .s2(iht_t22_w), .s3(iht_t32_w), 
	.d0(iht_d20_o), .d1(iht_d21_o), .d2(iht_d22_o), .d3(iht_d23_o)
	);
tq_iht4 #(IN_WIDTH) u_iht_v3(
	.s0(iht_t03_w), .s1(iht_t13_w), .s2(iht_t23_w), .s3(iht_t33_w), 
	.d0(iht_d30_o), .d1(iht_d31_o), .d2(iht_d32_o), .d3(iht_d33_o)
	);

endmodule

module tq_iht4 ( s0, s1, s2, s3, d0, d1, d2, d3 );
parameter INPUT_WIDTH = 16;

input  [INPUT_WIDTH-1:0] s0, s1, s2, s3;
output [INPUT_WIDTH-1:0] d0, d1, d2, d3;
//extend sign bit
//intermediate 
wire [INPUT_WIDTH-1:0] s01, s23, d01, d23;
wire [INPUT_WIDTH-1:0] n_s1_plus1; 
wire [INPUT_WIDTH-1:0] n_s3_plus1;

assign n_s1_plus1 = ~s1 + 1'b1;
assign n_s3_plus1 = ~s3 + 1'b1;

assign s01 = s0 + s1;
assign s23 = s2 + s3;
assign d01 = s0 + n_s1_plus1;
assign d23 = s2 + n_s3_plus1;

wire [INPUT_WIDTH-1:0] n_s23_plus1; 
wire [INPUT_WIDTH-1:0] n_d23_plus1;

assign n_s23_plus1 = ~s23 + 1'b1;
assign n_d23_plus1 = ~d23 + 1'b1;

assign d0 = s01 + s23;
assign d1 = s01 + n_s23_plus1;
assign d2 = d01 + n_d23_plus1;
assign d3 = d01 + d23;

endmodule
