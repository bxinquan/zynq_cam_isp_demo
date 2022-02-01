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
// Filename       : MB_header_packer.v
// Author         : huibo zhong
// Created        : 2011-5-14
// Description    : MB header bits Gen
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module MB_header_packer(
				codebit0,
				codelength0,
				CodeOut,
				CodeLength,
				valid,
				mvd_valid
);

input  [8:0]  codebit0;
input  [4:0]  codelength0;
input         valid;
input         mvd_valid;
output [16:0] CodeOut;
output [4:0]  CodeLength;


reg    [16:0]   code0;
wire   [4:0]    tmpcodelength0;
wire   [4:0]    left_shift0;


assign tmpcodelength0 = (valid&&mvd_valid)? codelength0:5'b0;
assign CodeLength = tmpcodelength0;


always @(*) begin
	case(tmpcodelength0)
		4'd1  :code0 = { 1'b1, 16'b0 };
		4'd2  :code0 = { codebit0[1:0],15'b0};
		4'd3  :code0 = { 1'b0, codebit0[1:0],14'b0};
		4'd4  :code0 = { codebit0[3:0], 13'b0};
		4'd5  :code0 = { 2'b0, codebit0[2:0],12'b0};
		4'd6  :code0 = { codebit0[5:0], 11'b0};
		4'd7  :code0 = { 3'b0, codebit0[3:0],10'b0 };
		4'd9  :code0 = { 4'b0, codebit0[4:0],8'b0 };
		4'd11 :code0 = { 5'b0, codebit0[5:0],6'b0 };
		4'd13 :code0 = { 6'b0, codebit0[6:0],4'b0 };
		4'd15 :code0 = { 7'b0, codebit0[7:0],2'b0 };
		5'd17 :code0 = { 8'b0, codebit0 };
		default : code0 = 0;
	endcase
end

assign CodeOut = code0;

endmodule

