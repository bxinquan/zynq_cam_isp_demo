-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Sep 19 00:08:10 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_axis_to_video_0_0_sim_netlist.vhdl
-- Design      : base_axis_to_video_0_0
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
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_flag : out STD_LOGIC;
    \r2w_rptr2_reg[12]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_flag : out STD_LOGIC;
    q_b : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \raddr_reg__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC;
    wfull : in STD_LOGIC;
    w2r_wfull1_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \waddr_reg__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    active_video_w : in STD_LOGIC;
    mem_reg_1_0 : in STD_LOGIC;
    underflow : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    waddr_reg : in STD_LOGIC_VECTOR ( 11 downto 0 );
    raddr_reg : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wdata_a : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram is
  signal mem_reg_0_n_75 : STD_LOGIC;
  signal \^q_b\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^rd_flag\ : STD_LOGIC;
  signal \^wr_flag\ : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 40960;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "inst/axis_to_video_inst/fifo/ram/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 40960;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "inst/axis_to_video_inst/fifo/ram/mem";
  attribute RTL_RAM_TYPE of mem_reg_1 : label is "RAM_TDP";
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 4095;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 9;
  attribute ram_slice_end of mem_reg_1 : label is 9;
begin
  q_b(8 downto 0) <= \^q_b\(8 downto 0);
  rd_flag <= \^rd_flag\;
  wr_flag <= \^wr_flag\;
