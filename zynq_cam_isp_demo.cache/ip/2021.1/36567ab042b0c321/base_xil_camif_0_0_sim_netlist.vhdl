-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Oct  3 01:57:16 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_xil_camif_0_0_sim_netlist.vhdl
-- Design      : base_xil_camif_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvp_raw_timing_colorbar is
  port (
    dvp_vsync_reg_0 : out STD_LOGIC;
    dvp_href_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_xclk : in STD_LOGIC;
    module_reset : in STD_LOGIC;
    out_vsync_reg : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvp_raw_timing_colorbar;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvp_raw_timing_colorbar is
  signal dvp_href0 : STD_LOGIC;
  signal dvp_href_i_2_n_0 : STD_LOGIC;
  signal dvp_href_i_3_n_0 : STD_LOGIC;
  signal dvp_href_i_4_n_0 : STD_LOGIC;
  signal dvp_vsync0 : STD_LOGIC;
  signal gen_href : STD_LOGIC;
  signal gen_vsync : STD_LOGIC;
  signal line_cnt : STD_LOGIC;
  signal \line_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_5_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_6_n_0\ : STD_LOGIC;
  signal \line_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal pix_cnt : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal pix_cnt0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \pix_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal raw_data : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \raw_data[7]_i_10_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_11_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_12_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_13_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_14_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_15_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_16_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_17_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_18_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_19_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_20_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_21_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_22_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_23_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_24_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_25_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_26_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_27_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_7_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_8_n_0\ : STD_LOGIC;
  signal \raw_data[7]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_pix_cnt_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pix_cnt_reg[11]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dvp_href_i_4 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \line_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \line_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \line_cnt[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \line_cnt[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \line_cnt[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of out_href_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \out_raw[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_raw[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_raw[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \out_raw[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \out_raw[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_raw[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_raw[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \out_raw[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of out_vsync_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pix_cnt[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pix_cnt[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pix_cnt[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pix_cnt[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pix_cnt[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pix_cnt[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pix_cnt[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pix_cnt[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pix_cnt[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pix_cnt[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pix_cnt[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pix_cnt[9]_i_1\ : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[11]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \raw_data[7]_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \raw_data[7]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \raw_data[7]_i_15\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \raw_data[7]_i_17\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \raw_data[7]_i_18\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \raw_data[7]_i_21\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \raw_data[7]_i_22\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \raw_data[7]_i_24\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \raw_data[7]_i_25\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \raw_data[7]_i_26\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \raw_data[7]_i_27\ : label is "soft_lutpair6";
begin
dvp_href_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[3]\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt_reg_n_0_[4]\,
      I3 => dvp_href_i_2_n_0,
      I4 => dvp_href_i_3_n_0,
      O => dvp_href0
    );
dvp_href_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFCFFFFFFFE"
    )
        port map (
      I0 => pix_cnt(5),
      I1 => pix_cnt(9),
      I2 => pix_cnt(11),
      I3 => \pix_cnt[0]_i_5_n_0\,
      I4 => \pix_cnt[0]_i_4_n_0\,
      I5 => dvp_href_i_4_n_0,
      O => dvp_href_i_2_n_0
    );
dvp_href_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[5]\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt_reg_n_0_[9]\,
      I3 => \line_cnt_reg_n_0_[10]\,
      I4 => \line_cnt_reg_n_0_[8]\,
      I5 => \line_cnt_reg_n_0_[7]\,
      O => dvp_href_i_3_n_0
    );
dvp_href_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => pix_cnt(6),
      I1 => pix_cnt(7),
      O => dvp_href_i_4_n_0
    );
dvp_href_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => dvp_href0,
      Q => gen_href
    );
dvp_vsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111111001000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[4]\,
      I1 => dvp_href_i_3_n_0,
      I2 => \line_cnt_reg_n_0_[1]\,
      I3 => \line_cnt_reg_n_0_[2]\,
      I4 => \line_cnt_reg_n_0_[0]\,
      I5 => \line_cnt_reg_n_0_[3]\,
      O => dvp_vsync0
    );
dvp_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => dvp_vsync0,
      Q => gen_vsync
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00F1"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[5]\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt[0]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[0]\,
      I4 => \line_cnt[0]_i_3_n_0\,
      O => \line_cnt[0]_i_1_n_0\
    );
\line_cnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[8]\,
      I1 => \line_cnt_reg_n_0_[7]\,
      I2 => \line_cnt_reg_n_0_[9]\,
      O => \line_cnt[0]_i_2_n_0\
    );
\line_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555557F"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[10]\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt_reg_n_0_[3]\,
      I3 => \line_cnt_reg_n_0_[6]\,
      I4 => \line_cnt_reg_n_0_[4]\,
      I5 => \line_cnt_reg_n_0_[0]\,
      O => \line_cnt[0]_i_3_n_0\
    );
\line_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => pix_cnt(7),
      I1 => pix_cnt(6),
      I2 => pix_cnt(5),
      I3 => pix_cnt(9),
      I4 => \pix_cnt[0]_i_5_n_0\,
      I5 => \line_cnt[10]_i_3_n_0\,
      O => line_cnt
    );
\line_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \line_cnt[10]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[10]\,
      I2 => \line_cnt[10]_i_5_n_0\,
      I3 => \line_cnt_reg_n_0_[9]\,
      I4 => \line_cnt_reg_n_0_[7]\,
      I5 => \line_cnt_reg_n_0_[8]\,
      O => \line_cnt[10]_i_2_n_0\
    );
\line_cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => pix_cnt(3),
      I1 => pix_cnt(4),
      I2 => pix_cnt(2),
      I3 => pix_cnt(11),
      I4 => pix_cnt(1),
      I5 => pix_cnt(0),
      O => \line_cnt[10]_i_3_n_0\
    );
\line_cnt[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFFFFFF7FFF"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[9]\,
      I1 => \line_cnt_reg_n_0_[7]\,
      I2 => \line_cnt_reg_n_0_[8]\,
      I3 => \line_cnt_reg_n_0_[10]\,
      I4 => \line_cnt[10]_i_6_n_0\,
      I5 => \line_cnt_reg_n_0_[6]\,
      O => \line_cnt[10]_i_4_n_0\
    );
\line_cnt[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[5]\,
      I1 => \line_cnt[5]_i_2_n_0\,
      I2 => \line_cnt_reg_n_0_[2]\,
      I3 => \line_cnt_reg_n_0_[3]\,
      I4 => \line_cnt_reg_n_0_[4]\,
      I5 => \line_cnt_reg_n_0_[6]\,
      O => \line_cnt[10]_i_5_n_0\
    );
\line_cnt[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01115555FFFFFFFF"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[4]\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt_reg_n_0_[0]\,
      I3 => \line_cnt_reg_n_0_[1]\,
      I4 => \line_cnt_reg_n_0_[3]\,
      I5 => \line_cnt_reg_n_0_[5]\,
      O => \line_cnt[10]_i_6_n_0\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \line_cnt[10]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[1]\,
      I2 => \line_cnt_reg_n_0_[0]\,
      O => \line_cnt[1]_i_1_n_0\
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \line_cnt[10]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt_reg_n_0_[0]\,
      I3 => \line_cnt_reg_n_0_[1]\,
      O => \line_cnt[2]_i_1_n_0\
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \line_cnt[10]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[3]\,
      I2 => \line_cnt_reg_n_0_[2]\,
      I3 => \line_cnt_reg_n_0_[1]\,
      I4 => \line_cnt_reg_n_0_[0]\,
      O => \line_cnt[3]_i_1_n_0\
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \line_cnt[10]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[4]\,
      I2 => \line_cnt_reg_n_0_[3]\,
      I3 => \line_cnt_reg_n_0_[2]\,
      I4 => \line_cnt_reg_n_0_[1]\,
      I5 => \line_cnt_reg_n_0_[0]\,
      O => \line_cnt[4]_i_1_n_0\
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8288888888888888"
    )
        port map (
      I0 => \line_cnt[10]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[5]\,
      I2 => \line_cnt[5]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[2]\,
      I4 => \line_cnt_reg_n_0_[3]\,
      I5 => \line_cnt_reg_n_0_[4]\,
      O => \line_cnt[5]_i_1_n_0\
    );
\line_cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[0]\,
      I1 => \line_cnt_reg_n_0_[1]\,
      O => \line_cnt[5]_i_2_n_0\
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \line_cnt[10]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt[6]_i_2_n_0\,
      O => \line_cnt[6]_i_1_n_0\
    );
\line_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[4]\,
      I1 => \line_cnt_reg_n_0_[3]\,
      I2 => \line_cnt_reg_n_0_[2]\,
      I3 => \line_cnt_reg_n_0_[1]\,
      I4 => \line_cnt_reg_n_0_[0]\,
      I5 => \line_cnt_reg_n_0_[5]\,
      O => \line_cnt[6]_i_2_n_0\
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \line_cnt[10]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[7]\,
      I2 => \line_cnt[10]_i_5_n_0\,
      O => \line_cnt[7]_i_1_n_0\
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \line_cnt[10]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[8]\,
      I2 => \line_cnt[10]_i_5_n_0\,
      I3 => \line_cnt_reg_n_0_[7]\,
      O => \line_cnt[8]_i_1_n_0\
    );
\line_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \line_cnt[10]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[9]\,
      I2 => \line_cnt[10]_i_5_n_0\,
      I3 => \line_cnt_reg_n_0_[8]\,
      I4 => \line_cnt_reg_n_0_[7]\,
      O => \line_cnt[9]_i_1_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[0]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[0]\
    );
\line_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[10]_i_2_n_0\,
      Q => \line_cnt_reg_n_0_[10]\
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[1]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[1]\
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[2]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[2]\
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[3]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[3]\
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[4]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[4]\
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[5]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[5]\
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[6]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[6]\
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[7]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[7]\
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[8]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[8]\
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => line_cnt,
      CLR => module_reset,
      D => \line_cnt[9]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[9]\
    );
out_href_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => gen_href,
      I1 => out_vsync_reg,
      I2 => cam_href,
      O => dvp_href_reg_0
    );
\out_raw[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => gen_href,
      I1 => raw_data(7),
      I2 => out_vsync_reg,
      I3 => cam_data(0),
      O => D(0)
    );
\out_raw[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => gen_href,
      I1 => raw_data(7),
      I2 => out_vsync_reg,
      I3 => cam_data(1),
      O => D(1)
    );
\out_raw[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => gen_href,
      I1 => raw_data(7),
      I2 => out_vsync_reg,
      I3 => cam_data(2),
      O => D(2)
    );
\out_raw[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => gen_href,
      I1 => raw_data(7),
      I2 => out_vsync_reg,
      I3 => cam_data(3),
      O => D(3)
    );
\out_raw[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => gen_href,
      I1 => raw_data(7),
      I2 => out_vsync_reg,
      I3 => cam_data(4),
      O => D(4)
    );
\out_raw[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => gen_href,
      I1 => raw_data(7),
      I2 => out_vsync_reg,
      I3 => cam_data(5),
      O => D(5)
    );
\out_raw[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => gen_href,
      I1 => raw_data(7),
      I2 => out_vsync_reg,
      I3 => cam_data(6),
      O => D(6)
    );
\out_raw[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => gen_href,
      I1 => raw_data(7),
      I2 => out_vsync_reg,
      I3 => cam_data(7),
      O => D(7)
    );
out_vsync_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => gen_vsync,
      I1 => out_vsync_reg,
      I2 => cam_vsync,
      O => dvp_vsync_reg_0
    );
\pix_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDDDFDFF"
    )
        port map (
      I0 => pix_cnt(11),
      I1 => \pix_cnt[0]_i_2_n_0\,
      I2 => \pix_cnt[0]_i_3_n_0\,
      I3 => \pix_cnt[0]_i_4_n_0\,
      I4 => \pix_cnt[0]_i_5_n_0\,
      I5 => pix_cnt(0),
      O => p_0_in(0)
    );
\pix_cnt[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pix_cnt(9),
      I1 => pix_cnt(10),
      O => \pix_cnt[0]_i_2_n_0\
    );
\pix_cnt[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => pix_cnt(7),
      I1 => pix_cnt(6),
      I2 => pix_cnt(5),
      O => \pix_cnt[0]_i_3_n_0\
    );
\pix_cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pix_cnt(3),
      I1 => pix_cnt(4),
      O => \pix_cnt[0]_i_4_n_0\
    );
\pix_cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pix_cnt(8),
      I1 => pix_cnt(10),
      O => \pix_cnt[0]_i_5_n_0\
    );
\pix_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(10),
      O => p_0_in(10)
    );
\pix_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(11),
      O => p_0_in(11)
    );
