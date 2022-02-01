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
// Filename       : MB_header_enc.v
// Author         : huibo zhong
// Created        : 2011-5-12
// Description    : 
//               
// $Id$     this file coding  intra/inter partition and mvd  and  head
//------------------------------------------------------------------- 
`include "enc_defines.v"

module MB_header_enc(
				clk,
				rst_n,
				cavlc_en,
				start,
				mb_type_intra,
				cbp ,
				chroma_mode ,
				intra16x16_mode ,
				intra4x4_bm ,
				intra4x4_pm ,
				control_state ,
				scan_state ,
				cnt4x4 ,
				codebit0,
				codelength0,
				state,
				scan_en,
				valid,
				cnt,
				i_cbp_luma,
				i_cbp_chroma,
				i_cbp_dc,
				scan_done,
				skip,
				mode,
				mb_type_inter,	
				mvd_i,
				sub_partition,
				ref_idx,
				mvd_addr,
				mvd_valid,
				qp,
				mb_x,
				mb_y
);

parameter   INTRA = 1'b0;
parameter	INTER = 1'b1;

parameter 	scan_init    = 4'b0000; //scan init
parameter	scan_cycle0  = 4'b0001; //scan clock 1
parameter	scan_cycle1  = 4'b0010; //scan clock 2
parameter	scan_cycle2  = 4'b0011; //scan clock 3
parameter	scan_cycle3  = 4'b0100; //scan clock 4
parameter	scan_cycle4  = 4'b0101; //scan clock 5
parameter	scan_cycle5  = 4'b0110; //scan clock 6
parameter	scan_cycle6  = 4'b0111; //scan clock 7
parameter   scan_cycle7  = 4'b1000; //scan clock 7
  
parameter   D_L0_4x4     = 2'd0;
parameter   D_L0_8x4     = 2'd1;    //same as software
parameter   D_L0_4x8     = 2'd2;    //same as software
parameter   D_L0_8x8     = 2'd3;

parameter	SLICE_TYPE_I = 2'd2;
parameter	SLICE_TYPE_P = 2'd0;
parameter	SLICE_TYPE_B = 2'd1;

parameter   IDLE         = 3'b000;
parameter	E_INTRA4x4   = 3'b001;
parameter	E_INTRA16x16 = 3'b010;
parameter	E_P16x16     = 3'b011;
parameter	E_P16x8      = 3'b100;
parameter	E_P8x16      = 3'b101;
parameter	E_P8x8       = 3'b110;

parameter   P_16x16      = 2'b00;
parameter	P_16x8       = 2'b01;
parameter	P_8x16       = 2'b10;
parameter	P_8x8        = 2'b11;

parameter   I_4x4        = 1'b0;
parameter	I_16x16      = 1'b1;

parameter   D_8x8        = 2'd0;
parameter   D_8x4        = 2'd1;
parameter   D_4x8        = 2'd2;
parameter   D_4x4        = 2'd3;

	
	
	
input                     clk, rst_n;        // 
input                     cavlc_en;          // 
input  	                  start;             // 
input                     mb_type_intra;     // intra mb type
input	          [8:0]   cbp ;              // which 8*8 block is 0 
input	          [1:0]   chroma_mode ;      // 
input	          [1:0]   intra16x16_mode ;  // 
input	          [63:0]  intra4x4_bm ;      // intra used pred mode
input	          [63:0]  intra4x4_pm ;      // intra prev pred mode 
input             [4:0]   cnt4x4 ;           // 4*4 count (have header)
input             [3:0]   scan_state ;       // 
input             [2:0]   control_state ;    // block hua fen 
input                     mode;              // inter or intra
input             [2*(`FMVD_LEN+1)-1:0]  mvd_i ;   // mvd
input             [7:0]   sub_partition ;    // sub partition
input             [15:0]  ref_idx ;          // can kao zhen xin xi
input             [1:0]   mb_type_inter;	 // inter mb type
input		  [5:0]   qp;		     //input qp parameter.
input             [7:0]   mb_x;
input             [7:0]   mb_y;

