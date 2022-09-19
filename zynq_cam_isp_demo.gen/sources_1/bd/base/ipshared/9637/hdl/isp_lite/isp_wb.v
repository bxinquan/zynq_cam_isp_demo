/*************************************************************************
    > File Name: isp_wb.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * ISP - White Balance Gain
 */

module isp_wb
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960
)
(
	input pclk,
	input rst_n,

	input [7:0] gain_r,
	input [7:0] gain_g,
	input [7:0] gain_b,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_r,
	input [BITS-1:0] in_g,
	input [BITS-1:0] in_b,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_r,
	output [BITS-1:0] out_g,
	output [BITS-1:0] out_b
);

	reg [BITS-1:0] data_r;
	reg [BITS-1:0] data_g;
	reg [BITS-1:0] data_b;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_r <= 0;
			data_g <= 0;
			data_b <= 0;
		end
		else begin
			data_r <= in_r;
			data_g <= in_g;
			data_b <= in_b;
		end
	end

	reg [BITS-1+8:0] data_r_1;
	reg [BITS-1+8:0] data_g_1;
	reg [BITS-1+8:0] data_b_1;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_r_1 <= 0;
			data_g_1 <= 0;
			data_b_1 <= 0;
		end
		else begin
			data_r_1 <= data_r * gain_r;
			data_g_1 <= data_g * gain_g;
			data_b_1 <= data_b * gain_b;
		end
	end

	reg [BITS-1:0] data_r_2;
	reg [BITS-1:0] data_g_2;
	reg [BITS-1:0] data_b_2;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_r_2 <= 0;
			data_g_2 <= 0;
			data_b_2 <= 0;
		end
		else begin
			data_r_2 <= data_r_1[BITS-1+8:4] > {BITS{1'b1}} ? {BITS{1'b1}} : data_r_1[BITS-1+4:4];
			data_g_2 <= data_g_1[BITS-1+8:4] > {BITS{1'b1}} ? {BITS{1'b1}} : data_g_1[BITS-1+4:4];
			data_b_2 <= data_b_1[BITS-1+8:4] > {BITS{1'b1}} ? {BITS{1'b1}} : data_b_1[BITS-1+4:4];
		end
	end

	localparam DLY_CLK = 3;
	reg [DLY_CLK-1:0] href_dly;
	reg [DLY_CLK-1:0] vsync_dly;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			href_dly <= 0;
			vsync_dly <= 0;
		end
		else begin
			href_dly <= {href_dly[DLY_CLK-2:0], in_href};
			vsync_dly <= {vsync_dly[DLY_CLK-2:0], in_vsync};
		end
	end

	assign out_href = href_dly[DLY_CLK-1];
	assign out_vsync = vsync_dly[DLY_CLK-1];
	assign out_r = out_href ? data_r_2 : {BITS{1'b0}};
	assign out_g = out_href ? data_g_2 : {BITS{1'b0}};
	assign out_b = out_href ? data_b_2 : {BITS{1'b0}};
endmodule
