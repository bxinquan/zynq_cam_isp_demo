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
// Filename       : intra_ram_2p_16x120.v                                               
// Author         : Yibo FAN                                         
// Created        : 2012-05-08                                       
// Description    : intra4x4_pred_mode_gen                                              
//                                                      
// version        :  0.2                                                                  
// Author         : Xing Yuan
// Created        : 2012-5-10
// Description    : Add FPGA_model                                                                   
//                                     
// version        :  0.3                                                                  
// Author         : Yibo FAN
// Created        : 2012-7-5
// Description    : used for intra_4x4_pred_mode_gen, need to store 4x4 mode for every MB
// 					depends on frame width, for 1920->120, qcif->11
//                              
// $Id$                                                              
//-------------------------------------------------------------------
//`define RTL_MODEL
//`define FPGA_MODEL
`include "enc_defines.v"

module intra_ram_2p_16x120 (
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
input [15:0]		 wdata ;
input [7:0]          waddr ;
input   	         we    ;
input    	         rd    ;
input [7:0]          raddr ;
output [15:0]   	 rdata ;

// ********************************************
//                                             
//    Logic DECLARATION                 
//                                             
// ********************************************
`ifdef RTL_MODEL
rf_2p #(.Addr_Width(7), .Word_Width(16))	
	   rf_2p_16x120 (
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
ram_2p_16x120 u_ram_2p_16x120 (		// 16x128 in fact	
	.clock    (clk        ),
	.data     (wdata      ),
	.wraddress(waddr[6:0] ),
	.wren     (we         ),  			//write : high active 
	.rdaddress(raddr[6:0] ),
	.rden     (rd         ),  			//read :  high active 
	.q        (rdata      )
);
`endif 

`ifdef XILINX
rf_2p #(.Addr_Width(7), .Word_Width(16))    
       rf_2p_16x120 (
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
