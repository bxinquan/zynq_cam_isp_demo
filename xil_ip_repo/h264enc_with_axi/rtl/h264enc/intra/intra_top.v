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
// Filename       : intra_top.v
// Author         : huibo zhong
// Created        : 2011-02-29
// Description    : intra_top
//               
// Modified       : 2013-4-15 by Yibo FAN
//                  Architecture Rewrite
// 					Reuse one TQ Path for i4x4 and i16x16
//------------------------------------------------------------------- 
`include "enc_defines.v"

module intra_top(
				clk,
				rst_n,
				mb_x_total,
				mb_x,
				mb_y,
				mb_luma,
				mb_cb,
				mb_cr,				
				intra_flag,				
				qp,		
							
				start_i,
				done_o,	
								
				intra_mode_o,
				i4x4_bm_o,
				i4x4_pm_o,
				i16x16_mode_o,
				chroma_mode_o,		
				
				tq_i4x4_en_o,    
				tq_i4x4_mod_o,   
				tq_i4x4_num_o,   
				tq_i4x4_min_o,   
				tq_i4x4_end_o,   
				tq_i4x4_val_i,   
				tq_i4x4_num_i,  
				 				              
				tq_i16x16_en_o,  
				tq_i16x16_num_o, 
				tq_chroma_en_o,  
				tq_chroma_num_o, 
				tq_i16x16_val_i, 
				tq_i16x16_num_i, 
				tq_cb_val_i,     
				tq_cb_num_i,     
				tq_cr_val_i,     
				tq_cr_num_i,     
				
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
				rec30, rec31, rec32, rec33		
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input        				clk;
input						rst_n;
// Global parameters
input [`PIC_W_MB_LEN-1 :0]  mb_x, mb_x_total;
input [`PIC_H_MB_LEN-1:0]  	mb_y;
input [256*8-1: 0] 			mb_luma;
input [64*8-1 : 0] 			mb_cb;
input [64*8-1 : 0] 			mb_cr;
input          				intra_flag;
input  [5:0] 				qp;
// TOP control
input  						start_i;
output 						done_o;
// Intra mode 
output         				intra_mode_o;     	// 1: 16x16 0: 4x4             
output [63:0]  				i4x4_pm_o, 
							i4x4_bm_o;    
output [1:0]   				i16x16_mode_o, 
							chroma_mode_o;
// TQ IF
output						tq_i4x4_en_o    ; 
output [3:0]				tq_i4x4_mod_o   ;
output [3:0]				tq_i4x4_num_o   ;
output						tq_i4x4_min_o   ;
output						tq_i4x4_end_o   ;
input						tq_i4x4_val_i   ;
input  [3:0]				tq_i4x4_num_i   ;
 				                            
output						tq_i16x16_en_o  ;
output [3:0] 				tq_i16x16_num_o ;
output						tq_chroma_en_o  ;
output [2:0] 				tq_chroma_num_o ;
input						tq_i16x16_val_i ;
input  [3:0]				tq_i16x16_num_i ;
input 						tq_cb_val_i     ;
input  [3:0]				tq_cb_num_i     ;
input 						tq_cr_val_i     ;
input  [3:0]				tq_cr_num_i     ;
				
output [`BIT_DEPTH-1:0]		pre00, pre01, pre02, pre03,
							pre10, pre11, pre12, pre13,
							pre20, pre21, pre22, pre23,
							pre30, pre31, pre32, pre33;							                           
output [`BIT_DEPTH:0]		res00, res01, res02, res03,
							res10, res11, res12, res13,
							res20, res21, res22, res23,
							res30, res31, res32, res33;								                           
input  [`BIT_DEPTH-1:0]		rec00, rec01, rec02, rec03,
							rec10, rec11, rec12, rec13,
							rec20, rec21, rec22, rec23,
							rec30, rec31, rec32, rec33;	

// ********************************************                                    
//                                                                                 
//    Signals DECLARATION                                                         
//                                                                                 
// ********************************************                                    
// Orig Pixels for 4x4 sub-block
wire [`BIT_DEPTH-1:0] ori00_4x4  , ori01_4x4  , ori02_4x4  , ori03_4x4  ,
					  ori10_4x4  , ori11_4x4  , ori12_4x4  , ori13_4x4  ,
					  ori20_4x4  , ori21_4x4  , ori22_4x4  , ori23_4x4  ,
					  ori30_4x4  , ori31_4x4  , ori32_4x4  , ori33_4x4  ,
					  ori00_16x16, ori01_16x16, ori02_16x16, ori03_16x16,
					  ori10_16x16, ori11_16x16, ori12_16x16, ori13_16x16,
					  ori20_16x16, ori21_16x16, ori22_16x16, ori23_16x16,
					  ori30_16x16, ori31_16x16, ori32_16x16, ori33_16x16,
					  ori00_uv   , ori01_uv   , ori02_uv   , ori03_uv   ,
					  ori10_uv   , ori11_uv   , ori12_uv   , ori13_uv   ,
					  ori20_uv   , ori21_uv   , ori22_uv   , ori23_uv   ,
					  ori30_uv   , ori31_uv   , ori32_uv   , ori33_uv   ;
// Ref Pixels for Intra_16x16 and Chroma
wire [`BIT_DEPTH-1:0] ref00_tl,
					  ref00_tr, ref01_tr, ref02_tr, ref03_tr,					  
					  ref00_t,  ref01_t,  ref02_t,  ref03_t,
					  ref04_t,  ref05_t,  ref06_t,  ref07_t,
					  ref08_t,  ref09_t,  ref10_t,  ref11_t,
					  ref12_t,  ref13_t,  ref14_t,  ref15_t,
					  ref00_l,  ref01_l,  ref02_l,  ref03_l,
					  ref04_l,  ref05_l,  ref06_l,  ref07_l,
					  ref08_l,  ref09_l,  ref10_l,  ref11_l,
					  ref12_l,  ref13_l,  ref14_l,  ref15_l,					  
					  ref00_tl_u,                                                    
					  ref00_l_u , ref01_l_u, ref00_t_u, ref01_t_u,
					  ref02_l_u , ref03_l_u, ref02_t_u, ref03_t_u,
					  ref04_l_u , ref05_l_u, ref04_t_u, ref05_t_u,
					  ref06_l_u , ref07_l_u, ref06_t_u, ref07_t_u,
					  ref00_tl_v,                               
					  ref00_l_v , ref01_l_v, ref00_t_v, ref01_t_v,
					  ref02_l_v , ref03_l_v, ref02_t_v, ref03_t_v,
					  ref04_l_v , ref05_l_v, ref04_t_v, ref05_t_v,
					  ref06_l_v , ref07_l_v, ref06_t_v, ref07_t_v;
