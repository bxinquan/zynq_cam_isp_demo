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
//  Filename      : h264enc_axi_if.v
//  Author        : Huang Lei Lei
//  Created       : 2013-07-31
//  Description   : if between axi and h264enc
//
//-------------------------------------------------------------------
//
//  Modified      : 2014-01-13 by Huang Lei Lei
//  Description   : slave port changed from gs to apb
//                  synchronized rst used
//
//-------------------------------------------------------------------
//
//  Modified      : 2014-03-14 by HLL
//  Description   : 64-byte aligned changed into 64-bit aligned
//  Modified      : 2014-04-26 by HLL
//  Description   : shifting and adding 0x03 function added
//  Modified      : 2014-05-21 by HLL
//  Description   : dump logic optimized
//  Modified      : 2014-09-05 by HLL
//  Description   : one more stage of registers added to sample level signals between axi and enc time domain
//
//  $Id$
//
//-------------------------------------------------------------------

`include "enc_defines.v"

module h264enc_axi_if(
  axi_clk         ,
  axi_rstn        ,
  enc_clk         ,
  enc_rstn        ,
  // apb
  apb_prdata      ,
  apb_paddr       ,
  apb_penable     ,
  apb_psel        ,
  apb_pwdata      ,
  apb_pwrite      ,
  // gm
  gm_maddr        ,
  gm_mburst       ,
  gm_mcache       ,
  gm_mdata        ,
  gm_mid          ,
  gm_mlen         ,
  gm_mlock        ,
  gm_mprot        ,
  gm_mread        ,
  gm_mready       ,
  gm_msize        ,
  gm_mwrite       ,
  gm_mwstrb       ,
  gm_saccept      ,
  gm_sdata        ,
  gm_sid          ,
  gm_slast        ,
  gm_sresp        ,
  gm_svalid       ,
  // h264enc ctrl
  sys_start_o     ,
  sys_qp_o        ,
  sys_mode_o      ,
  sys_x_total_o   ,
  sys_y_total_o   ,
  // if ctrl
  sys_done_i      ,
  mb_ld_i         ,
  x_ld_i          ,
  y_ld_i          ,
  // pixel
  rdata_o         ,
  rvalid_o        ,
  rinc_i          ,
  // bitstream
  wdata_i         ,
  wfull_o         ,
  winc_i          ,
  // irq
  enc_irq_o       ,
  // fifo err
  enc_fifo_err     
  );


//*** PARAMETER DECLARATION ****************************************************

  parameter   REG_DW            = 'd32              ,
              AXI_DW            = 'd64              ,
              AXI_AW            = 'd32              ,
              APB_DW            = 'd32              ,
              APB_AW            = 'd32              ,
              AXI_RID           = 'd1               ,
              AXI_WID           = 'd2               ;

  parameter   ENC_DW            = 'd8               ;

  parameter   ADDR_START        = 'h00              ,
              ADDR_PIC_SIZE     = 'h01              ,
              ADDR_RUN_MOD      = 'h02              ,
              ADDR_STATUS       = 'h03              ,
              ADDR_EXT_BASE     = 'h04              ,
              ADDR_Y_BASE       = 'h05              ,
              ADDR_BS_BASE      = 'h06              ,
              ADDR_BS_COUNTER   = 'h07              ,
              ADDR_IRQ          = 'h08              ,

              ADDR_QP_MEM_0     = 'h10              ,
              ADDR_QP_MEM_1     = 'h11              ,
              ADDR_QP_MEM_2     = 'h12              ,
              ADDR_QP_MEM_3     = 'h13              ,
              ADDR_QP_MEM_4     = 'h14              ,
              ADDR_QP_MEM_5     = 'h15              ,
              ADDR_QP_MEM_6     = 'h16              ,
              ADDR_QP_MEM_7     = 'h17              ,
              ADDR_QP_MEM_8     = 'h18              ,
              ADDR_QP_MEM_9     = 'h19              ,
              ADDR_QP_MEM_A     = 'h1a              ,
              ADDR_QP_MEM_B     = 'h1b              ,
              ADDR_QP_MEM_C     = 'h1c              ,
              ADDR_QP_MEM_D     = 'h1d              ,
              ADDR_QP_MEM_E     = 'h1e              ,
              ADDR_QP_MEM_F     = 'h1f              ,
              ADDR_DONE         = 'h09              ;

  parameter   IDLE_QP           = 'h0               ,
              RUN_QP            = 'h1               ;

  parameter   IDLE_IRQ          = 'h0               ,
              WAIT_IRQ          = 'h1               ,
              RUN_IRQ           = 'h2               ,
              COUNTER_IRQ       = 'b111111          ;

  parameter   IDLE_FINAL_BS     = 'd0               ,
              ONE_FINAL_BS      = 'd1               ,
              TWO_FINAL_BS      = 'd2               ,
              HIT_FINAL_BS      = 'd3               ;

  parameter   IDLE_PIXEL        = 'd00              ,
              RUN_PIXEL         = 'd01              ,
              BURST_LEN_PIXEL   = 'd02              , // if modified, the address offset need modification too
              TOTAL_BURST_PIXEL = 'd24              ;

  parameter   BURST_LEN_BS      = 'd16              ; // if modified, the address offset need modification too

  parameter   IDLE_FETCH        = 'h0               ,
              WAIT_FETCH        = 'h1               ,
              RUN_FETCH         = 'h2               ;


//*** INPUT/OUTPUT DECLARATION *************************************************

  // global
  input                         axi_clk             ;
  input                         axi_rstn            ;
  input                         enc_clk             ;
  input                         enc_rstn            ;

  // apb
  output      [APB_DW-1   : 0]  apb_prdata          ;
  input       [APB_AW-1   : 0]  apb_paddr           ;
  input                         apb_penable         ;
  input                         apb_psel            ;
  input       [APB_DW-1   : 0]  apb_pwdata          ;
  input                         apb_pwrite          ;

  // gm
  input                         gm_saccept          ;
  input       [AXI_DW-1   : 0]  gm_sdata            ;
  input       [3          : 0]  gm_sid              ;
  input                         gm_slast            ;
  input       [2          : 0]  gm_sresp            ;
  input                         gm_svalid           ;

  output reg  [AXI_AW-1   : 0]  gm_maddr            ;
  output      [1          : 0]  gm_mburst           ;
  output      [3          : 0]  gm_mcache           ;
  output      [AXI_DW-1   : 0]  gm_mdata            ;
  output reg  [3          : 0]  gm_mid              ;
  output reg  [3          : 0]  gm_mlen             ;
  output                        gm_mlock            ;
  output      [2          : 0]  gm_mprot            ;
  output reg                    gm_mread            ;
  output                        gm_mready           ;
  output      [2          : 0]  gm_msize            ;
  output reg                    gm_mwrite           ;
  output      [AXI_DW/8-1 : 0]  gm_mwstrb           ;

  // h264enc ctrl
  output                        sys_start_o         ;
  output      [5          : 0]  sys_qp_o            ;
  output                        sys_mode_o          ;
  output      [7          : 0]  sys_x_total_o       ;
  output      [7          : 0]  sys_y_total_o       ;

  // if ctrl
  input                         sys_done_i          ;
  input                         mb_ld_i             ;
  input       [7          : 0]  x_ld_i              ;
  input       [7          : 0]  y_ld_i              ;

  // pixel
  output      [63         : 0]  rdata_o             ;
  output                        rvalid_o            ;
  input                         rinc_i              ;

  // bitstream
  input       [7          : 0]  wdata_i             ;
  output                        wfull_o             ;
  input                         winc_i              ;

  // irq
  output                        enc_irq_o           ;

  // fifo err
  output reg                    enc_fifo_err        ;
 


//*** WIRE/REG DECLARATION *****************************************************

  // global
  reg                           sys_done_r_0        ;
  reg                           sys_done_r_1        ;
  reg                           sys_done_r_2        ;
  reg                           sys_done_r_3        ;
  reg                           sys_done_r_4        ;
  reg                           sys_done_r_5        ;
  reg                           sys_done_r_6        ;
  reg                           sys_done_r_7        ;
  wire                          enc_start_enc       ;
  wire                          enc_start_axi       ;
  wire                          enc_stop_enc        ;
  wire                          enc_stop_axi        ;

  reg                           rinc_r_0            ;
  reg                           rinc_r_1            ;
  wire                          mb_done_axi         ;

  // control registers
  reg                           reg_start           ;
  reg         [15         : 0]  reg_pic_size        ;
  reg                           reg_run_mod         ;
  reg         [16         : 0]  reg_status          ;
  reg         [31         : 0]  reg_ext_base        ;
  reg         [31         : 0]  reg_y_base          ;
  reg         [31         : 0]  reg_bs_base         ;
  reg         [31         : 0]  reg_bs_counter      ;
  reg         [31         : 0]  reg_qp_mem_0        ;
  reg         [31         : 0]  reg_qp_mem_1        ;
  reg         [31         : 0]  reg_qp_mem_2        ;
  reg         [31         : 0]  reg_qp_mem_3        ;
  reg         [31         : 0]  reg_qp_mem_4        ;
  reg         [31         : 0]  reg_qp_mem_5        ;
  reg         [31         : 0]  reg_qp_mem_6        ;
  reg         [31         : 0]  reg_qp_mem_7        ;
  reg         [31         : 0]  reg_qp_mem_8        ;
  reg         [31         : 0]  reg_qp_mem_9        ;
  reg         [31         : 0]  reg_qp_mem_a        ;
  reg         [31         : 0]  reg_qp_mem_b        ;
  reg         [31         : 0]  reg_qp_mem_c        ;
  reg         [31         : 0]  reg_qp_mem_d        ;
  reg         [31         : 0]  reg_qp_mem_e        ;
  reg         [31         : 0]  reg_qp_mem_f        ;

  // data for inversion
  reg         [REG_DW-1   : 0]  apb_prdata_rv       ; // it's a wire
  wire        [REG_DW-1   : 0]  apb_pwdata_rv       ;
  wire        [AXI_DW-1   : 0]  gm_sdata_rv         ; // it's a wire

  // intermediate address and data wire
  wire        [AXI_AW-1   : 0]  gm_waddr            ;
  wire        [AXI_AW-1   : 0]  gm_raddr            ;//by hll
  //reg        [AXI_AW-1   : 0]  gm_raddr            ;
  wire        [AXI_DW-1   : 0]  data_out            ;

  // intermediate wire to calculate qp
  reg         [7          : 0]  x_cen               ;
  reg         [7          : 0]  y_cen               ;
  reg         [7          : 0]  x_len               ;
  reg         [7          : 0]  y_len               ;
  reg         [7          : 0]  x_low               ;
  reg         [8          : 0]  x_high              ;
  reg         [7          : 0]  y_low               ;
  reg         [8          : 0]  y_high              ;

  // qp signals
  reg         [5          : 0]  qp                  ;
  reg                           hit_qp              ;

  // qp state signals
  reg                           state_qp            ;
  reg                           next_state_qp       ;
  reg         [3          : 0]  counter_qp          ;

  // irq signals
  wire                          irq_start           ;
  wire                          irq_stop            ;

  // irq state signals
  reg         [1          : 0]  state_irq           ;
  reg         [1          : 0]  next_state_irq      ;
  reg         [5          : 0]  counter_irq         ;

  // pixel transfer signal
  reg         [AXI_AW-1   : 0]  base_addr_pixel     ;
  reg         [4          : 0]  counter_pixel       ; // to count transfer amount in a burst of pixel
  wire                          f_pixel_finish      ;
  reg         [31         : 0]  mb_offset           ;
  reg         [4          : 0]  line_offset         ;
  wire        [31         : 0]  line_delta          ;
  reg         [4          : 0]  mb_delta            ;

  // fifo signals
  wire                          fifo_rstn_bs        ;
  wire                          push_req_bs         ;
  wire                          pop_req_bs          ;
  wire        [ENC_DW-1   : 0]  wdata_i_bs          ;
  wire                          part_wd_bs          ;
  wire                          empty_bs            ;
  wire                          half_full_bs        ;
  wire                          almost_full_bs      ;
  wire                          error_bs            ;
  wire        [AXI_DW-1   : 0]  data_out_bs         ;

  wire                          fifo_rstn_pixel     ;
  wire                          push_req_pixel      ;
  wire                          pop_req_pixel       ;
  wire        [AXI_DW-1   : 0]  wdata_i_pixel       ;
  wire                          half_full_pixel     ;
  wire                          almost_full_pixel   ;
  wire                          empty_pixel         ;
  wire        [AXI_DW-1   : 0]  data_out_pixel      ;
  wire                          error_pixel         ;

  reg                           last_dump           ;

  reg         [7          : 0]  cur_x               ;
  reg         [7          : 0]  cur_y               ;

  // fifo counter
  reg         [2          : 0]  counter_dump        ;
  reg         [31         : 0]  counter_fifo_o      ;
  reg         [1          : 0]  counter_mb          ;

  // transfer bs signals
  reg         [4          : 0]  counter_bs          ; // to count transfer amount in a burst of bs
  wire                          burst_finish_bs     ;

  // final bs signals
  reg         [2          : 0]  partial_bs          ;
  wire        [8          : 0]  shifted_bs          ;
  reg         [8          : 0]  final_bs            ; // it's a wire
  reg         [8          : 0]  final_bs_buffer_0   ;
  reg         [8          : 0]  final_bs_buffer_1   ;
  reg         [2          : 0]  final_bs_cnt        ;
  wire                          hit_final_bs        ;
  wire                          extra_push          ;
  reg                           dump_all_bs         ;

  // final bs state signals
  reg         [1          : 0]  state_final_bs      ;
  reg         [1          : 0]  next_state_final_bs ; // it's a wire


//*** WIRE ASSIGNMENT **********************************************************

  assign apb_pwdata_rv  = apb_pwdata ;
                          //{apb_pwdata[07:00] ,apb_pwdata[15:08] ,apb_pwdata[23:16] ,apb_pwdata[31:24] };

  assign apb_prdata     = apb_prdata_rv ;
                          //{apb_prdata_rv[07:00] ,apb_prdata_rv[15:08] ,apb_prdata_rv[23:16] ,apb_prdata_rv[31:24] };

//  assign gm_sdata_rv    = { gm_sdata[39:32] ,gm_sdata[47:40] ,gm_sdata[55:48] ,gm_sdata[63:56] ,
//                            gm_sdata[07:00] ,gm_sdata[15:08] ,gm_sdata[23:16] ,gm_sdata[31:24] } ; //by hll


  assign gm_sdata_rv = {gm_sdata[31:24],gm_sdata[23:16],gm_sdata[15:08],gm_sdata[07:00],
                        gm_sdata[63:56],gm_sdata[55:48],gm_sdata[47:40],gm_sdata[39:32]};

  assign gm_mburst  = 2'b01   ;
  assign gm_mcache  = 4'b0000 ;
  assign gm_mprot   = 3'b000  ;
  assign gm_mlock   = 2'b00   ;
  assign gm_mready  = 1'b1    ;
  assign gm_msize   = 3'b011  ; // 64 bits
  assign gm_mwstrb  = 8'hff   ; // 8 bytes

  assign wfull_o    = almost_full_bs ;


//*** MAIN BODY ****************************************************************

//*** GLOBAL *************************************

  // enc_stop_signal
  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn ) begin
      sys_done_r_0 <= 'd1 ;
      sys_done_r_1 <= 'd1 ;
    end
    else begin
      sys_done_r_0 <= sys_done_i ;
      sys_done_r_1 <= sys_done_r_0 ;
    end
  end

  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn ) begin
      sys_done_r_2 <= 'd1 ;
      sys_done_r_3 <= 'd1 ;
    end
    else begin
      sys_done_r_2 <= sys_done_i ;
      sys_done_r_3 <= sys_done_r_2 ;
    end
  end

  assign enc_stop_enc = (sys_done_r_1!=sys_done_r_0) && (sys_done_r_0) ;
  assign enc_stop_axi = (sys_done_r_3!=sys_done_r_2) && (sys_done_r_2) ;

  // enc_start_signal
  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn ) begin
      sys_done_r_4 <= 'd0 ;
      sys_done_r_5 <= 'd0 ;
    end
    else begin
      sys_done_r_4 <= sys_done_i ;
      sys_done_r_5 <= sys_done_r_4 ;
    end
  end

  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn ) begin
      sys_done_r_6 <= 'd0 ;
      sys_done_r_7 <= 'd0 ;
    end
    else begin
      sys_done_r_6 <= sys_done_i ;
      sys_done_r_7 <= sys_done_r_6 ;
    end
  end

  assign enc_start_enc = (sys_done_r_5!=sys_done_r_4) && (sys_done_r_5) ;
  assign enc_start_axi = (sys_done_r_7!=sys_done_r_6) && (sys_done_r_7) ;

  // mb_done_signal
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn ) begin
      rinc_r_0 <= 'd0 ;
      rinc_r_1 <= 'd0 ;
    end
    else begin
      rinc_r_0 <= rinc_i ;
      rinc_r_1 <= rinc_r_0 ;
    end
  end

  assign mb_done_axi = (rinc_r_1!=rinc_r_0) && (rinc_r_1) ;



//*** APB ****************************************

  // to reg_start (self-clear)
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn )
      reg_start <= 'd0 ;
    else if( apb_psel && apb_pwrite && (apb_paddr[6:2]==ADDR_START) )
      reg_start <= apb_pwdata_rv[0] ;
    else if( !sys_done_i ) begin
      reg_start <= 'd0 ;
    end
  end

  // to other register
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn ) begin
      reg_pic_size  <= 'd0 ;
      reg_run_mod   <= 'd0 ;
//      reg_status    <= 'd0 ;
      reg_ext_base  <= 'd0 ;
      reg_y_base    <= 'd0 ;
      reg_bs_base   <= 'd0 ;
      reg_qp_mem_0  <= 'd0 ; reg_qp_mem_8 <= 'd0 ;
      reg_qp_mem_1  <= 'd0 ; reg_qp_mem_9 <= 'd0 ;
      reg_qp_mem_2  <= 'd0 ; reg_qp_mem_a <= 'd0 ;
      reg_qp_mem_3  <= 'd0 ; reg_qp_mem_b <= 'd0 ;
      reg_qp_mem_4  <= 'd0 ; reg_qp_mem_c <= 'd0 ;
      reg_qp_mem_5  <= 'd0 ; reg_qp_mem_d <= 'd0 ;
      reg_qp_mem_6  <= 'd0 ; reg_qp_mem_e <= 'd0 ;
      reg_qp_mem_7  <= 'd0 ; reg_qp_mem_f <= 'd0 ;
    end
    else if( apb_psel && apb_pwrite ) begin
      case( apb_paddr[6:2] )
        ADDR_PIC_SIZE : reg_pic_size  <= apb_pwdata_rv[15:0]  ;
        ADDR_RUN_MOD  : reg_run_mod   <= apb_pwdata_rv[2:0]   ;
        ADDR_EXT_BASE : reg_ext_base  <= apb_pwdata_rv        ;
        ADDR_Y_BASE   : reg_y_base    <= apb_pwdata_rv        ;
        ADDR_BS_BASE  : reg_bs_base   <= apb_pwdata_rv        ;
        ADDR_QP_MEM_0 : reg_qp_mem_0  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_1 : reg_qp_mem_1  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_2 : reg_qp_mem_2  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_3 : reg_qp_mem_3  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_4 : reg_qp_mem_4  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_5 : reg_qp_mem_5  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_6 : reg_qp_mem_6  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_7 : reg_qp_mem_7  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_8 : reg_qp_mem_8  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_9 : reg_qp_mem_9  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_A : reg_qp_mem_a  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_B : reg_qp_mem_b  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_C : reg_qp_mem_c  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_D : reg_qp_mem_d  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_E : reg_qp_mem_e  <= apb_pwdata_rv        ;
        ADDR_QP_MEM_F : reg_qp_mem_f  <= apb_pwdata_rv        ;
      endcase
    end
  end

  always @(*) begin
                        apb_prdata_rv = 'd0                   ;
    case( apb_paddr[6:2] )
      ADDR_PIC_SIZE   : apb_prdata_rv = {16'd0,reg_pic_size}  ;
      ADDR_RUN_MOD    : apb_prdata_rv = {29'd0,reg_run_mod}   ;
      ADDR_STATUS     : apb_prdata_rv = {reg_status[16:1],15'd0,reg_status[0]} ;
      ADDR_EXT_BASE   : apb_prdata_rv = reg_ext_base          ;
      ADDR_Y_BASE     : apb_prdata_rv = reg_y_base            ;
      ADDR_BS_BASE    : apb_prdata_rv = reg_bs_base           ;
      ADDR_BS_COUNTER : apb_prdata_rv = reg_bs_counter        ;
      ADDR_QP_MEM_0   : apb_prdata_rv = reg_qp_mem_0          ;
      ADDR_QP_MEM_1   : apb_prdata_rv = reg_qp_mem_1          ;
      ADDR_QP_MEM_2   : apb_prdata_rv = reg_qp_mem_2          ;
      ADDR_QP_MEM_3   : apb_prdata_rv = reg_qp_mem_3          ;
      ADDR_QP_MEM_4   : apb_prdata_rv = reg_qp_mem_4          ;
      ADDR_QP_MEM_5   : apb_prdata_rv = reg_qp_mem_5          ;
      ADDR_QP_MEM_6   : apb_prdata_rv = reg_qp_mem_6          ;
      ADDR_QP_MEM_7   : apb_prdata_rv = reg_qp_mem_7          ;
      ADDR_QP_MEM_8   : apb_prdata_rv = reg_qp_mem_8          ;
      ADDR_QP_MEM_9   : apb_prdata_rv = reg_qp_mem_9          ;
      ADDR_QP_MEM_A   : apb_prdata_rv = reg_qp_mem_a          ;
      ADDR_QP_MEM_B   : apb_prdata_rv = reg_qp_mem_b          ;
      ADDR_QP_MEM_C   : apb_prdata_rv = reg_qp_mem_c          ;
      ADDR_QP_MEM_D   : apb_prdata_rv = reg_qp_mem_d          ;
      ADDR_QP_MEM_E   : apb_prdata_rv = reg_qp_mem_e          ;
      ADDR_QP_MEM_F   : apb_prdata_rv = reg_qp_mem_f          ;
      ADDR_IRQ        : apb_prdata_rv = {30'd0, state_irq }   ;
      ADDR_DONE       : apb_prdata_rv = {31'd0, sys_done_r_0} ; 
      default         : apb_prdata_rv = 'd0                   ;
    endcase
  end


//*** GM *****************************************

// Generate Address and Busrt_Len Signals for Write or Read
  always @(*) begin
    if( gm_mwrite ) begin
      gm_maddr  = gm_waddr          ;
      gm_mid    = AXI_WID           ;
      gm_mlen   = BURST_LEN_BS-'d1  ;
    end
    else begin
      gm_maddr  = gm_raddr            ;
      gm_mid    = AXI_RID             ;
      gm_mlen   = BURST_LEN_PIXEL-'d1 ;
    end
  end

// BS FIFO
  // fifo dut
`ifdef SYNOPSYS

