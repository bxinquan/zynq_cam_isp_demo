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
// Filename       : tq_top.v
// Author         : Yibo FAN	
// Created        : 2012-12-28
// Description    : Transform & Quantization top
//                  Processing Intra_16x16, Inter_16x16, Chroma by 4x4 block
// 		support: i_16x16, i_4x4, p_16x16, chroma_8x8 reconstruction
//   block size: 16x16    4x4    16x16    2x(8x8)
//   data cycle: 16       1      16       8
//
//				       Res_Input, Pred_Input, i4x4*_i      
//                               |
//                   DC_YUV-------------DCT(Res)                   --r1
//                     |                    |
//  d1--           HT(DC_YUV)           Q(DCT(Res))                --r2         i4x4_min_i 
//                     |                    |----------MEM_STORE   
//  d2--          Q(HT(DC_YUV))        IQ(Q(DCT(Res)))             --r3/d4
//                     |                    |
//  d3--       IHT(Q(HT(DC_YUV)))   |-->IDCT(IQ(Q(DCT(Res))))      --r4/d5
//					   |            |       |
//  d4--      IQ(IHT(Q(HT(DC_YUV))))-    Add(Pre, Res)             --r5/d6
//
//
//
//------------------------------------------------------------------- 
`include "enc_defines.v"

module tq_top(
				clk,
				rst_n,	
				
				qp,
				mem_sw,
				
				i4x4_en_i,
				i4x4_mod_i,
				i4x4_num_i,
				i4x4_min_i,
				i4x4_end_i,
				i4x4_val_o,
				i4x4_num_o,
				
				i16x16_en_i,
				i16x16_num_i,
				i16x16_val_o,
				i16x16_num_o,
				
				p16x16_en_i,
				p16x16_num_i,
				p16x16_val_o,
				p16x16_num_o,
				
				chroma_en_i,
				chroma_num_i,
				cb_val_o,
				cb_num_o,
				cr_val_o,
				cr_num_o,
				
				pre00, pre01, pre02, pre03,
                pre10, pre11, pre12, pre13,
                pre20, pre21, pre22, pre23,
                pre30, pre31, pre32, pre33,
                                           
                res00, res01, res02, res03,
                res10, res11, res12, res13,
                res20, res21, res22, res23,
                res30, res31, res32, res33,
                                           
                rec00, rec01, rec02, rec03,
                rec10, rec11, rec12, rec13,
                rec20, rec21, rec22, rec23,
                rec30, rec31, rec32, rec33,
                
                ec_mem_rd,
                ec_mem_raddr,
                ec_mem_rdata,
				
				cbp_luma,
				cbp_chroma,
				cbp_dc		          
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input						clk;
input						rst_n;	
// input control signals
input  [5:0] 				qp;
input						mem_sw;    
// i4x4 IF
input						i4x4_en_i;  // i4x4 enable
input  [3:0]				i4x4_mod_i; // i4x4 prediction mode   
input  [3:0]				i4x4_num_i; // i4x4 sub-block number
input						i4x4_min_i; // i4x4 valid prediction (delayed 2 cycle according to i4x4_en_i)
input						i4x4_end_i; // i4x4 sub-block prediction end flag
output						i4x4_val_o; // i4x4 reconstructed valid  
output [3:0]				i4x4_num_o; // i4x4 reconstructed sub-block number
// i16x16 IF              
input						i16x16_en_i;  // i16x16 enable  
input  [3:0] 				i16x16_num_i; // i16x16 sub-block number
output						i16x16_val_o; // i16x16 reconstructed valid 
output [3:0]				i16x16_num_o; // i16x16 reconstructed sub-block number
// p16x16 IF              
input						p16x16_en_i;  // p16x16 enable                         
input  [3:0] 				p16x16_num_i; // p16x16 sub-block number               
output						p16x16_val_o; // p16x16 reconstructed valid            
output [3:0]				p16x16_num_o; // p16x16 reconstructed sub-block number 
// Chroma IF              
input 						chroma_en_i;  // chroma enable                          
input  [2:0]				chroma_num_i; // chroma sub-block number               
output 						cb_val_o;     // cb reconstructed valid            
output [3:0]				cb_num_o;     // cb reconstructed sub-block number 
output 						cr_val_o;     // cr reconstructed valid           
output [3:0]				cr_num_o;     // cr reconstructed sub-block number
				
// input residual and pred pixels
input  [`BIT_DEPTH-1:0]		pre00, pre01, pre02, pre03,
							pre10, pre11, pre12, pre13,
							pre20, pre21, pre22, pre23,
							pre30, pre31, pre32, pre33;
														                           
input  [`BIT_DEPTH:0]		res00, res01, res02, res03,
							res10, res11, res12, res13,
							res20, res21, res22, res23,
							res30, res31, res32, res33;
// output rec pixels							
output [`BIT_DEPTH-1:0]		rec00, rec01, rec02, rec03,
							rec10, rec11, rec12, rec13,
							rec20, rec21, rec22, rec23,
							rec30, rec31, rec32, rec33;						
// mem if for ec
input  						ec_mem_rd;
input  [4:0]				ec_mem_raddr;
output [255:0]				ec_mem_rdata;
output [3:0]   				cbp_luma; 
output [1:0]   				cbp_chroma;   
output [2:0]				cbp_dc;			
					
// ********************************************
//                                             
//    Signals DECLARATION               
//                                             
// ********************************************		
// sys ctrl 
wire [2:0] 					qpmod6; 
wire [3:0] 					qpdiv6;	
reg							mem_sel;
		
// Pipeline Delay Signals
reg  [3:0]					luma_num_r1,
							luma_num_r2,
							luma_num_r3,
							luma_num_r4;
							
reg	 [2:0]					chroma_num_r1,
							chroma_num_r2;
							
reg  [3:0]					rec_num_d2,
							rec_num_d3,
							rec_num_d4,
							rec_num_d5;

reg							i4x4_en_r1,  p16x16_en_r1, i16x16_en_r1, chroma_en_r1,
                                         p16x16_en_r2, i16x16_en_r2, chroma_en_r2,                            
                            i4x4_val_r3, p16x16_en_r3,                            
                            i4x4_val_r4, p16x16_en_r4;      

reg  [4:0]					i4x4_mod_r1,
                            i4x4_mod_r2,
                            i4x4_mod_r3;                     

wire						rec_y_en   , rec_u_en   , rec_v_en   ;
reg							rec_y_en_d0, rec_u_en_d0, rec_v_en_d0,
							rec_y_en_d1, rec_u_en_d1, rec_v_en_d1,
							rec_y_en_d2, rec_u_en_d2, rec_v_en_d2,
							rec_y_en_d3, rec_u_en_d3, rec_v_en_d3,
							rec_y_en_d4, rec_u_en_d4, rec_v_en_d4,
							rec_y_en_d5, rec_u_en_d5, rec_v_en_d5;
// Level r1
wire [`BIT_DEPTH+6:0]		dct_d00_w1, dct_d01_w1, dct_d02_w1, dct_d03_w1,
							dct_d10_w1, dct_d11_w1, dct_d12_w1, dct_d13_w1,
							dct_d20_w1, dct_d21_w1, dct_d22_w1, dct_d23_w1,
							dct_d30_w1, dct_d31_w1, dct_d32_w1, dct_d33_w1;

reg [`BIT_DEPTH+6:0]		dct_d00_r1, dct_d01_r1, dct_d02_r1, dct_d03_r1,
							dct_d10_r1, dct_d11_r1, dct_d12_r1, dct_d13_r1,
							dct_d20_r1, dct_d21_r1, dct_d22_r1, dct_d23_r1,
							dct_d30_r1, dct_d31_r1, dct_d32_r1, dct_d33_r1;
							
reg [`BIT_DEPTH+6:0]		dc_d00_r1, dc_d01_r1, dc_d02_r1, dc_d03_r1,
							dc_d10_r1, dc_d11_r1, dc_d12_r1, dc_d13_r1,
							dc_d20_r1, dc_d21_r1, dc_d22_r1, dc_d23_r1,
							dc_d30_r1, dc_d31_r1, dc_d32_r1, dc_d33_r1;
// Level r2
wire [`BIT_DEPTH+6:0] 		scale00_w2, scale01_w2, scale02_w2, scale03_w2, 
							scale10_w2, scale11_w2, scale12_w2, scale13_w2, 
							scale20_w2, scale21_w2, scale22_w2, scale23_w2, 
							scale30_w2, scale31_w2, scale32_w2, scale33_w2;

reg  [`BIT_DEPTH+6:0] 		scale00_r2, scale01_r2, scale02_r2, scale03_r2,
							scale10_r2, scale11_r2, scale12_r2, scale13_r2,
							scale20_r2, scale21_r2, scale22_r2, scale23_r2,
							scale30_r2, scale31_r2, scale32_r2, scale33_r2;
wire [`BIT_DEPTH+7:0]		scale00_mem_mux;
// Level r3
reg  [`BIT_DEPTH+6:0] 		scale00_mux, scale01_mux, scale02_mux, scale03_mux, 
							scale10_mux, scale11_mux, scale12_mux, scale13_mux, 
							scale20_mux, scale21_mux, scale22_mux, scale23_mux, 
							scale30_mux, scale31_mux, scale32_mux, scale33_mux;

wire [`BIT_DEPTH+6:0] 		idct_s00_w3, idct_s01_w3, idct_s02_w3, idct_s03_w3, 
							idct_s10_w3, idct_s11_w3, idct_s12_w3, idct_s13_w3, 
							idct_s20_w3, idct_s21_w3, idct_s22_w3, idct_s23_w3, 
							idct_s30_w3, idct_s31_w3, idct_s32_w3, idct_s33_w3;

