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
// Filename       : Zeros_Run_packer.v
// Author         : huibo zhong
// Created        : 2011-5-12
// Description    : 
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module Zeros_Run_packer(
				clk,
				rst_n,
				state,
				ZerosCodeBit,
				ZerosCodeLength,
				RunCodebit,
				RunCodeLength,	
				ZerosRunCodeBit,
				ZerosRunCodeLength
);

parameter 	enc_init    = 4'b0000, //enc init
			enc_cycle0  = 4'b0001, //enc clock 1
			enc_cycle1  = 4'b0010, //enc clock 2
			enc_cycle2  = 4'b0011, //enc clock 3
			enc_cycle3  = 4'b0100, //enc clock 4
            enc_cycle4  = 4'b0101, //enc clock 5
            enc_cycle5  = 4'b0110, //enc clock 6
            enc_cycle6  = 4'b0111, //enc clock 7
            enc_cycle7  = 4'b1000; //enc clock 8

input         clk, rst_n;
input  [3:0]  state;
input  [2:0]  ZerosCodeBit;
input  [3:0]  ZerosCodeLength;
input  [13:0] RunCodebit;
input  [3:0]  RunCodeLength;

output [30:0] ZerosRunCodeBit;
output [4:0]  ZerosRunCodeLength;


reg    [24:0] regRunCode;
reg    [4:0]  regRunLength;
reg    [8:0]  ZerosCode;
reg    [3:0]  ZerosLength;


wire   [33:0] tmpCodeBit;
wire   [3:0]  bubble0,bubble1;
wire   [8:0]  tmpZerosCode;
wire   [4:0]  tmpRunCodeLength;
wire   [24:0] tmpRunCode;
wire   [24:0] tmpRunCode2;
wire   [33:0] ZerosRunCodeBit1;


assign bubble0 = (state == enc_cycle0)? (4'd9 - ZerosCodeLength) 
			   : (4'd9 - ZerosLength);
assign tmpZerosCode = (state == enc_cycle0)? ({6'b0,ZerosCodeBit}<<bubble0) : 9'b0;

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		ZerosCode <= 0;
		ZerosLength   <= 0;
	end
	else if(state == enc_cycle0) begin
		ZerosCode <= tmpZerosCode;
		ZerosLength   <= ZerosCodeLength;
	end
	else begin
		ZerosCode <= ZerosCode;
		ZerosLength   <= ZerosLength;
	end
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		regRunLength <= 0;
		regRunCode   <= 0;
	end
	else begin
		regRunLength <= tmpRunCodeLength;
		regRunCode   <= tmpRunCode;
	end
end

assign tmpRunCode2 = regRunCode | {RunCodebit,11'b0}>>regRunLength;

assign tmpRunCode = (state == enc_cycle0)?{RunCodebit,11'b0} : tmpRunCode2; 
assign tmpRunCodeLength = (state == enc_cycle0)?RunCodeLength 
                        : (regRunLength+RunCodeLength);
	
assign ZerosRunCodeBit1 = {ZerosCode,25'b0} | ({9'b0, tmpRunCode2}<<bubble0);
assign ZerosRunCodeBit = ZerosRunCodeBit1[33:3];
assign ZerosRunCodeLength = ZerosLength + regRunLength;

endmodule
