//----------------------------------------------------------------------------//
//                                                                            //
//  COPYRIGHT (C) 2011, VIPcore Group, Fudan University                       //
//                                                                            //
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE                //
//  EXPRESSED WRITTEN CONSENT OF VIPcore Group                                //
//                                                                            //
//  VIPcore                   idcttp://10.133.20.18                           //
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

module tq_idct4x4 (
  idct_s00_i, idct_s01_i, idct_s02_i, idct_s03_i,
  idct_s10_i, idct_s11_i, idct_s12_i, idct_s13_i,
  idct_s20_i, idct_s21_i, idct_s22_i, idct_s23_i,
  idct_s30_i, idct_s31_i, idct_s32_i, idct_s33_i,
  
  idct_d00_o, idct_d01_o, idct_d02_o, idct_d03_o,
  idct_d10_o, idct_d11_o, idct_d12_o, idct_d13_o,
  idct_d20_o, idct_d21_o, idct_d22_o, idct_d23_o,
  idct_d30_o, idct_d31_o, idct_d32_o, idct_d33_o
);

parameter IN_WIDTH  = 16;
parameter OUT_WIDTH = 16;

input  [IN_WIDTH-1:0] idct_s00_i, idct_s01_i, idct_s02_i, idct_s03_i;
input  [IN_WIDTH-1:0] idct_s10_i, idct_s11_i, idct_s12_i, idct_s13_i;
input  [IN_WIDTH-1:0] idct_s20_i, idct_s21_i, idct_s22_i, idct_s23_i;
input  [IN_WIDTH-1:0] idct_s30_i, idct_s31_i, idct_s32_i, idct_s33_i;

output [OUT_WIDTH-1:0] idct_d00_o, idct_d01_o, idct_d02_o, idct_d03_o;
output [OUT_WIDTH-1:0] idct_d10_o, idct_d11_o, idct_d12_o, idct_d13_o;
output [OUT_WIDTH-1:0] idct_d20_o, idct_d21_o, idct_d22_o, idct_d23_o;
output [OUT_WIDTH-1:0] idct_d30_o, idct_d31_o, idct_d32_o, idct_d33_o;

wire   [IN_WIDTH-1:0] idct_t00_w, idct_t01_w, idct_t02_w, idct_t03_w;
wire   [IN_WIDTH-1:0] idct_t10_w, idct_t11_w, idct_t12_w, idct_t13_w;
wire   [IN_WIDTH-1:0] idct_t20_w, idct_t21_w, idct_t22_w, idct_t23_w;
wire   [IN_WIDTH-1:0] idct_t30_w, idct_t31_w, idct_t32_w, idct_t33_w;

tq_idct4h #(IN_WIDTH)  u_idct_h0(
	.s0(idct_s00_i), .s1(idct_s01_i), .s2(idct_s02_i), .s3(idct_s03_i), 
	.d0(idct_t00_w), .d1(idct_t01_w), .d2(idct_t02_w), .d3(idct_t03_w)
	);
tq_idct4h #(IN_WIDTH)  u_idct_h1(
	.s0(idct_s10_i), .s1(idct_s11_i), .s2(idct_s12_i), .s3(idct_s13_i), 
	.d0(idct_t10_w), .d1(idct_t11_w), .d2(idct_t12_w), .d3(idct_t13_w)
	);
tq_idct4h #(IN_WIDTH)  u_idct_h2(
	.s0(idct_s20_i), .s1(idct_s21_i), .s2(idct_s22_i), .s3(idct_s23_i), 
	.d0(idct_t20_w), .d1(idct_t21_w), .d2(idct_t22_w), .d3(idct_t23_w)
	);
tq_idct4h #(IN_WIDTH)  u_idct_h3(
	.s0(idct_s30_i), .s1(idct_s31_i), .s2(idct_s32_i), .s3(idct_s33_i), 
	.d0(idct_t30_w), .d1(idct_t31_w), .d2(idct_t32_w), .d3(idct_t33_w)
	);

tq_idct4v #(IN_WIDTH) u_idct_v0(
	.s0(idct_t00_w), .s1(idct_t10_w), .s2(idct_t20_w), .s3(idct_t30_w), 
	.d0(idct_d00_o), .d1(idct_d01_o), .d2(idct_d02_o), .d3(idct_d03_o)
	);
