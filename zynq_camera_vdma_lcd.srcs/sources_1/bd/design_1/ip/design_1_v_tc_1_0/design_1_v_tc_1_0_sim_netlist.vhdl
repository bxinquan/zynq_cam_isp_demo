-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jun  6 21:05:15 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Work/fpga/zynq_camera_vdma_lcd/zynq_camera_vdma_lcd.srcs/sources_1/bd/design_1/ip/design_1_v_tc_1_0/design_1_v_tc_1_0_sim_netlist.vhdl
-- Design      : design_1_v_tc_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_tc_1_0_tc_generator is
  port (
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_reg_0 : out STD_LOGIC;
    active_video_reg_0 : out STD_LOGIC;
    active_chroma_out : out STD_LOGIC;
    reg_update : out STD_LOGIC;
    p_1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_0\ : out STD_LOGIC;
    gen_active_video_d_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fsync_in : in STD_LOGIC;
    \time_control_regs[19]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    core_d_out : in STD_LOGIC;
    clken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    \core_control_regs[0]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    gen_vblank_d : in STD_LOGIC;
    gen_active_video_d : in STD_LOGIC;
    resetn_out : in STD_LOGIC;
    p_0_in0_in : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \time_control_regs[21]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \time_control_regs[22]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \time_control_regs[16]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \time_control_regs[25]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \time_control_regs[24]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \time_control_regs[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_tc_1_0_tc_generator : entity is "tc_generator";
end design_1_v_tc_1_0_tc_generator;

architecture STRUCTURE of design_1_v_tc_1_0_tc_generator is
  signal active_chroma_i_1_n_0 : STD_LOGIC;
  signal active_video0 : STD_LOGIC;
  signal active_video_int_i_1_n_0 : STD_LOGIC;
  signal active_video_int_reg_n_0 : STD_LOGIC;
  signal \^active_video_reg_0\ : STD_LOGIC;
  signal all_cfg_i_1_n_0 : STD_LOGIC;
  signal all_cfg_reg_n_0 : STD_LOGIC;
  signal eqOp0_out : STD_LOGIC;
  signal eqOp10_out : STD_LOGIC;
  signal eqOp11_out : STD_LOGIC;
  signal eqOp12_out : STD_LOGIC;
  signal eqOp13_out : STD_LOGIC;
  signal eqOp14_out : STD_LOGIC;
  signal eqOp1_out : STD_LOGIC;
  signal eqOp2_out : STD_LOGIC;
  signal eqOp3_out : STD_LOGIC;
  signal eqOp4_out : STD_LOGIC;
  signal eqOp5_out : STD_LOGIC;
  signal eqOp6_out : STD_LOGIC;
  signal eqOp7_out : STD_LOGIC;
  signal eqOp8_out : STD_LOGIC;
  signal eqOp9_out : STD_LOGIC;
  signal eqOp_carry_i_1_n_0 : STD_LOGIC;
  signal eqOp_carry_i_2_n_0 : STD_LOGIC;
  signal eqOp_carry_i_3_n_0 : STD_LOGIC;
  signal eqOp_carry_i_4_n_0 : STD_LOGIC;
  signal eqOp_carry_n_1 : STD_LOGIC;
  signal eqOp_carry_n_2 : STD_LOGIC;
  signal eqOp_carry_n_3 : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__10/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__10/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__10/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__11/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__11/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__11/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__12/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__12/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__12/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__13/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__13/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__13/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__14/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__14/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__14/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__15/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__15/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__15/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__16/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__16/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__16/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__6/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__6/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__6/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__7/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__7/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__7/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__9/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__9/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__9/i__carry_n_3\ : STD_LOGIC;
  signal \^fsync_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fsync_out0 : STD_LOGIC;
  signal gen_ce : STD_LOGIC;
  signal \^generate_en_d_reg[1]_srl2___u_tc_top_detect_en_d_reg_r_0_i_1_0\ : STD_LOGIC;
  signal \h_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[0]_i_3_n_0\ : STD_LOGIC;
  signal h_count_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \h_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \h_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \h_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \h_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \h_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \h_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \h_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \h_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \h_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal hblank0 : STD_LOGIC;
  signal hblank_int_i_1_n_0 : STD_LOGIC;
  signal hblank_int_reg_n_0 : STD_LOGIC;
  signal hbp_start : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal hfp_start : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal hsync0 : STD_LOGIC;
  signal hsync_int_i_1_n_0 : STD_LOGIC;
  signal hsync_int_reg_n_0 : STD_LOGIC;
  signal hsync_start : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal htotal : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \htotal[11]_i_1_n_0\ : STD_LOGIC;
  signal htotal_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \htotal_1[11]_i_2_n_0\ : STD_LOGIC;
  signal \htotal_1[11]_i_3_n_0\ : STD_LOGIC;
  signal \htotal_1[11]_i_4_n_0\ : STD_LOGIC;
  signal \htotal_1[11]_i_5_n_0\ : STD_LOGIC;
  signal \htotal_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \htotal_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \htotal_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \htotal_1[7]_i_2_n_0\ : STD_LOGIC;
  signal \htotal_1[7]_i_3_n_0\ : STD_LOGIC;
  signal \htotal_1[7]_i_4_n_0\ : STD_LOGIC;
  signal \htotal_1[7]_i_5_n_0\ : STD_LOGIC;
  signal \htotal_1_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \htotal_1_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \htotal_1_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \htotal_1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \htotal_1_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \htotal_1_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \htotal_1_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \htotal_1_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \htotal_1_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \htotal_1_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \htotal_1_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__12_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__13_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__12_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__13_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__12_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__13_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__12_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__13_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal last_line : STD_LOGIC;
  signal last_line_i_1_n_0 : STD_LOGIC;
  signal line_end : STD_LOGIC;
  signal line_end_i_1_n_0 : STD_LOGIC;
  signal line_end_v : STD_LOGIC;
  signal line_end_v_i_1_n_0 : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_3_in : STD_LOGIC;
  signal \param_cfg_reg_n_0_[4]\ : STD_LOGIC;
  signal sw_enable_d : STD_LOGIC;
  signal sw_enable_d_i_1_n_0 : STD_LOGIC;
  signal v0active_start_hori : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal v0bp_start : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal v0bp_start_hori : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal v0fp_start : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal v0fp_start0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \v0fp_start[11]_i_2_n_0\ : STD_LOGIC;
  signal \v0fp_start[11]_i_3_n_0\ : STD_LOGIC;
  signal \v0fp_start[11]_i_4_n_0\ : STD_LOGIC;
  signal \v0fp_start[4]_i_2_n_0\ : STD_LOGIC;
  signal \v0fp_start[4]_i_3_n_0\ : STD_LOGIC;
  signal \v0fp_start[4]_i_4_n_0\ : STD_LOGIC;
  signal \v0fp_start[4]_i_5_n_0\ : STD_LOGIC;
  signal \v0fp_start[8]_i_2_n_0\ : STD_LOGIC;
  signal \v0fp_start[8]_i_3_n_0\ : STD_LOGIC;
  signal \v0fp_start[8]_i_4_n_0\ : STD_LOGIC;
  signal \v0fp_start[8]_i_5_n_0\ : STD_LOGIC;
  signal v0fp_start_hori : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \v0fp_start_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \v0fp_start_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \v0fp_start_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \v0fp_start_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \v0fp_start_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \v0fp_start_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \v0fp_start_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \v0fp_start_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \v0fp_start_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \v0fp_start_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal v0sync_start : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal v0sync_start_hori : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal v0total : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal v0total0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \v0total[11]_i_2_n_0\ : STD_LOGIC;
  signal \v0total[11]_i_3_n_0\ : STD_LOGIC;
  signal \v0total[11]_i_4_n_0\ : STD_LOGIC;
  signal \v0total[4]_i_2_n_0\ : STD_LOGIC;
  signal \v0total[4]_i_3_n_0\ : STD_LOGIC;
  signal \v0total[4]_i_4_n_0\ : STD_LOGIC;
  signal \v0total[4]_i_5_n_0\ : STD_LOGIC;
  signal \v0total[8]_i_2_n_0\ : STD_LOGIC;
  signal \v0total[8]_i_3_n_0\ : STD_LOGIC;
  signal \v0total[8]_i_4_n_0\ : STD_LOGIC;
  signal \v0total[8]_i_5_n_0\ : STD_LOGIC;
  signal \v0total_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \v0total_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \v0total_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \v0total_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \v0total_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \v0total_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \v0total_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \v0total_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \v0total_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \v0total_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal v_count058_out : STD_LOGIC;
  signal \v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[0]_i_4_n_0\ : STD_LOGIC;
  signal v_count_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \v_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \v_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \v_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \v_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \v_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \v_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \v_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \v_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \v_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \v_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal vblank0 : STD_LOGIC;
  signal vblank_int_i_1_n_0 : STD_LOGIC;
  signal vblank_int_reg_n_0 : STD_LOGIC;
  signal \^vblank_reg_0\ : STD_LOGIC;
  signal vsync0 : STD_LOGIC;
  signal vsync_int_i_1_n_0 : STD_LOGIC;
  signal vsync_int_reg_n_0 : STD_LOGIC;
  signal NLW_eqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__10/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__11/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__12/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__13/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__14/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__15/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__16/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__4/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__6/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__7/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__9/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h_count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_htotal_1_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v0fp_start_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v0fp_start_reg[11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v0total_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v0total_reg[11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v_count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of U_VIDEO_CTRL_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of active_video_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of hblank_i_1 : label is "soft_lutpair1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \v0fp_start_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \v0fp_start_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \v0fp_start_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \v0total_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \v0total_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \v0total_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  active_video_reg_0 <= \^active_video_reg_0\;
  fsync_out(0) <= \^fsync_out\(0);
  \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_0\ <= \^generate_en_d_reg[1]_srl2___u_tc_top_detect_en_d_reg_r_0_i_1_0\;
  vblank_reg_0 <= \^vblank_reg_0\;
U_VIDEO_CTRL_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => \^fsync_out\(0),
      I1 => core_d_out,
      I2 => \genr_control_regs[0]\(0),
      I3 => \genr_control_regs[0]\(1),
      O => reg_update
    );
active_chroma_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[19]\(5),
      O => active_chroma_i_1_n_0
    );
active_chroma_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => active_chroma_i_1_n_0,
      Q => active_chroma_out,
      R => p_3_in
    );
active_video_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \time_control_regs[19]\(4),
      I1 => hblank_int_reg_n_0,
      I2 => active_video_int_reg_n_0,
      O => active_video0
    );
active_video_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F7F7FAA000000"
    )
        port map (
      I0 => gen_ce,
      I1 => eqOp9_out,
      I2 => eqOp1_out,
      I3 => eqOp4_out,
      I4 => eqOp10_out,
      I5 => active_video_int_reg_n_0,
      O => active_video_int_i_1_n_0
    );
active_video_int_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => active_video_int_i_1_n_0,
      Q => active_video_int_reg_n_0,
      S => p_3_in
    );
active_video_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => active_video0,
      Q => \^active_video_reg_0\,
      R => p_3_in
    );
all_cfg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEAE2222"
    )
        port map (
      I0 => all_cfg_reg_n_0,
      I1 => gen_ce,
      I2 => \genr_control_regs[0]\(2),
      I3 => fsync_in,
      I4 => \param_cfg_reg_n_0_[4]\,
      I5 => \htotal[11]_i_1_n_0\,
      O => all_cfg_i_1_n_0
    );
all_cfg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => all_cfg_i_1_n_0,
      Q => all_cfg_reg_n_0,
      R => '0'
    );
eqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp14_out,
      CO(2) => eqOp_carry_n_1,
      CO(1) => eqOp_carry_n_2,
      CO(0) => eqOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_eqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => eqOp_carry_i_1_n_0,
      S(2) => eqOp_carry_i_2_n_0,
      S(1) => eqOp_carry_i_3_n_0,
      S(0) => eqOp_carry_i_4_n_0
    );
eqOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(9),
      I1 => htotal_1(9),
      I2 => htotal_1(11),
      I3 => h_count_reg(11),
      I4 => htotal_1(10),
      I5 => h_count_reg(10),
      O => eqOp_carry_i_1_n_0
    );
eqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => htotal_1(6),
      I2 => htotal_1(8),
      I3 => h_count_reg(8),
      I4 => htotal_1(7),
      I5 => h_count_reg(7),
      O => eqOp_carry_i_2_n_0
    );
eqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => htotal_1(3),
      I2 => htotal_1(5),
      I3 => h_count_reg(5),
      I4 => htotal_1(4),
      I5 => h_count_reg(4),
      O => eqOp_carry_i_3_n_0
    );
eqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => htotal_1(0),
      I2 => htotal_1(2),
      I3 => h_count_reg(2),
      I4 => htotal_1(1),
      I5 => h_count_reg(1),
      O => eqOp_carry_i_4_n_0
    );
\eqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp13_out,
      CO(2) => \eqOp_inferred__0/i__carry_n_1\,
      CO(1) => \eqOp_inferred__0/i__carry_n_2\,
      CO(0) => \eqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\eqOp_inferred__10/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp6_out,
      CO(2) => \eqOp_inferred__10/i__carry_n_1\,
      CO(1) => \eqOp_inferred__10/i__carry_n_2\,
      CO(0) => \eqOp_inferred__10/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__10/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__6_n_0\,
      S(2) => \i__carry_i_2__6_n_0\,
      S(1) => \i__carry_i_3__6_n_0\,
      S(0) => \i__carry_i_4__6_n_0\
    );
\eqOp_inferred__11/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp7_out,
      CO(2) => \eqOp_inferred__11/i__carry_n_1\,
      CO(1) => \eqOp_inferred__11/i__carry_n_2\,
      CO(0) => \eqOp_inferred__11/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__11/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__7_n_0\,
      S(2) => \i__carry_i_2__7_n_0\,
      S(1) => \i__carry_i_3__7_n_0\,
      S(0) => \i__carry_i_4__7_n_0\
    );
\eqOp_inferred__12/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp8_out,
      CO(2) => \eqOp_inferred__12/i__carry_n_1\,
      CO(1) => \eqOp_inferred__12/i__carry_n_2\,
      CO(0) => \eqOp_inferred__12/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__12/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__8_n_0\,
      S(2) => \i__carry_i_2__8_n_0\,
      S(1) => \i__carry_i_3__8_n_0\,
      S(0) => \i__carry_i_4__8_n_0\
    );
\eqOp_inferred__13/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp2_out,
      CO(2) => \eqOp_inferred__13/i__carry_n_1\,
      CO(1) => \eqOp_inferred__13/i__carry_n_2\,
      CO(0) => \eqOp_inferred__13/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__13/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__9_n_0\,
      S(2) => \i__carry_i_2__9_n_0\,
      S(1) => \i__carry_i_3__9_n_0\,
      S(0) => \i__carry_i_4__9_n_0\
    );
\eqOp_inferred__14/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp4_out,
      CO(2) => \eqOp_inferred__14/i__carry_n_1\,
      CO(1) => \eqOp_inferred__14/i__carry_n_2\,
      CO(0) => \eqOp_inferred__14/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__14/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__10_n_0\,
      S(2) => \i__carry_i_2__10_n_0\,
      S(1) => \i__carry_i_3__10_n_0\,
      S(0) => \i__carry_i_4__10_n_0\
    );
\eqOp_inferred__15/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp3_out,
      CO(2) => \eqOp_inferred__15/i__carry_n_1\,
      CO(1) => \eqOp_inferred__15/i__carry_n_2\,
      CO(0) => \eqOp_inferred__15/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__15/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__11_n_0\,
      S(2) => \i__carry_i_2__11_n_0\,
      S(1) => \i__carry_i_3__11_n_0\,
      S(0) => \i__carry_i_4__11_n_0\
    );
\eqOp_inferred__16/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp1_out,
      CO(2) => \eqOp_inferred__16/i__carry_n_1\,
      CO(1) => \eqOp_inferred__16/i__carry_n_2\,
      CO(0) => \eqOp_inferred__16/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__16/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__13_n_0\,
      S(2) => \i__carry_i_2__13_n_0\,
      S(1) => \i__carry_i_3__13_n_0\,
      S(0) => \i__carry_i_4__13_n_0\
    );
\eqOp_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp0_out,
      CO(2) => \eqOp_inferred__2/i__carry_n_1\,
      CO(1) => \eqOp_inferred__2/i__carry_n_2\,
      CO(0) => \eqOp_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\eqOp_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \eqOp_inferred__3/i__carry_n_0\,
      CO(2) => \eqOp_inferred__3/i__carry_n_1\,
      CO(1) => \eqOp_inferred__3/i__carry_n_2\,
      CO(0) => \eqOp_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\eqOp_inferred__4/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp12_out,
      CO(2) => \eqOp_inferred__4/i__carry_n_1\,
      CO(1) => \eqOp_inferred__4/i__carry_n_2\,
      CO(0) => \eqOp_inferred__4/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__4/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__2_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry_i_3__2_n_0\,
      S(0) => \i__carry_i_4__2_n_0\
    );
\eqOp_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp11_out,
      CO(2) => \eqOp_inferred__5/i__carry_n_1\,
      CO(1) => \eqOp_inferred__5/i__carry_n_2\,
      CO(0) => \eqOp_inferred__5/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__3_n_0\,
      S(2) => \i__carry_i_2__3_n_0\,
      S(1) => \i__carry_i_3__3_n_0\,
      S(0) => \i__carry_i_4__3_n_0\
    );
\eqOp_inferred__6/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp9_out,
      CO(2) => \eqOp_inferred__6/i__carry_n_1\,
      CO(1) => \eqOp_inferred__6/i__carry_n_2\,
      CO(0) => \eqOp_inferred__6/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__6/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__12_n_0\,
      S(2) => \i__carry_i_2__12_n_0\,
      S(1) => \i__carry_i_3__12_n_0\,
      S(0) => \i__carry_i_4__12_n_0\
    );
\eqOp_inferred__7/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp10_out,
      CO(2) => \eqOp_inferred__7/i__carry_n_1\,
      CO(1) => \eqOp_inferred__7/i__carry_n_2\,
      CO(0) => \eqOp_inferred__7/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__7/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__4_n_0\,
      S(2) => \i__carry_i_2__4_n_0\,
      S(1) => \i__carry_i_3__4_n_0\,
      S(0) => \i__carry_i_4__4_n_0\
    );
\eqOp_inferred__9/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp5_out,
      CO(2) => \eqOp_inferred__9/i__carry_n_1\,
      CO(1) => \eqOp_inferred__9/i__carry_n_2\,
      CO(0) => \eqOp_inferred__9/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__9/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__5_n_0\,
      S(2) => \i__carry_i_2__5_n_0\,
      S(1) => \i__carry_i_3__5_n_0\,
      S(0) => \i__carry_i_4__5_n_0\
    );
\fsync_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \htotal[11]_i_1_n_0\,
      I1 => all_cfg_reg_n_0,
      O => p_3_in
    );
\fsync_out[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clken,
      I1 => gen_clken,
      O => gen_ce
    );
\fsync_out[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \eqOp_inferred__3/i__carry_n_0\,
      I1 => eqOp0_out,
      O => fsync_out0
    );
\fsync_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => fsync_out0,
      Q => \^fsync_out\(0),
      R => p_3_in
    );
\generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \genr_control_regs[0]\(1),
      I1 => \genr_control_regs[0]\(0),
      I2 => core_d_out,
      O => \^generate_en_d_reg[1]_srl2___u_tc_top_detect_en_d_reg_r_0_i_1_0\
    );
\h_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FFF8FFF8FF"
    )
        port map (
      I0 => \genr_control_regs[0]\(2),
      I1 => fsync_in,
      I2 => \htotal[11]_i_1_n_0\,
      I3 => all_cfg_reg_n_0,
      I4 => gen_ce,
      I5 => line_end,
      O => \h_count[0]_i_1_n_0\
    );
\h_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count_reg(0),
      O => \h_count[0]_i_3_n_0\
    );
\h_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[0]_i_2_n_7\,
      Q => h_count_reg(0),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_count_reg[0]_i_2_n_0\,
      CO(2) => \h_count_reg[0]_i_2_n_1\,
      CO(1) => \h_count_reg[0]_i_2_n_2\,
      CO(0) => \h_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \h_count_reg[0]_i_2_n_4\,
      O(2) => \h_count_reg[0]_i_2_n_5\,
      O(1) => \h_count_reg[0]_i_2_n_6\,
      O(0) => \h_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => h_count_reg(3 downto 1),
      S(0) => \h_count[0]_i_3_n_0\
    );
\h_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[8]_i_1_n_5\,
      Q => h_count_reg(10),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[8]_i_1_n_4\,
      Q => h_count_reg(11),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[0]_i_2_n_6\,
      Q => h_count_reg(1),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[0]_i_2_n_5\,
      Q => h_count_reg(2),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[0]_i_2_n_4\,
      Q => h_count_reg(3),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[4]_i_1_n_7\,
      Q => h_count_reg(4),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[0]_i_2_n_0\,
      CO(3) => \h_count_reg[4]_i_1_n_0\,
      CO(2) => \h_count_reg[4]_i_1_n_1\,
      CO(1) => \h_count_reg[4]_i_1_n_2\,
      CO(0) => \h_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_count_reg[4]_i_1_n_4\,
      O(2) => \h_count_reg[4]_i_1_n_5\,
      O(1) => \h_count_reg[4]_i_1_n_6\,
      O(0) => \h_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => h_count_reg(7 downto 4)
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[4]_i_1_n_6\,
      Q => h_count_reg(5),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[4]_i_1_n_5\,
      Q => h_count_reg(6),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[4]_i_1_n_4\,
      Q => h_count_reg(7),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[8]_i_1_n_7\,
      Q => h_count_reg(8),
      R => \h_count[0]_i_1_n_0\
    );
\h_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[4]_i_1_n_0\,
      CO(3) => \NLW_h_count_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \h_count_reg[8]_i_1_n_1\,
      CO(1) => \h_count_reg[8]_i_1_n_2\,
      CO(0) => \h_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_count_reg[8]_i_1_n_4\,
      O(2) => \h_count_reg[8]_i_1_n_5\,
      O(1) => \h_count_reg[8]_i_1_n_6\,
      O(0) => \h_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => h_count_reg(11 downto 8)
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \h_count_reg[8]_i_1_n_6\,
      Q => h_count_reg(9),
      R => \h_count[0]_i_1_n_0\
    );
hblank_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \time_control_regs[19]\(1),
      I1 => hblank_int_reg_n_0,
      O => hblank0
    );
hblank_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFC0"
    )
        port map (
      I0 => eqOp10_out,
      I1 => eqOp9_out,
      I2 => gen_ce,
      I3 => hblank_int_reg_n_0,
      O => hblank_int_i_1_n_0
    );
hblank_int_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hblank_int_i_1_n_0,
      Q => hblank_int_reg_n_0,
      R => p_3_in
    );
hblank_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => hblank0,
      Q => hblank_out,
      R => p_3_in
    );
\hbp_start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(12),
      Q => hbp_start(0),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(22),
      Q => hbp_start(10),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(23),
      Q => hbp_start(11),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(13),
      Q => hbp_start(1),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(14),
      Q => hbp_start(2),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(15),
      Q => hbp_start(3),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(16),
      Q => hbp_start(4),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(17),
      Q => hbp_start(5),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(18),
      Q => hbp_start(6),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(19),
      Q => hbp_start(7),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(20),
      Q => hbp_start(8),
      R => \htotal[11]_i_1_n_0\
    );
\hbp_start_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(21),
      Q => hbp_start(9),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(0),
      Q => hfp_start(0),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(10),
      Q => hfp_start(10),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(11),
      Q => hfp_start(11),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(1),
      Q => hfp_start(1),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(2),
      Q => hfp_start(2),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(3),
      Q => hfp_start(3),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(4),
      Q => hfp_start(4),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(5),
      Q => hfp_start(5),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(6),
      Q => hfp_start(6),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(7),
      Q => hfp_start(7),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(8),
      Q => hfp_start(8),
      R => \htotal[11]_i_1_n_0\
    );
\hfp_start_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[16]\(9),
      Q => hfp_start(9),
      R => \htotal[11]_i_1_n_0\
    );
hsync_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \time_control_regs[19]\(3),
      I1 => hsync_int_reg_n_0,
      O => hsync0
    );
hsync_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4CCFFFFFFFF"
    )
        port map (
      I0 => eqOp12_out,
      I1 => hsync_int_reg_n_0,
      I2 => eqOp11_out,
      I3 => gen_ce,
      I4 => \htotal[11]_i_1_n_0\,
      I5 => all_cfg_reg_n_0,
      O => hsync_int_i_1_n_0
    );
hsync_int_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hsync_int_i_1_n_0,
      Q => hsync_int_reg_n_0,
      R => '0'
    );
hsync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => hsync0,
      Q => hsync_out,
      R => p_3_in
    );
\hsync_start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(0),
      Q => hsync_start(0),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(10),
      Q => hsync_start(10),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(11),
      Q => hsync_start(11),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(1),
      Q => hsync_start(1),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(2),
      Q => hsync_start(2),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(3),
      Q => hsync_start(3),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(4),
      Q => hsync_start(4),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(5),
      Q => hsync_start(5),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(6),
      Q => hsync_start(6),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(7),
      Q => hsync_start(7),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(8),
      Q => hsync_start(8),
      R => \htotal[11]_i_1_n_0\
    );
\hsync_start_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[22]\(9),
      Q => hsync_start(9),
      R => \htotal[11]_i_1_n_0\
    );
\htotal[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => resetn_out,
      I1 => sw_enable_d,
      O => \htotal[11]_i_1_n_0\
    );
\htotal_1[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(11),
      O => \htotal_1[11]_i_2_n_0\
    );
\htotal_1[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(10),
      O => \htotal_1[11]_i_3_n_0\
    );
\htotal_1[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(9),
      O => \htotal_1[11]_i_4_n_0\
    );
\htotal_1[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(8),
      O => \htotal_1[11]_i_5_n_0\
    );
\htotal_1[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(3),
      O => \htotal_1[3]_i_2_n_0\
    );
\htotal_1[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(2),
      O => \htotal_1[3]_i_3_n_0\
    );
\htotal_1[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(1),
      O => \htotal_1[3]_i_4_n_0\
    );
\htotal_1[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(7),
      O => \htotal_1[7]_i_2_n_0\
    );
\htotal_1[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(6),
      O => \htotal_1[7]_i_3_n_0\
    );
\htotal_1[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(5),
      O => \htotal_1[7]_i_4_n_0\
    );
\htotal_1[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => htotal(4),
      O => \htotal_1[7]_i_5_n_0\
    );
\htotal_1_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(0),
      Q => htotal_1(0),
      S => p_3_in
    );
\htotal_1_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(10),
      Q => htotal_1(10),
      S => p_3_in
    );
\htotal_1_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(11),
      Q => htotal_1(11),
      S => p_3_in
    );
\htotal_1_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \htotal_1_reg[7]_i_1_n_0\,
      CO(3) => \NLW_htotal_1_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \htotal_1_reg[11]_i_1_n_1\,
      CO(1) => \htotal_1_reg[11]_i_1_n_2\,
      CO(0) => \htotal_1_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => htotal(10 downto 8),
      O(3 downto 0) => minusOp(11 downto 8),
      S(3) => \htotal_1[11]_i_2_n_0\,
      S(2) => \htotal_1[11]_i_3_n_0\,
      S(1) => \htotal_1[11]_i_4_n_0\,
      S(0) => \htotal_1[11]_i_5_n_0\
    );
\htotal_1_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(1),
      Q => htotal_1(1),
      S => p_3_in
    );
\htotal_1_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(2),
      Q => htotal_1(2),
      S => p_3_in
    );
\htotal_1_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(3),
      Q => htotal_1(3),
      S => p_3_in
    );
\htotal_1_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \htotal_1_reg[3]_i_1_n_0\,
      CO(2) => \htotal_1_reg[3]_i_1_n_1\,
      CO(1) => \htotal_1_reg[3]_i_1_n_2\,
      CO(0) => \htotal_1_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => htotal(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => minusOp(3 downto 0),
      S(3) => \htotal_1[3]_i_2_n_0\,
      S(2) => \htotal_1[3]_i_3_n_0\,
      S(1) => \htotal_1[3]_i_4_n_0\,
      S(0) => htotal(0)
    );
\htotal_1_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(4),
      Q => htotal_1(4),
      S => p_3_in
    );
\htotal_1_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(5),
      Q => htotal_1(5),
      S => p_3_in
    );
\htotal_1_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(6),
      Q => htotal_1(6),
      S => p_3_in
    );
\htotal_1_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(7),
      Q => htotal_1(7),
      S => p_3_in
    );
\htotal_1_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \htotal_1_reg[3]_i_1_n_0\,
      CO(3) => \htotal_1_reg[7]_i_1_n_0\,
      CO(2) => \htotal_1_reg[7]_i_1_n_1\,
      CO(1) => \htotal_1_reg[7]_i_1_n_2\,
      CO(0) => \htotal_1_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => htotal(7 downto 4),
      O(3 downto 0) => minusOp(7 downto 4),
      S(3) => \htotal_1[7]_i_2_n_0\,
      S(2) => \htotal_1[7]_i_3_n_0\,
      S(1) => \htotal_1[7]_i_4_n_0\,
      S(0) => \htotal_1[7]_i_5_n_0\
    );
