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

module tq_quant4x4_dc(
				qpmod6_i, 
				qpdiv6_i,
				
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

wire [31:0] bias_w;
wire [ 4:0] rshift_len_w;

reg  [13: 0]mf00_w;

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

wire [31 : 0] scale_abs00_w;
wire [31 : 0] scale_abs01_w;
wire [31 : 0] scale_abs02_w;
wire [31 : 0] scale_abs03_w;
wire [31 : 0] scale_abs10_w;
wire [31 : 0] scale_abs11_w;
wire [31 : 0] scale_abs12_w;
wire [31 : 0] scale_abs13_w;
wire [31 : 0] scale_abs20_w;
wire [31 : 0] scale_abs21_w;
wire [31 : 0] scale_abs22_w;
wire [31 : 0] scale_abs23_w;
wire [31 : 0] scale_abs30_w;
wire [31 : 0] scale_abs31_w;
wire [31 : 0] scale_abs32_w;
wire [31 : 0] scale_abs33_w;

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
assign scale_abs01_w = (coef_abs01 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs02_w = (coef_abs02 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs03_w = (coef_abs03 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs10_w = (coef_abs10 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs11_w = (coef_abs11 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs12_w = (coef_abs12 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs13_w = (coef_abs13 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs20_w = (coef_abs20 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs21_w = (coef_abs21 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs22_w = (coef_abs22 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs23_w = (coef_abs23 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs30_w = (coef_abs30 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs31_w = (coef_abs31 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs32_w = (coef_abs32 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs33_w = (coef_abs33 * mf00_w + bias_w) >> rshift_len_w;

assign scale_abs00=  scale_abs00_w[14 : 0]; 
assign scale_abs01=  scale_abs01_w[14 : 0]; 
assign scale_abs02=  scale_abs02_w[14 : 0]; 
assign scale_abs03=  scale_abs03_w[14 : 0]; 
assign scale_abs10=  scale_abs10_w[14 : 0]; 
assign scale_abs11=  scale_abs11_w[14 : 0]; 
assign scale_abs12=  scale_abs12_w[14 : 0]; 
assign scale_abs13=  scale_abs13_w[14 : 0]; 
assign scale_abs20=  scale_abs20_w[14 : 0]; 
assign scale_abs21=  scale_abs21_w[14 : 0]; 
assign scale_abs22=  scale_abs22_w[14 : 0]; 
assign scale_abs23=  scale_abs23_w[14 : 0]; 
assign scale_abs30=  scale_abs30_w[14 : 0]; 
assign scale_abs31=  scale_abs31_w[14 : 0]; 
assign scale_abs32=  scale_abs32_w[14 : 0]; 
assign scale_abs33=  scale_abs33_w[14 : 0]; 


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

assign rshift_len_w = qpdiv6_i + 5'd16;//qbits = 15 + 1 + qp/6
assign bias_w = 682 << (3'd5 + qpdiv6_i); //4+1+qp/6

always @(*) begin
	case (qpmod6_i)
		3'b000:mf00_w = 14'd13107;
		3'b001:mf00_w = 14'd11916;
		3'b010:mf00_w = 14'd10082;
		3'b011:mf00_w = 14'd9362;
		3'b100:mf00_w = 14'd8192;
		3'b101:mf00_w = 14'd7282;
		default:mf00_w = 14'd0;
	endcase
end


endmodule



