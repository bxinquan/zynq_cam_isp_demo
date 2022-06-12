//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Jun 12 11:12:31 2022
//Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
//Command     : generate_target h264_wrapper.bd
//Design      : h264_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module h264_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    GPIO_EMIO_tri_io,
    TMDS_tmds_clk_n,
    TMDS_tmds_clk_p,
    TMDS_tmds_data_n,
    TMDS_tmds_data_p,
    cam_active_video,
    cam_data,
    cam_pclk,
    cam_pwdn,
    cam_rst_n,
    cam_vsync,
    iic_scl_io,
    iic_sda_io,
    tmds_oen);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout [4:0]GPIO_EMIO_tri_io;
  output TMDS_tmds_clk_n;
  output TMDS_tmds_clk_p;
  output [2:0]TMDS_tmds_data_n;
  output [2:0]TMDS_tmds_data_p;
  input cam_active_video;
  input [7:0]cam_data;
  input cam_pclk;
  output [0:0]cam_pwdn;
  output [0:0]cam_rst_n;
  input cam_vsync;
  inout iic_scl_io;
  inout iic_sda_io;
  output tmds_oen;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]GPIO_EMIO_tri_i_0;
  wire [1:1]GPIO_EMIO_tri_i_1;
  wire [2:2]GPIO_EMIO_tri_i_2;
  wire [3:3]GPIO_EMIO_tri_i_3;
  wire [4:4]GPIO_EMIO_tri_i_4;
  wire [0:0]GPIO_EMIO_tri_io_0;
  wire [1:1]GPIO_EMIO_tri_io_1;
  wire [2:2]GPIO_EMIO_tri_io_2;
  wire [3:3]GPIO_EMIO_tri_io_3;
  wire [4:4]GPIO_EMIO_tri_io_4;
  wire [0:0]GPIO_EMIO_tri_o_0;
  wire [1:1]GPIO_EMIO_tri_o_1;
  wire [2:2]GPIO_EMIO_tri_o_2;
  wire [3:3]GPIO_EMIO_tri_o_3;
  wire [4:4]GPIO_EMIO_tri_o_4;
  wire [0:0]GPIO_EMIO_tri_t_0;
  wire [1:1]GPIO_EMIO_tri_t_1;
  wire [2:2]GPIO_EMIO_tri_t_2;
  wire [3:3]GPIO_EMIO_tri_t_3;
  wire [4:4]GPIO_EMIO_tri_t_4;
  wire TMDS_tmds_clk_n;
  wire TMDS_tmds_clk_p;
  wire [2:0]TMDS_tmds_data_n;
  wire [2:0]TMDS_tmds_data_p;
  wire cam_active_video;
  wire [7:0]cam_data;
  wire cam_pclk;
  wire [0:0]cam_pwdn;
  wire [0:0]cam_rst_n;
  wire cam_vsync;
  wire iic_scl_i;
  wire iic_scl_io;
  wire iic_scl_o;
  wire iic_scl_t;
  wire iic_sda_i;
  wire iic_sda_io;
  wire iic_sda_o;
  wire iic_sda_t;
  wire tmds_oen;

  IOBUF GPIO_EMIO_tri_iobuf_0
       (.I(GPIO_EMIO_tri_o_0),
        .IO(GPIO_EMIO_tri_io[0]),
        .O(GPIO_EMIO_tri_i_0),
        .T(GPIO_EMIO_tri_t_0));
  IOBUF GPIO_EMIO_tri_iobuf_1
       (.I(GPIO_EMIO_tri_o_1),
        .IO(GPIO_EMIO_tri_io[1]),
        .O(GPIO_EMIO_tri_i_1),
        .T(GPIO_EMIO_tri_t_1));
  IOBUF GPIO_EMIO_tri_iobuf_2
       (.I(GPIO_EMIO_tri_o_2),
        .IO(GPIO_EMIO_tri_io[2]),
        .O(GPIO_EMIO_tri_i_2),
        .T(GPIO_EMIO_tri_t_2));
  IOBUF GPIO_EMIO_tri_iobuf_3
       (.I(GPIO_EMIO_tri_o_3),
        .IO(GPIO_EMIO_tri_io[3]),
        .O(GPIO_EMIO_tri_i_3),
        .T(GPIO_EMIO_tri_t_3));
  IOBUF GPIO_EMIO_tri_iobuf_4
       (.I(GPIO_EMIO_tri_o_4),
        .IO(GPIO_EMIO_tri_io[4]),
        .O(GPIO_EMIO_tri_i_4),
        .T(GPIO_EMIO_tri_t_4));
  h264 h264_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO_EMIO_tri_i({GPIO_EMIO_tri_i_4,GPIO_EMIO_tri_i_3,GPIO_EMIO_tri_i_2,GPIO_EMIO_tri_i_1,GPIO_EMIO_tri_i_0}),
        .GPIO_EMIO_tri_o({GPIO_EMIO_tri_o_4,GPIO_EMIO_tri_o_3,GPIO_EMIO_tri_o_2,GPIO_EMIO_tri_o_1,GPIO_EMIO_tri_o_0}),
        .GPIO_EMIO_tri_t({GPIO_EMIO_tri_t_4,GPIO_EMIO_tri_t_3,GPIO_EMIO_tri_t_2,GPIO_EMIO_tri_t_1,GPIO_EMIO_tri_t_0}),
        .TMDS_tmds_clk_n(TMDS_tmds_clk_n),
        .TMDS_tmds_clk_p(TMDS_tmds_clk_p),
        .TMDS_tmds_data_n(TMDS_tmds_data_n),
        .TMDS_tmds_data_p(TMDS_tmds_data_p),
        .cam_active_video(cam_active_video),
        .cam_data(cam_data),
        .cam_pclk(cam_pclk),
        .cam_pwdn(cam_pwdn),
        .cam_rst_n(cam_rst_n),
        .cam_vsync(cam_vsync),
        .iic_scl_i(iic_scl_i),
        .iic_scl_o(iic_scl_o),
        .iic_scl_t(iic_scl_t),
        .iic_sda_i(iic_sda_i),
        .iic_sda_o(iic_sda_o),
        .iic_sda_t(iic_sda_t),
        .tmds_oen(tmds_oen));
  IOBUF iic_scl_iobuf
       (.I(iic_scl_o),
        .IO(iic_scl_io),
        .O(iic_scl_i),
        .T(iic_scl_t));
  IOBUF iic_sda_iobuf
       (.I(iic_sda_o),
        .IO(iic_sda_io),
        .O(iic_sda_i),
        .T(iic_sda_t));
endmodule
