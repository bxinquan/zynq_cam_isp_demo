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
// Filename       : TotalZeros_tab.v
// Author         : huibo zhong
// Created        : 2011-03-26
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module TotalZeros_tab(
					addr,
					TotalZeroCode
);

input 		[7:0] addr;
output 	reg	[6:0] TotalZeroCode;


always @(*)begin
	case(addr)
	/*i_total 0*/                     
    8'h00: TotalZeroCode = 7'h11 ; /* str=1 */
    8'h01: TotalZeroCode = 7'h33 ; /* str=011 */
    8'h02: TotalZeroCode = 7'h23 ; /* str=010 */
    8'h03: TotalZeroCode = 7'h34 ; /* str=0011 */
    8'h04: TotalZeroCode = 7'h24 ; /* str=0010 */
    8'h05: TotalZeroCode = 7'h35 ; /* str=00011 */
    8'h06: TotalZeroCode = 7'h25 ; /* str=00010 */
    8'h07: TotalZeroCode = 7'h36 ; /* str=000011 */
    8'h08: TotalZeroCode = 7'h26 ; /* str=000010 */
    8'h09: TotalZeroCode = 7'h37 ; /* str=0000011 */
    8'h0a: TotalZeroCode = 7'h27 ; /* str=0000010 */
    8'h0b: TotalZeroCode = 7'h38 ; /* str=00000011 */
    8'h0c: TotalZeroCode = 7'h28 ; /* str=00000010 */
    8'h0d: TotalZeroCode = 7'h39 ; /* str=000000011 */
    8'h0e: TotalZeroCode = 7'h29 ; /* str=000000010 */
    8'h0f: TotalZeroCode = 7'h19 ; /* str=000000001 */

	/*i_total 1*/                    
    8'h10: TotalZeroCode = 7'h73 ; /* str=111 */
    8'h11: TotalZeroCode = 7'h63 ; /* str=110 */
    8'h12: TotalZeroCode = 7'h53 ; /* str=101 */
    8'h13: TotalZeroCode = 7'h43 ; /* str=100 */
    8'h14: TotalZeroCode = 7'h33 ; /* str=011 */
    8'h15: TotalZeroCode = 7'h54 ; /* str=0101 */
    8'h16: TotalZeroCode = 7'h44 ; /* str=0100 */
    8'h17: TotalZeroCode = 7'h34 ; /* str=0011 */
    8'h18: TotalZeroCode = 7'h24 ; /* str=0010 */
    8'h19: TotalZeroCode = 7'h35 ; /* str=00011 */
    8'h1a: TotalZeroCode = 7'h25 ; /* str=00010 */
    8'h1b: TotalZeroCode = 7'h36 ; /* str=000011 */
    8'h1c: TotalZeroCode = 7'h26 ; /* str=000010 */
    8'h1d: TotalZeroCode = 7'h16 ; /* str=000001 */
    8'h1e: TotalZeroCode = 7'h06 ; /* str=000000 */
    8'h1f: TotalZeroCode = 7'h00 ; /* str= */
                                 
	/*i_total 2*/                    
    8'h20: TotalZeroCode = 7'h54 ; /* str=0101 */
    8'h21: TotalZeroCode = 7'h73 ; /* str=111 */
    8'h22: TotalZeroCode = 7'h63 ; /* str=110 */
    8'h23: TotalZeroCode = 7'h53 ; /* str=101 */
    8'h24: TotalZeroCode = 7'h44 ; /* str=0100 */
    8'h25: TotalZeroCode = 7'h34 ; /* str=0011 */
    8'h26: TotalZeroCode = 7'h43 ; /* str=100 */
    8'h27: TotalZeroCode = 7'h33 ; /* str=011 */
    8'h28: TotalZeroCode = 7'h24 ; /* str=0010 */
    8'h29: TotalZeroCode = 7'h35 ; /* str=00011 */
    8'h2a: TotalZeroCode = 7'h25 ; /* str=00010 */
    8'h2b: TotalZeroCode = 7'h16 ; /* str=000001 */
    8'h2c: TotalZeroCode = 7'h15 ; /* str=00001 */
    8'h2d: TotalZeroCode = 7'h06 ; /* str=000000 */
    8'h2e: TotalZeroCode = 7'h00 ; /* str= */
    8'h2f: TotalZeroCode = 7'h00 ; /* str= */
                                
