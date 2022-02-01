
`timescale 1 ns / 1 ps

	module axis_dpc_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		parameter BITS = 8,
		parameter WIDTH = 1280,
		parameter HEIGHT = 960,
		parameter BAYER = 0, //0:RGGB 1:GRBG 2:GBRG 3:BGGR
		parameter THRESHOLD = 20
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		input wire  axis_aclk,
		input wire  axis_aresetn,

		// Ports of Axi Slave Bus Interface S00_AXIS
		output wire  s00_axis_tready,
		input wire [BITS-1 : 0] s00_axis_tdata,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,
		input wire  s00_axis_tuser,

		// Ports of Axi Master Bus Interface M00_AXIS
		output wire  m00_axis_tvalid,
		output wire [BITS-1 : 0] m00_axis_tdata,
		output wire  m00_axis_tlast,
		output wire  m00_axis_tuser,
		input wire  m00_axis_tready
	);
	
	axis_dpc
		#(
			.BITS(BITS),
			.WIDTH(WIDTH),
			.HEIGHT(HEIGHT),
			.BAYER(BAYER)
		)
		axis_dpc_inst
		(
			.aclk           (axis_aclk),
			.aresetn        (axis_aresetn),
			.threshold      (THRESHOLD),
			.s_axis_tdata   (s00_axis_tdata),
			.s_axis_tlast   (s00_axis_tlast),
			.s_axis_tvalid  (s00_axis_tvalid),
			.s_axis_tready  (s00_axis_tready),
			.s_axis_tuser   (s00_axis_tuser),
			.m_axis_tdata   (m00_axis_tdata),
			.m_axis_tlast   (m00_axis_tlast),
			.m_axis_tvalid  (m00_axis_tvalid),
			.m_axis_tready  (m00_axis_tready),
			.m_axis_tuser   (m00_axis_tuser)
		);

	// Add user logic here

	// User logic ends

	endmodule
