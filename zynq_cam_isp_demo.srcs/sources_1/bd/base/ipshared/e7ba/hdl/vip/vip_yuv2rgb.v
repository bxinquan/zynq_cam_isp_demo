/*************************************************************************
    > File Name: vip_yuv2rgb.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * VIP - YUV convert RGB
 * BUG not support 10bit
 */

module vip_yuv2rgb
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960
)
(
	input pclk,
	input rst_n,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_y,
	input [BITS-1:0] in_u,
	input [BITS-1:0] in_v,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_r,
	output [BITS-1:0] out_g,
	output [BITS-1:0] out_b
);

	reg	signed [BITS-1:0]	in_y_reg;
	reg	signed [BITS-1:0]	in_u_reg; 
	reg	signed [BITS-1:0]	in_v_reg;
	always @ (posedge pclk or negedge rst_n) begin
		if(!rst_n) begin
			in_y_reg <= 0;
			in_u_reg <= 0;
			in_v_reg <= 0;
		end
		else begin
			in_y_reg <= in_y;
			in_u_reg <= in_u;
			in_v_reg <=	in_v;
		end
	end

	//--------------------------------------------
	/*********************************************
		R = 1.164(Y-16) + 1.596(Cr-128)
		G = 1.164(Y-16) - 0.391(Cb-128) - 0.813(Cr-128)
		B = 1.164(Y-16) + 2.018(Cb-128)
		->
		R = 1.164Y + 1.596Cr - 222.912
		G = 1.164Y - 0.391Cb - 0.813Cr + 135.488
		B = 1.164Y + 2.018Cb - 276.928
		->
		R << 9 = 596Y				+ 	817Cr	-	114131
		G << 9 = 596Y	-	200Cb	-	416Cr	+	69370
		B << 9 = 596Y	+	1033Cb				-	141787
	**********************************************/
	reg	signed [BITS-1+12:0]	img_Y_r1; 				//8 + 9 + 1 = 18Bit
	reg	signed [BITS-1+12:0]	img_Cb_r1, img_Cb_r2; 
	reg	signed [BITS-1+12:0]	img_Cr_r1, img_Cr_r2;
	always @ (posedge pclk or negedge rst_n) begin
		if(!rst_n) begin
			img_Y_r1 <= 0;
			img_Cb_r1 <= 0;	img_Cb_r2 <= 0;	
			img_Cr_r1 <= 0; img_Cr_r2 <= 0;
		end
		else begin
			img_Y_r1	<= 	in_y_reg * 12'd596;
			img_Cb_r1 	<= 	in_u_reg * 12'd200;	
			img_Cb_r2	<=	in_u_reg * 12'd1033;	
			img_Cr_r1 	<= 	in_v_reg * 12'd817;	
			img_Cr_r2	<=	in_v_reg * 12'd416;
		end
	end

	//--------------------------------------------
	/**********************************************
		R << 9 = 596Y				+ 	817Cr	-	114131
		G << 9 = 596Y	-	200Cb	-	416Cr	+	69370
		B << 9 = 596Y	+	1033Cb				-	141787
	**********************************************/
	reg	signed [BITS-1+12:0]	XOUT; 	
	reg	signed [BITS-1+12:0]	YOUT; 
	reg	signed [BITS-1+12:0]	ZOUT;
	always @ (posedge pclk or negedge rst_n) begin
		if(!rst_n) begin
			XOUT <= 0; 	
			YOUT <= 0; 
			ZOUT <= 0;
		end
		else begin
			XOUT <= (img_Y_r1 + img_Cr_r1 - (19'sd114131<<(BITS-8)))>>>9; 	
			YOUT <= (img_Y_r1 - img_Cb_r1 - img_Cr_r2 + (19'sd69370<<(BITS-8)))>>>9; 
			ZOUT <= (img_Y_r1 + img_Cb_r2 - (19'sd141787<<(BITS-8)))>>>9;
		end
	end

	//------------------------------------------
	//Divide 512 and get the result
	//{xx[19:11], xx[10:0]}
	reg	[BITS-1:0]	R, G, B;
	always @ (posedge pclk or negedge rst_n) begin
		if(!rst_n) begin
			R <= 0;
			G <= 0;
			B <= 0;
		end
		else begin
			R <= XOUT < 4'sd0 ? {BITS{1'b0}} : (XOUT > {BITS{1'b1}}) ? {BITS{1'b1}} : XOUT[BITS-1:0];
			G <= YOUT < 4'sd0 ? {BITS{1'b0}} : (YOUT > {BITS{1'b1}}) ? {BITS{1'b1}} : YOUT[BITS-1:0];
			B <= ZOUT < 4'sd0 ? {BITS{1'b0}} : (ZOUT > {BITS{1'b1}}) ? {BITS{1'b1}} : ZOUT[BITS-1:0];
		end
	end

	//------------------------------------------
	//lag n clocks signal sync  	 
	reg	[3:0]	vsync_r;
	reg	[3:0]	href_r;
	always @ (posedge pclk or negedge rst_n) begin
		if(!rst_n) begin
			vsync_r <= 0;
			href_r <= 0;
		end
		else begin
			vsync_r <= {vsync_r[2:0], in_vsync};
			href_r <= {href_r[2:0], in_href};
		end
	end

	assign out_vsync = vsync_r[3];
	assign out_href = href_r[3];
	assign out_r = out_href ? R : {BITS{1'b0}};
	assign out_g = out_href ? G : {BITS{1'b0}};
	assign out_b = out_href ? B : {BITS{1'b0}};
endmodule
