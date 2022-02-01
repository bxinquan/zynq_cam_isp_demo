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
// Filename       : top.v
// Author         : Yibo FAN
// Created        : 2012-5-02
// Description    : top of encoder
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module h264enc_top     (
				clk,
				rst_n,		
				sys_start,      
				sys_done,		
				sys_qp, 
				sys_mode,       
				sys_x_total,    
				sys_y_total,
				enc_ld_start,
				enc_ld_x,
				enc_ld_y,	
				rdata_i,
				rvalid_i,
				rinc_o,
				wdata_o,
				wfull_i,
				winc_o       				
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input 		  					clk, rst_n;
// SYS IF
input							sys_start;  
output							sys_done;	
input [5:0]						sys_qp;
input 							sys_mode; 
input [`PIC_W_MB_LEN-1:0] 		sys_x_total;
input [`PIC_H_MB_LEN-1:0]  		sys_y_total;
output							enc_ld_start;
output [`PIC_W_MB_LEN-1:0]		enc_ld_x;
output [`PIC_H_MB_LEN-1:0]  	enc_ld_y;
// RAW INPUT IF
input [8*`BIT_DEPTH - 1:0]   	rdata_i;
input          					rvalid_i;
output         					rinc_o;
// STREAM OUTPUT IF
output [7:0]   					wdata_o;
input          					wfull_i;
output         					winc_o;

// ********************************************
//                                             
//    Wire DECLARATION                         
//                                             
// ********************************************
//------------------ u_top_ctrl ------------------//
wire                       	load_start, intra_start, ec_start, frame_start;
wire                       	load_done , intra_done , ec_done , frame_done ;
wire [`PIC_W_MB_LEN-1:0]   	mb_x_total, mb_x_load, mb_x_intra, mb_x_ec;   
wire [`PIC_H_MB_LEN-1:0]   	mb_y_total, mb_y_load, mb_y_intra, mb_y_ec;      
reg [5:0]    				intra_qp, ec_qp;    
wire						bs_empty;

//------------------ u_cur_mb -----------------//
wire                 		mb_switch;
wire   [256*8-1:0]   		intra_cur_luma;       
wire   [64*8-1 :0]   		intra_cur_u, intra_cur_v;

//-------------------- u_intra --------------------//
wire          				intra_mb_type_info;
wire [1:0]    				intra_16x16_mode; 
wire [1:0]    				intra_chroma_mode;              				
wire [63:0]   				intra_4x4_bm;   // intra 4x4 used mode 
wire [63:0]   				intra_4x4_pm;   // intra 4x4 predicted mode (base on surrounding blocks)
      
//-------------------- u_tq --------------------//
// TQ i4x4 IF
wire 						tq_i4x4_en;  
wire [3:0]					tq_i4x4_mod; 
wire [3:0]					tq_i4x4_blk; 
wire 						tq_i4x4_min; 
wire 						tq_i4x4_end; 
wire 						tq_i4x4_val; 
wire [3:0]					tq_i4x4_num;   
// TQ i16x16 IF         	
wire 						tq_i16x16_en; 
wire [3:0] 					tq_i16x16_blk;
wire 						tq_i16x16_val;
wire [3:0]					tq_i16x16_num;  
// TQ Chroma IF, two source: intra/inter frame            
wire 						tq_chroma_en	;		
wire [2:0]					tq_chroma_num	;
wire 						tq_cb_val		;	    
wire [3:0]					tq_cb_num		;	    
wire 						tq_cr_val		;	    
wire [3:0]					tq_cr_num		;	  
// intra/inter and mux predicted pixels    
wire  [`BIT_DEPTH-1:0]		tq_pre00, tq_pre01, tq_pre02, tq_pre03,
							tq_pre10, tq_pre11, tq_pre12, tq_pre13,
							tq_pre20, tq_pre21, tq_pre22, tq_pre23,
							tq_pre30, tq_pre31, tq_pre32, tq_pre33;		
// intra/inter and mux residual pixels 																	                      
wire  [`BIT_DEPTH:0]		tq_res00, tq_res01, tq_res02, tq_res03,
							tq_res10, tq_res11, tq_res12, tq_res13,
							tq_res20, tq_res21, tq_res22, tq_res23,
							tq_res30, tq_res31, tq_res32, tq_res33;	
// rec pixels from tq												
wire [`BIT_DEPTH-1:0]		tq_rec00, tq_rec01, tq_rec02, tq_rec03,
							tq_rec10, tq_rec11, tq_rec12, tq_rec13,
							tq_rec20, tq_rec21, tq_rec22, tq_rec23,
							tq_rec30, tq_rec31, tq_rec32, tq_rec33;	
// EC Output IF
wire [8:0]    				tq_cbp ;
wire [3:0]					tq_cbp_luma;
wire [1:0]					tq_cbp_chroma;
wire [2:0]					tq_cbp_dc;

//---------------------- u_ec ---------------------//
// from intra
reg          				ec_intra_type;
reg [1:0]    				ec_16x16_mode;
reg [1:0]    				ec_chroma_mode;
reg [63:0]   				ec_4x4_bm;   
reg [63:0]   				ec_4x4_pm;
// from tq
reg  [8:0]    				ec_cbp ;			
wire [4:0]					ec_level_raddr;
wire [255:0]				ec_level_rdata;
// cavlc & bs_buf
wire          				cavlc_we ;
wire [3:0]    				cavlc_inc;
wire [83:0]   				cavlc_codebit;
wire [7:0]    				cavlc_rbsp_trailing;

//-------------------------------------------------------------------
//               
//                top module controller 
// 
//------------------------------------------------------------------- 
assign mb_x_total = sys_x_total;
assign mb_y_total = sys_y_total;
assign intra_flag = 1'b1;

assign enc_ld_start = load_start; 
assign enc_ld_x		= mb_x_load;     
assign enc_ld_y		= mb_y_load;     

always @(posedge clk or negedge rst_n)begin
	if (!rst_n)
		intra_qp <= 'b0;
	else if (intra_start)
		intra_qp <= sys_qp;
end

always @(posedge clk or negedge rst_n)begin
	if (!rst_n)
		ec_qp <= 'b0;
	else if (ec_start)
		ec_qp <= intra_qp;
end


top_ctrl      u_top_ctrl(
				.clk                 ( clk              ),
				.rst_n               ( rst_n            ),
				
				.sys_start		     ( sys_start		),
				.sys_done		     ( sys_done		    ),	
				.sys_mode            ( sys_mode         ),
				.sys_x_total         ( sys_x_total      ),
				.sys_y_total	     ( sys_y_total	    ),
				
				.frame_start_o       ( frame_start      ),
				.frame_done_o        ( frame_done       ),
				.load_start_o        ( load_start       ),
				.intra_start_o       ( intra_start      ),
				.ec_start_o          ( ec_start         ),
				
				.load_done_i       	 ( load_done        ),
				.intra_done_i        ( intra_done       ),
				.ec_done_i           ( ec_done          ),
				.bs_empty_i          ( bs_empty			),
				
				.mb_x_load           ( mb_x_load        ),
				.mb_y_load           ( mb_y_load        ),
				.mb_x_intra          ( mb_x_intra       ),
				.mb_y_intra          ( mb_y_intra       ),
				.mb_x_ec             ( mb_x_ec          ),
				.mb_y_ec             ( mb_y_ec          )		
);              
                
//-------------------------------------------------------------------
//               
//          current macroblock loading 
// 
//------------------------------------------------------------------- 
assign mb_switch = load_start||intra_start;

cur_mb  u_cur_mb(  
				.clk              ( clk             ),  
				.rst_n            ( rst_n           ),  
				.load_start	      ( load_start      ),
				.load_done        ( load_done       ),
				.pvalid_i		  ( rvalid_i        ),
				.pinc_o           ( rinc_o          ),
				.pdata_i	      ( rdata_i         ),
				.mb_switch		  ( mb_switch       ),
				.intra_cur_luma   ( intra_cur_luma  ),  
				.intra_cur_u      ( intra_cur_u     ),  
				.intra_cur_v      ( intra_cur_v     )  
);

//-------------------------------------------------------------------
//               
//          Intra Block
// 
//------------------------------------------------------------------- 						
intra_top u_intra_top(
				.clk             ( clk                 	),
				.rst_n           ( rst_n               	),
				.mb_x_total      ( mb_x_total 		 	), 
				.mb_x            ( mb_x_intra 		 	),
				.mb_y            ( mb_y_intra 		 	),
				.mb_luma         ( intra_cur_luma       ),
				.mb_cb           ( intra_cur_u   		),  
				.mb_cr			 ( intra_cur_v   		),  
				.intra_flag		 ( 1'b1             	),		
				.qp		         ( intra_qp             ),
							
				.start_i         ( intra_start         	),
				.done_o	         ( intra_done          	),
								
				.intra_mode_o    ( intra_mb_type_info  	),
				.i4x4_bm_o   	 ( intra_4x4_bm        	),
				.i4x4_pm_o       ( intra_4x4_pm        	),
				.i16x16_mode_o   ( intra_16x16_mode     ),
				.chroma_mode_o	 ( intra_chroma_mode   	),	
				
				.tq_i4x4_en_o    ( tq_i4x4_en	        ), 
				.tq_i4x4_mod_o   ( tq_i4x4_mod          ), 
				.tq_i4x4_num_o   ( tq_i4x4_blk          ), 
				.tq_i4x4_min_o   ( tq_i4x4_min          ), 
				.tq_i4x4_end_o   ( tq_i4x4_end          ), 
				.tq_i4x4_val_i   ( tq_i4x4_val          ), 
				.tq_i4x4_num_i   ( tq_i4x4_num          ), 
				 				                                        
				.tq_i16x16_en_o  ( tq_i16x16_en         ), 
				.tq_i16x16_num_o ( tq_i16x16_blk        ), 
				.tq_i16x16_val_i ( tq_i16x16_val        ), 
				.tq_i16x16_num_i ( tq_i16x16_num		), 
				
				.tq_chroma_en_o  ( tq_chroma_en			), 
				.tq_chroma_num_o ( tq_chroma_num     	),    
				.tq_cb_val_i     ( tq_cb_val         	),    
				.tq_cb_num_i     ( tq_cb_num         	),    
				.tq_cr_val_i     ( tq_cr_val         	),    
				.tq_cr_num_i     ( tq_cr_num         	),    		
				
				.pre00 ( tq_pre00 ), .pre01 ( tq_pre01 ), .pre02 ( tq_pre02 ), .pre03 ( tq_pre03 ),
                .pre10 ( tq_pre10 ), .pre11 ( tq_pre11 ), .pre12 ( tq_pre12 ), .pre13 ( tq_pre13 ),
                .pre20 ( tq_pre20 ), .pre21 ( tq_pre21 ), .pre22 ( tq_pre22 ), .pre23 ( tq_pre23 ),
                .pre30 ( tq_pre30 ), .pre31 ( tq_pre31 ), .pre32 ( tq_pre32 ), .pre33 ( tq_pre33 ),
          
                .res00 ( tq_res00 ), .res01 ( tq_res01 ), .res02 ( tq_res02 ), .res03 ( tq_res03 ),
                .res10 ( tq_res10 ), .res11 ( tq_res11 ), .res12 ( tq_res12 ), .res13 ( tq_res13 ),
                .res20 ( tq_res20 ), .res21 ( tq_res21 ), .res22 ( tq_res22 ), .res23 ( tq_res23 ),
                .res30 ( tq_res30 ), .res31 ( tq_res31 ), .res32 ( tq_res32 ), .res33 ( tq_res33 ),
       
                .rec00 ( tq_rec00 ), .rec01 ( tq_rec01 ), .rec02 ( tq_rec02 ), .rec03 ( tq_rec03 ),
                .rec10 ( tq_rec10 ), .rec11 ( tq_rec11 ), .rec12 ( tq_rec12 ), .rec13 ( tq_rec13 ),
                .rec20 ( tq_rec20 ), .rec21 ( tq_rec21 ), .rec22 ( tq_rec22 ), .rec23 ( tq_rec23 ),
                .rec30 ( tq_rec30 ), .rec31 ( tq_rec31 ), .rec32 ( tq_rec32 ), .rec33 ( tq_rec33 )
);

//-------------------------------------------------------------------
//                                                                   
//          TQ Block                                              
//                                                                   
//-------------------------------------------------------------------
tq_top u_tq_top(
				.clk             ( clk                 	),
				.rst_n           ( rst_n               	),		
				.qp		         ( intra_qp             ),

				.i4x4_en_i 		 ( tq_i4x4_en	        ),      	
				.i4x4_mod_i		 ( tq_i4x4_mod          ),
				.i4x4_num_i		 ( tq_i4x4_blk          ),
				.i4x4_min_i		 ( tq_i4x4_min          ),
				.i4x4_end_i		 ( tq_i4x4_end          ),
				.i4x4_val_o		 ( tq_i4x4_val          ),
				.i4x4_num_o		 ( tq_i4x4_num          ),
				
				.i16x16_en_i     ( tq_i16x16_en         ),
				.i16x16_num_i    ( tq_i16x16_blk        ),
				.i16x16_val_o    ( tq_i16x16_val        ),
				.i16x16_num_o    ( tq_i16x16_num		),
				
				.p16x16_en_i     ( 1'b0 ),
				.p16x16_num_i    ( 4'b0 ),
				.p16x16_val_o    ( ),
				.p16x16_num_o    ( ),
				
				.chroma_en_i     ( tq_chroma_en			),
				.chroma_num_i    ( tq_chroma_num        ),
				.cb_val_o        ( tq_cb_val            ),
				.cb_num_o        ( tq_cb_num            ),
				.cr_val_o        ( tq_cr_val            ),
				.cr_num_o        ( tq_cr_num            ),
				
				.pre00 ( tq_pre00 ), .pre01 ( tq_pre01 ), .pre02 ( tq_pre02 ), .pre03 ( tq_pre03 ),
                .pre10 ( tq_pre10 ), .pre11 ( tq_pre11 ), .pre12 ( tq_pre12 ), .pre13 ( tq_pre13 ),
                .pre20 ( tq_pre20 ), .pre21 ( tq_pre21 ), .pre22 ( tq_pre22 ), .pre23 ( tq_pre23 ),
                .pre30 ( tq_pre30 ), .pre31 ( tq_pre31 ), .pre32 ( tq_pre32 ), .pre33 ( tq_pre33 ),
                    
                .res00 ( tq_res00 ), .res01 ( tq_res01 ), .res02 ( tq_res02 ), .res03 ( tq_res03 ),
                .res10 ( tq_res10 ), .res11 ( tq_res11 ), .res12 ( tq_res12 ), .res13 ( tq_res13 ),
                .res20 ( tq_res20 ), .res21 ( tq_res21 ), .res22 ( tq_res22 ), .res23 ( tq_res23 ),
                .res30 ( tq_res30 ), .res31 ( tq_res31 ), .res32 ( tq_res32 ), .res33 ( tq_res33 ),
       
                .rec00 ( tq_rec00 ), .rec01 ( tq_rec01 ), .rec02 ( tq_rec02 ), .rec03 ( tq_rec03 ),
                .rec10 ( tq_rec10 ), .rec11 ( tq_rec11 ), .rec12 ( tq_rec12 ), .rec13 ( tq_rec13 ),
                .rec20 ( tq_rec20 ), .rec21 ( tq_rec21 ), .rec22 ( tq_rec22 ), .rec23 ( tq_rec23 ),
                .rec30 ( tq_rec30 ), .rec31 ( tq_rec31 ), .rec32 ( tq_rec32 ), .rec33 ( tq_rec33 ),
                
                .mem_sw	  			( ec_start			),     			
                .ec_mem_rd			( 1'b1    			),   
                .ec_mem_raddr		( ec_level_raddr	),     
                .ec_mem_rdata		( ec_level_rdata	),         
                
                .cbp_luma           ( tq_cbp_luma       ),
				.cbp_chroma			( tq_cbp_chroma		),
				.cbp_dc				( tq_cbp_dc			)	          
);

// for Intra_16x16, cbp_luma=4'b1111 or 4'b0000 (has one non_zero equals to 4'b1111)
// for Intra_4x4 and P Frame, cbp_luma = {non_zero_8x8}x4
assign tq_cbp = {tq_cbp_dc, tq_cbp_chroma, (intra_flag&intra_mb_type_info)?{4{|tq_cbp_luma}}:tq_cbp_luma};

//-------------------------------------------------------------------
//
//  entropy coding (CAVLC) module
//
//-------------------------------------------------------------------
// save mc outputs for ec coding
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		ec_intra_type  	 <= 'b0;
		ec_chroma_mode   <= 'b0;
		ec_16x16_mode    <= 'b0;
		ec_4x4_bm        <= 'b0;
		ec_4x4_pm        <= 'b0;
				
		ec_cbp			 <= 'b0;		
	end
	else if(ec_start)begin
		ec_intra_type  	 <= intra_mb_type_info ; 
		ec_chroma_mode   <= intra_chroma_mode  ; 
		ec_16x16_mode    <= intra_16x16_mode   ; 
		ec_4x4_bm        <= intra_4x4_bm       ; 
		ec_4x4_pm        <= intra_4x4_pm       ;
		
		ec_cbp			 <= tq_cbp             ;		
	end
end

`ifdef CABAC
		cabac_top u_cabac_top(
			.clk						( clk						),
			.rst_n						( rst_n						),
			.mb_x_total_i				( mb_x_total				),
			.mb_y_total_i				( mb_y_total				),	
			.mb_x_i						( mb_x_ec					),
			.mb_y_i						( mb_y_ec					),
			.slice_type_i				( intra_flag				),
			.mb_qp_i					( ec_qp						),
			// start done			
			.cabac_start_i				( ec_start				    ),			
			.mb_done_o					( ec_done				    ),
			// tq info
			.cbp_i						( ec_cbp					),	
			.addr_coeff_o				( ec_level_raddr			),
			.data_coeff_i				( ec_level_rdata			), 		
			//intra info
			.intra_mb_type_info_i		( ec_intra_type				),
			.intra_16x16_mode_i			( ec_16x16_mode		    	),
			.intra_4x4_mode_i			( ec_4x4_bm					),
			.intra_4x4_pred_mode_i		( ec_4x4_pm	    			),
			.chroma_mode_i				( ec_chroma_mode		    ),			
			//inter info
			.mb_partition_i				( 							),
			.mb_sub_partition_i			( 					    	),
			.addr_mvd_o					( 							), 
			.mvd_i						( 							),
			//output
			.outbyte_o					( wdata_o			    	),
			.output_byte_en_o			( winc_o					),			
			.slice_done_o				( 		 					)
		);
		
		assign bs_empty = 1'b1;

`else
		cavlc_top u_cavlc_top (
						.clk              ( clk                 ),
						.rst_n            ( rst_n               ),
						.mb_x             ( mb_x_ec		        ),
						.mb_y             ( mb_y_ec		        ),
						.qp				  ( ec_qp				),
						.ref_idx          (                     ),
						.mode_i           ( ~intra_flag         ),
						// start done
						.start            ( ec_start            ),
						.cavlc_done       ( ec_done          	),
						// slice header state
						.sh_enc_done      ( frame_start         ),
						.remain_bit_sh    ( 8'b0                ),
						.remain_len_sh    ( 3'b0                ),
						// tq
						.cbp_i            ( ec_cbp           	),
						.addr_o		 	  ( ec_level_raddr		),
						.data_i		  	  ( ec_level_rdata		),
						// intra
						.mb_type_intra_i  ( ec_intra_type  		),
						.chroma_mode_i    ( ec_chroma_mode   	),
						.intra16x16_mode_i( ec_16x16_mode    	),
						.intra4x4_bm_i    ( ec_4x4_bm        	),
						.intra4x4_pm_i    ( ec_4x4_pm        	),
						// inter
						.mb_type_inter    ( 2'b0				),
						.sub_partition    ( 8'b0				),
						.mvd_addr         ( 				    ),
						.mvd              ( 18'b0			    ),
						// output
						.we               ( cavlc_we            ),
						.tmpAddr          ( cavlc_inc           ),
						.codebit          ( cavlc_codebit       ),
						.rbsp_trailing    ( cavlc_rbsp_trailing )
		);
		
		// bitstream output module
		bs_buf  u_bs_buf(
						.clk              ( clk                 ),
						.rst_n            ( rst_n               ),
						.frame_done       ( frame_done          ),
						.sh_we 			  ( 1'b0				),
						.sh_inc           ( 2'b0				),
						.sh_bit           ( 24'b0				),
						.cavlc_we         ( cavlc_we            ),
						.cavlc_inc        ( cavlc_inc           ),
						.cavlc_bit        ( cavlc_codebit       ),
						.rbsp_trailing    ( cavlc_rbsp_trailing ),
						.bs_valid         ( winc_o              ),
						.bs_o             ( wdata_o             ),
						.bs_empty_o       ( bs_empty            )
		);
		
`endif

endmodule