\pix_cnt[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5555DDFD"
    )
        port map (
      I0 => pix_cnt(11),
      I1 => \pix_cnt[0]_i_3_n_0\,
      I2 => \pix_cnt[11]_i_4_n_0\,
      I3 => \pix_cnt[0]_i_4_n_0\,
      I4 => \pix_cnt[0]_i_5_n_0\,
      I5 => \pix_cnt[11]_i_5_n_0\,
      O => \pix_cnt[11]_i_2_n_0\
    );
\pix_cnt[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => pix_cnt(0),
      I1 => pix_cnt(1),
      O => \pix_cnt[11]_i_4_n_0\
    );
\pix_cnt[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000010000FFFF"
    )
        port map (
      I0 => pix_cnt(3),
      I1 => pix_cnt(4),
      I2 => pix_cnt(8),
      I3 => pix_cnt(2),
      I4 => pix_cnt(10),
      I5 => pix_cnt(9),
      O => \pix_cnt[11]_i_5_n_0\
    );
\pix_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(1),
      O => p_0_in(1)
    );
\pix_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(2),
      O => p_0_in(2)
    );
\pix_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(3),
      O => p_0_in(3)
    );
\pix_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(4),
      O => p_0_in(4)
    );
\pix_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(5),
      O => p_0_in(5)
    );
\pix_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(6),
      O => p_0_in(6)
    );
\pix_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(7),
      O => p_0_in(7)
    );
\pix_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(8),
      O => p_0_in(8)
    );
\pix_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pix_cnt[11]_i_2_n_0\,
      I1 => pix_cnt0(9),
      O => p_0_in(9)
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(0),
      Q => pix_cnt(0)
    );
\pix_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(10),
      Q => pix_cnt(10)
    );
\pix_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(11),
      Q => pix_cnt(11)
    );
\pix_cnt_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_pix_cnt_reg[11]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pix_cnt_reg[11]_i_3_n_2\,
      CO(0) => \pix_cnt_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_pix_cnt_reg[11]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => pix_cnt0(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => pix_cnt(11 downto 9)
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(1),
      Q => pix_cnt(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(2),
      Q => pix_cnt(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(3),
      Q => pix_cnt(3)
    );
\pix_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(4),
      Q => pix_cnt(4)
    );
\pix_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_cnt_reg[4]_i_2_n_0\,
      CO(2) => \pix_cnt_reg[4]_i_2_n_1\,
      CO(1) => \pix_cnt_reg[4]_i_2_n_2\,
      CO(0) => \pix_cnt_reg[4]_i_2_n_3\,
      CYINIT => pix_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pix_cnt0(4 downto 1),
      S(3 downto 0) => pix_cnt(4 downto 1)
    );
\pix_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(5),
      Q => pix_cnt(5)
    );
\pix_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(6),
      Q => pix_cnt(6)
    );
\pix_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(7),
      Q => pix_cnt(7)
    );
\pix_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(8),
      Q => pix_cnt(8)
    );
\pix_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_reg[4]_i_2_n_0\,
      CO(3) => \pix_cnt_reg[8]_i_2_n_0\,
      CO(2) => \pix_cnt_reg[8]_i_2_n_1\,
      CO(1) => \pix_cnt_reg[8]_i_2_n_2\,
      CO(0) => \pix_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pix_cnt0(8 downto 5),
      S(3 downto 0) => pix_cnt(8 downto 5)
    );
\pix_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => p_0_in(9),
      Q => pix_cnt(9)
    );