mem_reg_0: unisim.vcomponents.RAMB36E1
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
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => waddr_reg(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => raddr_reg(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => vid_clk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => wdata_a(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => wdata_a(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => \^q_b\(7 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => mem_reg_0_n_75,
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => \^wr_flag\,
      ENBWREN => \^rd_flag\,
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => \^wr_flag\,
      WEA(2) => \^wr_flag\,
      WEA(1) => \^wr_flag\,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => wfull,
      O => \^wr_flag\
    );
mem_reg_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => active_video_w,
      I1 => mem_reg_1_0,
      I2 => \^q_b\(8),
      I3 => underflow,
      O => \^rd_flag\
    );
mem_reg_1: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(13 downto 2) => waddr_reg(11 downto 0),
      ADDRARDADDR(1 downto 0) => B"11",
      ADDRBWRADDR(13 downto 2) => raddr_reg(11 downto 0),
      ADDRBWRADDR(1 downto 0) => B"11",
      CLKARDCLK => aclk,
      CLKBWRCLK => vid_clk,
      DIADI(15 downto 1) => B"000000000000000",
      DIADI(0) => wdata_a(9),
      DIBDI(15 downto 0) => B"0000000000000001",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 1) => NLW_mem_reg_1_DOBDO_UNCONNECTED(15 downto 1),
      DOBDO(0) => \^q_b\(8),
      DOPADOP(1 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \^wr_flag\,
      ENBWREN => \^rd_flag\,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^wr_flag\,
      WEA(0) => '1',
      WEBWE(3 downto 0) => B"0000"
    );
\rempty_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \raddr_reg__0\(0),
      I1 => Q(0),
      O => S(0)
    );
\wfull_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w2r_wfull1_reg(0),
      I1 => \waddr_reg__0\(0),
      O => \r2w_rptr2_reg[12]\(0)
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
    mem_reg_1 : out STD_LOGIC;
    vid_clk : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    locked : in STD_LOGIC;
    q_b : in STD_LOGIC_VECTOR ( 0 to 0 );
    frmsync_req_reg : in STD_LOGIC;
    vid_vsync : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen is
  signal \^active_video_w\ : STD_LOGIC;
  signal line_cnt : STD_LOGIC;
  signal \line_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_5_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_6_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_7_n_0\ : STD_LOGIC;
  signal \line_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[7]_i_2_n_0\ : STD_LOGIC;
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
  signal pix_cnt : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal pix_cnt0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \pix_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[9]_i_1_n_0\ : STD_LOGIC;
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
  signal vid_active_video0 : STD_LOGIC;
  signal vid_active_video_i_2_n_0 : STD_LOGIC;
  signal vid_active_video_i_3_n_0 : STD_LOGIC;
  signal vid_hsync_i_1_n_0 : STD_LOGIC;
  signal vid_hsync_i_2_n_0 : STD_LOGIC;
  signal vid_hsync_i_3_n_0 : STD_LOGIC;
  signal vid_hsync_i_4_n_0 : STD_LOGIC;
  signal vid_vsync0 : STD_LOGIC;
  signal \^vsync_w\ : STD_LOGIC;
  signal \NLW_pix_cnt_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pix_cnt_reg[11]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \line_cnt[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \line_cnt[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \line_cnt[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \line_cnt[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pix_cnt[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pix_cnt[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pix_cnt[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pix_cnt[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pix_cnt[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pix_cnt[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pix_cnt[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pix_cnt[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pix_cnt[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pix_cnt[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pix_cnt[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pix_cnt[9]_i_1\ : label is "soft_lutpair21";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[11]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \pix_cnt_reg[8]_i_2\ : label is 35;
begin
  active_video_w <= \^active_video_w\;
  vsync_w <= \^vsync_w\;
frmsync_req_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"707F7F70"
    )
        port map (
      I0 => q_b(0),
      I1 => \^active_video_w\,
      I2 => frmsync_req_reg,
      I3 => \^vsync_w\,
      I4 => vid_vsync,
      O => mem_reg_1
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[0]\,
      O => \line_cnt[0]_i_1_n_0\
    );
\line_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => pix_cnt(0),
      I1 => pix_cnt(1),
      I2 => pix_cnt(2),
      I3 => \line_cnt[10]_i_3_n_0\,
      I4 => \line_cnt[10]_i_4_n_0\,
      O => line_cnt
    );
\line_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA80000000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[8]\,
      I2 => \line_cnt_reg_n_0_[7]\,
      I3 => \line_cnt[10]_i_6_n_0\,
      I4 => \line_cnt_reg_n_0_[9]\,
      I5 => \line_cnt_reg_n_0_[10]\,
      O => \line_cnt[10]_i_2_n_0\
    );
\line_cnt[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pix_cnt(5),
      I1 => pix_cnt(6),
      I2 => pix_cnt(7),
      O => \line_cnt[10]_i_3_n_0\
    );
\line_cnt[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => pix_cnt(4),
      I1 => pix_cnt(3),
      I2 => pix_cnt(9),
      I3 => pix_cnt(11),
      I4 => pix_cnt(10),
      I5 => pix_cnt(8),
      O => \line_cnt[10]_i_4_n_0\
    );
\line_cnt[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAFF"
    )
        port map (
      I0 => \line_cnt[10]_i_7_n_0\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt[5]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[3]\,
      I4 => \line_cnt_reg_n_0_[6]\,
      I5 => \line_cnt_reg_n_0_[4]\,
      O => \line_cnt[10]_i_5_n_0\
    );
\line_cnt[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[6]\,
      I1 => \line_cnt_reg_n_0_[5]\,
      I2 => \line_cnt_reg_n_0_[3]\,
      I3 => \line_cnt[5]_i_2_n_0\,
      I4 => \line_cnt_reg_n_0_[2]\,
      I5 => \line_cnt_reg_n_0_[4]\,
      O => \line_cnt[10]_i_6_n_0\
    );
\line_cnt[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[5]\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt_reg_n_0_[10]\,
      I3 => \line_cnt_reg_n_0_[9]\,
      I4 => \line_cnt_reg_n_0_[8]\,
      I5 => \line_cnt_reg_n_0_[7]\,
      O => \line_cnt[10]_i_7_n_0\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[1]\,
      I2 => \line_cnt_reg_n_0_[0]\,
      O => \line_cnt[1]_i_1_n_0\
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[1]\,
      I2 => \line_cnt_reg_n_0_[0]\,
      I3 => \line_cnt_reg_n_0_[2]\,
      O => \line_cnt[2]_i_1_n_0\
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => \line_cnt_reg_n_0_[1]\,
      I3 => \line_cnt_reg_n_0_[2]\,
      I4 => \line_cnt_reg_n_0_[3]\,
      O => \line_cnt[3]_i_1_n_0\
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt_reg_n_0_[1]\,
      I3 => \line_cnt_reg_n_0_[0]\,
      I4 => \line_cnt_reg_n_0_[3]\,
      I5 => \line_cnt_reg_n_0_[4]\,
      O => \line_cnt[4]_i_1_n_0\
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[3]\,
      I2 => \line_cnt[5]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[2]\,
      I4 => \line_cnt_reg_n_0_[4]\,
      I5 => \line_cnt_reg_n_0_[5]\,
      O => \line_cnt[5]_i_1_n_0\
    );
\line_cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[1]\,
      I1 => \line_cnt_reg_n_0_[0]\,
      O => \line_cnt[5]_i_2_n_0\
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[4]\,
      I2 => \line_cnt[7]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[5]\,
      I4 => \line_cnt_reg_n_0_[6]\,
      O => \line_cnt[6]_i_1_n_0\
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt_reg_n_0_[5]\,
      I3 => \line_cnt[7]_i_2_n_0\,
      I4 => \line_cnt_reg_n_0_[4]\,
      I5 => \line_cnt_reg_n_0_[7]\,
      O => \line_cnt[7]_i_1_n_0\
    );
\line_cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[2]\,
      I1 => \line_cnt_reg_n_0_[1]\,
      I2 => \line_cnt_reg_n_0_[0]\,
      I3 => \line_cnt_reg_n_0_[3]\,
      O => \line_cnt[7]_i_2_n_0\
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[7]\,
      I2 => \line_cnt[10]_i_6_n_0\,
      I3 => \line_cnt_reg_n_0_[8]\,
      O => \line_cnt[8]_i_1_n_0\
    );
\line_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt[10]_i_6_n_0\,
      I2 => \line_cnt_reg_n_0_[7]\,
      I3 => \line_cnt_reg_n_0_[8]\,
      I4 => \line_cnt_reg_n_0_[9]\,
      O => \line_cnt[9]_i_1_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[0]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[0]\
    );
\line_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[10]_i_2_n_0\,
      Q => \line_cnt_reg_n_0_[10]\
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[1]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[1]\
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[2]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[2]\
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[3]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[3]\
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[4]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[4]\
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[5]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[5]\
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[6]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[6]\
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[7]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[7]\
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[8]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[8]\
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[9]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[9]\
    );
\pix_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pix_cnt(0),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[0]_i_1_n_0\
    );
\pix_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(10),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[10]_i_1_n_0\
    );
\pix_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(11),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[11]_i_1_n_0\
    );
\pix_cnt[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => vid_rstn,
      I1 => locked,
      O => \pix_cnt[11]_i_2_n_0\
    );
\pix_cnt[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F200FF000000"
    )
        port map (
      I0 => \line_cnt[10]_i_3_n_0\,
      I1 => \pix_cnt[11]_i_5_n_0\,
      I2 => pix_cnt(8),
      I3 => pix_cnt(11),
      I4 => pix_cnt(10),
      I5 => pix_cnt(9),
      O => \pix_cnt[11]_i_4_n_0\
    );
\pix_cnt[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01111111"
    )
        port map (
      I0 => pix_cnt(4),
      I1 => pix_cnt(3),
      I2 => pix_cnt(2),
      I3 => pix_cnt(1),
      I4 => pix_cnt(0),
      O => \pix_cnt[11]_i_5_n_0\
    );
\pix_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(1),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[1]_i_1_n_0\
    );
\pix_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(2),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[2]_i_1_n_0\
    );
\pix_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(3),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[3]_i_1_n_0\
    );
\pix_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(4),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[4]_i_1_n_0\
    );
\pix_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(5),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[5]_i_1_n_0\
    );
\pix_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(6),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[6]_i_1_n_0\
    );
