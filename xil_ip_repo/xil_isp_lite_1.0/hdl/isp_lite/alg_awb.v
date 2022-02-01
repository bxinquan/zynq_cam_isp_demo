/*************************************************************************
    > File Name: alg_awb.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

module alg_awb
#(
	parameter BITS = 8
)
(
	input pclk,
	input rst_n,

	input stat_done,
	input [31:0] pix_cnt,
	input [31:0] sum_r,
	input [31:0] sum_g,
	input [31:0] sum_b,

	output reg [7:0] r_gain,
	output reg [7:0] g_gain,
	output reg [7:0] b_gain
);

`define AWB_USE_SHIFT_DIV 1

	always @ (*) g_gain = 8'h10;

`ifdef AWB_USE_SHIFT_DIV
	wire [31:0] r_gain0, r_remain;
	wire r_div_done;
	shift_div #(32) div_rgain(pclk, rst_n, stat_done, sum_g, {4'd0,sum_r[31:4]}, r_gain0, r_remain, r_div_done);
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			r_gain <= 8'h10;
		end
		else if (r_div_done) begin
			r_gain <= r_gain0 > 32'd255 ? 8'd255 : r_gain0[7:0];
		end
		else begin
			r_gain <= r_gain;
		end
	end
	
	wire [31:0] b_gain0, b_remain;
	wire b_div_done;
	shift_div #(32) div_bgain(pclk, rst_n, stat_done, sum_g, {4'd0,sum_b[31:4]}, b_gain0, b_remain, b_div_done);
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			b_gain <= 8'h10;
		end
		else if (b_div_done) begin
			b_gain <= b_gain0 > 32'd255 ? 8'd255 : b_gain0[7:0];
		end
		else begin
			b_gain <= b_gain;
		end
	end
`else

	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			r_gain <= 8'h10;
			b_gain <= 8'h10;
		end
		else if (stat_done) begin
			r_gain <= sum_g / sum_r[31:4];
			b_gain <= sum_g / sum_b[31:4];
		end
		else begin
			r_gain <= r_gain;
			b_gain <= b_gain;
		end
	end
`endif
endmodule
