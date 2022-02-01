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
// Filename       : TrailingOne.v
// Author         : huibo zhong
// Created        : 2011-05-12
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module Coeff_token_enc(
				     clk,
				     rst_n,
				     state,
				     NC,
				     TrailOneNum,
				     TotalCoeff,
				     CodeBit,
				     CodeLength
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

input         clk, rst_n;
input  [3:0]  state;
input  [2:0]  NC;
input  [1:0]  TrailOneNum;
input  [4:0]  TotalCoeff;  //minus 1;

output [5:0]  CodeBit;
output [4:0]  CodeLength;

wire   [5:0]  addr;
wire   [4:0]  TotalCoeff_addr_w;
wire   [3:0]  TotalCoeff_addr;
wire   [3:0]  addr_cr;
reg    [5:0]  tmpCodeBit;
reg    [4:0]  tmpCodeLength;

wire   [7:0]  vlc_code0;
wire   [7:0]  vlc_code1;
wire   [7:0]  vlc_code2;
wire   [5:0]  vlc_code3;

//bit truncated
assign TotalCoeff_addr_w = TotalCoeff - 1'b1;
assign TotalCoeff_addr = TotalCoeff_addr_w[3:0];

assign addr={TotalCoeff_addr,TrailOneNum};
assign addr_cr={TotalCoeff_addr[1:0],TrailOneNum};

Coeff_token_vlc0 VLC0(
				.addr(addr),
				.vlc_code(vlc_code0)
);
Coeff_token_vlc1 VLC1(
				.addr(addr),
				.vlc_code(vlc_code1)
);

Coeff_token_vlc2 VLC2(
				.addr(addr),
				.vlc_code(vlc_code2)
);

Coeff_token_vlc_chromaDC VLC_chromaDC(
				.addr(addr_cr),
				.vlc_code(vlc_code3)
);

always @* begin
	if(TotalCoeff==0) begin
		if(NC==3'b0) begin//(2>nC>=0)
			tmpCodeBit = {5'b0, 1'b1};
			tmpCodeLength = 1'b1;
		end
		else if(NC==3'b001)begin//(4>nC>=2)
			tmpCodeBit = {4'b0, 2'b11};
			tmpCodeLength = 2'd2;
		end
		else if(NC==3'b010)begin //(8>nC>=4)
			tmpCodeBit = {2'b0, 4'b1111};
			tmpCodeLength = 4'd4;
		end
		else if(NC==3'b011)begin //(nC>=8)
			tmpCodeBit = 6'b000011;
			tmpCodeLength = 5'd6;
		end
	 else begin  //(nC == -1) 3'b111
			tmpCodeBit = {4'b0, 2'b01};
			tmpCodeLength = 2'd2;
		end
	end
	else begin
		if(NC==0)begin
			tmpCodeBit = {2'b0, vlc_code0[7:4]};
			tmpCodeLength = vlc_code0[3:0]+ 1'b1;
		end
		else if(NC==1'b1)begin
			tmpCodeBit = {2'b0, vlc_code1[7:4]};
			tmpCodeLength = vlc_code1[3:0]+ 1'b1;
		end
		else if(NC==2'b10)begin
			tmpCodeBit = {2'b0, vlc_code2[7:4]};
			tmpCodeLength = vlc_code2[3:0]+ 1'b1;
		end
		else if(NC==2'b11)begin
			tmpCodeBit = {TotalCoeff_addr,TrailOneNum};
			tmpCodeLength = 3'd6;
		end
		else begin
			tmpCodeBit = {3'b0, vlc_code3[5:3]};
			tmpCodeLength = vlc_code3[2:0]+ 1'b1;
		end
	end
end

assign CodeBit = (state == enc_cycle0)? tmpCodeBit : 6'b0;
assign CodeLength = (state == enc_cycle0)? tmpCodeLength : 5'b0;

endmodule
