//-------------------------------------------------------------------
//                                                                 
//  COPYRIGHT (C) 2011, VIPcore Group, Fudan University
//                                                                  
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE      
//  EXPRESSED WRITTEN CONSENT OF VIPcore Group
//                                                                  
//  VIPcore       : http://soc.fudan.edu.cn/vip    
//  IP Owner 	  : Yibo FAN
//  Contact       : fanyibo@fudan.edu.cn             
//-------------------------------------------------------------------
// Filename       : level_run_buf.v
// Author         : huibo zhong
// Created        : 2011-05-12
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module level_run_buf (
				    clk,
				    rst_n,
				    scan_en, //
				    coeff0,
				    coeff1,
				    scan_state,
				    enc_state,
				    enc_en,
				    control_state,
				    cnt4x4,
				    s_all,
					CoeffIn4x4,  //last 4x4;
					CoeffIn4x4_r,//current 4x4;
					totalcoeff,
				    level0_o,
				    level1_o,     
				    run0_o,
				    run1_o

);

parameter 	scan_init     = 4'b0000, //scan init
			scan_cycle0   = 4'b0001, //scan clock 1
			scan_cycle1   = 4'b0010, //scan clock 2
			scan_cycle2   = 4'b0011, //scan clock 3
			scan_cycle3   = 4'b0100, //scan clock 4
			scan_cycle4   = 4'b0101, //scan clock 5
			scan_cycle5   = 4'b0110, //scan clock 6
			scan_cycle6   = 4'b0111, //scan clock 7
            scan_cycle7   = 4'b1000; //scan clock 7
			
parameter 	enc_init   	  = 4'b0000, //enc init
			enc_cycle0 	  = 4'b0001, //enc clock 1
			enc_cycle1 	  = 4'b0010, //enc clock 2
			enc_cycle2 	  = 4'b0011, //enc clock 3
			enc_cycle3 	  = 4'b0100, //enc clock 4
            enc_cycle4 	  = 4'b0101, //enc clock 5
            enc_cycle5 	  = 4'b0110, //enc clock 6
            enc_cycle6 	  = 4'b0111, //enc clock 7
            enc_cycle7 	  = 4'b1000; //enc clock 8

parameter   IDLE          = 3'b000,  //encode mode for different type;
			E_INTRA4x4    = 3'b001,
			E_INTRA16x16  = 3'b010,
			E_P16x16      = 3'b011,
			E_P16x8       = 3'b100,
			E_P8x16       = 3'b101,
			E_P8x8        = 3'b110;
			

input		      clk;                     // clock                 
input		      rst_n;                   // reset
input   [1:0]     CoeffIn4x4;              // CoeffIn4x4   delay
input   [1:0]     CoeffIn4x4_r;            // every 2 coeff    how many zero
input   [3:0]     scan_state, enc_state;   // 
input   [1:0]     s_all;                   // 
input   [4:0]     totalcoeff;              // 
input             scan_en;                 // 
input   [4:0]     cnt4x4;                  // 
input   [2:0]     control_state;           // 
input             enc_en;                  // 
input  [`RES_WIDTH-1:0] coeff0;            // 
input  [`RES_WIDTH-1:0] coeff1;            // 

output [`RES_WIDTH-1:0] level0_o;          // 
output [`RES_WIDTH-1:0] level1_o;          // 
output [3:0]      run0_o;                  // 
output [3:0]      run1_o;                  //



reg    [3:0]  Run_last;
reg    [3:0]  tmpRun_last;
reg    [3:0]  Run_before0;
reg           Run_before1;
reg           Run_en;
reg           Run_en2;
reg    [3:0]  lev_cnt_wr;
reg    [3:0]  lev_cnt_rr;
reg    [3:0]  lev_cnt_r;
reg    [3:0]  addrinc_r;
reg    [3:0]  addrinc;


wire          s0, s1 ;
wire   [1:0]  Wenable;
wire          Renable;
wire   [2:0]  tmp;
wire          we0, we1;
wire          tmpRun_en;
wire          tmpRun_en2;
wire   [3:0]  lev_cnt_w;
wire   [3:0]  Lwaddr_t;
wire   [3:0]  Rwaddr_t;
wire   [3:0]  run_cnt_w;
wire   [3:0]  addr_cnt_r;
wire   [3:0]  Lev_addr0;
wire   [3:0]  Run_addr0;
wire   [1:0]  RunWenable;


assign s0 = s_all[0];
assign s1 = s_all[1];

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		lev_cnt_rr  <= 'b0;
		Run_en2     <= 'b0;
		addrinc_r   <= 'b0;
	end
	else if(scan_en)begin
		lev_cnt_rr  <= addr_cnt_r;
		Run_en2     <= tmpRun_en2;
		addrinc_r   <= addrinc;
	end
	else begin
		Run_en2     <= 'b0;
		addrinc_r   <= 'b0;
		if((enc_state<4'd9)&&(enc_state>4'd0))begin
			lev_cnt_rr  <= addr_cnt_r;
		end
		else begin
			lev_cnt_rr  <= 'b0;
		end
	end
end