\raw_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \raw_data[7]_i_2_n_0\,
      I1 => \raw_data[7]_i_3_n_0\,
      I2 => \raw_data[7]_i_4_n_0\,
      I3 => \raw_data[7]_i_5_n_0\,
      I4 => \raw_data[7]_i_6_n_0\,
      I5 => \raw_data[7]_i_7_n_0\,
      O => \raw_data[7]_i_1_n_0\
    );
\raw_data[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFF5555FFEA"
    )
        port map (
      I0 => pix_cnt(6),
      I1 => pix_cnt(3),
      I2 => pix_cnt(2),
      I3 => pix_cnt(4),
      I4 => pix_cnt(5),
      I5 => pix_cnt(7),
      O => \raw_data[7]_i_10_n_0\
    );
\raw_data[7]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pix_cnt(9),
      I1 => pix_cnt(10),
      I2 => pix_cnt(8),
      O => \raw_data[7]_i_11_n_0\
    );
\raw_data[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pix_cnt(0),
      I1 => \line_cnt_reg_n_0_[0]\,
      O => \raw_data[7]_i_12_n_0\
    );
\raw_data[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440444044404040"
    )
        port map (
      I0 => pix_cnt(6),
      I1 => pix_cnt(7),
      I2 => pix_cnt(5),
      I3 => pix_cnt(4),
      I4 => pix_cnt(3),
      I5 => pix_cnt(2),
      O => \raw_data[7]_i_13_n_0\
    );
\raw_data[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77777FFF88888888"
    )
        port map (
      I0 => pix_cnt(6),
      I1 => pix_cnt(7),
      I2 => pix_cnt(3),
      I3 => pix_cnt(4),
      I4 => pix_cnt(5),
      I5 => pix_cnt(8),
      O => \raw_data[7]_i_14_n_0\
    );
\raw_data[7]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101010"
    )
        port map (
      I0 => pix_cnt(9),
      I1 => pix_cnt(11),
      I2 => pix_cnt(10),
      I3 => \line_cnt_reg_n_0_[0]\,
      I4 => pix_cnt(0),
      O => \raw_data[7]_i_15_n_0\
    );
\raw_data[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001FFFFFFFFF"
    )
        port map (
      I0 => pix_cnt(3),
      I1 => pix_cnt(2),
      I2 => pix_cnt(4),
      I3 => pix_cnt(5),
      I4 => pix_cnt(6),
      I5 => pix_cnt(7),
      O => \raw_data[7]_i_16_n_0\
    );
\raw_data[7]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8000000"
    )
        port map (
      I0 => pix_cnt(3),
      I1 => pix_cnt(4),
      I2 => pix_cnt(5),
      I3 => pix_cnt(6),
      I4 => pix_cnt(7),
      O => \raw_data[7]_i_17_n_0\
    );
\raw_data[7]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pix_cnt(10),
      I1 => pix_cnt(11),
      I2 => pix_cnt(9),
      O => \raw_data[7]_i_18_n_0\
    );
\raw_data[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666616166606161"
    )
        port map (
      I0 => pix_cnt(0),
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => pix_cnt(7),
      I3 => pix_cnt(4),
      I4 => pix_cnt(6),
      I5 => pix_cnt(5),
      O => \raw_data[7]_i_19_n_0\
    );
\raw_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA00000EAAC0000"
    )
        port map (
      I0 => \raw_data[7]_i_8_n_0\,
      I1 => \raw_data[7]_i_9_n_0\,
      I2 => pix_cnt(0),
      I3 => \line_cnt_reg_n_0_[0]\,
      I4 => pix_cnt(11),
      I5 => \pix_cnt[0]_i_5_n_0\,
      O => \raw_data[7]_i_2_n_0\
    );
\raw_data[7]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt(9),
      I1 => pix_cnt(11),
      O => \raw_data[7]_i_20_n_0\
    );
\raw_data[7]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => pix_cnt(7),
      I1 => pix_cnt(5),
      I2 => pix_cnt(4),
      O => \raw_data[7]_i_21_n_0\
    );
\raw_data[7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => pix_cnt(0),
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => pix_cnt(6),
      I3 => pix_cnt(11),
      I4 => pix_cnt(9),
      O => \raw_data[7]_i_22_n_0\
    );
\raw_data[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => pix_cnt(6),
      I1 => pix_cnt(5),
      I2 => pix_cnt(7),
      I3 => pix_cnt(2),
      I4 => pix_cnt(3),
      I5 => pix_cnt(4),
      O => \raw_data[7]_i_23_n_0\
    );
\raw_data[7]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => pix_cnt(8),
      I1 => pix_cnt(10),
      I2 => pix_cnt(9),
      I3 => pix_cnt(11),
      O => \raw_data[7]_i_24_n_0\
    );
\raw_data[7]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => pix_cnt(7),
      I1 => pix_cnt(5),
      I2 => pix_cnt(2),
      I3 => pix_cnt(3),
      I4 => pix_cnt(4),
      O => \raw_data[7]_i_25_n_0\
    );
\raw_data[7]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[0]\,
      I1 => pix_cnt(0),
      I2 => pix_cnt(7),
      I3 => pix_cnt(6),
      O => \raw_data[7]_i_26_n_0\
    );
\raw_data[7]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => pix_cnt(9),
      I1 => pix_cnt(11),
      I2 => pix_cnt(10),
      I3 => pix_cnt(8),
      O => \raw_data[7]_i_27_n_0\
    );
\raw_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0808080808"
    )
        port map (
      I0 => \raw_data[7]_i_10_n_0\,
      I1 => \raw_data[7]_i_11_n_0\,
      I2 => \raw_data[7]_i_12_n_0\,
      I3 => \raw_data[7]_i_13_n_0\,
      I4 => \raw_data[7]_i_14_n_0\,
      I5 => \raw_data[7]_i_15_n_0\,
      O => \raw_data[7]_i_3_n_0\
    );
\raw_data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0000AA000000000"
    )
        port map (
      I0 => \raw_data[7]_i_16_n_0\,
      I1 => \raw_data[7]_i_17_n_0\,
      I2 => pix_cnt(0),
      I3 => \line_cnt_reg_n_0_[0]\,
      I4 => pix_cnt(8),
      I5 => \raw_data[7]_i_18_n_0\,
      O => \raw_data[7]_i_4_n_0\
    );
\raw_data[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008F00FF00880000"
    )
        port map (
      I0 => \raw_data[7]_i_19_n_0\,
      I1 => \raw_data[7]_i_20_n_0\,
      I2 => \raw_data[7]_i_21_n_0\,
      I3 => pix_cnt(10),
      I4 => pix_cnt(8),
      I5 => \raw_data[7]_i_22_n_0\,
      O => \raw_data[7]_i_5_n_0\
    );
\raw_data[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008800080008000"
    )
        port map (
      I0 => pix_cnt(10),
      I1 => \raw_data[7]_i_20_n_0\,
      I2 => pix_cnt(0),
      I3 => \line_cnt_reg_n_0_[0]\,
      I4 => pix_cnt(8),
      I5 => \raw_data[7]_i_23_n_0\,
      O => \raw_data[7]_i_6_n_0\
    );
\raw_data[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7070707070"
    )
        port map (
      I0 => \pix_cnt[0]_i_4_n_0\,
      I1 => pix_cnt(7),
      I2 => \raw_data[7]_i_24_n_0\,
      I3 => \raw_data[7]_i_25_n_0\,
      I4 => \raw_data[7]_i_26_n_0\,
      I5 => \raw_data[7]_i_27_n_0\,
      O => \raw_data[7]_i_7_n_0\
    );
\raw_data[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000222F222"
    )
        port map (
      I0 => pix_cnt(7),
      I1 => pix_cnt(8),
      I2 => pix_cnt(5),
      I3 => pix_cnt(6),
      I4 => pix_cnt(9),
      I5 => pix_cnt(10),
      O => \raw_data[7]_i_8_n_0\
    );
\raw_data[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => pix_cnt(6),
      I1 => pix_cnt(7),
      I2 => pix_cnt(5),
      O => \raw_data[7]_i_9_n_0\
    );
