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

module tq_dequant4x4(
				qpmod6_i,
				qpdiv6_i,
				
				scale00_i,
				scale01_i,
				scale02_i,
				scale03_i,
				scale10_i,
				scale11_i,
				scale12_i,
				scale13_i,
				scale20_i,
				scale21_i,
				scale22_i,
				scale23_i,
				scale30_i,
				scale31_i,
				scale32_i,
				scale33_i,
				
				coeff00_o,
				coeff01_o,
				coeff02_o,
				coeff03_o,
				coeff10_o,
				coeff11_o,
				coeff12_o,
				coeff13_o,
				coeff20_o,
				coeff21_o,
				coeff22_o,
				coeff23_o,
				coeff30_o,
				coeff31_o,
				coeff32_o,
				coeff33_o
);

parameter IN_WIDTH = 15;
parameter OUT_WIDTH = 15;

input [2:0] qpmod6_i; 
input [3:0] qpdiv6_i;

input signed [IN_WIDTH-1:0] scale00_i;
input signed [IN_WIDTH-1:0] scale01_i;
input signed [IN_WIDTH-1:0] scale02_i;
input signed [IN_WIDTH-1:0] scale03_i;
input signed [IN_WIDTH-1:0] scale10_i;
input signed [IN_WIDTH-1:0] scale11_i;
input signed [IN_WIDTH-1:0] scale12_i;
input signed [IN_WIDTH-1:0] scale13_i;
input signed [IN_WIDTH-1:0] scale20_i;
input signed [IN_WIDTH-1:0] scale21_i;
input signed [IN_WIDTH-1:0] scale22_i;
input signed [IN_WIDTH-1:0] scale23_i;
input signed [IN_WIDTH-1:0] scale30_i;
input signed [IN_WIDTH-1:0] scale31_i;
input signed [IN_WIDTH-1:0] scale32_i;
input signed [IN_WIDTH-1:0] scale33_i;

output signed [OUT_WIDTH-1:0] coeff00_o;
output signed [OUT_WIDTH-1:0] coeff01_o;
output signed [OUT_WIDTH-1:0] coeff02_o;
output signed [OUT_WIDTH-1:0] coeff03_o;
output signed [OUT_WIDTH-1:0] coeff10_o;
output signed [OUT_WIDTH-1:0] coeff11_o;
output signed [OUT_WIDTH-1:0] coeff12_o;
output signed [OUT_WIDTH-1:0] coeff13_o;
output signed [OUT_WIDTH-1:0] coeff20_o;
output signed [OUT_WIDTH-1:0] coeff21_o;
output signed [OUT_WIDTH-1:0] coeff22_o;
output signed [OUT_WIDTH-1:0] coeff23_o;
output signed [OUT_WIDTH-1:0] coeff30_o;
output signed [OUT_WIDTH-1:0] coeff31_o;
output signed [OUT_WIDTH-1:0] coeff32_o;
output signed [OUT_WIDTH-1:0] coeff33_o;
                                        
wire signed [24:0] coeff00_o_w;
wire signed [24:0] coeff01_o_w;
wire signed [24:0] coeff02_o_w;
wire signed [24:0] coeff03_o_w;
wire signed [24:0] coeff10_o_w;
wire signed [24:0] coeff11_o_w;
wire signed [24:0] coeff12_o_w;
wire signed [24:0] coeff13_o_w;
wire signed [24:0] coeff20_o_w;
wire signed [24:0] coeff21_o_w;
wire signed [24:0] coeff22_o_w;
wire signed [24:0] coeff23_o_w;
wire signed [24:0] coeff30_o_w;
wire signed [24:0] coeff31_o_w;
wire signed [24:0] coeff32_o_w;
wire signed [24:0] coeff33_o_w;

wire [IN_WIDTH+9:0] bias_w;
reg [ 3:0] shift_len_w;

