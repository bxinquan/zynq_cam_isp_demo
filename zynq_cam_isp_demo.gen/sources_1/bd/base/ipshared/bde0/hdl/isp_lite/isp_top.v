/*************************************************************************
    > File Name: isp_top.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

module isp_top
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter BAYER = 0, //0:RGGB 1:GRBG 2:GBRG 3:BGGR
	parameter GAMMA_TABLE_BITS = 8,
	parameter NR2D_WEIGHT_BITS = 5,
	parameter STAT_OUT_BITS = 32,
	parameter STAT_HIST_BITS = BITS //直方图横坐标位数(默认像素位深)
)
(
	input pclk,
	input rst_n,
	
	input in_href,
	input in_vsync,
	input [BITS-1:0] in_raw,
	
	output out_href,
	output out_vsync,
	output [BITS-1:0] out_y,
	output [BITS-1:0] out_u,
	output [BITS-1:0] out_v,
	
	input dpc_en, blc_en, bnr_en, dgain_en, demosic_en, wb_en, ccm_en, csc_en, gamma_en, nr2d_en, ee_en, stat_ae_en, stat_awb_en,

	input [BITS-1:0] dpc_threshold,
	input [BITS-1:0] blc_r, blc_gr, blc_gb, blc_b,
	input [3:0] nr_level,
	input [7:0] dgain_gain,
	input [BITS-1:0] dgain_offset,
	input [7:0] wb_rgain, wb_ggain, wb_bgain,
	input [7:0] ccm_rr, ccm_rg, ccm_rb,
	input [7:0] ccm_gr, ccm_gg, ccm_gb,
	input [7:0] ccm_br, ccm_bg, ccm_bb,

	input                         gamma_table_clk,
	input                         gamma_table_wen,
	input                         gamma_table_ren,
	input  [GAMMA_TABLE_BITS-1:0] gamma_table_addr,
	input  [GAMMA_TABLE_BITS-1:0] gamma_table_wdata,
	output [GAMMA_TABLE_BITS-1:0] gamma_table_rdata,

	input [7*7*NR2D_WEIGHT_BITS-1:0] nr2d_space_kernel, //空域卷积核(7x7)
	input [9*BITS-1:0]               nr2d_color_curve_x,//值域卷积核拟合曲线横坐标(9个坐标点)
	input [9*NR2D_WEIGHT_BITS-1:0]   nr2d_color_curve_y,//值域卷积核拟合曲线纵坐标(9个坐标点)

	input [15:0] stat_ae_rect_x, stat_ae_rect_y, stat_ae_rect_w, stat_ae_rect_h,
	output stat_ae_done,
	output [STAT_OUT_BITS-1:0] stat_ae_pix_cnt, stat_ae_sum,

	input stat_ae_hist_clk,
	input stat_ae_hist_out,
	input [STAT_HIST_BITS+1:0] stat_ae_hist_addr, //R,Gr,Gb,B
	output [STAT_OUT_BITS-1:0] stat_ae_hist_data,

	input [BITS-1:0] stat_awb_min, stat_awb_max,
	output stat_awb_done,
	output [STAT_OUT_BITS-1:0] stat_awb_pix_cnt, stat_awb_sum_r, stat_awb_sum_g, stat_awb_sum_b,

	input stat_awb_hist_clk,
	input stat_awb_hist_out,
	input [STAT_HIST_BITS+1:0] stat_awb_hist_addr, //R,G,B
	output [STAT_OUT_BITS-1:0] stat_awb_hist_data
);

`define USE_DPC 1
`define USE_BLC 1
`define USE_BNR 1
`define USE_DGAIN 1
`define USE_DEMOSIC 1
`define USE_WB 1
`define USE_CCM 1
`define USE_CSC 1
`define USE_GAMMA 1
`define USE_2DNR 1
`define USE_EE 1
`define USE_STAT_AE 1
`define USE_STAT_AWB 1

	//输入打拍(减少输入逻辑延迟)
	wire in_href_o, in_vsync_o;
	wire [BITS-1:0] in_raw_o;
	vid_mux #(BITS) mux_in(pclk, rst_n, 1'b0, in_href, in_vsync, in_raw, 1'b0, 1'b0, {BITS{1'b0}}, in_href_o, in_vsync_o, in_raw_o);

	wire dpc_href_o, dpc_vsync_o;
	wire [BITS-1:0] dpc_raw_o;
`ifdef USE_DPC
	wire dpc_href, dpc_vsync;
	wire [BITS-1:0] dpc_raw;
	isp_dpc #(BITS, WIDTH, HEIGHT, BAYER) dpc_i0(pclk, rst_n&dpc_en, dpc_threshold, in_href_o, in_vsync_o, in_raw_o, dpc_href, dpc_vsync, dpc_raw);
	vid_mux #(BITS) mux_dpc_i0(pclk, rst_n, dpc_en, in_href_o, in_vsync_o, in_raw_o, dpc_href, dpc_vsync, dpc_raw, dpc_href_o, dpc_vsync_o, dpc_raw_o);
`else
	assign dpc_href_o = in_href_o;
	assign dpc_vsync_o = in_vsync_o;
	assign dpc_raw_o = in_raw_o;
`endif

	wire blc_href_o, blc_vsync_o;
	wire [BITS-1:0] blc_raw_o;
`ifdef USE_BLC
	wire blc_href, blc_vsync;
	wire [BITS-1:0] blc_raw;
	isp_blc #(BITS, WIDTH, HEIGHT, BAYER) blc_i0(pclk, rst_n&blc_en, blc_r, blc_gr, blc_gb, blc_b, dpc_href_o, dpc_vsync_o, dpc_raw_o, blc_href, blc_vsync, blc_raw);
	vid_mux #(BITS) mux_blc_i0(pclk, rst_n, blc_en, dpc_href_o, dpc_vsync_o, dpc_raw_o, blc_href, blc_vsync, blc_raw, blc_href_o, blc_vsync_o, blc_raw_o);
`else
	assign blc_href_o = dpc_href_o;
	assign blc_vsync_o = dpc_vsync_o;
	assign blc_raw_o = dpc_raw_o;
`endif

	wire bnr_href_o, bnr_vsync_o;
	wire [BITS-1:0] bnr_raw_o;
`ifdef USE_BNR
	wire bnr_href, bnr_vsync;
	wire [BITS-1:0] bnr_raw;
	isp_bnr #(BITS, WIDTH, HEIGHT, BAYER) bnr_i0(pclk, rst_n&bnr_en, nr_level, blc_href_o, blc_vsync_o, blc_raw_o, bnr_href, bnr_vsync, bnr_raw);
	vid_mux #(BITS) mux_bnr_i0(pclk, rst_n, bnr_en, blc_href_o, blc_vsync_o, blc_raw_o, bnr_href, bnr_vsync, bnr_raw, bnr_href_o, bnr_vsync_o, bnr_raw_o);
`else
	assign bnr_href_o = blc_href_o;
	assign bnr_vsync_o = blc_vsync_o;
	assign bnr_raw_o = blc_raw_o;
`endif

	wire dgain_href_o, dgain_vsync_o;
	wire [BITS-1:0] dgain_raw_o;
`ifdef USE_DGAIN
	wire dgain_href, dgain_vsync;
	wire [BITS-1:0] dgain_raw;
	isp_dgain #(BITS, WIDTH, HEIGHT) dgain_i0(pclk, rst_n&dgain_en, dgain_gain, dgain_offset, bnr_href_o, bnr_vsync_o, bnr_raw_o, dgain_href, dgain_vsync, dgain_raw);
	vid_mux #(BITS) mux_dgain_i0(pclk, rst_n, dgain_en, bnr_href_o, bnr_vsync_o, bnr_raw_o, dgain_href, dgain_vsync, dgain_raw, dgain_href_o, dgain_vsync_o, dgain_raw_o);
`else
	assign dgain_href_o = bnr_href_o;
	assign dgain_vsync_o = bnr_vsync_o;
	assign dgain_raw_o = bnr_raw_o;
`endif

`ifdef USE_STAT_AE
	isp_stat_ae #(BITS, WIDTH, HEIGHT, BAYER, STAT_OUT_BITS, STAT_HIST_BITS) isp_stat_ae_i0(pclk, rst_n&stat_ae_en,
			stat_ae_rect_x, stat_ae_rect_y, stat_ae_rect_w, stat_ae_rect_h,
			dgain_href_o, dgain_vsync_o, dgain_raw_o,
			stat_ae_done, stat_ae_pix_cnt, stat_ae_sum,
			stat_ae_hist_clk, stat_ae_hist_out, stat_ae_hist_addr, stat_ae_hist_data);
`endif

	wire dm_href_o, dm_vsync_o;
	wire [BITS-1:0] dm_r_o, dm_g_o, dm_b_o;
`ifdef USE_DEMOSIC
	wire dm_href, dm_vsync;
	wire [BITS-1:0] dm_r, dm_g, dm_b;
	isp_demosaic #(BITS, WIDTH, HEIGHT, BAYER) demosaic_i0(pclk, rst_n&demosic_en, dgain_href_o, dgain_vsync_o, dgain_raw_o, dm_href, dm_vsync, dm_r, dm_g, dm_b);
	vid_mux #(BITS*3) mux_demosaic_i0(pclk, rst_n, demosic_en, dgain_href_o, dgain_vsync_o, {3{dgain_raw_o}}, dm_href, dm_vsync, {dm_r,dm_g,dm_b}, dm_href_o, dm_vsync_o, {dm_r_o,dm_g_o,dm_b_o});
`else
	assign dm_href_o = dgain_href_o;
	assign dm_vsync_o = dgain_vsync_o;
	assign dm_r_o = dgain_raw_o;
	assign dm_g_o = dgain_raw_o;
	assign dm_b_o = dgain_raw_o;
`endif

`ifdef USE_STAT_AWB
	isp_stat_awb #(BITS, WIDTH, HEIGHT, STAT_OUT_BITS, STAT_HIST_BITS) isp_stat_awb_i0(pclk, rst_n&stat_awb_en, stat_awb_min, stat_awb_max, dm_href_o, dm_vsync_o, dm_r_o, dm_g_o, dm_b_o,
			stat_awb_done, stat_awb_pix_cnt, stat_awb_sum_r, stat_awb_sum_g, stat_awb_sum_b,
			stat_awb_hist_clk, stat_awb_hist_out, stat_awb_hist_addr, stat_awb_hist_data );
`endif

	wire wb_href_o, wb_vsync_o;
	wire [BITS-1:0] wb_r_o, wb_g_o, wb_b_o;
`ifdef USE_WB
	wire wb_href, wb_vsync;
	wire [BITS-1:0] wb_r, wb_g, wb_b;
	isp_wb #(BITS, WIDTH, HEIGHT) wb_i0(pclk, rst_n&wb_en, wb_rgain, wb_ggain, wb_bgain, dm_href_o, dm_vsync_o, dm_r_o, dm_g_o, dm_b_o, wb_href, wb_vsync, wb_r, wb_g, wb_b);
	vid_mux #(BITS*3) mux_wb_i0(pclk, rst_n, wb_en, dm_href_o, dm_vsync_o, {dm_r_o,dm_g_o,dm_b_o}, wb_href, wb_vsync, {wb_r,wb_g,wb_b}, wb_href_o, wb_vsync_o, {wb_r_o,wb_g_o,wb_b_o});
`else
	assign wb_href_o = dm_href_o;
	assign wb_vsync_o = dm_vsync_o;
	assign wb_r_o = dm_r_o;
	assign wb_g_o = dm_g_o;
	assign wb_b_o = dm_b_o;
`endif

	wire ccm_href_o, ccm_vsync_o;
	wire [BITS-1:0] ccm_r_o, ccm_g_o, ccm_b_o;
`ifdef USE_CCM
	wire ccm_href, ccm_vsync;
	wire [BITS-1:0] ccm_r, ccm_g, ccm_b;
	isp_ccm #(BITS, WIDTH, HEIGHT) ccm_i0(pclk, rst_n&ccm_en, 
		ccm_rr, ccm_rg, ccm_rg,
		ccm_gr, ccm_gg, ccm_gb,
		ccm_br, ccm_bg, ccm_bb,
		wb_href_o, wb_vsync_o, wb_r_o, wb_g_o, wb_b_o, ccm_href, ccm_vsync, ccm_r, ccm_g, ccm_b);
	vid_mux #(BITS*3) mux_ccm_i0(pclk, rst_n, ccm_en, wb_href_o, wb_vsync_o, {wb_r_o,wb_g_o,wb_b_o}, ccm_href, ccm_vsync, {ccm_r,ccm_g,ccm_b}, ccm_href_o, ccm_vsync_o, {ccm_r_o,ccm_g_o,ccm_b_o});
`else
	assign ccm_href_o = wb_href_o;
	assign ccm_vsync_o = wb_vsync;
	assign ccm_r_o = wb_r_o;
	assign ccm_g_o = wb_g_o;
	assign ccm_b_o = wb_b_o;
`endif

	wire csc_href_o, csc_vsync_o;
	wire [BITS-1:0] csc_y_o, csc_u_o, csc_v_o;
`ifdef USE_CSC
	wire csc_href, csc_vsync;
	wire [BITS-1:0] csc_y, csc_u, csc_v;
	isp_csc #(BITS, WIDTH, HEIGHT) csc_i0(pclk, rst_n&csc_en, ccm_href_o, ccm_vsync_o, ccm_r_o, ccm_g_o, ccm_b_o, csc_href, csc_vsync, csc_y, csc_u, csc_v);
	vid_mux #(BITS*3) mux_csc_i0(pclk, rst_n, csc_en, ccm_href_o, ccm_vsync_o, {ccm_b_o, ccm_g_o, ccm_r_o}, csc_href, csc_vsync, {csc_y, csc_u, csc_v}, csc_href_o, csc_vsync_o, {csc_y_o,csc_u_o,csc_v_o});
`else
	assign csc_href_o = ccm_href_o;
	assign csc_vsync_o = ccm_vsync_o;
	assign csc_y_o = ccm_b_o;
	assign csc_u_o = ccm_g_o;
	assign csc_v_o = ccm_r_o;
`endif

	wire gamma_href_o, gamma_vsync_o;
	wire [BITS-1:0] gamma_y_o, gamma_u_o, gamma_v_o;
`ifdef USE_GAMMA
	wire gamma_href, gamma_vsync;
	wire [BITS-1:0] gamma_y, gamma_u, gamma_v;
	isp_gamma #(BITS, WIDTH, HEIGHT, GAMMA_TABLE_BITS) gamma_i0(pclk, rst_n&gamma_en, csc_href_o, csc_vsync_o, csc_y_o, gamma_href, gamma_vsync, gamma_y, 
															gamma_table_clk, gamma_table_wen, gamma_table_ren, gamma_table_addr, gamma_table_wdata, gamma_table_rdata);
	data_delay #(BITS, 2) gamma_delay_u (pclk, rst_n&gamma_en, csc_u_o, gamma_u); //gamma模块内部延迟2拍
	data_delay #(BITS, 2) gamma_delay_v (pclk, rst_n&gamma_en, csc_v_o, gamma_v);
	vid_mux #(BITS*3) mux_gamma_i0(pclk, rst_n, gamma_en, csc_href_o, csc_vsync_o, {csc_y_o,csc_u_o,csc_v_o}, gamma_href, gamma_vsync, {gamma_y,gamma_u,gamma_v}, gamma_href_o, gamma_vsync_o, {gamma_y_o,gamma_u_o,gamma_v_o});
`else
	assign gamma_href_o = csc_href_o;
	assign gamma_vsync_o = csc_vsync_o;
	assign gamma_y_o = csc_y_o;
	assign gamma_u_o = csc_u_o;
	assign gamma_v_o = csc_v_o;
`endif

	wire nr2d_href_o, nr2d_vsync_o;
	wire [BITS-1:0] nr2d_y_o, nr2d_u_o, nr2d_v_o;
`ifdef USE_2DNR
	wire nr2d_href, nr2d_vsync;
	wire [BITS-1:0] nr2d_y, nr2d_u, nr2d_v, nr2d_u_tmp, nr2d_v_tmp;
	isp_2dnr #(BITS, WIDTH, HEIGHT, NR2D_WEIGHT_BITS) nr2d_y0(pclk, rst_n&nr2d_en, 
											nr2d_space_kernel, nr2d_color_curve_x, nr2d_color_curve_y,
											gamma_href_o, gamma_vsync_o, gamma_y_o, nr2d_href, nr2d_vsync, nr2d_y);
	shift_register #(BITS, WIDTH, 6) nr2d_shift_u (pclk, gamma_href_o, gamma_u_o, nr2d_u_tmp, ); //由于2dnr内部使用6行linebuffer,这里UV会早Y量6行数据,造成亮度与色度不匹配问题
	shift_register #(BITS, WIDTH, 6) nr2d_shift_v (pclk, gamma_href_o, gamma_v_o, nr2d_v_tmp, );
	data_delay #(BITS, (11+BITS+2*NR2D_WEIGHT_BITS+6)) nr2d_delay_u (pclk, rst_n&nr2d_en, nr2d_u_tmp, nr2d_u);
	data_delay #(BITS, (11+BITS+2*NR2D_WEIGHT_BITS+6)) nr2d_delay_v (pclk, rst_n&nr2d_en, nr2d_v_tmp, nr2d_v);
	vid_mux #(BITS*3) mux_2dnr_i0(pclk, rst_n, nr2d_en, gamma_href_o, gamma_vsync_o, {gamma_y_o,gamma_u_o,gamma_v_o}, nr2d_href, nr2d_vsync, {nr2d_y,nr2d_u,nr2d_v}, nr2d_href_o, nr2d_vsync_o, {nr2d_y_o,nr2d_u_o,nr2d_v_o});
`else
	assign nr2d_href_o = gamma_href_o;
	assign nr2d_vsync_o = gamma_vsync_o;
	assign nr2d_y_o = gamma_y_o;
	assign nr2d_u_o = gamma_u_o;
	assign nr2d_v_o = gamma_v_o;
`endif

	wire ee_href_o, ee_vsync_o;
	wire [BITS-1:0] ee_y_o, ee_u_o, ee_v_o;
`ifdef USE_EE
	wire ee_href, ee_vsync;
	wire [BITS-1:0] ee_y, ee_u, ee_v;
	isp_ee #(BITS, WIDTH, HEIGHT) ee_i0(pclk, rst_n&ee_en, nr2d_href_o, nr2d_vsync_o, nr2d_y_o, nr2d_u_o, nr2d_v_o, ee_href, ee_vsync, ee_y, ee_u, ee_v);
	vid_mux #(BITS*3) mux_ee_i0(pclk, rst_n, ee_en, nr2d_href_o, nr2d_vsync_o, {nr2d_y_o,nr2d_u_o,nr2d_v_o}, ee_href, ee_vsync, {ee_y,ee_u,ee_v}, ee_href_o, ee_vsync_o, {ee_y_o,ee_u_o,ee_v_o});
`else
	assign ee_href_o = nr2d_href_o;
	assign ee_vsync_o = nr2d_vsync_o;
	assign ee_y_o = nr2d_y_o;
	assign ee_u_o = nr2d_u_o;
	assign ee_v_o = nr2d_v_o;
`endif

	assign out_href = ee_href_o;
	assign out_vsync = ee_vsync_o;
	assign out_y = ee_y_o;
	assign out_u = ee_u_o;
	assign out_v = ee_v_o;
endmodule

module data_delay
#(
	parameter BITS = 8,
	parameter DELAY = 5
)
(
	input clk,
	input rst_n,

	input  [BITS-1:0] in_data,
	output [BITS-1:0] out_data
);

	reg [BITS-1:0] data_buff [DELAY-1:0];
	always @ (posedge clk or negedge rst_n) begin : _blk_delay
		integer i;
		if (!rst_n) begin
			for (i = 0; i < DELAY; i = i + 1)
				data_buff[i] <= 0;
		end
		else begin
			data_buff[0] <= in_data;
			for (i = 1; i < DELAY; i = i + 1)
				data_buff[i] <= data_buff[i-1];
		end
	end

	assign out_data = data_buff[DELAY-1];
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
