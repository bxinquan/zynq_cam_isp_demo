-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Sep 19 20:23:14 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_axis_to_video_1_0_sim_netlist.vhdl
-- Design      : base_axis_to_video_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 24 downto 0 );
    wr_flag : out STD_LOGIC;
    rd_flag : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \w2r_wptr2_reg[9]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    waddr_reg : in STD_LOGIC_VECTOR ( 9 downto 0 );
    raddr_reg : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    wfull : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \waddr_reg__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    active_video_w : in STD_LOGIC;
    mem_reg_0 : in STD_LOGIC;
    underflow : in STD_LOGIC;
    underflow_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \raddr_reg__0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram is
  signal \^dobdo\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal mem_reg_n_43 : STD_LOGIC;
  signal \^rd_flag\ : STD_LOGIC;
  signal rempty_carry_i_5_n_0 : STD_LOGIC;
  signal rempty_carry_i_6_n_0 : STD_LOGIC;
  signal rempty_carry_i_7_n_0 : STD_LOGIC;
  signal wfull_carry_i_5_n_0 : STD_LOGIC;
  signal wfull_carry_i_6_n_0 : STD_LOGIC;
  signal wfull_carry_i_7_n_0 : STD_LOGIC;
  signal \^wr_flag\ : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 26 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d26";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d26";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 26624;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "inst/axis_to_video_inst/fifo/ram/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 25;
begin
  DOBDO(24 downto 0) <= \^dobdo\(24 downto 0);
  rd_flag <= \^rd_flag\;
  wr_flag <= \^wr_flag\;
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
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => waddr_reg(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 5) => raddr_reg(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => vid_clk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 26) => B"000000",
      DIADI(25 downto 0) => DIADI(25 downto 0),
      DIBDI(31 downto 0) => B"00000011111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 26) => NLW_mem_reg_DOBDO_UNCONNECTED(31 downto 26),
      DOBDO(25) => \^dobdo\(24),
      DOBDO(24) => mem_reg_n_43,
      DOBDO(23 downto 0) => \^dobdo\(23 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => \^wr_flag\,
      ENBWREN => \^rd_flag\,
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
      WEA(3 downto 0) => B"1111",
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => wfull,
      O => \^wr_flag\
    );
mem_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => active_video_w,
      I1 => mem_reg_0,
      I2 => \^dobdo\(24),
      I3 => underflow,
      O => \^rd_flag\
    );
rempty_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => underflow_0(9),
      I1 => raddr_reg(9),
      I2 => underflow_0(10),
      I3 => \raddr_reg__0\(0),
      O => \w2r_wptr2_reg[9]\(3)
    );
rempty_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => underflow_0(6),
      I1 => raddr_reg(7),
      I2 => raddr_reg(6),
      I3 => rempty_carry_i_5_n_0,
      O => \w2r_wptr2_reg[9]\(2)
    );
rempty_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => underflow_0(3),
      I1 => raddr_reg(4),
      I2 => raddr_reg(3),
      I3 => rempty_carry_i_6_n_0,
      O => \w2r_wptr2_reg[9]\(1)
    );
rempty_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => underflow_0(0),
      I1 => raddr_reg(1),
      I2 => raddr_reg(0),
      I3 => rempty_carry_i_7_n_0,
      O => \w2r_wptr2_reg[9]\(0)
    );
rempty_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => underflow_0(7),
      I1 => raddr_reg(7),
      I2 => underflow_0(8),
      I3 => raddr_reg(9),
      I4 => raddr_reg(8),
      O => rempty_carry_i_5_n_0
    );
rempty_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => underflow_0(4),
      I1 => raddr_reg(4),
      I2 => underflow_0(5),
      I3 => raddr_reg(6),
      I4 => raddr_reg(5),
      O => rempty_carry_i_6_n_0
    );
rempty_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => underflow_0(1),
      I1 => raddr_reg(1),
      I2 => underflow_0(2),
      I3 => raddr_reg(3),
      I4 => raddr_reg(2),
      O => rempty_carry_i_7_n_0
    );
wfull_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => waddr_reg(9),
      I1 => Q(9),
      I2 => \waddr_reg__0\(0),
      I3 => Q(10),
      O => S(3)
    );
wfull_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => waddr_reg(7),
      I1 => waddr_reg(6),
      I2 => Q(6),
      I3 => wfull_carry_i_5_n_0,
      O => S(2)
    );
wfull_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => waddr_reg(4),
      I1 => waddr_reg(3),
      I2 => Q(3),
      I3 => wfull_carry_i_6_n_0,
      O => S(1)
    );
wfull_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => waddr_reg(1),
      I1 => waddr_reg(0),
      I2 => Q(0),
      I3 => wfull_carry_i_7_n_0,
      O => S(0)
    );
wfull_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(7),
      I1 => Q(7),
      I2 => waddr_reg(9),
      I3 => waddr_reg(8),
      I4 => Q(8),
      O => wfull_carry_i_5_n_0
    );
wfull_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(4),
      I1 => Q(4),
      I2 => waddr_reg(6),
      I3 => waddr_reg(5),
      I4 => Q(5),
      O => wfull_carry_i_6_n_0
    );
