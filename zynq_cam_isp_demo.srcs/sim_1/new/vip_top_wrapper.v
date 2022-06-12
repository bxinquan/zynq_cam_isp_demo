/*************************************************************************
    > File Name: vip_top_wrapper.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/


module vip_top_wrapper
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
	
	output out_pclk,
	output out_href,
	output out_vsync,
	output [BITS-1:0] out_r,
	output [BITS-1:0] out_g,
	output [BITS-1:0] out_b
);

	localparam EN_HIST_EQU = 1'b0;
	localparam EN_SOBEL = 1'b0;
	localparam EN_YUV444TO422 = 1'b1;
	localparam EN_YUV2RGB = 1'b0;
	localparam EN_CROP = 1'b0;
	localparam EN_DSCALE = 1'b1;
	localparam EN_OSD = 1'b1;
	
	localparam CROP_X = 0;
	localparam CROP_Y = 0;
	localparam CROP_W = WIDTH;
	localparam CROP_H = HEIGHT;
	
	localparam EQU_MIN = 8'd40;
	localparam EQU_MAX = 8'd220;

	localparam DSCALE_SCALE = 4'd1;//1/2


	//OSD RAM配置口
	wire        osd_clk = pclk;
	reg         osd_wen;
	reg  [8:0]  osd_addr;
	wire [31:0] osd_wdata;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			osd_wen  <= 0;
			osd_addr <= 0;
		end
		else if (osd_addr != (32*4-1)) begin
			if (osd_wen) begin
				osd_wen  <= 1;
				osd_addr <= osd_addr + 1'b1;
			end
			else begin
				osd_wen  <= 1;
				osd_addr <= 0;
			end
		end
		else begin
			osd_wen  <= 0;
			osd_addr <= osd_addr;
		end
	end
	osd_lut #(9,32) lut0(osd_addr, osd_wdata);


	vip_top #(BITS, WIDTH, HEIGHT, 9, 32) vip_top_i0 (
			.pclk(pclk),
			.rst_n(rst_n),
			
			.in_href(in_href),
			.in_vsync(in_vsync),
			.in_y(in_y),
			.in_u(in_u),
			.in_v(in_v),
			
			.out_pclk(out_pclk),
			.out_href(out_href),
			.out_vsync(out_vsync),
			.out_r(out_r),
			.out_g(out_g),
			.out_b(out_b),

			.hist_equ_en(EN_HIST_EQU),
			.sobel_en(EN_SOBEL),
			.yuv444to422_en(EN_YUV444TO422),
			.yuv2rgb_en(EN_YUV2RGB),
			.crop_en(EN_CROP),
			.dscale_en(EN_DSCALE),
			.osd_en(EN_OSD),
			.equ_min(EQU_MIN), .equ_max(EQU_MAX),
			.yuv444to422_switch_uv(1'b0),
			.crop_x(CROP_X), .crop_y(CROP_Y), .crop_w(CROP_W), .crop_h(CROP_H),
			.dscale_h(DSCALE_SCALE), .dscale_v(DSCALE_SCALE),

			.osd_x(100), .osd_y(100), .osd_w(32*4), .osd_h(32),
			.osd_rgb_fg(24'hff0000), .osd_rgb_bg(24'h0000000),
			.osd_ram_clk(osd_clk),
			.osd_ram_wen(osd_wen),
			.osd_ram_ren(1'b0),
			.osd_ram_addr(osd_addr),
			.osd_ram_wdata(osd_wdata),
			.osd_ram_rdata()

		);
endmodule

module osd_lut
#(
	parameter INDEX_BITS = 8,
	parameter DATA_BITS = 32
)
(
	input [INDEX_BITS-1:0] index,
	output [DATA_BITS-1:0] value
);
	reg [DATA_BITS-1:0] v;
	assign value = v;
	
	always @ (*) begin
		case (index)
			0:   v = 32'h00000000;
			1:   v = 32'h00000000;
			2:   v = 32'h00000000;
			3:   v = 32'h00000000;
			4:   v = 32'h00000000;
			5:   v = 32'h00000000;
			6:   v = 32'h00000000;
			7:   v = 32'h00000000;
			8:   v = 32'h00002000;
			9:   v = 32'h00000000;
			10:  v = 32'h04000000;
			11:  v = 32'h00400000;
			12:  v = 32'h08001800;
			13:  v = 32'h00000080;
			14:  v = 32'h03000020;
			15:  v = 32'h00600008;
			16:  v = 32'h06001800;
			17:  v = 32'h000000C0;
			18:  v = 32'h0381FFF0;
			19:  v = 32'h0061FFFC;
			20:  v = 32'h03080818;
			21:  v = 32'h03FFFFE0;
			22:  v = 32'h01818060;
			23:  v = 32'h00600300;
			24:  v = 32'h038FFFFC;
			25:  v = 32'h00000000;
			26:  v = 32'h01818060;
			27:  v = 32'h06600600;
			28:  v = 32'h01080018;
			29:  v = 32'h00000000;
			30:  v = 32'h01218060;
			31:  v = 32'h06640400;
			32:  v = 32'h01380020;
			33:  v = 32'h00000000;
			34:  v = 32'h3FF18860;
			35:  v = 32'h067E0408;
			36:  v = 32'h00580020;
			37:  v = 32'h00000000;
			38:  v = 32'h00618E60;
			39:  v = 32'h06607FFC;
			40:  v = 32'h007000C0;
			41:  v = 32'h00000000;
			42:  v = 32'h00618C60;
			43:  v = 32'h06606018;
			44:  v = 32'h304FFFE0;
			45:  v = 32'h00000000;
			46:  v = 32'h00C18C60;
			47:  v = 32'h06606018;
			48:  v = 32'h18801000;
			49:  v = 32'h00000018;
			50:  v = 32'h00C18C60;
			51:  v = 32'h06626218;
			52:  v = 32'h1C801000;
			53:  v = 32'h3FFFFFFC;
			54:  v = 32'h01818C60;
			55:  v = 32'h3FFF6398;
			56:  v = 32'h0C801020;
			57:  v = 32'h00018000;
			58:  v = 32'h01818C60;
			59:  v = 32'h00406318;
			60:  v = 32'h0D0FFFF0;
			61:  v = 32'h00018000;
			62:  v = 32'h03818C60;
			63:  v = 32'h00606318;
			64:  v = 32'h010C1020;
			65:  v = 32'h00018000;
			66:  v = 32'h07E18860;
			67:  v = 32'h04406318;
			68:  v = 32'h010C1020;
			69:  v = 32'h00618800;
			70:  v = 32'h05B98860;
			71:  v = 32'h06406318;
			72:  v = 32'h030C1020;
			73:  v = 32'h00F18400;
			74:  v = 32'h09998C60;
			75:  v = 32'h06426318;
			76:  v = 32'h020FFFE0;
			77:  v = 32'h00C18300;
			78:  v = 32'h11981F00;
			79:  v = 32'h0C476318;
			80:  v = 32'h020C1020;
			81:  v = 32'h01C18180;
			82:  v = 32'h21881E00;
			83:  v = 32'h0C466318;
			84:  v = 32'h060C1020;
			85:  v = 32'h018180C0;
			86:  v = 32'h41801600;
			87:  v = 32'h184C6218;
			88:  v = 32'h3E0C1020;
			89:  v = 32'h030180E0;
			90:  v = 32'h01803600;
			91:  v = 32'h104C6218;
			92:  v = 32'h0E0FFFE0;
			93:  v = 32'h06018070;
			94:  v = 32'h01803600;
			95:  v = 32'h20180700;
			96:  v = 32'h0C0C8020;
			97:  v = 32'h0C018038;
			98:  v = 32'h01806604;
			99:  v = 32'h20300480;
			100: v = 32'h0C018600;
			101: v = 32'h08018018;
			102: v = 32'h0180C604;
			103: v = 32'h00600C60;
			104: v = 32'h0C03C1C0;
			105: v = 32'h10018010;
			106: v = 32'h01808604;
			107: v = 32'h00C01838;
			108: v = 32'h0C0700F0;
			109: v = 32'h20618000;
			110: v = 32'h0183060C;
			111: v = 32'h0180301C;
			112: v = 32'h0C0C0038;
			113: v = 32'h001F8000;
			114: v = 32'h018607FE;
			115: v = 32'h0600600C;
			116: v = 32'h0C300018;
			117: v = 32'h00070000;
			118: v = 32'h019803FC;
			119: v = 32'h08018004;
			120: v = 32'h00C00000;
			121: v = 32'h00020000;
			122: v = 32'h01200000;
			123: v = 32'h30060004;
			124: v = 32'h00000000;
			125: v = 32'h00000000;
			126: v = 32'h00000000;
			127: v = 32'h00000000;
			default: v = 32'h00000000;
		endcase
	end
endmodule