// Ref Pixels for Intra_4x4
wire [`BIT_DEPTH-1:0] ref4x4_00tl,                                      
					  ref4x4_00t,  ref4x4_01t,  ref4x4_02t,  ref4x4_03t,
					  ref4x4_00l,  ref4x4_01l,  ref4x4_02l,  ref4x4_03l,
					  ref4x4_00tr, ref4x4_01tr, ref4x4_02tr, ref4x4_03tr;
// TQ IF : Reconstructed Pixels from TQ
reg [`BIT_DEPTH-1:0]  pre00, pre01, pre02, pre03,  
					  pre10, pre11, pre12, pre13,  
					  pre20, pre21, pre22, pre23,  
					  pre30, pre31, pre32, pre33;					
reg [`BIT_DEPTH:0]    res00, res01, res02, res03,
					  res10, res11, res12, res13,
					  res20, res21, res22, res23,
					  res30, res31, res32, res33;
// TQ IF : Predicted Pixels to TQ
wire [`BIT_DEPTH-1:0] i4_pre00, i4_pre01, i4_pre02, i4_pre03, i16_pre00, i16_pre01, i16_pre02, i16_pre03,
					  i4_pre10, i4_pre11, i4_pre12, i4_pre13, i16_pre10, i16_pre11, i16_pre12, i16_pre13,
					  i4_pre20, i4_pre21, i4_pre22, i4_pre23, i16_pre20, i16_pre21, i16_pre22, i16_pre23,
					  i4_pre30, i4_pre31, i4_pre32, i4_pre33, i16_pre30, i16_pre31, i16_pre32, i16_pre33;
// TQ IF : Residual data to TQ
wire [`BIT_DEPTH:0]   i4_res00, i4_res01, i4_res02, i4_res03, i16_res00, i16_res01, i16_res02, i16_res03, 
					  i4_res10, i4_res11, i4_res12, i4_res13, i16_res10, i16_res11, i16_res12, i16_res13, 
					  i4_res20, i4_res21, i4_res22, i4_res23, i16_res20, i16_res21, i16_res22, i16_res23, 
					  i4_res30, i4_res31, i4_res32, i4_res33, i16_res30, i16_res31, i16_res32, i16_res33;
// i4x4, i6x6, ref IF
// ref
wire [6:0]				lambda				;
wire		       		ref_start           ;
reg						i4x4_done_flag		;
reg						intra_mode_o		;
reg						intra_done			;
wire					i_16x16_mode		;
// i4x4 IF                  	                    
wire					i4x4_start          ;
wire					i4x4_done           ;
wire [3:0]				i4x4_num			;
wire					i4x4_end      	    ;
wire [3:0]				i4x4_min_mode       ;
wire					i4x4_min_val        ;
wire [3:0]				i4x4_min_num		;
wire [3:0]				i4x4_pred_mode      ;
wire [63:0]				i4x4_pm_o           ;
wire [63:0]				i4x4_bm_o       	;
wire [`BIT_DEPTH+11:0]	i4x4_cost           ; 
wire					i4x4_update         ; 
// i16x16 IF                                           
wire 					i16x16_chroma_start ;
wire 					i16x16_chroma_done  ;
reg 					i16x16_rec_start    ;
wire 					i16x16_rec_done     ;
reg 					chroma_rec_start    ;
wire 					chroma_rec_done     ;
wire [`BIT_DEPTH+11:0]	i16x16_cost         ;
wire [`BIT_DEPTH+11:0]	chroma_cost   	    ;
wire [3:0] 				i16x16_num          ;
wire [2:0] 				chroma_num          ;
wire					i16x16_update       ;
wire					chroma_update       ;

// ********************************************                                    
//                                                                                 
//    Logic DECLARATION                                                         
//                                                                                 
// ********************************************
//-----------------------------------------------------------
//            Pixel Allocate
//-----------------------------------------------------------
reg [`BIT_DEPTH-1:0] 		cur_y[0:255];
reg [`BIT_DEPTH-1:0] 		cur_u[0:63];
reg [`BIT_DEPTH-1:0] 		cur_v[0:63];
reg [`BIT_DEPTH*16-1:0] 	ori4x4;
reg [`BIT_DEPTH*16-1:0] 	ori16x16;
reg [`BIT_DEPTH*16-1:0] 	ori_uv;

genvar i; 
generate
  for(i=0;i<256; i=i+1) begin:i_n 
  	always @( * ) begin
			cur_y[i] = mb_luma[(i+1)*8-1:i*8];   
    end
  end
endgenerate

genvar j; 
generate 
  for(j=0;j<64; j=j+1) begin:j_n
  	always @( * ) begin
  		cur_u[j] = mb_cb[(j+1)*8-1:j*8];
  		cur_v[j] = mb_cr[(j+1)*8-1:j*8];  
    end
  end
endgenerate

