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
// Filename       : Coeff_token_vlc_chromaDC.v
// Author         : huibo zhong
// Created        : 2011-03-18
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module Coeff_token_vlc_chromaDC(
				addr,
				vlc_code
);

input      [3:0] addr;
output reg [5:0] vlc_code;

always @(*)begin
	case(addr)
		4'd0 : vlc_code = 6'b111_101;//6-1;
		4'd1 : vlc_code = 6'b001_000;//1-1
		4'd2 : vlc_code = 0;//-
		4'd3 : vlc_code = 0;//-
		4'd4 : vlc_code = 6'b100_101;//6-1;
		4'd5 : vlc_code = 6'b110_101;//6-1;
		4'd6 : vlc_code = 6'b001_010;//3-1;
		4'd7 : vlc_code = 0;//-
		4'd8 : vlc_code = 6'b011_101;//6-1;
		4'd9 : vlc_code = 6'b011_110;//7-1;
		4'd10: vlc_code = 6'b010_110;//7-1;
		4'd11: vlc_code = 6'b101_101;//6-1;
		4'd12: vlc_code = 6'b010_101;//6-1;
		4'd13: vlc_code = 6'b011_111;//8-1;
		4'd14: vlc_code = 6'b010_111;//8-1;
		4'd15: vlc_code = 6'b000_110;//7-1;
		default:vlc_code = 6'b0;
	endcase
end

endmodule
