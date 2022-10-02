
`timescale 1 ns / 1 ps

	module video_to_axis_v1_0 #
	(
		// Users to add parameters here
		parameter DATA_BITS = 8,
		parameter ADDR_BITS = 4
		// User parameters ends
		// Do not modify the parameters beyond this line

	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line
		input                  vid_clk,
		input                  vid_rstn,
		input                  vid_ce,
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

	video_to_axis # ( 
		.DATA_BITS(DATA_BITS),
		.ADDR_BITS(ADDR_BITS)
	) video_to_axis_inst (
		.vid_clk          (vid_clk),
		.vid_rstn         (vid_rstn),
		.vid_ce           (vid_ce),
		.vid_vsync        (vid_vsync),
		.vid_active_video (vid_active_video),
		.vid_data         (vid_data),

		.aclk             (aclk),
		.aresetn          (aresetn),
		.m_axis_tdata     (m_axis_tdata),
		.m_axis_tvalid    (m_axis_tvalid),
		.m_axis_tready    (m_axis_tready),
		.m_axis_tlast     (m_axis_tlast),
		.m_axis_tuser     (m_axis_tuser),

		.overflow         (overflow)
	);

	// Add user logic here

	// User logic ends

	endmodule
