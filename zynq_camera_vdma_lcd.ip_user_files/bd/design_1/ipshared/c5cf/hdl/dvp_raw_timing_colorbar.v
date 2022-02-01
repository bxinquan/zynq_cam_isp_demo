`timescale 1 ns / 1 ps

`define DVP_RAW_1280x960_30_56MHz

module dvp_raw_timing_colorbar
(
	xclk,
	reset_n,
	
	dvp_pclk,
	dvp_href,
	dvp_hsync,
	dvp_vsync,
	dvp_raw
);

	parameter BITS = 8;
	parameter BAYER = 0; //0:RGGB 1:GRBG 2:GBRG 3:BGGR

`ifdef DVP_RAW_1280x960_30_56MHz
	parameter H_FRONT = 16'd100;
	parameter H_PULSE = 16'd416;
	parameter H_BACK = 16'd100;
	parameter H_DISP = 16'd1280;
	parameter V_FRONT = 16'd2;
	parameter V_PULSE = 16'd20;
	parameter V_BACK = 16'd2;
	parameter V_DISP = 16'd960;
	parameter H_POL = 1'b0;
	parameter V_POL = 1'b1;
`endif
`ifdef DVP_RAW_960x544_30_56MHz
	parameter H_FRONT = 16'd200;
	parameter H_PULSE = 16'd536;
	parameter H_BACK = 16'd200;
	parameter H_DISP = 16'd960;
	parameter V_FRONT = 16'd100;
	parameter V_PULSE = 16'd240;
	parameter V_BACK = 16'd100;
	parameter V_DISP = 16'd544;
	parameter H_POL = 1'b0;
	parameter V_POL = 1'b1;
`endif

	localparam H_TOTAL = H_FRONT + H_PULSE + H_BACK + H_DISP;
	localparam V_TOTAL = V_FRONT + V_PULSE + V_BACK + V_DISP;

	input xclk;
	input reset_n;
	output dvp_pclk;
	output reg dvp_href;
	output reg dvp_hsync;
	output reg dvp_vsync;
	output [BITS-1:0] dvp_raw;

	reg [15:0] pix_cnt;
	always @ (posedge xclk or negedge reset_n) begin
		if (!reset_n)
			pix_cnt <= 0;
		else if (pix_cnt < H_TOTAL - 1'b1)
			pix_cnt <= pix_cnt + 1'b1;
		else
			pix_cnt <= 0;
	end

	reg [15:0] line_cnt;
	always @ (posedge xclk or negedge reset_n) begin
		if (!reset_n)
			line_cnt <= 0;
		else if (pix_cnt == H_TOTAL - 1'b1) begin
			if (line_cnt < V_TOTAL - 1'b1)
				line_cnt <= line_cnt + 1'b1;
			else
				line_cnt <= 0;
		end
		else
			line_cnt <= line_cnt;
	end


	reg [BITS-1:0] raw_data;
	always @ (posedge xclk or negedge reset_n) begin
		if (!reset_n)
			raw_data <= 0;
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK)
			raw_data <= 0;
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK + H_DISP * 1 / 8)
			raw_data <= color2raw({BITS{1'b0}}, {BITS{1'b0}}, {BITS{1'b0}}, line_cnt[0], pix_cnt[0]);
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK + H_DISP * 2 / 8)
			raw_data <= color2raw({BITS{1'b0}}, {BITS{1'b0}}, {BITS{1'b1}}, line_cnt[0], pix_cnt[0]);
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK + H_DISP * 3 / 8)
			raw_data <= color2raw({BITS{1'b0}}, {BITS{1'b1}}, {BITS{1'b0}}, line_cnt[0], pix_cnt[0]);
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK + H_DISP * 4 / 8)
			raw_data <= color2raw({BITS{1'b0}}, {BITS{1'b1}}, {BITS{1'b1}}, line_cnt[0], pix_cnt[0]);
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK + H_DISP * 5 / 8)
			raw_data <= color2raw({BITS{1'b1}}, {BITS{1'b0}}, {BITS{1'b0}}, line_cnt[0], pix_cnt[0]);
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK + H_DISP * 6 / 8)
			raw_data <= color2raw({BITS{1'b1}}, {BITS{1'b0}}, {BITS{1'b1}}, line_cnt[0], pix_cnt[0]);
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK + H_DISP * 7 / 8)
			raw_data <= color2raw({BITS{1'b1}}, {BITS{1'b1}}, {BITS{1'b0}}, line_cnt[0], pix_cnt[0]);
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK + H_DISP * 8 / 8)
			raw_data <= color2raw({BITS{1'b1}}, {BITS{1'b1}}, {BITS{1'b1}}, line_cnt[0], pix_cnt[0]);
		else
			raw_data <= 0;
	end

	always @(posedge xclk or negedge reset_n) begin
		if (!reset_n) begin
			dvp_href <= 0;
			dvp_hsync <= ~H_POL;
			dvp_vsync <= ~V_POL;
		end
		else begin
			dvp_href <= pix_cnt >= H_FRONT + H_PULSE + H_BACK && line_cnt >= V_FRONT + V_PULSE + V_BACK;
			dvp_hsync <= (pix_cnt >= H_FRONT && pix_cnt < H_FRONT + H_PULSE) ? H_POL : ~H_POL;
			dvp_vsync <= (line_cnt >= V_FRONT && line_cnt < V_FRONT + V_PULSE) ? V_POL : ~V_POL;
		end
	end

	assign dvp_pclk = xclk;
	assign dvp_raw = dvp_href ? raw_data : {BITS{1'b0}};
	
	function [BITS-1:0] color2raw;
		input [BITS-1:0] r, g, b;
		input odd_line, odd_pix;
		begin
			case ({BAYER[1:0],odd_line,odd_pix})
				{2'd0,2'b00}: color2raw = r;
				{2'd0,2'b01}: color2raw = g;
				{2'd0,2'b10}: color2raw = g;
				{2'd0,2'b11}: color2raw = b;
				{2'd1,2'b00}: color2raw = g;
				{2'd1,2'b01}: color2raw = r;
				{2'd1,2'b10}: color2raw = b;
				{2'd1,2'b11}: color2raw = g;
				{2'd2,2'b00}: color2raw = g;
				{2'd2,2'b01}: color2raw = b;
				{2'd2,2'b10}: color2raw = r;
				{2'd2,2'b11}: color2raw = g;
				{2'd3,2'b00}: color2raw = b;
				{2'd3,2'b01}: color2raw = g;
				{2'd3,2'b10}: color2raw = g;
				{2'd3,2'b11}: color2raw = r;
				default: color2raw = 0;
			endcase
		end
	endfunction
endmodule
