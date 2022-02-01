//----------------------------------------------------------------------------//
//                                                                            //
//  COPYRIGHT (C) 2011, VIPcore Group, Fudan University                       //
//                                                                            //
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE                //
//  EXPRESSED WRITTEN CONSENT OF VIPcore Group                                //
//                                                                            //
//  VIPcore                   http://10.133.20.18                             //
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

module tq_ht4x4 (
  ht_s00_i, ht_s01_i, ht_s02_i, ht_s03_i,
  ht_s10_i, ht_s11_i, ht_s12_i, ht_s13_i,
  ht_s20_i, ht_s21_i, ht_s22_i, ht_s23_i,
  ht_s30_i, ht_s31_i, ht_s32_i, ht_s33_i,
  
  ht_d00_o, ht_d01_o, ht_d02_o, ht_d03_o,
  ht_d10_o, ht_d11_o, ht_d12_o, ht_d13_o,
  ht_d20_o, ht_d21_o, ht_d22_o, ht_d23_o,
  ht_d30_o, ht_d31_o, ht_d32_o, ht_d33_o
);
parameter IN_WIDTH =15,
		  OUT_WIDTH=15;
					
input  [IN_WIDTH-1:0] ht_s00_i, ht_s01_i, ht_s02_i, ht_s03_i;
input  [IN_WIDTH-1:0] ht_s10_i, ht_s11_i, ht_s12_i, ht_s13_i;
input  [IN_WIDTH-1:0] ht_s20_i, ht_s21_i, ht_s22_i, ht_s23_i;
input  [IN_WIDTH-1:0] ht_s30_i, ht_s31_i, ht_s32_i, ht_s33_i;

output [OUT_WIDTH-1:0] ht_d00_o, ht_d01_o, ht_d02_o, ht_d03_o;
output [OUT_WIDTH-1:0] ht_d10_o, ht_d11_o, ht_d12_o, ht_d13_o;
output [OUT_WIDTH-1:0] ht_d20_o, ht_d21_o, ht_d22_o, ht_d23_o;
output [OUT_WIDTH-1:0] ht_d30_o, ht_d31_o, ht_d32_o, ht_d33_o;

wire   [IN_WIDTH-1:0] ht_t00_w, ht_t01_w, ht_t02_w, ht_t03_w;
wire   [IN_WIDTH-1:0] ht_t10_w, ht_t11_w, ht_t12_w, ht_t13_w;
wire   [IN_WIDTH-1:0] ht_t20_w, ht_t21_w, ht_t22_w, ht_t23_w;
wire   [IN_WIDTH-1:0] ht_t30_w, ht_t31_w, ht_t32_w, ht_t33_w;

tq_ht4 #(IN_WIDTH)  u_hadamard_h0(
	.s0(ht_s00_i), .s1(ht_s01_i), .s2(ht_s02_i), .s3(ht_s03_i), 
	.d0(ht_t00_w), .d1(ht_t10_w), .d2(ht_t20_w), .d3(ht_t30_w)
	);
tq_ht4 #(IN_WIDTH)  u_hadamard_h1(
	.s0(ht_s10_i), .s1(ht_s11_i), .s2(ht_s12_i), .s3(ht_s13_i), 
	.d0(ht_t01_w), .d1(ht_t11_w), .d2(ht_t21_w), .d3(ht_t31_w)
	);
tq_ht4 #(IN_WIDTH)  u_hadamard_h2(
	.s0(ht_s20_i), .s1(ht_s21_i), .s2(ht_s22_i), .s3(ht_s23_i), 
	.d0(ht_t02_w), .d1(ht_t12_w), .d2(ht_t22_w), .d3(ht_t32_w)
	);
tq_ht4 #(IN_WIDTH)  u_hadamard_h3(
	.s0(ht_s30_i), .s1(ht_s31_i), .s2(ht_s32_i), .s3(ht_s33_i), 
	.d0(ht_t03_w), .d1(ht_t13_w), .d2(ht_t23_w), .d3(ht_t33_w)
	);

tq_ht4_p1 #(IN_WIDTH) u_hadamard_v0(
	.s0(ht_t00_w), .s1(ht_t01_w), .s2(ht_t02_w), .s3(ht_t03_w), 
	.d0(ht_d00_o), .d1(ht_d01_o), .d2(ht_d02_o), .d3(ht_d03_o)
	);
tq_ht4_p1 #(IN_WIDTH) u_hadamard_v1(
	.s0(ht_t10_w), .s1(ht_t11_w), .s2(ht_t12_w), .s3(ht_t13_w), 
	.d0(ht_d10_o), .d1(ht_d11_o), .d2(ht_d12_o), .d3(ht_d13_o)
	);
tq_ht4_p1 #(IN_WIDTH) u_hadamard_v2(
	.s0(ht_t20_w), .s1(ht_t21_w), .s2(ht_t22_w), .s3(ht_t23_w), 
	.d0(ht_d20_o), .d1(ht_d21_o), .d2(ht_d22_o), .d3(ht_d23_o)
	);
