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
// Filename       : intra_4x4_ctrl.v
// Author         : huibo zhong
// Created        : 2011-02-24
// Description    : intra4x4_ctrl
//               
// Modified 	  : 2013-4-18 by Yibo FAN
//					Remove TQ Path
//
// Pipeline Architecture
// |   Level 0    |    Level 1   |   Level 2  |   Level 3  |  Level 4  |  Level 5  |
//  Curr_State        RESIDUAL         DCT           Q          IQ        IDCT/REC
//	Curr_MODE             _r           _r1       min_mode 
//  i4x4_num                       Hardm./cost   min_cost       _r3
//  MODE_FINISH           _r           _r1         _r2          _r3         _r4  
//	MODE_PRED_GEN                  REC_Enable
//	PRED_PIXEL                                                            
//  Valid_Prediction      _r           _r1         _r2
//                                   min_val    min_val_r2
//
//-------------------------------------------------------------------  
`include "enc_defines.v"

module intra_4x4_ctrl(
				clk,
				rst_n,
				mb_x_total,
				mb_x,
				mb_y,
				
				start_i,
				done_o,
				lambda_i,
				ht_sum4x4_i,
				luma_4x4_cost_o,
				blk_avail_o,
								
				i4x4_num_o,
				i4x4_end_o,
				i4x4_pred_mode_i,
				i4x4_curr_mode_o,
				i4x4_min_mode_o,
				i4x4_min_val_o,
				i4x4_min_num_o,							
				
				tq_en_o,  
				tq_mod_o, 
				tq_num_o, 
				tq_end_o,
				tq_min_o
);

// ********************************************
//                                             
//    Parameters DECLARATION               
//                                             
// ********************************************
parameter 		INTRA4x4_IDLE = 4'd15,
				INTRA4x4_V    = 4'd0,
				INTRA4x4_H    = 4'd1,
				INTRA4x4_DC   = 4'd2,
				INTRA4x4_DDL  = 4'd3,
				INTRA4x4_DDR  = 4'd4,
				INTRA4x4_VR   = 4'd5,
				INTRA4x4_HD   = 4'd6,
				INTRA4x4_VL   = 4'd7,
				INTRA4x4_HU   = 4'd8,
				INTRA4x4_WAIT = 4'd9;

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input        				clk;
input						rst_n;
input [`PIC_W_MB_LEN-1 :0]  mb_x, mb_x_total;
input [`PIC_H_MB_LEN-1:0]  	mb_y;
// Intra control
input						start_i; // intra_4x4 start
output						done_o;  // intra 4x4 done
input  [6:0]				lambda_i; // lamda = f(qp), used for cost calculation
input  [`BIT_DEPTH+7:0]		ht_sum4x4_i; // 4x4 block hardamard sum
output [`BIT_DEPTH+11:0]	luma_4x4_cost_o; // intra 4x4 total cost
output [3:0]				blk_avail_o; // 4x4 block top, left, top_left, top_right available info.

// Ref Pixels IF
output [3:0]				i4x4_num_o;  // intra 4x4 current sub-block number  
output						i4x4_end_o;  // intra 4x4 current sub-block number final mode flag  
output [3:0]				i4x4_curr_mode_o; // intra 4x4 current prediction mode
input  [3:0]				i4x4_pred_mode_i; // intra 4x4 current predicted mode
output 						i4x4_min_val_o  ; // intra 4x4 sub-block min mode valid
output [3:0]				i4x4_min_mode_o ; // intra 4x4 sub-block min mode
output [3:0]				i4x4_min_num_o  ; // intra 4x4 sub-block min mode block number
// TQ Rec IF
output						tq_en_o ; // tq rec enable 
output [3:0]				tq_mod_o; // current i4x4 mode
output [3:0]				tq_num_o; // current i4x4 number
output 						tq_end_o; // current i4x4 block final predition mode flag
output						tq_min_o; // current i4x4 min cost valid flag

// ********************************************
//                                             
//    Signals DECLARATION               
//                                             
// ********************************************
//--------Pipeline Delay / Register------------//
// mode finish of each 4x4 block 
reg   [3:0]  				curr_state  ,	next_state;
wire  [3:0]					curr_mode	;
reg   [3:0]					curr_mode_r ,
							curr_mode_r1;

reg          				mode_finish   ,  
							mode_finish_r ,
							mode_finish_r1,
							mode_finish_r2,
							mode_finish_r3,
							mode_finish_r4;
// valid_prediction
wire						valid_prediction   ;
reg							valid_prediction_r ,
							valid_prediction_r1,
							valid_prediction_r2;
// min cost valid
wire						min_val;
reg							min_val_r2;
// mode compare
wire						mode_equal;
reg							mode_equal_r, 
							mode_equal_r1;
// 4x4 block counter
reg   [3:0]  				block_cnt,      // 4x4 block counter,        0..14,15
							block_cnt_p1;   // 4x4 block counter plus 1, 1..15,0
// 4x4 scan number = f(block_cnt);        next 4x4 scan number	= f(block_cnt_next)	
reg   [3:0]  				blk4x4_num   , blk4x4_num_next,
							blk4x4_num_r ,
							blk4x4_num_r1;

wire [8:0]					cost_lambda;
reg  [`BIT_DEPTH+11:0]		cost4x4_total;
wire [`BIT_DEPTH+7:0] 		cost4x4;
reg  [`BIT_DEPTH+7:0]       min_cost;
reg  [3:0]					min_mode;

