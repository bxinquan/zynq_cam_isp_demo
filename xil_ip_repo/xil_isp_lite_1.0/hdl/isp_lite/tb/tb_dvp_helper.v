`timescale 1ns/1ns

module tb_file_to_dvp
#(
	parameter FILE     = "in.bin",
	parameter BITS     = 8, //支持8/16/24/32
	parameter H_FRONT  = 50,
	parameter H_PULSE  = 100,
	parameter H_BACK   = 50,
	parameter H_DISP   = 1280,
	parameter V_FRONT  = 10,
	parameter V_PULSE  = 20,
	parameter V_BACK   = 10,
	parameter V_DISP   = 960,
	parameter H_POL    = 0,
	parameter V_POL    = 1
)
(
	input             xclk,
	input             rst_n,
	output            pclk,
	output reg        href,
	output reg        hsync,
	output reg        vsync,
	output [BITS-1:0] data
);

	localparam H_TOTAL = H_FRONT + H_PULSE + H_BACK + H_DISP;
	localparam V_TOTAL = V_FRONT + V_PULSE + V_BACK + V_DISP;
	
	reg [BITS-1:0] buff[0:H_DISP*V_DISP-1];
	integer fd, i, c;
	initial begin
		fd = $fopen(FILE, "rb");
		for (i = 0; i < H_DISP*V_DISP; i = i + 1)
			for (c = 0; c < BITS/8; c = c + 1)
				$fscanf(fd, "%c", buff[i][(c*8)+:8]);
		$fclose(fd);
	end

	reg [15:0] pix_cnt;
	always @ (posedge xclk or negedge rst_n) begin
		if (!rst_n)
			pix_cnt <= 0;
		else if (pix_cnt < H_TOTAL - 1'b1)
			pix_cnt <= pix_cnt + 1'b1;
		else
			pix_cnt <= 0;
	end

	reg [15:0] line_cnt;
	always @ (posedge xclk or negedge rst_n) begin
		if (!rst_n)
			line_cnt <= 0;
		else if (pix_cnt == H_TOTAL - 1'b1) begin
			if (line_cnt < V_TOTAL - 1'b1)
				line_cnt <= line_cnt + 1'b1;
			else
				line_cnt <= 0;
		end
		else
			line_cnt <= line_cnt;
	end

	integer data_cnt;
	always @ (posedge xclk or negedge rst_n) begin
		if (!rst_n) begin
			data_cnt <= 0;
		end
		else if (line_cnt < V_FRONT + V_PULSE + V_BACK)
			data_cnt <= 0;
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK)
			data_cnt <= data_cnt;
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK + H_DISP)
			data_cnt <= data_cnt + 1;
		else
			data_cnt <= data_cnt;
	end

	reg [BITS-1:0] raw_data;
	always @ (posedge xclk or negedge rst_n) begin
		if (!rst_n)
			raw_data <= 0;
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK)
			raw_data <= 0;
		else if (pix_cnt < H_FRONT + H_PULSE + H_BACK + H_DISP)
			raw_data <= buff[data_cnt];
		else
			raw_data <= 0;
	end

	always @(posedge xclk or negedge rst_n) begin
		if (!rst_n) begin
			href <= 0;
			hsync <= ~H_POL;
			vsync <= ~V_POL;
		end
		else begin
			href <= pix_cnt >= H_FRONT + H_PULSE + H_BACK && line_cnt >= V_FRONT + V_PULSE + V_BACK;
			hsync <= (pix_cnt >= H_FRONT && pix_cnt < H_FRONT + H_PULSE) ? H_POL : ~H_POL;
			vsync <= (line_cnt >= V_FRONT && line_cnt < V_FRONT + V_PULSE) ? V_POL : ~V_POL;
		end
	end

	assign pclk = xclk;
	assign data = href ? raw_data : {BITS{1'b0}};	
endmodule

module tb_dvp_to_file
#(
	parameter FILE = "out.bin",
	parameter BITS = 8
)
(
	input pclk,
	input rst_n,
	input href,
	input vsync,
	input [BITS-1:0] data
);

	integer fd, c;
	always @(posedge pclk or negedge rst_n) begin
		if (!rst_n)
			fd = $fopen(FILE, "wb");
		else if (href)
			for (c = 0; c < BITS/8; c = c + 1)
				$fwrite(fd, "%c", data[(c*8)+:8]);
		else if (vsync)
			$fflush(fd);
	end
endmodule