tq_ht4_p1 #(IN_WIDTH) u_hadamard_v3(
	.s0(ht_t30_w), .s1(ht_t31_w), .s2(ht_t32_w), .s3(ht_t33_w), 
	.d0(ht_d30_o), .d1(ht_d31_o), .d2(ht_d32_o), .d3(ht_d33_o)
	);

endmodule


module tq_ht4_p1 ( s0, s1, s2, s3, d0, d1, d2, d3 );
parameter INPUT_WIDTH = 9;

input  [INPUT_WIDTH-1:0] s0, s1, s2, s3;
output [INPUT_WIDTH-1:0] d0, d1, d2, d3;
//extend sign bit
wire [INPUT_WIDTH+1:0] e0, e1, e2, e3;
//intermediate 
wire [INPUT_WIDTH+1:0] t0, t1, t2, t3;
wire [INPUT_WIDTH+1:0] n_e1_plus1; 
wire [INPUT_WIDTH+1:0] n_e3_plus1;
wire [INPUT_WIDTH+1:0] n_t2_plus1;
wire [INPUT_WIDTH+1:0] n_t3_plus1;

wire [INPUT_WIDTH+1:0] d0_w;
wire [INPUT_WIDTH+1:0] d1_w;
wire [INPUT_WIDTH+1:0] d2_w;
wire [INPUT_WIDTH+1:0] d3_w;


assign e0 = {{2{s0[INPUT_WIDTH-1]}},s0[INPUT_WIDTH-1:0]};
assign e1 = {{2{s1[INPUT_WIDTH-1]}},s1[INPUT_WIDTH-1:0]};
assign e2 = {{2{s2[INPUT_WIDTH-1]}},s2[INPUT_WIDTH-1:0]};
assign e3 = {{2{s3[INPUT_WIDTH-1]}},s3[INPUT_WIDTH-1:0]};

assign n_e1_plus1 = ~e1 + 1'b1;
assign n_e3_plus1 = ~e3 + 1'b1;
assign n_t2_plus1 = ~t2 + 1'b1;
assign n_t3_plus1 = ~t3 + 1'b1;

assign t0 = e0 + e1;
assign t1 = e0 + n_e1_plus1;
assign t2 = e2 + e3;
assign t3 = e2 + n_e3_plus1;

assign d0_w = (t0 + t2 + 1'b1)>>1;
assign d1_w = (t0 + n_t2_plus1 + 1'b1)>>1;
assign d3_w = (t1 + t3 + 1'b1)>>1;
assign d2_w = (t1 + n_t3_plus1 + 1'b1)>>1;
    
assign d0 = d0_w[14 : 0];
assign d1 = d1_w[14 : 0];
assign d3 = d3_w[14 : 0];
assign d2 = d2_w[14 : 0];
    
    
endmodule


module tq_ht4 ( s0, s1, s2, s3, d0, d1, d2, d3 );
parameter INPUT_WIDTH = 9;

input  [INPUT_WIDTH-1:0] s0, s1, s2, s3;
output [INPUT_WIDTH-1:0] d0, d1, d2, d3;
//extend sign bit
wire [INPUT_WIDTH+1:0] e0, e1, e2, e3;
//intermediate 
wire [INPUT_WIDTH+1:0] t0, t1, t2, t3;
wire [INPUT_WIDTH+1:0] n_e1_plus1; 
wire [INPUT_WIDTH+1:0] n_e3_plus1;
wire [INPUT_WIDTH+1:0] n_t2_plus1;
wire [INPUT_WIDTH+1:0] n_t3_plus1;

wire [INPUT_WIDTH+1:0] d0_w;
wire [INPUT_WIDTH+1:0] d1_w;
wire [INPUT_WIDTH+1:0] d2_w;
wire [INPUT_WIDTH+1:0] d3_w;

assign e0 = {{2{s0[INPUT_WIDTH-1]}},s0[INPUT_WIDTH-1:0]};
assign e1 = {{2{s1[INPUT_WIDTH-1]}},s1[INPUT_WIDTH-1:0]};
assign e2 = {{2{s2[INPUT_WIDTH-1]}},s2[INPUT_WIDTH-1:0]};
assign e3 = {{2{s3[INPUT_WIDTH-1]}},s3[INPUT_WIDTH-1:0]};

assign n_e1_plus1 = ~e1 + 1'b1;
assign n_e3_plus1 = ~e3 + 1'b1;
assign n_t2_plus1 = ~t2 + 1'b1;
assign n_t3_plus1 = ~t3 + 1'b1;

assign t0 = e0 + e1;
assign t1 = e0 + n_e1_plus1;
assign t2 = e2 + e3;
assign t3 = e2 + n_e3_plus1;

assign d0_w = t0 + t2;
assign d1_w = t0 + n_t2_plus1;
assign d3_w = t1 + t3;
assign d2_w = t1 + n_t3_plus1;

assign d0 =  d0_w[14 : 0]; 
assign d1 =  d1_w[14 : 0]; 
assign d3 =  d3_w[14 : 0]; 
assign d2 =  d2_w[14 : 0]; 

endmodule
