//-------------------------------------------------------------------
//
//  COPYRIGHT (C) 2014, VIPcore Group, Fudan University
//
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE
//  EXPRESSED WRITTEN CONSENT OF VIPcore Group
//
//  VIPcore       : http://soc.fudan.edu.cn/vip
//  IP Owner      : Yibo FAN
//  Contact       : fanyibo@fudan.edu.cn
//
//-------------------------------------------------------------------
//
//  Filename      : h264enc_axi_top.v
//  Author        : Huang Lei Lei
//  Created       : 2013-07-31
//  Description   : h264enc top with axi if
//
//-------------------------------------------------------------------
//
//  Modified      : 2014-01-13 by Huang Lei Lei
//  Description   : slave port changed from gs to apb
//                  synchronized rst used
//  Modified      : 2014-04-26 by Huang Lei Lei
//  Description   : logics to test h264enc_axi_if added
//
//  $Id$
//
//-------------------------------------------------------------------


module h264enc_with_gm(
  axi_clk       ,
  axi_rstn      ,
  enc_clk       ,
  enc_rstn      ,
  // apb
  apb_prdata    ,
  apb_paddr     ,
  apb_penable   ,
  apb_psel      ,
  apb_pwdata    ,
  apb_pwrite    ,
  // gm
  gm_maddr      ,
  gm_mburst     ,
  gm_mcache     ,
  gm_mdata      ,
  gm_mid        ,
  gm_mlen       ,
  gm_mlock      ,
  gm_mprot      ,
  gm_mread      ,
  gm_mready     ,
  gm_msize      ,
  gm_mwrite     ,
  gm_mwstrb     ,
  gm_saccept    ,
  gm_sdata      ,
  gm_sid        ,
  gm_slast      ,
  gm_sresp      ,
  gm_svalid     ,
  // irq
  enc_irq_o     ,
  // fifo err
  enc_fifo_err  ,
  
  // bs
  winc          ,
  wdata         ,
  //pixel
  rvalid        ,
  rdata   
  );


//*** PARAMETER DECLARATION ****************************************************

  parameter   REG_DW        = 'd32        ,
              AXI_DW        = 'd64        ,
              AXI_AW        = 'd32        ,
              APB_DW        = 'd32        ,
              APB_AW        = 'd32        ,
              AXI_RID       = 'd1         ,
              AXI_WID       = 'd2         ;


//*** INPUT/OUTPUT DECLARATION *************************************************

  // global
  input                     axi_clk       ;
  input                     axi_rstn      ;
  input                     enc_clk       ;
  input                     enc_rstn      ;

  // gm
  input                     gm_saccept    ;
  input   [AXI_DW-1   : 0]  gm_sdata      ;
  input   [3          : 0]  gm_sid        ;
  input                     gm_slast      ;
  input   [2          : 0]  gm_sresp      ;
  input                     gm_svalid     ;

  output  [AXI_AW-1   : 0]  gm_maddr      ;
  output  [1          : 0]  gm_mburst     ;
  output  [3          : 0]  gm_mcache     ;
  output  [AXI_DW-1   : 0]  gm_mdata      ;
  output  [3          : 0]  gm_mid        ;
  output  [3          : 0]  gm_mlen       ;
  output                    gm_mlock      ;
  output  [2          : 0]  gm_mprot      ;
  output                    gm_mread      ;
  output                    gm_mready     ;
  output  [2          : 0]  gm_msize      ;
  output                    gm_mwrite     ;
  output  [AXI_DW/8-1 : 0]  gm_mwstrb     ;

  // apb
  output  [APB_DW-1   : 0]  apb_prdata    ;
  input   [APB_AW-1   : 0]  apb_paddr     ;
  input                     apb_penable   ;
  input                     apb_psel      ;
  input   [APB_DW-1   : 0]  apb_pwdata    ;
  input                     apb_pwrite    ;

  // irq
  output                    enc_irq_o     ;

  // fifo err
  output                    enc_fifo_err  ;
  
  //bs
  output                        winc      ;
  output  [7          : 0]      wdata     ;  
  
  //pixel
  output                        rvalid    ;
  output  [63          : 0]     rdata     ;  
  
//*** WIRE/REG DECLARATION *****************************************************

  // h264enc ctrl
  wire                      sys_start     ;
  wire    [5          : 0]  sys_qp        ;
  wire                      sys_mode      ;
  wire    [7          : 0]  sys_x_total   ;
  wire    [15         : 8]  sys_y_total   ;

  // if ctrl
  wire                      mb_ld         ;
  wire    [7          : 0]  x_ld          ;
  wire    [7          : 0]  y_ld          ;
  wire                      sys_done      ;

  // pixel
  wire    [63         : 0]  rdata         ;
  wire                      rvalid        ;
  wire                      rinc          ;

  // bitstream
  wire    [7          : 0]  wdata         ;
  wire                      wfull         ;
  wire                      winc          ;


