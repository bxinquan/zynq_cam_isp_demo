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
// Filename       : Coeff_Sign_packer.v
// Author         : huibo zhong
// Created        : 2011-3-29
// Description    : 
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module Coeff_Sign_packer(
				clk,
				rst_n,
				CoeffCodeBit,
				CoeffCodeLength,
				SignCodebit,
				SignCodeLength,	
				CoeffSignCodeBit,
				CoeffSignCodeLength,
				enc_state,
				TrailingOneNum
);

parameter 	enc_init   	   = 4'b0000, //enc init
			enc_cycle0 	   = 4'b0001, //enc clock 1
			enc_cycle1 	   = 4'b0010, //enc clock 2
			enc_cycle2 	   = 4'b0011, //enc clock 3
			enc_cycle3 	   = 4'b0100, //enc clock 4
            enc_cycle4 	   = 4'b0101, //enc clock 5
            enc_cycle5 	   = 4'b0110, //enc clock 6
            enc_cycle6 	   = 4'b0111, //enc clock 7
            enc_cycle7 	   = 4'b1000; //enc clock 8
            	
input  clk, rst_n;
input  [2:0]  SignCodebit;
input  [1:0]  SignCodeLength;
input  [5:0]  CoeffCodeBit;
input  [4:0]  CoeffCodeLength;
input  [3:0]  enc_state;
input  [1:0]  TrailingOneNum;

output [18:0] CoeffSignCodeBit;
output [4:0]  CoeffSignCodeLength;
wire   [18:0] tmpCodeBit;
wire   [4:0]  bubble;
reg    [4:0]  regCoeffCodeLength;
reg    [5:0]  regCoeffCodebit;

assign CoeffSignCodeLength = (enc_state == enc_cycle0)? SignCodeLength + CoeffCodeLength
						   : regCoeffCodeLength + SignCodeLength;
assign bubble = 5'd19 - CoeffSignCodeLength;

assign tmpCodeBit = (SignCodeLength==2'd0)? {13'b0,CoeffCodeBit} 
				: (SignCodeLength==2'd1)? {12'b0,CoeffCodeBit,SignCodebit[2]}
				: (SignCodeLength==2'd2)? {11'b0,CoeffCodeBit,SignCodebit[2:1]}
				: {10'b0,regCoeffCodebit,SignCodebit};
				
assign CoeffSignCodeBit = tmpCodeBit<<bubble;
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		regCoeffCodeLength <= 5'b0;
		regCoeffCodebit    <= 6'b0;
	end
	else begin
		regCoeffCodeLength <= CoeffCodeLength;
		regCoeffCodebit    <= CoeffCodeBit;
	end
end

endmodule