wfull_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(1),
      I1 => Q(1),
      I2 => waddr_reg(3),
      I3 => waddr_reg(2),
      I4 => Q(2),
      O => wfull_carry_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen is
  port (
    active_video_w : out STD_LOGIC;
    vsync_w : out STD_LOGIC;
    vid_hsync_reg_0 : out STD_LOGIC;
    mem_reg : out STD_LOGIC;
    vid_clk : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    locked : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 0 to 0 );
    frmsync_req_reg : in STD_LOGIC;
    vid_vsync : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen is
  signal \^active_video_w\ : STD_LOGIC;
  signal line_cnt : STD_LOGIC;
  signal \line_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_5_n_0\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal pix_cnt : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \pix_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[10]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt[10]_i_6_n_0\ : STD_LOGIC;
  signal \pix_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal vid_active_video0 : STD_LOGIC;
  signal vid_active_video_i_2_n_0 : STD_LOGIC;
  signal vid_active_video_i_3_n_0 : STD_LOGIC;
  signal vid_active_video_i_4_n_0 : STD_LOGIC;
  signal vid_hsync_i_1_n_0 : STD_LOGIC;
  signal vid_vsync0 : STD_LOGIC;
  signal \^vsync_w\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \line_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \line_cnt[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \line_cnt[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \line_cnt[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pix_cnt[0]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pix_cnt[10]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pix_cnt[10]_i_6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pix_cnt[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pix_cnt[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pix_cnt[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pix_cnt[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pix_cnt[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pix_cnt[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of vid_active_video_i_3 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of vid_active_video_i_4 : label is "soft_lutpair20";
begin
  active_video_w <= \^active_video_w\;
  vsync_w <= \^vsync_w\;
frmsync_req_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"707F7F70"
    )
        port map (
      I0 => DOBDO(0),
      I1 => \^active_video_w\,
      I2 => frmsync_req_reg,
      I3 => \^vsync_w\,
      I4 => vid_vsync,
      O => mem_reg
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \line_cnt[9]_i_3_n_0\,
      I1 => \line_cnt_reg_n_0_[0]\,
      O => \line_cnt[0]_i_1_n_0\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \line_cnt[9]_i_3_n_0\,
      I1 => \line_cnt_reg_n_0_[1]\,
      I2 => \line_cnt_reg_n_0_[0]\,
      O => \line_cnt[1]_i_1_n_0\
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \line_cnt[9]_i_3_n_0\,
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
      I0 => \line_cnt[9]_i_3_n_0\,
      I1 => \line_cnt_reg_n_0_[3]\,
      I2 => \line_cnt_reg_n_0_[1]\,
      I3 => \line_cnt_reg_n_0_[0]\,
      I4 => \line_cnt_reg_n_0_[2]\,
      O => \line_cnt[3]_i_1_n_0\
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \line_cnt[9]_i_3_n_0\,
      I1 => \line_cnt_reg_n_0_[4]\,
      I2 => \line_cnt_reg_n_0_[1]\,
      I3 => \line_cnt_reg_n_0_[0]\,
      I4 => \line_cnt_reg_n_0_[3]\,
      I5 => \line_cnt_reg_n_0_[2]\,
      O => \line_cnt[4]_i_1_n_0\
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \line_cnt[9]_i_3_n_0\,
      I1 => \line_cnt_reg_n_0_[5]\,
      I2 => \line_cnt[5]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[4]\,
      O => \line_cnt[5]_i_1_n_0\
    );
\line_cnt[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[1]\,
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => \line_cnt_reg_n_0_[3]\,
      I3 => \line_cnt_reg_n_0_[2]\,
      O => \line_cnt[5]_i_2_n_0\
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \line_cnt[9]_i_3_n_0\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt[9]_i_4_n_0\,
      O => \line_cnt[6]_i_1_n_0\
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \line_cnt[9]_i_3_n_0\,
      I1 => \line_cnt_reg_n_0_[7]\,
      I2 => \line_cnt[9]_i_4_n_0\,
      I3 => \line_cnt_reg_n_0_[6]\,
      O => \line_cnt[7]_i_1_n_0\
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \line_cnt[9]_i_3_n_0\,
      I1 => \line_cnt_reg_n_0_[8]\,
      I2 => \line_cnt_reg_n_0_[7]\,
      I3 => \line_cnt_reg_n_0_[6]\,
      I4 => \line_cnt[9]_i_4_n_0\,
      O => \line_cnt[8]_i_1_n_0\
    );
\line_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \pix_cnt[0]_i_2_n_0\,
      I1 => pix_cnt(5),
      I2 => pix_cnt(10),
      I3 => pix_cnt(9),
      I4 => pix_cnt(8),
      I5 => \pix_cnt[8]_i_2_n_0\,
      O => line_cnt
    );
\line_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \line_cnt[9]_i_3_n_0\,
      I1 => \line_cnt_reg_n_0_[9]\,
      I2 => \line_cnt_reg_n_0_[6]\,
      I3 => \line_cnt_reg_n_0_[7]\,
      I4 => \line_cnt_reg_n_0_[8]\,
      I5 => \line_cnt[9]_i_4_n_0\,
      O => \line_cnt[9]_i_2_n_0\
    );
\line_cnt[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FFFF"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[6]\,
      I1 => \line_cnt_reg_n_0_[5]\,
      I2 => \line_cnt_reg_n_0_[4]\,
      I3 => \line_cnt[9]_i_5_n_0\,
      I4 => \line_cnt_reg_n_0_[9]\,
      O => \line_cnt[9]_i_3_n_0\
    );
\line_cnt[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[5]\,
      I1 => \line_cnt_reg_n_0_[4]\,
      I2 => \line_cnt_reg_n_0_[2]\,
      I3 => \line_cnt_reg_n_0_[3]\,
      I4 => \line_cnt_reg_n_0_[0]\,
      I5 => \line_cnt_reg_n_0_[1]\,
      O => \line_cnt[9]_i_4_n_0\
    );
\line_cnt[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[3]\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt_reg_n_0_[8]\,
      I3 => \line_cnt_reg_n_0_[7]\,
      O => \line_cnt[9]_i_5_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \line_cnt[0]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[0]\
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \line_cnt[1]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[1]\
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \line_cnt[2]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[2]\
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \line_cnt[3]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[3]\
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \line_cnt[4]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[4]\
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \line_cnt[5]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[5]\
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \line_cnt[6]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[6]\
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \line_cnt[7]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[7]\
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \line_cnt[8]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[8]\
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \line_cnt[9]_i_2_n_0\,
      Q => \line_cnt_reg_n_0_[9]\
    );
\pix_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000002FFFF"
    )
        port map (
      I0 => \pix_cnt[0]_i_2_n_0\,
      I1 => pix_cnt(5),
      I2 => pix_cnt(9),
      I3 => pix_cnt(8),
      I4 => pix_cnt(10),
      I5 => pix_cnt(0),
      O => \pix_cnt[0]_i_1_n_0\
    );
\pix_cnt[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pix_cnt(6),
      I1 => pix_cnt(7),
      O => \pix_cnt[0]_i_2_n_0\
    );
\pix_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \pix_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(10),
      I2 => \pix_cnt[10]_i_4_n_0\,
      I3 => pix_cnt(8),
      I4 => pix_cnt(9),
      I5 => \pix_cnt[10]_i_5_n_0\,
      O => \pix_cnt[10]_i_1_n_0\
    );
\pix_cnt[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => vid_rstn,
      I1 => locked,
      O => \pix_cnt[10]_i_2_n_0\
    );
\pix_cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \pix_cnt[8]_i_2_n_0\,
      I1 => pix_cnt(5),
      I2 => pix_cnt(6),
      I3 => pix_cnt(7),
      I4 => \pix_cnt[10]_i_6_n_0\,
      I5 => pix_cnt(10),
      O => \pix_cnt[10]_i_3_n_0\
    );
\pix_cnt[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pix_cnt(5),
      I1 => pix_cnt(7),
      O => \pix_cnt[10]_i_4_n_0\
    );
\pix_cnt[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pix_cnt(6),
      I1 => pix_cnt(4),
      I2 => pix_cnt(2),
      I3 => pix_cnt(0),
      I4 => pix_cnt(1),
      I5 => pix_cnt(3),
      O => \pix_cnt[10]_i_5_n_0\
    );
\pix_cnt[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pix_cnt(8),
      I1 => pix_cnt(9),
      O => \pix_cnt[10]_i_6_n_0\
    );
\pix_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \pix_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(1),
      I2 => pix_cnt(0),
      O => \pix_cnt[1]_i_1_n_0\
    );
\pix_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \pix_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(2),
      I2 => pix_cnt(0),
      I3 => pix_cnt(1),
      O => \pix_cnt[2]_i_1_n_0\
    );
\pix_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \pix_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(3),
      I2 => pix_cnt(1),
      I3 => pix_cnt(0),
      I4 => pix_cnt(2),
      O => \pix_cnt[3]_i_1_n_0\
    );
