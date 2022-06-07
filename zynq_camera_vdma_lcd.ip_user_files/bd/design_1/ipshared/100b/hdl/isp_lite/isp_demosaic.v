/*************************************************************************
    > File Name: isp_demosaic.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * ISP - Demosaic (RAW -> RGB)
 */

/* @Deprecated 双线性插值
module isp_demosaic
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter BAYER = 0 //0:RGGB 1:GRBG 2:GBRG 3:BGGR
)
(
	input pclk,
	input rst_n,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_raw,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_r,
	output [BITS-1:0] out_g,
	output [BITS-1:0] out_b
);

	wire [BITS-1:0] shiftout;
	wire [BITS-1:0] tap1x, tap0x;
	shift_register #(BITS, WIDTH, 2) linebuffer(pclk, in_href, in_raw, shiftout, {tap1x, tap0x});
	
	reg [BITS-1:0] in_raw_r;
	reg [BITS-1:0] p11,p12,p13;
	reg [BITS-1:0] p21,p22,p23;
	reg [BITS-1:0] p31,p32,p33;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			in_raw_r <= 0;
			p13 <= 0; p12 <= 0; p11 <= 0;
			p23 <= 0; p22 <= 0; p21 <= 0;
			p33 <= 0; p32 <= 0; p31 <= 0;
		end
		else begin
			in_raw_r <= in_raw;
			p11 <= p12; p12 <= p13; p13 <= tap1x;
			p21 <= p22; p22 <= p23; p23 <= tap0x;
			p31 <= p32; p32 <= p33; p33 <= in_raw_r;
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
	wire odd_pix_dly = ~odd_pix;
	
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
	wire odd_line_dly = ~odd_line;

	wire [1:0] p22_fmt = BAYER[1:0] ^ {odd_line_dly, odd_pix_dly}; //pixel format 0:[R]GGB 1:R[G]GB 2:RG[G]B 3:RGG[B]

	reg [BITS-1:0] r_now, g_now, b_now;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			r_now <=  0;
			g_now <=  0;
			b_now <=  0;
		end
		else begin
			r_now <= raw2r(p22_fmt,p11,p12,p13,p21,p22,p23,p31,p32,p33);
			g_now <= raw2g(p22_fmt,p11,p12,p13,p21,p22,p23,p31,p32,p33);
			b_now <= raw2b(p22_fmt,p11,p12,p13,p21,p22,p23,p31,p32,p33);
		end
	end

	localparam DLY_CLK = 4;
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
	assign out_r = out_href ? r_now : {BITS{1'b0}};
	assign out_g = out_href ? g_now : {BITS{1'b0}};
	assign out_b = out_href ? b_now : {BITS{1'b0}};

	function [BITS-1:0] raw2r;
		input [1:0] format;//0:R 1:Gr 2:Gb 3:B
		input [BITS-1:0] p11,p12,p13;
		input [BITS-1:0] p21,p22,p23;
		input [BITS-1:0] p31,p32,p33;
		reg [BITS+1:0] r;
		begin
			case (format)
				2'b00: r = p22;
				2'b01: r = (p21 + p23) >> 1;
				2'b10: r = (p12 + p32) >> 1;
				2'b11: r = (p11 + p13 + p31 + p33) >> 2;
				default: r = {BITS{1'b0}};
			endcase
			raw2r = r > {BITS{1'b1}} ? {BITS{1'b1}} : r[BITS-1:0];
		end
	endfunction

	function [BITS-1:0] raw2g;
		input [1:0] format;//0:R 1:Gr 2:Gb 3:B
		input [BITS-1:0] p11,p12,p13;
		input [BITS-1:0] p21,p22,p23;
		input [BITS-1:0] p31,p32,p33;
		reg [BITS+1:0] g;
		begin
			case (format)
				2'b00: g = (p12 + p32 + p21 + p23) >> 2;
				2'b01: g = p22;
				2'b10: g = p22;
				2'b11: g = (p12 + p32 + p21 + p23) >> 2;
				default: g = {BITS{1'b0}};
			endcase
			raw2g = g > {BITS{1'b1}} ? {BITS{1'b1}} : g[BITS-1:0];
		end
	endfunction

	function [BITS-1:0] raw2b;
		input [1:0] format;//0:R 1:Gr 2:Gb 3:B
		input [BITS-1:0] p11,p12,p13;
		input [BITS-1:0] p21,p22,p23;
		input [BITS-1:0] p31,p32,p33;
		reg [BITS+1:0] b;
		begin
			case (format)
				2'b00: b = (p11 + p13 + p31 + p33) >> 2;
				2'b01: b = (p12 + p32) >> 1;
				2'b10: b = (p21 + p23) >> 1;
				2'b11: b = p22;
				default: b = {BITS{1'b0}};
			endcase
			raw2b = b > {BITS{1'b1}} ? {BITS{1'b1}} : b[BITS-1:0];
		end
	endfunction
endmodule
*/


