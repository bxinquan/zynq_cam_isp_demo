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
// Filename       : intra_16x16_chroma_pe.v
// Author         : huibo zhong
// Created        : 2011-03-10
// Description    : intra16x16_chroma_pe,
//               
// Modifed        : 2012-12-31 by Yibo FAN
//					Exclude Plane and DC into separate modules
//------------------------------------------------------------------- 
`include "enc_defines.v"

module intra_16x16_chroma_pe(
				clk,
				rst_n,				
				
				blk16x16_num,
				blk_uv_num,						
				curr_mode,

				pixel_ref00_tl,
				pixel_ref00_t,  pixel_ref01_t,  pixel_ref02_t,  pixel_ref03_t,
				pixel_ref04_t,  pixel_ref05_t,  pixel_ref06_t,  pixel_ref07_t,
				pixel_ref08_t,  pixel_ref09_t,  pixel_ref10_t,  pixel_ref11_t,
				pixel_ref12_t,  pixel_ref13_t,  pixel_ref14_t,  pixel_ref15_t,
				pixel_ref00_l,  pixel_ref01_l,  pixel_ref02_l,  pixel_ref03_l,
				pixel_ref04_l,  pixel_ref05_l,  pixel_ref06_l,  pixel_ref07_l,
				pixel_ref08_l,  pixel_ref09_l,  pixel_ref10_l,  pixel_ref11_l,
				pixel_ref12_l,  pixel_ref13_l,  pixel_ref14_l,  pixel_ref15_l,
				
				pixel_ref00_tl_u,
				pixel_ref00_t_u ,  pixel_ref01_t_u,  pixel_ref02_t_u,  pixel_ref03_t_u,
				pixel_ref04_t_u ,  pixel_ref05_t_u,  pixel_ref06_t_u,  pixel_ref07_t_u,
				pixel_ref00_l_u ,  pixel_ref01_l_u,  pixel_ref02_l_u,  pixel_ref03_l_u,
				pixel_ref04_l_u ,  pixel_ref05_l_u,  pixel_ref06_l_u,  pixel_ref07_l_u,
				
				pixel_ref00_tl_v,
				pixel_ref00_t_v ,  pixel_ref01_t_v,  pixel_ref02_t_v,  pixel_ref03_t_v,
				pixel_ref04_t_v ,  pixel_ref05_t_v,  pixel_ref06_t_v,  pixel_ref07_t_v,
				pixel_ref00_l_v ,  pixel_ref01_l_v,  pixel_ref02_l_v,  pixel_ref03_l_v,
				pixel_ref04_l_v ,  pixel_ref05_l_v,  pixel_ref06_l_v,  pixel_ref07_l_v,
				
				pixel_plane00, pixel_plane01, pixel_plane02, pixel_plane03,
				pixel_plane10, pixel_plane11, pixel_plane12, pixel_plane13,
				pixel_plane20, pixel_plane21, pixel_plane22, pixel_plane23,
				pixel_plane30, pixel_plane31, pixel_plane32, pixel_plane33,
				
				dc_y, dc_u, dc_v,
				
				pixel_ori00, pixel_ori01, pixel_ori02, pixel_ori03,
				pixel_ori10, pixel_ori11, pixel_ori12, pixel_ori13,
				pixel_ori20, pixel_ori21, pixel_ori22, pixel_ori23,				
				pixel_ori30, pixel_ori31, pixel_ori32, pixel_ori33,			
				                   
				pixel_ori00_uv, pixel_ori01_uv, pixel_ori02_uv, pixel_ori03_uv,
				pixel_ori10_uv, pixel_ori11_uv, pixel_ori12_uv, pixel_ori13_uv,
				pixel_ori20_uv, pixel_ori21_uv, pixel_ori22_uv, pixel_ori23_uv,
				pixel_ori30_uv, pixel_ori31_uv, pixel_ori32_uv, pixel_ori33_uv,                 				
				
				pixel_pre00, pixel_pre01, pixel_pre02, pixel_pre03,
				pixel_pre10, pixel_pre11, pixel_pre12, pixel_pre13,
				pixel_pre20, pixel_pre21, pixel_pre22, pixel_pre23,
				pixel_pre30, pixel_pre31, pixel_pre32, pixel_pre33,
				
				pixel_res00, pixel_res01, pixel_res02, pixel_res03,
				pixel_res10, pixel_res11, pixel_res12, pixel_res13,
				pixel_res20, pixel_res21, pixel_res22, pixel_res23,
				pixel_res30, pixel_res31, pixel_res32, pixel_res33
				
);

// ********************************************
//                                             
//    Parameters DECLARATION               
//                                             
// ********************************************
parameter 	IDLE            = 4'b1111,
			INTRA16x16_V    = 4'b0000,
			INTRA16x16_H    = 4'b0001,
			INTRA16x16_DC   = 4'b0010,
			INTRA16x16_PLANE= 4'b0011,
			INTRA16x16_WAIT = 4'b0100,//wait for finish MD
			INTRA16x16_PRED = 4'b0101,
			CHROMA_DC       = 4'b1000,
			CHROMA_H        = 4'b1001,
			CHROMA_V        = 4'b1010,
			CHROMA_PLANE    = 4'b1011,
			CHROMA_WAIT     = 4'b1100,//wait for finish MD
			CHROMA_PRED     = 4'b1101;
			
// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input							clk;
input							rst_n;	
// Intra_16x16_Chrome Ctrl IF
input [3:0] 					curr_mode;
input [3:0] 					blk16x16_num;
input [2:0] 					blk_uv_num;

// Reference Pixels
input	[`BIT_DEPTH-1:0]		pixel_ref00_l ,	pixel_ref01_l, pixel_ref02_l, pixel_ref03_l,
								pixel_ref04_l ,	pixel_ref05_l, pixel_ref06_l, pixel_ref07_l,
								pixel_ref08_l ,	pixel_ref09_l, pixel_ref10_l, pixel_ref11_l,
								pixel_ref12_l ,	pixel_ref13_l, pixel_ref14_l, pixel_ref15_l,
								pixel_ref00_t ,	pixel_ref01_t, pixel_ref02_t, pixel_ref03_t,
								pixel_ref04_t ,	pixel_ref05_t, pixel_ref06_t, pixel_ref07_t,
								pixel_ref08_t ,	pixel_ref09_t, pixel_ref10_t, pixel_ref11_t,
								pixel_ref12_t ,	pixel_ref13_t, pixel_ref14_t, pixel_ref15_t,
								pixel_ref00_tl,

								pixel_ref00_l_u , pixel_ref01_l_u, pixel_ref02_l_u, pixel_ref03_l_u,
								pixel_ref04_l_u , pixel_ref05_l_u, pixel_ref06_l_u, pixel_ref07_l_u,
								pixel_ref00_t_u , pixel_ref01_t_u, pixel_ref02_t_u, pixel_ref03_t_u,
								pixel_ref04_t_u , pixel_ref05_t_u, pixel_ref06_t_u, pixel_ref07_t_u,
								pixel_ref00_tl_u,
								
								pixel_ref00_l_v , pixel_ref01_l_v, pixel_ref02_l_v, pixel_ref03_l_v,
								pixel_ref04_l_v , pixel_ref05_l_v, pixel_ref06_l_v, pixel_ref07_l_v,
								pixel_ref00_t_v , pixel_ref01_t_v, pixel_ref02_t_v, pixel_ref03_t_v,
								pixel_ref04_t_v , pixel_ref05_t_v, pixel_ref06_t_v, pixel_ref07_t_v,
								pixel_ref00_tl_v;
