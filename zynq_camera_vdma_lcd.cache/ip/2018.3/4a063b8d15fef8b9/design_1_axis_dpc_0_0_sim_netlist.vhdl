-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jan 20 00:05:03 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis_dpc_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_dpc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_shift_helper is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \current_state_reg[0]_0\ : out STD_LOGIC;
    s00_axis_tvalid_0 : out STD_LOGIC;
    \axis_tuser_buf_reg[8]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \axis_tlast_buf_reg[8]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    \s00_axis_tdata[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tlast_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axis_tvalid_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axis_tready : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tuser : in STD_LOGIC;
    shift_y_index_int0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \axis_tuser_buf_reg[9]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \axis_tlast_buf_reg[9]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    shift_x_index : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_eof0_carry : in STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    \current_state_reg[1]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_shift_helper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_shift_helper is
  signal \axis_tlast_buf[0]_i_3_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \^current_state_reg[0]_0\ : STD_LOGIC;
  signal \current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal m00_axis_tvalid_INST_0_i_1_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s00_axis_tready_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^s00_axis_tvalid_0\ : STD_LOGIC;
  signal \^s00_axis_tvalid_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal shift_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \shift_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[3]_i_3_n_0\ : STD_LOGIC;
  signal \shift_count[3]_i_4_n_0\ : STD_LOGIC;
  signal \shift_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \t6_center[7]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axis_tlast_buf[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \axis_tlast_buf[0]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axis_tlast_buf[0]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axis_tlast_buf[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axis_tlast_buf[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \axis_tlast_buf[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axis_tlast_buf[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axis_tlast_buf[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axis_tlast_buf[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axis_tlast_buf[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axis_tlast_buf[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axis_tlast_buf[9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axis_tuser_buf[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \axis_tuser_buf[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axis_tuser_buf[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axis_tuser_buf[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axis_tuser_buf[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axis_tuser_buf[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axis_tuser_buf[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axis_tuser_buf[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axis_tuser_buf[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \axis_tuser_buf[9]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \current_state[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_state[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_state[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_state[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_state[4]_i_3\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \current_state_reg[0]\ : label is "S_FILLING:00010,S_SHIFTING:00100,S_FLUSHING:01000,S_DONE:10000,S_IDLE:00001";
  attribute FSM_ENCODED_STATES of \current_state_reg[1]\ : label is "S_FILLING:00010,S_SHIFTING:00100,S_FLUSHING:01000,S_DONE:10000,S_IDLE:00001";
  attribute FSM_ENCODED_STATES of \current_state_reg[2]\ : label is "S_FILLING:00010,S_SHIFTING:00100,S_FLUSHING:01000,S_DONE:10000,S_IDLE:00001";
  attribute FSM_ENCODED_STATES of \current_state_reg[3]\ : label is "S_FILLING:00010,S_SHIFTING:00100,S_FLUSHING:01000,S_DONE:10000,S_IDLE:00001";
  attribute FSM_ENCODED_STATES of \current_state_reg[4]\ : label is "S_FILLING:00010,S_SHIFTING:00100,S_FLUSHING:01000,S_DONE:10000,S_IDLE:00001";
  attribute SOFT_HLUTNM of \in_raw_r[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \in_raw_r[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \in_raw_r[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \in_raw_r[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \in_raw_r[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \in_raw_r[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \in_raw_r[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \in_raw_r[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of m00_axis_tvalid_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m00_axis_tvalid_INST_0_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of s00_axis_tready_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shift_count[3]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_count[3]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shift_x_index_int[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_y_index_int[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shift_y_index_int[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_y_index_int[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_y_index_int[11]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shift_y_index_int[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_y_index_int[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_y_index_int[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_y_index_int[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_y_index_int[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_y_index_int[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shift_y_index_int[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_y_index_int[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_y_index_int[9]_i_1\ : label is "soft_lutpair7";
begin
  \current_state_reg[0]_0\ <= \^current_state_reg[0]_0\;
  s00_axis_tvalid_0 <= \^s00_axis_tvalid_0\;
  s00_axis_tvalid_1(0) <= \^s00_axis_tvalid_1\(0);
\axis_tlast_buf[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tlast,
      I1 => \^s00_axis_tvalid_0\,
      O => \axis_tlast_buf_reg[8]\(0)
    );
\axis_tlast_buf[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \axis_tlast_buf[0]_i_3_n_0\,
      I1 => s00_axis_tvalid,
      I2 => current_state(4),
      I3 => \current_state_reg_n_0_[3]\,
      O => \^s00_axis_tvalid_0\
    );
\axis_tlast_buf[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFDFFF"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => current_state(0),
      I2 => axis_aresetn,
      I3 => current_state(2),
      I4 => current_state(1),
      O => \axis_tlast_buf[0]_i_3_n_0\
    );
\axis_tlast_buf[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tlast_buf_reg[9]\(0),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tlast_buf_reg[8]\(1)
    );
\axis_tlast_buf[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tlast_buf_reg[9]\(1),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tlast_buf_reg[8]\(2)
    );
\axis_tlast_buf[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tlast_buf_reg[9]\(2),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tlast_buf_reg[8]\(3)
    );
\axis_tlast_buf[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tlast_buf_reg[9]\(3),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tlast_buf_reg[8]\(4)
    );
\axis_tlast_buf[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tlast_buf_reg[9]\(4),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tlast_buf_reg[8]\(5)
    );
\axis_tlast_buf[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tlast_buf_reg[9]\(5),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tlast_buf_reg[8]\(6)
    );
\axis_tlast_buf[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tlast_buf_reg[9]\(6),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tlast_buf_reg[8]\(7)
    );
\axis_tlast_buf[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tlast_buf_reg[9]\(7),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tlast_buf_reg[8]\(8)
    );
\axis_tlast_buf[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tlast_buf_reg[9]\(8),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tlast_buf_reg[8]\(9)
    );
\axis_tlast_buf[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => current_state(0),
      I1 => axis_aresetn,
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => \current_state_reg_n_0_[3]\,
      I5 => current_state(4),
      O => \^current_state_reg[0]_0\
    );
\axis_tuser_buf[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tuser,
      I1 => \^s00_axis_tvalid_0\,
      O => \axis_tuser_buf_reg[8]\(0)
    );
\axis_tuser_buf[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tuser_buf_reg[9]\(0),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tuser_buf_reg[8]\(1)
    );
\axis_tuser_buf[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tuser_buf_reg[9]\(1),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tuser_buf_reg[8]\(2)
    );
\axis_tuser_buf[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tuser_buf_reg[9]\(2),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tuser_buf_reg[8]\(3)
    );
\axis_tuser_buf[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tuser_buf_reg[9]\(3),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tuser_buf_reg[8]\(4)
    );
\axis_tuser_buf[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tuser_buf_reg[9]\(4),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tuser_buf_reg[8]\(5)
    );
\axis_tuser_buf[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tuser_buf_reg[9]\(5),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tuser_buf_reg[8]\(6)
    );
\axis_tuser_buf[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tuser_buf_reg[9]\(6),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tuser_buf_reg[8]\(7)
    );
\axis_tuser_buf[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tuser_buf_reg[9]\(7),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tuser_buf_reg[8]\(8)
    );
\axis_tuser_buf[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axis_tuser_buf_reg[9]\(8),
      I1 => \^current_state_reg[0]_0\,
      O => \axis_tuser_buf_reg[8]\(9)
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFFFFFFFFFF"
    )
        port map (
      I0 => current_state(4),
      I1 => m00_axis_tready,
      I2 => s00_axis_tvalid,
      I3 => current_state(0),
      I4 => axis_aresetn,
      I5 => \current_state[4]_i_2_n_0\,
      O => next_state(0)
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A80AA808A808A80"
    )
        port map (
      I0 => \t6_center[7]_i_4_n_0\,
      I1 => current_state(0),
      I2 => s00_axis_tvalid,
      I3 => current_state(1),
      I4 => \current_state[1]_i_2_n_0\,
      I5 => \current_state[2]_i_3_n_0\,
      O => next_state(1)
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \shift_count_reg_n_0_[1]\,
      I1 => \shift_count_reg_n_0_[0]\,
      I2 => \shift_count_reg_n_0_[3]\,
      I3 => \shift_count_reg_n_0_[2]\,
      O => \current_state[1]_i_2_n_0\
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAA88888888"
    )
        port map (
      I0 => \t6_center[7]_i_4_n_0\,
      I1 => \current_state[2]_i_2_n_0\,
      I2 => \current_state[2]_i_3_n_0\,
      I3 => m00_axis_tready,
      I4 => s00_axis_tvalid,
      I5 => current_state(2),
      O => next_state(2)
    );
\current_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00808080"
    )
        port map (
      I0 => \current_state[1]_i_2_n_0\,
      I1 => s00_axis_tvalid,
      I2 => current_state(1),
      I3 => s00_axis_tlast,
      I4 => CO(0),
      O => \current_state[2]_i_2_n_0\
    );
\current_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => CO(0),
      I1 => s00_axis_tlast,
      O => \current_state[2]_i_3_n_0\
    );
\current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000AAAA80008000"
    )
        port map (
      I0 => \t6_center[7]_i_4_n_0\,
      I1 => \current_state[3]_i_2_n_0\,
      I2 => s00_axis_tlast,
      I3 => CO(0),
      I4 => \current_state[4]_i_3_n_0\,
      I5 => \current_state_reg_n_0_[3]\,
      O => next_state(3)
    );
\current_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => current_state(1),
      I2 => m00_axis_tready,
      I3 => current_state(2),
      O => \current_state[3]_i_2_n_0\
    );
\current_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000888880008000"
    )
        port map (
      I0 => \current_state[4]_i_2_n_0\,
      I1 => axis_aresetn,
      I2 => \current_state[4]_i_3_n_0\,
      I3 => \current_state_reg_n_0_[3]\,
      I4 => m00_axis_tready,
      I5 => current_state(4),
      O => next_state(4)
    );
\current_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => \current_state_reg_n_0_[3]\,
      I4 => current_state(4),
      O => \current_state[4]_i_2_n_0\
    );
\current_state[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => \shift_count_reg_n_0_[3]\,
      I2 => \shift_count_reg_n_0_[2]\,
      I3 => \shift_count_reg_n_0_[0]\,
      I4 => \shift_count_reg_n_0_[1]\,
      O => \current_state[4]_i_3_n_0\
    );
\current_state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => axis_aclk,
      CE => '1',
      D => next_state(0),
      PRE => \current_state_reg[1]_0\,
      Q => current_state(0)
    );
\current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \current_state_reg[1]_0\,
      D => next_state(1),
      Q => current_state(1)
    );
\current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \current_state_reg[1]_0\,
      D => next_state(2),
      Q => current_state(2)
    );
\current_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \current_state_reg[1]_0\,
      D => next_state(3),
      Q => \current_state_reg_n_0_[3]\
    );
\current_state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \current_state_reg[1]_0\,
      D => next_state(4),
      Q => current_state(4)
    );
\in_raw_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(0),
      I1 => \^s00_axis_tvalid_0\,
      O => \s00_axis_tdata[7]\(0)
    );
\in_raw_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(1),
      I1 => \^s00_axis_tvalid_0\,
      O => \s00_axis_tdata[7]\(1)
    );
\in_raw_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(2),
      I1 => \^s00_axis_tvalid_0\,
      O => \s00_axis_tdata[7]\(2)
    );
\in_raw_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(3),
      I1 => \^s00_axis_tvalid_0\,
      O => \s00_axis_tdata[7]\(3)
    );
\in_raw_r[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(4),
      I1 => \^s00_axis_tvalid_0\,
      O => \s00_axis_tdata[7]\(4)
    );
\in_raw_r[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(5),
      I1 => \^s00_axis_tvalid_0\,
      O => \s00_axis_tdata[7]\(5)
    );
\in_raw_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(6),
      I1 => \^s00_axis_tvalid_0\,
      O => \s00_axis_tdata[7]\(6)
    );
\in_raw_r[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(7),
      I1 => \^s00_axis_tvalid_0\,
      O => \s00_axis_tdata[7]\(7)
    );
m00_axis_tvalid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000338"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => current_state(2),
      I2 => \current_state_reg_n_0_[3]\,
      I3 => current_state(4),
      I4 => m00_axis_tvalid_INST_0_i_1_n_0,
      O => m00_axis_tvalid
    );
m00_axis_tvalid_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => current_state(1),
      I1 => axis_aresetn,
      I2 => current_state(0),
      O => m00_axis_tvalid_INST_0_i_1_n_0
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000140000000400"
    )
        port map (
      I0 => s00_axis_tready_INST_0_i_1_n_0,
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => axis_aresetn,
      I4 => current_state(0),
      I5 => m00_axis_tready,
      O => s00_axis_tready
    );
s00_axis_tready_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(4),
      I1 => \current_state_reg_n_0_[3]\,
      O => s00_axis_tready_INST_0_i_1_n_0
    );
s_axis_eof0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2001"
    )
        port map (
      I0 => Q(10),
      I1 => Q(11),
      I2 => s_axis_eof0_carry,
      I3 => Q(9),
      O => S(3)
    );
s_axis_eof0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2001"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => s_axis_eof0_carry,
      I3 => Q(6),
      O => S(2)
    );
s_axis_eof0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => s_axis_eof0_carry,
      I3 => Q(3),
      O => S(1)
    );
s_axis_eof0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => s_axis_eof0_carry,
      I3 => Q(0),
      O => S(0)
    );
\shift_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010100"
    )
        port map (
      I0 => \shift_count_reg_n_0_[0]\,
      I1 => current_state(4),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => \current_state_reg_n_0_[3]\,
      I5 => current_state(2),
      O => shift_count(0)
    );
\shift_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000400080800"
    )
        port map (
      I0 => current_state(1),
      I1 => \shift_count[3]_i_3_n_0\,
      I2 => current_state(2),
      I3 => \shift_count_reg_n_0_[0]\,
      I4 => \shift_count_reg_n_0_[1]\,
      I5 => \current_state_reg_n_0_[3]\,
      O => shift_count(1)
    );
\shift_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BD42"
    )
        port map (
      I0 => \current_state_reg_n_0_[3]\,
      I1 => \shift_count_reg_n_0_[0]\,
      I2 => \shift_count_reg_n_0_[1]\,
      I3 => \shift_count_reg_n_0_[2]\,
      I4 => \shift_count[3]_i_4_n_0\,
      O => shift_count(2)
    );
\shift_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEBEDE9FFFFFFFF"
    )
        port map (
      I0 => current_state(1),
      I1 => \current_state_reg_n_0_[3]\,
      I2 => current_state(2),
      I3 => m00_axis_tready,
      I4 => s00_axis_tvalid,
      I5 => \shift_count[3]_i_3_n_0\,
      O => \shift_count[3]_i_1_n_0\
    );
\shift_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A6AAAA9A"
    )
        port map (
      I0 => \shift_count_reg_n_0_[3]\,
      I1 => \shift_count_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[3]\,
      I3 => \shift_count_reg_n_0_[1]\,
      I4 => \shift_count_reg_n_0_[0]\,
      I5 => \shift_count[3]_i_4_n_0\,
      O => shift_count(3)
    );
\shift_count[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(4),
      O => \shift_count[3]_i_3_n_0\
    );
\shift_count[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEB"
    )
        port map (
      I0 => current_state(2),
      I1 => \current_state_reg_n_0_[3]\,
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => current_state(4),
      O => \shift_count[3]_i_4_n_0\
    );
\shift_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \shift_count[3]_i_1_n_0\,
      CLR => \current_state_reg[1]_0\,
      D => shift_count(0),
      Q => \shift_count_reg_n_0_[0]\
    );
\shift_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \shift_count[3]_i_1_n_0\,
      CLR => \current_state_reg[1]_0\,
      D => shift_count(1),
      Q => \shift_count_reg_n_0_[1]\
    );
\shift_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \shift_count[3]_i_1_n_0\,
      CLR => \current_state_reg[1]_0\,
      D => shift_count(2),
      Q => \shift_count_reg_n_0_[2]\
    );
\shift_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \shift_count[3]_i_1_n_0\,
      CLR => \current_state_reg[1]_0\,
      D => shift_count(3),
      Q => \shift_count_reg_n_0_[3]\
    );
\shift_x_index_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F1"
    )
        port map (
      I0 => s00_axis_tlast,
      I1 => shift_x_index,
      I2 => s00_axis_tuser,
      I3 => \^s00_axis_tvalid_0\,
      O => s00_axis_tlast_0
    );
\shift_y_index_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => \^s00_axis_tvalid_0\,
      I3 => Q(0),
      O => D(0)
    );
\shift_y_index_int[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(9),
      I3 => \^s00_axis_tvalid_0\,
      O => D(10)
    );
\shift_y_index_int[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^s00_axis_tvalid_1\(0),
      I1 => \^s00_axis_tvalid_0\,
      I2 => s00_axis_tuser,
      I3 => s00_axis_tlast,
      O => E(0)
    );
\shift_y_index_int[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(10),
      I3 => \^s00_axis_tvalid_0\,
      O => D(11)
    );
\shift_y_index_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(0),
      I3 => \^s00_axis_tvalid_0\,
      O => D(1)
    );
\shift_y_index_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(1),
      I3 => \^s00_axis_tvalid_0\,
      O => D(2)
    );
\shift_y_index_int[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(2),
      I3 => \^s00_axis_tvalid_0\,
      O => D(3)
    );
\shift_y_index_int[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(3),
      I3 => \^s00_axis_tvalid_0\,
      O => D(4)
    );
\shift_y_index_int[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(4),
      I3 => \^s00_axis_tvalid_0\,
      O => D(5)
    );
\shift_y_index_int[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(5),
      I3 => \^s00_axis_tvalid_0\,
      O => D(6)
    );
\shift_y_index_int[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(6),
      I3 => \^s00_axis_tvalid_0\,
      O => D(7)
    );
\shift_y_index_int[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(7),
      I3 => \^s00_axis_tvalid_0\,
      O => D(8)
    );
\shift_y_index_int[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^current_state_reg[0]_0\,
      I1 => s00_axis_tuser,
      I2 => shift_y_index_int0(8),
      I3 => \^s00_axis_tvalid_0\,
      O => D(9)
    );
\t6_center[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AA8088808080"
    )
        port map (
      I0 => \t6_center[7]_i_4_n_0\,
      I1 => s00_axis_tvalid,
      I2 => current_state(1),
      I3 => m00_axis_tready,
      I4 => current_state(2),
      I5 => s00_axis_tready_INST_0_i_1_n_0,
      O => \^s00_axis_tvalid_1\(0)
    );
\t6_center[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_aresetn,
      I1 => \current_state[4]_i_2_n_0\,
      O => \t6_center[7]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram is
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 20472;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 7;
begin
mem_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \out\(0),
      ADDRARDADDR(13 downto 3) => ADDRARDADDR(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => \out\(0),
      ADDRBWRADDR(13 downto 3) => ADDRARDADDR(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => axis_aclk,
      CLKBWRCLK => axis_aclk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => Q(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => D(7 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => E(0),
      ENBWREN => E(0),
      INJECTDBITERR => NLW_mem_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      WEA(3) => E(0),
      WEA(2) => E(0),
      WEA(1) => E(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_0 is
  port (
    mem_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_0 : entity is "simple_dp_ram";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_0 is
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 20472;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 7;
begin
mem_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \out\(0),
      ADDRARDADDR(13 downto 3) => ADDRARDADDR(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => \out\(0),
      ADDRBWRADDR(13 downto 3) => ADDRARDADDR(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => axis_aclk,
      CLKBWRCLK => axis_aclk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => D(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => mem_reg_0(7 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => E(0),
      ENBWREN => E(0),
      INJECTDBITERR => NLW_mem_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      WEA(3) => E(0),
      WEA(2) => E(0),
      WEA(1) => E(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_1 is
  port (
    mem_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mem_reg_1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_1 : entity is "simple_dp_ram";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_1 is
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 20472;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 7;
begin
mem_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \out\(0),
      ADDRARDADDR(13 downto 3) => ADDRARDADDR(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => \out\(0),
      ADDRBWRADDR(13 downto 3) => ADDRARDADDR(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => axis_aclk,
      CLKBWRCLK => axis_aclk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => mem_reg_1(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => mem_reg_0(7 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => E(0),
      ENBWREN => E(0),
      INJECTDBITERR => NLW_mem_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      WEA(3) => E(0),
      WEA(2) => E(0),
      WEA(1) => E(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_2 is
  port (
    mem_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \pos_r_reg[2]\ : out STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mem_reg_1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_2 : entity is "simple_dp_ram";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_2 is
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal mem_reg_i_13_n_0 : STD_LOGIC;
  signal mem_reg_i_14_n_0 : STD_LOGIC;
  signal \^pos_r_reg[2]\ : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 20472;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 7;
begin
  ADDRARDADDR(10 downto 0) <= \^addrardaddr\(10 downto 0);
  \pos_r_reg[2]\ <= \^pos_r_reg[2]\;
mem_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \out\(11),
      ADDRARDADDR(13 downto 3) => \^addrardaddr\(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => \out\(11),
      ADDRBWRADDR(13 downto 3) => \^addrardaddr\(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => axis_aclk,
      CLKBWRCLK => axis_aclk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => mem_reg_1(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => mem_reg_0(7 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => E(0),
      ENBWREN => E(0),
      INJECTDBITERR => NLW_mem_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      WEA(3) => E(0),
      WEA(2) => E(0),
      WEA(1) => E(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(10),
      I2 => \out\(11),
      O => \^addrardaddr\(10)
    );
mem_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(0),
      I2 => \out\(9),
      I3 => \out\(10),
      I4 => \out\(11),
      I5 => \out\(1),
      O => \^addrardaddr\(1)
    );
mem_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(0),
      I2 => \out\(11),
      O => \^addrardaddr\(0)
    );
mem_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => mem_reg_i_13_n_0,
      I1 => mem_reg_i_14_n_0,
      I2 => \out\(2),
      I3 => \out\(3),
      I4 => \out\(6),
      I5 => \out\(7),
      O => \^pos_r_reg[2]\
    );
mem_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \out\(10),
      I1 => \out\(9),
      O => mem_reg_i_13_n_0
    );
mem_reg_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(4),
      I2 => \out\(5),
      I3 => \out\(8),
      O => mem_reg_i_14_n_0
    );
mem_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(9),
      I2 => \out\(11),
      O => \^addrardaddr\(9)
    );
mem_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(0),
      I2 => \out\(9),
      I3 => \out\(10),
      I4 => \out\(11),
      I5 => \out\(8),
      O => \^addrardaddr\(8)
    );
mem_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(0),
      I2 => \out\(9),
      I3 => \out\(10),
      I4 => \out\(11),
      I5 => \out\(7),
      O => \^addrardaddr\(7)
    );
mem_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(0),
      I2 => \out\(9),
      I3 => \out\(10),
      I4 => \out\(11),
      I5 => \out\(6),
      O => \^addrardaddr\(6)
    );
mem_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(0),
      I2 => \out\(9),
      I3 => \out\(10),
      I4 => \out\(11),
      I5 => \out\(5),
      O => \^addrardaddr\(5)
    );
mem_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(0),
      I2 => \out\(9),
      I3 => \out\(10),
      I4 => \out\(11),
      I5 => \out\(4),
      O => \^addrardaddr\(4)
    );
mem_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(0),
      I2 => \out\(9),
      I3 => \out\(10),
      I4 => \out\(11),
      I5 => \out\(3),
      O => \^addrardaddr\(3)
    );
mem_reg_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \^pos_r_reg[2]\,
      I1 => \out\(0),
      I2 => \out\(9),
      I3 => \out\(10),
      I4 => \out\(11),
      I5 => \out\(2),
      O => \^addrardaddr\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_v_shift_helper is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \max_y_index_int_reg[10]_0\ : out STD_LOGIC;
    \current_state_reg[0]\ : out STD_LOGIC;
    s00_axis_tvalid_0 : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    \p44_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \p42_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \p24_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \p22_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tuser : out STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    \shift_x_index_int_reg[0]_0\ : in STD_LOGIC;
    \max_y_index_int_reg[10]_1\ : in STD_LOGIC;
    \max_y_index_int_reg[10]_2\ : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tuser : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \t1_p9_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \t1_p7_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    t2_p8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \t1_p3_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \t1_p3_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \t1_p1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    t2_p2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \current_state_reg[1]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_v_shift_helper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_v_shift_helper is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_tlast_buf : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axis_tuser_buf : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^max_y_index_int_reg[10]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal s_axis_eof0_carry_n_0 : STD_LOGIC;
  signal s_axis_eof0_carry_n_1 : STD_LOGIC;
  signal s_axis_eof0_carry_n_2 : STD_LOGIC;
  signal s_axis_eof0_carry_n_3 : STD_LOGIC;
  signal shift_helper_inst_n_0 : STD_LOGIC;
  signal shift_helper_inst_n_1 : STD_LOGIC;
  signal shift_helper_inst_n_10 : STD_LOGIC;
  signal shift_helper_inst_n_11 : STD_LOGIC;
  signal shift_helper_inst_n_14 : STD_LOGIC;
  signal shift_helper_inst_n_15 : STD_LOGIC;
  signal shift_helper_inst_n_16 : STD_LOGIC;
  signal shift_helper_inst_n_17 : STD_LOGIC;
  signal shift_helper_inst_n_18 : STD_LOGIC;
  signal shift_helper_inst_n_19 : STD_LOGIC;
  signal shift_helper_inst_n_2 : STD_LOGIC;
  signal shift_helper_inst_n_20 : STD_LOGIC;
  signal shift_helper_inst_n_21 : STD_LOGIC;
  signal shift_helper_inst_n_22 : STD_LOGIC;
  signal shift_helper_inst_n_23 : STD_LOGIC;
  signal shift_helper_inst_n_3 : STD_LOGIC;
  signal shift_helper_inst_n_4 : STD_LOGIC;
  signal shift_helper_inst_n_43 : STD_LOGIC;
  signal shift_helper_inst_n_47 : STD_LOGIC;
  signal shift_helper_inst_n_48 : STD_LOGIC;
  signal shift_helper_inst_n_49 : STD_LOGIC;
  signal shift_helper_inst_n_5 : STD_LOGIC;
  signal shift_helper_inst_n_50 : STD_LOGIC;
  signal shift_helper_inst_n_6 : STD_LOGIC;
  signal shift_helper_inst_n_7 : STD_LOGIC;
  signal shift_helper_inst_n_8 : STD_LOGIC;
  signal shift_helper_inst_n_9 : STD_LOGIC;
  signal shift_x_index : STD_LOGIC;
  signal shift_y_index : STD_LOGIC;
  signal shift_y_index_int : STD_LOGIC;
  signal shift_y_index_int0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \shift_y_index_int0_carry__0_n_0\ : STD_LOGIC;
  signal \shift_y_index_int0_carry__0_n_1\ : STD_LOGIC;
  signal \shift_y_index_int0_carry__0_n_2\ : STD_LOGIC;
  signal \shift_y_index_int0_carry__0_n_3\ : STD_LOGIC;
  signal \shift_y_index_int0_carry__1_n_2\ : STD_LOGIC;
  signal \shift_y_index_int0_carry__1_n_3\ : STD_LOGIC;
  signal shift_y_index_int0_carry_n_0 : STD_LOGIC;
  signal shift_y_index_int0_carry_n_1 : STD_LOGIC;
  signal shift_y_index_int0_carry_n_2 : STD_LOGIC;
  signal shift_y_index_int0_carry_n_3 : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_y_index_int_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_s_axis_eof0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_shift_y_index_int0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_shift_y_index_int0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
  \max_y_index_int_reg[10]_0\ <= \^max_y_index_int_reg[10]_0\;
\axis_tlast_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => p_0_in(0),
      Q => axis_tlast_buf(0)
    );
\axis_tlast_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => p_0_in(1),
      Q => axis_tlast_buf(1)
    );
\axis_tlast_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => p_0_in(2),
      Q => axis_tlast_buf(2)
    );
\axis_tlast_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => p_0_in(3),
      Q => axis_tlast_buf(3)
    );
\axis_tlast_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => p_0_in(4),
      Q => axis_tlast_buf(4)
    );
\axis_tlast_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => p_0_in(5),
      Q => axis_tlast_buf(5)
    );
\axis_tlast_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => p_0_in(6),
      Q => axis_tlast_buf(6)
    );
\axis_tlast_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => p_0_in(7),
      Q => axis_tlast_buf(7)
    );
\axis_tlast_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => p_0_in(8),
      Q => axis_tlast_buf(8)
    );
\axis_tlast_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => p_0_in(9),
      Q => m00_axis_tlast
    );
\axis_tuser_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => shift_helper_inst_n_23,
      Q => axis_tuser_buf(0)
    );
\axis_tuser_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => shift_helper_inst_n_22,
      Q => axis_tuser_buf(1)
    );
\axis_tuser_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => shift_helper_inst_n_21,
      Q => axis_tuser_buf(2)
    );
\axis_tuser_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => shift_helper_inst_n_20,
      Q => axis_tuser_buf(3)
    );
\axis_tuser_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => shift_helper_inst_n_19,
      Q => axis_tuser_buf(4)
    );
\axis_tuser_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => shift_helper_inst_n_18,
      Q => axis_tuser_buf(5)
    );
\axis_tuser_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => shift_helper_inst_n_17,
      Q => axis_tuser_buf(6)
    );
\axis_tuser_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => shift_helper_inst_n_16,
      Q => axis_tuser_buf(7)
    );
\axis_tuser_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => shift_helper_inst_n_15,
      Q => axis_tuser_buf(8)
    );
\axis_tuser_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \current_state_reg[1]\,
      D => shift_helper_inst_n_14,
      Q => m00_axis_tuser
    );
\max_y_index_int_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => \max_y_index_int_reg[10]_2\,
      D => \max_y_index_int_reg[10]_1\,
      Q => \^max_y_index_int_reg[10]_0\
    );
s_axis_eof0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_axis_eof0_carry_n_0,
      CO(2) => s_axis_eof0_carry_n_1,
      CO(1) => s_axis_eof0_carry_n_2,
      CO(0) => s_axis_eof0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_s_axis_eof0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => shift_helper_inst_n_47,
      S(2) => shift_helper_inst_n_48,
      S(1) => shift_helper_inst_n_49,
      S(0) => shift_helper_inst_n_50
    );
shift_helper_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_shift_helper
     port map (
      CO(0) => s_axis_eof0_carry_n_0,
      D(11) => shift_helper_inst_n_0,
      D(10) => shift_helper_inst_n_1,
      D(9) => shift_helper_inst_n_2,
      D(8) => shift_helper_inst_n_3,
      D(7) => shift_helper_inst_n_4,
      D(6) => shift_helper_inst_n_5,
      D(5) => shift_helper_inst_n_6,
      D(4) => shift_helper_inst_n_7,
      D(3) => shift_helper_inst_n_8,
      D(2) => shift_helper_inst_n_9,
      D(1) => shift_helper_inst_n_10,
      D(0) => shift_helper_inst_n_11,
      E(0) => shift_y_index_int,
      Q(11) => \shift_y_index_int_reg_n_0_[11]\,
      Q(10) => \shift_y_index_int_reg_n_0_[10]\,
      Q(9) => \shift_y_index_int_reg_n_0_[9]\,
      Q(8) => \shift_y_index_int_reg_n_0_[8]\,
      Q(7) => \shift_y_index_int_reg_n_0_[7]\,
      Q(6) => \shift_y_index_int_reg_n_0_[6]\,
      Q(5) => \shift_y_index_int_reg_n_0_[5]\,
      Q(4) => \shift_y_index_int_reg_n_0_[4]\,
      Q(3) => \shift_y_index_int_reg_n_0_[3]\,
      Q(2) => \shift_y_index_int_reg_n_0_[2]\,
      Q(1) => \shift_y_index_int_reg_n_0_[1]\,
      Q(0) => shift_y_index,
      S(3) => shift_helper_inst_n_47,
      S(2) => shift_helper_inst_n_48,
      S(1) => shift_helper_inst_n_49,
      S(0) => shift_helper_inst_n_50,
      axis_aclk => axis_aclk,
      axis_aresetn => axis_aresetn,
      \axis_tlast_buf_reg[8]\(9 downto 0) => p_0_in(9 downto 0),
      \axis_tlast_buf_reg[9]\(8 downto 0) => axis_tlast_buf(8 downto 0),
      \axis_tuser_buf_reg[8]\(9) => shift_helper_inst_n_14,
      \axis_tuser_buf_reg[8]\(8) => shift_helper_inst_n_15,
      \axis_tuser_buf_reg[8]\(7) => shift_helper_inst_n_16,
      \axis_tuser_buf_reg[8]\(6) => shift_helper_inst_n_17,
      \axis_tuser_buf_reg[8]\(5) => shift_helper_inst_n_18,
      \axis_tuser_buf_reg[8]\(4) => shift_helper_inst_n_19,
      \axis_tuser_buf_reg[8]\(3) => shift_helper_inst_n_20,
      \axis_tuser_buf_reg[8]\(2) => shift_helper_inst_n_21,
      \axis_tuser_buf_reg[8]\(1) => shift_helper_inst_n_22,
      \axis_tuser_buf_reg[8]\(0) => shift_helper_inst_n_23,
      \axis_tuser_buf_reg[9]\(8 downto 0) => axis_tuser_buf(8 downto 0),
      \current_state_reg[0]_0\ => \current_state_reg[0]\,
      \current_state_reg[1]_0\ => \current_state_reg[1]\,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      s00_axis_tdata(7 downto 0) => s00_axis_tdata(7 downto 0),
      \s00_axis_tdata[7]\(7 downto 0) => D(7 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tlast_0 => shift_helper_inst_n_43,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tuser => s00_axis_tuser,
      s00_axis_tvalid => s00_axis_tvalid,
      s00_axis_tvalid_0 => s00_axis_tvalid_0,
      s00_axis_tvalid_1(0) => \^e\(0),
      s_axis_eof0_carry => \^max_y_index_int_reg[10]_0\,
      shift_x_index => shift_x_index,
      shift_y_index_int0(10 downto 0) => shift_y_index_int0(11 downto 1)
    );
\shift_x_index_int_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^e\(0),
      CLR => \shift_x_index_int_reg[0]_0\,
      D => shift_helper_inst_n_43,
      Q => shift_x_index
    );
shift_y_index_int0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => shift_y_index_int0_carry_n_0,
      CO(2) => shift_y_index_int0_carry_n_1,
      CO(1) => shift_y_index_int0_carry_n_2,
      CO(0) => shift_y_index_int0_carry_n_3,
      CYINIT => shift_y_index,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shift_y_index_int0(4 downto 1),
      S(3) => \shift_y_index_int_reg_n_0_[4]\,
      S(2) => \shift_y_index_int_reg_n_0_[3]\,
      S(1) => \shift_y_index_int_reg_n_0_[2]\,
      S(0) => \shift_y_index_int_reg_n_0_[1]\
    );
\shift_y_index_int0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => shift_y_index_int0_carry_n_0,
      CO(3) => \shift_y_index_int0_carry__0_n_0\,
      CO(2) => \shift_y_index_int0_carry__0_n_1\,
      CO(1) => \shift_y_index_int0_carry__0_n_2\,
      CO(0) => \shift_y_index_int0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shift_y_index_int0(8 downto 5),
      S(3) => \shift_y_index_int_reg_n_0_[8]\,
      S(2) => \shift_y_index_int_reg_n_0_[7]\,
      S(1) => \shift_y_index_int_reg_n_0_[6]\,
      S(0) => \shift_y_index_int_reg_n_0_[5]\
    );
\shift_y_index_int0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \shift_y_index_int0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_shift_y_index_int0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \shift_y_index_int0_carry__1_n_2\,
      CO(0) => \shift_y_index_int0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_shift_y_index_int0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => shift_y_index_int0(11 downto 9),
      S(3) => '0',
      S(2) => \shift_y_index_int_reg_n_0_[11]\,
      S(1) => \shift_y_index_int_reg_n_0_[10]\,
      S(0) => \shift_y_index_int_reg_n_0_[9]\
    );
\shift_y_index_int_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \shift_x_index_int_reg[0]_0\,
      D => shift_helper_inst_n_11,
      Q => shift_y_index
    );
\shift_y_index_int_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_1,
      Q => \shift_y_index_int_reg_n_0_[10]\
    );
\shift_y_index_int_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_0,
      Q => \shift_y_index_int_reg_n_0_[11]\
    );
\shift_y_index_int_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_10,
      Q => \shift_y_index_int_reg_n_0_[1]\
    );
\shift_y_index_int_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_9,
      Q => \shift_y_index_int_reg_n_0_[2]\
    );
\shift_y_index_int_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_8,
      Q => \shift_y_index_int_reg_n_0_[3]\
    );
\shift_y_index_int_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_7,
      Q => \shift_y_index_int_reg_n_0_[4]\
    );
\shift_y_index_int_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_6,
      Q => \shift_y_index_int_reg_n_0_[5]\
    );
\shift_y_index_int_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_5,
      Q => \shift_y_index_int_reg_n_0_[6]\
    );
\shift_y_index_int_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_4,
      Q => \shift_y_index_int_reg_n_0_[7]\
    );
\shift_y_index_int_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_3,
      Q => \shift_y_index_int_reg_n_0_[8]\
    );
\shift_y_index_int_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => shift_y_index_int,
      CLR => \max_y_index_int_reg[10]_2\,
      D => shift_helper_inst_n_2,
      Q => \shift_y_index_int_reg_n_0_[9]\
    );
\t1_p1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p1_reg[7]\(0),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p2(0),
      O => \p22_reg[7]\(0)
    );
\t1_p1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p1_reg[7]\(1),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p2(1),
      O => \p22_reg[7]\(1)
    );
\t1_p1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p1_reg[7]\(2),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p2(2),
      O => \p22_reg[7]\(2)
    );
\t1_p1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p1_reg[7]\(3),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p2(3),
      O => \p22_reg[7]\(3)
    );
\t1_p1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p1_reg[7]\(4),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p2(4),
      O => \p22_reg[7]\(4)
    );
\t1_p1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p1_reg[7]\(5),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p2(5),
      O => \p22_reg[7]\(5)
    );
\t1_p1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p1_reg[7]\(6),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p2(6),
      O => \p22_reg[7]\(6)
    );
\t1_p1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p1_reg[7]\(7),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p2(7),
      O => \p22_reg[7]\(7)
    );
\t1_p3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p3_reg[7]\(0),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p3_reg[7]_0\(0),
      O => \p24_reg[7]\(0)
    );
\t1_p3[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p3_reg[7]\(1),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p3_reg[7]_0\(1),
      O => \p24_reg[7]\(1)
    );
\t1_p3[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p3_reg[7]\(2),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p3_reg[7]_0\(2),
      O => \p24_reg[7]\(2)
    );
\t1_p3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p3_reg[7]\(3),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p3_reg[7]_0\(3),
      O => \p24_reg[7]\(3)
    );
\t1_p3[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p3_reg[7]\(4),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p3_reg[7]_0\(4),
      O => \p24_reg[7]\(4)
    );
\t1_p3[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p3_reg[7]\(5),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p3_reg[7]_0\(5),
      O => \p24_reg[7]\(5)
    );
\t1_p3[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p3_reg[7]\(6),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p3_reg[7]_0\(6),
      O => \p24_reg[7]\(6)
    );
\t1_p3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p3_reg[7]\(7),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p3_reg[7]_0\(7),
      O => \p24_reg[7]\(7)
    );
