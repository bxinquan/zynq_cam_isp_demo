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
// Filename       : Coeff_token_vlc0.v
// Author         : huibo zhong
// Created        : 2011-03-26
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
//VLC0
`include "enc_defines.v"

module Coeff_token_vlc0(
				addr,
				vlc_code
);

input       [5:0] addr;
output  reg [7:0] vlc_code;

always @(*)begin
	case(addr)
		6'd 0: vlc_code = 8'h55 ;
		6'd 1: vlc_code = 8'h11 ;
		6'd 2: vlc_code = 8'h00 ;
		6'd 3: vlc_code = 8'h00 ;
		6'd 4: vlc_code = 8'h77 ;
		6'd 5: vlc_code = 8'h45 ;
		6'd 6: vlc_code = 8'h12 ;
		6'd 7: vlc_code = 8'h00 ;
		6'd 8: vlc_code = 8'h78 ;
		6'd 9: vlc_code = 8'h67 ;
		6'd10: vlc_code = 8'h56 ;
		6'd11: vlc_code = 8'h34 ;
		6'd12: vlc_code = 8'h79 ;
		6'd13: vlc_code = 8'h68 ;
		6'd14: vlc_code = 8'h57 ;
		6'd15: vlc_code = 8'h35 ;
		6'd16: vlc_code = 8'h7a ;
		6'd17: vlc_code = 8'h69 ;
		6'd18: vlc_code = 8'h58 ;
		6'd19: vlc_code = 8'h46 ;
		6'd20: vlc_code = 8'hfc ;
		6'd21: vlc_code = 8'h6a ;
		6'd22: vlc_code = 8'h59 ;
		6'd23: vlc_code = 8'h47 ;
		6'd24: vlc_code = 8'hbc ;
		6'd25: vlc_code = 8'hec ;
		6'd26: vlc_code = 8'h5a ;
		6'd27: vlc_code = 8'h48 ;
		6'd28: vlc_code = 8'h8c ;
		6'd29: vlc_code = 8'hac ;
		6'd30: vlc_code = 8'hdc ;
		6'd31: vlc_code = 8'h49 ;
		6'd32: vlc_code = 8'hfd ;
		6'd33: vlc_code = 8'hed ;
		6'd34: vlc_code = 8'h9c ;
		6'd35: vlc_code = 8'h4a ;
		6'd36: vlc_code = 8'hbd ;
		6'd37: vlc_code = 8'had ;
		6'd38: vlc_code = 8'hdd ;
		6'd39: vlc_code = 8'hcc ;
		6'd40: vlc_code = 8'hfe ;
		6'd41: vlc_code = 8'hee ;
		6'd42: vlc_code = 8'h9d ;
		6'd43: vlc_code = 8'hcd ;
		6'd44: vlc_code = 8'hbe ;
		6'd45: vlc_code = 8'hae ;
		6'd46: vlc_code = 8'hde ;
		6'd47: vlc_code = 8'h8d ;
		6'd48: vlc_code = 8'hff ;
		6'd49: vlc_code = 8'h1e ;
		6'd50: vlc_code = 8'h9e ;
		6'd51: vlc_code = 8'hce ;
		6'd52: vlc_code = 8'hbf ;
		6'd53: vlc_code = 8'hef ;
		6'd54: vlc_code = 8'hdf ;
		6'd55: vlc_code = 8'h8e ;
		6'd56: vlc_code = 8'h7f ;
		6'd57: vlc_code = 8'haf ;
		6'd58: vlc_code = 8'h9f ;
		6'd59: vlc_code = 8'hcf ;
		6'd60: vlc_code = 8'h4f ;
		6'd61: vlc_code = 8'h6f ;
		6'd62: vlc_code = 8'h5f ;
		6'd63: vlc_code = 8'h8f ;
		default:vlc_code = 8'h00;
	endcase
end

endmodule
