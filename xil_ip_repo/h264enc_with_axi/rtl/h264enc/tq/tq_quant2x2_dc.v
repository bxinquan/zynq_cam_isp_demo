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

module tq_quant2x2_dc(
				qpmod6_i, 
				qpdiv6_i,
				intra,
				
				coeff00_i,
				coeff01_i,
				coeff10_i,
				coeff11_i,
				
				scale00_o,
				scale01_o,
				scale10_o,
				scale11_o
);

parameter IN_WIDTH = 15;
parameter OUT_WIDTH = 15;

input   [2:0] qpmod6_i; 
input   [3:0] qpdiv6_i;
input         intra;

input  [IN_WIDTH-1:0] coeff00_i;
input  [IN_WIDTH-1:0] coeff01_i;
input  [IN_WIDTH-1:0] coeff10_i;
input  [IN_WIDTH-1:0] coeff11_i;
  
output [OUT_WIDTH-1:0] scale00_o;
output [OUT_WIDTH-1:0] scale01_o;
output [OUT_WIDTH-1:0] scale10_o;
output [OUT_WIDTH-1:0] scale11_o;

wire [2:0] qpmod6_i;
wire [3:0] qpdiv6_i;

wire [23:0] bias_w;
wire [ 4:0] rshift_len_w;

reg  [13: 0]mf00_w;

wire [IN_WIDTH-2:0] coef_abs00;
wire [IN_WIDTH-2:0] coef_abs01;
wire [IN_WIDTH-2:0] coef_abs10;
wire [IN_WIDTH-2:0] coef_abs11;

wire [IN_WIDTH-1:0] scale_abs00;
wire [IN_WIDTH-1:0] scale_abs01;
wire [IN_WIDTH-1:0] scale_abs10;
wire [IN_WIDTH-1:0] scale_abs11;   

wire [23:0] scale_abs00_w;
wire [23:0] scale_abs01_w;
wire [23:0] scale_abs10_w;
wire [23:0] scale_abs11_w;


assign coef_abs00 = coeff00_i[IN_WIDTH-1]? (~coeff00_i[IN_WIDTH-2:0] + 1'b1) : coeff00_i[IN_WIDTH-2:0];
assign coef_abs01 = coeff01_i[IN_WIDTH-1]? (~coeff01_i[IN_WIDTH-2:0] + 1'b1) : coeff01_i[IN_WIDTH-2:0];
assign coef_abs10 = coeff10_i[IN_WIDTH-1]? (~coeff10_i[IN_WIDTH-2:0] + 1'b1) : coeff10_i[IN_WIDTH-2:0];
assign coef_abs11 = coeff11_i[IN_WIDTH-1]? (~coeff11_i[IN_WIDTH-2:0] + 1'b1) : coeff11_i[IN_WIDTH-2:0];


assign scale_abs00_w = (coef_abs00 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs01_w = (coef_abs01 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs10_w = (coef_abs10 * mf00_w + bias_w) >> rshift_len_w;
assign scale_abs11_w = (coef_abs11 * mf00_w + bias_w) >> rshift_len_w;
   
assign scale_abs00 =  scale_abs00_w[14 : 0] ;  
assign scale_abs01 =  scale_abs01_w[14 : 0] ;  
assign scale_abs10 =  scale_abs10_w[14 : 0] ;  
assign scale_abs11 =  scale_abs11_w[14 : 0] ;  
   
assign scale00_o = coeff00_i[IN_WIDTH-1]? (~scale_abs00 + 1'b1) : scale_abs00;
assign scale01_o = coeff01_i[IN_WIDTH-1]? (~scale_abs01 + 1'b1) : scale_abs01;
assign scale10_o = coeff10_i[IN_WIDTH-1]? (~scale_abs10 + 1'b1) : scale_abs10;
assign scale11_o = coeff11_i[IN_WIDTH-1]? (~scale_abs11 + 1'b1) : scale_abs11;


//specify shift length
assign rshift_len_w = qpdiv6_i + 5'd16;//qbits = 15 + 1 + qp/6
assign bias_w =  24'd682 << (3'd5 + qpdiv6_i);//changed!!!

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



