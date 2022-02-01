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
// Filename       : TotalZeros_enc.v
// Author         : huibo zhong
// Created        : 2011-03-26
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module TotalZeros_enc(
				clk,
				rst_n,
				totalzeros,
				totalcoeff,
				control_state,
				state,
				cnt4x4,
				TotalZeros_code,
				TotalZeros_codelength
);

parameter 	scan_init    = 4'b0000, //scan init
			scan_cycle0  = 4'b0001, //scan clock 1
			scan_cycle1  = 4'b0010, //scan clock 2
			scan_cycle2  = 4'b0011, //scan clock 3
			scan_cycle3  = 4'b0100, //scan clock 4
			scan_cycle4  = 4'b0101, //scan clock 5
			scan_cycle5  = 4'b0110, //scan clock 6
			scan_cycle6  = 4'b0111, //scan clock 7
            scan_cycle7  = 4'b1000; //scan clock 7

parameter 	enc_init   	 = 4'b0000, //enc init
			enc_cycle0 	 = 4'b0001, //enc clock 1
			enc_cycle1 	 = 4'b0010, //enc clock 2
			enc_cycle2 	 = 4'b0011, //enc clock 3
			enc_cycle3 	 = 4'b0100, //enc clock 4
            enc_cycle4 	 = 4'b0101, //enc clock 5
            enc_cycle5 	 = 4'b0110, //enc clock 6
            enc_cycle6 	 = 4'b0111, //enc clock 7
            enc_cycle7 	 = 4'b1000; //enc clock 8
			
parameter   IDLE         = 3'b000,
			E_INTRA4x4   = 3'b001,
			E_INTRA16x16 = 3'b010,
			E_P16x16     = 3'b011,
			E_P16x8      = 3'b100,
			E_P8x16      = 3'b101,
			E_P8x8       = 3'b110;

			
input           clk, rst_n;
input    [4:0]  totalcoeff;
input    [3:0]  totalzeros;
input 	 [2:0]  control_state ;
input 	 [3:0]  state ;
input    [4:0]  cnt4x4;

output 	 [2:0]  TotalZeros_code;
output   [3:0]  TotalZeros_codelength;




reg    [2:0]  TotalZeros_code;
reg    [3:0]  TotalZeros_codelength;
reg    [2:0]  ChromaDcCode;
reg    [1:0]  ChromaDcLeng;
reg    [4:0]  cnt4x4_d;

wire   [8:0]  addr;
wire   [6:0]  TotalZeroCode;

//note----------------------------------------------------------------------------------------------
assign addr = (totalcoeff>0 && totalcoeff<4'd10)? {totalcoeff-1'b1,totalzeros}
		    : (totalcoeff >= 4'd10)? { 5'd18-totalcoeff,1'b1,~totalzeros[2:0]}
			: {4'd1,4'd15};//0
//note----------------------------------------------------------------------------------------------

always @(*) begin
	case({totalzeros[1:0],totalcoeff[1:0]})
		4'b0001:begin
			ChromaDcCode = 3'b001;
			ChromaDcLeng = 2'd1;
		end
		4'b0010:begin
			ChromaDcCode = 3'b001;
			ChromaDcLeng = 2'd1;
		end
		4'b0011:begin
			ChromaDcCode = 3'b001;
			ChromaDcLeng = 2'd1;
		end
		4'b0101:begin
			ChromaDcCode = 3'b001;
			ChromaDcLeng = 2'd2;
		end
		4'b0110:begin
			ChromaDcCode = 3'b001;
			ChromaDcLeng = 2'd2;
		end
		4'b0111:begin
			ChromaDcCode = 3'b000;
			ChromaDcLeng = 2'd1;
		end
		4'b1001:begin
			ChromaDcCode = 3'b001;
			ChromaDcLeng = 2'd3;
		end
		4'b1010:begin
			ChromaDcCode = 3'b000;
			ChromaDcLeng = 2'd2;
		end		
		4'b1101:begin
			ChromaDcCode = 3'b000;
			ChromaDcLeng = 2'd3;
		end
		default:begin
			ChromaDcCode = 3'b000;
			ChromaDcLeng = 2'd0;
		end
	endcase
end

TotalZeros_tab  TotalZeros_TAB(
	.addr          ( addr[7:0]          ),
	.TotalZeroCode ( TotalZeroCode )
);
/*
always@ (posedge clk or negedge rst_n) begin
	if (~rst_n)
		cnt4x4_d <=0;
	else if (state == 'd1 || state == 'd0)
		cnt4x4_d <= cnt4x4;
end
*/
always @(*) begin
	if(state==enc_cycle0)begin
		if((control_state!=E_INTRA16x16&&control_state!=IDLE) 
		&&(cnt4x4 == 5'd17 || cnt4x4 == 5'd18))begin
		//&&(cnt4x4_d == 5'd16 || cnt4x4_d == 5'd17))begin
			TotalZeros_code = ChromaDcCode;
			TotalZeros_codelength = {2'b0,ChromaDcLeng};
		end
		else if((control_state!=E_INTRA16x16&&control_state!=IDLE)) begin

			TotalZeros_code =  TotalZeroCode[6:4];
			TotalZeros_codelength =(totalcoeff==4'd15&&cnt4x4>'d18)? 4'd0:  TotalZeroCode[3:0];

		end
		else if(control_state==E_INTRA16x16 
		&&(cnt4x4 == 5'd18 || cnt4x4 == 5'd19)) begin
		//&&(cnt4x4_d == 5'd17 || cnt4x4_d == 5'd18)) begin
			TotalZeros_code = ChromaDcCode;
			TotalZeros_codelength = {2'b0,ChromaDcLeng};
		end
		else if(control_state==E_INTRA16x16) begin
			TotalZeros_code =  TotalZeroCode[6:4];
			TotalZeros_codelength = (totalcoeff==4'd15&&cnt4x4>1)? 4'd0: TotalZeroCode[3:0];
		end
		else begin
			TotalZeros_code = 3'b0;
			TotalZeros_codelength = 4'b0;
		end
	end
	else begin
		TotalZeros_code = 3'b0;
		TotalZeros_codelength = 4'b0;
	end		
end

endmodule	
