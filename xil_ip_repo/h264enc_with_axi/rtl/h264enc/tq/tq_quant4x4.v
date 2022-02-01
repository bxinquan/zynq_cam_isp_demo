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
// Author         : yibo fan                                                  //
// Email          : hlren.pub@gmail.com                                       //
// Created        : 2011/4/6 14:25:06                                        //
//----------------------------------------------------------------------------//
// Description    :                                                           //
//                                                                            //
// $Id$                                                                       //
//----------------------------------------------------------------------------//
`include "enc_defines.v"

module tq_quant4x4(
				qpmod6_i,
				qpdiv6_i,
				intra,
				
				coeff00_i,
				coeff01_i,
				coeff02_i,
				coeff03_i,
				coeff10_i,
				coeff11_i,
				coeff12_i,
				coeff13_i,
				coeff20_i,
				coeff21_i,
				coeff22_i,
				coeff23_i,
				coeff30_i,
				coeff31_i,
				coeff32_i,
				coeff33_i,
				
				scale00_o,
				scale01_o,
				scale02_o,
				scale03_o,
				scale10_o,
				scale11_o,
				scale12_o,
				scale13_o,
				scale20_o,
				scale21_o,
				scale22_o,
				scale23_o,
				scale30_o,
				scale31_o,
				scale32_o,
				scale33_o
);

parameter IN_WIDTH = 15;
parameter OUT_WIDTH = 15;

input	       [2:0] qpmod6_i; 
input	       [3:0] qpdiv6_i;
input              intra;

input [IN_WIDTH-1:0] coeff00_i;
input [IN_WIDTH-1:0] coeff01_i;
input [IN_WIDTH-1:0] coeff02_i;
input [IN_WIDTH-1:0] coeff03_i;
input [IN_WIDTH-1:0] coeff10_i;
input [IN_WIDTH-1:0] coeff11_i;
input [IN_WIDTH-1:0] coeff12_i;
input [IN_WIDTH-1:0] coeff13_i;
input [IN_WIDTH-1:0] coeff20_i;
input [IN_WIDTH-1:0] coeff21_i;
input [IN_WIDTH-1:0] coeff22_i;
input [IN_WIDTH-1:0] coeff23_i;
input [IN_WIDTH-1:0] coeff30_i;
input [IN_WIDTH-1:0] coeff31_i;
input [IN_WIDTH-1:0] coeff32_i;
input [IN_WIDTH-1:0] coeff33_i;
	    
output  [OUT_WIDTH-1:0] scale00_o;
output  [OUT_WIDTH-1:0] scale01_o;
output  [OUT_WIDTH-1:0] scale02_o;
output  [OUT_WIDTH-1:0] scale03_o;
output  [OUT_WIDTH-1:0] scale10_o;
output  [OUT_WIDTH-1:0] scale11_o;
output  [OUT_WIDTH-1:0] scale12_o;
output  [OUT_WIDTH-1:0] scale13_o;
output  [OUT_WIDTH-1:0] scale20_o;
output  [OUT_WIDTH-1:0] scale21_o;
output  [OUT_WIDTH-1:0] scale22_o;
output  [OUT_WIDTH-1:0] scale23_o;
output  [OUT_WIDTH-1:0] scale30_o;
output  [OUT_WIDTH-1:0] scale31_o;
output  [OUT_WIDTH-1:0] scale32_o;
output  [OUT_WIDTH-1:0] scale33_o;

wire [2:0] qpmod6_i;
wire [3:0] qpdiv6_i;

wire [23:0] bias_w;
wire [ 4:0] rshift_len_w;

reg [14: 0]mf00_w,mf01_w,mf02_w,mf03_w;
reg [14: 0]mf10_w,mf11_w,mf12_w,mf13_w;
reg [14: 0]mf20_w,mf21_w,mf22_w,mf23_w;
reg [14: 0]mf30_w,mf31_w,mf32_w,mf33_w;

wire [IN_WIDTH-2:0] coef_abs00;
wire [IN_WIDTH-2:0] coef_abs01;
wire [IN_WIDTH-2:0] coef_abs02;
wire [IN_WIDTH-2:0] coef_abs03;
wire [IN_WIDTH-2:0] coef_abs10;
wire [IN_WIDTH-2:0] coef_abs11;
wire [IN_WIDTH-2:0] coef_abs12;
wire [IN_WIDTH-2:0] coef_abs13;
wire [IN_WIDTH-2:0] coef_abs20;
wire [IN_WIDTH-2:0] coef_abs21;
wire [IN_WIDTH-2:0] coef_abs22;
wire [IN_WIDTH-2:0] coef_abs23;
wire [IN_WIDTH-2:0] coef_abs30;
wire [IN_WIDTH-2:0] coef_abs31;
wire [IN_WIDTH-2:0] coef_abs32;
wire [IN_WIDTH-2:0] coef_abs33;

wire [IN_WIDTH-1:0] scale_abs00;
wire [IN_WIDTH-1:0] scale_abs01;
wire [IN_WIDTH-1:0] scale_abs02;
wire [IN_WIDTH-1:0] scale_abs03;
wire [IN_WIDTH-1:0] scale_abs10;
wire [IN_WIDTH-1:0] scale_abs11;
wire [IN_WIDTH-1:0] scale_abs12;
wire [IN_WIDTH-1:0] scale_abs13;
wire [IN_WIDTH-1:0] scale_abs20;
wire [IN_WIDTH-1:0] scale_abs21;
wire [IN_WIDTH-1:0] scale_abs22;
wire [IN_WIDTH-1:0] scale_abs23;
wire [IN_WIDTH-1:0] scale_abs30;
wire [IN_WIDTH-1:0] scale_abs31;
wire [IN_WIDTH-1:0] scale_abs32;
wire [IN_WIDTH-1:0] scale_abs33;

wire [24-1:0] scale_abs00_w;
wire [24-1:0] scale_abs01_w;
wire [24-1:0] scale_abs02_w;
wire [24-1:0] scale_abs03_w;
wire [24-1:0] scale_abs10_w;
wire [24-1:0] scale_abs11_w;
wire [24-1:0] scale_abs12_w;
wire [24-1:0] scale_abs13_w;
wire [24-1:0] scale_abs20_w;
wire [24-1:0] scale_abs21_w;
wire [24-1:0] scale_abs22_w;
wire [24-1:0] scale_abs23_w;
wire [24-1:0] scale_abs30_w;
wire [24-1:0] scale_abs31_w;
wire [24-1:0] scale_abs32_w;
wire [24-1:0] scale_abs33_w;

assign coef_abs00 = coeff00_i[IN_WIDTH-1]? (~coeff00_i[IN_WIDTH-2:0] + 1'b1) : coeff00_i[IN_WIDTH-2:0];
assign coef_abs01 = coeff01_i[IN_WIDTH-1]? (~coeff01_i[IN_WIDTH-2:0] + 1'b1) : coeff01_i[IN_WIDTH-2:0];
assign coef_abs02 = coeff02_i[IN_WIDTH-1]? (~coeff02_i[IN_WIDTH-2:0] + 1'b1) : coeff02_i[IN_WIDTH-2:0];
assign coef_abs03 = coeff03_i[IN_WIDTH-1]? (~coeff03_i[IN_WIDTH-2:0] + 1'b1) : coeff03_i[IN_WIDTH-2:0];
assign coef_abs10 = coeff10_i[IN_WIDTH-1]? (~coeff10_i[IN_WIDTH-2:0] + 1'b1) : coeff10_i[IN_WIDTH-2:0];
assign coef_abs11 = coeff11_i[IN_WIDTH-1]? (~coeff11_i[IN_WIDTH-2:0] + 1'b1) : coeff11_i[IN_WIDTH-2:0];
assign coef_abs12 = coeff12_i[IN_WIDTH-1]? (~coeff12_i[IN_WIDTH-2:0] + 1'b1) : coeff12_i[IN_WIDTH-2:0];
assign coef_abs13 = coeff13_i[IN_WIDTH-1]? (~coeff13_i[IN_WIDTH-2:0] + 1'b1) : coeff13_i[IN_WIDTH-2:0];
assign coef_abs20 = coeff20_i[IN_WIDTH-1]? (~coeff20_i[IN_WIDTH-2:0] + 1'b1) : coeff20_i[IN_WIDTH-2:0];
assign coef_abs21 = coeff21_i[IN_WIDTH-1]? (~coeff21_i[IN_WIDTH-2:0] + 1'b1) : coeff21_i[IN_WIDTH-2:0];
assign coef_abs22 = coeff22_i[IN_WIDTH-1]? (~coeff22_i[IN_WIDTH-2:0] + 1'b1) : coeff22_i[IN_WIDTH-2:0];
assign coef_abs23 = coeff23_i[IN_WIDTH-1]? (~coeff23_i[IN_WIDTH-2:0] + 1'b1) : coeff23_i[IN_WIDTH-2:0];
assign coef_abs30 = coeff30_i[IN_WIDTH-1]? (~coeff30_i[IN_WIDTH-2:0] + 1'b1) : coeff30_i[IN_WIDTH-2:0];
assign coef_abs31 = coeff31_i[IN_WIDTH-1]? (~coeff31_i[IN_WIDTH-2:0] + 1'b1) : coeff31_i[IN_WIDTH-2:0];
assign coef_abs32 = coeff32_i[IN_WIDTH-1]? (~coeff32_i[IN_WIDTH-2:0] + 1'b1) : coeff32_i[IN_WIDTH-2:0];
assign coef_abs33 = coeff33_i[IN_WIDTH-1]? (~coeff33_i[IN_WIDTH-2:0] + 1'b1) : coeff33_i[IN_WIDTH-2:0];

assign scale_abs00_w = (coef_abs00 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs01_w = (coef_abs01 * mf01_w + bias_w) >> rshift_len_w;
assign scale_abs02_w = (coef_abs02 * mf02_w + bias_w) >> rshift_len_w;
assign scale_abs03_w = (coef_abs03 * mf03_w + bias_w) >> rshift_len_w;
assign scale_abs10_w = (coef_abs10 * mf10_w + bias_w) >> rshift_len_w;
assign scale_abs11_w = (coef_abs11 * mf11_w + bias_w) >> rshift_len_w;
assign scale_abs12_w = (coef_abs12 * mf12_w + bias_w) >> rshift_len_w;
assign scale_abs13_w = (coef_abs13 * mf13_w + bias_w) >> rshift_len_w;
assign scale_abs20_w = (coef_abs20 * mf20_w + bias_w) >> rshift_len_w;
assign scale_abs21_w = (coef_abs21 * mf21_w + bias_w) >> rshift_len_w;
assign scale_abs22_w = (coef_abs22 * mf22_w + bias_w) >> rshift_len_w;
assign scale_abs23_w = (coef_abs23 * mf23_w + bias_w) >> rshift_len_w;
assign scale_abs30_w = (coef_abs30 * mf30_w + bias_w) >> rshift_len_w;
assign scale_abs31_w = (coef_abs31 * mf31_w + bias_w) >> rshift_len_w;
assign scale_abs32_w = (coef_abs32 * mf32_w + bias_w) >> rshift_len_w;
assign scale_abs33_w = (coef_abs33 * mf33_w + bias_w) >> rshift_len_w;

assign scale_abs00  = scale_abs00_w[14 : 0];
assign scale_abs01  = scale_abs01_w[14 : 0];
assign scale_abs02  = scale_abs02_w[14 : 0];
assign scale_abs03  = scale_abs03_w[14 : 0];
assign scale_abs10  = scale_abs10_w[14 : 0];
assign scale_abs11  = scale_abs11_w[14 : 0];
assign scale_abs12  = scale_abs12_w[14 : 0];
assign scale_abs13  = scale_abs13_w[14 : 0];
assign scale_abs20  = scale_abs20_w[14 : 0];
assign scale_abs21  = scale_abs21_w[14 : 0];
assign scale_abs22  = scale_abs22_w[14 : 0];
assign scale_abs23  = scale_abs23_w[14 : 0];
assign scale_abs30  = scale_abs30_w[14 : 0];
assign scale_abs31  = scale_abs31_w[14 : 0];
assign scale_abs32  = scale_abs32_w[14 : 0];
assign scale_abs33  = scale_abs33_w[14 : 0];


assign scale00_o = coeff00_i[IN_WIDTH-1]? (~scale_abs00 + 1'b1) : scale_abs00;
assign scale01_o = coeff01_i[IN_WIDTH-1]? (~scale_abs01 + 1'b1) : scale_abs01;
assign scale02_o = coeff02_i[IN_WIDTH-1]? (~scale_abs02 + 1'b1) : scale_abs02;
assign scale03_o = coeff03_i[IN_WIDTH-1]? (~scale_abs03 + 1'b1) : scale_abs03;
assign scale10_o = coeff10_i[IN_WIDTH-1]? (~scale_abs10 + 1'b1) : scale_abs10;
assign scale11_o = coeff11_i[IN_WIDTH-1]? (~scale_abs11 + 1'b1) : scale_abs11;
assign scale12_o = coeff12_i[IN_WIDTH-1]? (~scale_abs12 + 1'b1) : scale_abs12;
assign scale13_o = coeff13_i[IN_WIDTH-1]? (~scale_abs13 + 1'b1) : scale_abs13;
assign scale20_o = coeff20_i[IN_WIDTH-1]? (~scale_abs20 + 1'b1) : scale_abs20;
assign scale21_o = coeff21_i[IN_WIDTH-1]? (~scale_abs21 + 1'b1) : scale_abs21;
assign scale22_o = coeff22_i[IN_WIDTH-1]? (~scale_abs22 + 1'b1) : scale_abs22;
assign scale23_o = coeff23_i[IN_WIDTH-1]? (~scale_abs23 + 1'b1) : scale_abs23;
assign scale30_o = coeff30_i[IN_WIDTH-1]? (~scale_abs30 + 1'b1) : scale_abs30;
assign scale31_o = coeff31_i[IN_WIDTH-1]? (~scale_abs31 + 1'b1) : scale_abs31;
assign scale32_o = coeff32_i[IN_WIDTH-1]? (~scale_abs32 + 1'b1) : scale_abs32;
assign scale33_o = coeff33_i[IN_WIDTH-1]? (~scale_abs33 + 1'b1) : scale_abs33;

//specify shift length
assign rshift_len_w = qpdiv6_i + 4'd15;//qbits = 15 + qp/6
assign bias_w = intra? 24'd682 << (3'd4 + qpdiv6_i) : 24'd342 << (3'd4 + qpdiv6_i);

always @(*) begin
	case (qpmod6_i)
		3'b000:begin
			mf00_w = 15'd13107; mf01_w = 15'd8066; mf02_w = 15'd13107; mf03_w = 15'd8066;
			mf10_w = 15'd8066;  mf11_w = 15'd5243; mf12_w = 15'd8066;  mf13_w = 15'd5243;
			mf20_w = 15'd13107; mf21_w = 15'd8066; mf22_w = 15'd13107; mf23_w = 15'd8066;
			mf30_w = 15'd8066;  mf31_w = 15'd5243; mf32_w = 15'd8066;  mf33_w = 15'd5243;
		end
		3'b001:begin
			mf00_w = 15'd11916; mf01_w = 15'd7490; mf02_w = 15'd11916; mf03_w = 15'd7490;
			mf10_w = 15'd7490;  mf11_w = 15'd4660; mf12_w = 15'd7490;  mf13_w = 15'd4660;
			mf20_w = 15'd11916; mf21_w = 15'd7490; mf22_w = 15'd11916; mf23_w = 15'd7490;
			mf30_w = 15'd7490;  mf31_w = 15'd4660; mf32_w = 15'd7490;  mf33_w = 15'd4660;
		end
		3'b010:begin
			mf00_w = 15'd10082; mf01_w = 15'd6554; mf02_w = 15'd10082; mf03_w = 15'd6554;
			mf10_w = 15'd6554;  mf11_w = 15'd4194; mf12_w = 15'd6554;  mf13_w = 15'd4194;
			mf20_w = 15'd10082; mf21_w = 15'd6554; mf22_w = 15'd10082; mf23_w = 15'd6554;
			mf30_w = 15'd6554;  mf31_w = 15'd4194; mf32_w = 15'd6554;  mf33_w = 15'd4194;
		end
		3'b011:begin
			mf00_w = 15'd9362; mf01_w = 15'd5825; mf02_w = 15'd9362; mf03_w = 15'd5825;
			mf10_w = 15'd5825; mf11_w = 15'd3647; mf12_w = 15'd5825; mf13_w = 15'd3647;
			mf20_w = 15'd9362; mf21_w = 15'd5825; mf22_w = 15'd9362; mf23_w = 15'd5825;
			mf30_w = 15'd5825; mf31_w = 15'd3647; mf32_w = 15'd5825; mf33_w = 15'd3647;
		end
		3'b100:begin
			mf00_w = 15'd8192; mf01_w = 15'd5243; mf02_w = 15'd8192; mf03_w = 15'd5243;
			mf10_w = 15'd5243; mf11_w = 15'd3355; mf12_w = 15'd5243; mf13_w = 15'd3355;
			mf20_w = 15'd8192; mf21_w = 15'd5243; mf22_w = 15'd8192; mf23_w = 15'd5243;
			mf30_w = 15'd5243; mf31_w = 15'd3355; mf32_w = 15'd5243; mf33_w = 15'd3355;
		end
		3'b101:begin
			mf00_w = 15'd7282; mf01_w = 15'd4559; mf02_w = 15'd7282; mf03_w = 15'd4559;
			mf10_w = 15'd4559; mf11_w = 15'd2893; mf12_w = 15'd4559; mf13_w = 15'd2893;
			mf20_w = 15'd7282; mf21_w = 15'd4559; mf22_w = 15'd7282; mf23_w = 15'd4559;
			mf30_w = 15'd4559; mf31_w = 15'd2893; mf32_w = 15'd4559; mf33_w = 15'd2893;
		end
		default:begin
			mf00_w = 15'd0; mf01_w = 15'd0; mf02_w = 15'd0; mf03_w = 15'd0;
			mf10_w = 15'd0; mf11_w = 15'd0; mf12_w = 15'd0; mf13_w = 15'd0;
			mf20_w = 15'd0; mf21_w = 15'd0; mf22_w = 15'd0; mf23_w = 15'd0;
			mf30_w = 15'd0; mf31_w = 15'd0; mf32_w = 15'd0; mf33_w = 15'd0;
		end
	endcase
end

/*
levelscale_lut u_mf_lut(
	.qpmod6_i(qpmod6_i),
	.mf00_o(mf00_w),
	.mf10_o(mf10_w),
	.mf20_o(mf20_w),
	.mf30_o(mf30_w),
	.mf01_o(mf01_w),
	.mf11_o(mf11_w),
	.mf21_o(mf21_w),
	.mf31_o(mf31_w),
	.mf02_o(mf02_w),
	.mf12_o(mf12_w),
	.mf22_o(mf22_w),
	.mf32_o(mf32_w),
	.mf03_o(mf03_w),
	.mf13_o(mf13_w),
	.mf23_o(mf23_w),
	.mf33_o(mf33_w)
);
*/
endmodule
