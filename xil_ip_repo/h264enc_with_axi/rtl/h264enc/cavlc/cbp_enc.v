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
// Filename       : cbp_enc.v
// Author         : huibo zhong
// Created        : 2011-05-16
// Description    : cbp code for intra 4x4 and inter;
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module cbp_enc(
				cbp,
				intra4x4_cbp,
				inter_cbp
);

input       [5:0]   cbp;
output reg  [5:0]   intra4x4_cbp;
output reg  [5:0]   inter_cbp;   


always @(*)begin
	case(cbp)
    6'd0:  intra4x4_cbp = 6'd3 ;
    6'd1:  intra4x4_cbp = 6'd29 ;
    6'd2:  intra4x4_cbp = 6'd30 ;
    6'd3:  intra4x4_cbp = 6'd17 ;
    6'd4:  intra4x4_cbp = 6'd31 ;
    6'd5:  intra4x4_cbp = 6'd18 ;
    6'd6:  intra4x4_cbp = 6'd37 ;
    6'd7:  intra4x4_cbp = 6'd8 ;
    6'd8:  intra4x4_cbp = 6'd32 ;
    6'd9:  intra4x4_cbp = 6'd38 ;
    6'd10: intra4x4_cbp = 6'd19 ;
    6'd11: intra4x4_cbp = 6'd9 ;
    6'd12: intra4x4_cbp = 6'd20 ;
    6'd13: intra4x4_cbp = 6'd10 ;
    6'd14: intra4x4_cbp = 6'd11 ;
    6'd15: intra4x4_cbp = 6'd2 ;
    6'd16: intra4x4_cbp = 6'd16 ;
    6'd17: intra4x4_cbp = 6'd33 ;
    6'd18: intra4x4_cbp = 6'd34 ;
    6'd19: intra4x4_cbp = 6'd21 ;
    6'd20: intra4x4_cbp = 6'd35 ;
    6'd21: intra4x4_cbp = 6'd22 ;
    6'd22: intra4x4_cbp = 6'd39 ;
    6'd23: intra4x4_cbp = 6'd4 ;
    6'd24: intra4x4_cbp = 6'd36 ;
    6'd25: intra4x4_cbp = 6'd40 ;
    6'd26: intra4x4_cbp = 6'd23 ;
    6'd27: intra4x4_cbp = 6'd5 ;
    6'd28: intra4x4_cbp = 6'd24 ;
    6'd29: intra4x4_cbp = 6'd6 ;
    6'd30: intra4x4_cbp = 6'd7 ;
    6'd31: intra4x4_cbp = 6'd1 ;
    6'd32: intra4x4_cbp = 6'd41 ;
    6'd33: intra4x4_cbp = 6'd42 ;
    6'd34: intra4x4_cbp = 6'd43 ;
    6'd35: intra4x4_cbp = 6'd25 ;
    6'd36: intra4x4_cbp = 6'd44 ;
    6'd37: intra4x4_cbp = 6'd26 ;
    6'd38: intra4x4_cbp = 6'd46 ;
    6'd39: intra4x4_cbp = 6'd12 ;
    6'd40: intra4x4_cbp = 6'd45 ;
    6'd41: intra4x4_cbp = 6'd47 ;
    6'd42: intra4x4_cbp = 6'd27 ;
    6'd43: intra4x4_cbp = 6'd13 ;
    6'd44: intra4x4_cbp = 6'd28 ;
    6'd45: intra4x4_cbp = 6'd14 ;
    6'd46: intra4x4_cbp = 6'd15 ;
    6'd47: intra4x4_cbp = 6'd0 ;
//add by xyuan 
    default: intra4x4_cbp = 6'd0 ;
//end by xyuan 
	endcase
end

always @(*)begin
	case(cbp)
    6'd0:  inter_cbp =  6'd0 ;  
    6'd1:  inter_cbp =  6'd2 ;  
    6'd2:  inter_cbp =  6'd3 ;  
    6'd3:  inter_cbp =  6'd7 ;  
    6'd4:  inter_cbp =  6'd4 ;  
    6'd5:  inter_cbp =  6'd8 ;  
    6'd6:  inter_cbp =  6'd17 ; 
    6'd7:  inter_cbp =  6'd13 ; 
    6'd8:  inter_cbp =  6'd5 ;  
    6'd9:  inter_cbp =  6'd18 ; 
    6'd10: inter_cbp =  6'd9 ; 
    6'd11: inter_cbp =  6'd14 ;
    6'd12: inter_cbp =  6'd10 ;
    6'd13: inter_cbp =  6'd15 ;
    6'd14: inter_cbp =  6'd16 ;
    6'd15: inter_cbp =  6'd11 ;
    6'd16: inter_cbp =  6'd1 ; 
    6'd17: inter_cbp =  6'd32 ;
    6'd18: inter_cbp =  6'd33 ;
    6'd19: inter_cbp =  6'd36 ;
    6'd20: inter_cbp =  6'd34 ;
    6'd21: inter_cbp =  6'd37 ;
    6'd22: inter_cbp =  6'd44 ;
    6'd23: inter_cbp =  6'd40 ;
    6'd24: inter_cbp =  6'd35 ;
    6'd25: inter_cbp =  6'd45 ;
    6'd26: inter_cbp =  6'd38 ;
    6'd27: inter_cbp =  6'd41 ;
    6'd28: inter_cbp =  6'd39 ;
    6'd29: inter_cbp =  6'd42 ;
    6'd30: inter_cbp =  6'd43 ;
    6'd31: inter_cbp =  6'd19 ;
    6'd32: inter_cbp =  6'd6 ; 
    6'd33: inter_cbp =  6'd24 ;
    6'd34: inter_cbp =  6'd25 ;
    6'd35: inter_cbp =  6'd20 ;
    6'd36: inter_cbp =  6'd26 ;
    6'd37: inter_cbp =  6'd21 ;
    6'd38: inter_cbp =  6'd46 ;
    6'd39: inter_cbp =  6'd28 ;
    6'd40: inter_cbp =  6'd27 ;
    6'd41: inter_cbp =  6'd47 ;
    6'd42: inter_cbp =  6'd22 ;
    6'd43: inter_cbp =  6'd29 ;
    6'd44: inter_cbp =  6'd23 ;
    6'd45: inter_cbp =  6'd30 ;
    6'd46: inter_cbp =  6'd31 ;
    6'd47: inter_cbp =  6'd12 ;
//add  by xyuan
    default: inter_cbp =  6'd0 ; 
//end by xyuan 
	endcase
end
endmodule
