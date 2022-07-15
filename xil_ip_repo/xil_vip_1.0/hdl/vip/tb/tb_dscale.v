`timescale 1ns/1ns

module tb_dscale();

	reg xclk = 0;
	always #5 xclk <= ~xclk;
	
	reg rst_n = 0;
	initial begin
		rst_n <= 0;
		#100 rst_n <= 1;
		#(1480*760*10*1+1480*20*10) $stop;
	end
	
	localparam BITS     = 8;
	localparam WIDTH    = 1280;
	localparam HEIGHT   = 720;
	localparam BAYER    = 3;
	localparam IN_FILE  = "isp_nonr_1280x720_gray.bin";
	localparam OUT_FILE = "out_gray.bin";

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

	wire out_pclk;
	wire out_href;
	wire out_vsync;
	wire [BITS-1:0] out_data;

	vip_dscale 
		#(
			BITS, WIDTH, HEIGHT
		) 
		dscale_i0
		(
			.pclk(in_pclk),
			.rst_n(rst_n),
			.dscale_h(4'd1),
			.dscale_v(4'd1),
			.in_href(in_href),
			.in_vsync(in_vsync),
			.in_data(in_data),
			.out_pclk(out_pclk),
			.out_href(out_href),
			.out_vsync(out_vsync),
			.out_data(out_data)
		);

	tb_dvp_to_file
		#(
			.FILE(OUT_FILE),
			.BITS(BITS)
		)
		dvp_recv
		(
			.pclk(out_pclk),
			.rst_n(rst_n),
			.href(out_href),
			.vsync(out_vsync),
			.data(out_data)
		);
endmodule
