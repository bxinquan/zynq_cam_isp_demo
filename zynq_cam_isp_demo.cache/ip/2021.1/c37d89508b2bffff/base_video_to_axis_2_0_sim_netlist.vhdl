-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sun Sep 18 22:50:13 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_video_to_axis_2_0_sim_netlist.vhdl
-- Design      : base_video_to_axis_2_0
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
    wr_flag : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_flag : out STD_LOGIC;
    \w2r_wptr2_reg[9]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    q_b : out STD_LOGIC_VECTOR ( 25 downto 0 );
    prev_active_video : in STD_LOGIC;
    overflow : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    waddr_reg : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    overflow_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    rempty_carry : in STD_LOGIC_VECTOR ( 11 downto 0 );
    raddr_reg : in STD_LOGIC_VECTOR ( 10 downto 0 );
    rempty_carry_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_clk : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wdata_a : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram is
  signal p_0_out : STD_LOGIC_VECTOR ( 24 to 24 );
  signal \^rd_flag\ : STD_LOGIC;
  signal rempty_carry_i_5_n_0 : STD_LOGIC;
  signal rempty_carry_i_6_n_0 : STD_LOGIC;
  signal rempty_carry_i_7_n_0 : STD_LOGIC;
  signal wfull_carry_i_5_n_0 : STD_LOGIC;
  signal wfull_carry_i_6_n_0 : STD_LOGIC;
  signal wfull_carry_i_7_n_0 : STD_LOGIC;
  signal \^wr_flag\ : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 53248;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "inst/video_to_axis_inst/fifo/ram/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 17;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 53248;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "inst/video_to_axis_inst/fifo/ram/mem";
  attribute RTL_RAM_TYPE of mem_reg_1 : label is "RAM_TDP";
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 2047;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 18;
  attribute ram_slice_end of mem_reg_1 : label is 25;
begin
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
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => waddr_reg(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => raddr_reg(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => vid_clk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => wdata_a(15 downto 0),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => wdata_a(17 downto 16),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 16) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 16),
      DOBDO(15 downto 0) => q_b(15 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 2) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 2),
      DOPBDOP(1 downto 0) => q_b(17 downto 16),
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
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_1: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => waddr_reg(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(13 downto 3) => raddr_reg(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CLKARDCLK => vid_clk,
      CLKBWRCLK => aclk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7) => wdata_a(24),
      DIADI(6) => p_0_out(24),
      DIADI(5 downto 0) => wdata_a(23 downto 18),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_mem_reg_1_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => q_b(25 downto 18),
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
mem_reg_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_active_video,
      I1 => overflow,
      O => \^wr_flag\
    );
mem_reg_1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axis_tready,
      I1 => CO(0),
      O => \^rd_flag\
    );
mem_reg_1_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_active_video,
      I1 => vid_active_video,
      O => p_0_out(24)
    );
rempty_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006900060000009"
    )
        port map (
      I0 => rempty_carry(9),
      I1 => raddr_reg(9),
      I2 => rempty_carry_0(0),
      I3 => rempty_carry(11),
      I4 => raddr_reg(10),
      I5 => rempty_carry(10),
      O => \w2r_wptr2_reg[9]\(3)
    );
rempty_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => rempty_carry(6),
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
      I0 => rempty_carry(3),
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
      I0 => rempty_carry(0),
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
      I0 => rempty_carry(7),
      I1 => raddr_reg(7),
      I2 => rempty_carry(8),
      I3 => raddr_reg(9),
      I4 => raddr_reg(8),
      O => rempty_carry_i_5_n_0
    );
rempty_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => rempty_carry(4),
      I1 => raddr_reg(4),
      I2 => rempty_carry(5),
      I3 => raddr_reg(6),
      I4 => raddr_reg(5),
      O => rempty_carry_i_6_n_0
    );
rempty_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => rempty_carry(1),
      I1 => raddr_reg(1),
      I2 => rempty_carry(2),
      I3 => raddr_reg(3),
      I4 => raddr_reg(2),
      O => rempty_carry_i_7_n_0
    );
