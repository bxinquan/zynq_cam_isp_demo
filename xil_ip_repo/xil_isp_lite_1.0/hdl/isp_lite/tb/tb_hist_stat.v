`timescale 1ns/1ns


module tb_hist_stat();

	reg clk = 0;
	always #5 clk <= ~clk;
	
	reg rst_n = 0;	
	wire in_clk = clk;
	reg in_valid = 0;
	reg in_vsync = 0;
	reg [4:0] in_addr = 0;
	wire out_clk = clk;
	reg out_en = 0;
	reg [4:0] out_addr = 0;
	wire [3:0] out_data;
	hist_stat #(5,4) hist_ints (in_clk, rst_n, in_valid, in_vsync, in_addr, out_clk, out_en, out_addr, out_data);

	initial begin : _init
		integer i;
		rst_n <= 0;
		#100 rst_n <= 1;
		#330; //hist clear 0
		
		in_valid <= 1;
		in_addr <= 0;
		for (i = 0; i < 320; i = i + 1) begin
			in_addr <= i/10;
			#10;
		end
		in_valid = 0;
		#20 in_vsync <= 1;
		#20 in_vsync <= 0;
		#20 ;
		out_en <= 1;
		out_addr <= 0;
		for (i = 0; i < 32; i = i + 1) begin
			#10 out_addr <= out_addr + 1;
		end
		out_en <= 0;

		in_valid <= 1;
		in_addr <= 0;
		for (i = 0; i < 320; i = i + 1) begin
			in_addr <= i%32;
			#10;
		end
		in_valid = 0;
		#20 in_vsync <= 1;
		#20 in_vsync <= 0;
		#20 ;
		out_en <= 1;
		out_addr <= 0;
		for (i = 0; i < 32; i = i + 1) begin
			#10 out_addr <= out_addr + 1;
		end
		out_en <= 0;

		
		#500 $stop;
	end

endmodule
