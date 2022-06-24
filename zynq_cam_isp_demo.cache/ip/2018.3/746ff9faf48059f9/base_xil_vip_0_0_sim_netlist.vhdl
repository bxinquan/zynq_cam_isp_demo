-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jun 24 20:33:46 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_xil_vip_0_0_sim_netlist.vhdl
-- Design      : base_xil_vip_0_0
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
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s00_axi_rdata[24]\ : in STD_LOGIC;
    \s00_axi_rdata[24]_0\ : in STD_LOGIC;
    \s00_axi_rdata[24]_1\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \s00_axi_rdata[25]\ : in STD_LOGIC;
    \s00_axi_rdata[26]\ : in STD_LOGIC;
    \s00_axi_rdata[27]\ : in STD_LOGIC;
    \s00_axi_rdata[28]\ : in STD_LOGIC;
    \s00_axi_rdata[29]\ : in STD_LOGIC;
    \s00_axi_rdata[30]\ : in STD_LOGIC;
    \s00_axi_rdata[31]\ : in STD_LOGIC;
    mem_reg_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    mem_reg_1 : in STD_LOGIC;
    mem_reg_2 : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    \osd_pix_buf_t5_reg[0]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[0]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[0]_1\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[31]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \osd_pix_buf_t5_reg[1]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[2]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[3]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[4]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[5]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[6]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[7]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[8]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[9]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[10]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[11]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[12]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[13]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[14]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[15]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[16]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[17]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[18]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[19]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[20]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[21]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[22]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[23]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[24]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[25]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[26]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[27]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[28]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[29]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[30]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[31]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram is
  signal \^doado\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^dobdo\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal osd_ram_addr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal osd_ram_wen : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 31;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 31;
begin
  DOADO(31 downto 0) <= \^doado\(31 downto 0);
  DOBDO(31 downto 0) <= \^dobdo\(31 downto 0);
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 14) => B"11",
      ADDRARDADDR(13 downto 5) => osd_ram_addr(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 14) => B"11",
      ADDRBWRADDR(13 downto 5) => Q(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => CLK,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => s00_axi_wdata(31 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \^doado\(31 downto 0),
      DOBDO(31 downto 0) => \^dobdo\(31 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
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
      WEA(3) => osd_ram_wen,
      WEA(2) => osd_ram_wen,
      WEA(1) => osd_ram_wen,
      WEA(0) => osd_ram_wen,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => mem_reg_0(8),
      I1 => mem_reg_1,
      I2 => mem_reg_2,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => \s00_axi_rdata[24]_1\(8),
      O => osd_ram_addr(8)
    );
mem_reg_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => mem_reg_0(9),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => mem_reg_2,
      I4 => mem_reg_1,
      O => osd_ram_wen
    );
mem_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => mem_reg_0(7),
      I1 => mem_reg_1,
      I2 => mem_reg_2,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => \s00_axi_rdata[24]_1\(7),
      O => osd_ram_addr(7)
    );
mem_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => mem_reg_0(6),
      I1 => mem_reg_1,
      I2 => mem_reg_2,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => \s00_axi_rdata[24]_1\(6),
      O => osd_ram_addr(6)
    );
mem_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => mem_reg_0(5),
      I1 => mem_reg_1,
      I2 => mem_reg_2,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => \s00_axi_rdata[24]_1\(5),
      O => osd_ram_addr(5)
    );
mem_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => mem_reg_0(4),
      I1 => mem_reg_1,
      I2 => mem_reg_2,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => \s00_axi_rdata[24]_1\(4),
      O => osd_ram_addr(4)
    );
mem_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => mem_reg_0(3),
      I1 => mem_reg_1,
      I2 => mem_reg_2,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => \s00_axi_rdata[24]_1\(3),
      O => osd_ram_addr(3)
    );
mem_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => mem_reg_0(2),
      I1 => mem_reg_1,
      I2 => mem_reg_2,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => \s00_axi_rdata[24]_1\(2),
      O => osd_ram_addr(2)
    );
mem_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => mem_reg_0(1),
      I1 => mem_reg_1,
      I2 => mem_reg_2,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => \s00_axi_rdata[24]_1\(1),
      O => osd_ram_addr(1)
    );
mem_reg_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => mem_reg_0(0),
      I1 => mem_reg_1,
      I2 => mem_reg_2,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => \s00_axi_rdata[24]_1\(0),
      O => osd_ram_addr(0)
    );
\osd_pix_buf_t5[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[0]\,
      I1 => \osd_pix_buf_t5_reg[0]_0\,
      I2 => \^dobdo\(0),
      I3 => \osd_pix_buf_t5_reg[0]_1\,
      O => D(0)
    );
\osd_pix_buf_t5[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(9),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(10),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[10]\,
      O => D(10)
    );
\osd_pix_buf_t5[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(10),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(11),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[11]\,
      O => D(11)
    );
\osd_pix_buf_t5[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(11),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(12),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[12]\,
      O => D(12)
    );
\osd_pix_buf_t5[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(12),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(13),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[13]\,
      O => D(13)
    );
\osd_pix_buf_t5[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(13),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(14),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[14]\,
      O => D(14)
    );
\osd_pix_buf_t5[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(14),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(15),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[15]\,
      O => D(15)
    );
\osd_pix_buf_t5[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(15),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(16),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[16]\,
      O => D(16)
    );
\osd_pix_buf_t5[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(16),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(17),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[17]\,
      O => D(17)
    );
\osd_pix_buf_t5[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(17),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(18),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[18]\,
      O => D(18)
    );
\osd_pix_buf_t5[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(18),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(19),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[19]\,
      O => D(19)
    );
\osd_pix_buf_t5[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(0),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(1),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[1]\,
      O => D(1)
    );
\osd_pix_buf_t5[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(19),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(20),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[20]\,
      O => D(20)
    );
\osd_pix_buf_t5[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(20),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(21),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[21]\,
      O => D(21)
    );
\osd_pix_buf_t5[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(21),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(22),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[22]\,
      O => D(22)
    );
\osd_pix_buf_t5[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(22),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(23),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[23]\,
      O => D(23)
    );
\osd_pix_buf_t5[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(23),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(24),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[24]\,
      O => D(24)
    );
\osd_pix_buf_t5[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(24),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(25),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[25]\,
      O => D(25)
    );
\osd_pix_buf_t5[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(25),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(26),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[26]\,
      O => D(26)
    );
\osd_pix_buf_t5[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(26),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(27),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[27]\,
      O => D(27)
    );
\osd_pix_buf_t5[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(27),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(28),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[28]\,
      O => D(28)
    );
\osd_pix_buf_t5[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(28),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(29),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[29]\,
      O => D(29)
    );
\osd_pix_buf_t5[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(1),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(2),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[2]\,
      O => D(2)
    );
\osd_pix_buf_t5[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(29),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(30),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[30]\,
      O => D(30)
    );
\osd_pix_buf_t5[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(30),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(31),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[31]_0\,
      O => D(31)
    );
\osd_pix_buf_t5[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(2),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(3),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[3]\,
      O => D(3)
    );
\osd_pix_buf_t5[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(3),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(4),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[4]\,
      O => D(4)
    );
\osd_pix_buf_t5[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(4),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(5),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[5]\,
      O => D(5)
    );
\osd_pix_buf_t5[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(5),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(6),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[6]\,
      O => D(6)
    );
\osd_pix_buf_t5[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(6),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(7),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[7]\,
      O => D(7)
    );
\osd_pix_buf_t5[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(7),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(8),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[8]\,
      O => D(8)
    );
\osd_pix_buf_t5[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \osd_pix_buf_t5_reg[31]\(8),
      I1 => \osd_pix_buf_t5_reg[0]_1\,
      I2 => \^dobdo\(9),
      I3 => \osd_pix_buf_t5_reg[0]_0\,
      I4 => \osd_pix_buf_t5_reg[9]\,
      O => D(9)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \s00_axi_rdata[24]\,
      I1 => \s00_axi_rdata[24]_0\,
      I2 => \^doado\(24),
      I3 => \s00_axi_rdata[24]_1\(9),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \s00_axi_rdata[25]\,
      I1 => \s00_axi_rdata[24]_0\,
      I2 => \^doado\(25),
      I3 => \s00_axi_rdata[24]_1\(9),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \s00_axi_rdata[26]\,
      I1 => \s00_axi_rdata[24]_0\,
      I2 => \^doado\(26),
      I3 => \s00_axi_rdata[24]_1\(9),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \s00_axi_rdata[27]\,
      I1 => \s00_axi_rdata[24]_0\,
      I2 => \^doado\(27),
      I3 => \s00_axi_rdata[24]_1\(9),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \s00_axi_rdata[28]\,
      I1 => \s00_axi_rdata[24]_0\,
      I2 => \^doado\(28),
      I3 => \s00_axi_rdata[24]_1\(9),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \s00_axi_rdata[29]\,
      I1 => \s00_axi_rdata[24]_0\,
      I2 => \^doado\(29),
      I3 => \s00_axi_rdata[24]_1\(9),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \s00_axi_rdata[30]\,
      I1 => \s00_axi_rdata[24]_0\,
      I2 => \^doado\(30),
      I3 => \s00_axi_rdata[24]_1\(9),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \s00_axi_rdata[31]\,
      I1 => \s00_axi_rdata[24]_0\,
      I2 => \^doado\(31),
      I3 => \s00_axi_rdata[24]_1\(9),
      O => s00_axi_rdata(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \pos_r_reg[10]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pclk : in STD_LOGIC;
    out_href : in STD_LOGIC;
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1\ : entity is "simple_dp_ram";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1\ is
  signal \^pos_r_reg[10]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  \pos_r_reg[10]\(2 downto 0) <= \^pos_r_reg[10]\(2 downto 0);
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
      ADDRARDADDR(14) => ADDRBWRADDR(8),
      ADDRARDADDR(13 downto 12) => \^pos_r_reg[10]\(2 downto 1),
      ADDRARDADDR(11 downto 4) => ADDRBWRADDR(7 downto 0),
      ADDRARDADDR(3) => \^pos_r_reg[10]\(0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => ADDRBWRADDR(8),
      ADDRBWRADDR(13 downto 12) => \^pos_r_reg[10]\(2 downto 1),
      ADDRBWRADDR(11 downto 4) => ADDRBWRADDR(7 downto 0),
      ADDRBWRADDR(3) => \^pos_r_reg[10]\(0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => pclk,
      CLKBWRCLK => pclk,
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
      ENARDEN => out_href,
      ENBWREN => out_href,
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
      WEA(3) => out_href,
      WEA(2) => out_href,
      WEA(1) => out_href,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FF00"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => mem_reg_0,
      I3 => \out\(0),
      I4 => ADDRBWRADDR(8),
      O => \^pos_r_reg[10]\(0)
    );
\mem_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(2),
      I1 => ADDRBWRADDR(8),
      O => \^pos_r_reg[10]\(2)
    );
\mem_reg_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(1),
      I1 => ADDRBWRADDR(8),
      O => \^pos_r_reg[10]\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1_5\ is
  port (
    mem_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \pos_r_reg[3]\ : out STD_LOGIC;
    pclk : in STD_LOGIC;
    out_href : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mem_reg_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1_5\ : entity is "simple_dp_ram";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1_5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1_5\ is
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mem_reg_i_13_n_0 : STD_LOGIC;
  signal \^pos_r_reg[3]\ : STD_LOGIC;
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
  ADDRBWRADDR(7 downto 0) <= \^addrbwraddr\(7 downto 0);
  \pos_r_reg[3]\ <= \^pos_r_reg[3]\;
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
      ADDRARDADDR(13 downto 12) => mem_reg_1(2 downto 1),
      ADDRARDADDR(11 downto 4) => \^addrbwraddr\(7 downto 0),
      ADDRARDADDR(3) => mem_reg_1(0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => \out\(11),
      ADDRBWRADDR(13 downto 12) => mem_reg_1(2 downto 1),
      ADDRBWRADDR(11 downto 4) => \^addrbwraddr\(7 downto 0),
      ADDRBWRADDR(3) => mem_reg_1(0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => pclk,
      CLKBWRCLK => pclk,
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
      ENARDEN => out_href,
      ENBWREN => out_href,
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
      WEA(3) => out_href,
      WEA(2) => out_href,
      WEA(1) => out_href,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\mem_reg_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEE0000"
    )
        port map (
      I0 => \out\(9),
      I1 => \out\(10),
      I2 => \^pos_r_reg[3]\,
      I3 => \out\(0),
      I4 => \out\(11),
      I5 => \out\(1),
      O => \^addrbwraddr\(0)
    );
mem_reg_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(4),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => mem_reg_i_13_n_0,
      O => \^pos_r_reg[3]\
    );
mem_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \out\(6),
      I1 => \out\(5),
      I2 => \out\(8),
      I3 => \out\(7),
      O => mem_reg_i_13_n_0
    );
\mem_reg_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEE0000"
    )
        port map (
      I0 => \out\(9),
      I1 => \out\(10),
      I2 => \^pos_r_reg[3]\,
      I3 => \out\(0),
      I4 => \out\(11),
      I5 => \out\(8),
      O => \^addrbwraddr\(7)
    );
\mem_reg_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEE0000"
    )
        port map (
      I0 => \out\(9),
      I1 => \out\(10),
      I2 => \^pos_r_reg[3]\,
      I3 => \out\(0),
      I4 => \out\(11),
      I5 => \out\(7),
      O => \^addrbwraddr\(6)
    );
\mem_reg_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEE0000"
    )
        port map (
      I0 => \out\(9),
      I1 => \out\(10),
      I2 => \^pos_r_reg[3]\,
      I3 => \out\(0),
      I4 => \out\(11),
      I5 => \out\(6),
      O => \^addrbwraddr\(5)
    );
\mem_reg_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEE0000"
    )
        port map (
      I0 => \out\(9),
      I1 => \out\(10),
      I2 => \^pos_r_reg[3]\,
      I3 => \out\(0),
      I4 => \out\(11),
      I5 => \out\(5),
      O => \^addrbwraddr\(4)
    );
\mem_reg_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEE0000"
    )
        port map (
      I0 => \out\(9),
      I1 => \out\(10),
      I2 => \^pos_r_reg[3]\,
      I3 => \out\(0),
      I4 => \out\(11),
      I5 => \out\(4),
      O => \^addrbwraddr\(3)
    );
\mem_reg_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEE0000"
    )
        port map (
      I0 => \out\(9),
      I1 => \out\(10),
      I2 => \^pos_r_reg[3]\,
      I3 => \out\(0),
      I4 => \out\(11),
      I5 => \out\(3),
      O => \^addrbwraddr\(2)
    );
\mem_reg_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEE0000"
    )
        port map (
      I0 => \out\(9),
      I1 => \out\(10),
      I2 => \^pos_r_reg[3]\,
      I3 => \out\(0),
      I4 => \out\(11),
      I5 => \out\(2),
      O => \^addrbwraddr\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux is
  port (
    crop_href_o : out STD_LOGIC;
    crop_vsync_o : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    in_href : in STD_LOGIC;
    pclk : in STD_LOGIC;
    vsync_reg_reg_0 : in STD_LOGIC;
    yuv2rgb_vsync_o : in STD_LOGIC;
    prev_vsync : in STD_LOGIC;
    prev_href : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux is
  signal \^crop_href_o\ : STD_LOGIC;
  signal \^crop_vsync_o\ : STD_LOGIC;
begin
  crop_href_o <= \^crop_href_o\;
  crop_vsync_o <= \^crop_vsync_o\;
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(0),
      Q => Q(0)
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(10),
      Q => Q(10)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(11),
      Q => Q(11)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(12),
      Q => Q(12)
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(13),
      Q => Q(13)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(14),
      Q => Q(14)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(15),
      Q => Q(15)
    );
\data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(16),
      Q => Q(16)
    );
\data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(17),
      Q => Q(17)
    );
\data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(18),
      Q => Q(18)
    );
\data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(19),
      Q => Q(19)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(1),
      Q => Q(1)
    );
\data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(20),
      Q => Q(20)
    );
\data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(21),
      Q => Q(21)
    );
\data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(22),
      Q => Q(22)
    );
\data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(23),
      Q => Q(23)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(2),
      Q => Q(2)
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(3),
      Q => Q(3)
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(4),
      Q => Q(4)
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(5),
      Q => Q(5)
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(6),
      Q => Q(6)
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(7),
      Q => Q(7)
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(8),
      Q => Q(8)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(9),
      Q => Q(9)
    );
href_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_href,
      Q => \^crop_href_o\
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^crop_vsync_o\,
      I1 => prev_vsync,
      I2 => \^crop_href_o\,
      I3 => prev_href,
      O => E(0)
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => yuv2rgb_vsync_o,
      Q => \^crop_vsync_o\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sobel_en : in STD_LOGIC;
    href_reg_reg_0 : in STD_LOGIC;
    pclk : in STD_LOGIC;
    \data_reg_reg[0]_0\ : in STD_LOGIC;
    vsync_reg_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_0 : entity is "vid_mux";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_0 is
  signal \data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal hist_equ_u_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_reg[0]_i_1__2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_reg[10]_i_1__2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_reg[11]_i_1__2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_reg[12]_i_1__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_reg[13]_i_1__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_reg[14]_i_1__2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_reg[15]_i_1__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_reg[1]_i_1__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_reg[2]_i_1__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_reg[3]_i_1__2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1__2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_reg[5]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_reg[6]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_reg[7]_i_1__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_reg[8]_i_1__2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_reg[9]_i_1__2\ : label is "soft_lutpair13";
begin
\data_reg[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg_reg_n_0_[0]\,
      I1 => s_sobel_en,
      O => D(0)
    );
\data_reg[10]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hist_equ_u_o(2),
      I1 => s_sobel_en,
      O => D(10)
    );
\data_reg[11]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hist_equ_u_o(3),
      I1 => s_sobel_en,
      O => D(11)
    );
\data_reg[12]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hist_equ_u_o(4),
      I1 => s_sobel_en,
      O => D(12)
    );
\data_reg[13]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hist_equ_u_o(5),
      I1 => s_sobel_en,
      O => D(13)
    );
\data_reg[14]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hist_equ_u_o(6),
      I1 => s_sobel_en,
      O => D(14)
    );
\data_reg[15]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => hist_equ_u_o(7),
      I1 => s_sobel_en,
      O => D(15)
    );
\data_reg[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg_reg_n_0_[1]\,
      I1 => s_sobel_en,
      O => D(1)
    );
\data_reg[2]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg_reg_n_0_[2]\,
      I1 => s_sobel_en,
      O => D(2)
    );
\data_reg[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg_reg_n_0_[3]\,
      I1 => s_sobel_en,
      O => D(3)
    );
\data_reg[4]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg_reg_n_0_[4]\,
      I1 => s_sobel_en,
      O => D(4)
    );
\data_reg[5]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg_reg_n_0_[5]\,
      I1 => s_sobel_en,
      O => D(5)
    );
\data_reg[6]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_reg_reg_n_0_[6]\,
      I1 => s_sobel_en,
      O => D(6)
    );
\data_reg[7]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \data_reg_reg_n_0_[7]\,
      I1 => s_sobel_en,
      O => D(7)
    );
\data_reg[8]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hist_equ_u_o(0),
      I1 => s_sobel_en,
      O => D(8)
    );
\data_reg[9]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hist_equ_u_o(1),
      I1 => s_sobel_en,
      O => D(9)
    );
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(0),
      Q => \data_reg_reg_n_0_[0]\
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(10),
      Q => hist_equ_u_o(2)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(11),
      Q => hist_equ_u_o(3)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(12),
      Q => hist_equ_u_o(4)
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(13),
      Q => hist_equ_u_o(5)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(14),
      Q => hist_equ_u_o(6)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(15),
      Q => hist_equ_u_o(7)
    );
\data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(16),
      Q => out_data(0)
    );
\data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(17),
      Q => out_data(1)
    );
\data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(18),
      Q => out_data(2)
    );
\data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(19),
      Q => out_data(3)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(1),
      Q => \data_reg_reg_n_0_[1]\
    );
\data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(20),
      Q => out_data(4)
    );
\data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(21),
      Q => out_data(5)
    );
\data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(22),
      Q => out_data(6)
    );
\data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(23),
      Q => out_data(7)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(2),
      Q => \data_reg_reg_n_0_[2]\
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(3),
      Q => \data_reg_reg_n_0_[3]\
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(4),
      Q => \data_reg_reg_n_0_[4]\
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(5),
      Q => \data_reg_reg_n_0_[5]\
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(6),
      Q => \data_reg_reg_n_0_[6]\
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(7),
      Q => \data_reg_reg_n_0_[7]\
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(8),
      Q => hist_equ_u_o(0)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => Q(9),
      Q => hist_equ_u_o(1)
    );
href_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => href_reg_reg_0,
      Q => out_href
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => vsync_reg_reg_0,
      Q => out_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_1 is
  port (
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    in_href : in STD_LOGIC;
    pclk : in STD_LOGIC;
    vsync_reg_reg_0 : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    in_yuv : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_1 : entity is "vid_mux";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_1 is
begin
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(16),
      Q => out_data(0)
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(10),
      Q => out_data(10)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(11),
      Q => out_data(11)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(12),
      Q => out_data(12)
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(13),
      Q => out_data(13)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(14),
      Q => out_data(14)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(15),
      Q => out_data(15)
    );
\data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(0),
      Q => out_data(16)
    );
\data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(1),
      Q => out_data(17)
    );
\data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(2),
      Q => out_data(18)
    );
\data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(3),
      Q => out_data(19)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(17),
      Q => out_data(1)
    );
\data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(4),
      Q => out_data(20)
    );
\data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(5),
      Q => out_data(21)
    );
\data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(6),
      Q => out_data(22)
    );
\data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(7),
      Q => out_data(23)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(18),
      Q => out_data(2)
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(19),
      Q => out_data(3)
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(20),
      Q => out_data(4)
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(21),
      Q => out_data(5)
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(22),
      Q => out_data(6)
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(23),
      Q => out_data(7)
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(8),
      Q => out_data(8)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_yuv(9),
      Q => out_data(9)
    );
href_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_href,
      Q => out_href
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_vsync,
      Q => out_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_2 is
  port (
    sobel_href_o : out STD_LOGIC;
    sobel_vsync_o : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    in_href : in STD_LOGIC;
    pclk : in STD_LOGIC;
    vsync_reg_reg_0 : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_2 : entity is "vid_mux";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_2 is
begin
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(0),
      Q => Q(0)
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(10),
      Q => Q(10)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(11),
      Q => Q(11)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(12),
      Q => Q(12)
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(13),
      Q => Q(13)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(14),
      Q => Q(14)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(15),
      Q => Q(15)
    );
\data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(16),
      Q => Q(16)
    );
\data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(17),
      Q => Q(17)
    );
\data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(18),
      Q => Q(18)
    );
\data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(19),
      Q => Q(19)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(1),
      Q => Q(1)
    );
\data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(20),
      Q => Q(20)
    );
\data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(21),
      Q => Q(21)
    );
\data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(22),
      Q => Q(22)
    );
\data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(23),
      Q => Q(23)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(2),
      Q => Q(2)
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(3),
      Q => Q(3)
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(4),
      Q => Q(4)
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(5),
      Q => Q(5)
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(6),
      Q => Q(6)
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(7),
      Q => Q(7)
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(8),
      Q => Q(8)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => D(9),
      Q => Q(9)
    );
href_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_href,
      Q => sobel_href_o
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => vsync_reg_reg_0,
      D => in_vsync,
      Q => sobel_vsync_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_3 is
  port (
    yuv2rgb_href_o : out STD_LOGIC;
    yuv2rgb_vsync_o : out STD_LOGIC;
    vsync_reg_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    in_href : in STD_LOGIC;
    pclk : in STD_LOGIC;
    \data_reg_reg[0]_0\ : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    prev_vsync : in STD_LOGIC;
    prev_href : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_3 : entity is "vid_mux";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_3 is
  signal \^yuv2rgb_href_o\ : STD_LOGIC;
  signal \^yuv2rgb_vsync_o\ : STD_LOGIC;
begin
  yuv2rgb_href_o <= \^yuv2rgb_href_o\;
  yuv2rgb_vsync_o <= \^yuv2rgb_vsync_o\;
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(0),
      Q => Q(0)
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(10),
      Q => Q(10)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(11),
      Q => Q(11)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(12),
      Q => Q(12)
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(13),
      Q => Q(13)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(14),
      Q => Q(14)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(15),
      Q => Q(15)
    );
\data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(16),
      Q => Q(16)
    );
\data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(17),
      Q => Q(17)
    );
\data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(18),
      Q => Q(18)
    );
\data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(19),
      Q => Q(19)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(1),
      Q => Q(1)
    );
\data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(20),
      Q => Q(20)
    );
\data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(21),
      Q => Q(21)
    );
\data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(22),
      Q => Q(22)
    );
\data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(23),
      Q => Q(23)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(2),
      Q => Q(2)
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(3),
      Q => Q(3)
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(4),
      Q => Q(4)
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(5),
      Q => Q(5)
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(6),
      Q => Q(6)
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(7),
      Q => Q(7)
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(8),
      Q => Q(8)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(9),
      Q => Q(9)
    );
href_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => in_href,
      Q => \^yuv2rgb_href_o\
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^yuv2rgb_vsync_o\,
      I1 => prev_vsync,
      I2 => \^yuv2rgb_href_o\,
      I3 => prev_href,
      O => vsync_reg_reg_0
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => in_vsync,
      Q => \^yuv2rgb_vsync_o\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_4 is
  port (
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    \axi_awaddr_reg[2]\ : out STD_LOGIC;
    out_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    in_href : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \data_reg_reg[0]_0\ : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    int_frame_done_reg : in STD_LOGIC;
    int_frame_done_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    int_frame_done_reg_1 : in STD_LOGIC;
    prev_vsync : in STD_LOGIC;
    int_frame_done : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_4 : entity is "vid_mux";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_4 is
  signal \^out_vsync\ : STD_LOGIC;
begin
  out_vsync <= \^out_vsync\;
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(0),
      Q => out_rgb(16)
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(10),
      Q => out_rgb(10)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(11),
      Q => out_rgb(11)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(12),
      Q => out_rgb(12)
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(13),
      Q => out_rgb(13)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(14),
      Q => out_rgb(14)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(15),
      Q => out_rgb(15)
    );
\data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(16),
      Q => out_rgb(0)
    );
\data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(17),
      Q => out_rgb(1)
    );
\data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(18),
      Q => out_rgb(2)
    );
\data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(19),
      Q => out_rgb(3)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(1),
      Q => out_rgb(17)
    );
\data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(20),
      Q => out_rgb(4)
    );
\data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(21),
      Q => out_rgb(5)
    );
\data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(22),
      Q => out_rgb(6)
    );
\data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(23),
      Q => out_rgb(7)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(2),
      Q => out_rgb(18)
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(3),
      Q => out_rgb(19)
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(4),
      Q => out_rgb(20)
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(5),
      Q => out_rgb(21)
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(6),
      Q => out_rgb(22)
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(7),
      Q => out_rgb(23)
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(8),
      Q => out_rgb(8)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => D(9),
      Q => out_rgb(9)
    );
href_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => in_href,
      Q => out_href
    );
int_frame_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7F7F00FF0000"
    )
        port map (
      I0 => int_frame_done_reg,
      I1 => int_frame_done_reg_0(0),
      I2 => int_frame_done_reg_1,
      I3 => prev_vsync,
      I4 => \^out_vsync\,
      I5 => int_frame_done,
      O => \axi_awaddr_reg[2]\
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => in_vsync,
      Q => \^out_vsync\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_crop is
  port (
    prev_href : out STD_LOGIC;
    prev_vsync : out STD_LOGIC;
    in_href : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    yuv2rgb_href_o : in STD_LOGIC;
    pclk : in STD_LOGIC;
    \line_cnt_reg[0]_0\ : in STD_LOGIC;
    yuv2rgb_vsync_o : in STD_LOGIC;
    \line_cnt_reg[15]_0\ : in STD_LOGIC;
    \out_href3_carry__2_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \out_href1_carry__0_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \out_href3_carry__2_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \out_href1_inferred__0/i__carry__2_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_crop_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_crop;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_crop is
  signal crop_href : STD_LOGIC;
  signal data_r : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_3_n_0\ : STD_LOGIC;
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
  signal \out_href1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \out_href1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \out_href1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \out_href1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \out_href1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \out_href1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \out_href1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \out_href1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \out_href1_carry__0_n_0\ : STD_LOGIC;
  signal \out_href1_carry__0_n_1\ : STD_LOGIC;
  signal \out_href1_carry__0_n_2\ : STD_LOGIC;
  signal \out_href1_carry__0_n_3\ : STD_LOGIC;
  signal out_href1_carry_i_1_n_0 : STD_LOGIC;
  signal out_href1_carry_i_2_n_0 : STD_LOGIC;
  signal out_href1_carry_i_3_n_0 : STD_LOGIC;
  signal out_href1_carry_i_4_n_0 : STD_LOGIC;
  signal out_href1_carry_i_5_n_0 : STD_LOGIC;
  signal out_href1_carry_i_6_n_0 : STD_LOGIC;
  signal out_href1_carry_i_7_n_0 : STD_LOGIC;
  signal out_href1_carry_i_8_n_0 : STD_LOGIC;
  signal out_href1_carry_n_0 : STD_LOGIC;
  signal out_href1_carry_n_1 : STD_LOGIC;
  signal out_href1_carry_n_2 : STD_LOGIC;
  signal out_href1_carry_n_3 : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \out_href1_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal out_href20_in : STD_LOGIC;
  signal \out_href2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \out_href2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \out_href2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \out_href2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \out_href2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \out_href2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \out_href2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \out_href2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \out_href2_carry__0_n_1\ : STD_LOGIC;
  signal \out_href2_carry__0_n_2\ : STD_LOGIC;
  signal \out_href2_carry__0_n_3\ : STD_LOGIC;
  signal out_href2_carry_i_1_n_0 : STD_LOGIC;
  signal out_href2_carry_i_2_n_0 : STD_LOGIC;
  signal out_href2_carry_i_3_n_0 : STD_LOGIC;
  signal out_href2_carry_i_4_n_0 : STD_LOGIC;
  signal out_href2_carry_i_5_n_0 : STD_LOGIC;
  signal out_href2_carry_i_6_n_0 : STD_LOGIC;
  signal out_href2_carry_i_7_n_0 : STD_LOGIC;
  signal out_href2_carry_i_8_n_0 : STD_LOGIC;
  signal out_href2_carry_n_0 : STD_LOGIC;
  signal out_href2_carry_n_1 : STD_LOGIC;
  signal out_href2_carry_n_2 : STD_LOGIC;
  signal out_href2_carry_n_3 : STD_LOGIC;
  signal \out_href3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \out_href3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \out_href3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \out_href3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \out_href3_carry__0_n_0\ : STD_LOGIC;
  signal \out_href3_carry__0_n_1\ : STD_LOGIC;
  signal \out_href3_carry__0_n_2\ : STD_LOGIC;
  signal \out_href3_carry__0_n_3\ : STD_LOGIC;
  signal \out_href3_carry__0_n_4\ : STD_LOGIC;
  signal \out_href3_carry__0_n_5\ : STD_LOGIC;
  signal \out_href3_carry__0_n_6\ : STD_LOGIC;
  signal \out_href3_carry__0_n_7\ : STD_LOGIC;
  signal \out_href3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \out_href3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \out_href3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \out_href3_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \out_href3_carry__1_n_0\ : STD_LOGIC;
  signal \out_href3_carry__1_n_1\ : STD_LOGIC;
  signal \out_href3_carry__1_n_2\ : STD_LOGIC;
  signal \out_href3_carry__1_n_3\ : STD_LOGIC;
  signal \out_href3_carry__1_n_4\ : STD_LOGIC;
  signal \out_href3_carry__1_n_5\ : STD_LOGIC;
  signal \out_href3_carry__1_n_6\ : STD_LOGIC;
  signal \out_href3_carry__1_n_7\ : STD_LOGIC;
  signal \out_href3_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \out_href3_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \out_href3_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \out_href3_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \out_href3_carry__2_n_1\ : STD_LOGIC;
  signal \out_href3_carry__2_n_2\ : STD_LOGIC;
  signal \out_href3_carry__2_n_3\ : STD_LOGIC;
  signal \out_href3_carry__2_n_4\ : STD_LOGIC;
  signal \out_href3_carry__2_n_5\ : STD_LOGIC;
  signal \out_href3_carry__2_n_6\ : STD_LOGIC;
  signal \out_href3_carry__2_n_7\ : STD_LOGIC;
  signal out_href3_carry_i_1_n_0 : STD_LOGIC;
  signal out_href3_carry_i_2_n_0 : STD_LOGIC;
  signal out_href3_carry_i_3_n_0 : STD_LOGIC;
  signal out_href3_carry_i_4_n_0 : STD_LOGIC;
  signal out_href3_carry_n_0 : STD_LOGIC;
  signal out_href3_carry_n_1 : STD_LOGIC;
  signal out_href3_carry_n_2 : STD_LOGIC;
  signal out_href3_carry_n_3 : STD_LOGIC;
  signal out_href3_carry_n_4 : STD_LOGIC;
  signal out_href3_carry_n_5 : STD_LOGIC;
  signal out_href3_carry_n_6 : STD_LOGIC;
  signal out_href3_carry_n_7 : STD_LOGIC;
  signal \p_1_out_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_1\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_2\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_3\ : STD_LOGIC;
  signal \p_1_out_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__1_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__1_n_1\ : STD_LOGIC;
  signal \p_1_out_carry__1_n_2\ : STD_LOGIC;
  signal \p_1_out_carry__1_n_3\ : STD_LOGIC;
  signal \p_1_out_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__2_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__2_n_1\ : STD_LOGIC;
  signal \p_1_out_carry__2_n_2\ : STD_LOGIC;
  signal \p_1_out_carry__2_n_3\ : STD_LOGIC;
  signal p_1_out_carry_i_1_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_2_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_3_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_4_n_0 : STD_LOGIC;
  signal p_1_out_carry_n_0 : STD_LOGIC;
  signal p_1_out_carry_n_1 : STD_LOGIC;
  signal p_1_out_carry_n_2 : STD_LOGIC;
  signal p_1_out_carry_n_3 : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \pix_cnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_11_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_9_n_0\ : STD_LOGIC;
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
  signal \pix_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pix_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
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
  signal \^prev_href\ : STD_LOGIC;
  signal \^prev_vsync\ : STD_LOGIC;
  signal \NLW_line_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_out_href1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_href1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_href1_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_out_href2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_href2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_href3_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_p_1_out_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_1_out_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pix_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  prev_href <= \^prev_href\;
  prev_vsync <= \^prev_vsync\;
\data_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(0),
      Q => data_r(0)
    );
\data_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(10),
      Q => data_r(10)
    );
\data_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(11),
      Q => data_r(11)
    );
\data_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(12),
      Q => data_r(12)
    );
\data_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(13),
      Q => data_r(13)
    );
\data_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(14),
      Q => data_r(14)
    );
\data_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(15),
      Q => data_r(15)
    );
\data_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(16),
      Q => data_r(16)
    );
\data_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(17),
      Q => data_r(17)
    );
\data_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(18),
      Q => data_r(18)
    );
\data_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(19),
      Q => data_r(19)
    );
\data_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(1),
      Q => data_r(1)
    );
\data_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(20),
      Q => data_r(20)
    );
\data_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(21),
      Q => data_r(21)
    );
\data_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(22),
      Q => data_r(22)
    );
\data_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(23),
      Q => data_r(23)
    );
\data_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(2),
      Q => data_r(2)
    );
\data_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(3),
      Q => data_r(3)
    );
\data_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(4),
      Q => data_r(4)
    );
\data_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(5),
      Q => data_r(5)
    );
\data_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(6),
      Q => data_r(6)
    );
\data_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(7),
      Q => data_r(7)
    );
\data_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(8),
      Q => data_r(8)
    );
\data_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => Q(9),
      Q => data_r(9)
    );
\data_reg[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(0),
      I2 => Q(0),
      I3 => s_crop_en,
      O => D(0)
    );
\data_reg[10]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(10),
      I2 => Q(10),
      I3 => s_crop_en,
      O => D(10)
    );
\data_reg[11]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(11),
      I2 => Q(11),
      I3 => s_crop_en,
      O => D(11)
    );
\data_reg[12]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(12),
      I2 => Q(12),
      I3 => s_crop_en,
      O => D(12)
    );
\data_reg[13]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(13),
      I2 => Q(13),
      I3 => s_crop_en,
      O => D(13)
    );
\data_reg[14]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(14),
      I2 => Q(14),
      I3 => s_crop_en,
      O => D(14)
    );
\data_reg[15]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(15),
      I2 => Q(15),
      I3 => s_crop_en,
      O => D(15)
    );
\data_reg[16]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(16),
      I2 => Q(16),
      I3 => s_crop_en,
      O => D(16)
    );
\data_reg[17]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(17),
      I2 => Q(17),
      I3 => s_crop_en,
      O => D(17)
    );
\data_reg[18]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(18),
      I2 => Q(18),
      I3 => s_crop_en,
      O => D(18)
    );
\data_reg[19]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(19),
      I2 => Q(19),
      I3 => s_crop_en,
      O => D(19)
    );
\data_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(1),
      I2 => Q(1),
      I3 => s_crop_en,
      O => D(1)
    );
\data_reg[20]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(20),
      I2 => Q(20),
      I3 => s_crop_en,
      O => D(20)
    );
\data_reg[21]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(21),
      I2 => Q(21),
      I3 => s_crop_en,
      O => D(21)
    );
\data_reg[22]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(22),
      I2 => Q(22),
      I3 => s_crop_en,
      O => D(22)
    );
\data_reg[23]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(23),
      I2 => Q(23),
      I3 => s_crop_en,
      O => D(23)
    );
\data_reg[23]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => out_href20_in,
      I1 => \p_1_out_inferred__0/i__carry__2_n_0\,
      I2 => \out_href1_carry__0_n_0\,
      I3 => \p_1_out_carry__2_n_0\,
      O => crop_href
    );
\data_reg[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(2),
      I2 => Q(2),
      I3 => s_crop_en,
      O => D(2)
    );
\data_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(3),
      I2 => Q(3),
      I3 => s_crop_en,
      O => D(3)
    );
\data_reg[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(4),
      I2 => Q(4),
      I3 => s_crop_en,
      O => D(4)
    );
\data_reg[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(5),
      I2 => Q(5),
      I3 => s_crop_en,
      O => D(5)
    );
\data_reg[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(6),
      I2 => Q(6),
      I3 => s_crop_en,
      O => D(6)
    );
\data_reg[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(7),
      I2 => Q(7),
      I3 => s_crop_en,
      O => D(7)
    );
\data_reg[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(8),
      I2 => Q(8),
      I3 => s_crop_en,
      O => D(8)
    );
\data_reg[9]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(9),
      I2 => Q(9),
      I3 => s_crop_en,
      O => D(9)
    );
\href_reg_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => out_href20_in,
      I1 => \p_1_out_inferred__0/i__carry__2_n_0\,
      I2 => \out_href1_carry__0_n_0\,
      I3 => \p_1_out_carry__2_n_0\,
      I4 => s_crop_en,
      I5 => yuv2rgb_href_o,
      O => in_href
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(7),
      I1 => \out_href1_inferred__0/i__carry__2_0\(7),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(7),
      I1 => \out_href1_inferred__0/i__carry__0_n_4\,
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(6),
      I1 => \out_href1_inferred__0/i__carry__2_0\(6),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(6),
      I1 => \out_href1_inferred__0/i__carry__0_n_5\,
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(5),
      I1 => \out_href1_inferred__0/i__carry__2_0\(5),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(5),
      I1 => \out_href1_inferred__0/i__carry__0_n_6\,
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(4),
      I1 => \out_href1_inferred__0/i__carry__2_0\(4),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(4),
      I1 => \out_href1_inferred__0/i__carry__0_n_7\,
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(11),
      I1 => \out_href1_inferred__0/i__carry__2_0\(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(11),
      I1 => \out_href1_inferred__0/i__carry__1_n_4\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(10),
      I1 => \out_href1_inferred__0/i__carry__2_0\(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(10),
      I1 => \out_href1_inferred__0/i__carry__1_n_5\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(9),
      I1 => \out_href1_inferred__0/i__carry__2_0\(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(9),
      I1 => \out_href1_inferred__0/i__carry__1_n_6\,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(8),
      I1 => \out_href1_inferred__0/i__carry__2_0\(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(8),
      I1 => \out_href1_inferred__0/i__carry__1_n_7\,
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(15),
      I1 => \out_href1_inferred__0/i__carry__2_0\(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(15),
      I1 => \out_href1_inferred__0/i__carry__2_n_4\,
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(14),
      I1 => \out_href1_inferred__0/i__carry__2_0\(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(14),
      I1 => \out_href1_inferred__0/i__carry__2_n_5\,
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(13),
      I1 => \out_href1_inferred__0/i__carry__2_0\(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(13),
      I1 => \out_href1_inferred__0/i__carry__2_n_6\,
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(12),
      I1 => \out_href1_inferred__0/i__carry__2_0\(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(12),
      I1 => \out_href1_inferred__0/i__carry__2_n_7\,
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(3),
      I1 => \out_href1_inferred__0/i__carry__2_0\(3),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(3),
      I1 => \out_href1_inferred__0/i__carry_n_4\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(2),
      I1 => \out_href1_inferred__0/i__carry__2_0\(2),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(2),
      I1 => \out_href1_inferred__0/i__carry_n_5\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(1),
      I1 => \out_href1_inferred__0/i__carry__2_0\(1),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(1),
      I1 => \out_href1_inferred__0/i__carry_n_6\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href1_carry__0_0\(0),
      I1 => \out_href1_inferred__0/i__carry__2_0\(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(0),
      I1 => \out_href1_inferred__0/i__carry_n_7\,
      O => \i__carry_i_4__1_n_0\
    );
\line_cnt[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(0),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[0]_i_3_n_0\
    );
\line_cnt[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(3),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[0]_i_4_n_0\
    );
\line_cnt[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(2),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[0]_i_5_n_0\
    );
\line_cnt[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(1),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[0]_i_6_n_0\
    );
\line_cnt[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => line_cnt_reg(0),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[0]_i_7_n_0\
    );
\line_cnt[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(15),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[12]_i_2_n_0\
    );
\line_cnt[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(14),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[12]_i_3_n_0\
    );
\line_cnt[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(13),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[12]_i_4_n_0\
    );
\line_cnt[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(12),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[12]_i_5_n_0\
    );
\line_cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(7),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[4]_i_2_n_0\
    );
\line_cnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(6),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[4]_i_3_n_0\
    );
\line_cnt[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(5),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[4]_i_4_n_0\
    );
\line_cnt[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(4),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[4]_i_5_n_0\
    );
\line_cnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(11),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[8]_i_2_n_0\
    );
\line_cnt[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(10),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[8]_i_3_n_0\
    );
\line_cnt[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(9),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[8]_i_4_n_0\
    );
\line_cnt[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => line_cnt_reg(8),
      I1 => yuv2rgb_vsync_o,
      I2 => \^prev_vsync\,
      O => \line_cnt[8]_i_5_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[0]_i_2_n_7\,
      PRE => \line_cnt_reg[0]_0\,
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
      DI(0) => \line_cnt[0]_i_3_n_0\,
      O(3) => \line_cnt_reg[0]_i_2_n_4\,
      O(2) => \line_cnt_reg[0]_i_2_n_5\,
      O(1) => \line_cnt_reg[0]_i_2_n_6\,
      O(0) => \line_cnt_reg[0]_i_2_n_7\,
      S(3) => \line_cnt[0]_i_4_n_0\,
      S(2) => \line_cnt[0]_i_5_n_0\,
      S(1) => \line_cnt[0]_i_6_n_0\,
      S(0) => \line_cnt[0]_i_7_n_0\
    );
\line_cnt_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[8]_i_1_n_5\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(10)
    );
\line_cnt_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[8]_i_1_n_4\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(11)
    );
\line_cnt_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[12]_i_1_n_7\,
      PRE => \line_cnt_reg[0]_0\,
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
\line_cnt_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[12]_i_1_n_6\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(13)
    );
\line_cnt_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[12]_i_1_n_5\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(14)
    );
\line_cnt_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[12]_i_1_n_4\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(15)
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[0]_i_2_n_6\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(1)
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[0]_i_2_n_5\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(2)
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[0]_i_2_n_4\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(3)
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[4]_i_1_n_7\,
      PRE => \line_cnt_reg[0]_0\,
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
\line_cnt_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[4]_i_1_n_6\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(5)
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[4]_i_1_n_5\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(6)
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[4]_i_1_n_4\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(7)
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[8]_i_1_n_7\,
      PRE => \line_cnt_reg[0]_0\,
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
\line_cnt_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[8]_i_1_n_6\,
      PRE => \line_cnt_reg[0]_0\,
      Q => line_cnt_reg(9)
    );
out_href1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => out_href1_carry_n_0,
      CO(2) => out_href1_carry_n_1,
      CO(1) => out_href1_carry_n_2,
      CO(0) => out_href1_carry_n_3,
      CYINIT => '1',
      DI(3) => out_href1_carry_i_1_n_0,
      DI(2) => out_href1_carry_i_2_n_0,
      DI(1) => out_href1_carry_i_3_n_0,
      DI(0) => out_href1_carry_i_4_n_0,
      O(3 downto 0) => NLW_out_href1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => out_href1_carry_i_5_n_0,
      S(2) => out_href1_carry_i_6_n_0,
      S(1) => out_href1_carry_i_7_n_0,
      S(0) => out_href1_carry_i_8_n_0
    );
\out_href1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => out_href1_carry_n_0,
      CO(3) => \out_href1_carry__0_n_0\,
      CO(2) => \out_href1_carry__0_n_1\,
      CO(1) => \out_href1_carry__0_n_2\,
      CO(0) => \out_href1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \out_href1_carry__0_i_1_n_0\,
      DI(2) => \out_href1_carry__0_i_2_n_0\,
      DI(1) => \out_href1_carry__0_i_3_n_0\,
      DI(0) => \out_href1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_out_href1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \out_href1_carry__0_i_5_n_0\,
      S(2) => \out_href1_carry__0_i_6_n_0\,
      S(1) => \out_href1_carry__0_i_7_n_0\,
      S(0) => \out_href1_carry__0_i_8_n_0\
    );
\out_href1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => line_cnt_reg(14),
      I1 => \out_href1_carry__0_0\(14),
      I2 => \out_href1_carry__0_0\(15),
      I3 => line_cnt_reg(15),
      O => \out_href1_carry__0_i_1_n_0\
    );
\out_href1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => line_cnt_reg(12),
      I1 => \out_href1_carry__0_0\(12),
      I2 => \out_href1_carry__0_0\(13),
      I3 => line_cnt_reg(13),
      O => \out_href1_carry__0_i_2_n_0\
    );
\out_href1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => line_cnt_reg(10),
      I1 => \out_href1_carry__0_0\(10),
      I2 => \out_href1_carry__0_0\(11),
      I3 => line_cnt_reg(11),
      O => \out_href1_carry__0_i_3_n_0\
    );
\out_href1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => line_cnt_reg(8),
      I1 => \out_href1_carry__0_0\(8),
      I2 => \out_href1_carry__0_0\(9),
      I3 => line_cnt_reg(9),
      O => \out_href1_carry__0_i_4_n_0\
    );
\out_href1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_cnt_reg(14),
      I1 => \out_href1_carry__0_0\(14),
      I2 => line_cnt_reg(15),
      I3 => \out_href1_carry__0_0\(15),
      O => \out_href1_carry__0_i_5_n_0\
    );
\out_href1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_cnt_reg(12),
      I1 => \out_href1_carry__0_0\(12),
      I2 => line_cnt_reg(13),
      I3 => \out_href1_carry__0_0\(13),
      O => \out_href1_carry__0_i_6_n_0\
    );
\out_href1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_cnt_reg(10),
      I1 => \out_href1_carry__0_0\(10),
      I2 => line_cnt_reg(11),
      I3 => \out_href1_carry__0_0\(11),
      O => \out_href1_carry__0_i_7_n_0\
    );
\out_href1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_cnt_reg(8),
      I1 => \out_href1_carry__0_0\(8),
      I2 => line_cnt_reg(9),
      I3 => \out_href1_carry__0_0\(9),
      O => \out_href1_carry__0_i_8_n_0\
    );
out_href1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => line_cnt_reg(6),
      I1 => \out_href1_carry__0_0\(6),
      I2 => \out_href1_carry__0_0\(7),
      I3 => line_cnt_reg(7),
      O => out_href1_carry_i_1_n_0
    );
out_href1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => line_cnt_reg(4),
      I1 => \out_href1_carry__0_0\(4),
      I2 => \out_href1_carry__0_0\(5),
      I3 => line_cnt_reg(5),
      O => out_href1_carry_i_2_n_0
    );
out_href1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => line_cnt_reg(2),
      I1 => \out_href1_carry__0_0\(2),
      I2 => \out_href1_carry__0_0\(3),
      I3 => line_cnt_reg(3),
      O => out_href1_carry_i_3_n_0
    );
out_href1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => line_cnt_reg(0),
      I1 => \out_href1_carry__0_0\(0),
      I2 => \out_href1_carry__0_0\(1),
      I3 => line_cnt_reg(1),
      O => out_href1_carry_i_4_n_0
    );
out_href1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_cnt_reg(6),
      I1 => \out_href1_carry__0_0\(6),
      I2 => line_cnt_reg(7),
      I3 => \out_href1_carry__0_0\(7),
      O => out_href1_carry_i_5_n_0
    );
out_href1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_cnt_reg(4),
      I1 => \out_href1_carry__0_0\(4),
      I2 => line_cnt_reg(5),
      I3 => \out_href1_carry__0_0\(5),
      O => out_href1_carry_i_6_n_0
    );
out_href1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_cnt_reg(2),
      I1 => \out_href1_carry__0_0\(2),
      I2 => line_cnt_reg(3),
      I3 => \out_href1_carry__0_0\(3),
      O => out_href1_carry_i_7_n_0
    );
out_href1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => line_cnt_reg(0),
      I1 => \out_href1_carry__0_0\(0),
      I2 => line_cnt_reg(1),
      I3 => \out_href1_carry__0_0\(1),
      O => out_href1_carry_i_8_n_0
    );
\out_href1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_href1_inferred__0/i__carry_n_0\,
      CO(2) => \out_href1_inferred__0/i__carry_n_1\,
      CO(1) => \out_href1_inferred__0/i__carry_n_2\,
      CO(0) => \out_href1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out_href1_carry__0_0\(3 downto 0),
      O(3) => \out_href1_inferred__0/i__carry_n_4\,
      O(2) => \out_href1_inferred__0/i__carry_n_5\,
      O(1) => \out_href1_inferred__0/i__carry_n_6\,
      O(0) => \out_href1_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\out_href1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_href1_inferred__0/i__carry_n_0\,
      CO(3) => \out_href1_inferred__0/i__carry__0_n_0\,
      CO(2) => \out_href1_inferred__0/i__carry__0_n_1\,
      CO(1) => \out_href1_inferred__0/i__carry__0_n_2\,
      CO(0) => \out_href1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out_href1_carry__0_0\(7 downto 4),
      O(3) => \out_href1_inferred__0/i__carry__0_n_4\,
      O(2) => \out_href1_inferred__0/i__carry__0_n_5\,
      O(1) => \out_href1_inferred__0/i__carry__0_n_6\,
      O(0) => \out_href1_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\out_href1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_href1_inferred__0/i__carry__0_n_0\,
      CO(3) => \out_href1_inferred__0/i__carry__1_n_0\,
      CO(2) => \out_href1_inferred__0/i__carry__1_n_1\,
      CO(1) => \out_href1_inferred__0/i__carry__1_n_2\,
      CO(0) => \out_href1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out_href1_carry__0_0\(11 downto 8),
      O(3) => \out_href1_inferred__0/i__carry__1_n_4\,
      O(2) => \out_href1_inferred__0/i__carry__1_n_5\,
      O(1) => \out_href1_inferred__0/i__carry__1_n_6\,
      O(0) => \out_href1_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\out_href1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_href1_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW_out_href1_inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \out_href1_inferred__0/i__carry__2_n_1\,
      CO(1) => \out_href1_inferred__0/i__carry__2_n_2\,
      CO(0) => \out_href1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \out_href1_carry__0_0\(14 downto 12),
      O(3) => \out_href1_inferred__0/i__carry__2_n_4\,
      O(2) => \out_href1_inferred__0/i__carry__2_n_5\,
      O(1) => \out_href1_inferred__0/i__carry__2_n_6\,
      O(0) => \out_href1_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
out_href2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => out_href2_carry_n_0,
      CO(2) => out_href2_carry_n_1,
      CO(1) => out_href2_carry_n_2,
      CO(0) => out_href2_carry_n_3,
      CYINIT => '1',
      DI(3) => out_href2_carry_i_1_n_0,
      DI(2) => out_href2_carry_i_2_n_0,
      DI(1) => out_href2_carry_i_3_n_0,
      DI(0) => out_href2_carry_i_4_n_0,
      O(3 downto 0) => NLW_out_href2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => out_href2_carry_i_5_n_0,
      S(2) => out_href2_carry_i_6_n_0,
      S(1) => out_href2_carry_i_7_n_0,
      S(0) => out_href2_carry_i_8_n_0
    );
\out_href2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => out_href2_carry_n_0,
      CO(3) => out_href20_in,
      CO(2) => \out_href2_carry__0_n_1\,
      CO(1) => \out_href2_carry__0_n_2\,
      CO(0) => \out_href2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \out_href2_carry__0_i_1_n_0\,
      DI(2) => \out_href2_carry__0_i_2_n_0\,
      DI(1) => \out_href2_carry__0_i_3_n_0\,
      DI(0) => \out_href2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_out_href2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \out_href2_carry__0_i_5_n_0\,
      S(2) => \out_href2_carry__0_i_6_n_0\,
      S(1) => \out_href2_carry__0_i_7_n_0\,
      S(0) => \out_href2_carry__0_i_8_n_0\
    );
\out_href2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_cnt_reg(14),
      I1 => \out_href3_carry__2_0\(14),
      I2 => \out_href3_carry__2_0\(15),
      I3 => pix_cnt_reg(15),
      O => \out_href2_carry__0_i_1_n_0\
    );
\out_href2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_cnt_reg(12),
      I1 => \out_href3_carry__2_0\(12),
      I2 => \out_href3_carry__2_0\(13),
      I3 => pix_cnt_reg(13),
      O => \out_href2_carry__0_i_2_n_0\
    );
\out_href2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_cnt_reg(10),
      I1 => \out_href3_carry__2_0\(10),
      I2 => \out_href3_carry__2_0\(11),
      I3 => pix_cnt_reg(11),
      O => \out_href2_carry__0_i_3_n_0\
    );
\out_href2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_cnt_reg(8),
      I1 => \out_href3_carry__2_0\(8),
      I2 => \out_href3_carry__2_0\(9),
      I3 => pix_cnt_reg(9),
      O => \out_href2_carry__0_i_4_n_0\
    );
\out_href2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_cnt_reg(14),
      I1 => \out_href3_carry__2_0\(14),
      I2 => pix_cnt_reg(15),
      I3 => \out_href3_carry__2_0\(15),
      O => \out_href2_carry__0_i_5_n_0\
    );
\out_href2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_cnt_reg(12),
      I1 => \out_href3_carry__2_0\(12),
      I2 => pix_cnt_reg(13),
      I3 => \out_href3_carry__2_0\(13),
      O => \out_href2_carry__0_i_6_n_0\
    );
\out_href2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_cnt_reg(10),
      I1 => \out_href3_carry__2_0\(10),
      I2 => pix_cnt_reg(11),
      I3 => \out_href3_carry__2_0\(11),
      O => \out_href2_carry__0_i_7_n_0\
    );
\out_href2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_cnt_reg(8),
      I1 => \out_href3_carry__2_0\(8),
      I2 => pix_cnt_reg(9),
      I3 => \out_href3_carry__2_0\(9),
      O => \out_href2_carry__0_i_8_n_0\
    );
out_href2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_cnt_reg(6),
      I1 => \out_href3_carry__2_0\(6),
      I2 => \out_href3_carry__2_0\(7),
      I3 => pix_cnt_reg(7),
      O => out_href2_carry_i_1_n_0
    );
out_href2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_cnt_reg(4),
      I1 => \out_href3_carry__2_0\(4),
      I2 => \out_href3_carry__2_0\(5),
      I3 => pix_cnt_reg(5),
      O => out_href2_carry_i_2_n_0
    );
out_href2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_cnt_reg(2),
      I1 => \out_href3_carry__2_0\(2),
      I2 => \out_href3_carry__2_0\(3),
      I3 => pix_cnt_reg(3),
      O => out_href2_carry_i_3_n_0
    );
out_href2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => \out_href3_carry__2_0\(0),
      I2 => \out_href3_carry__2_0\(1),
      I3 => pix_cnt_reg(1),
      O => out_href2_carry_i_4_n_0
    );
out_href2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_cnt_reg(6),
      I1 => \out_href3_carry__2_0\(6),
      I2 => pix_cnt_reg(7),
      I3 => \out_href3_carry__2_0\(7),
      O => out_href2_carry_i_5_n_0
    );
out_href2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_cnt_reg(4),
      I1 => \out_href3_carry__2_0\(4),
      I2 => pix_cnt_reg(5),
      I3 => \out_href3_carry__2_0\(5),
      O => out_href2_carry_i_6_n_0
    );
out_href2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_cnt_reg(2),
      I1 => \out_href3_carry__2_0\(2),
      I2 => pix_cnt_reg(3),
      I3 => \out_href3_carry__2_0\(3),
      O => out_href2_carry_i_7_n_0
    );
out_href2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => \out_href3_carry__2_0\(0),
      I2 => pix_cnt_reg(1),
      I3 => \out_href3_carry__2_0\(1),
      O => out_href2_carry_i_8_n_0
    );
out_href3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => out_href3_carry_n_0,
      CO(2) => out_href3_carry_n_1,
      CO(1) => out_href3_carry_n_2,
      CO(0) => out_href3_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \out_href3_carry__2_0\(3 downto 0),
      O(3) => out_href3_carry_n_4,
      O(2) => out_href3_carry_n_5,
      O(1) => out_href3_carry_n_6,
      O(0) => out_href3_carry_n_7,
      S(3) => out_href3_carry_i_1_n_0,
      S(2) => out_href3_carry_i_2_n_0,
      S(1) => out_href3_carry_i_3_n_0,
      S(0) => out_href3_carry_i_4_n_0
    );
\out_href3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => out_href3_carry_n_0,
      CO(3) => \out_href3_carry__0_n_0\,
      CO(2) => \out_href3_carry__0_n_1\,
      CO(1) => \out_href3_carry__0_n_2\,
      CO(0) => \out_href3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out_href3_carry__2_0\(7 downto 4),
      O(3) => \out_href3_carry__0_n_4\,
      O(2) => \out_href3_carry__0_n_5\,
      O(1) => \out_href3_carry__0_n_6\,
      O(0) => \out_href3_carry__0_n_7\,
      S(3) => \out_href3_carry__0_i_1_n_0\,
      S(2) => \out_href3_carry__0_i_2_n_0\,
      S(1) => \out_href3_carry__0_i_3_n_0\,
      S(0) => \out_href3_carry__0_i_4_n_0\
    );
\out_href3_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(7),
      I1 => \out_href3_carry__2_1\(7),
      O => \out_href3_carry__0_i_1_n_0\
    );
\out_href3_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(6),
      I1 => \out_href3_carry__2_1\(6),
      O => \out_href3_carry__0_i_2_n_0\
    );
\out_href3_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(5),
      I1 => \out_href3_carry__2_1\(5),
      O => \out_href3_carry__0_i_3_n_0\
    );
\out_href3_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(4),
      I1 => \out_href3_carry__2_1\(4),
      O => \out_href3_carry__0_i_4_n_0\
    );
\out_href3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_href3_carry__0_n_0\,
      CO(3) => \out_href3_carry__1_n_0\,
      CO(2) => \out_href3_carry__1_n_1\,
      CO(1) => \out_href3_carry__1_n_2\,
      CO(0) => \out_href3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out_href3_carry__2_0\(11 downto 8),
      O(3) => \out_href3_carry__1_n_4\,
      O(2) => \out_href3_carry__1_n_5\,
      O(1) => \out_href3_carry__1_n_6\,
      O(0) => \out_href3_carry__1_n_7\,
      S(3) => \out_href3_carry__1_i_1_n_0\,
      S(2) => \out_href3_carry__1_i_2_n_0\,
      S(1) => \out_href3_carry__1_i_3_n_0\,
      S(0) => \out_href3_carry__1_i_4_n_0\
    );
\out_href3_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(11),
      I1 => \out_href3_carry__2_1\(11),
      O => \out_href3_carry__1_i_1_n_0\
    );
\out_href3_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(10),
      I1 => \out_href3_carry__2_1\(10),
      O => \out_href3_carry__1_i_2_n_0\
    );
\out_href3_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(9),
      I1 => \out_href3_carry__2_1\(9),
      O => \out_href3_carry__1_i_3_n_0\
    );
\out_href3_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(8),
      I1 => \out_href3_carry__2_1\(8),
      O => \out_href3_carry__1_i_4_n_0\
    );
\out_href3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_href3_carry__1_n_0\,
      CO(3) => \NLW_out_href3_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \out_href3_carry__2_n_1\,
      CO(1) => \out_href3_carry__2_n_2\,
      CO(0) => \out_href3_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \out_href3_carry__2_0\(14 downto 12),
      O(3) => \out_href3_carry__2_n_4\,
      O(2) => \out_href3_carry__2_n_5\,
      O(1) => \out_href3_carry__2_n_6\,
      O(0) => \out_href3_carry__2_n_7\,
      S(3) => \out_href3_carry__2_i_1_n_0\,
      S(2) => \out_href3_carry__2_i_2_n_0\,
      S(1) => \out_href3_carry__2_i_3_n_0\,
      S(0) => \out_href3_carry__2_i_4_n_0\
    );
\out_href3_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(15),
      I1 => \out_href3_carry__2_1\(15),
      O => \out_href3_carry__2_i_1_n_0\
    );
\out_href3_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(14),
      I1 => \out_href3_carry__2_1\(14),
      O => \out_href3_carry__2_i_2_n_0\
    );
\out_href3_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(13),
      I1 => \out_href3_carry__2_1\(13),
      O => \out_href3_carry__2_i_3_n_0\
    );
\out_href3_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(12),
      I1 => \out_href3_carry__2_1\(12),
      O => \out_href3_carry__2_i_4_n_0\
    );
out_href3_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(3),
      I1 => \out_href3_carry__2_1\(3),
      O => out_href3_carry_i_1_n_0
    );
out_href3_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(2),
      I1 => \out_href3_carry__2_1\(2),
      O => out_href3_carry_i_2_n_0
    );
out_href3_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(1),
      I1 => \out_href3_carry__2_1\(1),
      O => out_href3_carry_i_3_n_0
    );
out_href3_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_href3_carry__2_0\(0),
      I1 => \out_href3_carry__2_1\(0),
      O => out_href3_carry_i_4_n_0
    );
p_1_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_1_out_carry_n_0,
      CO(2) => p_1_out_carry_n_1,
      CO(1) => p_1_out_carry_n_2,
      CO(0) => p_1_out_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => pix_cnt_reg(3 downto 0),
      O(3 downto 0) => NLW_p_1_out_carry_O_UNCONNECTED(3 downto 0),
      S(3) => p_1_out_carry_i_1_n_0,
      S(2) => p_1_out_carry_i_2_n_0,
      S(1) => p_1_out_carry_i_3_n_0,
      S(0) => p_1_out_carry_i_4_n_0
    );
\p_1_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_1_out_carry_n_0,
      CO(3) => \p_1_out_carry__0_n_0\,
      CO(2) => \p_1_out_carry__0_n_1\,
      CO(1) => \p_1_out_carry__0_n_2\,
      CO(0) => \p_1_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pix_cnt_reg(7 downto 4),
      O(3 downto 0) => \NLW_p_1_out_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \p_1_out_carry__0_i_1_n_0\,
      S(2) => \p_1_out_carry__0_i_2_n_0\,
      S(1) => \p_1_out_carry__0_i_3_n_0\,
      S(0) => \p_1_out_carry__0_i_4_n_0\
    );
\p_1_out_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(7),
      I1 => \out_href3_carry__0_n_4\,
      O => \p_1_out_carry__0_i_1_n_0\
    );
\p_1_out_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(6),
      I1 => \out_href3_carry__0_n_5\,
      O => \p_1_out_carry__0_i_2_n_0\
    );
\p_1_out_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(5),
      I1 => \out_href3_carry__0_n_6\,
      O => \p_1_out_carry__0_i_3_n_0\
    );
\p_1_out_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(4),
      I1 => \out_href3_carry__0_n_7\,
      O => \p_1_out_carry__0_i_4_n_0\
    );
\p_1_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_1_out_carry__0_n_0\,
      CO(3) => \p_1_out_carry__1_n_0\,
      CO(2) => \p_1_out_carry__1_n_1\,
      CO(1) => \p_1_out_carry__1_n_2\,
      CO(0) => \p_1_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pix_cnt_reg(11 downto 8),
      O(3 downto 0) => \NLW_p_1_out_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \p_1_out_carry__1_i_1_n_0\,
      S(2) => \p_1_out_carry__1_i_2_n_0\,
      S(1) => \p_1_out_carry__1_i_3_n_0\,
      S(0) => \p_1_out_carry__1_i_4_n_0\
    );
\p_1_out_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(11),
      I1 => \out_href3_carry__1_n_4\,
      O => \p_1_out_carry__1_i_1_n_0\
    );
\p_1_out_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(10),
      I1 => \out_href3_carry__1_n_5\,
      O => \p_1_out_carry__1_i_2_n_0\
    );
\p_1_out_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(9),
      I1 => \out_href3_carry__1_n_6\,
      O => \p_1_out_carry__1_i_3_n_0\
    );
\p_1_out_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(8),
      I1 => \out_href3_carry__1_n_7\,
      O => \p_1_out_carry__1_i_4_n_0\
    );
\p_1_out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_1_out_carry__1_n_0\,
      CO(3) => \p_1_out_carry__2_n_0\,
      CO(2) => \p_1_out_carry__2_n_1\,
      CO(1) => \p_1_out_carry__2_n_2\,
      CO(0) => \p_1_out_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pix_cnt_reg(15 downto 12),
      O(3 downto 0) => \NLW_p_1_out_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \p_1_out_carry__2_i_1_n_0\,
      S(2) => \p_1_out_carry__2_i_2_n_0\,
      S(1) => \p_1_out_carry__2_i_3_n_0\,
      S(0) => \p_1_out_carry__2_i_4_n_0\
    );
\p_1_out_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(15),
      I1 => \out_href3_carry__2_n_4\,
      O => \p_1_out_carry__2_i_1_n_0\
    );
\p_1_out_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(14),
      I1 => \out_href3_carry__2_n_5\,
      O => \p_1_out_carry__2_i_2_n_0\
    );
\p_1_out_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(13),
      I1 => \out_href3_carry__2_n_6\,
      O => \p_1_out_carry__2_i_3_n_0\
    );
\p_1_out_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(12),
      I1 => \out_href3_carry__2_n_7\,
      O => \p_1_out_carry__2_i_4_n_0\
    );
p_1_out_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => out_href3_carry_n_4,
      O => p_1_out_carry_i_1_n_0
    );
p_1_out_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(2),
      I1 => out_href3_carry_n_5,
      O => p_1_out_carry_i_2_n_0
    );
p_1_out_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(1),
      I1 => out_href3_carry_n_6,
      O => p_1_out_carry_i_3_n_0
    );
p_1_out_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => out_href3_carry_n_7,
      O => p_1_out_carry_i_4_n_0
    );
\p_1_out_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_1_out_inferred__0/i__carry_n_0\,
      CO(2) => \p_1_out_inferred__0/i__carry_n_1\,
      CO(1) => \p_1_out_inferred__0/i__carry_n_2\,
      CO(0) => \p_1_out_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => line_cnt_reg(3 downto 0),
      O(3 downto 0) => \NLW_p_1_out_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\p_1_out_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_1_out_inferred__0/i__carry_n_0\,
      CO(3) => \p_1_out_inferred__0/i__carry__0_n_0\,
      CO(2) => \p_1_out_inferred__0/i__carry__0_n_1\,
      CO(1) => \p_1_out_inferred__0/i__carry__0_n_2\,
      CO(0) => \p_1_out_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => line_cnt_reg(7 downto 4),
      O(3 downto 0) => \NLW_p_1_out_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__1_n_0\,
      S(2) => \i__carry__0_i_2__1_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \i__carry__0_i_4__1_n_0\
    );
\p_1_out_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_1_out_inferred__0/i__carry__0_n_0\,
      CO(3) => \p_1_out_inferred__0/i__carry__1_n_0\,
      CO(2) => \p_1_out_inferred__0/i__carry__1_n_1\,
      CO(1) => \p_1_out_inferred__0/i__carry__1_n_2\,
      CO(0) => \p_1_out_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => line_cnt_reg(11 downto 8),
      O(3 downto 0) => \NLW_p_1_out_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\p_1_out_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_1_out_inferred__0/i__carry__1_n_0\,
      CO(3) => \p_1_out_inferred__0/i__carry__2_n_0\,
      CO(2) => \p_1_out_inferred__0/i__carry__2_n_1\,
      CO(1) => \p_1_out_inferred__0/i__carry__2_n_2\,
      CO(0) => \p_1_out_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => line_cnt_reg(15 downto 12),
      O(3 downto 0) => \NLW_p_1_out_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
\pix_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => \^prev_href\,
      I1 => yuv2rgb_href_o,
      I2 => pix_cnt_reg(0),
      I3 => \pix_cnt[0]_i_3_n_0\,
      O => \pix_cnt[0]_i_1_n_0\
    );
\pix_cnt[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pix_cnt_reg(13),
      I1 => pix_cnt_reg(12),
      I2 => pix_cnt_reg(15),
      I3 => pix_cnt_reg(14),
      O => \pix_cnt[0]_i_10_n_0\
    );
\pix_cnt[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pix_cnt_reg(9),
      I1 => pix_cnt_reg(8),
      I2 => pix_cnt_reg(11),
      I3 => pix_cnt_reg(10),
      O => \pix_cnt[0]_i_11_n_0\
    );
\pix_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \pix_cnt[0]_i_9_n_0\,
      I1 => pix_cnt_reg(1),
      I2 => pix_cnt_reg(3),
      I3 => pix_cnt_reg(2),
      I4 => \pix_cnt[0]_i_10_n_0\,
      I5 => \pix_cnt[0]_i_11_n_0\,
      O => \pix_cnt[0]_i_3_n_0\
    );
\pix_cnt[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[0]_i_4_n_0\
    );
\pix_cnt[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[0]_i_5_n_0\
    );
\pix_cnt[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(2),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[0]_i_6_n_0\
    );
\pix_cnt[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(1),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[0]_i_7_n_0\
    );
\pix_cnt[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[0]_i_8_n_0\
    );
\pix_cnt[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pix_cnt_reg(5),
      I1 => pix_cnt_reg(4),
      I2 => pix_cnt_reg(7),
      I3 => pix_cnt_reg(6),
      O => \pix_cnt[0]_i_9_n_0\
    );
\pix_cnt[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(15),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[12]_i_2_n_0\
    );
\pix_cnt[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(14),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[12]_i_3_n_0\
    );
\pix_cnt[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(13),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[12]_i_4_n_0\
    );
\pix_cnt[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(12),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[12]_i_5_n_0\
    );
\pix_cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(7),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[4]_i_2_n_0\
    );
\pix_cnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(6),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[4]_i_3_n_0\
    );
\pix_cnt[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(5),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[4]_i_4_n_0\
    );
\pix_cnt[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(4),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[4]_i_5_n_0\
    );
\pix_cnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(11),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[8]_i_2_n_0\
    );
\pix_cnt[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(10),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[8]_i_3_n_0\
    );
\pix_cnt[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(9),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[8]_i_4_n_0\
    );
\pix_cnt[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => pix_cnt_reg(8),
      I1 => \^prev_href\,
      I2 => yuv2rgb_href_o,
      O => \pix_cnt[8]_i_5_n_0\
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[0]_i_2_n_7\,
      Q => pix_cnt_reg(0)
    );
\pix_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_cnt_reg[0]_i_2_n_0\,
      CO(2) => \pix_cnt_reg[0]_i_2_n_1\,
      CO(1) => \pix_cnt_reg[0]_i_2_n_2\,
      CO(0) => \pix_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pix_cnt[0]_i_4_n_0\,
      O(3) => \pix_cnt_reg[0]_i_2_n_4\,
      O(2) => \pix_cnt_reg[0]_i_2_n_5\,
      O(1) => \pix_cnt_reg[0]_i_2_n_6\,
      O(0) => \pix_cnt_reg[0]_i_2_n_7\,
      S(3) => \pix_cnt[0]_i_5_n_0\,
      S(2) => \pix_cnt[0]_i_6_n_0\,
      S(1) => \pix_cnt[0]_i_7_n_0\,
      S(0) => \pix_cnt[0]_i_8_n_0\
    );
\pix_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[8]_i_1_n_5\,
      Q => pix_cnt_reg(10)
    );
\pix_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[8]_i_1_n_4\,
      Q => pix_cnt_reg(11)
    );
\pix_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
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
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[12]_i_1_n_6\,
      Q => pix_cnt_reg(13)
    );
\pix_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[12]_i_1_n_5\,
      Q => pix_cnt_reg(14)
    );
\pix_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[12]_i_1_n_4\,
      Q => pix_cnt_reg(15)
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[0]_i_2_n_6\,
      Q => pix_cnt_reg(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[0]_i_2_n_5\,
      Q => pix_cnt_reg(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[0]_i_2_n_4\,
      Q => pix_cnt_reg(3)
    );
\pix_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[4]_i_1_n_7\,
      Q => pix_cnt_reg(4)
    );
\pix_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_cnt_reg[0]_i_2_n_0\,
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
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[4]_i_1_n_6\,
      Q => pix_cnt_reg(5)
    );
\pix_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[4]_i_1_n_5\,
      Q => pix_cnt_reg(6)
    );
\pix_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[4]_i_1_n_4\,
      Q => pix_cnt_reg(7)
    );
\pix_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
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
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => \line_cnt_reg[0]_0\,
      D => \pix_cnt_reg[8]_i_1_n_6\,
      Q => pix_cnt_reg(9)
    );
prev_href_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => yuv2rgb_href_o,
      Q => \^prev_href\
    );
prev_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \line_cnt_reg[0]_0\,
      D => yuv2rgb_vsync_o,
      Q => \^prev_vsync\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_dscale is
  port (
    prev_vsync : out STD_LOGIC;
    prev_href : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pix_odd_reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    osd_g_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dscale_r_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dscale_g_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    osd_b_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dscale_b_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dscale_href_o : out STD_LOGIC;
    CLK : out STD_LOGIC;
    pclk : in STD_LOGIC;
    \pix_cnt_reg[0]_0\ : in STD_LOGIC;
    crop_vsync_o : in STD_LOGIC;
    crop_href_o : in STD_LOGIC;
    s_yuv444to422_en : in STD_LOGIC;
    \pix_cnt_reg[1]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    osd_href_o : in STD_LOGIC;
    \c_reg_reg[7]\ : in STD_LOGIC;
    s_yuv444to422_switch_uv : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_osd_en : in STD_LOGIC;
    s_dscale_en : in STD_LOGIC;
    \data_r_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \line_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_dscale;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_dscale is
  signal data_r : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data_r0 : STD_LOGIC;
  signal \data_r1__2\ : STD_LOGIC;
  signal \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\ : STD_LOGIC;
  signal dscale_pclk : STD_LOGIC;
  signal line_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \line_cnt1__6\ : STD_LOGIC;
  signal \line_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \line_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \^osd_g_o\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal osd_r_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \pix_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \pix_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal pix_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^prev_vsync\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_reg[0]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_reg[1]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_reg[2]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_reg[3]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_reg[5]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_reg[6]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_reg[7]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pix_cnt[0]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pix_cnt[1]_i_1\ : label is "soft_lutpair1";
begin
  osd_g_o(7 downto 0) <= \^osd_g_o\(7 downto 0);
  prev_vsync <= \^prev_vsync\;
\c_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => osd_href_o,
      I1 => \^osd_g_o\(0),
      I2 => \c_reg_reg[7]\,
      I3 => s_yuv444to422_switch_uv,
      I4 => osd_r_o(0),
      O => pix_odd_reg(0)
    );
\c_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => osd_href_o,
      I1 => \^osd_g_o\(1),
      I2 => \c_reg_reg[7]\,
      I3 => s_yuv444to422_switch_uv,
      I4 => osd_r_o(1),
      O => pix_odd_reg(1)
    );
\c_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => osd_href_o,
      I1 => \^osd_g_o\(2),
      I2 => \c_reg_reg[7]\,
      I3 => s_yuv444to422_switch_uv,
      I4 => osd_r_o(2),
      O => pix_odd_reg(2)
    );
\c_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => osd_href_o,
      I1 => \^osd_g_o\(3),
      I2 => \c_reg_reg[7]\,
      I3 => s_yuv444to422_switch_uv,
      I4 => osd_r_o(3),
      O => pix_odd_reg(3)
    );
\c_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => osd_href_o,
      I1 => \^osd_g_o\(4),
      I2 => \c_reg_reg[7]\,
      I3 => s_yuv444to422_switch_uv,
      I4 => osd_r_o(4),
      O => pix_odd_reg(4)
    );
\c_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => osd_href_o,
      I1 => \^osd_g_o\(5),
      I2 => \c_reg_reg[7]\,
      I3 => s_yuv444to422_switch_uv,
      I4 => osd_r_o(5),
      O => pix_odd_reg(5)
    );
\c_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => osd_href_o,
      I1 => \^osd_g_o\(6),
      I2 => \c_reg_reg[7]\,
      I3 => s_yuv444to422_switch_uv,
      I4 => osd_r_o(6),
      O => pix_odd_reg(6)
    );
\c_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA88008"
    )
        port map (
      I0 => osd_href_o,
      I1 => \^osd_g_o\(7),
      I2 => \c_reg_reg[7]\,
      I3 => s_yuv444to422_switch_uv,
      I4 => osd_r_o(7),
      O => pix_odd_reg(7)
    );
\data_r[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => pix_cnt_reg(1),
      I1 => pix_cnt_reg(0),
      I2 => pix_cnt_reg(3),
      I3 => pix_cnt_reg(2),
      I4 => \data_r1__2\,
      O => data_r0
    );
\data_r[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => line_cnt(2),
      I1 => line_cnt(3),
      I2 => line_cnt(1),
      I3 => line_cnt(0),
      O => \data_r1__2\
    );
\data_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(0),
      Q => data_r(0)
    );
\data_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(10),
      Q => data_r(10)
    );
\data_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(11),
      Q => data_r(11)
    );
\data_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(12),
      Q => data_r(12)
    );
\data_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(13),
      Q => data_r(13)
    );
\data_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(14),
      Q => data_r(14)
    );
\data_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(15),
      Q => data_r(15)
    );
\data_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(16),
      Q => data_r(16)
    );
\data_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(17),
      Q => data_r(17)
    );
\data_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(18),
      Q => data_r(18)
    );
\data_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(19),
      Q => data_r(19)
    );
\data_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(1),
      Q => data_r(1)
    );
\data_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(20),
      Q => data_r(20)
    );
\data_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(21),
      Q => data_r(21)
    );
\data_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(22),
      Q => data_r(22)
    );
\data_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(23),
      Q => data_r(23)
    );
\data_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(2),
      Q => data_r(2)
    );
\data_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(3),
      Q => data_r(3)
    );
\data_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(4),
      Q => data_r(4)
    );
\data_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(5),
      Q => data_r(5)
    );
\data_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(6),
      Q => data_r(6)
    );
\data_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(7),
      Q => data_r(7)
    );
\data_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(8),
      Q => data_r(8)
    );
\data_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => \pix_cnt_reg[0]_0\,
      D => \data_r_reg[23]_0\(9),
      Q => data_r(9)
    );
\data_reg[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => osd_r_o(0),
      I1 => s_yuv444to422_en,
      O => D(0)
    );
\data_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(16),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(16),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(16),
      O => osd_r_o(0)
    );
\data_reg[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(10),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(10),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(10),
      O => \^osd_g_o\(2)
    );
\data_reg[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(11),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(11),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(11),
      O => \^osd_g_o\(3)
    );
\data_reg[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(12),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(12),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(12),
      O => \^osd_g_o\(4)
    );
\data_reg[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(13),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(13),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(13),
      O => \^osd_g_o\(5)
    );
\data_reg[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(14),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(14),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(14),
      O => \^osd_g_o\(6)
    );
\data_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(15),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(15),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(15),
      O => \^osd_g_o\(7)
    );
\data_reg[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(0),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(0),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(0),
      O => osd_b_o(0)
    );
\data_reg[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(1),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(1),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(1),
      O => osd_b_o(1)
    );
\data_reg[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(2),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(2),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(2),
      O => osd_b_o(2)
    );
\data_reg[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(3),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(3),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(3),
      O => osd_b_o(3)
    );
\data_reg[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => osd_r_o(1),
      I1 => s_yuv444to422_en,
      O => D(1)
    );
\data_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(17),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(17),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(17),
      O => osd_r_o(1)
    );
\data_reg[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(4),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(4),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(4),
      O => osd_b_o(4)
    );
\data_reg[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(5),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(5),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(5),
      O => osd_b_o(5)
    );
\data_reg[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(6),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(6),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(6),
      O => osd_b_o(6)
    );
\data_reg[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(7),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(7),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(7),
      O => osd_b_o(7)
    );
\data_reg[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => osd_r_o(2),
      I1 => s_yuv444to422_en,
      O => D(2)
    );
\data_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(18),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(18),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(18),
      O => osd_r_o(2)
    );
\data_reg[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => osd_r_o(3),
      I1 => s_yuv444to422_en,
      O => D(3)
    );
\data_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(19),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(19),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(19),
      O => osd_r_o(3)
    );
\data_reg[4]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => osd_r_o(4),
      I1 => s_yuv444to422_en,
      O => D(4)
    );
\data_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(20),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(20),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(20),
      O => osd_r_o(4)
    );
\data_reg[5]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => osd_r_o(5),
      I1 => s_yuv444to422_en,
      O => D(5)
    );
\data_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(21),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(21),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(21),
      O => osd_r_o(5)
    );
\data_reg[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => osd_r_o(6),
      I1 => s_yuv444to422_en,
      O => D(6)
    );
\data_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(22),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(22),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(22),
      O => osd_r_o(6)
    );
\data_reg[7]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => osd_r_o(7),
      I1 => s_yuv444to422_en,
      O => D(7)
    );
\data_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(23),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(23),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(23),
      O => osd_r_o(7)
    );
\data_reg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(8),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(8),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(8),
      O => \^osd_g_o\(0)
    );
\data_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => Q(9),
      I1 => s_osd_en,
      I2 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I3 => data_r(9),
      I4 => s_dscale_en,
      I5 => \data_r_reg[23]_0\(9),
      O => \^osd_g_o\(1)
    );
\data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(0),
      I2 => \data_r_reg[23]_0\(0),
      I3 => s_dscale_en,
      O => dscale_b_o(0)
    );
\data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(10),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(10),
      O => dscale_g_o(2)
    );
\data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(11),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(11),
      O => dscale_g_o(3)
    );
\data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(12),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(12),
      O => dscale_g_o(4)
    );
\data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(13),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(13),
      O => dscale_g_o(5)
    );
\data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(14),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(14),
      O => dscale_g_o(6)
    );
\data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(15),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(15),
      O => dscale_g_o(7)
    );
\data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(16),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(16),
      O => dscale_r_o(0)
    );
\data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(17),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(17),
      O => dscale_r_o(1)
    );
\data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(18),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(18),
      O => dscale_r_o(2)
    );
\data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(19),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(19),
      O => dscale_r_o(3)
    );
\data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(1),
      I2 => \data_r_reg[23]_0\(1),
      I3 => s_dscale_en,
      O => dscale_b_o(1)
    );
\data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(20),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(20),
      O => dscale_r_o(4)
    );
\data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(21),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(21),
      O => dscale_r_o(5)
    );
\data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(22),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(22),
      O => dscale_r_o(6)
    );
\data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(23),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(23),
      O => dscale_r_o(7)
    );
\data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => line_cnt(2),
      I1 => line_cnt(3),
      I2 => line_cnt(1),
      I3 => line_cnt(0),
      I4 => crop_href_o,
      I5 => crop_vsync_o,
      O => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\
    );
\data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(2),
      I2 => \data_r_reg[23]_0\(2),
      I3 => s_dscale_en,
      O => dscale_b_o(2)
    );
\data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(3),
      I2 => \data_r_reg[23]_0\(3),
      I3 => s_dscale_en,
      O => dscale_b_o(3)
    );
\data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(4),
      I2 => \data_r_reg[23]_0\(4),
      I3 => s_dscale_en,
      O => dscale_b_o(4)
    );
\data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(5),
      I2 => \data_r_reg[23]_0\(5),
      I3 => s_dscale_en,
      O => dscale_b_o(5)
    );
\data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(6),
      I2 => \data_r_reg[23]_0\(6),
      I3 => s_dscale_en,
      O => dscale_b_o(6)
    );
\data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(7),
      I2 => \data_r_reg[23]_0\(7),
      I3 => s_dscale_en,
      O => dscale_b_o(7)
    );
\data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(8),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(8),
      O => dscale_g_o(0)
    );
\data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_i_2_n_0\,
      I1 => data_r(9),
      I2 => s_dscale_en,
      I3 => \data_r_reg[23]_0\(9),
      O => dscale_g_o(1)
    );
href_t1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00000000"
    )
        port map (
      I0 => line_cnt(0),
      I1 => line_cnt(1),
      I2 => line_cnt(3),
      I3 => line_cnt(2),
      I4 => s_dscale_en,
      I5 => crop_href_o,
      O => dscale_href_o
    );
\line_cnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => line_cnt(0),
      I1 => \line_cnt1__6\,
      I2 => crop_vsync_o,
      I3 => \^prev_vsync\,
      O => \line_cnt[0]_i_1__0_n_0\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14001414"
    )
        port map (
      I0 => \line_cnt1__6\,
      I1 => line_cnt(0),
      I2 => line_cnt(1),
      I3 => crop_vsync_o,
      I4 => \^prev_vsync\,
      O => \line_cnt[1]_i_1_n_0\
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1540000015401540"
    )
        port map (
      I0 => \line_cnt1__6\,
      I1 => line_cnt(0),
      I2 => line_cnt(1),
      I3 => line_cnt(2),
      I4 => crop_vsync_o,
      I5 => \^prev_vsync\,
      O => \line_cnt[2]_i_1_n_0\
    );
\line_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015554000"
    )
        port map (
      I0 => \line_cnt1__6\,
      I1 => line_cnt(1),
      I2 => line_cnt(0),
      I3 => line_cnt(2),
      I4 => line_cnt(3),
      I5 => \line_cnt[3]_i_4_n_0\,
      O => \line_cnt[3]_i_2_n_0\
    );
\line_cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => line_cnt(3),
      I1 => \line_cnt_reg[0]_0\(3),
      I2 => \line_cnt[3]_i_5_n_0\,
      O => \line_cnt1__6\
    );
\line_cnt[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => crop_vsync_o,
      O => \line_cnt[3]_i_4_n_0\
    );
\line_cnt[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => line_cnt(0),
      I1 => \line_cnt_reg[0]_0\(0),
      I2 => \line_cnt_reg[0]_0\(2),
      I3 => line_cnt(2),
      I4 => \line_cnt_reg[0]_0\(1),
      I5 => line_cnt(1),
      O => \line_cnt[3]_i_5_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => E(0),
      CLR => \pix_cnt_reg[0]_0\,
      D => \line_cnt[0]_i_1__0_n_0\,
      Q => line_cnt(0)
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => E(0),
      CLR => \pix_cnt_reg[0]_0\,
      D => \line_cnt[1]_i_1_n_0\,
      Q => line_cnt(1)
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => E(0),
      CLR => \pix_cnt_reg[0]_0\,
      D => \line_cnt[2]_i_1_n_0\,
      Q => line_cnt(2)
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => E(0),
      CLR => \pix_cnt_reg[0]_0\,
      D => \line_cnt[3]_i_2_n_0\,
      Q => line_cnt(3)
    );
out_pclk_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dscale_pclk,
      I1 => s_dscale_en,
      I2 => pclk,
      O => CLK
    );
out_pclk_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pix_cnt_reg(2),
      I1 => pix_cnt_reg(3),
      I2 => pix_cnt_reg(1),
      I3 => pix_cnt_reg(0),
      O => p_0_in
    );
out_pclk_r_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \pix_cnt_reg[0]_0\,
      D => p_0_in,
      Q => dscale_pclk
    );
\pix_cnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006F"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => \pix_cnt_reg[1]_0\(3),
      I2 => \pix_cnt[3]_i_2_n_0\,
      I3 => pix_cnt_reg(0),
      O => \pix_cnt[0]_i_1__0_n_0\
    );
\pix_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"006F6F00"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => \pix_cnt_reg[1]_0\(3),
      I2 => \pix_cnt[3]_i_2_n_0\,
      I3 => pix_cnt_reg(1),
      I4 => pix_cnt_reg(0),
      O => \pix_cnt[1]_i_1_n_0\
    );
\pix_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006F6F006F006F00"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => \pix_cnt_reg[1]_0\(3),
      I2 => \pix_cnt[3]_i_2_n_0\,
      I3 => pix_cnt_reg(2),
      I4 => pix_cnt_reg(1),
      I5 => pix_cnt_reg(0),
      O => \pix_cnt[2]_i_1_n_0\
    );
\pix_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"452A2A2A2A2A2A2A"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => \pix_cnt_reg[1]_0\(3),
      I2 => \pix_cnt[3]_i_2_n_0\,
      I3 => pix_cnt_reg(2),
      I4 => pix_cnt_reg(0),
      I5 => pix_cnt_reg(1),
      O => \pix_cnt[3]_i_1_n_0\
    );
\pix_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => \pix_cnt_reg[1]_0\(0),
      I2 => \pix_cnt_reg[1]_0\(2),
      I3 => pix_cnt_reg(2),
      I4 => \pix_cnt_reg[1]_0\(1),
      I5 => pix_cnt_reg(1),
      O => \pix_cnt[3]_i_2_n_0\
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \pix_cnt_reg[0]_0\,
      D => \pix_cnt[0]_i_1__0_n_0\,
      Q => pix_cnt_reg(0)
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \pix_cnt_reg[0]_0\,
      D => \pix_cnt[1]_i_1_n_0\,
      Q => pix_cnt_reg(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \pix_cnt_reg[0]_0\,
      D => \pix_cnt[2]_i_1_n_0\,
      Q => pix_cnt_reg(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \pix_cnt_reg[0]_0\,
      D => \pix_cnt[3]_i_1_n_0\,
      Q => pix_cnt_reg(3)
    );
prev_href_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \pix_cnt_reg[0]_0\,
      D => crop_href_o,
      Q => prev_href
    );
prev_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \pix_cnt_reg[0]_0\,
      D => crop_vsync_o,
      Q => \^prev_vsync\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_yuv2rgb is
  port (
    s_module_reset_reg : out STD_LOGIC;
    in_href : out STD_LOGIC;
    in_vsync : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    pclk : in STD_LOGIC;
    sobel_href_o : in STD_LOGIC;
    sobel_vsync_o : in STD_LOGIC;
    \ZOUT_reg[19]_0\ : in STD_LOGIC;
    s_module_reset : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_yuv2rgb_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_yuv2rgb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_yuv2rgb is
  signal B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \B[0]_i_1_n_0\ : STD_LOGIC;
  signal \B[1]_i_1_n_0\ : STD_LOGIC;
  signal \B[2]_i_1_n_0\ : STD_LOGIC;
  signal \B[3]_i_1_n_0\ : STD_LOGIC;
  signal \B[4]_i_1_n_0\ : STD_LOGIC;
  signal \B[5]_i_1_n_0\ : STD_LOGIC;
  signal \B[6]_i_1_n_0\ : STD_LOGIC;
  signal \B[7]_i_1_n_0\ : STD_LOGIC;
  signal G : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \G[0]_i_1_n_0\ : STD_LOGIC;
  signal \G[1]_i_1_n_0\ : STD_LOGIC;
  signal \G[2]_i_1_n_0\ : STD_LOGIC;
  signal \G[3]_i_1_n_0\ : STD_LOGIC;
  signal \G[4]_i_1_n_0\ : STD_LOGIC;
  signal \G[5]_i_1_n_0\ : STD_LOGIC;
  signal \G[6]_i_1_n_0\ : STD_LOGIC;
  signal \G[7]_i_1_n_0\ : STD_LOGIC;
  signal R : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \XOUT1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__0_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__0_n_1\ : STD_LOGIC;
  signal \XOUT1_carry__0_n_2\ : STD_LOGIC;
  signal \XOUT1_carry__0_n_3\ : STD_LOGIC;
  signal \XOUT1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__1_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__1_n_1\ : STD_LOGIC;
  signal \XOUT1_carry__1_n_2\ : STD_LOGIC;
  signal \XOUT1_carry__1_n_3\ : STD_LOGIC;
  signal \XOUT1_carry__1_n_4\ : STD_LOGIC;
  signal \XOUT1_carry__1_n_5\ : STD_LOGIC;
  signal \XOUT1_carry__1_n_6\ : STD_LOGIC;
  signal \XOUT1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__2_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__2_n_1\ : STD_LOGIC;
  signal \XOUT1_carry__2_n_2\ : STD_LOGIC;
  signal \XOUT1_carry__2_n_3\ : STD_LOGIC;
  signal \XOUT1_carry__2_n_4\ : STD_LOGIC;
  signal \XOUT1_carry__2_n_5\ : STD_LOGIC;
  signal \XOUT1_carry__2_n_6\ : STD_LOGIC;
  signal \XOUT1_carry__2_n_7\ : STD_LOGIC;
  signal \XOUT1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \XOUT1_carry__3_n_1\ : STD_LOGIC;
  signal \XOUT1_carry__3_n_2\ : STD_LOGIC;
  signal \XOUT1_carry__3_n_3\ : STD_LOGIC;
  signal \XOUT1_carry__3_n_5\ : STD_LOGIC;
  signal \XOUT1_carry__3_n_6\ : STD_LOGIC;
  signal \XOUT1_carry__3_n_7\ : STD_LOGIC;
  signal XOUT1_carry_i_2_n_0 : STD_LOGIC;
  signal XOUT1_carry_i_3_n_0 : STD_LOGIC;
  signal XOUT1_carry_i_4_n_0 : STD_LOGIC;
  signal XOUT1_carry_i_5_n_0 : STD_LOGIC;
  signal XOUT1_carry_i_6_n_0 : STD_LOGIC;
  signal XOUT1_carry_i_7_n_0 : STD_LOGIC;
  signal XOUT1_carry_i_8_n_0 : STD_LOGIC;
  signal XOUT1_carry_n_0 : STD_LOGIC;
  signal XOUT1_carry_n_1 : STD_LOGIC;
  signal XOUT1_carry_n_2 : STD_LOGIC;
  signal XOUT1_carry_n_3 : STD_LOGIC;
  signal \XOUT_reg_n_0_[0]\ : STD_LOGIC;
  signal \XOUT_reg_n_0_[19]\ : STD_LOGIC;
  signal \XOUT_reg_n_0_[1]\ : STD_LOGIC;
  signal \XOUT_reg_n_0_[2]\ : STD_LOGIC;
  signal \XOUT_reg_n_0_[3]\ : STD_LOGIC;
  signal \XOUT_reg_n_0_[4]\ : STD_LOGIC;
  signal \XOUT_reg_n_0_[5]\ : STD_LOGIC;
  signal \XOUT_reg_n_0_[6]\ : STD_LOGIC;
  signal \XOUT_reg_n_0_[7]\ : STD_LOGIC;
  signal \XOUT_reg_n_0_[8]\ : STD_LOGIC;
  signal \XOUT_reg_n_0_[9]\ : STD_LOGIC;
  signal YOUT1 : STD_LOGIC_VECTOR ( 19 downto 9 );
  signal \YOUT1__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_n_1\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_n_2\ : STD_LOGIC;
  signal \YOUT1__1_carry__0_n_3\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_n_1\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_n_2\ : STD_LOGIC;
  signal \YOUT1__1_carry__1_n_3\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_16_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_n_1\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_n_2\ : STD_LOGIC;
  signal \YOUT1__1_carry__2_n_3\ : STD_LOGIC;
  signal \YOUT1__1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry__3_n_2\ : STD_LOGIC;
  signal \YOUT1__1_carry__3_n_3\ : STD_LOGIC;
  signal \YOUT1__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry_i_7_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry_n_0\ : STD_LOGIC;
  signal \YOUT1__1_carry_n_1\ : STD_LOGIC;
  signal \YOUT1__1_carry_n_2\ : STD_LOGIC;
  signal \YOUT1__1_carry_n_3\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[0]\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[19]\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[1]\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[2]\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[3]\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[4]\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[5]\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[6]\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[7]\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[8]\ : STD_LOGIC;
  signal \YOUT_reg_n_0_[9]\ : STD_LOGIC;
  signal ZOUT1 : STD_LOGIC_VECTOR ( 19 downto 9 );
  signal \ZOUT1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__0_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__0_n_1\ : STD_LOGIC;
  signal \ZOUT1_carry__0_n_2\ : STD_LOGIC;
  signal \ZOUT1_carry__0_n_3\ : STD_LOGIC;
  signal \ZOUT1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__1_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__1_n_1\ : STD_LOGIC;
  signal \ZOUT1_carry__1_n_2\ : STD_LOGIC;
  signal \ZOUT1_carry__1_n_3\ : STD_LOGIC;
  signal \ZOUT1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__2_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__2_n_1\ : STD_LOGIC;
  signal \ZOUT1_carry__2_n_2\ : STD_LOGIC;
  signal \ZOUT1_carry__2_n_3\ : STD_LOGIC;
  signal \ZOUT1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \ZOUT1_carry__3_n_1\ : STD_LOGIC;
  signal \ZOUT1_carry__3_n_2\ : STD_LOGIC;
  signal \ZOUT1_carry__3_n_3\ : STD_LOGIC;
  signal ZOUT1_carry_i_5_n_0 : STD_LOGIC;
  signal ZOUT1_carry_i_6_n_0 : STD_LOGIC;
  signal ZOUT1_carry_i_7_n_0 : STD_LOGIC;
  signal ZOUT1_carry_i_8_n_0 : STD_LOGIC;
  signal ZOUT1_carry_n_0 : STD_LOGIC;
  signal ZOUT1_carry_n_1 : STD_LOGIC;
  signal ZOUT1_carry_n_2 : STD_LOGIC;
  signal ZOUT1_carry_n_3 : STD_LOGIC;
  signal \ZOUT_reg_n_0_[0]\ : STD_LOGIC;
  signal \ZOUT_reg_n_0_[19]\ : STD_LOGIC;
  signal \ZOUT_reg_n_0_[1]\ : STD_LOGIC;
  signal \ZOUT_reg_n_0_[2]\ : STD_LOGIC;
  signal \ZOUT_reg_n_0_[3]\ : STD_LOGIC;
  signal \ZOUT_reg_n_0_[4]\ : STD_LOGIC;
  signal \ZOUT_reg_n_0_[5]\ : STD_LOGIC;
  signal \ZOUT_reg_n_0_[6]\ : STD_LOGIC;
  signal \ZOUT_reg_n_0_[7]\ : STD_LOGIC;
  signal \ZOUT_reg_n_0_[8]\ : STD_LOGIC;
  signal \ZOUT_reg_n_0_[9]\ : STD_LOGIC;
  signal \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0\ : STD_LOGIC;
  signal \href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0\ : STD_LOGIC;
  signal href_r_reg_c_5_n_0 : STD_LOGIC;
  signal href_r_reg_c_6_n_0 : STD_LOGIC;
  signal href_r_reg_c_n_0 : STD_LOGIC;
  signal href_r_reg_gate_n_0 : STD_LOGIC;
  signal img_Cb_r1 : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal img_Cb_r10 : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal \img_Cb_r1[13]_i_2_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[13]_i_3_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[13]_i_4_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[13]_i_5_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[13]_i_6_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[13]_i_7_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[13]_i_8_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[13]_i_9_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[15]_i_2_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[15]_i_3_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[15]_i_4_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[9]_i_2_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[9]_i_3_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[9]_i_4_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[9]_i_5_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[9]_i_6_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[9]_i_7_n_0\ : STD_LOGIC;
  signal \img_Cb_r1[9]_i_8_n_0\ : STD_LOGIC;
  signal \img_Cb_r1_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \img_Cb_r1_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \img_Cb_r1_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \img_Cb_r1_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \img_Cb_r1_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \img_Cb_r1_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \img_Cb_r1_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \img_Cb_r1_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \img_Cb_r1_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal img_Cb_r2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal img_Cb_r20_n_100 : STD_LOGIC;
  signal img_Cb_r20_n_101 : STD_LOGIC;
  signal img_Cb_r20_n_102 : STD_LOGIC;
  signal img_Cb_r20_n_103 : STD_LOGIC;
  signal img_Cb_r20_n_104 : STD_LOGIC;
  signal img_Cb_r20_n_105 : STD_LOGIC;
  signal img_Cb_r20_n_87 : STD_LOGIC;
  signal img_Cb_r20_n_88 : STD_LOGIC;
  signal img_Cb_r20_n_89 : STD_LOGIC;
  signal img_Cb_r20_n_90 : STD_LOGIC;
  signal img_Cb_r20_n_91 : STD_LOGIC;
  signal img_Cb_r20_n_92 : STD_LOGIC;
  signal img_Cb_r20_n_93 : STD_LOGIC;
  signal img_Cb_r20_n_94 : STD_LOGIC;
  signal img_Cb_r20_n_95 : STD_LOGIC;
  signal img_Cb_r20_n_96 : STD_LOGIC;
  signal img_Cb_r20_n_97 : STD_LOGIC;
  signal img_Cb_r20_n_98 : STD_LOGIC;
  signal img_Cb_r20_n_99 : STD_LOGIC;
  signal img_Cr_r1 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal img_Cr_r10_n_100 : STD_LOGIC;
  signal img_Cr_r10_n_101 : STD_LOGIC;
  signal img_Cr_r10_n_102 : STD_LOGIC;
  signal img_Cr_r10_n_103 : STD_LOGIC;
  signal img_Cr_r10_n_104 : STD_LOGIC;
  signal img_Cr_r10_n_105 : STD_LOGIC;
  signal img_Cr_r10_n_88 : STD_LOGIC;
  signal img_Cr_r10_n_89 : STD_LOGIC;
  signal img_Cr_r10_n_90 : STD_LOGIC;
  signal img_Cr_r10_n_91 : STD_LOGIC;
  signal img_Cr_r10_n_92 : STD_LOGIC;
  signal img_Cr_r10_n_93 : STD_LOGIC;
  signal img_Cr_r10_n_94 : STD_LOGIC;
  signal img_Cr_r10_n_95 : STD_LOGIC;
  signal img_Cr_r10_n_96 : STD_LOGIC;
  signal img_Cr_r10_n_97 : STD_LOGIC;
  signal img_Cr_r10_n_98 : STD_LOGIC;
  signal img_Cr_r10_n_99 : STD_LOGIC;
  signal img_Cr_r2 : STD_LOGIC_VECTOR ( 16 downto 5 );
  signal img_Cr_r20 : STD_LOGIC_VECTOR ( 16 downto 5 );
  signal \img_Cr_r2[11]_i_2_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[11]_i_3_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[11]_i_4_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[11]_i_5_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[15]_i_10_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[15]_i_11_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[15]_i_3_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[15]_i_5_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[15]_i_6_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[15]_i_7_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[15]_i_8_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[15]_i_9_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[16]_i_3_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[16]_i_4_n_0\ : STD_LOGIC;
  signal \img_Cr_r2[7]_i_2_n_0\ : STD_LOGIC;
  signal \img_Cr_r2_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \img_Cr_r2_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \img_Cr_r2_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \img_Cr_r2_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_4_n_1\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_4_n_2\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_4_n_3\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_4_n_4\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_4_n_5\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_4_n_6\ : STD_LOGIC;
  signal \img_Cr_r2_reg[15]_i_4_n_7\ : STD_LOGIC;
  signal \img_Cr_r2_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \img_Cr_r2_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \img_Cr_r2_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \img_Cr_r2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \img_Cr_r2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \img_Cr_r2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \img_Cr_r2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal img_Y_r1 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal img_Y_r10_n_100 : STD_LOGIC;
  signal img_Y_r10_n_101 : STD_LOGIC;
  signal img_Y_r10_n_102 : STD_LOGIC;
  signal img_Y_r10_n_103 : STD_LOGIC;
  signal img_Y_r10_n_104 : STD_LOGIC;
  signal img_Y_r10_n_105 : STD_LOGIC;
  signal img_Y_r10_n_88 : STD_LOGIC;
  signal img_Y_r10_n_89 : STD_LOGIC;
  signal img_Y_r10_n_90 : STD_LOGIC;
  signal img_Y_r10_n_91 : STD_LOGIC;
  signal img_Y_r10_n_92 : STD_LOGIC;
  signal img_Y_r10_n_93 : STD_LOGIC;
  signal img_Y_r10_n_94 : STD_LOGIC;
  signal img_Y_r10_n_95 : STD_LOGIC;
  signal img_Y_r10_n_96 : STD_LOGIC;
  signal img_Y_r10_n_97 : STD_LOGIC;
  signal img_Y_r10_n_98 : STD_LOGIC;
  signal img_Y_r10_n_99 : STD_LOGIC;
  signal in_u_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_v_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_y_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal \^s_module_reset_reg\ : STD_LOGIC;
  signal \vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0\ : STD_LOGIC;
  signal \vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0\ : STD_LOGIC;
  signal vsync_r_reg_gate_n_0 : STD_LOGIC;
  signal yuv2rgb_href : STD_LOGIC;
  signal yuv2rgb_vsync : STD_LOGIC;
  signal NLW_XOUT1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_XOUT1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_XOUT1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_XOUT1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_YOUT1__1_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_YOUT1__1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_YOUT1__1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_YOUT1__1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ZOUT1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZOUT1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZOUT1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ZOUT1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_img_Cb_r1_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_img_Cb_r1_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_img_Cb_r20_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cb_r20_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cb_r20_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cb_r20_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cb_r20_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cb_r20_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cb_r20_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_img_Cb_r20_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_img_Cb_r20_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_img_Cb_r20_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 19 );
  signal NLW_img_Cb_r20_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_img_Cr_r10_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cr_r10_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cr_r10_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cr_r10_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cr_r10_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cr_r10_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Cr_r10_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_img_Cr_r10_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_img_Cr_r10_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_img_Cr_r10_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_img_Cr_r10_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_img_Cr_r2_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_img_Cr_r2_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_img_Cr_r2_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_img_Cr_r2_reg[16]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_img_Cr_r2_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_img_Y_r10_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Y_r10_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Y_r10_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Y_r10_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Y_r10_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Y_r10_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_img_Y_r10_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_img_Y_r10_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_img_Y_r10_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_img_Y_r10_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_img_Y_r10_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \B[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \B[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \B[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \B[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \B[5]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \B[6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \B[7]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \G[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \G[1]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \G[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \G[3]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \G[4]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \G[5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \G[6]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \G[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \R[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \R[1]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \R[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \R[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \R[4]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \R[5]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \R[6]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \R[7]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__0_i_10\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__0_i_11\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__0_i_9\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__1_i_11\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__1_i_12\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__1_i_13\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__1_i_9\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__2_i_10\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__2_i_11\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__2_i_12\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__2_i_13\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__2_i_14\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__2_i_15\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__2_i_16\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__2_i_9\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \YOUT1__1_carry__3_i_5\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \data_reg[18]_i_1__1\ : label is "soft_lutpair56";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/href_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 ";
  attribute SOFT_HLUTNM of href_r_reg_gate : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \href_reg_i_1__0\ : label is "soft_lutpair56";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \img_Cb_r1_reg[13]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \img_Cb_r1_reg[15]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \img_Cb_r1_reg[9]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of img_Cb_r20 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of img_Cr_r10 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \img_Cr_r2_reg[11]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 9x8}}";
  attribute METHODOLOGY_DRC_VIOS of \img_Cr_r2_reg[15]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 9x8}}";
  attribute METHODOLOGY_DRC_VIOS of \img_Cr_r2_reg[15]_i_2\ : label is "{SYNTH-9 {cell *THIS*} {string 9x8}}";
  attribute METHODOLOGY_DRC_VIOS of \img_Cr_r2_reg[15]_i_4\ : label is "{SYNTH-9 {cell *THIS*} {string 9x8}}";
  attribute METHODOLOGY_DRC_VIOS of \img_Cr_r2_reg[16]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 9x8}}";
  attribute METHODOLOGY_DRC_VIOS of \img_Cr_r2_reg[16]_i_2\ : label is "{SYNTH-9 {cell *THIS*} {string 9x8}}";
  attribute METHODOLOGY_DRC_VIOS of \img_Cr_r2_reg[7]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 9x8}}";
  attribute METHODOLOGY_DRC_VIOS of img_Y_r10 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute srl_bus_name of \vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/vsync_r_reg ";
  attribute srl_name of \vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 ";
  attribute SOFT_HLUTNM of vsync_r_reg_gate : label is "soft_lutpair72";
begin
  s_module_reset_reg <= \^s_module_reset_reg\;
\B[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \ZOUT_reg_n_0_[0]\,
      I1 => \ZOUT_reg_n_0_[8]\,
      I2 => \ZOUT_reg_n_0_[9]\,
      I3 => \ZOUT_reg_n_0_[19]\,
      O => \B[0]_i_1_n_0\
    );
\B[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \ZOUT_reg_n_0_[1]\,
      I1 => \ZOUT_reg_n_0_[8]\,
      I2 => \ZOUT_reg_n_0_[9]\,
      I3 => \ZOUT_reg_n_0_[19]\,
      O => \B[1]_i_1_n_0\
    );
\B[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \ZOUT_reg_n_0_[2]\,
      I1 => \ZOUT_reg_n_0_[8]\,
      I2 => \ZOUT_reg_n_0_[9]\,
      I3 => \ZOUT_reg_n_0_[19]\,
      O => \B[2]_i_1_n_0\
    );
\B[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \ZOUT_reg_n_0_[3]\,
      I1 => \ZOUT_reg_n_0_[8]\,
      I2 => \ZOUT_reg_n_0_[9]\,
      I3 => \ZOUT_reg_n_0_[19]\,
      O => \B[3]_i_1_n_0\
    );
\B[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \ZOUT_reg_n_0_[4]\,
      I1 => \ZOUT_reg_n_0_[8]\,
      I2 => \ZOUT_reg_n_0_[9]\,
      I3 => \ZOUT_reg_n_0_[19]\,
      O => \B[4]_i_1_n_0\
    );
\B[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \ZOUT_reg_n_0_[5]\,
      I1 => \ZOUT_reg_n_0_[8]\,
      I2 => \ZOUT_reg_n_0_[9]\,
      I3 => \ZOUT_reg_n_0_[19]\,
      O => \B[5]_i_1_n_0\
    );
\B[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \ZOUT_reg_n_0_[6]\,
      I1 => \ZOUT_reg_n_0_[8]\,
      I2 => \ZOUT_reg_n_0_[9]\,
      I3 => \ZOUT_reg_n_0_[19]\,
      O => \B[6]_i_1_n_0\
    );
\B[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \ZOUT_reg_n_0_[7]\,
      I1 => \ZOUT_reg_n_0_[8]\,
      I2 => \ZOUT_reg_n_0_[9]\,
      I3 => \ZOUT_reg_n_0_[19]\,
      O => \B[7]_i_1_n_0\
    );
\B_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \B[0]_i_1_n_0\,
      Q => B(0)
    );
\B_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \B[1]_i_1_n_0\,
      Q => B(1)
    );
\B_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \B[2]_i_1_n_0\,
      Q => B(2)
    );
\B_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \B[3]_i_1_n_0\,
      Q => B(3)
    );
\B_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \B[4]_i_1_n_0\,
      Q => B(4)
    );
\B_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \B[5]_i_1_n_0\,
      Q => B(5)
    );
\B_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \B[6]_i_1_n_0\,
      Q => B(6)
    );
\B_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \B[7]_i_1_n_0\,
      Q => B(7)
    );
\G[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \YOUT_reg_n_0_[0]\,
      I1 => \YOUT_reg_n_0_[8]\,
      I2 => \YOUT_reg_n_0_[9]\,
      I3 => \YOUT_reg_n_0_[19]\,
      O => \G[0]_i_1_n_0\
    );
\G[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \YOUT_reg_n_0_[1]\,
      I1 => \YOUT_reg_n_0_[8]\,
      I2 => \YOUT_reg_n_0_[9]\,
      I3 => \YOUT_reg_n_0_[19]\,
      O => \G[1]_i_1_n_0\
    );
\G[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \YOUT_reg_n_0_[2]\,
      I1 => \YOUT_reg_n_0_[8]\,
      I2 => \YOUT_reg_n_0_[9]\,
      I3 => \YOUT_reg_n_0_[19]\,
      O => \G[2]_i_1_n_0\
    );
\G[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \YOUT_reg_n_0_[3]\,
      I1 => \YOUT_reg_n_0_[8]\,
      I2 => \YOUT_reg_n_0_[9]\,
      I3 => \YOUT_reg_n_0_[19]\,
      O => \G[3]_i_1_n_0\
    );
\G[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \YOUT_reg_n_0_[4]\,
      I1 => \YOUT_reg_n_0_[8]\,
      I2 => \YOUT_reg_n_0_[9]\,
      I3 => \YOUT_reg_n_0_[19]\,
      O => \G[4]_i_1_n_0\
    );
\G[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \YOUT_reg_n_0_[5]\,
      I1 => \YOUT_reg_n_0_[8]\,
      I2 => \YOUT_reg_n_0_[9]\,
      I3 => \YOUT_reg_n_0_[19]\,
      O => \G[5]_i_1_n_0\
    );
\G[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \YOUT_reg_n_0_[6]\,
      I1 => \YOUT_reg_n_0_[8]\,
      I2 => \YOUT_reg_n_0_[9]\,
      I3 => \YOUT_reg_n_0_[19]\,
      O => \G[6]_i_1_n_0\
    );
\G[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \YOUT_reg_n_0_[7]\,
      I1 => \YOUT_reg_n_0_[8]\,
      I2 => \YOUT_reg_n_0_[9]\,
      I3 => \YOUT_reg_n_0_[19]\,
      O => \G[7]_i_1_n_0\
    );
\G_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \G[0]_i_1_n_0\,
      Q => G(0)
    );
\G_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \G[1]_i_1_n_0\,
      Q => G(1)
    );
\G_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \G[2]_i_1_n_0\,
      Q => G(2)
    );
\G_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \G[3]_i_1_n_0\,
      Q => G(3)
    );
\G_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \G[4]_i_1_n_0\,
      Q => G(4)
    );
\G_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \G[5]_i_1_n_0\,
      Q => G(5)
    );
\G_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \G[6]_i_1_n_0\,
      Q => G(6)
    );
\G_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \G[7]_i_1_n_0\,
      Q => G(7)
    );
\R[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \XOUT_reg_n_0_[0]\,
      I1 => \XOUT_reg_n_0_[8]\,
      I2 => \XOUT_reg_n_0_[9]\,
      I3 => \XOUT_reg_n_0_[19]\,
      O => p_0_in(0)
    );
\R[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \XOUT_reg_n_0_[1]\,
      I1 => \XOUT_reg_n_0_[8]\,
      I2 => \XOUT_reg_n_0_[9]\,
      I3 => \XOUT_reg_n_0_[19]\,
      O => p_0_in(1)
    );
\R[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \XOUT_reg_n_0_[2]\,
      I1 => \XOUT_reg_n_0_[8]\,
      I2 => \XOUT_reg_n_0_[9]\,
      I3 => \XOUT_reg_n_0_[19]\,
      O => p_0_in(2)
    );
\R[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \XOUT_reg_n_0_[3]\,
      I1 => \XOUT_reg_n_0_[8]\,
      I2 => \XOUT_reg_n_0_[9]\,
      I3 => \XOUT_reg_n_0_[19]\,
      O => p_0_in(3)
    );
\R[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \XOUT_reg_n_0_[4]\,
      I1 => \XOUT_reg_n_0_[8]\,
      I2 => \XOUT_reg_n_0_[9]\,
      I3 => \XOUT_reg_n_0_[19]\,
      O => p_0_in(4)
    );
\R[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \XOUT_reg_n_0_[5]\,
      I1 => \XOUT_reg_n_0_[8]\,
      I2 => \XOUT_reg_n_0_[9]\,
      I3 => \XOUT_reg_n_0_[19]\,
      O => p_0_in(5)
    );
\R[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \XOUT_reg_n_0_[6]\,
      I1 => \XOUT_reg_n_0_[8]\,
      I2 => \XOUT_reg_n_0_[9]\,
      I3 => \XOUT_reg_n_0_[19]\,
      O => p_0_in(6)
    );
\R[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \XOUT_reg_n_0_[7]\,
      I1 => \XOUT_reg_n_0_[8]\,
      I2 => \XOUT_reg_n_0_[9]\,
      I3 => \XOUT_reg_n_0_[19]\,
      O => p_0_in(7)
    );
\R_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => p_0_in(0),
      Q => R(0)
    );
\R_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => p_0_in(1),
      Q => R(1)
    );
\R_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => p_0_in(2),
      Q => R(2)
    );
\R_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => p_0_in(3),
      Q => R(3)
    );
\R_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => p_0_in(4),
      Q => R(4)
    );
\R_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => p_0_in(5),
      Q => R(5)
    );
\R_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => p_0_in(6),
      Q => R(6)
    );
\R_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => p_0_in(7),
      Q => R(7)
    );
XOUT1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => XOUT1_carry_n_0,
      CO(2) => XOUT1_carry_n_1,
      CO(1) => XOUT1_carry_n_2,
      CO(0) => XOUT1_carry_n_3,
      CYINIT => '1',
      DI(3) => img_Cr_r1(2),
      DI(2) => XOUT1_carry_i_2_n_0,
      DI(1) => XOUT1_carry_i_3_n_0,
      DI(0) => XOUT1_carry_i_4_n_0,
      O(3 downto 0) => NLW_XOUT1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => XOUT1_carry_i_5_n_0,
      S(2) => XOUT1_carry_i_6_n_0,
      S(1) => XOUT1_carry_i_7_n_0,
      S(0) => XOUT1_carry_i_8_n_0
    );
\XOUT1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => XOUT1_carry_n_0,
      CO(3) => \XOUT1_carry__0_n_0\,
      CO(2) => \XOUT1_carry__0_n_1\,
      CO(1) => \XOUT1_carry__0_n_2\,
      CO(0) => \XOUT1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \XOUT1_carry__0_i_1_n_0\,
      DI(2) => \XOUT1_carry__0_i_2_n_0\,
      DI(1) => \XOUT1_carry__0_i_3_n_0\,
      DI(0) => \XOUT1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_XOUT1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \XOUT1_carry__0_i_5_n_0\,
      S(2) => \XOUT1_carry__0_i_6_n_0\,
      S(1) => \XOUT1_carry__0_i_7_n_0\,
      S(0) => \XOUT1_carry__0_i_8_n_0\
    );
\XOUT1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_99,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_99,
      O => \XOUT1_carry__0_i_1_n_0\
    );
\XOUT1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_100,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_100,
      O => \XOUT1_carry__0_i_2_n_0\
    );
\XOUT1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cr_r10_n_100,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_100,
      O => \XOUT1_carry__0_i_3_n_0\
    );
\XOUT1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_102,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_102,
      O => \XOUT1_carry__0_i_4_n_0\
    );
\XOUT1_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_99,
      I1 => img_Cr_r10_n_99,
      I2 => img_Cr_r10_n_98,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_98,
      O => \XOUT1_carry__0_i_5_n_0\
    );
\XOUT1_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cr_r10_n_100,
      I1 => img_Y_r10_n_100,
      I2 => img_Cr_r10_n_99,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_99,
      O => \XOUT1_carry__0_i_6_n_0\
    );
\XOUT1_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cr_r10_n_100,
      I1 => img_Y_r10_n_100,
      I2 => img_Y_r10_n_101,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cr_r10_n_101,
      O => \XOUT1_carry__0_i_7_n_0\
    );
\XOUT1_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cr_r10_n_102,
      I1 => img_Y_r10_n_102,
      I2 => img_Cr_r10_n_101,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_101,
      O => \XOUT1_carry__0_i_8_n_0\
    );
\XOUT1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \XOUT1_carry__0_n_0\,
      CO(3) => \XOUT1_carry__1_n_0\,
      CO(2) => \XOUT1_carry__1_n_1\,
      CO(1) => \XOUT1_carry__1_n_2\,
      CO(0) => \XOUT1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \XOUT1_carry__1_i_1_n_0\,
      DI(2) => \XOUT1_carry__1_i_2_n_0\,
      DI(1) => \XOUT1_carry__1_i_3_n_0\,
      DI(0) => \XOUT1_carry__1_i_4_n_0\,
      O(3) => \XOUT1_carry__1_n_4\,
      O(2) => \XOUT1_carry__1_n_5\,
      O(1) => \XOUT1_carry__1_n_6\,
      O(0) => \NLW_XOUT1_carry__1_O_UNCONNECTED\(0),
      S(3) => \XOUT1_carry__1_i_5_n_0\,
      S(2) => \XOUT1_carry__1_i_6_n_0\,
      S(1) => \XOUT1_carry__1_i_7_n_0\,
      S(0) => \XOUT1_carry__1_i_8_n_0\
    );
\XOUT1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_95,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_95,
      O => \XOUT1_carry__1_i_1_n_0\
    );
\XOUT1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_96,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_96,
      O => \XOUT1_carry__1_i_2_n_0\
    );
\XOUT1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cr_r10_n_96,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_96,
      O => \XOUT1_carry__1_i_3_n_0\
    );
\XOUT1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_98,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_98,
      O => \XOUT1_carry__1_i_4_n_0\
    );
\XOUT1_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_95,
      I1 => img_Cr_r10_n_95,
      I2 => img_Cr_r10_n_94,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_94,
      O => \XOUT1_carry__1_i_5_n_0\
    );
\XOUT1_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cr_r10_n_96,
      I1 => img_Y_r10_n_96,
      I2 => img_Cr_r10_n_95,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_95,
      O => \XOUT1_carry__1_i_6_n_0\
    );
\XOUT1_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cr_r10_n_96,
      I1 => img_Y_r10_n_96,
      I2 => img_Y_r10_n_97,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cr_r10_n_97,
      O => \XOUT1_carry__1_i_7_n_0\
    );
\XOUT1_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_98,
      I1 => img_Cr_r10_n_98,
      I2 => img_Cr_r10_n_97,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_97,
      O => \XOUT1_carry__1_i_8_n_0\
    );
\XOUT1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \XOUT1_carry__1_n_0\,
      CO(3) => \XOUT1_carry__2_n_0\,
      CO(2) => \XOUT1_carry__2_n_1\,
      CO(1) => \XOUT1_carry__2_n_2\,
      CO(0) => \XOUT1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \XOUT1_carry__2_i_1_n_0\,
      DI(2) => \XOUT1_carry__2_i_2_n_0\,
      DI(1) => \XOUT1_carry__2_i_3_n_0\,
      DI(0) => \XOUT1_carry__2_i_4_n_0\,
      O(3) => \XOUT1_carry__2_n_4\,
      O(2) => \XOUT1_carry__2_n_5\,
      O(1) => \XOUT1_carry__2_n_6\,
      O(0) => \XOUT1_carry__2_n_7\,
      S(3) => \XOUT1_carry__2_i_5_n_0\,
      S(2) => \XOUT1_carry__2_i_6_n_0\,
      S(1) => \XOUT1_carry__2_i_7_n_0\,
      S(0) => \XOUT1_carry__2_i_8_n_0\
    );
\XOUT1_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_91,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_91,
      O => \XOUT1_carry__2_i_1_n_0\
    );
\XOUT1_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cr_r10_n_91,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_91,
      O => \XOUT1_carry__2_i_2_n_0\
    );
\XOUT1_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_93,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_93,
      O => \XOUT1_carry__2_i_3_n_0\
    );
\XOUT1_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_94,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_94,
      O => \XOUT1_carry__2_i_4_n_0\
    );
\XOUT1_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cr_r10_n_91,
      I1 => img_Y_r10_n_91,
      I2 => img_Cr_r10_n_90,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_90,
      O => \XOUT1_carry__2_i_5_n_0\
    );
\XOUT1_carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cr_r10_n_91,
      I1 => img_Y_r10_n_91,
      I2 => img_Y_r10_n_92,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cr_r10_n_92,
      O => \XOUT1_carry__2_i_6_n_0\
    );
\XOUT1_carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_93,
      I1 => img_Cr_r10_n_93,
      I2 => img_Cr_r10_n_92,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_92,
      O => \XOUT1_carry__2_i_7_n_0\
    );
\XOUT1_carry__2_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_94,
      I1 => img_Cr_r10_n_94,
      I2 => img_Cr_r10_n_93,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_93,
      O => \XOUT1_carry__2_i_8_n_0\
    );
\XOUT1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \XOUT1_carry__2_n_0\,
      CO(3) => \NLW_XOUT1_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \XOUT1_carry__3_n_1\,
      CO(1) => \XOUT1_carry__3_n_2\,
      CO(0) => \XOUT1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"01",
      DI(1) => \XOUT1_carry__3_i_1_n_0\,
      DI(0) => \XOUT1_carry__3_i_2_n_0\,
      O(3) => p_0_in0,
      O(2) => \XOUT1_carry__3_n_5\,
      O(1) => \XOUT1_carry__3_n_6\,
      O(0) => \XOUT1_carry__3_n_7\,
      S(3) => '1',
      S(2) => \XOUT1_carry__3_i_3_n_0\,
      S(1) => \XOUT1_carry__3_i_4_n_0\,
      S(0) => \XOUT1_carry__3_i_5_n_0\
    );
\XOUT1_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cr_r10_n_88,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_88,
      O => \XOUT1_carry__3_i_1_n_0\
    );
\XOUT1_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_90,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_90,
      O => \XOUT1_carry__3_i_2_n_0\
    );
\XOUT1_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => img_Y_r10_n_88,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_88,
      O => \XOUT1_carry__3_i_3_n_0\
    );
\XOUT1_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cr_r10_n_88,
      I1 => img_Y_r10_n_88,
      I2 => img_Y_r10_n_89,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cr_r10_n_89,
      O => \XOUT1_carry__3_i_4_n_0\
    );
\XOUT1_carry__3_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_90,
      I1 => img_Cr_r10_n_90,
      I2 => img_Cr_r10_n_89,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_89,
      O => \XOUT1_carry__3_i_5_n_0\
    );
XOUT1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Cr_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Cr_r1(2)
    );
XOUT1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => XOUT1_carry_i_2_n_0
    );
XOUT1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_104,
      I1 => \ZOUT_reg[19]_0\,
      O => XOUT1_carry_i_3_n_0
    );
XOUT1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_105,
      I1 => \ZOUT_reg[19]_0\,
      O => XOUT1_carry_i_4_n_0
    );
XOUT1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F9F"
    )
        port map (
      I0 => img_Cr_r10_n_102,
      I1 => img_Y_r10_n_102,
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Cr_r10_n_103,
      O => XOUT1_carry_i_5_n_0
    );
XOUT1_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cr_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_103,
      O => XOUT1_carry_i_6_n_0
    );
XOUT1_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => img_Y_r10_n_104,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_104,
      O => XOUT1_carry_i_7_n_0
    );
XOUT1_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => img_Y_r10_n_105,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_105,
      O => XOUT1_carry_i_8_n_0
    );
\XOUT_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT1_carry__1_n_6\,
      Q => \XOUT_reg_n_0_[0]\
    );
\XOUT_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => p_0_in0,
      Q => \XOUT_reg_n_0_[19]\
    );
\XOUT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT1_carry__1_n_5\,
      Q => \XOUT_reg_n_0_[1]\
    );
\XOUT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT1_carry__1_n_4\,
      Q => \XOUT_reg_n_0_[2]\
    );
\XOUT_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT1_carry__2_n_7\,
      Q => \XOUT_reg_n_0_[3]\
    );
\XOUT_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT1_carry__2_n_6\,
      Q => \XOUT_reg_n_0_[4]\
    );
\XOUT_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT1_carry__2_n_5\,
      Q => \XOUT_reg_n_0_[5]\
    );
\XOUT_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT1_carry__2_n_4\,
      Q => \XOUT_reg_n_0_[6]\
    );
\XOUT_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT1_carry__3_n_7\,
      Q => \XOUT_reg_n_0_[7]\
    );
\XOUT_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT1_carry__3_n_6\,
      Q => \XOUT_reg_n_0_[8]\
    );
\XOUT_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT1_carry__3_n_5\,
      Q => \XOUT_reg_n_0_[9]\
    );
\YOUT1__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \YOUT1__1_carry_n_0\,
      CO(2) => \YOUT1__1_carry_n_1\,
      CO(1) => \YOUT1__1_carry_n_2\,
      CO(0) => \YOUT1__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \YOUT1__1_carry_i_1_n_0\,
      DI(2) => \YOUT1__1_carry_i_2_n_0\,
      DI(1) => \YOUT1__1_carry_i_3_n_0\,
      DI(0) => '1',
      O(3 downto 0) => \NLW_YOUT1__1_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \YOUT1__1_carry_i_4_n_0\,
      S(2) => \YOUT1__1_carry_i_5_n_0\,
      S(1) => \YOUT1__1_carry_i_6_n_0\,
      S(0) => \YOUT1__1_carry_i_7_n_0\
    );
\YOUT1__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \YOUT1__1_carry_n_0\,
      CO(3) => \YOUT1__1_carry__0_n_0\,
      CO(2) => \YOUT1__1_carry__0_n_1\,
      CO(1) => \YOUT1__1_carry__0_n_2\,
      CO(0) => \YOUT1__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \YOUT1__1_carry__0_i_1_n_0\,
      DI(2) => \YOUT1__1_carry__0_i_2_n_0\,
      DI(1) => \YOUT1__1_carry__0_i_3_n_0\,
      DI(0) => \YOUT1__1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_YOUT1__1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \YOUT1__1_carry__0_i_5_n_0\,
      S(2) => \YOUT1__1_carry__0_i_6_n_0\,
      S(1) => \YOUT1__1_carry__0_i_7_n_0\,
      S(0) => \YOUT1__1_carry__0_i_8_n_0\
    );
\YOUT1__1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000F999F999F999"
    )
        port map (
      I0 => img_Cb_r1(7),
      I1 => img_Cr_r2(7),
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_98,
      I4 => img_Cb_r1(6),
      I5 => img_Cr_r2(6),
      O => \YOUT1__1_carry__0_i_1_n_0\
    );
\YOUT1__1_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_98,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(7)
    );
\YOUT1__1_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_99,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(6)
    );
\YOUT1__1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000F999F999F999"
    )
        port map (
      I0 => img_Cb_r1(6),
      I1 => img_Cr_r2(6),
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_99,
      I4 => img_Cb_r1(5),
      I5 => img_Cr_r2(5),
      O => \YOUT1__1_carry__0_i_2_n_0\
    );
\YOUT1__1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F88F"
    )
        port map (
      I0 => img_Y_r10_n_100,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r1(5),
      I3 => img_Cr_r2(5),
      O => \YOUT1__1_carry__0_i_3_n_0\
    );
\YOUT1__1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => img_Y_r10_n_101,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r1(4),
      O => \YOUT1__1_carry__0_i_4_n_0\
    );
\YOUT1__1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996699669"
    )
        port map (
      I0 => \YOUT1__1_carry__0_i_1_n_0\,
      I1 => img_Y_r1(8),
      I2 => img_Cb_r1(8),
      I3 => img_Cr_r2(8),
      I4 => img_Cr_r2(7),
      I5 => img_Cb_r1(7),
      O => \YOUT1__1_carry__0_i_5_n_0\
    );
\YOUT1__1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \YOUT1__1_carry__0_i_2_n_0\,
      I1 => img_Cb_r1(7),
      I2 => img_Cr_r2(7),
      I3 => img_Y_r1(7),
      I4 => img_Cr_r2(6),
      I5 => img_Cb_r1(6),
      O => \YOUT1__1_carry__0_i_6_n_0\
    );
\YOUT1__1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \YOUT1__1_carry__0_i_3_n_0\,
      I1 => img_Cb_r1(6),
      I2 => img_Cr_r2(6),
      I3 => img_Y_r1(6),
      I4 => img_Cr_r2(5),
      I5 => img_Cb_r1(5),
      O => \YOUT1__1_carry__0_i_7_n_0\
    );
\YOUT1__1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D55D2AAD2AA2D55"
    )
        port map (
      I0 => img_Cb_r1(4),
      I1 => img_Y_r10_n_101,
      I2 => img_Y_r10_n_100,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cr_r2(5),
      I5 => img_Cb_r1(5),
      O => \YOUT1__1_carry__0_i_8_n_0\
    );
\YOUT1__1_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_97,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(8)
    );
\YOUT1__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \YOUT1__1_carry__0_n_0\,
      CO(3) => \YOUT1__1_carry__1_n_0\,
      CO(2) => \YOUT1__1_carry__1_n_1\,
      CO(1) => \YOUT1__1_carry__1_n_2\,
      CO(0) => \YOUT1__1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \YOUT1__1_carry__1_i_1_n_0\,
      DI(2) => \YOUT1__1_carry__1_i_2_n_0\,
      DI(1) => \YOUT1__1_carry__1_i_3_n_0\,
      DI(0) => \YOUT1__1_carry__1_i_4_n_0\,
      O(3 downto 0) => YOUT1(12 downto 9),
      S(3) => \YOUT1__1_carry__1_i_5_n_0\,
      S(2) => \YOUT1__1_carry__1_i_6_n_0\,
      S(1) => \YOUT1__1_carry__1_i_7_n_0\,
      S(0) => \YOUT1__1_carry__1_i_8_n_0\
    );
\YOUT1__1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000F999F999F999"
    )
        port map (
      I0 => img_Cb_r1(11),
      I1 => img_Cr_r2(11),
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_94,
      I4 => img_Cb_r1(10),
      I5 => img_Cr_r2(10),
      O => \YOUT1__1_carry__1_i_1_n_0\
    );
\YOUT1__1_carry__1_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => img_Cr_r2(9),
      I1 => img_Cb_r1(9),
      O => \YOUT1__1_carry__1_i_10_n_0\
    );
\YOUT1__1_carry__1_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_93,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(12)
    );
\YOUT1__1_carry__1_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_94,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(11)
    );
\YOUT1__1_carry__1_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_95,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(10)
    );
\YOUT1__1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000F999F999F999"
    )
        port map (
      I0 => img_Cb_r1(10),
      I1 => img_Cr_r2(10),
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_95,
      I4 => img_Cb_r1(9),
      I5 => img_Cr_r2(9),
      O => \YOUT1__1_carry__1_i_2_n_0\
    );
\YOUT1__1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090F990F990F9F9"
    )
        port map (
      I0 => img_Cb_r1(9),
      I1 => img_Cr_r2(9),
      I2 => img_Y_r1(9),
      I3 => img_Y_r1(8),
      I4 => img_Cr_r2(8),
      I5 => img_Cb_r1(8),
      O => \YOUT1__1_carry__1_i_3_n_0\
    );
\YOUT1__1_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B03032BD4FCFC"
    )
        port map (
      I0 => img_Y_r10_n_97,
      I1 => img_Cr_r2(8),
      I2 => img_Cb_r1(8),
      I3 => img_Y_r10_n_96,
      I4 => \ZOUT_reg[19]_0\,
      I5 => \YOUT1__1_carry__1_i_10_n_0\,
      O => \YOUT1__1_carry__1_i_4_n_0\
    );
\YOUT1__1_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996699669"
    )
        port map (
      I0 => \YOUT1__1_carry__1_i_1_n_0\,
      I1 => img_Y_r1(12),
      I2 => img_Cb_r1(12),
      I3 => img_Cr_r2(12),
      I4 => img_Cr_r2(11),
      I5 => img_Cb_r1(11),
      O => \YOUT1__1_carry__1_i_5_n_0\
    );
\YOUT1__1_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \YOUT1__1_carry__1_i_2_n_0\,
      I1 => img_Cb_r1(11),
      I2 => img_Cr_r2(11),
      I3 => img_Y_r1(11),
      I4 => img_Cr_r2(10),
      I5 => img_Cb_r1(10),
      O => \YOUT1__1_carry__1_i_6_n_0\
    );
\YOUT1__1_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \YOUT1__1_carry__1_i_3_n_0\,
      I1 => img_Cb_r1(10),
      I2 => img_Cr_r2(10),
      I3 => img_Y_r1(10),
      I4 => img_Cr_r2(9),
      I5 => img_Cb_r1(9),
      O => \YOUT1__1_carry__1_i_7_n_0\
    );
\YOUT1__1_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95AAAA95AA9595AA"
    )
        port map (
      I0 => \YOUT1__1_carry__1_i_4_n_0\,
      I1 => img_Cr_r2(7),
      I2 => img_Cb_r1(7),
      I3 => img_Y_r1(8),
      I4 => img_Cb_r1(8),
      I5 => img_Cr_r2(8),
      O => \YOUT1__1_carry__1_i_8_n_0\
    );
\YOUT1__1_carry__1_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_96,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(9)
    );
\YOUT1__1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \YOUT1__1_carry__1_n_0\,
      CO(3) => \YOUT1__1_carry__2_n_0\,
      CO(2) => \YOUT1__1_carry__2_n_1\,
      CO(1) => \YOUT1__1_carry__2_n_2\,
      CO(0) => \YOUT1__1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \YOUT1__1_carry__2_i_1_n_0\,
      DI(2) => \YOUT1__1_carry__2_i_2_n_0\,
      DI(1) => \YOUT1__1_carry__2_i_3_n_0\,
      DI(0) => \YOUT1__1_carry__2_i_4_n_0\,
      O(3 downto 0) => YOUT1(16 downto 13),
      S(3) => \YOUT1__1_carry__2_i_5_n_0\,
      S(2) => \YOUT1__1_carry__2_i_6_n_0\,
      S(1) => \YOUT1__1_carry__2_i_7_n_0\,
      S(0) => \YOUT1__1_carry__2_i_8_n_0\
    );
\YOUT1__1_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B03032BD4FCFC"
    )
        port map (
      I0 => img_Y_r10_n_90,
      I1 => img_Cr_r2(15),
      I2 => img_Cb_r1(15),
      I3 => img_Y_r10_n_89,
      I4 => \ZOUT_reg[19]_0\,
      I5 => img_Cr_r2(16),
      O => \YOUT1__1_carry__2_i_1_n_0\
    );
\YOUT1__1_carry__2_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_92,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(13)
    );
\YOUT1__1_carry__2_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_89,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(16)
    );
\YOUT1__1_carry__2_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7111"
    )
        port map (
      I0 => img_Cb_r1(14),
      I1 => img_Cr_r2(14),
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_91,
      O => \YOUT1__1_carry__2_i_12_n_0\
    );
\YOUT1__1_carry__2_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_90,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(15)
    );
\YOUT1__1_carry__2_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_90,
      I2 => img_Cb_r1(15),
      I3 => img_Cr_r2(15),
      O => \YOUT1__1_carry__2_i_14_n_0\
    );
\YOUT1__1_carry__2_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_91,
      I2 => img_Cb_r1(14),
      I3 => img_Cr_r2(14),
      O => \YOUT1__1_carry__2_i_15_n_0\
    );
\YOUT1__1_carry__2_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_92,
      I2 => img_Cb_r1(13),
      I3 => img_Cr_r2(13),
      O => \YOUT1__1_carry__2_i_16_n_0\
    );
\YOUT1__1_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000960096009696"
    )
        port map (
      I0 => img_Cr_r2(14),
      I1 => img_Cb_r1(14),
      I2 => img_Y_r1(14),
      I3 => img_Y_r1(13),
      I4 => img_Cr_r2(13),
      I5 => img_Cb_r1(13),
      O => \YOUT1__1_carry__2_i_2_n_0\
    );
\YOUT1__1_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000960096009696"
    )
        port map (
      I0 => img_Cr_r2(13),
      I1 => img_Cb_r1(13),
      I2 => img_Y_r1(13),
      I3 => img_Y_r1(12),
      I4 => img_Cr_r2(12),
      I5 => img_Cb_r1(12),
      O => \YOUT1__1_carry__2_i_3_n_0\
    );
\YOUT1__1_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000966696669666"
    )
        port map (
      I0 => img_Cr_r2(12),
      I1 => img_Cb_r1(12),
      I2 => img_Y_r10_n_93,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r1(11),
      I5 => img_Cr_r2(11),
      O => \YOUT1__1_carry__2_i_4_n_0\
    );
\YOUT1__1_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666966699666"
    )
        port map (
      I0 => img_Cr_r2(16),
      I1 => img_Y_r1(16),
      I2 => \YOUT1__1_carry__2_i_12_n_0\,
      I3 => img_Y_r1(15),
      I4 => img_Cb_r1(15),
      I5 => img_Cr_r2(15),
      O => \YOUT1__1_carry__2_i_5_n_0\
    );
\YOUT1__1_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666966696669"
    )
        port map (
      I0 => \YOUT1__1_carry__2_i_2_n_0\,
      I1 => \YOUT1__1_carry__2_i_14_n_0\,
      I2 => img_Cb_r1(14),
      I3 => img_Cr_r2(14),
      I4 => \ZOUT_reg[19]_0\,
      I5 => img_Y_r10_n_91,
      O => \YOUT1__1_carry__2_i_6_n_0\
    );
\YOUT1__1_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666966696669"
    )
        port map (
      I0 => \YOUT1__1_carry__2_i_3_n_0\,
      I1 => \YOUT1__1_carry__2_i_15_n_0\,
      I2 => img_Cb_r1(13),
      I3 => img_Cr_r2(13),
      I4 => \ZOUT_reg[19]_0\,
      I5 => img_Y_r10_n_92,
      O => \YOUT1__1_carry__2_i_7_n_0\
    );
\YOUT1__1_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666966696669"
    )
        port map (
      I0 => \YOUT1__1_carry__2_i_4_n_0\,
      I1 => \YOUT1__1_carry__2_i_16_n_0\,
      I2 => img_Cb_r1(12),
      I3 => img_Cr_r2(12),
      I4 => \ZOUT_reg[19]_0\,
      I5 => img_Y_r10_n_93,
      O => \YOUT1__1_carry__2_i_8_n_0\
    );
\YOUT1__1_carry__2_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_91,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(14)
    );
\YOUT1__1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \YOUT1__1_carry__2_n_0\,
      CO(3 downto 2) => \NLW_YOUT1__1_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \YOUT1__1_carry__3_n_2\,
      CO(0) => \YOUT1__1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => img_Y_r1(17),
      DI(0) => \YOUT1__1_carry__3_i_2_n_0\,
      O(3) => \NLW_YOUT1__1_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => YOUT1(19 downto 17),
      S(3 downto 2) => B"01",
      S(1) => \YOUT1__1_carry__3_i_3_n_0\,
      S(0) => \YOUT1__1_carry__3_i_4_n_0\
    );
\YOUT1__1_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_88,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(17)
    );
\YOUT1__1_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040C440C440D5D5"
    )
        port map (
      I0 => img_Cr_r2(16),
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_89,
      I3 => img_Y_r10_n_90,
      I4 => img_Cr_r2(15),
      I5 => img_Cb_r1(15),
      O => \YOUT1__1_carry__3_i_2_n_0\
    );
\YOUT1__1_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_88,
      O => \YOUT1__1_carry__3_i_3_n_0\
    );
\YOUT1__1_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EF571F5"
    )
        port map (
      I0 => \YOUT1__1_carry__3_i_5_n_0\,
      I1 => img_Y_r10_n_89,
      I2 => img_Cr_r2(16),
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_88,
      O => \YOUT1__1_carry__3_i_4_n_0\
    );
\YOUT1__1_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7111"
    )
        port map (
      I0 => img_Cb_r1(15),
      I1 => img_Cr_r2(15),
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_90,
      O => \YOUT1__1_carry__3_i_5_n_0\
    );
\YOUT1__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => img_Y_r10_n_102,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r1(3),
      O => \YOUT1__1_carry_i_1_n_0\
    );
\YOUT1__1_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => \YOUT1__1_carry_i_2_n_0\
    );
\YOUT1__1_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_103,
      O => \YOUT1__1_carry_i_3_n_0\
    );
\YOUT1__1_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2AA2D55"
    )
        port map (
      I0 => img_Cb_r1(3),
      I1 => img_Y_r10_n_102,
      I2 => img_Y_r10_n_101,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r1(4),
      O => \YOUT1__1_carry_i_4_n_0\
    );
\YOUT1__1_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9C6C"
    )
        port map (
      I0 => img_Y_r10_n_102,
      I1 => img_Cb_r1(3),
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_103,
      O => \YOUT1__1_carry_i_5_n_0\
    );
\YOUT1__1_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => \YOUT1__1_carry_i_6_n_0\
    );
\YOUT1__1_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_104,
      O => \YOUT1__1_carry_i_7_n_0\
    );
\YOUT_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(9),
      Q => \YOUT_reg_n_0_[0]\
    );
\YOUT_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(19),
      Q => \YOUT_reg_n_0_[19]\
    );
\YOUT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(10),
      Q => \YOUT_reg_n_0_[1]\
    );
\YOUT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(11),
      Q => \YOUT_reg_n_0_[2]\
    );
\YOUT_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(12),
      Q => \YOUT_reg_n_0_[3]\
    );
\YOUT_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(13),
      Q => \YOUT_reg_n_0_[4]\
    );
\YOUT_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(14),
      Q => \YOUT_reg_n_0_[5]\
    );
\YOUT_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(15),
      Q => \YOUT_reg_n_0_[6]\
    );
\YOUT_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(16),
      Q => \YOUT_reg_n_0_[7]\
    );
\YOUT_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(17),
      Q => \YOUT_reg_n_0_[8]\
    );
\YOUT_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => YOUT1(18),
      Q => \YOUT_reg_n_0_[9]\
    );
ZOUT1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ZOUT1_carry_n_0,
      CO(2) => ZOUT1_carry_n_1,
      CO(1) => ZOUT1_carry_n_2,
      CO(0) => ZOUT1_carry_n_3,
      CYINIT => '1',
      DI(3) => img_Cb_r2(2),
      DI(2 downto 0) => img_Y_r1(2 downto 0),
      O(3 downto 0) => NLW_ZOUT1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ZOUT1_carry_i_5_n_0,
      S(2) => ZOUT1_carry_i_6_n_0,
      S(1) => ZOUT1_carry_i_7_n_0,
      S(0) => ZOUT1_carry_i_8_n_0
    );
\ZOUT1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ZOUT1_carry_n_0,
      CO(3) => \ZOUT1_carry__0_n_0\,
      CO(2) => \ZOUT1_carry__0_n_1\,
      CO(1) => \ZOUT1_carry__0_n_2\,
      CO(0) => \ZOUT1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ZOUT1_carry__0_i_1_n_0\,
      DI(2) => \ZOUT1_carry__0_i_2_n_0\,
      DI(1) => \ZOUT1_carry__0_i_3_n_0\,
      DI(0) => \ZOUT1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ZOUT1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ZOUT1_carry__0_i_5_n_0\,
      S(2) => \ZOUT1_carry__0_i_6_n_0\,
      S(1) => \ZOUT1_carry__0_i_7_n_0\,
      S(0) => \ZOUT1_carry__0_i_8_n_0\
    );
\ZOUT1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cb_r20_n_99,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_99,
      O => \ZOUT1_carry__0_i_1_n_0\
    );
\ZOUT1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_100,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_100,
      O => \ZOUT1_carry__0_i_2_n_0\
    );
\ZOUT1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cb_r20_n_100,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_100,
      O => \ZOUT1_carry__0_i_3_n_0\
    );
\ZOUT1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cb_r20_n_102,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_102,
      O => \ZOUT1_carry__0_i_4_n_0\
    );
\ZOUT1_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_99,
      I1 => img_Cb_r20_n_99,
      I2 => img_Cb_r20_n_98,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_98,
      O => \ZOUT1_carry__0_i_5_n_0\
    );
\ZOUT1_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cb_r20_n_100,
      I1 => img_Y_r10_n_100,
      I2 => img_Cb_r20_n_99,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_99,
      O => \ZOUT1_carry__0_i_6_n_0\
    );
\ZOUT1_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cb_r20_n_100,
      I1 => img_Y_r10_n_100,
      I2 => img_Y_r10_n_101,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r20_n_101,
      O => \ZOUT1_carry__0_i_7_n_0\
    );
\ZOUT1_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_102,
      I1 => img_Cb_r20_n_102,
      I2 => img_Cb_r20_n_101,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_101,
      O => \ZOUT1_carry__0_i_8_n_0\
    );
\ZOUT1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ZOUT1_carry__0_n_0\,
      CO(3) => \ZOUT1_carry__1_n_0\,
      CO(2) => \ZOUT1_carry__1_n_1\,
      CO(1) => \ZOUT1_carry__1_n_2\,
      CO(0) => \ZOUT1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ZOUT1_carry__1_i_1_n_0\,
      DI(2) => \ZOUT1_carry__1_i_2_n_0\,
      DI(1) => \ZOUT1_carry__1_i_3_n_0\,
      DI(0) => \ZOUT1_carry__1_i_4_n_0\,
      O(3 downto 1) => ZOUT1(11 downto 9),
      O(0) => \NLW_ZOUT1_carry__1_O_UNCONNECTED\(0),
      S(3) => \ZOUT1_carry__1_i_5_n_0\,
      S(2) => \ZOUT1_carry__1_i_6_n_0\,
      S(1) => \ZOUT1_carry__1_i_7_n_0\,
      S(0) => \ZOUT1_carry__1_i_8_n_0\
    );
\ZOUT1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_95,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_95,
      O => \ZOUT1_carry__1_i_1_n_0\
    );
\ZOUT1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_96,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_96,
      O => \ZOUT1_carry__1_i_2_n_0\
    );
\ZOUT1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cb_r20_n_96,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_96,
      O => \ZOUT1_carry__1_i_3_n_0\
    );
\ZOUT1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cb_r20_n_98,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_98,
      O => \ZOUT1_carry__1_i_4_n_0\
    );
\ZOUT1_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cb_r20_n_95,
      I1 => img_Y_r10_n_95,
      I2 => img_Cb_r20_n_94,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_94,
      O => \ZOUT1_carry__1_i_5_n_0\
    );
\ZOUT1_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EFFE1FF"
    )
        port map (
      I0 => img_Cb_r20_n_96,
      I1 => img_Y_r10_n_96,
      I2 => img_Cb_r20_n_95,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_95,
      O => \ZOUT1_carry__1_i_6_n_0\
    );
\ZOUT1_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cb_r20_n_96,
      I1 => img_Y_r10_n_96,
      I2 => img_Y_r10_n_97,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r20_n_97,
      O => \ZOUT1_carry__1_i_7_n_0\
    );
\ZOUT1_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_98,
      I1 => img_Cb_r20_n_98,
      I2 => img_Cb_r20_n_97,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_97,
      O => \ZOUT1_carry__1_i_8_n_0\
    );
\ZOUT1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ZOUT1_carry__1_n_0\,
      CO(3) => \ZOUT1_carry__2_n_0\,
      CO(2) => \ZOUT1_carry__2_n_1\,
      CO(1) => \ZOUT1_carry__2_n_2\,
      CO(0) => \ZOUT1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ZOUT1_carry__2_i_1_n_0\,
      DI(2) => \ZOUT1_carry__2_i_2_n_0\,
      DI(1) => \ZOUT1_carry__2_i_3_n_0\,
      DI(0) => \ZOUT1_carry__2_i_4_n_0\,
      O(3 downto 0) => ZOUT1(15 downto 12),
      S(3) => \ZOUT1_carry__2_i_5_n_0\,
      S(2) => \ZOUT1_carry__2_i_6_n_0\,
      S(1) => \ZOUT1_carry__2_i_7_n_0\,
      S(0) => \ZOUT1_carry__2_i_8_n_0\
    );
\ZOUT1_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_91,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_91,
      O => \ZOUT1_carry__2_i_1_n_0\
    );
\ZOUT1_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cb_r20_n_91,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_91,
      O => \ZOUT1_carry__2_i_2_n_0\
    );
\ZOUT1_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_93,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_93,
      O => \ZOUT1_carry__2_i_3_n_0\
    );
\ZOUT1_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cb_r20_n_93,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_93,
      O => \ZOUT1_carry__2_i_4_n_0\
    );
\ZOUT1_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EFFE1FF"
    )
        port map (
      I0 => img_Cb_r20_n_91,
      I1 => img_Y_r10_n_91,
      I2 => img_Cb_r20_n_90,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_90,
      O => \ZOUT1_carry__2_i_5_n_0\
    );
\ZOUT1_carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cb_r20_n_91,
      I1 => img_Y_r10_n_91,
      I2 => img_Y_r10_n_92,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r20_n_92,
      O => \ZOUT1_carry__2_i_6_n_0\
    );
\ZOUT1_carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cb_r20_n_93,
      I1 => img_Y_r10_n_93,
      I2 => img_Cb_r20_n_92,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_92,
      O => \ZOUT1_carry__2_i_7_n_0\
    );
\ZOUT1_carry__2_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cb_r20_n_93,
      I1 => img_Y_r10_n_93,
      I2 => img_Y_r10_n_94,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r20_n_94,
      O => \ZOUT1_carry__2_i_8_n_0\
    );
\ZOUT1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \ZOUT1_carry__2_n_0\,
      CO(3) => \NLW_ZOUT1_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \ZOUT1_carry__3_n_1\,
      CO(1) => \ZOUT1_carry__3_n_2\,
      CO(0) => \ZOUT1_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \ZOUT1_carry__3_i_1_n_0\,
      DI(1) => \ZOUT1_carry__3_i_2_n_0\,
      DI(0) => \ZOUT1_carry__3_i_3_n_0\,
      O(3 downto 0) => ZOUT1(19 downto 16),
      S(3) => \ZOUT1_carry__3_i_4_n_0\,
      S(2) => \ZOUT1_carry__3_i_5_n_0\,
      S(1) => \ZOUT1_carry__3_i_6_n_0\,
      S(0) => \ZOUT1_carry__3_i_7_n_0\
    );
\ZOUT1_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Cb_r20_n_87,
      O => \ZOUT1_carry__3_i_1_n_0\
    );
\ZOUT1_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_89,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_89,
      O => \ZOUT1_carry__3_i_2_n_0\
    );
\ZOUT1_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_90,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_90,
      O => \ZOUT1_carry__3_i_3_n_0\
    );
\ZOUT1_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Cb_r20_n_87,
      O => \ZOUT1_carry__3_i_4_n_0\
    );
\ZOUT1_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F5F"
    )
        port map (
      I0 => img_Cb_r20_n_87,
      I1 => img_Y_r10_n_88,
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Cb_r20_n_88,
      O => \ZOUT1_carry__3_i_5_n_0\
    );
\ZOUT1_carry__3_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cb_r20_n_89,
      I1 => img_Y_r10_n_89,
      I2 => img_Cb_r20_n_88,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_88,
      O => \ZOUT1_carry__3_i_6_n_0\
    );
\ZOUT1_carry__3_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EFFE1FF"
    )
        port map (
      I0 => img_Cb_r20_n_90,
      I1 => img_Y_r10_n_90,
      I2 => img_Cb_r20_n_89,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_89,
      O => \ZOUT1_carry__3_i_7_n_0\
    );
ZOUT1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Cb_r20_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Cb_r2(2)
    );
ZOUT1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(2)
    );
ZOUT1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_104,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(1)
    );
ZOUT1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_105,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(0)
    );
ZOUT1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9060"
    )
        port map (
      I0 => img_Cb_r20_n_103,
      I1 => img_Cb_r20_n_102,
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_102,
      O => ZOUT1_carry_i_5_n_0
    );
ZOUT1_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cb_r20_n_103,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_103,
      O => ZOUT1_carry_i_6_n_0
    );
ZOUT1_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => img_Y_r10_n_104,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_104,
      O => ZOUT1_carry_i_7_n_0
    );
ZOUT1_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => img_Y_r10_n_105,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_105,
      O => ZOUT1_carry_i_8_n_0
    );
\ZOUT_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(9),
      Q => \ZOUT_reg_n_0_[0]\
    );
\ZOUT_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(19),
      Q => \ZOUT_reg_n_0_[19]\
    );
\ZOUT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(10),
      Q => \ZOUT_reg_n_0_[1]\
    );
\ZOUT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(11),
      Q => \ZOUT_reg_n_0_[2]\
    );
\ZOUT_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(12),
      Q => \ZOUT_reg_n_0_[3]\
    );
\ZOUT_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(13),
      Q => \ZOUT_reg_n_0_[4]\
    );
\ZOUT_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(14),
      Q => \ZOUT_reg_n_0_[5]\
    );
\ZOUT_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(15),
      Q => \ZOUT_reg_n_0_[6]\
    );
\ZOUT_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(16),
      Q => \ZOUT_reg_n_0_[7]\
    );
\ZOUT_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(17),
      Q => \ZOUT_reg_n_0_[8]\
    );
\ZOUT_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => ZOUT1(18),
      Q => \ZOUT_reg_n_0_[9]\
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(0),
      I2 => Q(16),
      I3 => s_yuv2rgb_en,
      O => D(0)
    );
\data_reg[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => G(2),
      I2 => Q(10),
      I3 => s_yuv2rgb_en,
      O => D(10)
    );
\data_reg[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => G(3),
      I2 => Q(11),
      I3 => s_yuv2rgb_en,
      O => D(11)
    );
\data_reg[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => G(4),
      I2 => Q(12),
      I3 => s_yuv2rgb_en,
      O => D(12)
    );
\data_reg[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => G(5),
      I2 => Q(13),
      I3 => s_yuv2rgb_en,
      O => D(13)
    );
\data_reg[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => G(6),
      I2 => Q(14),
      I3 => s_yuv2rgb_en,
      O => D(14)
    );
\data_reg[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => G(7),
      I2 => Q(15),
      I3 => s_yuv2rgb_en,
      O => D(15)
    );
\data_reg[16]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => R(0),
      I2 => Q(0),
      I3 => s_yuv2rgb_en,
      O => D(16)
    );
\data_reg[17]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => R(1),
      I2 => Q(1),
      I3 => s_yuv2rgb_en,
      O => D(17)
    );
\data_reg[18]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => R(2),
      I2 => Q(2),
      I3 => s_yuv2rgb_en,
      O => D(18)
    );
\data_reg[19]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => R(3),
      I2 => Q(3),
      I3 => s_yuv2rgb_en,
      O => D(19)
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(1),
      I2 => Q(17),
      I3 => s_yuv2rgb_en,
      O => D(1)
    );
\data_reg[20]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => R(4),
      I2 => Q(4),
      I3 => s_yuv2rgb_en,
      O => D(20)
    );
\data_reg[21]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => R(5),
      I2 => Q(5),
      I3 => s_yuv2rgb_en,
      O => D(21)
    );
\data_reg[22]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => R(6),
      I2 => Q(6),
      I3 => s_yuv2rgb_en,
      O => D(22)
    );
\data_reg[23]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => R(7),
      I2 => Q(7),
      I3 => s_yuv2rgb_en,
      O => D(23)
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(2),
      I2 => Q(18),
      I3 => s_yuv2rgb_en,
      O => D(2)
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(3),
      I2 => Q(19),
      I3 => s_yuv2rgb_en,
      O => D(3)
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(4),
      I2 => Q(20),
      I3 => s_yuv2rgb_en,
      O => D(4)
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(5),
      I2 => Q(21),
      I3 => s_yuv2rgb_en,
      O => D(5)
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(6),
      I2 => Q(22),
      I3 => s_yuv2rgb_en,
      O => D(6)
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(7),
      I2 => Q(23),
      I3 => s_yuv2rgb_en,
      O => D(7)
    );
\data_reg[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => G(0),
      I2 => Q(8),
      I3 => s_yuv2rgb_en,
      O => D(8)
    );
\data_reg[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => G(1),
      I2 => Q(9),
      I3 => s_yuv2rgb_en,
      O => D(9)
    );
\href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => sobel_href_o,
      Q => \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0\
    );
\href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0\,
      Q => \href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0\,
      R => '0'
    );
\href_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => href_r_reg_gate_n_0,
      Q => yuv2rgb_href
    );
href_r_reg_c: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => '1',
      Q => href_r_reg_c_n_0
    );
href_r_reg_c_5: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => href_r_reg_c_n_0,
      Q => href_r_reg_c_5_n_0
    );
href_r_reg_c_6: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => href_r_reg_c_5_n_0,
      Q => href_r_reg_c_6_n_0
    );
href_r_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0\,
      I1 => href_r_reg_c_6_n_0,
      O => href_r_reg_gate_n_0
    );
\href_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => s_yuv2rgb_en,
      I2 => sobel_href_o,
      O => in_href
    );
\img_Cb_r1[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_u_reg(4),
      I1 => in_u_reg(6),
      O => \img_Cb_r1[13]_i_2_n_0\
    );
\img_Cb_r1[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_u_reg(3),
      I1 => in_u_reg(5),
      O => \img_Cb_r1[13]_i_3_n_0\
    );
\img_Cb_r1[13]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => in_u_reg(4),
      I1 => in_u_reg(7),
      I2 => in_u_reg(2),
      O => \img_Cb_r1[13]_i_4_n_0\
    );
\img_Cb_r1[13]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => in_u_reg(3),
      I1 => in_u_reg(6),
      I2 => in_u_reg(1),
      O => \img_Cb_r1[13]_i_5_n_0\
    );
\img_Cb_r1[13]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => in_u_reg(6),
      I1 => in_u_reg(4),
      I2 => in_u_reg(7),
      I3 => in_u_reg(5),
      O => \img_Cb_r1[13]_i_6_n_0\
    );
\img_Cb_r1[13]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => in_u_reg(5),
      I1 => in_u_reg(3),
      I2 => in_u_reg(6),
      I3 => in_u_reg(4),
      O => \img_Cb_r1[13]_i_7_n_0\
    );
\img_Cb_r1[13]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => in_u_reg(2),
      I1 => in_u_reg(7),
      I2 => in_u_reg(4),
      I3 => in_u_reg(5),
      I4 => in_u_reg(3),
      O => \img_Cb_r1[13]_i_8_n_0\
    );
\img_Cb_r1[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => in_u_reg(1),
      I1 => in_u_reg(6),
      I2 => in_u_reg(3),
      I3 => in_u_reg(4),
      I4 => in_u_reg(7),
      I5 => in_u_reg(2),
      O => \img_Cb_r1[13]_i_9_n_0\
    );
\img_Cb_r1[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_u_reg(5),
      I1 => in_u_reg(7),
      O => \img_Cb_r1[15]_i_2_n_0\
    );
\img_Cb_r1[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_u_reg(6),
      I1 => in_u_reg(7),
      O => \img_Cb_r1[15]_i_3_n_0\
    );
\img_Cb_r1[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => in_u_reg(7),
      I1 => in_u_reg(5),
      I2 => in_u_reg(6),
      O => \img_Cb_r1[15]_i_4_n_0\
    );
\img_Cb_r1[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => in_u_reg(2),
      I1 => in_u_reg(5),
      I2 => in_u_reg(0),
      O => \img_Cb_r1[9]_i_2_n_0\
    );
\img_Cb_r1[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => in_u_reg(2),
      I1 => in_u_reg(5),
      I2 => in_u_reg(0),
      O => \img_Cb_r1[9]_i_3_n_0\
    );
\img_Cb_r1[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => in_u_reg(3),
      I1 => in_u_reg(0),
      O => \img_Cb_r1[9]_i_4_n_0\
    );
\img_Cb_r1[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => in_u_reg(0),
      I1 => in_u_reg(5),
      I2 => in_u_reg(2),
      I3 => in_u_reg(3),
      I4 => in_u_reg(6),
      I5 => in_u_reg(1),
      O => \img_Cb_r1[9]_i_5_n_0\
    );
\img_Cb_r1[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => in_u_reg(2),
      I1 => in_u_reg(5),
      I2 => in_u_reg(0),
      I3 => in_u_reg(1),
      I4 => in_u_reg(4),
      O => \img_Cb_r1[9]_i_6_n_0\
    );
\img_Cb_r1[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => in_u_reg(0),
      I1 => in_u_reg(3),
      I2 => in_u_reg(4),
      I3 => in_u_reg(1),
      O => \img_Cb_r1[9]_i_7_n_0\
    );
\img_Cb_r1[9]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_u_reg(0),
      I1 => in_u_reg(3),
      O => \img_Cb_r1[9]_i_8_n_0\
    );
\img_Cb_r1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cb_r10(10),
      Q => img_Cb_r1(10)
    );
\img_Cb_r1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cb_r10(11),
      Q => img_Cb_r1(11)
    );
\img_Cb_r1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cb_r10(12),
      Q => img_Cb_r1(12)
    );
\img_Cb_r1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cb_r10(13),
      Q => img_Cb_r1(13)
    );
\img_Cb_r1_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_Cb_r1_reg[9]_i_1_n_0\,
      CO(3) => \img_Cb_r1_reg[13]_i_1_n_0\,
      CO(2) => \img_Cb_r1_reg[13]_i_1_n_1\,
      CO(1) => \img_Cb_r1_reg[13]_i_1_n_2\,
      CO(0) => \img_Cb_r1_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \img_Cb_r1[13]_i_2_n_0\,
      DI(2) => \img_Cb_r1[13]_i_3_n_0\,
      DI(1) => \img_Cb_r1[13]_i_4_n_0\,
      DI(0) => \img_Cb_r1[13]_i_5_n_0\,
      O(3 downto 0) => img_Cb_r10(13 downto 10),
      S(3) => \img_Cb_r1[13]_i_6_n_0\,
      S(2) => \img_Cb_r1[13]_i_7_n_0\,
      S(1) => \img_Cb_r1[13]_i_8_n_0\,
      S(0) => \img_Cb_r1[13]_i_9_n_0\
    );
\img_Cb_r1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cb_r10(14),
      Q => img_Cb_r1(14)
    );
\img_Cb_r1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cb_r10(15),
      Q => img_Cb_r1(15)
    );
\img_Cb_r1_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_Cb_r1_reg[13]_i_1_n_0\,
      CO(3 downto 1) => \NLW_img_Cb_r1_reg[15]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \img_Cb_r1_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \img_Cb_r1[15]_i_2_n_0\,
      O(3 downto 2) => \NLW_img_Cb_r1_reg[15]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => img_Cb_r10(15 downto 14),
      S(3 downto 2) => B"00",
      S(1) => \img_Cb_r1[15]_i_3_n_0\,
      S(0) => \img_Cb_r1[15]_i_4_n_0\
    );
\img_Cb_r1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => in_u_reg(0),
      Q => img_Cb_r1(3)
    );
\img_Cb_r1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => in_u_reg(1),
      Q => img_Cb_r1(4)
    );
\img_Cb_r1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => in_u_reg(2),
      Q => img_Cb_r1(5)
    );
\img_Cb_r1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cb_r10(6),
      Q => img_Cb_r1(6)
    );
\img_Cb_r1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cb_r10(7),
      Q => img_Cb_r1(7)
    );
\img_Cb_r1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cb_r10(8),
      Q => img_Cb_r1(8)
    );
\img_Cb_r1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cb_r10(9),
      Q => img_Cb_r1(9)
    );
\img_Cb_r1_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \img_Cb_r1_reg[9]_i_1_n_0\,
      CO(2) => \img_Cb_r1_reg[9]_i_1_n_1\,
      CO(1) => \img_Cb_r1_reg[9]_i_1_n_2\,
      CO(0) => \img_Cb_r1_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \img_Cb_r1[9]_i_2_n_0\,
      DI(2) => \img_Cb_r1[9]_i_3_n_0\,
      DI(1) => \img_Cb_r1[9]_i_4_n_0\,
      DI(0) => '0',
      O(3 downto 0) => img_Cb_r10(9 downto 6),
      S(3) => \img_Cb_r1[9]_i_5_n_0\,
      S(2) => \img_Cb_r1[9]_i_6_n_0\,
      S(1) => \img_Cb_r1[9]_i_7_n_0\,
      S(0) => \img_Cb_r1[9]_i_8_n_0\
    );
img_Cb_r20: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => in_u_reg(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_img_Cb_r20_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000010000001001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_img_Cb_r20_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_img_Cb_r20_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_img_Cb_r20_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => pclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_img_Cb_r20_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_img_Cb_r20_OVERFLOW_UNCONNECTED,
      P(47 downto 19) => NLW_img_Cb_r20_P_UNCONNECTED(47 downto 19),
      P(18) => img_Cb_r20_n_87,
      P(17) => img_Cb_r20_n_88,
      P(16) => img_Cb_r20_n_89,
      P(15) => img_Cb_r20_n_90,
      P(14) => img_Cb_r20_n_91,
      P(13) => img_Cb_r20_n_92,
      P(12) => img_Cb_r20_n_93,
      P(11) => img_Cb_r20_n_94,
      P(10) => img_Cb_r20_n_95,
      P(9) => img_Cb_r20_n_96,
      P(8) => img_Cb_r20_n_97,
      P(7) => img_Cb_r20_n_98,
      P(6) => img_Cb_r20_n_99,
      P(5) => img_Cb_r20_n_100,
      P(4) => img_Cb_r20_n_101,
      P(3) => img_Cb_r20_n_102,
      P(2) => img_Cb_r20_n_103,
      P(1) => img_Cb_r20_n_104,
      P(0) => img_Cb_r20_n_105,
      PATTERNBDETECT => NLW_img_Cb_r20_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_img_Cb_r20_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_img_Cb_r20_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_img_Cb_r20_UNDERFLOW_UNCONNECTED
    );
img_Cr_r10: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => in_v_reg(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_img_Cr_r10_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000001100110001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_img_Cr_r10_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_img_Cr_r10_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_img_Cr_r10_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => pclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_img_Cr_r10_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_img_Cr_r10_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_img_Cr_r10_P_UNCONNECTED(47 downto 18),
      P(17) => img_Cr_r10_n_88,
      P(16) => img_Cr_r10_n_89,
      P(15) => img_Cr_r10_n_90,
      P(14) => img_Cr_r10_n_91,
      P(13) => img_Cr_r10_n_92,
      P(12) => img_Cr_r10_n_93,
      P(11) => img_Cr_r10_n_94,
      P(10) => img_Cr_r10_n_95,
      P(9) => img_Cr_r10_n_96,
      P(8) => img_Cr_r10_n_97,
      P(7) => img_Cr_r10_n_98,
      P(6) => img_Cr_r10_n_99,
      P(5) => img_Cr_r10_n_100,
      P(4) => img_Cr_r10_n_101,
      P(3) => img_Cr_r10_n_102,
      P(2) => img_Cr_r10_n_103,
      P(1) => img_Cr_r10_n_104,
      P(0) => img_Cr_r10_n_105,
      PATTERNBDETECT => NLW_img_Cr_r10_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_img_Cr_r10_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_img_Cr_r10_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_img_Cr_r10_UNDERFLOW_UNCONNECTED
    );
\img_Cr_r2[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_v_reg(6),
      I1 => \img_Cr_r2_reg[15]_i_2_n_7\,
      O => \img_Cr_r2[11]_i_2_n_0\
    );
\img_Cr_r2[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_v_reg(5),
      I1 => \img_Cr_r2_reg[15]_i_4_n_4\,
      O => \img_Cr_r2[11]_i_3_n_0\
    );
\img_Cr_r2[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_v_reg(4),
      I1 => \img_Cr_r2_reg[15]_i_4_n_5\,
      O => \img_Cr_r2[11]_i_4_n_0\
    );
\img_Cr_r2[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_v_reg(3),
      I1 => \img_Cr_r2_reg[15]_i_4_n_6\,
      O => \img_Cr_r2[11]_i_5_n_0\
    );
\img_Cr_r2[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_v_reg(0),
      I1 => in_v_reg(2),
      O => \img_Cr_r2[15]_i_10_n_0\
    );
\img_Cr_r2[15]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_v_reg(1),
      O => \img_Cr_r2[15]_i_11_n_0\
    );
\img_Cr_r2[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_v_reg(7),
      I1 => \img_Cr_r2_reg[15]_i_2_n_6\,
      O => \img_Cr_r2[15]_i_3_n_0\
    );
\img_Cr_r2[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_v_reg(5),
      I1 => in_v_reg(7),
      O => \img_Cr_r2[15]_i_5_n_0\
    );
\img_Cr_r2[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_v_reg(4),
      I1 => in_v_reg(6),
      O => \img_Cr_r2[15]_i_6_n_0\
    );
\img_Cr_r2[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_v_reg(3),
      I1 => in_v_reg(5),
      O => \img_Cr_r2[15]_i_7_n_0\
    );
\img_Cr_r2[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_v_reg(2),
      I1 => in_v_reg(4),
      O => \img_Cr_r2[15]_i_8_n_0\
    );
\img_Cr_r2[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in_v_reg(1),
      I1 => in_v_reg(3),
      O => \img_Cr_r2[15]_i_9_n_0\
    );
\img_Cr_r2[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_v_reg(7),
      O => \img_Cr_r2[16]_i_3_n_0\
    );
\img_Cr_r2[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_v_reg(6),
      O => \img_Cr_r2[16]_i_4_n_0\
    );
\img_Cr_r2[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_v_reg(2),
      I1 => \img_Cr_r2_reg[15]_i_4_n_7\,
      O => \img_Cr_r2[7]_i_2_n_0\
    );
\img_Cr_r2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(10),
      Q => img_Cr_r2(10)
    );
\img_Cr_r2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(11),
      Q => img_Cr_r2(11)
    );
\img_Cr_r2_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_Cr_r2_reg[7]_i_1_n_0\,
      CO(3) => \img_Cr_r2_reg[11]_i_1_n_0\,
      CO(2) => \img_Cr_r2_reg[11]_i_1_n_1\,
      CO(1) => \img_Cr_r2_reg[11]_i_1_n_2\,
      CO(0) => \img_Cr_r2_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in_v_reg(6 downto 3),
      O(3 downto 0) => img_Cr_r20(11 downto 8),
      S(3) => \img_Cr_r2[11]_i_2_n_0\,
      S(2) => \img_Cr_r2[11]_i_3_n_0\,
      S(1) => \img_Cr_r2[11]_i_4_n_0\,
      S(0) => \img_Cr_r2[11]_i_5_n_0\
    );
\img_Cr_r2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(12),
      Q => img_Cr_r2(12)
    );
\img_Cr_r2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(13),
      Q => img_Cr_r2(13)
    );
\img_Cr_r2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(14),
      Q => img_Cr_r2(14)
    );
\img_Cr_r2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(15),
      Q => img_Cr_r2(15)
    );
\img_Cr_r2_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_Cr_r2_reg[11]_i_1_n_0\,
      CO(3) => \img_Cr_r2_reg[15]_i_1_n_0\,
      CO(2) => \img_Cr_r2_reg[15]_i_1_n_1\,
      CO(1) => \img_Cr_r2_reg[15]_i_1_n_2\,
      CO(0) => \img_Cr_r2_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => in_v_reg(7),
      O(3 downto 0) => img_Cr_r20(15 downto 12),
      S(3) => \img_Cr_r2_reg[16]_i_2_n_7\,
      S(2) => \img_Cr_r2_reg[15]_i_2_n_4\,
      S(1) => \img_Cr_r2_reg[15]_i_2_n_5\,
      S(0) => \img_Cr_r2[15]_i_3_n_0\
    );
\img_Cr_r2_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_Cr_r2_reg[15]_i_4_n_0\,
      CO(3) => \img_Cr_r2_reg[15]_i_2_n_0\,
      CO(2) => \img_Cr_r2_reg[15]_i_2_n_1\,
      CO(1) => \img_Cr_r2_reg[15]_i_2_n_2\,
      CO(0) => \img_Cr_r2_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in_v_reg(5 downto 2),
      O(3) => \img_Cr_r2_reg[15]_i_2_n_4\,
      O(2) => \img_Cr_r2_reg[15]_i_2_n_5\,
      O(1) => \img_Cr_r2_reg[15]_i_2_n_6\,
      O(0) => \img_Cr_r2_reg[15]_i_2_n_7\,
      S(3) => \img_Cr_r2[15]_i_5_n_0\,
      S(2) => \img_Cr_r2[15]_i_6_n_0\,
      S(1) => \img_Cr_r2[15]_i_7_n_0\,
      S(0) => \img_Cr_r2[15]_i_8_n_0\
    );
\img_Cr_r2_reg[15]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \img_Cr_r2_reg[15]_i_4_n_0\,
      CO(2) => \img_Cr_r2_reg[15]_i_4_n_1\,
      CO(1) => \img_Cr_r2_reg[15]_i_4_n_2\,
      CO(0) => \img_Cr_r2_reg[15]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => in_v_reg(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => \img_Cr_r2_reg[15]_i_4_n_4\,
      O(2) => \img_Cr_r2_reg[15]_i_4_n_5\,
      O(1) => \img_Cr_r2_reg[15]_i_4_n_6\,
      O(0) => \img_Cr_r2_reg[15]_i_4_n_7\,
      S(3) => \img_Cr_r2[15]_i_9_n_0\,
      S(2) => \img_Cr_r2[15]_i_10_n_0\,
      S(1) => \img_Cr_r2[15]_i_11_n_0\,
      S(0) => in_v_reg(0)
    );
\img_Cr_r2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(16),
      Q => img_Cr_r2(16)
    );
\img_Cr_r2_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_Cr_r2_reg[15]_i_1_n_0\,
      CO(3 downto 0) => \NLW_img_Cr_r2_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_img_Cr_r2_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => img_Cr_r20(16),
      S(3 downto 1) => B"000",
      S(0) => \img_Cr_r2_reg[16]_i_2_n_6\
    );
\img_Cr_r2_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_Cr_r2_reg[15]_i_2_n_0\,
      CO(3 downto 1) => \NLW_img_Cr_r2_reg[16]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \img_Cr_r2_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => in_v_reg(6),
      O(3 downto 2) => \NLW_img_Cr_r2_reg[16]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \img_Cr_r2_reg[16]_i_2_n_6\,
      O(0) => \img_Cr_r2_reg[16]_i_2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \img_Cr_r2[16]_i_3_n_0\,
      S(0) => \img_Cr_r2[16]_i_4_n_0\
    );
\img_Cr_r2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(5),
      Q => img_Cr_r2(5)
    );
\img_Cr_r2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(6),
      Q => img_Cr_r2(6)
    );
\img_Cr_r2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(7),
      Q => img_Cr_r2(7)
    );
\img_Cr_r2_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \img_Cr_r2_reg[7]_i_1_n_0\,
      CO(2) => \img_Cr_r2_reg[7]_i_1_n_1\,
      CO(1) => \img_Cr_r2_reg[7]_i_1_n_2\,
      CO(0) => \img_Cr_r2_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => in_v_reg(2 downto 0),
      DI(0) => '0',
      O(3 downto 1) => img_Cr_r20(7 downto 5),
      O(0) => \NLW_img_Cr_r2_reg[7]_i_1_O_UNCONNECTED\(0),
      S(3) => \img_Cr_r2[7]_i_2_n_0\,
      S(2 downto 1) => in_v_reg(1 downto 0),
      S(0) => '0'
    );
\img_Cr_r2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(8),
      Q => img_Cr_r2(8)
    );
\img_Cr_r2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => img_Cr_r20(9),
      Q => img_Cr_r2(9)
    );
img_Y_r10: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => in_y_reg(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_img_Y_r10_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000001001010100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_img_Y_r10_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_img_Y_r10_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_img_Y_r10_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => pclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_img_Y_r10_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_img_Y_r10_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_img_Y_r10_P_UNCONNECTED(47 downto 18),
      P(17) => img_Y_r10_n_88,
      P(16) => img_Y_r10_n_89,
      P(15) => img_Y_r10_n_90,
      P(14) => img_Y_r10_n_91,
      P(13) => img_Y_r10_n_92,
      P(12) => img_Y_r10_n_93,
      P(11) => img_Y_r10_n_94,
      P(10) => img_Y_r10_n_95,
      P(9) => img_Y_r10_n_96,
      P(8) => img_Y_r10_n_97,
      P(7) => img_Y_r10_n_98,
      P(6) => img_Y_r10_n_99,
      P(5) => img_Y_r10_n_100,
      P(4) => img_Y_r10_n_101,
      P(3) => img_Y_r10_n_102,
      P(2) => img_Y_r10_n_103,
      P(1) => img_Y_r10_n_104,
      P(0) => img_Y_r10_n_105,
      PATTERNBDETECT => NLW_img_Y_r10_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_img_Y_r10_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_img_Y_r10_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_img_Y_r10_UNDERFLOW_UNCONNECTED
    );
\in_u_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(8),
      Q => in_u_reg(0)
    );
\in_u_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(9),
      Q => in_u_reg(1)
    );
\in_u_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(10),
      Q => in_u_reg(2)
    );
\in_u_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(11),
      Q => in_u_reg(3)
    );
\in_u_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(12),
      Q => in_u_reg(4)
    );
\in_u_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(13),
      Q => in_u_reg(5)
    );
\in_u_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(14),
      Q => in_u_reg(6)
    );
\in_u_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(15),
      Q => in_u_reg(7)
    );
\in_v_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => s_module_reset,
      I1 => rst_n,
      I2 => s_yuv2rgb_en,
      O => \^s_module_reset_reg\
    );
\in_v_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(0),
      Q => in_v_reg(0)
    );
\in_v_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(1),
      Q => in_v_reg(1)
    );
\in_v_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(2),
      Q => in_v_reg(2)
    );
\in_v_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(3),
      Q => in_v_reg(3)
    );
\in_v_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(4),
      Q => in_v_reg(4)
    );
\in_v_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(5),
      Q => in_v_reg(5)
    );
\in_v_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(6),
      Q => in_v_reg(6)
    );
\in_v_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(7),
      Q => in_v_reg(7)
    );
\in_y_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(16),
      Q => in_y_reg(0)
    );
\in_y_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(17),
      Q => in_y_reg(1)
    );
\in_y_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(18),
      Q => in_y_reg(2)
    );
\in_y_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(19),
      Q => in_y_reg(3)
    );
\in_y_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(20),
      Q => in_y_reg(4)
    );
\in_y_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(21),
      Q => in_y_reg(5)
    );
\in_y_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(22),
      Q => in_y_reg(6)
    );
\in_y_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => Q(23),
      Q => in_y_reg(7)
    );
\vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => sobel_vsync_o,
      Q => \vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0\
    );
\vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0\,
      Q => \vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0\,
      R => '0'
    );
\vsync_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => vsync_r_reg_gate_n_0,
      Q => yuv2rgb_vsync
    );
vsync_r_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0\,
      I1 => href_r_reg_c_6_n_0,
      O => vsync_r_reg_gate_n_0
    );
\vsync_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => yuv2rgb_vsync,
      I1 => s_yuv2rgb_en,
      I2 => sobel_vsync_o,
      O => in_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_yuv444to422 is
  port (
    pix_odd_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    in_href : out STD_LOGIC;
    in_vsync : out STD_LOGIC;
    osd_href_o : in STD_LOGIC;
    CLK : in STD_LOGIC;
    osd_vsync_o : in STD_LOGIC;
    pix_odd : in STD_LOGIC;
    s_module_reset : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_yuv444to422_en : in STD_LOGIC;
    osd_g_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    osd_b_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    osd_vsync : in STD_LOGIC;
    s_osd_en : in STD_LOGIC;
    crop_vsync_o : in STD_LOGIC;
    \y_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \c_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_yuv444to422;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_yuv444to422 is
  signal \href_reg_i_2__0_n_0\ : STD_LOGIC;
  signal yuv444to422_c : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal yuv444to422_href : STD_LOGIC;
  signal yuv444to422_vsync : STD_LOGIC;
  signal yuv444to422_y : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_reg[10]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \data_reg[11]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \data_reg[12]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \data_reg[13]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \data_reg[14]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \data_reg[15]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \data_reg[16]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \data_reg[17]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \data_reg[18]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \data_reg[19]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \data_reg[20]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \data_reg[21]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \data_reg[22]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \data_reg[23]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \data_reg[8]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \data_reg[9]_i_1\ : label is "soft_lutpair81";
begin
\c_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \c_reg_reg[7]_0\(0),
      Q => yuv444to422_c(0)
    );
\c_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \c_reg_reg[7]_0\(1),
      Q => yuv444to422_c(1)
    );
\c_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \c_reg_reg[7]_0\(2),
      Q => yuv444to422_c(2)
    );
\c_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \c_reg_reg[7]_0\(3),
      Q => yuv444to422_c(3)
    );
\c_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \c_reg_reg[7]_0\(4),
      Q => yuv444to422_c(4)
    );
\c_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \c_reg_reg[7]_0\(5),
      Q => yuv444to422_c(5)
    );
\c_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \c_reg_reg[7]_0\(6),
      Q => yuv444to422_c(6)
    );
\c_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \c_reg_reg[7]_0\(7),
      Q => yuv444to422_c(7)
    );
\data_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_c(2),
      I1 => osd_g_o(2),
      I2 => s_yuv444to422_en,
      O => D(2)
    );
\data_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_c(3),
      I1 => osd_g_o(3),
      I2 => s_yuv444to422_en,
      O => D(3)
    );
\data_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_c(4),
      I1 => osd_g_o(4),
      I2 => s_yuv444to422_en,
      O => D(4)
    );
\data_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_c(5),
      I1 => osd_g_o(5),
      I2 => s_yuv444to422_en,
      O => D(5)
    );
\data_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_c(6),
      I1 => osd_g_o(6),
      I2 => s_yuv444to422_en,
      O => D(6)
    );
\data_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_c(7),
      I1 => osd_g_o(7),
      I2 => s_yuv444to422_en,
      O => D(7)
    );
\data_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_y(0),
      I1 => osd_b_o(0),
      I2 => s_yuv444to422_en,
      O => D(8)
    );
\data_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_y(1),
      I1 => osd_b_o(1),
      I2 => s_yuv444to422_en,
      O => D(9)
    );
\data_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_y(2),
      I1 => osd_b_o(2),
      I2 => s_yuv444to422_en,
      O => D(10)
    );
\data_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_y(3),
      I1 => osd_b_o(3),
      I2 => s_yuv444to422_en,
      O => D(11)
    );
\data_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_y(4),
      I1 => osd_b_o(4),
      I2 => s_yuv444to422_en,
      O => D(12)
    );
\data_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_y(5),
      I1 => osd_b_o(5),
      I2 => s_yuv444to422_en,
      O => D(13)
    );
\data_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_y(6),
      I1 => osd_b_o(6),
      I2 => s_yuv444to422_en,
      O => D(14)
    );
\data_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_y(7),
      I1 => osd_b_o(7),
      I2 => s_yuv444to422_en,
      O => D(15)
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_c(0),
      I1 => osd_g_o(0),
      I2 => s_yuv444to422_en,
      O => D(0)
    );
\data_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => yuv444to422_c(1),
      I1 => osd_g_o(1),
      I2 => s_yuv444to422_en,
      O => D(1)
    );
\href_reg_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => yuv444to422_href,
      I1 => s_yuv444to422_en,
      I2 => osd_href_o,
      O => in_href
    );
\href_reg_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => s_module_reset,
      I1 => rst_n,
      I2 => s_yuv444to422_en,
      O => \href_reg_i_2__0_n_0\
    );
href_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => osd_href_o,
      Q => yuv444to422_href
    );
pix_odd_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => pix_odd,
      Q => pix_odd_reg_0
    );
\vsync_reg_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => yuv444to422_vsync,
      I1 => s_yuv444to422_en,
      I2 => osd_vsync,
      I3 => s_osd_en,
      I4 => crop_vsync_o,
      O => in_vsync
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => osd_vsync_o,
      Q => yuv444to422_vsync
    );
\y_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \y_reg_reg[7]_0\(0),
      Q => yuv444to422_y(0)
    );
\y_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \y_reg_reg[7]_0\(1),
      Q => yuv444to422_y(1)
    );
\y_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \y_reg_reg[7]_0\(2),
      Q => yuv444to422_y(2)
    );
\y_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \y_reg_reg[7]_0\(3),
      Q => yuv444to422_y(3)
    );
\y_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \y_reg_reg[7]_0\(4),
      Q => yuv444to422_y(4)
    );
\y_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \y_reg_reg[7]_0\(5),
      Q => yuv444to422_y(5)
    );
\y_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \y_reg_reg[7]_0\(6),
      Q => yuv444to422_y(6)
    );
\y_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \href_reg_i_2__0_n_0\,
      D => \y_reg_reg[7]_0\(7),
      Q => yuv444to422_y(7)
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
    pclk : in STD_LOGIC;
    out_href : in STD_LOGIC;
    \in_r_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gen_ram_inst[0].u_ram_n_10\ : STD_LOGIC;
  signal \gen_ram_inst[0].u_ram_n_8\ : STD_LOGIC;
  signal \gen_ram_inst[0].u_ram_n_9\ : STD_LOGIC;
  signal \gen_ram_inst[1].u_ram_n_16\ : STD_LOGIC;
  signal in_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pos : STD_LOGIC_VECTOR ( 8 downto 1 );
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
\gen_ram_inst[0].u_ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1\
     port map (
      ADDRBWRADDR(8) => pos_r_reg(11),
      ADDRBWRADDR(7 downto 0) => pos(8 downto 1),
      D(7 downto 0) => \^d\(7 downto 0),
      Q(7 downto 0) => in_r(7 downto 0),
      mem_reg_0 => \gen_ram_inst[1].u_ram_n_16\,
      \out\(2 downto 1) => pos_r_reg(10 downto 9),
      \out\(0) => pos_r_reg(0),
      out_href => out_href,
      pclk => pclk,
      \pos_r_reg[10]\(2) => \gen_ram_inst[0].u_ram_n_8\,
      \pos_r_reg[10]\(1) => \gen_ram_inst[0].u_ram_n_9\,
      \pos_r_reg[10]\(0) => \gen_ram_inst[0].u_ram_n_10\
    );
\gen_ram_inst[1].u_ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1_5\
     port map (
      ADDRBWRADDR(7 downto 0) => pos(8 downto 1),
      D(7 downto 0) => \^d\(7 downto 0),
      mem_reg_0(7 downto 0) => mem_reg(7 downto 0),
      mem_reg_1(2) => \gen_ram_inst[0].u_ram_n_8\,
      mem_reg_1(1) => \gen_ram_inst[0].u_ram_n_9\,
      mem_reg_1(0) => \gen_ram_inst[0].u_ram_n_10\,
      \out\(11 downto 0) => pos_r_reg(11 downto 0),
      out_href => out_href,
      pclk => pclk,
      \pos_r_reg[3]\ => \gen_ram_inst[1].u_ram_n_16\
    );
\in_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \in_r_reg[7]_0\(0),
      Q => in_r(0),
      R => '0'
    );
\in_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \in_r_reg[7]_0\(1),
      Q => in_r(1),
      R => '0'
    );
\in_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \in_r_reg[7]_0\(2),
      Q => in_r(2),
      R => '0'
    );
\in_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \in_r_reg[7]_0\(3),
      Q => in_r(3),
      R => '0'
    );
\in_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \in_r_reg[7]_0\(4),
      Q => in_r(4),
      R => '0'
    );
\in_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \in_r_reg[7]_0\(5),
      Q => in_r(5),
      R => '0'
    );
\in_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \in_r_reg[7]_0\(6),
      Q => in_r(6),
      R => '0'
    );
\in_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \in_r_reg[7]_0\(7),
      Q => in_r(7),
      R => '0'
    );
\pos_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => out_href,
      I1 => pos_r_reg(11),
      I2 => pos_r_reg(10),
      I3 => pos_r_reg(9),
      I4 => \gen_ram_inst[1].u_ram_n_16\,
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
      C => pclk,
      CE => out_href,
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
      C => pclk,
      CE => out_href,
      D => \pos_r_reg[8]_i_1_n_5\,
      Q => pos_r_reg(10),
      R => pos_r
    );
\pos_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \pos_r_reg[8]_i_1_n_4\,
      Q => pos_r_reg(11),
      R => pos_r
    );
\pos_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \pos_r_reg[0]_i_2_n_6\,
      Q => pos_r_reg(1),
      R => pos_r
    );
\pos_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \pos_r_reg[0]_i_2_n_5\,
      Q => pos_r_reg(2),
      R => pos_r
    );
\pos_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \pos_r_reg[0]_i_2_n_4\,
      Q => pos_r_reg(3),
      R => pos_r
    );
\pos_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
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
      C => pclk,
      CE => out_href,
      D => \pos_r_reg[4]_i_1_n_6\,
      Q => pos_r_reg(5),
      R => pos_r
    );
\pos_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \pos_r_reg[4]_i_1_n_5\,
      Q => pos_r_reg(6),
      R => pos_r
    );
\pos_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
      D => \pos_r_reg[4]_i_1_n_4\,
      Q => pos_r_reg(7),
      R => pos_r
    );
\pos_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => out_href,
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
      C => pclk,
      CE => out_href,
      D => \pos_r_reg[8]_i_1_n_6\,
      Q => pos_r_reg(9),
      R => pos_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_osd is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    href_t3 : out STD_LOGIC;
    osd_vsync : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    osd_href_o : out STD_LOGIC;
    pix_odd : out STD_LOGIC;
    osd_vsync_o : out STD_LOGIC;
    \data_t6_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    CLK : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dscale_href_o : in STD_LOGIC;
    \pix_y_t1_reg[10]_0\ : in STD_LOGIC;
    href_t6_reg_0 : in STD_LOGIC;
    crop_vsync_o : in STD_LOGIC;
    dscale_r_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dscale_g_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dscale_b_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s00_axi_rdata[24]\ : in STD_LOGIC;
    \s00_axi_rdata[24]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \s00_axi_rdata[25]\ : in STD_LOGIC;
    \s00_axi_rdata[26]\ : in STD_LOGIC;
    \s00_axi_rdata[27]\ : in STD_LOGIC;
    \s00_axi_rdata[28]\ : in STD_LOGIC;
    \s00_axi_rdata[29]\ : in STD_LOGIC;
    \s00_axi_rdata[30]\ : in STD_LOGIC;
    \s00_axi_rdata[31]\ : in STD_LOGIC;
    osd_b_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \osd_x1_r_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \osd_y0_r_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \osd_y1_r_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mem_reg : in STD_LOGIC_VECTOR ( 9 downto 0 );
    mem_reg_0 : in STD_LOGIC;
    mem_reg_1 : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    pix_odd_reg : in STD_LOGIC;
    s_osd_en : in STD_LOGIC;
    \color_bg_r_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \color_fg_r_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \data_t6_reg[0]_0\ : in STD_LOGIC;
    \osd_x0_r_reg[10]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \osd_pix_buf_t5_reg[0]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[0]_1\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[1]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[2]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[3]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[4]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[5]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[6]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[7]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[8]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[9]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[10]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[11]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[12]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[13]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[14]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[15]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[16]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[17]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[18]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[19]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[20]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[21]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[22]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[23]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[24]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[25]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[26]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[27]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[28]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[29]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[30]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[31]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_osd;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_osd is
  signal color_bg_r : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal color_fg_r : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal data_t1_reg_c_n_0 : STD_LOGIC;
  signal data_t2_reg_c_n_0 : STD_LOGIC;
  signal \data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal \data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\ : STD_LOGIC;
  signal data_t3_reg_c_n_0 : STD_LOGIC;
  signal \data_t4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[10]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[11]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[12]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[13]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[14]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[15]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[16]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[17]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[18]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[19]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[20]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[21]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[22]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[23]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[8]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal \data_t4_reg[9]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\ : STD_LOGIC;
  signal data_t4_reg_c_n_0 : STD_LOGIC;
  signal \data_t4_reg_gate__0_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__10_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__11_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__12_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__13_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__14_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__15_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__16_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__17_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__18_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__19_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__1_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__20_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__21_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__22_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__2_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__3_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__4_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__5_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__6_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__7_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__8_n_0\ : STD_LOGIC;
  signal \data_t4_reg_gate__9_n_0\ : STD_LOGIC;
  signal data_t4_reg_gate_n_0 : STD_LOGIC;
  signal data_t5 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \data_t6[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_t6[9]_i_1_n_0\ : STD_LOGIC;
  signal href_t1 : STD_LOGIC;
  signal href_t2 : STD_LOGIC;
  signal \^href_t3\ : STD_LOGIC;
  signal href_t4 : STD_LOGIC;
  signal href_t5 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal osd_href : STD_LOGIC;
  signal \^osd_href_o\ : STD_LOGIC;
  signal osd_on_t2 : STD_LOGIC;
  signal osd_on_t20 : STD_LOGIC;
  signal osd_on_t21 : STD_LOGIC;
  signal \osd_on_t21_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \osd_on_t21_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \osd_on_t21_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \osd_on_t21_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \osd_on_t21_carry__0_n_3\ : STD_LOGIC;
  signal osd_on_t21_carry_i_1_n_0 : STD_LOGIC;
  signal osd_on_t21_carry_i_2_n_0 : STD_LOGIC;
  signal osd_on_t21_carry_i_3_n_0 : STD_LOGIC;
  signal osd_on_t21_carry_i_4_n_0 : STD_LOGIC;
  signal osd_on_t21_carry_i_5_n_0 : STD_LOGIC;
  signal osd_on_t21_carry_i_6_n_0 : STD_LOGIC;
  signal osd_on_t21_carry_i_7_n_0 : STD_LOGIC;
  signal osd_on_t21_carry_i_8_n_0 : STD_LOGIC;
  signal osd_on_t21_carry_n_0 : STD_LOGIC;
  signal osd_on_t21_carry_n_1 : STD_LOGIC;
  signal osd_on_t21_carry_n_2 : STD_LOGIC;
  signal osd_on_t21_carry_n_3 : STD_LOGIC;
  signal osd_on_t22 : STD_LOGIC;
  signal \osd_on_t22_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \osd_on_t22_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \osd_on_t22_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \osd_on_t22_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \osd_on_t22_carry__0_n_3\ : STD_LOGIC;
  signal osd_on_t22_carry_i_1_n_0 : STD_LOGIC;
  signal osd_on_t22_carry_i_2_n_0 : STD_LOGIC;
  signal osd_on_t22_carry_i_3_n_0 : STD_LOGIC;
  signal osd_on_t22_carry_i_4_n_0 : STD_LOGIC;
  signal osd_on_t22_carry_i_5_n_0 : STD_LOGIC;
  signal osd_on_t22_carry_i_6_n_0 : STD_LOGIC;
  signal osd_on_t22_carry_i_7_n_0 : STD_LOGIC;
  signal osd_on_t22_carry_i_8_n_0 : STD_LOGIC;
  signal osd_on_t22_carry_n_0 : STD_LOGIC;
  signal osd_on_t22_carry_n_1 : STD_LOGIC;
  signal osd_on_t22_carry_n_2 : STD_LOGIC;
  signal osd_on_t22_carry_n_3 : STD_LOGIC;
  signal osd_on_t23 : STD_LOGIC;
  signal osd_on_t231_in : STD_LOGIC;
  signal \osd_on_t23_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \osd_on_t23_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \osd_on_t23_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \osd_on_t23_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \osd_on_t23_carry__0_n_3\ : STD_LOGIC;
  signal osd_on_t23_carry_i_1_n_0 : STD_LOGIC;
  signal osd_on_t23_carry_i_2_n_0 : STD_LOGIC;
  signal osd_on_t23_carry_i_3_n_0 : STD_LOGIC;
  signal osd_on_t23_carry_i_4_n_0 : STD_LOGIC;
  signal osd_on_t23_carry_i_5_n_0 : STD_LOGIC;
  signal osd_on_t23_carry_i_6_n_0 : STD_LOGIC;
  signal osd_on_t23_carry_i_7_n_0 : STD_LOGIC;
  signal osd_on_t23_carry_i_8_n_0 : STD_LOGIC;
  signal osd_on_t23_carry_n_0 : STD_LOGIC;
  signal osd_on_t23_carry_n_1 : STD_LOGIC;
  signal osd_on_t23_carry_n_2 : STD_LOGIC;
  signal osd_on_t23_carry_n_3 : STD_LOGIC;
  signal \osd_on_t23_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \osd_on_t23_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \osd_on_t23_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \osd_on_t23_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \osd_on_t23_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal osd_on_t3 : STD_LOGIC;
  signal osd_on_t4 : STD_LOGIC;
  signal osd_on_t5 : STD_LOGIC;
  signal osd_pix_buf_t5 : STD_LOGIC;
  signal \osd_pix_buf_t5[31]_i_3_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg_n_0_[31]\ : STD_LOGIC;
  signal osd_pix_idx_t3 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \osd_pix_idx_t3[0]_i_1_n_0\ : STD_LOGIC;
  signal \osd_pix_idx_t3[1]_i_1_n_0\ : STD_LOGIC;
  signal \osd_pix_idx_t3[2]_i_1_n_0\ : STD_LOGIC;
  signal \osd_pix_idx_t3[3]_i_1_n_0\ : STD_LOGIC;
  signal \osd_pix_idx_t3[4]_i_1_n_0\ : STD_LOGIC;
  signal \osd_pix_idx_t3[4]_i_2_n_0\ : STD_LOGIC;
  signal osd_pix_idx_t4 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal osd_raddr_t310_out : STD_LOGIC;
  signal \osd_raddr_t3[0]_i_1_n_0\ : STD_LOGIC;
  signal \osd_raddr_t3[5]_i_2_n_0\ : STD_LOGIC;
  signal \osd_raddr_t3[8]_i_1_n_0\ : STD_LOGIC;
  signal \osd_raddr_t3[8]_i_3_n_0\ : STD_LOGIC;
  signal \osd_raddr_t3[8]_i_4_n_0\ : STD_LOGIC;
  signal \osd_raddr_t3_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal osd_ram_n_100 : STD_LOGIC;
  signal osd_ram_n_101 : STD_LOGIC;
  signal osd_ram_n_102 : STD_LOGIC;
  signal osd_ram_n_103 : STD_LOGIC;
  signal osd_ram_n_72 : STD_LOGIC;
  signal osd_ram_n_73 : STD_LOGIC;
  signal osd_ram_n_74 : STD_LOGIC;
  signal osd_ram_n_75 : STD_LOGIC;
  signal osd_ram_n_76 : STD_LOGIC;
  signal osd_ram_n_77 : STD_LOGIC;
  signal osd_ram_n_78 : STD_LOGIC;
  signal osd_ram_n_79 : STD_LOGIC;
  signal osd_ram_n_80 : STD_LOGIC;
  signal osd_ram_n_81 : STD_LOGIC;
  signal osd_ram_n_82 : STD_LOGIC;
  signal osd_ram_n_83 : STD_LOGIC;
  signal osd_ram_n_84 : STD_LOGIC;
  signal osd_ram_n_85 : STD_LOGIC;
  signal osd_ram_n_86 : STD_LOGIC;
  signal osd_ram_n_87 : STD_LOGIC;
  signal osd_ram_n_88 : STD_LOGIC;
  signal osd_ram_n_89 : STD_LOGIC;
  signal osd_ram_n_90 : STD_LOGIC;
  signal osd_ram_n_91 : STD_LOGIC;
  signal osd_ram_n_92 : STD_LOGIC;
  signal osd_ram_n_93 : STD_LOGIC;
  signal osd_ram_n_94 : STD_LOGIC;
  signal osd_ram_n_95 : STD_LOGIC;
  signal osd_ram_n_96 : STD_LOGIC;
  signal osd_ram_n_97 : STD_LOGIC;
  signal osd_ram_n_98 : STD_LOGIC;
  signal osd_ram_n_99 : STD_LOGIC;
  signal \^osd_vsync\ : STD_LOGIC;
  signal osd_x0_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \osd_x0_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[10]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[11]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[8]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x0_r[9]_i_1_n_0\ : STD_LOGIC;
  signal osd_x1_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal osd_x1_r3 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \osd_x1_r[11]_i_10_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_11_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_12_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_17_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_18_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_19_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_20_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_21_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_22_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_23_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_24_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_25_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_26_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_27_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_28_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_3_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_4_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_5_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_6_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_7_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_8_n_0\ : STD_LOGIC;
  signal \osd_x1_r[11]_i_9_n_0\ : STD_LOGIC;
  signal \osd_x1_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \osd_x1_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \osd_x1_r[3]_i_4_n_0\ : STD_LOGIC;
  signal \osd_x1_r[3]_i_5_n_0\ : STD_LOGIC;
  signal \osd_x1_r[3]_i_6_n_0\ : STD_LOGIC;
  signal \osd_x1_r[3]_i_7_n_0\ : STD_LOGIC;
  signal \osd_x1_r[3]_i_8_n_0\ : STD_LOGIC;
  signal \osd_x1_r[3]_i_9_n_0\ : STD_LOGIC;
  signal \osd_x1_r[7]_i_2_n_0\ : STD_LOGIC;
  signal \osd_x1_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \osd_x1_r[7]_i_4_n_0\ : STD_LOGIC;
  signal \osd_x1_r[7]_i_5_n_0\ : STD_LOGIC;
  signal \osd_x1_r[7]_i_6_n_0\ : STD_LOGIC;
  signal \osd_x1_r[7]_i_7_n_0\ : STD_LOGIC;
  signal \osd_x1_r[7]_i_8_n_0\ : STD_LOGIC;
  signal \osd_x1_r[7]_i_9_n_0\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_14_n_0\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_14_n_1\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_14_n_2\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_14_n_3\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_15_n_0\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_15_n_1\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_15_n_2\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_15_n_3\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_16_n_0\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_16_n_1\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_16_n_2\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_16_n_3\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \osd_x1_r_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \osd_x1_r_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x1_r_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \osd_x1_r_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \osd_x1_r_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \osd_x1_r_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \osd_x1_r_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \osd_x1_r_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \osd_x1_r_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \osd_x1_r_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \osd_x1_r_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \osd_x1_r_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \osd_x1_r_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \osd_x1_r_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \osd_x1_r_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \osd_x1_r_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \osd_x1_r_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal osd_y0_r : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \osd_y0_r2__9\ : STD_LOGIC;
  signal \osd_y0_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y0_r[10]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y0_r[10]_i_3_n_0\ : STD_LOGIC;
  signal \osd_y0_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y0_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y0_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y0_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y0_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y0_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y0_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y0_r[8]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y0_r[9]_i_1_n_0\ : STD_LOGIC;
  signal osd_y1_r : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal osd_y1_r3 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \osd_y1_r[10]_i_11_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_12_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_13_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_14_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_16_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_17_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_18_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_19_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_20_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_21_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_22_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_2_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_3_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_4_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_5_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_6_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_8_n_0\ : STD_LOGIC;
  signal \osd_y1_r[10]_i_9_n_0\ : STD_LOGIC;
  signal \osd_y1_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \osd_y1_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \osd_y1_r[3]_i_4_n_0\ : STD_LOGIC;
  signal \osd_y1_r[3]_i_5_n_0\ : STD_LOGIC;
  signal \osd_y1_r[3]_i_6_n_0\ : STD_LOGIC;
  signal \osd_y1_r[3]_i_7_n_0\ : STD_LOGIC;
  signal \osd_y1_r[3]_i_8_n_0\ : STD_LOGIC;
  signal \osd_y1_r[3]_i_9_n_0\ : STD_LOGIC;
  signal \osd_y1_r[7]_i_2_n_0\ : STD_LOGIC;
  signal \osd_y1_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \osd_y1_r[7]_i_4_n_0\ : STD_LOGIC;
  signal \osd_y1_r[7]_i_5_n_0\ : STD_LOGIC;
  signal \osd_y1_r[7]_i_6_n_0\ : STD_LOGIC;
  signal \osd_y1_r[7]_i_7_n_0\ : STD_LOGIC;
  signal \osd_y1_r[7]_i_8_n_0\ : STD_LOGIC;
  signal \osd_y1_r[7]_i_9_n_0\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_10_n_2\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_10_n_3\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_15_n_0\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_15_n_1\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_15_n_2\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_15_n_3\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_7_n_0\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_7_n_1\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_7_n_2\ : STD_LOGIC;
  signal \osd_y1_r_reg[10]_i_7_n_3\ : STD_LOGIC;
  signal \osd_y1_r_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y1_r_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \osd_y1_r_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \osd_y1_r_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \osd_y1_r_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \osd_y1_r_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \osd_y1_r_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \osd_y1_r_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \osd_y1_r_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \osd_y1_r_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \osd_y1_r_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \osd_y1_r_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \osd_y1_r_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \osd_y1_r_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \osd_y1_r_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \osd_y1_r_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \pix_x_t1[0]_i_2_n_0\ : STD_LOGIC;
  signal \pix_x_t1[0]_i_3_n_0\ : STD_LOGIC;
  signal \pix_x_t1[0]_i_4_n_0\ : STD_LOGIC;
  signal \pix_x_t1[0]_i_5_n_0\ : STD_LOGIC;
  signal \pix_x_t1[0]_i_6_n_0\ : STD_LOGIC;
  signal \pix_x_t1[4]_i_2_n_0\ : STD_LOGIC;
  signal \pix_x_t1[4]_i_3_n_0\ : STD_LOGIC;
  signal \pix_x_t1[4]_i_4_n_0\ : STD_LOGIC;
  signal \pix_x_t1[4]_i_5_n_0\ : STD_LOGIC;
  signal \pix_x_t1[8]_i_2_n_0\ : STD_LOGIC;
  signal \pix_x_t1[8]_i_3_n_0\ : STD_LOGIC;
  signal \pix_x_t1[8]_i_4_n_0\ : STD_LOGIC;
  signal \pix_x_t1[8]_i_5_n_0\ : STD_LOGIC;
  signal pix_x_t1_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \pix_x_t1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_x_t1_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \pix_x_t1_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \pix_x_t1_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \pix_x_t1_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \pix_x_t1_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \pix_x_t1_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \pix_x_t1_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \pix_x_t1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pix_x_t1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pix_x_t1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pix_x_t1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pix_x_t1_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pix_x_t1_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pix_x_t1_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pix_x_t1_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pix_x_t1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pix_x_t1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pix_x_t1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pix_x_t1_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pix_x_t1_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pix_x_t1_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pix_x_t1_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal pix_y_t112_out : STD_LOGIC;
  signal \pix_y_t1[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[10]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[10]_i_2_n_0\ : STD_LOGIC;
  signal \pix_y_t1[10]_i_3_n_0\ : STD_LOGIC;
  signal \pix_y_t1[1]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[2]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[4]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[5]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[5]_i_2_n_0\ : STD_LOGIC;
  signal \pix_y_t1[6]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[7]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[8]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[9]_i_1_n_0\ : STD_LOGIC;
  signal \pix_y_t1[9]_i_2_n_0\ : STD_LOGIC;
  signal \pix_y_t1_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal vsync_t1 : STD_LOGIC;
  signal vsync_t2 : STD_LOGIC;
  signal vsync_t3 : STD_LOGIC;
  signal vsync_t4 : STD_LOGIC;
  signal vsync_t5 : STD_LOGIC;
  signal NLW_osd_on_t21_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_osd_on_t21_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_osd_on_t21_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_osd_on_t22_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_osd_on_t22_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_osd_on_t22_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_osd_on_t23_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_osd_on_t23_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_osd_on_t23_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_osd_on_t23_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_osd_on_t23_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_osd_on_t23_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_osd_x1_r_reg[11]_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_osd_x1_r_reg[11]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_osd_x1_r_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_osd_y1_r_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_osd_y1_r_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_osd_y1_r_reg[10]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_osd_y1_r_reg[10]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pix_x_t1_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name : string;
  attribute srl_name of \data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute srl_bus_name of \data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg ";
  attribute srl_name of \data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_t4_reg_gate : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__10\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__11\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__12\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__13\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__14\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__15\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__16\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__17\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__18\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__19\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__20\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__21\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__22\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__7\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__8\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data_t4_reg_gate__9\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \href_reg_i_1__3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \osd_pix_idx_t3[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \osd_pix_idx_t3[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \osd_pix_idx_t3[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \osd_raddr_t3[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \osd_raddr_t3[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \osd_raddr_t3[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \osd_raddr_t3[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \osd_raddr_t3[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \osd_raddr_t3[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \osd_raddr_t3[8]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \osd_x0_r[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \osd_x0_r[10]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \osd_x0_r[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \osd_x0_r[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \osd_x0_r[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \osd_x0_r[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \osd_x0_r[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \osd_x0_r[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \osd_x0_r[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \osd_x0_r[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \osd_x0_r[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \osd_x0_r[9]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \osd_y0_r[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \osd_y0_r[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \osd_y0_r[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \osd_y0_r[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \osd_y0_r[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \osd_y0_r[5]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \osd_y0_r[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \osd_y0_r[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \osd_y0_r[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \osd_y0_r[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \pix_y_t1[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pix_y_t1[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pix_y_t1[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pix_y_t1[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pix_y_t1[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pix_y_t1[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \vsync_reg_i_1__2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y_reg[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \y_reg[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \y_reg[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \y_reg[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \y_reg[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \y_reg[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \y_reg[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \y_reg[7]_i_1\ : label is "soft_lutpair29";
begin
  href_t3 <= \^href_t3\;
  osd_href_o <= \^osd_href_o\;
  osd_vsync <= \^osd_vsync\;
\color_bg_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(0),
      Q => color_bg_r(0)
    );
\color_bg_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(10),
      Q => color_bg_r(10)
    );
\color_bg_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(11),
      Q => color_bg_r(11)
    );
\color_bg_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(12),
      Q => color_bg_r(12)
    );
\color_bg_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(13),
      Q => color_bg_r(13)
    );
\color_bg_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(14),
      Q => color_bg_r(14)
    );
\color_bg_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(15),
      Q => color_bg_r(15)
    );
\color_bg_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(16),
      Q => color_bg_r(16)
    );
\color_bg_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(17),
      Q => color_bg_r(17)
    );
\color_bg_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(18),
      Q => color_bg_r(18)
    );
\color_bg_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(19),
      Q => color_bg_r(19)
    );
\color_bg_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(1),
      Q => color_bg_r(1)
    );
\color_bg_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(20),
      Q => color_bg_r(20)
    );
\color_bg_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(21),
      Q => color_bg_r(21)
    );
\color_bg_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(22),
      Q => color_bg_r(22)
    );
\color_bg_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(23),
      Q => color_bg_r(23)
    );
\color_bg_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(2),
      Q => color_bg_r(2)
    );
\color_bg_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(3),
      Q => color_bg_r(3)
    );
\color_bg_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(4),
      Q => color_bg_r(4)
    );
\color_bg_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(5),
      Q => color_bg_r(5)
    );
\color_bg_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(6),
      Q => color_bg_r(6)
    );
\color_bg_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(7),
      Q => color_bg_r(7)
    );
\color_bg_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(8),
      Q => color_bg_r(8)
    );
\color_bg_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_bg_r_reg[23]_0\(9),
      Q => color_bg_r(9)
    );
\color_fg_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(0),
      Q => color_fg_r(0)
    );
\color_fg_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(10),
      Q => color_fg_r(10)
    );
\color_fg_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(11),
      Q => color_fg_r(11)
    );
\color_fg_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(12),
      Q => color_fg_r(12)
    );
\color_fg_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(13),
      Q => color_fg_r(13)
    );
\color_fg_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(14),
      Q => color_fg_r(14)
    );
\color_fg_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(15),
      Q => color_fg_r(15)
    );
\color_fg_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(16),
      Q => color_fg_r(16)
    );
\color_fg_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(17),
      Q => color_fg_r(17)
    );
\color_fg_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(18),
      Q => color_fg_r(18)
    );
\color_fg_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(19),
      Q => color_fg_r(19)
    );
\color_fg_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(1),
      Q => color_fg_r(1)
    );
\color_fg_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(20),
      Q => color_fg_r(20)
    );
\color_fg_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(21),
      Q => color_fg_r(21)
    );
\color_fg_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(22),
      Q => color_fg_r(22)
    );
\color_fg_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(23),
      Q => color_fg_r(23)
    );
\color_fg_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(2),
      Q => color_fg_r(2)
    );
\color_fg_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(3),
      Q => color_fg_r(3)
    );
\color_fg_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(4),
      Q => color_fg_r(4)
    );
\color_fg_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(5),
      Q => color_fg_r(5)
    );
\color_fg_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(6),
      Q => color_fg_r(6)
    );
\color_fg_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(7),
      Q => color_fg_r(7)
    );
\color_fg_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(8),
      Q => color_fg_r(8)
    );
\color_fg_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => href_t6_reg_0,
      D => \color_fg_r_reg[23]_0\(9),
      Q => color_fg_r(9)
    );
data_t1_reg_c: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => '1',
      Q => data_t1_reg_c_n_0
    );
data_t2_reg_c: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => data_t1_reg_c_n_0,
      Q => data_t2_reg_c_n_0
    );
\data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_b_o(0),
      Q => \data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_g_o(2),
      Q => \data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_g_o(3),
      Q => \data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_g_o(4),
      Q => \data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_g_o(5),
      Q => \data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_g_o(6),
      Q => \data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_g_o(7),
      Q => \data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_r_o(0),
      Q => \data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_r_o(1),
      Q => \data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_r_o(2),
      Q => \data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_r_o(3),
      Q => \data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_b_o(1),
      Q => \data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_r_o(4),
      Q => \data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_r_o(5),
      Q => \data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_r_o(6),
      Q => \data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_r_o(7),
      Q => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_b_o(2),
      Q => \data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_b_o(3),
      Q => \data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_b_o(4),
      Q => \data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_b_o(5),
      Q => \data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_b_o(6),
      Q => \data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_b_o(7),
      Q => \data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_g_o(0),
      Q => \data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
\data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => dscale_g_o(1),
      Q => \data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\
    );
data_t3_reg_c: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => data_t2_reg_c_n_0,
      Q => data_t3_reg_c_n_0
    );
\data_t4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[0]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[10]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[10]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[10]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[11]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[11]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[11]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[12]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[12]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[12]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[13]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[13]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[13]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[14]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[14]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[14]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[15]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[15]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[15]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[16]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[16]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[16]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[17]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[17]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[17]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[18]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[18]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[18]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[19]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[19]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[19]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[1]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[20]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[20]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[20]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[21]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[21]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[21]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[22]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[22]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[22]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[23]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[23]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[23]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[2]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[3]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[4]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[5]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[6]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[7]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[8]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[8]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[8]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
\data_t4_reg[9]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_t3_reg[9]_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t3_reg_c_n_0\,
      Q => \data_t4_reg[9]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      R => '0'
    );
data_t4_reg_c: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => data_t3_reg_c_n_0,
      Q => data_t4_reg_c_n_0
    );
data_t4_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[23]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => data_t4_reg_gate_n_0
    );
\data_t4_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[22]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__0_n_0\
    );
\data_t4_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[21]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__1_n_0\
    );
\data_t4_reg_gate__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[12]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__10_n_0\
    );
\data_t4_reg_gate__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[11]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__11_n_0\
    );
\data_t4_reg_gate__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[10]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__12_n_0\
    );
\data_t4_reg_gate__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[9]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__13_n_0\
    );
\data_t4_reg_gate__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[8]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__14_n_0\
    );
\data_t4_reg_gate__15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__15_n_0\
    );
\data_t4_reg_gate__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__16_n_0\
    );
\data_t4_reg_gate__17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__17_n_0\
    );
\data_t4_reg_gate__18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__18_n_0\
    );
\data_t4_reg_gate__19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__19_n_0\
    );
\data_t4_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[20]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__2_n_0\
    );
\data_t4_reg_gate__20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__20_n_0\
    );
\data_t4_reg_gate__21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__21_n_0\
    );
\data_t4_reg_gate__22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__22_n_0\
    );
\data_t4_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[19]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__3_n_0\
    );
\data_t4_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[18]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__4_n_0\
    );
\data_t4_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[17]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__5_n_0\
    );
\data_t4_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[16]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__6_n_0\
    );
\data_t4_reg_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[15]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__7_n_0\
    );
\data_t4_reg_gate__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[14]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__8_n_0\
    );
\data_t4_reg_gate__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_t4_reg[13]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_osd_i0_data_t4_reg_c_n_0\,
      I1 => data_t4_reg_c_n_0,
      O => \data_t4_reg_gate__9_n_0\
    );
\data_t5_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__22_n_0\,
      Q => data_t5(0)
    );
\data_t5_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__12_n_0\,
      Q => data_t5(10)
    );
\data_t5_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__11_n_0\,
      Q => data_t5(11)
    );
\data_t5_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__10_n_0\,
      Q => data_t5(12)
    );
\data_t5_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__9_n_0\,
      Q => data_t5(13)
    );
\data_t5_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__8_n_0\,
      Q => data_t5(14)
    );
\data_t5_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__7_n_0\,
      Q => data_t5(15)
    );
\data_t5_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__6_n_0\,
      Q => data_t5(16)
    );
\data_t5_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__5_n_0\,
      Q => data_t5(17)
    );
\data_t5_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__4_n_0\,
      Q => data_t5(18)
    );
\data_t5_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__3_n_0\,
      Q => data_t5(19)
    );
\data_t5_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__21_n_0\,
      Q => data_t5(1)
    );
\data_t5_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__2_n_0\,
      Q => data_t5(20)
    );
\data_t5_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__1_n_0\,
      Q => data_t5(21)
    );
\data_t5_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__0_n_0\,
      Q => data_t5(22)
    );
\data_t5_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => data_t4_reg_gate_n_0,
      Q => data_t5(23)
    );
\data_t5_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__20_n_0\,
      Q => data_t5(2)
    );
\data_t5_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__19_n_0\,
      Q => data_t5(3)
    );
\data_t5_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__18_n_0\,
      Q => data_t5(4)
    );
\data_t5_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__17_n_0\,
      Q => data_t5(5)
    );
\data_t5_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__16_n_0\,
      Q => data_t5(6)
    );
\data_t5_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__15_n_0\,
      Q => data_t5(7)
    );
\data_t5_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__14_n_0\,
      Q => data_t5(8)
    );
\data_t5_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \data_t4_reg_gate__13_n_0\,
      Q => data_t5(9)
    );
\data_t6[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(0),
      I2 => osd_on_t5,
      I3 => color_bg_r(0),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(0),
      O => \data_t6[0]_i_1_n_0\
    );
\data_t6[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(10),
      I2 => osd_on_t5,
      I3 => color_bg_r(10),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(10),
      O => \data_t6[10]_i_1_n_0\
    );
\data_t6[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(11),
      I2 => osd_on_t5,
      I3 => color_bg_r(11),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(11),
      O => \data_t6[11]_i_1_n_0\
    );
\data_t6[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(12),
      I2 => osd_on_t5,
      I3 => color_bg_r(12),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(12),
      O => \data_t6[12]_i_1_n_0\
    );
\data_t6[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(13),
      I2 => osd_on_t5,
      I3 => color_bg_r(13),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(13),
      O => \data_t6[13]_i_1_n_0\
    );
\data_t6[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(14),
      I2 => osd_on_t5,
      I3 => color_bg_r(14),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(14),
      O => \data_t6[14]_i_1_n_0\
    );
\data_t6[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(15),
      I2 => osd_on_t5,
      I3 => color_bg_r(15),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(15),
      O => \data_t6[15]_i_1_n_0\
    );
\data_t6[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(16),
      I2 => osd_on_t5,
      I3 => color_bg_r(16),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(16),
      O => \data_t6[16]_i_1_n_0\
    );
\data_t6[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(17),
      I2 => osd_on_t5,
      I3 => color_bg_r(17),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(17),
      O => \data_t6[17]_i_1_n_0\
    );
\data_t6[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(18),
      I2 => osd_on_t5,
      I3 => color_bg_r(18),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(18),
      O => \data_t6[18]_i_1_n_0\
    );
\data_t6[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(19),
      I2 => osd_on_t5,
      I3 => color_bg_r(19),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(19),
      O => \data_t6[19]_i_1_n_0\
    );
\data_t6[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(1),
      I2 => osd_on_t5,
      I3 => color_bg_r(1),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(1),
      O => \data_t6[1]_i_1_n_0\
    );
\data_t6[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(20),
      I2 => osd_on_t5,
      I3 => color_bg_r(20),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(20),
      O => \data_t6[20]_i_1_n_0\
    );
\data_t6[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(21),
      I2 => osd_on_t5,
      I3 => color_bg_r(21),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(21),
      O => \data_t6[21]_i_1_n_0\
    );
\data_t6[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(22),
      I2 => osd_on_t5,
      I3 => color_bg_r(22),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(22),
      O => \data_t6[22]_i_1_n_0\
    );
\data_t6[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(23),
      I2 => osd_on_t5,
      I3 => color_bg_r(23),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(23),
      O => \data_t6[23]_i_1_n_0\
    );
\data_t6[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(2),
      I2 => osd_on_t5,
      I3 => color_bg_r(2),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(2),
      O => \data_t6[2]_i_1_n_0\
    );
\data_t6[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(3),
      I2 => osd_on_t5,
      I3 => color_bg_r(3),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(3),
      O => \data_t6[3]_i_1_n_0\
    );
\data_t6[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(4),
      I2 => osd_on_t5,
      I3 => color_bg_r(4),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(4),
      O => \data_t6[4]_i_1_n_0\
    );
\data_t6[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(5),
      I2 => osd_on_t5,
      I3 => color_bg_r(5),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(5),
      O => \data_t6[5]_i_1_n_0\
    );
\data_t6[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(6),
      I2 => osd_on_t5,
      I3 => color_bg_r(6),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(6),
      O => \data_t6[6]_i_1_n_0\
    );
\data_t6[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(7),
      I2 => osd_on_t5,
      I3 => color_bg_r(7),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(7),
      O => \data_t6[7]_i_1_n_0\
    );
\data_t6[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(8),
      I2 => osd_on_t5,
      I3 => color_bg_r(8),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(8),
      O => \data_t6[8]_i_1_n_0\
    );
\data_t6[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => href_t5,
      I1 => data_t5(9),
      I2 => osd_on_t5,
      I3 => color_bg_r(9),
      I4 => \osd_pix_buf_t5_reg_n_0_[31]\,
      I5 => color_fg_r(9),
      O => \data_t6[9]_i_1_n_0\
    );
\data_t6_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[0]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(0)
    );
\data_t6_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[10]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(10)
    );
\data_t6_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[11]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(11)
    );
\data_t6_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[12]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(12)
    );
\data_t6_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[13]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(13)
    );
\data_t6_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[14]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(14)
    );
\data_t6_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[15]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(15)
    );
\data_t6_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[16]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(16)
    );
\data_t6_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[17]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(17)
    );
\data_t6_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[18]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(18)
    );
\data_t6_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[19]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(19)
    );
\data_t6_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[1]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(1)
    );
\data_t6_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[20]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(20)
    );
\data_t6_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[21]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(21)
    );
\data_t6_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[22]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(22)
    );
\data_t6_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[23]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(23)
    );
\data_t6_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[2]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(2)
    );
\data_t6_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[3]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(3)
    );
\data_t6_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[4]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(4)
    );
\data_t6_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[5]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(5)
    );
\data_t6_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[6]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(6)
    );
\data_t6_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[7]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(7)
    );
\data_t6_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[8]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(8)
    );
\data_t6_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \data_t6_reg[0]_0\,
      D => \data_t6[9]_i_1_n_0\,
      Q => \data_t6_reg[23]_0\(9)
    );
\href_reg_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => osd_href,
      I1 => s_osd_en,
      I2 => dscale_href_o,
      O => \^osd_href_o\
    );
href_t1_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \pix_y_t1_reg[10]_0\,
      D => dscale_href_o,
      Q => href_t1
    );
href_t2_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \pix_y_t1_reg[10]_0\,
      D => href_t1,
      Q => href_t2
    );
href_t3_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => href_t2,
      Q => \^href_t3\
    );
href_t4_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => \^href_t3\,
      Q => href_t4
    );
href_t5_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => href_t4,
      Q => href_t5
    );
href_t6_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => href_t5,
      Q => osd_href
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_x_t1_reg(10),
      I1 => osd_x0_r(10),
      I2 => osd_x0_r(11),
      I3 => pix_x_t1_reg(11),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_x_t1_reg(8),
      I1 => osd_x0_r(8),
      I2 => osd_x0_r(9),
      I3 => pix_x_t1_reg(9),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_x_t1_reg(10),
      I1 => osd_x0_r(10),
      I2 => pix_x_t1_reg(11),
      I3 => osd_x0_r(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_x_t1_reg(8),
      I1 => osd_x0_r(8),
      I2 => pix_x_t1_reg(9),
      I3 => osd_x0_r(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_x_t1_reg(6),
      I1 => osd_x0_r(6),
      I2 => osd_x0_r(7),
      I3 => pix_x_t1_reg(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_x_t1_reg(4),
      I1 => osd_x0_r(4),
      I2 => osd_x0_r(5),
      I3 => pix_x_t1_reg(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_x_t1_reg(2),
      I1 => osd_x0_r(2),
      I2 => osd_x0_r(3),
      I3 => pix_x_t1_reg(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pix_x_t1_reg(0),
      I1 => osd_x0_r(0),
      I2 => osd_x0_r(1),
      I3 => pix_x_t1_reg(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_x_t1_reg(6),
      I1 => osd_x0_r(6),
      I2 => pix_x_t1_reg(7),
      I3 => osd_x0_r(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_x_t1_reg(4),
      I1 => osd_x0_r(4),
      I2 => pix_x_t1_reg(5),
      I3 => osd_x0_r(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_x_t1_reg(2),
      I1 => osd_x0_r(2),
      I2 => pix_x_t1_reg(3),
      I3 => osd_x0_r(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pix_x_t1_reg(0),
      I1 => osd_x0_r(0),
      I2 => pix_x_t1_reg(1),
      I3 => osd_x0_r(1),
      O => \i__carry_i_8_n_0\
    );
osd_on_t21_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => osd_on_t21_carry_n_0,
      CO(2) => osd_on_t21_carry_n_1,
      CO(1) => osd_on_t21_carry_n_2,
      CO(0) => osd_on_t21_carry_n_3,
      CYINIT => '0',
      DI(3) => osd_on_t21_carry_i_1_n_0,
      DI(2) => osd_on_t21_carry_i_2_n_0,
      DI(1) => osd_on_t21_carry_i_3_n_0,
      DI(0) => osd_on_t21_carry_i_4_n_0,
      O(3 downto 0) => NLW_osd_on_t21_carry_O_UNCONNECTED(3 downto 0),
      S(3) => osd_on_t21_carry_i_5_n_0,
      S(2) => osd_on_t21_carry_i_6_n_0,
      S(1) => osd_on_t21_carry_i_7_n_0,
      S(0) => osd_on_t21_carry_i_8_n_0
    );
\osd_on_t21_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => osd_on_t21_carry_n_0,
      CO(3 downto 2) => \NLW_osd_on_t21_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => osd_on_t21,
      CO(0) => \osd_on_t21_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \osd_on_t21_carry__0_i_1_n_0\,
      DI(0) => \osd_on_t21_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_osd_on_t21_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \osd_on_t21_carry__0_i_3_n_0\,
      S(0) => \osd_on_t21_carry__0_i_4_n_0\
    );
\osd_on_t21_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => osd_y1_r(10),
      I1 => \pix_y_t1_reg__0\(10),
      O => \osd_on_t21_carry__0_i_1_n_0\
    );
\osd_on_t21_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_y1_r(8),
      I1 => \pix_y_t1_reg__0\(8),
      I2 => \pix_y_t1_reg__0\(9),
      I3 => osd_y1_r(9),
      O => \osd_on_t21_carry__0_i_2_n_0\
    );
\osd_on_t21_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(10),
      I1 => osd_y1_r(10),
      O => \osd_on_t21_carry__0_i_3_n_0\
    );
\osd_on_t21_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_y1_r(8),
      I1 => \pix_y_t1_reg__0\(8),
      I2 => osd_y1_r(9),
      I3 => \pix_y_t1_reg__0\(9),
      O => \osd_on_t21_carry__0_i_4_n_0\
    );
osd_on_t21_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_y1_r(6),
      I1 => \pix_y_t1_reg__0\(6),
      I2 => \pix_y_t1_reg__0\(7),
      I3 => osd_y1_r(7),
      O => osd_on_t21_carry_i_1_n_0
    );
osd_on_t21_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_y1_r(4),
      I1 => \pix_y_t1_reg__0\(4),
      I2 => \pix_y_t1_reg__0\(5),
      I3 => osd_y1_r(5),
      O => osd_on_t21_carry_i_2_n_0
    );
osd_on_t21_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_y1_r(2),
      I1 => \pix_y_t1_reg__0\(2),
      I2 => \pix_y_t1_reg__0\(3),
      I3 => osd_y1_r(3),
      O => osd_on_t21_carry_i_3_n_0
    );
osd_on_t21_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_y1_r(0),
      I1 => \pix_y_t1_reg__0\(0),
      I2 => \pix_y_t1_reg__0\(1),
      I3 => osd_y1_r(1),
      O => osd_on_t21_carry_i_4_n_0
    );
osd_on_t21_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_y1_r(6),
      I1 => \pix_y_t1_reg__0\(6),
      I2 => osd_y1_r(7),
      I3 => \pix_y_t1_reg__0\(7),
      O => osd_on_t21_carry_i_5_n_0
    );
osd_on_t21_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_y1_r(4),
      I1 => \pix_y_t1_reg__0\(4),
      I2 => osd_y1_r(5),
      I3 => \pix_y_t1_reg__0\(5),
      O => osd_on_t21_carry_i_6_n_0
    );
osd_on_t21_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_y1_r(2),
      I1 => \pix_y_t1_reg__0\(2),
      I2 => osd_y1_r(3),
      I3 => \pix_y_t1_reg__0\(3),
      O => osd_on_t21_carry_i_7_n_0
    );
osd_on_t21_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_y1_r(0),
      I1 => \pix_y_t1_reg__0\(0),
      I2 => osd_y1_r(1),
      I3 => \pix_y_t1_reg__0\(1),
      O => osd_on_t21_carry_i_8_n_0
    );
osd_on_t22_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => osd_on_t22_carry_n_0,
      CO(2) => osd_on_t22_carry_n_1,
      CO(1) => osd_on_t22_carry_n_2,
      CO(0) => osd_on_t22_carry_n_3,
      CYINIT => '1',
      DI(3) => osd_on_t22_carry_i_1_n_0,
      DI(2) => osd_on_t22_carry_i_2_n_0,
      DI(1) => osd_on_t22_carry_i_3_n_0,
      DI(0) => osd_on_t22_carry_i_4_n_0,
      O(3 downto 0) => NLW_osd_on_t22_carry_O_UNCONNECTED(3 downto 0),
      S(3) => osd_on_t22_carry_i_5_n_0,
      S(2) => osd_on_t22_carry_i_6_n_0,
      S(1) => osd_on_t22_carry_i_7_n_0,
      S(0) => osd_on_t22_carry_i_8_n_0
    );
\osd_on_t22_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => osd_on_t22_carry_n_0,
      CO(3 downto 2) => \NLW_osd_on_t22_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => osd_on_t22,
      CO(0) => \osd_on_t22_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \osd_on_t22_carry__0_i_1_n_0\,
      DI(0) => \osd_on_t22_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_osd_on_t22_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \osd_on_t22_carry__0_i_3_n_0\,
      S(0) => \osd_on_t22_carry__0_i_4_n_0\
    );
\osd_on_t22_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(10),
      I1 => osd_y0_r(10),
      O => \osd_on_t22_carry__0_i_1_n_0\
    );
\osd_on_t22_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(8),
      I1 => osd_y0_r(8),
      I2 => osd_y0_r(9),
      I3 => \pix_y_t1_reg__0\(9),
      O => \osd_on_t22_carry__0_i_2_n_0\
    );
\osd_on_t22_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => osd_y0_r(10),
      I1 => \pix_y_t1_reg__0\(10),
      O => \osd_on_t22_carry__0_i_3_n_0\
    );
\osd_on_t22_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(8),
      I1 => osd_y0_r(8),
      I2 => \pix_y_t1_reg__0\(9),
      I3 => osd_y0_r(9),
      O => \osd_on_t22_carry__0_i_4_n_0\
    );
osd_on_t22_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(6),
      I1 => osd_y0_r(6),
      I2 => osd_y0_r(7),
      I3 => \pix_y_t1_reg__0\(7),
      O => osd_on_t22_carry_i_1_n_0
    );
osd_on_t22_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(4),
      I1 => osd_y0_r(4),
      I2 => osd_y0_r(5),
      I3 => \pix_y_t1_reg__0\(5),
      O => osd_on_t22_carry_i_2_n_0
    );
osd_on_t22_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(2),
      I1 => osd_y0_r(2),
      I2 => osd_y0_r(3),
      I3 => \pix_y_t1_reg__0\(3),
      O => osd_on_t22_carry_i_3_n_0
    );
osd_on_t22_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(0),
      I1 => osd_y0_r(0),
      I2 => osd_y0_r(1),
      I3 => \pix_y_t1_reg__0\(1),
      O => osd_on_t22_carry_i_4_n_0
    );
osd_on_t22_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(6),
      I1 => osd_y0_r(6),
      I2 => \pix_y_t1_reg__0\(7),
      I3 => osd_y0_r(7),
      O => osd_on_t22_carry_i_5_n_0
    );
osd_on_t22_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(4),
      I1 => osd_y0_r(4),
      I2 => \pix_y_t1_reg__0\(5),
      I3 => osd_y0_r(5),
      O => osd_on_t22_carry_i_6_n_0
    );
osd_on_t22_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(2),
      I1 => osd_y0_r(2),
      I2 => \pix_y_t1_reg__0\(3),
      I3 => osd_y0_r(3),
      O => osd_on_t22_carry_i_7_n_0
    );
osd_on_t22_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(0),
      I1 => osd_y0_r(0),
      I2 => \pix_y_t1_reg__0\(1),
      I3 => osd_y0_r(1),
      O => osd_on_t22_carry_i_8_n_0
    );
osd_on_t23_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => osd_on_t23_carry_n_0,
      CO(2) => osd_on_t23_carry_n_1,
      CO(1) => osd_on_t23_carry_n_2,
      CO(0) => osd_on_t23_carry_n_3,
      CYINIT => '0',
      DI(3) => osd_on_t23_carry_i_1_n_0,
      DI(2) => osd_on_t23_carry_i_2_n_0,
      DI(1) => osd_on_t23_carry_i_3_n_0,
      DI(0) => osd_on_t23_carry_i_4_n_0,
      O(3 downto 0) => NLW_osd_on_t23_carry_O_UNCONNECTED(3 downto 0),
      S(3) => osd_on_t23_carry_i_5_n_0,
      S(2) => osd_on_t23_carry_i_6_n_0,
      S(1) => osd_on_t23_carry_i_7_n_0,
      S(0) => osd_on_t23_carry_i_8_n_0
    );
\osd_on_t23_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => osd_on_t23_carry_n_0,
      CO(3 downto 2) => \NLW_osd_on_t23_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => osd_on_t23,
      CO(0) => \osd_on_t23_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \osd_on_t23_carry__0_i_1_n_0\,
      DI(0) => \osd_on_t23_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_osd_on_t23_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \osd_on_t23_carry__0_i_3_n_0\,
      S(0) => \osd_on_t23_carry__0_i_4_n_0\
    );
\osd_on_t23_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_x1_r(10),
      I1 => pix_x_t1_reg(10),
      I2 => pix_x_t1_reg(11),
      I3 => osd_x1_r(11),
      O => \osd_on_t23_carry__0_i_1_n_0\
    );
\osd_on_t23_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_x1_r(8),
      I1 => pix_x_t1_reg(8),
      I2 => pix_x_t1_reg(9),
      I3 => osd_x1_r(9),
      O => \osd_on_t23_carry__0_i_2_n_0\
    );
\osd_on_t23_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_x1_r(10),
      I1 => pix_x_t1_reg(10),
      I2 => osd_x1_r(11),
      I3 => pix_x_t1_reg(11),
      O => \osd_on_t23_carry__0_i_3_n_0\
    );
\osd_on_t23_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_x1_r(8),
      I1 => pix_x_t1_reg(8),
      I2 => osd_x1_r(9),
      I3 => pix_x_t1_reg(9),
      O => \osd_on_t23_carry__0_i_4_n_0\
    );
osd_on_t23_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_x1_r(6),
      I1 => pix_x_t1_reg(6),
      I2 => pix_x_t1_reg(7),
      I3 => osd_x1_r(7),
      O => osd_on_t23_carry_i_1_n_0
    );
osd_on_t23_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_x1_r(4),
      I1 => pix_x_t1_reg(4),
      I2 => pix_x_t1_reg(5),
      I3 => osd_x1_r(5),
      O => osd_on_t23_carry_i_2_n_0
    );
osd_on_t23_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_x1_r(2),
      I1 => pix_x_t1_reg(2),
      I2 => pix_x_t1_reg(3),
      I3 => osd_x1_r(3),
      O => osd_on_t23_carry_i_3_n_0
    );
osd_on_t23_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => osd_x1_r(0),
      I1 => pix_x_t1_reg(0),
      I2 => pix_x_t1_reg(1),
      I3 => osd_x1_r(1),
      O => osd_on_t23_carry_i_4_n_0
    );
osd_on_t23_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_x1_r(6),
      I1 => pix_x_t1_reg(6),
      I2 => osd_x1_r(7),
      I3 => pix_x_t1_reg(7),
      O => osd_on_t23_carry_i_5_n_0
    );
osd_on_t23_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_x1_r(4),
      I1 => pix_x_t1_reg(4),
      I2 => osd_x1_r(5),
      I3 => pix_x_t1_reg(5),
      O => osd_on_t23_carry_i_6_n_0
    );
osd_on_t23_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_x1_r(2),
      I1 => pix_x_t1_reg(2),
      I2 => osd_x1_r(3),
      I3 => pix_x_t1_reg(3),
      O => osd_on_t23_carry_i_7_n_0
    );
osd_on_t23_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => osd_x1_r(0),
      I1 => pix_x_t1_reg(0),
      I2 => osd_x1_r(1),
      I3 => pix_x_t1_reg(1),
      O => osd_on_t23_carry_i_8_n_0
    );
\osd_on_t23_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \osd_on_t23_inferred__0/i__carry_n_0\,
      CO(2) => \osd_on_t23_inferred__0/i__carry_n_1\,
      CO(1) => \osd_on_t23_inferred__0/i__carry_n_2\,
      CO(0) => \osd_on_t23_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_osd_on_t23_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\osd_on_t23_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \osd_on_t23_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_osd_on_t23_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => osd_on_t231_in,
      CO(0) => \osd_on_t23_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1_n_0\,
      DI(0) => \i__carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_osd_on_t23_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
osd_on_t2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => osd_on_t21,
      I1 => osd_on_t231_in,
      I2 => osd_on_t23,
      I3 => osd_on_t22,
      O => osd_on_t20
    );
osd_on_t2_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => osd_on_t20,
      Q => osd_on_t2
    );
osd_on_t3_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => osd_on_t2,
      Q => osd_on_t3
    );
osd_on_t4_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => osd_on_t3,
      Q => osd_on_t4
    );
osd_on_t5_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => osd_on_t4,
      Q => osd_on_t5
    );
\osd_pix_buf_t5[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => href_t4,
      I1 => osd_on_t4,
      I2 => \osd_pix_buf_t5[31]_i_3_n_0\,
      O => osd_pix_buf_t5
    );
\osd_pix_buf_t5[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => osd_pix_idx_t4(0),
      I1 => osd_pix_idx_t4(3),
      I2 => osd_pix_idx_t4(4),
      I3 => osd_pix_idx_t4(2),
      I4 => osd_pix_idx_t4(1),
      O => \osd_pix_buf_t5[31]_i_3_n_0\
    );
\osd_pix_buf_t5_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_103,
      Q => data1(1)
    );
\osd_pix_buf_t5_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_93,
      Q => data1(11)
    );
\osd_pix_buf_t5_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_92,
      Q => data1(12)
    );
\osd_pix_buf_t5_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_91,
      Q => data1(13)
    );
\osd_pix_buf_t5_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_90,
      Q => data1(14)
    );
\osd_pix_buf_t5_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_89,
      Q => data1(15)
    );
\osd_pix_buf_t5_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_88,
      Q => data1(16)
    );
\osd_pix_buf_t5_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_87,
      Q => data1(17)
    );
\osd_pix_buf_t5_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_86,
      Q => data1(18)
    );
\osd_pix_buf_t5_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_85,
      Q => data1(19)
    );
\osd_pix_buf_t5_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_84,
      Q => data1(20)
    );
\osd_pix_buf_t5_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_102,
      Q => data1(2)
    );
\osd_pix_buf_t5_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_83,
      Q => data1(21)
    );
\osd_pix_buf_t5_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_82,
      Q => data1(22)
    );
\osd_pix_buf_t5_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_81,
      Q => data1(23)
    );
\osd_pix_buf_t5_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_80,
      Q => data1(24)
    );
\osd_pix_buf_t5_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_79,
      Q => data1(25)
    );
\osd_pix_buf_t5_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_78,
      Q => data1(26)
    );
\osd_pix_buf_t5_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_77,
      Q => data1(27)
    );
\osd_pix_buf_t5_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_76,
      Q => data1(28)
    );
\osd_pix_buf_t5_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_75,
      Q => data1(29)
    );
\osd_pix_buf_t5_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_74,
      Q => data1(30)
    );
\osd_pix_buf_t5_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_101,
      Q => data1(3)
    );
\osd_pix_buf_t5_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_73,
      Q => data1(31)
    );
\osd_pix_buf_t5_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_72,
      Q => \osd_pix_buf_t5_reg_n_0_[31]\
    );
\osd_pix_buf_t5_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_100,
      Q => data1(4)
    );
\osd_pix_buf_t5_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_99,
      Q => data1(5)
    );
\osd_pix_buf_t5_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_98,
      Q => data1(6)
    );
\osd_pix_buf_t5_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_97,
      Q => data1(7)
    );
\osd_pix_buf_t5_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_96,
      Q => data1(8)
    );
\osd_pix_buf_t5_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_95,
      Q => data1(9)
    );
\osd_pix_buf_t5_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => osd_pix_buf_t5,
      CLR => href_t6_reg_0,
      D => osd_ram_n_94,
      Q => data1(10)
    );
\osd_pix_idx_t3[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => osd_raddr_t310_out,
      I1 => osd_pix_idx_t3(0),
      O => \osd_pix_idx_t3[0]_i_1_n_0\
    );
\osd_pix_idx_t3[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => osd_raddr_t310_out,
      I1 => osd_pix_idx_t3(1),
      I2 => osd_pix_idx_t3(0),
      O => \osd_pix_idx_t3[1]_i_1_n_0\
    );
\osd_pix_idx_t3[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFEA"
    )
        port map (
      I0 => osd_raddr_t310_out,
      I1 => osd_pix_idx_t3(1),
      I2 => osd_pix_idx_t3(0),
      I3 => osd_pix_idx_t3(2),
      O => \osd_pix_idx_t3[2]_i_1_n_0\
    );
\osd_pix_idx_t3[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEEEEEE"
    )
        port map (
      I0 => osd_raddr_t310_out,
      I1 => osd_pix_idx_t3(3),
      I2 => osd_pix_idx_t3(1),
      I3 => osd_pix_idx_t3(0),
      I4 => osd_pix_idx_t3(2),
      O => \osd_pix_idx_t3[3]_i_1_n_0\
    );
\osd_pix_idx_t3[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => vsync_t2,
      I1 => vsync_t3,
      I2 => osd_on_t2,
      I3 => href_t2,
      O => \osd_pix_idx_t3[4]_i_1_n_0\
    );
\osd_pix_idx_t3[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFEAAAFFFFAAAA"
    )
        port map (
      I0 => osd_raddr_t310_out,
      I1 => osd_pix_idx_t3(3),
      I2 => osd_pix_idx_t3(1),
      I3 => osd_pix_idx_t3(0),
      I4 => osd_pix_idx_t3(4),
      I5 => osd_pix_idx_t3(2),
      O => \osd_pix_idx_t3[4]_i_2_n_0\
    );
\osd_pix_idx_t3[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vsync_t3,
      I1 => vsync_t2,
      O => osd_raddr_t310_out
    );
\osd_pix_idx_t3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_pix_idx_t3[4]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => \osd_pix_idx_t3[0]_i_1_n_0\,
      Q => osd_pix_idx_t3(0)
    );
\osd_pix_idx_t3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_pix_idx_t3[4]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => \osd_pix_idx_t3[1]_i_1_n_0\,
      Q => osd_pix_idx_t3(1)
    );
\osd_pix_idx_t3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_pix_idx_t3[4]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => \osd_pix_idx_t3[2]_i_1_n_0\,
      Q => osd_pix_idx_t3(2)
    );
\osd_pix_idx_t3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_pix_idx_t3[4]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => \osd_pix_idx_t3[3]_i_1_n_0\,
      Q => osd_pix_idx_t3(3)
    );
\osd_pix_idx_t3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_pix_idx_t3[4]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => \osd_pix_idx_t3[4]_i_2_n_0\,
      Q => osd_pix_idx_t3(4)
    );
\osd_pix_idx_t4_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => osd_pix_idx_t3(0),
      Q => osd_pix_idx_t4(0)
    );
\osd_pix_idx_t4_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => osd_pix_idx_t3(1),
      Q => osd_pix_idx_t4(1)
    );
\osd_pix_idx_t4_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => osd_pix_idx_t3(2),
      Q => osd_pix_idx_t4(2)
    );
\osd_pix_idx_t4_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => osd_pix_idx_t3(3),
      Q => osd_pix_idx_t4(3)
    );
\osd_pix_idx_t4_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => osd_pix_idx_t3(4),
      Q => osd_pix_idx_t4(4)
    );
\osd_raddr_t3[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => vsync_t2,
      I1 => vsync_t3,
      I2 => \osd_raddr_t3_reg__0\(0),
      O => \osd_raddr_t3[0]_i_1_n_0\
    );
\osd_raddr_t3[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF4"
    )
        port map (
      I0 => vsync_t2,
      I1 => vsync_t3,
      I2 => \osd_raddr_t3_reg__0\(1),
      I3 => \osd_raddr_t3_reg__0\(0),
      O => p_0_in(1)
    );
\osd_raddr_t3[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF4F4F4"
    )
        port map (
      I0 => vsync_t2,
      I1 => vsync_t3,
      I2 => \osd_raddr_t3_reg__0\(2),
      I3 => \osd_raddr_t3_reg__0\(1),
      I4 => \osd_raddr_t3_reg__0\(0),
      O => p_0_in(2)
    );
\osd_raddr_t3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F4F4F4F4F4"
    )
        port map (
      I0 => vsync_t2,
      I1 => vsync_t3,
      I2 => \osd_raddr_t3_reg__0\(3),
      I3 => \osd_raddr_t3_reg__0\(2),
      I4 => \osd_raddr_t3_reg__0\(0),
      I5 => \osd_raddr_t3_reg__0\(1),
      O => p_0_in(3)
    );
\osd_raddr_t3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEEEEEEEEEEEEEE"
    )
        port map (
      I0 => osd_raddr_t310_out,
      I1 => \osd_raddr_t3_reg__0\(4),
      I2 => \osd_raddr_t3_reg__0\(3),
      I3 => \osd_raddr_t3_reg__0\(1),
      I4 => \osd_raddr_t3_reg__0\(0),
      I5 => \osd_raddr_t3_reg__0\(2),
      O => p_0_in(4)
    );
\osd_raddr_t3[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF4"
    )
        port map (
      I0 => vsync_t2,
      I1 => vsync_t3,
      I2 => \osd_raddr_t3_reg__0\(5),
      I3 => \osd_raddr_t3[5]_i_2_n_0\,
      O => p_0_in(5)
    );
\osd_raddr_t3[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \osd_raddr_t3_reg__0\(4),
      I1 => \osd_raddr_t3_reg__0\(2),
      I2 => \osd_raddr_t3_reg__0\(0),
      I3 => \osd_raddr_t3_reg__0\(1),
      I4 => \osd_raddr_t3_reg__0\(3),
      O => \osd_raddr_t3[5]_i_2_n_0\
    );
\osd_raddr_t3[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF4"
    )
        port map (
      I0 => vsync_t2,
      I1 => vsync_t3,
      I2 => \osd_raddr_t3_reg__0\(6),
      I3 => \osd_raddr_t3[8]_i_4_n_0\,
      O => p_0_in(6)
    );
\osd_raddr_t3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FF4F4F4"
    )
        port map (
      I0 => vsync_t2,
      I1 => vsync_t3,
      I2 => \osd_raddr_t3_reg__0\(7),
      I3 => \osd_raddr_t3_reg__0\(6),
      I4 => \osd_raddr_t3[8]_i_4_n_0\,
      O => p_0_in(7)
    );
\osd_raddr_t3[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => osd_raddr_t310_out,
      I1 => \osd_raddr_t3[8]_i_3_n_0\,
      I2 => osd_pix_idx_t3(3),
      I3 => osd_pix_idx_t3(4),
      I4 => href_t2,
      I5 => osd_on_t2,
      O => \osd_raddr_t3[8]_i_1_n_0\
    );
\osd_raddr_t3[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F4F4F4F4F4"
    )
        port map (
      I0 => vsync_t2,
      I1 => vsync_t3,
      I2 => \osd_raddr_t3_reg__0\(8),
      I3 => \osd_raddr_t3_reg__0\(7),
      I4 => \osd_raddr_t3[8]_i_4_n_0\,
      I5 => \osd_raddr_t3_reg__0\(6),
      O => p_0_in(8)
    );
\osd_raddr_t3[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => osd_pix_idx_t3(2),
      I1 => osd_pix_idx_t3(1),
      I2 => osd_pix_idx_t3(0),
      O => \osd_raddr_t3[8]_i_3_n_0\
    );
\osd_raddr_t3[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \osd_raddr_t3_reg__0\(5),
      I1 => \osd_raddr_t3_reg__0\(3),
      I2 => \osd_raddr_t3_reg__0\(1),
      I3 => \osd_raddr_t3_reg__0\(0),
      I4 => \osd_raddr_t3_reg__0\(2),
      I5 => \osd_raddr_t3_reg__0\(4),
      O => \osd_raddr_t3[8]_i_4_n_0\
    );
\osd_raddr_t3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_raddr_t3[8]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => \osd_raddr_t3[0]_i_1_n_0\,
      Q => \osd_raddr_t3_reg__0\(0)
    );
\osd_raddr_t3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_raddr_t3[8]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => p_0_in(1),
      Q => \osd_raddr_t3_reg__0\(1)
    );
\osd_raddr_t3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_raddr_t3[8]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => p_0_in(2),
      Q => \osd_raddr_t3_reg__0\(2)
    );
\osd_raddr_t3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_raddr_t3[8]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => p_0_in(3),
      Q => \osd_raddr_t3_reg__0\(3)
    );
\osd_raddr_t3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_raddr_t3[8]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => p_0_in(4),
      Q => \osd_raddr_t3_reg__0\(4)
    );
\osd_raddr_t3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_raddr_t3[8]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => p_0_in(5),
      Q => \osd_raddr_t3_reg__0\(5)
    );
\osd_raddr_t3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_raddr_t3[8]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => p_0_in(6),
      Q => \osd_raddr_t3_reg__0\(6)
    );
\osd_raddr_t3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_raddr_t3[8]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => p_0_in(7),
      Q => \osd_raddr_t3_reg__0\(7)
    );
\osd_raddr_t3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \osd_raddr_t3[8]_i_1_n_0\,
      CLR => href_t6_reg_0,
      D => p_0_in(8),
      Q => \osd_raddr_t3_reg__0\(8)
    );
osd_ram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram
     port map (
      CLK => CLK,
      D(31) => osd_ram_n_72,
      D(30) => osd_ram_n_73,
      D(29) => osd_ram_n_74,
      D(28) => osd_ram_n_75,
      D(27) => osd_ram_n_76,
      D(26) => osd_ram_n_77,
      D(25) => osd_ram_n_78,
      D(24) => osd_ram_n_79,
      D(23) => osd_ram_n_80,
      D(22) => osd_ram_n_81,
      D(21) => osd_ram_n_82,
      D(20) => osd_ram_n_83,
      D(19) => osd_ram_n_84,
      D(18) => osd_ram_n_85,
      D(17) => osd_ram_n_86,
      D(16) => osd_ram_n_87,
      D(15) => osd_ram_n_88,
      D(14) => osd_ram_n_89,
      D(13) => osd_ram_n_90,
      D(12) => osd_ram_n_91,
      D(11) => osd_ram_n_92,
      D(10) => osd_ram_n_93,
      D(9) => osd_ram_n_94,
      D(8) => osd_ram_n_95,
      D(7) => osd_ram_n_96,
      D(6) => osd_ram_n_97,
      D(5) => osd_ram_n_98,
      D(4) => osd_ram_n_99,
      D(3) => osd_ram_n_100,
      D(2) => osd_ram_n_101,
      D(1) => osd_ram_n_102,
      D(0) => osd_ram_n_103,
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      Q(8 downto 0) => \osd_raddr_t3_reg__0\(8 downto 0),
      mem_reg_0(9 downto 0) => mem_reg(9 downto 0),
      mem_reg_1 => mem_reg_0,
      mem_reg_2 => mem_reg_1,
      \osd_pix_buf_t5_reg[0]\ => \osd_pix_buf_t5_reg[0]_0\,
      \osd_pix_buf_t5_reg[0]_0\ => \osd_pix_buf_t5_reg[0]_1\,
      \osd_pix_buf_t5_reg[0]_1\ => \osd_pix_buf_t5[31]_i_3_n_0\,
      \osd_pix_buf_t5_reg[10]\ => \osd_pix_buf_t5_reg[10]_0\,
      \osd_pix_buf_t5_reg[11]\ => \osd_pix_buf_t5_reg[11]_0\,
      \osd_pix_buf_t5_reg[12]\ => \osd_pix_buf_t5_reg[12]_0\,
      \osd_pix_buf_t5_reg[13]\ => \osd_pix_buf_t5_reg[13]_0\,
      \osd_pix_buf_t5_reg[14]\ => \osd_pix_buf_t5_reg[14]_0\,
      \osd_pix_buf_t5_reg[15]\ => \osd_pix_buf_t5_reg[15]_0\,
      \osd_pix_buf_t5_reg[16]\ => \osd_pix_buf_t5_reg[16]_0\,
      \osd_pix_buf_t5_reg[17]\ => \osd_pix_buf_t5_reg[17]_0\,
      \osd_pix_buf_t5_reg[18]\ => \osd_pix_buf_t5_reg[18]_0\,
      \osd_pix_buf_t5_reg[19]\ => \osd_pix_buf_t5_reg[19]_0\,
      \osd_pix_buf_t5_reg[1]\ => \osd_pix_buf_t5_reg[1]_0\,
      \osd_pix_buf_t5_reg[20]\ => \osd_pix_buf_t5_reg[20]_0\,
      \osd_pix_buf_t5_reg[21]\ => \osd_pix_buf_t5_reg[21]_0\,
      \osd_pix_buf_t5_reg[22]\ => \osd_pix_buf_t5_reg[22]_0\,
      \osd_pix_buf_t5_reg[23]\ => \osd_pix_buf_t5_reg[23]_0\,
      \osd_pix_buf_t5_reg[24]\ => \osd_pix_buf_t5_reg[24]_0\,
      \osd_pix_buf_t5_reg[25]\ => \osd_pix_buf_t5_reg[25]_0\,
      \osd_pix_buf_t5_reg[26]\ => \osd_pix_buf_t5_reg[26]_0\,
      \osd_pix_buf_t5_reg[27]\ => \osd_pix_buf_t5_reg[27]_0\,
      \osd_pix_buf_t5_reg[28]\ => \osd_pix_buf_t5_reg[28]_0\,
      \osd_pix_buf_t5_reg[29]\ => \osd_pix_buf_t5_reg[29]_0\,
      \osd_pix_buf_t5_reg[2]\ => \osd_pix_buf_t5_reg[2]_0\,
      \osd_pix_buf_t5_reg[30]\ => \osd_pix_buf_t5_reg[30]_0\,
      \osd_pix_buf_t5_reg[31]\(30 downto 0) => data1(31 downto 1),
      \osd_pix_buf_t5_reg[31]_0\ => \osd_pix_buf_t5_reg[31]_0\,
      \osd_pix_buf_t5_reg[3]\ => \osd_pix_buf_t5_reg[3]_0\,
      \osd_pix_buf_t5_reg[4]\ => \osd_pix_buf_t5_reg[4]_0\,
      \osd_pix_buf_t5_reg[5]\ => \osd_pix_buf_t5_reg[5]_0\,
      \osd_pix_buf_t5_reg[6]\ => \osd_pix_buf_t5_reg[6]_0\,
      \osd_pix_buf_t5_reg[7]\ => \osd_pix_buf_t5_reg[7]_0\,
      \osd_pix_buf_t5_reg[8]\ => \osd_pix_buf_t5_reg[8]_0\,
      \osd_pix_buf_t5_reg[9]\ => \osd_pix_buf_t5_reg[9]_0\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_rdata(7 downto 0) => s00_axi_rdata(7 downto 0),
      \s00_axi_rdata[24]\ => \s00_axi_rdata[24]\,
      \s00_axi_rdata[24]_0\ => \s00_axi_rdata[24]_0\,
      \s00_axi_rdata[24]_1\(9 downto 0) => Q(9 downto 0),
      \s00_axi_rdata[25]\ => \s00_axi_rdata[25]\,
      \s00_axi_rdata[26]\ => \s00_axi_rdata[26]\,
      \s00_axi_rdata[27]\ => \s00_axi_rdata[27]\,
      \s00_axi_rdata[28]\ => \s00_axi_rdata[28]\,
      \s00_axi_rdata[29]\ => \s00_axi_rdata[29]\,
      \s00_axi_rdata[30]\ => \s00_axi_rdata[30]\,
      \s00_axi_rdata[31]\ => \s00_axi_rdata[31]\,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
\osd_x0_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(10),
      I2 => \osd_x0_r_reg[10]_0\(9),
      I3 => \osd_x0_r_reg[10]_0\(0),
      O => \osd_x0_r[0]_i_1_n_0\
    );
\osd_x0_r[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(10),
      O => \osd_x0_r[10]_i_1_n_0\
    );
\osd_x0_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(10),
      I1 => \osd_x0_r_reg[10]_0\(9),
      I2 => \osd_x0_r_reg[10]_0\(11),
      O => \osd_x0_r[11]_i_1_n_0\
    );
\osd_x0_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(10),
      I2 => \osd_x0_r_reg[10]_0\(9),
      I3 => \osd_x0_r_reg[10]_0\(1),
      O => \osd_x0_r[1]_i_1_n_0\
    );
\osd_x0_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(10),
      I2 => \osd_x0_r_reg[10]_0\(9),
      I3 => \osd_x0_r_reg[10]_0\(2),
      O => \osd_x0_r[2]_i_1_n_0\
    );
\osd_x0_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(10),
      I2 => \osd_x0_r_reg[10]_0\(9),
      I3 => \osd_x0_r_reg[10]_0\(3),
      O => \osd_x0_r[3]_i_1_n_0\
    );
\osd_x0_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(10),
      I2 => \osd_x0_r_reg[10]_0\(9),
      I3 => \osd_x0_r_reg[10]_0\(4),
      O => \osd_x0_r[4]_i_1_n_0\
    );
\osd_x0_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(10),
      I2 => \osd_x0_r_reg[10]_0\(9),
      I3 => \osd_x0_r_reg[10]_0\(5),
      O => \osd_x0_r[5]_i_1_n_0\
    );
\osd_x0_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(10),
      I2 => \osd_x0_r_reg[10]_0\(9),
      I3 => \osd_x0_r_reg[10]_0\(6),
      O => \osd_x0_r[6]_i_1_n_0\
    );
\osd_x0_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(10),
      I2 => \osd_x0_r_reg[10]_0\(9),
      I3 => \osd_x0_r_reg[10]_0\(7),
      O => \osd_x0_r[7]_i_1_n_0\
    );
\osd_x0_r[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(10),
      I2 => \osd_x0_r_reg[10]_0\(9),
      I3 => \osd_x0_r_reg[10]_0\(8),
      O => \osd_x0_r[8]_i_1_n_0\
    );
\osd_x0_r[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x0_r_reg[10]_0\(9),
      O => \osd_x0_r[9]_i_1_n_0\
    );
\osd_x0_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[0]_i_1_n_0\,
      Q => osd_x0_r(0)
    );
\osd_x0_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[10]_i_1_n_0\,
      Q => osd_x0_r(10)
    );
\osd_x0_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[11]_i_1_n_0\,
      Q => osd_x0_r(11)
    );
\osd_x0_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[1]_i_1_n_0\,
      Q => osd_x0_r(1)
    );
\osd_x0_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[2]_i_1_n_0\,
      Q => osd_x0_r(2)
    );
\osd_x0_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[3]_i_1_n_0\,
      Q => osd_x0_r(3)
    );
\osd_x0_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[4]_i_1_n_0\,
      Q => osd_x0_r(4)
    );
\osd_x0_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[5]_i_1_n_0\,
      Q => osd_x0_r(5)
    );
\osd_x0_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[6]_i_1_n_0\,
      Q => osd_x0_r(6)
    );
\osd_x0_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[7]_i_1_n_0\,
      Q => osd_x0_r(7)
    );
\osd_x0_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[8]_i_1_n_0\,
      Q => osd_x0_r(8)
    );
\osd_x0_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x0_r[9]_i_1_n_0\,
      Q => osd_x0_r(9)
    );
\osd_x1_r[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vsync_t1,
      I1 => crop_vsync_o,
      O => pix_y_t112_out
    );
\osd_x1_r[11]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => osd_x1_r3(9),
      I1 => osd_x1_r3(10),
      I2 => osd_x1_r3(11),
      O => \osd_x1_r[11]_i_10_n_0\
    );
\osd_x1_r[11]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => osd_x1_r3(0),
      I1 => osd_x1_r3(10),
      I2 => osd_x1_r3(2),
      I3 => osd_x1_r3(1),
      O => \osd_x1_r[11]_i_11_n_0\
    );
\osd_x1_r[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => osd_x1_r3(3),
      I1 => osd_x1_r3(4),
      I2 => osd_x1_r3(5),
      I3 => osd_x1_r3(6),
      I4 => osd_x1_r3(8),
      I5 => osd_x1_r3(7),
      O => \osd_x1_r[11]_i_12_n_0\
    );
\osd_x1_r[11]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(11),
      I1 => \osd_x1_r_reg[11]_0\(11),
      O => \osd_x1_r[11]_i_17_n_0\
    );
\osd_x1_r[11]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(10),
      I1 => \osd_x1_r_reg[11]_0\(10),
      O => \osd_x1_r[11]_i_18_n_0\
    );
\osd_x1_r[11]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(9),
      I1 => \osd_x1_r_reg[11]_0\(9),
      O => \osd_x1_r[11]_i_19_n_0\
    );
\osd_x1_r[11]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(8),
      I1 => \osd_x1_r_reg[11]_0\(8),
      O => \osd_x1_r[11]_i_20_n_0\
    );
\osd_x1_r[11]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(3),
      I1 => \osd_x1_r_reg[11]_0\(3),
      O => \osd_x1_r[11]_i_21_n_0\
    );
\osd_x1_r[11]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(2),
      I1 => \osd_x1_r_reg[11]_0\(2),
      O => \osd_x1_r[11]_i_22_n_0\
    );
\osd_x1_r[11]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(1),
      I1 => \osd_x1_r_reg[11]_0\(1),
      O => \osd_x1_r[11]_i_23_n_0\
    );
\osd_x1_r[11]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(0),
      I1 => \osd_x1_r_reg[11]_0\(0),
      O => \osd_x1_r[11]_i_24_n_0\
    );
\osd_x1_r[11]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(7),
      I1 => \osd_x1_r_reg[11]_0\(7),
      O => \osd_x1_r[11]_i_25_n_0\
    );
\osd_x1_r[11]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(6),
      I1 => \osd_x1_r_reg[11]_0\(6),
      O => \osd_x1_r[11]_i_26_n_0\
    );
\osd_x1_r[11]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(5),
      I1 => \osd_x1_r_reg[11]_0\(5),
      O => \osd_x1_r[11]_i_27_n_0\
    );
\osd_x1_r[11]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_x0_r_reg[10]_0\(4),
      I1 => \osd_x1_r_reg[11]_0\(4),
      O => \osd_x1_r[11]_i_28_n_0\
    );
\osd_x1_r[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(10),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[11]_i_3_n_0\
    );
\osd_x1_r[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(9),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[11]_i_4_n_0\
    );
\osd_x1_r[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(8),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[11]_i_5_n_0\
    );
\osd_x1_r[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(11),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(11),
      O => \osd_x1_r[11]_i_6_n_0\
    );
\osd_x1_r[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(10),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(10),
      O => \osd_x1_r[11]_i_7_n_0\
    );
\osd_x1_r[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(9),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(9),
      O => \osd_x1_r[11]_i_8_n_0\
    );
\osd_x1_r[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(8),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(8),
      O => \osd_x1_r[11]_i_9_n_0\
    );
\osd_x1_r[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(3),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[3]_i_2_n_0\
    );
\osd_x1_r[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(2),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[3]_i_3_n_0\
    );
\osd_x1_r[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(1),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[3]_i_4_n_0\
    );
\osd_x1_r[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(0),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[3]_i_5_n_0\
    );
\osd_x1_r[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(3),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(3),
      O => \osd_x1_r[3]_i_6_n_0\
    );
\osd_x1_r[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(2),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(2),
      O => \osd_x1_r[3]_i_7_n_0\
    );
\osd_x1_r[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(1),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(1),
      O => \osd_x1_r[3]_i_8_n_0\
    );
\osd_x1_r[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(0),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(0),
      O => \osd_x1_r[3]_i_9_n_0\
    );
\osd_x1_r[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(7),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[7]_i_2_n_0\
    );
\osd_x1_r[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(6),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[7]_i_3_n_0\
    );
\osd_x1_r[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(5),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[7]_i_4_n_0\
    );
\osd_x1_r[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A888"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(4),
      I1 => \osd_x1_r[11]_i_10_n_0\,
      I2 => \osd_x1_r[11]_i_11_n_0\,
      I3 => \osd_x1_r[11]_i_12_n_0\,
      I4 => osd_x1_r3(12),
      O => \osd_x1_r[7]_i_5_n_0\
    );
\osd_x1_r[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(7),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(7),
      O => \osd_x1_r[7]_i_6_n_0\
    );
\osd_x1_r[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(6),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(6),
      O => \osd_x1_r[7]_i_7_n_0\
    );
\osd_x1_r[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(5),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(5),
      O => \osd_x1_r[7]_i_8_n_0\
    );
\osd_x1_r[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100022222000"
    )
        port map (
      I0 => \osd_x1_r_reg[11]_0\(4),
      I1 => osd_x1_r3(12),
      I2 => \osd_x1_r[11]_i_12_n_0\,
      I3 => \osd_x1_r[11]_i_11_n_0\,
      I4 => \osd_x1_r[11]_i_10_n_0\,
      I5 => \osd_x0_r_reg[10]_0\(4),
      O => \osd_x1_r[7]_i_9_n_0\
    );
\osd_x1_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[3]_i_1_n_7\,
      Q => osd_x1_r(0)
    );
\osd_x1_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[11]_i_2_n_5\,
      Q => osd_x1_r(10)
    );
\osd_x1_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[11]_i_2_n_4\,
      Q => osd_x1_r(11)
    );
\osd_x1_r_reg[11]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \osd_x1_r_reg[11]_i_14_n_0\,
      CO(3 downto 1) => \NLW_osd_x1_r_reg[11]_i_13_CO_UNCONNECTED\(3 downto 1),
      CO(0) => osd_x1_r3(12),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_osd_x1_r_reg[11]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\osd_x1_r_reg[11]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \osd_x1_r_reg[11]_i_16_n_0\,
      CO(3) => \osd_x1_r_reg[11]_i_14_n_0\,
      CO(2) => \osd_x1_r_reg[11]_i_14_n_1\,
      CO(1) => \osd_x1_r_reg[11]_i_14_n_2\,
      CO(0) => \osd_x1_r_reg[11]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \osd_x0_r_reg[10]_0\(11 downto 8),
      O(3 downto 0) => osd_x1_r3(11 downto 8),
      S(3) => \osd_x1_r[11]_i_17_n_0\,
      S(2) => \osd_x1_r[11]_i_18_n_0\,
      S(1) => \osd_x1_r[11]_i_19_n_0\,
      S(0) => \osd_x1_r[11]_i_20_n_0\
    );
\osd_x1_r_reg[11]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \osd_x1_r_reg[11]_i_15_n_0\,
      CO(2) => \osd_x1_r_reg[11]_i_15_n_1\,
      CO(1) => \osd_x1_r_reg[11]_i_15_n_2\,
      CO(0) => \osd_x1_r_reg[11]_i_15_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \osd_x0_r_reg[10]_0\(3 downto 0),
      O(3 downto 0) => osd_x1_r3(3 downto 0),
      S(3) => \osd_x1_r[11]_i_21_n_0\,
      S(2) => \osd_x1_r[11]_i_22_n_0\,
      S(1) => \osd_x1_r[11]_i_23_n_0\,
      S(0) => \osd_x1_r[11]_i_24_n_0\
    );
\osd_x1_r_reg[11]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \osd_x1_r_reg[11]_i_15_n_0\,
      CO(3) => \osd_x1_r_reg[11]_i_16_n_0\,
      CO(2) => \osd_x1_r_reg[11]_i_16_n_1\,
      CO(1) => \osd_x1_r_reg[11]_i_16_n_2\,
      CO(0) => \osd_x1_r_reg[11]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \osd_x0_r_reg[10]_0\(7 downto 4),
      O(3 downto 0) => osd_x1_r3(7 downto 4),
      S(3) => \osd_x1_r[11]_i_25_n_0\,
      S(2) => \osd_x1_r[11]_i_26_n_0\,
      S(1) => \osd_x1_r[11]_i_27_n_0\,
      S(0) => \osd_x1_r[11]_i_28_n_0\
    );
\osd_x1_r_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \osd_x1_r_reg[7]_i_1_n_0\,
      CO(3) => \NLW_osd_x1_r_reg[11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \osd_x1_r_reg[11]_i_2_n_1\,
      CO(1) => \osd_x1_r_reg[11]_i_2_n_2\,
      CO(0) => \osd_x1_r_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \osd_x1_r[11]_i_3_n_0\,
      DI(1) => \osd_x1_r[11]_i_4_n_0\,
      DI(0) => \osd_x1_r[11]_i_5_n_0\,
      O(3) => \osd_x1_r_reg[11]_i_2_n_4\,
      O(2) => \osd_x1_r_reg[11]_i_2_n_5\,
      O(1) => \osd_x1_r_reg[11]_i_2_n_6\,
      O(0) => \osd_x1_r_reg[11]_i_2_n_7\,
      S(3) => \osd_x1_r[11]_i_6_n_0\,
      S(2) => \osd_x1_r[11]_i_7_n_0\,
      S(1) => \osd_x1_r[11]_i_8_n_0\,
      S(0) => \osd_x1_r[11]_i_9_n_0\
    );
\osd_x1_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[3]_i_1_n_6\,
      Q => osd_x1_r(1)
    );
\osd_x1_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[3]_i_1_n_5\,
      Q => osd_x1_r(2)
    );
\osd_x1_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[3]_i_1_n_4\,
      Q => osd_x1_r(3)
    );
\osd_x1_r_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \osd_x1_r_reg[3]_i_1_n_0\,
      CO(2) => \osd_x1_r_reg[3]_i_1_n_1\,
      CO(1) => \osd_x1_r_reg[3]_i_1_n_2\,
      CO(0) => \osd_x1_r_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \osd_x1_r[3]_i_2_n_0\,
      DI(2) => \osd_x1_r[3]_i_3_n_0\,
      DI(1) => \osd_x1_r[3]_i_4_n_0\,
      DI(0) => \osd_x1_r[3]_i_5_n_0\,
      O(3) => \osd_x1_r_reg[3]_i_1_n_4\,
      O(2) => \osd_x1_r_reg[3]_i_1_n_5\,
      O(1) => \osd_x1_r_reg[3]_i_1_n_6\,
      O(0) => \osd_x1_r_reg[3]_i_1_n_7\,
      S(3) => \osd_x1_r[3]_i_6_n_0\,
      S(2) => \osd_x1_r[3]_i_7_n_0\,
      S(1) => \osd_x1_r[3]_i_8_n_0\,
      S(0) => \osd_x1_r[3]_i_9_n_0\
    );
\osd_x1_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[7]_i_1_n_7\,
      Q => osd_x1_r(4)
    );
\osd_x1_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[7]_i_1_n_6\,
      Q => osd_x1_r(5)
    );
\osd_x1_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[7]_i_1_n_5\,
      Q => osd_x1_r(6)
    );
\osd_x1_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[7]_i_1_n_4\,
      Q => osd_x1_r(7)
    );
\osd_x1_r_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \osd_x1_r_reg[3]_i_1_n_0\,
      CO(3) => \osd_x1_r_reg[7]_i_1_n_0\,
      CO(2) => \osd_x1_r_reg[7]_i_1_n_1\,
      CO(1) => \osd_x1_r_reg[7]_i_1_n_2\,
      CO(0) => \osd_x1_r_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \osd_x1_r[7]_i_2_n_0\,
      DI(2) => \osd_x1_r[7]_i_3_n_0\,
      DI(1) => \osd_x1_r[7]_i_4_n_0\,
      DI(0) => \osd_x1_r[7]_i_5_n_0\,
      O(3) => \osd_x1_r_reg[7]_i_1_n_4\,
      O(2) => \osd_x1_r_reg[7]_i_1_n_5\,
      O(1) => \osd_x1_r_reg[7]_i_1_n_6\,
      O(0) => \osd_x1_r_reg[7]_i_1_n_7\,
      S(3) => \osd_x1_r[7]_i_6_n_0\,
      S(2) => \osd_x1_r[7]_i_7_n_0\,
      S(1) => \osd_x1_r[7]_i_8_n_0\,
      S(0) => \osd_x1_r[7]_i_9_n_0\
    );
\osd_x1_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[11]_i_2_n_7\,
      Q => osd_x1_r(8)
    );
\osd_x1_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_x1_r_reg[11]_i_2_n_6\,
      Q => osd_x1_r(9)
    );
\osd_y0_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(0),
      O => \osd_y0_r[0]_i_1_n_0\
    );
\osd_y0_r[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(10),
      O => \osd_y0_r[10]_i_1_n_0\
    );
\osd_y0_r[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(0),
      I1 => \osd_y0_r[10]_i_3_n_0\,
      I2 => \osd_y0_r_reg[10]_0\(9),
      I3 => \osd_y0_r_reg[10]_0\(10),
      I4 => \osd_y0_r_reg[10]_0\(7),
      I5 => \osd_y0_r_reg[10]_0\(8),
      O => \osd_y0_r2__9\
    );
\osd_y0_r[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(2),
      I1 => \osd_y0_r_reg[10]_0\(1),
      I2 => \osd_y0_r_reg[10]_0\(5),
      I3 => \osd_y0_r_reg[10]_0\(6),
      I4 => \osd_y0_r_reg[10]_0\(3),
      I5 => \osd_y0_r_reg[10]_0\(4),
      O => \osd_y0_r[10]_i_3_n_0\
    );
\osd_y0_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(1),
      O => \osd_y0_r[1]_i_1_n_0\
    );
\osd_y0_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(2),
      O => \osd_y0_r[2]_i_1_n_0\
    );
\osd_y0_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(3),
      O => \osd_y0_r[3]_i_1_n_0\
    );
\osd_y0_r[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(4),
      O => \osd_y0_r[4]_i_1_n_0\
    );
\osd_y0_r[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(5),
      O => \osd_y0_r[5]_i_1_n_0\
    );
\osd_y0_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(6),
      O => \osd_y0_r[6]_i_1_n_0\
    );
\osd_y0_r[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(7),
      O => \osd_y0_r[7]_i_1_n_0\
    );
\osd_y0_r[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(8),
      O => \osd_y0_r[8]_i_1_n_0\
    );
\osd_y0_r[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \osd_y0_r2__9\,
      I1 => \osd_y0_r_reg[10]_0\(9),
      O => \osd_y0_r[9]_i_1_n_0\
    );
\osd_y0_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[0]_i_1_n_0\,
      Q => osd_y0_r(0)
    );
\osd_y0_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[10]_i_1_n_0\,
      Q => osd_y0_r(10)
    );
\osd_y0_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[1]_i_1_n_0\,
      Q => osd_y0_r(1)
    );
\osd_y0_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[2]_i_1_n_0\,
      Q => osd_y0_r(2)
    );
\osd_y0_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[3]_i_1_n_0\,
      Q => osd_y0_r(3)
    );
\osd_y0_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[4]_i_1_n_0\,
      Q => osd_y0_r(4)
    );
\osd_y0_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[5]_i_1_n_0\,
      Q => osd_y0_r(5)
    );
\osd_y0_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[6]_i_1_n_0\,
      Q => osd_y0_r(6)
    );
\osd_y0_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[7]_i_1_n_0\,
      Q => osd_y0_r(7)
    );
\osd_y0_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[8]_i_1_n_0\,
      Q => osd_y0_r(8)
    );
\osd_y0_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y0_r[9]_i_1_n_0\,
      Q => osd_y0_r(9)
    );
\osd_y1_r[10]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(3),
      I1 => \osd_y1_r_reg[10]_0\(3),
      O => \osd_y1_r[10]_i_11_n_0\
    );
\osd_y1_r[10]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(2),
      I1 => \osd_y1_r_reg[10]_0\(2),
      O => \osd_y1_r[10]_i_12_n_0\
    );
\osd_y1_r[10]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(1),
      I1 => \osd_y1_r_reg[10]_0\(1),
      O => \osd_y1_r[10]_i_13_n_0\
    );
\osd_y1_r[10]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(0),
      I1 => \osd_y1_r_reg[10]_0\(0),
      O => \osd_y1_r[10]_i_14_n_0\
    );
\osd_y1_r[10]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(10),
      I1 => \osd_y1_r_reg[10]_0\(10),
      O => \osd_y1_r[10]_i_16_n_0\
    );
\osd_y1_r[10]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(9),
      I1 => \osd_y1_r_reg[10]_0\(9),
      O => \osd_y1_r[10]_i_17_n_0\
    );
\osd_y1_r[10]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(8),
      I1 => \osd_y1_r_reg[10]_0\(8),
      O => \osd_y1_r[10]_i_18_n_0\
    );
\osd_y1_r[10]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(7),
      I1 => \osd_y1_r_reg[10]_0\(7),
      O => \osd_y1_r[10]_i_19_n_0\
    );
\osd_y1_r[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(9),
      I1 => osd_y1_r3(0),
      I2 => \osd_y1_r[10]_i_8_n_0\,
      I3 => \osd_y1_r[10]_i_9_n_0\,
      I4 => osd_y1_r3(11),
      O => \osd_y1_r[10]_i_2_n_0\
    );
\osd_y1_r[10]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(6),
      I1 => \osd_y1_r_reg[10]_0\(6),
      O => \osd_y1_r[10]_i_20_n_0\
    );
\osd_y1_r[10]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(5),
      I1 => \osd_y1_r_reg[10]_0\(5),
      O => \osd_y1_r[10]_i_21_n_0\
    );
\osd_y1_r[10]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \osd_y0_r_reg[10]_0\(4),
      I1 => \osd_y1_r_reg[10]_0\(4),
      O => \osd_y1_r[10]_i_22_n_0\
    );
\osd_y1_r[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(8),
      I1 => osd_y1_r3(0),
      I2 => \osd_y1_r[10]_i_8_n_0\,
      I3 => \osd_y1_r[10]_i_9_n_0\,
      I4 => osd_y1_r3(11),
      O => \osd_y1_r[10]_i_3_n_0\
    );
\osd_y1_r[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(10),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(10),
      O => \osd_y1_r[10]_i_4_n_0\
    );
\osd_y1_r[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(9),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(9),
      O => \osd_y1_r[10]_i_5_n_0\
    );
\osd_y1_r[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(8),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(8),
      O => \osd_y1_r[10]_i_6_n_0\
    );
\osd_y1_r[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => osd_y1_r3(2),
      I1 => osd_y1_r3(1),
      I2 => osd_y1_r3(5),
      I3 => osd_y1_r3(6),
      I4 => osd_y1_r3(3),
      I5 => osd_y1_r3(4),
      O => \osd_y1_r[10]_i_8_n_0\
    );
\osd_y1_r[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => osd_y1_r3(8),
      I1 => osd_y1_r3(7),
      I2 => osd_y1_r3(10),
      I3 => osd_y1_r3(9),
      O => \osd_y1_r[10]_i_9_n_0\
    );
\osd_y1_r[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(3),
      I1 => osd_y1_r3(0),
      I2 => \osd_y1_r[10]_i_8_n_0\,
      I3 => \osd_y1_r[10]_i_9_n_0\,
      I4 => osd_y1_r3(11),
      O => \osd_y1_r[3]_i_2_n_0\
    );
\osd_y1_r[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(2),
      I1 => osd_y1_r3(0),
      I2 => \osd_y1_r[10]_i_8_n_0\,
      I3 => \osd_y1_r[10]_i_9_n_0\,
      I4 => osd_y1_r3(11),
      O => \osd_y1_r[3]_i_3_n_0\
    );
\osd_y1_r[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(1),
      I1 => osd_y1_r3(0),
      I2 => \osd_y1_r[10]_i_8_n_0\,
      I3 => \osd_y1_r[10]_i_9_n_0\,
      I4 => osd_y1_r3(11),
      O => \osd_y1_r[3]_i_4_n_0\
    );
\osd_y1_r[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(0),
      I1 => osd_y1_r3(0),
      I2 => \osd_y1_r[10]_i_8_n_0\,
      I3 => \osd_y1_r[10]_i_9_n_0\,
      I4 => osd_y1_r3(11),
      O => \osd_y1_r[3]_i_5_n_0\
    );
\osd_y1_r[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(3),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(3),
      O => \osd_y1_r[3]_i_6_n_0\
    );
\osd_y1_r[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(2),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(2),
      O => \osd_y1_r[3]_i_7_n_0\
    );
\osd_y1_r[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(1),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(1),
      O => \osd_y1_r[3]_i_8_n_0\
    );
\osd_y1_r[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(0),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(0),
      O => \osd_y1_r[3]_i_9_n_0\
    );
\osd_y1_r[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(7),
      I1 => osd_y1_r3(0),
      I2 => \osd_y1_r[10]_i_8_n_0\,
      I3 => \osd_y1_r[10]_i_9_n_0\,
      I4 => osd_y1_r3(11),
      O => \osd_y1_r[7]_i_2_n_0\
    );
\osd_y1_r[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(6),
      I1 => osd_y1_r3(0),
      I2 => \osd_y1_r[10]_i_8_n_0\,
      I3 => \osd_y1_r[10]_i_9_n_0\,
      I4 => osd_y1_r3(11),
      O => \osd_y1_r[7]_i_3_n_0\
    );
\osd_y1_r[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(5),
      I1 => osd_y1_r3(0),
      I2 => \osd_y1_r[10]_i_8_n_0\,
      I3 => \osd_y1_r[10]_i_9_n_0\,
      I4 => osd_y1_r3(11),
      O => \osd_y1_r[7]_i_4_n_0\
    );
\osd_y1_r[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(4),
      I1 => osd_y1_r3(0),
      I2 => \osd_y1_r[10]_i_8_n_0\,
      I3 => \osd_y1_r[10]_i_9_n_0\,
      I4 => osd_y1_r3(11),
      O => \osd_y1_r[7]_i_5_n_0\
    );
\osd_y1_r[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(7),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(7),
      O => \osd_y1_r[7]_i_6_n_0\
    );
\osd_y1_r[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(6),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(6),
      O => \osd_y1_r[7]_i_7_n_0\
    );
\osd_y1_r[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(5),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(5),
      O => \osd_y1_r[7]_i_8_n_0\
    );
\osd_y1_r[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011102020222"
    )
        port map (
      I0 => \osd_y1_r_reg[10]_0\(4),
      I1 => osd_y1_r3(11),
      I2 => \osd_y1_r[10]_i_9_n_0\,
      I3 => \osd_y1_r[10]_i_8_n_0\,
      I4 => osd_y1_r3(0),
      I5 => \osd_y0_r_reg[10]_0\(4),
      O => \osd_y1_r[7]_i_9_n_0\
    );
\osd_y1_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[3]_i_1_n_7\,
      Q => osd_y1_r(0)
    );
\osd_y1_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[10]_i_1_n_5\,
      Q => osd_y1_r(10)
    );
\osd_y1_r_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \osd_y1_r_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_osd_y1_r_reg[10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \osd_y1_r_reg[10]_i_1_n_2\,
      CO(0) => \osd_y1_r_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \osd_y1_r[10]_i_2_n_0\,
      DI(0) => \osd_y1_r[10]_i_3_n_0\,
      O(3) => \NLW_osd_y1_r_reg[10]_i_1_O_UNCONNECTED\(3),
      O(2) => \osd_y1_r_reg[10]_i_1_n_5\,
      O(1) => \osd_y1_r_reg[10]_i_1_n_6\,
      O(0) => \osd_y1_r_reg[10]_i_1_n_7\,
      S(3) => '0',
      S(2) => \osd_y1_r[10]_i_4_n_0\,
      S(1) => \osd_y1_r[10]_i_5_n_0\,
      S(0) => \osd_y1_r[10]_i_6_n_0\
    );
\osd_y1_r_reg[10]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \osd_y1_r_reg[10]_i_15_n_0\,
      CO(3) => osd_y1_r3(11),
      CO(2) => \NLW_osd_y1_r_reg[10]_i_10_CO_UNCONNECTED\(2),
      CO(1) => \osd_y1_r_reg[10]_i_10_n_2\,
      CO(0) => \osd_y1_r_reg[10]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \osd_y0_r_reg[10]_0\(10 downto 8),
      O(3) => \NLW_osd_y1_r_reg[10]_i_10_O_UNCONNECTED\(3),
      O(2 downto 0) => osd_y1_r3(10 downto 8),
      S(3) => '1',
      S(2) => \osd_y1_r[10]_i_16_n_0\,
      S(1) => \osd_y1_r[10]_i_17_n_0\,
      S(0) => \osd_y1_r[10]_i_18_n_0\
    );
\osd_y1_r_reg[10]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \osd_y1_r_reg[10]_i_7_n_0\,
      CO(3) => \osd_y1_r_reg[10]_i_15_n_0\,
      CO(2) => \osd_y1_r_reg[10]_i_15_n_1\,
      CO(1) => \osd_y1_r_reg[10]_i_15_n_2\,
      CO(0) => \osd_y1_r_reg[10]_i_15_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \osd_y0_r_reg[10]_0\(7 downto 4),
      O(3 downto 0) => osd_y1_r3(7 downto 4),
      S(3) => \osd_y1_r[10]_i_19_n_0\,
      S(2) => \osd_y1_r[10]_i_20_n_0\,
      S(1) => \osd_y1_r[10]_i_21_n_0\,
      S(0) => \osd_y1_r[10]_i_22_n_0\
    );
\osd_y1_r_reg[10]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \osd_y1_r_reg[10]_i_7_n_0\,
      CO(2) => \osd_y1_r_reg[10]_i_7_n_1\,
      CO(1) => \osd_y1_r_reg[10]_i_7_n_2\,
      CO(0) => \osd_y1_r_reg[10]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \osd_y0_r_reg[10]_0\(3 downto 0),
      O(3 downto 0) => osd_y1_r3(3 downto 0),
      S(3) => \osd_y1_r[10]_i_11_n_0\,
      S(2) => \osd_y1_r[10]_i_12_n_0\,
      S(1) => \osd_y1_r[10]_i_13_n_0\,
      S(0) => \osd_y1_r[10]_i_14_n_0\
    );
\osd_y1_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[3]_i_1_n_6\,
      Q => osd_y1_r(1)
    );
\osd_y1_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[3]_i_1_n_5\,
      Q => osd_y1_r(2)
    );
\osd_y1_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[3]_i_1_n_4\,
      Q => osd_y1_r(3)
    );
\osd_y1_r_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \osd_y1_r_reg[3]_i_1_n_0\,
      CO(2) => \osd_y1_r_reg[3]_i_1_n_1\,
      CO(1) => \osd_y1_r_reg[3]_i_1_n_2\,
      CO(0) => \osd_y1_r_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \osd_y1_r[3]_i_2_n_0\,
      DI(2) => \osd_y1_r[3]_i_3_n_0\,
      DI(1) => \osd_y1_r[3]_i_4_n_0\,
      DI(0) => \osd_y1_r[3]_i_5_n_0\,
      O(3) => \osd_y1_r_reg[3]_i_1_n_4\,
      O(2) => \osd_y1_r_reg[3]_i_1_n_5\,
      O(1) => \osd_y1_r_reg[3]_i_1_n_6\,
      O(0) => \osd_y1_r_reg[3]_i_1_n_7\,
      S(3) => \osd_y1_r[3]_i_6_n_0\,
      S(2) => \osd_y1_r[3]_i_7_n_0\,
      S(1) => \osd_y1_r[3]_i_8_n_0\,
      S(0) => \osd_y1_r[3]_i_9_n_0\
    );
\osd_y1_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[7]_i_1_n_7\,
      Q => osd_y1_r(4)
    );
\osd_y1_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[7]_i_1_n_6\,
      Q => osd_y1_r(5)
    );
\osd_y1_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[7]_i_1_n_5\,
      Q => osd_y1_r(6)
    );
\osd_y1_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[7]_i_1_n_4\,
      Q => osd_y1_r(7)
    );
\osd_y1_r_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \osd_y1_r_reg[3]_i_1_n_0\,
      CO(3) => \osd_y1_r_reg[7]_i_1_n_0\,
      CO(2) => \osd_y1_r_reg[7]_i_1_n_1\,
      CO(1) => \osd_y1_r_reg[7]_i_1_n_2\,
      CO(0) => \osd_y1_r_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \osd_y1_r[7]_i_2_n_0\,
      DI(2) => \osd_y1_r[7]_i_3_n_0\,
      DI(1) => \osd_y1_r[7]_i_4_n_0\,
      DI(0) => \osd_y1_r[7]_i_5_n_0\,
      O(3) => \osd_y1_r_reg[7]_i_1_n_4\,
      O(2) => \osd_y1_r_reg[7]_i_1_n_5\,
      O(1) => \osd_y1_r_reg[7]_i_1_n_6\,
      O(0) => \osd_y1_r_reg[7]_i_1_n_7\,
      S(3) => \osd_y1_r[7]_i_6_n_0\,
      S(2) => \osd_y1_r[7]_i_7_n_0\,
      S(1) => \osd_y1_r[7]_i_8_n_0\,
      S(0) => \osd_y1_r[7]_i_9_n_0\
    );
\osd_y1_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[10]_i_1_n_7\,
      Q => osd_y1_r(8)
    );
\osd_y1_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => pix_y_t112_out,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \osd_y1_r_reg[10]_i_1_n_6\,
      Q => osd_y1_r(9)
    );
pix_odd_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^osd_href_o\,
      I1 => pix_odd_reg,
      O => pix_odd
    );
\pix_x_t1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(0),
      O => \pix_x_t1[0]_i_2_n_0\
    );
\pix_x_t1[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(3),
      O => \pix_x_t1[0]_i_3_n_0\
    );
\pix_x_t1[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(2),
      O => \pix_x_t1[0]_i_4_n_0\
    );
\pix_x_t1[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(1),
      O => \pix_x_t1[0]_i_5_n_0\
    );
\pix_x_t1[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(0),
      O => \pix_x_t1[0]_i_6_n_0\
    );
\pix_x_t1[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(7),
      O => \pix_x_t1[4]_i_2_n_0\
    );
\pix_x_t1[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(6),
      O => \pix_x_t1[4]_i_3_n_0\
    );
\pix_x_t1[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(5),
      O => \pix_x_t1[4]_i_4_n_0\
    );
\pix_x_t1[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(4),
      O => \pix_x_t1[4]_i_5_n_0\
    );
\pix_x_t1[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(11),
      O => \pix_x_t1[8]_i_2_n_0\
    );
\pix_x_t1[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(10),
      O => \pix_x_t1[8]_i_3_n_0\
    );
\pix_x_t1[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(9),
      O => \pix_x_t1[8]_i_4_n_0\
    );
\pix_x_t1[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => dscale_href_o,
      I1 => href_t1,
      I2 => pix_x_t1_reg(8),
      O => \pix_x_t1[8]_i_5_n_0\
    );
\pix_x_t1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[0]_i_1_n_7\,
      Q => pix_x_t1_reg(0)
    );
\pix_x_t1_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_x_t1_reg[0]_i_1_n_0\,
      CO(2) => \pix_x_t1_reg[0]_i_1_n_1\,
      CO(1) => \pix_x_t1_reg[0]_i_1_n_2\,
      CO(0) => \pix_x_t1_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pix_x_t1[0]_i_2_n_0\,
      O(3) => \pix_x_t1_reg[0]_i_1_n_4\,
      O(2) => \pix_x_t1_reg[0]_i_1_n_5\,
      O(1) => \pix_x_t1_reg[0]_i_1_n_6\,
      O(0) => \pix_x_t1_reg[0]_i_1_n_7\,
      S(3) => \pix_x_t1[0]_i_3_n_0\,
      S(2) => \pix_x_t1[0]_i_4_n_0\,
      S(1) => \pix_x_t1[0]_i_5_n_0\,
      S(0) => \pix_x_t1[0]_i_6_n_0\
    );
\pix_x_t1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[8]_i_1_n_5\,
      Q => pix_x_t1_reg(10)
    );
\pix_x_t1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[8]_i_1_n_4\,
      Q => pix_x_t1_reg(11)
    );
\pix_x_t1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[0]_i_1_n_6\,
      Q => pix_x_t1_reg(1)
    );
\pix_x_t1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[0]_i_1_n_5\,
      Q => pix_x_t1_reg(2)
    );
\pix_x_t1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[0]_i_1_n_4\,
      Q => pix_x_t1_reg(3)
    );
\pix_x_t1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[4]_i_1_n_7\,
      Q => pix_x_t1_reg(4)
    );
\pix_x_t1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_x_t1_reg[0]_i_1_n_0\,
      CO(3) => \pix_x_t1_reg[4]_i_1_n_0\,
      CO(2) => \pix_x_t1_reg[4]_i_1_n_1\,
      CO(1) => \pix_x_t1_reg[4]_i_1_n_2\,
      CO(0) => \pix_x_t1_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_x_t1_reg[4]_i_1_n_4\,
      O(2) => \pix_x_t1_reg[4]_i_1_n_5\,
      O(1) => \pix_x_t1_reg[4]_i_1_n_6\,
      O(0) => \pix_x_t1_reg[4]_i_1_n_7\,
      S(3) => \pix_x_t1[4]_i_2_n_0\,
      S(2) => \pix_x_t1[4]_i_3_n_0\,
      S(1) => \pix_x_t1[4]_i_4_n_0\,
      S(0) => \pix_x_t1[4]_i_5_n_0\
    );
\pix_x_t1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[4]_i_1_n_6\,
      Q => pix_x_t1_reg(5)
    );
\pix_x_t1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[4]_i_1_n_5\,
      Q => pix_x_t1_reg(6)
    );
\pix_x_t1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[4]_i_1_n_4\,
      Q => pix_x_t1_reg(7)
    );
\pix_x_t1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[8]_i_1_n_7\,
      Q => pix_x_t1_reg(8)
    );
\pix_x_t1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_x_t1_reg[4]_i_1_n_0\,
      CO(3) => \NLW_pix_x_t1_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pix_x_t1_reg[8]_i_1_n_1\,
      CO(1) => \pix_x_t1_reg[8]_i_1_n_2\,
      CO(0) => \pix_x_t1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pix_x_t1_reg[8]_i_1_n_4\,
      O(2) => \pix_x_t1_reg[8]_i_1_n_5\,
      O(1) => \pix_x_t1_reg[8]_i_1_n_6\,
      O(0) => \pix_x_t1_reg[8]_i_1_n_7\,
      S(3) => \pix_x_t1[8]_i_2_n_0\,
      S(2) => \pix_x_t1[8]_i_3_n_0\,
      S(1) => \pix_x_t1[8]_i_4_n_0\,
      S(0) => \pix_x_t1[8]_i_5_n_0\
    );
\pix_x_t1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => dscale_href_o,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_x_t1_reg[8]_i_1_n_6\,
      Q => pix_x_t1_reg(9)
    );
\pix_y_t1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(0),
      I1 => crop_vsync_o,
      I2 => vsync_t1,
      O => \pix_y_t1[0]_i_1_n_0\
    );
\pix_y_t1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => crop_vsync_o,
      I1 => vsync_t1,
      I2 => dscale_href_o,
      I3 => href_t1,
      O => \pix_y_t1[10]_i_1_n_0\
    );
\pix_y_t1[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A006A6A"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(10),
      I1 => \pix_y_t1_reg__0\(9),
      I2 => \pix_y_t1[10]_i_3_n_0\,
      I3 => crop_vsync_o,
      I4 => vsync_t1,
      O => \pix_y_t1[10]_i_2_n_0\
    );
\pix_y_t1[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(8),
      I1 => \pix_y_t1_reg__0\(6),
      I2 => \pix_y_t1[9]_i_2_n_0\,
      I3 => \pix_y_t1_reg__0\(7),
      O => \pix_y_t1[10]_i_3_n_0\
    );
\pix_y_t1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6066"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(1),
      I1 => \pix_y_t1_reg__0\(0),
      I2 => crop_vsync_o,
      I3 => vsync_t1,
      O => \pix_y_t1[1]_i_1_n_0\
    );
\pix_y_t1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A006A6A"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(2),
      I1 => \pix_y_t1_reg__0\(1),
      I2 => \pix_y_t1_reg__0\(0),
      I3 => crop_vsync_o,
      I4 => vsync_t1,
      O => \pix_y_t1[2]_i_1_n_0\
    );
\pix_y_t1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA00006AAA6AAA"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(3),
      I1 => \pix_y_t1_reg__0\(2),
      I2 => \pix_y_t1_reg__0\(0),
      I3 => \pix_y_t1_reg__0\(1),
      I4 => crop_vsync_o,
      I5 => vsync_t1,
      O => \pix_y_t1[3]_i_1_n_0\
    );
\pix_y_t1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(4),
      I1 => \pix_y_t1_reg__0\(3),
      I2 => \pix_y_t1_reg__0\(1),
      I3 => \pix_y_t1_reg__0\(0),
      I4 => \pix_y_t1_reg__0\(2),
      I5 => pix_y_t112_out,
      O => \pix_y_t1[4]_i_1_n_0\
    );
\pix_y_t1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6066"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(5),
      I1 => \pix_y_t1[5]_i_2_n_0\,
      I2 => crop_vsync_o,
      I3 => vsync_t1,
      O => \pix_y_t1[5]_i_1_n_0\
    );
\pix_y_t1[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(4),
      I1 => \pix_y_t1_reg__0\(2),
      I2 => \pix_y_t1_reg__0\(0),
      I3 => \pix_y_t1_reg__0\(1),
      I4 => \pix_y_t1_reg__0\(3),
      O => \pix_y_t1[5]_i_2_n_0\
    );
\pix_y_t1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6066"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(6),
      I1 => \pix_y_t1[9]_i_2_n_0\,
      I2 => crop_vsync_o,
      I3 => vsync_t1,
      O => \pix_y_t1[6]_i_1_n_0\
    );
\pix_y_t1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A006A6A"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(7),
      I1 => \pix_y_t1_reg__0\(6),
      I2 => \pix_y_t1[9]_i_2_n_0\,
      I3 => crop_vsync_o,
      I4 => vsync_t1,
      O => \pix_y_t1[7]_i_1_n_0\
    );
\pix_y_t1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA00006AAA6AAA"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(8),
      I1 => \pix_y_t1_reg__0\(7),
      I2 => \pix_y_t1[9]_i_2_n_0\,
      I3 => \pix_y_t1_reg__0\(6),
      I4 => crop_vsync_o,
      I5 => vsync_t1,
      O => \pix_y_t1[8]_i_1_n_0\
    );
\pix_y_t1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(9),
      I1 => \pix_y_t1_reg__0\(8),
      I2 => \pix_y_t1_reg__0\(6),
      I3 => \pix_y_t1[9]_i_2_n_0\,
      I4 => \pix_y_t1_reg__0\(7),
      I5 => pix_y_t112_out,
      O => \pix_y_t1[9]_i_1_n_0\
    );
\pix_y_t1[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \pix_y_t1_reg__0\(5),
      I1 => \pix_y_t1_reg__0\(3),
      I2 => \pix_y_t1_reg__0\(1),
      I3 => \pix_y_t1_reg__0\(0),
      I4 => \pix_y_t1_reg__0\(2),
      I5 => \pix_y_t1_reg__0\(4),
      O => \pix_y_t1[9]_i_2_n_0\
    );
\pix_y_t1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[0]_i_1_n_0\,
      Q => \pix_y_t1_reg__0\(0)
    );
\pix_y_t1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[10]_i_2_n_0\,
      Q => \pix_y_t1_reg__0\(10)
    );
\pix_y_t1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[1]_i_1_n_0\,
      Q => \pix_y_t1_reg__0\(1)
    );
\pix_y_t1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[2]_i_1_n_0\,
      Q => \pix_y_t1_reg__0\(2)
    );
\pix_y_t1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[3]_i_1_n_0\,
      Q => \pix_y_t1_reg__0\(3)
    );
\pix_y_t1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[4]_i_1_n_0\,
      Q => \pix_y_t1_reg__0\(4)
    );
\pix_y_t1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[5]_i_1_n_0\,
      Q => \pix_y_t1_reg__0\(5)
    );
\pix_y_t1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[6]_i_1_n_0\,
      Q => \pix_y_t1_reg__0\(6)
    );
\pix_y_t1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[7]_i_1_n_0\,
      Q => \pix_y_t1_reg__0\(7)
    );
\pix_y_t1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[8]_i_1_n_0\,
      Q => \pix_y_t1_reg__0\(8)
    );
\pix_y_t1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \pix_y_t1[10]_i_1_n_0\,
      CLR => \pix_y_t1_reg[10]_0\,
      D => \pix_y_t1[9]_i_1_n_0\,
      Q => \pix_y_t1_reg__0\(9)
    );
\vsync_reg_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^osd_vsync\,
      I1 => s_osd_en,
      I2 => crop_vsync_o,
      O => osd_vsync_o
    );
vsync_t1_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \pix_y_t1_reg[10]_0\,
      D => crop_vsync_o,
      Q => vsync_t1
    );
vsync_t2_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \pix_y_t1_reg[10]_0\,
      D => vsync_t1,
      Q => vsync_t2
    );
vsync_t3_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => vsync_t2,
      Q => vsync_t3
    );
vsync_t4_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => vsync_t3,
      Q => vsync_t4
    );
vsync_t5_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => vsync_t4,
      Q => vsync_t5
    );
vsync_t6_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => href_t6_reg_0,
      D => vsync_t5,
      Q => \^osd_vsync\
    );
\y_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^osd_href_o\,
      I1 => osd_b_o(0),
      O => D(0)
    );
\y_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^osd_href_o\,
      I1 => osd_b_o(1),
      O => D(1)
    );
\y_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^osd_href_o\,
      I1 => osd_b_o(2),
      O => D(2)
    );
\y_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^osd_href_o\,
      I1 => osd_b_o(3),
      O => D(3)
    );
\y_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^osd_href_o\,
      I1 => osd_b_o(4),
      O => D(4)
    );
\y_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^osd_href_o\,
      I1 => osd_b_o(5),
      O => D(5)
    );
\y_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^osd_href_o\,
      I1 => osd_b_o(6),
      O => D(6)
    );
\y_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^osd_href_o\,
      I1 => osd_b_o(7),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_sobel is
  port (
    in_href : out STD_LOGIC;
    in_vsync : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk : in STD_LOGIC;
    out_href : in STD_LOGIC;
    out_vsync : in STD_LOGIC;
    s_module_reset : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_sobel_en : in STD_LOGIC;
    \in_r_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_sobel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_sobel is
  signal \g[10]_i_2_n_0\ : STD_LOGIC;
  signal \g[10]_i_3_n_0\ : STD_LOGIC;
  signal \g[3]_i_2_n_0\ : STD_LOGIC;
  signal \g[3]_i_3_n_0\ : STD_LOGIC;
  signal \g[3]_i_4_n_0\ : STD_LOGIC;
  signal \g[3]_i_5_n_0\ : STD_LOGIC;
  signal \g[7]_i_2_n_0\ : STD_LOGIC;
  signal \g[7]_i_3_n_0\ : STD_LOGIC;
  signal \g[7]_i_4_n_0\ : STD_LOGIC;
  signal \g[7]_i_5_n_0\ : STD_LOGIC;
  signal \g_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \g_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \g_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \g_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \g_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \g_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \g_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \g_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \g_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \g_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \g_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \g_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \g_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \g_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \g_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \g_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \g_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \g_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \g_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \g_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \g_reg_n_0_[0]\ : STD_LOGIC;
  signal \g_reg_n_0_[10]\ : STD_LOGIC;
  signal \g_reg_n_0_[1]\ : STD_LOGIC;
  signal \g_reg_n_0_[2]\ : STD_LOGIC;
  signal \g_reg_n_0_[3]\ : STD_LOGIC;
  signal \g_reg_n_0_[4]\ : STD_LOGIC;
  signal \g_reg_n_0_[5]\ : STD_LOGIC;
  signal \g_reg_n_0_[6]\ : STD_LOGIC;
  signal \g_reg_n_0_[7]\ : STD_LOGIC;
  signal \g_reg_n_0_[8]\ : STD_LOGIC;
  signal \g_reg_n_0_[9]\ : STD_LOGIC;
  signal gx : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gx0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gx0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gx0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gx0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gx0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gx0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gx0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gx0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gx0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gx0_carry__0_n_0\ : STD_LOGIC;
  signal \gx0_carry__0_n_1\ : STD_LOGIC;
  signal \gx0_carry__0_n_2\ : STD_LOGIC;
  signal \gx0_carry__0_n_3\ : STD_LOGIC;
  signal \gx0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gx0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \gx0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \gx0_carry__1_n_3\ : STD_LOGIC;
  signal gx0_carry_i_1_n_0 : STD_LOGIC;
  signal gx0_carry_i_2_n_0 : STD_LOGIC;
  signal gx0_carry_i_3_n_0 : STD_LOGIC;
  signal gx0_carry_i_4_n_0 : STD_LOGIC;
  signal gx0_carry_i_5_n_0 : STD_LOGIC;
  signal gx0_carry_i_6_n_0 : STD_LOGIC;
  signal gx0_carry_i_7_n_0 : STD_LOGIC;
  signal gx0_carry_i_8_n_0 : STD_LOGIC;
  signal gx0_carry_n_0 : STD_LOGIC;
  signal gx0_carry_n_1 : STD_LOGIC;
  signal gx0_carry_n_2 : STD_LOGIC;
  signal gx0_carry_n_3 : STD_LOGIC;
  signal gx1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gx10__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gx10__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gx10__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gx10__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gx10__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gx10__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gx10__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gx10__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gx10__1_carry__0_n_0\ : STD_LOGIC;
  signal \gx10__1_carry__0_n_1\ : STD_LOGIC;
  signal \gx10__1_carry__0_n_2\ : STD_LOGIC;
  signal \gx10__1_carry__0_n_3\ : STD_LOGIC;
  signal \gx10__1_carry__0_n_4\ : STD_LOGIC;
  signal \gx10__1_carry__0_n_5\ : STD_LOGIC;
  signal \gx10__1_carry__0_n_6\ : STD_LOGIC;
  signal \gx10__1_carry__0_n_7\ : STD_LOGIC;
  signal \gx10__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gx10__1_carry__1_n_2\ : STD_LOGIC;
  signal \gx10__1_carry__1_n_7\ : STD_LOGIC;
  signal \gx10__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \gx10__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \gx10__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \gx10__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \gx10__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \gx10__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \gx10__1_carry_n_0\ : STD_LOGIC;
  signal \gx10__1_carry_n_1\ : STD_LOGIC;
  signal \gx10__1_carry_n_2\ : STD_LOGIC;
  signal \gx10__1_carry_n_3\ : STD_LOGIC;
  signal \gx10__1_carry_n_4\ : STD_LOGIC;
  signal \gx10__1_carry_n_5\ : STD_LOGIC;
  signal \gx10__1_carry_n_6\ : STD_LOGIC;
  signal \gx10__1_carry_n_7\ : STD_LOGIC;
  signal gx12 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal gx2 : STD_LOGIC;
  signal \gx2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gx2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal gx2_carry_i_1_n_0 : STD_LOGIC;
  signal gx2_carry_i_2_n_0 : STD_LOGIC;
  signal gx2_carry_i_3_n_0 : STD_LOGIC;
  signal gx2_carry_i_4_n_0 : STD_LOGIC;
  signal gx2_carry_i_5_n_0 : STD_LOGIC;
  signal gx2_carry_i_6_n_0 : STD_LOGIC;
  signal gx2_carry_i_7_n_0 : STD_LOGIC;
  signal gx2_carry_i_8_n_0 : STD_LOGIC;
  signal gx2_carry_n_0 : STD_LOGIC;
  signal gx2_carry_n_1 : STD_LOGIC;
  signal gx2_carry_n_2 : STD_LOGIC;
  signal gx2_carry_n_3 : STD_LOGIC;
  signal gx3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gx30__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gx30__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gx30__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gx30__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gx30__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gx30__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gx30__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gx30__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gx30__1_carry__0_n_0\ : STD_LOGIC;
  signal \gx30__1_carry__0_n_1\ : STD_LOGIC;
  signal \gx30__1_carry__0_n_2\ : STD_LOGIC;
  signal \gx30__1_carry__0_n_3\ : STD_LOGIC;
  signal \gx30__1_carry__0_n_4\ : STD_LOGIC;
  signal \gx30__1_carry__0_n_5\ : STD_LOGIC;
  signal \gx30__1_carry__0_n_6\ : STD_LOGIC;
  signal \gx30__1_carry__0_n_7\ : STD_LOGIC;
  signal \gx30__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gx30__1_carry__1_n_2\ : STD_LOGIC;
  signal \gx30__1_carry__1_n_7\ : STD_LOGIC;
  signal \gx30__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \gx30__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \gx30__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \gx30__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \gx30__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \gx30__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \gx30__1_carry_n_0\ : STD_LOGIC;
  signal \gx30__1_carry_n_1\ : STD_LOGIC;
  signal \gx30__1_carry_n_2\ : STD_LOGIC;
  signal \gx30__1_carry_n_3\ : STD_LOGIC;
  signal \gx30__1_carry_n_4\ : STD_LOGIC;
  signal \gx30__1_carry_n_5\ : STD_LOGIC;
  signal \gx30__1_carry_n_6\ : STD_LOGIC;
  signal \gx30__1_carry_n_7\ : STD_LOGIC;
  signal gx32 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal gy : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gy0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gy0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gy0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gy0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gy0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gy0_carry__0_n_0\ : STD_LOGIC;
  signal \gy0_carry__0_n_1\ : STD_LOGIC;
  signal \gy0_carry__0_n_2\ : STD_LOGIC;
  signal \gy0_carry__0_n_3\ : STD_LOGIC;
  signal \gy0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \gy0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \gy0_carry__1_n_3\ : STD_LOGIC;
  signal gy0_carry_i_5_n_0 : STD_LOGIC;
  signal gy0_carry_i_6_n_0 : STD_LOGIC;
  signal gy0_carry_i_7_n_0 : STD_LOGIC;
  signal gy0_carry_i_8_n_0 : STD_LOGIC;
  signal gy0_carry_n_0 : STD_LOGIC;
  signal gy0_carry_n_1 : STD_LOGIC;
  signal gy0_carry_n_2 : STD_LOGIC;
  signal gy0_carry_n_3 : STD_LOGIC;
  signal gy1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gy10__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gy10__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gy10__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gy10__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gy10__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gy10__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gy10__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gy10__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gy10__1_carry__0_n_0\ : STD_LOGIC;
  signal \gy10__1_carry__0_n_1\ : STD_LOGIC;
  signal \gy10__1_carry__0_n_2\ : STD_LOGIC;
  signal \gy10__1_carry__0_n_3\ : STD_LOGIC;
  signal \gy10__1_carry__0_n_4\ : STD_LOGIC;
  signal \gy10__1_carry__0_n_5\ : STD_LOGIC;
  signal \gy10__1_carry__0_n_6\ : STD_LOGIC;
  signal \gy10__1_carry__0_n_7\ : STD_LOGIC;
  signal \gy10__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gy10__1_carry__1_n_2\ : STD_LOGIC;
  signal \gy10__1_carry__1_n_7\ : STD_LOGIC;
  signal \gy10__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \gy10__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \gy10__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \gy10__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \gy10__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \gy10__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \gy10__1_carry_n_0\ : STD_LOGIC;
  signal \gy10__1_carry_n_1\ : STD_LOGIC;
  signal \gy10__1_carry_n_2\ : STD_LOGIC;
  signal \gy10__1_carry_n_3\ : STD_LOGIC;
  signal \gy10__1_carry_n_4\ : STD_LOGIC;
  signal \gy10__1_carry_n_5\ : STD_LOGIC;
  signal \gy10__1_carry_n_6\ : STD_LOGIC;
  signal \gy10__1_carry_n_7\ : STD_LOGIC;
  signal gy12 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal gy2 : STD_LOGIC;
  signal \gy2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gy2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal gy2_carry_i_1_n_0 : STD_LOGIC;
  signal gy2_carry_i_2_n_0 : STD_LOGIC;
  signal gy2_carry_i_3_n_0 : STD_LOGIC;
  signal gy2_carry_i_4_n_0 : STD_LOGIC;
  signal gy2_carry_i_5_n_0 : STD_LOGIC;
  signal gy2_carry_i_6_n_0 : STD_LOGIC;
  signal gy2_carry_i_7_n_0 : STD_LOGIC;
  signal gy2_carry_i_8_n_0 : STD_LOGIC;
  signal gy2_carry_n_0 : STD_LOGIC;
  signal gy2_carry_n_1 : STD_LOGIC;
  signal gy2_carry_n_2 : STD_LOGIC;
  signal gy2_carry_n_3 : STD_LOGIC;
  signal gy3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gy30__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gy30__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gy30__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gy30__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gy30__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gy30__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gy30__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gy30__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gy30__1_carry__0_n_0\ : STD_LOGIC;
  signal \gy30__1_carry__0_n_1\ : STD_LOGIC;
  signal \gy30__1_carry__0_n_2\ : STD_LOGIC;
  signal \gy30__1_carry__0_n_3\ : STD_LOGIC;
  signal \gy30__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gy30__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \gy30__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \gy30__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \gy30__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \gy30__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \gy30__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \gy30__1_carry_n_0\ : STD_LOGIC;
  signal \gy30__1_carry_n_1\ : STD_LOGIC;
  signal \gy30__1_carry_n_2\ : STD_LOGIC;
  signal \gy30__1_carry_n_3\ : STD_LOGIC;
  signal gy32 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0\ : STD_LOGIC;
  signal \href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0\ : STD_LOGIC;
  signal href_dly_reg_c_0_n_0 : STD_LOGIC;
  signal href_dly_reg_c_1_n_0 : STD_LOGIC;
  signal href_dly_reg_c_2_n_0 : STD_LOGIC;
  signal href_dly_reg_c_3_n_0 : STD_LOGIC;
  signal href_dly_reg_c_4_n_0 : STD_LOGIC;
  signal href_dly_reg_c_n_0 : STD_LOGIC;
  signal href_dly_reg_gate_n_0 : STD_LOGIC;
  signal line2buf_n_0 : STD_LOGIC;
  signal line2buf_n_1 : STD_LOGIC;
  signal line2buf_n_2 : STD_LOGIC;
  signal line2buf_n_3 : STD_LOGIC;
  signal line2buf_n_4 : STD_LOGIC;
  signal line2buf_n_5 : STD_LOGIC;
  signal line2buf_n_6 : STD_LOGIC;
  signal line2buf_n_7 : STD_LOGIC;
  signal \out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \out[0]_i_1_n_0\ : STD_LOGIC;
  signal \out[1]_i_1_n_0\ : STD_LOGIC;
  signal \out[2]_i_1_n_0\ : STD_LOGIC;
  signal \out[3]_i_1_n_0\ : STD_LOGIC;
  signal \out[4]_i_1_n_0\ : STD_LOGIC;
  signal \out[5]_i_1_n_0\ : STD_LOGIC;
  signal \out[6]_i_1_n_0\ : STD_LOGIC;
  signal \out[7]_i_1_n_0\ : STD_LOGIC;
  signal p11 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p13 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p22 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p31 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p31[7]_i_1_n_0\ : STD_LOGIC;
  signal p33 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal sobel_href : STD_LOGIC;
  signal sobel_vsync : STD_LOGIC;
  signal tap1x : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0\ : STD_LOGIC;
  signal \vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0\ : STD_LOGIC;
  signal vsync_dly_reg_gate_n_0 : STD_LOGIC;
  signal \NLW_g_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_g_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gx0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gx0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gx10__1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gx10__1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_gx2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gx2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gx2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gx30__1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gx30__1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gy0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gy0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gy10__1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gy10__1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_gy2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gy2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gy2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gy30__1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gy30__1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_reg[22]_i_1__0\ : label is "soft_lutpair50";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of gx0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gx0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gx0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM : string;
  attribute HLUTNM of \gx10__1_carry__0_i_1\ : label is "lutpair19";
  attribute HLUTNM of \gx10__1_carry__0_i_2\ : label is "lutpair18";
  attribute HLUTNM of \gx10__1_carry__0_i_3\ : label is "lutpair17";
  attribute HLUTNM of \gx10__1_carry__0_i_4\ : label is "lutpair16";
  attribute HLUTNM of \gx10__1_carry__0_i_6\ : label is "lutpair19";
  attribute HLUTNM of \gx10__1_carry__0_i_7\ : label is "lutpair18";
  attribute HLUTNM of \gx10__1_carry__0_i_8\ : label is "lutpair17";
  attribute HLUTNM of \gx10__1_carry_i_1\ : label is "lutpair15";
  attribute HLUTNM of \gx10__1_carry_i_3\ : label is "lutpair16";
  attribute HLUTNM of \gx10__1_carry_i_4\ : label is "lutpair15";
  attribute HLUTNM of \gx30__1_carry__0_i_1\ : label is "lutpair14";
  attribute HLUTNM of \gx30__1_carry__0_i_2\ : label is "lutpair13";
  attribute HLUTNM of \gx30__1_carry__0_i_3\ : label is "lutpair12";
  attribute HLUTNM of \gx30__1_carry__0_i_4\ : label is "lutpair11";
  attribute HLUTNM of \gx30__1_carry__0_i_6\ : label is "lutpair14";
  attribute HLUTNM of \gx30__1_carry__0_i_7\ : label is "lutpair13";
  attribute HLUTNM of \gx30__1_carry__0_i_8\ : label is "lutpair12";
  attribute HLUTNM of \gx30__1_carry_i_1\ : label is "lutpair10";
  attribute HLUTNM of \gx30__1_carry_i_3\ : label is "lutpair11";
  attribute HLUTNM of \gx30__1_carry_i_4\ : label is "lutpair10";
  attribute METHODOLOGY_DRC_VIOS of gy0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gy0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gy0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \gy10__1_carry__0_i_1\ : label is "lutpair9";
  attribute HLUTNM of \gy10__1_carry__0_i_2\ : label is "lutpair8";
  attribute HLUTNM of \gy10__1_carry__0_i_3\ : label is "lutpair7";
  attribute HLUTNM of \gy10__1_carry__0_i_4\ : label is "lutpair6";
  attribute HLUTNM of \gy10__1_carry__0_i_6\ : label is "lutpair9";
  attribute HLUTNM of \gy10__1_carry__0_i_7\ : label is "lutpair8";
  attribute HLUTNM of \gy10__1_carry__0_i_8\ : label is "lutpair7";
  attribute HLUTNM of \gy10__1_carry_i_1\ : label is "lutpair5";
  attribute HLUTNM of \gy10__1_carry_i_3\ : label is "lutpair6";
  attribute HLUTNM of \gy10__1_carry_i_4\ : label is "lutpair5";
  attribute HLUTNM of \gy30__1_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \gy30__1_carry__0_i_2\ : label is "lutpair3";
  attribute HLUTNM of \gy30__1_carry__0_i_3\ : label is "lutpair2";
  attribute HLUTNM of \gy30__1_carry__0_i_4\ : label is "lutpair1";
  attribute HLUTNM of \gy30__1_carry__0_i_6\ : label is "lutpair4";
  attribute HLUTNM of \gy30__1_carry__0_i_7\ : label is "lutpair3";
  attribute HLUTNM of \gy30__1_carry__0_i_8\ : label is "lutpair2";
  attribute HLUTNM of \gy30__1_carry_i_1\ : label is "lutpair0";
  attribute HLUTNM of \gy30__1_carry_i_3\ : label is "lutpair1";
  attribute HLUTNM of \gy30__1_carry_i_4\ : label is "lutpair0";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/href_dly_reg ";
  attribute srl_name : string;
  attribute srl_name of \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 ";
  attribute SOFT_HLUTNM of href_dly_reg_gate : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of href_reg_i_1 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \out[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \out[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \out[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \out[3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \out[4]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \out[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \out[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \out[7]_i_1\ : label is "soft_lutpair51";
  attribute srl_bus_name of \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/vsync_dly_reg ";
  attribute srl_name of \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 ";
  attribute SOFT_HLUTNM of vsync_dly_reg_gate : label is "soft_lutpair55";
begin
\data_reg[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => sobel_href,
      I1 => \out\(0),
      I2 => \in_r_reg[7]\(0),
      I3 => s_sobel_en,
      O => D(0)
    );
\data_reg[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => sobel_href,
      I1 => \out\(1),
      I2 => \in_r_reg[7]\(1),
      I3 => s_sobel_en,
      O => D(1)
    );
\data_reg[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => sobel_href,
      I1 => \out\(2),
      I2 => \in_r_reg[7]\(2),
      I3 => s_sobel_en,
      O => D(2)
    );
\data_reg[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => sobel_href,
      I1 => \out\(3),
      I2 => \in_r_reg[7]\(3),
      I3 => s_sobel_en,
      O => D(3)
    );
\data_reg[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => sobel_href,
      I1 => \out\(4),
      I2 => \in_r_reg[7]\(4),
      I3 => s_sobel_en,
      O => D(4)
    );
\data_reg[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => sobel_href,
      I1 => \out\(5),
      I2 => \in_r_reg[7]\(5),
      I3 => s_sobel_en,
      O => D(5)
    );
\data_reg[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => sobel_href,
      I1 => \out\(6),
      I2 => \in_r_reg[7]\(6),
      I3 => s_sobel_en,
      O => D(6)
    );
\data_reg[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => sobel_href,
      I1 => \out\(7),
      I2 => \in_r_reg[7]\(7),
      I3 => s_sobel_en,
      O => D(7)
    );
\g[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gx(9),
      I1 => gy(9),
      O => \g[10]_i_2_n_0\
    );
\g[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gx(8),
      I1 => gy(8),
      O => \g[10]_i_3_n_0\
    );
\g[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gx(3),
      I1 => gy(3),
      O => \g[3]_i_2_n_0\
    );
\g[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gx(2),
      I1 => gy(2),
      O => \g[3]_i_3_n_0\
    );
\g[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gx(1),
      I1 => gy(1),
      O => \g[3]_i_4_n_0\
    );
\g[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gx(0),
      I1 => gy(0),
      O => \g[3]_i_5_n_0\
    );
\g[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gx(7),
      I1 => gy(7),
      O => \g[7]_i_2_n_0\
    );
\g[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gx(6),
      I1 => gy(6),
      O => \g[7]_i_3_n_0\
    );
\g[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gx(5),
      I1 => gy(5),
      O => \g[7]_i_4_n_0\
    );
\g[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gx(4),
      I1 => gy(4),
      O => \g[7]_i_5_n_0\
    );
\g_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[3]_i_1_n_7\,
      Q => \g_reg_n_0_[0]\
    );
\g_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[10]_i_1_n_1\,
      Q => \g_reg_n_0_[10]\
    );
\g_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \g_reg[7]_i_1_n_0\,
      CO(3) => \NLW_g_reg[10]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \g_reg[10]_i_1_n_1\,
      CO(1) => \NLW_g_reg[10]_i_1_CO_UNCONNECTED\(1),
      CO(0) => \g_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => gx(9 downto 8),
      O(3 downto 2) => \NLW_g_reg[10]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \g_reg[10]_i_1_n_6\,
      O(0) => \g_reg[10]_i_1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \g[10]_i_2_n_0\,
      S(0) => \g[10]_i_3_n_0\
    );
\g_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[3]_i_1_n_6\,
      Q => \g_reg_n_0_[1]\
    );
\g_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[3]_i_1_n_5\,
      Q => \g_reg_n_0_[2]\
    );
\g_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[3]_i_1_n_4\,
      Q => \g_reg_n_0_[3]\
    );
\g_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \g_reg[3]_i_1_n_0\,
      CO(2) => \g_reg[3]_i_1_n_1\,
      CO(1) => \g_reg[3]_i_1_n_2\,
      CO(0) => \g_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => gx(3 downto 0),
      O(3) => \g_reg[3]_i_1_n_4\,
      O(2) => \g_reg[3]_i_1_n_5\,
      O(1) => \g_reg[3]_i_1_n_6\,
      O(0) => \g_reg[3]_i_1_n_7\,
      S(3) => \g[3]_i_2_n_0\,
      S(2) => \g[3]_i_3_n_0\,
      S(1) => \g[3]_i_4_n_0\,
      S(0) => \g[3]_i_5_n_0\
    );
\g_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[7]_i_1_n_7\,
      Q => \g_reg_n_0_[4]\
    );
\g_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[7]_i_1_n_6\,
      Q => \g_reg_n_0_[5]\
    );
\g_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[7]_i_1_n_5\,
      Q => \g_reg_n_0_[6]\
    );
\g_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[7]_i_1_n_4\,
      Q => \g_reg_n_0_[7]\
    );
\g_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \g_reg[3]_i_1_n_0\,
      CO(3) => \g_reg[7]_i_1_n_0\,
      CO(2) => \g_reg[7]_i_1_n_1\,
      CO(1) => \g_reg[7]_i_1_n_2\,
      CO(0) => \g_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => gx(7 downto 4),
      O(3) => \g_reg[7]_i_1_n_4\,
      O(2) => \g_reg[7]_i_1_n_5\,
      O(1) => \g_reg[7]_i_1_n_6\,
      O(0) => \g_reg[7]_i_1_n_7\,
      S(3) => \g[7]_i_2_n_0\,
      S(2) => \g[7]_i_3_n_0\,
      S(1) => \g[7]_i_4_n_0\,
      S(0) => \g[7]_i_5_n_0\
    );
\g_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[10]_i_1_n_7\,
      Q => \g_reg_n_0_[8]\
    );
\g_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \g_reg[10]_i_1_n_6\,
      Q => \g_reg_n_0_[9]\
    );
gx0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gx0_carry_n_0,
      CO(2) => gx0_carry_n_1,
      CO(1) => gx0_carry_n_2,
      CO(0) => gx0_carry_n_3,
      CYINIT => '1',
      DI(3) => gx0_carry_i_1_n_0,
      DI(2) => gx0_carry_i_2_n_0,
      DI(1) => gx0_carry_i_3_n_0,
      DI(0) => gx0_carry_i_4_n_0,
      O(3 downto 0) => gx0(3 downto 0),
      S(3) => gx0_carry_i_5_n_0,
      S(2) => gx0_carry_i_6_n_0,
      S(1) => gx0_carry_i_7_n_0,
      S(0) => gx0_carry_i_8_n_0
    );
\gx0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gx0_carry_n_0,
      CO(3) => \gx0_carry__0_n_0\,
      CO(2) => \gx0_carry__0_n_1\,
      CO(1) => \gx0_carry__0_n_2\,
      CO(0) => \gx0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gx0_carry__0_i_1_n_0\,
      DI(2) => \gx0_carry__0_i_2_n_0\,
      DI(1) => \gx0_carry__0_i_3_n_0\,
      DI(0) => \gx0_carry__0_i_4_n_0\,
      O(3 downto 0) => gx0(7 downto 4),
      S(3) => \gx0_carry__0_i_5_n_0\,
      S(2) => \gx0_carry__0_i_6_n_0\,
      S(1) => \gx0_carry__0_i_7_n_0\,
      S(0) => \gx0_carry__0_i_8_n_0\
    );
\gx0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(7),
      I1 => gx1(7),
      I2 => gx2,
      O => \gx0_carry__0_i_1_n_0\
    );
\gx0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(6),
      I1 => gx1(6),
      I2 => gx2,
      O => \gx0_carry__0_i_2_n_0\
    );
\gx0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(5),
      I1 => gx1(5),
      I2 => gx2,
      O => \gx0_carry__0_i_3_n_0\
    );
\gx0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(4),
      I1 => gx1(4),
      I2 => gx2,
      O => \gx0_carry__0_i_4_n_0\
    );
\gx0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(7),
      I1 => gx1(7),
      O => \gx0_carry__0_i_5_n_0\
    );
\gx0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(6),
      I1 => gx1(6),
      O => \gx0_carry__0_i_6_n_0\
    );
\gx0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(5),
      I1 => gx1(5),
      O => \gx0_carry__0_i_7_n_0\
    );
\gx0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(4),
      I1 => gx1(4),
      O => \gx0_carry__0_i_8_n_0\
    );
\gx0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx0_carry__0_n_0\,
      CO(3 downto 1) => \NLW_gx0_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gx0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gx0_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_gx0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => gx0(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \gx0_carry__1_i_2_n_0\,
      S(0) => \gx0_carry__1_i_3_n_0\
    );
\gx0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(8),
      I1 => gx1(8),
      I2 => gx2,
      O => \gx0_carry__1_i_1_n_0\
    );
\gx0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(9),
      I1 => gx1(9),
      O => \gx0_carry__1_i_2_n_0\
    );
\gx0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(8),
      I1 => gx1(8),
      O => \gx0_carry__1_i_3_n_0\
    );
gx0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(3),
      I1 => gx1(3),
      I2 => gx2,
      O => gx0_carry_i_1_n_0
    );
gx0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(2),
      I1 => gx1(2),
      I2 => gx2,
      O => gx0_carry_i_2_n_0
    );
gx0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(1),
      I1 => gx1(1),
      I2 => gx2,
      O => gx0_carry_i_3_n_0
    );
gx0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(0),
      I1 => gx1(0),
      I2 => gx2,
      O => gx0_carry_i_4_n_0
    );
gx0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(3),
      I1 => gx1(3),
      O => gx0_carry_i_5_n_0
    );
gx0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(2),
      I1 => gx1(2),
      O => gx0_carry_i_6_n_0
    );
gx0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(1),
      I1 => gx1(1),
      O => gx0_carry_i_7_n_0
    );
gx0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(0),
      I1 => gx1(0),
      O => gx0_carry_i_8_n_0
    );
\gx10__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gx10__1_carry_n_0\,
      CO(2) => \gx10__1_carry_n_1\,
      CO(1) => \gx10__1_carry_n_2\,
      CO(0) => \gx10__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \gx10__1_carry_i_1_n_0\,
      DI(2) => \gx10__1_carry_i_2_n_0\,
      DI(1 downto 0) => p11(1 downto 0),
      O(3) => \gx10__1_carry_n_4\,
      O(2) => \gx10__1_carry_n_5\,
      O(1) => \gx10__1_carry_n_6\,
      O(0) => \gx10__1_carry_n_7\,
      S(3) => \gx10__1_carry_i_3_n_0\,
      S(2) => \gx10__1_carry_i_4_n_0\,
      S(1) => \gx10__1_carry_i_5_n_0\,
      S(0) => \gx10__1_carry_i_6_n_0\
    );
\gx10__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx10__1_carry_n_0\,
      CO(3) => \gx10__1_carry__0_n_0\,
      CO(2) => \gx10__1_carry__0_n_1\,
      CO(1) => \gx10__1_carry__0_n_2\,
      CO(0) => \gx10__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gx10__1_carry__0_i_1_n_0\,
      DI(2) => \gx10__1_carry__0_i_2_n_0\,
      DI(1) => \gx10__1_carry__0_i_3_n_0\,
      DI(0) => \gx10__1_carry__0_i_4_n_0\,
      O(3) => \gx10__1_carry__0_n_4\,
      O(2) => \gx10__1_carry__0_n_5\,
      O(1) => \gx10__1_carry__0_n_6\,
      O(0) => \gx10__1_carry__0_n_7\,
      S(3) => \gx10__1_carry__0_i_5_n_0\,
      S(2) => \gx10__1_carry__0_i_6_n_0\,
      S(1) => \gx10__1_carry__0_i_7_n_0\,
      S(0) => \gx10__1_carry__0_i_8_n_0\
    );
\gx10__1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx12(6),
      I1 => p31(6),
      I2 => p11(6),
      O => \gx10__1_carry__0_i_1_n_0\
    );
\gx10__1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx12(5),
      I1 => p31(5),
      I2 => p11(5),
      O => \gx10__1_carry__0_i_2_n_0\
    );
\gx10__1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx12(4),
      I1 => p31(4),
      I2 => p11(4),
      O => \gx10__1_carry__0_i_3_n_0\
    );
\gx10__1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx12(3),
      I1 => p31(3),
      I2 => p11(3),
      O => \gx10__1_carry__0_i_4_n_0\
    );
\gx10__1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gx10__1_carry__0_i_1_n_0\,
      I1 => p31(7),
      I2 => gx12(7),
      I3 => p11(7),
      O => \gx10__1_carry__0_i_5_n_0\
    );
\gx10__1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx12(6),
      I1 => p31(6),
      I2 => p11(6),
      I3 => \gx10__1_carry__0_i_2_n_0\,
      O => \gx10__1_carry__0_i_6_n_0\
    );
\gx10__1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx12(5),
      I1 => p31(5),
      I2 => p11(5),
      I3 => \gx10__1_carry__0_i_3_n_0\,
      O => \gx10__1_carry__0_i_7_n_0\
    );
\gx10__1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx12(4),
      I1 => p31(4),
      I2 => p11(4),
      I3 => \gx10__1_carry__0_i_4_n_0\,
      O => \gx10__1_carry__0_i_8_n_0\
    );
\gx10__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx10__1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gx10__1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gx10__1_carry__1_n_2\,
      CO(0) => \NLW_gx10__1_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => gx12(8),
      O(3 downto 1) => \NLW_gx10__1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gx10__1_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \gx10__1_carry__1_i_1_n_0\
    );
\gx10__1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => p11(7),
      I1 => p31(7),
      I2 => gx12(7),
      I3 => gx12(8),
      O => \gx10__1_carry__1_i_1_n_0\
    );
\gx10__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx12(2),
      I1 => p31(2),
      I2 => p11(2),
      O => \gx10__1_carry_i_1_n_0\
    );
\gx10__1_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p11(2),
      I1 => gx12(2),
      I2 => p31(2),
      O => \gx10__1_carry_i_2_n_0\
    );
\gx10__1_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx12(3),
      I1 => p31(3),
      I2 => p11(3),
      I3 => \gx10__1_carry_i_1_n_0\,
      O => \gx10__1_carry_i_3_n_0\
    );
\gx10__1_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => gx12(2),
      I1 => p31(2),
      I2 => p11(2),
      I3 => p31(1),
      I4 => gx12(1),
      O => \gx10__1_carry_i_4_n_0\
    );
\gx10__1_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gx12(1),
      I1 => p31(1),
      I2 => p11(1),
      O => \gx10__1_carry_i_5_n_0\
    );
\gx10__1_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p11(0),
      I1 => p31(0),
      O => \gx10__1_carry_i_6_n_0\
    );
\gx1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx10__1_carry_n_7\,
      Q => gx1(0)
    );
\gx1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx10__1_carry_n_6\,
      Q => gx1(1)
    );
\gx1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx10__1_carry_n_5\,
      Q => gx1(2)
    );
\gx1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx10__1_carry_n_4\,
      Q => gx1(3)
    );
\gx1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx10__1_carry__0_n_7\,
      Q => gx1(4)
    );
\gx1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx10__1_carry__0_n_6\,
      Q => gx1(5)
    );
\gx1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx10__1_carry__0_n_5\,
      Q => gx1(6)
    );
\gx1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx10__1_carry__0_n_4\,
      Q => gx1(7)
    );
\gx1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx10__1_carry__1_n_7\,
      Q => gx1(8)
    );
\gx1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx10__1_carry__1_n_2\,
      Q => gx1(9)
    );
gx2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gx2_carry_n_0,
      CO(2) => gx2_carry_n_1,
      CO(1) => gx2_carry_n_2,
      CO(0) => gx2_carry_n_3,
      CYINIT => '0',
      DI(3) => gx2_carry_i_1_n_0,
      DI(2) => gx2_carry_i_2_n_0,
      DI(1) => gx2_carry_i_3_n_0,
      DI(0) => gx2_carry_i_4_n_0,
      O(3 downto 0) => NLW_gx2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gx2_carry_i_5_n_0,
      S(2) => gx2_carry_i_6_n_0,
      S(1) => gx2_carry_i_7_n_0,
      S(0) => gx2_carry_i_8_n_0
    );
\gx2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gx2_carry_n_0,
      CO(3 downto 1) => \NLW_gx2_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => gx2,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gx2_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_gx2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gx2_carry__0_i_2_n_0\
    );
\gx2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gx1(8),
      I1 => gx3(8),
      I2 => gx3(9),
      I3 => gx1(9),
      O => \gx2_carry__0_i_1_n_0\
    );
\gx2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gx1(8),
      I1 => gx3(8),
      I2 => gx1(9),
      I3 => gx3(9),
      O => \gx2_carry__0_i_2_n_0\
    );
gx2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gx1(6),
      I1 => gx3(6),
      I2 => gx3(7),
      I3 => gx1(7),
      O => gx2_carry_i_1_n_0
    );
gx2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gx1(4),
      I1 => gx3(4),
      I2 => gx3(5),
      I3 => gx1(5),
      O => gx2_carry_i_2_n_0
    );
gx2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gx1(2),
      I1 => gx3(2),
      I2 => gx3(3),
      I3 => gx1(3),
      O => gx2_carry_i_3_n_0
    );
gx2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gx1(0),
      I1 => gx3(0),
      I2 => gx3(1),
      I3 => gx1(1),
      O => gx2_carry_i_4_n_0
    );
gx2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gx1(6),
      I1 => gx3(6),
      I2 => gx1(7),
      I3 => gx3(7),
      O => gx2_carry_i_5_n_0
    );
gx2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gx1(4),
      I1 => gx3(4),
      I2 => gx1(5),
      I3 => gx3(5),
      O => gx2_carry_i_6_n_0
    );
gx2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gx1(2),
      I1 => gx3(2),
      I2 => gx1(3),
      I3 => gx3(3),
      O => gx2_carry_i_7_n_0
    );
gx2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gx1(0),
      I1 => gx3(0),
      I2 => gx1(1),
      I3 => gx3(1),
      O => gx2_carry_i_8_n_0
    );
\gx30__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gx30__1_carry_n_0\,
      CO(2) => \gx30__1_carry_n_1\,
      CO(1) => \gx30__1_carry_n_2\,
      CO(0) => \gx30__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \gx30__1_carry_i_1_n_0\,
      DI(2) => \gx30__1_carry_i_2_n_0\,
      DI(1 downto 0) => p13(1 downto 0),
      O(3) => \gx30__1_carry_n_4\,
      O(2) => \gx30__1_carry_n_5\,
      O(1) => \gx30__1_carry_n_6\,
      O(0) => \gx30__1_carry_n_7\,
      S(3) => \gx30__1_carry_i_3_n_0\,
      S(2) => \gx30__1_carry_i_4_n_0\,
      S(1) => \gx30__1_carry_i_5_n_0\,
      S(0) => \gx30__1_carry_i_6_n_0\
    );
\gx30__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx30__1_carry_n_0\,
      CO(3) => \gx30__1_carry__0_n_0\,
      CO(2) => \gx30__1_carry__0_n_1\,
      CO(1) => \gx30__1_carry__0_n_2\,
      CO(0) => \gx30__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gx30__1_carry__0_i_1_n_0\,
      DI(2) => \gx30__1_carry__0_i_2_n_0\,
      DI(1) => \gx30__1_carry__0_i_3_n_0\,
      DI(0) => \gx30__1_carry__0_i_4_n_0\,
      O(3) => \gx30__1_carry__0_n_4\,
      O(2) => \gx30__1_carry__0_n_5\,
      O(1) => \gx30__1_carry__0_n_6\,
      O(0) => \gx30__1_carry__0_n_7\,
      S(3) => \gx30__1_carry__0_i_5_n_0\,
      S(2) => \gx30__1_carry__0_i_6_n_0\,
      S(1) => \gx30__1_carry__0_i_7_n_0\,
      S(0) => \gx30__1_carry__0_i_8_n_0\
    );
\gx30__1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx32(6),
      I1 => p33(6),
      I2 => p13(6),
      O => \gx30__1_carry__0_i_1_n_0\
    );
\gx30__1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx32(5),
      I1 => p33(5),
      I2 => p13(5),
      O => \gx30__1_carry__0_i_2_n_0\
    );
\gx30__1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx32(4),
      I1 => p33(4),
      I2 => p13(4),
      O => \gx30__1_carry__0_i_3_n_0\
    );
\gx30__1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx32(3),
      I1 => p33(3),
      I2 => p13(3),
      O => \gx30__1_carry__0_i_4_n_0\
    );
\gx30__1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gx30__1_carry__0_i_1_n_0\,
      I1 => p33(7),
      I2 => gx32(7),
      I3 => p13(7),
      O => \gx30__1_carry__0_i_5_n_0\
    );
\gx30__1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx32(6),
      I1 => p33(6),
      I2 => p13(6),
      I3 => \gx30__1_carry__0_i_2_n_0\,
      O => \gx30__1_carry__0_i_6_n_0\
    );
\gx30__1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx32(5),
      I1 => p33(5),
      I2 => p13(5),
      I3 => \gx30__1_carry__0_i_3_n_0\,
      O => \gx30__1_carry__0_i_7_n_0\
    );
\gx30__1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx32(4),
      I1 => p33(4),
      I2 => p13(4),
      I3 => \gx30__1_carry__0_i_4_n_0\,
      O => \gx30__1_carry__0_i_8_n_0\
    );
\gx30__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx30__1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gx30__1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gx30__1_carry__1_n_2\,
      CO(0) => \NLW_gx30__1_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => gx32(8),
      O(3 downto 1) => \NLW_gx30__1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gx30__1_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \gx30__1_carry__1_i_1_n_0\
    );
\gx30__1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => p13(7),
      I1 => p33(7),
      I2 => gx32(7),
      I3 => gx32(8),
      O => \gx30__1_carry__1_i_1_n_0\
    );
\gx30__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx32(2),
      I1 => p33(2),
      I2 => p13(2),
      O => \gx30__1_carry_i_1_n_0\
    );
\gx30__1_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p13(2),
      I1 => gx32(2),
      I2 => p33(2),
      O => \gx30__1_carry_i_2_n_0\
    );
\gx30__1_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx32(3),
      I1 => p33(3),
      I2 => p13(3),
      I3 => \gx30__1_carry_i_1_n_0\,
      O => \gx30__1_carry_i_3_n_0\
    );
\gx30__1_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => gx32(2),
      I1 => p33(2),
      I2 => p13(2),
      I3 => p33(1),
      I4 => gx32(1),
      O => \gx30__1_carry_i_4_n_0\
    );
\gx30__1_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gx32(1),
      I1 => p33(1),
      I2 => p13(1),
      O => \gx30__1_carry_i_5_n_0\
    );
\gx30__1_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p13(0),
      I1 => p33(0),
      O => \gx30__1_carry_i_6_n_0\
    );
\gx3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx30__1_carry_n_7\,
      Q => gx3(0)
    );
\gx3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx30__1_carry_n_6\,
      Q => gx3(1)
    );
\gx3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx30__1_carry_n_5\,
      Q => gx3(2)
    );
\gx3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx30__1_carry_n_4\,
      Q => gx3(3)
    );
\gx3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx30__1_carry__0_n_7\,
      Q => gx3(4)
    );
\gx3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx30__1_carry__0_n_6\,
      Q => gx3(5)
    );
\gx3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx30__1_carry__0_n_5\,
      Q => gx3(6)
    );
\gx3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx30__1_carry__0_n_4\,
      Q => gx3(7)
    );
\gx3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx30__1_carry__1_n_7\,
      Q => gx3(8)
    );
\gx3_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx30__1_carry__1_n_2\,
      Q => gx3(9)
    );
\gx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx0(0),
      Q => gx(0)
    );
\gx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx0(1),
      Q => gx(1)
    );
\gx_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx0(2),
      Q => gx(2)
    );
\gx_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx0(3),
      Q => gx(3)
    );
\gx_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx0(4),
      Q => gx(4)
    );
\gx_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx0(5),
      Q => gx(5)
    );
\gx_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx0(6),
      Q => gx(6)
    );
\gx_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx0(7),
      Q => gx(7)
    );
\gx_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx0(8),
      Q => gx(8)
    );
\gx_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx0(9),
      Q => gx(9)
    );
gy0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gy0_carry_n_0,
      CO(2) => gy0_carry_n_1,
      CO(1) => gy0_carry_n_2,
      CO(0) => gy0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => p_1_in(3 downto 0),
      O(3 downto 0) => gy0(3 downto 0),
      S(3) => gy0_carry_i_5_n_0,
      S(2) => gy0_carry_i_6_n_0,
      S(1) => gy0_carry_i_7_n_0,
      S(0) => gy0_carry_i_8_n_0
    );
\gy0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gy0_carry_n_0,
      CO(3) => \gy0_carry__0_n_0\,
      CO(2) => \gy0_carry__0_n_1\,
      CO(1) => \gy0_carry__0_n_2\,
      CO(0) => \gy0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(7 downto 4),
      O(3 downto 0) => gy0(7 downto 4),
      S(3) => \gy0_carry__0_i_5_n_0\,
      S(2) => \gy0_carry__0_i_6_n_0\,
      S(1) => \gy0_carry__0_i_7_n_0\,
      S(0) => \gy0_carry__0_i_8_n_0\
    );
\gy0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(7),
      I1 => gy1(7),
      I2 => gy2,
      O => p_1_in(7)
    );
\gy0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(6),
      I1 => gy1(6),
      I2 => gy2,
      O => p_1_in(6)
    );
\gy0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(5),
      I1 => gy1(5),
      I2 => gy2,
      O => p_1_in(5)
    );
\gy0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(4),
      I1 => gy1(4),
      I2 => gy2,
      O => p_1_in(4)
    );
\gy0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(7),
      I1 => gy1(7),
      O => \gy0_carry__0_i_5_n_0\
    );
\gy0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(6),
      I1 => gy1(6),
      O => \gy0_carry__0_i_6_n_0\
    );
\gy0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(5),
      I1 => gy1(5),
      O => \gy0_carry__0_i_7_n_0\
    );
\gy0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(4),
      I1 => gy1(4),
      O => \gy0_carry__0_i_8_n_0\
    );
\gy0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy0_carry__0_n_0\,
      CO(3 downto 1) => \NLW_gy0_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gy0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_1_in(8),
      O(3 downto 2) => \NLW_gy0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => gy0(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \gy0_carry__1_i_2_n_0\,
      S(0) => \gy0_carry__1_i_3_n_0\
    );
\gy0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(8),
      I1 => gy1(8),
      I2 => gy2,
      O => p_1_in(8)
    );
\gy0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(9),
      I1 => gy1(9),
      O => \gy0_carry__1_i_2_n_0\
    );
\gy0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(8),
      I1 => gy1(8),
      O => \gy0_carry__1_i_3_n_0\
    );
gy0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(3),
      I1 => gy1(3),
      I2 => gy2,
      O => p_1_in(3)
    );
gy0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(2),
      I1 => gy1(2),
      I2 => gy2,
      O => p_1_in(2)
    );
gy0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(1),
      I1 => gy1(1),
      I2 => gy2,
      O => p_1_in(1)
    );
gy0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(0),
      I1 => gy1(0),
      I2 => gy2,
      O => p_1_in(0)
    );
gy0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(3),
      I1 => gy1(3),
      O => gy0_carry_i_5_n_0
    );
gy0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(2),
      I1 => gy1(2),
      O => gy0_carry_i_6_n_0
    );
gy0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(1),
      I1 => gy1(1),
      O => gy0_carry_i_7_n_0
    );
gy0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(0),
      I1 => gy1(0),
      O => gy0_carry_i_8_n_0
    );
\gy10__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gy10__1_carry_n_0\,
      CO(2) => \gy10__1_carry_n_1\,
      CO(1) => \gy10__1_carry_n_2\,
      CO(0) => \gy10__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \gy10__1_carry_i_1_n_0\,
      DI(2) => \gy10__1_carry_i_2_n_0\,
      DI(1 downto 0) => p11(1 downto 0),
      O(3) => \gy10__1_carry_n_4\,
      O(2) => \gy10__1_carry_n_5\,
      O(1) => \gy10__1_carry_n_6\,
      O(0) => \gy10__1_carry_n_7\,
      S(3) => \gy10__1_carry_i_3_n_0\,
      S(2) => \gy10__1_carry_i_4_n_0\,
      S(1) => \gy10__1_carry_i_5_n_0\,
      S(0) => \gy10__1_carry_i_6_n_0\
    );
\gy10__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy10__1_carry_n_0\,
      CO(3) => \gy10__1_carry__0_n_0\,
      CO(2) => \gy10__1_carry__0_n_1\,
      CO(1) => \gy10__1_carry__0_n_2\,
      CO(0) => \gy10__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gy10__1_carry__0_i_1_n_0\,
      DI(2) => \gy10__1_carry__0_i_2_n_0\,
      DI(1) => \gy10__1_carry__0_i_3_n_0\,
      DI(0) => \gy10__1_carry__0_i_4_n_0\,
      O(3) => \gy10__1_carry__0_n_4\,
      O(2) => \gy10__1_carry__0_n_5\,
      O(1) => \gy10__1_carry__0_n_6\,
      O(0) => \gy10__1_carry__0_n_7\,
      S(3) => \gy10__1_carry__0_i_5_n_0\,
      S(2) => \gy10__1_carry__0_i_6_n_0\,
      S(1) => \gy10__1_carry__0_i_7_n_0\,
      S(0) => \gy10__1_carry__0_i_8_n_0\
    );
\gy10__1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy12(6),
      I1 => p13(6),
      I2 => p11(6),
      O => \gy10__1_carry__0_i_1_n_0\
    );
\gy10__1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy12(5),
      I1 => p13(5),
      I2 => p11(5),
      O => \gy10__1_carry__0_i_2_n_0\
    );
\gy10__1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy12(4),
      I1 => p13(4),
      I2 => p11(4),
      O => \gy10__1_carry__0_i_3_n_0\
    );
\gy10__1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy12(3),
      I1 => p13(3),
      I2 => p11(3),
      O => \gy10__1_carry__0_i_4_n_0\
    );
\gy10__1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gy10__1_carry__0_i_1_n_0\,
      I1 => p13(7),
      I2 => gy12(7),
      I3 => p11(7),
      O => \gy10__1_carry__0_i_5_n_0\
    );
\gy10__1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy12(6),
      I1 => p13(6),
      I2 => p11(6),
      I3 => \gy10__1_carry__0_i_2_n_0\,
      O => \gy10__1_carry__0_i_6_n_0\
    );
\gy10__1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy12(5),
      I1 => p13(5),
      I2 => p11(5),
      I3 => \gy10__1_carry__0_i_3_n_0\,
      O => \gy10__1_carry__0_i_7_n_0\
    );
\gy10__1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy12(4),
      I1 => p13(4),
      I2 => p11(4),
      I3 => \gy10__1_carry__0_i_4_n_0\,
      O => \gy10__1_carry__0_i_8_n_0\
    );
\gy10__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy10__1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gy10__1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gy10__1_carry__1_n_2\,
      CO(0) => \NLW_gy10__1_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => gy12(8),
      O(3 downto 1) => \NLW_gy10__1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gy10__1_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \gy10__1_carry__1_i_1_n_0\
    );
\gy10__1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => p11(7),
      I1 => p13(7),
      I2 => gy12(7),
      I3 => gy12(8),
      O => \gy10__1_carry__1_i_1_n_0\
    );
\gy10__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy12(2),
      I1 => p13(2),
      I2 => p11(2),
      O => \gy10__1_carry_i_1_n_0\
    );
\gy10__1_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p11(2),
      I1 => gy12(2),
      I2 => p13(2),
      O => \gy10__1_carry_i_2_n_0\
    );
\gy10__1_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy12(3),
      I1 => p13(3),
      I2 => p11(3),
      I3 => \gy10__1_carry_i_1_n_0\,
      O => \gy10__1_carry_i_3_n_0\
    );
\gy10__1_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => gy12(2),
      I1 => p13(2),
      I2 => p11(2),
      I3 => p13(1),
      I4 => gy12(1),
      O => \gy10__1_carry_i_4_n_0\
    );
\gy10__1_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gy12(1),
      I1 => p13(1),
      I2 => p11(1),
      O => \gy10__1_carry_i_5_n_0\
    );
\gy10__1_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p11(0),
      I1 => p13(0),
      O => \gy10__1_carry_i_6_n_0\
    );
\gy1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy10__1_carry_n_7\,
      Q => gy1(0)
    );
\gy1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy10__1_carry_n_6\,
      Q => gy1(1)
    );
\gy1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy10__1_carry_n_5\,
      Q => gy1(2)
    );
\gy1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy10__1_carry_n_4\,
      Q => gy1(3)
    );
\gy1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy10__1_carry__0_n_7\,
      Q => gy1(4)
    );
\gy1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy10__1_carry__0_n_6\,
      Q => gy1(5)
    );
\gy1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy10__1_carry__0_n_5\,
      Q => gy1(6)
    );
\gy1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy10__1_carry__0_n_4\,
      Q => gy1(7)
    );
\gy1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy10__1_carry__1_n_7\,
      Q => gy1(8)
    );
\gy1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy10__1_carry__1_n_2\,
      Q => gy1(9)
    );
gy2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gy2_carry_n_0,
      CO(2) => gy2_carry_n_1,
      CO(1) => gy2_carry_n_2,
      CO(0) => gy2_carry_n_3,
      CYINIT => '0',
      DI(3) => gy2_carry_i_1_n_0,
      DI(2) => gy2_carry_i_2_n_0,
      DI(1) => gy2_carry_i_3_n_0,
      DI(0) => gy2_carry_i_4_n_0,
      O(3 downto 0) => NLW_gy2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gy2_carry_i_5_n_0,
      S(2) => gy2_carry_i_6_n_0,
      S(1) => gy2_carry_i_7_n_0,
      S(0) => gy2_carry_i_8_n_0
    );
\gy2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gy2_carry_n_0,
      CO(3 downto 1) => \NLW_gy2_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => gy2,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gy2_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_gy2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gy2_carry__0_i_2_n_0\
    );
\gy2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gy1(8),
      I1 => gy3(8),
      I2 => gy3(9),
      I3 => gy1(9),
      O => \gy2_carry__0_i_1_n_0\
    );
\gy2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gy1(8),
      I1 => gy3(8),
      I2 => gy1(9),
      I3 => gy3(9),
      O => \gy2_carry__0_i_2_n_0\
    );
gy2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gy1(6),
      I1 => gy3(6),
      I2 => gy3(7),
      I3 => gy1(7),
      O => gy2_carry_i_1_n_0
    );
gy2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gy1(4),
      I1 => gy3(4),
      I2 => gy3(5),
      I3 => gy1(5),
      O => gy2_carry_i_2_n_0
    );
gy2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gy1(2),
      I1 => gy3(2),
      I2 => gy3(3),
      I3 => gy1(3),
      O => gy2_carry_i_3_n_0
    );
gy2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gy1(0),
      I1 => gy3(0),
      I2 => gy3(1),
      I3 => gy1(1),
      O => gy2_carry_i_4_n_0
    );
gy2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gy1(6),
      I1 => gy3(6),
      I2 => gy1(7),
      I3 => gy3(7),
      O => gy2_carry_i_5_n_0
    );
gy2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gy1(4),
      I1 => gy3(4),
      I2 => gy1(5),
      I3 => gy3(5),
      O => gy2_carry_i_6_n_0
    );
gy2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gy1(2),
      I1 => gy3(2),
      I2 => gy1(3),
      I3 => gy3(3),
      O => gy2_carry_i_7_n_0
    );
gy2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gy1(0),
      I1 => gy3(0),
      I2 => gy1(1),
      I3 => gy3(1),
      O => gy2_carry_i_8_n_0
    );
\gy30__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gy30__1_carry_n_0\,
      CO(2) => \gy30__1_carry_n_1\,
      CO(1) => \gy30__1_carry_n_2\,
      CO(0) => \gy30__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \gy30__1_carry_i_1_n_0\,
      DI(2) => \gy30__1_carry_i_2_n_0\,
      DI(1 downto 0) => p31(1 downto 0),
      O(3 downto 0) => p_0_in(3 downto 0),
      S(3) => \gy30__1_carry_i_3_n_0\,
      S(2) => \gy30__1_carry_i_4_n_0\,
      S(1) => \gy30__1_carry_i_5_n_0\,
      S(0) => \gy30__1_carry_i_6_n_0\
    );
\gy30__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy30__1_carry_n_0\,
      CO(3) => \gy30__1_carry__0_n_0\,
      CO(2) => \gy30__1_carry__0_n_1\,
      CO(1) => \gy30__1_carry__0_n_2\,
      CO(0) => \gy30__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gy30__1_carry__0_i_1_n_0\,
      DI(2) => \gy30__1_carry__0_i_2_n_0\,
      DI(1) => \gy30__1_carry__0_i_3_n_0\,
      DI(0) => \gy30__1_carry__0_i_4_n_0\,
      O(3 downto 0) => p_0_in(7 downto 4),
      S(3) => \gy30__1_carry__0_i_5_n_0\,
      S(2) => \gy30__1_carry__0_i_6_n_0\,
      S(1) => \gy30__1_carry__0_i_7_n_0\,
      S(0) => \gy30__1_carry__0_i_8_n_0\
    );
\gy30__1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy32(6),
      I1 => p33(6),
      I2 => p31(6),
      O => \gy30__1_carry__0_i_1_n_0\
    );
\gy30__1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy32(5),
      I1 => p33(5),
      I2 => p31(5),
      O => \gy30__1_carry__0_i_2_n_0\
    );
\gy30__1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy32(4),
      I1 => p33(4),
      I2 => p31(4),
      O => \gy30__1_carry__0_i_3_n_0\
    );
\gy30__1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy32(3),
      I1 => p33(3),
      I2 => p31(3),
      O => \gy30__1_carry__0_i_4_n_0\
    );
\gy30__1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gy30__1_carry__0_i_1_n_0\,
      I1 => p33(7),
      I2 => gy32(7),
      I3 => p31(7),
      O => \gy30__1_carry__0_i_5_n_0\
    );
\gy30__1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy32(6),
      I1 => p33(6),
      I2 => p31(6),
      I3 => \gy30__1_carry__0_i_2_n_0\,
      O => \gy30__1_carry__0_i_6_n_0\
    );
\gy30__1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy32(5),
      I1 => p33(5),
      I2 => p31(5),
      I3 => \gy30__1_carry__0_i_3_n_0\,
      O => \gy30__1_carry__0_i_7_n_0\
    );
\gy30__1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy32(4),
      I1 => p33(4),
      I2 => p31(4),
      I3 => \gy30__1_carry__0_i_4_n_0\,
      O => \gy30__1_carry__0_i_8_n_0\
    );
\gy30__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy30__1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_gy30__1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => p_0_in(9),
      CO(0) => \NLW_gy30__1_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => gy32(8),
      O(3 downto 1) => \NLW_gy30__1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => p_0_in(8),
      S(3 downto 1) => B"001",
      S(0) => \gy30__1_carry__1_i_1_n_0\
    );
\gy30__1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => p31(7),
      I1 => p33(7),
      I2 => gy32(7),
      I3 => gy32(8),
      O => \gy30__1_carry__1_i_1_n_0\
    );
\gy30__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy32(2),
      I1 => p33(2),
      I2 => p31(2),
      O => \gy30__1_carry_i_1_n_0\
    );
\gy30__1_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p31(2),
      I1 => gy32(2),
      I2 => p33(2),
      O => \gy30__1_carry_i_2_n_0\
    );
\gy30__1_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy32(3),
      I1 => p33(3),
      I2 => p31(3),
      I3 => \gy30__1_carry_i_1_n_0\,
      O => \gy30__1_carry_i_3_n_0\
    );
\gy30__1_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => gy32(2),
      I1 => p33(2),
      I2 => p31(2),
      I3 => p33(1),
      I4 => gy32(1),
      O => \gy30__1_carry_i_4_n_0\
    );
\gy30__1_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gy32(1),
      I1 => p33(1),
      I2 => p31(1),
      O => \gy30__1_carry_i_5_n_0\
    );
\gy30__1_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p31(0),
      I1 => p33(0),
      O => \gy30__1_carry_i_6_n_0\
    );
\gy3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => gy3(0)
    );
\gy3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => gy3(1)
    );
\gy3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => gy3(2)
    );
\gy3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => gy3(3)
    );
\gy3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => gy3(4)
    );
\gy3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => gy3(5)
    );
\gy3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => gy3(6)
    );
\gy3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => gy3(7)
    );
\gy3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p_0_in(8),
      Q => gy3(8)
    );
\gy3_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p_0_in(9),
      Q => gy3(9)
    );
\gy_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy0(0),
      Q => gy(0)
    );
\gy_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy0(1),
      Q => gy(1)
    );
\gy_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy0(2),
      Q => gy(2)
    );
\gy_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy0(3),
      Q => gy(3)
    );
\gy_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy0(4),
      Q => gy(4)
    );
\gy_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy0(5),
      Q => gy(5)
    );
\gy_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy0(6),
      Q => gy(6)
    );
\gy_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy0(7),
      Q => gy(7)
    );
\gy_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy0(8),
      Q => gy(8)
    );
\gy_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy0(9),
      Q => gy(9)
    );
\href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => out_href,
      Q => \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0\
    );
\href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0\,
      Q => \href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0\,
      R => '0'
    );
\href_dly_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => href_dly_reg_gate_n_0,
      Q => sobel_href
    );
href_dly_reg_c: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => '1',
      Q => href_dly_reg_c_n_0
    );
href_dly_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => href_dly_reg_c_n_0,
      Q => href_dly_reg_c_0_n_0
    );
href_dly_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => href_dly_reg_c_0_n_0,
      Q => href_dly_reg_c_1_n_0
    );
href_dly_reg_c_2: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => href_dly_reg_c_1_n_0,
      Q => href_dly_reg_c_2_n_0
    );
href_dly_reg_c_3: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => href_dly_reg_c_2_n_0,
      Q => href_dly_reg_c_3_n_0
    );
href_dly_reg_c_4: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => href_dly_reg_c_3_n_0,
      Q => href_dly_reg_c_4_n_0
    );
href_dly_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0\,
      I1 => href_dly_reg_c_4_n_0,
      O => href_dly_reg_gate_n_0
    );
href_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sobel_href,
      I1 => s_sobel_en,
      I2 => out_href,
      O => in_href
    );
line2buf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register
     port map (
      D(7) => line2buf_n_0,
      D(6) => line2buf_n_1,
      D(5) => line2buf_n_2,
      D(4) => line2buf_n_3,
      D(3) => line2buf_n_4,
      D(2) => line2buf_n_5,
      D(1) => line2buf_n_6,
      D(0) => line2buf_n_7,
      \in_r_reg[7]_0\(7 downto 0) => \in_r_reg[7]\(7 downto 0),
      mem_reg(7 downto 0) => tap1x(7 downto 0),
      out_href => out_href,
      pclk => pclk
    );
\out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \g_reg_n_0_[0]\,
      I1 => \g_reg_n_0_[9]\,
      I2 => \g_reg_n_0_[10]\,
      I3 => \g_reg_n_0_[8]\,
      O => \out[0]_i_1_n_0\
    );
\out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \g_reg_n_0_[1]\,
      I1 => \g_reg_n_0_[9]\,
      I2 => \g_reg_n_0_[10]\,
      I3 => \g_reg_n_0_[8]\,
      O => \out[1]_i_1_n_0\
    );
\out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \g_reg_n_0_[2]\,
      I1 => \g_reg_n_0_[9]\,
      I2 => \g_reg_n_0_[10]\,
      I3 => \g_reg_n_0_[8]\,
      O => \out[2]_i_1_n_0\
    );
\out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \g_reg_n_0_[3]\,
      I1 => \g_reg_n_0_[9]\,
      I2 => \g_reg_n_0_[10]\,
      I3 => \g_reg_n_0_[8]\,
      O => \out[3]_i_1_n_0\
    );
\out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \g_reg_n_0_[4]\,
      I1 => \g_reg_n_0_[9]\,
      I2 => \g_reg_n_0_[10]\,
      I3 => \g_reg_n_0_[8]\,
      O => \out[4]_i_1_n_0\
    );
\out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \g_reg_n_0_[5]\,
      I1 => \g_reg_n_0_[9]\,
      I2 => \g_reg_n_0_[10]\,
      I3 => \g_reg_n_0_[8]\,
      O => \out[5]_i_1_n_0\
    );
\out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \g_reg_n_0_[6]\,
      I1 => \g_reg_n_0_[9]\,
      I2 => \g_reg_n_0_[10]\,
      I3 => \g_reg_n_0_[8]\,
      O => \out[6]_i_1_n_0\
    );
\out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \g_reg_n_0_[7]\,
      I1 => \g_reg_n_0_[9]\,
      I2 => \g_reg_n_0_[10]\,
      I3 => \g_reg_n_0_[8]\,
      O => \out[7]_i_1_n_0\
    );
\out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \out[0]_i_1_n_0\,
      Q => \out\(0)
    );
\out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \out[1]_i_1_n_0\,
      Q => \out\(1)
    );
\out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \out[2]_i_1_n_0\,
      Q => \out\(2)
    );
\out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \out[3]_i_1_n_0\,
      Q => \out\(3)
    );
\out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \out[4]_i_1_n_0\,
      Q => \out\(4)
    );
\out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \out[5]_i_1_n_0\,
      Q => \out\(5)
    );
\out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \out[6]_i_1_n_0\,
      Q => \out\(6)
    );
\out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \out[7]_i_1_n_0\,
      Q => \out\(7)
    );
\p11_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \in_r_reg[7]\(0),
      Q => p11(0)
    );
\p11_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \in_r_reg[7]\(1),
      Q => p11(1)
    );
\p11_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \in_r_reg[7]\(2),
      Q => p11(2)
    );
\p11_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \in_r_reg[7]\(3),
      Q => p11(3)
    );
\p11_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \in_r_reg[7]\(4),
      Q => p11(4)
    );
\p11_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \in_r_reg[7]\(5),
      Q => p11(5)
    );
\p11_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \in_r_reg[7]\(6),
      Q => p11(6)
    );
\p11_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \in_r_reg[7]\(7),
      Q => p11(7)
    );
\p12_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p11(0),
      Q => gy12(1)
    );
\p12_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p11(1),
      Q => gy12(2)
    );
\p12_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p11(2),
      Q => gy12(3)
    );
\p12_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p11(3),
      Q => gy12(4)
    );
\p12_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p11(4),
      Q => gy12(5)
    );
\p12_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p11(5),
      Q => gy12(6)
    );
\p12_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p11(6),
      Q => gy12(7)
    );
\p12_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p11(7),
      Q => gy12(8)
    );
\p13_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy12(1),
      Q => p13(0)
    );
\p13_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy12(2),
      Q => p13(1)
    );
\p13_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy12(3),
      Q => p13(2)
    );
\p13_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy12(4),
      Q => p13(3)
    );
\p13_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy12(5),
      Q => p13(4)
    );
\p13_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy12(6),
      Q => p13(5)
    );
\p13_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy12(7),
      Q => p13(6)
    );
\p13_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy12(8),
      Q => p13(7)
    );
\p21_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => line2buf_n_7,
      Q => gx12(1)
    );
\p21_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => line2buf_n_6,
      Q => gx12(2)
    );
\p21_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => line2buf_n_5,
      Q => gx12(3)
    );
\p21_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => line2buf_n_4,
      Q => gx12(4)
    );
\p21_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => line2buf_n_3,
      Q => gx12(5)
    );
\p21_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => line2buf_n_2,
      Q => gx12(6)
    );
\p21_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => line2buf_n_1,
      Q => gx12(7)
    );
\p21_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => line2buf_n_0,
      Q => gx12(8)
    );
\p22_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx12(1),
      Q => p22(0)
    );
\p22_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx12(2),
      Q => p22(1)
    );
\p22_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx12(3),
      Q => p22(2)
    );
\p22_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx12(4),
      Q => p22(3)
    );
\p22_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx12(5),
      Q => p22(4)
    );
\p22_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx12(6),
      Q => p22(5)
    );
\p22_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx12(7),
      Q => p22(6)
    );
\p22_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gx12(8),
      Q => p22(7)
    );
\p23_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p22(0),
      Q => gx32(1)
    );
\p23_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p22(1),
      Q => gx32(2)
    );
\p23_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p22(2),
      Q => gx32(3)
    );
\p23_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p22(3),
      Q => gx32(4)
    );
\p23_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p22(4),
      Q => gx32(5)
    );
\p23_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p22(5),
      Q => gx32(6)
    );
\p23_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p22(6),
      Q => gx32(7)
    );
\p23_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p22(7),
      Q => gx32(8)
    );
\p31[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => s_module_reset,
      I1 => rst_n,
      I2 => s_sobel_en,
      O => \p31[7]_i_1_n_0\
    );
\p31_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => tap1x(0),
      Q => p31(0)
    );
\p31_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => tap1x(1),
      Q => p31(1)
    );
\p31_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => tap1x(2),
      Q => p31(2)
    );
\p31_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => tap1x(3),
      Q => p31(3)
    );
\p31_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => tap1x(4),
      Q => p31(4)
    );
\p31_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => tap1x(5),
      Q => p31(5)
    );
\p31_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => tap1x(6),
      Q => p31(6)
    );
\p31_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => tap1x(7),
      Q => p31(7)
    );
\p32_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p31(0),
      Q => gy32(1)
    );
\p32_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p31(1),
      Q => gy32(2)
    );
\p32_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p31(2),
      Q => gy32(3)
    );
\p32_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p31(3),
      Q => gy32(4)
    );
\p32_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p31(4),
      Q => gy32(5)
    );
\p32_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p31(5),
      Q => gy32(6)
    );
\p32_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p31(6),
      Q => gy32(7)
    );
\p32_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => p31(7),
      Q => gy32(8)
    );
\p33_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy32(1),
      Q => p33(0)
    );
\p33_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy32(2),
      Q => p33(1)
    );
\p33_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy32(3),
      Q => p33(2)
    );
\p33_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy32(4),
      Q => p33(3)
    );
\p33_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy32(5),
      Q => p33(4)
    );
\p33_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy32(6),
      Q => p33(5)
    );
\p33_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy32(7),
      Q => p33(6)
    );
\p33_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => gy32(8),
      Q => p33(7)
    );
\vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => out_vsync,
      Q => \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0\
    );
\vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0\,
      Q => \vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0\,
      R => '0'
    );
\vsync_dly_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => vsync_dly_reg_gate_n_0,
      Q => sobel_vsync
    );
vsync_dly_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0\,
      I1 => href_dly_reg_c_4_n_0,
      O => vsync_dly_reg_gate_n_0
    );
vsync_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sobel_vsync,
      I1 => s_sobel_en,
      I2 => out_vsync,
      O => in_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_top is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_pclk_r_reg : out STD_LOGIC;
    href_t3 : out STD_LOGIC;
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    s_module_reset_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \axi_awaddr_reg[2]\ : out STD_LOGIC;
    out_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    pclk : in STD_LOGIC;
    \data_reg_reg[0]\ : in STD_LOGIC;
    \line_cnt_reg[0]\ : in STD_LOGIC;
    \pix_cnt_reg[0]\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \pix_y_t1_reg[10]\ : in STD_LOGIC;
    href_t6_reg : in STD_LOGIC;
    \s00_axi_rdata[24]\ : in STD_LOGIC;
    \s00_axi_rdata[24]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \s00_axi_rdata[25]\ : in STD_LOGIC;
    \s00_axi_rdata[26]\ : in STD_LOGIC;
    \s00_axi_rdata[27]\ : in STD_LOGIC;
    \s00_axi_rdata[28]\ : in STD_LOGIC;
    \s00_axi_rdata[29]\ : in STD_LOGIC;
    \s00_axi_rdata[30]\ : in STD_LOGIC;
    \s00_axi_rdata[31]\ : in STD_LOGIC;
    s_yuv444to422_en : in STD_LOGIC;
    s_sobel_en : in STD_LOGIC;
    \ZOUT_reg[19]\ : in STD_LOGIC;
    \osd_x1_r_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \osd_y0_r_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \osd_y1_r_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_module_reset : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_yuv2rgb_en : in STD_LOGIC;
    \pix_cnt_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    int_frame_done_reg : in STD_LOGIC;
    mem_reg : in STD_LOGIC_VECTOR ( 9 downto 0 );
    int_frame_done_reg_0 : in STD_LOGIC;
    prev_vsync : in STD_LOGIC;
    int_frame_done : in STD_LOGIC;
    mem_reg_0 : in STD_LOGIC;
    mem_reg_1 : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    \color_bg_r_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \color_fg_r_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \data_t6_reg[0]\ : in STD_LOGIC;
    \osd_x0_r_reg[10]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \osd_pix_buf_t5_reg[0]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[0]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[1]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[2]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[3]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[4]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[5]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[6]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[7]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[8]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[9]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[10]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[11]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[12]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[13]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[14]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[15]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[16]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[17]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[18]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[19]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[20]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[21]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[22]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[23]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[24]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[25]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[26]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[27]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[28]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[29]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[30]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[31]\ : in STD_LOGIC;
    in_href : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    in_yuv : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \out_href3_carry__2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \out_href3_carry__2_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \out_href1_carry__0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \out_href1_inferred__0/i__carry__2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_crop_en : in STD_LOGIC;
    s_yuv444to422_switch_uv : in STD_LOGIC;
    s_osd_en : in STD_LOGIC;
    s_dscale_en : in STD_LOGIC;
    \line_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_top is
  signal crop_g_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal crop_href_o : STD_LOGIC;
  signal crop_r_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal crop_vsync_o : STD_LOGIC;
  signal dscale_b_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dscale_g_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dscale_href_o : STD_LOGIC;
  signal dscale_i0_n_10 : STD_LOGIC;
  signal dscale_i0_n_11 : STD_LOGIC;
  signal dscale_i0_n_12 : STD_LOGIC;
  signal dscale_i0_n_13 : STD_LOGIC;
  signal dscale_i0_n_14 : STD_LOGIC;
  signal dscale_i0_n_15 : STD_LOGIC;
  signal dscale_i0_n_16 : STD_LOGIC;
  signal dscale_i0_n_17 : STD_LOGIC;
  signal dscale_i0_n_2 : STD_LOGIC;
  signal dscale_i0_n_3 : STD_LOGIC;
  signal dscale_i0_n_4 : STD_LOGIC;
  signal dscale_i0_n_5 : STD_LOGIC;
  signal dscale_i0_n_6 : STD_LOGIC;
  signal dscale_i0_n_7 : STD_LOGIC;
  signal dscale_i0_n_8 : STD_LOGIC;
  signal dscale_i0_n_9 : STD_LOGIC;
  signal dscale_r_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hist_equ_href_o : STD_LOGIC;
  signal hist_equ_vsync_o : STD_LOGIC;
  signal hist_equ_y_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal in_data_12 : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal in_data_4 : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal in_data_7 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal in_href_0 : STD_LOGIC;
  signal in_href_11 : STD_LOGIC;
  signal in_href_6 : STD_LOGIC;
  signal in_href_9 : STD_LOGIC;
  signal in_href_o : STD_LOGIC;
  signal in_u_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_vsync_10 : STD_LOGIC;
  signal in_vsync_5 : STD_LOGIC;
  signal in_vsync_8 : STD_LOGIC;
  signal in_vsync_o : STD_LOGIC;
  signal in_y_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mux_crop_i0_n_19 : STD_LOGIC;
  signal mux_crop_i0_n_2 : STD_LOGIC;
  signal mux_crop_i0_n_20 : STD_LOGIC;
  signal mux_crop_i0_n_21 : STD_LOGIC;
  signal mux_crop_i0_n_22 : STD_LOGIC;
  signal mux_crop_i0_n_23 : STD_LOGIC;
  signal mux_crop_i0_n_24 : STD_LOGIC;
  signal mux_crop_i0_n_25 : STD_LOGIC;
  signal mux_crop_i0_n_26 : STD_LOGIC;
  signal mux_hist_equ_i0_n_0 : STD_LOGIC;
  signal mux_hist_equ_i0_n_1 : STD_LOGIC;
  signal mux_hist_equ_i0_n_10 : STD_LOGIC;
  signal mux_hist_equ_i0_n_11 : STD_LOGIC;
  signal mux_hist_equ_i0_n_12 : STD_LOGIC;
  signal mux_hist_equ_i0_n_13 : STD_LOGIC;
  signal mux_hist_equ_i0_n_14 : STD_LOGIC;
  signal mux_hist_equ_i0_n_15 : STD_LOGIC;
  signal mux_hist_equ_i0_n_2 : STD_LOGIC;
  signal mux_hist_equ_i0_n_3 : STD_LOGIC;
  signal mux_hist_equ_i0_n_4 : STD_LOGIC;
  signal mux_hist_equ_i0_n_5 : STD_LOGIC;
  signal mux_hist_equ_i0_n_6 : STD_LOGIC;
  signal mux_hist_equ_i0_n_7 : STD_LOGIC;
  signal mux_hist_equ_i0_n_8 : STD_LOGIC;
  signal mux_hist_equ_i0_n_9 : STD_LOGIC;
  signal mux_in_n_18 : STD_LOGIC;
  signal mux_in_n_19 : STD_LOGIC;
  signal mux_in_n_20 : STD_LOGIC;
  signal mux_in_n_21 : STD_LOGIC;
  signal mux_in_n_22 : STD_LOGIC;
  signal mux_in_n_23 : STD_LOGIC;
  signal mux_in_n_24 : STD_LOGIC;
  signal mux_in_n_25 : STD_LOGIC;
  signal mux_sobel_i0_n_18 : STD_LOGIC;
  signal mux_sobel_i0_n_19 : STD_LOGIC;
  signal mux_sobel_i0_n_20 : STD_LOGIC;
  signal mux_sobel_i0_n_21 : STD_LOGIC;
  signal mux_sobel_i0_n_22 : STD_LOGIC;
  signal mux_sobel_i0_n_23 : STD_LOGIC;
  signal mux_sobel_i0_n_24 : STD_LOGIC;
  signal mux_sobel_i0_n_25 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_19 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_2 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_20 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_21 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_22 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_23 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_24 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_25 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_26 : STD_LOGIC;
  signal osd_b_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal osd_g : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal osd_g_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal osd_href_o : STD_LOGIC;
  signal osd_i0_n_101 : STD_LOGIC;
  signal osd_i0_n_102 : STD_LOGIC;
  signal osd_i0_n_103 : STD_LOGIC;
  signal osd_i0_n_104 : STD_LOGIC;
  signal osd_i0_n_105 : STD_LOGIC;
  signal osd_i0_n_106 : STD_LOGIC;
  signal osd_i0_n_107 : STD_LOGIC;
  signal osd_i0_n_108 : STD_LOGIC;
  signal osd_i0_n_74 : STD_LOGIC;
  signal osd_i0_n_75 : STD_LOGIC;
  signal osd_i0_n_76 : STD_LOGIC;
  signal osd_i0_n_77 : STD_LOGIC;
  signal osd_i0_n_78 : STD_LOGIC;
  signal osd_i0_n_79 : STD_LOGIC;
  signal osd_i0_n_80 : STD_LOGIC;
  signal osd_i0_n_81 : STD_LOGIC;
  signal osd_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal osd_vsync : STD_LOGIC;
  signal osd_vsync_o : STD_LOGIC;
  signal \^out_pclk_r_reg\ : STD_LOGIC;
  signal pix_odd : STD_LOGIC;
  signal prev_href : STD_LOGIC;
  signal prev_href_2 : STD_LOGIC;
  signal prev_vsync_1 : STD_LOGIC;
  signal prev_vsync_3 : STD_LOGIC;
  signal sobel_href_o : STD_LOGIC;
  signal sobel_u_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sobel_vsync_o : STD_LOGIC;
  signal sobel_y_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal yuv2rgb_g_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal yuv2rgb_href_o : STD_LOGIC;
  signal yuv2rgb_r_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal yuv2rgb_vsync_o : STD_LOGIC;
  signal yuv444to422_i0_n_0 : STD_LOGIC;
begin
  out_pclk_r_reg <= \^out_pclk_r_reg\;
crop_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_crop
     port map (
      D(23 downto 0) => in_data(23 downto 0),
      Q(23 downto 16) => yuv2rgb_r_o(7 downto 0),
      Q(15 downto 8) => yuv2rgb_g_o(7 downto 0),
      Q(7) => mux_yuv2rgb_i0_n_19,
      Q(6) => mux_yuv2rgb_i0_n_20,
      Q(5) => mux_yuv2rgb_i0_n_21,
      Q(4) => mux_yuv2rgb_i0_n_22,
      Q(3) => mux_yuv2rgb_i0_n_23,
      Q(2) => mux_yuv2rgb_i0_n_24,
      Q(1) => mux_yuv2rgb_i0_n_25,
      Q(0) => mux_yuv2rgb_i0_n_26,
      in_href => in_href_0,
      \line_cnt_reg[0]_0\ => \line_cnt_reg[0]\,
      \line_cnt_reg[15]_0\ => mux_yuv2rgb_i0_n_2,
      \out_href1_carry__0_0\(15 downto 0) => \out_href1_carry__0\(15 downto 0),
      \out_href1_inferred__0/i__carry__2_0\(15 downto 0) => \out_href1_inferred__0/i__carry__2\(15 downto 0),
      \out_href3_carry__2_0\(15 downto 0) => \out_href3_carry__2\(15 downto 0),
      \out_href3_carry__2_1\(15 downto 0) => \out_href3_carry__2_0\(15 downto 0),
      pclk => pclk,
      prev_href => prev_href,
      prev_vsync => prev_vsync_1,
      s_crop_en => s_crop_en,
      yuv2rgb_href_o => yuv2rgb_href_o,
      yuv2rgb_vsync_o => yuv2rgb_vsync_o
    );
dscale_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_dscale
     port map (
      CLK => \^out_pclk_r_reg\,
      D(7) => dscale_i0_n_2,
      D(6) => dscale_i0_n_3,
      D(5) => dscale_i0_n_4,
      D(4) => dscale_i0_n_5,
      D(3) => dscale_i0_n_6,
      D(2) => dscale_i0_n_7,
      D(1) => dscale_i0_n_8,
      D(0) => dscale_i0_n_9,
      E(0) => mux_crop_i0_n_2,
      Q(23 downto 16) => osd_r(7 downto 0),
      Q(15 downto 8) => osd_g(7 downto 0),
      Q(7) => osd_i0_n_101,
      Q(6) => osd_i0_n_102,
      Q(5) => osd_i0_n_103,
      Q(4) => osd_i0_n_104,
      Q(3) => osd_i0_n_105,
      Q(2) => osd_i0_n_106,
      Q(1) => osd_i0_n_107,
      Q(0) => osd_i0_n_108,
      \c_reg_reg[7]\ => yuv444to422_i0_n_0,
      crop_href_o => crop_href_o,
      crop_vsync_o => crop_vsync_o,
      \data_r_reg[23]_0\(23 downto 16) => crop_r_o(7 downto 0),
      \data_r_reg[23]_0\(15 downto 8) => crop_g_o(7 downto 0),
      \data_r_reg[23]_0\(7) => mux_crop_i0_n_19,
      \data_r_reg[23]_0\(6) => mux_crop_i0_n_20,
      \data_r_reg[23]_0\(5) => mux_crop_i0_n_21,
      \data_r_reg[23]_0\(4) => mux_crop_i0_n_22,
      \data_r_reg[23]_0\(3) => mux_crop_i0_n_23,
      \data_r_reg[23]_0\(2) => mux_crop_i0_n_24,
      \data_r_reg[23]_0\(1) => mux_crop_i0_n_25,
      \data_r_reg[23]_0\(0) => mux_crop_i0_n_26,
      dscale_b_o(7 downto 0) => dscale_b_o(7 downto 0),
      dscale_g_o(7 downto 0) => dscale_g_o(7 downto 0),
      dscale_href_o => dscale_href_o,
      dscale_r_o(7 downto 0) => dscale_r_o(7 downto 0),
      \line_cnt_reg[0]_0\(3 downto 0) => \line_cnt_reg[0]_0\(3 downto 0),
      osd_b_o(7 downto 0) => osd_b_o(7 downto 0),
      osd_g_o(7 downto 0) => osd_g_o(7 downto 0),
      osd_href_o => osd_href_o,
      pclk => pclk,
      \pix_cnt_reg[0]_0\ => \pix_cnt_reg[0]\,
      \pix_cnt_reg[1]_0\(3 downto 0) => \pix_cnt_reg[1]\(3 downto 0),
      pix_odd_reg(7) => dscale_i0_n_10,
      pix_odd_reg(6) => dscale_i0_n_11,
      pix_odd_reg(5) => dscale_i0_n_12,
      pix_odd_reg(4) => dscale_i0_n_13,
      pix_odd_reg(3) => dscale_i0_n_14,
      pix_odd_reg(2) => dscale_i0_n_15,
      pix_odd_reg(1) => dscale_i0_n_16,
      pix_odd_reg(0) => dscale_i0_n_17,
      prev_href => prev_href_2,
      prev_vsync => prev_vsync_3,
      s_dscale_en => s_dscale_en,
      s_osd_en => s_osd_en,
      s_yuv444to422_en => s_yuv444to422_en,
      s_yuv444to422_switch_uv => s_yuv444to422_switch_uv
    );
mux_crop_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux
     port map (
      D(23 downto 0) => in_data(23 downto 0),
      E(0) => mux_crop_i0_n_2,
      Q(23 downto 16) => crop_r_o(7 downto 0),
      Q(15 downto 8) => crop_g_o(7 downto 0),
      Q(7) => mux_crop_i0_n_19,
      Q(6) => mux_crop_i0_n_20,
      Q(5) => mux_crop_i0_n_21,
      Q(4) => mux_crop_i0_n_22,
      Q(3) => mux_crop_i0_n_23,
      Q(2) => mux_crop_i0_n_24,
      Q(1) => mux_crop_i0_n_25,
      Q(0) => mux_crop_i0_n_26,
      crop_href_o => crop_href_o,
      crop_vsync_o => crop_vsync_o,
      in_href => in_href_0,
      pclk => pclk,
      prev_href => prev_href_2,
      prev_vsync => prev_vsync_3,
      vsync_reg_reg_0 => \data_reg_reg[0]\,
      yuv2rgb_vsync_o => yuv2rgb_vsync_o
    );
mux_hist_equ_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_0
     port map (
      D(15) => mux_hist_equ_i0_n_0,
      D(14) => mux_hist_equ_i0_n_1,
      D(13) => mux_hist_equ_i0_n_2,
      D(12) => mux_hist_equ_i0_n_3,
      D(11) => mux_hist_equ_i0_n_4,
      D(10) => mux_hist_equ_i0_n_5,
      D(9) => mux_hist_equ_i0_n_6,
      D(8) => mux_hist_equ_i0_n_7,
      D(7) => mux_hist_equ_i0_n_8,
      D(6) => mux_hist_equ_i0_n_9,
      D(5) => mux_hist_equ_i0_n_10,
      D(4) => mux_hist_equ_i0_n_11,
      D(3) => mux_hist_equ_i0_n_12,
      D(2) => mux_hist_equ_i0_n_13,
      D(1) => mux_hist_equ_i0_n_14,
      D(0) => mux_hist_equ_i0_n_15,
      Q(23 downto 16) => in_y_o(7 downto 0),
      Q(15 downto 8) => in_u_o(7 downto 0),
      Q(7) => mux_in_n_18,
      Q(6) => mux_in_n_19,
      Q(5) => mux_in_n_20,
      Q(4) => mux_in_n_21,
      Q(3) => mux_in_n_22,
      Q(2) => mux_in_n_23,
      Q(1) => mux_in_n_24,
      Q(0) => mux_in_n_25,
      \data_reg_reg[0]_0\ => \data_reg_reg[0]\,
      href_reg_reg_0 => in_href_o,
      out_data(7 downto 0) => hist_equ_y_o(7 downto 0),
      out_href => hist_equ_href_o,
      out_vsync => hist_equ_vsync_o,
      pclk => pclk,
      s_sobel_en => s_sobel_en,
      vsync_reg_reg_0 => in_vsync_o
    );
mux_in: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_1
     port map (
      in_href => in_href,
      in_vsync => in_vsync,
      in_yuv(23 downto 0) => in_yuv(23 downto 0),
      out_data(23 downto 16) => in_y_o(7 downto 0),
      out_data(15 downto 8) => in_u_o(7 downto 0),
      out_data(7) => mux_in_n_18,
      out_data(6) => mux_in_n_19,
      out_data(5) => mux_in_n_20,
      out_data(4) => mux_in_n_21,
      out_data(3) => mux_in_n_22,
      out_data(2) => mux_in_n_23,
      out_data(1) => mux_in_n_24,
      out_data(0) => mux_in_n_25,
      out_href => in_href_o,
      out_vsync => in_vsync_o,
      pclk => pclk,
      vsync_reg_reg_0 => \data_reg_reg[0]\
    );
mux_sobel_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_2
     port map (
      D(23 downto 16) => in_data_4(23 downto 16),
      D(15) => mux_hist_equ_i0_n_0,
      D(14) => mux_hist_equ_i0_n_1,
      D(13) => mux_hist_equ_i0_n_2,
      D(12) => mux_hist_equ_i0_n_3,
      D(11) => mux_hist_equ_i0_n_4,
      D(10) => mux_hist_equ_i0_n_5,
      D(9) => mux_hist_equ_i0_n_6,
      D(8) => mux_hist_equ_i0_n_7,
      D(7) => mux_hist_equ_i0_n_8,
      D(6) => mux_hist_equ_i0_n_9,
      D(5) => mux_hist_equ_i0_n_10,
      D(4) => mux_hist_equ_i0_n_11,
      D(3) => mux_hist_equ_i0_n_12,
      D(2) => mux_hist_equ_i0_n_13,
      D(1) => mux_hist_equ_i0_n_14,
      D(0) => mux_hist_equ_i0_n_15,
      Q(23 downto 16) => sobel_y_o(7 downto 0),
      Q(15 downto 8) => sobel_u_o(7 downto 0),
      Q(7) => mux_sobel_i0_n_18,
      Q(6) => mux_sobel_i0_n_19,
      Q(5) => mux_sobel_i0_n_20,
      Q(4) => mux_sobel_i0_n_21,
      Q(3) => mux_sobel_i0_n_22,
      Q(2) => mux_sobel_i0_n_23,
      Q(1) => mux_sobel_i0_n_24,
      Q(0) => mux_sobel_i0_n_25,
      in_href => in_href_6,
      in_vsync => in_vsync_5,
      pclk => pclk,
      sobel_href_o => sobel_href_o,
      sobel_vsync_o => sobel_vsync_o,
      vsync_reg_reg_0 => \data_reg_reg[0]\
    );
mux_yuv2rgb_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_3
     port map (
      D(23 downto 0) => in_data_7(23 downto 0),
      Q(23 downto 16) => yuv2rgb_r_o(7 downto 0),
      Q(15 downto 8) => yuv2rgb_g_o(7 downto 0),
      Q(7) => mux_yuv2rgb_i0_n_19,
      Q(6) => mux_yuv2rgb_i0_n_20,
      Q(5) => mux_yuv2rgb_i0_n_21,
      Q(4) => mux_yuv2rgb_i0_n_22,
      Q(3) => mux_yuv2rgb_i0_n_23,
      Q(2) => mux_yuv2rgb_i0_n_24,
      Q(1) => mux_yuv2rgb_i0_n_25,
      Q(0) => mux_yuv2rgb_i0_n_26,
      \data_reg_reg[0]_0\ => \data_reg_reg[0]\,
      in_href => in_href_9,
      in_vsync => in_vsync_8,
      pclk => pclk,
      prev_href => prev_href,
      prev_vsync => prev_vsync_1,
      vsync_reg_reg_0 => mux_yuv2rgb_i0_n_2,
      yuv2rgb_href_o => yuv2rgb_href_o,
      yuv2rgb_vsync_o => yuv2rgb_vsync_o
    );
mux_yuv444to422_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_4
     port map (
      CLK => \^out_pclk_r_reg\,
      D(23 downto 8) => in_data_12(23 downto 8),
      D(7) => dscale_i0_n_2,
      D(6) => dscale_i0_n_3,
      D(5) => dscale_i0_n_4,
      D(4) => dscale_i0_n_5,
      D(3) => dscale_i0_n_6,
      D(2) => dscale_i0_n_7,
      D(1) => dscale_i0_n_8,
      D(0) => dscale_i0_n_9,
      \axi_awaddr_reg[2]\ => \axi_awaddr_reg[2]\,
      \data_reg_reg[0]_0\ => \data_reg_reg[0]\,
      in_href => in_href_11,
      in_vsync => in_vsync_10,
      int_frame_done => int_frame_done,
      int_frame_done_reg => int_frame_done_reg,
      int_frame_done_reg_0(0) => mem_reg(0),
      int_frame_done_reg_1 => int_frame_done_reg_0,
      out_href => out_href,
      out_rgb(23 downto 0) => out_rgb(23 downto 0),
      out_vsync => out_vsync,
      prev_vsync => prev_vsync
    );
osd_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_osd
     port map (
      CLK => \^out_pclk_r_reg\,
      D(7) => osd_i0_n_74,
      D(6) => osd_i0_n_75,
      D(5) => osd_i0_n_76,
      D(4) => osd_i0_n_77,
      D(3) => osd_i0_n_78,
      D(2) => osd_i0_n_79,
      D(1) => osd_i0_n_80,
      D(0) => osd_i0_n_81,
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      Q(9 downto 0) => Q(9 downto 0),
      \color_bg_r_reg[23]_0\(23 downto 0) => \color_bg_r_reg[23]\(23 downto 0),
      \color_fg_r_reg[23]_0\(23 downto 0) => \color_fg_r_reg[23]\(23 downto 0),
      crop_vsync_o => crop_vsync_o,
      \data_t6_reg[0]_0\ => \data_t6_reg[0]\,
      \data_t6_reg[23]_0\(23 downto 16) => osd_r(7 downto 0),
      \data_t6_reg[23]_0\(15 downto 8) => osd_g(7 downto 0),
      \data_t6_reg[23]_0\(7) => osd_i0_n_101,
      \data_t6_reg[23]_0\(6) => osd_i0_n_102,
      \data_t6_reg[23]_0\(5) => osd_i0_n_103,
      \data_t6_reg[23]_0\(4) => osd_i0_n_104,
      \data_t6_reg[23]_0\(3) => osd_i0_n_105,
      \data_t6_reg[23]_0\(2) => osd_i0_n_106,
      \data_t6_reg[23]_0\(1) => osd_i0_n_107,
      \data_t6_reg[23]_0\(0) => osd_i0_n_108,
      dscale_b_o(7 downto 0) => dscale_b_o(7 downto 0),
      dscale_g_o(7 downto 0) => dscale_g_o(7 downto 0),
      dscale_href_o => dscale_href_o,
      dscale_r_o(7 downto 0) => dscale_r_o(7 downto 0),
      href_t3 => href_t3,
      href_t6_reg_0 => href_t6_reg,
      mem_reg(9 downto 0) => mem_reg(9 downto 0),
      mem_reg_0 => mem_reg_0,
      mem_reg_1 => mem_reg_1,
      osd_b_o(7 downto 0) => osd_b_o(7 downto 0),
      osd_href_o => osd_href_o,
      \osd_pix_buf_t5_reg[0]_0\ => \osd_pix_buf_t5_reg[0]\,
      \osd_pix_buf_t5_reg[0]_1\ => \osd_pix_buf_t5_reg[0]_0\,
      \osd_pix_buf_t5_reg[10]_0\ => \osd_pix_buf_t5_reg[10]\,
      \osd_pix_buf_t5_reg[11]_0\ => \osd_pix_buf_t5_reg[11]\,
      \osd_pix_buf_t5_reg[12]_0\ => \osd_pix_buf_t5_reg[12]\,
      \osd_pix_buf_t5_reg[13]_0\ => \osd_pix_buf_t5_reg[13]\,
      \osd_pix_buf_t5_reg[14]_0\ => \osd_pix_buf_t5_reg[14]\,
      \osd_pix_buf_t5_reg[15]_0\ => \osd_pix_buf_t5_reg[15]\,
      \osd_pix_buf_t5_reg[16]_0\ => \osd_pix_buf_t5_reg[16]\,
      \osd_pix_buf_t5_reg[17]_0\ => \osd_pix_buf_t5_reg[17]\,
      \osd_pix_buf_t5_reg[18]_0\ => \osd_pix_buf_t5_reg[18]\,
      \osd_pix_buf_t5_reg[19]_0\ => \osd_pix_buf_t5_reg[19]\,
      \osd_pix_buf_t5_reg[1]_0\ => \osd_pix_buf_t5_reg[1]\,
      \osd_pix_buf_t5_reg[20]_0\ => \osd_pix_buf_t5_reg[20]\,
      \osd_pix_buf_t5_reg[21]_0\ => \osd_pix_buf_t5_reg[21]\,
      \osd_pix_buf_t5_reg[22]_0\ => \osd_pix_buf_t5_reg[22]\,
      \osd_pix_buf_t5_reg[23]_0\ => \osd_pix_buf_t5_reg[23]\,
      \osd_pix_buf_t5_reg[24]_0\ => \osd_pix_buf_t5_reg[24]\,
      \osd_pix_buf_t5_reg[25]_0\ => \osd_pix_buf_t5_reg[25]\,
      \osd_pix_buf_t5_reg[26]_0\ => \osd_pix_buf_t5_reg[26]\,
      \osd_pix_buf_t5_reg[27]_0\ => \osd_pix_buf_t5_reg[27]\,
      \osd_pix_buf_t5_reg[28]_0\ => \osd_pix_buf_t5_reg[28]\,
      \osd_pix_buf_t5_reg[29]_0\ => \osd_pix_buf_t5_reg[29]\,
      \osd_pix_buf_t5_reg[2]_0\ => \osd_pix_buf_t5_reg[2]\,
      \osd_pix_buf_t5_reg[30]_0\ => \osd_pix_buf_t5_reg[30]\,
      \osd_pix_buf_t5_reg[31]_0\ => \osd_pix_buf_t5_reg[31]\,
      \osd_pix_buf_t5_reg[3]_0\ => \osd_pix_buf_t5_reg[3]\,
      \osd_pix_buf_t5_reg[4]_0\ => \osd_pix_buf_t5_reg[4]\,
      \osd_pix_buf_t5_reg[5]_0\ => \osd_pix_buf_t5_reg[5]\,
      \osd_pix_buf_t5_reg[6]_0\ => \osd_pix_buf_t5_reg[6]\,
      \osd_pix_buf_t5_reg[7]_0\ => \osd_pix_buf_t5_reg[7]\,
      \osd_pix_buf_t5_reg[8]_0\ => \osd_pix_buf_t5_reg[8]\,
      \osd_pix_buf_t5_reg[9]_0\ => \osd_pix_buf_t5_reg[9]\,
      osd_vsync => osd_vsync,
      osd_vsync_o => osd_vsync_o,
      \osd_x0_r_reg[10]_0\(11 downto 0) => \osd_x0_r_reg[10]\(11 downto 0),
      \osd_x1_r_reg[11]_0\(11 downto 0) => \osd_x1_r_reg[11]\(11 downto 0),
      \osd_y0_r_reg[10]_0\(10 downto 0) => \osd_y0_r_reg[10]\(10 downto 0),
      \osd_y1_r_reg[10]_0\(10 downto 0) => \osd_y1_r_reg[10]\(10 downto 0),
      pix_odd => pix_odd,
      pix_odd_reg => yuv444to422_i0_n_0,
      \pix_y_t1_reg[10]_0\ => \pix_y_t1_reg[10]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_rdata(7 downto 0) => s00_axi_rdata(7 downto 0),
      \s00_axi_rdata[24]\ => \s00_axi_rdata[24]\,
      \s00_axi_rdata[24]_0\ => \s00_axi_rdata[24]_0\,
      \s00_axi_rdata[25]\ => \s00_axi_rdata[25]\,
      \s00_axi_rdata[26]\ => \s00_axi_rdata[26]\,
      \s00_axi_rdata[27]\ => \s00_axi_rdata[27]\,
      \s00_axi_rdata[28]\ => \s00_axi_rdata[28]\,
      \s00_axi_rdata[29]\ => \s00_axi_rdata[29]\,
      \s00_axi_rdata[30]\ => \s00_axi_rdata[30]\,
      \s00_axi_rdata[31]\ => \s00_axi_rdata[31]\,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s_osd_en => s_osd_en
    );
sobel_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_sobel
     port map (
      D(7 downto 0) => in_data_4(23 downto 16),
      in_href => in_href_6,
      \in_r_reg[7]\(7 downto 0) => hist_equ_y_o(7 downto 0),
      in_vsync => in_vsync_5,
      out_href => hist_equ_href_o,
      out_vsync => hist_equ_vsync_o,
      pclk => pclk,
      rst_n => rst_n,
      s_module_reset => s_module_reset,
      s_sobel_en => s_sobel_en
    );
yuv2rgb_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_yuv2rgb
     port map (
      D(23 downto 0) => in_data_7(23 downto 0),
      Q(23 downto 16) => sobel_y_o(7 downto 0),
      Q(15 downto 8) => sobel_u_o(7 downto 0),
      Q(7) => mux_sobel_i0_n_18,
      Q(6) => mux_sobel_i0_n_19,
      Q(5) => mux_sobel_i0_n_20,
      Q(4) => mux_sobel_i0_n_21,
      Q(3) => mux_sobel_i0_n_22,
      Q(2) => mux_sobel_i0_n_23,
      Q(1) => mux_sobel_i0_n_24,
      Q(0) => mux_sobel_i0_n_25,
      \ZOUT_reg[19]_0\ => \ZOUT_reg[19]\,
      in_href => in_href_9,
      in_vsync => in_vsync_8,
      pclk => pclk,
      rst_n => rst_n,
      s_module_reset => s_module_reset,
      s_module_reset_reg => s_module_reset_reg,
      s_yuv2rgb_en => s_yuv2rgb_en,
      sobel_href_o => sobel_href_o,
      sobel_vsync_o => sobel_vsync_o
    );
yuv444to422_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_yuv444to422
     port map (
      CLK => \^out_pclk_r_reg\,
      D(15 downto 0) => in_data_12(23 downto 8),
      \c_reg_reg[7]_0\(7) => dscale_i0_n_10,
      \c_reg_reg[7]_0\(6) => dscale_i0_n_11,
      \c_reg_reg[7]_0\(5) => dscale_i0_n_12,
      \c_reg_reg[7]_0\(4) => dscale_i0_n_13,
      \c_reg_reg[7]_0\(3) => dscale_i0_n_14,
      \c_reg_reg[7]_0\(2) => dscale_i0_n_15,
      \c_reg_reg[7]_0\(1) => dscale_i0_n_16,
      \c_reg_reg[7]_0\(0) => dscale_i0_n_17,
      crop_vsync_o => crop_vsync_o,
      in_href => in_href_11,
      in_vsync => in_vsync_10,
      osd_b_o(7 downto 0) => osd_b_o(7 downto 0),
      osd_g_o(7 downto 0) => osd_g_o(7 downto 0),
      osd_href_o => osd_href_o,
      osd_vsync => osd_vsync,
      osd_vsync_o => osd_vsync_o,
      pix_odd => pix_odd,
      pix_odd_reg_0 => yuv444to422_i0_n_0,
      rst_n => rst_n,
      s_module_reset => s_module_reset,
      s_osd_en => s_osd_en,
      s_yuv444to422_en => s_yuv444to422_en,
      \y_reg_reg[7]_0\(7) => osd_i0_n_74,
      \y_reg_reg[7]_0\(6) => osd_i0_n_75,
      \y_reg_reg[7]_0\(5) => osd_i0_n_76,
      \y_reg_reg[7]_0\(4) => osd_i0_n_77,
      \y_reg_reg[7]_0\(3) => osd_i0_n_78,
      \y_reg_reg[7]_0\(2) => osd_i0_n_79,
      \y_reg_reg[7]_0\(1) => osd_i0_n_80,
      \y_reg_reg[7]_0\(0) => osd_i0_n_81
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0_S00_AXI is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : out STD_LOGIC;
    href_t3 : out STD_LOGIC;
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s_module_reset_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    irq : out STD_LOGIC;
    osd_ram_ren : out STD_LOGIC;
    pclk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst_n : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_rdata_24_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[24]_0\ : in STD_LOGIC;
    s00_axi_rdata_25_sp_1 : in STD_LOGIC;
    s00_axi_rdata_26_sp_1 : in STD_LOGIC;
    s00_axi_rdata_27_sp_1 : in STD_LOGIC;
    s00_axi_rdata_28_sp_1 : in STD_LOGIC;
    s00_axi_rdata_29_sp_1 : in STD_LOGIC;
    s00_axi_rdata_30_sp_1 : in STD_LOGIC;
    s00_axi_rdata_31_sp_1 : in STD_LOGIC;
    \ZOUT_reg[19]\ : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \osd_pix_buf_t5_reg[0]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[0]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[1]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[2]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[3]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[4]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[5]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[6]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[7]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[8]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[9]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[10]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[11]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[12]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[13]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[14]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[15]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[16]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[17]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[18]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[19]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[20]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[21]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[22]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[23]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[24]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[25]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[26]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[27]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[28]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[29]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[30]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[31]\ : in STD_LOGIC;
    in_href : in STD_LOGIC;
    in_yuv : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_rdata_0_sp_1 : in STD_LOGIC;
    s00_axi_rdata_1_sp_1 : in STD_LOGIC;
    s00_axi_rdata_2_sp_1 : in STD_LOGIC;
    s00_axi_rdata_3_sp_1 : in STD_LOGIC;
    s00_axi_rdata_4_sp_1 : in STD_LOGIC;
    s00_axi_rdata_5_sp_1 : in STD_LOGIC;
    s00_axi_rdata_6_sp_1 : in STD_LOGIC;
    s00_axi_rdata_7_sp_1 : in STD_LOGIC;
    s00_axi_rdata_8_sp_1 : in STD_LOGIC;
    s00_axi_rdata_9_sp_1 : in STD_LOGIC;
    s00_axi_rdata_10_sp_1 : in STD_LOGIC;
    s00_axi_rdata_11_sp_1 : in STD_LOGIC;
    s00_axi_rdata_12_sp_1 : in STD_LOGIC;
    s00_axi_rdata_13_sp_1 : in STD_LOGIC;
    s00_axi_rdata_14_sp_1 : in STD_LOGIC;
    s00_axi_rdata_15_sp_1 : in STD_LOGIC;
    s00_axi_rdata_16_sp_1 : in STD_LOGIC;
    s00_axi_rdata_17_sp_1 : in STD_LOGIC;
    s00_axi_rdata_18_sp_1 : in STD_LOGIC;
    s00_axi_rdata_19_sp_1 : in STD_LOGIC;
    s00_axi_rdata_20_sp_1 : in STD_LOGIC;
    s00_axi_rdata_21_sp_1 : in STD_LOGIC;
    s00_axi_rdata_22_sp_1 : in STD_LOGIC;
    s00_axi_rdata_23_sp_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0_S00_AXI is
  signal \^doado\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr_area_id : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr_area_id : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal crop_h : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal crop_h_7 : STD_LOGIC;
  signal crop_w : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal crop_w_13 : STD_LOGIC;
  signal crop_x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal crop_x_10 : STD_LOGIC;
  signal crop_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal crop_y_1 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \data_t6[23]_i_2_n_0\ : STD_LOGIC;
  signal dscale_h : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dscale_h_9 : STD_LOGIC;
  signal dscale_v : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dscale_v_2 : STD_LOGIC;
  signal equ_max : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal equ_max_0 : STD_LOGIC;
  signal equ_min : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \equ_min[7]_i_2_n_0\ : STD_LOGIC;
  signal equ_min_14 : STD_LOGIC;
  signal frame_start : STD_LOGIC;
  signal hist_equ_en : STD_LOGIC;
  signal href_reg_i_2_n_0 : STD_LOGIC;
  signal href_t1_i_2_n_0 : STD_LOGIC;
  signal href_t3_i_1_n_0 : STD_LOGIC;
  signal int_frame_done : STD_LOGIC;
  signal int_frame_done_i_2_n_0 : STD_LOGIC;
  signal int_frame_done_i_3_n_0 : STD_LOGIC;
  signal int_mask_frame_done : STD_LOGIC;
  signal int_mask_frame_done_i_1_n_0 : STD_LOGIC;
  signal int_mask_frame_done_i_2_n_0 : STD_LOGIC;
  signal module_reset : STD_LOGIC;
  signal module_reset_i_1_n_0 : STD_LOGIC;
  signal module_reset_i_2_n_0 : STD_LOGIC;
  signal osd_h : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal osd_h_3 : STD_LOGIC;
  signal osd_rgb_bg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal osd_rgb_bg_5 : STD_LOGIC;
  signal osd_rgb_fg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal osd_rgb_fg_11 : STD_LOGIC;
  signal osd_w : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal osd_w_8 : STD_LOGIC;
  signal osd_x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal osd_x_12 : STD_LOGIC;
  signal osd_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal osd_y_6 : STD_LOGIC;
  signal out_pclk_r_i_2_n_0 : STD_LOGIC;
  signal \^out_vsync\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal p_0_in_4 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal prev_href_i_1_n_0 : STD_LOGIC;
  signal prev_vsync : STD_LOGIC;
  signal prev_vsync_r : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal s00_axi_rdata_0_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_10_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_11_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_12_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_13_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_14_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_15_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_16_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_17_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_18_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_19_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_1_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_20_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_21_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_22_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_23_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_24_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_25_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_26_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_27_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_28_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_29_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_2_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_30_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_31_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_3_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_4_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_5_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_6_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_7_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_8_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_9_sn_1 : STD_LOGIC;
  signal s_crop_en : STD_LOGIC;
  signal s_crop_h : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_crop_w : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_crop_x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_crop_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_dscale_en : STD_LOGIC;
  signal s_dscale_h : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_dscale_v : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_module_reset : STD_LOGIC;
  signal s_osd_en : STD_LOGIC;
  signal s_osd_h : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal s_osd_rgb_bg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s_osd_rgb_fg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s_osd_w : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_osd_x : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_osd_y : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal s_sobel_en : STD_LOGIC;
  signal s_yuv2rgb_en : STD_LOGIC;
  signal s_yuv444to422_en : STD_LOGIC;
  signal s_yuv444to422_switch_uv : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal vip_top_i0_n_77 : STD_LOGIC;
  signal yuv444to422_switch_uv : STD_LOGIC;
  signal yuv444to422_switch_uv_i_1_n_0 : STD_LOGIC;
  signal yuv444to422_switch_uv_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \equ_min[7]_i_2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of href_reg_i_2 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of href_t1_i_2 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of int_frame_done_i_3 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of int_frame_done_i_4 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of int_mask_frame_done_i_2 : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of irq_INST_0 : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of module_reset_i_2 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of out_pclk_r_i_2 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of prev_href_i_1 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \s00_axi_rdata[31]_INST_0_i_3\ : label is "soft_lutpair90";
begin
  DOADO(31 downto 0) <= \^doado\(31 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  out_vsync <= \^out_vsync\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rdata_0_sn_1 <= s00_axi_rdata_0_sp_1;
  s00_axi_rdata_10_sn_1 <= s00_axi_rdata_10_sp_1;
  s00_axi_rdata_11_sn_1 <= s00_axi_rdata_11_sp_1;
  s00_axi_rdata_12_sn_1 <= s00_axi_rdata_12_sp_1;
  s00_axi_rdata_13_sn_1 <= s00_axi_rdata_13_sp_1;
  s00_axi_rdata_14_sn_1 <= s00_axi_rdata_14_sp_1;
  s00_axi_rdata_15_sn_1 <= s00_axi_rdata_15_sp_1;
  s00_axi_rdata_16_sn_1 <= s00_axi_rdata_16_sp_1;
  s00_axi_rdata_17_sn_1 <= s00_axi_rdata_17_sp_1;
  s00_axi_rdata_18_sn_1 <= s00_axi_rdata_18_sp_1;
  s00_axi_rdata_19_sn_1 <= s00_axi_rdata_19_sp_1;
  s00_axi_rdata_1_sn_1 <= s00_axi_rdata_1_sp_1;
  s00_axi_rdata_20_sn_1 <= s00_axi_rdata_20_sp_1;
  s00_axi_rdata_21_sn_1 <= s00_axi_rdata_21_sp_1;
  s00_axi_rdata_22_sn_1 <= s00_axi_rdata_22_sp_1;
  s00_axi_rdata_23_sn_1 <= s00_axi_rdata_23_sp_1;
  s00_axi_rdata_24_sn_1 <= s00_axi_rdata_24_sp_1;
  s00_axi_rdata_25_sn_1 <= s00_axi_rdata_25_sp_1;
  s00_axi_rdata_26_sn_1 <= s00_axi_rdata_26_sp_1;
  s00_axi_rdata_27_sn_1 <= s00_axi_rdata_27_sp_1;
  s00_axi_rdata_28_sn_1 <= s00_axi_rdata_28_sp_1;
  s00_axi_rdata_29_sn_1 <= s00_axi_rdata_29_sp_1;
  s00_axi_rdata_2_sn_1 <= s00_axi_rdata_2_sp_1;
  s00_axi_rdata_30_sn_1 <= s00_axi_rdata_30_sp_1;
  s00_axi_rdata_31_sn_1 <= s00_axi_rdata_31_sp_1;
  s00_axi_rdata_3_sn_1 <= s00_axi_rdata_3_sp_1;
  s00_axi_rdata_4_sn_1 <= s00_axi_rdata_4_sp_1;
  s00_axi_rdata_5_sn_1 <= s00_axi_rdata_5_sp_1;
  s00_axi_rdata_6_sn_1 <= s00_axi_rdata_6_sp_1;
  s00_axi_rdata_7_sn_1 <= s00_axi_rdata_7_sp_1;
  s00_axi_rdata_8_sn_1 <= s00_axi_rdata_8_sp_1;
  s00_axi_rdata_9_sn_1 <= s00_axi_rdata_9_sp_1;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FF070F070F070"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^axi_awready_reg_0\,
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
      S => p_0_in
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(8),
      Q => \axi_araddr_reg_n_0_[10]\,
      R => p_0_in
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(9),
      Q => axi_araddr_area_id,
      R => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      R => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      R => p_0_in
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      R => p_0_in
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(4),
      Q => sel0(4),
      R => p_0_in
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(5),
      Q => \axi_araddr_reg_n_0_[7]\,
      R => p_0_in
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(6),
      Q => \axi_araddr_reg_n_0_[8]\,
      R => p_0_in
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(7),
      Q => \axi_araddr_reg_n_0_[9]\,
      R => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => p_0_in
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(8),
      Q => \axi_awaddr_reg_n_0_[10]\,
      R => p_0_in
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(9),
      Q => axi_awaddr_area_id,
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in_4(0),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in_4(1),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => p_0_in_4(2),
      R => p_0_in
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => p_0_in_4(3),
      R => p_0_in
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(4),
      Q => p_0_in_4(4),
      R => p_0_in
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(5),
      Q => p_0_in0,
      R => p_0_in
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(6),
      Q => \axi_awaddr_reg_n_0_[8]\,
      R => p_0_in
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(7),
      Q => \axi_awaddr_reg_n_0_[9]\,
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
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
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AA0CAA"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => sel0(2),
      I5 => \axi_rdata[0]_i_4_n_0\,
      O => p_1_in(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \axi_rdata[0]_i_5_n_0\,
      I1 => \axi_rdata[0]_i_6_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[0]_i_7_n_0\,
      I5 => \axi_rdata[0]_i_8_n_0\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => yuv444to422_switch_uv,
      I1 => int_mask_frame_done,
      I2 => int_frame_done,
      I3 => sel0(0),
      I4 => sel0(1),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[7]\,
      I1 => \axi_araddr_reg_n_0_[8]\,
      I2 => \axi_araddr_reg_n_0_[9]\,
      I3 => \axi_araddr_reg_n_0_[10]\,
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(0),
      I1 => crop_h(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(0),
      I5 => crop_w(0),
      O => \axi_rdata[0]_i_5_n_0\
    );
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(0),
      I1 => osd_rgb_bg(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(0),
      I5 => osd_rgb_fg(0),
      O => \axi_rdata[0]_i_6_n_0\
    );
\axi_rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data1(0),
      I1 => equ_max(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => module_reset,
      I5 => equ_min(0),
      O => \axi_rdata[0]_i_7_n_0\
    );
\axi_rdata[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dscale_v(0),
      I1 => osd_y(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => dscale_h(0),
      I5 => osd_x(0),
      O => \axi_rdata[0]_i_8_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA00000"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => \axi_rdata[10]_i_3_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[15]_i_4_n_0\,
      O => p_1_in(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(10),
      I3 => osd_y(10),
      I4 => sel0(2),
      I5 => \axi_rdata[10]_i_4_n_0\,
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(10),
      I1 => crop_h(10),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(10),
      I5 => crop_w(10),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(10),
      I1 => osd_rgb_bg(10),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(10),
      I5 => osd_rgb_fg(10),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA00000"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_3_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[15]_i_4_n_0\,
      O => p_1_in(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(11),
      I3 => osd_y(11),
      I4 => sel0(2),
      I5 => \axi_rdata[11]_i_4_n_0\,
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(11),
      I1 => crop_h(11),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(11),
      I5 => crop_w(11),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(11),
      I1 => osd_rgb_bg(11),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(11),
      I5 => osd_rgb_fg(11),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA00000"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => \axi_rdata[12]_i_3_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[15]_i_4_n_0\,
      O => p_1_in(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(12),
      I3 => osd_y(12),
      I4 => sel0(2),
      I5 => \axi_rdata[12]_i_4_n_0\,
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(12),
      I1 => crop_h(12),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(12),
      I5 => crop_w(12),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(12),
      I1 => osd_rgb_bg(12),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(12),
      I5 => osd_rgb_fg(12),
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA00000"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => \axi_rdata[13]_i_3_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[15]_i_4_n_0\,
      O => p_1_in(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(13),
      I3 => osd_y(13),
      I4 => sel0(2),
      I5 => \axi_rdata[13]_i_4_n_0\,
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(13),
      I1 => crop_h(13),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(13),
      I5 => crop_w(13),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(13),
      I1 => osd_rgb_bg(13),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(13),
      I5 => osd_rgb_fg(13),
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA00000"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => \axi_rdata[14]_i_3_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[15]_i_4_n_0\,
      O => p_1_in(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(14),
      I3 => osd_y(14),
      I4 => sel0(2),
      I5 => \axi_rdata[14]_i_4_n_0\,
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(14),
      I1 => crop_h(14),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(14),
      I5 => crop_w(14),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(14),
      I1 => osd_rgb_bg(14),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(14),
      I5 => osd_rgb_fg(14),
      O => \axi_rdata[14]_i_4_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA00000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => \axi_rdata[15]_i_3_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[15]_i_4_n_0\,
      O => p_1_in(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(15),
      I3 => osd_y(15),
      I4 => sel0(2),
      I5 => \axi_rdata[15]_i_5_n_0\,
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(15),
      I1 => crop_h(15),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(15),
      I5 => crop_w(15),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axi_rdata[0]_i_4_n_0\,
      I1 => sel0(4),
      O => \axi_rdata[15]_i_4_n_0\
    );
\axi_rdata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(15),
      I1 => osd_rgb_bg(15),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(15),
      I5 => osd_rgb_fg(15),
      O => \axi_rdata[15]_i_5_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000C00000000000"
    )
        port map (
      I0 => osd_rgb_bg(16),
      I1 => osd_rgb_fg(16),
      I2 => sel0(2),
      I3 => \axi_rdata[23]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000C00000000000"
    )
        port map (
      I0 => osd_rgb_bg(17),
      I1 => osd_rgb_fg(17),
      I2 => sel0(2),
      I3 => \axi_rdata[23]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000C00000000000"
    )
        port map (
      I0 => osd_rgb_bg(18),
      I1 => osd_rgb_fg(18),
      I2 => sel0(2),
      I3 => \axi_rdata[23]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000C00000000000"
    )
        port map (
      I0 => osd_rgb_bg(19),
      I1 => osd_rgb_fg(19),
      I2 => sel0(2),
      I3 => \axi_rdata[23]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[15]_i_4_n_0\,
      I1 => \axi_rdata[1]_i_2_n_0\,
      O => p_1_in(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \axi_rdata[1]_i_3_n_0\,
      I1 => \axi_rdata[1]_i_4_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[1]_i_5_n_0\,
      I5 => \axi_rdata[1]_i_6_n_0\,
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(1),
      I1 => crop_h(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(1),
      I5 => crop_w(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(1),
      I1 => osd_rgb_bg(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(1),
      I5 => osd_rgb_fg(1),
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => equ_min(1),
      I1 => data1(1),
      I2 => equ_max(1),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_5_n_0\
    );
\axi_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dscale_v(1),
      I1 => osd_y(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => dscale_h(1),
      I5 => osd_x(1),
      O => \axi_rdata[1]_i_6_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000C00000000000"
    )
        port map (
      I0 => osd_rgb_bg(20),
      I1 => osd_rgb_fg(20),
      I2 => sel0(2),
      I3 => \axi_rdata[23]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000C00000000000"
    )
        port map (
      I0 => osd_rgb_bg(21),
      I1 => osd_rgb_fg(21),
      I2 => sel0(2),
      I3 => \axi_rdata[23]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000C00000000000"
    )
        port map (
      I0 => osd_rgb_bg(22),
      I1 => osd_rgb_fg(22),
      I2 => sel0(2),
      I3 => \axi_rdata[23]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000C00000000000"
    )
        port map (
      I0 => osd_rgb_bg(23),
      I1 => osd_rgb_fg(23),
      I2 => sel0(2),
      I3 => \axi_rdata[23]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[15]_i_4_n_0\,
      I1 => sel0(3),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[15]_i_4_n_0\,
      I1 => \axi_rdata[2]_i_2_n_0\,
      O => p_1_in(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \axi_rdata[2]_i_3_n_0\,
      I1 => \axi_rdata[2]_i_4_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[2]_i_5_n_0\,
      I5 => \axi_rdata[2]_i_6_n_0\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(2),
      I1 => crop_h(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(2),
      I5 => crop_w(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(2),
      I1 => osd_rgb_bg(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(2),
      I5 => osd_rgb_fg(2),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => equ_min(2),
      I1 => data1(2),
      I2 => equ_max(2),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[2]_i_5_n_0\
    );
\axi_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dscale_v(2),
      I1 => osd_y(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => dscale_h(2),
      I5 => osd_x(2),
      O => \axi_rdata[2]_i_6_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[15]_i_4_n_0\,
      I1 => \axi_rdata[3]_i_2_n_0\,
      O => p_1_in(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \axi_rdata[3]_i_3_n_0\,
      I1 => \axi_rdata[3]_i_4_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[3]_i_5_n_0\,
      I5 => \axi_rdata[3]_i_6_n_0\,
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(3),
      I1 => crop_h(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(3),
      I5 => crop_w(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(3),
      I1 => osd_rgb_bg(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(3),
      I5 => osd_rgb_fg(3),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => equ_min(3),
      I1 => data1(3),
      I2 => equ_max(3),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[3]_i_5_n_0\
    );
\axi_rdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dscale_v(3),
      I1 => osd_y(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => dscale_h(3),
      I5 => osd_x(3),
      O => \axi_rdata[3]_i_6_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \axi_rdata[15]_i_4_n_0\,
      I1 => \axi_rdata[4]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[4]_i_3_n_0\,
      I4 => \axi_rdata[4]_i_4_n_0\,
      I5 => sel0(2),
      O => p_1_in(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(4),
      I3 => osd_y(4),
      I4 => sel0(2),
      I5 => \axi_rdata[4]_i_5_n_0\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(4),
      I1 => crop_h(4),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(4),
      I5 => crop_w(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => equ_min(4),
      I1 => data1(4),
      I2 => equ_max(4),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(4),
      I1 => osd_rgb_bg(4),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(4),
      I5 => osd_rgb_fg(4),
      O => \axi_rdata[4]_i_5_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \axi_rdata[15]_i_4_n_0\,
      I1 => \axi_rdata[5]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[5]_i_3_n_0\,
      I4 => \axi_rdata[5]_i_4_n_0\,
      I5 => sel0(2),
      O => p_1_in(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(5),
      I3 => osd_y(5),
      I4 => sel0(2),
      I5 => \axi_rdata[5]_i_5_n_0\,
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(5),
      I1 => crop_h(5),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(5),
      I5 => crop_w(5),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => equ_min(5),
      I1 => data1(5),
      I2 => equ_max(5),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(5),
      I1 => osd_rgb_bg(5),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(5),
      I5 => osd_rgb_fg(5),
      O => \axi_rdata[5]_i_5_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \axi_rdata[15]_i_4_n_0\,
      I1 => \axi_rdata[6]_i_2_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[6]_i_3_n_0\,
      I4 => \axi_rdata[6]_i_4_n_0\,
      I5 => sel0(2),
      O => p_1_in(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(6),
      I3 => osd_y(6),
      I4 => sel0(2),
      I5 => \axi_rdata[6]_i_5_n_0\,
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(6),
      I1 => crop_h(6),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(6),
      I5 => crop_w(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => equ_min(6),
      I1 => data1(6),
      I2 => equ_max(6),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(6),
      I1 => osd_rgb_bg(6),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(6),
      I5 => osd_rgb_fg(6),
      O => \axi_rdata[6]_i_5_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \axi_rdata[7]_i_3_n_0\,
      I2 => \axi_rdata[15]_i_4_n_0\,
      I3 => sel0(3),
      O => p_1_in(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(7),
      I3 => osd_y(7),
      I4 => sel0(2),
      I5 => \axi_rdata[7]_i_4_n_0\,
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => equ_min(7),
      I3 => equ_max(7),
      I4 => sel0(2),
      I5 => \axi_rdata[7]_i_5_n_0\,
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(7),
      I1 => osd_rgb_bg(7),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(7),
      I5 => osd_rgb_fg(7),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(7),
      I1 => crop_h(7),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(7),
      I5 => crop_w(7),
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA00000"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata[8]_i_3_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[15]_i_4_n_0\,
      O => p_1_in(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(8),
      I3 => osd_y(8),
      I4 => sel0(2),
      I5 => \axi_rdata[8]_i_4_n_0\,
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(8),
      I1 => crop_h(8),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(8),
      I5 => crop_w(8),
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(8),
      I1 => osd_rgb_bg(8),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(8),
      I5 => osd_rgb_fg(8),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA00000"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata[9]_i_3_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[15]_i_4_n_0\,
      O => p_1_in(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8200000A820"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => osd_x(9),
      I3 => osd_y(9),
      I4 => sel0(2),
      I5 => \axi_rdata[9]_i_4_n_0\,
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => crop_y(9),
      I1 => crop_h(9),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => crop_x(9),
      I5 => crop_w(9),
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => osd_h(9),
      I1 => osd_rgb_bg(9),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => osd_w(9),
      I5 => osd_rgb_fg(9),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(0),
      Q => axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(10),
      Q => axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(11),
      Q => axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(12),
      Q => axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(13),
      Q => axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(14),
      Q => axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(15),
      Q => axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(16),
      Q => axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(17),
      Q => axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(18),
      Q => axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(19),
      Q => axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(1),
      Q => axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(20),
      Q => axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(21),
      Q => axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(22),
      Q => axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(23),
      Q => axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(2),
      Q => axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(3),
      Q => axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(4),
      Q => axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(5),
      Q => axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(6),
      Q => axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(7),
      Q => axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(8),
      Q => axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_14_in,
      D => p_1_in(9),
      Q => axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^axi_rvalid_reg_0\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => p_0_in
    );
crop_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => hist_equ_en,
      D => s00_axi_wdata(3),
      Q => data1(3),
      R => p_0_in
    );
\crop_h[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => p_0_in_4(1),
      I1 => p_0_in_4(0),
      I2 => p_0_in_4(2),
      I3 => p_0_in_4(3),
      I4 => p_0_in_4(4),
      I5 => int_frame_done_i_2_n_0,
      O => crop_h_7
    );
\crop_h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(0),
      Q => crop_h(0),
      R => p_0_in
    );
\crop_h_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(10),
      Q => crop_h(10),
      S => p_0_in
    );
\crop_h_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(11),
      Q => crop_h(11),
      R => p_0_in
    );
\crop_h_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(12),
      Q => crop_h(12),
      R => p_0_in
    );
\crop_h_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(13),
      Q => crop_h(13),
      R => p_0_in
    );
\crop_h_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(14),
      Q => crop_h(14),
      R => p_0_in
    );
\crop_h_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(15),
      Q => crop_h(15),
      R => p_0_in
    );
\crop_h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(1),
      Q => crop_h(1),
      R => p_0_in
    );
\crop_h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(2),
      Q => crop_h(2),
      R => p_0_in
    );
\crop_h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(3),
      Q => crop_h(3),
      R => p_0_in
    );
\crop_h_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(4),
      Q => crop_h(4),
      R => p_0_in
    );
\crop_h_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(5),
      Q => crop_h(5),
      R => p_0_in
    );
\crop_h_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(6),
      Q => crop_h(6),
      R => p_0_in
    );
\crop_h_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(7),
      Q => crop_h(7),
      S => p_0_in
    );
\crop_h_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(8),
      Q => crop_h(8),
      S => p_0_in
    );
\crop_h_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_7,
      D => s00_axi_wdata(9),
      Q => crop_h(9),
      S => p_0_in
    );
\crop_w[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => p_0_in_4(4),
      I1 => p_0_in_4(3),
      I2 => p_0_in_4(2),
      I3 => p_0_in_4(1),
      I4 => \equ_min[7]_i_2_n_0\,
      O => crop_w_13
    );
\crop_w_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(0),
      Q => crop_w(0),
      R => p_0_in
    );
\crop_w_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(10),
      Q => crop_w(10),
      R => p_0_in
    );
\crop_w_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(11),
      Q => crop_w(11),
      S => p_0_in
    );
\crop_w_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(12),
      Q => crop_w(12),
      R => p_0_in
    );
\crop_w_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(13),
      Q => crop_w(13),
      R => p_0_in
    );
\crop_w_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(14),
      Q => crop_w(14),
      R => p_0_in
    );
\crop_w_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(15),
      Q => crop_w(15),
      R => p_0_in
    );
\crop_w_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(1),
      Q => crop_w(1),
      R => p_0_in
    );
\crop_w_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(2),
      Q => crop_w(2),
      R => p_0_in
    );
\crop_w_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(3),
      Q => crop_w(3),
      R => p_0_in
    );
\crop_w_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(4),
      Q => crop_w(4),
      R => p_0_in
    );
\crop_w_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(5),
      Q => crop_w(5),
      R => p_0_in
    );
\crop_w_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(6),
      Q => crop_w(6),
      R => p_0_in
    );
\crop_w_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(7),
      Q => crop_w(7),
      R => p_0_in
    );
\crop_w_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(8),
      Q => crop_w(8),
      R => p_0_in
    );
\crop_w_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_13,
      D => s00_axi_wdata(9),
      Q => crop_w(9),
      S => p_0_in
    );
\crop_x[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => p_0_in_4(4),
      I1 => p_0_in_4(3),
      I2 => p_0_in_4(2),
      I3 => p_0_in_4(1),
      I4 => \equ_min[7]_i_2_n_0\,
      O => crop_x_10
    );
\crop_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(0),
      Q => crop_x(0),
      R => p_0_in
    );
\crop_x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(10),
      Q => crop_x(10),
      R => p_0_in
    );
\crop_x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(11),
      Q => crop_x(11),
      R => p_0_in
    );
\crop_x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(12),
      Q => crop_x(12),
      R => p_0_in
    );
\crop_x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(13),
      Q => crop_x(13),
      R => p_0_in
    );
\crop_x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(14),
      Q => crop_x(14),
      R => p_0_in
    );
\crop_x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(15),
      Q => crop_x(15),
      R => p_0_in
    );
\crop_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(1),
      Q => crop_x(1),
      R => p_0_in
    );
\crop_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(2),
      Q => crop_x(2),
      R => p_0_in
    );
\crop_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(3),
      Q => crop_x(3),
      R => p_0_in
    );
\crop_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(4),
      Q => crop_x(4),
      R => p_0_in
    );
\crop_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(5),
      Q => crop_x(5),
      R => p_0_in
    );
\crop_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(6),
      Q => crop_x(6),
      R => p_0_in
    );
\crop_x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(7),
      Q => crop_x(7),
      R => p_0_in
    );
\crop_x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(8),
      Q => crop_x(8),
      R => p_0_in
    );
\crop_x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_10,
      D => s00_axi_wdata(9),
      Q => crop_x(9),
      R => p_0_in
    );
\crop_y[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => int_frame_done_i_2_n_0,
      I1 => p_0_in_4(0),
      I2 => p_0_in_4(4),
      I3 => p_0_in_4(3),
      I4 => p_0_in_4(2),
      I5 => p_0_in_4(1),
      O => crop_y_1
    );
\crop_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(0),
      Q => crop_y(0),
      R => p_0_in
    );
\crop_y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(10),
      Q => crop_y(10),
      R => p_0_in
    );
\crop_y_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(11),
      Q => crop_y(11),
      R => p_0_in
    );
\crop_y_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(12),
      Q => crop_y(12),
      R => p_0_in
    );
\crop_y_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(13),
      Q => crop_y(13),
      R => p_0_in
    );
\crop_y_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(14),
      Q => crop_y(14),
      R => p_0_in
    );
\crop_y_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(15),
      Q => crop_y(15),
      R => p_0_in
    );
\crop_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(1),
      Q => crop_y(1),
      R => p_0_in
    );
\crop_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(2),
      Q => crop_y(2),
      R => p_0_in
    );
\crop_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(3),
      Q => crop_y(3),
      R => p_0_in
    );
\crop_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(4),
      Q => crop_y(4),
      R => p_0_in
    );
\crop_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(5),
      Q => crop_y(5),
      R => p_0_in
    );
\crop_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(6),
      Q => crop_y(6),
      R => p_0_in
    );
\crop_y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(7),
      Q => crop_y(7),
      R => p_0_in
    );
\crop_y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(8),
      Q => crop_y(8),
      R => p_0_in
    );
\crop_y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_1,
      D => s00_axi_wdata(9),
      Q => crop_y(9),
      R => p_0_in
    );
\data_t6[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => s_osd_en,
      I1 => rst_n,
      I2 => s_module_reset,
      O => \data_t6[23]_i_2_n_0\
    );
dscale_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => hist_equ_en,
      D => s00_axi_wdata(4),
      Q => data1(4),
      R => p_0_in
    );
\dscale_h[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => p_0_in_4(4),
      I1 => p_0_in_4(3),
      I2 => p_0_in_4(1),
      I3 => p_0_in_4(2),
      I4 => \equ_min[7]_i_2_n_0\,
      O => dscale_h_9
    );
\dscale_h_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => dscale_h_9,
      D => s00_axi_wdata(0),
      Q => dscale_h(0),
      S => p_0_in
    );
\dscale_h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_h_9,
      D => s00_axi_wdata(1),
      Q => dscale_h(1),
      R => p_0_in
    );
\dscale_h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_h_9,
      D => s00_axi_wdata(2),
      Q => dscale_h(2),
      R => p_0_in
    );
\dscale_h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_h_9,
      D => s00_axi_wdata(3),
      Q => dscale_h(3),
      R => p_0_in
    );
\dscale_v[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => int_frame_done_i_2_n_0,
      I1 => p_0_in_4(0),
      I2 => p_0_in_4(1),
      I3 => p_0_in_4(2),
      I4 => p_0_in_4(4),
      I5 => p_0_in_4(3),
      O => dscale_v_2
    );
\dscale_v_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => dscale_v_2,
      D => s00_axi_wdata(0),
      Q => dscale_v(0),
      S => p_0_in
    );
\dscale_v_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_v_2,
      D => s00_axi_wdata(1),
      Q => dscale_v(1),
      R => p_0_in
    );
\dscale_v_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_v_2,
      D => s00_axi_wdata(2),
      Q => dscale_v(2),
      R => p_0_in
    );
\dscale_v_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_v_2,
      D => s00_axi_wdata(3),
      Q => dscale_v(3),
      R => p_0_in
    );
\equ_max[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => int_frame_done_i_2_n_0,
      I1 => p_0_in_4(0),
      I2 => p_0_in_4(4),
      I3 => p_0_in_4(3),
      I4 => p_0_in_4(1),
      I5 => p_0_in_4(2),
      O => equ_max_0
    );
\equ_max_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_0,
      D => s00_axi_wdata(0),
      Q => equ_max(0),
      R => p_0_in
    );
\equ_max_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_0,
      D => s00_axi_wdata(1),
      Q => equ_max(1),
      R => p_0_in
    );
\equ_max_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_0,
      D => s00_axi_wdata(2),
      Q => equ_max(2),
      S => p_0_in
    );
\equ_max_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_0,
      D => s00_axi_wdata(3),
      Q => equ_max(3),
      S => p_0_in
    );
\equ_max_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_0,
      D => s00_axi_wdata(4),
      Q => equ_max(4),
      S => p_0_in
    );
\equ_max_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_0,
      D => s00_axi_wdata(5),
      Q => equ_max(5),
      R => p_0_in
    );
\equ_max_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_0,
      D => s00_axi_wdata(6),
      Q => equ_max(6),
      S => p_0_in
    );
\equ_max_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_0,
      D => s00_axi_wdata(7),
      Q => equ_max(7),
      S => p_0_in
    );
\equ_min[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => p_0_in_4(2),
      I1 => p_0_in_4(4),
      I2 => p_0_in_4(3),
      I3 => p_0_in_4(1),
      I4 => \equ_min[7]_i_2_n_0\,
      O => equ_min_14
    );
\equ_min[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => int_frame_done_i_2_n_0,
      I1 => p_0_in_4(0),
      O => \equ_min[7]_i_2_n_0\
    );
\equ_min_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_14,
      D => s00_axi_wdata(0),
      Q => equ_min(0),
      R => p_0_in
    );
\equ_min_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_14,
      D => s00_axi_wdata(1),
      Q => equ_min(1),
      R => p_0_in
    );
\equ_min_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_14,
      D => s00_axi_wdata(2),
      Q => equ_min(2),
      R => p_0_in
    );
\equ_min_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_14,
      D => s00_axi_wdata(3),
      Q => equ_min(3),
      S => p_0_in
    );
\equ_min_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_14,
      D => s00_axi_wdata(4),
      Q => equ_min(4),
      R => p_0_in
    );
\equ_min_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_14,
      D => s00_axi_wdata(5),
      Q => equ_min(5),
      S => p_0_in
    );
\equ_min_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_14,
      D => s00_axi_wdata(6),
      Q => equ_min(6),
      R => p_0_in
    );
\equ_min_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_14,
      D => s00_axi_wdata(7),
      Q => equ_min(7),
      R => p_0_in
    );
hist_equ_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => int_frame_done_i_2_n_0,
      I1 => p_0_in_4(0),
      I2 => p_0_in_4(1),
      I3 => p_0_in_4(2),
      I4 => p_0_in_4(4),
      I5 => p_0_in_4(3),
      O => hist_equ_en
    );
hist_equ_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => hist_equ_en,
      D => s00_axi_wdata(0),
      Q => data1(0),
      R => p_0_in
    );
href_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_module_reset,
      I1 => rst_n,
      O => href_reg_i_2_n_0
    );
href_t1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => s_osd_en,
      I1 => rst_n,
      I2 => s_module_reset,
      O => href_t1_i_2_n_0
    );
href_t3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => s_osd_en,
      I1 => rst_n,
      I2 => s_module_reset,
      O => href_t3_i_1_n_0
    );
int_frame_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => axi_awaddr_area_id,
      I1 => p_15_in,
      I2 => \axi_awaddr_reg_n_0_[10]\,
      I3 => \axi_awaddr_reg_n_0_[9]\,
      I4 => \axi_awaddr_reg_n_0_[8]\,
      I5 => p_0_in0,
      O => int_frame_done_i_2_n_0
    );
int_frame_done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => p_0_in_4(3),
      I1 => p_0_in_4(4),
      I2 => p_0_in_4(2),
      I3 => p_0_in_4(1),
      O => int_frame_done_i_3_n_0
    );
int_frame_done_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^axi_wready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => p_15_in
    );
int_frame_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => vip_top_i0_n_77,
      Q => int_frame_done,
      R => p_0_in
    );
int_mask_frame_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_4(2),
      I2 => p_0_in_4(4),
      I3 => p_0_in_4(3),
      I4 => int_mask_frame_done_i_2_n_0,
      I5 => int_mask_frame_done,
      O => int_mask_frame_done_i_1_n_0
    );
int_mask_frame_done_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in_4(0),
      I1 => int_frame_done_i_2_n_0,
      I2 => p_0_in_4(1),
      O => int_mask_frame_done_i_2_n_0
    );
int_mask_frame_done_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_mask_frame_done_i_1_n_0,
      Q => int_mask_frame_done,
      S => p_0_in
    );
irq_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => int_frame_done,
      I1 => int_mask_frame_done,
      O => irq
    );
module_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_4(1),
      I2 => p_0_in_4(2),
      I3 => module_reset_i_2_n_0,
      I4 => \equ_min[7]_i_2_n_0\,
      I5 => module_reset,
      O => module_reset_i_1_n_0
    );
module_reset_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_4(4),
      I1 => p_0_in_4(3),
      O => module_reset_i_2_n_0
    );
module_reset_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => module_reset_i_1_n_0,
      Q => module_reset,
      S => p_0_in
    );
osd_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => hist_equ_en,
      D => s00_axi_wdata(5),
      Q => data1(5),
      R => p_0_in
    );
\osd_h[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => int_frame_done_i_2_n_0,
      I1 => p_0_in_4(0),
      I2 => p_0_in_4(4),
      I3 => p_0_in_4(3),
      I4 => p_0_in_4(2),
      I5 => p_0_in_4(1),
      O => osd_h_3
    );
\osd_h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(0),
      Q => osd_h(0),
      R => p_0_in
    );
\osd_h_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(10),
      Q => osd_h(10),
      R => p_0_in
    );
\osd_h_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(11),
      Q => osd_h(11),
      R => p_0_in
    );
\osd_h_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(12),
      Q => osd_h(12),
      R => p_0_in
    );
\osd_h_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(13),
      Q => osd_h(13),
      R => p_0_in
    );
\osd_h_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(14),
      Q => osd_h(14),
      R => p_0_in
    );
\osd_h_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(15),
      Q => osd_h(15),
      R => p_0_in
    );
\osd_h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(1),
      Q => osd_h(1),
      R => p_0_in
    );
\osd_h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(2),
      Q => osd_h(2),
      R => p_0_in
    );
\osd_h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(3),
      Q => osd_h(3),
      R => p_0_in
    );
\osd_h_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(4),
      Q => osd_h(4),
      R => p_0_in
    );
\osd_h_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(5),
      Q => osd_h(5),
      R => p_0_in
    );
\osd_h_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(6),
      Q => osd_h(6),
      R => p_0_in
    );
\osd_h_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(7),
      Q => osd_h(7),
      R => p_0_in
    );
\osd_h_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(8),
      Q => osd_h(8),
      R => p_0_in
    );
\osd_h_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_h_3,
      D => s00_axi_wdata(9),
      Q => osd_h(9),
      R => p_0_in
    );
\osd_rgb_bg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => p_0_in_4(4),
      I1 => p_0_in_4(3),
      I2 => p_0_in_4(2),
      I3 => p_0_in_4(0),
      I4 => p_0_in_4(1),
      I5 => int_frame_done_i_2_n_0,
      O => osd_rgb_bg_5
    );
\osd_rgb_bg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(0),
      Q => osd_rgb_bg(0),
      R => p_0_in
    );
\osd_rgb_bg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(10),
      Q => osd_rgb_bg(10),
      R => p_0_in
    );
\osd_rgb_bg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(11),
      Q => osd_rgb_bg(11),
      R => p_0_in
    );
\osd_rgb_bg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(12),
      Q => osd_rgb_bg(12),
      R => p_0_in
    );
\osd_rgb_bg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(13),
      Q => osd_rgb_bg(13),
      R => p_0_in
    );
\osd_rgb_bg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(14),
      Q => osd_rgb_bg(14),
      R => p_0_in
    );
\osd_rgb_bg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(15),
      Q => osd_rgb_bg(15),
      R => p_0_in
    );
\osd_rgb_bg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(16),
      Q => osd_rgb_bg(16),
      R => p_0_in
    );
\osd_rgb_bg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(17),
      Q => osd_rgb_bg(17),
      R => p_0_in
    );
\osd_rgb_bg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(18),
      Q => osd_rgb_bg(18),
      R => p_0_in
    );
\osd_rgb_bg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(19),
      Q => osd_rgb_bg(19),
      R => p_0_in
    );
\osd_rgb_bg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(1),
      Q => osd_rgb_bg(1),
      R => p_0_in
    );
\osd_rgb_bg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(20),
      Q => osd_rgb_bg(20),
      R => p_0_in
    );
\osd_rgb_bg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(21),
      Q => osd_rgb_bg(21),
      R => p_0_in
    );
\osd_rgb_bg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(22),
      Q => osd_rgb_bg(22),
      R => p_0_in
    );
\osd_rgb_bg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(23),
      Q => osd_rgb_bg(23),
      R => p_0_in
    );
\osd_rgb_bg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(2),
      Q => osd_rgb_bg(2),
      R => p_0_in
    );
\osd_rgb_bg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(3),
      Q => osd_rgb_bg(3),
      R => p_0_in
    );
\osd_rgb_bg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(4),
      Q => osd_rgb_bg(4),
      R => p_0_in
    );
\osd_rgb_bg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(5),
      Q => osd_rgb_bg(5),
      R => p_0_in
    );
\osd_rgb_bg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(6),
      Q => osd_rgb_bg(6),
      R => p_0_in
    );
\osd_rgb_bg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(7),
      Q => osd_rgb_bg(7),
      R => p_0_in
    );
\osd_rgb_bg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(8),
      Q => osd_rgb_bg(8),
      R => p_0_in
    );
\osd_rgb_bg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_bg_5,
      D => s00_axi_wdata(9),
      Q => osd_rgb_bg(9),
      R => p_0_in
    );
\osd_rgb_fg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => p_0_in_4(4),
      I1 => p_0_in_4(3),
      I2 => p_0_in_4(2),
      I3 => p_0_in_4(1),
      I4 => \equ_min[7]_i_2_n_0\,
      O => osd_rgb_fg_11
    );
\osd_rgb_fg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(0),
      Q => osd_rgb_fg(0),
      R => p_0_in
    );
\osd_rgb_fg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(10),
      Q => osd_rgb_fg(10),
      R => p_0_in
    );
\osd_rgb_fg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(11),
      Q => osd_rgb_fg(11),
      R => p_0_in
    );
\osd_rgb_fg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(12),
      Q => osd_rgb_fg(12),
      R => p_0_in
    );
\osd_rgb_fg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(13),
      Q => osd_rgb_fg(13),
      R => p_0_in
    );
\osd_rgb_fg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(14),
      Q => osd_rgb_fg(14),
      R => p_0_in
    );
\osd_rgb_fg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(15),
      Q => osd_rgb_fg(15),
      R => p_0_in
    );
\osd_rgb_fg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(16),
      Q => osd_rgb_fg(16),
      R => p_0_in
    );
\osd_rgb_fg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(17),
      Q => osd_rgb_fg(17),
      R => p_0_in
    );
\osd_rgb_fg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(18),
      Q => osd_rgb_fg(18),
      R => p_0_in
    );
\osd_rgb_fg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(19),
      Q => osd_rgb_fg(19),
      R => p_0_in
    );
\osd_rgb_fg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(1),
      Q => osd_rgb_fg(1),
      R => p_0_in
    );
\osd_rgb_fg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(20),
      Q => osd_rgb_fg(20),
      R => p_0_in
    );
\osd_rgb_fg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(21),
      Q => osd_rgb_fg(21),
      R => p_0_in
    );
\osd_rgb_fg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(22),
      Q => osd_rgb_fg(22),
      R => p_0_in
    );
\osd_rgb_fg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(23),
      Q => osd_rgb_fg(23),
      R => p_0_in
    );
\osd_rgb_fg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(2),
      Q => osd_rgb_fg(2),
      R => p_0_in
    );
\osd_rgb_fg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(3),
      Q => osd_rgb_fg(3),
      R => p_0_in
    );
\osd_rgb_fg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(4),
      Q => osd_rgb_fg(4),
      R => p_0_in
    );
\osd_rgb_fg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(5),
      Q => osd_rgb_fg(5),
      R => p_0_in
    );
\osd_rgb_fg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(6),
      Q => osd_rgb_fg(6),
      R => p_0_in
    );
\osd_rgb_fg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(7),
      Q => osd_rgb_fg(7),
      R => p_0_in
    );
\osd_rgb_fg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(8),
      Q => osd_rgb_fg(8),
      R => p_0_in
    );
\osd_rgb_fg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_rgb_fg_11,
      D => s00_axi_wdata(9),
      Q => osd_rgb_fg(9),
      R => p_0_in
    );
\osd_w[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => p_0_in_4(4),
      I1 => p_0_in_4(3),
      I2 => p_0_in_4(2),
      I3 => p_0_in_4(1),
      I4 => \equ_min[7]_i_2_n_0\,
      O => osd_w_8
    );
\osd_w_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(0),
      Q => osd_w(0),
      R => p_0_in
    );
\osd_w_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(10),
      Q => osd_w(10),
      R => p_0_in
    );
\osd_w_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(11),
      Q => osd_w(11),
      R => p_0_in
    );
\osd_w_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(12),
      Q => osd_w(12),
      R => p_0_in
    );
\osd_w_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(13),
      Q => osd_w(13),
      R => p_0_in
    );
\osd_w_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(14),
      Q => osd_w(14),
      R => p_0_in
    );
\osd_w_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(15),
      Q => osd_w(15),
      R => p_0_in
    );
\osd_w_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(1),
      Q => osd_w(1),
      R => p_0_in
    );
\osd_w_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(2),
      Q => osd_w(2),
      R => p_0_in
    );
\osd_w_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(3),
      Q => osd_w(3),
      R => p_0_in
    );
\osd_w_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(4),
      Q => osd_w(4),
      R => p_0_in
    );
\osd_w_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(5),
      Q => osd_w(5),
      R => p_0_in
    );
\osd_w_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(6),
      Q => osd_w(6),
      R => p_0_in
    );
\osd_w_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(7),
      Q => osd_w(7),
      R => p_0_in
    );
\osd_w_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(8),
      Q => osd_w(8),
      R => p_0_in
    );
\osd_w_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_w_8,
      D => s00_axi_wdata(9),
      Q => osd_w(9),
      R => p_0_in
    );
\osd_x[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => p_0_in_4(2),
      I1 => p_0_in_4(4),
      I2 => p_0_in_4(3),
      I3 => p_0_in_4(1),
      I4 => \equ_min[7]_i_2_n_0\,
      O => osd_x_12
    );
\osd_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(0),
      Q => osd_x(0),
      R => p_0_in
    );
\osd_x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(10),
      Q => osd_x(10),
      R => p_0_in
    );
\osd_x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(11),
      Q => osd_x(11),
      R => p_0_in
    );
\osd_x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(12),
      Q => osd_x(12),
      R => p_0_in
    );
\osd_x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(13),
      Q => osd_x(13),
      R => p_0_in
    );
\osd_x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(14),
      Q => osd_x(14),
      R => p_0_in
    );
\osd_x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(15),
      Q => osd_x(15),
      R => p_0_in
    );
\osd_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(1),
      Q => osd_x(1),
      R => p_0_in
    );
\osd_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(2),
      Q => osd_x(2),
      R => p_0_in
    );
\osd_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(3),
      Q => osd_x(3),
      R => p_0_in
    );
\osd_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(4),
      Q => osd_x(4),
      R => p_0_in
    );
\osd_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(5),
      Q => osd_x(5),
      R => p_0_in
    );
\osd_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(6),
      Q => osd_x(6),
      R => p_0_in
    );
\osd_x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(7),
      Q => osd_x(7),
      R => p_0_in
    );
\osd_x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(8),
      Q => osd_x(8),
      R => p_0_in
    );
\osd_x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_x_12,
      D => s00_axi_wdata(9),
      Q => osd_x(9),
      R => p_0_in
    );
\osd_y[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => p_0_in_4(4),
      I1 => p_0_in_4(3),
      I2 => p_0_in_4(0),
      I3 => p_0_in_4(1),
      I4 => p_0_in_4(2),
      I5 => int_frame_done_i_2_n_0,
      O => osd_y_6
    );
\osd_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(0),
      Q => osd_y(0),
      R => p_0_in
    );
\osd_y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(10),
      Q => osd_y(10),
      R => p_0_in
    );
\osd_y_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(11),
      Q => osd_y(11),
      R => p_0_in
    );
\osd_y_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(12),
      Q => osd_y(12),
      R => p_0_in
    );
\osd_y_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(13),
      Q => osd_y(13),
      R => p_0_in
    );
\osd_y_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(14),
      Q => osd_y(14),
      R => p_0_in
    );
\osd_y_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(15),
      Q => osd_y(15),
      R => p_0_in
    );
\osd_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(1),
      Q => osd_y(1),
      R => p_0_in
    );
\osd_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(2),
      Q => osd_y(2),
      R => p_0_in
    );
\osd_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(3),
      Q => osd_y(3),
      R => p_0_in
    );
\osd_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(4),
      Q => osd_y(4),
      R => p_0_in
    );
\osd_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(5),
      Q => osd_y(5),
      R => p_0_in
    );
\osd_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(6),
      Q => osd_y(6),
      R => p_0_in
    );
\osd_y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(7),
      Q => osd_y(7),
      R => p_0_in
    );
\osd_y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(8),
      Q => osd_y(8),
      R => p_0_in
    );
\osd_y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => osd_y_6,
      D => s00_axi_wdata(9),
      Q => osd_y(9),
      R => p_0_in
    );
out_pclk_r_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => s_dscale_en,
      I1 => rst_n,
      I2 => s_module_reset,
      O => out_pclk_r_i_2_n_0
    );
prev_href_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => s_crop_en,
      I1 => rst_n,
      I2 => s_module_reset,
      O => prev_href_i_1_n_0
    );
prev_vsync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => in_vsync,
      Q => prev_vsync_r,
      R => '0'
    );
prev_vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^out_vsync\,
      Q => prev_vsync,
      R => '0'
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(0),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_0_sn_1,
      I3 => axi_rdata(0),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(10),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_10_sn_1,
      I3 => axi_rdata(10),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(11),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_11_sn_1,
      I3 => axi_rdata(11),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(12),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_12_sn_1,
      I3 => axi_rdata(12),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(13),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_13_sn_1,
      I3 => axi_rdata(13),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(14),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_14_sn_1,
      I3 => axi_rdata(14),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(15),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_15_sn_1,
      I3 => axi_rdata(15),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(16),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_16_sn_1,
      I3 => axi_rdata(16),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(17),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_17_sn_1,
      I3 => axi_rdata(17),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(18),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_18_sn_1,
      I3 => axi_rdata(18),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(19),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_19_sn_1,
      I3 => axi_rdata(19),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(1),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_1_sn_1,
      I3 => axi_rdata(1),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(20),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_20_sn_1,
      I3 => axi_rdata(20),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(21),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_21_sn_1,
      I3 => axi_rdata(21),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(22),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_22_sn_1,
      I3 => axi_rdata(22),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(23),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_23_sn_1,
      I3 => axi_rdata(23),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(2),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_2_sn_1,
      I3 => axi_rdata(2),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_araddr_area_id,
      I1 => \^axi_arready_reg_0\,
      I2 => \^axi_rvalid_reg_0\,
      I3 => s00_axi_arvalid,
      O => osd_ram_ren
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(3),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_3_sn_1,
      I3 => axi_rdata(3),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(4),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_4_sn_1,
      I3 => axi_rdata(4),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(5),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_5_sn_1,
      I3 => axi_rdata(5),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(6),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_6_sn_1,
      I3 => axi_rdata(6),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(7),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_7_sn_1,
      I3 => axi_rdata(7),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(8),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_8_sn_1,
      I3 => axi_rdata(8),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \^doado\(9),
      I1 => \s00_axi_rdata[24]_0\,
      I2 => s00_axi_rdata_9_sn_1,
      I3 => axi_rdata(9),
      I4 => axi_araddr_area_id,
      O => s00_axi_rdata(9)
    );
s_crop_en_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => data1(3),
      Q => s_crop_en,
      R => '0'
    );
\s_crop_h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(0),
      Q => s_crop_h(0),
      R => '0'
    );
\s_crop_h_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(10),
      Q => s_crop_h(10),
      R => '0'
    );
\s_crop_h_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(11),
      Q => s_crop_h(11),
      R => '0'
    );
\s_crop_h_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(12),
      Q => s_crop_h(12),
      R => '0'
    );
\s_crop_h_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(13),
      Q => s_crop_h(13),
      R => '0'
    );
\s_crop_h_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(14),
      Q => s_crop_h(14),
      R => '0'
    );
\s_crop_h_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(15),
      Q => s_crop_h(15),
      R => '0'
    );
\s_crop_h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(1),
      Q => s_crop_h(1),
      R => '0'
    );
\s_crop_h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(2),
      Q => s_crop_h(2),
      R => '0'
    );
\s_crop_h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(3),
      Q => s_crop_h(3),
      R => '0'
    );
\s_crop_h_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(4),
      Q => s_crop_h(4),
      R => '0'
    );
\s_crop_h_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(5),
      Q => s_crop_h(5),
      R => '0'
    );
\s_crop_h_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(6),
      Q => s_crop_h(6),
      R => '0'
    );
\s_crop_h_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(7),
      Q => s_crop_h(7),
      R => '0'
    );
\s_crop_h_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(8),
      Q => s_crop_h(8),
      R => '0'
    );
\s_crop_h_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_h(9),
      Q => s_crop_h(9),
      R => '0'
    );
\s_crop_w_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(0),
      Q => s_crop_w(0),
      R => '0'
    );
\s_crop_w_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(10),
      Q => s_crop_w(10),
      R => '0'
    );
\s_crop_w_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(11),
      Q => s_crop_w(11),
      R => '0'
    );
\s_crop_w_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(12),
      Q => s_crop_w(12),
      R => '0'
    );
\s_crop_w_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(13),
      Q => s_crop_w(13),
      R => '0'
    );
\s_crop_w_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(14),
      Q => s_crop_w(14),
      R => '0'
    );
\s_crop_w_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(15),
      Q => s_crop_w(15),
      R => '0'
    );
\s_crop_w_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(1),
      Q => s_crop_w(1),
      R => '0'
    );
\s_crop_w_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(2),
      Q => s_crop_w(2),
      R => '0'
    );
\s_crop_w_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(3),
      Q => s_crop_w(3),
      R => '0'
    );
\s_crop_w_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(4),
      Q => s_crop_w(4),
      R => '0'
    );
\s_crop_w_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(5),
      Q => s_crop_w(5),
      R => '0'
    );
\s_crop_w_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(6),
      Q => s_crop_w(6),
      R => '0'
    );
\s_crop_w_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(7),
      Q => s_crop_w(7),
      R => '0'
    );
\s_crop_w_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(8),
      Q => s_crop_w(8),
      R => '0'
    );
\s_crop_w_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_w(9),
      Q => s_crop_w(9),
      R => '0'
    );
\s_crop_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(0),
      Q => s_crop_x(0),
      R => '0'
    );
\s_crop_x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(10),
      Q => s_crop_x(10),
      R => '0'
    );
\s_crop_x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(11),
      Q => s_crop_x(11),
      R => '0'
    );
\s_crop_x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(12),
      Q => s_crop_x(12),
      R => '0'
    );
\s_crop_x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(13),
      Q => s_crop_x(13),
      R => '0'
    );
\s_crop_x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(14),
      Q => s_crop_x(14),
      R => '0'
    );
\s_crop_x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(15),
      Q => s_crop_x(15),
      R => '0'
    );
\s_crop_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(1),
      Q => s_crop_x(1),
      R => '0'
    );
\s_crop_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(2),
      Q => s_crop_x(2),
      R => '0'
    );
\s_crop_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(3),
      Q => s_crop_x(3),
      R => '0'
    );
\s_crop_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(4),
      Q => s_crop_x(4),
      R => '0'
    );
\s_crop_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(5),
      Q => s_crop_x(5),
      R => '0'
    );
\s_crop_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(6),
      Q => s_crop_x(6),
      R => '0'
    );
\s_crop_x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(7),
      Q => s_crop_x(7),
      R => '0'
    );
\s_crop_x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(8),
      Q => s_crop_x(8),
      R => '0'
    );
\s_crop_x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_x(9),
      Q => s_crop_x(9),
      R => '0'
    );
\s_crop_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(0),
      Q => s_crop_y(0),
      R => '0'
    );
\s_crop_y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(10),
      Q => s_crop_y(10),
      R => '0'
    );
\s_crop_y_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(11),
      Q => s_crop_y(11),
      R => '0'
    );
\s_crop_y_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(12),
      Q => s_crop_y(12),
      R => '0'
    );
\s_crop_y_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(13),
      Q => s_crop_y(13),
      R => '0'
    );
\s_crop_y_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(14),
      Q => s_crop_y(14),
      R => '0'
    );
\s_crop_y_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(15),
      Q => s_crop_y(15),
      R => '0'
    );
\s_crop_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(1),
      Q => s_crop_y(1),
      R => '0'
    );
\s_crop_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(2),
      Q => s_crop_y(2),
      R => '0'
    );
\s_crop_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(3),
      Q => s_crop_y(3),
      R => '0'
    );
\s_crop_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(4),
      Q => s_crop_y(4),
      R => '0'
    );
\s_crop_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(5),
      Q => s_crop_y(5),
      R => '0'
    );
\s_crop_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(6),
      Q => s_crop_y(6),
      R => '0'
    );
\s_crop_y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(7),
      Q => s_crop_y(7),
      R => '0'
    );
\s_crop_y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(8),
      Q => s_crop_y(8),
      R => '0'
    );
\s_crop_y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => crop_y(9),
      Q => s_crop_y(9),
      R => '0'
    );
s_dscale_en_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => data1(4),
      Q => s_dscale_en,
      R => '0'
    );
\s_dscale_h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => dscale_h(0),
      Q => s_dscale_h(0),
      R => '0'
    );
\s_dscale_h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => dscale_h(1),
      Q => s_dscale_h(1),
      R => '0'
    );
\s_dscale_h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => dscale_h(2),
      Q => s_dscale_h(2),
      R => '0'
    );
\s_dscale_h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => dscale_h(3),
      Q => s_dscale_h(3),
      R => '0'
    );
\s_dscale_v_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => dscale_v(0),
      Q => s_dscale_v(0),
      R => '0'
    );
\s_dscale_v_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => dscale_v(1),
      Q => s_dscale_v(1),
      R => '0'
    );
\s_dscale_v_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => dscale_v(2),
      Q => s_dscale_v(2),
      R => '0'
    );
\s_dscale_v_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => dscale_v(3),
      Q => s_dscale_v(3),
      R => '0'
    );
s_module_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => module_reset,
      Q => s_module_reset,
      R => '0'
    );
s_osd_en_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => data1(5),
      Q => s_osd_en,
      R => '0'
    );
\s_osd_h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(0),
      Q => s_osd_h(0),
      R => '0'
    );
\s_osd_h_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(10),
      Q => s_osd_h(10),
      R => '0'
    );
\s_osd_h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(1),
      Q => s_osd_h(1),
      R => '0'
    );
\s_osd_h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(2),
      Q => s_osd_h(2),
      R => '0'
    );
\s_osd_h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(3),
      Q => s_osd_h(3),
      R => '0'
    );
\s_osd_h_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(4),
      Q => s_osd_h(4),
      R => '0'
    );
\s_osd_h_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(5),
      Q => s_osd_h(5),
      R => '0'
    );
\s_osd_h_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(6),
      Q => s_osd_h(6),
      R => '0'
    );
\s_osd_h_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(7),
      Q => s_osd_h(7),
      R => '0'
    );
\s_osd_h_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(8),
      Q => s_osd_h(8),
      R => '0'
    );
\s_osd_h_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_h(9),
      Q => s_osd_h(9),
      R => '0'
    );
\s_osd_rgb_bg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(0),
      Q => s_osd_rgb_bg(0),
      R => '0'
    );
\s_osd_rgb_bg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(10),
      Q => s_osd_rgb_bg(10),
      R => '0'
    );
\s_osd_rgb_bg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(11),
      Q => s_osd_rgb_bg(11),
      R => '0'
    );
\s_osd_rgb_bg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(12),
      Q => s_osd_rgb_bg(12),
      R => '0'
    );
\s_osd_rgb_bg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(13),
      Q => s_osd_rgb_bg(13),
      R => '0'
    );
\s_osd_rgb_bg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(14),
      Q => s_osd_rgb_bg(14),
      R => '0'
    );
\s_osd_rgb_bg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(15),
      Q => s_osd_rgb_bg(15),
      R => '0'
    );
\s_osd_rgb_bg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(16),
      Q => s_osd_rgb_bg(16),
      R => '0'
    );
\s_osd_rgb_bg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(17),
      Q => s_osd_rgb_bg(17),
      R => '0'
    );
\s_osd_rgb_bg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(18),
      Q => s_osd_rgb_bg(18),
      R => '0'
    );
\s_osd_rgb_bg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(19),
      Q => s_osd_rgb_bg(19),
      R => '0'
    );
\s_osd_rgb_bg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(1),
      Q => s_osd_rgb_bg(1),
      R => '0'
    );
\s_osd_rgb_bg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(20),
      Q => s_osd_rgb_bg(20),
      R => '0'
    );
\s_osd_rgb_bg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(21),
      Q => s_osd_rgb_bg(21),
      R => '0'
    );
\s_osd_rgb_bg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(22),
      Q => s_osd_rgb_bg(22),
      R => '0'
    );
\s_osd_rgb_bg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(23),
      Q => s_osd_rgb_bg(23),
      R => '0'
    );
\s_osd_rgb_bg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(2),
      Q => s_osd_rgb_bg(2),
      R => '0'
    );
\s_osd_rgb_bg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(3),
      Q => s_osd_rgb_bg(3),
      R => '0'
    );
\s_osd_rgb_bg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(4),
      Q => s_osd_rgb_bg(4),
      R => '0'
    );
\s_osd_rgb_bg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(5),
      Q => s_osd_rgb_bg(5),
      R => '0'
    );
\s_osd_rgb_bg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(6),
      Q => s_osd_rgb_bg(6),
      R => '0'
    );
\s_osd_rgb_bg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(7),
      Q => s_osd_rgb_bg(7),
      R => '0'
    );
\s_osd_rgb_bg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(8),
      Q => s_osd_rgb_bg(8),
      R => '0'
    );
\s_osd_rgb_bg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_bg(9),
      Q => s_osd_rgb_bg(9),
      R => '0'
    );
\s_osd_rgb_fg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(0),
      Q => s_osd_rgb_fg(0),
      R => '0'
    );
\s_osd_rgb_fg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(10),
      Q => s_osd_rgb_fg(10),
      R => '0'
    );
\s_osd_rgb_fg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(11),
      Q => s_osd_rgb_fg(11),
      R => '0'
    );
\s_osd_rgb_fg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(12),
      Q => s_osd_rgb_fg(12),
      R => '0'
    );
\s_osd_rgb_fg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(13),
      Q => s_osd_rgb_fg(13),
      R => '0'
    );
\s_osd_rgb_fg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(14),
      Q => s_osd_rgb_fg(14),
      R => '0'
    );
\s_osd_rgb_fg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(15),
      Q => s_osd_rgb_fg(15),
      R => '0'
    );
\s_osd_rgb_fg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(16),
      Q => s_osd_rgb_fg(16),
      R => '0'
    );
\s_osd_rgb_fg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(17),
      Q => s_osd_rgb_fg(17),
      R => '0'
    );
\s_osd_rgb_fg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(18),
      Q => s_osd_rgb_fg(18),
      R => '0'
    );
\s_osd_rgb_fg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(19),
      Q => s_osd_rgb_fg(19),
      R => '0'
    );
\s_osd_rgb_fg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(1),
      Q => s_osd_rgb_fg(1),
      R => '0'
    );
\s_osd_rgb_fg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(20),
      Q => s_osd_rgb_fg(20),
      R => '0'
    );
\s_osd_rgb_fg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(21),
      Q => s_osd_rgb_fg(21),
      R => '0'
    );
\s_osd_rgb_fg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(22),
      Q => s_osd_rgb_fg(22),
      R => '0'
    );
\s_osd_rgb_fg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(23),
      Q => s_osd_rgb_fg(23),
      R => '0'
    );
\s_osd_rgb_fg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(2),
      Q => s_osd_rgb_fg(2),
      R => '0'
    );
\s_osd_rgb_fg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(3),
      Q => s_osd_rgb_fg(3),
      R => '0'
    );
\s_osd_rgb_fg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(4),
      Q => s_osd_rgb_fg(4),
      R => '0'
    );
\s_osd_rgb_fg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(5),
      Q => s_osd_rgb_fg(5),
      R => '0'
    );
\s_osd_rgb_fg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(6),
      Q => s_osd_rgb_fg(6),
      R => '0'
    );
\s_osd_rgb_fg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(7),
      Q => s_osd_rgb_fg(7),
      R => '0'
    );
\s_osd_rgb_fg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(8),
      Q => s_osd_rgb_fg(8),
      R => '0'
    );
\s_osd_rgb_fg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_rgb_fg(9),
      Q => s_osd_rgb_fg(9),
      R => '0'
    );
\s_osd_w_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(0),
      Q => s_osd_w(0),
      R => '0'
    );
\s_osd_w_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(10),
      Q => s_osd_w(10),
      R => '0'
    );
\s_osd_w_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(11),
      Q => s_osd_w(11),
      R => '0'
    );
\s_osd_w_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(1),
      Q => s_osd_w(1),
      R => '0'
    );
\s_osd_w_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(2),
      Q => s_osd_w(2),
      R => '0'
    );
\s_osd_w_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(3),
      Q => s_osd_w(3),
      R => '0'
    );
\s_osd_w_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(4),
      Q => s_osd_w(4),
      R => '0'
    );
\s_osd_w_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(5),
      Q => s_osd_w(5),
      R => '0'
    );
\s_osd_w_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(6),
      Q => s_osd_w(6),
      R => '0'
    );
\s_osd_w_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(7),
      Q => s_osd_w(7),
      R => '0'
    );
\s_osd_w_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(8),
      Q => s_osd_w(8),
      R => '0'
    );
\s_osd_w_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_w(9),
      Q => s_osd_w(9),
      R => '0'
    );
\s_osd_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(0),
      Q => s_osd_x(0),
      R => '0'
    );
\s_osd_x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(10),
      Q => s_osd_x(10),
      R => '0'
    );
\s_osd_x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(11),
      Q => s_osd_x(11),
      R => '0'
    );
\s_osd_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(1),
      Q => s_osd_x(1),
      R => '0'
    );
\s_osd_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(2),
      Q => s_osd_x(2),
      R => '0'
    );
\s_osd_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(3),
      Q => s_osd_x(3),
      R => '0'
    );
\s_osd_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(4),
      Q => s_osd_x(4),
      R => '0'
    );
\s_osd_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(5),
      Q => s_osd_x(5),
      R => '0'
    );
\s_osd_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(6),
      Q => s_osd_x(6),
      R => '0'
    );
\s_osd_x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(7),
      Q => s_osd_x(7),
      R => '0'
    );
\s_osd_x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(8),
      Q => s_osd_x(8),
      R => '0'
    );
\s_osd_x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_x(9),
      Q => s_osd_x(9),
      R => '0'
    );
\s_osd_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(0),
      Q => s_osd_y(0),
      R => '0'
    );
\s_osd_y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(10),
      Q => s_osd_y(10),
      R => '0'
    );
\s_osd_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(1),
      Q => s_osd_y(1),
      R => '0'
    );
\s_osd_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(2),
      Q => s_osd_y(2),
      R => '0'
    );
\s_osd_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(3),
      Q => s_osd_y(3),
      R => '0'
    );
\s_osd_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(4),
      Q => s_osd_y(4),
      R => '0'
    );
\s_osd_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(5),
      Q => s_osd_y(5),
      R => '0'
    );
\s_osd_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(6),
      Q => s_osd_y(6),
      R => '0'
    );
\s_osd_y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(7),
      Q => s_osd_y(7),
      R => '0'
    );
\s_osd_y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(8),
      Q => s_osd_y(8),
      R => '0'
    );
\s_osd_y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => osd_y(9),
      Q => s_osd_y(9),
      R => '0'
    );
s_sobel_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_vsync_r,
      I1 => in_vsync,
      O => frame_start
    );
s_sobel_en_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => data1(1),
      Q => s_sobel_en,
      R => '0'
    );
s_yuv2rgb_en_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => data1(2),
      Q => s_yuv2rgb_en,
      R => '0'
    );
s_yuv444to422_en_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => data1(6),
      Q => s_yuv444to422_en,
      R => '0'
    );
s_yuv444to422_switch_uv_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => yuv444to422_switch_uv,
      Q => s_yuv444to422_switch_uv,
      R => '0'
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_rvalid_reg_0\,
      I2 => \^axi_arready_reg_0\,
      O => p_14_in
    );
sobel_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => hist_equ_en,
      D => s00_axi_wdata(1),
      Q => data1(1),
      R => p_0_in
    );
vip_top_i0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_top
     port map (
      DOADO(31 downto 0) => \^doado\(31 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      Q(9) => axi_araddr_area_id,
      Q(8) => \axi_araddr_reg_n_0_[10]\,
      Q(7) => \axi_araddr_reg_n_0_[9]\,
      Q(6) => \axi_araddr_reg_n_0_[8]\,
      Q(5) => \axi_araddr_reg_n_0_[7]\,
      Q(4 downto 0) => sel0(4 downto 0),
      \ZOUT_reg[19]\ => \ZOUT_reg[19]\,
      \axi_awaddr_reg[2]\ => vip_top_i0_n_77,
      \color_bg_r_reg[23]\(23 downto 0) => s_osd_rgb_bg(23 downto 0),
      \color_fg_r_reg[23]\(23 downto 0) => s_osd_rgb_fg(23 downto 0),
      \data_reg_reg[0]\ => href_reg_i_2_n_0,
      \data_t6_reg[0]\ => \data_t6[23]_i_2_n_0\,
      href_t3 => href_t3,
      href_t6_reg => href_t3_i_1_n_0,
      in_href => in_href,
      in_vsync => in_vsync,
      in_yuv(23 downto 0) => in_yuv(23 downto 0),
      int_frame_done => int_frame_done,
      int_frame_done_reg => int_frame_done_i_2_n_0,
      int_frame_done_reg_0 => int_frame_done_i_3_n_0,
      \line_cnt_reg[0]\ => prev_href_i_1_n_0,
      \line_cnt_reg[0]_0\(3 downto 0) => s_dscale_v(3 downto 0),
      mem_reg(9) => axi_awaddr_area_id,
      mem_reg(8) => \axi_awaddr_reg_n_0_[10]\,
      mem_reg(7) => \axi_awaddr_reg_n_0_[9]\,
      mem_reg(6) => \axi_awaddr_reg_n_0_[8]\,
      mem_reg(5) => p_0_in0,
      mem_reg(4 downto 0) => p_0_in_4(4 downto 0),
      mem_reg_0 => \^axi_awready_reg_0\,
      mem_reg_1 => \^axi_wready_reg_0\,
      \osd_pix_buf_t5_reg[0]\ => \osd_pix_buf_t5_reg[0]\,
      \osd_pix_buf_t5_reg[0]_0\ => \osd_pix_buf_t5_reg[0]_0\,
      \osd_pix_buf_t5_reg[10]\ => \osd_pix_buf_t5_reg[10]\,
      \osd_pix_buf_t5_reg[11]\ => \osd_pix_buf_t5_reg[11]\,
      \osd_pix_buf_t5_reg[12]\ => \osd_pix_buf_t5_reg[12]\,
      \osd_pix_buf_t5_reg[13]\ => \osd_pix_buf_t5_reg[13]\,
      \osd_pix_buf_t5_reg[14]\ => \osd_pix_buf_t5_reg[14]\,
      \osd_pix_buf_t5_reg[15]\ => \osd_pix_buf_t5_reg[15]\,
      \osd_pix_buf_t5_reg[16]\ => \osd_pix_buf_t5_reg[16]\,
      \osd_pix_buf_t5_reg[17]\ => \osd_pix_buf_t5_reg[17]\,
      \osd_pix_buf_t5_reg[18]\ => \osd_pix_buf_t5_reg[18]\,
      \osd_pix_buf_t5_reg[19]\ => \osd_pix_buf_t5_reg[19]\,
      \osd_pix_buf_t5_reg[1]\ => \osd_pix_buf_t5_reg[1]\,
      \osd_pix_buf_t5_reg[20]\ => \osd_pix_buf_t5_reg[20]\,
      \osd_pix_buf_t5_reg[21]\ => \osd_pix_buf_t5_reg[21]\,
      \osd_pix_buf_t5_reg[22]\ => \osd_pix_buf_t5_reg[22]\,
      \osd_pix_buf_t5_reg[23]\ => \osd_pix_buf_t5_reg[23]\,
      \osd_pix_buf_t5_reg[24]\ => \osd_pix_buf_t5_reg[24]\,
      \osd_pix_buf_t5_reg[25]\ => \osd_pix_buf_t5_reg[25]\,
      \osd_pix_buf_t5_reg[26]\ => \osd_pix_buf_t5_reg[26]\,
      \osd_pix_buf_t5_reg[27]\ => \osd_pix_buf_t5_reg[27]\,
      \osd_pix_buf_t5_reg[28]\ => \osd_pix_buf_t5_reg[28]\,
      \osd_pix_buf_t5_reg[29]\ => \osd_pix_buf_t5_reg[29]\,
      \osd_pix_buf_t5_reg[2]\ => \osd_pix_buf_t5_reg[2]\,
      \osd_pix_buf_t5_reg[30]\ => \osd_pix_buf_t5_reg[30]\,
      \osd_pix_buf_t5_reg[31]\ => \osd_pix_buf_t5_reg[31]\,
      \osd_pix_buf_t5_reg[3]\ => \osd_pix_buf_t5_reg[3]\,
      \osd_pix_buf_t5_reg[4]\ => \osd_pix_buf_t5_reg[4]\,
      \osd_pix_buf_t5_reg[5]\ => \osd_pix_buf_t5_reg[5]\,
      \osd_pix_buf_t5_reg[6]\ => \osd_pix_buf_t5_reg[6]\,
      \osd_pix_buf_t5_reg[7]\ => \osd_pix_buf_t5_reg[7]\,
      \osd_pix_buf_t5_reg[8]\ => \osd_pix_buf_t5_reg[8]\,
      \osd_pix_buf_t5_reg[9]\ => \osd_pix_buf_t5_reg[9]\,
      \osd_x0_r_reg[10]\(11 downto 0) => s_osd_x(11 downto 0),
      \osd_x1_r_reg[11]\(11 downto 0) => s_osd_w(11 downto 0),
      \osd_y0_r_reg[10]\(10 downto 0) => s_osd_y(10 downto 0),
      \osd_y1_r_reg[10]\(10 downto 0) => s_osd_h(10 downto 0),
      out_href => out_href,
      \out_href1_carry__0\(15 downto 0) => s_crop_y(15 downto 0),
      \out_href1_inferred__0/i__carry__2\(15 downto 0) => s_crop_h(15 downto 0),
      \out_href3_carry__2\(15 downto 0) => s_crop_x(15 downto 0),
      \out_href3_carry__2_0\(15 downto 0) => s_crop_w(15 downto 0),
      out_pclk_r_reg => CLK,
      out_rgb(23 downto 0) => out_rgb(23 downto 0),
      out_vsync => \^out_vsync\,
      pclk => pclk,
      \pix_cnt_reg[0]\ => out_pclk_r_i_2_n_0,
      \pix_cnt_reg[1]\(3 downto 0) => s_dscale_h(3 downto 0),
      \pix_y_t1_reg[10]\ => href_t1_i_2_n_0,
      prev_vsync => prev_vsync,
      rst_n => rst_n,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_rdata(7 downto 0) => s00_axi_rdata(31 downto 24),
      \s00_axi_rdata[24]\ => s00_axi_rdata_24_sn_1,
      \s00_axi_rdata[24]_0\ => \s00_axi_rdata[24]_0\,
      \s00_axi_rdata[25]\ => s00_axi_rdata_25_sn_1,
      \s00_axi_rdata[26]\ => s00_axi_rdata_26_sn_1,
      \s00_axi_rdata[27]\ => s00_axi_rdata_27_sn_1,
      \s00_axi_rdata[28]\ => s00_axi_rdata_28_sn_1,
      \s00_axi_rdata[29]\ => s00_axi_rdata_29_sn_1,
      \s00_axi_rdata[30]\ => s00_axi_rdata_30_sn_1,
      \s00_axi_rdata[31]\ => s00_axi_rdata_31_sn_1,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s_crop_en => s_crop_en,
      s_dscale_en => s_dscale_en,
      s_module_reset => s_module_reset,
      s_module_reset_reg => s_module_reset_reg_0,
      s_osd_en => s_osd_en,
      s_sobel_en => s_sobel_en,
      s_yuv2rgb_en => s_yuv2rgb_en,
      s_yuv444to422_en => s_yuv444to422_en,
      s_yuv444to422_switch_uv => s_yuv444to422_switch_uv
    );
yuv2rgb_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => hist_equ_en,
      D => s00_axi_wdata(2),
      Q => data1(2),
      S => p_0_in
    );
yuv444to422_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => hist_equ_en,
      D => s00_axi_wdata(6),
      Q => data1(6),
      R => p_0_in
    );
yuv444to422_switch_uv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => yuv444to422_switch_uv_i_2_n_0,
      I2 => p_0_in_4(4),
      I3 => p_0_in_4(3),
      I4 => \equ_min[7]_i_2_n_0\,
      I5 => yuv444to422_switch_uv,
      O => yuv444to422_switch_uv_i_1_n_0
    );
yuv444to422_switch_uv_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_4(1),
      I1 => p_0_in_4(2),
      O => yuv444to422_switch_uv_i_2_n_0
    );
yuv444to422_switch_uv_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => yuv444to422_switch_uv_i_1_n_0,
      Q => yuv444to422_switch_uv,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_pclk_r_reg : out STD_LOGIC;
    href_t3 : out STD_LOGIC;
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s_module_reset_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    irq : out STD_LOGIC;
    osd_ram_ren : out STD_LOGIC;
    pclk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst_n : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_rdata_24_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[24]_0\ : in STD_LOGIC;
    s00_axi_rdata_25_sp_1 : in STD_LOGIC;
    s00_axi_rdata_26_sp_1 : in STD_LOGIC;
    s00_axi_rdata_27_sp_1 : in STD_LOGIC;
    s00_axi_rdata_28_sp_1 : in STD_LOGIC;
    s00_axi_rdata_29_sp_1 : in STD_LOGIC;
    s00_axi_rdata_30_sp_1 : in STD_LOGIC;
    s00_axi_rdata_31_sp_1 : in STD_LOGIC;
    \ZOUT_reg[19]\ : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \osd_pix_buf_t5_reg[0]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[0]_0\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[1]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[2]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[3]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[4]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[5]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[6]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[7]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[8]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[9]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[10]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[11]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[12]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[13]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[14]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[15]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[16]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[17]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[18]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[19]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[20]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[21]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[22]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[23]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[24]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[25]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[26]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[27]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[28]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[29]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[30]\ : in STD_LOGIC;
    \osd_pix_buf_t5_reg[31]\ : in STD_LOGIC;
    in_href : in STD_LOGIC;
    in_yuv : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_rdata_0_sp_1 : in STD_LOGIC;
    s00_axi_rdata_1_sp_1 : in STD_LOGIC;
    s00_axi_rdata_2_sp_1 : in STD_LOGIC;
    s00_axi_rdata_3_sp_1 : in STD_LOGIC;
    s00_axi_rdata_4_sp_1 : in STD_LOGIC;
    s00_axi_rdata_5_sp_1 : in STD_LOGIC;
    s00_axi_rdata_6_sp_1 : in STD_LOGIC;
    s00_axi_rdata_7_sp_1 : in STD_LOGIC;
    s00_axi_rdata_8_sp_1 : in STD_LOGIC;
    s00_axi_rdata_9_sp_1 : in STD_LOGIC;
    s00_axi_rdata_10_sp_1 : in STD_LOGIC;
    s00_axi_rdata_11_sp_1 : in STD_LOGIC;
    s00_axi_rdata_12_sp_1 : in STD_LOGIC;
    s00_axi_rdata_13_sp_1 : in STD_LOGIC;
    s00_axi_rdata_14_sp_1 : in STD_LOGIC;
    s00_axi_rdata_15_sp_1 : in STD_LOGIC;
    s00_axi_rdata_16_sp_1 : in STD_LOGIC;
    s00_axi_rdata_17_sp_1 : in STD_LOGIC;
    s00_axi_rdata_18_sp_1 : in STD_LOGIC;
    s00_axi_rdata_19_sp_1 : in STD_LOGIC;
    s00_axi_rdata_20_sp_1 : in STD_LOGIC;
    s00_axi_rdata_21_sp_1 : in STD_LOGIC;
    s00_axi_rdata_22_sp_1 : in STD_LOGIC;
    s00_axi_rdata_23_sp_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0 is
  signal s00_axi_rdata_0_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_10_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_11_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_12_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_13_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_14_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_15_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_16_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_17_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_18_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_19_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_1_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_20_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_21_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_22_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_23_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_24_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_25_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_26_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_27_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_28_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_29_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_2_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_30_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_31_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_3_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_4_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_5_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_6_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_7_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_8_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_9_sn_1 : STD_LOGIC;
begin
  s00_axi_rdata_0_sn_1 <= s00_axi_rdata_0_sp_1;
  s00_axi_rdata_10_sn_1 <= s00_axi_rdata_10_sp_1;
  s00_axi_rdata_11_sn_1 <= s00_axi_rdata_11_sp_1;
  s00_axi_rdata_12_sn_1 <= s00_axi_rdata_12_sp_1;
  s00_axi_rdata_13_sn_1 <= s00_axi_rdata_13_sp_1;
  s00_axi_rdata_14_sn_1 <= s00_axi_rdata_14_sp_1;
  s00_axi_rdata_15_sn_1 <= s00_axi_rdata_15_sp_1;
  s00_axi_rdata_16_sn_1 <= s00_axi_rdata_16_sp_1;
  s00_axi_rdata_17_sn_1 <= s00_axi_rdata_17_sp_1;
  s00_axi_rdata_18_sn_1 <= s00_axi_rdata_18_sp_1;
  s00_axi_rdata_19_sn_1 <= s00_axi_rdata_19_sp_1;
  s00_axi_rdata_1_sn_1 <= s00_axi_rdata_1_sp_1;
  s00_axi_rdata_20_sn_1 <= s00_axi_rdata_20_sp_1;
  s00_axi_rdata_21_sn_1 <= s00_axi_rdata_21_sp_1;
  s00_axi_rdata_22_sn_1 <= s00_axi_rdata_22_sp_1;
  s00_axi_rdata_23_sn_1 <= s00_axi_rdata_23_sp_1;
  s00_axi_rdata_24_sn_1 <= s00_axi_rdata_24_sp_1;
  s00_axi_rdata_25_sn_1 <= s00_axi_rdata_25_sp_1;
  s00_axi_rdata_26_sn_1 <= s00_axi_rdata_26_sp_1;
  s00_axi_rdata_27_sn_1 <= s00_axi_rdata_27_sp_1;
  s00_axi_rdata_28_sn_1 <= s00_axi_rdata_28_sp_1;
  s00_axi_rdata_29_sn_1 <= s00_axi_rdata_29_sp_1;
  s00_axi_rdata_2_sn_1 <= s00_axi_rdata_2_sp_1;
  s00_axi_rdata_30_sn_1 <= s00_axi_rdata_30_sp_1;
  s00_axi_rdata_31_sn_1 <= s00_axi_rdata_31_sp_1;
  s00_axi_rdata_3_sn_1 <= s00_axi_rdata_3_sp_1;
  s00_axi_rdata_4_sn_1 <= s00_axi_rdata_4_sp_1;
  s00_axi_rdata_5_sn_1 <= s00_axi_rdata_5_sp_1;
  s00_axi_rdata_6_sn_1 <= s00_axi_rdata_6_sp_1;
  s00_axi_rdata_7_sn_1 <= s00_axi_rdata_7_sp_1;
  s00_axi_rdata_8_sn_1 <= s00_axi_rdata_8_sp_1;
  s00_axi_rdata_9_sn_1 <= s00_axi_rdata_9_sp_1;
xil_vip_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0_S00_AXI
     port map (
      CLK => out_pclk_r_reg,
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \ZOUT_reg[19]\ => \ZOUT_reg[19]\,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      axi_wready_reg_0 => axi_wready_reg,
      href_t3 => href_t3,
      in_href => in_href,
      in_vsync => in_vsync,
      in_yuv(23 downto 0) => in_yuv(23 downto 0),
      irq => irq,
      \osd_pix_buf_t5_reg[0]\ => \osd_pix_buf_t5_reg[0]\,
      \osd_pix_buf_t5_reg[0]_0\ => \osd_pix_buf_t5_reg[0]_0\,
      \osd_pix_buf_t5_reg[10]\ => \osd_pix_buf_t5_reg[10]\,
      \osd_pix_buf_t5_reg[11]\ => \osd_pix_buf_t5_reg[11]\,
      \osd_pix_buf_t5_reg[12]\ => \osd_pix_buf_t5_reg[12]\,
      \osd_pix_buf_t5_reg[13]\ => \osd_pix_buf_t5_reg[13]\,
      \osd_pix_buf_t5_reg[14]\ => \osd_pix_buf_t5_reg[14]\,
      \osd_pix_buf_t5_reg[15]\ => \osd_pix_buf_t5_reg[15]\,
      \osd_pix_buf_t5_reg[16]\ => \osd_pix_buf_t5_reg[16]\,
      \osd_pix_buf_t5_reg[17]\ => \osd_pix_buf_t5_reg[17]\,
      \osd_pix_buf_t5_reg[18]\ => \osd_pix_buf_t5_reg[18]\,
      \osd_pix_buf_t5_reg[19]\ => \osd_pix_buf_t5_reg[19]\,
      \osd_pix_buf_t5_reg[1]\ => \osd_pix_buf_t5_reg[1]\,
      \osd_pix_buf_t5_reg[20]\ => \osd_pix_buf_t5_reg[20]\,
      \osd_pix_buf_t5_reg[21]\ => \osd_pix_buf_t5_reg[21]\,
      \osd_pix_buf_t5_reg[22]\ => \osd_pix_buf_t5_reg[22]\,
      \osd_pix_buf_t5_reg[23]\ => \osd_pix_buf_t5_reg[23]\,
      \osd_pix_buf_t5_reg[24]\ => \osd_pix_buf_t5_reg[24]\,
      \osd_pix_buf_t5_reg[25]\ => \osd_pix_buf_t5_reg[25]\,
      \osd_pix_buf_t5_reg[26]\ => \osd_pix_buf_t5_reg[26]\,
      \osd_pix_buf_t5_reg[27]\ => \osd_pix_buf_t5_reg[27]\,
      \osd_pix_buf_t5_reg[28]\ => \osd_pix_buf_t5_reg[28]\,
      \osd_pix_buf_t5_reg[29]\ => \osd_pix_buf_t5_reg[29]\,
      \osd_pix_buf_t5_reg[2]\ => \osd_pix_buf_t5_reg[2]\,
      \osd_pix_buf_t5_reg[30]\ => \osd_pix_buf_t5_reg[30]\,
      \osd_pix_buf_t5_reg[31]\ => \osd_pix_buf_t5_reg[31]\,
      \osd_pix_buf_t5_reg[3]\ => \osd_pix_buf_t5_reg[3]\,
      \osd_pix_buf_t5_reg[4]\ => \osd_pix_buf_t5_reg[4]\,
      \osd_pix_buf_t5_reg[5]\ => \osd_pix_buf_t5_reg[5]\,
      \osd_pix_buf_t5_reg[6]\ => \osd_pix_buf_t5_reg[6]\,
      \osd_pix_buf_t5_reg[7]\ => \osd_pix_buf_t5_reg[7]\,
      \osd_pix_buf_t5_reg[8]\ => \osd_pix_buf_t5_reg[8]\,
      \osd_pix_buf_t5_reg[9]\ => \osd_pix_buf_t5_reg[9]\,
      osd_ram_ren => osd_ram_ren,
      out_href => out_href,
      out_rgb(23 downto 0) => out_rgb(23 downto 0),
      out_vsync => out_vsync,
      pclk => pclk,
      rst_n => rst_n,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(9 downto 0) => s00_axi_araddr(9 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(9 downto 0) => s00_axi_awaddr(9 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      \s00_axi_rdata[24]_0\ => \s00_axi_rdata[24]_0\,
      s00_axi_rdata_0_sp_1 => s00_axi_rdata_0_sn_1,
      s00_axi_rdata_10_sp_1 => s00_axi_rdata_10_sn_1,
      s00_axi_rdata_11_sp_1 => s00_axi_rdata_11_sn_1,
      s00_axi_rdata_12_sp_1 => s00_axi_rdata_12_sn_1,
      s00_axi_rdata_13_sp_1 => s00_axi_rdata_13_sn_1,
      s00_axi_rdata_14_sp_1 => s00_axi_rdata_14_sn_1,
      s00_axi_rdata_15_sp_1 => s00_axi_rdata_15_sn_1,
      s00_axi_rdata_16_sp_1 => s00_axi_rdata_16_sn_1,
      s00_axi_rdata_17_sp_1 => s00_axi_rdata_17_sn_1,
      s00_axi_rdata_18_sp_1 => s00_axi_rdata_18_sn_1,
      s00_axi_rdata_19_sp_1 => s00_axi_rdata_19_sn_1,
      s00_axi_rdata_1_sp_1 => s00_axi_rdata_1_sn_1,
      s00_axi_rdata_20_sp_1 => s00_axi_rdata_20_sn_1,
      s00_axi_rdata_21_sp_1 => s00_axi_rdata_21_sn_1,
      s00_axi_rdata_22_sp_1 => s00_axi_rdata_22_sn_1,
      s00_axi_rdata_23_sp_1 => s00_axi_rdata_23_sn_1,
      s00_axi_rdata_24_sp_1 => s00_axi_rdata_24_sn_1,
      s00_axi_rdata_25_sp_1 => s00_axi_rdata_25_sn_1,
      s00_axi_rdata_26_sp_1 => s00_axi_rdata_26_sn_1,
      s00_axi_rdata_27_sp_1 => s00_axi_rdata_27_sn_1,
      s00_axi_rdata_28_sp_1 => s00_axi_rdata_28_sn_1,
      s00_axi_rdata_29_sp_1 => s00_axi_rdata_29_sn_1,
      s00_axi_rdata_2_sp_1 => s00_axi_rdata_2_sn_1,
      s00_axi_rdata_30_sp_1 => s00_axi_rdata_30_sn_1,
      s00_axi_rdata_31_sp_1 => s00_axi_rdata_31_sn_1,
      s00_axi_rdata_3_sp_1 => s00_axi_rdata_3_sn_1,
      s00_axi_rdata_4_sp_1 => s00_axi_rdata_4_sn_1,
      s00_axi_rdata_5_sp_1 => s00_axi_rdata_5_sn_1,
      s00_axi_rdata_6_sp_1 => s00_axi_rdata_6_sn_1,
      s00_axi_rdata_7_sp_1 => s00_axi_rdata_7_sn_1,
      s00_axi_rdata_8_sp_1 => s00_axi_rdata_8_sn_1,
      s00_axi_rdata_9_sp_1 => s00_axi_rdata_9_sn_1,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s_module_reset_reg_0 => s_module_reset_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pclk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    in_href : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    in_yuv : in STD_LOGIC_VECTOR ( 23 downto 0 );
    out_pclk : out STD_LOGIC;
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    out_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    irq : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "base_xil_vip_0_0,xil_vip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "xil_vip_v1_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal XOUT1_carry_i_9_n_0 : STD_LOGIC;
  signal inst_n_0 : STD_LOGIC;
  signal inst_n_1 : STD_LOGIC;
  signal inst_n_10 : STD_LOGIC;
  signal inst_n_11 : STD_LOGIC;
  signal inst_n_12 : STD_LOGIC;
  signal inst_n_13 : STD_LOGIC;
  signal inst_n_14 : STD_LOGIC;
  signal inst_n_15 : STD_LOGIC;
  signal inst_n_16 : STD_LOGIC;
  signal inst_n_17 : STD_LOGIC;
  signal inst_n_18 : STD_LOGIC;
  signal inst_n_19 : STD_LOGIC;
  signal inst_n_2 : STD_LOGIC;
  signal inst_n_20 : STD_LOGIC;
  signal inst_n_21 : STD_LOGIC;
  signal inst_n_22 : STD_LOGIC;
  signal inst_n_23 : STD_LOGIC;
  signal inst_n_24 : STD_LOGIC;
  signal inst_n_25 : STD_LOGIC;
  signal inst_n_26 : STD_LOGIC;
  signal inst_n_27 : STD_LOGIC;
  signal inst_n_28 : STD_LOGIC;
  signal inst_n_29 : STD_LOGIC;
  signal inst_n_3 : STD_LOGIC;
  signal inst_n_30 : STD_LOGIC;
  signal inst_n_31 : STD_LOGIC;
  signal inst_n_32 : STD_LOGIC;
  signal inst_n_33 : STD_LOGIC;
  signal inst_n_34 : STD_LOGIC;
  signal inst_n_35 : STD_LOGIC;
  signal inst_n_36 : STD_LOGIC;
  signal inst_n_37 : STD_LOGIC;
  signal inst_n_38 : STD_LOGIC;
  signal inst_n_39 : STD_LOGIC;
  signal inst_n_4 : STD_LOGIC;
  signal inst_n_40 : STD_LOGIC;
  signal inst_n_41 : STD_LOGIC;
  signal inst_n_42 : STD_LOGIC;
  signal inst_n_43 : STD_LOGIC;
  signal inst_n_44 : STD_LOGIC;
  signal inst_n_45 : STD_LOGIC;
  signal inst_n_46 : STD_LOGIC;
  signal inst_n_47 : STD_LOGIC;
  signal inst_n_48 : STD_LOGIC;
  signal inst_n_49 : STD_LOGIC;
  signal inst_n_5 : STD_LOGIC;
  signal inst_n_50 : STD_LOGIC;
  signal inst_n_51 : STD_LOGIC;
  signal inst_n_52 : STD_LOGIC;
  signal inst_n_53 : STD_LOGIC;
  signal inst_n_54 : STD_LOGIC;
  signal inst_n_55 : STD_LOGIC;
  signal inst_n_56 : STD_LOGIC;
  signal inst_n_57 : STD_LOGIC;
  signal inst_n_58 : STD_LOGIC;
  signal inst_n_59 : STD_LOGIC;
  signal inst_n_6 : STD_LOGIC;
  signal inst_n_60 : STD_LOGIC;
  signal inst_n_61 : STD_LOGIC;
  signal inst_n_62 : STD_LOGIC;
  signal inst_n_63 : STD_LOGIC;
  signal inst_n_7 : STD_LOGIC;
  signal inst_n_73 : STD_LOGIC;
  signal inst_n_8 : STD_LOGIC;
  signal inst_n_9 : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \osd_pix_buf_t5_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \^out_pclk\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \xil_vip_v1_0_S00_AXI_inst/osd_ram_ren\ : STD_LOGIC;
  signal \xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/href_t3\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_href : signal is "xilinx.com:interface:vid_io:1.0 yuv ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of in_vsync : signal is "xilinx.com:interface:vid_io:1.0 yuv VSYNC";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of out_href : signal is "xilinx.com:interface:vid_io:1.0 rgb ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of out_pclk : signal is "xilinx.com:signal:clock:1.0 out_pclk CLK";
  attribute X_INTERFACE_PARAMETER of out_pclk : signal is "XIL_INTERFACENAME out_pclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN base_xil_vip_0_0_out_pclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_vsync : signal is "xilinx.com:interface:vid_io:1.0 rgb VSYNC";
  attribute X_INTERFACE_INFO of pclk : signal is "xilinx.com:signal:clock:1.0 pclk CLK";
  attribute X_INTERFACE_PARAMETER of pclk : signal is "XIL_INTERFACENAME pclk, ASSOCIATED_RESET rst_n, FREQ_HZ 120000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of in_yuv : signal is "xilinx.com:interface:vid_io:1.0 yuv DATA";
  attribute X_INTERFACE_INFO of out_rgb : signal is "xilinx.com:interface:vid_io:1.0 rgb DATA";
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
  out_pclk <= \^out_pclk\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
XOUT1_carry_i_9: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => inst_n_73,
      D => '1',
      Q => XOUT1_carry_i_9_n_0
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0
     port map (
      DOADO(31) => inst_n_0,
      DOADO(30) => inst_n_1,
      DOADO(29) => inst_n_2,
      DOADO(28) => inst_n_3,
      DOADO(27) => inst_n_4,
      DOADO(26) => inst_n_5,
      DOADO(25) => inst_n_6,
      DOADO(24) => inst_n_7,
      DOADO(23) => inst_n_8,
      DOADO(22) => inst_n_9,
      DOADO(21) => inst_n_10,
      DOADO(20) => inst_n_11,
      DOADO(19) => inst_n_12,
      DOADO(18) => inst_n_13,
      DOADO(17) => inst_n_14,
      DOADO(16) => inst_n_15,
      DOADO(15) => inst_n_16,
      DOADO(14) => inst_n_17,
      DOADO(13) => inst_n_18,
      DOADO(12) => inst_n_19,
      DOADO(11) => inst_n_20,
      DOADO(10) => inst_n_21,
      DOADO(9) => inst_n_22,
      DOADO(8) => inst_n_23,
      DOADO(7) => inst_n_24,
      DOADO(6) => inst_n_25,
      DOADO(5) => inst_n_26,
      DOADO(4) => inst_n_27,
      DOADO(3) => inst_n_28,
      DOADO(2) => inst_n_29,
      DOADO(1) => inst_n_30,
      DOADO(0) => inst_n_31,
      DOBDO(31) => inst_n_32,
      DOBDO(30) => inst_n_33,
      DOBDO(29) => inst_n_34,
      DOBDO(28) => inst_n_35,
      DOBDO(27) => inst_n_36,
      DOBDO(26) => inst_n_37,
      DOBDO(25) => inst_n_38,
      DOBDO(24) => inst_n_39,
      DOBDO(23) => inst_n_40,
      DOBDO(22) => inst_n_41,
      DOBDO(21) => inst_n_42,
      DOBDO(20) => inst_n_43,
      DOBDO(19) => inst_n_44,
      DOBDO(18) => inst_n_45,
      DOBDO(17) => inst_n_46,
      DOBDO(16) => inst_n_47,
      DOBDO(15) => inst_n_48,
      DOBDO(14) => inst_n_49,
      DOBDO(13) => inst_n_50,
      DOBDO(12) => inst_n_51,
      DOBDO(11) => inst_n_52,
      DOBDO(10) => inst_n_53,
      DOBDO(9) => inst_n_54,
      DOBDO(8) => inst_n_55,
      DOBDO(7) => inst_n_56,
      DOBDO(6) => inst_n_57,
      DOBDO(5) => inst_n_58,
      DOBDO(4) => inst_n_59,
      DOBDO(3) => inst_n_60,
      DOBDO(2) => inst_n_61,
      DOBDO(1) => inst_n_62,
      DOBDO(0) => inst_n_63,
      \ZOUT_reg[19]\ => XOUT1_carry_i_9_n_0,
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      axi_wready_reg => s00_axi_wready,
      href_t3 => \xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/href_t3\,
      in_href => in_href,
      in_vsync => in_vsync,
      in_yuv(23 downto 0) => in_yuv(23 downto 0),
      irq => irq,
      \osd_pix_buf_t5_reg[0]\ => \osd_pix_buf_t5_reg[0]_i_2_n_0\,
      \osd_pix_buf_t5_reg[0]_0\ => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      \osd_pix_buf_t5_reg[10]\ => \osd_pix_buf_t5_reg[10]_i_2_n_0\,
      \osd_pix_buf_t5_reg[11]\ => \osd_pix_buf_t5_reg[11]_i_2_n_0\,
      \osd_pix_buf_t5_reg[12]\ => \osd_pix_buf_t5_reg[12]_i_2_n_0\,
      \osd_pix_buf_t5_reg[13]\ => \osd_pix_buf_t5_reg[13]_i_2_n_0\,
      \osd_pix_buf_t5_reg[14]\ => \osd_pix_buf_t5_reg[14]_i_2_n_0\,
      \osd_pix_buf_t5_reg[15]\ => \osd_pix_buf_t5_reg[15]_i_2_n_0\,
      \osd_pix_buf_t5_reg[16]\ => \osd_pix_buf_t5_reg[16]_i_2_n_0\,
      \osd_pix_buf_t5_reg[17]\ => \osd_pix_buf_t5_reg[17]_i_2_n_0\,
      \osd_pix_buf_t5_reg[18]\ => \osd_pix_buf_t5_reg[18]_i_2_n_0\,
      \osd_pix_buf_t5_reg[19]\ => \osd_pix_buf_t5_reg[19]_i_2_n_0\,
      \osd_pix_buf_t5_reg[1]\ => \osd_pix_buf_t5_reg[1]_i_2_n_0\,
      \osd_pix_buf_t5_reg[20]\ => \osd_pix_buf_t5_reg[20]_i_2_n_0\,
      \osd_pix_buf_t5_reg[21]\ => \osd_pix_buf_t5_reg[21]_i_2_n_0\,
      \osd_pix_buf_t5_reg[22]\ => \osd_pix_buf_t5_reg[22]_i_2_n_0\,
      \osd_pix_buf_t5_reg[23]\ => \osd_pix_buf_t5_reg[23]_i_2_n_0\,
      \osd_pix_buf_t5_reg[24]\ => \osd_pix_buf_t5_reg[24]_i_2_n_0\,
      \osd_pix_buf_t5_reg[25]\ => \osd_pix_buf_t5_reg[25]_i_2_n_0\,
      \osd_pix_buf_t5_reg[26]\ => \osd_pix_buf_t5_reg[26]_i_2_n_0\,
      \osd_pix_buf_t5_reg[27]\ => \osd_pix_buf_t5_reg[27]_i_2_n_0\,
      \osd_pix_buf_t5_reg[28]\ => \osd_pix_buf_t5_reg[28]_i_2_n_0\,
      \osd_pix_buf_t5_reg[29]\ => \osd_pix_buf_t5_reg[29]_i_2_n_0\,
      \osd_pix_buf_t5_reg[2]\ => \osd_pix_buf_t5_reg[2]_i_2_n_0\,
      \osd_pix_buf_t5_reg[30]\ => \osd_pix_buf_t5_reg[30]_i_2_n_0\,
      \osd_pix_buf_t5_reg[31]\ => \osd_pix_buf_t5_reg[31]_i_5_n_0\,
      \osd_pix_buf_t5_reg[3]\ => \osd_pix_buf_t5_reg[3]_i_2_n_0\,
      \osd_pix_buf_t5_reg[4]\ => \osd_pix_buf_t5_reg[4]_i_2_n_0\,
      \osd_pix_buf_t5_reg[5]\ => \osd_pix_buf_t5_reg[5]_i_2_n_0\,
      \osd_pix_buf_t5_reg[6]\ => \osd_pix_buf_t5_reg[6]_i_2_n_0\,
      \osd_pix_buf_t5_reg[7]\ => \osd_pix_buf_t5_reg[7]_i_2_n_0\,
      \osd_pix_buf_t5_reg[8]\ => \osd_pix_buf_t5_reg[8]_i_2_n_0\,
      \osd_pix_buf_t5_reg[9]\ => \osd_pix_buf_t5_reg[9]_i_2_n_0\,
      osd_ram_ren => \xil_vip_v1_0_S00_AXI_inst/osd_ram_ren\,
      out_href => out_href,
      out_pclk_r_reg => \^out_pclk\,
      out_rgb(23 downto 0) => out_rgb(23 downto 0),
      out_vsync => out_vsync,
      pclk => pclk,
      rst_n => rst_n,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(9 downto 0) => s00_axi_araddr(11 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(9 downto 0) => s00_axi_awaddr(11 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      \s00_axi_rdata[24]_0\ => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      s00_axi_rdata_0_sp_1 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      s00_axi_rdata_10_sp_1 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      s00_axi_rdata_11_sp_1 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      s00_axi_rdata_12_sp_1 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      s00_axi_rdata_13_sp_1 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      s00_axi_rdata_14_sp_1 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      s00_axi_rdata_15_sp_1 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      s00_axi_rdata_16_sp_1 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      s00_axi_rdata_17_sp_1 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      s00_axi_rdata_18_sp_1 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      s00_axi_rdata_19_sp_1 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      s00_axi_rdata_1_sp_1 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      s00_axi_rdata_20_sp_1 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      s00_axi_rdata_21_sp_1 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      s00_axi_rdata_22_sp_1 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      s00_axi_rdata_23_sp_1 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      s00_axi_rdata_24_sp_1 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      s00_axi_rdata_25_sp_1 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      s00_axi_rdata_26_sp_1 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      s00_axi_rdata_27_sp_1 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      s00_axi_rdata_28_sp_1 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      s00_axi_rdata_29_sp_1 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      s00_axi_rdata_2_sp_1 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      s00_axi_rdata_30_sp_1 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      s00_axi_rdata_31_sp_1 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      s00_axi_rdata_3_sp_1 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      s00_axi_rdata_4_sp_1 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      s00_axi_rdata_5_sp_1 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      s00_axi_rdata_6_sp_1 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      s00_axi_rdata_7_sp_1 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      s00_axi_rdata_8_sp_1 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      s00_axi_rdata_9_sp_1 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s_module_reset_reg => inst_n_73
    );
\osd_pix_buf_t5_reg[0]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_63,
      Q => \osd_pix_buf_t5_reg[0]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[10]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_53,
      Q => \osd_pix_buf_t5_reg[10]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[11]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_52,
      Q => \osd_pix_buf_t5_reg[11]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[12]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_51,
      Q => \osd_pix_buf_t5_reg[12]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[13]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_50,
      Q => \osd_pix_buf_t5_reg[13]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[14]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_49,
      Q => \osd_pix_buf_t5_reg[14]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[15]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_48,
      Q => \osd_pix_buf_t5_reg[15]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[16]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_47,
      Q => \osd_pix_buf_t5_reg[16]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[17]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_46,
      Q => \osd_pix_buf_t5_reg[17]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[18]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_45,
      Q => \osd_pix_buf_t5_reg[18]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[19]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_44,
      Q => \osd_pix_buf_t5_reg[19]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[1]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_62,
      Q => \osd_pix_buf_t5_reg[1]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[20]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_43,
      Q => \osd_pix_buf_t5_reg[20]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[21]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_42,
      Q => \osd_pix_buf_t5_reg[21]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[22]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_41,
      Q => \osd_pix_buf_t5_reg[22]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[23]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_40,
      Q => \osd_pix_buf_t5_reg[23]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[24]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_39,
      Q => \osd_pix_buf_t5_reg[24]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[25]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_38,
      Q => \osd_pix_buf_t5_reg[25]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[26]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_37,
      Q => \osd_pix_buf_t5_reg[26]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[27]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_36,
      Q => \osd_pix_buf_t5_reg[27]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[28]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_35,
      Q => \osd_pix_buf_t5_reg[28]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[29]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_34,
      Q => \osd_pix_buf_t5_reg[29]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[2]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_61,
      Q => \osd_pix_buf_t5_reg[2]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[30]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_33,
      Q => \osd_pix_buf_t5_reg[30]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[31]_i_4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^out_pclk\,
      CE => '1',
      D => \xil_vip_v1_0_S00_AXI_inst/vip_top_i0/osd_i0/href_t3\,
      Q => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[31]_i_5\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_32,
      Q => \osd_pix_buf_t5_reg[31]_i_5_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[3]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_60,
      Q => \osd_pix_buf_t5_reg[3]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[4]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_59,
      Q => \osd_pix_buf_t5_reg[4]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[5]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_58,
      Q => \osd_pix_buf_t5_reg[5]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[6]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_57,
      Q => \osd_pix_buf_t5_reg[6]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[7]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_56,
      Q => \osd_pix_buf_t5_reg[7]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[8]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_55,
      Q => \osd_pix_buf_t5_reg[8]_i_2_n_0\,
      R => '0'
    );
\osd_pix_buf_t5_reg[9]_i_2\: unisim.vcomponents.FDRE
     port map (
      C => \^out_pclk\,
      CE => \osd_pix_buf_t5_reg[31]_i_4_n_0\,
      D => inst_n_54,
      Q => \osd_pix_buf_t5_reg[9]_i_2_n_0\,
      R => '0'
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_31,
      Q => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_21,
      Q => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_20,
      Q => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_19,
      Q => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_18,
      Q => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_17,
      Q => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_16,
      Q => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_15,
      Q => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_14,
      Q => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_13,
      Q => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_12,
      Q => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_30,
      Q => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_11,
      Q => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_10,
      Q => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_9,
      Q => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_8,
      Q => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_7,
      Q => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_6,
      Q => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_5,
      Q => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_4,
      Q => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_3,
      Q => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_2,
      Q => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_29,
      Q => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_1,
      Q => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_0,
      Q => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \xil_vip_v1_0_S00_AXI_inst/osd_ram_ren\,
      Q => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      R => '0'
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_28,
      Q => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_27,
      Q => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_26,
      Q => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_25,
      Q => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_24,
      Q => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_23,
      Q => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      R => '0'
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      D => inst_n_22,
      Q => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      R => '0'
    );
end STRUCTURE;
