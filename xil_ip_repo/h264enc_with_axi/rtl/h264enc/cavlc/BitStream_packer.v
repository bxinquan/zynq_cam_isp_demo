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
// Created        : 2011-03-29
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module BitStream_packer(
				clk,
				rst_n,
				control_state,
				enc_state,
				cnt,
				cnt4x4, 
				TrailOneNum,
				HeaderCodeBit,
				HeaderCodeLength,
				LevelCodeBit,
				LevelCodeLength,
				CoeffSignCodeBit,
				CoeffSignCodeLength,
				ZerosRunCodeBit,
				ZerosRunCodeLength,	
				
				sh_enc_done,
				remain_bit_sh,
				remain_len_sh,

				we,
				codebit,
				rbsp_trailing,
				tmpAddr
);


parameter   IDLE         = 2'b00,
			E_INTRA4x4   = 2'b01,
			E_INTRA16x16 = 2'b10;

parameter 	enc_init   	 = 4'b0000, //enc init
			enc_cycle0 	 = 4'b0001, //enc clock 1
			enc_cycle1 	 = 4'b0010, //enc clock 2
			enc_cycle2 	 = 4'b0011, //enc clock 3
			enc_cycle3 	 = 4'b0100, //enc clock 4
            enc_cycle4 	 = 4'b0101, //enc clock 5
            enc_cycle5 	 = 4'b0110, //enc clock 6
            enc_cycle6 	 = 4'b0111, //enc clock 7
            enc_cycle7 	 = 4'b1000; //enc clock 8

			
input  	clk, rst_n;
input  [3:0]   enc_state;
input  [2:0]   control_state;
input  [4:0]   cnt4x4;
input  [5:0]   cnt;
input  [1:0]   TrailOneNum;
input  [16:0]  HeaderCodeBit;
input  [4:0]   HeaderCodeLength;
input  [63:0]  LevelCodeBit;
input  [6:0]   LevelCodeLength;
input  [18:0]  CoeffSignCodeBit;
input  [4:0]   CoeffSignCodeLength;
input  [30:0]  ZerosRunCodeBit;
input  [4:0]   ZerosRunCodeLength;
input          sh_enc_done;
input  [7:0]   remain_bit_sh;
input  [2:0]   remain_len_sh;

output            we;
output   [83:0]   codebit;  // 开始的几比特是上次编码时 留下来的 
output   [7 :0]   rbsp_trailing;
output   [3 :0]   tmpAddr;  // 本次中有效的8位bit的个数  从最高位开始



reg    [83:0]  codebit;
reg    [7:0]   rbsp_trailing;
reg    [6:0]   remain_r;
reg    [2:0]   RemainNum;
reg    [3:0]   tmpAddr;
reg    [30:0]  ZerosRunCodeBit_r;
reg    [4:0]   ZerosRunCodeLength_r;
reg    [7:0]   Remain_bit;
reg    [7:0]   regRemain_bit;
reg    [75:0]  codebit0;
reg    [6:0]   codelength0;
reg    [3:0]   bubble0;



wire  [82:0] codebit2;
wire  [82:0] codebit20;
wire  [82:0] codebit210;
wire  [82:0] codebit21;
wire  [94:0] codebit3;
wire  [94:0] codebit30;
wire  [94:0] codebit31;
wire  [4:0]  bubble2;
wire  [6:0]  bubble3;
wire  [2:0]  remain; 


always @(posedge clk or negedge rst_n)begin
	if(!rst_n) begin
		ZerosRunCodeBit_r     <= 0;
		ZerosRunCodeLength_r  <= 0;
	end
	else begin
		ZerosRunCodeBit_r     <= ZerosRunCodeBit    ;
		ZerosRunCodeLength_r  <= ZerosRunCodeLength ;
	end
end


// bubble0 is 上次未满8位而留下来的空的bit位数
// codelength0 本次的编码输出长度 + 上次留下来的data长度
// codebit0  只含本次编码的code流 （没有上次留下来的）