// Original Pixels
input  [`BIT_DEPTH-1:0] 		pixel_ori00, pixel_ori01, pixel_ori02, pixel_ori03,
					 			pixel_ori10, pixel_ori11, pixel_ori12, pixel_ori13,
					 			pixel_ori20, pixel_ori21, pixel_ori22, pixel_ori23,
					 			pixel_ori30, pixel_ori31, pixel_ori32, pixel_ori33,
					 			pixel_ori00_uv, pixel_ori01_uv, pixel_ori02_uv, pixel_ori03_uv,
					 			pixel_ori10_uv, pixel_ori11_uv, pixel_ori12_uv, pixel_ori13_uv,
					 			pixel_ori20_uv, pixel_ori21_uv, pixel_ori22_uv, pixel_ori23_uv,
					 			pixel_ori30_uv, pixel_ori31_uv, pixel_ori32_uv, pixel_ori33_uv;
// Plane Pixels
input  [`BIT_DEPTH-1:0]			pixel_plane00, pixel_plane01, pixel_plane02, pixel_plane03,
								pixel_plane10, pixel_plane11, pixel_plane12, pixel_plane13,
								pixel_plane20, pixel_plane21, pixel_plane22, pixel_plane23,
								pixel_plane30, pixel_plane31, pixel_plane32, pixel_plane33;
