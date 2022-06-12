/*************************************************************************
    > File Name: vip_crop.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: 2022/06/11 周六
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * VIP - YUV 444 to 422
 */

module vip_yuv444to422
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960
)
(
	input pclk,
	input rst_n,

	input switch_uv,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_y,
	input [BITS-1:0] in_u,
	input [BITS-1:0] in_v,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_y,
	output [BITS-1:0] out_c
);

	reg pix_odd;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			pix_odd <= 1'b0;
		else if (!in_href)
			pix_odd <= 1'b0;
		else
			pix_odd <= ~pix_odd;
	end
	
	reg [BITS-1:0] y_reg;
	reg [BITS-1:0] c_reg;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			y_reg <= 0;
			c_reg <= 0;
		end
		else if (!in_href) begin
			y_reg <= 0;
			c_reg <= 0;
		end
		else begin
			y_reg <= in_y;
			c_reg <= (pix_odd ^ switch_uv) ? in_v : in_u;
		end
	end

	reg href_reg, vsync_reg;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			href_reg  <= 1'b0;
			vsync_reg <= 1'b0;
		end
		else begin
			href_reg  <= in_href;
			vsync_reg <= in_vsync;
		end
	end

	assign out_href = href_reg;
	assign out_vsync = vsync_reg;
	assign out_y = y_reg;
	assign out_c = c_reg;
endmodule
