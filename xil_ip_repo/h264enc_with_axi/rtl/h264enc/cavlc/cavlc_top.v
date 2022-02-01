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
// Filename       : cavlc_top.v
// Author         : huibo zhong
// Created        : 2011-5-13
// Description    : 
//
//-------------------------------------------------------------------
//
//  Modified      : 2014-06-26 by HLL
//  Description   : loop removed
//
//  $Id$
//
//------------------------------------------------------------------- 
`include "enc_defines.v"

module cavlc_top (
				clk, 
				rst_n,
				mb_x,
				mb_y,
				ref_idx,				
				mode_i,
				qp,
                start,
                cavlc_done,
				
				mb_type_inter,
				sub_partition,
				
				mb_type_intra_i,
				chroma_mode_i ,
				intra16x16_mode_i,
				intra4x4_bm_i ,
				intra4x4_pm_i ,
				
				cbp_i ,
				data_i,
				addr_o,
				
				mvd,
				mvd_addr,
				
				sh_enc_done,
				remain_bit_sh,
				remain_len_sh,

				we, 
				tmpAddr,
				codebit,
				rbsp_trailing
);

parameter   IDLE         = 3'b000,
        	E_INTRA4x4   = 3'b001,
        	E_INTRA16x16 = 3'b010,
        	E_P16x16     = 3'b011,
        	E_P16x8      = 3'b100,
        	E_P8x16      = 3'b101,
        	E_P8x8       = 3'b110,
            INTRA        = 1'b0,
        	INTER        = 1'b1,
            I_4x4        = 1'b0,
        	I_16x16      = 1'b1;

parameter 	scan_init    = 4'b0000, //scan init
        	scan_cycle0  = 4'b0001, //scan clock 1
        	scan_cycle1  = 4'b0010, //scan clock 2
        	scan_cycle2  = 4'b0011, //scan clock 3
        	scan_cycle3  = 4'b0100, //scan clock 4
        	scan_cycle4  = 4'b0101, //scan clock 5
        	scan_cycle5  = 4'b0110, //scan clock 6
        	scan_cycle6  = 4'b0111, //scan clock 7
            scan_cycle7  = 4'b1000; //scan clock 8

parameter 	enc_init   	 = 4'b0000, //enc init
         	enc_cycle0 	 = 4'b0001, //enc clock 1
         	enc_cycle1 	 = 4'b0010, //enc clock 2
         	enc_cycle2 	 = 4'b0011, //enc clock 3
         	enc_cycle3 	 = 4'b0100, //enc clock 4
            enc_cycle4 	 = 4'b0101, //enc clock 5
            enc_cycle5 	 = 4'b0110, //enc clock 6
            enc_cycle6 	 = 4'b0111, //enc clock 7
            enc_cycle7 	 = 4'b1000; //enc clock 8    


input			     clk;                  // 
input			     rst_n;                // 
input                start;                // start cavlc
input                mb_type_intra_i ;     // intra MB partition ******
input    [7:0]       mb_x ;                // mb x number
input    [7:0]       mb_y ;                // mb y number
input	 [8:0]       cbp_i  ;              // coded block pattern
input	 [1:0]       chroma_mode_i ;       // chroma mode
input	 [1:0]       intra16x16_mode_i ;   // 
input	 [63:0]      intra4x4_bm_i ;       // used pred mode
input	 [63:0]      intra4x4_pm_i ;       // pre  pred mode
input	 [255:0]     data_i;
input                sh_enc_done;          // 
input    [7:0]       remain_bit_sh;        // selic remain bits 
input    [2:0]       remain_len_sh;        // selic remain bit leng
input    [2*(`FMVD_LEN+1)-1:0]  mvd ;      // mvd 
input    [7:0]       sub_partition ;       // sub partition 
input    [15:0]      ref_idx ;             // 
input                mode_i;               // inter or intra
input    [1:0]       mb_type_inter;	       // inter MB partition ******
input    [5:0]       qp;
output	 [4:0]	     addr_o;		   //address for luma & chroma ac memory
output               cavlc_done ;          // 
output   [83:0]      codebit;              // code bitstream
output               we ;                  // 8bit data ready, out enable
output   [7:0]       rbsp_trailing;        // ???
output   [3:0]       mvd_addr;             // get mvd    send out mvd's address
output   [3:0]       tmpAddr;              // data out put  address
    