\t1_p7[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p7_reg[7]\(0),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p8(0),
      O => \p42_reg[7]\(0)
    );
\t1_p7[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p7_reg[7]\(1),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p8(1),
      O => \p42_reg[7]\(1)
    );
\t1_p7[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p7_reg[7]\(2),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p8(2),
      O => \p42_reg[7]\(2)
    );
\t1_p7[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p7_reg[7]\(3),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p8(3),
      O => \p42_reg[7]\(3)
    );
\t1_p7[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p7_reg[7]\(4),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p8(4),
      O => \p42_reg[7]\(4)
    );
\t1_p7[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p7_reg[7]\(5),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p8(5),
      O => \p42_reg[7]\(5)
    );
\t1_p7[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p7_reg[7]\(6),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p8(6),
      O => \p42_reg[7]\(6)
    );
\t1_p7[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \t1_p7_reg[7]\(7),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => t2_p8(7),
      O => \p42_reg[7]\(7)
    );
\t1_p9[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => Q(0),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p9_reg[7]\(0),
      O => \p44_reg[7]\(0)
    );
\t1_p9[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => Q(1),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p9_reg[7]\(1),
      O => \p44_reg[7]\(1)
    );
\t1_p9[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => Q(2),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p9_reg[7]\(2),
      O => \p44_reg[7]\(2)
    );
\t1_p9[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => Q(3),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p9_reg[7]\(3),
      O => \p44_reg[7]\(3)
    );
\t1_p9[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => Q(4),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p9_reg[7]\(4),
      O => \p44_reg[7]\(4)
    );
\t1_p9[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => Q(5),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p9_reg[7]\(5),
      O => \p44_reg[7]\(5)
    );
\t1_p9[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => Q(6),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p9_reg[7]\(6),
      O => \p44_reg[7]\(6)
    );
\t1_p9[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => Q(7),
      I1 => shift_y_index,
      I2 => shift_x_index,
      I3 => \t1_p9_reg[7]\(7),
      O => \p44_reg[7]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_reg_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gen_ram_inst[3].u_ram_n_19\ : STD_LOGIC;
  signal in_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^mem_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^mem_reg_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pos : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal pos_r : STD_LOGIC;
  signal \pos_r[0]_i_3_n_0\ : STD_LOGIC;
  signal pos_r_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \pos_r_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pos_r_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pos_r_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pos_r_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pos_r_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pos_r_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pos_r_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pos_r_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pos_r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pos_r_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pos_r_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pos_r_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pos_r_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pos_r_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pos_r_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pos_r_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pos_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pos_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pos_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pos_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pos_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pos_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pos_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_pos_r_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  mem_reg(7 downto 0) <= \^mem_reg\(7 downto 0);
  mem_reg_0(7 downto 0) <= \^mem_reg_0\(7 downto 0);
\gen_ram_inst[0].u_ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram
     port map (
      ADDRARDADDR(10 downto 0) => pos(10 downto 0),
      D(7 downto 0) => \^d\(7 downto 0),
      E(0) => E(0),
      Q(7 downto 0) => in_r(7 downto 0),
      axis_aclk => axis_aclk,
      \out\(0) => pos_r_reg(11)
    );
\gen_ram_inst[1].u_ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_0
     port map (
      ADDRARDADDR(10 downto 0) => pos(10 downto 0),
      D(7 downto 0) => \^d\(7 downto 0),
      E(0) => E(0),
      axis_aclk => axis_aclk,
      mem_reg_0(7 downto 0) => \^mem_reg\(7 downto 0),
      \out\(0) => pos_r_reg(11)
    );
\gen_ram_inst[2].u_ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_1
     port map (
      ADDRARDADDR(10 downto 0) => pos(10 downto 0),
      E(0) => E(0),
      axis_aclk => axis_aclk,
      mem_reg_0(7 downto 0) => \^mem_reg_0\(7 downto 0),
      mem_reg_1(7 downto 0) => \^mem_reg\(7 downto 0),
      \out\(0) => pos_r_reg(11)
    );
\gen_ram_inst[3].u_ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_2
     port map (
      ADDRARDADDR(10 downto 0) => pos(10 downto 0),
      E(0) => E(0),
      axis_aclk => axis_aclk,
      mem_reg_0(7 downto 0) => mem_reg_1(7 downto 0),
      mem_reg_1(7 downto 0) => \^mem_reg_0\(7 downto 0),
      \out\(11 downto 0) => pos_r_reg(11 downto 0),
      \pos_r_reg[2]\ => \gen_ram_inst[3].u_ram_n_19\
    );
\in_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => s00_axis_tdata(0),
      Q => in_r(0),
      R => '0'
    );
\in_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => s00_axis_tdata(1),
      Q => in_r(1),
      R => '0'
    );
\in_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => s00_axis_tdata(2),
      Q => in_r(2),
      R => '0'
    );
\in_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => s00_axis_tdata(3),
      Q => in_r(3),
      R => '0'
    );
\in_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => s00_axis_tdata(4),
      Q => in_r(4),
      R => '0'
    );
\in_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => s00_axis_tdata(5),
      Q => in_r(5),
      R => '0'
    );
\in_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => s00_axis_tdata(6),
      Q => in_r(6),
      R => '0'
    );
\in_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => s00_axis_tdata(7),
      Q => in_r(7),
      R => '0'
    );
\pos_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => E(0),
      I1 => \gen_ram_inst[3].u_ram_n_19\,
      I2 => pos_r_reg(11),
      O => pos_r
    );
\pos_r[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pos_r_reg(0),
      O => \pos_r[0]_i_3_n_0\
    );
\pos_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[0]_i_2_n_7\,
      Q => pos_r_reg(0),
      R => pos_r
    );
\pos_r_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pos_r_reg[0]_i_2_n_0\,
      CO(2) => \pos_r_reg[0]_i_2_n_1\,
      CO(1) => \pos_r_reg[0]_i_2_n_2\,
      CO(0) => \pos_r_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pos_r_reg[0]_i_2_n_4\,
      O(2) => \pos_r_reg[0]_i_2_n_5\,
      O(1) => \pos_r_reg[0]_i_2_n_6\,
      O(0) => \pos_r_reg[0]_i_2_n_7\,
      S(3 downto 1) => pos_r_reg(3 downto 1),
      S(0) => \pos_r[0]_i_3_n_0\
    );
\pos_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[8]_i_1_n_5\,
      Q => pos_r_reg(10),
      R => pos_r
    );
\pos_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[8]_i_1_n_4\,
      Q => pos_r_reg(11),
      R => pos_r
    );
\pos_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[0]_i_2_n_6\,
      Q => pos_r_reg(1),
      R => pos_r
    );
\pos_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[0]_i_2_n_5\,
      Q => pos_r_reg(2),
      R => pos_r
    );
\pos_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[0]_i_2_n_4\,
      Q => pos_r_reg(3),
      R => pos_r
    );
\pos_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[4]_i_1_n_7\,
      Q => pos_r_reg(4),
      R => pos_r
    );
\pos_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pos_r_reg[0]_i_2_n_0\,
      CO(3) => \pos_r_reg[4]_i_1_n_0\,
      CO(2) => \pos_r_reg[4]_i_1_n_1\,
      CO(1) => \pos_r_reg[4]_i_1_n_2\,
      CO(0) => \pos_r_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pos_r_reg[4]_i_1_n_4\,
      O(2) => \pos_r_reg[4]_i_1_n_5\,
      O(1) => \pos_r_reg[4]_i_1_n_6\,
      O(0) => \pos_r_reg[4]_i_1_n_7\,
      S(3 downto 0) => pos_r_reg(7 downto 4)
    );
\pos_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[4]_i_1_n_6\,
      Q => pos_r_reg(5),
      R => pos_r
    );
\pos_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[4]_i_1_n_5\,
      Q => pos_r_reg(6),
      R => pos_r
    );
\pos_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[4]_i_1_n_4\,
      Q => pos_r_reg(7),
      R => pos_r
    );
\pos_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[8]_i_1_n_7\,
      Q => pos_r_reg(8),
      R => pos_r
    );
\pos_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pos_r_reg[4]_i_1_n_0\,
      CO(3) => \NLW_pos_r_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pos_r_reg[8]_i_1_n_1\,
      CO(1) => \pos_r_reg[8]_i_1_n_2\,
      CO(0) => \pos_r_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pos_r_reg[8]_i_1_n_4\,
      O(2) => \pos_r_reg[8]_i_1_n_5\,
      O(1) => \pos_r_reg[8]_i_1_n_6\,
      O(0) => \pos_r_reg[8]_i_1_n_7\,
      S(3 downto 0) => pos_r_reg(11 downto 8)
    );
