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
// Filename       : run_enc.v
// Author         : huibo zhong
// Created        : 2011-05-12
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//     
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module run_enc (
				     clk,
				     rst_n,
				     enc_en, //
				     state,
						 totalzeros,
						 totalcoeff,
				     runbefore0,
				     runbefore1,
				     RunCode,
				     RunCodelength

);

parameter 	enc_init   	= 4'b0000, //enc init
			enc_cycle0 	= 4'b0001, //enc clock 1
			enc_cycle1 	= 4'b0010, //enc clock 2
			enc_cycle2 	= 4'b0011, //enc clock 3
			enc_cycle3 	= 4'b0100, //enc clock 4
            enc_cycle4 	= 4'b0101, //enc clock 5
            enc_cycle5 	= 4'b0110, //enc clock 6
            enc_cycle6 	= 4'b0111, //enc clock 7
            enc_cycle7 	= 4'b1000; //enc clock 8

input         clk, rst_n;
input         enc_en;
input   [3:0] state;
input   [3:0] runbefore0;
input   [3:0] runbefore1;
input   [4:0] totalcoeff;
input   [3:0] totalzeros;

output  [13:0]RunCode;
output  [3:0] RunCodelength;



reg     [3:0] tmp_totalzeros;
reg     [4:0] tmp_totalcoeff;
reg    [10:0] runcode0;
reg    [10:0] runcode1;
reg     [3:0] reg_totalzeros;
reg     [3:0] reg_totalcoeff;


wire    [5:0] addr0;
wire    [5:0] addr1;
wire    [6:0] tmpruncode0;
wire    [6:0] tmpruncode1;
wire    [6:0] tmpruncode00;
wire    [6:0] tmpruncode11;
wire    [3:0] coeffleft;
wire    [3:0] zerosleft;
wire    [3:0] zerosleft0;
wire    [3:0] zerosleft1;
wire          RunEn0, RunEn1;
wire    [2:0] zerosleft0_minus1;
wire    [2:0] zerosleft1_minus1;
wire    [3:0] runbefore0_minus3;
wire    [3:0] runbefore1_minus3;
wire    [3:0] runlength0, runlength1;
wire    [3:0] bubble0;//bit packer
wire    [21:0]  left_half;

wire    [4:0] coeffleft_w        ;
wire    [3:0] zerosleft0_minus1_w;
wire    [3:0] zerosleft1_minus1_w;

assign bubble0= 4'd11 - runlength0;


always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		reg_totalzeros <= 0;
		reg_totalcoeff <= 0;
	end
	else if(enc_en||(state<4'd9)&&(state>4'd0)) begin
		reg_totalzeros <= zerosleft;
		reg_totalcoeff <= coeffleft;
	end
	else begin
		reg_totalzeros <= 0;
		reg_totalcoeff <= 0;
	end
end

always @(*) begin
	case(state)
		enc_init  :begin
			tmp_totalzeros = 0;
			tmp_totalcoeff = 0;
		end
		enc_cycle0:begin
			tmp_totalzeros = totalzeros;
			tmp_totalcoeff = totalcoeff;
		end
		default:begin
			tmp_totalzeros = reg_totalzeros;
			tmp_totalcoeff = reg_totalcoeff;
		end
	endcase