\pix_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \pix_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(4),
      I2 => pix_cnt(2),
      I3 => pix_cnt(0),
      I4 => pix_cnt(1),
      I5 => pix_cnt(3),
      O => \pix_cnt[4]_i_1_n_0\
    );
\pix_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \pix_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(5),
      I2 => \pix_cnt[8]_i_2_n_0\,
      O => \pix_cnt[5]_i_1_n_0\
    );
\pix_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \pix_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(6),
      I2 => pix_cnt(5),
      I3 => \pix_cnt[8]_i_2_n_0\,
      O => \pix_cnt[6]_i_1_n_0\
    );
\pix_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82888888"
    )
        port map (
      I0 => \pix_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(7),
      I2 => \pix_cnt[8]_i_2_n_0\,
      I3 => pix_cnt(6),
      I4 => pix_cnt(5),
      O => \pix_cnt[7]_i_1_n_0\
    );
\pix_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8288888888888888"
    )
        port map (
      I0 => \pix_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(8),
      I2 => \pix_cnt[8]_i_2_n_0\,
      I3 => pix_cnt(6),
      I4 => pix_cnt(7),
      I5 => pix_cnt(5),
      O => \pix_cnt[8]_i_1_n_0\
    );
\pix_cnt[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => pix_cnt(3),
      I1 => pix_cnt(1),
      I2 => pix_cnt(0),
      I3 => pix_cnt(2),
      I4 => pix_cnt(4),
      O => \pix_cnt[8]_i_2_n_0\
    );