always @(*) begin
	if(enc_state==3'b0)begin
		codebit0 = { HeaderCodeBit, 59'b0 };
		codelength0 = RemainNum+HeaderCodeLength;
		bubble0 =  4'd8-RemainNum;
	end
	else if((control_state != E_INTRA16x16&&control_state != IDLE)&&(cnt4x4<5'd16 || cnt4x4>5'd17)
	||control_state == E_INTRA16x16&&(cnt4x4<5'd17 || cnt4x4>5'd18)) begin	
			if(enc_state == enc_cycle0) begin
				if(TrailOneNum<2'd3) begin
					codebit0 = { codebit2[82:7] };
					codelength0 = RemainNum+LevelCodeLength+CoeffSignCodeLength;
					bubble0 =  4'd8-RemainNum;
				end
				else begin
					codebit0 = 0;
					codelength0 = RemainNum+1'b0+1'b0;
					bubble0 =  4'd8-RemainNum;
				end
			end
			else if(enc_state == enc_cycle1) begin
				if(TrailOneNum==2'd3) begin
					codebit0 = { codebit2[82:7] };
					codelength0 = RemainNum+LevelCodeLength+CoeffSignCodeLength;
					bubble0 =  4'd8-RemainNum;
				end
				else begin
					codebit0 = { LevelCodeBit, 12'b0 };
					codelength0 = RemainNum+LevelCodeLength;
					bubble0 =  4'd8-RemainNum;
				end
			end
			//for chroma dc, it is different
			else if(enc_state < enc_cycle7) begin
				codebit0 = { LevelCodeBit, 12'b0 };
				codelength0 = RemainNum+LevelCodeLength;
				bubble0 =  4'd8-RemainNum;
			end
			else if(enc_state == enc_cycle7) begin
				codebit0 = { codebit3[94:19] };
				codelength0 = RemainNum+LevelCodeLength+ZerosRunCodeLength;
				bubble0 =  4'd8-RemainNum;
			end
			// error
			else begin
				codebit0 = 0;
				codelength0 = 0;
				bubble0 =  0;
			end
		end
	else if(control_state != IDLE)begin		
			if(enc_state == enc_cycle0) begin
				if(TrailOneNum<2'd3) begin
					codebit0 = { codebit2[82:7] };
					codelength0 = RemainNum+LevelCodeLength+CoeffSignCodeLength;
					bubble0 =  4'd8-RemainNum;
				end
				else begin
					codebit0 = 0;
					codelength0 = RemainNum+1'b0+1'b0;
					bubble0 =  4'd8-RemainNum;
				end				
			end
			else if(enc_state == enc_cycle1)begin
				if(TrailOneNum==2'd3) begin
					codebit0 = { codebit2[82:7] };
					codelength0 = RemainNum+LevelCodeLength+CoeffSignCodeLength;
					bubble0 =  4'd8-RemainNum;
				end
				else begin
					codebit0 = { LevelCodeBit, 12'b0 };
					codelength0 = RemainNum+LevelCodeLength;
					bubble0 =  4'd8-RemainNum;
				end
			end
			else if(enc_state == enc_cycle2)begin
					codebit0 = { ZerosRunCodeBit_r, 45'b0 };
					codelength0 = RemainNum+ZerosRunCodeLength_r;
					bubble0 =  4'd8-RemainNum;
			end
			else if(enc_state > enc_cycle2)begin
				codebit0 = 0;
				codelength0 = RemainNum;
				bubble0 =  4'd8-RemainNum;
			end
	    //add by xyuan 
	        else  begin
	           codebit0 = 0;
		       codelength0 = 0;
		       bubble0 =  0;
	        end
	    //end by xyuan 
	end
	else begin
		codebit0 = 0;
		codelength0 = 0;
		bubble0 =  0;
	end
end



// codebit_r 连同之前留下的与本次一起的codebit
// rbsp_trailing ????
//bit truncated
always @(*) begin
	if(bubble0== 4'd8) begin
		codebit = {codebit0, 8'b0};
		rbsp_trailing = {1'b1, 7'b0};
	end
	else if(bubble0== 4'd7)begin
		codebit = {regRemain_bit[7],codebit0, 7'b0};
		rbsp_trailing = {regRemain_bit[7],1'b1, 6'b0};
	end
	else if(bubble0== 4'd6)begin
		codebit = {regRemain_bit[7:6],codebit0, 6'b0};
		rbsp_trailing = {regRemain_bit[7:6],1'b1, 5'b0};
	end
	else if(bubble0== 4'd5)begin
		codebit = {regRemain_bit[7:5],codebit0, 5'b0};
		rbsp_trailing = {regRemain_bit[7:5],1'b1, 4'b0};
	end
	else if(bubble0== 4'd4)begin
		codebit = {regRemain_bit[7:4],codebit0, 4'b0};
		rbsp_trailing = {regRemain_bit[7:4],1'b1, 3'b0};
	end
	else if(bubble0== 4'd3)begin
		codebit = {regRemain_bit[7:3],codebit0, 3'b0};
		rbsp_trailing = {regRemain_bit[7:3],1'b1, 2'b0};
	end
	else if(bubble0== 4'd2)begin
		codebit = {regRemain_bit[7:2],codebit0, 2'b0};
		rbsp_trailing = {regRemain_bit[7:2],1'b1, 1'b0};
	end
	else if(bubble0== 4'd1)begin
		codebit = {regRemain_bit[7:1],codebit0, 1'b0};
		rbsp_trailing = {regRemain_bit[7:1],1'b1};
	end
	else begin
		codebit = {regRemain_bit[7:0],codebit0}; //{regRemain_bit[7:0],codebit0, 7'b0};
		rbsp_trailing = {1'b1, 7'b0};
	end
end

assign bubble2 = 5'd19 -  CoeffSignCodeLength;
assign codebit20 = {CoeffSignCodeBit,64'b0} ;
assign codebit210 = {19'b0, LevelCodeBit};
assign codebit21 = codebit210<<bubble2;
assign codebit2 = codebit20 | codebit21;  // is CoeffSignCodeBit,LevelCodeBit

assign bubble3 = 7'd64 - LevelCodeLength;
assign codebit30 = {LevelCodeBit,31'b0};
assign codebit31 = {64'b0, ZerosRunCodeBit}<<bubble3;
assign codebit3 = codebit30 | codebit31;  // is LevelCodeBit,ZerosRunCodeBit


assign we = (codelength0>3'd7)? 1'b1:1'b0;

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) 
		regRemain_bit <= 'b0;
	else if(sh_enc_done)
		regRemain_bit <= remain_bit_sh;
	else 
		regRemain_bit <= Remain_bit;
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n) 
		RemainNum   <= 'd0;
	else if(sh_enc_done)
		RemainNum   <= remain_len_sh;
	else 
		RemainNum   <= remain;	
end



// tempAddr is memory's address    // remain_bit is send out 8 bit data 
// remain 是剩下的未输出的data长度
always @(*) begin
	if( codelength0>7'd80)begin
		tmpAddr = 4'd10;
		Remain_bit = codebit[3:0];
		remain_r = codelength0 - 7'd80;
	end
	else if( codelength0<7'd80 && codelength0 > 7'd71)begin
		tmpAddr = 4'd9;
		Remain_bit = codebit[11:4];
		remain_r = codelength0 - 7'd72;
	end
	else if( codelength0<7'd72 && codelength0 > 7'd63)begin
		tmpAddr = 4'd8;
		Remain_bit = codebit[19:12];
		remain_r = codelength0 - 7'd64;
	end
	else if( codelength0<7'd64  && codelength0>7'd55 )begin
		tmpAddr = 4'd7;
		Remain_bit = codebit[27:20];
		remain_r = codelength0 - 7'd56;
	end
	else if( codelength0<7'd56  && codelength0>7'd47 )begin
		tmpAddr = 4'd6;
		Remain_bit = codebit[35:28];
		remain_r = codelength0 - 7'd48;
	end
	else if( codelength0<7'd48  && codelength0>7'd39 )begin
		tmpAddr = 4'd5;
		Remain_bit = codebit[43:36];
		remain_r = codelength0 - 7'd40;
	end
	else if( codelength0<7'd40  && codelength0>7'd31 )begin
		tmpAddr = 4'd4;
		Remain_bit = codebit[51:44];
		remain_r = codelength0 - 7'd32;
	end
	else if( codelength0<7'd32  && codelength0>7'd23 )begin
		tmpAddr = 4'd3;
		Remain_bit = codebit[59:52];
		remain_r = codelength0 - 7'd24;
	end
	else if ( codelength0<7'd24  && codelength0>7'd15 )begin
		tmpAddr = 4'd2;
		Remain_bit = codebit[67:60];
		remain_r = codelength0 - 7'd16;
	end
	else if( codelength0<7'd16  && codelength0>7'd7  )begin
		tmpAddr = 4'd1;
		Remain_bit = codebit[75:68];
		remain_r = codelength0 - 7'd8;
	end
	else begin
		tmpAddr = 0;
		Remain_bit = codebit[83:76];
		remain_r = codelength0;
	end 
end
assign  remain = remain_r[2:0] ;

endmodule
