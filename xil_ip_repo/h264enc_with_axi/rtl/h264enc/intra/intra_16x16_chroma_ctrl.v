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
// Filename       : intra_16x16_chroma_ctrl.v                          
// Author         : Yibo FAN	                                      
// Created        : 2012-12-28                                        
// Description    : intra_16x16_chroma ctrl module                      
//                  control intra_16x16_chroma top data flow  
//    
// Pipeline Architecture                                                            
// |   Level 0    |    Level 1   |   Level 2  |   Level 3  |  Level 4  |  Level 5  |
//  Curr_State            _r1          _r2          
//  i16x16_num            _r1          _r2
//  chroma_num            _r1          _r2
//	pred_mode            res         cost4x4     cost_total   
//                       pre                                  cost_min                           
//------------------------------------------------------------------- 
`include "enc_defines.v"

module intra_16x16_chroma_ctrl(
				clk,
				rst_n,		
				
				mb_x_total,
				mb_x,
				mb_y,	
				pred_start_i,
				pred_done_o, 
				
				i16x16_rec_start_i,
				i16x16_rec_done_o ,
				chroma_rec_start_i,
				chroma_rec_done_o ,
				i16x16_mode_o,
				chroma_mode_o,
				cost_luma,
				cost_chroma,

				mb_avail_t,
				mb_avail_l,
				pred_i16x16_start,
				pred_chroma_start,
				i16x16_num,
				chroma_num,
				cost4x4,
				pred_mode,
				
				tq_i16x16_start_o,
				tq_chroma_start_o,
				tq_i16x16_num_o  ,
				tq_chroma_num_o  ,
				tq_i16x16_val_i  ,     
				tq_i16x16_num_i  ,     
				tq_cb_val_i      ,     
				tq_cb_num_i      ,     
				tq_cr_val_i      ,     
				tq_cr_num_i           			
);

// ********************************************
//                                             
//    Parameters DECLARATION               
//                                             
// ********************************************
parameter 	IDLE            = 4'b1111,
			INTRA16x16_V    = 4'b0000,
			INTRA16x16_H    = 4'b0001,
			INTRA16x16_DC   = 4'b0010,
			INTRA16x16_PLANE= 4'b0011,
			INTRA16x16_WAIT = 4'b0100,//wait for finish MD
			INTRA16x16_PRED = 4'b0101,
			CHROMA_DC       = 4'b1000,
			CHROMA_H        = 4'b1001,
			CHROMA_V        = 4'b1010,
			CHROMA_PLANE    = 4'b1011,
			CHROMA_WAIT     = 4'b1100,//wait for finish MD
			CHROMA_PRED     = 4'b1101,
			CHROMA_DONE		= 4'b1110,//chroma rec done
			INTRA16x16_DONE = 4'b0110,//i16x16 rec done 
			PRED_WAIT		= 4'b0111;//pred done, wait for rec loop
			
// ********************************************
//                                             
//    Input/Output DECLARATION               
//                                             
// ********************************************
input						clk;
input						rst_n;
// Intra IF: settings, from intra_top				
input [`PIC_W_MB_LEN-1:0]	mb_x_total;
input [`PIC_W_MB_LEN-1:0]	mb_x;
input [`PIC_H_MB_LEN-1:0] 	mb_y;

input						pred_start_i;     	// luma chroma prediction start 
output						pred_done_o;        // luma chroma prediction done
input						i16x16_rec_start_i; // luma rec loop start
output						i16x16_rec_done_o ; // luma rec loop done
input						chroma_rec_start_i; // chroma rec loop start
output						chroma_rec_done_o ; // chroma rec loop done
output [1:0]				i16x16_mode_o;      // i16x16 final mode
output [1:0]				chroma_mode_o;      // chroma final mode
output [`BIT_DEPTH+11:0]	cost_luma;	        // luma cost
output [`BIT_DEPTH+11:0]	cost_chroma;        // chroma acost

