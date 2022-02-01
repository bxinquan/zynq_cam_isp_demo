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
// Created        : 2011-4-6 01:10:50                                         //
//----------------------------------------------------------------------------//
// Description    :                                                           //
//                                                                            //
// $Id$                                                                       //
//----------------------------------------------------------------------------//

`include "enc_defines.v"

module tq_add_idct_pre(
	idct_d00_i, idct_d10_i, idct_d20_i, idct_d30_i,
	idct_d01_i, idct_d11_i, idct_d21_i, idct_d31_i,
	idct_d02_i, idct_d12_i, idct_d22_i, idct_d32_i,
	idct_d03_i, idct_d13_i, idct_d23_i, idct_d33_i,
	
	pre_pel00_i, pre_pel10_i, pre_pel20_i, pre_pel30_i,
	pre_pel01_i, pre_pel11_i, pre_pel21_i, pre_pel31_i,
	pre_pel02_i, pre_pel12_i, pre_pel22_i, pre_pel32_i,
	pre_pel03_i, pre_pel13_i, pre_pel23_i, pre_pel33_i,
	
	add_pel00_o, add_pel10_o, add_pel20_o, add_pel30_o,
	add_pel01_o, add_pel11_o, add_pel21_o, add_pel31_o,
	add_pel02_o, add_pel12_o, add_pel22_o, add_pel32_o,
	add_pel03_o, add_pel13_o, add_pel23_o, add_pel33_o
);
//clock and reset signal
parameter IN_WIDTH  = 16;


input  [`BIT_DEPTH-1:0] pre_pel00_i, pre_pel10_i, pre_pel20_i, pre_pel30_i;
input  [`BIT_DEPTH-1:0] pre_pel01_i, pre_pel11_i, pre_pel21_i, pre_pel31_i;
input  [`BIT_DEPTH-1:0] pre_pel02_i, pre_pel12_i, pre_pel22_i, pre_pel32_i;
input  [`BIT_DEPTH-1:0] pre_pel03_i, pre_pel13_i, pre_pel23_i, pre_pel33_i;

input signed [IN_WIDTH-1:0] idct_d00_i, idct_d10_i, idct_d20_i, idct_d30_i;
input signed [IN_WIDTH-1:0] idct_d01_i, idct_d11_i, idct_d21_i, idct_d31_i;
input signed [IN_WIDTH-1:0] idct_d02_i, idct_d12_i, idct_d22_i, idct_d32_i;
input signed [IN_WIDTH-1:0] idct_d03_i, idct_d13_i, idct_d23_i, idct_d33_i;

output [`BIT_DEPTH-1:0] add_pel00_o, add_pel10_o, add_pel20_o, add_pel30_o;
output [`BIT_DEPTH-1:0] add_pel01_o, add_pel11_o, add_pel21_o, add_pel31_o;
output [`BIT_DEPTH-1:0] add_pel02_o, add_pel12_o, add_pel22_o, add_pel32_o;
output [`BIT_DEPTH-1:0] add_pel03_o, add_pel13_o, add_pel23_o, add_pel33_o;

wire signed [IN_WIDTH:0] add_pel00_w;
wire signed [IN_WIDTH:0] add_pel01_w;
wire signed [IN_WIDTH:0] add_pel02_w;
wire signed [IN_WIDTH:0] add_pel03_w;
wire signed [IN_WIDTH:0] add_pel10_w;
wire signed [IN_WIDTH:0] add_pel11_w;
wire signed [IN_WIDTH:0] add_pel12_w;
wire signed [IN_WIDTH:0] add_pel13_w;
wire signed [IN_WIDTH:0] add_pel20_w;
wire signed [IN_WIDTH:0] add_pel21_w;
wire signed [IN_WIDTH:0] add_pel22_w;
wire signed [IN_WIDTH:0] add_pel23_w;
wire signed [IN_WIDTH:0] add_pel30_w;
wire signed [IN_WIDTH:0] add_pel31_w;
wire signed [IN_WIDTH:0] add_pel32_w;
wire signed [IN_WIDTH:0] add_pel33_w;

assign add_pel00_w = idct_d00_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel00_i});
assign add_pel01_w = idct_d01_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel01_i});
assign add_pel02_w = idct_d02_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel02_i});
assign add_pel03_w = idct_d03_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel03_i});
assign add_pel10_w = idct_d10_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel10_i});
assign add_pel11_w = idct_d11_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel11_i});
assign add_pel12_w = idct_d12_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel12_i});
assign add_pel13_w = idct_d13_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel13_i});
assign add_pel20_w = idct_d20_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel20_i});
assign add_pel21_w = idct_d21_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel21_i});
assign add_pel22_w = idct_d22_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel22_i});
assign add_pel23_w = idct_d23_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel23_i});
assign add_pel30_w = idct_d30_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel30_i});
assign add_pel31_w = idct_d31_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel31_i});
assign add_pel32_w = idct_d32_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel32_i});
assign add_pel33_w = idct_d33_i + $signed({/*{(IN_WIDTH-`BIT_DEPTH){1'b0}}*/1'b0,pre_pel33_i});

