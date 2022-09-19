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


/* Simple Dual-Port RAM */
module simple_dp_ram
#(
	parameter DW = 8,
	parameter AW = 4,
	parameter SZ = 2**AW
)
(
	input           clk,
	input           wen,
	input  [AW-1:0] waddr,
	input  [DW-1:0] wdata,
	input           ren,
	input  [AW-1:0] raddr,
	output [DW-1:0] rdata
);
	reg [DW-1:0] mem [SZ-1:0];
	always @ (posedge clk) begin
		if (wen) begin
			mem[waddr] <= wdata;
		end
	end
	reg [DW-1:0] q;
	always @ (posedge clk) begin
		if (ren) begin
			q <= mem[raddr];
		end
	end
	assign rdata = q;
endmodule

/* Full/True Dual-Port RAM */
module full_dp_ram
#(
	parameter DW = 8,
	parameter AW = 4,
	parameter SZ = 2**AW
)
(
	input           clk_a,
	input           wen_a,
	input           ren_a,
	input  [AW-1:0] addr_a,
	input  [DW-1:0] wdata_a,
	output [DW-1:0] rdata_a,
	input           clk_b,
	input           wen_b,
	input           ren_b,
	input  [AW-1:0] addr_b,
	input  [DW-1:0] wdata_b,
	output [DW-1:0] rdata_b
);
	reg [DW-1:0] mem [SZ-1:0];
	reg [DW-1:0] q_a;
	always @ (posedge clk_a) begin
		if (wen_a) begin
			mem[addr_a] <= wdata_a;
		end
		if (ren_a) begin
			q_a <= mem[addr_a];
		end
	end
	reg [DW-1:0] q_b;
	always @ (posedge clk_b) begin
		if (wen_b) begin
			mem[addr_b] <= wdata_b;
		end
		if (ren_b) begin
			q_b <= mem[addr_b];
		end
	end
	assign rdata_a = q_a;
	assign rdata_b = q_b;
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


/* Common clock FIFO */
module sync_fifo
#(
	parameter DW = 8,
	parameter AW = 4
)
(
	input           clk,
	input           rst_n,
	input           wen,
	input  [DW-1:0] wdata,
	output          wfull,
	input           ren,
	output [DW-1:0] rdata,
	output          rempty
);

	reg [AW:0] waddr;
	reg [AW:0] raddr;

	assign rempty = (waddr == raddr);
	assign wfull  = (waddr[AW] != raddr[AW]) && (waddr[AW-1:0] == raddr[AW-1:0]);

	wire wr_flag = !wfull & wen;
	wire rd_flag = !rempty & ren;

	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n)
			waddr <= 0;
		else if (wr_flag)
			waddr <= waddr + 1'b1;
		else
			waddr <= waddr;
	end

	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n)
			raddr <= 0;
		else if (rd_flag)
			raddr <= raddr + 1'b1;
		else
			raddr <= raddr;
	end

	simple_dp_ram #(
			.DW       (DW),
			.AW       (AW)
		) ram (
			.clk      (clk),
			.wen      (wr_flag),
			.waddr    (waddr[AW-1:0]),
			.wdata    (wdata),
			.ren      (rd_flag),
			.raddr    (raddr[AW-1:0]),
			.rdata    (rdata)
		);

endmodule