\raw_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => cam_xclk,
      CE => '1',
      CLR => module_reset,
      D => \raw_data[7]_i_1_n_0\,
      Q => raw_data(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0_S00_AXI is
  port (
    cam_pclk_0 : out STD_LOGIC;
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    out_raw : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_xclk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^cam_pclk_0\ : STD_LOGIC;
  signal colorbar_en_i_1_n_0 : STD_LOGIC;
  signal colorbar_en_reg_n_0 : STD_LOGIC;
  signal dvp_colorbar_timing_generator_n_0 : STD_LOGIC;
  signal dvp_colorbar_timing_generator_n_1 : STD_LOGIC;
  signal dvp_colorbar_timing_generator_n_2 : STD_LOGIC;
  signal dvp_colorbar_timing_generator_n_3 : STD_LOGIC;
  signal dvp_colorbar_timing_generator_n_4 : STD_LOGIC;
  signal dvp_colorbar_timing_generator_n_5 : STD_LOGIC;
  signal dvp_colorbar_timing_generator_n_6 : STD_LOGIC;
  signal dvp_colorbar_timing_generator_n_7 : STD_LOGIC;
  signal dvp_colorbar_timing_generator_n_8 : STD_LOGIC;
  signal dvp_colorbar_timing_generator_n_9 : STD_LOGIC;
  signal \dvp_frame_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal dvp_frame_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \dvp_frame_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \dvp_frame_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal dvp_height : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dvp_width : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dvp_width0 : STD_LOGIC;
  signal int_frame_done_i_1_n_0 : STD_LOGIC;
  signal int_frame_start : STD_LOGIC;
  signal int_frame_start_i_1_n_0 : STD_LOGIC;
  signal int_mask_frame_done_i_1_n_0 : STD_LOGIC;
  signal int_mask_frame_start_i_1_n_0 : STD_LOGIC;
  signal \line_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \line_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \line_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \line_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal line_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \line_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \line_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \line_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \line_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \line_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \line_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \line_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \line_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \line_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \line_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \line_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \line_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \line_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \line_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \line_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \line_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \line_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \line_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \line_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \line_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \line_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal module_reset : STD_LOGIC;
  signal module_reset_i_1_n_0 : STD_LOGIC;
  signal \^out_href\ : STD_LOGIC;
  signal \^out_vsync\ : STD_LOGIC;
  signal out_vsync_prev : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pix_cnt[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \pix_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal pix_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pix_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pix_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pix_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pix_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal prev_href : STD_LOGIC;
  signal prev_vsync : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal \NLW_dvp_frame_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_line_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pix_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_rdata[19]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair31";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \dvp_frame_cnt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dvp_frame_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dvp_frame_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dvp_frame_cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dvp_frame_cnt_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dvp_frame_cnt_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dvp_frame_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dvp_frame_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of int_frame_done_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of int_frame_start_i_1 : label is "soft_lutpair29";
  attribute ADDER_THRESHOLD of \line_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \line_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \line_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \line_cnt_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[8]_i_1\ : label is 11;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  cam_pclk_0 <= \^cam_pclk_0\;
  out_href <= \^out_href\;
  out_vsync <= \^out_vsync\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => p_0_in_0(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => p_0_in_0(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => p_0_in_0(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in_0(2),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dvp_frame_cnt_reg(0),
      I1 => dvp_height(0),
      I2 => sel0(1),
      I3 => dvp_width(0),
      I4 => sel0(0),
      I5 => module_reset,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_1_in(0),
      I1 => sel0(1),
      I2 => p_2_in(0),
      I3 => sel0(0),
      I4 => colorbar_en_reg_n_0,
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(10),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(10),
      I4 => dvp_frame_cnt_reg(10),
      I5 => sel0(2),
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(11),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(11),
      I4 => dvp_frame_cnt_reg(11),
      I5 => sel0(2),
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(12),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(12),
      I4 => dvp_frame_cnt_reg(12),
      I5 => sel0(2),
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(13),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(13),
      I4 => dvp_frame_cnt_reg(13),
      I5 => sel0(2),
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(14),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(14),
      I4 => dvp_frame_cnt_reg(14),
      I5 => sel0(2),
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(15),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(15),
      I4 => dvp_frame_cnt_reg(15),
      I5 => sel0(2),
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(16),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(17),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(18),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(19),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => p_1_in(1),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => p_2_in(1),
      I4 => sel0(2),
      I5 => \axi_rdata[1]_i_2_n_0\,
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => dvp_frame_cnt_reg(1),
      I1 => dvp_height(1),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => dvp_width(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(20),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(21),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(22),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(23),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(24),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(25),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(26),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(27),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(28),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(29),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(2),
      I4 => dvp_frame_cnt_reg(2),
      I5 => sel0(2),
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(30),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel0(0),
      I1 => dvp_frame_cnt_reg(31),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(3),
      I4 => dvp_frame_cnt_reg(3),
      I5 => sel0(2),
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(4),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(4),
      I4 => dvp_frame_cnt_reg(4),
      I5 => sel0(2),
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(5),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(5),
      I4 => dvp_frame_cnt_reg(5),
      I5 => sel0(2),
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(6),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(6),
      I4 => dvp_frame_cnt_reg(6),
      I5 => sel0(2),
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(7),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(7),
      I4 => dvp_frame_cnt_reg(7),
      I5 => sel0(2),
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(8),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(8),
      I4 => dvp_frame_cnt_reg(8),
      I5 => sel0(2),
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C83808"
    )
        port map (
      I0 => dvp_width(9),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => dvp_height(9),
      I4 => dvp_frame_cnt_reg(9),
      I5 => sel0(2),
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      O => reg_data_out(0),
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[31]_i_1_n_0\,
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
colorbar_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => \slv_reg_wren__2\,
      I5 => colorbar_en_reg_n_0,
      O => colorbar_en_i_1_n_0
    );
colorbar_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => colorbar_en_i_1_n_0,
      Q => colorbar_en_reg_n_0,
      R => axi_awready_i_1_n_0
    );
dvp_colorbar_timing_generator: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvp_raw_timing_colorbar
     port map (
      D(7) => dvp_colorbar_timing_generator_n_2,
      D(6) => dvp_colorbar_timing_generator_n_3,
      D(5) => dvp_colorbar_timing_generator_n_4,
      D(4) => dvp_colorbar_timing_generator_n_5,
      D(3) => dvp_colorbar_timing_generator_n_6,
      D(2) => dvp_colorbar_timing_generator_n_7,
      D(1) => dvp_colorbar_timing_generator_n_8,
      D(0) => dvp_colorbar_timing_generator_n_9,
      cam_data(7 downto 0) => cam_data(7 downto 0),
      cam_href => cam_href,
      cam_vsync => cam_vsync,
      cam_xclk => cam_xclk,
      dvp_href_reg_0 => dvp_colorbar_timing_generator_n_1,
      dvp_vsync_reg_0 => dvp_colorbar_timing_generator_n_0,
      module_reset => module_reset,
      out_vsync_reg => colorbar_en_reg_n_0
    );
\dvp_frame_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dvp_frame_cnt_reg(0),
      O => \dvp_frame_cnt[0]_i_2_n_0\
    );
\dvp_frame_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[0]_i_1_n_7\,
      Q => dvp_frame_cnt_reg(0)
    );
\dvp_frame_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dvp_frame_cnt_reg[0]_i_1_n_0\,
      CO(2) => \dvp_frame_cnt_reg[0]_i_1_n_1\,
      CO(1) => \dvp_frame_cnt_reg[0]_i_1_n_2\,
      CO(0) => \dvp_frame_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \dvp_frame_cnt_reg[0]_i_1_n_4\,
      O(2) => \dvp_frame_cnt_reg[0]_i_1_n_5\,
      O(1) => \dvp_frame_cnt_reg[0]_i_1_n_6\,
      O(0) => \dvp_frame_cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => dvp_frame_cnt_reg(3 downto 1),
      S(0) => \dvp_frame_cnt[0]_i_2_n_0\
    );
\dvp_frame_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[8]_i_1_n_5\,
      Q => dvp_frame_cnt_reg(10)
    );
\dvp_frame_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[8]_i_1_n_4\,
      Q => dvp_frame_cnt_reg(11)
    );
