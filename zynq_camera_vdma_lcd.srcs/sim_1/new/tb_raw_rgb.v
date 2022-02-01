

`timescale 1ns/1ns


module tb_raw_rgb();

	reg xclk = 0;
	always #10 xclk <= ~xclk;
	
	reg reset_n = 0;
	initial begin
		reset_n <= 0;
		#100 reset_n <= 1;
		#40_000_000 $stop;
	end
	
	localparam BITS = 8;
	localparam WIDTH = 960;
	localparam HEIGHT = 544;
	localparam BAYER = 3;
	localparam RAW_FILE = "raw_bggr_960x544.bin";
	localparam OUT_FILE = "out_xrgb.bin";

	wire raw_pclk, raw_href, raw_vsync;
	wire [BITS-1:0] raw_raw;
	tb_dvp_raw_send
		#(
			.RAW_FILE(RAW_FILE)
		)
		raw_gen
		(
			.xclk(xclk),
			.reset_n(reset_n),
			.dvp_pclk(raw_pclk),
			.dvp_href(raw_href),
			.dvp_hsync(),
			.dvp_vsync(raw_vsync),
			.dvp_raw(raw_raw)
		);

	wire isp_href, isp_vsync;
	wire [BITS-1:0] isp_y, isp_u, isp_v;
	isp_top_wrapper
		#(
			.BITS(BITS),
			.WIDTH(WIDTH),
			.HEIGHT(HEIGHT),
			.BAYER(BAYER) //0:RGGB 1:GRBG 2:GBRG 3:BGGR
		)
		isp_i0
		(
			.pclk(raw_pclk),
			.rst_n(reset_n),
			.in_href(raw_href),
			.in_vsync(raw_vsync),
			.in_raw(raw_raw),
			.out_href(isp_href),
			.out_vsync(isp_vsync),
			.out_y(isp_y),
			.out_u(isp_u),
			.out_v(isp_v),
			.cmos_change_start(),
			.cmos_change_done(1'b1),
			.cmos_exposure(),
			.cmos_gain()
		);

	wire vip_pclk, vip_href, vip_vsync;
	wire [7:0] vip_r, vip_g, vip_b;
	vip_top_wrapper
		#(
			.BITS(BITS),
			.WIDTH(WIDTH),
			.HEIGHT(HEIGHT)
		)
		vip_i0
		(
			.pclk(raw_pclk),
			.rst_n(reset_n),
			.in_href(isp_href),
			.in_vsync(isp_vsync),
			.in_y(isp_y),
			.in_u(isp_u),
			.in_v(isp_v),
			.out_pclk(vip_pclk),
			.out_href(vip_href),
			.out_vsync(vip_vsync),
			.out_r(vip_r),
			.out_g(vip_g),
			.out_b(vip_b)
		);

	tb_dvp_xrgb_recv
		#(
			.BITS(BITS),
			.WIDTH(WIDTH/2),
			.HEIGHT(HEIGHT/2),
			.OUT_FILE(OUT_FILE)
		)
		recv_i0
		(
			.pclk(vip_pclk),
			.rst_n(reset_n),
			.in_href(vip_href),
			.in_vsync(vip_vsync),
			.in_r(vip_r),
			.in_g(vip_g),
			.in_b(vip_b)
		);
endmodule
