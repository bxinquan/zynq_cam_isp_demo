/*************************************************************************
    > File Name: isp_dgain.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * ISP - Digital Gain
 * O = I * gain + offset
 */

module isp_dgain
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960
)
(
	input pclk,
	input rst_n,

	input [7:0] gain, //4.4
	input [BITS-1:0] offset,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_raw,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_raw
);

	reg [BITS-1+8:0] data_0;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_0 <= 0;
		end
		else begin
			data_0 <= in_raw * gain;
		end
	end

	reg [BITS-1+9:0] data_1;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_1 <= 0;
		end
		else begin
			data_1 <= data_0 + {offset, {4'd0}};
		end
	end

	reg [BITS-1:0] data_2;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_2 <= 0;
		end
		else begin
			data_2 <= data_1[BITS-1+9:4] > {BITS{1'b1}} ? {BITS{1'b1}} : data_1[BITS-1+4:4];
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
	assign out_raw = out_href ? data_2 : {BITS{1'b0}};
endmodule
