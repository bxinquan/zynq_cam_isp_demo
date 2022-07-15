/*************************************************************************
    > File Name: isp_2dnr.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2022 21:50:04 GMT
 ************************************************************************/
`timescale 1ns / 1ps

/*
 * ISP - 2D Noise Reduce (灰度图像简易双边滤波)
 * 空域卷积核(7x7): 接口直接配置
 * 值域卷积核(7x7): 接口配置差值权重拟合曲线(9个坐标点),实时计算出卷积核
 * 参考: bilateralFilter_int.py
 */

module isp_2dnr
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter WEIGHT_BITS = 5
)
(
	input pclk,
	input rst_n,

	input [7*7*WEIGHT_BITS-1:0] space_kernel, //空域卷积核(7x7)
	input [9*BITS-1:0]          color_curve_x,//值域卷积核拟合曲线横坐标(9个坐标点)
	input [9*WEIGHT_BITS-1:0]   color_curve_y,//值域卷积核拟合曲线纵坐标(9个坐标点)

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_data,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_data
);

	wire [WEIGHT_BITS-1:0] space_weight_wire[7*7-1:0];
	wire [BITS-1:0]        color_curve_x_wire[9-1:0];
	wire [WEIGHT_BITS-1:0] color_curve_y_wire[9-1:0];
	generate
		genvar i, j;
		for (i = 0; i < 7; i = i + 1) begin
			for (j = 0; j < 7; j = j + 1) begin
				assign space_weight_wire[i*7+j] = space_kernel[WEIGHT_BITS*(i*7+j)+:WEIGHT_BITS];
			end
		end
		for (i = 0; i < 9; i = i + 1) begin
			assign color_curve_x_wire[i] = color_curve_x[(BITS*i)+:BITS];
		end
		for (i = 0; i < 9; i = i + 1) begin
			assign color_curve_y_wire[i] = color_curve_y[(WEIGHT_BITS*i)+:WEIGHT_BITS];
		end
	endgenerate

	wire [BITS-1:0] shiftout;
	wire [BITS-1:0] tap5x, tap4x, tap3x, tap2x, tap1x, tap0x;
	shift_register #(BITS, WIDTH, 6) linebuffer(pclk, in_href, in_data, shiftout, {tap5x, tap4x, tap3x, tap2x, tap1x, tap0x});

	//构造7x7像素区,记时刻t1
	reg [BITS-1:0] in_data_r;
	reg [BITS-1:0] p_t1[7*7-1:0];
	always @ (posedge pclk or negedge rst_n) begin : _blk_p_t1
		integer i, j;
		if (!rst_n) begin
			in_data_r <= 0;
			for (i = 0; i < 7*7; i = i + 1)
				p_t1[i] <= 0;
		end
		else begin
			in_data_r <= in_data;
			for (i = 0; i < 7; i = i + 1)
				for (j = 0; j < 6; j = j + 1)
					p_t1[i*7+j] <= p_t1[i*7+j+1];
			p_t1[0*7+6] <= tap5x; p_t1[1*7+6] <= tap4x; p_t1[2*7+6] <= tap3x; 
			p_t1[3*7+6] <= tap2x; p_t1[4*7+6] <= tap1x; p_t1[5*7+6] <= tap0x;
			p_t1[6*7+6] <= in_data_r;
		end
	end

	//打拍7x7像素区,记时刻t2,t3,t4
	reg [BITS-1:0] p_t2[7*7-1:0];
	reg [BITS-1:0] p_t3[7*7-1:0];
	reg [BITS-1:0] p_t4[7*7-1:0];
	always @ (posedge pclk or negedge rst_n) begin : _blk_p_t2
		integer i, j;
		if (!rst_n) begin
			for (i = 0; i < 7*7; i = i + 1) begin
				p_t2[i] <= 0;
				p_t3[i] <= 0;
				p_t4[i] <= 0;
			end
		end
		else begin
			for (i = 0; i < 7; i = i + 1)
				for (j = 0; j < 7; j = j + 1) begin
					p_t2[i*7+j] <= p_t1[i*7+j];
					p_t3[i*7+j] <= p_t2[i*7+j];
					p_t4[i*7+j] <= p_t3[i*7+j];
				end
		end
	end

	//构造7x7像素差值区,记时刻t2
	reg [BITS-1:0] diff_t2[7*7-1:0];
	always @ (posedge pclk or negedge rst_n) begin : _blk_diff_t2
		integer i, j;
		if (!rst_n) begin
			for (i = 0; i < 7*7; i = i + 1)
				diff_t2[i] <= 0;
		end
		else begin
			for (i = 0; i < 7; i = i + 1)
				for (j = 0; j < 7; j = j + 1)
					diff_t2[i*7+j] <= p_t1[3*7+3] < p_t1[i*7+j] ? p_t1[i*7+j] - p_t1[3*7+3] : p_t1[3*7+3] - p_t1[i*7+j];
		end
	end

	//构造7x7值域权重,记时刻t3
	reg  [WEIGHT_BITS-1:0] color_weight_t3[7*7-1:0];
	wire [WEIGHT_BITS-1:0] color_weight_max = space_weight_wire[3*7+3];
	always @ (posedge pclk or negedge rst_n) begin : _blk_color_weight_t3
		integer i, j;
		if (!rst_n) begin
			for (i = 0; i < 7*7; i = i + 1)
				color_weight_t3[i] <= 0;
		end
		else begin
			for (i = 0; i < 7; i = i + 1)
				for (j = 0; j < 7; j = j + 1)
					if (diff_t2[i*7+j] < color_curve_x_wire[0])
						color_weight_t3[i*7+j] <= color_weight_max;
					else if (diff_t2[i*7+j] < color_curve_x_wire[1])
						color_weight_t3[i*7+j] <= color_curve_y_wire[0];
					else if (diff_t2[i*7+j] < color_curve_x_wire[2])
						color_weight_t3[i*7+j] <= color_curve_y_wire[1];
					else if (diff_t2[i*7+j] < color_curve_x_wire[3])
						color_weight_t3[i*7+j] <= color_curve_y_wire[2];
					else if (diff_t2[i*7+j] < color_curve_x_wire[4])
						color_weight_t3[i*7+j] <= color_curve_y_wire[3];
					else if (diff_t2[i*7+j] < color_curve_x_wire[5])
						color_weight_t3[i*7+j] <= color_curve_y_wire[4];
					else if (diff_t2[i*7+j] < color_curve_x_wire[6])
						color_weight_t3[i*7+j] <= color_curve_y_wire[5];
					else if (diff_t2[i*7+j] < color_curve_x_wire[7])
						color_weight_t3[i*7+j] <= color_curve_y_wire[6];
					else if (diff_t2[i*7+j] < color_curve_x_wire[8])
						color_weight_t3[i*7+j] <= color_curve_y_wire[7];
					else
						color_weight_t3[i*7+j] <= color_curve_y_wire[8];
		end
	end

	//构造7x7总权重,记时刻t4
	reg [2*WEIGHT_BITS-1:0] weight_t4[7*7-1:0];
	always @ (posedge pclk or negedge rst_n) begin : _blk_weight_t4
		integer i, j;
		if (!rst_n) begin
			for (i = 0; i < 7*7; i = i + 1)
				weight_t4[i] <= 0;
		end
		else begin
			for (i = 0; i < 7; i = i + 1)
				for (j = 0; j < 7; j = j + 1)
					weight_t4[i*7+j] <= space_weight_wire[i*7+j] * color_weight_t3[i*7+j];
		end
	end

	//构造7x7总权重*像素值,记时刻t5
	reg [BITS+2*WEIGHT_BITS-1:0] value_mul_t5[7*7-1:0];
	always @ (posedge pclk or negedge rst_n) begin : _blk_value_mul_t5
		integer i, j;
		if (!rst_n) begin
			for (i = 0; i < 7*7; i = i + 1)
				value_mul_t5[i] <= 0;
		end
		else begin
			for (i = 0; i < 7; i = i + 1)
				for (j = 0; j < 7; j = j + 1)
					value_mul_t5[i*7+j] <= weight_t4[i*7+j] * p_t4[i*7+j];
		end
	end

	//构造总乘积之和step1,记时刻t6
	reg [BITS+2*WEIGHT_BITS+3-1:0] value_sum_x_t6[6:0];
	always @ (posedge pclk or negedge rst_n) begin : _blk_value_sum_x_t6
		integer i;
		if (!rst_n) begin
			for (i = 0; i < 7; i = i + 1)
				value_sum_x_t6[i] <= 0;
		end
		else begin
			for (i = 0; i < 7; i = i + 1)
				value_sum_x_t6[i] <= value_mul_t5[i*7+0] + value_mul_t5[i*7+1] + value_mul_t5[i*7+2] + value_mul_t5[i*7+3] + value_mul_t5[i*7+4] + value_mul_t5[i*7+5] + value_mul_t5[i*7+6];
		end
	end
	
	//构造总乘积之和step2,记时刻t7
	reg [BITS+2*WEIGHT_BITS+6-1:0] value_sum_t7;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			value_sum_t7 <= 0;
		end
		else begin
			value_sum_t7 <= value_sum_x_t6[0] + value_sum_x_t6[1] + value_sum_x_t6[2] + value_sum_x_t6[3] + value_sum_x_t6[4] + value_sum_x_t6[5] + value_sum_x_t6[6];
		end
	end

	//构造总权重和step1,记时刻t5
	reg [2*WEIGHT_BITS+3-1:0] weight_sum_x_t5[6:0];
	always @ (posedge pclk or negedge rst_n) begin : _blk_weight_sum_x_t5
		integer i;
		if (!rst_n) begin
			for (i = 0; i < 7; i = i + 1)
				weight_sum_x_t5[i] <= 0;
		end
		else begin
			for (i = 0; i < 7; i = i + 1)
				weight_sum_x_t5[i] <= weight_t4[i*7+0] + weight_t4[i*7+1] + weight_t4[i*7+2] + weight_t4[i*7+3] + weight_t4[i*7+4] + weight_t4[i*7+5] + weight_t4[i*7+6];
		end
	end

	//构造总权重和step2,记时刻t6, 打一拍记t7
	reg [2*WEIGHT_BITS+6-1:0] weight_sum_t6;
	reg [2*WEIGHT_BITS+6-1:0] weight_sum_t7;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			weight_sum_t6 <= 0;
			weight_sum_t7 <= 0;
		end
		else begin
			weight_sum_t6 <= weight_sum_x_t5[0] + weight_sum_x_t5[1] + weight_sum_x_t5[2] + weight_sum_x_t5[3] + weight_sum_x_t5[4] + weight_sum_x_t5[5] + weight_sum_x_t5[6];
			weight_sum_t7 <= weight_sum_t6;
		end
	end

	//除法流水线 总延迟拍数BITS+2*WEIGHT_BITS+6
	wire [BITS+2*WEIGHT_BITS+6-1:0] target_quo, target_rem;
	shift_div_uint #(BITS+2*WEIGHT_BITS+6) target_div (pclk, rst_n, value_sum_t7, {{BITS{1'b0}},weight_sum_t7}, target_quo, target_rem);

	reg [BITS-1:0] out_data_r;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			out_data_r <= 0;
		else
			out_data_r <= (|target_quo[BITS+2*WEIGHT_BITS+6-1:BITS]) ? {BITS{1'b1}} : target_quo[BITS-1:0];
	end

	localparam DLY_CLK = 11 + BITS+2*WEIGHT_BITS+6;
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
	assign out_data = out_href ? out_data_r : {BITS{1'b0}};

endmodule