wfull_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600006000900900"
    )
        port map (
      I0 => waddr_reg(9),
      I1 => Q(9),
      I2 => Q(11),
      I3 => overflow_0(0),
      I4 => Q(10),
      I5 => waddr_reg(10),
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo is
  port (
    vid_rstn_0 : out STD_LOGIC;
    q_b : out STD_LOGIC_VECTOR ( 25 downto 0 );
    overflow : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wdata_a : in STD_LOGIC_VECTOR ( 24 downto 0 );
    prev_active_video : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo is
  signal \^overflow\ : STD_LOGIC;
  signal r2w_rptr1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal r2w_rptr2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \raddr[0]_i_2_n_0\ : STD_LOGIC;
  signal raddr_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \raddr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \raddr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \raddr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \raddr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \raddr_reg__0\ : STD_LOGIC_VECTOR ( 11 to 11 );
  signal ram_n_1 : STD_LOGIC;
  signal ram_n_2 : STD_LOGIC;
  signal ram_n_3 : STD_LOGIC;
  signal ram_n_4 : STD_LOGIC;
  signal ram_n_6 : STD_LOGIC;
  signal ram_n_7 : STD_LOGIC;
  signal ram_n_8 : STD_LOGIC;
  signal ram_n_9 : STD_LOGIC;
  signal rd_flag : STD_LOGIC;
  signal rempty : STD_LOGIC;
  signal rempty_carry_n_1 : STD_LOGIC;
  signal rempty_carry_n_2 : STD_LOGIC;
  signal rempty_carry_n_3 : STD_LOGIC;
  signal rptr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^vid_rstn_0\ : STD_LOGIC;
  signal w2r_wptr1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \w2r_wptr1[11]_i_1_n_0\ : STD_LOGIC;
  signal w2r_wptr2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \waddr[0]_i_2_n_0\ : STD_LOGIC;
  signal waddr_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \waddr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \waddr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \waddr_reg__0\ : STD_LOGIC_VECTOR ( 11 to 11 );
  signal wfull_carry_n_1 : STD_LOGIC;
  signal wfull_carry_n_2 : STD_LOGIC;
  signal wfull_carry_n_3 : STD_LOGIC;
  signal wptr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wr_flag : STD_LOGIC;
  signal \NLW_raddr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_rempty_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_waddr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_wfull_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r2w_rptr1[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r2w_rptr1[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r2w_rptr1[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r2w_rptr1[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r2w_rptr1[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r2w_rptr1[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r2w_rptr1[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r2w_rptr1[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r2w_rptr1[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r2w_rptr1[9]_i_1\ : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \raddr_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \raddr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \raddr_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \w2r_wptr1[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \w2r_wptr1[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \w2r_wptr1[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w2r_wptr1[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w2r_wptr1[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w2r_wptr1[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w2r_wptr1[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w2r_wptr1[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w2r_wptr1[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w2r_wptr1[9]_i_1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of \waddr_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \waddr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \waddr_reg[8]_i_1\ : label is 11;
begin
  overflow <= \^overflow\;
  vid_rstn_0 <= \^vid_rstn_0\;
m_axis_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rempty,
      O => m_axis_tvalid
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
      I0 => \raddr_reg__0\(11),
      I1 => raddr_reg(10),
      O => rptr(10)
    );
\r2w_rptr1[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vid_rstn,
      O => \^vid_rstn_0\
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
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(0),
      Q => r2w_rptr1(0)
    );
\r2w_rptr1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(10),
      Q => r2w_rptr1(10)
    );
\r2w_rptr1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => \raddr_reg__0\(11),
      Q => r2w_rptr1(11)
    );
\r2w_rptr1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(1),
      Q => r2w_rptr1(1)
    );
\r2w_rptr1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(2),
      Q => r2w_rptr1(2)
    );
\r2w_rptr1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(3),
      Q => r2w_rptr1(3)
    );
\r2w_rptr1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(4),
      Q => r2w_rptr1(4)
    );
\r2w_rptr1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(5),
      Q => r2w_rptr1(5)
    );
\r2w_rptr1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(6),
      Q => r2w_rptr1(6)
    );
\r2w_rptr1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(7),
      Q => r2w_rptr1(7)
    );
\r2w_rptr1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(8),
      Q => r2w_rptr1(8)
    );
\r2w_rptr1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(9),
      Q => r2w_rptr1(9)
    );
\r2w_rptr2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(0),
      Q => r2w_rptr2(0)
    );
\r2w_rptr2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(10),
      Q => r2w_rptr2(10)
    );
\r2w_rptr2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(11),
      Q => r2w_rptr2(11)
    );
\r2w_rptr2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(1),
      Q => r2w_rptr2(1)
    );
\r2w_rptr2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(2),
      Q => r2w_rptr2(2)
    );
\r2w_rptr2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(3),
      Q => r2w_rptr2(3)
    );
\r2w_rptr2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(4),
      Q => r2w_rptr2(4)
    );
\r2w_rptr2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(5),
      Q => r2w_rptr2(5)
    );
