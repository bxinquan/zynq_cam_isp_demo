/*************************************************************************
    > File Name: isp_stat_ae.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * ISP - Statistics for Auto Exposure
 */

module isp_stat_ae
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter BAYER = 0, //0:RGGB 1:GRBG 2:GBRG 3:BGGR
	parameter OUT_BITS = 32,
	parameter HIST_BITS = BITS //直方图横坐标位数(默认像素位深)
)
(
	input pclk,
	input rst_n,

	input [clogb2(WIDTH)-1:0]  rect_x,
	input [clogb2(HEIGHT)-1:0] rect_y,
	input [clogb2(WIDTH)-1:0]  rect_w,
	input [clogb2(HEIGHT)-1:0] rect_h,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_raw,

	output out_done,
	output [OUT_BITS-1:0] out_cnt,
	output [OUT_BITS-1:0] out_sum,
	
	input hist_clk,
	input hist_out,
	input [HIST_BITS+1:0] hist_addr, //[HIST_BITS+1:HIST_BITS] 2'b00:R,2'b01:Gr,2'b10:Gb,2'b11:B 共4组直方图
	output [OUT_BITS-1:0] hist_data
);

	reg prev_vsync;
	wire frame_start = prev_vsync & (~in_vsync);
	wire frame_end = (~prev_vsync) & in_vsync;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			prev_vsync <= 0;
		end
		else begin
			prev_vsync <= in_vsync;
		end
	end

	reg prev_href;
	wire href_end = prev_href & (~in_href);
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) 
			prev_href <= 0;
		else
			prev_href <= in_href;
	end	

	reg [clogb2(WIDTH)-1:0] pix_idx;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			pix_idx <= 0;
		else if (!in_href)
			pix_idx <= 0;
		else
			pix_idx <= pix_idx + 1'b1;
	end

	reg [clogb2(HEIGHT)-1:0] line_idx;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) 
			line_idx <= 0;
		else if (in_vsync)
			line_idx <= 0;
		else if (href_end)
			line_idx <= line_idx + 1'b1;
		else
			line_idx <= line_idx;
	end

	wire rect_valid = pix_idx >= rect_x && pix_idx < rect_x + rect_w && line_idx >= rect_y && line_idx < rect_y + rect_h;
	reg [OUT_BITS-1:0] tmp_cnt;
	reg [OUT_BITS-1:0] tmp_sum;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			tmp_cnt <= 0;
			tmp_sum <= 0;
		end
		else if (frame_start) begin
			tmp_cnt <= 0;
			tmp_sum <= 0;
		end
		else if (in_href && rect_valid) begin
			tmp_cnt <= tmp_cnt + 1'b1;
			tmp_sum <= tmp_sum + in_raw;
		end
		else begin
			tmp_cnt <= tmp_cnt;
			tmp_sum <= tmp_sum;
		end
	end

	reg done;
	reg [OUT_BITS-1:0] pix_cnt;
	reg [OUT_BITS-1:0] pix_sum;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			done <= 0;
			pix_cnt <= 0;
			pix_sum <= 0;
		end
		else if (frame_end) begin
			done <= 1;
			pix_cnt <= tmp_cnt;
			pix_sum <= tmp_sum;
		end
		else begin
			done <= 0;
			pix_cnt <= pix_cnt;
			pix_sum <= pix_sum;
		end
	end

	assign out_done = done;
	assign out_cnt = pix_cnt;
	assign out_sum = pix_sum;

	wire [1:0] addr_h2 = BAYER[1:0] ^ {line_idx[0], pix_idx[0]};
	wire [HIST_BITS-1:0] hist_in_addr = (BITS>=HIST_BITS) ? in_raw[(BITS-1)-:HIST_BITS] : {{HIST_BITS-BITS{1'b0}}, in_raw}; //最多统计256段直方图
	hist_stat #(HIST_BITS+2, OUT_BITS) hist_ram_raw (pclk, rst_n, in_href, in_vsync, {addr_h2,hist_in_addr}, hist_clk, hist_out, hist_addr, hist_data);

	function integer clogb2;
	input integer depth;
	begin
		for (clogb2 = 0; depth > 0; clogb2 = clogb2 + 1)
			depth = depth >> 1;
	end
	endfunction
endmodule
