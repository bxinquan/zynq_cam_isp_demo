/*************************************************************************
    > File Name: isp_utils.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * ISP - Utils Library
 */


/* @Deprecated
module shift_register
#(
	parameter BITS = 8,
	parameter WIDTH = 480,
	parameter LINES = 3
)
(
	input                 clock,
	input                 clken,
	input [BITS-1:0]      shiftin,
	output reg [BITS-1:0] shiftout,
	output reg [BITS*LINES-1:0] tapsx
);
	localparam SIZE = WIDTH * LINES;
	reg [BITS-1:0] mem [SIZE-1:0];

	integer i;
	always @ (posedge clock) begin
		if (clken) begin
			shiftout <= mem[SIZE-1];
			for (i = 0; i < LINES; i = i + 1) begin
                tapsx[(BITS*i)+:BITS] <= mem[WIDTH*(i+1)-1];
			end
			for (i = SIZE-1; i > 0; i = i - 1) begin
				mem[i] <= mem[i-1];
			end
			mem[0] <= shiftin;
		end
	end
endmodule
*/

/* Simple Dual-Port RAM */
module simple_dp_ram
#(
	parameter DW = 8,
	parameter AW = 4,
	parameter SZ = 2**AW
)
(
	input          clk,
	input          wren,
	input [AW-1:0] wraddr,
	input [DW-1:0] data,
	input          rden,
	input [AW-1:0] rdaddr,
	output reg [DW-1:0] q
);

	reg [DW-1:0] mem [SZ-1:0];
	always @ (posedge clk) begin
		if (wren) begin
			mem[wraddr] <= data;
		end
	end
	always @ (posedge clk) begin
		if (rden) begin
			q <= mem[rdaddr];
		end
	end
endmodule