always @(*) begin
	case (i4x4_num)
		4'b0000:ori4x4 ={ cur_y[0],   cur_y[1],   cur_y[2],   cur_y[3],
						  cur_y[16],  cur_y[17],  cur_y[18],  cur_y[19],
						  cur_y[32],  cur_y[33],  cur_y[34],  cur_y[35],
						  cur_y[48],  cur_y[49],  cur_y[50],  cur_y[51] };
		4'b0001:ori4x4 ={ cur_y[4],   cur_y[5],   cur_y[6],   cur_y[7],
						  cur_y[20],  cur_y[21],  cur_y[22],  cur_y[23],
						  cur_y[36],  cur_y[37],  cur_y[38],  cur_y[39],
						  cur_y[52],  cur_y[53],  cur_y[54],  cur_y[55] };
		4'b0010:ori4x4 ={ cur_y[64],  cur_y[65],  cur_y[66],  cur_y[67],
						  cur_y[80],  cur_y[81],  cur_y[82],  cur_y[83],
						  cur_y[96],  cur_y[97],  cur_y[98],  cur_y[99],
						  cur_y[112], cur_y[113], cur_y[114], cur_y[115] };
		4'b0011:ori4x4 ={ cur_y[68],  cur_y[69],  cur_y[70],  cur_y[71],
						  cur_y[84],  cur_y[85],  cur_y[86],  cur_y[87],
						  cur_y[100], cur_y[101], cur_y[102], cur_y[103],
						  cur_y[116], cur_y[117], cur_y[118], cur_y[119] };
		4'b0100:ori4x4 ={ cur_y[8],   cur_y[9],   cur_y[10],  cur_y[11],
						  cur_y[24],  cur_y[25],  cur_y[26],  cur_y[27],
						  cur_y[40],  cur_y[41],  cur_y[42],  cur_y[43],
						  cur_y[56],  cur_y[57],  cur_y[58],  cur_y[59] };
		4'b0101:ori4x4 ={ cur_y[12],  cur_y[13],  cur_y[14],  cur_y[15],
						  cur_y[28],  cur_y[29],  cur_y[30],  cur_y[31],
						  cur_y[44],  cur_y[45],  cur_y[46],  cur_y[47],
						  cur_y[60],  cur_y[61],  cur_y[62],  cur_y[63] };
		4'b0110:ori4x4 ={ cur_y[72],  cur_y[73],  cur_y[74],  cur_y[75],
						  cur_y[88],  cur_y[89],  cur_y[90],  cur_y[91],
						  cur_y[104], cur_y[105], cur_y[106], cur_y[107],
						  cur_y[120], cur_y[121], cur_y[122], cur_y[123] };
		4'b0111:ori4x4 ={ cur_y[76],  cur_y[77],  cur_y[78],  cur_y[79],
						  cur_y[92],  cur_y[93],  cur_y[94],  cur_y[95],
						  cur_y[108], cur_y[109], cur_y[110], cur_y[111],
						  cur_y[124], cur_y[125], cur_y[126], cur_y[127] };
		4'b1000:ori4x4 ={ cur_y[128], cur_y[129], cur_y[130], cur_y[131],
						  cur_y[144], cur_y[145], cur_y[146], cur_y[147],
						  cur_y[160], cur_y[161], cur_y[162], cur_y[163],
						  cur_y[176], cur_y[177], cur_y[178], cur_y[179] };
		4'b1001:ori4x4 ={ cur_y[132], cur_y[133], cur_y[134], cur_y[135],
						  cur_y[148], cur_y[149], cur_y[150], cur_y[151],
						  cur_y[164], cur_y[165], cur_y[166], cur_y[167],
						  cur_y[180], cur_y[181], cur_y[182], cur_y[183] };
		4'b1010:ori4x4 ={ cur_y[192], cur_y[193], cur_y[194], cur_y[195],
						  cur_y[208], cur_y[209], cur_y[210], cur_y[211],
						  cur_y[224], cur_y[225], cur_y[226], cur_y[227],
						  cur_y[240], cur_y[241], cur_y[242], cur_y[243] };
		4'b1011:ori4x4 ={ cur_y[196], cur_y[197], cur_y[198], cur_y[199],
						  cur_y[212], cur_y[213], cur_y[214], cur_y[215],
						  cur_y[228], cur_y[229], cur_y[230], cur_y[231],
						  cur_y[244], cur_y[245], cur_y[246], cur_y[247] };									     
		4'b1100:ori4x4 ={ cur_y[136], cur_y[137], cur_y[138], cur_y[139],
						  cur_y[152], cur_y[153], cur_y[154], cur_y[155],
						  cur_y[168], cur_y[169], cur_y[170], cur_y[171],
						  cur_y[184], cur_y[185], cur_y[186], cur_y[187] };
		4'b1101:ori4x4 ={ cur_y[140], cur_y[141], cur_y[142], cur_y[143],
						  cur_y[156], cur_y[157], cur_y[158], cur_y[159],
						  cur_y[172], cur_y[173], cur_y[174], cur_y[175],
						  cur_y[188], cur_y[189], cur_y[190], cur_y[191] };
		4'b1110:ori4x4 ={ cur_y[200], cur_y[201], cur_y[202], cur_y[203],
						  cur_y[216], cur_y[217], cur_y[218], cur_y[219],
						  cur_y[232], cur_y[233], cur_y[234], cur_y[235],
						  cur_y[248], cur_y[249], cur_y[250], cur_y[251] };
		4'b1111:ori4x4 ={ cur_y[204], cur_y[205], cur_y[206], cur_y[207],
						  cur_y[220], cur_y[221], cur_y[222], cur_y[223],
						  cur_y[236], cur_y[237], cur_y[238], cur_y[239],
						  cur_y[252], cur_y[253], cur_y[254], cur_y[255] };
	endcase
end