end	
//bit truncated
assign coeffleft_w = ((tmp_totalcoeff > 2'b10))? (tmp_totalcoeff - 2'b10) : 5'b0;
assign coeffleft = coeffleft_w[3 : 0];

assign zerosleft0 = tmp_totalzeros;
assign zerosleft1 = (zerosleft0==0)? 4'b0 
                  : (tmp_totalzeros>runbefore0)?(tmp_totalzeros - runbefore0)
				  :4'b0;
				  
assign zerosleft =  (zerosleft1==0)? 4'b0 
                  : (zerosleft1>runbefore1)? (zerosleft1 - runbefore1) 
				  : 4'b0;


assign RunEn0 = (zerosleft0>1'b0 && tmp_totalcoeff>1'b1)? 1'b1 : 1'b0;
assign RunEn1 = (zerosleft1>1'b0 && tmp_totalcoeff>2'b10)? 1'b1 : 1'b0;

assign zerosleft0_minus1_w = zerosleft0-1'b1;//bit truncated
assign zerosleft1_minus1_w = zerosleft1-1'b1;
assign zerosleft0_minus1   = zerosleft0_minus1_w[2:0] ;
assign zerosleft1_minus1   = zerosleft1_minus1_w[2:0] ; 


assign addr0 = (RunEn0&&tmp_totalcoeff>1'b1 )? ((zerosleft0>0 && zerosleft0<3'd7)? 
			   {zerosleft0_minus1, runbefore0[2:0]} : {3'b110,runbefore0[2:0]})
		     : {3'b0,3'b10};
assign addr1 = (RunEn1&&tmp_totalcoeff>2'b10)? ((zerosleft1>0 && zerosleft1<3'd7)? 
			   {zerosleft1_minus1, runbefore1[2:0]} : {3'b110,runbefore1[2:0]})
		     : {3'b0,3'b10};

Run_tab u_run_lookup(
				.addr0(addr0),
				.addr1(addr1),
				.RunBeforeCode0(tmpruncode0),
				.RunBeforeCode1(tmpruncode1)
);


assign runbefore0_minus3 = runbefore0-2'd3;
assign runbefore1_minus3 = runbefore1-2'd3;

assign tmpruncode00 = (runbefore0>3'd7 && zerosleft0>4'd6)? {3'b001, runbefore0_minus3} 
					: (zerosleft0 == 0)? 6'b0 :tmpruncode0;
									
assign tmpruncode11 = (runbefore1>3'd7  && zerosleft1>4'd6)? {3'b001, runbefore1_minus3} 
					: (zerosleft1 == 0)? 6'b0 :tmpruncode1;

assign runlength0 = RunEn0? tmpruncode00[3:0]:4'd0;
assign runlength1 = RunEn1? tmpruncode11[3:0]:4'd0;

always @(*) begin
	case(runlength0)
		4'd0  :runcode0 = 0;
		4'd1  :runcode0 = {tmpruncode00[4],  10'b0};
		4'd2  :runcode0 = {tmpruncode00[5:4], 9'b0};
		4'd3  :runcode0 = {tmpruncode00[6:4], 8'b0};
		4'd4  :runcode0 = { 3'b0, 1'b1,7'b0};
		4'd5  :runcode0 = { 4'b0, 1'b1, 6'b0};
		4'd6  :runcode0 = { 5'b0, 1'b1, 5'b0};
		4'd7  :runcode0 = { 6'b0, 1'b1, 4'b0};
		4'd8  :runcode0 = { 7'b0, 1'b1, 3'b0};
		4'd9  :runcode0 = { 8'b0, 1'b1, 2'b0};
		4'd10 :runcode0 = { 9'b0, 1'b1, 1'b0};
		4'd11 :runcode0 = {10'b0, 1'b1 };
		default : runcode0 = 0;
	endcase
end

always @(*)begin
	case(runlength1)
		4'd0  :runcode1 = 0;
		4'd1  :runcode1 = {tmpruncode11[4],  10'b0};
		4'd2  :runcode1 = {tmpruncode11[5:4], 9'b0};
		4'd3  :runcode1 = {tmpruncode11[6:4], 8'b0};
		4'd4  :runcode1 = { 3'b0, 1'b1,7'b0};
		4'd5  :runcode1 = { 4'b0, 1'b1, 6'b0};
		4'd6  :runcode1 = { 5'b0, 1'b1, 5'b0};
		4'd7  :runcode1 = { 6'b0, 1'b1, 4'b0};
		4'd8  :runcode1 = { 7'b0, 1'b1, 3'b0};
		4'd9  :runcode1 = { 8'b0, 1'b1, 2'b0};
		4'd10 :runcode1 = { 9'b0, 1'b1, 1'b0};
		4'd11 :runcode1 = {10'b0, 1'b1 };
		default : runcode1 = 0;
	endcase
end

assign left_half  = {runcode0,11'b0} |{11'b0,runcode1}<<(bubble0);

assign RunCode = left_half[21:8];

assign RunCodelength = runlength0 + runlength1;

endmodule      