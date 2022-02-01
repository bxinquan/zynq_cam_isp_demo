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
// Filename       : TrailingOne.v
// Author         : huibo zhong
// Created        : 2011-05-12
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module TrailingOne (
				     clk,
				     rst_n,
				     coeff0,
				     coeff1,
                     state,
				     s_all,
					 TrailOneNum
); 

parameter 	scan_init   = 4'b0000; //scan init
parameter	scan_cycle0 = 4'b0001; //scan clock 1
parameter	scan_cycle1 = 4'b0010; //scan clock 2
parameter	scan_cycle2 = 4'b0011; //scan clock 3
parameter	scan_cycle3 = 4'b0100; //scan clock 4
parameter	scan_cycle4 = 4'b0101; //scan clock 5
parameter	scan_cycle5 = 4'b0110; //scan clock 6
parameter	scan_cycle6 = 4'b0111; //scan clock 7
parameter   scan_cycle7 = 4'b1000; //scan clock 7


input             clk;               // 
input             rst_n;             // 
input      [`RES_WIDTH-1:0] coeff0;  // coeff0
input      [`RES_WIDTH-1:0] coeff1;  // coeff1
input      [3:0]  state;             // 

output     [1:0]  s_all;             // {zero_1, zero_0};
output  reg   [1:0]  TrailOneNum;       // trailing ones



reg    [1:0]  TrailOneNumL;
reg    [1:0]  TrailOneNum_r;
reg    [1:0]  TrailOneNum2;
wire   [1:0]  TrailOneNum1;
reg           TrailingEn;
reg           TrailingEn2;

wire          zero_0, zero_1;
wire          LowTrailingEn;
wire          HighTrailingEn;
wire          tmpTrailingEn;
wire   [2:0]  tmpTrailOneNum;

wire          ones_0, ones_1;

//0?
assign zero_0 = (coeff0==0)? 1'b0:1'b1; 
assign zero_1 = (coeff1==0)? 1'b0:1'b1; 

assign s_all = {zero_1, zero_0};

//+1 or -1?
assign ones_0 = (coeff0==1'b1 || coeff0==16'b1111_1111_1111_1111)? 1'b1:1'b0; 
assign ones_1 = (coeff1==1'b1 || coeff1==16'b1111_1111_1111_1111)? 1'b1:1'b0; 


always @(ones_1 or ones_0 or zero_1 or zero_0)begin
	case({ones_1,ones_0,zero_1,zero_0})
		4'b0000, 4'b0001, 4'b0010, 4'b0011, 4'b1011:
			TrailOneNumL = 0;
		4'b0101, 4'b0111, 4'b1010:
			TrailOneNumL = 2'b1;
		4'b1111:TrailOneNumL = 2'b10;
		default:TrailOneNumL = 0;
	endcase
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		TrailingEn  <= 0;
	else  
		TrailingEn  <= TrailingEn2;
end

assign tmpTrailOneNum = (state==scan_cycle0)? TrailOneNumL 
					: TrailingEn?  TrailOneNum_r+TrailOneNumL
			 		: TrailOneNum_r;
					
assign TrailOneNum1 = (tmpTrailOneNum>=2'd3)?2'd3:tmpTrailOneNum[1:0];



assign LowTrailingEn  = ((zero_0==1'b1 && ones_0==0)||(zero_1==1'b1 && ones_1==0))? 1'b0 : 1'b1; 


assign tmpTrailingEn = (state==scan_cycle0)? LowTrailingEn 
					: LowTrailingEn&& TrailingEn;
					
					
always @(*) begin
	case(state)
		scan_init:begin 
			TrailOneNum2 = 0;
			TrailingEn2  = 0;
		end
		scan_cycle0, scan_cycle1, scan_cycle2, scan_cycle3,
		scan_cycle4, scan_cycle5, scan_cycle6, scan_cycle7:begin
			TrailOneNum2 = TrailOneNum1;
			TrailingEn2  = tmpTrailingEn;
		end
		default:begin
			TrailOneNum2 = 0;
			TrailingEn2  = 0;
		end
	endcase
end


//T1 conunt 

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		TrailOneNum_r <= 0;
	else  
		TrailOneNum_r <= TrailOneNum2;
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		TrailOneNum <= 0;
	else if(state == scan_cycle7)  
		TrailOneNum <= TrailOneNum2;
end



/*****************************************************   can try it

wire   signed   [`RES_WIDTH-1:0] data0,data1;

assign data0 = coeff0;
assign data1 = coeff1;

reg state_reg;
always @(posedge clk or negedge rst_n) begin
	if(rst_n)
		state_reg <=0;
	else 
		state_reg <= state;
end


reg [4:0] ones_num_temp;
always @(posedge clk or negedge rst_n) begin
	if(rst_n)
		ones_num_temp <=0;
	else if(state == scan_init)
		ones_num_temp <=0;
	else if(state!=state_reg)
		case ({data0=='d0,(data0=='d1 | data0=='d-1),data1=='d0,(data1=='d1 | data1=='d-1)})
			4'b01_01 : ones_num_temp = ones_num_temp + 'd2;
			4'b??_00 : ones_num_temp = 'd0;
			4'b00_01 : ones_num_temp = 'd1;
			4'b10_10 : ones_num_temp = ones_num_temp;
			4'b10_01 : ones_num_temp = ones_num_temp + 'd1;
			4'b01_10 : ones_num_temp = ones_num_temp + 'd1;
			4'b00_10 : ones_num_temp = 'd0;
		endcase
		default : ones_num_temp = 'd0;
end
	

assign TrailOneNum = (ones_num_temp>'d3)? 'd3 : ones_num_temp;
assign s_all = {data1=='d0, data0=='d0};

*****************************************************/



endmodule