always @(*) begin
	case (i16x16_num)
		4'b0000:ori16x16={cur_y[0],   cur_y[1],   cur_y[2],   cur_y[3],
					 	  cur_y[16],  cur_y[17],  cur_y[18],  cur_y[19],
					 	  cur_y[32],  cur_y[33],  cur_y[34],  cur_y[35],
					 	  cur_y[48],  cur_y[49],  cur_y[50],  cur_y[51] };
		4'b0001:ori16x16={cur_y[4],   cur_y[5],   cur_y[6],   cur_y[7],
					 	  cur_y[20],  cur_y[21],  cur_y[22],  cur_y[23],
					 	  cur_y[36],  cur_y[37],  cur_y[38],  cur_y[39],
					 	  cur_y[52],  cur_y[53],  cur_y[54],  cur_y[55] };
		4'b0010:ori16x16={cur_y[64],  cur_y[65],  cur_y[66],  cur_y[67],
					 	  cur_y[80],  cur_y[81],  cur_y[82],  cur_y[83],
					 	  cur_y[96],  cur_y[97],  cur_y[98],  cur_y[99],
					 	  cur_y[112], cur_y[113], cur_y[114], cur_y[115] };
		4'b0011:ori16x16={cur_y[68],  cur_y[69],  cur_y[70],  cur_y[71],
					 	  cur_y[84],  cur_y[85],  cur_y[86],  cur_y[87],
					 	  cur_y[100], cur_y[101], cur_y[102], cur_y[103],
					 	  cur_y[116], cur_y[117], cur_y[118], cur_y[119] };
		4'b0100:ori16x16={cur_y[8],   cur_y[9],   cur_y[10],  cur_y[11],
					 	  cur_y[24],  cur_y[25],  cur_y[26],  cur_y[27],
					 	  cur_y[40],  cur_y[41],  cur_y[42],  cur_y[43],
					 	  cur_y[56],  cur_y[57],  cur_y[58],  cur_y[59] };
		4'b0101:ori16x16={cur_y[12],  cur_y[13],  cur_y[14],  cur_y[15],
					 	  cur_y[28],  cur_y[29],  cur_y[30],  cur_y[31],
					 	  cur_y[44],  cur_y[45],  cur_y[46],  cur_y[47],
					 	  cur_y[60],  cur_y[61],  cur_y[62],  cur_y[63] };
		4'b0110:ori16x16={cur_y[72],  cur_y[73],  cur_y[74],  cur_y[75],
					 	  cur_y[88],  cur_y[89],  cur_y[90],  cur_y[91],
					 	  cur_y[104], cur_y[105], cur_y[106], cur_y[107],
					 	  cur_y[120], cur_y[121], cur_y[122], cur_y[123] };
		4'b0111:ori16x16={cur_y[76],  cur_y[77],  cur_y[78],  cur_y[79],
					 	  cur_y[92],  cur_y[93],  cur_y[94],  cur_y[95],
					 	  cur_y[108], cur_y[109], cur_y[110], cur_y[111],
					 	  cur_y[124], cur_y[125], cur_y[126], cur_y[127] };
		4'b1000:ori16x16={cur_y[128], cur_y[129], cur_y[130], cur_y[131],
					 	  cur_y[144], cur_y[145], cur_y[146], cur_y[147],
					 	  cur_y[160], cur_y[161], cur_y[162], cur_y[163],
					 	  cur_y[176], cur_y[177], cur_y[178], cur_y[179] };
		4'b1001:ori16x16={cur_y[132], cur_y[133], cur_y[134], cur_y[135],
					 	  cur_y[148], cur_y[149], cur_y[150], cur_y[151],
					 	  cur_y[164], cur_y[165], cur_y[166], cur_y[167],
					 	  cur_y[180], cur_y[181], cur_y[182], cur_y[183] };
		4'b1010:ori16x16={cur_y[192], cur_y[193], cur_y[194], cur_y[195],
					 	  cur_y[208], cur_y[209], cur_y[210], cur_y[211],
					 	  cur_y[224], cur_y[225], cur_y[226], cur_y[227],
					 	  cur_y[240], cur_y[241], cur_y[242], cur_y[243] };
		4'b1011:ori16x16={cur_y[196], cur_y[197], cur_y[198], cur_y[199],
					 	  cur_y[212], cur_y[213], cur_y[214], cur_y[215],
					 	  cur_y[228], cur_y[229], cur_y[230], cur_y[231],
					 	  cur_y[244], cur_y[245], cur_y[246], cur_y[247] };
		4'b1100:ori16x16={cur_y[136], cur_y[137], cur_y[138], cur_y[139],
					 	  cur_y[152], cur_y[153], cur_y[154], cur_y[155],
					 	  cur_y[168], cur_y[169], cur_y[170], cur_y[171],
					 	  cur_y[184], cur_y[185], cur_y[186], cur_y[187] };
		4'b1101:ori16x16={cur_y[140], cur_y[141], cur_y[142], cur_y[143],
					 	  cur_y[156], cur_y[157], cur_y[158], cur_y[159],
					 	  cur_y[172], cur_y[173], cur_y[174], cur_y[175],
					 	  cur_y[188], cur_y[189], cur_y[190], cur_y[191] };
		4'b1110:ori16x16={cur_y[200], cur_y[201], cur_y[202], cur_y[203],
					 	  cur_y[216], cur_y[217], cur_y[218], cur_y[219],
					 	  cur_y[232], cur_y[233], cur_y[234], cur_y[235],
					 	  cur_y[248], cur_y[249], cur_y[250], cur_y[251] };
		4'b1111:ori16x16={cur_y[204], cur_y[205], cur_y[206], cur_y[207],
						  cur_y[220], cur_y[221], cur_y[222], cur_y[223],
						  cur_y[236], cur_y[237], cur_y[238], cur_y[239],
						  cur_y[252], cur_y[253], cur_y[254], cur_y[255] };
	endcase
end

always @(*) begin
	case (chroma_num)
	3'b000:ori_uv={cur_u[0],  cur_u[1],  cur_u[2],  cur_u[3],
				   cur_u[8],  cur_u[9],  cur_u[10], cur_u[11],
				   cur_u[16], cur_u[17], cur_u[18], cur_u[19],
				   cur_u[24], cur_u[25], cur_u[26], cur_u[27] };
	3'b001:ori_uv={cur_u[4],  cur_u[5],  cur_u[6],  cur_u[7],
				   cur_u[12], cur_u[13], cur_u[14], cur_u[15],
				   cur_u[20], cur_u[21], cur_u[22], cur_u[23],
				   cur_u[28], cur_u[29], cur_u[30], cur_u[31] };
	3'b010:ori_uv={cur_u[32], cur_u[33], cur_u[34], cur_u[35],
				   cur_u[40], cur_u[41], cur_u[42], cur_u[43],
				   cur_u[48], cur_u[49], cur_u[50], cur_u[51],
				   cur_u[56], cur_u[57], cur_u[58], cur_u[59] };
	3'b011:ori_uv={cur_u[36], cur_u[37], cur_u[38], cur_u[39],
				   cur_u[44], cur_u[45], cur_u[46], cur_u[47],
				   cur_u[52], cur_u[53], cur_u[54], cur_u[55],
				   cur_u[60], cur_u[61], cur_u[62], cur_u[63] };	
	3'b100:ori_uv={cur_v[0],  cur_v[1],  cur_v[2],  cur_v[3],
				   cur_v[8],  cur_v[9],  cur_v[10], cur_v[11],
				   cur_v[16], cur_v[17], cur_v[18], cur_v[19],
				   cur_v[24], cur_v[25], cur_v[26], cur_v[27] };
	3'b101:ori_uv={cur_v[4],  cur_v[5],  cur_v[6],  cur_v[7],
				   cur_v[12], cur_v[13], cur_v[14], cur_v[15],
				   cur_v[20], cur_v[21], cur_v[22], cur_v[23],
				   cur_v[28], cur_v[29], cur_v[30], cur_v[31] };
	3'b110:ori_uv={cur_v[32], cur_v[33], cur_v[34], cur_v[35],
				   cur_v[40], cur_v[41], cur_v[42], cur_v[43],
				   cur_v[48], cur_v[49], cur_v[50], cur_v[51],
				   cur_v[56], cur_v[57], cur_v[58], cur_v[59] };
	3'b111:ori_uv={cur_v[36], cur_v[37], cur_v[38], cur_v[39],
				   cur_v[44], cur_v[45], cur_v[46], cur_v[47],
				   cur_v[52], cur_v[53], cur_v[54], cur_v[55],
				   cur_v[60], cur_v[61], cur_v[62], cur_v[63] };
	endcase	
