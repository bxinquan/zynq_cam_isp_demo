/*************************************************************************
    > File Name: isp_blc.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * ISP - Black Level Correction
 */

module isp_blc
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter BAYER = 0 //0:RGGB 1:GRBG 2:GBRG 3:BGGR
)
(
	input pclk,
	input rst_n,

	input [BITS-1:0] black_r,
	input [BITS-1:0] black_gr,
	input [BITS-1:0] black_gb,
	input [BITS-1:0] black_b,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_raw,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_raw
);

	reg odd_pix;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			odd_pix <= 0;
		else if (!in_href)
			odd_pix <= 0;
		else
			odd_pix <= ~odd_pix;
	end
	
	reg prev_href;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) 
			prev_href <= 0;
		else
			prev_href <= in_href;
	end	
	
	reg odd_line;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) 
			odd_line <= 0;
		else if (in_vsync)
			odd_line <= 0;
		else if (prev_href & (~in_href))
			odd_line <= ~odd_line;
		else
			odd_line <= odd_line;
	end

	wire [1:0] format = BAYER[1:0] ^ {odd_line, odd_pix}; //pixel format 0:[R]GGB 1:R[G]GB 2:RG[G]B 3:RGG[B]

	reg [BITS-1:0] raw_now;
	assign out_raw = raw_now;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) 
			raw_now <= 0;
		else
			raw_now <= blc_sub(in_raw, format);
	end
	
	reg href_now, vsync_now;
	always @(posedge pclk) href_now <= in_href;
	always @(posedge pclk) vsync_now <= in_vsync;
	assign out_href = href_now;
	assign out_vsync = vsync_now;

	function [BITS-1:0] blc_sub;
		input [BITS-1:0] value;
		input [1:0] format;//0:R 1:Gr 2:Gb 3:B
		case (format)
			2'b00: blc_sub = value > black_r ? value - black_r : {BITS{1'b0}};
			2'b01: blc_sub = value > black_gr ? value - black_gr : {BITS{1'b0}};
			2'b10: blc_sub = value > black_gb ? value - black_gb : {BITS{1'b0}};
			2'b11: blc_sub = value > black_b ? value - black_b : {BITS{1'b0}};
			default: blc_sub = {BITS{1'b0}};
		endcase
	endfunction
endmodule