\dvp_frame_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[12]_i_1_n_7\,
      Q => dvp_frame_cnt_reg(12)
    );
\dvp_frame_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dvp_frame_cnt_reg[8]_i_1_n_0\,
      CO(3) => \dvp_frame_cnt_reg[12]_i_1_n_0\,
      CO(2) => \dvp_frame_cnt_reg[12]_i_1_n_1\,
      CO(1) => \dvp_frame_cnt_reg[12]_i_1_n_2\,
      CO(0) => \dvp_frame_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dvp_frame_cnt_reg[12]_i_1_n_4\,
      O(2) => \dvp_frame_cnt_reg[12]_i_1_n_5\,
      O(1) => \dvp_frame_cnt_reg[12]_i_1_n_6\,
      O(0) => \dvp_frame_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => dvp_frame_cnt_reg(15 downto 12)
    );
\dvp_frame_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[12]_i_1_n_6\,
      Q => dvp_frame_cnt_reg(13)
    );
\dvp_frame_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[12]_i_1_n_5\,
      Q => dvp_frame_cnt_reg(14)
    );
\dvp_frame_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[12]_i_1_n_4\,
      Q => dvp_frame_cnt_reg(15)
    );
\dvp_frame_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[16]_i_1_n_7\,
      Q => dvp_frame_cnt_reg(16)
    );
\dvp_frame_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dvp_frame_cnt_reg[12]_i_1_n_0\,
      CO(3) => \dvp_frame_cnt_reg[16]_i_1_n_0\,
      CO(2) => \dvp_frame_cnt_reg[16]_i_1_n_1\,
      CO(1) => \dvp_frame_cnt_reg[16]_i_1_n_2\,
      CO(0) => \dvp_frame_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dvp_frame_cnt_reg[16]_i_1_n_4\,
      O(2) => \dvp_frame_cnt_reg[16]_i_1_n_5\,
      O(1) => \dvp_frame_cnt_reg[16]_i_1_n_6\,
      O(0) => \dvp_frame_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => dvp_frame_cnt_reg(19 downto 16)
    );
\dvp_frame_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[16]_i_1_n_6\,
      Q => dvp_frame_cnt_reg(17)
    );
\dvp_frame_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[16]_i_1_n_5\,
      Q => dvp_frame_cnt_reg(18)
    );
\dvp_frame_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[16]_i_1_n_4\,
      Q => dvp_frame_cnt_reg(19)
    );
\dvp_frame_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[0]_i_1_n_6\,
      Q => dvp_frame_cnt_reg(1)
    );
\dvp_frame_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[20]_i_1_n_7\,
      Q => dvp_frame_cnt_reg(20)
    );
\dvp_frame_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dvp_frame_cnt_reg[16]_i_1_n_0\,
      CO(3) => \dvp_frame_cnt_reg[20]_i_1_n_0\,
      CO(2) => \dvp_frame_cnt_reg[20]_i_1_n_1\,
      CO(1) => \dvp_frame_cnt_reg[20]_i_1_n_2\,
      CO(0) => \dvp_frame_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dvp_frame_cnt_reg[20]_i_1_n_4\,
      O(2) => \dvp_frame_cnt_reg[20]_i_1_n_5\,
      O(1) => \dvp_frame_cnt_reg[20]_i_1_n_6\,
      O(0) => \dvp_frame_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => dvp_frame_cnt_reg(23 downto 20)
    );
\dvp_frame_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[20]_i_1_n_6\,
      Q => dvp_frame_cnt_reg(21)
    );
\dvp_frame_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[20]_i_1_n_5\,
      Q => dvp_frame_cnt_reg(22)
    );
\dvp_frame_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[20]_i_1_n_4\,
      Q => dvp_frame_cnt_reg(23)
    );
\dvp_frame_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[24]_i_1_n_7\,
      Q => dvp_frame_cnt_reg(24)
    );
\dvp_frame_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dvp_frame_cnt_reg[20]_i_1_n_0\,
      CO(3) => \dvp_frame_cnt_reg[24]_i_1_n_0\,
      CO(2) => \dvp_frame_cnt_reg[24]_i_1_n_1\,
      CO(1) => \dvp_frame_cnt_reg[24]_i_1_n_2\,
      CO(0) => \dvp_frame_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dvp_frame_cnt_reg[24]_i_1_n_4\,
      O(2) => \dvp_frame_cnt_reg[24]_i_1_n_5\,
      O(1) => \dvp_frame_cnt_reg[24]_i_1_n_6\,
      O(0) => \dvp_frame_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => dvp_frame_cnt_reg(27 downto 24)
    );
\dvp_frame_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[24]_i_1_n_6\,
      Q => dvp_frame_cnt_reg(25)
    );
\dvp_frame_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[24]_i_1_n_5\,
      Q => dvp_frame_cnt_reg(26)
    );
\dvp_frame_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[24]_i_1_n_4\,
      Q => dvp_frame_cnt_reg(27)
    );
\dvp_frame_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[28]_i_1_n_7\,
      Q => dvp_frame_cnt_reg(28)
    );
\dvp_frame_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dvp_frame_cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_dvp_frame_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \dvp_frame_cnt_reg[28]_i_1_n_1\,
      CO(1) => \dvp_frame_cnt_reg[28]_i_1_n_2\,
      CO(0) => \dvp_frame_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dvp_frame_cnt_reg[28]_i_1_n_4\,
      O(2) => \dvp_frame_cnt_reg[28]_i_1_n_5\,
      O(1) => \dvp_frame_cnt_reg[28]_i_1_n_6\,
      O(0) => \dvp_frame_cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => dvp_frame_cnt_reg(31 downto 28)
    );
\dvp_frame_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[28]_i_1_n_6\,
      Q => dvp_frame_cnt_reg(29)
    );
\dvp_frame_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[0]_i_1_n_5\,
      Q => dvp_frame_cnt_reg(2)
    );
\dvp_frame_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[28]_i_1_n_5\,
      Q => dvp_frame_cnt_reg(30)
    );
\dvp_frame_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[28]_i_1_n_4\,
      Q => dvp_frame_cnt_reg(31)
    );
\dvp_frame_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[0]_i_1_n_4\,
      Q => dvp_frame_cnt_reg(3)
    );
\dvp_frame_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[4]_i_1_n_7\,
      Q => dvp_frame_cnt_reg(4)
    );
\dvp_frame_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dvp_frame_cnt_reg[0]_i_1_n_0\,
      CO(3) => \dvp_frame_cnt_reg[4]_i_1_n_0\,
      CO(2) => \dvp_frame_cnt_reg[4]_i_1_n_1\,
      CO(1) => \dvp_frame_cnt_reg[4]_i_1_n_2\,
      CO(0) => \dvp_frame_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dvp_frame_cnt_reg[4]_i_1_n_4\,
      O(2) => \dvp_frame_cnt_reg[4]_i_1_n_5\,
      O(1) => \dvp_frame_cnt_reg[4]_i_1_n_6\,
      O(0) => \dvp_frame_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => dvp_frame_cnt_reg(7 downto 4)
    );
\dvp_frame_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[4]_i_1_n_6\,
      Q => dvp_frame_cnt_reg(5)
    );
\dvp_frame_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[4]_i_1_n_5\,
      Q => dvp_frame_cnt_reg(6)
    );
\dvp_frame_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[4]_i_1_n_4\,
      Q => dvp_frame_cnt_reg(7)
    );
\dvp_frame_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[8]_i_1_n_7\,
      Q => dvp_frame_cnt_reg(8)
    );
\dvp_frame_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dvp_frame_cnt_reg[4]_i_1_n_0\,
      CO(3) => \dvp_frame_cnt_reg[8]_i_1_n_0\,
      CO(2) => \dvp_frame_cnt_reg[8]_i_1_n_1\,
      CO(1) => \dvp_frame_cnt_reg[8]_i_1_n_2\,
      CO(0) => \dvp_frame_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dvp_frame_cnt_reg[8]_i_1_n_4\,
      O(2) => \dvp_frame_cnt_reg[8]_i_1_n_5\,
      O(1) => \dvp_frame_cnt_reg[8]_i_1_n_6\,
      O(0) => \dvp_frame_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => dvp_frame_cnt_reg(11 downto 8)
    );