\r2w_rptr2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(6),
      Q => r2w_rptr2(6)
    );
\r2w_rptr2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(7),
      Q => r2w_rptr2(7)
    );
\r2w_rptr2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(8),
      Q => r2w_rptr2(8)
    );
\r2w_rptr2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
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
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
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
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \raddr_reg[8]_i_1_n_5\,
      Q => raddr_reg(10)
    );
\raddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \raddr_reg[8]_i_1_n_4\,
      Q => \raddr_reg__0\(11)
    );
\raddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \raddr_reg[0]_i_1_n_6\,
      Q => raddr_reg(1)
    );
\raddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \raddr_reg[0]_i_1_n_5\,
      Q => raddr_reg(2)
    );
\raddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \raddr_reg[0]_i_1_n_4\,
      Q => raddr_reg(3)
    );
\raddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
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
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \raddr_reg[4]_i_1_n_6\,
      Q => raddr_reg(5)
    );
\raddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \raddr_reg[4]_i_1_n_5\,
      Q => raddr_reg(6)
    );
\raddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \raddr_reg[4]_i_1_n_4\,
      Q => raddr_reg(7)
    );
\raddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \raddr_reg[8]_i_1_n_7\,
      Q => raddr_reg(8)
    );
\raddr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \raddr_reg[4]_i_1_n_0\,
      CO(3) => \NLW_raddr_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \raddr_reg[8]_i_1_n_1\,
      CO(1) => \raddr_reg[8]_i_1_n_2\,
      CO(0) => \raddr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \raddr_reg[8]_i_1_n_4\,
      O(2) => \raddr_reg[8]_i_1_n_5\,
      O(1) => \raddr_reg[8]_i_1_n_6\,
      O(0) => \raddr_reg[8]_i_1_n_7\,
      S(3) => \raddr_reg__0\(11),
      S(2 downto 0) => raddr_reg(10 downto 8)
    );
\raddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \raddr_reg[8]_i_1_n_6\,
      Q => raddr_reg(9)
    );
ram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram
     port map (
      CO(0) => rempty,
      Q(11 downto 0) => r2w_rptr2(11 downto 0),
      S(3) => ram_n_1,
      S(2) => ram_n_2,
      S(1) => ram_n_3,
      S(0) => ram_n_4,
      aclk => aclk,
      m_axis_tready => m_axis_tready,
      overflow => \^overflow\,
      overflow_0(0) => \waddr_reg__0\(11),
      prev_active_video => prev_active_video,
      q_b(25 downto 0) => q_b(25 downto 0),
      raddr_reg(10 downto 0) => raddr_reg(10 downto 0),
      rd_flag => rd_flag,
      rempty_carry(11 downto 0) => w2r_wptr2(11 downto 0),
      rempty_carry_0(0) => \raddr_reg__0\(11),
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      \w2r_wptr2_reg[9]\(3) => ram_n_6,
      \w2r_wptr2_reg[9]\(2) => ram_n_7,
      \w2r_wptr2_reg[9]\(1) => ram_n_8,
      \w2r_wptr2_reg[9]\(0) => ram_n_9,
      waddr_reg(10 downto 0) => waddr_reg(10 downto 0),
      wdata_a(24 downto 0) => wdata_a(24 downto 0),
      wr_flag => wr_flag
    );
rempty_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rempty,
      CO(2) => rempty_carry_n_1,
      CO(1) => rempty_carry_n_2,
      CO(0) => rempty_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_rempty_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ram_n_6,
      S(2) => ram_n_7,
      S(1) => ram_n_8,
      S(0) => ram_n_9
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
      I0 => \waddr_reg__0\(11),
      I1 => waddr_reg(10),
      O => wptr(10)
    );
