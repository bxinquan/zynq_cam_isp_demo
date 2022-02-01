// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan 20 00:05:03 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis_dpc_0_0_sim_netlist.v
// Design      : design_1_axis_dpc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc
   (shift_enable,
    \max_y_index_int_reg[10] ,
    m00_axis_tlast,
    m00_axis_tuser,
    m00_axis_tdata,
    \current_state_reg[0] ,
    s00_axis_tvalid_0,
    m00_axis_tvalid,
    s00_axis_tready,
    axis_aclk,
    \shift_x_index_int_reg[0] ,
    \t5_medium_reg[0]_0 ,
    \max_y_index_int_reg[10]_0 ,
    \current_state_reg[1] ,
    \t1_p6_reg[6]_0 ,
    \max_y_index_int_reg[10]_1 ,
    m00_axis_tready,
    s00_axis_tvalid,
    s00_axis_tdata,
    \t3_diff4_reg[0]_0 ,
    s00_axis_tuser,
    axis_aresetn,
    s00_axis_tlast);
  output shift_enable;
  output \max_y_index_int_reg[10] ;
  output m00_axis_tlast;
  output m00_axis_tuser;
  output [7:0]m00_axis_tdata;
  output \current_state_reg[0] ;
  output s00_axis_tvalid_0;
  output m00_axis_tvalid;
  output s00_axis_tready;
  input axis_aclk;
  input \shift_x_index_int_reg[0] ;
  input \t5_medium_reg[0]_0 ;
  input \max_y_index_int_reg[10]_0 ;
  input \current_state_reg[1] ;
  input \t1_p6_reg[6]_0 ;
  input \max_y_index_int_reg[10]_1 ;
  input m00_axis_tready;
  input s00_axis_tvalid;
  input [7:0]s00_axis_tdata;
  input \t3_diff4_reg[0]_0 ;
  input s00_axis_tuser;
  input axis_aresetn;
  input s00_axis_tlast;

  wire [7:0]a;
  wire axis_aclk;
  wire axis_aresetn;
  wire \current_state_reg[0] ;
  wire \current_state_reg[1] ;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1__6_n_0;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2__6_n_0;
  wire i__carry_i_2__7_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3__6_n_0;
  wire i__carry_i_3__7_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4__5_n_0;
  wire i__carry_i_4__6_n_0;
  wire i__carry_i_4__7_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5__3_n_0;
  wire i__carry_i_5__4_n_0;
  wire i__carry_i_5__5_n_0;
  wire i__carry_i_5__6_n_0;
  wire i__carry_i_5__7_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6__3_n_0;
  wire i__carry_i_6__4_n_0;
  wire i__carry_i_6__5_n_0;
  wire i__carry_i_6__6_n_0;
  wire i__carry_i_6__7_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_7__3_n_0;
  wire i__carry_i_7__4_n_0;
  wire i__carry_i_7__5_n_0;
  wire i__carry_i_7__6_n_0;
  wire i__carry_i_7__7_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8__2_n_0;
  wire i__carry_i_8__3_n_0;
  wire i__carry_i_8__4_n_0;
  wire i__carry_i_8__5_n_0;
  wire i__carry_i_8__6_n_0;
  wire i__carry_i_8__7_n_0;
  wire i__carry_i_8_n_0;
  wire [7:0]in_raw_r;
  wire linebuffer_n_0;
  wire linebuffer_n_1;
  wire linebuffer_n_2;
  wire linebuffer_n_3;
  wire linebuffer_n_4;
  wire linebuffer_n_5;
  wire linebuffer_n_6;
  wire linebuffer_n_7;
  wire [7:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tuser;
  wire m00_axis_tvalid;
  wire [7:0]max0_return;
  wire max0_return1;
  wire max0_return1_carry_i_1_n_0;
  wire max0_return1_carry_i_2_n_0;
  wire max0_return1_carry_i_3_n_0;
  wire max0_return1_carry_i_4_n_0;
  wire max0_return1_carry_i_5_n_0;
  wire max0_return1_carry_i_6_n_0;
  wire max0_return1_carry_i_7_n_0;
  wire max0_return1_carry_i_8_n_0;
  wire max0_return1_carry_n_1;
  wire max0_return1_carry_n_2;
  wire max0_return1_carry_n_3;
  wire [7:0]max1_return;
  wire max1_return1;
  wire max1_return1_carry_i_1_n_0;
  wire max1_return1_carry_i_2_n_0;
  wire max1_return1_carry_i_3_n_0;
  wire max1_return1_carry_i_4_n_0;
  wire max1_return1_carry_i_5_n_0;
  wire max1_return1_carry_i_6_n_0;
  wire max1_return1_carry_i_7_n_0;
  wire max1_return1_carry_i_8_n_0;
  wire max1_return1_carry_n_1;
  wire max1_return1_carry_n_2;
  wire max1_return1_carry_n_3;
  wire [7:0]max2_return;
  wire max2_return1;
  wire max2_return1_carry_i_1_n_0;
  wire max2_return1_carry_i_2_n_0;
  wire max2_return1_carry_i_3_n_0;
  wire max2_return1_carry_i_4_n_0;
  wire max2_return1_carry_i_5_n_0;
  wire max2_return1_carry_i_6_n_0;
  wire max2_return1_carry_i_7_n_0;
  wire max2_return1_carry_i_8_n_0;
  wire max2_return1_carry_n_1;
  wire max2_return1_carry_n_2;
  wire max2_return1_carry_n_3;
  wire max2_return2;
  wire max2_return20_in;
  wire max2_return2_carry_i_1_n_0;
  wire max2_return2_carry_i_2_n_0;
  wire max2_return2_carry_i_3_n_0;
  wire max2_return2_carry_i_4_n_0;
  wire max2_return2_carry_i_5_n_0;
  wire max2_return2_carry_i_6_n_0;
  wire max2_return2_carry_i_7_n_0;
  wire max2_return2_carry_i_8_n_0;
  wire max2_return2_carry_n_1;
  wire max2_return2_carry_n_2;
  wire max2_return2_carry_n_3;
  wire \max2_return2_inferred__0/i__carry_n_1 ;
  wire \max2_return2_inferred__0/i__carry_n_2 ;
  wire \max2_return2_inferred__0/i__carry_n_3 ;
  wire [7:0]max_return;
  wire max_return1;
  wire max_return1_carry_i_1_n_0;
  wire max_return1_carry_i_2_n_0;
  wire max_return1_carry_i_3_n_0;
  wire max_return1_carry_i_4_n_0;
  wire max_return1_carry_i_5_n_0;
  wire max_return1_carry_i_6_n_0;
  wire max_return1_carry_i_7_n_0;
  wire max_return1_carry_i_8_n_0;
  wire max_return1_carry_n_1;
  wire max_return1_carry_n_2;
  wire max_return1_carry_n_3;
  wire \max_y_index_int_reg[10] ;
  wire \max_y_index_int_reg[10]_0 ;
  wire \max_y_index_int_reg[10]_1 ;
  wire [7:0]med0_return;
  wire med0_return2;
  wire med0_return2_carry_i_1_n_0;
  wire med0_return2_carry_i_2_n_0;
  wire med0_return2_carry_i_3_n_0;
  wire med0_return2_carry_i_4_n_0;
  wire med0_return2_carry_i_5_n_0;
  wire med0_return2_carry_i_6_n_0;
  wire med0_return2_carry_i_7_n_0;
  wire med0_return2_carry_i_8_n_0;
  wire med0_return2_carry_n_1;
  wire med0_return2_carry_n_2;
  wire med0_return2_carry_n_3;
  wire med0_return3;
  wire med0_return3_carry_i_1_n_0;
  wire med0_return3_carry_i_2_n_0;
  wire med0_return3_carry_i_3_n_0;
  wire med0_return3_carry_i_4_n_0;
  wire med0_return3_carry_i_5_n_0;
  wire med0_return3_carry_i_6_n_0;
  wire med0_return3_carry_i_7_n_0;
  wire med0_return3_carry_i_8_n_0;
  wire med0_return3_carry_n_1;
  wire med0_return3_carry_n_2;
  wire med0_return3_carry_n_3;
  wire [7:0]med1_return;
  wire med1_return2;
  wire med1_return2_carry_i_1_n_0;
  wire med1_return2_carry_i_2_n_0;
  wire med1_return2_carry_i_3_n_0;
  wire med1_return2_carry_i_4_n_0;
  wire med1_return2_carry_i_5_n_0;
  wire med1_return2_carry_i_6_n_0;
  wire med1_return2_carry_i_7_n_0;
  wire med1_return2_carry_i_8_n_0;
  wire med1_return2_carry_n_1;
  wire med1_return2_carry_n_2;
  wire med1_return2_carry_n_3;
  wire med1_return3;
  wire med1_return3_carry_i_1_n_0;
  wire med1_return3_carry_i_2_n_0;
  wire med1_return3_carry_i_3_n_0;
  wire med1_return3_carry_i_4_n_0;
  wire med1_return3_carry_i_5_n_0;
  wire med1_return3_carry_i_6_n_0;
  wire med1_return3_carry_i_7_n_0;
  wire med1_return3_carry_i_8_n_0;
  wire med1_return3_carry_n_1;
  wire med1_return3_carry_n_2;
  wire med1_return3_carry_n_3;
  wire [7:0]med2_return;
  wire med2_return1;
  wire med2_return1_carry_i_1_n_0;
  wire med2_return1_carry_i_2_n_0;
  wire med2_return1_carry_i_3_n_0;
  wire med2_return1_carry_i_4_n_0;
  wire med2_return1_carry_i_5_n_0;
  wire med2_return1_carry_i_6_n_0;
  wire med2_return1_carry_i_7_n_0;
  wire med2_return1_carry_i_8_n_0;
  wire med2_return1_carry_n_1;
  wire med2_return1_carry_n_2;
  wire med2_return1_carry_n_3;
  wire med2_return2;
  wire med2_return21_in;
  wire med2_return2_carry_i_1_n_0;
  wire med2_return2_carry_i_2_n_0;
  wire med2_return2_carry_i_3_n_0;
  wire med2_return2_carry_i_4_n_0;
  wire med2_return2_carry_i_5_n_0;
  wire med2_return2_carry_i_6_n_0;
  wire med2_return2_carry_i_7_n_0;
  wire med2_return2_carry_i_8_n_0;
  wire med2_return2_carry_n_1;
  wire med2_return2_carry_n_2;
  wire med2_return2_carry_n_3;
  wire \med2_return2_inferred__0/i__carry_n_1 ;
  wire \med2_return2_inferred__0/i__carry_n_2 ;
  wire \med2_return2_inferred__0/i__carry_n_3 ;
  wire med2_return3;
  wire med2_return30_in;
  wire med2_return3_carry_i_1_n_0;
  wire med2_return3_carry_i_2_n_0;
  wire med2_return3_carry_i_3_n_0;
  wire med2_return3_carry_i_4_n_0;
  wire med2_return3_carry_i_5_n_0;
  wire med2_return3_carry_i_6_n_0;
  wire med2_return3_carry_i_7_n_0;
  wire med2_return3_carry_i_8_n_0;
  wire med2_return3_carry_n_1;
  wire med2_return3_carry_n_2;
  wire med2_return3_carry_n_3;
  wire \med2_return3_inferred__0/i__carry_n_1 ;
  wire \med2_return3_inferred__0/i__carry_n_2 ;
  wire \med2_return3_inferred__0/i__carry_n_3 ;
  wire [7:0]med3_return;
  wire med3_return1;
  wire med3_return1_carry_i_1_n_0;
  wire med3_return1_carry_i_2_n_0;
  wire med3_return1_carry_i_3_n_0;
  wire med3_return1_carry_i_4_n_0;
  wire med3_return1_carry_i_5_n_0;
  wire med3_return1_carry_i_6_n_0;
  wire med3_return1_carry_i_7_n_0;
  wire med3_return1_carry_i_8_n_0;
  wire med3_return1_carry_n_1;
  wire med3_return1_carry_n_2;
  wire med3_return1_carry_n_3;
  wire med3_return2;
  wire med3_return21_in;
  wire med3_return2_carry_i_1_n_0;
  wire med3_return2_carry_i_2_n_0;
  wire med3_return2_carry_i_3_n_0;
  wire med3_return2_carry_i_4_n_0;
  wire med3_return2_carry_i_5_n_0;
  wire med3_return2_carry_i_6_n_0;
  wire med3_return2_carry_i_7_n_0;
  wire med3_return2_carry_i_8_n_0;
  wire med3_return2_carry_n_1;
  wire med3_return2_carry_n_2;
  wire med3_return2_carry_n_3;
  wire \med3_return2_inferred__0/i__carry_n_1 ;
  wire \med3_return2_inferred__0/i__carry_n_2 ;
  wire \med3_return2_inferred__0/i__carry_n_3 ;
  wire med3_return3;
  wire med3_return30_in;
  wire med3_return3_carry_i_1_n_0;
  wire med3_return3_carry_i_2_n_0;
  wire med3_return3_carry_i_3_n_0;
  wire med3_return3_carry_i_4_n_0;
  wire med3_return3_carry_i_5_n_0;
  wire med3_return3_carry_i_6_n_0;
  wire med3_return3_carry_i_7_n_0;
  wire med3_return3_carry_i_8_n_0;
  wire med3_return3_carry_n_1;
  wire med3_return3_carry_n_2;
  wire med3_return3_carry_n_3;
  wire \med3_return3_inferred__0/i__carry_n_1 ;
  wire \med3_return3_inferred__0/i__carry_n_2 ;
  wire \med3_return3_inferred__0/i__carry_n_3 ;
  wire [7:0]med_return;
  wire med_return2;
  wire med_return2_carry_i_1_n_0;
  wire med_return2_carry_i_2_n_0;
  wire med_return2_carry_i_3_n_0;
  wire med_return2_carry_i_4_n_0;
  wire med_return2_carry_i_5_n_0;
  wire med_return2_carry_i_6_n_0;
  wire med_return2_carry_i_7_n_0;
  wire med_return2_carry_i_8_n_0;
  wire med_return2_carry_n_1;
  wire med_return2_carry_n_2;
  wire med_return2_carry_n_3;
  wire med_return3;
  wire med_return3_carry_i_1_n_0;
  wire med_return3_carry_i_2_n_0;
  wire med_return3_carry_i_3_n_0;
  wire med_return3_carry_i_4_n_0;
  wire med_return3_carry_i_5_n_0;
  wire med_return3_carry_i_6_n_0;
  wire med_return3_carry_i_7_n_0;
  wire med_return3_carry_i_8_n_0;
  wire med_return3_carry_n_1;
  wire med_return3_carry_n_2;
  wire med_return3_carry_n_3;
  wire [7:0]min0_return;
  wire min0_return1_carry_i_1_n_0;
  wire min0_return1_carry_i_2_n_0;
  wire min0_return1_carry_i_3_n_0;
  wire min0_return1_carry_i_4_n_0;
  wire min0_return1_carry_i_5_n_0;
  wire min0_return1_carry_i_6_n_0;
  wire min0_return1_carry_i_7_n_0;
  wire min0_return1_carry_i_8_n_0;
  wire min0_return1_carry_n_0;
  wire min0_return1_carry_n_1;
  wire min0_return1_carry_n_2;
  wire min0_return1_carry_n_3;
  wire min0_return2_carry_i_1_n_0;
  wire min0_return2_carry_i_2_n_0;
  wire min0_return2_carry_i_3_n_0;
  wire min0_return2_carry_i_4_n_0;
  wire min0_return2_carry_i_5_n_0;
  wire min0_return2_carry_i_6_n_0;
  wire min0_return2_carry_i_7_n_0;
  wire min0_return2_carry_i_8_n_0;
  wire min0_return2_carry_n_0;
  wire min0_return2_carry_n_1;
  wire min0_return2_carry_n_2;
  wire min0_return2_carry_n_3;
  wire \min0_return2_inferred__0/i__carry_n_0 ;
  wire \min0_return2_inferred__0/i__carry_n_1 ;
  wire \min0_return2_inferred__0/i__carry_n_2 ;
  wire \min0_return2_inferred__0/i__carry_n_3 ;
  wire [7:0]min1_return;
  wire min1_return1_carry_i_1_n_0;
  wire min1_return1_carry_i_2_n_0;
  wire min1_return1_carry_i_3_n_0;
  wire min1_return1_carry_i_4_n_0;
  wire min1_return1_carry_i_5_n_0;
  wire min1_return1_carry_i_6_n_0;
  wire min1_return1_carry_i_7_n_0;
  wire min1_return1_carry_i_8_n_0;
  wire min1_return1_carry_n_1;
  wire min1_return1_carry_n_2;
  wire min1_return1_carry_n_3;
  wire min1_return2_carry_i_1_n_0;
  wire min1_return2_carry_i_2_n_0;
  wire min1_return2_carry_i_3_n_0;
  wire min1_return2_carry_i_4_n_0;
  wire min1_return2_carry_i_5_n_0;
  wire min1_return2_carry_i_6_n_0;
  wire min1_return2_carry_i_7_n_0;
  wire min1_return2_carry_i_8_n_0;
  wire min1_return2_carry_n_1;
  wire min1_return2_carry_n_2;
  wire min1_return2_carry_n_3;
  wire \min1_return2_inferred__0/i__carry_n_0 ;
  wire \min1_return2_inferred__0/i__carry_n_1 ;
  wire \min1_return2_inferred__0/i__carry_n_2 ;
  wire \min1_return2_inferred__0/i__carry_n_3 ;
  wire [7:0]min2_return;
  wire min2_return1;
  wire min2_return1_carry_i_1_n_0;
  wire min2_return1_carry_i_2_n_0;
  wire min2_return1_carry_i_3_n_0;
  wire min2_return1_carry_i_4_n_0;
  wire min2_return1_carry_i_5_n_0;
  wire min2_return1_carry_i_6_n_0;
  wire min2_return1_carry_i_7_n_0;
  wire min2_return1_carry_i_8_n_0;
  wire min2_return1_carry_n_1;
  wire min2_return1_carry_n_2;
  wire min2_return1_carry_n_3;
  wire min2_return2;
  wire min2_return20_in;
  wire min2_return2_carry_i_1_n_0;
  wire min2_return2_carry_i_2_n_0;
  wire min2_return2_carry_i_3_n_0;
  wire min2_return2_carry_i_4_n_0;
  wire min2_return2_carry_i_5_n_0;
  wire min2_return2_carry_i_6_n_0;
  wire min2_return2_carry_i_7_n_0;
  wire min2_return2_carry_i_8_n_0;
  wire min2_return2_carry_n_1;
  wire min2_return2_carry_n_2;
  wire min2_return2_carry_n_3;
  wire \min2_return2_inferred__0/i__carry_n_1 ;
  wire \min2_return2_inferred__0/i__carry_n_2 ;
  wire \min2_return2_inferred__0/i__carry_n_3 ;
  wire [7:0]min_return;
  wire min_return1_carry_i_1_n_0;
  wire min_return1_carry_i_2_n_0;
  wire min_return1_carry_i_3_n_0;
  wire min_return1_carry_i_4_n_0;
  wire min_return1_carry_i_5_n_0;
  wire min_return1_carry_i_6_n_0;
  wire min_return1_carry_i_7_n_0;
  wire min_return1_carry_i_8_n_0;
  wire min_return1_carry_n_0;
  wire min_return1_carry_n_1;
  wire min_return1_carry_n_2;
  wire min_return1_carry_n_3;
  wire min_return2_carry_i_1_n_0;
  wire min_return2_carry_i_2_n_0;
  wire min_return2_carry_i_3_n_0;
  wire min_return2_carry_i_4_n_0;
  wire min_return2_carry_i_5_n_0;
  wire min_return2_carry_i_6_n_0;
  wire min_return2_carry_i_7_n_0;
  wire min_return2_carry_i_8_n_0;
  wire min_return2_carry_n_0;
  wire min_return2_carry_n_1;
  wire min_return2_carry_n_2;
  wire min_return2_carry_n_3;
  wire \min_return2_inferred__0/i__carry_n_0 ;
  wire \min_return2_inferred__0/i__carry_n_1 ;
  wire \min_return2_inferred__0/i__carry_n_2 ;
  wire \min_return2_inferred__0/i__carry_n_3 ;
  wire [7:0]p12;
  wire [7:0]p13;
  wire [7:0]p14;
  wire [7:0]p15;
  wire [7:0]p22;
  wire [7:0]p23;
  wire [7:0]p24;
  wire [7:0]p25;
  wire [7:0]p32;
  wire [7:0]p34;
  wire [7:0]p35;
  wire [7:0]p42;
  wire [7:0]p43;
  wire [7:0]p44;
  wire [7:0]p45;
  wire [7:0]p52;
  wire [7:0]p53;
  wire [7:0]p54;
  wire [7:0]p55;
  wire [7:0]p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire [7:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tuser;
  wire s00_axis_tvalid;
  wire s00_axis_tvalid_0;
  wire shift_enable;
  wire shift_helper_n_10;
  wire shift_helper_n_11;
  wire shift_helper_n_12;
  wire shift_helper_n_14;
  wire shift_helper_n_15;
  wire shift_helper_n_16;
  wire shift_helper_n_17;
  wire shift_helper_n_18;
  wire shift_helper_n_19;
  wire shift_helper_n_20;
  wire shift_helper_n_21;
  wire shift_helper_n_22;
  wire shift_helper_n_23;
  wire shift_helper_n_24;
  wire shift_helper_n_25;
  wire shift_helper_n_26;
  wire shift_helper_n_27;
  wire shift_helper_n_28;
  wire shift_helper_n_29;
  wire shift_helper_n_30;
  wire shift_helper_n_31;
  wire shift_helper_n_32;
  wire shift_helper_n_33;
  wire shift_helper_n_34;
  wire shift_helper_n_35;
  wire shift_helper_n_36;
  wire shift_helper_n_37;
  wire shift_helper_n_38;
  wire shift_helper_n_39;
  wire shift_helper_n_40;
  wire shift_helper_n_41;
  wire shift_helper_n_42;
  wire shift_helper_n_43;
  wire shift_helper_n_44;
  wire shift_helper_n_45;
  wire shift_helper_n_5;
  wire shift_helper_n_6;
  wire shift_helper_n_7;
  wire shift_helper_n_8;
  wire shift_helper_n_9;
  wire \shift_x_index_int_reg[0] ;
  wire [7:0]t1_p1;
  wire [7:0]t1_p3;
  wire \t1_p6_reg[6]_0 ;
  wire [7:0]t1_p7;
  wire [7:0]t1_p9;
  wire [7:0]t2_max2;
  wire [7:0]t2_max3;
  wire [7:0]t2_med1;
  wire \t2_med1[7]_i_2_n_0 ;
  wire \t2_med1[7]_i_3_n_0 ;
  wire \t2_med1[7]_i_4_n_0 ;
  wire [7:0]t2_med2;
  wire \t2_med2[7]_i_2_n_0 ;
  wire \t2_med2[7]_i_3_n_0 ;
  wire \t2_med2[7]_i_4_n_0 ;
  wire [7:0]t2_med3;
  wire \t2_med3[7]_i_2_n_0 ;
  wire \t2_med3[7]_i_3_n_0 ;
  wire \t2_med3[7]_i_4_n_0 ;
  wire [7:0]t2_min1;
  wire [7:0]t2_min2;
  wire [7:0]t2_min3;
  wire [7:0]t2_p1;
  wire [7:0]t2_p2;
  wire [7:0]t2_p3;
  wire [7:0]t2_p5;
  wire [7:0]t2_p6;
  wire [7:0]t2_p7;
  wire [7:0]t2_p8;
  wire [7:0]t2_p9;
  wire \t3_center_reg_n_0_[0] ;
  wire \t3_center_reg_n_0_[1] ;
  wire \t3_center_reg_n_0_[2] ;
  wire \t3_center_reg_n_0_[3] ;
  wire \t3_center_reg_n_0_[4] ;
  wire \t3_center_reg_n_0_[5] ;
  wire \t3_center_reg_n_0_[6] ;
  wire \t3_center_reg_n_0_[7] ;
  wire [8:0]t3_diff10;
  wire t3_diff10_carry__0_i_1_n_0;
  wire t3_diff10_carry__0_i_2_n_0;
  wire t3_diff10_carry__0_i_3_n_0;
  wire t3_diff10_carry__0_i_4_n_0;
  wire t3_diff10_carry__0_n_0;
  wire t3_diff10_carry__0_n_1;
  wire t3_diff10_carry__0_n_2;
  wire t3_diff10_carry__0_n_3;
  wire t3_diff10_carry_i_1_n_0;
  wire t3_diff10_carry_i_2_n_0;
  wire t3_diff10_carry_i_3_n_0;
  wire t3_diff10_carry_i_4_n_0;
  wire t3_diff10_carry_n_0;
  wire t3_diff10_carry_n_1;
  wire t3_diff10_carry_n_2;
  wire t3_diff10_carry_n_3;
  wire \t3_diff1_reg_n_0_[0] ;
  wire \t3_diff1_reg_n_0_[1] ;
  wire \t3_diff1_reg_n_0_[2] ;
  wire \t3_diff1_reg_n_0_[3] ;
  wire \t3_diff1_reg_n_0_[4] ;
  wire \t3_diff1_reg_n_0_[5] ;
  wire \t3_diff1_reg_n_0_[6] ;
  wire \t3_diff1_reg_n_0_[7] ;
  wire [8:0]t3_diff20;
  wire t3_diff20_carry__0_i_1_n_0;
  wire t3_diff20_carry__0_i_2_n_0;
  wire t3_diff20_carry__0_i_3_n_0;
  wire t3_diff20_carry__0_i_4_n_0;
  wire t3_diff20_carry__0_n_0;
  wire t3_diff20_carry__0_n_1;
  wire t3_diff20_carry__0_n_2;
  wire t3_diff20_carry__0_n_3;
  wire t3_diff20_carry_i_1_n_0;
  wire t3_diff20_carry_i_2_n_0;
  wire t3_diff20_carry_i_3_n_0;
  wire t3_diff20_carry_i_4_n_0;
  wire t3_diff20_carry_n_0;
  wire t3_diff20_carry_n_1;
  wire t3_diff20_carry_n_2;
  wire t3_diff20_carry_n_3;
  wire \t3_diff2_reg_n_0_[0] ;
  wire \t3_diff2_reg_n_0_[1] ;
  wire \t3_diff2_reg_n_0_[2] ;
  wire \t3_diff2_reg_n_0_[3] ;
  wire \t3_diff2_reg_n_0_[4] ;
  wire \t3_diff2_reg_n_0_[5] ;
  wire \t3_diff2_reg_n_0_[6] ;
  wire \t3_diff2_reg_n_0_[7] ;
  wire [8:0]t3_diff30;
  wire t3_diff30_carry__0_i_1_n_0;
  wire t3_diff30_carry__0_i_2_n_0;
  wire t3_diff30_carry__0_i_3_n_0;
  wire t3_diff30_carry__0_i_4_n_0;
  wire t3_diff30_carry__0_n_0;
  wire t3_diff30_carry__0_n_1;
  wire t3_diff30_carry__0_n_2;
  wire t3_diff30_carry__0_n_3;
  wire t3_diff30_carry_i_1_n_0;
  wire t3_diff30_carry_i_2_n_0;
  wire t3_diff30_carry_i_3_n_0;
  wire t3_diff30_carry_i_4_n_0;
  wire t3_diff30_carry_n_0;
  wire t3_diff30_carry_n_1;
  wire t3_diff30_carry_n_2;
  wire t3_diff30_carry_n_3;
  wire \t3_diff3_reg_n_0_[0] ;
  wire \t3_diff3_reg_n_0_[1] ;
  wire \t3_diff3_reg_n_0_[2] ;
  wire \t3_diff3_reg_n_0_[3] ;
  wire \t3_diff3_reg_n_0_[4] ;
  wire \t3_diff3_reg_n_0_[5] ;
  wire \t3_diff3_reg_n_0_[6] ;
  wire \t3_diff3_reg_n_0_[7] ;
  wire [8:0]t3_diff40;
  wire t3_diff40_carry__0_i_1_n_0;
  wire t3_diff40_carry__0_i_2_n_0;
  wire t3_diff40_carry__0_i_3_n_0;
  wire t3_diff40_carry__0_i_4_n_0;
  wire t3_diff40_carry__0_n_0;
  wire t3_diff40_carry__0_n_1;
  wire t3_diff40_carry__0_n_2;
  wire t3_diff40_carry__0_n_3;
  wire t3_diff40_carry_i_1_n_0;
  wire t3_diff40_carry_i_2_n_0;
  wire t3_diff40_carry_i_3_n_0;
  wire t3_diff40_carry_i_4_n_0;
  wire t3_diff40_carry_n_0;
  wire t3_diff40_carry_n_1;
  wire t3_diff40_carry_n_2;
  wire t3_diff40_carry_n_3;
  wire \t3_diff4_reg[0]_0 ;
  wire \t3_diff4_reg_n_0_[0] ;
  wire \t3_diff4_reg_n_0_[1] ;
  wire \t3_diff4_reg_n_0_[2] ;
  wire \t3_diff4_reg_n_0_[3] ;
  wire \t3_diff4_reg_n_0_[4] ;
  wire \t3_diff4_reg_n_0_[5] ;
  wire \t3_diff4_reg_n_0_[6] ;
  wire \t3_diff4_reg_n_0_[7] ;
  wire [8:0]t3_diff50;
  wire t3_diff50_carry__0_i_1_n_0;
  wire t3_diff50_carry__0_i_2_n_0;
  wire t3_diff50_carry__0_i_3_n_0;
  wire t3_diff50_carry__0_i_4_n_0;
  wire t3_diff50_carry__0_n_0;
  wire t3_diff50_carry__0_n_1;
  wire t3_diff50_carry__0_n_2;
  wire t3_diff50_carry__0_n_3;
  wire t3_diff50_carry_i_1_n_0;
  wire t3_diff50_carry_i_2_n_0;
  wire t3_diff50_carry_i_3_n_0;
  wire t3_diff50_carry_i_4_n_0;
  wire t3_diff50_carry_n_0;
  wire t3_diff50_carry_n_1;
  wire t3_diff50_carry_n_2;
  wire t3_diff50_carry_n_3;
  wire \t3_diff5_reg_n_0_[0] ;
  wire \t3_diff5_reg_n_0_[1] ;
  wire \t3_diff5_reg_n_0_[2] ;
  wire \t3_diff5_reg_n_0_[3] ;
  wire \t3_diff5_reg_n_0_[4] ;
  wire \t3_diff5_reg_n_0_[5] ;
  wire \t3_diff5_reg_n_0_[6] ;
  wire \t3_diff5_reg_n_0_[7] ;
  wire [8:0]t3_diff60;
  wire t3_diff60_carry__0_i_1_n_0;
  wire t3_diff60_carry__0_i_2_n_0;
  wire t3_diff60_carry__0_i_3_n_0;
  wire t3_diff60_carry__0_i_4_n_0;
  wire t3_diff60_carry__0_n_0;
  wire t3_diff60_carry__0_n_1;
  wire t3_diff60_carry__0_n_2;
  wire t3_diff60_carry__0_n_3;
  wire t3_diff60_carry_i_1_n_0;
  wire t3_diff60_carry_i_2_n_0;
  wire t3_diff60_carry_i_3_n_0;
  wire t3_diff60_carry_i_4_n_0;
  wire t3_diff60_carry_n_0;
  wire t3_diff60_carry_n_1;
  wire t3_diff60_carry_n_2;
  wire t3_diff60_carry_n_3;
  wire \t3_diff6_reg_n_0_[0] ;
  wire \t3_diff6_reg_n_0_[1] ;
  wire \t3_diff6_reg_n_0_[2] ;
  wire \t3_diff6_reg_n_0_[3] ;
  wire \t3_diff6_reg_n_0_[4] ;
  wire \t3_diff6_reg_n_0_[5] ;
  wire \t3_diff6_reg_n_0_[6] ;
  wire \t3_diff6_reg_n_0_[7] ;
  wire [8:0]t3_diff70;
  wire t3_diff70_carry__0_i_1_n_0;
  wire t3_diff70_carry__0_i_2_n_0;
  wire t3_diff70_carry__0_i_3_n_0;
  wire t3_diff70_carry__0_i_4_n_0;
  wire t3_diff70_carry__0_n_0;
  wire t3_diff70_carry__0_n_1;
  wire t3_diff70_carry__0_n_2;
  wire t3_diff70_carry__0_n_3;
  wire t3_diff70_carry_i_1_n_0;
  wire t3_diff70_carry_i_2_n_0;
  wire t3_diff70_carry_i_3_n_0;
  wire t3_diff70_carry_i_4_n_0;
  wire t3_diff70_carry_n_0;
  wire t3_diff70_carry_n_1;
  wire t3_diff70_carry_n_2;
  wire t3_diff70_carry_n_3;
  wire \t3_diff7_reg_n_0_[0] ;
  wire \t3_diff7_reg_n_0_[1] ;
  wire \t3_diff7_reg_n_0_[2] ;
  wire \t3_diff7_reg_n_0_[3] ;
  wire \t3_diff7_reg_n_0_[4] ;
  wire \t3_diff7_reg_n_0_[5] ;
  wire \t3_diff7_reg_n_0_[6] ;
  wire \t3_diff7_reg_n_0_[7] ;
  wire [8:0]t3_diff80;
  wire t3_diff80_carry__0_i_1_n_0;
  wire t3_diff80_carry__0_i_2_n_0;
  wire t3_diff80_carry__0_i_3_n_0;
  wire t3_diff80_carry__0_i_4_n_0;
  wire t3_diff80_carry__0_n_0;
  wire t3_diff80_carry__0_n_1;
  wire t3_diff80_carry__0_n_2;
  wire t3_diff80_carry__0_n_3;
  wire t3_diff80_carry_i_1_n_0;
  wire t3_diff80_carry_i_2_n_0;
  wire t3_diff80_carry_i_3_n_0;
  wire t3_diff80_carry_i_4_n_0;
  wire t3_diff80_carry_n_0;
  wire t3_diff80_carry_n_1;
  wire t3_diff80_carry_n_2;
  wire t3_diff80_carry_n_3;
  wire \t3_diff8_reg_n_0_[0] ;
  wire \t3_diff8_reg_n_0_[1] ;
  wire \t3_diff8_reg_n_0_[2] ;
  wire \t3_diff8_reg_n_0_[3] ;
  wire \t3_diff8_reg_n_0_[4] ;
  wire \t3_diff8_reg_n_0_[5] ;
  wire \t3_diff8_reg_n_0_[6] ;
  wire \t3_diff8_reg_n_0_[7] ;
  wire \t3_max_of_min_reg_n_0_[0] ;
  wire \t3_max_of_min_reg_n_0_[1] ;
  wire \t3_max_of_min_reg_n_0_[2] ;
  wire \t3_max_of_min_reg_n_0_[3] ;
  wire \t3_max_of_min_reg_n_0_[4] ;
  wire \t3_max_of_min_reg_n_0_[5] ;
  wire \t3_max_of_min_reg_n_0_[6] ;
  wire \t3_max_of_min_reg_n_0_[7] ;
  wire [7:0]t3_med_of_med;
  wire \t3_med_of_med[7]_i_2_n_0 ;
  wire \t3_med_of_med[7]_i_3_n_0 ;
  wire \t3_med_of_med[7]_i_4_n_0 ;
  wire [7:0]t3_min_of_max;
  wire [7:0]t4_center;
  wire t4_defective_pix;
  wire t4_defective_pix_i_1_n_0;
  wire t4_defective_pix_i_2_n_0;
  wire t4_defective_pix_i_3_n_0;
  wire [7:0]t4_diff1;
  wire \t4_diff1[1]_i_1_n_0 ;
  wire \t4_diff1[2]_i_1_n_0 ;
  wire \t4_diff1[3]_i_1_n_0 ;
  wire \t4_diff1[4]_i_1_n_0 ;
  wire \t4_diff1[5]_i_1_n_0 ;
  wire \t4_diff1[6]_i_1_n_0 ;
  wire \t4_diff1[7]_i_1_n_0 ;
  wire \t4_diff1[7]_i_2_n_0 ;
  wire [7:0]t4_diff2;
  wire \t4_diff2[1]_i_1_n_0 ;
  wire \t4_diff2[2]_i_1_n_0 ;
  wire \t4_diff2[3]_i_1_n_0 ;
  wire \t4_diff2[4]_i_1_n_0 ;
  wire \t4_diff2[5]_i_1_n_0 ;
  wire \t4_diff2[6]_i_1_n_0 ;
  wire \t4_diff2[7]_i_1_n_0 ;
  wire \t4_diff2[7]_i_2_n_0 ;
  wire [7:0]t4_diff3;
  wire \t4_diff3[1]_i_1_n_0 ;
  wire \t4_diff3[2]_i_1_n_0 ;
  wire \t4_diff3[3]_i_1_n_0 ;
  wire \t4_diff3[4]_i_1_n_0 ;
  wire \t4_diff3[5]_i_1_n_0 ;
  wire \t4_diff3[6]_i_1_n_0 ;
  wire \t4_diff3[7]_i_1_n_0 ;
  wire \t4_diff3[7]_i_2_n_0 ;
  wire [7:0]t4_diff4;
  wire \t4_diff4[1]_i_1_n_0 ;
  wire \t4_diff4[2]_i_1_n_0 ;
  wire \t4_diff4[3]_i_1_n_0 ;
  wire \t4_diff4[4]_i_1_n_0 ;
  wire \t4_diff4[5]_i_1_n_0 ;
  wire \t4_diff4[6]_i_1_n_0 ;
  wire \t4_diff4[7]_i_1_n_0 ;
  wire \t4_diff4[7]_i_2_n_0 ;
  wire [7:0]t4_diff5;
  wire \t4_diff5[1]_i_1_n_0 ;
  wire \t4_diff5[2]_i_1_n_0 ;
  wire \t4_diff5[3]_i_1_n_0 ;
  wire \t4_diff5[4]_i_1_n_0 ;
  wire \t4_diff5[5]_i_1_n_0 ;
  wire \t4_diff5[6]_i_1_n_0 ;
  wire \t4_diff5[7]_i_1_n_0 ;
  wire \t4_diff5[7]_i_2_n_0 ;
  wire [7:0]t4_diff6;
  wire \t4_diff6[1]_i_1_n_0 ;
  wire \t4_diff6[2]_i_1_n_0 ;
  wire \t4_diff6[3]_i_1_n_0 ;
  wire \t4_diff6[4]_i_1_n_0 ;
  wire \t4_diff6[5]_i_1_n_0 ;
  wire \t4_diff6[6]_i_1_n_0 ;
  wire \t4_diff6[7]_i_1_n_0 ;
  wire \t4_diff6[7]_i_2_n_0 ;
  wire [7:0]t4_diff7;
  wire \t4_diff7[1]_i_1_n_0 ;
  wire \t4_diff7[2]_i_1_n_0 ;
  wire \t4_diff7[3]_i_1_n_0 ;
  wire \t4_diff7[4]_i_1_n_0 ;
  wire \t4_diff7[5]_i_1_n_0 ;
  wire \t4_diff7[6]_i_1_n_0 ;
  wire \t4_diff7[7]_i_1_n_0 ;
  wire \t4_diff7[7]_i_2_n_0 ;
  wire [7:0]t4_diff8;
  wire \t4_diff8[1]_i_1_n_0 ;
  wire \t4_diff8[2]_i_1_n_0 ;
  wire \t4_diff8[3]_i_1_n_0 ;
  wire \t4_diff8[4]_i_1_n_0 ;
  wire \t4_diff8[5]_i_1_n_0 ;
  wire \t4_diff8[6]_i_1_n_0 ;
  wire \t4_diff8[7]_i_1_n_0 ;
  wire \t4_diff8[7]_i_2_n_0 ;
  wire [7:0]t4_medium;
  wire \t4_medium[7]_i_2_n_0 ;
  wire \t4_medium[7]_i_3_n_0 ;
  wire \t4_medium[7]_i_4_n_0 ;
  wire [7:0]t5_center;
  wire t5_defective_pix;
  wire t5_defective_pix1_carry_i_1_n_0;
  wire t5_defective_pix1_carry_i_2_n_0;
  wire t5_defective_pix1_carry_i_3_n_0;
  wire t5_defective_pix1_carry_i_4_n_0;
  wire t5_defective_pix1_carry_i_5_n_0;
  wire t5_defective_pix1_carry_i_6_n_0;
  wire t5_defective_pix1_carry_n_0;
  wire t5_defective_pix1_carry_n_1;
  wire t5_defective_pix1_carry_n_2;
  wire t5_defective_pix1_carry_n_3;
  wire t5_defective_pix2_carry_i_1_n_0;
  wire t5_defective_pix2_carry_i_2_n_0;
  wire t5_defective_pix2_carry_i_3_n_0;
  wire t5_defective_pix2_carry_i_4_n_0;
  wire t5_defective_pix2_carry_i_5_n_0;
  wire t5_defective_pix2_carry_i_6_n_0;
  wire t5_defective_pix2_carry_n_0;
  wire t5_defective_pix2_carry_n_1;
  wire t5_defective_pix2_carry_n_2;
  wire t5_defective_pix2_carry_n_3;
  wire t5_defective_pix3_carry_i_1_n_0;
  wire t5_defective_pix3_carry_i_2_n_0;
  wire t5_defective_pix3_carry_i_3_n_0;
  wire t5_defective_pix3_carry_i_4_n_0;
  wire t5_defective_pix3_carry_i_5_n_0;
  wire t5_defective_pix3_carry_i_6_n_0;
  wire t5_defective_pix3_carry_n_0;
  wire t5_defective_pix3_carry_n_1;
  wire t5_defective_pix3_carry_n_2;
  wire t5_defective_pix3_carry_n_3;
  wire t5_defective_pix4_carry_i_1_n_0;
  wire t5_defective_pix4_carry_i_2_n_0;
  wire t5_defective_pix4_carry_i_3_n_0;
  wire t5_defective_pix4_carry_i_4_n_0;
  wire t5_defective_pix4_carry_i_5_n_0;
  wire t5_defective_pix4_carry_i_6_n_0;
  wire t5_defective_pix4_carry_n_0;
  wire t5_defective_pix4_carry_n_1;
  wire t5_defective_pix4_carry_n_2;
  wire t5_defective_pix4_carry_n_3;
  wire t5_defective_pix5_carry_i_1_n_0;
  wire t5_defective_pix5_carry_i_2_n_0;
  wire t5_defective_pix5_carry_i_3_n_0;
  wire t5_defective_pix5_carry_i_4_n_0;
  wire t5_defective_pix5_carry_i_5_n_0;
  wire t5_defective_pix5_carry_i_6_n_0;
  wire t5_defective_pix5_carry_n_0;
  wire t5_defective_pix5_carry_n_1;
  wire t5_defective_pix5_carry_n_2;
  wire t5_defective_pix5_carry_n_3;
  wire t5_defective_pix6_carry_i_1_n_0;
  wire t5_defective_pix6_carry_i_2_n_0;
  wire t5_defective_pix6_carry_i_3_n_0;
  wire t5_defective_pix6_carry_i_4_n_0;
  wire t5_defective_pix6_carry_i_5_n_0;
  wire t5_defective_pix6_carry_i_6_n_0;
  wire t5_defective_pix6_carry_n_0;
  wire t5_defective_pix6_carry_n_1;
  wire t5_defective_pix6_carry_n_2;
  wire t5_defective_pix6_carry_n_3;
  wire t5_defective_pix7_carry_i_1_n_0;
  wire t5_defective_pix7_carry_i_2_n_0;
  wire t5_defective_pix7_carry_i_3_n_0;
  wire t5_defective_pix7_carry_i_4_n_0;
  wire t5_defective_pix7_carry_i_5_n_0;
  wire t5_defective_pix7_carry_i_6_n_0;
  wire t5_defective_pix7_carry_n_0;
  wire t5_defective_pix7_carry_n_1;
  wire t5_defective_pix7_carry_n_2;
  wire t5_defective_pix7_carry_n_3;
  wire t5_defective_pix8_carry_i_1_n_0;
  wire t5_defective_pix8_carry_i_2_n_0;
  wire t5_defective_pix8_carry_i_3_n_0;
  wire t5_defective_pix8_carry_i_4_n_0;
  wire t5_defective_pix8_carry_i_5_n_0;
  wire t5_defective_pix8_carry_i_6_n_0;
  wire t5_defective_pix8_carry_n_0;
  wire t5_defective_pix8_carry_n_1;
  wire t5_defective_pix8_carry_n_2;
  wire t5_defective_pix8_carry_n_3;
  wire t5_defective_pix_i_1_n_0;
  wire t5_defective_pix_i_2_n_0;
  wire [7:0]t5_medium;
  wire \t5_medium_reg[0]_0 ;
  wire \t6_center[0]_i_1_n_0 ;
  wire \t6_center[1]_i_1_n_0 ;
  wire \t6_center[2]_i_1_n_0 ;
  wire \t6_center[3]_i_1_n_0 ;
  wire \t6_center[4]_i_1_n_0 ;
  wire \t6_center[5]_i_1_n_0 ;
  wire \t6_center[6]_i_1_n_0 ;
  wire \t6_center[7]_i_2_n_0 ;
  wire [7:0]tap1x;
  wire [7:0]tap2x;
  wire [7:0]tap3x;
  wire [3:0]NLW_max0_return1_carry_O_UNCONNECTED;
  wire [3:0]NLW_max1_return1_carry_O_UNCONNECTED;
  wire [3:0]NLW_max2_return1_carry_O_UNCONNECTED;
  wire [3:0]NLW_max2_return2_carry_O_UNCONNECTED;
  wire [3:0]\NLW_max2_return2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_max_return1_carry_O_UNCONNECTED;
  wire [3:0]NLW_med0_return2_carry_O_UNCONNECTED;
  wire [3:0]NLW_med0_return3_carry_O_UNCONNECTED;
  wire [3:0]NLW_med1_return2_carry_O_UNCONNECTED;
  wire [3:0]NLW_med1_return3_carry_O_UNCONNECTED;
  wire [3:0]NLW_med2_return1_carry_O_UNCONNECTED;
  wire [3:0]NLW_med2_return2_carry_O_UNCONNECTED;
  wire [3:0]\NLW_med2_return2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_med2_return3_carry_O_UNCONNECTED;
  wire [3:0]\NLW_med2_return3_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_med3_return1_carry_O_UNCONNECTED;
  wire [3:0]NLW_med3_return2_carry_O_UNCONNECTED;
  wire [3:0]\NLW_med3_return2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_med3_return3_carry_O_UNCONNECTED;
  wire [3:0]\NLW_med3_return3_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_med_return2_carry_O_UNCONNECTED;
  wire [3:0]NLW_med_return3_carry_O_UNCONNECTED;
  wire [3:0]NLW_min0_return1_carry_O_UNCONNECTED;
  wire [3:0]NLW_min0_return2_carry_O_UNCONNECTED;
  wire [3:0]\NLW_min0_return2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_min1_return1_carry_O_UNCONNECTED;
  wire [3:0]NLW_min1_return2_carry_O_UNCONNECTED;
  wire [3:0]\NLW_min1_return2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_min2_return1_carry_O_UNCONNECTED;
  wire [3:0]NLW_min2_return2_carry_O_UNCONNECTED;
  wire [3:0]\NLW_min2_return2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_min_return1_carry_O_UNCONNECTED;
  wire [3:0]NLW_min_return2_carry_O_UNCONNECTED;
  wire [3:0]\NLW_min_return2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_t3_diff10_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_t3_diff10_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t3_diff20_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_t3_diff20_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t3_diff30_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_t3_diff30_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t3_diff40_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_t3_diff40_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t3_diff50_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_t3_diff50_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t3_diff60_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_t3_diff60_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t3_diff70_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_t3_diff70_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t3_diff80_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_t3_diff80_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t5_defective_pix1_carry_O_UNCONNECTED;
  wire [3:0]NLW_t5_defective_pix2_carry_O_UNCONNECTED;
  wire [3:0]NLW_t5_defective_pix3_carry_O_UNCONNECTED;
  wire [3:0]NLW_t5_defective_pix4_carry_O_UNCONNECTED;
  wire [3:0]NLW_t5_defective_pix5_carry_O_UNCONNECTED;
  wire [3:0]NLW_t5_defective_pix6_carry_O_UNCONNECTED;
  wire [3:0]NLW_t5_defective_pix7_carry_O_UNCONNECTED;
  wire [3:0]NLW_t5_defective_pix8_carry_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1
       (.I0(t1_p9[6]),
        .I1(t1_p7[6]),
        .I2(t1_p9[7]),
        .I3(t1_p7[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1__0
       (.I0(p34[6]),
        .I1(\t3_center_reg_n_0_[6] ),
        .I2(p34[7]),
        .I3(\t3_center_reg_n_0_[7] ),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__1
       (.I0(t2_max3[6]),
        .I1(a[6]),
        .I2(a[7]),
        .I3(t2_max3[7]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1__2
       (.I0(t1_p3[6]),
        .I1(t1_p1[6]),
        .I2(t1_p3[7]),
        .I3(t1_p1[7]),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__3
       (.I0(t2_min1[6]),
        .I1(t2_min3[6]),
        .I2(t2_min3[7]),
        .I3(t2_min1[7]),
        .O(i__carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1__4
       (.I0(t3_min_of_max[6]),
        .I1(\t3_max_of_min_reg_n_0_[6] ),
        .I2(t3_min_of_max[7]),
        .I3(\t3_max_of_min_reg_n_0_[7] ),
        .O(i__carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1__5
       (.I0(t3_min_of_max[6]),
        .I1(t3_med_of_med[6]),
        .I2(t3_min_of_max[7]),
        .I3(t3_med_of_med[7]),
        .O(i__carry_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1__6
       (.I0(t2_med3[6]),
        .I1(t2_med1[6]),
        .I2(t2_med3[7]),
        .I3(t2_med1[7]),
        .O(i__carry_i_1__6_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1__7
       (.I0(t2_med3[6]),
        .I1(t2_med2[6]),
        .I2(t2_med3[7]),
        .I3(t2_med2[7]),
        .O(i__carry_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2
       (.I0(t1_p9[4]),
        .I1(t1_p7[4]),
        .I2(t1_p9[5]),
        .I3(t1_p7[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2__0
       (.I0(p34[4]),
        .I1(\t3_center_reg_n_0_[4] ),
        .I2(p34[5]),
        .I3(\t3_center_reg_n_0_[5] ),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__1
       (.I0(t2_max3[4]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(t2_max3[5]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2__2
       (.I0(t1_p3[4]),
        .I1(t1_p1[4]),
        .I2(t1_p3[5]),
        .I3(t1_p1[5]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__3
       (.I0(t2_min1[4]),
        .I1(t2_min3[4]),
        .I2(t2_min3[5]),
        .I3(t2_min1[5]),
        .O(i__carry_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2__4
       (.I0(t3_min_of_max[4]),
        .I1(\t3_max_of_min_reg_n_0_[4] ),
        .I2(t3_min_of_max[5]),
        .I3(\t3_max_of_min_reg_n_0_[5] ),
        .O(i__carry_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2__5
       (.I0(t3_min_of_max[4]),
        .I1(t3_med_of_med[4]),
        .I2(t3_min_of_max[5]),
        .I3(t3_med_of_med[5]),
        .O(i__carry_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2__6
       (.I0(t2_med3[4]),
        .I1(t2_med1[4]),
        .I2(t2_med3[5]),
        .I3(t2_med1[5]),
        .O(i__carry_i_2__6_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2__7
       (.I0(t2_med3[4]),
        .I1(t2_med2[4]),
        .I2(t2_med3[5]),
        .I3(t2_med2[5]),
        .O(i__carry_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3
       (.I0(t1_p9[2]),
        .I1(t1_p7[2]),
        .I2(t1_p9[3]),
        .I3(t1_p7[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3__0
       (.I0(p34[2]),
        .I1(\t3_center_reg_n_0_[2] ),
        .I2(p34[3]),
        .I3(\t3_center_reg_n_0_[3] ),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__1
       (.I0(t2_max3[2]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(t2_max3[3]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3__2
       (.I0(t1_p3[2]),
        .I1(t1_p1[2]),
        .I2(t1_p3[3]),
        .I3(t1_p1[3]),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__3
       (.I0(t2_min1[2]),
        .I1(t2_min3[2]),
        .I2(t2_min3[3]),
        .I3(t2_min1[3]),
        .O(i__carry_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3__4
       (.I0(t3_min_of_max[2]),
        .I1(\t3_max_of_min_reg_n_0_[2] ),
        .I2(t3_min_of_max[3]),
        .I3(\t3_max_of_min_reg_n_0_[3] ),
        .O(i__carry_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3__5
       (.I0(t3_min_of_max[2]),
        .I1(t3_med_of_med[2]),
        .I2(t3_min_of_max[3]),
        .I3(t3_med_of_med[3]),
        .O(i__carry_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3__6
       (.I0(t2_med3[2]),
        .I1(t2_med1[2]),
        .I2(t2_med3[3]),
        .I3(t2_med1[3]),
        .O(i__carry_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3__7
       (.I0(t2_med3[2]),
        .I1(t2_med2[2]),
        .I2(t2_med3[3]),
        .I3(t2_med2[3]),
        .O(i__carry_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4
       (.I0(t1_p9[0]),
        .I1(t1_p7[0]),
        .I2(t1_p9[1]),
        .I3(t1_p7[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4__0
       (.I0(p34[0]),
        .I1(\t3_center_reg_n_0_[0] ),
        .I2(p34[1]),
        .I3(\t3_center_reg_n_0_[1] ),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__1
       (.I0(t2_max3[0]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(t2_max3[1]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4__2
       (.I0(t1_p3[0]),
        .I1(t1_p1[0]),
        .I2(t1_p3[1]),
        .I3(t1_p1[1]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__3
       (.I0(t2_min1[0]),
        .I1(t2_min3[0]),
        .I2(t2_min3[1]),
        .I3(t2_min1[1]),
        .O(i__carry_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4__4
       (.I0(t3_min_of_max[0]),
        .I1(\t3_max_of_min_reg_n_0_[0] ),
        .I2(t3_min_of_max[1]),
        .I3(\t3_max_of_min_reg_n_0_[1] ),
        .O(i__carry_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4__5
       (.I0(t3_min_of_max[0]),
        .I1(t3_med_of_med[0]),
        .I2(t3_min_of_max[1]),
        .I3(t3_med_of_med[1]),
        .O(i__carry_i_4__5_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4__6
       (.I0(t2_med3[0]),
        .I1(t2_med1[0]),
        .I2(t2_med3[1]),
        .I3(t2_med1[1]),
        .O(i__carry_i_4__6_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4__7
       (.I0(t2_med3[0]),
        .I1(t2_med2[0]),
        .I2(t2_med3[1]),
        .I3(t2_med2[1]),
        .O(i__carry_i_4__7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(t1_p9[6]),
        .I1(t1_p7[6]),
        .I2(t1_p9[7]),
        .I3(t1_p7[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(p34[6]),
        .I1(\t3_center_reg_n_0_[6] ),
        .I2(p34[7]),
        .I3(\t3_center_reg_n_0_[7] ),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(t2_max3[6]),
        .I1(a[6]),
        .I2(t2_max3[7]),
        .I3(a[7]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__2
       (.I0(t1_p3[6]),
        .I1(t1_p1[6]),
        .I2(t1_p3[7]),
        .I3(t1_p1[7]),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__3
       (.I0(t2_min1[6]),
        .I1(t2_min3[6]),
        .I2(t2_min1[7]),
        .I3(t2_min3[7]),
        .O(i__carry_i_5__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__4
       (.I0(\t3_max_of_min_reg_n_0_[6] ),
        .I1(t3_min_of_max[6]),
        .I2(\t3_max_of_min_reg_n_0_[7] ),
        .I3(t3_min_of_max[7]),
        .O(i__carry_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__5
       (.I0(t3_min_of_max[6]),
        .I1(t3_med_of_med[6]),
        .I2(t3_min_of_max[7]),
        .I3(t3_med_of_med[7]),
        .O(i__carry_i_5__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__6
       (.I0(t2_med1[6]),
        .I1(t2_med3[6]),
        .I2(t2_med1[7]),
        .I3(t2_med3[7]),
        .O(i__carry_i_5__6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__7
       (.I0(t2_med3[6]),
        .I1(t2_med2[6]),
        .I2(t2_med3[7]),
        .I3(t2_med2[7]),
        .O(i__carry_i_5__7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(t1_p9[4]),
        .I1(t1_p7[4]),
        .I2(t1_p9[5]),
        .I3(t1_p7[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(p34[4]),
        .I1(\t3_center_reg_n_0_[4] ),
        .I2(p34[5]),
        .I3(\t3_center_reg_n_0_[5] ),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(t2_max3[4]),
        .I1(a[4]),
        .I2(t2_max3[5]),
        .I3(a[5]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__2
       (.I0(t1_p3[4]),
        .I1(t1_p1[4]),
        .I2(t1_p3[5]),
        .I3(t1_p1[5]),
        .O(i__carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__3
       (.I0(t2_min1[4]),
        .I1(t2_min3[4]),
        .I2(t2_min1[5]),
        .I3(t2_min3[5]),
        .O(i__carry_i_6__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__4
       (.I0(\t3_max_of_min_reg_n_0_[4] ),
        .I1(t3_min_of_max[4]),
        .I2(\t3_max_of_min_reg_n_0_[5] ),
        .I3(t3_min_of_max[5]),
        .O(i__carry_i_6__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__5
       (.I0(t3_min_of_max[4]),
        .I1(t3_med_of_med[4]),
        .I2(t3_min_of_max[5]),
        .I3(t3_med_of_med[5]),
        .O(i__carry_i_6__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__6
       (.I0(t2_med1[4]),
        .I1(t2_med3[4]),
        .I2(t2_med1[5]),
        .I3(t2_med3[5]),
        .O(i__carry_i_6__6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__7
       (.I0(t2_med3[4]),
        .I1(t2_med2[4]),
        .I2(t2_med3[5]),
        .I3(t2_med2[5]),
        .O(i__carry_i_6__7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(t1_p9[2]),
        .I1(t1_p7[2]),
        .I2(t1_p9[3]),
        .I3(t1_p7[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(p34[2]),
        .I1(\t3_center_reg_n_0_[2] ),
        .I2(p34[3]),
        .I3(\t3_center_reg_n_0_[3] ),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(t2_max3[2]),
        .I1(a[2]),
        .I2(t2_max3[3]),
        .I3(a[3]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__2
       (.I0(t1_p3[2]),
        .I1(t1_p1[2]),
        .I2(t1_p3[3]),
        .I3(t1_p1[3]),
        .O(i__carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__3
       (.I0(t2_min1[2]),
        .I1(t2_min3[2]),
        .I2(t2_min1[3]),
        .I3(t2_min3[3]),
        .O(i__carry_i_7__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__4
       (.I0(\t3_max_of_min_reg_n_0_[2] ),
        .I1(t3_min_of_max[2]),
        .I2(\t3_max_of_min_reg_n_0_[3] ),
        .I3(t3_min_of_max[3]),
        .O(i__carry_i_7__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__5
       (.I0(t3_min_of_max[2]),
        .I1(t3_med_of_med[2]),
        .I2(t3_min_of_max[3]),
        .I3(t3_med_of_med[3]),
        .O(i__carry_i_7__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__6
       (.I0(t2_med1[2]),
        .I1(t2_med3[2]),
        .I2(t2_med1[3]),
        .I3(t2_med3[3]),
        .O(i__carry_i_7__6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__7
       (.I0(t2_med3[2]),
        .I1(t2_med2[2]),
        .I2(t2_med3[3]),
        .I3(t2_med2[3]),
        .O(i__carry_i_7__7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(t1_p9[0]),
        .I1(t1_p7[0]),
        .I2(t1_p9[1]),
        .I3(t1_p7[1]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(p34[0]),
        .I1(\t3_center_reg_n_0_[0] ),
        .I2(p34[1]),
        .I3(\t3_center_reg_n_0_[1] ),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(t2_max3[0]),
        .I1(a[0]),
        .I2(t2_max3[1]),
        .I3(a[1]),
        .O(i__carry_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__2
       (.I0(t1_p3[0]),
        .I1(t1_p1[0]),
        .I2(t1_p3[1]),
        .I3(t1_p1[1]),
        .O(i__carry_i_8__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__3
       (.I0(t2_min1[0]),
        .I1(t2_min3[0]),
        .I2(t2_min1[1]),
        .I3(t2_min3[1]),
        .O(i__carry_i_8__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__4
       (.I0(\t3_max_of_min_reg_n_0_[0] ),
        .I1(t3_min_of_max[0]),
        .I2(\t3_max_of_min_reg_n_0_[1] ),
        .I3(t3_min_of_max[1]),
        .O(i__carry_i_8__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__5
       (.I0(t3_min_of_max[0]),
        .I1(t3_med_of_med[0]),
        .I2(t3_min_of_max[1]),
        .I3(t3_med_of_med[1]),
        .O(i__carry_i_8__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__6
       (.I0(t2_med1[0]),
        .I1(t2_med3[0]),
        .I2(t2_med1[1]),
        .I3(t2_med3[1]),
        .O(i__carry_i_8__6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__7
       (.I0(t2_med3[0]),
        .I1(t2_med2[0]),
        .I2(t2_med3[1]),
        .I3(t2_med2[1]),
        .O(i__carry_i_8__7_n_0));
  FDCE \in_raw_r_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_12),
        .Q(in_raw_r[0]));
  FDCE \in_raw_r_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_11),
        .Q(in_raw_r[1]));
  FDCE \in_raw_r_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_10),
        .Q(in_raw_r[2]));
  FDCE \in_raw_r_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_9),
        .Q(in_raw_r[3]));
  FDCE \in_raw_r_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_8),
        .Q(in_raw_r[4]));
  FDCE \in_raw_r_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_7),
        .Q(in_raw_r[5]));
  FDCE \in_raw_r_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_6),
        .Q(in_raw_r[6]));
  FDCE \in_raw_r_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_5),
        .Q(in_raw_r[7]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register linebuffer
       (.D({linebuffer_n_0,linebuffer_n_1,linebuffer_n_2,linebuffer_n_3,linebuffer_n_4,linebuffer_n_5,linebuffer_n_6,linebuffer_n_7}),
        .E(shift_enable),
        .axis_aclk(axis_aclk),
        .mem_reg(tap1x),
        .mem_reg_0(tap2x),
        .mem_reg_1(tap3x),
        .s00_axis_tdata(s00_axis_tdata));
  CARRY4 max0_return1_carry
       (.CI(1'b0),
        .CO({max0_return1,max0_return1_carry_n_1,max0_return1_carry_n_2,max0_return1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({max0_return1_carry_i_1_n_0,max0_return1_carry_i_2_n_0,max0_return1_carry_i_3_n_0,max0_return1_carry_i_4_n_0}),
        .O(NLW_max0_return1_carry_O_UNCONNECTED[3:0]),
        .S({max0_return1_carry_i_5_n_0,max0_return1_carry_i_6_n_0,max0_return1_carry_i_7_n_0,max0_return1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    max0_return1_carry_i_1
       (.I0(\t3_center_reg_n_0_[6] ),
        .I1(p32[6]),
        .I2(\t3_center_reg_n_0_[7] ),
        .I3(p32[7]),
        .O(max0_return1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    max0_return1_carry_i_2
       (.I0(\t3_center_reg_n_0_[4] ),
        .I1(p32[4]),
        .I2(\t3_center_reg_n_0_[5] ),
        .I3(p32[5]),
        .O(max0_return1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    max0_return1_carry_i_3
       (.I0(\t3_center_reg_n_0_[2] ),
        .I1(p32[2]),
        .I2(\t3_center_reg_n_0_[3] ),
        .I3(p32[3]),
        .O(max0_return1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    max0_return1_carry_i_4
       (.I0(\t3_center_reg_n_0_[0] ),
        .I1(p32[0]),
        .I2(\t3_center_reg_n_0_[1] ),
        .I3(p32[1]),
        .O(max0_return1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max0_return1_carry_i_5
       (.I0(p32[6]),
        .I1(\t3_center_reg_n_0_[6] ),
        .I2(p32[7]),
        .I3(\t3_center_reg_n_0_[7] ),
        .O(max0_return1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max0_return1_carry_i_6
       (.I0(p32[4]),
        .I1(\t3_center_reg_n_0_[4] ),
        .I2(p32[5]),
        .I3(\t3_center_reg_n_0_[5] ),
        .O(max0_return1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max0_return1_carry_i_7
       (.I0(p32[2]),
        .I1(\t3_center_reg_n_0_[2] ),
        .I2(p32[3]),
        .I3(\t3_center_reg_n_0_[3] ),
        .O(max0_return1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max0_return1_carry_i_8
       (.I0(p32[0]),
        .I1(\t3_center_reg_n_0_[0] ),
        .I2(p32[1]),
        .I3(\t3_center_reg_n_0_[1] ),
        .O(max0_return1_carry_i_8_n_0));
  CARRY4 max1_return1_carry
       (.CI(1'b0),
        .CO({max1_return1,max1_return1_carry_n_1,max1_return1_carry_n_2,max1_return1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({max1_return1_carry_i_1_n_0,max1_return1_carry_i_2_n_0,max1_return1_carry_i_3_n_0,max1_return1_carry_i_4_n_0}),
        .O(NLW_max1_return1_carry_O_UNCONNECTED[3:0]),
        .S({max1_return1_carry_i_5_n_0,max1_return1_carry_i_6_n_0,max1_return1_carry_i_7_n_0,max1_return1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    max1_return1_carry_i_1
       (.I0(t1_p7[6]),
        .I1(p52[6]),
        .I2(t1_p7[7]),
        .I3(p52[7]),
        .O(max1_return1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    max1_return1_carry_i_2
       (.I0(t1_p7[4]),
        .I1(p52[4]),
        .I2(t1_p7[5]),
        .I3(p52[5]),
        .O(max1_return1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    max1_return1_carry_i_3
       (.I0(t1_p7[2]),
        .I1(p52[2]),
        .I2(t1_p7[3]),
        .I3(p52[3]),
        .O(max1_return1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    max1_return1_carry_i_4
       (.I0(t1_p7[0]),
        .I1(p52[0]),
        .I2(t1_p7[1]),
        .I3(p52[1]),
        .O(max1_return1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max1_return1_carry_i_5
       (.I0(p52[6]),
        .I1(t1_p7[6]),
        .I2(p52[7]),
        .I3(t1_p7[7]),
        .O(max1_return1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max1_return1_carry_i_6
       (.I0(p52[4]),
        .I1(t1_p7[4]),
        .I2(p52[5]),
        .I3(t1_p7[5]),
        .O(max1_return1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max1_return1_carry_i_7
       (.I0(p52[2]),
        .I1(t1_p7[2]),
        .I2(p52[3]),
        .I3(t1_p7[3]),
        .O(max1_return1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max1_return1_carry_i_8
       (.I0(p52[0]),
        .I1(t1_p7[0]),
        .I2(p52[1]),
        .I3(t1_p7[1]),
        .O(max1_return1_carry_i_8_n_0));
  CARRY4 max2_return1_carry
       (.CI(1'b0),
        .CO({max2_return1,max2_return1_carry_n_1,max2_return1_carry_n_2,max2_return1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({max2_return1_carry_i_1_n_0,max2_return1_carry_i_2_n_0,max2_return1_carry_i_3_n_0,max2_return1_carry_i_4_n_0}),
        .O(NLW_max2_return1_carry_O_UNCONNECTED[3:0]),
        .S({max2_return1_carry_i_5_n_0,max2_return1_carry_i_6_n_0,max2_return1_carry_i_7_n_0,max2_return1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    max2_return1_carry_i_1
       (.I0(t2_min1[6]),
        .I1(t2_min2[6]),
        .I2(t2_min2[7]),
        .I3(t2_min1[7]),
        .O(max2_return1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    max2_return1_carry_i_2
       (.I0(t2_min1[4]),
        .I1(t2_min2[4]),
        .I2(t2_min2[5]),
        .I3(t2_min1[5]),
        .O(max2_return1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    max2_return1_carry_i_3
       (.I0(t2_min1[2]),
        .I1(t2_min2[2]),
        .I2(t2_min2[3]),
        .I3(t2_min1[3]),
        .O(max2_return1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    max2_return1_carry_i_4
       (.I0(t2_min1[0]),
        .I1(t2_min2[0]),
        .I2(t2_min2[1]),
        .I3(t2_min1[1]),
        .O(max2_return1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max2_return1_carry_i_5
       (.I0(t2_min1[6]),
        .I1(t2_min2[6]),
        .I2(t2_min1[7]),
        .I3(t2_min2[7]),
        .O(max2_return1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max2_return1_carry_i_6
       (.I0(t2_min1[4]),
        .I1(t2_min2[4]),
        .I2(t2_min1[5]),
        .I3(t2_min2[5]),
        .O(max2_return1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max2_return1_carry_i_7
       (.I0(t2_min1[2]),
        .I1(t2_min2[2]),
        .I2(t2_min1[3]),
        .I3(t2_min2[3]),
        .O(max2_return1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max2_return1_carry_i_8
       (.I0(t2_min1[0]),
        .I1(t2_min2[0]),
        .I2(t2_min1[1]),
        .I3(t2_min2[1]),
        .O(max2_return1_carry_i_8_n_0));
  CARRY4 max2_return2_carry
       (.CI(1'b0),
        .CO({max2_return2,max2_return2_carry_n_1,max2_return2_carry_n_2,max2_return2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({max2_return2_carry_i_1_n_0,max2_return2_carry_i_2_n_0,max2_return2_carry_i_3_n_0,max2_return2_carry_i_4_n_0}),
        .O(NLW_max2_return2_carry_O_UNCONNECTED[3:0]),
        .S({max2_return2_carry_i_5_n_0,max2_return2_carry_i_6_n_0,max2_return2_carry_i_7_n_0,max2_return2_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    max2_return2_carry_i_1
       (.I0(t2_min2[6]),
        .I1(t2_min3[6]),
        .I2(t2_min3[7]),
        .I3(t2_min2[7]),
        .O(max2_return2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    max2_return2_carry_i_2
       (.I0(t2_min2[4]),
        .I1(t2_min3[4]),
        .I2(t2_min3[5]),
        .I3(t2_min2[5]),
        .O(max2_return2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    max2_return2_carry_i_3
       (.I0(t2_min2[2]),
        .I1(t2_min3[2]),
        .I2(t2_min3[3]),
        .I3(t2_min2[3]),
        .O(max2_return2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    max2_return2_carry_i_4
       (.I0(t2_min2[0]),
        .I1(t2_min3[0]),
        .I2(t2_min3[1]),
        .I3(t2_min2[1]),
        .O(max2_return2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max2_return2_carry_i_5
       (.I0(t2_min2[6]),
        .I1(t2_min3[6]),
        .I2(t2_min2[7]),
        .I3(t2_min3[7]),
        .O(max2_return2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max2_return2_carry_i_6
       (.I0(t2_min2[4]),
        .I1(t2_min3[4]),
        .I2(t2_min2[5]),
        .I3(t2_min3[5]),
        .O(max2_return2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max2_return2_carry_i_7
       (.I0(t2_min2[2]),
        .I1(t2_min3[2]),
        .I2(t2_min2[3]),
        .I3(t2_min3[3]),
        .O(max2_return2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max2_return2_carry_i_8
       (.I0(t2_min2[0]),
        .I1(t2_min3[0]),
        .I2(t2_min2[1]),
        .I3(t2_min3[1]),
        .O(max2_return2_carry_i_8_n_0));
  CARRY4 \max2_return2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({max2_return20_in,\max2_return2_inferred__0/i__carry_n_1 ,\max2_return2_inferred__0/i__carry_n_2 ,\max2_return2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}),
        .O(\NLW_max2_return2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__3_n_0,i__carry_i_6__3_n_0,i__carry_i_7__3_n_0,i__carry_i_8__3_n_0}));
  CARRY4 max_return1_carry
       (.CI(1'b0),
        .CO({max_return1,max_return1_carry_n_1,max_return1_carry_n_2,max_return1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({max_return1_carry_i_1_n_0,max_return1_carry_i_2_n_0,max_return1_carry_i_3_n_0,max_return1_carry_i_4_n_0}),
        .O(NLW_max_return1_carry_O_UNCONNECTED[3:0]),
        .S({max_return1_carry_i_5_n_0,max_return1_carry_i_6_n_0,max_return1_carry_i_7_n_0,max_return1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    max_return1_carry_i_1
       (.I0(t1_p1[6]),
        .I1(p12[6]),
        .I2(t1_p1[7]),
        .I3(p12[7]),
        .O(max_return1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    max_return1_carry_i_2
       (.I0(t1_p1[4]),
        .I1(p12[4]),
        .I2(t1_p1[5]),
        .I3(p12[5]),
        .O(max_return1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    max_return1_carry_i_3
       (.I0(t1_p1[2]),
        .I1(p12[2]),
        .I2(t1_p1[3]),
        .I3(p12[3]),
        .O(max_return1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    max_return1_carry_i_4
       (.I0(t1_p1[0]),
        .I1(p12[0]),
        .I2(t1_p1[1]),
        .I3(p12[1]),
        .O(max_return1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_return1_carry_i_5
       (.I0(p12[6]),
        .I1(t1_p1[6]),
        .I2(p12[7]),
        .I3(t1_p1[7]),
        .O(max_return1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_return1_carry_i_6
       (.I0(p12[4]),
        .I1(t1_p1[4]),
        .I2(p12[5]),
        .I3(t1_p1[5]),
        .O(max_return1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_return1_carry_i_7
       (.I0(p12[2]),
        .I1(t1_p1[2]),
        .I2(p12[3]),
        .I3(t1_p1[3]),
        .O(max_return1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_return1_carry_i_8
       (.I0(p12[0]),
        .I1(t1_p1[0]),
        .I2(p12[1]),
        .I3(t1_p1[1]),
        .O(max_return1_carry_i_8_n_0));
  CARRY4 med0_return2_carry
       (.CI(1'b0),
        .CO({med0_return2,med0_return2_carry_n_1,med0_return2_carry_n_2,med0_return2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med0_return2_carry_i_1_n_0,med0_return2_carry_i_2_n_0,med0_return2_carry_i_3_n_0,med0_return2_carry_i_4_n_0}),
        .O(NLW_med0_return2_carry_O_UNCONNECTED[3:0]),
        .S({med0_return2_carry_i_5_n_0,med0_return2_carry_i_6_n_0,med0_return2_carry_i_7_n_0,med0_return2_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    med0_return2_carry_i_1
       (.I0(p32[6]),
        .I1(p34[6]),
        .I2(p32[7]),
        .I3(p34[7]),
        .O(med0_return2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med0_return2_carry_i_2
       (.I0(p32[4]),
        .I1(p34[4]),
        .I2(p32[5]),
        .I3(p34[5]),
        .O(med0_return2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med0_return2_carry_i_3
       (.I0(p32[2]),
        .I1(p34[2]),
        .I2(p32[3]),
        .I3(p34[3]),
        .O(med0_return2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med0_return2_carry_i_4
       (.I0(p32[0]),
        .I1(p34[0]),
        .I2(p32[1]),
        .I3(p34[1]),
        .O(med0_return2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med0_return2_carry_i_5
       (.I0(p32[6]),
        .I1(p34[6]),
        .I2(p32[7]),
        .I3(p34[7]),
        .O(med0_return2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med0_return2_carry_i_6
       (.I0(p32[4]),
        .I1(p34[4]),
        .I2(p32[5]),
        .I3(p34[5]),
        .O(med0_return2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med0_return2_carry_i_7
       (.I0(p32[2]),
        .I1(p34[2]),
        .I2(p32[3]),
        .I3(p34[3]),
        .O(med0_return2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med0_return2_carry_i_8
       (.I0(p32[0]),
        .I1(p34[0]),
        .I2(p32[1]),
        .I3(p34[1]),
        .O(med0_return2_carry_i_8_n_0));
  CARRY4 med0_return3_carry
       (.CI(1'b0),
        .CO({med0_return3,med0_return3_carry_n_1,med0_return3_carry_n_2,med0_return3_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med0_return3_carry_i_1_n_0,med0_return3_carry_i_2_n_0,med0_return3_carry_i_3_n_0,med0_return3_carry_i_4_n_0}),
        .O(NLW_med0_return3_carry_O_UNCONNECTED[3:0]),
        .S({med0_return3_carry_i_5_n_0,med0_return3_carry_i_6_n_0,med0_return3_carry_i_7_n_0,med0_return3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    med0_return3_carry_i_1
       (.I0(\t3_center_reg_n_0_[6] ),
        .I1(p34[6]),
        .I2(\t3_center_reg_n_0_[7] ),
        .I3(p34[7]),
        .O(med0_return3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med0_return3_carry_i_2
       (.I0(\t3_center_reg_n_0_[4] ),
        .I1(p34[4]),
        .I2(\t3_center_reg_n_0_[5] ),
        .I3(p34[5]),
        .O(med0_return3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med0_return3_carry_i_3
       (.I0(\t3_center_reg_n_0_[2] ),
        .I1(p34[2]),
        .I2(\t3_center_reg_n_0_[3] ),
        .I3(p34[3]),
        .O(med0_return3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med0_return3_carry_i_4
       (.I0(\t3_center_reg_n_0_[0] ),
        .I1(p34[0]),
        .I2(\t3_center_reg_n_0_[1] ),
        .I3(p34[1]),
        .O(med0_return3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med0_return3_carry_i_5
       (.I0(p34[6]),
        .I1(\t3_center_reg_n_0_[6] ),
        .I2(p34[7]),
        .I3(\t3_center_reg_n_0_[7] ),
        .O(med0_return3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med0_return3_carry_i_6
       (.I0(p34[4]),
        .I1(\t3_center_reg_n_0_[4] ),
        .I2(p34[5]),
        .I3(\t3_center_reg_n_0_[5] ),
        .O(med0_return3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med0_return3_carry_i_7
       (.I0(p34[2]),
        .I1(\t3_center_reg_n_0_[2] ),
        .I2(p34[3]),
        .I3(\t3_center_reg_n_0_[3] ),
        .O(med0_return3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med0_return3_carry_i_8
       (.I0(p34[0]),
        .I1(\t3_center_reg_n_0_[0] ),
        .I2(p34[1]),
        .I3(\t3_center_reg_n_0_[1] ),
        .O(med0_return3_carry_i_8_n_0));
  CARRY4 med1_return2_carry
       (.CI(1'b0),
        .CO({med1_return2,med1_return2_carry_n_1,med1_return2_carry_n_2,med1_return2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med1_return2_carry_i_1_n_0,med1_return2_carry_i_2_n_0,med1_return2_carry_i_3_n_0,med1_return2_carry_i_4_n_0}),
        .O(NLW_med1_return2_carry_O_UNCONNECTED[3:0]),
        .S({med1_return2_carry_i_5_n_0,med1_return2_carry_i_6_n_0,med1_return2_carry_i_7_n_0,med1_return2_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    med1_return2_carry_i_1
       (.I0(p52[6]),
        .I1(t1_p9[6]),
        .I2(p52[7]),
        .I3(t1_p9[7]),
        .O(med1_return2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med1_return2_carry_i_2
       (.I0(p52[4]),
        .I1(t1_p9[4]),
        .I2(p52[5]),
        .I3(t1_p9[5]),
        .O(med1_return2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med1_return2_carry_i_3
       (.I0(p52[2]),
        .I1(t1_p9[2]),
        .I2(p52[3]),
        .I3(t1_p9[3]),
        .O(med1_return2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med1_return2_carry_i_4
       (.I0(p52[0]),
        .I1(t1_p9[0]),
        .I2(p52[1]),
        .I3(t1_p9[1]),
        .O(med1_return2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med1_return2_carry_i_5
       (.I0(p52[6]),
        .I1(t1_p9[6]),
        .I2(p52[7]),
        .I3(t1_p9[7]),
        .O(med1_return2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med1_return2_carry_i_6
       (.I0(p52[4]),
        .I1(t1_p9[4]),
        .I2(p52[5]),
        .I3(t1_p9[5]),
        .O(med1_return2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med1_return2_carry_i_7
       (.I0(p52[2]),
        .I1(t1_p9[2]),
        .I2(p52[3]),
        .I3(t1_p9[3]),
        .O(med1_return2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med1_return2_carry_i_8
       (.I0(p52[0]),
        .I1(t1_p9[0]),
        .I2(p52[1]),
        .I3(t1_p9[1]),
        .O(med1_return2_carry_i_8_n_0));
  CARRY4 med1_return3_carry
       (.CI(1'b0),
        .CO({med1_return3,med1_return3_carry_n_1,med1_return3_carry_n_2,med1_return3_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med1_return3_carry_i_1_n_0,med1_return3_carry_i_2_n_0,med1_return3_carry_i_3_n_0,med1_return3_carry_i_4_n_0}),
        .O(NLW_med1_return3_carry_O_UNCONNECTED[3:0]),
        .S({med1_return3_carry_i_5_n_0,med1_return3_carry_i_6_n_0,med1_return3_carry_i_7_n_0,med1_return3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    med1_return3_carry_i_1
       (.I0(t1_p7[6]),
        .I1(t1_p9[6]),
        .I2(t1_p7[7]),
        .I3(t1_p9[7]),
        .O(med1_return3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med1_return3_carry_i_2
       (.I0(t1_p7[4]),
        .I1(t1_p9[4]),
        .I2(t1_p7[5]),
        .I3(t1_p9[5]),
        .O(med1_return3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med1_return3_carry_i_3
       (.I0(t1_p7[2]),
        .I1(t1_p9[2]),
        .I2(t1_p7[3]),
        .I3(t1_p9[3]),
        .O(med1_return3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med1_return3_carry_i_4
       (.I0(t1_p7[0]),
        .I1(t1_p9[0]),
        .I2(t1_p7[1]),
        .I3(t1_p9[1]),
        .O(med1_return3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med1_return3_carry_i_5
       (.I0(t1_p9[6]),
        .I1(t1_p7[6]),
        .I2(t1_p9[7]),
        .I3(t1_p7[7]),
        .O(med1_return3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med1_return3_carry_i_6
       (.I0(t1_p9[4]),
        .I1(t1_p7[4]),
        .I2(t1_p9[5]),
        .I3(t1_p7[5]),
        .O(med1_return3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med1_return3_carry_i_7
       (.I0(t1_p9[2]),
        .I1(t1_p7[2]),
        .I2(t1_p9[3]),
        .I3(t1_p7[3]),
        .O(med1_return3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med1_return3_carry_i_8
       (.I0(t1_p9[0]),
        .I1(t1_p7[0]),
        .I2(t1_p9[1]),
        .I3(t1_p7[1]),
        .O(med1_return3_carry_i_8_n_0));
  CARRY4 med2_return1_carry
       (.CI(1'b0),
        .CO({med2_return1,med2_return1_carry_n_1,med2_return1_carry_n_2,med2_return1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med2_return1_carry_i_1_n_0,med2_return1_carry_i_2_n_0,med2_return1_carry_i_3_n_0,med2_return1_carry_i_4_n_0}),
        .O(NLW_med2_return1_carry_O_UNCONNECTED[3:0]),
        .S({med2_return1_carry_i_5_n_0,med2_return1_carry_i_6_n_0,med2_return1_carry_i_7_n_0,med2_return1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    med2_return1_carry_i_1
       (.I0(t2_med2[7]),
        .I1(t2_med1[7]),
        .I2(t2_med2[6]),
        .I3(t2_med1[6]),
        .O(med2_return1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    med2_return1_carry_i_2
       (.I0(t2_med2[5]),
        .I1(t2_med1[5]),
        .I2(t2_med2[4]),
        .I3(t2_med1[4]),
        .O(med2_return1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    med2_return1_carry_i_3
       (.I0(t2_med2[3]),
        .I1(t2_med1[3]),
        .I2(t2_med2[2]),
        .I3(t2_med1[2]),
        .O(med2_return1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    med2_return1_carry_i_4
       (.I0(t2_med2[1]),
        .I1(t2_med1[1]),
        .I2(t2_med2[0]),
        .I3(t2_med1[0]),
        .O(med2_return1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return1_carry_i_5
       (.I0(t2_med2[7]),
        .I1(t2_med1[7]),
        .I2(t2_med2[6]),
        .I3(t2_med1[6]),
        .O(med2_return1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return1_carry_i_6
       (.I0(t2_med2[5]),
        .I1(t2_med1[5]),
        .I2(t2_med2[4]),
        .I3(t2_med1[4]),
        .O(med2_return1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return1_carry_i_7
       (.I0(t2_med2[3]),
        .I1(t2_med1[3]),
        .I2(t2_med2[2]),
        .I3(t2_med1[2]),
        .O(med2_return1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return1_carry_i_8
       (.I0(t2_med2[1]),
        .I1(t2_med1[1]),
        .I2(t2_med2[0]),
        .I3(t2_med1[0]),
        .O(med2_return1_carry_i_8_n_0));
  CARRY4 med2_return2_carry
       (.CI(1'b0),
        .CO({med2_return2,med2_return2_carry_n_1,med2_return2_carry_n_2,med2_return2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med2_return2_carry_i_1_n_0,med2_return2_carry_i_2_n_0,med2_return2_carry_i_3_n_0,med2_return2_carry_i_4_n_0}),
        .O(NLW_med2_return2_carry_O_UNCONNECTED[3:0]),
        .S({med2_return2_carry_i_5_n_0,med2_return2_carry_i_6_n_0,med2_return2_carry_i_7_n_0,med2_return2_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    med2_return2_carry_i_1
       (.I0(t2_med2[6]),
        .I1(t2_med3[6]),
        .I2(t2_med2[7]),
        .I3(t2_med3[7]),
        .O(med2_return2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med2_return2_carry_i_2
       (.I0(t2_med2[4]),
        .I1(t2_med3[4]),
        .I2(t2_med2[5]),
        .I3(t2_med3[5]),
        .O(med2_return2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med2_return2_carry_i_3
       (.I0(t2_med2[2]),
        .I1(t2_med3[2]),
        .I2(t2_med2[3]),
        .I3(t2_med3[3]),
        .O(med2_return2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med2_return2_carry_i_4
       (.I0(t2_med2[0]),
        .I1(t2_med3[0]),
        .I2(t2_med2[1]),
        .I3(t2_med3[1]),
        .O(med2_return2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return2_carry_i_5
       (.I0(t2_med3[6]),
        .I1(t2_med2[6]),
        .I2(t2_med3[7]),
        .I3(t2_med2[7]),
        .O(med2_return2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return2_carry_i_6
       (.I0(t2_med3[4]),
        .I1(t2_med2[4]),
        .I2(t2_med3[5]),
        .I3(t2_med2[5]),
        .O(med2_return2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return2_carry_i_7
       (.I0(t2_med3[2]),
        .I1(t2_med2[2]),
        .I2(t2_med3[3]),
        .I3(t2_med2[3]),
        .O(med2_return2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return2_carry_i_8
       (.I0(t2_med3[0]),
        .I1(t2_med2[0]),
        .I2(t2_med3[1]),
        .I3(t2_med2[1]),
        .O(med2_return2_carry_i_8_n_0));
  CARRY4 \med2_return2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({med2_return21_in,\med2_return2_inferred__0/i__carry_n_1 ,\med2_return2_inferred__0/i__carry_n_2 ,\med2_return2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__7_n_0,i__carry_i_2__7_n_0,i__carry_i_3__7_n_0,i__carry_i_4__7_n_0}),
        .O(\NLW_med2_return2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__7_n_0,i__carry_i_6__7_n_0,i__carry_i_7__7_n_0,i__carry_i_8__7_n_0}));
  CARRY4 med2_return3_carry
       (.CI(1'b0),
        .CO({med2_return3,med2_return3_carry_n_1,med2_return3_carry_n_2,med2_return3_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med2_return3_carry_i_1_n_0,med2_return3_carry_i_2_n_0,med2_return3_carry_i_3_n_0,med2_return3_carry_i_4_n_0}),
        .O(NLW_med2_return3_carry_O_UNCONNECTED[3:0]),
        .S({med2_return3_carry_i_5_n_0,med2_return3_carry_i_6_n_0,med2_return3_carry_i_7_n_0,med2_return3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    med2_return3_carry_i_1
       (.I0(t2_med1[6]),
        .I1(t2_med3[6]),
        .I2(t2_med1[7]),
        .I3(t2_med3[7]),
        .O(med2_return3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med2_return3_carry_i_2
       (.I0(t2_med1[4]),
        .I1(t2_med3[4]),
        .I2(t2_med1[5]),
        .I3(t2_med3[5]),
        .O(med2_return3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med2_return3_carry_i_3
       (.I0(t2_med1[2]),
        .I1(t2_med3[2]),
        .I2(t2_med1[3]),
        .I3(t2_med3[3]),
        .O(med2_return3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med2_return3_carry_i_4
       (.I0(t2_med1[0]),
        .I1(t2_med3[0]),
        .I2(t2_med1[1]),
        .I3(t2_med3[1]),
        .O(med2_return3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return3_carry_i_5
       (.I0(t2_med1[6]),
        .I1(t2_med3[6]),
        .I2(t2_med1[7]),
        .I3(t2_med3[7]),
        .O(med2_return3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return3_carry_i_6
       (.I0(t2_med1[4]),
        .I1(t2_med3[4]),
        .I2(t2_med1[5]),
        .I3(t2_med3[5]),
        .O(med2_return3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return3_carry_i_7
       (.I0(t2_med1[2]),
        .I1(t2_med3[2]),
        .I2(t2_med1[3]),
        .I3(t2_med3[3]),
        .O(med2_return3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med2_return3_carry_i_8
       (.I0(t2_med1[0]),
        .I1(t2_med3[0]),
        .I2(t2_med1[1]),
        .I3(t2_med3[1]),
        .O(med2_return3_carry_i_8_n_0));
  CARRY4 \med2_return3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({med2_return30_in,\med2_return3_inferred__0/i__carry_n_1 ,\med2_return3_inferred__0/i__carry_n_2 ,\med2_return3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__6_n_0,i__carry_i_2__6_n_0,i__carry_i_3__6_n_0,i__carry_i_4__6_n_0}),
        .O(\NLW_med2_return3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__6_n_0,i__carry_i_6__6_n_0,i__carry_i_7__6_n_0,i__carry_i_8__6_n_0}));
  CARRY4 med3_return1_carry
       (.CI(1'b0),
        .CO({med3_return1,med3_return1_carry_n_1,med3_return1_carry_n_2,med3_return1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med3_return1_carry_i_1_n_0,med3_return1_carry_i_2_n_0,med3_return1_carry_i_3_n_0,med3_return1_carry_i_4_n_0}),
        .O(NLW_med3_return1_carry_O_UNCONNECTED[3:0]),
        .S({med3_return1_carry_i_5_n_0,med3_return1_carry_i_6_n_0,med3_return1_carry_i_7_n_0,med3_return1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    med3_return1_carry_i_1
       (.I0(t3_med_of_med[7]),
        .I1(\t3_max_of_min_reg_n_0_[7] ),
        .I2(t3_med_of_med[6]),
        .I3(\t3_max_of_min_reg_n_0_[6] ),
        .O(med3_return1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    med3_return1_carry_i_2
       (.I0(t3_med_of_med[5]),
        .I1(\t3_max_of_min_reg_n_0_[5] ),
        .I2(t3_med_of_med[4]),
        .I3(\t3_max_of_min_reg_n_0_[4] ),
        .O(med3_return1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    med3_return1_carry_i_3
       (.I0(t3_med_of_med[3]),
        .I1(\t3_max_of_min_reg_n_0_[3] ),
        .I2(t3_med_of_med[2]),
        .I3(\t3_max_of_min_reg_n_0_[2] ),
        .O(med3_return1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    med3_return1_carry_i_4
       (.I0(t3_med_of_med[1]),
        .I1(\t3_max_of_min_reg_n_0_[1] ),
        .I2(t3_med_of_med[0]),
        .I3(\t3_max_of_min_reg_n_0_[0] ),
        .O(med3_return1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return1_carry_i_5
       (.I0(t3_med_of_med[7]),
        .I1(\t3_max_of_min_reg_n_0_[7] ),
        .I2(t3_med_of_med[6]),
        .I3(\t3_max_of_min_reg_n_0_[6] ),
        .O(med3_return1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return1_carry_i_6
       (.I0(t3_med_of_med[5]),
        .I1(\t3_max_of_min_reg_n_0_[5] ),
        .I2(t3_med_of_med[4]),
        .I3(\t3_max_of_min_reg_n_0_[4] ),
        .O(med3_return1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return1_carry_i_7
       (.I0(t3_med_of_med[3]),
        .I1(\t3_max_of_min_reg_n_0_[3] ),
        .I2(t3_med_of_med[2]),
        .I3(\t3_max_of_min_reg_n_0_[2] ),
        .O(med3_return1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return1_carry_i_8
       (.I0(t3_med_of_med[1]),
        .I1(\t3_max_of_min_reg_n_0_[1] ),
        .I2(t3_med_of_med[0]),
        .I3(\t3_max_of_min_reg_n_0_[0] ),
        .O(med3_return1_carry_i_8_n_0));
  CARRY4 med3_return2_carry
       (.CI(1'b0),
        .CO({med3_return2,med3_return2_carry_n_1,med3_return2_carry_n_2,med3_return2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med3_return2_carry_i_1_n_0,med3_return2_carry_i_2_n_0,med3_return2_carry_i_3_n_0,med3_return2_carry_i_4_n_0}),
        .O(NLW_med3_return2_carry_O_UNCONNECTED[3:0]),
        .S({med3_return2_carry_i_5_n_0,med3_return2_carry_i_6_n_0,med3_return2_carry_i_7_n_0,med3_return2_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    med3_return2_carry_i_1
       (.I0(t3_med_of_med[6]),
        .I1(t3_min_of_max[6]),
        .I2(t3_med_of_med[7]),
        .I3(t3_min_of_max[7]),
        .O(med3_return2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med3_return2_carry_i_2
       (.I0(t3_med_of_med[4]),
        .I1(t3_min_of_max[4]),
        .I2(t3_med_of_med[5]),
        .I3(t3_min_of_max[5]),
        .O(med3_return2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med3_return2_carry_i_3
       (.I0(t3_med_of_med[2]),
        .I1(t3_min_of_max[2]),
        .I2(t3_med_of_med[3]),
        .I3(t3_min_of_max[3]),
        .O(med3_return2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med3_return2_carry_i_4
       (.I0(t3_med_of_med[0]),
        .I1(t3_min_of_max[0]),
        .I2(t3_med_of_med[1]),
        .I3(t3_min_of_max[1]),
        .O(med3_return2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return2_carry_i_5
       (.I0(t3_min_of_max[6]),
        .I1(t3_med_of_med[6]),
        .I2(t3_min_of_max[7]),
        .I3(t3_med_of_med[7]),
        .O(med3_return2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return2_carry_i_6
       (.I0(t3_min_of_max[4]),
        .I1(t3_med_of_med[4]),
        .I2(t3_min_of_max[5]),
        .I3(t3_med_of_med[5]),
        .O(med3_return2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return2_carry_i_7
       (.I0(t3_min_of_max[2]),
        .I1(t3_med_of_med[2]),
        .I2(t3_min_of_max[3]),
        .I3(t3_med_of_med[3]),
        .O(med3_return2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return2_carry_i_8
       (.I0(t3_min_of_max[0]),
        .I1(t3_med_of_med[0]),
        .I2(t3_min_of_max[1]),
        .I3(t3_med_of_med[1]),
        .O(med3_return2_carry_i_8_n_0));
  CARRY4 \med3_return2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({med3_return21_in,\med3_return2_inferred__0/i__carry_n_1 ,\med3_return2_inferred__0/i__carry_n_2 ,\med3_return2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__5_n_0,i__carry_i_2__5_n_0,i__carry_i_3__5_n_0,i__carry_i_4__5_n_0}),
        .O(\NLW_med3_return2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__5_n_0,i__carry_i_6__5_n_0,i__carry_i_7__5_n_0,i__carry_i_8__5_n_0}));
  CARRY4 med3_return3_carry
       (.CI(1'b0),
        .CO({med3_return3,med3_return3_carry_n_1,med3_return3_carry_n_2,med3_return3_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med3_return3_carry_i_1_n_0,med3_return3_carry_i_2_n_0,med3_return3_carry_i_3_n_0,med3_return3_carry_i_4_n_0}),
        .O(NLW_med3_return3_carry_O_UNCONNECTED[3:0]),
        .S({med3_return3_carry_i_5_n_0,med3_return3_carry_i_6_n_0,med3_return3_carry_i_7_n_0,med3_return3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    med3_return3_carry_i_1
       (.I0(\t3_max_of_min_reg_n_0_[6] ),
        .I1(t3_min_of_max[6]),
        .I2(\t3_max_of_min_reg_n_0_[7] ),
        .I3(t3_min_of_max[7]),
        .O(med3_return3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med3_return3_carry_i_2
       (.I0(\t3_max_of_min_reg_n_0_[4] ),
        .I1(t3_min_of_max[4]),
        .I2(\t3_max_of_min_reg_n_0_[5] ),
        .I3(t3_min_of_max[5]),
        .O(med3_return3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med3_return3_carry_i_3
       (.I0(\t3_max_of_min_reg_n_0_[2] ),
        .I1(t3_min_of_max[2]),
        .I2(\t3_max_of_min_reg_n_0_[3] ),
        .I3(t3_min_of_max[3]),
        .O(med3_return3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med3_return3_carry_i_4
       (.I0(\t3_max_of_min_reg_n_0_[0] ),
        .I1(t3_min_of_max[0]),
        .I2(\t3_max_of_min_reg_n_0_[1] ),
        .I3(t3_min_of_max[1]),
        .O(med3_return3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return3_carry_i_5
       (.I0(\t3_max_of_min_reg_n_0_[6] ),
        .I1(t3_min_of_max[6]),
        .I2(\t3_max_of_min_reg_n_0_[7] ),
        .I3(t3_min_of_max[7]),
        .O(med3_return3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return3_carry_i_6
       (.I0(\t3_max_of_min_reg_n_0_[4] ),
        .I1(t3_min_of_max[4]),
        .I2(\t3_max_of_min_reg_n_0_[5] ),
        .I3(t3_min_of_max[5]),
        .O(med3_return3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return3_carry_i_7
       (.I0(\t3_max_of_min_reg_n_0_[2] ),
        .I1(t3_min_of_max[2]),
        .I2(\t3_max_of_min_reg_n_0_[3] ),
        .I3(t3_min_of_max[3]),
        .O(med3_return3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med3_return3_carry_i_8
       (.I0(\t3_max_of_min_reg_n_0_[0] ),
        .I1(t3_min_of_max[0]),
        .I2(\t3_max_of_min_reg_n_0_[1] ),
        .I3(t3_min_of_max[1]),
        .O(med3_return3_carry_i_8_n_0));
  CARRY4 \med3_return3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({med3_return30_in,\med3_return3_inferred__0/i__carry_n_1 ,\med3_return3_inferred__0/i__carry_n_2 ,\med3_return3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__4_n_0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0}),
        .O(\NLW_med3_return3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__4_n_0,i__carry_i_6__4_n_0,i__carry_i_7__4_n_0,i__carry_i_8__4_n_0}));
  CARRY4 med_return2_carry
       (.CI(1'b0),
        .CO({med_return2,med_return2_carry_n_1,med_return2_carry_n_2,med_return2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med_return2_carry_i_1_n_0,med_return2_carry_i_2_n_0,med_return2_carry_i_3_n_0,med_return2_carry_i_4_n_0}),
        .O(NLW_med_return2_carry_O_UNCONNECTED[3:0]),
        .S({med_return2_carry_i_5_n_0,med_return2_carry_i_6_n_0,med_return2_carry_i_7_n_0,med_return2_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    med_return2_carry_i_1
       (.I0(p12[6]),
        .I1(t1_p3[6]),
        .I2(p12[7]),
        .I3(t1_p3[7]),
        .O(med_return2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med_return2_carry_i_2
       (.I0(p12[4]),
        .I1(t1_p3[4]),
        .I2(p12[5]),
        .I3(t1_p3[5]),
        .O(med_return2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med_return2_carry_i_3
       (.I0(p12[2]),
        .I1(t1_p3[2]),
        .I2(p12[3]),
        .I3(t1_p3[3]),
        .O(med_return2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med_return2_carry_i_4
       (.I0(p12[0]),
        .I1(t1_p3[0]),
        .I2(p12[1]),
        .I3(t1_p3[1]),
        .O(med_return2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med_return2_carry_i_5
       (.I0(p12[6]),
        .I1(t1_p3[6]),
        .I2(p12[7]),
        .I3(t1_p3[7]),
        .O(med_return2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med_return2_carry_i_6
       (.I0(p12[4]),
        .I1(t1_p3[4]),
        .I2(p12[5]),
        .I3(t1_p3[5]),
        .O(med_return2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med_return2_carry_i_7
       (.I0(p12[2]),
        .I1(t1_p3[2]),
        .I2(p12[3]),
        .I3(t1_p3[3]),
        .O(med_return2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med_return2_carry_i_8
       (.I0(p12[0]),
        .I1(t1_p3[0]),
        .I2(p12[1]),
        .I3(t1_p3[1]),
        .O(med_return2_carry_i_8_n_0));
  CARRY4 med_return3_carry
       (.CI(1'b0),
        .CO({med_return3,med_return3_carry_n_1,med_return3_carry_n_2,med_return3_carry_n_3}),
        .CYINIT(1'b0),
        .DI({med_return3_carry_i_1_n_0,med_return3_carry_i_2_n_0,med_return3_carry_i_3_n_0,med_return3_carry_i_4_n_0}),
        .O(NLW_med_return3_carry_O_UNCONNECTED[3:0]),
        .S({med_return3_carry_i_5_n_0,med_return3_carry_i_6_n_0,med_return3_carry_i_7_n_0,med_return3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    med_return3_carry_i_1
       (.I0(t1_p1[6]),
        .I1(t1_p3[6]),
        .I2(t1_p1[7]),
        .I3(t1_p3[7]),
        .O(med_return3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med_return3_carry_i_2
       (.I0(t1_p1[4]),
        .I1(t1_p3[4]),
        .I2(t1_p1[5]),
        .I3(t1_p3[5]),
        .O(med_return3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med_return3_carry_i_3
       (.I0(t1_p1[2]),
        .I1(t1_p3[2]),
        .I2(t1_p1[3]),
        .I3(t1_p3[3]),
        .O(med_return3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    med_return3_carry_i_4
       (.I0(t1_p1[0]),
        .I1(t1_p3[0]),
        .I2(t1_p1[1]),
        .I3(t1_p3[1]),
        .O(med_return3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med_return3_carry_i_5
       (.I0(t1_p3[6]),
        .I1(t1_p1[6]),
        .I2(t1_p3[7]),
        .I3(t1_p1[7]),
        .O(med_return3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med_return3_carry_i_6
       (.I0(t1_p3[4]),
        .I1(t1_p1[4]),
        .I2(t1_p3[5]),
        .I3(t1_p1[5]),
        .O(med_return3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med_return3_carry_i_7
       (.I0(t1_p3[2]),
        .I1(t1_p1[2]),
        .I2(t1_p3[3]),
        .I3(t1_p1[3]),
        .O(med_return3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    med_return3_carry_i_8
       (.I0(t1_p3[0]),
        .I1(t1_p1[0]),
        .I2(t1_p3[1]),
        .I3(t1_p1[1]),
        .O(med_return3_carry_i_8_n_0));
  CARRY4 min0_return1_carry
       (.CI(1'b0),
        .CO({min0_return1_carry_n_0,min0_return1_carry_n_1,min0_return1_carry_n_2,min0_return1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min0_return1_carry_i_1_n_0,min0_return1_carry_i_2_n_0,min0_return1_carry_i_3_n_0,min0_return1_carry_i_4_n_0}),
        .O(NLW_min0_return1_carry_O_UNCONNECTED[3:0]),
        .S({min0_return1_carry_i_5_n_0,min0_return1_carry_i_6_n_0,min0_return1_carry_i_7_n_0,min0_return1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    min0_return1_carry_i_1
       (.I0(p32[6]),
        .I1(\t3_center_reg_n_0_[6] ),
        .I2(p32[7]),
        .I3(\t3_center_reg_n_0_[7] ),
        .O(min0_return1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min0_return1_carry_i_2
       (.I0(p32[4]),
        .I1(\t3_center_reg_n_0_[4] ),
        .I2(p32[5]),
        .I3(\t3_center_reg_n_0_[5] ),
        .O(min0_return1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min0_return1_carry_i_3
       (.I0(p32[2]),
        .I1(\t3_center_reg_n_0_[2] ),
        .I2(p32[3]),
        .I3(\t3_center_reg_n_0_[3] ),
        .O(min0_return1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min0_return1_carry_i_4
       (.I0(p32[0]),
        .I1(\t3_center_reg_n_0_[0] ),
        .I2(p32[1]),
        .I3(\t3_center_reg_n_0_[1] ),
        .O(min0_return1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min0_return1_carry_i_5
       (.I0(p32[6]),
        .I1(\t3_center_reg_n_0_[6] ),
        .I2(p32[7]),
        .I3(\t3_center_reg_n_0_[7] ),
        .O(min0_return1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min0_return1_carry_i_6
       (.I0(p32[4]),
        .I1(\t3_center_reg_n_0_[4] ),
        .I2(p32[5]),
        .I3(\t3_center_reg_n_0_[5] ),
        .O(min0_return1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min0_return1_carry_i_7
       (.I0(p32[2]),
        .I1(\t3_center_reg_n_0_[2] ),
        .I2(p32[3]),
        .I3(\t3_center_reg_n_0_[3] ),
        .O(min0_return1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min0_return1_carry_i_8
       (.I0(p32[0]),
        .I1(\t3_center_reg_n_0_[0] ),
        .I2(p32[1]),
        .I3(\t3_center_reg_n_0_[1] ),
        .O(min0_return1_carry_i_8_n_0));
  CARRY4 min0_return2_carry
       (.CI(1'b0),
        .CO({min0_return2_carry_n_0,min0_return2_carry_n_1,min0_return2_carry_n_2,min0_return2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min0_return2_carry_i_1_n_0,min0_return2_carry_i_2_n_0,min0_return2_carry_i_3_n_0,min0_return2_carry_i_4_n_0}),
        .O(NLW_min0_return2_carry_O_UNCONNECTED[3:0]),
        .S({min0_return2_carry_i_5_n_0,min0_return2_carry_i_6_n_0,min0_return2_carry_i_7_n_0,min0_return2_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    min0_return2_carry_i_1
       (.I0(p34[6]),
        .I1(p32[6]),
        .I2(p34[7]),
        .I3(p32[7]),
        .O(min0_return2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min0_return2_carry_i_2
       (.I0(p34[4]),
        .I1(p32[4]),
        .I2(p34[5]),
        .I3(p32[5]),
        .O(min0_return2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min0_return2_carry_i_3
       (.I0(p34[2]),
        .I1(p32[2]),
        .I2(p34[3]),
        .I3(p32[3]),
        .O(min0_return2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min0_return2_carry_i_4
       (.I0(p34[0]),
        .I1(p32[0]),
        .I2(p34[1]),
        .I3(p32[1]),
        .O(min0_return2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min0_return2_carry_i_5
       (.I0(p32[6]),
        .I1(p34[6]),
        .I2(p32[7]),
        .I3(p34[7]),
        .O(min0_return2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min0_return2_carry_i_6
       (.I0(p32[4]),
        .I1(p34[4]),
        .I2(p32[5]),
        .I3(p34[5]),
        .O(min0_return2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min0_return2_carry_i_7
       (.I0(p32[2]),
        .I1(p34[2]),
        .I2(p32[3]),
        .I3(p34[3]),
        .O(min0_return2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min0_return2_carry_i_8
       (.I0(p32[0]),
        .I1(p34[0]),
        .I2(p32[1]),
        .I3(p34[1]),
        .O(min0_return2_carry_i_8_n_0));
  CARRY4 \min0_return2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\min0_return2_inferred__0/i__carry_n_0 ,\min0_return2_inferred__0/i__carry_n_1 ,\min0_return2_inferred__0/i__carry_n_2 ,\min0_return2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_min0_return2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  CARRY4 min1_return1_carry
       (.CI(1'b0),
        .CO({p_2_in,min1_return1_carry_n_1,min1_return1_carry_n_2,min1_return1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min1_return1_carry_i_1_n_0,min1_return1_carry_i_2_n_0,min1_return1_carry_i_3_n_0,min1_return1_carry_i_4_n_0}),
        .O(NLW_min1_return1_carry_O_UNCONNECTED[3:0]),
        .S({min1_return1_carry_i_5_n_0,min1_return1_carry_i_6_n_0,min1_return1_carry_i_7_n_0,min1_return1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    min1_return1_carry_i_1
       (.I0(p52[6]),
        .I1(t1_p7[6]),
        .I2(p52[7]),
        .I3(t1_p7[7]),
        .O(min1_return1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min1_return1_carry_i_2
       (.I0(p52[4]),
        .I1(t1_p7[4]),
        .I2(p52[5]),
        .I3(t1_p7[5]),
        .O(min1_return1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min1_return1_carry_i_3
       (.I0(p52[2]),
        .I1(t1_p7[2]),
        .I2(p52[3]),
        .I3(t1_p7[3]),
        .O(min1_return1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min1_return1_carry_i_4
       (.I0(p52[0]),
        .I1(t1_p7[0]),
        .I2(p52[1]),
        .I3(t1_p7[1]),
        .O(min1_return1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_return1_carry_i_5
       (.I0(p52[6]),
        .I1(t1_p7[6]),
        .I2(p52[7]),
        .I3(t1_p7[7]),
        .O(min1_return1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_return1_carry_i_6
       (.I0(p52[4]),
        .I1(t1_p7[4]),
        .I2(p52[5]),
        .I3(t1_p7[5]),
        .O(min1_return1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_return1_carry_i_7
       (.I0(p52[2]),
        .I1(t1_p7[2]),
        .I2(p52[3]),
        .I3(t1_p7[3]),
        .O(min1_return1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_return1_carry_i_8
       (.I0(p52[0]),
        .I1(t1_p7[0]),
        .I2(p52[1]),
        .I3(t1_p7[1]),
        .O(min1_return1_carry_i_8_n_0));
  CARRY4 min1_return2_carry
       (.CI(1'b0),
        .CO({p_1_in,min1_return2_carry_n_1,min1_return2_carry_n_2,min1_return2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min1_return2_carry_i_1_n_0,min1_return2_carry_i_2_n_0,min1_return2_carry_i_3_n_0,min1_return2_carry_i_4_n_0}),
        .O(NLW_min1_return2_carry_O_UNCONNECTED[3:0]),
        .S({min1_return2_carry_i_5_n_0,min1_return2_carry_i_6_n_0,min1_return2_carry_i_7_n_0,min1_return2_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    min1_return2_carry_i_1
       (.I0(t1_p9[6]),
        .I1(p52[6]),
        .I2(t1_p9[7]),
        .I3(p52[7]),
        .O(min1_return2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min1_return2_carry_i_2
       (.I0(t1_p9[4]),
        .I1(p52[4]),
        .I2(t1_p9[5]),
        .I3(p52[5]),
        .O(min1_return2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min1_return2_carry_i_3
       (.I0(t1_p9[2]),
        .I1(p52[2]),
        .I2(t1_p9[3]),
        .I3(p52[3]),
        .O(min1_return2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min1_return2_carry_i_4
       (.I0(t1_p9[0]),
        .I1(p52[0]),
        .I2(t1_p9[1]),
        .I3(p52[1]),
        .O(min1_return2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_return2_carry_i_5
       (.I0(p52[6]),
        .I1(t1_p9[6]),
        .I2(p52[7]),
        .I3(t1_p9[7]),
        .O(min1_return2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_return2_carry_i_6
       (.I0(p52[4]),
        .I1(t1_p9[4]),
        .I2(p52[5]),
        .I3(t1_p9[5]),
        .O(min1_return2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_return2_carry_i_7
       (.I0(p52[2]),
        .I1(t1_p9[2]),
        .I2(p52[3]),
        .I3(t1_p9[3]),
        .O(min1_return2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min1_return2_carry_i_8
       (.I0(p52[0]),
        .I1(t1_p9[0]),
        .I2(p52[1]),
        .I3(t1_p9[1]),
        .O(min1_return2_carry_i_8_n_0));
  CARRY4 \min1_return2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\min1_return2_inferred__0/i__carry_n_0 ,\min1_return2_inferred__0/i__carry_n_1 ,\min1_return2_inferred__0/i__carry_n_2 ,\min1_return2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_min1_return2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 min2_return1_carry
       (.CI(1'b0),
        .CO({min2_return1,min2_return1_carry_n_1,min2_return1_carry_n_2,min2_return1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min2_return1_carry_i_1_n_0,min2_return1_carry_i_2_n_0,min2_return1_carry_i_3_n_0,min2_return1_carry_i_4_n_0}),
        .O(NLW_min2_return1_carry_O_UNCONNECTED[3:0]),
        .S({min2_return1_carry_i_5_n_0,min2_return1_carry_i_6_n_0,min2_return1_carry_i_7_n_0,min2_return1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_return1_carry_i_1
       (.I0(t2_max2[6]),
        .I1(a[6]),
        .I2(a[7]),
        .I3(t2_max2[7]),
        .O(min2_return1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_return1_carry_i_2
       (.I0(t2_max2[4]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(t2_max2[5]),
        .O(min2_return1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_return1_carry_i_3
       (.I0(t2_max2[2]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(t2_max2[3]),
        .O(min2_return1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_return1_carry_i_4
       (.I0(t2_max2[0]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(t2_max2[1]),
        .O(min2_return1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_return1_carry_i_5
       (.I0(t2_max2[6]),
        .I1(a[6]),
        .I2(t2_max2[7]),
        .I3(a[7]),
        .O(min2_return1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_return1_carry_i_6
       (.I0(t2_max2[4]),
        .I1(a[4]),
        .I2(t2_max2[5]),
        .I3(a[5]),
        .O(min2_return1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_return1_carry_i_7
       (.I0(t2_max2[2]),
        .I1(a[2]),
        .I2(t2_max2[3]),
        .I3(a[3]),
        .O(min2_return1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_return1_carry_i_8
       (.I0(t2_max2[0]),
        .I1(a[0]),
        .I2(t2_max2[1]),
        .I3(a[1]),
        .O(min2_return1_carry_i_8_n_0));
  CARRY4 min2_return2_carry
       (.CI(1'b0),
        .CO({min2_return2,min2_return2_carry_n_1,min2_return2_carry_n_2,min2_return2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min2_return2_carry_i_1_n_0,min2_return2_carry_i_2_n_0,min2_return2_carry_i_3_n_0,min2_return2_carry_i_4_n_0}),
        .O(NLW_min2_return2_carry_O_UNCONNECTED[3:0]),
        .S({min2_return2_carry_i_5_n_0,min2_return2_carry_i_6_n_0,min2_return2_carry_i_7_n_0,min2_return2_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_return2_carry_i_1
       (.I0(t2_max3[6]),
        .I1(t2_max2[6]),
        .I2(t2_max2[7]),
        .I3(t2_max3[7]),
        .O(min2_return2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_return2_carry_i_2
       (.I0(t2_max3[4]),
        .I1(t2_max2[4]),
        .I2(t2_max2[5]),
        .I3(t2_max3[5]),
        .O(min2_return2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_return2_carry_i_3
       (.I0(t2_max3[2]),
        .I1(t2_max2[2]),
        .I2(t2_max2[3]),
        .I3(t2_max3[3]),
        .O(min2_return2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    min2_return2_carry_i_4
       (.I0(t2_max3[0]),
        .I1(t2_max2[0]),
        .I2(t2_max2[1]),
        .I3(t2_max3[1]),
        .O(min2_return2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_return2_carry_i_5
       (.I0(t2_max3[6]),
        .I1(t2_max2[6]),
        .I2(t2_max3[7]),
        .I3(t2_max2[7]),
        .O(min2_return2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_return2_carry_i_6
       (.I0(t2_max3[4]),
        .I1(t2_max2[4]),
        .I2(t2_max3[5]),
        .I3(t2_max2[5]),
        .O(min2_return2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_return2_carry_i_7
       (.I0(t2_max3[2]),
        .I1(t2_max2[2]),
        .I2(t2_max3[3]),
        .I3(t2_max2[3]),
        .O(min2_return2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min2_return2_carry_i_8
       (.I0(t2_max3[0]),
        .I1(t2_max2[0]),
        .I2(t2_max3[1]),
        .I3(t2_max2[1]),
        .O(min2_return2_carry_i_8_n_0));
  CARRY4 \min2_return2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({min2_return20_in,\min2_return2_inferred__0/i__carry_n_1 ,\min2_return2_inferred__0/i__carry_n_2 ,\min2_return2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_min2_return2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  CARRY4 min_return1_carry
       (.CI(1'b0),
        .CO({min_return1_carry_n_0,min_return1_carry_n_1,min_return1_carry_n_2,min_return1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min_return1_carry_i_1_n_0,min_return1_carry_i_2_n_0,min_return1_carry_i_3_n_0,min_return1_carry_i_4_n_0}),
        .O(NLW_min_return1_carry_O_UNCONNECTED[3:0]),
        .S({min_return1_carry_i_5_n_0,min_return1_carry_i_6_n_0,min_return1_carry_i_7_n_0,min_return1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    min_return1_carry_i_1
       (.I0(p12[6]),
        .I1(t1_p1[6]),
        .I2(p12[7]),
        .I3(t1_p1[7]),
        .O(min_return1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min_return1_carry_i_2
       (.I0(p12[4]),
        .I1(t1_p1[4]),
        .I2(p12[5]),
        .I3(t1_p1[5]),
        .O(min_return1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min_return1_carry_i_3
       (.I0(p12[2]),
        .I1(t1_p1[2]),
        .I2(p12[3]),
        .I3(t1_p1[3]),
        .O(min_return1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min_return1_carry_i_4
       (.I0(p12[0]),
        .I1(t1_p1[0]),
        .I2(p12[1]),
        .I3(t1_p1[1]),
        .O(min_return1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min_return1_carry_i_5
       (.I0(p12[6]),
        .I1(t1_p1[6]),
        .I2(p12[7]),
        .I3(t1_p1[7]),
        .O(min_return1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min_return1_carry_i_6
       (.I0(p12[4]),
        .I1(t1_p1[4]),
        .I2(p12[5]),
        .I3(t1_p1[5]),
        .O(min_return1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min_return1_carry_i_7
       (.I0(p12[2]),
        .I1(t1_p1[2]),
        .I2(p12[3]),
        .I3(t1_p1[3]),
        .O(min_return1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min_return1_carry_i_8
       (.I0(p12[0]),
        .I1(t1_p1[0]),
        .I2(p12[1]),
        .I3(t1_p1[1]),
        .O(min_return1_carry_i_8_n_0));
  CARRY4 min_return2_carry
       (.CI(1'b0),
        .CO({min_return2_carry_n_0,min_return2_carry_n_1,min_return2_carry_n_2,min_return2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min_return2_carry_i_1_n_0,min_return2_carry_i_2_n_0,min_return2_carry_i_3_n_0,min_return2_carry_i_4_n_0}),
        .O(NLW_min_return2_carry_O_UNCONNECTED[3:0]),
        .S({min_return2_carry_i_5_n_0,min_return2_carry_i_6_n_0,min_return2_carry_i_7_n_0,min_return2_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    min_return2_carry_i_1
       (.I0(t1_p3[6]),
        .I1(p12[6]),
        .I2(t1_p3[7]),
        .I3(p12[7]),
        .O(min_return2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min_return2_carry_i_2
       (.I0(t1_p3[4]),
        .I1(p12[4]),
        .I2(t1_p3[5]),
        .I3(p12[5]),
        .O(min_return2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min_return2_carry_i_3
       (.I0(t1_p3[2]),
        .I1(p12[2]),
        .I2(t1_p3[3]),
        .I3(p12[3]),
        .O(min_return2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    min_return2_carry_i_4
       (.I0(t1_p3[0]),
        .I1(p12[0]),
        .I2(t1_p3[1]),
        .I3(p12[1]),
        .O(min_return2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min_return2_carry_i_5
       (.I0(p12[6]),
        .I1(t1_p3[6]),
        .I2(p12[7]),
        .I3(t1_p3[7]),
        .O(min_return2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min_return2_carry_i_6
       (.I0(p12[4]),
        .I1(t1_p3[4]),
        .I2(p12[5]),
        .I3(t1_p3[5]),
        .O(min_return2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min_return2_carry_i_7
       (.I0(p12[2]),
        .I1(t1_p3[2]),
        .I2(p12[3]),
        .I3(t1_p3[3]),
        .O(min_return2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    min_return2_carry_i_8
       (.I0(p12[0]),
        .I1(t1_p3[0]),
        .I2(p12[1]),
        .I3(t1_p3[1]),
        .O(min_return2_carry_i_8_n_0));
  CARRY4 \min_return2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\min_return2_inferred__0/i__carry_n_0 ,\min_return2_inferred__0/i__carry_n_1 ,\min_return2_inferred__0/i__carry_n_2 ,\min_return2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}),
        .O(\NLW_min_return2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,i__carry_i_7__2_n_0,i__carry_i_8__2_n_0}));
  FDCE \p13_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p14[0]),
        .Q(p13[0]));
  FDCE \p13_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p14[1]),
        .Q(p13[1]));
  FDCE \p13_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p14[2]),
        .Q(p13[2]));
  FDCE \p13_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p14[3]),
        .Q(p13[3]));
  FDCE \p13_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p14[4]),
        .Q(p13[4]));
  FDCE \p13_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p14[5]),
        .Q(p13[5]));
  FDCE \p13_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p14[6]),
        .Q(p13[6]));
  FDCE \p13_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p14[7]),
        .Q(p13[7]));
  FDCE \p14_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p15[0]),
        .Q(p14[0]));
  FDCE \p14_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p15[1]),
        .Q(p14[1]));
  FDCE \p14_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p15[2]),
        .Q(p14[2]));
  FDCE \p14_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p15[3]),
        .Q(p14[3]));
  FDCE \p14_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p15[4]),
        .Q(p14[4]));
  FDCE \p14_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p15[5]),
        .Q(p14[5]));
  FDCE \p14_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p15[6]),
        .Q(p14[6]));
  FDCE \p14_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p15[7]),
        .Q(p14[7]));
  FDCE \p15_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap3x[0]),
        .Q(p15[0]));
  FDCE \p15_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap3x[1]),
        .Q(p15[1]));
  FDCE \p15_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap3x[2]),
        .Q(p15[2]));
  FDCE \p15_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap3x[3]),
        .Q(p15[3]));
  FDCE \p15_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap3x[4]),
        .Q(p15[4]));
  FDCE \p15_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap3x[5]),
        .Q(p15[5]));
  FDCE \p15_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap3x[6]),
        .Q(p15[6]));
  FDCE \p15_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap3x[7]),
        .Q(p15[7]));
  FDCE \p22_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p23[0]),
        .Q(p22[0]));
  FDCE \p22_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p23[1]),
        .Q(p22[1]));
  FDCE \p22_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p23[2]),
        .Q(p22[2]));
  FDCE \p22_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p23[3]),
        .Q(p22[3]));
  FDCE \p22_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p23[4]),
        .Q(p22[4]));
  FDCE \p22_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p23[5]),
        .Q(p22[5]));
  FDCE \p22_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p23[6]),
        .Q(p22[6]));
  FDCE \p22_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p23[7]),
        .Q(p22[7]));
  FDCE \p23_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p24[0]),
        .Q(p23[0]));
  FDCE \p23_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p24[1]),
        .Q(p23[1]));
  FDCE \p23_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p24[2]),
        .Q(p23[2]));
  FDCE \p23_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p24[3]),
        .Q(p23[3]));
  FDCE \p23_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p24[4]),
        .Q(p23[4]));
  FDCE \p23_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p24[5]),
        .Q(p23[5]));
  FDCE \p23_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p24[6]),
        .Q(p23[6]));
  FDCE \p23_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p24[7]),
        .Q(p23[7]));
  FDCE \p24_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p25[0]),
        .Q(p24[0]));
  FDCE \p24_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p25[1]),
        .Q(p24[1]));
  FDCE \p24_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p25[2]),
        .Q(p24[2]));
  FDCE \p24_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p25[3]),
        .Q(p24[3]));
  FDCE \p24_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p25[4]),
        .Q(p24[4]));
  FDCE \p24_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p25[5]),
        .Q(p24[5]));
  FDCE \p24_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p25[6]),
        .Q(p24[6]));
  FDCE \p24_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p25[7]),
        .Q(p24[7]));
  FDCE \p25_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap2x[0]),
        .Q(p25[0]));
  FDCE \p25_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap2x[1]),
        .Q(p25[1]));
  FDCE \p25_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap2x[2]),
        .Q(p25[2]));
  FDCE \p25_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap2x[3]),
        .Q(p25[3]));
  FDCE \p25_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap2x[4]),
        .Q(p25[4]));
  FDCE \p25_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap2x[5]),
        .Q(p25[5]));
  FDCE \p25_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap2x[6]),
        .Q(p25[6]));
  FDCE \p25_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(tap2x[7]),
        .Q(p25[7]));
  FDCE \p35_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(tap1x[0]),
        .Q(p35[0]));
  FDCE \p35_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(tap1x[1]),
        .Q(p35[1]));
  FDCE \p35_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(tap1x[2]),
        .Q(p35[2]));
  FDCE \p35_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(tap1x[3]),
        .Q(p35[3]));
  FDCE \p35_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(tap1x[4]),
        .Q(p35[4]));
  FDCE \p35_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(tap1x[5]),
        .Q(p35[5]));
  FDCE \p35_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(tap1x[6]),
        .Q(p35[6]));
  FDCE \p35_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(tap1x[7]),
        .Q(p35[7]));
  FDCE \p42_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p43[0]),
        .Q(p42[0]));
  FDCE \p42_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p43[1]),
        .Q(p42[1]));
  FDCE \p42_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p43[2]),
        .Q(p42[2]));
  FDCE \p42_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p43[3]),
        .Q(p42[3]));
  FDCE \p42_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p43[4]),
        .Q(p42[4]));
  FDCE \p42_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p43[5]),
        .Q(p42[5]));
  FDCE \p42_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p43[6]),
        .Q(p42[6]));
  FDCE \p42_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p43[7]),
        .Q(p42[7]));
  FDCE \p43_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p44[0]),
        .Q(p43[0]));
  FDCE \p43_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p44[1]),
        .Q(p43[1]));
  FDCE \p43_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p44[2]),
        .Q(p43[2]));
  FDCE \p43_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p44[3]),
        .Q(p43[3]));
  FDCE \p43_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p44[4]),
        .Q(p43[4]));
  FDCE \p43_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p44[5]),
        .Q(p43[5]));
  FDCE \p43_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p44[6]),
        .Q(p43[6]));
  FDCE \p43_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p44[7]),
        .Q(p43[7]));
  FDCE \p44_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p45[0]),
        .Q(p44[0]));
  FDCE \p44_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p45[1]),
        .Q(p44[1]));
  FDCE \p44_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p45[2]),
        .Q(p44[2]));
  FDCE \p44_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p45[3]),
        .Q(p44[3]));
  FDCE \p44_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p45[4]),
        .Q(p44[4]));
  FDCE \p44_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p45[5]),
        .Q(p44[5]));
  FDCE \p44_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p45[6]),
        .Q(p44[6]));
  FDCE \p44_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p45[7]),
        .Q(p44[7]));
  FDCE \p45_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(linebuffer_n_7),
        .Q(p45[0]));
  FDCE \p45_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(linebuffer_n_6),
        .Q(p45[1]));
  FDCE \p45_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(linebuffer_n_5),
        .Q(p45[2]));
  FDCE \p45_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(linebuffer_n_4),
        .Q(p45[3]));
  FDCE \p45_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(linebuffer_n_3),
        .Q(p45[4]));
  FDCE \p45_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(linebuffer_n_2),
        .Q(p45[5]));
  FDCE \p45_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(linebuffer_n_1),
        .Q(p45[6]));
  FDCE \p45_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(linebuffer_n_0),
        .Q(p45[7]));
  FDCE \p53_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p54[0]),
        .Q(p53[0]));
  FDCE \p53_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p54[1]),
        .Q(p53[1]));
  FDCE \p53_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p54[2]),
        .Q(p53[2]));
  FDCE \p53_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p54[3]),
        .Q(p53[3]));
  FDCE \p53_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p54[4]),
        .Q(p53[4]));
  FDCE \p53_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p54[5]),
        .Q(p53[5]));
  FDCE \p53_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p54[6]),
        .Q(p53[6]));
  FDCE \p53_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p54[7]),
        .Q(p53[7]));
  FDCE \p54_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p55[0]),
        .Q(p54[0]));
  FDCE \p54_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p55[1]),
        .Q(p54[1]));
  FDCE \p54_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p55[2]),
        .Q(p54[2]));
  FDCE \p54_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p55[3]),
        .Q(p54[3]));
  FDCE \p54_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p55[4]),
        .Q(p54[4]));
  FDCE \p54_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p55[5]),
        .Q(p54[5]));
  FDCE \p54_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p55[6]),
        .Q(p54[6]));
  FDCE \p54_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p55[7]),
        .Q(p54[7]));
  FDCE \p55_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(in_raw_r[0]),
        .Q(p55[0]));
  FDCE \p55_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(in_raw_r[1]),
        .Q(p55[1]));
  FDCE \p55_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(in_raw_r[2]),
        .Q(p55[2]));
  FDCE \p55_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(in_raw_r[3]),
        .Q(p55[3]));
  FDCE \p55_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(in_raw_r[4]),
        .Q(p55[4]));
  FDCE \p55_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(in_raw_r[5]),
        .Q(p55[5]));
  FDCE \p55_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(in_raw_r[6]),
        .Q(p55[6]));
  FDCE \p55_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(in_raw_r[7]),
        .Q(p55[7]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_v_shift_helper shift_helper
       (.D({shift_helper_n_5,shift_helper_n_6,shift_helper_n_7,shift_helper_n_8,shift_helper_n_9,shift_helper_n_10,shift_helper_n_11,shift_helper_n_12}),
        .E(shift_enable),
        .Q(p44),
        .axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .\current_state_reg[0] (\current_state_reg[0] ),
        .\current_state_reg[1] (\current_state_reg[1] ),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tuser(m00_axis_tuser),
        .m00_axis_tvalid(m00_axis_tvalid),
        .\max_y_index_int_reg[10]_0 (\max_y_index_int_reg[10] ),
        .\max_y_index_int_reg[10]_1 (\max_y_index_int_reg[10]_1 ),
        .\max_y_index_int_reg[10]_2 (\max_y_index_int_reg[10]_0 ),
        .\p22_reg[7] ({shift_helper_n_38,shift_helper_n_39,shift_helper_n_40,shift_helper_n_41,shift_helper_n_42,shift_helper_n_43,shift_helper_n_44,shift_helper_n_45}),
        .\p24_reg[7] ({shift_helper_n_30,shift_helper_n_31,shift_helper_n_32,shift_helper_n_33,shift_helper_n_34,shift_helper_n_35,shift_helper_n_36,shift_helper_n_37}),
        .\p42_reg[7] ({shift_helper_n_22,shift_helper_n_23,shift_helper_n_24,shift_helper_n_25,shift_helper_n_26,shift_helper_n_27,shift_helper_n_28,shift_helper_n_29}),
        .\p44_reg[7] ({shift_helper_n_14,shift_helper_n_15,shift_helper_n_16,shift_helper_n_17,shift_helper_n_18,shift_helper_n_19,shift_helper_n_20,shift_helper_n_21}),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tuser(s00_axis_tuser),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s00_axis_tvalid_0(s00_axis_tvalid_0),
        .\shift_x_index_int_reg[0]_0 (\shift_x_index_int_reg[0] ),
        .\t1_p1_reg[7] (p22),
        .\t1_p3_reg[7] (p24),
        .\t1_p3_reg[7]_0 (p15),
        .\t1_p7_reg[7] (p42),
        .\t1_p9_reg[7] (p55),
        .t2_p2(t2_p2),
        .t2_p8(t2_p8));
  FDCE \t1_p1_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_45),
        .Q(t1_p1[0]));
  FDCE \t1_p1_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_44),
        .Q(t1_p1[1]));
  FDCE \t1_p1_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_43),
        .Q(t1_p1[2]));
  FDCE \t1_p1_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_42),
        .Q(t1_p1[3]));
  FDCE \t1_p1_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_41),
        .Q(t1_p1[4]));
  FDCE \t1_p1_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_40),
        .Q(t1_p1[5]));
  FDCE \t1_p1_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_39),
        .Q(t1_p1[6]));
  FDCE \t1_p1_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_38),
        .Q(t1_p1[7]));
  FDCE \t1_p2_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p13[0]),
        .Q(p12[0]));
  FDCE \t1_p2_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p13[1]),
        .Q(p12[1]));
  FDCE \t1_p2_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p13[2]),
        .Q(p12[2]));
  FDCE \t1_p2_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p13[3]),
        .Q(p12[3]));
  FDCE \t1_p2_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p13[4]),
        .Q(p12[4]));
  FDCE \t1_p2_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p13[5]),
        .Q(p12[5]));
  FDCE \t1_p2_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p13[6]),
        .Q(p12[6]));
  FDCE \t1_p2_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p13[7]),
        .Q(p12[7]));
  FDCE \t1_p3_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_37),
        .Q(t1_p3[0]));
  FDCE \t1_p3_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_36),
        .Q(t1_p3[1]));
  FDCE \t1_p3_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_35),
        .Q(t1_p3[2]));
  FDCE \t1_p3_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_34),
        .Q(t1_p3[3]));
  FDCE \t1_p3_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_33),
        .Q(t1_p3[4]));
  FDCE \t1_p3_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_32),
        .Q(t1_p3[5]));
  FDCE \t1_p3_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_31),
        .Q(t1_p3[6]));
  FDCE \t1_p3_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_n_30),
        .Q(t1_p3[7]));
  FDCE \t1_p5_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(t2_p6[0]),
        .Q(p32[0]));
  FDCE \t1_p5_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(t2_p6[1]),
        .Q(p32[1]));
  FDCE \t1_p5_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(t2_p6[2]),
        .Q(p32[2]));
  FDCE \t1_p5_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(t2_p6[3]),
        .Q(p32[3]));
  FDCE \t1_p5_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(t2_p6[4]),
        .Q(p32[4]));
  FDCE \t1_p5_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t2_p6[5]),
        .Q(p32[5]));
  FDCE \t1_p5_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t2_p6[6]),
        .Q(p32[6]));
  FDCE \t1_p5_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t2_p6[7]),
        .Q(p32[7]));
  FDCE \t1_p6_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p35[0]),
        .Q(p34[0]));
  FDCE \t1_p6_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p35[1]),
        .Q(p34[1]));
  FDCE \t1_p6_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p35[2]),
        .Q(p34[2]));
  FDCE \t1_p6_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p35[3]),
        .Q(p34[3]));
  FDCE \t1_p6_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p35[4]),
        .Q(p34[4]));
  FDCE \t1_p6_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p35[5]),
        .Q(p34[5]));
  FDCE \t1_p6_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p35[6]),
        .Q(p34[6]));
  FDCE \t1_p6_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p35[7]),
        .Q(p34[7]));
  FDCE \t1_p7_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(shift_helper_n_29),
        .Q(t1_p7[0]));
  FDCE \t1_p7_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(shift_helper_n_28),
        .Q(t1_p7[1]));
  FDCE \t1_p7_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(shift_helper_n_27),
        .Q(t1_p7[2]));
  FDCE \t1_p7_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(shift_helper_n_26),
        .Q(t1_p7[3]));
  FDCE \t1_p7_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(shift_helper_n_25),
        .Q(t1_p7[4]));
  FDCE \t1_p7_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(shift_helper_n_24),
        .Q(t1_p7[5]));
  FDCE \t1_p7_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(shift_helper_n_23),
        .Q(t1_p7[6]));
  FDCE \t1_p7_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(shift_helper_n_22),
        .Q(t1_p7[7]));
  FDCE \t1_p8_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p53[0]),
        .Q(p52[0]));
  FDCE \t1_p8_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p53[1]),
        .Q(p52[1]));
  FDCE \t1_p8_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p53[2]),
        .Q(p52[2]));
  FDCE \t1_p8_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p53[3]),
        .Q(p52[3]));
  FDCE \t1_p8_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p53[4]),
        .Q(p52[4]));
  FDCE \t1_p8_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p53[5]),
        .Q(p52[5]));
  FDCE \t1_p8_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p53[6]),
        .Q(p52[6]));
  FDCE \t1_p8_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p53[7]),
        .Q(p52[7]));
  FDCE \t1_p9_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_21),
        .Q(t1_p9[0]));
  FDCE \t1_p9_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_20),
        .Q(t1_p9[1]));
  FDCE \t1_p9_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_19),
        .Q(t1_p9[2]));
  FDCE \t1_p9_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_18),
        .Q(t1_p9[3]));
  FDCE \t1_p9_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_17),
        .Q(t1_p9[4]));
  FDCE \t1_p9_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_16),
        .Q(t1_p9[5]));
  FDCE \t1_p9_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_15),
        .Q(t1_p9[6]));
  FDCE \t1_p9_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(shift_helper_n_14),
        .Q(t1_p9[7]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max1[0]_i_1 
       (.I0(med_return2),
        .I1(p12[0]),
        .I2(t1_p3[0]),
        .I3(t1_p1[0]),
        .I4(max_return1),
        .I5(med_return3),
        .O(max_return[0]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max1[1]_i_1 
       (.I0(med_return2),
        .I1(p12[1]),
        .I2(t1_p3[1]),
        .I3(t1_p1[1]),
        .I4(max_return1),
        .I5(med_return3),
        .O(max_return[1]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max1[2]_i_1 
       (.I0(med_return2),
        .I1(p12[2]),
        .I2(t1_p3[2]),
        .I3(t1_p1[2]),
        .I4(max_return1),
        .I5(med_return3),
        .O(max_return[2]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max1[3]_i_1 
       (.I0(med_return2),
        .I1(p12[3]),
        .I2(t1_p3[3]),
        .I3(t1_p1[3]),
        .I4(max_return1),
        .I5(med_return3),
        .O(max_return[3]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max1[4]_i_1 
       (.I0(med_return2),
        .I1(p12[4]),
        .I2(t1_p3[4]),
        .I3(t1_p1[4]),
        .I4(max_return1),
        .I5(med_return3),
        .O(max_return[4]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max1[5]_i_1 
       (.I0(med_return2),
        .I1(p12[5]),
        .I2(t1_p3[5]),
        .I3(t1_p1[5]),
        .I4(max_return1),
        .I5(med_return3),
        .O(max_return[5]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max1[6]_i_1 
       (.I0(med_return2),
        .I1(p12[6]),
        .I2(t1_p3[6]),
        .I3(t1_p1[6]),
        .I4(max_return1),
        .I5(med_return3),
        .O(max_return[6]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max1[7]_i_1 
       (.I0(med_return2),
        .I1(p12[7]),
        .I2(t1_p3[7]),
        .I3(t1_p1[7]),
        .I4(max_return1),
        .I5(med_return3),
        .O(max_return[7]));
  FDCE \t2_max1_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(max_return[0]),
        .Q(a[0]));
  FDCE \t2_max1_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(max_return[1]),
        .Q(a[1]));
  FDCE \t2_max1_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max_return[2]),
        .Q(a[2]));
  FDCE \t2_max1_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max_return[3]),
        .Q(a[3]));
  FDCE \t2_max1_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max_return[4]),
        .Q(a[4]));
  FDCE \t2_max1_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max_return[5]),
        .Q(a[5]));
  FDCE \t2_max1_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max_return[6]),
        .Q(a[6]));
  FDCE \t2_max1_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max_return[7]),
        .Q(a[7]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max2[0]_i_1 
       (.I0(med0_return2),
        .I1(p32[0]),
        .I2(p34[0]),
        .I3(\t3_center_reg_n_0_[0] ),
        .I4(max0_return1),
        .I5(med0_return3),
        .O(max0_return[0]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max2[1]_i_1 
       (.I0(med0_return2),
        .I1(p32[1]),
        .I2(p34[1]),
        .I3(\t3_center_reg_n_0_[1] ),
        .I4(max0_return1),
        .I5(med0_return3),
        .O(max0_return[1]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max2[2]_i_1 
       (.I0(med0_return2),
        .I1(p32[2]),
        .I2(p34[2]),
        .I3(\t3_center_reg_n_0_[2] ),
        .I4(max0_return1),
        .I5(med0_return3),
        .O(max0_return[2]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max2[3]_i_1 
       (.I0(med0_return2),
        .I1(p32[3]),
        .I2(p34[3]),
        .I3(\t3_center_reg_n_0_[3] ),
        .I4(max0_return1),
        .I5(med0_return3),
        .O(max0_return[3]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max2[4]_i_1 
       (.I0(med0_return2),
        .I1(p32[4]),
        .I2(p34[4]),
        .I3(\t3_center_reg_n_0_[4] ),
        .I4(max0_return1),
        .I5(med0_return3),
        .O(max0_return[4]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max2[5]_i_1 
       (.I0(med0_return2),
        .I1(p32[5]),
        .I2(p34[5]),
        .I3(\t3_center_reg_n_0_[5] ),
        .I4(max0_return1),
        .I5(med0_return3),
        .O(max0_return[5]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max2[6]_i_1 
       (.I0(med0_return2),
        .I1(p32[6]),
        .I2(p34[6]),
        .I3(\t3_center_reg_n_0_[6] ),
        .I4(max0_return1),
        .I5(med0_return3),
        .O(max0_return[6]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max2[7]_i_1 
       (.I0(med0_return2),
        .I1(p32[7]),
        .I2(p34[7]),
        .I3(\t3_center_reg_n_0_[7] ),
        .I4(max0_return1),
        .I5(med0_return3),
        .O(max0_return[7]));
  FDCE \t2_max2_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(max0_return[0]),
        .Q(t2_max2[0]));
  FDCE \t2_max2_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(max0_return[1]),
        .Q(t2_max2[1]));
  FDCE \t2_max2_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max0_return[2]),
        .Q(t2_max2[2]));
  FDCE \t2_max2_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max0_return[3]),
        .Q(t2_max2[3]));
  FDCE \t2_max2_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max0_return[4]),
        .Q(t2_max2[4]));
  FDCE \t2_max2_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max0_return[5]),
        .Q(t2_max2[5]));
  FDCE \t2_max2_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max0_return[6]),
        .Q(t2_max2[6]));
  FDCE \t2_max2_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max0_return[7]),
        .Q(t2_max2[7]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max3[0]_i_1 
       (.I0(med1_return2),
        .I1(p52[0]),
        .I2(t1_p9[0]),
        .I3(t1_p7[0]),
        .I4(max1_return1),
        .I5(med1_return3),
        .O(max1_return[0]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max3[1]_i_1 
       (.I0(med1_return2),
        .I1(p52[1]),
        .I2(t1_p9[1]),
        .I3(t1_p7[1]),
        .I4(max1_return1),
        .I5(med1_return3),
        .O(max1_return[1]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max3[2]_i_1 
       (.I0(med1_return2),
        .I1(p52[2]),
        .I2(t1_p9[2]),
        .I3(t1_p7[2]),
        .I4(max1_return1),
        .I5(med1_return3),
        .O(max1_return[2]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max3[3]_i_1 
       (.I0(med1_return2),
        .I1(p52[3]),
        .I2(t1_p9[3]),
        .I3(t1_p7[3]),
        .I4(max1_return1),
        .I5(med1_return3),
        .O(max1_return[3]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max3[4]_i_1 
       (.I0(med1_return2),
        .I1(p52[4]),
        .I2(t1_p9[4]),
        .I3(t1_p7[4]),
        .I4(max1_return1),
        .I5(med1_return3),
        .O(max1_return[4]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max3[5]_i_1 
       (.I0(med1_return2),
        .I1(p52[5]),
        .I2(t1_p9[5]),
        .I3(t1_p7[5]),
        .I4(max1_return1),
        .I5(med1_return3),
        .O(max1_return[5]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max3[6]_i_1 
       (.I0(med1_return2),
        .I1(p52[6]),
        .I2(t1_p9[6]),
        .I3(t1_p7[6]),
        .I4(max1_return1),
        .I5(med1_return3),
        .O(max1_return[6]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_max3[7]_i_1 
       (.I0(med1_return2),
        .I1(p52[7]),
        .I2(t1_p9[7]),
        .I3(t1_p7[7]),
        .I4(max1_return1),
        .I5(med1_return3),
        .O(max1_return[7]));
  FDCE \t2_max3_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(max1_return[0]),
        .Q(t2_max3[0]));
  FDCE \t2_max3_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(max1_return[1]),
        .Q(t2_max3[1]));
  FDCE \t2_max3_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max1_return[2]),
        .Q(t2_max3[2]));
  FDCE \t2_max3_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max1_return[3]),
        .Q(t2_max3[3]));
  FDCE \t2_max3_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max1_return[4]),
        .Q(t2_max3[4]));
  FDCE \t2_max3_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max1_return[5]),
        .Q(t2_max3[5]));
  FDCE \t2_max3_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max1_return[6]),
        .Q(t2_max3[6]));
  FDCE \t2_max3_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(max1_return[7]),
        .Q(t2_max3[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med1[0]_i_1 
       (.I0(\t2_med1[7]_i_2_n_0 ),
        .I1(p12[0]),
        .I2(\t2_med1[7]_i_3_n_0 ),
        .I3(t1_p3[0]),
        .I4(t1_p1[0]),
        .I5(\t2_med1[7]_i_4_n_0 ),
        .O(med_return[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med1[1]_i_1 
       (.I0(\t2_med1[7]_i_2_n_0 ),
        .I1(p12[1]),
        .I2(\t2_med1[7]_i_3_n_0 ),
        .I3(t1_p3[1]),
        .I4(t1_p1[1]),
        .I5(\t2_med1[7]_i_4_n_0 ),
        .O(med_return[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med1[2]_i_1 
       (.I0(\t2_med1[7]_i_2_n_0 ),
        .I1(p12[2]),
        .I2(\t2_med1[7]_i_3_n_0 ),
        .I3(t1_p3[2]),
        .I4(t1_p1[2]),
        .I5(\t2_med1[7]_i_4_n_0 ),
        .O(med_return[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med1[3]_i_1 
       (.I0(\t2_med1[7]_i_2_n_0 ),
        .I1(p12[3]),
        .I2(\t2_med1[7]_i_3_n_0 ),
        .I3(t1_p3[3]),
        .I4(t1_p1[3]),
        .I5(\t2_med1[7]_i_4_n_0 ),
        .O(med_return[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med1[4]_i_1 
       (.I0(\t2_med1[7]_i_2_n_0 ),
        .I1(p12[4]),
        .I2(\t2_med1[7]_i_3_n_0 ),
        .I3(t1_p3[4]),
        .I4(t1_p1[4]),
        .I5(\t2_med1[7]_i_4_n_0 ),
        .O(med_return[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med1[5]_i_1 
       (.I0(\t2_med1[7]_i_2_n_0 ),
        .I1(p12[5]),
        .I2(\t2_med1[7]_i_3_n_0 ),
        .I3(t1_p3[5]),
        .I4(t1_p1[5]),
        .I5(\t2_med1[7]_i_4_n_0 ),
        .O(med_return[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med1[6]_i_1 
       (.I0(\t2_med1[7]_i_2_n_0 ),
        .I1(p12[6]),
        .I2(\t2_med1[7]_i_3_n_0 ),
        .I3(t1_p3[6]),
        .I4(t1_p1[6]),
        .I5(\t2_med1[7]_i_4_n_0 ),
        .O(med_return[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med1[7]_i_1 
       (.I0(\t2_med1[7]_i_2_n_0 ),
        .I1(p12[7]),
        .I2(\t2_med1[7]_i_3_n_0 ),
        .I3(t1_p3[7]),
        .I4(t1_p1[7]),
        .I5(\t2_med1[7]_i_4_n_0 ),
        .O(med_return[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \t2_med1[7]_i_2 
       (.I0(min_return2_carry_n_0),
        .I1(min_return1_carry_n_0),
        .I2(med_return2),
        .O(\t2_med1[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    \t2_med1[7]_i_3 
       (.I0(\min_return2_inferred__0/i__carry_n_0 ),
        .I1(min_return2_carry_n_0),
        .I2(min_return1_carry_n_0),
        .I3(med_return3),
        .I4(med_return2),
        .O(\t2_med1[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h1010101F)) 
    \t2_med1[7]_i_4 
       (.I0(\min_return2_inferred__0/i__carry_n_0 ),
        .I1(min_return2_carry_n_0),
        .I2(min_return1_carry_n_0),
        .I3(med_return3),
        .I4(med_return2),
        .O(\t2_med1[7]_i_4_n_0 ));
  FDCE \t2_med1_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(med_return[0]),
        .Q(t2_med1[0]));
  FDCE \t2_med1_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(med_return[1]),
        .Q(t2_med1[1]));
  FDCE \t2_med1_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med_return[2]),
        .Q(t2_med1[2]));
  FDCE \t2_med1_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med_return[3]),
        .Q(t2_med1[3]));
  FDCE \t2_med1_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med_return[4]),
        .Q(t2_med1[4]));
  FDCE \t2_med1_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med_return[5]),
        .Q(t2_med1[5]));
  FDCE \t2_med1_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med_return[6]),
        .Q(t2_med1[6]));
  FDCE \t2_med1_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med_return[7]),
        .Q(t2_med1[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med2[0]_i_1 
       (.I0(\t2_med2[7]_i_2_n_0 ),
        .I1(p32[0]),
        .I2(\t2_med2[7]_i_3_n_0 ),
        .I3(p34[0]),
        .I4(\t3_center_reg_n_0_[0] ),
        .I5(\t2_med2[7]_i_4_n_0 ),
        .O(med0_return[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med2[1]_i_1 
       (.I0(\t2_med2[7]_i_2_n_0 ),
        .I1(p32[1]),
        .I2(\t2_med2[7]_i_3_n_0 ),
        .I3(p34[1]),
        .I4(\t3_center_reg_n_0_[1] ),
        .I5(\t2_med2[7]_i_4_n_0 ),
        .O(med0_return[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med2[2]_i_1 
       (.I0(\t2_med2[7]_i_2_n_0 ),
        .I1(p32[2]),
        .I2(\t2_med2[7]_i_3_n_0 ),
        .I3(p34[2]),
        .I4(\t3_center_reg_n_0_[2] ),
        .I5(\t2_med2[7]_i_4_n_0 ),
        .O(med0_return[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med2[3]_i_1 
       (.I0(\t2_med2[7]_i_2_n_0 ),
        .I1(p32[3]),
        .I2(\t2_med2[7]_i_3_n_0 ),
        .I3(p34[3]),
        .I4(\t3_center_reg_n_0_[3] ),
        .I5(\t2_med2[7]_i_4_n_0 ),
        .O(med0_return[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med2[4]_i_1 
       (.I0(\t2_med2[7]_i_2_n_0 ),
        .I1(p32[4]),
        .I2(\t2_med2[7]_i_3_n_0 ),
        .I3(p34[4]),
        .I4(\t3_center_reg_n_0_[4] ),
        .I5(\t2_med2[7]_i_4_n_0 ),
        .O(med0_return[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med2[5]_i_1 
       (.I0(\t2_med2[7]_i_2_n_0 ),
        .I1(p32[5]),
        .I2(\t2_med2[7]_i_3_n_0 ),
        .I3(p34[5]),
        .I4(\t3_center_reg_n_0_[5] ),
        .I5(\t2_med2[7]_i_4_n_0 ),
        .O(med0_return[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med2[6]_i_1 
       (.I0(\t2_med2[7]_i_2_n_0 ),
        .I1(p32[6]),
        .I2(\t2_med2[7]_i_3_n_0 ),
        .I3(p34[6]),
        .I4(\t3_center_reg_n_0_[6] ),
        .I5(\t2_med2[7]_i_4_n_0 ),
        .O(med0_return[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med2[7]_i_1 
       (.I0(\t2_med2[7]_i_2_n_0 ),
        .I1(p32[7]),
        .I2(\t2_med2[7]_i_3_n_0 ),
        .I3(p34[7]),
        .I4(\t3_center_reg_n_0_[7] ),
        .I5(\t2_med2[7]_i_4_n_0 ),
        .O(med0_return[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \t2_med2[7]_i_2 
       (.I0(min0_return2_carry_n_0),
        .I1(min0_return1_carry_n_0),
        .I2(med0_return2),
        .O(\t2_med2[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    \t2_med2[7]_i_3 
       (.I0(\min0_return2_inferred__0/i__carry_n_0 ),
        .I1(min0_return2_carry_n_0),
        .I2(min0_return1_carry_n_0),
        .I3(med0_return3),
        .I4(med0_return2),
        .O(\t2_med2[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h1010101F)) 
    \t2_med2[7]_i_4 
       (.I0(\min0_return2_inferred__0/i__carry_n_0 ),
        .I1(min0_return2_carry_n_0),
        .I2(min0_return1_carry_n_0),
        .I3(med0_return3),
        .I4(med0_return2),
        .O(\t2_med2[7]_i_4_n_0 ));
  FDCE \t2_med2_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(med0_return[0]),
        .Q(t2_med2[0]));
  FDCE \t2_med2_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(med0_return[1]),
        .Q(t2_med2[1]));
  FDCE \t2_med2_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med0_return[2]),
        .Q(t2_med2[2]));
  FDCE \t2_med2_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med0_return[3]),
        .Q(t2_med2[3]));
  FDCE \t2_med2_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med0_return[4]),
        .Q(t2_med2[4]));
  FDCE \t2_med2_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med0_return[5]),
        .Q(t2_med2[5]));
  FDCE \t2_med2_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med0_return[6]),
        .Q(t2_med2[6]));
  FDCE \t2_med2_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med0_return[7]),
        .Q(t2_med2[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med3[0]_i_1 
       (.I0(\t2_med3[7]_i_2_n_0 ),
        .I1(p52[0]),
        .I2(\t2_med3[7]_i_3_n_0 ),
        .I3(t1_p9[0]),
        .I4(t1_p7[0]),
        .I5(\t2_med3[7]_i_4_n_0 ),
        .O(med1_return[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med3[1]_i_1 
       (.I0(\t2_med3[7]_i_2_n_0 ),
        .I1(p52[1]),
        .I2(\t2_med3[7]_i_3_n_0 ),
        .I3(t1_p9[1]),
        .I4(t1_p7[1]),
        .I5(\t2_med3[7]_i_4_n_0 ),
        .O(med1_return[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med3[2]_i_1 
       (.I0(\t2_med3[7]_i_2_n_0 ),
        .I1(p52[2]),
        .I2(\t2_med3[7]_i_3_n_0 ),
        .I3(t1_p9[2]),
        .I4(t1_p7[2]),
        .I5(\t2_med3[7]_i_4_n_0 ),
        .O(med1_return[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med3[3]_i_1 
       (.I0(\t2_med3[7]_i_2_n_0 ),
        .I1(p52[3]),
        .I2(\t2_med3[7]_i_3_n_0 ),
        .I3(t1_p9[3]),
        .I4(t1_p7[3]),
        .I5(\t2_med3[7]_i_4_n_0 ),
        .O(med1_return[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med3[4]_i_1 
       (.I0(\t2_med3[7]_i_2_n_0 ),
        .I1(p52[4]),
        .I2(\t2_med3[7]_i_3_n_0 ),
        .I3(t1_p9[4]),
        .I4(t1_p7[4]),
        .I5(\t2_med3[7]_i_4_n_0 ),
        .O(med1_return[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med3[5]_i_1 
       (.I0(\t2_med3[7]_i_2_n_0 ),
        .I1(p52[5]),
        .I2(\t2_med3[7]_i_3_n_0 ),
        .I3(t1_p9[5]),
        .I4(t1_p7[5]),
        .I5(\t2_med3[7]_i_4_n_0 ),
        .O(med1_return[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med3[6]_i_1 
       (.I0(\t2_med3[7]_i_2_n_0 ),
        .I1(p52[6]),
        .I2(\t2_med3[7]_i_3_n_0 ),
        .I3(t1_p9[6]),
        .I4(t1_p7[6]),
        .I5(\t2_med3[7]_i_4_n_0 ),
        .O(med1_return[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t2_med3[7]_i_1 
       (.I0(\t2_med3[7]_i_2_n_0 ),
        .I1(p52[7]),
        .I2(\t2_med3[7]_i_3_n_0 ),
        .I3(t1_p9[7]),
        .I4(t1_p7[7]),
        .I5(\t2_med3[7]_i_4_n_0 ),
        .O(med1_return[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \t2_med3[7]_i_2 
       (.I0(p_1_in),
        .I1(p_2_in),
        .I2(med1_return2),
        .O(\t2_med3[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    \t2_med3[7]_i_3 
       (.I0(\min1_return2_inferred__0/i__carry_n_0 ),
        .I1(p_1_in),
        .I2(p_2_in),
        .I3(med1_return3),
        .I4(med1_return2),
        .O(\t2_med3[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h1010101F)) 
    \t2_med3[7]_i_4 
       (.I0(\min1_return2_inferred__0/i__carry_n_0 ),
        .I1(p_1_in),
        .I2(p_2_in),
        .I3(med1_return3),
        .I4(med1_return2),
        .O(\t2_med3[7]_i_4_n_0 ));
  FDCE \t2_med3_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(med1_return[0]),
        .Q(t2_med3[0]));
  FDCE \t2_med3_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(med1_return[1]),
        .Q(t2_med3[1]));
  FDCE \t2_med3_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med1_return[2]),
        .Q(t2_med3[2]));
  FDCE \t2_med3_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med1_return[3]),
        .Q(t2_med3[3]));
  FDCE \t2_med3_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med1_return[4]),
        .Q(t2_med3[4]));
  FDCE \t2_med3_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med1_return[5]),
        .Q(t2_med3[5]));
  FDCE \t2_med3_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med1_return[6]),
        .Q(t2_med3[6]));
  FDCE \t2_med3_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(med1_return[7]),
        .Q(t2_med3[7]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min1[0]_i_1 
       (.I0(min_return2_carry_n_0),
        .I1(p12[0]),
        .I2(t1_p3[0]),
        .I3(t1_p1[0]),
        .I4(min_return1_carry_n_0),
        .I5(\min_return2_inferred__0/i__carry_n_0 ),
        .O(min_return[0]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min1[1]_i_1 
       (.I0(min_return2_carry_n_0),
        .I1(p12[1]),
        .I2(t1_p3[1]),
        .I3(t1_p1[1]),
        .I4(min_return1_carry_n_0),
        .I5(\min_return2_inferred__0/i__carry_n_0 ),
        .O(min_return[1]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min1[2]_i_1 
       (.I0(min_return2_carry_n_0),
        .I1(p12[2]),
        .I2(t1_p3[2]),
        .I3(t1_p1[2]),
        .I4(min_return1_carry_n_0),
        .I5(\min_return2_inferred__0/i__carry_n_0 ),
        .O(min_return[2]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min1[3]_i_1 
       (.I0(min_return2_carry_n_0),
        .I1(p12[3]),
        .I2(t1_p3[3]),
        .I3(t1_p1[3]),
        .I4(min_return1_carry_n_0),
        .I5(\min_return2_inferred__0/i__carry_n_0 ),
        .O(min_return[3]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min1[4]_i_1 
       (.I0(min_return2_carry_n_0),
        .I1(p12[4]),
        .I2(t1_p3[4]),
        .I3(t1_p1[4]),
        .I4(min_return1_carry_n_0),
        .I5(\min_return2_inferred__0/i__carry_n_0 ),
        .O(min_return[4]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min1[5]_i_1 
       (.I0(min_return2_carry_n_0),
        .I1(p12[5]),
        .I2(t1_p3[5]),
        .I3(t1_p1[5]),
        .I4(min_return1_carry_n_0),
        .I5(\min_return2_inferred__0/i__carry_n_0 ),
        .O(min_return[5]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min1[6]_i_1 
       (.I0(min_return2_carry_n_0),
        .I1(p12[6]),
        .I2(t1_p3[6]),
        .I3(t1_p1[6]),
        .I4(min_return1_carry_n_0),
        .I5(\min_return2_inferred__0/i__carry_n_0 ),
        .O(min_return[6]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min1[7]_i_1 
       (.I0(min_return2_carry_n_0),
        .I1(p12[7]),
        .I2(t1_p3[7]),
        .I3(t1_p1[7]),
        .I4(min_return1_carry_n_0),
        .I5(\min_return2_inferred__0/i__carry_n_0 ),
        .O(min_return[7]));
  FDCE \t2_min1_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(min_return[0]),
        .Q(t2_min1[0]));
  FDCE \t2_min1_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(min_return[1]),
        .Q(t2_min1[1]));
  FDCE \t2_min1_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min_return[2]),
        .Q(t2_min1[2]));
  FDCE \t2_min1_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min_return[3]),
        .Q(t2_min1[3]));
  FDCE \t2_min1_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min_return[4]),
        .Q(t2_min1[4]));
  FDCE \t2_min1_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min_return[5]),
        .Q(t2_min1[5]));
  FDCE \t2_min1_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min_return[6]),
        .Q(t2_min1[6]));
  FDCE \t2_min1_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min_return[7]),
        .Q(t2_min1[7]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min2[0]_i_1 
       (.I0(min0_return2_carry_n_0),
        .I1(p32[0]),
        .I2(p34[0]),
        .I3(\t3_center_reg_n_0_[0] ),
        .I4(min0_return1_carry_n_0),
        .I5(\min0_return2_inferred__0/i__carry_n_0 ),
        .O(min0_return[0]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min2[1]_i_1 
       (.I0(min0_return2_carry_n_0),
        .I1(p32[1]),
        .I2(p34[1]),
        .I3(\t3_center_reg_n_0_[1] ),
        .I4(min0_return1_carry_n_0),
        .I5(\min0_return2_inferred__0/i__carry_n_0 ),
        .O(min0_return[1]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min2[2]_i_1 
       (.I0(min0_return2_carry_n_0),
        .I1(p32[2]),
        .I2(p34[2]),
        .I3(\t3_center_reg_n_0_[2] ),
        .I4(min0_return1_carry_n_0),
        .I5(\min0_return2_inferred__0/i__carry_n_0 ),
        .O(min0_return[2]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min2[3]_i_1 
       (.I0(min0_return2_carry_n_0),
        .I1(p32[3]),
        .I2(p34[3]),
        .I3(\t3_center_reg_n_0_[3] ),
        .I4(min0_return1_carry_n_0),
        .I5(\min0_return2_inferred__0/i__carry_n_0 ),
        .O(min0_return[3]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min2[4]_i_1 
       (.I0(min0_return2_carry_n_0),
        .I1(p32[4]),
        .I2(p34[4]),
        .I3(\t3_center_reg_n_0_[4] ),
        .I4(min0_return1_carry_n_0),
        .I5(\min0_return2_inferred__0/i__carry_n_0 ),
        .O(min0_return[4]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min2[5]_i_1 
       (.I0(min0_return2_carry_n_0),
        .I1(p32[5]),
        .I2(p34[5]),
        .I3(\t3_center_reg_n_0_[5] ),
        .I4(min0_return1_carry_n_0),
        .I5(\min0_return2_inferred__0/i__carry_n_0 ),
        .O(min0_return[5]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min2[6]_i_1 
       (.I0(min0_return2_carry_n_0),
        .I1(p32[6]),
        .I2(p34[6]),
        .I3(\t3_center_reg_n_0_[6] ),
        .I4(min0_return1_carry_n_0),
        .I5(\min0_return2_inferred__0/i__carry_n_0 ),
        .O(min0_return[6]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min2[7]_i_1 
       (.I0(min0_return2_carry_n_0),
        .I1(p32[7]),
        .I2(p34[7]),
        .I3(\t3_center_reg_n_0_[7] ),
        .I4(min0_return1_carry_n_0),
        .I5(\min0_return2_inferred__0/i__carry_n_0 ),
        .O(min0_return[7]));
  FDCE \t2_min2_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(min0_return[0]),
        .Q(t2_min2[0]));
  FDCE \t2_min2_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(min0_return[1]),
        .Q(t2_min2[1]));
  FDCE \t2_min2_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min0_return[2]),
        .Q(t2_min2[2]));
  FDCE \t2_min2_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min0_return[3]),
        .Q(t2_min2[3]));
  FDCE \t2_min2_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min0_return[4]),
        .Q(t2_min2[4]));
  FDCE \t2_min2_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min0_return[5]),
        .Q(t2_min2[5]));
  FDCE \t2_min2_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min0_return[6]),
        .Q(t2_min2[6]));
  FDCE \t2_min2_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min0_return[7]),
        .Q(t2_min2[7]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min3[0]_i_1 
       (.I0(p_1_in),
        .I1(p52[0]),
        .I2(t1_p9[0]),
        .I3(t1_p7[0]),
        .I4(p_2_in),
        .I5(\min1_return2_inferred__0/i__carry_n_0 ),
        .O(min1_return[0]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min3[1]_i_1 
       (.I0(p_1_in),
        .I1(p52[1]),
        .I2(t1_p9[1]),
        .I3(t1_p7[1]),
        .I4(p_2_in),
        .I5(\min1_return2_inferred__0/i__carry_n_0 ),
        .O(min1_return[1]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min3[2]_i_1 
       (.I0(p_1_in),
        .I1(p52[2]),
        .I2(t1_p9[2]),
        .I3(t1_p7[2]),
        .I4(p_2_in),
        .I5(\min1_return2_inferred__0/i__carry_n_0 ),
        .O(min1_return[2]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min3[3]_i_1 
       (.I0(p_1_in),
        .I1(p52[3]),
        .I2(t1_p9[3]),
        .I3(t1_p7[3]),
        .I4(p_2_in),
        .I5(\min1_return2_inferred__0/i__carry_n_0 ),
        .O(min1_return[3]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min3[4]_i_1 
       (.I0(p_1_in),
        .I1(p52[4]),
        .I2(t1_p9[4]),
        .I3(t1_p7[4]),
        .I4(p_2_in),
        .I5(\min1_return2_inferred__0/i__carry_n_0 ),
        .O(min1_return[4]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min3[5]_i_1 
       (.I0(p_1_in),
        .I1(p52[5]),
        .I2(t1_p9[5]),
        .I3(t1_p7[5]),
        .I4(p_2_in),
        .I5(\min1_return2_inferred__0/i__carry_n_0 ),
        .O(min1_return[5]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min3[6]_i_1 
       (.I0(p_1_in),
        .I1(p52[6]),
        .I2(t1_p9[6]),
        .I3(t1_p7[6]),
        .I4(p_2_in),
        .I5(\min1_return2_inferred__0/i__carry_n_0 ),
        .O(min1_return[6]));
  LUT6 #(
    .INIT(64'hFF00D8D8F0F0D8D8)) 
    \t2_min3[7]_i_1 
       (.I0(p_1_in),
        .I1(p52[7]),
        .I2(t1_p9[7]),
        .I3(t1_p7[7]),
        .I4(p_2_in),
        .I5(\min1_return2_inferred__0/i__carry_n_0 ),
        .O(min1_return[7]));
  FDCE \t2_min3_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(min1_return[0]),
        .Q(t2_min3[0]));
  FDCE \t2_min3_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(min1_return[1]),
        .Q(t2_min3[1]));
  FDCE \t2_min3_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min1_return[2]),
        .Q(t2_min3[2]));
  FDCE \t2_min3_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min1_return[3]),
        .Q(t2_min3[3]));
  FDCE \t2_min3_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min1_return[4]),
        .Q(t2_min3[4]));
  FDCE \t2_min3_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min1_return[5]),
        .Q(t2_min3[5]));
  FDCE \t2_min3_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min1_return[6]),
        .Q(t2_min3[6]));
  FDCE \t2_min3_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(min1_return[7]),
        .Q(t2_min3[7]));
  FDCE \t2_p1_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p1[0]),
        .Q(t2_p1[0]));
  FDCE \t2_p1_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p1[1]),
        .Q(t2_p1[1]));
  FDCE \t2_p1_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p1[2]),
        .Q(t2_p1[2]));
  FDCE \t2_p1_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p1[3]),
        .Q(t2_p1[3]));
  FDCE \t2_p1_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p1[4]),
        .Q(t2_p1[4]));
  FDCE \t2_p1_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p1[5]),
        .Q(t2_p1[5]));
  FDCE \t2_p1_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p1[6]),
        .Q(t2_p1[6]));
  FDCE \t2_p1_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p1[7]),
        .Q(t2_p1[7]));
  FDCE \t2_p2_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p12[0]),
        .Q(t2_p2[0]));
  FDCE \t2_p2_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p12[1]),
        .Q(t2_p2[1]));
  FDCE \t2_p2_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p12[2]),
        .Q(t2_p2[2]));
  FDCE \t2_p2_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p12[3]),
        .Q(t2_p2[3]));
  FDCE \t2_p2_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p12[4]),
        .Q(t2_p2[4]));
  FDCE \t2_p2_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p12[5]),
        .Q(t2_p2[5]));
  FDCE \t2_p2_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p12[6]),
        .Q(t2_p2[6]));
  FDCE \t2_p2_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(p12[7]),
        .Q(t2_p2[7]));
  FDCE \t2_p3_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p3[0]),
        .Q(t2_p3[0]));
  FDCE \t2_p3_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p3[1]),
        .Q(t2_p3[1]));
  FDCE \t2_p3_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p3[2]),
        .Q(t2_p3[2]));
  FDCE \t2_p3_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p3[3]),
        .Q(t2_p3[3]));
  FDCE \t2_p3_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p3[4]),
        .Q(t2_p3[4]));
  FDCE \t2_p3_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p3[5]),
        .Q(t2_p3[5]));
  FDCE \t2_p3_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p3[6]),
        .Q(t2_p3[6]));
  FDCE \t2_p3_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\current_state_reg[1] ),
        .D(t1_p3[7]),
        .Q(t2_p3[7]));
  FDCE \t2_p5_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p32[0]),
        .Q(t2_p5[0]));
  FDCE \t2_p5_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p32[1]),
        .Q(t2_p5[1]));
  FDCE \t2_p5_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p32[2]),
        .Q(t2_p5[2]));
  FDCE \t2_p5_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p32[3]),
        .Q(t2_p5[3]));
  FDCE \t2_p5_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p32[4]),
        .Q(t2_p5[4]));
  FDCE \t2_p5_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p32[5]),
        .Q(t2_p5[5]));
  FDCE \t2_p5_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p32[6]),
        .Q(t2_p5[6]));
  FDCE \t2_p5_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p32[7]),
        .Q(t2_p5[7]));
  FDCE \t2_p6_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p34[0]),
        .Q(t2_p6[0]));
  FDCE \t2_p6_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p34[1]),
        .Q(t2_p6[1]));
  FDCE \t2_p6_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p34[2]),
        .Q(t2_p6[2]));
  FDCE \t2_p6_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p34[3]),
        .Q(t2_p6[3]));
  FDCE \t2_p6_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p34[4]),
        .Q(t2_p6[4]));
  FDCE \t2_p6_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p34[5]),
        .Q(t2_p6[5]));
  FDCE \t2_p6_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p34[6]),
        .Q(t2_p6[6]));
  FDCE \t2_p6_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t1_p6_reg[6]_0 ),
        .D(p34[7]),
        .Q(t2_p6[7]));
  FDCE \t2_p7_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(t1_p7[0]),
        .Q(t2_p7[0]));
  FDCE \t2_p7_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(t1_p7[1]),
        .Q(t2_p7[1]));
  FDCE \t2_p7_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p7[2]),
        .Q(t2_p7[2]));
  FDCE \t2_p7_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p7[3]),
        .Q(t2_p7[3]));
  FDCE \t2_p7_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p7[4]),
        .Q(t2_p7[4]));
  FDCE \t2_p7_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p7[5]),
        .Q(t2_p7[5]));
  FDCE \t2_p7_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p7[6]),
        .Q(t2_p7[6]));
  FDCE \t2_p7_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p7[7]),
        .Q(t2_p7[7]));
  FDCE \t2_p8_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p52[0]),
        .Q(t2_p8[0]));
  FDCE \t2_p8_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(p52[1]),
        .Q(t2_p8[1]));
  FDCE \t2_p8_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p52[2]),
        .Q(t2_p8[2]));
  FDCE \t2_p8_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p52[3]),
        .Q(t2_p8[3]));
  FDCE \t2_p8_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p52[4]),
        .Q(t2_p8[4]));
  FDCE \t2_p8_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p52[5]),
        .Q(t2_p8[5]));
  FDCE \t2_p8_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p52[6]),
        .Q(t2_p8[6]));
  FDCE \t2_p8_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(p52[7]),
        .Q(t2_p8[7]));
  FDCE \t2_p9_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(t1_p9[0]),
        .Q(t2_p9[0]));
  FDCE \t2_p9_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p9[1]),
        .Q(t2_p9[1]));
  FDCE \t2_p9_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p9[2]),
        .Q(t2_p9[2]));
  FDCE \t2_p9_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p9[3]),
        .Q(t2_p9[3]));
  FDCE \t2_p9_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p9[4]),
        .Q(t2_p9[4]));
  FDCE \t2_p9_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p9[5]),
        .Q(t2_p9[5]));
  FDCE \t2_p9_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p9[6]),
        .Q(t2_p9[6]));
  FDCE \t2_p9_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t1_p9[7]),
        .Q(t2_p9[7]));
  FDCE \t3_center_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(t2_p5[0]),
        .Q(\t3_center_reg_n_0_[0] ));
  FDCE \t3_center_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(t2_p5[1]),
        .Q(\t3_center_reg_n_0_[1] ));
  FDCE \t3_center_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(t2_p5[2]),
        .Q(\t3_center_reg_n_0_[2] ));
  FDCE \t3_center_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(t2_p5[3]),
        .Q(\t3_center_reg_n_0_[3] ));
  FDCE \t3_center_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t2_p5[4]),
        .Q(\t3_center_reg_n_0_[4] ));
  FDCE \t3_center_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t2_p5[5]),
        .Q(\t3_center_reg_n_0_[5] ));
  FDCE \t3_center_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t2_p5[6]),
        .Q(\t3_center_reg_n_0_[6] ));
  FDCE \t3_center_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t2_p5[7]),
        .Q(\t3_center_reg_n_0_[7] ));
  CARRY4 t3_diff10_carry
       (.CI(1'b0),
        .CO({t3_diff10_carry_n_0,t3_diff10_carry_n_1,t3_diff10_carry_n_2,t3_diff10_carry_n_3}),
        .CYINIT(1'b1),
        .DI(t2_p5[3:0]),
        .O(t3_diff10[3:0]),
        .S({t3_diff10_carry_i_1_n_0,t3_diff10_carry_i_2_n_0,t3_diff10_carry_i_3_n_0,t3_diff10_carry_i_4_n_0}));
  CARRY4 t3_diff10_carry__0
       (.CI(t3_diff10_carry_n_0),
        .CO({t3_diff10_carry__0_n_0,t3_diff10_carry__0_n_1,t3_diff10_carry__0_n_2,t3_diff10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(t2_p5[7:4]),
        .O(t3_diff10[7:4]),
        .S({t3_diff10_carry__0_i_1_n_0,t3_diff10_carry__0_i_2_n_0,t3_diff10_carry__0_i_3_n_0,t3_diff10_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff10_carry__0_i_1
       (.I0(t2_p5[7]),
        .I1(t2_p1[7]),
        .O(t3_diff10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff10_carry__0_i_2
       (.I0(t2_p5[6]),
        .I1(t2_p1[6]),
        .O(t3_diff10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff10_carry__0_i_3
       (.I0(t2_p5[5]),
        .I1(t2_p1[5]),
        .O(t3_diff10_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff10_carry__0_i_4
       (.I0(t2_p5[4]),
        .I1(t2_p1[4]),
        .O(t3_diff10_carry__0_i_4_n_0));
  CARRY4 t3_diff10_carry__1
       (.CI(t3_diff10_carry__0_n_0),
        .CO(NLW_t3_diff10_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_t3_diff10_carry__1_O_UNCONNECTED[3:1],t3_diff10[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff10_carry_i_1
       (.I0(t2_p5[3]),
        .I1(t2_p1[3]),
        .O(t3_diff10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff10_carry_i_2
       (.I0(t2_p5[2]),
        .I1(t2_p1[2]),
        .O(t3_diff10_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff10_carry_i_3
       (.I0(t2_p5[1]),
        .I1(t2_p1[1]),
        .O(t3_diff10_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff10_carry_i_4
       (.I0(t2_p5[0]),
        .I1(t2_p1[0]),
        .O(t3_diff10_carry_i_4_n_0));
  FDCE \t3_diff1_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff10[0]),
        .Q(\t3_diff1_reg_n_0_[0] ));
  FDCE \t3_diff1_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff10[1]),
        .Q(\t3_diff1_reg_n_0_[1] ));
  FDCE \t3_diff1_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff10[2]),
        .Q(\t3_diff1_reg_n_0_[2] ));
  FDCE \t3_diff1_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff10[3]),
        .Q(\t3_diff1_reg_n_0_[3] ));
  FDCE \t3_diff1_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff10[4]),
        .Q(\t3_diff1_reg_n_0_[4] ));
  FDCE \t3_diff1_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff10[5]),
        .Q(\t3_diff1_reg_n_0_[5] ));
  FDCE \t3_diff1_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff10[6]),
        .Q(\t3_diff1_reg_n_0_[6] ));
  FDCE \t3_diff1_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff10[7]),
        .Q(\t3_diff1_reg_n_0_[7] ));
  FDCE \t3_diff1_reg[8] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff10[8]),
        .Q(p_0_in[7]));
  CARRY4 t3_diff20_carry
       (.CI(1'b0),
        .CO({t3_diff20_carry_n_0,t3_diff20_carry_n_1,t3_diff20_carry_n_2,t3_diff20_carry_n_3}),
        .CYINIT(1'b1),
        .DI(t2_p5[3:0]),
        .O(t3_diff20[3:0]),
        .S({t3_diff20_carry_i_1_n_0,t3_diff20_carry_i_2_n_0,t3_diff20_carry_i_3_n_0,t3_diff20_carry_i_4_n_0}));
  CARRY4 t3_diff20_carry__0
       (.CI(t3_diff20_carry_n_0),
        .CO({t3_diff20_carry__0_n_0,t3_diff20_carry__0_n_1,t3_diff20_carry__0_n_2,t3_diff20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(t2_p5[7:4]),
        .O(t3_diff20[7:4]),
        .S({t3_diff20_carry__0_i_1_n_0,t3_diff20_carry__0_i_2_n_0,t3_diff20_carry__0_i_3_n_0,t3_diff20_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff20_carry__0_i_1
       (.I0(t2_p5[7]),
        .I1(t2_p2[7]),
        .O(t3_diff20_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff20_carry__0_i_2
       (.I0(t2_p5[6]),
        .I1(t2_p2[6]),
        .O(t3_diff20_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff20_carry__0_i_3
       (.I0(t2_p5[5]),
        .I1(t2_p2[5]),
        .O(t3_diff20_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff20_carry__0_i_4
       (.I0(t2_p5[4]),
        .I1(t2_p2[4]),
        .O(t3_diff20_carry__0_i_4_n_0));
  CARRY4 t3_diff20_carry__1
       (.CI(t3_diff20_carry__0_n_0),
        .CO(NLW_t3_diff20_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_t3_diff20_carry__1_O_UNCONNECTED[3:1],t3_diff20[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff20_carry_i_1
       (.I0(t2_p5[3]),
        .I1(t2_p2[3]),
        .O(t3_diff20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff20_carry_i_2
       (.I0(t2_p5[2]),
        .I1(t2_p2[2]),
        .O(t3_diff20_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff20_carry_i_3
       (.I0(t2_p5[1]),
        .I1(t2_p2[1]),
        .O(t3_diff20_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff20_carry_i_4
       (.I0(t2_p5[0]),
        .I1(t2_p2[0]),
        .O(t3_diff20_carry_i_4_n_0));
  FDCE \t3_diff2_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff20[0]),
        .Q(\t3_diff2_reg_n_0_[0] ));
  FDCE \t3_diff2_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff20[1]),
        .Q(\t3_diff2_reg_n_0_[1] ));
  FDCE \t3_diff2_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff20[2]),
        .Q(\t3_diff2_reg_n_0_[2] ));
  FDCE \t3_diff2_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff20[3]),
        .Q(\t3_diff2_reg_n_0_[3] ));
  FDCE \t3_diff2_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff20[4]),
        .Q(\t3_diff2_reg_n_0_[4] ));
  FDCE \t3_diff2_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff20[5]),
        .Q(\t3_diff2_reg_n_0_[5] ));
  FDCE \t3_diff2_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff20[6]),
        .Q(\t3_diff2_reg_n_0_[6] ));
  FDCE \t3_diff2_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff20[7]),
        .Q(\t3_diff2_reg_n_0_[7] ));
  FDCE \t3_diff2_reg[8] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff20[8]),
        .Q(p_0_in[6]));
  CARRY4 t3_diff30_carry
       (.CI(1'b0),
        .CO({t3_diff30_carry_n_0,t3_diff30_carry_n_1,t3_diff30_carry_n_2,t3_diff30_carry_n_3}),
        .CYINIT(1'b1),
        .DI(t2_p5[3:0]),
        .O(t3_diff30[3:0]),
        .S({t3_diff30_carry_i_1_n_0,t3_diff30_carry_i_2_n_0,t3_diff30_carry_i_3_n_0,t3_diff30_carry_i_4_n_0}));
  CARRY4 t3_diff30_carry__0
       (.CI(t3_diff30_carry_n_0),
        .CO({t3_diff30_carry__0_n_0,t3_diff30_carry__0_n_1,t3_diff30_carry__0_n_2,t3_diff30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(t2_p5[7:4]),
        .O(t3_diff30[7:4]),
        .S({t3_diff30_carry__0_i_1_n_0,t3_diff30_carry__0_i_2_n_0,t3_diff30_carry__0_i_3_n_0,t3_diff30_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff30_carry__0_i_1
       (.I0(t2_p5[7]),
        .I1(t2_p3[7]),
        .O(t3_diff30_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff30_carry__0_i_2
       (.I0(t2_p5[6]),
        .I1(t2_p3[6]),
        .O(t3_diff30_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff30_carry__0_i_3
       (.I0(t2_p5[5]),
        .I1(t2_p3[5]),
        .O(t3_diff30_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff30_carry__0_i_4
       (.I0(t2_p5[4]),
        .I1(t2_p3[4]),
        .O(t3_diff30_carry__0_i_4_n_0));
  CARRY4 t3_diff30_carry__1
       (.CI(t3_diff30_carry__0_n_0),
        .CO(NLW_t3_diff30_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_t3_diff30_carry__1_O_UNCONNECTED[3:1],t3_diff30[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff30_carry_i_1
       (.I0(t2_p5[3]),
        .I1(t2_p3[3]),
        .O(t3_diff30_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff30_carry_i_2
       (.I0(t2_p5[2]),
        .I1(t2_p3[2]),
        .O(t3_diff30_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff30_carry_i_3
       (.I0(t2_p5[1]),
        .I1(t2_p3[1]),
        .O(t3_diff30_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff30_carry_i_4
       (.I0(t2_p5[0]),
        .I1(t2_p3[0]),
        .O(t3_diff30_carry_i_4_n_0));
  FDCE \t3_diff3_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff30[0]),
        .Q(\t3_diff3_reg_n_0_[0] ));
  FDCE \t3_diff3_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff30[1]),
        .Q(\t3_diff3_reg_n_0_[1] ));
  FDCE \t3_diff3_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff30[2]),
        .Q(\t3_diff3_reg_n_0_[2] ));
  FDCE \t3_diff3_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff30[3]),
        .Q(\t3_diff3_reg_n_0_[3] ));
  FDCE \t3_diff3_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff30[4]),
        .Q(\t3_diff3_reg_n_0_[4] ));
  FDCE \t3_diff3_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff30[5]),
        .Q(\t3_diff3_reg_n_0_[5] ));
  FDCE \t3_diff3_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff30[6]),
        .Q(\t3_diff3_reg_n_0_[6] ));
  FDCE \t3_diff3_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff30[7]),
        .Q(\t3_diff3_reg_n_0_[7] ));
  FDCE \t3_diff3_reg[8] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff30[8]),
        .Q(p_0_in[5]));
  CARRY4 t3_diff40_carry
       (.CI(1'b0),
        .CO({t3_diff40_carry_n_0,t3_diff40_carry_n_1,t3_diff40_carry_n_2,t3_diff40_carry_n_3}),
        .CYINIT(1'b1),
        .DI(t2_p5[3:0]),
        .O(t3_diff40[3:0]),
        .S({t3_diff40_carry_i_1_n_0,t3_diff40_carry_i_2_n_0,t3_diff40_carry_i_3_n_0,t3_diff40_carry_i_4_n_0}));
  CARRY4 t3_diff40_carry__0
       (.CI(t3_diff40_carry_n_0),
        .CO({t3_diff40_carry__0_n_0,t3_diff40_carry__0_n_1,t3_diff40_carry__0_n_2,t3_diff40_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(t2_p5[7:4]),
        .O(t3_diff40[7:4]),
        .S({t3_diff40_carry__0_i_1_n_0,t3_diff40_carry__0_i_2_n_0,t3_diff40_carry__0_i_3_n_0,t3_diff40_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff40_carry__0_i_1
       (.I0(t2_p5[7]),
        .I1(t4_center[7]),
        .O(t3_diff40_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff40_carry__0_i_2
       (.I0(t2_p5[6]),
        .I1(t4_center[6]),
        .O(t3_diff40_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff40_carry__0_i_3
       (.I0(t2_p5[5]),
        .I1(t4_center[5]),
        .O(t3_diff40_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff40_carry__0_i_4
       (.I0(t2_p5[4]),
        .I1(t4_center[4]),
        .O(t3_diff40_carry__0_i_4_n_0));
  CARRY4 t3_diff40_carry__1
       (.CI(t3_diff40_carry__0_n_0),
        .CO(NLW_t3_diff40_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_t3_diff40_carry__1_O_UNCONNECTED[3:1],t3_diff40[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff40_carry_i_1
       (.I0(t2_p5[3]),
        .I1(t4_center[3]),
        .O(t3_diff40_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff40_carry_i_2
       (.I0(t2_p5[2]),
        .I1(t4_center[2]),
        .O(t3_diff40_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff40_carry_i_3
       (.I0(t2_p5[1]),
        .I1(t4_center[1]),
        .O(t3_diff40_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff40_carry_i_4
       (.I0(t2_p5[0]),
        .I1(t4_center[0]),
        .O(t3_diff40_carry_i_4_n_0));
  FDCE \t3_diff4_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff40[0]),
        .Q(\t3_diff4_reg_n_0_[0] ));
  FDCE \t3_diff4_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff40[1]),
        .Q(\t3_diff4_reg_n_0_[1] ));
  FDCE \t3_diff4_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff40[2]),
        .Q(\t3_diff4_reg_n_0_[2] ));
  FDCE \t3_diff4_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff40[3]),
        .Q(\t3_diff4_reg_n_0_[3] ));
  FDCE \t3_diff4_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff40[4]),
        .Q(\t3_diff4_reg_n_0_[4] ));
  FDCE \t3_diff4_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff40[5]),
        .Q(\t3_diff4_reg_n_0_[5] ));
  FDCE \t3_diff4_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff40[6]),
        .Q(\t3_diff4_reg_n_0_[6] ));
  FDCE \t3_diff4_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff40[7]),
        .Q(\t3_diff4_reg_n_0_[7] ));
  FDCE \t3_diff4_reg[8] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff40[8]),
        .Q(p_0_in[4]));
  CARRY4 t3_diff50_carry
       (.CI(1'b0),
        .CO({t3_diff50_carry_n_0,t3_diff50_carry_n_1,t3_diff50_carry_n_2,t3_diff50_carry_n_3}),
        .CYINIT(1'b1),
        .DI(t2_p5[3:0]),
        .O(t3_diff50[3:0]),
        .S({t3_diff50_carry_i_1_n_0,t3_diff50_carry_i_2_n_0,t3_diff50_carry_i_3_n_0,t3_diff50_carry_i_4_n_0}));
  CARRY4 t3_diff50_carry__0
       (.CI(t3_diff50_carry_n_0),
        .CO({t3_diff50_carry__0_n_0,t3_diff50_carry__0_n_1,t3_diff50_carry__0_n_2,t3_diff50_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(t2_p5[7:4]),
        .O(t3_diff50[7:4]),
        .S({t3_diff50_carry__0_i_1_n_0,t3_diff50_carry__0_i_2_n_0,t3_diff50_carry__0_i_3_n_0,t3_diff50_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff50_carry__0_i_1
       (.I0(t2_p5[7]),
        .I1(t2_p6[7]),
        .O(t3_diff50_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff50_carry__0_i_2
       (.I0(t2_p5[6]),
        .I1(t2_p6[6]),
        .O(t3_diff50_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff50_carry__0_i_3
       (.I0(t2_p5[5]),
        .I1(t2_p6[5]),
        .O(t3_diff50_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff50_carry__0_i_4
       (.I0(t2_p5[4]),
        .I1(t2_p6[4]),
        .O(t3_diff50_carry__0_i_4_n_0));
  CARRY4 t3_diff50_carry__1
       (.CI(t3_diff50_carry__0_n_0),
        .CO(NLW_t3_diff50_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_t3_diff50_carry__1_O_UNCONNECTED[3:1],t3_diff50[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff50_carry_i_1
       (.I0(t2_p5[3]),
        .I1(t2_p6[3]),
        .O(t3_diff50_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff50_carry_i_2
       (.I0(t2_p5[2]),
        .I1(t2_p6[2]),
        .O(t3_diff50_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff50_carry_i_3
       (.I0(t2_p5[1]),
        .I1(t2_p6[1]),
        .O(t3_diff50_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff50_carry_i_4
       (.I0(t2_p5[0]),
        .I1(t2_p6[0]),
        .O(t3_diff50_carry_i_4_n_0));
  FDCE \t3_diff5_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff50[0]),
        .Q(\t3_diff5_reg_n_0_[0] ));
  FDCE \t3_diff5_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff50[1]),
        .Q(\t3_diff5_reg_n_0_[1] ));
  FDCE \t3_diff5_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff50[2]),
        .Q(\t3_diff5_reg_n_0_[2] ));
  FDCE \t3_diff5_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff50[3]),
        .Q(\t3_diff5_reg_n_0_[3] ));
  FDCE \t3_diff5_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff50[4]),
        .Q(\t3_diff5_reg_n_0_[4] ));
  FDCE \t3_diff5_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff50[5]),
        .Q(\t3_diff5_reg_n_0_[5] ));
  FDCE \t3_diff5_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff50[6]),
        .Q(\t3_diff5_reg_n_0_[6] ));
  FDCE \t3_diff5_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff50[7]),
        .Q(\t3_diff5_reg_n_0_[7] ));
  FDCE \t3_diff5_reg[8] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff50[8]),
        .Q(p_0_in[3]));
  CARRY4 t3_diff60_carry
       (.CI(1'b0),
        .CO({t3_diff60_carry_n_0,t3_diff60_carry_n_1,t3_diff60_carry_n_2,t3_diff60_carry_n_3}),
        .CYINIT(1'b1),
        .DI(t2_p5[3:0]),
        .O(t3_diff60[3:0]),
        .S({t3_diff60_carry_i_1_n_0,t3_diff60_carry_i_2_n_0,t3_diff60_carry_i_3_n_0,t3_diff60_carry_i_4_n_0}));
  CARRY4 t3_diff60_carry__0
       (.CI(t3_diff60_carry_n_0),
        .CO({t3_diff60_carry__0_n_0,t3_diff60_carry__0_n_1,t3_diff60_carry__0_n_2,t3_diff60_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(t2_p5[7:4]),
        .O(t3_diff60[7:4]),
        .S({t3_diff60_carry__0_i_1_n_0,t3_diff60_carry__0_i_2_n_0,t3_diff60_carry__0_i_3_n_0,t3_diff60_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff60_carry__0_i_1
       (.I0(t2_p5[7]),
        .I1(t2_p7[7]),
        .O(t3_diff60_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff60_carry__0_i_2
       (.I0(t2_p5[6]),
        .I1(t2_p7[6]),
        .O(t3_diff60_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff60_carry__0_i_3
       (.I0(t2_p5[5]),
        .I1(t2_p7[5]),
        .O(t3_diff60_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff60_carry__0_i_4
       (.I0(t2_p5[4]),
        .I1(t2_p7[4]),
        .O(t3_diff60_carry__0_i_4_n_0));
  CARRY4 t3_diff60_carry__1
       (.CI(t3_diff60_carry__0_n_0),
        .CO(NLW_t3_diff60_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_t3_diff60_carry__1_O_UNCONNECTED[3:1],t3_diff60[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff60_carry_i_1
       (.I0(t2_p5[3]),
        .I1(t2_p7[3]),
        .O(t3_diff60_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff60_carry_i_2
       (.I0(t2_p5[2]),
        .I1(t2_p7[2]),
        .O(t3_diff60_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff60_carry_i_3
       (.I0(t2_p5[1]),
        .I1(t2_p7[1]),
        .O(t3_diff60_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff60_carry_i_4
       (.I0(t2_p5[0]),
        .I1(t2_p7[0]),
        .O(t3_diff60_carry_i_4_n_0));
  FDCE \t3_diff6_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff60[0]),
        .Q(\t3_diff6_reg_n_0_[0] ));
  FDCE \t3_diff6_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff60[1]),
        .Q(\t3_diff6_reg_n_0_[1] ));
  FDCE \t3_diff6_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff60[2]),
        .Q(\t3_diff6_reg_n_0_[2] ));
  FDCE \t3_diff6_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff60[3]),
        .Q(\t3_diff6_reg_n_0_[3] ));
  FDCE \t3_diff6_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff60[4]),
        .Q(\t3_diff6_reg_n_0_[4] ));
  FDCE \t3_diff6_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff60[5]),
        .Q(\t3_diff6_reg_n_0_[5] ));
  FDCE \t3_diff6_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff60[6]),
        .Q(\t3_diff6_reg_n_0_[6] ));
  FDCE \t3_diff6_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff60[7]),
        .Q(\t3_diff6_reg_n_0_[7] ));
  FDCE \t3_diff6_reg[8] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff60[8]),
        .Q(p_0_in[2]));
  CARRY4 t3_diff70_carry
       (.CI(1'b0),
        .CO({t3_diff70_carry_n_0,t3_diff70_carry_n_1,t3_diff70_carry_n_2,t3_diff70_carry_n_3}),
        .CYINIT(1'b1),
        .DI(t2_p5[3:0]),
        .O(t3_diff70[3:0]),
        .S({t3_diff70_carry_i_1_n_0,t3_diff70_carry_i_2_n_0,t3_diff70_carry_i_3_n_0,t3_diff70_carry_i_4_n_0}));
  CARRY4 t3_diff70_carry__0
       (.CI(t3_diff70_carry_n_0),
        .CO({t3_diff70_carry__0_n_0,t3_diff70_carry__0_n_1,t3_diff70_carry__0_n_2,t3_diff70_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(t2_p5[7:4]),
        .O(t3_diff70[7:4]),
        .S({t3_diff70_carry__0_i_1_n_0,t3_diff70_carry__0_i_2_n_0,t3_diff70_carry__0_i_3_n_0,t3_diff70_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff70_carry__0_i_1
       (.I0(t2_p5[7]),
        .I1(t2_p8[7]),
        .O(t3_diff70_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff70_carry__0_i_2
       (.I0(t2_p5[6]),
        .I1(t2_p8[6]),
        .O(t3_diff70_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff70_carry__0_i_3
       (.I0(t2_p5[5]),
        .I1(t2_p8[5]),
        .O(t3_diff70_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff70_carry__0_i_4
       (.I0(t2_p5[4]),
        .I1(t2_p8[4]),
        .O(t3_diff70_carry__0_i_4_n_0));
  CARRY4 t3_diff70_carry__1
       (.CI(t3_diff70_carry__0_n_0),
        .CO(NLW_t3_diff70_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_t3_diff70_carry__1_O_UNCONNECTED[3:1],t3_diff70[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff70_carry_i_1
       (.I0(t2_p5[3]),
        .I1(t2_p8[3]),
        .O(t3_diff70_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff70_carry_i_2
       (.I0(t2_p5[2]),
        .I1(t2_p8[2]),
        .O(t3_diff70_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff70_carry_i_3
       (.I0(t2_p5[1]),
        .I1(t2_p8[1]),
        .O(t3_diff70_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff70_carry_i_4
       (.I0(t2_p5[0]),
        .I1(t2_p8[0]),
        .O(t3_diff70_carry_i_4_n_0));
  FDCE \t3_diff7_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff70[0]),
        .Q(\t3_diff7_reg_n_0_[0] ));
  FDCE \t3_diff7_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff70[1]),
        .Q(\t3_diff7_reg_n_0_[1] ));
  FDCE \t3_diff7_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff70[2]),
        .Q(\t3_diff7_reg_n_0_[2] ));
  FDCE \t3_diff7_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff70[3]),
        .Q(\t3_diff7_reg_n_0_[3] ));
  FDCE \t3_diff7_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff70[4]),
        .Q(\t3_diff7_reg_n_0_[4] ));
  FDCE \t3_diff7_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff70[5]),
        .Q(\t3_diff7_reg_n_0_[5] ));
  FDCE \t3_diff7_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff70[6]),
        .Q(\t3_diff7_reg_n_0_[6] ));
  FDCE \t3_diff7_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff70[7]),
        .Q(\t3_diff7_reg_n_0_[7] ));
  FDCE \t3_diff7_reg[8] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff70[8]),
        .Q(p_0_in[1]));
  CARRY4 t3_diff80_carry
       (.CI(1'b0),
        .CO({t3_diff80_carry_n_0,t3_diff80_carry_n_1,t3_diff80_carry_n_2,t3_diff80_carry_n_3}),
        .CYINIT(1'b1),
        .DI(t2_p5[3:0]),
        .O(t3_diff80[3:0]),
        .S({t3_diff80_carry_i_1_n_0,t3_diff80_carry_i_2_n_0,t3_diff80_carry_i_3_n_0,t3_diff80_carry_i_4_n_0}));
  CARRY4 t3_diff80_carry__0
       (.CI(t3_diff80_carry_n_0),
        .CO({t3_diff80_carry__0_n_0,t3_diff80_carry__0_n_1,t3_diff80_carry__0_n_2,t3_diff80_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(t2_p5[7:4]),
        .O(t3_diff80[7:4]),
        .S({t3_diff80_carry__0_i_1_n_0,t3_diff80_carry__0_i_2_n_0,t3_diff80_carry__0_i_3_n_0,t3_diff80_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff80_carry__0_i_1
       (.I0(t2_p5[7]),
        .I1(t2_p9[7]),
        .O(t3_diff80_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff80_carry__0_i_2
       (.I0(t2_p5[6]),
        .I1(t2_p9[6]),
        .O(t3_diff80_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff80_carry__0_i_3
       (.I0(t2_p5[5]),
        .I1(t2_p9[5]),
        .O(t3_diff80_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff80_carry__0_i_4
       (.I0(t2_p5[4]),
        .I1(t2_p9[4]),
        .O(t3_diff80_carry__0_i_4_n_0));
  CARRY4 t3_diff80_carry__1
       (.CI(t3_diff80_carry__0_n_0),
        .CO(NLW_t3_diff80_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_t3_diff80_carry__1_O_UNCONNECTED[3:1],t3_diff80[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff80_carry_i_1
       (.I0(t2_p5[3]),
        .I1(t2_p9[3]),
        .O(t3_diff80_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff80_carry_i_2
       (.I0(t2_p5[2]),
        .I1(t2_p9[2]),
        .O(t3_diff80_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff80_carry_i_3
       (.I0(t2_p5[1]),
        .I1(t2_p9[1]),
        .O(t3_diff80_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    t3_diff80_carry_i_4
       (.I0(t2_p5[0]),
        .I1(t2_p9[0]),
        .O(t3_diff80_carry_i_4_n_0));
  FDCE \t3_diff8_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff80[0]),
        .Q(\t3_diff8_reg_n_0_[0] ));
  FDCE \t3_diff8_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff80[1]),
        .Q(\t3_diff8_reg_n_0_[1] ));
  FDCE \t3_diff8_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff80[2]),
        .Q(\t3_diff8_reg_n_0_[2] ));
  FDCE \t3_diff8_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff80[3]),
        .Q(\t3_diff8_reg_n_0_[3] ));
  FDCE \t3_diff8_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff80[4]),
        .Q(\t3_diff8_reg_n_0_[4] ));
  FDCE \t3_diff8_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff80[5]),
        .Q(\t3_diff8_reg_n_0_[5] ));
  FDCE \t3_diff8_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff80[6]),
        .Q(\t3_diff8_reg_n_0_[6] ));
  FDCE \t3_diff8_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff80[7]),
        .Q(\t3_diff8_reg_n_0_[7] ));
  FDCE \t3_diff8_reg[8] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(t3_diff80[8]),
        .Q(p_0_in[0]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_max_of_min[0]_i_1 
       (.I0(t2_min1[0]),
        .I1(max2_return20_in),
        .I2(max2_return1),
        .I3(t2_min2[0]),
        .I4(max2_return2),
        .I5(t2_min3[0]),
        .O(max2_return[0]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_max_of_min[1]_i_1 
       (.I0(t2_min1[1]),
        .I1(max2_return20_in),
        .I2(max2_return1),
        .I3(t2_min2[1]),
        .I4(max2_return2),
        .I5(t2_min3[1]),
        .O(max2_return[1]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_max_of_min[2]_i_1 
       (.I0(t2_min1[2]),
        .I1(max2_return20_in),
        .I2(max2_return1),
        .I3(t2_min2[2]),
        .I4(max2_return2),
        .I5(t2_min3[2]),
        .O(max2_return[2]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_max_of_min[3]_i_1 
       (.I0(t2_min1[3]),
        .I1(max2_return20_in),
        .I2(max2_return1),
        .I3(t2_min2[3]),
        .I4(max2_return2),
        .I5(t2_min3[3]),
        .O(max2_return[3]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_max_of_min[4]_i_1 
       (.I0(t2_min1[4]),
        .I1(max2_return20_in),
        .I2(max2_return1),
        .I3(t2_min2[4]),
        .I4(max2_return2),
        .I5(t2_min3[4]),
        .O(max2_return[4]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_max_of_min[5]_i_1 
       (.I0(t2_min1[5]),
        .I1(max2_return20_in),
        .I2(max2_return1),
        .I3(t2_min2[5]),
        .I4(max2_return2),
        .I5(t2_min3[5]),
        .O(max2_return[5]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_max_of_min[6]_i_1 
       (.I0(t2_min1[6]),
        .I1(max2_return20_in),
        .I2(max2_return1),
        .I3(t2_min2[6]),
        .I4(max2_return2),
        .I5(t2_min3[6]),
        .O(max2_return[6]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_max_of_min[7]_i_1 
       (.I0(t2_min1[7]),
        .I1(max2_return20_in),
        .I2(max2_return1),
        .I3(t2_min2[7]),
        .I4(max2_return2),
        .I5(t2_min3[7]),
        .O(max2_return[7]));
  FDCE \t3_max_of_min_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max2_return[0]),
        .Q(\t3_max_of_min_reg_n_0_[0] ));
  FDCE \t3_max_of_min_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max2_return[1]),
        .Q(\t3_max_of_min_reg_n_0_[1] ));
  FDCE \t3_max_of_min_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max2_return[2]),
        .Q(\t3_max_of_min_reg_n_0_[2] ));
  FDCE \t3_max_of_min_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max2_return[3]),
        .Q(\t3_max_of_min_reg_n_0_[3] ));
  FDCE \t3_max_of_min_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max2_return[4]),
        .Q(\t3_max_of_min_reg_n_0_[4] ));
  FDCE \t3_max_of_min_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max2_return[5]),
        .Q(\t3_max_of_min_reg_n_0_[5] ));
  FDCE \t3_max_of_min_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max2_return[6]),
        .Q(\t3_max_of_min_reg_n_0_[6] ));
  FDCE \t3_max_of_min_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(max2_return[7]),
        .Q(\t3_max_of_min_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t3_med_of_med[0]_i_1 
       (.I0(\t3_med_of_med[7]_i_2_n_0 ),
        .I1(t2_med1[0]),
        .I2(\t3_med_of_med[7]_i_3_n_0 ),
        .I3(t2_med3[0]),
        .I4(t2_med2[0]),
        .I5(\t3_med_of_med[7]_i_4_n_0 ),
        .O(med2_return[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t3_med_of_med[1]_i_1 
       (.I0(\t3_med_of_med[7]_i_2_n_0 ),
        .I1(t2_med1[1]),
        .I2(\t3_med_of_med[7]_i_3_n_0 ),
        .I3(t2_med3[1]),
        .I4(t2_med2[1]),
        .I5(\t3_med_of_med[7]_i_4_n_0 ),
        .O(med2_return[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t3_med_of_med[2]_i_1 
       (.I0(\t3_med_of_med[7]_i_2_n_0 ),
        .I1(t2_med1[2]),
        .I2(\t3_med_of_med[7]_i_3_n_0 ),
        .I3(t2_med3[2]),
        .I4(t2_med2[2]),
        .I5(\t3_med_of_med[7]_i_4_n_0 ),
        .O(med2_return[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t3_med_of_med[3]_i_1 
       (.I0(\t3_med_of_med[7]_i_2_n_0 ),
        .I1(t2_med1[3]),
        .I2(\t3_med_of_med[7]_i_3_n_0 ),
        .I3(t2_med3[3]),
        .I4(t2_med2[3]),
        .I5(\t3_med_of_med[7]_i_4_n_0 ),
        .O(med2_return[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t3_med_of_med[4]_i_1 
       (.I0(\t3_med_of_med[7]_i_2_n_0 ),
        .I1(t2_med1[4]),
        .I2(\t3_med_of_med[7]_i_3_n_0 ),
        .I3(t2_med3[4]),
        .I4(t2_med2[4]),
        .I5(\t3_med_of_med[7]_i_4_n_0 ),
        .O(med2_return[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t3_med_of_med[5]_i_1 
       (.I0(\t3_med_of_med[7]_i_2_n_0 ),
        .I1(t2_med1[5]),
        .I2(\t3_med_of_med[7]_i_3_n_0 ),
        .I3(t2_med3[5]),
        .I4(t2_med2[5]),
        .I5(\t3_med_of_med[7]_i_4_n_0 ),
        .O(med2_return[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t3_med_of_med[6]_i_1 
       (.I0(\t3_med_of_med[7]_i_2_n_0 ),
        .I1(t2_med1[6]),
        .I2(\t3_med_of_med[7]_i_3_n_0 ),
        .I3(t2_med3[6]),
        .I4(t2_med2[6]),
        .I5(\t3_med_of_med[7]_i_4_n_0 ),
        .O(med2_return[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t3_med_of_med[7]_i_1 
       (.I0(\t3_med_of_med[7]_i_2_n_0 ),
        .I1(t2_med1[7]),
        .I2(\t3_med_of_med[7]_i_3_n_0 ),
        .I3(t2_med3[7]),
        .I4(t2_med2[7]),
        .I5(\t3_med_of_med[7]_i_4_n_0 ),
        .O(med2_return[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h1010101F)) 
    \t3_med_of_med[7]_i_2 
       (.I0(med2_return21_in),
        .I1(med2_return30_in),
        .I2(med2_return1),
        .I3(med2_return2),
        .I4(med2_return3),
        .O(\t3_med_of_med[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    \t3_med_of_med[7]_i_3 
       (.I0(med2_return30_in),
        .I1(med2_return21_in),
        .I2(med2_return1),
        .I3(med2_return3),
        .I4(med2_return2),
        .O(\t3_med_of_med[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \t3_med_of_med[7]_i_4 
       (.I0(med2_return21_in),
        .I1(med2_return1),
        .I2(med2_return2),
        .O(\t3_med_of_med[7]_i_4_n_0 ));
  FDCE \t3_med_of_med_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med2_return[0]),
        .Q(t3_med_of_med[0]));
  FDCE \t3_med_of_med_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med2_return[1]),
        .Q(t3_med_of_med[1]));
  FDCE \t3_med_of_med_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med2_return[2]),
        .Q(t3_med_of_med[2]));
  FDCE \t3_med_of_med_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med2_return[3]),
        .Q(t3_med_of_med[3]));
  FDCE \t3_med_of_med_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med2_return[4]),
        .Q(t3_med_of_med[4]));
  FDCE \t3_med_of_med_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med2_return[5]),
        .Q(t3_med_of_med[5]));
  FDCE \t3_med_of_med_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med2_return[6]),
        .Q(t3_med_of_med[6]));
  FDCE \t3_med_of_med_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med2_return[7]),
        .Q(t3_med_of_med[7]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_min_of_max[0]_i_1 
       (.I0(a[0]),
        .I1(min2_return20_in),
        .I2(min2_return1),
        .I3(t2_max2[0]),
        .I4(min2_return2),
        .I5(t2_max3[0]),
        .O(min2_return[0]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_min_of_max[1]_i_1 
       (.I0(a[1]),
        .I1(min2_return20_in),
        .I2(min2_return1),
        .I3(t2_max2[1]),
        .I4(min2_return2),
        .I5(t2_max3[1]),
        .O(min2_return[1]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_min_of_max[2]_i_1 
       (.I0(a[2]),
        .I1(min2_return20_in),
        .I2(min2_return1),
        .I3(t2_max2[2]),
        .I4(min2_return2),
        .I5(t2_max3[2]),
        .O(min2_return[2]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_min_of_max[3]_i_1 
       (.I0(a[3]),
        .I1(min2_return20_in),
        .I2(min2_return1),
        .I3(t2_max2[3]),
        .I4(min2_return2),
        .I5(t2_max3[3]),
        .O(min2_return[3]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_min_of_max[4]_i_1 
       (.I0(a[4]),
        .I1(min2_return20_in),
        .I2(min2_return1),
        .I3(t2_max2[4]),
        .I4(min2_return2),
        .I5(t2_max3[4]),
        .O(min2_return[4]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_min_of_max[5]_i_1 
       (.I0(a[5]),
        .I1(min2_return20_in),
        .I2(min2_return1),
        .I3(t2_max2[5]),
        .I4(min2_return2),
        .I5(t2_max3[5]),
        .O(min2_return[5]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_min_of_max[6]_i_1 
       (.I0(a[6]),
        .I1(min2_return20_in),
        .I2(min2_return1),
        .I3(t2_max2[6]),
        .I4(min2_return2),
        .I5(t2_max3[6]),
        .O(min2_return[6]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \t3_min_of_max[7]_i_1 
       (.I0(a[7]),
        .I1(min2_return20_in),
        .I2(min2_return1),
        .I3(t2_max2[7]),
        .I4(min2_return2),
        .I5(t2_max3[7]),
        .O(min2_return[7]));
  FDCE \t3_min_of_max_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(min2_return[0]),
        .Q(t3_min_of_max[0]));
  FDCE \t3_min_of_max_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(min2_return[1]),
        .Q(t3_min_of_max[1]));
  FDCE \t3_min_of_max_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(min2_return[2]),
        .Q(t3_min_of_max[2]));
  FDCE \t3_min_of_max_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(min2_return[3]),
        .Q(t3_min_of_max[3]));
  FDCE \t3_min_of_max_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(min2_return[4]),
        .Q(t3_min_of_max[4]));
  FDCE \t3_min_of_max_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(min2_return[5]),
        .Q(t3_min_of_max[5]));
  FDCE \t3_min_of_max_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(min2_return[6]),
        .Q(t3_min_of_max[6]));
  FDCE \t3_min_of_max_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(min2_return[7]),
        .Q(t3_min_of_max[7]));
  FDCE \t4_center_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(\t3_center_reg_n_0_[0] ),
        .Q(t4_center[0]));
  FDCE \t4_center_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(\t3_center_reg_n_0_[1] ),
        .Q(t4_center[1]));
  FDCE \t4_center_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(\t3_center_reg_n_0_[2] ),
        .Q(t4_center[2]));
  FDCE \t4_center_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(\t3_center_reg_n_0_[3] ),
        .Q(t4_center[3]));
  FDCE \t4_center_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(\t3_center_reg_n_0_[4] ),
        .Q(t4_center[4]));
  FDCE \t4_center_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(\t3_center_reg_n_0_[5] ),
        .Q(t4_center[5]));
  FDCE \t4_center_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(\t3_center_reg_n_0_[6] ),
        .Q(t4_center[6]));
  FDCE \t4_center_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(\t3_center_reg_n_0_[7] ),
        .Q(t4_center[7]));
  LUT4 #(
    .INIT(16'hA00C)) 
    t4_defective_pix_i_1
       (.I0(t4_defective_pix_i_2_n_0),
        .I1(t4_defective_pix_i_3_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(t4_defective_pix_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    t4_defective_pix_i_2
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(t4_defective_pix_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    t4_defective_pix_i_3
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(p_0_in[7]),
        .I5(p_0_in[6]),
        .O(t4_defective_pix_i_3_n_0));
  FDCE t4_defective_pix_reg
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(t4_defective_pix_i_1_n_0),
        .Q(t4_defective_pix));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \t4_diff1[1]_i_1 
       (.I0(\t3_diff1_reg_n_0_[0] ),
        .I1(p_0_in[7]),
        .I2(\t3_diff1_reg_n_0_[1] ),
        .O(\t4_diff1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \t4_diff1[2]_i_1 
       (.I0(\t3_diff1_reg_n_0_[1] ),
        .I1(\t3_diff1_reg_n_0_[0] ),
        .I2(p_0_in[7]),
        .I3(\t3_diff1_reg_n_0_[2] ),
        .O(\t4_diff1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \t4_diff1[3]_i_1 
       (.I0(\t3_diff1_reg_n_0_[2] ),
        .I1(\t3_diff1_reg_n_0_[0] ),
        .I2(\t3_diff1_reg_n_0_[1] ),
        .I3(p_0_in[7]),
        .I4(\t3_diff1_reg_n_0_[3] ),
        .O(\t4_diff1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \t4_diff1[4]_i_1 
       (.I0(\t3_diff1_reg_n_0_[3] ),
        .I1(\t3_diff1_reg_n_0_[1] ),
        .I2(\t3_diff1_reg_n_0_[0] ),
        .I3(\t3_diff1_reg_n_0_[2] ),
        .I4(p_0_in[7]),
        .I5(\t3_diff1_reg_n_0_[4] ),
        .O(\t4_diff1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h4FB0)) 
    \t4_diff1[5]_i_1 
       (.I0(\t3_diff1_reg_n_0_[4] ),
        .I1(\t4_diff1[7]_i_2_n_0 ),
        .I2(p_0_in[7]),
        .I3(\t3_diff1_reg_n_0_[5] ),
        .O(\t4_diff1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \t4_diff1[6]_i_1 
       (.I0(\t4_diff1[7]_i_2_n_0 ),
        .I1(\t3_diff1_reg_n_0_[4] ),
        .I2(\t3_diff1_reg_n_0_[5] ),
        .I3(p_0_in[7]),
        .I4(\t3_diff1_reg_n_0_[6] ),
        .O(\t4_diff1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFD0000)) 
    \t4_diff1[7]_i_1 
       (.I0(\t4_diff1[7]_i_2_n_0 ),
        .I1(\t3_diff1_reg_n_0_[6] ),
        .I2(\t3_diff1_reg_n_0_[5] ),
        .I3(\t3_diff1_reg_n_0_[4] ),
        .I4(p_0_in[7]),
        .I5(\t3_diff1_reg_n_0_[7] ),
        .O(\t4_diff1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \t4_diff1[7]_i_2 
       (.I0(\t3_diff1_reg_n_0_[2] ),
        .I1(\t3_diff1_reg_n_0_[0] ),
        .I2(\t3_diff1_reg_n_0_[1] ),
        .I3(\t3_diff1_reg_n_0_[3] ),
        .O(\t4_diff1[7]_i_2_n_0 ));
  FDCE \t4_diff1_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t3_diff1_reg_n_0_[0] ),
        .Q(t4_diff1[0]));
  FDCE \t4_diff1_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff1[1]_i_1_n_0 ),
        .Q(t4_diff1[1]));
  FDCE \t4_diff1_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff1[2]_i_1_n_0 ),
        .Q(t4_diff1[2]));
  FDCE \t4_diff1_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff1[3]_i_1_n_0 ),
        .Q(t4_diff1[3]));
  FDCE \t4_diff1_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff1[4]_i_1_n_0 ),
        .Q(t4_diff1[4]));
  FDCE \t4_diff1_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff1[5]_i_1_n_0 ),
        .Q(t4_diff1[5]));
  FDCE \t4_diff1_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff1[6]_i_1_n_0 ),
        .Q(t4_diff1[6]));
  FDCE \t4_diff1_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff1[7]_i_1_n_0 ),
        .Q(t4_diff1[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \t4_diff2[1]_i_1 
       (.I0(\t3_diff2_reg_n_0_[0] ),
        .I1(p_0_in[6]),
        .I2(\t3_diff2_reg_n_0_[1] ),
        .O(\t4_diff2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \t4_diff2[2]_i_1 
       (.I0(\t3_diff2_reg_n_0_[1] ),
        .I1(\t3_diff2_reg_n_0_[0] ),
        .I2(p_0_in[6]),
        .I3(\t3_diff2_reg_n_0_[2] ),
        .O(\t4_diff2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \t4_diff2[3]_i_1 
       (.I0(\t3_diff2_reg_n_0_[2] ),
        .I1(\t3_diff2_reg_n_0_[0] ),
        .I2(\t3_diff2_reg_n_0_[1] ),
        .I3(p_0_in[6]),
        .I4(\t3_diff2_reg_n_0_[3] ),
        .O(\t4_diff2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \t4_diff2[4]_i_1 
       (.I0(\t3_diff2_reg_n_0_[3] ),
        .I1(\t3_diff2_reg_n_0_[1] ),
        .I2(\t3_diff2_reg_n_0_[0] ),
        .I3(\t3_diff2_reg_n_0_[2] ),
        .I4(p_0_in[6]),
        .I5(\t3_diff2_reg_n_0_[4] ),
        .O(\t4_diff2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4FB0)) 
    \t4_diff2[5]_i_1 
       (.I0(\t3_diff2_reg_n_0_[4] ),
        .I1(\t4_diff2[7]_i_2_n_0 ),
        .I2(p_0_in[6]),
        .I3(\t3_diff2_reg_n_0_[5] ),
        .O(\t4_diff2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \t4_diff2[6]_i_1 
       (.I0(\t4_diff2[7]_i_2_n_0 ),
        .I1(\t3_diff2_reg_n_0_[4] ),
        .I2(\t3_diff2_reg_n_0_[5] ),
        .I3(p_0_in[6]),
        .I4(\t3_diff2_reg_n_0_[6] ),
        .O(\t4_diff2[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFD0000)) 
    \t4_diff2[7]_i_1 
       (.I0(\t4_diff2[7]_i_2_n_0 ),
        .I1(\t3_diff2_reg_n_0_[6] ),
        .I2(\t3_diff2_reg_n_0_[5] ),
        .I3(\t3_diff2_reg_n_0_[4] ),
        .I4(p_0_in[6]),
        .I5(\t3_diff2_reg_n_0_[7] ),
        .O(\t4_diff2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \t4_diff2[7]_i_2 
       (.I0(\t3_diff2_reg_n_0_[2] ),
        .I1(\t3_diff2_reg_n_0_[0] ),
        .I2(\t3_diff2_reg_n_0_[1] ),
        .I3(\t3_diff2_reg_n_0_[3] ),
        .O(\t4_diff2[7]_i_2_n_0 ));
  FDCE \t4_diff2_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t3_diff2_reg_n_0_[0] ),
        .Q(t4_diff2[0]));
  FDCE \t4_diff2_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff2[1]_i_1_n_0 ),
        .Q(t4_diff2[1]));
  FDCE \t4_diff2_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff2[2]_i_1_n_0 ),
        .Q(t4_diff2[2]));
  FDCE \t4_diff2_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff2[3]_i_1_n_0 ),
        .Q(t4_diff2[3]));
  FDCE \t4_diff2_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff2[4]_i_1_n_0 ),
        .Q(t4_diff2[4]));
  FDCE \t4_diff2_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff2[5]_i_1_n_0 ),
        .Q(t4_diff2[5]));
  FDCE \t4_diff2_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff2[6]_i_1_n_0 ),
        .Q(t4_diff2[6]));
  FDCE \t4_diff2_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff2[7]_i_1_n_0 ),
        .Q(t4_diff2[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \t4_diff3[1]_i_1 
       (.I0(\t3_diff3_reg_n_0_[0] ),
        .I1(p_0_in[5]),
        .I2(\t3_diff3_reg_n_0_[1] ),
        .O(\t4_diff3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \t4_diff3[2]_i_1 
       (.I0(\t3_diff3_reg_n_0_[1] ),
        .I1(\t3_diff3_reg_n_0_[0] ),
        .I2(p_0_in[5]),
        .I3(\t3_diff3_reg_n_0_[2] ),
        .O(\t4_diff3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \t4_diff3[3]_i_1 
       (.I0(\t3_diff3_reg_n_0_[2] ),
        .I1(\t3_diff3_reg_n_0_[0] ),
        .I2(\t3_diff3_reg_n_0_[1] ),
        .I3(p_0_in[5]),
        .I4(\t3_diff3_reg_n_0_[3] ),
        .O(\t4_diff3[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \t4_diff3[4]_i_1 
       (.I0(\t3_diff3_reg_n_0_[3] ),
        .I1(\t3_diff3_reg_n_0_[1] ),
        .I2(\t3_diff3_reg_n_0_[0] ),
        .I3(\t3_diff3_reg_n_0_[2] ),
        .I4(p_0_in[5]),
        .I5(\t3_diff3_reg_n_0_[4] ),
        .O(\t4_diff3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h4FB0)) 
    \t4_diff3[5]_i_1 
       (.I0(\t3_diff3_reg_n_0_[4] ),
        .I1(\t4_diff3[7]_i_2_n_0 ),
        .I2(p_0_in[5]),
        .I3(\t3_diff3_reg_n_0_[5] ),
        .O(\t4_diff3[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \t4_diff3[6]_i_1 
       (.I0(\t4_diff3[7]_i_2_n_0 ),
        .I1(\t3_diff3_reg_n_0_[4] ),
        .I2(\t3_diff3_reg_n_0_[5] ),
        .I3(p_0_in[5]),
        .I4(\t3_diff3_reg_n_0_[6] ),
        .O(\t4_diff3[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFD0000)) 
    \t4_diff3[7]_i_1 
       (.I0(\t4_diff3[7]_i_2_n_0 ),
        .I1(\t3_diff3_reg_n_0_[6] ),
        .I2(\t3_diff3_reg_n_0_[5] ),
        .I3(\t3_diff3_reg_n_0_[4] ),
        .I4(p_0_in[5]),
        .I5(\t3_diff3_reg_n_0_[7] ),
        .O(\t4_diff3[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \t4_diff3[7]_i_2 
       (.I0(\t3_diff3_reg_n_0_[2] ),
        .I1(\t3_diff3_reg_n_0_[0] ),
        .I2(\t3_diff3_reg_n_0_[1] ),
        .I3(\t3_diff3_reg_n_0_[3] ),
        .O(\t4_diff3[7]_i_2_n_0 ));
  FDCE \t4_diff3_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t3_diff3_reg_n_0_[0] ),
        .Q(t4_diff3[0]));
  FDCE \t4_diff3_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff3[1]_i_1_n_0 ),
        .Q(t4_diff3[1]));
  FDCE \t4_diff3_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff3[2]_i_1_n_0 ),
        .Q(t4_diff3[2]));
  FDCE \t4_diff3_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff3[3]_i_1_n_0 ),
        .Q(t4_diff3[3]));
  FDCE \t4_diff3_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff3[4]_i_1_n_0 ),
        .Q(t4_diff3[4]));
  FDCE \t4_diff3_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff3[5]_i_1_n_0 ),
        .Q(t4_diff3[5]));
  FDCE \t4_diff3_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff3[6]_i_1_n_0 ),
        .Q(t4_diff3[6]));
  FDCE \t4_diff3_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff3[7]_i_1_n_0 ),
        .Q(t4_diff3[7]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \t4_diff4[1]_i_1 
       (.I0(\t3_diff4_reg_n_0_[0] ),
        .I1(p_0_in[4]),
        .I2(\t3_diff4_reg_n_0_[1] ),
        .O(\t4_diff4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \t4_diff4[2]_i_1 
       (.I0(\t3_diff4_reg_n_0_[1] ),
        .I1(\t3_diff4_reg_n_0_[0] ),
        .I2(p_0_in[4]),
        .I3(\t3_diff4_reg_n_0_[2] ),
        .O(\t4_diff4[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \t4_diff4[3]_i_1 
       (.I0(\t3_diff4_reg_n_0_[2] ),
        .I1(\t3_diff4_reg_n_0_[0] ),
        .I2(\t3_diff4_reg_n_0_[1] ),
        .I3(p_0_in[4]),
        .I4(\t3_diff4_reg_n_0_[3] ),
        .O(\t4_diff4[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \t4_diff4[4]_i_1 
       (.I0(\t3_diff4_reg_n_0_[3] ),
        .I1(\t3_diff4_reg_n_0_[1] ),
        .I2(\t3_diff4_reg_n_0_[0] ),
        .I3(\t3_diff4_reg_n_0_[2] ),
        .I4(p_0_in[4]),
        .I5(\t3_diff4_reg_n_0_[4] ),
        .O(\t4_diff4[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4FB0)) 
    \t4_diff4[5]_i_1 
       (.I0(\t3_diff4_reg_n_0_[4] ),
        .I1(\t4_diff4[7]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\t3_diff4_reg_n_0_[5] ),
        .O(\t4_diff4[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \t4_diff4[6]_i_1 
       (.I0(\t4_diff4[7]_i_2_n_0 ),
        .I1(\t3_diff4_reg_n_0_[4] ),
        .I2(\t3_diff4_reg_n_0_[5] ),
        .I3(p_0_in[4]),
        .I4(\t3_diff4_reg_n_0_[6] ),
        .O(\t4_diff4[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFD0000)) 
    \t4_diff4[7]_i_1 
       (.I0(\t4_diff4[7]_i_2_n_0 ),
        .I1(\t3_diff4_reg_n_0_[6] ),
        .I2(\t3_diff4_reg_n_0_[5] ),
        .I3(\t3_diff4_reg_n_0_[4] ),
        .I4(p_0_in[4]),
        .I5(\t3_diff4_reg_n_0_[7] ),
        .O(\t4_diff4[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \t4_diff4[7]_i_2 
       (.I0(\t3_diff4_reg_n_0_[2] ),
        .I1(\t3_diff4_reg_n_0_[0] ),
        .I2(\t3_diff4_reg_n_0_[1] ),
        .I3(\t3_diff4_reg_n_0_[3] ),
        .O(\t4_diff4[7]_i_2_n_0 ));
  FDCE \t4_diff4_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t3_diff4_reg_n_0_[0] ),
        .Q(t4_diff4[0]));
  FDCE \t4_diff4_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff4[1]_i_1_n_0 ),
        .Q(t4_diff4[1]));
  FDCE \t4_diff4_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff4[2]_i_1_n_0 ),
        .Q(t4_diff4[2]));
  FDCE \t4_diff4_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff4[3]_i_1_n_0 ),
        .Q(t4_diff4[3]));
  FDCE \t4_diff4_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff4[4]_i_1_n_0 ),
        .Q(t4_diff4[4]));
  FDCE \t4_diff4_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff4[5]_i_1_n_0 ),
        .Q(t4_diff4[5]));
  FDCE \t4_diff4_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff4[6]_i_1_n_0 ),
        .Q(t4_diff4[6]));
  FDCE \t4_diff4_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff4[7]_i_1_n_0 ),
        .Q(t4_diff4[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \t4_diff5[1]_i_1 
       (.I0(\t3_diff5_reg_n_0_[0] ),
        .I1(p_0_in[3]),
        .I2(\t3_diff5_reg_n_0_[1] ),
        .O(\t4_diff5[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \t4_diff5[2]_i_1 
       (.I0(\t3_diff5_reg_n_0_[1] ),
        .I1(\t3_diff5_reg_n_0_[0] ),
        .I2(p_0_in[3]),
        .I3(\t3_diff5_reg_n_0_[2] ),
        .O(\t4_diff5[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \t4_diff5[3]_i_1 
       (.I0(\t3_diff5_reg_n_0_[2] ),
        .I1(\t3_diff5_reg_n_0_[0] ),
        .I2(\t3_diff5_reg_n_0_[1] ),
        .I3(p_0_in[3]),
        .I4(\t3_diff5_reg_n_0_[3] ),
        .O(\t4_diff5[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \t4_diff5[4]_i_1 
       (.I0(\t3_diff5_reg_n_0_[3] ),
        .I1(\t3_diff5_reg_n_0_[1] ),
        .I2(\t3_diff5_reg_n_0_[0] ),
        .I3(\t3_diff5_reg_n_0_[2] ),
        .I4(p_0_in[3]),
        .I5(\t3_diff5_reg_n_0_[4] ),
        .O(\t4_diff5[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h4FB0)) 
    \t4_diff5[5]_i_1 
       (.I0(\t3_diff5_reg_n_0_[4] ),
        .I1(\t4_diff5[7]_i_2_n_0 ),
        .I2(p_0_in[3]),
        .I3(\t3_diff5_reg_n_0_[5] ),
        .O(\t4_diff5[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \t4_diff5[6]_i_1 
       (.I0(\t4_diff5[7]_i_2_n_0 ),
        .I1(\t3_diff5_reg_n_0_[4] ),
        .I2(\t3_diff5_reg_n_0_[5] ),
        .I3(p_0_in[3]),
        .I4(\t3_diff5_reg_n_0_[6] ),
        .O(\t4_diff5[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFD0000)) 
    \t4_diff5[7]_i_1 
       (.I0(\t4_diff5[7]_i_2_n_0 ),
        .I1(\t3_diff5_reg_n_0_[6] ),
        .I2(\t3_diff5_reg_n_0_[5] ),
        .I3(\t3_diff5_reg_n_0_[4] ),
        .I4(p_0_in[3]),
        .I5(\t3_diff5_reg_n_0_[7] ),
        .O(\t4_diff5[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \t4_diff5[7]_i_2 
       (.I0(\t3_diff5_reg_n_0_[2] ),
        .I1(\t3_diff5_reg_n_0_[0] ),
        .I2(\t3_diff5_reg_n_0_[1] ),
        .I3(\t3_diff5_reg_n_0_[3] ),
        .O(\t4_diff5[7]_i_2_n_0 ));
  FDCE \t4_diff5_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t3_diff5_reg_n_0_[0] ),
        .Q(t4_diff5[0]));
  FDCE \t4_diff5_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff5[1]_i_1_n_0 ),
        .Q(t4_diff5[1]));
  FDCE \t4_diff5_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff5[2]_i_1_n_0 ),
        .Q(t4_diff5[2]));
  FDCE \t4_diff5_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff5[3]_i_1_n_0 ),
        .Q(t4_diff5[3]));
  FDCE \t4_diff5_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff5[4]_i_1_n_0 ),
        .Q(t4_diff5[4]));
  FDCE \t4_diff5_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff5[5]_i_1_n_0 ),
        .Q(t4_diff5[5]));
  FDCE \t4_diff5_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff5[6]_i_1_n_0 ),
        .Q(t4_diff5[6]));
  FDCE \t4_diff5_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff5[7]_i_1_n_0 ),
        .Q(t4_diff5[7]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \t4_diff6[1]_i_1 
       (.I0(\t3_diff6_reg_n_0_[0] ),
        .I1(p_0_in[2]),
        .I2(\t3_diff6_reg_n_0_[1] ),
        .O(\t4_diff6[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \t4_diff6[2]_i_1 
       (.I0(\t3_diff6_reg_n_0_[1] ),
        .I1(\t3_diff6_reg_n_0_[0] ),
        .I2(p_0_in[2]),
        .I3(\t3_diff6_reg_n_0_[2] ),
        .O(\t4_diff6[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \t4_diff6[3]_i_1 
       (.I0(\t3_diff6_reg_n_0_[2] ),
        .I1(\t3_diff6_reg_n_0_[0] ),
        .I2(\t3_diff6_reg_n_0_[1] ),
        .I3(p_0_in[2]),
        .I4(\t3_diff6_reg_n_0_[3] ),
        .O(\t4_diff6[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \t4_diff6[4]_i_1 
       (.I0(\t3_diff6_reg_n_0_[3] ),
        .I1(\t3_diff6_reg_n_0_[1] ),
        .I2(\t3_diff6_reg_n_0_[0] ),
        .I3(\t3_diff6_reg_n_0_[2] ),
        .I4(p_0_in[2]),
        .I5(\t3_diff6_reg_n_0_[4] ),
        .O(\t4_diff6[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h4FB0)) 
    \t4_diff6[5]_i_1 
       (.I0(\t3_diff6_reg_n_0_[4] ),
        .I1(\t4_diff6[7]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(\t3_diff6_reg_n_0_[5] ),
        .O(\t4_diff6[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \t4_diff6[6]_i_1 
       (.I0(\t4_diff6[7]_i_2_n_0 ),
        .I1(\t3_diff6_reg_n_0_[4] ),
        .I2(\t3_diff6_reg_n_0_[5] ),
        .I3(p_0_in[2]),
        .I4(\t3_diff6_reg_n_0_[6] ),
        .O(\t4_diff6[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFD0000)) 
    \t4_diff6[7]_i_1 
       (.I0(\t4_diff6[7]_i_2_n_0 ),
        .I1(\t3_diff6_reg_n_0_[6] ),
        .I2(\t3_diff6_reg_n_0_[5] ),
        .I3(\t3_diff6_reg_n_0_[4] ),
        .I4(p_0_in[2]),
        .I5(\t3_diff6_reg_n_0_[7] ),
        .O(\t4_diff6[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \t4_diff6[7]_i_2 
       (.I0(\t3_diff6_reg_n_0_[2] ),
        .I1(\t3_diff6_reg_n_0_[0] ),
        .I2(\t3_diff6_reg_n_0_[1] ),
        .I3(\t3_diff6_reg_n_0_[3] ),
        .O(\t4_diff6[7]_i_2_n_0 ));
  FDCE \t4_diff6_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t3_diff6_reg_n_0_[0] ),
        .Q(t4_diff6[0]));
  FDCE \t4_diff6_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff6[1]_i_1_n_0 ),
        .Q(t4_diff6[1]));
  FDCE \t4_diff6_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff6[2]_i_1_n_0 ),
        .Q(t4_diff6[2]));
  FDCE \t4_diff6_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff6[3]_i_1_n_0 ),
        .Q(t4_diff6[3]));
  FDCE \t4_diff6_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff6[4]_i_1_n_0 ),
        .Q(t4_diff6[4]));
  FDCE \t4_diff6_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff6[5]_i_1_n_0 ),
        .Q(t4_diff6[5]));
  FDCE \t4_diff6_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff6[6]_i_1_n_0 ),
        .Q(t4_diff6[6]));
  FDCE \t4_diff6_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff6[7]_i_1_n_0 ),
        .Q(t4_diff6[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \t4_diff7[1]_i_1 
       (.I0(\t3_diff7_reg_n_0_[0] ),
        .I1(p_0_in[1]),
        .I2(\t3_diff7_reg_n_0_[1] ),
        .O(\t4_diff7[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \t4_diff7[2]_i_1 
       (.I0(\t3_diff7_reg_n_0_[1] ),
        .I1(\t3_diff7_reg_n_0_[0] ),
        .I2(p_0_in[1]),
        .I3(\t3_diff7_reg_n_0_[2] ),
        .O(\t4_diff7[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \t4_diff7[3]_i_1 
       (.I0(\t3_diff7_reg_n_0_[2] ),
        .I1(\t3_diff7_reg_n_0_[0] ),
        .I2(\t3_diff7_reg_n_0_[1] ),
        .I3(p_0_in[1]),
        .I4(\t3_diff7_reg_n_0_[3] ),
        .O(\t4_diff7[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \t4_diff7[4]_i_1 
       (.I0(\t3_diff7_reg_n_0_[3] ),
        .I1(\t3_diff7_reg_n_0_[1] ),
        .I2(\t3_diff7_reg_n_0_[0] ),
        .I3(\t3_diff7_reg_n_0_[2] ),
        .I4(p_0_in[1]),
        .I5(\t3_diff7_reg_n_0_[4] ),
        .O(\t4_diff7[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4FB0)) 
    \t4_diff7[5]_i_1 
       (.I0(\t3_diff7_reg_n_0_[4] ),
        .I1(\t4_diff7[7]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\t3_diff7_reg_n_0_[5] ),
        .O(\t4_diff7[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \t4_diff7[6]_i_1 
       (.I0(\t4_diff7[7]_i_2_n_0 ),
        .I1(\t3_diff7_reg_n_0_[4] ),
        .I2(\t3_diff7_reg_n_0_[5] ),
        .I3(p_0_in[1]),
        .I4(\t3_diff7_reg_n_0_[6] ),
        .O(\t4_diff7[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFD0000)) 
    \t4_diff7[7]_i_1 
       (.I0(\t4_diff7[7]_i_2_n_0 ),
        .I1(\t3_diff7_reg_n_0_[6] ),
        .I2(\t3_diff7_reg_n_0_[5] ),
        .I3(\t3_diff7_reg_n_0_[4] ),
        .I4(p_0_in[1]),
        .I5(\t3_diff7_reg_n_0_[7] ),
        .O(\t4_diff7[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \t4_diff7[7]_i_2 
       (.I0(\t3_diff7_reg_n_0_[2] ),
        .I1(\t3_diff7_reg_n_0_[0] ),
        .I2(\t3_diff7_reg_n_0_[1] ),
        .I3(\t3_diff7_reg_n_0_[3] ),
        .O(\t4_diff7[7]_i_2_n_0 ));
  FDCE \t4_diff7_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t3_diff7_reg_n_0_[0] ),
        .Q(t4_diff7[0]));
  FDCE \t4_diff7_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff7[1]_i_1_n_0 ),
        .Q(t4_diff7[1]));
  FDCE \t4_diff7_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff7[2]_i_1_n_0 ),
        .Q(t4_diff7[2]));
  FDCE \t4_diff7_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff7[3]_i_1_n_0 ),
        .Q(t4_diff7[3]));
  FDCE \t4_diff7_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff7[4]_i_1_n_0 ),
        .Q(t4_diff7[4]));
  FDCE \t4_diff7_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff7[5]_i_1_n_0 ),
        .Q(t4_diff7[5]));
  FDCE \t4_diff7_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff7[6]_i_1_n_0 ),
        .Q(t4_diff7[6]));
  FDCE \t4_diff7_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff7[7]_i_1_n_0 ),
        .Q(t4_diff7[7]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \t4_diff8[1]_i_1 
       (.I0(\t3_diff8_reg_n_0_[0] ),
        .I1(p_0_in[0]),
        .I2(\t3_diff8_reg_n_0_[1] ),
        .O(\t4_diff8[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \t4_diff8[2]_i_1 
       (.I0(\t3_diff8_reg_n_0_[1] ),
        .I1(\t3_diff8_reg_n_0_[0] ),
        .I2(p_0_in[0]),
        .I3(\t3_diff8_reg_n_0_[2] ),
        .O(\t4_diff8[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \t4_diff8[3]_i_1 
       (.I0(\t3_diff8_reg_n_0_[2] ),
        .I1(\t3_diff8_reg_n_0_[0] ),
        .I2(\t3_diff8_reg_n_0_[1] ),
        .I3(p_0_in[0]),
        .I4(\t3_diff8_reg_n_0_[3] ),
        .O(\t4_diff8[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \t4_diff8[4]_i_1 
       (.I0(\t3_diff8_reg_n_0_[3] ),
        .I1(\t3_diff8_reg_n_0_[1] ),
        .I2(\t3_diff8_reg_n_0_[0] ),
        .I3(\t3_diff8_reg_n_0_[2] ),
        .I4(p_0_in[0]),
        .I5(\t3_diff8_reg_n_0_[4] ),
        .O(\t4_diff8[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4FB0)) 
    \t4_diff8[5]_i_1 
       (.I0(\t3_diff8_reg_n_0_[4] ),
        .I1(\t4_diff8[7]_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(\t3_diff8_reg_n_0_[5] ),
        .O(\t4_diff8[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \t4_diff8[6]_i_1 
       (.I0(\t4_diff8[7]_i_2_n_0 ),
        .I1(\t3_diff8_reg_n_0_[4] ),
        .I2(\t3_diff8_reg_n_0_[5] ),
        .I3(p_0_in[0]),
        .I4(\t3_diff8_reg_n_0_[6] ),
        .O(\t4_diff8[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFD0000)) 
    \t4_diff8[7]_i_1 
       (.I0(\t4_diff8[7]_i_2_n_0 ),
        .I1(\t3_diff8_reg_n_0_[6] ),
        .I2(\t3_diff8_reg_n_0_[5] ),
        .I3(\t3_diff8_reg_n_0_[4] ),
        .I4(p_0_in[0]),
        .I5(\t3_diff8_reg_n_0_[7] ),
        .O(\t4_diff8[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \t4_diff8[7]_i_2 
       (.I0(\t3_diff8_reg_n_0_[2] ),
        .I1(\t3_diff8_reg_n_0_[0] ),
        .I2(\t3_diff8_reg_n_0_[1] ),
        .I3(\t3_diff8_reg_n_0_[3] ),
        .O(\t4_diff8[7]_i_2_n_0 ));
  FDCE \t4_diff8_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t3_diff8_reg_n_0_[0] ),
        .Q(t4_diff8[0]));
  FDCE \t4_diff8_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t3_diff4_reg[0]_0 ),
        .D(\t4_diff8[1]_i_1_n_0 ),
        .Q(t4_diff8[1]));
  FDCE \t4_diff8_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff8[2]_i_1_n_0 ),
        .Q(t4_diff8[2]));
  FDCE \t4_diff8_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff8[3]_i_1_n_0 ),
        .Q(t4_diff8[3]));
  FDCE \t4_diff8_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff8[4]_i_1_n_0 ),
        .Q(t4_diff8[4]));
  FDCE \t4_diff8_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff8[5]_i_1_n_0 ),
        .Q(t4_diff8[5]));
  FDCE \t4_diff8_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff8[6]_i_1_n_0 ),
        .Q(t4_diff8[6]));
  FDCE \t4_diff8_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t4_diff8[7]_i_1_n_0 ),
        .Q(t4_diff8[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t4_medium[0]_i_1 
       (.I0(\t4_medium[7]_i_2_n_0 ),
        .I1(\t3_max_of_min_reg_n_0_[0] ),
        .I2(\t4_medium[7]_i_3_n_0 ),
        .I3(t3_min_of_max[0]),
        .I4(t3_med_of_med[0]),
        .I5(\t4_medium[7]_i_4_n_0 ),
        .O(med3_return[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t4_medium[1]_i_1 
       (.I0(\t4_medium[7]_i_2_n_0 ),
        .I1(\t3_max_of_min_reg_n_0_[1] ),
        .I2(\t4_medium[7]_i_3_n_0 ),
        .I3(t3_min_of_max[1]),
        .I4(t3_med_of_med[1]),
        .I5(\t4_medium[7]_i_4_n_0 ),
        .O(med3_return[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t4_medium[2]_i_1 
       (.I0(\t4_medium[7]_i_2_n_0 ),
        .I1(\t3_max_of_min_reg_n_0_[2] ),
        .I2(\t4_medium[7]_i_3_n_0 ),
        .I3(t3_min_of_max[2]),
        .I4(t3_med_of_med[2]),
        .I5(\t4_medium[7]_i_4_n_0 ),
        .O(med3_return[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t4_medium[3]_i_1 
       (.I0(\t4_medium[7]_i_2_n_0 ),
        .I1(\t3_max_of_min_reg_n_0_[3] ),
        .I2(\t4_medium[7]_i_3_n_0 ),
        .I3(t3_min_of_max[3]),
        .I4(t3_med_of_med[3]),
        .I5(\t4_medium[7]_i_4_n_0 ),
        .O(med3_return[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t4_medium[4]_i_1 
       (.I0(\t4_medium[7]_i_2_n_0 ),
        .I1(\t3_max_of_min_reg_n_0_[4] ),
        .I2(\t4_medium[7]_i_3_n_0 ),
        .I3(t3_min_of_max[4]),
        .I4(t3_med_of_med[4]),
        .I5(\t4_medium[7]_i_4_n_0 ),
        .O(med3_return[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t4_medium[5]_i_1 
       (.I0(\t4_medium[7]_i_2_n_0 ),
        .I1(\t3_max_of_min_reg_n_0_[5] ),
        .I2(\t4_medium[7]_i_3_n_0 ),
        .I3(t3_min_of_max[5]),
        .I4(t3_med_of_med[5]),
        .I5(\t4_medium[7]_i_4_n_0 ),
        .O(med3_return[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t4_medium[6]_i_1 
       (.I0(\t4_medium[7]_i_2_n_0 ),
        .I1(\t3_max_of_min_reg_n_0_[6] ),
        .I2(\t4_medium[7]_i_3_n_0 ),
        .I3(t3_min_of_max[6]),
        .I4(t3_med_of_med[6]),
        .I5(\t4_medium[7]_i_4_n_0 ),
        .O(med3_return[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \t4_medium[7]_i_1 
       (.I0(\t4_medium[7]_i_2_n_0 ),
        .I1(\t3_max_of_min_reg_n_0_[7] ),
        .I2(\t4_medium[7]_i_3_n_0 ),
        .I3(t3_min_of_max[7]),
        .I4(t3_med_of_med[7]),
        .I5(\t4_medium[7]_i_4_n_0 ),
        .O(med3_return[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h1010101F)) 
    \t4_medium[7]_i_2 
       (.I0(med3_return21_in),
        .I1(med3_return30_in),
        .I2(med3_return1),
        .I3(med3_return2),
        .I4(med3_return3),
        .O(\t4_medium[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    \t4_medium[7]_i_3 
       (.I0(med3_return30_in),
        .I1(med3_return21_in),
        .I2(med3_return1),
        .I3(med3_return3),
        .I4(med3_return2),
        .O(\t4_medium[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \t4_medium[7]_i_4 
       (.I0(med3_return21_in),
        .I1(med3_return1),
        .I2(med3_return2),
        .O(\t4_medium[7]_i_4_n_0 ));
  FDCE \t4_medium_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med3_return[0]),
        .Q(t4_medium[0]));
  FDCE \t4_medium_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med3_return[1]),
        .Q(t4_medium[1]));
  FDCE \t4_medium_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med3_return[2]),
        .Q(t4_medium[2]));
  FDCE \t4_medium_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med3_return[3]),
        .Q(t4_medium[3]));
  FDCE \t4_medium_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med3_return[4]),
        .Q(t4_medium[4]));
  FDCE \t4_medium_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med3_return[5]),
        .Q(t4_medium[5]));
  FDCE \t4_medium_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med3_return[6]),
        .Q(t4_medium[6]));
  FDCE \t4_medium_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(med3_return[7]),
        .Q(t4_medium[7]));
  FDCE \t5_center_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(t4_center[0]),
        .Q(t5_center[0]));
  FDCE \t5_center_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(t4_center[1]),
        .Q(t5_center[1]));
  FDCE \t5_center_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t4_center[2]),
        .Q(t5_center[2]));
  FDCE \t5_center_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\max_y_index_int_reg[10]_0 ),
        .D(t4_center[3]),
        .Q(t5_center[3]));
  FDCE \t5_center_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t4_center[4]),
        .Q(t5_center[4]));
  FDCE \t5_center_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t4_center[5]),
        .Q(t5_center[5]));
  FDCE \t5_center_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t4_center[6]),
        .Q(t5_center[6]));
  FDCE \t5_center_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\shift_x_index_int_reg[0] ),
        .D(t4_center[7]),
        .Q(t5_center[7]));
  CARRY4 t5_defective_pix1_carry
       (.CI(1'b0),
        .CO({t5_defective_pix1_carry_n_0,t5_defective_pix1_carry_n_1,t5_defective_pix1_carry_n_2,t5_defective_pix1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({t5_defective_pix1_carry_i_1_n_0,t4_diff8[5],t4_diff8[3],t5_defective_pix1_carry_i_2_n_0}),
        .O(NLW_t5_defective_pix1_carry_O_UNCONNECTED[3:0]),
        .S({t5_defective_pix1_carry_i_3_n_0,t5_defective_pix1_carry_i_4_n_0,t5_defective_pix1_carry_i_5_n_0,t5_defective_pix1_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix1_carry_i_1
       (.I0(t4_diff8[6]),
        .I1(t4_diff8[7]),
        .O(t5_defective_pix1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix1_carry_i_2
       (.I0(t4_diff8[0]),
        .I1(t4_diff8[1]),
        .O(t5_defective_pix1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix1_carry_i_3
       (.I0(t4_diff8[6]),
        .I1(t4_diff8[7]),
        .O(t5_defective_pix1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix1_carry_i_4
       (.I0(t4_diff8[4]),
        .I1(t4_diff8[5]),
        .O(t5_defective_pix1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix1_carry_i_5
       (.I0(t4_diff8[2]),
        .I1(t4_diff8[3]),
        .O(t5_defective_pix1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix1_carry_i_6
       (.I0(t4_diff8[0]),
        .I1(t4_diff8[1]),
        .O(t5_defective_pix1_carry_i_6_n_0));
  CARRY4 t5_defective_pix2_carry
       (.CI(1'b0),
        .CO({t5_defective_pix2_carry_n_0,t5_defective_pix2_carry_n_1,t5_defective_pix2_carry_n_2,t5_defective_pix2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({t5_defective_pix2_carry_i_1_n_0,t4_diff7[5],t4_diff7[3],t5_defective_pix2_carry_i_2_n_0}),
        .O(NLW_t5_defective_pix2_carry_O_UNCONNECTED[3:0]),
        .S({t5_defective_pix2_carry_i_3_n_0,t5_defective_pix2_carry_i_4_n_0,t5_defective_pix2_carry_i_5_n_0,t5_defective_pix2_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix2_carry_i_1
       (.I0(t4_diff7[6]),
        .I1(t4_diff7[7]),
        .O(t5_defective_pix2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix2_carry_i_2
       (.I0(t4_diff7[0]),
        .I1(t4_diff7[1]),
        .O(t5_defective_pix2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix2_carry_i_3
       (.I0(t4_diff7[6]),
        .I1(t4_diff7[7]),
        .O(t5_defective_pix2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix2_carry_i_4
       (.I0(t4_diff7[4]),
        .I1(t4_diff7[5]),
        .O(t5_defective_pix2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix2_carry_i_5
       (.I0(t4_diff7[2]),
        .I1(t4_diff7[3]),
        .O(t5_defective_pix2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix2_carry_i_6
       (.I0(t4_diff7[0]),
        .I1(t4_diff7[1]),
        .O(t5_defective_pix2_carry_i_6_n_0));
  CARRY4 t5_defective_pix3_carry
       (.CI(1'b0),
        .CO({t5_defective_pix3_carry_n_0,t5_defective_pix3_carry_n_1,t5_defective_pix3_carry_n_2,t5_defective_pix3_carry_n_3}),
        .CYINIT(1'b0),
        .DI({t5_defective_pix3_carry_i_1_n_0,t4_diff6[5],t4_diff6[3],t5_defective_pix3_carry_i_2_n_0}),
        .O(NLW_t5_defective_pix3_carry_O_UNCONNECTED[3:0]),
        .S({t5_defective_pix3_carry_i_3_n_0,t5_defective_pix3_carry_i_4_n_0,t5_defective_pix3_carry_i_5_n_0,t5_defective_pix3_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix3_carry_i_1
       (.I0(t4_diff6[6]),
        .I1(t4_diff6[7]),
        .O(t5_defective_pix3_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix3_carry_i_2
       (.I0(t4_diff6[0]),
        .I1(t4_diff6[1]),
        .O(t5_defective_pix3_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix3_carry_i_3
       (.I0(t4_diff6[6]),
        .I1(t4_diff6[7]),
        .O(t5_defective_pix3_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix3_carry_i_4
       (.I0(t4_diff6[4]),
        .I1(t4_diff6[5]),
        .O(t5_defective_pix3_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix3_carry_i_5
       (.I0(t4_diff6[2]),
        .I1(t4_diff6[3]),
        .O(t5_defective_pix3_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix3_carry_i_6
       (.I0(t4_diff6[0]),
        .I1(t4_diff6[1]),
        .O(t5_defective_pix3_carry_i_6_n_0));
  CARRY4 t5_defective_pix4_carry
       (.CI(1'b0),
        .CO({t5_defective_pix4_carry_n_0,t5_defective_pix4_carry_n_1,t5_defective_pix4_carry_n_2,t5_defective_pix4_carry_n_3}),
        .CYINIT(1'b0),
        .DI({t5_defective_pix4_carry_i_1_n_0,t4_diff5[5],t4_diff5[3],t5_defective_pix4_carry_i_2_n_0}),
        .O(NLW_t5_defective_pix4_carry_O_UNCONNECTED[3:0]),
        .S({t5_defective_pix4_carry_i_3_n_0,t5_defective_pix4_carry_i_4_n_0,t5_defective_pix4_carry_i_5_n_0,t5_defective_pix4_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix4_carry_i_1
       (.I0(t4_diff5[6]),
        .I1(t4_diff5[7]),
        .O(t5_defective_pix4_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix4_carry_i_2
       (.I0(t4_diff5[0]),
        .I1(t4_diff5[1]),
        .O(t5_defective_pix4_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix4_carry_i_3
       (.I0(t4_diff5[6]),
        .I1(t4_diff5[7]),
        .O(t5_defective_pix4_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix4_carry_i_4
       (.I0(t4_diff5[4]),
        .I1(t4_diff5[5]),
        .O(t5_defective_pix4_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix4_carry_i_5
       (.I0(t4_diff5[2]),
        .I1(t4_diff5[3]),
        .O(t5_defective_pix4_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix4_carry_i_6
       (.I0(t4_diff5[0]),
        .I1(t4_diff5[1]),
        .O(t5_defective_pix4_carry_i_6_n_0));
  CARRY4 t5_defective_pix5_carry
       (.CI(1'b0),
        .CO({t5_defective_pix5_carry_n_0,t5_defective_pix5_carry_n_1,t5_defective_pix5_carry_n_2,t5_defective_pix5_carry_n_3}),
        .CYINIT(1'b0),
        .DI({t5_defective_pix5_carry_i_1_n_0,t4_diff4[5],t4_diff4[3],t5_defective_pix5_carry_i_2_n_0}),
        .O(NLW_t5_defective_pix5_carry_O_UNCONNECTED[3:0]),
        .S({t5_defective_pix5_carry_i_3_n_0,t5_defective_pix5_carry_i_4_n_0,t5_defective_pix5_carry_i_5_n_0,t5_defective_pix5_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix5_carry_i_1
       (.I0(t4_diff4[6]),
        .I1(t4_diff4[7]),
        .O(t5_defective_pix5_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix5_carry_i_2
       (.I0(t4_diff4[0]),
        .I1(t4_diff4[1]),
        .O(t5_defective_pix5_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix5_carry_i_3
       (.I0(t4_diff4[6]),
        .I1(t4_diff4[7]),
        .O(t5_defective_pix5_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix5_carry_i_4
       (.I0(t4_diff4[4]),
        .I1(t4_diff4[5]),
        .O(t5_defective_pix5_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix5_carry_i_5
       (.I0(t4_diff4[2]),
        .I1(t4_diff4[3]),
        .O(t5_defective_pix5_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix5_carry_i_6
       (.I0(t4_diff4[0]),
        .I1(t4_diff4[1]),
        .O(t5_defective_pix5_carry_i_6_n_0));
  CARRY4 t5_defective_pix6_carry
       (.CI(1'b0),
        .CO({t5_defective_pix6_carry_n_0,t5_defective_pix6_carry_n_1,t5_defective_pix6_carry_n_2,t5_defective_pix6_carry_n_3}),
        .CYINIT(1'b0),
        .DI({t5_defective_pix6_carry_i_1_n_0,t4_diff3[5],t4_diff3[3],t5_defective_pix6_carry_i_2_n_0}),
        .O(NLW_t5_defective_pix6_carry_O_UNCONNECTED[3:0]),
        .S({t5_defective_pix6_carry_i_3_n_0,t5_defective_pix6_carry_i_4_n_0,t5_defective_pix6_carry_i_5_n_0,t5_defective_pix6_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix6_carry_i_1
       (.I0(t4_diff3[6]),
        .I1(t4_diff3[7]),
        .O(t5_defective_pix6_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix6_carry_i_2
       (.I0(t4_diff3[0]),
        .I1(t4_diff3[1]),
        .O(t5_defective_pix6_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix6_carry_i_3
       (.I0(t4_diff3[6]),
        .I1(t4_diff3[7]),
        .O(t5_defective_pix6_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix6_carry_i_4
       (.I0(t4_diff3[4]),
        .I1(t4_diff3[5]),
        .O(t5_defective_pix6_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix6_carry_i_5
       (.I0(t4_diff3[2]),
        .I1(t4_diff3[3]),
        .O(t5_defective_pix6_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix6_carry_i_6
       (.I0(t4_diff3[0]),
        .I1(t4_diff3[1]),
        .O(t5_defective_pix6_carry_i_6_n_0));
  CARRY4 t5_defective_pix7_carry
       (.CI(1'b0),
        .CO({t5_defective_pix7_carry_n_0,t5_defective_pix7_carry_n_1,t5_defective_pix7_carry_n_2,t5_defective_pix7_carry_n_3}),
        .CYINIT(1'b0),
        .DI({t5_defective_pix7_carry_i_1_n_0,t4_diff2[5],t4_diff2[3],t5_defective_pix7_carry_i_2_n_0}),
        .O(NLW_t5_defective_pix7_carry_O_UNCONNECTED[3:0]),
        .S({t5_defective_pix7_carry_i_3_n_0,t5_defective_pix7_carry_i_4_n_0,t5_defective_pix7_carry_i_5_n_0,t5_defective_pix7_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix7_carry_i_1
       (.I0(t4_diff2[6]),
        .I1(t4_diff2[7]),
        .O(t5_defective_pix7_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix7_carry_i_2
       (.I0(t4_diff2[0]),
        .I1(t4_diff2[1]),
        .O(t5_defective_pix7_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix7_carry_i_3
       (.I0(t4_diff2[6]),
        .I1(t4_diff2[7]),
        .O(t5_defective_pix7_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix7_carry_i_4
       (.I0(t4_diff2[4]),
        .I1(t4_diff2[5]),
        .O(t5_defective_pix7_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix7_carry_i_5
       (.I0(t4_diff2[2]),
        .I1(t4_diff2[3]),
        .O(t5_defective_pix7_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix7_carry_i_6
       (.I0(t4_diff2[0]),
        .I1(t4_diff2[1]),
        .O(t5_defective_pix7_carry_i_6_n_0));
  CARRY4 t5_defective_pix8_carry
       (.CI(1'b0),
        .CO({t5_defective_pix8_carry_n_0,t5_defective_pix8_carry_n_1,t5_defective_pix8_carry_n_2,t5_defective_pix8_carry_n_3}),
        .CYINIT(1'b0),
        .DI({t5_defective_pix8_carry_i_1_n_0,t4_diff1[5],t4_diff1[3],t5_defective_pix8_carry_i_2_n_0}),
        .O(NLW_t5_defective_pix8_carry_O_UNCONNECTED[3:0]),
        .S({t5_defective_pix8_carry_i_3_n_0,t5_defective_pix8_carry_i_4_n_0,t5_defective_pix8_carry_i_5_n_0,t5_defective_pix8_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix8_carry_i_1
       (.I0(t4_diff1[6]),
        .I1(t4_diff1[7]),
        .O(t5_defective_pix8_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t5_defective_pix8_carry_i_2
       (.I0(t4_diff1[0]),
        .I1(t4_diff1[1]),
        .O(t5_defective_pix8_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix8_carry_i_3
       (.I0(t4_diff1[6]),
        .I1(t4_diff1[7]),
        .O(t5_defective_pix8_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix8_carry_i_4
       (.I0(t4_diff1[4]),
        .I1(t4_diff1[5]),
        .O(t5_defective_pix8_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t5_defective_pix8_carry_i_5
       (.I0(t4_diff1[2]),
        .I1(t4_diff1[3]),
        .O(t5_defective_pix8_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t5_defective_pix8_carry_i_6
       (.I0(t4_diff1[0]),
        .I1(t4_diff1[1]),
        .O(t5_defective_pix8_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    t5_defective_pix_i_1
       (.I0(t4_defective_pix),
        .I1(t5_defective_pix_i_2_n_0),
        .I2(t5_defective_pix2_carry_n_0),
        .I3(t5_defective_pix1_carry_n_0),
        .I4(t5_defective_pix4_carry_n_0),
        .I5(t5_defective_pix3_carry_n_0),
        .O(t5_defective_pix_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    t5_defective_pix_i_2
       (.I0(t5_defective_pix6_carry_n_0),
        .I1(t5_defective_pix5_carry_n_0),
        .I2(t5_defective_pix8_carry_n_0),
        .I3(t5_defective_pix7_carry_n_0),
        .O(t5_defective_pix_i_2_n_0));
  FDCE t5_defective_pix_reg
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(t5_defective_pix_i_1_n_0),
        .Q(t5_defective_pix));
  FDCE \t5_medium_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(t4_medium[0]),
        .Q(t5_medium[0]));
  FDCE \t5_medium_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(t4_medium[1]),
        .Q(t5_medium[1]));
  FDCE \t5_medium_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(t4_medium[2]),
        .Q(t5_medium[2]));
  FDCE \t5_medium_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(t4_medium[3]),
        .Q(t5_medium[3]));
  FDCE \t5_medium_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(t4_medium[4]),
        .Q(t5_medium[4]));
  FDCE \t5_medium_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(t4_medium[5]),
        .Q(t5_medium[5]));
  FDCE \t5_medium_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(t4_medium[6]),
        .Q(t5_medium[6]));
  FDCE \t5_medium_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(t4_medium[7]),
        .Q(t5_medium[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t6_center[0]_i_1 
       (.I0(t5_medium[0]),
        .I1(t5_center[0]),
        .I2(t5_defective_pix),
        .O(\t6_center[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t6_center[1]_i_1 
       (.I0(t5_medium[1]),
        .I1(t5_center[1]),
        .I2(t5_defective_pix),
        .O(\t6_center[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t6_center[2]_i_1 
       (.I0(t5_medium[2]),
        .I1(t5_center[2]),
        .I2(t5_defective_pix),
        .O(\t6_center[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t6_center[3]_i_1 
       (.I0(t5_medium[3]),
        .I1(t5_center[3]),
        .I2(t5_defective_pix),
        .O(\t6_center[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t6_center[4]_i_1 
       (.I0(t5_medium[4]),
        .I1(t5_center[4]),
        .I2(t5_defective_pix),
        .O(\t6_center[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t6_center[5]_i_1 
       (.I0(t5_medium[5]),
        .I1(t5_center[5]),
        .I2(t5_defective_pix),
        .O(\t6_center[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t6_center[6]_i_1 
       (.I0(t5_medium[6]),
        .I1(t5_center[6]),
        .I2(t5_defective_pix),
        .O(\t6_center[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t6_center[7]_i_2 
       (.I0(t5_medium[7]),
        .I1(t5_center[7]),
        .I2(t5_defective_pix),
        .O(\t6_center[7]_i_2_n_0 ));
  FDCE \t6_center_reg[0] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t6_center[0]_i_1_n_0 ),
        .Q(m00_axis_tdata[0]));
  FDCE \t6_center_reg[1] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t6_center[1]_i_1_n_0 ),
        .Q(m00_axis_tdata[1]));
  FDCE \t6_center_reg[2] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t6_center[2]_i_1_n_0 ),
        .Q(m00_axis_tdata[2]));
  FDCE \t6_center_reg[3] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t6_center[3]_i_1_n_0 ),
        .Q(m00_axis_tdata[3]));
  FDCE \t6_center_reg[4] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t6_center[4]_i_1_n_0 ),
        .Q(m00_axis_tdata[4]));
  FDCE \t6_center_reg[5] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t6_center[5]_i_1_n_0 ),
        .Q(m00_axis_tdata[5]));
  FDCE \t6_center_reg[6] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t6_center[6]_i_1_n_0 ),
        .Q(m00_axis_tdata[6]));
  FDCE \t6_center_reg[7] 
       (.C(axis_aclk),
        .CE(shift_enable),
        .CLR(\t5_medium_reg[0]_0 ),
        .D(\t6_center[7]_i_2_n_0 ),
        .Q(m00_axis_tdata[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc_v1_0
   (m00_axis_tlast,
    m00_axis_tuser,
    m00_axis_tdata,
    m00_axis_tvalid,
    s00_axis_tready,
    m00_axis_tready,
    s00_axis_tvalid,
    axis_aclk,
    s00_axis_tdata,
    s00_axis_tuser,
    axis_aresetn,
    s00_axis_tlast);
  output m00_axis_tlast;
  output m00_axis_tuser;
  output [7:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output s00_axis_tready;
  input m00_axis_tready;
  input s00_axis_tvalid;
  input axis_aclk;
  input [7:0]s00_axis_tdata;
  input s00_axis_tuser;
  input axis_aresetn;
  input s00_axis_tlast;

  wire axis_aclk;
  wire axis_aresetn;
  wire axis_dpc_inst_n_1;
  wire axis_dpc_inst_n_12;
  wire axis_dpc_inst_n_13;
  wire \axis_tlast_buf[9]_i_2_n_0 ;
  wire [7:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tuser;
  wire m00_axis_tvalid;
  wire \max_y_index_int[10]_i_1_n_0 ;
  wire \p35[5]_i_1_n_0 ;
  wire [7:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tuser;
  wire s00_axis_tvalid;
  wire shift_enable;
  wire \shift_x_index_int[0]_i_2_n_0 ;
  wire \shift_y_index_int[11]_i_3_n_0 ;
  wire \t3_diff1[8]_i_1_n_0 ;
  wire \t6_center[7]_i_3_n_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc axis_dpc_inst
       (.axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .\current_state_reg[0] (axis_dpc_inst_n_12),
        .\current_state_reg[1] (\axis_tlast_buf[9]_i_2_n_0 ),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tuser(m00_axis_tuser),
        .m00_axis_tvalid(m00_axis_tvalid),
        .\max_y_index_int_reg[10] (axis_dpc_inst_n_1),
        .\max_y_index_int_reg[10]_0 (\shift_y_index_int[11]_i_3_n_0 ),
        .\max_y_index_int_reg[10]_1 (\max_y_index_int[10]_i_1_n_0 ),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tuser(s00_axis_tuser),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s00_axis_tvalid_0(axis_dpc_inst_n_13),
        .shift_enable(shift_enable),
        .\shift_x_index_int_reg[0] (\shift_x_index_int[0]_i_2_n_0 ),
        .\t1_p6_reg[6]_0 (\p35[5]_i_1_n_0 ),
        .\t3_diff4_reg[0]_0 (\t3_diff1[8]_i_1_n_0 ),
        .\t5_medium_reg[0]_0 (\t6_center[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axis_tlast_buf[9]_i_2 
       (.I0(axis_aresetn),
        .O(\axis_tlast_buf[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55FF0008)) 
    \max_y_index_int[10]_i_1 
       (.I0(shift_enable),
        .I1(s00_axis_tuser),
        .I2(axis_dpc_inst_n_13),
        .I3(axis_dpc_inst_n_12),
        .I4(axis_dpc_inst_n_1),
        .O(\max_y_index_int[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p35[5]_i_1 
       (.I0(axis_aresetn),
        .O(\p35[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \shift_x_index_int[0]_i_2 
       (.I0(axis_aresetn),
        .O(\shift_x_index_int[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \shift_y_index_int[11]_i_3 
       (.I0(axis_aresetn),
        .O(\shift_y_index_int[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \t3_diff1[8]_i_1 
       (.I0(axis_aresetn),
        .O(\t3_diff1[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \t6_center[7]_i_3 
       (.I0(axis_aresetn),
        .O(\t6_center[7]_i_3_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_shift_helper
   (D,
    \current_state_reg[0]_0 ,
    s00_axis_tvalid_0,
    \axis_tuser_buf_reg[8] ,
    \axis_tlast_buf_reg[8] ,
    m00_axis_tvalid,
    \s00_axis_tdata[7] ,
    s00_axis_tlast_0,
    E,
    s00_axis_tvalid_1,
    s00_axis_tready,
    S,
    m00_axis_tready,
    s00_axis_tvalid,
    s00_axis_tuser,
    shift_y_index_int0,
    Q,
    \axis_tuser_buf_reg[9] ,
    \axis_tlast_buf_reg[9] ,
    axis_aresetn,
    s00_axis_tdata,
    s00_axis_tlast,
    shift_x_index,
    CO,
    s_axis_eof0_carry,
    axis_aclk,
    \current_state_reg[1]_0 );
  output [11:0]D;
  output \current_state_reg[0]_0 ;
  output s00_axis_tvalid_0;
  output [9:0]\axis_tuser_buf_reg[8] ;
  output [9:0]\axis_tlast_buf_reg[8] ;
  output m00_axis_tvalid;
  output [7:0]\s00_axis_tdata[7] ;
  output s00_axis_tlast_0;
  output [0:0]E;
  output [0:0]s00_axis_tvalid_1;
  output s00_axis_tready;
  output [3:0]S;
  input m00_axis_tready;
  input s00_axis_tvalid;
  input s00_axis_tuser;
  input [10:0]shift_y_index_int0;
  input [11:0]Q;
  input [8:0]\axis_tuser_buf_reg[9] ;
  input [8:0]\axis_tlast_buf_reg[9] ;
  input axis_aresetn;
  input [7:0]s00_axis_tdata;
  input s00_axis_tlast;
  input shift_x_index;
  input [0:0]CO;
  input s_axis_eof0_carry;
  input axis_aclk;
  input \current_state_reg[1]_0 ;

  wire [0:0]CO;
  wire [11:0]D;
  wire [0:0]E;
  wire [11:0]Q;
  wire [3:0]S;
  wire axis_aclk;
  wire axis_aresetn;
  wire \axis_tlast_buf[0]_i_3_n_0 ;
  wire [9:0]\axis_tlast_buf_reg[8] ;
  wire [8:0]\axis_tlast_buf_reg[9] ;
  wire [9:0]\axis_tuser_buf_reg[8] ;
  wire [8:0]\axis_tuser_buf_reg[9] ;
  wire [4:0]current_state;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state[4]_i_2_n_0 ;
  wire \current_state[4]_i_3_n_0 ;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg_n_0_[3] ;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire m00_axis_tvalid_INST_0_i_1_n_0;
  wire [4:0]next_state;
  wire [7:0]s00_axis_tdata;
  wire [7:0]\s00_axis_tdata[7] ;
  wire s00_axis_tlast;
  wire s00_axis_tlast_0;
  wire s00_axis_tready;
  wire s00_axis_tready_INST_0_i_1_n_0;
  wire s00_axis_tuser;
  wire s00_axis_tvalid;
  wire s00_axis_tvalid_0;
  wire [0:0]s00_axis_tvalid_1;
  wire s_axis_eof0_carry;
  wire [3:0]shift_count;
  wire \shift_count[3]_i_1_n_0 ;
  wire \shift_count[3]_i_3_n_0 ;
  wire \shift_count[3]_i_4_n_0 ;
  wire \shift_count_reg_n_0_[0] ;
  wire \shift_count_reg_n_0_[1] ;
  wire \shift_count_reg_n_0_[2] ;
  wire \shift_count_reg_n_0_[3] ;
  wire shift_x_index;
  wire [10:0]shift_y_index_int0;
  wire \t6_center[7]_i_4_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tlast_buf[0]_i_1 
       (.I0(s00_axis_tlast),
        .I1(s00_axis_tvalid_0),
        .O(\axis_tlast_buf_reg[8] [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \axis_tlast_buf[0]_i_2 
       (.I0(\axis_tlast_buf[0]_i_3_n_0 ),
        .I1(s00_axis_tvalid),
        .I2(current_state[4]),
        .I3(\current_state_reg_n_0_[3] ),
        .O(s00_axis_tvalid_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFCFDFFF)) 
    \axis_tlast_buf[0]_i_3 
       (.I0(m00_axis_tready),
        .I1(current_state[0]),
        .I2(axis_aresetn),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .O(\axis_tlast_buf[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tlast_buf[1]_i_1 
       (.I0(\axis_tlast_buf_reg[9] [0]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tlast_buf_reg[8] [1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tlast_buf[2]_i_1 
       (.I0(\axis_tlast_buf_reg[9] [1]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tlast_buf_reg[8] [2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tlast_buf[3]_i_1 
       (.I0(\axis_tlast_buf_reg[9] [2]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tlast_buf_reg[8] [3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tlast_buf[4]_i_1 
       (.I0(\axis_tlast_buf_reg[9] [3]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tlast_buf_reg[8] [4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tlast_buf[5]_i_1 
       (.I0(\axis_tlast_buf_reg[9] [4]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tlast_buf_reg[8] [5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tlast_buf[6]_i_1 
       (.I0(\axis_tlast_buf_reg[9] [5]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tlast_buf_reg[8] [6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tlast_buf[7]_i_1 
       (.I0(\axis_tlast_buf_reg[9] [6]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tlast_buf_reg[8] [7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tlast_buf[8]_i_1 
       (.I0(\axis_tlast_buf_reg[9] [7]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tlast_buf_reg[8] [8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tlast_buf[9]_i_1 
       (.I0(\axis_tlast_buf_reg[9] [8]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tlast_buf_reg[8] [9]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \axis_tlast_buf[9]_i_3 
       (.I0(current_state[0]),
        .I1(axis_aresetn),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(current_state[4]),
        .O(\current_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tuser_buf[0]_i_1 
       (.I0(s00_axis_tuser),
        .I1(s00_axis_tvalid_0),
        .O(\axis_tuser_buf_reg[8] [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tuser_buf[1]_i_1 
       (.I0(\axis_tuser_buf_reg[9] [0]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tuser_buf_reg[8] [1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tuser_buf[2]_i_1 
       (.I0(\axis_tuser_buf_reg[9] [1]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tuser_buf_reg[8] [2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tuser_buf[3]_i_1 
       (.I0(\axis_tuser_buf_reg[9] [2]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tuser_buf_reg[8] [3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tuser_buf[4]_i_1 
       (.I0(\axis_tuser_buf_reg[9] [3]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tuser_buf_reg[8] [4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tuser_buf[5]_i_1 
       (.I0(\axis_tuser_buf_reg[9] [4]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tuser_buf_reg[8] [5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tuser_buf[6]_i_1 
       (.I0(\axis_tuser_buf_reg[9] [5]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tuser_buf_reg[8] [6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tuser_buf[7]_i_1 
       (.I0(\axis_tuser_buf_reg[9] [6]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tuser_buf_reg[8] [7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tuser_buf[8]_i_1 
       (.I0(\axis_tuser_buf_reg[9] [7]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tuser_buf_reg[8] [8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axis_tuser_buf[9]_i_1 
       (.I0(\axis_tuser_buf_reg[9] [8]),
        .I1(\current_state_reg[0]_0 ),
        .O(\axis_tuser_buf_reg[8] [9]));
  LUT6 #(
    .INIT(64'h8F88FFFFFFFFFFFF)) 
    \current_state[0]_i_1 
       (.I0(current_state[4]),
        .I1(m00_axis_tready),
        .I2(s00_axis_tvalid),
        .I3(current_state[0]),
        .I4(axis_aresetn),
        .I5(\current_state[4]_i_2_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h8A80AA808A808A80)) 
    \current_state[1]_i_1 
       (.I0(\t6_center[7]_i_4_n_0 ),
        .I1(current_state[0]),
        .I2(s00_axis_tvalid),
        .I3(current_state[1]),
        .I4(\current_state[1]_i_2_n_0 ),
        .I5(\current_state[2]_i_3_n_0 ),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \current_state[1]_i_2 
       (.I0(\shift_count_reg_n_0_[1] ),
        .I1(\shift_count_reg_n_0_[0] ),
        .I2(\shift_count_reg_n_0_[3] ),
        .I3(\shift_count_reg_n_0_[2] ),
        .O(\current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA88888888)) 
    \current_state[2]_i_1 
       (.I0(\t6_center[7]_i_4_n_0 ),
        .I1(\current_state[2]_i_2_n_0 ),
        .I2(\current_state[2]_i_3_n_0 ),
        .I3(m00_axis_tready),
        .I4(s00_axis_tvalid),
        .I5(current_state[2]),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00808080)) 
    \current_state[2]_i_2 
       (.I0(\current_state[1]_i_2_n_0 ),
        .I1(s00_axis_tvalid),
        .I2(current_state[1]),
        .I3(s00_axis_tlast),
        .I4(CO),
        .O(\current_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[2]_i_3 
       (.I0(CO),
        .I1(s00_axis_tlast),
        .O(\current_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000AAAA80008000)) 
    \current_state[3]_i_1 
       (.I0(\t6_center[7]_i_4_n_0 ),
        .I1(\current_state[3]_i_2_n_0 ),
        .I2(s00_axis_tlast),
        .I3(CO),
        .I4(\current_state[4]_i_3_n_0 ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(next_state[3]));
  LUT4 #(
    .INIT(16'hA888)) 
    \current_state[3]_i_2 
       (.I0(s00_axis_tvalid),
        .I1(current_state[1]),
        .I2(m00_axis_tready),
        .I3(current_state[2]),
        .O(\current_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000888880008000)) 
    \current_state[4]_i_1 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(axis_aresetn),
        .I2(\current_state[4]_i_3_n_0 ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(m00_axis_tready),
        .I5(current_state[4]),
        .O(next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \current_state[4]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(current_state[4]),
        .O(\current_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \current_state[4]_i_3 
       (.I0(m00_axis_tready),
        .I1(\shift_count_reg_n_0_[3] ),
        .I2(\shift_count_reg_n_0_[2] ),
        .I3(\shift_count_reg_n_0_[0] ),
        .I4(\shift_count_reg_n_0_[1] ),
        .O(\current_state[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S_FILLING:00010,S_SHIFTING:00100,S_FLUSHING:01000,S_DONE:10000,S_IDLE:00001" *) 
  FDPE \current_state_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .PRE(\current_state_reg[1]_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "S_FILLING:00010,S_SHIFTING:00100,S_FLUSHING:01000,S_DONE:10000,S_IDLE:00001" *) 
  FDCE \current_state_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\current_state_reg[1]_0 ),
        .D(next_state[1]),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "S_FILLING:00010,S_SHIFTING:00100,S_FLUSHING:01000,S_DONE:10000,S_IDLE:00001" *) 
  FDCE \current_state_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\current_state_reg[1]_0 ),
        .D(next_state[2]),
        .Q(current_state[2]));
  (* FSM_ENCODED_STATES = "S_FILLING:00010,S_SHIFTING:00100,S_FLUSHING:01000,S_DONE:10000,S_IDLE:00001" *) 
  FDCE \current_state_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\current_state_reg[1]_0 ),
        .D(next_state[3]),
        .Q(\current_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "S_FILLING:00010,S_SHIFTING:00100,S_FLUSHING:01000,S_DONE:10000,S_IDLE:00001" *) 
  FDCE \current_state_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\current_state_reg[1]_0 ),
        .D(next_state[4]),
        .Q(current_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \in_raw_r[0]_i_1 
       (.I0(s00_axis_tdata[0]),
        .I1(s00_axis_tvalid_0),
        .O(\s00_axis_tdata[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \in_raw_r[1]_i_1 
       (.I0(s00_axis_tdata[1]),
        .I1(s00_axis_tvalid_0),
        .O(\s00_axis_tdata[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \in_raw_r[2]_i_1 
       (.I0(s00_axis_tdata[2]),
        .I1(s00_axis_tvalid_0),
        .O(\s00_axis_tdata[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \in_raw_r[3]_i_1 
       (.I0(s00_axis_tdata[3]),
        .I1(s00_axis_tvalid_0),
        .O(\s00_axis_tdata[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \in_raw_r[4]_i_1 
       (.I0(s00_axis_tdata[4]),
        .I1(s00_axis_tvalid_0),
        .O(\s00_axis_tdata[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \in_raw_r[5]_i_1 
       (.I0(s00_axis_tdata[5]),
        .I1(s00_axis_tvalid_0),
        .O(\s00_axis_tdata[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \in_raw_r[6]_i_1 
       (.I0(s00_axis_tdata[6]),
        .I1(s00_axis_tvalid_0),
        .O(\s00_axis_tdata[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \in_raw_r[7]_i_1 
       (.I0(s00_axis_tdata[7]),
        .I1(s00_axis_tvalid_0),
        .O(\s00_axis_tdata[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000338)) 
    m00_axis_tvalid_INST_0
       (.I0(s00_axis_tvalid),
        .I1(current_state[2]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(current_state[4]),
        .I4(m00_axis_tvalid_INST_0_i_1_n_0),
        .O(m00_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    m00_axis_tvalid_INST_0_i_1
       (.I0(current_state[1]),
        .I1(axis_aresetn),
        .I2(current_state[0]),
        .O(m00_axis_tvalid_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000140000000400)) 
    s00_axis_tready_INST_0
       (.I0(s00_axis_tready_INST_0_i_1_n_0),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(axis_aresetn),
        .I4(current_state[0]),
        .I5(m00_axis_tready),
        .O(s00_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s00_axis_tready_INST_0_i_1
       (.I0(current_state[4]),
        .I1(\current_state_reg_n_0_[3] ),
        .O(s00_axis_tready_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2001)) 
    s_axis_eof0_carry_i_1
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(s_axis_eof0_carry),
        .I3(Q[9]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h2001)) 
    s_axis_eof0_carry_i_2
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(s_axis_eof0_carry),
        .I3(Q[6]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h8001)) 
    s_axis_eof0_carry_i_3
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(s_axis_eof0_carry),
        .I3(Q[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h8001)) 
    s_axis_eof0_carry_i_4
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(s_axis_eof0_carry),
        .I3(Q[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0000000000010100)) 
    \shift_count[0]_i_1 
       (.I0(\shift_count_reg_n_0_[0] ),
        .I1(current_state[4]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(current_state[2]),
        .O(shift_count[0]));
  LUT6 #(
    .INIT(64'h0400000400080800)) 
    \shift_count[1]_i_1 
       (.I0(current_state[1]),
        .I1(\shift_count[3]_i_3_n_0 ),
        .I2(current_state[2]),
        .I3(\shift_count_reg_n_0_[0] ),
        .I4(\shift_count_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(shift_count[1]));
  LUT5 #(
    .INIT(32'h0000BD42)) 
    \shift_count[2]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\shift_count_reg_n_0_[0] ),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(\shift_count_reg_n_0_[2] ),
        .I4(\shift_count[3]_i_4_n_0 ),
        .O(shift_count[2]));
  LUT6 #(
    .INIT(64'hEFEBEDE9FFFFFFFF)) 
    \shift_count[3]_i_1 
       (.I0(current_state[1]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(current_state[2]),
        .I3(m00_axis_tready),
        .I4(s00_axis_tvalid),
        .I5(\shift_count[3]_i_3_n_0 ),
        .O(\shift_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A6AAAA9A)) 
    \shift_count[3]_i_2 
       (.I0(\shift_count_reg_n_0_[3] ),
        .I1(\shift_count_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\shift_count_reg_n_0_[1] ),
        .I4(\shift_count_reg_n_0_[0] ),
        .I5(\shift_count[3]_i_4_n_0 ),
        .O(shift_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \shift_count[3]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[4]),
        .O(\shift_count[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEB)) 
    \shift_count[3]_i_4 
       (.I0(current_state[2]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[4]),
        .O(\shift_count[3]_i_4_n_0 ));
  FDCE \shift_count_reg[0] 
       (.C(axis_aclk),
        .CE(\shift_count[3]_i_1_n_0 ),
        .CLR(\current_state_reg[1]_0 ),
        .D(shift_count[0]),
        .Q(\shift_count_reg_n_0_[0] ));
  FDCE \shift_count_reg[1] 
       (.C(axis_aclk),
        .CE(\shift_count[3]_i_1_n_0 ),
        .CLR(\current_state_reg[1]_0 ),
        .D(shift_count[1]),
        .Q(\shift_count_reg_n_0_[1] ));
  FDCE \shift_count_reg[2] 
       (.C(axis_aclk),
        .CE(\shift_count[3]_i_1_n_0 ),
        .CLR(\current_state_reg[1]_0 ),
        .D(shift_count[2]),
        .Q(\shift_count_reg_n_0_[2] ));
  FDCE \shift_count_reg[3] 
       (.C(axis_aclk),
        .CE(\shift_count[3]_i_1_n_0 ),
        .CLR(\current_state_reg[1]_0 ),
        .D(shift_count[3]),
        .Q(\shift_count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00F1)) 
    \shift_x_index_int[0]_i_1 
       (.I0(s00_axis_tlast),
        .I1(shift_x_index),
        .I2(s00_axis_tuser),
        .I3(s00_axis_tvalid_0),
        .O(s00_axis_tlast_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \shift_y_index_int[0]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(s00_axis_tvalid_0),
        .I3(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[10]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[9]),
        .I3(s00_axis_tvalid_0),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \shift_y_index_int[11]_i_1 
       (.I0(s00_axis_tvalid_1),
        .I1(s00_axis_tvalid_0),
        .I2(s00_axis_tuser),
        .I3(s00_axis_tlast),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[11]_i_2 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[10]),
        .I3(s00_axis_tvalid_0),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[1]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[0]),
        .I3(s00_axis_tvalid_0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[2]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[1]),
        .I3(s00_axis_tvalid_0),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[3]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[2]),
        .I3(s00_axis_tvalid_0),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[4]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[3]),
        .I3(s00_axis_tvalid_0),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[5]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[4]),
        .I3(s00_axis_tvalid_0),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[6]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[5]),
        .I3(s00_axis_tvalid_0),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[7]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[6]),
        .I3(s00_axis_tvalid_0),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[8]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[7]),
        .I3(s00_axis_tvalid_0),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \shift_y_index_int[9]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(s00_axis_tuser),
        .I2(shift_y_index_int0[8]),
        .I3(s00_axis_tvalid_0),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAA80AA8088808080)) 
    \t6_center[7]_i_1 
       (.I0(\t6_center[7]_i_4_n_0 ),
        .I1(s00_axis_tvalid),
        .I2(current_state[1]),
        .I3(m00_axis_tready),
        .I4(current_state[2]),
        .I5(s00_axis_tready_INST_0_i_1_n_0),
        .O(s00_axis_tvalid_1));
  LUT2 #(
    .INIT(4'h8)) 
    \t6_center[7]_i_4 
       (.I0(axis_aresetn),
        .I1(\current_state[4]_i_2_n_0 ),
        .O(\t6_center[7]_i_4_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_v_shift_helper
   (E,
    \max_y_index_int_reg[10]_0 ,
    \current_state_reg[0] ,
    s00_axis_tvalid_0,
    m00_axis_tvalid,
    D,
    s00_axis_tready,
    \p44_reg[7] ,
    \p42_reg[7] ,
    \p24_reg[7] ,
    \p22_reg[7] ,
    m00_axis_tlast,
    m00_axis_tuser,
    axis_aclk,
    \shift_x_index_int_reg[0]_0 ,
    \max_y_index_int_reg[10]_1 ,
    \max_y_index_int_reg[10]_2 ,
    m00_axis_tready,
    s00_axis_tvalid,
    s00_axis_tuser,
    axis_aresetn,
    s00_axis_tdata,
    s00_axis_tlast,
    Q,
    \t1_p9_reg[7] ,
    \t1_p7_reg[7] ,
    t2_p8,
    \t1_p3_reg[7] ,
    \t1_p3_reg[7]_0 ,
    \t1_p1_reg[7] ,
    t2_p2,
    \current_state_reg[1] );
  output [0:0]E;
  output \max_y_index_int_reg[10]_0 ;
  output \current_state_reg[0] ;
  output s00_axis_tvalid_0;
  output m00_axis_tvalid;
  output [7:0]D;
  output s00_axis_tready;
  output [7:0]\p44_reg[7] ;
  output [7:0]\p42_reg[7] ;
  output [7:0]\p24_reg[7] ;
  output [7:0]\p22_reg[7] ;
  output m00_axis_tlast;
  output m00_axis_tuser;
  input axis_aclk;
  input \shift_x_index_int_reg[0]_0 ;
  input \max_y_index_int_reg[10]_1 ;
  input \max_y_index_int_reg[10]_2 ;
  input m00_axis_tready;
  input s00_axis_tvalid;
  input s00_axis_tuser;
  input axis_aresetn;
  input [7:0]s00_axis_tdata;
  input s00_axis_tlast;
  input [7:0]Q;
  input [7:0]\t1_p9_reg[7] ;
  input [7:0]\t1_p7_reg[7] ;
  input [7:0]t2_p8;
  input [7:0]\t1_p3_reg[7] ;
  input [7:0]\t1_p3_reg[7]_0 ;
  input [7:0]\t1_p1_reg[7] ;
  input [7:0]t2_p2;
  input \current_state_reg[1] ;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire axis_aclk;
  wire axis_aresetn;
  wire [8:0]axis_tlast_buf;
  wire [8:0]axis_tuser_buf;
  wire \current_state_reg[0] ;
  wire \current_state_reg[1] ;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tuser;
  wire m00_axis_tvalid;
  wire \max_y_index_int_reg[10]_0 ;
  wire \max_y_index_int_reg[10]_1 ;
  wire \max_y_index_int_reg[10]_2 ;
  wire [7:0]\p22_reg[7] ;
  wire [7:0]\p24_reg[7] ;
  wire [7:0]\p42_reg[7] ;
  wire [7:0]\p44_reg[7] ;
  wire [9:0]p_0_in;
  wire [7:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tuser;
  wire s00_axis_tvalid;
  wire s00_axis_tvalid_0;
  wire s_axis_eof0_carry_n_0;
  wire s_axis_eof0_carry_n_1;
  wire s_axis_eof0_carry_n_2;
  wire s_axis_eof0_carry_n_3;
  wire shift_helper_inst_n_0;
  wire shift_helper_inst_n_1;
  wire shift_helper_inst_n_10;
  wire shift_helper_inst_n_11;
  wire shift_helper_inst_n_14;
  wire shift_helper_inst_n_15;
  wire shift_helper_inst_n_16;
  wire shift_helper_inst_n_17;
  wire shift_helper_inst_n_18;
  wire shift_helper_inst_n_19;
  wire shift_helper_inst_n_2;
  wire shift_helper_inst_n_20;
  wire shift_helper_inst_n_21;
  wire shift_helper_inst_n_22;
  wire shift_helper_inst_n_23;
  wire shift_helper_inst_n_3;
  wire shift_helper_inst_n_4;
  wire shift_helper_inst_n_43;
  wire shift_helper_inst_n_47;
  wire shift_helper_inst_n_48;
  wire shift_helper_inst_n_49;
  wire shift_helper_inst_n_5;
  wire shift_helper_inst_n_50;
  wire shift_helper_inst_n_6;
  wire shift_helper_inst_n_7;
  wire shift_helper_inst_n_8;
  wire shift_helper_inst_n_9;
  wire shift_x_index;
  wire \shift_x_index_int_reg[0]_0 ;
  wire shift_y_index;
  wire shift_y_index_int;
  wire [11:1]shift_y_index_int0;
  wire shift_y_index_int0_carry__0_n_0;
  wire shift_y_index_int0_carry__0_n_1;
  wire shift_y_index_int0_carry__0_n_2;
  wire shift_y_index_int0_carry__0_n_3;
  wire shift_y_index_int0_carry__1_n_2;
  wire shift_y_index_int0_carry__1_n_3;
  wire shift_y_index_int0_carry_n_0;
  wire shift_y_index_int0_carry_n_1;
  wire shift_y_index_int0_carry_n_2;
  wire shift_y_index_int0_carry_n_3;
  wire \shift_y_index_int_reg_n_0_[10] ;
  wire \shift_y_index_int_reg_n_0_[11] ;
  wire \shift_y_index_int_reg_n_0_[1] ;
  wire \shift_y_index_int_reg_n_0_[2] ;
  wire \shift_y_index_int_reg_n_0_[3] ;
  wire \shift_y_index_int_reg_n_0_[4] ;
  wire \shift_y_index_int_reg_n_0_[5] ;
  wire \shift_y_index_int_reg_n_0_[6] ;
  wire \shift_y_index_int_reg_n_0_[7] ;
  wire \shift_y_index_int_reg_n_0_[8] ;
  wire \shift_y_index_int_reg_n_0_[9] ;
  wire [7:0]\t1_p1_reg[7] ;
  wire [7:0]\t1_p3_reg[7] ;
  wire [7:0]\t1_p3_reg[7]_0 ;
  wire [7:0]\t1_p7_reg[7] ;
  wire [7:0]\t1_p9_reg[7] ;
  wire [7:0]t2_p2;
  wire [7:0]t2_p8;
  wire [3:0]NLW_s_axis_eof0_carry_O_UNCONNECTED;
  wire [3:2]NLW_shift_y_index_int0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_shift_y_index_int0_carry__1_O_UNCONNECTED;

  FDCE \axis_tlast_buf_reg[0] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(p_0_in[0]),
        .Q(axis_tlast_buf[0]));
  FDCE \axis_tlast_buf_reg[1] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(p_0_in[1]),
        .Q(axis_tlast_buf[1]));
  FDCE \axis_tlast_buf_reg[2] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(p_0_in[2]),
        .Q(axis_tlast_buf[2]));
  FDCE \axis_tlast_buf_reg[3] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(p_0_in[3]),
        .Q(axis_tlast_buf[3]));
  FDCE \axis_tlast_buf_reg[4] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(p_0_in[4]),
        .Q(axis_tlast_buf[4]));
  FDCE \axis_tlast_buf_reg[5] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(p_0_in[5]),
        .Q(axis_tlast_buf[5]));
  FDCE \axis_tlast_buf_reg[6] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(p_0_in[6]),
        .Q(axis_tlast_buf[6]));
  FDCE \axis_tlast_buf_reg[7] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(p_0_in[7]),
        .Q(axis_tlast_buf[7]));
  FDCE \axis_tlast_buf_reg[8] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(p_0_in[8]),
        .Q(axis_tlast_buf[8]));
  FDCE \axis_tlast_buf_reg[9] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(p_0_in[9]),
        .Q(m00_axis_tlast));
  FDCE \axis_tuser_buf_reg[0] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_inst_n_23),
        .Q(axis_tuser_buf[0]));
  FDCE \axis_tuser_buf_reg[1] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_inst_n_22),
        .Q(axis_tuser_buf[1]));
  FDCE \axis_tuser_buf_reg[2] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_inst_n_21),
        .Q(axis_tuser_buf[2]));
  FDCE \axis_tuser_buf_reg[3] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_inst_n_20),
        .Q(axis_tuser_buf[3]));
  FDCE \axis_tuser_buf_reg[4] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_inst_n_19),
        .Q(axis_tuser_buf[4]));
  FDCE \axis_tuser_buf_reg[5] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_inst_n_18),
        .Q(axis_tuser_buf[5]));
  FDCE \axis_tuser_buf_reg[6] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_inst_n_17),
        .Q(axis_tuser_buf[6]));
  FDCE \axis_tuser_buf_reg[7] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_inst_n_16),
        .Q(axis_tuser_buf[7]));
  FDCE \axis_tuser_buf_reg[8] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_inst_n_15),
        .Q(axis_tuser_buf[8]));
  FDCE \axis_tuser_buf_reg[9] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\current_state_reg[1] ),
        .D(shift_helper_inst_n_14),
        .Q(m00_axis_tuser));
  FDCE \max_y_index_int_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(\max_y_index_int_reg[10]_1 ),
        .Q(\max_y_index_int_reg[10]_0 ));
  CARRY4 s_axis_eof0_carry
       (.CI(1'b0),
        .CO({s_axis_eof0_carry_n_0,s_axis_eof0_carry_n_1,s_axis_eof0_carry_n_2,s_axis_eof0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_axis_eof0_carry_O_UNCONNECTED[3:0]),
        .S({shift_helper_inst_n_47,shift_helper_inst_n_48,shift_helper_inst_n_49,shift_helper_inst_n_50}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_shift_helper shift_helper_inst
       (.CO(s_axis_eof0_carry_n_0),
        .D({shift_helper_inst_n_0,shift_helper_inst_n_1,shift_helper_inst_n_2,shift_helper_inst_n_3,shift_helper_inst_n_4,shift_helper_inst_n_5,shift_helper_inst_n_6,shift_helper_inst_n_7,shift_helper_inst_n_8,shift_helper_inst_n_9,shift_helper_inst_n_10,shift_helper_inst_n_11}),
        .E(shift_y_index_int),
        .Q({\shift_y_index_int_reg_n_0_[11] ,\shift_y_index_int_reg_n_0_[10] ,\shift_y_index_int_reg_n_0_[9] ,\shift_y_index_int_reg_n_0_[8] ,\shift_y_index_int_reg_n_0_[7] ,\shift_y_index_int_reg_n_0_[6] ,\shift_y_index_int_reg_n_0_[5] ,\shift_y_index_int_reg_n_0_[4] ,\shift_y_index_int_reg_n_0_[3] ,\shift_y_index_int_reg_n_0_[2] ,\shift_y_index_int_reg_n_0_[1] ,shift_y_index}),
        .S({shift_helper_inst_n_47,shift_helper_inst_n_48,shift_helper_inst_n_49,shift_helper_inst_n_50}),
        .axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .\axis_tlast_buf_reg[8] (p_0_in),
        .\axis_tlast_buf_reg[9] (axis_tlast_buf),
        .\axis_tuser_buf_reg[8] ({shift_helper_inst_n_14,shift_helper_inst_n_15,shift_helper_inst_n_16,shift_helper_inst_n_17,shift_helper_inst_n_18,shift_helper_inst_n_19,shift_helper_inst_n_20,shift_helper_inst_n_21,shift_helper_inst_n_22,shift_helper_inst_n_23}),
        .\axis_tuser_buf_reg[9] (axis_tuser_buf),
        .\current_state_reg[0]_0 (\current_state_reg[0] ),
        .\current_state_reg[1]_0 (\current_state_reg[1] ),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axis_tdata(s00_axis_tdata),
        .\s00_axis_tdata[7] (D),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tlast_0(shift_helper_inst_n_43),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tuser(s00_axis_tuser),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s00_axis_tvalid_0(s00_axis_tvalid_0),
        .s00_axis_tvalid_1(E),
        .s_axis_eof0_carry(\max_y_index_int_reg[10]_0 ),
        .shift_x_index(shift_x_index),
        .shift_y_index_int0(shift_y_index_int0));
  FDCE \shift_x_index_int_reg[0] 
       (.C(axis_aclk),
        .CE(E),
        .CLR(\shift_x_index_int_reg[0]_0 ),
        .D(shift_helper_inst_n_43),
        .Q(shift_x_index));
  CARRY4 shift_y_index_int0_carry
       (.CI(1'b0),
        .CO({shift_y_index_int0_carry_n_0,shift_y_index_int0_carry_n_1,shift_y_index_int0_carry_n_2,shift_y_index_int0_carry_n_3}),
        .CYINIT(shift_y_index),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shift_y_index_int0[4:1]),
        .S({\shift_y_index_int_reg_n_0_[4] ,\shift_y_index_int_reg_n_0_[3] ,\shift_y_index_int_reg_n_0_[2] ,\shift_y_index_int_reg_n_0_[1] }));
  CARRY4 shift_y_index_int0_carry__0
       (.CI(shift_y_index_int0_carry_n_0),
        .CO({shift_y_index_int0_carry__0_n_0,shift_y_index_int0_carry__0_n_1,shift_y_index_int0_carry__0_n_2,shift_y_index_int0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shift_y_index_int0[8:5]),
        .S({\shift_y_index_int_reg_n_0_[8] ,\shift_y_index_int_reg_n_0_[7] ,\shift_y_index_int_reg_n_0_[6] ,\shift_y_index_int_reg_n_0_[5] }));
  CARRY4 shift_y_index_int0_carry__1
       (.CI(shift_y_index_int0_carry__0_n_0),
        .CO({NLW_shift_y_index_int0_carry__1_CO_UNCONNECTED[3:2],shift_y_index_int0_carry__1_n_2,shift_y_index_int0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_shift_y_index_int0_carry__1_O_UNCONNECTED[3],shift_y_index_int0[11:9]}),
        .S({1'b0,\shift_y_index_int_reg_n_0_[11] ,\shift_y_index_int_reg_n_0_[10] ,\shift_y_index_int_reg_n_0_[9] }));
  FDCE \shift_y_index_int_reg[0] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\shift_x_index_int_reg[0]_0 ),
        .D(shift_helper_inst_n_11),
        .Q(shift_y_index));
  FDCE \shift_y_index_int_reg[10] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_1),
        .Q(\shift_y_index_int_reg_n_0_[10] ));
  FDCE \shift_y_index_int_reg[11] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_0),
        .Q(\shift_y_index_int_reg_n_0_[11] ));
  FDCE \shift_y_index_int_reg[1] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_10),
        .Q(\shift_y_index_int_reg_n_0_[1] ));
  FDCE \shift_y_index_int_reg[2] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_9),
        .Q(\shift_y_index_int_reg_n_0_[2] ));
  FDCE \shift_y_index_int_reg[3] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_8),
        .Q(\shift_y_index_int_reg_n_0_[3] ));
  FDCE \shift_y_index_int_reg[4] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_7),
        .Q(\shift_y_index_int_reg_n_0_[4] ));
  FDCE \shift_y_index_int_reg[5] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_6),
        .Q(\shift_y_index_int_reg_n_0_[5] ));
  FDCE \shift_y_index_int_reg[6] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_5),
        .Q(\shift_y_index_int_reg_n_0_[6] ));
  FDCE \shift_y_index_int_reg[7] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_4),
        .Q(\shift_y_index_int_reg_n_0_[7] ));
  FDCE \shift_y_index_int_reg[8] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_3),
        .Q(\shift_y_index_int_reg_n_0_[8] ));
  FDCE \shift_y_index_int_reg[9] 
       (.C(axis_aclk),
        .CE(shift_y_index_int),
        .CLR(\max_y_index_int_reg[10]_2 ),
        .D(shift_helper_inst_n_2),
        .Q(\shift_y_index_int_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p1[0]_i_1 
       (.I0(\t1_p1_reg[7] [0]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p2[0]),
        .O(\p22_reg[7] [0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p1[1]_i_1 
       (.I0(\t1_p1_reg[7] [1]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p2[1]),
        .O(\p22_reg[7] [1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p1[2]_i_1 
       (.I0(\t1_p1_reg[7] [2]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p2[2]),
        .O(\p22_reg[7] [2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p1[3]_i_1 
       (.I0(\t1_p1_reg[7] [3]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p2[3]),
        .O(\p22_reg[7] [3]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p1[4]_i_1 
       (.I0(\t1_p1_reg[7] [4]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p2[4]),
        .O(\p22_reg[7] [4]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p1[5]_i_1 
       (.I0(\t1_p1_reg[7] [5]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p2[5]),
        .O(\p22_reg[7] [5]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p1[6]_i_1 
       (.I0(\t1_p1_reg[7] [6]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p2[6]),
        .O(\p22_reg[7] [6]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p1[7]_i_1 
       (.I0(\t1_p1_reg[7] [7]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p2[7]),
        .O(\p22_reg[7] [7]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p3[0]_i_1 
       (.I0(\t1_p3_reg[7] [0]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p3_reg[7]_0 [0]),
        .O(\p24_reg[7] [0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p3[1]_i_1 
       (.I0(\t1_p3_reg[7] [1]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p3_reg[7]_0 [1]),
        .O(\p24_reg[7] [1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p3[2]_i_1 
       (.I0(\t1_p3_reg[7] [2]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p3_reg[7]_0 [2]),
        .O(\p24_reg[7] [2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p3[3]_i_1 
       (.I0(\t1_p3_reg[7] [3]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p3_reg[7]_0 [3]),
        .O(\p24_reg[7] [3]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p3[4]_i_1 
       (.I0(\t1_p3_reg[7] [4]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p3_reg[7]_0 [4]),
        .O(\p24_reg[7] [4]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p3[5]_i_1 
       (.I0(\t1_p3_reg[7] [5]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p3_reg[7]_0 [5]),
        .O(\p24_reg[7] [5]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p3[6]_i_1 
       (.I0(\t1_p3_reg[7] [6]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p3_reg[7]_0 [6]),
        .O(\p24_reg[7] [6]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p3[7]_i_1 
       (.I0(\t1_p3_reg[7] [7]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p3_reg[7]_0 [7]),
        .O(\p24_reg[7] [7]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p7[0]_i_1 
       (.I0(\t1_p7_reg[7] [0]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p8[0]),
        .O(\p42_reg[7] [0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p7[1]_i_1 
       (.I0(\t1_p7_reg[7] [1]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p8[1]),
        .O(\p42_reg[7] [1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p7[2]_i_1 
       (.I0(\t1_p7_reg[7] [2]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p8[2]),
        .O(\p42_reg[7] [2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p7[3]_i_1 
       (.I0(\t1_p7_reg[7] [3]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p8[3]),
        .O(\p42_reg[7] [3]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p7[4]_i_1 
       (.I0(\t1_p7_reg[7] [4]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p8[4]),
        .O(\p42_reg[7] [4]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p7[5]_i_1 
       (.I0(\t1_p7_reg[7] [5]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p8[5]),
        .O(\p42_reg[7] [5]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p7[6]_i_1 
       (.I0(\t1_p7_reg[7] [6]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p8[6]),
        .O(\p42_reg[7] [6]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p7[7]_i_1 
       (.I0(\t1_p7_reg[7] [7]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(t2_p8[7]),
        .O(\p42_reg[7] [7]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p9[0]_i_1 
       (.I0(Q[0]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p9_reg[7] [0]),
        .O(\p44_reg[7] [0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p9[1]_i_1 
       (.I0(Q[1]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p9_reg[7] [1]),
        .O(\p44_reg[7] [1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p9[2]_i_1 
       (.I0(Q[2]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p9_reg[7] [2]),
        .O(\p44_reg[7] [2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p9[3]_i_1 
       (.I0(Q[3]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p9_reg[7] [3]),
        .O(\p44_reg[7] [3]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p9[4]_i_1 
       (.I0(Q[4]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p9_reg[7] [4]),
        .O(\p44_reg[7] [4]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p9[5]_i_1 
       (.I0(Q[5]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p9_reg[7] [5]),
        .O(\p44_reg[7] [5]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p9[6]_i_1 
       (.I0(Q[6]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p9_reg[7] [6]),
        .O(\p44_reg[7] [6]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \t1_p9[7]_i_1 
       (.I0(Q[7]),
        .I1(shift_y_index),
        .I2(shift_x_index),
        .I3(\t1_p9_reg[7] [7]),
        .O(\p44_reg[7] [7]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis_dpc_0_0,axis_dpc_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_dpc_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (axis_aclk,
    axis_aresetn,
    s00_axis_tdata,
    s00_axis_tlast,
    s00_axis_tvalid,
    s00_axis_tuser,
    s00_axis_tready,
    m00_axis_tdata,
    m00_axis_tlast,
    m00_axis_tuser,
    m00_axis_tvalid,
    m00_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_CLK, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF S00_AXIS:M00_AXIS, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [7:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TUSER" *) input s00_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [7:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER" *) output m00_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;

  wire axis_aclk;
  wire axis_aresetn;
  wire [7:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tuser;
  wire m00_axis_tvalid;
  wire [7:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tuser;
  wire s00_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc_v1_0 inst
       (.axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tuser(m00_axis_tuser),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tuser(s00_axis_tuser),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register
   (D,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    axis_aclk,
    E,
    s00_axis_tdata);
  output [7:0]D;
  output [7:0]mem_reg;
  output [7:0]mem_reg_0;
  output [7:0]mem_reg_1;
  input axis_aclk;
  input [0:0]E;
  input [7:0]s00_axis_tdata;

  wire [7:0]D;
  wire [0:0]E;
  wire axis_aclk;
  wire \gen_ram_inst[3].u_ram_n_19 ;
  wire [7:0]in_r;
  wire [7:0]mem_reg;
  wire [7:0]mem_reg_0;
  wire [7:0]mem_reg_1;
  wire [10:0]pos;
  wire pos_r;
  wire \pos_r[0]_i_3_n_0 ;
  wire [11:0]pos_r_reg;
  wire \pos_r_reg[0]_i_2_n_0 ;
  wire \pos_r_reg[0]_i_2_n_1 ;
  wire \pos_r_reg[0]_i_2_n_2 ;
  wire \pos_r_reg[0]_i_2_n_3 ;
  wire \pos_r_reg[0]_i_2_n_4 ;
  wire \pos_r_reg[0]_i_2_n_5 ;
  wire \pos_r_reg[0]_i_2_n_6 ;
  wire \pos_r_reg[0]_i_2_n_7 ;
  wire \pos_r_reg[4]_i_1_n_0 ;
  wire \pos_r_reg[4]_i_1_n_1 ;
  wire \pos_r_reg[4]_i_1_n_2 ;
  wire \pos_r_reg[4]_i_1_n_3 ;
  wire \pos_r_reg[4]_i_1_n_4 ;
  wire \pos_r_reg[4]_i_1_n_5 ;
  wire \pos_r_reg[4]_i_1_n_6 ;
  wire \pos_r_reg[4]_i_1_n_7 ;
  wire \pos_r_reg[8]_i_1_n_1 ;
  wire \pos_r_reg[8]_i_1_n_2 ;
  wire \pos_r_reg[8]_i_1_n_3 ;
  wire \pos_r_reg[8]_i_1_n_4 ;
  wire \pos_r_reg[8]_i_1_n_5 ;
  wire \pos_r_reg[8]_i_1_n_6 ;
  wire \pos_r_reg[8]_i_1_n_7 ;
  wire [7:0]s00_axis_tdata;
  wire [3:3]\NLW_pos_r_reg[8]_i_1_CO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram \gen_ram_inst[0].u_ram 
       (.ADDRARDADDR(pos),
        .D(D),
        .E(E),
        .Q(in_r),
        .axis_aclk(axis_aclk),
        .out(pos_r_reg[11]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_0 \gen_ram_inst[1].u_ram 
       (.ADDRARDADDR(pos),
        .D(D),
        .E(E),
        .axis_aclk(axis_aclk),
        .mem_reg_0(mem_reg),
        .out(pos_r_reg[11]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_1 \gen_ram_inst[2].u_ram 
       (.ADDRARDADDR(pos),
        .E(E),
        .axis_aclk(axis_aclk),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(mem_reg),
        .out(pos_r_reg[11]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_2 \gen_ram_inst[3].u_ram 
       (.ADDRARDADDR(pos),
        .E(E),
        .axis_aclk(axis_aclk),
        .mem_reg_0(mem_reg_1),
        .mem_reg_1(mem_reg_0),
        .out(pos_r_reg),
        .\pos_r_reg[2] (\gen_ram_inst[3].u_ram_n_19 ));
  FDRE \in_r_reg[0] 
       (.C(axis_aclk),
        .CE(E),
        .D(s00_axis_tdata[0]),
        .Q(in_r[0]),
        .R(1'b0));
  FDRE \in_r_reg[1] 
       (.C(axis_aclk),
        .CE(E),
        .D(s00_axis_tdata[1]),
        .Q(in_r[1]),
        .R(1'b0));
  FDRE \in_r_reg[2] 
       (.C(axis_aclk),
        .CE(E),
        .D(s00_axis_tdata[2]),
        .Q(in_r[2]),
        .R(1'b0));
  FDRE \in_r_reg[3] 
       (.C(axis_aclk),
        .CE(E),
        .D(s00_axis_tdata[3]),
        .Q(in_r[3]),
        .R(1'b0));
  FDRE \in_r_reg[4] 
       (.C(axis_aclk),
        .CE(E),
        .D(s00_axis_tdata[4]),
        .Q(in_r[4]),
        .R(1'b0));
  FDRE \in_r_reg[5] 
       (.C(axis_aclk),
        .CE(E),
        .D(s00_axis_tdata[5]),
        .Q(in_r[5]),
        .R(1'b0));
  FDRE \in_r_reg[6] 
       (.C(axis_aclk),
        .CE(E),
        .D(s00_axis_tdata[6]),
        .Q(in_r[6]),
        .R(1'b0));
  FDRE \in_r_reg[7] 
       (.C(axis_aclk),
        .CE(E),
        .D(s00_axis_tdata[7]),
        .Q(in_r[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \pos_r[0]_i_1 
       (.I0(E),
        .I1(\gen_ram_inst[3].u_ram_n_19 ),
        .I2(pos_r_reg[11]),
        .O(pos_r));
  LUT1 #(
    .INIT(2'h1)) 
    \pos_r[0]_i_3 
       (.I0(pos_r_reg[0]),
        .O(\pos_r[0]_i_3_n_0 ));
  FDRE \pos_r_reg[0] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[0]_i_2_n_7 ),
        .Q(pos_r_reg[0]),
        .R(pos_r));
  CARRY4 \pos_r_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pos_r_reg[0]_i_2_n_0 ,\pos_r_reg[0]_i_2_n_1 ,\pos_r_reg[0]_i_2_n_2 ,\pos_r_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pos_r_reg[0]_i_2_n_4 ,\pos_r_reg[0]_i_2_n_5 ,\pos_r_reg[0]_i_2_n_6 ,\pos_r_reg[0]_i_2_n_7 }),
        .S({pos_r_reg[3:1],\pos_r[0]_i_3_n_0 }));
  FDRE \pos_r_reg[10] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[8]_i_1_n_5 ),
        .Q(pos_r_reg[10]),
        .R(pos_r));
  FDRE \pos_r_reg[11] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[8]_i_1_n_4 ),
        .Q(pos_r_reg[11]),
        .R(pos_r));
  FDRE \pos_r_reg[1] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[0]_i_2_n_6 ),
        .Q(pos_r_reg[1]),
        .R(pos_r));
  FDRE \pos_r_reg[2] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[0]_i_2_n_5 ),
        .Q(pos_r_reg[2]),
        .R(pos_r));
  FDRE \pos_r_reg[3] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[0]_i_2_n_4 ),
        .Q(pos_r_reg[3]),
        .R(pos_r));
  FDRE \pos_r_reg[4] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[4]_i_1_n_7 ),
        .Q(pos_r_reg[4]),
        .R(pos_r));
  CARRY4 \pos_r_reg[4]_i_1 
       (.CI(\pos_r_reg[0]_i_2_n_0 ),
        .CO({\pos_r_reg[4]_i_1_n_0 ,\pos_r_reg[4]_i_1_n_1 ,\pos_r_reg[4]_i_1_n_2 ,\pos_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_r_reg[4]_i_1_n_4 ,\pos_r_reg[4]_i_1_n_5 ,\pos_r_reg[4]_i_1_n_6 ,\pos_r_reg[4]_i_1_n_7 }),
        .S(pos_r_reg[7:4]));
  FDRE \pos_r_reg[5] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[4]_i_1_n_6 ),
        .Q(pos_r_reg[5]),
        .R(pos_r));
  FDRE \pos_r_reg[6] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[4]_i_1_n_5 ),
        .Q(pos_r_reg[6]),
        .R(pos_r));
  FDRE \pos_r_reg[7] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[4]_i_1_n_4 ),
        .Q(pos_r_reg[7]),
        .R(pos_r));
  FDRE \pos_r_reg[8] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[8]_i_1_n_7 ),
        .Q(pos_r_reg[8]),
        .R(pos_r));
  CARRY4 \pos_r_reg[8]_i_1 
       (.CI(\pos_r_reg[4]_i_1_n_0 ),
        .CO({\NLW_pos_r_reg[8]_i_1_CO_UNCONNECTED [3],\pos_r_reg[8]_i_1_n_1 ,\pos_r_reg[8]_i_1_n_2 ,\pos_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_r_reg[8]_i_1_n_4 ,\pos_r_reg[8]_i_1_n_5 ,\pos_r_reg[8]_i_1_n_6 ,\pos_r_reg[8]_i_1_n_7 }),
        .S(pos_r_reg[11:8]));
  FDRE \pos_r_reg[9] 
       (.C(axis_aclk),
        .CE(E),
        .D(\pos_r_reg[8]_i_1_n_6 ),
        .Q(pos_r_reg[9]),
        .R(pos_r));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram
   (D,
    axis_aclk,
    E,
    out,
    ADDRARDADDR,
    Q);
  output [7:0]D;
  input axis_aclk;
  input [0:0]E;
  input [0:0]out;
  input [10:0]ADDRARDADDR;
  input [7:0]Q;

  wire [10:0]ADDRARDADDR;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire axis_aclk;
  wire [0:0]out;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "20472" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,out,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axis_aclk),
        .CLKBWRCLK(axis_aclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],D}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(E),
        .ENBWREN(E),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({E,E,E,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "simple_dp_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_0
   (mem_reg_0,
    axis_aclk,
    E,
    out,
    ADDRARDADDR,
    D);
  output [7:0]mem_reg_0;
  input axis_aclk;
  input [0:0]E;
  input [0:0]out;
  input [10:0]ADDRARDADDR;
  input [7:0]D;

  wire [10:0]ADDRARDADDR;
  wire [7:0]D;
  wire [0:0]E;
  wire axis_aclk;
  wire [7:0]mem_reg_0;
  wire [0:0]out;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "20472" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,out,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axis_aclk),
        .CLKBWRCLK(axis_aclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],mem_reg_0}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(E),
        .ENBWREN(E),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({E,E,E,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "simple_dp_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_1
   (mem_reg_0,
    axis_aclk,
    E,
    out,
    ADDRARDADDR,
    mem_reg_1);
  output [7:0]mem_reg_0;
  input axis_aclk;
  input [0:0]E;
  input [0:0]out;
  input [10:0]ADDRARDADDR;
  input [7:0]mem_reg_1;

  wire [10:0]ADDRARDADDR;
  wire [0:0]E;
  wire axis_aclk;
  wire [7:0]mem_reg_0;
  wire [7:0]mem_reg_1;
  wire [0:0]out;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "20472" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,out,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axis_aclk),
        .CLKBWRCLK(axis_aclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],mem_reg_0}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(E),
        .ENBWREN(E),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({E,E,E,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "simple_dp_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_2
   (mem_reg_0,
    ADDRARDADDR,
    \pos_r_reg[2] ,
    axis_aclk,
    E,
    out,
    mem_reg_1);
  output [7:0]mem_reg_0;
  output [10:0]ADDRARDADDR;
  output \pos_r_reg[2] ;
  input axis_aclk;
  input [0:0]E;
  input [11:0]out;
  input [7:0]mem_reg_1;

  wire [10:0]ADDRARDADDR;
  wire [0:0]E;
  wire axis_aclk;
  wire [7:0]mem_reg_0;
  wire [7:0]mem_reg_1;
  wire mem_reg_i_13_n_0;
  wire mem_reg_i_14_n_0;
  wire [11:0]out;
  wire \pos_r_reg[2] ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "20472" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,out[11],ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out[11],ADDRARDADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axis_aclk),
        .CLKBWRCLK(axis_aclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],mem_reg_0}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(E),
        .ENBWREN(E),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({E,E,E,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h4C)) 
    mem_reg_i_1
       (.I0(\pos_r_reg[2] ),
        .I1(out[10]),
        .I2(out[11]),
        .O(ADDRARDADDR[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    mem_reg_i_10
       (.I0(\pos_r_reg[2] ),
        .I1(out[0]),
        .I2(out[9]),
        .I3(out[10]),
        .I4(out[11]),
        .I5(out[1]),
        .O(ADDRARDADDR[1]));
  LUT3 #(
    .INIT(8'h4C)) 
    mem_reg_i_11
       (.I0(\pos_r_reg[2] ),
        .I1(out[0]),
        .I2(out[11]),
        .O(ADDRARDADDR[0]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    mem_reg_i_12
       (.I0(mem_reg_i_13_n_0),
        .I1(mem_reg_i_14_n_0),
        .I2(out[2]),
        .I3(out[3]),
        .I4(out[6]),
        .I5(out[7]),
        .O(\pos_r_reg[2] ));
  LUT2 #(
    .INIT(4'hE)) 
    mem_reg_i_13
       (.I0(out[10]),
        .I1(out[9]),
        .O(mem_reg_i_13_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    mem_reg_i_14
       (.I0(out[1]),
        .I1(out[4]),
        .I2(out[5]),
        .I3(out[8]),
        .O(mem_reg_i_14_n_0));
  LUT3 #(
    .INIT(8'h4C)) 
    mem_reg_i_2
       (.I0(\pos_r_reg[2] ),
        .I1(out[9]),
        .I2(out[11]),
        .O(ADDRARDADDR[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    mem_reg_i_3
       (.I0(\pos_r_reg[2] ),
        .I1(out[0]),
        .I2(out[9]),
        .I3(out[10]),
        .I4(out[11]),
        .I5(out[8]),
        .O(ADDRARDADDR[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    mem_reg_i_4
       (.I0(\pos_r_reg[2] ),
        .I1(out[0]),
        .I2(out[9]),
        .I3(out[10]),
        .I4(out[11]),
        .I5(out[7]),
        .O(ADDRARDADDR[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    mem_reg_i_5
       (.I0(\pos_r_reg[2] ),
        .I1(out[0]),
        .I2(out[9]),
        .I3(out[10]),
        .I4(out[11]),
        .I5(out[6]),
        .O(ADDRARDADDR[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    mem_reg_i_6
       (.I0(\pos_r_reg[2] ),
        .I1(out[0]),
        .I2(out[9]),
        .I3(out[10]),
        .I4(out[11]),
        .I5(out[5]),
        .O(ADDRARDADDR[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    mem_reg_i_7
       (.I0(\pos_r_reg[2] ),
        .I1(out[0]),
        .I2(out[9]),
        .I3(out[10]),
        .I4(out[11]),
        .I5(out[4]),
        .O(ADDRARDADDR[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    mem_reg_i_8
       (.I0(\pos_r_reg[2] ),
        .I1(out[0]),
        .I2(out[9]),
        .I3(out[10]),
        .I4(out[11]),
        .I5(out[3]),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    mem_reg_i_9
       (.I0(\pos_r_reg[2] ),
        .I1(out[0]),
        .I2(out[9]),
        .I3(out[10]),
        .I4(out[11]),
        .I5(out[2]),
        .O(ADDRARDADDR[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
