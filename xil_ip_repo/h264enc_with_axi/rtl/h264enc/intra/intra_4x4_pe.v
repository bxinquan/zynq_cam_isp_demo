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
// Filename       : intra_4x4_pe.v
// Author         : huibo zhong
// Created        : 2011-02-24
// Description    : intra4x4_pe
//               
// Modified 	  : 2013-4-18 by Yibo FAN
//					Remove TQ Path
//-------------------------------------------------------------------
`include "enc_defines.v"

module intra_4x4_pe(
				clk,
				rst_n,
				curr_mode,
				blk_avail,
				
				ref00_tl,
				ref00_t,  ref01_t,  ref02_t,  ref03_t,
				ref00_l,  ref01_l,  ref02_l,  ref03_l,
				ref00_tr, ref01_tr, ref02_tr, ref03_tr,
				
				pixel_ori00, pixel_ori01, pixel_ori02, pixel_ori03,
				pixel_ori10, pixel_ori11, pixel_ori12, pixel_ori13,
				pixel_ori20, pixel_ori21, pixel_ori22, pixel_ori23,
				pixel_ori30, pixel_ori31, pixel_ori32, pixel_ori33,				
				
				pixel_pred00_o, pixel_pred01_o, pixel_pred02_o, pixel_pred03_o,
				pixel_pred10_o, pixel_pred11_o, pixel_pred12_o, pixel_pred13_o,
				pixel_pred20_o, pixel_pred21_o, pixel_pred22_o, pixel_pred23_o,
				pixel_pred30_o, pixel_pred31_o, pixel_pred32_o, pixel_pred33_o,
				
				pixel_res00_o, pixel_res10_o, pixel_res20_o, pixel_res30_o,
				pixel_res01_o, pixel_res11_o, pixel_res21_o, pixel_res31_o,
				pixel_res02_o, pixel_res12_o, pixel_res22_o, pixel_res32_o,
				pixel_res03_o, pixel_res13_o, pixel_res23_o, pixel_res33_o
);

// ********************************************
//                                             
//    Parameters DECLARATION               
//                                             
// ********************************************
parameter 			INTRA4x4_IDLE = 4'd15,
					INTRA4x4_V    = 4'd0,
					INTRA4x4_H    = 4'd1,
					INTRA4x4_DC   = 4'd2,
					INTRA4x4_DDL  = 4'd3,
					INTRA4x4_DDR  = 4'd4,
					INTRA4x4_VR   = 4'd5,
					INTRA4x4_HD   = 4'd6,
					INTRA4x4_VL   = 4'd7,
					INTRA4x4_HU   = 4'd8,
					INTRA4x4_WAIT = 4'd9;

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input                       	clk, rst_n;
input  [3:0]                	curr_mode, blk_avail; 
// Original Pixel
input  [`BIT_DEPTH-1 : 0]		pixel_ori00, pixel_ori01, pixel_ori02, pixel_ori03;
input  [`BIT_DEPTH-1 : 0]		pixel_ori10, pixel_ori11, pixel_ori12, pixel_ori13;
input  [`BIT_DEPTH-1 : 0]		pixel_ori20, pixel_ori21, pixel_ori22, pixel_ori23;
input  [`BIT_DEPTH-1 : 0]		pixel_ori30, pixel_ori31, pixel_ori32, pixel_ori33;
// Reference Pixel
input  [`BIT_DEPTH-1 : 0]		ref00_tl; 
input  [`BIT_DEPTH-1 : 0]		ref00_t,  ref01_t,  ref02_t,  ref03_t ;
input  [`BIT_DEPTH-1 : 0]		ref00_l,  ref01_l,  ref02_l,  ref03_l ;
input  [`BIT_DEPTH-1 : 0]		ref00_tr, ref01_tr, ref02_tr, ref03_tr;
// Predicted Pixel
output [`BIT_DEPTH-1 : 0]		pixel_pred00_o, pixel_pred01_o, pixel_pred02_o, pixel_pred03_o;
output [`BIT_DEPTH-1 : 0]		pixel_pred10_o, pixel_pred11_o, pixel_pred12_o, pixel_pred13_o;
output [`BIT_DEPTH-1 : 0]		pixel_pred20_o, pixel_pred21_o, pixel_pred22_o, pixel_pred23_o;
output [`BIT_DEPTH-1 : 0]		pixel_pred30_o, pixel_pred31_o, pixel_pred32_o, pixel_pred33_o;
// Residual Pixel
output [`BIT_DEPTH-0 : 0]		pixel_res00_o, pixel_res10_o, pixel_res20_o, pixel_res30_o; 
output [`BIT_DEPTH-0 : 0]		pixel_res01_o, pixel_res11_o, pixel_res21_o, pixel_res31_o; 
output [`BIT_DEPTH-0 : 0]		pixel_res02_o, pixel_res12_o, pixel_res22_o, pixel_res32_o; 
output [`BIT_DEPTH-0 : 0]		pixel_res03_o, pixel_res13_o, pixel_res23_o, pixel_res33_o; 

// ********************************************
//                                             
//    Signal DECLARATION                       
//                                             
// ********************************************
reg  [`BIT_DEPTH-1 : 0]			pixel_pred00_o, pixel_pred01_o, pixel_pred02_o, pixel_pred03_o;
reg  [`BIT_DEPTH-1 : 0]			pixel_pred10_o, pixel_pred11_o, pixel_pred12_o, pixel_pred13_o;
reg  [`BIT_DEPTH-1 : 0]			pixel_pred20_o, pixel_pred21_o, pixel_pred22_o, pixel_pred23_o;
reg  [`BIT_DEPTH-1 : 0]			pixel_pred30_o, pixel_pred31_o, pixel_pred32_o, pixel_pred33_o;

reg  [`BIT_DEPTH+3 : 0]			pixel_pred00, pixel_pred01, pixel_pred02, pixel_pred03;
reg  [`BIT_DEPTH+3 : 0]			pixel_pred10, pixel_pred11, pixel_pred12, pixel_pred13;
reg  [`BIT_DEPTH+3 : 0]			pixel_pred20, pixel_pred21, pixel_pred22, pixel_pred23;
reg  [`BIT_DEPTH+3 : 0]			pixel_pred30, pixel_pred31, pixel_pred32, pixel_pred33;

reg  [`BIT_DEPTH-0 : 0]			pixel_res00_o, pixel_res10_o, pixel_res20_o, pixel_res30_o; 
reg  [`BIT_DEPTH-0 : 0]			pixel_res01_o, pixel_res11_o, pixel_res21_o, pixel_res31_o; 
reg  [`BIT_DEPTH-0 : 0]			pixel_res02_o, pixel_res12_o, pixel_res22_o, pixel_res32_o; 
reg  [`BIT_DEPTH-0 : 0]			pixel_res03_o, pixel_res13_o, pixel_res23_o, pixel_res33_o;

wire [`BIT_DEPTH-0 : 0]			pixel_res00, pixel_res10, pixel_res20, pixel_res30;
wire [`BIT_DEPTH-0 : 0]			pixel_res01, pixel_res11, pixel_res21, pixel_res31;
wire [`BIT_DEPTH-0 : 0]			pixel_res02, pixel_res12, pixel_res22, pixel_res32;
wire [`BIT_DEPTH-0 : 0]			pixel_res03, pixel_res13, pixel_res23, pixel_res33;


always @(posedge clk or negedge rst_n)begin
	if (!rst_n) begin
		pixel_pred00_o <= 'b0;
		pixel_pred01_o <= 'b0;
		pixel_pred02_o <= 'b0;
		pixel_pred03_o <= 'b0;
		pixel_pred10_o <= 'b0;
		pixel_pred11_o <= 'b0;
		pixel_pred12_o <= 'b0;
		pixel_pred13_o <= 'b0;
		pixel_pred20_o <= 'b0;
		pixel_pred21_o <= 'b0;
		pixel_pred22_o <= 'b0;
		pixel_pred23_o <= 'b0;
		pixel_pred30_o <= 'b0;
		pixel_pred31_o <= 'b0;
		pixel_pred32_o <= 'b0;
		pixel_pred33_o <= 'b0;
	end
	else begin
		pixel_pred00_o <= pixel_pred00[`BIT_DEPTH-1:0];
		pixel_pred01_o <= pixel_pred01[`BIT_DEPTH-1:0];
		pixel_pred02_o <= pixel_pred02[`BIT_DEPTH-1:0];
		pixel_pred03_o <= pixel_pred03[`BIT_DEPTH-1:0];
		pixel_pred10_o <= pixel_pred10[`BIT_DEPTH-1:0];
		pixel_pred11_o <= pixel_pred11[`BIT_DEPTH-1:0];
		pixel_pred12_o <= pixel_pred12[`BIT_DEPTH-1:0];
		pixel_pred13_o <= pixel_pred13[`BIT_DEPTH-1:0];
		pixel_pred20_o <= pixel_pred20[`BIT_DEPTH-1:0];
		pixel_pred21_o <= pixel_pred21[`BIT_DEPTH-1:0];
		pixel_pred22_o <= pixel_pred22[`BIT_DEPTH-1:0];
		pixel_pred23_o <= pixel_pred23[`BIT_DEPTH-1:0];
		pixel_pred30_o <= pixel_pred30[`BIT_DEPTH-1:0];
		pixel_pred31_o <= pixel_pred31[`BIT_DEPTH-1:0];
		pixel_pred32_o <= pixel_pred32[`BIT_DEPTH-1:0];
		pixel_pred33_o <= pixel_pred33[`BIT_DEPTH-1:0];
	end
end

always @(*)begin
	case(curr_mode)
		//0
		INTRA4x4_V   :begin
			pixel_pred00=ref00_t; pixel_pred01=ref01_t; pixel_pred02=ref02_t; pixel_pred03=ref03_t;
			pixel_pred10=ref00_t; pixel_pred11=ref01_t; pixel_pred12=ref02_t; pixel_pred13=ref03_t;
			pixel_pred20=ref00_t; pixel_pred21=ref01_t; pixel_pred22=ref02_t; pixel_pred23=ref03_t;
			pixel_pred30=ref00_t; pixel_pred31=ref01_t; pixel_pred32=ref02_t; pixel_pred33=ref03_t;
		end
		//1
		INTRA4x4_H   :begin
			pixel_pred00=ref00_l; pixel_pred01=ref00_l; pixel_pred02=ref00_l; pixel_pred03=ref00_l;
			pixel_pred10=ref01_l; pixel_pred11=ref01_l; pixel_pred12=ref01_l; pixel_pred13=ref01_l;
			pixel_pred20=ref02_l; pixel_pred21=ref02_l; pixel_pred22=ref02_l; pixel_pred23=ref02_l;
			pixel_pred30=ref03_l; pixel_pred31=ref03_l; pixel_pred32=ref03_l; pixel_pred33=ref03_l;
		end
		//2
		INTRA4x4_DC  :begin
			if(blk_avail[3]&&blk_avail[2])begin
				pixel_pred00=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred01=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred02=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred03=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred10=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred11=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred12=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred13=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred20=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred21=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred22=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred23=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred30=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred31=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred32=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
				pixel_pred33=(ref00_t+ref01_t+ref02_t+ref03_t+ref00_l+ref01_l+ref02_l+ref03_l+3'd4)>>3;
			end
			else if(blk_avail[3])begin
				pixel_pred00=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred01=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred02=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred03=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred10=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred11=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred12=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred13=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred20=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred21=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred22=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred23=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred30=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred31=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred32=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
				pixel_pred33=(ref00_l+ref01_l+ref02_l+ref03_l+2'd2)>>2;
			end
			else if(blk_avail[1])begin
				pixel_pred00=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred01=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred02=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred03=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred10=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred11=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred12=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred13=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred20=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred21=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred22=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred23=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred30=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred31=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred32=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
				pixel_pred33=(ref00_t+ref01_t+ref02_t+ref03_t+2'd2)>>2;
			end
			else begin
				pixel_pred00=8'd128;
				pixel_pred01=8'd128;
				pixel_pred02=8'd128;
				pixel_pred03=8'd128;
				pixel_pred10=8'd128;
				pixel_pred11=8'd128;
				pixel_pred12=8'd128;
				pixel_pred13=8'd128;
				pixel_pred20=8'd128;
				pixel_pred21=8'd128;
				pixel_pred22=8'd128;
				pixel_pred23=8'd128;
				pixel_pred30=8'd128;
				pixel_pred31=8'd128;
				pixel_pred32=8'd128;
				pixel_pred33=8'd128;
			end
		end
		//3
		INTRA4x4_DDL :begin
			pixel_pred00=( ref00_t  + (ref01_t<<1 ) + ref02_t  + 2'd2 ) >>2 ;
			pixel_pred01=( ref01_t  + (ref02_t<<1 ) + ref03_t  + 2'd2 ) >>2 ;
			pixel_pred02=( ref02_t  + (ref03_t<<1 ) + ref00_tr + 2'd2 ) >>2 ;
			pixel_pred03=( ref03_t  + (ref00_tr<<1) + ref01_tr + 2'd2 ) >>2 ;
			pixel_pred10=( ref01_t  + (ref02_t<<1 ) + ref03_t  + 2'd2 ) >>2 ;
			pixel_pred11=( ref02_t  + (ref03_t<<1 ) + ref00_tr + 2'd2 ) >>2 ;
			pixel_pred12=( ref03_t  + (ref00_tr<<1) + ref01_tr + 2'd2 ) >>2 ;
			pixel_pred13=( ref00_tr + (ref01_tr<<1 )+ ref02_tr + 2'd2 ) >>2 ;
			pixel_pred20=( ref02_t  + (ref03_t<<1 ) + ref00_tr + 2'd2 ) >>2 ;
			pixel_pred21=( ref03_t  + (ref00_tr<<1) + ref01_tr + 2'd2 ) >>2 ;
			pixel_pred22=( ref00_tr + (ref01_tr<<1) + ref02_tr + 2'd2 ) >>2 ;
			pixel_pred23=( ref01_tr + (ref02_tr<<1) + ref03_tr + 2'd2 ) >>2 ;
			pixel_pred30=( ref03_t  + (ref00_tr<<1) + ref01_tr + 2'd2 ) >>2 ;
			pixel_pred31=( ref00_tr + (ref01_tr<<1) + ref02_tr + 2'd2 ) >>2 ;
			pixel_pred32=( ref01_tr + (ref02_tr<<1) + ref03_tr + 2'd2 ) >>2 ;
			pixel_pred33=( ref02_tr + (ref03_tr<<1) + ref03_tr + 2'd2 ) >>2 ;
		end
		INTRA4x4_DDR :begin
			pixel_pred00=( ref00_l  + (ref00_tl<<1) + ref00_t + 2'd2 ) >> 2;
			pixel_pred01=( ref00_tl + (ref00_t<<1 ) + ref01_t + 2'd2 ) >> 2;
			pixel_pred02=( ref00_t  + (ref01_t<<1 ) + ref02_t + 2'd2 ) >> 2;
			pixel_pred03=( ref01_t  + (ref02_t<<1 ) + ref03_t + 2'd2 ) >> 2;
			pixel_pred10=( ref00_tl + (ref00_l<<1 ) + ref01_l + 2'd2 ) >> 2;
			pixel_pred11=( ref00_l  + (ref00_tl<<1) + ref00_t + 2'd2 ) >> 2;
			pixel_pred12=( ref00_tl + (ref00_t<<1 ) + ref01_t + 2'd2 ) >> 2;
			pixel_pred13=( ref00_t  + (ref01_t<<1 ) + ref02_t + 2'd2 ) >> 2;
			pixel_pred20=( ref00_l  + (ref01_l<<1 ) + ref02_l + 2'd2 ) >> 2;
			pixel_pred21=( ref00_tl + (ref00_l<<1 ) + ref01_l + 2'd2 ) >> 2;
			pixel_pred22=( ref00_l  + (ref00_tl<<1) + ref00_t + 2'd2 ) >> 2;
			pixel_pred23=( ref00_tl + (ref00_t<<1 ) + ref01_t + 2'd2 ) >> 2;
			pixel_pred30=( ref01_l  + (ref02_l<<1 ) + ref03_l + 2'd2 ) >> 2;
			pixel_pred31=( ref00_l  + (ref01_l<<1 ) + ref02_l + 2'd2 ) >> 2;
			pixel_pred32=( ref00_tl + (ref00_l<<1 ) + ref01_l + 2'd2 ) >> 2;
			pixel_pred33=( ref00_l  + (ref00_tl<<1) + ref00_t + 2'd2 ) >> 2;
		end
		
		INTRA4x4_VR  :begin
			pixel_pred00=( ref00_tl +                 ref00_t  + 1'd1 ) >> 1;
			pixel_pred01=( ref00_t  +                 ref01_t  + 1'd1 ) >> 1;
			pixel_pred02=( ref01_t  +                 ref02_t  + 1'd1 ) >> 1;
			pixel_pred03=( ref02_t  +                 ref03_t  + 1'd1 ) >> 1;
			pixel_pred10=( ref00_l  + (ref00_tl<<1) + ref00_t  + 2'd2 ) >> 2;
			pixel_pred11=( ref00_tl + (ref00_t<<1 ) + ref01_t  + 2'd2 ) >> 2;
			pixel_pred12=( ref00_t  + (ref01_t<<1 ) + ref02_t  + 2'd2 ) >> 2;
			pixel_pred13=( ref01_t  + (ref02_t<<1 ) + ref03_t  + 2'd2 ) >> 2;
			pixel_pred20=( ref01_l  + (ref00_l<<1 ) + ref00_tl + 2'd2 ) >> 2;
			pixel_pred21=( ref00_tl +                 ref00_t  + 1'd1 ) >> 1;
			pixel_pred22=( ref00_t  +                 ref01_t  + 1'd1 ) >> 1;
			pixel_pred23=( ref01_t  +                 ref02_t  + 1'd1 ) >> 1;
			pixel_pred30=( ref00_l  + (ref01_l<<1 ) + ref02_l  + 2'd2 ) >> 2;
			pixel_pred31=( ref00_l  + (ref00_tl<<1) + ref00_t  + 2'd2 ) >> 2;
			pixel_pred32=( ref00_tl + (ref00_t<<1 ) + ref01_t  + 2'd2 ) >> 2;
			pixel_pred33=( ref00_t  + (ref01_t<<1 ) + ref02_t  + 2'd2 ) >> 2;
		end
		INTRA4x4_HD  :begin
			pixel_pred00=( ref00_l  +                 ref00_tl + 1'd1 ) >> 1;
			pixel_pred01=( ref00_l  + (ref00_tl<<1) + ref00_t  + 2'd2 ) >> 2;
			pixel_pred02=( ref00_tl + (ref00_t<<1 ) + ref01_t  + 2'd2 ) >> 2;
			pixel_pred03=( ref00_t  + (ref01_t<<1 ) + ref02_t  + 2'd2 ) >> 2;
			pixel_pred10=( ref00_l  +                 ref01_l  + 1'd1 ) >> 1;
			pixel_pred11=( ref01_l  + (ref00_l<<1 ) + ref00_tl + 2'd2 ) >> 2;
			pixel_pred12=( ref00_l  +                 ref00_tl + 1'd1 ) >> 1;
			pixel_pred13=( ref00_l  + (ref00_tl<<1) + ref00_t  + 2'd2 ) >> 2;
			pixel_pred20=( ref02_l  +                 ref01_l  + 1'd1 ) >> 1;
			pixel_pred21=( ref02_l  + (ref01_l<<1 ) + ref00_l  + 2'd2 ) >> 2;
			pixel_pred22=( ref00_l  +                 ref01_l  + 1'd1 ) >> 1;
			pixel_pred23=( ref01_l  + (ref00_l<<1 ) + ref00_tl + 2'd2 ) >> 2;
			pixel_pred30=( ref03_l  +                 ref02_l  + 1'd1 ) >> 1;
			pixel_pred31=( ref03_l  + (ref02_l<<1 ) + ref01_l  + 2'd2 ) >> 2;
			pixel_pred32=( ref02_l  +                 ref01_l  + 1'd1 ) >> 1;
			pixel_pred33=( ref02_l  + (ref01_l<<1 ) + ref00_l  + 2'd2 ) >> 2;
		end
		INTRA4x4_VL  :begin
			pixel_pred00=( ref00_t  +                 ref01_t  + 1'd1 ) >> 1;
			pixel_pred01=( ref01_t  +                 ref02_t  + 1'd1 ) >> 1;
			pixel_pred02=( ref02_t  +                 ref03_t  + 1'd1 ) >> 1;
			pixel_pred03=( ref03_t  +                 ref00_tr + 1'd1 ) >> 1;
			pixel_pred10=( ref00_t  + (ref01_t<<1 ) + ref02_t  + 2'd2 ) >> 2;
			pixel_pred11=( ref01_t  + (ref02_t<<1 ) + ref03_t  + 2'd2 ) >> 2;
			pixel_pred12=( ref02_t  + (ref03_t<<1 ) + ref00_tr + 2'd2 ) >> 2;
			pixel_pred13=( ref03_t  + (ref00_tr<<1) + ref01_tr + 2'd2 ) >> 2;
			pixel_pred20=( ref01_t  +                 ref02_t  + 1'd1 ) >> 1;
			pixel_pred21=( ref02_t  +                 ref03_t  + 1'd1 ) >> 1;
			pixel_pred22=( ref03_t  +                 ref00_tr + 1'd1 ) >> 1;
			pixel_pred23=( ref00_tr +                 ref01_tr + 1'd1 ) >> 1;
			pixel_pred30=( ref01_t  + (ref02_t<<1 ) + ref03_t  + 2'd2 ) >> 2;
			pixel_pred31=( ref02_t  + (ref03_t<<1 ) + ref00_tr + 2'd2 ) >> 2;
			pixel_pred32=( ref03_t  + (ref00_tr<<1) + ref01_tr + 2'd2 ) >> 2;
			pixel_pred33=( ref00_tr + (ref01_tr<<1) + ref02_tr + 2'd2 ) >> 2;
		end
		INTRA4x4_HU  :begin
			pixel_pred00=( ref01_l  +                 ref00_l  + 1'd1 ) >> 1;
			pixel_pred01=( ref02_l  + (ref01_l<<1 ) + ref00_l  + 2'd2 ) >> 2;
			pixel_pred02=( ref02_l  +                 ref01_l  + 1'd1 ) >> 1;
			pixel_pred03=( ref03_l  + (ref02_l<<1 ) + ref01_l  + 2'd2 ) >> 2;
			pixel_pred10=( ref02_l  +                 ref01_l  + 1'd1 ) >> 1;
			pixel_pred11=( ref03_l  + (ref02_l<<1 ) + ref01_l  + 2'd2 ) >> 2;
			pixel_pred12=( ref03_l  +                 ref02_l  + 1'd1 ) >> 1;
			pixel_pred13=( ref03_l  + (ref03_l<<1 ) + ref02_l  + 2'd2 ) >> 2;
			pixel_pred20=( ref03_l  +                 ref02_l  + 1'd1 ) >> 1;
			pixel_pred21=( ref03_l  + (ref03_l<<1 ) + ref02_l  + 2'd2 ) >> 2;
			pixel_pred22=ref03_l;
			pixel_pred23=ref03_l;
			pixel_pred30=ref03_l;
			pixel_pred31=ref03_l;
			pixel_pred32=ref03_l;
			pixel_pred33=ref03_l;
		end
		default      :begin
			pixel_pred00='d0;
			pixel_pred01='d0;
			pixel_pred02='d0;
			pixel_pred03='d0;
			pixel_pred10='d0;
			pixel_pred11='d0;
			pixel_pred12='d0;
			pixel_pred13='d0;
			pixel_pred20='d0;
			pixel_pred21='d0;
			pixel_pred22='d0;
			pixel_pred23='d0;
			pixel_pred30='d0;
			pixel_pred31='d0;
			pixel_pred32='d0;
			pixel_pred33='d0;
		end
	endcase
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		pixel_res00_o <= 'd0;
		pixel_res01_o <= 'd0;
		pixel_res02_o <= 'd0;
		pixel_res03_o <= 'd0;
		pixel_res10_o <= 'd0;
		pixel_res11_o <= 'd0;
		pixel_res12_o <= 'd0;
		pixel_res13_o <= 'd0;
		pixel_res20_o <= 'd0;
		pixel_res21_o <= 'd0;
		pixel_res22_o <= 'd0;
		pixel_res23_o <= 'd0;
		pixel_res30_o <= 'd0;
		pixel_res31_o <= 'd0;
		pixel_res32_o <= 'd0;
		pixel_res33_o <= 'd0;
	end
	else begin
		pixel_res00_o <= pixel_res00;
		pixel_res01_o <= pixel_res01;
		pixel_res02_o <= pixel_res02;
		pixel_res03_o <= pixel_res03;
		pixel_res10_o <= pixel_res10;
		pixel_res11_o <= pixel_res11;
		pixel_res12_o <= pixel_res12;
		pixel_res13_o <= pixel_res13;
		pixel_res20_o <= pixel_res20;
		pixel_res21_o <= pixel_res21;
		pixel_res22_o <= pixel_res22;
		pixel_res23_o <= pixel_res23;
		pixel_res30_o <= pixel_res30;
		pixel_res31_o <= pixel_res31;
		pixel_res32_o <= pixel_res32;
		pixel_res33_o <= pixel_res33;
	end
end

assign pixel_res00 = {1'b0,pixel_ori00} - {1'b0,pixel_pred00[`BIT_DEPTH-1:0]};
assign pixel_res01 = {1'b0,pixel_ori01} - {1'b0,pixel_pred01[`BIT_DEPTH-1:0]};
assign pixel_res02 = {1'b0,pixel_ori02} - {1'b0,pixel_pred02[`BIT_DEPTH-1:0]};
assign pixel_res03 = {1'b0,pixel_ori03} - {1'b0,pixel_pred03[`BIT_DEPTH-1:0]};
assign pixel_res10 = {1'b0,pixel_ori10} - {1'b0,pixel_pred10[`BIT_DEPTH-1:0]};
assign pixel_res11 = {1'b0,pixel_ori11} - {1'b0,pixel_pred11[`BIT_DEPTH-1:0]};
assign pixel_res12 = {1'b0,pixel_ori12} - {1'b0,pixel_pred12[`BIT_DEPTH-1:0]};
assign pixel_res13 = {1'b0,pixel_ori13} - {1'b0,pixel_pred13[`BIT_DEPTH-1:0]};
assign pixel_res20 = {1'b0,pixel_ori20} - {1'b0,pixel_pred20[`BIT_DEPTH-1:0]};
assign pixel_res21 = {1'b0,pixel_ori21} - {1'b0,pixel_pred21[`BIT_DEPTH-1:0]};
assign pixel_res22 = {1'b0,pixel_ori22} - {1'b0,pixel_pred22[`BIT_DEPTH-1:0]};
assign pixel_res23 = {1'b0,pixel_ori23} - {1'b0,pixel_pred23[`BIT_DEPTH-1:0]};
assign pixel_res30 = {1'b0,pixel_ori30} - {1'b0,pixel_pred30[`BIT_DEPTH-1:0]};
assign pixel_res31 = {1'b0,pixel_ori31} - {1'b0,pixel_pred31[`BIT_DEPTH-1:0]};
assign pixel_res32 = {1'b0,pixel_ori32} - {1'b0,pixel_pred32[`BIT_DEPTH-1:0]};
assign pixel_res33 = {1'b0,pixel_ori33} - {1'b0,pixel_pred33[`BIT_DEPTH-1:0]};

endmodule