reg  [`BIT_DEPTH+6:0] 		idct_s00_r3, idct_s01_r3, idct_s02_r3, idct_s03_r3,
							idct_s10_r3, idct_s11_r3, idct_s12_r3, idct_s13_r3,
							idct_s20_r3, idct_s21_r3, idct_s22_r3, idct_s23_r3,
							idct_s30_r3, idct_s31_r3, idct_s32_r3, idct_s33_r3;
// Level r4
wire [`BIT_DEPTH+6:0] 		idct_d00_w4, idct_d01_w4, idct_d02_w4, idct_d03_w4, 
							idct_d10_w4, idct_d11_w4, idct_d12_w4, idct_d13_w4, 
							idct_d20_w4, idct_d21_w4, idct_d22_w4, idct_d23_w4, 
							idct_d30_w4, idct_d31_w4, idct_d32_w4, idct_d33_w4;

reg  [`BIT_DEPTH+6:0] 		idct_d00_r4, idct_d01_r4, idct_d02_r4, idct_d03_r4, 
							idct_d10_r4, idct_d11_r4, idct_d12_r4, idct_d13_r4, 
							idct_d20_r4, idct_d21_r4, idct_d22_r4, idct_d23_r4, 
							idct_d30_r4, idct_d31_r4, idct_d32_r4, idct_d33_r4;
// Level d1
wire [`BIT_DEPTH+6:0] 		ht_y_d00_z1, ht_y_d01_z1, ht_y_d02_z1, ht_y_d03_z1, 
							ht_y_d10_z1, ht_y_d11_z1, ht_y_d12_z1, ht_y_d13_z1, 
							ht_y_d20_z1, ht_y_d21_z1, ht_y_d22_z1, ht_y_d23_z1, 
							ht_y_d30_z1, ht_y_d31_z1, ht_y_d32_z1, ht_y_d33_z1,
							ht_uv_d00_z1, ht_uv_d01_z1, ht_uv_d10_z1, ht_uv_d11_z1;