\htotal_1_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(8),
      Q => htotal_1(8),
      S => p_3_in
    );
\htotal_1_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => gen_ce,
      D => minusOp(9),
      Q => htotal_1(9),
      S => p_3_in
    );
\htotal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(0),
      Q => htotal(0),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(10),
      Q => htotal(10),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(11),
      Q => htotal(11),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(1),
      Q => htotal(1),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(2),
      Q => htotal(2),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(3),
      Q => htotal(3),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(4),
      Q => htotal(4),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(5),
      Q => htotal(5),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(6),
      Q => htotal(6),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(7),
      Q => htotal(7),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(8),
      Q => htotal(8),
      R => \htotal[11]_i_1_n_0\
    );
\htotal_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => D(9),
      Q => htotal(9),
      R => \htotal[11]_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(9),
      I1 => v0total(9),
      I2 => v0total(11),
      I3 => v_count_reg(11),
      I4 => v0total(10),
      I5 => v_count_reg(10),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(9),
      I1 => \core_control_regs[0]\(9),
      I2 => \core_control_regs[0]\(11),
      I3 => h_count_reg(11),
      I4 => \core_control_regs[0]\(10),
      I5 => h_count_reg(10),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(9),
      I1 => \core_control_regs[0]\(21),
      I2 => \core_control_regs[0]\(23),
      I3 => v_count_reg(11),
      I4 => \core_control_regs[0]\(22),
      I5 => v_count_reg(10),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(9),
      I1 => v0fp_start(9),
      I2 => v0fp_start(11),
      I3 => v_count_reg(11),
      I4 => v0fp_start(10),
      I5 => v_count_reg(10),
      O => \i__carry_i_1__10_n_0\
    );
\i__carry_i_1__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(9),
      I1 => v0fp_start_hori(9),
      I2 => v0fp_start_hori(11),
      I3 => h_count_reg(11),
      I4 => v0fp_start_hori(10),
      I5 => h_count_reg(10),
      O => \i__carry_i_1__11_n_0\
    );
\i__carry_i_1__12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => h_count_reg(11),
      I1 => h_count_reg(10),
      I2 => h_count_reg(9),
      O => \i__carry_i_1__12_n_0\
    );
\i__carry_i_1__13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => v_count_reg(11),
      I1 => v_count_reg(10),
      I2 => v_count_reg(9),
      O => \i__carry_i_1__13_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(9),
      I1 => hsync_start(9),
      I2 => hsync_start(11),
      I3 => h_count_reg(11),
      I4 => hsync_start(10),
      I5 => h_count_reg(10),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(9),
      I1 => hbp_start(9),
      I2 => hbp_start(11),
      I3 => h_count_reg(11),
      I4 => hbp_start(10),
      I5 => h_count_reg(10),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(9),
      I1 => hfp_start(9),
      I2 => hfp_start(11),
      I3 => h_count_reg(11),
      I4 => hfp_start(10),
      I5 => h_count_reg(10),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(9),
      I1 => v0bp_start_hori(9),
      I2 => v0bp_start_hori(11),
      I3 => h_count_reg(11),
      I4 => v0bp_start_hori(10),
      I5 => h_count_reg(10),
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(9),
      I1 => v0bp_start(9),
      I2 => v0bp_start(11),
      I3 => v_count_reg(11),
      I4 => v0bp_start(10),
      I5 => v_count_reg(10),
      O => \i__carry_i_1__6_n_0\
    );
\i__carry_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(9),
      I1 => v0sync_start_hori(9),
      I2 => v0sync_start_hori(11),
      I3 => h_count_reg(11),
      I4 => v0sync_start_hori(10),
      I5 => h_count_reg(10),
      O => \i__carry_i_1__7_n_0\
    );
\i__carry_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(9),
      I1 => v0sync_start(9),
      I2 => v0sync_start(11),
      I3 => v_count_reg(11),
      I4 => v0sync_start(10),
      I5 => v_count_reg(10),
      O => \i__carry_i_1__8_n_0\
    );
\i__carry_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(9),
      I1 => v0active_start_hori(9),
      I2 => v0active_start_hori(11),
      I3 => h_count_reg(11),
      I4 => v0active_start_hori(10),
      I5 => h_count_reg(10),
      O => \i__carry_i_1__9_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(6),
      I1 => v0total(6),
      I2 => v0total(8),
      I3 => v_count_reg(8),
      I4 => v0total(7),
      I5 => v_count_reg(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => \core_control_regs[0]\(6),
      I2 => \core_control_regs[0]\(8),
      I3 => h_count_reg(8),
      I4 => \core_control_regs[0]\(7),
      I5 => h_count_reg(7),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(6),
      I1 => \core_control_regs[0]\(18),
      I2 => \core_control_regs[0]\(20),
      I3 => v_count_reg(8),
      I4 => \core_control_regs[0]\(19),
      I5 => v_count_reg(7),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(6),
      I1 => v0fp_start(6),
      I2 => v0fp_start(8),
      I3 => v_count_reg(8),
      I4 => v0fp_start(7),
      I5 => v_count_reg(7),
      O => \i__carry_i_2__10_n_0\
    );
\i__carry_i_2__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => v0fp_start_hori(6),
      I2 => v0fp_start_hori(8),
      I3 => h_count_reg(8),
      I4 => v0fp_start_hori(7),
      I5 => h_count_reg(7),
      O => \i__carry_i_2__11_n_0\
    );
\i__carry_i_2__12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => h_count_reg(8),
      I1 => h_count_reg(7),
      I2 => h_count_reg(6),
      O => \i__carry_i_2__12_n_0\
    );
\i__carry_i_2__13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => v_count_reg(8),
      I1 => v_count_reg(7),
      I2 => v_count_reg(6),
      O => \i__carry_i_2__13_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => hsync_start(6),
      I2 => hsync_start(8),
      I3 => h_count_reg(8),
      I4 => hsync_start(7),
      I5 => h_count_reg(7),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => hbp_start(6),
      I2 => hbp_start(8),
      I3 => h_count_reg(8),
      I4 => hbp_start(7),
      I5 => h_count_reg(7),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => hfp_start(6),
      I2 => hfp_start(8),
      I3 => h_count_reg(8),
      I4 => hfp_start(7),
      I5 => h_count_reg(7),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => v0bp_start_hori(6),
      I2 => v0bp_start_hori(8),
      I3 => h_count_reg(8),
      I4 => v0bp_start_hori(7),
      I5 => h_count_reg(7),
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(6),
      I1 => v0bp_start(6),
      I2 => v0bp_start(8),
      I3 => v_count_reg(8),
      I4 => v0bp_start(7),
      I5 => v_count_reg(7),
      O => \i__carry_i_2__6_n_0\
    );
\i__carry_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => v0sync_start_hori(6),
      I2 => v0sync_start_hori(8),
      I3 => h_count_reg(8),
      I4 => v0sync_start_hori(7),
      I5 => h_count_reg(7),
      O => \i__carry_i_2__7_n_0\
    );
\i__carry_i_2__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(6),
      I1 => v0sync_start(6),
      I2 => v0sync_start(8),
      I3 => v_count_reg(8),
      I4 => v0sync_start(7),
      I5 => v_count_reg(7),
      O => \i__carry_i_2__8_n_0\
    );
\i__carry_i_2__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => v0active_start_hori(6),
      I2 => v0active_start_hori(8),
      I3 => h_count_reg(8),
      I4 => v0active_start_hori(7),
      I5 => h_count_reg(7),
      O => \i__carry_i_2__9_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(3),
      I1 => v0total(3),
      I2 => v0total(5),
      I3 => v_count_reg(5),
      I4 => v0total(4),
      I5 => v_count_reg(4),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => \core_control_regs[0]\(3),
      I2 => \core_control_regs[0]\(5),
      I3 => h_count_reg(5),
      I4 => \core_control_regs[0]\(4),
      I5 => h_count_reg(4),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(3),
      I1 => \core_control_regs[0]\(15),
      I2 => \core_control_regs[0]\(17),
      I3 => v_count_reg(5),
      I4 => \core_control_regs[0]\(16),
      I5 => v_count_reg(4),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(3),
      I1 => v0fp_start(3),
      I2 => v0fp_start(5),
      I3 => v_count_reg(5),
      I4 => v0fp_start(4),
      I5 => v_count_reg(4),
      O => \i__carry_i_3__10_n_0\
    );
\i__carry_i_3__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => v0fp_start_hori(3),
      I2 => v0fp_start_hori(5),
      I3 => h_count_reg(5),
      I4 => v0fp_start_hori(4),
      I5 => h_count_reg(4),
      O => \i__carry_i_3__11_n_0\
    );
\i__carry_i_3__12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => h_count_reg(5),
      I1 => h_count_reg(4),
      I2 => h_count_reg(3),
      O => \i__carry_i_3__12_n_0\
    );
\i__carry_i_3__13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => v_count_reg(5),
      I1 => v_count_reg(4),
      I2 => v_count_reg(3),
      O => \i__carry_i_3__13_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => hsync_start(3),
      I2 => hsync_start(5),
      I3 => h_count_reg(5),
      I4 => hsync_start(4),
      I5 => h_count_reg(4),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => hbp_start(3),
      I2 => hbp_start(5),
      I3 => h_count_reg(5),
      I4 => hbp_start(4),
      I5 => h_count_reg(4),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => hfp_start(3),
      I2 => hfp_start(5),
      I3 => h_count_reg(5),
      I4 => hfp_start(4),
      I5 => h_count_reg(4),
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => v0bp_start_hori(3),
      I2 => v0bp_start_hori(5),
      I3 => h_count_reg(5),
      I4 => v0bp_start_hori(4),
      I5 => h_count_reg(4),
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(3),
      I1 => v0bp_start(3),
      I2 => v0bp_start(5),
      I3 => v_count_reg(5),
      I4 => v0bp_start(4),
      I5 => v_count_reg(4),
      O => \i__carry_i_3__6_n_0\
    );
\i__carry_i_3__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => v0sync_start_hori(3),
      I2 => v0sync_start_hori(5),
      I3 => h_count_reg(5),
      I4 => v0sync_start_hori(4),
      I5 => h_count_reg(4),
      O => \i__carry_i_3__7_n_0\
    );
\i__carry_i_3__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(3),
      I1 => v0sync_start(3),
      I2 => v0sync_start(5),
      I3 => v_count_reg(5),
      I4 => v0sync_start(4),
      I5 => v_count_reg(4),
      O => \i__carry_i_3__8_n_0\
    );
\i__carry_i_3__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => v0active_start_hori(3),
      I2 => v0active_start_hori(5),
      I3 => h_count_reg(5),
      I4 => v0active_start_hori(4),
      I5 => h_count_reg(4),
      O => \i__carry_i_3__9_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(0),
      I1 => v0total(0),
      I2 => v0total(2),
      I3 => v_count_reg(2),
      I4 => v0total(1),
      I5 => v_count_reg(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => \core_control_regs[0]\(0),
      I2 => \core_control_regs[0]\(2),
      I3 => h_count_reg(2),
      I4 => \core_control_regs[0]\(1),
      I5 => h_count_reg(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(0),
      I1 => \core_control_regs[0]\(12),
      I2 => \core_control_regs[0]\(14),
      I3 => v_count_reg(2),
      I4 => \core_control_regs[0]\(13),
      I5 => v_count_reg(1),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(0),
      I1 => v0fp_start(0),
      I2 => v0fp_start(2),
      I3 => v_count_reg(2),
      I4 => v0fp_start(1),
      I5 => v_count_reg(1),
      O => \i__carry_i_4__10_n_0\
    );
\i__carry_i_4__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => v0fp_start_hori(0),
      I2 => v0fp_start_hori(2),
      I3 => h_count_reg(2),
      I4 => v0fp_start_hori(1),
      I5 => h_count_reg(1),
      O => \i__carry_i_4__11_n_0\
    );
\i__carry_i_4__12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => h_count_reg(2),
      I1 => h_count_reg(1),
      I2 => h_count_reg(0),
      O => \i__carry_i_4__12_n_0\
    );
\i__carry_i_4__13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => v_count_reg(2),
      I1 => v_count_reg(1),
      I2 => v_count_reg(0),
      O => \i__carry_i_4__13_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => hsync_start(0),
      I2 => hsync_start(2),
      I3 => h_count_reg(2),
      I4 => hsync_start(1),
      I5 => h_count_reg(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => hbp_start(0),
      I2 => hbp_start(2),
      I3 => h_count_reg(2),
      I4 => hbp_start(1),
      I5 => h_count_reg(1),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => hfp_start(0),
      I2 => hfp_start(2),
      I3 => h_count_reg(2),
      I4 => hfp_start(1),
      I5 => h_count_reg(1),
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => v0bp_start_hori(0),
      I2 => v0bp_start_hori(2),
      I3 => h_count_reg(2),
      I4 => v0bp_start_hori(1),
      I5 => h_count_reg(1),
      O => \i__carry_i_4__5_n_0\
    );
\i__carry_i_4__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(0),
      I1 => v0bp_start(0),
      I2 => v0bp_start(2),
      I3 => v_count_reg(2),
      I4 => v0bp_start(1),
      I5 => v_count_reg(1),
      O => \i__carry_i_4__6_n_0\
    );
\i__carry_i_4__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => v0sync_start_hori(0),
      I2 => v0sync_start_hori(2),
      I3 => h_count_reg(2),
      I4 => v0sync_start_hori(1),
      I5 => h_count_reg(1),
      O => \i__carry_i_4__7_n_0\
    );
\i__carry_i_4__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_count_reg(0),
      I1 => v0sync_start(0),
      I2 => v0sync_start(2),
      I3 => v_count_reg(2),
      I4 => v0sync_start(1),
      I5 => v_count_reg(1),
      O => \i__carry_i_4__8_n_0\
    );
\i__carry_i_4__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => v0active_start_hori(0),
      I2 => v0active_start_hori(2),
      I3 => h_count_reg(2),
      I4 => v0active_start_hori(1),
      I5 => h_count_reg(1),
      O => \i__carry_i_4__9_n_0\
    );
\intr_status_int[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24000000"
    )
        port map (
      I0 => \time_control_regs[19]\(4),
      I1 => gen_active_video_d,
      I2 => \^active_video_reg_0\,
      I3 => p_0_in0_in,
      I4 => resetn_out,
      O => gen_active_video_d_reg
    );
\intr_status_int[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2424FF2424FF2424"
    )
        port map (
      I0 => \time_control_regs[19]\(0),
      I1 => gen_vblank_d,
      I2 => \^vblank_reg_0\,
      I3 => \^active_video_reg_0\,
      I4 => gen_active_video_d,
      I5 => \time_control_regs[19]\(4),
      O => p_1_out(0)
    );
last_line_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E2E2E2"
    )
        port map (
      I0 => last_line,
      I1 => gen_ce,
      I2 => eqOp13_out,
      I3 => \genr_control_regs[0]\(2),
      I4 => fsync_in,
      I5 => p_3_in,
      O => last_line_i_1_n_0
    );
last_line_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_line_i_1_n_0,
      Q => last_line,
      R => '0'
    );
line_end_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002C002C002C"
    )
        port map (
      I0 => eqOp14_out,
      I1 => line_end,
      I2 => gen_ce,
      I3 => p_3_in,
      I4 => fsync_in,
      I5 => \genr_control_regs[0]\(2),
      O => line_end_i_1_n_0
    );
line_end_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => line_end_i_1_n_0,
      Q => line_end,
      R => '0'
    );
line_end_v_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002C002C002C"
    )
        port map (
      I0 => eqOp14_out,
      I1 => line_end_v,
      I2 => gen_ce,
      I3 => p_3_in,
      I4 => fsync_in,
      I5 => \genr_control_regs[0]\(2),
      O => line_end_v_i_1_n_0
    );
line_end_v_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => line_end_v_i_1_n_0,
      Q => line_end_v,
      R => '0'
    );
\param_cfg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => '1',
      Q => \param_cfg_reg_n_0_[4]\,
      R => \htotal[11]_i_1_n_0\
    );
sw_enable_d_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A0000"
    )
        port map (
      I0 => sw_enable_d,
      I1 => line_end_v,
      I2 => last_line,
      I3 => \^generate_en_d_reg[1]_srl2___u_tc_top_detect_en_d_reg_r_0_i_1_0\,
      I4 => resetn_out,
      O => sw_enable_d_i_1_n_0
    );
sw_enable_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw_enable_d_i_1_n_0,
      Q => sw_enable_d,
      R => '0'
    );
\v0active_start_hori_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(12),
      Q => v0active_start_hori(0),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(22),
      Q => v0active_start_hori(10),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(23),
      Q => v0active_start_hori(11),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(13),
      Q => v0active_start_hori(1),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(14),
      Q => v0active_start_hori(2),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(15),
      Q => v0active_start_hori(3),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(16),
      Q => v0active_start_hori(4),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(17),
      Q => v0active_start_hori(5),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(18),
      Q => v0active_start_hori(6),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(19),
      Q => v0active_start_hori(7),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(20),
      Q => v0active_start_hori(8),
      R => \htotal[11]_i_1_n_0\
    );
\v0active_start_hori_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(21),
      Q => v0active_start_hori(9),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(12),
      Q => v0bp_start_hori(0),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(22),
      Q => v0bp_start_hori(10),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(23),
      Q => v0bp_start_hori(11),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(13),
      Q => v0bp_start_hori(1),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(14),
      Q => v0bp_start_hori(2),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(15),
      Q => v0bp_start_hori(3),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(16),
      Q => v0bp_start_hori(4),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(17),
      Q => v0bp_start_hori(5),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(18),
      Q => v0bp_start_hori(6),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(19),
      Q => v0bp_start_hori(7),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(20),
      Q => v0bp_start_hori(8),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_hori_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(21),
      Q => v0bp_start_hori(9),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(12),
      Q => v0bp_start(0),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(22),
      Q => v0bp_start(10),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(23),
      Q => v0bp_start(11),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(13),
      Q => v0bp_start(1),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(14),
      Q => v0bp_start(2),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(15),
      Q => v0bp_start(3),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(16),
      Q => v0bp_start(4),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(17),
      Q => v0bp_start(5),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(18),
      Q => v0bp_start(6),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(19),
      Q => v0bp_start(7),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(20),
      Q => v0bp_start(8),
      R => \htotal[11]_i_1_n_0\
    );
\v0bp_start_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(21),
      Q => v0bp_start(9),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(12),
      O => v0fp_start0_in(0)
    );
\v0fp_start[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(23),
      O => \v0fp_start[11]_i_2_n_0\
    );
\v0fp_start[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(22),
      O => \v0fp_start[11]_i_3_n_0\
    );
\v0fp_start[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(21),
      O => \v0fp_start[11]_i_4_n_0\
    );
\v0fp_start[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(16),
      O => \v0fp_start[4]_i_2_n_0\
    );
\v0fp_start[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(15),
      O => \v0fp_start[4]_i_3_n_0\
    );
\v0fp_start[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(14),
      O => \v0fp_start[4]_i_4_n_0\
    );
\v0fp_start[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(13),
      O => \v0fp_start[4]_i_5_n_0\
    );
\v0fp_start[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(20),
      O => \v0fp_start[8]_i_2_n_0\
    );
\v0fp_start[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(19),
      O => \v0fp_start[8]_i_3_n_0\
    );
\v0fp_start[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(18),
      O => \v0fp_start[8]_i_4_n_0\
    );
\v0fp_start[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[16]\(17),
      O => \v0fp_start[8]_i_5_n_0\
    );
\v0fp_start_hori_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(0),
      Q => v0fp_start_hori(0),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(10),
      Q => v0fp_start_hori(10),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(11),
      Q => v0fp_start_hori(11),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(1),
      Q => v0fp_start_hori(1),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(2),
      Q => v0fp_start_hori(2),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(3),
      Q => v0fp_start_hori(3),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(4),
      Q => v0fp_start_hori(4),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(5),
      Q => v0fp_start_hori(5),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(6),
      Q => v0fp_start_hori(6),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(7),
      Q => v0fp_start_hori(7),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(8),
      Q => v0fp_start_hori(8),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_hori_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[23]\(9),
      Q => v0fp_start_hori(9),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(0),
      Q => v0fp_start(0),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(10),
      Q => v0fp_start(10),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(11),
      Q => v0fp_start(11),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0fp_start_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_v0fp_start_reg[11]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v0fp_start_reg[11]_i_1_n_2\,
      CO(0) => \v0fp_start_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \time_control_regs[16]\(22 downto 21),
      O(3) => \NLW_v0fp_start_reg[11]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => v0fp_start0_in(11 downto 9),
      S(3) => '0',
      S(2) => \v0fp_start[11]_i_2_n_0\,
      S(1) => \v0fp_start[11]_i_3_n_0\,
      S(0) => \v0fp_start[11]_i_4_n_0\
    );
\v0fp_start_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(1),
      Q => v0fp_start(1),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(2),
      Q => v0fp_start(2),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(3),
      Q => v0fp_start(3),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(4),
      Q => v0fp_start(4),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v0fp_start_reg[4]_i_1_n_0\,
      CO(2) => \v0fp_start_reg[4]_i_1_n_1\,
      CO(1) => \v0fp_start_reg[4]_i_1_n_2\,
      CO(0) => \v0fp_start_reg[4]_i_1_n_3\,
      CYINIT => \time_control_regs[16]\(12),
      DI(3 downto 0) => \time_control_regs[16]\(16 downto 13),
      O(3 downto 0) => v0fp_start0_in(4 downto 1),
      S(3) => \v0fp_start[4]_i_2_n_0\,
      S(2) => \v0fp_start[4]_i_3_n_0\,
      S(1) => \v0fp_start[4]_i_4_n_0\,
      S(0) => \v0fp_start[4]_i_5_n_0\
    );
\v0fp_start_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(5),
      Q => v0fp_start(5),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(6),
      Q => v0fp_start(6),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(7),
      Q => v0fp_start(7),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(8),
      Q => v0fp_start(8),
      R => \htotal[11]_i_1_n_0\
    );
\v0fp_start_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0fp_start_reg[4]_i_1_n_0\,
      CO(3) => \v0fp_start_reg[8]_i_1_n_0\,
      CO(2) => \v0fp_start_reg[8]_i_1_n_1\,
      CO(1) => \v0fp_start_reg[8]_i_1_n_2\,
      CO(0) => \v0fp_start_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \time_control_regs[16]\(20 downto 17),
      O(3 downto 0) => v0fp_start0_in(8 downto 5),
      S(3) => \v0fp_start[8]_i_2_n_0\,
      S(2) => \v0fp_start[8]_i_3_n_0\,
      S(1) => \v0fp_start[8]_i_4_n_0\,
      S(0) => \v0fp_start[8]_i_5_n_0\
    );
\v0fp_start_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0fp_start0_in(9),
      Q => v0fp_start(9),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(0),
      Q => v0sync_start_hori(0),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(10),
      Q => v0sync_start_hori(10),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(11),
      Q => v0sync_start_hori(11),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(1),
      Q => v0sync_start_hori(1),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(2),
      Q => v0sync_start_hori(2),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(3),
      Q => v0sync_start_hori(3),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(4),
      Q => v0sync_start_hori(4),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(5),
      Q => v0sync_start_hori(5),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(6),
      Q => v0sync_start_hori(6),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(7),
      Q => v0sync_start_hori(7),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(8),
      Q => v0sync_start_hori(8),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_hori_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[25]\(9),
      Q => v0sync_start_hori(9),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(0),
      Q => v0sync_start(0),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(10),
      Q => v0sync_start(10),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(11),
      Q => v0sync_start(11),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(1),
      Q => v0sync_start(1),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(2),
      Q => v0sync_start(2),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(3),
      Q => v0sync_start(3),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(4),
      Q => v0sync_start(4),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(5),
      Q => v0sync_start(5),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(6),
      Q => v0sync_start(6),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(7),
      Q => v0sync_start(7),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(8),
      Q => v0sync_start(8),
      R => \htotal[11]_i_1_n_0\
    );
\v0sync_start_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => \time_control_regs[24]\(9),
      Q => v0sync_start(9),
      R => \htotal[11]_i_1_n_0\
    );
\v0total[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(0),
      O => v0total0_in(0)
    );
\v0total[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(11),
      O => \v0total[11]_i_2_n_0\
    );
\v0total[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(10),
      O => \v0total[11]_i_3_n_0\
    );
\v0total[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(9),
      O => \v0total[11]_i_4_n_0\
    );
\v0total[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(4),
      O => \v0total[4]_i_2_n_0\
    );
\v0total[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(3),
      O => \v0total[4]_i_3_n_0\
    );
\v0total[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(2),
      O => \v0total[4]_i_4_n_0\
    );
\v0total[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(1),
      O => \v0total[4]_i_5_n_0\
    );
\v0total[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(8),
      O => \v0total[8]_i_2_n_0\
    );
\v0total[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(7),
      O => \v0total[8]_i_3_n_0\
    );
\v0total[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(6),
      O => \v0total[8]_i_4_n_0\
    );
\v0total[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[21]\(5),
      O => \v0total[8]_i_5_n_0\
    );
\v0total_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(0),
      Q => v0total(0),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(10),
      Q => v0total(10),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(11),
      Q => v0total(11),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0total_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_v0total_reg[11]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v0total_reg[11]_i_1_n_2\,
      CO(0) => \v0total_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \time_control_regs[21]\(10 downto 9),
      O(3) => \NLW_v0total_reg[11]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => v0total0_in(11 downto 9),
      S(3) => '0',
      S(2) => \v0total[11]_i_2_n_0\,
      S(1) => \v0total[11]_i_3_n_0\,
      S(0) => \v0total[11]_i_4_n_0\
    );
\v0total_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(1),
      Q => v0total(1),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(2),
      Q => v0total(2),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(3),
      Q => v0total(3),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(4),
      Q => v0total(4),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v0total_reg[4]_i_1_n_0\,
      CO(2) => \v0total_reg[4]_i_1_n_1\,
      CO(1) => \v0total_reg[4]_i_1_n_2\,
      CO(0) => \v0total_reg[4]_i_1_n_3\,
      CYINIT => \time_control_regs[21]\(0),
      DI(3 downto 0) => \time_control_regs[21]\(4 downto 1),
      O(3 downto 0) => v0total0_in(4 downto 1),
      S(3) => \v0total[4]_i_2_n_0\,
      S(2) => \v0total[4]_i_3_n_0\,
      S(1) => \v0total[4]_i_4_n_0\,
      S(0) => \v0total[4]_i_5_n_0\
    );
\v0total_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(5),
      Q => v0total(5),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(6),
      Q => v0total(6),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(7),
      Q => v0total(7),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(8),
      Q => v0total(8),
      R => \htotal[11]_i_1_n_0\
    );
\v0total_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0total_reg[4]_i_1_n_0\,
      CO(3) => \v0total_reg[8]_i_1_n_0\,
      CO(2) => \v0total_reg[8]_i_1_n_1\,
      CO(1) => \v0total_reg[8]_i_1_n_2\,
      CO(0) => \v0total_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \time_control_regs[21]\(8 downto 5),
      O(3 downto 0) => v0total0_in(8 downto 5),
      S(3) => \v0total[8]_i_2_n_0\,
      S(2) => \v0total[8]_i_3_n_0\,
      S(1) => \v0total[8]_i_4_n_0\,
      S(0) => \v0total[8]_i_5_n_0\
    );
\v0total_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => v0total0_in(9),
      Q => v0total(9),
      R => \htotal[11]_i_1_n_0\
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8F8F8F8F8"
    )
        port map (
      I0 => \genr_control_regs[0]\(2),
      I1 => fsync_in,
      I2 => p_3_in,
      I3 => gen_ce,
      I4 => line_end_v,
      I5 => last_line,
      O => \v_count[0]_i_1_n_0\
    );
\v_count[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => gen_ce,
      I1 => line_end_v,
      I2 => last_line,
      O => v_count058_out
    );
\v_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count_reg(0),
      O => \v_count[0]_i_4_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[0]_i_3_n_7\,
      Q => v_count_reg(0),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_count_reg[0]_i_3_n_0\,
      CO(2) => \v_count_reg[0]_i_3_n_1\,
      CO(1) => \v_count_reg[0]_i_3_n_2\,
      CO(0) => \v_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \v_count_reg[0]_i_3_n_4\,
      O(2) => \v_count_reg[0]_i_3_n_5\,
      O(1) => \v_count_reg[0]_i_3_n_6\,
      O(0) => \v_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => v_count_reg(3 downto 1),
      S(0) => \v_count[0]_i_4_n_0\
    );