// PE IF: ctrl from/to pe, dc, plane
output						mb_avail_t;			// top ref mb avaiable 
output						mb_avail_l;			// left ref mb avaiable
output						pred_i16x16_start; // plane mode luma cal start
output						pred_chroma_start; // plane mode chroma cal start
output [3:0]				pred_mode;  		// current luma/chroma prediction mode
input  [`BIT_DEPTH+7:0] 	cost4x4;			// 4x4 sub-block cost
output [3:0]				i16x16_num; 		// current prediction block num for luma
output [2:0]				chroma_num;			// current prediction block num for chroma

// TQ IF: from/to TQ module  
output						tq_i16x16_start_o;
output						tq_chroma_start_o;
output [3:0]				tq_i16x16_num_o;
output [2:0]				tq_chroma_num_o;
input						tq_i16x16_val_i;     
input  [3:0]				tq_i16x16_num_i;     
input 						tq_cb_val_i    ;     
input  [3:0]				tq_cb_num_i    ;     
input 						tq_cr_val_i    ;     
input  [3:0]				tq_cr_num_i    ;     

// ********************************************
//                                             
//    Signals DECLARATION               
//                                             
// ********************************************
reg [3:0] 					curr_state,
							curr_state_r1,
							curr_state_r2;
reg [3:0] 					next_state;
reg [1:0] 					i16x16_mode;
reg [1:0]					chroma_mode;
reg [1:0]					prev_mode;
reg [3:0]					pred_mode;
reg [3:0]					i16x16_num,
							i16x16_num_r1,
							i16x16_num_r2;
reg [2:0]					chroma_num,
							chroma_num_r1,
							chroma_num_r2;

reg							tq_i16x16_start_o;
reg                         tq_chroma_start_o;
reg [3:0]					tq_i16x16_num_o;
reg [2:0]					tq_chroma_num_o;
reg [1:0]					mode_cnt;


reg [`BIT_DEPTH+11:0]		cost_total;
reg [`BIT_DEPTH+11:0] 		cost_16x16_min;
reg [`BIT_DEPTH+11:0] 		cost_chroma_min;

wire						mb_avail_t,
                            mb_avail_l;
reg							mode_end_flag;

