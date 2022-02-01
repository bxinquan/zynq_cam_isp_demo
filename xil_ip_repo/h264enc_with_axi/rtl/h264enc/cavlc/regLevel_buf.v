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
// Filename       : regLevel_buf.v
// Author         : huibo zhong
// Created        : 2011-05-12
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module regLevel_buf(
						clk,
						rst_n,
						s_all,
						Waddr,
						Raddr,
						in0,
						in1,
						WE,
						RE,
						out0,
						out1
);

parameter DATAWIDTH = 8;
parameter ADDRWIDTH = 2;
parameter DATADEPTH = 4;

input           clk, rst_n;
input   [1:0]   s_all;

input   [ADDRWIDTH-1:0]   Waddr;
input   [ADDRWIDTH-1:0]   Raddr;
input   [DATAWIDTH-1:0]  in0, in1;
input   [1:0]   WE;
input           RE;
output  [DATAWIDTH-1:0]  out0, out1;
reg     [DATAWIDTH-1:0]  out0, out1;

reg     [DATAWIDTH-1:0] mem[DATADEPTH-1:0];


wire[4:0] addr0;
wire[4:0] addr1;
//wire[4:0] addr1_r;

wire[4:0] Raddr0;
wire[4:0] Raddr1;
//wire[4:0] Raddr1_r;

assign addr0=Waddr;
assign addr1=Waddr+1'b1;

assign Raddr0=Raddr;
assign Raddr1=Raddr+1'b1;

//assign addr1_r = addr1;
//assign Raddr1_r = Raddr1;

always @( posedge clk or negedge rst_n) begin
	if(!rst_n) begin:i_mem
	  integer i ; 
		for(i=0; i<16; i=i+1)begin
			mem[i] <= 'd0;
		end
   end
	else if(WE[0]&&WE[1]) begin
		mem[addr0] <= in0;
		mem[addr1] <= in1;
	end
	else if(WE[0])begin
		if(s_all[0])
			mem[addr0] <= in0;
		else
			mem[addr0] <= in1;
	end
end
//
always @( posedge clk or negedge rst_n) begin
	if(!rst_n)
		out0 <= 'd0;
	else
		out0 <= mem[Raddr0];
end
always @( posedge clk or negedge rst_n) begin
	if(!rst_n)
		out1 <= 'd0;
	else
		out1 <= mem[Raddr1];
end

endmodule