end

assign ori00_4x4 = ori4x4[127:120];
assign ori01_4x4 = ori4x4[119:112];
assign ori02_4x4 = ori4x4[111:104];
assign ori03_4x4 = ori4x4[103: 96];
assign ori10_4x4 = ori4x4[ 95: 88];
assign ori11_4x4 = ori4x4[ 87: 80];
assign ori12_4x4 = ori4x4[ 79: 72];
assign ori13_4x4 = ori4x4[ 71: 64];
assign ori20_4x4 = ori4x4[ 63: 56];
assign ori21_4x4 = ori4x4[ 55: 48];
assign ori22_4x4 = ori4x4[ 47: 40];
assign ori23_4x4 = ori4x4[ 39: 32];
assign ori30_4x4 = ori4x4[ 31: 24];
assign ori31_4x4 = ori4x4[ 23: 16];
assign ori32_4x4 = ori4x4[ 15:  8];
assign ori33_4x4 = ori4x4[  7:  0];

assign ori00_16x16 = ori16x16[127:120];
assign ori01_16x16 = ori16x16[119:112];
assign ori02_16x16 = ori16x16[111:104];
assign ori03_16x16 = ori16x16[103: 96];
assign ori10_16x16 = ori16x16[ 95: 88];
assign ori11_16x16 = ori16x16[ 87: 80];
assign ori12_16x16 = ori16x16[ 79: 72];
assign ori13_16x16 = ori16x16[ 71: 64];
assign ori20_16x16 = ori16x16[ 63: 56];
assign ori21_16x16 = ori16x16[ 55: 48];
assign ori22_16x16 = ori16x16[ 47: 40];
assign ori23_16x16 = ori16x16[ 39: 32];
assign ori30_16x16 = ori16x16[ 31: 24];
assign ori31_16x16 = ori16x16[ 23: 16];
assign ori32_16x16 = ori16x16[ 15:  8];
assign ori33_16x16 = ori16x16[  7:  0];

assign ori00_uv = ori_uv[127:120];
assign ori01_uv = ori_uv[119:112];
assign ori02_uv = ori_uv[111:104];
assign ori03_uv = ori_uv[103: 96];
assign ori10_uv = ori_uv[ 95: 88];
assign ori11_uv = ori_uv[ 87: 80];
assign ori12_uv = ori_uv[ 79: 72];
assign ori13_uv = ori_uv[ 71: 64];
assign ori20_uv = ori_uv[ 63: 56];
assign ori21_uv = ori_uv[ 55: 48];
assign ori22_uv = ori_uv[ 47: 40];
assign ori23_uv = ori_uv[ 39: 32];
assign ori30_uv = ori_uv[ 31: 24];
assign ori31_uv = ori_uv[ 23: 16];
assign ori32_uv = ori_uv[ 15:  8];
assign ori33_uv = ori_uv[  7:  0];

//-----------------------------------------------------------
//            Top Control                             
//-----------------------------------------------------------
assign ref_start    		= start_i;
assign i4x4_start			= start_i;
assign i16x16_chroma_start	= start_i; 
assign done_o				= intra_done;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n)
		intra_done <= 1'b0;
	else 
		intra_done <= chroma_rec_done;
end

assign i_16x16_mode = (i16x16_cost < i4x4_cost) ? 1'b1 : 1'b0;
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		intra_mode_o <= 1'b0;
	else if (i4x4_done_flag && i16x16_chroma_done) begin
		if (i_16x16_mode)
			intra_mode_o <= 1'b1;
		else
			intra_mode_o <= 1'b0;
	end
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		i4x4_done_flag <= 1'b0;
	else if (start_i)
		i4x4_done_flag <= 1'b0;
	else if (i4x4_done)
		i4x4_done_flag <= 1'b1;
end

// i16x16_rec_start: automatically start chroma_rec after i16x16_rec, not need another chroma_rec_start
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		i16x16_rec_start <= 1'b0;
	else if (i16x16_rec_start)
		i16x16_rec_start <= 1'b0;
	else if (i4x4_done_flag && i16x16_chroma_done && i_16x16_mode) 
		i16x16_rec_start <= 1'b1;
end
// chroma_rec_start: not do i16x16_rec, and directly do chroma_rec, and finish all intra prediction
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		chroma_rec_start <= 1'b0;
	else if (chroma_rec_start)
		chroma_rec_start <= 1'b0;
	else if (i4x4_done_flag && i16x16_chroma_done && ~i_16x16_mode) 
		chroma_rec_start <= 1'b1;
end

assign i4x4_update   = chroma_rec_start & ~intra_mode_o;
assign i16x16_update = i16x16_rec_done  & intra_mode_o;
assign chroma_update = chroma_rec_done;

