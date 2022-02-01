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

module tq_iht2x2 (
  iht_s00_i, iht_s01_i, iht_s10_i, iht_s11_i, 
  iht_d00_o, iht_d01_o, iht_d10_o, iht_d11_o
);
parameter IN_WIDTH = 15;
parameter OUT_WIDTH = 15;
input  [IN_WIDTH-1:0] iht_s00_i, iht_s01_i;
input  [IN_WIDTH-1:0] iht_s10_i, iht_s11_i;

output [OUT_WIDTH-1:0] iht_d00_o, iht_d01_o;
output [OUT_WIDTH-1:0] iht_d10_o, iht_d11_o;

wire  [IN_WIDTH-1:0] n_s1_plus1, n_s3_plus1;
wire  [IN_WIDTH-1:0] t0, t1, t2, t3;
wire  [IN_WIDTH-1:0] n_t1_plus1, n_t3_plus1;

assign n_s1_plus1 = ~iht_s01_i + 1'b1;
assign n_s3_plus1 = ~iht_s11_i + 1'b1;

assign t0 = iht_s00_i + iht_s01_i;
assign t1 = iht_s10_i + iht_s11_i;
assign t2 = iht_s00_i + n_s1_plus1;
assign t3 = iht_s10_i + n_s3_plus1;

assign n_t1_plus1 = ~t1 + 1'b1;
assign n_t3_plus1 = ~t3 + 1'b1;

assign iht_d00_o = t0 + t1;
assign iht_d01_o = t0 + n_t1_plus1;
assign iht_d10_o = t2 + t3;
assign iht_d11_o = t2 + n_t3_plus1;

endmodule