// ********************************************
//                                             
//    Logic DECLARATION               
//                                             
// ********************************************
// output prediction mode
always @(*) begin
	case (curr_state)
		IDLE             : pred_mode = IDLE;
		INTRA16x16_V     : pred_mode = INTRA16x16_V;
		INTRA16x16_H     : pred_mode = INTRA16x16_H;
		INTRA16x16_DC    : pred_mode = INTRA16x16_DC;
		INTRA16x16_PLANE : pred_mode = INTRA16x16_PLANE;
		INTRA16x16_WAIT  : pred_mode = {2'b01, i16x16_mode};
		INTRA16x16_PRED  : pred_mode = {2'b00, i16x16_mode};
		CHROMA_DC        : pred_mode = CHROMA_DC;
		CHROMA_H         : pred_mode = CHROMA_H;
		CHROMA_V         : pred_mode = CHROMA_V;
		CHROMA_PLANE     : pred_mode = CHROMA_PLANE;
		CHROMA_WAIT      : pred_mode = {2'b01, chroma_mode};
        CHROMA_PRED      : pred_mode = {2'b10, chroma_mode};
        default			 : pred_mode = {2'b01, i16x16_mode};
	endcase
end     

// i16x16 chroma start/done
assign pred_done_o = (curr_state==CHROMA_WAIT) ? 1'b1 : 1'b0;
assign i16x16_rec_done_o = (curr_state==INTRA16x16_DONE && next_state!=INTRA16x16_DONE) ? 1'b1 : 1'b0;
assign chroma_rec_done_o = (curr_state==CHROMA_DONE && next_state!=CHROMA_DONE) ? 1'b1 : 1'b0;

// plane cal start
assign pred_i16x16_start = pred_start_i;
assign pred_chroma_start = (curr_state==INTRA16x16_WAIT && next_state!=INTRA16x16_WAIT) ? 1'b1:1'b0;

// mode output
assign i16x16_mode_o = i16x16_mode;
assign chroma_mode_o = chroma_mode;
// cost luma
assign cost_luma   = cost_16x16_min;
assign cost_chroma = cost_chroma_min;  
// available mb
assign mb_avail_t = (mb_y!=0) ? 1'b1:1'b0;
assign mb_avail_l = (mb_x!=0) ? 1'b1:1'b0;
     
//--------------------------------------------
//		i16x16 & Chroma Cost, mode decision
//--------------------------------------------
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		curr_state_r1 <= 'b0; i16x16_num_r1 <= 'b0; chroma_num_r1 <= 'b0; 
		curr_state_r2 <= 'b0; i16x16_num_r2 <= 'b0; chroma_num_r2 <= 'b0;
	end
	else begin
		curr_state_r1 <= curr_state;    i16x16_num_r1 <= i16x16_num;    chroma_num_r1 <= chroma_num;
		curr_state_r2 <= curr_state_r1; i16x16_num_r2 <= i16x16_num_r1; chroma_num_r2 <= chroma_num_r1;
	end
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		mode_cnt <= 2'b0;
		prev_mode <= 2'b0;
	end
	else if (curr_state_r2==IDLE || curr_state_r2==INTRA16x16_WAIT || curr_state_r2==CHROMA_WAIT) begin	
		mode_cnt <= 2'b0;
		prev_mode <= 1'b0;
	end
	else if (mode_end_flag) begin
		mode_cnt <= mode_cnt + 1'b1;
		prev_mode <= curr_state[1:0];
	end
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		cost_total <= 'b0;
	else if (curr_state==IDLE)
		cost_total <= 'b0;
	else if (curr_state_r2[3:2]==2'b00) begin
		if (i16x16_num_r2==4'd0)
			cost_total <= cost4x4;
		else
			cost_total <= cost_total + cost4x4;	
	end
	else if (curr_state_r2[3:2]==2'b10) begin
		if (chroma_num_r2==3'd0)
			cost_total <= cost4x4;
		else
			cost_total <= cost_total + cost4x4;
	end
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		cost_16x16_min <= 'b0;
		i16x16_mode <= 2'b0;
	end
	else if (curr_state_r2[3:2]==2'b00 && i16x16_num_r2==4'd0) begin // INTRA16x16 MODES
		if (mode_cnt==2'b00) begin
			cost_16x16_min <= 'b0 - 1'b1;
			i16x16_mode <= 2'b0;
		end
		else if (cost_total<cost_16x16_min) begin
			cost_16x16_min <= cost_total;	
			i16x16_mode <= prev_mode; 
		end
	end
	else if (curr_state_r2==INTRA16x16_WAIT && cost_total<cost_16x16_min) begin
		cost_16x16_min <= cost_total;	
		i16x16_mode <= prev_mode;
	end
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		cost_chroma_min <= 'b0;
		chroma_mode <= 2'b0;
	end
	else if (curr_state_r2[3:2]==2'b10 && chroma_num_r2==4'd0) begin // INTRA16x16 MODES
		if (mode_cnt==2'b00) begin
			cost_chroma_min <= 'b0 - 1'b1;
			chroma_mode <= 2'b0;
		end
		else if (cost_total<cost_chroma_min) begin
			cost_chroma_min <= cost_total;	
			chroma_mode <= prev_mode; 
		end
	end
	else if (curr_state_r2==CHROMA_WAIT && cost_total<cost_chroma_min) begin
		cost_chroma_min <= cost_total;
		chroma_mode <= prev_mode;
	end
end

//--------------------------------------------
//		i16x16_num & chroma_num
//--------------------------------------------
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		i16x16_num <= 'b0;
	else if (curr_state==IDLE || curr_state==INTRA16x16_WAIT)
		i16x16_num <= 'b0;
	else if (curr_state[3:2]==2'b00 || curr_state==INTRA16x16_PRED) // INTRA16x16 MODES
		i16x16_num <= i16x16_num + 1'b1;
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		chroma_num <= 'b0;
	else if (curr_state==IDLE || curr_state==CHROMA_WAIT)
		chroma_num <= 'b0;
	else if (curr_state[3:2] == 2'b10 || curr_state==CHROMA_PRED) // CHROMA MODES
		chroma_num <= chroma_num + 1'b1;
end

//--------------------------------------------
//		TQ : i16x16_num & chroma_num
//--------------------------------------------
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		tq_i16x16_start_o <= 1'b0;
	else if (curr_state==INTRA16x16_PRED) 
		tq_i16x16_start_o <= 1'b1;
	else
		tq_i16x16_start_o <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		tq_chroma_start_o <= 1'b0;
	else if (curr_state==CHROMA_PRED) 
		tq_chroma_start_o <= 1'b1;
	else
		tq_chroma_start_o <= 1'b0;
end               

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		tq_i16x16_num_o <= 'b0;
		tq_chroma_num_o <= 'b0;
	end
	else begin
		tq_i16x16_num_o <= i16x16_num;
		tq_chroma_num_o <= chroma_num;
	end
end
//--------------------------------------------
//		FSM
//--------------------------------------------
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		curr_state <= IDLE;
	else
		curr_state <= next_state;
end

always @(*) begin
	case(curr_state)
		IDLE: begin
			mode_end_flag = 1'b0;
			if(pred_start_i)
				if(mb_avail_t)
					next_state = INTRA16x16_V;
				else if(mb_avail_l)
					next_state = INTRA16x16_H;
				else 
					next_state = INTRA16x16_DC;
			else
				next_state = IDLE;
		end
		INTRA16x16_V : begin
			if(i16x16_num==4'd15) begin
				mode_end_flag = 1'b1;
				if(mb_avail_l)
					next_state = INTRA16x16_H;
				else
					next_state = INTRA16x16_DC;
			end
			else begin
				mode_end_flag = 1'b0;
				next_state = curr_state;
			end
		end
		INTRA16x16_H : begin
			if(i16x16_num==4'd15) begin
				next_state = INTRA16x16_DC;
				mode_end_flag = 1'b1;
			end
			else begin
				next_state = curr_state;
				mode_end_flag = 1'b0;
			end
		end
		INTRA16x16_DC : begin
			if(i16x16_num==4'd15) begin
				mode_end_flag = 1'b1;
				if(mb_avail_l&&mb_avail_t)
					next_state = INTRA16x16_PLANE;
				else
					next_state = INTRA16x16_WAIT;
			end
			else begin
				next_state = curr_state;
				mode_end_flag = 1'b0;
			end
		end
		INTRA16x16_PLANE:begin
			if(i16x16_num==4'd15) begin
				next_state = INTRA16x16_WAIT;
				mode_end_flag = 1'b1;
			end
			else begin
				next_state = curr_state;
				mode_end_flag = 1'b0;
			end
		end
		INTRA16x16_WAIT : begin
			mode_end_flag = 1'b0;
			if(i16x16_num_r2==4'd0) begin
				if(mb_avail_t)
					next_state = CHROMA_V;
				else if(mb_avail_l)
					next_state = CHROMA_H;
				else 
					next_state = CHROMA_DC;				
			end
			else
				next_state = curr_state;
		end
		INTRA16x16_PRED : begin
			mode_end_flag = 1'b0;
			if(i16x16_num==4'd15)
				next_state = INTRA16x16_DONE;
			else
				next_state = curr_state;
		end
		CHROMA_V : begin
			if(chroma_num==3'd7) begin
				mode_end_flag = 1'b1;
				if(mb_avail_l)
					next_state = CHROMA_H;
				else
					next_state = CHROMA_DC;
			end
			else begin
				next_state = curr_state;
				mode_end_flag = 1'b0;
			end
		end
		CHROMA_H : begin
			if(chroma_num==3'd7) begin
				next_state = CHROMA_DC;
				mode_end_flag = 1'b1;
			end
			else begin
				next_state = curr_state;
				mode_end_flag = 1'b0;
			end
		end
		CHROMA_DC : begin
			if(chroma_num==3'd7) begin
				mode_end_flag = 1'b1;
				if(mb_avail_l&&mb_avail_t)
					next_state = CHROMA_PLANE;
				else
					next_state = CHROMA_WAIT;
			end
			else begin
				next_state = curr_state;
				mode_end_flag = 1'b0;
			end
		end
		CHROMA_PLANE:begin
			if(chroma_num==3'd7) begin
				next_state = CHROMA_WAIT;
				mode_end_flag = 1'b1;
			end
			else begin
				next_state = CHROMA_PLANE;
				mode_end_flag = 1'b0;
			end
		end
		CHROMA_WAIT : begin
			mode_end_flag = 1'b0;
			if(i16x16_rec_start_i) 
				next_state = INTRA16x16_PRED; 
			else if (chroma_rec_start_i)
				next_state = CHROMA_PRED;
			else
				next_state = CHROMA_WAIT;
		end
		CHROMA_PRED : begin
			mode_end_flag = 1'b0;
			if(chroma_num==3'd7)
				next_state = CHROMA_DONE;
			else
				next_state = curr_state;
		end
		INTRA16x16_DONE : begin
			mode_end_flag = 1'b0;
			if (tq_i16x16_val_i && tq_i16x16_num_i=='d15)
				next_state = CHROMA_PRED;
			else
				next_state = curr_state;
		end
		CHROMA_DONE : begin
			mode_end_flag = 1'b0;
			if (tq_cr_val_i && tq_cr_num_i=='d3)
				next_state = IDLE;
			else
				next_state = CHROMA_DONE;
		end		
		default : begin
			mode_end_flag = 1'b0;
			next_state = IDLE;
		end
	endcase
end

endmodule