//-----------------------------------------------------------
//            Sub Module Instant
//-----------------------------------------------------------
intra_ref u_intra_ref(
				.clk				( clk				),
				.rst_n				( rst_n				),
				.mb_x_total			( mb_x_total		),
				.mb_x				( mb_x				),
				.mb_y				( mb_y				),
				
				.start_i			( ref_start			),
				.i4x4_update_i  	( i4x4_update		),
				.i16x16_update_i	( i16x16_update		),
				.chroma_update_i	( chroma_update		),
				
				.i4x4_num_i			( i4x4_num			),
				.i4x4_end_i       	( i4x4_end      	),
				.i4x4_min_mode_i    ( i4x4_min_mode     ),
				.i4x4_min_val_i     ( i4x4_min_val      ),
				.i4x4_min_num_i		( i4x4_min_num		),
				.i4x4_pred_mode_o   ( i4x4_pred_mode    ),
				.i4x4_pm_o          ( i4x4_pm_o         ),
				.i4x4_bm_o       	( i4x4_bm_o       	),    	
				
				.tq_i4x4_val_i		( tq_i4x4_val_i		),
				.tq_i4x4_num_i      ( tq_i4x4_num_i     ),
				.tq_i16x16_val_i    ( tq_i16x16_val_i   ),
				.tq_i16x16_num_i    ( tq_i16x16_num_i   ),
				.tq_cb_val_i        ( tq_cb_val_i       ),
				.tq_cb_num_i        ( tq_cb_num_i       ),
				.tq_cr_val_i        ( tq_cr_val_i       ),
				.tq_cr_num_i        ( tq_cr_num_i       ),
				
				.rec4x4_00 ( rec00 ), .rec4x4_01 ( rec01 ), .rec4x4_02 ( rec02 ), .rec4x4_03 ( rec03 ),
				.rec4x4_10 ( rec10 ), .rec4x4_11 ( rec11 ), .rec4x4_12 ( rec12 ), .rec4x4_13 ( rec13 ),
				.rec4x4_20 ( rec20 ), .rec4x4_21 ( rec21 ), .rec4x4_22 ( rec22 ), .rec4x4_23 ( rec23 ),
				.rec4x4_30 ( rec30 ), .rec4x4_31 ( rec31 ), .rec4x4_32 ( rec32 ), .rec4x4_33 ( rec33 ),
				
				.ref00_tl ( ref00_tl ),                              
				.ref00_t  ( ref00_t  ), .ref01_t ( ref01_t ), .ref02_t ( ref02_t ), .ref03_t ( ref03_t ), 
				.ref04_t  ( ref04_t  ), .ref05_t ( ref05_t ), .ref06_t ( ref06_t ), .ref07_t ( ref07_t ), 
				.ref08_t  ( ref08_t  ), .ref09_t ( ref09_t ), .ref10_t ( ref10_t ), .ref11_t ( ref11_t ), 
				.ref12_t  ( ref12_t  ), .ref13_t ( ref13_t ), .ref14_t ( ref14_t ), .ref15_t ( ref15_t ), 
				.ref00_l  ( ref00_l  ), .ref01_l ( ref01_l ), .ref02_l ( ref02_l ), .ref03_l ( ref03_l ), 
				.ref04_l  ( ref04_l  ), .ref05_l ( ref05_l ), .ref06_l ( ref06_l ), .ref07_l ( ref07_l ), 
				.ref08_l  ( ref08_l  ), .ref09_l ( ref09_l ), .ref10_l ( ref10_l ), .ref11_l ( ref11_l ), 
				.ref12_l  ( ref12_l  ), .ref13_l ( ref13_l ), .ref14_l ( ref14_l ), .ref15_l ( ref15_l ),
				
				.ref00_tl_u( ref00_tl_u),
				.ref00_t_u ( ref00_t_u ), .ref01_t_u ( ref01_t_u ), .ref02_t_u ( ref02_t_u ), .ref03_t_u ( ref03_t_u ),
				.ref04_t_u ( ref04_t_u ), .ref05_t_u ( ref05_t_u ), .ref06_t_u ( ref06_t_u ), .ref07_t_u ( ref07_t_u ),
				.ref00_l_u ( ref00_l_u ), .ref01_l_u ( ref01_l_u ), .ref02_l_u ( ref02_l_u ), .ref03_l_u ( ref03_l_u ),
				.ref04_l_u ( ref04_l_u ), .ref05_l_u ( ref05_l_u ), .ref06_l_u ( ref06_l_u ), .ref07_l_u ( ref07_l_u ),
				
				.ref00_tl_v( ref00_tl_v),
				.ref00_t_v ( ref00_t_v ), .ref01_t_v ( ref01_t_v ), .ref02_t_v ( ref02_t_v ), .ref03_t_v ( ref03_t_v ),
				.ref04_t_v ( ref04_t_v ), .ref05_t_v ( ref05_t_v ), .ref06_t_v ( ref06_t_v ), .ref07_t_v ( ref07_t_v ),
				.ref00_l_v ( ref00_l_v ), .ref01_l_v ( ref01_l_v ), .ref02_l_v ( ref02_l_v ), .ref03_l_v ( ref03_l_v ),
				.ref04_l_v ( ref04_l_v ), .ref05_l_v ( ref05_l_v ), .ref06_l_v ( ref06_l_v ), .ref07_l_v ( ref07_l_v ),
				
				.ref4x4_00tl( ref4x4_00tl ),
				.ref4x4_00t ( ref4x4_00t  ), .ref4x4_01t ( ref4x4_01t ), .ref4x4_02t ( ref4x4_02t ), .ref4x4_03t ( ref4x4_03t ),
				.ref4x4_00l ( ref4x4_00l  ), .ref4x4_01l ( ref4x4_01l ), .ref4x4_02l ( ref4x4_02l ), .ref4x4_03l ( ref4x4_03l ),
				.ref4x4_00tr( ref4x4_00tr ), .ref4x4_01tr( ref4x4_01tr), .ref4x4_02tr( ref4x4_02tr), .ref4x4_03tr( ref4x4_03tr)
);