/*i_total 3*/                    
    8'h30: TotalZeroCode = 7'h35 ; /* str=00011 */
    8'h31: TotalZeroCode = 7'h73 ; /* str=111 */
    8'h32: TotalZeroCode = 7'h54 ; /* str=0101 */
    8'h33: TotalZeroCode = 7'h44 ; /* str=0100 */
    8'h34: TotalZeroCode = 7'h63 ; /* str=110 */
    8'h35: TotalZeroCode = 7'h53 ; /* str=101 */
    8'h36: TotalZeroCode = 7'h43 ; /* str=100 */
    8'h37: TotalZeroCode = 7'h34 ; /* str=0011 */
    8'h38: TotalZeroCode = 7'h33 ; /* str=011 */
    8'h39: TotalZeroCode = 7'h24 ; /* str=0010 */
    8'h3a: TotalZeroCode = 7'h25 ; /* str=00010 */
    8'h3b: TotalZeroCode = 7'h15 ; /* str=00001 */
    8'h3c: TotalZeroCode = 7'h05 ; /* str=00000 */
    8'h3d: TotalZeroCode = 7'h00 ; /* str= */
 //
    8'h3e: TotalZeroCode = 7'h11 ; /* str= */
    8'h3f: TotalZeroCode = 7'h01 ; /* str= */
                                
/*i_total 4*/                    
    8'h40: TotalZeroCode = 7'h54 ; /* str=0101 */
    8'h41: TotalZeroCode = 7'h44 ; /* str=0100 */
    8'h42: TotalZeroCode = 7'h34 ; /* str=0011 */
    8'h43: TotalZeroCode = 7'h73 ; /* str=111 */
    8'h44: TotalZeroCode = 7'h63 ; /* str=110 */
    8'h45: TotalZeroCode = 7'h53 ; /* str=101 */
    8'h46: TotalZeroCode = 7'h43 ; /* str=100 */
    8'h47: TotalZeroCode = 7'h33 ; /* str=011 */
    8'h48: TotalZeroCode = 7'h24 ; /* str=0010 */
    8'h49: TotalZeroCode = 7'h15 ; /* str=00001 */
    8'h4a: TotalZeroCode = 7'h14 ; /* str=0001 */
    8'h4b: TotalZeroCode = 7'h05 ; /* str=00000 */
    8'h4c: TotalZeroCode = 7'h00 ; /* str= */
 //
    8'h4d: TotalZeroCode = 7'h11 ; /* str= */
    8'h4e: TotalZeroCode = 7'h12 ; /* str= */
    8'h4f: TotalZeroCode = 7'h02 ; /* str= */
                                 
/*i_total 5*/                    
    8'h50: TotalZeroCode = 7'h16 ; /* str=000001 */
    8'h51: TotalZeroCode = 7'h15 ; /* str=00001 */
    8'h52: TotalZeroCode = 7'h73 ; /* str=111 */
    8'h53: TotalZeroCode = 7'h63 ; /* str=110 */
    8'h54: TotalZeroCode = 7'h53 ; /* str=101 */
    8'h55: TotalZeroCode = 7'h43 ; /* str=100 */
    8'h56: TotalZeroCode = 7'h33 ; /* str=011 */
    8'h57: TotalZeroCode = 7'h23 ; /* str=010 */
    8'h58: TotalZeroCode = 7'h14 ; /* str=0001 */
    8'h59: TotalZeroCode = 7'h13 ; /* str=001 */
    8'h5a: TotalZeroCode = 7'h06 ; /* str=000000 */
    8'h5b: TotalZeroCode = 7'h00 ; /* str= */
  //
    8'h5c: TotalZeroCode = 7'h12 ; /* str= */
    8'h5d: TotalZeroCode = 7'h11 ; /* str= */
    8'h5e: TotalZeroCode = 7'h13 ; /* str= */
    8'h5f: TotalZeroCode = 7'h03 ; /* str= */
                                