\pix_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(7),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[7]_i_1_n_0\
    );
\pix_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(8),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[8]_i_1_n_0\
    );
\pix_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pix_cnt0(9),
      I1 => \pix_cnt[11]_i_4_n_0\,
      O => \pix_cnt[9]_i_1_n_0\
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[0]_i_1_n_0\,
      Q => pix_cnt(0)
    );
\pix_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[10]_i_1_n_0\,
      Q => pix_cnt(10)
    );
\pix_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[11]_i_1_n_0\,
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
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[1]_i_1_n_0\,
      Q => pix_cnt(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[2]_i_1_n_0\,
      Q => pix_cnt(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[3]_i_1_n_0\,
      Q => pix_cnt(3)
    );
\pix_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[4]_i_1_n_0\,
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
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[5]_i_1_n_0\,
      Q => pix_cnt(5)
    );
\pix_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[6]_i_1_n_0\,
      Q => pix_cnt(6)
    );
\pix_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[7]_i_1_n_0\,
      Q => pix_cnt(7)
    );
\pix_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[8]_i_1_n_0\,
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
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[9]_i_1_n_0\,
      Q => pix_cnt(9)
    );
vid_active_video_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEEA"
    )
        port map (
      I0 => vid_active_video_i_2_n_0,
      I1 => \line_cnt_reg_n_0_[4]\,
      I2 => \line_cnt_reg_n_0_[3]\,
      I3 => \line_cnt_reg_n_0_[2]\,
      I4 => vid_active_video_i_3_n_0,
      O => vid_active_video0
    );
vid_active_video_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[5]\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt_reg_n_0_[10]\,
      I3 => \line_cnt_reg_n_0_[8]\,
      I4 => \line_cnt_reg_n_0_[9]\,
      I5 => \line_cnt_reg_n_0_[7]\,
      O => vid_active_video_i_2_n_0
    );
vid_active_video_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0F0F010F0F0F"
    )
        port map (
      I0 => pix_cnt(4),
      I1 => pix_cnt(3),
      I2 => vid_hsync_i_4_n_0,
      I3 => pix_cnt(7),
      I4 => pix_cnt(6),
      I5 => pix_cnt(5),
      O => vid_active_video_i_3_n_0
    );
vid_active_video_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => vid_active_video0,
      Q => \^active_video_w\
    );
vid_hsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF550C"
    )
        port map (
      I0 => vid_hsync_i_2_n_0,
      I1 => vid_hsync_i_3_n_0,
      I2 => pix_cnt(6),
      I3 => pix_cnt(7),
      I4 => vid_hsync_i_4_n_0,
      O => vid_hsync_i_1_n_0
    );