reg signed [5: 0] de_mf00_w,de_mf01_w,de_mf02_w,de_mf03_w;
reg signed [5: 0] de_mf10_w,de_mf11_w,de_mf12_w,de_mf13_w;
reg signed [5: 0] de_mf20_w,de_mf21_w,de_mf22_w,de_mf23_w;
reg signed [5: 0] de_mf30_w,de_mf31_w,de_mf32_w,de_mf33_w;

wire signed [IN_WIDTH+9:0] product_tmp00_w;
wire signed [IN_WIDTH+9:0] product_tmp01_w;
wire signed [IN_WIDTH+9:0] product_tmp02_w;
wire signed [IN_WIDTH+9:0] product_tmp03_w;
wire signed [IN_WIDTH+9:0] product_tmp10_w;
wire signed [IN_WIDTH+9:0] product_tmp11_w;
wire signed [IN_WIDTH+9:0] product_tmp12_w;
wire signed [IN_WIDTH+9:0] product_tmp13_w;
wire signed [IN_WIDTH+9:0] product_tmp20_w;
wire signed [IN_WIDTH+9:0] product_tmp21_w;
wire signed [IN_WIDTH+9:0] product_tmp22_w;
wire signed [IN_WIDTH+9:0] product_tmp23_w;
wire signed [IN_WIDTH+9:0] product_tmp30_w;
wire signed [IN_WIDTH+9:0] product_tmp31_w;
wire signed [IN_WIDTH+9:0] product_tmp32_w;
wire signed [IN_WIDTH+9:0] product_tmp33_w;

