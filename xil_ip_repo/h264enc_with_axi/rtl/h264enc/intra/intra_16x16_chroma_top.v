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
// Filename       : intra_16x16_chroma_top.v
// Author         : Yibo FAN	
// Created        : 2012-12-28
// Description    : intra_16x16_chroma_top
//                  Processing Luma_16x16 and Chroma by 4x4 block
// 
//------------------------------------------------------------------- 
`include "enc_defines.v"
`define COST_16x16   1048575

module intra_16x16_chroma_top(
				clk,
				rst_n,		
					
				mb_x_total,
				mb_x,
				mb_y,
								
				pred_start_i    	,
				pred_done_o         ,
				i16x16_rec_start_i  ,
				i16x16_rec_done_o   ,
				chroma_rec_start_i  ,
				chroma_rec_done_o   ,
				
				i16x16_mode_o,
				chroma_mode_o,
				luma_16x16_cost_o,
				chroma_8x8_cost_o,				      
				luma_16x16_sel_o,  
				chroma_8x8_sel_o,
				
				tq_i16x16_en_o, 
				tq_chroma_en_o,
				tq_i16x16_num_o, 
				tq_chroma_num_o,
				tq_i16x16_val_i,		
				tq_i16x16_num_i,
				tq_cb_val_i,
				tq_cb_num_i,
				tq_cr_val_i,
				tq_cr_num_i,				
				
				ref00_tl_y,				
				ref00_t_y , ref01_t_y, ref02_t_y, ref03_t_y,
				ref04_t_y , ref05_t_y, ref06_t_y, ref07_t_y,
				ref08_t_y , ref09_t_y, ref10_t_y, ref11_t_y,
				ref12_t_y , ref13_t_y, ref14_t_y, ref15_t_y,				
				ref00_l_y , ref01_l_y, ref02_l_y, ref03_l_y,
				ref04_l_y , ref05_l_y, ref06_l_y, ref07_l_y,
				ref08_l_y , ref09_l_y, ref10_l_y, ref11_l_y,
				ref12_l_y , ref13_l_y, ref14_l_y, ref15_l_y,				
				
				ref00_tl_u,                                                      
				ref00_t_u , ref01_t_u, ref02_t_u, ref03_t_u,
				ref04_t_u , ref05_t_u, ref06_t_u, ref07_t_u,
				ref00_l_u , ref01_l_u, ref02_l_u, ref03_l_u,
				ref04_l_u , ref05_l_u, ref06_l_u, ref07_l_u,
				                                            
				ref00_tl_v,                                 
				ref00_t_v , ref01_t_v, ref02_t_v, ref03_t_v,
				ref04_t_v , ref05_t_v, ref06_t_v, ref07_t_v,
				ref00_l_v , ref01_l_v, ref02_l_v, ref03_l_v,
				ref04_l_v , ref05_l_v, ref06_l_v, ref07_l_v,
				
				ori00_y , ori01_y , ori02_y , ori03_y , 
				ori10_y , ori11_y , ori12_y , ori13_y , 
				ori20_y , ori21_y , ori22_y , ori23_y , 
				ori30_y , ori31_y , ori32_y , ori33_y , 
				                                                                      
				ori00_uv, ori01_uv, ori02_uv, ori03_uv,             
				ori10_uv, ori11_uv, ori12_uv, ori13_uv,             
				ori20_uv, ori21_uv, ori22_uv, ori23_uv,             
				ori30_uv, ori31_uv, ori32_uv, ori33_uv,              
				
				tq_pre00, tq_pre01, tq_pre02, tq_pre03,
				tq_pre10, tq_pre11, tq_pre12, tq_pre13,
				tq_pre20, tq_pre21, tq_pre22, tq_pre23,
				tq_pre30, tq_pre31, tq_pre32, tq_pre33,
				                                                 
				tq_res00, tq_res01, tq_res02, tq_res03,    
				tq_res10, tq_res11, tq_res12, tq_res13,    
				tq_res20, tq_res21, tq_res22, tq_res23,    
				tq_res30, tq_res31, tq_res32, tq_res33
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input						clk;
input						rst_n;	
// sys settings					
input [`PIC_W_MB_LEN-1:0]	mb_x_total;
input [`PIC_W_MB_LEN-1:0]	mb_x;
input [`PIC_H_MB_LEN-1:0] 	mb_y;
// Intra_top control IF								
input						pred_start_i;     
output						pred_done_o;
input						i16x16_rec_start_i;  
output						i16x16_rec_done_o ;  
input						chroma_rec_start_i;  
output						chroma_rec_done_o ; 
output [1:0]				i16x16_mode_o;
output [1:0]				chroma_mode_o; 
output [`BIT_DEPTH+11:0]	luma_16x16_cost_o,
							chroma_8x8_cost_o;							     
output [3:0]				luma_16x16_sel_o; 
output [2:0]				chroma_8x8_sel_o;
// TQ module IF
output						tq_i16x16_en_o;
output						tq_chroma_en_o;
output [3:0]				tq_i16x16_num_o;
output [2:0] 				tq_chroma_num_o;
input						tq_i16x16_val_i;
input  [3:0]				tq_i16x16_num_i;
input 						tq_cb_val_i    ;
input  [3:0]				tq_cb_num_i    ;
input 						tq_cr_val_i    ;
input  [3:0]				tq_cr_num_i    ;

// input top and left reference pixels				
input	[`BIT_DEPTH-1:0]	ref00_tl_y,				
							ref00_t_y , ref01_t_y, ref02_t_y, ref03_t_y,
							ref04_t_y , ref05_t_y, ref06_t_y, ref07_t_y,
							ref08_t_y , ref09_t_y, ref10_t_y, ref11_t_y,
							ref12_t_y , ref13_t_y, ref14_t_y, ref15_t_y,				
							ref00_l_y , ref01_l_y, ref02_l_y, ref03_l_y,
							ref04_l_y , ref05_l_y, ref06_l_y, ref07_l_y,
							ref08_l_y , ref09_l_y, ref10_l_y, ref11_l_y,
							ref12_l_y , ref13_l_y, ref14_l_y, ref15_l_y,								
							
							ref00_tl_u,                                                      
							ref00_t_u , ref01_t_u, ref02_t_u, ref03_t_u,
							ref04_t_u , ref05_t_u, ref06_t_u, ref07_t_u,
							ref00_l_u , ref01_l_u, ref02_l_u, ref03_l_u,
							ref04_l_u , ref05_l_u, ref06_l_u, ref07_l_u,				                                            
							
							ref00_tl_v,                                 
							ref00_t_v , ref01_t_v, ref02_t_v, ref03_t_v,
							ref04_t_v , ref05_t_v, ref06_t_v, ref07_t_v,
							ref00_l_v , ref01_l_v, ref02_l_v, ref03_l_v,
							ref04_l_v , ref05_l_v, ref06_l_v, ref07_l_v;				
// input original 4x4 pixels							
input	[`BIT_DEPTH-1:0]	ori00_y , ori01_y , ori02_y , ori03_y , 
							ori10_y , ori11_y , ori12_y , ori13_y , 
							ori20_y , ori21_y , ori22_y , ori23_y , 
							ori30_y , ori31_y , ori32_y , ori33_y , 
				                                                                      
							ori00_uv, ori01_uv, ori02_uv, ori03_uv,             
							ori10_uv, ori11_uv, ori12_uv, ori13_uv,             
							ori20_uv, ori21_uv, ori22_uv, ori23_uv,             
							ori30_uv, ori31_uv, ori32_uv, ori33_uv;              
// output tq predicted & residual pixels							
output	[`BIT_DEPTH-1:0]	tq_pre00, tq_pre01, tq_pre02, tq_pre03,
							tq_pre10, tq_pre11, tq_pre12, tq_pre13,
							tq_pre20, tq_pre21, tq_pre22, tq_pre23,
							tq_pre30, tq_pre31, tq_pre32, tq_pre33;
							                                                 
output	[`BIT_DEPTH:0]		tq_res00, tq_res01, tq_res02, tq_res03,    
							tq_res10, tq_res11, tq_res12, tq_res13,    
							tq_res20, tq_res21, tq_res22, tq_res23,    
							tq_res30, tq_res31, tq_res32, tq_res33; 

// ********************************************
//                                             
//    Signal DECLARATION               
//                                             
// ********************************************
wire   	[`BIT_DEPTH-1:0]	plane00, plane01, plane02, plane03,
                           	plane10, plane11, plane12, plane13,
                           	plane20, plane21, plane22, plane23,
                           	plane30, plane31, plane32, plane33,
                           	dc_y, 	 dc_u, 	  dc_v;

wire   	[`BIT_DEPTH:0]		tq_res00, tq_res01, tq_res02, tq_res03,
							tq_res10, tq_res11, tq_res12, tq_res13,
							tq_res20, tq_res21, tq_res22, tq_res23,
							tq_res30, tq_res31, tq_res32, tq_res33;

wire [`BIT_DEPTH+4:0] 		ht_coef00, ht_coef01, ht_coef02, ht_coef03,
					 		ht_coef10, ht_coef11, ht_coef12, ht_coef13,
					 		ht_coef20, ht_coef21, ht_coef22, ht_coef23,
					 		ht_coef30, ht_coef31, ht_coef32, ht_coef33;
					 		 
reg [`BIT_DEPTH+3:0] 		ht_abs00, ht_abs01, ht_abs02, ht_abs03,
							ht_abs10, ht_abs11, ht_abs12, ht_abs13,
							ht_abs20, ht_abs21, ht_abs22, ht_abs23,
							ht_abs30, ht_abs31, ht_abs32, ht_abs33;

reg	[`BIT_DEPTH-1:0]		rec00_t_y , rec01_t_y, rec02_t_y, rec03_t_y,
							rec04_t_y , rec05_t_y, rec06_t_y, rec07_t_y,
							rec08_t_y , rec09_t_y, rec10_t_y, rec11_t_y,
							rec12_t_y , rec13_t_y, rec14_t_y, rec15_t_y,
							rec00_l_y , rec01_l_y, rec02_l_y, rec03_l_y,
							rec04_l_y , rec05_l_y, rec06_l_y, rec07_l_y,
							rec08_l_y , rec09_l_y, rec10_l_y, rec11_l_y,
							rec12_l_y , rec13_l_y, rec14_l_y, rec15_l_y,
							rec00_t_u , rec01_t_u, rec02_t_u, rec03_t_u,
							rec04_t_u , rec05_t_u, rec06_t_u, rec07_t_u,
							rec00_l_u , rec01_l_u, rec02_l_u, rec03_l_u,
							rec04_l_u , rec05_l_u, rec06_l_u, rec07_l_u,
							rec00_t_v , rec01_t_v, rec02_t_v, rec03_t_v,
							rec04_t_v , rec05_t_v, rec06_t_v, rec07_t_v,
							rec00_l_v , rec01_l_v, rec02_l_v, rec03_l_v,
							rec04_l_v , rec05_l_v, rec06_l_v, rec07_l_v;

wire [`BIT_DEPTH+7:0] 		cost4x4;

wire [3:0]					curr_mode;

wire						mb_avail_t, mb_avail_l;
wire						intra16x16_start, chroma_start;
wire [3:0]					blk16x16_num ;
wire [2:0]					blk_uv_num   ;

// ********************************************
//                                             
//    Logic DECLARATION               
//                                             
// ********************************************
//-----------------------------------------------
//		Outputs
//-----------------------------------------------
assign luma_16x16_sel_o = blk16x16_num ;
assign chroma_8x8_sel_o = blk_uv_num   ;

//-----------------------------------------------
//		PE Modules
//-----------------------------------------------
intra_16x16_chroma_ctrl u_intra_ctrl(
				.clk				( clk 				),
				.rst_n				( rst_n 			),		
 				.mb_x_total			( mb_x_total		),
				.mb_x				( mb_x		    	),
				.mb_y				( mb_y		    	),							
				.pred_start_i		( pred_start_i 		),     
				.pred_done_o		( pred_done_o		), 
				.i16x16_rec_start_i	( i16x16_rec_start_i),
				.i16x16_rec_done_o 	( i16x16_rec_done_o ),
				.chroma_rec_start_i	( chroma_rec_start_i),
				.chroma_rec_done_o 	( chroma_rec_done_o ),
				.i16x16_mode_o		( i16x16_mode_o		),
				.chroma_mode_o		( chroma_mode_o		),
				.cost_luma			( luma_16x16_cost_o ),
				.cost_chroma		( chroma_8x8_cost_o ),
				.mb_avail_t			( mb_avail_t		),
				.mb_avail_l			( mb_avail_l        ),
				.pred_i16x16_start  ( intra16x16_start	),
				.pred_chroma_start  ( chroma_start	 	),
				.i16x16_num			( blk16x16_num  	),               
				.chroma_num			( blk_uv_num  		),	           
				.cost4x4			( cost4x4			), 
				.pred_mode      	( curr_mode			),                
				.tq_i16x16_start_o	( tq_i16x16_en_o	),
				.tq_chroma_start_o	( tq_chroma_en_o	),
				.tq_i16x16_num_o	( tq_i16x16_num_o   ),
				.tq_chroma_num_o  	( tq_chroma_num_o   ),
				.tq_i16x16_val_i    ( tq_i16x16_val_i   ),
				.tq_i16x16_num_i    ( tq_i16x16_num_i   ),
				.tq_cb_val_i        ( tq_cb_val_i       ),
				.tq_cb_num_i        ( tq_cb_num_i       ),
				.tq_cr_val_i        ( tq_cr_val_i       ),
				.tq_cr_num_i        ( tq_cr_num_i       )
				
);

intra_16x16_chroma_pe u_intra_pe(
				.clk          		( clk          		), 
				.rst_n        		( rst_n        		),    		
				
				.blk16x16_num 		( blk16x16_num 		),
				.blk_uv_num   		( blk_uv_num   		),				
				.curr_mode    		( curr_mode    		),

				.pixel_ref00_tl_u( ref00_tl_u ),
				.pixel_ref00_t_u ( ref00_t_u  ), .pixel_ref01_t_u( ref01_t_u ),	.pixel_ref02_t_u( ref02_t_u ), .pixel_ref03_t_u( ref03_t_u ),
				.pixel_ref04_t_u ( ref04_t_u  ), .pixel_ref05_t_u( ref05_t_u ),	.pixel_ref06_t_u( ref06_t_u ), .pixel_ref07_t_u( ref07_t_u ),				
				.pixel_ref00_l_u ( ref00_l_u  ), .pixel_ref01_l_u( ref01_l_u ), .pixel_ref02_l_u( ref02_l_u ), .pixel_ref03_l_u( ref03_l_u ),
				.pixel_ref04_l_u ( ref04_l_u  ), .pixel_ref05_l_u( ref05_l_u ),	.pixel_ref06_l_u( ref06_l_u ), .pixel_ref07_l_u( ref07_l_u ),
				
				.pixel_ref00_tl_v( ref00_tl_v ),
				.pixel_ref00_t_v ( ref00_t_v  ), .pixel_ref01_t_v( ref01_t_v ),	.pixel_ref02_t_v( ref02_t_v ), .pixel_ref03_t_v( ref03_t_v ),
				.pixel_ref04_t_v ( ref04_t_v  ), .pixel_ref05_t_v( ref05_t_v ),	.pixel_ref06_t_v( ref06_t_v ), .pixel_ref07_t_v( ref07_t_v ),				
				.pixel_ref00_l_v ( ref00_l_v  ), .pixel_ref01_l_v( ref01_l_v ),	.pixel_ref02_l_v( ref02_l_v ), .pixel_ref03_l_v( ref03_l_v ),
				.pixel_ref04_l_v ( ref04_l_v  ), .pixel_ref05_l_v( ref05_l_v ),	.pixel_ref06_l_v( ref06_l_v ), .pixel_ref07_l_v( ref07_l_v ),
				
				.pixel_ref00_tl( ref00_tl_y ),
				.pixel_ref00_t ( ref00_t_y ), .pixel_ref01_t( ref01_t_y ), .pixel_ref02_t( ref02_t_y ), .pixel_ref03_t( ref03_t_y ),
				.pixel_ref04_t ( ref04_t_y ), .pixel_ref05_t( ref05_t_y ), .pixel_ref06_t( ref06_t_y ), .pixel_ref07_t( ref07_t_y ),
				.pixel_ref08_t ( ref08_t_y ), .pixel_ref09_t( ref09_t_y ), .pixel_ref10_t( ref10_t_y ), .pixel_ref11_t( ref11_t_y ),
				.pixel_ref12_t ( ref12_t_y ), .pixel_ref13_t( ref13_t_y ), .pixel_ref14_t( ref14_t_y ), .pixel_ref15_t( ref15_t_y ),				
				.pixel_ref00_l ( ref00_l_y ), .pixel_ref01_l( ref01_l_y ), .pixel_ref02_l( ref02_l_y ), .pixel_ref03_l( ref03_l_y ),
				.pixel_ref04_l ( ref04_l_y ), .pixel_ref05_l( ref05_l_y ), .pixel_ref06_l( ref06_l_y ), .pixel_ref07_l( ref07_l_y ),
				.pixel_ref08_l ( ref08_l_y ), .pixel_ref09_l( ref09_l_y ), .pixel_ref10_l( ref10_l_y ), .pixel_ref11_l( ref11_l_y ),
				.pixel_ref12_l ( ref12_l_y ), .pixel_ref13_l( ref13_l_y ), .pixel_ref14_l( ref14_l_y ), .pixel_ref15_l( ref15_l_y ),
				
				.pixel_plane00 ( plane00 ), .pixel_plane01( plane01 ), .pixel_plane02( plane02 ), .pixel_plane03( plane03 ),
				.pixel_plane10 ( plane10 ), .pixel_plane11( plane11 ), .pixel_plane12( plane12 ), .pixel_plane13( plane13 ),
				.pixel_plane20 ( plane20 ), .pixel_plane21( plane21 ), .pixel_plane22( plane22 ), .pixel_plane23( plane23 ),
				.pixel_plane30 ( plane30 ), .pixel_plane31( plane31 ), .pixel_plane32( plane32 ), .pixel_plane33( plane33 ), 
				
				.dc_y( dc_y ), .dc_u( dc_u ), .dc_v( dc_v ),
				
				.pixel_ori00 	( ori00_y  ), .pixel_ori01 	  ( ori01_y  ), .pixel_ori02 	( ori02_y  ), .pixel_ori03    ( ori03_y  ),
				.pixel_ori10 	( ori10_y  ), .pixel_ori11 	  ( ori11_y  ), .pixel_ori12 	( ori12_y  ), .pixel_ori13    ( ori13_y  ),
				.pixel_ori20 	( ori20_y  ), .pixel_ori21 	  ( ori21_y  ), .pixel_ori22 	( ori22_y  ), .pixel_ori23    ( ori23_y  ),				
				.pixel_ori30 	( ori30_y  ), .pixel_ori31 	  ( ori31_y  ), .pixel_ori32 	( ori32_y  ), .pixel_ori33    ( ori33_y  ),
				.pixel_ori00_uv ( ori00_uv ), .pixel_ori01_uv ( ori01_uv ), .pixel_ori02_uv ( ori02_uv ), .pixel_ori03_uv ( ori03_uv ),
				.pixel_ori10_uv ( ori10_uv ), .pixel_ori11_uv ( ori11_uv ), .pixel_ori12_uv ( ori12_uv ), .pixel_ori13_uv ( ori13_uv ),
				.pixel_ori20_uv ( ori20_uv ), .pixel_ori21_uv ( ori21_uv ), .pixel_ori22_uv ( ori22_uv ), .pixel_ori23_uv ( ori23_uv ),				
				.pixel_ori30_uv ( ori30_uv ), .pixel_ori31_uv ( ori31_uv ), .pixel_ori32_uv ( ori32_uv ), .pixel_ori33_uv ( ori33_uv ),
				
				.pixel_pre00 ( tq_pre00 ), .pixel_pre01 ( tq_pre01 ), .pixel_pre02 ( tq_pre02 ), .pixel_pre03 ( tq_pre03 ),
				.pixel_pre10 ( tq_pre10 ), .pixel_pre11 ( tq_pre11 ), .pixel_pre12 ( tq_pre12 ), .pixel_pre13 ( tq_pre13 ),
				.pixel_pre20 ( tq_pre20 ), .pixel_pre21 ( tq_pre21 ), .pixel_pre22 ( tq_pre22 ), .pixel_pre23 ( tq_pre23 ),
				.pixel_pre30 ( tq_pre30 ), .pixel_pre31 ( tq_pre31 ), .pixel_pre32 ( tq_pre32 ), .pixel_pre33 ( tq_pre33 ),
				
				.pixel_res00 ( tq_res00 ), .pixel_res01 ( tq_res01 ), .pixel_res02 ( tq_res02 ), .pixel_res03 ( tq_res03 ),
				.pixel_res10 ( tq_res10 ), .pixel_res11 ( tq_res11 ), .pixel_res12 ( tq_res12 ), .pixel_res13 ( tq_res13 ),
				.pixel_res20 ( tq_res20 ), .pixel_res21 ( tq_res21 ), .pixel_res22 ( tq_res22 ), .pixel_res23 ( tq_res23 ),
				.pixel_res30 ( tq_res30 ), .pixel_res31 ( tq_res31 ), .pixel_res32 ( tq_res32 ), .pixel_res33 ( tq_res33 )
);

intra_16x16_chroma_dc u_intra_dc(
				.clk          		( clk          		),
				.rst_n        		( rst_n        		),
				.mb_avail_t     	( mb_avail_t   		),
				.mb_avail_l     	( mb_avail_l   		),
				.blk16x16_num 		( blk16x16_num 		),
				.blk_uv_num   		( blk_uv_num   		),
				.pred_start			( pred_start_i		),
				.pred_done			( pred_done_o		),
				.curr_mode    		( curr_mode    		),
				
				.dc_y				( dc_y				),
				.dc_u				( dc_u				),
				.dc_v				( dc_v				),
				
				.pixel_ref00_tl_u( ref00_tl_u ),
				.pixel_ref00_t_u ( ref00_t_u  ), .pixel_ref01_t_u( ref01_t_u ), .pixel_ref02_t_u ( ref02_t_u  ), .pixel_ref03_t_u( ref03_t_u ),
				.pixel_ref04_t_u ( ref04_t_u  ), .pixel_ref05_t_u( ref05_t_u ), .pixel_ref06_t_u ( ref06_t_u  ), .pixel_ref07_t_u( ref07_t_u ),				
				.pixel_ref00_l_u ( ref00_l_u  ), .pixel_ref01_l_u( ref01_l_u ),	.pixel_ref02_l_u ( ref02_l_u  ), .pixel_ref03_l_u( ref03_l_u ),
				.pixel_ref04_l_u ( ref04_l_u  ), .pixel_ref05_l_u( ref05_l_u ),	.pixel_ref06_l_u ( ref06_l_u  ), .pixel_ref07_l_u( ref07_l_u ),
				
				.pixel_ref00_tl_v( ref00_tl_v ),
				.pixel_ref00_t_v ( ref00_t_v  ), .pixel_ref01_t_v( ref01_t_v ),	.pixel_ref02_t_v ( ref02_t_v  ), .pixel_ref03_t_v( ref03_t_v ),
				.pixel_ref04_t_v ( ref04_t_v  ), .pixel_ref05_t_v( ref05_t_v ),	.pixel_ref06_t_v ( ref06_t_v  ), .pixel_ref07_t_v( ref07_t_v ),				
				.pixel_ref00_l_v ( ref00_l_v  ), .pixel_ref01_l_v( ref01_l_v ),	.pixel_ref02_l_v ( ref02_l_v  ), .pixel_ref03_l_v( ref03_l_v ),
				.pixel_ref04_l_v ( ref04_l_v  ), .pixel_ref05_l_v( ref05_l_v ),	.pixel_ref06_l_v ( ref06_l_v  ), .pixel_ref07_l_v( ref07_l_v ),
				
				.pixel_ref00_tl( ref00_tl_y ),
				.pixel_ref00_t ( ref00_t_y ), .pixel_ref01_t( ref01_t_y ), .pixel_ref02_t ( ref02_t_y ), .pixel_ref03_t( ref03_t_y ),
				.pixel_ref04_t ( ref04_t_y ), .pixel_ref05_t( ref05_t_y ), .pixel_ref06_t ( ref06_t_y ), .pixel_ref07_t( ref07_t_y ),
				.pixel_ref08_t ( ref08_t_y ), .pixel_ref09_t( ref09_t_y ), .pixel_ref10_t ( ref10_t_y ), .pixel_ref11_t( ref11_t_y ),
				.pixel_ref12_t ( ref12_t_y ), .pixel_ref13_t( ref13_t_y ), .pixel_ref14_t ( ref14_t_y ), .pixel_ref15_t( ref15_t_y ),				
				.pixel_ref00_l ( ref00_l_y ), .pixel_ref01_l( ref01_l_y ), .pixel_ref02_l ( ref02_l_y ), .pixel_ref03_l( ref03_l_y ),
				.pixel_ref04_l ( ref04_l_y ), .pixel_ref05_l( ref05_l_y ), .pixel_ref06_l ( ref06_l_y ), .pixel_ref07_l( ref07_l_y ),
				.pixel_ref08_l ( ref08_l_y ), .pixel_ref09_l( ref09_l_y ), .pixel_ref10_l ( ref10_l_y ), .pixel_ref11_l( ref11_l_y ),
				.pixel_ref12_l ( ref12_l_y ), .pixel_ref13_l( ref13_l_y ), .pixel_ref14_l ( ref14_l_y ), .pixel_ref15_l( ref15_l_y )	
);

intra_16x16_chroma_plane u_intra_plane(
				.clk          		( clk          		),
				.rst_n        		( rst_n        		),
				.mb_avail_t      	( mb_avail_t  		),
				.mb_avail_l      	( mb_avail_l  		),
				.blk16x16_num 		( blk16x16_num 		),
				.blk_uv_num   		( blk_uv_num   		),
				.curr_mode    		( curr_mode    		),
				.intra16x16_start	( intra16x16_start	),
				.chroma_start    	( chroma_start		),
				
				.pixel_ref00_tl_u( ref00_tl_u ),
				.pixel_ref00_t_u ( ref00_t_u  ), .pixel_ref01_t_u( ref01_t_u ),	.pixel_ref02_t_u ( ref02_t_u  ), .pixel_ref03_t_u( ref03_t_u ),
				.pixel_ref04_t_u ( ref04_t_u  ), .pixel_ref05_t_u( ref05_t_u ),	.pixel_ref06_t_u ( ref06_t_u  ), .pixel_ref07_t_u( ref07_t_u ),				
				.pixel_ref00_l_u ( ref00_l_u  ), .pixel_ref01_l_u( ref01_l_u ),	.pixel_ref02_l_u ( ref02_l_u  ), .pixel_ref03_l_u( ref03_l_u ),
				.pixel_ref04_l_u ( ref04_l_u  ), .pixel_ref05_l_u( ref05_l_u ),	.pixel_ref06_l_u ( ref06_l_u  ), .pixel_ref07_l_u( ref07_l_u ),
				
				.pixel_ref00_tl_v( ref00_tl_v ),
				.pixel_ref00_t_v ( ref00_t_v  ), .pixel_ref01_t_v( ref01_t_v ),	.pixel_ref02_t_v ( ref02_t_v  ), .pixel_ref03_t_v( ref03_t_v ),
				.pixel_ref04_t_v ( ref04_t_v  ), .pixel_ref05_t_v( ref05_t_v ),	.pixel_ref06_t_v ( ref06_t_v  ), .pixel_ref07_t_v( ref07_t_v ),				
				.pixel_ref00_l_v ( ref00_l_v  ), .pixel_ref01_l_v( ref01_l_v ),	.pixel_ref02_l_v ( ref02_l_v  ), .pixel_ref03_l_v( ref03_l_v ),
				.pixel_ref04_l_v ( ref04_l_v  ), .pixel_ref05_l_v( ref05_l_v ),	.pixel_ref06_l_v ( ref06_l_v  ), .pixel_ref07_l_v( ref07_l_v ),
				
				.pixel_ref00_tl( ref00_tl_y ),
				.pixel_ref00_t ( ref00_t_y ), .pixel_ref01_t( ref01_t_y ), .pixel_ref02_t ( ref02_t_y ), .pixel_ref03_t( ref03_t_y ),
				.pixel_ref04_t ( ref04_t_y ), .pixel_ref05_t( ref05_t_y ), .pixel_ref06_t ( ref06_t_y ), .pixel_ref07_t( ref07_t_y ),
				.pixel_ref08_t ( ref08_t_y ), .pixel_ref09_t( ref09_t_y ), .pixel_ref10_t ( ref10_t_y ), .pixel_ref11_t( ref11_t_y ),
				.pixel_ref12_t ( ref12_t_y ), .pixel_ref13_t( ref13_t_y ), .pixel_ref14_t ( ref14_t_y ), .pixel_ref15_t( ref15_t_y ),				
				.pixel_ref00_l ( ref00_l_y ), .pixel_ref01_l( ref01_l_y ), .pixel_ref02_l ( ref02_l_y ), .pixel_ref03_l( ref03_l_y ),
				.pixel_ref04_l ( ref04_l_y ), .pixel_ref05_l( ref05_l_y ), .pixel_ref06_l ( ref06_l_y ), .pixel_ref07_l( ref07_l_y ),
				.pixel_ref08_l ( ref08_l_y ), .pixel_ref09_l( ref09_l_y ), .pixel_ref10_l ( ref10_l_y ), .pixel_ref11_l( ref11_l_y ),
				.pixel_ref12_l ( ref12_l_y ), .pixel_ref13_l( ref13_l_y ), .pixel_ref14_l ( ref14_l_y ), .pixel_ref15_l( ref15_l_y ),
				
				.pixel_plane00 ( plane00 ), .pixel_plane01( plane01 ), .pixel_plane02 ( plane02 ), .pixel_plane03( plane03 ),
				.pixel_plane10 ( plane10 ), .pixel_plane11( plane11 ), .pixel_plane12 ( plane12 ), .pixel_plane13( plane13 ),
				.pixel_plane20 ( plane20 ), .pixel_plane21( plane21 ), .pixel_plane22 ( plane22 ), .pixel_plane23( plane23 ),
				.pixel_plane30 ( plane30 ), .pixel_plane31( plane31 ), .pixel_plane32 ( plane32 ), .pixel_plane33( plane33 )
);

intra_hadamard4x4 u_intra16x16_hadamard4x4 (
				.ht_s00_i ( tq_res00  ), .ht_s01_i ( tq_res01  ), .ht_s02_i ( tq_res02  ), .ht_s03_i ( tq_res03  ),
				.ht_s10_i ( tq_res10  ), .ht_s11_i ( tq_res11  ), .ht_s12_i ( tq_res12  ), .ht_s13_i ( tq_res13  ),
				.ht_s20_i ( tq_res20  ), .ht_s21_i ( tq_res21  ), .ht_s22_i ( tq_res22  ), .ht_s23_i ( tq_res23  ),
				.ht_s30_i ( tq_res30  ), .ht_s31_i ( tq_res31  ), .ht_s32_i ( tq_res32  ), .ht_s33_i ( tq_res33  ),
				.ht_d00_o ( ht_coef00 ), .ht_d01_o ( ht_coef01 ), .ht_d02_o ( ht_coef02 ), .ht_d03_o ( ht_coef03 ),
				.ht_d10_o ( ht_coef10 ), .ht_d11_o ( ht_coef11 ), .ht_d12_o ( ht_coef12 ), .ht_d13_o ( ht_coef13 ),
				.ht_d20_o ( ht_coef20 ), .ht_d21_o ( ht_coef21 ), .ht_d22_o ( ht_coef22 ), .ht_d23_o ( ht_coef23 ),
				.ht_d30_o ( ht_coef30 ), .ht_d31_o ( ht_coef31 ), .ht_d32_o ( ht_coef32 ), .ht_d33_o ( ht_coef33 )
);

//-----------------------------------------------
//		Cost Calculation
//-----------------------------------------------
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		ht_abs00 <= 'd0;	ht_abs01 <= 'd0;	ht_abs02 <= 'd0;	ht_abs03 <= 'd0;
		ht_abs10 <= 'd0;	ht_abs11 <= 'd0;	ht_abs12 <= 'd0;	ht_abs13 <= 'd0;
		ht_abs20 <= 'd0;	ht_abs21 <= 'd0;	ht_abs22 <= 'd0;	ht_abs23 <= 'd0;
		ht_abs30 <= 'd0;	ht_abs31 <= 'd0;	ht_abs32 <= 'd0;	ht_abs33 <= 'd0;
	end
	else begin
		ht_abs00 <= ht_coef00[`BIT_DEPTH+4]? (~ht_coef00[`BIT_DEPTH+3:0] + 1'b1) : ht_coef00[`BIT_DEPTH+3:0];
		ht_abs01 <= ht_coef01[`BIT_DEPTH+4]? (~ht_coef01[`BIT_DEPTH+3:0] + 1'b1) : ht_coef01[`BIT_DEPTH+3:0];
		ht_abs02 <= ht_coef02[`BIT_DEPTH+4]? (~ht_coef02[`BIT_DEPTH+3:0] + 1'b1) : ht_coef02[`BIT_DEPTH+3:0];
		ht_abs03 <= ht_coef03[`BIT_DEPTH+4]? (~ht_coef03[`BIT_DEPTH+3:0] + 1'b1) : ht_coef03[`BIT_DEPTH+3:0];
		ht_abs10 <= ht_coef10[`BIT_DEPTH+4]? (~ht_coef10[`BIT_DEPTH+3:0] + 1'b1) : ht_coef10[`BIT_DEPTH+3:0];
		ht_abs11 <= ht_coef11[`BIT_DEPTH+4]? (~ht_coef11[`BIT_DEPTH+3:0] + 1'b1) : ht_coef11[`BIT_DEPTH+3:0];
		ht_abs12 <= ht_coef12[`BIT_DEPTH+4]? (~ht_coef12[`BIT_DEPTH+3:0] + 1'b1) : ht_coef12[`BIT_DEPTH+3:0];
		ht_abs13 <= ht_coef13[`BIT_DEPTH+4]? (~ht_coef13[`BIT_DEPTH+3:0] + 1'b1) : ht_coef13[`BIT_DEPTH+3:0];
		ht_abs20 <= ht_coef20[`BIT_DEPTH+4]? (~ht_coef20[`BIT_DEPTH+3:0] + 1'b1) : ht_coef20[`BIT_DEPTH+3:0];
		ht_abs21 <= ht_coef21[`BIT_DEPTH+4]? (~ht_coef21[`BIT_DEPTH+3:0] + 1'b1) : ht_coef21[`BIT_DEPTH+3:0];
		ht_abs22 <= ht_coef22[`BIT_DEPTH+4]? (~ht_coef22[`BIT_DEPTH+3:0] + 1'b1) : ht_coef22[`BIT_DEPTH+3:0];
		ht_abs23 <= ht_coef23[`BIT_DEPTH+4]? (~ht_coef23[`BIT_DEPTH+3:0] + 1'b1) : ht_coef23[`BIT_DEPTH+3:0];
		ht_abs30 <= ht_coef30[`BIT_DEPTH+4]? (~ht_coef30[`BIT_DEPTH+3:0] + 1'b1) : ht_coef30[`BIT_DEPTH+3:0];
		ht_abs31 <= ht_coef31[`BIT_DEPTH+4]? (~ht_coef31[`BIT_DEPTH+3:0] + 1'b1) : ht_coef31[`BIT_DEPTH+3:0];
		ht_abs32 <= ht_coef32[`BIT_DEPTH+4]? (~ht_coef32[`BIT_DEPTH+3:0] + 1'b1) : ht_coef32[`BIT_DEPTH+3:0];
		ht_abs33 <= ht_coef33[`BIT_DEPTH+4]? (~ht_coef33[`BIT_DEPTH+3:0] + 1'b1) : ht_coef33[`BIT_DEPTH+3:0];
	end 
end

assign cost4x4 =(ht_abs00 + ht_abs01 + ht_abs02 + ht_abs03 +
				 ht_abs10 + ht_abs11 + ht_abs12 + ht_abs13 +
				 ht_abs20 + ht_abs21 + ht_abs22 + ht_abs23 +
				 ht_abs30 + ht_abs31 + ht_abs32 + ht_abs33)>>1 ;  

endmodule