vid_hsync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000557F"
    )
        port map (
      I0 => pix_cnt(4),
      I1 => pix_cnt(1),
      I2 => pix_cnt(2),
      I3 => pix_cnt(3),
      I4 => pix_cnt(5),
      I5 => pix_cnt(6),
      O => vid_hsync_i_2_n_0
    );
vid_hsync_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => pix_cnt(2),
      I1 => pix_cnt(1),
      I2 => pix_cnt(3),
      I3 => pix_cnt(4),
      I4 => pix_cnt(5),
      O => vid_hsync_i_3_n_0
    );
vid_hsync_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pix_cnt(9),
      I1 => pix_cnt(10),
      I2 => pix_cnt(8),
      I3 => pix_cnt(11),
      O => vid_hsync_i_4_n_0
    );
vid_hsync_reg: unisim.vcomponents.FDPE
     port map (
      C => vid_clk,
      CE => '1',
      D => vid_hsync_i_1_n_0,
      PRE => \pix_cnt[11]_i_2_n_0\,
      Q => vid_hsync_reg_0
    );
vid_vsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015554440"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[4]\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt_reg_n_0_[1]\,
      I3 => \line_cnt_reg_n_0_[0]\,
      I4 => \line_cnt_reg_n_0_[3]\,
      I5 => vid_active_video_i_2_n_0,
      O => vid_vsync0
    );
vid_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
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
    vid_rstn_0 : out STD_LOGIC;
    q_b : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wfull : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    underflow : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    wdata_a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    active_video_w : in STD_LOGIC;
    mem_reg_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo is
  signal r2w_rptr1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \r2w_rptr1[12]_i_1_n_0\ : STD_LOGIC;
  signal r2w_rptr2 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \raddr[0]_i_2_n_0\ : STD_LOGIC;
  signal raddr_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \raddr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \raddr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \raddr_reg__0\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal ram_n_0 : STD_LOGIC;
  signal ram_n_2 : STD_LOGIC;
  signal rd_flag : STD_LOGIC;
  signal rempty_carry_i_1_n_0 : STD_LOGIC;
  signal rempty_carry_i_2_n_0 : STD_LOGIC;
  signal rempty_carry_i_3_n_0 : STD_LOGIC;
  signal rempty_carry_i_4_n_0 : STD_LOGIC;
  signal rempty_carry_i_5_n_0 : STD_LOGIC;
  signal rempty_carry_i_6_n_0 : STD_LOGIC;
  signal rempty_carry_i_7_n_0 : STD_LOGIC;
  signal rempty_carry_i_8_n_0 : STD_LOGIC;
  signal rempty_carry_n_0 : STD_LOGIC;
  signal rempty_carry_n_1 : STD_LOGIC;
  signal rempty_carry_n_2 : STD_LOGIC;
  signal rempty_carry_n_3 : STD_LOGIC;
  signal rptr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^underflow\ : STD_LOGIC;
  signal \^vid_rstn_0\ : STD_LOGIC;
  signal w2r_wptr1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal w2r_wptr2 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \waddr[0]_i_2_n_0\ : STD_LOGIC;
  signal waddr_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \waddr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \waddr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \waddr_reg__0\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \^wfull\ : STD_LOGIC;
  signal wfull_carry_i_1_n_0 : STD_LOGIC;
  signal wfull_carry_i_2_n_0 : STD_LOGIC;
  signal wfull_carry_i_3_n_0 : STD_LOGIC;
  signal wfull_carry_i_4_n_0 : STD_LOGIC;
  signal wfull_carry_i_5_n_0 : STD_LOGIC;
  signal wfull_carry_i_6_n_0 : STD_LOGIC;
  signal wfull_carry_i_7_n_0 : STD_LOGIC;
  signal wfull_carry_i_8_n_0 : STD_LOGIC;
  signal wfull_carry_n_0 : STD_LOGIC;
  signal wfull_carry_n_1 : STD_LOGIC;
  signal wfull_carry_n_2 : STD_LOGIC;
  signal wfull_carry_n_3 : STD_LOGIC;
  signal wptr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wr_flag : STD_LOGIC;
  signal \NLW_raddr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_raddr_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_rempty_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rempty_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rempty_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_waddr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_waddr_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_wfull_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wfull_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wfull_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r2w_rptr1[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r2w_rptr1[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r2w_rptr1[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r2w_rptr1[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r2w_rptr1[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r2w_rptr1[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r2w_rptr1[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r2w_rptr1[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r2w_rptr1[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r2w_rptr1[9]_i_1\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \raddr_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \raddr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \raddr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \raddr_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of rempty_carry_i_5 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of rempty_carry_i_6 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of rempty_carry_i_7 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of rempty_carry_i_8 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w2r_wptr1[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w2r_wptr1[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \w2r_wptr1[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w2r_wptr1[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w2r_wptr1[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w2r_wptr1[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w2r_wptr1[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w2r_wptr1[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w2r_wptr1[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w2r_wptr1[9]_i_1\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD of \waddr_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \waddr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \waddr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \waddr_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of wfull_carry_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of wfull_carry_i_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of wfull_carry_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of wfull_carry_i_8 : label is "soft_lutpair0";
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
\r2w_rptr1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(11),
      I1 => raddr_reg(10),
      O => rptr(10)
    );
\r2w_rptr1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \raddr_reg__0\(12),
      I1 => raddr_reg(11),
      O => rptr(11)
    );
\r2w_rptr1[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \r2w_rptr1[12]_i_1_n_0\
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
      I0 => raddr_reg(10),
      I1 => raddr_reg(9),
      O => rptr(9)
    );
\r2w_rptr1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(0),
      Q => r2w_rptr1(0)
    );
\r2w_rptr1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(10),
      Q => r2w_rptr1(10)
    );
\r2w_rptr1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(11),
      Q => r2w_rptr1(11)
    );
\r2w_rptr1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \raddr_reg__0\(12),
      Q => r2w_rptr1(12)
    );
\r2w_rptr1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(1),
      Q => r2w_rptr1(1)
    );
\r2w_rptr1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(2),
      Q => r2w_rptr1(2)
    );
\r2w_rptr1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(3),
      Q => r2w_rptr1(3)
    );
\r2w_rptr1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(4),
      Q => r2w_rptr1(4)
    );
\r2w_rptr1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(5),
      Q => r2w_rptr1(5)
    );
\r2w_rptr1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(6),
      Q => r2w_rptr1(6)
    );
\r2w_rptr1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(7),
      Q => r2w_rptr1(7)
    );
\r2w_rptr1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(8),
      Q => r2w_rptr1(8)
    );
\r2w_rptr1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => rptr(9),
      Q => r2w_rptr1(9)
    );
\r2w_rptr2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(0),
      Q => r2w_rptr2(0)
    );
\r2w_rptr2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(10),
      Q => r2w_rptr2(10)
    );
\r2w_rptr2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(11),
      Q => r2w_rptr2(11)
    );
