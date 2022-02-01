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
// Filename       : intra_ram_2p_128x120.v                                               
// Author         : Yibo FAN                                         
// Created        : 2012-05-08                                       
// Description    : Line Pixel Buf                                               
//                  One word for one MB => Width = 128 (16 Pixel)                                      
//                  One line for Depeth => Depth = Pic Width                                                 
// version        :  0.2                                                                  
// Author         : Xing Yuan
// Created        : 2012-5-10
// Description    : Add FPGA_model                                                                      
// $Id$                                                              
//-------------------------------------------------------------------
//`define RTL_MODEL
//`define FPGA_MODEL
`include "enc_defines.v"

module intra_ram_2p_128x120 (
    				clk     ,
    				wdata   ,
    				waddr   ,
    				we      ,
    				rd      ,
    				raddr   ,
    				rdata  
);

// ********************************************
//                                             
//    Input/Output DECLARATION                    
//                                             
// ********************************************
input                clk   ; 
input [127:0]		 wdata ;
input [7:0]          waddr ;
input   	         we    ;
input    	         rd    ;
input [7:0]          raddr ;
output [127:0]   	 rdata ;

// ********************************************
//                                             
//    Logic DECLARATION                 
//                                             
// ********************************************
`ifdef RTL_MODEL
rf_2p #(.Addr_Width(7), .Word_Width(128))	
	   rf_2p_128x120 (
				.clka    ( clk       ),  
				.cena_i  ( ~rd       ),
		        .addra_i ( raddr[6:0]),
		        .dataa_o ( rdata     ),
				.clkb    ( clk       ),     
				.cenb_i  ( ~we       ),  
				.wenb_i  ( ~we       ),   
				.addrb_i ( waddr[6:0]),
				.datab_i ( wdata     )
);
`endif 

`ifdef ALTERA
ram_2p_128x120  u_ram_2p_128x120(	// 128x128 in fact
	.clock    (clk       ),
	.data     (wdata     ),
	.wraddress(waddr[6:0]),
	.wren     (we        ),
	.rdaddress(raddr[6:0]),
	.rden     (rd        ),
	.q        (rdata     )
);
`endif 

`ifdef XILINX
rf_2p #(.Addr_Width(7), .Word_Width(128))   
       rf_2p_128x120 (
                .clka    ( clk       ),  
                .cena_i  ( ~rd       ),
                .addra_i ( raddr[6:0]),
                .dataa_o ( rdata     ),
                .clkb    ( clk       ),     
                .cenb_i  ( ~we       ),  
                .wenb_i  ( ~we       ),   
                .addrb_i ( waddr[6:0]),
                .datab_i ( wdata     )
);
`endif 

`ifdef SMIC13_MODEL

`endif 

endmodule