// DC Pixels
input  [`BIT_DEPTH-1:0]			dc_y, dc_u, dc_v;
// Predicted Pixels
output [`BIT_DEPTH-1:0]  		pixel_pre00, pixel_pre01, pixel_pre02, pixel_pre03,
								pixel_pre10, pixel_pre11, pixel_pre12, pixel_pre13,
								pixel_pre20, pixel_pre21, pixel_pre22, pixel_pre23,
								pixel_pre30, pixel_pre31, pixel_pre32, pixel_pre33;
// Residual Pixels
output [`BIT_DEPTH:0]			pixel_res00, pixel_res01, pixel_res02, pixel_res03,
								pixel_res10, pixel_res11, pixel_res12, pixel_res13,
								pixel_res20, pixel_res21, pixel_res22, pixel_res23,
								pixel_res30, pixel_res31, pixel_res32, pixel_res33;
								
// ********************************************
//                                             
//    Signals DECLARATION               
//                                             
// ********************************************
wire [1:0] 						blk16x16_num_v, blk16x16_num_h;      
              
reg  [`BIT_DEPTH-1:0]  			pixel_pred00, pixel_pred01, pixel_pred02, pixel_pred03, // pixel_pred : wire 
								pixel_pred10, pixel_pred11, pixel_pred12, pixel_pred13,
								pixel_pred20, pixel_pred21, pixel_pred22, pixel_pred23,
								pixel_pred30, pixel_pred31, pixel_pred32, pixel_pred33,
								pixel_pre00, pixel_pre01, pixel_pre02, pixel_pre03, // pixel pre : register
								pixel_pre10, pixel_pre11, pixel_pre12, pixel_pre13,
								pixel_pre20, pixel_pre21, pixel_pre22, pixel_pre23,
								pixel_pre30, pixel_pre31, pixel_pre32, pixel_pre33;

reg  [`BIT_DEPTH-1:0] 			used_pixel_ref00_t,  used_pixel_ref01_t,  used_pixel_ref02_t,  used_pixel_ref03_t,
								used_pixel_ref04_t,  used_pixel_ref05_t,  used_pixel_ref06_t,  used_pixel_ref07_t,
								used_pixel_ref08_t,  used_pixel_ref09_t,  used_pixel_ref10_t,  used_pixel_ref11_t,
								used_pixel_ref12_t,  used_pixel_ref13_t,  used_pixel_ref14_t,  used_pixel_ref15_t,
								used_pixel_ref00_l,  used_pixel_ref01_l,  used_pixel_ref02_l,  used_pixel_ref03_l,
								used_pixel_ref04_l,  used_pixel_ref05_l,  used_pixel_ref06_l,  used_pixel_ref07_l,
								used_pixel_ref08_l,  used_pixel_ref09_l,  used_pixel_ref10_l,  used_pixel_ref11_l,
								used_pixel_ref12_l,  used_pixel_ref13_l,  used_pixel_ref14_l,  used_pixel_ref15_l;

reg  [`BIT_DEPTH:0]				pixel_res00, pixel_res01, pixel_res02, pixel_res03,
								pixel_res10, pixel_res11, pixel_res12, pixel_res13,
								pixel_res20, pixel_res21, pixel_res22, pixel_res23,
								pixel_res30, pixel_res31, pixel_res32, pixel_res33;
                                         