intra_16x16_chroma_top u_intra_16x16_chroma_top(
				.clk				( clk				),    
				.rst_n				( rst_n				),    
				.mb_x_total			( mb_x_total		),    
				.mb_x				( mb_x				),    
				.mb_y				( mb_y				),   
				
				.pred_start_i    	( i16x16_chroma_start ),
				.pred_done_o        ( i16x16_chroma_done  ),
				.i16x16_rec_start_i ( i16x16_rec_start  ),
				.i16x16_rec_done_o  ( i16x16_rec_done   ),
				.chroma_rec_start_i ( chroma_rec_start  ),
				.chroma_rec_done_o  ( chroma_rec_done   ),
				.luma_16x16_cost_o  ( i16x16_cost       ),
				.chroma_8x8_cost_o	( chroma_cost   	),			      
				.luma_16x16_sel_o   ( i16x16_num        ),
				.chroma_8x8_sel_o   ( chroma_num        ),
				.i16x16_mode_o		( i16x16_mode_o		),
				.chroma_mode_o		( chroma_mode_o		),
				                   
				.tq_i16x16_en_o     ( tq_i16x16_en_o    ),
				.tq_chroma_en_o     ( tq_chroma_en_o    ),
				.tq_i16x16_num_o    ( tq_i16x16_num_o   ),
				.tq_chroma_num_o	( tq_chroma_num_o	),	
				.tq_i16x16_val_i 	( tq_i16x16_val_i   ), 
				.tq_i16x16_num_i    ( tq_i16x16_num_i   ),
				.tq_cb_val_i        ( tq_cb_val_i       ),
				.tq_cb_num_i        ( tq_cb_num_i       ),
				.tq_cr_val_i        ( tq_cr_val_i       ),
				.tq_cr_num_i     	( tq_cr_num_i     	),		
				
				.ref00_tl_y ( ref00_tl ),                              
				.ref00_t_y  ( ref00_t  ), .ref01_t_y ( ref01_t ), .ref02_t_y ( ref02_t ), .ref03_t_y ( ref03_t ), 
				.ref04_t_y  ( ref04_t  ), .ref05_t_y ( ref05_t ), .ref06_t_y ( ref06_t ), .ref07_t_y ( ref07_t ), 
				.ref08_t_y  ( ref08_t  ), .ref09_t_y ( ref09_t ), .ref10_t_y ( ref10_t ), .ref11_t_y ( ref11_t ), 
				.ref12_t_y  ( ref12_t  ), .ref13_t_y ( ref13_t ), .ref14_t_y ( ref14_t ), .ref15_t_y ( ref15_t ), 
				.ref00_l_y  ( ref00_l  ), .ref01_l_y ( ref01_l ), .ref02_l_y ( ref02_l ), .ref03_l_y ( ref03_l ), 
				.ref04_l_y  ( ref04_l  ), .ref05_l_y ( ref05_l ), .ref06_l_y ( ref06_l ), .ref07_l_y ( ref07_l ), 
				.ref08_l_y  ( ref08_l  ), .ref09_l_y ( ref09_l ), .ref10_l_y ( ref10_l ), .ref11_l_y ( ref11_l ), 
				.ref12_l_y  ( ref12_l  ), .ref13_l_y ( ref13_l ), .ref14_l_y ( ref14_l ), .ref15_l_y ( ref15_l ),
				
				.ref00_tl_u( ref00_tl_u),
				.ref00_t_u ( ref00_t_u ), .ref01_t_u ( ref01_t_u ), .ref02_t_u ( ref02_t_u ), .ref03_t_u ( ref03_t_u ),
				.ref04_t_u ( ref04_t_u ), .ref05_t_u ( ref05_t_u ), .ref06_t_u ( ref06_t_u ), .ref07_t_u ( ref07_t_u ),
				.ref00_l_u ( ref00_l_u ), .ref01_l_u ( ref01_l_u ), .ref02_l_u ( ref02_l_u ), .ref03_l_u ( ref03_l_u ),
				.ref04_l_u ( ref04_l_u ), .ref05_l_u ( ref05_l_u ), .ref06_l_u ( ref06_l_u ), .ref07_l_u ( ref07_l_u ),
				
				.ref00_tl_v( ref00_tl_v),
				.ref00_t_v ( ref00_t_v ), .ref01_t_v ( ref01_t_v ), .ref02_t_v ( ref02_t_v ), .ref03_t_v ( ref03_t_v ),
				.ref04_t_v ( ref04_t_v ), .ref05_t_v ( ref05_t_v ), .ref06_t_v ( ref06_t_v ), .ref07_t_v ( ref07_t_v ),
				.ref00_l_v ( ref00_l_v ), .ref01_l_v ( ref01_l_v ), .ref02_l_v ( ref02_l_v ), .ref03_l_v ( ref03_l_v ),
				.ref04_l_v ( ref04_l_v ), .ref05_l_v ( ref05_l_v ), .ref06_l_v ( ref06_l_v ), .ref07_l_v ( ref07_l_v ),
				
				.ori00_y ( ori00_16x16 ), .ori01_y ( ori01_16x16 ), .ori02_y ( ori02_16x16 ), .ori03_y ( ori03_16x16 ), 
				.ori10_y ( ori10_16x16 ), .ori11_y ( ori11_16x16 ), .ori12_y ( ori12_16x16 ), .ori13_y ( ori13_16x16 ), 
				.ori20_y ( ori20_16x16 ), .ori21_y ( ori21_16x16 ), .ori22_y ( ori22_16x16 ), .ori23_y ( ori23_16x16 ), 
				.ori30_y ( ori30_16x16 ), .ori31_y ( ori31_16x16 ), .ori32_y ( ori32_16x16 ), .ori33_y ( ori33_16x16 ), 
				                                                                      
				.ori00_uv ( ori00_uv ), .ori01_uv ( ori01_uv ), .ori02_uv ( ori02_uv ), .ori03_uv ( ori03_uv ),             
				.ori10_uv ( ori10_uv ), .ori11_uv ( ori11_uv ), .ori12_uv ( ori12_uv ), .ori13_uv ( ori13_uv ),             
				.ori20_uv ( ori20_uv ), .ori21_uv ( ori21_uv ), .ori22_uv ( ori22_uv ), .ori23_uv ( ori23_uv ),             
				.ori30_uv ( ori30_uv ), .ori31_uv ( ori31_uv ), .ori32_uv ( ori32_uv ), .ori33_uv ( ori33_uv ),              
				
				.tq_pre00 ( i16_pre00 ), .tq_pre01 ( i16_pre01 ), .tq_pre02 ( i16_pre02 ), .tq_pre03 ( i16_pre03 ),
				.tq_pre10 ( i16_pre10 ), .tq_pre11 ( i16_pre11 ), .tq_pre12 ( i16_pre12 ), .tq_pre13 ( i16_pre13 ),
				.tq_pre20 ( i16_pre20 ), .tq_pre21 ( i16_pre21 ), .tq_pre22 ( i16_pre22 ), .tq_pre23 ( i16_pre23 ),
				.tq_pre30 ( i16_pre30 ), .tq_pre31 ( i16_pre31 ), .tq_pre32 ( i16_pre32 ), .tq_pre33 ( i16_pre33 ),
				                                                 
				.tq_res00 ( i16_res00 ), .tq_res01 ( i16_res01 ), .tq_res02 ( i16_res02 ), .tq_res03 ( i16_res03 ),    
				.tq_res10 ( i16_res10 ), .tq_res11 ( i16_res11 ), .tq_res12 ( i16_res12 ), .tq_res13 ( i16_res13 ),    
				.tq_res20 ( i16_res20 ), .tq_res21 ( i16_res21 ), .tq_res22 ( i16_res22 ), .tq_res23 ( i16_res23 ),    
				.tq_res30 ( i16_res30 ), .tq_res31 ( i16_res31 ), .tq_res32 ( i16_res32 ), .tq_res33 ( i16_res33 )
);