\pos_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => E(0),
      D => \pos_r_reg[8]_i_1_n_6\,
      Q => pos_r_reg(9),
      R => pos_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc is
  port (
    shift_enable : out STD_LOGIC;
    \max_y_index_int_reg[10]\ : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tuser : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \current_state_reg[0]\ : out STD_LOGIC;
    s00_axis_tvalid_0 : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    \shift_x_index_int_reg[0]\ : in STD_LOGIC;
    \t5_medium_reg[0]_0\ : in STD_LOGIC;
    \max_y_index_int_reg[10]_0\ : in STD_LOGIC;
    \current_state_reg[1]\ : in STD_LOGIC;
    \t1_p6_reg[6]_0\ : in STD_LOGIC;
    \max_y_index_int_reg[10]_1\ : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \t3_diff4_reg[0]_0\ : in STD_LOGIC;
    s00_axis_tuser : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc is
  signal a : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal in_raw_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal linebuffer_n_0 : STD_LOGIC;
  signal linebuffer_n_1 : STD_LOGIC;
  signal linebuffer_n_2 : STD_LOGIC;
  signal linebuffer_n_3 : STD_LOGIC;
  signal linebuffer_n_4 : STD_LOGIC;
  signal linebuffer_n_5 : STD_LOGIC;
  signal linebuffer_n_6 : STD_LOGIC;
  signal linebuffer_n_7 : STD_LOGIC;
  signal max0_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal max0_return1 : STD_LOGIC;
  signal max0_return1_carry_i_1_n_0 : STD_LOGIC;
  signal max0_return1_carry_i_2_n_0 : STD_LOGIC;
  signal max0_return1_carry_i_3_n_0 : STD_LOGIC;
  signal max0_return1_carry_i_4_n_0 : STD_LOGIC;
  signal max0_return1_carry_i_5_n_0 : STD_LOGIC;
  signal max0_return1_carry_i_6_n_0 : STD_LOGIC;
  signal max0_return1_carry_i_7_n_0 : STD_LOGIC;
  signal max0_return1_carry_i_8_n_0 : STD_LOGIC;
  signal max0_return1_carry_n_1 : STD_LOGIC;
  signal max0_return1_carry_n_2 : STD_LOGIC;
  signal max0_return1_carry_n_3 : STD_LOGIC;
  signal max1_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal max1_return1 : STD_LOGIC;
  signal max1_return1_carry_i_1_n_0 : STD_LOGIC;
  signal max1_return1_carry_i_2_n_0 : STD_LOGIC;
  signal max1_return1_carry_i_3_n_0 : STD_LOGIC;
  signal max1_return1_carry_i_4_n_0 : STD_LOGIC;
  signal max1_return1_carry_i_5_n_0 : STD_LOGIC;
  signal max1_return1_carry_i_6_n_0 : STD_LOGIC;
  signal max1_return1_carry_i_7_n_0 : STD_LOGIC;
  signal max1_return1_carry_i_8_n_0 : STD_LOGIC;
  signal max1_return1_carry_n_1 : STD_LOGIC;
  signal max1_return1_carry_n_2 : STD_LOGIC;
  signal max1_return1_carry_n_3 : STD_LOGIC;
  signal max2_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal max2_return1 : STD_LOGIC;
  signal max2_return1_carry_i_1_n_0 : STD_LOGIC;
  signal max2_return1_carry_i_2_n_0 : STD_LOGIC;
  signal max2_return1_carry_i_3_n_0 : STD_LOGIC;
  signal max2_return1_carry_i_4_n_0 : STD_LOGIC;
  signal max2_return1_carry_i_5_n_0 : STD_LOGIC;
  signal max2_return1_carry_i_6_n_0 : STD_LOGIC;
  signal max2_return1_carry_i_7_n_0 : STD_LOGIC;
  signal max2_return1_carry_i_8_n_0 : STD_LOGIC;
  signal max2_return1_carry_n_1 : STD_LOGIC;
  signal max2_return1_carry_n_2 : STD_LOGIC;
  signal max2_return1_carry_n_3 : STD_LOGIC;
  signal max2_return2 : STD_LOGIC;
  signal max2_return20_in : STD_LOGIC;
  signal max2_return2_carry_i_1_n_0 : STD_LOGIC;
  signal max2_return2_carry_i_2_n_0 : STD_LOGIC;
  signal max2_return2_carry_i_3_n_0 : STD_LOGIC;
  signal max2_return2_carry_i_4_n_0 : STD_LOGIC;
  signal max2_return2_carry_i_5_n_0 : STD_LOGIC;
  signal max2_return2_carry_i_6_n_0 : STD_LOGIC;
  signal max2_return2_carry_i_7_n_0 : STD_LOGIC;
  signal max2_return2_carry_i_8_n_0 : STD_LOGIC;
  signal max2_return2_carry_n_1 : STD_LOGIC;
  signal max2_return2_carry_n_2 : STD_LOGIC;
  signal max2_return2_carry_n_3 : STD_LOGIC;
  signal \max2_return2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \max2_return2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \max2_return2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal max_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal max_return1 : STD_LOGIC;
  signal max_return1_carry_i_1_n_0 : STD_LOGIC;
  signal max_return1_carry_i_2_n_0 : STD_LOGIC;
  signal max_return1_carry_i_3_n_0 : STD_LOGIC;
  signal max_return1_carry_i_4_n_0 : STD_LOGIC;
  signal max_return1_carry_i_5_n_0 : STD_LOGIC;
  signal max_return1_carry_i_6_n_0 : STD_LOGIC;
  signal max_return1_carry_i_7_n_0 : STD_LOGIC;
  signal max_return1_carry_i_8_n_0 : STD_LOGIC;
  signal max_return1_carry_n_1 : STD_LOGIC;
  signal max_return1_carry_n_2 : STD_LOGIC;
  signal max_return1_carry_n_3 : STD_LOGIC;
  signal med0_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal med0_return2 : STD_LOGIC;
  signal med0_return2_carry_i_1_n_0 : STD_LOGIC;
  signal med0_return2_carry_i_2_n_0 : STD_LOGIC;
  signal med0_return2_carry_i_3_n_0 : STD_LOGIC;
  signal med0_return2_carry_i_4_n_0 : STD_LOGIC;
  signal med0_return2_carry_i_5_n_0 : STD_LOGIC;
  signal med0_return2_carry_i_6_n_0 : STD_LOGIC;
  signal med0_return2_carry_i_7_n_0 : STD_LOGIC;
  signal med0_return2_carry_i_8_n_0 : STD_LOGIC;
  signal med0_return2_carry_n_1 : STD_LOGIC;
  signal med0_return2_carry_n_2 : STD_LOGIC;
  signal med0_return2_carry_n_3 : STD_LOGIC;
  signal med0_return3 : STD_LOGIC;
  signal med0_return3_carry_i_1_n_0 : STD_LOGIC;
  signal med0_return3_carry_i_2_n_0 : STD_LOGIC;
  signal med0_return3_carry_i_3_n_0 : STD_LOGIC;
  signal med0_return3_carry_i_4_n_0 : STD_LOGIC;
  signal med0_return3_carry_i_5_n_0 : STD_LOGIC;
  signal med0_return3_carry_i_6_n_0 : STD_LOGIC;
  signal med0_return3_carry_i_7_n_0 : STD_LOGIC;
  signal med0_return3_carry_i_8_n_0 : STD_LOGIC;
  signal med0_return3_carry_n_1 : STD_LOGIC;
  signal med0_return3_carry_n_2 : STD_LOGIC;
  signal med0_return3_carry_n_3 : STD_LOGIC;
  signal med1_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal med1_return2 : STD_LOGIC;
  signal med1_return2_carry_i_1_n_0 : STD_LOGIC;
  signal med1_return2_carry_i_2_n_0 : STD_LOGIC;
  signal med1_return2_carry_i_3_n_0 : STD_LOGIC;
  signal med1_return2_carry_i_4_n_0 : STD_LOGIC;
  signal med1_return2_carry_i_5_n_0 : STD_LOGIC;
  signal med1_return2_carry_i_6_n_0 : STD_LOGIC;
  signal med1_return2_carry_i_7_n_0 : STD_LOGIC;
  signal med1_return2_carry_i_8_n_0 : STD_LOGIC;
  signal med1_return2_carry_n_1 : STD_LOGIC;
  signal med1_return2_carry_n_2 : STD_LOGIC;
  signal med1_return2_carry_n_3 : STD_LOGIC;
  signal med1_return3 : STD_LOGIC;
  signal med1_return3_carry_i_1_n_0 : STD_LOGIC;
  signal med1_return3_carry_i_2_n_0 : STD_LOGIC;
  signal med1_return3_carry_i_3_n_0 : STD_LOGIC;
  signal med1_return3_carry_i_4_n_0 : STD_LOGIC;
  signal med1_return3_carry_i_5_n_0 : STD_LOGIC;
  signal med1_return3_carry_i_6_n_0 : STD_LOGIC;
  signal med1_return3_carry_i_7_n_0 : STD_LOGIC;
  signal med1_return3_carry_i_8_n_0 : STD_LOGIC;
  signal med1_return3_carry_n_1 : STD_LOGIC;
  signal med1_return3_carry_n_2 : STD_LOGIC;
  signal med1_return3_carry_n_3 : STD_LOGIC;
  signal med2_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal med2_return1 : STD_LOGIC;
  signal med2_return1_carry_i_1_n_0 : STD_LOGIC;
  signal med2_return1_carry_i_2_n_0 : STD_LOGIC;
  signal med2_return1_carry_i_3_n_0 : STD_LOGIC;
  signal med2_return1_carry_i_4_n_0 : STD_LOGIC;
  signal med2_return1_carry_i_5_n_0 : STD_LOGIC;
  signal med2_return1_carry_i_6_n_0 : STD_LOGIC;
  signal med2_return1_carry_i_7_n_0 : STD_LOGIC;
  signal med2_return1_carry_i_8_n_0 : STD_LOGIC;
  signal med2_return1_carry_n_1 : STD_LOGIC;
  signal med2_return1_carry_n_2 : STD_LOGIC;
  signal med2_return1_carry_n_3 : STD_LOGIC;
  signal med2_return2 : STD_LOGIC;
  signal med2_return21_in : STD_LOGIC;
  signal med2_return2_carry_i_1_n_0 : STD_LOGIC;
  signal med2_return2_carry_i_2_n_0 : STD_LOGIC;
  signal med2_return2_carry_i_3_n_0 : STD_LOGIC;
  signal med2_return2_carry_i_4_n_0 : STD_LOGIC;
  signal med2_return2_carry_i_5_n_0 : STD_LOGIC;
  signal med2_return2_carry_i_6_n_0 : STD_LOGIC;
  signal med2_return2_carry_i_7_n_0 : STD_LOGIC;
  signal med2_return2_carry_i_8_n_0 : STD_LOGIC;
  signal med2_return2_carry_n_1 : STD_LOGIC;
  signal med2_return2_carry_n_2 : STD_LOGIC;
  signal med2_return2_carry_n_3 : STD_LOGIC;
  signal \med2_return2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \med2_return2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \med2_return2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal med2_return3 : STD_LOGIC;
  signal med2_return30_in : STD_LOGIC;
  signal med2_return3_carry_i_1_n_0 : STD_LOGIC;
  signal med2_return3_carry_i_2_n_0 : STD_LOGIC;
  signal med2_return3_carry_i_3_n_0 : STD_LOGIC;
  signal med2_return3_carry_i_4_n_0 : STD_LOGIC;
  signal med2_return3_carry_i_5_n_0 : STD_LOGIC;
  signal med2_return3_carry_i_6_n_0 : STD_LOGIC;
  signal med2_return3_carry_i_7_n_0 : STD_LOGIC;
  signal med2_return3_carry_i_8_n_0 : STD_LOGIC;
  signal med2_return3_carry_n_1 : STD_LOGIC;
  signal med2_return3_carry_n_2 : STD_LOGIC;
  signal med2_return3_carry_n_3 : STD_LOGIC;
  signal \med2_return3_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \med2_return3_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \med2_return3_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal med3_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal med3_return1 : STD_LOGIC;
  signal med3_return1_carry_i_1_n_0 : STD_LOGIC;
  signal med3_return1_carry_i_2_n_0 : STD_LOGIC;
  signal med3_return1_carry_i_3_n_0 : STD_LOGIC;
  signal med3_return1_carry_i_4_n_0 : STD_LOGIC;
  signal med3_return1_carry_i_5_n_0 : STD_LOGIC;
  signal med3_return1_carry_i_6_n_0 : STD_LOGIC;
  signal med3_return1_carry_i_7_n_0 : STD_LOGIC;
  signal med3_return1_carry_i_8_n_0 : STD_LOGIC;
  signal med3_return1_carry_n_1 : STD_LOGIC;
  signal med3_return1_carry_n_2 : STD_LOGIC;
  signal med3_return1_carry_n_3 : STD_LOGIC;
  signal med3_return2 : STD_LOGIC;
  signal med3_return21_in : STD_LOGIC;
  signal med3_return2_carry_i_1_n_0 : STD_LOGIC;
  signal med3_return2_carry_i_2_n_0 : STD_LOGIC;
  signal med3_return2_carry_i_3_n_0 : STD_LOGIC;
  signal med3_return2_carry_i_4_n_0 : STD_LOGIC;
  signal med3_return2_carry_i_5_n_0 : STD_LOGIC;
  signal med3_return2_carry_i_6_n_0 : STD_LOGIC;
  signal med3_return2_carry_i_7_n_0 : STD_LOGIC;
  signal med3_return2_carry_i_8_n_0 : STD_LOGIC;
  signal med3_return2_carry_n_1 : STD_LOGIC;
  signal med3_return2_carry_n_2 : STD_LOGIC;
  signal med3_return2_carry_n_3 : STD_LOGIC;
  signal \med3_return2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \med3_return2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \med3_return2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal med3_return3 : STD_LOGIC;
  signal med3_return30_in : STD_LOGIC;
  signal med3_return3_carry_i_1_n_0 : STD_LOGIC;
  signal med3_return3_carry_i_2_n_0 : STD_LOGIC;
  signal med3_return3_carry_i_3_n_0 : STD_LOGIC;
  signal med3_return3_carry_i_4_n_0 : STD_LOGIC;
  signal med3_return3_carry_i_5_n_0 : STD_LOGIC;
  signal med3_return3_carry_i_6_n_0 : STD_LOGIC;
  signal med3_return3_carry_i_7_n_0 : STD_LOGIC;
  signal med3_return3_carry_i_8_n_0 : STD_LOGIC;
  signal med3_return3_carry_n_1 : STD_LOGIC;
  signal med3_return3_carry_n_2 : STD_LOGIC;
  signal med3_return3_carry_n_3 : STD_LOGIC;
  signal \med3_return3_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \med3_return3_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \med3_return3_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal med_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal med_return2 : STD_LOGIC;
  signal med_return2_carry_i_1_n_0 : STD_LOGIC;
  signal med_return2_carry_i_2_n_0 : STD_LOGIC;
  signal med_return2_carry_i_3_n_0 : STD_LOGIC;
  signal med_return2_carry_i_4_n_0 : STD_LOGIC;
  signal med_return2_carry_i_5_n_0 : STD_LOGIC;
  signal med_return2_carry_i_6_n_0 : STD_LOGIC;
  signal med_return2_carry_i_7_n_0 : STD_LOGIC;
  signal med_return2_carry_i_8_n_0 : STD_LOGIC;
  signal med_return2_carry_n_1 : STD_LOGIC;
  signal med_return2_carry_n_2 : STD_LOGIC;
  signal med_return2_carry_n_3 : STD_LOGIC;
  signal med_return3 : STD_LOGIC;
  signal med_return3_carry_i_1_n_0 : STD_LOGIC;
  signal med_return3_carry_i_2_n_0 : STD_LOGIC;
  signal med_return3_carry_i_3_n_0 : STD_LOGIC;
  signal med_return3_carry_i_4_n_0 : STD_LOGIC;
  signal med_return3_carry_i_5_n_0 : STD_LOGIC;
  signal med_return3_carry_i_6_n_0 : STD_LOGIC;
  signal med_return3_carry_i_7_n_0 : STD_LOGIC;
  signal med_return3_carry_i_8_n_0 : STD_LOGIC;
  signal med_return3_carry_n_1 : STD_LOGIC;
  signal med_return3_carry_n_2 : STD_LOGIC;
  signal med_return3_carry_n_3 : STD_LOGIC;
  signal min0_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal min0_return1_carry_i_1_n_0 : STD_LOGIC;
  signal min0_return1_carry_i_2_n_0 : STD_LOGIC;
  signal min0_return1_carry_i_3_n_0 : STD_LOGIC;
  signal min0_return1_carry_i_4_n_0 : STD_LOGIC;
  signal min0_return1_carry_i_5_n_0 : STD_LOGIC;
  signal min0_return1_carry_i_6_n_0 : STD_LOGIC;
  signal min0_return1_carry_i_7_n_0 : STD_LOGIC;
  signal min0_return1_carry_i_8_n_0 : STD_LOGIC;
  signal min0_return1_carry_n_0 : STD_LOGIC;
  signal min0_return1_carry_n_1 : STD_LOGIC;
  signal min0_return1_carry_n_2 : STD_LOGIC;
  signal min0_return1_carry_n_3 : STD_LOGIC;
  signal min0_return2_carry_i_1_n_0 : STD_LOGIC;
  signal min0_return2_carry_i_2_n_0 : STD_LOGIC;
  signal min0_return2_carry_i_3_n_0 : STD_LOGIC;
  signal min0_return2_carry_i_4_n_0 : STD_LOGIC;
  signal min0_return2_carry_i_5_n_0 : STD_LOGIC;
  signal min0_return2_carry_i_6_n_0 : STD_LOGIC;
  signal min0_return2_carry_i_7_n_0 : STD_LOGIC;
  signal min0_return2_carry_i_8_n_0 : STD_LOGIC;
  signal min0_return2_carry_n_0 : STD_LOGIC;
  signal min0_return2_carry_n_1 : STD_LOGIC;
  signal min0_return2_carry_n_2 : STD_LOGIC;
  signal min0_return2_carry_n_3 : STD_LOGIC;
  signal \min0_return2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \min0_return2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \min0_return2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \min0_return2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal min1_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal min1_return1_carry_i_1_n_0 : STD_LOGIC;
  signal min1_return1_carry_i_2_n_0 : STD_LOGIC;
  signal min1_return1_carry_i_3_n_0 : STD_LOGIC;
  signal min1_return1_carry_i_4_n_0 : STD_LOGIC;
  signal min1_return1_carry_i_5_n_0 : STD_LOGIC;
  signal min1_return1_carry_i_6_n_0 : STD_LOGIC;
  signal min1_return1_carry_i_7_n_0 : STD_LOGIC;
  signal min1_return1_carry_i_8_n_0 : STD_LOGIC;
  signal min1_return1_carry_n_1 : STD_LOGIC;
  signal min1_return1_carry_n_2 : STD_LOGIC;
  signal min1_return1_carry_n_3 : STD_LOGIC;
  signal min1_return2_carry_i_1_n_0 : STD_LOGIC;
  signal min1_return2_carry_i_2_n_0 : STD_LOGIC;
  signal min1_return2_carry_i_3_n_0 : STD_LOGIC;
  signal min1_return2_carry_i_4_n_0 : STD_LOGIC;
  signal min1_return2_carry_i_5_n_0 : STD_LOGIC;
  signal min1_return2_carry_i_6_n_0 : STD_LOGIC;
  signal min1_return2_carry_i_7_n_0 : STD_LOGIC;
  signal min1_return2_carry_i_8_n_0 : STD_LOGIC;
  signal min1_return2_carry_n_1 : STD_LOGIC;
  signal min1_return2_carry_n_2 : STD_LOGIC;
  signal min1_return2_carry_n_3 : STD_LOGIC;
  signal \min1_return2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \min1_return2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \min1_return2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \min1_return2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal min2_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal min2_return1 : STD_LOGIC;
  signal min2_return1_carry_i_1_n_0 : STD_LOGIC;
  signal min2_return1_carry_i_2_n_0 : STD_LOGIC;
  signal min2_return1_carry_i_3_n_0 : STD_LOGIC;
  signal min2_return1_carry_i_4_n_0 : STD_LOGIC;
  signal min2_return1_carry_i_5_n_0 : STD_LOGIC;
  signal min2_return1_carry_i_6_n_0 : STD_LOGIC;
  signal min2_return1_carry_i_7_n_0 : STD_LOGIC;
  signal min2_return1_carry_i_8_n_0 : STD_LOGIC;
  signal min2_return1_carry_n_1 : STD_LOGIC;
  signal min2_return1_carry_n_2 : STD_LOGIC;
  signal min2_return1_carry_n_3 : STD_LOGIC;
  signal min2_return2 : STD_LOGIC;
  signal min2_return20_in : STD_LOGIC;
  signal min2_return2_carry_i_1_n_0 : STD_LOGIC;
  signal min2_return2_carry_i_2_n_0 : STD_LOGIC;
  signal min2_return2_carry_i_3_n_0 : STD_LOGIC;
  signal min2_return2_carry_i_4_n_0 : STD_LOGIC;
  signal min2_return2_carry_i_5_n_0 : STD_LOGIC;
  signal min2_return2_carry_i_6_n_0 : STD_LOGIC;
  signal min2_return2_carry_i_7_n_0 : STD_LOGIC;
  signal min2_return2_carry_i_8_n_0 : STD_LOGIC;
  signal min2_return2_carry_n_1 : STD_LOGIC;
  signal min2_return2_carry_n_2 : STD_LOGIC;
  signal min2_return2_carry_n_3 : STD_LOGIC;
  signal \min2_return2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \min2_return2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \min2_return2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal min_return : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal min_return1_carry_i_1_n_0 : STD_LOGIC;
  signal min_return1_carry_i_2_n_0 : STD_LOGIC;
  signal min_return1_carry_i_3_n_0 : STD_LOGIC;
  signal min_return1_carry_i_4_n_0 : STD_LOGIC;
  signal min_return1_carry_i_5_n_0 : STD_LOGIC;
  signal min_return1_carry_i_6_n_0 : STD_LOGIC;
  signal min_return1_carry_i_7_n_0 : STD_LOGIC;
  signal min_return1_carry_i_8_n_0 : STD_LOGIC;
  signal min_return1_carry_n_0 : STD_LOGIC;
  signal min_return1_carry_n_1 : STD_LOGIC;
  signal min_return1_carry_n_2 : STD_LOGIC;
  signal min_return1_carry_n_3 : STD_LOGIC;
  signal min_return2_carry_i_1_n_0 : STD_LOGIC;
  signal min_return2_carry_i_2_n_0 : STD_LOGIC;
  signal min_return2_carry_i_3_n_0 : STD_LOGIC;
  signal min_return2_carry_i_4_n_0 : STD_LOGIC;
  signal min_return2_carry_i_5_n_0 : STD_LOGIC;
  signal min_return2_carry_i_6_n_0 : STD_LOGIC;
  signal min_return2_carry_i_7_n_0 : STD_LOGIC;
  signal min_return2_carry_i_8_n_0 : STD_LOGIC;
  signal min_return2_carry_n_0 : STD_LOGIC;
  signal min_return2_carry_n_1 : STD_LOGIC;
  signal min_return2_carry_n_2 : STD_LOGIC;
  signal min_return2_carry_n_3 : STD_LOGIC;
  signal \min_return2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \min_return2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \min_return2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \min_return2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal p12 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p13 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p14 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p15 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p22 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p23 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p24 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p25 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p32 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p34 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p35 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p42 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p43 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p44 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p45 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p52 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p53 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p54 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p55 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \^shift_enable\ : STD_LOGIC;
  signal shift_helper_n_10 : STD_LOGIC;
  signal shift_helper_n_11 : STD_LOGIC;
  signal shift_helper_n_12 : STD_LOGIC;
  signal shift_helper_n_14 : STD_LOGIC;
  signal shift_helper_n_15 : STD_LOGIC;
  signal shift_helper_n_16 : STD_LOGIC;
  signal shift_helper_n_17 : STD_LOGIC;
  signal shift_helper_n_18 : STD_LOGIC;
  signal shift_helper_n_19 : STD_LOGIC;
  signal shift_helper_n_20 : STD_LOGIC;
  signal shift_helper_n_21 : STD_LOGIC;
  signal shift_helper_n_22 : STD_LOGIC;
  signal shift_helper_n_23 : STD_LOGIC;
  signal shift_helper_n_24 : STD_LOGIC;
  signal shift_helper_n_25 : STD_LOGIC;
  signal shift_helper_n_26 : STD_LOGIC;
  signal shift_helper_n_27 : STD_LOGIC;
  signal shift_helper_n_28 : STD_LOGIC;
  signal shift_helper_n_29 : STD_LOGIC;
  signal shift_helper_n_30 : STD_LOGIC;
  signal shift_helper_n_31 : STD_LOGIC;
  signal shift_helper_n_32 : STD_LOGIC;
  signal shift_helper_n_33 : STD_LOGIC;
  signal shift_helper_n_34 : STD_LOGIC;
  signal shift_helper_n_35 : STD_LOGIC;
  signal shift_helper_n_36 : STD_LOGIC;
  signal shift_helper_n_37 : STD_LOGIC;
  signal shift_helper_n_38 : STD_LOGIC;
  signal shift_helper_n_39 : STD_LOGIC;
  signal shift_helper_n_40 : STD_LOGIC;
  signal shift_helper_n_41 : STD_LOGIC;
  signal shift_helper_n_42 : STD_LOGIC;
  signal shift_helper_n_43 : STD_LOGIC;
  signal shift_helper_n_44 : STD_LOGIC;
  signal shift_helper_n_45 : STD_LOGIC;
  signal shift_helper_n_5 : STD_LOGIC;
  signal shift_helper_n_6 : STD_LOGIC;
  signal shift_helper_n_7 : STD_LOGIC;
  signal shift_helper_n_8 : STD_LOGIC;
  signal shift_helper_n_9 : STD_LOGIC;
  signal t1_p1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t1_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t1_p7 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t1_p9 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_max2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_max3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_med1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t2_med1[7]_i_2_n_0\ : STD_LOGIC;
  signal \t2_med1[7]_i_3_n_0\ : STD_LOGIC;
  signal \t2_med1[7]_i_4_n_0\ : STD_LOGIC;
  signal t2_med2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t2_med2[7]_i_2_n_0\ : STD_LOGIC;
  signal \t2_med2[7]_i_3_n_0\ : STD_LOGIC;
  signal \t2_med2[7]_i_4_n_0\ : STD_LOGIC;
  signal t2_med3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t2_med3[7]_i_2_n_0\ : STD_LOGIC;
  signal \t2_med3[7]_i_3_n_0\ : STD_LOGIC;
  signal \t2_med3[7]_i_4_n_0\ : STD_LOGIC;
  signal t2_min1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_min2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_min3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_p1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_p2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_p5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_p6 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_p7 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_p8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t2_p9 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t3_center_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_center_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_center_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_center_reg_n_0_[3]\ : STD_LOGIC;
  signal \t3_center_reg_n_0_[4]\ : STD_LOGIC;
  signal \t3_center_reg_n_0_[5]\ : STD_LOGIC;
  signal \t3_center_reg_n_0_[6]\ : STD_LOGIC;
  signal \t3_center_reg_n_0_[7]\ : STD_LOGIC;
  signal t3_diff10 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \t3_diff10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \t3_diff10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \t3_diff10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \t3_diff10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \t3_diff10_carry__0_n_0\ : STD_LOGIC;
  signal \t3_diff10_carry__0_n_1\ : STD_LOGIC;
  signal \t3_diff10_carry__0_n_2\ : STD_LOGIC;
  signal \t3_diff10_carry__0_n_3\ : STD_LOGIC;
  signal t3_diff10_carry_i_1_n_0 : STD_LOGIC;
  signal t3_diff10_carry_i_2_n_0 : STD_LOGIC;
  signal t3_diff10_carry_i_3_n_0 : STD_LOGIC;
  signal t3_diff10_carry_i_4_n_0 : STD_LOGIC;
  signal t3_diff10_carry_n_0 : STD_LOGIC;
  signal t3_diff10_carry_n_1 : STD_LOGIC;
  signal t3_diff10_carry_n_2 : STD_LOGIC;
  signal t3_diff10_carry_n_3 : STD_LOGIC;
  signal \t3_diff1_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_diff1_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_diff1_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_diff1_reg_n_0_[3]\ : STD_LOGIC;
  signal \t3_diff1_reg_n_0_[4]\ : STD_LOGIC;
  signal \t3_diff1_reg_n_0_[5]\ : STD_LOGIC;
  signal \t3_diff1_reg_n_0_[6]\ : STD_LOGIC;
  signal \t3_diff1_reg_n_0_[7]\ : STD_LOGIC;
  signal t3_diff20 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \t3_diff20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \t3_diff20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \t3_diff20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \t3_diff20_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \t3_diff20_carry__0_n_0\ : STD_LOGIC;
  signal \t3_diff20_carry__0_n_1\ : STD_LOGIC;
  signal \t3_diff20_carry__0_n_2\ : STD_LOGIC;
  signal \t3_diff20_carry__0_n_3\ : STD_LOGIC;
  signal t3_diff20_carry_i_1_n_0 : STD_LOGIC;
  signal t3_diff20_carry_i_2_n_0 : STD_LOGIC;
  signal t3_diff20_carry_i_3_n_0 : STD_LOGIC;
  signal t3_diff20_carry_i_4_n_0 : STD_LOGIC;
  signal t3_diff20_carry_n_0 : STD_LOGIC;
  signal t3_diff20_carry_n_1 : STD_LOGIC;
  signal t3_diff20_carry_n_2 : STD_LOGIC;
  signal t3_diff20_carry_n_3 : STD_LOGIC;
  signal \t3_diff2_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_diff2_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_diff2_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_diff2_reg_n_0_[3]\ : STD_LOGIC;
  signal \t3_diff2_reg_n_0_[4]\ : STD_LOGIC;
  signal \t3_diff2_reg_n_0_[5]\ : STD_LOGIC;
  signal \t3_diff2_reg_n_0_[6]\ : STD_LOGIC;
  signal \t3_diff2_reg_n_0_[7]\ : STD_LOGIC;
  signal t3_diff30 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \t3_diff30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \t3_diff30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \t3_diff30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \t3_diff30_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \t3_diff30_carry__0_n_0\ : STD_LOGIC;
  signal \t3_diff30_carry__0_n_1\ : STD_LOGIC;
  signal \t3_diff30_carry__0_n_2\ : STD_LOGIC;
  signal \t3_diff30_carry__0_n_3\ : STD_LOGIC;
  signal t3_diff30_carry_i_1_n_0 : STD_LOGIC;
  signal t3_diff30_carry_i_2_n_0 : STD_LOGIC;
  signal t3_diff30_carry_i_3_n_0 : STD_LOGIC;
  signal t3_diff30_carry_i_4_n_0 : STD_LOGIC;
  signal t3_diff30_carry_n_0 : STD_LOGIC;
  signal t3_diff30_carry_n_1 : STD_LOGIC;
  signal t3_diff30_carry_n_2 : STD_LOGIC;
  signal t3_diff30_carry_n_3 : STD_LOGIC;
  signal \t3_diff3_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_diff3_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_diff3_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_diff3_reg_n_0_[3]\ : STD_LOGIC;
  signal \t3_diff3_reg_n_0_[4]\ : STD_LOGIC;
  signal \t3_diff3_reg_n_0_[5]\ : STD_LOGIC;
  signal \t3_diff3_reg_n_0_[6]\ : STD_LOGIC;
  signal \t3_diff3_reg_n_0_[7]\ : STD_LOGIC;
  signal t3_diff40 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \t3_diff40_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \t3_diff40_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \t3_diff40_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \t3_diff40_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \t3_diff40_carry__0_n_0\ : STD_LOGIC;
  signal \t3_diff40_carry__0_n_1\ : STD_LOGIC;
  signal \t3_diff40_carry__0_n_2\ : STD_LOGIC;
  signal \t3_diff40_carry__0_n_3\ : STD_LOGIC;
  signal t3_diff40_carry_i_1_n_0 : STD_LOGIC;
  signal t3_diff40_carry_i_2_n_0 : STD_LOGIC;
  signal t3_diff40_carry_i_3_n_0 : STD_LOGIC;
  signal t3_diff40_carry_i_4_n_0 : STD_LOGIC;
  signal t3_diff40_carry_n_0 : STD_LOGIC;
  signal t3_diff40_carry_n_1 : STD_LOGIC;
  signal t3_diff40_carry_n_2 : STD_LOGIC;
  signal t3_diff40_carry_n_3 : STD_LOGIC;
  signal \t3_diff4_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_diff4_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_diff4_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_diff4_reg_n_0_[3]\ : STD_LOGIC;
  signal \t3_diff4_reg_n_0_[4]\ : STD_LOGIC;
  signal \t3_diff4_reg_n_0_[5]\ : STD_LOGIC;
  signal \t3_diff4_reg_n_0_[6]\ : STD_LOGIC;
  signal \t3_diff4_reg_n_0_[7]\ : STD_LOGIC;
  signal t3_diff50 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \t3_diff50_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \t3_diff50_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \t3_diff50_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \t3_diff50_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \t3_diff50_carry__0_n_0\ : STD_LOGIC;
  signal \t3_diff50_carry__0_n_1\ : STD_LOGIC;
  signal \t3_diff50_carry__0_n_2\ : STD_LOGIC;
  signal \t3_diff50_carry__0_n_3\ : STD_LOGIC;
  signal t3_diff50_carry_i_1_n_0 : STD_LOGIC;
  signal t3_diff50_carry_i_2_n_0 : STD_LOGIC;
  signal t3_diff50_carry_i_3_n_0 : STD_LOGIC;
  signal t3_diff50_carry_i_4_n_0 : STD_LOGIC;
  signal t3_diff50_carry_n_0 : STD_LOGIC;
  signal t3_diff50_carry_n_1 : STD_LOGIC;
  signal t3_diff50_carry_n_2 : STD_LOGIC;
  signal t3_diff50_carry_n_3 : STD_LOGIC;
  signal \t3_diff5_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_diff5_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_diff5_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_diff5_reg_n_0_[3]\ : STD_LOGIC;
  signal \t3_diff5_reg_n_0_[4]\ : STD_LOGIC;
  signal \t3_diff5_reg_n_0_[5]\ : STD_LOGIC;
  signal \t3_diff5_reg_n_0_[6]\ : STD_LOGIC;
  signal \t3_diff5_reg_n_0_[7]\ : STD_LOGIC;
  signal t3_diff60 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \t3_diff60_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \t3_diff60_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \t3_diff60_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \t3_diff60_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \t3_diff60_carry__0_n_0\ : STD_LOGIC;
  signal \t3_diff60_carry__0_n_1\ : STD_LOGIC;
  signal \t3_diff60_carry__0_n_2\ : STD_LOGIC;
  signal \t3_diff60_carry__0_n_3\ : STD_LOGIC;
  signal t3_diff60_carry_i_1_n_0 : STD_LOGIC;
  signal t3_diff60_carry_i_2_n_0 : STD_LOGIC;
  signal t3_diff60_carry_i_3_n_0 : STD_LOGIC;
  signal t3_diff60_carry_i_4_n_0 : STD_LOGIC;
  signal t3_diff60_carry_n_0 : STD_LOGIC;
  signal t3_diff60_carry_n_1 : STD_LOGIC;
  signal t3_diff60_carry_n_2 : STD_LOGIC;
  signal t3_diff60_carry_n_3 : STD_LOGIC;
  signal \t3_diff6_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_diff6_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_diff6_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_diff6_reg_n_0_[3]\ : STD_LOGIC;
  signal \t3_diff6_reg_n_0_[4]\ : STD_LOGIC;
  signal \t3_diff6_reg_n_0_[5]\ : STD_LOGIC;
  signal \t3_diff6_reg_n_0_[6]\ : STD_LOGIC;
  signal \t3_diff6_reg_n_0_[7]\ : STD_LOGIC;
  signal t3_diff70 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \t3_diff70_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \t3_diff70_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \t3_diff70_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \t3_diff70_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \t3_diff70_carry__0_n_0\ : STD_LOGIC;
  signal \t3_diff70_carry__0_n_1\ : STD_LOGIC;
  signal \t3_diff70_carry__0_n_2\ : STD_LOGIC;
  signal \t3_diff70_carry__0_n_3\ : STD_LOGIC;
  signal t3_diff70_carry_i_1_n_0 : STD_LOGIC;
  signal t3_diff70_carry_i_2_n_0 : STD_LOGIC;
  signal t3_diff70_carry_i_3_n_0 : STD_LOGIC;
  signal t3_diff70_carry_i_4_n_0 : STD_LOGIC;
  signal t3_diff70_carry_n_0 : STD_LOGIC;
  signal t3_diff70_carry_n_1 : STD_LOGIC;
  signal t3_diff70_carry_n_2 : STD_LOGIC;
  signal t3_diff70_carry_n_3 : STD_LOGIC;
  signal \t3_diff7_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_diff7_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_diff7_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_diff7_reg_n_0_[3]\ : STD_LOGIC;
  signal \t3_diff7_reg_n_0_[4]\ : STD_LOGIC;
  signal \t3_diff7_reg_n_0_[5]\ : STD_LOGIC;
  signal \t3_diff7_reg_n_0_[6]\ : STD_LOGIC;
  signal \t3_diff7_reg_n_0_[7]\ : STD_LOGIC;
  signal t3_diff80 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \t3_diff80_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \t3_diff80_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \t3_diff80_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \t3_diff80_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \t3_diff80_carry__0_n_0\ : STD_LOGIC;
  signal \t3_diff80_carry__0_n_1\ : STD_LOGIC;
  signal \t3_diff80_carry__0_n_2\ : STD_LOGIC;
  signal \t3_diff80_carry__0_n_3\ : STD_LOGIC;
  signal t3_diff80_carry_i_1_n_0 : STD_LOGIC;
  signal t3_diff80_carry_i_2_n_0 : STD_LOGIC;
  signal t3_diff80_carry_i_3_n_0 : STD_LOGIC;
  signal t3_diff80_carry_i_4_n_0 : STD_LOGIC;
  signal t3_diff80_carry_n_0 : STD_LOGIC;
  signal t3_diff80_carry_n_1 : STD_LOGIC;
  signal t3_diff80_carry_n_2 : STD_LOGIC;
  signal t3_diff80_carry_n_3 : STD_LOGIC;
  signal \t3_diff8_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_diff8_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_diff8_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_diff8_reg_n_0_[3]\ : STD_LOGIC;
  signal \t3_diff8_reg_n_0_[4]\ : STD_LOGIC;
  signal \t3_diff8_reg_n_0_[5]\ : STD_LOGIC;
  signal \t3_diff8_reg_n_0_[6]\ : STD_LOGIC;
  signal \t3_diff8_reg_n_0_[7]\ : STD_LOGIC;
  signal \t3_max_of_min_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_max_of_min_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_max_of_min_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_max_of_min_reg_n_0_[3]\ : STD_LOGIC;
  signal \t3_max_of_min_reg_n_0_[4]\ : STD_LOGIC;
  signal \t3_max_of_min_reg_n_0_[5]\ : STD_LOGIC;
  signal \t3_max_of_min_reg_n_0_[6]\ : STD_LOGIC;
  signal \t3_max_of_min_reg_n_0_[7]\ : STD_LOGIC;
  signal t3_med_of_med : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t3_med_of_med[7]_i_2_n_0\ : STD_LOGIC;
  signal \t3_med_of_med[7]_i_3_n_0\ : STD_LOGIC;
  signal \t3_med_of_med[7]_i_4_n_0\ : STD_LOGIC;
  signal t3_min_of_max : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t4_center : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t4_defective_pix : STD_LOGIC;
  signal t4_defective_pix_i_1_n_0 : STD_LOGIC;
  signal t4_defective_pix_i_2_n_0 : STD_LOGIC;
  signal t4_defective_pix_i_3_n_0 : STD_LOGIC;
  signal t4_diff1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t4_diff1[1]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff1[2]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff1[3]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff1[4]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff1[5]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff1[6]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff1[7]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff1[7]_i_2_n_0\ : STD_LOGIC;
  signal t4_diff2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t4_diff2[1]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff2[2]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff2[3]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff2[4]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff2[5]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff2[6]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff2[7]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff2[7]_i_2_n_0\ : STD_LOGIC;
  signal t4_diff3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t4_diff3[1]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff3[2]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff3[3]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff3[4]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff3[5]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff3[6]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff3[7]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff3[7]_i_2_n_0\ : STD_LOGIC;
  signal t4_diff4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t4_diff4[1]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff4[2]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff4[3]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff4[4]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff4[5]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff4[6]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff4[7]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff4[7]_i_2_n_0\ : STD_LOGIC;
  signal t4_diff5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t4_diff5[1]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff5[2]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff5[3]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff5[4]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff5[5]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff5[6]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff5[7]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff5[7]_i_2_n_0\ : STD_LOGIC;
  signal t4_diff6 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t4_diff6[1]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff6[2]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff6[3]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff6[4]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff6[5]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff6[6]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff6[7]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff6[7]_i_2_n_0\ : STD_LOGIC;
  signal t4_diff7 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t4_diff7[1]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff7[2]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff7[3]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff7[4]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff7[5]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff7[6]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff7[7]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff7[7]_i_2_n_0\ : STD_LOGIC;
  signal t4_diff8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t4_diff8[1]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff8[2]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff8[3]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff8[4]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff8[5]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff8[6]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff8[7]_i_1_n_0\ : STD_LOGIC;
  signal \t4_diff8[7]_i_2_n_0\ : STD_LOGIC;
  signal t4_medium : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t4_medium[7]_i_2_n_0\ : STD_LOGIC;
  signal \t4_medium[7]_i_3_n_0\ : STD_LOGIC;
  signal \t4_medium[7]_i_4_n_0\ : STD_LOGIC;
  signal t5_center : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal t5_defective_pix : STD_LOGIC;
  signal t5_defective_pix1_carry_i_1_n_0 : STD_LOGIC;
  signal t5_defective_pix1_carry_i_2_n_0 : STD_LOGIC;
  signal t5_defective_pix1_carry_i_3_n_0 : STD_LOGIC;
  signal t5_defective_pix1_carry_i_4_n_0 : STD_LOGIC;
  signal t5_defective_pix1_carry_i_5_n_0 : STD_LOGIC;
  signal t5_defective_pix1_carry_i_6_n_0 : STD_LOGIC;
  signal t5_defective_pix1_carry_n_0 : STD_LOGIC;
  signal t5_defective_pix1_carry_n_1 : STD_LOGIC;
  signal t5_defective_pix1_carry_n_2 : STD_LOGIC;
  signal t5_defective_pix1_carry_n_3 : STD_LOGIC;
  signal t5_defective_pix2_carry_i_1_n_0 : STD_LOGIC;
  signal t5_defective_pix2_carry_i_2_n_0 : STD_LOGIC;
  signal t5_defective_pix2_carry_i_3_n_0 : STD_LOGIC;
  signal t5_defective_pix2_carry_i_4_n_0 : STD_LOGIC;
  signal t5_defective_pix2_carry_i_5_n_0 : STD_LOGIC;
  signal t5_defective_pix2_carry_i_6_n_0 : STD_LOGIC;
  signal t5_defective_pix2_carry_n_0 : STD_LOGIC;
  signal t5_defective_pix2_carry_n_1 : STD_LOGIC;
  signal t5_defective_pix2_carry_n_2 : STD_LOGIC;
  signal t5_defective_pix2_carry_n_3 : STD_LOGIC;
  signal t5_defective_pix3_carry_i_1_n_0 : STD_LOGIC;
  signal t5_defective_pix3_carry_i_2_n_0 : STD_LOGIC;
  signal t5_defective_pix3_carry_i_3_n_0 : STD_LOGIC;
  signal t5_defective_pix3_carry_i_4_n_0 : STD_LOGIC;
  signal t5_defective_pix3_carry_i_5_n_0 : STD_LOGIC;
  signal t5_defective_pix3_carry_i_6_n_0 : STD_LOGIC;
  signal t5_defective_pix3_carry_n_0 : STD_LOGIC;
  signal t5_defective_pix3_carry_n_1 : STD_LOGIC;
  signal t5_defective_pix3_carry_n_2 : STD_LOGIC;
  signal t5_defective_pix3_carry_n_3 : STD_LOGIC;
  signal t5_defective_pix4_carry_i_1_n_0 : STD_LOGIC;
  signal t5_defective_pix4_carry_i_2_n_0 : STD_LOGIC;
  signal t5_defective_pix4_carry_i_3_n_0 : STD_LOGIC;
  signal t5_defective_pix4_carry_i_4_n_0 : STD_LOGIC;
  signal t5_defective_pix4_carry_i_5_n_0 : STD_LOGIC;
  signal t5_defective_pix4_carry_i_6_n_0 : STD_LOGIC;
  signal t5_defective_pix4_carry_n_0 : STD_LOGIC;
  signal t5_defective_pix4_carry_n_1 : STD_LOGIC;
  signal t5_defective_pix4_carry_n_2 : STD_LOGIC;
  signal t5_defective_pix4_carry_n_3 : STD_LOGIC;
  signal t5_defective_pix5_carry_i_1_n_0 : STD_LOGIC;
  signal t5_defective_pix5_carry_i_2_n_0 : STD_LOGIC;
  signal t5_defective_pix5_carry_i_3_n_0 : STD_LOGIC;
  signal t5_defective_pix5_carry_i_4_n_0 : STD_LOGIC;
  signal t5_defective_pix5_carry_i_5_n_0 : STD_LOGIC;
  signal t5_defective_pix5_carry_i_6_n_0 : STD_LOGIC;
  signal t5_defective_pix5_carry_n_0 : STD_LOGIC;
  signal t5_defective_pix5_carry_n_1 : STD_LOGIC;
  signal t5_defective_pix5_carry_n_2 : STD_LOGIC;
  signal t5_defective_pix5_carry_n_3 : STD_LOGIC;
  signal t5_defective_pix6_carry_i_1_n_0 : STD_LOGIC;
  signal t5_defective_pix6_carry_i_2_n_0 : STD_LOGIC;
  signal t5_defective_pix6_carry_i_3_n_0 : STD_LOGIC;
  signal t5_defective_pix6_carry_i_4_n_0 : STD_LOGIC;
  signal t5_defective_pix6_carry_i_5_n_0 : STD_LOGIC;
  signal t5_defective_pix6_carry_i_6_n_0 : STD_LOGIC;
  signal t5_defective_pix6_carry_n_0 : STD_LOGIC;
  signal t5_defective_pix6_carry_n_1 : STD_LOGIC;
  signal t5_defective_pix6_carry_n_2 : STD_LOGIC;
  signal t5_defective_pix6_carry_n_3 : STD_LOGIC;
  signal t5_defective_pix7_carry_i_1_n_0 : STD_LOGIC;
  signal t5_defective_pix7_carry_i_2_n_0 : STD_LOGIC;
  signal t5_defective_pix7_carry_i_3_n_0 : STD_LOGIC;
  signal t5_defective_pix7_carry_i_4_n_0 : STD_LOGIC;
  signal t5_defective_pix7_carry_i_5_n_0 : STD_LOGIC;
  signal t5_defective_pix7_carry_i_6_n_0 : STD_LOGIC;
  signal t5_defective_pix7_carry_n_0 : STD_LOGIC;
  signal t5_defective_pix7_carry_n_1 : STD_LOGIC;
  signal t5_defective_pix7_carry_n_2 : STD_LOGIC;
  signal t5_defective_pix7_carry_n_3 : STD_LOGIC;
  signal t5_defective_pix8_carry_i_1_n_0 : STD_LOGIC;
  signal t5_defective_pix8_carry_i_2_n_0 : STD_LOGIC;
  signal t5_defective_pix8_carry_i_3_n_0 : STD_LOGIC;
  signal t5_defective_pix8_carry_i_4_n_0 : STD_LOGIC;
  signal t5_defective_pix8_carry_i_5_n_0 : STD_LOGIC;
  signal t5_defective_pix8_carry_i_6_n_0 : STD_LOGIC;
  signal t5_defective_pix8_carry_n_0 : STD_LOGIC;
  signal t5_defective_pix8_carry_n_1 : STD_LOGIC;
  signal t5_defective_pix8_carry_n_2 : STD_LOGIC;
  signal t5_defective_pix8_carry_n_3 : STD_LOGIC;
  signal t5_defective_pix_i_1_n_0 : STD_LOGIC;
  signal t5_defective_pix_i_2_n_0 : STD_LOGIC;
  signal t5_medium : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \t6_center[0]_i_1_n_0\ : STD_LOGIC;
  signal \t6_center[1]_i_1_n_0\ : STD_LOGIC;
  signal \t6_center[2]_i_1_n_0\ : STD_LOGIC;
  signal \t6_center[3]_i_1_n_0\ : STD_LOGIC;
  signal \t6_center[4]_i_1_n_0\ : STD_LOGIC;
  signal \t6_center[5]_i_1_n_0\ : STD_LOGIC;
  signal \t6_center[6]_i_1_n_0\ : STD_LOGIC;
  signal \t6_center[7]_i_2_n_0\ : STD_LOGIC;
  signal tap1x : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tap2x : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tap3x : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_max0_return1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_max1_return1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_max2_return1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_max2_return2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_max2_return2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_max_return1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med0_return2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med0_return3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med1_return2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med1_return3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med2_return1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med2_return2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_med2_return2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med2_return3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_med2_return3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med3_return1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med3_return2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_med3_return2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med3_return3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_med3_return3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med_return2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_med_return3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_min0_return1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_min0_return2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_min0_return2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_min1_return1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_min1_return2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_min1_return2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_min2_return1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_min2_return2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_min2_return2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_min_return1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_min_return2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_min_return2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t3_diff10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t3_diff10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_t3_diff20_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t3_diff20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_t3_diff30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t3_diff30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_t3_diff40_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t3_diff40_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_t3_diff50_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t3_diff50_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_t3_diff60_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t3_diff60_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_t3_diff70_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t3_diff70_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_t3_diff80_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t3_diff80_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_t5_defective_pix1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_t5_defective_pix2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_t5_defective_pix3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_t5_defective_pix4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_t5_defective_pix5_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_t5_defective_pix6_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_t5_defective_pix7_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_t5_defective_pix8_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \t2_med1[7]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \t2_med1[7]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \t2_med2[7]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \t2_med2[7]_i_4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \t2_med3[7]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \t2_med3[7]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \t3_med_of_med[7]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \t3_med_of_med[7]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \t4_diff1[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \t4_diff1[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \t4_diff1[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \t4_diff1[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \t4_diff1[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \t4_diff1[7]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \t4_diff2[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \t4_diff2[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \t4_diff2[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \t4_diff2[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \t4_diff2[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \t4_diff2[7]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \t4_diff3[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \t4_diff3[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \t4_diff3[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \t4_diff3[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \t4_diff3[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \t4_diff3[7]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \t4_diff4[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \t4_diff4[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \t4_diff4[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \t4_diff4[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \t4_diff4[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \t4_diff4[7]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \t4_diff5[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \t4_diff5[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \t4_diff5[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \t4_diff5[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \t4_diff5[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \t4_diff5[7]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \t4_diff6[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \t4_diff6[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \t4_diff6[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \t4_diff6[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \t4_diff6[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \t4_diff6[7]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \t4_diff7[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \t4_diff7[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \t4_diff7[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \t4_diff7[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \t4_diff7[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \t4_diff7[7]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \t4_diff8[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \t4_diff8[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \t4_diff8[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \t4_diff8[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \t4_diff8[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \t4_diff8[7]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \t4_medium[7]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \t4_medium[7]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \t6_center[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \t6_center[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \t6_center[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \t6_center[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \t6_center[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \t6_center[5]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \t6_center[6]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \t6_center[7]_i_2\ : label is "soft_lutpair56";
begin
  shift_enable <= \^shift_enable\;
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p9(6),
      I1 => t1_p7(6),
      I2 => t1_p9(7),
      I3 => t1_p7(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p34(6),
      I1 => \t3_center_reg_n_0_[6]\,
      I2 => p34(7),
      I3 => \t3_center_reg_n_0_[7]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max3(6),
      I1 => a(6),
      I2 => a(7),
      I3 => t2_max3(7),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p3(6),
      I1 => t1_p1(6),
      I2 => t1_p3(7),
      I3 => t1_p1(7),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min1(6),
      I1 => t2_min3(6),
      I2 => t2_min3(7),
      I3 => t2_min1(7),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_min_of_max(6),
      I1 => \t3_max_of_min_reg_n_0_[6]\,
      I2 => t3_min_of_max(7),
      I3 => \t3_max_of_min_reg_n_0_[7]\,
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_min_of_max(6),
      I1 => t3_med_of_med(6),
      I2 => t3_min_of_max(7),
      I3 => t3_med_of_med(7),
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med3(6),
      I1 => t2_med1(6),
      I2 => t2_med3(7),
      I3 => t2_med1(7),
      O => \i__carry_i_1__6_n_0\
    );
\i__carry_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med3(6),
      I1 => t2_med2(6),
      I2 => t2_med3(7),
      I3 => t2_med2(7),
      O => \i__carry_i_1__7_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p9(4),
      I1 => t1_p7(4),
      I2 => t1_p9(5),
      I3 => t1_p7(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p34(4),
      I1 => \t3_center_reg_n_0_[4]\,
      I2 => p34(5),
      I3 => \t3_center_reg_n_0_[5]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max3(4),
      I1 => a(4),
      I2 => a(5),
      I3 => t2_max3(5),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p3(4),
      I1 => t1_p1(4),
      I2 => t1_p3(5),
      I3 => t1_p1(5),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min1(4),
      I1 => t2_min3(4),
      I2 => t2_min3(5),
      I3 => t2_min1(5),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_min_of_max(4),
      I1 => \t3_max_of_min_reg_n_0_[4]\,
      I2 => t3_min_of_max(5),
      I3 => \t3_max_of_min_reg_n_0_[5]\,
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_min_of_max(4),
      I1 => t3_med_of_med(4),
      I2 => t3_min_of_max(5),
      I3 => t3_med_of_med(5),
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med3(4),
      I1 => t2_med1(4),
      I2 => t2_med3(5),
      I3 => t2_med1(5),
      O => \i__carry_i_2__6_n_0\
    );
\i__carry_i_2__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med3(4),
      I1 => t2_med2(4),
      I2 => t2_med3(5),
      I3 => t2_med2(5),
      O => \i__carry_i_2__7_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p9(2),
      I1 => t1_p7(2),
      I2 => t1_p9(3),
      I3 => t1_p7(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p34(2),
      I1 => \t3_center_reg_n_0_[2]\,
      I2 => p34(3),
      I3 => \t3_center_reg_n_0_[3]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max3(2),
      I1 => a(2),
      I2 => a(3),
      I3 => t2_max3(3),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p3(2),
      I1 => t1_p1(2),
      I2 => t1_p3(3),
      I3 => t1_p1(3),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min1(2),
      I1 => t2_min3(2),
      I2 => t2_min3(3),
      I3 => t2_min1(3),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_min_of_max(2),
      I1 => \t3_max_of_min_reg_n_0_[2]\,
      I2 => t3_min_of_max(3),
      I3 => \t3_max_of_min_reg_n_0_[3]\,
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_min_of_max(2),
      I1 => t3_med_of_med(2),
      I2 => t3_min_of_max(3),
      I3 => t3_med_of_med(3),
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med3(2),
      I1 => t2_med1(2),
      I2 => t2_med3(3),
      I3 => t2_med1(3),
      O => \i__carry_i_3__6_n_0\
    );
\i__carry_i_3__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med3(2),
      I1 => t2_med2(2),
      I2 => t2_med3(3),
      I3 => t2_med2(3),
      O => \i__carry_i_3__7_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p9(0),
      I1 => t1_p7(0),
      I2 => t1_p9(1),
      I3 => t1_p7(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p34(0),
      I1 => \t3_center_reg_n_0_[0]\,
      I2 => p34(1),
      I3 => \t3_center_reg_n_0_[1]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max3(0),
      I1 => a(0),
      I2 => a(1),
      I3 => t2_max3(1),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p3(0),
      I1 => t1_p1(0),
      I2 => t1_p3(1),
      I3 => t1_p1(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min1(0),
      I1 => t2_min3(0),
      I2 => t2_min3(1),
      I3 => t2_min1(1),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_min_of_max(0),
      I1 => \t3_max_of_min_reg_n_0_[0]\,
      I2 => t3_min_of_max(1),
      I3 => \t3_max_of_min_reg_n_0_[1]\,
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_min_of_max(0),
      I1 => t3_med_of_med(0),
      I2 => t3_min_of_max(1),
      I3 => t3_med_of_med(1),
      O => \i__carry_i_4__5_n_0\
    );
\i__carry_i_4__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med3(0),
      I1 => t2_med1(0),
      I2 => t2_med3(1),
      I3 => t2_med1(1),
      O => \i__carry_i_4__6_n_0\
    );
\i__carry_i_4__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med3(0),
      I1 => t2_med2(0),
      I2 => t2_med3(1),
      I3 => t2_med2(1),
      O => \i__carry_i_4__7_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p9(6),
      I1 => t1_p7(6),
      I2 => t1_p9(7),
      I3 => t1_p7(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p34(6),
      I1 => \t3_center_reg_n_0_[6]\,
      I2 => p34(7),
      I3 => \t3_center_reg_n_0_[7]\,
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max3(6),
      I1 => a(6),
      I2 => t2_max3(7),
      I3 => a(7),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p3(6),
      I1 => t1_p1(6),
      I2 => t1_p3(7),
      I3 => t1_p1(7),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min1(6),
      I1 => t2_min3(6),
      I2 => t2_min1(7),
      I3 => t2_min3(7),
      O => \i__carry_i_5__3_n_0\
    );
\i__carry_i_5__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[6]\,
      I1 => t3_min_of_max(6),
      I2 => \t3_max_of_min_reg_n_0_[7]\,
      I3 => t3_min_of_max(7),
      O => \i__carry_i_5__4_n_0\
    );
\i__carry_i_5__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_min_of_max(6),
      I1 => t3_med_of_med(6),
      I2 => t3_min_of_max(7),
      I3 => t3_med_of_med(7),
      O => \i__carry_i_5__5_n_0\
    );
\i__carry_i_5__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med1(6),
      I1 => t2_med3(6),
      I2 => t2_med1(7),
      I3 => t2_med3(7),
      O => \i__carry_i_5__6_n_0\
    );
\i__carry_i_5__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med3(6),
      I1 => t2_med2(6),
      I2 => t2_med3(7),
      I3 => t2_med2(7),
      O => \i__carry_i_5__7_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p9(4),
      I1 => t1_p7(4),
      I2 => t1_p9(5),
      I3 => t1_p7(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p34(4),
      I1 => \t3_center_reg_n_0_[4]\,
      I2 => p34(5),
      I3 => \t3_center_reg_n_0_[5]\,
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max3(4),
      I1 => a(4),
      I2 => t2_max3(5),
      I3 => a(5),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p3(4),
      I1 => t1_p1(4),
      I2 => t1_p3(5),
      I3 => t1_p1(5),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min1(4),
      I1 => t2_min3(4),
      I2 => t2_min1(5),
      I3 => t2_min3(5),
      O => \i__carry_i_6__3_n_0\
    );
\i__carry_i_6__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[4]\,
      I1 => t3_min_of_max(4),
      I2 => \t3_max_of_min_reg_n_0_[5]\,
      I3 => t3_min_of_max(5),
      O => \i__carry_i_6__4_n_0\
    );
\i__carry_i_6__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_min_of_max(4),
      I1 => t3_med_of_med(4),
      I2 => t3_min_of_max(5),
      I3 => t3_med_of_med(5),
      O => \i__carry_i_6__5_n_0\
    );
\i__carry_i_6__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med1(4),
      I1 => t2_med3(4),
      I2 => t2_med1(5),
      I3 => t2_med3(5),
      O => \i__carry_i_6__6_n_0\
    );
\i__carry_i_6__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med3(4),
      I1 => t2_med2(4),
      I2 => t2_med3(5),
      I3 => t2_med2(5),
      O => \i__carry_i_6__7_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p9(2),
      I1 => t1_p7(2),
      I2 => t1_p9(3),
      I3 => t1_p7(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p34(2),
      I1 => \t3_center_reg_n_0_[2]\,
      I2 => p34(3),
      I3 => \t3_center_reg_n_0_[3]\,
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max3(2),
      I1 => a(2),
      I2 => t2_max3(3),
      I3 => a(3),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p3(2),
      I1 => t1_p1(2),
      I2 => t1_p3(3),
      I3 => t1_p1(3),
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_7__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min1(2),
      I1 => t2_min3(2),
      I2 => t2_min1(3),
      I3 => t2_min3(3),
      O => \i__carry_i_7__3_n_0\
    );
\i__carry_i_7__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[2]\,
      I1 => t3_min_of_max(2),
      I2 => \t3_max_of_min_reg_n_0_[3]\,
      I3 => t3_min_of_max(3),
      O => \i__carry_i_7__4_n_0\
    );
\i__carry_i_7__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_min_of_max(2),
      I1 => t3_med_of_med(2),
      I2 => t3_min_of_max(3),
      I3 => t3_med_of_med(3),
      O => \i__carry_i_7__5_n_0\
    );
\i__carry_i_7__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med1(2),
      I1 => t2_med3(2),
      I2 => t2_med1(3),
      I3 => t2_med3(3),
      O => \i__carry_i_7__6_n_0\
    );
\i__carry_i_7__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med3(2),
      I1 => t2_med2(2),
      I2 => t2_med3(3),
      I3 => t2_med2(3),
      O => \i__carry_i_7__7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p9(0),
      I1 => t1_p7(0),
      I2 => t1_p9(1),
      I3 => t1_p7(1),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p34(0),
      I1 => \t3_center_reg_n_0_[0]\,
      I2 => p34(1),
      I3 => \t3_center_reg_n_0_[1]\,
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max3(0),
      I1 => a(0),
      I2 => t2_max3(1),
      I3 => a(1),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p3(0),
      I1 => t1_p1(0),
      I2 => t1_p3(1),
      I3 => t1_p1(1),
      O => \i__carry_i_8__2_n_0\
    );
\i__carry_i_8__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min1(0),
      I1 => t2_min3(0),
      I2 => t2_min1(1),
      I3 => t2_min3(1),
      O => \i__carry_i_8__3_n_0\
    );
\i__carry_i_8__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[0]\,
      I1 => t3_min_of_max(0),
      I2 => \t3_max_of_min_reg_n_0_[1]\,
      I3 => t3_min_of_max(1),
      O => \i__carry_i_8__4_n_0\
    );
\i__carry_i_8__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_min_of_max(0),
      I1 => t3_med_of_med(0),
      I2 => t3_min_of_max(1),
      I3 => t3_med_of_med(1),
      O => \i__carry_i_8__5_n_0\
    );
\i__carry_i_8__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med1(0),
      I1 => t2_med3(0),
      I2 => t2_med1(1),
      I3 => t2_med3(1),
      O => \i__carry_i_8__6_n_0\
    );
\i__carry_i_8__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med3(0),
      I1 => t2_med2(0),
      I2 => t2_med3(1),
      I3 => t2_med2(1),
      O => \i__carry_i_8__7_n_0\
    );
\in_raw_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_12,
      Q => in_raw_r(0)
    );
\in_raw_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_11,
      Q => in_raw_r(1)
    );
\in_raw_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_10,
      Q => in_raw_r(2)
    );
\in_raw_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_9,
      Q => in_raw_r(3)
    );
\in_raw_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_8,
      Q => in_raw_r(4)
    );
\in_raw_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_7,
      Q => in_raw_r(5)
    );
\in_raw_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_6,
      Q => in_raw_r(6)
    );
\in_raw_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_5,
      Q => in_raw_r(7)
    );
linebuffer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register
     port map (
      D(7) => linebuffer_n_0,
      D(6) => linebuffer_n_1,
      D(5) => linebuffer_n_2,
      D(4) => linebuffer_n_3,
      D(3) => linebuffer_n_4,
      D(2) => linebuffer_n_5,
      D(1) => linebuffer_n_6,
      D(0) => linebuffer_n_7,
      E(0) => \^shift_enable\,
      axis_aclk => axis_aclk,
      mem_reg(7 downto 0) => tap1x(7 downto 0),
      mem_reg_0(7 downto 0) => tap2x(7 downto 0),
      mem_reg_1(7 downto 0) => tap3x(7 downto 0),
      s00_axis_tdata(7 downto 0) => s00_axis_tdata(7 downto 0)
    );
max0_return1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => max0_return1,
      CO(2) => max0_return1_carry_n_1,
      CO(1) => max0_return1_carry_n_2,
      CO(0) => max0_return1_carry_n_3,
      CYINIT => '0',
      DI(3) => max0_return1_carry_i_1_n_0,
      DI(2) => max0_return1_carry_i_2_n_0,
      DI(1) => max0_return1_carry_i_3_n_0,
      DI(0) => max0_return1_carry_i_4_n_0,
      O(3 downto 0) => NLW_max0_return1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => max0_return1_carry_i_5_n_0,
      S(2) => max0_return1_carry_i_6_n_0,
      S(1) => max0_return1_carry_i_7_n_0,
      S(0) => max0_return1_carry_i_8_n_0
    );
max0_return1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_center_reg_n_0_[6]\,
      I1 => p32(6),
      I2 => \t3_center_reg_n_0_[7]\,
      I3 => p32(7),
      O => max0_return1_carry_i_1_n_0
    );
max0_return1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_center_reg_n_0_[4]\,
      I1 => p32(4),
      I2 => \t3_center_reg_n_0_[5]\,
      I3 => p32(5),
      O => max0_return1_carry_i_2_n_0
    );
max0_return1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_center_reg_n_0_[2]\,
      I1 => p32(2),
      I2 => \t3_center_reg_n_0_[3]\,
      I3 => p32(3),
      O => max0_return1_carry_i_3_n_0
    );
max0_return1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_center_reg_n_0_[0]\,
      I1 => p32(0),
      I2 => \t3_center_reg_n_0_[1]\,
      I3 => p32(1),
      O => max0_return1_carry_i_4_n_0
    );
max0_return1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(6),
      I1 => \t3_center_reg_n_0_[6]\,
      I2 => p32(7),
      I3 => \t3_center_reg_n_0_[7]\,
      O => max0_return1_carry_i_5_n_0
    );
max0_return1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(4),
      I1 => \t3_center_reg_n_0_[4]\,
      I2 => p32(5),
      I3 => \t3_center_reg_n_0_[5]\,
      O => max0_return1_carry_i_6_n_0
    );
max0_return1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(2),
      I1 => \t3_center_reg_n_0_[2]\,
      I2 => p32(3),
      I3 => \t3_center_reg_n_0_[3]\,
      O => max0_return1_carry_i_7_n_0
    );
max0_return1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(0),
      I1 => \t3_center_reg_n_0_[0]\,
      I2 => p32(1),
      I3 => \t3_center_reg_n_0_[1]\,
      O => max0_return1_carry_i_8_n_0
    );
max1_return1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => max1_return1,
      CO(2) => max1_return1_carry_n_1,
      CO(1) => max1_return1_carry_n_2,
      CO(0) => max1_return1_carry_n_3,
      CYINIT => '0',
      DI(3) => max1_return1_carry_i_1_n_0,
      DI(2) => max1_return1_carry_i_2_n_0,
      DI(1) => max1_return1_carry_i_3_n_0,
      DI(0) => max1_return1_carry_i_4_n_0,
      O(3 downto 0) => NLW_max1_return1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => max1_return1_carry_i_5_n_0,
      S(2) => max1_return1_carry_i_6_n_0,
      S(1) => max1_return1_carry_i_7_n_0,
      S(0) => max1_return1_carry_i_8_n_0
    );
max1_return1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p7(6),
      I1 => p52(6),
      I2 => t1_p7(7),
      I3 => p52(7),
      O => max1_return1_carry_i_1_n_0
    );
max1_return1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p7(4),
      I1 => p52(4),
      I2 => t1_p7(5),
      I3 => p52(5),
      O => max1_return1_carry_i_2_n_0
    );
max1_return1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p7(2),
      I1 => p52(2),
      I2 => t1_p7(3),
      I3 => p52(3),
      O => max1_return1_carry_i_3_n_0
    );
max1_return1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p7(0),
      I1 => p52(0),
      I2 => t1_p7(1),
      I3 => p52(1),
      O => max1_return1_carry_i_4_n_0
    );
max1_return1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(6),
      I1 => t1_p7(6),
      I2 => p52(7),
      I3 => t1_p7(7),
      O => max1_return1_carry_i_5_n_0
    );
max1_return1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(4),
      I1 => t1_p7(4),
      I2 => p52(5),
      I3 => t1_p7(5),
      O => max1_return1_carry_i_6_n_0
    );
max1_return1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(2),
      I1 => t1_p7(2),
      I2 => p52(3),
      I3 => t1_p7(3),
      O => max1_return1_carry_i_7_n_0
    );
max1_return1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(0),
      I1 => t1_p7(0),
      I2 => p52(1),
      I3 => t1_p7(1),
      O => max1_return1_carry_i_8_n_0
    );
max2_return1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => max2_return1,
      CO(2) => max2_return1_carry_n_1,
      CO(1) => max2_return1_carry_n_2,
      CO(0) => max2_return1_carry_n_3,
      CYINIT => '0',
      DI(3) => max2_return1_carry_i_1_n_0,
      DI(2) => max2_return1_carry_i_2_n_0,
      DI(1) => max2_return1_carry_i_3_n_0,
      DI(0) => max2_return1_carry_i_4_n_0,
      O(3 downto 0) => NLW_max2_return1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => max2_return1_carry_i_5_n_0,
      S(2) => max2_return1_carry_i_6_n_0,
      S(1) => max2_return1_carry_i_7_n_0,
      S(0) => max2_return1_carry_i_8_n_0
    );
max2_return1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min1(6),
      I1 => t2_min2(6),
      I2 => t2_min2(7),
      I3 => t2_min1(7),
      O => max2_return1_carry_i_1_n_0
    );
max2_return1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min1(4),
      I1 => t2_min2(4),
      I2 => t2_min2(5),
      I3 => t2_min1(5),
      O => max2_return1_carry_i_2_n_0
    );
max2_return1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min1(2),
      I1 => t2_min2(2),
      I2 => t2_min2(3),
      I3 => t2_min1(3),
      O => max2_return1_carry_i_3_n_0
    );
max2_return1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min1(0),
      I1 => t2_min2(0),
      I2 => t2_min2(1),
      I3 => t2_min1(1),
      O => max2_return1_carry_i_4_n_0
    );
