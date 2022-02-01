
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
// Filename       : Delta_qp_en.v
// Author         : Qing Shang
// Created        : 2013-8-12
// Description    : Exp-Golomb Encoder for delta qp 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module Delta_qp_enc	(
				delta_qp,
				codebit,
				length
);

input signed   [5:0]   delta_qp;
output reg  [10:0]   codebit;
output      [3:0]   length;   
wire	    [2:0]   LeadingZeroNum;
wire        [4:0]   suffix;
reg         [5:0]   codenum;
//assign codenum = (~delta_qp[5]) ? ((delta_qp[4:0] << 1)-1'd1) : ((~(delta_qp[4:0]-1'd1))<<1);
always@* begin
	if (delta_qp == 'd0) codenum ='d0;
	else if (~delta_qp[5]) codenum = (delta_qp[4:0] <<1) -1'd1;
	else codenum = (~(delta_qp[4:0] - 1'd1))<<1;
end

assign LeadingZeroNum = (codenum < 'd1) ? 'd0 : (
				  (codenum < 'd3) ? 'd1 : (
			 	  (codenum < 'd7) ? 'd2 : (
				  (codenum < 'd15)? 'd3 : (
				  (codenum < 'd31)? 'd4 : (
				  (codenum < 'd63)? 'd5 :'d0
)))));

assign length =(LeadingZeroNum << 1) +1;
assign suffix = codenum + 1'd1 - (1<<LeadingZeroNum);

always @(*)begin
	if  (codenum[0]==1'b1 && codenum >='d49)
		codebit = {6'b000001, 5'b10010};
	else if (codenum[0]==1'b0 && codenum >='d52)
		codebit = {6'b000001, 5'b10101};
	else begin
	case(LeadingZeroNum)
    6'd0:  codebit = {10'd0, 1'b1};
    6'd1:  codebit = {8'd0, {2'b01, suffix[0]}} ;
    6'd2:  codebit = {6'd0, {3'b001, suffix[1:0]}} ;
    6'd3:  codebit = {4'd0, {4'b0001, suffix[2:0]}} ;
    6'd4:  codebit = {2'd0, {5'b00001, suffix[3:0]}};
    6'd5:  codebit = {6'b000001, suffix[4:0]} ;
    default: codebit = 11'd0 ;
	endcase
	end
end
endmodule