\pix_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \pix_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(9),
      I2 => pix_cnt(8),
      I3 => pix_cnt(5),
      I4 => pix_cnt(7),
      I5 => \pix_cnt[10]_i_5_n_0\,
      O => \pix_cnt[9]_i_1_n_0\
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[0]_i_1_n_0\,
      Q => pix_cnt(0)
    );
\pix_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[10]_i_1_n_0\,
      Q => pix_cnt(10)
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[1]_i_1_n_0\,
      Q => pix_cnt(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[2]_i_1_n_0\,
      Q => pix_cnt(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[3]_i_1_n_0\,
      Q => pix_cnt(3)
    );
\pix_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[4]_i_1_n_0\,
      Q => pix_cnt(4)
    );
\pix_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[5]_i_1_n_0\,
      Q => pix_cnt(5)
    );
\pix_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[6]_i_1_n_0\,
      Q => pix_cnt(6)
    );
\pix_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[7]_i_1_n_0\,
      Q => pix_cnt(7)
    );
\pix_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[8]_i_1_n_0\,
      Q => pix_cnt(8)
    );
\pix_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => \pix_cnt[9]_i_1_n_0\,
      Q => pix_cnt(9)
    );
vid_active_video_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00EA00"
    )
        port map (
      I0 => vid_active_video_i_2_n_0,
      I1 => \line_cnt_reg_n_0_[5]\,
      I2 => \line_cnt_reg_n_0_[4]\,
      I3 => vid_active_video_i_3_n_0,
      I4 => vid_active_video_i_4_n_0,
      O => vid_active_video0
    );
vid_active_video_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[7]\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt_reg_n_0_[9]\,
      I3 => \line_cnt_reg_n_0_[8]\,
      O => vid_active_video_i_2_n_0
    );
vid_active_video_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => pix_cnt(9),
      I1 => pix_cnt(8),
      I2 => pix_cnt(10),
      O => vid_active_video_i_3_n_0
    );
vid_active_video_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[2]\,
      I1 => \line_cnt_reg_n_0_[3]\,
      I2 => \line_cnt_reg_n_0_[5]\,
      I3 => \line_cnt_reg_n_0_[1]\,
      I4 => \line_cnt_reg_n_0_[0]\,
      O => vid_active_video_i_4_n_0
    );
vid_active_video_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => vid_active_video0,
      Q => \^active_video_w\
    );
vid_hsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE0001F"
    )
        port map (
      I0 => pix_cnt(3),
      I1 => pix_cnt(4),
      I2 => pix_cnt(5),
      I3 => pix_cnt(6),
      I4 => pix_cnt(7),
      I5 => vid_active_video_i_3_n_0,
      O => vid_hsync_i_1_n_0
    );
vid_hsync_reg: unisim.vcomponents.FDPE
     port map (
      C => vid_clk,
      CE => '1',
      D => vid_hsync_i_1_n_0,
      PRE => \pix_cnt[10]_i_2_n_0\,
      Q => vid_hsync_reg_0
    );
vid_vsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[4]\,
      I1 => \line_cnt_reg_n_0_[5]\,
      I2 => \line_cnt_reg_n_0_[2]\,
      I3 => \line_cnt_reg_n_0_[3]\,
      I4 => \line_cnt_reg_n_0_[1]\,
      I5 => vid_active_video_i_2_n_0,
      O => vid_vsync0
    );