max2_return1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min1(6),
      I1 => t2_min2(6),
      I2 => t2_min1(7),
      I3 => t2_min2(7),
      O => max2_return1_carry_i_5_n_0
    );
max2_return1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min1(4),
      I1 => t2_min2(4),
      I2 => t2_min1(5),
      I3 => t2_min2(5),
      O => max2_return1_carry_i_6_n_0
    );
max2_return1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min1(2),
      I1 => t2_min2(2),
      I2 => t2_min1(3),
      I3 => t2_min2(3),
      O => max2_return1_carry_i_7_n_0
    );
max2_return1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min1(0),
      I1 => t2_min2(0),
      I2 => t2_min1(1),
      I3 => t2_min2(1),
      O => max2_return1_carry_i_8_n_0
    );
max2_return2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => max2_return2,
      CO(2) => max2_return2_carry_n_1,
      CO(1) => max2_return2_carry_n_2,
      CO(0) => max2_return2_carry_n_3,
      CYINIT => '0',
      DI(3) => max2_return2_carry_i_1_n_0,
      DI(2) => max2_return2_carry_i_2_n_0,
      DI(1) => max2_return2_carry_i_3_n_0,
      DI(0) => max2_return2_carry_i_4_n_0,
      O(3 downto 0) => NLW_max2_return2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => max2_return2_carry_i_5_n_0,
      S(2) => max2_return2_carry_i_6_n_0,
      S(1) => max2_return2_carry_i_7_n_0,
      S(0) => max2_return2_carry_i_8_n_0
    );
max2_return2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min2(6),
      I1 => t2_min3(6),
      I2 => t2_min3(7),
      I3 => t2_min2(7),
      O => max2_return2_carry_i_1_n_0
    );
max2_return2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min2(4),
      I1 => t2_min3(4),
      I2 => t2_min3(5),
      I3 => t2_min2(5),
      O => max2_return2_carry_i_2_n_0
    );
max2_return2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min2(2),
      I1 => t2_min3(2),
      I2 => t2_min3(3),
      I3 => t2_min2(3),
      O => max2_return2_carry_i_3_n_0
    );
max2_return2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_min2(0),
      I1 => t2_min3(0),
      I2 => t2_min3(1),
      I3 => t2_min2(1),
      O => max2_return2_carry_i_4_n_0
    );
max2_return2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min2(6),
      I1 => t2_min3(6),
      I2 => t2_min2(7),
      I3 => t2_min3(7),
      O => max2_return2_carry_i_5_n_0
    );
max2_return2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min2(4),
      I1 => t2_min3(4),
      I2 => t2_min2(5),
      I3 => t2_min3(5),
      O => max2_return2_carry_i_6_n_0
    );
max2_return2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min2(2),
      I1 => t2_min3(2),
      I2 => t2_min2(3),
      I3 => t2_min3(3),
      O => max2_return2_carry_i_7_n_0
    );
max2_return2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_min2(0),
      I1 => t2_min3(0),
      I2 => t2_min2(1),
      I3 => t2_min3(1),
      O => max2_return2_carry_i_8_n_0
    );
\max2_return2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => max2_return20_in,
      CO(2) => \max2_return2_inferred__0/i__carry_n_1\,
      CO(1) => \max2_return2_inferred__0/i__carry_n_2\,
      CO(0) => \max2_return2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__3_n_0\,
      DI(2) => \i__carry_i_2__3_n_0\,
      DI(1) => \i__carry_i_3__3_n_0\,
      DI(0) => \i__carry_i_4__3_n_0\,
      O(3 downto 0) => \NLW_max2_return2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__3_n_0\,
      S(2) => \i__carry_i_6__3_n_0\,
      S(1) => \i__carry_i_7__3_n_0\,
      S(0) => \i__carry_i_8__3_n_0\
    );
max_return1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => max_return1,
      CO(2) => max_return1_carry_n_1,
      CO(1) => max_return1_carry_n_2,
      CO(0) => max_return1_carry_n_3,
      CYINIT => '0',
      DI(3) => max_return1_carry_i_1_n_0,
      DI(2) => max_return1_carry_i_2_n_0,
      DI(1) => max_return1_carry_i_3_n_0,
      DI(0) => max_return1_carry_i_4_n_0,
      O(3 downto 0) => NLW_max_return1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => max_return1_carry_i_5_n_0,
      S(2) => max_return1_carry_i_6_n_0,
      S(1) => max_return1_carry_i_7_n_0,
      S(0) => max_return1_carry_i_8_n_0
    );
max_return1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p1(6),
      I1 => p12(6),
      I2 => t1_p1(7),
      I3 => p12(7),
      O => max_return1_carry_i_1_n_0
    );
max_return1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p1(4),
      I1 => p12(4),
      I2 => t1_p1(5),
      I3 => p12(5),
      O => max_return1_carry_i_2_n_0
    );
max_return1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p1(2),
      I1 => p12(2),
      I2 => t1_p1(3),
      I3 => p12(3),
      O => max_return1_carry_i_3_n_0
    );
max_return1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p1(0),
      I1 => p12(0),
      I2 => t1_p1(1),
      I3 => p12(1),
      O => max_return1_carry_i_4_n_0
    );
max_return1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(6),
      I1 => t1_p1(6),
      I2 => p12(7),
      I3 => t1_p1(7),
      O => max_return1_carry_i_5_n_0
    );
max_return1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(4),
      I1 => t1_p1(4),
      I2 => p12(5),
      I3 => t1_p1(5),
      O => max_return1_carry_i_6_n_0
    );
max_return1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(2),
      I1 => t1_p1(2),
      I2 => p12(3),
      I3 => t1_p1(3),
      O => max_return1_carry_i_7_n_0
    );
max_return1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(0),
      I1 => t1_p1(0),
      I2 => p12(1),
      I3 => t1_p1(1),
      O => max_return1_carry_i_8_n_0
    );
med0_return2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med0_return2,
      CO(2) => med0_return2_carry_n_1,
      CO(1) => med0_return2_carry_n_2,
      CO(0) => med0_return2_carry_n_3,
      CYINIT => '0',
      DI(3) => med0_return2_carry_i_1_n_0,
      DI(2) => med0_return2_carry_i_2_n_0,
      DI(1) => med0_return2_carry_i_3_n_0,
      DI(0) => med0_return2_carry_i_4_n_0,
      O(3 downto 0) => NLW_med0_return2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med0_return2_carry_i_5_n_0,
      S(2) => med0_return2_carry_i_6_n_0,
      S(1) => med0_return2_carry_i_7_n_0,
      S(0) => med0_return2_carry_i_8_n_0
    );
med0_return2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p32(6),
      I1 => p34(6),
      I2 => p32(7),
      I3 => p34(7),
      O => med0_return2_carry_i_1_n_0
    );
med0_return2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p32(4),
      I1 => p34(4),
      I2 => p32(5),
      I3 => p34(5),
      O => med0_return2_carry_i_2_n_0
    );
med0_return2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p32(2),
      I1 => p34(2),
      I2 => p32(3),
      I3 => p34(3),
      O => med0_return2_carry_i_3_n_0
    );
med0_return2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p32(0),
      I1 => p34(0),
      I2 => p32(1),
      I3 => p34(1),
      O => med0_return2_carry_i_4_n_0
    );
med0_return2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(6),
      I1 => p34(6),
      I2 => p32(7),
      I3 => p34(7),
      O => med0_return2_carry_i_5_n_0
    );
med0_return2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(4),
      I1 => p34(4),
      I2 => p32(5),
      I3 => p34(5),
      O => med0_return2_carry_i_6_n_0
    );
med0_return2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(2),
      I1 => p34(2),
      I2 => p32(3),
      I3 => p34(3),
      O => med0_return2_carry_i_7_n_0
    );
med0_return2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(0),
      I1 => p34(0),
      I2 => p32(1),
      I3 => p34(1),
      O => med0_return2_carry_i_8_n_0
    );
med0_return3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med0_return3,
      CO(2) => med0_return3_carry_n_1,
      CO(1) => med0_return3_carry_n_2,
      CO(0) => med0_return3_carry_n_3,
      CYINIT => '0',
      DI(3) => med0_return3_carry_i_1_n_0,
      DI(2) => med0_return3_carry_i_2_n_0,
      DI(1) => med0_return3_carry_i_3_n_0,
      DI(0) => med0_return3_carry_i_4_n_0,
      O(3 downto 0) => NLW_med0_return3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med0_return3_carry_i_5_n_0,
      S(2) => med0_return3_carry_i_6_n_0,
      S(1) => med0_return3_carry_i_7_n_0,
      S(0) => med0_return3_carry_i_8_n_0
    );
med0_return3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_center_reg_n_0_[6]\,
      I1 => p34(6),
      I2 => \t3_center_reg_n_0_[7]\,
      I3 => p34(7),
      O => med0_return3_carry_i_1_n_0
    );
med0_return3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_center_reg_n_0_[4]\,
      I1 => p34(4),
      I2 => \t3_center_reg_n_0_[5]\,
      I3 => p34(5),
      O => med0_return3_carry_i_2_n_0
    );
med0_return3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_center_reg_n_0_[2]\,
      I1 => p34(2),
      I2 => \t3_center_reg_n_0_[3]\,
      I3 => p34(3),
      O => med0_return3_carry_i_3_n_0
    );
med0_return3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_center_reg_n_0_[0]\,
      I1 => p34(0),
      I2 => \t3_center_reg_n_0_[1]\,
      I3 => p34(1),
      O => med0_return3_carry_i_4_n_0
    );
med0_return3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p34(6),
      I1 => \t3_center_reg_n_0_[6]\,
      I2 => p34(7),
      I3 => \t3_center_reg_n_0_[7]\,
      O => med0_return3_carry_i_5_n_0
    );
med0_return3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p34(4),
      I1 => \t3_center_reg_n_0_[4]\,
      I2 => p34(5),
      I3 => \t3_center_reg_n_0_[5]\,
      O => med0_return3_carry_i_6_n_0
    );
med0_return3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p34(2),
      I1 => \t3_center_reg_n_0_[2]\,
      I2 => p34(3),
      I3 => \t3_center_reg_n_0_[3]\,
      O => med0_return3_carry_i_7_n_0
    );
med0_return3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p34(0),
      I1 => \t3_center_reg_n_0_[0]\,
      I2 => p34(1),
      I3 => \t3_center_reg_n_0_[1]\,
      O => med0_return3_carry_i_8_n_0
    );
med1_return2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med1_return2,
      CO(2) => med1_return2_carry_n_1,
      CO(1) => med1_return2_carry_n_2,
      CO(0) => med1_return2_carry_n_3,
      CYINIT => '0',
      DI(3) => med1_return2_carry_i_1_n_0,
      DI(2) => med1_return2_carry_i_2_n_0,
      DI(1) => med1_return2_carry_i_3_n_0,
      DI(0) => med1_return2_carry_i_4_n_0,
      O(3 downto 0) => NLW_med1_return2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med1_return2_carry_i_5_n_0,
      S(2) => med1_return2_carry_i_6_n_0,
      S(1) => med1_return2_carry_i_7_n_0,
      S(0) => med1_return2_carry_i_8_n_0
    );
med1_return2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p52(6),
      I1 => t1_p9(6),
      I2 => p52(7),
      I3 => t1_p9(7),
      O => med1_return2_carry_i_1_n_0
    );
med1_return2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p52(4),
      I1 => t1_p9(4),
      I2 => p52(5),
      I3 => t1_p9(5),
      O => med1_return2_carry_i_2_n_0
    );
med1_return2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p52(2),
      I1 => t1_p9(2),
      I2 => p52(3),
      I3 => t1_p9(3),
      O => med1_return2_carry_i_3_n_0
    );
med1_return2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p52(0),
      I1 => t1_p9(0),
      I2 => p52(1),
      I3 => t1_p9(1),
      O => med1_return2_carry_i_4_n_0
    );
med1_return2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(6),
      I1 => t1_p9(6),
      I2 => p52(7),
      I3 => t1_p9(7),
      O => med1_return2_carry_i_5_n_0
    );
med1_return2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(4),
      I1 => t1_p9(4),
      I2 => p52(5),
      I3 => t1_p9(5),
      O => med1_return2_carry_i_6_n_0
    );
med1_return2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(2),
      I1 => t1_p9(2),
      I2 => p52(3),
      I3 => t1_p9(3),
      O => med1_return2_carry_i_7_n_0
    );
med1_return2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(0),
      I1 => t1_p9(0),
      I2 => p52(1),
      I3 => t1_p9(1),
      O => med1_return2_carry_i_8_n_0
    );
med1_return3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med1_return3,
      CO(2) => med1_return3_carry_n_1,
      CO(1) => med1_return3_carry_n_2,
      CO(0) => med1_return3_carry_n_3,
      CYINIT => '0',
      DI(3) => med1_return3_carry_i_1_n_0,
      DI(2) => med1_return3_carry_i_2_n_0,
      DI(1) => med1_return3_carry_i_3_n_0,
      DI(0) => med1_return3_carry_i_4_n_0,
      O(3 downto 0) => NLW_med1_return3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med1_return3_carry_i_5_n_0,
      S(2) => med1_return3_carry_i_6_n_0,
      S(1) => med1_return3_carry_i_7_n_0,
      S(0) => med1_return3_carry_i_8_n_0
    );
med1_return3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p7(6),
      I1 => t1_p9(6),
      I2 => t1_p7(7),
      I3 => t1_p9(7),
      O => med1_return3_carry_i_1_n_0
    );
med1_return3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p7(4),
      I1 => t1_p9(4),
      I2 => t1_p7(5),
      I3 => t1_p9(5),
      O => med1_return3_carry_i_2_n_0
    );
med1_return3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p7(2),
      I1 => t1_p9(2),
      I2 => t1_p7(3),
      I3 => t1_p9(3),
      O => med1_return3_carry_i_3_n_0
    );
med1_return3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p7(0),
      I1 => t1_p9(0),
      I2 => t1_p7(1),
      I3 => t1_p9(1),
      O => med1_return3_carry_i_4_n_0
    );
med1_return3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p9(6),
      I1 => t1_p7(6),
      I2 => t1_p9(7),
      I3 => t1_p7(7),
      O => med1_return3_carry_i_5_n_0
    );
med1_return3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p9(4),
      I1 => t1_p7(4),
      I2 => t1_p9(5),
      I3 => t1_p7(5),
      O => med1_return3_carry_i_6_n_0
    );
med1_return3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p9(2),
      I1 => t1_p7(2),
      I2 => t1_p9(3),
      I3 => t1_p7(3),
      O => med1_return3_carry_i_7_n_0
    );
med1_return3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p9(0),
      I1 => t1_p7(0),
      I2 => t1_p9(1),
      I3 => t1_p7(1),
      O => med1_return3_carry_i_8_n_0
    );
med2_return1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med2_return1,
      CO(2) => med2_return1_carry_n_1,
      CO(1) => med2_return1_carry_n_2,
      CO(0) => med2_return1_carry_n_3,
      CYINIT => '0',
      DI(3) => med2_return1_carry_i_1_n_0,
      DI(2) => med2_return1_carry_i_2_n_0,
      DI(1) => med2_return1_carry_i_3_n_0,
      DI(0) => med2_return1_carry_i_4_n_0,
      O(3 downto 0) => NLW_med2_return1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med2_return1_carry_i_5_n_0,
      S(2) => med2_return1_carry_i_6_n_0,
      S(1) => med2_return1_carry_i_7_n_0,
      S(0) => med2_return1_carry_i_8_n_0
    );
med2_return1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2_med2(7),
      I1 => t2_med1(7),
      I2 => t2_med2(6),
      I3 => t2_med1(6),
      O => med2_return1_carry_i_1_n_0
    );
med2_return1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2_med2(5),
      I1 => t2_med1(5),
      I2 => t2_med2(4),
      I3 => t2_med1(4),
      O => med2_return1_carry_i_2_n_0
    );
med2_return1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2_med2(3),
      I1 => t2_med1(3),
      I2 => t2_med2(2),
      I3 => t2_med1(2),
      O => med2_return1_carry_i_3_n_0
    );
med2_return1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2_med2(1),
      I1 => t2_med1(1),
      I2 => t2_med2(0),
      I3 => t2_med1(0),
      O => med2_return1_carry_i_4_n_0
    );
med2_return1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med2(7),
      I1 => t2_med1(7),
      I2 => t2_med2(6),
      I3 => t2_med1(6),
      O => med2_return1_carry_i_5_n_0
    );
med2_return1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med2(5),
      I1 => t2_med1(5),
      I2 => t2_med2(4),
      I3 => t2_med1(4),
      O => med2_return1_carry_i_6_n_0
    );
med2_return1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med2(3),
      I1 => t2_med1(3),
      I2 => t2_med2(2),
      I3 => t2_med1(2),
      O => med2_return1_carry_i_7_n_0
    );
med2_return1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med2(1),
      I1 => t2_med1(1),
      I2 => t2_med2(0),
      I3 => t2_med1(0),
      O => med2_return1_carry_i_8_n_0
    );
med2_return2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med2_return2,
      CO(2) => med2_return2_carry_n_1,
      CO(1) => med2_return2_carry_n_2,
      CO(0) => med2_return2_carry_n_3,
      CYINIT => '0',
      DI(3) => med2_return2_carry_i_1_n_0,
      DI(2) => med2_return2_carry_i_2_n_0,
      DI(1) => med2_return2_carry_i_3_n_0,
      DI(0) => med2_return2_carry_i_4_n_0,
      O(3 downto 0) => NLW_med2_return2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med2_return2_carry_i_5_n_0,
      S(2) => med2_return2_carry_i_6_n_0,
      S(1) => med2_return2_carry_i_7_n_0,
      S(0) => med2_return2_carry_i_8_n_0
    );
med2_return2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med2(6),
      I1 => t2_med3(6),
      I2 => t2_med2(7),
      I3 => t2_med3(7),
      O => med2_return2_carry_i_1_n_0
    );
med2_return2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med2(4),
      I1 => t2_med3(4),
      I2 => t2_med2(5),
      I3 => t2_med3(5),
      O => med2_return2_carry_i_2_n_0
    );
med2_return2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med2(2),
      I1 => t2_med3(2),
      I2 => t2_med2(3),
      I3 => t2_med3(3),
      O => med2_return2_carry_i_3_n_0
    );
med2_return2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med2(0),
      I1 => t2_med3(0),
      I2 => t2_med2(1),
      I3 => t2_med3(1),
      O => med2_return2_carry_i_4_n_0
    );
med2_return2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med3(6),
      I1 => t2_med2(6),
      I2 => t2_med3(7),
      I3 => t2_med2(7),
      O => med2_return2_carry_i_5_n_0
    );
med2_return2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med3(4),
      I1 => t2_med2(4),
      I2 => t2_med3(5),
      I3 => t2_med2(5),
      O => med2_return2_carry_i_6_n_0
    );
med2_return2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med3(2),
      I1 => t2_med2(2),
      I2 => t2_med3(3),
      I3 => t2_med2(3),
      O => med2_return2_carry_i_7_n_0
    );
med2_return2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med3(0),
      I1 => t2_med2(0),
      I2 => t2_med3(1),
      I3 => t2_med2(1),
      O => med2_return2_carry_i_8_n_0
    );
\med2_return2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med2_return21_in,
      CO(2) => \med2_return2_inferred__0/i__carry_n_1\,
      CO(1) => \med2_return2_inferred__0/i__carry_n_2\,
      CO(0) => \med2_return2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__7_n_0\,
      DI(2) => \i__carry_i_2__7_n_0\,
      DI(1) => \i__carry_i_3__7_n_0\,
      DI(0) => \i__carry_i_4__7_n_0\,
      O(3 downto 0) => \NLW_med2_return2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__7_n_0\,
      S(2) => \i__carry_i_6__7_n_0\,
      S(1) => \i__carry_i_7__7_n_0\,
      S(0) => \i__carry_i_8__7_n_0\
    );
med2_return3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med2_return3,
      CO(2) => med2_return3_carry_n_1,
      CO(1) => med2_return3_carry_n_2,
      CO(0) => med2_return3_carry_n_3,
      CYINIT => '0',
      DI(3) => med2_return3_carry_i_1_n_0,
      DI(2) => med2_return3_carry_i_2_n_0,
      DI(1) => med2_return3_carry_i_3_n_0,
      DI(0) => med2_return3_carry_i_4_n_0,
      O(3 downto 0) => NLW_med2_return3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med2_return3_carry_i_5_n_0,
      S(2) => med2_return3_carry_i_6_n_0,
      S(1) => med2_return3_carry_i_7_n_0,
      S(0) => med2_return3_carry_i_8_n_0
    );
med2_return3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med1(6),
      I1 => t2_med3(6),
      I2 => t2_med1(7),
      I3 => t2_med3(7),
      O => med2_return3_carry_i_1_n_0
    );
med2_return3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med1(4),
      I1 => t2_med3(4),
      I2 => t2_med1(5),
      I3 => t2_med3(5),
      O => med2_return3_carry_i_2_n_0
    );
med2_return3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med1(2),
      I1 => t2_med3(2),
      I2 => t2_med1(3),
      I3 => t2_med3(3),
      O => med2_return3_carry_i_3_n_0
    );
med2_return3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t2_med1(0),
      I1 => t2_med3(0),
      I2 => t2_med1(1),
      I3 => t2_med3(1),
      O => med2_return3_carry_i_4_n_0
    );
med2_return3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med1(6),
      I1 => t2_med3(6),
      I2 => t2_med1(7),
      I3 => t2_med3(7),
      O => med2_return3_carry_i_5_n_0
    );
med2_return3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med1(4),
      I1 => t2_med3(4),
      I2 => t2_med1(5),
      I3 => t2_med3(5),
      O => med2_return3_carry_i_6_n_0
    );
med2_return3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med1(2),
      I1 => t2_med3(2),
      I2 => t2_med1(3),
      I3 => t2_med3(3),
      O => med2_return3_carry_i_7_n_0
    );
med2_return3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_med1(0),
      I1 => t2_med3(0),
      I2 => t2_med1(1),
      I3 => t2_med3(1),
      O => med2_return3_carry_i_8_n_0
    );
\med2_return3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med2_return30_in,
      CO(2) => \med2_return3_inferred__0/i__carry_n_1\,
      CO(1) => \med2_return3_inferred__0/i__carry_n_2\,
      CO(0) => \med2_return3_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__6_n_0\,
      DI(2) => \i__carry_i_2__6_n_0\,
      DI(1) => \i__carry_i_3__6_n_0\,
      DI(0) => \i__carry_i_4__6_n_0\,
      O(3 downto 0) => \NLW_med2_return3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__6_n_0\,
      S(2) => \i__carry_i_6__6_n_0\,
      S(1) => \i__carry_i_7__6_n_0\,
      S(0) => \i__carry_i_8__6_n_0\
    );
med3_return1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med3_return1,
      CO(2) => med3_return1_carry_n_1,
      CO(1) => med3_return1_carry_n_2,
      CO(0) => med3_return1_carry_n_3,
      CYINIT => '0',
      DI(3) => med3_return1_carry_i_1_n_0,
      DI(2) => med3_return1_carry_i_2_n_0,
      DI(1) => med3_return1_carry_i_3_n_0,
      DI(0) => med3_return1_carry_i_4_n_0,
      O(3 downto 0) => NLW_med3_return1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med3_return1_carry_i_5_n_0,
      S(2) => med3_return1_carry_i_6_n_0,
      S(1) => med3_return1_carry_i_7_n_0,
      S(0) => med3_return1_carry_i_8_n_0
    );
med3_return1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3_med_of_med(7),
      I1 => \t3_max_of_min_reg_n_0_[7]\,
      I2 => t3_med_of_med(6),
      I3 => \t3_max_of_min_reg_n_0_[6]\,
      O => med3_return1_carry_i_1_n_0
    );
med3_return1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3_med_of_med(5),
      I1 => \t3_max_of_min_reg_n_0_[5]\,
      I2 => t3_med_of_med(4),
      I3 => \t3_max_of_min_reg_n_0_[4]\,
      O => med3_return1_carry_i_2_n_0
    );
med3_return1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3_med_of_med(3),
      I1 => \t3_max_of_min_reg_n_0_[3]\,
      I2 => t3_med_of_med(2),
      I3 => \t3_max_of_min_reg_n_0_[2]\,
      O => med3_return1_carry_i_3_n_0
    );
med3_return1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3_med_of_med(1),
      I1 => \t3_max_of_min_reg_n_0_[1]\,
      I2 => t3_med_of_med(0),
      I3 => \t3_max_of_min_reg_n_0_[0]\,
      O => med3_return1_carry_i_4_n_0
    );
med3_return1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_med_of_med(7),
      I1 => \t3_max_of_min_reg_n_0_[7]\,
      I2 => t3_med_of_med(6),
      I3 => \t3_max_of_min_reg_n_0_[6]\,
      O => med3_return1_carry_i_5_n_0
    );
med3_return1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_med_of_med(5),
      I1 => \t3_max_of_min_reg_n_0_[5]\,
      I2 => t3_med_of_med(4),
      I3 => \t3_max_of_min_reg_n_0_[4]\,
      O => med3_return1_carry_i_6_n_0
    );
med3_return1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_med_of_med(3),
      I1 => \t3_max_of_min_reg_n_0_[3]\,
      I2 => t3_med_of_med(2),
      I3 => \t3_max_of_min_reg_n_0_[2]\,
      O => med3_return1_carry_i_7_n_0
    );
med3_return1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_med_of_med(1),
      I1 => \t3_max_of_min_reg_n_0_[1]\,
      I2 => t3_med_of_med(0),
      I3 => \t3_max_of_min_reg_n_0_[0]\,
      O => med3_return1_carry_i_8_n_0
    );
med3_return2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med3_return2,
      CO(2) => med3_return2_carry_n_1,
      CO(1) => med3_return2_carry_n_2,
      CO(0) => med3_return2_carry_n_3,
      CYINIT => '0',
      DI(3) => med3_return2_carry_i_1_n_0,
      DI(2) => med3_return2_carry_i_2_n_0,
      DI(1) => med3_return2_carry_i_3_n_0,
      DI(0) => med3_return2_carry_i_4_n_0,
      O(3 downto 0) => NLW_med3_return2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med3_return2_carry_i_5_n_0,
      S(2) => med3_return2_carry_i_6_n_0,
      S(1) => med3_return2_carry_i_7_n_0,
      S(0) => med3_return2_carry_i_8_n_0
    );
med3_return2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_med_of_med(6),
      I1 => t3_min_of_max(6),
      I2 => t3_med_of_med(7),
      I3 => t3_min_of_max(7),
      O => med3_return2_carry_i_1_n_0
    );
med3_return2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_med_of_med(4),
      I1 => t3_min_of_max(4),
      I2 => t3_med_of_med(5),
      I3 => t3_min_of_max(5),
      O => med3_return2_carry_i_2_n_0
    );
med3_return2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_med_of_med(2),
      I1 => t3_min_of_max(2),
      I2 => t3_med_of_med(3),
      I3 => t3_min_of_max(3),
      O => med3_return2_carry_i_3_n_0
    );
med3_return2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t3_med_of_med(0),
      I1 => t3_min_of_max(0),
      I2 => t3_med_of_med(1),
      I3 => t3_min_of_max(1),
      O => med3_return2_carry_i_4_n_0
    );
med3_return2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_min_of_max(6),
      I1 => t3_med_of_med(6),
      I2 => t3_min_of_max(7),
      I3 => t3_med_of_med(7),
      O => med3_return2_carry_i_5_n_0
    );
med3_return2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_min_of_max(4),
      I1 => t3_med_of_med(4),
      I2 => t3_min_of_max(5),
      I3 => t3_med_of_med(5),
      O => med3_return2_carry_i_6_n_0
    );
med3_return2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_min_of_max(2),
      I1 => t3_med_of_med(2),
      I2 => t3_min_of_max(3),
      I3 => t3_med_of_med(3),
      O => med3_return2_carry_i_7_n_0
    );
med3_return2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3_min_of_max(0),
      I1 => t3_med_of_med(0),
      I2 => t3_min_of_max(1),
      I3 => t3_med_of_med(1),
      O => med3_return2_carry_i_8_n_0
    );
\med3_return2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med3_return21_in,
      CO(2) => \med3_return2_inferred__0/i__carry_n_1\,
      CO(1) => \med3_return2_inferred__0/i__carry_n_2\,
      CO(0) => \med3_return2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__5_n_0\,
      DI(2) => \i__carry_i_2__5_n_0\,
      DI(1) => \i__carry_i_3__5_n_0\,
      DI(0) => \i__carry_i_4__5_n_0\,
      O(3 downto 0) => \NLW_med3_return2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__5_n_0\,
      S(2) => \i__carry_i_6__5_n_0\,
      S(1) => \i__carry_i_7__5_n_0\,
      S(0) => \i__carry_i_8__5_n_0\
    );
med3_return3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med3_return3,
      CO(2) => med3_return3_carry_n_1,
      CO(1) => med3_return3_carry_n_2,
      CO(0) => med3_return3_carry_n_3,
      CYINIT => '0',
      DI(3) => med3_return3_carry_i_1_n_0,
      DI(2) => med3_return3_carry_i_2_n_0,
      DI(1) => med3_return3_carry_i_3_n_0,
      DI(0) => med3_return3_carry_i_4_n_0,
      O(3 downto 0) => NLW_med3_return3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med3_return3_carry_i_5_n_0,
      S(2) => med3_return3_carry_i_6_n_0,
      S(1) => med3_return3_carry_i_7_n_0,
      S(0) => med3_return3_carry_i_8_n_0
    );
med3_return3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[6]\,
      I1 => t3_min_of_max(6),
      I2 => \t3_max_of_min_reg_n_0_[7]\,
      I3 => t3_min_of_max(7),
      O => med3_return3_carry_i_1_n_0
    );
med3_return3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[4]\,
      I1 => t3_min_of_max(4),
      I2 => \t3_max_of_min_reg_n_0_[5]\,
      I3 => t3_min_of_max(5),
      O => med3_return3_carry_i_2_n_0
    );
med3_return3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[2]\,
      I1 => t3_min_of_max(2),
      I2 => \t3_max_of_min_reg_n_0_[3]\,
      I3 => t3_min_of_max(3),
      O => med3_return3_carry_i_3_n_0
    );
med3_return3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[0]\,
      I1 => t3_min_of_max(0),
      I2 => \t3_max_of_min_reg_n_0_[1]\,
      I3 => t3_min_of_max(1),
      O => med3_return3_carry_i_4_n_0
    );
med3_return3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[6]\,
      I1 => t3_min_of_max(6),
      I2 => \t3_max_of_min_reg_n_0_[7]\,
      I3 => t3_min_of_max(7),
      O => med3_return3_carry_i_5_n_0
    );
med3_return3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[4]\,
      I1 => t3_min_of_max(4),
      I2 => \t3_max_of_min_reg_n_0_[5]\,
      I3 => t3_min_of_max(5),
      O => med3_return3_carry_i_6_n_0
    );
med3_return3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[2]\,
      I1 => t3_min_of_max(2),
      I2 => \t3_max_of_min_reg_n_0_[3]\,
      I3 => t3_min_of_max(3),
      O => med3_return3_carry_i_7_n_0
    );
med3_return3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \t3_max_of_min_reg_n_0_[0]\,
      I1 => t3_min_of_max(0),
      I2 => \t3_max_of_min_reg_n_0_[1]\,
      I3 => t3_min_of_max(1),
      O => med3_return3_carry_i_8_n_0
    );
\med3_return3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med3_return30_in,
      CO(2) => \med3_return3_inferred__0/i__carry_n_1\,
      CO(1) => \med3_return3_inferred__0/i__carry_n_2\,
      CO(0) => \med3_return3_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__4_n_0\,
      DI(2) => \i__carry_i_2__4_n_0\,
      DI(1) => \i__carry_i_3__4_n_0\,
      DI(0) => \i__carry_i_4__4_n_0\,
      O(3 downto 0) => \NLW_med3_return3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__4_n_0\,
      S(2) => \i__carry_i_6__4_n_0\,
      S(1) => \i__carry_i_7__4_n_0\,
      S(0) => \i__carry_i_8__4_n_0\
    );
med_return2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med_return2,
      CO(2) => med_return2_carry_n_1,
      CO(1) => med_return2_carry_n_2,
      CO(0) => med_return2_carry_n_3,
      CYINIT => '0',
      DI(3) => med_return2_carry_i_1_n_0,
      DI(2) => med_return2_carry_i_2_n_0,
      DI(1) => med_return2_carry_i_3_n_0,
      DI(0) => med_return2_carry_i_4_n_0,
      O(3 downto 0) => NLW_med_return2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med_return2_carry_i_5_n_0,
      S(2) => med_return2_carry_i_6_n_0,
      S(1) => med_return2_carry_i_7_n_0,
      S(0) => med_return2_carry_i_8_n_0
    );
med_return2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p12(6),
      I1 => t1_p3(6),
      I2 => p12(7),
      I3 => t1_p3(7),
      O => med_return2_carry_i_1_n_0
    );
med_return2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p12(4),
      I1 => t1_p3(4),
      I2 => p12(5),
      I3 => t1_p3(5),
      O => med_return2_carry_i_2_n_0
    );
med_return2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p12(2),
      I1 => t1_p3(2),
      I2 => p12(3),
      I3 => t1_p3(3),
      O => med_return2_carry_i_3_n_0
    );
med_return2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p12(0),
      I1 => t1_p3(0),
      I2 => p12(1),
      I3 => t1_p3(1),
      O => med_return2_carry_i_4_n_0
    );
med_return2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(6),
      I1 => t1_p3(6),
      I2 => p12(7),
      I3 => t1_p3(7),
      O => med_return2_carry_i_5_n_0
    );
med_return2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(4),
      I1 => t1_p3(4),
      I2 => p12(5),
      I3 => t1_p3(5),
      O => med_return2_carry_i_6_n_0
    );
med_return2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(2),
      I1 => t1_p3(2),
      I2 => p12(3),
      I3 => t1_p3(3),
      O => med_return2_carry_i_7_n_0
    );
med_return2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(0),
      I1 => t1_p3(0),
      I2 => p12(1),
      I3 => t1_p3(1),
      O => med_return2_carry_i_8_n_0
    );
med_return3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => med_return3,
      CO(2) => med_return3_carry_n_1,
      CO(1) => med_return3_carry_n_2,
      CO(0) => med_return3_carry_n_3,
      CYINIT => '0',
      DI(3) => med_return3_carry_i_1_n_0,
      DI(2) => med_return3_carry_i_2_n_0,
      DI(1) => med_return3_carry_i_3_n_0,
      DI(0) => med_return3_carry_i_4_n_0,
      O(3 downto 0) => NLW_med_return3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => med_return3_carry_i_5_n_0,
      S(2) => med_return3_carry_i_6_n_0,
      S(1) => med_return3_carry_i_7_n_0,
      S(0) => med_return3_carry_i_8_n_0
    );
med_return3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p1(6),
      I1 => t1_p3(6),
      I2 => t1_p1(7),
      I3 => t1_p3(7),
      O => med_return3_carry_i_1_n_0
    );
med_return3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p1(4),
      I1 => t1_p3(4),
      I2 => t1_p1(5),
      I3 => t1_p3(5),
      O => med_return3_carry_i_2_n_0
    );
med_return3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p1(2),
      I1 => t1_p3(2),
      I2 => t1_p1(3),
      I3 => t1_p3(3),
      O => med_return3_carry_i_3_n_0
    );
med_return3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p1(0),
      I1 => t1_p3(0),
      I2 => t1_p1(1),
      I3 => t1_p3(1),
      O => med_return3_carry_i_4_n_0
    );
med_return3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p3(6),
      I1 => t1_p1(6),
      I2 => t1_p3(7),
      I3 => t1_p1(7),
      O => med_return3_carry_i_5_n_0
    );
med_return3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p3(4),
      I1 => t1_p1(4),
      I2 => t1_p3(5),
      I3 => t1_p1(5),
      O => med_return3_carry_i_6_n_0
    );
med_return3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p3(2),
      I1 => t1_p1(2),
      I2 => t1_p3(3),
      I3 => t1_p1(3),
      O => med_return3_carry_i_7_n_0
    );
med_return3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1_p3(0),
      I1 => t1_p1(0),
      I2 => t1_p3(1),
      I3 => t1_p1(1),
      O => med_return3_carry_i_8_n_0
    );
min0_return1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => min0_return1_carry_n_0,
      CO(2) => min0_return1_carry_n_1,
      CO(1) => min0_return1_carry_n_2,
      CO(0) => min0_return1_carry_n_3,
      CYINIT => '0',
      DI(3) => min0_return1_carry_i_1_n_0,
      DI(2) => min0_return1_carry_i_2_n_0,
      DI(1) => min0_return1_carry_i_3_n_0,
      DI(0) => min0_return1_carry_i_4_n_0,
      O(3 downto 0) => NLW_min0_return1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => min0_return1_carry_i_5_n_0,
      S(2) => min0_return1_carry_i_6_n_0,
      S(1) => min0_return1_carry_i_7_n_0,
      S(0) => min0_return1_carry_i_8_n_0
    );
min0_return1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p32(6),
      I1 => \t3_center_reg_n_0_[6]\,
      I2 => p32(7),
      I3 => \t3_center_reg_n_0_[7]\,
      O => min0_return1_carry_i_1_n_0
    );
min0_return1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p32(4),
      I1 => \t3_center_reg_n_0_[4]\,
      I2 => p32(5),
      I3 => \t3_center_reg_n_0_[5]\,
      O => min0_return1_carry_i_2_n_0
    );
min0_return1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p32(2),
      I1 => \t3_center_reg_n_0_[2]\,
      I2 => p32(3),
      I3 => \t3_center_reg_n_0_[3]\,
      O => min0_return1_carry_i_3_n_0
    );
min0_return1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p32(0),
      I1 => \t3_center_reg_n_0_[0]\,
      I2 => p32(1),
      I3 => \t3_center_reg_n_0_[1]\,
      O => min0_return1_carry_i_4_n_0
    );
min0_return1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(6),
      I1 => \t3_center_reg_n_0_[6]\,
      I2 => p32(7),
      I3 => \t3_center_reg_n_0_[7]\,
      O => min0_return1_carry_i_5_n_0
    );
min0_return1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(4),
      I1 => \t3_center_reg_n_0_[4]\,
      I2 => p32(5),
      I3 => \t3_center_reg_n_0_[5]\,
      O => min0_return1_carry_i_6_n_0
    );
min0_return1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(2),
      I1 => \t3_center_reg_n_0_[2]\,
      I2 => p32(3),
      I3 => \t3_center_reg_n_0_[3]\,
      O => min0_return1_carry_i_7_n_0
    );
min0_return1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(0),
      I1 => \t3_center_reg_n_0_[0]\,
      I2 => p32(1),
      I3 => \t3_center_reg_n_0_[1]\,
      O => min0_return1_carry_i_8_n_0
    );
min0_return2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => min0_return2_carry_n_0,
      CO(2) => min0_return2_carry_n_1,
      CO(1) => min0_return2_carry_n_2,
      CO(0) => min0_return2_carry_n_3,
      CYINIT => '0',
      DI(3) => min0_return2_carry_i_1_n_0,
      DI(2) => min0_return2_carry_i_2_n_0,
      DI(1) => min0_return2_carry_i_3_n_0,
      DI(0) => min0_return2_carry_i_4_n_0,
      O(3 downto 0) => NLW_min0_return2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => min0_return2_carry_i_5_n_0,
      S(2) => min0_return2_carry_i_6_n_0,
      S(1) => min0_return2_carry_i_7_n_0,
      S(0) => min0_return2_carry_i_8_n_0
    );
