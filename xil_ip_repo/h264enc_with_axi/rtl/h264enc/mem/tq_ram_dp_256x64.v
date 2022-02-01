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
// Filename       : tq_ram_dp_256x64.v                                               
// Author         : Yibo FAN                                         
// Created        : 2012-05-08                                       
// Description    : chroma, 16x16, mc coefficient ram                                                                               
// $Id$                                                              
//-------------------------------------------------------------------
//`define RTL_MODEL
//`define FPGA_MODEL
`include "enc_defines.v"

module tq_ram_dp_256x64 (
    				clk       ,
    				wdata_a   ,
    				waddr_a   ,
    				we_a      ,
    				rd_a      ,
    				raddr_a   ,
    				rdata_a   ,  				          
    				wdata_b   ,
    				waddr_b   ,
    				we_b      ,
    				rd_b      ,
    				raddr_b   ,
                    rdata_b 
);

// ********************************************
//                                             
//    Input/Output DECLARATION                    
//                                             
// ********************************************
input               clk      ; 
input  [255:0]		wdata_a, wdata_b;
output [255:0]   	rdata_a, rdata_b;
input  [5:0]    	waddr_a, raddr_a, waddr_b, raddr_b;
input   			we_a, rd_a, we_b, rd_b;

// ********************************************
//                                             
//    Logic DECLARATION                 
//                                             
// ********************************************
wire [5:0] addr_a, addr_b;

assign addr_a = we_a ? waddr_a : raddr_a;
assign addr_b = raddr_b;

`ifdef  RTL_MODEL 
ram_2p #(.Addr_Width(6), .Word_Width(256)) 
		ram_2p_256x64 (
				.clka    ( clk         ),  
				.cena_i  ( ~(we_a|rd_a)),
		        .oena_i  ( 1'b0        ),
		        .wena_i  ( ~we_a       ),
		        .addra_i ( addr_a      ),
		        .dataa_o ( rdata_a     ),
		        .dataa_i ( wdata_a     ),
				.clkb    ( clk         ),     
				.cenb_i  ( ~rd_b       ),   
				.oenb_i  ( 1'b0        ),   
				.wenb_i  ( 1'b1        ),  //only read ;
				.addrb_i ( addr_b      ),
				.datab_o ( rdata_b     ),   
				.datab_i ( wdata_b     )
);
`endif 

`ifdef ALTERA
ram_dp_256x64  u_ram_dp_256x64_b(
	.clock    (clk     						),
//Port_A             						  
	.address_a(addr_a  						),
	.data_a   (wdata_a[255:128] 	),
	.rden_a   (rd_a    						),
	.wren_a   (we_a    						),
	.q_a      (rdata_a[255:128] 	),
//Port_B 	           						
	.address_b(addr_b  						),
	.data_b   (wdata_b[255:128] 	),
	.rden_b   (rd_b    						),
	.wren_b   (1'b0    						),
	.q_b      (rdata_b[255:128] 	)
);
ram_dp_256x64  u_ram_dp_256x64_a(
	.clock    (clk     						),
//Port_A             						  
	.address_a(addr_a  						),
	.data_a   (wdata_a[127:0] 		),
	.rden_a   (rd_a    						),
	.wren_a   (we_a    						),
	.q_a      (rdata_a[127:0] 		),
//Port_B 	           						
	.address_b(addr_b  						),
	.data_b   (wdata_b[127:0] 		),
	.rden_b   (rd_b    						),
	.wren_b   (1'b0    						),
	.q_b      (rdata_b[127:0] 		)
);
`endif

`ifdef  XILINX 
ram_2p #(.Addr_Width(6), .Word_Width(256)) 
		ram_2p_256x64 (
				.clka    ( clk         ),  
				.cena_i  ( ~(we_a|rd_a)),
		        .oena_i  ( 1'b0        ),
		        .wena_i  ( ~we_a       ),
		        .addra_i ( addr_a      ),
		        .dataa_o ( rdata_a     ),
		        .dataa_i ( wdata_a     ),
				.clkb    ( clk         ),     
				.cenb_i  ( ~rd_b       ),   
				.oenb_i  ( 1'b0        ),   
				.wenb_i  ( 1'b1        ),  //only read ;
				.addrb_i ( addr_b      ),
				.datab_o ( rdata_b     ),   
				.datab_i ( wdata_b     )
);
`endif 
 
`ifdef SMIC13_MODEL

`endif  
endmodule
