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
// Filename       : intra4x4_top.v
// Author         : huibo zhong
// Created        : 2011-02-26
// Description    : intra4x4_top,
//               
// Modified 	  : 2013-4-18 by Yibo FAN
//					Remove TQ Path
//------------------------------------------------------------------- 

`include "enc_defines.v"

module intra_4x4_top(
				clk					,
				rst_n				,
				mb_x_total			,
				mb_x				,
				mb_y				,
				
				start_i           	,
				done_o            	,
				lambda_i          	,
				luma_4x4_cost_o   	,
				                  	
				i4x4_num_o        	,
				i4x4_end_o        	,
				i4x4_pred_mode_i  	,
				i4x4_min_mode_o   	,
				i4x4_min_val_o    	,
				i4x4_min_num_o	  	,
				                  	
				tq_en_o           	,
				tq_mod_o          	,
				tq_num_o          	,
				tq_end_o          	,
				tq_min_o          	,				
				
				ori00, ori01, ori02, ori03,
				ori10, ori11, ori12, ori13,
				ori20, ori21, ori22, ori23,
				ori30, ori31, ori32, ori33,
				
				ref00tl,
				ref00t,  ref01t,  ref02t,  ref03t,
				ref00l,  ref01l,  ref02l,  ref03l,
				ref00tr, ref01tr, ref02tr, ref03tr,
				
				pre00, pre01, pre02, pre03,
				pre10, pre11, pre12, pre13,
				pre20, pre21, pre22, pre23,
				pre30, pre31, pre32, pre33,
				                           
				res00, res01, res02, res03,
				res10, res11, res12, res13,
				res20, res21, res22, res23,
				res30, res31, res32, res33
);              
                
// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input        				clk;
input						rst_n;
input [`PIC_W_MB_LEN-1 :0]  mb_x, mb_x_total;
input [`PIC_H_MB_LEN-1:0]  	mb_y;
// Intra control
input						start_i; // intra_4x4 start
output						done_o;  // intra 4x4 done
input  [6:0]				lambda_i; // lamda = f(qp), used for cost calculation
output [`BIT_DEPTH+11:0]	luma_4x4_cost_o; // intra 4x4 total cost

// Ref Pixels IF
output [3:0]				i4x4_num_o;  // intra 4x4 current sub-block number  
output						i4x4_end_o;  // intra 4x4 current sub-block number final mode flag  
input  [3:0]				i4x4_pred_mode_i; // intra 4x4 current predicted mode
output 						i4x4_min_val_o  ; // intra 4x4 sub-block min mode valid
output [3:0]				i4x4_min_mode_o ; // intra 4x4 sub-block min mode
output [3:0]				i4x4_min_num_o  ; // intra 4x4 sub-block min mode block number
// TQ Rec IF
output						tq_en_o ; // tq rec enable 
output [3:0]				tq_mod_o; // current i4x4 mode
output [3:0]				tq_num_o; // current i4x4 number
output 						tq_end_o; // current i4x4 block final predition mode flag
output						tq_min_o; // current i4x4 min cost valid flag
// Pixel Data
// Original Pixel Input
input  [`BIT_DEPTH-1:0]		ori00, ori01, ori02, ori03,
                            ori10, ori11, ori12, ori13,
                            ori20, ori21, ori22, ori23,
                            ori30, ori31, ori32, ori33;
// Reference Pixel Input
input  [`BIT_DEPTH-1:0]		ref00tl,                            
							ref00t,  ref01t,  ref02t,  ref03t,  
							ref00l,  ref01l,  ref02l,  ref03l,  
							ref00tr, ref01tr, ref02tr, ref03tr;
// Predicted Pixel Output
output  [`BIT_DEPTH-1:0]	pre00, pre01, pre02, pre03,
							pre10, pre11, pre12, pre13,
							pre20, pre21, pre22, pre23,
							pre30, pre31, pre32, pre33;
// Residual Data Output
output  [`BIT_DEPTH:0]		res00, res01, res02, res03,
							res10, res11, res12, res13,
							res20, res21, res22, res23,
							res30, res31, res32, res33;
							
// ********************************************
//                                             
//    Signal DECLARATION               
//                                             
// ********************************************
wire [3:0]					blk_avail;
wire [3:0]					i4x4_curr_mode;