\r2w_rptr2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(12),
      Q => r2w_rptr2(12)
    );
\r2w_rptr2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(1),
      Q => r2w_rptr2(1)
    );
\r2w_rptr2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(2),
      Q => r2w_rptr2(2)
    );
\r2w_rptr2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(3),
      Q => r2w_rptr2(3)
    );
\r2w_rptr2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(4),
      Q => r2w_rptr2(4)
    );
\r2w_rptr2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(5),
      Q => r2w_rptr2(5)
    );
\r2w_rptr2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(6),
      Q => r2w_rptr2(6)
    );
\r2w_rptr2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(7),
      Q => r2w_rptr2(7)
    );
\r2w_rptr2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(8),
      Q => r2w_rptr2(8)
    );
\r2w_rptr2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => r2w_rptr1(9),
      Q => r2w_rptr2(9)
    );
\raddr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raddr_reg(0),
      O => \raddr[0]_i_2_n_0\
    );
\raddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[0]_i_1_n_7\,
      Q => raddr_reg(0)
    );
\raddr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \raddr_reg[0]_i_1_n_0\,
      CO(2) => \raddr_reg[0]_i_1_n_1\,
      CO(1) => \raddr_reg[0]_i_1_n_2\,
      CO(0) => \raddr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \raddr_reg[0]_i_1_n_4\,
      O(2) => \raddr_reg[0]_i_1_n_5\,
      O(1) => \raddr_reg[0]_i_1_n_6\,
      O(0) => \raddr_reg[0]_i_1_n_7\,
      S(3 downto 1) => raddr_reg(3 downto 1),
      S(0) => \raddr[0]_i_2_n_0\
    );
\raddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[8]_i_1_n_5\,
      Q => raddr_reg(10)
    );
\raddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[8]_i_1_n_4\,
      Q => raddr_reg(11)
    );
\raddr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[12]_i_1_n_7\,
      Q => \raddr_reg__0\(12)
    );
\raddr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \raddr_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_raddr_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_raddr_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \raddr_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \raddr_reg__0\(12)
    );
\raddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[0]_i_1_n_6\,
      Q => raddr_reg(1)
    );
\raddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[0]_i_1_n_5\,
      Q => raddr_reg(2)
    );
\raddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[0]_i_1_n_4\,
      Q => raddr_reg(3)
    );
\raddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[4]_i_1_n_7\,
      Q => raddr_reg(4)
    );
\raddr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \raddr_reg[0]_i_1_n_0\,
      CO(3) => \raddr_reg[4]_i_1_n_0\,
      CO(2) => \raddr_reg[4]_i_1_n_1\,
      CO(1) => \raddr_reg[4]_i_1_n_2\,
      CO(0) => \raddr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \raddr_reg[4]_i_1_n_4\,
      O(2) => \raddr_reg[4]_i_1_n_5\,
      O(1) => \raddr_reg[4]_i_1_n_6\,
      O(0) => \raddr_reg[4]_i_1_n_7\,
      S(3 downto 0) => raddr_reg(7 downto 4)
    );
\raddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[4]_i_1_n_6\,
      Q => raddr_reg(5)
    );
\raddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[4]_i_1_n_5\,
      Q => raddr_reg(6)
    );
\raddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[4]_i_1_n_4\,
      Q => raddr_reg(7)
    );
\raddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[8]_i_1_n_7\,
      Q => raddr_reg(8)
    );
\raddr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \raddr_reg[4]_i_1_n_0\,
      CO(3) => \raddr_reg[8]_i_1_n_0\,
      CO(2) => \raddr_reg[8]_i_1_n_1\,
      CO(1) => \raddr_reg[8]_i_1_n_2\,
      CO(0) => \raddr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \raddr_reg[8]_i_1_n_4\,
      O(2) => \raddr_reg[8]_i_1_n_5\,
      O(1) => \raddr_reg[8]_i_1_n_6\,
      O(0) => \raddr_reg[8]_i_1_n_7\,
      S(3 downto 0) => raddr_reg(11 downto 8)
    );
\raddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => \raddr_reg[8]_i_1_n_6\,
      Q => raddr_reg(9)
    );
ram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram
     port map (
      Q(0) => w2r_wptr2(12),
      S(0) => ram_n_0,
      aclk => aclk,
      active_video_w => active_video_w,
      mem_reg_1_0 => mem_reg_1,
      q_b(8 downto 0) => q_b(8 downto 0),
      \r2w_rptr2_reg[12]\(0) => ram_n_2,
      raddr_reg(11 downto 0) => raddr_reg(11 downto 0),
      \raddr_reg__0\(0) => \raddr_reg__0\(12),
      rd_flag => rd_flag,
      s_axis_tvalid => s_axis_tvalid,
      underflow => \^underflow\,
      vid_clk => vid_clk,
      w2r_wfull1_reg(0) => r2w_rptr2(12),
      waddr_reg(11 downto 0) => waddr_reg(11 downto 0),
      \waddr_reg__0\(0) => \waddr_reg__0\(12),
      wdata_a(9 downto 0) => wdata_a(9 downto 0),
      wfull => \^wfull\,
      wr_flag => wr_flag
    );
rempty_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rempty_carry_n_0,
      CO(2) => rempty_carry_n_1,
      CO(1) => rempty_carry_n_2,
      CO(0) => rempty_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_rempty_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rempty_carry_i_1_n_0,
      S(2) => rempty_carry_i_2_n_0,
      S(1) => rempty_carry_i_3_n_0,
      S(0) => rempty_carry_i_4_n_0
    );
\rempty_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rempty_carry_n_0,
      CO(3 downto 1) => \NLW_rempty_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^underflow\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rempty_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => ram_n_0
    );
rempty_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => w2r_wptr2(9),
      I1 => raddr_reg(10),
      I2 => raddr_reg(9),
      I3 => rempty_carry_i_5_n_0,
      O => rempty_carry_i_1_n_0
    );
rempty_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => w2r_wptr2(6),
      I1 => raddr_reg(7),
      I2 => raddr_reg(6),
      I3 => rempty_carry_i_6_n_0,
      O => rempty_carry_i_2_n_0
    );
rempty_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => w2r_wptr2(3),
      I1 => raddr_reg(4),
      I2 => raddr_reg(3),
      I3 => rempty_carry_i_7_n_0,
      O => rempty_carry_i_3_n_0
    );
rempty_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => w2r_wptr2(0),
      I1 => raddr_reg(1),
      I2 => raddr_reg(0),
      I3 => rempty_carry_i_8_n_0,
      O => rempty_carry_i_4_n_0
    );
rempty_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => w2r_wptr2(10),
      I1 => raddr_reg(10),
      I2 => w2r_wptr2(11),
      I3 => \raddr_reg__0\(12),
      I4 => raddr_reg(11),
      O => rempty_carry_i_5_n_0
    );
rempty_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => w2r_wptr2(7),
      I1 => raddr_reg(7),
      I2 => w2r_wptr2(8),
      I3 => raddr_reg(9),
      I4 => raddr_reg(8),
      O => rempty_carry_i_6_n_0
    );
rempty_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => w2r_wptr2(4),
      I1 => raddr_reg(4),
      I2 => w2r_wptr2(5),
      I3 => raddr_reg(6),
      I4 => raddr_reg(5),
      O => rempty_carry_i_7_n_0
    );
rempty_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => w2r_wptr2(1),
      I1 => raddr_reg(1),
      I2 => w2r_wptr2(2),
      I3 => raddr_reg(3),
      I4 => raddr_reg(2),
      O => rempty_carry_i_8_n_0
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
\w2r_wptr1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(11),
      I1 => waddr_reg(10),
      O => wptr(10)
    );
