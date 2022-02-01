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
// Filename       : intra_ref.v
// Author         : huibo zhong
// Created        : 2011-02-27
// Description    : Intra reference pixels (Top & Left)  
//               
// Modified 	  : 2013-4-27 by Yibo FAN
//					Integrate 4x4 and 16x16 reference 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module intra_ref(
				clk,
				rst_n,
				mb_x_total,
				mb_x,
				mb_y,
				
				start_i,
				i4x4_update_i,
				i16x16_update_i,
				chroma_update_i,
				
				i4x4_num_i,
				i4x4_end_i,
				i4x4_min_mode_i,
				i4x4_min_val_i,
				i4x4_min_num_i,			
				i4x4_pred_mode_o,
				i4x4_pm_o,
				i4x4_bm_o,
				
				tq_i4x4_val_i,
				tq_i4x4_num_i,
				tq_i16x16_val_i,
				tq_i16x16_num_i,
				tq_cb_val_i,
				tq_cb_num_i,
				tq_cr_val_i,
				tq_cr_num_i,
				
				rec4x4_00, rec4x4_01, rec4x4_02, rec4x4_03,
				rec4x4_10, rec4x4_11, rec4x4_12, rec4x4_13,
				rec4x4_20, rec4x4_21, rec4x4_22, rec4x4_23,
				rec4x4_30, rec4x4_31, rec4x4_32, rec4x4_33,
				
				ref00_tl,                              
				ref00_t,  ref01_t,  ref02_t,  ref03_t, 
				ref04_t,  ref05_t,  ref06_t,  ref07_t, 
				ref08_t,  ref09_t,  ref10_t,  ref11_t, 
				ref12_t,  ref13_t,  ref14_t,  ref15_t, 
				ref00_l,  ref01_l,  ref02_l,  ref03_l, 
				ref04_l,  ref05_l,  ref06_l,  ref07_l, 
				ref08_l,  ref09_l,  ref10_l,  ref11_l, 
				ref12_l,  ref13_l,  ref14_l,  ref15_l,
				
				ref00_tl_u,
				ref00_t_u ,  ref01_t_u,  ref02_t_u,  ref03_t_u,
				ref04_t_u ,  ref05_t_u,  ref06_t_u,  ref07_t_u,
				ref00_l_u ,  ref01_l_u,  ref02_l_u,  ref03_l_u,
				ref04_l_u ,  ref05_l_u,  ref06_l_u,  ref07_l_u,
				
				ref00_tl_v,
				ref00_t_v ,  ref01_t_v,  ref02_t_v,  ref03_t_v,
				ref04_t_v ,  ref05_t_v,  ref06_t_v,  ref07_t_v,
				ref00_l_v ,  ref01_l_v,  ref02_l_v,  ref03_l_v,
				ref04_l_v ,  ref05_l_v,  ref06_l_v,  ref07_l_v,
				
				ref4x4_00tl,
				ref4x4_00t,  ref4x4_01t,  ref4x4_02t,  ref4x4_03t,
				ref4x4_00l,  ref4x4_01l,  ref4x4_02l,  ref4x4_03l,
				ref4x4_00tr, ref4x4_01tr, ref4x4_02tr, ref4x4_03tr
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
// Top Control IF
input						start_i; 		 // intra start
input						i4x4_update_i;   // Intra mode is 4x4, update reference pixel
input						i16x16_update_i; // Intra mode is 16x16, update reference pixel
input						chroma_update_i; // Chroma MB reference pixel update
// Intra_4x4 prediction IF
input  [3:0]				i4x4_num_i;		 // intra 4x4 current prediction sub-block number
input						i4x4_end_i;		 // intra 4x4 current prediction sub-block finished
input  [3:0]				i4x4_min_mode_i; // intra 4x4 sub-block mode
input						i4x4_min_val_i;  // intra 4x4 sub-block mode avaiable
input  [3:0]				i4x4_min_num_i;  // intra 4x4 sub-block number for mode save
output [3:0]				i4x4_pred_mode_o;// intra 4x4 current su-block predicted mode
output [63:0] 				i4x4_bm_o;       // intra MB output bm
output [63:0] 				i4x4_pm_o;       // intra MB output pm

// tq reconstructed pixels IF
input 						tq_i4x4_val_i;  // tq valid & block number   
input [3:0]					tq_i4x4_num_i;   
input 						tq_i16x16_val_i; 
input [3:0]					tq_i16x16_num_i; 
input 						tq_cb_val_i;     
input [3:0]					tq_cb_num_i;     
input 						tq_cr_val_i;     
input [3:0]					tq_cr_num_i;     
input [`BIT_DEPTH-1:0]		rec4x4_00, rec4x4_01, rec4x4_02, rec4x4_03, // tq reconstructed 4x4 pixels 
                            rec4x4_10, rec4x4_11, rec4x4_12, rec4x4_13, 
                            rec4x4_20, rec4x4_21, rec4x4_22, rec4x4_23, 
                            rec4x4_30, rec4x4_31, rec4x4_32, rec4x4_33; 
// Reference Pixels for i16x16 : TOP & LEFT & TOP_LEFT
output [`BIT_DEPTH-1:0]		ref00_tl,                                     
							ref00_t,  ref01_t,  ref02_t,  ref03_t,        
							ref04_t,  ref05_t,  ref06_t,  ref07_t,        
							ref08_t,  ref09_t,  ref10_t,  ref11_t,        
							ref12_t,  ref13_t,  ref14_t,  ref15_t,        
							ref00_l,  ref01_l,  ref02_l,  ref03_l,        
							ref04_l,  ref05_l,  ref06_l,  ref07_l,        
							ref08_l,  ref09_l,  ref10_l,  ref11_l,        
							ref12_l,  ref13_l,  ref14_l,  ref15_l;              
// Reference Pixels for U
output [`BIT_DEPTH-1:0]		ref00_tl_u,                                                                          
							ref00_l_u, ref01_l_u, ref02_l_u, ref03_l_u,
							ref04_l_u, ref05_l_u, ref06_l_u, ref07_l_u,
							ref00_t_u, ref01_t_u, ref02_t_u, ref03_t_u,
							ref04_t_u, ref05_t_u, ref06_t_u, ref07_t_u;
// Reference Pixels for V				
output [`BIT_DEPTH-1:0]		ref00_tl_v,
							ref00_l_v, ref01_l_v, ref02_l_v, ref03_l_v, 
							ref04_l_v, ref05_l_v, ref06_l_v, ref07_l_v, 
							ref00_t_v, ref01_t_v, ref02_t_v, ref03_t_v, 
							ref04_t_v, ref05_t_v, ref06_t_v, ref07_t_v; 
