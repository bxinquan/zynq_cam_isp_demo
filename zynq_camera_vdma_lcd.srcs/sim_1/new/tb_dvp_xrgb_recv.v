`timescale 1ns/1ns

module tb_dvp_xrgb_recv
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter OUT_FILE = "out_xrgb.bin"
)
(
	input pclk,
	input rst_n,
	
	input in_href,
	input in_vsync,
	input [BITS-1:0] in_r,
	input [BITS-1:0] in_g,
	input [BITS-1:0] in_b
);

	integer fd;
	always @(posedge pclk or negedge rst_n) begin
		if (!rst_n)
			fd = $fopen(OUT_FILE, "wb");
		else if (in_href)
			$fwrite(fd, "%c%c%c%c", 8'd0, in_r, in_g, in_b);
		else if (in_vsync)
			$fflush(fd);
	end

endmodule