tq_idct4v #(IN_WIDTH) u_idct_v1(
	.s0(idct_t01_w), .s1(idct_t11_w), .s2(idct_t21_w), .s3(idct_t31_w), 
	.d0(idct_d10_o), .d1(idct_d11_o), .d2(idct_d12_o), .d3(idct_d13_o)
	);
tq_idct4v #(IN_WIDTH) u_idct_v2(
	.s0(idct_t02_w), .s1(idct_t12_w), .s2(idct_t22_w), .s3(idct_t32_w), 
	.d0(idct_d20_o), .d1(idct_d21_o), .d2(idct_d22_o), .d3(idct_d23_o)
	);
tq_idct4v #(IN_WIDTH) u_idct_v3(
	.s0(idct_t03_w), .s1(idct_t13_w), .s2(idct_t23_w), .s3(idct_t33_w), 
	.d0(idct_d30_o), .d1(idct_d31_o), .d2(idct_d32_o), .d3(idct_d33_o)
	);

endmodule

module tq_idct4h ( s0, s1, s2, s3, d0, d1, d2, d3 );
parameter INPUT_WIDTH = 9;

input  [INPUT_WIDTH-1:0] s0, s1, s2, s3;
output [INPUT_WIDTH-1:0] d0, d1, d2, d3;

wire [INPUT_WIDTH-1:0] t0, t1, t2, t3;
wire [INPUT_WIDTH-1:0] n_s2_plus1; 
wire [INPUT_WIDTH-1:0] n_s3_plus1;
wire [INPUT_WIDTH-1:0] n_t2_plus1;
wire [INPUT_WIDTH-1:0] n_t3_plus1;

assign n_s2_plus1 = ~s2 + 1'b1;
assign n_s3_plus1 = ~s3 + 1'b1;
assign n_t2_plus1 = ~t2 + 1'b1;
assign n_t3_plus1 = ~t3 + 1'b1;

assign t0 = s0 + s2;
assign t1 = s0 + n_s2_plus1;
assign t2 = s1 + {s3[INPUT_WIDTH-1],s3[INPUT_WIDTH-1:1]};
assign t3 = {s1[INPUT_WIDTH-1],s1[INPUT_WIDTH-1:1]} + n_s3_plus1;

assign d0 = t0 + t2;
assign d1 = t1 + t3;
assign d2 = t1 + n_t3_plus1;
assign d3 = t0 + n_t2_plus1;

endmodule

module tq_idct4v ( s0, s1, s2, s3, d0, d1, d2, d3 );
parameter INPUT_WIDTH = 9;

input  [INPUT_WIDTH-1:0] s0, s1, s2, s3;
output [INPUT_WIDTH-1:0] d0, d1, d2, d3;

wire [INPUT_WIDTH-1:0] t0, t1, t2, t3;
wire [INPUT_WIDTH-1:0] n_s2_plus1; 
wire [INPUT_WIDTH-1:0] n_s3_plus1;
wire [INPUT_WIDTH-1:0] n_t2_plus1;
wire [INPUT_WIDTH-1:0] n_t3_plus1;

wire [INPUT_WIDTH-1:0] r0, r1, r2, r3;

assign n_s2_plus1 = ~s2 + 1'b1;
assign n_s3_plus1 = ~s3 + 1'b1;
assign n_t2_plus1 = ~t2 + 1'b1;
assign n_t3_plus1 = ~t3 + 1'b1;

assign t0 = s0 + s2;
assign t1 = s0 + n_s2_plus1;
assign t2 = s1 + {s3[INPUT_WIDTH-1],s3[INPUT_WIDTH-1:1]};
assign t3 = {s1[INPUT_WIDTH-1],s1[INPUT_WIDTH-1:1]} + n_s3_plus1;

assign r0 = t0 + t2 + 6'd32;
assign r1 = t1 + t3 + 6'd32;
assign r2 = t1 + n_t3_plus1 + 6'd32;
assign r3 = t0 + n_t2_plus1 + 6'd32;

assign d0 = {{6{r0[INPUT_WIDTH-1]}},r0[INPUT_WIDTH-1:6]};
assign d1 = {{6{r1[INPUT_WIDTH-1]}},r1[INPUT_WIDTH-1:6]};
assign d2 = {{6{r2[INPUT_WIDTH-1]}},r2[INPUT_WIDTH-1:6]};
assign d3 = {{6{r3[INPUT_WIDTH-1]}},r3[INPUT_WIDTH-1:6]};

endmodule