output    reg     [8:0]   codebit0;          // code of bits
output    reg     [4:0]   codelength0;       // code bits long
output    reg     [2:0]   state;             // 
output    reg             scan_en;           // 
output    reg             valid;             // 
output            [5:0]   cnt;               // 
output            [3:0]   i_cbp_luma;        // 
output            [1:0]   i_cbp_chroma;      // 
output            [2:0]   i_cbp_dc;          // 
output                    scan_done;         // scan over
output                    skip;              // 
output                    mvd_valid;         // 
output            [3:0]   mvd_addr;          // 

//-----------------------------


reg  [2:0] next_state;
reg  [3:0] mode_used0, mode_pred0;
reg  [5:0] cnt;
reg        done;
reg [5:0] qp_catch;
reg  [2:0] state_delay;


wire [5:0] intra16x16_type_length;
wire [3:0] intra16x16_ue_length;
wire [2:0] chroma_length;
wire [2:0] chroma_ue_length;
wire [4:0] mb_i_offset;
wire signed [5:0] delta_qp;
wire [10:0] delta_qp_codebit;
wire [3:0] delta_qp_length;


always @(posedge clk or negedge rst_n) begin
	if (~rst_n)
		qp_catch <= 'd0;
	else if (mb_x=='d0 && mb_y=='d0) qp_catch <= qp;
	else if ((state_delay == E_INTRA4x4 && cnt == 'd19 && (i_cbp_luma!=0 ||i_cbp_chroma != 0)) || 
		 (state_delay == E_INTRA16x16 && cnt == 'd3) || 
		 (state_delay == E_P16x16 && cnt =='d4 && (i_cbp_luma!=0 ||i_cbp_chroma != 0)) || 
		 (state_delay == E_P16x8 && cnt == 'd7 && (i_cbp_luma!=0 ||i_cbp_chroma != 0)) ||
		 (state_delay == E_P8x16 && cnt == 'd7 && (i_cbp_luma!=0 ||i_cbp_chroma != 0)) ||
		 (state_delay == E_P8x8 && cnt == 'd38 && (i_cbp_luma!=0 ||i_cbp_chroma != 0))
		)
		qp_catch <= qp;
end
/*
always @(posedge clk or negedge rst_n) begin
	if (~rst_n)
		qp_catch <= 'd0;
	else if ((state_delay == E_INTRA4x4 && cnt == 'd19 && (i_cbp_luma!=0 ||i_cbp_chroma != 0) ) || 
		 (state_delay == E_INTRA16x16 && cnt == 'd3) || 
		 (state_delay == E_P16x16 && cnt == 'd4) || 
		 (state_delay == E_P16x8 && cnt == 'd7 ) ||
		 (state_delay == E_P8x16 && cnt == 'd7 ) ||
		 (state_delay == E_P8x8 && cnt == 'd38 )
		)
		qp_catch <= qp;
end
*/
assign delta_qp =(mb_x=='d0 && mb_y=='d0) ? 'd0 : (qp - qp_catch);

Delta_qp_enc u_Delta_qp_enc (
				.delta_qp (delta_qp),
				.codebit  (delta_qp_codebit),
				.length   (delta_qp_length)
);


// state change FSM
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin 
		state <= IDLE;
	end
	else begin
		state <= next_state;
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) state_delay <= IDLE;
	else state_delay <= state;
end

// clock count at state working
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin 
		cnt <= 0;
	end
	else if(state!=IDLE)begin
		cnt <= cnt + 1'b1;
	end
	else begin
		cnt <= 0;
	end
end



//skip      could only coding header then skip
assign skip = i_cbp_luma == 0 && i_cbp_chroma == 0 && (
			       ( control_state == E_INTRA4x4   && ( cnt==5'd19 ))
//				|| ( control_state == E_INTRA16x16 && ( cnt==5'd2  ))
				|| ( control_state == E_P16x16     && ( cnt==5'd5  ))
				|| ( control_state == E_P16x8      && ( cnt==5'd7  ))
				|| ( control_state == E_P8x16      && ( cnt==5'd7  ))
				|| ( control_state == E_P8x8       && ( cnt==6'd38 )) );


// scan over				
assign scan_done = ( cavlc_en && scan_state == scan_cycle7 && (
		 ( control_state != E_INTRA16x16 && control_state != E_INTRA16x16 && 
		 ( cnt4x4 == 5'd25 || cnt4x4 == 5'd17&&i_cbp_chroma != 2'd2
		|| cnt4x4 == 5'd15 && i_cbp_chroma == 2'd0
		|| cnt4x4 == 5'd11 && i_cbp_chroma == 2'd0 && ~i_cbp_luma[3]
		|| cnt4x4 == 5'd7  && i_cbp_chroma == 2'd0 && ~i_cbp_luma[3]&& ~i_cbp_luma[2]
		|| cnt4x4 == 5'd3  && i_cbp_chroma == 2'd0 && ~i_cbp_luma[3]&& ~i_cbp_luma[2]&& ~i_cbp_luma[1]))
  		|| (control_state == E_INTRA16x16) &&
//  		 ( cnt4x4 == 5'd26 || cnt4x4 == 5'd18 && i_cbp_chroma != 2'd2)))? 1'b1 : 1'b0;
  		(cnt4x4 == 5'd26 
  		|| i_cbp_luma=='d0&&(i_cbp_chroma=='d1&&cnt4x4=='d18)
 		|| i_cbp_luma!=0&&( cnt4x4 == 5'd16&&i_cbp_chroma == 2'd0||cnt4x4 == 5'd18&&i_cbp_chroma != 2'd2)
 		|| i_cbp_luma=='d0&&i_cbp_chroma=='d0&&cnt4x4=='d0 ) ) )? 1'b1 : 1'b0;
		 

//  judge scan_en valid or not
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)  
		scan_en <= 1'b0;
	else if(scan_done)
		scan_en <= 1'b0;
	else if(cavlc_en&&~skip)
	    scan_en <= done;
	else 
		scan_en <= 1'b0;
end




// intra 4x4 pred mode --------
always @(*) begin
	if( cnt==5'd1 )begin
		mode_used0 = intra4x4_bm[63:60];  // used 
		mode_pred0 = intra4x4_pm[63:60];  // prev
	end
	else if( cnt==5'd2)begin
		mode_used0 = intra4x4_bm[59:56];
		mode_pred0 = intra4x4_pm[59:56];
	end
	else if( cnt==5'd3)begin
		mode_used0 = intra4x4_bm[55:52];
		mode_pred0 = intra4x4_pm[55:52];
	end
	else if( cnt==5'd4)begin
		mode_used0 = intra4x4_bm[51:48];
		mode_pred0 = intra4x4_pm[51:48];
	end
	else if( cnt==5'd5)begin
		mode_used0 = intra4x4_bm[47:44];
		mode_pred0 = intra4x4_pm[47:44];
	end
	else if( cnt==5'd6)begin
		mode_used0 = intra4x4_bm[43:40];
		mode_pred0 = intra4x4_pm[43:40];
	end
	else if( cnt==5'd7)begin
		mode_used0 = intra4x4_bm[39:36];
		mode_pred0 = intra4x4_pm[39:36];
	end
	else if( cnt==5'd8)begin
		mode_used0 = intra4x4_bm[35:32];
		mode_pred0 = intra4x4_pm[35:32];
	end
	else if( cnt==5'd9)begin
		mode_used0 = intra4x4_bm[31:28];
		mode_pred0 = intra4x4_pm[31:28];
	end
	else if( cnt==5'd10)begin
		mode_used0 = intra4x4_bm[27:24];
		mode_pred0 = intra4x4_pm[27:24];
	end
	else if( cnt==5'd11)begin
		mode_used0 = intra4x4_bm[23:20];
		mode_pred0 = intra4x4_pm[23:20];
	end
	else if( cnt==5'd12)begin
		mode_used0 = intra4x4_bm[19:16];
		mode_pred0 = intra4x4_pm[19:16];
	end
	else if( cnt==5'd13)begin
		mode_used0 = intra4x4_bm[15:12];
		mode_pred0 = intra4x4_pm[15:12];
	end
	else if( cnt==5'd14)begin
		mode_used0 = intra4x4_bm[11:8];
		mode_pred0 = intra4x4_pm[11:8];
	end
	else if( cnt==5'd15)begin
		mode_used0 = intra4x4_bm[7:4];
		mode_pred0 = intra4x4_pm[7:4];
	end
	else if( cnt==5'd16)begin
		mode_used0 = intra4x4_bm[3:0];
		mode_pred0 = intra4x4_pm[3:0];
	end
	else begin
		mode_used0 = 4'b0 ;
		mode_pred0 = 4'b0 ;
	end
end



//header state 
always @(*) begin
	case(state)
		IDLE : begin
			valid = 0;
			if(mode==INTRA&& cavlc_en && start)begin
				if(mb_type_intra==I_4x4 )
					next_state = E_INTRA4x4;
				else if(mb_type_intra==I_16x16)
					next_state = E_INTRA16x16;   
			// add by xyuan 
			    else  
			        next_state = IDLE; 
			// end by xyuan 
			end
			else if(mode==INTER&& cavlc_en && start) begin
				if(mb_type_inter==P_16x16)
					next_state = E_P16x16;
				else if(mb_type_inter==P_16x8)
					next_state = E_P16x8;
				else if(mb_type_inter==P_8x16)
					next_state = E_P8x16;
				else if(mb_type_inter==P_8x8)
					next_state = E_P8x8;
				else 
					next_state = IDLE;
			end
			// add by xyuan 
			    else  
			        next_state = IDLE; 
			// end by xyuan		
		end
		E_INTRA4x4,E_INTRA16x16, E_P16x16,E_P16x8,E_P8x16,E_P8x8 : begin
			valid = 1'b1;
			if(cavlc_en && ~done)
				next_state = state;
			else 
				next_state = IDLE;
		end		
		default: begin
			valid = 1'b0;
			next_state = IDLE;
		end
	endcase
end

// reg  [1:0] sub_partition0;
reg  [2:0] sub_part0;
wire [2:0] sub_part_length0;
wire [5:0] cbp_i;
wire [1:0] i_cbp_chroma;
wire [2:0] i_cbp_dc;
wire [5:0] tmpVal;
wire [5:0] intra4x4_cbp;
wire [5:0] inter_cbp;
wire [5:0] cbp_code;
wire [5:0] cbp_codebit;
wire [3:0] cbp_code_length;
wire [8:0] mvd_code0;
wire [4:0] mvd_length0;


//----------sub partition header coding-----------
always @(*) begin
	if(cnt==1'd1)
		sub_part0 = sub_partition[1:0]+1'b1; // +1 ????
	else if(cnt==2'd2)
		sub_part0 = sub_partition[3:2]+1'b1;
	else if(cnt==2'd3)
		sub_part0 = sub_partition[5:4]+1'b1;
	else if(cnt==3'd4)
		sub_part0 = sub_partition[7:6]+1'b1;
	else
		sub_part0 = 3'd1;  
end

assign sub_part_length0 = (sub_part0==2'd1)?3'd1  // 8*8
						: (sub_part0==3'd4)?3'd5  // 4*4
						: 3'd3;  // 4*8   8*4
//-------------------------------------------------						



/**********************************************
assign sub_part0 =  (sub_partition0=='d0)? 3'd1
				  : (sub_partition0=='d1)? 3'd2
				  : (sub_partition0=='d2)? 3'd3
				  : 3'd4;
**********************************************/



//----------intra 16*16 header coding---------------
assign tmpVal = {i_cbp_chroma,2'b0};

assign intra16x16_type_length = 2'd2 + intra16x16_mode
								+ tmpVal + ((i_cbp_luma==0)?1'b0:4'd12);
	
//assign intra16x16_ue_length = (intra16x16_type_length<5'd31)? 4'd11 : 4'd13;
assign intra16x16_ue_length = (intra16x16_type_length>6'd15 )? 4'd9
							: (intra16x16_type_length>6'd7  )? 4'd7
							: (intra16x16_type_length>6'd3  )? 4'd5
							: (intra16x16_type_length>6'd1  )? 4'd3
							: 4'd1;
//--------------------------------------------------


//------------chroma header coding -----------------
assign chroma_length = chroma_mode + 1'b1;
assign chroma_ue_length = (chroma_length==1'b1)? 3'd1 
                        : (chroma_length<3'b100)? 3'd3
						: 3'd5;
//--------------------------------------------------


assign i_cbp_dc     = cbp[8:6];
assign i_cbp_chroma = cbp[5:4];
assign i_cbp_luma   = cbp[3:0];

//--------------  cbp coning ---------------------
assign cbp_i = {i_cbp_chroma, i_cbp_luma};
cbp_enc u_cbp_enc(
	.cbp          ( cbp_i        ),
	.intra4x4_cbp ( intra4x4_cbp ),  // intra cbp coding
	.inter_cbp    ( inter_cbp    )   // inter cbp coding
);

assign cbp_code = (mode==INTRA)? intra4x4_cbp : inter_cbp;

assign cbp_codebit = cbp_code + 1'b1; //add in table.
assign cbp_code_length =(cbp_codebit>6'd31 )? 4'd11
					  : (cbp_codebit>6'd15 )? 4'd9
					  : (cbp_codebit>6'd7  )? 4'd7
					  : (cbp_codebit>6'd3  )? 4'd5
					  : (cbp_codebit>6'd1  )? 4'd3
					  : 4'd1;
//---------------------------------------------------


//-------------------- mvd coding--------------------
wire [`FMVD_LEN:0] mvd;
assign mvd=(cnt[0])? mvd_i[2*`FMVD_LEN+1:`FMVD_LEN+1]:mvd_i[`FMVD_LEN:0];
wire [`FMVD_LEN:0] mvd_t;
assign mvd_t= ~mvd+1'b1;  // get mvd complement
assign mvd_code0 = mvd[`FMVD_LEN]? {mvd_t[`FMVD_LEN-1:0],1'b1} 
				: {mvd[`FMVD_LEN-1:0],1'b0};

assign mvd_length0 = (mvd_code0>8'd255)? 5'd17
				   : (mvd_code0>7'd127)? 4'd15
				   : (mvd_code0>6'd63 )? 4'd13
				   : (mvd_code0>6'd31 )? 4'd11
				   : (mvd_code0>6'd15 )? 4'd9
				   : (mvd_code0>6'd7  )? 4'd7
				   : (mvd_code0>6'd3  )? 4'd5
				   : (mvd_code0>6'd1  )? 4'd3
				   : 4'd1;
//---------------------------------------------------


//macroblock header encoding
always @(*) begin
	if(state == E_INTRA4x4) begin //begin of intra4x4    //offset
		if(cnt==0)begin 
			codebit0 = 9'b1;
			codelength0 = 1'b1;
		end
		else if(cnt<5'd17) begin  //8x8 模式判决	//mode
			if(mode_used0 == mode_pred0)begin
				codebit0 = 9'b1;
				codelength0 = 1'b1;
			end
			else begin
				if(mode_used0>mode_pred0)begin
					codebit0 = mode_used0-1'b1;
					codelength0 = 3'd4;
				end
				else begin
					codebit0 = mode_used0;
					codelength0 = 3'd4;
				end
			end
		end
		else if(cnt== 5'd17)begin  // chroma header coding
			codebit0 = chroma_length;
			codelength0 = chroma_ue_length;
		end
		//cbp
		else if(cnt == 5'd18) begin  // intra cbp coding
			codebit0 = cbp_codebit;
			codelength0 = cbp_code_length;
		end
		else if(cnt == 5'd19 && (i_cbp_luma!=0 ||i_cbp_chroma != 0))begin//delta qp
			codebit0 = delta_qp_codebit;
			codelength0 = delta_qp_length;
		end
		else begin // end
			codebit0 = 0;
			codelength0 = 0;
		end			
	end
	
	else if(state == E_INTRA16x16) begin // intra16x16
	 	if(cnt==0) begin  // intar 16*16 header 
//			codebit0 = intra16x16_type_length+1'b1;
			codebit0 = intra16x16_type_length;
			codelength0 = intra16x16_ue_length;
		end
		else if(cnt==1'b1)begin
			codebit0 = chroma_length; // intar 16*16 chroma header
			codelength0 = chroma_ue_length;
		end
		else begin // delte qp
			codebit0 = delta_qp_codebit;
			codelength0 = delta_qp_length;
		end
	end	
	
	else if(state == E_P16x16) begin // inter 16*16
		if(cnt==0)begin //+1'b1  inter macroblock
			codebit0 = 2'b11;
			codelength0 = 'd2;
		end
		else if(cnt<2'd3) begin  // mvd coding
			codebit0 = mvd_code0;
			codelength0 = mvd_length0;
		end
		else if(cnt==2'd3) begin // cbp
			codebit0 = cbp_codebit;
			codelength0 = cbp_code_length;
		end
		else if(cnt == 3'd4 && (i_cbp_luma!=0||i_cbp_chroma!= 0))begin  //transform delta qp
		    codebit0 = delta_qp_codebit;
			codelength0 = delta_qp_length;
		end
		else begin // end 
			codebit0 = 1'b0;
			codelength0 = 1'b0;
		end
	end
	
	else if(state == E_P16x8 ||state == E_P8x16) begin // inter 8*16 or 16*8
		if(cnt==0)begin //+1'b1 !  intra macroblock  header
			if(state == E_P16x8)begin
				codebit0 = 4'b1010;
				codelength0 = 'd4;
			end
			else begin
				codebit0 = 4'b1011;
				codelength0 = 'd4;
			end
		end
		else if(cnt<'d5) begin // mvd  2*2 (2block * 2 direction)
			codebit0    = mvd_code0;
			codelength0 = mvd_length0;
		end
		
		else if(cnt==3'd6) begin // cbp
			codebit0    = cbp_codebit;
			codelength0 = cbp_code_length;
		end
		else if(cnt == 3'd7 && (i_cbp_luma!=0 ||i_cbp_chroma != 0)) begin//transform // 摆动 qp
			codebit0 = delta_qp_codebit;
			codelength0 = delta_qp_length;
		end
		else begin // end
			codebit0  = 1'b0;
			codelength0 = 1'b0;
		end
	end
	
	else if(state == E_P8x8) begin  // inter 8*8
		if(cnt==0) begin // +1'b1 !inter macroblock  header
			codebit0 = 6'b100101;
			codelength0 = 'd6;
		end
		else if(cnt<3'd5) begin // every 4 8*8 sub-partition   sub header
			codebit0 = sub_part0;
			codelength0 = sub_part_length0;
		end
		else if(cnt<6'd37)begin // every 16 *2 block mvd
			codebit0 = mvd_code0;
			codelength0 = mvd_length0;
		end
		else if(cnt==6'd37)begin // cbp
			codebit0 = cbp_codebit;
			codelength0 = cbp_code_length;
		end
		else if(cnt==6'd38&&(i_cbp_luma!=0 || i_cbp_chroma != 0))begin  // delta qp
			codebit0 = delta_qp_codebit;
			codelength0 = delta_qp_length; 
		end
		else begin // end
			codebit0  = 1'b0;
			codelength0 = 1'b0;
		end
	end
	
	else begin //default values
        codebit0 = 0;
		codelength0 = 0;
	end	
end



//every partition of macroblock header encoding  over flag
always @(*) begin
	if(state == E_INTRA4x4)
		if(cnt==5'd19)
			done = 1'b1;
		else
			done = 1'b0;	
	else if(state == E_INTRA16x16) 
		if(cnt==2'd2)		
			done = 1'b1;
		else
			done = 1'b0;
	else if(state==E_P16x16)
		if(cnt==3'd5)
			done = 1'b1;
		else
			done = 1'b0;
	else if(state==E_P8x16||state==E_P16x8)
		if(cnt==3'd7)		
			done = 1'b1;
		else
			done = 1'b0;
	else if(state==E_P8x8)
		if(cnt==6'd38)		
			done = 1'b1;
		else
			done = 1'b0;
	else
		done = scan_en;	
end


//-----------get out valid mvd ----------------------------------------
//mvd_addr generate
/*
reg [3:0] mvd_addr;
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		mvd_addr <= 4'd0;	
	else if(state==E_P16x8||state==E_P8x16)begin
		if(cnt<2'd2)
			mvd_addr <= 4'd0;
		else 
			mvd_addr <= 4'd12; // 每个计划分的块中的4*4块的mvd是相同的
	end
	
	else if(state==E_P8x8) begin
		if(cnt>3'd4&&cnt<6'd37)begin
			if(~cnt[0]) 
				mvd_addr<=mvd_addr+1'b1; // 每一个mvd地址对应的存储空间里放的是一个4*4块的x、y两个分量
			else 
				mvd_addr<=mvd_addr;
		end
		else 
			mvd_addr <= 4'd0;
	end
	
	else begin
		mvd_addr <= mvd_addr;			
	end
end
*/
reg [3:0] mvd_addr_d;
reg [3:0] mvd_addr;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n)
		mvd_addr_d <= 'd0;
	else
		mvd_addr_d <= mvd_addr;
end

always @(*)begin
	if(state==E_P16x8||state==E_P8x16)begin
		if(cnt<2'd2)
			mvd_addr = 4'd0;
		else 
			mvd_addr = 4'd12; // 每个计划分的块中的4*4块的mvd是相同的
	end
	
	else if(state==E_P8x8) begin
		if(cnt>3'd4&&cnt<6'd37)begin
			if(~cnt[0]) 
				mvd_addr =mvd_addr_d+1'b1; // 每一个mvd地址对应的存储空间里放的是一个4*4块的x、y两个分量
			else 
				mvd_addr =mvd_addr_d;
		end
		else 
			mvd_addr = 4'd0;
	end
	
	else begin
		mvd_addr = mvd_addr_d;			
	end
end

reg mvd_valid;

//mvd_valid generate
always @(*) begin
	if(state == E_P8x8) begin  // for 8*8 partition
		if(cnt<3'd5) 
			mvd_valid = 1'b1;  // 这时的有效并不是但指mvd 实际上是指编码有效
		else if(cnt<4'd13) begin            // first 8*8 block
			if(sub_partition[1:0]==D_8x8)begin
				if(cnt==3'd5||cnt==3'd6)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else if(sub_partition[1:0]==D_8x4)begin
				if(cnt==3'd5||cnt==3'd6||cnt==4'd9||cnt==4'd10)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else if(sub_partition[1:0]==D_4x8)begin
				if(cnt==3'd5||cnt==3'd6||cnt==3'd7||cnt==4'd8)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else 
				mvd_valid = 1'b1;
		end
		
		else if(cnt<5'd21)begin  // second 8*8 block 
			if(sub_partition[3:2]==D_8x8)begin
				if(cnt==4'd13||cnt==4'd14)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else if(sub_partition[3:2]==D_8x4)begin
				if(cnt==4'd13||cnt==4'd14||cnt==5'd17||cnt==5'd18)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else if(sub_partition[3:2]==D_4x8)begin
				if(cnt==4'd13||cnt==4'd14||cnt==4'd15||cnt==5'd16)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else 
				mvd_valid = 1'b1;
		end
		
		else if(cnt<5'd29)begin  // third 8*8 block 
			if(sub_partition[5:4]==D_8x8)begin
				if(cnt==5'd21||cnt==5'd22)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else if(sub_partition[5:4]==D_8x4)begin
				if(cnt==5'd21||cnt==5'd22||cnt==5'd25||cnt==5'd26)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else if(sub_partition[5:4]==D_4x8)begin
				if(cnt==5'd21||cnt==5'd22||cnt==5'd23||cnt==5'd24)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else 
				mvd_valid = 1'b1;
		end		
		else if(cnt<6'd37)begin  // fourth 8*8 block 
			if(sub_partition[7:6]==D_8x8)begin
				if(cnt==5'd29||cnt==5'd30)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else if(sub_partition[7:6]==D_8x4)begin
				if(cnt==5'd29||cnt==5'd30||cnt==6'd33||cnt==6'd34)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else if(sub_partition[7:6]==D_4x8)begin
				if(cnt==5'd29||cnt==5'd30||cnt==5'd31||cnt==6'd32)
					mvd_valid = 1'b1;
				else 
					mvd_valid = 1'b0;
			end
			else 
				mvd_valid = 1'b1;
		end
		else  begin            //if(cnt>6'd36)
			mvd_valid = 1'b1;
		end
	end
	else begin
		mvd_valid = 1'b1;
	end
end
//------------------------------------------------------------------------


endmodule
