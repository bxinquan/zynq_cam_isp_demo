`timescale 1ns / 1ps


module video_to_axis
#(
	parameter DATA_BITS = 8,
	parameter ADDR_BITS = 4
)
(
	input                  vid_clk,
	input                  vid_rstn,
	input                  vid_vsync,
	input                  vid_active_video,
	input  [DATA_BITS-1:0] vid_data,
	
	input                  aclk,
	input                  aresetn,
	output [DATA_BITS-1:0] m_axis_tdata,
	output                 m_axis_tvalid,
	input                  m_axis_tready,
	output                 m_axis_tlast,
	output                 m_axis_tuser,

	output                 overflow
);

	reg [DATA_BITS-1:0] prev_data;
	reg prev_vsync, prev_active_video;
	always @ (posedge vid_clk or negedge vid_rstn) begin
		if (!vid_rstn) begin
			prev_data         <= 0;
			prev_vsync        <= 0;
			prev_active_video <= 0;
		end
		else begin
			prev_data         <= vid_data;
			prev_vsync        <= vid_vsync;
			prev_active_video <= vid_active_video;
		end
	end
	
	wire last = ~vid_active_video & prev_active_video;

	reg frmsync;
	always @ (posedge vid_clk or negedge vid_rstn) begin
		if (!vid_rstn)
			frmsync <= 0;
		else if (vid_vsync ^ prev_vsync)
			frmsync <= 1;
		else if (prev_active_video)
			frmsync <= 0;
		else
			frmsync <= frmsync;
	end

	reg  tvalid;
	wire rempty;
	wire rd_flag = ~tvalid | m_axis_tready;

	always @ (posedge aclk or negedge aresetn) begin
		if (!aresetn)
			tvalid <= 0;
		else
			tvalid <= rd_flag ? ~rempty : tvalid;
	end
	
	assign m_axis_tvalid = tvalid;

	async_fifo
		#(
			.DW         (DATA_BITS+2),
			.AW         (ADDR_BITS)
		)
		fifo
		(
			.wclk       (vid_clk),
			.rclk       (aclk),
			.wrstn      (vid_rstn),
			.rrstn      (aresetn),
			.wen        (prev_active_video),
			.wdata      ({frmsync, last, prev_data}),
			.wfull      (overflow),
			.ren        (rd_flag),
			.rdata      ({m_axis_tuser, m_axis_tlast, m_axis_tdata}),
			.rempty     (rempty)
		);
endmodule