\w2r_wptr1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \waddr_reg__0\(12),
      I1 => waddr_reg(11),
      O => wptr(11)
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
      I0 => waddr_reg(10),
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
      D => wptr(10),
      Q => w2r_wptr1(10)
    );
\w2r_wptr1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(11),
      Q => w2r_wptr1(11)
    );
\w2r_wptr1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => \waddr_reg__0\(12),
      Q => w2r_wptr1(12)
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
\w2r_wptr2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(11),
      Q => w2r_wptr2(11)
    );
\w2r_wptr2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(12),
      Q => w2r_wptr2(12)
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
\waddr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => waddr_reg(0),
      O => \waddr[0]_i_2_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[0]_i_1_n_7\,
      Q => waddr_reg(0)
    );
\waddr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \waddr_reg[0]_i_1_n_0\,
      CO(2) => \waddr_reg[0]_i_1_n_1\,
      CO(1) => \waddr_reg[0]_i_1_n_2\,
      CO(0) => \waddr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \waddr_reg[0]_i_1_n_4\,
      O(2) => \waddr_reg[0]_i_1_n_5\,
      O(1) => \waddr_reg[0]_i_1_n_6\,
      O(0) => \waddr_reg[0]_i_1_n_7\,
      S(3 downto 1) => waddr_reg(3 downto 1),
      S(0) => \waddr[0]_i_2_n_0\
    );
\waddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[8]_i_1_n_5\,
      Q => waddr_reg(10)
    );
\waddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[8]_i_1_n_4\,
      Q => waddr_reg(11)
    );
\waddr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[12]_i_1_n_7\,
      Q => \waddr_reg__0\(12)
    );
\waddr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waddr_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_waddr_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_waddr_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \waddr_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \waddr_reg__0\(12)
    );
\waddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[0]_i_1_n_6\,
      Q => waddr_reg(1)
    );
\waddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[0]_i_1_n_5\,
      Q => waddr_reg(2)
    );
\waddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[0]_i_1_n_4\,
      Q => waddr_reg(3)
    );
\waddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[4]_i_1_n_7\,
      Q => waddr_reg(4)
    );
\waddr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waddr_reg[0]_i_1_n_0\,
      CO(3) => \waddr_reg[4]_i_1_n_0\,
      CO(2) => \waddr_reg[4]_i_1_n_1\,
      CO(1) => \waddr_reg[4]_i_1_n_2\,
      CO(0) => \waddr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \waddr_reg[4]_i_1_n_4\,
      O(2) => \waddr_reg[4]_i_1_n_5\,
      O(1) => \waddr_reg[4]_i_1_n_6\,
      O(0) => \waddr_reg[4]_i_1_n_7\,
      S(3 downto 0) => waddr_reg(7 downto 4)
    );
\waddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[4]_i_1_n_6\,
      Q => waddr_reg(5)
    );
\waddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[4]_i_1_n_5\,
      Q => waddr_reg(6)
    );
\waddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[4]_i_1_n_4\,
      Q => waddr_reg(7)
    );
\waddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[8]_i_1_n_7\,
      Q => waddr_reg(8)
    );
\waddr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waddr_reg[4]_i_1_n_0\,
      CO(3) => \waddr_reg[8]_i_1_n_0\,
      CO(2) => \waddr_reg[8]_i_1_n_1\,
      CO(1) => \waddr_reg[8]_i_1_n_2\,
      CO(0) => \waddr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \waddr_reg[8]_i_1_n_4\,
      O(2) => \waddr_reg[8]_i_1_n_5\,
      O(1) => \waddr_reg[8]_i_1_n_6\,
      O(0) => \waddr_reg[8]_i_1_n_7\,
      S(3 downto 0) => waddr_reg(11 downto 8)
    );
\waddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[12]_i_1_n_0\,
      D => \waddr_reg[8]_i_1_n_6\,
      Q => waddr_reg(9)
    );
wfull_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wfull_carry_n_0,
      CO(2) => wfull_carry_n_1,
      CO(1) => wfull_carry_n_2,
      CO(0) => wfull_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_wfull_carry_O_UNCONNECTED(3 downto 0),
      S(3) => wfull_carry_i_1_n_0,
      S(2) => wfull_carry_i_2_n_0,
      S(1) => wfull_carry_i_3_n_0,
      S(0) => wfull_carry_i_4_n_0
    );
\wfull_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wfull_carry_n_0,
      CO(3 downto 1) => \NLW_wfull_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^wfull\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_wfull_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => ram_n_2
    );
wfull_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => waddr_reg(10),
      I1 => waddr_reg(9),
      I2 => r2w_rptr2(9),
      I3 => wfull_carry_i_5_n_0,
      O => wfull_carry_i_1_n_0
    );