/* G基于边缘方向 RB基于色差恒定
	B11,G12,B13,G14,B15,G16
	G21,R22,G23,R24,G25,R26
	B31,G32,B33,G34,B35,G36
	G41,R42,G43,R44,G45,R46
	B51,G52,B53,G54,B55,G56
	G61,R62,G63,R64,G65,R66
1. 基于B33计算出G33,R33
	a. 计算G33 边缘检测 在边缘方向上插值
		diffA = abs(G32 - G34) 水平方向差值
		diffB = abs(G23 - G43) 垂直方向差值
		G33 = (G32 + G34) / 2, 当(diffA < diffB) 垂直方向差值较大，取水平方向均值
		G33 = (G23 + G43) / 2, 当(diffA > diffB) 水平方向差值较大，取垂直方向均值
		G33 = (G32 + G34 + G23 + G43) / 4, 当(diffA == diffB) 差值一样大，取均值
	b. 计算R33 小平滑区域内 色差恒定理论
		1.a的方法得到G33，同理可计算出G22,G24,G42,G44
		R33 = G33 + (R22 + R24 + R42 + R44) / 4 - (G22 + G24 + G42 + G44) / 4
2. 基于G34计算出R34,B34
	a. 计算R34
		用1.a的方法可计算出G24,G44
		R34 = G34 + (R24 + R44) / 2 - (G24 + G44) / 2
	b. 计算B34
		用1.a的方法可计算出G33,G35
		B34 = G34 + (B33 + B35) / 2 - (G33 + G35) / 2
3. 基于G43计算出R43,B43 (同方法2)
4. 基于R44计算出G44,B44 (同方法1)
*/
module isp_demosaic
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter BAYER = 0 //0:RGGB 1:GRBG 2:GBRG 3:BGGR
)
(
	input pclk,
	input rst_n,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_raw,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_r,
	output [BITS-1:0] out_g,
	output [BITS-1:0] out_b
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
	wire odd_pix_sync_shift = odd_pix; //sync to shift_register
	
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
	wire odd_line_sync_shift = odd_line; //sync to shift_register

	wire [1:0] p33_fmt = BAYER[1:0] ^ {odd_line_sync_shift, odd_pix_sync_shift}; //pixel format 0:[R]GGB 1:R[G]GB 2:RG[G]B 3:RGG[B]
	localparam FMT_R = 2'd0;  //[R]GGB
	localparam FMT_Gr = 2'd1; //R[G]GB
	localparam FMT_Gb = 2'd2; //RG[G]B
	localparam FMT_B = 2'd3;  //RGG[B]

	//calc G stage 1
	reg [1:0] t1_fmt;
	reg [BITS*5-1:0] t1_g, t1_g1, t1_g2, t1_g3, t1_g4;
	reg [BITS-1:0] t1_rb, t1_rb1, t1_rb2, t1_rb3, t1_rb4;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			t1_fmt <= 0;
			t1_g<=0; t1_g1<=0; t1_g2<=0; t1_g3<=0; t1_g4<=0;
			t1_rb<=0; t1_rb1<=0; t1_rb2<=0; t1_rb3<=0; t1_rb4<=0;
		end
		else begin
			t1_fmt <= p33_fmt;
			case (p33_fmt)
				FMT_R, FMT_B: begin //[R]GGB, RGG[B]
					t1_rb  <= p33;
					t1_rb1 <= p22;
					t1_rb2 <= p24;
					t1_rb3 <= p42;
					t1_rb4 <= p44;
					t1_g  <= interpolate_G_on_R_stage1(p32, p34, p23, p43);
					t1_g1 <= interpolate_G_on_R_stage1(p21, p23, p12, p32);
					t1_g2 <= interpolate_G_on_R_stage1(p23, p25, p14, p34);
					t1_g3 <= interpolate_G_on_R_stage1(p41, p43, p32, p52);
					t1_g4 <= interpolate_G_on_R_stage1(p43, p45, p34, p54);
				end
				FMT_Gr, FMT_Gb: begin //R[G]GB RG[G]B
					t1_rb  <= 0;
					t1_rb1 <= p32;
					t1_rb2 <= p34;
					t1_rb3 <= p23;
					t1_rb4 <= p43;
					t1_g  <= p33;
					t1_g1 <= interpolate_G_on_R_stage1(p31, p33, p22, p42);
					t1_g2 <= interpolate_G_on_R_stage1(p33, p35, p24, p44);
					t1_g3 <= interpolate_G_on_R_stage1(p22, p24, p13, p33);
					t1_g4 <= interpolate_G_on_R_stage1(p42, p44, p33, p53);
				end
				default: begin
					t1_g<=0; t1_g1<=0; t1_g2<=0; t1_g3<=0; t1_g4<=0;
					t1_rb<=0; t1_rb1<=0; t1_rb2<=0; t1_rb3<=0; t1_rb4<=0;
				end
			endcase
		end
	end

	//calc G stage 2
	reg [1:0] t2_fmt;
	reg [BITS-1:0] t2_g, t2_g1, t2_g2, t2_g3, t2_g4;
	reg [BITS-1:0] t2_rb, t2_rb1, t2_rb2, t2_rb3, t2_rb4;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			t2_fmt <= 0;
			t2_g<=0; t2_g1<=0; t2_g2<=0; t2_g3<=0; t2_g4<=0;
			t2_rb<=0; t2_rb1<=0; t2_rb2<=0; t2_rb3<=0; t2_rb4<=0;
		end
		else begin
			t2_fmt <= t1_fmt;
			t2_rb  <= t1_rb;
			t2_rb1 <= t1_rb1;
			t2_rb2 <= t1_rb2;
			t2_rb3 <= t1_rb3;
			t2_rb4 <= t1_rb4;
			t2_g1 <= interpolate_G_on_R_stage2(t1_g1);
			t2_g2 <= interpolate_G_on_R_stage2(t1_g2);
			t2_g3 <= interpolate_G_on_R_stage2(t1_g3);
			t2_g4 <= interpolate_G_on_R_stage2(t1_g4);
			case (t1_fmt)
				FMT_R, FMT_B: t2_g <= interpolate_G_on_R_stage2(t1_g);
				default:      t2_g <= t1_g[BITS-1:0];
			endcase
		end
	end

	//calc R/G stage 1
	reg [1:0] t3_fmt;
	reg [BITS-1:0] t3_g;
	reg [BITS*2:0] t3_r, t3_b;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			t3_fmt <= 0;
			t3_g <= 0;
			t3_r <= 0; t3_b <= 0;
		end
		else begin
			t3_fmt <= t2_fmt;
			t3_g <= t2_g;
			case (t2_fmt)
				FMT_R: begin
					t3_r <= t2_rb;
					t3_b <= interpolate_R_on_B_stage1(t2_g, t2_g1, t2_g2, t2_g3, t2_g4, t2_rb1, t2_rb2, t2_rb3, t2_rb4);
				end
				FMT_Gr: begin
					t3_r <= interpolate_R_on_G_stage1(t2_g, t2_g1, t2_g2, t2_rb1, t2_rb2);
					t3_b <= interpolate_R_on_G_stage1(t2_g, t2_g3, t2_g4, t2_rb3, t2_rb4);
				end
				FMT_Gb: begin
					t3_r <= interpolate_R_on_G_stage1(t2_g, t2_g3, t2_g4, t2_rb3, t2_rb4);
					t3_b <= interpolate_R_on_G_stage1(t2_g, t2_g1, t2_g2, t2_rb1, t2_rb2);
				end
				FMT_B: begin
					t3_r <= interpolate_R_on_B_stage1(t2_g, t2_g1, t2_g2, t2_g3, t2_g4, t2_rb1, t2_rb2, t2_rb3, t2_rb4);
					t3_b <= t2_rb;
				end
				default: begin
					t3_r <= 0; t3_b <= 0;
				end
			endcase
		end
	end

	//calc R/B stage 2
	reg [BITS-1:0] r_now, g_now, b_now;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			r_now <= 0; g_now <= 0; b_now <= 0;
		end
		else begin
			g_now <= t3_g;
			case (t3_fmt)
				FMT_R: begin
					r_now <= t3_r[BITS-1:0];
					b_now <= interpolate_R_on_B_stage2(t3_b);
				end
				FMT_Gr: begin
					b_now <= interpolate_R_on_G_stage2(t3_b);
					r_now <= interpolate_R_on_G_stage2(t3_r);
				end
				FMT_Gb: begin
					b_now <= interpolate_R_on_G_stage2(t3_b);
					r_now <= interpolate_R_on_G_stage2(t3_r);
				end
				FMT_B: begin
					b_now <= t3_b[BITS-1:0];
					r_now <= interpolate_R_on_B_stage2(t3_r);
				end
				default: begin
					r_now <= 0; b_now <= 0;
				end
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
	assign out_r = out_href ? r_now : {BITS{1'b0}};
	assign out_g = out_href ? g_now : {BITS{1'b0}};
	assign out_b = out_href ? b_now : {BITS{1'b0}};

	function [BITS*5-1:0] interpolate_G_on_R_stage1;
		input [BITS-1:0] G_left, G_right, G_up, G_down;
		reg [BITS-1:0] diff_A, diff_B;
		reg [BITS+1:0] G_out0, G_out1, G_out2;
		begin
			diff_A = G_left > G_right ? G_left - G_right : G_right - G_left;
			diff_B = G_up > G_down ? G_up - G_down : G_down - G_up;
			G_out0 = {2'd0,G_left} + {2'd0,G_right} + {2'd0,G_up} + {2'd0,G_down};
			G_out1 = {1'd0,G_left,1'd0} + {1'd0,G_right,1'd0};
			G_out2 = {1'd0,G_up,1'd0} + {1'd0,G_down,1'd0};
			interpolate_G_on_R_stage1 = {diff_B, diff_A, G_out2[(BITS+1)-:BITS], G_out1[(BITS+1)-:BITS], G_out0[(BITS+1)-:BITS]};
		end
	endfunction

	function [BITS-1:0] interpolate_G_on_R_stage2;
		input [BITS*5-1:0] stage1_in;
		reg [BITS-1:0] diff_A, diff_B;
		reg [BITS+1:0] G_out0, G_out1, G_out2;
		begin
			G_out0 = stage1_in[(0*BITS)+:BITS];
			G_out1 = stage1_in[(1*BITS)+:BITS];
			G_out2 = stage1_in[(2*BITS)+:BITS];
			diff_A = stage1_in[(3*BITS)+:BITS];
			diff_B = stage1_in[(4*BITS)+:BITS];
			interpolate_G_on_R_stage2 = (diff_A == diff_B) ? G_out0 : ((diff_A < diff_B) ? G_out1 : G_out2);
		end
	endfunction

	function [BITS*2:0] interpolate_R_on_G_stage1;
		input [BITS-1:0] G, Gr1, Gr2, R1, R2;
		reg [BITS:0] R_sum, Gr_sum;
		reg [BITS:0] G_add_R_avg;
		begin
			R_sum = {1'd0,R1} + {1'd0,R2};
			Gr_sum = {1'd0,Gr1} + {1'd0,Gr2};
			G_add_R_avg = G + R_sum[BITS:1];
			interpolate_R_on_G_stage1 = {G_add_R_avg, Gr_sum[BITS:1]};
		end
	endfunction

	function [BITS-1:0] interpolate_R_on_G_stage2;
		input [BITS*2:0] stage1_in;
		reg [BITS:0] G_add_R_avg;
		reg [BITS-1:0] Gr_avg;
		reg [BITS:0] R_out;
		begin
			Gr_avg = stage1_in[0+:BITS];
			G_add_R_avg = stage1_in[BITS+:BITS+1];
			R_out = G_add_R_avg > Gr_avg ? G_add_R_avg - Gr_avg : 0;
			interpolate_R_on_G_stage2 = R_out[BITS] ? {BITS{1'b1}} : R_out[BITS-1:0];
		end
	endfunction

	function [BITS*2:0] interpolate_R_on_B_stage1;
		input [BITS-1:0] G, Gr1, Gr2, Gr3, Gr4, R1, R2, R3, R4;
		reg [BITS+1:0] R_sum, Gr_sum;
		reg [BITS:0] G_add_R_avg;
		begin
			R_sum = {2'd0,R1} + {2'd0,R2} + {2'd0,R3} + {2'd0,R4};
			Gr_sum = {2'd0,Gr1} + {2'd0,Gr2} + {2'd0,Gr3} + {2'd0,Gr4};
			G_add_R_avg = G + R_sum[BITS+1:2];
			interpolate_R_on_B_stage1 = {G_add_R_avg, Gr_sum[BITS+1:2]};
		end
	endfunction

	function [BITS-1:0] interpolate_R_on_B_stage2;
		input [BITS*2:0] stage1_in;
		reg [BITS:0] G_add_R_avg;
		reg [BITS-1:0] Gr_avg;
		reg [BITS:0] R_out;
		begin
			Gr_avg = stage1_in[0+:BITS];
			G_add_R_avg = stage1_in[BITS+:BITS+1];
			R_out = G_add_R_avg > Gr_avg ? G_add_R_avg - Gr_avg : 0;
			interpolate_R_on_B_stage2 = R_out[BITS] ? {BITS{1'b1}} : R_out[BITS-1:0];
		end
	endfunction
endmodule
