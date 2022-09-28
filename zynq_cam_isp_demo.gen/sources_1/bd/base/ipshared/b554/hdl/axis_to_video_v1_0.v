
`timescale 1 ns / 1 ps

	module axis_to_video_v1_0 #
	(
		// Users to add parameters here
		parameter DATA_BITS = 8,
		parameter ADDR_BITS = 4,
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

		// User parameters ends
		// Do not modify the parameters beyond this line
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		input                  aclk,
		input                  aresetn,
		input  [DATA_BITS-1:0] s_axis_tdata,
		input                  s_axis_tvalid,
		output                 s_axis_tready,
		input                  s_axis_tlast,
		input                  s_axis_tuser,

		input                  vid_clk,
		input                  vid_rstn,
		output                 vid_hsync,
		output                 vid_vsync,
		output                 vid_active_video,
		output [DATA_BITS-1:0] vid_data,

		output                 locked,
		output                 underflow
	);
// Instantiation of Axi Bus Interface S00_AXI
	axis_to_video # ( 
		.DATA_BITS         (DATA_BITS),
		.ADDR_BITS         (ADDR_BITS),
		.H_FRONT           (H_FRONT),
		.H_PULSE           (H_PULSE),
		.H_BACK            (H_BACK),
		.H_DISP            (H_DISP),
		.V_FRONT           (V_FRONT),
		.V_PULSE           (V_PULSE),
		.V_BACK            (V_BACK),
		.V_DISP            (V_DISP),
		.H_POL             (H_POL),
		.V_POL             (V_POL)
	) axis_to_video_inst (
		.aclk              (aclk),
		.aresetn           (aresetn),
		.s_axis_tdata      (s_axis_tdata),
		.s_axis_tvalid     (s_axis_tvalid),
		.s_axis_tready     (s_axis_tready),
		.s_axis_tlast      (s_axis_tlast),
		.s_axis_tuser      (s_axis_tuser),

		.vid_clk           (vid_clk),
		.vid_rstn          (vid_rstn),
		.vid_hsync         (vid_hsync),
		.vid_vsync         (vid_vsync),
		.vid_active_video  (vid_active_video),
		.vid_data          (vid_data),

		.locked            (locked),
		.underflow         (underflow)
	);

	// Add user logic here

	// User logic ends

	endmodule
