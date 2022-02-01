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
// Filename       : LevelCodeGen.v
// Author         : huibo zhong
// Created        : 2011-05-12
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module LevelCodeGen(
				clk,
				rst_n,
				level,
				abslevel,
				TrailNum,
				first,
				enable,
				vlc,
				prefix,
				suffix,
				suffixlength

);
input			clk;                // clock                 
input			rst_n;              // reset
input   		first;              // is last coeff or not
input  			enable;             // enable
input  [`RES_WIDTH-1:0] level;      // coeff
input  [`RES_WIDTH-1:0] abslevel;   // |coeff|
input  [1:0]  TrailNum;             // 
input  [2:0]    vlc;                // suffixlength

output reg [4:0]  prefix;
output reg [3:0]  suffixlength;
output reg [14:0] suffix;




wire   [`RES_WIDTH-1:0] inLevel;
wire   [`RES_WIDTH-1:0] tmpLevel1;
wire   [`RES_WIDTH-1:0] escape0;
wire   [`RES_WIDTH-1:0] escape1;//range enough or not??????????
wire   [`RES_WIDTH-1:0] tmpLevel_0;
wire   [`RES_WIDTH-1:0] tmpLevel11;
wire   [`RES_WIDTH-1:0] tmpLevel22;
wire   [`RES_WIDTH-1:0] tmpLevel33;
wire   [`RES_WIDTH-1:0] tmpLevel44;
wire   [`RES_WIDTH-1:0] levelabs ;
wire   [`RES_WIDTH-1:0] sufmask  ;
wire   [`RES_WIDTH-1:0] tmpsuffix;
wire   [2:0]            shift;
wire   [`RES_WIDTH-1:0] tmpPrefix0_w;
wire   [`RES_WIDTH-1:0] tmpPrefixN_w;

wire   [4:0]            tmpPrefix0;
wire   [4:0]            tmpPrefixN;


assign inLevel = level[15]? (((TrailNum < 2'd3) && first)? ~level : ~level + 1'b1)
			   : (((TrailNum < 2'd3) && first)?  level-1'b1 : level);


assign shift = vlc-1'b1;
assign levelabs = (vlc>0)? inLevel - 1'b1 : inLevel;

assign tmpPrefix0_w = (levelabs<<1) + level[15] - 2'b10;
assign tmpPrefix0   = tmpPrefix0_w[4:0];
assign tmpPrefixN_w = (levelabs>>shift);
assign tmpPrefixN   = tmpPrefixN_w[4:0];

assign sufmask = ~(16'hffff << shift);
assign tmpsuffix = levelabs & sufmask;

assign escape1 = (4'd15 << shift);//range enough or not?

//actually, for the value range of level(-32768~+32727)
//suffixlength's max value is 15(12+3)
//insert register or not?
assign tmpLevel1 = (vlc!=0)? levelabs-escape1+12'd2048
				 : levelabs + 12'd2032;

assign tmpLevel_0 = (levelabs<<1) - 5'd16;
assign tmpLevel11 = (tmpLevel1<<1) - 13'd4096 ;
assign tmpLevel22 = (tmpLevel1<<1) - 14'd8192 ;
assign tmpLevel33 = (tmpLevel1<<1) - 15'd16384;
assign tmpLevel44 = (tmpLevel1<<1) - 16'd32768;

always @(*) begin
	if(enable && vlc==0)begin
		if(levelabs<4'd8)begin
			prefix = tmpPrefix0[4:0]; //number of zeros
			suffix = 0;
			suffixlength = 0;
		end
		//escape0
		else if(levelabs<5'd16) begin
			prefix = 5'd14;
			suffix = {tmpLevel_0[14:1],level[15]};
			suffixlength = 4'd4;
		end
		//escape1
		else if(levelabs>15'd16383) begin
			prefix = 5'd18;//
			suffix = {tmpLevel44[14:1],level[15]};
			suffixlength = 4'd15;
		end
		else if(levelabs>14'd8191 ) begin
			prefix = 5'd17;//
			suffix = {tmpLevel33[14:1],level[15]};
			suffixlength = 4'd14;
		end
		else if(levelabs>13'd4095 ) begin
			prefix = 5'd16;//
			suffix = {tmpLevel22[14:1],level[15]};
			suffixlength = 4'd13;
		end
		else begin
			prefix = 5'd15;
			suffix = {tmpLevel11[14:1],level[15]};
			suffixlength = 4'd12;
		end
	end
	else if(enable) begin
		if(levelabs < escape1)begin
			prefix = tmpPrefixN[4:0];
			suffix = {tmpsuffix[13:0],level[15]};//
			suffixlength = {1'b0,vlc};
		end
		//escape1 encode
		else if(levelabs>15'd16383) begin
			prefix = 5'd18;//
			suffix = {tmpLevel44[14:1],level[15]};
			suffixlength = 4'd15;
		end
		else if(levelabs>14'd8191 ) begin
			prefix = 5'd17;//
			suffix = {tmpLevel33[14:1],level[15]};
			suffixlength = 4'd14;
		end
		else if(levelabs>13'd4095 ) begin
			prefix = 5'd16;//
			suffix = {tmpLevel22[14:1],level[15]};
			suffixlength = 4'd13;
		end
		else begin
			prefix = 5'd15;
			suffix = {tmpLevel11[14:1],level[15]};
			suffixlength = 4'd12;
		end
	end
	else begin
		prefix = 0;
		suffix = 0;
		suffixlength = 0;
	end
end

endmodule
