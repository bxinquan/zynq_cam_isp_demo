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
// Filename       : bitstream_buffer.v
// Author         : huibo zhong
// Created        : 2011-10-03
// Description    : top datapath of encoder
//               
// $Id$ 
//------------------------------------------------------------------- 

module bs_buf  (
				clk,
				rst_n,
				sh_we,
				sh_inc,
				sh_bit,
				cavlc_we,
				cavlc_inc,
				cavlc_bit,
				frame_done,
				rbsp_trailing,
				bs_valid,
				bs_o,
				bs_empty_o
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input   clk, rst_n ;
// slice header bs input
input           sh_we;          // slice header write enable
input  [1:0]    sh_inc;        
input  [23:0]   sh_bit;
// cavlc bs input
input   		cavlc_we;
input  [3:0]    cavlc_inc; 
input  [83:0]   cavlc_bit; 
input           frame_done;
input  [7:0]    rbsp_trailing;
// bit stream output
output          bs_valid;
output [7:0]    bs_o;
output			bs_empty_o;

// ********************************************
//                                             
//    Register DECLARATION                         
//                                             
// ********************************************
reg [7:0]       bs_buf_r[0:127];
reg [6:0]       bs_cnt_r;   // fifo read  point
reg [6:0]       bs_cnt_w;   // fito write point
reg             bs_valid;
reg [7:0]       bs_o;
wire [63:0]     cavlc_b;
wire [6:0]      bs_cnt_w1, bs_cnt_w2, bs_cnt_w3, bs_cnt_w4, bs_cnt_w5, bs_cnt_w6, bs_cnt_w7;

// ********************************************
//                                             
//    Logic DECLARATION                         
//                                             
// ********************************************
assign bs_empty_o = ((bs_cnt_r == bs_cnt_w) && !frame_done) ? 1'b1 : 1'b0;

assign cavlc_b = cavlc_bit[83:20];
assign bs_cnt_w1 = bs_cnt_w + 7'd1;
assign bs_cnt_w2 = bs_cnt_w + 7'd2;
assign bs_cnt_w3 = bs_cnt_w + 7'd3;
assign bs_cnt_w4 = bs_cnt_w + 7'd4;
assign bs_cnt_w5 = bs_cnt_w + 7'd5;
assign bs_cnt_w6 = bs_cnt_w + 7'd6;
assign bs_cnt_w7 = bs_cnt_w + 7'd7;

always @(posedge clk or negedge rst_n)begin
	if (!rst_n) begin
		bs_valid <= 1'b0;
		bs_o     <= 8'b0;
	end
	else if (bs_cnt_r != bs_cnt_w) begin
		bs_valid <= 1'b1;
		bs_o     <=  bs_buf_r[bs_cnt_r];		
	end
	else begin		
		bs_valid <= 1'b0;
		bs_o     <= 8'b0;
	end
end	

always @(posedge clk or negedge rst_n)begin
	if (!rst_n) begin:i_n
	integer i;
		for (i=0; i<96; i=i+1) bs_buf_r[i] <= 'b0;
	end
	else if (sh_we) 
		{bs_buf_r[bs_cnt_w], bs_buf_r[bs_cnt_w1], bs_buf_r[bs_cnt_w2]} <= sh_bit;		
	else if (cavlc_we)
		{bs_buf_r[bs_cnt_w] , bs_buf_r[bs_cnt_w1], bs_buf_r[bs_cnt_w2], bs_buf_r[bs_cnt_w3],
		 bs_buf_r[bs_cnt_w4], bs_buf_r[bs_cnt_w5], bs_buf_r[bs_cnt_w6], bs_buf_r[bs_cnt_w7]} <= cavlc_b;
	else if (frame_done && rbsp_trailing)
		bs_buf_r[bs_cnt_w] <= rbsp_trailing;
end

always @(posedge clk or negedge rst_n)begin
	if (!rst_n) 
		bs_cnt_r <= 'b0;
	else if (bs_cnt_r != bs_cnt_w)
		bs_cnt_r <= bs_cnt_r + 7'd1;
	else
		bs_cnt_r <= bs_cnt_r;
end

always @(posedge clk or negedge rst_n)begin
	if (!rst_n) 
		bs_cnt_w <= 'b0;
	else if (sh_we)
		bs_cnt_w <= bs_cnt_w + sh_inc;
	else if (cavlc_we)
		bs_cnt_w <= bs_cnt_w + cavlc_inc;
	else if (frame_done && rbsp_trailing)
		bs_cnt_w <= bs_cnt_w + 7'd1;
	else
		bs_cnt_w <= bs_cnt_w;
end

endmodule