always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		Run_en      <= 'b0;
		tmpRun_last <= 'b0;
	end
	else if(scan_en&&scan_state==scan_cycle7)begin
		Run_en      <= 'b0;
		tmpRun_last <= 'b0;
	end
	else if(scan_en)begin
		Run_en      <= tmpRun_en;
		tmpRun_last <= Run_last;
	end
	else begin
		Run_en      <= 'b0;
		tmpRun_last <= 'b0;
		end
end

always @(*) begin
	case(scan_state)
		scan_init:begin 
			addrinc   = 4'b0;
			//read address increase;
			if(enc_state == enc_cycle7) begin
				lev_cnt_r = 4'b0;
			end
			else if ((enc_state<4'd8)&&(enc_state>4'd0))begin
				lev_cnt_r = lev_cnt_rr + 2'b10;
			end
			else begin
				lev_cnt_r = 4'b0;
			end
		end
		scan_cycle0:begin
			lev_cnt_r = 4'b0;
			addrinc   = 4'b0;
		end
		scan_cycle1,scan_cycle2,scan_cycle3, scan_cycle4,scan_cycle5,scan_cycle6, scan_cycle7: begin
			addrinc   = addrinc_r + CoeffIn4x4;
			lev_cnt_r = lev_cnt_rr + 2'b10;
		end
		default:begin
			addrinc   = 4'b00;
			lev_cnt_r = 4'b0;
		end
	endcase
end


reg [3:0] run_inc;
always @(*) begin
	if(addrinc>1'b0&&CoeffIn4x4>0) 
		run_inc = addrinc - 1'b1;
	else if(addrinc_r>1'b0&&CoeffIn4x4_r==0) 
		run_inc = addrinc - 1'b1;		
	else if(addrinc>2'd0&&CoeffIn4x4_r==1'b1)
	    run_inc = addrinc - 1'b1;
	else
		run_inc = addrinc;
end


assign lev_cnt_w = addrinc;
assign run_cnt_w = run_inc;


assign Lwaddr_t = lev_cnt_w;
assign Rwaddr_t = run_cnt_w;
assign addr_cnt_r = lev_cnt_r;

assign tmpRun_en = (scan_state==scan_cycle0)?(s1 || s0 ): (s1 || s0 || Run_en);
assign tmpRun_en2 = (~s1 && s0 );//-
assign tmp  = s0+s1;
assign we0  = s0||s1;
assign we1  = (tmp==2'b10)? 1'b1:1'b0;
assign Wenable = {we1, we0};
assign RunWenable = 2'b11;
assign Lev_addr0 = Lwaddr_t;
assign Run_addr0 = Rwaddr_t;


regLevel_buf #(16,4,16) regLevel(
				.clk   ( clk        ),
				.rst_n ( rst_n      ),
				.s_all ( s_all      ),
				.Waddr ( Lev_addr0  ),
				.Raddr ( addr_cnt_r ),
				.in0   ( coeff0     ),
				.in1   ( coeff1     ),
				.WE    ( Wenable    ),
				.RE    (            ),
				.out0  ( level0_o   ),
				.out1  ( level1_o   )
);

regRun_buf #(4,4,16)  regRun(
				.clk  ( clk         ),
				.rst_n( rst_n       ),
				.Waddr( Run_addr0   ),
				.Raddr( addr_cnt_r  ),
				.in0  ( Run_before0 ),
				.in1  ( Run_before1 ),
				.WE   ( RunWenable  ),
				.RE   (             ),
				.out0 ( run0_o      ),
				.out1 ( run1_o      )
);


always @(*) begin
	case (s_all)
		2'b00:begin
			Run_before1 = 1'b0;
			if(Run_en) begin
				if(scan_state == scan_cycle7) begin
					if( (control_state!=E_INTRA16x16&&control_state!=IDLE && cnt4x4 > 5'd17)
	  		   || (control_state==E_INTRA16x16) && cnt4x4 > 5'd18 )begin
						Run_before0 = 2'b1 + tmpRun_last;
						Run_last    = 0;
					end
					else begin
						Run_before0 = 2'b10 + tmpRun_last;
						Run_last    = 0;
					end
				end
				else begin
					Run_before0 = 2'b10 + tmpRun_last;
					Run_last    = 2'b10 + tmpRun_last;
				end
			end
			else begin
				Run_before0 = 1'b0;
				Run_last    = 1'b0;
			end
		end
		//----------------------------------------
		2'b01:begin
				if(Run_en) begin
					Run_before0 = tmpRun_last;
					Run_before1 = 1'b1;
					Run_last    = 1'b1;
				end
				else begin
					Run_before0 = 1'b0;
					Run_before1 = 1'b1;
					Run_last    = 1'b1;
				end
		end
		//-----------------------------------------
		2'b10:begin
			if(Run_en)begin
				Run_before1 = 1'b0;
				Run_last = 1'b0;
				Run_before0 = tmpRun_last+1'b1;	
			end
			else begin
				Run_before0 = 1'b0;
				Run_before1 = 1'b0;
				Run_last = 1'b0;
			end
				
		end
		2'b11:begin
				Run_before1 = 1'b0;
				Run_last = 1'b0;
			if(Run_en2)	
				Run_before0 = tmpRun_last;//---------------------
			else
				Run_before0 = 1'b0;
		end
	endcase
end

endmodule