/* Shift Register based on Simple Dual-Port RAM */
module shift_register
#(
	parameter BITS = 8,
	parameter WIDTH = 480,
	parameter LINES = 3
)
(
	input                clock,
	input                clken,
	input  [BITS-1:0]    shiftin,
	output [BITS-1:0]    shiftout,
	output [BITS*LINES-1:0] tapsx
);

	localparam RAM_SZ = WIDTH - 1;
	localparam RAM_AW = clogb2(RAM_SZ);

	reg [RAM_AW-1:0] pos_r;
	wire [RAM_AW-1:0] pos = pos_r < RAM_SZ ? pos_r : (RAM_SZ[RAM_AW-1:0] - 1'b1);
	always @ (posedge clock) begin
		if (clken) begin
			if (pos_r < RAM_SZ - 1)
				pos_r <= pos_r + 1'b1;
			else
				pos_r <= 0;
		end
	end

	reg [BITS-1:0] in_r;
	always @ (posedge clock) begin
		if (clken) begin
			in_r <= shiftin;
		end
	end
	wire [BITS-1:0] line_out[LINES-1:0];
	generate
		genvar i;
		for (i = 0; i < LINES; i = i + 1) begin : gen_ram_inst
			simple_dp_ram #(BITS, RAM_AW, RAM_SZ) u_ram(clock, clken, pos, (i > 0 ? line_out[i-1] : in_r), clken, pos, line_out[i]);
		end
	endgenerate

	assign shiftout = line_out[LINES-1];
	generate
		genvar j;
		for (j = 0; j < LINES; j = j + 1) begin : gen_taps_assign
			assign tapsx[(BITS*j)+:BITS] = line_out[j];
		end
	endgenerate

	function integer clogb2;
	input integer depth;
	begin
		for (clogb2 = 0; depth > 0; clogb2 = clogb2 + 1)
			depth = depth >> 1;
	end
	endfunction
endmodule


// c = a / b
// d = a % b
module shift_div
#(
	parameter BITS = 32
)
(
	input clk,
	input rst_n,

	input enable,
	input [BITS-1:0] a, 
	input [BITS-1:0] b,

	output [BITS-1:0] c,
	output [BITS-1:0] d,
	output reg done
);

	reg[BITS-1:0] tempa;
	reg[BITS-1:0] tempb;
	reg[BITS*2-1:0] temp_a;
	reg[BITS*2-1:0] temp_b;

	reg [4:0] status /* synthesis syn_encoding="safe,onehot" */;
	localparam s_idle  = 5'b00001;
	localparam s_init  = 5'b00010;
	localparam s_calc1 = 5'b00100;
	localparam s_calc2 = 5'b01000;
	localparam s_done  = 5'b10000;

	reg[BITS-1:0] yshang;
	reg[BITS-1:0] yyushu;
	assign c = yshang;
	assign d = yyushu;

	reg [BITS-1:0] i;
 
	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			i <= 0;
			tempa <= 1;
			tempb <= 1;
			yshang <= 1;
			yyushu <= 1;
			done <= 0;
			status <= s_idle;
		end
		else begin
			case (status)
				s_idle: begin
					if (enable) begin
						i <= 0;
						tempa <= a;
						tempb <= b;
						yshang <= 1;
						yyushu <= 1;
						done <= 0;
						status <= s_init;
					end
					else begin
						i <= 0;
						tempa <= 1;
						tempb <= 1;
						yshang <= 1;
						yyushu <= 1;
						done <= 0;
						status <= s_idle;
					end
				end

				s_init: begin
					temp_a <= {{BITS{1'b0}},tempa};
					temp_b <= {tempb,{BITS{1'b0}}};
					status <= s_calc1;
				end

				s_calc1: begin
					if(i < BITS) begin
						temp_a <= {temp_a[BITS*2-2:0],1'b0};
						status <= s_calc2;
					end
					else begin
						status <= s_done;
					end
				end

				s_calc2: begin
					if(temp_a[BITS*2-1:BITS] >= tempb) begin
						temp_a <= temp_a - temp_b + 1'b1;
					end
					else begin
						temp_a <= temp_a;
					end
					i <= i + 1'b1;	
					status <= s_calc1;
				end

				s_done: begin
					yshang <= temp_a[BITS-1:0];
					yyushu <= temp_a[BITS*2-1:BITS];
					done <= 1'b1;
					status <= s_idle;
				end
				
				default: begin
					status <= s_idle;
				end
			endcase
		end
	end
endmodule

//image histogram statistics
module hist_ram
#(
	parameter ADDR_BITS = 8,
	parameter DATA_BITS = 24
)
(
	input in_clk,
	input in_rst_n,
	input in_valid,
	input in_flip_trigger,
	input [ADDR_BITS-1:0] in_addr,

	input out_clk,
	input out_en,
	input [ADDR_BITS-1:0] out_addr,
	output [DATA_BITS-1:0] out_data
);

	wire ram0_clk, ram0_wren, ram0_rden;
	wire [ADDR_BITS-1:0] ram0_wraddr, ram0_rdaddr;
	wire [DATA_BITS-1:0] ram0_data, ram0_q;
	simple_dp_ram #(DATA_BITS, ADDR_BITS) ram0(ram0_clk, ram0_wren, ram0_wraddr, ram0_data, ram0_rden, ram0_rdaddr, ram0_q);

	wire ram1_clk, ram1_wren, ram1_rden;
	wire [ADDR_BITS-1:0] ram1_wraddr, ram1_rdaddr;
	wire [DATA_BITS-1:0] ram1_data, ram1_q;
	simple_dp_ram #(DATA_BITS, ADDR_BITS) ram1(ram1_clk, ram1_wren, ram1_wraddr, ram1_data, ram1_rden, ram1_rdaddr, ram1_q);
	
	reg cur_ram;
	wire cur_clk, cur_wren, cur_rden;
	wire [ADDR_BITS-1:0] cur_wraddr, cur_rdaddr;
	wire [DATA_BITS-1:0] cur_data, cur_q;
	wire bak_clk, bak_wren, bak_rden;
	wire [ADDR_BITS-1:0] bak_wraddr, bak_rdaddr;
	wire [DATA_BITS-1:0] bak_data, bak_q;
	assign ram0_clk = !cur_ram ? cur_clk : bak_clk;
	assign ram0_wren = !cur_ram ? cur_wren : bak_wren;
	assign ram0_rden = !cur_ram ? cur_rden : bak_rden;
	assign ram0_wraddr = !cur_ram ? cur_wraddr : bak_wraddr;
	assign ram0_rdaddr = !cur_ram ? cur_rdaddr : bak_rdaddr;
	assign ram0_data = !cur_ram ? cur_data : bak_data;
	assign ram1_clk = cur_ram ? cur_clk : bak_clk;
	assign ram1_wren = cur_ram ? cur_wren : bak_wren;
	assign ram1_rden = cur_ram ? cur_rden : bak_rden;
	assign ram1_wraddr = cur_ram ? cur_wraddr : bak_wraddr;
	assign ram1_rdaddr = cur_ram ? cur_rdaddr : bak_rdaddr;
	assign ram1_data = cur_ram ? cur_data : bak_data;
	assign cur_q = !cur_ram ? ram0_q : ram1_q;
	assign bak_q = cur_ram ? ram0_q : ram1_q;
	
	reg prev_flip_trigger;
	always @ (posedge in_clk or negedge in_rst_n)
		if (!in_rst_n)
			prev_flip_trigger <= 0;
		else
			prev_flip_trigger <= in_flip_trigger;

	reg cur_clr_done;
	reg [ADDR_BITS-1:0] cur_clr_addr;
	always @ (posedge in_clk or negedge in_rst_n) begin
		if (!in_rst_n) begin
			cur_ram <= 0;
			cur_clr_done <= 0;
			cur_clr_addr <= 0;
		end
		else if (in_flip_trigger & ~prev_flip_trigger) begin
			cur_ram <= ~cur_ram;
			cur_clr_done <= 0;
			cur_clr_addr <= 0;
		end
		else if (!cur_clr_done) begin
			cur_ram <= cur_ram;
			cur_clr_addr <= cur_clr_addr + 1'b1;
			if (cur_clr_addr == {ADDR_BITS{1'b1}})
				cur_clr_done <= 1'b1;
			else
				cur_clr_done <= cur_clr_done;
		end
		else begin
			cur_ram <= cur_ram;
			cur_clr_done <= cur_clr_done;
			cur_clr_addr <= cur_clr_addr;
		end
	end

	assign cur_clk = in_clk;
	assign cur_rden = in_valid;
	assign cur_rdaddr = in_addr;

	reg cur_rden_r;
	always @ (posedge in_clk) cur_rden_r <= cur_rden;
	assign cur_wren = !cur_clr_done ? 1'b1 : cur_rden_r;

	reg [ADDR_BITS-1:0] cur_rdaddr_r;
	always @ (posedge in_clk) cur_rdaddr_r <= cur_rdaddr;
	assign cur_wraddr = !cur_clr_done ? cur_clr_addr : cur_rdaddr_r;

	reg [ADDR_BITS-1:0] cur_wraddr_r;
	reg [DATA_BITS-1:0] cur_data_r;
	always @ (posedge in_clk) cur_wraddr_r <= cur_wraddr;
	always @ (posedge in_clk) cur_data_r <= cur_data;
	assign cur_data = !cur_clr_done ? {DATA_BITS{1'b0}} : (cur_wraddr == cur_wraddr_r ? cur_data_r + 1'b1 : cur_q + 1'b1);

	assign bak_clk = out_clk;
	assign bak_rden = out_en;
	assign bak_rdaddr = out_addr;
	assign out_data = bak_q;
	assign bak_wren = 1'b0;
	assign bak_wraddr = 0;
	assign bak_data = 0;
endmodule
