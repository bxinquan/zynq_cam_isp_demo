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
// Filename       : intra16x16_chroma_plane.v
// Author         : huibo zhong
// Created        : 2011-03-10
// Description    : intra_16x16_chroma_plane
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module intra_16x16_chroma_plane(
				clk,
				rst_n,
				
				mb_avail_t,
				mb_avail_l,
				intra16x16_start,
				chroma_start,
				blk16x16_num,
				blk_uv_num,
				curr_mode,
				
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
				
				pixel_ref00_tl,
				pixel_ref00_l,	pixel_ref01_l, 	pixel_ref02_l,	pixel_ref03_l,
				pixel_ref04_l,	pixel_ref05_l, 	pixel_ref06_l,	pixel_ref07_l,
				pixel_ref08_l,	pixel_ref09_l, 	pixel_ref10_l,	pixel_ref11_l,
				pixel_ref12_l,	pixel_ref13_l, 	pixel_ref14_l,	pixel_ref15_l,				
				pixel_ref00_t,	pixel_ref01_t,	pixel_ref02_t,	pixel_ref03_t,
				pixel_ref04_t,	pixel_ref05_t,	pixel_ref06_t,	pixel_ref07_t,
				pixel_ref08_t,	pixel_ref09_t,	pixel_ref10_t,	pixel_ref11_t,
				pixel_ref12_t,	pixel_ref13_t,	pixel_ref14_t,	pixel_ref15_t,								
				
				pixel_plane00,	pixel_plane01,	pixel_plane02,	pixel_plane03,
				pixel_plane10,	pixel_plane11,	pixel_plane12,	pixel_plane13,
				pixel_plane20,	pixel_plane21,	pixel_plane22,	pixel_plane23,
				pixel_plane30,	pixel_plane31,	pixel_plane32,	pixel_plane33
);
// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input   clk, rst_n;
// Intra_16x16_Chrome Ctrl IF
input   mb_avail_t, mb_avail_l;
input   [3:0] blk16x16_num;
input   [2:0] blk_uv_num;
input   [3:0] curr_mode;
input   intra16x16_start;
input   chroma_start;
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
// Output pred plane-mode pixels
output	[`BIT_DEPTH-1:0]		pixel_plane00, pixel_plane01, pixel_plane02, pixel_plane03,
								pixel_plane10, pixel_plane11, pixel_plane12, pixel_plane13,
								pixel_plane20, pixel_plane21, pixel_plane22, pixel_plane23,
								pixel_plane30, pixel_plane31, pixel_plane32, pixel_plane33;

// ********************************************
//                                             
//    Signals DECLARATION               
//                                             
// ********************************************
reg   	[`BIT_DEPTH-1:0]		pixel_plane00, pixel_plane01, pixel_plane02, pixel_plane03,
                                pixel_plane10, pixel_plane11, pixel_plane12, pixel_plane13,
                                pixel_plane20, pixel_plane21, pixel_plane22, pixel_plane23,
                                pixel_plane30, pixel_plane31, pixel_plane32, pixel_plane33;

reg signed [`BIT_DEPTH+15:0] 	pixel_plane00_t;  

wire   	[`BIT_DEPTH+10:0]		pixel_plane00_tt, pixel_plane01_tt,
								pixel_plane02_tt, pixel_plane03_tt,
								pixel_plane10_tt, pixel_plane11_tt,
								pixel_plane12_tt, pixel_plane13_tt,
								pixel_plane20_tt, pixel_plane21_tt,
								pixel_plane22_tt, pixel_plane23_tt,
								pixel_plane30_tt, pixel_plane31_tt,
								pixel_plane32_tt, pixel_plane33_tt;

reg   	[`BIT_DEPTH+15:0]		pixel_plane00_tt_r, pixel_plane01_tt_r,
								pixel_plane02_tt_r, pixel_plane03_tt_r,
								pixel_plane10_tt_r, pixel_plane11_tt_r,
								pixel_plane12_tt_r, pixel_plane13_tt_r,
								pixel_plane20_tt_r, pixel_plane21_tt_r,
								pixel_plane22_tt_r, pixel_plane23_tt_r,
								pixel_plane30_tt_r, pixel_plane31_tt_r,
								pixel_plane32_tt_r, pixel_plane33_tt_r;

reg signed [`BIT_DEPTH+5 :0] 	a_y, a_u, a_v;
reg signed [`BIT_DEPTH+9:0]  	b_t_y, b_t_u, b_t_v,
								c_t_y, c_t_u, c_t_v;
reg signed [`BIT_DEPTH+5 :0] 	H_y, H_u, H_v,
								V_y, V_u, V_v;
							
