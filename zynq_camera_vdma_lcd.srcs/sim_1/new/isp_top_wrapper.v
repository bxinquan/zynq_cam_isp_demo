/*************************************************************************
    > File Name: isp_top_wrapper.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/


module isp_top_wrapper
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter BAYER = 0 //0:BGGR 1:GBRG 2:GRBG 3:RGGB
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
	
	output       cmos_change_start,
	input        cmos_change_done,
	output [9:0] cmos_exposure,
	output [9:0] cmos_gain
);

//`define USE_ALGO_AE 1
//`define USE_ALGO_AWB 1

	localparam EN_DPC = 1'b0;
	localparam EN_BLC = 1'b0;
	localparam EN_BNR = 1'b0;
	localparam EN_DGAIN = 1'b0;
	localparam EN_DEMOSIC = 1'b1;
	localparam EN_WB = 1'b0;
	localparam EN_CCM = 1'b0;
	localparam EN_CSC = 1'b1;
	localparam EN_GAMMA = 1'b0;
	localparam EN_EE = 1'b0;
	localparam EN_STAT_AE = 1'b0;
	localparam EN_STAT_AWB = 1'b0;

	localparam DPC_THRESHOLD = 8'd20;

	localparam BLC_B        = 8'd40;
	localparam BLC_Gb       = 8'd40;
	localparam BLC_Gr       = 8'd40;
	localparam BLC_R        = 8'd40;

	localparam NR_LEVEL     = 4'd1;

	localparam AE_RECT_X = 0;
	localparam AE_RECT_Y = 0;
	localparam AE_RECT_W = WIDTH;
	localparam AE_RECT_H = HEIGHT;

	localparam AWB_MIN = 8'd10;
	localparam AWB_MAX = 8'd220;
	
	localparam CCM_RR =  8'sh1a, CCM_RG = -8'sh05, CCM_RB = -8'sh05;
	localparam CCM_GR = -8'sh05, CCM_GG =  8'sh1a, CCM_GB = -8'sh05;
	localparam CCM_BR = -8'sh05, CCM_BG = -8'sh05, CCM_BB =  8'sh1a;
	
	localparam STAT_BITS = 28;
	localparam DGAIN_OFFSET = 0;

	wire [7:0] dgain_gain;
	wire [7:0] wb_rgain;
	wire [7:0] wb_ggain;
	wire [7:0] wb_bgain;
	
	wire stat_ae_done;
	wire [STAT_BITS-1:0] stat_ae_pix_cnt, stat_ae_sum;

	wire stat_awb_done;
	wire [STAT_BITS-1:0] stat_awb_pix_cnt, stat_awb_sum_r, stat_awb_sum_g, stat_awb_sum_b;
	
	reg [BITS+1:0] stat_hist_addr;
	wire [STAT_BITS-1:0] stat_ae_hist_data, stat_awb_hist_data;
	reg prev_vsync;
	always @ (posedge pclk) prev_vsync <= in_vsync;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			stat_hist_addr <= 0;
		else if (in_vsync & ~prev_vsync)
			stat_hist_addr <= 0;
		else
			stat_hist_addr <= stat_hist_addr + 1'b1;
	end

	isp_top #(BITS, WIDTH, HEIGHT, BAYER, STAT_BITS) isp_top_i0 (
			.pclk(pclk),
			.rst_n(rst_n),
		
			.in_href(in_href),
			.in_vsync(in_vsync),
			.in_raw(in_raw),
		
			.out_href(out_href),
			.out_vsync(out_vsync),
			.out_y(out_y),
			.out_u(out_u),
			.out_v(out_v),
		
			.dpc_en(EN_DPC), 
			.blc_en(EN_BLC), 
			.bnr_en(EN_BNR),
			.dgain_en(EN_DGAIN),
			.demosic_en(EN_DEMOSIC),
			.wb_en(EN_WB),
			.ccm_en(EN_CCM),
			.csc_en(EN_CSC),
			.gamma_en(EN_GAMMA),
			.ee_en(EN_EE),
			.stat_ae_en(EN_STAT_AE),
			.stat_awb_en(EN_STAT_AWB),

			.dpc_threshold(DPC_THRESHOLD),
			.blc_b(BLC_B), .blc_gb(BLC_Gb), .blc_gr(BLC_Gr), .blc_r(BLC_R),
			.nr_level(NR_LEVEL),
			.dgain_gain(dgain_gain), .dgain_offset(DGAIN_OFFSET),
			.wb_rgain(wb_rgain), .wb_ggain(wb_ggain), .wb_bgain(wb_bgain),
			.ccm_rr(CCM_RR), .ccm_rg(CCM_RG), .ccm_rb(CCM_RB),
			.ccm_gr(CCM_GR), .ccm_gg(CCM_GG), .ccm_gb(CCM_GB),
			.ccm_br(CCM_BR), .ccm_bg(CCM_BG), .ccm_bb(CCM_BB),

			.stat_ae_rect_x(AE_RECT_X), .stat_ae_rect_y(AE_RECT_Y), .stat_ae_rect_w(AE_RECT_W), .stat_ae_rect_h(AE_RECT_H),
			.stat_ae_done(stat_ae_done),
			.stat_ae_pix_cnt(stat_ae_pix_cnt), .stat_ae_sum(stat_ae_sum),
			.stat_ae_hist_clk(pclk),
			.stat_ae_hist_out(in_vsync),
			.stat_ae_hist_addr(stat_hist_addr),
			.stat_ae_hist_data(/*stat_ae_hist_data*/),

			.stat_awb_min(AWB_MIN), .stat_awb_max(AWB_MAX),
			.stat_awb_done(stat_awb_done),
			.stat_awb_pix_cnt(stat_awb_pix_cnt), .stat_awb_sum_r(stat_awb_sum_r), .stat_awb_sum_g(stat_awb_sum_g), .stat_awb_sum_b(stat_awb_sum_b),
			.stat_awb_hist_clk(pclk),
			.stat_awb_hist_out(in_vsync),
			.stat_awb_hist_addr(stat_hist_addr),
			.stat_awb_hist_data(/*stat_awb_hist_data*/)
		);

`ifdef USE_ALGO_AE
	alg_ae #(BITS) alg_ae_i0(pclk, rst_n, in_vsync, stat_ae_done, 8'd65, stat_ae_pix_cnt, stat_ae_sum+(^stat_ae_hist_data)/*XXX DEBUG*/, dgain_gain, cmos_change_start, cmos_change_done, cmos_exposure, cmos_gain);
`else
	assign cmos_exposure = 10'h200;
	assign cmos_gain = 10'h20;
	assign dgain_gain = 8'h10;
`endif

`ifdef USE_ALGO_AWB
	alg_awb #(BITS) alg_awb_i0(pclk, rst_n, stat_awb_done, stat_awb_pix_cnt, stat_awb_sum_r, stat_awb_sum_g+(^stat_awb_hist_data)/*XXX DEBUG*/, stat_awb_sum_b, wb_rgain, wb_ggain, wb_bgain);
`else
	assign wb_rgain = 8'h10;
	assign wb_ggain = 8'h10;
	assign wb_bgain = 8'h10;
`endif
endmodule
