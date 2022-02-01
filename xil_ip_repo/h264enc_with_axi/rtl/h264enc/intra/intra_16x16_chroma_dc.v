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
// Filename       : intra_16x16_chroma_dc.v
// Author         : Yibo FAN
// Created        : 2012-12-31
// Description    : intra_16x16_chroma_dc value pre-computation
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module intra_16x16_chroma_dc(
				clk,       
				rst_n,     	           
				mb_avail_t,
				mb_avail_l,
				pred_start,
				pred_done,
				curr_mode,     
				blk16x16_num,
				blk_uv_num,
				dc_y,
				dc_u,
				dc_v,
				
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
				pixel_ref12_t,	pixel_ref13_t,	pixel_ref14_t,	pixel_ref15_t		
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input   						clk, rst_n;
// Intra_16x16_Chrome Ctrl IF
input   						mb_avail_t, mb_avail_l;
input							pred_start;
input							pred_done;
input   						[3:0] blk16x16_num;
input   						[2:0] blk_uv_num;
input   						[3:0] curr_mode;

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
// Output pred DC-modes values
output	[`BIT_DEPTH-1:0]		dc_y, dc_u, dc_v;

// ********************************************
//                                             
//    Signals DECLARATION                      
//                                             
// ********************************************
//-----DC----
//   0   1
//2      
//3  
reg  [`BIT_DEPTH+3:0] 			sum_dc_u0, sum_dc_u1, sum_dc_u2, sum_dc_u3,
								sum_dc_v0, sum_dc_v1, sum_dc_v2, sum_dc_v3;
reg  [`BIT_DEPTH+4:0] 			sum_dc;						
wire [`BIT_DEPTH-1:0] 			dc_y, dc_u, dc_v;  
reg  [`BIT_DEPTH+4:0] 			dc_y_w, dc_u_w, dc_v_w;

reg								pred_en;

// ********************************************
//                                             
//    Logic DECLARATION                        
//                                             
// ********************************************
always @(posedge clk or negedge rst_n) begin
	if (!rst_n)
		pred_en <= 1'b0;
	else if (pred_start)
		pred_en <= 1'b1;
	else if (pred_done)
		pred_en <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		sum_dc <= 'd0;
	else if(curr_mode == 4'b1111) // IDLE = 4'b1111
		sum_dc <= 'd0;
	else if(curr_mode == 4'b0000 && pred_en) // INTRA16x16_V = 4'b0000
		case(blk16x16_num)
			4'd0 : sum_dc <= sum_dc + pixel_ref00_t;
			4'd1 : sum_dc <= sum_dc + pixel_ref01_t;
			4'd2 : sum_dc <= sum_dc + pixel_ref02_t;
			4'd3 : sum_dc <= sum_dc + pixel_ref03_t;
			4'd4 : sum_dc <= sum_dc + pixel_ref04_t;
			4'd5 : sum_dc <= sum_dc + pixel_ref05_t;
			4'd6 : sum_dc <= sum_dc + pixel_ref06_t;
			4'd7 : sum_dc <= sum_dc + pixel_ref07_t;
			4'd8 : sum_dc <= sum_dc + pixel_ref08_t;
			4'd9 : sum_dc <= sum_dc + pixel_ref09_t;
			4'd10: sum_dc <= sum_dc + pixel_ref10_t;
			4'd11: sum_dc <= sum_dc + pixel_ref11_t;
			4'd12: sum_dc <= sum_dc + pixel_ref12_t;
			4'd13: sum_dc <= sum_dc + pixel_ref13_t;
			4'd14: sum_dc <= sum_dc + pixel_ref14_t;
			4'd15: sum_dc <= sum_dc + pixel_ref15_t;
		endcase
	else if(curr_mode == 4'b0001 && pred_en) // INTRA16x16_H    = 4'b0001
		case(blk16x16_num)
			4'd0 : sum_dc <= sum_dc + pixel_ref00_l;
			4'd1 : sum_dc <= sum_dc + pixel_ref01_l;
			4'd2 : sum_dc <= sum_dc + pixel_ref02_l;
			4'd3 : sum_dc <= sum_dc + pixel_ref03_l;
			4'd4 : sum_dc <= sum_dc + pixel_ref04_l;
			4'd5 : sum_dc <= sum_dc + pixel_ref05_l;
			4'd6 : sum_dc <= sum_dc + pixel_ref06_l;
			4'd7 : sum_dc <= sum_dc + pixel_ref07_l;
			4'd8 : sum_dc <= sum_dc + pixel_ref08_l;
			4'd9 : sum_dc <= sum_dc + pixel_ref09_l;
			4'd10: sum_dc <= sum_dc + pixel_ref10_l;
			4'd11: sum_dc <= sum_dc + pixel_ref11_l;
			4'd12: sum_dc <= sum_dc + pixel_ref12_l;
			4'd13: sum_dc <= sum_dc + pixel_ref13_l;
			4'd14: sum_dc <= sum_dc + pixel_ref14_l;
			4'd15: sum_dc <= sum_dc + pixel_ref15_l;
		endcase
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		sum_dc_u0 <= 'd0; 
		sum_dc_v0 <= 'd0;
		sum_dc_u1 <= 'd0; 
		sum_dc_v1 <= 'd0;
		sum_dc_u2 <= 'd0; 
		sum_dc_v2 <= 'd0;
		sum_dc_u3 <= 'd0; 
		sum_dc_v3 <= 'd0;
	end
	else if(curr_mode == 4'b1111)begin // IDLE = 4'b1111
		sum_dc_u0 <= 'd0; 
		sum_dc_v0 <= 'd0;
		sum_dc_u1 <= 'd0; 
		sum_dc_v1 <= 'd0;
		sum_dc_u2 <= 'd0; 
		sum_dc_v2 <= 'd0;
		sum_dc_u3 <= 'd0; 
		sum_dc_v3 <= 'd0;
	end
	else if(curr_mode == 4'b1001 && pred_en) // CHROMA_H = 4'b1001
		case(blk_uv_num[2:0])
			3'd0 :begin
							sum_dc_u2 <= sum_dc_u2 + pixel_ref00_l_u;
							sum_dc_v2 <= sum_dc_v2 + pixel_ref00_l_v;
						end
			3'd1 :begin
							sum_dc_u2 <= sum_dc_u2 + pixel_ref01_l_u;
							sum_dc_v2 <= sum_dc_v2 + pixel_ref01_l_v;
						end
			3'd2 : begin
							sum_dc_u2 <= sum_dc_u2 + pixel_ref02_l_u;
							sum_dc_v2 <= sum_dc_v2 + pixel_ref02_l_v;
						end
			3'd3 : begin
							sum_dc_u2 <= sum_dc_u2 + pixel_ref03_l_u;
							sum_dc_v2 <= sum_dc_v2 + pixel_ref03_l_v;
						end
			3'd4 :begin
							sum_dc_u3 <= sum_dc_u3 + pixel_ref04_l_u;
							sum_dc_v3 <= sum_dc_v3 + pixel_ref04_l_v;
						end
			3'd5 :begin
							sum_dc_u3 <= sum_dc_u3 + pixel_ref05_l_u;
							sum_dc_v3 <= sum_dc_v3 + pixel_ref05_l_v;
						end
			3'd6 :begin
							sum_dc_u3 <= sum_dc_u3 + pixel_ref06_l_u;
							sum_dc_v3 <= sum_dc_v3 + pixel_ref06_l_v;
						end
			3'd7 :begin
							sum_dc_u3 <= sum_dc_u3 + pixel_ref07_l_u;
							sum_dc_v3 <= sum_dc_v3 + pixel_ref07_l_v;
						end
		endcase
	else if(curr_mode == 4'b1010 && pred_en) // CHROMA_V = 4'b1010
		case(blk_uv_num[2:0])
			3'd0 :begin
							sum_dc_u0 <= sum_dc_u0 + pixel_ref00_t_u;
							sum_dc_v0 <= sum_dc_v0 + pixel_ref00_t_v;
						end
			3'd1 :begin
							sum_dc_u0 <= sum_dc_u0 + pixel_ref01_t_u;
							sum_dc_v0 <= sum_dc_v0 + pixel_ref01_t_v;
						end
			3'd2 : begin
							sum_dc_u0 <= sum_dc_u0 + pixel_ref02_t_u;
							sum_dc_v0 <= sum_dc_v0 + pixel_ref02_t_v;
						end
			3'd3 : begin
							sum_dc_u0 <= sum_dc_u0 + pixel_ref03_t_u;
							sum_dc_v0 <= sum_dc_v0 + pixel_ref03_t_v;
						end
			3'd4 :begin
							sum_dc_u1 <= sum_dc_u1 + pixel_ref04_t_u;
							sum_dc_v1 <= sum_dc_v1 + pixel_ref04_t_v;
						end
			3'd5 :begin
							sum_dc_u1 <= sum_dc_u1 + pixel_ref05_t_u;
							sum_dc_v1 <= sum_dc_v1 + pixel_ref05_t_v;
						end
			3'd6 :begin
							sum_dc_u1 <= sum_dc_u1 + pixel_ref06_t_u;
							sum_dc_v1 <= sum_dc_v1 + pixel_ref06_t_v;
						end
			3'd7 :begin
							sum_dc_u1 <= sum_dc_u1 + pixel_ref07_t_u;
							sum_dc_v1 <= sum_dc_v1 + pixel_ref07_t_v;
						end
		endcase
end

always @(*) begin
	case ({mb_avail_l, mb_avail_t})
		2'b00 : dc_y_w = 13'd128;
		2'b01 : dc_y_w = ((sum_dc + 4'd8) >> 4);
		2'b10 : dc_y_w = ((sum_dc + 4'd8) >> 4);
		2'b11 : dc_y_w = ((sum_dc + 5'd16) >> 5);
	endcase
end

always @(*) begin
	case ({mb_avail_l, mb_avail_t})
		2'b00 : begin dc_u_w = 13'd128; dc_v_w = 13'd128; end
		2'b01 : begin
					if(blk_uv_num[1:0]==2'd0||blk_uv_num[1:0]==2'd2)
						begin dc_u_w = ((sum_dc_u0 + 2'd2) >> 2); dc_v_w = ((sum_dc_v0 + 2'd2) >> 2); end
					else
						begin dc_u_w = ((sum_dc_u1 + 2'd2) >> 2); dc_v_w = ((sum_dc_v1 + 2'd2) >> 2); end
				end
		2'b10 : begin
					if(blk_uv_num[1:0]==2'd0||blk_uv_num[1:0]==2'd1)
						begin dc_u_w = ((sum_dc_u2 + 2'd2) >> 2); dc_v_w = ((sum_dc_v2 + 2'd2) >> 2); end
					else
						begin dc_u_w = ((sum_dc_u3 + 2'd2) >> 2); dc_v_w = ((sum_dc_v3 + 2'd2) >> 2); end
				end
		2'b11 : begin
					if(blk_uv_num[1:0]==2'd0)
						begin dc_u_w = ((sum_dc_u0 + sum_dc_u2 + 3'd4) >> 3); dc_v_w = ((sum_dc_v0 + sum_dc_v2 + 3'd4) >> 3); end
					else if(blk_uv_num[1:0]==2'd1)
						begin dc_u_w = ((sum_dc_u1 + 2'd2) >> 2); dc_v_w = ((sum_dc_v1 + 2'd2) >> 2); end
					else if(blk_uv_num[1:0]==2'd2)
						begin dc_u_w = ((sum_dc_u3 + 2'd2) >> 2); dc_v_w = ((sum_dc_v3 + 2'd2) >> 2); end
					else 
						begin dc_u_w = ((sum_dc_u1 + sum_dc_u3 + 3'd4) >> 3); dc_v_w = ((sum_dc_v1 + sum_dc_v3 + 3'd4) >> 3); end
				end
	endcase
end

assign  dc_y = dc_y_w[7:0];
assign  dc_u = dc_u_w[7:0];
assign  dc_v = dc_v_w[7:0];

endmodule