vid_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[10]_i_2_n_0\,
      D => vid_vsync0,
      Q => \^vsync_w\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 24 downto 0 );
    vid_rstn_0 : out STD_LOGIC;
    wfull : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    underflow : out STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 25 downto 0 );
    aresetn : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    active_video_w : in STD_LOGIC;
    mem_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo is
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal r2w_rptr1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \r2w_rptr1[10]_i_1_n_0\ : STD_LOGIC;
  signal r2w_rptr2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \raddr[10]_i_2_n_0\ : STD_LOGIC;
  signal raddr_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \raddr_reg__0\ : STD_LOGIC_VECTOR ( 10 to 10 );
  signal ram_n_27 : STD_LOGIC;
  signal ram_n_28 : STD_LOGIC;
  signal ram_n_29 : STD_LOGIC;
  signal ram_n_30 : STD_LOGIC;
  signal ram_n_31 : STD_LOGIC;
  signal ram_n_32 : STD_LOGIC;
  signal ram_n_33 : STD_LOGIC;
  signal ram_n_34 : STD_LOGIC;
  signal rd_flag : STD_LOGIC;
  signal rempty_carry_n_1 : STD_LOGIC;
  signal rempty_carry_n_2 : STD_LOGIC;
  signal rempty_carry_n_3 : STD_LOGIC;
  signal rptr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^underflow\ : STD_LOGIC;
  signal \^vid_rstn_0\ : STD_LOGIC;
  signal w2r_wptr1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal w2r_wptr2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \waddr[10]_i_2_n_0\ : STD_LOGIC;
  signal waddr_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \waddr_reg__0\ : STD_LOGIC_VECTOR ( 10 to 10 );
  signal \^wfull\ : STD_LOGIC;
  signal wfull_carry_n_1 : STD_LOGIC;
  signal wfull_carry_n_2 : STD_LOGIC;
  signal wfull_carry_n_3 : STD_LOGIC;
  signal wptr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_flag : STD_LOGIC;
  signal NLW_rempty_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_wfull_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r2w_rptr1[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r2w_rptr1[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r2w_rptr1[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r2w_rptr1[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r2w_rptr1[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r2w_rptr1[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r2w_rptr1[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r2w_rptr1[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r2w_rptr1[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r2w_rptr1[9]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \raddr[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \raddr[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \raddr[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \raddr[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \raddr[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \raddr[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \raddr[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \raddr[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w2r_wptr1[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w2r_wptr1[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w2r_wptr1[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w2r_wptr1[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w2r_wptr1[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w2r_wptr1[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w2r_wptr1[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \w2r_wptr1[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \w2r_wptr1[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \w2r_wptr1[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \waddr[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \waddr[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \waddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \waddr[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \waddr[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \waddr[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \waddr[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \waddr[9]_i_1\ : label is "soft_lutpair0";
begin
  underflow <= \^underflow\;
  vid_rstn_0 <= \^vid_rstn_0\;
  wfull <= \^wfull\;
locked_r_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vid_rstn,
      O => \^vid_rstn_0\
    );
\r2w_rptr1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(1),
      I1 => raddr_reg(0),
      O => rptr(0)
    );
\r2w_rptr1[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \r2w_rptr1[10]_i_1_n_0\
    );
\r2w_rptr1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(2),
      I1 => raddr_reg(1),
      O => rptr(1)
    );
\r2w_rptr1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(3),
      I1 => raddr_reg(2),
      O => rptr(2)
    );
\r2w_rptr1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(4),
      I1 => raddr_reg(3),
      O => rptr(3)
    );
\r2w_rptr1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(5),
      I1 => raddr_reg(4),
      O => rptr(4)
    );
\r2w_rptr1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(6),
      I1 => raddr_reg(5),
      O => rptr(5)
    );
\r2w_rptr1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(7),
      I1 => raddr_reg(6),
      O => rptr(6)
    );
\r2w_rptr1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(8),
      I1 => raddr_reg(7),
      O => rptr(7)
    );
\r2w_rptr1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(9),
      I1 => raddr_reg(8),
      O => rptr(8)
    );
\r2w_rptr1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \raddr_reg__0\(10),
      I1 => raddr_reg(9),
      O => rptr(9)
    );
\r2w_rptr1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => rptr(0),
      Q => r2w_rptr1(0)
    );
\r2w_rptr1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => \raddr_reg__0\(10),
      Q => r2w_rptr1(10)
    );
\r2w_rptr1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => rptr(1),
      Q => r2w_rptr1(1)
    );
\r2w_rptr1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => rptr(2),
      Q => r2w_rptr1(2)
    );
\r2w_rptr1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => rptr(3),
      Q => r2w_rptr1(3)
    );
\r2w_rptr1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => rptr(4),
      Q => r2w_rptr1(4)
    );
\r2w_rptr1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => rptr(5),
      Q => r2w_rptr1(5)
    );
\r2w_rptr1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => rptr(6),
      Q => r2w_rptr1(6)
    );
\r2w_rptr1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => rptr(7),
      Q => r2w_rptr1(7)
    );
\r2w_rptr1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => rptr(8),
      Q => r2w_rptr1(8)
    );
\r2w_rptr1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => rptr(9),
      Q => r2w_rptr1(9)
    );
\r2w_rptr2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(0),
      Q => r2w_rptr2(0)
    );
\r2w_rptr2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(10),
      Q => r2w_rptr2(10)
    );
\r2w_rptr2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(1),
      Q => r2w_rptr2(1)
    );
\r2w_rptr2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(2),
      Q => r2w_rptr2(2)
    );
\r2w_rptr2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(3),
      Q => r2w_rptr2(3)
    );
\r2w_rptr2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(4),
      Q => r2w_rptr2(4)
    );
\r2w_rptr2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(5),
      Q => r2w_rptr2(5)
    );
\r2w_rptr2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(6),
      Q => r2w_rptr2(6)
    );
\r2w_rptr2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(7),
      Q => r2w_rptr2(7)
    );
\r2w_rptr2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(8),
      Q => r2w_rptr2(8)
    );
\r2w_rptr2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => r2w_rptr1(9),
      Q => r2w_rptr2(9)
    );
\raddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raddr_reg(0),
      O => \p_0_in__0\(0)
    );
\raddr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => raddr_reg(8),
      I1 => raddr_reg(6),
      I2 => \raddr[10]_i_2_n_0\,
      I3 => raddr_reg(7),
      I4 => raddr_reg(9),
      I5 => \raddr_reg__0\(10),
      O => \p_0_in__0\(10)
    );