reg signed [`BIT_DEPTH+5 :0] 	a;
reg signed [`BIT_DEPTH+9 :0] 	b, c ;
reg signed [`BIT_DEPTH+7 :0] 	H, V;

wire                  			h_en,  v_en;
wire                  			h_en_y, h_en_u, h_en_v,
								v_en_y, v_en_u, v_en_v;

reg  [3:0]            			hv_cnt;
reg  [3:0]            			mul_in0;
wire signed [4:0]            	mul_in0_s;
reg  [`BIT_DEPTH-1:0] 			hv_in0, hv_in1;
wire [`BIT_DEPTH:0]   			hv_res;
wire [`BIT_DEPTH:0]   			hv_abs_res;
wire signed [`BIT_DEPTH+4:0] 	hv_pdt_s;
wire signed [`BIT_DEPTH:0]   	hv_res_s;
reg                   			hv_done_y  , hv_done_uv;
reg                   			hv_done_y_r, hv_done_uv_r;

reg                   			chroma_start_r;
reg                   			chroma_en, luma_en;
reg                   			intra16x16;

// ********************************************
//                                             
//    Logic DECLARATION               
//                                             
// ********************************************
assign mul_in0_s = {1'b0, mul_in0};
assign hv_res    = hv_in0 - hv_in1;
assign hv_res_s  = hv_res;
assign hv_pdt_s  = mul_in0_s * hv_res_s;

assign h_en_y = luma_en&&hv_cnt<4'd8;
assign v_en_y = luma_en&&hv_cnt>4'd7;
assign h_en_u = chroma_en && hv_cnt<'d4;
assign v_en_u = chroma_en && hv_cnt>'d3&&hv_cnt<'d8;
assign h_en_v = chroma_en && hv_cnt>'d7&&hv_cnt<'d12;
assign v_en_v = chroma_en && hv_cnt>'d11;

//edit by xyuan 
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		b_t_y <= 'd0;
		c_t_y <= 'd0;
		b_t_u <= 'd0;
		c_t_u <= 'd0;
		b_t_v <=  'd0;
		c_t_v <=  'd0;
	end
	else if(hv_done_y)begin
		b_t_y <= ((H_y<<<18'sd2)+H_y+18'sd32)>>>18'sd6;   //////////
		c_t_y <= ((V_y<<<18'sd2)+V_y+18'sd32)>>>18'sd6;
	end
	else if(hv_done_uv)begin
		b_t_u  <= ((H_u<<<18'sd4)+H_u+18'sd16)>>>18'sd5;
		c_t_u  <= ((V_u<<<18'sd4)+V_u+18'sd16)>>>18'sd5;
		b_t_v  <= ((H_v<<<18'sd4)+H_v+18'sd16)>>>18'sd5;
		c_t_v  <= ((V_v<<<18'sd4)+V_v+18'sd16)>>>18'sd5;
	end
end
//end by xyuan 

always @(posedge clk or negedge rst_n)
	if(!rst_n)
		intra16x16 <= 1'b0;
	else if(chroma_start)
		intra16x16 <= 1'b0;
	else if(intra16x16_start)
		intra16x16 <= 1'b1;

always @(posedge clk or negedge rst_n)
	if(!rst_n)
		chroma_start_r <= 1'b0;
	else 
		chroma_start_r <= chroma_start;

always @(posedge clk or negedge rst_n)
	if(!rst_n)begin
		a_y <= 'd0;
		a_u <= 'd0;
		a_v <= 'd0;
	end
	else if(intra16x16_start)
		a_y <= (pixel_ref15_t+pixel_ref15_l)<<4;
	else if(chroma_start)
		a_u <= (pixel_ref07_t_u+pixel_ref07_l_u)<<4;
	else if(chroma_start_r)
		a_v <= (pixel_ref07_t_v+pixel_ref07_l_v)<<4;

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		H_y <= 'd0;
		V_y <= 'd0;
	end
	else if(intra16x16_start)begin
		H_y <= 'd0;
		V_y <= 'd0;
	end
	else if(h_en_y)
		H_y <= H_y + hv_pdt_s;
	else if(v_en_y)
		V_y <= V_y + hv_pdt_s;
end
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		H_u <= 'd0;
		V_u <= 'd0;
	end
	else if(intra16x16_start)begin
		H_u <= 'd0;
		V_u <= 'd0;
	end
	else if(h_en_u)
		H_u <= H_u + hv_pdt_s;
	else if(v_en_u)
		V_u <= V_u + hv_pdt_s;

end
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		H_v <= 'd0;
		V_v <= 'd0;
	end
	else if(intra16x16_start)begin
		H_v <= 'd0;
		V_v <= 'd0;
	end
	else if(h_en_v)
		H_v <= H_v + hv_pdt_s;
	else if(v_en_v)
		V_v <= V_v + hv_pdt_s;
end

always @(posedge clk or negedge rst_n)
	if(!rst_n)
		hv_cnt <= 'd0;
	else if(intra16x16_start||chroma_start)
		hv_cnt <= 'd0;
	else if(luma_en||chroma_en)
		hv_cnt <= hv_cnt + 1'b1;

always @(posedge clk or negedge rst_n)
	if(!rst_n)
		luma_en <= 1'b0;
	else if(intra16x16_start&&mb_avail_t&&mb_avail_l)
		luma_en <= 1'b1;
	else if(hv_cnt == 'd15)
		luma_en <= 1'b0;
		
always @(posedge clk or negedge rst_n)
	if(!rst_n)
		chroma_en <= 1'b0;
	else if(chroma_start&&mb_avail_t&&mb_avail_l)
		chroma_en <= 1'b1;
	else if(hv_cnt == 'd15)
		chroma_en <= 1'b0;

always @(posedge clk or negedge rst_n)
	if(!rst_n)
		hv_done_y <= 1'b0;
	else if(luma_en&&hv_cnt == 'd15)
		hv_done_y <= 1'b1;
	else
		hv_done_y <= 1'b0;

always @(posedge clk or negedge rst_n)
	if(!rst_n)
		hv_done_uv <= 1'b0;
	else if(chroma_en&&(hv_cnt == 'd7 || hv_cnt == 'd15) )
		hv_done_uv <= 1'b1;
	else
		hv_done_uv <= 1'b0;

always @ (*)begin
	if(chroma_en) begin
		case(hv_cnt)
			3'd0: begin
				hv_in0 = pixel_ref04_t_u ;
				hv_in1 = pixel_ref02_t_u ;
				mul_in0= 3'd1;
			end
			3'd1: begin
				hv_in0 = pixel_ref05_t_u ;
				hv_in1 = pixel_ref01_t_u ;
				mul_in0= 3'd2;
			end
			3'd2: begin
				hv_in0 = pixel_ref06_t_u ;
				hv_in1 = pixel_ref00_t_u ;
				mul_in0= 3'd3;
			end
			3'd3: begin
				hv_in0 = pixel_ref07_t_u;
				hv_in1 = pixel_ref00_tl_u;
				mul_in0= 3'd4;
			end
			3'd4: begin
				hv_in0 = pixel_ref04_l_u;
				hv_in1 = pixel_ref02_l_u;
				mul_in0= 3'd1;
			end
			3'd5: begin
				hv_in0 = pixel_ref05_l_u ;
				hv_in1 = pixel_ref01_l_u ;
				mul_in0= 3'd2;
			end
			3'd6: begin
				hv_in0 = pixel_ref06_l_u ;
				hv_in1 = pixel_ref00_l_u ;
				mul_in0= 3'd3;
			end
			3'd7: begin
				hv_in0 = pixel_ref07_l_u;
				hv_in1 = pixel_ref00_tl_u;
				mul_in0= 3'd4;
			end
			4'd8: begin
				hv_in0 = pixel_ref04_t_v ;
				hv_in1 = pixel_ref02_t_v ;
				mul_in0= 3'd1;
			end
			4'd9: begin
				hv_in0 = pixel_ref05_t_v;
				hv_in1 = pixel_ref01_t_v;
				mul_in0= 3'd2;
			end
			4'd10: begin
				hv_in0 = pixel_ref06_t_v;
				hv_in1 = pixel_ref00_t_v;
				mul_in0= 3'd3;
			end
			4'd11: begin
				hv_in0 = pixel_ref07_t_v;
				hv_in1 = pixel_ref00_tl_v ;
				mul_in0= 3'd4;
			end
			4'd12: begin
				hv_in0 = pixel_ref04_l_v ;
				hv_in1 = pixel_ref02_l_v ;
				mul_in0= 3'd1;
			end
			4'd13: begin
				hv_in0 = pixel_ref05_l_v ;
				hv_in1 = pixel_ref01_l_v ;
				mul_in0= 3'd2;
			end
			4'd14: begin
				hv_in0 = pixel_ref06_l_v ;
				hv_in1 = pixel_ref00_l_v ;
				mul_in0= 3'd3;
			end
			5'd15: begin
				hv_in0 = pixel_ref07_l_v;
				hv_in1 = pixel_ref00_tl_v;
				mul_in0= 3'd4;
			end
		endcase
	end
	else if(luma_en) begin
	case(hv_cnt)
		4'd0: begin
			hv_in0 = pixel_ref08_t ;
			hv_in1 = pixel_ref06_t ;
			mul_in0= 4'd1;
		end
		4'd1: begin
			hv_in0 = pixel_ref09_t ;
			hv_in1 = pixel_ref05_t ;
			mul_in0= 4'd2;
		end
		4'd2: begin
			hv_in0 = pixel_ref10_t ;
			hv_in1 = pixel_ref04_t ;
			mul_in0= 4'd3;
		end
		4'd3: begin
			hv_in0 = pixel_ref11_t ;
			hv_in1 = pixel_ref03_t ;
			mul_in0= 4'd4;
		end
		4'd4: begin
			hv_in0 = pixel_ref12_t ;
			hv_in1 = pixel_ref02_t ;
			mul_in0= 4'd5;
		end
		4'd5: begin
			hv_in0 = pixel_ref13_t ;
			hv_in1 = pixel_ref01_t ;
			mul_in0= 4'd6;
		end
		4'd6: begin
			hv_in0 = pixel_ref14_t ;
			hv_in1 = pixel_ref00_t ;
			mul_in0= 4'd7;
		end
		4'd7: begin
			hv_in0 = pixel_ref15_t ;
			hv_in1 = pixel_ref00_tl;
			mul_in0= 4'd8;
		end
		4'd8: begin
			hv_in0 = pixel_ref08_l ;
			hv_in1 = pixel_ref06_l ;
			mul_in0= 4'd1;
		end
		4'd9: begin
			hv_in0 = pixel_ref09_l ;
			hv_in1 = pixel_ref05_l ;
			mul_in0= 4'd2;
		end
		4'd10: begin
			hv_in0 = pixel_ref10_l ;
			hv_in1 = pixel_ref04_l ;
			mul_in0= 4'd3;
		end
		4'd11: begin
			hv_in0 = pixel_ref11_l ;
			hv_in1 = pixel_ref03_l ;
			mul_in0= 4'd4;
		end
		4'd12: begin
			hv_in0 = pixel_ref12_l ;
			hv_in1 = pixel_ref02_l ;
			mul_in0= 4'd5;
		end
		4'd13: begin
			hv_in0 = pixel_ref13_l ;
			hv_in1 = pixel_ref01_l ;
			mul_in0= 4'd6;
		end
		4'd14: begin
			hv_in0 = pixel_ref14_l ;
			hv_in1 = pixel_ref00_l ;
			mul_in0= 4'd7;
		end
		4'd15: begin
			hv_in0 = pixel_ref15_l ;
			hv_in1 = pixel_ref00_tl;
			mul_in0= 4'd8;
		end
	endcase
	end
//add  by xyuan 
	else begin
	    	hv_in0 = 'd0 ;
			hv_in1 = 'd0 ;
			mul_in0= 4'd0;
	end
//end by xyuan 
end

//edit by xyuan 

//----------------------------------------------------
//			Output Plane Prediction Data
//----------------------------------------------------
always @(*)begin
	if(curr_mode==4'b0011) begin
		a = a_y;
		b = b_t_y;
		c = c_t_y;
	end
	else if(blk_uv_num[2]==1'b0)begin
		a = a_u;
		b = b_t_u;
		c = c_t_u;
	end
	else begin
		a = a_v;
		b = b_t_v;
		c = c_t_v;
	end
end

always @(*)begin
	if(curr_mode==4'b0011)begin // INTRA16x16_PLANE= 4'b0011
		case(blk16x16_num)
			4'd0 : pixel_plane00_t =  a + b*(-24'sd7)  + c*(-24'sd7)  + 24'sd16;///////////
			4'd1 : pixel_plane00_t =  a + b*(-24'sd3)  + c*(-24'sd7)  + 24'sd16;
			4'd2 : pixel_plane00_t =  a + b*(-24'sd7)  + c*(-24'sd3)  + 24'sd16;
			4'd3 : pixel_plane00_t =  a + b*(-24'sd3)  + c*(-24'sd3)  + 24'sd16;
			4'd4 : pixel_plane00_t =  a + b            + c*(-24'sd7)  + 24'sd16;
			4'd5 : pixel_plane00_t =  a + b*24'sd5     + c*(-24'sd7)  + 24'sd16;
			4'd6 : pixel_plane00_t =  a + b            + c*(-24'sd3)  + 24'sd16;
			4'd7 : pixel_plane00_t =  a + b*24'sd5     + c*(-24'sd3)  + 24'sd16;
			4'd8 : pixel_plane00_t =  a + b*(-24'sd7)  + c           + 24'sd16;
			4'd9 : pixel_plane00_t =  a + b*(-24'sd3)  + c           + 24'sd16;
			4'd10: pixel_plane00_t =  a + b*(-24'sd7)  + c*24'sd5    + 24'sd16;
			4'd11: pixel_plane00_t =  a + b*(-24'sd3)  + c*24'sd5    + 24'sd16;
			4'd12: pixel_plane00_t =  a + b            + c           + 24'sd16;
			4'd13: pixel_plane00_t =  a + b*24'sd5     + c           + 24'sd16;
			4'd14: pixel_plane00_t =  a + b            + c*24'sd5    + 24'sd16;
			4'd15: pixel_plane00_t =  a + b*24'sd5     + c*24'sd5    + 24'sd16;
		endcase
	end 
	else if(curr_mode==4'b1011)begin // CHROMA_PLANE    = 4'b1011
		case(blk_uv_num)
		4'd0 :  pixel_plane00_t =  a + b*(-24'sd3) + c*(-24'sd3) + 24'sd16;
		4'd1 :  pixel_plane00_t =  a + b           + c*(-24'sd3) + 24'sd16;
		4'd2 :  pixel_plane00_t =  a + b*(-24'sd3) + c           + 24'sd16;
		4'd3 :  pixel_plane00_t =  a + b           + c           + 24'sd16;
		4'd4 :  pixel_plane00_t =  a + b*(-24'sd3) + c*(-24'sd3) + 24'sd16;
		4'd5 :  pixel_plane00_t =  a + b           + c*(-24'sd3) + 24'sd16;
		4'd6 :  pixel_plane00_t =  a + b*(-24'sd3) + c           + 24'sd16;
		4'd7 :	pixel_plane00_t =  a + b           + c           + 24'sd16;
		endcase
	end
	else 
		pixel_plane00_t = 'd0;	
end

always @(*)begin
	pixel_plane00_tt_r = pixel_plane00_t>>>19'sd5;
	pixel_plane01_tt_r = ( pixel_plane00_t + b                   ) >>> 19'sd5;
	pixel_plane02_tt_r = ( pixel_plane00_t + b*19'sd2            ) >>> 19'sd5;
	pixel_plane03_tt_r = ( pixel_plane00_t + b*19'sd3            ) >>> 19'sd5;
	pixel_plane10_tt_r = ( pixel_plane00_t            + c        ) >>> 19'sd5;
	pixel_plane11_tt_r = ( pixel_plane00_t + b        + c        ) >>> 19'sd5;
	pixel_plane12_tt_r = ( pixel_plane00_t + b*19'sd2 + c        ) >>> 19'sd5;
	pixel_plane13_tt_r = ( pixel_plane00_t + b*19'sd3 + c        ) >>> 19'sd5;
	pixel_plane20_tt_r = ( pixel_plane00_t            + c*19'sd2 ) >>> 19'sd5;
	pixel_plane21_tt_r = ( pixel_plane00_t + b        + c*19'sd2 ) >>> 19'sd5;
	pixel_plane22_tt_r = ( pixel_plane00_t + b*19'sd2 + c*19'sd2 ) >>> 19'sd5;
	pixel_plane23_tt_r = ( pixel_plane00_t + b*19'sd3 + c*19'sd2 ) >>> 19'sd5;
	pixel_plane30_tt_r = ( pixel_plane00_t            + c*19'sd3 ) >>> 19'sd5;
	pixel_plane31_tt_r = ( pixel_plane00_t + b        + c*19'sd3 ) >>> 19'sd5;
	pixel_plane32_tt_r = ( pixel_plane00_t + b*19'sd2 + c*19'sd3 ) >>> 19'sd5;
	pixel_plane33_tt_r = ( pixel_plane00_t + b*19'sd3 + c*19'sd3 ) >>> 19'sd5; 
end

assign   pixel_plane00_tt = pixel_plane00_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane01_tt = pixel_plane01_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane02_tt = pixel_plane02_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane03_tt = pixel_plane03_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane10_tt = pixel_plane10_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane11_tt = pixel_plane11_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane12_tt = pixel_plane12_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane13_tt = pixel_plane13_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane20_tt = pixel_plane20_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane21_tt = pixel_plane21_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane22_tt = pixel_plane22_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane23_tt = pixel_plane23_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane30_tt = pixel_plane30_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane31_tt = pixel_plane31_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane32_tt = pixel_plane32_tt_r[`BIT_DEPTH+10:0] ;
assign   pixel_plane33_tt = pixel_plane33_tt_r[`BIT_DEPTH+10:0] ;    
//end by xyuan 

always @(*)begin
	pixel_plane00 = pixel_plane00_tt[`BIT_DEPTH+10]?8'd0:pixel_plane00_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane00_tt[`BIT_DEPTH-1:0];
	pixel_plane01 = pixel_plane01_tt[`BIT_DEPTH+10]?8'd0:pixel_plane01_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane01_tt[`BIT_DEPTH-1:0];
	pixel_plane02 = pixel_plane02_tt[`BIT_DEPTH+10]?8'd0:pixel_plane02_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane02_tt[`BIT_DEPTH-1:0];
	pixel_plane03 = pixel_plane03_tt[`BIT_DEPTH+10]?8'd0:pixel_plane03_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane03_tt[`BIT_DEPTH-1:0];
	pixel_plane10 = pixel_plane10_tt[`BIT_DEPTH+10]?8'd0:pixel_plane10_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane10_tt[`BIT_DEPTH-1:0];
	pixel_plane11 = pixel_plane11_tt[`BIT_DEPTH+10]?8'd0:pixel_plane11_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane11_tt[`BIT_DEPTH-1:0];
	pixel_plane12 = pixel_plane12_tt[`BIT_DEPTH+10]?8'd0:pixel_plane12_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane12_tt[`BIT_DEPTH-1:0];
	pixel_plane13 = pixel_plane13_tt[`BIT_DEPTH+10]?8'd0:pixel_plane13_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane13_tt[`BIT_DEPTH-1:0];
	pixel_plane20 = pixel_plane20_tt[`BIT_DEPTH+10]?8'd0:pixel_plane20_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane20_tt[`BIT_DEPTH-1:0];
	pixel_plane21 = pixel_plane21_tt[`BIT_DEPTH+10]?8'd0:pixel_plane21_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane21_tt[`BIT_DEPTH-1:0];
	pixel_plane22 = pixel_plane22_tt[`BIT_DEPTH+10]?8'd0:pixel_plane22_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane22_tt[`BIT_DEPTH-1:0];
	pixel_plane23 = pixel_plane23_tt[`BIT_DEPTH+10]?8'd0:pixel_plane23_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane23_tt[`BIT_DEPTH-1:0];
	pixel_plane30 = pixel_plane30_tt[`BIT_DEPTH+10]?8'd0:pixel_plane30_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane30_tt[`BIT_DEPTH-1:0];
	pixel_plane31 = pixel_plane31_tt[`BIT_DEPTH+10]?8'd0:pixel_plane31_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane31_tt[`BIT_DEPTH-1:0];
	pixel_plane32 = pixel_plane32_tt[`BIT_DEPTH+10]?8'd0:pixel_plane32_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane32_tt[`BIT_DEPTH-1:0];
	pixel_plane33 = pixel_plane33_tt[`BIT_DEPTH+10]?8'd0:pixel_plane33_tt[`BIT_DEPTH+9:`BIT_DEPTH]?8'd255:pixel_plane33_tt[`BIT_DEPTH-1:0]; 
end

endmodule