min0_return2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p34(6),
      I1 => p32(6),
      I2 => p34(7),
      I3 => p32(7),
      O => min0_return2_carry_i_1_n_0
    );
min0_return2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p34(4),
      I1 => p32(4),
      I2 => p34(5),
      I3 => p32(5),
      O => min0_return2_carry_i_2_n_0
    );
min0_return2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p34(2),
      I1 => p32(2),
      I2 => p34(3),
      I3 => p32(3),
      O => min0_return2_carry_i_3_n_0
    );
min0_return2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p34(0),
      I1 => p32(0),
      I2 => p34(1),
      I3 => p32(1),
      O => min0_return2_carry_i_4_n_0
    );
min0_return2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(6),
      I1 => p34(6),
      I2 => p32(7),
      I3 => p34(7),
      O => min0_return2_carry_i_5_n_0
    );
min0_return2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(4),
      I1 => p34(4),
      I2 => p32(5),
      I3 => p34(5),
      O => min0_return2_carry_i_6_n_0
    );
min0_return2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(2),
      I1 => p34(2),
      I2 => p32(3),
      I3 => p34(3),
      O => min0_return2_carry_i_7_n_0
    );
min0_return2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p32(0),
      I1 => p34(0),
      I2 => p32(1),
      I3 => p34(1),
      O => min0_return2_carry_i_8_n_0
    );
\min0_return2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \min0_return2_inferred__0/i__carry_n_0\,
      CO(2) => \min0_return2_inferred__0/i__carry_n_1\,
      CO(1) => \min0_return2_inferred__0/i__carry_n_2\,
      CO(0) => \min0_return2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_min0_return2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
min1_return1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_2_in,
      CO(2) => min1_return1_carry_n_1,
      CO(1) => min1_return1_carry_n_2,
      CO(0) => min1_return1_carry_n_3,
      CYINIT => '0',
      DI(3) => min1_return1_carry_i_1_n_0,
      DI(2) => min1_return1_carry_i_2_n_0,
      DI(1) => min1_return1_carry_i_3_n_0,
      DI(0) => min1_return1_carry_i_4_n_0,
      O(3 downto 0) => NLW_min1_return1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => min1_return1_carry_i_5_n_0,
      S(2) => min1_return1_carry_i_6_n_0,
      S(1) => min1_return1_carry_i_7_n_0,
      S(0) => min1_return1_carry_i_8_n_0
    );
min1_return1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p52(6),
      I1 => t1_p7(6),
      I2 => p52(7),
      I3 => t1_p7(7),
      O => min1_return1_carry_i_1_n_0
    );
min1_return1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p52(4),
      I1 => t1_p7(4),
      I2 => p52(5),
      I3 => t1_p7(5),
      O => min1_return1_carry_i_2_n_0
    );
min1_return1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p52(2),
      I1 => t1_p7(2),
      I2 => p52(3),
      I3 => t1_p7(3),
      O => min1_return1_carry_i_3_n_0
    );
min1_return1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p52(0),
      I1 => t1_p7(0),
      I2 => p52(1),
      I3 => t1_p7(1),
      O => min1_return1_carry_i_4_n_0
    );
min1_return1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(6),
      I1 => t1_p7(6),
      I2 => p52(7),
      I3 => t1_p7(7),
      O => min1_return1_carry_i_5_n_0
    );
min1_return1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(4),
      I1 => t1_p7(4),
      I2 => p52(5),
      I3 => t1_p7(5),
      O => min1_return1_carry_i_6_n_0
    );
min1_return1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(2),
      I1 => t1_p7(2),
      I2 => p52(3),
      I3 => t1_p7(3),
      O => min1_return1_carry_i_7_n_0
    );
min1_return1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(0),
      I1 => t1_p7(0),
      I2 => p52(1),
      I3 => t1_p7(1),
      O => min1_return1_carry_i_8_n_0
    );
min1_return2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_1_in,
      CO(2) => min1_return2_carry_n_1,
      CO(1) => min1_return2_carry_n_2,
      CO(0) => min1_return2_carry_n_3,
      CYINIT => '0',
      DI(3) => min1_return2_carry_i_1_n_0,
      DI(2) => min1_return2_carry_i_2_n_0,
      DI(1) => min1_return2_carry_i_3_n_0,
      DI(0) => min1_return2_carry_i_4_n_0,
      O(3 downto 0) => NLW_min1_return2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => min1_return2_carry_i_5_n_0,
      S(2) => min1_return2_carry_i_6_n_0,
      S(1) => min1_return2_carry_i_7_n_0,
      S(0) => min1_return2_carry_i_8_n_0
    );
min1_return2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p9(6),
      I1 => p52(6),
      I2 => t1_p9(7),
      I3 => p52(7),
      O => min1_return2_carry_i_1_n_0
    );
min1_return2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p9(4),
      I1 => p52(4),
      I2 => t1_p9(5),
      I3 => p52(5),
      O => min1_return2_carry_i_2_n_0
    );
min1_return2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p9(2),
      I1 => p52(2),
      I2 => t1_p9(3),
      I3 => p52(3),
      O => min1_return2_carry_i_3_n_0
    );
min1_return2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p9(0),
      I1 => p52(0),
      I2 => t1_p9(1),
      I3 => p52(1),
      O => min1_return2_carry_i_4_n_0
    );
min1_return2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(6),
      I1 => t1_p9(6),
      I2 => p52(7),
      I3 => t1_p9(7),
      O => min1_return2_carry_i_5_n_0
    );
min1_return2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(4),
      I1 => t1_p9(4),
      I2 => p52(5),
      I3 => t1_p9(5),
      O => min1_return2_carry_i_6_n_0
    );
min1_return2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(2),
      I1 => t1_p9(2),
      I2 => p52(3),
      I3 => t1_p9(3),
      O => min1_return2_carry_i_7_n_0
    );
min1_return2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p52(0),
      I1 => t1_p9(0),
      I2 => p52(1),
      I3 => t1_p9(1),
      O => min1_return2_carry_i_8_n_0
    );
\min1_return2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \min1_return2_inferred__0/i__carry_n_0\,
      CO(2) => \min1_return2_inferred__0/i__carry_n_1\,
      CO(1) => \min1_return2_inferred__0/i__carry_n_2\,
      CO(0) => \min1_return2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_min1_return2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
min2_return1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => min2_return1,
      CO(2) => min2_return1_carry_n_1,
      CO(1) => min2_return1_carry_n_2,
      CO(0) => min2_return1_carry_n_3,
      CYINIT => '0',
      DI(3) => min2_return1_carry_i_1_n_0,
      DI(2) => min2_return1_carry_i_2_n_0,
      DI(1) => min2_return1_carry_i_3_n_0,
      DI(0) => min2_return1_carry_i_4_n_0,
      O(3 downto 0) => NLW_min2_return1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => min2_return1_carry_i_5_n_0,
      S(2) => min2_return1_carry_i_6_n_0,
      S(1) => min2_return1_carry_i_7_n_0,
      S(0) => min2_return1_carry_i_8_n_0
    );
min2_return1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max2(6),
      I1 => a(6),
      I2 => a(7),
      I3 => t2_max2(7),
      O => min2_return1_carry_i_1_n_0
    );
min2_return1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max2(4),
      I1 => a(4),
      I2 => a(5),
      I3 => t2_max2(5),
      O => min2_return1_carry_i_2_n_0
    );
min2_return1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max2(2),
      I1 => a(2),
      I2 => a(3),
      I3 => t2_max2(3),
      O => min2_return1_carry_i_3_n_0
    );
min2_return1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max2(0),
      I1 => a(0),
      I2 => a(1),
      I3 => t2_max2(1),
      O => min2_return1_carry_i_4_n_0
    );
min2_return1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max2(6),
      I1 => a(6),
      I2 => t2_max2(7),
      I3 => a(7),
      O => min2_return1_carry_i_5_n_0
    );
min2_return1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max2(4),
      I1 => a(4),
      I2 => t2_max2(5),
      I3 => a(5),
      O => min2_return1_carry_i_6_n_0
    );
min2_return1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max2(2),
      I1 => a(2),
      I2 => t2_max2(3),
      I3 => a(3),
      O => min2_return1_carry_i_7_n_0
    );
min2_return1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max2(0),
      I1 => a(0),
      I2 => t2_max2(1),
      I3 => a(1),
      O => min2_return1_carry_i_8_n_0
    );
min2_return2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => min2_return2,
      CO(2) => min2_return2_carry_n_1,
      CO(1) => min2_return2_carry_n_2,
      CO(0) => min2_return2_carry_n_3,
      CYINIT => '0',
      DI(3) => min2_return2_carry_i_1_n_0,
      DI(2) => min2_return2_carry_i_2_n_0,
      DI(1) => min2_return2_carry_i_3_n_0,
      DI(0) => min2_return2_carry_i_4_n_0,
      O(3 downto 0) => NLW_min2_return2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => min2_return2_carry_i_5_n_0,
      S(2) => min2_return2_carry_i_6_n_0,
      S(1) => min2_return2_carry_i_7_n_0,
      S(0) => min2_return2_carry_i_8_n_0
    );
min2_return2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max3(6),
      I1 => t2_max2(6),
      I2 => t2_max2(7),
      I3 => t2_max3(7),
      O => min2_return2_carry_i_1_n_0
    );
min2_return2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max3(4),
      I1 => t2_max2(4),
      I2 => t2_max2(5),
      I3 => t2_max3(5),
      O => min2_return2_carry_i_2_n_0
    );
min2_return2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max3(2),
      I1 => t2_max2(2),
      I2 => t2_max2(3),
      I3 => t2_max3(3),
      O => min2_return2_carry_i_3_n_0
    );
min2_return2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => t2_max3(0),
      I1 => t2_max2(0),
      I2 => t2_max2(1),
      I3 => t2_max3(1),
      O => min2_return2_carry_i_4_n_0
    );
min2_return2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max3(6),
      I1 => t2_max2(6),
      I2 => t2_max3(7),
      I3 => t2_max2(7),
      O => min2_return2_carry_i_5_n_0
    );
min2_return2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max3(4),
      I1 => t2_max2(4),
      I2 => t2_max3(5),
      I3 => t2_max2(5),
      O => min2_return2_carry_i_6_n_0
    );
min2_return2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max3(2),
      I1 => t2_max2(2),
      I2 => t2_max3(3),
      I3 => t2_max2(3),
      O => min2_return2_carry_i_7_n_0
    );
min2_return2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t2_max3(0),
      I1 => t2_max2(0),
      I2 => t2_max3(1),
      I3 => t2_max2(1),
      O => min2_return2_carry_i_8_n_0
    );
\min2_return2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => min2_return20_in,
      CO(2) => \min2_return2_inferred__0/i__carry_n_1\,
      CO(1) => \min2_return2_inferred__0/i__carry_n_2\,
      CO(0) => \min2_return2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_min2_return2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
min_return1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => min_return1_carry_n_0,
      CO(2) => min_return1_carry_n_1,
      CO(1) => min_return1_carry_n_2,
      CO(0) => min_return1_carry_n_3,
      CYINIT => '0',
      DI(3) => min_return1_carry_i_1_n_0,
      DI(2) => min_return1_carry_i_2_n_0,
      DI(1) => min_return1_carry_i_3_n_0,
      DI(0) => min_return1_carry_i_4_n_0,
      O(3 downto 0) => NLW_min_return1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => min_return1_carry_i_5_n_0,
      S(2) => min_return1_carry_i_6_n_0,
      S(1) => min_return1_carry_i_7_n_0,
      S(0) => min_return1_carry_i_8_n_0
    );
min_return1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p12(6),
      I1 => t1_p1(6),
      I2 => p12(7),
      I3 => t1_p1(7),
      O => min_return1_carry_i_1_n_0
    );
min_return1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p12(4),
      I1 => t1_p1(4),
      I2 => p12(5),
      I3 => t1_p1(5),
      O => min_return1_carry_i_2_n_0
    );
min_return1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p12(2),
      I1 => t1_p1(2),
      I2 => p12(3),
      I3 => t1_p1(3),
      O => min_return1_carry_i_3_n_0
    );
min_return1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => p12(0),
      I1 => t1_p1(0),
      I2 => p12(1),
      I3 => t1_p1(1),
      O => min_return1_carry_i_4_n_0
    );
min_return1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(6),
      I1 => t1_p1(6),
      I2 => p12(7),
      I3 => t1_p1(7),
      O => min_return1_carry_i_5_n_0
    );
min_return1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(4),
      I1 => t1_p1(4),
      I2 => p12(5),
      I3 => t1_p1(5),
      O => min_return1_carry_i_6_n_0
    );
min_return1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(2),
      I1 => t1_p1(2),
      I2 => p12(3),
      I3 => t1_p1(3),
      O => min_return1_carry_i_7_n_0
    );
min_return1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(0),
      I1 => t1_p1(0),
      I2 => p12(1),
      I3 => t1_p1(1),
      O => min_return1_carry_i_8_n_0
    );
min_return2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => min_return2_carry_n_0,
      CO(2) => min_return2_carry_n_1,
      CO(1) => min_return2_carry_n_2,
      CO(0) => min_return2_carry_n_3,
      CYINIT => '0',
      DI(3) => min_return2_carry_i_1_n_0,
      DI(2) => min_return2_carry_i_2_n_0,
      DI(1) => min_return2_carry_i_3_n_0,
      DI(0) => min_return2_carry_i_4_n_0,
      O(3 downto 0) => NLW_min_return2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => min_return2_carry_i_5_n_0,
      S(2) => min_return2_carry_i_6_n_0,
      S(1) => min_return2_carry_i_7_n_0,
      S(0) => min_return2_carry_i_8_n_0
    );
min_return2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p3(6),
      I1 => p12(6),
      I2 => t1_p3(7),
      I3 => p12(7),
      O => min_return2_carry_i_1_n_0
    );
min_return2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p3(4),
      I1 => p12(4),
      I2 => t1_p3(5),
      I3 => p12(5),
      O => min_return2_carry_i_2_n_0
    );
min_return2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p3(2),
      I1 => p12(2),
      I2 => t1_p3(3),
      I3 => p12(3),
      O => min_return2_carry_i_3_n_0
    );
min_return2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => t1_p3(0),
      I1 => p12(0),
      I2 => t1_p3(1),
      I3 => p12(1),
      O => min_return2_carry_i_4_n_0
    );
min_return2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(6),
      I1 => t1_p3(6),
      I2 => p12(7),
      I3 => t1_p3(7),
      O => min_return2_carry_i_5_n_0
    );
min_return2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(4),
      I1 => t1_p3(4),
      I2 => p12(5),
      I3 => t1_p3(5),
      O => min_return2_carry_i_6_n_0
    );
min_return2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(2),
      I1 => t1_p3(2),
      I2 => p12(3),
      I3 => t1_p3(3),
      O => min_return2_carry_i_7_n_0
    );
min_return2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p12(0),
      I1 => t1_p3(0),
      I2 => p12(1),
      I3 => t1_p3(1),
      O => min_return2_carry_i_8_n_0
    );
\min_return2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \min_return2_inferred__0/i__carry_n_0\,
      CO(2) => \min_return2_inferred__0/i__carry_n_1\,
      CO(1) => \min_return2_inferred__0/i__carry_n_2\,
      CO(0) => \min_return2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_min_return2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6__2_n_0\,
      S(1) => \i__carry_i_7__2_n_0\,
      S(0) => \i__carry_i_8__2_n_0\
    );
\p13_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p14(0),
      Q => p13(0)
    );
\p13_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p14(1),
      Q => p13(1)
    );
\p13_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p14(2),
      Q => p13(2)
    );
\p13_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p14(3),
      Q => p13(3)
    );
\p13_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p14(4),
      Q => p13(4)
    );
\p13_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p14(5),
      Q => p13(5)
    );
\p13_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p14(6),
      Q => p13(6)
    );
\p13_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p14(7),
      Q => p13(7)
    );
\p14_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p15(0),
      Q => p14(0)
    );
\p14_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p15(1),
      Q => p14(1)
    );
\p14_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p15(2),
      Q => p14(2)
    );
\p14_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p15(3),
      Q => p14(3)
    );
\p14_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p15(4),
      Q => p14(4)
    );
\p14_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p15(5),
      Q => p14(5)
    );
\p14_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p15(6),
      Q => p14(6)
    );
\p14_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p15(7),
      Q => p14(7)
    );
\p15_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap3x(0),
      Q => p15(0)
    );
\p15_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap3x(1),
      Q => p15(1)
    );
\p15_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap3x(2),
      Q => p15(2)
    );
\p15_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap3x(3),
      Q => p15(3)
    );
\p15_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap3x(4),
      Q => p15(4)
    );
\p15_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap3x(5),
      Q => p15(5)
    );
\p15_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap3x(6),
      Q => p15(6)
    );
\p15_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap3x(7),
      Q => p15(7)
    );
\p22_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p23(0),
      Q => p22(0)
    );
\p22_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p23(1),
      Q => p22(1)
    );
\p22_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p23(2),
      Q => p22(2)
    );
\p22_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p23(3),
      Q => p22(3)
    );
\p22_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p23(4),
      Q => p22(4)
    );
\p22_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p23(5),
      Q => p22(5)
    );
\p22_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p23(6),
      Q => p22(6)
    );
\p22_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p23(7),
      Q => p22(7)
    );
\p23_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p24(0),
      Q => p23(0)
    );
\p23_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p24(1),
      Q => p23(1)
    );
\p23_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p24(2),
      Q => p23(2)
    );
\p23_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p24(3),
      Q => p23(3)
    );
\p23_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p24(4),
      Q => p23(4)
    );
\p23_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p24(5),
      Q => p23(5)
    );
\p23_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p24(6),
      Q => p23(6)
    );
\p23_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p24(7),
      Q => p23(7)
    );
\p24_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p25(0),
      Q => p24(0)
    );
\p24_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p25(1),
      Q => p24(1)
    );
\p24_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p25(2),
      Q => p24(2)
    );
\p24_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p25(3),
      Q => p24(3)
    );
\p24_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p25(4),
      Q => p24(4)
    );
\p24_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p25(5),
      Q => p24(5)
    );
\p24_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p25(6),
      Q => p24(6)
    );
\p24_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p25(7),
      Q => p24(7)
    );
\p25_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap2x(0),
      Q => p25(0)
    );
\p25_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap2x(1),
      Q => p25(1)
    );
\p25_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap2x(2),
      Q => p25(2)
    );
\p25_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap2x(3),
      Q => p25(3)
    );
\p25_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap2x(4),
      Q => p25(4)
    );
\p25_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap2x(5),
      Q => p25(5)
    );
\p25_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap2x(6),
      Q => p25(6)
    );
\p25_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => tap2x(7),
      Q => p25(7)
    );
\p35_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => tap1x(0),
      Q => p35(0)
    );
\p35_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => tap1x(1),
      Q => p35(1)
    );
\p35_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => tap1x(2),
      Q => p35(2)
    );
\p35_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => tap1x(3),
      Q => p35(3)
    );
\p35_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => tap1x(4),
      Q => p35(4)
    );
\p35_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => tap1x(5),
      Q => p35(5)
    );
\p35_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => tap1x(6),
      Q => p35(6)
    );
\p35_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => tap1x(7),
      Q => p35(7)
    );
\p42_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p43(0),
      Q => p42(0)
    );
\p42_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p43(1),
      Q => p42(1)
    );
\p42_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p43(2),
      Q => p42(2)
    );
\p42_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p43(3),
      Q => p42(3)
    );
\p42_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p43(4),
      Q => p42(4)
    );
\p42_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p43(5),
      Q => p42(5)
    );
\p42_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p43(6),
      Q => p42(6)
    );
\p42_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p43(7),
      Q => p42(7)
    );
\p43_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p44(0),
      Q => p43(0)
    );
\p43_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p44(1),
      Q => p43(1)
    );
\p43_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p44(2),
      Q => p43(2)
    );
\p43_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p44(3),
      Q => p43(3)
    );
\p43_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p44(4),
      Q => p43(4)
    );
\p43_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p44(5),
      Q => p43(5)
    );
\p43_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p44(6),
      Q => p43(6)
    );
\p43_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p44(7),
      Q => p43(7)
    );
\p44_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p45(0),
      Q => p44(0)
    );
\p44_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p45(1),
      Q => p44(1)
    );
\p44_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p45(2),
      Q => p44(2)
    );
\p44_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p45(3),
      Q => p44(3)
    );
\p44_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p45(4),
      Q => p44(4)
    );
\p44_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p45(5),
      Q => p44(5)
    );
\p44_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p45(6),
      Q => p44(6)
    );
\p44_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p45(7),
      Q => p44(7)
    );
\p45_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => linebuffer_n_7,
      Q => p45(0)
    );
\p45_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => linebuffer_n_6,
      Q => p45(1)
    );
\p45_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => linebuffer_n_5,
      Q => p45(2)
    );
\p45_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => linebuffer_n_4,
      Q => p45(3)
    );
\p45_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => linebuffer_n_3,
      Q => p45(4)
    );
\p45_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => linebuffer_n_2,
      Q => p45(5)
    );
\p45_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => linebuffer_n_1,
      Q => p45(6)
    );
\p45_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => linebuffer_n_0,
      Q => p45(7)
    );
\p53_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p54(0),
      Q => p53(0)
    );
\p53_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p54(1),
      Q => p53(1)
    );
\p53_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p54(2),
      Q => p53(2)
    );
\p53_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p54(3),
      Q => p53(3)
    );
\p53_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p54(4),
      Q => p53(4)
    );
\p53_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p54(5),
      Q => p53(5)
    );
\p53_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p54(6),
      Q => p53(6)
    );
\p53_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p54(7),
      Q => p53(7)
    );
\p54_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p55(0),
      Q => p54(0)
    );
\p54_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p55(1),
      Q => p54(1)
    );
\p54_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p55(2),
      Q => p54(2)
    );
\p54_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p55(3),
      Q => p54(3)
    );
\p54_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p55(4),
      Q => p54(4)
    );
\p54_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p55(5),
      Q => p54(5)
    );
\p54_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p55(6),
      Q => p54(6)
    );
\p54_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p55(7),
      Q => p54(7)
    );
\p55_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => in_raw_r(0),
      Q => p55(0)
    );
\p55_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => in_raw_r(1),
      Q => p55(1)
    );
\p55_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => in_raw_r(2),
      Q => p55(2)
    );
\p55_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => in_raw_r(3),
      Q => p55(3)
    );
\p55_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => in_raw_r(4),
      Q => p55(4)
    );
\p55_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => in_raw_r(5),
      Q => p55(5)
    );
\p55_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => in_raw_r(6),
      Q => p55(6)
    );
\p55_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => in_raw_r(7),
      Q => p55(7)
    );
shift_helper: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_v_shift_helper
     port map (
      D(7) => shift_helper_n_5,
      D(6) => shift_helper_n_6,
      D(5) => shift_helper_n_7,
      D(4) => shift_helper_n_8,
      D(3) => shift_helper_n_9,
      D(2) => shift_helper_n_10,
      D(1) => shift_helper_n_11,
      D(0) => shift_helper_n_12,
      E(0) => \^shift_enable\,
      Q(7 downto 0) => p44(7 downto 0),
      axis_aclk => axis_aclk,
      axis_aresetn => axis_aresetn,
      \current_state_reg[0]\ => \current_state_reg[0]\,
      \current_state_reg[1]\ => \current_state_reg[1]\,
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tuser => m00_axis_tuser,
      m00_axis_tvalid => m00_axis_tvalid,
      \max_y_index_int_reg[10]_0\ => \max_y_index_int_reg[10]\,
      \max_y_index_int_reg[10]_1\ => \max_y_index_int_reg[10]_1\,
      \max_y_index_int_reg[10]_2\ => \max_y_index_int_reg[10]_0\,
      \p22_reg[7]\(7) => shift_helper_n_38,
      \p22_reg[7]\(6) => shift_helper_n_39,
      \p22_reg[7]\(5) => shift_helper_n_40,
      \p22_reg[7]\(4) => shift_helper_n_41,
      \p22_reg[7]\(3) => shift_helper_n_42,
      \p22_reg[7]\(2) => shift_helper_n_43,
      \p22_reg[7]\(1) => shift_helper_n_44,
      \p22_reg[7]\(0) => shift_helper_n_45,
      \p24_reg[7]\(7) => shift_helper_n_30,
      \p24_reg[7]\(6) => shift_helper_n_31,
      \p24_reg[7]\(5) => shift_helper_n_32,
      \p24_reg[7]\(4) => shift_helper_n_33,
      \p24_reg[7]\(3) => shift_helper_n_34,
      \p24_reg[7]\(2) => shift_helper_n_35,
      \p24_reg[7]\(1) => shift_helper_n_36,
      \p24_reg[7]\(0) => shift_helper_n_37,
      \p42_reg[7]\(7) => shift_helper_n_22,
      \p42_reg[7]\(6) => shift_helper_n_23,
      \p42_reg[7]\(5) => shift_helper_n_24,
      \p42_reg[7]\(4) => shift_helper_n_25,
      \p42_reg[7]\(3) => shift_helper_n_26,
      \p42_reg[7]\(2) => shift_helper_n_27,
      \p42_reg[7]\(1) => shift_helper_n_28,
      \p42_reg[7]\(0) => shift_helper_n_29,
      \p44_reg[7]\(7) => shift_helper_n_14,
      \p44_reg[7]\(6) => shift_helper_n_15,
      \p44_reg[7]\(5) => shift_helper_n_16,
      \p44_reg[7]\(4) => shift_helper_n_17,
      \p44_reg[7]\(3) => shift_helper_n_18,
      \p44_reg[7]\(2) => shift_helper_n_19,
      \p44_reg[7]\(1) => shift_helper_n_20,
      \p44_reg[7]\(0) => shift_helper_n_21,
      s00_axis_tdata(7 downto 0) => s00_axis_tdata(7 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tuser => s00_axis_tuser,
      s00_axis_tvalid => s00_axis_tvalid,
      s00_axis_tvalid_0 => s00_axis_tvalid_0,
      \shift_x_index_int_reg[0]_0\ => \shift_x_index_int_reg[0]\,
      \t1_p1_reg[7]\(7 downto 0) => p22(7 downto 0),
      \t1_p3_reg[7]\(7 downto 0) => p24(7 downto 0),
      \t1_p3_reg[7]_0\(7 downto 0) => p15(7 downto 0),
      \t1_p7_reg[7]\(7 downto 0) => p42(7 downto 0),
      \t1_p9_reg[7]\(7 downto 0) => p55(7 downto 0),
      t2_p2(7 downto 0) => t2_p2(7 downto 0),
      t2_p8(7 downto 0) => t2_p8(7 downto 0)
    );
\t1_p1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_45,
      Q => t1_p1(0)
    );
\t1_p1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_44,
      Q => t1_p1(1)
    );
\t1_p1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_43,
      Q => t1_p1(2)
    );
\t1_p1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_42,
      Q => t1_p1(3)
    );
\t1_p1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_41,
      Q => t1_p1(4)
    );
\t1_p1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_40,
      Q => t1_p1(5)
    );
\t1_p1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_39,
      Q => t1_p1(6)
    );
\t1_p1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_38,
      Q => t1_p1(7)
    );
\t1_p2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p13(0),
      Q => p12(0)
    );
\t1_p2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p13(1),
      Q => p12(1)
    );
\t1_p2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p13(2),
      Q => p12(2)
    );
\t1_p2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p13(3),
      Q => p12(3)
    );
\t1_p2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p13(4),
      Q => p12(4)
    );
\t1_p2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p13(5),
      Q => p12(5)
    );
\t1_p2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p13(6),
      Q => p12(6)
    );
\t1_p2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p13(7),
      Q => p12(7)
    );
\t1_p3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_37,
      Q => t1_p3(0)
    );
\t1_p3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_36,
      Q => t1_p3(1)
    );
\t1_p3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_35,
      Q => t1_p3(2)
    );
\t1_p3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_34,
      Q => t1_p3(3)
    );
\t1_p3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_33,
      Q => t1_p3(4)
    );
\t1_p3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_32,
      Q => t1_p3(5)
    );
\t1_p3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_31,
      Q => t1_p3(6)
    );
\t1_p3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => shift_helper_n_30,
      Q => t1_p3(7)
    );
\t1_p5_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => t2_p6(0),
      Q => p32(0)
    );
\t1_p5_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => t2_p6(1),
      Q => p32(1)
    );
\t1_p5_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => t2_p6(2),
      Q => p32(2)
    );
\t1_p5_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => t2_p6(3),
      Q => p32(3)
    );
\t1_p5_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => t2_p6(4),
      Q => p32(4)
    );
\t1_p5_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t2_p6(5),
      Q => p32(5)
    );
\t1_p5_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t2_p6(6),
      Q => p32(6)
    );
\t1_p5_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t2_p6(7),
      Q => p32(7)
    );
\t1_p6_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p35(0),
      Q => p34(0)
    );
\t1_p6_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p35(1),
      Q => p34(1)
    );
\t1_p6_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p35(2),
      Q => p34(2)
    );
\t1_p6_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p35(3),
      Q => p34(3)
    );
\t1_p6_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p35(4),
      Q => p34(4)
    );
\t1_p6_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p35(5),
      Q => p34(5)
    );
\t1_p6_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p35(6),
      Q => p34(6)
    );
\t1_p6_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p35(7),
      Q => p34(7)
    );
\t1_p7_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => shift_helper_n_29,
      Q => t1_p7(0)
    );
\t1_p7_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => shift_helper_n_28,
      Q => t1_p7(1)
    );
\t1_p7_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => shift_helper_n_27,
      Q => t1_p7(2)
    );
\t1_p7_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => shift_helper_n_26,
      Q => t1_p7(3)
    );
\t1_p7_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => shift_helper_n_25,
      Q => t1_p7(4)
    );
\t1_p7_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => shift_helper_n_24,
      Q => t1_p7(5)
    );
\t1_p7_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => shift_helper_n_23,
      Q => t1_p7(6)
    );
\t1_p7_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => shift_helper_n_22,
      Q => t1_p7(7)
    );
\t1_p8_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p53(0),
      Q => p52(0)
    );
\t1_p8_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p53(1),
      Q => p52(1)
    );
\t1_p8_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p53(2),
      Q => p52(2)
    );
\t1_p8_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p53(3),
      Q => p52(3)
    );
\t1_p8_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p53(4),
      Q => p52(4)
    );
\t1_p8_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p53(5),
      Q => p52(5)
    );
\t1_p8_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p53(6),
      Q => p52(6)
    );
\t1_p8_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p53(7),
      Q => p52(7)
    );
\t1_p9_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_21,
      Q => t1_p9(0)
    );
\t1_p9_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_20,
      Q => t1_p9(1)
    );
\t1_p9_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_19,
      Q => t1_p9(2)
    );
\t1_p9_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_18,
      Q => t1_p9(3)
    );
\t1_p9_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_17,
      Q => t1_p9(4)
    );
\t1_p9_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_16,
      Q => t1_p9(5)
    );
\t1_p9_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_15,
      Q => t1_p9(6)
    );
\t1_p9_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => shift_helper_n_14,
      Q => t1_p9(7)
    );
\t2_max1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med_return2,
      I1 => p12(0),
      I2 => t1_p3(0),
      I3 => t1_p1(0),
      I4 => max_return1,
      I5 => med_return3,
      O => max_return(0)
    );
\t2_max1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med_return2,
      I1 => p12(1),
      I2 => t1_p3(1),
      I3 => t1_p1(1),
      I4 => max_return1,
      I5 => med_return3,
      O => max_return(1)
    );
\t2_max1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med_return2,
      I1 => p12(2),
      I2 => t1_p3(2),
      I3 => t1_p1(2),
      I4 => max_return1,
      I5 => med_return3,
      O => max_return(2)
    );
\t2_max1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med_return2,
      I1 => p12(3),
      I2 => t1_p3(3),
      I3 => t1_p1(3),
      I4 => max_return1,
      I5 => med_return3,
      O => max_return(3)
    );
\t2_max1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med_return2,
      I1 => p12(4),
      I2 => t1_p3(4),
      I3 => t1_p1(4),
      I4 => max_return1,
      I5 => med_return3,
      O => max_return(4)
    );
\t2_max1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med_return2,
      I1 => p12(5),
      I2 => t1_p3(5),
      I3 => t1_p1(5),
      I4 => max_return1,
      I5 => med_return3,
      O => max_return(5)
    );
\t2_max1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med_return2,
      I1 => p12(6),
      I2 => t1_p3(6),
      I3 => t1_p1(6),
      I4 => max_return1,
      I5 => med_return3,
      O => max_return(6)
    );
\t2_max1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med_return2,
      I1 => p12(7),
      I2 => t1_p3(7),
      I3 => t1_p1(7),
      I4 => max_return1,
      I5 => med_return3,
      O => max_return(7)
    );
\t2_max1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => max_return(0),
      Q => a(0)
    );
\t2_max1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => max_return(1),
      Q => a(1)
    );
\t2_max1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max_return(2),
      Q => a(2)
    );
\t2_max1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max_return(3),
      Q => a(3)
    );
\t2_max1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max_return(4),
      Q => a(4)
    );
\t2_max1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max_return(5),
      Q => a(5)
    );
\t2_max1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max_return(6),
      Q => a(6)
    );
\t2_max1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max_return(7),
      Q => a(7)
    );
\t2_max2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med0_return2,
      I1 => p32(0),
      I2 => p34(0),
      I3 => \t3_center_reg_n_0_[0]\,
      I4 => max0_return1,
      I5 => med0_return3,
      O => max0_return(0)
    );
\t2_max2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med0_return2,
      I1 => p32(1),
      I2 => p34(1),
      I3 => \t3_center_reg_n_0_[1]\,
      I4 => max0_return1,
      I5 => med0_return3,
      O => max0_return(1)
    );
\t2_max2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med0_return2,
      I1 => p32(2),
      I2 => p34(2),
      I3 => \t3_center_reg_n_0_[2]\,
      I4 => max0_return1,
      I5 => med0_return3,
      O => max0_return(2)
    );
\t2_max2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med0_return2,
      I1 => p32(3),
      I2 => p34(3),
      I3 => \t3_center_reg_n_0_[3]\,
      I4 => max0_return1,
      I5 => med0_return3,
      O => max0_return(3)
    );
\t2_max2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med0_return2,
      I1 => p32(4),
      I2 => p34(4),
      I3 => \t3_center_reg_n_0_[4]\,
      I4 => max0_return1,
      I5 => med0_return3,
      O => max0_return(4)
    );
\t2_max2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med0_return2,
      I1 => p32(5),
      I2 => p34(5),
      I3 => \t3_center_reg_n_0_[5]\,
      I4 => max0_return1,
      I5 => med0_return3,
      O => max0_return(5)
    );
\t2_max2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med0_return2,
      I1 => p32(6),
      I2 => p34(6),
      I3 => \t3_center_reg_n_0_[6]\,
      I4 => max0_return1,
      I5 => med0_return3,
      O => max0_return(6)
    );
\t2_max2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med0_return2,
      I1 => p32(7),
      I2 => p34(7),
      I3 => \t3_center_reg_n_0_[7]\,
      I4 => max0_return1,
      I5 => med0_return3,
      O => max0_return(7)
    );
\t2_max2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => max0_return(0),
      Q => t2_max2(0)
    );
\t2_max2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => max0_return(1),
      Q => t2_max2(1)
    );
\t2_max2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max0_return(2),
      Q => t2_max2(2)
    );
\t2_max2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max0_return(3),
      Q => t2_max2(3)
    );
\t2_max2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max0_return(4),
      Q => t2_max2(4)
    );
\t2_max2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max0_return(5),
      Q => t2_max2(5)
    );
\t2_max2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max0_return(6),
      Q => t2_max2(6)
    );
\t2_max2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max0_return(7),
      Q => t2_max2(7)
    );
\t2_max3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med1_return2,
      I1 => p52(0),
      I2 => t1_p9(0),
      I3 => t1_p7(0),
      I4 => max1_return1,
      I5 => med1_return3,
      O => max1_return(0)
    );
\t2_max3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med1_return2,
      I1 => p52(1),
      I2 => t1_p9(1),
      I3 => t1_p7(1),
      I4 => max1_return1,
      I5 => med1_return3,
      O => max1_return(1)
    );
\t2_max3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med1_return2,
      I1 => p52(2),
      I2 => t1_p9(2),
      I3 => t1_p7(2),
      I4 => max1_return1,
      I5 => med1_return3,
      O => max1_return(2)
    );
\t2_max3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med1_return2,
      I1 => p52(3),
      I2 => t1_p9(3),
      I3 => t1_p7(3),
      I4 => max1_return1,
      I5 => med1_return3,
      O => max1_return(3)
    );
\t2_max3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med1_return2,
      I1 => p52(4),
      I2 => t1_p9(4),
      I3 => t1_p7(4),
      I4 => max1_return1,
      I5 => med1_return3,
      O => max1_return(4)
    );
\t2_max3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med1_return2,
      I1 => p52(5),
      I2 => t1_p9(5),
      I3 => t1_p7(5),
      I4 => max1_return1,
      I5 => med1_return3,
      O => max1_return(5)
    );
\t2_max3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med1_return2,
      I1 => p52(6),
      I2 => t1_p9(6),
      I3 => t1_p7(6),
      I4 => max1_return1,
      I5 => med1_return3,
      O => max1_return(6)
    );
\t2_max3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => med1_return2,
      I1 => p52(7),
      I2 => t1_p9(7),
      I3 => t1_p7(7),
      I4 => max1_return1,
      I5 => med1_return3,
      O => max1_return(7)
    );
\t2_max3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => max1_return(0),
      Q => t2_max3(0)
    );
\t2_max3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => max1_return(1),
      Q => t2_max3(1)
    );
\t2_max3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max1_return(2),
      Q => t2_max3(2)
    );
\t2_max3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max1_return(3),
      Q => t2_max3(3)
    );
\t2_max3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max1_return(4),
      Q => t2_max3(4)
    );
\t2_max3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max1_return(5),
      Q => t2_max3(5)
    );
\t2_max3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max1_return(6),
      Q => t2_max3(6)
    );
\t2_max3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => max1_return(7),
      Q => t2_max3(7)
    );
\t2_med1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med1[7]_i_2_n_0\,
      I1 => p12(0),
      I2 => \t2_med1[7]_i_3_n_0\,
      I3 => t1_p3(0),
      I4 => t1_p1(0),
      I5 => \t2_med1[7]_i_4_n_0\,
      O => med_return(0)
    );
\t2_med1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med1[7]_i_2_n_0\,
      I1 => p12(1),
      I2 => \t2_med1[7]_i_3_n_0\,
      I3 => t1_p3(1),
      I4 => t1_p1(1),
      I5 => \t2_med1[7]_i_4_n_0\,
      O => med_return(1)
    );
\t2_med1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med1[7]_i_2_n_0\,
      I1 => p12(2),
      I2 => \t2_med1[7]_i_3_n_0\,
      I3 => t1_p3(2),
      I4 => t1_p1(2),
      I5 => \t2_med1[7]_i_4_n_0\,
      O => med_return(2)
    );