\v_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[8]_i_1_n_5\,
      Q => v_count_reg(10),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[8]_i_1_n_4\,
      Q => v_count_reg(11),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[0]_i_3_n_6\,
      Q => v_count_reg(1),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[0]_i_3_n_5\,
      Q => v_count_reg(2),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[0]_i_3_n_4\,
      Q => v_count_reg(3),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[4]_i_1_n_7\,
      Q => v_count_reg(4),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_count_reg[0]_i_3_n_0\,
      CO(3) => \v_count_reg[4]_i_1_n_0\,
      CO(2) => \v_count_reg[4]_i_1_n_1\,
      CO(1) => \v_count_reg[4]_i_1_n_2\,
      CO(0) => \v_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_count_reg[4]_i_1_n_4\,
      O(2) => \v_count_reg[4]_i_1_n_5\,
      O(1) => \v_count_reg[4]_i_1_n_6\,
      O(0) => \v_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => v_count_reg(7 downto 4)
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[4]_i_1_n_6\,
      Q => v_count_reg(5),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[4]_i_1_n_5\,
      Q => v_count_reg(6),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[4]_i_1_n_4\,
      Q => v_count_reg(7),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[8]_i_1_n_7\,
      Q => v_count_reg(8),
      R => \v_count[0]_i_1_n_0\
    );
\v_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_count_reg[4]_i_1_n_0\,
      CO(3) => \NLW_v_count_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \v_count_reg[8]_i_1_n_1\,
      CO(1) => \v_count_reg[8]_i_1_n_2\,
      CO(0) => \v_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_count_reg[8]_i_1_n_4\,
      O(2) => \v_count_reg[8]_i_1_n_5\,
      O(1) => \v_count_reg[8]_i_1_n_6\,
      O(0) => \v_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => v_count_reg(11 downto 8)
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => v_count058_out,
      D => \v_count_reg[8]_i_1_n_6\,
      Q => v_count_reg(9),
      R => \v_count[0]_i_1_n_0\
    );
vblank_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \time_control_regs[19]\(0),
      I1 => vblank_int_reg_n_0,
      O => vblank0
    );
vblank_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F777FFFFF0000000"
    )
        port map (
      I0 => eqOp3_out,
      I1 => eqOp4_out,
      I2 => last_line,
      I3 => eqOp2_out,
      I4 => gen_ce,
      I5 => vblank_int_reg_n_0,
      O => vblank_int_i_1_n_0
    );
vblank_int_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => vblank_int_i_1_n_0,
      Q => vblank_int_reg_n_0,
      S => p_3_in
    );
vblank_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => vblank0,
      Q => \^vblank_reg_0\,
      R => p_3_in
    );
vsync_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \time_control_regs[19]\(2),
      I1 => vsync_int_reg_n_0,
      O => vsync0
    );
vsync_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F777FFFFF0000000"
    )
        port map (
      I0 => eqOp8_out,
      I1 => eqOp7_out,
      I2 => eqOp6_out,
      I3 => eqOp5_out,
      I4 => gen_ce,
      I5 => vsync_int_reg_n_0,
      O => vsync_int_i_1_n_0
    );
vsync_int_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => vsync_int_i_1_n_0,
      Q => vsync_int_reg_n_0,
      S => p_3_in
    );
vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gen_ce,
      D => vsync0,
      Q => vsync_out,
      R => p_3_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_tc_1_0_video_ctrl is
  port (
    aclk : in STD_LOGIC;
    aclk_en : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_aclk : in STD_LOGIC;
    vid_aclk_en : in STD_LOGIC;
    vid_aresetn : in STD_LOGIC;
    reg_update : in STD_LOGIC;
    irq : out STD_LOGIC;
    resetn_out : out STD_LOGIC;
    core_d_out : out STD_LOGIC;
    ipif_addr_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ipif_rnw_out : out STD_LOGIC;
    ipif_cs_out : out STD_LOGIC;
    ipif_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[1]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[2]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[3]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[4]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[2]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[3]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[4]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[1]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[2]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[3]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[4]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[5]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[6]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[8]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[9]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[10]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[11]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[12]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[13]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[14]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[15]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[16]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[17]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[18]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[19]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[20]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[21]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[22]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[23]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[24]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[25]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[26]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[27]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[28]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[29]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[2]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[3]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[4]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[5]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[6]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[7]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[8]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[9]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[10]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[11]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[12]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[13]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[14]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[15]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[16]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[17]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[18]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[19]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[20]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[21]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[22]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[23]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[24]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[25]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[26]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[27]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[28]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[29]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[1]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[2]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[3]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[4]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[5]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[6]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[8]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[9]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[10]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[11]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[12]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[13]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[14]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[15]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[16]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[2]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[3]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[4]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[5]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[6]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[7]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[8]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[9]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[10]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[11]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[12]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[13]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[14]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[15]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[16]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute C_COREGEN_PATCH : integer;
  attribute C_COREGEN_PATCH of design_1_v_tc_1_0_video_ctrl : entity is 0;
  attribute C_CORE_AXI_WRITE : string;
  attribute C_CORE_AXI_WRITE of design_1_v_tc_1_0_video_ctrl : entity is "544'b0000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111";
  attribute C_CORE_DBUFFER : string;
  attribute C_CORE_DBUFFER of design_1_v_tc_1_0_video_ctrl : entity is "544'b0000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100000000000000000000000000000000";
  attribute C_CORE_DEFAULT : string;
  attribute C_CORE_DEFAULT of design_1_v_tc_1_0_video_ctrl : entity is "544'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_CORE_NUM_REGS : integer;
  attribute C_CORE_NUM_REGS of design_1_v_tc_1_0_video_ctrl : entity is 17;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_v_tc_1_0_video_ctrl : entity is "virtex5";
  attribute C_GENR_AXI_WRITE : string;
  attribute C_GENR_AXI_WRITE of design_1_v_tc_1_0_video_ctrl : entity is "160'b1100011111111111111011110010111111111111111111110011111100000000000000000011111100000000000000001111111111111111001111110000000000000000000000000000000000000000";
  attribute C_GENR_DBUFFER : string;
  attribute C_GENR_DBUFFER of design_1_v_tc_1_0_video_ctrl : entity is "160'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_DEFAULT : string;
  attribute C_GENR_DEFAULT of design_1_v_tc_1_0_video_ctrl : entity is "160'b0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_NUM_REGS : integer;
  attribute C_GENR_NUM_REGS of design_1_v_tc_1_0_video_ctrl : entity is 5;
  attribute C_GENR_SELFCLR : string;
  attribute C_GENR_SELFCLR of design_1_v_tc_1_0_video_ctrl : entity is "256'b0000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_HAS_AXI4_LITE : integer;
  attribute C_HAS_AXI4_LITE of design_1_v_tc_1_0_video_ctrl : entity is 0;
  attribute C_HAS_IRQ : integer;
  attribute C_HAS_IRQ of design_1_v_tc_1_0_video_ctrl : entity is 0;
  attribute C_IS_EVAL : string;
  attribute C_IS_EVAL of design_1_v_tc_1_0_video_ctrl : entity is "FALSE";
  attribute C_REVISION_NUMBER : integer;
  attribute C_REVISION_NUMBER of design_1_v_tc_1_0_video_ctrl : entity is 11;
  attribute C_SRESET_LENGTH : integer;
  attribute C_SRESET_LENGTH of design_1_v_tc_1_0_video_ctrl : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of design_1_v_tc_1_0_video_ctrl : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_v_tc_1_0_video_ctrl : entity is 32;
  attribute C_TIMEOUT_HOURS : integer;
  attribute C_TIMEOUT_HOURS of design_1_v_tc_1_0_video_ctrl : entity is 8;
  attribute C_TIMEOUT_MINS : integer;
  attribute C_TIMEOUT_MINS of design_1_v_tc_1_0_video_ctrl : entity is 0;
  attribute C_TIME_AXI_WRITE : string;
  attribute C_TIME_AXI_WRITE of design_1_v_tc_1_0_video_ctrl : entity is "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111000111111111111100000000000000000000000000000000000000000000000000000011110011110000000000000000000000000111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111";
  attribute C_TIME_DBUFFER : string;
  attribute C_TIME_DBUFFER of design_1_v_tc_1_0_video_ctrl : entity is "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111000111111111111100000000000000000000000000000000000000000000000000000011100000000000000000000000000000000011111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111";
  attribute C_TIME_DEFAULT : string;
  attribute C_TIME_DEFAULT of design_1_v_tc_1_0_video_ctrl : entity is "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100000000000110010000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000111111100000000000000000000010000100000000000101110111000000010000011010000001111001000000000110100100000000011001000000000001100100000000000011110110000000001111010100000001100100000000000110010000000000101000000000000010100000000000000101101100100000010110101000000010100000000000001010000000000000001111000000000001100100000";
  attribute C_TIME_NUM_REGS : integer;
  attribute C_TIME_NUM_REGS of design_1_v_tc_1_0_video_ctrl : entity is 30;
  attribute C_VERSION_MAJOR : integer;
  attribute C_VERSION_MAJOR of design_1_v_tc_1_0_video_ctrl : entity is 6;
  attribute C_VERSION_MINOR : integer;
  attribute C_VERSION_MINOR of design_1_v_tc_1_0_video_ctrl : entity is 1;
  attribute C_VERSION_REVISION : integer;
  attribute C_VERSION_REVISION of design_1_v_tc_1_0_video_ctrl : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_tc_1_0_video_ctrl : entity is "video_ctrl";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_v_tc_1_0_video_ctrl : entity is "yes";
end design_1_v_tc_1_0_video_ctrl;

architecture STRUCTURE of design_1_v_tc_1_0_video_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^vid_aresetn\ : STD_LOGIC;
begin
  \^vid_aresetn\ <= vid_aresetn;
  \core_control_regs[0]\(31) <= \<const0>\;
  \core_control_regs[0]\(30) <= \<const0>\;
  \core_control_regs[0]\(29) <= \<const0>\;
  \core_control_regs[0]\(28) <= \<const0>\;
  \core_control_regs[0]\(27) <= \<const0>\;
  \core_control_regs[0]\(26) <= \<const0>\;
  \core_control_regs[0]\(25) <= \<const0>\;
  \core_control_regs[0]\(24) <= \<const0>\;
  \core_control_regs[0]\(23) <= \<const0>\;
  \core_control_regs[0]\(22) <= \<const0>\;
  \core_control_regs[0]\(21) <= \<const0>\;
  \core_control_regs[0]\(20) <= \<const0>\;
  \core_control_regs[0]\(19) <= \<const0>\;
  \core_control_regs[0]\(18) <= \<const0>\;
  \core_control_regs[0]\(17) <= \<const0>\;
  \core_control_regs[0]\(16) <= \<const0>\;
  \core_control_regs[0]\(15) <= \<const0>\;
  \core_control_regs[0]\(14) <= \<const0>\;
  \core_control_regs[0]\(13) <= \<const0>\;
  \core_control_regs[0]\(12) <= \<const0>\;
  \core_control_regs[0]\(11) <= \<const0>\;
  \core_control_regs[0]\(10) <= \<const0>\;
  \core_control_regs[0]\(9) <= \<const0>\;
  \core_control_regs[0]\(8) <= \<const0>\;
  \core_control_regs[0]\(7) <= \<const0>\;
  \core_control_regs[0]\(6) <= \<const0>\;
  \core_control_regs[0]\(5) <= \<const0>\;
  \core_control_regs[0]\(4) <= \<const0>\;
  \core_control_regs[0]\(3) <= \<const0>\;
  \core_control_regs[0]\(2) <= \<const0>\;
  \core_control_regs[0]\(1) <= \<const0>\;
  \core_control_regs[0]\(0) <= \<const0>\;
  \core_control_regs[10]\(31) <= \<const0>\;
  \core_control_regs[10]\(30) <= \<const0>\;
  \core_control_regs[10]\(29) <= \<const0>\;
  \core_control_regs[10]\(28) <= \<const0>\;
  \core_control_regs[10]\(27) <= \<const0>\;
  \core_control_regs[10]\(26) <= \<const0>\;
  \core_control_regs[10]\(25) <= \<const0>\;
  \core_control_regs[10]\(24) <= \<const0>\;
  \core_control_regs[10]\(23) <= \<const0>\;
  \core_control_regs[10]\(22) <= \<const0>\;
  \core_control_regs[10]\(21) <= \<const0>\;
  \core_control_regs[10]\(20) <= \<const0>\;
  \core_control_regs[10]\(19) <= \<const0>\;
  \core_control_regs[10]\(18) <= \<const0>\;
  \core_control_regs[10]\(17) <= \<const0>\;
  \core_control_regs[10]\(16) <= \<const0>\;
  \core_control_regs[10]\(15) <= \<const0>\;
  \core_control_regs[10]\(14) <= \<const0>\;
  \core_control_regs[10]\(13) <= \<const0>\;
  \core_control_regs[10]\(12) <= \<const0>\;
  \core_control_regs[10]\(11) <= \<const0>\;
  \core_control_regs[10]\(10) <= \<const0>\;
  \core_control_regs[10]\(9) <= \<const0>\;
  \core_control_regs[10]\(8) <= \<const0>\;
  \core_control_regs[10]\(7) <= \<const0>\;
  \core_control_regs[10]\(6) <= \<const0>\;
  \core_control_regs[10]\(5) <= \<const0>\;
  \core_control_regs[10]\(4) <= \<const0>\;
  \core_control_regs[10]\(3) <= \<const0>\;
  \core_control_regs[10]\(2) <= \<const0>\;
  \core_control_regs[10]\(1) <= \<const0>\;
  \core_control_regs[10]\(0) <= \<const0>\;
  \core_control_regs[11]\(31) <= \<const0>\;
  \core_control_regs[11]\(30) <= \<const0>\;
  \core_control_regs[11]\(29) <= \<const0>\;
  \core_control_regs[11]\(28) <= \<const0>\;
  \core_control_regs[11]\(27) <= \<const0>\;
  \core_control_regs[11]\(26) <= \<const0>\;
  \core_control_regs[11]\(25) <= \<const0>\;
  \core_control_regs[11]\(24) <= \<const0>\;
  \core_control_regs[11]\(23) <= \<const0>\;
  \core_control_regs[11]\(22) <= \<const0>\;
  \core_control_regs[11]\(21) <= \<const0>\;
  \core_control_regs[11]\(20) <= \<const0>\;
  \core_control_regs[11]\(19) <= \<const0>\;
  \core_control_regs[11]\(18) <= \<const0>\;
  \core_control_regs[11]\(17) <= \<const0>\;
  \core_control_regs[11]\(16) <= \<const0>\;
  \core_control_regs[11]\(15) <= \<const0>\;
  \core_control_regs[11]\(14) <= \<const0>\;
  \core_control_regs[11]\(13) <= \<const0>\;
  \core_control_regs[11]\(12) <= \<const0>\;
  \core_control_regs[11]\(11) <= \<const0>\;
  \core_control_regs[11]\(10) <= \<const0>\;
  \core_control_regs[11]\(9) <= \<const0>\;
  \core_control_regs[11]\(8) <= \<const0>\;
  \core_control_regs[11]\(7) <= \<const0>\;
  \core_control_regs[11]\(6) <= \<const0>\;
  \core_control_regs[11]\(5) <= \<const0>\;
  \core_control_regs[11]\(4) <= \<const0>\;
  \core_control_regs[11]\(3) <= \<const0>\;
  \core_control_regs[11]\(2) <= \<const0>\;
  \core_control_regs[11]\(1) <= \<const0>\;
  \core_control_regs[11]\(0) <= \<const0>\;
  \core_control_regs[12]\(31) <= \<const0>\;
  \core_control_regs[12]\(30) <= \<const0>\;
  \core_control_regs[12]\(29) <= \<const0>\;
  \core_control_regs[12]\(28) <= \<const0>\;
  \core_control_regs[12]\(27) <= \<const0>\;
  \core_control_regs[12]\(26) <= \<const0>\;
  \core_control_regs[12]\(25) <= \<const0>\;
  \core_control_regs[12]\(24) <= \<const0>\;
  \core_control_regs[12]\(23) <= \<const0>\;
  \core_control_regs[12]\(22) <= \<const0>\;
  \core_control_regs[12]\(21) <= \<const0>\;
  \core_control_regs[12]\(20) <= \<const0>\;
  \core_control_regs[12]\(19) <= \<const0>\;
  \core_control_regs[12]\(18) <= \<const0>\;
  \core_control_regs[12]\(17) <= \<const0>\;
  \core_control_regs[12]\(16) <= \<const0>\;
  \core_control_regs[12]\(15) <= \<const0>\;
  \core_control_regs[12]\(14) <= \<const0>\;
  \core_control_regs[12]\(13) <= \<const0>\;
  \core_control_regs[12]\(12) <= \<const0>\;
  \core_control_regs[12]\(11) <= \<const0>\;
  \core_control_regs[12]\(10) <= \<const0>\;
  \core_control_regs[12]\(9) <= \<const0>\;
  \core_control_regs[12]\(8) <= \<const0>\;
  \core_control_regs[12]\(7) <= \<const0>\;
  \core_control_regs[12]\(6) <= \<const0>\;
  \core_control_regs[12]\(5) <= \<const0>\;
  \core_control_regs[12]\(4) <= \<const0>\;
  \core_control_regs[12]\(3) <= \<const0>\;
  \core_control_regs[12]\(2) <= \<const0>\;
  \core_control_regs[12]\(1) <= \<const0>\;
  \core_control_regs[12]\(0) <= \<const0>\;
  \core_control_regs[13]\(31) <= \<const0>\;
  \core_control_regs[13]\(30) <= \<const0>\;
  \core_control_regs[13]\(29) <= \<const0>\;
  \core_control_regs[13]\(28) <= \<const0>\;
  \core_control_regs[13]\(27) <= \<const0>\;
  \core_control_regs[13]\(26) <= \<const0>\;
  \core_control_regs[13]\(25) <= \<const0>\;
  \core_control_regs[13]\(24) <= \<const0>\;
  \core_control_regs[13]\(23) <= \<const0>\;
  \core_control_regs[13]\(22) <= \<const0>\;
  \core_control_regs[13]\(21) <= \<const0>\;
  \core_control_regs[13]\(20) <= \<const0>\;
  \core_control_regs[13]\(19) <= \<const0>\;
  \core_control_regs[13]\(18) <= \<const0>\;
  \core_control_regs[13]\(17) <= \<const0>\;
  \core_control_regs[13]\(16) <= \<const0>\;
  \core_control_regs[13]\(15) <= \<const0>\;
  \core_control_regs[13]\(14) <= \<const0>\;
  \core_control_regs[13]\(13) <= \<const0>\;
  \core_control_regs[13]\(12) <= \<const0>\;
  \core_control_regs[13]\(11) <= \<const0>\;
  \core_control_regs[13]\(10) <= \<const0>\;
  \core_control_regs[13]\(9) <= \<const0>\;
  \core_control_regs[13]\(8) <= \<const0>\;
  \core_control_regs[13]\(7) <= \<const0>\;
  \core_control_regs[13]\(6) <= \<const0>\;
  \core_control_regs[13]\(5) <= \<const0>\;
  \core_control_regs[13]\(4) <= \<const0>\;
  \core_control_regs[13]\(3) <= \<const0>\;
  \core_control_regs[13]\(2) <= \<const0>\;
  \core_control_regs[13]\(1) <= \<const0>\;
  \core_control_regs[13]\(0) <= \<const0>\;
  \core_control_regs[14]\(31) <= \<const0>\;
  \core_control_regs[14]\(30) <= \<const0>\;
  \core_control_regs[14]\(29) <= \<const0>\;
  \core_control_regs[14]\(28) <= \<const0>\;
  \core_control_regs[14]\(27) <= \<const0>\;
  \core_control_regs[14]\(26) <= \<const0>\;
  \core_control_regs[14]\(25) <= \<const0>\;
  \core_control_regs[14]\(24) <= \<const0>\;
  \core_control_regs[14]\(23) <= \<const0>\;
  \core_control_regs[14]\(22) <= \<const0>\;
  \core_control_regs[14]\(21) <= \<const0>\;
  \core_control_regs[14]\(20) <= \<const0>\;
  \core_control_regs[14]\(19) <= \<const0>\;
  \core_control_regs[14]\(18) <= \<const0>\;
  \core_control_regs[14]\(17) <= \<const0>\;
  \core_control_regs[14]\(16) <= \<const0>\;
  \core_control_regs[14]\(15) <= \<const0>\;
  \core_control_regs[14]\(14) <= \<const0>\;
  \core_control_regs[14]\(13) <= \<const0>\;
  \core_control_regs[14]\(12) <= \<const0>\;
  \core_control_regs[14]\(11) <= \<const0>\;
  \core_control_regs[14]\(10) <= \<const0>\;
  \core_control_regs[14]\(9) <= \<const0>\;
  \core_control_regs[14]\(8) <= \<const0>\;
  \core_control_regs[14]\(7) <= \<const0>\;
  \core_control_regs[14]\(6) <= \<const0>\;
  \core_control_regs[14]\(5) <= \<const0>\;
  \core_control_regs[14]\(4) <= \<const0>\;
  \core_control_regs[14]\(3) <= \<const0>\;
  \core_control_regs[14]\(2) <= \<const0>\;
  \core_control_regs[14]\(1) <= \<const0>\;
  \core_control_regs[14]\(0) <= \<const0>\;
  \core_control_regs[15]\(31) <= \<const0>\;
  \core_control_regs[15]\(30) <= \<const0>\;
  \core_control_regs[15]\(29) <= \<const0>\;
  \core_control_regs[15]\(28) <= \<const0>\;
  \core_control_regs[15]\(27) <= \<const0>\;
  \core_control_regs[15]\(26) <= \<const0>\;
  \core_control_regs[15]\(25) <= \<const0>\;
  \core_control_regs[15]\(24) <= \<const0>\;
  \core_control_regs[15]\(23) <= \<const0>\;
  \core_control_regs[15]\(22) <= \<const0>\;
  \core_control_regs[15]\(21) <= \<const0>\;
  \core_control_regs[15]\(20) <= \<const0>\;
  \core_control_regs[15]\(19) <= \<const0>\;
  \core_control_regs[15]\(18) <= \<const0>\;
  \core_control_regs[15]\(17) <= \<const0>\;
  \core_control_regs[15]\(16) <= \<const0>\;
  \core_control_regs[15]\(15) <= \<const0>\;
  \core_control_regs[15]\(14) <= \<const0>\;
  \core_control_regs[15]\(13) <= \<const0>\;
  \core_control_regs[15]\(12) <= \<const0>\;
  \core_control_regs[15]\(11) <= \<const0>\;
  \core_control_regs[15]\(10) <= \<const0>\;
  \core_control_regs[15]\(9) <= \<const0>\;
  \core_control_regs[15]\(8) <= \<const0>\;
  \core_control_regs[15]\(7) <= \<const0>\;
  \core_control_regs[15]\(6) <= \<const0>\;
  \core_control_regs[15]\(5) <= \<const0>\;
  \core_control_regs[15]\(4) <= \<const0>\;
  \core_control_regs[15]\(3) <= \<const0>\;
  \core_control_regs[15]\(2) <= \<const0>\;
  \core_control_regs[15]\(1) <= \<const0>\;
  \core_control_regs[15]\(0) <= \<const0>\;
  \core_control_regs[16]\(31) <= \<const0>\;
  \core_control_regs[16]\(30) <= \<const0>\;
  \core_control_regs[16]\(29) <= \<const0>\;
  \core_control_regs[16]\(28) <= \<const0>\;
  \core_control_regs[16]\(27) <= \<const0>\;
  \core_control_regs[16]\(26) <= \<const0>\;
  \core_control_regs[16]\(25) <= \<const0>\;
  \core_control_regs[16]\(24) <= \<const0>\;
  \core_control_regs[16]\(23) <= \<const0>\;
  \core_control_regs[16]\(22) <= \<const0>\;
  \core_control_regs[16]\(21) <= \<const0>\;
  \core_control_regs[16]\(20) <= \<const0>\;
  \core_control_regs[16]\(19) <= \<const0>\;
  \core_control_regs[16]\(18) <= \<const0>\;
  \core_control_regs[16]\(17) <= \<const0>\;
  \core_control_regs[16]\(16) <= \<const0>\;
  \core_control_regs[16]\(15) <= \<const0>\;
  \core_control_regs[16]\(14) <= \<const0>\;
  \core_control_regs[16]\(13) <= \<const0>\;
  \core_control_regs[16]\(12) <= \<const0>\;
  \core_control_regs[16]\(11) <= \<const0>\;
  \core_control_regs[16]\(10) <= \<const0>\;
  \core_control_regs[16]\(9) <= \<const0>\;
  \core_control_regs[16]\(8) <= \<const0>\;
  \core_control_regs[16]\(7) <= \<const0>\;
  \core_control_regs[16]\(6) <= \<const0>\;
  \core_control_regs[16]\(5) <= \<const0>\;
  \core_control_regs[16]\(4) <= \<const0>\;
  \core_control_regs[16]\(3) <= \<const0>\;
  \core_control_regs[16]\(2) <= \<const0>\;
  \core_control_regs[16]\(1) <= \<const0>\;
  \core_control_regs[16]\(0) <= \<const0>\;
  \core_control_regs[1]\(31) <= \<const0>\;
  \core_control_regs[1]\(30) <= \<const0>\;
  \core_control_regs[1]\(29) <= \<const0>\;
  \core_control_regs[1]\(28) <= \<const0>\;
  \core_control_regs[1]\(27) <= \<const0>\;
  \core_control_regs[1]\(26) <= \<const0>\;
  \core_control_regs[1]\(25) <= \<const0>\;
  \core_control_regs[1]\(24) <= \<const0>\;
  \core_control_regs[1]\(23) <= \<const0>\;
  \core_control_regs[1]\(22) <= \<const0>\;
  \core_control_regs[1]\(21) <= \<const0>\;
  \core_control_regs[1]\(20) <= \<const0>\;
  \core_control_regs[1]\(19) <= \<const0>\;
  \core_control_regs[1]\(18) <= \<const0>\;
  \core_control_regs[1]\(17) <= \<const0>\;
  \core_control_regs[1]\(16) <= \<const0>\;
  \core_control_regs[1]\(15) <= \<const0>\;
  \core_control_regs[1]\(14) <= \<const0>\;
  \core_control_regs[1]\(13) <= \<const0>\;
  \core_control_regs[1]\(12) <= \<const0>\;
  \core_control_regs[1]\(11) <= \<const0>\;
  \core_control_regs[1]\(10) <= \<const0>\;
  \core_control_regs[1]\(9) <= \<const0>\;
  \core_control_regs[1]\(8) <= \<const0>\;
  \core_control_regs[1]\(7) <= \<const0>\;
  \core_control_regs[1]\(6) <= \<const0>\;
  \core_control_regs[1]\(5) <= \<const0>\;
  \core_control_regs[1]\(4) <= \<const0>\;
  \core_control_regs[1]\(3) <= \<const0>\;
  \core_control_regs[1]\(2) <= \<const0>\;
  \core_control_regs[1]\(1) <= \<const0>\;
  \core_control_regs[1]\(0) <= \<const0>\;
  \core_control_regs[2]\(31) <= \<const0>\;
  \core_control_regs[2]\(30) <= \<const0>\;
  \core_control_regs[2]\(29) <= \<const0>\;
  \core_control_regs[2]\(28) <= \<const0>\;
  \core_control_regs[2]\(27) <= \<const0>\;
  \core_control_regs[2]\(26) <= \<const0>\;
  \core_control_regs[2]\(25) <= \<const0>\;
  \core_control_regs[2]\(24) <= \<const0>\;
  \core_control_regs[2]\(23) <= \<const0>\;
  \core_control_regs[2]\(22) <= \<const0>\;
  \core_control_regs[2]\(21) <= \<const0>\;
  \core_control_regs[2]\(20) <= \<const0>\;
  \core_control_regs[2]\(19) <= \<const0>\;
  \core_control_regs[2]\(18) <= \<const0>\;
  \core_control_regs[2]\(17) <= \<const0>\;
  \core_control_regs[2]\(16) <= \<const0>\;
  \core_control_regs[2]\(15) <= \<const0>\;
  \core_control_regs[2]\(14) <= \<const0>\;
  \core_control_regs[2]\(13) <= \<const0>\;
  \core_control_regs[2]\(12) <= \<const0>\;
  \core_control_regs[2]\(11) <= \<const0>\;
  \core_control_regs[2]\(10) <= \<const0>\;
  \core_control_regs[2]\(9) <= \<const0>\;
  \core_control_regs[2]\(8) <= \<const0>\;
  \core_control_regs[2]\(7) <= \<const0>\;
  \core_control_regs[2]\(6) <= \<const0>\;
  \core_control_regs[2]\(5) <= \<const0>\;
  \core_control_regs[2]\(4) <= \<const0>\;
  \core_control_regs[2]\(3) <= \<const0>\;
  \core_control_regs[2]\(2) <= \<const0>\;
  \core_control_regs[2]\(1) <= \<const0>\;
  \core_control_regs[2]\(0) <= \<const0>\;
  \core_control_regs[3]\(31) <= \<const0>\;
  \core_control_regs[3]\(30) <= \<const0>\;
  \core_control_regs[3]\(29) <= \<const0>\;
  \core_control_regs[3]\(28) <= \<const0>\;
  \core_control_regs[3]\(27) <= \<const0>\;
  \core_control_regs[3]\(26) <= \<const0>\;
  \core_control_regs[3]\(25) <= \<const0>\;
  \core_control_regs[3]\(24) <= \<const0>\;
  \core_control_regs[3]\(23) <= \<const0>\;
  \core_control_regs[3]\(22) <= \<const0>\;
  \core_control_regs[3]\(21) <= \<const0>\;
  \core_control_regs[3]\(20) <= \<const0>\;
  \core_control_regs[3]\(19) <= \<const0>\;
  \core_control_regs[3]\(18) <= \<const0>\;
  \core_control_regs[3]\(17) <= \<const0>\;
  \core_control_regs[3]\(16) <= \<const0>\;
  \core_control_regs[3]\(15) <= \<const0>\;
  \core_control_regs[3]\(14) <= \<const0>\;
  \core_control_regs[3]\(13) <= \<const0>\;
  \core_control_regs[3]\(12) <= \<const0>\;
  \core_control_regs[3]\(11) <= \<const0>\;
  \core_control_regs[3]\(10) <= \<const0>\;
  \core_control_regs[3]\(9) <= \<const0>\;
  \core_control_regs[3]\(8) <= \<const0>\;
  \core_control_regs[3]\(7) <= \<const0>\;
  \core_control_regs[3]\(6) <= \<const0>\;
  \core_control_regs[3]\(5) <= \<const0>\;
  \core_control_regs[3]\(4) <= \<const0>\;
  \core_control_regs[3]\(3) <= \<const0>\;
  \core_control_regs[3]\(2) <= \<const0>\;
  \core_control_regs[3]\(1) <= \<const0>\;
  \core_control_regs[3]\(0) <= \<const0>\;
  \core_control_regs[4]\(31) <= \<const0>\;
  \core_control_regs[4]\(30) <= \<const0>\;
  \core_control_regs[4]\(29) <= \<const0>\;
  \core_control_regs[4]\(28) <= \<const0>\;
  \core_control_regs[4]\(27) <= \<const0>\;
  \core_control_regs[4]\(26) <= \<const0>\;
  \core_control_regs[4]\(25) <= \<const0>\;
  \core_control_regs[4]\(24) <= \<const0>\;
  \core_control_regs[4]\(23) <= \<const0>\;
  \core_control_regs[4]\(22) <= \<const0>\;
  \core_control_regs[4]\(21) <= \<const0>\;
  \core_control_regs[4]\(20) <= \<const0>\;
  \core_control_regs[4]\(19) <= \<const0>\;
  \core_control_regs[4]\(18) <= \<const0>\;
  \core_control_regs[4]\(17) <= \<const0>\;
  \core_control_regs[4]\(16) <= \<const0>\;
  \core_control_regs[4]\(15) <= \<const0>\;
  \core_control_regs[4]\(14) <= \<const0>\;
  \core_control_regs[4]\(13) <= \<const0>\;
  \core_control_regs[4]\(12) <= \<const0>\;
  \core_control_regs[4]\(11) <= \<const0>\;
  \core_control_regs[4]\(10) <= \<const0>\;
  \core_control_regs[4]\(9) <= \<const0>\;
  \core_control_regs[4]\(8) <= \<const0>\;
  \core_control_regs[4]\(7) <= \<const0>\;
  \core_control_regs[4]\(6) <= \<const0>\;
  \core_control_regs[4]\(5) <= \<const0>\;
  \core_control_regs[4]\(4) <= \<const0>\;
  \core_control_regs[4]\(3) <= \<const0>\;
  \core_control_regs[4]\(2) <= \<const0>\;
  \core_control_regs[4]\(1) <= \<const0>\;
  \core_control_regs[4]\(0) <= \<const0>\;
  \core_control_regs[5]\(31) <= \<const0>\;
  \core_control_regs[5]\(30) <= \<const0>\;
  \core_control_regs[5]\(29) <= \<const0>\;
  \core_control_regs[5]\(28) <= \<const0>\;
  \core_control_regs[5]\(27) <= \<const0>\;
  \core_control_regs[5]\(26) <= \<const0>\;
  \core_control_regs[5]\(25) <= \<const0>\;
  \core_control_regs[5]\(24) <= \<const0>\;
  \core_control_regs[5]\(23) <= \<const0>\;
  \core_control_regs[5]\(22) <= \<const0>\;
  \core_control_regs[5]\(21) <= \<const0>\;
  \core_control_regs[5]\(20) <= \<const0>\;
  \core_control_regs[5]\(19) <= \<const0>\;
  \core_control_regs[5]\(18) <= \<const0>\;
  \core_control_regs[5]\(17) <= \<const0>\;
  \core_control_regs[5]\(16) <= \<const0>\;
  \core_control_regs[5]\(15) <= \<const0>\;
  \core_control_regs[5]\(14) <= \<const0>\;
  \core_control_regs[5]\(13) <= \<const0>\;
  \core_control_regs[5]\(12) <= \<const0>\;
  \core_control_regs[5]\(11) <= \<const0>\;
  \core_control_regs[5]\(10) <= \<const0>\;
  \core_control_regs[5]\(9) <= \<const0>\;
  \core_control_regs[5]\(8) <= \<const0>\;
  \core_control_regs[5]\(7) <= \<const0>\;
  \core_control_regs[5]\(6) <= \<const0>\;
  \core_control_regs[5]\(5) <= \<const0>\;
  \core_control_regs[5]\(4) <= \<const0>\;
  \core_control_regs[5]\(3) <= \<const0>\;
  \core_control_regs[5]\(2) <= \<const0>\;
  \core_control_regs[5]\(1) <= \<const0>\;
  \core_control_regs[5]\(0) <= \<const0>\;
  \core_control_regs[6]\(31) <= \<const0>\;
  \core_control_regs[6]\(30) <= \<const0>\;
  \core_control_regs[6]\(29) <= \<const0>\;
  \core_control_regs[6]\(28) <= \<const0>\;
  \core_control_regs[6]\(27) <= \<const0>\;
  \core_control_regs[6]\(26) <= \<const0>\;
  \core_control_regs[6]\(25) <= \<const0>\;
  \core_control_regs[6]\(24) <= \<const0>\;
  \core_control_regs[6]\(23) <= \<const0>\;
  \core_control_regs[6]\(22) <= \<const0>\;
  \core_control_regs[6]\(21) <= \<const0>\;
  \core_control_regs[6]\(20) <= \<const0>\;
  \core_control_regs[6]\(19) <= \<const0>\;
  \core_control_regs[6]\(18) <= \<const0>\;
  \core_control_regs[6]\(17) <= \<const0>\;
  \core_control_regs[6]\(16) <= \<const0>\;
  \core_control_regs[6]\(15) <= \<const0>\;
  \core_control_regs[6]\(14) <= \<const0>\;
  \core_control_regs[6]\(13) <= \<const0>\;
  \core_control_regs[6]\(12) <= \<const0>\;
  \core_control_regs[6]\(11) <= \<const0>\;
  \core_control_regs[6]\(10) <= \<const0>\;
  \core_control_regs[6]\(9) <= \<const0>\;
  \core_control_regs[6]\(8) <= \<const0>\;
  \core_control_regs[6]\(7) <= \<const0>\;
  \core_control_regs[6]\(6) <= \<const0>\;
  \core_control_regs[6]\(5) <= \<const0>\;
  \core_control_regs[6]\(4) <= \<const0>\;
  \core_control_regs[6]\(3) <= \<const0>\;
  \core_control_regs[6]\(2) <= \<const0>\;
  \core_control_regs[6]\(1) <= \<const0>\;
  \core_control_regs[6]\(0) <= \<const0>\;
  \core_control_regs[7]\(31) <= \<const0>\;
  \core_control_regs[7]\(30) <= \<const0>\;
  \core_control_regs[7]\(29) <= \<const0>\;
  \core_control_regs[7]\(28) <= \<const0>\;
  \core_control_regs[7]\(27) <= \<const0>\;
  \core_control_regs[7]\(26) <= \<const0>\;
  \core_control_regs[7]\(25) <= \<const0>\;
  \core_control_regs[7]\(24) <= \<const0>\;
  \core_control_regs[7]\(23) <= \<const0>\;
  \core_control_regs[7]\(22) <= \<const0>\;
  \core_control_regs[7]\(21) <= \<const0>\;
  \core_control_regs[7]\(20) <= \<const0>\;
  \core_control_regs[7]\(19) <= \<const0>\;
  \core_control_regs[7]\(18) <= \<const0>\;
  \core_control_regs[7]\(17) <= \<const0>\;
  \core_control_regs[7]\(16) <= \<const0>\;
  \core_control_regs[7]\(15) <= \<const0>\;
  \core_control_regs[7]\(14) <= \<const0>\;
  \core_control_regs[7]\(13) <= \<const0>\;
  \core_control_regs[7]\(12) <= \<const0>\;
  \core_control_regs[7]\(11) <= \<const0>\;
  \core_control_regs[7]\(10) <= \<const0>\;
  \core_control_regs[7]\(9) <= \<const0>\;
  \core_control_regs[7]\(8) <= \<const0>\;
  \core_control_regs[7]\(7) <= \<const0>\;
  \core_control_regs[7]\(6) <= \<const0>\;
  \core_control_regs[7]\(5) <= \<const0>\;
  \core_control_regs[7]\(4) <= \<const0>\;
  \core_control_regs[7]\(3) <= \<const0>\;
  \core_control_regs[7]\(2) <= \<const0>\;
  \core_control_regs[7]\(1) <= \<const0>\;
  \core_control_regs[7]\(0) <= \<const0>\;
  \core_control_regs[8]\(31) <= \<const0>\;
  \core_control_regs[8]\(30) <= \<const0>\;
  \core_control_regs[8]\(29) <= \<const0>\;
  \core_control_regs[8]\(28) <= \<const0>\;
  \core_control_regs[8]\(27) <= \<const0>\;
  \core_control_regs[8]\(26) <= \<const0>\;
  \core_control_regs[8]\(25) <= \<const0>\;
  \core_control_regs[8]\(24) <= \<const0>\;
  \core_control_regs[8]\(23) <= \<const0>\;
  \core_control_regs[8]\(22) <= \<const0>\;
  \core_control_regs[8]\(21) <= \<const0>\;
  \core_control_regs[8]\(20) <= \<const0>\;
  \core_control_regs[8]\(19) <= \<const0>\;
  \core_control_regs[8]\(18) <= \<const0>\;
  \core_control_regs[8]\(17) <= \<const0>\;
  \core_control_regs[8]\(16) <= \<const0>\;
  \core_control_regs[8]\(15) <= \<const0>\;
  \core_control_regs[8]\(14) <= \<const0>\;
  \core_control_regs[8]\(13) <= \<const0>\;
  \core_control_regs[8]\(12) <= \<const0>\;
  \core_control_regs[8]\(11) <= \<const0>\;
  \core_control_regs[8]\(10) <= \<const0>\;
  \core_control_regs[8]\(9) <= \<const0>\;
  \core_control_regs[8]\(8) <= \<const0>\;
  \core_control_regs[8]\(7) <= \<const0>\;
  \core_control_regs[8]\(6) <= \<const0>\;
  \core_control_regs[8]\(5) <= \<const0>\;
  \core_control_regs[8]\(4) <= \<const0>\;
  \core_control_regs[8]\(3) <= \<const0>\;
  \core_control_regs[8]\(2) <= \<const0>\;
  \core_control_regs[8]\(1) <= \<const0>\;
  \core_control_regs[8]\(0) <= \<const0>\;
  \core_control_regs[9]\(31) <= \<const0>\;
  \core_control_regs[9]\(30) <= \<const0>\;
  \core_control_regs[9]\(29) <= \<const0>\;
  \core_control_regs[9]\(28) <= \<const0>\;
  \core_control_regs[9]\(27) <= \<const0>\;
  \core_control_regs[9]\(26) <= \<const0>\;
  \core_control_regs[9]\(25) <= \<const0>\;
  \core_control_regs[9]\(24) <= \<const0>\;
  \core_control_regs[9]\(23) <= \<const0>\;
  \core_control_regs[9]\(22) <= \<const0>\;
  \core_control_regs[9]\(21) <= \<const0>\;
  \core_control_regs[9]\(20) <= \<const0>\;
  \core_control_regs[9]\(19) <= \<const0>\;
  \core_control_regs[9]\(18) <= \<const0>\;
  \core_control_regs[9]\(17) <= \<const0>\;
  \core_control_regs[9]\(16) <= \<const0>\;
  \core_control_regs[9]\(15) <= \<const0>\;
  \core_control_regs[9]\(14) <= \<const0>\;
  \core_control_regs[9]\(13) <= \<const0>\;
  \core_control_regs[9]\(12) <= \<const0>\;
  \core_control_regs[9]\(11) <= \<const0>\;
  \core_control_regs[9]\(10) <= \<const0>\;
  \core_control_regs[9]\(9) <= \<const0>\;
  \core_control_regs[9]\(8) <= \<const0>\;
  \core_control_regs[9]\(7) <= \<const0>\;
  \core_control_regs[9]\(6) <= \<const0>\;
  \core_control_regs[9]\(5) <= \<const0>\;
  \core_control_regs[9]\(4) <= \<const0>\;
  \core_control_regs[9]\(3) <= \<const0>\;
  \core_control_regs[9]\(2) <= \<const0>\;
  \core_control_regs[9]\(1) <= \<const0>\;
  \core_control_regs[9]\(0) <= \<const0>\;
  core_d_out <= \<const0>\;
  \genr_control_regs[0]\(31) <= \<const0>\;
  \genr_control_regs[0]\(30) <= \<const0>\;
  \genr_control_regs[0]\(29) <= \<const0>\;
  \genr_control_regs[0]\(28) <= \<const0>\;
  \genr_control_regs[0]\(27) <= \<const0>\;
  \genr_control_regs[0]\(26) <= \<const0>\;
  \genr_control_regs[0]\(25) <= \<const0>\;
  \genr_control_regs[0]\(24) <= \<const0>\;
  \genr_control_regs[0]\(23) <= \<const0>\;
  \genr_control_regs[0]\(22) <= \<const0>\;
  \genr_control_regs[0]\(21) <= \<const0>\;
  \genr_control_regs[0]\(20) <= \<const0>\;
  \genr_control_regs[0]\(19) <= \<const0>\;
  \genr_control_regs[0]\(18) <= \<const0>\;
  \genr_control_regs[0]\(17) <= \<const0>\;
  \genr_control_regs[0]\(16) <= \<const0>\;
  \genr_control_regs[0]\(15) <= \<const0>\;
  \genr_control_regs[0]\(14) <= \<const0>\;
  \genr_control_regs[0]\(13) <= \<const0>\;
  \genr_control_regs[0]\(12) <= \<const0>\;
  \genr_control_regs[0]\(11) <= \<const0>\;
  \genr_control_regs[0]\(10) <= \<const0>\;
  \genr_control_regs[0]\(9) <= \<const0>\;
  \genr_control_regs[0]\(8) <= \<const0>\;
  \genr_control_regs[0]\(7) <= \<const0>\;
  \genr_control_regs[0]\(6) <= \<const0>\;
  \genr_control_regs[0]\(5) <= \<const0>\;
  \genr_control_regs[0]\(4) <= \<const0>\;
  \genr_control_regs[0]\(3) <= \<const0>\;
  \genr_control_regs[0]\(2) <= \<const0>\;
  \genr_control_regs[0]\(1) <= \<const0>\;
  \genr_control_regs[0]\(0) <= \<const1>\;
  \genr_control_regs[1]\(31) <= \<const0>\;
  \genr_control_regs[1]\(30) <= \<const0>\;
  \genr_control_regs[1]\(29) <= \<const0>\;
  \genr_control_regs[1]\(28) <= \<const0>\;
  \genr_control_regs[1]\(27) <= \<const0>\;
  \genr_control_regs[1]\(26) <= \<const0>\;
  \genr_control_regs[1]\(25) <= \<const0>\;
  \genr_control_regs[1]\(24) <= \<const0>\;
  \genr_control_regs[1]\(23) <= \<const0>\;
  \genr_control_regs[1]\(22) <= \<const0>\;
  \genr_control_regs[1]\(21) <= \<const0>\;
  \genr_control_regs[1]\(20) <= \<const0>\;
  \genr_control_regs[1]\(19) <= \<const0>\;
  \genr_control_regs[1]\(18) <= \<const0>\;
  \genr_control_regs[1]\(17) <= \<const0>\;
  \genr_control_regs[1]\(16) <= \<const0>\;
  \genr_control_regs[1]\(15) <= \<const0>\;
  \genr_control_regs[1]\(14) <= \<const0>\;
  \genr_control_regs[1]\(13) <= \<const0>\;
  \genr_control_regs[1]\(12) <= \<const0>\;
  \genr_control_regs[1]\(11) <= \<const0>\;
  \genr_control_regs[1]\(10) <= \<const0>\;
  \genr_control_regs[1]\(9) <= \<const0>\;
  \genr_control_regs[1]\(8) <= \<const0>\;
  \genr_control_regs[1]\(7) <= \<const0>\;
  \genr_control_regs[1]\(6) <= \<const0>\;
  \genr_control_regs[1]\(5) <= \<const0>\;
  \genr_control_regs[1]\(4) <= \<const0>\;
  \genr_control_regs[1]\(3) <= \<const0>\;
  \genr_control_regs[1]\(2) <= \<const0>\;
  \genr_control_regs[1]\(1) <= \<const0>\;
  \genr_control_regs[1]\(0) <= \<const0>\;
  \genr_control_regs[2]\(31) <= \<const0>\;
  \genr_control_regs[2]\(30) <= \<const0>\;
  \genr_control_regs[2]\(29) <= \<const0>\;
  \genr_control_regs[2]\(28) <= \<const0>\;
  \genr_control_regs[2]\(27) <= \<const0>\;
  \genr_control_regs[2]\(26) <= \<const0>\;
  \genr_control_regs[2]\(25) <= \<const0>\;
  \genr_control_regs[2]\(24) <= \<const0>\;
  \genr_control_regs[2]\(23) <= \<const0>\;
  \genr_control_regs[2]\(22) <= \<const0>\;
  \genr_control_regs[2]\(21) <= \<const0>\;
  \genr_control_regs[2]\(20) <= \<const0>\;
  \genr_control_regs[2]\(19) <= \<const0>\;
  \genr_control_regs[2]\(18) <= \<const0>\;
  \genr_control_regs[2]\(17) <= \<const0>\;
  \genr_control_regs[2]\(16) <= \<const0>\;
  \genr_control_regs[2]\(15) <= \<const0>\;
  \genr_control_regs[2]\(14) <= \<const0>\;
  \genr_control_regs[2]\(13) <= \<const0>\;
  \genr_control_regs[2]\(12) <= \<const0>\;
  \genr_control_regs[2]\(11) <= \<const0>\;
  \genr_control_regs[2]\(10) <= \<const0>\;
  \genr_control_regs[2]\(9) <= \<const0>\;
  \genr_control_regs[2]\(8) <= \<const0>\;
  \genr_control_regs[2]\(7) <= \<const0>\;
  \genr_control_regs[2]\(6) <= \<const0>\;
  \genr_control_regs[2]\(5) <= \<const0>\;
  \genr_control_regs[2]\(4) <= \<const0>\;
  \genr_control_regs[2]\(3) <= \<const0>\;
  \genr_control_regs[2]\(2) <= \<const0>\;
  \genr_control_regs[2]\(1) <= \<const0>\;
  \genr_control_regs[2]\(0) <= \<const0>\;
  \genr_control_regs[3]\(31) <= \<const0>\;
  \genr_control_regs[3]\(30) <= \<const0>\;
  \genr_control_regs[3]\(29) <= \<const0>\;
  \genr_control_regs[3]\(28) <= \<const0>\;
  \genr_control_regs[3]\(27) <= \<const0>\;
  \genr_control_regs[3]\(26) <= \<const0>\;
  \genr_control_regs[3]\(25) <= \<const0>\;
  \genr_control_regs[3]\(24) <= \<const0>\;
  \genr_control_regs[3]\(23) <= \<const0>\;
  \genr_control_regs[3]\(22) <= \<const0>\;
  \genr_control_regs[3]\(21) <= \<const0>\;
  \genr_control_regs[3]\(20) <= \<const0>\;
  \genr_control_regs[3]\(19) <= \<const0>\;
  \genr_control_regs[3]\(18) <= \<const0>\;
  \genr_control_regs[3]\(17) <= \<const0>\;
  \genr_control_regs[3]\(16) <= \<const0>\;
  \genr_control_regs[3]\(15) <= \<const0>\;
  \genr_control_regs[3]\(14) <= \<const0>\;
  \genr_control_regs[3]\(13) <= \<const0>\;
  \genr_control_regs[3]\(12) <= \<const0>\;
  \genr_control_regs[3]\(11) <= \<const0>\;
  \genr_control_regs[3]\(10) <= \<const0>\;
  \genr_control_regs[3]\(9) <= \<const0>\;
  \genr_control_regs[3]\(8) <= \<const0>\;
  \genr_control_regs[3]\(7) <= \<const0>\;
  \genr_control_regs[3]\(6) <= \<const0>\;
  \genr_control_regs[3]\(5) <= \<const0>\;
  \genr_control_regs[3]\(4) <= \<const0>\;
  \genr_control_regs[3]\(3) <= \<const0>\;
  \genr_control_regs[3]\(2) <= \<const0>\;
  \genr_control_regs[3]\(1) <= \<const0>\;
  \genr_control_regs[3]\(0) <= \<const0>\;
  \genr_control_regs[4]\(31) <= \<const0>\;
  \genr_control_regs[4]\(30) <= \<const0>\;
  \genr_control_regs[4]\(29) <= \<const0>\;
  \genr_control_regs[4]\(28) <= \<const0>\;
  \genr_control_regs[4]\(27) <= \<const0>\;
  \genr_control_regs[4]\(26) <= \<const0>\;
  \genr_control_regs[4]\(25) <= \<const0>\;
  \genr_control_regs[4]\(24) <= \<const0>\;
  \genr_control_regs[4]\(23) <= \<const0>\;
  \genr_control_regs[4]\(22) <= \<const0>\;
  \genr_control_regs[4]\(21) <= \<const0>\;
  \genr_control_regs[4]\(20) <= \<const0>\;
  \genr_control_regs[4]\(19) <= \<const0>\;
  \genr_control_regs[4]\(18) <= \<const0>\;
  \genr_control_regs[4]\(17) <= \<const0>\;
  \genr_control_regs[4]\(16) <= \<const0>\;
  \genr_control_regs[4]\(15) <= \<const0>\;
  \genr_control_regs[4]\(14) <= \<const0>\;
  \genr_control_regs[4]\(13) <= \<const0>\;
  \genr_control_regs[4]\(12) <= \<const0>\;
  \genr_control_regs[4]\(11) <= \<const0>\;
  \genr_control_regs[4]\(10) <= \<const0>\;
  \genr_control_regs[4]\(9) <= \<const0>\;
  \genr_control_regs[4]\(8) <= \<const0>\;
  \genr_control_regs[4]\(7) <= \<const0>\;
  \genr_control_regs[4]\(6) <= \<const0>\;
  \genr_control_regs[4]\(5) <= \<const0>\;
  \genr_control_regs[4]\(4) <= \<const0>\;
  \genr_control_regs[4]\(3) <= \<const0>\;
  \genr_control_regs[4]\(2) <= \<const0>\;
  \genr_control_regs[4]\(1) <= \<const0>\;
  \genr_control_regs[4]\(0) <= \<const0>\;
  ipif_addr_out(8) <= \<const0>\;
  ipif_addr_out(7) <= \<const0>\;
  ipif_addr_out(6) <= \<const0>\;
  ipif_addr_out(5) <= \<const0>\;
  ipif_addr_out(4) <= \<const0>\;
  ipif_addr_out(3) <= \<const0>\;
  ipif_addr_out(2) <= \<const0>\;
  ipif_addr_out(1) <= \<const0>\;
  ipif_addr_out(0) <= \<const0>\;
  ipif_cs_out <= \<const0>\;
  ipif_data_out(31) <= \<const0>\;
  ipif_data_out(30) <= \<const0>\;
  ipif_data_out(29) <= \<const0>\;
  ipif_data_out(28) <= \<const0>\;
  ipif_data_out(27) <= \<const0>\;
  ipif_data_out(26) <= \<const0>\;
  ipif_data_out(25) <= \<const0>\;
  ipif_data_out(24) <= \<const0>\;
  ipif_data_out(23) <= \<const0>\;
  ipif_data_out(22) <= \<const0>\;
  ipif_data_out(21) <= \<const0>\;
  ipif_data_out(20) <= \<const0>\;
  ipif_data_out(19) <= \<const0>\;
  ipif_data_out(18) <= \<const0>\;
  ipif_data_out(17) <= \<const0>\;
  ipif_data_out(16) <= \<const0>\;
  ipif_data_out(15) <= \<const0>\;
  ipif_data_out(14) <= \<const0>\;
  ipif_data_out(13) <= \<const0>\;
  ipif_data_out(12) <= \<const0>\;
  ipif_data_out(11) <= \<const0>\;
  ipif_data_out(10) <= \<const0>\;
  ipif_data_out(9) <= \<const0>\;
  ipif_data_out(8) <= \<const0>\;
  ipif_data_out(7) <= \<const0>\;
  ipif_data_out(6) <= \<const0>\;
  ipif_data_out(5) <= \<const0>\;
  ipif_data_out(4) <= \<const0>\;
  ipif_data_out(3) <= \<const0>\;
  ipif_data_out(2) <= \<const0>\;
  ipif_data_out(1) <= \<const0>\;
  ipif_data_out(0) <= \<const0>\;
  ipif_rnw_out <= \<const1>\;
  irq <= \<const0>\;
  resetn_out <= \^vid_aresetn\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  \time_control_regs[0]\(31) <= \<const0>\;
  \time_control_regs[0]\(30) <= \<const0>\;
  \time_control_regs[0]\(29) <= \<const0>\;
  \time_control_regs[0]\(28) <= \<const0>\;
  \time_control_regs[0]\(27) <= \<const0>\;
  \time_control_regs[0]\(26) <= \<const0>\;
  \time_control_regs[0]\(25) <= \<const0>\;
  \time_control_regs[0]\(24) <= \<const0>\;
  \time_control_regs[0]\(23) <= \<const0>\;
  \time_control_regs[0]\(22) <= \<const0>\;
  \time_control_regs[0]\(21) <= \<const0>\;
  \time_control_regs[0]\(20) <= \<const0>\;
  \time_control_regs[0]\(19) <= \<const0>\;
  \time_control_regs[0]\(18) <= \<const0>\;
  \time_control_regs[0]\(17) <= \<const0>\;
  \time_control_regs[0]\(16) <= \<const0>\;
  \time_control_regs[0]\(15) <= \<const0>\;
  \time_control_regs[0]\(14) <= \<const0>\;
  \time_control_regs[0]\(13) <= \<const0>\;
  \time_control_regs[0]\(12) <= \<const0>\;
  \time_control_regs[0]\(11) <= \<const0>\;
  \time_control_regs[0]\(10) <= \<const0>\;
  \time_control_regs[0]\(9) <= \<const0>\;
  \time_control_regs[0]\(8) <= \<const0>\;
  \time_control_regs[0]\(7) <= \<const0>\;
  \time_control_regs[0]\(6) <= \<const0>\;
  \time_control_regs[0]\(5) <= \<const0>\;
  \time_control_regs[0]\(4) <= \<const0>\;
  \time_control_regs[0]\(3) <= \<const0>\;
  \time_control_regs[0]\(2) <= \<const0>\;
  \time_control_regs[0]\(1) <= \<const0>\;
  \time_control_regs[0]\(0) <= \<const0>\;
  \time_control_regs[10]\(31) <= \<const0>\;
  \time_control_regs[10]\(30) <= \<const0>\;
  \time_control_regs[10]\(29) <= \<const0>\;
  \time_control_regs[10]\(28) <= \<const0>\;
  \time_control_regs[10]\(27) <= \<const0>\;
  \time_control_regs[10]\(26) <= \<const0>\;
  \time_control_regs[10]\(25) <= \<const0>\;
  \time_control_regs[10]\(24) <= \<const0>\;
  \time_control_regs[10]\(23) <= \<const0>\;
  \time_control_regs[10]\(22) <= \<const0>\;
  \time_control_regs[10]\(21) <= \<const0>\;
  \time_control_regs[10]\(20) <= \<const0>\;
  \time_control_regs[10]\(19) <= \<const0>\;
  \time_control_regs[10]\(18) <= \<const0>\;
  \time_control_regs[10]\(17) <= \<const0>\;
  \time_control_regs[10]\(16) <= \<const0>\;
  \time_control_regs[10]\(15) <= \<const0>\;
  \time_control_regs[10]\(14) <= \<const0>\;
  \time_control_regs[10]\(13) <= \<const0>\;
  \time_control_regs[10]\(12) <= \<const0>\;
  \time_control_regs[10]\(11) <= \<const0>\;
  \time_control_regs[10]\(10) <= \<const0>\;
  \time_control_regs[10]\(9) <= \<const0>\;
  \time_control_regs[10]\(8) <= \<const0>\;
  \time_control_regs[10]\(7) <= \<const0>\;
  \time_control_regs[10]\(6) <= \<const0>\;
  \time_control_regs[10]\(5) <= \<const0>\;
  \time_control_regs[10]\(4) <= \<const0>\;
  \time_control_regs[10]\(3) <= \<const0>\;
  \time_control_regs[10]\(2) <= \<const0>\;
  \time_control_regs[10]\(1) <= \<const0>\;
  \time_control_regs[10]\(0) <= \<const0>\;
  \time_control_regs[11]\(31) <= \<const0>\;
  \time_control_regs[11]\(30) <= \<const0>\;
  \time_control_regs[11]\(29) <= \<const0>\;
  \time_control_regs[11]\(28) <= \<const0>\;
  \time_control_regs[11]\(27) <= \<const0>\;
  \time_control_regs[11]\(26) <= \<const0>\;
  \time_control_regs[11]\(25) <= \<const0>\;
  \time_control_regs[11]\(24) <= \<const0>\;
  \time_control_regs[11]\(23) <= \<const0>\;
  \time_control_regs[11]\(22) <= \<const0>\;
  \time_control_regs[11]\(21) <= \<const0>\;
  \time_control_regs[11]\(20) <= \<const0>\;
  \time_control_regs[11]\(19) <= \<const0>\;
  \time_control_regs[11]\(18) <= \<const0>\;
  \time_control_regs[11]\(17) <= \<const0>\;
  \time_control_regs[11]\(16) <= \<const0>\;
  \time_control_regs[11]\(15) <= \<const0>\;
  \time_control_regs[11]\(14) <= \<const0>\;
  \time_control_regs[11]\(13) <= \<const0>\;
  \time_control_regs[11]\(12) <= \<const0>\;
  \time_control_regs[11]\(11) <= \<const0>\;
  \time_control_regs[11]\(10) <= \<const0>\;
  \time_control_regs[11]\(9) <= \<const0>\;
  \time_control_regs[11]\(8) <= \<const0>\;
  \time_control_regs[11]\(7) <= \<const0>\;
  \time_control_regs[11]\(6) <= \<const0>\;
  \time_control_regs[11]\(5) <= \<const0>\;
  \time_control_regs[11]\(4) <= \<const0>\;
  \time_control_regs[11]\(3) <= \<const0>\;
  \time_control_regs[11]\(2) <= \<const0>\;
  \time_control_regs[11]\(1) <= \<const0>\;
  \time_control_regs[11]\(0) <= \<const0>\;
  \time_control_regs[12]\(31) <= \<const0>\;
  \time_control_regs[12]\(30) <= \<const0>\;
  \time_control_regs[12]\(29) <= \<const0>\;
  \time_control_regs[12]\(28) <= \<const0>\;
  \time_control_regs[12]\(27) <= \<const0>\;
  \time_control_regs[12]\(26) <= \<const0>\;
  \time_control_regs[12]\(25) <= \<const0>\;
  \time_control_regs[12]\(24) <= \<const0>\;
  \time_control_regs[12]\(23) <= \<const0>\;
  \time_control_regs[12]\(22) <= \<const0>\;
  \time_control_regs[12]\(21) <= \<const0>\;
  \time_control_regs[12]\(20) <= \<const0>\;
  \time_control_regs[12]\(19) <= \<const0>\;
  \time_control_regs[12]\(18) <= \<const0>\;
  \time_control_regs[12]\(17) <= \<const0>\;
  \time_control_regs[12]\(16) <= \<const0>\;
  \time_control_regs[12]\(15) <= \<const0>\;
  \time_control_regs[12]\(14) <= \<const0>\;
  \time_control_regs[12]\(13) <= \<const0>\;
  \time_control_regs[12]\(12) <= \<const0>\;
  \time_control_regs[12]\(11) <= \<const0>\;
  \time_control_regs[12]\(10) <= \<const0>\;
  \time_control_regs[12]\(9) <= \<const0>\;
  \time_control_regs[12]\(8) <= \<const0>\;
  \time_control_regs[12]\(7) <= \<const0>\;
  \time_control_regs[12]\(6) <= \<const0>\;
  \time_control_regs[12]\(5) <= \<const0>\;
  \time_control_regs[12]\(4) <= \<const0>\;
  \time_control_regs[12]\(3) <= \<const0>\;
  \time_control_regs[12]\(2) <= \<const0>\;
  \time_control_regs[12]\(1) <= \<const0>\;
  \time_control_regs[12]\(0) <= \<const0>\;
  \time_control_regs[13]\(31) <= \<const0>\;
  \time_control_regs[13]\(30) <= \<const0>\;
  \time_control_regs[13]\(29) <= \<const0>\;
  \time_control_regs[13]\(28) <= \<const0>\;
  \time_control_regs[13]\(27) <= \<const0>\;
  \time_control_regs[13]\(26) <= \<const0>\;
  \time_control_regs[13]\(25) <= \<const0>\;
  \time_control_regs[13]\(24) <= \<const0>\;
  \time_control_regs[13]\(23) <= \<const0>\;
  \time_control_regs[13]\(22) <= \<const0>\;
  \time_control_regs[13]\(21) <= \<const0>\;
  \time_control_regs[13]\(20) <= \<const0>\;
  \time_control_regs[13]\(19) <= \<const0>\;
  \time_control_regs[13]\(18) <= \<const0>\;
  \time_control_regs[13]\(17) <= \<const0>\;
  \time_control_regs[13]\(16) <= \<const0>\;
  \time_control_regs[13]\(15) <= \<const0>\;
  \time_control_regs[13]\(14) <= \<const0>\;
  \time_control_regs[13]\(13) <= \<const0>\;
  \time_control_regs[13]\(12) <= \<const0>\;
  \time_control_regs[13]\(11) <= \<const0>\;
  \time_control_regs[13]\(10) <= \<const0>\;
  \time_control_regs[13]\(9) <= \<const0>\;
  \time_control_regs[13]\(8) <= \<const0>\;
  \time_control_regs[13]\(7) <= \<const0>\;
  \time_control_regs[13]\(6) <= \<const0>\;
  \time_control_regs[13]\(5) <= \<const0>\;
  \time_control_regs[13]\(4) <= \<const0>\;
  \time_control_regs[13]\(3) <= \<const0>\;
  \time_control_regs[13]\(2) <= \<const0>\;
  \time_control_regs[13]\(1) <= \<const0>\;
  \time_control_regs[13]\(0) <= \<const0>\;
  \time_control_regs[14]\(31) <= \<const0>\;
  \time_control_regs[14]\(30) <= \<const0>\;
  \time_control_regs[14]\(29) <= \<const0>\;
  \time_control_regs[14]\(28) <= \<const0>\;
  \time_control_regs[14]\(27) <= \<const0>\;
  \time_control_regs[14]\(26) <= \<const0>\;
  \time_control_regs[14]\(25) <= \<const0>\;
  \time_control_regs[14]\(24) <= \<const0>\;
  \time_control_regs[14]\(23) <= \<const0>\;
  \time_control_regs[14]\(22) <= \<const0>\;
  \time_control_regs[14]\(21) <= \<const0>\;
  \time_control_regs[14]\(20) <= \<const0>\;
  \time_control_regs[14]\(19) <= \<const0>\;
  \time_control_regs[14]\(18) <= \<const0>\;
  \time_control_regs[14]\(17) <= \<const0>\;
  \time_control_regs[14]\(16) <= \<const0>\;
  \time_control_regs[14]\(15) <= \<const0>\;
  \time_control_regs[14]\(14) <= \<const0>\;
  \time_control_regs[14]\(13) <= \<const0>\;
  \time_control_regs[14]\(12) <= \<const0>\;
  \time_control_regs[14]\(11) <= \<const0>\;
  \time_control_regs[14]\(10) <= \<const0>\;
  \time_control_regs[14]\(9) <= \<const0>\;
  \time_control_regs[14]\(8) <= \<const0>\;
  \time_control_regs[14]\(7) <= \<const0>\;
  \time_control_regs[14]\(6) <= \<const0>\;
  \time_control_regs[14]\(5) <= \<const0>\;
  \time_control_regs[14]\(4) <= \<const0>\;
  \time_control_regs[14]\(3) <= \<const0>\;
  \time_control_regs[14]\(2) <= \<const0>\;
  \time_control_regs[14]\(1) <= \<const0>\;
  \time_control_regs[14]\(0) <= \<const0>\;
  \time_control_regs[15]\(31) <= \<const0>\;
  \time_control_regs[15]\(30) <= \<const0>\;
  \time_control_regs[15]\(29) <= \<const0>\;
  \time_control_regs[15]\(28) <= \<const0>\;
  \time_control_regs[15]\(27) <= \<const0>\;
  \time_control_regs[15]\(26) <= \<const0>\;
  \time_control_regs[15]\(25) <= \<const0>\;
  \time_control_regs[15]\(24) <= \<const0>\;
  \time_control_regs[15]\(23) <= \<const0>\;
  \time_control_regs[15]\(22) <= \<const0>\;
  \time_control_regs[15]\(21) <= \<const0>\;
  \time_control_regs[15]\(20) <= \<const0>\;
  \time_control_regs[15]\(19) <= \<const0>\;
  \time_control_regs[15]\(18) <= \<const0>\;
  \time_control_regs[15]\(17) <= \<const0>\;
  \time_control_regs[15]\(16) <= \<const0>\;
  \time_control_regs[15]\(15) <= \<const0>\;
  \time_control_regs[15]\(14) <= \<const0>\;
  \time_control_regs[15]\(13) <= \<const0>\;
  \time_control_regs[15]\(12) <= \<const0>\;
  \time_control_regs[15]\(11) <= \<const0>\;
  \time_control_regs[15]\(10) <= \<const0>\;
  \time_control_regs[15]\(9) <= \<const0>\;
  \time_control_regs[15]\(8) <= \<const0>\;
  \time_control_regs[15]\(7) <= \<const0>\;
  \time_control_regs[15]\(6) <= \<const0>\;
  \time_control_regs[15]\(5) <= \<const0>\;
  \time_control_regs[15]\(4) <= \<const0>\;
  \time_control_regs[15]\(3) <= \<const0>\;
  \time_control_regs[15]\(2) <= \<const0>\;
  \time_control_regs[15]\(1) <= \<const0>\;
  \time_control_regs[15]\(0) <= \<const0>\;
  \time_control_regs[16]\(31) <= \<const0>\;
  \time_control_regs[16]\(30) <= \<const0>\;
  \time_control_regs[16]\(29) <= \<const0>\;
  \time_control_regs[16]\(28) <= \<const0>\;
  \time_control_regs[16]\(27) <= \<const0>\;
  \time_control_regs[16]\(26) <= \<const0>\;
  \time_control_regs[16]\(25) <= \<const0>\;
  \time_control_regs[16]\(24) <= \<const1>\;
  \time_control_regs[16]\(23) <= \<const1>\;
  \time_control_regs[16]\(22) <= \<const1>\;
  \time_control_regs[16]\(21) <= \<const1>\;
  \time_control_regs[16]\(20) <= \<const0>\;
  \time_control_regs[16]\(19) <= \<const0>\;
  \time_control_regs[16]\(18) <= \<const0>\;
  \time_control_regs[16]\(17) <= \<const0>\;
  \time_control_regs[16]\(16) <= \<const0>\;
  \time_control_regs[16]\(15) <= \<const0>\;
  \time_control_regs[16]\(14) <= \<const0>\;
  \time_control_regs[16]\(13) <= \<const0>\;
  \time_control_regs[16]\(12) <= \<const0>\;
  \time_control_regs[16]\(11) <= \<const0>\;
  \time_control_regs[16]\(10) <= \<const0>\;
  \time_control_regs[16]\(9) <= \<const1>\;
  \time_control_regs[16]\(8) <= \<const1>\;
  \time_control_regs[16]\(7) <= \<const0>\;
  \time_control_regs[16]\(6) <= \<const0>\;
  \time_control_regs[16]\(5) <= \<const1>\;
  \time_control_regs[16]\(4) <= \<const0>\;
  \time_control_regs[16]\(3) <= \<const0>\;
  \time_control_regs[16]\(2) <= \<const0>\;
  \time_control_regs[16]\(1) <= \<const0>\;
  \time_control_regs[16]\(0) <= \<const0>\;
  \time_control_regs[17]\(31) <= \<const0>\;
  \time_control_regs[17]\(30) <= \<const0>\;
  \time_control_regs[17]\(29) <= \<const0>\;
  \time_control_regs[17]\(28) <= \<const0>\;
  \time_control_regs[17]\(27) <= \<const0>\;
  \time_control_regs[17]\(26) <= \<const0>\;
  \time_control_regs[17]\(25) <= \<const0>\;
  \time_control_regs[17]\(24) <= \<const0>\;
  \time_control_regs[17]\(23) <= \<const0>\;
  \time_control_regs[17]\(22) <= \<const0>\;
  \time_control_regs[17]\(21) <= \<const0>\;
  \time_control_regs[17]\(20) <= \<const0>\;
  \time_control_regs[17]\(19) <= \<const0>\;
  \time_control_regs[17]\(18) <= \<const0>\;
  \time_control_regs[17]\(17) <= \<const0>\;
  \time_control_regs[17]\(16) <= \<const0>\;
  \time_control_regs[17]\(15) <= \<const0>\;
  \time_control_regs[17]\(14) <= \<const0>\;
  \time_control_regs[17]\(13) <= \<const0>\;
  \time_control_regs[17]\(12) <= \<const0>\;
  \time_control_regs[17]\(11) <= \<const0>\;
  \time_control_regs[17]\(10) <= \<const0>\;
  \time_control_regs[17]\(9) <= \<const0>\;
  \time_control_regs[17]\(8) <= \<const0>\;
  \time_control_regs[17]\(7) <= \<const0>\;
  \time_control_regs[17]\(6) <= \<const0>\;
  \time_control_regs[17]\(5) <= \<const0>\;
  \time_control_regs[17]\(4) <= \<const0>\;
  \time_control_regs[17]\(3) <= \<const0>\;
  \time_control_regs[17]\(2) <= \<const0>\;
  \time_control_regs[17]\(1) <= \<const0>\;
  \time_control_regs[17]\(0) <= \<const0>\;
  \time_control_regs[18]\(31) <= \<const0>\;
  \time_control_regs[18]\(30) <= \<const0>\;
  \time_control_regs[18]\(29) <= \<const0>\;
  \time_control_regs[18]\(28) <= \<const0>\;
  \time_control_regs[18]\(27) <= \<const0>\;
  \time_control_regs[18]\(26) <= \<const0>\;
  \time_control_regs[18]\(25) <= \<const0>\;
  \time_control_regs[18]\(24) <= \<const0>\;
  \time_control_regs[18]\(23) <= \<const0>\;
  \time_control_regs[18]\(22) <= \<const0>\;
  \time_control_regs[18]\(21) <= \<const0>\;
  \time_control_regs[18]\(20) <= \<const0>\;
  \time_control_regs[18]\(19) <= \<const0>\;
  \time_control_regs[18]\(18) <= \<const0>\;
  \time_control_regs[18]\(17) <= \<const0>\;
  \time_control_regs[18]\(16) <= \<const0>\;
  \time_control_regs[18]\(15) <= \<const0>\;
  \time_control_regs[18]\(14) <= \<const0>\;
  \time_control_regs[18]\(13) <= \<const0>\;
  \time_control_regs[18]\(12) <= \<const0>\;
  \time_control_regs[18]\(11) <= \<const0>\;
  \time_control_regs[18]\(10) <= \<const0>\;
  \time_control_regs[18]\(9) <= \<const0>\;
  \time_control_regs[18]\(8) <= \<const0>\;
  \time_control_regs[18]\(7) <= \<const0>\;
  \time_control_regs[18]\(6) <= \<const0>\;
  \time_control_regs[18]\(5) <= \<const0>\;
  \time_control_regs[18]\(4) <= \<const0>\;
  \time_control_regs[18]\(3) <= \<const0>\;
  \time_control_regs[18]\(2) <= \<const0>\;
  \time_control_regs[18]\(1) <= \<const1>\;
  \time_control_regs[18]\(0) <= \<const0>\;
  \time_control_regs[19]\(31) <= \<const0>\;
  \time_control_regs[19]\(30) <= \<const0>\;
  \time_control_regs[19]\(29) <= \<const0>\;
  \time_control_regs[19]\(28) <= \<const0>\;
  \time_control_regs[19]\(27) <= \<const0>\;
  \time_control_regs[19]\(26) <= \<const0>\;
  \time_control_regs[19]\(25) <= \<const0>\;
  \time_control_regs[19]\(24) <= \<const0>\;
  \time_control_regs[19]\(23) <= \<const0>\;
  \time_control_regs[19]\(22) <= \<const0>\;
  \time_control_regs[19]\(21) <= \<const0>\;
  \time_control_regs[19]\(20) <= \<const0>\;
  \time_control_regs[19]\(19) <= \<const0>\;
  \time_control_regs[19]\(18) <= \<const0>\;
  \time_control_regs[19]\(17) <= \<const0>\;
  \time_control_regs[19]\(16) <= \<const0>\;
  \time_control_regs[19]\(15) <= \<const0>\;
  \time_control_regs[19]\(14) <= \<const0>\;
  \time_control_regs[19]\(13) <= \<const0>\;
  \time_control_regs[19]\(12) <= \<const0>\;
  \time_control_regs[19]\(11) <= \<const0>\;
  \time_control_regs[19]\(10) <= \<const0>\;
  \time_control_regs[19]\(9) <= \<const0>\;
  \time_control_regs[19]\(8) <= \<const0>\;
  \time_control_regs[19]\(7) <= \<const0>\;
  \time_control_regs[19]\(6) <= \<const1>\;
  \time_control_regs[19]\(5) <= \<const1>\;
  \time_control_regs[19]\(4) <= \<const1>\;
  \time_control_regs[19]\(3) <= \<const1>\;
  \time_control_regs[19]\(2) <= \<const1>\;
  \time_control_regs[19]\(1) <= \<const1>\;
  \time_control_regs[19]\(0) <= \<const1>\;
  \time_control_regs[1]\(31) <= \<const0>\;
  \time_control_regs[1]\(30) <= \<const0>\;
  \time_control_regs[1]\(29) <= \<const0>\;
  \time_control_regs[1]\(28) <= \<const0>\;
  \time_control_regs[1]\(27) <= \<const0>\;
  \time_control_regs[1]\(26) <= \<const0>\;
  \time_control_regs[1]\(25) <= \<const0>\;
  \time_control_regs[1]\(24) <= \<const0>\;
  \time_control_regs[1]\(23) <= \<const0>\;
  \time_control_regs[1]\(22) <= \<const0>\;
  \time_control_regs[1]\(21) <= \<const0>\;
  \time_control_regs[1]\(20) <= \<const0>\;
  \time_control_regs[1]\(19) <= \<const0>\;
  \time_control_regs[1]\(18) <= \<const0>\;
  \time_control_regs[1]\(17) <= \<const0>\;
  \time_control_regs[1]\(16) <= \<const0>\;
  \time_control_regs[1]\(15) <= \<const0>\;
  \time_control_regs[1]\(14) <= \<const0>\;
  \time_control_regs[1]\(13) <= \<const0>\;
  \time_control_regs[1]\(12) <= \<const0>\;
  \time_control_regs[1]\(11) <= \<const0>\;
  \time_control_regs[1]\(10) <= \<const0>\;
  \time_control_regs[1]\(9) <= \<const0>\;
  \time_control_regs[1]\(8) <= \<const0>\;
  \time_control_regs[1]\(7) <= \<const0>\;
  \time_control_regs[1]\(6) <= \<const0>\;
  \time_control_regs[1]\(5) <= \<const0>\;
  \time_control_regs[1]\(4) <= \<const0>\;
  \time_control_regs[1]\(3) <= \<const0>\;
  \time_control_regs[1]\(2) <= \<const0>\;
  \time_control_regs[1]\(1) <= \<const0>\;
  \time_control_regs[1]\(0) <= \<const0>\;
  \time_control_regs[20]\(31) <= \<const0>\;
  \time_control_regs[20]\(30) <= \<const0>\;
  \time_control_regs[20]\(29) <= \<const0>\;
  \time_control_regs[20]\(28) <= \<const0>\;
  \time_control_regs[20]\(27) <= \<const0>\;
  \time_control_regs[20]\(26) <= \<const0>\;
  \time_control_regs[20]\(25) <= \<const0>\;
  \time_control_regs[20]\(24) <= \<const0>\;
  \time_control_regs[20]\(23) <= \<const0>\;
  \time_control_regs[20]\(22) <= \<const0>\;
  \time_control_regs[20]\(21) <= \<const0>\;
  \time_control_regs[20]\(20) <= \<const0>\;
  \time_control_regs[20]\(19) <= \<const0>\;
  \time_control_regs[20]\(18) <= \<const0>\;
  \time_control_regs[20]\(17) <= \<const0>\;
  \time_control_regs[20]\(16) <= \<const0>\;
  \time_control_regs[20]\(15) <= \<const0>\;
  \time_control_regs[20]\(14) <= \<const0>\;
  \time_control_regs[20]\(13) <= \<const0>\;
  \time_control_regs[20]\(12) <= \<const0>\;
  \time_control_regs[20]\(11) <= \<const0>\;
  \time_control_regs[20]\(10) <= \<const1>\;
  \time_control_regs[20]\(9) <= \<const0>\;
  \time_control_regs[20]\(8) <= \<const0>\;
  \time_control_regs[20]\(7) <= \<const0>\;
  \time_control_regs[20]\(6) <= \<const0>\;
  \time_control_regs[20]\(5) <= \<const1>\;
  \time_control_regs[20]\(4) <= \<const0>\;
  \time_control_regs[20]\(3) <= \<const0>\;
  \time_control_regs[20]\(2) <= \<const0>\;
  \time_control_regs[20]\(1) <= \<const0>\;
  \time_control_regs[20]\(0) <= \<const0>\;
  \time_control_regs[21]\(31) <= \<const0>\;
  \time_control_regs[21]\(30) <= \<const0>\;
  \time_control_regs[21]\(29) <= \<const0>\;
  \time_control_regs[21]\(28) <= \<const0>\;
  \time_control_regs[21]\(27) <= \<const0>\;
  \time_control_regs[21]\(26) <= \<const0>\;
  \time_control_regs[21]\(25) <= \<const1>\;
  \time_control_regs[21]\(24) <= \<const0>\;
  \time_control_regs[21]\(23) <= \<const1>\;
  \time_control_regs[21]\(22) <= \<const1>\;
  \time_control_regs[21]\(21) <= \<const1>\;
  \time_control_regs[21]\(20) <= \<const0>\;
  \time_control_regs[21]\(19) <= \<const1>\;
  \time_control_regs[21]\(18) <= \<const1>\;
  \time_control_regs[21]\(17) <= \<const1>\;
  \time_control_regs[21]\(16) <= \<const0>\;
  \time_control_regs[21]\(15) <= \<const0>\;
  \time_control_regs[21]\(14) <= \<const0>\;
  \time_control_regs[21]\(13) <= \<const0>\;
  \time_control_regs[21]\(12) <= \<const0>\;
  \time_control_regs[21]\(11) <= \<const0>\;
  \time_control_regs[21]\(10) <= \<const0>\;
  \time_control_regs[21]\(9) <= \<const1>\;
  \time_control_regs[21]\(8) <= \<const0>\;
  \time_control_regs[21]\(7) <= \<const0>\;
  \time_control_regs[21]\(6) <= \<const0>\;
  \time_control_regs[21]\(5) <= \<const0>\;
  \time_control_regs[21]\(4) <= \<const0>\;
  \time_control_regs[21]\(3) <= \<const1>\;
  \time_control_regs[21]\(2) <= \<const1>\;
  \time_control_regs[21]\(1) <= \<const0>\;
  \time_control_regs[21]\(0) <= \<const1>\;
  \time_control_regs[22]\(31) <= \<const0>\;
  \time_control_regs[22]\(30) <= \<const0>\;
  \time_control_regs[22]\(29) <= \<const0>\;
  \time_control_regs[22]\(28) <= \<const0>\;
  \time_control_regs[22]\(27) <= \<const0>\;
  \time_control_regs[22]\(26) <= \<const0>\;
  \time_control_regs[22]\(25) <= \<const1>\;
  \time_control_regs[22]\(24) <= \<const1>\;
  \time_control_regs[22]\(23) <= \<const1>\;
  \time_control_regs[22]\(22) <= \<const1>\;
  \time_control_regs[22]\(21) <= \<const0>\;
  \time_control_regs[22]\(20) <= \<const0>\;
  \time_control_regs[22]\(19) <= \<const1>\;
  \time_control_regs[22]\(18) <= \<const0>\;
  \time_control_regs[22]\(17) <= \<const0>\;
  \time_control_regs[22]\(16) <= \<const0>\;
  \time_control_regs[22]\(15) <= \<const0>\;
  \time_control_regs[22]\(14) <= \<const0>\;
  \time_control_regs[22]\(13) <= \<const0>\;
  \time_control_regs[22]\(12) <= \<const0>\;
  \time_control_regs[22]\(11) <= \<const0>\;
  \time_control_regs[22]\(10) <= \<const0>\;
  \time_control_regs[22]\(9) <= \<const1>\;
  \time_control_regs[22]\(8) <= \<const1>\;
  \time_control_regs[22]\(7) <= \<const0>\;
  \time_control_regs[22]\(6) <= \<const1>\;
  \time_control_regs[22]\(5) <= \<const0>\;
  \time_control_regs[22]\(4) <= \<const0>\;
  \time_control_regs[22]\(3) <= \<const1>\;
  \time_control_regs[22]\(2) <= \<const0>\;
  \time_control_regs[22]\(1) <= \<const0>\;
  \time_control_regs[22]\(0) <= \<const0>\;
  \time_control_regs[23]\(31) <= \<const0>\;
  \time_control_regs[23]\(30) <= \<const0>\;
  \time_control_regs[23]\(29) <= \<const0>\;
  \time_control_regs[23]\(28) <= \<const0>\;
  \time_control_regs[23]\(27) <= \<const0>\;
  \time_control_regs[23]\(26) <= \<const0>\;
  \time_control_regs[23]\(25) <= \<const1>\;
  \time_control_regs[23]\(24) <= \<const1>\;
  \time_control_regs[23]\(23) <= \<const0>\;
  \time_control_regs[23]\(22) <= \<const0>\;
  \time_control_regs[23]\(21) <= \<const1>\;
  \time_control_regs[23]\(20) <= \<const0>\;
  \time_control_regs[23]\(19) <= \<const0>\;
  \time_control_regs[23]\(18) <= \<const0>\;
  \time_control_regs[23]\(17) <= \<const0>\;
  \time_control_regs[23]\(16) <= \<const0>\;
  \time_control_regs[23]\(15) <= \<const0>\;
  \time_control_regs[23]\(14) <= \<const0>\;
  \time_control_regs[23]\(13) <= \<const0>\;
  \time_control_regs[23]\(12) <= \<const0>\;
  \time_control_regs[23]\(11) <= \<const0>\;
  \time_control_regs[23]\(10) <= \<const0>\;
  \time_control_regs[23]\(9) <= \<const1>\;
  \time_control_regs[23]\(8) <= \<const1>\;
  \time_control_regs[23]\(7) <= \<const0>\;
  \time_control_regs[23]\(6) <= \<const0>\;
  \time_control_regs[23]\(5) <= \<const1>\;
  \time_control_regs[23]\(4) <= \<const0>\;
  \time_control_regs[23]\(3) <= \<const0>\;
  \time_control_regs[23]\(2) <= \<const0>\;
  \time_control_regs[23]\(1) <= \<const0>\;
  \time_control_regs[23]\(0) <= \<const0>\;
  \time_control_regs[24]\(31) <= \<const0>\;
  \time_control_regs[24]\(30) <= \<const0>\;
  \time_control_regs[24]\(29) <= \<const0>\;
  \time_control_regs[24]\(28) <= \<const0>\;
  \time_control_regs[24]\(27) <= \<const0>\;
  \time_control_regs[24]\(26) <= \<const0>\;
  \time_control_regs[24]\(25) <= \<const0>\;
  \time_control_regs[24]\(24) <= \<const1>\;
  \time_control_regs[24]\(23) <= \<const1>\;
  \time_control_regs[24]\(22) <= \<const1>\;
  \time_control_regs[24]\(21) <= \<const1>\;
  \time_control_regs[24]\(20) <= \<const0>\;
  \time_control_regs[24]\(19) <= \<const1>\;
  \time_control_regs[24]\(18) <= \<const1>\;
  \time_control_regs[24]\(17) <= \<const0>\;
  \time_control_regs[24]\(16) <= \<const0>\;
  \time_control_regs[24]\(15) <= \<const0>\;
  \time_control_regs[24]\(14) <= \<const0>\;
  \time_control_regs[24]\(13) <= \<const0>\;
  \time_control_regs[24]\(12) <= \<const0>\;
  \time_control_regs[24]\(11) <= \<const0>\;
  \time_control_regs[24]\(10) <= \<const0>\;
  \time_control_regs[24]\(9) <= \<const0>\;
  \time_control_regs[24]\(8) <= \<const1>\;
  \time_control_regs[24]\(7) <= \<const1>\;
  \time_control_regs[24]\(6) <= \<const1>\;
  \time_control_regs[24]\(5) <= \<const1>\;
  \time_control_regs[24]\(4) <= \<const0>\;
  \time_control_regs[24]\(3) <= \<const1>\;
  \time_control_regs[24]\(2) <= \<const0>\;
  \time_control_regs[24]\(1) <= \<const1>\;
  \time_control_regs[24]\(0) <= \<const0>\;
  \time_control_regs[25]\(31) <= \<const0>\;
  \time_control_regs[25]\(30) <= \<const0>\;
  \time_control_regs[25]\(29) <= \<const0>\;
  \time_control_regs[25]\(28) <= \<const0>\;
  \time_control_regs[25]\(27) <= \<const0>\;
  \time_control_regs[25]\(26) <= \<const0>\;
  \time_control_regs[25]\(25) <= \<const1>\;
  \time_control_regs[25]\(24) <= \<const1>\;
  \time_control_regs[25]\(23) <= \<const0>\;
  \time_control_regs[25]\(22) <= \<const0>\;
  \time_control_regs[25]\(21) <= \<const1>\;
  \time_control_regs[25]\(20) <= \<const0>\;
  \time_control_regs[25]\(19) <= \<const0>\;
  \time_control_regs[25]\(18) <= \<const0>\;
  \time_control_regs[25]\(17) <= \<const0>\;
  \time_control_regs[25]\(16) <= \<const0>\;
  \time_control_regs[25]\(15) <= \<const0>\;
  \time_control_regs[25]\(14) <= \<const0>\;
  \time_control_regs[25]\(13) <= \<const0>\;
  \time_control_regs[25]\(12) <= \<const0>\;
  \time_control_regs[25]\(11) <= \<const0>\;
  \time_control_regs[25]\(10) <= \<const0>\;
  \time_control_regs[25]\(9) <= \<const1>\;
  \time_control_regs[25]\(8) <= \<const1>\;
  \time_control_regs[25]\(7) <= \<const0>\;
  \time_control_regs[25]\(6) <= \<const0>\;
  \time_control_regs[25]\(5) <= \<const1>\;
  \time_control_regs[25]\(4) <= \<const0>\;
  \time_control_regs[25]\(3) <= \<const0>\;
  \time_control_regs[25]\(2) <= \<const0>\;
  \time_control_regs[25]\(1) <= \<const0>\;
  \time_control_regs[25]\(0) <= \<const0>\;
  \time_control_regs[26]\(31) <= \<const0>\;
  \time_control_regs[26]\(30) <= \<const0>\;
  \time_control_regs[26]\(29) <= \<const0>\;
  \time_control_regs[26]\(28) <= \<const0>\;
  \time_control_regs[26]\(27) <= \<const0>\;
  \time_control_regs[26]\(26) <= \<const1>\;
  \time_control_regs[26]\(25) <= \<const0>\;
  \time_control_regs[26]\(24) <= \<const1>\;
  \time_control_regs[26]\(23) <= \<const0>\;
  \time_control_regs[26]\(22) <= \<const0>\;
  \time_control_regs[26]\(21) <= \<const0>\;
  \time_control_regs[26]\(20) <= \<const0>\;
  \time_control_regs[26]\(19) <= \<const0>\;
  \time_control_regs[26]\(18) <= \<const0>\;
  \time_control_regs[26]\(17) <= \<const0>\;
  \time_control_regs[26]\(16) <= \<const0>\;
  \time_control_regs[26]\(15) <= \<const0>\;
  \time_control_regs[26]\(14) <= \<const0>\;
  \time_control_regs[26]\(13) <= \<const0>\;
  \time_control_regs[26]\(12) <= \<const0>\;
  \time_control_regs[26]\(11) <= \<const0>\;
  \time_control_regs[26]\(10) <= \<const1>\;
  \time_control_regs[26]\(9) <= \<const0>\;
  \time_control_regs[26]\(8) <= \<const1>\;
  \time_control_regs[26]\(7) <= \<const0>\;
  \time_control_regs[26]\(6) <= \<const0>\;
  \time_control_regs[26]\(5) <= \<const0>\;
  \time_control_regs[26]\(4) <= \<const0>\;
  \time_control_regs[26]\(3) <= \<const0>\;
  \time_control_regs[26]\(2) <= \<const0>\;
  \time_control_regs[26]\(1) <= \<const0>\;
  \time_control_regs[26]\(0) <= \<const0>\;
  \time_control_regs[27]\(31) <= \<const0>\;
  \time_control_regs[27]\(30) <= \<const0>\;
  \time_control_regs[27]\(29) <= \<const0>\;
  \time_control_regs[27]\(28) <= \<const0>\;
  \time_control_regs[27]\(27) <= \<const0>\;
  \time_control_regs[27]\(26) <= \<const0>\;
  \time_control_regs[27]\(25) <= \<const1>\;
  \time_control_regs[27]\(24) <= \<const0>\;
  \time_control_regs[27]\(23) <= \<const1>\;
  \time_control_regs[27]\(22) <= \<const1>\;
  \time_control_regs[27]\(21) <= \<const0>\;
  \time_control_regs[27]\(20) <= \<const1>\;
  \time_control_regs[27]\(19) <= \<const1>\;
  \time_control_regs[27]\(18) <= \<const0>\;
  \time_control_regs[27]\(17) <= \<const0>\;
  \time_control_regs[27]\(16) <= \<const1>\;
  \time_control_regs[27]\(15) <= \<const0>\;
  \time_control_regs[27]\(14) <= \<const0>\;
  \time_control_regs[27]\(13) <= \<const0>\;
  \time_control_regs[27]\(12) <= \<const0>\;
  \time_control_regs[27]\(11) <= \<const0>\;
  \time_control_regs[27]\(10) <= \<const0>\;
  \time_control_regs[27]\(9) <= \<const1>\;
  \time_control_regs[27]\(8) <= \<const0>\;
  \time_control_regs[27]\(7) <= \<const1>\;
  \time_control_regs[27]\(6) <= \<const1>\;
  \time_control_regs[27]\(5) <= \<const0>\;
  \time_control_regs[27]\(4) <= \<const1>\;
  \time_control_regs[27]\(3) <= \<const0>\;
  \time_control_regs[27]\(2) <= \<const1>\;
  \time_control_regs[27]\(1) <= \<const0>\;
  \time_control_regs[27]\(0) <= \<const0>\;
  \time_control_regs[28]\(31) <= \<const0>\;
  \time_control_regs[28]\(30) <= \<const0>\;
  \time_control_regs[28]\(29) <= \<const0>\;
  \time_control_regs[28]\(28) <= \<const0>\;
  \time_control_regs[28]\(27) <= \<const0>\;
  \time_control_regs[28]\(26) <= \<const1>\;
  \time_control_regs[28]\(25) <= \<const0>\;
  \time_control_regs[28]\(24) <= \<const1>\;
  \time_control_regs[28]\(23) <= \<const0>\;
  \time_control_regs[28]\(22) <= \<const0>\;
  \time_control_regs[28]\(21) <= \<const0>\;
  \time_control_regs[28]\(20) <= \<const0>\;
  \time_control_regs[28]\(19) <= \<const0>\;
  \time_control_regs[28]\(18) <= \<const0>\;
  \time_control_regs[28]\(17) <= \<const0>\;
  \time_control_regs[28]\(16) <= \<const0>\;
  \time_control_regs[28]\(15) <= \<const0>\;
  \time_control_regs[28]\(14) <= \<const0>\;
  \time_control_regs[28]\(13) <= \<const0>\;
  \time_control_regs[28]\(12) <= \<const0>\;
  \time_control_regs[28]\(11) <= \<const0>\;
  \time_control_regs[28]\(10) <= \<const1>\;
  \time_control_regs[28]\(9) <= \<const0>\;
  \time_control_regs[28]\(8) <= \<const1>\;
  \time_control_regs[28]\(7) <= \<const0>\;
  \time_control_regs[28]\(6) <= \<const0>\;
  \time_control_regs[28]\(5) <= \<const0>\;
  \time_control_regs[28]\(4) <= \<const0>\;
  \time_control_regs[28]\(3) <= \<const0>\;
  \time_control_regs[28]\(2) <= \<const0>\;
  \time_control_regs[28]\(1) <= \<const0>\;
  \time_control_regs[28]\(0) <= \<const0>\;
  \time_control_regs[29]\(31) <= \<const0>\;
  \time_control_regs[29]\(30) <= \<const0>\;
  \time_control_regs[29]\(29) <= \<const0>\;
  \time_control_regs[29]\(28) <= \<const0>\;
  \time_control_regs[29]\(27) <= \<const0>\;
  \time_control_regs[29]\(26) <= \<const0>\;
  \time_control_regs[29]\(25) <= \<const0>\;
  \time_control_regs[29]\(24) <= \<const1>\;
  \time_control_regs[29]\(23) <= \<const1>\;
  \time_control_regs[29]\(22) <= \<const1>\;
  \time_control_regs[29]\(21) <= \<const1>\;
  \time_control_regs[29]\(20) <= \<const0>\;
  \time_control_regs[29]\(19) <= \<const0>\;
  \time_control_regs[29]\(18) <= \<const0>\;
  \time_control_regs[29]\(17) <= \<const0>\;
  \time_control_regs[29]\(16) <= \<const0>\;
  \time_control_regs[29]\(15) <= \<const0>\;
  \time_control_regs[29]\(14) <= \<const0>\;
  \time_control_regs[29]\(13) <= \<const0>\;
  \time_control_regs[29]\(12) <= \<const0>\;
  \time_control_regs[29]\(11) <= \<const0>\;
  \time_control_regs[29]\(10) <= \<const0>\;
  \time_control_regs[29]\(9) <= \<const1>\;
  \time_control_regs[29]\(8) <= \<const1>\;
  \time_control_regs[29]\(7) <= \<const0>\;
  \time_control_regs[29]\(6) <= \<const0>\;
  \time_control_regs[29]\(5) <= \<const1>\;
  \time_control_regs[29]\(4) <= \<const0>\;
  \time_control_regs[29]\(3) <= \<const0>\;
  \time_control_regs[29]\(2) <= \<const0>\;
  \time_control_regs[29]\(1) <= \<const0>\;
  \time_control_regs[29]\(0) <= \<const0>\;
  \time_control_regs[2]\(31) <= \<const0>\;
  \time_control_regs[2]\(30) <= \<const0>\;
  \time_control_regs[2]\(29) <= \<const0>\;
  \time_control_regs[2]\(28) <= \<const0>\;
  \time_control_regs[2]\(27) <= \<const0>\;
  \time_control_regs[2]\(26) <= \<const0>\;
  \time_control_regs[2]\(25) <= \<const0>\;
  \time_control_regs[2]\(24) <= \<const0>\;
  \time_control_regs[2]\(23) <= \<const0>\;
  \time_control_regs[2]\(22) <= \<const0>\;
  \time_control_regs[2]\(21) <= \<const0>\;
  \time_control_regs[2]\(20) <= \<const0>\;
  \time_control_regs[2]\(19) <= \<const0>\;
  \time_control_regs[2]\(18) <= \<const0>\;
  \time_control_regs[2]\(17) <= \<const0>\;
  \time_control_regs[2]\(16) <= \<const0>\;
  \time_control_regs[2]\(15) <= \<const0>\;
  \time_control_regs[2]\(14) <= \<const0>\;
  \time_control_regs[2]\(13) <= \<const0>\;
  \time_control_regs[2]\(12) <= \<const0>\;
  \time_control_regs[2]\(11) <= \<const0>\;
  \time_control_regs[2]\(10) <= \<const0>\;
  \time_control_regs[2]\(9) <= \<const0>\;
  \time_control_regs[2]\(8) <= \<const0>\;
  \time_control_regs[2]\(7) <= \<const0>\;
  \time_control_regs[2]\(6) <= \<const0>\;
  \time_control_regs[2]\(5) <= \<const0>\;
  \time_control_regs[2]\(4) <= \<const0>\;
  \time_control_regs[2]\(3) <= \<const0>\;
  \time_control_regs[2]\(2) <= \<const0>\;
  \time_control_regs[2]\(1) <= \<const0>\;
  \time_control_regs[2]\(0) <= \<const0>\;
  \time_control_regs[3]\(31) <= \<const0>\;
  \time_control_regs[3]\(30) <= \<const0>\;
  \time_control_regs[3]\(29) <= \<const0>\;
  \time_control_regs[3]\(28) <= \<const0>\;
  \time_control_regs[3]\(27) <= \<const0>\;
  \time_control_regs[3]\(26) <= \<const0>\;
  \time_control_regs[3]\(25) <= \<const0>\;
  \time_control_regs[3]\(24) <= \<const0>\;
  \time_control_regs[3]\(23) <= \<const0>\;
  \time_control_regs[3]\(22) <= \<const0>\;
  \time_control_regs[3]\(21) <= \<const0>\;
  \time_control_regs[3]\(20) <= \<const0>\;
  \time_control_regs[3]\(19) <= \<const0>\;
  \time_control_regs[3]\(18) <= \<const0>\;
  \time_control_regs[3]\(17) <= \<const0>\;
  \time_control_regs[3]\(16) <= \<const0>\;
  \time_control_regs[3]\(15) <= \<const0>\;
  \time_control_regs[3]\(14) <= \<const0>\;
  \time_control_regs[3]\(13) <= \<const0>\;
  \time_control_regs[3]\(12) <= \<const0>\;
  \time_control_regs[3]\(11) <= \<const0>\;
  \time_control_regs[3]\(10) <= \<const0>\;
  \time_control_regs[3]\(9) <= \<const0>\;
  \time_control_regs[3]\(8) <= \<const0>\;
  \time_control_regs[3]\(7) <= \<const0>\;
  \time_control_regs[3]\(6) <= \<const0>\;
  \time_control_regs[3]\(5) <= \<const0>\;
  \time_control_regs[3]\(4) <= \<const0>\;
  \time_control_regs[3]\(3) <= \<const0>\;
  \time_control_regs[3]\(2) <= \<const0>\;
  \time_control_regs[3]\(1) <= \<const0>\;
  \time_control_regs[3]\(0) <= \<const0>\;
  \time_control_regs[4]\(31) <= \<const0>\;
  \time_control_regs[4]\(30) <= \<const0>\;
  \time_control_regs[4]\(29) <= \<const0>\;
  \time_control_regs[4]\(28) <= \<const0>\;
  \time_control_regs[4]\(27) <= \<const0>\;
  \time_control_regs[4]\(26) <= \<const0>\;
  \time_control_regs[4]\(25) <= \<const0>\;
  \time_control_regs[4]\(24) <= \<const0>\;
  \time_control_regs[4]\(23) <= \<const0>\;
  \time_control_regs[4]\(22) <= \<const0>\;
  \time_control_regs[4]\(21) <= \<const0>\;
  \time_control_regs[4]\(20) <= \<const0>\;
  \time_control_regs[4]\(19) <= \<const0>\;
  \time_control_regs[4]\(18) <= \<const0>\;
  \time_control_regs[4]\(17) <= \<const0>\;
  \time_control_regs[4]\(16) <= \<const0>\;
  \time_control_regs[4]\(15) <= \<const0>\;
  \time_control_regs[4]\(14) <= \<const0>\;
  \time_control_regs[4]\(13) <= \<const0>\;
  \time_control_regs[4]\(12) <= \<const0>\;
  \time_control_regs[4]\(11) <= \<const0>\;
  \time_control_regs[4]\(10) <= \<const0>\;
  \time_control_regs[4]\(9) <= \<const0>\;
  \time_control_regs[4]\(8) <= \<const0>\;
  \time_control_regs[4]\(7) <= \<const0>\;
  \time_control_regs[4]\(6) <= \<const0>\;
  \time_control_regs[4]\(5) <= \<const0>\;
  \time_control_regs[4]\(4) <= \<const0>\;
  \time_control_regs[4]\(3) <= \<const0>\;
  \time_control_regs[4]\(2) <= \<const0>\;
  \time_control_regs[4]\(1) <= \<const0>\;
  \time_control_regs[4]\(0) <= \<const0>\;
  \time_control_regs[5]\(31) <= \<const0>\;
  \time_control_regs[5]\(30) <= \<const0>\;
  \time_control_regs[5]\(29) <= \<const0>\;
  \time_control_regs[5]\(28) <= \<const0>\;
  \time_control_regs[5]\(27) <= \<const0>\;
  \time_control_regs[5]\(26) <= \<const0>\;
  \time_control_regs[5]\(25) <= \<const0>\;
  \time_control_regs[5]\(24) <= \<const0>\;
  \time_control_regs[5]\(23) <= \<const0>\;
  \time_control_regs[5]\(22) <= \<const0>\;
  \time_control_regs[5]\(21) <= \<const0>\;
  \time_control_regs[5]\(20) <= \<const0>\;
  \time_control_regs[5]\(19) <= \<const0>\;
  \time_control_regs[5]\(18) <= \<const0>\;
  \time_control_regs[5]\(17) <= \<const0>\;
  \time_control_regs[5]\(16) <= \<const0>\;
  \time_control_regs[5]\(15) <= \<const0>\;
  \time_control_regs[5]\(14) <= \<const0>\;
  \time_control_regs[5]\(13) <= \<const0>\;
  \time_control_regs[5]\(12) <= \<const0>\;
  \time_control_regs[5]\(11) <= \<const0>\;
  \time_control_regs[5]\(10) <= \<const0>\;
  \time_control_regs[5]\(9) <= \<const0>\;
  \time_control_regs[5]\(8) <= \<const0>\;
  \time_control_regs[5]\(7) <= \<const0>\;
  \time_control_regs[5]\(6) <= \<const0>\;
  \time_control_regs[5]\(5) <= \<const0>\;
  \time_control_regs[5]\(4) <= \<const0>\;
  \time_control_regs[5]\(3) <= \<const0>\;
  \time_control_regs[5]\(2) <= \<const0>\;
  \time_control_regs[5]\(1) <= \<const0>\;
  \time_control_regs[5]\(0) <= \<const0>\;
  \time_control_regs[6]\(31) <= \<const0>\;
  \time_control_regs[6]\(30) <= \<const0>\;
  \time_control_regs[6]\(29) <= \<const0>\;
  \time_control_regs[6]\(28) <= \<const0>\;
  \time_control_regs[6]\(27) <= \<const0>\;
  \time_control_regs[6]\(26) <= \<const0>\;
  \time_control_regs[6]\(25) <= \<const0>\;
  \time_control_regs[6]\(24) <= \<const0>\;
  \time_control_regs[6]\(23) <= \<const0>\;
  \time_control_regs[6]\(22) <= \<const0>\;
  \time_control_regs[6]\(21) <= \<const0>\;
  \time_control_regs[6]\(20) <= \<const0>\;
  \time_control_regs[6]\(19) <= \<const0>\;
  \time_control_regs[6]\(18) <= \<const0>\;
  \time_control_regs[6]\(17) <= \<const0>\;
  \time_control_regs[6]\(16) <= \<const0>\;
  \time_control_regs[6]\(15) <= \<const0>\;
  \time_control_regs[6]\(14) <= \<const0>\;
  \time_control_regs[6]\(13) <= \<const0>\;
  \time_control_regs[6]\(12) <= \<const0>\;
  \time_control_regs[6]\(11) <= \<const0>\;
  \time_control_regs[6]\(10) <= \<const0>\;
  \time_control_regs[6]\(9) <= \<const0>\;
  \time_control_regs[6]\(8) <= \<const0>\;
  \time_control_regs[6]\(7) <= \<const0>\;
  \time_control_regs[6]\(6) <= \<const0>\;
  \time_control_regs[6]\(5) <= \<const0>\;
  \time_control_regs[6]\(4) <= \<const0>\;
  \time_control_regs[6]\(3) <= \<const0>\;
  \time_control_regs[6]\(2) <= \<const0>\;
  \time_control_regs[6]\(1) <= \<const0>\;
  \time_control_regs[6]\(0) <= \<const0>\;
  \time_control_regs[7]\(31) <= \<const0>\;
  \time_control_regs[7]\(30) <= \<const0>\;
  \time_control_regs[7]\(29) <= \<const0>\;
  \time_control_regs[7]\(28) <= \<const0>\;
  \time_control_regs[7]\(27) <= \<const0>\;
  \time_control_regs[7]\(26) <= \<const0>\;
  \time_control_regs[7]\(25) <= \<const0>\;
  \time_control_regs[7]\(24) <= \<const0>\;
  \time_control_regs[7]\(23) <= \<const0>\;
  \time_control_regs[7]\(22) <= \<const0>\;
  \time_control_regs[7]\(21) <= \<const0>\;
  \time_control_regs[7]\(20) <= \<const0>\;
  \time_control_regs[7]\(19) <= \<const0>\;
  \time_control_regs[7]\(18) <= \<const0>\;
  \time_control_regs[7]\(17) <= \<const0>\;
  \time_control_regs[7]\(16) <= \<const0>\;
  \time_control_regs[7]\(15) <= \<const0>\;
  \time_control_regs[7]\(14) <= \<const0>\;
  \time_control_regs[7]\(13) <= \<const0>\;
  \time_control_regs[7]\(12) <= \<const0>\;
  \time_control_regs[7]\(11) <= \<const0>\;
  \time_control_regs[7]\(10) <= \<const0>\;
  \time_control_regs[7]\(9) <= \<const0>\;
  \time_control_regs[7]\(8) <= \<const0>\;
  \time_control_regs[7]\(7) <= \<const0>\;
  \time_control_regs[7]\(6) <= \<const0>\;
  \time_control_regs[7]\(5) <= \<const0>\;
  \time_control_regs[7]\(4) <= \<const0>\;
  \time_control_regs[7]\(3) <= \<const0>\;
  \time_control_regs[7]\(2) <= \<const0>\;
  \time_control_regs[7]\(1) <= \<const0>\;
  \time_control_regs[7]\(0) <= \<const0>\;
  \time_control_regs[8]\(31) <= \<const0>\;
  \time_control_regs[8]\(30) <= \<const0>\;
  \time_control_regs[8]\(29) <= \<const0>\;
  \time_control_regs[8]\(28) <= \<const0>\;
  \time_control_regs[8]\(27) <= \<const0>\;
  \time_control_regs[8]\(26) <= \<const0>\;
  \time_control_regs[8]\(25) <= \<const0>\;
  \time_control_regs[8]\(24) <= \<const0>\;
  \time_control_regs[8]\(23) <= \<const0>\;
  \time_control_regs[8]\(22) <= \<const0>\;
  \time_control_regs[8]\(21) <= \<const0>\;
  \time_control_regs[8]\(20) <= \<const0>\;
  \time_control_regs[8]\(19) <= \<const0>\;
  \time_control_regs[8]\(18) <= \<const0>\;
  \time_control_regs[8]\(17) <= \<const0>\;
  \time_control_regs[8]\(16) <= \<const0>\;
  \time_control_regs[8]\(15) <= \<const0>\;
  \time_control_regs[8]\(14) <= \<const0>\;
  \time_control_regs[8]\(13) <= \<const0>\;
  \time_control_regs[8]\(12) <= \<const0>\;
  \time_control_regs[8]\(11) <= \<const0>\;
  \time_control_regs[8]\(10) <= \<const0>\;
  \time_control_regs[8]\(9) <= \<const0>\;
  \time_control_regs[8]\(8) <= \<const0>\;
  \time_control_regs[8]\(7) <= \<const0>\;
  \time_control_regs[8]\(6) <= \<const0>\;
  \time_control_regs[8]\(5) <= \<const0>\;
  \time_control_regs[8]\(4) <= \<const0>\;
  \time_control_regs[8]\(3) <= \<const0>\;
  \time_control_regs[8]\(2) <= \<const0>\;
  \time_control_regs[8]\(1) <= \<const0>\;
  \time_control_regs[8]\(0) <= \<const0>\;
  \time_control_regs[9]\(31) <= \<const0>\;
  \time_control_regs[9]\(30) <= \<const0>\;
  \time_control_regs[9]\(29) <= \<const0>\;
  \time_control_regs[9]\(28) <= \<const0>\;
  \time_control_regs[9]\(27) <= \<const0>\;
  \time_control_regs[9]\(26) <= \<const0>\;
  \time_control_regs[9]\(25) <= \<const0>\;
  \time_control_regs[9]\(24) <= \<const0>\;
  \time_control_regs[9]\(23) <= \<const0>\;
  \time_control_regs[9]\(22) <= \<const0>\;
  \time_control_regs[9]\(21) <= \<const0>\;
  \time_control_regs[9]\(20) <= \<const0>\;
  \time_control_regs[9]\(19) <= \<const0>\;
  \time_control_regs[9]\(18) <= \<const0>\;
  \time_control_regs[9]\(17) <= \<const0>\;
  \time_control_regs[9]\(16) <= \<const0>\;
  \time_control_regs[9]\(15) <= \<const0>\;
  \time_control_regs[9]\(14) <= \<const0>\;
  \time_control_regs[9]\(13) <= \<const0>\;
  \time_control_regs[9]\(12) <= \<const0>\;
  \time_control_regs[9]\(11) <= \<const0>\;
  \time_control_regs[9]\(10) <= \<const0>\;
  \time_control_regs[9]\(9) <= \<const0>\;
  \time_control_regs[9]\(8) <= \<const0>\;
  \time_control_regs[9]\(7) <= \<const0>\;
  \time_control_regs[9]\(6) <= \<const0>\;
  \time_control_regs[9]\(5) <= \<const0>\;
  \time_control_regs[9]\(4) <= \<const0>\;
  \time_control_regs[9]\(3) <= \<const0>\;
  \time_control_regs[9]\(2) <= \<const0>\;
  \time_control_regs[9]\(1) <= \<const0>\;
  \time_control_regs[9]\(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_tc_1_0_tc_top is
  port (
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_reg : out STD_LOGIC;
    active_video_reg : out STD_LOGIC;
    active_chroma_out : out STD_LOGIC;
    reg_update : out STD_LOGIC;
    \genr_status_regs[1]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    fsync_in : in STD_LOGIC;
    \time_control_regs[19]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    core_d_out : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    resetn_out : in STD_LOGIC;
    \core_control_regs[0]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \time_control_regs[21]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \time_control_regs[22]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \time_control_regs[16]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \time_control_regs[25]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \time_control_regs[24]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \time_control_regs[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_tc_1_0_tc_top : entity is "tc_top";
end design_1_v_tc_1_0_tc_top;

architecture STRUCTURE of design_1_v_tc_1_0_tc_top is
  signal \GEN_GENERATOR.U_TC_GEN_n_10\ : STD_LOGIC;
  signal \GEN_GENERATOR.U_TC_GEN_n_9\ : STD_LOGIC;
  signal \^active_video_reg\ : STD_LOGIC;
  signal \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_n_0\ : STD_LOGIC;
  signal \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0\ : STD_LOGIC;
  signal \detect_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0\ : STD_LOGIC;
  signal detect_en_d_reg_gate_n_0 : STD_LOGIC;
  signal detect_en_d_reg_r_0_n_0 : STD_LOGIC;
  signal detect_en_d_reg_r_1_n_0 : STD_LOGIC;
  signal detect_en_d_reg_r_n_0 : STD_LOGIC;
  signal \^fsync_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gen_active_video_d : STD_LOGIC;
  signal gen_vblank_d : STD_LOGIC;
  signal \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0\ : STD_LOGIC;
  signal \generate_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0\ : STD_LOGIC;
  signal generate_en_d_reg_gate_n_0 : STD_LOGIC;
  signal \^genr_status_regs[1]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \intr_status_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \intr_status_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \intr_status_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \intr_status_int[13]_i_1_n_0\ : STD_LOGIC;
  signal \intr_status_int[16]_i_1_n_0\ : STD_LOGIC;
  signal \intr_status_int[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 13 to 13 );
  signal reset : STD_LOGIC;
  signal \^vblank_reg\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0\ : label is "U0/\U_TC_TOP/detect_en_d_reg ";
  attribute srl_name : string;
  attribute srl_name of \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0\ : label is "U0/\U_TC_TOP/detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of detect_en_d_reg_gate : label is "soft_lutpair3";
  attribute srl_bus_name of \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0\ : label is "U0/\U_TC_TOP/generate_en_d_reg ";
  attribute srl_name of \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0\ : label is "U0/\U_TC_TOP/generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0 ";
  attribute SOFT_HLUTNM of generate_en_d_reg_gate : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \intr_status_int[11]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \intr_status_int[9]_i_1\ : label is "soft_lutpair2";
begin
  active_video_reg <= \^active_video_reg\;
  fsync_out(0) <= \^fsync_out\(0);
  \genr_status_regs[1]\(5 downto 0) <= \^genr_status_regs[1]\(5 downto 0);
  vblank_reg <= \^vblank_reg\;
\GEN_GENERATOR.U_TC_GEN\: entity work.design_1_v_tc_1_0_tc_generator
     port map (
      D(11 downto 0) => D(11 downto 0),
      active_chroma_out => active_chroma_out,
      active_video_reg_0 => \^active_video_reg\,
      clk => clk,
      clken => clken,
      \core_control_regs[0]\(23 downto 0) => \core_control_regs[0]\(23 downto 0),
      core_d_out => core_d_out,
      fsync_in => fsync_in,
      fsync_out(0) => \^fsync_out\(0),
      gen_active_video_d => gen_active_video_d,
      gen_active_video_d_reg => \GEN_GENERATOR.U_TC_GEN_n_10\,
      gen_clken => gen_clken,
      gen_vblank_d => gen_vblank_d,
      \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_0\ => \GEN_GENERATOR.U_TC_GEN_n_9\,
      \genr_control_regs[0]\(2) => \genr_control_regs[0]\(3),
      \genr_control_regs[0]\(1 downto 0) => \genr_control_regs[0]\(1 downto 0),
      hblank_out => hblank_out,
      hsync_out => hsync_out,
      p_0_in0_in => p_0_in0_in,
      p_1_out(0) => p_1_out(13),
      reg_update => reg_update,
      resetn_out => resetn_out,
      \time_control_regs[16]\(23 downto 0) => \time_control_regs[16]\(23 downto 0),
      \time_control_regs[19]\(5 downto 0) => \time_control_regs[19]\(5 downto 0),
      \time_control_regs[21]\(11 downto 0) => \time_control_regs[21]\(11 downto 0),
      \time_control_regs[22]\(23 downto 0) => \time_control_regs[22]\(23 downto 0),
      \time_control_regs[23]\(23 downto 0) => \time_control_regs[23]\(23 downto 0),
      \time_control_regs[24]\(23 downto 0) => \time_control_regs[24]\(23 downto 0),
      \time_control_regs[25]\(23 downto 0) => \time_control_regs[25]\(23 downto 0),
      vblank_reg_0 => \^vblank_reg\,
      vsync_out => vsync_out
    );
\detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => clken,
      CLK => clk,
      D => \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_n_0\,
      Q => \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0\
    );
\detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \genr_control_regs[0]\(2),
      I1 => \genr_control_regs[0]\(0),
      I2 => core_d_out,
      O => \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_i_1_n_0\
    );
\detect_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clken,
      D => \detect_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0\,
      Q => \detect_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0\,
      R => '0'
    );
\detect_en_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clken,
      D => detect_en_d_reg_gate_n_0,
      Q => p_0_in,
      R => reset
    );