//----------- Wire / Flag Signals ------------//
// 4x4 block available flag
wire         				mb_avail_t ,
							mb_avail_l ,
							mb_avail_tr;
wire         				blk_tp_avail, blk_tp_avail_next,
							blk_lf_avail, blk_lf_avail_next,
							blk_tl_avail, blk_tl_avail_next,
							blk_tr_avail, blk_tr_avail_next;			
wire [1:0]   				blk4x4_v,     blk4x4_v_next,
							blk4x4_h,     blk4x4_h_next;          
wire [3:0]   				blk_avail,    blk_avail_next;		
// config
wire         				config_tr;   //config when blk=2,6,10,14/
wire         				config_done; //config done 			

//------------------------------------------------------
//		Output Data
//------------------------------------------------------
assign done_o = (curr_state==INTRA4x4_IDLE && mode_finish_r4) ? 1'b1:1'b0;
assign luma_4x4_cost_o = cost4x4_total;
assign blk_avail_o = blk_avail;

assign tq_en_o  = valid_prediction_r;
assign tq_mod_o = curr_mode_r      ;
assign tq_num_o = blk4x4_num_r    ;
assign tq_end_o = mode_finish_r   ;
assign tq_min_o = min_val_r2      ;

assign i4x4_num_o       = blk4x4_num   ;
assign i4x4_end_o       = mode_finish  ;
assign i4x4_curr_mode_o = curr_state   ;
assign i4x4_min_val_o   = min_val      ;
assign i4x4_min_mode_o  = curr_mode_r1 ;
assign i4x4_min_num_o   = blk4x4_num_r1;

//------------------------------------------------------
//		Top/Left Avaiable Decision 
//------------------------------------------------------
assign  blk4x4_v={blk4x4_num[3],blk4x4_num[1]};
assign  blk4x4_h={blk4x4_num[2],blk4x4_num[0]};
               
assign  blk4x4_v_next={blk4x4_num_next[3],blk4x4_num_next[1]};
assign  blk4x4_h_next={blk4x4_num_next[2],blk4x4_num_next[0]};
        
assign  mb_avail_t = mb_y!=0;
assign  mb_avail_l = mb_x!=0;
assign  mb_avail_tr= mb_y!=0&&mb_x!=mb_x_total;
        
