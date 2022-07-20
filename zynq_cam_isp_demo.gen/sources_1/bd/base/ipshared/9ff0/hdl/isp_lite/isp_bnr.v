/*************************************************************************
    > File Name: isp_bnr.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * ISP - Noise Reduction
 * Gaussian Filter
 */

module isp_bnr
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter BAYER = 0 //0:RGGB 1:GRBG 2:GBRG 3:BGGR
)
(
	input pclk,
	input rst_n,

	input [3:0] nr_level, //0:NoNR 1-4:NRLevel

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_raw,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_raw
);

	wire [BITS-1:0] shiftout;
	wire [BITS-1:0] tap3x, tap2x, tap1x, tap0x;
	shift_register #(BITS, WIDTH, 4) linebuffer(pclk, in_href, in_raw, shiftout, {tap3x, tap2x, tap1x, tap0x});
	
	reg [BITS-1:0] in_raw_r;
	reg [BITS-1:0] p11,p12,p13,p14,p15;
	reg [BITS-1:0] p21,p22,p23,p24,p25;
	reg [BITS-1:0] p31,p32,p33,p34,p35;
	reg [BITS-1:0] p41,p42,p43,p44,p45;
	reg [BITS-1:0] p51,p52,p53,p54,p55;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			in_raw_r <= 0;
			p11 <= 0; p12 <= 0; p13 <= 0; p14 <= 0; p15 <= 0;
			p21 <= 0; p22 <= 0; p23 <= 0; p24 <= 0; p25 <= 0;
			p31 <= 0; p32 <= 0; p33 <= 0; p34 <= 0; p35 <= 0;
			p41 <= 0; p42 <= 0; p43 <= 0; p44 <= 0; p45 <= 0;
			p51 <= 0; p52 <= 0; p53 <= 0; p54 <= 0; p55 <= 0;
		end
		else begin
			in_raw_r <= in_raw;
			p11 <= p12; p12 <= p13; p13 <= p14; p14 <= p15; p15 <= tap3x;
			p21 <= p22; p22 <= p23; p23 <= p24; p24 <= p25; p25 <= tap2x;
			p31 <= p32; p32 <= p33; p33 <= p34; p34 <= p35; p35 <= tap1x;
			p41 <= p42; p42 <= p43; p43 <= p44; p44 <= p45; p45 <= tap0x;
			p51 <= p52; p52 <= p53; p53 <= p54; p54 <= p55; p55 <= in_raw_r;
		end
	end

	reg odd_pix;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			odd_pix <= 0;
		else if (!in_href)
			odd_pix <= 0;
		else
			odd_pix <= ~odd_pix;
	end
	wire odd_pix_sync_shift = odd_pix;
	
	reg prev_href;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) 
			prev_href <= 0;
		else
			prev_href <= in_href;
	end	
	
	reg odd_line;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) 
			odd_line <= 0;
		else if (in_vsync)
			odd_line <= 0;
		else if (prev_href & (~in_href))
			odd_line <= ~odd_line;
		else
			odd_line <= odd_line;
	end
	wire odd_line_sync_shift = odd_line;

	wire [1:0] p33_fmt = BAYER[1:0] ^ {odd_line_sync_shift, odd_pix_sync_shift}; //pixel format 0:[R]GGB 1:R[G]GB 2:RG[G]B 3:RGG[B]

	// NR Level 1
	// B,R gauss kernel
	// [0,  0,  1,  0,  0]
	// [0,  0,  0,  0,  0]
	// [1,  0, 12,  0,  1]
	// [0,  0,  0,  0,  0]
	// [0,  0,  1,  0,  0]
	// Gr,Gb gauss kernel
	// [0,  0,  0,  0,  0]
	// [0,  1,  0,  1,  0]
	// [0,  0, 12,  0,  0]
	// [0,  1,  0,  1,  0]
	// [0,  0,  0,  0,  0]
	// NR Level 2
	// B,R gauss kernel
	// [0, 0, 2, 0, 0]
	// [0, 0, 0, 0, 0]
	// [2, 0, 8, 0, 2]
	// [0, 0, 0, 0, 0]
	// [0, 0, 2, 0, 0]
	// Gr,Gb gauss kernel
	// [0, 0, 0, 0, 0]
	// [0, 2, 0, 2, 0]
	// [0, 0, 8, 0, 0]
	// [0, 2, 0, 2, 0]
	// [0, 0, 0, 0, 0]
	// NR Level 3
	// B,R gauss kernel
	// [1, 0, 2, 0, 1]
	// [0, 0, 0, 0, 0]
	// [2, 0, 4, 0, 2]
	// [0, 0, 0, 0, 0]
	// [1, 0, 2, 0, 1]
	// Gr,Gb gauss kernel
	// [0, 0, 1, 0, 0]
	// [0, 2, 0, 2, 0]
	// [1, 0, 4, 0, 1]
	// [0, 2, 0, 2, 0]
	// [0, 0, 1, 0, 0]
	// NR Level 4
	// B,R gauss kernel
	// [1.5,   0,   2,   0, 1.5]
	// [  0,   0,   0,   0,   0]
	// [  2,   0,   2,   0,   2]
	// [  0,   0,   0,   0,   0]
	// [1.5,   0,   2,   0, 1.5]
	// Gr,Gb gauss kernel
	// [  0,   0, 1.5,   0,   0]
	// [  0,   2,   0,   2,   0]
	// [1.5,   0,   2,   0, 1.5]
	// [  0,   2,   0,   2,   0]
	// [  0,   0, 1.5,   0,   0]
	reg [1:0] nr_fmt_1; //pixel format 0:[R]GGB 1:R[G]GB 2:RG[G]B 3:RGG[B]
	reg [BITS-1+4:0] nr0_rb_1; //NR0 R/B sum
	reg [BITS-1+4:0] nr0_gg_1; //NR0 Gr/Gb sum
	reg [BITS-1+4:0] nr1_rb_1, nr1_rb_2; //NR1 R/B sum
	reg [BITS-1+4:0] nr1_gg_1, nr1_gg_2; //NR1 Gr/Gb sum
	reg [BITS-1+4:0] nr2_rb_1; //NR2 R/B sum
	reg [BITS-1+4:0] nr2_gg_1; //NR2 Gr/Gb sum
	reg [BITS-1+4:0] nr3_rb_1, nr3_rb_2; //NR3 R/B sum
	reg [BITS-1+4:0] nr3_gg_1, nr3_gg_2; //NR3 Gr/Gb sum
	reg [BITS-1+4:0] nr4_rb_1, nr4_rb_2, nr4_rb_3; //NR4 R/B sum
	reg [BITS-1+4:0] nr4_gg_1, nr4_gg_2, nr4_gg_3; //NR4 Gr/Gb sum
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			nr_fmt_1 <= 0;
			nr0_rb_1 <= 0;
			nr0_gg_1 <= 0;
			nr1_rb_1 <= 0; nr1_rb_2 <= 0;
			nr1_gg_1 <= 0; nr1_gg_2 <= 0;
			nr2_rb_1 <= 0;
			nr2_gg_1 <= 0;
			nr3_rb_1 <= 0; nr3_rb_2 <= 0;
			nr3_gg_1 <= 0; nr3_gg_2 <= 0;
			nr4_rb_1 <= 0; nr4_rb_2 <= 0; nr4_rb_3 <= 0;
			nr4_gg_1 <= 0; nr4_gg_2 <= 0; nr4_gg_3 <= 0;
		end
		else begin
			nr_fmt_1 <= p33_fmt;
			nr0_rb_1 <= {p33,4'd0};
			nr0_gg_1 <= {p33,4'd0};
			nr1_rb_1 <= {1'd0,p33,3'd0} + {2'd0,p33,2'd0} + {4'd0,p13}; nr1_rb_2 <= {4'd0,p31} + {4'd0,p35} + {4'd0,p53};
			nr1_gg_1 <= {1'd0,p33,3'd0} + {2'd0,p33,2'd0} + {4'd0,p22}; nr1_gg_2 <= {4'd0,p24} + {4'd0,p42} + {4'd0,p44};
			nr2_rb_1 <= {1'd0,p33,3'd0} + {3'd0,p13,1'd0} + {3'd0,p31,1'd0} + {3'd0,p35,1'd0} + {3'd0,p53,1'd0};
			nr2_gg_1 <= {1'd0,p33,3'd0} + {3'd0,p22,1'd0} + {3'd0,p24,1'd0} + {3'd0,p42,1'd0} + {3'd0,p44,1'd0};
			nr3_rb_1 <= {2'd0,p33,2'd0} + {3'd0,p13,1'd0} + {3'd0,p31,1'd0} + {3'd0,p35,1'd0} + {3'd0,p53,1'd0}; nr3_rb_2 <= {4'd0,p11} + {4'd0,p15} + {4'd0,p51} + {4'd0,p55};
			nr3_gg_1 <= {2'd0,p33,2'd0} + {3'd0,p22,1'd0} + {3'd0,p24,1'd0} + {3'd0,p42,1'd0} + {3'd0,p44,1'd0}; nr3_gg_2 <= {4'd0,p13} + {4'd0,p31} + {4'd0,p35} + {4'd0,p53};
			nr4_rb_1 <= {3'd0,p33,1'd0} + {3'd0,p13,1'd0} + {3'd0,p31,1'd0} + {3'd0,p35,1'd0} + {3'd0,p53,1'd0}; nr4_rb_2 <= {4'd0,p11} + {4'd0,p15} + {4'd0,p51} + {4'd0,p55}; nr4_rb_3 <= {5'd0,p11[BITS-1:1]} + {5'd0,p15[BITS-1:1]} + {5'd0,p51[BITS-1:1]} + {5'd0,p55[BITS-1:1]};
			nr4_gg_1 <= {3'd0,p33,1'd0} + {3'd0,p22,1'd0} + {3'd0,p24,1'd0} + {3'd0,p42,1'd0} + {3'd0,p44,1'd0}; nr4_gg_2 <= {4'd0,p13} + {4'd0,p31} + {4'd0,p35} + {4'd0,p53}; nr4_gg_3 <= {5'd0,p13[BITS-1:1]} + {5'd0,p31[BITS-1:1]} + {5'd0,p35[BITS-1:1]} + {5'd0,p53[BITS-1:1]};
		end
	end

	reg [1:0] nr_fmt; //pixel format 0:[R]GGB 1:R[G]GB 2:RG[G]B 3:RGG[B]
	reg [BITS-1+4:0] nr0_rb; //NR0 R/B sum
	reg [BITS-1+4:0] nr0_gg; //NR0 Gr/Gb sum
	reg [BITS-1+4:0] nr1_rb; //NR1 R/B sum
	reg [BITS-1+4:0] nr1_gg; //NR1 Gr/Gb sum
	reg [BITS-1+4:0] nr2_rb; //NR2 R/B sum
	reg [BITS-1+4:0] nr2_gg; //NR2 Gr/Gb sum
	reg [BITS-1+4:0] nr3_rb; //NR3 R/B sum
	reg [BITS-1+4:0] nr3_gg; //NR3 Gr/Gb sum
	reg [BITS-1+4:0] nr4_rb; //NR4 R/B sum
	reg [BITS-1+4:0] nr4_gg; //NR4 Gr/Gb sum
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			nr_fmt <= 0;
			nr0_rb <= 0;
			nr0_gg <= 0;
			nr1_rb <= 0;
			nr1_gg <= 0;
			nr2_rb <= 0;
			nr2_gg <= 0;
			nr3_rb <= 0;
			nr3_gg <= 0;
			nr4_rb <= 0;
			nr4_gg <= 0;
		end
		else begin
			nr_fmt <= nr_fmt_1;
			nr0_rb <= nr0_rb_1;
			nr0_gg <= nr0_gg_1;
			nr1_rb <= nr1_rb_1 + nr1_rb_2;
			nr1_gg <= nr1_gg_1 + nr1_gg_2;
			nr2_rb <= nr2_rb_1;
			nr2_gg <= nr2_gg_1;
			nr3_rb <= nr3_rb_1 + nr3_rb_2;
			nr3_gg <= nr3_gg_1 + nr3_gg_2;
			nr4_rb <= nr4_rb_1 + nr4_rb_2 + nr4_rb_3;
			nr4_gg <= nr4_gg_1 + nr4_gg_2 + nr4_gg_3;
		end
	end

	reg [BITS-1:0] raw_now;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			raw_now <=  0;
		end
		else begin
			case ({nr_level,nr_fmt})
				{4'd0,2'b00},{4'd0,2'b11}: raw_now <= nr0_rb[(BITS-1+4)-:BITS];
				{4'd0,2'b01},{4'd0,2'b10}: raw_now <= nr0_gg[(BITS-1+4)-:BITS];
				{4'd1,2'b00},{4'd1,2'b11}: raw_now <= nr1_rb[(BITS-1+4)-:BITS];
				{4'd1,2'b01},{4'd1,2'b10}: raw_now <= nr1_gg[(BITS-1+4)-:BITS];
				{4'd2,2'b00},{4'd2,2'b11}: raw_now <= nr2_rb[(BITS-1+4)-:BITS];
				{4'd2,2'b01},{4'd2,2'b10}: raw_now <= nr2_gg[(BITS-1+4)-:BITS];
				{4'd3,2'b00},{4'd3,2'b11}: raw_now <= nr3_rb[(BITS-1+4)-:BITS];
				{4'd3,2'b01},{4'd3,2'b10}: raw_now <= nr3_gg[(BITS-1+4)-:BITS];
				{4'd4,2'b00},{4'd4,2'b11}: raw_now <= nr4_rb[(BITS-1+4)-:BITS];
				{4'd4,2'b01},{4'd4,2'b10}: raw_now <= nr4_gg[(BITS-1+4)-:BITS];
				default: raw_now <= nr0_rb[(BITS-1+4)-:BITS];
			endcase
		end
	end

	localparam DLY_CLK = 7;
	reg [DLY_CLK-1:0] href_dly;
	reg [DLY_CLK-1:0] vsync_dly;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			href_dly <= 0;
			vsync_dly <= 0;
		end
		else begin
			href_dly <= {href_dly[DLY_CLK-2:0], in_href};
			vsync_dly <= {vsync_dly[DLY_CLK-2:0], in_vsync};
		end
	end
	
	assign out_href = href_dly[DLY_CLK-1];
	assign out_vsync = vsync_dly[DLY_CLK-1];
	assign out_raw = out_href ? raw_now : {BITS{1'b0}};

endmodule
