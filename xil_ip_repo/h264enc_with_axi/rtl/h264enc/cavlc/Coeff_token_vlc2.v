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
// Filename       : Coeff_token_vlc2.v
// Author         : huibo zhong
// Created        : 2011-03-26
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
//VLC2
`include "enc_defines.v"

module Coeff_token_vlc2(
				addr,
				vlc_code
);

input       [5:0] addr;
output  reg [7:0] vlc_code;

always @(*)begin
	case(addr)
		6'd 0: vlc_code = 8'hf5 ;
		6'd 1: vlc_code = 8'he3 ;
		6'd 2: vlc_code = 8'h00 ;
		6'd 3: vlc_code = 8'h00 ;
		6'd 4: vlc_code = 8'hb5 ;
		6'd 5: vlc_code = 8'hf4 ;
		6'd 6: vlc_code = 8'hd3 ;
		6'd 7: vlc_code = 8'h00 ;
		6'd 8: vlc_code = 8'h85 ;
		6'd 9: vlc_code = 8'hc4 ;
		6'd10: vlc_code = 8'he4 ;
		6'd11: vlc_code = 8'hc3 ;
		6'd12: vlc_code = 8'hf6 ;
		6'd13: vlc_code = 8'ha4 ;
		6'd14: vlc_code = 8'hb4 ;
		6'd15: vlc_code = 8'hb3 ;
		6'd16: vlc_code = 8'hb6 ;
		6'd17: vlc_code = 8'h84 ;
		6'd18: vlc_code = 8'h94 ;
		6'd19: vlc_code = 8'ha3 ;
		6'd20: vlc_code = 8'h96 ;
		6'd21: vlc_code = 8'he5 ;
		6'd22: vlc_code = 8'hd5 ;
		6'd23: vlc_code = 8'h93 ;
		6'd24: vlc_code = 8'h86 ;
		6'd25: vlc_code = 8'ha5 ;
		6'd26: vlc_code = 8'h95 ;
		6'd27: vlc_code = 8'h83 ;
		6'd28: vlc_code = 8'hf7 ;
		6'd29: vlc_code = 8'he6 ;
		6'd30: vlc_code = 8'hd6 ;
		6'd31: vlc_code = 8'hd4 ;
		6'd32: vlc_code = 8'hb7 ;
		6'd33: vlc_code = 8'he7 ;
		6'd34: vlc_code = 8'ha6 ;
		6'd35: vlc_code = 8'hc5 ;
		6'd36: vlc_code = 8'hf8 ;
		6'd37: vlc_code = 8'ha7 ;
		6'd38: vlc_code = 8'hd7 ;
		6'd39: vlc_code = 8'hc6 ;
		6'd40: vlc_code = 8'hb8 ;
		6'd41: vlc_code = 8'he8 ;
		6'd42: vlc_code = 8'h97 ;
		6'd43: vlc_code = 8'hc7 ;
		6'd44: vlc_code = 8'h88 ;
		6'd45: vlc_code = 8'ha8 ;
		6'd46: vlc_code = 8'hd8 ;
		6'd47: vlc_code = 8'h87 ;
		6'd48: vlc_code = 8'hd9 ;
		6'd49: vlc_code = 8'h78 ;
		6'd50: vlc_code = 8'h98 ;
		6'd51: vlc_code = 8'hc8 ;
		6'd52: vlc_code = 8'h99 ;
		6'd53: vlc_code = 8'hc9 ;
		6'd54: vlc_code = 8'hb9 ;
		6'd55: vlc_code = 8'ha9 ;
		6'd56: vlc_code = 8'h59 ;
		6'd57: vlc_code = 8'h89 ;
		6'd58: vlc_code = 8'h79 ;
		6'd59: vlc_code = 8'h69 ;
		6'd60: vlc_code = 8'h19 ;
		6'd61: vlc_code = 8'h49 ;
		6'd62: vlc_code = 8'h39 ;
		6'd63: vlc_code = 8'h29 ;  
		default:vlc_code = 8'h00;
	endcase
end

endmodule
