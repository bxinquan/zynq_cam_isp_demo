//-------------------------------------------------------------------
//                                                                 
//  COPYRIGHT (C) 2011, VIPcore Group, Fudan University
//                                                                  
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE      
//  EXPRESSED WRITTEN CONSENT OF VIPcore Group
//                                                                  
//  VIPcore       : http://soc.fudan.edu.cn/vip    
//  IP Owner 	  : Yibo FAN
//  Contact       : fanyibo@fudan.edu.cn             
//-------------------------------------------------------------------
// Filename       : level_bit_packer.v
// Author         : huibo zhong
// Created        : 2011-05-12
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module level_bit_packer(
				clk,
				rst_n,
				enable,
				prefix0,  //zeros
				prefix1,
				suffix0,
				suffix1,
				suffixlength0,
				suffixlength1,
				TwoLevelCode,
				TwoLevelCodeLength
);

input           clk, rst_n;
input  [1:0]	enable;
input  [4:0]	prefix0;  //zeros
input  [4:0]	prefix1;
input  [14:0]   suffix0;
input  [14:0]   suffix1;
input  [3:0]	suffixlength0;
input  [3:0]	suffixlength1;

output [63:0]   TwoLevelCode;
output [6:0]    TwoLevelCodeLength;



reg    [33:0]   levelcode0;
reg    [33:0]   levelcode1;


wire   [5:0]    codelength0;
wire   [5:0]    codelength1;
wire   [63:0]   tmpTwoLevelCode;
wire   [6:0]    tmpTwoLevelCodeLength;
wire   [5:0]    bubble0,bubble1;
wire   [6:0]    left_shift0, left_shift1;
wire   [6:0]    left_shift00;
wire   [6:0]    left_shift11;
wire   [6:0]    left_shift000;
wire   [63:0]   left_half0, left_half1;
wire   [63:0]   left_half;


assign codelength0 = enable[0]? (prefix0 + 1'b1 + suffixlength0) : 5'b0;
assign codelength1 = enable[1]? (prefix1 + 1'b1 + suffixlength1) : 5'b0;

assign bubble0= 6'd34 - codelength0;
assign bubble1= 6'd34 - codelength1;

assign left_shift0 = bubble0 + bubble1;

assign left_shift00= left_shift0 - 'd4;

assign left_half0  = {levelcode0<<bubble0,30'b0};
assign left_half1  = {30'b0,levelcode1}<<left_shift00;

assign left_half   = left_half0 | left_half1;

assign tmpTwoLevelCodeLength = codelength0 + codelength1;
assign tmpTwoLevelCode = left_half;

assign TwoLevelCode = tmpTwoLevelCode;
assign TwoLevelCodeLength = tmpTwoLevelCodeLength;

always @(*) begin
	if(codelength0>0) begin
		case(suffixlength0)
			4'd0 : levelcode0 = {33'b0,1'b1};
			4'd1 : levelcode0 = {32'b0,1'b1,suffix0[0]};
			4'd2 : levelcode0 = {31'b0,1'b1,suffix0[1:0]};
			4'd3 : levelcode0 = {30'b0,1'b1,suffix0[2:0]};
			4'd4 : levelcode0 = {29'b0,1'b1,suffix0[3:0]};
			4'd5 : levelcode0 = {28'b0,1'b1,suffix0[4:0]};
			4'd6 : levelcode0 = {27'b0,1'b1,suffix0[5:0]};
			4'd7 : levelcode0 = {26'b0,1'b1,suffix0[6:0]};
			4'd12: levelcode0 = {21'b0,1'b1,suffix0[11:0]};
			4'd13: levelcode0 = {20'b0,1'b1,suffix0[12:0]};
			4'd14: levelcode0 = {19'b0,1'b1,suffix0[13:0]};
			4'd15: levelcode0 = {18'b0,1'b1,suffix0[14:0]};
			default : levelcode0 = 0;
		endcase
	end
	else
		levelcode0 = 0;
end

always @(*) begin
	if(codelength1>0) begin
		case(suffixlength1)
			4'd0 : levelcode1 = {33'b0,1'b1};
			4'd1 : levelcode1 = {32'b0,1'b1,suffix1[0]};
			4'd2 : levelcode1 = {31'b0,1'b1,suffix1[1:0]};
			4'd3 : levelcode1 = {30'b0,1'b1,suffix1[2:0]};
			4'd4 : levelcode1 = {29'b0,1'b1,suffix1[3:0]};
			4'd5 : levelcode1 = {28'b0,1'b1,suffix1[4:0]};
			4'd6 : levelcode1 = {27'b0,1'b1,suffix1[5:0]};
			4'd7 : levelcode1 = {26'b0,1'b1,suffix1[6:0]};
			4'd12: levelcode1 = {21'b0,1'b1,suffix1[11:0]};
			4'd13: levelcode1 = {20'b0,1'b1,suffix1[12:0]};
			4'd14: levelcode1 = {19'b0,1'b1,suffix1[13:0]};
			4'd15: levelcode1 = {18'b0,1'b1,suffix1[14:0]};
			default : levelcode1 = 0;
		endcase
	end
	else 
		levelcode1 = 0;
end

endmodule