//*** MAIN BODY ****************************************************************

`ifdef CHECK_H264ENC_AXI_IF_ADDING_03

  wire    [7          : 0]  my_wdata      ;
  wire                      my            ;
  integer                   my_i          ;
  assign my_wdata = my ? 'h00 : wdata     ;
  assign my = ( ((my_i%10)==6) || ((my_i%10)==7) );
  always @(posedge enc_clk or negedge enc_rstn) begin
    if( ~enc_rstn )
      my_i = 'd0;
    else if ( winc ) begin
      my_i = my_i+1 ;
    end
  end

`endif

  h264enc_axi_if #(
    .REG_DW               ( REG_DW        ),
    .AXI_DW               ( AXI_DW        ),
    .AXI_AW               ( AXI_AW        ),
    .APB_DW               ( APB_DW        ),
    .APB_AW               ( APB_AW        ),
    .AXI_RID              ( AXI_RID       ),
    .AXI_WID              ( AXI_WID       )
  ) h264enc_axi_if0(
    .axi_clk              ( axi_clk       ),
    .axi_rstn             ( axi_rstn      ),
    .enc_clk              ( enc_clk       ),
    .enc_rstn             ( enc_rstn      ),
    // gm                                           // apb
    .gm_maddr             ( gm_maddr      ),        .apb_prdata       ( apb_prdata    ),
    .gm_mburst            ( gm_mburst     ),        .apb_paddr        ( apb_paddr     ),
    .gm_mcache            ( gm_mcache     ),        .apb_penable      ( apb_penable   ),
    .gm_mdata             ( gm_mdata      ),        .apb_psel         ( apb_psel      ),
    .gm_mid               ( gm_mid        ),        .apb_pwdata       ( apb_pwdata    ),
    .gm_mlen              ( gm_mlen       ),        .apb_pwrite       ( apb_pwrite    ),
    .gm_mlock             ( gm_mlock      ),
    .gm_mprot             ( gm_mprot      ),
    .gm_mread             ( gm_mread      ),
    .gm_mready            ( gm_mready     ),
    .gm_msize             ( gm_msize      ),
    .gm_mwrite            ( gm_mwrite     ),
    .gm_mwstrb            ( gm_mwstrb     ),
    .gm_saccept           ( gm_saccept    ),
    .gm_sdata             ( gm_sdata      ),
    .gm_sid               ( gm_sid        ),
    .gm_slast             ( gm_slast      ),
    .gm_sresp             ( gm_sresp      ),
    .gm_svalid            ( gm_svalid     ),
    // h264enc ctrl
    .sys_start_o          ( sys_start     ),
    .sys_qp_o             ( sys_qp        ),
    .sys_mode_o           ( sys_mode      ),
    .sys_x_total_o        ( sys_x_total   ),
    .sys_y_total_o        ( sys_y_total   ),
    .sys_done_i           ( sys_done      ),
    // if ctrl
    .mb_ld_i              ( mb_ld         ),
    .x_ld_i               ( x_ld          ),
    .y_ld_i               ( y_ld          ),
    // pixel
    .rdata_o              ( rdata         ),
    .rvalid_o             ( rvalid        ),
    .rinc_i               ( rinc          ),
    // bitstream
`ifdef CHECK_H264ENC_AXI_IF_ADDING_03
    .wdata_i              ( my_wdata      ),
`else
    .wdata_i              ( wdata         ),
`endif
    .wfull_o              ( wfull         ),
    .winc_i               ( winc          ),
    // irq
    .enc_irq_o            ( enc_irq_o     ),
    // fifo err
    .enc_fifo_err         ( enc_fifo_err  )
    );

  h264enc_top h264enc_top0(
    .clk                  ( enc_clk       ),
    .rst_n                ( enc_rstn      ),
    .sys_start            ( sys_start     ),
    .sys_done             ( sys_done      ),
    .sys_qp               ( sys_qp        ),
    .sys_mode             ( sys_mode      ),
    .sys_x_total          ( sys_x_total   ),
    .sys_y_total          ( sys_y_total   ),
    .rdata_i              ( rdata         ),
    .rvalid_i             ( rvalid        ),
    .rinc_o               ( rinc          ),
    .wdata_o              ( wdata         ),
    .wfull_i              ( wfull         ),
    .winc_o               ( winc          ),
    .enc_ld_x             ( x_ld          ),
    .enc_ld_y             ( y_ld          ),
    .enc_ld_start         ( mb_ld         )
    );

endmodule