/*  DW_asymfifo_s2_sf #(
    .data_in_width    ( ENC_DW            ),
    .data_out_width   ( AXI_DW            ),
    .depth            ( 32                ),
    .pop_ae_lvl       ( BURST_LEN_BS+'d1  ),
    .pop_af_lvl       ( BURST_LEN_BS+'d1  ),
    .byte_order       ( 1                 )
  ) fifo_bs(
    .clk_push         ( enc_clk           ),
    .clk_pop          ( axi_clk           ),
    .rst_n            ( fifo_rstn_bs      ),
    .push_req_n       ( !push_req_bs      ),
    .flush_n          ( 1'b1              ),
    .pop_req_n        ( !pop_req_bs       ),
    .data_in          ( wdata_i_bs        ),
    .push_empty       (                   ),
    .push_ae          (                   ),
    .push_hf          (                   ),
    .push_af          (                   ),
    .push_full        (                   ),
    .push_error       ( error_bs          ),
    .ram_full         (                   ),
    .part_wd          ( part_wd_bs        ),
    .pop_empty        ( empty_bs          ),
    .pop_ae           (                   ),
    .pop_hf           ( half_full_bs      ),
    .pop_af           ( almost_full_bs    ),
    .pop_full         (                   ),
    .pop_error        (                   ),
    .data_out         ( data_out_bs       )
    );
*/

  parameter MEM_MODE = 6;

  wire                  ram_bs_en_w_n     ;
  wire [4        : 0]   ram_bs_addr_w     ;
  wire [AXI_DW-1 : 0]   ram_bs_data_w     ;
  wire                  ram_bs_en_r_n     ;
  wire [4        : 0]   ram_bs_addr_r     ;
  wire [AXI_DW-1 : 0]   ram_bs_data_r     ;

  DW_asymfifoctl_2c_df #(
    .data_s_width     ( ENC_DW            ),
    .data_d_width     ( AXI_DW            ),
    .ram_depth        ( 32                ),
    .mem_mode         ( MEM_MODE          ),
    .arch_type        ( 0                 ),
    .f_sync_type      ( 1                 ),
    .r_sync_type      ( 1                 ),
    .byte_order       ( 1                 ),
    .flush_value      ( 0                 ),
    .clk_ratio        ( 2                 ),
    .ram_re_ext       ( 0                 ),
    .err_mode         ( 0                 ),
    .tst_mode         ( 0                 ),
    .verif_en         ( 0                 )
  ) fifo_bs(
    .clk_s            ( enc_clk           ),
    .rst_s_n          ( enc_rstn          ),
    .init_s_n         ( fifo_rstn_bs      ),
    .clr_s            ( 1'd0              ),
    .ae_level_s       ( 1'd0              ),
    .af_level_s       ( 1'd0              ),
    .push_s_n         ( !push_req_bs      ),
    .flush_s_n        ( 1'd1              ),
    .data_s           ( wdata_i_bs        ),

    .clr_sync_s       (                   ),
    .clr_in_prog_s    (                   ),
    .clr_cmplt_s      (                   ),
    .wr_en_s_n        ( ram_bs_en_w_n     ),
    .wr_addr_s        ( ram_bs_addr_w     ),
    .wr_data_s        ( ram_bs_data_w     ),
    .inbuf_part_wd_s  ( part_wd_bs        ),
    .inbuf_full_s     (                   ),
    .fifo_word_cnt_s  (                   ),
    .word_cnt_s       (                   ),
    .fifo_empty_s     (                   ),
    .empty_s          (                   ),
    .almost_empty_s   (                   ),
    .half_full_s      (                   ),
    .almost_full_s    (                   ),
    .ram_full_s       (                   ),
    .push_error_s     ( error_bs          ),

    .clk_d            ( axi_clk           ),
    .rst_d_n          ( axi_rstn          ),
    .init_d_n         ( 1'd1              ),
    .clr_d            ( 1'd0              ),
    .ae_level_d       ( BURST_LEN_BS+'d1  ),
    .af_level_d       ( BURST_LEN_BS+'d1  ),
    .pop_d_n          ( !pop_req_bs       ),
    .rd_data_d        ( ram_bs_data_r     ),

    .clr_sync_d       (                   ),
    .clr_in_prog_d    (                   ),
    .clr_cmplt_d      (                   ),
    .ram_re_d_n       ( ram_bs_en_r_n     ),
    .rd_addr_d        ( ram_bs_addr_r     ),
    .data_d           ( data_out_bs       ),
    .outbuf_part_wd_d (                   ),
    .word_cnt_d       (                   ),
    .ram_word_cnt_d   (                   ),
    .empty_d          ( empty_bs          ),
    .almost_empty_d   (                   ),
    .half_full_d      ( half_full_bs      ),
    .almost_full_d    ( almost_full_bs    ),
    .full_d           (                   ),
    .pop_error_d      (                   ),
    .test             (                   )
    );

  DW_ram_r_w_2c_dff #(
    .width            ( AXI_DW            ),
    .depth            ( 32                ),
    .addr_width       ( 5                 ),
    .mem_mode         ( MEM_MODE          ),
    .rst_mode         ( 1                 )
  ) ram_bs(
    .clk_w            ( enc_clk           ),
    .rst_w_n          ( enc_rstn          ),
    .init_w_n         ( 1'd1              ),
    .en_w_n           ( ram_bs_en_w_n     ),
    .addr_w           ( ram_bs_addr_w     ),
    .data_w           ( ram_bs_data_w     ),
    .clk_r            ( axi_clk           ),
    .rst_r_n          ( axi_rstn          ),
    .init_r_n         ( 1'd1              ),
    .en_r_n           ( ram_bs_en_r_n     ),
    .addr_r           ( ram_bs_addr_r     ),

    .data_r_a         (                   ),
    .data_r           ( ram_bs_data_r     )
  );

`endif

`ifdef ALTERA

  parameter   DEPTH_BS = 'd128 ; // base: 64 bits

  wire [7 :0] rdusedw_bs  ;
  wire        full_bs   ;

  fifo_bs fifo_bs(
    .aclr             ( !fifo_rstn_bs   ),
    .data             ( wdata_i_bs      ),
    .rdclk            ( axi_clk         ),
    .rdreq            ( pop_req_bs      ),
    .wrclk            ( enc_clk         ),
    .wrreq            ( push_req_bs     ),
    .q                ( data_out_bs     ),
    .rdempty          ( empty_bs        ),
    .rdfull           ( full_bs         ),
    .rdusedw          ( rdusedw_bs      )
    );

    assign part_wd_bs     = |reg_bs_counter[2:0] ;
    assign error_bs       = full_bs&&push_req_bs ;
    assign almost_full_bs = ( rdusedw_bs >= (DEPTH_BS-2*BURST_LEN_BS-'d1) );
    assign half_full_bs   = ( rdusedw_bs >= (DEPTH_BS>>1) );

`endif

`ifdef XILINX

  parameter   DEPTH_BS = 'd128 ; // base: 64 bits

wire [7 :0] rdusedw_bs  ;
wire        full_bs   ;

fifo_bs fifo_bs0(
  .aclr             ( !fifo_rstn_bs   ),
  .data             ( wdata_i_bs      ),
  .rdclk            ( axi_clk         ),
  .rdreq            ( pop_req_bs      ),
  .wrclk            ( enc_clk         ),
  .wrreq            ( push_req_bs     ),
  .q                ( data_out_bs     ),
  .rdempty          ( empty_bs        ),
  .rdfull           ( full_bs         ),
  .rdusedw          ( rdusedw_bs      )
  );

  assign part_wd_bs     = |reg_bs_counter[2:0] ;
  assign error_bs       = full_bs&&push_req_bs ;
  assign almost_full_bs = ( rdusedw_bs >= (DEPTH_BS-2*BURST_LEN_BS-'d1) );
  assign half_full_bs   = ( rdusedw_bs >= (DEPTH_BS>>1) );

`endif

  // fifo_i_counter
  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn )
      reg_bs_counter  <= 'd0 ;
    else if( enc_start_enc )
      reg_bs_counter  <= 'd0 ;
    else if( winc_i||extra_push ) begin
      reg_bs_counter  <= reg_bs_counter+'d1 ;
    end
  end

  // fifo_o_counter
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn )
      counter_fifo_o  <= 'd0 ;
    else if( enc_start_axi )
      counter_fifo_o  <= 'd0 ;
    else if( pop_req_bs ) begin
      counter_fifo_o  <= counter_fifo_o+'d1 ;
    end
  end

  // generate address to dump data
  assign gm_waddr = reg_bs_base + (counter_fifo_o[31:4]<<7) ;

  // push and pop
  assign push_req_bs  = winc_i || last_dump || extra_push;
  assign wdata_i_bs   = final_bs ;
  assign pop_req_bs   = (gm_mwrite&&gm_saccept) ;
  assign gm_mdata     = data_out_bs ;

  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn )
      partial_bs <= 'd0;
    else if( enc_start_enc )
      partial_bs <= 'd7;
    else if( winc_i||last_dump ) begin
      partial_bs <= wdata_i[2:0];
    end
  end

  // shift
  assign shifted_bs = { partial_bs, wdata_i[7:3] };

  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn )
      state_final_bs <= IDLE_FINAL_BS;
    else begin
      state_final_bs <= next_state_final_bs;
    end
  end

  // adding 0x03
  always @(*) begin
    next_state_final_bs = state_final_bs;
    if( winc_i ) begin
      case( state_final_bs )
        IDLE_FINAL_BS : if( shifted_bs=='h00 )       next_state_final_bs = ONE_FINAL_BS;
                        else                         next_state_final_bs = IDLE_FINAL_BS;

        ONE_FINAL_BS  : if( shifted_bs=='h00 )       next_state_final_bs = TWO_FINAL_BS;
                        else                         next_state_final_bs = IDLE_FINAL_BS;

        TWO_FINAL_BS  : if( shifted_bs<='h03 )       next_state_final_bs = HIT_FINAL_BS;
                        else                         next_state_final_bs = IDLE_FINAL_BS;

        HIT_FINAL_BS  : if( shifted_bs=='h00 )       next_state_final_bs = ONE_FINAL_BS;
                        else                         next_state_final_bs = IDLE_FINAL_BS;
      endcase
    end
  end

  assign hit_final_bs = ( next_state_final_bs==HIT_FINAL_BS ) && winc_i ;

  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn ) begin
      final_bs_cnt <= 'd0;
      final_bs_buffer_0 <= 'd0;
      final_bs_buffer_1 <= 'd0;
    end
    else if( extra_push ) begin // in this case we free one buffer
      final_bs_cnt <= final_bs_cnt-'d1;
      case( final_bs_cnt )
        // 'd1 : impossible
        // 'd2 : do nothing
        'd2 : begin final_bs_buffer_0 <= final_bs_buffer_1; end
      endcase
    end
    else if( hit_final_bs ) begin // in this case we occupy one buffer
      final_bs_cnt <= final_bs_cnt+'d1;
      case( final_bs_cnt )
        'd0 : begin final_bs_buffer_0 <= shifted_bs; end
        'd1 : begin final_bs_buffer_0 <= final_bs_buffer_1;
                    final_bs_buffer_1 <= shifted_bs; end
        // 'd2 : overflow
      endcase
    end
    else if( push_req_bs ) begin
      case( final_bs_cnt )
        // 'd0 : do nothing
        'd1 : begin final_bs_buffer_0 <= shifted_bs; end
        'd2 : begin final_bs_buffer_0 <= final_bs_buffer_1;
                    final_bs_buffer_1 <= shifted_bs; end
      endcase
    end
  end

  always @(*) begin
    if( hit_final_bs )
      final_bs = 'h03;
    else if( !final_bs_cnt )
      final_bs = shifted_bs;
    else begin
      final_bs = final_bs_buffer_0;
    end
  end

  assign extra_push = (final_bs_cnt) && (~winc_i);


  // last dump
  assign dump_start = enc_stop_enc;

  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn )
      last_dump <= 'd0 ;
    // else if( dump_start && part_wd_bs )
    else if( dump_start ) // dump extra 8 bs anyway
      last_dump <= 'd1 ;
    else if( counter_dump == 'd7 ) begin
      last_dump <= 'd0 ;
    end
  end

  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn )
      counter_dump <= 'd0 ;
    else if( last_dump )
      counter_dump <= counter_dump+'d1 ;
    else begin
      counter_dump <= 'd0 ;
    end
  end

  // generate mwrite signal
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn )
      gm_mwrite <= 'd0 ;
    else if( burst_finish_bs )
      gm_mwrite <= 'd0 ;
    else if( half_full_bs || (dump_all_bs&&(!empty_bs)) ) begin
      gm_mwrite <= !gm_mread ;
    end
  end

  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn )
      dump_all_bs <= 'd0 ;
    else if( enc_start_enc )
      dump_all_bs <= 'd0 ;
    else if( counter_dump == 'd7 ) begin
      dump_all_bs <= 'd1 ;
    end
  end

  // check if one burst is finish
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn )
      counter_bs <= 'd0 ;
    else if( !gm_mwrite )
      counter_bs <= 'd0 ;
    else if( gm_saccept&&gm_mwrite ) begin
      counter_bs <= counter_bs + 'd1 ;
    end
  end

  assign burst_finish_bs = (counter_bs == BURST_LEN_BS-1)&&gm_saccept&&gm_mwrite ;

  // fifo rstn
  assign fifo_rstn_bs     = (!enc_start_enc) && axi_rstn ;
  assign fifo_rstn_pixel  = (!enc_start_enc) && axi_rstn ;

  // fifo error
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn )
      enc_fifo_err <= 'd0 ;
    else if( error_bs ) begin
      enc_fifo_err <= 'd1 ;
    end
  end


// Fetch Pixel
  // fifo dut
`ifdef SYNOPSYS

  DW_asymfifo_s2_sf #(
    .data_in_width    ( AXI_DW                ),
    .data_out_width   ( AXI_DW                ),
    .depth            ( 'd64                  ),
    .pop_ae_lvl       ( 'd1                   ),
    .pop_af_lvl       ( 2*BURST_LEN_PIXEL+'d1 ),
    .byte_order       ( 1'b1                  )
  ) fifo_pixel(
    .clk_push         ( axi_clk               ),
    .clk_pop          ( enc_clk               ),
    .rst_n            ( fifo_rstn_pixel       ),
    .push_req_n       ( !push_req_pixel       ),
    .flush_n          ( 1'b1                  ),
    .pop_req_n        ( !pop_req_pixel        ),
    .data_in          ( wdata_i_pixel         ),
    .push_empty       ( /* UNUSED */          ),
    .push_ae          ( /* UNUSED */          ),
    .push_hf          ( /* UNUSED */          ),
    .push_af          ( /* UNUSED */          ),
    .push_full        ( /* UNUSED */          ),
    .push_error       ( /* UNUSED */          ),
    .ram_full         ( /* UNUSED */          ),
    .part_wd          ( /* UNUSED */          ),
    .pop_empty        ( empty_pixel           ),
    .pop_ae           ( /* UNUSED */          ),
    .pop_hf           ( half_full_pixel       ),
    .pop_af           ( almost_full_pixel     ),
    .pop_full         ( /* UNUSED */          ),
    .pop_error        ( error_pixel           ),
    .data_out         ( data_out_pixel        )
    );

`endif

`ifdef ALTERA

  parameter   DEPTH_PIXEL = 'd128 ; // base: 64 bits

  wire  [7:0] wrusedw_pixel       ;

  fifo_pixel fifo_pixel(
    .aclr             ( !fifo_rstn_pixel  ),
    .data             ( wdata_i_pixel     ),
    .rdclk            ( enc_clk           ),
    .rdreq            ( pop_req_pixel     ),
    .wrclk            ( axi_clk           ),
    .wrreq            ( push_req_pixel    ),
    .q                ( data_out_pixel    ),
    .rdempty          ( empty_pixel       ),
    .wrusedw          ( wrusedw_pixel     )
    );

  assign error_pixel        = ( (empty_pixel) && pop_req_pixel );
  assign half_full_pixel    = ( wrusedw_pixel >= (DEPTH_PIXEL>>1) );
  assign almost_full_pixel  = ( wrusedw_pixel >= (DEPTH_PIXEL-2*BURST_LEN_PIXEL-'d1) );

`endif

`ifdef XILINX

    parameter   DEPTH_PIXEL = 'd128 ; // base: 64 bits

wire  [7:0] wrusedw_pixel       ;

fifo_pixel fifo_pixel(
  .aclr             ( !fifo_rstn_pixel  ),
  .data             ( wdata_i_pixel     ),
  .rdclk            ( enc_clk           ),
  .rdreq            ( pop_req_pixel     ),
  .wrclk            ( axi_clk           ),
  .wrreq            ( push_req_pixel    ),
  .q                ( data_out_pixel    ),
  .rdempty          ( empty_pixel       ),
  .wrusedw          ( wrusedw_pixel     )
  );

assign error_pixel        = ( (empty_pixel) && pop_req_pixel );
assign half_full_pixel    = ( wrusedw_pixel >= (DEPTH_PIXEL>>1) );
assign almost_full_pixel  = ( wrusedw_pixel >= (DEPTH_PIXEL-2*BURST_LEN_PIXEL-'d1) );

`endif

  // push and pop
  assign push_req_pixel = gm_svalid && ( gm_sresp==2'b00 );
  assign wdata_i_pixel  = gm_sdata_rv ;
  assign pop_req_pixel  = rvalid_o ;
  assign rdata_o        = {data_out_pixel[31:0],data_out_pixel[63:32]} ;
  assign rvalid_o       = ( rinc_i && (!empty_pixel) );

  // count mb amount in fifo
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn )
      counter_mb <= 'd0 ;
    else if( mb_done_axi && f_pixel_finish )
      counter_mb <= counter_mb ;
    else if( mb_done_axi )
      counter_mb <= counter_mb-'d1 ;
    else if( f_pixel_finish ) begin
      counter_mb <= counter_mb+'d1 ;
    end
  end

  // count current x and y
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn ) begin
      cur_x <= 'd0 ;
      cur_y <= 'd0 ;
    end
    else if( enc_start_axi||enc_stop_axi ) begin
      cur_x <= 'd0 ;
      cur_y <= 'd0 ;
    end
    else if( f_pixel_finish ) begin
      if( cur_x == sys_x_total_o ) begin
        cur_x <= 'd0 ;
        if( cur_y == sys_y_total_o )
          cur_y <= 'd0 ;
        else begin
          cur_y <= cur_y + 'd1 ;
        end
      end
      else begin
        cur_x <= cur_x + 'd1 ;
      end
    end
  end

  // generate mread request
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn )
      gm_mread <= 'd0 ;
    else if( gm_mread && gm_saccept )
      gm_mread <= 'd0 ;
    else if( f_pixel_finish )
      gm_mread <= 'd0 ;
    else if(  (!sys_done_i)     &&    // enc is working
//              (counter_mb<'d2)  &&    // valid mb less than 2
              (!half_full_bs)   &&    // no need to write bs
              (!half_full_pixel)      // pixel fifo has enough room
            ) begin
      gm_mread <= !gm_mwrite ;        // gm part is not writing
    end
  end

  // counter used to generate burst addresses
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn )
      counter_pixel <= 'd0 ;
    else if( sys_done_i )
      counter_pixel <= 'd0 ;
    else if( f_pixel_finish )
      counter_pixel <= 'd0 ;
    else if( gm_saccept&&gm_mread ) begin
      counter_pixel <= counter_pixel+'d1 ;
    end
  end

  assign f_pixel_finish = (counter_pixel == TOTAL_BURST_PIXEL);

  // generate read address
  //assign line_delta = (sys_x_total_o[7:2]+1)*'h40 ; // 64-byte aligned
  assign line_delta = (sys_x_total_o+1)*16 ;  // 64-bit aligned

  always @(*) begin
    if( counter_pixel<'d16 ) begin
      base_addr_pixel = reg_y_base ;
      mb_delta        = 'd16 ;
      line_offset     = counter_pixel ;
    end
    else begin
      base_addr_pixel = reg_y_base + line_delta*( (sys_y_total_o+1)<<4 );
      mb_delta        = 'd8 ;
      line_offset     = counter_pixel-'d16 ;
    end
  end

  assign gm_raddr = (base_addr_pixel) + (cur_y*line_delta*mb_delta + cur_x*'d16) + (line_offset*line_delta) ; // by hll
//  always @(posedge axi_clk or negedge axi_rstn) begin
//   if( !axi_rstn )
//     gm_raddr <= reg_y_base ;
//   else
//      if (sys_done_i)
//        gm_raddr <= reg_y_base;
//      else
//        if ( gm_saccept&&gm_mread )
//          gm_raddr = gm_raddr + 'd16; 
//  end



//*** Enc ****************************************

// Find QP
  // wire assignment
//  assign sys_qp_o = qp  ;//hll
  assign sys_qp_o = 6'd22  ;

  // state machine
  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn )
      state_qp <= IDLE_QP ;
    else begin
      state_qp <= next_state_qp ;
    end
  end

  always @(*) begin
    case( state_qp )
      IDLE_QP : if( mb_ld_i )   next_state_qp <= RUN_QP   ;
                else            next_state_qp <= IDLE_QP  ;

      RUN_QP  : if( hit_qp )    next_state_qp <= IDLE_QP  ;
                else            next_state_qp <= RUN_QP   ;

      default :                 next_state_qp <= IDLE_QP  ;
    endcase
  end

  // counter used to generate qp address
  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn )
      counter_qp <= -'d1 ;
    else if( next_state_qp==IDLE_QP )
      counter_qp <= -'d1 ; // when in state RUN, qp area check starts from 0;
    else if( (next_state_qp==RUN_QP)&&(!hit_qp) ) begin
      counter_qp <= counter_qp+'d1 ;
    end
  end

  // fetch x_cen y_cen x_len and y_len
  always @(*) begin
    case( counter_qp )
      'h0 : begin x_cen = reg_qp_mem_0[23:16]; y_cen = reg_qp_mem_0[31:24]; x_len = reg_qp_mem_0[11:8]; y_len = reg_qp_mem_0[15:12]; end
      'h1 : begin x_cen = reg_qp_mem_1[23:16]; y_cen = reg_qp_mem_1[31:24]; x_len = reg_qp_mem_1[11:8]; y_len = reg_qp_mem_1[15:12]; end
      'h2 : begin x_cen = reg_qp_mem_2[23:16]; y_cen = reg_qp_mem_2[31:24]; x_len = reg_qp_mem_2[11:8]; y_len = reg_qp_mem_2[15:12]; end
      'h3 : begin x_cen = reg_qp_mem_3[23:16]; y_cen = reg_qp_mem_3[31:24]; x_len = reg_qp_mem_3[11:8]; y_len = reg_qp_mem_3[15:12]; end
      'h4 : begin x_cen = reg_qp_mem_4[23:16]; y_cen = reg_qp_mem_4[31:24]; x_len = reg_qp_mem_4[11:8]; y_len = reg_qp_mem_4[15:12]; end
      'h5 : begin x_cen = reg_qp_mem_5[23:16]; y_cen = reg_qp_mem_5[31:24]; x_len = reg_qp_mem_5[11:8]; y_len = reg_qp_mem_5[15:12]; end
      'h6 : begin x_cen = reg_qp_mem_6[23:16]; y_cen = reg_qp_mem_6[31:24]; x_len = reg_qp_mem_6[11:8]; y_len = reg_qp_mem_6[15:12]; end
      'h7 : begin x_cen = reg_qp_mem_7[23:16]; y_cen = reg_qp_mem_7[31:24]; x_len = reg_qp_mem_7[11:8]; y_len = reg_qp_mem_7[15:12]; end
      'h8 : begin x_cen = reg_qp_mem_8[23:16]; y_cen = reg_qp_mem_8[31:24]; x_len = reg_qp_mem_8[11:8]; y_len = reg_qp_mem_8[15:12]; end
      'h9 : begin x_cen = reg_qp_mem_9[23:16]; y_cen = reg_qp_mem_9[31:24]; x_len = reg_qp_mem_9[11:8]; y_len = reg_qp_mem_9[15:12]; end
      'ha : begin x_cen = reg_qp_mem_a[23:16]; y_cen = reg_qp_mem_a[31:24]; x_len = reg_qp_mem_a[11:8]; y_len = reg_qp_mem_a[15:12]; end
      'hb : begin x_cen = reg_qp_mem_b[23:16]; y_cen = reg_qp_mem_b[31:24]; x_len = reg_qp_mem_b[11:8]; y_len = reg_qp_mem_b[15:12]; end
      'hc : begin x_cen = reg_qp_mem_c[23:16]; y_cen = reg_qp_mem_c[31:24]; x_len = reg_qp_mem_c[11:8]; y_len = reg_qp_mem_c[15:12]; end
      'hd : begin x_cen = reg_qp_mem_d[23:16]; y_cen = reg_qp_mem_d[31:24]; x_len = reg_qp_mem_d[11:8]; y_len = reg_qp_mem_d[15:12]; end
      'he : begin x_cen = reg_qp_mem_e[23:16]; y_cen = reg_qp_mem_e[31:24]; x_len = reg_qp_mem_e[11:8]; y_len = reg_qp_mem_e[15:12]; end
      'hf : begin x_cen = reg_qp_mem_f[23:16]; y_cen = reg_qp_mem_f[31:24]; x_len = reg_qp_mem_f[11:8]; y_len = reg_qp_mem_f[15:12]; end
    endcase
  end

  // calculate x_low x_high y_low and y_high
  always @(*) begin
    x_low = x_cen                   ;
    x_high  = x_cen + ('d1 << x_len)  ;
    y_low   = y_cen                   ;
    y_high  = y_cen + ('d1 << y_len)  ;
  end

  // check if hit
  always @(*) begin
    if( (state_qp==RUN_QP) && (x_ld_i>=x_low) && (x_ld_i<x_high) && (y_ld_i>=y_low) && (y_ld_i<y_high) )
      hit_qp = 'd1 ;
    else
      hit_qp = 'd0 ;
  end

  // update qp
  always @(posedge enc_clk or negedge enc_rstn) begin
    if( !enc_rstn )
      qp <= 'd0 ;
    else if( hit_qp ) begin
      case( counter_qp )
        'h0 : qp <= reg_qp_mem_0[5:0] ;
        'h1 : qp <= reg_qp_mem_1[5:0] ;
        'h2 : qp <= reg_qp_mem_2[5:0] ;
        'h3 : qp <= reg_qp_mem_3[5:0] ;
        'h4 : qp <= reg_qp_mem_4[5:0] ;
        'h5 : qp <= reg_qp_mem_5[5:0] ;
        'h6 : qp <= reg_qp_mem_6[5:0] ;
        'h7 : qp <= reg_qp_mem_7[5:0] ;
        'h8 : qp <= reg_qp_mem_8[5:0] ;
        'h9 : qp <= reg_qp_mem_9[5:0] ;
        'ha : qp <= reg_qp_mem_a[5:0] ;
        'hb : qp <= reg_qp_mem_b[5:0] ;
        'hc : qp <= reg_qp_mem_c[5:0] ;
        'hd : qp <= reg_qp_mem_d[5:0] ;
        'he : qp <= reg_qp_mem_e[5:0] ;
        'hf : qp <= reg_qp_mem_f[5:0] ;
      endcase
    end
  end

// Other Signals
  assign sys_start_o    = reg_start           ;
  assign sys_mode_o     = reg_run_mod         ;
  assign sys_x_total_o  = reg_pic_size[7:0]   ;
  assign sys_y_total_o  = reg_pic_size[15:8]  ;

//*** IRQ ****************************************

  // wire assignment
  assign enc_irq_o  = ( state_irq==RUN_IRQ );
  assign irq_start  = enc_stop_axi ;
  assign irq_run    = empty_bs ;
  assign irq_stop   = apb_psel && apb_pwrite && (apb_paddr[6:2]==ADDR_IRQ) && (!apb_pwdata_rv[0]) ;

  // state machine
  always @(posedge axi_clk or negedge axi_rstn) begin
    if( !axi_rstn )
      state_irq <= IDLE_IRQ ;
    else begin
      state_irq <= next_state_irq ;
    end
  end

  always @(*) begin
    case( state_irq )
      IDLE_IRQ  : if( irq_start )   next_state_irq  = WAIT_IRQ  ;
                  else              next_state_irq  = IDLE_IRQ  ;

      WAIT_IRQ  : if( irq_run )     next_state_irq  = RUN_IRQ   ;
                  else              next_state_irq  = WAIT_IRQ  ;

      RUN_IRQ   : if( irq_stop )    next_state_irq  = IDLE_IRQ  ;
                  else              next_state_irq  = RUN_IRQ   ;

      default   :                   next_state_irq  = IDLE_IRQ  ;
    endcase
  end

endmodule
