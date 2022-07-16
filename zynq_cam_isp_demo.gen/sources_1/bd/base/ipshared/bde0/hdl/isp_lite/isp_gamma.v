/*************************************************************************
    > File Name: isp_gamma.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * ISP - Gamma (Look-up table)
 * 可以用np.uint8(np.power(np.double(range(256))/255, 1/2.2) * 255)生成g=1/2.2的gamma表
 * CFG_TABLE_BITS小于BITS时会损失精度
 */

module isp_gamma
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter CFG_TABLE_BITS = 8
)
(
	input pclk,
	input rst_n,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_data,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_data,

	//Gamma映射表RAM配置口
	input                       cfg_table_clk,
	input                       cfg_table_wen,
	input                       cfg_table_ren,
	input  [CFG_TABLE_BITS-1:0] cfg_table_addr,
	input  [CFG_TABLE_BITS-1:0] cfg_table_wdata,
	output [CFG_TABLE_BITS-1:0] cfg_table_rdata
);

	wire [CFG_TABLE_BITS-1:0] g_in = (BITS >= CFG_TABLE_BITS) ? in_data[(BITS-1)-:CFG_TABLE_BITS] : {in_data, in_data[CFG_TABLE_BITS-BITS-1:0]};
	wire [CFG_TABLE_BITS-1:0] g_out;
	wire [BITS-1:0] q = (CFG_TABLE_BITS >= BITS) ? g_out[(CFG_TABLE_BITS-1)-:BITS] : {g_out, g_out[BITS-CFG_TABLE_BITS-1:0]};
	full_dp_ram #(CFG_TABLE_BITS,CFG_TABLE_BITS) table_ram (
			.clk_a(cfg_table_clk),
			.wen_a(cfg_table_wen),
			.ren_a(cfg_table_ren),
			.addr_a(cfg_table_addr),
			.wdata_a(cfg_table_wdata),
			.rdata_a(cfg_table_rdata),
			.clk_b(pclk),
			.wen_b(1'b0),
			.ren_b(in_href),
			.addr_b(g_in),
			.wdata_b({CFG_TABLE_BITS{1'b0}}),
			.rdata_b(g_out)
		);

	reg [BITS-1:0] data_r;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_r <= 0;
		end
		else begin
			data_r <= q;
		end
	end

	reg [1:0] href_dly;
	reg [1:0] vsync_dly;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			href_dly  <= 0;
			vsync_dly <= 0;
		end
		else begin
			href_dly  <= {href_dly[0], in_href};
			vsync_dly <= {vsync_dly[0], in_vsync};
		end
	end

	assign out_href  = href_dly[1];
	assign out_vsync = vsync_dly[1];
	assign out_data  = out_href ? data_r : {BITS{1'b0}};
endmodule