detect_en_d_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \detect_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0\,
      I1 => detect_en_d_reg_r_1_n_0,
      O => detect_en_d_reg_gate_n_0
    );
detect_en_d_reg_r: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clken,
      D => '1',
      Q => detect_en_d_reg_r_n_0,
      R => reset
    );
detect_en_d_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clken,
      D => detect_en_d_reg_r_n_0,
      Q => detect_en_d_reg_r_0_n_0,
      R => reset
    );
detect_en_d_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clken,
      D => detect_en_d_reg_r_0_n_0,
      Q => detect_en_d_reg_r_1_n_0,
      R => reset
    );
gen_active_video_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clken,
      D => \^active_video_reg\,
      Q => gen_active_video_d,
      R => reset
    );
gen_vblank_d_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn_out,
      O => reset
    );
gen_vblank_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clken,
      D => \^vblank_reg\,
      Q => gen_vblank_d,
      R => reset
    );
\generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => clken,
      CLK => clk,
      D => \GEN_GENERATOR.U_TC_GEN_n_9\,
      Q => \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0\
    );
\generate_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clken,
      D => \generate_en_d_reg[1]_srl2___U_TC_TOP_detect_en_d_reg_r_0_n_0\,
      Q => \generate_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0\,
      R => '0'
    );
