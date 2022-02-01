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
// Created        : 15:06 2011/5/24                                           //
//----------------------------------------------------------------------------//
// Description    :                                                           //
//                                                                            //
// $Id$                                                                       //
//----------------------------------------------------------------------------//
`include "enc_defines.v"

module tq_ht2x2 (
  ht_s00_i, ht_s01_i, ht_s10_i, ht_s11_i, 
  ht_d00_o, ht_d01_o, ht_d10_o, ht_d11_o
);

parameter IN_WIDTH = 15;
parameter OUT_WIDTH = 15;

input  [IN_WIDTH-1:0] ht_s00_i, ht_s01_i;
input  [IN_WIDTH-1:0] ht_s10_i, ht_s11_i;

output [OUT_WIDTH-1:0] ht_d00_o, ht_d01_o;
output [OUT_WIDTH-1:0] ht_d10_o, ht_d11_o;

wire  [IN_WIDTH-1:0] n_s1_plus1, n_s3_plus1;
wire  [IN_WIDTH-1:0] t0, t1, t2, t3;
wire  [IN_WIDTH-1:0] n_t1_plus1, n_t3_plus1;

assign n_s1_plus1 = ~ht_s01_i + 1'b1;
assign n_s3_plus1 = ~ht_s11_i + 1'b1;

assign t0 = ht_s00_i + ht_s01_i;
assign t1 = ht_s10_i + ht_s11_i;
assign t2 = ht_s00_i + n_s1_plus1;
assign t3 = ht_s10_i + n_s3_plus1;

assign n_t1_plus1 = ~t1 + 1'b1;
assign n_t3_plus1 = ~t3 + 1'b1;

assign ht_d00_o = t0 + t1;
assign ht_d01_o = t0 + n_t1_plus1;
assign ht_d10_o = t2 + t3;
assign ht_d11_o = t2 + n_t3_plus1;

endmodule
