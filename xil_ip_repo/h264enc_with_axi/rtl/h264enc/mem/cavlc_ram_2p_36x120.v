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
// Filename       : cavlc_ram_2p_36x120.v                                               
// Author         : Yibo FAN                                         
// Created        : 2012-05-08                                       
// Description    : cavlc NC_compute                                              
//                                                      
// version        :  0.2                                                                  
// Author         : Xing Yuan
// Created        : 2012-5-10
// Description    : Add FPGA_model                                                                     
// $Id$                                                              
//-------------------------------------------------------------------

//`define RTL_MODEL
//`define FPGA_MODEL
`include "enc_defines.v"

module cavlc_ram_2p_36x120 (
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
input [35:0]		 wdata ;
input [6:0]          waddr ;
input   	         we    ;
input    	         rd    ;
input [6:0]          raddr ;
output [35:0]   	 rdata ;

// ********************************************
//                                             
//    Logic DECLARATION                 
//                                             
// ********************************************
`ifdef RTL_MODEL 
rf_2p #(.Addr_Width(7), .Word_Width(36))	
	   rf_2p_36x120 (
				.clka    ( clk       ),  
				.cena_i  ( ~rd       ),
		        .addra_i ( raddr     ),
		        .dataa_o ( rdata     ),
				.clkb    ( clk       ),     
				.cenb_i  ( ~we       ),  
				.wenb_i  ( ~we       ),   
				.addrb_i ( waddr     ),
				.datab_i ( wdata     )
);
`endif 

`ifdef ALTERA
ram_2p_36x120 u_ram_2p_36x120 (		// 26x128 in fact
	.clock    (clk   ),
	.data     (wdata ),
	.wraddress(waddr ),
	.wren     (we    ),  						//write : high active 
	.rdaddress(raddr ),
	.rden     (rd    ),  						//read : high active 
	.q        (rdata )
);
`endif

`ifdef XILINX 
rf_2p #(.Addr_Width(7), .Word_Width(36))    
       rf_2p_36x120 (
                .clka    ( clk       ),  
                .cena_i  ( ~rd       ),
                .addra_i ( raddr     ),
                .dataa_o ( rdata     ),
                .clkb    ( clk       ),     
                .cenb_i  ( ~we       ),  
                .wenb_i  ( ~we       ),   
                .addrb_i ( waddr     ),
                .datab_i ( wdata     )
);
`endif 

`ifdef SMIC13_MODEL 

`endif  

endmodule