\t2_med1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med1[7]_i_2_n_0\,
      I1 => p12(3),
      I2 => \t2_med1[7]_i_3_n_0\,
      I3 => t1_p3(3),
      I4 => t1_p1(3),
      I5 => \t2_med1[7]_i_4_n_0\,
      O => med_return(3)
    );
\t2_med1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med1[7]_i_2_n_0\,
      I1 => p12(4),
      I2 => \t2_med1[7]_i_3_n_0\,
      I3 => t1_p3(4),
      I4 => t1_p1(4),
      I5 => \t2_med1[7]_i_4_n_0\,
      O => med_return(4)
    );
\t2_med1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med1[7]_i_2_n_0\,
      I1 => p12(5),
      I2 => \t2_med1[7]_i_3_n_0\,
      I3 => t1_p3(5),
      I4 => t1_p1(5),
      I5 => \t2_med1[7]_i_4_n_0\,
      O => med_return(5)
    );
\t2_med1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med1[7]_i_2_n_0\,
      I1 => p12(6),
      I2 => \t2_med1[7]_i_3_n_0\,
      I3 => t1_p3(6),
      I4 => t1_p1(6),
      I5 => \t2_med1[7]_i_4_n_0\,
      O => med_return(6)
    );
\t2_med1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med1[7]_i_2_n_0\,
      I1 => p12(7),
      I2 => \t2_med1[7]_i_3_n_0\,
      I3 => t1_p3(7),
      I4 => t1_p1(7),
      I5 => \t2_med1[7]_i_4_n_0\,
      O => med_return(7)
    );
\t2_med1[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => min_return2_carry_n_0,
      I1 => min_return1_carry_n_0,
      I2 => med_return2,
      O => \t2_med1[7]_i_2_n_0\
    );
\t2_med1[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => \min_return2_inferred__0/i__carry_n_0\,
      I1 => min_return2_carry_n_0,
      I2 => min_return1_carry_n_0,
      I3 => med_return3,
      I4 => med_return2,
      O => \t2_med1[7]_i_3_n_0\
    );
\t2_med1[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010101F"
    )
        port map (
      I0 => \min_return2_inferred__0/i__carry_n_0\,
      I1 => min_return2_carry_n_0,
      I2 => min_return1_carry_n_0,
      I3 => med_return3,
      I4 => med_return2,
      O => \t2_med1[7]_i_4_n_0\
    );
\t2_med1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => med_return(0),
      Q => t2_med1(0)
    );
\t2_med1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => med_return(1),
      Q => t2_med1(1)
    );
\t2_med1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med_return(2),
      Q => t2_med1(2)
    );
\t2_med1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med_return(3),
      Q => t2_med1(3)
    );
\t2_med1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med_return(4),
      Q => t2_med1(4)
    );
\t2_med1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med_return(5),
      Q => t2_med1(5)
    );
\t2_med1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med_return(6),
      Q => t2_med1(6)
    );
\t2_med1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med_return(7),
      Q => t2_med1(7)
    );
\t2_med2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med2[7]_i_2_n_0\,
      I1 => p32(0),
      I2 => \t2_med2[7]_i_3_n_0\,
      I3 => p34(0),
      I4 => \t3_center_reg_n_0_[0]\,
      I5 => \t2_med2[7]_i_4_n_0\,
      O => med0_return(0)
    );
\t2_med2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med2[7]_i_2_n_0\,
      I1 => p32(1),
      I2 => \t2_med2[7]_i_3_n_0\,
      I3 => p34(1),
      I4 => \t3_center_reg_n_0_[1]\,
      I5 => \t2_med2[7]_i_4_n_0\,
      O => med0_return(1)
    );
\t2_med2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med2[7]_i_2_n_0\,
      I1 => p32(2),
      I2 => \t2_med2[7]_i_3_n_0\,
      I3 => p34(2),
      I4 => \t3_center_reg_n_0_[2]\,
      I5 => \t2_med2[7]_i_4_n_0\,
      O => med0_return(2)
    );
\t2_med2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med2[7]_i_2_n_0\,
      I1 => p32(3),
      I2 => \t2_med2[7]_i_3_n_0\,
      I3 => p34(3),
      I4 => \t3_center_reg_n_0_[3]\,
      I5 => \t2_med2[7]_i_4_n_0\,
      O => med0_return(3)
    );
\t2_med2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med2[7]_i_2_n_0\,
      I1 => p32(4),
      I2 => \t2_med2[7]_i_3_n_0\,
      I3 => p34(4),
      I4 => \t3_center_reg_n_0_[4]\,
      I5 => \t2_med2[7]_i_4_n_0\,
      O => med0_return(4)
    );
\t2_med2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med2[7]_i_2_n_0\,
      I1 => p32(5),
      I2 => \t2_med2[7]_i_3_n_0\,
      I3 => p34(5),
      I4 => \t3_center_reg_n_0_[5]\,
      I5 => \t2_med2[7]_i_4_n_0\,
      O => med0_return(5)
    );
\t2_med2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med2[7]_i_2_n_0\,
      I1 => p32(6),
      I2 => \t2_med2[7]_i_3_n_0\,
      I3 => p34(6),
      I4 => \t3_center_reg_n_0_[6]\,
      I5 => \t2_med2[7]_i_4_n_0\,
      O => med0_return(6)
    );
\t2_med2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med2[7]_i_2_n_0\,
      I1 => p32(7),
      I2 => \t2_med2[7]_i_3_n_0\,
      I3 => p34(7),
      I4 => \t3_center_reg_n_0_[7]\,
      I5 => \t2_med2[7]_i_4_n_0\,
      O => med0_return(7)
    );
\t2_med2[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => min0_return2_carry_n_0,
      I1 => min0_return1_carry_n_0,
      I2 => med0_return2,
      O => \t2_med2[7]_i_2_n_0\
    );
\t2_med2[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => \min0_return2_inferred__0/i__carry_n_0\,
      I1 => min0_return2_carry_n_0,
      I2 => min0_return1_carry_n_0,
      I3 => med0_return3,
      I4 => med0_return2,
      O => \t2_med2[7]_i_3_n_0\
    );
\t2_med2[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010101F"
    )
        port map (
      I0 => \min0_return2_inferred__0/i__carry_n_0\,
      I1 => min0_return2_carry_n_0,
      I2 => min0_return1_carry_n_0,
      I3 => med0_return3,
      I4 => med0_return2,
      O => \t2_med2[7]_i_4_n_0\
    );
\t2_med2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => med0_return(0),
      Q => t2_med2(0)
    );
\t2_med2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => med0_return(1),
      Q => t2_med2(1)
    );
\t2_med2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med0_return(2),
      Q => t2_med2(2)
    );
\t2_med2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med0_return(3),
      Q => t2_med2(3)
    );
\t2_med2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med0_return(4),
      Q => t2_med2(4)
    );
\t2_med2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med0_return(5),
      Q => t2_med2(5)
    );
\t2_med2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med0_return(6),
      Q => t2_med2(6)
    );
\t2_med2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med0_return(7),
      Q => t2_med2(7)
    );
\t2_med3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med3[7]_i_2_n_0\,
      I1 => p52(0),
      I2 => \t2_med3[7]_i_3_n_0\,
      I3 => t1_p9(0),
      I4 => t1_p7(0),
      I5 => \t2_med3[7]_i_4_n_0\,
      O => med1_return(0)
    );
\t2_med3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med3[7]_i_2_n_0\,
      I1 => p52(1),
      I2 => \t2_med3[7]_i_3_n_0\,
      I3 => t1_p9(1),
      I4 => t1_p7(1),
      I5 => \t2_med3[7]_i_4_n_0\,
      O => med1_return(1)
    );
\t2_med3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med3[7]_i_2_n_0\,
      I1 => p52(2),
      I2 => \t2_med3[7]_i_3_n_0\,
      I3 => t1_p9(2),
      I4 => t1_p7(2),
      I5 => \t2_med3[7]_i_4_n_0\,
      O => med1_return(2)
    );
\t2_med3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med3[7]_i_2_n_0\,
      I1 => p52(3),
      I2 => \t2_med3[7]_i_3_n_0\,
      I3 => t1_p9(3),
      I4 => t1_p7(3),
      I5 => \t2_med3[7]_i_4_n_0\,
      O => med1_return(3)
    );
\t2_med3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med3[7]_i_2_n_0\,
      I1 => p52(4),
      I2 => \t2_med3[7]_i_3_n_0\,
      I3 => t1_p9(4),
      I4 => t1_p7(4),
      I5 => \t2_med3[7]_i_4_n_0\,
      O => med1_return(4)
    );
\t2_med3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med3[7]_i_2_n_0\,
      I1 => p52(5),
      I2 => \t2_med3[7]_i_3_n_0\,
      I3 => t1_p9(5),
      I4 => t1_p7(5),
      I5 => \t2_med3[7]_i_4_n_0\,
      O => med1_return(5)
    );
\t2_med3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med3[7]_i_2_n_0\,
      I1 => p52(6),
      I2 => \t2_med3[7]_i_3_n_0\,
      I3 => t1_p9(6),
      I4 => t1_p7(6),
      I5 => \t2_med3[7]_i_4_n_0\,
      O => med1_return(6)
    );
\t2_med3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t2_med3[7]_i_2_n_0\,
      I1 => p52(7),
      I2 => \t2_med3[7]_i_3_n_0\,
      I3 => t1_p9(7),
      I4 => t1_p7(7),
      I5 => \t2_med3[7]_i_4_n_0\,
      O => med1_return(7)
    );
\t2_med3[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in,
      I1 => p_2_in,
      I2 => med1_return2,
      O => \t2_med3[7]_i_2_n_0\
    );
\t2_med3[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => \min1_return2_inferred__0/i__carry_n_0\,
      I1 => p_1_in,
      I2 => p_2_in,
      I3 => med1_return3,
      I4 => med1_return2,
      O => \t2_med3[7]_i_3_n_0\
    );
\t2_med3[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010101F"
    )
        port map (
      I0 => \min1_return2_inferred__0/i__carry_n_0\,
      I1 => p_1_in,
      I2 => p_2_in,
      I3 => med1_return3,
      I4 => med1_return2,
      O => \t2_med3[7]_i_4_n_0\
    );
\t2_med3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => med1_return(0),
      Q => t2_med3(0)
    );
\t2_med3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => med1_return(1),
      Q => t2_med3(1)
    );
\t2_med3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med1_return(2),
      Q => t2_med3(2)
    );
\t2_med3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med1_return(3),
      Q => t2_med3(3)
    );
\t2_med3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med1_return(4),
      Q => t2_med3(4)
    );
\t2_med3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med1_return(5),
      Q => t2_med3(5)
    );
\t2_med3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med1_return(6),
      Q => t2_med3(6)
    );
\t2_med3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => med1_return(7),
      Q => t2_med3(7)
    );
\t2_min1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min_return2_carry_n_0,
      I1 => p12(0),
      I2 => t1_p3(0),
      I3 => t1_p1(0),
      I4 => min_return1_carry_n_0,
      I5 => \min_return2_inferred__0/i__carry_n_0\,
      O => min_return(0)
    );
\t2_min1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min_return2_carry_n_0,
      I1 => p12(1),
      I2 => t1_p3(1),
      I3 => t1_p1(1),
      I4 => min_return1_carry_n_0,
      I5 => \min_return2_inferred__0/i__carry_n_0\,
      O => min_return(1)
    );
\t2_min1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min_return2_carry_n_0,
      I1 => p12(2),
      I2 => t1_p3(2),
      I3 => t1_p1(2),
      I4 => min_return1_carry_n_0,
      I5 => \min_return2_inferred__0/i__carry_n_0\,
      O => min_return(2)
    );
\t2_min1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min_return2_carry_n_0,
      I1 => p12(3),
      I2 => t1_p3(3),
      I3 => t1_p1(3),
      I4 => min_return1_carry_n_0,
      I5 => \min_return2_inferred__0/i__carry_n_0\,
      O => min_return(3)
    );
\t2_min1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min_return2_carry_n_0,
      I1 => p12(4),
      I2 => t1_p3(4),
      I3 => t1_p1(4),
      I4 => min_return1_carry_n_0,
      I5 => \min_return2_inferred__0/i__carry_n_0\,
      O => min_return(4)
    );
\t2_min1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min_return2_carry_n_0,
      I1 => p12(5),
      I2 => t1_p3(5),
      I3 => t1_p1(5),
      I4 => min_return1_carry_n_0,
      I5 => \min_return2_inferred__0/i__carry_n_0\,
      O => min_return(5)
    );
\t2_min1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min_return2_carry_n_0,
      I1 => p12(6),
      I2 => t1_p3(6),
      I3 => t1_p1(6),
      I4 => min_return1_carry_n_0,
      I5 => \min_return2_inferred__0/i__carry_n_0\,
      O => min_return(6)
    );
\t2_min1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min_return2_carry_n_0,
      I1 => p12(7),
      I2 => t1_p3(7),
      I3 => t1_p1(7),
      I4 => min_return1_carry_n_0,
      I5 => \min_return2_inferred__0/i__carry_n_0\,
      O => min_return(7)
    );
\t2_min1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => min_return(0),
      Q => t2_min1(0)
    );
\t2_min1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => min_return(1),
      Q => t2_min1(1)
    );
\t2_min1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min_return(2),
      Q => t2_min1(2)
    );
\t2_min1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min_return(3),
      Q => t2_min1(3)
    );
\t2_min1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min_return(4),
      Q => t2_min1(4)
    );
\t2_min1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min_return(5),
      Q => t2_min1(5)
    );
\t2_min1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min_return(6),
      Q => t2_min1(6)
    );
\t2_min1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min_return(7),
      Q => t2_min1(7)
    );
\t2_min2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min0_return2_carry_n_0,
      I1 => p32(0),
      I2 => p34(0),
      I3 => \t3_center_reg_n_0_[0]\,
      I4 => min0_return1_carry_n_0,
      I5 => \min0_return2_inferred__0/i__carry_n_0\,
      O => min0_return(0)
    );
\t2_min2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min0_return2_carry_n_0,
      I1 => p32(1),
      I2 => p34(1),
      I3 => \t3_center_reg_n_0_[1]\,
      I4 => min0_return1_carry_n_0,
      I5 => \min0_return2_inferred__0/i__carry_n_0\,
      O => min0_return(1)
    );
\t2_min2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min0_return2_carry_n_0,
      I1 => p32(2),
      I2 => p34(2),
      I3 => \t3_center_reg_n_0_[2]\,
      I4 => min0_return1_carry_n_0,
      I5 => \min0_return2_inferred__0/i__carry_n_0\,
      O => min0_return(2)
    );
\t2_min2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min0_return2_carry_n_0,
      I1 => p32(3),
      I2 => p34(3),
      I3 => \t3_center_reg_n_0_[3]\,
      I4 => min0_return1_carry_n_0,
      I5 => \min0_return2_inferred__0/i__carry_n_0\,
      O => min0_return(3)
    );
\t2_min2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min0_return2_carry_n_0,
      I1 => p32(4),
      I2 => p34(4),
      I3 => \t3_center_reg_n_0_[4]\,
      I4 => min0_return1_carry_n_0,
      I5 => \min0_return2_inferred__0/i__carry_n_0\,
      O => min0_return(4)
    );
\t2_min2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min0_return2_carry_n_0,
      I1 => p32(5),
      I2 => p34(5),
      I3 => \t3_center_reg_n_0_[5]\,
      I4 => min0_return1_carry_n_0,
      I5 => \min0_return2_inferred__0/i__carry_n_0\,
      O => min0_return(5)
    );
\t2_min2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min0_return2_carry_n_0,
      I1 => p32(6),
      I2 => p34(6),
      I3 => \t3_center_reg_n_0_[6]\,
      I4 => min0_return1_carry_n_0,
      I5 => \min0_return2_inferred__0/i__carry_n_0\,
      O => min0_return(6)
    );
\t2_min2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => min0_return2_carry_n_0,
      I1 => p32(7),
      I2 => p34(7),
      I3 => \t3_center_reg_n_0_[7]\,
      I4 => min0_return1_carry_n_0,
      I5 => \min0_return2_inferred__0/i__carry_n_0\,
      O => min0_return(7)
    );
\t2_min2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => min0_return(0),
      Q => t2_min2(0)
    );
\t2_min2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => min0_return(1),
      Q => t2_min2(1)
    );
\t2_min2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min0_return(2),
      Q => t2_min2(2)
    );
\t2_min2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min0_return(3),
      Q => t2_min2(3)
    );
\t2_min2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min0_return(4),
      Q => t2_min2(4)
    );
\t2_min2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min0_return(5),
      Q => t2_min2(5)
    );
\t2_min2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min0_return(6),
      Q => t2_min2(6)
    );
\t2_min2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min0_return(7),
      Q => t2_min2(7)
    );
\t2_min3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => p_1_in,
      I1 => p52(0),
      I2 => t1_p9(0),
      I3 => t1_p7(0),
      I4 => p_2_in,
      I5 => \min1_return2_inferred__0/i__carry_n_0\,
      O => min1_return(0)
    );
\t2_min3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => p_1_in,
      I1 => p52(1),
      I2 => t1_p9(1),
      I3 => t1_p7(1),
      I4 => p_2_in,
      I5 => \min1_return2_inferred__0/i__carry_n_0\,
      O => min1_return(1)
    );
\t2_min3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => p_1_in,
      I1 => p52(2),
      I2 => t1_p9(2),
      I3 => t1_p7(2),
      I4 => p_2_in,
      I5 => \min1_return2_inferred__0/i__carry_n_0\,
      O => min1_return(2)
    );
\t2_min3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => p_1_in,
      I1 => p52(3),
      I2 => t1_p9(3),
      I3 => t1_p7(3),
      I4 => p_2_in,
      I5 => \min1_return2_inferred__0/i__carry_n_0\,
      O => min1_return(3)
    );
\t2_min3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => p_1_in,
      I1 => p52(4),
      I2 => t1_p9(4),
      I3 => t1_p7(4),
      I4 => p_2_in,
      I5 => \min1_return2_inferred__0/i__carry_n_0\,
      O => min1_return(4)
    );
\t2_min3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => p_1_in,
      I1 => p52(5),
      I2 => t1_p9(5),
      I3 => t1_p7(5),
      I4 => p_2_in,
      I5 => \min1_return2_inferred__0/i__carry_n_0\,
      O => min1_return(5)
    );
\t2_min3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => p_1_in,
      I1 => p52(6),
      I2 => t1_p9(6),
      I3 => t1_p7(6),
      I4 => p_2_in,
      I5 => \min1_return2_inferred__0/i__carry_n_0\,
      O => min1_return(6)
    );
\t2_min3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00D8D8F0F0D8D8"
    )
        port map (
      I0 => p_1_in,
      I1 => p52(7),
      I2 => t1_p9(7),
      I3 => t1_p7(7),
      I4 => p_2_in,
      I5 => \min1_return2_inferred__0/i__carry_n_0\,
      O => min1_return(7)
    );
\t2_min3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => min1_return(0),
      Q => t2_min3(0)
    );
\t2_min3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => min1_return(1),
      Q => t2_min3(1)
    );
\t2_min3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min1_return(2),
      Q => t2_min3(2)
    );
\t2_min3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min1_return(3),
      Q => t2_min3(3)
    );
\t2_min3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min1_return(4),
      Q => t2_min3(4)
    );
\t2_min3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min1_return(5),
      Q => t2_min3(5)
    );
\t2_min3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min1_return(6),
      Q => t2_min3(6)
    );
\t2_min3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => min1_return(7),
      Q => t2_min3(7)
    );
\t2_p1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p1(0),
      Q => t2_p1(0)
    );
\t2_p1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p1(1),
      Q => t2_p1(1)
    );
\t2_p1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p1(2),
      Q => t2_p1(2)
    );
\t2_p1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p1(3),
      Q => t2_p1(3)
    );
\t2_p1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p1(4),
      Q => t2_p1(4)
    );
\t2_p1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p1(5),
      Q => t2_p1(5)
    );
\t2_p1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p1(6),
      Q => t2_p1(6)
    );
\t2_p1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p1(7),
      Q => t2_p1(7)
    );
\t2_p2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p12(0),
      Q => t2_p2(0)
    );
\t2_p2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p12(1),
      Q => t2_p2(1)
    );
\t2_p2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p12(2),
      Q => t2_p2(2)
    );
\t2_p2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p12(3),
      Q => t2_p2(3)
    );
\t2_p2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p12(4),
      Q => t2_p2(4)
    );
\t2_p2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p12(5),
      Q => t2_p2(5)
    );
\t2_p2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p12(6),
      Q => t2_p2(6)
    );
\t2_p2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => p12(7),
      Q => t2_p2(7)
    );
\t2_p3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p3(0),
      Q => t2_p3(0)
    );
\t2_p3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p3(1),
      Q => t2_p3(1)
    );
\t2_p3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p3(2),
      Q => t2_p3(2)
    );
\t2_p3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p3(3),
      Q => t2_p3(3)
    );
\t2_p3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p3(4),
      Q => t2_p3(4)
    );
\t2_p3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p3(5),
      Q => t2_p3(5)
    );
\t2_p3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p3(6),
      Q => t2_p3(6)
    );
\t2_p3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \current_state_reg[1]\,
      D => t1_p3(7),
      Q => t2_p3(7)
    );
\t2_p5_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p32(0),
      Q => t2_p5(0)
    );
\t2_p5_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p32(1),
      Q => t2_p5(1)
    );
\t2_p5_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p32(2),
      Q => t2_p5(2)
    );
\t2_p5_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p32(3),
      Q => t2_p5(3)
    );
\t2_p5_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p32(4),
      Q => t2_p5(4)
    );
\t2_p5_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p32(5),
      Q => t2_p5(5)
    );
\t2_p5_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p32(6),
      Q => t2_p5(6)
    );
\t2_p5_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p32(7),
      Q => t2_p5(7)
    );
\t2_p6_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p34(0),
      Q => t2_p6(0)
    );
\t2_p6_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p34(1),
      Q => t2_p6(1)
    );
\t2_p6_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p34(2),
      Q => t2_p6(2)
    );
\t2_p6_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p34(3),
      Q => t2_p6(3)
    );
\t2_p6_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p34(4),
      Q => t2_p6(4)
    );
\t2_p6_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p34(5),
      Q => t2_p6(5)
    );
\t2_p6_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p34(6),
      Q => t2_p6(6)
    );
\t2_p6_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t1_p6_reg[6]_0\,
      D => p34(7),
      Q => t2_p6(7)
    );
\t2_p7_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => t1_p7(0),
      Q => t2_p7(0)
    );
\t2_p7_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => t1_p7(1),
      Q => t2_p7(1)
    );
\t2_p7_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p7(2),
      Q => t2_p7(2)
    );
\t2_p7_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p7(3),
      Q => t2_p7(3)
    );
\t2_p7_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p7(4),
      Q => t2_p7(4)
    );
\t2_p7_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p7(5),
      Q => t2_p7(5)
    );
\t2_p7_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p7(6),
      Q => t2_p7(6)
    );
\t2_p7_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p7(7),
      Q => t2_p7(7)
    );
\t2_p8_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p52(0),
      Q => t2_p8(0)
    );
\t2_p8_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => p52(1),
      Q => t2_p8(1)
    );
\t2_p8_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p52(2),
      Q => t2_p8(2)
    );
\t2_p8_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p52(3),
      Q => t2_p8(3)
    );
\t2_p8_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p52(4),
      Q => t2_p8(4)
    );
\t2_p8_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p52(5),
      Q => t2_p8(5)
    );
\t2_p8_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p52(6),
      Q => t2_p8(6)
    );
\t2_p8_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => p52(7),
      Q => t2_p8(7)
    );
\t2_p9_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => t1_p9(0),
      Q => t2_p9(0)
    );
\t2_p9_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p9(1),
      Q => t2_p9(1)
    );
\t2_p9_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p9(2),
      Q => t2_p9(2)
    );
\t2_p9_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p9(3),
      Q => t2_p9(3)
    );
\t2_p9_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p9(4),
      Q => t2_p9(4)
    );
\t2_p9_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p9(5),
      Q => t2_p9(5)
    );
\t2_p9_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p9(6),
      Q => t2_p9(6)
    );
\t2_p9_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t1_p9(7),
      Q => t2_p9(7)
    );
\t3_center_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => t2_p5(0),
      Q => \t3_center_reg_n_0_[0]\
    );
\t3_center_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => t2_p5(1),
      Q => \t3_center_reg_n_0_[1]\
    );
\t3_center_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => t2_p5(2),
      Q => \t3_center_reg_n_0_[2]\
    );
\t3_center_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => t2_p5(3),
      Q => \t3_center_reg_n_0_[3]\
    );
\t3_center_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t2_p5(4),
      Q => \t3_center_reg_n_0_[4]\
    );
\t3_center_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t2_p5(5),
      Q => \t3_center_reg_n_0_[5]\
    );
\t3_center_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t2_p5(6),
      Q => \t3_center_reg_n_0_[6]\
    );
\t3_center_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t2_p5(7),
      Q => \t3_center_reg_n_0_[7]\
    );
t3_diff10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t3_diff10_carry_n_0,
      CO(2) => t3_diff10_carry_n_1,
      CO(1) => t3_diff10_carry_n_2,
      CO(0) => t3_diff10_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => t2_p5(3 downto 0),
      O(3 downto 0) => t3_diff10(3 downto 0),
      S(3) => t3_diff10_carry_i_1_n_0,
      S(2) => t3_diff10_carry_i_2_n_0,
      S(1) => t3_diff10_carry_i_3_n_0,
      S(0) => t3_diff10_carry_i_4_n_0
    );
\t3_diff10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => t3_diff10_carry_n_0,
      CO(3) => \t3_diff10_carry__0_n_0\,
      CO(2) => \t3_diff10_carry__0_n_1\,
      CO(1) => \t3_diff10_carry__0_n_2\,
      CO(0) => \t3_diff10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => t2_p5(7 downto 4),
      O(3 downto 0) => t3_diff10(7 downto 4),
      S(3) => \t3_diff10_carry__0_i_1_n_0\,
      S(2) => \t3_diff10_carry__0_i_2_n_0\,
      S(1) => \t3_diff10_carry__0_i_3_n_0\,
      S(0) => \t3_diff10_carry__0_i_4_n_0\
    );
\t3_diff10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(7),
      I1 => t2_p1(7),
      O => \t3_diff10_carry__0_i_1_n_0\
    );
\t3_diff10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(6),
      I1 => t2_p1(6),
      O => \t3_diff10_carry__0_i_2_n_0\
    );
\t3_diff10_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(5),
      I1 => t2_p1(5),
      O => \t3_diff10_carry__0_i_3_n_0\
    );
\t3_diff10_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(4),
      I1 => t2_p1(4),
      O => \t3_diff10_carry__0_i_4_n_0\
    );
\t3_diff10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t3_diff10_carry__0_n_0\,
      CO(3 downto 0) => \NLW_t3_diff10_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_t3_diff10_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => t3_diff10(8),
      S(3 downto 0) => B"0001"
    );
t3_diff10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(3),
      I1 => t2_p1(3),
      O => t3_diff10_carry_i_1_n_0
    );
t3_diff10_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(2),
      I1 => t2_p1(2),
      O => t3_diff10_carry_i_2_n_0
    );
t3_diff10_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(1),
      I1 => t2_p1(1),
      O => t3_diff10_carry_i_3_n_0
    );
t3_diff10_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(0),
      I1 => t2_p1(0),
      O => t3_diff10_carry_i_4_n_0
    );
\t3_diff1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff10(0),
      Q => \t3_diff1_reg_n_0_[0]\
    );
\t3_diff1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff10(1),
      Q => \t3_diff1_reg_n_0_[1]\
    );
\t3_diff1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff10(2),
      Q => \t3_diff1_reg_n_0_[2]\
    );
\t3_diff1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff10(3),
      Q => \t3_diff1_reg_n_0_[3]\
    );
\t3_diff1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff10(4),
      Q => \t3_diff1_reg_n_0_[4]\
    );
\t3_diff1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff10(5),
      Q => \t3_diff1_reg_n_0_[5]\
    );
\t3_diff1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff10(6),
      Q => \t3_diff1_reg_n_0_[6]\
    );
\t3_diff1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff10(7),
      Q => \t3_diff1_reg_n_0_[7]\
    );
\t3_diff1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff10(8),
      Q => p_0_in(7)
    );
t3_diff20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t3_diff20_carry_n_0,
      CO(2) => t3_diff20_carry_n_1,
      CO(1) => t3_diff20_carry_n_2,
      CO(0) => t3_diff20_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => t2_p5(3 downto 0),
      O(3 downto 0) => t3_diff20(3 downto 0),
      S(3) => t3_diff20_carry_i_1_n_0,
      S(2) => t3_diff20_carry_i_2_n_0,
      S(1) => t3_diff20_carry_i_3_n_0,
      S(0) => t3_diff20_carry_i_4_n_0
    );
\t3_diff20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => t3_diff20_carry_n_0,
      CO(3) => \t3_diff20_carry__0_n_0\,
      CO(2) => \t3_diff20_carry__0_n_1\,
      CO(1) => \t3_diff20_carry__0_n_2\,
      CO(0) => \t3_diff20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => t2_p5(7 downto 4),
      O(3 downto 0) => t3_diff20(7 downto 4),
      S(3) => \t3_diff20_carry__0_i_1_n_0\,
      S(2) => \t3_diff20_carry__0_i_2_n_0\,
      S(1) => \t3_diff20_carry__0_i_3_n_0\,
      S(0) => \t3_diff20_carry__0_i_4_n_0\
    );
\t3_diff20_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(7),
      I1 => t2_p2(7),
      O => \t3_diff20_carry__0_i_1_n_0\
    );
\t3_diff20_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(6),
      I1 => t2_p2(6),
      O => \t3_diff20_carry__0_i_2_n_0\
    );
\t3_diff20_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(5),
      I1 => t2_p2(5),
      O => \t3_diff20_carry__0_i_3_n_0\
    );
\t3_diff20_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(4),
      I1 => t2_p2(4),
      O => \t3_diff20_carry__0_i_4_n_0\
    );
\t3_diff20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t3_diff20_carry__0_n_0\,
      CO(3 downto 0) => \NLW_t3_diff20_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_t3_diff20_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => t3_diff20(8),
      S(3 downto 0) => B"0001"
    );
t3_diff20_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(3),
      I1 => t2_p2(3),
      O => t3_diff20_carry_i_1_n_0
    );
t3_diff20_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(2),
      I1 => t2_p2(2),
      O => t3_diff20_carry_i_2_n_0
    );
t3_diff20_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(1),
      I1 => t2_p2(1),
      O => t3_diff20_carry_i_3_n_0
    );
t3_diff20_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(0),
      I1 => t2_p2(0),
      O => t3_diff20_carry_i_4_n_0
    );
\t3_diff2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff20(0),
      Q => \t3_diff2_reg_n_0_[0]\
    );
\t3_diff2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff20(1),
      Q => \t3_diff2_reg_n_0_[1]\
    );
\t3_diff2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff20(2),
      Q => \t3_diff2_reg_n_0_[2]\
    );
\t3_diff2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff20(3),
      Q => \t3_diff2_reg_n_0_[3]\
    );
\t3_diff2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff20(4),
      Q => \t3_diff2_reg_n_0_[4]\
    );
\t3_diff2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff20(5),
      Q => \t3_diff2_reg_n_0_[5]\
    );
\t3_diff2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff20(6),
      Q => \t3_diff2_reg_n_0_[6]\
    );
\t3_diff2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff20(7),
      Q => \t3_diff2_reg_n_0_[7]\
    );
\t3_diff2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff20(8),
      Q => p_0_in(6)
    );
t3_diff30_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t3_diff30_carry_n_0,
      CO(2) => t3_diff30_carry_n_1,
      CO(1) => t3_diff30_carry_n_2,
      CO(0) => t3_diff30_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => t2_p5(3 downto 0),
      O(3 downto 0) => t3_diff30(3 downto 0),
      S(3) => t3_diff30_carry_i_1_n_0,
      S(2) => t3_diff30_carry_i_2_n_0,
      S(1) => t3_diff30_carry_i_3_n_0,
      S(0) => t3_diff30_carry_i_4_n_0
    );
\t3_diff30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => t3_diff30_carry_n_0,
      CO(3) => \t3_diff30_carry__0_n_0\,
      CO(2) => \t3_diff30_carry__0_n_1\,
      CO(1) => \t3_diff30_carry__0_n_2\,
      CO(0) => \t3_diff30_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => t2_p5(7 downto 4),
      O(3 downto 0) => t3_diff30(7 downto 4),
      S(3) => \t3_diff30_carry__0_i_1_n_0\,
      S(2) => \t3_diff30_carry__0_i_2_n_0\,
      S(1) => \t3_diff30_carry__0_i_3_n_0\,
      S(0) => \t3_diff30_carry__0_i_4_n_0\
    );
\t3_diff30_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(7),
      I1 => t2_p3(7),
      O => \t3_diff30_carry__0_i_1_n_0\
    );
\t3_diff30_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(6),
      I1 => t2_p3(6),
      O => \t3_diff30_carry__0_i_2_n_0\
    );
\t3_diff30_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(5),
      I1 => t2_p3(5),
      O => \t3_diff30_carry__0_i_3_n_0\
    );
\t3_diff30_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(4),
      I1 => t2_p3(4),
      O => \t3_diff30_carry__0_i_4_n_0\
    );
\t3_diff30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t3_diff30_carry__0_n_0\,
      CO(3 downto 0) => \NLW_t3_diff30_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_t3_diff30_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => t3_diff30(8),
      S(3 downto 0) => B"0001"
    );
t3_diff30_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(3),
      I1 => t2_p3(3),
      O => t3_diff30_carry_i_1_n_0
    );
t3_diff30_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(2),
      I1 => t2_p3(2),
      O => t3_diff30_carry_i_2_n_0
    );
t3_diff30_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(1),
      I1 => t2_p3(1),
      O => t3_diff30_carry_i_3_n_0
    );
t3_diff30_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(0),
      I1 => t2_p3(0),
      O => t3_diff30_carry_i_4_n_0
    );
\t3_diff3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff30(0),
      Q => \t3_diff3_reg_n_0_[0]\
    );
\t3_diff3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff30(1),
      Q => \t3_diff3_reg_n_0_[1]\
    );
\t3_diff3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff30(2),
      Q => \t3_diff3_reg_n_0_[2]\
    );
\t3_diff3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff30(3),
      Q => \t3_diff3_reg_n_0_[3]\
    );
\t3_diff3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff30(4),
      Q => \t3_diff3_reg_n_0_[4]\
    );
\t3_diff3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff30(5),
      Q => \t3_diff3_reg_n_0_[5]\
    );
\t3_diff3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff30(6),
      Q => \t3_diff3_reg_n_0_[6]\
    );
\t3_diff3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff30(7),
      Q => \t3_diff3_reg_n_0_[7]\
    );
\t3_diff3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff30(8),
      Q => p_0_in(5)
    );
t3_diff40_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t3_diff40_carry_n_0,
      CO(2) => t3_diff40_carry_n_1,
      CO(1) => t3_diff40_carry_n_2,
      CO(0) => t3_diff40_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => t2_p5(3 downto 0),
      O(3 downto 0) => t3_diff40(3 downto 0),
      S(3) => t3_diff40_carry_i_1_n_0,
      S(2) => t3_diff40_carry_i_2_n_0,
      S(1) => t3_diff40_carry_i_3_n_0,
      S(0) => t3_diff40_carry_i_4_n_0
    );
\t3_diff40_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => t3_diff40_carry_n_0,
      CO(3) => \t3_diff40_carry__0_n_0\,
      CO(2) => \t3_diff40_carry__0_n_1\,
      CO(1) => \t3_diff40_carry__0_n_2\,
      CO(0) => \t3_diff40_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => t2_p5(7 downto 4),
      O(3 downto 0) => t3_diff40(7 downto 4),
      S(3) => \t3_diff40_carry__0_i_1_n_0\,
      S(2) => \t3_diff40_carry__0_i_2_n_0\,
      S(1) => \t3_diff40_carry__0_i_3_n_0\,
      S(0) => \t3_diff40_carry__0_i_4_n_0\
    );
\t3_diff40_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(7),
      I1 => t4_center(7),
      O => \t3_diff40_carry__0_i_1_n_0\
    );
\t3_diff40_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(6),
      I1 => t4_center(6),
      O => \t3_diff40_carry__0_i_2_n_0\
    );
\t3_diff40_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(5),
      I1 => t4_center(5),
      O => \t3_diff40_carry__0_i_3_n_0\
    );
\t3_diff40_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(4),
      I1 => t4_center(4),
      O => \t3_diff40_carry__0_i_4_n_0\
    );
\t3_diff40_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t3_diff40_carry__0_n_0\,
      CO(3 downto 0) => \NLW_t3_diff40_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_t3_diff40_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => t3_diff40(8),
      S(3 downto 0) => B"0001"
    );
t3_diff40_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(3),
      I1 => t4_center(3),
      O => t3_diff40_carry_i_1_n_0
    );
t3_diff40_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(2),
      I1 => t4_center(2),
      O => t3_diff40_carry_i_2_n_0
    );
t3_diff40_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(1),
      I1 => t4_center(1),
      O => t3_diff40_carry_i_3_n_0
    );
t3_diff40_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(0),
      I1 => t4_center(0),
      O => t3_diff40_carry_i_4_n_0
    );
\t3_diff4_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff40(0),
      Q => \t3_diff4_reg_n_0_[0]\
    );
\t3_diff4_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff40(1),
      Q => \t3_diff4_reg_n_0_[1]\
    );
\t3_diff4_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff40(2),
      Q => \t3_diff4_reg_n_0_[2]\
    );
\t3_diff4_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff40(3),
      Q => \t3_diff4_reg_n_0_[3]\
    );
\t3_diff4_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff40(4),
      Q => \t3_diff4_reg_n_0_[4]\
    );
\t3_diff4_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff40(5),
      Q => \t3_diff4_reg_n_0_[5]\
    );
\t3_diff4_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff40(6),
      Q => \t3_diff4_reg_n_0_[6]\
    );
\t3_diff4_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff40(7),
      Q => \t3_diff4_reg_n_0_[7]\
    );
\t3_diff4_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff40(8),
      Q => p_0_in(4)
    );
t3_diff50_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t3_diff50_carry_n_0,
      CO(2) => t3_diff50_carry_n_1,
      CO(1) => t3_diff50_carry_n_2,
      CO(0) => t3_diff50_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => t2_p5(3 downto 0),
      O(3 downto 0) => t3_diff50(3 downto 0),
      S(3) => t3_diff50_carry_i_1_n_0,
      S(2) => t3_diff50_carry_i_2_n_0,
      S(1) => t3_diff50_carry_i_3_n_0,
      S(0) => t3_diff50_carry_i_4_n_0
    );
\t3_diff50_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => t3_diff50_carry_n_0,
      CO(3) => \t3_diff50_carry__0_n_0\,
      CO(2) => \t3_diff50_carry__0_n_1\,
      CO(1) => \t3_diff50_carry__0_n_2\,
      CO(0) => \t3_diff50_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => t2_p5(7 downto 4),
      O(3 downto 0) => t3_diff50(7 downto 4),
      S(3) => \t3_diff50_carry__0_i_1_n_0\,
      S(2) => \t3_diff50_carry__0_i_2_n_0\,
      S(1) => \t3_diff50_carry__0_i_3_n_0\,
      S(0) => \t3_diff50_carry__0_i_4_n_0\
    );
