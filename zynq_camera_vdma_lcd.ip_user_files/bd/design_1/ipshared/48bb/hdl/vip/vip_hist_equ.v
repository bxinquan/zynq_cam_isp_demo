/*************************************************************************
    > File Name: vip_hist_equ.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

//histogram equalization 
//直方图均衡化的公式 Db = f(Da) = Dmax / A0 * sum(H(i)) {i=0...Da}
//H(i)为第 i 级灰度的像素个数，A0为图像的面积（即分辨率），Dmax为灰度最大值，即255
module vip_hist_equ
#(
	parameter BITS = 8,
	parameter WIDTH = 640,
	parameter HEIGHT = 480
)
(
	input pclk,
	input rst_n,

	input [BITS-1:0] equ_min,
	input [BITS-1:0] equ_max,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_data,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_data
);

	localparam PIX_TOTAL = WIDTH * HEIGHT;
	localparam HIST_BITS = clogb2(PIX_TOTAL);

	reg prev_vsync;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			prev_vsync <= 0;
		else
			prev_vsync <= in_vsync;
	end

	reg hist_sum_done;
	reg [BITS-1:0] hist_addr;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			hist_sum_done <= 0;
			hist_addr <= 0;
		end
		else if (in_vsync & ~prev_vsync) begin
			hist_sum_done <= 0;
			hist_addr <= 0;
		end
		else if (!hist_sum_done) begin
			hist_addr <= hist_addr + 1'b1;
			if (hist_addr == {BITS{1'b1}})
				hist_sum_done <= 1'b1;
			else
				hist_sum_done <= hist_sum_done;
		end
		else begin
			hist_sum_done <= hist_sum_done;
			hist_addr <= hist_addr;
		end
	end

	wire [HIST_BITS-1:0] hist_data;
	hist_ram #(BITS, HIST_BITS) hist_ram_data (
			.in_clk(pclk),
			.in_rst_n(rst_n),
			.in_valid(in_href),
			.in_flip_trigger(in_vsync),
			.in_addr(in_data),
			.out_clk(pclk),
			.out_en(~hist_sum_done),
			.out_addr(hist_addr),
			.out_data(hist_data)
		);

	reg hist_sum_runn_0;
	reg [BITS-1:0] hist_sum_addr_0;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			hist_sum_runn_0 <= 0;
			hist_sum_addr_0 <= 0;
		end
		else if (hist_sum_done) begin
			hist_sum_runn_0 <= 0;
			hist_sum_addr_0 <= 0;
		end
		else begin
			hist_sum_runn_0 <= 1;
			hist_sum_addr_0 <= hist_addr;
		end
	end

	reg hist_sum_runn_1;
	reg [BITS-1:0] hist_sum_addr_1;
	reg [HIST_BITS-1:0] hist_sum_data_1;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			hist_sum_runn_1 <= 0;
			hist_sum_addr_1 <= 0;
			hist_sum_data_1 <= 0;
		end
		else begin
			hist_sum_runn_1 <= hist_sum_runn_0;
			hist_sum_addr_1 <= hist_sum_addr_0;
			if (hist_sum_runn_0)
				hist_sum_data_1 <= hist_sum_data_1 + hist_data;
			else
				hist_sum_data_1 <= 0;
		end
	end

	reg hist_sum_runn_2;
	reg [BITS-1:0] hist_sum_addr_2;
	reg [HIST_BITS+BITS-1:0] hist_sum_data_2;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			hist_sum_runn_2 <= 0;
			hist_sum_addr_2 <= 0;
			hist_sum_data_2 <= 0;
		end
		else begin
			hist_sum_runn_2 <= hist_sum_runn_1;
			hist_sum_addr_2 <= hist_sum_addr_1;
			hist_sum_data_2 <= hist_sum_data_1 * (equ_max - equ_min);
		end
	end

	reg hist_sum_runn_3;
	reg [BITS-1:0] hist_sum_addr_3;
	reg [HIST_BITS+BITS-1:0] hist_sum_data_3;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			hist_sum_runn_3 <= 0;
			hist_sum_addr_3 <= 0;
			hist_sum_data_3 <= 0;
		end
		else begin
			hist_sum_runn_3 <= hist_sum_runn_2;
			hist_sum_addr_3 <= hist_sum_addr_2;
			hist_sum_data_3 <= hist_sum_data_2 / WIDTH[clogb2(WIDTH)-1:0]; //除法逻辑延迟太高,应换成支持多级流水除法IP(shift_div不支持流水线)
		end
	end

	reg hist_sum_runn_4;
	reg [BITS-1:0] hist_sum_addr_4;
	reg [HIST_BITS+BITS-1:0] hist_sum_data_4;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			hist_sum_runn_4 <= 0;
			hist_sum_addr_4 <= 0;
			hist_sum_data_4 <= 0;
		end
		else begin
			hist_sum_runn_4 <= hist_sum_runn_3;
			hist_sum_addr_4 <= hist_sum_addr_3;
			hist_sum_data_4 <= hist_sum_data_3 / HEIGHT[clogb2(HEIGHT)-1:0]; //除法逻辑延迟太高,应换成支持多级流水除法IP(shift_div不支持流水线)
		end
	end

	reg hist_sum_runn_5;
	reg [BITS-1:0] hist_sum_addr_5;
	reg [BITS-1:0] hist_sum_data_5;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			hist_sum_runn_5 <= 0;
			hist_sum_addr_5 <= 0;
			hist_sum_data_5 <= 0;
		end
		else begin
			hist_sum_runn_5 <= hist_sum_runn_4;
			hist_sum_addr_5 <= hist_sum_addr_4;
			hist_sum_data_5 <= hist_sum_data_4[BITS-1:0] + equ_min;
		end
	end

	wire [BITS-1:0] hist_q;
	simple_dp_ram #(BITS, BITS) hist_map_ram (
			.clk(pclk),
			.wren(hist_sum_runn_5),
			.wraddr(hist_sum_addr_5),
			.data(hist_sum_data_5),
			.rden(in_href),
			.rdaddr(in_data),
			.q(hist_q)
		);

	reg href_r, vsync_r;
	always @ (posedge pclk) {href_r, vsync_r} <= {in_href, in_vsync};
	assign {out_href, out_vsync} = {href_r, vsync_r};
	assign out_data = out_href ? hist_q : {BITS{1'b0}};

	function integer clogb2;
	input integer depth;
	begin
		for (clogb2 = 0; depth > 0; clogb2 = clogb2 + 1)
			depth = depth >> 1;
	end
	endfunction
endmodule