assign  blk_tp_avail = (blk4x4_v != 0) || ((blk4x4_v == 0) && mb_avail_t);
assign  blk_lf_avail = (blk4x4_h != 0) || ((blk4x4_h == 0) && mb_avail_l);
assign  blk_tl_avail = blk_tp_avail && blk_lf_avail;
assign  blk_tr_avail = ((blk4x4_v == 2'd0) && mb_avail_t && blk4x4_h < 2'd3) 
		  	         ||((blk4x4_v == 2'd0) && mb_avail_tr) 
		  	         ||((blk4x4_v != 2'd0) && blk4x4_h != 2'd3 && blk4x4_h != 2'd1) 
		  	         ||( blk4x4_num == 4'd9);
		  	                
assign  blk_tp_avail_next = (blk4x4_v_next != 0) || ((blk4x4_v_next == 0) && mb_avail_t);
assign  blk_lf_avail_next = (blk4x4_h_next != 0) || ((blk4x4_h_next == 0) && mb_avail_l);
assign  blk_tl_avail_next = blk_tp_avail_next && blk_lf_avail_next;
assign  blk_tr_avail_next = ((blk4x4_v_next == 2'd0) && mb_avail_t && blk4x4_h_next < 2'd3) 
				          ||((blk4x4_v_next == 2'd0) && mb_avail_tr) 
				          ||((blk4x4_v_next != 2'd0) && blk4x4_h_next != 2'd3 && blk4x4_h_next != 2'd1) 
				          ||( blk4x4_num_next == 4'd9);

assign 	blk_avail 		= {blk_lf_avail,blk_tl_avail,blk_tp_avail,blk_tr_avail};
assign 	blk_avail_next 	= {blk_lf_avail_next,blk_tl_avail_next,blk_tp_avail_next,blk_tr_avail_next};

//----------------------------------------------------------------
//			FSM
//----------------------------------------------------------------
// flag signals
assign config_done = mode_finish_r4;
assign config_tr   = blk4x4_num==4'd2 ||(blk4x4_num==4'd6&&mb_y!=4'd0)
				  || blk4x4_num==4'd10||(blk4x4_num==4'd14);

// fsm state changes
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		curr_state <= INTRA4x4_IDLE;
	else 
		curr_state <= next_state;
end

always @(*)begin
	case(curr_state)
		INTRA4x4_IDLE : if(start_i)
							if(mb_avail_t)
								next_state = INTRA4x4_V;
							else 
								next_state = INTRA4x4_DC;
						else
							next_state = curr_state;
		INTRA4x4_V   :  if(mode_finish)
							if(blk4x4_num_next==4'd15||blk4x4_num_next==4'd1)
								next_state = INTRA4x4_WAIT;
							else if(blk_avail_next[1])
								next_state = INTRA4x4_V;
							else if(blk4x4_num_next!=4'd1&&blk4x4_num_next!=4'd15&&blk_avail_next[3])
								next_state = INTRA4x4_DC;
							else
								next_state = INTRA4x4_WAIT;
						else if((blk4x4_num==4'd6||blk4x4_num==4'd3)&&mb_y==4'd0)
							next_state = INTRA4x4_WAIT;
						else if(blk4x4_num==4'd7&&mb_x==4'd0)
							next_state = INTRA4x4_WAIT;
						else if(config_tr)
							next_state = INTRA4x4_DC;
						else if(blk_avail[1]&&blk_avail[0])
							next_state = INTRA4x4_DDL;
						else if(blk4x4_num==4'd1&&mb_y=='d0)
							next_state = INTRA4x4_WAIT;
						else if(blk4x4_num==4'd1||blk4x4_num==4'd15)
							next_state = INTRA4x4_WAIT;
						else
							next_state = INTRA4x4_DC;
		INTRA4x4_DDL :  if(mode_finish)
							if(blk4x4_num_next==4'd15||blk4x4_num_next==4'd1)
								next_state = INTRA4x4_WAIT;
							else if(blk_avail_next[1])
								next_state = INTRA4x4_V;
							else if(blk4x4_num_next!=4'd1&&blk4x4_num_next!=4'd15&&blk_avail_next[3])
								next_state = INTRA4x4_DC;
							else
								next_state = INTRA4x4_WAIT;
						else
							next_state = INTRA4x4_VL;
		INTRA4x4_VL  :  if(mode_finish)
							if(blk4x4_num_next==4'd15||blk4x4_num_next==4'd1)
								next_state = INTRA4x4_WAIT;
							else if(blk_avail_next[1])
								next_state = INTRA4x4_V;
							else if(blk4x4_num_next!=4'd1&&blk4x4_num_next!=4'd15&&blk_avail_next[3])
								next_state = INTRA4x4_DC;
							else
								next_state = INTRA4x4_WAIT;
						else if(config_tr)
							next_state = INTRA4x4_IDLE;
						else if(blk4x4_num==4'd1&&mb_y=='d0)
							next_state = INTRA4x4_WAIT;
						else if(blk4x4_num==4'd6&&mb_y=='d0)
							next_state = INTRA4x4_IDLE;
						else
							next_state = INTRA4x4_DC;
		INTRA4x4_DC  :  if(mode_finish)
							if(blk4x4_num_next==4'd15||blk4x4_num_next==4'd1)
								next_state = INTRA4x4_WAIT;
							else if(blk_avail_next[1])
								next_state = INTRA4x4_V;
							else if(blk4x4_num_next!=4'd1&&blk4x4_num_next!=4'd15&&blk_avail_next[3])
								next_state = INTRA4x4_DC;
							else
								next_state = INTRA4x4_WAIT;
						else if(blk_avail[3])
							next_state = INTRA4x4_H;
						else if(config_tr)
							next_state = INTRA4x4_WAIT;
						else
							next_state = INTRA4x4_IDLE;
		INTRA4x4_H   :  if(mode_finish)
							if(blk4x4_num_next==4'd15||blk4x4_num_next==4'd1)
								next_state = INTRA4x4_WAIT;
							else if(blk_avail_next[1])
								next_state = INTRA4x4_V;
							else if(blk4x4_num_next!=4'd1&&blk4x4_num_next!=4'd15&&blk_avail_next[3])
								next_state = INTRA4x4_DC;
							else
								next_state = INTRA4x4_WAIT;
						else 
							next_state = INTRA4x4_HU;
		INTRA4x4_HU  :  if(mode_finish&&blk4x4_num!=4'd15)
							if(blk4x4_num_next==4'd15||blk4x4_num_next==4'd1)
								next_state = INTRA4x4_WAIT;
							else if(blk_avail_next[1])
								next_state = INTRA4x4_V;
							else if(blk4x4_num_next!=4'd1&&blk4x4_num_next!=4'd15&&blk_avail_next[3])
								next_state = INTRA4x4_DC;
							else
								next_state = INTRA4x4_WAIT;
						else if(blk_avail[2])
							next_state = INTRA4x4_DDR;
						else if(config_tr&&config_done)
							next_state = INTRA4x4_DDL;
						else 
							next_state = INTRA4x4_IDLE;
		INTRA4x4_DDR :  if(mode_finish)
							if(blk4x4_num_next==4'd15||blk4x4_num_next==4'd1)
								next_state = INTRA4x4_WAIT;
							else if(blk_avail_next[1])
								next_state = INTRA4x4_V;
							else if(blk4x4_num_next!=4'd1&&blk4x4_num_next!=4'd15&&blk_avail_next[3])
								next_state = INTRA4x4_DC;
							else
								next_state = INTRA4x4_WAIT;
						else 
							next_state = INTRA4x4_VR;
		INTRA4x4_VR  :  if(mode_finish)
							if(blk4x4_num_next==4'd15||blk4x4_num_next==4'd1)
								next_state = INTRA4x4_WAIT;
							else if(blk_avail_next[1])
								next_state = INTRA4x4_V;
							else if(blk4x4_num_next!=4'd1&&blk4x4_num_next!=4'd15&&blk_avail_next[3])
								next_state = INTRA4x4_DC;
							else
								next_state = INTRA4x4_WAIT;
						else 
							next_state = INTRA4x4_HD;
		INTRA4x4_HD  :  if(mode_finish&&blk4x4_num!=4'd15)
							if(blk4x4_num_next==4'd15||blk4x4_num_next==4'd1)
								next_state = INTRA4x4_WAIT;
							else if(blk_avail_next[1])
								next_state = INTRA4x4_V;
							else if(blk4x4_num_next!=4'd1&&blk4x4_num_next!=4'd15&&blk_avail_next[3])
								next_state = INTRA4x4_DC;
							else
								next_state = INTRA4x4_WAIT;
						else if(config_tr)
							next_state = INTRA4x4_DDL;
						else if(blk4x4_num==4'd6&&mb_y=='d0)
							next_state = INTRA4x4_DDL;
						else
							next_state = INTRA4x4_IDLE;
		INTRA4x4_WAIT:  if(blk4x4_num==4'd15&&mode_finish_r2)//wait for mode14
							next_state = INTRA4x4_V;
						else if(blk4x4_num==4'd3&&mb_y=='d0&&config_done)
							next_state = INTRA4x4_DC;
						else if(blk4x4_num==4'd1&&mb_y=='d0&&config_done)
							next_state = INTRA4x4_DC;
						else if(blk4x4_num==4'd1&&mode_finish_r1&&mb_y!='d0)
							next_state = INTRA4x4_V;
						else if(blk4x4_num==4'd6&&mb_y=='d0&&config_done)//wait for left
							next_state = INTRA4x4_DC;
						else if(blk4x4_num==4'd7&&mb_y=='d0&&config_done)
							next_state = INTRA4x4_DC;
						else if(config_tr&&config_done)
							next_state = INTRA4x4_DDL;
						else if(config_done)
							next_state = INTRA4x4_DC;
						else 
							next_state = INTRA4x4_WAIT;
		default: next_state = INTRA4x4_IDLE;
	endcase
end

// Current 4x4 sub-block prediction finish identifier
always @(*)begin
	case(blk4x4_num)
		4'd0 : mode_finish = (curr_state==INTRA4x4_DC&&(mb_x==0))
						   ||(curr_state==INTRA4x4_HU&&mb_x>0&&mb_y==0)
				     	   ||(curr_state==INTRA4x4_HD&&mb_x>0&&mb_y>0);
		4'd1 : mode_finish = (curr_state==INTRA4x4_HU&&(mb_y==0))
				    	   ||(curr_state==INTRA4x4_HD&&mb_y>0);
		4'd2 : mode_finish =  curr_state==INTRA4x4_VL;
		4'd3 : mode_finish =  curr_state==INTRA4x4_HD;
		4'd4 : mode_finish = (curr_state==INTRA4x4_HU&&mb_y==0)
						   ||(curr_state==INTRA4x4_HD&&mb_y>0);
		4'd5 : mode_finish = (curr_state==INTRA4x4_HU&&mb_y==0)
						   ||(curr_state==INTRA4x4_HD&&mb_y>0);
		4'd6 : mode_finish = curr_state==INTRA4x4_VL;
		4'd7 : mode_finish = curr_state==INTRA4x4_HD;
		4'd8 : mode_finish = curr_state==INTRA4x4_DC&&(mb_x==0)
						   ||curr_state==INTRA4x4_HD;
		4'd9 : mode_finish = curr_state==INTRA4x4_HD;
		4'd10: mode_finish = curr_state==INTRA4x4_VL;
		4'd11: mode_finish = curr_state==INTRA4x4_HD;
		4'd12: mode_finish = curr_state==INTRA4x4_HD;
		4'd13: mode_finish = curr_state==INTRA4x4_HD;
		4'd14: mode_finish = curr_state==INTRA4x4_VL;
		4'd15: mode_finish = curr_state==INTRA4x4_HD;
	endcase
end

// mode_finish delay line for pipeline flag
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		mode_finish_r  <= 1'b0;
		mode_finish_r1 <= 1'b0;
		mode_finish_r2 <= 1'b0;
		mode_finish_r3 <= 1'b0;
		mode_finish_r4 <= 1'b0;
	end
	else begin
		mode_finish_r  <= mode_finish;
		mode_finish_r1 <= mode_finish_r;
		mode_finish_r2 <= mode_finish_r1;
		mode_finish_r3 <= mode_finish_r2;
		mode_finish_r4 <= mode_finish_r3;
	end
end

// Current 4x4 sub-block valid intra prediction 
assign valid_prediction = (curr_state!=INTRA4x4_IDLE) && (curr_state!=INTRA4x4_WAIT);

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		valid_prediction_r  <= 1'b0;
		valid_prediction_r1 <= 1'b0;
		valid_prediction_r2 <= 1'b0;
	end
	else begin
		valid_prediction_r  <= valid_prediction;
		valid_prediction_r1 <= valid_prediction_r;
		valid_prediction_r2 <= valid_prediction_r1;
	end
end

// Current Prediction mode
assign curr_mode = curr_state;

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		curr_mode_r  <= 'b0;
		curr_mode_r1 <= 'b0;
	end
	else begin
		curr_mode_r  <= curr_mode;
		curr_mode_r1 <= curr_mode_r;
	end
end

// Mode Compare
assign mode_equal = (curr_mode==i4x4_pred_mode_i) ? 1'b1 : 1'b0; 

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		mode_equal_r  <= 1'b0;
	else if (mode_equal && valid_prediction)
		mode_equal_r  <= mode_equal;
	else
		mode_equal_r  <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		mode_equal_r1  <= 1'b0;
	else
		mode_equal_r1  <= mode_equal_r;
end

//------------------------------------------------------
//		4x4 block scan 
//------------------------------------------------------
// 4x4 counter
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		block_cnt <= 4'b0;
	else if(start_i)
		block_cnt <= 4'b0;
	else if(mode_finish)
		block_cnt <= block_cnt + 1'b1;
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		block_cnt_p1 <= 4'b0;
	else if(mode_finish_r)
		block_cnt_p1 <= block_cnt + 1'b1;
end

// Adjusted Scan Order
always @(*)begin
	case(block_cnt)
		4'd3   : blk4x4_num = 4'd4 ;
		4'd4   : blk4x4_num = 4'd3 ;
		4'd7   : blk4x4_num = 4'd8 ;
		4'd8   : blk4x4_num = 4'd7 ;
		4'd12  : blk4x4_num = 4'd11;
		4'd11  : blk4x4_num = 4'd12;
		default: blk4x4_num = block_cnt;
	endcase
end

always @(*)begin
	case(block_cnt_p1)
		4'd3   : blk4x4_num_next = 4'd4 ;
		4'd4   : blk4x4_num_next = 4'd3 ;
		4'd7   : blk4x4_num_next = 4'd8 ;
		4'd8   : blk4x4_num_next = 4'd7 ;
		4'd12  : blk4x4_num_next = 4'd11;
		4'd11  : blk4x4_num_next = 4'd12;
		default: blk4x4_num_next = block_cnt_p1;
	endcase
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n) begin
		blk4x4_num_r  <= 'b0;
		blk4x4_num_r1 <= 'b0;
	end
	else begin
		blk4x4_num_r  <= blk4x4_num  ;
		blk4x4_num_r1 <= blk4x4_num_r;
	end
end

//------------------------------------------------------
//		Cost Calculation & Mode Decision
//------------------------------------------------------
assign cost_lambda = mode_equal_r1 ? 9'd0 : (lambda_i<<2);
assign cost4x4     =  ((ht_sum4x4_i>>1) + cost_lambda);

assign min_val = ((cost4x4<min_cost?1'b1:1'b0) | mode_finish_r2) & valid_prediction_r1;

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		min_val_r2 <= 1'b0;
	else
		min_val_r2 <= min_val;
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		min_cost <= 16'd`COST_4x4;
		min_mode <= 4'd2;
	end
	else if(start_i)begin // reset cost and mode
		min_cost <= 16'd`COST_4x4;
		min_mode <= 4'd2;
	end
	else if(mode_finish_r2 && valid_prediction_r1)begin  // save 1st mode of next 4x4 block, drop current 4x4 block cost
		min_cost <= cost4x4;                             // should be save current 4x4 block cost for cost4x4_total Cal.
		min_mode <= curr_mode_r1;
	end
	else if(mode_finish_r2) begin // reset for next 4x4 block
		min_cost <= 16'd`COST_4x4;
		min_mode <= 4'd2;
	end
	else if(min_val)begin
		min_cost <= cost4x4;
		min_mode <= curr_mode_r1;
	end
end

// MB total cost
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		cost4x4_total <= 'd0;
	else if(start_i)
		cost4x4_total <= 'd0;
	else if(valid_prediction_r2 && mode_finish_r2) 
		cost4x4_total <= cost4x4_total + min_cost;
end

/*
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		min_cost_r3 <= 16'd`COST_4x4;
		cost4x4_r2  <= 'd0;  
	end
	else begin 
		min_cost_r3 <= min_cost;
		cost4x4_r2  <= cost4x4; 
	end
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		cost4x4_total <= 'd0;
	else if(start_i)
		cost4x4_total <= 'd0;
	else if(valid_prediction_r2 && mode_finish_r2) begin
		if (cost4x4_r2<min_cost_r3)
			cost4x4_total <= cost4x4_total + cost4x4_r2;
		else
			cost4x4_total <= cost4x4_total + min_cost_r3;
	end
end
*/

endmodule