wire [`BIT_DEPTH+4:0] 		ht_coef00, ht_coef01, ht_coef02, ht_coef03, 
							ht_coef10, ht_coef11, ht_coef12, ht_coef13, 
							ht_coef20, ht_coef21, ht_coef22, ht_coef23, 
							ht_coef30, ht_coef31, ht_coef32, ht_coef33; 
wire [`BIT_DEPTH+3:0] 		ht_abs00 , ht_abs01 , ht_abs02 , ht_abs03 ,      
							ht_abs10 , ht_abs11 , ht_abs12 , ht_abs13 ,      
							ht_abs20 , ht_abs21 , ht_abs22 , ht_abs23 ,      
							ht_abs30 , ht_abs31 , ht_abs32 , ht_abs33 ;      
reg  [`BIT_DEPTH+3:0] 		ht_abs00_r, ht_abs01_r, ht_abs02_r, ht_abs03_r,
							ht_abs10_r, ht_abs11_r, ht_abs12_r, ht_abs13_r,
							ht_abs20_r, ht_abs21_r, ht_abs22_r, ht_abs23_r,
							ht_abs30_r, ht_abs31_r, ht_abs32_r, ht_abs33_r;
wire [`BIT_DEPTH+5:0] 		ht_sum0, ht_sum1, ht_sum2, ht_sum3;
wire [`BIT_DEPTH+7:0] 		ht_sum4x4;

// ********************************************
//                                             
//    Logic DECLARATION               
//                                             
// ********************************************
//-------------------------------------------------------------------------
//			Level 0 : Predict Mode Generation, Ctrl Signals
//-------------------------------------------------------------------------
intra_4x4_ctrl u_intra_4x4_ctrl(
				.clk                  ( clk                ),
				.rst_n                ( rst_n              ),
				.mb_x_total           ( mb_x_total         ),
				.mb_x                 ( mb_x               ),
				.mb_y                 ( mb_y               ),
				 
				.start_i              ( start_i            ),
				.done_o               ( done_o             ),
				.lambda_i             ( lambda_i           ),
				.ht_sum4x4_i          ( ht_sum4x4          ),
				.luma_4x4_cost_o      ( luma_4x4_cost_o    ),	
				.blk_avail_o		  ( blk_avail 		   ),
								 
				.i4x4_num_o           ( i4x4_num_o         ),
				.i4x4_end_o           ( i4x4_end_o         ),
				.i4x4_pred_mode_i     ( i4x4_pred_mode_i   ),
				.i4x4_curr_mode_o     ( i4x4_curr_mode     ),
				.i4x4_min_mode_o      ( i4x4_min_mode_o    ),
				.i4x4_min_val_o       ( i4x4_min_val_o     ),
				.i4x4_min_num_o		  (	i4x4_min_num_o	   ),			
				
				.tq_en_o              ( tq_en_o            ),
				.tq_mod_o             ( tq_mod_o           ),
				.tq_num_o             ( tq_num_o           ),
				.tq_end_o             ( tq_end_o           ),
				.tq_min_o             ( tq_min_o           )
);                                                         

//-------------------------------------------------------------------------
//			Level 1 : PE->Residual
//-------------------------------------------------------------------------
intra_4x4_pe u_intra_4x4_pe (
				.clk  		( clk   			),
				.rst_n		( rst_n 			),
				.curr_mode	( i4x4_curr_mode  	),
				.blk_avail	( blk_avail 		),
				
				.pixel_ori00( ori00 ), .pixel_ori01( ori01 ), .pixel_ori02( ori02 ), .pixel_ori03( ori03 ),
				.pixel_ori10( ori10 ), .pixel_ori11( ori11 ), .pixel_ori12( ori12 ), .pixel_ori13( ori13 ),
				.pixel_ori20( ori20 ), .pixel_ori21( ori21 ), .pixel_ori22( ori22 ), .pixel_ori23( ori23 ),
				.pixel_ori30( ori30 ), .pixel_ori31( ori31 ), .pixel_ori32( ori32 ), .pixel_ori33( ori33 ),
				
				.ref00_tl( ref00tl),
				.ref00_t ( ref00t ), .ref01_t ( ref01t ),	.ref02_t ( ref02t ), .ref03_t ( ref03t ),
				.ref00_l ( ref00l ), .ref01_l ( ref01l ),	.ref02_l ( ref02l ), .ref03_l ( ref03l ),
				.ref00_tr( ref00tr), .ref01_tr( ref01tr),	.ref02_tr( ref02tr), .ref03_tr( ref03tr),
				
				.pixel_pred00_o( pre00 ), .pixel_pred01_o( pre01 ), .pixel_pred02_o( pre02 ), .pixel_pred03_o( pre03 ),
				.pixel_pred10_o( pre10 ), .pixel_pred11_o( pre11 ), .pixel_pred12_o( pre12 ), .pixel_pred13_o( pre13 ),
				.pixel_pred20_o( pre20 ), .pixel_pred21_o( pre21 ), .pixel_pred22_o( pre22 ), .pixel_pred23_o( pre23 ),
				.pixel_pred30_o( pre30 ), .pixel_pred31_o( pre31 ), .pixel_pred32_o( pre32 ), .pixel_pred33_o( pre33 ),
				
				.pixel_res00_o( res00 ), .pixel_res01_o( res01 ), .pixel_res02_o( res02 ), .pixel_res03_o( res03 ),
				.pixel_res10_o( res10 ), .pixel_res11_o( res11 ), .pixel_res12_o( res12 ), .pixel_res13_o( res13 ),
				.pixel_res20_o( res20 ), .pixel_res21_o( res21 ), .pixel_res22_o( res22 ), .pixel_res23_o( res23 ),
				.pixel_res30_o( res30 ), .pixel_res31_o( res31 ), .pixel_res32_o( res32 ), .pixel_res33_o( res33 )
);

//-------------------------------------------------------------------------
//			Level 2 : Hadamard Abs                                        
//-------------------------------------------------------------------------
// hadamard transform
intra_hadamard4x4 u_intra4x4_hadamard4x4 (
				.ht_s00_i ( res00     ), .ht_s01_i ( res01     ), .ht_s02_i ( res02     ), .ht_s03_i ( res03     ),
				.ht_s10_i ( res10     ), .ht_s11_i ( res11     ), .ht_s12_i ( res12     ), .ht_s13_i ( res13     ),
				.ht_s20_i ( res20     ), .ht_s21_i ( res21     ), .ht_s22_i ( res22     ), .ht_s23_i ( res23     ),
				.ht_s30_i ( res30     ), .ht_s31_i ( res31     ), .ht_s32_i ( res32     ), .ht_s33_i ( res33     ),
				.ht_d00_o ( ht_coef00 ), .ht_d01_o ( ht_coef01 ), .ht_d02_o ( ht_coef02 ), .ht_d03_o ( ht_coef03 ),
				.ht_d10_o ( ht_coef10 ), .ht_d11_o ( ht_coef11 ), .ht_d12_o ( ht_coef12 ), .ht_d13_o ( ht_coef13 ),
				.ht_d20_o ( ht_coef20 ), .ht_d21_o ( ht_coef21 ), .ht_d22_o ( ht_coef22 ), .ht_d23_o ( ht_coef23 ),
				.ht_d30_o ( ht_coef30 ), .ht_d31_o ( ht_coef31 ), .ht_d32_o ( ht_coef32 ), .ht_d33_o ( ht_coef33 )
);

//abs
assign ht_abs00 = ht_coef00[`BIT_DEPTH+4]? (~ht_coef00[`BIT_DEPTH+3:0] + 1'b1) : ht_coef00[`BIT_DEPTH+3:0];
assign ht_abs01 = ht_coef01[`BIT_DEPTH+4]? (~ht_coef01[`BIT_DEPTH+3:0] + 1'b1) : ht_coef01[`BIT_DEPTH+3:0];
assign ht_abs02 = ht_coef02[`BIT_DEPTH+4]? (~ht_coef02[`BIT_DEPTH+3:0] + 1'b1) : ht_coef02[`BIT_DEPTH+3:0];
assign ht_abs03 = ht_coef03[`BIT_DEPTH+4]? (~ht_coef03[`BIT_DEPTH+3:0] + 1'b1) : ht_coef03[`BIT_DEPTH+3:0];
assign ht_abs10 = ht_coef10[`BIT_DEPTH+4]? (~ht_coef10[`BIT_DEPTH+3:0] + 1'b1) : ht_coef10[`BIT_DEPTH+3:0];
assign ht_abs11 = ht_coef11[`BIT_DEPTH+4]? (~ht_coef11[`BIT_DEPTH+3:0] + 1'b1) : ht_coef11[`BIT_DEPTH+3:0];
assign ht_abs12 = ht_coef12[`BIT_DEPTH+4]? (~ht_coef12[`BIT_DEPTH+3:0] + 1'b1) : ht_coef12[`BIT_DEPTH+3:0];
assign ht_abs13 = ht_coef13[`BIT_DEPTH+4]? (~ht_coef13[`BIT_DEPTH+3:0] + 1'b1) : ht_coef13[`BIT_DEPTH+3:0];
assign ht_abs20 = ht_coef20[`BIT_DEPTH+4]? (~ht_coef20[`BIT_DEPTH+3:0] + 1'b1) : ht_coef20[`BIT_DEPTH+3:0];
assign ht_abs21 = ht_coef21[`BIT_DEPTH+4]? (~ht_coef21[`BIT_DEPTH+3:0] + 1'b1) : ht_coef21[`BIT_DEPTH+3:0];
assign ht_abs22 = ht_coef22[`BIT_DEPTH+4]? (~ht_coef22[`BIT_DEPTH+3:0] + 1'b1) : ht_coef22[`BIT_DEPTH+3:0];
assign ht_abs23 = ht_coef23[`BIT_DEPTH+4]? (~ht_coef23[`BIT_DEPTH+3:0] + 1'b1) : ht_coef23[`BIT_DEPTH+3:0];
assign ht_abs30 = ht_coef30[`BIT_DEPTH+4]? (~ht_coef30[`BIT_DEPTH+3:0] + 1'b1) : ht_coef30[`BIT_DEPTH+3:0];
assign ht_abs31 = ht_coef31[`BIT_DEPTH+4]? (~ht_coef31[`BIT_DEPTH+3:0] + 1'b1) : ht_coef31[`BIT_DEPTH+3:0];
assign ht_abs32 = ht_coef32[`BIT_DEPTH+4]? (~ht_coef32[`BIT_DEPTH+3:0] + 1'b1) : ht_coef32[`BIT_DEPTH+3:0];
assign ht_abs33 = ht_coef33[`BIT_DEPTH+4]? (~ht_coef33[`BIT_DEPTH+3:0] + 1'b1) : ht_coef33[`BIT_DEPTH+3:0];

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin	
		ht_abs00_r <= 'b0;	ht_abs01_r <= 'b0;	ht_abs02_r <= 'b0;	ht_abs03_r <= 'b0;
		ht_abs10_r <= 'b0;	ht_abs11_r <= 'b0;	ht_abs12_r <= 'b0;	ht_abs13_r <= 'b0;
		ht_abs20_r <= 'b0;	ht_abs21_r <= 'b0;	ht_abs22_r <= 'b0;	ht_abs23_r <= 'b0;
		ht_abs30_r <= 'b0;	ht_abs31_r <= 'b0;	ht_abs32_r <= 'b0;	ht_abs33_r <= 'b0;
	end
	else begin
		ht_abs00_r <= ht_abs00;	ht_abs01_r <= ht_abs01;	ht_abs02_r <= ht_abs02;	ht_abs03_r <= ht_abs03;
		ht_abs10_r <= ht_abs10;	ht_abs11_r <= ht_abs11;	ht_abs12_r <= ht_abs12;	ht_abs13_r <= ht_abs13;
		ht_abs20_r <= ht_abs20;	ht_abs21_r <= ht_abs21;	ht_abs22_r <= ht_abs22;	ht_abs23_r <= ht_abs23;
		ht_abs30_r <= ht_abs30;	ht_abs31_r <= ht_abs31;	ht_abs32_r <= ht_abs32;	ht_abs33_r <= ht_abs33;
	end
end

// Cost Calculation
assign ht_sum0 = (ht_abs00_r + ht_abs01_r) + (ht_abs02_r + ht_abs03_r);
assign ht_sum1 = (ht_abs10_r + ht_abs11_r) + (ht_abs12_r + ht_abs13_r);
assign ht_sum2 = (ht_abs20_r + ht_abs21_r) + (ht_abs22_r + ht_abs23_r);
assign ht_sum3 = (ht_abs30_r + ht_abs31_r) + (ht_abs32_r + ht_abs33_r);
assign ht_sum4x4 = (ht_sum0 + ht_sum1) + (ht_sum2 + ht_sum3); 

endmodule
