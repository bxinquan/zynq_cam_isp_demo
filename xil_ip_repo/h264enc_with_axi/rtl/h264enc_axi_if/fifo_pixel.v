`timescale 1ns / 1ps

module fifo_pixel (
	aclr,
	data,
	rdclk,
	rdreq,
	wrclk,
	wrreq,
	q,
	rdempty,
	wrusedw);

	input aclr;
	input	[63:0]  data;
	input	  rdclk;
	input	  rdreq;
	input	  wrclk;
	input	  wrreq;
	output	[63:0]  q;
	output	  rdempty;
	output   [7:0]  wrusedw;
	
	wire [63:0] q_pre;

	fifo_64_64_enc my_fifo_pixel(
		.rst (aclr),
		.wr_clk (wrclk),
		.rd_clk (rdclk),
		.din (data),
		.wr_en (wrreq),
		.rd_en (rdreq),
		.dout (q_pre),
		.empty (rdempty),
		.wr_data_count (wrusedw)
		);
	
	assign q = {q_pre[7:0],q_pre[15:8],q_pre[23:16],q_pre[31:24],q_pre[39:32],q_pre[47:40],q_pre[55:48],q_pre[63:56]};

endmodule