\t3_diff50_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(7),
      I1 => t2_p6(7),
      O => \t3_diff50_carry__0_i_1_n_0\
    );
\t3_diff50_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(6),
      I1 => t2_p6(6),
      O => \t3_diff50_carry__0_i_2_n_0\
    );
\t3_diff50_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(5),
      I1 => t2_p6(5),
      O => \t3_diff50_carry__0_i_3_n_0\
    );
\t3_diff50_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(4),
      I1 => t2_p6(4),
      O => \t3_diff50_carry__0_i_4_n_0\
    );
\t3_diff50_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t3_diff50_carry__0_n_0\,
      CO(3 downto 0) => \NLW_t3_diff50_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_t3_diff50_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => t3_diff50(8),
      S(3 downto 0) => B"0001"
    );
t3_diff50_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(3),
      I1 => t2_p6(3),
      O => t3_diff50_carry_i_1_n_0
    );
t3_diff50_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(2),
      I1 => t2_p6(2),
      O => t3_diff50_carry_i_2_n_0
    );
t3_diff50_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(1),
      I1 => t2_p6(1),
      O => t3_diff50_carry_i_3_n_0
    );
t3_diff50_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(0),
      I1 => t2_p6(0),
      O => t3_diff50_carry_i_4_n_0
    );
\t3_diff5_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff50(0),
      Q => \t3_diff5_reg_n_0_[0]\
    );
\t3_diff5_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff50(1),
      Q => \t3_diff5_reg_n_0_[1]\
    );
\t3_diff5_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff50(2),
      Q => \t3_diff5_reg_n_0_[2]\
    );
\t3_diff5_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff50(3),
      Q => \t3_diff5_reg_n_0_[3]\
    );
\t3_diff5_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff50(4),
      Q => \t3_diff5_reg_n_0_[4]\
    );
\t3_diff5_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff50(5),
      Q => \t3_diff5_reg_n_0_[5]\
    );
\t3_diff5_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff50(6),
      Q => \t3_diff5_reg_n_0_[6]\
    );
\t3_diff5_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff50(7),
      Q => \t3_diff5_reg_n_0_[7]\
    );
\t3_diff5_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff50(8),
      Q => p_0_in(3)
    );
t3_diff60_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t3_diff60_carry_n_0,
      CO(2) => t3_diff60_carry_n_1,
      CO(1) => t3_diff60_carry_n_2,
      CO(0) => t3_diff60_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => t2_p5(3 downto 0),
      O(3 downto 0) => t3_diff60(3 downto 0),
      S(3) => t3_diff60_carry_i_1_n_0,
      S(2) => t3_diff60_carry_i_2_n_0,
      S(1) => t3_diff60_carry_i_3_n_0,
      S(0) => t3_diff60_carry_i_4_n_0
    );
\t3_diff60_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => t3_diff60_carry_n_0,
      CO(3) => \t3_diff60_carry__0_n_0\,
      CO(2) => \t3_diff60_carry__0_n_1\,
      CO(1) => \t3_diff60_carry__0_n_2\,
      CO(0) => \t3_diff60_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => t2_p5(7 downto 4),
      O(3 downto 0) => t3_diff60(7 downto 4),
      S(3) => \t3_diff60_carry__0_i_1_n_0\,
      S(2) => \t3_diff60_carry__0_i_2_n_0\,
      S(1) => \t3_diff60_carry__0_i_3_n_0\,
      S(0) => \t3_diff60_carry__0_i_4_n_0\
    );
\t3_diff60_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(7),
      I1 => t2_p7(7),
      O => \t3_diff60_carry__0_i_1_n_0\
    );
\t3_diff60_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(6),
      I1 => t2_p7(6),
      O => \t3_diff60_carry__0_i_2_n_0\
    );
\t3_diff60_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(5),
      I1 => t2_p7(5),
      O => \t3_diff60_carry__0_i_3_n_0\
    );
\t3_diff60_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(4),
      I1 => t2_p7(4),
      O => \t3_diff60_carry__0_i_4_n_0\
    );
\t3_diff60_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t3_diff60_carry__0_n_0\,
      CO(3 downto 0) => \NLW_t3_diff60_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_t3_diff60_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => t3_diff60(8),
      S(3 downto 0) => B"0001"
    );
t3_diff60_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(3),
      I1 => t2_p7(3),
      O => t3_diff60_carry_i_1_n_0
    );
t3_diff60_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(2),
      I1 => t2_p7(2),
      O => t3_diff60_carry_i_2_n_0
    );
t3_diff60_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(1),
      I1 => t2_p7(1),
      O => t3_diff60_carry_i_3_n_0
    );
t3_diff60_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(0),
      I1 => t2_p7(0),
      O => t3_diff60_carry_i_4_n_0
    );
\t3_diff6_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff60(0),
      Q => \t3_diff6_reg_n_0_[0]\
    );
\t3_diff6_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff60(1),
      Q => \t3_diff6_reg_n_0_[1]\
    );
\t3_diff6_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff60(2),
      Q => \t3_diff6_reg_n_0_[2]\
    );
\t3_diff6_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff60(3),
      Q => \t3_diff6_reg_n_0_[3]\
    );
\t3_diff6_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff60(4),
      Q => \t3_diff6_reg_n_0_[4]\
    );
\t3_diff6_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff60(5),
      Q => \t3_diff6_reg_n_0_[5]\
    );
\t3_diff6_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff60(6),
      Q => \t3_diff6_reg_n_0_[6]\
    );
\t3_diff6_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff60(7),
      Q => \t3_diff6_reg_n_0_[7]\
    );
\t3_diff6_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff60(8),
      Q => p_0_in(2)
    );
t3_diff70_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t3_diff70_carry_n_0,
      CO(2) => t3_diff70_carry_n_1,
      CO(1) => t3_diff70_carry_n_2,
      CO(0) => t3_diff70_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => t2_p5(3 downto 0),
      O(3 downto 0) => t3_diff70(3 downto 0),
      S(3) => t3_diff70_carry_i_1_n_0,
      S(2) => t3_diff70_carry_i_2_n_0,
      S(1) => t3_diff70_carry_i_3_n_0,
      S(0) => t3_diff70_carry_i_4_n_0
    );
\t3_diff70_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => t3_diff70_carry_n_0,
      CO(3) => \t3_diff70_carry__0_n_0\,
      CO(2) => \t3_diff70_carry__0_n_1\,
      CO(1) => \t3_diff70_carry__0_n_2\,
      CO(0) => \t3_diff70_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => t2_p5(7 downto 4),
      O(3 downto 0) => t3_diff70(7 downto 4),
      S(3) => \t3_diff70_carry__0_i_1_n_0\,
      S(2) => \t3_diff70_carry__0_i_2_n_0\,
      S(1) => \t3_diff70_carry__0_i_3_n_0\,
      S(0) => \t3_diff70_carry__0_i_4_n_0\
    );
\t3_diff70_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(7),
      I1 => t2_p8(7),
      O => \t3_diff70_carry__0_i_1_n_0\
    );
\t3_diff70_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(6),
      I1 => t2_p8(6),
      O => \t3_diff70_carry__0_i_2_n_0\
    );
\t3_diff70_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(5),
      I1 => t2_p8(5),
      O => \t3_diff70_carry__0_i_3_n_0\
    );
\t3_diff70_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(4),
      I1 => t2_p8(4),
      O => \t3_diff70_carry__0_i_4_n_0\
    );
\t3_diff70_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t3_diff70_carry__0_n_0\,
      CO(3 downto 0) => \NLW_t3_diff70_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_t3_diff70_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => t3_diff70(8),
      S(3 downto 0) => B"0001"
    );
t3_diff70_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(3),
      I1 => t2_p8(3),
      O => t3_diff70_carry_i_1_n_0
    );
t3_diff70_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(2),
      I1 => t2_p8(2),
      O => t3_diff70_carry_i_2_n_0
    );
t3_diff70_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(1),
      I1 => t2_p8(1),
      O => t3_diff70_carry_i_3_n_0
    );
t3_diff70_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(0),
      I1 => t2_p8(0),
      O => t3_diff70_carry_i_4_n_0
    );
\t3_diff7_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff70(0),
      Q => \t3_diff7_reg_n_0_[0]\
    );
\t3_diff7_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff70(1),
      Q => \t3_diff7_reg_n_0_[1]\
    );
\t3_diff7_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff70(2),
      Q => \t3_diff7_reg_n_0_[2]\
    );
\t3_diff7_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff70(3),
      Q => \t3_diff7_reg_n_0_[3]\
    );
\t3_diff7_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff70(4),
      Q => \t3_diff7_reg_n_0_[4]\
    );
\t3_diff7_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff70(5),
      Q => \t3_diff7_reg_n_0_[5]\
    );
\t3_diff7_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff70(6),
      Q => \t3_diff7_reg_n_0_[6]\
    );
\t3_diff7_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff70(7),
      Q => \t3_diff7_reg_n_0_[7]\
    );
\t3_diff7_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff70(8),
      Q => p_0_in(1)
    );
t3_diff80_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t3_diff80_carry_n_0,
      CO(2) => t3_diff80_carry_n_1,
      CO(1) => t3_diff80_carry_n_2,
      CO(0) => t3_diff80_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => t2_p5(3 downto 0),
      O(3 downto 0) => t3_diff80(3 downto 0),
      S(3) => t3_diff80_carry_i_1_n_0,
      S(2) => t3_diff80_carry_i_2_n_0,
      S(1) => t3_diff80_carry_i_3_n_0,
      S(0) => t3_diff80_carry_i_4_n_0
    );
\t3_diff80_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => t3_diff80_carry_n_0,
      CO(3) => \t3_diff80_carry__0_n_0\,
      CO(2) => \t3_diff80_carry__0_n_1\,
      CO(1) => \t3_diff80_carry__0_n_2\,
      CO(0) => \t3_diff80_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => t2_p5(7 downto 4),
      O(3 downto 0) => t3_diff80(7 downto 4),
      S(3) => \t3_diff80_carry__0_i_1_n_0\,
      S(2) => \t3_diff80_carry__0_i_2_n_0\,
      S(1) => \t3_diff80_carry__0_i_3_n_0\,
      S(0) => \t3_diff80_carry__0_i_4_n_0\
    );
\t3_diff80_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(7),
      I1 => t2_p9(7),
      O => \t3_diff80_carry__0_i_1_n_0\
    );
\t3_diff80_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(6),
      I1 => t2_p9(6),
      O => \t3_diff80_carry__0_i_2_n_0\
    );
\t3_diff80_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(5),
      I1 => t2_p9(5),
      O => \t3_diff80_carry__0_i_3_n_0\
    );
\t3_diff80_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(4),
      I1 => t2_p9(4),
      O => \t3_diff80_carry__0_i_4_n_0\
    );
\t3_diff80_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t3_diff80_carry__0_n_0\,
      CO(3 downto 0) => \NLW_t3_diff80_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_t3_diff80_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => t3_diff80(8),
      S(3 downto 0) => B"0001"
    );
t3_diff80_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(3),
      I1 => t2_p9(3),
      O => t3_diff80_carry_i_1_n_0
    );
t3_diff80_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(2),
      I1 => t2_p9(2),
      O => t3_diff80_carry_i_2_n_0
    );
t3_diff80_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(1),
      I1 => t2_p9(1),
      O => t3_diff80_carry_i_3_n_0
    );
t3_diff80_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t2_p5(0),
      I1 => t2_p9(0),
      O => t3_diff80_carry_i_4_n_0
    );
\t3_diff8_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff80(0),
      Q => \t3_diff8_reg_n_0_[0]\
    );
\t3_diff8_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff80(1),
      Q => \t3_diff8_reg_n_0_[1]\
    );
\t3_diff8_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff80(2),
      Q => \t3_diff8_reg_n_0_[2]\
    );
\t3_diff8_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff80(3),
      Q => \t3_diff8_reg_n_0_[3]\
    );
\t3_diff8_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff80(4),
      Q => \t3_diff8_reg_n_0_[4]\
    );
\t3_diff8_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff80(5),
      Q => \t3_diff8_reg_n_0_[5]\
    );
\t3_diff8_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff80(6),
      Q => \t3_diff8_reg_n_0_[6]\
    );
\t3_diff8_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff80(7),
      Q => \t3_diff8_reg_n_0_[7]\
    );
\t3_diff8_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => t3_diff80(8),
      Q => p_0_in(0)
    );
\t3_max_of_min[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => t2_min1(0),
      I1 => max2_return20_in,
      I2 => max2_return1,
      I3 => t2_min2(0),
      I4 => max2_return2,
      I5 => t2_min3(0),
      O => max2_return(0)
    );
\t3_max_of_min[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => t2_min1(1),
      I1 => max2_return20_in,
      I2 => max2_return1,
      I3 => t2_min2(1),
      I4 => max2_return2,
      I5 => t2_min3(1),
      O => max2_return(1)
    );
\t3_max_of_min[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => t2_min1(2),
      I1 => max2_return20_in,
      I2 => max2_return1,
      I3 => t2_min2(2),
      I4 => max2_return2,
      I5 => t2_min3(2),
      O => max2_return(2)
    );
\t3_max_of_min[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => t2_min1(3),
      I1 => max2_return20_in,
      I2 => max2_return1,
      I3 => t2_min2(3),
      I4 => max2_return2,
      I5 => t2_min3(3),
      O => max2_return(3)
    );
\t3_max_of_min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => t2_min1(4),
      I1 => max2_return20_in,
      I2 => max2_return1,
      I3 => t2_min2(4),
      I4 => max2_return2,
      I5 => t2_min3(4),
      O => max2_return(4)
    );
\t3_max_of_min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => t2_min1(5),
      I1 => max2_return20_in,
      I2 => max2_return1,
      I3 => t2_min2(5),
      I4 => max2_return2,
      I5 => t2_min3(5),
      O => max2_return(5)
    );
\t3_max_of_min[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => t2_min1(6),
      I1 => max2_return20_in,
      I2 => max2_return1,
      I3 => t2_min2(6),
      I4 => max2_return2,
      I5 => t2_min3(6),
      O => max2_return(6)
    );
\t3_max_of_min[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => t2_min1(7),
      I1 => max2_return20_in,
      I2 => max2_return1,
      I3 => t2_min2(7),
      I4 => max2_return2,
      I5 => t2_min3(7),
      O => max2_return(7)
    );
\t3_max_of_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max2_return(0),
      Q => \t3_max_of_min_reg_n_0_[0]\
    );
\t3_max_of_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max2_return(1),
      Q => \t3_max_of_min_reg_n_0_[1]\
    );
\t3_max_of_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max2_return(2),
      Q => \t3_max_of_min_reg_n_0_[2]\
    );
\t3_max_of_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max2_return(3),
      Q => \t3_max_of_min_reg_n_0_[3]\
    );
\t3_max_of_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max2_return(4),
      Q => \t3_max_of_min_reg_n_0_[4]\
    );
\t3_max_of_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max2_return(5),
      Q => \t3_max_of_min_reg_n_0_[5]\
    );
\t3_max_of_min_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max2_return(6),
      Q => \t3_max_of_min_reg_n_0_[6]\
    );
\t3_max_of_min_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => max2_return(7),
      Q => \t3_max_of_min_reg_n_0_[7]\
    );
\t3_med_of_med[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t3_med_of_med[7]_i_2_n_0\,
      I1 => t2_med1(0),
      I2 => \t3_med_of_med[7]_i_3_n_0\,
      I3 => t2_med3(0),
      I4 => t2_med2(0),
      I5 => \t3_med_of_med[7]_i_4_n_0\,
      O => med2_return(0)
    );
\t3_med_of_med[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t3_med_of_med[7]_i_2_n_0\,
      I1 => t2_med1(1),
      I2 => \t3_med_of_med[7]_i_3_n_0\,
      I3 => t2_med3(1),
      I4 => t2_med2(1),
      I5 => \t3_med_of_med[7]_i_4_n_0\,
      O => med2_return(1)
    );
\t3_med_of_med[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t3_med_of_med[7]_i_2_n_0\,
      I1 => t2_med1(2),
      I2 => \t3_med_of_med[7]_i_3_n_0\,
      I3 => t2_med3(2),
      I4 => t2_med2(2),
      I5 => \t3_med_of_med[7]_i_4_n_0\,
      O => med2_return(2)
    );
\t3_med_of_med[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t3_med_of_med[7]_i_2_n_0\,
      I1 => t2_med1(3),
      I2 => \t3_med_of_med[7]_i_3_n_0\,
      I3 => t2_med3(3),
      I4 => t2_med2(3),
      I5 => \t3_med_of_med[7]_i_4_n_0\,
      O => med2_return(3)
    );
\t3_med_of_med[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t3_med_of_med[7]_i_2_n_0\,
      I1 => t2_med1(4),
      I2 => \t3_med_of_med[7]_i_3_n_0\,
      I3 => t2_med3(4),
      I4 => t2_med2(4),
      I5 => \t3_med_of_med[7]_i_4_n_0\,
      O => med2_return(4)
    );
\t3_med_of_med[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t3_med_of_med[7]_i_2_n_0\,
      I1 => t2_med1(5),
      I2 => \t3_med_of_med[7]_i_3_n_0\,
      I3 => t2_med3(5),
      I4 => t2_med2(5),
      I5 => \t3_med_of_med[7]_i_4_n_0\,
      O => med2_return(5)
    );
\t3_med_of_med[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t3_med_of_med[7]_i_2_n_0\,
      I1 => t2_med1(6),
      I2 => \t3_med_of_med[7]_i_3_n_0\,
      I3 => t2_med3(6),
      I4 => t2_med2(6),
      I5 => \t3_med_of_med[7]_i_4_n_0\,
      O => med2_return(6)
    );
\t3_med_of_med[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t3_med_of_med[7]_i_2_n_0\,
      I1 => t2_med1(7),
      I2 => \t3_med_of_med[7]_i_3_n_0\,
      I3 => t2_med3(7),
      I4 => t2_med2(7),
      I5 => \t3_med_of_med[7]_i_4_n_0\,
      O => med2_return(7)
    );
\t3_med_of_med[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010101F"
    )
        port map (
      I0 => med2_return21_in,
      I1 => med2_return30_in,
      I2 => med2_return1,
      I3 => med2_return2,
      I4 => med2_return3,
      O => \t3_med_of_med[7]_i_2_n_0\
    );
\t3_med_of_med[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => med2_return30_in,
      I1 => med2_return21_in,
      I2 => med2_return1,
      I3 => med2_return3,
      I4 => med2_return2,
      O => \t3_med_of_med[7]_i_3_n_0\
    );
\t3_med_of_med[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => med2_return21_in,
      I1 => med2_return1,
      I2 => med2_return2,
      O => \t3_med_of_med[7]_i_4_n_0\
    );
\t3_med_of_med_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med2_return(0),
      Q => t3_med_of_med(0)
    );
\t3_med_of_med_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med2_return(1),
      Q => t3_med_of_med(1)
    );
\t3_med_of_med_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med2_return(2),
      Q => t3_med_of_med(2)
    );
\t3_med_of_med_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med2_return(3),
      Q => t3_med_of_med(3)
    );
\t3_med_of_med_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med2_return(4),
      Q => t3_med_of_med(4)
    );
\t3_med_of_med_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med2_return(5),
      Q => t3_med_of_med(5)
    );
\t3_med_of_med_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med2_return(6),
      Q => t3_med_of_med(6)
    );
\t3_med_of_med_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med2_return(7),
      Q => t3_med_of_med(7)
    );
\t3_min_of_max[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => a(0),
      I1 => min2_return20_in,
      I2 => min2_return1,
      I3 => t2_max2(0),
      I4 => min2_return2,
      I5 => t2_max3(0),
      O => min2_return(0)
    );
\t3_min_of_max[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => a(1),
      I1 => min2_return20_in,
      I2 => min2_return1,
      I3 => t2_max2(1),
      I4 => min2_return2,
      I5 => t2_max3(1),
      O => min2_return(1)
    );
\t3_min_of_max[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => a(2),
      I1 => min2_return20_in,
      I2 => min2_return1,
      I3 => t2_max2(2),
      I4 => min2_return2,
      I5 => t2_max3(2),
      O => min2_return(2)
    );
\t3_min_of_max[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => a(3),
      I1 => min2_return20_in,
      I2 => min2_return1,
      I3 => t2_max2(3),
      I4 => min2_return2,
      I5 => t2_max3(3),
      O => min2_return(3)
    );
\t3_min_of_max[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => a(4),
      I1 => min2_return20_in,
      I2 => min2_return1,
      I3 => t2_max2(4),
      I4 => min2_return2,
      I5 => t2_max3(4),
      O => min2_return(4)
    );
\t3_min_of_max[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => a(5),
      I1 => min2_return20_in,
      I2 => min2_return1,
      I3 => t2_max2(5),
      I4 => min2_return2,
      I5 => t2_max3(5),
      O => min2_return(5)
    );
\t3_min_of_max[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => a(6),
      I1 => min2_return20_in,
      I2 => min2_return1,
      I3 => t2_max2(6),
      I4 => min2_return2,
      I5 => t2_max3(6),
      O => min2_return(6)
    );
\t3_min_of_max[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => a(7),
      I1 => min2_return20_in,
      I2 => min2_return1,
      I3 => t2_max2(7),
      I4 => min2_return2,
      I5 => t2_max3(7),
      O => min2_return(7)
    );
\t3_min_of_max_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => min2_return(0),
      Q => t3_min_of_max(0)
    );
\t3_min_of_max_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => min2_return(1),
      Q => t3_min_of_max(1)
    );
\t3_min_of_max_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => min2_return(2),
      Q => t3_min_of_max(2)
    );
\t3_min_of_max_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => min2_return(3),
      Q => t3_min_of_max(3)
    );
\t3_min_of_max_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => min2_return(4),
      Q => t3_min_of_max(4)
    );
\t3_min_of_max_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => min2_return(5),
      Q => t3_min_of_max(5)
    );
\t3_min_of_max_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => min2_return(6),
      Q => t3_min_of_max(6)
    );
\t3_min_of_max_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => min2_return(7),
      Q => t3_min_of_max(7)
    );
\t4_center_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => \t3_center_reg_n_0_[0]\,
      Q => t4_center(0)
    );
\t4_center_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => \t3_center_reg_n_0_[1]\,
      Q => t4_center(1)
    );
\t4_center_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => \t3_center_reg_n_0_[2]\,
      Q => t4_center(2)
    );
\t4_center_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => \t3_center_reg_n_0_[3]\,
      Q => t4_center(3)
    );
\t4_center_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => \t3_center_reg_n_0_[4]\,
      Q => t4_center(4)
    );
\t4_center_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => \t3_center_reg_n_0_[5]\,
      Q => t4_center(5)
    );
\t4_center_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => \t3_center_reg_n_0_[6]\,
      Q => t4_center(6)
    );
\t4_center_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => \t3_center_reg_n_0_[7]\,
      Q => t4_center(7)
    );
t4_defective_pix_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A00C"
    )
        port map (
      I0 => t4_defective_pix_i_2_n_0,
      I1 => t4_defective_pix_i_3_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => t4_defective_pix_i_1_n_0
    );
t4_defective_pix_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => p_0_in(7),
      I5 => p_0_in(6),
      O => t4_defective_pix_i_2_n_0
    );
t4_defective_pix_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => p_0_in(7),
      I5 => p_0_in(6),
      O => t4_defective_pix_i_3_n_0
    );
t4_defective_pix_reg: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => t4_defective_pix_i_1_n_0,
      Q => t4_defective_pix
    );
\t4_diff1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \t3_diff1_reg_n_0_[0]\,
      I1 => p_0_in(7),
      I2 => \t3_diff1_reg_n_0_[1]\,
      O => \t4_diff1[1]_i_1_n_0\
    );
\t4_diff1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \t3_diff1_reg_n_0_[1]\,
      I1 => \t3_diff1_reg_n_0_[0]\,
      I2 => p_0_in(7),
      I3 => \t3_diff1_reg_n_0_[2]\,
      O => \t4_diff1[2]_i_1_n_0\
    );
\t4_diff1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \t3_diff1_reg_n_0_[2]\,
      I1 => \t3_diff1_reg_n_0_[0]\,
      I2 => \t3_diff1_reg_n_0_[1]\,
      I3 => p_0_in(7),
      I4 => \t3_diff1_reg_n_0_[3]\,
      O => \t4_diff1[3]_i_1_n_0\
    );
\t4_diff1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \t3_diff1_reg_n_0_[3]\,
      I1 => \t3_diff1_reg_n_0_[1]\,
      I2 => \t3_diff1_reg_n_0_[0]\,
      I3 => \t3_diff1_reg_n_0_[2]\,
      I4 => p_0_in(7),
      I5 => \t3_diff1_reg_n_0_[4]\,
      O => \t4_diff1[4]_i_1_n_0\
    );
\t4_diff1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FB0"
    )
        port map (
      I0 => \t3_diff1_reg_n_0_[4]\,
      I1 => \t4_diff1[7]_i_2_n_0\,
      I2 => p_0_in(7),
      I3 => \t3_diff1_reg_n_0_[5]\,
      O => \t4_diff1[5]_i_1_n_0\
    );
\t4_diff1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \t4_diff1[7]_i_2_n_0\,
      I1 => \t3_diff1_reg_n_0_[4]\,
      I2 => \t3_diff1_reg_n_0_[5]\,
      I3 => p_0_in(7),
      I4 => \t3_diff1_reg_n_0_[6]\,
      O => \t4_diff1[6]_i_1_n_0\
    );
\t4_diff1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFFFFFD0000"
    )
        port map (
      I0 => \t4_diff1[7]_i_2_n_0\,
      I1 => \t3_diff1_reg_n_0_[6]\,
      I2 => \t3_diff1_reg_n_0_[5]\,
      I3 => \t3_diff1_reg_n_0_[4]\,
      I4 => p_0_in(7),
      I5 => \t3_diff1_reg_n_0_[7]\,
      O => \t4_diff1[7]_i_1_n_0\
    );
\t4_diff1[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \t3_diff1_reg_n_0_[2]\,
      I1 => \t3_diff1_reg_n_0_[0]\,
      I2 => \t3_diff1_reg_n_0_[1]\,
      I3 => \t3_diff1_reg_n_0_[3]\,
      O => \t4_diff1[7]_i_2_n_0\
    );
\t4_diff1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t3_diff1_reg_n_0_[0]\,
      Q => t4_diff1(0)
    );
\t4_diff1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff1[1]_i_1_n_0\,
      Q => t4_diff1(1)
    );
\t4_diff1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff1[2]_i_1_n_0\,
      Q => t4_diff1(2)
    );
\t4_diff1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff1[3]_i_1_n_0\,
      Q => t4_diff1(3)
    );
\t4_diff1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff1[4]_i_1_n_0\,
      Q => t4_diff1(4)
    );
\t4_diff1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff1[5]_i_1_n_0\,
      Q => t4_diff1(5)
    );
\t4_diff1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff1[6]_i_1_n_0\,
      Q => t4_diff1(6)
    );
\t4_diff1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff1[7]_i_1_n_0\,
      Q => t4_diff1(7)
    );
\t4_diff2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \t3_diff2_reg_n_0_[0]\,
      I1 => p_0_in(6),
      I2 => \t3_diff2_reg_n_0_[1]\,
      O => \t4_diff2[1]_i_1_n_0\
    );
\t4_diff2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \t3_diff2_reg_n_0_[1]\,
      I1 => \t3_diff2_reg_n_0_[0]\,
      I2 => p_0_in(6),
      I3 => \t3_diff2_reg_n_0_[2]\,
      O => \t4_diff2[2]_i_1_n_0\
    );
\t4_diff2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \t3_diff2_reg_n_0_[2]\,
      I1 => \t3_diff2_reg_n_0_[0]\,
      I2 => \t3_diff2_reg_n_0_[1]\,
      I3 => p_0_in(6),
      I4 => \t3_diff2_reg_n_0_[3]\,
      O => \t4_diff2[3]_i_1_n_0\
    );
\t4_diff2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \t3_diff2_reg_n_0_[3]\,
      I1 => \t3_diff2_reg_n_0_[1]\,
      I2 => \t3_diff2_reg_n_0_[0]\,
      I3 => \t3_diff2_reg_n_0_[2]\,
      I4 => p_0_in(6),
      I5 => \t3_diff2_reg_n_0_[4]\,
      O => \t4_diff2[4]_i_1_n_0\
    );
\t4_diff2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FB0"
    )
        port map (
      I0 => \t3_diff2_reg_n_0_[4]\,
      I1 => \t4_diff2[7]_i_2_n_0\,
      I2 => p_0_in(6),
      I3 => \t3_diff2_reg_n_0_[5]\,
      O => \t4_diff2[5]_i_1_n_0\
    );
\t4_diff2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \t4_diff2[7]_i_2_n_0\,
      I1 => \t3_diff2_reg_n_0_[4]\,
      I2 => \t3_diff2_reg_n_0_[5]\,
      I3 => p_0_in(6),
      I4 => \t3_diff2_reg_n_0_[6]\,
      O => \t4_diff2[6]_i_1_n_0\
    );
\t4_diff2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFFFFFD0000"
    )
        port map (
      I0 => \t4_diff2[7]_i_2_n_0\,
      I1 => \t3_diff2_reg_n_0_[6]\,
      I2 => \t3_diff2_reg_n_0_[5]\,
      I3 => \t3_diff2_reg_n_0_[4]\,
      I4 => p_0_in(6),
      I5 => \t3_diff2_reg_n_0_[7]\,
      O => \t4_diff2[7]_i_1_n_0\
    );
\t4_diff2[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \t3_diff2_reg_n_0_[2]\,
      I1 => \t3_diff2_reg_n_0_[0]\,
      I2 => \t3_diff2_reg_n_0_[1]\,
      I3 => \t3_diff2_reg_n_0_[3]\,
      O => \t4_diff2[7]_i_2_n_0\
    );
\t4_diff2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t3_diff2_reg_n_0_[0]\,
      Q => t4_diff2(0)
    );
\t4_diff2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff2[1]_i_1_n_0\,
      Q => t4_diff2(1)
    );
\t4_diff2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff2[2]_i_1_n_0\,
      Q => t4_diff2(2)
    );
\t4_diff2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff2[3]_i_1_n_0\,
      Q => t4_diff2(3)
    );
\t4_diff2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff2[4]_i_1_n_0\,
      Q => t4_diff2(4)
    );
\t4_diff2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff2[5]_i_1_n_0\,
      Q => t4_diff2(5)
    );
\t4_diff2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff2[6]_i_1_n_0\,
      Q => t4_diff2(6)
    );
\t4_diff2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff2[7]_i_1_n_0\,
      Q => t4_diff2(7)
    );
\t4_diff3[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \t3_diff3_reg_n_0_[0]\,
      I1 => p_0_in(5),
      I2 => \t3_diff3_reg_n_0_[1]\,
      O => \t4_diff3[1]_i_1_n_0\
    );
\t4_diff3[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \t3_diff3_reg_n_0_[1]\,
      I1 => \t3_diff3_reg_n_0_[0]\,
      I2 => p_0_in(5),
      I3 => \t3_diff3_reg_n_0_[2]\,
      O => \t4_diff3[2]_i_1_n_0\
    );
\t4_diff3[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \t3_diff3_reg_n_0_[2]\,
      I1 => \t3_diff3_reg_n_0_[0]\,
      I2 => \t3_diff3_reg_n_0_[1]\,
      I3 => p_0_in(5),
      I4 => \t3_diff3_reg_n_0_[3]\,
      O => \t4_diff3[3]_i_1_n_0\
    );
\t4_diff3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \t3_diff3_reg_n_0_[3]\,
      I1 => \t3_diff3_reg_n_0_[1]\,
      I2 => \t3_diff3_reg_n_0_[0]\,
      I3 => \t3_diff3_reg_n_0_[2]\,
      I4 => p_0_in(5),
      I5 => \t3_diff3_reg_n_0_[4]\,
      O => \t4_diff3[4]_i_1_n_0\
    );
\t4_diff3[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FB0"
    )
        port map (
      I0 => \t3_diff3_reg_n_0_[4]\,
      I1 => \t4_diff3[7]_i_2_n_0\,
      I2 => p_0_in(5),
      I3 => \t3_diff3_reg_n_0_[5]\,
      O => \t4_diff3[5]_i_1_n_0\
    );
\t4_diff3[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \t4_diff3[7]_i_2_n_0\,
      I1 => \t3_diff3_reg_n_0_[4]\,
      I2 => \t3_diff3_reg_n_0_[5]\,
      I3 => p_0_in(5),
      I4 => \t3_diff3_reg_n_0_[6]\,
      O => \t4_diff3[6]_i_1_n_0\
    );
\t4_diff3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFFFFFD0000"
    )
        port map (
      I0 => \t4_diff3[7]_i_2_n_0\,
      I1 => \t3_diff3_reg_n_0_[6]\,
      I2 => \t3_diff3_reg_n_0_[5]\,
      I3 => \t3_diff3_reg_n_0_[4]\,
      I4 => p_0_in(5),
      I5 => \t3_diff3_reg_n_0_[7]\,
      O => \t4_diff3[7]_i_1_n_0\
    );
\t4_diff3[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \t3_diff3_reg_n_0_[2]\,
      I1 => \t3_diff3_reg_n_0_[0]\,
      I2 => \t3_diff3_reg_n_0_[1]\,
      I3 => \t3_diff3_reg_n_0_[3]\,
      O => \t4_diff3[7]_i_2_n_0\
    );
\t4_diff3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t3_diff3_reg_n_0_[0]\,
      Q => t4_diff3(0)
    );
\t4_diff3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff3[1]_i_1_n_0\,
      Q => t4_diff3(1)
    );
\t4_diff3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff3[2]_i_1_n_0\,
      Q => t4_diff3(2)
    );
\t4_diff3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff3[3]_i_1_n_0\,
      Q => t4_diff3(3)
    );
\t4_diff3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff3[4]_i_1_n_0\,
      Q => t4_diff3(4)
    );
\t4_diff3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff3[5]_i_1_n_0\,
      Q => t4_diff3(5)
    );
\t4_diff3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff3[6]_i_1_n_0\,
      Q => t4_diff3(6)
    );
\t4_diff3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff3[7]_i_1_n_0\,
      Q => t4_diff3(7)
    );
\t4_diff4[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \t3_diff4_reg_n_0_[0]\,
      I1 => p_0_in(4),
      I2 => \t3_diff4_reg_n_0_[1]\,
      O => \t4_diff4[1]_i_1_n_0\
    );
\t4_diff4[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \t3_diff4_reg_n_0_[1]\,
      I1 => \t3_diff4_reg_n_0_[0]\,
      I2 => p_0_in(4),
      I3 => \t3_diff4_reg_n_0_[2]\,
      O => \t4_diff4[2]_i_1_n_0\
    );
\t4_diff4[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \t3_diff4_reg_n_0_[2]\,
      I1 => \t3_diff4_reg_n_0_[0]\,
      I2 => \t3_diff4_reg_n_0_[1]\,
      I3 => p_0_in(4),
      I4 => \t3_diff4_reg_n_0_[3]\,
      O => \t4_diff4[3]_i_1_n_0\
    );
\t4_diff4[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \t3_diff4_reg_n_0_[3]\,
      I1 => \t3_diff4_reg_n_0_[1]\,
      I2 => \t3_diff4_reg_n_0_[0]\,
      I3 => \t3_diff4_reg_n_0_[2]\,
      I4 => p_0_in(4),
      I5 => \t3_diff4_reg_n_0_[4]\,
      O => \t4_diff4[4]_i_1_n_0\
    );
\t4_diff4[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FB0"
    )
        port map (
      I0 => \t3_diff4_reg_n_0_[4]\,
      I1 => \t4_diff4[7]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \t3_diff4_reg_n_0_[5]\,
      O => \t4_diff4[5]_i_1_n_0\
    );
\t4_diff4[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \t4_diff4[7]_i_2_n_0\,
      I1 => \t3_diff4_reg_n_0_[4]\,
      I2 => \t3_diff4_reg_n_0_[5]\,
      I3 => p_0_in(4),
      I4 => \t3_diff4_reg_n_0_[6]\,
      O => \t4_diff4[6]_i_1_n_0\
    );
\t4_diff4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFFFFFD0000"
    )
        port map (
      I0 => \t4_diff4[7]_i_2_n_0\,
      I1 => \t3_diff4_reg_n_0_[6]\,
      I2 => \t3_diff4_reg_n_0_[5]\,
      I3 => \t3_diff4_reg_n_0_[4]\,
      I4 => p_0_in(4),
      I5 => \t3_diff4_reg_n_0_[7]\,
      O => \t4_diff4[7]_i_1_n_0\
    );
\t4_diff4[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \t3_diff4_reg_n_0_[2]\,
      I1 => \t3_diff4_reg_n_0_[0]\,
      I2 => \t3_diff4_reg_n_0_[1]\,
      I3 => \t3_diff4_reg_n_0_[3]\,
      O => \t4_diff4[7]_i_2_n_0\
    );
\t4_diff4_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t3_diff4_reg_n_0_[0]\,
      Q => t4_diff4(0)
    );
\t4_diff4_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff4[1]_i_1_n_0\,
      Q => t4_diff4(1)
    );
\t4_diff4_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff4[2]_i_1_n_0\,
      Q => t4_diff4(2)
    );
\t4_diff4_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff4[3]_i_1_n_0\,
      Q => t4_diff4(3)
    );
\t4_diff4_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff4[4]_i_1_n_0\,
      Q => t4_diff4(4)
    );
\t4_diff4_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff4[5]_i_1_n_0\,
      Q => t4_diff4(5)
    );
\t4_diff4_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff4[6]_i_1_n_0\,
      Q => t4_diff4(6)
    );
\t4_diff4_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff4[7]_i_1_n_0\,
      Q => t4_diff4(7)
    );
\t4_diff5[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \t3_diff5_reg_n_0_[0]\,
      I1 => p_0_in(3),
      I2 => \t3_diff5_reg_n_0_[1]\,
      O => \t4_diff5[1]_i_1_n_0\
    );
\t4_diff5[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \t3_diff5_reg_n_0_[1]\,
      I1 => \t3_diff5_reg_n_0_[0]\,
      I2 => p_0_in(3),
      I3 => \t3_diff5_reg_n_0_[2]\,
      O => \t4_diff5[2]_i_1_n_0\
    );
\t4_diff5[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \t3_diff5_reg_n_0_[2]\,
      I1 => \t3_diff5_reg_n_0_[0]\,
      I2 => \t3_diff5_reg_n_0_[1]\,
      I3 => p_0_in(3),
      I4 => \t3_diff5_reg_n_0_[3]\,
      O => \t4_diff5[3]_i_1_n_0\
    );
\t4_diff5[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \t3_diff5_reg_n_0_[3]\,
      I1 => \t3_diff5_reg_n_0_[1]\,
      I2 => \t3_diff5_reg_n_0_[0]\,
      I3 => \t3_diff5_reg_n_0_[2]\,
      I4 => p_0_in(3),
      I5 => \t3_diff5_reg_n_0_[4]\,
      O => \t4_diff5[4]_i_1_n_0\
    );