\w2r_wptr1[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \w2r_wptr1[11]_i_1_n_0\
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
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(0),
      Q => w2r_wptr1(0)
    );
\w2r_wptr1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(10),
      Q => w2r_wptr1(10)
    );
\w2r_wptr1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => \waddr_reg__0\(11),
      Q => w2r_wptr1(11)
    );
\w2r_wptr1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(1),
      Q => w2r_wptr1(1)
    );
\w2r_wptr1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(2),
      Q => w2r_wptr1(2)
    );
\w2r_wptr1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(3),
      Q => w2r_wptr1(3)
    );
\w2r_wptr1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(4),
      Q => w2r_wptr1(4)
    );
\w2r_wptr1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(5),
      Q => w2r_wptr1(5)
    );
\w2r_wptr1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(6),
      Q => w2r_wptr1(6)
    );
\w2r_wptr1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(7),
      Q => w2r_wptr1(7)
    );
\w2r_wptr1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(8),
      Q => w2r_wptr1(8)
    );
\w2r_wptr1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => wptr(9),
      Q => w2r_wptr1(9)
    );
\w2r_wptr2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(0),
      Q => w2r_wptr2(0)
    );
\w2r_wptr2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(10),
      Q => w2r_wptr2(10)
    );
\w2r_wptr2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(11),
      Q => w2r_wptr2(11)
    );
\w2r_wptr2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(1),
      Q => w2r_wptr2(1)
    );
\w2r_wptr2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(2),
      Q => w2r_wptr2(2)
    );
\w2r_wptr2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(3),
      Q => w2r_wptr2(3)
    );
\w2r_wptr2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(4),
      Q => w2r_wptr2(4)
    );
\w2r_wptr2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(5),
      Q => w2r_wptr2(5)
    );
\w2r_wptr2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(6),
      Q => w2r_wptr2(6)
    );
\w2r_wptr2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(7),
      Q => w2r_wptr2(7)
    );
\w2r_wptr2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
      D => w2r_wptr1(8),
      Q => w2r_wptr2(8)
    );
\w2r_wptr2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \w2r_wptr1[11]_i_1_n_0\,
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
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
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
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => \waddr_reg[8]_i_1_n_5\,
      Q => waddr_reg(10)
    );
\waddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => \waddr_reg[8]_i_1_n_4\,
      Q => \waddr_reg__0\(11)
    );
\waddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => \waddr_reg[0]_i_1_n_6\,
      Q => waddr_reg(1)
    );
\waddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => \waddr_reg[0]_i_1_n_5\,
      Q => waddr_reg(2)
    );
\waddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => \waddr_reg[0]_i_1_n_4\,
      Q => waddr_reg(3)
    );
\waddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
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
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => \waddr_reg[4]_i_1_n_6\,
      Q => waddr_reg(5)
    );
\waddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => \waddr_reg[4]_i_1_n_5\,
      Q => waddr_reg(6)
    );
\waddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => \waddr_reg[4]_i_1_n_4\,
      Q => waddr_reg(7)
    );
\waddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => \waddr_reg[8]_i_1_n_7\,
      Q => waddr_reg(8)
    );
\waddr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \waddr_reg[4]_i_1_n_0\,
      CO(3) => \NLW_waddr_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \waddr_reg[8]_i_1_n_1\,
      CO(1) => \waddr_reg[8]_i_1_n_2\,
      CO(0) => \waddr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \waddr_reg[8]_i_1_n_4\,
      O(2) => \waddr_reg[8]_i_1_n_5\,
      O(1) => \waddr_reg[8]_i_1_n_6\,
      O(0) => \waddr_reg[8]_i_1_n_7\,
      S(3) => \waddr_reg__0\(11),
      S(2 downto 0) => waddr_reg(10 downto 8)
    );
\waddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => \waddr_reg[8]_i_1_n_6\,
      Q => waddr_reg(9)
    );
