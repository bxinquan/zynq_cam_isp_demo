/*************************************************************************
    > File Name: alg_ae.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

module alg_ae
#(
	parameter BITS = 8
)
(
	input pclk,
	input rst_n,

	input in_vsync,
	input stat_done,
	input [BITS-1:0] target_val,
	input [31:0] pix_cnt,
	input [31:0] sum,

	output reg [7:0] dgain,
	output reg       cmos_change_start,
	input            cmos_change_done,
	output reg [9:0] cmos_exposure,
	output reg [9:0] cmos_gain
);

`define AE_USE_SHIFT_DIV 1

	reg prev_sync;
	always @ (posedge pclk) prev_sync <= in_vsync;
	wire frame_start = ~in_vsync & prev_sync;
	
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			cmos_change_start <= 0;
		end
		else if (!cmos_change_done) begin
			cmos_change_start <= 0;
		end
		else if (frame_start) begin
			cmos_change_start <= 1;
		end
		else begin
			cmos_change_start <= cmos_change_start;
		end
	end


`ifdef AE_USE_SHIFT_DIV
	wire [33:0] gain0, remain;
	wire div_done;
	shift_div #(34) div_gain(pclk, rst_n, stat_done, pix_cnt * target_val, sum[31:4], gain0, remain, div_done);
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			dgain <= 8'h10;
		else if (div_done)
			dgain <= gain0 > 32'd255 ? 8'd255 : gain0[7:0];
		else
			dgain <= dgain;
	end

`else

	reg [31:0] gain0;
	wire div_done = frame_start;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			gain0 <= 8'h10;
		end
		else if (stat_done) begin
			gain0 <= pix_cnt * target_val / sum[31:4];
		end
		else begin
			gain0 <= gain0;
		end
	end

	always @ (posedge pclk) dgain <= gain0 > 32'd255 ? 8'd255 : gain0[7:0];
`endif

	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			cmos_exposure = 10'h80;
			cmos_gain = 10'h10;
		end
		else if (div_done) begin : ae_change_blk
			reg [14:0] expo_diff, gain_diff;
			if (gain0[9:0] > 20) begin
				expo_diff = (((cmos_exposure * gain0[9:0]) >> 4) - cmos_exposure) >> 1;
				expo_diff = expo_diff > 0 ? expo_diff : 1;
				gain_diff = (((cmos_gain * gain0[9:0]) >> 4) - cmos_gain) >> 1;
				gain_diff = gain_diff > 0 ? gain_diff : 1;
				if (cmos_exposure < 10'h3ff) begin
					if (cmos_exposure + expo_diff > 10'h3ff)
						cmos_exposure = 10'h3ff;
					else
						cmos_exposure = cmos_exposure + expo_diff;
				end
				else if (cmos_gain < 10'h3ff) begin
					if (cmos_gain + gain_diff > 10'h3ff)
						cmos_gain = 10'h3ff;
					else
						cmos_gain = cmos_gain + gain_diff;
				end
			end
			else if (gain0[9:0] < 12) begin
				expo_diff = (cmos_exposure - ((cmos_exposure * gain0[9:0]) >> 4)) >> 1;
				expo_diff = expo_diff > 0 ? expo_diff : 1;
				gain_diff = (cmos_gain - ((cmos_gain * gain0[9:0]) >> 4)) >> 1;
				gain_diff = gain_diff > 0 ? gain_diff : 1;
				if (cmos_gain > 16) begin
					if (cmos_gain < 16 + gain_diff)
						cmos_gain = 16;
					else
						cmos_gain = cmos_gain - gain_diff;
				end
				else if (cmos_exposure > 10'h1) begin
					if (cmos_exposure < 1 + expo_diff)
						cmos_exposure = 10'h1;
					else
						cmos_exposure = cmos_exposure - expo_diff;
				end
			end
		end
	end

endmodule
