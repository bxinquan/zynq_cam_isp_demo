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
// Filename       : control_fsm.v
// Author         : huibo zhong
// Created        : 2011-05-12
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//-------------------------------------------------------------------
`include "enc_defines.v"

module control_fsm(
				clk,
				rst_n,
				scan_en,
				scan_done,
				scan_state,
				enc_state,
				enc_en
);

parameter   IDLE          = 3'b000,
        	E_INTRA4x4    = 3'b001,
        	E_INTRA16x16  = 3'b010,
        	E_P16x16      = 3'b011,
        	E_P16x8       = 3'b100,
        	E_P8x16       = 3'b101,
        	E_P8x8        = 3'b110;

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



input		    clk ;           // 
input		    rst_n ;         // 
input		    scan_en ;       // scan enable
input           scan_done;      // scan done
output	[3:0]   scan_state;     // 
output	[3:0]   enc_state;      // 
output		    enc_en;         // 



reg               enc_en;
reg 			  tmp_enc_en;
reg 		[3:0] scan_state;
reg			[3:0] enc_state;
reg 		[3:0] scan_next_state;
reg			[3:0] enc_next_state;



always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		enc_en<= 0;
	end
	else if(scan_state==scan_cycle7) begin
		enc_en <= tmp_enc_en ;
	end
	else if( enc_state == enc_cycle6) begin
		enc_en <= tmp_enc_en ;
	end
end



always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		scan_state <= scan_init;
		enc_state  <= enc_init;
	end
	else begin
		scan_state <= scan_next_state;
		enc_state  <= enc_next_state;
	end
end


always @(*)begin
	case(scan_state)
		scan_init:begin 
			tmp_enc_en = 0;
		  if(scan_en)
		    scan_next_state = scan_cycle0;
		  else
		    scan_next_state = scan_init;
		end
		scan_cycle0:begin
		  tmp_enc_en = enc_en  ;        // add by xyuan ; remove latch 
		  if(scan_en)
		    scan_next_state = scan_cycle1;
		  else
		    scan_next_state = scan_init;
		end
		scan_cycle1, scan_cycle2, scan_cycle3, scan_cycle4, scan_cycle5, scan_cycle6 : begin
			tmp_enc_en = enc_en;
		    scan_next_state = scan_state+1'b1;
		end
		scan_cycle7:begin
			tmp_enc_en = 1'b1;
		    if(scan_done)
		        scan_next_state = scan_init;
		    else
		        scan_next_state = scan_cycle0;
		end
		default:begin
			tmp_enc_en = 1'b0;
		    scan_next_state = scan_init;
		end
	endcase
end


always @(*)begin
	case(enc_state)
		enc_init:begin 
		  if(enc_en)
		    enc_next_state = enc_cycle0;
		  else
		    enc_next_state = enc_init;
		end
		enc_cycle0, enc_cycle1, enc_cycle2, enc_cycle3, enc_cycle4, enc_cycle5, enc_cycle6 : begin
		  	enc_next_state = enc_state + 1'b1;
		end
		enc_cycle7:begin
		  if(enc_en)
		    enc_next_state = enc_cycle0;
		  else
		    enc_next_state = enc_init;
		end
		default:begin
		    enc_next_state = enc_init;
		end
	endcase
end

endmodule
