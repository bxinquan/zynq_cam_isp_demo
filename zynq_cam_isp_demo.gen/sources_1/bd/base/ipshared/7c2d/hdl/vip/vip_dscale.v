/*************************************************************************
    > File Name: vip_dscale.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * VIP - Down Scale
 */

module vip_dscale
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960
)
(
	input pclk,
	input rst_n,

	input [3:0] dscale_h,
	input [3:0] dscale_v,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_data,

	output out_pclk,
	output out_href,
	output out_vsync,
	output [BITS-1:0] out_data
);

	reg prev_href;
	wire line_start = (~prev_href) & in_href;
	wire line_end = prev_href & (~in_href);
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			prev_href <= 0;
		else
			prev_href <= in_href;
	end
	
	reg [3:0] pix_cnt;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			pix_cnt <= 0;
		else if (pix_cnt == dscale_h)
			pix_cnt <= 0;
		else
			pix_cnt <= pix_cnt + 1'b1;
	end

	reg prev_vsync;
	wire frame_start = prev_vsync & (~in_vsync);
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			prev_vsync <= 0;
		else
			prev_vsync <= in_vsync;
	end

	reg [3:0] line_cnt;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			line_cnt <= 0;
		else if (frame_start)
			line_cnt <= 0;
		else if (line_end)
			if (line_cnt == dscale_v)
				line_cnt <= 0;
			else
				line_cnt <= line_cnt + 1'b1;
		else
			line_cnt <= line_cnt;
	end

	reg [BITS-1:0] data_r;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			data_r <= 0;
		else if (pix_cnt == 4'd0 && line_cnt == 4'd0)
			data_r <= in_data;
		else
			data_r <= data_r;
	end
	
	reg out_pclk_r;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			out_pclk_r <= 0;
		else if (pix_cnt == 4'd0)
			out_pclk_r <= 0;
		else
			out_pclk_r <= 1;
	end

	reg out_href_r;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			out_href_r <= 0;
		else if (line_cnt == 4'd0)
			out_href_r <= in_href;
		else
			out_href_r <= 0;
	end

	reg out_vsync_r;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			out_vsync_r <= 0;
		else
			out_vsync_r <= in_vsync;
	end

	assign out_pclk = out_pclk_r;
	assign out_href = out_href_r;
	assign out_vsync = out_vsync_r;
	assign out_data = out_href ? data_r : {BITS{1'b0}};
endmodule
