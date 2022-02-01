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
// Filename       : lambda_tab.v
// Author         : huibo zhong
// Created        : 2011-02-26
// Description    : lambda_tab,
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module intra_lambda(
				qp_i,
				lambda_o
);

input [5:0] qp_i;
output[6:0] lambda_o;
reg   [6:0] lambda;

assign lambda_o = lambda;

always @ (qp_i)
	case(qp_i)
		6'd0, 6'd1, 6'd2, 6'd3, 
		6'd4, 6'd5, 6'd6, 6'd7,
		6'd8, 6'd9, 6'd10, 6'd11,
		6'd12, 6'd13, 6'd14, 6'd15 :
		  lambda=7'd1;
		6'd16, 6'd17, 6'd18, 6'd19 :
		  lambda=2;
		6'd20, 6'd21, 6'd22 :
		  lambda=7'd3;
		6'd23, 6'd24, 6'd25 :
		  lambda=7'd4;
		6'd26 :
		  lambda=7'd5;
		6'd27, 6'd28:
		  lambda=7'd6;
		6'd29 : lambda=7'd7;
		6'd30 : lambda=7'd8;
		6'd31 : lambda=7'd9;
		6'd32 : lambda=7'd10;
		6'd33 : lambda=7'd11;
		6'd34 : lambda=7'd13;
		6'd35 : lambda=7'd14;
		6'd36 : lambda=7'd16;
		6'd37 : lambda=7'd18;
		6'd38 : lambda=7'd20;
		6'd39 : lambda=7'd23;
		6'd40 : lambda=7'd25;
		6'd41 : lambda=7'd29;
		6'd42 : lambda=7'd32;
		6'd43 : lambda=7'd36;
		6'd44 : lambda=7'd40;
		6'd45 : lambda=7'd45;
		6'd46 : lambda=7'd51;
		6'd47 : lambda=7'd57;
		6'd48 : lambda=7'd64;
		6'd49 : lambda=7'd72;
		6'd50 : lambda=7'd81;
		6'd51 : lambda=7'd91;
		default:lambda=7'd0 ;
	endcase

endmodule