\t4_diff5[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FB0"
    )
        port map (
      I0 => \t3_diff5_reg_n_0_[4]\,
      I1 => \t4_diff5[7]_i_2_n_0\,
      I2 => p_0_in(3),
      I3 => \t3_diff5_reg_n_0_[5]\,
      O => \t4_diff5[5]_i_1_n_0\
    );
\t4_diff5[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \t4_diff5[7]_i_2_n_0\,
      I1 => \t3_diff5_reg_n_0_[4]\,
      I2 => \t3_diff5_reg_n_0_[5]\,
      I3 => p_0_in(3),
      I4 => \t3_diff5_reg_n_0_[6]\,
      O => \t4_diff5[6]_i_1_n_0\
    );
\t4_diff5[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFFFFFD0000"
    )
        port map (
      I0 => \t4_diff5[7]_i_2_n_0\,
      I1 => \t3_diff5_reg_n_0_[6]\,
      I2 => \t3_diff5_reg_n_0_[5]\,
      I3 => \t3_diff5_reg_n_0_[4]\,
      I4 => p_0_in(3),
      I5 => \t3_diff5_reg_n_0_[7]\,
      O => \t4_diff5[7]_i_1_n_0\
    );
\t4_diff5[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \t3_diff5_reg_n_0_[2]\,
      I1 => \t3_diff5_reg_n_0_[0]\,
      I2 => \t3_diff5_reg_n_0_[1]\,
      I3 => \t3_diff5_reg_n_0_[3]\,
      O => \t4_diff5[7]_i_2_n_0\
    );
\t4_diff5_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t3_diff5_reg_n_0_[0]\,
      Q => t4_diff5(0)
    );
\t4_diff5_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff5[1]_i_1_n_0\,
      Q => t4_diff5(1)
    );
\t4_diff5_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff5[2]_i_1_n_0\,
      Q => t4_diff5(2)
    );
\t4_diff5_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff5[3]_i_1_n_0\,
      Q => t4_diff5(3)
    );
\t4_diff5_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff5[4]_i_1_n_0\,
      Q => t4_diff5(4)
    );
\t4_diff5_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff5[5]_i_1_n_0\,
      Q => t4_diff5(5)
    );
\t4_diff5_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff5[6]_i_1_n_0\,
      Q => t4_diff5(6)
    );
\t4_diff5_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff5[7]_i_1_n_0\,
      Q => t4_diff5(7)
    );
\t4_diff6[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \t3_diff6_reg_n_0_[0]\,
      I1 => p_0_in(2),
      I2 => \t3_diff6_reg_n_0_[1]\,
      O => \t4_diff6[1]_i_1_n_0\
    );
\t4_diff6[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \t3_diff6_reg_n_0_[1]\,
      I1 => \t3_diff6_reg_n_0_[0]\,
      I2 => p_0_in(2),
      I3 => \t3_diff6_reg_n_0_[2]\,
      O => \t4_diff6[2]_i_1_n_0\
    );
\t4_diff6[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \t3_diff6_reg_n_0_[2]\,
      I1 => \t3_diff6_reg_n_0_[0]\,
      I2 => \t3_diff6_reg_n_0_[1]\,
      I3 => p_0_in(2),
      I4 => \t3_diff6_reg_n_0_[3]\,
      O => \t4_diff6[3]_i_1_n_0\
    );
\t4_diff6[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \t3_diff6_reg_n_0_[3]\,
      I1 => \t3_diff6_reg_n_0_[1]\,
      I2 => \t3_diff6_reg_n_0_[0]\,
      I3 => \t3_diff6_reg_n_0_[2]\,
      I4 => p_0_in(2),
      I5 => \t3_diff6_reg_n_0_[4]\,
      O => \t4_diff6[4]_i_1_n_0\
    );
\t4_diff6[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FB0"
    )
        port map (
      I0 => \t3_diff6_reg_n_0_[4]\,
      I1 => \t4_diff6[7]_i_2_n_0\,
      I2 => p_0_in(2),
      I3 => \t3_diff6_reg_n_0_[5]\,
      O => \t4_diff6[5]_i_1_n_0\
    );
\t4_diff6[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \t4_diff6[7]_i_2_n_0\,
      I1 => \t3_diff6_reg_n_0_[4]\,
      I2 => \t3_diff6_reg_n_0_[5]\,
      I3 => p_0_in(2),
      I4 => \t3_diff6_reg_n_0_[6]\,
      O => \t4_diff6[6]_i_1_n_0\
    );
\t4_diff6[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFFFFFD0000"
    )
        port map (
      I0 => \t4_diff6[7]_i_2_n_0\,
      I1 => \t3_diff6_reg_n_0_[6]\,
      I2 => \t3_diff6_reg_n_0_[5]\,
      I3 => \t3_diff6_reg_n_0_[4]\,
      I4 => p_0_in(2),
      I5 => \t3_diff6_reg_n_0_[7]\,
      O => \t4_diff6[7]_i_1_n_0\
    );
\t4_diff6[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \t3_diff6_reg_n_0_[2]\,
      I1 => \t3_diff6_reg_n_0_[0]\,
      I2 => \t3_diff6_reg_n_0_[1]\,
      I3 => \t3_diff6_reg_n_0_[3]\,
      O => \t4_diff6[7]_i_2_n_0\
    );
\t4_diff6_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t3_diff6_reg_n_0_[0]\,
      Q => t4_diff6(0)
    );
\t4_diff6_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff6[1]_i_1_n_0\,
      Q => t4_diff6(1)
    );
\t4_diff6_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff6[2]_i_1_n_0\,
      Q => t4_diff6(2)
    );
\t4_diff6_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff6[3]_i_1_n_0\,
      Q => t4_diff6(3)
    );
\t4_diff6_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff6[4]_i_1_n_0\,
      Q => t4_diff6(4)
    );
\t4_diff6_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff6[5]_i_1_n_0\,
      Q => t4_diff6(5)
    );
\t4_diff6_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff6[6]_i_1_n_0\,
      Q => t4_diff6(6)
    );
\t4_diff6_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff6[7]_i_1_n_0\,
      Q => t4_diff6(7)
    );
\t4_diff7[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \t3_diff7_reg_n_0_[0]\,
      I1 => p_0_in(1),
      I2 => \t3_diff7_reg_n_0_[1]\,
      O => \t4_diff7[1]_i_1_n_0\
    );
\t4_diff7[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \t3_diff7_reg_n_0_[1]\,
      I1 => \t3_diff7_reg_n_0_[0]\,
      I2 => p_0_in(1),
      I3 => \t3_diff7_reg_n_0_[2]\,
      O => \t4_diff7[2]_i_1_n_0\
    );
\t4_diff7[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \t3_diff7_reg_n_0_[2]\,
      I1 => \t3_diff7_reg_n_0_[0]\,
      I2 => \t3_diff7_reg_n_0_[1]\,
      I3 => p_0_in(1),
      I4 => \t3_diff7_reg_n_0_[3]\,
      O => \t4_diff7[3]_i_1_n_0\
    );
\t4_diff7[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \t3_diff7_reg_n_0_[3]\,
      I1 => \t3_diff7_reg_n_0_[1]\,
      I2 => \t3_diff7_reg_n_0_[0]\,
      I3 => \t3_diff7_reg_n_0_[2]\,
      I4 => p_0_in(1),
      I5 => \t3_diff7_reg_n_0_[4]\,
      O => \t4_diff7[4]_i_1_n_0\
    );
\t4_diff7[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FB0"
    )
        port map (
      I0 => \t3_diff7_reg_n_0_[4]\,
      I1 => \t4_diff7[7]_i_2_n_0\,
      I2 => p_0_in(1),
      I3 => \t3_diff7_reg_n_0_[5]\,
      O => \t4_diff7[5]_i_1_n_0\
    );
\t4_diff7[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \t4_diff7[7]_i_2_n_0\,
      I1 => \t3_diff7_reg_n_0_[4]\,
      I2 => \t3_diff7_reg_n_0_[5]\,
      I3 => p_0_in(1),
      I4 => \t3_diff7_reg_n_0_[6]\,
      O => \t4_diff7[6]_i_1_n_0\
    );
\t4_diff7[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFFFFFD0000"
    )
        port map (
      I0 => \t4_diff7[7]_i_2_n_0\,
      I1 => \t3_diff7_reg_n_0_[6]\,
      I2 => \t3_diff7_reg_n_0_[5]\,
      I3 => \t3_diff7_reg_n_0_[4]\,
      I4 => p_0_in(1),
      I5 => \t3_diff7_reg_n_0_[7]\,
      O => \t4_diff7[7]_i_1_n_0\
    );
\t4_diff7[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \t3_diff7_reg_n_0_[2]\,
      I1 => \t3_diff7_reg_n_0_[0]\,
      I2 => \t3_diff7_reg_n_0_[1]\,
      I3 => \t3_diff7_reg_n_0_[3]\,
      O => \t4_diff7[7]_i_2_n_0\
    );
\t4_diff7_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t3_diff7_reg_n_0_[0]\,
      Q => t4_diff7(0)
    );
\t4_diff7_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff7[1]_i_1_n_0\,
      Q => t4_diff7(1)
    );
\t4_diff7_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff7[2]_i_1_n_0\,
      Q => t4_diff7(2)
    );
\t4_diff7_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff7[3]_i_1_n_0\,
      Q => t4_diff7(3)
    );
\t4_diff7_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff7[4]_i_1_n_0\,
      Q => t4_diff7(4)
    );
\t4_diff7_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff7[5]_i_1_n_0\,
      Q => t4_diff7(5)
    );
\t4_diff7_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff7[6]_i_1_n_0\,
      Q => t4_diff7(6)
    );
\t4_diff7_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff7[7]_i_1_n_0\,
      Q => t4_diff7(7)
    );
\t4_diff8[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \t3_diff8_reg_n_0_[0]\,
      I1 => p_0_in(0),
      I2 => \t3_diff8_reg_n_0_[1]\,
      O => \t4_diff8[1]_i_1_n_0\
    );
\t4_diff8[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \t3_diff8_reg_n_0_[1]\,
      I1 => \t3_diff8_reg_n_0_[0]\,
      I2 => p_0_in(0),
      I3 => \t3_diff8_reg_n_0_[2]\,
      O => \t4_diff8[2]_i_1_n_0\
    );
\t4_diff8[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \t3_diff8_reg_n_0_[2]\,
      I1 => \t3_diff8_reg_n_0_[0]\,
      I2 => \t3_diff8_reg_n_0_[1]\,
      I3 => p_0_in(0),
      I4 => \t3_diff8_reg_n_0_[3]\,
      O => \t4_diff8[3]_i_1_n_0\
    );
\t4_diff8[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \t3_diff8_reg_n_0_[3]\,
      I1 => \t3_diff8_reg_n_0_[1]\,
      I2 => \t3_diff8_reg_n_0_[0]\,
      I3 => \t3_diff8_reg_n_0_[2]\,
      I4 => p_0_in(0),
      I5 => \t3_diff8_reg_n_0_[4]\,
      O => \t4_diff8[4]_i_1_n_0\
    );
\t4_diff8[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FB0"
    )
        port map (
      I0 => \t3_diff8_reg_n_0_[4]\,
      I1 => \t4_diff8[7]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => \t3_diff8_reg_n_0_[5]\,
      O => \t4_diff8[5]_i_1_n_0\
    );
\t4_diff8[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \t4_diff8[7]_i_2_n_0\,
      I1 => \t3_diff8_reg_n_0_[4]\,
      I2 => \t3_diff8_reg_n_0_[5]\,
      I3 => p_0_in(0),
      I4 => \t3_diff8_reg_n_0_[6]\,
      O => \t4_diff8[6]_i_1_n_0\
    );
\t4_diff8[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFFFFFD0000"
    )
        port map (
      I0 => \t4_diff8[7]_i_2_n_0\,
      I1 => \t3_diff8_reg_n_0_[6]\,
      I2 => \t3_diff8_reg_n_0_[5]\,
      I3 => \t3_diff8_reg_n_0_[4]\,
      I4 => p_0_in(0),
      I5 => \t3_diff8_reg_n_0_[7]\,
      O => \t4_diff8[7]_i_1_n_0\
    );
\t4_diff8[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \t3_diff8_reg_n_0_[2]\,
      I1 => \t3_diff8_reg_n_0_[0]\,
      I2 => \t3_diff8_reg_n_0_[1]\,
      I3 => \t3_diff8_reg_n_0_[3]\,
      O => \t4_diff8[7]_i_2_n_0\
    );
\t4_diff8_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t3_diff8_reg_n_0_[0]\,
      Q => t4_diff8(0)
    );
\t4_diff8_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t3_diff4_reg[0]_0\,
      D => \t4_diff8[1]_i_1_n_0\,
      Q => t4_diff8(1)
    );
\t4_diff8_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff8[2]_i_1_n_0\,
      Q => t4_diff8(2)
    );
\t4_diff8_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff8[3]_i_1_n_0\,
      Q => t4_diff8(3)
    );
\t4_diff8_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff8[4]_i_1_n_0\,
      Q => t4_diff8(4)
    );
\t4_diff8_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff8[5]_i_1_n_0\,
      Q => t4_diff8(5)
    );
\t4_diff8_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff8[6]_i_1_n_0\,
      Q => t4_diff8(6)
    );
\t4_diff8_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t4_diff8[7]_i_1_n_0\,
      Q => t4_diff8(7)
    );
\t4_medium[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t4_medium[7]_i_2_n_0\,
      I1 => \t3_max_of_min_reg_n_0_[0]\,
      I2 => \t4_medium[7]_i_3_n_0\,
      I3 => t3_min_of_max(0),
      I4 => t3_med_of_med(0),
      I5 => \t4_medium[7]_i_4_n_0\,
      O => med3_return(0)
    );
\t4_medium[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t4_medium[7]_i_2_n_0\,
      I1 => \t3_max_of_min_reg_n_0_[1]\,
      I2 => \t4_medium[7]_i_3_n_0\,
      I3 => t3_min_of_max(1),
      I4 => t3_med_of_med(1),
      I5 => \t4_medium[7]_i_4_n_0\,
      O => med3_return(1)
    );
\t4_medium[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t4_medium[7]_i_2_n_0\,
      I1 => \t3_max_of_min_reg_n_0_[2]\,
      I2 => \t4_medium[7]_i_3_n_0\,
      I3 => t3_min_of_max(2),
      I4 => t3_med_of_med(2),
      I5 => \t4_medium[7]_i_4_n_0\,
      O => med3_return(2)
    );
\t4_medium[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t4_medium[7]_i_2_n_0\,
      I1 => \t3_max_of_min_reg_n_0_[3]\,
      I2 => \t4_medium[7]_i_3_n_0\,
      I3 => t3_min_of_max(3),
      I4 => t3_med_of_med(3),
      I5 => \t4_medium[7]_i_4_n_0\,
      O => med3_return(3)
    );
\t4_medium[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t4_medium[7]_i_2_n_0\,
      I1 => \t3_max_of_min_reg_n_0_[4]\,
      I2 => \t4_medium[7]_i_3_n_0\,
      I3 => t3_min_of_max(4),
      I4 => t3_med_of_med(4),
      I5 => \t4_medium[7]_i_4_n_0\,
      O => med3_return(4)
    );
\t4_medium[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t4_medium[7]_i_2_n_0\,
      I1 => \t3_max_of_min_reg_n_0_[5]\,
      I2 => \t4_medium[7]_i_3_n_0\,
      I3 => t3_min_of_max(5),
      I4 => t3_med_of_med(5),
      I5 => \t4_medium[7]_i_4_n_0\,
      O => med3_return(5)
    );
\t4_medium[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t4_medium[7]_i_2_n_0\,
      I1 => \t3_max_of_min_reg_n_0_[6]\,
      I2 => \t4_medium[7]_i_3_n_0\,
      I3 => t3_min_of_max(6),
      I4 => t3_med_of_med(6),
      I5 => \t4_medium[7]_i_4_n_0\,
      O => med3_return(6)
    );
\t4_medium[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \t4_medium[7]_i_2_n_0\,
      I1 => \t3_max_of_min_reg_n_0_[7]\,
      I2 => \t4_medium[7]_i_3_n_0\,
      I3 => t3_min_of_max(7),
      I4 => t3_med_of_med(7),
      I5 => \t4_medium[7]_i_4_n_0\,
      O => med3_return(7)
    );
\t4_medium[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010101F"
    )
        port map (
      I0 => med3_return21_in,
      I1 => med3_return30_in,
      I2 => med3_return1,
      I3 => med3_return2,
      I4 => med3_return3,
      O => \t4_medium[7]_i_2_n_0\
    );
\t4_medium[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => med3_return30_in,
      I1 => med3_return21_in,
      I2 => med3_return1,
      I3 => med3_return3,
      I4 => med3_return2,
      O => \t4_medium[7]_i_3_n_0\
    );
\t4_medium[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => med3_return21_in,
      I1 => med3_return1,
      I2 => med3_return2,
      O => \t4_medium[7]_i_4_n_0\
    );
\t4_medium_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med3_return(0),
      Q => t4_medium(0)
    );
\t4_medium_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med3_return(1),
      Q => t4_medium(1)
    );
\t4_medium_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med3_return(2),
      Q => t4_medium(2)
    );
\t4_medium_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med3_return(3),
      Q => t4_medium(3)
    );
\t4_medium_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med3_return(4),
      Q => t4_medium(4)
    );
\t4_medium_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med3_return(5),
      Q => t4_medium(5)
    );
\t4_medium_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med3_return(6),
      Q => t4_medium(6)
    );
\t4_medium_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => med3_return(7),
      Q => t4_medium(7)
    );
\t5_center_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => t4_center(0),
      Q => t5_center(0)
    );
\t5_center_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => t4_center(1),
      Q => t5_center(1)
    );
\t5_center_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t4_center(2),
      Q => t5_center(2)
    );
\t5_center_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \max_y_index_int_reg[10]_0\,
      D => t4_center(3),
      Q => t5_center(3)
    );
\t5_center_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t4_center(4),
      Q => t5_center(4)
    );
\t5_center_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t4_center(5),
      Q => t5_center(5)
    );
\t5_center_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t4_center(6),
      Q => t5_center(6)
    );
\t5_center_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \shift_x_index_int_reg[0]\,
      D => t4_center(7),
      Q => t5_center(7)
    );
t5_defective_pix1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t5_defective_pix1_carry_n_0,
      CO(2) => t5_defective_pix1_carry_n_1,
      CO(1) => t5_defective_pix1_carry_n_2,
      CO(0) => t5_defective_pix1_carry_n_3,
      CYINIT => '0',
      DI(3) => t5_defective_pix1_carry_i_1_n_0,
      DI(2) => t4_diff8(5),
      DI(1) => t4_diff8(3),
      DI(0) => t5_defective_pix1_carry_i_2_n_0,
      O(3 downto 0) => NLW_t5_defective_pix1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => t5_defective_pix1_carry_i_3_n_0,
      S(2) => t5_defective_pix1_carry_i_4_n_0,
      S(1) => t5_defective_pix1_carry_i_5_n_0,
      S(0) => t5_defective_pix1_carry_i_6_n_0
    );
t5_defective_pix1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff8(6),
      I1 => t4_diff8(7),
      O => t5_defective_pix1_carry_i_1_n_0
    );
t5_defective_pix1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff8(0),
      I1 => t4_diff8(1),
      O => t5_defective_pix1_carry_i_2_n_0
    );
t5_defective_pix1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff8(6),
      I1 => t4_diff8(7),
      O => t5_defective_pix1_carry_i_3_n_0
    );
t5_defective_pix1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff8(4),
      I1 => t4_diff8(5),
      O => t5_defective_pix1_carry_i_4_n_0
    );
t5_defective_pix1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff8(2),
      I1 => t4_diff8(3),
      O => t5_defective_pix1_carry_i_5_n_0
    );
t5_defective_pix1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff8(0),
      I1 => t4_diff8(1),
      O => t5_defective_pix1_carry_i_6_n_0
    );
t5_defective_pix2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t5_defective_pix2_carry_n_0,
      CO(2) => t5_defective_pix2_carry_n_1,
      CO(1) => t5_defective_pix2_carry_n_2,
      CO(0) => t5_defective_pix2_carry_n_3,
      CYINIT => '0',
      DI(3) => t5_defective_pix2_carry_i_1_n_0,
      DI(2) => t4_diff7(5),
      DI(1) => t4_diff7(3),
      DI(0) => t5_defective_pix2_carry_i_2_n_0,
      O(3 downto 0) => NLW_t5_defective_pix2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => t5_defective_pix2_carry_i_3_n_0,
      S(2) => t5_defective_pix2_carry_i_4_n_0,
      S(1) => t5_defective_pix2_carry_i_5_n_0,
      S(0) => t5_defective_pix2_carry_i_6_n_0
    );
t5_defective_pix2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff7(6),
      I1 => t4_diff7(7),
      O => t5_defective_pix2_carry_i_1_n_0
    );
t5_defective_pix2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff7(0),
      I1 => t4_diff7(1),
      O => t5_defective_pix2_carry_i_2_n_0
    );
t5_defective_pix2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff7(6),
      I1 => t4_diff7(7),
      O => t5_defective_pix2_carry_i_3_n_0
    );
t5_defective_pix2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff7(4),
      I1 => t4_diff7(5),
      O => t5_defective_pix2_carry_i_4_n_0
    );
t5_defective_pix2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff7(2),
      I1 => t4_diff7(3),
      O => t5_defective_pix2_carry_i_5_n_0
    );
t5_defective_pix2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff7(0),
      I1 => t4_diff7(1),
      O => t5_defective_pix2_carry_i_6_n_0
    );
t5_defective_pix3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t5_defective_pix3_carry_n_0,
      CO(2) => t5_defective_pix3_carry_n_1,
      CO(1) => t5_defective_pix3_carry_n_2,
      CO(0) => t5_defective_pix3_carry_n_3,
      CYINIT => '0',
      DI(3) => t5_defective_pix3_carry_i_1_n_0,
      DI(2) => t4_diff6(5),
      DI(1) => t4_diff6(3),
      DI(0) => t5_defective_pix3_carry_i_2_n_0,
      O(3 downto 0) => NLW_t5_defective_pix3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => t5_defective_pix3_carry_i_3_n_0,
      S(2) => t5_defective_pix3_carry_i_4_n_0,
      S(1) => t5_defective_pix3_carry_i_5_n_0,
      S(0) => t5_defective_pix3_carry_i_6_n_0
    );
t5_defective_pix3_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff6(6),
      I1 => t4_diff6(7),
      O => t5_defective_pix3_carry_i_1_n_0
    );
t5_defective_pix3_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff6(0),
      I1 => t4_diff6(1),
      O => t5_defective_pix3_carry_i_2_n_0
    );
t5_defective_pix3_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff6(6),
      I1 => t4_diff6(7),
      O => t5_defective_pix3_carry_i_3_n_0
    );
t5_defective_pix3_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff6(4),
      I1 => t4_diff6(5),
      O => t5_defective_pix3_carry_i_4_n_0
    );
t5_defective_pix3_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff6(2),
      I1 => t4_diff6(3),
      O => t5_defective_pix3_carry_i_5_n_0
    );
t5_defective_pix3_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff6(0),
      I1 => t4_diff6(1),
      O => t5_defective_pix3_carry_i_6_n_0
    );
t5_defective_pix4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t5_defective_pix4_carry_n_0,
      CO(2) => t5_defective_pix4_carry_n_1,
      CO(1) => t5_defective_pix4_carry_n_2,
      CO(0) => t5_defective_pix4_carry_n_3,
      CYINIT => '0',
      DI(3) => t5_defective_pix4_carry_i_1_n_0,
      DI(2) => t4_diff5(5),
      DI(1) => t4_diff5(3),
      DI(0) => t5_defective_pix4_carry_i_2_n_0,
      O(3 downto 0) => NLW_t5_defective_pix4_carry_O_UNCONNECTED(3 downto 0),
      S(3) => t5_defective_pix4_carry_i_3_n_0,
      S(2) => t5_defective_pix4_carry_i_4_n_0,
      S(1) => t5_defective_pix4_carry_i_5_n_0,
      S(0) => t5_defective_pix4_carry_i_6_n_0
    );
t5_defective_pix4_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff5(6),
      I1 => t4_diff5(7),
      O => t5_defective_pix4_carry_i_1_n_0
    );
t5_defective_pix4_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff5(0),
      I1 => t4_diff5(1),
      O => t5_defective_pix4_carry_i_2_n_0
    );
t5_defective_pix4_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff5(6),
      I1 => t4_diff5(7),
      O => t5_defective_pix4_carry_i_3_n_0
    );
t5_defective_pix4_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff5(4),
      I1 => t4_diff5(5),
      O => t5_defective_pix4_carry_i_4_n_0
    );
t5_defective_pix4_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff5(2),
      I1 => t4_diff5(3),
      O => t5_defective_pix4_carry_i_5_n_0
    );
t5_defective_pix4_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff5(0),
      I1 => t4_diff5(1),
      O => t5_defective_pix4_carry_i_6_n_0
    );
t5_defective_pix5_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t5_defective_pix5_carry_n_0,
      CO(2) => t5_defective_pix5_carry_n_1,
      CO(1) => t5_defective_pix5_carry_n_2,
      CO(0) => t5_defective_pix5_carry_n_3,
      CYINIT => '0',
      DI(3) => t5_defective_pix5_carry_i_1_n_0,
      DI(2) => t4_diff4(5),
      DI(1) => t4_diff4(3),
      DI(0) => t5_defective_pix5_carry_i_2_n_0,
      O(3 downto 0) => NLW_t5_defective_pix5_carry_O_UNCONNECTED(3 downto 0),
      S(3) => t5_defective_pix5_carry_i_3_n_0,
      S(2) => t5_defective_pix5_carry_i_4_n_0,
      S(1) => t5_defective_pix5_carry_i_5_n_0,
      S(0) => t5_defective_pix5_carry_i_6_n_0
    );
t5_defective_pix5_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff4(6),
      I1 => t4_diff4(7),
      O => t5_defective_pix5_carry_i_1_n_0
    );
t5_defective_pix5_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff4(0),
      I1 => t4_diff4(1),
      O => t5_defective_pix5_carry_i_2_n_0
    );
t5_defective_pix5_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff4(6),
      I1 => t4_diff4(7),
      O => t5_defective_pix5_carry_i_3_n_0
    );
t5_defective_pix5_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff4(4),
      I1 => t4_diff4(5),
      O => t5_defective_pix5_carry_i_4_n_0
    );
t5_defective_pix5_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff4(2),
      I1 => t4_diff4(3),
      O => t5_defective_pix5_carry_i_5_n_0
    );
t5_defective_pix5_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff4(0),
      I1 => t4_diff4(1),
      O => t5_defective_pix5_carry_i_6_n_0
    );
t5_defective_pix6_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t5_defective_pix6_carry_n_0,
      CO(2) => t5_defective_pix6_carry_n_1,
      CO(1) => t5_defective_pix6_carry_n_2,
      CO(0) => t5_defective_pix6_carry_n_3,
      CYINIT => '0',
      DI(3) => t5_defective_pix6_carry_i_1_n_0,
      DI(2) => t4_diff3(5),
      DI(1) => t4_diff3(3),
      DI(0) => t5_defective_pix6_carry_i_2_n_0,
      O(3 downto 0) => NLW_t5_defective_pix6_carry_O_UNCONNECTED(3 downto 0),
      S(3) => t5_defective_pix6_carry_i_3_n_0,
      S(2) => t5_defective_pix6_carry_i_4_n_0,
      S(1) => t5_defective_pix6_carry_i_5_n_0,
      S(0) => t5_defective_pix6_carry_i_6_n_0
    );
t5_defective_pix6_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff3(6),
      I1 => t4_diff3(7),
      O => t5_defective_pix6_carry_i_1_n_0
    );
t5_defective_pix6_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff3(0),
      I1 => t4_diff3(1),
      O => t5_defective_pix6_carry_i_2_n_0
    );
t5_defective_pix6_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff3(6),
      I1 => t4_diff3(7),
      O => t5_defective_pix6_carry_i_3_n_0
    );
t5_defective_pix6_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff3(4),
      I1 => t4_diff3(5),
      O => t5_defective_pix6_carry_i_4_n_0
    );
t5_defective_pix6_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff3(2),
      I1 => t4_diff3(3),
      O => t5_defective_pix6_carry_i_5_n_0
    );
t5_defective_pix6_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff3(0),
      I1 => t4_diff3(1),
      O => t5_defective_pix6_carry_i_6_n_0
    );
t5_defective_pix7_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t5_defective_pix7_carry_n_0,
      CO(2) => t5_defective_pix7_carry_n_1,
      CO(1) => t5_defective_pix7_carry_n_2,
      CO(0) => t5_defective_pix7_carry_n_3,
      CYINIT => '0',
      DI(3) => t5_defective_pix7_carry_i_1_n_0,
      DI(2) => t4_diff2(5),
      DI(1) => t4_diff2(3),
      DI(0) => t5_defective_pix7_carry_i_2_n_0,
      O(3 downto 0) => NLW_t5_defective_pix7_carry_O_UNCONNECTED(3 downto 0),
      S(3) => t5_defective_pix7_carry_i_3_n_0,
      S(2) => t5_defective_pix7_carry_i_4_n_0,
      S(1) => t5_defective_pix7_carry_i_5_n_0,
      S(0) => t5_defective_pix7_carry_i_6_n_0
    );
t5_defective_pix7_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff2(6),
      I1 => t4_diff2(7),
      O => t5_defective_pix7_carry_i_1_n_0
    );
t5_defective_pix7_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff2(0),
      I1 => t4_diff2(1),
      O => t5_defective_pix7_carry_i_2_n_0
    );
t5_defective_pix7_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff2(6),
      I1 => t4_diff2(7),
      O => t5_defective_pix7_carry_i_3_n_0
    );
t5_defective_pix7_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff2(4),
      I1 => t4_diff2(5),
      O => t5_defective_pix7_carry_i_4_n_0
    );
t5_defective_pix7_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff2(2),
      I1 => t4_diff2(3),
      O => t5_defective_pix7_carry_i_5_n_0
    );
t5_defective_pix7_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff2(0),
      I1 => t4_diff2(1),
      O => t5_defective_pix7_carry_i_6_n_0
    );
t5_defective_pix8_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t5_defective_pix8_carry_n_0,
      CO(2) => t5_defective_pix8_carry_n_1,
      CO(1) => t5_defective_pix8_carry_n_2,
      CO(0) => t5_defective_pix8_carry_n_3,
      CYINIT => '0',
      DI(3) => t5_defective_pix8_carry_i_1_n_0,
      DI(2) => t4_diff1(5),
      DI(1) => t4_diff1(3),
      DI(0) => t5_defective_pix8_carry_i_2_n_0,
      O(3 downto 0) => NLW_t5_defective_pix8_carry_O_UNCONNECTED(3 downto 0),
      S(3) => t5_defective_pix8_carry_i_3_n_0,
      S(2) => t5_defective_pix8_carry_i_4_n_0,
      S(1) => t5_defective_pix8_carry_i_5_n_0,
      S(0) => t5_defective_pix8_carry_i_6_n_0
    );
t5_defective_pix8_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff1(6),
      I1 => t4_diff1(7),
      O => t5_defective_pix8_carry_i_1_n_0
    );
t5_defective_pix8_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => t4_diff1(0),
      I1 => t4_diff1(1),
      O => t5_defective_pix8_carry_i_2_n_0
    );
t5_defective_pix8_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff1(6),
      I1 => t4_diff1(7),
      O => t5_defective_pix8_carry_i_3_n_0
    );
t5_defective_pix8_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff1(4),
      I1 => t4_diff1(5),
      O => t5_defective_pix8_carry_i_4_n_0
    );
t5_defective_pix8_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => t4_diff1(2),
      I1 => t4_diff1(3),
      O => t5_defective_pix8_carry_i_5_n_0
    );
t5_defective_pix8_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t4_diff1(0),
      I1 => t4_diff1(1),
      O => t5_defective_pix8_carry_i_6_n_0
    );
t5_defective_pix_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => t4_defective_pix,
      I1 => t5_defective_pix_i_2_n_0,
      I2 => t5_defective_pix2_carry_n_0,
      I3 => t5_defective_pix1_carry_n_0,
      I4 => t5_defective_pix4_carry_n_0,
      I5 => t5_defective_pix3_carry_n_0,
      O => t5_defective_pix_i_1_n_0
    );
t5_defective_pix_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => t5_defective_pix6_carry_n_0,
      I1 => t5_defective_pix5_carry_n_0,
      I2 => t5_defective_pix8_carry_n_0,
      I3 => t5_defective_pix7_carry_n_0,
      O => t5_defective_pix_i_2_n_0
    );
t5_defective_pix_reg: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => t5_defective_pix_i_1_n_0,
      Q => t5_defective_pix
    );
\t5_medium_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => t4_medium(0),
      Q => t5_medium(0)
    );
\t5_medium_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => t4_medium(1),
      Q => t5_medium(1)
    );
\t5_medium_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => t4_medium(2),
      Q => t5_medium(2)
    );
\t5_medium_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => t4_medium(3),
      Q => t5_medium(3)
    );
\t5_medium_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => t4_medium(4),
      Q => t5_medium(4)
    );
\t5_medium_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => t4_medium(5),
      Q => t5_medium(5)
    );
\t5_medium_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => t4_medium(6),
      Q => t5_medium(6)
    );
\t5_medium_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => t4_medium(7),
      Q => t5_medium(7)
    );
\t6_center[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => t5_medium(0),
      I1 => t5_center(0),
      I2 => t5_defective_pix,
      O => \t6_center[0]_i_1_n_0\
    );
\t6_center[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => t5_medium(1),
      I1 => t5_center(1),
      I2 => t5_defective_pix,
      O => \t6_center[1]_i_1_n_0\
    );
\t6_center[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => t5_medium(2),
      I1 => t5_center(2),
      I2 => t5_defective_pix,
      O => \t6_center[2]_i_1_n_0\
    );
\t6_center[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => t5_medium(3),
      I1 => t5_center(3),
      I2 => t5_defective_pix,
      O => \t6_center[3]_i_1_n_0\
    );
\t6_center[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => t5_medium(4),
      I1 => t5_center(4),
      I2 => t5_defective_pix,
      O => \t6_center[4]_i_1_n_0\
    );
\t6_center[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => t5_medium(5),
      I1 => t5_center(5),
      I2 => t5_defective_pix,
      O => \t6_center[5]_i_1_n_0\
    );
\t6_center[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => t5_medium(6),
      I1 => t5_center(6),
      I2 => t5_defective_pix,
      O => \t6_center[6]_i_1_n_0\
    );
\t6_center[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => t5_medium(7),
      I1 => t5_center(7),
      I2 => t5_defective_pix,
      O => \t6_center[7]_i_2_n_0\
    );
\t6_center_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t6_center[0]_i_1_n_0\,
      Q => m00_axis_tdata(0)
    );
\t6_center_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t6_center[1]_i_1_n_0\,
      Q => m00_axis_tdata(1)
    );
\t6_center_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t6_center[2]_i_1_n_0\,
      Q => m00_axis_tdata(2)
    );
\t6_center_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t6_center[3]_i_1_n_0\,
      Q => m00_axis_tdata(3)
    );
\t6_center_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t6_center[4]_i_1_n_0\,
      Q => m00_axis_tdata(4)
    );
\t6_center_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t6_center[5]_i_1_n_0\,
      Q => m00_axis_tdata(5)
    );
\t6_center_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t6_center[6]_i_1_n_0\,
      Q => m00_axis_tdata(6)
    );
\t6_center_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => \^shift_enable\,
      CLR => \t5_medium_reg[0]_0\,
      D => \t6_center[7]_i_2_n_0\,
      Q => m00_axis_tdata(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc_v1_0 is
  port (
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tuser : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tuser : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc_v1_0 is
  signal axis_dpc_inst_n_1 : STD_LOGIC;
  signal axis_dpc_inst_n_12 : STD_LOGIC;
  signal axis_dpc_inst_n_13 : STD_LOGIC;
  signal \axis_tlast_buf[9]_i_2_n_0\ : STD_LOGIC;
  signal \max_y_index_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \p35[5]_i_1_n_0\ : STD_LOGIC;
  signal shift_enable : STD_LOGIC;
  signal \shift_x_index_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \shift_y_index_int[11]_i_3_n_0\ : STD_LOGIC;
  signal \t3_diff1[8]_i_1_n_0\ : STD_LOGIC;
  signal \t6_center[7]_i_3_n_0\ : STD_LOGIC;
begin
axis_dpc_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc
     port map (
      axis_aclk => axis_aclk,
      axis_aresetn => axis_aresetn,
      \current_state_reg[0]\ => axis_dpc_inst_n_12,
      \current_state_reg[1]\ => \axis_tlast_buf[9]_i_2_n_0\,
      m00_axis_tdata(7 downto 0) => m00_axis_tdata(7 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tuser => m00_axis_tuser,
      m00_axis_tvalid => m00_axis_tvalid,
      \max_y_index_int_reg[10]\ => axis_dpc_inst_n_1,
      \max_y_index_int_reg[10]_0\ => \shift_y_index_int[11]_i_3_n_0\,
      \max_y_index_int_reg[10]_1\ => \max_y_index_int[10]_i_1_n_0\,
      s00_axis_tdata(7 downto 0) => s00_axis_tdata(7 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tuser => s00_axis_tuser,
      s00_axis_tvalid => s00_axis_tvalid,
      s00_axis_tvalid_0 => axis_dpc_inst_n_13,
      shift_enable => shift_enable,
      \shift_x_index_int_reg[0]\ => \shift_x_index_int[0]_i_2_n_0\,
      \t1_p6_reg[6]_0\ => \p35[5]_i_1_n_0\,
      \t3_diff4_reg[0]_0\ => \t3_diff1[8]_i_1_n_0\,
      \t5_medium_reg[0]_0\ => \t6_center[7]_i_3_n_0\
    );
\axis_tlast_buf[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => \axis_tlast_buf[9]_i_2_n_0\
    );
\max_y_index_int[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FF0008"
    )
        port map (
      I0 => shift_enable,
      I1 => s00_axis_tuser,
      I2 => axis_dpc_inst_n_13,
      I3 => axis_dpc_inst_n_12,
      I4 => axis_dpc_inst_n_1,
      O => \max_y_index_int[10]_i_1_n_0\
    );
\p35[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => \p35[5]_i_1_n_0\
    );
\shift_x_index_int[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => \shift_x_index_int[0]_i_2_n_0\
    );
\shift_y_index_int[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => \shift_y_index_int[11]_i_3_n_0\
    );
\t3_diff1[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => \t3_diff1[8]_i_1_n_0\
    );
\t6_center[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => \t6_center[7]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tuser : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tuser : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axis_dpc_0_0,axis_dpc_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axis_dpc_v1_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_aclk : signal is "xilinx.com:signal:clock:1.0 AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axis_aclk : signal is "XIL_INTERFACENAME AXIS_CLK, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF S00_AXIS:M00_AXIS, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TUSER";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TUSER";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dpc_v1_0
     port map (
      axis_aclk => axis_aclk,
      axis_aresetn => axis_aresetn,
      m00_axis_tdata(7 downto 0) => m00_axis_tdata(7 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tuser => m00_axis_tuser,
      m00_axis_tvalid => m00_axis_tvalid,
      s00_axis_tdata(7 downto 0) => s00_axis_tdata(7 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tuser => s00_axis_tuser,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
