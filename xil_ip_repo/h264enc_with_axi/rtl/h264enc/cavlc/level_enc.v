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
// Created        : 2011-03-20
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module level_enc (
			clk,
			rst_n,
			enc_en, //
			state,
			TrailOneNum,
			totalcoeff,
			level0,
			level1,
            prefix0,
            prefix1,      
            suffixlength0,
            suffixlength1,             
            suffix0,
            suffix1,
            enable,
			TrailOneSignBit,
			TrailOneSignLength

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

parameter   a0 =  1'b0,
			a1 =  2'b11,
			a2 =  3'b110,
			a3 =  4'b1100,
			a4 =  5'b11000,
			a5 =  6'b110000,
			a6 = 16'b1111_1111_1111_1111;

			
input		  clk;                // clock                 
input		  rst_n;              // reset
input         enc_en;
input  [1:0]  TrailOneNum;
input  [4:0]  totalcoeff;
input  [3:0]  state;
input  [15:0] level0;
input  [15:0] level1;

output [4:0]  prefix0;      
output [4:0]  prefix1;
output [3:0]  suffixlength0;
output [3:0]  suffixlength1;
output [14:0] suffix0;      
output [14:0] suffix1;
output [1:0]  enable;
output [2:0]  TrailOneSignBit;
output [1:0]  TrailOneSignLength;



reg    [`RES_WIDTH-1:0] tmpLevel0;
reg    [`RES_WIDTH-1:0] tmpLevel1;
reg    [2:0]  regvlc0 ;
reg    [2:0]  regvlc1 ;
reg           regLevelEn0 ;
reg           regLevelEn1 ;
reg    [4:0]  tmpLevelNum;
reg           tmpLevelEn0, tmpLevelEn1;
reg    [2:0]  regTrailSign,tmpTrailOneSign;
reg    [1:0]  RegTrailSignLength;
reg    [15:0] reg_abslevel1;



wire   [`RES_WIDTH-1:0] abslevel0;
wire   [`RES_WIDTH-1:0] abslevel1;
wire   [4:0]  prefix0;
wire   [4:0]  prefix1;
wire   [3:0]  suffixlength0;
wire   [3:0]  suffixlength1;
wire   [14:0] suffix0;
wire   [14:0] suffix1;
wire   [2:0]  vlc0, vlc1;
wire          LevelEn0, LevelEn1;
wire          FIRST;
wire   [2:0]  last_vlc;
wire          check0, check1;


assign enable={LevelEn1, LevelEn0};

assign abslevel0 = level0[15]? (~level0+1'b1) : level0;
assign abslevel1 = level1[15]? (~level1+1'b1) : level1;


assign FIRST = ((state==enc_cycle0)&&LevelEn0)? 1'b1
			 : ((state==enc_cycle1)&&TrailOneNum==2'd2&&LevelEn0)? 1'b1 : 1'b0;//-----------


assign TrailOneSignLength = (state==enc_cycle0)?TrailOneNum : RegTrailSignLength;
assign TrailOneSignBit = tmpTrailOneSign; 

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		regTrailSign <= 3'b0;
		RegTrailSignLength <= 2'b0;
	end
	else begin		
		regTrailSign <= tmpTrailOneSign;
		RegTrailSignLength <= TrailOneSignLength;
	end
end



always @(*) begin
	if(state == enc_cycle0) begin
		if(TrailOneNum==2'd0) begin
			tmpLevel0 = level0;
			tmpLevel1 = level1;
			tmpTrailOneSign = 3'b0;
		end
		else if(TrailOneNum==2'd1) begin
			tmpLevel0 = level1;
			tmpLevel1 = 1'b0;
			tmpTrailOneSign = {level0[15],2'b0};
		end
		else begin
			tmpLevel0 = 1'b0;
			tmpLevel1 = 1'b0;
			tmpTrailOneSign = {level0[15],level1[15],1'b0};
		end
	end
	else if(state == enc_cycle1 && TrailOneNum==2'd3) begin
		tmpLevel0 = level1;
		tmpLevel1 = 1'b0;
		tmpTrailOneSign = {regTrailSign[2:1], level0[15]};
	end
	else begin
		tmpLevel0 = level0;
		tmpLevel1 = level1;
		tmpTrailOneSign = regTrailSign;
	end
end
reg [4:0] reg_tmpLevelNum;
always @(*) begin
	if(state == enc_cycle0) begin
		if(TrailOneNum==2'd0&&totalcoeff==1'b1) begin
			tmpLevelEn0 = 1'b1;
			tmpLevelEn1 = 1'b0;
		end
		else if(TrailOneNum==2'd0&&totalcoeff>1'b1) begin
			tmpLevelEn0 = 1'b1;
			tmpLevelEn1 = 1'b1;
		end
		else if(TrailOneNum==2'd1&& totalcoeff>1'b1) begin
			tmpLevelEn0 = 1'b1;
			tmpLevelEn1 = 1'b0;
		end
		else begin
			tmpLevelEn0 = 1'b0;
			tmpLevelEn1 = 1'b0;
		end
	end
	else if(state == enc_cycle1 && TrailOneNum==2'd3 && reg_tmpLevelNum>2'd1) begin
		tmpLevelEn0 = 1'b1;
		tmpLevelEn1 = 1'b0;
	end
	else if(state == enc_cycle1 && TrailOneNum==2'd3) begin
		tmpLevelEn0 = 1'b0;
		tmpLevelEn1 = 1'b0;
	end
	else if(reg_tmpLevelNum>2'd1)begin
		tmpLevelEn0 = 1'b1;
		tmpLevelEn1 = 1'b1;
	end
	else if(reg_tmpLevelNum>2'b0)begin
		tmpLevelEn0 = 1'b1;
		tmpLevelEn1 = 1'b0;
	end
	else begin
		tmpLevelEn0 = 1'b0;
		tmpLevelEn1 = 1'b0;
	end
end	

assign LevelEn0 = tmpLevelEn0;
assign LevelEn1 = tmpLevelEn1;

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		regLevelEn0 <= 0;
		regLevelEn1 <= 0;
		regvlc1 <= 0;
		regvlc0 <= 0;
	end
	else if(enc_en||(state<4'd9)&&(state>4'd0)) begin
		regLevelEn0 <= LevelEn0;
		regLevelEn1 <= LevelEn1;
		regvlc1 <= vlc1;
		regvlc0 <= vlc0;
	end
	else begin
		regLevelEn0 <= 0;
		regLevelEn1 <= 0;
		regvlc1 <= 0;
		regvlc0 <= 0;
	end
end


assign last_vlc = regLevelEn1? regvlc1
				: regLevelEn0? regvlc0 : 3'b0;

assign check1 = ((state==enc_cycle0)&&LevelEn0)? 1'b1
			 : ((state==enc_cycle1)&&TrailOneNum>2'd1&&LevelEn0)? 1'b1 : 1'b0;
			 
assign check0 = ((state==enc_cycle2)&&TrailOneNum==2'd3&&LevelEn0
				|| (state==enc_cycle1)&&TrailOneNum==2'd1&&LevelEn0)? 1'b1 : 1'b0;

assign vlc0 =  LevelEn0? (FIRST)? ((totalcoeff>4'd10)? 3'd1 : 3'd0) // suffixlength
                       : (check0&&reg_abslevel1>2'd3)? 3'd2 //last_vlc;  
					   : ((last_vlc== 3'd0)? ((regLevelEn0)? 3'd1 : 3'd0) //first level.
					   : (last_vlc == 3'd1)? ( reg_abslevel1>a1 )? 3'd2 : 3'd1
					   : (last_vlc == 3'd2)? ( reg_abslevel1>a2 )? 3'd3 : 3'd2
					   : (last_vlc == 3'd3)? ( reg_abslevel1>a3 )? 3'd4 : 3'd3
					   : (last_vlc == 3'd4)? ( reg_abslevel1>a4 )? 3'd5 : 3'd4
					   : (last_vlc == 3'd5)? ( reg_abslevel1>a5 )? 3'd6 : 3'd5
					   :  3'd6)  
			: 3'd0;

assign vlc1 =  LevelEn1? (check1&&abslevel0>2'd3)?  3'd2 : ((vlc0 == 3'd0)?  3'd1  // suffixlength
					   : (vlc0 == 3'd1)? ( abslevel0>a1 )? 3'd2 : 3'd1
					   : (vlc0 == 3'd2)? ( abslevel0>a2 )? 3'd3 : 3'd2
					   : (vlc0 == 3'd3)? ( abslevel0>a3 )? 3'd4 : 3'd3
					   : (vlc0 == 3'd4)? ( abslevel0>a4 )? 3'd5 : 3'd4
					   : (vlc0 == 3'd5)? ( abslevel0>a5 )? 3'd6 : 3'd5
					   :  3'd6) : 3'd0;
              

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		reg_tmpLevelNum <= 0;
		reg_abslevel1 <= 0;
	end
	else begin
		reg_tmpLevelNum <= tmpLevelNum;
		reg_abslevel1 <= abslevel1;
	end
end

always @(*) begin
	case(state)
		enc_init  : tmpLevelNum = 0;
		enc_cycle0: begin
			if(totalcoeff>2'd2)
				tmpLevelNum = totalcoeff - 2'd2;
			else
				tmpLevelNum = 0;
		end
		enc_cycle1,	enc_cycle2, enc_cycle3,
		enc_cycle4,	enc_cycle5, enc_cycle6,
		enc_cycle7:	begin
			if(reg_tmpLevelNum>2'd2)
				tmpLevelNum = reg_tmpLevelNum - 2'd2;
			else
				tmpLevelNum = 0;
		end
		default   : tmpLevelNum = 0;
	endcase
end

LevelCodeGen u_CodewordGen0(
				.clk         ( clk           ),
				.rst_n       ( rst_n         ),
				.level       ( tmpLevel0     ),
				.abslevel    ( abslevel0     ),
				.TrailNum    ( TrailOneNum   ),
				.first       ( FIRST         ),
				.enable      ( LevelEn0      ),
				.vlc         ( vlc0          ),
				.prefix      ( prefix0       ),
				.suffix      ( suffix0       ),
				.suffixlength( suffixlength0 )
);
LevelCodeGen u_CodewordGen1(
				.clk          ( clk           ),
				.rst_n        ( rst_n         ),
				.level        ( tmpLevel1     ),
				.abslevel     ( abslevel1     ),
				.TrailNum     ( TrailOneNum   ),
				.first        ( 1'b0          ),
				.enable       ( LevelEn1      ),
				.vlc          ( vlc1          ),
				.prefix       ( prefix1       ),
				.suffix       ( suffix1       ),
				.suffixlength ( suffixlength1 )
);

endmodule