// Reference Pixels for i4x4 : TOP & LEFT & TOP_LEFT & TOP_RIGHT
output [`BIT_DEPTH-1:0]		ref4x4_00tl,                                      
							ref4x4_00t,  ref4x4_01t,  ref4x4_02t,  ref4x4_03t,
							ref4x4_00l,  ref4x4_01l,  ref4x4_02l,  ref4x4_03l,
							ref4x4_00tr, ref4x4_01tr, ref4x4_02tr, ref4x4_03tr;

// ********************************************
//                                             
//    Signals DECLARATION               
//                                             
// ********************************************
//-------------Register----------------------//
// i16x16 (MB Level) Reference Pixel Register
reg [`BIT_DEPTH-1:0]		ref00_tl_y_r,     
                            ref00_tr_y_r, ref01_tr_y_r,  ref02_tr_y_r, ref03_tr_y_r,    
							ref00_t_y_r,  ref01_t_y_r,  ref02_t_y_r,  ref03_t_y_r,        
							ref04_t_y_r,  ref05_t_y_r,  ref06_t_y_r,  ref07_t_y_r,        
							ref08_t_y_r,  ref09_t_y_r,  ref10_t_y_r,  ref11_t_y_r,        
							ref12_t_y_r,  ref13_t_y_r,  ref14_t_y_r,  ref15_t_y_r,        
							ref00_l_y_r,  ref01_l_y_r,  ref02_l_y_r,  ref03_l_y_r,        
							ref04_l_y_r,  ref05_l_y_r,  ref06_l_y_r,  ref07_l_y_r,        
							ref08_l_y_r,  ref09_l_y_r,  ref10_l_y_r,  ref11_l_y_r,        
							ref12_l_y_r,  ref13_l_y_r,  ref14_l_y_r,  ref15_l_y_r,
							
							ref00_tl_u_r,                                           
                            ref00_t_u_r,  ref01_t_u_r,  ref02_t_u_r,  ref03_t_u_r,  
                            ref04_t_u_r,  ref05_t_u_r,  ref06_t_u_r,  ref07_t_u_r,  
                            ref00_l_u_r,  ref01_l_u_r,  ref02_l_u_r,  ref03_l_u_r,  
                            ref04_l_u_r,  ref05_l_u_r,  ref06_l_u_r,  ref07_l_u_r,  
 
 							ref00_tl_v_r,                                         
                            ref00_t_v_r,  ref01_t_v_r,  ref02_t_v_r,  ref03_t_v_r,
                            ref04_t_v_r,  ref05_t_v_r,  ref06_t_v_r,  ref07_t_v_r,
                            ref00_l_v_r,  ref01_l_v_r,  ref02_l_v_r,  ref03_l_v_r,
                            ref04_l_v_r,  ref05_l_v_r,  ref06_l_v_r,  ref07_l_v_r;

// i4x4/i16x16 Reconstructed Pixel Buffer
reg  [`BIT_DEPTH-1:0]		rec00_t_r, rec01_t_r, rec02_t_r, rec03_t_r,
							rec10_t_r, rec11_t_r, rec12_t_r, rec13_t_r,
							rec20_t_r, rec21_t_r, rec22_t_r, rec23_t_r,
							rec30_t_r, rec31_t_r, rec32_t_r, rec33_t_r,
							rec00_l_r, rec01_l_r, rec02_l_r, rec03_l_r,
							rec10_l_r, rec11_l_r, rec12_l_r, rec13_l_r,
							rec20_l_r, rec21_l_r, rec22_l_r, rec23_l_r,
							rec30_l_r, rec31_l_r, rec32_l_r, rec33_l_r;
// Saved top_left pixels 						
reg  [`BIT_DEPTH-1:0]		ref_tl_0, ref_tl_1, ref_tl_2,
							ref_tl_3, ref_tl_4, ref_tl_5,
							ref_tl_6, ref_tl_7, ref_tl_8;

wire						luma_ref_update  , chroma_ref_update;
reg 						luma_ref_update_r, chroma_ref_update_r,
							luma_ref_update_r1;

// i4x4 reference mode
reg  [3:0]  				i4x4_bm_r[0:15];
reg  [3:0]  				i4x4_pm_r[0:15];
reg  [3:0] 					left_bm[0:3];
reg  [3:0] 					top_bm[0:3];
wire [15:0]					i4x4_bm_l;
wire [15:0]					i4x4_bm_t;

//-------------Wire----------------------//
wire [`PIC_W_MB_LEN-1 :0] 	mb_x_next;
wire [`PIC_H_MB_LEN-1:0]  	mb_y_next;