\raddr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => raddr_reg(5),
      I1 => raddr_reg(3),
      I2 => raddr_reg(1),
      I3 => raddr_reg(0),
      I4 => raddr_reg(2),
      I5 => raddr_reg(4),
      O => \raddr[10]_i_2_n_0\
    );
\raddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(0),
      I1 => raddr_reg(1),
      O => \p_0_in__0\(1)
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => raddr_reg(0),
      I1 => raddr_reg(1),
      I2 => raddr_reg(2),
      O => \p_0_in__0\(2)
    );
\raddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => raddr_reg(1),
      I1 => raddr_reg(0),
      I2 => raddr_reg(2),
      I3 => raddr_reg(3),
      O => \p_0_in__0\(3)
    );
\raddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => raddr_reg(2),
      I1 => raddr_reg(0),
      I2 => raddr_reg(1),
      I3 => raddr_reg(3),
      I4 => raddr_reg(4),
      O => \p_0_in__0\(4)
    );
\raddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => raddr_reg(3),
      I1 => raddr_reg(1),
      I2 => raddr_reg(0),
      I3 => raddr_reg(2),
      I4 => raddr_reg(4),
      I5 => raddr_reg(5),
      O => \p_0_in__0\(5)
    );
\raddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \raddr[10]_i_2_n_0\,
      I1 => raddr_reg(6),
      O => \p_0_in__0\(6)
    );
\raddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \raddr[10]_i_2_n_0\,
      I1 => raddr_reg(6),
      I2 => raddr_reg(7),
      O => \p_0_in__0\(7)
    );
\raddr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => raddr_reg(6),
      I1 => \raddr[10]_i_2_n_0\,
      I2 => raddr_reg(7),
      I3 => raddr_reg(8),
      O => \p_0_in__0\(8)
    );
\raddr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => raddr_reg(7),
      I1 => \raddr[10]_i_2_n_0\,
      I2 => raddr_reg(6),
      I3 => raddr_reg(8),
      I4 => raddr_reg(9),
      O => \p_0_in__0\(9)
    );
\raddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(0),
      Q => raddr_reg(0)
    );
\raddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(10),
      Q => \raddr_reg__0\(10)
    );
\raddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(1),
      Q => raddr_reg(1)
    );
\raddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(2),
      Q => raddr_reg(2)
    );
\raddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(3),
      Q => raddr_reg(3)
    );
\raddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(4),
      Q => raddr_reg(4)
    );
\raddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(5),
      Q => raddr_reg(5)
    );
\raddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(6),
      Q => raddr_reg(6)
    );
\raddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(7),
      Q => raddr_reg(7)
    );
\raddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(8),
      Q => raddr_reg(8)
    );
\raddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \p_0_in__0\(9),
      Q => raddr_reg(9)
    );
ram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram
     port map (
      DIADI(25 downto 0) => DIADI(25 downto 0),
      DOBDO(24 downto 0) => DOBDO(24 downto 0),
      Q(10 downto 0) => r2w_rptr2(10 downto 0),
      S(3) => ram_n_27,
      S(2) => ram_n_28,
      S(1) => ram_n_29,
      S(0) => ram_n_30,
      aclk => aclk,
      active_video_w => active_video_w,
      mem_reg_0 => mem_reg,
      raddr_reg(9 downto 0) => raddr_reg(9 downto 0),
      \raddr_reg__0\(0) => \raddr_reg__0\(10),
      rd_flag => rd_flag,
      s_axis_tvalid => s_axis_tvalid,
      underflow => \^underflow\,
      underflow_0(10 downto 0) => w2r_wptr2(10 downto 0),
      vid_clk => vid_clk,
      \w2r_wptr2_reg[9]\(3) => ram_n_31,
      \w2r_wptr2_reg[9]\(2) => ram_n_32,
      \w2r_wptr2_reg[9]\(1) => ram_n_33,
      \w2r_wptr2_reg[9]\(0) => ram_n_34,
      waddr_reg(9 downto 0) => waddr_reg(9 downto 0),
      \waddr_reg__0\(0) => \waddr_reg__0\(10),
      wfull => \^wfull\,
      wr_flag => wr_flag
    );
rempty_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^underflow\,
      CO(2) => rempty_carry_n_1,
      CO(1) => rempty_carry_n_2,
      CO(0) => rempty_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_rempty_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ram_n_31,
      S(2) => ram_n_32,
      S(1) => ram_n_33,
      S(0) => ram_n_34
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^wfull\,
      O => s_axis_tready
    );
\w2r_wptr1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(1),
      I1 => waddr_reg(0),
      O => wptr(0)
    );
\w2r_wptr1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(2),
      I1 => waddr_reg(1),
      O => wptr(1)
    );
\w2r_wptr1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(3),
      I1 => waddr_reg(2),
      O => wptr(2)
    );
\w2r_wptr1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(4),
      I1 => waddr_reg(3),
      O => wptr(3)
    );
\w2r_wptr1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(5),
      I1 => waddr_reg(4),
      O => wptr(4)
    );
\w2r_wptr1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(6),
      I1 => waddr_reg(5),
      O => wptr(5)
    );
\w2r_wptr1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(7),
      I1 => waddr_reg(6),
      O => wptr(6)
    );