\dvp_frame_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => \dvp_frame_cnt_reg[8]_i_1_n_6\,
      Q => dvp_frame_cnt_reg(9)
    );
\dvp_height_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(0),
      Q => dvp_height(0)
    );
\dvp_height_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(10),
      Q => dvp_height(10)
    );
\dvp_height_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(11),
      Q => dvp_height(11)
    );
\dvp_height_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(12),
      Q => dvp_height(12)
    );
\dvp_height_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(13),
      Q => dvp_height(13)
    );
\dvp_height_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(14),
      Q => dvp_height(14)
    );
\dvp_height_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(15),
      Q => dvp_height(15)
    );
\dvp_height_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(1),
      Q => dvp_height(1)
    );
\dvp_height_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(2),
      Q => dvp_height(2)
    );
\dvp_height_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(3),
      Q => dvp_height(3)
    );
\dvp_height_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(4),
      Q => dvp_height(4)
    );
\dvp_height_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(5),
      Q => dvp_height(5)
    );
\dvp_height_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(6),
      Q => dvp_height(6)
    );
\dvp_height_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(7),
      Q => dvp_height(7)
    );
\dvp_height_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(8),
      Q => dvp_height(8)
    );
\dvp_height_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => line_cnt_reg(9),
      Q => dvp_height(9)
    );
\dvp_width[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out_vsync\,
      I1 => prev_vsync,
      O => dvp_width0
    );
\dvp_width_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(0),
      Q => dvp_width(0)
    );
\dvp_width_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(10),
      Q => dvp_width(10)
    );
\dvp_width_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(11),
      Q => dvp_width(11)
    );
\dvp_width_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(12),
      Q => dvp_width(12)
    );
\dvp_width_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(13),
      Q => dvp_width(13)
    );
\dvp_width_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(14),
      Q => dvp_width(14)
    );
\dvp_width_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(15),
      Q => dvp_width(15)
    );
\dvp_width_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(1),
      Q => dvp_width(1)
    );
\dvp_width_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(2),
      Q => dvp_width(2)
    );
\dvp_width_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(3),
      Q => dvp_width(3)
    );
\dvp_width_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(4),
      Q => dvp_width(4)
    );
\dvp_width_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(5),
      Q => dvp_width(5)
    );
\dvp_width_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(6),
      Q => dvp_width(6)
    );
\dvp_width_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(7),
      Q => dvp_width(7)
    );
\dvp_width_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(8),
      Q => dvp_width(8)
    );
\dvp_width_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => dvp_width0,
      CLR => module_reset,
      D => pix_cnt_reg(9),
      Q => dvp_width(9)
    );
int_frame_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => int_frame_start,
      I1 => out_vsync_prev,
      I2 => \^out_vsync\,
      I3 => p_2_in(1),
      O => int_frame_done_i_1_n_0
    );
int_frame_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_frame_done_i_1_n_0,
      Q => p_2_in(1),
      R => axi_awready_i_1_n_0
    );
int_frame_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => int_frame_start,
      I1 => \^out_vsync\,
      I2 => out_vsync_prev,
      I3 => p_2_in(0),
      O => int_frame_start_i_1_n_0
    );
int_frame_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => \slv_reg_wren__2\,
      O => int_frame_start
    );
int_frame_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_frame_start_i_1_n_0,
      Q => p_2_in(0),
      R => axi_awready_i_1_n_0
    );
int_mask_frame_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(0),
      I4 => \slv_reg_wren__2\,
      I5 => p_1_in(1),
      O => int_mask_frame_done_i_1_n_0
    );
int_mask_frame_done_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_mask_frame_done_i_1_n_0,
      Q => p_1_in(1),
      S => axi_awready_i_1_n_0
    );
int_mask_frame_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(0),
      I4 => \slv_reg_wren__2\,
      I5 => p_1_in(0),
      O => int_mask_frame_start_i_1_n_0
    );
int_mask_frame_start_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_mask_frame_start_i_1_n_0,
      Q => p_1_in(0),
      S => axi_awready_i_1_n_0
    );
irq_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => p_1_in(0),
      I1 => p_2_in(0),
      I2 => p_1_in(1),
      I3 => p_2_in(1),
      O => irq
    );
\line_cnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^out_vsync\,
      I1 => prev_vsync,
      I2 => \^out_href\,
      I3 => prev_href,
      O => \line_cnt[0]_i_1__0_n_0\
    );
\line_cnt[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(0),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[0]_i_3__0_n_0\
    );
\line_cnt[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(3),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[0]_i_4_n_0\
    );
\line_cnt[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(2),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[0]_i_5_n_0\
    );
\line_cnt[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(1),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[0]_i_6_n_0\
    );
\line_cnt[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => line_cnt_reg(0),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[0]_i_7_n_0\
    );
\line_cnt[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(15),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[12]_i_2_n_0\
    );
\line_cnt[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(14),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[12]_i_3_n_0\
    );
\line_cnt[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(13),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[12]_i_4_n_0\
    );
\line_cnt[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(12),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[12]_i_5_n_0\
    );
\line_cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(7),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[4]_i_2_n_0\
    );
\line_cnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(6),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[4]_i_3_n_0\
    );
\line_cnt[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(5),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[4]_i_4_n_0\
    );
\line_cnt[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(4),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[4]_i_5_n_0\
    );
\line_cnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(11),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[8]_i_2_n_0\
    );
\line_cnt[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(10),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[8]_i_3_n_0\
    );
\line_cnt[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(9),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[8]_i_4_n_0\
    );
\line_cnt[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(8),
      I1 => \^out_vsync\,
      I2 => prev_vsync,
      O => \line_cnt[8]_i_5_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[0]_i_2_n_7\,
      Q => line_cnt_reg(0)
    );
\line_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \line_cnt_reg[0]_i_2_n_0\,
      CO(2) => \line_cnt_reg[0]_i_2_n_1\,
      CO(1) => \line_cnt_reg[0]_i_2_n_2\,
      CO(0) => \line_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \line_cnt[0]_i_3__0_n_0\,
      O(3) => \line_cnt_reg[0]_i_2_n_4\,
      O(2) => \line_cnt_reg[0]_i_2_n_5\,
      O(1) => \line_cnt_reg[0]_i_2_n_6\,
      O(0) => \line_cnt_reg[0]_i_2_n_7\,
      S(3) => \line_cnt[0]_i_4_n_0\,
      S(2) => \line_cnt[0]_i_5_n_0\,
      S(1) => \line_cnt[0]_i_6_n_0\,
      S(0) => \line_cnt[0]_i_7_n_0\
    );
\line_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[8]_i_1_n_5\,
      Q => line_cnt_reg(10)
    );
\line_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[8]_i_1_n_4\,
      Q => line_cnt_reg(11)
    );
\line_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[12]_i_1_n_7\,
      Q => line_cnt_reg(12)
    );
\line_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_line_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \line_cnt_reg[12]_i_1_n_1\,
      CO(1) => \line_cnt_reg[12]_i_1_n_2\,
      CO(0) => \line_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_cnt_reg[12]_i_1_n_4\,
      O(2) => \line_cnt_reg[12]_i_1_n_5\,
      O(1) => \line_cnt_reg[12]_i_1_n_6\,
      O(0) => \line_cnt_reg[12]_i_1_n_7\,
      S(3) => \line_cnt[12]_i_2_n_0\,
      S(2) => \line_cnt[12]_i_3_n_0\,
      S(1) => \line_cnt[12]_i_4_n_0\,
      S(0) => \line_cnt[12]_i_5_n_0\
    );
\line_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[12]_i_1_n_6\,
      Q => line_cnt_reg(13)
    );
\line_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[12]_i_1_n_5\,
      Q => line_cnt_reg(14)
    );
\line_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[12]_i_1_n_4\,
      Q => line_cnt_reg(15)
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[0]_i_2_n_6\,
      Q => line_cnt_reg(1)
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[0]_i_2_n_5\,
      Q => line_cnt_reg(2)
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[0]_i_2_n_4\,
      Q => line_cnt_reg(3)
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[4]_i_1_n_7\,
      Q => line_cnt_reg(4)
    );
