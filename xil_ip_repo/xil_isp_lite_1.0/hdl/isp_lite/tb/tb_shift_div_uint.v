`timescale 1ns/1ns


module tb_shift_div_uint();

	reg xclk = 1;
	always #5 xclk <= ~xclk;
	
	reg reset_n = 0;

	localparam BITS = 22;
	
	reg  [BITS-1:0] num, den;
	wire [BITS-1:0] quo, rem;
	shift_div_uint #(BITS) div0(xclk, reset_n, num, den, quo, rem);
	

	initial begin
		reset_n <= 0;
		#100 reset_n <= 1;
		#1
		#10 num <=    9; den <= 4; //
		#10 num <=  439; den <= 28; //
		#10 num <= 4633; den <= 54; //
		#10 num <= 9452;    den <= 584; //
		#10 num <= 56794; den <= 155; //
		#10 num <= 99585; den <= 4474; //
		#10 num <= 2194303; den <= 56543; //
		#10 num <= 4194303; den <= 41; //
		#10 num <= 943; den <= 6775; //
		#10 num <= 92; den <= 0; //
		#10 num <= 452; den <= 1; //
		#10 num <= 4532; den <= 4194303; //
		#10 num <= 0; den <= 443; //
		#10 num <= 45542; den <= 4354; //
		#10 num <= 3422; den <= 577; //
		#10 num <= 7656765; den <= 57347; //
		#10 num <= 4345252; den <= 526; //
		#10 num <= 345622; den <= 34555; //
		#10 num <= 356422; den <= 94855; //
		#10 num <= 342562; den <= 33556; //
		#10 num <= 83342; den <= 5; //
		#10 num <= 893422; den <= 91; //
		#10 num <= 8322; den <= 53; //
		#10 num <=    9; den <= 4; //
		
		#500 $stop;
	end

endmodule
