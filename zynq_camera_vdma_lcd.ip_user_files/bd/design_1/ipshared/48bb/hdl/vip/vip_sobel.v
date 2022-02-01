/*************************************************************************
    > File Name: vip_sobel.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

// Gx:
// [-1, 0, +1]
// [-2, 0, +2]
// [-1, 0, +1]
//
// Gy:
// [+1,+2, +1]
// [ 0, 0,  0]
// [-1,-2, -1]
//
// 3x3 pixel
// [p11,p12,p13]
// [p21,p22,p23]
// [p31,p32,p33]
//
// gx1 = p11 + (p21 << 1) + p31
// gx3 = p13 + (p23 << 1) + p33
// gy1 = p11 + (p12 << 1) + p13
// gy3 = p31 + (p32 << 1) + p33
// gx = gx1 > gx3 ? gx1 - gx3 : gx3 - gx1
// gy = gy1 > gy3 ? gy1 - gy3 : gy3 - gy1
// g = gx + gy
module vip_sobel
#(
	parameter BITS = 8,
	parameter WIDTH = 640,
	parameter HEIGHT = 480
)
(
	input pclk,
	input rst_n,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_data,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_data
);

	wire [BITS-1:0] shiftout;
	wire [BITS-1:0] tap1x, tap0x;
	shift_register #(BITS, WIDTH, 2) line2buf(pclk, in_href, in_data, shiftout, {tap1x, tap0x});
	
	reg [BITS-1:0] p11,p12,p13;
	reg [BITS-1:0] p21,p22,p23;
	reg [BITS-1:0] p31,p32,p33;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			p13 <= 0;
			p23 <= 0;
			p33 <= 0;
			p12 <= 0;
			p22 <= 0;
			p32 <= 0;
			p11 <= 0;
			p21 <= 0;
			p31 <= 0;
		end
		else begin
			p13 <= p12;
			p23 <= p22;
			p33 <= p32;
			p12 <= p11;
			p22 <= p21;
			p32 <= p31;
			p11 <= in_data;
			p21 <= tap0x;
			p31 <= tap1x;
		end
	end
	
	reg [BITS+1:0] gx1,gx3,gy1,gy3,gx,gy;
	reg [BITS+2:0] g;
	reg [BITS-1:0] out;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			gx1 <= 0;
			gx3 <= 0;
			gy1 <= 0;
			gy3 <= 0;
			gx <= 0;
			gy <= 0;
			g <= 0;
			out <= 0;
		end
		else begin
			gx1 <= p11 + (p21 << 1) + p31;
			gx3 <= p13 + (p23 << 1) + p33;
			gy1 <= p11 + (p12 << 1) + p13;
			gy3 <= p31 + (p32 << 1) + p33;
			gx <= gx1 > gx3 ? gx1 - gx3 : gx3 - gx1;
			gy <= gy1 > gy3 ? gy1 - gy3 : gy3 - gy1;
			g <= gx + gy;
			out <= g > {BITS{1'b1}} ? {BITS{1'b1}} : g[BITS-1:0];
		end
	end
	
	localparam DLY_CLK = 7;
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
	assign out_data = out_href ? out : {BITS{1'b0}};
endmodule