\line_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_cnt_reg[0]_i_2_n_0\,
      CO(3) => \line_cnt_reg[4]_i_1_n_0\,
      CO(2) => \line_cnt_reg[4]_i_1_n_1\,
      CO(1) => \line_cnt_reg[4]_i_1_n_2\,
      CO(0) => \line_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_cnt_reg[4]_i_1_n_4\,
      O(2) => \line_cnt_reg[4]_i_1_n_5\,
      O(1) => \line_cnt_reg[4]_i_1_n_6\,
      O(0) => \line_cnt_reg[4]_i_1_n_7\,
      S(3) => \line_cnt[4]_i_2_n_0\,
      S(2) => \line_cnt[4]_i_3_n_0\,
      S(1) => \line_cnt[4]_i_4_n_0\,
      S(0) => \line_cnt[4]_i_5_n_0\
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[4]_i_1_n_6\,
      Q => line_cnt_reg(5)
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[4]_i_1_n_5\,
      Q => line_cnt_reg(6)
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[4]_i_1_n_4\,
      Q => line_cnt_reg(7)
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[8]_i_1_n_7\,
      Q => line_cnt_reg(8)
    );
\line_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_cnt_reg[4]_i_1_n_0\,
      CO(3) => \line_cnt_reg[8]_i_1_n_0\,
      CO(2) => \line_cnt_reg[8]_i_1_n_1\,
      CO(1) => \line_cnt_reg[8]_i_1_n_2\,
      CO(0) => \line_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_cnt_reg[8]_i_1_n_4\,
      O(2) => \line_cnt_reg[8]_i_1_n_5\,
      O(1) => \line_cnt_reg[8]_i_1_n_6\,
      O(0) => \line_cnt_reg[8]_i_1_n_7\,
      S(3) => \line_cnt[8]_i_2_n_0\,
      S(2) => \line_cnt[8]_i_3_n_0\,
      S(1) => \line_cnt[8]_i_4_n_0\,
      S(0) => \line_cnt[8]_i_5_n_0\
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \line_cnt[0]_i_1__0_n_0\,
      CLR => module_reset,
      D => \line_cnt_reg[8]_i_1_n_6\,
      Q => line_cnt_reg(9)
    );
module_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \slv_reg_wren__2\,
      I5 => module_reset,
      O => module_reset_i_1_n_0
    );
module_reset_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
module_reset_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => module_reset_i_1_n_0,
      Q => module_reset,
      S => axi_awready_i_1_n_0
    );
out_href_reg: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      CLR => module_reset,
      D => dvp_colorbar_timing_generator_n_1,
      Q => \^out_href\
    );
out_pclk_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => cam_pclk,
      I1 => colorbar_en_reg_n_0,
      I2 => cam_xclk,
      I3 => module_reset,
      O => \^cam_pclk_0\
    );
\out_raw_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      CLR => module_reset,
      D => dvp_colorbar_timing_generator_n_9,
      Q => out_raw(0)
    );
\out_raw_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      CLR => module_reset,
      D => dvp_colorbar_timing_generator_n_8,
      Q => out_raw(1)
    );
\out_raw_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      CLR => module_reset,
      D => dvp_colorbar_timing_generator_n_7,
      Q => out_raw(2)
    );
\out_raw_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      CLR => module_reset,
      D => dvp_colorbar_timing_generator_n_6,
      Q => out_raw(3)
    );
\out_raw_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      CLR => module_reset,
      D => dvp_colorbar_timing_generator_n_5,
      Q => out_raw(4)
    );
\out_raw_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      CLR => module_reset,
      D => dvp_colorbar_timing_generator_n_4,
      Q => out_raw(5)
    );
\out_raw_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      CLR => module_reset,
      D => dvp_colorbar_timing_generator_n_3,
      Q => out_raw(6)
    );
\out_raw_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      CLR => module_reset,
      D => dvp_colorbar_timing_generator_n_2,
      Q => out_raw(7)
    );
out_vsync_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^out_vsync\,
      Q => out_vsync_prev,
      R => '0'
    );
out_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      CLR => module_reset,
      D => dvp_colorbar_timing_generator_n_0,
      Q => \^out_vsync\
    );
\pix_cnt[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => prev_href,
      I1 => \^out_href\,
      I2 => pix_cnt_reg(0),
      O => \pix_cnt[0]_i_2__0_n_0\
    );
\pix_cnt[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[0]_i_3__0_n_0\
    );
\pix_cnt[0]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(2),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[0]_i_4__0_n_0\
    );
\pix_cnt[0]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(1),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[0]_i_5__0_n_0\
    );
\pix_cnt[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"75"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[0]_i_6_n_0\
    );
\pix_cnt[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(15),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[12]_i_2_n_0\
    );
\pix_cnt[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(14),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[12]_i_3_n_0\
    );
\pix_cnt[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(13),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[12]_i_4_n_0\
    );
\pix_cnt[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(12),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[12]_i_5_n_0\
    );
\pix_cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(7),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[4]_i_2_n_0\
    );
\pix_cnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(6),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[4]_i_3_n_0\
    );
\pix_cnt[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(5),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[4]_i_4_n_0\
    );
\pix_cnt[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(4),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[4]_i_5_n_0\
    );
\pix_cnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(11),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[8]_i_2_n_0\
    );
\pix_cnt[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(10),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[8]_i_3_n_0\
    );
\pix_cnt[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(9),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[8]_i_4_n_0\
    );
\pix_cnt[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(8),
      I1 => prev_href,
      I2 => \^out_href\,
      O => \pix_cnt[8]_i_5_n_0\
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[0]_i_1_n_7\,
      Q => pix_cnt_reg(0)
    );
\pix_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_cnt_reg[0]_i_1_n_0\,
      CO(2) => \pix_cnt_reg[0]_i_1_n_1\,
      CO(1) => \pix_cnt_reg[0]_i_1_n_2\,
      CO(0) => \pix_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pix_cnt[0]_i_2__0_n_0\,
      O(3) => \pix_cnt_reg[0]_i_1_n_4\,
      O(2) => \pix_cnt_reg[0]_i_1_n_5\,
      O(1) => \pix_cnt_reg[0]_i_1_n_6\,
      O(0) => \pix_cnt_reg[0]_i_1_n_7\,
      S(3) => \pix_cnt[0]_i_3__0_n_0\,
      S(2) => \pix_cnt[0]_i_4__0_n_0\,
      S(1) => \pix_cnt[0]_i_5__0_n_0\,
      S(0) => \pix_cnt[0]_i_6_n_0\
    );
\pix_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[8]_i_1_n_5\,
      Q => pix_cnt_reg(10)
    );
\pix_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[8]_i_1_n_4\,
      Q => pix_cnt_reg(11)
    );
\pix_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[12]_i_1_n_7\,
      Q => pix_cnt_reg(12)
    );
\pix_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_pix_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pix_cnt_reg[12]_i_1_n_1\,
      CO(1) => \pix_cnt_reg[12]_i_1_n_2\,
      CO(0) => \pix_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_cnt_reg[12]_i_1_n_4\,
      O(2) => \pix_cnt_reg[12]_i_1_n_5\,
      O(1) => \pix_cnt_reg[12]_i_1_n_6\,
      O(0) => \pix_cnt_reg[12]_i_1_n_7\,
      S(3) => \pix_cnt[12]_i_2_n_0\,
      S(2) => \pix_cnt[12]_i_3_n_0\,
      S(1) => \pix_cnt[12]_i_4_n_0\,
      S(0) => \pix_cnt[12]_i_5_n_0\
    );
\pix_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[12]_i_1_n_6\,
      Q => pix_cnt_reg(13)
    );
\pix_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[12]_i_1_n_5\,
      Q => pix_cnt_reg(14)
    );
\pix_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[12]_i_1_n_4\,
      Q => pix_cnt_reg(15)
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[0]_i_1_n_6\,
      Q => pix_cnt_reg(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[0]_i_1_n_5\,
      Q => pix_cnt_reg(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[0]_i_1_n_4\,
      Q => pix_cnt_reg(3)
    );
\pix_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[4]_i_1_n_7\,
      Q => pix_cnt_reg(4)
    );