/*i_total 6*/                    
    8'h60: TotalZeroCode = 7'h16 ; /* str=000001 */
    8'h61: TotalZeroCode = 7'h15 ; /* str=00001 */
    8'h62: TotalZeroCode = 7'h53 ; /* str=101 */
    8'h63: TotalZeroCode = 7'h43 ; /* str=100 */
    8'h64: TotalZeroCode = 7'h33 ; /* str=011 */
    8'h65: TotalZeroCode = 7'h32 ; /* str=11 */
    8'h66: TotalZeroCode = 7'h23 ; /* str=010 */
    8'h67: TotalZeroCode = 7'h14 ; /* str=0001 */
    8'h68: TotalZeroCode = 7'h13 ; /* str=001 */
    8'h69: TotalZeroCode = 7'h06 ; /* str=000000 */
    8'h6a: TotalZeroCode = 7'h00 ; /* str= */
//
    8'h6b: TotalZeroCode = 7'h13 ; /* str= */
    8'h6c: TotalZeroCode = 7'h11 ; /* str= */
    8'h6d: TotalZeroCode = 7'h12 ; /* str= */
    8'h6e: TotalZeroCode = 7'h14 ; /* str= */
    8'h6f: TotalZeroCode = 7'h04 ; /* str= */
                                
/*i_total 7*/                    
    8'h70: TotalZeroCode = 7'h16 ; /* str=000001 */
    8'h71: TotalZeroCode = 7'h14 ; /* str=0001 */
    8'h72: TotalZeroCode = 7'h15 ; /* str=00001 */
    8'h73: TotalZeroCode = 7'h33 ; /* str=011 */
    8'h74: TotalZeroCode = 7'h32 ; /* str=11 */
    8'h75: TotalZeroCode = 7'h22 ; /* str=10 */
    8'h76: TotalZeroCode = 7'h23 ; /* str=010 */
    8'h77: TotalZeroCode = 7'h13 ; /* str=001 */
    8'h78: TotalZeroCode = 7'h06 ; /* str=000000 */
    8'h79: TotalZeroCode = 7'h00 ; /* str= */
//
    8'h7a: TotalZeroCode = 7'h33 ; /* str= */
    8'h7b: TotalZeroCode = 7'h11 ; /* str= */
    8'h7c: TotalZeroCode = 7'h23 ; /* str= */
    8'h7d: TotalZeroCode = 7'h13 ; /* str= */
    8'h7e: TotalZeroCode = 7'h14 ; /* str= */
    8'h7f: TotalZeroCode = 7'h04 ; /* str= */
                                 
/*i_total 8*/                    
    8'h80: TotalZeroCode = 7'h16 ; /* str=000001 */
    8'h81: TotalZeroCode = 7'h06 ; /* str=000000 */
    8'h82: TotalZeroCode = 7'h14 ; /* str=0001 */
    8'h83: TotalZeroCode = 7'h32 ; /* str=11 */
    8'h84: TotalZeroCode = 7'h22 ; /* str=10 */
    8'h85: TotalZeroCode = 7'h13 ; /* str=001 */
    8'h86: TotalZeroCode = 7'h12 ; /* str=01 */
    8'h87: TotalZeroCode = 7'h15 ; /* str=00001 */
    8'h88: TotalZeroCode = 7'h00 ; /* str= */
//
    8'h89: TotalZeroCode = 7'h14 ; /* str= */
    8'h8a: TotalZeroCode = 7'h12 ; /* str= */
    8'h8b: TotalZeroCode = 7'h22 ; /* str= */
    8'h8c: TotalZeroCode = 7'h32 ; /* str= */
    8'h8d: TotalZeroCode = 7'h13 ; /* str= */
    8'h8e: TotalZeroCode = 7'h05 ; /* str= */
    8'h8f: TotalZeroCode = 7'h15 ; /* str= */
//add by xyuan 
    default:  TotalZeroCode = 7'h0 ;
//end by xyuan 
  endcase
end
	
endmodule