assign product_tmp00_w = scale00_i * ({de_mf00_w,4'b0});
assign product_tmp01_w = scale01_i * ({de_mf01_w,4'b0});
assign product_tmp02_w = scale02_i * ({de_mf02_w,4'b0});
assign product_tmp03_w = scale03_i * ({de_mf03_w,4'b0});
assign product_tmp10_w = scale10_i * ({de_mf10_w,4'b0});
assign product_tmp11_w = scale11_i * ({de_mf11_w,4'b0});
assign product_tmp12_w = scale12_i * ({de_mf12_w,4'b0});
assign product_tmp13_w = scale13_i * ({de_mf13_w,4'b0});
assign product_tmp20_w = scale20_i * ({de_mf20_w,4'b0});
assign product_tmp21_w = scale21_i * ({de_mf21_w,4'b0});
assign product_tmp22_w = scale22_i * ({de_mf22_w,4'b0});
assign product_tmp23_w = scale23_i * ({de_mf23_w,4'b0});
assign product_tmp30_w = scale30_i * ({de_mf30_w,4'b0});
assign product_tmp31_w = scale31_i * ({de_mf31_w,4'b0});
assign product_tmp32_w = scale32_i * ({de_mf32_w,4'b0});
assign product_tmp33_w = scale33_i * ({de_mf33_w,4'b0});

assign coeff00_o_w = (qpdiv6_i < 4)? ((product_tmp00_w + bias_w) >> shift_len_w) : (product_tmp00_w << shift_len_w);
assign coeff01_o_w = (qpdiv6_i < 4)? ((product_tmp01_w + bias_w) >> shift_len_w) : (product_tmp01_w << shift_len_w);
assign coeff02_o_w = (qpdiv6_i < 4)? ((product_tmp02_w + bias_w) >> shift_len_w) : (product_tmp02_w << shift_len_w);
assign coeff03_o_w = (qpdiv6_i < 4)? ((product_tmp03_w + bias_w) >> shift_len_w) : (product_tmp03_w << shift_len_w);
assign coeff10_o_w = (qpdiv6_i < 4)? ((product_tmp10_w + bias_w) >> shift_len_w) : (product_tmp10_w << shift_len_w);
assign coeff11_o_w = (qpdiv6_i < 4)? ((product_tmp11_w + bias_w) >> shift_len_w) : (product_tmp11_w << shift_len_w);
assign coeff12_o_w = (qpdiv6_i < 4)? ((product_tmp12_w + bias_w) >> shift_len_w) : (product_tmp12_w << shift_len_w);
assign coeff13_o_w = (qpdiv6_i < 4)? ((product_tmp13_w + bias_w) >> shift_len_w) : (product_tmp13_w << shift_len_w);
assign coeff20_o_w = (qpdiv6_i < 4)? ((product_tmp20_w + bias_w) >> shift_len_w) : (product_tmp20_w << shift_len_w);
assign coeff21_o_w = (qpdiv6_i < 4)? ((product_tmp21_w + bias_w) >> shift_len_w) : (product_tmp21_w << shift_len_w);
assign coeff22_o_w = (qpdiv6_i < 4)? ((product_tmp22_w + bias_w) >> shift_len_w) : (product_tmp22_w << shift_len_w);
assign coeff23_o_w = (qpdiv6_i < 4)? ((product_tmp23_w + bias_w) >> shift_len_w) : (product_tmp23_w << shift_len_w);
assign coeff30_o_w = (qpdiv6_i < 4)? ((product_tmp30_w + bias_w) >> shift_len_w) : (product_tmp30_w << shift_len_w);
assign coeff31_o_w = (qpdiv6_i < 4)? ((product_tmp31_w + bias_w) >> shift_len_w) : (product_tmp31_w << shift_len_w);
assign coeff32_o_w = (qpdiv6_i < 4)? ((product_tmp32_w + bias_w) >> shift_len_w) : (product_tmp32_w << shift_len_w);
assign coeff33_o_w = (qpdiv6_i < 4)? ((product_tmp33_w + bias_w) >> shift_len_w) : (product_tmp33_w << shift_len_w);

assign coeff00_o = coeff00_o_w[14 : 0];
assign coeff01_o = coeff01_o_w[14 : 0];
assign coeff02_o = coeff02_o_w[14 : 0];
assign coeff03_o = coeff03_o_w[14 : 0];
assign coeff10_o = coeff10_o_w[14 : 0];
assign coeff11_o = coeff11_o_w[14 : 0];
assign coeff12_o = coeff12_o_w[14 : 0];
assign coeff13_o = coeff13_o_w[14 : 0];
assign coeff20_o = coeff20_o_w[14 : 0];
assign coeff21_o = coeff21_o_w[14 : 0];
assign coeff22_o = coeff22_o_w[14 : 0];
assign coeff23_o = coeff23_o_w[14 : 0];
assign coeff30_o = coeff30_o_w[14 : 0];
assign coeff31_o = coeff31_o_w[14 : 0];
assign coeff32_o = coeff32_o_w[14 : 0];
assign coeff33_o = coeff33_o_w[14 : 0];


//specify shift length
//assign rshift_len_w = qpdiv6_i + 15;//qbits = 15 + qp/6
//assign bias_w = 1 << (rshift_len_w - 1);

assign bias_w = 25'd1 << (shift_len_w - 1'b1);

always @(*)begin
  case (qpdiv6_i)
   4'b0000:shift_len_w = 3'd4;
   4'b0001:shift_len_w = 3'd3;
   4'b0010:shift_len_w = 3'd2;
   4'b0011:shift_len_w = 3'd1;
   default:shift_len_w = qpdiv6_i - 3'd4;
  endcase
end

always @(*) begin
	case (qpmod6_i)
		3'b000:begin
			de_mf00_w = 6'd10; de_mf01_w = 6'd13; de_mf02_w = 6'd10; de_mf03_w = 6'd13;
			de_mf10_w = 6'd13; de_mf11_w = 6'd16; de_mf12_w = 6'd13; de_mf13_w = 6'd16;
			de_mf20_w = 6'd10; de_mf21_w = 6'd13; de_mf22_w = 6'd10; de_mf23_w = 6'd13;
			de_mf30_w = 6'd13; de_mf31_w = 6'd16; de_mf32_w = 6'd13; de_mf33_w = 6'd16;     
		end
		3'b001:begin
			de_mf00_w = 6'd11; de_mf01_w = 6'd14; de_mf02_w = 6'd11; de_mf03_w = 6'd14;
			de_mf10_w = 6'd14; de_mf11_w = 6'd18; de_mf12_w = 6'd14; de_mf13_w = 6'd18;
			de_mf20_w = 6'd11; de_mf21_w = 6'd14; de_mf22_w = 6'd11; de_mf23_w = 6'd14;
			de_mf30_w = 6'd14; de_mf31_w = 6'd18; de_mf32_w = 6'd14; de_mf33_w = 6'd18;      
		end
		3'b010:begin
			de_mf00_w = 6'd13; de_mf01_w = 6'd16; de_mf02_w = 6'd13; de_mf03_w = 6'd16;
			de_mf10_w = 6'd16; de_mf11_w = 6'd20; de_mf12_w = 6'd16; de_mf13_w = 6'd20;
			de_mf20_w = 6'd13; de_mf21_w = 6'd16; de_mf22_w = 6'd13; de_mf23_w = 6'd16;
			de_mf30_w = 6'd16; de_mf31_w = 6'd20; de_mf32_w = 6'd16; de_mf33_w = 6'd20;
		end
		3'b011:begin
			de_mf00_w = 6'd14; de_mf01_w = 6'd18; de_mf02_w = 6'd14; de_mf03_w = 6'd18;
			de_mf10_w = 6'd18; de_mf11_w = 6'd23; de_mf12_w = 6'd18; de_mf13_w = 6'd23;
			de_mf20_w = 6'd14; de_mf21_w = 6'd18; de_mf22_w = 6'd14; de_mf23_w = 6'd18;
			de_mf30_w = 6'd18; de_mf31_w = 6'd23; de_mf32_w = 6'd18; de_mf33_w = 6'd23;
		end
		3'b100:begin
			de_mf00_w = 6'd16; de_mf01_w = 6'd20; de_mf02_w = 6'd16; de_mf03_w = 6'd20;
			de_mf10_w = 6'd20; de_mf11_w = 6'd25; de_mf12_w = 6'd20; de_mf13_w = 6'd25;
			de_mf20_w = 6'd16; de_mf21_w = 6'd20; de_mf22_w = 6'd16; de_mf23_w = 6'd20;
			de_mf30_w = 6'd20; de_mf31_w = 6'd25; de_mf32_w = 6'd20; de_mf33_w = 6'd25;
		end
		3'b101:begin
			de_mf00_w = 6'd18; de_mf01_w = 6'd23; de_mf02_w = 6'd18; de_mf03_w = 6'd23;
			de_mf10_w = 6'd23; de_mf11_w = 6'd29; de_mf12_w = 6'd23; de_mf13_w = 6'd29;
			de_mf20_w = 6'd18; de_mf21_w = 6'd23; de_mf22_w = 6'd18; de_mf23_w = 6'd23;
			de_mf30_w = 6'd23; de_mf31_w = 6'd29; de_mf32_w = 6'd23; de_mf33_w = 6'd29;
		end
		default: begin
			de_mf00_w = 6'd0; de_mf01_w = 6'd0; de_mf02_w = 6'd0; de_mf03_w = 6'd0;
			de_mf10_w = 6'd0; de_mf11_w = 6'd0; de_mf12_w = 6'd0; de_mf13_w = 6'd0;
			de_mf20_w = 6'd0; de_mf21_w = 6'd0; de_mf22_w = 6'd0; de_mf23_w = 6'd0;
			de_mf30_w = 6'd0; de_mf31_w = 6'd0; de_mf32_w = 6'd0; de_mf33_w = 6'd0;
		end
	endcase
end

endmodule

