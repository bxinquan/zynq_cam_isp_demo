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
//  Filename      : h264enc_with_axi.v
//  Author        : Gu Chen Hao
//  Created       : 2017-10-26
//  Description   : h264enc top with axi if
//
//-------------------------------------------------------------------

`include "enc_defines.v"

module h264enc_with_axi(
  // global
  axi_clk                ,
  axi_rstn               ,
  enc_clk                ,
  enc_rstn               ,
  // apb_s
  apb_s_prdata       ,
  apb_s_pready       ,
  apb_s_pslverr      ,
  apb_s_paddr        ,
  apb_s_penable      ,
  apb_s_psel         ,
  apb_s_pwdata       ,
  apb_s_pwrite       ,
  // axi_m
  axi_m_arready      ,
  axi_m_awready      ,
  axi_m_bid          ,
  axi_m_bresp        ,
  axi_m_bvalid       ,
  axi_m_rdata        ,
  axi_m_rid          ,
  axi_m_rlast        ,
  axi_m_rresp        ,
  axi_m_rvalid       ,
  axi_m_wready       ,
  axi_m_araddr       ,
  axi_m_arburst      ,
  axi_m_arcache      ,
  axi_m_arid         ,
  axi_m_arlen        ,
  axi_m_arlock       ,
  axi_m_arprot       ,
  axi_m_arsize       ,
  axi_m_arvalid      ,
  axi_m_awaddr       ,
  axi_m_awburst      ,
  axi_m_awcache      ,
  axi_m_awid         ,
  axi_m_awlen        ,
  axi_m_awlock       ,
  axi_m_awprot       ,
  axi_m_awsize       ,
  axi_m_awvalid      ,
  axi_m_bready       ,
  axi_m_rready       ,
  axi_m_wdata        ,
  axi_m_wid          ,
  axi_m_wlast        ,
  axi_m_wstrb        ,
  axi_m_wvalid       ,
  // bs
  winc               ,
  wdata              ,
  //pixel
  rvalid             ,
  rdata              
  );
  

//*** PARAMETER DECLARATION ****************************************************

  parameter    AXI_DW                = 64          ,
               AXI_AW                = 32           ,
               AXI_MIDW              = 4            ,
               AXI_SIDW              = 6            ; // used to be 8

  parameter    AXI_WID               = 0            ,
               AXI_RID               = 0            ;


//*** INPUT/OUTPUT DECLARATION *************************************************

  // global
  input                              axi_clk            ;
  input                              axi_rstn           ;
  input                              enc_clk            ;
  input                              enc_rstn           ;

  // apb_s
  output [31                 : 0]    apb_s_prdata   ;
  input  [31                 : 0]    apb_s_paddr    ;
  input                              apb_s_penable  ;
  input                              apb_s_psel     ;
  input  [31                 : 0]    apb_s_pwdata   ;
  input                              apb_s_pwrite   ;
  
  output reg                         apb_s_pready      ;
  output reg                         apb_s_pslverr     ;
  

  // gen_m
  input                              axi_m_arready  ;
  input                              axi_m_awready  ;
  input  [AXI_SIDW-1        : 0]     axi_m_bid      ;
  input  [1                 : 0]     axi_m_bresp    ;
  input                              axi_m_bvalid   ;
  input  [AXI_DW-1          : 0]     axi_m_rdata    ;
  input  [AXI_SIDW-1        : 0]     axi_m_rid      ;
  input                              axi_m_rlast    ;
  input  [1                 : 0]     axi_m_rresp    ;
  input                              axi_m_rvalid   ;
  input                              axi_m_wready   ;
  output [AXI_AW-1          : 0]     axi_m_araddr   ;
  output [1                 : 0]     axi_m_arburst  ;
  output [3                 : 0]     axi_m_arcache  ;
  output [AXI_SIDW-1        : 0]     axi_m_arid     ;
  output [3                 : 0]     axi_m_arlen    ;
  output [1                 : 0]     axi_m_arlock   ;
  output [2                 : 0]     axi_m_arprot   ;
  output [2                 : 0]     axi_m_arsize   ;
  output                             axi_m_arvalid  ;
  output [AXI_AW-1          : 0]     axi_m_awaddr   ;
  output [1                 : 0]     axi_m_awburst  ;
  output [3                 : 0]     axi_m_awcache  ;
  output [AXI_SIDW-1        : 0]     axi_m_awid     ;
  output [3                 : 0]     axi_m_awlen    ;
  output [1                 : 0]     axi_m_awlock   ;
  output [2                 : 0]     axi_m_awprot   ;
  output [2                 : 0]     axi_m_awsize   ;
  output                             axi_m_awvalid  ;
  output                             axi_m_bready   ;
  output                             axi_m_rready   ;
  output [AXI_DW-1          : 0]     axi_m_wdata    ;
  output [AXI_SIDW-1        : 0]     axi_m_wid      ;
  output                             axi_m_wlast    ;
  output [AXI_DW/8-1        : 0]     axi_m_wstrb    ;
  output                             axi_m_wvalid   ;
  
  //bs
  output                        winc      ;
  output  [7          : 0]      wdata     ;
  
  //pixel
  output                        rvalid    ;
  output  [63          : 0]     rdata     ;  

  //*** WIRE/REG DECLARATION *****************************************************

  // gen_m
  wire   [AXI_AW-1           : 0]    gen_m_maddr    ;
  wire   [1                  : 0]    gen_m_mburst   ;
  wire   [3                  : 0]    gen_m_mcache   ;
  wire   [AXI_DW-1           : 0]    gen_m_mdata    ;
  wire   [AXI_MIDW-1         : 0]    gen_m_mid      ;
  wire   [3                  : 0]    gen_m_mlen     ;
  wire                               gen_m_mlock    ;
  wire   [2                  : 0]    gen_m_mprot    ;
  wire                               gen_m_mread    ;
  wire                               gen_m_mready   ;
  wire   [2                  : 0]    gen_m_msize    ;
  wire                               gen_m_mwrite   ;
  wire   [AXI_DW/8-1         : 0]    gen_m_mwstrb   ;
  wire                               gen_m_saccept  ;
  wire   [AXI_DW-1           : 0]    gen_m_sdata    ;
  wire   [AXI_MIDW-1         : 0]    gen_m_sid      ;
  wire                               gen_m_slast    ;
  wire   [2                  : 0]    gen_m_sresp    ;
  wire                               gen_m_svalid   ;


//*** MAIN BODY ****************************************************************

  h264enc_with_gm h264enc_with_gm_0(
    // global
    .axi_clk           ( axi_clk              ),
    .axi_rstn          ( axi_rstn             ),
    .enc_clk           ( enc_clk              ),
    .enc_rstn          ( enc_rstn             ),
    // apb_s           ( / apb_s          )
    .apb_prdata      ( apb_s_prdata     ),
    .apb_paddr       ( apb_s_paddr      ),
    .apb_penable     ( apb_s_penable    ),
    .apb_psel        ( apb_s_psel       ),
    .apb_pwdata      ( apb_s_pwdata     ),
    .apb_pwrite      ( apb_s_pwrite     ),
    // gen_m
    .gm_maddr          ( gen_m_maddr      ),
    .gm_mburst         ( gen_m_mburst     ),
    .gm_mcache         ( gen_m_mcache     ),
    .gm_mdata          ( gen_m_mdata      ),
    .gm_mid            ( gen_m_mid        ),
    .gm_mlen           ( gen_m_mlen       ),
    .gm_mlock          ( gen_m_mlock      ),
    .gm_mprot          ( gen_m_mprot      ),
    .gm_mread          ( gen_m_mread      ),
    .gm_mready         ( gen_m_mready     ),
    .gm_msize          ( gen_m_msize      ),
    .gm_mwrite         ( gen_m_mwrite     ),
    .gm_mwstrb         ( gen_m_mwstrb     ),
    .gm_saccept        ( gen_m_saccept    ),
    .gm_sdata          ( gen_m_sdata      ),
    .gm_sid            ( gen_m_sid        ),
    .gm_slast          ( gen_m_slast      ),
    .gm_sresp          ( gen_m_sresp      ),
    .gm_svalid         ( gen_m_svalid     ),
    
    //bs
    .winc              (winc              ),
    .wdata             (wdata             ),
    
    //pixel
    .rvalid            (rvalid            ),
    .rdata             (rdata             )
    
    );

  gm_0_DW_axi_gm gm_0_DW_axi_gm_0(
    // Outputs
    .saccept           ( gen_m_saccept    ),
    .sid               ( gen_m_sid        ),
    .svalid            ( gen_m_svalid     ),
    .slast             ( gen_m_slast      ),
    .sdata             ( gen_m_sdata      ),
    .sresp             ( gen_m_sresp      ),
    .awid              ( axi_m_awid       ),
    .awvalid           ( axi_m_awvalid    ),
    .awaddr            ( axi_m_awaddr     ),
    .awlen             ( axi_m_awlen      ),
    .awsize            ( axi_m_awsize     ),
    .awburst           ( axi_m_awburst    ),
    .awlock            ( axi_m_awlock     ),
    .awcache           ( axi_m_awcache    ),
    .awprot            ( axi_m_awprot     ),
    .wid               ( axi_m_wid        ),
    .wvalid            ( axi_m_wvalid     ),
    .wlast             ( axi_m_wlast      ),
    .wdata             ( axi_m_wdata      ),
    .wstrb             ( axi_m_wstrb      ),
    .bready            ( axi_m_bready     ),
    .arid              ( axi_m_arid       ),
    .arvalid           ( axi_m_arvalid    ),
    .araddr            ( axi_m_araddr     ),
    .arlen             ( axi_m_arlen      ),
    .arsize            ( axi_m_arsize     ),
    .arburst           ( axi_m_arburst    ),
    .arlock            ( axi_m_arlock     ),
    .arcache           ( axi_m_arcache    ),
    .arprot            ( axi_m_arprot     ),
    .rready            ( axi_m_rready     ),
    // Inputs
    .aclk              ( axi_clk              ),
    .aresetn           ( axi_rstn             ),
    .gclken            ( 1'b1             ),
    .mid               ( gen_m_mid        ),
    .maddr             ( gen_m_maddr      ),
    .mread             ( gen_m_mread      ),
    .mwrite            ( gen_m_mwrite     ),
    .mlock             ( gen_m_mlock      ),
    .mlen              ( gen_m_mlen       ),
    .msize             ( gen_m_msize      ),
    .mburst            ( gen_m_mburst     ),
    .mcache            ( gen_m_mcache     ),
    .mprot             ( gen_m_mprot      ),
    .mdata             ( gen_m_mdata      ),
    .mwstrb            ( gen_m_mwstrb     ),
    .mready            ( gen_m_mready     ),
    .awready           ( axi_m_awready    ),
    .wready            ( axi_m_wready     ),
    .bid               ( axi_m_bid        ),
    .bvalid            ( axi_m_bvalid     ),
    .bresp             ( axi_m_bresp      ),
    .arready           ( axi_m_arready    ),
    .rid               ( axi_m_rid        ),
    .rvalid            ( axi_m_rvalid     ),
    .rlast             ( axi_m_rlast      ),
    .rdata             ( axi_m_rdata      ),
    .rresp             ( axi_m_rresp      )
    );
    
        //added by GU CHEN HAO
    always @(posedge axi_clk or negedge axi_rstn) begin
        if ( !axi_rstn ) begin 
          apb_s_pslverr <= 0;
          apb_s_pready <= 0;
        end
        else begin
          if (apb_s_penable && ~apb_s_pready )
              apb_s_pready <= 1;
              else begin
                apb_s_pready <= 0;
              end
        end
    end

endmodule
