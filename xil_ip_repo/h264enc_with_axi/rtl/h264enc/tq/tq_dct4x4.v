//----------------------------------------------------------------------------//
//                                                                            //
//  COPYRIGHT (C) 2011, VIPcore Group, Fudan University                       //
//                                                                            //
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE                //
//  EXPRESSED WRITTEN CONSENT OF VIPcore Group                                //
//                                                                            //
//  VIPcore                   dcttp://10.133.20.18                             //
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

module tq_dct4x4 (
  dct_s00_i, dct_s01_i, dct_s02_i, dct_s03_i,
  dct_s10_i, dct_s11_i, dct_s12_i, dct_s13_i,
  dct_s20_i, dct_s21_i, dct_s22_i, dct_s23_i,
  dct_s30_i, dct_s31_i, dct_s32_i, dct_s33_i,
  
  dct_d00_o, dct_d01_o, dct_d02_o, dct_d03_o,
  dct_d10_o, dct_d11_o, dct_d12_o, dct_d13_o,
  dct_d20_o, dct_d21_o, dct_d22_o, dct_d23_o,
  dct_d30_o, dct_d31_o, dct_d32_o, dct_d33_o
);
input  [ 8:0] dct_s00_i, dct_s01_i, dct_s02_i, dct_s03_i;
input  [ 8:0] dct_s10_i, dct_s11_i, dct_s12_i, dct_s13_i;
input  [ 8:0] dct_s20_i, dct_s21_i, dct_s22_i, dct_s23_i;
input  [ 8:0] dct_s30_i, dct_s31_i, dct_s32_i, dct_s33_i;

output [14:0] dct_d00_o, dct_d01_o, dct_d02_o, dct_d03_o;
output [14:0] dct_d10_o, dct_d11_o, dct_d12_o, dct_d13_o;
output [14:0] dct_d20_o, dct_d21_o, dct_d22_o, dct_d23_o;
output [14:0] dct_d30_o, dct_d31_o, dct_d32_o, dct_d33_o;

wire   [11:0] dct_t00_w, dct_t01_w, dct_t02_w, dct_t03_w;
wire   [11:0] dct_t10_w, dct_t11_w, dct_t12_w, dct_t13_w;
wire   [11:0] dct_t20_w, dct_t21_w, dct_t22_w, dct_t23_w;
wire   [11:0] dct_t30_w, dct_t31_w, dct_t32_w, dct_t33_w;

tq_dct4 #(9)  u_dct_h0(
	.s0(dct_s00_i), .s1(dct_s01_i), .s2(dct_s02_i), .s3(dct_s03_i), 
	.d0(dct_t00_w), .d1(dct_t01_w), .d2(dct_t02_w), .d3(dct_t03_w)
	);
tq_dct4 #(9)  u_dct_h1(
	.s0(dct_s10_i), .s1(dct_s11_i), .s2(dct_s12_i), .s3(dct_s13_i), 
	.d0(dct_t10_w), .d1(dct_t11_w), .d2(dct_t12_w), .d3(dct_t13_w)
	);
tq_dct4 #(9)  u_dct_h2(
	.s0(dct_s20_i), .s1(dct_s21_i), .s2(dct_s22_i), .s3(dct_s23_i), 
	.d0(dct_t20_w), .d1(dct_t21_w), .d2(dct_t22_w), .d3(dct_t23_w)
	);
tq_dct4 #(9)  u_dct_h3(
	.s0(dct_s30_i), .s1(dct_s31_i), .s2(dct_s32_i), .s3(dct_s33_i), 
	.d0(dct_t30_w), .d1(dct_t31_w), .d2(dct_t32_w), .d3(dct_t33_w)
	);

tq_dct4 #(12) u_dct_v0(
	.s0(dct_t00_w), .s1(dct_t10_w), .s2(dct_t20_w), .s3(dct_t30_w), 
	.d0(dct_d00_o), .d1(dct_d01_o), .d2(dct_d02_o), .d3(dct_d03_o)
	);
tq_dct4 #(12) u_dct_v1(
	.s0(dct_t01_w), .s1(dct_t11_w), .s2(dct_t21_w), .s3(dct_t31_w), 
	.d0(dct_d10_o), .d1(dct_d11_o), .d2(dct_d12_o), .d3(dct_d13_o)
	);
tq_dct4 #(12) u_dct_v2(
	.s0(dct_t02_w), .s1(dct_t12_w), .s2(dct_t22_w), .s3(dct_t32_w), 
	.d0(dct_d20_o), .d1(dct_d21_o), .d2(dct_d22_o), .d3(dct_d23_o)
	);
tq_dct4 #(12) u_dct_v3(
	.s0(dct_t03_w), .s1(dct_t13_w), .s2(dct_t23_w), .s3(dct_t33_w), 
	.d0(dct_d30_o), .d1(dct_d31_o), .d2(dct_d32_o), .d3(dct_d33_o)
	);

endmodule

module tq_dct4 ( s0, s1, s2, s3, d0, d1, d2, d3 );
parameter INPUT_WIDTH = 9;

input  [INPUT_WIDTH-1:0] s0, s1, s2, s3;
output [INPUT_WIDTH+2:0] d0, d1, d2, d3;
//extend sign bit
wire [INPUT_WIDTH+2:0] e0, e1, e2, e3;
//intermediate 
wire [INPUT_WIDTH+2:0] t0, t1, t2, t3;
wire [INPUT_WIDTH+2:0] n_e2_plus1; 
wire [INPUT_WIDTH+2:0] n_e3_plus1;
wire [INPUT_WIDTH+2:0] n_t1_plus1;
wire [INPUT_WIDTH+2:0] n_t2_plus1;

assign e0 = {{3{s0[INPUT_WIDTH-1]}},s0[INPUT_WIDTH-1:0]};
assign e1 = {{3{s1[INPUT_WIDTH-1]}},s1[INPUT_WIDTH-1:0]};
assign e2 = {{3{s2[INPUT_WIDTH-1]}},s2[INPUT_WIDTH-1:0]};
assign e3 = {{3{s3[INPUT_WIDTH-1]}},s3[INPUT_WIDTH-1:0]};

assign n_e2_plus1 = ~e2 + 1'b1;
assign n_e3_plus1 = ~e3 + 1'b1;
assign n_t1_plus1 = ~t1 + 1'b1;
assign n_t2_plus1 = ~t2 + 1'b1;

assign t0 = e0 + e3;
assign t1 = e1 + e2;
assign t2 = e1 + n_e2_plus1;
assign t3 = e0 + n_e3_plus1;

assign d0 = t0 + t1;
assign d1 = {t3[INPUT_WIDTH+1:0],1'b0} + t2;
assign d2 = t0 + n_t1_plus1;
assign d3 = t3 + {n_t2_plus1[INPUT_WIDTH+1:0],1'b0};

endmodule
