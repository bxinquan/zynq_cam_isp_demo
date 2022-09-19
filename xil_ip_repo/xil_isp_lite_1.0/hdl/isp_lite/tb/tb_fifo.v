`timescale 1ns / 1ps

module tb_async_fifo();
	reg wclk = 0;
	reg rclk = 0;
	reg rst_n = 0;
	reg [7:0] wdata = 0;
	reg wen = 0;
	reg ren = 0;
	wire wfull, rempty;
	wire [7:0] rdata;

	always #5 wclk <= ~wclk; //100MHz
	always #4 rclk <= ~rclk; //125MHz

	initial begin
		#20 rst_n <= 1;
	end

	initial begin : _wr_block
		integer i;
		#40;
		wen <= 1;
		for (i = 0; i < 32; i = i + 1'b1)
			#10 wdata <= wdata + 1'b1;
		wen <= 0;
		#440
		wen <= 1;
		for (i = 0; i < 40; i = i + 1'b1)
			#10 wdata <= wdata + 1'b1;
		wen <= 0;
	end

	initial begin : _rd_block
		integer i;
		#200;
		ren <= 1;
		for (i = 0; i < 32; i = i + 1'b1)
			#8;
		ren <= 0;
		#800
		ren <= 1;
		for (i = 0; i < 40; i = i + 1'b1)
			#8;
		ren <= 0;

	end

	async_fifo #(8,5) fifo (wclk, rclk, rst_n, rst_n, wen, wdata, wfull, ren, rdata, rempty);

endmodule

module tb_sync_fifo();
	reg clk = 0;
	reg rst_n = 0;
	reg [7:0] wdata = 0;
	reg wen = 0;
	reg ren = 0;
	wire wfull, rempty;
	wire [7:0] rdata;

	always #5 clk <= ~clk; //100MHz

	initial begin
		#20 rst_n <= 1;
	end

	initial begin : _wr_block
		integer i;
		#40;
		wen <= 1;
		for (i = 0; i < 32; i = i + 1'b1)
			#10 wdata <= wdata + 1'b1;
		wen <= 0;
		#440
		wen <= 1;
		for (i = 0; i < 40; i = i + 1'b1)
			#10 wdata <= wdata + 1'b1;
		wen <= 0;
	end

	initial begin : _rd_block
		integer i;
		#200;
		ren <= 1;
		for (i = 0; i < 32; i = i + 1'b1)
			#10;
		ren <= 0;
		#680
		ren <= 1;
		for (i = 0; i < 40; i = i + 1'b1)
			#10;
		ren <= 0;

	end

	sync_fifo #(8,5) fifo (clk, rst_n, wen, wdata, wfull, ren, rdata, rempty);

endmodule
