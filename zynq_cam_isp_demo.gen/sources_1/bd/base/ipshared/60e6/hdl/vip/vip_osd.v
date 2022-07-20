/*************************************************************************
    > File Name: vip_crop.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2022 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * VIP - OSD (单色位图叠加)
 */

module vip_osd
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter OSD_RAM_ADDR_BITS = 9,
	parameter OSD_RAM_DATA_BITS = 32 //RAM总大小(即OSD图片最大像素数)为OSD_RAM_DATA_BITS*(1<<OSD_RAM_ADDR_BITS)
)
(
	input pclk,
	input rst_n,

	//osd位置(不能超过时序图像范围, 宽高乘积不能超过RAM总大小)
	input [clogb2(WIDTH)-1:0]  osd_x,
	input [clogb2(HEIGHT)-1:0] osd_y,
	input [clogb2(WIDTH)-1:0]  osd_w,
	input [clogb2(HEIGHT)-1:0] osd_h,
	//前景色,背景色
	input [BITS-1:0] color_fg,
	input [BITS-1:0] color_bg,

	input             in_href,
	input             in_vsync,
	input [BITS-1:0]  in_data,

	output            out_href,
	output            out_vsync,
	output [BITS-1:0] out_data,

	//单色位图RAM接口
	input                          osd_ram_clk,
	input                          osd_ram_wen,
	input                          osd_ram_ren,
	input  [OSD_RAM_ADDR_BITS-1:0] osd_ram_addr,
	input  [OSD_RAM_DATA_BITS-1:0] osd_ram_wdata,
	output [OSD_RAM_DATA_BITS-1:0] osd_ram_rdata
);

	reg href_t1, href_t2, href_t3, href_t4, href_t5, href_t6;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			href_t1 <= 0;
			href_t2 <= 0;
			href_t3 <= 0;
			href_t4 <= 0;
			href_t5 <= 0;
			href_t6 <= 0;
		end
		else begin
			href_t1 <= in_href;
			href_t2 <= href_t1;
			href_t3 <= href_t2;
			href_t4 <= href_t3;
			href_t5 <= href_t4;
			href_t6 <= href_t5;
		end
	end

	reg vsync_t1, vsync_t2, vsync_t3, vsync_t4, vsync_t5, vsync_t6;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			vsync_t1 <= 0;
			vsync_t2 <= 0;
			vsync_t3 <= 0;
			vsync_t4 <= 0;
			vsync_t5 <= 0;
			vsync_t6 <= 0;
		end
		else begin
			vsync_t1 <= in_vsync;
			vsync_t2 <= vsync_t1;
			vsync_t3 <= vsync_t2;
			vsync_t4 <= vsync_t3;
			vsync_t5 <= vsync_t4;
			vsync_t6 <= vsync_t5;
		end
	end

	reg [BITS-1:0] data_t1, data_t2, data_t3, data_t4, data_t5;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			data_t1 <= 0;
			data_t2 <= 0;
			data_t3 <= 0;
			data_t4 <= 0;
			data_t5 <= 0;
		end
		else begin
			data_t1 <= in_data;
			data_t2 <= data_t1;
			data_t3 <= data_t2;
			data_t4 <= data_t3;
			data_t5 <= data_t4;
		end
	end

	reg [clogb2(WIDTH)-1:0] pix_x_t1;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			pix_x_t1 <= 0;
		else if (in_href & ~href_t1)
			pix_x_t1 <= 0;
		else if (in_href)
			pix_x_t1 <= pix_x_t1 + 1'b1;
		else
			pix_x_t1 <= pix_x_t1;
	end

	reg [clogb2(HEIGHT)-1:0] pix_y_t1;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			pix_y_t1 <= 0;
		else if (vsync_t1 & ~in_vsync)
			pix_y_t1 <= 0;
		else if (href_t1 & ~in_href)
			pix_y_t1 <= pix_y_t1 + 1'b1;
		else
			pix_y_t1 <= pix_y_t1;
	end

	reg [clogb2(WIDTH)-1:0]  osd_x0_r, osd_x1_r;
	reg [clogb2(HEIGHT)-1:0] osd_y0_r, osd_y1_r;
	reg [BITS-1:0] color_fg_r, color_bg_r;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			osd_x0_r <= 0;
			osd_x1_r <= 0;
			osd_y0_r <= 0;
			osd_y1_r <= 0;
			color_fg_r <= 0;
			color_bg_r <= 0;
		end
		else if (vsync_t1 & ~in_vsync) begin
			osd_x0_r <= (osd_x < WIDTH) ? osd_x : 0;
			osd_x1_r <= (osd_x + osd_w <= WIDTH) ? (osd_x + osd_w) : 0;
			osd_y0_r <= (osd_y <= HEIGHT) ? osd_y : 0;
			osd_y1_r <= (osd_y + osd_h <= HEIGHT) ? (osd_y + osd_h) : 0;
			color_fg_r <= color_fg;
			color_bg_r <= color_bg;
		end
		else begin
			osd_x0_r <= osd_x0_r;
			osd_x1_r <= osd_x1_r;
			osd_y0_r <= osd_y0_r;
			osd_y1_r <= osd_y1_r;
			color_fg_r <= color_fg_r;
			color_bg_r <= color_bg_r;
		end
	end
	
	reg osd_on_t2, osd_on_t3, osd_on_t4, osd_on_t5;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			osd_on_t2 <= 0;
			osd_on_t3 <= 0;
			osd_on_t4 <= 0;
			osd_on_t5 <= 0;
		end
		else begin
			osd_on_t2 <= (pix_x_t1 >= osd_x0_r) && (pix_x_t1 < osd_x1_r) && (pix_y_t1 >= osd_y0_r) && (pix_y_t1 < osd_y1_r);
			osd_on_t3 <= osd_on_t2;
			osd_on_t4 <= osd_on_t3;
			osd_on_t5 <= osd_on_t4;
		end
	end

	reg [OSD_RAM_ADDR_BITS-1:0]         osd_raddr_t3;
	reg [clogb2(OSD_RAM_DATA_BITS-1)-1:0] osd_pix_idx_t3;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			osd_raddr_t3   <= 0;
			osd_pix_idx_t3 <= 0;
		end
		else if (~vsync_t2 & vsync_t3) begin
			osd_raddr_t3   <= {OSD_RAM_ADDR_BITS{1'b1}}; //置最大值,以便在下一个osd_on变为初始值0
			osd_pix_idx_t3 <= OSD_RAM_DATA_BITS-1'b1;	 //置最大值,以便在下一个osd_on变为初始值0
		end
		else if (href_t2 & osd_on_t2) begin
			if (osd_pix_idx_t3 == OSD_RAM_DATA_BITS-1'b1) begin
				osd_raddr_t3   <= osd_raddr_t3 + 1'b1;
				osd_pix_idx_t3 <= 0;
			end
			else begin
				osd_raddr_t3   <= osd_raddr_t3;
				osd_pix_idx_t3 <= osd_pix_idx_t3 + 1'b1;
			end
		end
		else begin
			osd_raddr_t3   <= osd_raddr_t3;
			osd_pix_idx_t3 <= osd_pix_idx_t3;
		end
	end
	
	wire [OSD_RAM_DATA_BITS-1:0] osd_pix_buf_t4;
	full_dp_ram #(OSD_RAM_DATA_BITS,OSD_RAM_ADDR_BITS) osd_ram (
			.clk_a(osd_ram_clk),
			.wen_a(osd_ram_wen),
			.ren_a(osd_ram_ren),
			.addr_a(osd_ram_addr),
			.wdata_a(osd_ram_wdata),
			.rdata_a(osd_ram_rdata),
			.clk_b(pclk),
			.wen_b(1'b0),
			.ren_b(href_t3),
			.addr_b(osd_raddr_t3),
			.wdata_b({OSD_RAM_DATA_BITS{1'b0}}),
			.rdata_b(osd_pix_buf_t4)
		);

	reg [clogb2(OSD_RAM_DATA_BITS)-1:0] osd_pix_idx_t4;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			osd_pix_idx_t4 <= 0;
		else
			osd_pix_idx_t4 <= osd_pix_idx_t3;
	end

	reg [OSD_RAM_DATA_BITS-1:0] osd_pix_buf_t5;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			osd_pix_buf_t5 <= 0;
		else if (osd_pix_idx_t4 == 0)
			osd_pix_buf_t5 <= osd_pix_buf_t4;
		else if (osd_on_t4 & href_t4)
			osd_pix_buf_t5 <= {osd_pix_buf_t5[OSD_RAM_DATA_BITS-2:0], 1'b0};
		else
			osd_pix_buf_t5 <= osd_pix_buf_t5;
	end
	
	reg [BITS-1:0] data_t6;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			data_t6 <= 0;
		else if (href_t5)
			if (osd_on_t5)
				data_t6 <= osd_pix_buf_t5[OSD_RAM_DATA_BITS-1] ? color_fg_r : color_bg_r;
			else
				data_t6 <= data_t5;
		else
			data_t6 <= 0;
	end

	assign out_href  = href_t6;
	assign out_vsync = vsync_t6;
	assign out_data  = data_t6;

	function integer clogb2;
	input integer depth;
	begin
		for (clogb2 = 0; depth > 0; clogb2 = clogb2 + 1)
			depth = depth >> 1;
	end
	endfunction
endmodule
