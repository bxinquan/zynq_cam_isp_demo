`timescale 1ns/1ns

module tb_isp_vip();
	reg xclk = 0;
	always #5 xclk <= ~xclk;
	
	reg rst_n = 0;
	initial begin
		rst_n <= 0;
		#100 rst_n <= 1;
		#20_000_000 $stop;
	end
	
	localparam BITS     = 8;
	localparam WIDTH    = 960;
	localparam HEIGHT   = 544;
	localparam BAYER    = 3;
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
			.pclk(in_pclk),
			.rst_n(rst_n),
			.in_href(in_href),
			.in_vsync(in_vsync),
			.in_raw(in_data),
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

	wire out_pclk, out_href, out_vsync;
	wire [7:0] out_r, out_g, out_b;
	vip_top_wrapper
		#(
			.BITS(BITS),
			.WIDTH(WIDTH),
			.HEIGHT(HEIGHT)
		)
		vip_i0
		(
			.pclk(in_pclk),
			.rst_n(rst_n),
			.in_href(isp_href),
			.in_vsync(isp_vsync),
			.in_y(isp_y),
			.in_u(isp_u),
			.in_v(isp_v),
			.out_pclk(out_pclk),
			.out_href(out_href),
			.out_vsync(out_vsync),
			.out_r(out_r),
			.out_g(out_g),
			.out_b(out_b)
		);

	tb_dvp_to_file
		#(
			.FILE(OUT_FILE),
			.BITS(BITS*3)
		)
		dvp_recv
		(
			.pclk(out_pclk),
			.rst_n(rst_n),
			.href(out_href),
			.vsync(out_vsync),
			.data({out_r, out_g, out_b})
		);
endmodule