/* Independent clock FIFO */
module async_fifo
#(
	parameter DW = 8,
	parameter AW = 4
)
(
	input           wclk,
	input           rclk,
	input           wrstn,
	input           rrstn,
	input           wen,
	input [DW-1:0]  wdata,
	output          wfull,
	input           ren,
	output [DW-1:0] rdata,
	output          rempty
);

	reg [AW:0] waddr;
	reg [AW:0] raddr;

	//sync_w2r
	wire [AW:0] wptr = waddr ^ {1'b0, waddr[AW:1]}; //Gray Code
	reg  [AW:0] w2r_wptr1, w2r_wptr2;
	always @ (posedge rclk or negedge rrstn) begin
		if (!rrstn) begin
			w2r_wptr1 <= 0;
			w2r_wptr2 <= 0;
		end
		else begin
			w2r_wptr1 <= wptr;
			w2r_wptr2 <= w2r_wptr1;
		end
	end

	//sync_r2w
	wire [AW:0] rptr = raddr ^ {1'b0, raddr[AW:1]}; //Gray Code
	reg  [AW:0] r2w_rptr1, r2w_rptr2;
	always @ (posedge wclk or negedge wrstn) begin
		if (!wrstn) begin
			r2w_rptr1 <= 0;
			r2w_rptr2 <= 0;
		end
		else begin
			r2w_rptr1 <= rptr;
			r2w_rptr2 <= r2w_rptr1;
		end
	end

	//status
	assign rempty = (w2r_wptr2 == rptr);
	assign wfull  = (wptr == {~r2w_rptr2[AW:AW-1], r2w_rptr2[AW-2:0]});

	wire wr_flag = !wfull & wen;
	wire rd_flag = !rempty & ren;

	always @ (posedge wclk or negedge wrstn) begin
		if (!wrstn)
			waddr <= 0;
		else if (wr_flag)
			waddr <= waddr + 1'b1;
		else
			waddr <= waddr;
	end

	always @ (posedge rclk or negedge rrstn) begin
		if (!rrstn)
			raddr <= 0;
		else if (rd_flag)
			raddr <= raddr + 1'b1;
		else
			raddr <= raddr;
	end

	full_dp_ram #(
			.DW          (DW),
			.AW          (AW)
		) ram (
			.clk_a       (wclk),
			.wen_a       (wr_flag),
			.ren_a       (1'b0),
			.addr_a      (waddr[AW-1:0]),
			.wdata_a     (wdata),
			.rdata_a     (),
			.clk_b       (rclk),
			.wen_b       (1'b0),
			.ren_b       (rd_flag),
			.addr_b      (raddr[AW-1:0]),
			.wdata_b     (0),
			.rdata_b     (rdata)
		);

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

/*
def div32(a, b):
    a = a & 0xffffffff
    b = b << 32
    for i in range(32) :
        a = (a << 1) & 0xffffffffffffffff
        if a >= b :
            a = a - b + 1
    return (a & 0xffffffff, (a >> 32) & 0xffffffff)
*/

//移位正整数除法器，支持流水线，节拍数为BITS
//quo = num // den;  rem = num % den;
module shift_div_uint
#(
	parameter BITS = 32
)
(
	input clk,
	input rst_n,

	input [BITS-1:0] num, //被除数
	input [BITS-1:0] den, //除数
	
	output [BITS-1:0] quo, //商
	output [BITS-1:0] rem  //余数
);

	//被除数&除数buffer  因需要BITS级流水线 故需要BITS个寄存器
	reg  [BITS*2-1:0] num_tmp [BITS-1:0];
	reg  [BITS*2-1:0] den_tmp [BITS-1:0];
	wire [BITS*2-1:0] num_tmp_in = {{BITS{1'b0}}, num};
	wire [BITS*2-1:0] den_tmp_in = {den, {BITS{1'b0}}};
	always @ (posedge clk or negedge rst_n) begin : _blk_run
		integer i;
		if (!rst_n) begin
			for (i = 0; i < BITS; i = i + 1) begin
				num_tmp[i] <= 0;
				den_tmp[i] <= 0;
			end
		end
		else begin
			if ({num_tmp_in[BITS*2-2:0],1'b0} >= den_tmp_in) begin
				num_tmp[0] <= {num_tmp_in[BITS*2-2:0],1'b1} - den_tmp_in;
				den_tmp[0] <= den_tmp_in;
			end
			else begin
				num_tmp[0] <= {num_tmp_in[BITS*2-2:0],1'b0};
				den_tmp[0] <= den_tmp_in;
			end
				
			for (i = 0; i < BITS - 1; i = i + 1) begin
				if ({num_tmp[i][BITS*2-2:0],1'b0} >= den_tmp[i]) begin
					num_tmp[i+1] <= {num_tmp[i][BITS*2-2:0],1'b1} - den_tmp[i];
					den_tmp[i+1] <= den_tmp[i];
				end
				else begin
					num_tmp[i+1] <= {num_tmp[i][BITS*2-2:0],1'b0};
					den_tmp[i+1] <= den_tmp[i];
				end
			end
		end
	end

	assign quo = num_tmp[BITS-1][BITS-1:0];
	assign rem = num_tmp[BITS-1][BITS*2-1:BITS];
endmodule

//histogram statistics(直方图统计)
//ping&pong双RAM实现,一个用于统计,另一个用于读出
//注:in_vsync上升沿之后至少延迟(2**ADDR_BITS)时钟后才能开始统计(in_valid有效),以保证有足够的时钟把统计RAM清零
module hist_stat
#(
	parameter ADDR_BITS = 8,
	parameter DATA_BITS = 24
)
(
	input in_clk,
	input in_rst_n,
	input in_valid, 
	input in_vsync, //上升沿表征当前帧统计结束,下一个时钟即可读取统计结果
	input [ADDR_BITS-1:0] in_addr,

	input out_clk,
	input out_en,
	input [ADDR_BITS-1:0] out_addr,
	output [DATA_BITS-1:0] out_data
);

	//ping ram
	wire ping_clk, ping_wen, ping_ren;
	wire [ADDR_BITS-1:0] ping_waddr, ping_raddr;
	wire [DATA_BITS-1:0] ping_wdata, ping_rdata;
	simple_dp_ram #(DATA_BITS, ADDR_BITS) ping_ram(ping_clk, ping_wen, ping_waddr, ping_wdata, ping_ren, ping_raddr, ping_rdata);

	//ping ram
	wire pong_clk, pong_wen, pong_ren;
	wire [ADDR_BITS-1:0] pong_waddr, pong_raddr;
	wire [DATA_BITS-1:0] pong_wdata, pong_rdata;
	simple_dp_ram #(DATA_BITS, ADDR_BITS) pong_ram(pong_clk, pong_wen, pong_waddr, pong_wdata, pong_ren, pong_raddr, pong_rdata);
	
	//当前统计RAM
	reg cur_ram; //0-统计使用ping,读出使用pong 1-统计使用pong,读出使用ping
	//统计RAM信号线
	wire cur_clk, cur_wen, cur_ren;
	wire [ADDR_BITS-1:0] cur_waddr, cur_raddr;
	wire [DATA_BITS-1:0] cur_wdata, cur_rdata;
	//读出RAM信号线
	wire bak_clk, bak_wen, bak_ren;
	wire [ADDR_BITS-1:0] bak_waddr, bak_raddr;
	wire [DATA_BITS-1:0] bak_wdata, bak_rdata;
	//连接ping_ram输入驱动线
	assign {ping_clk,ping_wen,ping_ren,ping_waddr,ping_raddr,ping_wdata} = cur_ram
				? {bak_clk,bak_wen,bak_ren,bak_waddr,bak_raddr,bak_wdata}  /*统计使用pong, ping作为读出RAM*/
				: {cur_clk,cur_wen,cur_ren,cur_waddr,cur_raddr,cur_wdata}; /*统计使用ping, ping作为统计RAM*/
	//连接pong_ram输入驱动线
	assign {pong_clk,pong_wen,pong_ren,pong_waddr,pong_raddr,pong_wdata} = cur_ram
				? {cur_clk,cur_wen,cur_ren,cur_waddr,cur_raddr,cur_wdata}  /*统计使用pong, pong作为统计RAM*/
				: {bak_clk,bak_wen,bak_ren,bak_waddr,bak_raddr,bak_wdata}; /*统计使用pong, pong作为读出RAM*/
	assign cur_rdata = cur_ram ? pong_rdata : ping_rdata; //连接统计RAM输出线
	assign bak_rdata = cur_ram ? ping_rdata : pong_rdata; //连接读出RAM输出线

	//对vsync打拍
	reg prev_vsync;
	always @ (posedge in_clk or negedge in_rst_n)
		if (!in_rst_n)
			prev_vsync <= 0;
		else
			prev_vsync <= in_vsync;

	//检测帧结束,切换统计RAM,触发统计RAM清零逻辑
	reg cur_clr_done;
	reg [ADDR_BITS-1:0] cur_clr_addr;
	always @ (posedge in_clk or negedge in_rst_n) begin
		if (!in_rst_n) begin
			cur_ram <= 0;
			cur_clr_done <= 0;
			cur_clr_addr <= 0;
		end
		else if (in_vsync & ~prev_vsync) begin
			//检测到帧结束
			cur_ram <= ~cur_ram; //切换统计RAM
			cur_clr_done <= 0; //触发统计RAM清零
			cur_clr_addr <= 0; //清零地址初始化
		end
		else if (!cur_clr_done) begin
			//清零中
			cur_ram <= cur_ram;
			cur_clr_addr <= cur_clr_addr + 1'b1;  //清零地址增长
			if (cur_clr_addr == {ADDR_BITS{1'b1}})
				cur_clr_done <= 1'b1; //清零地址达到最大址,下个时钟结束
			else
				cur_clr_done <= cur_clr_done;
		end
		else begin
			//统计中
			cur_ram <= cur_ram;
			cur_clr_done <= cur_clr_done;
			cur_clr_addr <= cur_clr_addr;
		end
	end

    //以下统计逻辑(先读出原值,在下一个时钟+1回写)

	//输入接口连接到统计RAM读线(先读后写)
	assign cur_clk = in_clk;
	assign cur_ren = in_valid;
	assign cur_raddr = in_addr;

	//统计写使能逻辑
	reg cur_ren_r;
	always @ (posedge in_clk or negedge in_rst_n) begin
		if (!in_rst_n)
			cur_ren_r <= 0;
		else
			cur_ren_r <= cur_ren;
	end
	assign cur_wen = cur_clr_done ? cur_ren_r : 1'b1; //统计时就是上次的读使能, 清零时置1

	//统计写地址逻辑
	reg [ADDR_BITS-1:0] cur_raddr_r;
	always @ (posedge in_clk or negedge in_rst_n) begin
		if (!in_rst_n)
			cur_raddr_r <= 0;
		else
			cur_raddr_r <= cur_raddr;
	end
	assign cur_waddr = cur_clr_done ? cur_raddr_r : cur_clr_addr; //统计时就是上次的读地址, 清零时为清零地址计数

	//统计写数据逻辑
	reg                 cur_wen_r;   //上次写使能
	reg [ADDR_BITS-1:0] cur_waddr_r; //上次写地址
	reg [DATA_BITS-1:0] cur_wdata_r; //上次写数据
	always @ (posedge in_clk or negedge in_rst_n) begin
		if (!in_rst_n) begin
			cur_wen_r   <= 0;
			cur_waddr_r <= 0;
			cur_wdata_r <= 0;
		end
		else begin
			cur_wen_r   <= cur_wen;
			cur_waddr_r <= cur_waddr;
			cur_wdata_r <= cur_wdata;
		end
	end
	assign cur_wdata = cur_clr_done ? (cur_wen_r && cur_raddr_r/*上次读地址即本次写地址*/ == cur_waddr_r/*上一次写地址*/
                                        ? cur_wdata_r + 1'b1 /*地址相同则上次写数据+1(规避RAM是first_read特性带来的数据老旧,使用在该地址上最后写入的数据)*/
                                        : cur_rdata + 1'b1) /*地址不同则在上次读出数据+1(上次读出的数据就是该地址最新数据了)*/
                                    : {DATA_BITS{1'b0}}; /*清零时数据置0*/  //本条表达式可能有较高的逻辑延迟

	//读出接口连接到读出RAM
	assign bak_clk = out_clk;
	assign bak_ren = out_en;
	assign bak_raddr = out_addr;
	assign out_data = bak_rdata;
	assign bak_wen = 1'b0;
	assign bak_waddr = 0;
	assign bak_wdata = 0;
endmodule
