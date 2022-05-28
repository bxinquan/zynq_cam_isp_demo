`timescale 1ns/1ns

module tb_2dnr();

	reg xclk = 0;
	always #5 xclk <= ~xclk;
	
	reg rst_n = 0;
	initial begin
		rst_n <= 0;
		#100 rst_n <= 1;
		#12_000_000 $stop;
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

	reg [7*7*5-1:0]  space_kernel = {
			5'd28, 5'd29, 5'd29, 5'd30, 5'd29, 5'd29, 5'd28,
			5'd29, 5'd30, 5'd30, 5'd30, 5'd30, 5'd30, 5'd29,
			5'd29, 5'd30, 5'd31, 5'd31, 5'd31, 5'd30, 5'd29,
			5'd30, 5'd30, 5'd31, 5'd31, 5'd31, 5'd30, 5'd30,
			5'd29, 5'd30, 5'd31, 5'd31, 5'd31, 5'd30, 5'd29,
			5'd29, 5'd30, 5'd30, 5'd30, 5'd30, 5'd30, 5'd29,
			5'd28, 5'd29, 5'd29, 5'd30, 5'd29, 5'd29, 5'd28
		};
	reg [9*BITS-1:0] color_curve_x = {8'd30, 8'd30, 8'd23, 8'd20, 8'd17, 8'd13, 8'd10, 8'd6 , 8'd3 };
	reg [9*5-1:0]    color_curve_y = {5'd0 , 5'd1 , 5'd2 , 5'd4 , 5'd7 , 5'd13, 5'd19, 5'd26, 5'd30};

	wire out_pclk = in_pclk;
	wire out_href;
	wire out_vsync;
	wire [BITS-1:0] out_data;

	isp_2dnr
		#(
			.BITS(BITS),
			.WIDTH(WIDTH),
			.HEIGHT(HEIGHT),
			.WEIGHT_BITS(5)
		)
		nr2d_i0
		(
			.pclk(in_pclk),
			.rst_n(rst_n),
			.space_kernel(space_kernel),
			.color_curve_x(color_curve_x),
			.color_curve_y(color_curve_y),
			.in_href(in_href),
			.in_vsync(in_vsync),
			.in_data(in_data),
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