reg    [4:0]   addr_o;
reg            cavlc_done;         
reg    [`RES_WIDTH-1:0]  coeff0;   
reg    [`RES_WIDTH-1:0]  coeff1;   
reg            scan_en;            
reg    [4:0]   cnt4x4;             
reg    [4:0]   cnt4x4_tem;
reg    [3:0]   reg_cbp_luma;       
reg    [1:0]   reg_cbp_chroma;     
reg    [2:0]   control_state;      
reg    [4:0]   cnt4x4_enc;         
reg    [4:0]   cnt4x4_enc_r;       
reg            cavlc_en;           
reg            cavlc_start_r;      
reg            cavlc_start_r2;     
reg    [255:0] data ;
reg    [2:0]   header_state_r;
reg            scan_done_r;


wire   [3:0]   scan_state, enc_state; 
wire   [2:0]   header_state;          
wire           enc_en;                
wire           tmpscan_en;            
wire   [8:0]   codebit0;              
wire   [4:0]   codelength0;           
wire           valid;                 
wire   [3:0]   i_cbp_luma;            
wire   [1:0]   i_cbp_chroma;          
wire   [2:0]   i_cbp_dc;              
wire   [5:0]   cnt;                   
wire           first;                 
wire           skip ;                 
wire           skip_chroma;           
wire           cavlc_start;           
wire           scan_done;

// ------- connecting line -----------------
wire   [16:0]   HeaderCodeOut;
wire   [4:0]    HeaderCodeLength;
wire   [1:0]    s_all;
wire   [1:0]    TrailOneNum;
wire   [1:0]    CoeffIn4x4;
wire   [1:0]    CoeffIn4x4_r;
wire   [4:0]    countcoeff;
wire   [3:0]    countzero;
wire   [15:0]   level_out0;
wire   [15:0]   level_out1;
wire   [3:0]    run_out0; 
wire   [3:0]    run_out1; 
wire   [2:0]    NC;
wire   [5:0]    CoeffBit;
wire   [4:0]    CoeffBitLength;
wire   [2:0]    TrailOneSignBit;
wire   [1:0]    TrailOneSignLength;
wire   [18:0]   CoeffSignCodeBit;
wire   [4:0]    CoeffSignCodeLength;
wire   [4:0]    prefix0;  //zeros
wire   [4:0]    prefix1;
wire   [14:0]   suffix0;
wire   [14:0]   suffix1;
wire   [3:0]    suffixlength0;
wire   [3:0]    suffixlength1;
wire   [1:0]    enable;
wire   [63:0]   TwoLevelCode;
wire   [6:0]    TwoLevelCodeLength;
wire   [13:0]   RunCode;
wire   [3:0]    RunCodeLength;
wire   [2:0]    TZ_code;
wire   [3:0]    TZ_codelength;
wire   [30:0]   ZerosRunCodeBit;
wire   [4:0]    ZerosRunCodeLength;
wire            mvd_valid;
//-------------------------------------------



//------------------ input rename ---------------------
wire                    mode            ;
wire					mb_type_intra   ;
wire	[8:0]			cbp				;
wire	[1:0]			chroma_mode     ;
wire	[1:0]			intra16x16_mode ;
wire	[63:0]			intra4x4_bm     ;
wire	[63:0]			intra4x4_pm     ;

assign mode            = mode_i;
assign mb_type_intra   = mb_type_intra_i; 
assign cbp 			   = cbp_i;        
assign chroma_mode     = chroma_mode_i; 
assign intra16x16_mode = intra16x16_mode_i; 
assign intra4x4_bm     = intra4x4_bm_i; 
assign intra4x4_pm     = intra4x4_pm_i; 

//------------------ input rename ---------------------

// start cavlc reg
always @(posedge clk or negedge rst_n)
	if(!rst_n)
		cavlc_start_r <= 1'b0;	
	else 
		cavlc_start_r <= start;
		
		
		
