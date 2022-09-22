`timescale 1ns/1ns

module tb_video_to_axis();
	reg xclk = 0;
	always #5 xclk <= ~xclk;

	reg aclk = 0;
	always #3 aclk <= ~aclk;

	reg rst_n = 0;
	initial begin
		rst_n <= 0;
		#100 rst_n <= 1;
		#20_000_000 $stop;
	end
	
	localparam BITS     = 8;
	localparam WIDTH    = 960;
	localparam HEIGHT   = 544;
	localparam IN_FILE  = "raw_bggr_960x544.bin";
	localparam OUT_FILE = "out_rgb.bin";

	wire in_pclk, in_href, in_vsync;
	wire [BITS-1:0] in_data;
	tb_file_to_dvp
		#(
			.FILE(IN_FILE),
			.BITS(BITS),
			.H_DISP(WIDTH),
			.V_DISP(HEIGHT)
		)
		dvp_gen
		(
			.xclk(xclk),
			.rst_n(rst_n),
			.pclk(in_pclk),
			.href(in_href),
			.hsync(),
			.vsync(in_vsync),
			.data(in_data)
		);

	wire [BITS-1:0] tdata;
	wire tvalid, tlast, tuser;
	video_to_axis
		#(
			.DATA_BITS(BITS),
			.ADDR_BITS(5)
		)
		video_to_axis_inst
		(
			.vid_clk          (in_pclk),
			.vid_rstn         (rst_n),
			.vid_vsync        (in_vsync),
			.vid_active_video (in_href),
			.vid_data         (in_data),

			.aclk             (aclk),
			.aresetn          (rst_n),
			.m_axis_tdata     (tdata),
			.m_axis_tvalid    (tvalid),
			.m_axis_tready    (1'b1),
			.m_axis_tlast     (tlast),
			.m_axis_tuser     (tuser),

			.overflow         ()
		);
	tb_dvp_to_file
		#(
			.FILE(OUT_FILE),
			.BITS(BITS)
		)
		dvp_recv
		(
			.pclk(xclk),
			.rst_n(rst_n),
			.href(tvalid),
			.vsync(tlast),
			.data(tdata)
		);
endmodule
