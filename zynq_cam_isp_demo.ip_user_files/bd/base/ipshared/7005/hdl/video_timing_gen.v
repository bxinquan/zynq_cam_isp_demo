`timescale 1 ns / 1 ps

module video_timing_gen
#(
	parameter H_FRONT   = 50,
	parameter H_PULSE   = 100,
	parameter H_BACK    = 50,
	parameter H_DISP    = 1280,
	parameter V_FRONT   = 5,
	parameter V_PULSE   = 10,
	parameter V_BACK    = 5,
	parameter V_DISP    = 960,
	parameter H_POL     = 1'b0,
	parameter V_POL     = 1'b1
)
(
	input             vid_clk,
	input             vid_rstn,
	output reg        vid_active_video,
	output reg        vid_hsync,
	output reg        vid_vsync
);

	localparam H_TOTAL = H_FRONT + H_PULSE + H_BACK + H_DISP;
	localparam V_TOTAL = V_FRONT + V_PULSE + V_BACK + V_DISP;


	reg [15:0] pix_cnt;
	always @ (posedge vid_clk or negedge vid_rstn) begin
		if (!vid_rstn)
			pix_cnt <= 0;
		else if (pix_cnt < H_TOTAL - 1'b1)
			pix_cnt <= pix_cnt + 1'b1;
		else
			pix_cnt <= 0;
	end

	reg [15:0] line_cnt;
	always @ (posedge vid_clk or negedge vid_rstn) begin
		if (!vid_rstn)
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

	always @(posedge vid_clk or negedge vid_rstn) begin
		if (!vid_rstn) begin
			vid_active_video <= 0;
			vid_hsync <= ~H_POL;
			vid_vsync <= ~V_POL;
		end
		else begin
			vid_active_video <= pix_cnt >= H_FRONT + H_PULSE + H_BACK && line_cnt >= V_FRONT + V_PULSE + V_BACK;
			vid_hsync <= (pix_cnt >= H_FRONT && pix_cnt < H_FRONT + H_PULSE) ? H_POL : ~H_POL;
			vid_vsync <= (line_cnt >= V_FRONT && line_cnt < V_FRONT + V_PULSE) ? V_POL : ~V_POL;
		end
	end

endmodule