// Level d2
wire [`BIT_DEPTH+6:0] 		scale00_dc_y_z2, scale01_dc_y_z2, scale02_dc_y_z2, scale03_dc_y_z2, 
							scale10_dc_y_z2, scale11_dc_y_z2, scale12_dc_y_z2, scale13_dc_y_z2, 
							scale20_dc_y_z2, scale21_dc_y_z2, scale22_dc_y_z2, scale23_dc_y_z2, 
							scale30_dc_y_z2, scale31_dc_y_z2, scale32_dc_y_z2, scale33_dc_y_z2,
							scale00_dc_uv_z2, scale01_dc_uv_z2, scale10_dc_uv_z2, scale11_dc_uv_z2;							
wire [`BIT_DEPTH+6:0] 		scale00_dc_uv_d2, scale01_dc_uv_d2, scale10_dc_uv_d2, scale11_dc_uv_d2;
// Level d3
wire [`BIT_DEPTH+6:0] 		iht_s00_y_z3, iht_s01_y_z3, iht_s02_y_z3, iht_s03_y_z3, 
							iht_s10_y_z3, iht_s11_y_z3, iht_s12_y_z3, iht_s13_y_z3, 
							iht_s20_y_z3, iht_s21_y_z3, iht_s22_y_z3, iht_s23_y_z3, 
							iht_s30_y_z3, iht_s31_y_z3, iht_s32_y_z3, iht_s33_y_z3, 
							iht_s00_uv_z3, iht_s01_uv_z3, iht_s10_uv_z3, iht_s11_uv_z3;
// Level d4
reg  [`BIT_DEPTH+6:0] 		idct_s00_d4;
wire [`BIT_DEPTH+6:0] 		dc_d00_y_z4, dc_d01_y_z4, dc_d02_y_z4, dc_d03_y_z4, 
							dc_d10_y_z4, dc_d11_y_z4, dc_d12_y_z4, dc_d13_y_z4, 
							dc_d20_y_z4, dc_d21_y_z4, dc_d22_y_z4, dc_d23_y_z4, 
							dc_d30_y_z4, dc_d31_y_z4, dc_d32_y_z4, dc_d33_y_z4, 
							dc_d00_uv_z4, dc_d01_uv_z4, dc_d10_uv_z4, dc_d11_uv_z4;
// DC Coeff.
wire [255:0]				i16x16_dc;
wire [63:0]					cb_dc, cr_dc;
// Memory 
wire [255:0]				coeff_mem_wdata, coeff_mem_rdata; 
wire [5:0]					coeff_mem_waddr, coeff_mem_raddr; 				
wire 						coeff_mem_we   , coeff_mem_rd   ;
wire						pred_mem_we    , pred_mem_rd    ;  
wire [4:0]					pred_mem_waddr , pred_mem_raddr ;  
wire [127:0]				pred_mem_wdata , pred_mem_rdata ;  
wire 						rec_mem_we     ;
wire [4:0]					rec_mem_waddr  ;
wire [127:0]				rec_mem_wdata  ;
// Output
reg         				non_zero_w3;
reg  [15:0]       			non_zero_count4x4;
reg  [7:0]       			non_zero_count_uv;            				
reg  [3:0]  				cbp_luma;
wire [1:0]  				cbp_chroma;
wire        				cbp_cr, cbp_cb;
reg							cbp_luma_dc;
wire        				cbp_cr_dc, cbp_cb_dc;

// ********************************************
//                                             
//    TQ Data Path DECLARATION               
//                                             
// ********************************************
//-------------------------------------------------------------------
//	 memory                                         
//-------------------------------------------------------------------
//------------------------------------------
//	Coeff. Memory (dual-port ping pong buffer x2)
//  00-16: i16x16_coeff.
//  17-23: chroma_coeff.
//  24-31: reserved
//  Total: 32x2 = 64
//------------------------------------------
always @(posedge clk or negedge rst_n)begin
	if(!rst_n) 
		mem_sel <= 1'b0;
	else if (mem_sw)
		mem_sel <= ~mem_sel;
end

// Save Coeff. to memory
assign scale00_mem_mux = (i16x16_en_r2 | chroma_en_r2 ) ? 'b0 : {scale00_r2[`BIT_DEPTH+6],scale00_r2};
assign coeff_mem_wdata = rec_y_en_d1 ? i16x16_dc :
						 rec_u_en_d1 ? {192'b0, cb_dc}:
						 rec_v_en_d1 ? {192'b0, cr_dc}:
						 {scale00_mem_mux, 						{scale10_r2[`BIT_DEPTH+6],scale10_r2},
						 {scale01_r2[`BIT_DEPTH+6],scale01_r2}, {scale02_r2[`BIT_DEPTH+6],scale02_r2},
						 {scale11_r2[`BIT_DEPTH+6],scale11_r2}, {scale20_r2[`BIT_DEPTH+6],scale20_r2},
						 {scale30_r2[`BIT_DEPTH+6],scale30_r2}, {scale21_r2[`BIT_DEPTH+6],scale21_r2},
						 {scale12_r2[`BIT_DEPTH+6],scale12_r2}, {scale03_r2[`BIT_DEPTH+6],scale03_r2},
						 {scale13_r2[`BIT_DEPTH+6],scale13_r2}, {scale22_r2[`BIT_DEPTH+6],scale22_r2},
						 {scale31_r2[`BIT_DEPTH+6],scale31_r2}, {scale32_r2[`BIT_DEPTH+6],scale32_r2},
						 {scale23_r2[`BIT_DEPTH+6],scale23_r2}, {scale33_r2[`BIT_DEPTH+6],scale33_r2}};

assign coeff_mem_we    = i16x16_en_r2 | chroma_en_r2 | i4x4_min_i | p16x16_en_r2 | 
						 rec_y_en_d1 | rec_u_en_d1 | rec_v_en_d1;
						 
assign coeff_mem_waddr = i4x4_min_i   ? {mem_sel, 1'b0, luma_num_r2} :
						 p16x16_en_r2 ? {mem_sel, 1'b0, luma_num_r2} :
						 i16x16_en_r2 ? {mem_sel, 1'b0, luma_num_r2} :
						 chroma_en_r2 ? {mem_sel, 2'b10,chroma_num_r2}:
						 rec_y_en_d1  ? {mem_sel, 5'd24}:
						 rec_u_en_d1  ? {mem_sel, 5'd25}:
						 rec_v_en_d1  ? {mem_sel, 5'd26}:
						 'b0;

// Read Coeff. from memory
assign coeff_mem_rd    = rec_y_en_d2 | rec_u_en_d2 | rec_v_en_d2;

assign coeff_mem_raddr = rec_y_en_d2 ? {mem_sel, 1'b0, ~rec_num_d2}:
						 rec_u_en_d2 ? {mem_sel, 3'b100, ~rec_num_d2[1:0]}:
						 rec_v_en_d2 ? {mem_sel, 3'b101, ~rec_num_d2[1:0]}: 'b0;

// Read Coeff. to Entropy Coding
tq_ram_dp_256x64 u_coeff_ram_256x64(
				.clk       ( clk             ),
				.wdata_a   ( coeff_mem_wdata ),
				.waddr_a   ( coeff_mem_waddr ),
				.we_a      ( coeff_mem_we    ),
				.rd_a      ( coeff_mem_rd    ),
				.raddr_a   ( coeff_mem_raddr ),
				.rdata_a   ( coeff_mem_rdata ),
				
				.wdata_b   (                 ),
				.waddr_b   (                 ),
				.we_b      (                 ),
				.rd_b      ( ec_mem_rd       ),
				.raddr_b   ( {~mem_sel, ec_mem_raddr}),
				.rdata_b   ( ec_mem_rdata    )
);

//------------------------------------------
//	Pred. Memory (two port)
//     i16x16&chroma           i4x4
//  00-15: i16x16_coeff.    00-15: curr_pred 
//  16-23: chroma_coeff.    16-31: next_pred
//  Total: 16+8 = 24        total: 32
//         Final Total = max(24, 32)=32
//------------------------------------------    
reg	pred_mem_bank_r;

always @(posedge clk or negedge rst_n)begin
	if (!rst_n)
		pred_mem_bank_r <= 1'b0;
	else if (i4x4_end_i)
		pred_mem_bank_r <= ~pred_mem_bank_r;
end

assign pred_mem_we    = i16x16_en_i | chroma_en_i | i4x4_en_i | p16x16_en_i;
assign pred_mem_waddr = i4x4_en_i   ? {pred_mem_bank_r, i4x4_mod_i}:
						i16x16_en_i ? {1'b0, i16x16_num_i} :
						p16x16_en_i ? {1'b0, p16x16_num_i} :  
						chroma_en_i ? {2'b10, chroma_num_i}: 'b0;                                        
assign pred_mem_wdata = {pre00, pre01, pre02, pre03, 
                         pre10, pre11, pre12, pre13, 
                         pre20, pre21, pre22, pre23, 
                         pre30, pre31, pre32, pre33};

assign pred_mem_rd    =  i4x4_val_r3 | p16x16_en_r3 | rec_y_en_d4 | rec_u_en_d4 | rec_v_en_d4;
assign pred_mem_raddr =  i4x4_val_r3  ? i4x4_mod_r3 :
						 p16x16_en_r3 ? {1'b0, luma_num_r3} :
						 rec_y_en_d4  ? {1'b0, rec_num_d4}  :
						 rec_u_en_d4  ? {3'b100, rec_num_d4[1:0]} :
						 rec_v_en_d4  ? {3'b101, rec_num_d4[1:0]} : 'b0;

tq_ram_2p_128x32 u_pred_ram_128x32(
				.clk     ( clk        	  ),
				.wdata   ( pred_mem_wdata ),
				.waddr   ( pred_mem_waddr ),
				.we      ( pred_mem_we    ),
				.rd      ( pred_mem_rd    ),
				.raddr   ( pred_mem_raddr ),
				.rdata   ( pred_mem_rdata )
);

//-------------------------------------------------------------------
//	 Pipeline Delay Signals                                
//-------------------------------------------------------------------
// r-path
always @(posedge clk or negedge rst_n)begin
	if(!rst_n) begin
		i4x4_en_r1 <= 1'b0; p16x16_en_r1 <= 1'b0; i4x4_mod_r1 <= 'b0;  
							p16x16_en_r2 <= 1'b0; i4x4_mod_r2 <= 'b0;
		i4x4_val_r3 <= 'b0; p16x16_en_r3 <= 1'b0; i4x4_mod_r3 <= 'b0;  
		i4x4_val_r4 <= 'b0; p16x16_en_r4 <= 1'b0; 	                   
	end            
	else begin     
		i4x4_en_r1 <= i4x4_en_i ; 	p16x16_en_r1 <= p16x16_en_i ; i4x4_mod_r1 <= pred_mem_waddr; 
        							p16x16_en_r2 <= p16x16_en_r1; i4x4_mod_r2 <= i4x4_mod_r1;
        i4x4_val_r3 <= i4x4_min_i;  p16x16_en_r3 <= p16x16_en_r2; i4x4_mod_r3 <= i4x4_mod_r2;    
        i4x4_val_r4 <= i4x4_val_r3; p16x16_en_r4 <= p16x16_en_r3; 							      
	end
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n) begin
		i16x16_en_r1 <= 1'b0; chroma_en_r1 <= 1'b0;
		i16x16_en_r2 <= 1'b0; chroma_en_r2 <= 1'b0;
	end              
	else begin       
		i16x16_en_r1 <= i16x16_en_i ; chroma_en_r1 <= chroma_en_i ;
		i16x16_en_r2 <= i16x16_en_r1; chroma_en_r2 <= chroma_en_r1;
	end
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n) begin
		luma_num_r1 <= 'b0; 	chroma_num_r1 <= 'b0;
		luma_num_r2 <= 'b0; 	chroma_num_r2 <= 'b0;
		luma_num_r3 <= 'b0;
		luma_num_r4 <= 'b0;
	end             
	else begin      
		luma_num_r1 <= i4x4_en_i   ? i4x4_num_i:
					   i16x16_en_i ? i16x16_num_i:
					   p16x16_en_i ? p16x16_num_i:'b0;      		
									chroma_num_r1 <= chroma_num_i;
		luma_num_r2 <= luma_num_r1;	chroma_num_r2 <= chroma_num_r1;
		luma_num_r3 <= luma_num_r2;
		luma_num_r4 <= luma_num_r3;
	end
end

// d-path
assign rec_y_en = i16x16_en_r1 && luma_num_r1==4'd15;
assign rec_u_en = chroma_en_r1 && chroma_num_r1==4'd3;
assign rec_v_en = chroma_en_r1 && chroma_num_r1==4'd7;

always @(posedge clk or negedge rst_n)begin
	if(!rst_n) begin
		rec_y_en_d0 <= 1'b0; rec_u_en_d0 <= 1'b0; rec_v_en_d0 <= 1'b0;
		rec_y_en_d1 <= 1'b0; rec_u_en_d1 <= 1'b0; rec_v_en_d1 <= 1'b0; 
		rec_y_en_d3 <= 1'b0; rec_u_en_d3 <= 1'b0; rec_v_en_d3 <= 1'b0; rec_num_d3 <= 4'b0;
		rec_y_en_d4 <= 1'b0; rec_u_en_d4 <= 1'b0; rec_v_en_d4 <= 1'b0; rec_num_d4 <= 4'b0;		
		rec_y_en_d5 <= 1'b0; rec_u_en_d5 <= 1'b0; rec_v_en_d5 <= 1'b0; rec_num_d5 <= 4'b0;		
	end
	else begin
		rec_y_en_d0 <= rec_y_en   ; rec_u_en_d0 <= rec_u_en   ; rec_v_en_d0 <= rec_v_en   ;
		rec_y_en_d1 <= rec_y_en_d0; rec_u_en_d1 <= rec_v_en_d0; rec_v_en_d1 <= rec_u_en_d1;         
        rec_y_en_d3 <= rec_y_en_d2;	rec_u_en_d3 <= rec_u_en_d2; rec_v_en_d3 <= rec_v_en_d2; rec_num_d3 <= ~rec_num_d2;
        rec_y_en_d4 <= rec_y_en_d3; rec_u_en_d4 <= rec_u_en_d3; rec_v_en_d4 <= rec_v_en_d3; rec_num_d4 <= rec_num_d3;
        rec_y_en_d5 <= rec_y_en_d4; rec_u_en_d5 <= rec_u_en_d4; rec_v_en_d5 <= rec_v_en_d4; rec_num_d5 <= rec_num_d4;
	end
end

// d-path: Continue 16/8 reconstruction loop
always @ (posedge clk or negedge rst_n)begin
	if(!rst_n) 
		rec_num_d2 <= 4'b0;
	else if (rec_y_en_d1)
		rec_num_d2 <= 4'd15;
	else if (rec_v_en_d1 | (rec_u_en_d2 && rec_num_d2==4'b0))
		rec_num_d2 <= 4'd3;
	else if (rec_num_d2)
		rec_num_d2 <= rec_num_d2 - 1'b1;
end

always @ (posedge clk or negedge rst_n)begin
	if(!rst_n) 
		rec_y_en_d2 <= 1'b0;
	else if (rec_y_en_d2 && rec_num_d2==4'b0)
		rec_y_en_d2 <= 1'b0;
	else if (rec_y_en_d1)
		rec_y_en_d2 <= 1'b1;
end

always @ (posedge clk or negedge rst_n)begin
	if(!rst_n) 
		rec_u_en_d2 <= 1'b0;
	else if (rec_u_en_d2 && rec_num_d2==4'b0)
		rec_u_en_d2 <= 1'b0;
	else if (rec_v_en_d1)
		rec_u_en_d2 <= 1'b1;
end

always @ (posedge clk or negedge rst_n)begin
	if(!rst_n) 
		rec_v_en_d2 <= 1'b0;
	else if (rec_v_en_d2 && rec_num_d2==4'b0)
		rec_v_en_d2 <= 1'b0;
	else if (rec_u_en_d2 && rec_num_d2==4'b0)
		rec_v_en_d2 <= 1'b1;
end

//-------------------------------------------------------------------
//	 Pipeline output valid Signals                                          
//-------------------------------------------------------------------
assign i4x4_val_o   = i4x4_val_r4;
assign i4x4_num_o   = luma_num_r4;
assign i16x16_val_o = rec_y_en_d5;
assign i16x16_num_o = rec_num_d5;
assign p16x16_val_o = p16x16_en_r4;
assign p16x16_num_o = luma_num_r4;
assign cb_val_o     = rec_u_en_d5;
assign cb_num_o     = {2'b0, rec_num_d5[1:0]};
assign cr_val_o     = rec_v_en_d5;
assign cr_num_o     = {2'b0, rec_num_d5[1:0]};

//---------------------------------------------------------------------
//		Level 1: DCT 4x4 
//---------------------------------------------------------------------
tq_dct4x4 u_dct4x4 (
  		.dct_s00_i( res00 ), .dct_s01_i( res01 ), .dct_s02_i( res02 ), .dct_s03_i( res03 ),
  		.dct_s10_i( res10 ), .dct_s11_i( res11 ), .dct_s12_i( res12 ), .dct_s13_i( res13 ),
  		.dct_s20_i( res20 ), .dct_s21_i( res21 ), .dct_s22_i( res22 ), .dct_s23_i( res23 ),
  		.dct_s30_i( res30 ), .dct_s31_i( res31 ), .dct_s32_i( res32 ), .dct_s33_i( res33 ),
  		
  		.dct_d00_o(dct_d00_w1), .dct_d01_o(dct_d01_w1), .dct_d02_o(dct_d02_w1), .dct_d03_o(dct_d03_w1),
  		.dct_d10_o(dct_d10_w1), .dct_d11_o(dct_d11_w1), .dct_d12_o(dct_d12_w1), .dct_d13_o(dct_d13_w1),
  		.dct_d20_o(dct_d20_w1), .dct_d21_o(dct_d21_w1), .dct_d22_o(dct_d22_w1), .dct_d23_o(dct_d23_w1),
  		.dct_d30_o(dct_d30_w1), .dct_d31_o(dct_d31_w1), .dct_d32_o(dct_d32_w1), .dct_d33_o(dct_d33_w1)
);
// Save DCT 4x4
always @(posedge clk or negedge rst_n)begin
	if(!rst_n) begin
		dct_d00_r1 <= 'd0; dct_d01_r1 <= 'd0; dct_d02_r1 <= 'd0; dct_d03_r1 <= 'd0;
		dct_d10_r1 <= 'd0; dct_d11_r1 <= 'd0; dct_d12_r1 <= 'd0; dct_d13_r1 <= 'd0;
		dct_d20_r1 <= 'd0; dct_d21_r1 <= 'd0; dct_d22_r1 <= 'd0; dct_d23_r1 <= 'd0;
		dct_d30_r1 <= 'd0; dct_d31_r1 <= 'd0; dct_d32_r1 <= 'd0; dct_d33_r1 <= 'd0;
	end
	else if (i4x4_en_i || i16x16_en_i || p16x16_en_i || chroma_en_i) begin
		dct_d00_r1 <= dct_d00_w1; dct_d01_r1 <= dct_d01_w1; dct_d02_r1 <= dct_d02_w1; dct_d03_r1 <= dct_d03_w1;
		dct_d10_r1 <= dct_d10_w1; dct_d11_r1 <= dct_d11_w1; dct_d12_r1 <= dct_d12_w1; dct_d13_r1 <= dct_d13_w1;
		dct_d20_r1 <= dct_d20_w1; dct_d21_r1 <= dct_d21_w1; dct_d22_r1 <= dct_d22_w1; dct_d23_r1 <= dct_d23_w1;
		dct_d30_r1 <= dct_d30_w1; dct_d31_r1 <= dct_d31_w1; dct_d32_r1 <= dct_d32_w1; dct_d33_r1 <= dct_d33_w1;
	end
end
// Save DC Coeff.
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		dc_d00_r1 <= 'd0;	dc_d01_r1 <= 'd0;	dc_d02_r1 <= 'd0;	dc_d03_r1 <= 'd0;
		dc_d10_r1 <= 'd0;	dc_d11_r1 <= 'd0;	dc_d12_r1 <= 'd0;	dc_d13_r1 <= 'd0;
		dc_d20_r1 <= 'd0;	dc_d21_r1 <= 'd0;	dc_d22_r1 <= 'd0;	dc_d23_r1 <= 'd0;
		dc_d30_r1 <= 'd0;	dc_d31_r1 <= 'd0;	dc_d32_r1 <= 'd0;	dc_d33_r1 <= 'd0;
	end
	else if (rec_y_en) begin // start y_dc hadamard trans 
    	dc_d00_r1<=ht_y_d00_z1; dc_d01_r1<=ht_y_d01_z1; dc_d02_r1<=ht_y_d02_z1; dc_d03_r1<=ht_y_d03_z1; 
    	dc_d10_r1<=ht_y_d10_z1; dc_d11_r1<=ht_y_d11_z1; dc_d12_r1<=ht_y_d12_z1; dc_d13_r1<=ht_y_d13_z1; 
    	dc_d20_r1<=ht_y_d20_z1; dc_d21_r1<=ht_y_d21_z1; dc_d22_r1<=ht_y_d22_z1; dc_d23_r1<=ht_y_d23_z1; 
    	dc_d30_r1<=ht_y_d30_z1; dc_d31_r1<=ht_y_d31_z1; dc_d32_r1<=ht_y_d32_z1; dc_d33_r1<=ht_y_d33_z1; 
    end
	else if(rec_y_en_d0)begin // get y_dc
		dc_d00_r1 <= scale00_dc_y_z2;	dc_d01_r1 <= scale01_dc_y_z2; 	dc_d02_r1 <= scale02_dc_y_z2;	dc_d03_r1 <= scale03_dc_y_z2;
		dc_d10_r1 <= scale10_dc_y_z2;	dc_d11_r1 <= scale11_dc_y_z2;	dc_d12_r1 <= scale12_dc_y_z2;	dc_d13_r1 <= scale13_dc_y_z2;
		dc_d20_r1 <= scale20_dc_y_z2;	dc_d21_r1 <= scale21_dc_y_z2;	dc_d22_r1 <= scale22_dc_y_z2;	dc_d23_r1 <= scale23_dc_y_z2;
		dc_d30_r1 <= scale30_dc_y_z2;	dc_d31_r1 <= scale31_dc_y_z2;	dc_d32_r1 <= scale32_dc_y_z2;	dc_d33_r1 <= scale33_dc_y_z2;
	end
	else if(rec_y_en_d2 && rec_num_d2==4'hf)begin // get y iht(y_dc)
		dc_d00_r1 <= iht_s00_y_z3; dc_d01_r1 <= iht_s01_y_z3; dc_d02_r1 <= iht_s02_y_z3; dc_d03_r1 <= iht_s03_y_z3;
		dc_d10_r1 <= iht_s10_y_z3; dc_d11_r1 <= iht_s11_y_z3; dc_d12_r1 <= iht_s12_y_z3; dc_d13_r1 <= iht_s13_y_z3;
		dc_d20_r1 <= iht_s20_y_z3; dc_d21_r1 <= iht_s21_y_z3; dc_d22_r1 <= iht_s22_y_z3; dc_d23_r1 <= iht_s23_y_z3;
		dc_d30_r1 <= iht_s30_y_z3; dc_d31_r1 <= iht_s31_y_z3; dc_d32_r1 <= iht_s32_y_z3; dc_d33_r1 <= iht_s33_y_z3;
	end
	else if(rec_y_en_d3 && rec_num_d3==4'h0)begin // get rec y_dc 
		dc_d00_r1 <= dc_d00_y_z4; dc_d01_r1 <= dc_d01_y_z4; dc_d02_r1 <= dc_d02_y_z4; dc_d03_r1 <= dc_d03_y_z4;
		dc_d10_r1 <= dc_d10_y_z4; dc_d11_r1 <= dc_d11_y_z4; dc_d12_r1 <= dc_d12_y_z4; dc_d13_r1 <= dc_d13_y_z4;
		dc_d20_r1 <= dc_d20_y_z4; dc_d21_r1 <= dc_d21_y_z4; dc_d22_r1 <= dc_d22_y_z4; dc_d23_r1 <= dc_d23_y_z4;
		dc_d30_r1 <= dc_d30_y_z4; dc_d31_r1 <= dc_d31_y_z4; dc_d32_r1 <= dc_d32_y_z4; dc_d33_r1 <= dc_d33_y_z4;
	end
	else if(i16x16_en_i)begin
		case(i16x16_num_i)
			4'd0 : dc_d00_r1 <= dct_d00_w1;4'd1 : dc_d01_r1 <= dct_d00_w1;4'd4 : dc_d02_r1 <= dct_d00_w1;4'd5 : dc_d03_r1 <= dct_d00_w1;
			4'd2 : dc_d10_r1 <= dct_d00_w1;4'd3 : dc_d11_r1 <= dct_d00_w1;4'd6 : dc_d12_r1 <= dct_d00_w1;4'd7 : dc_d13_r1 <= dct_d00_w1;
			4'd8 : dc_d20_r1 <= dct_d00_w1;4'd9 : dc_d21_r1 <= dct_d00_w1;4'd12: dc_d22_r1 <= dct_d00_w1;4'd13: dc_d23_r1 <= dct_d00_w1;
			4'd10: dc_d30_r1 <= dct_d00_w1;4'd11: dc_d31_r1 <= dct_d00_w1;4'd14: dc_d32_r1 <= dct_d00_w1;4'd15: dc_d33_r1 <= dct_d00_w1;
		endcase
	end
	else begin
		if(chroma_en_i) 
			case(chroma_num_i)
				4'd0 : dc_d00_r1 <= dct_d00_w1;4'd1 : dc_d01_r1 <= dct_d00_w1;
				4'd2 : dc_d10_r1 <= dct_d00_w1;4'd3 : dc_d11_r1 <= dct_d00_w1;
				4'd4 : dc_d00_r1 <= dct_d00_w1;4'd5 : dc_d01_r1 <= dct_d00_w1;
				4'd6 : dc_d10_r1 <= dct_d00_w1;4'd7 : dc_d11_r1 <= dct_d00_w1;			
			endcase
		else if (rec_u_en_d3 | rec_v_en_d3)begin // get rec u/v_rec		
			dc_d00_r1 <= dc_d00_uv_z4; 	dc_d01_r1 <= dc_d01_uv_z4; 
			dc_d10_r1 <= dc_d10_uv_z4; 	dc_d11_r1 <= dc_d11_uv_z4;	
		end
		
		if (rec_u_en | rec_v_en )begin // start u/v_dc hadamard trans   	
	    	dc_d02_r1<=ht_uv_d00_z1; dc_d03_r1<=ht_uv_d01_z1; 
	    	dc_d12_r1<=ht_uv_d10_z1; dc_d13_r1<=ht_uv_d11_z1;    	
    	end 
		else if(rec_u_en_d0)begin // get u/v_dc, save u/v dc
			dc_d02_r1 <= scale00_dc_uv_z2; 	dc_d03_r1 <= scale01_dc_uv_z2; 
			dc_d12_r1 <= scale10_dc_uv_z2; 	dc_d13_r1 <= scale11_dc_uv_z2; 
		end
		else if(rec_v_en_d0)begin // get u/v_dc                                 
		    dc_d02_r1 <= scale00_dc_uv_z2; 	dc_d03_r1 <= scale01_dc_uv_z2; 
		    dc_d12_r1 <= scale10_dc_uv_z2; 	dc_d13_r1 <= scale11_dc_uv_z2; 
		end
		else if(rec_u_en_d2 | rec_v_en_d2)begin //get u/v	iht(u/v_dc)
			dc_d02_r1 <= iht_s00_uv_z3; dc_d03_r1 <= iht_s01_uv_z3; 
			dc_d12_r1 <= iht_s10_uv_z3; dc_d13_r1 <= iht_s11_uv_z3;
		end
		
		if(rec_u_en_d0)begin // save u_dc
			dc_d20_r1 <= scale00_dc_uv_z2;	dc_d21_r1 <= scale01_dc_uv_z2;
			dc_d30_r1 <= scale10_dc_uv_z2;	dc_d31_r1 <= scale11_dc_uv_z2;
		end
		
		if(rec_v_en_d0)begin // save v_dc
			dc_d22_r1 <= scale00_dc_uv_z2;	dc_d23_r1 <= scale01_dc_uv_z2;
			dc_d32_r1 <= scale10_dc_uv_z2;	dc_d33_r1 <= scale11_dc_uv_z2;
		end
	end	
end	

//--------------------------------------------------------------------
//		Level 2: Quant 4x4
//--------------------------------------------------------------------
// Quantization
tq_mod6 u_mod6(.qp_i(qp), .mod_o(qpmod6));
tq_div6 u_div6(.qp_i(qp), .div_o(qpdiv6));

tq_quant4x4 #(`BIT_DEPTH+7, `BIT_DEPTH+7) u_quant4x4(
		.qpmod6_i  ( qpmod6 ),
		.qpdiv6_i  ( qpdiv6 ),
		.intra     ( i4x4_en_r1 | i16x16_en_r1 | chroma_en_r1),
		// quantization input
		.coeff00_i ( dct_d00_r1 ), .coeff01_i ( dct_d01_r1 ),	.coeff02_i ( dct_d02_r1 ), .coeff03_i ( dct_d03_r1 ),
		.coeff10_i ( dct_d10_r1 ), .coeff11_i ( dct_d11_r1 ),	.coeff12_i ( dct_d12_r1 ), .coeff13_i ( dct_d13_r1 ),
		.coeff20_i ( dct_d20_r1 ), .coeff21_i ( dct_d21_r1 ),	.coeff22_i ( dct_d22_r1 ), .coeff23_i ( dct_d23_r1 ),
		.coeff30_i ( dct_d30_r1 ), .coeff31_i ( dct_d31_r1 ),	.coeff32_i ( dct_d32_r1 ), .coeff33_i ( dct_d33_r1 ),
		// quantization output
		.scale00_o ( scale00_w2 ), .scale01_o ( scale01_w2 ),	.scale02_o ( scale02_w2 ), .scale03_o ( scale03_w2 ),
		.scale10_o ( scale10_w2 ), .scale11_o ( scale11_w2 ),	.scale12_o ( scale12_w2 ), .scale13_o ( scale13_w2 ),
		.scale20_o ( scale20_w2 ), .scale21_o ( scale21_w2 ),	.scale22_o ( scale22_w2 ), .scale23_o ( scale23_w2 ),
		.scale30_o ( scale30_w2 ), .scale31_o ( scale31_w2 ),	.scale32_o ( scale32_w2 ), .scale33_o ( scale33_w2 )
);

always @ (posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		scale00_r2 <= 'd0; scale01_r2 <=  'd0; scale02_r2 <= 'd0; scale03_r2 <= 'd0;
		scale10_r2 <= 'd0; scale11_r2 <=  'd0; scale12_r2 <= 'd0; scale13_r2 <= 'd0;
		scale20_r2 <= 'd0; scale21_r2 <=  'd0; scale22_r2 <= 'd0; scale23_r2 <= 'd0;
		scale30_r2 <= 'd0; scale31_r2 <=  'd0; scale32_r2 <= 'd0; scale33_r2 <= 'd0;
	end
	else if (i4x4_en_r1 || i16x16_en_r1 || p16x16_en_r1 || chroma_en_r1) begin
		scale00_r2 <= scale00_w2; scale01_r2 <= scale01_w2;	scale02_r2 <= scale02_w2; scale03_r2 <= scale03_w2;
		scale10_r2 <= scale10_w2; scale11_r2 <= scale11_w2;	scale12_r2 <= scale12_w2; scale13_r2 <= scale13_w2;
		scale20_r2 <= scale20_w2; scale21_r2 <= scale21_w2;	scale22_r2 <= scale22_w2; scale23_r2 <= scale23_w2;
		scale30_r2 <= scale30_w2; scale31_r2 <= scale31_w2;	scale32_r2 <= scale32_w2; scale33_r2 <= scale33_w2;
	end
end

//-------------------------------------------------------------------
//	 Level 3: Inverse Quant 4x4, DC
//-------------------------------------------------------------------
// Read scale from level 2 or Coeff memory
always @(*) begin
	if (i4x4_min_i || p16x16_en_r2) begin
		scale00_mux = scale00_r2; scale01_mux = scale01_r2; scale02_mux = scale02_r2; scale03_mux = scale03_r2; 
		scale10_mux = scale10_r2; scale11_mux = scale11_r2; scale12_mux = scale12_r2; scale13_mux = scale13_r2; 
		scale20_mux = scale20_r2; scale21_mux = scale21_r2; scale22_mux = scale22_r2; scale23_mux = scale23_r2; 
		scale30_mux = scale30_r2; scale31_mux = scale31_r2; scale32_mux = scale32_r2; scale33_mux = scale33_r2; 
	end
	else if (rec_y_en_d3 || rec_u_en_d3 || rec_v_en_d3) begin
		scale00_mux = coeff_mem_rdata[255-1:240]; scale01_mux = coeff_mem_rdata[223-1:208]; 
		scale02_mux = coeff_mem_rdata[207-1:192]; scale03_mux = coeff_mem_rdata[111-1: 96];
        scale10_mux = coeff_mem_rdata[239-1:224]; scale11_mux = coeff_mem_rdata[191-1:176]; 
        scale12_mux = coeff_mem_rdata[127-1:112]; scale13_mux = coeff_mem_rdata[95 -1: 80];
        scale20_mux = coeff_mem_rdata[175-1:160]; scale21_mux = coeff_mem_rdata[143-1:128]; 
        scale22_mux = coeff_mem_rdata[79 -1: 64]; scale23_mux = coeff_mem_rdata[31 -1: 16];
        scale30_mux = coeff_mem_rdata[159-1:144]; scale31_mux = coeff_mem_rdata[63 -1: 48]; 
        scale32_mux = coeff_mem_rdata[47 -1: 32]; scale33_mux = coeff_mem_rdata[15 -1:  0];
	end
	else begin
		scale00_mux = 'b0; scale01_mux = 'b0; scale02_mux = 'b0; scale03_mux = 'b0; 
		scale10_mux = 'b0; scale11_mux = 'b0; scale12_mux = 'b0; scale13_mux = 'b0; 
		scale20_mux = 'b0; scale21_mux = 'b0; scale22_mux = 'b0; scale23_mux = 'b0; 
		scale30_mux = 'b0; scale31_mux = 'b0; scale32_mux = 'b0; scale33_mux = 'b0;		
    end
end

tq_dequant4x4 #(`BIT_DEPTH+7, `BIT_DEPTH+7) u_dequant4x4(
			.qpmod6_i  ( qpmod6 ),
			.qpdiv6_i  ( qpdiv6 ),
			
			.scale00_i ( scale00_mux ), .scale01_i ( scale01_mux ),	.scale02_i ( scale02_mux ), .scale03_i ( scale03_mux ),
			.scale10_i ( scale10_mux ), .scale11_i ( scale11_mux ),	.scale12_i ( scale12_mux ), .scale13_i ( scale13_mux ),
			.scale20_i ( scale20_mux ), .scale21_i ( scale21_mux ),	.scale22_i ( scale22_mux ), .scale23_i ( scale23_mux ),
			.scale30_i ( scale30_mux ), .scale31_i ( scale31_mux ),	.scale32_i ( scale32_mux ), .scale33_i ( scale33_mux ),
			
			.coeff00_o ( idct_s00_w3 ), .coeff01_o ( idct_s01_w3 ),	.coeff02_o ( idct_s02_w3 ), .coeff03_o ( idct_s03_w3 ),
			.coeff10_o ( idct_s10_w3 ), .coeff11_o ( idct_s11_w3 ),	.coeff12_o ( idct_s12_w3 ), .coeff13_o ( idct_s13_w3 ),
			.coeff20_o ( idct_s20_w3 ), .coeff21_o ( idct_s21_w3 ),	.coeff22_o ( idct_s22_w3 ), .coeff23_o ( idct_s23_w3 ),
			.coeff30_o ( idct_s30_w3 ), .coeff31_o ( idct_s31_w3 ),	.coeff32_o ( idct_s32_w3 ), .coeff33_o ( idct_s33_w3 )
);

always @ (posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		idct_s00_r3	<= 'd0;	idct_s01_r3 <= 'd0; idct_s02_r3 <= 'd0;	idct_s03_r3 <= 'd0;
		idct_s10_r3 <= 'd0;	idct_s11_r3 <= 'd0;	idct_s12_r3 <= 'd0;	idct_s13_r3 <= 'd0;
		idct_s20_r3 <= 'd0;	idct_s21_r3 <= 'd0;	idct_s22_r3 <= 'd0;	idct_s23_r3 <= 'd0;
		idct_s30_r3 <= 'd0;	idct_s31_r3 <= 'd0;	idct_s32_r3 <= 'd0;	idct_s33_r3 <= 'd0;
	end
	else if (i4x4_min_i || p16x16_en_r2 || rec_y_en_d3 || rec_u_en_d3 || rec_v_en_d3) begin	
		idct_s00_r3 <= idct_s00_w3; idct_s01_r3 <= idct_s01_w3; idct_s02_r3 <= idct_s02_w3; idct_s03_r3 <= idct_s03_w3;
		idct_s10_r3 <= idct_s10_w3; idct_s11_r3 <= idct_s11_w3; idct_s12_r3 <= idct_s12_w3; idct_s13_r3 <= idct_s13_w3;
		idct_s20_r3 <= idct_s20_w3; idct_s21_r3 <= idct_s21_w3; idct_s22_r3 <= idct_s22_w3; idct_s23_r3 <= idct_s23_w3;
		idct_s30_r3 <= idct_s30_w3; idct_s31_r3 <= idct_s31_w3; idct_s32_r3 <= idct_s32_w3; idct_s33_r3 <= idct_s33_w3;
	end
end

//-------------------------------------------------------------------
//	 Level 4: Inverse DCT 4x4                                 
//-------------------------------------------------------------------
always @(*) begin
	if (rec_y_en_d4)
		case(rec_num_d4)
			4'd0 : idct_s00_d4 = dc_d00_r1; 
			4'd1 : idct_s00_d4 = dc_d01_r1; 
			4'd4 : idct_s00_d4 = dc_d02_r1; 
			4'd5 : idct_s00_d4 = dc_d03_r1; 
			4'd2 : idct_s00_d4 = dc_d10_r1; 
			4'd3 : idct_s00_d4 = dc_d11_r1; 
			4'd6 : idct_s00_d4 = dc_d12_r1; 
			4'd7 : idct_s00_d4 = dc_d13_r1; 
			4'd8 : idct_s00_d4 = dc_d20_r1; 
			4'd9 : idct_s00_d4 = dc_d21_r1; 
			4'd12: idct_s00_d4 = dc_d22_r1; 
			4'd13: idct_s00_d4 = dc_d23_r1; 
			4'd10: idct_s00_d4 = dc_d30_r1; 
			4'd11: idct_s00_d4 = dc_d31_r1; 
			4'd14: idct_s00_d4 = dc_d32_r1; 
			4'd15: idct_s00_d4 = dc_d33_r1;
		endcase
	else if (rec_u_en_d4 | rec_v_en_d4)
		case(rec_num_d4[1:0])      
			2'd0 : idct_s00_d4 = dc_d00_r1;
			2'd1 : idct_s00_d4 = dc_d01_r1;
			2'd2 : idct_s00_d4 = dc_d10_r1;
			2'd3 : idct_s00_d4 = dc_d11_r1;
		endcase	
	else
		idct_s00_d4 = idct_s00_r3;
end

tq_idct4x4 #(`BIT_DEPTH+7, `BIT_DEPTH+7) u_idct4x4(
				// idct input 16bits
				.idct_s00_i ( idct_s00_d4 ), .idct_s01_i ( idct_s01_r3 ),
				.idct_s02_i ( idct_s02_r3 ), .idct_s03_i ( idct_s03_r3 ),
				.idct_s10_i ( idct_s10_r3 ), .idct_s11_i ( idct_s11_r3 ),
				.idct_s12_i ( idct_s12_r3 ), .idct_s13_i ( idct_s13_r3 ),
				.idct_s20_i ( idct_s20_r3 ), .idct_s21_i ( idct_s21_r3 ),
				.idct_s22_i ( idct_s22_r3 ), .idct_s23_i ( idct_s23_r3 ),
				.idct_s30_i ( idct_s30_r3 ), .idct_s31_i ( idct_s31_r3 ),
				.idct_s32_i ( idct_s32_r3 ), .idct_s33_i ( idct_s33_r3 ),
				// idct input 16bits
				.idct_d00_o ( idct_d00_w4 ), .idct_d01_o ( idct_d01_w4 ),
				.idct_d02_o ( idct_d02_w4 ), .idct_d03_o ( idct_d03_w4 ),
				.idct_d10_o ( idct_d10_w4 ), .idct_d11_o ( idct_d11_w4 ),
				.idct_d12_o ( idct_d12_w4 ), .idct_d13_o ( idct_d13_w4 ),
				.idct_d20_o ( idct_d20_w4 ), .idct_d21_o ( idct_d21_w4 ),
				.idct_d22_o ( idct_d22_w4 ), .idct_d23_o ( idct_d23_w4 ),
				.idct_d30_o ( idct_d30_w4 ), .idct_d31_o ( idct_d31_w4 ),
				.idct_d32_o ( idct_d32_w4 ), .idct_d33_o ( idct_d33_w4 )
);

always @ (posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		idct_d00_r4 <= 'd0;	idct_d01_r4 <= 'd0;	idct_d02_r4 <= 'd0;	idct_d03_r4 <= 'd0;
		idct_d10_r4 <= 'd0;	idct_d11_r4 <= 'd0;	idct_d12_r4 <= 'd0;	idct_d13_r4 <= 'd0;
		idct_d20_r4 <= 'd0;	idct_d21_r4 <= 'd0;	idct_d22_r4 <= 'd0;	idct_d23_r4 <= 'd0;
		idct_d30_r4 <= 'd0;	idct_d31_r4 <= 'd0;	idct_d32_r4 <= 'd0;	idct_d33_r4 <= 'd0;
	end
	else if (i4x4_val_r3 || p16x16_en_r3 || rec_y_en_d4 || rec_u_en_d4 || rec_v_en_d4 ) begin
		idct_d00_r4 <= idct_d00_w4;	idct_d01_r4 <= idct_d01_w4;	idct_d02_r4 <= idct_d02_w4;	idct_d03_r4 <= idct_d03_w4;
		idct_d10_r4 <= idct_d10_w4;	idct_d11_r4 <= idct_d11_w4;	idct_d12_r4 <= idct_d12_w4;	idct_d13_r4 <= idct_d13_w4;
		idct_d20_r4 <= idct_d20_w4;	idct_d21_r4 <= idct_d21_w4;	idct_d22_r4 <= idct_d22_w4;	idct_d23_r4 <= idct_d23_w4;
		idct_d30_r4 <= idct_d30_w4;	idct_d31_r4 <= idct_d31_w4;	idct_d32_r4 <= idct_d32_w4;	idct_d33_r4 <= idct_d33_w4;
	end
end

//-------------------------------------------------------------------
//	 Level 5: Add IDCT with PRED, Output Final REC Pixels                                 
//-------------------------------------------------------------------
tq_add_idct_pre #(`BIT_DEPTH+7) u_add_idct_pre(
				// prediction pixels input 8 bits
				.pre_pel00_i ( pred_mem_rdata[127:120] ), .pre_pel01_i ( pred_mem_rdata[119: 112] ), 
				.pre_pel02_i ( pred_mem_rdata[111:104] ), .pre_pel03_i ( pred_mem_rdata[103: 96]  ),
				.pre_pel10_i ( pred_mem_rdata[ 95: 88] ), .pre_pel11_i ( pred_mem_rdata[ 87: 80]  ), 
				.pre_pel12_i ( pred_mem_rdata[ 79: 72] ), .pre_pel13_i ( pred_mem_rdata[ 71: 64]  ),
				.pre_pel20_i ( pred_mem_rdata[ 63: 56] ), .pre_pel21_i ( pred_mem_rdata[ 55: 48]  ), 
				.pre_pel22_i ( pred_mem_rdata[ 47: 40] ), .pre_pel23_i ( pred_mem_rdata[ 39: 32]  ),
				.pre_pel30_i ( pred_mem_rdata[ 31: 24] ), .pre_pel31_i ( pred_mem_rdata[ 23: 16]  ), 
				.pre_pel32_i ( pred_mem_rdata[ 15:  8] ), .pre_pel33_i ( pred_mem_rdata[  7: 0]   ),
				
				//idct coefficients input 16 bits
				.idct_d00_i  ( idct_d00_r4 ), .idct_d01_i  ( idct_d01_r4 ), .idct_d02_i  ( idct_d02_r4 ), .idct_d03_i  ( idct_d03_r4 ),
				.idct_d10_i  ( idct_d10_r4 ), .idct_d11_i  ( idct_d11_r4 ), .idct_d12_i  ( idct_d12_r4 ), .idct_d13_i  ( idct_d13_r4 ),
				.idct_d20_i  ( idct_d20_r4 ), .idct_d21_i  ( idct_d21_r4 ), .idct_d22_i  ( idct_d22_r4 ), .idct_d23_i  ( idct_d23_r4 ),
				.idct_d30_i  ( idct_d30_r4 ), .idct_d31_i  ( idct_d31_r4 ), .idct_d32_i  ( idct_d32_r4 ), .idct_d33_i  ( idct_d33_r4 ),
				// reconfiguration pixels output 16 bits
				.add_pel00_o ( rec00 ), .add_pel01_o ( rec01 ), .add_pel02_o ( rec02 ), .add_pel03_o ( rec03 ),
				.add_pel10_o ( rec10 ), .add_pel11_o ( rec11 ),	.add_pel12_o ( rec12 ), .add_pel13_o ( rec13 ),
				.add_pel20_o ( rec20 ), .add_pel21_o ( rec21 ),	.add_pel22_o ( rec22 ), .add_pel23_o ( rec23 ),
				.add_pel30_o ( rec30 ), .add_pel31_o ( rec31 ),	.add_pel32_o ( rec32 ), .add_pel33_o ( rec33 )
);

//-------------------------------------------------------------------
//	 REC Level 1: Hardama Trans                                      
//-------------------------------------------------------------------
tq_ht4x4  u_ht4x4 (
				.ht_s00_i ( dc_d00_r1 ), .ht_s01_i ( dc_d01_r1 ), .ht_s02_i ( dc_d02_r1 ), .ht_s03_i ( dc_d03_r1 ),
				.ht_s10_i ( dc_d10_r1 ), .ht_s11_i ( dc_d11_r1 ), .ht_s12_i ( dc_d12_r1 ), .ht_s13_i ( dc_d13_r1 ),
				.ht_s20_i ( dc_d20_r1 ), .ht_s21_i ( dc_d21_r1 ), .ht_s22_i ( dc_d22_r1 ), .ht_s23_i ( dc_d23_r1 ),
				.ht_s30_i ( dc_d30_r1 ), .ht_s31_i ( dc_d31_r1 ), .ht_s32_i ( dc_d32_r1 ), .ht_s33_i ( dc_d33_r1 ),
				
				.ht_d00_o ( ht_y_d00_z1 ), .ht_d01_o ( ht_y_d01_z1 ), .ht_d02_o ( ht_y_d02_z1 ), .ht_d03_o ( ht_y_d03_z1 ),
				.ht_d10_o ( ht_y_d10_z1 ), .ht_d11_o ( ht_y_d11_z1 ), .ht_d12_o ( ht_y_d12_z1 ), .ht_d13_o ( ht_y_d13_z1 ),
				.ht_d20_o ( ht_y_d20_z1 ), .ht_d21_o ( ht_y_d21_z1 ), .ht_d22_o ( ht_y_d22_z1 ), .ht_d23_o ( ht_y_d23_z1 ),
				.ht_d30_o ( ht_y_d30_z1 ), .ht_d31_o ( ht_y_d31_z1 ), .ht_d32_o ( ht_y_d32_z1 ), .ht_d33_o ( ht_y_d33_z1 )
);

tq_ht2x2  u_ht2x2(
				.ht_s00_i( dc_d00_r1), 	  .ht_s01_i( dc_d01_r1),	
				.ht_s10_i( dc_d10_r1), 	  .ht_s11_i( dc_d11_r1),
				.ht_d00_o( ht_uv_d00_z1), .ht_d01_o( ht_uv_d01_z1),	
				.ht_d10_o( ht_uv_d10_z1), .ht_d11_o( ht_uv_d11_z1)
);

//-------------------------------------------------------------------
//	 REC Level 2: Quantization                                      
//-------------------------------------------------------------------
tq_quant4x4_dc #(`BIT_DEPTH+7, `BIT_DEPTH+7) u_quant4x4_dc(
				.qpmod6_i  ( qpmod6 ),
				.qpdiv6_i  ( qpdiv6 ),
				// quantization input
				.coeff00_i ( dc_d00_r1 ), .coeff01_i ( dc_d01_r1 ),	.coeff02_i ( dc_d02_r1 ), .coeff03_i ( dc_d03_r1 ),
				.coeff10_i ( dc_d10_r1 ), .coeff11_i ( dc_d11_r1 ),	.coeff12_i ( dc_d12_r1 ), .coeff13_i ( dc_d13_r1 ),
				.coeff20_i ( dc_d20_r1 ), .coeff21_i ( dc_d21_r1 ),	.coeff22_i ( dc_d22_r1 ), .coeff23_i ( dc_d23_r1 ),
				.coeff30_i ( dc_d30_r1 ), .coeff31_i ( dc_d31_r1 ),	.coeff32_i ( dc_d32_r1 ), .coeff33_i ( dc_d33_r1 ),
				// quantization output
				.scale00_o ( scale00_dc_y_z2 ), .scale01_o ( scale01_dc_y_z2 ),	.scale02_o ( scale02_dc_y_z2 ), .scale03_o ( scale03_dc_y_z2 ),
				.scale10_o ( scale10_dc_y_z2 ), .scale11_o ( scale11_dc_y_z2 ),	.scale12_o ( scale12_dc_y_z2 ), .scale13_o ( scale13_dc_y_z2 ),
				.scale20_o ( scale20_dc_y_z2 ), .scale21_o ( scale21_dc_y_z2 ),	.scale22_o ( scale22_dc_y_z2 ), .scale23_o ( scale23_dc_y_z2 ),
				.scale30_o ( scale30_dc_y_z2 ), .scale31_o ( scale31_dc_y_z2 ),	.scale32_o ( scale32_dc_y_z2 ), .scale33_o ( scale33_dc_y_z2 )
);

tq_quant2x2_dc u_quant2x2_tq(
				.qpmod6_i  ( qpmod6 ),
				.qpdiv6_i  ( qpdiv6 ),
				.intra     ( 1'b1    ),//always set to 1.
				
				.coeff00_i ( dc_d02_r1 ), .coeff01_i ( dc_d03_r1 ), 
				.coeff10_i ( dc_d12_r1 ), .coeff11_i ( dc_d13_r1 ),
								
				.scale00_o ( scale00_dc_uv_z2 ),
				.scale01_o ( scale01_dc_uv_z2 ),	
				.scale10_o ( scale10_dc_uv_z2 ),
				.scale11_o ( scale11_dc_uv_z2 )
);
                                                  
//-------------------------------------------------------------------
//	 REC Level 3: inverse Hardama Trans.                                      
//-------------------------------------------------------------------
tq_iht4x4  u_iht4x4(
				.iht_s00_i( dc_d00_r1 ), .iht_s01_i( dc_d01_r1 ),	.iht_s02_i( dc_d02_r1 ), .iht_s03_i( dc_d03_r1 ),
				.iht_s10_i( dc_d10_r1 ), .iht_s11_i( dc_d11_r1 ),	.iht_s12_i( dc_d12_r1 ), .iht_s13_i( dc_d13_r1 ),
				.iht_s20_i( dc_d20_r1 ), .iht_s21_i( dc_d21_r1 ),	.iht_s22_i( dc_d22_r1 ), .iht_s23_i( dc_d23_r1 ),
				.iht_s30_i( dc_d30_r1 ), .iht_s31_i( dc_d31_r1 ),	.iht_s32_i( dc_d32_r1 ), .iht_s33_i( dc_d33_r1 ),
				
				.iht_d00_o( iht_s00_y_z3 ), .iht_d01_o( iht_s01_y_z3 ), .iht_d02_o( iht_s02_y_z3 ), .iht_d03_o( iht_s03_y_z3 ),
				.iht_d10_o( iht_s10_y_z3 ), .iht_d11_o( iht_s11_y_z3 ), .iht_d12_o( iht_s12_y_z3 ), .iht_d13_o( iht_s13_y_z3 ),
				.iht_d20_o( iht_s20_y_z3 ), .iht_d21_o( iht_s21_y_z3 ), .iht_d22_o( iht_s22_y_z3 ), .iht_d23_o( iht_s23_y_z3 ),
				.iht_d30_o( iht_s30_y_z3 ), .iht_d31_o( iht_s31_y_z3 ), .iht_d32_o( iht_s32_y_z3 ), .iht_d33_o( iht_s33_y_z3 )
);

assign scale00_dc_uv_d2 = rec_u_en_d2 ? dc_d20_r1 : dc_d22_r1;
assign scale01_dc_uv_d2 = rec_u_en_d2 ? dc_d21_r1 : dc_d23_r1;
assign scale10_dc_uv_d2 = rec_u_en_d2 ? dc_d30_r1 : dc_d32_r1;
assign scale11_dc_uv_d2 = rec_u_en_d2 ? dc_d31_r1 : dc_d33_r1;

tq_iht2x2  u_iht2x2(
				.iht_s00_i( scale00_dc_uv_d2),  .iht_s01_i( scale01_dc_uv_d2 ),
				.iht_s10_i( scale10_dc_uv_d2),  .iht_s11_i( scale11_dc_uv_d2 ),
				.iht_d00_o( iht_s00_uv_z3	), 	.iht_d01_o( iht_s01_uv_z3 	 ),
				.iht_d10_o( iht_s10_uv_z3	), 	.iht_d11_o( iht_s11_uv_z3 	 )
);

//-------------------------------------------------------------------
//	 REC Level 4: inverse Quantization                                      
//-------------------------------------------------------------------
tq_dequant4x4_dc #(`BIT_DEPTH+7, `BIT_DEPTH+7) u_dequant4x4_dc(
			.qpmod6_i  ( qpmod6 ),
			.qpdiv6_i  ( qpdiv6 ),
			// dequantization input
			.scale00_i ( dc_d00_r1 ), .scale01_i ( dc_d01_r1 ), .scale02_i ( dc_d02_r1 ), .scale03_i ( dc_d03_r1 ),
			.scale10_i ( dc_d10_r1 ), .scale11_i ( dc_d11_r1 ), .scale12_i ( dc_d12_r1 ), .scale13_i ( dc_d13_r1 ),
			.scale20_i ( dc_d20_r1 ), .scale21_i ( dc_d21_r1 ), .scale22_i ( dc_d22_r1 ), .scale23_i ( dc_d23_r1 ),
			.scale30_i ( dc_d30_r1 ), .scale31_i ( dc_d31_r1 ), .scale32_i ( dc_d32_r1 ), .scale33_i ( dc_d33_r1 ),
			
			.coeff00_o ( dc_d00_y_z4 ), .coeff01_o ( dc_d01_y_z4 ),	.coeff02_o ( dc_d02_y_z4 ), .coeff03_o ( dc_d03_y_z4 ),
			.coeff10_o ( dc_d10_y_z4 ), .coeff11_o ( dc_d11_y_z4 ),	.coeff12_o ( dc_d12_y_z4 ), .coeff13_o ( dc_d13_y_z4 ),
			.coeff20_o ( dc_d20_y_z4 ), .coeff21_o ( dc_d21_y_z4 ),	.coeff22_o ( dc_d22_y_z4 ), .coeff23_o ( dc_d23_y_z4 ),
			.coeff30_o ( dc_d30_y_z4 ), .coeff31_o ( dc_d31_y_z4 ),	.coeff32_o ( dc_d32_y_z4 ), .coeff33_o ( dc_d33_y_z4 )
);

tq_dequant2x2_dc u_dequant2x2(
				.qpmod6_i  ( qpmod6 ),
				.qpdiv6_i  ( qpdiv6 ),
				
				.scale00_i ( dc_d02_r1   ), .scale01_i ( dc_d03_r1   ),
				.scale10_i ( dc_d12_r1   ), .scale11_i ( dc_d13_r1   ),
				
				.coeff00_o ( dc_d00_uv_z4 ), .coeff01_o ( dc_d01_uv_z4 ),
				.coeff10_o ( dc_d10_uv_z4 ), .coeff11_o ( dc_d11_uv_z4 )
);

//-------------------------------------------------------------------
//	Output Coefficients                                
//-------------------------------------------------------------------
//----------------------------------------
//	non_zero
//----------------------------------------	
always @ (*) begin
	if (i4x4_min_i | p16x16_en_r2)
		non_zero_w3 = 	(scale00_r2!='d0)||(scale01_r2!='d0)||(scale02_r2!='d0)||(scale03_r2!='d0)||
						(scale10_r2!='d0)||(scale11_r2!='d0)||(scale12_r2!='d0)||(scale13_r2!='d0)||
						(scale20_r2!='d0)||(scale21_r2!='d0)||(scale22_r2!='d0)||(scale23_r2!='d0)||
						(scale30_r2!='d0)||(scale31_r2!='d0)||(scale32_r2!='d0)||(scale33_r2!='d0);	
	else
		non_zero_w3 =  					   (scale01_r2!='d0)||(scale02_r2!='d0)||(scale03_r2!='d0)||
						(scale10_r2!='d0)||(scale11_r2!='d0)||(scale12_r2!='d0)||(scale13_r2!='d0)||
						(scale20_r2!='d0)||(scale21_r2!='d0)||(scale22_r2!='d0)||(scale23_r2!='d0)||
						(scale30_r2!='d0)||(scale31_r2!='d0)||(scale32_r2!='d0)||(scale33_r2!='d0);
end

always@(posedge clk or negedge rst_n)begin
	if(!rst_n) begin: i_non_zero
	 integer i;
		for(i=0;i<16;i=i+1)begin
			non_zero_count4x4[i] <= 'd0;
		end
	end
	else if (p16x16_en_r2 | i16x16_en_r2 | i4x4_min_i) begin
		case(luma_num_r2)
			4'd0:  non_zero_count4x4[0]  <= non_zero_w3;
			4'd1:  non_zero_count4x4[1]  <= non_zero_w3;
			4'd2:  non_zero_count4x4[2]  <= non_zero_w3;
			4'd3:  non_zero_count4x4[3]  <= non_zero_w3;
			4'd4:  non_zero_count4x4[4]  <= non_zero_w3;
			4'd5:  non_zero_count4x4[5]  <= non_zero_w3;
			4'd6:  non_zero_count4x4[6]  <= non_zero_w3;
			4'd7:  non_zero_count4x4[7]  <= non_zero_w3;
			4'd8:  non_zero_count4x4[8]  <= non_zero_w3;
			4'd9:  non_zero_count4x4[9]  <= non_zero_w3;
			4'd10: non_zero_count4x4[10] <= non_zero_w3;
			4'd11: non_zero_count4x4[11] <= non_zero_w3;
			4'd12: non_zero_count4x4[12] <= non_zero_w3;
			4'd13: non_zero_count4x4[13] <= non_zero_w3;
			4'd14: non_zero_count4x4[14] <= non_zero_w3;
			4'd15: non_zero_count4x4[15] <= non_zero_w3;
		endcase
	end
end

always@(posedge clk or negedge rst_n)begin
	if(!rst_n) begin:non_zero_uv 
	  integer i;
		for(i=0;i<8;i=i+1)begin
			non_zero_count_uv[i] <= 'd0;
		end
    end 
	else if (chroma_en_r2)begin
		case(chroma_num_r2)
			4'd0:  non_zero_count_uv[0]  <= non_zero_w3;
			4'd1:  non_zero_count_uv[1]  <= non_zero_w3;
			4'd2:  non_zero_count_uv[2]  <= non_zero_w3;
			4'd3:  non_zero_count_uv[3]  <= non_zero_w3;
			4'd4:  non_zero_count_uv[4]  <= non_zero_w3;
			4'd5:  non_zero_count_uv[5]  <= non_zero_w3;
			4'd6:  non_zero_count_uv[6]  <= non_zero_w3;
			4'd7:  non_zero_count_uv[7]  <= non_zero_w3;
		endcase
	end
end

//assign non_zero_flag4x4= {non_zero_count4x4[15],non_zero_count4x4[14],non_zero_count4x4[13],non_zero_count4x4[12],
//						  non_zero_count4x4[11],non_zero_count4x4[10],non_zero_count4x4[9 ],non_zero_count4x4[8 ],
//						  non_zero_count4x4[7 ],non_zero_count4x4[6 ],non_zero_count4x4[5 ],non_zero_count4x4[4 ],
//						  non_zero_count4x4[3 ],non_zero_count4x4[2 ],non_zero_count4x4[1 ],non_zero_count4x4[0 ]};    
//						  
//assign non_zero_flag_cr = {non_zero_count_uv[0],non_zero_count_uv[1],non_zero_count_uv[2],non_zero_count_uv[3]};
//
//assign non_zero_flag_cb = {non_zero_count_uv[4],non_zero_count_uv[5],non_zero_count_uv[6],non_zero_count_uv[7]};

//----------------------------------------
//	cbp
//----------------------------------------
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		cbp_luma <= 'd0;
	else
		cbp_luma <= {(non_zero_count4x4[15]|non_zero_count4x4[14]|non_zero_count4x4[13]|non_zero_count4x4[12]),
					  (non_zero_count4x4[11]|non_zero_count4x4[10]|non_zero_count4x4[9 ]|non_zero_count4x4[8 ]),
					  (non_zero_count4x4[7 ]|non_zero_count4x4[6 ]|non_zero_count4x4[5 ]|non_zero_count4x4[4 ]),
		              (non_zero_count4x4[3 ]|non_zero_count4x4[2 ]|non_zero_count4x4[1 ]|non_zero_count4x4[0 ])};
end

assign cbp_cr = (non_zero_count_uv[0]|non_zero_count_uv[1]|non_zero_count_uv[2]|non_zero_count_uv[3]);
assign cbp_cb = (non_zero_count_uv[4]|non_zero_count_uv[5]|non_zero_count_uv[6]|non_zero_count_uv[7]);

always@(posedge clk or negedge rst_n)begin 
	if(!rst_n)
		cbp_luma_dc <= 'b0;
	else if (rec_y_en_d1)
		cbp_luma_dc <= 	(dc_d00_r1!='d0)||(dc_d01_r1!='d0)||(dc_d02_r1!='d0)||(dc_d03_r1!='d0)||
		          		(dc_d10_r1!='d0)||(dc_d11_r1!='d0)||(dc_d12_r1!='d0)||(dc_d13_r1!='d0)||
		          		(dc_d20_r1!='d0)||(dc_d21_r1!='d0)||(dc_d22_r1!='d0)||(dc_d23_r1!='d0)||
		          		(dc_d30_r1!='d0)||(dc_d31_r1!='d0)||(dc_d32_r1!='d0)||(dc_d33_r1!='d0) ;
end

assign cbp_cr_dc =  (dc_d20_r1!='d0)||(dc_d21_r1!='d0)||(dc_d30_r1!='d0)||(dc_d31_r1!='d0);
assign cbp_cb_dc =  (dc_d22_r1!='d0)||(dc_d23_r1!='d0)||(dc_d32_r1!='d0)||(dc_d33_r1!='d0);

assign cbp_chroma = (cbp_cr||cbp_cb)?  2'd2 : (cbp_cr_dc||cbp_cb_dc) ? 2'd1 : 2'b0;

assign cbp_dc = {cbp_cb_dc, cbp_cr_dc, cbp_luma_dc};
				
//----------------------------------------
//	DC
//----------------------------------------
assign i16x16_dc = {{dc_d00_r1[`BIT_DEPTH+6],dc_d00_r1},
					{dc_d10_r1[`BIT_DEPTH+6],dc_d10_r1},
					{dc_d01_r1[`BIT_DEPTH+6],dc_d01_r1},
					{dc_d02_r1[`BIT_DEPTH+6],dc_d02_r1},
					{dc_d11_r1[`BIT_DEPTH+6],dc_d11_r1},
					{dc_d20_r1[`BIT_DEPTH+6],dc_d20_r1},
					{dc_d30_r1[`BIT_DEPTH+6],dc_d30_r1},
					{dc_d21_r1[`BIT_DEPTH+6],dc_d21_r1},
					{dc_d12_r1[`BIT_DEPTH+6],dc_d12_r1},
					{dc_d03_r1[`BIT_DEPTH+6],dc_d03_r1},
					{dc_d13_r1[`BIT_DEPTH+6],dc_d13_r1},
					{dc_d22_r1[`BIT_DEPTH+6],dc_d22_r1},
					{dc_d31_r1[`BIT_DEPTH+6],dc_d31_r1},
					{dc_d32_r1[`BIT_DEPTH+6],dc_d32_r1},
					{dc_d23_r1[`BIT_DEPTH+6],dc_d23_r1},
					{dc_d33_r1[`BIT_DEPTH+6],dc_d33_r1}};
									
assign cb_dc 	= {{dc_d20_r1[`BIT_DEPTH+6],dc_d20_r1},
				   {dc_d30_r1[`BIT_DEPTH+6],dc_d30_r1},
				   {dc_d21_r1[`BIT_DEPTH+6],dc_d21_r1},
				   {dc_d31_r1[`BIT_DEPTH+6],dc_d31_r1}};
				 	
assign cr_dc 	= {{dc_d22_r1[`BIT_DEPTH+6],dc_d22_r1},     
				   {dc_d32_r1[`BIT_DEPTH+6],dc_d32_r1}, 
				   {dc_d23_r1[`BIT_DEPTH+6],dc_d23_r1}, 
				   {dc_d33_r1[`BIT_DEPTH+6],dc_d33_r1}};

endmodule