wfull_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => waddr_reg(7),
      I1 => waddr_reg(6),
      I2 => r2w_rptr2(6),
      I3 => wfull_carry_i_6_n_0,
      O => wfull_carry_i_2_n_0
    );
wfull_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => waddr_reg(4),
      I1 => waddr_reg(3),
      I2 => r2w_rptr2(3),
      I3 => wfull_carry_i_7_n_0,
      O => wfull_carry_i_3_n_0
    );
wfull_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => waddr_reg(1),
      I1 => waddr_reg(0),
      I2 => r2w_rptr2(0),
      I3 => wfull_carry_i_8_n_0,
      O => wfull_carry_i_4_n_0
    );
wfull_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60090690"
    )
        port map (
      I0 => waddr_reg(10),
      I1 => r2w_rptr2(10),
      I2 => \waddr_reg__0\(12),
      I3 => waddr_reg(11),
      I4 => r2w_rptr2(11),
      O => wfull_carry_i_5_n_0
    );
wfull_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(7),
      I1 => r2w_rptr2(7),
      I2 => waddr_reg(9),
      I3 => waddr_reg(8),
      I4 => r2w_rptr2(8),
      O => wfull_carry_i_6_n_0
    );
wfull_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(4),
      I1 => r2w_rptr2(4),
      I2 => waddr_reg(6),
      I3 => waddr_reg(5),
      I4 => r2w_rptr2(5),
      O => wfull_carry_i_7_n_0
    );
wfull_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(1),
      I1 => r2w_rptr2(1),
      I2 => waddr_reg(3),
      I3 => waddr_reg(2),
      I4 => r2w_rptr2(2),
      O => wfull_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video is
  port (
    locked : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    underflow : out STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    wdata_a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video is
  signal active_video_w : STD_LOGIC;
  signal fifo_n_0 : STD_LOGIC;
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
      aclk => aclk,
      active_video_w => active_video_w,
      aresetn => aresetn,
      mem_reg_1 => frmsync_req_reg_n_0,
      q_b(8) => tuser,
      q_b(7 downto 0) => vid_data(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      underflow => underflow,
      vid_clk => vid_clk,
      vid_rstn => vid_rstn,
      vid_rstn_0 => fifo_n_0,
      wdata_a(9 downto 0) => wdata_a(9 downto 0),
      wfull => wfull
    );
frmsync_req_reg: unisim.vcomponents.FDPE
     port map (
      C => vid_clk,
      CE => '1',
      D => timing_n_3,
      PRE => fifo_n_0,
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
      CLR => fifo_n_0,
      D => locked_r_i_1_n_0,
      Q => \^locked\
    );
timing: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen
     port map (
      active_video_w => active_video_w,
      frmsync_req_reg => frmsync_req_reg_n_0,
      locked => \^locked\,
      mem_reg_1 => timing_n_3,
      q_b(0) => tuser,
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
      CLR => fifo_n_0,
      D => wfull,
      Q => w2r_wfull1
    );
w2r_wfull2_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
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
    vid_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    underflow : out STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    wdata_a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0 is
begin
axis_to_video_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video
     port map (
      aclk => aclk,
      aresetn => aresetn,
      locked => locked,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      underflow => underflow,
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      vid_data(7 downto 0) => vid_data(7 downto 0),
      vid_hsync => vid_hsync,
      vid_rstn => vid_rstn,
      vid_vsync => vid_vsync,
      wdata_a(9 downto 0) => wdata_a(9 downto 0)
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
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    locked : out STD_LOGIC;
    underflow : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "base_axis_to_video_0_0,axis_to_video_v1_0,{}";
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
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 120000000, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 vid_out ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_clk : signal is "xilinx.com:signal:clock:1.0 vid_clk CLK";
  attribute X_INTERFACE_PARAMETER of vid_clk : signal is "XIL_INTERFACENAME vid_clk, ASSOCIATED_RESET vid_rstn, ASSOCIATED_BUSIF video_out, FREQ_HZ 120000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_hsync : signal is "xilinx.com:interface:vid_io:1.0 vid_out HSYNC";
  attribute X_INTERFACE_INFO of vid_rstn : signal is "xilinx.com:signal:reset:1.0 vid_rstn RST";
  attribute X_INTERFACE_PARAMETER of vid_rstn : signal is "XIL_INTERFACENAME vid_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_out VSYNC";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of vid_data : signal is "xilinx.com:interface:vid_io:1.0 vid_out DATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0
     port map (
      aclk => aclk,
      aresetn => aresetn,
      locked => locked,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      underflow => underflow,
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      vid_data(7 downto 0) => vid_data(7 downto 0),
      vid_hsync => vid_hsync,
      vid_rstn => vid_rstn,
      vid_vsync => vid_vsync,
      wdata_a(9) => s_axis_tuser,
      wdata_a(8) => s_axis_tlast,
      wdata_a(7 downto 0) => s_axis_tdata(7 downto 0)
    );
end STRUCTURE;
