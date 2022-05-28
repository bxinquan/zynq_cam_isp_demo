/*************************************************************************
    > File Name: vip_top_wrapper.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/


module vip_top_wrapper
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960
)
(
	input pclk,
	input rst_n,
	
	input in_href,
	input in_vsync,
	input [BITS-1:0] in_y,
	input [BITS-1:0] in_u,
	input [BITS-1:0] in_v,
	
	output out_pclk,
	output out_href,
	output out_vsync,
	output [BITS-1:0] out_r,
	output [BITS-1:0] out_g,
	output [BITS-1:0] out_b
);

	localparam EN_HIST_EQU = 1'b0;
	localparam EN_SOBEL = 1'b0;
	localparam EN_YUV2RGB = 1'b0;
	localparam EN_CROP = 1'b0;
	localparam EN_DSCALE = 1'b0;
	
	localparam CROP_X = 0;
	localparam CROP_Y = 0;
	localparam CROP_W = WIDTH;
	localparam CROP_H = HEIGHT;
	
	localparam EQU_MIN = 8'd40;
	localparam EQU_MAX = 8'd220;

	localparam DSCALE_SCALE = 4'd1;//1/2

	vip_top #(BITS, WIDTH, HEIGHT) vip_top_i0 (
			.pclk(pclk),
			.rst_n(rst_n),
			
			.in_href(in_href),
			.in_vsync(in_vsync),
			.in_y(in_y),
			.in_u(in_u),
			.in_v(in_v),
			
			.out_pclk(out_pclk),
			.out_href(out_href),
			.out_vsync(out_vsync),
			.out_r(out_r),
			.out_g(out_g),
			.out_b(out_b),

			.hist_equ_en(EN_HIST_EQU),
			.sobel_en(EN_SOBEL),
			.yuv2rgb_en(EN_YUV2RGB),
			.crop_en(EN_CROP),
			.dscale_en(EN_DSCALE),
			.equ_min(EQU_MIN), .equ_max(EQU_MAX),
			.crop_x(CROP_X), .crop_y(CROP_Y), .crop_w(CROP_W), .crop_h(CROP_H),
			.dscale_h(DSCALE_SCALE), .dscale_v(DSCALE_SCALE)
		);
endmodule