// ********************************************
//                                             
//    Logic DECLARATION               
//                                             
// ********************************************
assign     blk16x16_num_v=(curr_mode < 4'd6)?{blk16x16_num[3],blk16x16_num[1]}:blk_uv_num[1];
assign     blk16x16_num_h=(curr_mode < 4'd6)?{blk16x16_num[2],blk16x16_num[0]}:blk_uv_num[0];

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		pixel_res00 <= 'd0; 
		pixel_res01 <= 'd0; 
		pixel_res02 <= 'd0; 
		pixel_res03 <= 'd0;
		pixel_res10 <= 'd0; 
		pixel_res11 <= 'd0; 
		pixel_res12 <= 'd0; 
		pixel_res13 <= 'd0;
		pixel_res20 <= 'd0; 
		pixel_res21 <= 'd0; 
		pixel_res22 <= 'd0; 
		pixel_res23 <= 'd0;
		pixel_res30 <= 'd0; 
		pixel_res31 <= 'd0; 
		pixel_res32 <= 'd0; 
		pixel_res33 <= 'd0; 
	end
	else begin
		if (curr_mode[3]) begin // Chrome Pred
			pixel_res00 <= {1'b0,pixel_ori00_uv} - {1'b0,pixel_pred00};
			pixel_res01 <= {1'b0,pixel_ori01_uv} - {1'b0,pixel_pred01};
			pixel_res02 <= {1'b0,pixel_ori02_uv} - {1'b0,pixel_pred02};
			pixel_res03 <= {1'b0,pixel_ori03_uv} - {1'b0,pixel_pred03};
			pixel_res10 <= {1'b0,pixel_ori10_uv} - {1'b0,pixel_pred10};
			pixel_res11 <= {1'b0,pixel_ori11_uv} - {1'b0,pixel_pred11};
			pixel_res12 <= {1'b0,pixel_ori12_uv} - {1'b0,pixel_pred12};
			pixel_res13 <= {1'b0,pixel_ori13_uv} - {1'b0,pixel_pred13};
			pixel_res20 <= {1'b0,pixel_ori20_uv} - {1'b0,pixel_pred20};
			pixel_res21 <= {1'b0,pixel_ori21_uv} - {1'b0,pixel_pred21};
			pixel_res22 <= {1'b0,pixel_ori22_uv} - {1'b0,pixel_pred22};
			pixel_res23 <= {1'b0,pixel_ori23_uv} - {1'b0,pixel_pred23};
			pixel_res30 <= {1'b0,pixel_ori30_uv} - {1'b0,pixel_pred30};
			pixel_res31 <= {1'b0,pixel_ori31_uv} - {1'b0,pixel_pred31};
			pixel_res32 <= {1'b0,pixel_ori32_uv} - {1'b0,pixel_pred32};
			pixel_res33 <= {1'b0,pixel_ori33_uv} - {1'b0,pixel_pred33};
		end	
		else begin			  // Luma Pred
			pixel_res00 <= {1'b0,pixel_ori00} - {1'b0,pixel_pred00};
			pixel_res01 <= {1'b0,pixel_ori01} - {1'b0,pixel_pred01};
			pixel_res02 <= {1'b0,pixel_ori02} - {1'b0,pixel_pred02};
			pixel_res03 <= {1'b0,pixel_ori03} - {1'b0,pixel_pred03};
			pixel_res10 <= {1'b0,pixel_ori10} - {1'b0,pixel_pred10};
			pixel_res11 <= {1'b0,pixel_ori11} - {1'b0,pixel_pred11};
			pixel_res12 <= {1'b0,pixel_ori12} - {1'b0,pixel_pred12};
			pixel_res13 <= {1'b0,pixel_ori13} - {1'b0,pixel_pred13};
			pixel_res20 <= {1'b0,pixel_ori20} - {1'b0,pixel_pred20};
			pixel_res21 <= {1'b0,pixel_ori21} - {1'b0,pixel_pred21};
			pixel_res22 <= {1'b0,pixel_ori22} - {1'b0,pixel_pred22};
			pixel_res23 <= {1'b0,pixel_ori23} - {1'b0,pixel_pred23};
			pixel_res30 <= {1'b0,pixel_ori30} - {1'b0,pixel_pred30};
			pixel_res31 <= {1'b0,pixel_ori31} - {1'b0,pixel_pred31};
			pixel_res32 <= {1'b0,pixel_ori32} - {1'b0,pixel_pred32};
			pixel_res33 <= {1'b0,pixel_ori33} - {1'b0,pixel_pred33};
		end
	end
end

// Reference Pixel Sel for 4x4 prediction
always @(*) begin  
	if(curr_mode < 4'd6)begin
		used_pixel_ref00_t = pixel_ref00_t;	used_pixel_ref01_t = pixel_ref01_t;
		used_pixel_ref02_t = pixel_ref02_t;	used_pixel_ref03_t = pixel_ref03_t;
		used_pixel_ref04_t = pixel_ref04_t;	used_pixel_ref05_t = pixel_ref05_t;
		used_pixel_ref06_t = pixel_ref06_t;	used_pixel_ref07_t = pixel_ref07_t;
		used_pixel_ref08_t = pixel_ref08_t;	used_pixel_ref09_t = pixel_ref09_t;
		used_pixel_ref10_t = pixel_ref10_t;	used_pixel_ref11_t = pixel_ref11_t;
		used_pixel_ref12_t = pixel_ref12_t;	used_pixel_ref13_t = pixel_ref13_t;
		used_pixel_ref14_t = pixel_ref14_t;	used_pixel_ref15_t = pixel_ref15_t;
		
		used_pixel_ref00_l = pixel_ref00_l;	used_pixel_ref01_l = pixel_ref01_l;
		used_pixel_ref02_l = pixel_ref02_l;	used_pixel_ref03_l = pixel_ref03_l;
		used_pixel_ref04_l = pixel_ref04_l;	used_pixel_ref05_l = pixel_ref05_l;
		used_pixel_ref06_l = pixel_ref06_l;	used_pixel_ref07_l = pixel_ref07_l;
		used_pixel_ref08_l = pixel_ref08_l;	used_pixel_ref09_l = pixel_ref09_l;
		used_pixel_ref10_l = pixel_ref10_l;	used_pixel_ref11_l = pixel_ref11_l;
		used_pixel_ref12_l = pixel_ref12_l;	used_pixel_ref13_l = pixel_ref13_l;
		used_pixel_ref14_l = pixel_ref14_l;	used_pixel_ref15_l = pixel_ref15_l;
		
	end
	else if(blk_uv_num < 'd4)begin
		used_pixel_ref00_t = pixel_ref00_t_u;	used_pixel_ref01_t = pixel_ref01_t_u;
		used_pixel_ref02_t = pixel_ref02_t_u;	used_pixel_ref03_t = pixel_ref03_t_u;
		used_pixel_ref04_t = pixel_ref04_t_u;	used_pixel_ref05_t = pixel_ref05_t_u;
		used_pixel_ref06_t = pixel_ref06_t_u;	used_pixel_ref07_t = pixel_ref07_t_u;
		used_pixel_ref08_t = pixel_ref00_t_u;	used_pixel_ref09_t = pixel_ref01_t_u;
		used_pixel_ref10_t = pixel_ref02_t_u;	used_pixel_ref11_t = pixel_ref03_t_u;
		used_pixel_ref12_t = pixel_ref04_t_u;	used_pixel_ref13_t = pixel_ref05_t_u;
		used_pixel_ref14_t = pixel_ref06_t_u;	used_pixel_ref15_t = pixel_ref07_t_u;
		
		used_pixel_ref00_l = pixel_ref00_l_u;	used_pixel_ref01_l = pixel_ref01_l_u;
		used_pixel_ref02_l = pixel_ref02_l_u;	used_pixel_ref03_l = pixel_ref03_l_u;
		used_pixel_ref04_l = pixel_ref04_l_u;	used_pixel_ref05_l = pixel_ref05_l_u;
		used_pixel_ref06_l = pixel_ref06_l_u;	used_pixel_ref07_l = pixel_ref07_l_u;
		used_pixel_ref08_l = pixel_ref00_l_u;	used_pixel_ref09_l = pixel_ref01_l_u;
		used_pixel_ref10_l = pixel_ref02_l_u;	used_pixel_ref11_l = pixel_ref03_l_u;
		used_pixel_ref12_l = pixel_ref04_l_u;	used_pixel_ref13_l = pixel_ref05_l_u;
		used_pixel_ref14_l = pixel_ref06_l_u;	used_pixel_ref15_l = pixel_ref07_l_u;
	end
	else begin
		used_pixel_ref00_t = pixel_ref00_t_v;	used_pixel_ref01_t = pixel_ref01_t_v;
		used_pixel_ref02_t = pixel_ref02_t_v;	used_pixel_ref03_t = pixel_ref03_t_v;
		used_pixel_ref04_t = pixel_ref04_t_v;	used_pixel_ref05_t = pixel_ref05_t_v;
		used_pixel_ref06_t = pixel_ref06_t_v;	used_pixel_ref07_t = pixel_ref07_t_v;
		used_pixel_ref08_t = pixel_ref00_t_v;	used_pixel_ref09_t = pixel_ref01_t_v;
		used_pixel_ref10_t = pixel_ref02_t_v;	used_pixel_ref11_t = pixel_ref03_t_v;
		used_pixel_ref12_t = pixel_ref04_t_v;	used_pixel_ref13_t = pixel_ref05_t_v;
		used_pixel_ref14_t = pixel_ref06_t_v;	used_pixel_ref15_t = pixel_ref07_t_v;
		
		used_pixel_ref00_l = pixel_ref00_l_v;	used_pixel_ref01_l = pixel_ref01_l_v;
		used_pixel_ref02_l = pixel_ref02_l_v;	used_pixel_ref03_l = pixel_ref03_l_v;
		used_pixel_ref04_l = pixel_ref04_l_v;	used_pixel_ref05_l = pixel_ref05_l_v;
		used_pixel_ref06_l = pixel_ref06_l_v;	used_pixel_ref07_l = pixel_ref07_l_v;
		used_pixel_ref08_l = pixel_ref00_l_v;	used_pixel_ref09_l = pixel_ref01_l_v;
		used_pixel_ref10_l = pixel_ref02_l_v;	used_pixel_ref11_l = pixel_ref03_l_v;
		used_pixel_ref12_l = pixel_ref04_l_v;	used_pixel_ref13_l = pixel_ref05_l_v;
		used_pixel_ref14_l = pixel_ref06_l_v;	used_pixel_ref15_l = pixel_ref07_l_v;
	end
end

// 4x4 block prediction
always @ (*) begin
	case (curr_mode)
		INTRA16x16_DC:  begin
			pixel_pred00 = dc_y;	pixel_pred01 = dc_y;
			pixel_pred02 = dc_y;	pixel_pred03 = dc_y;
			pixel_pred10 = dc_y;	pixel_pred11 = dc_y;
			pixel_pred12 = dc_y;	pixel_pred13 = dc_y;
			pixel_pred20 = dc_y;	pixel_pred21 = dc_y;
			pixel_pred22 = dc_y;	pixel_pred23 = dc_y;
			pixel_pred30 = dc_y;	pixel_pred31 = dc_y;
			pixel_pred32 = dc_y;	pixel_pred33 = dc_y; 
		end
		CHROMA_DC: begin
			pixel_pred00 = blk_uv_num[2]?dc_v:dc_u;	pixel_pred01 = blk_uv_num[2]?dc_v:dc_u;
			pixel_pred02 = blk_uv_num[2]?dc_v:dc_u;	pixel_pred03 = blk_uv_num[2]?dc_v:dc_u;
			pixel_pred10 = blk_uv_num[2]?dc_v:dc_u;	pixel_pred11 = blk_uv_num[2]?dc_v:dc_u;
			pixel_pred12 = blk_uv_num[2]?dc_v:dc_u;	pixel_pred13 = blk_uv_num[2]?dc_v:dc_u;
			pixel_pred20 = blk_uv_num[2]?dc_v:dc_u;	pixel_pred21 = blk_uv_num[2]?dc_v:dc_u;
			pixel_pred22 = blk_uv_num[2]?dc_v:dc_u;	pixel_pred23 = blk_uv_num[2]?dc_v:dc_u;
			pixel_pred30 = blk_uv_num[2]?dc_v:dc_u;	pixel_pred31 = blk_uv_num[2]?dc_v:dc_u;
			pixel_pred32 = blk_uv_num[2]?dc_v:dc_u;	pixel_pred33 = blk_uv_num[2]?dc_v:dc_u;			
		end
		INTRA16x16_V, CHROMA_V:
			case(blk16x16_num_h)
				2'b00 : begin
					pixel_pred00 = used_pixel_ref00_t;	pixel_pred01 = used_pixel_ref01_t;
					pixel_pred02 = used_pixel_ref02_t;	pixel_pred03 = used_pixel_ref03_t;
					pixel_pred10 = used_pixel_ref00_t;	pixel_pred11 = used_pixel_ref01_t;
					pixel_pred12 = used_pixel_ref02_t;	pixel_pred13 = used_pixel_ref03_t;
					pixel_pred20 = used_pixel_ref00_t;	pixel_pred21 = used_pixel_ref01_t;
					pixel_pred22 = used_pixel_ref02_t;	pixel_pred23 = used_pixel_ref03_t;
					pixel_pred30 = used_pixel_ref00_t;	pixel_pred31 = used_pixel_ref01_t;
					pixel_pred32 = used_pixel_ref02_t;	pixel_pred33 = used_pixel_ref03_t;
				end
				2'b01 : begin
					pixel_pred00 = used_pixel_ref04_t;	pixel_pred01 = used_pixel_ref05_t;
					pixel_pred02 = used_pixel_ref06_t;	pixel_pred03 = used_pixel_ref07_t;
					pixel_pred10 = used_pixel_ref04_t;	pixel_pred11 = used_pixel_ref05_t;
					pixel_pred12 = used_pixel_ref06_t;	pixel_pred13 = used_pixel_ref07_t;
					pixel_pred20 = used_pixel_ref04_t;	pixel_pred21 = used_pixel_ref05_t;
					pixel_pred22 = used_pixel_ref06_t;	pixel_pred23 = used_pixel_ref07_t;
					pixel_pred30 = used_pixel_ref04_t;	pixel_pred31 = used_pixel_ref05_t;
					pixel_pred32 = used_pixel_ref06_t;	pixel_pred33 = used_pixel_ref07_t;
				end
				2'b10 : begin
					pixel_pred00 = used_pixel_ref08_t;	pixel_pred01 = used_pixel_ref09_t;
					pixel_pred02 = used_pixel_ref10_t;	pixel_pred03 = used_pixel_ref11_t;
					pixel_pred10 = used_pixel_ref08_t;	pixel_pred11 = used_pixel_ref09_t;
					pixel_pred12 = used_pixel_ref10_t;	pixel_pred13 = used_pixel_ref11_t;
					pixel_pred20 = used_pixel_ref08_t;	pixel_pred21 = used_pixel_ref09_t;
					pixel_pred22 = used_pixel_ref10_t;	pixel_pred23 = used_pixel_ref11_t;
					pixel_pred30 = used_pixel_ref08_t;	pixel_pred31 = used_pixel_ref09_t;
					pixel_pred32 = used_pixel_ref10_t;	pixel_pred33 = used_pixel_ref11_t;
				end
				2'b11 : begin
					pixel_pred00 = used_pixel_ref12_t;	pixel_pred01 = used_pixel_ref13_t;
					pixel_pred02 = used_pixel_ref14_t;	pixel_pred03 = used_pixel_ref15_t;
					pixel_pred10 = used_pixel_ref12_t;	pixel_pred11 = used_pixel_ref13_t;
					pixel_pred12 = used_pixel_ref14_t;	pixel_pred13 = used_pixel_ref15_t;
					pixel_pred20 = used_pixel_ref12_t;	pixel_pred21 = used_pixel_ref13_t;
					pixel_pred22 = used_pixel_ref14_t;	pixel_pred23 = used_pixel_ref15_t;
					pixel_pred30 = used_pixel_ref12_t;	pixel_pred31 = used_pixel_ref13_t;
					pixel_pred32 = used_pixel_ref14_t;	pixel_pred33 = used_pixel_ref15_t;
				end
			endcase		
		INTRA16x16_H, CHROMA_H: 
			case(blk16x16_num_v)
				2'b00 : begin
					pixel_pred00 = used_pixel_ref00_l;	pixel_pred01 = used_pixel_ref00_l;
					pixel_pred02 = used_pixel_ref00_l;	pixel_pred03 = used_pixel_ref00_l;
					pixel_pred10 = used_pixel_ref01_l;	pixel_pred11 = used_pixel_ref01_l;
					pixel_pred12 = used_pixel_ref01_l;	pixel_pred13 = used_pixel_ref01_l;
					pixel_pred20 = used_pixel_ref02_l;	pixel_pred21 = used_pixel_ref02_l;
					pixel_pred22 = used_pixel_ref02_l;	pixel_pred23 = used_pixel_ref02_l;
					pixel_pred30 = used_pixel_ref03_l;	pixel_pred31 = used_pixel_ref03_l;
					pixel_pred32 = used_pixel_ref03_l;	pixel_pred33 = used_pixel_ref03_l;
				end
				2'b01 : begin
					pixel_pred00 = used_pixel_ref04_l;	pixel_pred01 = used_pixel_ref04_l;
					pixel_pred02 = used_pixel_ref04_l;	pixel_pred03 = used_pixel_ref04_l;
					pixel_pred10 = used_pixel_ref05_l;	pixel_pred11 = used_pixel_ref05_l;
					pixel_pred12 = used_pixel_ref05_l;	pixel_pred13 = used_pixel_ref05_l;
					pixel_pred20 = used_pixel_ref06_l;	pixel_pred21 = used_pixel_ref06_l;
					pixel_pred22 = used_pixel_ref06_l;	pixel_pred23 = used_pixel_ref06_l;
					pixel_pred30 = used_pixel_ref07_l;	pixel_pred31 = used_pixel_ref07_l;
					pixel_pred32 = used_pixel_ref07_l;	pixel_pred33 = used_pixel_ref07_l;
				end
				2'b10 : begin
					pixel_pred00 = used_pixel_ref08_l;	pixel_pred01 = used_pixel_ref08_l;
					pixel_pred02 = used_pixel_ref08_l;	pixel_pred03 = used_pixel_ref08_l;
					pixel_pred10 = used_pixel_ref09_l;	pixel_pred11 = used_pixel_ref09_l;
					pixel_pred12 = used_pixel_ref09_l;	pixel_pred13 = used_pixel_ref09_l;
					pixel_pred20 = used_pixel_ref10_l;	pixel_pred21 = used_pixel_ref10_l;
					pixel_pred22 = used_pixel_ref10_l;	pixel_pred23 = used_pixel_ref10_l;
					pixel_pred30 = used_pixel_ref11_l;	pixel_pred31 = used_pixel_ref11_l;
					pixel_pred32 = used_pixel_ref11_l;	pixel_pred33 = used_pixel_ref11_l;
				end
				2'b11 : begin
					pixel_pred00 = used_pixel_ref12_l;	pixel_pred01 = used_pixel_ref12_l;
					pixel_pred02 = used_pixel_ref12_l;	pixel_pred03 = used_pixel_ref12_l;
					pixel_pred10 = used_pixel_ref13_l;	pixel_pred11 = used_pixel_ref13_l;
					pixel_pred12 = used_pixel_ref13_l;	pixel_pred13 = used_pixel_ref13_l;
					pixel_pred20 = used_pixel_ref14_l;	pixel_pred21 = used_pixel_ref14_l;
					pixel_pred22 = used_pixel_ref14_l;	pixel_pred23 = used_pixel_ref14_l;
					pixel_pred30 = used_pixel_ref15_l;	pixel_pred31 = used_pixel_ref15_l;
					pixel_pred32 = used_pixel_ref15_l;	pixel_pred33 = used_pixel_ref15_l;
				end
			endcase
		INTRA16x16_PLANE, CHROMA_PLANE : begin
				pixel_pred00 = pixel_plane00;	pixel_pred01 = pixel_plane01;
				pixel_pred02 = pixel_plane02;	pixel_pred03 = pixel_plane03;
				pixel_pred10 = pixel_plane10;	pixel_pred11 = pixel_plane11;
				pixel_pred12 = pixel_plane12;	pixel_pred13 = pixel_plane13;
				pixel_pred20 = pixel_plane20;	pixel_pred21 = pixel_plane21;
				pixel_pred22 = pixel_plane22;	pixel_pred23 = pixel_plane23;
				pixel_pred30 = pixel_plane30;	pixel_pred31 = pixel_plane31;
				pixel_pred32 = pixel_plane32;	pixel_pred33 = pixel_plane33;
			end
		default : begin
			pixel_pred00 = 0;	pixel_pred01 = 0;
			pixel_pred02 = 0;	pixel_pred03 = 0;
			pixel_pred10 = 0;	pixel_pred11 = 0;
			pixel_pred12 = 0;	pixel_pred13 = 0;
			pixel_pred20 = 0;	pixel_pred21 = 0;
			pixel_pred22 = 0;	pixel_pred23 = 0;
			pixel_pred30 = 0;	pixel_pred31 = 0;
			pixel_pred32 = 0;	pixel_pred33 = 0;
		end
	endcase
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		pixel_pre00 <= 'd0;
		pixel_pre01 <= 'd0;
		pixel_pre02 <= 'd0;
		pixel_pre03 <= 'd0;
		pixel_pre10 <= 'd0;
		pixel_pre11 <= 'd0;
		pixel_pre12 <= 'd0;
		pixel_pre13 <= 'd0;
		pixel_pre20 <= 'd0;
		pixel_pre21 <= 'd0;
		pixel_pre22 <= 'd0;
		pixel_pre23 <= 'd0;
		pixel_pre30 <= 'd0;
		pixel_pre31 <= 'd0;
		pixel_pre32 <= 'd0;
		pixel_pre33 <= 'd0;	
	end
	else begin
		pixel_pre00 <= pixel_pred00;
		pixel_pre01 <= pixel_pred01;
		pixel_pre02 <= pixel_pred02;
		pixel_pre03 <= pixel_pred03;
		pixel_pre10 <= pixel_pred10;
		pixel_pre11 <= pixel_pred11;
		pixel_pre12 <= pixel_pred12;
		pixel_pre13 <= pixel_pred13;
		pixel_pre20 <= pixel_pred20;
		pixel_pre21 <= pixel_pred21;
		pixel_pre22 <= pixel_pred22;
		pixel_pre23 <= pixel_pred23;
        pixel_pre30 <= pixel_pred30;
        pixel_pre31 <= pixel_pred31;
        pixel_pre32 <= pixel_pred32;
        pixel_pre33 <= pixel_pred33;
	end 
end     

endmodule