reg   	[`BIT_DEPTH-1:0]	ref4x4_00tl,
							ref4x4_00tr, ref4x4_01tr, ref4x4_02tr, ref4x4_03tr,
							ref4x4_00t,  ref4x4_01t,  ref4x4_02t,  ref4x4_03t,
							ref4x4_00l,  ref4x4_01l,  ref4x4_02l,  ref4x4_03l;
							
wire [`BIT_DEPTH*16-1:0]  	wdata_line_y;
wire [`PIC_W_MB_LEN-1:0]  	waddr_line_y;
wire                      	we_line_y; 
wire					  	rd_line_y;
wire [`PIC_W_MB_LEN-1:0]  	raddr_line_y;
wire [`BIT_DEPTH*16-1:0]  	rdata_line_y;
                          	
wire [`BIT_DEPTH*16-1:0]  	wdata_line_uv;
wire [`PIC_W_MB_LEN-1:0]  	waddr_line_uv;
wire                      	we_line_uv;
wire					  	rd_line_uv;
wire [`PIC_W_MB_LEN-1:0]  	raddr_line_uv;
wire [`BIT_DEPTH*16-1:0]  	rdata_line_uv;

wire                     	mode_write_we;  
wire [`PIC_W_MB_LEN-1:0] 	mode_write_addr;
wire [15:0]              	mode_write_data;
wire                     	mode_read_rd;  
wire [`PIC_W_MB_LEN-1:0] 	mode_read_addr;
wire [15:0]              	mode_read_data;

// ********************************************
//                                             
//    Logic DECLARATION               
//                                             
// ********************************************
// next available                                        
assign mb_x_next = (mb_x==mb_x_total) ? 'b0: (mb_x+1'b1);
assign mb_y_next = (mb_x==mb_x_total) ? (mb_y+1'b1):mb_y;
// reg refresh available
assign luma_ref_update   = i4x4_update_i | i16x16_update_i;
assign chroma_ref_update = chroma_update_i;

always @(posedge clk or negedge rst_n)begin
	if(!rst_n) begin
		luma_ref_update_r <= 1'b0;   chroma_ref_update_r <= 1'b0;
		luma_ref_update_r1 <= 1'b0;
	end
	else begin
		luma_ref_update_r <= luma_ref_update;    chroma_ref_update_r <= chroma_ref_update;
		luma_ref_update_r1 <= luma_ref_update_r;
	end
end

//-------------------------------------------------------------
//					MB (16x16) reference pixels
//-------------------------------------------------------------
//--------------- Luma -------------------//
// left
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		ref00_l_y_r <= 8'd0; ref01_l_y_r <= 8'd0; ref02_l_y_r <= 8'd0; ref03_l_y_r <= 8'd0;
		ref04_l_y_r <= 8'd0; ref05_l_y_r <= 8'd0; ref06_l_y_r <= 8'd0; ref07_l_y_r <= 8'd0;
		ref08_l_y_r <= 8'd0; ref09_l_y_r <= 8'd0; ref10_l_y_r <= 8'd0; ref11_l_y_r <= 8'd0;
		ref12_l_y_r <= 8'd0; ref13_l_y_r <= 8'd0; ref14_l_y_r <= 8'd0; ref15_l_y_r <= 8'd0;
	end
	else if(luma_ref_update_r)begin
		if (mb_x_next) begin
			ref00_l_y_r <= rec00_l_r; ref01_l_y_r <= rec01_l_r; ref02_l_y_r <= rec02_l_r; ref03_l_y_r <= rec03_l_r;
			ref04_l_y_r <= rec10_l_r; ref05_l_y_r <= rec11_l_r; ref06_l_y_r <= rec12_l_r; ref07_l_y_r <= rec13_l_r;	
			ref08_l_y_r <= rec20_l_r; ref09_l_y_r <= rec21_l_r; ref10_l_y_r <= rec22_l_r; ref11_l_y_r <= rec23_l_r;	
			ref12_l_y_r <= rec30_l_r; ref13_l_y_r <= rec31_l_r; ref14_l_y_r <= rec32_l_r; ref15_l_y_r <= rec33_l_r;	
		end
		else begin
			ref00_l_y_r <= 8'd0; ref01_l_y_r <= 8'd0; ref02_l_y_r <= 8'd0; ref03_l_y_r <= 8'd0;
			ref04_l_y_r <= 8'd0; ref05_l_y_r <= 8'd0; ref06_l_y_r <= 8'd0; ref07_l_y_r <= 8'd0;
			ref08_l_y_r <= 8'd0; ref09_l_y_r <= 8'd0; ref10_l_y_r <= 8'd0; ref11_l_y_r <= 8'd0;
			ref12_l_y_r <= 8'd0; ref13_l_y_r <= 8'd0; ref14_l_y_r <= 8'd0; ref15_l_y_r <= 8'd0;
		end
	end
end
			
// top, top_left
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		ref00_tl_y_r <= 8'd0;
		ref00_t_y_r <= 8'd0; ref01_t_y_r <= 8'd0; ref02_t_y_r <= 8'd0; ref03_t_y_r <= 8'd0;
		ref04_t_y_r <= 8'd0; ref05_t_y_r <= 8'd0; ref06_t_y_r <= 8'd0; ref07_t_y_r <= 8'd0;
		ref08_t_y_r <= 8'd0; ref09_t_y_r <= 8'd0; ref10_t_y_r <= 8'd0; ref11_t_y_r <= 8'd0;
		ref12_t_y_r <= 8'd0; ref13_t_y_r <= 8'd0; ref14_t_y_r <= 8'd0; ref15_t_y_r <= 8'd0;
	end
	else if(luma_ref_update_r)begin
		if (mb_y_next) begin
			ref00_tl_y_r <= ref15_t_y_r;
			ref00_t_y_r <= rdata_line_y[127:120]; ref01_t_y_r <= rdata_line_y[119:112]; ref02_t_y_r <= rdata_line_y[111:104]; ref03_t_y_r <= rdata_line_y[103: 96];
			ref04_t_y_r <= rdata_line_y[ 95: 88]; ref05_t_y_r <= rdata_line_y[ 87: 80]; ref06_t_y_r <= rdata_line_y[ 79: 72]; ref07_t_y_r <= rdata_line_y[ 71: 64];
			ref08_t_y_r <= rdata_line_y[ 63: 56]; ref09_t_y_r <= rdata_line_y[ 55: 48]; ref10_t_y_r <= rdata_line_y[ 47: 40]; ref11_t_y_r <= rdata_line_y[ 39: 32];
			ref12_t_y_r <= rdata_line_y[ 31: 24]; ref13_t_y_r <= rdata_line_y[ 23: 16]; ref14_t_y_r <= rdata_line_y[ 15:  8]; ref15_t_y_r <= rdata_line_y[  7:  0];
		end
		else begin
			ref00_tl_y_r <= 8'd0;
			ref00_t_y_r <= 8'd0; ref01_t_y_r <= 8'd0; ref02_t_y_r <= 8'd0; ref03_t_y_r <= 8'd0;
			ref04_t_y_r <= 8'd0; ref05_t_y_r <= 8'd0; ref06_t_y_r <= 8'd0; ref07_t_y_r <= 8'd0;
			ref08_t_y_r <= 8'd0; ref09_t_y_r <= 8'd0; ref10_t_y_r <= 8'd0; ref11_t_y_r <= 8'd0;
			ref12_t_y_r <= 8'd0; ref13_t_y_r <= 8'd0; ref14_t_y_r <= 8'd0; ref15_t_y_r <= 8'd0;
		end
	end
end

// top_right
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		ref00_tr_y_r <= 'b0;
		ref01_tr_y_r <= 'b0; 
		ref02_tr_y_r <= 'b0;
		ref03_tr_y_r <= 'b0;
	end
	else if (luma_ref_update_r1) begin
		if (mb_y_next) begin
			ref00_tr_y_r <= rdata_line_y[127:120];
			ref01_tr_y_r <= rdata_line_y[119:112];
			ref02_tr_y_r <= rdata_line_y[111:104];
			ref03_tr_y_r <= rdata_line_y[103: 96];
		end
		else begin
			ref00_tr_y_r <= 'b0;
			ref01_tr_y_r <= 'b0;	
			ref02_tr_y_r <= 'b0;	
			ref03_tr_y_r <= 'b0;	
		end
	end
end		

//--------------- Chroma -------------------//
// left
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		ref00_l_u_r <= 8'd0; ref01_l_u_r <= 8'd0; ref02_l_u_r <= 8'd0; ref03_l_u_r <= 8'd0;
		ref04_l_u_r <= 8'd0; ref05_l_u_r <= 8'd0; ref06_l_u_r <= 8'd0; ref07_l_u_r <= 8'd0;
		ref00_l_v_r <= 8'd0; ref01_l_v_r <= 8'd0; ref02_l_v_r <= 8'd0; ref03_l_v_r <= 8'd0;
		ref04_l_v_r <= 8'd0; ref05_l_v_r <= 8'd0; ref06_l_v_r <= 8'd0; ref07_l_v_r <= 8'd0;
	end
	else if(chroma_ref_update_r)begin
		if (mb_x_next) begin
			ref00_l_u_r <= rec00_l_r; ref01_l_u_r <= rec01_l_r; ref02_l_u_r <= rec02_l_r; ref03_l_u_r <= rec03_l_r;
			ref04_l_u_r <= rec10_l_r; ref05_l_u_r <= rec11_l_r; ref06_l_u_r <= rec12_l_r; ref07_l_u_r <= rec13_l_r;	
			ref00_l_v_r <= rec20_l_r; ref01_l_v_r <= rec21_l_r; ref02_l_v_r <= rec22_l_r; ref03_l_v_r <= rec23_l_r;	
			ref04_l_v_r <= rec30_l_r; ref05_l_v_r <= rec31_l_r; ref06_l_v_r <= rec32_l_r; ref07_l_v_r <= rec33_l_r;	
		end
		else begin
			ref00_l_u_r <= 8'd0; ref01_l_u_r <= 8'd0; ref02_l_u_r <= 8'd0; ref03_l_u_r <= 8'd0; 
			ref04_l_u_r <= 8'd0; ref05_l_u_r <= 8'd0; ref06_l_u_r <= 8'd0; ref07_l_u_r <= 8'd0; 
			ref00_l_v_r <= 8'd0; ref01_l_v_r <= 8'd0; ref02_l_v_r <= 8'd0; ref03_l_v_r <= 8'd0; 
			ref04_l_v_r <= 8'd0; ref05_l_v_r <= 8'd0; ref06_l_v_r <= 8'd0; ref07_l_v_r <= 8'd0; 
		end
	end
end
			
// top
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		ref00_tl_u_r <= 8'd0;
		ref00_t_u_r  <= 8'd0; ref01_t_u_r <= 8'd0; ref02_t_u_r <= 8'd0; ref03_t_u_r <= 8'd0;
		ref04_t_u_r  <= 8'd0; ref05_t_u_r <= 8'd0; ref06_t_u_r <= 8'd0; ref07_t_u_r <= 8'd0;
		ref00_tl_v_r <= 8'd0;
		ref00_t_v_r  <= 8'd0; ref01_t_v_r <= 8'd0; ref02_t_v_r <= 8'd0; ref03_t_v_r <= 8'd0;
		ref04_t_v_r  <= 8'd0; ref05_t_v_r <= 8'd0; ref06_t_v_r <= 8'd0; ref07_t_v_r <= 8'd0;
	end
	else if(chroma_ref_update_r)begin
		if (mb_y_next) begin
			ref00_tl_u_r <= ref07_t_u_r;
			ref00_t_u_r  <= rdata_line_uv[127:120]; ref01_t_u_r <= rdata_line_uv[119:112]; ref02_t_u_r <= rdata_line_uv[111:104]; ref03_t_u_r <= rdata_line_uv[103: 96];
			ref04_t_u_r  <= rdata_line_uv[ 95: 88]; ref05_t_u_r <= rdata_line_uv[ 87: 80]; ref06_t_u_r <= rdata_line_uv[ 79: 72]; ref07_t_u_r <= rdata_line_uv[ 71: 64];
			ref00_tl_v_r <= ref07_t_v_r;
			ref00_t_v_r  <= rdata_line_uv[ 63: 56]; ref01_t_v_r <= rdata_line_uv[ 55: 48]; ref02_t_v_r <= rdata_line_uv[ 47: 40]; ref03_t_v_r <= rdata_line_uv[ 39: 32];
			ref04_t_v_r  <= rdata_line_uv[ 31: 24]; ref05_t_v_r <= rdata_line_uv[ 23: 16]; ref06_t_v_r <= rdata_line_uv[ 15:  8]; ref07_t_v_r <= rdata_line_uv[  7:  0];
		end
		else begin
			ref00_tl_u_r <= 8'd0;
			ref00_t_u_r  <= 8'd0; ref01_t_u_r <= 8'd0; ref02_t_u_r <= 8'd0; ref03_t_u_r <= 8'd0; 
			ref04_t_u_r  <= 8'd0; ref05_t_u_r <= 8'd0; ref06_t_u_r <= 8'd0; ref07_t_u_r <= 8'd0; 
			ref00_tl_v_r <= 8'd0;
			ref00_t_v_r  <= 8'd0; ref01_t_v_r <= 8'd0; ref02_t_v_r <= 8'd0; ref03_t_v_r <= 8'd0; 
			ref04_t_v_r  <= 8'd0; ref05_t_v_r <= 8'd0; ref06_t_v_r <= 8'd0; ref07_t_v_r <= 8'd0; 
		end
	end
end
 

assign ref00_tl = ref00_tl_y_r;                                    
assign ref00_t = ref00_t_y_r; assign ref01_t = ref01_t_y_r; assign ref02_t = ref02_t_y_r; assign ref03_t = ref03_t_y_r;          
assign ref04_t = ref04_t_y_r; assign ref05_t = ref05_t_y_r; assign ref06_t = ref06_t_y_r; assign ref07_t = ref07_t_y_r;          
assign ref08_t = ref08_t_y_r; assign ref09_t = ref09_t_y_r; assign ref10_t = ref10_t_y_r; assign ref11_t = ref11_t_y_r;          
assign ref12_t = ref12_t_y_r; assign ref13_t = ref13_t_y_r; assign ref14_t = ref14_t_y_r; assign ref15_t = ref15_t_y_r;          
assign ref00_l = ref00_l_y_r; assign ref01_l = ref01_l_y_r; assign ref02_l = ref02_l_y_r; assign ref03_l = ref03_l_y_r;          
assign ref04_l = ref04_l_y_r; assign ref05_l = ref05_l_y_r; assign ref06_l = ref06_l_y_r; assign ref07_l = ref07_l_y_r;          
assign ref08_l = ref08_l_y_r; assign ref09_l = ref09_l_y_r; assign ref10_l = ref10_l_y_r; assign ref11_l = ref11_l_y_r;          
assign ref12_l = ref12_l_y_r; assign ref13_l = ref13_l_y_r; assign ref14_l = ref14_l_y_r; assign ref15_l = ref15_l_y_r;          
                                                
assign ref00_tl_u = ref00_tl_u_r;                                     
assign ref00_t_u  = ref00_t_u_r ;  assign ref01_t_u = ref01_t_u_r; assign ref02_t_u = ref02_t_u_r; assign ref03_t_u = ref03_t_u_r; 
assign ref04_t_u  = ref04_t_u_r ;  assign ref05_t_u = ref05_t_u_r; assign ref06_t_u = ref06_t_u_r; assign ref07_t_u = ref07_t_u_r; 
assign ref00_l_u  = ref00_l_u_r ;  assign ref01_l_u = ref01_l_u_r; assign ref02_l_u = ref02_l_u_r; assign ref03_l_u = ref03_l_u_r;
assign ref04_l_u  = ref04_l_u_r ;  assign ref05_l_u = ref05_l_u_r; assign ref06_l_u = ref06_l_u_r; assign ref07_l_u = ref07_l_u_r;
                                               
assign ref00_tl_v = ref00_tl_v_r;                                    
assign ref00_t_v  = ref00_t_v_r ;  assign ref01_t_v = ref01_t_v_r; assign ref02_t_v = ref02_t_v_r; assign ref03_t_v = ref03_t_v_r;
assign ref04_t_v  = ref04_t_v_r ;  assign ref05_t_v = ref05_t_v_r; assign ref06_t_v = ref06_t_v_r; assign ref07_t_v = ref07_t_v_r;
assign ref00_l_v  = ref00_l_v_r ;  assign ref01_l_v = ref01_l_v_r; assign ref02_l_v = ref02_l_v_r; assign ref03_l_v = ref03_l_v_r;
assign ref04_l_v  = ref04_l_v_r ;  assign ref05_l_v = ref05_l_v_r; assign ref06_l_v = ref06_l_v_r; assign ref07_l_v = ref07_l_v_r;

//--------------- Memory -------------------//
// Luma R/W MEM
assign we_line_y    = luma_ref_update_r;
assign waddr_line_y = mb_x;
assign wdata_line_y = {rec00_t_r, rec01_t_r, rec02_t_r, rec03_t_r,
					   rec10_t_r, rec11_t_r, rec12_t_r, rec13_t_r,
					   rec20_t_r, rec21_t_r, rec22_t_r, rec23_t_r,
					   rec30_t_r, rec31_t_r, rec32_t_r, rec33_t_r};										  
assign rd_line_y	= luma_ref_update | luma_ref_update_r;					  
assign raddr_line_y = luma_ref_update ? mb_x_next : (mb_x_next+1'b1);

// Chroma R/W MEM 						  
assign we_line_uv    = chroma_ref_update_r;
assign waddr_line_uv = mb_x;
assign wdata_line_uv = {rec00_t_r, rec01_t_r, rec02_t_r, rec03_t_r, 
						rec10_t_r, rec11_t_r, rec12_t_r, rec13_t_r, 
						rec20_t_r, rec21_t_r, rec22_t_r, rec23_t_r, 
						rec30_t_r, rec31_t_r, rec32_t_r, rec33_t_r};
assign rd_line_uv    = chroma_ref_update;						
assign raddr_line_uv = mb_x_next;						

// MEM STORAGE						
intra_ram_2p_128x120 u_line_y_pixel(
				.clk     ( clk          ),
				.wdata   ( wdata_line_y ),
				.waddr   ( waddr_line_y ),
				.we      ( we_line_y    ),
				.rd      ( rd_line_y    ),
				.raddr   ( raddr_line_y ),
				.rdata   ( rdata_line_y )
);

intra_ram_2p_128x120 u_line_uv_pixel(
				.clk     ( clk           ),
				.wdata   ( wdata_line_uv ),
				.waddr   ( waddr_line_uv ),
				.we      ( we_line_uv    ),
				.rd      ( rd_line_uv    ),
				.raddr   ( raddr_line_uv ),
				.rdata   ( rdata_line_uv )
);

//-------------------------------------------------------------
//			Sub-MB (4x4) reference pixels                
//-------------------------------------------------------------
wire [1:0] blk4x4_v, blk4x4_h; // zig-zag scan to 2d matrix
assign blk4x4_v={i4x4_num_i[3],i4x4_num_i[1]};
assign blk4x4_h={i4x4_num_i[2],i4x4_num_i[0]};

// top
always @(*)begin
	case(blk4x4_h)
		2'd0:begin ref4x4_00t = rec00_t_r; ref4x4_01t = rec01_t_r; ref4x4_02t = rec02_t_r; ref4x4_03t = rec03_t_r; end
		2'd1:begin ref4x4_00t = rec10_t_r; ref4x4_01t = rec11_t_r; ref4x4_02t = rec12_t_r; ref4x4_03t = rec13_t_r; end
		2'd2:begin ref4x4_00t = rec20_t_r; ref4x4_01t = rec21_t_r; ref4x4_02t = rec22_t_r; ref4x4_03t = rec23_t_r; end
		2'd3:begin ref4x4_00t = rec30_t_r; ref4x4_01t = rec31_t_r; ref4x4_02t = rec32_t_r; ref4x4_03t = rec33_t_r; end
  endcase
end

// left
always @(*)begin
	case(blk4x4_v)
		2'd0:begin ref4x4_00l = rec00_l_r; ref4x4_01l = rec01_l_r; ref4x4_02l = rec02_l_r; ref4x4_03l = rec03_l_r; end
		2'd1:begin ref4x4_00l = rec10_l_r; ref4x4_01l = rec11_l_r; ref4x4_02l = rec12_l_r; ref4x4_03l = rec13_l_r; end
		2'd2:begin ref4x4_00l = rec20_l_r; ref4x4_01l = rec21_l_r; ref4x4_02l = rec22_l_r; ref4x4_03l = rec23_l_r; end
		2'd3:begin ref4x4_00l = rec30_l_r; ref4x4_01l = rec31_l_r; ref4x4_02l = rec32_l_r; ref4x4_03l = rec33_l_r; end
  endcase
end

// top right
always @(*)begin
	case(blk4x4_h)
		2'd0:begin ref4x4_00tr = rec10_t_r; ref4x4_01tr = rec11_t_r; ref4x4_02tr = rec12_t_r; ref4x4_03tr = rec13_t_r; end
		2'd1:begin ref4x4_00tr = rec20_t_r; ref4x4_01tr = rec21_t_r; ref4x4_02tr = rec22_t_r; ref4x4_03tr = rec23_t_r; end
		2'd2:begin ref4x4_00tr = rec30_t_r; ref4x4_01tr = rec31_t_r; ref4x4_02tr = rec32_t_r; ref4x4_03tr = rec33_t_r; end
		2'd3:begin ref4x4_00tr = ref00_tr_y_r;ref4x4_01tr = ref01_tr_y_r;ref4x4_02tr = ref02_tr_y_r;ref4x4_03tr = ref03_tr_y_r;end
  endcase
end

//-------------------------------------
// 			 top left (ref_tl_x)
//
//      00,01,02,03 
//  00, 0  1  2
//  01, 3  4  5
//  02, 6  7  8
//  03
//-------------------------------------
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		ref_tl_0 <= 'd0;ref_tl_1 <= 'd0;ref_tl_2 <= 'd0;
		ref_tl_3 <= 'd0;ref_tl_4 <= 'd0;ref_tl_5 <= 'd0;
		ref_tl_6 <= 'd0;ref_tl_7 <= 'd0;ref_tl_8 <= 'd0;
	end
	else if(tq_i4x4_val_i)
		if     (tq_i4x4_num_i==4'd0)	 ref_tl_0 <= rec4x4_33;
		else if(tq_i4x4_num_i==4'd1)	 ref_tl_1 <= rec4x4_33;
		else if(tq_i4x4_num_i==4'd2)	 ref_tl_3 <= rec4x4_33;
		else if(tq_i4x4_num_i==4'd3)	 ref_tl_4 <= rec4x4_33;
		else if(tq_i4x4_num_i==4'd4)	 ref_tl_2 <= rec4x4_33;
		else if(tq_i4x4_num_i==4'd6)	 ref_tl_5 <= rec4x4_33;
		else if(tq_i4x4_num_i==4'd8)	 ref_tl_6 <= rec4x4_33;
		else if(tq_i4x4_num_i==4'd9)	 ref_tl_7 <= rec4x4_33;
		else if(tq_i4x4_num_i==4'd12) 	 ref_tl_8 <= rec4x4_33;
end

always @(*)begin
	case(i4x4_num_i)
		4'd0 :ref4x4_00tl = ref00_tl_y_r;
		4'd1 :ref4x4_00tl = ref03_t_y_r;
		4'd2 :ref4x4_00tl = ref03_l_y_r;
		4'd3 :ref4x4_00tl = ref_tl_0;
		4'd4 :ref4x4_00tl = ref07_t_y_r;
		4'd5 :ref4x4_00tl = ref11_t_y_r;
		4'd6 :ref4x4_00tl = ref_tl_1;
		4'd7 :ref4x4_00tl = ref_tl_2;
		4'd8 :ref4x4_00tl = ref07_l_y_r;
		4'd9 :ref4x4_00tl = ref_tl_3;
		4'd10:ref4x4_00tl = ref11_l_y_r;
		4'd11:ref4x4_00tl = ref_tl_6;
		4'd12:ref4x4_00tl = ref_tl_4;
		4'd13:ref4x4_00tl = ref_tl_5;
		4'd14:ref4x4_00tl = ref_tl_7;
		4'd15:ref4x4_00tl = ref_tl_8;
	endcase
end

//-------------------------------------------------------------
//					MB (16x16) reference intra 4x4 mode
//-------------------------------------------------------------
// Reference Neighbor Mode
assign  i4x4_bm_o   = { i4x4_bm_r[0] , i4x4_bm_r[1] , i4x4_bm_r[2] , i4x4_bm_r[3],
						i4x4_bm_r[4] , i4x4_bm_r[5] , i4x4_bm_r[6] , i4x4_bm_r[7],
						i4x4_bm_r[8] , i4x4_bm_r[9] , i4x4_bm_r[10], i4x4_bm_r[11],
						i4x4_bm_r[12], i4x4_bm_r[13], i4x4_bm_r[14], i4x4_bm_r[15]};
										
assign  i4x4_pm_o   = { i4x4_pm_r[0] , i4x4_pm_r[1] , i4x4_pm_r[2] , i4x4_pm_r[3],
						i4x4_pm_r[4] , i4x4_pm_r[5] , i4x4_pm_r[6] , i4x4_pm_r[7],
						i4x4_pm_r[8] , i4x4_pm_r[9] , i4x4_pm_r[10], i4x4_pm_r[11],
						i4x4_pm_r[12], i4x4_pm_r[13], i4x4_pm_r[14], i4x4_pm_r[15]};

assign i4x4_bm_l = {left_bm[0], left_bm[1], left_bm[2], left_bm[3]};						
assign i4x4_bm_t = {top_bm[0] , top_bm[1] , top_bm[2] , top_bm[3] };

// Mode gen module
intra_4x4_pred_mode_gen u_intra_4x4_pred_mode_gen(
				.clk  			( clk  			    ),
				.rst_n			( rst_n			    ),
				.mb_x			( mb_x			    ),
				.mb_y			( mb_y			    ),
				.blk4x4_num		( i4x4_num_i		),
				.intra4x4_bm_c	( i4x4_bm_o	    	),
				.intra4x4_bm_l	( i4x4_bm_l	    	),
				.intra4x4_bm_t	( i4x4_bm_t	    	),				
				.mode_pred      ( i4x4_pred_mode_o  )
);
							
// Save current MB Intra bm (actually used mode) and pm (predicted mode by gen)			
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin: i_intra4x4_bm
	    integer i  ; 
		for(i=0; i<=15; i=i+1)begin
			i4x4_bm_r[i] <= 4'd2;
		end
	end
	else if(i4x4_min_val_i)
		i4x4_bm_r[i4x4_min_num_i] <= i4x4_min_mode_i;
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin: i_intra4x4_pm
	  integer i ; 
		for(i=0; i<=15; i=i+1)begin
			i4x4_pm_r[i] <= 4'd2;
		end
	end
	else if(i4x4_end_i)
		i4x4_pm_r[i4x4_num_i]<= i4x4_pred_mode_o;
end

// Reset bm mode if final mode is 16x16
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		left_bm[0] <= 'd0;
		left_bm[1] <= 'd0;
		left_bm[2] <= 'd0;
		left_bm[3] <= 'd0;
	end
	else if (i4x4_update_i) begin
		left_bm[0] <= i4x4_bm_r[5];
		left_bm[1] <= i4x4_bm_r[7];
		left_bm[2] <= i4x4_bm_r[13];
		left_bm[3] <= i4x4_bm_r[15];
	end
	else if (i16x16_update_i) begin
		left_bm[0] <= 4'h2;
		left_bm[1] <= 4'h2;
		left_bm[2] <= 4'h2;
		left_bm[3] <= 4'h2;		
	end
end

//----------- 4x4 Mode Ram --------------//
// mode ram write 
assign mode_write_data = i16x16_update_i ? {4'h2, 4'h2, 4'h2, 4'h2} : 
									 {i4x4_bm_r[10], 
									  i4x4_bm_r[11], 
									  i4x4_bm_r[14], 
									  i4x4_bm_r[15]};
assign mode_write_we   = i4x4_update_i | i16x16_update_i;
assign mode_write_addr = mb_x;

// mode ram read
assign mode_read_rd    = 1'b1;
assign mode_read_addr  = mb_x;          
always @(*) begin
	{top_bm[0], top_bm[1], top_bm[2], top_bm[3]} = mode_read_data;
end

intra_ram_2p_16x120 u_pred_mode (   
				.clk     ( clk       		),
				.wdata   ( mode_write_data 	),
				.waddr   ( mode_write_addr 	),
				.we      ( mode_write_we    ),
				.rd      ( mode_read_rd    	),
				.raddr   ( mode_read_addr 	),
				.rdata   ( mode_read_data 	)
);

//-------------------------------------------------------------
//			Reconstructed Pixels Buffer                
//-------------------------------------------------------------
// top

reg			i4x4_rec_end_r ,
            i4x4_rec_end_r1,
            i4x4_rec_end_r2,
            i4x4_rec_end_r3,
            i4x4_rec_end_r4;

reg	[3:0]	i4x4_rec_num_r;

reg	[7:0]	rec0_t_r, rec0_l_r,
            rec1_t_r, rec1_l_r,
            rec2_t_r, rec2_l_r,
            rec3_t_r, rec3_l_r;


always @(posedge clk or negedge rst_n)begin
	if (!rst_n) begin
		i4x4_rec_end_r  <= 'b0;
		i4x4_rec_end_r1 <= 'b0;
		i4x4_rec_end_r2 <= 'b0;
		i4x4_rec_end_r3 <= 'b0;
		i4x4_rec_end_r4 <= 'b0;
	end
	else begin
		i4x4_rec_end_r  <= i4x4_end_i  	   ;
		i4x4_rec_end_r1 <= i4x4_rec_end_r  ;
		i4x4_rec_end_r2 <= i4x4_rec_end_r1 ;
		i4x4_rec_end_r3 <= i4x4_rec_end_r2 ;
		i4x4_rec_end_r4 <= i4x4_rec_end_r3 ;
	end
end

always @(posedge clk or negedge rst_n)begin
	if (!rst_n)
		i4x4_rec_num_r <= 'b0;
	else if (tq_i4x4_val_i)
		i4x4_rec_num_r <= tq_i4x4_num_i;
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		rec0_t_r <= 'd0; rec0_l_r <= 'd0; 
		rec1_t_r <= 'd0; rec1_l_r <= 'd0; 
		rec2_t_r <= 'd0; rec2_l_r <= 'd0; 
		rec3_t_r <= 'd0; rec3_l_r <= 'd0; 
	end
	else if (tq_i4x4_val_i) begin
		rec0_t_r <= rec4x4_30; rec0_l_r <= rec4x4_03;
		rec1_t_r <= rec4x4_31; rec1_l_r <= rec4x4_13;
		rec2_t_r <= rec4x4_32; rec2_l_r <= rec4x4_23;
        rec3_t_r <= rec4x4_33; rec3_l_r <= rec4x4_33;
	end
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		rec00_t_r <= 'd0;
		rec01_t_r <= 'd0;
		rec02_t_r <= 'd0;
		rec03_t_r <= 'd0;
	end
	else if (start_i) begin
		rec00_t_r <= ref00_t_y_r;
		rec01_t_r <= ref01_t_y_r;
		rec02_t_r <= ref02_t_y_r;
		rec03_t_r <= ref03_t_y_r;
	end
	else if (i4x4_rec_end_r4) begin
	 	if (tq_i4x4_val_i && {tq_i4x4_num_i[2], tq_i4x4_num_i[0]}==2'b00) begin
	 		rec00_t_r <= rec4x4_30;
	 		rec01_t_r <= rec4x4_31;
	 		rec02_t_r <= rec4x4_32;
	 		rec03_t_r <= rec4x4_33;
	 	end
	 	else if ({i4x4_rec_num_r[2], i4x4_rec_num_r[0]}==2'b00) begin
	 		rec00_t_r <= rec0_t_r;
	 		rec01_t_r <= rec1_t_r;
	 		rec02_t_r <= rec2_t_r;
	 		rec03_t_r <= rec3_t_r;
		end
	end
	else if ((tq_i16x16_val_i && tq_i16x16_num_i==4'd10) || (tq_cb_val_i && tq_cb_num_i==4'd2)) begin
		rec00_t_r <= rec4x4_30;
		rec01_t_r <= rec4x4_31;
		rec02_t_r <= rec4x4_32;
	    rec03_t_r <= rec4x4_33;
	end
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		rec10_t_r <= 'd0;
		rec11_t_r <= 'd0;
		rec12_t_r <= 'd0;
		rec13_t_r <= 'd0;
	end
	else if (start_i) begin
		rec10_t_r <= ref04_t_y_r;
		rec11_t_r <= ref05_t_y_r;
		rec12_t_r <= ref06_t_y_r;
		rec13_t_r <= ref07_t_y_r;
	end
	else if (i4x4_rec_end_r4) begin
		if (tq_i4x4_val_i && {tq_i4x4_num_i[2], tq_i4x4_num_i[0]}==2'b01) begin
			rec10_t_r <= rec4x4_30;
			rec11_t_r <= rec4x4_31;
			rec12_t_r <= rec4x4_32;
			rec13_t_r <= rec4x4_33;
		end
		else if ({i4x4_rec_num_r[2], i4x4_rec_num_r[0]}==2'b01) begin
			rec10_t_r <= rec0_t_r;
		    rec11_t_r <= rec1_t_r;
		    rec12_t_r <= rec2_t_r;
		    rec13_t_r <= rec3_t_r;
		end
	end
	else if ((tq_i16x16_val_i && tq_i16x16_num_i==4'd11) || (tq_cb_val_i && tq_cb_num_i==4'd3)) begin
		rec10_t_r <= rec4x4_30;
		rec11_t_r <= rec4x4_31;
		rec12_t_r <= rec4x4_32;
	    rec13_t_r <= rec4x4_33;
	end
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		rec20_t_r <= 'd0;
		rec21_t_r <= 'd0;
		rec22_t_r <= 'd0;
		rec23_t_r <= 'd0;
	end
	else if (start_i) begin
		rec20_t_r <= ref08_t_y_r;
		rec21_t_r <= ref09_t_y_r;
		rec22_t_r <= ref10_t_y_r;
		rec23_t_r <= ref11_t_y_r;
	end
	else if (i4x4_rec_end_r4) begin
		if (tq_i4x4_val_i && {tq_i4x4_num_i[2], tq_i4x4_num_i[0]}==2'b10) begin
			rec20_t_r <= rec4x4_30;
			rec21_t_r <= rec4x4_31;
			rec22_t_r <= rec4x4_32;
			rec23_t_r <= rec4x4_33;
		end
		else if ({i4x4_rec_num_r[2], i4x4_rec_num_r[0]}==2'b10) begin
			rec20_t_r <= rec0_t_r;
			rec21_t_r <= rec1_t_r;
			rec22_t_r <= rec2_t_r;
		    rec23_t_r <= rec3_t_r;
		end
	end
	else if ((tq_i16x16_val_i && tq_i16x16_num_i==4'd14) || (tq_cr_val_i && tq_cr_num_i==4'd2)) begin
		rec20_t_r <= rec4x4_30;
		rec21_t_r <= rec4x4_31;
		rec22_t_r <= rec4x4_32;
	    rec23_t_r <= rec4x4_33;
	end
end

always @(posedge clk or negedge rst_n)begin                                                  
	if(!rst_n)begin                                                                          
		rec30_t_r <= 'd0;                                                                    
		rec31_t_r <= 'd0;                                                                    
		rec32_t_r <= 'd0;                                                                    
		rec33_t_r <= 'd0;                                                                    
	end
	else if (start_i) begin
		rec30_t_r <= ref12_t_y_r;
		rec31_t_r <= ref13_t_y_r;
		rec32_t_r <= ref14_t_y_r;
		rec33_t_r <= ref15_t_y_r;
	end                                                                                      
	else if (i4x4_rec_end_r4) begin
		if (tq_i4x4_val_i && {tq_i4x4_num_i[2], tq_i4x4_num_i[0]}==2'b11) begin
			rec30_t_r <= rec4x4_30;
			rec31_t_r <= rec4x4_31;
			rec32_t_r <= rec4x4_32;
			rec33_t_r <= rec4x4_33;
		end
		else if ({i4x4_rec_num_r[2], i4x4_rec_num_r[0]}==2'b11) begin
			rec30_t_r <= rec0_t_r;
			rec31_t_r <= rec1_t_r;
			rec32_t_r <= rec2_t_r;
		    rec33_t_r <= rec3_t_r;
		end
	end
	else if ((tq_i16x16_val_i && tq_i16x16_num_i==4'd15) || (tq_cr_val_i && tq_cr_num_i==4'd3)) begin
		rec30_t_r <= rec4x4_30;                                                              
		rec31_t_r <= rec4x4_31;                                                              
		rec32_t_r <= rec4x4_32;                                                              
	    rec33_t_r <= rec4x4_33;                                                              
	end                                                                                      
end                                                                                          

// left
always @(posedge clk or negedge rst_n)begin                                                  
	if(!rst_n)begin                                                                          
		rec00_l_r <= 'd0;                                                                    
		rec01_l_r <= 'd0;                                                                    
		rec02_l_r <= 'd0;                                                                    
		rec03_l_r <= 'd0;                                                                    
	end
	else if (start_i) begin
		rec00_l_r <= ref00_l_y_r;
		rec01_l_r <= ref01_l_y_r;
		rec02_l_r <= ref02_l_y_r;
		rec03_l_r <= ref03_l_y_r;
	end                                                                                      
	else if (i4x4_rec_end_r4) begin
		if (tq_i4x4_val_i && {tq_i4x4_num_i[3], tq_i4x4_num_i[1]}==2'b00) begin
			rec00_l_r <= rec4x4_03;
			rec01_l_r <= rec4x4_13;
			rec02_l_r <= rec4x4_23;
		    rec03_l_r <= rec4x4_33;
		end
		else if ({i4x4_rec_num_r[3], i4x4_rec_num_r[1]}==2'b00) begin
			rec00_l_r <= rec0_l_r;
			rec01_l_r <= rec1_l_r;
			rec02_l_r <= rec2_l_r;
		    rec03_l_r <= rec3_l_r;
		end	
	end
	else if ((tq_i16x16_val_i && tq_i16x16_num_i==4'd5) || (tq_cb_val_i && tq_cb_num_i==4'd1)) begin
		rec00_l_r <= rec4x4_03;                                                              
		rec01_l_r <= rec4x4_13;                                                              
		rec02_l_r <= rec4x4_23;                                                              
	    rec03_l_r <= rec4x4_33;                                                              
	end                                                                                      
end

always @(posedge clk or negedge rst_n)begin                                                  
	if(!rst_n)begin                                                                          
		rec10_l_r <= 'd0;                                                                    
		rec11_l_r <= 'd0;                                                                    
		rec12_l_r <= 'd0;                                                                    
		rec13_l_r <= 'd0;                                                                    
	end   
	else if (start_i) begin
		rec10_l_r <= ref04_l_y_r;
		rec11_l_r <= ref05_l_y_r;
		rec12_l_r <= ref06_l_y_r;
		rec13_l_r <= ref07_l_y_r;
	end                                                                                    
	else if (i4x4_rec_end_r4) begin
		if (tq_i4x4_val_i && {tq_i4x4_num_i[3], tq_i4x4_num_i[1]}==2'b01) begin
			rec10_l_r <= rec4x4_03;
			rec11_l_r <= rec4x4_13;
			rec12_l_r <= rec4x4_23;
			rec13_l_r <= rec4x4_33;
	    end
	    else if ({i4x4_rec_num_r[3], i4x4_rec_num_r[1]}==2'b01) begin
	    	rec10_l_r <= rec0_l_r;
	    	rec11_l_r <= rec1_l_r;
	    	rec12_l_r <= rec2_l_r;
	    	rec13_l_r <= rec3_l_r;
	    end                  	
	end
	else if ((tq_i16x16_val_i && tq_i16x16_num_i==4'd7) || (tq_cb_val_i && tq_cb_num_i==4'd3)) begin
		rec10_l_r <= rec4x4_03;                                                              
		rec11_l_r <= rec4x4_13;                                                              
		rec12_l_r <= rec4x4_23;                                                              
	    rec13_l_r <= rec4x4_33;                                                              
	end                                                                                      
end

always @(posedge clk or negedge rst_n)begin                                                  
	if(!rst_n)begin                                                                          
		rec20_l_r <= 'd0;                                                                    
		rec21_l_r <= 'd0;                                                                    
		rec22_l_r <= 'd0;                                                                    
		rec23_l_r <= 'd0;                                                                    
	end          
	else if (start_i) begin
		rec20_l_r <= ref08_l_y_r;
		rec21_l_r <= ref09_l_y_r;
		rec22_l_r <= ref10_l_y_r;
		rec23_l_r <= ref11_l_y_r;
	end                                                                             
	else if (i4x4_rec_end_r4) begin
		if (tq_i4x4_val_i && {tq_i4x4_num_i[3], tq_i4x4_num_i[1]}==2'b10) begin 
	    	rec20_l_r <= rec4x4_03;
	    	rec21_l_r <= rec4x4_13;
	    	rec22_l_r <= rec4x4_23;
	        rec23_l_r <= rec4x4_33;
		end
		else if ({i4x4_rec_num_r[3], i4x4_rec_num_r[1]}==2'b10) begin
			rec20_l_r <= rec0_l_r;
			rec21_l_r <= rec1_l_r;
			rec22_l_r <= rec2_l_r;
			rec23_l_r <= rec3_l_r;
		end
	end
	else if  ((tq_i16x16_val_i && tq_i16x16_num_i==4'd13) || (tq_cr_val_i && tq_cr_num_i==4'd1)) begin
		rec20_l_r <= rec4x4_03;                                                              
		rec21_l_r <= rec4x4_13;                                                              
		rec22_l_r <= rec4x4_23;                                                              
	    rec23_l_r <= rec4x4_33;                                                              
	end                                                                                      
end

always @(posedge clk or negedge rst_n)begin                                                  
	if(!rst_n)begin                                                                          
		rec30_l_r <= 'd0;                                                                    
		rec31_l_r <= 'd0;                                                                    
		rec32_l_r <= 'd0;                                                                    
		rec33_l_r <= 'd0;                                                                    
	end   
	else if (start_i) begin
		rec30_l_r <= ref12_l_y_r;
		rec31_l_r <= ref13_l_y_r;
		rec32_l_r <= ref14_l_y_r;
		rec33_l_r <= ref15_l_y_r;
	end                                                                                    
	else if (i4x4_rec_end_r4) begin
		if (tq_i4x4_val_i && {tq_i4x4_num_i[3], tq_i4x4_num_i[1]}==2'b11) begin
			rec30_l_r <= rec4x4_03;
			rec31_l_r <= rec4x4_13;
			rec32_l_r <= rec4x4_23;
			rec33_l_r <= rec4x4_33;
		end
		else if ({i4x4_rec_num_r[3], i4x4_rec_num_r[1]}==2'b11) begin
			rec30_l_r <= rec0_l_r;
			rec31_l_r <= rec1_l_r;
			rec32_l_r <= rec2_l_r;
		    rec33_l_r <= rec3_l_r;
		end
	end
	else if ((tq_i16x16_val_i && tq_i16x16_num_i==4'd15) || (tq_cr_val_i && tq_cr_num_i==4'd3)) begin
		rec30_l_r <= rec4x4_03;                                                              
		rec31_l_r <= rec4x4_13;                                                              
		rec32_l_r <= rec4x4_23;                                                              
	    rec33_l_r <= rec4x4_33;                                                              
	end                                                                                      
end

endmodule