intra_4x4_top u_intra_4x4_top(
				.clk				( clk				), 
				.rst_n				( rst_n				), 
				.mb_x_total			( mb_x_total		), 
				.mb_x				( mb_x				), 
				.mb_y				( mb_y				), 
				
				.start_i           	( i4x4_start        ),
				.done_o            	( i4x4_done         ),
				.lambda_i          	( lambda            ),
				.luma_4x4_cost_o   	( i4x4_cost         ),
				                  	
				.i4x4_num_o        	( i4x4_num          ),
				.i4x4_end_o        	( i4x4_end          ),
				.i4x4_pred_mode_i  	( i4x4_pred_mode    ),
				.i4x4_min_mode_o   	( i4x4_min_mode     ),
				.i4x4_min_val_o    	( i4x4_min_val      ),
				.i4x4_min_num_o	  	( i4x4_min_num	    ),
				                  	
				.tq_en_o           	( tq_i4x4_en_o      ),
				.tq_mod_o          	( tq_i4x4_mod_o     ),
				.tq_num_o          	( tq_i4x4_num_o     ),
				.tq_end_o          	( tq_i4x4_end_o     ),
				.tq_min_o          	( tq_i4x4_min_o     ),				
				
				.ori00 ( ori00_4x4 ), .ori01 ( ori01_4x4 ), .ori02 ( ori02_4x4 ), .ori03 ( ori03_4x4 ),
				.ori10 ( ori10_4x4 ), .ori11 ( ori11_4x4 ), .ori12 ( ori12_4x4 ), .ori13 ( ori13_4x4 ),
				.ori20 ( ori20_4x4 ), .ori21 ( ori21_4x4 ), .ori22 ( ori22_4x4 ), .ori23 ( ori23_4x4 ),
				.ori30 ( ori30_4x4 ), .ori31 ( ori31_4x4 ), .ori32 ( ori32_4x4 ), .ori33 ( ori33_4x4 ),
				
				.ref00tl( ref4x4_00tl ),                                                                                    
				.ref00t ( ref4x4_00t  ), .ref01t ( ref4x4_01t ), .ref02t ( ref4x4_02t ), .ref03t ( ref4x4_03t ),
				.ref00l ( ref4x4_00l  ), .ref01l ( ref4x4_01l ), .ref02l ( ref4x4_02l ), .ref03l ( ref4x4_03l ),
				.ref00tr( ref4x4_00tr ), .ref01tr( ref4x4_01tr), .ref02tr( ref4x4_02tr), .ref03tr( ref4x4_03tr), 
				
				.pre00 ( i4_pre00 ), .pre01 ( i4_pre01 ), .pre02 ( i4_pre02 ), .pre03 ( i4_pre03 ),
				.pre10 ( i4_pre10 ), .pre11 ( i4_pre11 ), .pre12 ( i4_pre12 ), .pre13 ( i4_pre13 ),
				.pre20 ( i4_pre20 ), .pre21 ( i4_pre21 ), .pre22 ( i4_pre22 ), .pre23 ( i4_pre23 ),
				.pre30 ( i4_pre30 ), .pre31 ( i4_pre31 ), .pre32 ( i4_pre32 ), .pre33 ( i4_pre33 ),
				                           
				.res00 ( i4_res00 ), .res01 ( i4_res01 ), .res02 ( i4_res02 ), .res03 ( i4_res03 ),
				.res10 ( i4_res10 ), .res11 ( i4_res11 ), .res12 ( i4_res12 ), .res13 ( i4_res13 ),
				.res20 ( i4_res20 ), .res21 ( i4_res21 ), .res22 ( i4_res22 ), .res23 ( i4_res23 ),
				.res30 ( i4_res30 ), .res31 ( i4_res31 ), .res32 ( i4_res32 ), .res33 ( i4_res33 )
);      

intra_lambda u_lambda(
				.qp_i		( qp		),
				.lambda_o	( lambda	)
);

always @(*) begin
	if (tq_i4x4_en_o) begin
		pre00 = i4_pre00; pre01 = i4_pre01; pre02 = i4_pre02; pre03 = i4_pre03; 
		pre10 = i4_pre10; pre11 = i4_pre11; pre12 = i4_pre12; pre13 = i4_pre13; 
		pre20 = i4_pre20; pre21 = i4_pre21; pre22 = i4_pre22; pre23 = i4_pre23; 
        pre30 = i4_pre30; pre31 = i4_pre31; pre32 = i4_pre32; pre33 = i4_pre33; 
	end
	else begin
		pre00 = i16_pre00; pre01 = i16_pre01; pre02 = i16_pre02; pre03 = i16_pre03; 
        pre10 = i16_pre10; pre11 = i16_pre11; pre12 = i16_pre12; pre13 = i16_pre13; 
        pre20 = i16_pre20; pre21 = i16_pre21; pre22 = i16_pre22; pre23 = i16_pre23; 
        pre30 = i16_pre30; pre31 = i16_pre31; pre32 = i16_pre32; pre33 = i16_pre33;       
  	end
end

always @(*) begin
	if (tq_i4x4_en_o) begin
		res00 = i4_res00; res01 = i4_res01; res02 = i4_res02; res03 = i4_res03;
		res10 = i4_res10; res11 = i4_res11; res12 = i4_res12; res13 = i4_res13;
		res20 = i4_res20; res21 = i4_res21; res22 = i4_res22; res23 = i4_res23;
		res30 = i4_res30; res31 = i4_res31; res32 = i4_res32; res33 = i4_res33;			     
	end
	else begin
		res00 = i16_res00; res01 = i16_res01; res02 = i16_res02; res03 = i16_res03;  
	    res10 = i16_res10; res11 = i16_res11; res12 = i16_res12; res13 = i16_res13;  
	    res20 = i16_res20; res21 = i16_res21; res22 = i16_res22; res23 = i16_res23;  
	    res30 = i16_res30; res31 = i16_res31; res32 = i16_res32; res33 = i16_res33;  
	end
end

endmodule