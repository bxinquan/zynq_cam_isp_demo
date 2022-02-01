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
// Filename       : tq_ram_2p_128x32.v                                               
// Author         : Yibo FAN                                         
// Created        : 2013-01-07                                      
// Description    : luma reconstructed ram                                   
// $Id$                                                              
//-------------------------------------------------------------------
`include "enc_defines.v"

module tq_ram_2p_128x32 (
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
input               clk      ; 
input [127:0]		wdata    ;
input [4:0]    		waddr    ;
input   			we       ;
input    			rd       ;
input [4:0]  		raddr    ;
output [127:0]   	rdata    ;

// ********************************************
//                                             
//    Logic DECLARATION                 
//                                             
// ********************************************
`ifdef RTL_MODEL
rf_2p #(.Addr_Width(5), .Word_Width(128))	
	   rf_2p_128x32 (
				.clka    ( clk      ),  
				.cena_i  ( ~rd      ),
		        .addra_i ( raddr    ),
		        .dataa_o ( rdata    ),
				.clkb    ( clk      ),     
				.cenb_i  ( ~we      ),  
				.wenb_i  ( ~we      ),   
				.addrb_i ( waddr    ),
				.datab_i ( wdata    )
);
`endif 

`ifdef ALTERA 
ram_2p_128x32 u_ram_2p_128x32(
	.clock    (clk   ),
	.data     (wdata ),
	.wraddress(waddr ),
	.wren     (we    ),
	.rdaddress(raddr ),
	.rden     (rd    ),
	.q        (rdata )
);
`endif 

`ifdef XILINX
rf_2p #(.Addr_Width(5), .Word_Width(128))   
       rf_2p_128x32 (
                .clka    ( clk      ),  
                .cena_i  ( ~rd      ),
                .addra_i ( raddr    ),
                .dataa_o ( rdata    ),
                .clkb    ( clk      ),     
                .cenb_i  ( ~we      ),  
                .wenb_i  ( ~we      ),   
                .addrb_i ( waddr    ),
                .datab_i ( wdata    )
);
`endif


`ifdef SMIC13_MODEL

`endif
endmodule
