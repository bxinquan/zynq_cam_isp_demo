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
// Filename       : Coeff_token_vlc1.v
// Author         : huibo zhong
// Created        : 2011-03-26
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
//VLC1
`include "enc_defines.v"

module Coeff_token_vlc1(
				addr,
				vlc_code
);

input      [5:0] addr;
output reg [7:0] vlc_code;

always @(*) begin
		case(addr)
		6'd 0: vlc_code = 8'hb5 ;
		6'd 1: vlc_code = 8'h21 ;
		6'd 2: vlc_code = 8'h00 ;
		6'd 3: vlc_code = 8'h00 ;
		6'd 4: vlc_code = 8'h75 ;
		6'd 5: vlc_code = 8'h74 ;
		6'd 6: vlc_code = 8'h32 ;
		6'd 7: vlc_code = 8'h00 ;
		6'd 8: vlc_code = 8'h76 ;
		6'd 9: vlc_code = 8'ha5 ;
		6'd10: vlc_code = 8'h95 ;
		6'd11: vlc_code = 8'h53 ;
		6'd12: vlc_code = 8'h77 ;
		6'd13: vlc_code = 8'h65 ;
		6'd14: vlc_code = 8'h55 ;
		6'd15: vlc_code = 8'h43 ;
		6'd16: vlc_code = 8'h47 ;
		6'd17: vlc_code = 8'h66 ;
		6'd18: vlc_code = 8'h56 ;
		6'd19: vlc_code = 8'h64 ;
		6'd20: vlc_code = 8'h78 ;
		6'd21: vlc_code = 8'h67 ;
		6'd22: vlc_code = 8'h57 ;
		6'd23: vlc_code = 8'h85 ;
		6'd24: vlc_code = 8'hfa ;
		6'd25: vlc_code = 8'h68 ;
		6'd26: vlc_code = 8'h58 ;
		6'd27: vlc_code = 8'h45 ;
		6'd28: vlc_code = 8'hba ;
		6'd29: vlc_code = 8'hea ;
		6'd30: vlc_code = 8'hda ;
		6'd31: vlc_code = 8'h46 ;
		6'd32: vlc_code = 8'hfb ;
		6'd33: vlc_code = 8'haa ;
		6'd34: vlc_code = 8'h9a ;
		6'd35: vlc_code = 8'h48 ;
		6'd36: vlc_code = 8'hbb ;
		6'd37: vlc_code = 8'heb ;
		6'd38: vlc_code = 8'hdb ;
		6'd39: vlc_code = 8'hca ;
		6'd40: vlc_code = 8'h8b ;
		6'd41: vlc_code = 8'hab ;
		6'd42: vlc_code = 8'h9b ;
		6'd43: vlc_code = 8'h8a ;
		6'd44: vlc_code = 8'hfc ;
		6'd45: vlc_code = 8'hec ;
		6'd46: vlc_code = 8'hdc ;
		6'd47: vlc_code = 8'hcb ;
		6'd48: vlc_code = 8'hbc ;
		6'd49: vlc_code = 8'hac ;
		6'd50: vlc_code = 8'h9c ;
		6'd51: vlc_code = 8'hcc ;
		6'd52: vlc_code = 8'h7c ;
		6'd53: vlc_code = 8'hbd ;
		6'd54: vlc_code = 8'h6c ;
		6'd55: vlc_code = 8'h8c ;
		6'd56: vlc_code = 8'h9d ;
		6'd57: vlc_code = 8'h8d ;
		6'd58: vlc_code = 8'had ;
		6'd59: vlc_code = 8'h1c ;
		6'd60: vlc_code = 8'h7d ;
		6'd61: vlc_code = 8'h6d ;
		6'd62: vlc_code = 8'h5d ;
		6'd63: vlc_code = 8'h4d ;
		default:vlc_code = 8'h00;
	endcase
end

endmodule
	