\pix_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_reg[0]_i_1_n_0\,
      CO(3) => \pix_cnt_reg[4]_i_1_n_0\,
      CO(2) => \pix_cnt_reg[4]_i_1_n_1\,
      CO(1) => \pix_cnt_reg[4]_i_1_n_2\,
      CO(0) => \pix_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_cnt_reg[4]_i_1_n_4\,
      O(2) => \pix_cnt_reg[4]_i_1_n_5\,
      O(1) => \pix_cnt_reg[4]_i_1_n_6\,
      O(0) => \pix_cnt_reg[4]_i_1_n_7\,
      S(3) => \pix_cnt[4]_i_2_n_0\,
      S(2) => \pix_cnt[4]_i_3_n_0\,
      S(1) => \pix_cnt[4]_i_4_n_0\,
      S(0) => \pix_cnt[4]_i_5_n_0\
    );
\pix_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[4]_i_1_n_6\,
      Q => pix_cnt_reg(5)
    );
\pix_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[4]_i_1_n_5\,
      Q => pix_cnt_reg(6)
    );
\pix_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[4]_i_1_n_4\,
      Q => pix_cnt_reg(7)
    );
\pix_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[8]_i_1_n_7\,
      Q => pix_cnt_reg(8)
    );
\pix_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_reg[4]_i_1_n_0\,
      CO(3) => \pix_cnt_reg[8]_i_1_n_0\,
      CO(2) => \pix_cnt_reg[8]_i_1_n_1\,
      CO(1) => \pix_cnt_reg[8]_i_1_n_2\,
      CO(0) => \pix_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_cnt_reg[8]_i_1_n_4\,
      O(2) => \pix_cnt_reg[8]_i_1_n_5\,
      O(1) => \pix_cnt_reg[8]_i_1_n_6\,
      O(0) => \pix_cnt_reg[8]_i_1_n_7\,
      S(3) => \pix_cnt[8]_i_2_n_0\,
      S(2) => \pix_cnt[8]_i_3_n_0\,
      S(1) => \pix_cnt[8]_i_4_n_0\,
      S(0) => \pix_cnt[8]_i_5_n_0\
    );
\pix_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk_0\,
      CE => \^out_href\,
      CLR => module_reset,
      D => \pix_cnt_reg[8]_i_1_n_6\,
      Q => pix_cnt_reg(9)
    );
prev_href_reg: unisim.vcomponents.FDRE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      D => \^out_href\,
      Q => prev_href,
      R => '0'
    );
prev_vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => \^cam_pclk_0\,
      CE => '1',
      D => \^out_vsync\,
      Q => prev_vsync,
      R => '0'
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 is
  port (
    irq : out STD_LOGIC;
    cam_xclk : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_pclk : out STD_LOGIC;
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    out_raw : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute BITS : integer;
  attribute BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 8;
  attribute COLORBAR_BAYER : integer;
  attribute COLORBAR_BAYER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 3;
  attribute COLORBAR_H_BACK : integer;
  attribute COLORBAR_H_BACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 50;
  attribute COLORBAR_H_DISP : integer;
  attribute COLORBAR_H_DISP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 2592;
  attribute COLORBAR_H_FRONT : integer;
  attribute COLORBAR_H_FRONT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 50;
  attribute COLORBAR_H_PULSE : integer;
  attribute COLORBAR_H_PULSE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 100;
  attribute COLORBAR_V_BACK : integer;
  attribute COLORBAR_V_BACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 5;
  attribute COLORBAR_V_DISP : integer;
  attribute COLORBAR_V_DISP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 1944;
  attribute COLORBAR_V_FRONT : integer;
  attribute COLORBAR_V_FRONT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 5;
  attribute COLORBAR_V_PULSE : integer;
  attribute COLORBAR_V_PULSE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 10;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 5;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xil_camif_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      cam_data(7 downto 0) => cam_data(7 downto 0),
      cam_href => cam_href,
      cam_pclk => cam_pclk,
      cam_pclk_0 => out_pclk,
      cam_vsync => cam_vsync,
      cam_xclk => cam_xclk,
      irq => irq,
      out_href => out_href,
      out_raw(7 downto 0) => out_raw(7 downto 0),
      out_vsync => out_vsync,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(1 downto 0) => s00_axi_wdata(1 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    irq : out STD_LOGIC;
    cam_xclk : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_pclk : out STD_LOGIC;
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    out_raw : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "base_xil_camif_0_0,xil_camif_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "xil_camif_v1_0,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s00_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s00_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BITS : integer;
  attribute BITS of inst : label is 8;
  attribute COLORBAR_BAYER : integer;
  attribute COLORBAR_BAYER of inst : label is 3;
  attribute COLORBAR_H_BACK : integer;
  attribute COLORBAR_H_BACK of inst : label is 50;
  attribute COLORBAR_H_DISP : integer;
  attribute COLORBAR_H_DISP of inst : label is 2592;
  attribute COLORBAR_H_FRONT : integer;
  attribute COLORBAR_H_FRONT of inst : label is 50;
  attribute COLORBAR_H_PULSE : integer;
  attribute COLORBAR_H_PULSE of inst : label is 100;
  attribute COLORBAR_V_BACK : integer;
  attribute COLORBAR_V_BACK of inst : label is 5;
  attribute COLORBAR_V_DISP : integer;
  attribute COLORBAR_V_DISP of inst : label is 1944;
  attribute COLORBAR_V_FRONT : integer;
  attribute COLORBAR_V_FRONT of inst : label is 5;
  attribute COLORBAR_V_PULSE : integer;
  attribute COLORBAR_V_PULSE of inst : label is 10;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of inst : label is 5;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of inst : label is 32;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of cam_href : signal is "xilinx.com:interface:vid_io:1.0 camera ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of cam_pclk : signal is "xilinx.com:signal:clock:1.0 cam_pclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of cam_pclk : signal is "XIL_INTERFACENAME cam_pclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_cam_pclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cam_vsync : signal is "xilinx.com:interface:vid_io:1.0 camera VSYNC";
  attribute X_INTERFACE_INFO of cam_xclk : signal is "xilinx.com:signal:clock:1.0 cam_xclk CLK";
  attribute X_INTERFACE_PARAMETER of cam_xclk : signal is "XIL_INTERFACENAME cam_xclk, FREQ_HZ 96000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of out_href : signal is "xilinx.com:interface:vid_io:1.0 raw ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of out_pclk : signal is "xilinx.com:signal:clock:1.0 out_pclk CLK";
  attribute X_INTERFACE_PARAMETER of out_pclk : signal is "XIL_INTERFACENAME out_pclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_xil_camif_0_0_out_pclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_vsync : signal is "xilinx.com:interface:vid_io:1.0 raw VSYNC";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of cam_data : signal is "xilinx.com:interface:vid_io:1.0 camera DATA";
  attribute X_INTERFACE_INFO of out_raw : signal is "xilinx.com:interface:vid_io:1.0 raw DATA";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_camif_v1_0
     port map (
      cam_data(7 downto 0) => cam_data(7 downto 0),
      cam_href => cam_href,
      cam_pclk => cam_pclk,
      cam_vsync => cam_vsync,
      cam_xclk => cam_xclk,
      irq => irq,
      out_href => out_href,
      out_pclk => out_pclk,
      out_raw(7 downto 0) => out_raw(7 downto 0),
      out_vsync => out_vsync,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 2) => s00_axi_araddr(4 downto 2),
      s00_axi_araddr(1 downto 0) => B"00",
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arprot(2 downto 0) => B"000",
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(4 downto 2) => s00_axi_awaddr(4 downto 2),
      s00_axi_awaddr(1 downto 0) => B"00",
      s00_axi_awprot(2 downto 0) => B"000",
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bresp(1 downto 0) => NLW_inst_s00_axi_bresp_UNCONNECTED(1 downto 0),
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(1 downto 0) => NLW_inst_s00_axi_rresp_UNCONNECTED(1 downto 0),
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 2) => B"000000000000000000000000000000",
      s00_axi_wdata(1 downto 0) => s00_axi_wdata(1 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => B"0000",
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