\generate_en_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => clken,
      D => generate_en_d_reg_gate_n_0,
      Q => p_0_in0_in,
      R => reset
    );
generate_en_d_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \generate_en_d_reg[2]_U_TC_TOP_detect_en_d_reg_r_1_n_0\,
      I1 => detect_en_d_reg_r_1_n_0,
      O => generate_en_d_reg_gate_n_0
    );
\intr_status_int[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => p_0_in,
      I1 => clken,
      I2 => resetn_out,
      I3 => \^genr_status_regs[1]\(1),
      O => \intr_status_int[10]_i_1_n_0\
    );
\intr_status_int[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => p_0_in,
      I1 => clken,
      I2 => resetn_out,
      I3 => \^genr_status_regs[1]\(2),
      O => \intr_status_int[11]_i_1_n_0\
    );
\intr_status_int[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3000000AAAA0000"
    )
        port map (
      I0 => \^genr_status_regs[1]\(3),
      I1 => \time_control_regs[19]\(0),
      I2 => \^vblank_reg\,
      I3 => p_0_in0_in,
      I4 => resetn_out,
      I5 => clken,
      O => \intr_status_int[12]_i_1_n_0\
    );
\intr_status_int[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFAAAA8A00AAAA"
    )
        port map (
      I0 => \GEN_GENERATOR.U_TC_GEN_n_10\,
      I1 => p_1_out(13),
      I2 => p_0_in0_in,
      I3 => clken,
      I4 => resetn_out,
      I5 => \^genr_status_regs[1]\(4),
      O => \intr_status_int[13]_i_1_n_0\
    );
