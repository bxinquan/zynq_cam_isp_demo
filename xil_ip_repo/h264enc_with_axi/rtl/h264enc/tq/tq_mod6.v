//----------------------------------------------------------------------------//
//                                                                            //
//  COPYRIGHT (C) 2011, VIPcore Group, Fudan University                       //
//                                                                            //
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE                //
//  EXPRESSED WRITTEN CONSENT OF VIPcore Group                                //
//                                                                            //
//  VIPcore                   http://10.133.20.18                             //
//  Fudan University          me.fudan.edu.cn                                 //
//----------------------------------------------------------------------------//
// Filename       : coding_style_datapath.v                                   //
// Author         : HuailuRen                                                //
// Email          : hlren.pub@gmail.com                                       //
// Created        : 16:07 2011/5/22                                        //
//----------------------------------------------------------------------------//
// Description    :                                                           //
//                                                                            //
// $Id$                                                                       //
//----------------------------------------------------------------------------//
`include "enc_defines.v"

module tq_mod6( qp_i, mod_o );
  input  [5:0] qp_i ;
  output [2:0] mod_o;
  reg [2:0] mod_o;

  always @(qp_i) begin
    case(qp_i)
      0, 6,12,18,24,30,36,42,48: mod_o = 3'b000;  
      1, 7,13,19,25,31,37,43,49: mod_o = 3'b001;  
      2, 8,14,20,26,32,38,44,50: mod_o = 3'b010;  
      3, 9,15,21,27,33,39,45,51: mod_o = 3'b011;  
      4,10,16,22,28,34,40,46   : mod_o = 3'b100;  
      5,11,17,23,29,35,41,47   : mod_o = 3'b101;  
      default                  : mod_o = 3'b000;  
    endcase 
  end
endmodule
