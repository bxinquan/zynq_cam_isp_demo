`timescale 1ns/1ns

module tb_gamma();

	reg xclk = 0;
	always #5 xclk <= ~xclk;
	
	reg rst_n = 0;
	initial begin
		rst_n <= 0;
		#100 rst_n <= 1;
		#20_000_000 $stop;
	end
	
	localparam BITS     = 8;
	localparam WIDTH    = 1280;
	localparam HEIGHT   = 720;
	localparam BAYER    = 3;
	localparam IN_FILE  = "isp_nonr_1280x720_gray.bin";
	localparam OUT_FILE = "out_gray.bin";

	wire in_pclk, in_href, in_vsync;
	wire [BITS-1:0] in_data;
	tb_file_to_dvp
		#(
			.FILE(IN_FILE),
			.BITS(BITS),
			.H_DISP(WIDTH),
			.V_DISP(HEIGHT)
		)
		dvp_gen
		(
			.xclk(xclk),
			.rst_n(rst_n),
			.pclk(in_pclk),
			.href(in_href),
			.hsync(),
			.vsync(in_vsync),
			.data(in_data)
		);

	wire out_pclk = in_pclk;
	wire out_href;
	wire out_vsync;
	wire [BITS-1:0] out_data;


	//Gamma映射表RAM配置口
	reg             cfg_table_clk = 0;
	reg             cfg_table_wen = 0;
	reg  [BITS-1:0] cfg_table_addr = 0;
	wire [BITS-1:0] cfg_table_wdata;
	
	always #2 cfg_table_clk <= ~cfg_table_clk;
	always #4 cfg_table_addr <= cfg_table_wen ? cfg_table_addr + 1'b1 : cfg_table_addr;
	initial begin
		#200     cfg_table_wen <= 1;
		#(4*256) cfg_table_wen <= 0;
	end

	gamma_lut_y #(BITS) lut0(cfg_table_addr, cfg_table_wdata);
	isp_gamma #(BITS, WIDTH, HEIGHT, BITS) gamma_i0 (in_pclk, rst_n, in_href, in_vsync, in_data, out_href, out_vsync, out_data,
													cfg_table_clk, cfg_table_wen, 1'b0, cfg_table_addr, cfg_table_wdata, );

	tb_dvp_to_file
		#(
			.FILE(OUT_FILE),
			.BITS(BITS)
		)
		dvp_recv
		(
			.pclk(out_pclk),
			.rst_n(rst_n),
			.href(out_href),
			.vsync(out_vsync),
			.data(out_data)
		);
endmodule


module gamma_lut_y
#(
	parameter BITS = 8
)
(
	input [BITS-1:0] index,
	output [BITS-1:0] value
);
	reg [7:0] v;
	assign value = BITS > 8 ? {v, {BITS-8{1'b0}}} : v[7-:BITS];
	
	//gamma = 0.7
	always @ (*) begin
		case (index[(BITS-1)-:8])
			8'd0   : v = 8'd0;
			8'd1   : v = 8'd20;
			8'd2   : v = 8'd28;
			8'd3   : v = 8'd33;
			8'd4   : v = 8'd38;
			8'd5   : v = 8'd42;
			8'd6   : v = 8'd46;
			8'd7   : v = 8'd49;
			8'd8   : v = 8'd52;
			8'd9   : v = 8'd55;
			8'd10  : v = 8'd58;
			8'd11  : v = 8'd61;
			8'd12  : v = 8'd63;
			8'd13  : v = 8'd65;
			8'd14  : v = 8'd68;
			8'd15  : v = 8'd70;
			8'd16  : v = 8'd72;
			8'd17  : v = 8'd74;
			8'd18  : v = 8'd76;
			8'd19  : v = 8'd78;
			8'd20  : v = 8'd80;
			8'd21  : v = 8'd81;
			8'd22  : v = 8'd83;
			8'd23  : v = 8'd85;
			8'd24  : v = 8'd87;
			8'd25  : v = 8'd88;
			8'd26  : v = 8'd90;
			8'd27  : v = 8'd91;
			8'd28  : v = 8'd93;
			8'd29  : v = 8'd94;
			8'd30  : v = 8'd96;
			8'd31  : v = 8'd97;
			8'd32  : v = 8'd99;
			8'd33  : v = 8'd100;
			8'd34  : v = 8'd102;
			8'd35  : v = 8'd103;
			8'd36  : v = 8'd104;
			8'd37  : v = 8'd106;
			8'd38  : v = 8'd107;
			8'd39  : v = 8'd108;
			8'd40  : v = 8'd109;
			8'd41  : v = 8'd111;
			8'd42  : v = 8'd112;
			8'd43  : v = 8'd113;
			8'd44  : v = 8'd114;
			8'd45  : v = 8'd115;
			8'd46  : v = 8'd117;
			8'd47  : v = 8'd118;
			8'd48  : v = 8'd119;
			8'd49  : v = 8'd120;
			8'd50  : v = 8'd121;
			8'd51  : v = 8'd122;
			8'd52  : v = 8'd123;
			8'd53  : v = 8'd124;
			8'd54  : v = 8'd125;
			8'd55  : v = 8'd126;
			8'd56  : v = 8'd128;
			8'd57  : v = 8'd129;
			8'd58  : v = 8'd130;
			8'd59  : v = 8'd131;
			8'd60  : v = 8'd132;
			8'd61  : v = 8'd133;
			8'd62  : v = 8'd134;
			8'd63  : v = 8'd135;
			8'd64  : v = 8'd136;
			8'd65  : v = 8'd136;
			8'd66  : v = 8'd137;
			8'd67  : v = 8'd138;
			8'd68  : v = 8'd139;
			8'd69  : v = 8'd140;
			8'd70  : v = 8'd141;
			8'd71  : v = 8'd142;
			8'd72  : v = 8'd143;
			8'd73  : v = 8'd144;
			8'd74  : v = 8'd145;
			8'd75  : v = 8'd146;
			8'd76  : v = 8'd147;
			8'd77  : v = 8'd147;
			8'd78  : v = 8'd148;
			8'd79  : v = 8'd149;
			8'd80  : v = 8'd150;
			8'd81  : v = 8'd151;
			8'd82  : v = 8'd152;
			8'd83  : v = 8'd153;
			8'd84  : v = 8'd153;
			8'd85  : v = 8'd154;
			8'd86  : v = 8'd155;
			8'd87  : v = 8'd156;
			8'd88  : v = 8'd157;
			8'd89  : v = 8'd158;
			8'd90  : v = 8'd158;
			8'd91  : v = 8'd159;
			8'd92  : v = 8'd160;
			8'd93  : v = 8'd161;
			8'd94  : v = 8'd162;
			8'd95  : v = 8'd162;
			8'd96  : v = 8'd163;
			8'd97  : v = 8'd164;
			8'd98  : v = 8'd165;
			8'd99  : v = 8'd165;
			8'd100 : v = 8'd166;
			8'd101 : v = 8'd167;
			8'd102 : v = 8'd168;
			8'd103 : v = 8'd168;
			8'd104 : v = 8'd169;
			8'd105 : v = 8'd170;
			8'd106 : v = 8'd171;
			8'd107 : v = 8'd171;
			8'd108 : v = 8'd172;
			8'd109 : v = 8'd173;
			8'd110 : v = 8'd174;
			8'd111 : v = 8'd174;
			8'd112 : v = 8'd175;
			8'd113 : v = 8'd176;
			8'd114 : v = 8'd176;
			8'd115 : v = 8'd177;
			8'd116 : v = 8'd178;
			8'd117 : v = 8'd178;
			8'd118 : v = 8'd179;
			8'd119 : v = 8'd180;
			8'd120 : v = 8'd181;
			8'd121 : v = 8'd181;
			8'd122 : v = 8'd182;
			8'd123 : v = 8'd183;
			8'd124 : v = 8'd183;
			8'd125 : v = 8'd184;
			8'd126 : v = 8'd185;
			8'd127 : v = 8'd185;
			8'd128 : v = 8'd186;
			8'd129 : v = 8'd187;
			8'd130 : v = 8'd187;
			8'd131 : v = 8'd188;
			8'd132 : v = 8'd189;
			8'd133 : v = 8'd189;
			8'd134 : v = 8'd190;
			8'd135 : v = 8'd190;
			8'd136 : v = 8'd191;
			8'd137 : v = 8'd192;
			8'd138 : v = 8'd192;
			8'd139 : v = 8'd193;
			8'd140 : v = 8'd194;
			8'd141 : v = 8'd194;
			8'd142 : v = 8'd195;
			8'd143 : v = 8'd196;
			8'd144 : v = 8'd196;
			8'd145 : v = 8'd197;
			8'd146 : v = 8'd197;
			8'd147 : v = 8'd198;
			8'd148 : v = 8'd199;
			8'd149 : v = 8'd199;
			8'd150 : v = 8'd200;
			8'd151 : v = 8'd200;
			8'd152 : v = 8'd201;
			8'd153 : v = 8'd202;
			8'd154 : v = 8'd202;
			8'd155 : v = 8'd203;
			8'd156 : v = 8'd203;
			8'd157 : v = 8'd204;
			8'd158 : v = 8'd205;
			8'd159 : v = 8'd205;
			8'd160 : v = 8'd206;
			8'd161 : v = 8'd206;
			8'd162 : v = 8'd207;
			8'd163 : v = 8'd208;
			8'd164 : v = 8'd208;
			8'd165 : v = 8'd209;
			8'd166 : v = 8'd209;
			8'd167 : v = 8'd210;
			8'd168 : v = 8'd210;
			8'd169 : v = 8'd211;
			8'd170 : v = 8'd212;
			8'd171 : v = 8'd212;
			8'd172 : v = 8'd213;
			8'd173 : v = 8'd213;
			8'd174 : v = 8'd214;
			8'd175 : v = 8'd214;
			8'd176 : v = 8'd215;
			8'd177 : v = 8'd216;
			8'd178 : v = 8'd216;
			8'd179 : v = 8'd217;
			8'd180 : v = 8'd217;
			8'd181 : v = 8'd218;
			8'd182 : v = 8'd218;
			8'd183 : v = 8'd219;
			8'd184 : v = 8'd219;
			8'd185 : v = 8'd220;
			8'd186 : v = 8'd220;
			8'd187 : v = 8'd221;
			8'd188 : v = 8'd222;
			8'd189 : v = 8'd222;
			8'd190 : v = 8'd223;
			8'd191 : v = 8'd223;
			8'd192 : v = 8'd224;
			8'd193 : v = 8'd224;
			8'd194 : v = 8'd225;
			8'd195 : v = 8'd225;
			8'd196 : v = 8'd226;
			8'd197 : v = 8'd226;
			8'd198 : v = 8'd227;
			8'd199 : v = 8'd227;
			8'd200 : v = 8'd228;
			8'd201 : v = 8'd228;
			8'd202 : v = 8'd229;
			8'd203 : v = 8'd229;
			8'd204 : v = 8'd230;
			8'd205 : v = 8'd230;
			8'd206 : v = 8'd231;
			8'd207 : v = 8'd231;
			8'd208 : v = 8'd232;
			8'd209 : v = 8'd232;
			8'd210 : v = 8'd233;
			8'd211 : v = 8'd233;
			8'd212 : v = 8'd234;
			8'd213 : v = 8'd234;
			8'd214 : v = 8'd235;
			8'd215 : v = 8'd235;
			8'd216 : v = 8'd236;
			8'd217 : v = 8'd236;
			8'd218 : v = 8'd237;
			8'd219 : v = 8'd237;
			8'd220 : v = 8'd238;
			8'd221 : v = 8'd238;
			8'd222 : v = 8'd239;
			8'd223 : v = 8'd239;
			8'd224 : v = 8'd240;
			8'd225 : v = 8'd240;
			8'd226 : v = 8'd241;
			8'd227 : v = 8'd241;
			8'd228 : v = 8'd242;
			8'd229 : v = 8'd242;
			8'd230 : v = 8'd243;
			8'd231 : v = 8'd243;
			8'd232 : v = 8'd244;
			8'd233 : v = 8'd244;
			8'd234 : v = 8'd245;
			8'd235 : v = 8'd245;
			8'd236 : v = 8'd246;
			8'd237 : v = 8'd246;
			8'd238 : v = 8'd247;
			8'd239 : v = 8'd247;
			8'd240 : v = 8'd248;
			8'd241 : v = 8'd248;
			8'd242 : v = 8'd249;
			8'd243 : v = 8'd249;
			8'd244 : v = 8'd249;
			8'd245 : v = 8'd250;
			8'd246 : v = 8'd250;
			8'd247 : v = 8'd251;
			8'd248 : v = 8'd251;
			8'd249 : v = 8'd252;
			8'd250 : v = 8'd252;
			8'd251 : v = 8'd253;
			8'd252 : v = 8'd253;
			8'd253 : v = 8'd254;
			8'd254 : v = 8'd254;
			8'd255 : v = 8'd255;
		endcase
	end
endmodule
