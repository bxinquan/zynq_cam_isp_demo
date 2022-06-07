`timescale 1ns/1ns

module tb_demosaic();

	reg xclk = 0;
	always #5 xclk <= ~xclk;
	
	reg rst_n = 0;
	initial begin
		rst_n <= 0;
		#100 rst_n <= 1;
		#10_000_000 $stop;
	end
	
	localparam BITS     = 8;
	localparam WIDTH    = 512;
	localparam HEIGHT   = 768;
	localparam BAYER    = 0;
	localparam IN_FILE  = "raw_512x768_rggb.bin";
	localparam OUT_FILE = "out_rgb.bin";

	wire in_pclk, in_href, in_vsync;
	wire [BITS-1:0] in_raw;
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
			.data(in_raw)
		);

	wire out_pclk = in_pclk;
	wire out_href;
	wire out_vsync;
	wire [BITS-1:0] out_r, out_g, out_b;

	isp_demosaic
		#(
			.BITS(BITS),
			.WIDTH(WIDTH),
			.HEIGHT(HEIGHT),
			.BAYER(BAYER)
		)
		demosaic_i0
		(
			.pclk(in_pclk),
			.rst_n(rst_n),
			.in_href(in_href),
			.in_vsync(in_vsync),
			.in_raw(in_raw),
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
