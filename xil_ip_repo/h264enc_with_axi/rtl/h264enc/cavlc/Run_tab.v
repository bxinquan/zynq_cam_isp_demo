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
// Filename       : Run_tab.v
// Author         : huibo zhong
// Created        : 2011-05-12
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module Run_tab(
				addr0,
				addr1,
				RunBeforeCode0,
				RunBeforeCode1
);
input  [5:0] addr0;
input  [5:0] addr1;

output reg [6:0] RunBeforeCode0;
output reg [6:0] RunBeforeCode1;


always @(*)begin
	case(addr0) 
/*i_zero_left 1*/
	6'o00: RunBeforeCode0 =  7'h11 ;
	6'o01: RunBeforeCode0 =  7'h01 ;
	6'o02: RunBeforeCode0 =  7'h00 ;
	6'o03: RunBeforeCode0 =  7'h00 ;
	6'o04: RunBeforeCode0 =  7'h00 ;
	6'o05: RunBeforeCode0 =  7'h00 ;
	6'o06: RunBeforeCode0 =  7'h00 ;
	6'o07: RunBeforeCode0 =  7'h00 ;

/*i_zero_left 2*/
    6'o10: RunBeforeCode0 =  7'h11 ;
    6'o11: RunBeforeCode0 =  7'h12 ;
    6'o12: RunBeforeCode0 =  7'h02 ;
    6'o13: RunBeforeCode0 =  7'h00 ;
    6'o14: RunBeforeCode0 =  7'h00 ;
    6'o15: RunBeforeCode0 =  7'h00 ;
    6'o16: RunBeforeCode0 =  7'h00 ;
    6'o17: RunBeforeCode0 =  7'h00 ;

/*i_zero_left 3*/
    6'o20: RunBeforeCode0 =  7'h32 ;
    6'o21: RunBeforeCode0 =  7'h22 ;
    6'o22: RunBeforeCode0 =  7'h12 ;
    6'o23: RunBeforeCode0 =  7'h02 ;
    6'o24: RunBeforeCode0 =  7'h00 ;
    6'o25: RunBeforeCode0 =  7'h00 ;
    6'o26: RunBeforeCode0 =  7'h00 ;
    6'o27: RunBeforeCode0 =  7'h00 ;

/*i_zero_left 4*/
    6'o30: RunBeforeCode0 =  7'h32 ;
    6'o31: RunBeforeCode0 =  7'h22 ;
    6'o32: RunBeforeCode0 =  7'h12 ;
    6'o33: RunBeforeCode0 =  7'h13 ;
    6'o34: RunBeforeCode0 =  7'h03 ;
    6'o35: RunBeforeCode0 =  7'h00 ;
    6'o36: RunBeforeCode0 =  7'h00 ;
    6'o37: RunBeforeCode0 =  7'h00 ;

/*i_zero_left 5*/
    6'o40: RunBeforeCode0 =  7'h32 ;
    6'o41: RunBeforeCode0 =  7'h22 ;
    6'o42: RunBeforeCode0 =  7'h33 ;
    6'o43: RunBeforeCode0 =  7'h23 ;
    6'o44: RunBeforeCode0 =  7'h13 ;
    6'o45: RunBeforeCode0 =  7'h03 ;
    6'o46: RunBeforeCode0 =  7'h00 ;
    6'o47: RunBeforeCode0 =  7'h00 ;

/*i_zero_left 6*/
    6'o50: RunBeforeCode0 =  7'h32 ;
    6'o51: RunBeforeCode0 =  7'h03 ;
    6'o52: RunBeforeCode0 =  7'h13 ;
    6'o53: RunBeforeCode0 =  7'h33 ;
    6'o54: RunBeforeCode0 =  7'h23 ;
    6'o55: RunBeforeCode0 =  7'h53 ;
    6'o56: RunBeforeCode0 =  7'h43 ;
    6'o57: RunBeforeCode0 =  7'h00 ;

/*i_zero_left 7*/
    6'o60: RunBeforeCode0 =  7'h73 ;
    6'o61: RunBeforeCode0 =  7'h63 ;
    6'o62: RunBeforeCode0 =  7'h53 ;
    6'o63: RunBeforeCode0 =  7'h43 ;
    6'o64: RunBeforeCode0 =  7'h33 ;
    6'o65: RunBeforeCode0 =  7'h23 ;
    6'o66: RunBeforeCode0 =  7'h13 ;
    6'o67: RunBeforeCode0 =  7'h14 ;
//add by xyuan 
    default: begin
       RunBeforeCode0 =  7'h0 ;
       RunBeforeCode0 =  7'h0 ;
       RunBeforeCode0 =  7'h0 ;
       RunBeforeCode0 =  7'h0 ;
       RunBeforeCode0 =  7'h0 ;
       RunBeforeCode0 =  7'h0 ;
       RunBeforeCode0 =  7'h0 ;
       RunBeforeCode0 =  7'h0 ;
    end