assign cavlc_start = cavlc_start_r2;
// delay two cycle start signal  is real cavlc start
always @(posedge clk or negedge rst_n)
	if(!rst_n)
		cavlc_start_r2 <= 1'b0;	
	else 
		cavlc_start_r2 <= cavlc_start_r;
	

// cavlc enable	    delay one cycle to real start
always @(posedge clk or negedge rst_n)
	if(!rst_n)
		cavlc_en <= 1'b0;	
	else if(start)
		cavlc_en <= 1'b1;	
	else if(cavlc_done)
		cavlc_en <= 1'b0;
	

// judge cavlc done or not
// for different mode and cbp, the finish of CAVLC is different
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		cavlc_done <= 1'b0;
	end
	else if(skip)begin
		cavlc_done <= 1'b1;
	end
	else if( cavlc_en && enc_state == enc_cycle7&& 
	(( control_state!=E_INTRA16x16&&control_state!=IDLE
	&&((cnt4x4_enc_r == 5'd25)
	|| (cnt4x4_enc_r == 5'd17&&i_cbp_chroma != 2'd2)
	|| (cnt4x4_enc_r == 5'd15&&i_cbp_chroma == 2'd0)
	|| (cnt4x4_enc_r == 5'd11&&i_cbp_chroma == 2'd0&&~i_cbp_luma[3] )
	|| (cnt4x4_enc_r == 5'd7 &&i_cbp_chroma == 2'd0&&~i_cbp_luma[3]&&~i_cbp_luma[2])
	|| (cnt4x4_enc_r == 5'd3 &&i_cbp_chroma == 2'd0&&~i_cbp_luma[3]&&~i_cbp_luma[2]&&~i_cbp_luma[1]) ))
    || (control_state==E_INTRA16x16) 
		&& (cnt4x4_enc_r == 5'd26 
	|| i_cbp_luma=='d0&&(i_cbp_chroma=='d1&&cnt4x4_enc_r=='d18)
    || i_cbp_luma!=0&&(cnt4x4_enc_r == 5'd16&&i_cbp_chroma == 2'd0||cnt4x4_enc_r == 5'd18&&i_cbp_chroma != 2'd2)
    || i_cbp_luma==0 && i_cbp_chroma==0 && cnt4x4_enc_r=='d0  )) )begin
       	cavlc_done <= 1'b1;
  end
  else begin
  	cavlc_done <= 1'b0;
  end
end


// at first deal with header_state
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		header_state_r <= 'd0;
	else 
		header_state_r <= header_state;
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n) begin
		control_state <= 0;
	end
	else if(header_state!=IDLE&&header_state_r==IDLE)begin
		control_state <= header_state;
	end
	else begin
		control_state <= control_state;
	end
end

always @(*) begin        // read in luma/columa DC/AC  of  intra 16*16 partition, modified by Forrestshang
	if( mode==INTRA&&mb_type_intra == I_16x16 ) begin
		if( cnt4x4 == 0 ) begin
			//data = intra16x16_dc ; // header
			data = data_i;
		end
		else if( cnt4x4 < 5'd17 )begin  // every 4*4 luma ac 256 bit ????
			data = data_i ;   // every dc 16 bit ****
		end
		else if( cnt4x4 == 5'd17 ) begin
		//	data = { 192'b0, data_i[255:192] } ;  // cr_dc is 2*2 block, in the [255:192]
			//data = {192'b0, cr_dc};
			data = data_i;
		end
		else if( cnt4x4 == 5'd18 ) begin
		//	data = { 192'b0, data_i[127:64] } ;   //cb_dc in the [127:64] of the data_i
			//data = {192'b0, cb_dc};
			data = data_i;
		end
		else if( cnt4x4 < 5'd27 )begin
			data = data_i ;    //cr_ac from data_i
		end
		//else if( cnt4x4 < 5'd27 ) begin
		//	data = data_i ;    //cb_ac from data_i
		//end
		else data = 'd0;
	end
	else if(mode==INTRA) begin  // 4*4 partition
		if( cnt4x4 < 5'd16 )begin
			//if(cnt4x4 == 4'd12 && ~reg_cbp_luma[3]
			//|| cnt4x4 == 4'd7  && ~reg_cbp_luma[3]&&~reg_cbp_luma[2]
			//|| cnt4x4 == 4'd4  && ~reg_cbp_luma[1]&&~reg_cbp_luma[2]&&~reg_cbp_luma[3]) begin
			//	data = { 192'b0,cr_dc } ;  // this time Y have be read over     turn to U and V
			//end
			//else begin
				data = data_i ;	//intra4x4_ac
			//end
		end
		else if( cnt4x4 == 5'd16 ) begin
			//data = { 192'b0,cr_dc } ;
			data = data_i;
		end
		else if( cnt4x4 == 5'd17 ) begin
			//data = { 192'b0,cb_dc } ;
			data = data_i;
		end
		else if( cnt4x4 < 5'd26 )begin
			data = data_i ; //cr_ac from data_i
		end
		else begin
			data = 'd0 ; //cb_ac from data_i
		end
	end
	//for inter data input
	else  begin
		if( cnt4x4 < 5'd16 )begin
			//if(cnt4x4 == 4'd12 && ~reg_cbp_luma[3]
			//|| cnt4x4 == 4'd8  && ~reg_cbp_luma[3]&&~reg_cbp_luma[2]
			//|| cnt4x4 == 4'd4  && ~reg_cbp_luma[3]&&~reg_cbp_luma[2]&&~reg_cbp_luma[1]
			//|| cnt4x4 == 4'd0  && ~reg_cbp_luma[3]&&~reg_cbp_luma[2]&&~reg_cbp_luma[1]&&~reg_cbp_luma[0]) begin
				//data = { 192'b0,cr_dc } ;
			//end
			//else begin
				data = data_i ; //lever_ac_inter
		    //end
		end
		else if( cnt4x4 == 5'd16 ) begin
			//data = { 192'b0,cr_dc } ;
			data = data_i;
		end
		else if( cnt4x4 == 5'd17 ) begin
			//data = { 192'b0,cb_dc } ;
			data = data_i;
		end
		else if( cnt4x4 < 5'd26 )begin
			data = {16'b0,data_i[239:0]} ; //level_ac_inter
		end
		else begin
			data = 0 ; //level_ac_inter
		end
	end
end


// fill 2 coeff to scan every scan step 
always @(*) begin
	case(scan_state)
		scan_cycle0 : begin
			coeff0 = data[15 : 0 ];
			coeff1 = data[31 : 16];
		end
		scan_cycle1 : begin
			coeff0 = data[47 : 32];
			coeff1 = data[63 : 48];
		end		
		scan_cycle2 : begin
			coeff0 = data[79 : 64];
			coeff1 = data[95 : 80];
		end
		scan_cycle3 : begin
			coeff0 = data[111 : 96 ];
			coeff1 = data[127 : 112];
		end
		scan_cycle4 : begin
			coeff0 = data[143 : 128];
			coeff1 = data[159 : 144];
		end		
		scan_cycle5 : begin
			coeff0 = data[175 : 160];
			coeff1 = data[191 : 176];
		end		
		scan_cycle6 : begin
			coeff0 = data[207 : 192];
			coeff1 = data[223 : 208];
		end		
		scan_cycle7 : begin
			coeff0 = data[239 : 224];
			coeff1 = data[255 : 240];
		end				
		default : begin
			coeff0 = 16'b0;
			coeff1 = 16'b0;
		end
	endcase
end


// every scan over 4*4 block, need hold cnt4*4 to go on at next 4*4 block in the same MB
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		cnt4x4_enc <= 5'd0;
	end
	else if (scan_state == scan_cycle7) begin
		cnt4x4_enc <= cnt4x4;
	end
end
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		cnt4x4_enc_r <= 5'd0;
	end
	else  begin
		cnt4x4_enc_r <= cnt4x4_enc;
	end
end

always@ (posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		cnt4x4 <= 5'b0;
	end
	else begin
		cnt4x4 <= cnt4x4_tem;
	end

end
//addr
always@ (*) begin
	if (mb_type_intra == I_16x16) begin
		if (cnt4x4_tem == 5'd0)
			addr_o ='d24;		
		else if (cnt4x4_tem >='d1 && cnt4x4_tem <= 'd16 )
			addr_o = cnt4x4_tem-'d1;
		else if (cnt4x4_tem == 5'd17 || cnt4x4_tem == 5'd18)
			addr_o = cnt4x4_tem +'d8;
		else if (cnt4x4_tem > 5'd18 && cnt4x4_tem < 5'd27)
			addr_o = cnt4x4_tem - 'd3;
		else
			addr_o = 'd0;
	end
	else begin
		if (cnt4x4_tem <= 5'd15)
			addr_o = cnt4x4_tem ;
		else if (cnt4x4_tem == 5'd16 || cnt4x4_tem == 5'd17) 
			addr_o = cnt4x4_tem + 'd9;
		else if (cnt4x4_tem >= 5'd18 || cnt4x4_tem <= 5'd25)
			addr_o = cnt4x4_tem - 'd2;
		else
			addr_o = 'd0;
	end
end

always @(*) begin
	if(cavlc_start)begin
		if(mb_type_intra==I_16x16)
			cnt4x4_tem = 5'd0;
		else if(~reg_cbp_luma[0]&&~reg_cbp_luma[1]&&~reg_cbp_luma[2]&&~reg_cbp_luma[3]&&(reg_cbp_chroma!=0))
			cnt4x4_tem = 5'd16;
		else if(~reg_cbp_luma[0]&&~reg_cbp_luma[1]&&~reg_cbp_luma[2])
			cnt4x4_tem = 5'd12;
		else if(~reg_cbp_luma[0]&&~reg_cbp_luma[1])
			cnt4x4_tem = 5'd8;
		else if(~reg_cbp_luma[0])
			cnt4x4_tem = 5'd4;
		else 
			cnt4x4_tem = 5'd0;
	end	
	else if(cavlc_en) begin         // when skip several 8*8 blocks, need add 1 to 4*4 count 
		if( scan_state == scan_cycle7 ) begin // scan over one 4*4 block
			if(control_state!=E_INTRA16x16) begin
				if(cnt4x4 =='d0&&~reg_cbp_luma[0]&&~reg_cbp_luma[1]&&~reg_cbp_luma[2]&&~reg_cbp_luma[3]) begin 
					cnt4x4_tem = cnt4x4 + 5'd17;  
				end
				else if(cnt4x4==0   && ~reg_cbp_luma[0]&&~reg_cbp_luma[1]&&~reg_cbp_luma[2]
				     || cnt4x4==3'd3&& ~reg_cbp_luma[1]&&~reg_cbp_luma[2]&&~reg_cbp_luma[3]) begin
					cnt4x4_tem = cnt4x4 + 4'd13;
				end
				else if(cnt4x4 ==0&&~reg_cbp_luma[0]&&~reg_cbp_luma[1]
				     || cnt4x4 ==3'd3&&~reg_cbp_luma[1]&&~reg_cbp_luma[2]
				     || cnt4x4 == 4'd7&&~reg_cbp_luma[2]&&~reg_cbp_luma[3]) begin
					cnt4x4_tem = cnt4x4 + 4'd9;
				end
				else if(cnt4x4==0&&~reg_cbp_luma[0]
				|| cnt4x4==3'd3&&~reg_cbp_luma[1]
				|| cnt4x4==4'd7 &&~reg_cbp_luma[2]
				|| cnt4x4==4'd11&&~reg_cbp_luma[3] )begin
					 cnt4x4_tem = cnt4x4 + 3'd5;
				end
				else if(cnt4x4<5'd16)begin
					cnt4x4_tem = cnt4x4 + 1'd1;
				end
				else if(cnt4x4>5'd15&&cnt4x4<5'd18) begin  // chluma is same to the luma DC
					if(reg_cbp_chroma != 0)begin  // dc
						cnt4x4_tem = cnt4x4 + 1'd1;
					end
					else begin
						cnt4x4_tem = cnt4x4 + 4'd11;
					end
				end
				else if(cnt4x4>5'd17)begin // ac
					if(reg_cbp_chroma == 2'd2)begin
						cnt4x4_tem = cnt4x4 + 1'd1;
					end
					else begin
						cnt4x4_tem = cnt4x4 +4'd8;
					end
				end
				else begin
					cnt4x4_tem = cnt4x4 + 1'd1;
					//cnt4x4_tem = 5'd0; //????
				end
			end
			else begin//if(I_16x16)   when partition is not intra_16*16, first cet4*4 is header
				if(cnt4x4 ==1'd0&&(i_cbp_luma==0)) begin
					if (reg_cbp_chroma == 0)
					cnt4x4_tem = 'd0;
					else
					cnt4x4_tem = cnt4x4 + 5'd17;
				end
				else if( cnt4x4<5'd17)begin
					cnt4x4_tem = cnt4x4 + 1'd1;
				end
				else if( cnt4x4>5'd16 && cnt4x4<5'd18) begin //chroma DC
					if(reg_cbp_chroma != 0)begin
						cnt4x4_tem = cnt4x4 + 1'd1;
					end
					else begin
						cnt4x4_tem = cnt4x4;
					end
				end
				else if(cnt4x4>5'd17 && cnt4x4 < 5'd26) begin
					if(reg_cbp_chroma == 2'd2)begin
						cnt4x4_tem = cnt4x4 + 1'd1;
					end
					else begin
						cnt4x4_tem = cnt4x4;
						//cnt4x4_tem = 5'd0;
					end
				end
				else begin
					cnt4x4_tem = 5'd0;
				end
			end
		end
		else begin
			cnt4x4_tem = cnt4x4;
		end
	end
	else begin
		cnt4x4_tem = 5'd0;  // one MB scan over
	end
end	

// cbp
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		reg_cbp_luma <= 0;
		reg_cbp_chroma <= 0;
	end
	else if(!tmpscan_en) begin
		reg_cbp_luma <= i_cbp_luma;
		reg_cbp_chroma <= i_cbp_chroma;
	end
	else begin
		reg_cbp_luma <= reg_cbp_luma;
		reg_cbp_chroma <= reg_cbp_chroma;
	end
end


//
always @(posedge clk or negedge rst_n)begin
  if(!rst_n)begin
    scan_en <= 1'b0;
  end
  else begin
    scan_en <= tmpscan_en;  // tmpscan_en = scan enable
  end
end



control_fsm u_contorol(
				.clk          ( clk           ),
				.rst_n        ( rst_n         ),
				.scan_en      ( tmpscan_en    ),
				.scan_done    ( scan_done     ),
				.scan_state   ( scan_state    ),
				.enc_state    ( enc_state     ),
				.enc_en       ( enc_en        )
);

MB_header_enc u_MB_header_enc(
				.clk             ( clk             ),
				.rst_n           ( rst_n           ),
				.cavlc_en        ( cavlc_en        ),
				.start           ( cavlc_start     ),
				.mb_type_intra   ( mb_type_intra   ),
				.cbp             ( cbp             ),
				.chroma_mode     ( chroma_mode     ),
				.intra16x16_mode ( intra16x16_mode ),
				.intra4x4_bm     ( intra4x4_bm     ),
				.intra4x4_pm     ( intra4x4_pm     ),
				.control_state   ( control_state   ),
				.cnt4x4          ( cnt4x4          ),
				.scan_state      ( scan_state      ),
				.codebit0        ( codebit0        ),
				.codelength0     ( codelength0     ),
				.state           ( header_state    ),
				.scan_en         ( tmpscan_en      ),
                .valid           ( valid           ), // state 是否为有效
				.cnt             ( cnt             ),
				.i_cbp_luma      ( i_cbp_luma      ),
				.i_cbp_chroma    ( i_cbp_chroma    ),
				.i_cbp_dc        ( i_cbp_dc        ),
				.scan_done       ( scan_done       ),
				.skip            ( skip            ), 
                .mode            ( mode            ),
				.mb_type_inter   ( mb_type_inter   ),
				.mvd_i           ( mvd             ),
				.sub_partition   ( sub_partition   ),
				.ref_idx         ( ref_idx         ),
				.mvd_addr        ( mvd_addr        ),
				.mvd_valid       ( mvd_valid       ), // 是否继续向下编码（其后都为0时可以不在查表了）
				.mb_x		 (mb_x),
				.mb_y		 (mb_y),
				.qp		 (qp)
);

MB_header_packer u_MB_header_bit_packer(
				.codebit0   ( codebit0         ),
				.codelength0( codelength0      ),
				.CodeOut    ( HeaderCodeOut    ),
				.CodeLength ( HeaderCodeLength ),
				.valid      ( valid            ),
				.mvd_valid  ( mvd_valid        )
);

// trailing ones
TrailingOne u_TrailingOne_scan(
				.clk        ( clk         ),
				.rst_n      ( rst_n       ),
				.coeff0     ( coeff0      ),
				.coeff1     ( coeff1      ),
				.state      ( scan_state  ),
				.s_all      ( s_all       ),
				.TrailOneNum( TrailOneNum )
); 

// total non-zeros ~~~ and total zeros
TotalCoefZero u_totalCoeffZero_scan(
				.clk          ( clk           ),
				.rst_n        ( rst_n         ),
				.s_all        ( s_all         ),
				.state        ( scan_state    ),
				.control_state( control_state ),
				.cnt4x4       ( cnt4x4        ),
				.cbp          ( reg_cbp_luma  ),
				.CoeffIn4x4_o ( CoeffIn4x4    ), // CoeffIn4x4   delay
				.CoeffIn4x4   ( CoeffIn4x4_r  ), // every 2 coeff    how many zero
				.totalcoeff   ( countcoeff    ),
				.totalzeros   ( countzero     )
); 


level_run_buf u_LevelRunBuf(
				.clk           ( clk           ),
				.rst_n         ( rst_n         ),
				.scan_en       ( scan_en       ), 
				.coeff0        ( coeff0        ),
				.coeff1        ( coeff1        ),
				.scan_state    ( scan_state    ),
				.enc_state     ( enc_state     ),
				.control_state ( control_state ),
				.enc_en        ( enc_en        ),
				.cnt4x4        ( cnt4x4        ),
				.s_all         ( s_all         ),
				.CoeffIn4x4    ( CoeffIn4x4    ),  // CoeffIn4x4   delay
				.CoeffIn4x4_r  ( CoeffIn4x4_r  ),  // every 2 coeff    how many zero
				.totalcoeff    ( countcoeff    ),
				.level0_o      ( level_out0    ),
				.level1_o      ( level_out1    ),
				.run0_o        ( run_out0      ),
				.run1_o        ( run_out1      )
); 

NC_compute u_NC_cmp(
				.clk           ( clk           ),
				.rst_n         ( rst_n         ),
				.mb_x          ( mb_x          ),
				.mb_y          ( mb_y          ),
				.cnt4x4        ( cnt4x4_enc    ),
				.cavlc_start   ( start         ),
				.cavlc_done    ( cavlc_done    ),
				.control_state ( control_state ),
				.state         ( enc_state     ),
				.totalcoeff    ( countcoeff    ),
				.NC            ( NC            )
);

Coeff_token_enc u_Coeff_token_enc(
				.clk         ( clk            ),
				.rst_n       ( rst_n          ),
				.state       ( enc_state      ),
				.NC          ( NC             ),//// 
				.TrailOneNum ( TrailOneNum    ),
				.TotalCoeff  ( {countcoeff}   ),
				.CodeBit     ( CoeffBit       ),
				.CodeLength  ( CoeffBitLength )
); 

Coeff_Sign_packer u_coeff_sign_packer(
				.clk                ( clk                 ),
				.rst_n              ( rst_n               ),
				.CoeffCodeBit       ( CoeffBit            ),
				.CoeffCodeLength    ( CoeffBitLength      ),
				.SignCodebit        ( TrailOneSignBit     ),
				.SignCodeLength     ( TrailOneSignLength  ),	
				.CoeffSignCodeBit   ( CoeffSignCodeBit    ),
				.CoeffSignCodeLength( CoeffSignCodeLength ),
				.enc_state          ( enc_state           ),
				.TrailingOneNum     ( TrailOneNum         )
);


level_enc u_level_enc (
				.clk               ( clk                ),
				.rst_n             ( rst_n              ),
				.enc_en            ( enc_en             ), //
				.state             ( enc_state          ),
				.TrailOneNum       ( TrailOneNum        ),
				.totalcoeff        ( countcoeff         ),
				.level0            ( level_out0         ),
				.level1            ( level_out1         ),
				.prefix0           ( prefix0            ),
				.prefix1           ( prefix1            ),
				.suffixlength0     ( suffixlength0      ),
				.suffixlength1     ( suffixlength1      ),
				.suffix0           ( suffix0            ),
				.suffix1           ( suffix1            ),
				.enable            ( enable             ),
				.TrailOneSignBit   ( TrailOneSignBit    ),
				.TrailOneSignLength( TrailOneSignLength )
);


level_bit_packer u_level_bit_packer(
				.clk               ( clk                ),
				.rst_n             ( rst_n              ),
				.enable            ( enable             ),
				.prefix0           ( prefix0            ),
				.prefix1           ( prefix1            ),
				.suffix0           ( suffix0            ),
				.suffix1           ( suffix1            ),
				.suffixlength0     ( suffixlength0      ),
				.suffixlength1     ( suffixlength1      ),
				.TwoLevelCode      ( TwoLevelCode       ),
				.TwoLevelCodeLength( TwoLevelCodeLength )
);


run_enc u_run_enc (
				.clk          ( clk           ),
				.rst_n        ( rst_n         ),
				.enc_en       ( enc_en        ), //
				.state        ( enc_state     ),
				.totalzeros   ( countzero     ),
				.totalcoeff   ( countcoeff    ),
				.runbefore0   ( run_out0      ),
				.runbefore1   ( run_out1      ),
                .RunCode      ( RunCode       ),
                .RunCodelength( RunCodeLength )
);


TotalZeros_enc u_totalzeros_enc(
				.clk                  ( clk           ),
				.rst_n                ( rst_n         ),
				.totalzeros           ( countzero     ),
				.totalcoeff           ( countcoeff    ),
				.control_state        ( control_state ),
				.state                ( enc_state     ),
				.cnt4x4               ( cnt4x4        ),
				.TotalZeros_code      ( TZ_code       ),
				.TotalZeros_codelength( TZ_codelength )
);



Zeros_Run_packer u_zeros_run_packer(
				.clk               ( clk                ),
				.rst_n             ( rst_n              ),
				.state             ( enc_state          ),
				.ZerosCodeBit      ( TZ_code            ),
				.ZerosCodeLength   ( TZ_codelength      ),
				.RunCodebit        ( RunCode            ),
				.RunCodeLength     ( RunCodeLength      ),
				.ZerosRunCodeBit   ( ZerosRunCodeBit    ),
				.ZerosRunCodeLength( ZerosRunCodeLength )
);

BitStream_packer u_bitstream_packer(
				.clk                ( clk                ),
				.rst_n              ( rst_n              ),
				.control_state      ( control_state      ),
				.enc_state          ( enc_state          ),
				.cnt                ( cnt                ),
				.cnt4x4             ( cnt4x4_enc_r       ),
				.TrailOneNum        ( TrailOneNum        ),
				.HeaderCodeBit      ( HeaderCodeOut      ),
				.HeaderCodeLength   ( HeaderCodeLength   ),
				.LevelCodeBit       ( TwoLevelCode       ),
				.LevelCodeLength    ( TwoLevelCodeLength ),
				.CoeffSignCodeBit   ( CoeffSignCodeBit   ),
				.CoeffSignCodeLength( CoeffSignCodeLength),
				.ZerosRunCodeBit    ( ZerosRunCodeBit    ),
				.ZerosRunCodeLength ( ZerosRunCodeLength ),

				.sh_enc_done   ( sh_enc_done   ),
				.remain_bit_sh ( remain_bit_sh ),
				.remain_len_sh ( remain_len_sh ),
				.we            ( we            ),
				.codebit       ( codebit       ),
				.rbsp_trailing (rbsp_trailing  ),
				.tmpAddr       ( tmpAddr       )
);

endmodule
