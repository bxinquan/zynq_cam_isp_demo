/*************************************************************************
    > File Name: vip_top.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

module vip_top
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter OSD_RAM_ADDR_BITS = 9,
	parameter OSD_RAM_DATA_BITS = 32
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
	output [BITS-1:0] out_b,
	
	input hist_equ_en, sobel_en, yuv2rgb_en, crop_en, dscale_en, osd_en, yuv444to422_en,
	input [BITS-1:0] equ_min, equ_max,
	input [15:0] crop_x, crop_y, crop_w, crop_h,
	input [3:0] dscale_h, dscale_v,

	input [15:0] osd_x, osd_y, osd_w, osd_h,//osd位置(不能超过时序图像范围, 宽高乘积不能超过RAM总大小)
	input [BITS*3-1:0] osd_rgb_fg, osd_rgb_bg, //前景色,背景色
	//单色位图RAM接口(最大支持32*(1<<9)=16394像素,典型128x16)
	input                          osd_ram_clk,
	input                          osd_ram_wen,
	input                          osd_ram_ren,
	input  [OSD_RAM_ADDR_BITS-1:0] osd_ram_addr,
	input  [OSD_RAM_DATA_BITS-1:0] osd_ram_wdata,
	output [OSD_RAM_DATA_BITS-1:0] osd_ram_rdata,

	input yuv444to422_switch_uv
);

`define USE_HIST_EQU 	    1
`define USE_SOBEL   	    1
`define USE_YUV444TO422	    1
`define USE_YUV2RGB 	    1
`define USE_CROP  		    1
`define USE_DSCALE  	    1
`define USE_OSD			    1

	//输入打拍(减少输入逻辑延迟)
	wire in_href_o, in_vsync_o;
	wire [BITS-1:0] in_y_o, in_u_o, in_v_o;
	vid_mux #(BITS*3) mux_in(pclk, rst_n, 1'b0, in_href, in_vsync, {in_y,in_u,in_v}, 1'b0, 1'b0, {BITS*3{1'b0}}, in_href_o, in_vsync_o, {in_y_o,in_u_o,in_v_o});

	wire hist_equ_href_o, hist_equ_vsync_o;
	wire [BITS-1:0] hist_equ_y_o, hist_equ_u_o, hist_equ_v_o;
`ifdef USE_HIST_EQU
	wire hist_equ_href, hist_equ_vsync;
	wire [BITS-1:0] hist_equ_y, hist_equ_u, hist_equ_v;
	vip_hist_equ #(BITS, WIDTH, HEIGHT) hist_equ_i0(pclk, rst_n&hist_equ_en, equ_min, equ_max, in_href_o, in_vsync_o, in_y_o, hist_equ_href, hist_equ_vsync, hist_equ_y);
	reg [BITS-1:0] hist_equ_u_r, hist_equ_v_r;
	always @ (posedge pclk) {hist_equ_u_r,hist_equ_v_r} <= {in_u_o, in_v_o};
	assign {hist_equ_u, hist_equ_v} = {hist_equ_u_r, hist_equ_v_r};
	vid_mux #(BITS*3) mux_hist_equ_i0(pclk, rst_n, hist_equ_en, in_href_o, in_vsync_o, {in_y_o,in_u_o,in_v_o}, hist_equ_href, hist_equ_vsync, {hist_equ_y,hist_equ_u,hist_equ_v}, hist_equ_href_o, hist_equ_vsync_o, {hist_equ_y_o,hist_equ_u_o,hist_equ_v_o});
`else
	assign hist_equ_href_o = in_href_o;
	assign hist_equ_vsync_o = in_vsync_o;
	assign hist_equ_y_o = in_y_o;
	assign hist_equ_u_o = in_u_o;
	assign hist_equ_v_o = in_v_o;
`endif

	wire sobel_href_o, sobel_vsync_o;
	wire [BITS-1:0] sobel_y_o, sobel_u_o, sobel_v_o;
`ifdef USE_SOBEL
	wire sobel_href, sobel_vsync;
	wire [BITS-1:0] sobel_y, sobel_u, sobel_v;
	vip_sobel #(BITS, WIDTH, HEIGHT) sobel_i0(pclk, rst_n&sobel_en, hist_equ_href_o, hist_equ_vsync_o, hist_equ_y_o, sobel_href, sobel_vsync, sobel_y);
	assign sobel_u = 1'b1 << (BITS-1);
	assign sobel_v = 1'b1 << (BITS-1);
	vid_mux #(BITS*3) mux_sobel_i0(pclk, rst_n, sobel_en, hist_equ_href_o, hist_equ_vsync_o, {hist_equ_y_o,hist_equ_u_o,hist_equ_v_o}, sobel_href, sobel_vsync, {sobel_y,sobel_u,sobel_v}, sobel_href_o, sobel_vsync_o, {sobel_y_o,sobel_u_o,sobel_v_o});
`else
	assign sobel_href_o = hist_equ_href_o;
	assign sobel_vsync_o = hist_equ_vsync_o;
	assign sobel_y_o = hist_equ_y_o;
	assign sobel_u_o = hist_equ_u_o;
	assign sobel_v_o = hist_equ_v_o;
`endif

	wire yuv2rgb_href_o, yuv2rgb_vsync_o;
	wire [BITS-1:0] yuv2rgb_r_o, yuv2rgb_g_o, yuv2rgb_b_o;
`ifdef USE_YUV2RGB
	wire yuv2rgb_href, yuv2rgb_vsync;
	wire [BITS-1:0] yuv2rgb_r, yuv2rgb_g, yuv2rgb_b;
	vip_yuv2rgb #(BITS, WIDTH, HEIGHT) yuv2rgb_i0(pclk, rst_n&yuv2rgb_en, sobel_href_o, sobel_vsync_o, sobel_y_o, sobel_u_o, sobel_v_o, yuv2rgb_href, yuv2rgb_vsync, yuv2rgb_r, yuv2rgb_g, yuv2rgb_b);
	vid_mux #(BITS*3) mux_yuv2rgb_i0(pclk, rst_n, yuv2rgb_en, sobel_href_o, sobel_vsync_o, {sobel_v_o,sobel_u_o,sobel_y_o}, yuv2rgb_href, yuv2rgb_vsync, {yuv2rgb_r,yuv2rgb_g,yuv2rgb_b}, yuv2rgb_href_o, yuv2rgb_vsync_o, {yuv2rgb_r_o,yuv2rgb_g_o,yuv2rgb_b_o});
`else
	assign yuv2rgb_href_o = sobel_href_o;
	assign yuv2rgb_vsync_o = sobel_vsync_o;
	assign yuv2rgb_r_o = sobel_v_o;
	assign yuv2rgb_g_o = sobel_u_o;
	assign yuv2rgb_b_o = sobel_y_o;
`endif

	wire crop_href_o, crop_vsync_o;
	wire [BITS-1:0] crop_r_o, crop_g_o, crop_b_o;
`ifdef USE_CROP
	wire crop_href, crop_vsync;
	wire [BITS-1:0] crop_r, crop_g, crop_b;
	vip_crop #(BITS*3, WIDTH, HEIGHT) crop_i0(pclk, rst_n&crop_en, crop_x, crop_y, crop_w, crop_h, yuv2rgb_href_o, yuv2rgb_vsync_o, {yuv2rgb_r_o, yuv2rgb_g_o, yuv2rgb_b_o}, crop_href, crop_vsync, {crop_r, crop_g, crop_b});
	vid_mux #(BITS*3) mux_crop_i0(pclk, rst_n, crop_en, yuv2rgb_href_o, yuv2rgb_vsync_o, {yuv2rgb_r_o, yuv2rgb_g_o, yuv2rgb_b_o}, crop_href, crop_vsync, {crop_r, crop_g, crop_b}, crop_href_o, crop_vsync_o, {crop_r_o,crop_g_o,crop_b_o});
`else
	assign crop_href_o = yuv2rgb_href_o;
	assign crop_vsync_o = yuv2rgb_vsync_o;
	assign crop_r_o = yuv2rgb_r_o;
	assign crop_g_o = yuv2rgb_g_o;
	assign crop_b_o = yuv2rgb_b_o;
`endif

	wire dscale_pclk_o, dscale_href_o, dscale_vsync_o;
	wire [BITS-1:0] dscale_r_o, dscale_g_o, dscale_b_o;
`ifdef USE_DSCALE
	wire dscale_pclk, dscale_href, dscale_vsync;
	wire [BITS-1:0] dscale_r, dscale_g, dscale_b;
	vip_dscale #(BITS*3, WIDTH, HEIGHT) dscale_i0(pclk, rst_n&dscale_en, dscale_h, dscale_v, crop_href_o, crop_vsync_o, {crop_r_o, crop_g_o, crop_b_o}, dscale_pclk, dscale_href, dscale_vsync, {dscale_r, dscale_g, dscale_b});
	assign dscale_pclk_o = dscale_en ? dscale_pclk : pclk;
	vid_mux #(BITS*3) mux_dscale_i0(dscale_pclk_o, rst_n, dscale_en, crop_href_o, crop_vsync_o, {crop_r_o, crop_g_o, crop_b_o}, dscale_href, dscale_vsync, {dscale_r, dscale_g, dscale_b}, dscale_href_o, dscale_vsync_o, {dscale_r_o,dscale_g_o,dscale_b_o});
`else
	assign dscale_pclk_o = pclk;
	assign dscale_href_o = crop_href_o;
	assign dscale_vsync_o = crop_vsync_o;
	assign dscale_r_o = crop_r_o;
	assign dscale_g_o = crop_g_o;
	assign dscale_b_o = crop_b_o;
`endif

	wire osd_pclk_o, osd_href_o, osd_vsync_o;
	wire [BITS-1:0] osd_r_o, osd_g_o, osd_b_o;
`ifdef USE_OSD
	wire osd_pclk, osd_href, osd_vsync;
	wire [BITS-1:0] osd_r, osd_g, osd_b;
	vip_osd
		#(
			BITS*3, WIDTH, HEIGHT, OSD_RAM_ADDR_BITS, OSD_RAM_DATA_BITS
		)
		osd_i0
		(
			dscale_pclk_o, rst_n&osd_en,
			osd_x, osd_y, osd_w, osd_h, osd_rgb_fg, osd_rgb_bg,
			dscale_href_o, dscale_vsync_o, {dscale_r_o, dscale_g_o, dscale_b_o},
			osd_href, osd_vsync, {osd_r, osd_g, osd_b},
			osd_ram_clk, osd_ram_wen, osd_ram_ren, osd_ram_addr, osd_ram_wdata, osd_ram_rdata
		);
	assign osd_pclk_o = dscale_pclk_o;
	vid_mux #(BITS*3) mux_osd_i0(osd_pclk_o, rst_n, osd_en, dscale_href_o, dscale_vsync_o, {dscale_r_o, dscale_g_o, dscale_b_o}, osd_href, osd_vsync, {osd_r, osd_g, osd_b}, osd_href_o, osd_vsync_o, {osd_r_o,osd_g_o,osd_b_o});
`else
	assign osd_pclk_o = dscale_pclk_o;
	assign osd_href_o = dscale_href_o;
	assign osd_vsync_o = dscale_vsync_o;
	assign osd_r_o = dscale_r_o;
	assign osd_g_o = dscale_g_o;
	assign osd_b_o = dscale_b_o;
`endif

	wire yuv444to422_pclk_o, yuv444to422_href_o, yuv444to422_vsync_o;
	wire [BITS-1:0] yuv444to422_y_o, yuv444to422_u_o, yuv444to422_v_o;
`ifdef USE_YUV444TO422
	wire yuv444to422_href, yuv444to422_vsync;
	wire [BITS-1:0] yuv444to422_y, yuv444to422_c;
	vip_yuv444to422 #(BITS, WIDTH, HEIGHT) yuv444to422_i0(osd_pclk_o, rst_n&yuv444to422_en, yuv444to422_switch_uv, osd_href_o, osd_vsync_o, osd_b_o, osd_g_o, osd_r_o, yuv444to422_href, yuv444to422_vsync, yuv444to422_y, yuv444to422_c);
	vid_mux #(BITS*3) mux_yuv444to422_i0(osd_pclk_o, rst_n, yuv444to422_en, osd_href_o, osd_vsync_o, {osd_b_o,osd_g_o,osd_r_o}, yuv444to422_href, yuv444to422_vsync, {yuv444to422_y,yuv444to422_c,{BITS{1'b0}}}, yuv444to422_href_o, yuv444to422_vsync_o, {yuv444to422_y_o,yuv444to422_u_o,yuv444to422_v_o});
	assign yuv444to422_pclk_o = osd_pclk_o;
`else
	assign yuv444to422_pclk_o = osd_pclk_o;
	assign yuv444to422_href_o = osd_href_o;
	assign yuv444to422_vsync_o = osd_vsync_o;
	assign yuv444to422_y_o = osd_b_o;
	assign yuv444to422_u_o = osd_g_o;
	assign yuv444to422_v_o = osd_r_o;
`endif

	assign out_pclk = yuv444to422_pclk_o;
	assign out_href = yuv444to422_href_o;
	assign out_vsync = yuv444to422_vsync_o;
	assign out_r = yuv444to422_v_o;
	assign out_g = yuv444to422_u_o;
	assign out_b = yuv444to422_y_o;
endmodule

module vid_mux
#(
	parameter BITS = 8
)
(
	input pclk,
	input rst_n,

	input sel,

	input in_href_0,
	input in_vsync_0,
	input [BITS-1:0] in_data_0,

	input in_href_1,
	input in_vsync_1,
	input [BITS-1:0] in_data_1,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_data
);

	wire in_href = sel ? in_href_1 : in_href_0;
	wire in_vsync = sel ? in_vsync_1 : in_vsync_0;
	wire [BITS-1:0] in_data = sel ? in_data_1 : in_data_0;

	reg href_reg, vsync_reg;
	reg [BITS-1:0] data_reg;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			href_reg <= 0;
			vsync_reg <= 0;
			data_reg <= 0;
		end
		else begin
			href_reg <= in_href;
			vsync_reg <= in_vsync;
			data_reg <= in_data;
		end
	end

	assign out_href = href_reg;
	assign out_vsync = vsync_reg;
	assign out_data = data_reg;
endmodule