\intr_status_int[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000AA00"
    )
        port map (
      I0 => \^genr_status_regs[1]\(5),
      I1 => \^fsync_out\(0),
      I2 => p_0_in0_in,
      I3 => resetn_out,
      I4 => clken,
      O => \intr_status_int[16]_i_1_n_0\
    );
\intr_status_int[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => \^genr_status_regs[1]\(0),
      I1 => p_0_in,
      I2 => resetn_out,
      I3 => clken,
      O => \intr_status_int[9]_i_1_n_0\
    );
\intr_status_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \intr_status_int[10]_i_1_n_0\,
      Q => \^genr_status_regs[1]\(1),
      R => '0'
    );
\intr_status_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \intr_status_int[11]_i_1_n_0\,
      Q => \^genr_status_regs[1]\(2),
      R => '0'
    );
\intr_status_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \intr_status_int[12]_i_1_n_0\,
      Q => \^genr_status_regs[1]\(3),
      R => '0'
    );
\intr_status_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \intr_status_int[13]_i_1_n_0\,
      Q => \^genr_status_regs[1]\(4),
      R => '0'
    );
\intr_status_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \intr_status_int[16]_i_1_n_0\,
      Q => \^genr_status_regs[1]\(5),
      R => '0'
    );
\intr_status_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \intr_status_int[9]_i_1_n_0\,
      Q => \^genr_status_regs[1]\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_tc_1_0_v_tc is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    resetn : in STD_LOGIC;
    det_clken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    intc_if : out STD_LOGIC_VECTOR ( 31 downto 0 );
    hsync_in : in STD_LOGIC;
    hblank_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    vblank_in : in STD_LOGIC;
    field_id_in : in STD_LOGIC;
    active_video_in : in STD_LOGIC;
    active_chroma_in : in STD_LOGIC;
    fsync_in : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    field_id_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    active_chroma_out : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC
  );
  attribute C_CONTROL : integer;
  attribute C_CONTROL of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_DETECT_EN : integer;
  attribute C_DETECT_EN of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_DET_ACHROMA_EN : integer;
  attribute C_DET_ACHROMA_EN of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_DET_AVIDEO_EN : integer;
  attribute C_DET_AVIDEO_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_DET_FIELDID_EN : integer;
  attribute C_DET_FIELDID_EN of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_DET_HBLANK_EN : integer;
  attribute C_DET_HBLANK_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_DET_HSYNC_EN : integer;
  attribute C_DET_HSYNC_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_DET_VBLANK_EN : integer;
  attribute C_DET_VBLANK_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_DET_VSYNC_EN : integer;
  attribute C_DET_VSYNC_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_v_tc_1_0_v_tc : entity is "virtex5";
  attribute C_FSYNC_HSTART0 : integer;
  attribute C_FSYNC_HSTART0 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART1 : integer;
  attribute C_FSYNC_HSTART1 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART10 : integer;
  attribute C_FSYNC_HSTART10 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART11 : integer;
  attribute C_FSYNC_HSTART11 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART12 : integer;
  attribute C_FSYNC_HSTART12 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART13 : integer;
  attribute C_FSYNC_HSTART13 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART14 : integer;
  attribute C_FSYNC_HSTART14 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART15 : integer;
  attribute C_FSYNC_HSTART15 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART2 : integer;
  attribute C_FSYNC_HSTART2 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART3 : integer;
  attribute C_FSYNC_HSTART3 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART4 : integer;
  attribute C_FSYNC_HSTART4 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART5 : integer;
  attribute C_FSYNC_HSTART5 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART6 : integer;
  attribute C_FSYNC_HSTART6 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART7 : integer;
  attribute C_FSYNC_HSTART7 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART8 : integer;
  attribute C_FSYNC_HSTART8 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_HSTART9 : integer;
  attribute C_FSYNC_HSTART9 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART0 : integer;
  attribute C_FSYNC_VSTART0 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART1 : integer;
  attribute C_FSYNC_VSTART1 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART10 : integer;
  attribute C_FSYNC_VSTART10 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART11 : integer;
  attribute C_FSYNC_VSTART11 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART12 : integer;
  attribute C_FSYNC_VSTART12 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART13 : integer;
  attribute C_FSYNC_VSTART13 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART14 : integer;
  attribute C_FSYNC_VSTART14 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART15 : integer;
  attribute C_FSYNC_VSTART15 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART2 : integer;
  attribute C_FSYNC_VSTART2 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART3 : integer;
  attribute C_FSYNC_VSTART3 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART4 : integer;
  attribute C_FSYNC_VSTART4 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART5 : integer;
  attribute C_FSYNC_VSTART5 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART6 : integer;
  attribute C_FSYNC_VSTART6 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART7 : integer;
  attribute C_FSYNC_VSTART7 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART8 : integer;
  attribute C_FSYNC_VSTART8 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_FSYNC_VSTART9 : integer;
  attribute C_FSYNC_VSTART9 of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_GENERATE_EN : integer;
  attribute C_GENERATE_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_ACHROMA_EN : integer;
  attribute C_GEN_ACHROMA_EN of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_GEN_ACHROMA_POLARITY : integer;
  attribute C_GEN_ACHROMA_POLARITY of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_AUTO_SWITCH : integer;
  attribute C_GEN_AUTO_SWITCH of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_GEN_AVIDEO_EN : integer;
  attribute C_GEN_AVIDEO_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_AVIDEO_POLARITY : integer;
  attribute C_GEN_AVIDEO_POLARITY of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_CPARITY : integer;
  attribute C_GEN_CPARITY of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_GEN_F0_VBLANK_HEND : integer;
  attribute C_GEN_F0_VBLANK_HEND of design_1_v_tc_1_0_v_tc : entity is 800;
  attribute C_GEN_F0_VBLANK_HSTART : integer;
  attribute C_GEN_F0_VBLANK_HSTART of design_1_v_tc_1_0_v_tc : entity is 800;
  attribute C_GEN_F0_VFRAME_SIZE : integer;
  attribute C_GEN_F0_VFRAME_SIZE of design_1_v_tc_1_0_v_tc : entity is 525;
  attribute C_GEN_F0_VSYNC_HEND : integer;
  attribute C_GEN_F0_VSYNC_HEND of design_1_v_tc_1_0_v_tc : entity is 800;
  attribute C_GEN_F0_VSYNC_HSTART : integer;
  attribute C_GEN_F0_VSYNC_HSTART of design_1_v_tc_1_0_v_tc : entity is 800;
  attribute C_GEN_F0_VSYNC_VEND : integer;
  attribute C_GEN_F0_VSYNC_VEND of design_1_v_tc_1_0_v_tc : entity is 492;
  attribute C_GEN_F0_VSYNC_VSTART : integer;
  attribute C_GEN_F0_VSYNC_VSTART of design_1_v_tc_1_0_v_tc : entity is 490;
  attribute C_GEN_F1_VBLANK_HEND : integer;
  attribute C_GEN_F1_VBLANK_HEND of design_1_v_tc_1_0_v_tc : entity is 1280;
  attribute C_GEN_F1_VBLANK_HSTART : integer;
  attribute C_GEN_F1_VBLANK_HSTART of design_1_v_tc_1_0_v_tc : entity is 1280;
  attribute C_GEN_F1_VFRAME_SIZE : integer;
  attribute C_GEN_F1_VFRAME_SIZE of design_1_v_tc_1_0_v_tc : entity is 750;
  attribute C_GEN_F1_VSYNC_HEND : integer;
  attribute C_GEN_F1_VSYNC_HEND of design_1_v_tc_1_0_v_tc : entity is 1280;
  attribute C_GEN_F1_VSYNC_HSTART : integer;
  attribute C_GEN_F1_VSYNC_HSTART of design_1_v_tc_1_0_v_tc : entity is 1280;
  attribute C_GEN_F1_VSYNC_VEND : integer;
  attribute C_GEN_F1_VSYNC_VEND of design_1_v_tc_1_0_v_tc : entity is 729;
  attribute C_GEN_F1_VSYNC_VSTART : integer;
  attribute C_GEN_F1_VSYNC_VSTART of design_1_v_tc_1_0_v_tc : entity is 724;
  attribute C_GEN_FIELDID_EN : integer;
  attribute C_GEN_FIELDID_EN of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_GEN_FIELDID_POLARITY : integer;
  attribute C_GEN_FIELDID_POLARITY of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_HACTIVE_SIZE : integer;
  attribute C_GEN_HACTIVE_SIZE of design_1_v_tc_1_0_v_tc : entity is 800;
  attribute C_GEN_HBLANK_EN : integer;
  attribute C_GEN_HBLANK_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_HBLANK_POLARITY : integer;
  attribute C_GEN_HBLANK_POLARITY of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_HFRAME_SIZE : integer;
  attribute C_GEN_HFRAME_SIZE of design_1_v_tc_1_0_v_tc : entity is 1056;
  attribute C_GEN_HSYNC_EN : integer;
  attribute C_GEN_HSYNC_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_HSYNC_END : integer;
  attribute C_GEN_HSYNC_END of design_1_v_tc_1_0_v_tc : entity is 968;
  attribute C_GEN_HSYNC_POLARITY : integer;
  attribute C_GEN_HSYNC_POLARITY of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_HSYNC_START : integer;
  attribute C_GEN_HSYNC_START of design_1_v_tc_1_0_v_tc : entity is 840;
  attribute C_GEN_INTERLACED : integer;
  attribute C_GEN_INTERLACED of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_GEN_VACTIVE_SIZE : integer;
  attribute C_GEN_VACTIVE_SIZE of design_1_v_tc_1_0_v_tc : entity is 480;
  attribute C_GEN_VBLANK_EN : integer;
  attribute C_GEN_VBLANK_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_VBLANK_POLARITY : integer;
  attribute C_GEN_VBLANK_POLARITY of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_VIDEO_FORMAT : integer;
  attribute C_GEN_VIDEO_FORMAT of design_1_v_tc_1_0_v_tc : entity is 2;
  attribute C_GEN_VSYNC_EN : integer;
  attribute C_GEN_VSYNC_EN of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_GEN_VSYNC_POLARITY : integer;
  attribute C_GEN_VSYNC_POLARITY of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_HAS_AXI4_LITE : integer;
  attribute C_HAS_AXI4_LITE of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_HAS_INTC_IF : integer;
  attribute C_HAS_INTC_IF of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_INTERLACE_EN : integer;
  attribute C_INTERLACE_EN of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_IRQEN : integer;
  attribute C_IRQEN of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_LINE_DELAY : integer;
  attribute C_LINE_DELAY of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_MAX_LINES : integer;
  attribute C_MAX_LINES of design_1_v_tc_1_0_v_tc : entity is 4096;
  attribute C_MAX_PIXELS : integer;
  attribute C_MAX_PIXELS of design_1_v_tc_1_0_v_tc : entity is 4096;
  attribute C_NUM_FSYNCS : integer;
  attribute C_NUM_FSYNCS of design_1_v_tc_1_0_v_tc : entity is 1;
  attribute C_PIXEL_DELAY : integer;
  attribute C_PIXEL_DELAY of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_SYNC_EN : integer;
  attribute C_SYNC_EN of design_1_v_tc_1_0_v_tc : entity is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of design_1_v_tc_1_0_v_tc : entity is 9;
  attribute C_S_AXI_CLK_FREQ_HZ : integer;
  attribute C_S_AXI_CLK_FREQ_HZ of design_1_v_tc_1_0_v_tc : entity is 100000000;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_v_tc_1_0_v_tc : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_tc_1_0_v_tc : entity is "v_tc";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_v_tc_1_0_v_tc : entity is "yes";
end design_1_v_tc_1_0_v_tc;