\w2r_wptr1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(8),
      I1 => waddr_reg(7),
      O => wptr(7)
    );
\w2r_wptr1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(9),
      I1 => waddr_reg(8),
      O => wptr(8)
    );
\w2r_wptr1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \waddr_reg__0\(10),
      I1 => waddr_reg(9),
      O => wptr(9)
    );
\w2r_wptr1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(0),
      Q => w2r_wptr1(0)
    );
\w2r_wptr1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => \waddr_reg__0\(10),
      Q => w2r_wptr1(10)
    );
\w2r_wptr1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(1),
      Q => w2r_wptr1(1)
    );
\w2r_wptr1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(2),
      Q => w2r_wptr1(2)
    );
\w2r_wptr1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(3),
      Q => w2r_wptr1(3)
    );
\w2r_wptr1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(4),
      Q => w2r_wptr1(4)
    );
\w2r_wptr1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(5),
      Q => w2r_wptr1(5)
    );
\w2r_wptr1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(6),
      Q => w2r_wptr1(6)
    );
\w2r_wptr1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(7),
      Q => w2r_wptr1(7)
    );
\w2r_wptr1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(8),
      Q => w2r_wptr1(8)
    );
\w2r_wptr1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(9),
      Q => w2r_wptr1(9)
    );
\w2r_wptr2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(0),
      Q => w2r_wptr2(0)
    );
\w2r_wptr2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(10),
      Q => w2r_wptr2(10)
    );
\w2r_wptr2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(1),
      Q => w2r_wptr2(1)
    );
\w2r_wptr2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(2),
      Q => w2r_wptr2(2)
    );
\w2r_wptr2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(3),
      Q => w2r_wptr2(3)
    );
\w2r_wptr2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(4),
      Q => w2r_wptr2(4)
    );
\w2r_wptr2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(5),
      Q => w2r_wptr2(5)
    );
\w2r_wptr2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(6),
      Q => w2r_wptr2(6)
    );
\w2r_wptr2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(7),
      Q => w2r_wptr2(7)
    );
\w2r_wptr2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(8),
      Q => w2r_wptr2(8)
    );
\w2r_wptr2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(9),
      Q => w2r_wptr2(9)
    );
\waddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => waddr_reg(0),
      O => p_0_in(0)
    );
\waddr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => waddr_reg(8),
      I1 => waddr_reg(6),
      I2 => \waddr[10]_i_2_n_0\,
      I3 => waddr_reg(7),
      I4 => waddr_reg(9),
      I5 => \waddr_reg__0\(10),
      O => p_0_in(10)
    );
\waddr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => waddr_reg(5),
      I1 => waddr_reg(3),
      I2 => waddr_reg(1),
      I3 => waddr_reg(0),
      I4 => waddr_reg(2),
      I5 => waddr_reg(4),
      O => \waddr[10]_i_2_n_0\
    );
\waddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(0),
      I1 => waddr_reg(1),
      O => p_0_in(1)
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => waddr_reg(0),
      I1 => waddr_reg(1),
      I2 => waddr_reg(2),
      O => p_0_in(2)
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => waddr_reg(1),
      I1 => waddr_reg(0),
      I2 => waddr_reg(2),
      I3 => waddr_reg(3),
      O => p_0_in(3)
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => waddr_reg(2),
      I1 => waddr_reg(0),
      I2 => waddr_reg(1),
      I3 => waddr_reg(3),
      I4 => waddr_reg(4),
      O => p_0_in(4)
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => waddr_reg(3),
      I1 => waddr_reg(1),
      I2 => waddr_reg(0),
      I3 => waddr_reg(2),
      I4 => waddr_reg(4),
      I5 => waddr_reg(5),
      O => p_0_in(5)
    );
\waddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \waddr[10]_i_2_n_0\,
      I1 => waddr_reg(6),
      O => p_0_in(6)
    );
\waddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \waddr[10]_i_2_n_0\,
      I1 => waddr_reg(6),
      I2 => waddr_reg(7),
      O => p_0_in(7)
    );
\waddr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => waddr_reg(6),
      I1 => \waddr[10]_i_2_n_0\,
      I2 => waddr_reg(7),
      I3 => waddr_reg(8),
      O => p_0_in(8)
    );
\waddr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => waddr_reg(7),
      I1 => \waddr[10]_i_2_n_0\,
      I2 => waddr_reg(6),
      I3 => waddr_reg(8),
      I4 => waddr_reg(9),
      O => p_0_in(9)
    );
\waddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(0),
      Q => waddr_reg(0)
    );
\waddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(10),
      Q => \waddr_reg__0\(10)
    );
\waddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(1),
      Q => waddr_reg(1)
    );
\waddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(2),
      Q => waddr_reg(2)
    );
\waddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(3),
      Q => waddr_reg(3)
    );
\waddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(4),
      Q => waddr_reg(4)
    );
\waddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(5),
      Q => waddr_reg(5)
    );
\waddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(6),
      Q => waddr_reg(6)
    );
\waddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(7),
      Q => waddr_reg(7)
    );
\waddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(8),
      Q => waddr_reg(8)
    );
\waddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[10]_i_1_n_0\,
      D => p_0_in(9),
      Q => waddr_reg(9)
    );
wfull_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^wfull\,
      CO(2) => wfull_carry_n_1,
      CO(1) => wfull_carry_n_2,
      CO(0) => wfull_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_wfull_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ram_n_27,
      S(2) => ram_n_28,
      S(1) => ram_n_29,
      S(0) => ram_n_30
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video is
  port (
    locked : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    underflow : out STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video is
  signal active_video_w : STD_LOGIC;
  signal fifo_n_25 : STD_LOGIC;
  signal frmsync_req_reg_n_0 : STD_LOGIC;
  signal \^locked\ : STD_LOGIC;
  signal locked_r_i_1_n_0 : STD_LOGIC;
  signal timing_n_2 : STD_LOGIC;
  signal timing_n_3 : STD_LOGIC;
  signal tuser : STD_LOGIC;
  signal \^vid_vsync\ : STD_LOGIC;
  signal vsync_w : STD_LOGIC;
  signal w2r_wfull1 : STD_LOGIC;
  signal w2r_wfull2 : STD_LOGIC;
  signal wfull : STD_LOGIC;
begin
  locked <= \^locked\;
  vid_vsync <= \^vid_vsync\;
active_video_r_reg: unisim.vcomponents.FDRE
     port map (
      C => vid_clk,
      CE => '1',
      D => active_video_w,
      Q => vid_active_video,
      R => '0'
    );
fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo
     port map (
      DIADI(25 downto 0) => DIADI(25 downto 0),
      DOBDO(24) => tuser,
      DOBDO(23 downto 0) => vid_data(23 downto 0),
      aclk => aclk,
      active_video_w => active_video_w,
      aresetn => aresetn,
      mem_reg => frmsync_req_reg_n_0,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      underflow => underflow,
      vid_clk => vid_clk,
      vid_rstn => vid_rstn,
      vid_rstn_0 => fifo_n_25,
      wfull => wfull
    );
frmsync_req_reg: unisim.vcomponents.FDPE
     port map (
      C => vid_clk,
      CE => '1',
      D => timing_n_3,
      PRE => fifo_n_25,
      Q => frmsync_req_reg_n_0
    );
hsync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => vid_clk,
      CE => '1',
      D => timing_n_2,
      Q => vid_hsync,
      R => '0'
    );
locked_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w2r_wfull2,
      I1 => \^locked\,
      O => locked_r_i_1_n_0
    );
locked_r_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_25,
      D => locked_r_i_1_n_0,
      Q => \^locked\
    );
timing: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen
     port map (
      DOBDO(0) => tuser,
      active_video_w => active_video_w,
      frmsync_req_reg => frmsync_req_reg_n_0,
      locked => \^locked\,
      mem_reg => timing_n_3,
      vid_clk => vid_clk,
      vid_hsync_reg_0 => timing_n_2,
      vid_rstn => vid_rstn,
      vid_vsync => \^vid_vsync\,
      vsync_w => vsync_w
    );
vsync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => vid_clk,
      CE => '1',
      D => vsync_w,
      Q => \^vid_vsync\,
      R => '0'
    );
w2r_wfull1_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_25,
      D => wfull,
      Q => w2r_wfull1
    );
w2r_wfull2_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_25,
      D => w2r_wfull1,
      Q => w2r_wfull2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0 is
  port (
    locked : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    underflow : out STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0 is
begin
axis_to_video_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video
     port map (
      DIADI(25 downto 0) => DIADI(25 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      locked => locked,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      underflow => underflow,
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      vid_data(23 downto 0) => vid_data(23 downto 0),
      vid_hsync => vid_hsync,
      vid_rstn => vid_rstn,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    locked : out STD_LOGIC;
    underflow : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "base_axis_to_video_1_0,axis_to_video_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axis_to_video_v1_0,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF s_axis, FREQ_HZ 120000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 120000000, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 vid_out ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_clk : signal is "xilinx.com:signal:clock:1.0 vid_clk CLK";
  attribute X_INTERFACE_PARAMETER of vid_clk : signal is "XIL_INTERFACENAME vid_clk, ASSOCIATED_RESET vid_rstn, ASSOCIATED_BUSIF video_out, FREQ_HZ 33333333, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_hsync : signal is "xilinx.com:interface:vid_io:1.0 vid_out HSYNC";
  attribute X_INTERFACE_INFO of vid_rstn : signal is "xilinx.com:signal:reset:1.0 vid_rstn RST";
  attribute X_INTERFACE_PARAMETER of vid_rstn : signal is "XIL_INTERFACENAME vid_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_out VSYNC";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of vid_data : signal is "xilinx.com:interface:vid_io:1.0 vid_out DATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0
     port map (
      DIADI(25) => s_axis_tuser,
      DIADI(24) => s_axis_tlast,
      DIADI(23 downto 0) => s_axis_tdata(23 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      locked => locked,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      underflow => underflow,
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      vid_data(23 downto 0) => vid_data(23 downto 0),
      vid_hsync => vid_hsync,
      vid_rstn => vid_rstn,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