//end by xyuan 
  endcase
end

always @(*)begin
	case(addr1) 
/*i_zero_left 1*/
	6'o00: RunBeforeCode1 =  7'h11 ;
	6'o01: RunBeforeCode1 =  7'h01 ;
	6'o02: RunBeforeCode1 =  7'h00 ;
	6'o03: RunBeforeCode1 =  7'h00 ;
	6'o04: RunBeforeCode1 =  7'h00 ;
	6'o05: RunBeforeCode1 =  7'h00 ;
	6'o06: RunBeforeCode1 =  7'h00 ;
	6'o07: RunBeforeCode1 =  7'h00 ;

/*i_zero_left 2*/
    6'o10: RunBeforeCode1 =  7'h11 ;
    6'o11: RunBeforeCode1 =  7'h12 ;
    6'o12: RunBeforeCode1 =  7'h02 ;
    6'o13: RunBeforeCode1 =  7'h00 ;
    6'o14: RunBeforeCode1 =  7'h00 ;
    6'o15: RunBeforeCode1 =  7'h00 ;
    6'o16: RunBeforeCode1 =  7'h00 ;
    6'o17: RunBeforeCode1 =  7'h00 ;

/*i_zero_left 3*/
    6'o20: RunBeforeCode1 =  7'h32 ;
    6'o21: RunBeforeCode1 =  7'h22 ;
    6'o22: RunBeforeCode1 =  7'h12 ;
    6'o23: RunBeforeCode1 =  7'h02 ;
    6'o24: RunBeforeCode1 =  7'h00 ;
    6'o25: RunBeforeCode1 =  7'h00 ;
    6'o26: RunBeforeCode1 =  7'h00 ;
    6'o27: RunBeforeCode1 =  7'h00 ;

/*i_zero_left 4*/
    6'o30: RunBeforeCode1 =  7'h32 ;
    6'o31: RunBeforeCode1 =  7'h22 ;
    6'o32: RunBeforeCode1 =  7'h12 ;
    6'o33: RunBeforeCode1 =  7'h13 ;
    6'o34: RunBeforeCode1 =  7'h03 ;
    6'o35: RunBeforeCode1 =  7'h00 ;
    6'o36: RunBeforeCode1 =  7'h00 ;
    6'o37: RunBeforeCode1 =  7'h00 ;

/*i_zero_left 5*/
    6'o40: RunBeforeCode1 =  7'h32 ;
    6'o41: RunBeforeCode1 =  7'h22 ;
    6'o42: RunBeforeCode1 =  7'h33 ;
    6'o43: RunBeforeCode1 =  7'h23 ;
    6'o44: RunBeforeCode1 =  7'h13 ;
    6'o45: RunBeforeCode1 =  7'h03 ;
    6'o46: RunBeforeCode1 =  7'h00 ;
    6'o47: RunBeforeCode1 =  7'h00 ;

/*i_zero_left 6*/
    6'o50: RunBeforeCode1 =  7'h32 ;
    6'o51: RunBeforeCode1 =  7'h03 ;
    6'o52: RunBeforeCode1 =  7'h13 ;
    6'o53: RunBeforeCode1 =  7'h33 ;
    6'o54: RunBeforeCode1 =  7'h23 ;
    6'o55: RunBeforeCode1 =  7'h53 ;
    6'o56: RunBeforeCode1 =  7'h43 ;
    6'o57: RunBeforeCode1 =  7'h00 ;

/*i_zero_left 7*/
    6'o60: RunBeforeCode1 =  7'h73 ;
    6'o61: RunBeforeCode1 =  7'h63 ;
    6'o62: RunBeforeCode1 =  7'h53 ;
    6'o63: RunBeforeCode1 =  7'h43 ;
    6'o64: RunBeforeCode1 =  7'h33 ;
    6'o65: RunBeforeCode1 =  7'h23 ;
    6'o66: RunBeforeCode1 =  7'h13 ;
    6'o67: RunBeforeCode1 =  7'h14 ;
//add by xyuan
    default: begin 
       RunBeforeCode1 =  7'h0 ;
       RunBeforeCode1 =  7'h0 ;
       RunBeforeCode1 =  7'h0 ;
       RunBeforeCode1 =  7'h0 ;
       RunBeforeCode1 =  7'h0 ;
       RunBeforeCode1 =  7'h0 ;
       RunBeforeCode1 =  7'h0 ;
       RunBeforeCode1 =  7'h0 ;
    end
//end by xyuan 
  endcase
end

endmodule