architecture STRUCTURE of design_1_v_tc_1_0_v_tc is
  signal \<const0>\ : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1022 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1023 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1024 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1025 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1054 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1055 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1056 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1057 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1086 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1087 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1088 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1089 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1118 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1119 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1120 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1121 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1150 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1151 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1152 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1153 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1154 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1155 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1156 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1157 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1158 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1159 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1160 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1161 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1162 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1163 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1164 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1165 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1182 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1183 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1184 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1185 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1694 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1695 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1696 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_1697 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_734 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_735 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_736 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_737 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_806 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_808 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_809 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_810 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_811 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_894 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_895 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_896 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_897 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_926 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_927 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_928 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_929 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_958 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_959 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_960 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_961 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_990 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_991 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_992 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_993 : STD_LOGIC;
  signal \core_control_regs[0]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \core_control_regs[16]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal core_d : STD_LOGIC;
  signal gen_v0chroma_start : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_v0chroma_start[0]_i_1_n_0\ : STD_LOGIC;
  signal \genr_control_regs[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^intc_if\ : STD_LOGIC_VECTOR ( 16 downto 9 );
  signal reg_update : STD_LOGIC;
  signal \time_control_regs[16]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \time_control_regs[18]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \time_control_regs[19]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \time_control_regs[20]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \time_control_regs[21]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \time_control_regs[22]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \time_control_regs[23]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \time_control_regs[24]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \time_control_regs[25]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \time_control_regs[26]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \time_control_regs[27]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \time_control_regs[28]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \time_control_regs[29]\ : STD_LOGIC_VECTOR ( 27 downto 16 );
  signal vresetn : STD_LOGIC;
  signal NLW_U_VIDEO_CTRL_ipif_cs_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U_VIDEO_CTRL_ipif_rnw_out_UNCONNECTED : STD_LOGIC;
  signal \NLW_U_VIDEO_CTRL_core_control_regs[0]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[10]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[11]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[12]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[13]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[14]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[15]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[16]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[3]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[4]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[5]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[6]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[7]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[8]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[9]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[3]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[4]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U_VIDEO_CTRL_ipif_addr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U_VIDEO_CTRL_ipif_data_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[0]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[10]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[11]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[12]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[13]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[14]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[15]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[16]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[17]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[18]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[19]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[20]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 12 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[21]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[22]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[23]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[24]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[25]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[26]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[27]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[28]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[29]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[3]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[4]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[5]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[6]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[7]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[8]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[9]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_COREGEN_PATCH : integer;
  attribute C_COREGEN_PATCH of U_VIDEO_CTRL : label is 0;
  attribute C_CORE_AXI_WRITE : string;
  attribute C_CORE_AXI_WRITE of U_VIDEO_CTRL : label is "544'b0000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111";
  attribute C_CORE_DBUFFER : string;
  attribute C_CORE_DBUFFER of U_VIDEO_CTRL : label is "544'b0000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100001111111111110000111111111111000011111111111100000000000000000000000000000000";
  attribute C_CORE_DEFAULT : string;
  attribute C_CORE_DEFAULT of U_VIDEO_CTRL : label is "544'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_CORE_NUM_REGS : integer;
  attribute C_CORE_NUM_REGS of U_VIDEO_CTRL : label is 17;
  attribute C_FAMILY of U_VIDEO_CTRL : label is "virtex5";
  attribute C_GENR_AXI_WRITE : string;
  attribute C_GENR_AXI_WRITE of U_VIDEO_CTRL : label is "160'b1100011111111111111011110010111111111111111111110011111100000000000000000011111100000000000000001111111111111111001111110000000000000000000000000000000000000000";
  attribute C_GENR_DBUFFER : string;
  attribute C_GENR_DBUFFER of U_VIDEO_CTRL : label is "160'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_DEFAULT : string;
  attribute C_GENR_DEFAULT of U_VIDEO_CTRL : label is "160'b0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_NUM_REGS : integer;
  attribute C_GENR_NUM_REGS of U_VIDEO_CTRL : label is 5;
  attribute C_GENR_SELFCLR : string;
  attribute C_GENR_SELFCLR of U_VIDEO_CTRL : label is "256'b0000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_HAS_AXI4_LITE of U_VIDEO_CTRL : label is 0;
  attribute C_HAS_IRQ : integer;
  attribute C_HAS_IRQ of U_VIDEO_CTRL : label is 0;
  attribute C_IS_EVAL : string;
  attribute C_IS_EVAL of U_VIDEO_CTRL : label is "FALSE";
  attribute C_REVISION_NUMBER : integer;
  attribute C_REVISION_NUMBER of U_VIDEO_CTRL : label is 11;
  attribute C_SRESET_LENGTH : integer;
  attribute C_SRESET_LENGTH of U_VIDEO_CTRL : label is 2;
  attribute C_S_AXI_ADDR_WIDTH of U_VIDEO_CTRL : label is 9;
  attribute C_S_AXI_DATA_WIDTH of U_VIDEO_CTRL : label is 32;
  attribute C_TIMEOUT_HOURS : integer;
  attribute C_TIMEOUT_HOURS of U_VIDEO_CTRL : label is 8;
  attribute C_TIMEOUT_MINS : integer;
  attribute C_TIMEOUT_MINS of U_VIDEO_CTRL : label is 0;
  attribute C_TIME_AXI_WRITE : string;
  attribute C_TIME_AXI_WRITE of U_VIDEO_CTRL : label is "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111000111111111111100000000000000000000000000000000000000000000000000000011110011110000000000000000000000000111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111";
  attribute C_TIME_DBUFFER : string;
  attribute C_TIME_DBUFFER of U_VIDEO_CTRL : label is "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111000111111111111100000000000000000000000000000000000000000000000000000011100000000000000000000000000000000011111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111000111111111111100011111111111110001111111111111";
  attribute C_TIME_DEFAULT : string;
  attribute C_TIME_DEFAULT of U_VIDEO_CTRL : label is "960'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100000000000110010000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000111111100000000000000000000010000100000000000101110111000000010000011010000001111001000000000110100100000000011001000000000001100100000000000011110110000000001111010100000001100100000000000110010000000000101000000000000010100000000000000101101100100000010110101000000010100000000000001010000000000000001111000000000001100100000";
  attribute C_TIME_NUM_REGS : integer;
  attribute C_TIME_NUM_REGS of U_VIDEO_CTRL : label is 30;
  attribute C_VERSION_MAJOR : integer;
  attribute C_VERSION_MAJOR of U_VIDEO_CTRL : label is 6;
  attribute C_VERSION_MINOR : integer;
  attribute C_VERSION_MINOR of U_VIDEO_CTRL : label is 1;
  attribute C_VERSION_REVISION : integer;
  attribute C_VERSION_REVISION of U_VIDEO_CTRL : label is 0;
  attribute downgradeipidentifiedwarnings of U_VIDEO_CTRL : label is "yes";
  attribute sigis : string;
  attribute sigis of clk : signal is "CLK";
  attribute sigis of irq : signal is "INTR_LEVEL_HIGH";
  attribute sigis of resetn : signal is "RST";
  attribute sigis of s_axi_aclk : signal is "CLK";
  attribute sigis of s_axi_aresetn : signal is "RST";
begin
  field_id_out <= \<const0>\;
  intc_if(31) <= \<const0>\;
  intc_if(30) <= \<const0>\;
  intc_if(29) <= \<const0>\;
  intc_if(28) <= \<const0>\;
  intc_if(27) <= \<const0>\;
  intc_if(26) <= \<const0>\;
  intc_if(25) <= \<const0>\;
  intc_if(24) <= \<const0>\;
  intc_if(23) <= \<const0>\;
  intc_if(22) <= \<const0>\;
  intc_if(21) <= \<const0>\;
  intc_if(20) <= \<const0>\;
  intc_if(19) <= \<const0>\;
  intc_if(18) <= \<const0>\;
  intc_if(17) <= \<const0>\;
  intc_if(16) <= \^intc_if\(16);
  intc_if(15) <= \<const0>\;
  intc_if(14) <= \<const0>\;
  intc_if(13 downto 9) <= \^intc_if\(13 downto 9);
  intc_if(8) <= \<const0>\;
  intc_if(7) <= \<const0>\;
  intc_if(6) <= \<const0>\;
  intc_if(5) <= \<const0>\;
  intc_if(4) <= \<const0>\;
  intc_if(3) <= \<const0>\;
  intc_if(2) <= \<const0>\;
  intc_if(1) <= \<const0>\;
  intc_if(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U_TC_TOP: entity work.design_1_v_tc_1_0_tc_top
     port map (
      D(11 downto 0) => \time_control_regs[20]\(11 downto 0),
      active_chroma_out => active_chroma_out,
      active_video_reg => active_video_out,
      clk => clk,
      clken => clken,
      \core_control_regs[0]\(23 downto 12) => \core_control_regs[0]\(27 downto 16),
      \core_control_regs[0]\(11 downto 0) => \core_control_regs[0]\(11 downto 0),
      core_d_out => core_d,
      fsync_in => fsync_in,
      fsync_out(0) => fsync_out(0),
      gen_clken => gen_clken,
      \genr_control_regs[0]\(3) => \genr_control_regs[0]\(5),
      \genr_control_regs[0]\(2 downto 1) => \genr_control_regs[0]\(3 downto 2),
      \genr_control_regs[0]\(0) => \genr_control_regs[0]\(0),
      \genr_status_regs[1]\(5) => \^intc_if\(16),
      \genr_status_regs[1]\(4 downto 0) => \^intc_if\(13 downto 9),
      hblank_out => hblank_out,
      hsync_out => hsync_out,
      reg_update => reg_update,
      resetn_out => vresetn,
      \time_control_regs[16]\(23 downto 12) => \time_control_regs[16]\(27 downto 16),
      \time_control_regs[16]\(11 downto 0) => \time_control_regs[16]\(11 downto 0),
      \time_control_regs[19]\(5 downto 0) => \time_control_regs[19]\(5 downto 0),
      \time_control_regs[21]\(11 downto 0) => \time_control_regs[21]\(11 downto 0),
      \time_control_regs[22]\(23 downto 12) => \time_control_regs[22]\(27 downto 16),
      \time_control_regs[22]\(11 downto 0) => \time_control_regs[22]\(11 downto 0),
      \time_control_regs[23]\(23 downto 12) => \time_control_regs[23]\(27 downto 16),
      \time_control_regs[23]\(11 downto 0) => \time_control_regs[23]\(11 downto 0),
      \time_control_regs[24]\(23 downto 12) => \time_control_regs[24]\(27 downto 16),
      \time_control_regs[24]\(11 downto 0) => \time_control_regs[24]\(11 downto 0),
      \time_control_regs[25]\(23 downto 12) => \time_control_regs[25]\(27 downto 16),
      \time_control_regs[25]\(11 downto 0) => \time_control_regs[25]\(11 downto 0),
      vblank_reg => vblank_out,
      vsync_out => vsync_out
    );
U_VIDEO_CTRL: entity work.design_1_v_tc_1_0_video_ctrl
     port map (
      aclk => s_axi_aclk,
      aclk_en => s_axi_aclken,
      aresetn => s_axi_aresetn,
      \core_control_regs[0]\(31 downto 28) => \NLW_U_VIDEO_CTRL_core_control_regs[0]_UNCONNECTED\(31 downto 28),
      \core_control_regs[0]\(27 downto 16) => \core_control_regs[0]\(27 downto 16),
      \core_control_regs[0]\(15) => U_VIDEO_CTRL_n_1182,
      \core_control_regs[0]\(14) => U_VIDEO_CTRL_n_1183,
      \core_control_regs[0]\(13) => U_VIDEO_CTRL_n_1184,
      \core_control_regs[0]\(12) => U_VIDEO_CTRL_n_1185,
      \core_control_regs[0]\(11 downto 0) => \core_control_regs[0]\(11 downto 0),
      \core_control_regs[10]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[10]_UNCONNECTED\(31 downto 0),
      \core_control_regs[11]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[11]_UNCONNECTED\(31 downto 0),
      \core_control_regs[12]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[12]_UNCONNECTED\(31 downto 0),
      \core_control_regs[13]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[13]_UNCONNECTED\(31 downto 0),
      \core_control_regs[14]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[14]_UNCONNECTED\(31 downto 0),
      \core_control_regs[15]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[15]_UNCONNECTED\(31 downto 0),
      \core_control_regs[16]\(31 downto 28) => \NLW_U_VIDEO_CTRL_core_control_regs[16]_UNCONNECTED\(31 downto 28),
      \core_control_regs[16]\(27 downto 16) => \core_control_regs[16]\(27 downto 16),
      \core_control_regs[16]\(15) => U_VIDEO_CTRL_n_1694,
      \core_control_regs[16]\(14) => U_VIDEO_CTRL_n_1695,
      \core_control_regs[16]\(13) => U_VIDEO_CTRL_n_1696,
      \core_control_regs[16]\(12) => U_VIDEO_CTRL_n_1697,
      \core_control_regs[16]\(11 downto 0) => \core_control_regs[16]\(11 downto 0),
      \core_control_regs[1]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[1]_UNCONNECTED\(31 downto 0),
      \core_control_regs[2]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[2]_UNCONNECTED\(31 downto 0),
      \core_control_regs[3]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[3]_UNCONNECTED\(31 downto 0),
      \core_control_regs[4]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[4]_UNCONNECTED\(31 downto 0),
      \core_control_regs[5]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[5]_UNCONNECTED\(31 downto 0),
      \core_control_regs[6]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[6]_UNCONNECTED\(31 downto 0),
      \core_control_regs[7]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[7]_UNCONNECTED\(31 downto 0),
      \core_control_regs[8]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[8]_UNCONNECTED\(31 downto 0),
      \core_control_regs[9]\(31 downto 0) => \NLW_U_VIDEO_CTRL_core_control_regs[9]_UNCONNECTED\(31 downto 0),
      core_d_out => core_d,
      \core_status_regs[0]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[10]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[11]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[12]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[13]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[14]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[15]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[16]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[1]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[2]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[3]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[4]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[5]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[6]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[7]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[8]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[9]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_control_regs[0]\(31 downto 0) => \genr_control_regs[0]\(31 downto 0),
      \genr_control_regs[1]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[1]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[2]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[2]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[3]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[3]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[4]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[4]_UNCONNECTED\(31 downto 0),
      \genr_status_regs[0]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[1]\(31 downto 17) => B"000000000000000",
      \genr_status_regs[1]\(16) => \^intc_if\(16),
      \genr_status_regs[1]\(15 downto 14) => B"00",
      \genr_status_regs[1]\(13 downto 9) => \^intc_if\(13 downto 9),
      \genr_status_regs[1]\(8 downto 0) => B"000000000",
      \genr_status_regs[2]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[3]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[4]\(31 downto 0) => B"00000000000000000000000000000000",
      ipif_addr_out(8 downto 0) => NLW_U_VIDEO_CTRL_ipif_addr_out_UNCONNECTED(8 downto 0),
      ipif_cs_out => NLW_U_VIDEO_CTRL_ipif_cs_out_UNCONNECTED,
      ipif_data_out(31 downto 0) => NLW_U_VIDEO_CTRL_ipif_data_out_UNCONNECTED(31 downto 0),
      ipif_rnw_out => NLW_U_VIDEO_CTRL_ipif_rnw_out_UNCONNECTED,
      irq => irq,
      reg_update => reg_update,
      resetn_out => vresetn,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \time_control_regs[0]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[0]_UNCONNECTED\(31 downto 0),
      \time_control_regs[10]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[10]_UNCONNECTED\(31 downto 0),
      \time_control_regs[11]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[11]_UNCONNECTED\(31 downto 0),
      \time_control_regs[12]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[12]_UNCONNECTED\(31 downto 0),
      \time_control_regs[13]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[13]_UNCONNECTED\(31 downto 0),
      \time_control_regs[14]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[14]_UNCONNECTED\(31 downto 0),
      \time_control_regs[15]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[15]_UNCONNECTED\(31 downto 0),
      \time_control_regs[16]\(31 downto 28) => \NLW_U_VIDEO_CTRL_time_control_regs[16]_UNCONNECTED\(31 downto 28),
      \time_control_regs[16]\(27 downto 16) => \time_control_regs[16]\(27 downto 16),
      \time_control_regs[16]\(15) => U_VIDEO_CTRL_n_734,
      \time_control_regs[16]\(14) => U_VIDEO_CTRL_n_735,
      \time_control_regs[16]\(13) => U_VIDEO_CTRL_n_736,
      \time_control_regs[16]\(12) => U_VIDEO_CTRL_n_737,
      \time_control_regs[16]\(11 downto 0) => \time_control_regs[16]\(11 downto 0),
      \time_control_regs[17]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[17]_UNCONNECTED\(31 downto 0),
      \time_control_regs[18]\(31 downto 10) => \NLW_U_VIDEO_CTRL_time_control_regs[18]_UNCONNECTED\(31 downto 10),
      \time_control_regs[18]\(9 downto 8) => \time_control_regs[18]\(9 downto 8),
      \time_control_regs[18]\(7) => U_VIDEO_CTRL_n_806,
      \time_control_regs[18]\(6) => \time_control_regs[18]\(6),
      \time_control_regs[18]\(5) => U_VIDEO_CTRL_n_808,
      \time_control_regs[18]\(4) => U_VIDEO_CTRL_n_809,
      \time_control_regs[18]\(3) => U_VIDEO_CTRL_n_810,
      \time_control_regs[18]\(2) => U_VIDEO_CTRL_n_811,
      \time_control_regs[18]\(1 downto 0) => \time_control_regs[18]\(1 downto 0),
      \time_control_regs[19]\(31 downto 7) => \NLW_U_VIDEO_CTRL_time_control_regs[19]_UNCONNECTED\(31 downto 7),
      \time_control_regs[19]\(6 downto 0) => \time_control_regs[19]\(6 downto 0),
      \time_control_regs[1]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[1]_UNCONNECTED\(31 downto 0),
      \time_control_regs[20]\(31 downto 12) => \NLW_U_VIDEO_CTRL_time_control_regs[20]_UNCONNECTED\(31 downto 12),
      \time_control_regs[20]\(11 downto 0) => \time_control_regs[20]\(11 downto 0),
      \time_control_regs[21]\(31 downto 28) => \NLW_U_VIDEO_CTRL_time_control_regs[21]_UNCONNECTED\(31 downto 28),
      \time_control_regs[21]\(27 downto 16) => \time_control_regs[21]\(27 downto 16),
      \time_control_regs[21]\(15) => U_VIDEO_CTRL_n_894,
      \time_control_regs[21]\(14) => U_VIDEO_CTRL_n_895,
      \time_control_regs[21]\(13) => U_VIDEO_CTRL_n_896,
      \time_control_regs[21]\(12) => U_VIDEO_CTRL_n_897,
      \time_control_regs[21]\(11 downto 0) => \time_control_regs[21]\(11 downto 0),
      \time_control_regs[22]\(31 downto 28) => \NLW_U_VIDEO_CTRL_time_control_regs[22]_UNCONNECTED\(31 downto 28),
      \time_control_regs[22]\(27 downto 16) => \time_control_regs[22]\(27 downto 16),
      \time_control_regs[22]\(15) => U_VIDEO_CTRL_n_926,
      \time_control_regs[22]\(14) => U_VIDEO_CTRL_n_927,
      \time_control_regs[22]\(13) => U_VIDEO_CTRL_n_928,
      \time_control_regs[22]\(12) => U_VIDEO_CTRL_n_929,
      \time_control_regs[22]\(11 downto 0) => \time_control_regs[22]\(11 downto 0),
      \time_control_regs[23]\(31 downto 28) => \NLW_U_VIDEO_CTRL_time_control_regs[23]_UNCONNECTED\(31 downto 28),
      \time_control_regs[23]\(27 downto 16) => \time_control_regs[23]\(27 downto 16),
      \time_control_regs[23]\(15) => U_VIDEO_CTRL_n_958,
      \time_control_regs[23]\(14) => U_VIDEO_CTRL_n_959,
      \time_control_regs[23]\(13) => U_VIDEO_CTRL_n_960,
      \time_control_regs[23]\(12) => U_VIDEO_CTRL_n_961,
      \time_control_regs[23]\(11 downto 0) => \time_control_regs[23]\(11 downto 0),
      \time_control_regs[24]\(31 downto 28) => \NLW_U_VIDEO_CTRL_time_control_regs[24]_UNCONNECTED\(31 downto 28),
      \time_control_regs[24]\(27 downto 16) => \time_control_regs[24]\(27 downto 16),
      \time_control_regs[24]\(15) => U_VIDEO_CTRL_n_990,
      \time_control_regs[24]\(14) => U_VIDEO_CTRL_n_991,
      \time_control_regs[24]\(13) => U_VIDEO_CTRL_n_992,
      \time_control_regs[24]\(12) => U_VIDEO_CTRL_n_993,
      \time_control_regs[24]\(11 downto 0) => \time_control_regs[24]\(11 downto 0),
      \time_control_regs[25]\(31 downto 28) => \NLW_U_VIDEO_CTRL_time_control_regs[25]_UNCONNECTED\(31 downto 28),
      \time_control_regs[25]\(27 downto 16) => \time_control_regs[25]\(27 downto 16),
      \time_control_regs[25]\(15) => U_VIDEO_CTRL_n_1022,
      \time_control_regs[25]\(14) => U_VIDEO_CTRL_n_1023,
      \time_control_regs[25]\(13) => U_VIDEO_CTRL_n_1024,
      \time_control_regs[25]\(12) => U_VIDEO_CTRL_n_1025,
      \time_control_regs[25]\(11 downto 0) => \time_control_regs[25]\(11 downto 0),
      \time_control_regs[26]\(31 downto 28) => \NLW_U_VIDEO_CTRL_time_control_regs[26]_UNCONNECTED\(31 downto 28),
      \time_control_regs[26]\(27 downto 16) => \time_control_regs[26]\(27 downto 16),
      \time_control_regs[26]\(15) => U_VIDEO_CTRL_n_1054,
      \time_control_regs[26]\(14) => U_VIDEO_CTRL_n_1055,
      \time_control_regs[26]\(13) => U_VIDEO_CTRL_n_1056,
      \time_control_regs[26]\(12) => U_VIDEO_CTRL_n_1057,
      \time_control_regs[26]\(11 downto 0) => \time_control_regs[26]\(11 downto 0),
      \time_control_regs[27]\(31 downto 28) => \NLW_U_VIDEO_CTRL_time_control_regs[27]_UNCONNECTED\(31 downto 28),
      \time_control_regs[27]\(27 downto 16) => \time_control_regs[27]\(27 downto 16),
      \time_control_regs[27]\(15) => U_VIDEO_CTRL_n_1086,
      \time_control_regs[27]\(14) => U_VIDEO_CTRL_n_1087,
      \time_control_regs[27]\(13) => U_VIDEO_CTRL_n_1088,
      \time_control_regs[27]\(12) => U_VIDEO_CTRL_n_1089,
      \time_control_regs[27]\(11 downto 0) => \time_control_regs[27]\(11 downto 0),
      \time_control_regs[28]\(31 downto 28) => \NLW_U_VIDEO_CTRL_time_control_regs[28]_UNCONNECTED\(31 downto 28),
      \time_control_regs[28]\(27 downto 16) => \time_control_regs[28]\(27 downto 16),
      \time_control_regs[28]\(15) => U_VIDEO_CTRL_n_1118,
      \time_control_regs[28]\(14) => U_VIDEO_CTRL_n_1119,
      \time_control_regs[28]\(13) => U_VIDEO_CTRL_n_1120,
      \time_control_regs[28]\(12) => U_VIDEO_CTRL_n_1121,
      \time_control_regs[28]\(11 downto 0) => \time_control_regs[28]\(11 downto 0),
      \time_control_regs[29]\(31 downto 28) => \NLW_U_VIDEO_CTRL_time_control_regs[29]_UNCONNECTED\(31 downto 28),
      \time_control_regs[29]\(27 downto 16) => \time_control_regs[29]\(27 downto 16),
      \time_control_regs[29]\(15) => U_VIDEO_CTRL_n_1150,
      \time_control_regs[29]\(14) => U_VIDEO_CTRL_n_1151,
      \time_control_regs[29]\(13) => U_VIDEO_CTRL_n_1152,
      \time_control_regs[29]\(12) => U_VIDEO_CTRL_n_1153,
      \time_control_regs[29]\(11) => U_VIDEO_CTRL_n_1154,
      \time_control_regs[29]\(10) => U_VIDEO_CTRL_n_1155,
      \time_control_regs[29]\(9) => U_VIDEO_CTRL_n_1156,
      \time_control_regs[29]\(8) => U_VIDEO_CTRL_n_1157,
      \time_control_regs[29]\(7) => U_VIDEO_CTRL_n_1158,
      \time_control_regs[29]\(6) => U_VIDEO_CTRL_n_1159,
      \time_control_regs[29]\(5) => U_VIDEO_CTRL_n_1160,
      \time_control_regs[29]\(4) => U_VIDEO_CTRL_n_1161,
      \time_control_regs[29]\(3) => U_VIDEO_CTRL_n_1162,
      \time_control_regs[29]\(2) => U_VIDEO_CTRL_n_1163,
      \time_control_regs[29]\(1) => U_VIDEO_CTRL_n_1164,
      \time_control_regs[29]\(0) => U_VIDEO_CTRL_n_1165,
      \time_control_regs[2]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[2]_UNCONNECTED\(31 downto 0),
      \time_control_regs[3]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[3]_UNCONNECTED\(31 downto 0),
      \time_control_regs[4]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[4]_UNCONNECTED\(31 downto 0),
      \time_control_regs[5]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[5]_UNCONNECTED\(31 downto 0),
      \time_control_regs[6]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[6]_UNCONNECTED\(31 downto 0),
      \time_control_regs[7]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[7]_UNCONNECTED\(31 downto 0),
      \time_control_regs[8]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[8]_UNCONNECTED\(31 downto 0),
      \time_control_regs[9]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[9]_UNCONNECTED\(31 downto 0),
      \time_status_regs[0]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[10]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[11]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[12]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[13]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[14]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[15]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[16]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[17]\(31 downto 3) => B"00000000000000000000000000000",
      \time_status_regs[17]\(2 downto 1) => \^intc_if\(13 downto 12),
      \time_status_regs[17]\(0) => '0',
      \time_status_regs[18]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[19]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[1]\(31 downto 3) => B"00000000000000000000000000000",
      \time_status_regs[1]\(2 downto 1) => \^intc_if\(11 downto 10),
      \time_status_regs[1]\(0) => '0',
      \time_status_regs[20]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[21]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[22]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[23]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[24]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[25]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[26]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[27]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[28]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[29]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[2]\(31 downto 9) => B"00000000000000000000000",
      \time_status_regs[2]\(8) => gen_v0chroma_start(0),
      \time_status_regs[2]\(7) => field_id_in,
      \time_status_regs[2]\(6 downto 0) => B"0000000",
      \time_status_regs[3]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[4]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[5]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[6]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[7]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[8]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[9]\(31 downto 0) => B"00000000000000000000000000000000",
      vid_aclk => clk,
      vid_aclk_en => clken,
      vid_aresetn => resetn
    );
\gen_v0chroma_start[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0A000A000A000A0"
    )
        port map (
      I0 => gen_v0chroma_start(0),
      I1 => \time_control_regs[18]\(8),
      I2 => resetn,
      I3 => clken,
      I4 => \time_control_regs[18]\(0),
      I5 => \time_control_regs[18]\(1),
      O => \gen_v0chroma_start[0]_i_1_n_0\
    );
\gen_v0chroma_start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \gen_v0chroma_start[0]_i_1_n_0\,
      Q => gen_v0chroma_start(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_tc_1_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_v_tc_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_v_tc_1_0 : entity is "design_1_v_tc_1_0,v_tc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_v_tc_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_v_tc_1_0 : entity is "v_tc,Vivado 2018.3";
end design_1_v_tc_1_0;

architecture STRUCTURE of design_1_v_tc_1_0 is
  signal NLW_U0_active_chroma_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_field_id_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_intc_if_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_CONTROL : integer;
  attribute C_CONTROL of U0 : label is 0;
  attribute C_DETECT_EN : integer;
  attribute C_DETECT_EN of U0 : label is 0;
  attribute C_DET_ACHROMA_EN : integer;
  attribute C_DET_ACHROMA_EN of U0 : label is 0;
  attribute C_DET_AVIDEO_EN : integer;
  attribute C_DET_AVIDEO_EN of U0 : label is 1;
  attribute C_DET_FIELDID_EN : integer;
  attribute C_DET_FIELDID_EN of U0 : label is 0;
  attribute C_DET_HBLANK_EN : integer;
  attribute C_DET_HBLANK_EN of U0 : label is 1;
  attribute C_DET_HSYNC_EN : integer;
  attribute C_DET_HSYNC_EN of U0 : label is 1;
  attribute C_DET_VBLANK_EN : integer;
  attribute C_DET_VBLANK_EN of U0 : label is 1;
  attribute C_DET_VSYNC_EN : integer;
  attribute C_DET_VSYNC_EN of U0 : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtex5";
  attribute C_FSYNC_HSTART0 : integer;
  attribute C_FSYNC_HSTART0 of U0 : label is 0;
  attribute C_FSYNC_HSTART1 : integer;
  attribute C_FSYNC_HSTART1 of U0 : label is 0;
  attribute C_FSYNC_HSTART10 : integer;
  attribute C_FSYNC_HSTART10 of U0 : label is 0;
  attribute C_FSYNC_HSTART11 : integer;
  attribute C_FSYNC_HSTART11 of U0 : label is 0;
  attribute C_FSYNC_HSTART12 : integer;
  attribute C_FSYNC_HSTART12 of U0 : label is 0;
  attribute C_FSYNC_HSTART13 : integer;
  attribute C_FSYNC_HSTART13 of U0 : label is 0;
  attribute C_FSYNC_HSTART14 : integer;
  attribute C_FSYNC_HSTART14 of U0 : label is 0;
  attribute C_FSYNC_HSTART15 : integer;
  attribute C_FSYNC_HSTART15 of U0 : label is 0;
  attribute C_FSYNC_HSTART2 : integer;
  attribute C_FSYNC_HSTART2 of U0 : label is 0;
  attribute C_FSYNC_HSTART3 : integer;
  attribute C_FSYNC_HSTART3 of U0 : label is 0;
  attribute C_FSYNC_HSTART4 : integer;
  attribute C_FSYNC_HSTART4 of U0 : label is 0;
  attribute C_FSYNC_HSTART5 : integer;
  attribute C_FSYNC_HSTART5 of U0 : label is 0;
  attribute C_FSYNC_HSTART6 : integer;
  attribute C_FSYNC_HSTART6 of U0 : label is 0;
  attribute C_FSYNC_HSTART7 : integer;
  attribute C_FSYNC_HSTART7 of U0 : label is 0;
  attribute C_FSYNC_HSTART8 : integer;
  attribute C_FSYNC_HSTART8 of U0 : label is 0;
  attribute C_FSYNC_HSTART9 : integer;
  attribute C_FSYNC_HSTART9 of U0 : label is 0;
  attribute C_FSYNC_VSTART0 : integer;
  attribute C_FSYNC_VSTART0 of U0 : label is 0;
  attribute C_FSYNC_VSTART1 : integer;
  attribute C_FSYNC_VSTART1 of U0 : label is 0;
  attribute C_FSYNC_VSTART10 : integer;
  attribute C_FSYNC_VSTART10 of U0 : label is 0;
  attribute C_FSYNC_VSTART11 : integer;
  attribute C_FSYNC_VSTART11 of U0 : label is 0;
  attribute C_FSYNC_VSTART12 : integer;
  attribute C_FSYNC_VSTART12 of U0 : label is 0;
  attribute C_FSYNC_VSTART13 : integer;
  attribute C_FSYNC_VSTART13 of U0 : label is 0;
  attribute C_FSYNC_VSTART14 : integer;
  attribute C_FSYNC_VSTART14 of U0 : label is 0;
  attribute C_FSYNC_VSTART15 : integer;
  attribute C_FSYNC_VSTART15 of U0 : label is 0;
  attribute C_FSYNC_VSTART2 : integer;
  attribute C_FSYNC_VSTART2 of U0 : label is 0;
  attribute C_FSYNC_VSTART3 : integer;
  attribute C_FSYNC_VSTART3 of U0 : label is 0;
  attribute C_FSYNC_VSTART4 : integer;
  attribute C_FSYNC_VSTART4 of U0 : label is 0;
  attribute C_FSYNC_VSTART5 : integer;
  attribute C_FSYNC_VSTART5 of U0 : label is 0;
  attribute C_FSYNC_VSTART6 : integer;
  attribute C_FSYNC_VSTART6 of U0 : label is 0;
  attribute C_FSYNC_VSTART7 : integer;
  attribute C_FSYNC_VSTART7 of U0 : label is 0;
  attribute C_FSYNC_VSTART8 : integer;
  attribute C_FSYNC_VSTART8 of U0 : label is 0;
  attribute C_FSYNC_VSTART9 : integer;
  attribute C_FSYNC_VSTART9 of U0 : label is 0;
  attribute C_GENERATE_EN : integer;
  attribute C_GENERATE_EN of U0 : label is 1;
  attribute C_GEN_ACHROMA_EN : integer;
  attribute C_GEN_ACHROMA_EN of U0 : label is 0;
  attribute C_GEN_ACHROMA_POLARITY : integer;
  attribute C_GEN_ACHROMA_POLARITY of U0 : label is 1;
  attribute C_GEN_AUTO_SWITCH : integer;
  attribute C_GEN_AUTO_SWITCH of U0 : label is 0;
  attribute C_GEN_AVIDEO_EN : integer;
  attribute C_GEN_AVIDEO_EN of U0 : label is 1;
  attribute C_GEN_AVIDEO_POLARITY : integer;
  attribute C_GEN_AVIDEO_POLARITY of U0 : label is 1;
  attribute C_GEN_CPARITY : integer;
  attribute C_GEN_CPARITY of U0 : label is 0;
  attribute C_GEN_F0_VBLANK_HEND : integer;
  attribute C_GEN_F0_VBLANK_HEND of U0 : label is 800;
  attribute C_GEN_F0_VBLANK_HSTART : integer;
  attribute C_GEN_F0_VBLANK_HSTART of U0 : label is 800;
  attribute C_GEN_F0_VFRAME_SIZE : integer;
  attribute C_GEN_F0_VFRAME_SIZE of U0 : label is 525;
  attribute C_GEN_F0_VSYNC_HEND : integer;
  attribute C_GEN_F0_VSYNC_HEND of U0 : label is 800;
  attribute C_GEN_F0_VSYNC_HSTART : integer;
  attribute C_GEN_F0_VSYNC_HSTART of U0 : label is 800;
  attribute C_GEN_F0_VSYNC_VEND : integer;
  attribute C_GEN_F0_VSYNC_VEND of U0 : label is 492;
  attribute C_GEN_F0_VSYNC_VSTART : integer;
  attribute C_GEN_F0_VSYNC_VSTART of U0 : label is 490;
  attribute C_GEN_F1_VBLANK_HEND : integer;
  attribute C_GEN_F1_VBLANK_HEND of U0 : label is 1280;
  attribute C_GEN_F1_VBLANK_HSTART : integer;
  attribute C_GEN_F1_VBLANK_HSTART of U0 : label is 1280;
  attribute C_GEN_F1_VFRAME_SIZE : integer;
  attribute C_GEN_F1_VFRAME_SIZE of U0 : label is 750;
  attribute C_GEN_F1_VSYNC_HEND : integer;
  attribute C_GEN_F1_VSYNC_HEND of U0 : label is 1280;
  attribute C_GEN_F1_VSYNC_HSTART : integer;
  attribute C_GEN_F1_VSYNC_HSTART of U0 : label is 1280;
  attribute C_GEN_F1_VSYNC_VEND : integer;
  attribute C_GEN_F1_VSYNC_VEND of U0 : label is 729;
  attribute C_GEN_F1_VSYNC_VSTART : integer;
  attribute C_GEN_F1_VSYNC_VSTART of U0 : label is 724;
  attribute C_GEN_FIELDID_EN : integer;
  attribute C_GEN_FIELDID_EN of U0 : label is 0;
  attribute C_GEN_FIELDID_POLARITY : integer;
  attribute C_GEN_FIELDID_POLARITY of U0 : label is 1;
  attribute C_GEN_HACTIVE_SIZE : integer;
  attribute C_GEN_HACTIVE_SIZE of U0 : label is 800;
  attribute C_GEN_HBLANK_EN : integer;
  attribute C_GEN_HBLANK_EN of U0 : label is 1;
  attribute C_GEN_HBLANK_POLARITY : integer;
  attribute C_GEN_HBLANK_POLARITY of U0 : label is 1;
  attribute C_GEN_HFRAME_SIZE : integer;
  attribute C_GEN_HFRAME_SIZE of U0 : label is 1056;
  attribute C_GEN_HSYNC_EN : integer;
  attribute C_GEN_HSYNC_EN of U0 : label is 1;
  attribute C_GEN_HSYNC_END : integer;
  attribute C_GEN_HSYNC_END of U0 : label is 968;
  attribute C_GEN_HSYNC_POLARITY : integer;
  attribute C_GEN_HSYNC_POLARITY of U0 : label is 1;
  attribute C_GEN_HSYNC_START : integer;
  attribute C_GEN_HSYNC_START of U0 : label is 840;
  attribute C_GEN_INTERLACED : integer;
  attribute C_GEN_INTERLACED of U0 : label is 0;
  attribute C_GEN_VACTIVE_SIZE : integer;
  attribute C_GEN_VACTIVE_SIZE of U0 : label is 480;
  attribute C_GEN_VBLANK_EN : integer;
  attribute C_GEN_VBLANK_EN of U0 : label is 1;
  attribute C_GEN_VBLANK_POLARITY : integer;
  attribute C_GEN_VBLANK_POLARITY of U0 : label is 1;
  attribute C_GEN_VIDEO_FORMAT : integer;
  attribute C_GEN_VIDEO_FORMAT of U0 : label is 2;
  attribute C_GEN_VSYNC_EN : integer;
  attribute C_GEN_VSYNC_EN of U0 : label is 1;
  attribute C_GEN_VSYNC_POLARITY : integer;
  attribute C_GEN_VSYNC_POLARITY of U0 : label is 1;
  attribute C_HAS_AXI4_LITE : integer;
  attribute C_HAS_AXI4_LITE of U0 : label is 0;
  attribute C_HAS_INTC_IF : integer;
  attribute C_HAS_INTC_IF of U0 : label is 0;
  attribute C_INTERLACE_EN : integer;
  attribute C_INTERLACE_EN of U0 : label is 0;
  attribute C_IRQEN : integer;
  attribute C_IRQEN of U0 : label is 0;
  attribute C_LINE_DELAY : integer;
  attribute C_LINE_DELAY of U0 : label is 0;
  attribute C_MAX_LINES : integer;
  attribute C_MAX_LINES of U0 : label is 4096;
  attribute C_MAX_PIXELS : integer;
  attribute C_MAX_PIXELS of U0 : label is 4096;
  attribute C_NUM_FSYNCS : integer;
  attribute C_NUM_FSYNCS of U0 : label is 1;
  attribute C_PIXEL_DELAY : integer;
  attribute C_PIXEL_DELAY of U0 : label is 0;
  attribute C_SYNC_EN : integer;
  attribute C_SYNC_EN of U0 : label is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_CLK_FREQ_HZ : integer;
  attribute C_S_AXI_CLK_FREQ_HZ of U0 : label is 100000000;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of active_video_out : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out ACTIVE_VIDEO";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF vtiming_in:vtiming_out, ASSOCIATED_RESET resetn, ASSOCIATED_CLKEN clken, FREQ_HZ 33333333, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of clken : signal is "xilinx.com:signal:clockenable:1.0 clken_intf CE";
  attribute x_interface_parameter of clken : signal is "XIL_INTERFACENAME clken_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of hblank_out : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out HBLANK";
  attribute x_interface_info of hsync_out : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out HSYNC";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn_intf RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of vblank_out : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out VBLANK";
  attribute x_interface_info of vsync_out : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out VSYNC";
begin
U0: entity work.design_1_v_tc_1_0_v_tc
     port map (
      active_chroma_in => '0',
      active_chroma_out => NLW_U0_active_chroma_out_UNCONNECTED,
      active_video_in => '0',
      active_video_out => active_video_out,
      clk => clk,
      clken => clken,
      det_clken => '1',
      field_id_in => '0',
      field_id_out => NLW_U0_field_id_out_UNCONNECTED,
      fsync_in => '0',
      fsync_out(0) => fsync_out(0),
      gen_clken => gen_clken,
      hblank_in => '0',
      hblank_out => hblank_out,
      hsync_in => '0',
      hsync_out => hsync_out,
      intc_if(31 downto 0) => NLW_U0_intc_if_UNCONNECTED(31 downto 0),
      irq => NLW_U0_irq_UNCONNECTED,
      resetn => resetn,
      s_axi_aclk => '0',
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => B"000000000",
      s_axi_aresetn => '1',
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(8 downto 0) => B"000000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => '0',
      vblank_in => '0',
      vblank_out => vblank_out,
      vsync_in => '0',
      vsync_out => vsync_out
    );
end STRUCTURE;