wfull_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^overflow\,
      CO(2) => wfull_carry_n_1,
      CO(1) => wfull_carry_n_2,
      CO(0) => wfull_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_wfull_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ram_n_1,
      S(2) => ram_n_2,
      S(1) => ram_n_3,
      S(0) => ram_n_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis is
  port (
    q_b : out STD_LOGIC_VECTOR ( 25 downto 0 );
    overflow : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    vid_clk : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_vsync : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_rstn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis is
  signal fifo_n_0 : STD_LOGIC;
  signal frmsync : STD_LOGIC;
  signal frmsync_i_1_n_0 : STD_LOGIC;
  signal prev_active_video : STD_LOGIC;
  signal prev_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal prev_vsync : STD_LOGIC;
begin
fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      overflow => overflow,
      prev_active_video => prev_active_video,
      q_b(25 downto 0) => q_b(25 downto 0),
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      vid_rstn => vid_rstn,
      vid_rstn_0 => fifo_n_0,
      wdata_a(24) => frmsync,
      wdata_a(23 downto 0) => prev_data(23 downto 0)
    );
frmsync_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F66"
    )
        port map (
      I0 => vid_vsync,
      I1 => prev_vsync,
      I2 => prev_active_video,
      I3 => frmsync,
      O => frmsync_i_1_n_0
    );
frmsync_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => frmsync_i_1_n_0,
      Q => frmsync
    );
prev_active_video_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_active_video,
      Q => prev_active_video
    );
\prev_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(0),
      Q => prev_data(0)
    );
\prev_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(10),
      Q => prev_data(10)
    );
\prev_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(11),
      Q => prev_data(11)
    );
\prev_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(12),
      Q => prev_data(12)
    );
\prev_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(13),
      Q => prev_data(13)
    );
\prev_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(14),
      Q => prev_data(14)
    );
\prev_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(15),
      Q => prev_data(15)
    );
\prev_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(16),
      Q => prev_data(16)
    );
\prev_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(17),
      Q => prev_data(17)
    );
\prev_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(18),
      Q => prev_data(18)
    );
\prev_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(19),
      Q => prev_data(19)
    );
\prev_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(1),
      Q => prev_data(1)
    );
\prev_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(20),
      Q => prev_data(20)
    );
\prev_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(21),
      Q => prev_data(21)
    );
\prev_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(22),
      Q => prev_data(22)
    );
\prev_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(23),
      Q => prev_data(23)
    );
\prev_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(2),
      Q => prev_data(2)
    );
\prev_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(3),
      Q => prev_data(3)
    );
\prev_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(4),
      Q => prev_data(4)
    );
\prev_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(5),
      Q => prev_data(5)
    );
\prev_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(6),
      Q => prev_data(6)
    );
\prev_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(7),
      Q => prev_data(7)
    );
\prev_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(8),
      Q => prev_data(8)
    );
\prev_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_data(9),
      Q => prev_data(9)
    );
prev_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_0,
      D => vid_vsync,
      Q => prev_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis_v1_0 is
  port (
    q_b : out STD_LOGIC_VECTOR ( 25 downto 0 );
    overflow : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    vid_clk : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_vsync : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_rstn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis_v1_0 is
begin
video_to_axis_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      overflow => overflow,
      q_b(25 downto 0) => q_b(25 downto 0),
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      vid_data(23 downto 0) => vid_data(23 downto 0),
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
    vid_clk : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    overflow : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "base_video_to_axis_2_0,video_to_axis_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "video_to_axis_v1_0,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF m_axis, FREQ_HZ 120000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_tuser : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 120000000, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 vid_in ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_clk : signal is "xilinx.com:signal:clock:1.0 vid_clk CLK";
  attribute X_INTERFACE_PARAMETER of vid_clk : signal is "XIL_INTERFACENAME vid_clk, ASSOCIATED_RESET vid_rstn, ASSOCIATED_BUSIF vid_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_xil_vip_1_0_out_pclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_rstn : signal is "xilinx.com:signal:reset:1.0 vid_rstn RST";
  attribute X_INTERFACE_PARAMETER of vid_rstn : signal is "XIL_INTERFACENAME vid_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_in VSYNC";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of vid_data : signal is "xilinx.com:interface:vid_io:1.0 vid_in DATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis_v1_0
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      overflow => overflow,
      q_b(25) => m_axis_tuser,
      q_b(24) => m_axis_tlast,
      q_b(23 downto 0) => m_axis_tdata(23 downto 0),
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      vid_data(23 downto 0) => vid_data(23 downto 0),
      vid_rstn => vid_rstn,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