//residual pixels

assign add_pel00_o = add_pel00_w[IN_WIDTH]? 8'd0 : (add_pel00_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel00_w[`BIT_DEPTH-1:0]);
assign add_pel01_o = add_pel01_w[IN_WIDTH]? 8'd0 : (add_pel01_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel01_w[`BIT_DEPTH-1:0]);
assign add_pel02_o = add_pel02_w[IN_WIDTH]? 8'd0 : (add_pel02_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel02_w[`BIT_DEPTH-1:0]);
assign add_pel03_o = add_pel03_w[IN_WIDTH]? 8'd0 : (add_pel03_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel03_w[`BIT_DEPTH-1:0]);
assign add_pel10_o = add_pel10_w[IN_WIDTH]? 8'd0 : (add_pel10_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel10_w[`BIT_DEPTH-1:0]);
assign add_pel11_o = add_pel11_w[IN_WIDTH]? 8'd0 : (add_pel11_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel11_w[`BIT_DEPTH-1:0]);
assign add_pel12_o = add_pel12_w[IN_WIDTH]? 8'd0 : (add_pel12_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel12_w[`BIT_DEPTH-1:0]);
assign add_pel13_o = add_pel13_w[IN_WIDTH]? 8'd0 : (add_pel13_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel13_w[`BIT_DEPTH-1:0]);
assign add_pel20_o = add_pel20_w[IN_WIDTH]? 8'd0 : (add_pel20_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel20_w[`BIT_DEPTH-1:0]);
assign add_pel21_o = add_pel21_w[IN_WIDTH]? 8'd0 : (add_pel21_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel21_w[`BIT_DEPTH-1:0]);
assign add_pel22_o = add_pel22_w[IN_WIDTH]? 8'd0 : (add_pel22_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel22_w[`BIT_DEPTH-1:0]);
assign add_pel23_o = add_pel23_w[IN_WIDTH]? 8'd0 : (add_pel23_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel23_w[`BIT_DEPTH-1:0]);
assign add_pel30_o = add_pel30_w[IN_WIDTH]? 8'd0 : (add_pel30_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel30_w[`BIT_DEPTH-1:0]);
assign add_pel31_o = add_pel31_w[IN_WIDTH]? 8'd0 : (add_pel31_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel31_w[`BIT_DEPTH-1:0]);
assign add_pel32_o = add_pel32_w[IN_WIDTH]? 8'd0 : (add_pel32_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel32_w[`BIT_DEPTH-1:0]);
assign add_pel33_o = add_pel33_w[IN_WIDTH]? 8'd0 : (add_pel33_w[IN_WIDTH:`BIT_DEPTH]? 8'd255 : add_pel33_w[`BIT_DEPTH-1:0]);

endmodule
