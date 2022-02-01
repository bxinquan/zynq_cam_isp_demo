/*************************************************************************
    > File Name: isp_ccm.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * ISP - Color Correction Matrix
 */

module isp_ccm
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960
)
(
	input pclk,
	input rst_n,

	input signed [7:0] m_rr, m_rg, m_rb, //format S4.4
	input signed [7:0] m_gr, m_gg, m_gb,
	input signed [7:0] m_br, m_bg, m_bb,

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

	// [Rout]   [Mrr, Mrg, Mrb]   [Rin]
	// [Gout] = [Mgr, Mgg, Mgb] * [Gin]
	// [Bout]   [Mbr, Mbg, Mbb]   [Bin]

	reg signed [BITS:0] in_r_1, in_g_1, in_b_1;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			in_r_1 <= 0;
			in_g_1 <= 0;
			in_b_1 <= 0;
		end
		else begin
			in_r_1 <= {1'b0, in_r};
			in_g_1 <= {1'b0, in_g};
			in_b_1 <= {1'b0, in_b};
		end
	end

	reg signed [BITS+8:0] data_rr, data_rg, data_rb;
	reg signed [BITS+8:0] data_gr, data_gg, data_gb;
	reg signed [BITS+8:0] data_br, data_bg, data_bb;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_rr <= 0;
			data_rg <= 0;
			data_rb <= 0;
			data_gr <= 0;
			data_gg <= 0;
			data_gb <= 0;
			data_br <= 0;
			data_bg <= 0;
			data_bb <= 0;
		end
		else begin
			data_rr <= m_rr * in_r_1;
			data_rg <= m_rg * in_g_1;
			data_rb <= m_rb * in_b_1;
			data_gr <= m_gr * in_r_1;
			data_gg <= m_gg * in_g_1;
			data_gb <= m_gb * in_b_1;
			data_br <= m_br * in_r_1;
			data_bg <= m_bg * in_g_1;
			data_bb <= m_bb * in_b_1;
		end
	end

	reg signed [BITS+8:0] data_r, data_g, data_b;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_r <= 0;
			data_g <= 0;
			data_b <= 0;
		end
		else begin
			data_r <= (data_rr + data_rg + data_rb) >>> 4;
			data_g <= (data_gr + data_gg + data_gb) >>> 4;
			data_b <= (data_br + data_bg + data_bb) >>> 4;
		end
	end

	reg [BITS-1:0] data_r_1, data_g_1, data_b_1;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_r_1 <= 0;
			data_g_1 <= 0;
			data_b_1 <= 0;
		end
		else begin
			data_r_1 <= data_r < 8'sd0 ? {BITS{1'b0}} : (data_r > {BITS{1'b1}} ? {BITS{1'b1}} : data_r[BITS-1:0]);
			data_g_1 <= data_g < 8'sd0 ? {BITS{1'b0}} : (data_g > {BITS{1'b1}} ? {BITS{1'b1}} : data_g[BITS-1:0]);
			data_b_1 <= data_b < 8'sd0 ? {BITS{1'b0}} : (data_b > {BITS{1'b1}} ? {BITS{1'b1}} : data_b[BITS-1:0]);
		end
	end

	localparam DLY_CLK = 4;
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
	assign out_r = out_href ? data_r_1 : {BITS{1'b0}};
	assign out_g = out_href ? data_g_1 : {BITS{1'b0}};
	assign out_b = out_href ? data_b_1 : {BITS{1'b0}};
endmodule
