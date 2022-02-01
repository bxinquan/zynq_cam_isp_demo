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
// Filename       : intra_4x4_pred_mode_gen.v
// Author         : huibo zhong
// Created        : 2011-02-27
// Description    : intra4x4_pred_mode_gen,
//               
// Modified 	  : 2013-4-18 by Yibo FAN
//					Remove TQ Path
//-------------------------------------------------------------------
`include "enc_defines.v"

module intra_4x4_pred_mode_gen(
				clk  			,
				rst_n			,
				mb_x			,
				mb_y			,
				blk4x4_num		,
				intra4x4_bm_c	,
				intra4x4_bm_l	,
				intra4x4_bm_t	,				
				mode_pred
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input         				clk  ;
input         				rst_n;
input  [`PIC_W_MB_LEN-1:0]  mb_x;
input  [`PIC_H_MB_LEN-1:0]  mb_y;
input  [3:0]				blk4x4_num;	   // current 4x4 block index
input  [63:0] 				intra4x4_bm_c; // current 4x4 mode matrix
input  [15:0]				intra4x4_bm_l; // left 4 mode 
input  [15:0]				intra4x4_bm_t; // top 4 mode 
output [3:0] 				mode_pred;     // output predicted mode

// ********************************************
//                                             
//    Signals DECLARATION               
//                                             
// ********************************************
reg   [3:0]  				intra4x4_bm_r[15:0];
reg   [3:0]  				left_bm[3:0];
reg   [3:0]  				top_bm[3:0];
reg   [3:0] 				intra4x4_mode_l;
reg   [3:0] 				intra4x4_mode_t;

// ********************************************
//                                             
//    Logic DECLARATION               
//                                             
// ********************************************
//--------------------------------------------------------
//		Reference Modes Prepare
//--------------------------------------------------------
always @(*) begin
 	   {intra4x4_bm_r[0] , intra4x4_bm_r[1] , intra4x4_bm_r[2] , intra4x4_bm_r[3], 
       	intra4x4_bm_r[4] , intra4x4_bm_r[5] , intra4x4_bm_r[6] , intra4x4_bm_r[7],   
       	intra4x4_bm_r[8] , intra4x4_bm_r[9] , intra4x4_bm_r[10], intra4x4_bm_r[11],  
       	intra4x4_bm_r[12], intra4x4_bm_r[13], intra4x4_bm_r[14], intra4x4_bm_r[15]} = intra4x4_bm_c;
end

always @(*) begin 
	{left_bm[0], left_bm[1], left_bm[2], left_bm[3]} = intra4x4_bm_l;
end

always @(*) begin 
	{top_bm[0], top_bm[1], top_bm[2], top_bm[3]} = intra4x4_bm_t;
end

//--------------------------------------------------------
//		Predicted Mode Generation
//--------------------------------------------------------
always @(*)begin
		case(blk4x4_num)
			4'd0: begin
				if(mb_x=='d0)
					intra4x4_mode_l = 4'd15;
				else
					intra4x4_mode_l = left_bm[0];
			end
			4'd1:intra4x4_mode_l = intra4x4_bm_r[0];
			4'd2: begin
				if(mb_x=='d0)
					intra4x4_mode_l = 4'd15;
				else
					intra4x4_mode_l = left_bm[1];
			end
			4'd3 :intra4x4_mode_l = intra4x4_bm_r[2];
			4'd4 :intra4x4_mode_l = intra4x4_bm_r[1];
			4'd5 :intra4x4_mode_l = intra4x4_bm_r[4];
			4'd6 :intra4x4_mode_l = intra4x4_bm_r[3];
			4'd7 :intra4x4_mode_l = intra4x4_bm_r[6];
			4'd8 :begin
				if(mb_x=='d0)
					intra4x4_mode_l = 4'd15;
				else
					intra4x4_mode_l = left_bm[2];
			end
			4'd9 :intra4x4_mode_l = intra4x4_bm_r[8];
			4'd10:begin
				if(mb_x=='d0)
					intra4x4_mode_l = 4'd15;
				else
					intra4x4_mode_l = left_bm[3];
			end
			4'd11:intra4x4_mode_l = intra4x4_bm_r[10];
			4'd12:intra4x4_mode_l = intra4x4_bm_r[9];
			4'd13:intra4x4_mode_l = intra4x4_bm_r[12];
			4'd14:intra4x4_mode_l = intra4x4_bm_r[11];
			4'd15:intra4x4_mode_l = intra4x4_bm_r[14];
		endcase
end
	
always @(*)begin
		case(blk4x4_num)
			4'd0: begin
				if(mb_y=='d0)
					intra4x4_mode_t = 4'd15;
				else
					intra4x4_mode_t = top_bm[0];
			end
			4'd1: begin
				if(mb_y=='d0)
					intra4x4_mode_t = 4'd15;
				else
					intra4x4_mode_t = top_bm[1];
			end
			4'd2: intra4x4_mode_t = intra4x4_bm_r[0];
			4'd3 :intra4x4_mode_t = intra4x4_bm_r[1];
			4'd4 :begin
				if(mb_y=='d0)
					intra4x4_mode_t = 4'd15;
				else
					intra4x4_mode_t = top_bm[2];
			end
			4'd5 :begin
				if(mb_y=='d0)
					intra4x4_mode_t = 4'd15;
				else
					intra4x4_mode_t = top_bm[3];
			end
			4'd6 :intra4x4_mode_t = intra4x4_bm_r[4];
			4'd7 :intra4x4_mode_t = intra4x4_bm_r[5];
			4'd8 :intra4x4_mode_t = intra4x4_bm_r[2];
			4'd9 :intra4x4_mode_t = intra4x4_bm_r[3];
			4'd10:intra4x4_mode_t = intra4x4_bm_r[8];
			4'd11:intra4x4_mode_t = intra4x4_bm_r[9];
			4'd12:intra4x4_mode_t = intra4x4_bm_r[6];
			4'd13:intra4x4_mode_t = intra4x4_bm_r[7];
			4'd14:intra4x4_mode_t = intra4x4_bm_r[12];
			4'd15:intra4x4_mode_t = intra4x4_bm_r[13];
		endcase
end

assign 	mode_pred = (intra4x4_mode_t==4'd15 || intra4x4_mode_l==4'd15)? 4'd2 : 
					(intra4x4_mode_t < intra4x4_mode_l) ? intra4x4_mode_t : intra4x4_mode_l;

endmodule
