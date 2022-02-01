-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Dec 27 00:15:07 2021
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_xil_vip_0_0 -prefix
--               design_1_xil_vip_0_0_ design_1_xil_vip_0_0_sim_netlist.vhdl
-- Design      : design_1_xil_vip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_simple_dp_ram is
  port (
    ram0_q : out STD_LOGIC_VECTOR ( 22 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pclk : in STD_LOGIC;
    cur_ram : in STD_LOGIC;
    hist_equ_href : in STD_LOGIC;
    cur_clr_done : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    mem_reg_5 : in STD_LOGIC;
    hist_sum_done : in STD_LOGIC;
    out_href : in STD_LOGIC;
    mem_reg_6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_reg_7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A : in STD_LOGIC_VECTOR ( 22 downto 0 );
    hist_sum_runn_0 : in STD_LOGIC;
    ram1_q : in STD_LOGIC_VECTOR ( 22 downto 0 );
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_reg_8 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_9 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_12 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_13 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end design_1_xil_vip_0_0_simple_dp_ram;

architecture STRUCTURE of design_1_xil_vip_0_0_simple_dp_ram is
  signal \mem_reg_i_33__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_41__0_n_0\ : STD_LOGIC;
  signal ram0_data : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal \^ram0_q\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal ram0_rdaddr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram0_rden : STD_LOGIC;
  signal ram0_wraddr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d23";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d23";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 5888;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 22;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 511;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 22;
begin
  ram0_q(22 downto 0) <= \^ram0_q\(22 downto 0);
\hist_sum_data_1[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(3),
      I1 => cur_ram,
      I2 => ram1_q(3),
      I3 => A(3),
      I4 => hist_sum_runn_0,
      O => mem_reg_0(3)
    );
\hist_sum_data_1[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(2),
      I1 => cur_ram,
      I2 => ram1_q(2),
      I3 => A(2),
      I4 => hist_sum_runn_0,
      O => mem_reg_0(2)
    );
\hist_sum_data_1[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(1),
      I1 => cur_ram,
      I2 => ram1_q(1),
      I3 => A(1),
      I4 => hist_sum_runn_0,
      O => mem_reg_0(1)
    );
\hist_sum_data_1[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(0),
      I1 => cur_ram,
      I2 => ram1_q(0),
      I3 => A(0),
      I4 => hist_sum_runn_0,
      O => mem_reg_0(0)
    );
\hist_sum_data_1[12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(15),
      I1 => cur_ram,
      I2 => ram1_q(15),
      I3 => A(15),
      I4 => hist_sum_runn_0,
      O => mem_reg_3(3)
    );
\hist_sum_data_1[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(14),
      I1 => cur_ram,
      I2 => ram1_q(14),
      I3 => A(14),
      I4 => hist_sum_runn_0,
      O => mem_reg_3(2)
    );
\hist_sum_data_1[12]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(13),
      I1 => cur_ram,
      I2 => ram1_q(13),
      I3 => A(13),
      I4 => hist_sum_runn_0,
      O => mem_reg_3(1)
    );
\hist_sum_data_1[12]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(12),
      I1 => cur_ram,
      I2 => ram1_q(12),
      I3 => A(12),
      I4 => hist_sum_runn_0,
      O => mem_reg_3(0)
    );
\hist_sum_data_1[16]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(19),
      I1 => cur_ram,
      I2 => ram1_q(19),
      I3 => A(19),
      I4 => hist_sum_runn_0,
      O => mem_reg_4(3)
    );
\hist_sum_data_1[16]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(18),
      I1 => cur_ram,
      I2 => ram1_q(18),
      I3 => A(18),
      I4 => hist_sum_runn_0,
      O => mem_reg_4(2)
    );
\hist_sum_data_1[16]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(17),
      I1 => cur_ram,
      I2 => ram1_q(17),
      I3 => A(17),
      I4 => hist_sum_runn_0,
      O => mem_reg_4(1)
    );
\hist_sum_data_1[16]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(16),
      I1 => cur_ram,
      I2 => ram1_q(16),
      I3 => A(16),
      I4 => hist_sum_runn_0,
      O => mem_reg_4(0)
    );
\hist_sum_data_1[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48444888"
    )
        port map (
      I0 => A(22),
      I1 => hist_sum_runn_0,
      I2 => \^ram0_q\(22),
      I3 => cur_ram,
      I4 => ram1_q(22),
      O => S(2)
    );
\hist_sum_data_1[20]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(21),
      I1 => cur_ram,
      I2 => ram1_q(21),
      I3 => A(21),
      I4 => hist_sum_runn_0,
      O => S(1)
    );
\hist_sum_data_1[20]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(20),
      I1 => cur_ram,
      I2 => ram1_q(20),
      I3 => A(20),
      I4 => hist_sum_runn_0,
      O => S(0)
    );
\hist_sum_data_1[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(7),
      I1 => cur_ram,
      I2 => ram1_q(7),
      I3 => A(7),
      I4 => hist_sum_runn_0,
      O => mem_reg_1(3)
    );
\hist_sum_data_1[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(6),
      I1 => cur_ram,
      I2 => ram1_q(6),
      I3 => A(6),
      I4 => hist_sum_runn_0,
      O => mem_reg_1(2)
    );
\hist_sum_data_1[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(5),
      I1 => cur_ram,
      I2 => ram1_q(5),
      I3 => A(5),
      I4 => hist_sum_runn_0,
      O => mem_reg_1(1)
    );
\hist_sum_data_1[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(4),
      I1 => cur_ram,
      I2 => ram1_q(4),
      I3 => A(4),
      I4 => hist_sum_runn_0,
      O => mem_reg_1(0)
    );
\hist_sum_data_1[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(11),
      I1 => cur_ram,
      I2 => ram1_q(11),
      I3 => A(11),
      I4 => hist_sum_runn_0,
      O => mem_reg_2(3)
    );
\hist_sum_data_1[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(10),
      I1 => cur_ram,
      I2 => ram1_q(10),
      I3 => A(10),
      I4 => hist_sum_runn_0,
      O => mem_reg_2(2)
    );
\hist_sum_data_1[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(9),
      I1 => cur_ram,
      I2 => ram1_q(9),
      I3 => A(9),
      I4 => hist_sum_runn_0,
      O => mem_reg_2(1)
    );
\hist_sum_data_1[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B80000"
    )
        port map (
      I0 => \^ram0_q\(8),
      I1 => cur_ram,
      I2 => ram1_q(8),
      I3 => A(8),
      I4 => hist_sum_runn_0,
      O => mem_reg_2(0)
    );
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13) => '1',
      ADDRARDADDR(12 downto 5) => ram0_rdaddr(7 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13) => '1',
      ADDRBWRADDR(12 downto 5) => ram0_wraddr(7 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => pclk,
      CLKBWRCLK => pclk,
      DIADI(15 downto 1) => ram0_data(15 downto 1),
      DIADI(0) => \mem_reg_i_33__0_n_0\,
      DIBDI(15 downto 7) => B"111111111",
      DIBDI(6 downto 0) => ram0_data(22 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => \^ram0_q\(15 downto 0),
      DOBDO(15 downto 7) => NLW_mem_reg_DOBDO_UNCONNECTED(15 downto 7),
      DOBDO(6 downto 0) => \^ram0_q\(22 downto 16),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => ram0_rden,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => \mem_reg_i_41__0_n_0\,
      WEBWE(2) => \mem_reg_i_41__0_n_0\,
      WEBWE(1) => \mem_reg_i_41__0_n_0\,
      WEBWE(0) => \mem_reg_i_41__0_n_0\
    );
mem_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => hist_sum_done,
      I1 => cur_ram,
      I2 => out_href,
      O => ram0_rden
    );
mem_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mem_reg_6(7),
      I1 => cur_clr_done,
      I2 => mem_reg_7(7),
      I3 => cur_ram,
      O => ram0_wraddr(7)
    );
mem_reg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mem_reg_6(6),
      I1 => cur_clr_done,
      I2 => mem_reg_7(6),
      I3 => cur_ram,
      O => ram0_wraddr(6)
    );
mem_reg_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mem_reg_6(5),
      I1 => cur_clr_done,
      I2 => mem_reg_7(5),
      I3 => cur_ram,
      O => ram0_wraddr(5)
    );
mem_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mem_reg_6(4),
      I1 => cur_clr_done,
      I2 => mem_reg_7(4),
      I3 => cur_ram,
      O => ram0_wraddr(4)
    );
mem_reg_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mem_reg_6(3),
      I1 => cur_clr_done,
      I2 => mem_reg_7(3),
      I3 => cur_ram,
      O => ram0_wraddr(3)
    );
mem_reg_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mem_reg_6(2),
      I1 => cur_clr_done,
      I2 => mem_reg_7(2),
      I3 => cur_ram,
      O => ram0_wraddr(2)
    );
mem_reg_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mem_reg_6(1),
      I1 => cur_clr_done,
      I2 => mem_reg_7(1),
      I3 => cur_ram,
      O => ram0_wraddr(1)
    );
mem_reg_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => mem_reg_6(0),
      I1 => cur_clr_done,
      I2 => mem_reg_7(0),
      I3 => cur_ram,
      O => ram0_wraddr(0)
    );
mem_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_9(2),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(15)
    );
mem_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_9(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(14)
    );
mem_reg_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_9(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(13)
    );
mem_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_10(3),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(12)
    );
mem_reg_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_10(2),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(11)
    );
mem_reg_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_10(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(10)
    );
mem_reg_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_10(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(9)
    );
mem_reg_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_11(3),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(8)
    );
mem_reg_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_11(2),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(7)
    );
mem_reg_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_11(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(6)
    );
mem_reg_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_11(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(5)
    );
mem_reg_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_12(3),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(4)
    );
\mem_reg_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mem_reg_13(7),
      I1 => cur_ram,
      I2 => out_data(7),
      O => ram0_rdaddr(7)
    );
mem_reg_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_12(2),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(3)
    );
mem_reg_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_12(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(2)
    );
mem_reg_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_12(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(1)
    );
\mem_reg_i_33__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020002A"
    )
        port map (
      I0 => cur_clr_done,
      I1 => Q(0),
      I2 => mem_reg_5,
      I3 => cur_ram,
      I4 => \^ram0_q\(0),
      O => \mem_reg_i_33__0_n_0\
    );
mem_reg_i_34: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => O(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(22)
    );
mem_reg_i_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => O(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(21)
    );
mem_reg_i_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_8(3),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(20)
    );
mem_reg_i_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_8(2),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(19)
    );
mem_reg_i_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_8(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(18)
    );
mem_reg_i_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_8(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(17)
    );
\mem_reg_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mem_reg_13(6),
      I1 => cur_ram,
      I2 => out_data(6),
      O => ram0_rdaddr(6)
    );
mem_reg_i_40: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => mem_reg_9(3),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => ram0_data(16)
    );
\mem_reg_i_41__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => cur_ram,
      I1 => hist_equ_href,
      I2 => cur_clr_done,
      O => \mem_reg_i_41__0_n_0\
    );
\mem_reg_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mem_reg_13(5),
      I1 => cur_ram,
      I2 => out_data(5),
      O => ram0_rdaddr(5)
    );
\mem_reg_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mem_reg_13(4),
      I1 => cur_ram,
      I2 => out_data(4),
      O => ram0_rdaddr(4)
    );
\mem_reg_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mem_reg_13(3),
      I1 => cur_ram,
      I2 => out_data(3),
      O => ram0_rdaddr(3)
    );
\mem_reg_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mem_reg_13(2),
      I1 => cur_ram,
      I2 => out_data(2),
      O => ram0_rdaddr(2)
    );
\mem_reg_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mem_reg_13(1),
      I1 => cur_ram,
      I2 => out_data(1),
      O => ram0_rdaddr(1)
    );
\mem_reg_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mem_reg_13(0),
      I1 => cur_ram,
      I2 => out_data(0),
      O => ram0_rdaddr(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_simple_dp_ram_5 is
  port (
    ram1_q : out STD_LOGIC_VECTOR ( 22 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_0_in__1\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    mem_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_5 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cur_clr_done : in STD_LOGIC;
    mem_reg_6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cur_ram : in STD_LOGIC;
    \_inferred__1/i__carry__4\ : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \cur_data_r_reg[0]\ : in STD_LOGIC;
    ram0_q : in STD_LOGIC_VECTOR ( 22 downto 0 );
    hist_sum_runn_0 : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_reg_7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_8 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_9 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hist_equ_href : in STD_LOGIC;
    out_href : in STD_LOGIC;
    hist_sum_done : in STD_LOGIC;
    out_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_reg_12 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \hist_sum_data_1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \hist_sum_data_1_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \hist_sum_data_1_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \hist_sum_data_1_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \hist_sum_data_1_reg[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xil_vip_0_0_simple_dp_ram_5 : entity is "simple_dp_ram";
end design_1_xil_vip_0_0_simple_dp_ram_5;

architecture STRUCTURE of design_1_xil_vip_0_0_simple_dp_ram_5 is
  signal \hist_sum_data_1[0]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[0]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[0]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[0]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[12]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[12]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[12]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[12]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[16]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[16]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[16]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[16]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[20]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[20]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[4]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[4]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[4]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[4]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[8]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[8]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[8]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1[8]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \hist_sum_data_1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \mem_reg_i_10__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_11__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_12__1_n_0\ : STD_LOGIC;
  signal \mem_reg_i_13__1_n_0\ : STD_LOGIC;
  signal \mem_reg_i_14__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_15__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_16__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_17__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_18__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_19__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_20__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_21__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_22__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_23__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_24__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_25__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_26__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_27__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_28__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_29__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_30__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_31__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_32__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_34__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_35__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_36__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_37__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_38__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_39__0_n_0\ : STD_LOGIC;
  signal \mem_reg_i_40__0_n_0\ : STD_LOGIC;
  signal ram1_data : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ram1_q\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal ram1_rdaddr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram1_rden : STD_LOGIC;
  signal ram1_wren : STD_LOGIC;
  signal \NLW_hist_sum_data_1_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_hist_sum_data_1_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \hist_sum_data_1_reg[0]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_sum_data_1_reg[12]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_sum_data_1_reg[16]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_sum_data_1_reg[20]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_sum_data_1_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_sum_data_1_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d23";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d23";
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 5888;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 22;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 511;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 22;
begin
  ram1_q(22 downto 0) <= \^ram1_q\(22 downto 0);
\cur_data_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A2020202A2A2A"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__4\(0),
      I2 => \cur_data_r_reg[0]\,
      I3 => \^ram1_q\(0),
      I4 => cur_ram,
      I5 => ram0_q(0),
      O => D(0)
    );
\hist_sum_data_1[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(3),
      I1 => cur_ram,
      I2 => ram0_q(3),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[0]_i_2_n_0\
    );
\hist_sum_data_1[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(2),
      I1 => cur_ram,
      I2 => ram0_q(2),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[0]_i_3_n_0\
    );
\hist_sum_data_1[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(1),
      I1 => cur_ram,
      I2 => ram0_q(1),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[0]_i_4_n_0\
    );
\hist_sum_data_1[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(0),
      I1 => cur_ram,
      I2 => ram0_q(0),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[0]_i_5_n_0\
    );
\hist_sum_data_1[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(15),
      I1 => cur_ram,
      I2 => ram0_q(15),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[12]_i_2_n_0\
    );
\hist_sum_data_1[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(14),
      I1 => cur_ram,
      I2 => ram0_q(14),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[12]_i_3_n_0\
    );
\hist_sum_data_1[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(13),
      I1 => cur_ram,
      I2 => ram0_q(13),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[12]_i_4_n_0\
    );
\hist_sum_data_1[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(12),
      I1 => cur_ram,
      I2 => ram0_q(12),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[12]_i_5_n_0\
    );
\hist_sum_data_1[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(19),
      I1 => cur_ram,
      I2 => ram0_q(19),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[16]_i_2_n_0\
    );
\hist_sum_data_1[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(18),
      I1 => cur_ram,
      I2 => ram0_q(18),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[16]_i_3_n_0\
    );
\hist_sum_data_1[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(17),
      I1 => cur_ram,
      I2 => ram0_q(17),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[16]_i_4_n_0\
    );
\hist_sum_data_1[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(16),
      I1 => cur_ram,
      I2 => ram0_q(16),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[16]_i_5_n_0\
    );
\hist_sum_data_1[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(21),
      I1 => cur_ram,
      I2 => ram0_q(21),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[20]_i_2_n_0\
    );
\hist_sum_data_1[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(20),
      I1 => cur_ram,
      I2 => ram0_q(20),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[20]_i_3_n_0\
    );
\hist_sum_data_1[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(7),
      I1 => cur_ram,
      I2 => ram0_q(7),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[4]_i_2_n_0\
    );
\hist_sum_data_1[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(6),
      I1 => cur_ram,
      I2 => ram0_q(6),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[4]_i_3_n_0\
    );
\hist_sum_data_1[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(5),
      I1 => cur_ram,
      I2 => ram0_q(5),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[4]_i_4_n_0\
    );
\hist_sum_data_1[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(4),
      I1 => cur_ram,
      I2 => ram0_q(4),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[4]_i_5_n_0\
    );
\hist_sum_data_1[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(11),
      I1 => cur_ram,
      I2 => ram0_q(11),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[8]_i_2_n_0\
    );
\hist_sum_data_1[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(10),
      I1 => cur_ram,
      I2 => ram0_q(10),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[8]_i_3_n_0\
    );
\hist_sum_data_1[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(9),
      I1 => cur_ram,
      I2 => ram0_q(9),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[8]_i_4_n_0\
    );
\hist_sum_data_1[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^ram1_q\(8),
      I1 => cur_ram,
      I2 => ram0_q(8),
      I3 => hist_sum_runn_0,
      O => \hist_sum_data_1[8]_i_5_n_0\
    );
\hist_sum_data_1_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_1_reg[0]_i_1_n_0\,
      CO(2) => \hist_sum_data_1_reg[0]_i_1_n_1\,
      CO(1) => \hist_sum_data_1_reg[0]_i_1_n_2\,
      CO(0) => \hist_sum_data_1_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_1[0]_i_2_n_0\,
      DI(2) => \hist_sum_data_1[0]_i_3_n_0\,
      DI(1) => \hist_sum_data_1[0]_i_4_n_0\,
      DI(0) => \hist_sum_data_1[0]_i_5_n_0\,
      O(3 downto 0) => mem_reg_0(3 downto 0),
      S(3 downto 0) => \hist_sum_data_1_reg[3]\(3 downto 0)
    );
\hist_sum_data_1_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_1_reg[8]_i_1_n_0\,
      CO(3) => \hist_sum_data_1_reg[12]_i_1_n_0\,
      CO(2) => \hist_sum_data_1_reg[12]_i_1_n_1\,
      CO(1) => \hist_sum_data_1_reg[12]_i_1_n_2\,
      CO(0) => \hist_sum_data_1_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_1[12]_i_2_n_0\,
      DI(2) => \hist_sum_data_1[12]_i_3_n_0\,
      DI(1) => \hist_sum_data_1[12]_i_4_n_0\,
      DI(0) => \hist_sum_data_1[12]_i_5_n_0\,
      O(3 downto 0) => mem_reg_3(3 downto 0),
      S(3 downto 0) => \hist_sum_data_1_reg[15]\(3 downto 0)
    );
\hist_sum_data_1_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_1_reg[12]_i_1_n_0\,
      CO(3) => \hist_sum_data_1_reg[16]_i_1_n_0\,
      CO(2) => \hist_sum_data_1_reg[16]_i_1_n_1\,
      CO(1) => \hist_sum_data_1_reg[16]_i_1_n_2\,
      CO(0) => \hist_sum_data_1_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_1[16]_i_2_n_0\,
      DI(2) => \hist_sum_data_1[16]_i_3_n_0\,
      DI(1) => \hist_sum_data_1[16]_i_4_n_0\,
      DI(0) => \hist_sum_data_1[16]_i_5_n_0\,
      O(3 downto 0) => mem_reg_4(3 downto 0),
      S(3 downto 0) => \hist_sum_data_1_reg[19]\(3 downto 0)
    );
\hist_sum_data_1_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_1_reg[16]_i_1_n_0\,
      CO(3 downto 2) => \NLW_hist_sum_data_1_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \hist_sum_data_1_reg[20]_i_1_n_2\,
      CO(0) => \hist_sum_data_1_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \hist_sum_data_1[20]_i_2_n_0\,
      DI(0) => \hist_sum_data_1[20]_i_3_n_0\,
      O(3) => \NLW_hist_sum_data_1_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => mem_reg_5(2 downto 0),
      S(3) => '0',
      S(2 downto 0) => S(2 downto 0)
    );
\hist_sum_data_1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_1_reg[0]_i_1_n_0\,
      CO(3) => \hist_sum_data_1_reg[4]_i_1_n_0\,
      CO(2) => \hist_sum_data_1_reg[4]_i_1_n_1\,
      CO(1) => \hist_sum_data_1_reg[4]_i_1_n_2\,
      CO(0) => \hist_sum_data_1_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_1[4]_i_2_n_0\,
      DI(2) => \hist_sum_data_1[4]_i_3_n_0\,
      DI(1) => \hist_sum_data_1[4]_i_4_n_0\,
      DI(0) => \hist_sum_data_1[4]_i_5_n_0\,
      O(3 downto 0) => mem_reg_1(3 downto 0),
      S(3 downto 0) => \hist_sum_data_1_reg[7]\(3 downto 0)
    );
\hist_sum_data_1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_1_reg[4]_i_1_n_0\,
      CO(3) => \hist_sum_data_1_reg[8]_i_1_n_0\,
      CO(2) => \hist_sum_data_1_reg[8]_i_1_n_1\,
      CO(1) => \hist_sum_data_1_reg[8]_i_1_n_2\,
      CO(0) => \hist_sum_data_1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_1[8]_i_2_n_0\,
      DI(2) => \hist_sum_data_1[8]_i_3_n_0\,
      DI(1) => \hist_sum_data_1[8]_i_4_n_0\,
      DI(0) => \hist_sum_data_1[8]_i_5_n_0\,
      O(3 downto 0) => mem_reg_2(3 downto 0),
      S(3 downto 0) => \hist_sum_data_1_reg[11]\(3 downto 0)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(8),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(8),
      I3 => cur_ram,
      I4 => ram0_q(8),
      O => \p_0_in__1\(8)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(7),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(7),
      I3 => cur_ram,
      I4 => ram0_q(7),
      O => \p_0_in__1\(7)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(6),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(6),
      I3 => cur_ram,
      I4 => ram0_q(6),
      O => \p_0_in__1\(6)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(5),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(5),
      I3 => cur_ram,
      I4 => ram0_q(5),
      O => \p_0_in__1\(5)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(12),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(12),
      I3 => cur_ram,
      I4 => ram0_q(12),
      O => \p_0_in__1\(12)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(11),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(11),
      I3 => cur_ram,
      I4 => ram0_q(11),
      O => \p_0_in__1\(11)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(10),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(10),
      I3 => cur_ram,
      I4 => ram0_q(10),
      O => \p_0_in__1\(10)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(9),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(9),
      I3 => cur_ram,
      I4 => ram0_q(9),
      O => \p_0_in__1\(9)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(16),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(16),
      I3 => cur_ram,
      I4 => ram0_q(16),
      O => \p_0_in__1\(16)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(15),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(15),
      I3 => cur_ram,
      I4 => ram0_q(15),
      O => \p_0_in__1\(15)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(14),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(14),
      I3 => cur_ram,
      I4 => ram0_q(14),
      O => \p_0_in__1\(14)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(13),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(13),
      I3 => cur_ram,
      I4 => ram0_q(13),
      O => \p_0_in__1\(13)
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(20),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(20),
      I3 => cur_ram,
      I4 => ram0_q(20),
      O => \p_0_in__1\(20)
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(19),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(19),
      I3 => cur_ram,
      I4 => ram0_q(19),
      O => \p_0_in__1\(19)
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(18),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(18),
      I3 => cur_ram,
      I4 => ram0_q(18),
      O => \p_0_in__1\(18)
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(17),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(17),
      I3 => cur_ram,
      I4 => ram0_q(17),
      O => \p_0_in__1\(17)
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(22),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(22),
      I3 => cur_ram,
      I4 => ram0_q(22),
      O => \p_0_in__1\(22)
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(21),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(21),
      I3 => cur_ram,
      I4 => ram0_q(21),
      O => \p_0_in__1\(21)
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(0),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(0),
      I3 => cur_ram,
      I4 => ram0_q(0),
      O => \p_0_in__1\(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(4),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(4),
      I3 => cur_ram,
      I4 => ram0_q(4),
      O => \p_0_in__1\(4)
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(3),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(3),
      I3 => cur_ram,
      I4 => ram0_q(3),
      O => \p_0_in__1\(3)
    );
\i__carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(2),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(2),
      I3 => cur_ram,
      I4 => ram0_q(2),
      O => \p_0_in__1\(2)
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \_inferred__1/i__carry__4\(1),
      I1 => \cur_data_r_reg[0]\,
      I2 => \^ram1_q\(1),
      I3 => cur_ram,
      I4 => ram0_q(1),
      O => \p_0_in__1\(1)
    );
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13) => '1',
      ADDRARDADDR(12 downto 5) => ram1_rdaddr(7 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13) => '1',
      ADDRBWRADDR(12) => \mem_reg_i_10__0_n_0\,
      ADDRBWRADDR(11) => \mem_reg_i_11__0_n_0\,
      ADDRBWRADDR(10) => \mem_reg_i_12__1_n_0\,
      ADDRBWRADDR(9) => \mem_reg_i_13__1_n_0\,
      ADDRBWRADDR(8) => \mem_reg_i_14__0_n_0\,
      ADDRBWRADDR(7) => \mem_reg_i_15__0_n_0\,
      ADDRBWRADDR(6) => \mem_reg_i_16__0_n_0\,
      ADDRBWRADDR(5) => \mem_reg_i_17__0_n_0\,
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => pclk,
      CLKBWRCLK => pclk,
      DIADI(15) => \mem_reg_i_18__0_n_0\,
      DIADI(14) => \mem_reg_i_19__0_n_0\,
      DIADI(13) => \mem_reg_i_20__0_n_0\,
      DIADI(12) => \mem_reg_i_21__0_n_0\,
      DIADI(11) => \mem_reg_i_22__0_n_0\,
      DIADI(10) => \mem_reg_i_23__0_n_0\,
      DIADI(9) => \mem_reg_i_24__0_n_0\,
      DIADI(8) => \mem_reg_i_25__0_n_0\,
      DIADI(7) => \mem_reg_i_26__0_n_0\,
      DIADI(6) => \mem_reg_i_27__0_n_0\,
      DIADI(5) => \mem_reg_i_28__0_n_0\,
      DIADI(4) => \mem_reg_i_29__0_n_0\,
      DIADI(3) => \mem_reg_i_30__0_n_0\,
      DIADI(2) => \mem_reg_i_31__0_n_0\,
      DIADI(1) => \mem_reg_i_32__0_n_0\,
      DIADI(0) => ram1_data(0),
      DIBDI(15 downto 7) => B"111111111",
      DIBDI(6) => \mem_reg_i_34__0_n_0\,
      DIBDI(5) => \mem_reg_i_35__0_n_0\,
      DIBDI(4) => \mem_reg_i_36__0_n_0\,
      DIBDI(3) => \mem_reg_i_37__0_n_0\,
      DIBDI(2) => \mem_reg_i_38__0_n_0\,
      DIBDI(1) => \mem_reg_i_39__0_n_0\,
      DIBDI(0) => \mem_reg_i_40__0_n_0\,
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => \^ram1_q\(15 downto 0),
      DOBDO(15 downto 7) => NLW_mem_reg_DOBDO_UNCONNECTED(15 downto 7),
      DOBDO(6 downto 0) => \^ram1_q\(22 downto 16),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => ram1_rden,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => ram1_wren,
      WEBWE(2) => ram1_wren,
      WEBWE(1) => ram1_wren,
      WEBWE(0) => ram1_wren
    );
\mem_reg_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => Q(7),
      I1 => cur_clr_done,
      I2 => mem_reg_6(7),
      I3 => cur_ram,
      O => \mem_reg_i_10__0_n_0\
    );
\mem_reg_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => Q(6),
      I1 => cur_clr_done,
      I2 => mem_reg_6(6),
      I3 => cur_ram,
      O => \mem_reg_i_11__0_n_0\
    );
\mem_reg_i_12__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => Q(5),
      I1 => cur_clr_done,
      I2 => mem_reg_6(5),
      I3 => cur_ram,
      O => \mem_reg_i_12__1_n_0\
    );
\mem_reg_i_13__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => Q(4),
      I1 => cur_clr_done,
      I2 => mem_reg_6(4),
      I3 => cur_ram,
      O => \mem_reg_i_13__1_n_0\
    );
\mem_reg_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => Q(3),
      I1 => cur_clr_done,
      I2 => mem_reg_6(3),
      I3 => cur_ram,
      O => \mem_reg_i_14__0_n_0\
    );
\mem_reg_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => Q(2),
      I1 => cur_clr_done,
      I2 => mem_reg_6(2),
      I3 => cur_ram,
      O => \mem_reg_i_15__0_n_0\
    );
\mem_reg_i_16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => Q(1),
      I1 => cur_clr_done,
      I2 => mem_reg_6(1),
      I3 => cur_ram,
      O => \mem_reg_i_16__0_n_0\
    );
\mem_reg_i_17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => Q(0),
      I1 => cur_clr_done,
      I2 => mem_reg_6(0),
      I3 => cur_ram,
      O => \mem_reg_i_17__0_n_0\
    );
\mem_reg_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_8(2),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_18__0_n_0\
    );
\mem_reg_i_19__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_8(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_19__0_n_0\
    );
\mem_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => out_href,
      I1 => cur_ram,
      I2 => hist_sum_done,
      O => ram1_rden
    );
mem_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(7),
      I1 => cur_ram,
      I2 => mem_reg_12(7),
      O => ram1_rdaddr(7)
    );
\mem_reg_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_8(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_20__0_n_0\
    );
\mem_reg_i_21__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_9(3),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_21__0_n_0\
    );
\mem_reg_i_22__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_9(2),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_22__0_n_0\
    );
\mem_reg_i_23__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_9(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_23__0_n_0\
    );
\mem_reg_i_24__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_9(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_24__0_n_0\
    );
\mem_reg_i_25__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_10(3),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_25__0_n_0\
    );
\mem_reg_i_26__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_10(2),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_26__0_n_0\
    );
\mem_reg_i_27__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_10(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_27__0_n_0\
    );
\mem_reg_i_28__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_10(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_28__0_n_0\
    );
\mem_reg_i_29__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_11(3),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_29__0_n_0\
    );
mem_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(6),
      I1 => cur_ram,
      I2 => mem_reg_12(6),
      O => ram1_rdaddr(6)
    );
\mem_reg_i_30__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_11(2),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_30__0_n_0\
    );
\mem_reg_i_31__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_11(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_31__0_n_0\
    );
\mem_reg_i_32__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_11(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_32__0_n_0\
    );
mem_reg_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"202A0000"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__4\(0),
      I2 => \cur_data_r_reg[0]\,
      I3 => \^ram1_q\(0),
      I4 => cur_ram,
      O => ram1_data(0)
    );
\mem_reg_i_34__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => O(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_34__0_n_0\
    );
\mem_reg_i_35__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => O(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_35__0_n_0\
    );
\mem_reg_i_36__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_7(3),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_36__0_n_0\
    );
\mem_reg_i_37__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_7(2),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_37__0_n_0\
    );
\mem_reg_i_38__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_7(1),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_38__0_n_0\
    );
\mem_reg_i_39__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_7(0),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_39__0_n_0\
    );
mem_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(5),
      I1 => cur_ram,
      I2 => mem_reg_12(5),
      O => ram1_rdaddr(5)
    );
\mem_reg_i_40__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mem_reg_8(3),
      I1 => cur_clr_done,
      I2 => cur_ram,
      O => \mem_reg_i_40__0_n_0\
    );
mem_reg_i_41: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => cur_ram,
      I1 => hist_equ_href,
      I2 => cur_clr_done,
      O => ram1_wren
    );
mem_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(4),
      I1 => cur_ram,
      I2 => mem_reg_12(4),
      O => ram1_rdaddr(4)
    );
mem_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(3),
      I1 => cur_ram,
      I2 => mem_reg_12(3),
      O => ram1_rdaddr(3)
    );
mem_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(2),
      I1 => cur_ram,
      I2 => mem_reg_12(2),
      O => ram1_rdaddr(2)
    );
mem_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(1),
      I1 => cur_ram,
      I2 => mem_reg_12(1),
      O => ram1_rdaddr(1)
    );
mem_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(0),
      I1 => cur_ram,
      I2 => mem_reg_12(0),
      O => ram1_rdaddr(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xil_vip_0_0_simple_dp_ram__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk : in STD_LOGIC;
    hist_sum_runn_5 : in STD_LOGIC;
    out_href : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    hist_equ_href : in STD_LOGIC;
    s_hist_equ_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xil_vip_0_0_simple_dp_ram__parameterized0\ : entity is "simple_dp_ram";
end \design_1_xil_vip_0_0_simple_dp_ram__parameterized0\;

architecture STRUCTURE of \design_1_xil_vip_0_0_simple_dp_ram__parameterized0\ is
  signal hist_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 7;
begin
\data_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => hist_equ_href,
      I1 => hist_q(0),
      I2 => out_data(0),
      I3 => s_hist_equ_en,
      O => D(0)
    );
\data_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => hist_equ_href,
      I1 => hist_q(1),
      I2 => out_data(1),
      I3 => s_hist_equ_en,
      O => D(1)
    );
\data_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => hist_equ_href,
      I1 => hist_q(2),
      I2 => out_data(2),
      I3 => s_hist_equ_en,
      O => D(2)
    );
\data_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => hist_equ_href,
      I1 => hist_q(3),
      I2 => out_data(3),
      I3 => s_hist_equ_en,
      O => D(3)
    );
\data_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => hist_equ_href,
      I1 => hist_q(4),
      I2 => out_data(4),
      I3 => s_hist_equ_en,
      O => D(4)
    );
\data_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => hist_equ_href,
      I1 => hist_q(5),
      I2 => out_data(5),
      I3 => s_hist_equ_en,
      O => D(5)
    );
\data_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => hist_equ_href,
      I1 => hist_q(6),
      I2 => out_data(6),
      I3 => s_hist_equ_en,
      O => D(6)
    );
\data_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => hist_equ_href,
      I1 => hist_q(7),
      I2 => out_data(7),
      I3 => s_hist_equ_en,
      O => D(7)
    );
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"11",
      ADDRARDADDR(11 downto 4) => ADDRARDADDR(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 12) => B"11",
      ADDRBWRADDR(11 downto 4) => out_data(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => pclk,
      CLKBWRCLK => pclk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => Q(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => hist_q(7 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => hist_sum_runn_5,
      ENBWREN => out_href,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xil_vip_0_0_simple_dp_ram__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \pos_r_reg[10]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pclk : in STD_LOGIC;
    hist_equ_href_o : in STD_LOGIC;
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xil_vip_0_0_simple_dp_ram__parameterized1\ : entity is "simple_dp_ram";
end \design_1_xil_vip_0_0_simple_dp_ram__parameterized1\;

architecture STRUCTURE of \design_1_xil_vip_0_0_simple_dp_ram__parameterized1\ is
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
      ENARDEN => hist_equ_href_o,
      ENBWREN => hist_equ_href_o,
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
      WEA(3) => hist_equ_href_o,
      WEA(2) => hist_equ_href_o,
      WEA(1) => hist_equ_href_o,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\mem_reg_i_11__1\: unisim.vcomponents.LUT5
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
\mem_reg_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(2),
      I1 => ADDRBWRADDR(8),
      O => \^pos_r_reg[10]\(2)
    );
\mem_reg_i_2__1\: unisim.vcomponents.LUT2
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
entity \design_1_xil_vip_0_0_simple_dp_ram__parameterized1_4\ is
  port (
    mem_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \pos_r_reg[3]\ : out STD_LOGIC;
    pclk : in STD_LOGIC;
    hist_equ_href_o : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mem_reg_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xil_vip_0_0_simple_dp_ram__parameterized1_4\ : entity is "simple_dp_ram";
end \design_1_xil_vip_0_0_simple_dp_ram__parameterized1_4\;

architecture STRUCTURE of \design_1_xil_vip_0_0_simple_dp_ram__parameterized1_4\ is
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mem_reg_i_13__0_n_0\ : STD_LOGIC;
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
      ENARDEN => hist_equ_href_o,
      ENBWREN => hist_equ_href_o,
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
      WEA(3) => hist_equ_href_o,
      WEA(2) => hist_equ_href_o,
      WEA(1) => hist_equ_href_o,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\mem_reg_i_10__1\: unisim.vcomponents.LUT6
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
\mem_reg_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(4),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \mem_reg_i_13__0_n_0\,
      O => \^pos_r_reg[3]\
    );
\mem_reg_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \out\(6),
      I1 => \out\(5),
      I2 => \out\(8),
      I3 => \out\(7),
      O => \mem_reg_i_13__0_n_0\
    );
\mem_reg_i_3__1\: unisim.vcomponents.LUT6
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
\mem_reg_i_4__1\: unisim.vcomponents.LUT6
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
\mem_reg_i_5__1\: unisim.vcomponents.LUT6
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
\mem_reg_i_6__1\: unisim.vcomponents.LUT6
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
\mem_reg_i_7__1\: unisim.vcomponents.LUT6
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
\mem_reg_i_8__1\: unisim.vcomponents.LUT6
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
\mem_reg_i_9__1\: unisim.vcomponents.LUT6
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
entity design_1_xil_vip_0_0_vid_mux is
  port (
    crop_href_o : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    in_href : in STD_LOGIC;
    pclk : in STD_LOGIC;
    \data_reg_reg[0]_0\ : in STD_LOGIC;
    vsync_reg_reg_0 : in STD_LOGIC;
    prev_vsync : in STD_LOGIC;
    prev_href : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end design_1_xil_vip_0_0_vid_mux;

architecture STRUCTURE of design_1_xil_vip_0_0_vid_mux is
  signal \^crop_href_o\ : STD_LOGIC;
  signal \^out_vsync\ : STD_LOGIC;
begin
  crop_href_o <= \^crop_href_o\;
  out_vsync <= \^out_vsync\;
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
      Q => \^crop_href_o\
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^out_vsync\,
      I1 => prev_vsync,
      I2 => \^crop_href_o\,
      I3 => prev_href,
      O => E(0)
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => vsync_reg_reg_0,
      Q => \^out_vsync\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_vid_mux_0 is
  port (
    hist_equ_href_o : out STD_LOGIC;
    hist_equ_vsync_o : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    in_href : in STD_LOGIC;
    pclk : in STD_LOGIC;
    \data_reg_reg[0]_0\ : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    s_sobel_en : in STD_LOGIC;
    \data_reg_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xil_vip_0_0_vid_mux_0 : entity is "vid_mux";
end design_1_xil_vip_0_0_vid_mux_0;

architecture STRUCTURE of design_1_xil_vip_0_0_vid_mux_0 is
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
  attribute SOFT_HLUTNM of \data_reg[0]_i_1__2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \data_reg[10]_i_1__2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \data_reg[11]_i_1__2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \data_reg[12]_i_1__2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \data_reg[13]_i_1__2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \data_reg[14]_i_1__2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \data_reg[15]_i_1__2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \data_reg[1]_i_1__2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \data_reg[2]_i_1__2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \data_reg[3]_i_1__2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1__2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \data_reg[5]_i_1__2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \data_reg[6]_i_1__2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \data_reg[7]_i_1__2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \data_reg[8]_i_1__2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \data_reg[9]_i_1__2\ : label is "soft_lutpair50";
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
      D => \data_reg_reg[23]_0\(0),
      Q => \data_reg_reg_n_0_[0]\
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(10),
      Q => hist_equ_u_o(2)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(11),
      Q => hist_equ_u_o(3)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(12),
      Q => hist_equ_u_o(4)
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(13),
      Q => hist_equ_u_o(5)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(14),
      Q => hist_equ_u_o(6)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(15),
      Q => hist_equ_u_o(7)
    );
\data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(16),
      Q => Q(0)
    );
\data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(17),
      Q => Q(1)
    );
\data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(18),
      Q => Q(2)
    );
\data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(19),
      Q => Q(3)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(1),
      Q => \data_reg_reg_n_0_[1]\
    );
\data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(20),
      Q => Q(4)
    );
\data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(21),
      Q => Q(5)
    );
\data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(22),
      Q => Q(6)
    );
\data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(23),
      Q => Q(7)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(2),
      Q => \data_reg_reg_n_0_[2]\
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(3),
      Q => \data_reg_reg_n_0_[3]\
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(4),
      Q => \data_reg_reg_n_0_[4]\
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(5),
      Q => \data_reg_reg_n_0_[5]\
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(6),
      Q => \data_reg_reg_n_0_[6]\
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(7),
      Q => \data_reg_reg_n_0_[7]\
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(8),
      Q => hist_equ_u_o(0)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => \data_reg_reg[23]_0\(9),
      Q => hist_equ_u_o(1)
    );
href_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => in_href,
      Q => hist_equ_href_o
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => in_vsync,
      Q => hist_equ_vsync_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_vid_mux_1 is
  port (
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    \hist_equ_u_r_reg[7]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_reg_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    cur_ram02_out : out STD_LOGIC;
    in_href : in STD_LOGIC;
    pclk : in STD_LOGIC;
    href_reg_reg_0 : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_hist_equ_en : in STD_LOGIC;
    \data_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    prev_vsync : in STD_LOGIC;
    in_yuv : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xil_vip_0_0_vid_mux_1 : entity is "vid_mux";
end design_1_xil_vip_0_0_vid_mux_1;

architecture STRUCTURE of design_1_xil_vip_0_0_vid_mux_1 is
  signal \^data_reg_reg[23]_0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^out_vsync\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_reg[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \data_reg[10]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \data_reg[11]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \data_reg[12]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \data_reg[13]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \data_reg[14]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \data_reg[15]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \data_reg[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \data_reg[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \data_reg[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \data_reg[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \data_reg[6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \data_reg[7]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \data_reg[8]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \data_reg[9]_i_1\ : label is "soft_lutpair59";
begin
  \data_reg_reg[23]_0\(23 downto 0) <= \^data_reg_reg[23]_0\(23 downto 0);
  out_vsync <= \^out_vsync\;
\cur_clr_addr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out_vsync\,
      I1 => prev_vsync,
      O => cur_ram02_out
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(0),
      I1 => \^data_reg_reg[23]_0\(0),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(0)
    );
\data_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_reg[15]_0\(2),
      I1 => \^data_reg_reg[23]_0\(10),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(10)
    );
\data_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_reg[15]_0\(3),
      I1 => \^data_reg_reg[23]_0\(11),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(11)
    );
\data_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_reg[15]_0\(4),
      I1 => \^data_reg_reg[23]_0\(12),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(12)
    );
\data_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_reg[15]_0\(5),
      I1 => \^data_reg_reg[23]_0\(13),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(13)
    );
\data_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_reg[15]_0\(6),
      I1 => \^data_reg_reg[23]_0\(14),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(14)
    );
\data_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_reg[15]_0\(7),
      I1 => \^data_reg_reg[23]_0\(15),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(15)
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(1),
      I1 => \^data_reg_reg[23]_0\(1),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(1)
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(2),
      I1 => \^data_reg_reg[23]_0\(2),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(2)
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(3),
      I1 => \^data_reg_reg[23]_0\(3),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(3)
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(4),
      I1 => \^data_reg_reg[23]_0\(4),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(4)
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(5),
      I1 => \^data_reg_reg[23]_0\(5),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(5)
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(6),
      I1 => \^data_reg_reg[23]_0\(6),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(6)
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(7),
      I1 => \^data_reg_reg[23]_0\(7),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(7)
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_reg[15]_0\(0),
      I1 => \^data_reg_reg[23]_0\(8),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(8)
    );
\data_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_reg_reg[15]_0\(1),
      I1 => \^data_reg_reg[23]_0\(9),
      I2 => s_hist_equ_en,
      O => \hist_equ_u_r_reg[7]\(9)
    );
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(0),
      Q => \^data_reg_reg[23]_0\(0)
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(10),
      Q => \^data_reg_reg[23]_0\(10)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(11),
      Q => \^data_reg_reg[23]_0\(11)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(12),
      Q => \^data_reg_reg[23]_0\(12)
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(13),
      Q => \^data_reg_reg[23]_0\(13)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(14),
      Q => \^data_reg_reg[23]_0\(14)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(15),
      Q => \^data_reg_reg[23]_0\(15)
    );
\data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(16),
      Q => \^data_reg_reg[23]_0\(16)
    );
\data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(17),
      Q => \^data_reg_reg[23]_0\(17)
    );
\data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(18),
      Q => \^data_reg_reg[23]_0\(18)
    );
\data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(19),
      Q => \^data_reg_reg[23]_0\(19)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(1),
      Q => \^data_reg_reg[23]_0\(1)
    );
\data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(20),
      Q => \^data_reg_reg[23]_0\(20)
    );
\data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(21),
      Q => \^data_reg_reg[23]_0\(21)
    );
\data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(22),
      Q => \^data_reg_reg[23]_0\(22)
    );
\data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(23),
      Q => \^data_reg_reg[23]_0\(23)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(2),
      Q => \^data_reg_reg[23]_0\(2)
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(3),
      Q => \^data_reg_reg[23]_0\(3)
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(4),
      Q => \^data_reg_reg[23]_0\(4)
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(5),
      Q => \^data_reg_reg[23]_0\(5)
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(6),
      Q => \^data_reg_reg[23]_0\(6)
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(7),
      Q => \^data_reg_reg[23]_0\(7)
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(8),
      Q => \^data_reg_reg[23]_0\(8)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_yuv(9),
      Q => \^data_reg_reg[23]_0\(9)
    );
href_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_href,
      Q => out_href
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => href_reg_reg_0,
      D => in_vsync,
      Q => \^out_vsync\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_vid_mux_2 is
  port (
    out_href : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    in_href : in STD_LOGIC;
    pclk : in STD_LOGIC;
    \data_reg_reg[0]_0\ : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xil_vip_0_0_vid_mux_2 : entity is "vid_mux";
end design_1_xil_vip_0_0_vid_mux_2;

architecture STRUCTURE of design_1_xil_vip_0_0_vid_mux_2 is
begin
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
      Q => out_href
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \data_reg_reg[0]_0\,
      D => in_vsync,
      Q => out_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_vid_mux_3 is
  port (
    out_href : out STD_LOGIC;
    s_module_reset_reg : out STD_LOGIC;
    vsync_reg_reg_0 : out STD_LOGIC;
    href_reg_reg_0 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    in_href : in STD_LOGIC;
    pclk : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    prev_href : in STD_LOGIC;
    prev_vsync : in STD_LOGIC;
    s_module_reset : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xil_vip_0_0_vid_mux_3 : entity is "vid_mux";
end design_1_xil_vip_0_0_vid_mux_3;

architecture STRUCTURE of design_1_xil_vip_0_0_vid_mux_3 is
  signal \^out_href\ : STD_LOGIC;
  signal \^s_module_reset_reg\ : STD_LOGIC;
  signal \^vsync_reg_reg_0\ : STD_LOGIC;
begin
  out_href <= \^out_href\;
  s_module_reset_reg <= \^s_module_reset_reg\;
  vsync_reg_reg_0 <= \^vsync_reg_reg_0\;
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(0),
      Q => Q(0)
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(10),
      Q => Q(10)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(11),
      Q => Q(11)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(12),
      Q => Q(12)
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(13),
      Q => Q(13)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(14),
      Q => Q(14)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(15),
      Q => Q(15)
    );
\data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(16),
      Q => Q(16)
    );
\data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(17),
      Q => Q(17)
    );
\data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(18),
      Q => Q(18)
    );
\data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(19),
      Q => Q(19)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(1),
      Q => Q(1)
    );
\data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(20),
      Q => Q(20)
    );
\data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(21),
      Q => Q(21)
    );
\data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(22),
      Q => Q(22)
    );
\data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(23),
      Q => Q(23)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(2),
      Q => Q(2)
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(3),
      Q => Q(3)
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(4),
      Q => Q(4)
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(5),
      Q => Q(5)
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(6),
      Q => Q(6)
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(7),
      Q => Q(7)
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(8),
      Q => Q(8)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => D(9),
      Q => Q(9)
    );
href_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => in_href,
      Q => \^out_href\
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => \^out_href\,
      I1 => prev_href,
      I2 => prev_vsync,
      I3 => \^vsync_reg_reg_0\,
      O => href_reg_reg_0
    );
\line_cnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^vsync_reg_reg_0\,
      I1 => prev_vsync,
      O => DI(0)
    );
vsync_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_module_reset,
      I1 => rst_n,
      O => \^s_module_reset_reg\
    );
vsync_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => in_vsync,
      Q => \^vsync_reg_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_vip_crop is
  port (
    prev_href : out STD_LOGIC;
    prev_vsync : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    in_href : out STD_LOGIC;
    out_href : in STD_LOGIC;
    pclk : in STD_LOGIC;
    out_vsync : in STD_LOGIC;
    \line_cnt_reg[15]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_6_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_34_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_62_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_3_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_11_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_40_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_72_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_4_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    href_reg_reg_i_5_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_crop_en : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_module_reset : in STD_LOGIC;
    out_data : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end design_1_xil_vip_0_0_vip_crop;

architecture STRUCTURE of design_1_xil_vip_0_0_vip_crop is
  signal crop_href : STD_LOGIC;
  signal data_r : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal href_reg_i_10_n_0 : STD_LOGIC;
  signal href_reg_i_12_n_0 : STD_LOGIC;
  signal href_reg_i_13_n_0 : STD_LOGIC;
  signal href_reg_i_14_n_0 : STD_LOGIC;
  signal href_reg_i_15_n_0 : STD_LOGIC;
  signal href_reg_i_17_n_0 : STD_LOGIC;
  signal href_reg_i_18_n_0 : STD_LOGIC;
  signal href_reg_i_19_n_0 : STD_LOGIC;
  signal href_reg_i_20_n_0 : STD_LOGIC;
  signal href_reg_i_21_n_0 : STD_LOGIC;
  signal href_reg_i_22_n_0 : STD_LOGIC;
  signal href_reg_i_23_n_0 : STD_LOGIC;
  signal href_reg_i_24_n_0 : STD_LOGIC;
  signal href_reg_i_26_n_0 : STD_LOGIC;
  signal href_reg_i_27_n_0 : STD_LOGIC;
  signal href_reg_i_28_n_0 : STD_LOGIC;
  signal href_reg_i_29_n_0 : STD_LOGIC;
  signal href_reg_i_30_n_0 : STD_LOGIC;
  signal href_reg_i_31_n_0 : STD_LOGIC;
  signal href_reg_i_32_n_0 : STD_LOGIC;
  signal href_reg_i_33_n_0 : STD_LOGIC;
  signal href_reg_i_35_n_0 : STD_LOGIC;
  signal href_reg_i_36_n_0 : STD_LOGIC;
  signal href_reg_i_37_n_0 : STD_LOGIC;
  signal href_reg_i_38_n_0 : STD_LOGIC;
  signal href_reg_i_41_n_0 : STD_LOGIC;
  signal href_reg_i_42_n_0 : STD_LOGIC;
  signal href_reg_i_43_n_0 : STD_LOGIC;
  signal href_reg_i_44_n_0 : STD_LOGIC;
  signal href_reg_i_46_n_0 : STD_LOGIC;
  signal href_reg_i_47_n_0 : STD_LOGIC;
  signal href_reg_i_48_n_0 : STD_LOGIC;
  signal href_reg_i_49_n_0 : STD_LOGIC;
  signal href_reg_i_50_n_0 : STD_LOGIC;
  signal href_reg_i_51_n_0 : STD_LOGIC;
  signal href_reg_i_52_n_0 : STD_LOGIC;
  signal href_reg_i_53_n_0 : STD_LOGIC;
  signal href_reg_i_54_n_0 : STD_LOGIC;
  signal href_reg_i_55_n_0 : STD_LOGIC;
  signal href_reg_i_56_n_0 : STD_LOGIC;
  signal href_reg_i_57_n_0 : STD_LOGIC;
  signal href_reg_i_58_n_0 : STD_LOGIC;
  signal href_reg_i_59_n_0 : STD_LOGIC;
  signal href_reg_i_60_n_0 : STD_LOGIC;
  signal href_reg_i_61_n_0 : STD_LOGIC;
  signal href_reg_i_63_n_0 : STD_LOGIC;
  signal href_reg_i_64_n_0 : STD_LOGIC;
  signal href_reg_i_65_n_0 : STD_LOGIC;
  signal href_reg_i_66_n_0 : STD_LOGIC;
  signal href_reg_i_73_n_0 : STD_LOGIC;
  signal href_reg_i_74_n_0 : STD_LOGIC;
  signal href_reg_i_75_n_0 : STD_LOGIC;
  signal href_reg_i_76_n_0 : STD_LOGIC;
  signal href_reg_i_7_n_0 : STD_LOGIC;
  signal href_reg_i_82_n_0 : STD_LOGIC;
  signal href_reg_i_83_n_0 : STD_LOGIC;
  signal href_reg_i_84_n_0 : STD_LOGIC;
  signal href_reg_i_85_n_0 : STD_LOGIC;
  signal href_reg_i_8_n_0 : STD_LOGIC;
  signal href_reg_i_91_n_0 : STD_LOGIC;
  signal href_reg_i_92_n_0 : STD_LOGIC;
  signal href_reg_i_93_n_0 : STD_LOGIC;
  signal href_reg_i_94_n_0 : STD_LOGIC;
  signal href_reg_i_9_n_0 : STD_LOGIC;
  signal href_reg_reg_i_11_n_0 : STD_LOGIC;
  signal href_reg_reg_i_11_n_1 : STD_LOGIC;
  signal href_reg_reg_i_11_n_2 : STD_LOGIC;
  signal href_reg_reg_i_11_n_3 : STD_LOGIC;
  signal href_reg_reg_i_16_n_0 : STD_LOGIC;
  signal href_reg_reg_i_16_n_1 : STD_LOGIC;
  signal href_reg_reg_i_16_n_2 : STD_LOGIC;
  signal href_reg_reg_i_16_n_3 : STD_LOGIC;
  signal href_reg_reg_i_25_n_0 : STD_LOGIC;
  signal href_reg_reg_i_25_n_1 : STD_LOGIC;
  signal href_reg_reg_i_25_n_2 : STD_LOGIC;
  signal href_reg_reg_i_25_n_3 : STD_LOGIC;
  signal href_reg_reg_i_2_n_0 : STD_LOGIC;
  signal href_reg_reg_i_2_n_1 : STD_LOGIC;
  signal href_reg_reg_i_2_n_2 : STD_LOGIC;
  signal href_reg_reg_i_2_n_3 : STD_LOGIC;
  signal href_reg_reg_i_34_n_0 : STD_LOGIC;
  signal href_reg_reg_i_34_n_1 : STD_LOGIC;
  signal href_reg_reg_i_34_n_2 : STD_LOGIC;
  signal href_reg_reg_i_34_n_3 : STD_LOGIC;
  signal href_reg_reg_i_3_n_0 : STD_LOGIC;
  signal href_reg_reg_i_3_n_1 : STD_LOGIC;
  signal href_reg_reg_i_3_n_2 : STD_LOGIC;
  signal href_reg_reg_i_3_n_3 : STD_LOGIC;
  signal href_reg_reg_i_40_n_0 : STD_LOGIC;
  signal href_reg_reg_i_40_n_1 : STD_LOGIC;
  signal href_reg_reg_i_40_n_2 : STD_LOGIC;
  signal href_reg_reg_i_40_n_3 : STD_LOGIC;
  signal href_reg_reg_i_4_n_0 : STD_LOGIC;
  signal href_reg_reg_i_4_n_1 : STD_LOGIC;
  signal href_reg_reg_i_4_n_2 : STD_LOGIC;
  signal href_reg_reg_i_4_n_3 : STD_LOGIC;
  signal href_reg_reg_i_5_n_1 : STD_LOGIC;
  signal href_reg_reg_i_5_n_2 : STD_LOGIC;
  signal href_reg_reg_i_5_n_3 : STD_LOGIC;
  signal href_reg_reg_i_62_n_0 : STD_LOGIC;
  signal href_reg_reg_i_62_n_1 : STD_LOGIC;
  signal href_reg_reg_i_62_n_2 : STD_LOGIC;
  signal href_reg_reg_i_62_n_3 : STD_LOGIC;
  signal href_reg_reg_i_6_n_0 : STD_LOGIC;
  signal href_reg_reg_i_6_n_1 : STD_LOGIC;
  signal href_reg_reg_i_6_n_2 : STD_LOGIC;
  signal href_reg_reg_i_6_n_3 : STD_LOGIC;
  signal href_reg_reg_i_72_n_0 : STD_LOGIC;
  signal href_reg_reg_i_72_n_1 : STD_LOGIC;
  signal href_reg_reg_i_72_n_2 : STD_LOGIC;
  signal href_reg_reg_i_72_n_3 : STD_LOGIC;
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
  signal out_href20_in : STD_LOGIC;
  signal \pix_cnt[0]_i_10_n_0\ : STD_LOGIC;
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
  signal prev_href_i_1_n_0 : STD_LOGIC;
  signal \^prev_vsync\ : STD_LOGIC;
  signal NLW_href_reg_reg_i_11_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_16_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_25_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_34_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_40_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_62_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_href_reg_reg_i_72_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_line_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pix_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  prev_href <= \^prev_href\;
  prev_vsync <= \^prev_vsync\;
\data_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(0),
      Q => data_r(0)
    );
\data_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(10),
      Q => data_r(10)
    );
\data_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(11),
      Q => data_r(11)
    );
\data_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(12),
      Q => data_r(12)
    );
\data_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(13),
      Q => data_r(13)
    );
\data_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(14),
      Q => data_r(14)
    );
\data_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(15),
      Q => data_r(15)
    );
\data_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(16),
      Q => data_r(16)
    );
\data_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(17),
      Q => data_r(17)
    );
\data_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(18),
      Q => data_r(18)
    );
\data_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(19),
      Q => data_r(19)
    );
\data_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(1),
      Q => data_r(1)
    );
\data_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(20),
      Q => data_r(20)
    );
\data_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(21),
      Q => data_r(21)
    );
\data_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(22),
      Q => data_r(22)
    );
\data_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(23),
      Q => data_r(23)
    );
\data_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(2),
      Q => data_r(2)
    );
\data_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(3),
      Q => data_r(3)
    );
\data_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(4),
      Q => data_r(4)
    );
\data_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(5),
      Q => data_r(5)
    );
\data_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(6),
      Q => data_r(6)
    );
\data_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(7),
      Q => data_r(7)
    );
\data_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(8),
      Q => data_r(8)
    );
\data_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_data(9),
      Q => data_r(9)
    );
\data_reg[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(0),
      I2 => out_data(0),
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
      I2 => out_data(10),
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
      I2 => out_data(11),
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
      I2 => out_data(12),
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
      I2 => out_data(13),
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
      I2 => out_data(14),
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
      I2 => out_data(15),
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
      I2 => out_data(16),
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
      I2 => out_data(17),
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
      I2 => out_data(18),
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
      I2 => out_data(19),
      I3 => s_crop_en,
      O => D(19)
    );
\data_reg[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(1),
      I2 => out_data(1),
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
      I2 => out_data(20),
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
      I2 => out_data(21),
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
      I2 => out_data(22),
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
      I2 => out_data(23),
      I3 => s_crop_en,
      O => D(23)
    );
\data_reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => href_reg_reg_i_2_n_0,
      I1 => href_reg_reg_i_3_n_0,
      I2 => href_reg_reg_i_4_n_0,
      I3 => out_href20_in,
      O => crop_href
    );
\data_reg[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(2),
      I2 => out_data(2),
      I3 => s_crop_en,
      O => D(2)
    );
\data_reg[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(3),
      I2 => out_data(3),
      I3 => s_crop_en,
      O => D(3)
    );
\data_reg[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(4),
      I2 => out_data(4),
      I3 => s_crop_en,
      O => D(4)
    );
\data_reg[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(5),
      I2 => out_data(5),
      I3 => s_crop_en,
      O => D(5)
    );
\data_reg[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(6),
      I2 => out_data(6),
      I3 => s_crop_en,
      O => D(6)
    );
\data_reg[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => crop_href,
      I1 => data_r(7),
      I2 => out_data(7),
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
      I2 => out_data(8),
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
      I2 => out_data(9),
      I3 => s_crop_en,
      O => D(9)
    );
href_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(12),
      I1 => O(0),
      O => href_reg_i_10_n_0
    );
href_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(15),
      I1 => href_reg_reg_i_3_0(3),
      O => href_reg_i_12_n_0
    );
href_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(14),
      I1 => href_reg_reg_i_3_0(2),
      O => href_reg_i_13_n_0
    );
href_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(13),
      I1 => href_reg_reg_i_3_0(1),
      O => href_reg_i_14_n_0
    );
href_reg_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(12),
      I1 => href_reg_reg_i_3_0(0),
      O => href_reg_i_15_n_0
    );
href_reg_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_cnt_reg(15),
      I1 => href_reg_reg_i_4_0(15),
      I2 => line_cnt_reg(14),
      I3 => href_reg_reg_i_4_0(14),
      O => href_reg_i_17_n_0
    );
href_reg_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_cnt_reg(13),
      I1 => href_reg_reg_i_4_0(13),
      I2 => line_cnt_reg(12),
      I3 => href_reg_reg_i_4_0(12),
      O => href_reg_i_18_n_0
    );
href_reg_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_cnt_reg(11),
      I1 => href_reg_reg_i_4_0(11),
      I2 => line_cnt_reg(10),
      I3 => href_reg_reg_i_4_0(10),
      O => href_reg_i_19_n_0
    );
\href_reg_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
        port map (
      I0 => href_reg_reg_i_2_n_0,
      I1 => href_reg_reg_i_3_n_0,
      I2 => href_reg_reg_i_4_n_0,
      I3 => out_href20_in,
      I4 => s_crop_en,
      I5 => out_href,
      O => in_href
    );
href_reg_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_cnt_reg(9),
      I1 => href_reg_reg_i_4_0(9),
      I2 => line_cnt_reg(8),
      I3 => href_reg_reg_i_4_0(8),
      O => href_reg_i_20_n_0
    );
href_reg_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_4_0(15),
      I1 => line_cnt_reg(15),
      I2 => href_reg_reg_i_4_0(14),
      I3 => line_cnt_reg(14),
      O => href_reg_i_21_n_0
    );
href_reg_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_4_0(13),
      I1 => line_cnt_reg(13),
      I2 => href_reg_reg_i_4_0(12),
      I3 => line_cnt_reg(12),
      O => href_reg_i_22_n_0
    );
href_reg_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_4_0(11),
      I1 => line_cnt_reg(11),
      I2 => href_reg_reg_i_4_0(10),
      I3 => line_cnt_reg(10),
      O => href_reg_i_23_n_0
    );
href_reg_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_4_0(9),
      I1 => line_cnt_reg(9),
      I2 => href_reg_reg_i_4_0(8),
      I3 => line_cnt_reg(8),
      O => href_reg_i_24_n_0
    );
href_reg_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pix_cnt_reg(15),
      I1 => href_reg_reg_i_5_0(15),
      I2 => pix_cnt_reg(14),
      I3 => href_reg_reg_i_5_0(14),
      O => href_reg_i_26_n_0
    );
href_reg_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pix_cnt_reg(13),
      I1 => href_reg_reg_i_5_0(13),
      I2 => pix_cnt_reg(12),
      I3 => href_reg_reg_i_5_0(12),
      O => href_reg_i_27_n_0
    );
href_reg_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pix_cnt_reg(11),
      I1 => href_reg_reg_i_5_0(11),
      I2 => pix_cnt_reg(10),
      I3 => href_reg_reg_i_5_0(10),
      O => href_reg_i_28_n_0
    );
href_reg_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pix_cnt_reg(9),
      I1 => href_reg_reg_i_5_0(9),
      I2 => pix_cnt_reg(8),
      I3 => href_reg_reg_i_5_0(8),
      O => href_reg_i_29_n_0
    );
href_reg_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_5_0(15),
      I1 => pix_cnt_reg(15),
      I2 => href_reg_reg_i_5_0(14),
      I3 => pix_cnt_reg(14),
      O => href_reg_i_30_n_0
    );
href_reg_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_5_0(13),
      I1 => pix_cnt_reg(13),
      I2 => href_reg_reg_i_5_0(12),
      I3 => pix_cnt_reg(12),
      O => href_reg_i_31_n_0
    );
href_reg_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_5_0(11),
      I1 => pix_cnt_reg(11),
      I2 => href_reg_reg_i_5_0(10),
      I3 => pix_cnt_reg(10),
      O => href_reg_i_32_n_0
    );
href_reg_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_5_0(9),
      I1 => pix_cnt_reg(9),
      I2 => href_reg_reg_i_5_0(8),
      I3 => pix_cnt_reg(8),
      O => href_reg_i_33_n_0
    );
href_reg_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(11),
      I1 => href_reg_reg_i_6_0(3),
      O => href_reg_i_35_n_0
    );
href_reg_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(10),
      I1 => href_reg_reg_i_6_0(2),
      O => href_reg_i_36_n_0
    );
href_reg_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(9),
      I1 => href_reg_reg_i_6_0(1),
      O => href_reg_i_37_n_0
    );
href_reg_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(8),
      I1 => href_reg_reg_i_6_0(0),
      O => href_reg_i_38_n_0
    );
href_reg_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(11),
      I1 => href_reg_reg_i_11_0(3),
      O => href_reg_i_41_n_0
    );
href_reg_i_42: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(10),
      I1 => href_reg_reg_i_11_0(2),
      O => href_reg_i_42_n_0
    );
href_reg_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(9),
      I1 => href_reg_reg_i_11_0(1),
      O => href_reg_i_43_n_0
    );
href_reg_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(8),
      I1 => href_reg_reg_i_11_0(0),
      O => href_reg_i_44_n_0
    );
href_reg_i_46: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_cnt_reg(7),
      I1 => href_reg_reg_i_4_0(7),
      I2 => line_cnt_reg(6),
      I3 => href_reg_reg_i_4_0(6),
      O => href_reg_i_46_n_0
    );
href_reg_i_47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_cnt_reg(5),
      I1 => href_reg_reg_i_4_0(5),
      I2 => line_cnt_reg(4),
      I3 => href_reg_reg_i_4_0(4),
      O => href_reg_i_47_n_0
    );
href_reg_i_48: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_cnt_reg(3),
      I1 => href_reg_reg_i_4_0(3),
      I2 => line_cnt_reg(2),
      I3 => href_reg_reg_i_4_0(2),
      O => href_reg_i_48_n_0
    );
href_reg_i_49: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => line_cnt_reg(1),
      I1 => href_reg_reg_i_4_0(1),
      I2 => line_cnt_reg(0),
      I3 => href_reg_reg_i_4_0(0),
      O => href_reg_i_49_n_0
    );
href_reg_i_50: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_4_0(7),
      I1 => line_cnt_reg(7),
      I2 => href_reg_reg_i_4_0(6),
      I3 => line_cnt_reg(6),
      O => href_reg_i_50_n_0
    );
href_reg_i_51: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_4_0(5),
      I1 => line_cnt_reg(5),
      I2 => href_reg_reg_i_4_0(4),
      I3 => line_cnt_reg(4),
      O => href_reg_i_51_n_0
    );
href_reg_i_52: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_4_0(3),
      I1 => line_cnt_reg(3),
      I2 => href_reg_reg_i_4_0(2),
      I3 => line_cnt_reg(2),
      O => href_reg_i_52_n_0
    );
href_reg_i_53: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_4_0(1),
      I1 => line_cnt_reg(1),
      I2 => href_reg_reg_i_4_0(0),
      I3 => line_cnt_reg(0),
      O => href_reg_i_53_n_0
    );
href_reg_i_54: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pix_cnt_reg(7),
      I1 => href_reg_reg_i_5_0(7),
      I2 => pix_cnt_reg(6),
      I3 => href_reg_reg_i_5_0(6),
      O => href_reg_i_54_n_0
    );
href_reg_i_55: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pix_cnt_reg(5),
      I1 => href_reg_reg_i_5_0(5),
      I2 => pix_cnt_reg(4),
      I3 => href_reg_reg_i_5_0(4),
      O => href_reg_i_55_n_0
    );
href_reg_i_56: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => href_reg_reg_i_5_0(3),
      I2 => pix_cnt_reg(2),
      I3 => href_reg_reg_i_5_0(2),
      O => href_reg_i_56_n_0
    );
href_reg_i_57: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pix_cnt_reg(1),
      I1 => href_reg_reg_i_5_0(1),
      I2 => pix_cnt_reg(0),
      I3 => href_reg_reg_i_5_0(0),
      O => href_reg_i_57_n_0
    );
href_reg_i_58: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_5_0(7),
      I1 => pix_cnt_reg(7),
      I2 => href_reg_reg_i_5_0(6),
      I3 => pix_cnt_reg(6),
      O => href_reg_i_58_n_0
    );
href_reg_i_59: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_5_0(5),
      I1 => pix_cnt_reg(5),
      I2 => href_reg_reg_i_5_0(4),
      I3 => pix_cnt_reg(4),
      O => href_reg_i_59_n_0
    );
href_reg_i_60: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_5_0(3),
      I1 => pix_cnt_reg(3),
      I2 => href_reg_reg_i_5_0(2),
      I3 => pix_cnt_reg(2),
      O => href_reg_i_60_n_0
    );
href_reg_i_61: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => href_reg_reg_i_5_0(1),
      I1 => pix_cnt_reg(1),
      I2 => href_reg_reg_i_5_0(0),
      I3 => pix_cnt_reg(0),
      O => href_reg_i_61_n_0
    );
href_reg_i_63: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(7),
      I1 => href_reg_reg_i_34_0(3),
      O => href_reg_i_63_n_0
    );
href_reg_i_64: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(6),
      I1 => href_reg_reg_i_34_0(2),
      O => href_reg_i_64_n_0
    );
href_reg_i_65: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(5),
      I1 => href_reg_reg_i_34_0(1),
      O => href_reg_i_65_n_0
    );
href_reg_i_66: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(4),
      I1 => href_reg_reg_i_34_0(0),
      O => href_reg_i_66_n_0
    );
href_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(15),
      I1 => O(3),
      O => href_reg_i_7_n_0
    );
href_reg_i_73: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(7),
      I1 => href_reg_reg_i_40_0(3),
      O => href_reg_i_73_n_0
    );
href_reg_i_74: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(6),
      I1 => href_reg_reg_i_40_0(2),
      O => href_reg_i_74_n_0
    );
href_reg_i_75: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(5),
      I1 => href_reg_reg_i_40_0(1),
      O => href_reg_i_75_n_0
    );
href_reg_i_76: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(4),
      I1 => href_reg_reg_i_40_0(0),
      O => href_reg_i_76_n_0
    );
href_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(14),
      I1 => O(2),
      O => href_reg_i_8_n_0
    );
href_reg_i_82: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => href_reg_reg_i_62_0(3),
      O => href_reg_i_82_n_0
    );
href_reg_i_83: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(2),
      I1 => href_reg_reg_i_62_0(2),
      O => href_reg_i_83_n_0
    );
href_reg_i_84: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(1),
      I1 => href_reg_reg_i_62_0(1),
      O => href_reg_i_84_n_0
    );
href_reg_i_85: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => href_reg_reg_i_62_0(0),
      O => href_reg_i_85_n_0
    );
href_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pix_cnt_reg(13),
      I1 => O(1),
      O => href_reg_i_9_n_0
    );
href_reg_i_91: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(3),
      I1 => href_reg_reg_i_72_0(3),
      O => href_reg_i_91_n_0
    );
href_reg_i_92: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(2),
      I1 => href_reg_reg_i_72_0(2),
      O => href_reg_i_92_n_0
    );
href_reg_i_93: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(1),
      I1 => href_reg_reg_i_72_0(1),
      O => href_reg_i_93_n_0
    );
href_reg_i_94: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_cnt_reg(0),
      I1 => href_reg_reg_i_72_0(0),
      O => href_reg_i_94_n_0
    );
href_reg_reg_i_11: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_40_n_0,
      CO(3) => href_reg_reg_i_11_n_0,
      CO(2) => href_reg_reg_i_11_n_1,
      CO(1) => href_reg_reg_i_11_n_2,
      CO(0) => href_reg_reg_i_11_n_3,
      CYINIT => '0',
      DI(3 downto 0) => line_cnt_reg(11 downto 8),
      O(3 downto 0) => NLW_href_reg_reg_i_11_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_41_n_0,
      S(2) => href_reg_i_42_n_0,
      S(1) => href_reg_i_43_n_0,
      S(0) => href_reg_i_44_n_0
    );
href_reg_reg_i_16: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => href_reg_reg_i_16_n_0,
      CO(2) => href_reg_reg_i_16_n_1,
      CO(1) => href_reg_reg_i_16_n_2,
      CO(0) => href_reg_reg_i_16_n_3,
      CYINIT => '1',
      DI(3) => href_reg_i_46_n_0,
      DI(2) => href_reg_i_47_n_0,
      DI(1) => href_reg_i_48_n_0,
      DI(0) => href_reg_i_49_n_0,
      O(3 downto 0) => NLW_href_reg_reg_i_16_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_50_n_0,
      S(2) => href_reg_i_51_n_0,
      S(1) => href_reg_i_52_n_0,
      S(0) => href_reg_i_53_n_0
    );
href_reg_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_6_n_0,
      CO(3) => href_reg_reg_i_2_n_0,
      CO(2) => href_reg_reg_i_2_n_1,
      CO(1) => href_reg_reg_i_2_n_2,
      CO(0) => href_reg_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => pix_cnt_reg(15 downto 12),
      O(3 downto 0) => NLW_href_reg_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_7_n_0,
      S(2) => href_reg_i_8_n_0,
      S(1) => href_reg_i_9_n_0,
      S(0) => href_reg_i_10_n_0
    );
href_reg_reg_i_25: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => href_reg_reg_i_25_n_0,
      CO(2) => href_reg_reg_i_25_n_1,
      CO(1) => href_reg_reg_i_25_n_2,
      CO(0) => href_reg_reg_i_25_n_3,
      CYINIT => '1',
      DI(3) => href_reg_i_54_n_0,
      DI(2) => href_reg_i_55_n_0,
      DI(1) => href_reg_i_56_n_0,
      DI(0) => href_reg_i_57_n_0,
      O(3 downto 0) => NLW_href_reg_reg_i_25_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_58_n_0,
      S(2) => href_reg_i_59_n_0,
      S(1) => href_reg_i_60_n_0,
      S(0) => href_reg_i_61_n_0
    );
href_reg_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_11_n_0,
      CO(3) => href_reg_reg_i_3_n_0,
      CO(2) => href_reg_reg_i_3_n_1,
      CO(1) => href_reg_reg_i_3_n_2,
      CO(0) => href_reg_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => line_cnt_reg(15 downto 12),
      O(3 downto 0) => NLW_href_reg_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_12_n_0,
      S(2) => href_reg_i_13_n_0,
      S(1) => href_reg_i_14_n_0,
      S(0) => href_reg_i_15_n_0
    );
href_reg_reg_i_34: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_62_n_0,
      CO(3) => href_reg_reg_i_34_n_0,
      CO(2) => href_reg_reg_i_34_n_1,
      CO(1) => href_reg_reg_i_34_n_2,
      CO(0) => href_reg_reg_i_34_n_3,
      CYINIT => '0',
      DI(3 downto 0) => pix_cnt_reg(7 downto 4),
      O(3 downto 0) => NLW_href_reg_reg_i_34_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_63_n_0,
      S(2) => href_reg_i_64_n_0,
      S(1) => href_reg_i_65_n_0,
      S(0) => href_reg_i_66_n_0
    );
href_reg_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_16_n_0,
      CO(3) => href_reg_reg_i_4_n_0,
      CO(2) => href_reg_reg_i_4_n_1,
      CO(1) => href_reg_reg_i_4_n_2,
      CO(0) => href_reg_reg_i_4_n_3,
      CYINIT => '0',
      DI(3) => href_reg_i_17_n_0,
      DI(2) => href_reg_i_18_n_0,
      DI(1) => href_reg_i_19_n_0,
      DI(0) => href_reg_i_20_n_0,
      O(3 downto 0) => NLW_href_reg_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_21_n_0,
      S(2) => href_reg_i_22_n_0,
      S(1) => href_reg_i_23_n_0,
      S(0) => href_reg_i_24_n_0
    );
href_reg_reg_i_40: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_72_n_0,
      CO(3) => href_reg_reg_i_40_n_0,
      CO(2) => href_reg_reg_i_40_n_1,
      CO(1) => href_reg_reg_i_40_n_2,
      CO(0) => href_reg_reg_i_40_n_3,
      CYINIT => '0',
      DI(3 downto 0) => line_cnt_reg(7 downto 4),
      O(3 downto 0) => NLW_href_reg_reg_i_40_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_73_n_0,
      S(2) => href_reg_i_74_n_0,
      S(1) => href_reg_i_75_n_0,
      S(0) => href_reg_i_76_n_0
    );
href_reg_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_25_n_0,
      CO(3) => out_href20_in,
      CO(2) => href_reg_reg_i_5_n_1,
      CO(1) => href_reg_reg_i_5_n_2,
      CO(0) => href_reg_reg_i_5_n_3,
      CYINIT => '0',
      DI(3) => href_reg_i_26_n_0,
      DI(2) => href_reg_i_27_n_0,
      DI(1) => href_reg_i_28_n_0,
      DI(0) => href_reg_i_29_n_0,
      O(3 downto 0) => NLW_href_reg_reg_i_5_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_30_n_0,
      S(2) => href_reg_i_31_n_0,
      S(1) => href_reg_i_32_n_0,
      S(0) => href_reg_i_33_n_0
    );
href_reg_reg_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_34_n_0,
      CO(3) => href_reg_reg_i_6_n_0,
      CO(2) => href_reg_reg_i_6_n_1,
      CO(1) => href_reg_reg_i_6_n_2,
      CO(0) => href_reg_reg_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => pix_cnt_reg(11 downto 8),
      O(3 downto 0) => NLW_href_reg_reg_i_6_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_35_n_0,
      S(2) => href_reg_i_36_n_0,
      S(1) => href_reg_i_37_n_0,
      S(0) => href_reg_i_38_n_0
    );
href_reg_reg_i_62: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => href_reg_reg_i_62_n_0,
      CO(2) => href_reg_reg_i_62_n_1,
      CO(1) => href_reg_reg_i_62_n_2,
      CO(0) => href_reg_reg_i_62_n_3,
      CYINIT => '1',
      DI(3 downto 0) => pix_cnt_reg(3 downto 0),
      O(3 downto 0) => NLW_href_reg_reg_i_62_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_82_n_0,
      S(2) => href_reg_i_83_n_0,
      S(1) => href_reg_i_84_n_0,
      S(0) => href_reg_i_85_n_0
    );
href_reg_reg_i_72: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => href_reg_reg_i_72_n_0,
      CO(2) => href_reg_reg_i_72_n_1,
      CO(1) => href_reg_reg_i_72_n_2,
      CO(0) => href_reg_reg_i_72_n_3,
      CYINIT => '1',
      DI(3 downto 0) => line_cnt_reg(3 downto 0),
      O(3 downto 0) => NLW_href_reg_reg_i_72_O_UNCONNECTED(3 downto 0),
      S(3) => href_reg_i_91_n_0,
      S(2) => href_reg_i_92_n_0,
      S(1) => href_reg_i_93_n_0,
      S(0) => href_reg_i_94_n_0
    );
\line_cnt[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(3),
      O => \line_cnt[0]_i_4_n_0\
    );
\line_cnt[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(2),
      O => \line_cnt[0]_i_5_n_0\
    );
\line_cnt[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(1),
      O => \line_cnt[0]_i_6_n_0\
    );
\line_cnt[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"51"
    )
        port map (
      I0 => line_cnt_reg(0),
      I1 => \^prev_vsync\,
      I2 => out_vsync,
      O => \line_cnt[0]_i_7_n_0\
    );
\line_cnt[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(15),
      O => \line_cnt[12]_i_2_n_0\
    );
\line_cnt[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(14),
      O => \line_cnt[12]_i_3_n_0\
    );
\line_cnt[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(13),
      O => \line_cnt[12]_i_4_n_0\
    );
\line_cnt[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(12),
      O => \line_cnt[12]_i_5_n_0\
    );
\line_cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(7),
      O => \line_cnt[4]_i_2_n_0\
    );
\line_cnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(6),
      O => \line_cnt[4]_i_3_n_0\
    );
\line_cnt[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(5),
      O => \line_cnt[4]_i_4_n_0\
    );
\line_cnt[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(4),
      O => \line_cnt[4]_i_5_n_0\
    );
\line_cnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(11),
      O => \line_cnt[8]_i_2_n_0\
    );
\line_cnt[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(10),
      O => \line_cnt[8]_i_3_n_0\
    );
\line_cnt[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(9),
      O => \line_cnt[8]_i_4_n_0\
    );
\line_cnt[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => out_vsync,
      I2 => line_cnt_reg(8),
      O => \line_cnt[8]_i_5_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[0]_i_2_n_7\,
      PRE => prev_href_i_1_n_0,
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
      DI(0) => DI(0),
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
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(10)
    );
\line_cnt_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[8]_i_1_n_4\,
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(11)
    );
\line_cnt_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[12]_i_1_n_7\,
      PRE => prev_href_i_1_n_0,
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
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(13)
    );
\line_cnt_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[12]_i_1_n_5\,
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(14)
    );
\line_cnt_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[12]_i_1_n_4\,
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(15)
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[0]_i_2_n_6\,
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(1)
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[0]_i_2_n_5\,
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(2)
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[0]_i_2_n_4\,
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(3)
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[4]_i_1_n_7\,
      PRE => prev_href_i_1_n_0,
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
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(5)
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[4]_i_1_n_5\,
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(6)
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[4]_i_1_n_4\,
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(7)
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => pclk,
      CE => \line_cnt_reg[15]_0\,
      D => \line_cnt_reg[8]_i_1_n_7\,
      PRE => prev_href_i_1_n_0,
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
      PRE => prev_href_i_1_n_0,
      Q => line_cnt_reg(9)
    );
\pix_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => pix_cnt_reg(4),
      I1 => pix_cnt_reg(3),
      I2 => pix_cnt_reg(0),
      I3 => \pix_cnt[0]_i_3_n_0\,
      I4 => \pix_cnt[0]_i_4_n_0\,
      O => \pix_cnt[0]_i_1_n_0\
    );
\pix_cnt[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F77FFFF"
    )
        port map (
      I0 => pix_cnt_reg(14),
      I1 => pix_cnt_reg(13),
      I2 => \^prev_href\,
      I3 => out_href,
      I4 => pix_cnt_reg(15),
      O => \pix_cnt[0]_i_10_n_0\
    );
\pix_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => pix_cnt_reg(2),
      I1 => pix_cnt_reg(1),
      I2 => pix_cnt_reg(11),
      I3 => pix_cnt_reg(12),
      I4 => \pix_cnt[0]_i_10_n_0\,
      O => \pix_cnt[0]_i_3_n_0\
    );
\pix_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => pix_cnt_reg(9),
      I1 => pix_cnt_reg(10),
      I2 => pix_cnt_reg(7),
      I3 => pix_cnt_reg(8),
      I4 => pix_cnt_reg(6),
      I5 => pix_cnt_reg(5),
      O => \pix_cnt[0]_i_4_n_0\
    );
\pix_cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^prev_href\,
      I1 => out_href,
      O => \pix_cnt[0]_i_5_n_0\
    );
\pix_cnt[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(3),
      O => \pix_cnt[0]_i_6_n_0\
    );
\pix_cnt[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(2),
      O => \pix_cnt[0]_i_7_n_0\
    );
\pix_cnt[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(1),
      O => \pix_cnt[0]_i_8_n_0\
    );
\pix_cnt[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"51"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => out_href,
      I2 => \^prev_href\,
      O => \pix_cnt[0]_i_9_n_0\
    );
\pix_cnt[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^prev_href\,
      I1 => out_href,
      I2 => pix_cnt_reg(15),
      O => \pix_cnt[12]_i_2_n_0\
    );
\pix_cnt[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(14),
      O => \pix_cnt[12]_i_3_n_0\
    );
\pix_cnt[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(13),
      O => \pix_cnt[12]_i_4_n_0\
    );
\pix_cnt[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(12),
      O => \pix_cnt[12]_i_5_n_0\
    );
\pix_cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(7),
      O => \pix_cnt[4]_i_2_n_0\
    );
\pix_cnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(6),
      O => \pix_cnt[4]_i_3_n_0\
    );
\pix_cnt[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(5),
      O => \pix_cnt[4]_i_4_n_0\
    );
\pix_cnt[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(4),
      O => \pix_cnt[4]_i_5_n_0\
    );
\pix_cnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(11),
      O => \pix_cnt[8]_i_2_n_0\
    );
\pix_cnt[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(10),
      O => \pix_cnt[8]_i_3_n_0\
    );
\pix_cnt[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(9),
      O => \pix_cnt[8]_i_4_n_0\
    );
\pix_cnt[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => out_href,
      I1 => \^prev_href\,
      I2 => pix_cnt_reg(8),
      O => \pix_cnt[8]_i_5_n_0\
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
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
      DI(0) => \pix_cnt[0]_i_5_n_0\,
      O(3) => \pix_cnt_reg[0]_i_2_n_4\,
      O(2) => \pix_cnt_reg[0]_i_2_n_5\,
      O(1) => \pix_cnt_reg[0]_i_2_n_6\,
      O(0) => \pix_cnt_reg[0]_i_2_n_7\,
      S(3) => \pix_cnt[0]_i_6_n_0\,
      S(2) => \pix_cnt[0]_i_7_n_0\,
      S(1) => \pix_cnt[0]_i_8_n_0\,
      S(0) => \pix_cnt[0]_i_9_n_0\
    );
\pix_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[8]_i_1_n_5\,
      Q => pix_cnt_reg(10)
    );
\pix_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[8]_i_1_n_4\,
      Q => pix_cnt_reg(11)
    );
\pix_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
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
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[12]_i_1_n_6\,
      Q => pix_cnt_reg(13)
    );
\pix_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[12]_i_1_n_5\,
      Q => pix_cnt_reg(14)
    );
\pix_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[12]_i_1_n_4\,
      Q => pix_cnt_reg(15)
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[0]_i_2_n_6\,
      Q => pix_cnt_reg(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[0]_i_2_n_5\,
      Q => pix_cnt_reg(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[0]_i_2_n_4\,
      Q => pix_cnt_reg(3)
    );
\pix_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
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
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[4]_i_1_n_6\,
      Q => pix_cnt_reg(5)
    );
\pix_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[4]_i_1_n_5\,
      Q => pix_cnt_reg(6)
    );
\pix_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[4]_i_1_n_4\,
      Q => pix_cnt_reg(7)
    );
\pix_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \pix_cnt[0]_i_1_n_0\,
      CLR => prev_href_i_1_n_0,
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
      CLR => prev_href_i_1_n_0,
      D => \pix_cnt_reg[8]_i_1_n_6\,
      Q => pix_cnt_reg(9)
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
prev_href_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_href,
      Q => \^prev_href\
    );
prev_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => prev_href_i_1_n_0,
      D => out_vsync,
      Q => \^prev_vsync\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_vip_dscale is
  port (
    prev_vsync : out STD_LOGIC;
    prev_href : out STD_LOGIC;
    out_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    out_href : out STD_LOGIC;
    out_pclk : out STD_LOGIC;
    pclk : in STD_LOGIC;
    prev_vsync_reg_0 : in STD_LOGIC;
    crop_href_o : in STD_LOGIC;
    \pix_cnt_reg[1]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \line_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_dscale_en : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_module_reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end design_1_xil_vip_0_0_vip_dscale;

architecture STRUCTURE of design_1_xil_vip_0_0_vip_dscale is
  signal data_r : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data_r0 : STD_LOGIC;
  signal data_r1 : STD_LOGIC;
  signal dscale_pclk : STD_LOGIC;
  signal line_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal line_cnt1 : STD_LOGIC;
  signal \line_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \line_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal out_pclk_r_i_2_n_0 : STD_LOGIC;
  signal \out_rgb[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \pix_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \pix_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal pix_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^prev_vsync\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pix_cnt[0]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pix_cnt[1]_i_1\ : label is "soft_lutpair1";
begin
  prev_vsync <= \^prev_vsync\;
\data_r[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => pix_cnt_reg(1),
      I1 => pix_cnt_reg(0),
      I2 => pix_cnt_reg(3),
      I3 => pix_cnt_reg(2),
      I4 => data_r1,
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
      O => data_r1
    );
\data_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(0),
      Q => data_r(0)
    );
\data_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(10),
      Q => data_r(10)
    );
\data_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(11),
      Q => data_r(11)
    );
\data_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(12),
      Q => data_r(12)
    );
\data_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(13),
      Q => data_r(13)
    );
\data_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(14),
      Q => data_r(14)
    );
\data_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(15),
      Q => data_r(15)
    );
\data_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(16),
      Q => data_r(16)
    );
\data_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(17),
      Q => data_r(17)
    );
\data_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(18),
      Q => data_r(18)
    );
\data_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(19),
      Q => data_r(19)
    );
\data_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(1),
      Q => data_r(1)
    );
\data_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(20),
      Q => data_r(20)
    );
\data_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(21),
      Q => data_r(21)
    );
\data_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(22),
      Q => data_r(22)
    );
\data_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(23),
      Q => data_r(23)
    );
\data_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(2),
      Q => data_r(2)
    );
\data_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(3),
      Q => data_r(3)
    );
\data_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(4),
      Q => data_r(4)
    );
\data_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(5),
      Q => data_r(5)
    );
\data_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(6),
      Q => data_r(6)
    );
\data_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(7),
      Q => data_r(7)
    );
\data_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(8),
      Q => data_r(8)
    );
\data_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => data_r0,
      CLR => out_pclk_r_i_2_n_0,
      D => Q(9),
      Q => data_r(9)
    );
\line_cnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => line_cnt(0),
      I1 => line_cnt1,
      I2 => prev_vsync_reg_0,
      I3 => \^prev_vsync\,
      O => \line_cnt[0]_i_1__0_n_0\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14001414"
    )
        port map (
      I0 => line_cnt1,
      I1 => line_cnt(0),
      I2 => line_cnt(1),
      I3 => prev_vsync_reg_0,
      I4 => \^prev_vsync\,
      O => \line_cnt[1]_i_1_n_0\
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1540000015401540"
    )
        port map (
      I0 => line_cnt1,
      I1 => line_cnt(0),
      I2 => line_cnt(1),
      I3 => line_cnt(2),
      I4 => prev_vsync_reg_0,
      I5 => \^prev_vsync\,
      O => \line_cnt[2]_i_1_n_0\
    );
\line_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015554000"
    )
        port map (
      I0 => line_cnt1,
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
      O => line_cnt1
    );
\line_cnt[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^prev_vsync\,
      I1 => prev_vsync_reg_0,
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
      CLR => out_pclk_r_i_2_n_0,
      D => \line_cnt[0]_i_1__0_n_0\,
      Q => line_cnt(0)
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => E(0),
      CLR => out_pclk_r_i_2_n_0,
      D => \line_cnt[1]_i_1_n_0\,
      Q => line_cnt(1)
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => E(0),
      CLR => out_pclk_r_i_2_n_0,
      D => \line_cnt[2]_i_1_n_0\,
      Q => line_cnt(2)
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => E(0),
      CLR => out_pclk_r_i_2_n_0,
      D => \line_cnt[3]_i_2_n_0\,
      Q => line_cnt(3)
    );
out_href_INST_0: unisim.vcomponents.LUT6
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
      O => out_href
    );
out_pclk_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dscale_pclk,
      I1 => s_dscale_en,
      I2 => pclk,
      O => out_pclk
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
out_pclk_r_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => out_pclk_r_i_2_n_0,
      D => p_0_in,
      Q => dscale_pclk
    );
\out_rgb[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(0),
      I2 => Q(0),
      I3 => s_dscale_en,
      O => out_rgb(0)
    );
\out_rgb[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(10),
      I2 => s_dscale_en,
      I3 => Q(10),
      O => out_rgb(10)
    );
\out_rgb[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(11),
      I2 => s_dscale_en,
      I3 => Q(11),
      O => out_rgb(11)
    );
\out_rgb[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(12),
      I2 => s_dscale_en,
      I3 => Q(12),
      O => out_rgb(12)
    );
\out_rgb[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(13),
      I2 => s_dscale_en,
      I3 => Q(13),
      O => out_rgb(13)
    );
\out_rgb[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(14),
      I2 => s_dscale_en,
      I3 => Q(14),
      O => out_rgb(14)
    );
\out_rgb[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(15),
      I2 => s_dscale_en,
      I3 => Q(15),
      O => out_rgb(15)
    );
\out_rgb[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(16),
      I2 => s_dscale_en,
      I3 => Q(16),
      O => out_rgb(16)
    );
\out_rgb[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(17),
      I2 => s_dscale_en,
      I3 => Q(17),
      O => out_rgb(17)
    );
\out_rgb[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(18),
      I2 => s_dscale_en,
      I3 => Q(18),
      O => out_rgb(18)
    );
\out_rgb[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(19),
      I2 => s_dscale_en,
      I3 => Q(19),
      O => out_rgb(19)
    );
\out_rgb[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(1),
      I2 => Q(1),
      I3 => s_dscale_en,
      O => out_rgb(1)
    );
\out_rgb[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(20),
      I2 => s_dscale_en,
      I3 => Q(20),
      O => out_rgb(20)
    );
\out_rgb[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(21),
      I2 => s_dscale_en,
      I3 => Q(21),
      O => out_rgb(21)
    );
\out_rgb[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(22),
      I2 => s_dscale_en,
      I3 => Q(22),
      O => out_rgb(22)
    );
\out_rgb[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(23),
      I2 => s_dscale_en,
      I3 => Q(23),
      O => out_rgb(23)
    );
\out_rgb[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => line_cnt(2),
      I1 => line_cnt(3),
      I2 => line_cnt(1),
      I3 => line_cnt(0),
      I4 => crop_href_o,
      I5 => prev_vsync_reg_0,
      O => \out_rgb[23]_INST_0_i_1_n_0\
    );
\out_rgb[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(2),
      I2 => Q(2),
      I3 => s_dscale_en,
      O => out_rgb(2)
    );
\out_rgb[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(3),
      I2 => Q(3),
      I3 => s_dscale_en,
      O => out_rgb(3)
    );
\out_rgb[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(4),
      I2 => Q(4),
      I3 => s_dscale_en,
      O => out_rgb(4)
    );
\out_rgb[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(5),
      I2 => Q(5),
      I3 => s_dscale_en,
      O => out_rgb(5)
    );
\out_rgb[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(6),
      I2 => Q(6),
      I3 => s_dscale_en,
      O => out_rgb(6)
    );
\out_rgb[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(7),
      I2 => Q(7),
      I3 => s_dscale_en,
      O => out_rgb(7)
    );
\out_rgb[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(8),
      I2 => s_dscale_en,
      I3 => Q(8),
      O => out_rgb(8)
    );
\out_rgb[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \out_rgb[23]_INST_0_i_1_n_0\,
      I1 => data_r(9),
      I2 => s_dscale_en,
      I3 => Q(9),
      O => out_rgb(9)
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
      CLR => out_pclk_r_i_2_n_0,
      D => \pix_cnt[0]_i_1__0_n_0\,
      Q => pix_cnt_reg(0)
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => out_pclk_r_i_2_n_0,
      D => \pix_cnt[1]_i_1_n_0\,
      Q => pix_cnt_reg(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => out_pclk_r_i_2_n_0,
      D => \pix_cnt[2]_i_1_n_0\,
      Q => pix_cnt_reg(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => out_pclk_r_i_2_n_0,
      D => \pix_cnt[3]_i_1_n_0\,
      Q => pix_cnt_reg(3)
    );
prev_href_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => out_pclk_r_i_2_n_0,
      D => crop_href_o,
      Q => prev_href
    );
prev_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => out_pclk_r_i_2_n_0,
      D => prev_vsync_reg_0,
      Q => \^prev_vsync\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_vip_yuv2rgb is
  port (
    s_module_reset_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    in_href : out STD_LOGIC;
    in_vsync : out STD_LOGIC;
    pclk : in STD_LOGIC;
    out_href : in STD_LOGIC;
    out_vsync : in STD_LOGIC;
    \ZOUT_reg[19]_0\ : in STD_LOGIC;
    s_module_reset : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_yuv2rgb_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end design_1_xil_vip_0_0_vip_yuv2rgb;

architecture STRUCTURE of design_1_xil_vip_0_0_vip_yuv2rgb is
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
  signal \XOUT[19]_i_2_n_0\ : STD_LOGIC;
  signal \XOUT[19]_i_3_n_0\ : STD_LOGIC;
  signal \XOUT[19]_i_4_n_0\ : STD_LOGIC;
  signal \XOUT[19]_i_5_n_0\ : STD_LOGIC;
  signal \XOUT[19]_i_6_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_10_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_12_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_13_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_14_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_15_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_16_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_17_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_18_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_19_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_21_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_22_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_23_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_24_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_25_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_26_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_27_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_3_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_4_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_5_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_6_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_7_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_8_n_0\ : STD_LOGIC;
  signal \XOUT[2]_i_9_n_0\ : STD_LOGIC;
  signal \XOUT[6]_i_2_n_0\ : STD_LOGIC;
  signal \XOUT[6]_i_3_n_0\ : STD_LOGIC;
  signal \XOUT[6]_i_4_n_0\ : STD_LOGIC;
  signal \XOUT[6]_i_5_n_0\ : STD_LOGIC;
  signal \XOUT[6]_i_6_n_0\ : STD_LOGIC;
  signal \XOUT[6]_i_7_n_0\ : STD_LOGIC;
  signal \XOUT[6]_i_8_n_0\ : STD_LOGIC;
  signal \XOUT[6]_i_9_n_0\ : STD_LOGIC;
  signal \XOUT_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \XOUT_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \XOUT_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \XOUT_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \XOUT_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \XOUT_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_11_n_1\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_11_n_2\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_11_n_3\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_1_n_6\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \XOUT_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \XOUT_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \XOUT_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \XOUT_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \XOUT_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \XOUT_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \XOUT_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \XOUT_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \XOUT_reg[6]_i_1_n_7\ : STD_LOGIC;
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
  signal \YOUT[19]_i_3_n_0\ : STD_LOGIC;
  signal \YOUT[19]_i_4_n_0\ : STD_LOGIC;
  signal \YOUT[19]_i_5_n_0\ : STD_LOGIC;
  signal \YOUT[19]_i_6_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_10_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_12_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_13_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_14_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_15_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_16_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_17_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_18_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_19_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_22_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_25_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_26_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_27_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_28_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_29_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_30_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_31_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_3_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_4_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_5_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_6_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_7_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_8_n_0\ : STD_LOGIC;
  signal \YOUT[3]_i_9_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_14_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_16_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_17_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_18_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_2_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_3_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_4_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_5_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_6_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_7_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_8_n_0\ : STD_LOGIC;
  signal \YOUT[7]_i_9_n_0\ : STD_LOGIC;
  signal \YOUT_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \YOUT_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_11_n_1\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_11_n_2\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_11_n_3\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \YOUT_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \YOUT_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \YOUT_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \YOUT_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \YOUT_reg[7]_i_1_n_3\ : STD_LOGIC;
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
  signal \ZOUT[19]_i_2_n_0\ : STD_LOGIC;
  signal \ZOUT[19]_i_3_n_0\ : STD_LOGIC;
  signal \ZOUT[19]_i_4_n_0\ : STD_LOGIC;
  signal \ZOUT[19]_i_5_n_0\ : STD_LOGIC;
  signal \ZOUT[19]_i_6_n_0\ : STD_LOGIC;
  signal \ZOUT[19]_i_7_n_0\ : STD_LOGIC;
  signal \ZOUT[19]_i_8_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_10_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_12_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_13_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_14_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_15_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_16_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_17_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_18_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_19_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_24_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_25_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_26_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_27_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_3_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_4_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_5_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_6_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_7_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_8_n_0\ : STD_LOGIC;
  signal \ZOUT[2]_i_9_n_0\ : STD_LOGIC;
  signal \ZOUT[6]_i_2_n_0\ : STD_LOGIC;
  signal \ZOUT[6]_i_3_n_0\ : STD_LOGIC;
  signal \ZOUT[6]_i_4_n_0\ : STD_LOGIC;
  signal \ZOUT[6]_i_5_n_0\ : STD_LOGIC;
  signal \ZOUT[6]_i_6_n_0\ : STD_LOGIC;
  signal \ZOUT[6]_i_7_n_0\ : STD_LOGIC;
  signal \ZOUT[6]_i_8_n_0\ : STD_LOGIC;
  signal \ZOUT[6]_i_9_n_0\ : STD_LOGIC;
  signal \ZOUT_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \ZOUT_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \ZOUT_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_11_n_1\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_11_n_2\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_11_n_3\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \ZOUT_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \ZOUT_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \ZOUT_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \ZOUT_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \ZOUT_reg[6]_i_1_n_3\ : STD_LOGIC;
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
  signal \NLW_XOUT_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_XOUT_reg[2]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_XOUT_reg[2]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_XOUT_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_YOUT_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_YOUT_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_YOUT_reg[3]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_YOUT_reg[3]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZOUT_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ZOUT_reg[2]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ZOUT_reg[2]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZOUT_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  attribute SOFT_HLUTNM of \B[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \B[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \B[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \B[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \B[4]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \B[5]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \B[6]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \B[7]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \G[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \G[1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \G[2]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \G[3]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \G[4]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \G[5]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \G[6]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \G[7]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \R[0]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \R[1]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \R[2]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \R[3]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \R[4]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \R[5]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \R[6]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \R[7]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \YOUT[19]_i_6\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \YOUT[3]_i_20\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \YOUT[3]_i_21\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \YOUT[3]_i_23\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \YOUT[3]_i_24\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \YOUT[3]_i_32\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \YOUT[3]_i_33\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \YOUT[7]_i_10\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \YOUT[7]_i_11\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \YOUT[7]_i_12\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \YOUT[7]_i_13\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \YOUT[7]_i_14\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \YOUT[7]_i_15\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \YOUT[7]_i_16\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \YOUT[7]_i_17\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \YOUT[7]_i_18\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \data_reg[20]_i_1__1\ : label is "soft_lutpair69";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/href_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 ";
  attribute SOFT_HLUTNM of href_r_reg_gate : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \href_reg_i_1__1\ : label is "soft_lutpair69";
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
  attribute SOFT_HLUTNM of vsync_r_reg_gate : label is "soft_lutpair85";
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
\XOUT[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cr_r10_n_88,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_88,
      O => \XOUT[19]_i_2_n_0\
    );
\XOUT[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_90,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_90,
      O => \XOUT[19]_i_3_n_0\
    );
\XOUT[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => img_Y_r10_n_88,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_88,
      O => \XOUT[19]_i_4_n_0\
    );
\XOUT[19]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cr_r10_n_88,
      I1 => img_Y_r10_n_88,
      I2 => img_Y_r10_n_89,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cr_r10_n_89,
      O => \XOUT[19]_i_5_n_0\
    );
\XOUT[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_90,
      I1 => img_Cr_r10_n_90,
      I2 => img_Cr_r10_n_89,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_89,
      O => \XOUT[19]_i_6_n_0\
    );
\XOUT[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_98,
      I1 => img_Cr_r10_n_98,
      I2 => img_Cr_r10_n_97,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_97,
      O => \XOUT[2]_i_10_n_0\
    );
\XOUT[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_99,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_99,
      O => \XOUT[2]_i_12_n_0\
    );
\XOUT[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_100,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_100,
      O => \XOUT[2]_i_13_n_0\
    );
\XOUT[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cr_r10_n_100,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_100,
      O => \XOUT[2]_i_14_n_0\
    );
\XOUT[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_102,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_102,
      O => \XOUT[2]_i_15_n_0\
    );
\XOUT[2]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_99,
      I1 => img_Cr_r10_n_99,
      I2 => img_Cr_r10_n_98,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_98,
      O => \XOUT[2]_i_16_n_0\
    );
\XOUT[2]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cr_r10_n_100,
      I1 => img_Y_r10_n_100,
      I2 => img_Cr_r10_n_99,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_99,
      O => \XOUT[2]_i_17_n_0\
    );
\XOUT[2]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cr_r10_n_100,
      I1 => img_Y_r10_n_100,
      I2 => img_Y_r10_n_101,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cr_r10_n_101,
      O => \XOUT[2]_i_18_n_0\
    );
\XOUT[2]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cr_r10_n_102,
      I1 => img_Y_r10_n_102,
      I2 => img_Cr_r10_n_101,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_101,
      O => \XOUT[2]_i_19_n_0\
    );
\XOUT[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Cr_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Cr_r1(2)
    );
\XOUT[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => \XOUT[2]_i_21_n_0\
    );
\XOUT[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_104,
      I1 => \ZOUT_reg[19]_0\,
      O => \XOUT[2]_i_22_n_0\
    );
\XOUT[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_105,
      I1 => \ZOUT_reg[19]_0\,
      O => \XOUT[2]_i_23_n_0\
    );
\XOUT[2]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F9F"
    )
        port map (
      I0 => img_Cr_r10_n_102,
      I1 => img_Y_r10_n_102,
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Cr_r10_n_103,
      O => \XOUT[2]_i_24_n_0\
    );
\XOUT[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cr_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_103,
      O => \XOUT[2]_i_25_n_0\
    );
\XOUT[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => img_Y_r10_n_104,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_104,
      O => \XOUT[2]_i_26_n_0\
    );
\XOUT[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => img_Y_r10_n_105,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_105,
      O => \XOUT[2]_i_27_n_0\
    );
\XOUT[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_95,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_95,
      O => \XOUT[2]_i_3_n_0\
    );
\XOUT[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_96,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_96,
      O => \XOUT[2]_i_4_n_0\
    );
\XOUT[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cr_r10_n_96,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_96,
      O => \XOUT[2]_i_5_n_0\
    );
\XOUT[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_98,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_98,
      O => \XOUT[2]_i_6_n_0\
    );
\XOUT[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_95,
      I1 => img_Cr_r10_n_95,
      I2 => img_Cr_r10_n_94,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_94,
      O => \XOUT[2]_i_7_n_0\
    );
\XOUT[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cr_r10_n_96,
      I1 => img_Y_r10_n_96,
      I2 => img_Cr_r10_n_95,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_95,
      O => \XOUT[2]_i_8_n_0\
    );
\XOUT[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cr_r10_n_96,
      I1 => img_Y_r10_n_96,
      I2 => img_Y_r10_n_97,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cr_r10_n_97,
      O => \XOUT[2]_i_9_n_0\
    );
\XOUT[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_91,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cr_r10_n_91,
      O => \XOUT[6]_i_2_n_0\
    );
\XOUT[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cr_r10_n_91,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_91,
      O => \XOUT[6]_i_3_n_0\
    );
\XOUT[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_93,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_93,
      O => \XOUT[6]_i_4_n_0\
    );
\XOUT[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cr_r10_n_94,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_94,
      O => \XOUT[6]_i_5_n_0\
    );
\XOUT[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cr_r10_n_91,
      I1 => img_Y_r10_n_91,
      I2 => img_Cr_r10_n_90,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_90,
      O => \XOUT[6]_i_6_n_0\
    );
\XOUT[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cr_r10_n_91,
      I1 => img_Y_r10_n_91,
      I2 => img_Y_r10_n_92,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cr_r10_n_92,
      O => \XOUT[6]_i_7_n_0\
    );
\XOUT[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_93,
      I1 => img_Cr_r10_n_93,
      I2 => img_Cr_r10_n_92,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_92,
      O => \XOUT[6]_i_8_n_0\
    );
\XOUT[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_94,
      I1 => img_Cr_r10_n_94,
      I2 => img_Cr_r10_n_93,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_93,
      O => \XOUT[6]_i_9_n_0\
    );
\XOUT_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT_reg[2]_i_1_n_6\,
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
\XOUT_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \XOUT_reg[6]_i_1_n_0\,
      CO(3) => \NLW_XOUT_reg[19]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \XOUT_reg[19]_i_1_n_1\,
      CO(1) => \XOUT_reg[19]_i_1_n_2\,
      CO(0) => \XOUT_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"01",
      DI(1) => \XOUT[19]_i_2_n_0\,
      DI(0) => \XOUT[19]_i_3_n_0\,
      O(3) => p_0_in0,
      O(2) => \XOUT_reg[19]_i_1_n_5\,
      O(1) => \XOUT_reg[19]_i_1_n_6\,
      O(0) => \XOUT_reg[19]_i_1_n_7\,
      S(3) => '1',
      S(2) => \XOUT[19]_i_4_n_0\,
      S(1) => \XOUT[19]_i_5_n_0\,
      S(0) => \XOUT[19]_i_6_n_0\
    );
\XOUT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT_reg[2]_i_1_n_5\,
      Q => \XOUT_reg_n_0_[1]\
    );
\XOUT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT_reg[2]_i_1_n_4\,
      Q => \XOUT_reg_n_0_[2]\
    );
\XOUT_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \XOUT_reg[2]_i_2_n_0\,
      CO(3) => \XOUT_reg[2]_i_1_n_0\,
      CO(2) => \XOUT_reg[2]_i_1_n_1\,
      CO(1) => \XOUT_reg[2]_i_1_n_2\,
      CO(0) => \XOUT_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \XOUT[2]_i_3_n_0\,
      DI(2) => \XOUT[2]_i_4_n_0\,
      DI(1) => \XOUT[2]_i_5_n_0\,
      DI(0) => \XOUT[2]_i_6_n_0\,
      O(3) => \XOUT_reg[2]_i_1_n_4\,
      O(2) => \XOUT_reg[2]_i_1_n_5\,
      O(1) => \XOUT_reg[2]_i_1_n_6\,
      O(0) => \NLW_XOUT_reg[2]_i_1_O_UNCONNECTED\(0),
      S(3) => \XOUT[2]_i_7_n_0\,
      S(2) => \XOUT[2]_i_8_n_0\,
      S(1) => \XOUT[2]_i_9_n_0\,
      S(0) => \XOUT[2]_i_10_n_0\
    );
\XOUT_reg[2]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \XOUT_reg[2]_i_11_n_0\,
      CO(2) => \XOUT_reg[2]_i_11_n_1\,
      CO(1) => \XOUT_reg[2]_i_11_n_2\,
      CO(0) => \XOUT_reg[2]_i_11_n_3\,
      CYINIT => '1',
      DI(3) => img_Cr_r1(2),
      DI(2) => \XOUT[2]_i_21_n_0\,
      DI(1) => \XOUT[2]_i_22_n_0\,
      DI(0) => \XOUT[2]_i_23_n_0\,
      O(3 downto 0) => \NLW_XOUT_reg[2]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \XOUT[2]_i_24_n_0\,
      S(2) => \XOUT[2]_i_25_n_0\,
      S(1) => \XOUT[2]_i_26_n_0\,
      S(0) => \XOUT[2]_i_27_n_0\
    );
\XOUT_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \XOUT_reg[2]_i_11_n_0\,
      CO(3) => \XOUT_reg[2]_i_2_n_0\,
      CO(2) => \XOUT_reg[2]_i_2_n_1\,
      CO(1) => \XOUT_reg[2]_i_2_n_2\,
      CO(0) => \XOUT_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \XOUT[2]_i_12_n_0\,
      DI(2) => \XOUT[2]_i_13_n_0\,
      DI(1) => \XOUT[2]_i_14_n_0\,
      DI(0) => \XOUT[2]_i_15_n_0\,
      O(3 downto 0) => \NLW_XOUT_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \XOUT[2]_i_16_n_0\,
      S(2) => \XOUT[2]_i_17_n_0\,
      S(1) => \XOUT[2]_i_18_n_0\,
      S(0) => \XOUT[2]_i_19_n_0\
    );
\XOUT_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT_reg[6]_i_1_n_7\,
      Q => \XOUT_reg_n_0_[3]\
    );
\XOUT_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT_reg[6]_i_1_n_6\,
      Q => \XOUT_reg_n_0_[4]\
    );
\XOUT_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT_reg[6]_i_1_n_5\,
      Q => \XOUT_reg_n_0_[5]\
    );
\XOUT_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT_reg[6]_i_1_n_4\,
      Q => \XOUT_reg_n_0_[6]\
    );
\XOUT_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \XOUT_reg[2]_i_1_n_0\,
      CO(3) => \XOUT_reg[6]_i_1_n_0\,
      CO(2) => \XOUT_reg[6]_i_1_n_1\,
      CO(1) => \XOUT_reg[6]_i_1_n_2\,
      CO(0) => \XOUT_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \XOUT[6]_i_2_n_0\,
      DI(2) => \XOUT[6]_i_3_n_0\,
      DI(1) => \XOUT[6]_i_4_n_0\,
      DI(0) => \XOUT[6]_i_5_n_0\,
      O(3) => \XOUT_reg[6]_i_1_n_4\,
      O(2) => \XOUT_reg[6]_i_1_n_5\,
      O(1) => \XOUT_reg[6]_i_1_n_6\,
      O(0) => \XOUT_reg[6]_i_1_n_7\,
      S(3) => \XOUT[6]_i_6_n_0\,
      S(2) => \XOUT[6]_i_7_n_0\,
      S(1) => \XOUT[6]_i_8_n_0\,
      S(0) => \XOUT[6]_i_9_n_0\
    );
\XOUT_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT_reg[19]_i_1_n_7\,
      Q => \XOUT_reg_n_0_[7]\
    );
\XOUT_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT_reg[19]_i_1_n_6\,
      Q => \XOUT_reg_n_0_[8]\
    );
\XOUT_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_module_reset_reg\,
      D => \XOUT_reg[19]_i_1_n_5\,
      Q => \XOUT_reg_n_0_[9]\
    );
\YOUT[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_88,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(17)
    );
\YOUT[19]_i_3\: unisim.vcomponents.LUT6
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
      O => \YOUT[19]_i_3_n_0\
    );
\YOUT[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_88,
      O => \YOUT[19]_i_4_n_0\
    );
\YOUT[19]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EF571F5"
    )
        port map (
      I0 => \YOUT[19]_i_6_n_0\,
      I1 => img_Y_r10_n_89,
      I2 => img_Cr_r2(16),
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_88,
      O => \YOUT[19]_i_5_n_0\
    );
\YOUT[19]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7111"
    )
        port map (
      I0 => img_Cb_r1(15),
      I1 => img_Cr_r2(15),
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_90,
      O => \YOUT[19]_i_6_n_0\
    );
\YOUT[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95AAAA95AA9595AA"
    )
        port map (
      I0 => \YOUT[3]_i_6_n_0\,
      I1 => img_Cr_r2(7),
      I2 => img_Cb_r1(7),
      I3 => img_Y_r1(8),
      I4 => img_Cb_r1(8),
      I5 => img_Cr_r2(8),
      O => \YOUT[3]_i_10_n_0\
    );
\YOUT[3]_i_12\: unisim.vcomponents.LUT6
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
      O => \YOUT[3]_i_12_n_0\
    );
\YOUT[3]_i_13\: unisim.vcomponents.LUT6
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
      O => \YOUT[3]_i_13_n_0\
    );
\YOUT[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F88F"
    )
        port map (
      I0 => img_Y_r10_n_100,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r1(5),
      I3 => img_Cr_r2(5),
      O => \YOUT[3]_i_14_n_0\
    );
\YOUT[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => img_Y_r10_n_101,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r1(4),
      O => \YOUT[3]_i_15_n_0\
    );
\YOUT[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996699669"
    )
        port map (
      I0 => \YOUT[3]_i_12_n_0\,
      I1 => img_Y_r1(8),
      I2 => img_Cb_r1(8),
      I3 => img_Cr_r2(8),
      I4 => img_Cr_r2(7),
      I5 => img_Cb_r1(7),
      O => \YOUT[3]_i_16_n_0\
    );
\YOUT[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \YOUT[3]_i_13_n_0\,
      I1 => img_Cb_r1(7),
      I2 => img_Cr_r2(7),
      I3 => img_Y_r1(7),
      I4 => img_Cr_r2(6),
      I5 => img_Cb_r1(6),
      O => \YOUT[3]_i_17_n_0\
    );
\YOUT[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \YOUT[3]_i_14_n_0\,
      I1 => img_Cb_r1(6),
      I2 => img_Cr_r2(6),
      I3 => img_Y_r1(6),
      I4 => img_Cr_r2(5),
      I5 => img_Cb_r1(5),
      O => \YOUT[3]_i_18_n_0\
    );
\YOUT[3]_i_19\: unisim.vcomponents.LUT6
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
      O => \YOUT[3]_i_19_n_0\
    );
\YOUT[3]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_96,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(9)
    );
\YOUT[3]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_97,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(8)
    );
\YOUT[3]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => img_Cr_r2(9),
      I1 => img_Cb_r1(9),
      O => \YOUT[3]_i_22_n_0\
    );
\YOUT[3]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_94,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(11)
    );
\YOUT[3]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_95,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(10)
    );
\YOUT[3]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => img_Y_r10_n_102,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r1(3),
      O => \YOUT[3]_i_25_n_0\
    );
\YOUT[3]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => \YOUT[3]_i_26_n_0\
    );
\YOUT[3]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_103,
      O => \YOUT[3]_i_27_n_0\
    );
\YOUT[3]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2AA2D55"
    )
        port map (
      I0 => img_Cb_r1(3),
      I1 => img_Y_r10_n_102,
      I2 => img_Y_r10_n_101,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r1(4),
      O => \YOUT[3]_i_28_n_0\
    );
\YOUT[3]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9C6C"
    )
        port map (
      I0 => img_Y_r10_n_102,
      I1 => img_Cb_r1(3),
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_103,
      O => \YOUT[3]_i_29_n_0\
    );
\YOUT[3]_i_3\: unisim.vcomponents.LUT6
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
      O => \YOUT[3]_i_3_n_0\
    );
\YOUT[3]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => \YOUT[3]_i_30_n_0\
    );
\YOUT[3]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_104,
      O => \YOUT[3]_i_31_n_0\
    );
\YOUT[3]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_98,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(7)
    );
\YOUT[3]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_99,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(6)
    );
\YOUT[3]_i_4\: unisim.vcomponents.LUT6
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
      O => \YOUT[3]_i_4_n_0\
    );
\YOUT[3]_i_5\: unisim.vcomponents.LUT6
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
      O => \YOUT[3]_i_5_n_0\
    );
\YOUT[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B03032BD4FCFC"
    )
        port map (
      I0 => img_Y_r10_n_97,
      I1 => img_Cr_r2(8),
      I2 => img_Cb_r1(8),
      I3 => img_Y_r10_n_96,
      I4 => \ZOUT_reg[19]_0\,
      I5 => \YOUT[3]_i_22_n_0\,
      O => \YOUT[3]_i_6_n_0\
    );
\YOUT[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996699669"
    )
        port map (
      I0 => \YOUT[3]_i_3_n_0\,
      I1 => img_Y_r1(12),
      I2 => img_Cb_r1(12),
      I3 => img_Cr_r2(12),
      I4 => img_Cr_r2(11),
      I5 => img_Cb_r1(11),
      O => \YOUT[3]_i_7_n_0\
    );
\YOUT[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \YOUT[3]_i_4_n_0\,
      I1 => img_Cb_r1(11),
      I2 => img_Cr_r2(11),
      I3 => img_Y_r1(11),
      I4 => img_Cr_r2(10),
      I5 => img_Cb_r1(10),
      O => \YOUT[3]_i_8_n_0\
    );
\YOUT[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \YOUT[3]_i_5_n_0\,
      I1 => img_Cb_r1(10),
      I2 => img_Cr_r2(10),
      I3 => img_Y_r1(10),
      I4 => img_Cr_r2(9),
      I5 => img_Cb_r1(9),
      O => \YOUT[3]_i_9_n_0\
    );
\YOUT[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_91,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(14)
    );
\YOUT[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_92,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(13)
    );
\YOUT[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_93,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(12)
    );
\YOUT[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_89,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(16)
    );
\YOUT[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7111"
    )
        port map (
      I0 => img_Cb_r1(14),
      I1 => img_Cr_r2(14),
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_91,
      O => \YOUT[7]_i_14_n_0\
    );
\YOUT[7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_90,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(15)
    );
\YOUT[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_90,
      I2 => img_Cb_r1(15),
      I3 => img_Cr_r2(15),
      O => \YOUT[7]_i_16_n_0\
    );
\YOUT[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_91,
      I2 => img_Cb_r1(14),
      I3 => img_Cr_r2(14),
      O => \YOUT[7]_i_17_n_0\
    );
\YOUT[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Y_r10_n_92,
      I2 => img_Cb_r1(13),
      I3 => img_Cr_r2(13),
      O => \YOUT[7]_i_18_n_0\
    );
\YOUT[7]_i_2\: unisim.vcomponents.LUT6
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
      O => \YOUT[7]_i_2_n_0\
    );
\YOUT[7]_i_3\: unisim.vcomponents.LUT6
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
      O => \YOUT[7]_i_3_n_0\
    );
\YOUT[7]_i_4\: unisim.vcomponents.LUT6
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
      O => \YOUT[7]_i_4_n_0\
    );
\YOUT[7]_i_5\: unisim.vcomponents.LUT6
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
      O => \YOUT[7]_i_5_n_0\
    );
\YOUT[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666966699666"
    )
        port map (
      I0 => img_Cr_r2(16),
      I1 => img_Y_r1(16),
      I2 => \YOUT[7]_i_14_n_0\,
      I3 => img_Y_r1(15),
      I4 => img_Cb_r1(15),
      I5 => img_Cr_r2(15),
      O => \YOUT[7]_i_6_n_0\
    );
\YOUT[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666966696669"
    )
        port map (
      I0 => \YOUT[7]_i_3_n_0\,
      I1 => \YOUT[7]_i_16_n_0\,
      I2 => img_Cb_r1(14),
      I3 => img_Cr_r2(14),
      I4 => \ZOUT_reg[19]_0\,
      I5 => img_Y_r10_n_91,
      O => \YOUT[7]_i_7_n_0\
    );
\YOUT[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666966696669"
    )
        port map (
      I0 => \YOUT[7]_i_4_n_0\,
      I1 => \YOUT[7]_i_17_n_0\,
      I2 => img_Cb_r1(13),
      I3 => img_Cr_r2(13),
      I4 => \ZOUT_reg[19]_0\,
      I5 => img_Y_r10_n_92,
      O => \YOUT[7]_i_8_n_0\
    );
\YOUT[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666966696669"
    )
        port map (
      I0 => \YOUT[7]_i_5_n_0\,
      I1 => \YOUT[7]_i_18_n_0\,
      I2 => img_Cb_r1(12),
      I3 => img_Cr_r2(12),
      I4 => \ZOUT_reg[19]_0\,
      I5 => img_Y_r10_n_93,
      O => \YOUT[7]_i_9_n_0\
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
\YOUT_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \YOUT_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_YOUT_reg[19]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \YOUT_reg[19]_i_1_n_2\,
      CO(0) => \YOUT_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => img_Y_r1(17),
      DI(0) => \YOUT[19]_i_3_n_0\,
      O(3) => \NLW_YOUT_reg[19]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => YOUT1(19 downto 17),
      S(3 downto 2) => B"01",
      S(1) => \YOUT[19]_i_4_n_0\,
      S(0) => \YOUT[19]_i_5_n_0\
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
\YOUT_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \YOUT_reg[3]_i_2_n_0\,
      CO(3) => \YOUT_reg[3]_i_1_n_0\,
      CO(2) => \YOUT_reg[3]_i_1_n_1\,
      CO(1) => \YOUT_reg[3]_i_1_n_2\,
      CO(0) => \YOUT_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \YOUT[3]_i_3_n_0\,
      DI(2) => \YOUT[3]_i_4_n_0\,
      DI(1) => \YOUT[3]_i_5_n_0\,
      DI(0) => \YOUT[3]_i_6_n_0\,
      O(3 downto 0) => YOUT1(12 downto 9),
      S(3) => \YOUT[3]_i_7_n_0\,
      S(2) => \YOUT[3]_i_8_n_0\,
      S(1) => \YOUT[3]_i_9_n_0\,
      S(0) => \YOUT[3]_i_10_n_0\
    );
\YOUT_reg[3]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \YOUT_reg[3]_i_11_n_0\,
      CO(2) => \YOUT_reg[3]_i_11_n_1\,
      CO(1) => \YOUT_reg[3]_i_11_n_2\,
      CO(0) => \YOUT_reg[3]_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \YOUT[3]_i_25_n_0\,
      DI(2) => \YOUT[3]_i_26_n_0\,
      DI(1) => \YOUT[3]_i_27_n_0\,
      DI(0) => '1',
      O(3 downto 0) => \NLW_YOUT_reg[3]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \YOUT[3]_i_28_n_0\,
      S(2) => \YOUT[3]_i_29_n_0\,
      S(1) => \YOUT[3]_i_30_n_0\,
      S(0) => \YOUT[3]_i_31_n_0\
    );
\YOUT_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \YOUT_reg[3]_i_11_n_0\,
      CO(3) => \YOUT_reg[3]_i_2_n_0\,
      CO(2) => \YOUT_reg[3]_i_2_n_1\,
      CO(1) => \YOUT_reg[3]_i_2_n_2\,
      CO(0) => \YOUT_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \YOUT[3]_i_12_n_0\,
      DI(2) => \YOUT[3]_i_13_n_0\,
      DI(1) => \YOUT[3]_i_14_n_0\,
      DI(0) => \YOUT[3]_i_15_n_0\,
      O(3 downto 0) => \NLW_YOUT_reg[3]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \YOUT[3]_i_16_n_0\,
      S(2) => \YOUT[3]_i_17_n_0\,
      S(1) => \YOUT[3]_i_18_n_0\,
      S(0) => \YOUT[3]_i_19_n_0\
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
\YOUT_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \YOUT_reg[3]_i_1_n_0\,
      CO(3) => \YOUT_reg[7]_i_1_n_0\,
      CO(2) => \YOUT_reg[7]_i_1_n_1\,
      CO(1) => \YOUT_reg[7]_i_1_n_2\,
      CO(0) => \YOUT_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \YOUT[7]_i_2_n_0\,
      DI(2) => \YOUT[7]_i_3_n_0\,
      DI(1) => \YOUT[7]_i_4_n_0\,
      DI(0) => \YOUT[7]_i_5_n_0\,
      O(3 downto 0) => YOUT1(16 downto 13),
      S(3) => \YOUT[7]_i_6_n_0\,
      S(2) => \YOUT[7]_i_7_n_0\,
      S(1) => \YOUT[7]_i_8_n_0\,
      S(0) => \YOUT[7]_i_9_n_0\
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
\ZOUT[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Cb_r20_n_87,
      O => \ZOUT[19]_i_2_n_0\
    );
\ZOUT[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_89,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_89,
      O => \ZOUT[19]_i_3_n_0\
    );
\ZOUT[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_90,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_90,
      O => \ZOUT[19]_i_4_n_0\
    );
\ZOUT[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ZOUT_reg[19]_0\,
      I1 => img_Cb_r20_n_87,
      O => \ZOUT[19]_i_5_n_0\
    );
\ZOUT[19]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F5F"
    )
        port map (
      I0 => img_Cb_r20_n_87,
      I1 => img_Y_r10_n_88,
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Cb_r20_n_88,
      O => \ZOUT[19]_i_6_n_0\
    );
\ZOUT[19]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cb_r20_n_89,
      I1 => img_Y_r10_n_89,
      I2 => img_Cb_r20_n_88,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_88,
      O => \ZOUT[19]_i_7_n_0\
    );
\ZOUT[19]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EFFE1FF"
    )
        port map (
      I0 => img_Cb_r20_n_90,
      I1 => img_Y_r10_n_90,
      I2 => img_Cb_r20_n_89,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_89,
      O => \ZOUT[19]_i_8_n_0\
    );
\ZOUT[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_98,
      I1 => img_Cb_r20_n_98,
      I2 => img_Cb_r20_n_97,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_97,
      O => \ZOUT[2]_i_10_n_0\
    );
\ZOUT[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cb_r20_n_99,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_99,
      O => \ZOUT[2]_i_12_n_0\
    );
\ZOUT[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_100,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_100,
      O => \ZOUT[2]_i_13_n_0\
    );
\ZOUT[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cb_r20_n_100,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_100,
      O => \ZOUT[2]_i_14_n_0\
    );
\ZOUT[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cb_r20_n_102,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_102,
      O => \ZOUT[2]_i_15_n_0\
    );
\ZOUT[2]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_99,
      I1 => img_Cb_r20_n_99,
      I2 => img_Cb_r20_n_98,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_98,
      O => \ZOUT[2]_i_16_n_0\
    );
\ZOUT[2]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cb_r20_n_100,
      I1 => img_Y_r10_n_100,
      I2 => img_Cb_r20_n_99,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_99,
      O => \ZOUT[2]_i_17_n_0\
    );
\ZOUT[2]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cb_r20_n_100,
      I1 => img_Y_r10_n_100,
      I2 => img_Y_r10_n_101,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r20_n_101,
      O => \ZOUT[2]_i_18_n_0\
    );
\ZOUT[2]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87007800"
    )
        port map (
      I0 => img_Y_r10_n_102,
      I1 => img_Cb_r20_n_102,
      I2 => img_Cb_r20_n_101,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_101,
      O => \ZOUT[2]_i_19_n_0\
    );
\ZOUT[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Cb_r20_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Cb_r2(2)
    );
\ZOUT[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_103,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(2)
    );
\ZOUT[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_104,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(1)
    );
\ZOUT[2]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => img_Y_r10_n_105,
      I1 => \ZOUT_reg[19]_0\,
      O => img_Y_r1(0)
    );
\ZOUT[2]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9060"
    )
        port map (
      I0 => img_Cb_r20_n_103,
      I1 => img_Cb_r20_n_102,
      I2 => \ZOUT_reg[19]_0\,
      I3 => img_Y_r10_n_102,
      O => \ZOUT[2]_i_24_n_0\
    );
\ZOUT[2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cb_r20_n_103,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_103,
      O => \ZOUT[2]_i_25_n_0\
    );
\ZOUT[2]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => img_Y_r10_n_104,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_104,
      O => \ZOUT[2]_i_26_n_0\
    );
\ZOUT[2]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => img_Y_r10_n_105,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_105,
      O => \ZOUT[2]_i_27_n_0\
    );
\ZOUT[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_95,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_95,
      O => \ZOUT[2]_i_3_n_0\
    );
\ZOUT[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_96,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_96,
      O => \ZOUT[2]_i_4_n_0\
    );
\ZOUT[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cb_r20_n_96,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_96,
      O => \ZOUT[2]_i_5_n_0\
    );
\ZOUT[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_Cb_r20_n_98,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_98,
      O => \ZOUT[2]_i_6_n_0\
    );
\ZOUT[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cb_r20_n_95,
      I1 => img_Y_r10_n_95,
      I2 => img_Cb_r20_n_94,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_94,
      O => \ZOUT[2]_i_7_n_0\
    );
\ZOUT[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EFFE1FF"
    )
        port map (
      I0 => img_Cb_r20_n_96,
      I1 => img_Y_r10_n_96,
      I2 => img_Cb_r20_n_95,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_95,
      O => \ZOUT[2]_i_8_n_0\
    );
\ZOUT[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cb_r20_n_96,
      I1 => img_Y_r10_n_96,
      I2 => img_Y_r10_n_97,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r20_n_97,
      O => \ZOUT[2]_i_9_n_0\
    );
\ZOUT[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_91,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_91,
      O => \ZOUT[6]_i_2_n_0\
    );
\ZOUT[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cb_r20_n_91,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_91,
      O => \ZOUT[6]_i_3_n_0\
    );
\ZOUT[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => img_Y_r10_n_93,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Cb_r20_n_93,
      O => \ZOUT[6]_i_4_n_0\
    );
\ZOUT[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => img_Cb_r20_n_93,
      I1 => \ZOUT_reg[19]_0\,
      I2 => img_Y_r10_n_93,
      O => \ZOUT[6]_i_5_n_0\
    );
\ZOUT[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EFFE1FF"
    )
        port map (
      I0 => img_Cb_r20_n_91,
      I1 => img_Y_r10_n_91,
      I2 => img_Cb_r20_n_90,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_90,
      O => \ZOUT[6]_i_6_n_0\
    );
\ZOUT[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cb_r20_n_91,
      I1 => img_Y_r10_n_91,
      I2 => img_Y_r10_n_92,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r20_n_92,
      O => \ZOUT[6]_i_7_n_0\
    );
\ZOUT[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1001E00"
    )
        port map (
      I0 => img_Cb_r20_n_93,
      I1 => img_Y_r10_n_93,
      I2 => img_Cb_r20_n_92,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Y_r10_n_92,
      O => \ZOUT[6]_i_8_n_0\
    );
\ZOUT[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF99FF"
    )
        port map (
      I0 => img_Cb_r20_n_93,
      I1 => img_Y_r10_n_93,
      I2 => img_Y_r10_n_94,
      I3 => \ZOUT_reg[19]_0\,
      I4 => img_Cb_r20_n_94,
      O => \ZOUT[6]_i_9_n_0\
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
\ZOUT_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ZOUT_reg[6]_i_1_n_0\,
      CO(3) => \NLW_ZOUT_reg[19]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ZOUT_reg[19]_i_1_n_1\,
      CO(1) => \ZOUT_reg[19]_i_1_n_2\,
      CO(0) => \ZOUT_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \ZOUT[19]_i_2_n_0\,
      DI(1) => \ZOUT[19]_i_3_n_0\,
      DI(0) => \ZOUT[19]_i_4_n_0\,
      O(3 downto 0) => ZOUT1(19 downto 16),
      S(3) => \ZOUT[19]_i_5_n_0\,
      S(2) => \ZOUT[19]_i_6_n_0\,
      S(1) => \ZOUT[19]_i_7_n_0\,
      S(0) => \ZOUT[19]_i_8_n_0\
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
\ZOUT_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ZOUT_reg[2]_i_2_n_0\,
      CO(3) => \ZOUT_reg[2]_i_1_n_0\,
      CO(2) => \ZOUT_reg[2]_i_1_n_1\,
      CO(1) => \ZOUT_reg[2]_i_1_n_2\,
      CO(0) => \ZOUT_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \ZOUT[2]_i_3_n_0\,
      DI(2) => \ZOUT[2]_i_4_n_0\,
      DI(1) => \ZOUT[2]_i_5_n_0\,
      DI(0) => \ZOUT[2]_i_6_n_0\,
      O(3 downto 1) => ZOUT1(11 downto 9),
      O(0) => \NLW_ZOUT_reg[2]_i_1_O_UNCONNECTED\(0),
      S(3) => \ZOUT[2]_i_7_n_0\,
      S(2) => \ZOUT[2]_i_8_n_0\,
      S(1) => \ZOUT[2]_i_9_n_0\,
      S(0) => \ZOUT[2]_i_10_n_0\
    );
\ZOUT_reg[2]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ZOUT_reg[2]_i_11_n_0\,
      CO(2) => \ZOUT_reg[2]_i_11_n_1\,
      CO(1) => \ZOUT_reg[2]_i_11_n_2\,
      CO(0) => \ZOUT_reg[2]_i_11_n_3\,
      CYINIT => '1',
      DI(3) => img_Cb_r2(2),
      DI(2 downto 0) => img_Y_r1(2 downto 0),
      O(3 downto 0) => \NLW_ZOUT_reg[2]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \ZOUT[2]_i_24_n_0\,
      S(2) => \ZOUT[2]_i_25_n_0\,
      S(1) => \ZOUT[2]_i_26_n_0\,
      S(0) => \ZOUT[2]_i_27_n_0\
    );
\ZOUT_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ZOUT_reg[2]_i_11_n_0\,
      CO(3) => \ZOUT_reg[2]_i_2_n_0\,
      CO(2) => \ZOUT_reg[2]_i_2_n_1\,
      CO(1) => \ZOUT_reg[2]_i_2_n_2\,
      CO(0) => \ZOUT_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \ZOUT[2]_i_12_n_0\,
      DI(2) => \ZOUT[2]_i_13_n_0\,
      DI(1) => \ZOUT[2]_i_14_n_0\,
      DI(0) => \ZOUT[2]_i_15_n_0\,
      O(3 downto 0) => \NLW_ZOUT_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ZOUT[2]_i_16_n_0\,
      S(2) => \ZOUT[2]_i_17_n_0\,
      S(1) => \ZOUT[2]_i_18_n_0\,
      S(0) => \ZOUT[2]_i_19_n_0\
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
\ZOUT_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ZOUT_reg[2]_i_1_n_0\,
      CO(3) => \ZOUT_reg[6]_i_1_n_0\,
      CO(2) => \ZOUT_reg[6]_i_1_n_1\,
      CO(1) => \ZOUT_reg[6]_i_1_n_2\,
      CO(0) => \ZOUT_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \ZOUT[6]_i_2_n_0\,
      DI(2) => \ZOUT[6]_i_3_n_0\,
      DI(1) => \ZOUT[6]_i_4_n_0\,
      DI(0) => \ZOUT[6]_i_5_n_0\,
      O(3 downto 0) => ZOUT1(15 downto 12),
      S(3) => \ZOUT[6]_i_6_n_0\,
      S(2) => \ZOUT[6]_i_7_n_0\,
      S(1) => \ZOUT[6]_i_8_n_0\,
      S(0) => \ZOUT[6]_i_9_n_0\
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
\data_reg[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(0),
      I2 => Q(0),
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
      I2 => Q(16),
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
      I2 => Q(17),
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
      I2 => Q(18),
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
      I2 => Q(19),
      I3 => s_yuv2rgb_en,
      O => D(19)
    );
\data_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(1),
      I2 => Q(1),
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
      I2 => Q(20),
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
      I2 => Q(21),
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
      I2 => Q(22),
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
      I2 => Q(23),
      I3 => s_yuv2rgb_en,
      O => D(23)
    );
\data_reg[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(2),
      I2 => Q(2),
      I3 => s_yuv2rgb_en,
      O => D(2)
    );
\data_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(3),
      I2 => Q(3),
      I3 => s_yuv2rgb_en,
      O => D(3)
    );
\data_reg[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(4),
      I2 => Q(4),
      I3 => s_yuv2rgb_en,
      O => D(4)
    );
\data_reg[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(5),
      I2 => Q(5),
      I3 => s_yuv2rgb_en,
      O => D(5)
    );
\data_reg[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(6),
      I2 => Q(6),
      I3 => s_yuv2rgb_en,
      O => D(6)
    );
\data_reg[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F0"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => B(7),
      I2 => Q(7),
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
      D => out_href,
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
\href_reg_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => yuv2rgb_href,
      I1 => s_yuv2rgb_en,
      I2 => out_href,
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
      D => out_vsync,
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
\vsync_reg_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => yuv2rgb_vsync,
      I1 => s_yuv2rgb_en,
      I2 => out_vsync,
      O => in_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_hist_ram is
  port (
    prev_flip_trigger_reg_0 : out STD_LOGIC;
    s_hist_equ_en_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    prev_flip_trigger_reg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pclk : in STD_LOGIC;
    out_vsync : in STD_LOGIC;
    hist_sum_done : in STD_LOGIC;
    hist_sum_done_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cur_ram02_out : in STD_LOGIC;
    \hist_addr_reg[5]\ : in STD_LOGIC;
    hist_equ_href : in STD_LOGIC;
    hist_sum_runn_0 : in STD_LOGIC;
    out_href : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 22 downto 0 );
    out_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_hist_equ_en : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_module_reset : in STD_LOGIC
  );
end design_1_xil_vip_0_0_hist_ram;

architecture STRUCTURE of design_1_xil_vip_0_0_hist_ram is
  signal \_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__4_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__4_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal \cur_clr_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \cur_clr_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \cur_clr_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \cur_clr_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \cur_clr_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \cur_clr_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \cur_clr_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \cur_clr_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \cur_clr_addr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cur_clr_done : STD_LOGIC;
  signal cur_clr_done_i_1_n_0 : STD_LOGIC;
  signal cur_clr_done_i_2_n_0 : STD_LOGIC;
  signal cur_data : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal cur_data_r : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal cur_ram : STD_LOGIC;
  signal cur_ram_i_1_n_0 : STD_LOGIC;
  signal cur_rdaddr_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cur_wraddr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cur_wraddr_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mem_reg_i_42_n_0 : STD_LOGIC;
  signal mem_reg_i_43_n_0 : STD_LOGIC;
  signal mem_reg_i_44_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \^prev_flip_trigger_reg_0\ : STD_LOGIC;
  signal ram0_n_23 : STD_LOGIC;
  signal ram0_n_24 : STD_LOGIC;
  signal ram0_n_25 : STD_LOGIC;
  signal ram0_n_26 : STD_LOGIC;
  signal ram0_n_27 : STD_LOGIC;
  signal ram0_n_28 : STD_LOGIC;
  signal ram0_n_29 : STD_LOGIC;
  signal ram0_n_30 : STD_LOGIC;
  signal ram0_n_31 : STD_LOGIC;
  signal ram0_n_32 : STD_LOGIC;
  signal ram0_n_33 : STD_LOGIC;
  signal ram0_n_34 : STD_LOGIC;
  signal ram0_n_35 : STD_LOGIC;
  signal ram0_n_36 : STD_LOGIC;
  signal ram0_n_37 : STD_LOGIC;
  signal ram0_n_38 : STD_LOGIC;
  signal ram0_n_39 : STD_LOGIC;
  signal ram0_n_40 : STD_LOGIC;
  signal ram0_n_41 : STD_LOGIC;
  signal ram0_n_42 : STD_LOGIC;
  signal ram0_n_43 : STD_LOGIC;
  signal ram0_n_44 : STD_LOGIC;
  signal ram0_n_45 : STD_LOGIC;
  signal ram0_q : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal ram1_n_23 : STD_LOGIC;
  signal ram1_q : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \^s_hist_equ_en_reg\ : STD_LOGIC;
  signal \NLW__inferred__1/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__1/i__carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cur_clr_addr[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cur_clr_addr[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cur_clr_addr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cur_clr_addr[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cur_clr_addr[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cur_clr_addr[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cur_data_r[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cur_data_r[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cur_data_r[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cur_data_r[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cur_data_r[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cur_data_r[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cur_data_r[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cur_data_r[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cur_data_r[18]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cur_data_r[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cur_data_r[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cur_data_r[20]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cur_data_r[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cur_data_r[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cur_data_r[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cur_data_r[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cur_data_r[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cur_data_r[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cur_data_r[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cur_data_r[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cur_data_r[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cur_data_r[9]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of cur_ram_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cur_wraddr_r[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cur_wraddr_r[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cur_wraddr_r[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cur_wraddr_r[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cur_wraddr_r[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cur_wraddr_r[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cur_wraddr_r[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cur_wraddr_r[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \hist_addr[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hist_addr[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hist_addr[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hist_addr[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hist_addr[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hist_addr[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hist_addr[7]_i_2\ : label is "soft_lutpair2";
begin
  prev_flip_trigger_reg_0 <= \^prev_flip_trigger_reg_0\;
  s_hist_equ_en_reg <= \^s_hist_equ_en_reg\;
\_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__1/i__carry_n_0\,
      CO(2) => \_inferred__1/i__carry_n_1\,
      CO(1) => \_inferred__1/i__carry_n_2\,
      CO(0) => \_inferred__1/i__carry_n_3\,
      CYINIT => \p_0_in__1\(0),
      DI(3 downto 0) => B"0000",
      O(3) => \_inferred__1/i__carry_n_4\,
      O(2) => \_inferred__1/i__carry_n_5\,
      O(1) => \_inferred__1/i__carry_n_6\,
      O(0) => \_inferred__1/i__carry_n_7\,
      S(3 downto 0) => \p_0_in__1\(4 downto 1)
    );
\_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry_n_0\,
      CO(3) => \_inferred__1/i__carry__0_n_0\,
      CO(2) => \_inferred__1/i__carry__0_n_1\,
      CO(1) => \_inferred__1/i__carry__0_n_2\,
      CO(0) => \_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_inferred__1/i__carry__0_n_4\,
      O(2) => \_inferred__1/i__carry__0_n_5\,
      O(1) => \_inferred__1/i__carry__0_n_6\,
      O(0) => \_inferred__1/i__carry__0_n_7\,
      S(3 downto 0) => \p_0_in__1\(8 downto 5)
    );
\_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__0_n_0\,
      CO(3) => \_inferred__1/i__carry__1_n_0\,
      CO(2) => \_inferred__1/i__carry__1_n_1\,
      CO(1) => \_inferred__1/i__carry__1_n_2\,
      CO(0) => \_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_inferred__1/i__carry__1_n_4\,
      O(2) => \_inferred__1/i__carry__1_n_5\,
      O(1) => \_inferred__1/i__carry__1_n_6\,
      O(0) => \_inferred__1/i__carry__1_n_7\,
      S(3 downto 0) => \p_0_in__1\(12 downto 9)
    );
\_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__1_n_0\,
      CO(3) => \_inferred__1/i__carry__2_n_0\,
      CO(2) => \_inferred__1/i__carry__2_n_1\,
      CO(1) => \_inferred__1/i__carry__2_n_2\,
      CO(0) => \_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_inferred__1/i__carry__2_n_4\,
      O(2) => \_inferred__1/i__carry__2_n_5\,
      O(1) => \_inferred__1/i__carry__2_n_6\,
      O(0) => \_inferred__1/i__carry__2_n_7\,
      S(3 downto 0) => \p_0_in__1\(16 downto 13)
    );
\_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__2_n_0\,
      CO(3) => \_inferred__1/i__carry__3_n_0\,
      CO(2) => \_inferred__1/i__carry__3_n_1\,
      CO(1) => \_inferred__1/i__carry__3_n_2\,
      CO(0) => \_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_inferred__1/i__carry__3_n_4\,
      O(2) => \_inferred__1/i__carry__3_n_5\,
      O(1) => \_inferred__1/i__carry__3_n_6\,
      O(0) => \_inferred__1/i__carry__3_n_7\,
      S(3 downto 0) => \p_0_in__1\(20 downto 17)
    );
\_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__3_n_0\,
      CO(3 downto 1) => \NLW__inferred__1/i__carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW__inferred__1/i__carry__4_O_UNCONNECTED\(3 downto 2),
      O(1) => \_inferred__1/i__carry__4_n_6\,
      O(0) => \_inferred__1/i__carry__4_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \p_0_in__1\(22 downto 21)
    );
\cur_clr_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \cur_clr_addr_reg__0\(0),
      I1 => \^prev_flip_trigger_reg_0\,
      I2 => out_vsync,
      O => p_0_in(0)
    );
\cur_clr_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6066"
    )
        port map (
      I0 => \cur_clr_addr_reg__0\(1),
      I1 => \cur_clr_addr_reg__0\(0),
      I2 => \^prev_flip_trigger_reg_0\,
      I3 => out_vsync,
      O => p_0_in(1)
    );
\cur_clr_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BBBB000"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => \cur_clr_addr_reg__0\(0),
      I3 => \cur_clr_addr_reg__0\(1),
      I4 => \cur_clr_addr_reg__0\(2),
      O => \cur_clr_addr[2]_i_1_n_0\
    );
\cur_clr_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BBBBBBBB0000000"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => \cur_clr_addr_reg__0\(1),
      I3 => \cur_clr_addr_reg__0\(0),
      I4 => \cur_clr_addr_reg__0\(2),
      I5 => \cur_clr_addr_reg__0\(3),
      O => \cur_clr_addr[3]_i_1_n_0\
    );
\cur_clr_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => cur_ram02_out,
      I1 => \cur_clr_addr_reg__0\(2),
      I2 => \cur_clr_addr_reg__0\(0),
      I3 => \cur_clr_addr_reg__0\(1),
      I4 => \cur_clr_addr_reg__0\(3),
      I5 => \cur_clr_addr_reg__0\(4),
      O => \cur_clr_addr[4]_i_1_n_0\
    );
\cur_clr_addr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B00B"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => \cur_clr_addr[5]_i_2_n_0\,
      I3 => \cur_clr_addr_reg__0\(5),
      O => \cur_clr_addr[5]_i_1_n_0\
    );
\cur_clr_addr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \cur_clr_addr_reg__0\(3),
      I1 => \cur_clr_addr_reg__0\(1),
      I2 => \cur_clr_addr_reg__0\(0),
      I3 => \cur_clr_addr_reg__0\(2),
      I4 => \cur_clr_addr_reg__0\(4),
      O => \cur_clr_addr[5]_i_2_n_0\
    );
\cur_clr_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B00B"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => cur_clr_done_i_2_n_0,
      I3 => \cur_clr_addr_reg__0\(6),
      O => \cur_clr_addr[6]_i_1_n_0\
    );
\cur_clr_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => cur_clr_done,
      O => \cur_clr_addr[7]_i_1_n_0\
    );
\cur_clr_addr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB0B00B0"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => \cur_clr_addr_reg__0\(6),
      I3 => cur_clr_done_i_2_n_0,
      I4 => \cur_clr_addr_reg__0\(7),
      O => \cur_clr_addr[7]_i_2_n_0\
    );
\cur_clr_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \cur_clr_addr[7]_i_1_n_0\,
      CLR => \^s_hist_equ_en_reg\,
      D => p_0_in(0),
      Q => \cur_clr_addr_reg__0\(0)
    );
\cur_clr_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \cur_clr_addr[7]_i_1_n_0\,
      CLR => \^s_hist_equ_en_reg\,
      D => p_0_in(1),
      Q => \cur_clr_addr_reg__0\(1)
    );
\cur_clr_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \cur_clr_addr[7]_i_1_n_0\,
      CLR => \^s_hist_equ_en_reg\,
      D => \cur_clr_addr[2]_i_1_n_0\,
      Q => \cur_clr_addr_reg__0\(2)
    );
\cur_clr_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \cur_clr_addr[7]_i_1_n_0\,
      CLR => \^s_hist_equ_en_reg\,
      D => \cur_clr_addr[3]_i_1_n_0\,
      Q => \cur_clr_addr_reg__0\(3)
    );
\cur_clr_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \cur_clr_addr[7]_i_1_n_0\,
      CLR => \^s_hist_equ_en_reg\,
      D => \cur_clr_addr[4]_i_1_n_0\,
      Q => \cur_clr_addr_reg__0\(4)
    );
\cur_clr_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \cur_clr_addr[7]_i_1_n_0\,
      CLR => \^s_hist_equ_en_reg\,
      D => \cur_clr_addr[5]_i_1_n_0\,
      Q => \cur_clr_addr_reg__0\(5)
    );
\cur_clr_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \cur_clr_addr[7]_i_1_n_0\,
      CLR => \^s_hist_equ_en_reg\,
      D => \cur_clr_addr[6]_i_1_n_0\,
      Q => \cur_clr_addr_reg__0\(6)
    );
\cur_clr_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => \cur_clr_addr[7]_i_1_n_0\,
      CLR => \^s_hist_equ_en_reg\,
      D => \cur_clr_addr[7]_i_2_n_0\,
      Q => \cur_clr_addr_reg__0\(7)
    );
cur_clr_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB0B000000"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => cur_clr_done_i_2_n_0,
      I3 => \cur_clr_addr_reg__0\(6),
      I4 => \cur_clr_addr_reg__0\(7),
      I5 => cur_clr_done,
      O => cur_clr_done_i_1_n_0
    );
cur_clr_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cur_clr_addr_reg__0\(4),
      I1 => \cur_clr_addr_reg__0\(2),
      I2 => \cur_clr_addr_reg__0\(0),
      I3 => \cur_clr_addr_reg__0\(1),
      I4 => \cur_clr_addr_reg__0\(3),
      I5 => \cur_clr_addr_reg__0\(5),
      O => cur_clr_done_i_2_n_0
    );
cur_clr_done_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => cur_clr_done_i_1_n_0,
      Q => cur_clr_done
    );
\cur_data_r[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__1_n_6\,
      O => cur_data(10)
    );
\cur_data_r[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__1_n_5\,
      O => cur_data(11)
    );
\cur_data_r[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__1_n_4\,
      O => cur_data(12)
    );
\cur_data_r[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__2_n_7\,
      O => cur_data(13)
    );
\cur_data_r[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__2_n_6\,
      O => cur_data(14)
    );
\cur_data_r[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__2_n_5\,
      O => cur_data(15)
    );
\cur_data_r[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__2_n_4\,
      O => cur_data(16)
    );
\cur_data_r[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__3_n_7\,
      O => cur_data(17)
    );
\cur_data_r[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__3_n_6\,
      O => cur_data(18)
    );
\cur_data_r[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__3_n_5\,
      O => cur_data(19)
    );
\cur_data_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry_n_7\,
      O => cur_data(1)
    );
\cur_data_r[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__3_n_4\,
      O => cur_data(20)
    );
\cur_data_r[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__4_n_7\,
      O => cur_data(21)
    );
\cur_data_r[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__4_n_6\,
      O => cur_data(22)
    );
\cur_data_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry_n_6\,
      O => cur_data(2)
    );
\cur_data_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry_n_5\,
      O => cur_data(3)
    );
\cur_data_r[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry_n_4\,
      O => cur_data(4)
    );
\cur_data_r[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__0_n_7\,
      O => cur_data(5)
    );
\cur_data_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__0_n_6\,
      O => cur_data(6)
    );
\cur_data_r[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__0_n_5\,
      O => cur_data(7)
    );
\cur_data_r[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__0_n_4\,
      O => cur_data(8)
    );
\cur_data_r[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_clr_done,
      I1 => \_inferred__1/i__carry__1_n_7\,
      O => cur_data(9)
    );
\cur_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => ram1_n_23,
      Q => cur_data_r(0),
      R => '0'
    );
\cur_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(10),
      Q => cur_data_r(10),
      R => '0'
    );
\cur_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(11),
      Q => cur_data_r(11),
      R => '0'
    );
\cur_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(12),
      Q => cur_data_r(12),
      R => '0'
    );
\cur_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(13),
      Q => cur_data_r(13),
      R => '0'
    );
\cur_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(14),
      Q => cur_data_r(14),
      R => '0'
    );
\cur_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(15),
      Q => cur_data_r(15),
      R => '0'
    );
\cur_data_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(16),
      Q => cur_data_r(16),
      R => '0'
    );
\cur_data_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(17),
      Q => cur_data_r(17),
      R => '0'
    );
\cur_data_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(18),
      Q => cur_data_r(18),
      R => '0'
    );
\cur_data_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(19),
      Q => cur_data_r(19),
      R => '0'
    );
\cur_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(1),
      Q => cur_data_r(1),
      R => '0'
    );
\cur_data_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(20),
      Q => cur_data_r(20),
      R => '0'
    );
\cur_data_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(21),
      Q => cur_data_r(21),
      R => '0'
    );
\cur_data_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(22),
      Q => cur_data_r(22),
      R => '0'
    );
\cur_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(2),
      Q => cur_data_r(2),
      R => '0'
    );
\cur_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(3),
      Q => cur_data_r(3),
      R => '0'
    );
\cur_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(4),
      Q => cur_data_r(4),
      R => '0'
    );
\cur_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(5),
      Q => cur_data_r(5),
      R => '0'
    );
\cur_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(6),
      Q => cur_data_r(6),
      R => '0'
    );
\cur_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(7),
      Q => cur_data_r(7),
      R => '0'
    );
\cur_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(8),
      Q => cur_data_r(8),
      R => '0'
    );
\cur_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_data(9),
      Q => cur_data_r(9),
      R => '0'
    );
cur_ram_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => cur_ram,
      O => cur_ram_i_1_n_0
    );
cur_ram_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => cur_ram_i_1_n_0,
      Q => cur_ram
    );
\cur_rdaddr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => out_data(0),
      Q => cur_rdaddr_r(0),
      R => '0'
    );
\cur_rdaddr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => out_data(1),
      Q => cur_rdaddr_r(1),
      R => '0'
    );
\cur_rdaddr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => out_data(2),
      Q => cur_rdaddr_r(2),
      R => '0'
    );
\cur_rdaddr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => out_data(3),
      Q => cur_rdaddr_r(3),
      R => '0'
    );
\cur_rdaddr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => out_data(4),
      Q => cur_rdaddr_r(4),
      R => '0'
    );
\cur_rdaddr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => out_data(5),
      Q => cur_rdaddr_r(5),
      R => '0'
    );
\cur_rdaddr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => out_data(6),
      Q => cur_rdaddr_r(6),
      R => '0'
    );
\cur_rdaddr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => out_data(7),
      Q => cur_rdaddr_r(7),
      R => '0'
    );
\cur_wraddr_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cur_rdaddr_r(0),
      I1 => cur_clr_done,
      I2 => \cur_clr_addr_reg__0\(0),
      O => cur_wraddr(0)
    );
\cur_wraddr_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cur_rdaddr_r(1),
      I1 => cur_clr_done,
      I2 => \cur_clr_addr_reg__0\(1),
      O => cur_wraddr(1)
    );
\cur_wraddr_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cur_rdaddr_r(2),
      I1 => cur_clr_done,
      I2 => \cur_clr_addr_reg__0\(2),
      O => cur_wraddr(2)
    );
\cur_wraddr_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cur_rdaddr_r(3),
      I1 => cur_clr_done,
      I2 => \cur_clr_addr_reg__0\(3),
      O => cur_wraddr(3)
    );
\cur_wraddr_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cur_rdaddr_r(4),
      I1 => cur_clr_done,
      I2 => \cur_clr_addr_reg__0\(4),
      O => cur_wraddr(4)
    );
\cur_wraddr_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cur_rdaddr_r(5),
      I1 => cur_clr_done,
      I2 => \cur_clr_addr_reg__0\(5),
      O => cur_wraddr(5)
    );
\cur_wraddr_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cur_rdaddr_r(6),
      I1 => cur_clr_done,
      I2 => \cur_clr_addr_reg__0\(6),
      O => cur_wraddr(6)
    );
\cur_wraddr_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cur_rdaddr_r(7),
      I1 => cur_clr_done,
      I2 => \cur_clr_addr_reg__0\(7),
      O => cur_wraddr(7)
    );
\cur_wraddr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_wraddr(0),
      Q => cur_wraddr_r(0),
      R => '0'
    );
\cur_wraddr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_wraddr(1),
      Q => cur_wraddr_r(1),
      R => '0'
    );
\cur_wraddr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_wraddr(2),
      Q => cur_wraddr_r(2),
      R => '0'
    );
\cur_wraddr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_wraddr(3),
      Q => cur_wraddr_r(3),
      R => '0'
    );
\cur_wraddr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_wraddr(4),
      Q => cur_wraddr_r(4),
      R => '0'
    );
\cur_wraddr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_wraddr(5),
      Q => cur_wraddr_r(5),
      R => '0'
    );
\cur_wraddr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_wraddr(6),
      Q => cur_wraddr_r(6),
      R => '0'
    );
\cur_wraddr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => cur_wraddr(7),
      Q => cur_wraddr_r(7),
      R => '0'
    );
\hist_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => Q(0),
      I1 => \^prev_flip_trigger_reg_0\,
      I2 => out_vsync,
      O => D(0)
    );
\hist_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6066"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^prev_flip_trigger_reg_0\,
      I3 => out_vsync,
      O => D(1)
    );
\hist_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BBBB000"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => D(2)
    );
\hist_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BBBBBBBB0000000"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => D(3)
    );
\hist_addr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B00B"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => \hist_addr_reg[5]\,
      I3 => Q(5),
      O => D(4)
    );
\hist_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B00B"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => hist_sum_done_reg,
      I3 => Q(6),
      O => D(5)
    );
\hist_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => hist_sum_done,
      O => E(0)
    );
\hist_addr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB0B00B0"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => Q(6),
      I3 => hist_sum_done_reg,
      I4 => Q(7),
      O => D(6)
    );
hist_sum_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB0B000000"
    )
        port map (
      I0 => \^prev_flip_trigger_reg_0\,
      I1 => out_vsync,
      I2 => hist_sum_done_reg,
      I3 => Q(6),
      I4 => Q(7),
      I5 => hist_sum_done,
      O => prev_flip_trigger_reg_1
    );
mem_reg_i_42: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => cur_wraddr_r(7),
      I1 => cur_wraddr(7),
      I2 => cur_wraddr_r(6),
      I3 => cur_wraddr(6),
      I4 => mem_reg_i_43_n_0,
      I5 => mem_reg_i_44_n_0,
      O => mem_reg_i_42_n_0
    );
mem_reg_i_43: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => cur_wraddr(0),
      I1 => cur_wraddr_r(0),
      I2 => cur_wraddr_r(2),
      I3 => cur_wraddr(2),
      I4 => cur_wraddr_r(1),
      I5 => cur_wraddr(1),
      O => mem_reg_i_43_n_0
    );
mem_reg_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => cur_wraddr(3),
      I1 => cur_wraddr_r(3),
      I2 => cur_wraddr_r(4),
      I3 => cur_wraddr(4),
      I4 => cur_wraddr_r(5),
      I5 => cur_wraddr(5),
      O => mem_reg_i_44_n_0
    );
prev_flip_trigger_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => s_hist_equ_en,
      I1 => rst_n,
      I2 => s_module_reset,
      O => \^s_hist_equ_en_reg\
    );
prev_flip_trigger_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => out_vsync,
      Q => \^prev_flip_trigger_reg_0\
    );
ram0: entity work.design_1_xil_vip_0_0_simple_dp_ram
     port map (
      A(22 downto 0) => A(22 downto 0),
      O(1) => \_inferred__1/i__carry__4_n_6\,
      O(0) => \_inferred__1/i__carry__4_n_7\,
      Q(0) => cur_data_r(0),
      S(2) => ram0_n_23,
      S(1) => ram0_n_24,
      S(0) => ram0_n_25,
      cur_clr_done => cur_clr_done,
      cur_ram => cur_ram,
      hist_equ_href => hist_equ_href,
      hist_sum_done => hist_sum_done,
      hist_sum_runn_0 => hist_sum_runn_0,
      mem_reg_0(3) => ram0_n_26,
      mem_reg_0(2) => ram0_n_27,
      mem_reg_0(1) => ram0_n_28,
      mem_reg_0(0) => ram0_n_29,
      mem_reg_1(3) => ram0_n_30,
      mem_reg_1(2) => ram0_n_31,
      mem_reg_1(1) => ram0_n_32,
      mem_reg_1(0) => ram0_n_33,
      mem_reg_10(3) => \_inferred__1/i__carry__1_n_4\,
      mem_reg_10(2) => \_inferred__1/i__carry__1_n_5\,
      mem_reg_10(1) => \_inferred__1/i__carry__1_n_6\,
      mem_reg_10(0) => \_inferred__1/i__carry__1_n_7\,
      mem_reg_11(3) => \_inferred__1/i__carry__0_n_4\,
      mem_reg_11(2) => \_inferred__1/i__carry__0_n_5\,
      mem_reg_11(1) => \_inferred__1/i__carry__0_n_6\,
      mem_reg_11(0) => \_inferred__1/i__carry__0_n_7\,
      mem_reg_12(3) => \_inferred__1/i__carry_n_4\,
      mem_reg_12(2) => \_inferred__1/i__carry_n_5\,
      mem_reg_12(1) => \_inferred__1/i__carry_n_6\,
      mem_reg_12(0) => \_inferred__1/i__carry_n_7\,
      mem_reg_13(7 downto 0) => Q(7 downto 0),
      mem_reg_2(3) => ram0_n_34,
      mem_reg_2(2) => ram0_n_35,
      mem_reg_2(1) => ram0_n_36,
      mem_reg_2(0) => ram0_n_37,
      mem_reg_3(3) => ram0_n_38,
      mem_reg_3(2) => ram0_n_39,
      mem_reg_3(1) => ram0_n_40,
      mem_reg_3(0) => ram0_n_41,
      mem_reg_4(3) => ram0_n_42,
      mem_reg_4(2) => ram0_n_43,
      mem_reg_4(1) => ram0_n_44,
      mem_reg_4(0) => ram0_n_45,
      mem_reg_5 => mem_reg_i_42_n_0,
      mem_reg_6(7 downto 0) => \cur_clr_addr_reg__0\(7 downto 0),
      mem_reg_7(7 downto 0) => cur_rdaddr_r(7 downto 0),
      mem_reg_8(3) => \_inferred__1/i__carry__3_n_4\,
      mem_reg_8(2) => \_inferred__1/i__carry__3_n_5\,
      mem_reg_8(1) => \_inferred__1/i__carry__3_n_6\,
      mem_reg_8(0) => \_inferred__1/i__carry__3_n_7\,
      mem_reg_9(3) => \_inferred__1/i__carry__2_n_4\,
      mem_reg_9(2) => \_inferred__1/i__carry__2_n_5\,
      mem_reg_9(1) => \_inferred__1/i__carry__2_n_6\,
      mem_reg_9(0) => \_inferred__1/i__carry__2_n_7\,
      out_data(7 downto 0) => out_data(7 downto 0),
      out_href => out_href,
      pclk => pclk,
      ram0_q(22 downto 0) => ram0_q(22 downto 0),
      ram1_q(22 downto 0) => ram1_q(22 downto 0)
    );
ram1: entity work.design_1_xil_vip_0_0_simple_dp_ram_5
     port map (
      D(0) => ram1_n_23,
      O(1) => \_inferred__1/i__carry__4_n_6\,
      O(0) => \_inferred__1/i__carry__4_n_7\,
      Q(7 downto 0) => \cur_clr_addr_reg__0\(7 downto 0),
      S(2) => ram0_n_23,
      S(1) => ram0_n_24,
      S(0) => ram0_n_25,
      \_inferred__1/i__carry__4\(22 downto 0) => cur_data_r(22 downto 0),
      cur_clr_done => cur_clr_done,
      \cur_data_r_reg[0]\ => mem_reg_i_42_n_0,
      cur_ram => cur_ram,
      hist_equ_href => hist_equ_href,
      \hist_sum_data_1_reg[11]\(3) => ram0_n_34,
      \hist_sum_data_1_reg[11]\(2) => ram0_n_35,
      \hist_sum_data_1_reg[11]\(1) => ram0_n_36,
      \hist_sum_data_1_reg[11]\(0) => ram0_n_37,
      \hist_sum_data_1_reg[15]\(3) => ram0_n_38,
      \hist_sum_data_1_reg[15]\(2) => ram0_n_39,
      \hist_sum_data_1_reg[15]\(1) => ram0_n_40,
      \hist_sum_data_1_reg[15]\(0) => ram0_n_41,
      \hist_sum_data_1_reg[19]\(3) => ram0_n_42,
      \hist_sum_data_1_reg[19]\(2) => ram0_n_43,
      \hist_sum_data_1_reg[19]\(1) => ram0_n_44,
      \hist_sum_data_1_reg[19]\(0) => ram0_n_45,
      \hist_sum_data_1_reg[3]\(3) => ram0_n_26,
      \hist_sum_data_1_reg[3]\(2) => ram0_n_27,
      \hist_sum_data_1_reg[3]\(1) => ram0_n_28,
      \hist_sum_data_1_reg[3]\(0) => ram0_n_29,
      \hist_sum_data_1_reg[7]\(3) => ram0_n_30,
      \hist_sum_data_1_reg[7]\(2) => ram0_n_31,
      \hist_sum_data_1_reg[7]\(1) => ram0_n_32,
      \hist_sum_data_1_reg[7]\(0) => ram0_n_33,
      hist_sum_done => hist_sum_done,
      hist_sum_runn_0 => hist_sum_runn_0,
      mem_reg_0(3 downto 0) => O(3 downto 0),
      mem_reg_1(3 downto 0) => mem_reg(3 downto 0),
      mem_reg_10(3) => \_inferred__1/i__carry__0_n_4\,
      mem_reg_10(2) => \_inferred__1/i__carry__0_n_5\,
      mem_reg_10(1) => \_inferred__1/i__carry__0_n_6\,
      mem_reg_10(0) => \_inferred__1/i__carry__0_n_7\,
      mem_reg_11(3) => \_inferred__1/i__carry_n_4\,
      mem_reg_11(2) => \_inferred__1/i__carry_n_5\,
      mem_reg_11(1) => \_inferred__1/i__carry_n_6\,
      mem_reg_11(0) => \_inferred__1/i__carry_n_7\,
      mem_reg_12(7 downto 0) => Q(7 downto 0),
      mem_reg_2(3 downto 0) => mem_reg_0(3 downto 0),
      mem_reg_3(3 downto 0) => mem_reg_1(3 downto 0),
      mem_reg_4(3 downto 0) => mem_reg_2(3 downto 0),
      mem_reg_5(2 downto 0) => mem_reg_3(2 downto 0),
      mem_reg_6(7 downto 0) => cur_rdaddr_r(7 downto 0),
      mem_reg_7(3) => \_inferred__1/i__carry__3_n_4\,
      mem_reg_7(2) => \_inferred__1/i__carry__3_n_5\,
      mem_reg_7(1) => \_inferred__1/i__carry__3_n_6\,
      mem_reg_7(0) => \_inferred__1/i__carry__3_n_7\,
      mem_reg_8(3) => \_inferred__1/i__carry__2_n_4\,
      mem_reg_8(2) => \_inferred__1/i__carry__2_n_5\,
      mem_reg_8(1) => \_inferred__1/i__carry__2_n_6\,
      mem_reg_8(0) => \_inferred__1/i__carry__2_n_7\,
      mem_reg_9(3) => \_inferred__1/i__carry__1_n_4\,
      mem_reg_9(2) => \_inferred__1/i__carry__1_n_5\,
      mem_reg_9(1) => \_inferred__1/i__carry__1_n_6\,
      mem_reg_9(0) => \_inferred__1/i__carry__1_n_7\,
      out_data(7 downto 0) => out_data(7 downto 0),
      out_href => out_href,
      \p_0_in__1\(22 downto 0) => \p_0_in__1\(22 downto 0),
      pclk => pclk,
      ram0_q(22 downto 0) => ram0_q(22 downto 0),
      ram1_q(22 downto 0) => ram1_q(22 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_shift_register is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk : in STD_LOGIC;
    hist_equ_href_o : in STD_LOGIC;
    \in_r_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end design_1_xil_vip_0_0_shift_register;

architecture STRUCTURE of design_1_xil_vip_0_0_shift_register is
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
\gen_ram_inst[0].u_ram\: entity work.\design_1_xil_vip_0_0_simple_dp_ram__parameterized1\
     port map (
      ADDRBWRADDR(8) => pos_r_reg(11),
      ADDRBWRADDR(7 downto 0) => pos(8 downto 1),
      D(7 downto 0) => \^d\(7 downto 0),
      Q(7 downto 0) => in_r(7 downto 0),
      hist_equ_href_o => hist_equ_href_o,
      mem_reg_0 => \gen_ram_inst[1].u_ram_n_16\,
      \out\(2 downto 1) => pos_r_reg(10 downto 9),
      \out\(0) => pos_r_reg(0),
      pclk => pclk,
      \pos_r_reg[10]\(2) => \gen_ram_inst[0].u_ram_n_8\,
      \pos_r_reg[10]\(1) => \gen_ram_inst[0].u_ram_n_9\,
      \pos_r_reg[10]\(0) => \gen_ram_inst[0].u_ram_n_10\
    );
\gen_ram_inst[1].u_ram\: entity work.\design_1_xil_vip_0_0_simple_dp_ram__parameterized1_4\
     port map (
      ADDRBWRADDR(7 downto 0) => pos(8 downto 1),
      D(7 downto 0) => \^d\(7 downto 0),
      hist_equ_href_o => hist_equ_href_o,
      mem_reg_0(7 downto 0) => mem_reg(7 downto 0),
      mem_reg_1(2) => \gen_ram_inst[0].u_ram_n_8\,
      mem_reg_1(1) => \gen_ram_inst[0].u_ram_n_9\,
      mem_reg_1(0) => \gen_ram_inst[0].u_ram_n_10\,
      \out\(11 downto 0) => pos_r_reg(11 downto 0),
      pclk => pclk,
      \pos_r_reg[3]\ => \gen_ram_inst[1].u_ram_n_16\
    );
\in_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \in_r_reg[7]_0\(0),
      Q => in_r(0),
      R => '0'
    );
\in_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \in_r_reg[7]_0\(1),
      Q => in_r(1),
      R => '0'
    );
\in_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \in_r_reg[7]_0\(2),
      Q => in_r(2),
      R => '0'
    );
\in_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \in_r_reg[7]_0\(3),
      Q => in_r(3),
      R => '0'
    );
\in_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \in_r_reg[7]_0\(4),
      Q => in_r(4),
      R => '0'
    );
\in_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \in_r_reg[7]_0\(5),
      Q => in_r(5),
      R => '0'
    );
\in_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \in_r_reg[7]_0\(6),
      Q => in_r(6),
      R => '0'
    );
\in_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \in_r_reg[7]_0\(7),
      Q => in_r(7),
      R => '0'
    );
\pos_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => hist_equ_href_o,
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
      CE => hist_equ_href_o,
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
      CE => hist_equ_href_o,
      D => \pos_r_reg[8]_i_1_n_5\,
      Q => pos_r_reg(10),
      R => pos_r
    );
\pos_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \pos_r_reg[8]_i_1_n_4\,
      Q => pos_r_reg(11),
      R => pos_r
    );
\pos_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \pos_r_reg[0]_i_2_n_6\,
      Q => pos_r_reg(1),
      R => pos_r
    );
\pos_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \pos_r_reg[0]_i_2_n_5\,
      Q => pos_r_reg(2),
      R => pos_r
    );
\pos_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \pos_r_reg[0]_i_2_n_4\,
      Q => pos_r_reg(3),
      R => pos_r
    );
\pos_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
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
      CE => hist_equ_href_o,
      D => \pos_r_reg[4]_i_1_n_6\,
      Q => pos_r_reg(5),
      R => pos_r
    );
\pos_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \pos_r_reg[4]_i_1_n_5\,
      Q => pos_r_reg(6),
      R => pos_r
    );
\pos_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
      D => \pos_r_reg[4]_i_1_n_4\,
      Q => pos_r_reg(7),
      R => pos_r
    );
\pos_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => hist_equ_href_o,
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
      CE => hist_equ_href_o,
      D => \pos_r_reg[8]_i_1_n_6\,
      Q => pos_r_reg(9),
      R => pos_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_vip_hist_equ is
  port (
    s_hist_equ_en_reg : out STD_LOGIC;
    prev_vsync : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    in_href : out STD_LOGIC;
    in_vsync : out STD_LOGIC;
    pclk : in STD_LOGIC;
    out_href : in STD_LOGIC;
    out_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_vsync : in STD_LOGIC;
    \hist_sum_data_3_reg[0]_0\ : in STD_LOGIC;
    cur_ram02_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    hist_sum_data_20_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_hist_equ_en : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_module_reset : in STD_LOGIC
  );
end design_1_xil_vip_0_0_vip_hist_equ;

architecture STRUCTURE of design_1_xil_vip_0_0_vip_hist_equ is
  signal \hist_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \hist_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \hist_addr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hist_equ_href : STD_LOGIC;
  signal hist_equ_vsync : STD_LOGIC;
  signal hist_ram_data_n_11 : STD_LOGIC;
  signal hist_ram_data_n_12 : STD_LOGIC;
  signal hist_ram_data_n_13 : STD_LOGIC;
  signal hist_ram_data_n_14 : STD_LOGIC;
  signal hist_ram_data_n_15 : STD_LOGIC;
  signal hist_ram_data_n_16 : STD_LOGIC;
  signal hist_ram_data_n_17 : STD_LOGIC;
  signal hist_ram_data_n_18 : STD_LOGIC;
  signal hist_ram_data_n_19 : STD_LOGIC;
  signal hist_ram_data_n_2 : STD_LOGIC;
  signal hist_ram_data_n_20 : STD_LOGIC;
  signal hist_ram_data_n_21 : STD_LOGIC;
  signal hist_ram_data_n_22 : STD_LOGIC;
  signal hist_ram_data_n_23 : STD_LOGIC;
  signal hist_ram_data_n_24 : STD_LOGIC;
  signal hist_ram_data_n_25 : STD_LOGIC;
  signal hist_ram_data_n_26 : STD_LOGIC;
  signal hist_ram_data_n_27 : STD_LOGIC;
  signal hist_ram_data_n_28 : STD_LOGIC;
  signal hist_ram_data_n_29 : STD_LOGIC;
  signal hist_ram_data_n_3 : STD_LOGIC;
  signal hist_ram_data_n_30 : STD_LOGIC;
  signal hist_ram_data_n_31 : STD_LOGIC;
  signal hist_ram_data_n_32 : STD_LOGIC;
  signal hist_ram_data_n_33 : STD_LOGIC;
  signal hist_ram_data_n_4 : STD_LOGIC;
  signal hist_ram_data_n_5 : STD_LOGIC;
  signal hist_ram_data_n_6 : STD_LOGIC;
  signal hist_ram_data_n_7 : STD_LOGIC;
  signal hist_ram_data_n_8 : STD_LOGIC;
  signal hist_sum_addr_0_reg_c_n_0 : STD_LOGIC;
  signal hist_sum_addr_1_reg_c_n_0 : STD_LOGIC;
  signal hist_sum_addr_2_reg_c_n_0 : STD_LOGIC;
  signal \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\ : STD_LOGIC;
  signal hist_sum_addr_3_reg_c_n_0 : STD_LOGIC;
  signal \hist_sum_addr_4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\ : STD_LOGIC;
  signal hist_sum_addr_4_reg_c_n_0 : STD_LOGIC;
  signal \hist_sum_addr_4_reg_gate__0_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg_gate__1_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg_gate__2_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg_gate__3_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg_gate__4_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg_gate__5_n_0\ : STD_LOGIC;
  signal \hist_sum_addr_4_reg_gate__6_n_0\ : STD_LOGIC;
  signal hist_sum_addr_4_reg_gate_n_0 : STD_LOGIC;
  signal hist_sum_addr_5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hist_sum_data_1_reg : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \hist_sum_data_20__0_n_100\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_101\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_102\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_103\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_104\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_105\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_58\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_59\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_60\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_61\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_62\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_63\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_64\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_65\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_66\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_67\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_68\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_69\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_70\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_71\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_72\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_73\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_74\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_75\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_76\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_77\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_78\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_79\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_80\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_81\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_82\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_83\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_84\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_85\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_86\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_87\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_88\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_89\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_90\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_91\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_92\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_93\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_94\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_95\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_96\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_97\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_98\ : STD_LOGIC;
  signal \hist_sum_data_20__0_n_99\ : STD_LOGIC;
  signal hist_sum_data_20_i_10_n_0 : STD_LOGIC;
  signal hist_sum_data_20_i_11_n_0 : STD_LOGIC;
  signal hist_sum_data_20_i_2_n_0 : STD_LOGIC;
  signal hist_sum_data_20_i_2_n_1 : STD_LOGIC;
  signal hist_sum_data_20_i_2_n_2 : STD_LOGIC;
  signal hist_sum_data_20_i_2_n_3 : STD_LOGIC;
  signal hist_sum_data_20_i_3_n_0 : STD_LOGIC;
  signal hist_sum_data_20_i_3_n_1 : STD_LOGIC;
  signal hist_sum_data_20_i_3_n_2 : STD_LOGIC;
  signal hist_sum_data_20_i_3_n_3 : STD_LOGIC;
  signal hist_sum_data_20_i_4_n_0 : STD_LOGIC;
  signal hist_sum_data_20_i_5_n_0 : STD_LOGIC;
  signal hist_sum_data_20_i_6_n_0 : STD_LOGIC;
  signal hist_sum_data_20_i_7_n_0 : STD_LOGIC;
  signal hist_sum_data_20_i_8_n_0 : STD_LOGIC;
  signal hist_sum_data_20_i_9_n_0 : STD_LOGIC;
  signal hist_sum_data_20_n_100 : STD_LOGIC;
  signal hist_sum_data_20_n_101 : STD_LOGIC;
  signal hist_sum_data_20_n_102 : STD_LOGIC;
  signal hist_sum_data_20_n_103 : STD_LOGIC;
  signal hist_sum_data_20_n_104 : STD_LOGIC;
  signal hist_sum_data_20_n_105 : STD_LOGIC;
  signal hist_sum_data_20_n_106 : STD_LOGIC;
  signal hist_sum_data_20_n_107 : STD_LOGIC;
  signal hist_sum_data_20_n_108 : STD_LOGIC;
  signal hist_sum_data_20_n_109 : STD_LOGIC;
  signal hist_sum_data_20_n_110 : STD_LOGIC;
  signal hist_sum_data_20_n_111 : STD_LOGIC;
  signal hist_sum_data_20_n_112 : STD_LOGIC;
  signal hist_sum_data_20_n_113 : STD_LOGIC;
  signal hist_sum_data_20_n_114 : STD_LOGIC;
  signal hist_sum_data_20_n_115 : STD_LOGIC;
  signal hist_sum_data_20_n_116 : STD_LOGIC;
  signal hist_sum_data_20_n_117 : STD_LOGIC;
  signal hist_sum_data_20_n_118 : STD_LOGIC;
  signal hist_sum_data_20_n_119 : STD_LOGIC;
  signal hist_sum_data_20_n_120 : STD_LOGIC;
  signal hist_sum_data_20_n_121 : STD_LOGIC;
  signal hist_sum_data_20_n_122 : STD_LOGIC;
  signal hist_sum_data_20_n_123 : STD_LOGIC;
  signal hist_sum_data_20_n_124 : STD_LOGIC;
  signal hist_sum_data_20_n_125 : STD_LOGIC;
  signal hist_sum_data_20_n_126 : STD_LOGIC;
  signal hist_sum_data_20_n_127 : STD_LOGIC;
  signal hist_sum_data_20_n_128 : STD_LOGIC;
  signal hist_sum_data_20_n_129 : STD_LOGIC;
  signal hist_sum_data_20_n_130 : STD_LOGIC;
  signal hist_sum_data_20_n_131 : STD_LOGIC;
  signal hist_sum_data_20_n_132 : STD_LOGIC;
  signal hist_sum_data_20_n_133 : STD_LOGIC;
  signal hist_sum_data_20_n_134 : STD_LOGIC;
  signal hist_sum_data_20_n_135 : STD_LOGIC;
  signal hist_sum_data_20_n_136 : STD_LOGIC;
  signal hist_sum_data_20_n_137 : STD_LOGIC;
  signal hist_sum_data_20_n_138 : STD_LOGIC;
  signal hist_sum_data_20_n_139 : STD_LOGIC;
  signal hist_sum_data_20_n_140 : STD_LOGIC;
  signal hist_sum_data_20_n_141 : STD_LOGIC;
  signal hist_sum_data_20_n_142 : STD_LOGIC;
  signal hist_sum_data_20_n_143 : STD_LOGIC;
  signal hist_sum_data_20_n_144 : STD_LOGIC;
  signal hist_sum_data_20_n_145 : STD_LOGIC;
  signal hist_sum_data_20_n_146 : STD_LOGIC;
  signal hist_sum_data_20_n_147 : STD_LOGIC;
  signal hist_sum_data_20_n_148 : STD_LOGIC;
  signal hist_sum_data_20_n_149 : STD_LOGIC;
  signal hist_sum_data_20_n_150 : STD_LOGIC;
  signal hist_sum_data_20_n_151 : STD_LOGIC;
  signal hist_sum_data_20_n_152 : STD_LOGIC;
  signal hist_sum_data_20_n_153 : STD_LOGIC;
  signal hist_sum_data_20_n_58 : STD_LOGIC;
  signal hist_sum_data_20_n_59 : STD_LOGIC;
  signal hist_sum_data_20_n_60 : STD_LOGIC;
  signal hist_sum_data_20_n_61 : STD_LOGIC;
  signal hist_sum_data_20_n_62 : STD_LOGIC;
  signal hist_sum_data_20_n_63 : STD_LOGIC;
  signal hist_sum_data_20_n_64 : STD_LOGIC;
  signal hist_sum_data_20_n_65 : STD_LOGIC;
  signal hist_sum_data_20_n_66 : STD_LOGIC;
  signal hist_sum_data_20_n_67 : STD_LOGIC;
  signal hist_sum_data_20_n_68 : STD_LOGIC;
  signal hist_sum_data_20_n_69 : STD_LOGIC;
  signal hist_sum_data_20_n_70 : STD_LOGIC;
  signal hist_sum_data_20_n_71 : STD_LOGIC;
  signal hist_sum_data_20_n_72 : STD_LOGIC;
  signal hist_sum_data_20_n_73 : STD_LOGIC;
  signal hist_sum_data_20_n_74 : STD_LOGIC;
  signal hist_sum_data_20_n_75 : STD_LOGIC;
  signal hist_sum_data_20_n_76 : STD_LOGIC;
  signal hist_sum_data_20_n_77 : STD_LOGIC;
  signal hist_sum_data_20_n_78 : STD_LOGIC;
  signal hist_sum_data_20_n_79 : STD_LOGIC;
  signal hist_sum_data_20_n_80 : STD_LOGIC;
  signal hist_sum_data_20_n_81 : STD_LOGIC;
  signal hist_sum_data_20_n_82 : STD_LOGIC;
  signal hist_sum_data_20_n_83 : STD_LOGIC;
  signal hist_sum_data_20_n_84 : STD_LOGIC;
  signal hist_sum_data_20_n_85 : STD_LOGIC;
  signal hist_sum_data_20_n_86 : STD_LOGIC;
  signal hist_sum_data_20_n_87 : STD_LOGIC;
  signal hist_sum_data_20_n_88 : STD_LOGIC;
  signal hist_sum_data_20_n_89 : STD_LOGIC;
  signal hist_sum_data_20_n_90 : STD_LOGIC;
  signal hist_sum_data_20_n_91 : STD_LOGIC;
  signal hist_sum_data_20_n_92 : STD_LOGIC;
  signal hist_sum_data_20_n_93 : STD_LOGIC;
  signal hist_sum_data_20_n_94 : STD_LOGIC;
  signal hist_sum_data_20_n_95 : STD_LOGIC;
  signal hist_sum_data_20_n_96 : STD_LOGIC;
  signal hist_sum_data_20_n_97 : STD_LOGIC;
  signal hist_sum_data_20_n_98 : STD_LOGIC;
  signal hist_sum_data_20_n_99 : STD_LOGIC;
  signal hist_sum_data_21 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \hist_sum_data_2_reg__0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal hist_sum_data_3 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \hist_sum_data_3[0]_i_100_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_101_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_102_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_103_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_104_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_105_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_106_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_107_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_10_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_111_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_112_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_113_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_114_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_115_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_116_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_117_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_118_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_119_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_11_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_120_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_121_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_122_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_123_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_124_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_125_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_126_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_127_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_128_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_129_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_130_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_131_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_132_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_133_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_134_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_135_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_136_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_137_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_13_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_141_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_142_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_143_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_144_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_145_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_146_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_147_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_148_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_149_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_14_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_150_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_151_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_152_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_153_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_154_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_155_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_157_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_158_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_159_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_15_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_160_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_161_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_162_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_163_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_164_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_165_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_166_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_167_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_168_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_169_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_16_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_170_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_171_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_172_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_173_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_174_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_175_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_17_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_18_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_19_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_20_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_21_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_25_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_26_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_27_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_29_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_30_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_31_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_32_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_33_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_34_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_35_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_36_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_37_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_41_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_42_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_43_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_44_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_45_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_46_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_47_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_48_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_49_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_50_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_51_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_52_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_53_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_54_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_55_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_56_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_57_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_58_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_59_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_60_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_61_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_62_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_63_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_65_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_66_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_67_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_68_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_69_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_6_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_70_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_71_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_72_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_73_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_77_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_78_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_79_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_7_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_80_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_81_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_82_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_83_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_84_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_85_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_86_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_87_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_88_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_89_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_8_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_90_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_91_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_92_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_93_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_94_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_95_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_96_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_97_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_98_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[0]_i_9_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[10]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[11]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_10_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_17_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_18_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_19_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_20_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_21_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_22_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_23_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_24_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_25_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_26_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_27_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_28_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_29_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_30_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_31_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_32_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_33_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_34_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_35_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_36_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_6_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_7_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_8_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[12]_i_9_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[13]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[14]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[15]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_10_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_17_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_18_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_19_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_20_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_21_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_22_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_23_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_24_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_25_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_6_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_7_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_8_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[16]_i_9_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[17]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[18]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_100_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_10_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_11_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_13_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_14_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_15_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_16_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_25_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_26_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_27_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_28_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_29_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_30_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_31_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_32_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_34_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_35_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_36_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_37_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_38_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_39_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_40_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_41_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_42_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_43_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_44_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_45_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_46_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_47_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_48_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_50_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_51_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_52_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_53_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_54_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_55_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_56_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_57_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_59_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_60_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_61_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_62_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_64_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_65_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_66_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_67_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_68_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_69_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_70_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_71_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_73_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_74_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_75_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_76_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_78_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_79_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_7_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_80_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_81_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_82_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_83_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_84_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_85_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_87_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_88_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_89_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_8_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_90_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_91_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_92_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_93_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_94_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_95_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_96_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_97_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_98_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_99_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[19]_i_9_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[1]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[2]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[3]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[3]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_10_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_11_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_15_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_16_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_17_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_18_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_19_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_20_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_21_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_22_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_23_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_24_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_25_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_26_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_27_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_28_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_29_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_30_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_31_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_32_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_33_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_34_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_35_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_36_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_37_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_6_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_7_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_8_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[4]_i_9_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[5]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[6]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[7]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_10_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_11_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_15_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_16_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_17_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_18_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_22_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_23_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_24_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_25_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_26_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_27_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_28_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_29_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_30_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_31_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_32_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_33_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_34_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_35_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_36_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_37_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_38_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_39_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_40_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_41_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_42_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_43_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_44_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_45_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_6_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_7_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_8_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[8]_i_9_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3[9]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_108_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_108_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_108_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_108_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_108_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_108_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_108_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_109_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_109_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_109_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_109_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_109_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_109_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_109_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_109_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_110_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_110_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_110_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_110_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_110_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_110_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_110_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_110_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_12_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_12_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_12_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_138_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_138_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_138_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_138_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_138_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_139_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_139_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_139_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_139_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_139_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_139_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_139_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_139_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_140_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_140_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_140_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_140_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_140_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_140_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_140_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_140_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_156_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_156_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_156_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_156_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_156_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_156_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_156_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_22_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_22_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_22_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_22_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_22_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_22_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_22_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_22_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_23_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_23_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_23_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_23_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_23_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_23_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_23_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_24_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_24_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_24_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_24_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_24_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_24_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_24_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_24_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_28_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_28_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_28_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_28_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_38_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_38_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_38_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_38_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_38_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_38_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_38_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_38_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_39_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_39_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_39_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_39_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_39_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_39_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_39_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_39_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_40_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_40_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_40_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_40_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_40_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_40_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_40_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_40_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_64_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_64_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_64_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_64_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_74_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_74_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_74_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_74_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_74_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_74_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_74_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_74_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_75_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_75_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_75_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_75_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_75_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_75_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_75_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_75_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_76_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_76_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_76_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_76_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_76_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_76_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_76_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_76_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_99_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_99_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_99_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[0]_i_99_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_12_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_12_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_12_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_12_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_12_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_12_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_12_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_12_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_13_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_13_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_13_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_13_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_13_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_13_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_13_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_13_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_11_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_11_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_11_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_11_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_11_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_11_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_11_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_11_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_12_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_12_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_12_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_12_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_17_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_17_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_17_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_17_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_17_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_17_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_17_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_17_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_18_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_18_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_18_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_18_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_19_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_19_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_19_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_19_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_19_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_19_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_19_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_19_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_20_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_22_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_24_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_24_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_24_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_24_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_33_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_33_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_33_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_33_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_33_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_33_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_33_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_33_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_3_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_3_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_49_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_49_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_49_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_49_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_58_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_58_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_58_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_58_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_58_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_58_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_58_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_58_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_5_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_63_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_63_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_63_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_63_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_6_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_6_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_6_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_6_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_6_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_6_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_6_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_72_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_72_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_72_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_72_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_72_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_72_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_72_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_72_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_77_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_77_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_77_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_77_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_86_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_86_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_86_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_86_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_86_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_86_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_86_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_86_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_12_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_12_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_12_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_12_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_12_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_12_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_12_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_13_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_13_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_13_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_13_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_13_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_13_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_13_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_13_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_14_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_14_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_14_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_14_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_14_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_14_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_14_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_14_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_12_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_12_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_12_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_12_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_12_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_12_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_12_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_13_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_13_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_13_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_13_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_13_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_13_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_13_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_13_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_14_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_14_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_14_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_14_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_14_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_14_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_14_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_14_n_7\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4[0]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[1]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[2]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_100_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_101_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_102_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_10_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_11_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_12_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_13_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_15_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_16_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_17_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_18_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_19_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_20_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_21_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_22_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_24_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_25_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_26_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_27_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_28_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_29_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_30_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_31_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_33_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_34_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_36_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_37_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_39_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_40_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_41_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_42_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_43_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_44_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_45_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_46_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_47_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_48_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_49_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_51_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_52_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_53_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_54_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_56_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_57_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_58_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_59_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_60_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_61_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_62_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_64_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_65_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_66_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_67_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_68_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_69_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_6_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_70_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_71_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_72_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_73_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_74_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_76_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_77_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_78_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_79_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_7_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_80_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_81_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_82_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_83_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_85_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_86_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_87_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_88_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_89_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_8_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_90_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_91_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_92_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_94_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_95_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_96_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_97_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_98_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_99_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[3]_i_9_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[4]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[5]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[6]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_10_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_12_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_13_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_14_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_15_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_16_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_19_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_20_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_22_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_23_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_24_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_25_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_26_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_27_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_28_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_29_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_31_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_32_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_33_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_34_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_36_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_37_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_38_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_39_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_40_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_41_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_42_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_43_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_45_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_46_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_47_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_48_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_49_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_50_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_51_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_52_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_53_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_54_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_55_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_56_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_57_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_58_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_6_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_7_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_8_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4[7]_i_9_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_14_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_14_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_14_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_23_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_23_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_23_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_23_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_32_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_32_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_35_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_35_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_35_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_35_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_35_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_35_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_35_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_35_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_38_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_38_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_38_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_38_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_3_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_3_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_3_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_3_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_4_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_4_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_4_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_50_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_50_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_50_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_50_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_50_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_50_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_50_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_50_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_55_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_55_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_55_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_55_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_63_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_63_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_63_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_63_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_63_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_63_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_63_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_63_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_75_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_75_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_75_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_75_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_75_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_75_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_75_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_75_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_84_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_84_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_84_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_84_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_93_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_93_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_93_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[3]_i_93_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_11_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_11_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_11_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_17_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_17_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_17_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_17_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_17_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_17_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_17_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_17_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_18_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_18_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_21_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_21_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_21_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_21_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_30_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_30_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_30_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_30_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_30_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_30_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_30_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_30_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_35_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_35_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_35_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_35_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_44_n_0\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_44_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_44_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_44_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_44_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_44_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_44_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_44_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_4_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_4_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_4_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_5_n_1\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_5_n_2\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_5_n_3\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_5_n_4\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_5_n_5\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_5_n_6\ : STD_LOGIC;
  signal \hist_sum_data_4_reg[7]_i_5_n_7\ : STD_LOGIC;
  signal \hist_sum_data_4_reg_n_0_[0]\ : STD_LOGIC;
  signal \hist_sum_data_4_reg_n_0_[1]\ : STD_LOGIC;
  signal \hist_sum_data_4_reg_n_0_[2]\ : STD_LOGIC;
  signal \hist_sum_data_4_reg_n_0_[3]\ : STD_LOGIC;
  signal \hist_sum_data_4_reg_n_0_[4]\ : STD_LOGIC;
  signal \hist_sum_data_4_reg_n_0_[5]\ : STD_LOGIC;
  signal \hist_sum_data_4_reg_n_0_[6]\ : STD_LOGIC;
  signal \hist_sum_data_4_reg_n_0_[7]\ : STD_LOGIC;
  signal hist_sum_data_5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \hist_sum_data_5[3]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_5[3]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_5[3]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_5[3]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_5[7]_i_2_n_0\ : STD_LOGIC;
  signal \hist_sum_data_5[7]_i_3_n_0\ : STD_LOGIC;
  signal \hist_sum_data_5[7]_i_4_n_0\ : STD_LOGIC;
  signal \hist_sum_data_5[7]_i_5_n_0\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \hist_sum_data_5_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal hist_sum_done : STD_LOGIC;
  signal hist_sum_done_i_2_n_0 : STD_LOGIC;
  signal hist_sum_runn_0 : STD_LOGIC;
  signal hist_sum_runn_0_i_1_n_0 : STD_LOGIC;
  signal hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c_n_0 : STD_LOGIC;
  signal hist_sum_runn_4_reg_gate_n_0 : STD_LOGIC;
  signal hist_sum_runn_4_reg_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 : STD_LOGIC;
  signal hist_sum_runn_5 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_hist_equ_en_reg\ : STD_LOGIC;
  signal NLW_hist_sum_data_20_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_sum_data_20_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_sum_data_20_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_sum_data_20_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_sum_data_20_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_sum_data_20_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_sum_data_20_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_hist_sum_data_20_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_hist_sum_data_20_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_20__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hist_sum_data_20__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hist_sum_data_20__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hist_sum_data_20__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hist_sum_data_20__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hist_sum_data_20__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hist_sum_data_20__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_hist_sum_data_20__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_hist_sum_data_20__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_20__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_hist_sum_data_20_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_hist_sum_data_20_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hist_sum_data_3_reg[0]_i_108_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_hist_sum_data_3_reg[0]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[0]_i_138_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hist_sum_data_3_reg[0]_i_156_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_hist_sum_data_3_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hist_sum_data_3_reg[0]_i_28_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[0]_i_64_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[0]_i_99_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[19]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[19]_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hist_sum_data_3_reg[19]_i_18_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_hist_sum_data_3_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_hist_sum_data_3_reg[19]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_hist_sum_data_3_reg[19]_i_20_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hist_sum_data_3_reg[19]_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[19]_i_22_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hist_sum_data_3_reg[19]_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[19]_i_24_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[19]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_hist_sum_data_3_reg[19]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[19]_i_49_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[19]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[19]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hist_sum_data_3_reg[19]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_hist_sum_data_3_reg[19]_i_63_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_3_reg[19]_i_77_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[3]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[3]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[3]_i_32_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[3]_i_32_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hist_sum_data_4_reg[3]_i_38_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[3]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[3]_i_55_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[3]_i_84_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[3]_i_93_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[7]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[7]_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[7]_i_18_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hist_sum_data_4_reg[7]_i_21_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[7]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_hist_sum_data_4_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[7]_i_35_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hist_sum_data_4_reg[7]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hist_sum_data_4_reg[7]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_hist_sum_data_4_reg[7]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_hist_sum_data_5_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg ";
  attribute srl_name : string;
  attribute srl_name of \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\ : label is "soft_lutpair43";
  attribute srl_bus_name of \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg ";
  attribute srl_name of \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c ";
  attribute srl_bus_name of \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg ";
  attribute srl_name of \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c ";
  attribute SOFT_HLUTNM of \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\ : label is "soft_lutpair43";
  attribute srl_bus_name of \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg ";
  attribute srl_name of \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c ";
  attribute SOFT_HLUTNM of \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\ : label is "soft_lutpair32";
  attribute srl_bus_name of \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg ";
  attribute srl_name of \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c ";
  attribute SOFT_HLUTNM of \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\ : label is "soft_lutpair36";
  attribute srl_bus_name of \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg ";
  attribute srl_name of \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c ";
  attribute SOFT_HLUTNM of \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\ : label is "soft_lutpair39";
  attribute srl_bus_name of \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg ";
  attribute srl_name of \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c ";
  attribute SOFT_HLUTNM of \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\ : label is "soft_lutpair39";
  attribute srl_bus_name of \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg ";
  attribute srl_name of \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c ";
  attribute SOFT_HLUTNM of \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of hist_sum_addr_4_reg_gate : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \hist_sum_addr_4_reg_gate__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \hist_sum_addr_4_reg_gate__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \hist_sum_addr_4_reg_gate__2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \hist_sum_addr_4_reg_gate__3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \hist_sum_addr_4_reg_gate__4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \hist_sum_addr_4_reg_gate__5\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \hist_sum_addr_4_reg_gate__6\ : label is "soft_lutpair41";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of hist_sum_data_20 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_sum_data_20__0\ : label is "{SYNTH-12 {cell *THIS*}}";
  attribute HLUTNM : string;
  attribute HLUTNM of \hist_sum_data_3[0]_i_100\ : label is "lutpair0";
  attribute HLUTNM of \hist_sum_data_3[0]_i_101\ : label is "lutpair39";
  attribute HLUTNM of \hist_sum_data_3[0]_i_104\ : label is "lutpair1";
  attribute HLUTNM of \hist_sum_data_3[0]_i_105\ : label is "lutpair0";
  attribute HLUTNM of \hist_sum_data_3[0]_i_106\ : label is "lutpair39";
  attribute HLUTNM of \hist_sum_data_3[0]_i_66\ : label is "lutpair3";
  attribute HLUTNM of \hist_sum_data_3[0]_i_67\ : label is "lutpair2";
  attribute HLUTNM of \hist_sum_data_3[0]_i_68\ : label is "lutpair1";
  attribute HLUTNM of \hist_sum_data_3[0]_i_71\ : label is "lutpair3";
  attribute HLUTNM of \hist_sum_data_3[0]_i_72\ : label is "lutpair2";
  attribute SOFT_HLUTNM of \hist_sum_data_3[12]_i_11\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \hist_sum_data_3[12]_i_14\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \hist_sum_data_3[12]_i_15\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \hist_sum_data_3[12]_i_16\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \hist_sum_data_3[12]_i_17\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \hist_sum_data_3[12]_i_18\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \hist_sum_data_3[12]_i_20\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \hist_sum_data_3[16]_i_12\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \hist_sum_data_3[16]_i_13\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \hist_sum_data_3[16]_i_14\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \hist_sum_data_3[16]_i_15\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \hist_sum_data_3[16]_i_16\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \hist_sum_data_3[16]_i_17\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \hist_sum_data_3[19]_i_21\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \hist_sum_data_3[19]_i_23\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \hist_sum_data_3[8]_i_11\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \hist_sum_data_3[8]_i_18\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \hist_sum_data_3[8]_i_19\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \hist_sum_data_3[8]_i_20\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \hist_sum_data_3[8]_i_21\ : label is "soft_lutpair33";
  attribute HLUTNM of \hist_sum_data_4[3]_i_10\ : label is "lutpair17";
  attribute HLUTNM of \hist_sum_data_4[3]_i_11\ : label is "lutpair16";
  attribute SOFT_HLUTNM of \hist_sum_data_4[3]_i_33\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \hist_sum_data_4[3]_i_34\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \hist_sum_data_4[3]_i_36\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \hist_sum_data_4[3]_i_37\ : label is "soft_lutpair28";
  attribute HLUTNM of \hist_sum_data_4[3]_i_42\ : label is "lutpair15";
  attribute SOFT_HLUTNM of \hist_sum_data_4[3]_i_47\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \hist_sum_data_4[3]_i_48\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \hist_sum_data_4[3]_i_49\ : label is "soft_lutpair30";
  attribute HLUTNM of \hist_sum_data_4[3]_i_5\ : label is "lutpair17";
  attribute SOFT_HLUTNM of \hist_sum_data_4[3]_i_51\ : label is "soft_lutpair31";
  attribute HLUTNM of \hist_sum_data_4[3]_i_56\ : label is "lutpair14";
  attribute HLUTNM of \hist_sum_data_4[3]_i_58\ : label is "lutpair15";
  attribute HLUTNM of \hist_sum_data_4[3]_i_59\ : label is "lutpair14";
  attribute HLUTNM of \hist_sum_data_4[3]_i_6\ : label is "lutpair16";
  attribute HLUTNM of \hist_sum_data_4[3]_i_67\ : label is "lutpair13";
  attribute HLUTNM of \hist_sum_data_4[3]_i_76\ : label is "lutpair12";
  attribute HLUTNM of \hist_sum_data_4[3]_i_77\ : label is "lutpair11";
  attribute HLUTNM of \hist_sum_data_4[3]_i_78\ : label is "lutpair10";
  attribute HLUTNM of \hist_sum_data_4[3]_i_79\ : label is "lutpair9";
  attribute HLUTNM of \hist_sum_data_4[3]_i_80\ : label is "lutpair13";
  attribute HLUTNM of \hist_sum_data_4[3]_i_81\ : label is "lutpair12";
  attribute HLUTNM of \hist_sum_data_4[3]_i_82\ : label is "lutpair11";
  attribute HLUTNM of \hist_sum_data_4[3]_i_83\ : label is "lutpair10";
  attribute HLUTNM of \hist_sum_data_4[3]_i_85\ : label is "lutpair8";
  attribute HLUTNM of \hist_sum_data_4[3]_i_86\ : label is "lutpair7";
  attribute HLUTNM of \hist_sum_data_4[3]_i_87\ : label is "lutpair6";
  attribute HLUTNM of \hist_sum_data_4[3]_i_88\ : label is "lutpair5";
  attribute HLUTNM of \hist_sum_data_4[3]_i_89\ : label is "lutpair9";
  attribute HLUTNM of \hist_sum_data_4[3]_i_9\ : label is "lutpair18";
  attribute HLUTNM of \hist_sum_data_4[3]_i_90\ : label is "lutpair8";
  attribute HLUTNM of \hist_sum_data_4[3]_i_91\ : label is "lutpair7";
  attribute HLUTNM of \hist_sum_data_4[3]_i_92\ : label is "lutpair6";
  attribute HLUTNM of \hist_sum_data_4[3]_i_94\ : label is "lutpair4";
  attribute HLUTNM of \hist_sum_data_4[3]_i_96\ : label is "lutpair5";
  attribute HLUTNM of \hist_sum_data_4[3]_i_97\ : label is "lutpair4";
  attribute HLUTNM of \hist_sum_data_4[7]_i_7\ : label is "lutpair18";
  attribute SOFT_HLUTNM of hist_sum_runn_0_i_1 : label is "soft_lutpair32";
  attribute srl_name of hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c ";
  attribute SOFT_HLUTNM of href_reg_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \vsync_reg_i_1__0\ : label is "soft_lutpair24";
begin
  s_hist_equ_en_reg <= \^s_hist_equ_en_reg\;
\hist_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => cur_ram02_out,
      I1 => \hist_addr_reg__0\(2),
      I2 => \hist_addr_reg__0\(0),
      I3 => \hist_addr_reg__0\(1),
      I4 => \hist_addr_reg__0\(3),
      I5 => \hist_addr_reg__0\(4),
      O => \hist_addr[4]_i_1_n_0\
    );
\hist_addr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \hist_addr_reg__0\(3),
      I1 => \hist_addr_reg__0\(1),
      I2 => \hist_addr_reg__0\(0),
      I3 => \hist_addr_reg__0\(2),
      I4 => \hist_addr_reg__0\(4),
      O => \hist_addr[5]_i_2_n_0\
    );
\hist_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => hist_ram_data_n_2,
      CLR => \^s_hist_equ_en_reg\,
      D => \p_0_in__0\(0),
      Q => \hist_addr_reg__0\(0)
    );
\hist_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => hist_ram_data_n_2,
      CLR => \^s_hist_equ_en_reg\,
      D => \p_0_in__0\(1),
      Q => \hist_addr_reg__0\(1)
    );
\hist_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => hist_ram_data_n_2,
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_8,
      Q => \hist_addr_reg__0\(2)
    );
\hist_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => hist_ram_data_n_2,
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_7,
      Q => \hist_addr_reg__0\(3)
    );
\hist_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => hist_ram_data_n_2,
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_addr[4]_i_1_n_0\,
      Q => \hist_addr_reg__0\(4)
    );
\hist_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => hist_ram_data_n_2,
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_6,
      Q => \hist_addr_reg__0\(5)
    );
\hist_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => hist_ram_data_n_2,
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_5,
      Q => \hist_addr_reg__0\(6)
    );
\hist_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => hist_ram_data_n_2,
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_4,
      Q => \hist_addr_reg__0\(7)
    );
hist_map_ram: entity work.\design_1_xil_vip_0_0_simple_dp_ram__parameterized0\
     port map (
      ADDRARDADDR(7 downto 0) => hist_sum_addr_5(7 downto 0),
      D(7 downto 0) => D(7 downto 0),
      Q(7 downto 0) => hist_sum_data_5(7 downto 0),
      hist_equ_href => hist_equ_href,
      hist_sum_runn_5 => hist_sum_runn_5,
      out_data(7 downto 0) => out_data(7 downto 0),
      out_href => out_href,
      pclk => pclk,
      s_hist_equ_en => s_hist_equ_en
    );
hist_ram_data: entity work.design_1_xil_vip_0_0_hist_ram
     port map (
      A(22 downto 0) => hist_sum_data_1_reg(22 downto 0),
      D(6) => hist_ram_data_n_4,
      D(5) => hist_ram_data_n_5,
      D(4) => hist_ram_data_n_6,
      D(3) => hist_ram_data_n_7,
      D(2) => hist_ram_data_n_8,
      D(1 downto 0) => \p_0_in__0\(1 downto 0),
      E(0) => hist_ram_data_n_2,
      O(3) => hist_ram_data_n_11,
      O(2) => hist_ram_data_n_12,
      O(1) => hist_ram_data_n_13,
      O(0) => hist_ram_data_n_14,
      Q(7 downto 0) => \hist_addr_reg__0\(7 downto 0),
      cur_ram02_out => cur_ram02_out,
      \hist_addr_reg[5]\ => \hist_addr[5]_i_2_n_0\,
      hist_equ_href => hist_equ_href,
      hist_sum_done => hist_sum_done,
      hist_sum_done_reg => hist_sum_done_i_2_n_0,
      hist_sum_runn_0 => hist_sum_runn_0,
      mem_reg(3) => hist_ram_data_n_15,
      mem_reg(2) => hist_ram_data_n_16,
      mem_reg(1) => hist_ram_data_n_17,
      mem_reg(0) => hist_ram_data_n_18,
      mem_reg_0(3) => hist_ram_data_n_19,
      mem_reg_0(2) => hist_ram_data_n_20,
      mem_reg_0(1) => hist_ram_data_n_21,
      mem_reg_0(0) => hist_ram_data_n_22,
      mem_reg_1(3) => hist_ram_data_n_23,
      mem_reg_1(2) => hist_ram_data_n_24,
      mem_reg_1(1) => hist_ram_data_n_25,
      mem_reg_1(0) => hist_ram_data_n_26,
      mem_reg_2(3) => hist_ram_data_n_27,
      mem_reg_2(2) => hist_ram_data_n_28,
      mem_reg_2(1) => hist_ram_data_n_29,
      mem_reg_2(0) => hist_ram_data_n_30,
      mem_reg_3(2) => hist_ram_data_n_31,
      mem_reg_3(1) => hist_ram_data_n_32,
      mem_reg_3(0) => hist_ram_data_n_33,
      out_data(7 downto 0) => out_data(7 downto 0),
      out_href => out_href,
      out_vsync => out_vsync,
      pclk => pclk,
      prev_flip_trigger_reg_0 => prev_vsync,
      prev_flip_trigger_reg_1 => hist_ram_data_n_3,
      rst_n => rst_n,
      s_hist_equ_en => s_hist_equ_en,
      s_hist_equ_en_reg => \^s_hist_equ_en_reg\,
      s_module_reset => s_module_reset
    );
hist_sum_addr_0_reg_c: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => '1',
      Q => hist_sum_addr_0_reg_c_n_0
    );
hist_sum_addr_1_reg_c: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_addr_0_reg_c_n_0,
      Q => hist_sum_addr_1_reg_c_n_0
    );
hist_sum_addr_2_reg_c: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_addr_1_reg_c_n_0,
      Q => hist_sum_addr_2_reg_c_n_0
    );
\hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\,
      Q => \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\
    );
\hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_addr_reg__0\(0),
      I1 => hist_sum_done,
      O => \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\
    );
\hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\,
      Q => \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\
    );
\hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_addr_reg__0\(1),
      I1 => hist_sum_done,
      O => \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\
    );
\hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\,
      Q => \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\
    );
\hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_addr_reg__0\(2),
      I1 => hist_sum_done,
      O => \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\
    );
\hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\,
      Q => \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\
    );
\hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_addr_reg__0\(3),
      I1 => hist_sum_done,
      O => \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\
    );
\hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\,
      Q => \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\
    );
\hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_addr_reg__0\(4),
      I1 => hist_sum_done,
      O => \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\
    );
\hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\,
      Q => \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\
    );
\hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_addr_reg__0\(5),
      I1 => hist_sum_done,
      O => \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\
    );
\hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\,
      Q => \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\
    );
\hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_addr_reg__0\(6),
      I1 => hist_sum_done,
      O => \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\
    );
\hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\,
      Q => \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\
    );
\hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_addr_reg__0\(7),
      I1 => hist_sum_done,
      O => \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0\
    );
hist_sum_addr_3_reg_c: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_addr_2_reg_c_n_0,
      Q => hist_sum_addr_3_reg_c_n_0
    );
\hist_sum_addr_4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\,
      Q => \hist_sum_addr_4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      R => '0'
    );
\hist_sum_addr_4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\,
      Q => \hist_sum_addr_4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      R => '0'
    );
\hist_sum_addr_4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\,
      Q => \hist_sum_addr_4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      R => '0'
    );
\hist_sum_addr_4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\,
      Q => \hist_sum_addr_4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      R => '0'
    );
\hist_sum_addr_4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\,
      Q => \hist_sum_addr_4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      R => '0'
    );
\hist_sum_addr_4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\,
      Q => \hist_sum_addr_4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      R => '0'
    );
\hist_sum_addr_4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\,
      Q => \hist_sum_addr_4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      R => '0'
    );
\hist_sum_addr_4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0\,
      Q => \hist_sum_addr_4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      R => '0'
    );
hist_sum_addr_4_reg_c: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_addr_3_reg_c_n_0,
      Q => hist_sum_addr_4_reg_c_n_0
    );
hist_sum_addr_4_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_addr_4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      I1 => hist_sum_addr_4_reg_c_n_0,
      O => hist_sum_addr_4_reg_gate_n_0
    );
\hist_sum_addr_4_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_addr_4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      I1 => hist_sum_addr_4_reg_c_n_0,
      O => \hist_sum_addr_4_reg_gate__0_n_0\
    );
\hist_sum_addr_4_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_addr_4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      I1 => hist_sum_addr_4_reg_c_n_0,
      O => \hist_sum_addr_4_reg_gate__1_n_0\
    );
\hist_sum_addr_4_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_addr_4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      I1 => hist_sum_addr_4_reg_c_n_0,
      O => \hist_sum_addr_4_reg_gate__2_n_0\
    );
\hist_sum_addr_4_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_addr_4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      I1 => hist_sum_addr_4_reg_c_n_0,
      O => \hist_sum_addr_4_reg_gate__3_n_0\
    );
\hist_sum_addr_4_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_addr_4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      I1 => hist_sum_addr_4_reg_c_n_0,
      O => \hist_sum_addr_4_reg_gate__4_n_0\
    );
\hist_sum_addr_4_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_addr_4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      I1 => hist_sum_addr_4_reg_c_n_0,
      O => \hist_sum_addr_4_reg_gate__5_n_0\
    );
\hist_sum_addr_4_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_addr_4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0\,
      I1 => hist_sum_addr_4_reg_c_n_0,
      O => \hist_sum_addr_4_reg_gate__6_n_0\
    );
\hist_sum_addr_5_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_addr_4_reg_gate__6_n_0\,
      Q => hist_sum_addr_5(0)
    );
\hist_sum_addr_5_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_addr_4_reg_gate__5_n_0\,
      Q => hist_sum_addr_5(1)
    );
\hist_sum_addr_5_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_addr_4_reg_gate__4_n_0\,
      Q => hist_sum_addr_5(2)
    );
\hist_sum_addr_5_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_addr_4_reg_gate__3_n_0\,
      Q => hist_sum_addr_5(3)
    );
\hist_sum_addr_5_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_addr_4_reg_gate__2_n_0\,
      Q => hist_sum_addr_5(4)
    );
\hist_sum_addr_5_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_addr_4_reg_gate__1_n_0\,
      Q => hist_sum_addr_5(5)
    );
\hist_sum_addr_5_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_addr_4_reg_gate__0_n_0\,
      Q => hist_sum_addr_5(6)
    );
\hist_sum_addr_5_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_addr_4_reg_gate_n_0,
      Q => hist_sum_addr_5(7)
    );
\hist_sum_data_1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_14,
      Q => hist_sum_data_1_reg(0)
    );
\hist_sum_data_1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_20,
      Q => hist_sum_data_1_reg(10)
    );
\hist_sum_data_1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_19,
      Q => hist_sum_data_1_reg(11)
    );
\hist_sum_data_1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_26,
      Q => hist_sum_data_1_reg(12)
    );
\hist_sum_data_1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_25,
      Q => hist_sum_data_1_reg(13)
    );
\hist_sum_data_1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_24,
      Q => hist_sum_data_1_reg(14)
    );
\hist_sum_data_1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_23,
      Q => hist_sum_data_1_reg(15)
    );
\hist_sum_data_1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_30,
      Q => hist_sum_data_1_reg(16)
    );
\hist_sum_data_1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_29,
      Q => hist_sum_data_1_reg(17)
    );
\hist_sum_data_1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_28,
      Q => hist_sum_data_1_reg(18)
    );
\hist_sum_data_1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_27,
      Q => hist_sum_data_1_reg(19)
    );
\hist_sum_data_1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_13,
      Q => hist_sum_data_1_reg(1)
    );
\hist_sum_data_1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_33,
      Q => hist_sum_data_1_reg(20)
    );
\hist_sum_data_1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_32,
      Q => hist_sum_data_1_reg(21)
    );
\hist_sum_data_1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_31,
      Q => hist_sum_data_1_reg(22)
    );
\hist_sum_data_1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_12,
      Q => hist_sum_data_1_reg(2)
    );
\hist_sum_data_1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_11,
      Q => hist_sum_data_1_reg(3)
    );
\hist_sum_data_1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_18,
      Q => hist_sum_data_1_reg(4)
    );
\hist_sum_data_1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_17,
      Q => hist_sum_data_1_reg(5)
    );
\hist_sum_data_1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_16,
      Q => hist_sum_data_1_reg(6)
    );
\hist_sum_data_1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_15,
      Q => hist_sum_data_1_reg(7)
    );
\hist_sum_data_1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_22,
      Q => hist_sum_data_1_reg(8)
    );
\hist_sum_data_1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_21,
      Q => hist_sum_data_1_reg(9)
    );
hist_sum_data_20: unisim.vcomponents.DSP48E1
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
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 23) => B"0000000",
      A(22 downto 0) => hist_sum_data_1_reg(22 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_hist_sum_data_20_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16) => hist_sum_data_21(30),
      B(15) => hist_sum_data_21(30),
      B(14) => hist_sum_data_21(30),
      B(13) => hist_sum_data_21(30),
      B(12) => hist_sum_data_21(30),
      B(11) => hist_sum_data_21(30),
      B(10) => hist_sum_data_21(30),
      B(9) => hist_sum_data_21(30),
      B(8) => hist_sum_data_21(30),
      B(7 downto 0) => hist_sum_data_21(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_hist_sum_data_20_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_hist_sum_data_20_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_hist_sum_data_20_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_hist_sum_data_20_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_hist_sum_data_20_OVERFLOW_UNCONNECTED,
      P(47) => hist_sum_data_20_n_58,
      P(46) => hist_sum_data_20_n_59,
      P(45) => hist_sum_data_20_n_60,
      P(44) => hist_sum_data_20_n_61,
      P(43) => hist_sum_data_20_n_62,
      P(42) => hist_sum_data_20_n_63,
      P(41) => hist_sum_data_20_n_64,
      P(40) => hist_sum_data_20_n_65,
      P(39) => hist_sum_data_20_n_66,
      P(38) => hist_sum_data_20_n_67,
      P(37) => hist_sum_data_20_n_68,
      P(36) => hist_sum_data_20_n_69,
      P(35) => hist_sum_data_20_n_70,
      P(34) => hist_sum_data_20_n_71,
      P(33) => hist_sum_data_20_n_72,
      P(32) => hist_sum_data_20_n_73,
      P(31) => hist_sum_data_20_n_74,
      P(30) => hist_sum_data_20_n_75,
      P(29) => hist_sum_data_20_n_76,
      P(28) => hist_sum_data_20_n_77,
      P(27) => hist_sum_data_20_n_78,
      P(26) => hist_sum_data_20_n_79,
      P(25) => hist_sum_data_20_n_80,
      P(24) => hist_sum_data_20_n_81,
      P(23) => hist_sum_data_20_n_82,
      P(22) => hist_sum_data_20_n_83,
      P(21) => hist_sum_data_20_n_84,
      P(20) => hist_sum_data_20_n_85,
      P(19) => hist_sum_data_20_n_86,
      P(18) => hist_sum_data_20_n_87,
      P(17) => hist_sum_data_20_n_88,
      P(16) => hist_sum_data_20_n_89,
      P(15) => hist_sum_data_20_n_90,
      P(14) => hist_sum_data_20_n_91,
      P(13) => hist_sum_data_20_n_92,
      P(12) => hist_sum_data_20_n_93,
      P(11) => hist_sum_data_20_n_94,
      P(10) => hist_sum_data_20_n_95,
      P(9) => hist_sum_data_20_n_96,
      P(8) => hist_sum_data_20_n_97,
      P(7) => hist_sum_data_20_n_98,
      P(6) => hist_sum_data_20_n_99,
      P(5) => hist_sum_data_20_n_100,
      P(4) => hist_sum_data_20_n_101,
      P(3) => hist_sum_data_20_n_102,
      P(2) => hist_sum_data_20_n_103,
      P(1) => hist_sum_data_20_n_104,
      P(0) => hist_sum_data_20_n_105,
      PATTERNBDETECT => NLW_hist_sum_data_20_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_hist_sum_data_20_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => hist_sum_data_20_n_106,
      PCOUT(46) => hist_sum_data_20_n_107,
      PCOUT(45) => hist_sum_data_20_n_108,
      PCOUT(44) => hist_sum_data_20_n_109,
      PCOUT(43) => hist_sum_data_20_n_110,
      PCOUT(42) => hist_sum_data_20_n_111,
      PCOUT(41) => hist_sum_data_20_n_112,
      PCOUT(40) => hist_sum_data_20_n_113,
      PCOUT(39) => hist_sum_data_20_n_114,
      PCOUT(38) => hist_sum_data_20_n_115,
      PCOUT(37) => hist_sum_data_20_n_116,
      PCOUT(36) => hist_sum_data_20_n_117,
      PCOUT(35) => hist_sum_data_20_n_118,
      PCOUT(34) => hist_sum_data_20_n_119,
      PCOUT(33) => hist_sum_data_20_n_120,
      PCOUT(32) => hist_sum_data_20_n_121,
      PCOUT(31) => hist_sum_data_20_n_122,
      PCOUT(30) => hist_sum_data_20_n_123,
      PCOUT(29) => hist_sum_data_20_n_124,
      PCOUT(28) => hist_sum_data_20_n_125,
      PCOUT(27) => hist_sum_data_20_n_126,
      PCOUT(26) => hist_sum_data_20_n_127,
      PCOUT(25) => hist_sum_data_20_n_128,
      PCOUT(24) => hist_sum_data_20_n_129,
      PCOUT(23) => hist_sum_data_20_n_130,
      PCOUT(22) => hist_sum_data_20_n_131,
      PCOUT(21) => hist_sum_data_20_n_132,
      PCOUT(20) => hist_sum_data_20_n_133,
      PCOUT(19) => hist_sum_data_20_n_134,
      PCOUT(18) => hist_sum_data_20_n_135,
      PCOUT(17) => hist_sum_data_20_n_136,
      PCOUT(16) => hist_sum_data_20_n_137,
      PCOUT(15) => hist_sum_data_20_n_138,
      PCOUT(14) => hist_sum_data_20_n_139,
      PCOUT(13) => hist_sum_data_20_n_140,
      PCOUT(12) => hist_sum_data_20_n_141,
      PCOUT(11) => hist_sum_data_20_n_142,
      PCOUT(10) => hist_sum_data_20_n_143,
      PCOUT(9) => hist_sum_data_20_n_144,
      PCOUT(8) => hist_sum_data_20_n_145,
      PCOUT(7) => hist_sum_data_20_n_146,
      PCOUT(6) => hist_sum_data_20_n_147,
      PCOUT(5) => hist_sum_data_20_n_148,
      PCOUT(4) => hist_sum_data_20_n_149,
      PCOUT(3) => hist_sum_data_20_n_150,
      PCOUT(2) => hist_sum_data_20_n_151,
      PCOUT(1) => hist_sum_data_20_n_152,
      PCOUT(0) => hist_sum_data_20_n_153,
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
      UNDERFLOW => NLW_hist_sum_data_20_UNDERFLOW_UNCONNECTED
    );
\hist_sum_data_20__0\: unisim.vcomponents.DSP48E1
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
      A(29 downto 23) => B"0000000",
      A(22 downto 0) => hist_sum_data_1_reg(22 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_hist_sum_data_20__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 14) => B"0000",
      B(13) => hist_sum_data_21(30),
      B(12) => hist_sum_data_21(30),
      B(11) => hist_sum_data_21(30),
      B(10) => hist_sum_data_21(30),
      B(9) => hist_sum_data_21(30),
      B(8) => hist_sum_data_21(30),
      B(7) => hist_sum_data_21(30),
      B(6) => hist_sum_data_21(30),
      B(5) => hist_sum_data_21(30),
      B(4) => hist_sum_data_21(30),
      B(3) => hist_sum_data_21(30),
      B(2) => hist_sum_data_21(30),
      B(1) => hist_sum_data_21(30),
      B(0) => hist_sum_data_21(30),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_hist_sum_data_20__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_hist_sum_data_20__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_hist_sum_data_20__0_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_hist_sum_data_20__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_hist_sum_data_20__0_OVERFLOW_UNCONNECTED\,
      P(47) => \hist_sum_data_20__0_n_58\,
      P(46) => \hist_sum_data_20__0_n_59\,
      P(45) => \hist_sum_data_20__0_n_60\,
      P(44) => \hist_sum_data_20__0_n_61\,
      P(43) => \hist_sum_data_20__0_n_62\,
      P(42) => \hist_sum_data_20__0_n_63\,
      P(41) => \hist_sum_data_20__0_n_64\,
      P(40) => \hist_sum_data_20__0_n_65\,
      P(39) => \hist_sum_data_20__0_n_66\,
      P(38) => \hist_sum_data_20__0_n_67\,
      P(37) => \hist_sum_data_20__0_n_68\,
      P(36) => \hist_sum_data_20__0_n_69\,
      P(35) => \hist_sum_data_20__0_n_70\,
      P(34) => \hist_sum_data_20__0_n_71\,
      P(33) => \hist_sum_data_20__0_n_72\,
      P(32) => \hist_sum_data_20__0_n_73\,
      P(31) => \hist_sum_data_20__0_n_74\,
      P(30) => \hist_sum_data_20__0_n_75\,
      P(29) => \hist_sum_data_20__0_n_76\,
      P(28) => \hist_sum_data_20__0_n_77\,
      P(27) => \hist_sum_data_20__0_n_78\,
      P(26) => \hist_sum_data_20__0_n_79\,
      P(25) => \hist_sum_data_20__0_n_80\,
      P(24) => \hist_sum_data_20__0_n_81\,
      P(23) => \hist_sum_data_20__0_n_82\,
      P(22) => \hist_sum_data_20__0_n_83\,
      P(21) => \hist_sum_data_20__0_n_84\,
      P(20) => \hist_sum_data_20__0_n_85\,
      P(19) => \hist_sum_data_20__0_n_86\,
      P(18) => \hist_sum_data_20__0_n_87\,
      P(17) => \hist_sum_data_20__0_n_88\,
      P(16) => \hist_sum_data_20__0_n_89\,
      P(15) => \hist_sum_data_20__0_n_90\,
      P(14) => \hist_sum_data_20__0_n_91\,
      P(13) => \hist_sum_data_20__0_n_92\,
      P(12) => \hist_sum_data_20__0_n_93\,
      P(11) => \hist_sum_data_20__0_n_94\,
      P(10) => \hist_sum_data_20__0_n_95\,
      P(9) => \hist_sum_data_20__0_n_96\,
      P(8) => \hist_sum_data_20__0_n_97\,
      P(7) => \hist_sum_data_20__0_n_98\,
      P(6) => \hist_sum_data_20__0_n_99\,
      P(5) => \hist_sum_data_20__0_n_100\,
      P(4) => \hist_sum_data_20__0_n_101\,
      P(3) => \hist_sum_data_20__0_n_102\,
      P(2) => \hist_sum_data_20__0_n_103\,
      P(1) => \hist_sum_data_20__0_n_104\,
      P(0) => \hist_sum_data_20__0_n_105\,
      PATTERNBDETECT => \NLW_hist_sum_data_20__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_hist_sum_data_20__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => hist_sum_data_20_n_106,
      PCIN(46) => hist_sum_data_20_n_107,
      PCIN(45) => hist_sum_data_20_n_108,
      PCIN(44) => hist_sum_data_20_n_109,
      PCIN(43) => hist_sum_data_20_n_110,
      PCIN(42) => hist_sum_data_20_n_111,
      PCIN(41) => hist_sum_data_20_n_112,
      PCIN(40) => hist_sum_data_20_n_113,
      PCIN(39) => hist_sum_data_20_n_114,
      PCIN(38) => hist_sum_data_20_n_115,
      PCIN(37) => hist_sum_data_20_n_116,
      PCIN(36) => hist_sum_data_20_n_117,
      PCIN(35) => hist_sum_data_20_n_118,
      PCIN(34) => hist_sum_data_20_n_119,
      PCIN(33) => hist_sum_data_20_n_120,
      PCIN(32) => hist_sum_data_20_n_121,
      PCIN(31) => hist_sum_data_20_n_122,
      PCIN(30) => hist_sum_data_20_n_123,
      PCIN(29) => hist_sum_data_20_n_124,
      PCIN(28) => hist_sum_data_20_n_125,
      PCIN(27) => hist_sum_data_20_n_126,
      PCIN(26) => hist_sum_data_20_n_127,
      PCIN(25) => hist_sum_data_20_n_128,
      PCIN(24) => hist_sum_data_20_n_129,
      PCIN(23) => hist_sum_data_20_n_130,
      PCIN(22) => hist_sum_data_20_n_131,
      PCIN(21) => hist_sum_data_20_n_132,
      PCIN(20) => hist_sum_data_20_n_133,
      PCIN(19) => hist_sum_data_20_n_134,
      PCIN(18) => hist_sum_data_20_n_135,
      PCIN(17) => hist_sum_data_20_n_136,
      PCIN(16) => hist_sum_data_20_n_137,
      PCIN(15) => hist_sum_data_20_n_138,
      PCIN(14) => hist_sum_data_20_n_139,
      PCIN(13) => hist_sum_data_20_n_140,
      PCIN(12) => hist_sum_data_20_n_141,
      PCIN(11) => hist_sum_data_20_n_142,
      PCIN(10) => hist_sum_data_20_n_143,
      PCIN(9) => hist_sum_data_20_n_144,
      PCIN(8) => hist_sum_data_20_n_145,
      PCIN(7) => hist_sum_data_20_n_146,
      PCIN(6) => hist_sum_data_20_n_147,
      PCIN(5) => hist_sum_data_20_n_148,
      PCIN(4) => hist_sum_data_20_n_149,
      PCIN(3) => hist_sum_data_20_n_150,
      PCIN(2) => hist_sum_data_20_n_151,
      PCIN(1) => hist_sum_data_20_n_152,
      PCIN(0) => hist_sum_data_20_n_153,
      PCOUT(47 downto 0) => \NLW_hist_sum_data_20__0_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_hist_sum_data_20__0_UNDERFLOW_UNCONNECTED\
    );
hist_sum_data_20_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => hist_sum_data_20_i_2_n_0,
      CO(3 downto 0) => NLW_hist_sum_data_20_i_1_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_hist_sum_data_20_i_1_O_UNCONNECTED(3 downto 1),
      O(0) => hist_sum_data_21(30),
      S(3 downto 0) => B"0001"
    );
hist_sum_data_20_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(1),
      I1 => hist_sum_data_20_0(1),
      O => hist_sum_data_20_i_10_n_0
    );
hist_sum_data_20_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(0),
      I1 => hist_sum_data_20_0(0),
      O => hist_sum_data_20_i_11_n_0
    );
hist_sum_data_20_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => hist_sum_data_20_i_3_n_0,
      CO(3) => hist_sum_data_20_i_2_n_0,
      CO(2) => hist_sum_data_20_i_2_n_1,
      CO(1) => hist_sum_data_20_i_2_n_2,
      CO(0) => hist_sum_data_20_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => hist_sum_data_21(7 downto 4),
      S(3) => hist_sum_data_20_i_4_n_0,
      S(2) => hist_sum_data_20_i_5_n_0,
      S(1) => hist_sum_data_20_i_6_n_0,
      S(0) => hist_sum_data_20_i_7_n_0
    );
hist_sum_data_20_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => hist_sum_data_20_i_3_n_0,
      CO(2) => hist_sum_data_20_i_3_n_1,
      CO(1) => hist_sum_data_20_i_3_n_2,
      CO(0) => hist_sum_data_20_i_3_n_3,
      CYINIT => '1',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => hist_sum_data_21(3 downto 0),
      S(3) => hist_sum_data_20_i_8_n_0,
      S(2) => hist_sum_data_20_i_9_n_0,
      S(1) => hist_sum_data_20_i_10_n_0,
      S(0) => hist_sum_data_20_i_11_n_0
    );
hist_sum_data_20_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(7),
      I1 => hist_sum_data_20_0(7),
      O => hist_sum_data_20_i_4_n_0
    );
hist_sum_data_20_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(6),
      I1 => hist_sum_data_20_0(6),
      O => hist_sum_data_20_i_5_n_0
    );
hist_sum_data_20_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(5),
      I1 => hist_sum_data_20_0(5),
      O => hist_sum_data_20_i_6_n_0
    );
hist_sum_data_20_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(4),
      I1 => hist_sum_data_20_0(4),
      O => hist_sum_data_20_i_7_n_0
    );
hist_sum_data_20_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(3),
      I1 => hist_sum_data_20_0(3),
      O => hist_sum_data_20_i_8_n_0
    );
hist_sum_data_20_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(2),
      I1 => hist_sum_data_20_0(2),
      O => hist_sum_data_20_i_9_n_0
    );
\hist_sum_data_2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_105,
      Q => \hist_sum_data_2_reg__0\(0)
    );
\hist_sum_data_2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_95,
      Q => \hist_sum_data_2_reg__0\(10)
    );
\hist_sum_data_2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_94,
      Q => \hist_sum_data_2_reg__0\(11)
    );
\hist_sum_data_2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_93,
      Q => \hist_sum_data_2_reg__0\(12)
    );
\hist_sum_data_2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_92,
      Q => \hist_sum_data_2_reg__0\(13)
    );
\hist_sum_data_2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_91,
      Q => \hist_sum_data_2_reg__0\(14)
    );
\hist_sum_data_2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_90,
      Q => \hist_sum_data_2_reg__0\(15)
    );
\hist_sum_data_2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_89,
      Q => \hist_sum_data_2_reg__0\(16)
    );
\hist_sum_data_2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_104,
      Q => \hist_sum_data_2_reg__0\(1)
    );
\hist_sum_data_2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_103,
      Q => \hist_sum_data_2_reg__0\(2)
    );
\hist_sum_data_2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_102,
      Q => \hist_sum_data_2_reg__0\(3)
    );
\hist_sum_data_2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_101,
      Q => \hist_sum_data_2_reg__0\(4)
    );
\hist_sum_data_2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_100,
      Q => \hist_sum_data_2_reg__0\(5)
    );
\hist_sum_data_2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_99,
      Q => \hist_sum_data_2_reg__0\(6)
    );
\hist_sum_data_2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_98,
      Q => \hist_sum_data_2_reg__0\(7)
    );
\hist_sum_data_2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_97,
      Q => \hist_sum_data_2_reg__0\(8)
    );
\hist_sum_data_2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_data_20_n_96,
      Q => \hist_sum_data_2_reg__0\(9)
    );
\hist_sum_data_3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_2_n_4\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[3]_i_2_n_7\,
      O => \hist_sum_data_3[0]_i_1_n_0\
    );
\hist_sum_data_3[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_6_n_0\,
      I1 => \hist_sum_data_3[0]_i_25_n_0\,
      I2 => \hist_sum_data_2_reg__0\(10),
      I3 => \hist_sum_data_3_reg[0]_i_24_n_5\,
      I4 => \hist_sum_data_3_reg[0]_i_23_n_5\,
      I5 => \hist_sum_data_3_reg[0]_i_22_n_5\,
      O => \hist_sum_data_3[0]_i_10_n_0\
    );
\hist_sum_data_3[0]_i_100\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_138_n_7\,
      I1 => \hist_sum_data_3_reg[0]_i_109_n_7\,
      I2 => \hist_sum_data_3_reg[0]_i_110_n_7\,
      O => \hist_sum_data_3[0]_i_100_n_0\
    );
\hist_sum_data_3[0]_i_101\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_139_n_4\,
      I1 => \hist_sum_data_3_reg[0]_i_140_n_4\,
      O => \hist_sum_data_3[0]_i_101_n_0\
    );
\hist_sum_data_3[0]_i_102\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_140_n_5\,
      I1 => \hist_sum_data_3_reg[0]_i_139_n_5\,
      O => \hist_sum_data_3[0]_i_102_n_0\
    );
\hist_sum_data_3[0]_i_103\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_140_n_6\,
      I1 => \hist_sum_data_3_reg[0]_i_139_n_6\,
      O => \hist_sum_data_3[0]_i_103_n_0\
    );
\hist_sum_data_3[0]_i_104\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_108_n_6\,
      I1 => \hist_sum_data_3_reg[0]_i_109_n_6\,
      I2 => \hist_sum_data_3_reg[0]_i_110_n_6\,
      I3 => \hist_sum_data_3[0]_i_100_n_0\,
      O => \hist_sum_data_3[0]_i_104_n_0\
    );
\hist_sum_data_3[0]_i_105\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_138_n_7\,
      I1 => \hist_sum_data_3_reg[0]_i_109_n_7\,
      I2 => \hist_sum_data_3_reg[0]_i_110_n_7\,
      I3 => \hist_sum_data_3[0]_i_101_n_0\,
      O => \hist_sum_data_3[0]_i_105_n_0\
    );
\hist_sum_data_3[0]_i_106\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_139_n_4\,
      I1 => \hist_sum_data_3_reg[0]_i_140_n_4\,
      I2 => \hist_sum_data_3_reg[0]_i_140_n_5\,
      I3 => \hist_sum_data_3_reg[0]_i_139_n_5\,
      O => \hist_sum_data_3[0]_i_106_n_0\
    );
\hist_sum_data_3[0]_i_107\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_140_n_6\,
      I1 => \hist_sum_data_3_reg[0]_i_139_n_6\,
      I2 => \hist_sum_data_3_reg[0]_i_139_n_5\,
      I3 => \hist_sum_data_3_reg[0]_i_140_n_5\,
      O => \hist_sum_data_3[0]_i_107_n_0\
    );
\hist_sum_data_3[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_7_n_0\,
      I1 => \hist_sum_data_3[0]_i_26_n_0\,
      I2 => \hist_sum_data_2_reg__0\(9),
      I3 => \hist_sum_data_3_reg[0]_i_24_n_6\,
      I4 => \hist_sum_data_3_reg[0]_i_23_n_6\,
      I5 => \hist_sum_data_3_reg[0]_i_22_n_6\,
      O => \hist_sum_data_3[0]_i_11_n_0\
    );
\hist_sum_data_3[0]_i_111\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(16),
      I1 => \hist_sum_data_2_reg__0\(14),
      I2 => \hist_sum_data_2_reg__0\(18),
      I3 => \hist_sum_data_2_reg__0\(19),
      I4 => \hist_sum_data_2_reg__0\(15),
      I5 => \hist_sum_data_2_reg__0\(17),
      O => \hist_sum_data_3[0]_i_111_n_0\
    );
\hist_sum_data_3[0]_i_112\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(15),
      I1 => \hist_sum_data_2_reg__0\(13),
      I2 => \hist_sum_data_2_reg__0\(17),
      I3 => \hist_sum_data_2_reg__0\(18),
      I4 => \hist_sum_data_2_reg__0\(14),
      I5 => \hist_sum_data_2_reg__0\(16),
      O => \hist_sum_data_3[0]_i_112_n_0\
    );
\hist_sum_data_3[0]_i_113\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(14),
      I1 => \hist_sum_data_2_reg__0\(12),
      I2 => \hist_sum_data_2_reg__0\(16),
      I3 => \hist_sum_data_2_reg__0\(17),
      I4 => \hist_sum_data_2_reg__0\(13),
      I5 => \hist_sum_data_2_reg__0\(15),
      O => \hist_sum_data_3[0]_i_113_n_0\
    );
\hist_sum_data_3[0]_i_114\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(13),
      I1 => \hist_sum_data_2_reg__0\(11),
      I2 => \hist_sum_data_2_reg__0\(15),
      I3 => \hist_sum_data_2_reg__0\(16),
      I4 => \hist_sum_data_2_reg__0\(12),
      I5 => \hist_sum_data_2_reg__0\(14),
      O => \hist_sum_data_3[0]_i_114_n_0\
    );
\hist_sum_data_3[0]_i_115\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(10),
      I1 => \hist_sum_data_2_reg__0\(8),
      I2 => \hist_sum_data_2_reg__0\(13),
      O => \hist_sum_data_3[0]_i_115_n_0\
    );
\hist_sum_data_3[0]_i_116\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(9),
      I1 => \hist_sum_data_2_reg__0\(7),
      I2 => \hist_sum_data_2_reg__0\(12),
      O => \hist_sum_data_3[0]_i_116_n_0\
    );
\hist_sum_data_3[0]_i_117\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(8),
      I1 => \hist_sum_data_2_reg__0\(6),
      I2 => \hist_sum_data_2_reg__0\(11),
      O => \hist_sum_data_3[0]_i_117_n_0\
    );
\hist_sum_data_3[0]_i_118\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(7),
      I1 => \hist_sum_data_2_reg__0\(5),
      I2 => \hist_sum_data_2_reg__0\(10),
      O => \hist_sum_data_3[0]_i_118_n_0\
    );
\hist_sum_data_3[0]_i_119\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(13),
      I1 => \hist_sum_data_2_reg__0\(8),
      I2 => \hist_sum_data_2_reg__0\(10),
      I3 => \hist_sum_data_2_reg__0\(9),
      I4 => \hist_sum_data_2_reg__0\(11),
      I5 => \hist_sum_data_2_reg__0\(14),
      O => \hist_sum_data_3[0]_i_119_n_0\
    );
\hist_sum_data_3[0]_i_120\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(12),
      I1 => \hist_sum_data_2_reg__0\(7),
      I2 => \hist_sum_data_2_reg__0\(9),
      I3 => \hist_sum_data_2_reg__0\(8),
      I4 => \hist_sum_data_2_reg__0\(10),
      I5 => \hist_sum_data_2_reg__0\(13),
      O => \hist_sum_data_3[0]_i_120_n_0\
    );
\hist_sum_data_3[0]_i_121\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(11),
      I1 => \hist_sum_data_2_reg__0\(6),
      I2 => \hist_sum_data_2_reg__0\(8),
      I3 => \hist_sum_data_2_reg__0\(7),
      I4 => \hist_sum_data_2_reg__0\(9),
      I5 => \hist_sum_data_2_reg__0\(12),
      O => \hist_sum_data_3[0]_i_121_n_0\
    );
\hist_sum_data_3[0]_i_122\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(10),
      I1 => \hist_sum_data_2_reg__0\(5),
      I2 => \hist_sum_data_2_reg__0\(7),
      I3 => \hist_sum_data_2_reg__0\(6),
      I4 => \hist_sum_data_2_reg__0\(8),
      I5 => \hist_sum_data_2_reg__0\(11),
      O => \hist_sum_data_3[0]_i_122_n_0\
    );
\hist_sum_data_3[0]_i_123\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(6),
      I1 => \hist_sum_data_2_reg__0\(2),
      I2 => \hist_sum_data_2_reg__0\(4),
      O => \hist_sum_data_3[0]_i_123_n_0\
    );
\hist_sum_data_3[0]_i_124\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(5),
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_2_reg__0\(3),
      O => \hist_sum_data_3[0]_i_124_n_0\
    );
\hist_sum_data_3[0]_i_125\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(5),
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_2_reg__0\(3),
      O => \hist_sum_data_3[0]_i_125_n_0\
    );
\hist_sum_data_3[0]_i_126\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(4),
      I1 => \hist_sum_data_2_reg__0\(2),
      I2 => \hist_sum_data_2_reg__0\(6),
      I3 => \hist_sum_data_2_reg__0\(7),
      I4 => \hist_sum_data_2_reg__0\(3),
      I5 => \hist_sum_data_2_reg__0\(5),
      O => \hist_sum_data_3[0]_i_126_n_0\
    );
\hist_sum_data_3[0]_i_127\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(3),
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_2_reg__0\(5),
      I3 => \hist_sum_data_2_reg__0\(6),
      I4 => \hist_sum_data_2_reg__0\(2),
      I5 => \hist_sum_data_2_reg__0\(4),
      O => \hist_sum_data_3[0]_i_127_n_0\
    );
\hist_sum_data_3[0]_i_128\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(5),
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_2_reg__0\(3),
      I3 => \hist_sum_data_2_reg__0\(4),
      I4 => \hist_sum_data_2_reg__0\(0),
      O => \hist_sum_data_3[0]_i_128_n_0\
    );
\hist_sum_data_3[0]_i_129\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(0),
      I1 => \hist_sum_data_2_reg__0\(4),
      I2 => \hist_sum_data_2_reg__0\(2),
      O => \hist_sum_data_3[0]_i_129_n_0\
    );
\hist_sum_data_3[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(7),
      I1 => \hist_sum_data_3[0]_i_37_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_38_n_4\,
      I3 => \hist_sum_data_3_reg[0]_i_39_n_4\,
      I4 => \hist_sum_data_3_reg[0]_i_40_n_4\,
      O => \hist_sum_data_3[0]_i_13_n_0\
    );
\hist_sum_data_3[0]_i_130\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_140_n_7\,
      I1 => \hist_sum_data_3_reg[0]_i_139_n_7\,
      O => \hist_sum_data_3[0]_i_130_n_0\
    );
\hist_sum_data_3[0]_i_131\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_156_n_4\,
      I1 => \hist_sum_data_2_reg__0\(2),
      O => \hist_sum_data_3[0]_i_131_n_0\
    );
\hist_sum_data_3[0]_i_132\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_156_n_5\,
      I1 => \hist_sum_data_2_reg__0\(1),
      O => \hist_sum_data_3[0]_i_132_n_0\
    );
\hist_sum_data_3[0]_i_133\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_156_n_6\,
      I1 => \hist_sum_data_2_reg__0\(0),
      O => \hist_sum_data_3[0]_i_133_n_0\
    );
\hist_sum_data_3[0]_i_134\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_140_n_7\,
      I1 => \hist_sum_data_3_reg[0]_i_139_n_7\,
      I2 => \hist_sum_data_3_reg[0]_i_139_n_6\,
      I3 => \hist_sum_data_3_reg[0]_i_140_n_6\,
      O => \hist_sum_data_3[0]_i_134_n_0\
    );
\hist_sum_data_3[0]_i_135\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_156_n_4\,
      I1 => \hist_sum_data_2_reg__0\(2),
      I2 => \hist_sum_data_3_reg[0]_i_139_n_7\,
      I3 => \hist_sum_data_3_reg[0]_i_140_n_7\,
      O => \hist_sum_data_3[0]_i_135_n_0\
    );
\hist_sum_data_3[0]_i_136\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_156_n_5\,
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_2_reg__0\(2),
      I3 => \hist_sum_data_3_reg[0]_i_156_n_4\,
      O => \hist_sum_data_3[0]_i_136_n_0\
    );
\hist_sum_data_3[0]_i_137\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_156_n_6\,
      I1 => \hist_sum_data_2_reg__0\(0),
      I2 => \hist_sum_data_2_reg__0\(1),
      I3 => \hist_sum_data_3_reg[0]_i_156_n_5\,
      O => \hist_sum_data_3[0]_i_137_n_0\
    );
\hist_sum_data_3[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(6),
      I1 => \hist_sum_data_3[0]_i_41_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_38_n_5\,
      I3 => \hist_sum_data_3_reg[0]_i_39_n_5\,
      I4 => \hist_sum_data_3_reg[0]_i_40_n_5\,
      O => \hist_sum_data_3[0]_i_14_n_0\
    );
\hist_sum_data_3[0]_i_141\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(1),
      I1 => \hist_sum_data_2_reg__0\(3),
      O => \hist_sum_data_3[0]_i_141_n_0\
    );
\hist_sum_data_3[0]_i_142\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(0),
      I1 => \hist_sum_data_2_reg__0\(2),
      O => \hist_sum_data_3[0]_i_142_n_0\
    );
\hist_sum_data_3[0]_i_143\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(1),
      O => \hist_sum_data_3[0]_i_143_n_0\
    );
\hist_sum_data_3[0]_i_144\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(6),
      I1 => \hist_sum_data_2_reg__0\(4),
      I2 => \hist_sum_data_2_reg__0\(9),
      O => \hist_sum_data_3[0]_i_144_n_0\
    );
\hist_sum_data_3[0]_i_145\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(5),
      I1 => \hist_sum_data_2_reg__0\(3),
      I2 => \hist_sum_data_2_reg__0\(8),
      O => \hist_sum_data_3[0]_i_145_n_0\
    );
\hist_sum_data_3[0]_i_146\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(4),
      I1 => \hist_sum_data_2_reg__0\(2),
      I2 => \hist_sum_data_2_reg__0\(7),
      O => \hist_sum_data_3[0]_i_146_n_0\
    );
\hist_sum_data_3[0]_i_147\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(3),
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_2_reg__0\(6),
      O => \hist_sum_data_3[0]_i_147_n_0\
    );
\hist_sum_data_3[0]_i_148\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(9),
      I1 => \hist_sum_data_2_reg__0\(4),
      I2 => \hist_sum_data_2_reg__0\(6),
      I3 => \hist_sum_data_2_reg__0\(5),
      I4 => \hist_sum_data_2_reg__0\(7),
      I5 => \hist_sum_data_2_reg__0\(10),
      O => \hist_sum_data_3[0]_i_148_n_0\
    );
\hist_sum_data_3[0]_i_149\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(8),
      I1 => \hist_sum_data_2_reg__0\(3),
      I2 => \hist_sum_data_2_reg__0\(5),
      I3 => \hist_sum_data_2_reg__0\(4),
      I4 => \hist_sum_data_2_reg__0\(6),
      I5 => \hist_sum_data_2_reg__0\(9),
      O => \hist_sum_data_3[0]_i_149_n_0\
    );
\hist_sum_data_3[0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(5),
      I1 => \hist_sum_data_3[0]_i_42_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_38_n_6\,
      I3 => \hist_sum_data_3_reg[0]_i_39_n_6\,
      I4 => \hist_sum_data_3_reg[0]_i_40_n_6\,
      O => \hist_sum_data_3[0]_i_15_n_0\
    );
\hist_sum_data_3[0]_i_150\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(7),
      I1 => \hist_sum_data_2_reg__0\(2),
      I2 => \hist_sum_data_2_reg__0\(4),
      I3 => \hist_sum_data_2_reg__0\(3),
      I4 => \hist_sum_data_2_reg__0\(5),
      I5 => \hist_sum_data_2_reg__0\(8),
      O => \hist_sum_data_3[0]_i_150_n_0\
    );
\hist_sum_data_3[0]_i_151\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(6),
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_2_reg__0\(3),
      I3 => \hist_sum_data_2_reg__0\(2),
      I4 => \hist_sum_data_2_reg__0\(4),
      I5 => \hist_sum_data_2_reg__0\(7),
      O => \hist_sum_data_3[0]_i_151_n_0\
    );
\hist_sum_data_3[0]_i_152\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(12),
      I1 => \hist_sum_data_2_reg__0\(10),
      I2 => \hist_sum_data_2_reg__0\(14),
      I3 => \hist_sum_data_2_reg__0\(15),
      I4 => \hist_sum_data_2_reg__0\(11),
      I5 => \hist_sum_data_2_reg__0\(13),
      O => \hist_sum_data_3[0]_i_152_n_0\
    );
\hist_sum_data_3[0]_i_153\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(11),
      I1 => \hist_sum_data_2_reg__0\(9),
      I2 => \hist_sum_data_2_reg__0\(13),
      I3 => \hist_sum_data_2_reg__0\(14),
      I4 => \hist_sum_data_2_reg__0\(10),
      I5 => \hist_sum_data_2_reg__0\(12),
      O => \hist_sum_data_3[0]_i_153_n_0\
    );
\hist_sum_data_3[0]_i_154\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(10),
      I1 => \hist_sum_data_2_reg__0\(8),
      I2 => \hist_sum_data_2_reg__0\(12),
      I3 => \hist_sum_data_2_reg__0\(13),
      I4 => \hist_sum_data_2_reg__0\(9),
      I5 => \hist_sum_data_2_reg__0\(11),
      O => \hist_sum_data_3[0]_i_154_n_0\
    );
\hist_sum_data_3[0]_i_155\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(9),
      I1 => \hist_sum_data_2_reg__0\(7),
      I2 => \hist_sum_data_2_reg__0\(11),
      I3 => \hist_sum_data_2_reg__0\(12),
      I4 => \hist_sum_data_2_reg__0\(8),
      I5 => \hist_sum_data_2_reg__0\(10),
      O => \hist_sum_data_3[0]_i_155_n_0\
    );
\hist_sum_data_3[0]_i_157\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(1),
      I1 => \hist_sum_data_2_reg__0\(3),
      O => \hist_sum_data_3[0]_i_157_n_0\
    );
\hist_sum_data_3[0]_i_158\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(0),
      I1 => \hist_sum_data_2_reg__0\(2),
      O => \hist_sum_data_3[0]_i_158_n_0\
    );
\hist_sum_data_3[0]_i_159\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(1),
      O => \hist_sum_data_3[0]_i_159_n_0\
    );
\hist_sum_data_3[0]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(4),
      I1 => \hist_sum_data_3[0]_i_43_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_38_n_7\,
      I3 => \hist_sum_data_3_reg[0]_i_39_n_7\,
      I4 => \hist_sum_data_3_reg[0]_i_40_n_7\,
      O => \hist_sum_data_3[0]_i_16_n_0\
    );
\hist_sum_data_3[0]_i_160\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(2),
      I1 => \hist_sum_data_2_reg__0\(0),
      I2 => \hist_sum_data_2_reg__0\(5),
      O => \hist_sum_data_3[0]_i_160_n_0\
    );
\hist_sum_data_3[0]_i_161\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(2),
      I1 => \hist_sum_data_2_reg__0\(0),
      I2 => \hist_sum_data_2_reg__0\(5),
      O => \hist_sum_data_3[0]_i_161_n_0\
    );
\hist_sum_data_3[0]_i_162\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(3),
      I1 => \hist_sum_data_2_reg__0\(0),
      O => \hist_sum_data_3[0]_i_162_n_0\
    );
\hist_sum_data_3[0]_i_163\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(5),
      I1 => \hist_sum_data_2_reg__0\(0),
      I2 => \hist_sum_data_2_reg__0\(2),
      I3 => \hist_sum_data_2_reg__0\(3),
      I4 => \hist_sum_data_2_reg__0\(1),
      I5 => \hist_sum_data_2_reg__0\(6),
      O => \hist_sum_data_3[0]_i_163_n_0\
    );
\hist_sum_data_3[0]_i_164\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(2),
      I1 => \hist_sum_data_2_reg__0\(0),
      I2 => \hist_sum_data_2_reg__0\(5),
      I3 => \hist_sum_data_2_reg__0\(1),
      I4 => \hist_sum_data_2_reg__0\(4),
      O => \hist_sum_data_3[0]_i_164_n_0\
    );
\hist_sum_data_3[0]_i_165\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(0),
      I1 => \hist_sum_data_2_reg__0\(3),
      I2 => \hist_sum_data_2_reg__0\(1),
      I3 => \hist_sum_data_2_reg__0\(4),
      O => \hist_sum_data_3[0]_i_165_n_0\
    );
\hist_sum_data_3[0]_i_166\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(3),
      I1 => \hist_sum_data_2_reg__0\(0),
      O => \hist_sum_data_3[0]_i_166_n_0\
    );
\hist_sum_data_3[0]_i_167\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(8),
      I1 => \hist_sum_data_2_reg__0\(6),
      I2 => \hist_sum_data_2_reg__0\(10),
      I3 => \hist_sum_data_2_reg__0\(11),
      I4 => \hist_sum_data_2_reg__0\(7),
      I5 => \hist_sum_data_2_reg__0\(9),
      O => \hist_sum_data_3[0]_i_167_n_0\
    );
\hist_sum_data_3[0]_i_168\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(7),
      I1 => \hist_sum_data_2_reg__0\(5),
      I2 => \hist_sum_data_2_reg__0\(9),
      I3 => \hist_sum_data_2_reg__0\(10),
      I4 => \hist_sum_data_2_reg__0\(6),
      I5 => \hist_sum_data_2_reg__0\(8),
      O => \hist_sum_data_3[0]_i_168_n_0\
    );
\hist_sum_data_3[0]_i_169\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(6),
      I1 => \hist_sum_data_2_reg__0\(4),
      I2 => \hist_sum_data_2_reg__0\(8),
      I3 => \hist_sum_data_2_reg__0\(9),
      I4 => \hist_sum_data_2_reg__0\(5),
      I5 => \hist_sum_data_2_reg__0\(7),
      O => \hist_sum_data_3[0]_i_169_n_0\
    );
\hist_sum_data_3[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_13_n_0\,
      I1 => \hist_sum_data_3[0]_i_27_n_0\,
      I2 => \hist_sum_data_2_reg__0\(8),
      I3 => \hist_sum_data_3_reg[0]_i_24_n_7\,
      I4 => \hist_sum_data_3_reg[0]_i_23_n_7\,
      I5 => \hist_sum_data_3_reg[0]_i_22_n_7\,
      O => \hist_sum_data_3[0]_i_17_n_0\
    );
\hist_sum_data_3[0]_i_170\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(5),
      I1 => \hist_sum_data_2_reg__0\(3),
      I2 => \hist_sum_data_2_reg__0\(7),
      I3 => \hist_sum_data_2_reg__0\(8),
      I4 => \hist_sum_data_2_reg__0\(4),
      I5 => \hist_sum_data_2_reg__0\(6),
      O => \hist_sum_data_3[0]_i_170_n_0\
    );
\hist_sum_data_3[0]_i_171\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(5),
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_2_reg__0\(3),
      O => \hist_sum_data_3[0]_i_171_n_0\
    );
\hist_sum_data_3[0]_i_172\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(4),
      I1 => \hist_sum_data_2_reg__0\(2),
      I2 => \hist_sum_data_2_reg__0\(6),
      I3 => \hist_sum_data_2_reg__0\(7),
      I4 => \hist_sum_data_2_reg__0\(3),
      I5 => \hist_sum_data_2_reg__0\(5),
      O => \hist_sum_data_3[0]_i_172_n_0\
    );
\hist_sum_data_3[0]_i_173\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(3),
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_2_reg__0\(5),
      I3 => \hist_sum_data_2_reg__0\(6),
      I4 => \hist_sum_data_2_reg__0\(2),
      I5 => \hist_sum_data_2_reg__0\(4),
      O => \hist_sum_data_3[0]_i_173_n_0\
    );
\hist_sum_data_3[0]_i_174\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(5),
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_2_reg__0\(3),
      I3 => \hist_sum_data_2_reg__0\(4),
      I4 => \hist_sum_data_2_reg__0\(0),
      O => \hist_sum_data_3[0]_i_174_n_0\
    );
\hist_sum_data_3[0]_i_175\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(0),
      I1 => \hist_sum_data_2_reg__0\(4),
      I2 => \hist_sum_data_2_reg__0\(2),
      O => \hist_sum_data_3[0]_i_175_n_0\
    );
\hist_sum_data_3[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_14_n_0\,
      I1 => \hist_sum_data_3[0]_i_37_n_0\,
      I2 => \hist_sum_data_2_reg__0\(7),
      I3 => \hist_sum_data_3_reg[0]_i_40_n_4\,
      I4 => \hist_sum_data_3_reg[0]_i_39_n_4\,
      I5 => \hist_sum_data_3_reg[0]_i_38_n_4\,
      O => \hist_sum_data_3[0]_i_18_n_0\
    );
\hist_sum_data_3[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_15_n_0\,
      I1 => \hist_sum_data_3[0]_i_41_n_0\,
      I2 => \hist_sum_data_2_reg__0\(6),
      I3 => \hist_sum_data_3_reg[0]_i_40_n_5\,
      I4 => \hist_sum_data_3_reg[0]_i_39_n_5\,
      I5 => \hist_sum_data_3_reg[0]_i_38_n_5\,
      O => \hist_sum_data_3[0]_i_19_n_0\
    );
\hist_sum_data_3[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_16_n_0\,
      I1 => \hist_sum_data_3[0]_i_42_n_0\,
      I2 => \hist_sum_data_2_reg__0\(5),
      I3 => \hist_sum_data_3_reg[0]_i_40_n_6\,
      I4 => \hist_sum_data_3_reg[0]_i_39_n_6\,
      I5 => \hist_sum_data_3_reg[0]_i_38_n_6\,
      O => \hist_sum_data_3[0]_i_20_n_0\
    );
\hist_sum_data_3[0]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_12_n_7\,
      I1 => \hist_sum_data_3_reg[4]_i_14_n_7\,
      I2 => \hist_sum_data_3_reg[4]_i_13_n_7\,
      O => \hist_sum_data_3[0]_i_21_n_0\
    );
\hist_sum_data_3[0]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_22_n_4\,
      I1 => \hist_sum_data_3_reg[0]_i_24_n_4\,
      I2 => \hist_sum_data_3_reg[0]_i_23_n_4\,
      O => \hist_sum_data_3[0]_i_25_n_0\
    );
\hist_sum_data_3[0]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_22_n_5\,
      I1 => \hist_sum_data_3_reg[0]_i_24_n_5\,
      I2 => \hist_sum_data_3_reg[0]_i_23_n_5\,
      O => \hist_sum_data_3[0]_i_26_n_0\
    );
\hist_sum_data_3[0]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_22_n_6\,
      I1 => \hist_sum_data_3_reg[0]_i_24_n_6\,
      I2 => \hist_sum_data_3_reg[0]_i_23_n_6\,
      O => \hist_sum_data_3[0]_i_27_n_0\
    );
\hist_sum_data_3[0]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(3),
      I1 => \hist_sum_data_3[0]_i_73_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_74_n_4\,
      I3 => \hist_sum_data_3_reg[0]_i_75_n_4\,
      I4 => \hist_sum_data_3_reg[0]_i_76_n_4\,
      O => \hist_sum_data_3[0]_i_29_n_0\
    );
\hist_sum_data_3[0]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(2),
      I1 => \hist_sum_data_3[0]_i_77_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_74_n_5\,
      I3 => \hist_sum_data_3_reg[0]_i_75_n_5\,
      I4 => \hist_sum_data_3_reg[0]_i_76_n_5\,
      O => \hist_sum_data_3[0]_i_30_n_0\
    );
\hist_sum_data_3[0]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(1),
      I1 => \hist_sum_data_3[0]_i_78_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_74_n_6\,
      I3 => \hist_sum_data_3_reg[0]_i_75_n_6\,
      I4 => \hist_sum_data_3_reg[0]_i_76_n_6\,
      O => \hist_sum_data_3[0]_i_31_n_0\
    );
\hist_sum_data_3[0]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_74_n_6\,
      I1 => \hist_sum_data_3_reg[0]_i_75_n_6\,
      I2 => \hist_sum_data_3_reg[0]_i_76_n_6\,
      I3 => \hist_sum_data_2_reg__0\(1),
      I4 => \hist_sum_data_3[0]_i_78_n_0\,
      O => \hist_sum_data_3[0]_i_32_n_0\
    );
\hist_sum_data_3[0]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_29_n_0\,
      I1 => \hist_sum_data_3[0]_i_43_n_0\,
      I2 => \hist_sum_data_2_reg__0\(4),
      I3 => \hist_sum_data_3_reg[0]_i_40_n_7\,
      I4 => \hist_sum_data_3_reg[0]_i_39_n_7\,
      I5 => \hist_sum_data_3_reg[0]_i_38_n_7\,
      O => \hist_sum_data_3[0]_i_33_n_0\
    );
\hist_sum_data_3[0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_30_n_0\,
      I1 => \hist_sum_data_3[0]_i_73_n_0\,
      I2 => \hist_sum_data_2_reg__0\(3),
      I3 => \hist_sum_data_3_reg[0]_i_76_n_4\,
      I4 => \hist_sum_data_3_reg[0]_i_75_n_4\,
      I5 => \hist_sum_data_3_reg[0]_i_74_n_4\,
      O => \hist_sum_data_3[0]_i_34_n_0\
    );
\hist_sum_data_3[0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_31_n_0\,
      I1 => \hist_sum_data_3[0]_i_77_n_0\,
      I2 => \hist_sum_data_2_reg__0\(2),
      I3 => \hist_sum_data_3_reg[0]_i_76_n_5\,
      I4 => \hist_sum_data_3_reg[0]_i_75_n_5\,
      I5 => \hist_sum_data_3_reg[0]_i_74_n_5\,
      O => \hist_sum_data_3[0]_i_35_n_0\
    );
\hist_sum_data_3[0]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_78_n_0\,
      I1 => \hist_sum_data_2_reg__0\(1),
      I2 => \hist_sum_data_3_reg[0]_i_74_n_6\,
      I3 => \hist_sum_data_3_reg[0]_i_76_n_6\,
      I4 => \hist_sum_data_3_reg[0]_i_75_n_6\,
      I5 => \hist_sum_data_2_reg__0\(0),
      O => \hist_sum_data_3[0]_i_36_n_0\
    );
\hist_sum_data_3[0]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_22_n_7\,
      I1 => \hist_sum_data_3_reg[0]_i_24_n_7\,
      I2 => \hist_sum_data_3_reg[0]_i_23_n_7\,
      O => \hist_sum_data_3[0]_i_37_n_0\
    );
\hist_sum_data_3[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(11),
      I1 => \hist_sum_data_3[0]_i_21_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_22_n_4\,
      I3 => \hist_sum_data_3_reg[0]_i_23_n_4\,
      I4 => \hist_sum_data_3_reg[0]_i_24_n_4\,
      O => \hist_sum_data_3[0]_i_4_n_0\
    );
\hist_sum_data_3[0]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_38_n_4\,
      I1 => \hist_sum_data_3_reg[0]_i_40_n_4\,
      I2 => \hist_sum_data_3_reg[0]_i_39_n_4\,
      O => \hist_sum_data_3[0]_i_41_n_0\
    );
\hist_sum_data_3[0]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_38_n_5\,
      I1 => \hist_sum_data_3_reg[0]_i_40_n_5\,
      I2 => \hist_sum_data_3_reg[0]_i_39_n_5\,
      O => \hist_sum_data_3[0]_i_42_n_0\
    );
\hist_sum_data_3[0]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_38_n_6\,
      I1 => \hist_sum_data_3_reg[0]_i_40_n_6\,
      I2 => \hist_sum_data_3_reg[0]_i_39_n_6\,
      O => \hist_sum_data_3[0]_i_43_n_0\
    );
\hist_sum_data_3[0]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(24),
      I1 => \hist_sum_data_2_reg__0\(22),
      I2 => \hist_sum_data_2_reg__0\(26),
      I3 => \hist_sum_data_2_reg__0\(27),
      I4 => \hist_sum_data_2_reg__0\(23),
      I5 => \hist_sum_data_2_reg__0\(25),
      O => \hist_sum_data_3[0]_i_44_n_0\
    );
\hist_sum_data_3[0]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(23),
      I1 => \hist_sum_data_2_reg__0\(21),
      I2 => \hist_sum_data_2_reg__0\(25),
      I3 => \hist_sum_data_2_reg__0\(26),
      I4 => \hist_sum_data_2_reg__0\(22),
      I5 => \hist_sum_data_2_reg__0\(24),
      O => \hist_sum_data_3[0]_i_45_n_0\
    );
\hist_sum_data_3[0]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(22),
      I1 => \hist_sum_data_2_reg__0\(20),
      I2 => \hist_sum_data_2_reg__0\(24),
      I3 => \hist_sum_data_2_reg__0\(25),
      I4 => \hist_sum_data_2_reg__0\(21),
      I5 => \hist_sum_data_2_reg__0\(23),
      O => \hist_sum_data_3[0]_i_46_n_0\
    );
\hist_sum_data_3[0]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(21),
      I1 => \hist_sum_data_2_reg__0\(19),
      I2 => \hist_sum_data_2_reg__0\(23),
      I3 => \hist_sum_data_2_reg__0\(24),
      I4 => \hist_sum_data_2_reg__0\(20),
      I5 => \hist_sum_data_2_reg__0\(22),
      O => \hist_sum_data_3[0]_i_47_n_0\
    );
\hist_sum_data_3[0]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F270"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_104\,
      I2 => \hist_sum_data_2_reg__0\(16),
      I3 => \hist_sum_data_20__0_n_101\,
      O => \hist_sum_data_3[0]_i_48_n_0\
    );
\hist_sum_data_3[0]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F270"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_105\,
      I2 => \hist_sum_data_2_reg__0\(15),
      I3 => \hist_sum_data_20__0_n_102\,
      O => \hist_sum_data_3[0]_i_49_n_0\
    );
\hist_sum_data_3[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(10),
      I1 => \hist_sum_data_3[0]_i_25_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_22_n_5\,
      I3 => \hist_sum_data_3_reg[0]_i_23_n_5\,
      I4 => \hist_sum_data_3_reg[0]_i_24_n_5\,
      O => \hist_sum_data_3[0]_i_5_n_0\
    );
\hist_sum_data_3[0]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D444"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(16),
      I1 => \hist_sum_data_2_reg__0\(14),
      I2 => \hist_sum_data_3_reg[0]_0\,
      I3 => \hist_sum_data_20__0_n_103\,
      O => \hist_sum_data_3[0]_i_50_n_0\
    );
\hist_sum_data_3[0]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D444"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(15),
      I1 => \hist_sum_data_2_reg__0\(13),
      I2 => \hist_sum_data_3_reg[0]_0\,
      I3 => \hist_sum_data_20__0_n_104\,
      O => \hist_sum_data_3[0]_i_51_n_0\
    );
\hist_sum_data_3[0]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(21),
      I1 => \hist_sum_data_2_reg__0\(16),
      I2 => \hist_sum_data_2_reg__0\(18),
      I3 => \hist_sum_data_2_reg__0\(17),
      I4 => \hist_sum_data_2_reg__0\(19),
      I5 => \hist_sum_data_2_reg__0\(22),
      O => \hist_sum_data_3[0]_i_52_n_0\
    );
\hist_sum_data_3[0]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(20),
      I1 => \hist_sum_data_2_reg__0\(15),
      I2 => \hist_sum_data_2_reg__0\(17),
      I3 => \hist_sum_data_2_reg__0\(16),
      I4 => \hist_sum_data_2_reg__0\(18),
      I5 => \hist_sum_data_2_reg__0\(21),
      O => \hist_sum_data_3[0]_i_53_n_0\
    );
\hist_sum_data_3[0]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(19),
      I1 => \hist_sum_data_2_reg__0\(14),
      I2 => \hist_sum_data_2_reg__0\(16),
      I3 => \hist_sum_data_2_reg__0\(15),
      I4 => \hist_sum_data_2_reg__0\(17),
      I5 => \hist_sum_data_2_reg__0\(20),
      O => \hist_sum_data_3[0]_i_54_n_0\
    );
\hist_sum_data_3[0]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(18),
      I1 => \hist_sum_data_2_reg__0\(13),
      I2 => \hist_sum_data_2_reg__0\(15),
      I3 => \hist_sum_data_2_reg__0\(14),
      I4 => \hist_sum_data_2_reg__0\(16),
      I5 => \hist_sum_data_2_reg__0\(19),
      O => \hist_sum_data_3[0]_i_55_n_0\
    );
\hist_sum_data_3[0]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(14),
      I1 => \hist_sum_data_2_reg__0\(10),
      I2 => \hist_sum_data_2_reg__0\(12),
      O => \hist_sum_data_3[0]_i_56_n_0\
    );
\hist_sum_data_3[0]_i_57\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(13),
      I1 => \hist_sum_data_2_reg__0\(9),
      I2 => \hist_sum_data_2_reg__0\(11),
      O => \hist_sum_data_3[0]_i_57_n_0\
    );
\hist_sum_data_3[0]_i_58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(12),
      I1 => \hist_sum_data_2_reg__0\(8),
      I2 => \hist_sum_data_2_reg__0\(10),
      O => \hist_sum_data_3[0]_i_58_n_0\
    );
\hist_sum_data_3[0]_i_59\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(11),
      I1 => \hist_sum_data_2_reg__0\(7),
      I2 => \hist_sum_data_2_reg__0\(9),
      O => \hist_sum_data_3[0]_i_59_n_0\
    );
\hist_sum_data_3[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(9),
      I1 => \hist_sum_data_3[0]_i_26_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_22_n_6\,
      I3 => \hist_sum_data_3_reg[0]_i_23_n_6\,
      I4 => \hist_sum_data_3_reg[0]_i_24_n_6\,
      O => \hist_sum_data_3[0]_i_6_n_0\
    );
\hist_sum_data_3[0]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(12),
      I1 => \hist_sum_data_2_reg__0\(10),
      I2 => \hist_sum_data_2_reg__0\(14),
      I3 => \hist_sum_data_2_reg__0\(15),
      I4 => \hist_sum_data_2_reg__0\(11),
      I5 => \hist_sum_data_2_reg__0\(13),
      O => \hist_sum_data_3[0]_i_60_n_0\
    );
\hist_sum_data_3[0]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(11),
      I1 => \hist_sum_data_2_reg__0\(9),
      I2 => \hist_sum_data_2_reg__0\(13),
      I3 => \hist_sum_data_2_reg__0\(14),
      I4 => \hist_sum_data_2_reg__0\(10),
      I5 => \hist_sum_data_2_reg__0\(12),
      O => \hist_sum_data_3[0]_i_61_n_0\
    );
\hist_sum_data_3[0]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(10),
      I1 => \hist_sum_data_2_reg__0\(8),
      I2 => \hist_sum_data_2_reg__0\(12),
      I3 => \hist_sum_data_2_reg__0\(13),
      I4 => \hist_sum_data_2_reg__0\(9),
      I5 => \hist_sum_data_2_reg__0\(11),
      O => \hist_sum_data_3[0]_i_62_n_0\
    );
\hist_sum_data_3[0]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(9),
      I1 => \hist_sum_data_2_reg__0\(7),
      I2 => \hist_sum_data_2_reg__0\(11),
      I3 => \hist_sum_data_2_reg__0\(12),
      I4 => \hist_sum_data_2_reg__0\(8),
      I5 => \hist_sum_data_2_reg__0\(10),
      O => \hist_sum_data_3[0]_i_63_n_0\
    );
\hist_sum_data_3[0]_i_65\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_75_n_6\,
      I1 => \hist_sum_data_3_reg[0]_i_76_n_6\,
      I2 => \hist_sum_data_3_reg[0]_i_74_n_6\,
      I3 => \hist_sum_data_2_reg__0\(0),
      O => \hist_sum_data_3[0]_i_65_n_0\
    );
\hist_sum_data_3[0]_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_108_n_4\,
      I1 => \hist_sum_data_3_reg[0]_i_109_n_4\,
      I2 => \hist_sum_data_3_reg[0]_i_110_n_4\,
      O => \hist_sum_data_3[0]_i_66_n_0\
    );
\hist_sum_data_3[0]_i_67\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_108_n_5\,
      I1 => \hist_sum_data_3_reg[0]_i_109_n_5\,
      I2 => \hist_sum_data_3_reg[0]_i_110_n_5\,
      O => \hist_sum_data_3[0]_i_67_n_0\
    );
\hist_sum_data_3[0]_i_68\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_108_n_6\,
      I1 => \hist_sum_data_3_reg[0]_i_109_n_6\,
      I2 => \hist_sum_data_3_reg[0]_i_110_n_6\,
      O => \hist_sum_data_3[0]_i_68_n_0\
    );
\hist_sum_data_3[0]_i_69\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_65_n_0\,
      I1 => \hist_sum_data_3_reg[0]_i_74_n_7\,
      I2 => \hist_sum_data_3_reg[0]_i_75_n_7\,
      I3 => \hist_sum_data_3_reg[0]_i_76_n_7\,
      O => \hist_sum_data_3[0]_i_69_n_0\
    );
\hist_sum_data_3[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(8),
      I1 => \hist_sum_data_3[0]_i_27_n_0\,
      I2 => \hist_sum_data_3_reg[0]_i_22_n_7\,
      I3 => \hist_sum_data_3_reg[0]_i_23_n_7\,
      I4 => \hist_sum_data_3_reg[0]_i_24_n_7\,
      O => \hist_sum_data_3[0]_i_7_n_0\
    );
\hist_sum_data_3[0]_i_70\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_66_n_0\,
      I1 => \hist_sum_data_3_reg[0]_i_75_n_7\,
      I2 => \hist_sum_data_3_reg[0]_i_76_n_7\,
      I3 => \hist_sum_data_3_reg[0]_i_74_n_7\,
      O => \hist_sum_data_3[0]_i_70_n_0\
    );
\hist_sum_data_3[0]_i_71\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_108_n_4\,
      I1 => \hist_sum_data_3_reg[0]_i_109_n_4\,
      I2 => \hist_sum_data_3_reg[0]_i_110_n_4\,
      I3 => \hist_sum_data_3[0]_i_67_n_0\,
      O => \hist_sum_data_3[0]_i_71_n_0\
    );
\hist_sum_data_3[0]_i_72\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_108_n_5\,
      I1 => \hist_sum_data_3_reg[0]_i_109_n_5\,
      I2 => \hist_sum_data_3_reg[0]_i_110_n_5\,
      I3 => \hist_sum_data_3[0]_i_68_n_0\,
      O => \hist_sum_data_3[0]_i_72_n_0\
    );
\hist_sum_data_3[0]_i_73\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_38_n_7\,
      I1 => \hist_sum_data_3_reg[0]_i_40_n_7\,
      I2 => \hist_sum_data_3_reg[0]_i_39_n_7\,
      O => \hist_sum_data_3[0]_i_73_n_0\
    );
\hist_sum_data_3[0]_i_77\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_74_n_4\,
      I1 => \hist_sum_data_3_reg[0]_i_76_n_4\,
      I2 => \hist_sum_data_3_reg[0]_i_75_n_4\,
      O => \hist_sum_data_3[0]_i_77_n_0\
    );
\hist_sum_data_3[0]_i_78\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_74_n_5\,
      I1 => \hist_sum_data_3_reg[0]_i_76_n_5\,
      I2 => \hist_sum_data_3_reg[0]_i_75_n_5\,
      O => \hist_sum_data_3[0]_i_78_n_0\
    );
\hist_sum_data_3[0]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(20),
      I1 => \hist_sum_data_2_reg__0\(18),
      I2 => \hist_sum_data_2_reg__0\(22),
      I3 => \hist_sum_data_2_reg__0\(23),
      I4 => \hist_sum_data_2_reg__0\(19),
      I5 => \hist_sum_data_2_reg__0\(21),
      O => \hist_sum_data_3[0]_i_79_n_0\
    );
\hist_sum_data_3[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_4_n_0\,
      I1 => \hist_sum_data_3[4]_i_17_n_0\,
      I2 => \hist_sum_data_2_reg__0\(12),
      I3 => \hist_sum_data_3_reg[4]_i_14_n_7\,
      I4 => \hist_sum_data_3_reg[4]_i_13_n_7\,
      I5 => \hist_sum_data_3_reg[4]_i_12_n_7\,
      O => \hist_sum_data_3[0]_i_8_n_0\
    );
\hist_sum_data_3[0]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(19),
      I1 => \hist_sum_data_2_reg__0\(17),
      I2 => \hist_sum_data_2_reg__0\(21),
      I3 => \hist_sum_data_2_reg__0\(22),
      I4 => \hist_sum_data_2_reg__0\(18),
      I5 => \hist_sum_data_2_reg__0\(20),
      O => \hist_sum_data_3[0]_i_80_n_0\
    );
\hist_sum_data_3[0]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(18),
      I1 => \hist_sum_data_2_reg__0\(16),
      I2 => \hist_sum_data_2_reg__0\(20),
      I3 => \hist_sum_data_2_reg__0\(21),
      I4 => \hist_sum_data_2_reg__0\(17),
      I5 => \hist_sum_data_2_reg__0\(19),
      O => \hist_sum_data_3[0]_i_81_n_0\
    );
\hist_sum_data_3[0]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(17),
      I1 => \hist_sum_data_2_reg__0\(15),
      I2 => \hist_sum_data_2_reg__0\(19),
      I3 => \hist_sum_data_2_reg__0\(20),
      I4 => \hist_sum_data_2_reg__0\(16),
      I5 => \hist_sum_data_2_reg__0\(18),
      O => \hist_sum_data_3[0]_i_82_n_0\
    );
\hist_sum_data_3[0]_i_83\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D444"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(14),
      I1 => \hist_sum_data_2_reg__0\(12),
      I2 => \hist_sum_data_3_reg[0]_0\,
      I3 => \hist_sum_data_20__0_n_105\,
      O => \hist_sum_data_3[0]_i_83_n_0\
    );
\hist_sum_data_3[0]_i_84\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(13),
      I1 => \hist_sum_data_2_reg__0\(11),
      I2 => \hist_sum_data_2_reg__0\(16),
      O => \hist_sum_data_3[0]_i_84_n_0\
    );
\hist_sum_data_3[0]_i_85\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(12),
      I1 => \hist_sum_data_2_reg__0\(10),
      I2 => \hist_sum_data_2_reg__0\(15),
      O => \hist_sum_data_3[0]_i_85_n_0\
    );
\hist_sum_data_3[0]_i_86\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(11),
      I1 => \hist_sum_data_2_reg__0\(9),
      I2 => \hist_sum_data_2_reg__0\(14),
      O => \hist_sum_data_3[0]_i_86_n_0\
    );
\hist_sum_data_3[0]_i_87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(17),
      I1 => \hist_sum_data_2_reg__0\(12),
      I2 => \hist_sum_data_2_reg__0\(14),
      I3 => \hist_sum_data_2_reg__0\(13),
      I4 => \hist_sum_data_2_reg__0\(15),
      I5 => \hist_sum_data_2_reg__0\(18),
      O => \hist_sum_data_3[0]_i_87_n_0\
    );
\hist_sum_data_3[0]_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(16),
      I1 => \hist_sum_data_2_reg__0\(11),
      I2 => \hist_sum_data_2_reg__0\(13),
      I3 => \hist_sum_data_2_reg__0\(12),
      I4 => \hist_sum_data_2_reg__0\(14),
      I5 => \hist_sum_data_2_reg__0\(17),
      O => \hist_sum_data_3[0]_i_88_n_0\
    );
\hist_sum_data_3[0]_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(15),
      I1 => \hist_sum_data_2_reg__0\(10),
      I2 => \hist_sum_data_2_reg__0\(12),
      I3 => \hist_sum_data_2_reg__0\(11),
      I4 => \hist_sum_data_2_reg__0\(13),
      I5 => \hist_sum_data_2_reg__0\(16),
      O => \hist_sum_data_3[0]_i_89_n_0\
    );
\hist_sum_data_3[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[0]_i_5_n_0\,
      I1 => \hist_sum_data_3[0]_i_21_n_0\,
      I2 => \hist_sum_data_2_reg__0\(11),
      I3 => \hist_sum_data_3_reg[0]_i_24_n_4\,
      I4 => \hist_sum_data_3_reg[0]_i_23_n_4\,
      I5 => \hist_sum_data_3_reg[0]_i_22_n_4\,
      O => \hist_sum_data_3[0]_i_9_n_0\
    );
\hist_sum_data_3[0]_i_90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(14),
      I1 => \hist_sum_data_2_reg__0\(9),
      I2 => \hist_sum_data_2_reg__0\(11),
      I3 => \hist_sum_data_2_reg__0\(10),
      I4 => \hist_sum_data_2_reg__0\(12),
      I5 => \hist_sum_data_2_reg__0\(15),
      O => \hist_sum_data_3[0]_i_90_n_0\
    );
\hist_sum_data_3[0]_i_91\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(10),
      I1 => \hist_sum_data_2_reg__0\(6),
      I2 => \hist_sum_data_2_reg__0\(8),
      O => \hist_sum_data_3[0]_i_91_n_0\
    );
\hist_sum_data_3[0]_i_92\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(9),
      I1 => \hist_sum_data_2_reg__0\(5),
      I2 => \hist_sum_data_2_reg__0\(7),
      O => \hist_sum_data_3[0]_i_92_n_0\
    );
\hist_sum_data_3[0]_i_93\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(8),
      I1 => \hist_sum_data_2_reg__0\(4),
      I2 => \hist_sum_data_2_reg__0\(6),
      O => \hist_sum_data_3[0]_i_93_n_0\
    );
\hist_sum_data_3[0]_i_94\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(7),
      I1 => \hist_sum_data_2_reg__0\(3),
      I2 => \hist_sum_data_2_reg__0\(5),
      O => \hist_sum_data_3[0]_i_94_n_0\
    );
\hist_sum_data_3[0]_i_95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(8),
      I1 => \hist_sum_data_2_reg__0\(6),
      I2 => \hist_sum_data_2_reg__0\(10),
      I3 => \hist_sum_data_2_reg__0\(11),
      I4 => \hist_sum_data_2_reg__0\(7),
      I5 => \hist_sum_data_2_reg__0\(9),
      O => \hist_sum_data_3[0]_i_95_n_0\
    );
\hist_sum_data_3[0]_i_96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(7),
      I1 => \hist_sum_data_2_reg__0\(5),
      I2 => \hist_sum_data_2_reg__0\(9),
      I3 => \hist_sum_data_2_reg__0\(10),
      I4 => \hist_sum_data_2_reg__0\(6),
      I5 => \hist_sum_data_2_reg__0\(8),
      O => \hist_sum_data_3[0]_i_96_n_0\
    );
\hist_sum_data_3[0]_i_97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(6),
      I1 => \hist_sum_data_2_reg__0\(4),
      I2 => \hist_sum_data_2_reg__0\(8),
      I3 => \hist_sum_data_2_reg__0\(9),
      I4 => \hist_sum_data_2_reg__0\(5),
      I5 => \hist_sum_data_2_reg__0\(7),
      O => \hist_sum_data_3[0]_i_97_n_0\
    );
\hist_sum_data_3[0]_i_98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(5),
      I1 => \hist_sum_data_2_reg__0\(3),
      I2 => \hist_sum_data_2_reg__0\(7),
      I3 => \hist_sum_data_2_reg__0\(8),
      I4 => \hist_sum_data_2_reg__0\(4),
      I5 => \hist_sum_data_2_reg__0\(6),
      O => \hist_sum_data_3[0]_i_98_n_0\
    );
\hist_sum_data_3[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[12]_i_2_n_6\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[11]_i_2_n_5\,
      O => \hist_sum_data_3[10]_i_1_n_0\
    );
\hist_sum_data_3[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[12]_i_2_n_5\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[11]_i_2_n_4\,
      O => \hist_sum_data_3[11]_i_1_n_0\
    );
\hist_sum_data_3[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[12]_i_2_n_4\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[15]_i_2_n_7\,
      O => \hist_sum_data_3[12]_i_1_n_0\
    );
\hist_sum_data_3[12]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969669696996"
    )
        port map (
      I0 => \hist_sum_data_3[12]_i_6_n_0\,
      I1 => \hist_sum_data_3[12]_i_20_n_0\,
      I2 => \hist_sum_data_2_reg__0\(21),
      I3 => \hist_sum_data_3_reg[12]_i_13_n_6\,
      I4 => \hist_sum_data_3_reg[12]_i_12_n_6\,
      I5 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      O => \hist_sum_data_3[12]_i_10_n_0\
    );
\hist_sum_data_3[12]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_99\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(23)
    );
\hist_sum_data_3[12]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_100\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(22)
    );
\hist_sum_data_3[12]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_101\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(21)
    );
\hist_sum_data_3[12]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_102\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(20)
    );
\hist_sum_data_3[12]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I1 => \hist_sum_data_3_reg[16]_i_11_n_6\,
      I2 => \hist_sum_data_3_reg[19]_i_18_n_6\,
      O => \hist_sum_data_3[12]_i_17_n_0\
    );
\hist_sum_data_3[12]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I1 => \hist_sum_data_3_reg[16]_i_11_n_7\,
      I2 => \hist_sum_data_3_reg[19]_i_18_n_7\,
      O => \hist_sum_data_3[12]_i_18_n_0\
    );
\hist_sum_data_3[12]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I1 => \hist_sum_data_3_reg[12]_i_13_n_4\,
      I2 => \hist_sum_data_3_reg[12]_i_12_n_4\,
      O => \hist_sum_data_3[12]_i_19_n_0\
    );
\hist_sum_data_3[12]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I1 => \hist_sum_data_3_reg[12]_i_13_n_5\,
      I2 => \hist_sum_data_3_reg[12]_i_12_n_5\,
      O => \hist_sum_data_3[12]_i_20_n_0\
    );
\hist_sum_data_3[12]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_94\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_92\,
      O => \hist_sum_data_3[12]_i_21_n_0\
    );
\hist_sum_data_3[12]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_95\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_93\,
      O => \hist_sum_data_3[12]_i_22_n_0\
    );
\hist_sum_data_3[12]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_96\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_94\,
      O => \hist_sum_data_3[12]_i_23_n_0\
    );
\hist_sum_data_3[12]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_95\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_97\,
      I3 => \hist_sum_data_20__0_n_92\,
      O => \hist_sum_data_3[12]_i_24_n_0\
    );
\hist_sum_data_3[12]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FBF"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_92\,
      I1 => \hist_sum_data_20__0_n_94\,
      I2 => \hist_sum_data_3_reg[0]_0\,
      I3 => \hist_sum_data_20__0_n_93\,
      O => \hist_sum_data_3[12]_i_25_n_0\
    );
\hist_sum_data_3[12]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4FF4BFF"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_20__0_n_95\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_20__0_n_94\,
      O => \hist_sum_data_3[12]_i_26_n_0\
    );
\hist_sum_data_3[12]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4FF4BFF"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_94\,
      I1 => \hist_sum_data_20__0_n_96\,
      I2 => \hist_sum_data_20__0_n_93\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_20__0_n_95\,
      O => \hist_sum_data_3[12]_i_27_n_0\
    );
\hist_sum_data_3[12]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EFFFF8E71FFFF"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_92\,
      I1 => \hist_sum_data_20__0_n_97\,
      I2 => \hist_sum_data_20__0_n_95\,
      I3 => \hist_sum_data_20__0_n_94\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      I5 => \hist_sum_data_20__0_n_96\,
      O => \hist_sum_data_3[12]_i_28_n_0\
    );
\hist_sum_data_3[12]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_96\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_100\,
      I3 => \hist_sum_data_20__0_n_98\,
      O => \hist_sum_data_3[12]_i_29_n_0\
    );
\hist_sum_data_3[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEB28EB28EB2882"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(23),
      I1 => \hist_sum_data_3_reg[19]_i_18_n_7\,
      I2 => \hist_sum_data_3_reg[16]_i_11_n_7\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_3_reg[12]_i_12_n_4\,
      I5 => \hist_sum_data_3_reg[12]_i_13_n_4\,
      O => \hist_sum_data_3[12]_i_3_n_0\
    );
\hist_sum_data_3[12]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_97\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_101\,
      I3 => \hist_sum_data_20__0_n_99\,
      O => \hist_sum_data_3[12]_i_30_n_0\
    );
\hist_sum_data_3[12]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_98\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_102\,
      I3 => \hist_sum_data_20__0_n_100\,
      O => \hist_sum_data_3[12]_i_31_n_0\
    );
\hist_sum_data_3[12]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_99\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_103\,
      I3 => \hist_sum_data_20__0_n_101\,
      O => \hist_sum_data_3[12]_i_32_n_0\
    );
\hist_sum_data_3[12]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(24),
      I1 => \hist_sum_data_2_reg__0\(22),
      I2 => \hist_sum_data_2_reg__0\(26),
      I3 => \hist_sum_data_2_reg__0\(27),
      I4 => \hist_sum_data_2_reg__0\(23),
      I5 => \hist_sum_data_2_reg__0\(25),
      O => \hist_sum_data_3[12]_i_33_n_0\
    );
\hist_sum_data_3[12]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(23),
      I1 => \hist_sum_data_2_reg__0\(21),
      I2 => \hist_sum_data_2_reg__0\(25),
      I3 => \hist_sum_data_2_reg__0\(26),
      I4 => \hist_sum_data_2_reg__0\(22),
      I5 => \hist_sum_data_2_reg__0\(24),
      O => \hist_sum_data_3[12]_i_34_n_0\
    );
\hist_sum_data_3[12]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(22),
      I1 => \hist_sum_data_2_reg__0\(20),
      I2 => \hist_sum_data_2_reg__0\(24),
      I3 => \hist_sum_data_2_reg__0\(25),
      I4 => \hist_sum_data_2_reg__0\(21),
      I5 => \hist_sum_data_2_reg__0\(23),
      O => \hist_sum_data_3[12]_i_35_n_0\
    );
\hist_sum_data_3[12]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(21),
      I1 => \hist_sum_data_2_reg__0\(19),
      I2 => \hist_sum_data_2_reg__0\(23),
      I3 => \hist_sum_data_2_reg__0\(24),
      I4 => \hist_sum_data_2_reg__0\(20),
      I5 => \hist_sum_data_2_reg__0\(22),
      O => \hist_sum_data_3[12]_i_36_n_0\
    );
\hist_sum_data_3[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEB28EB28EB2882"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(22),
      I1 => \hist_sum_data_3_reg[12]_i_12_n_4\,
      I2 => \hist_sum_data_3_reg[12]_i_13_n_4\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_3_reg[12]_i_12_n_5\,
      I5 => \hist_sum_data_3_reg[12]_i_13_n_5\,
      O => \hist_sum_data_3[12]_i_4_n_0\
    );
\hist_sum_data_3[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEB28EB28EB2882"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(21),
      I1 => \hist_sum_data_3_reg[12]_i_12_n_5\,
      I2 => \hist_sum_data_3_reg[12]_i_13_n_5\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_3_reg[12]_i_12_n_6\,
      I5 => \hist_sum_data_3_reg[12]_i_13_n_6\,
      O => \hist_sum_data_3[12]_i_5_n_0\
    );
\hist_sum_data_3[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEB28EB28EB2882"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(20),
      I1 => \hist_sum_data_3_reg[12]_i_12_n_6\,
      I2 => \hist_sum_data_3_reg[12]_i_13_n_6\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_3_reg[12]_i_12_n_7\,
      I5 => \hist_sum_data_3_reg[12]_i_13_n_7\,
      O => \hist_sum_data_3[12]_i_6_n_0\
    );
\hist_sum_data_3[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969669696996"
    )
        port map (
      I0 => \hist_sum_data_3[12]_i_3_n_0\,
      I1 => \hist_sum_data_3[12]_i_17_n_0\,
      I2 => \hist_sum_data_2_reg__0\(24),
      I3 => \hist_sum_data_3_reg[16]_i_11_n_7\,
      I4 => \hist_sum_data_3_reg[19]_i_18_n_7\,
      I5 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      O => \hist_sum_data_3[12]_i_7_n_0\
    );
\hist_sum_data_3[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969669696996"
    )
        port map (
      I0 => \hist_sum_data_3[12]_i_4_n_0\,
      I1 => \hist_sum_data_3[12]_i_18_n_0\,
      I2 => \hist_sum_data_2_reg__0\(23),
      I3 => \hist_sum_data_3_reg[12]_i_13_n_4\,
      I4 => \hist_sum_data_3_reg[12]_i_12_n_4\,
      I5 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      O => \hist_sum_data_3[12]_i_8_n_0\
    );
\hist_sum_data_3[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969669696996"
    )
        port map (
      I0 => \hist_sum_data_3[12]_i_5_n_0\,
      I1 => \hist_sum_data_3[12]_i_19_n_0\,
      I2 => \hist_sum_data_2_reg__0\(22),
      I3 => \hist_sum_data_3_reg[12]_i_13_n_5\,
      I4 => \hist_sum_data_3_reg[12]_i_12_n_5\,
      I5 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      O => \hist_sum_data_3[12]_i_9_n_0\
    );
\hist_sum_data_3[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[16]_i_2_n_7\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[15]_i_2_n_6\,
      O => \hist_sum_data_3[13]_i_1_n_0\
    );
\hist_sum_data_3[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[16]_i_2_n_6\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[15]_i_2_n_5\,
      O => \hist_sum_data_3[14]_i_1_n_0\
    );
\hist_sum_data_3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[16]_i_2_n_5\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[15]_i_2_n_4\,
      O => \hist_sum_data_3[15]_i_1_n_0\
    );
\hist_sum_data_3[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[16]_i_2_n_4\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[19]_i_6_n_7\,
      O => \hist_sum_data_3[16]_i_1_n_0\
    );
\hist_sum_data_3[16]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969669696996"
    )
        port map (
      I0 => \hist_sum_data_3[16]_i_6_n_0\,
      I1 => \hist_sum_data_3[16]_i_17_n_0\,
      I2 => \hist_sum_data_2_reg__0\(25),
      I3 => \hist_sum_data_3_reg[16]_i_11_n_6\,
      I4 => \hist_sum_data_3_reg[19]_i_18_n_6\,
      I5 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      O => \hist_sum_data_3[16]_i_10_n_0\
    );
\hist_sum_data_3[16]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_97\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(25)
    );
\hist_sum_data_3[16]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_98\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(24)
    );
\hist_sum_data_3[16]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_94\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(28)
    );
\hist_sum_data_3[16]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_95\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(27)
    );
\hist_sum_data_3[16]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_96\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(26)
    );
\hist_sum_data_3[16]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I1 => \hist_sum_data_3_reg[16]_i_11_n_5\,
      I2 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      O => \hist_sum_data_3[16]_i_17_n_0\
    );
\hist_sum_data_3[16]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_92\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_96\,
      I3 => \hist_sum_data_20__0_n_94\,
      O => \hist_sum_data_3[16]_i_18_n_0\
    );
\hist_sum_data_3[16]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_97\,
      I3 => \hist_sum_data_20__0_n_95\,
      O => \hist_sum_data_3[16]_i_19_n_0\
    );
\hist_sum_data_3[16]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_94\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_98\,
      I3 => \hist_sum_data_20__0_n_96\,
      O => \hist_sum_data_3[16]_i_20_n_0\
    );
\hist_sum_data_3[16]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_95\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_99\,
      I3 => \hist_sum_data_20__0_n_97\,
      O => \hist_sum_data_3[16]_i_21_n_0\
    );
\hist_sum_data_3[16]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EFFFF8E71FFFF"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_94\,
      I1 => \hist_sum_data_20__0_n_96\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_20__0_n_95\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      I5 => \hist_sum_data_20__0_n_93\,
      O => \hist_sum_data_3[16]_i_22_n_0\
    );
\hist_sum_data_3[16]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(27),
      I1 => \hist_sum_data_2_reg__0\(25),
      I2 => \hist_sum_data_2_reg__0\(29),
      I3 => \hist_sum_data_2_reg__0\(30),
      I4 => \hist_sum_data_2_reg__0\(26),
      I5 => \hist_sum_data_2_reg__0\(28),
      O => \hist_sum_data_3[16]_i_23_n_0\
    );
\hist_sum_data_3[16]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(26),
      I1 => \hist_sum_data_2_reg__0\(24),
      I2 => \hist_sum_data_2_reg__0\(28),
      I3 => \hist_sum_data_2_reg__0\(29),
      I4 => \hist_sum_data_2_reg__0\(25),
      I5 => \hist_sum_data_2_reg__0\(27),
      O => \hist_sum_data_3[16]_i_24_n_0\
    );
\hist_sum_data_3[16]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(25),
      I1 => \hist_sum_data_2_reg__0\(23),
      I2 => \hist_sum_data_2_reg__0\(27),
      I3 => \hist_sum_data_2_reg__0\(28),
      I4 => \hist_sum_data_2_reg__0\(24),
      I5 => \hist_sum_data_2_reg__0\(26),
      O => \hist_sum_data_3[16]_i_25_n_0\
    );
\hist_sum_data_3[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"880F8FF880080F88"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_95\,
      I2 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I3 => \hist_sum_data_3_reg[19]_i_19_n_7\,
      I4 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I5 => \hist_sum_data_3_reg[16]_i_11_n_4\,
      O => \hist_sum_data_3[16]_i_3_n_0\
    );
\hist_sum_data_3[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"880F8FF880080F88"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_96\,
      I2 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I3 => \hist_sum_data_3_reg[16]_i_11_n_4\,
      I4 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I5 => \hist_sum_data_3_reg[16]_i_11_n_5\,
      O => \hist_sum_data_3[16]_i_4_n_0\
    );
\hist_sum_data_3[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBE82BE82BE8228"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(25),
      I1 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I2 => \hist_sum_data_3_reg[16]_i_11_n_5\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_3_reg[19]_i_18_n_6\,
      I5 => \hist_sum_data_3_reg[16]_i_11_n_6\,
      O => \hist_sum_data_3[16]_i_5_n_0\
    );
\hist_sum_data_3[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEB28EB28EB2882"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(24),
      I1 => \hist_sum_data_3_reg[19]_i_18_n_6\,
      I2 => \hist_sum_data_3_reg[16]_i_11_n_6\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_3_reg[19]_i_18_n_7\,
      I5 => \hist_sum_data_3_reg[16]_i_11_n_7\,
      O => \hist_sum_data_3[16]_i_6_n_0\
    );
\hist_sum_data_3[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5965A69965A69A5"
    )
        port map (
      I0 => \hist_sum_data_3[16]_i_3_n_0\,
      I1 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I2 => \hist_sum_data_3_reg[19]_i_19_n_6\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_2_reg__0\(28),
      I5 => \hist_sum_data_3_reg[19]_i_19_n_7\,
      O => \hist_sum_data_3[16]_i_7_n_0\
    );
\hist_sum_data_3[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5965A69965A69A5"
    )
        port map (
      I0 => \hist_sum_data_3[16]_i_4_n_0\,
      I1 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I2 => \hist_sum_data_3_reg[19]_i_19_n_7\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_2_reg__0\(27),
      I5 => \hist_sum_data_3_reg[16]_i_11_n_4\,
      O => \hist_sum_data_3[16]_i_8_n_0\
    );
\hist_sum_data_3[16]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5965A69965A69A5"
    )
        port map (
      I0 => \hist_sum_data_3[16]_i_5_n_0\,
      I1 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I2 => \hist_sum_data_3_reg[16]_i_11_n_4\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_2_reg__0\(26),
      I5 => \hist_sum_data_3_reg[16]_i_11_n_5\,
      O => \hist_sum_data_3[16]_i_9_n_0\
    );
\hist_sum_data_3[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_2_n_7\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[19]_i_6_n_6\,
      O => \hist_sum_data_3[17]_i_1_n_0\
    );
\hist_sum_data_3[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_2_n_6\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[19]_i_6_n_5\,
      O => \hist_sum_data_3[18]_i_1_n_0\
    );
\hist_sum_data_3[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_2_n_5\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[19]_i_6_n_4\,
      O => \hist_sum_data_3[19]_i_1_n_0\
    );
\hist_sum_data_3[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5965A69965A69A5"
    )
        port map (
      I0 => \hist_sum_data_3[19]_i_7_n_0\,
      I1 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I2 => \hist_sum_data_3_reg[19]_i_19_n_4\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_2_reg__0\(30),
      I5 => \hist_sum_data_3_reg[19]_i_19_n_5\,
      O => \hist_sum_data_3[19]_i_10_n_0\
    );
\hist_sum_data_3[19]_i_100\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_2_n_6\,
      I1 => \hist_sum_data_3_reg[0]_i_2_n_4\,
      O => \hist_sum_data_3[19]_i_100_n_0\
    );
\hist_sum_data_3[19]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5965A69965A69A5"
    )
        port map (
      I0 => \hist_sum_data_3[19]_i_8_n_0\,
      I1 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I2 => \hist_sum_data_3_reg[19]_i_19_n_5\,
      I3 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I4 => \hist_sum_data_2_reg__0\(29),
      I5 => \hist_sum_data_3_reg[19]_i_19_n_6\,
      O => \hist_sum_data_3[19]_i_11_n_0\
    );
\hist_sum_data_3[19]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_17_n_4\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_93\,
      O => \hist_sum_data_3[19]_i_13_n_0\
    );
\hist_sum_data_3[19]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_17_n_5\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_94\,
      O => \hist_sum_data_3[19]_i_14_n_0\
    );
\hist_sum_data_3[19]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[19]_i_17_n_4\,
      I2 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I3 => \hist_sum_data_20__0_n_92\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_15_n_0\
    );
\hist_sum_data_3[19]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_94\,
      I1 => \hist_sum_data_3_reg[19]_i_17_n_5\,
      I2 => \hist_sum_data_3_reg[19]_i_17_n_4\,
      I3 => \hist_sum_data_20__0_n_93\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_16_n_0\
    );
\hist_sum_data_3[19]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_92\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(30)
    );
\hist_sum_data_3[19]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(29)
    );
\hist_sum_data_3[19]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_17_n_6\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_95\,
      O => \hist_sum_data_3[19]_i_25_n_0\
    );
\hist_sum_data_3[19]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_17_n_7\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_96\,
      O => \hist_sum_data_3[19]_i_26_n_0\
    );
\hist_sum_data_3[19]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_33_n_4\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_97\,
      O => \hist_sum_data_3[19]_i_27_n_0\
    );
\hist_sum_data_3[19]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_33_n_5\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_98\,
      O => \hist_sum_data_3[19]_i_28_n_0\
    );
\hist_sum_data_3[19]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_95\,
      I1 => \hist_sum_data_3_reg[19]_i_17_n_6\,
      I2 => \hist_sum_data_3_reg[19]_i_17_n_5\,
      I3 => \hist_sum_data_20__0_n_94\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_29_n_0\
    );
\hist_sum_data_3[19]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_96\,
      I1 => \hist_sum_data_3_reg[19]_i_17_n_7\,
      I2 => \hist_sum_data_3_reg[19]_i_17_n_6\,
      I3 => \hist_sum_data_20__0_n_95\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_30_n_0\
    );
\hist_sum_data_3[19]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_97\,
      I1 => \hist_sum_data_3_reg[19]_i_33_n_4\,
      I2 => \hist_sum_data_3_reg[19]_i_17_n_7\,
      I3 => \hist_sum_data_20__0_n_96\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_31_n_0\
    );
\hist_sum_data_3[19]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_98\,
      I1 => \hist_sum_data_3_reg[19]_i_33_n_5\,
      I2 => \hist_sum_data_3_reg[19]_i_33_n_4\,
      I3 => \hist_sum_data_20__0_n_97\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_32_n_0\
    );
\hist_sum_data_3[19]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_2_n_5\,
      I1 => \hist_sum_data_3_reg[19]_i_2_n_7\,
      O => \hist_sum_data_3[19]_i_34_n_0\
    );
\hist_sum_data_3[19]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_2_n_6\,
      I1 => \hist_sum_data_3_reg[16]_i_2_n_4\,
      O => \hist_sum_data_3[19]_i_35_n_0\
    );
\hist_sum_data_3[19]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_2_n_7\,
      I1 => \hist_sum_data_3_reg[16]_i_2_n_5\,
      O => \hist_sum_data_3[19]_i_36_n_0\
    );
\hist_sum_data_3[19]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_92\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_37_n_0\
    );
\hist_sum_data_3[19]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_38_n_0\
    );
\hist_sum_data_3[19]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_92\,
      O => \hist_sum_data_3[19]_i_39_n_0\
    );
\hist_sum_data_3[19]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_92\,
      O => \hist_sum_data_3[19]_i_40_n_0\
    );
\hist_sum_data_3[19]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_92\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_41_n_0\
    );
\hist_sum_data_3[19]_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_42_n_0\
    );
\hist_sum_data_3[19]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_92\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_94\,
      O => \hist_sum_data_3[19]_i_43_n_0\
    );
\hist_sum_data_3[19]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_95\,
      O => \hist_sum_data_3[19]_i_44_n_0\
    );
\hist_sum_data_3[19]_i_45\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_92\,
      O => \hist_sum_data_3[19]_i_45_n_0\
    );
\hist_sum_data_3[19]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_92\,
      O => \hist_sum_data_3[19]_i_46_n_0\
    );
\hist_sum_data_3[19]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF1F"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_94\,
      I1 => \hist_sum_data_20__0_n_92\,
      I2 => \hist_sum_data_3_reg[0]_0\,
      I3 => \hist_sum_data_20__0_n_93\,
      O => \hist_sum_data_3[19]_i_47_n_0\
    );
\hist_sum_data_3[19]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EFFE1FF"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_95\,
      I1 => \hist_sum_data_20__0_n_93\,
      I2 => \hist_sum_data_20__0_n_94\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_20__0_n_92\,
      O => \hist_sum_data_3[19]_i_48_n_0\
    );
\hist_sum_data_3[19]_i_50\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_33_n_6\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_99\,
      O => \hist_sum_data_3[19]_i_50_n_0\
    );
\hist_sum_data_3[19]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_33_n_7\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_100\,
      O => \hist_sum_data_3[19]_i_51_n_0\
    );
\hist_sum_data_3[19]_i_52\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_58_n_4\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_101\,
      O => \hist_sum_data_3[19]_i_52_n_0\
    );
\hist_sum_data_3[19]_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_58_n_5\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_102\,
      O => \hist_sum_data_3[19]_i_53_n_0\
    );
\hist_sum_data_3[19]_i_54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_99\,
      I1 => \hist_sum_data_3_reg[19]_i_33_n_6\,
      I2 => \hist_sum_data_3_reg[19]_i_33_n_5\,
      I3 => \hist_sum_data_20__0_n_98\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_54_n_0\
    );
\hist_sum_data_3[19]_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_100\,
      I1 => \hist_sum_data_3_reg[19]_i_33_n_7\,
      I2 => \hist_sum_data_3_reg[19]_i_33_n_6\,
      I3 => \hist_sum_data_20__0_n_99\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_55_n_0\
    );
\hist_sum_data_3[19]_i_56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_101\,
      I1 => \hist_sum_data_3_reg[19]_i_58_n_4\,
      I2 => \hist_sum_data_3_reg[19]_i_33_n_7\,
      I3 => \hist_sum_data_20__0_n_100\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_56_n_0\
    );
\hist_sum_data_3[19]_i_57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_102\,
      I1 => \hist_sum_data_3_reg[19]_i_58_n_5\,
      I2 => \hist_sum_data_3_reg[19]_i_58_n_4\,
      I3 => \hist_sum_data_20__0_n_101\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_57_n_0\
    );
\hist_sum_data_3[19]_i_59\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[16]_i_2_n_4\,
      I1 => \hist_sum_data_3_reg[16]_i_2_n_6\,
      O => \hist_sum_data_3[19]_i_59_n_0\
    );
\hist_sum_data_3[19]_i_60\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[16]_i_2_n_5\,
      I1 => \hist_sum_data_3_reg[16]_i_2_n_7\,
      O => \hist_sum_data_3[19]_i_60_n_0\
    );
\hist_sum_data_3[19]_i_61\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[16]_i_2_n_6\,
      I1 => \hist_sum_data_3_reg[12]_i_2_n_4\,
      O => \hist_sum_data_3[19]_i_61_n_0\
    );
\hist_sum_data_3[19]_i_62\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[16]_i_2_n_7\,
      I1 => \hist_sum_data_3_reg[12]_i_2_n_5\,
      O => \hist_sum_data_3[19]_i_62_n_0\
    );
\hist_sum_data_3[19]_i_64\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_58_n_6\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_103\,
      O => \hist_sum_data_3[19]_i_64_n_0\
    );
\hist_sum_data_3[19]_i_65\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_58_n_7\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_104\,
      O => \hist_sum_data_3[19]_i_65_n_0\
    );
\hist_sum_data_3[19]_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_72_n_4\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_105\,
      O => \hist_sum_data_3[19]_i_66_n_0\
    );
\hist_sum_data_3[19]_i_67\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_72_n_5\,
      I1 => \hist_sum_data_2_reg__0\(16),
      O => \hist_sum_data_3[19]_i_67_n_0\
    );
\hist_sum_data_3[19]_i_68\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_103\,
      I1 => \hist_sum_data_3_reg[19]_i_58_n_6\,
      I2 => \hist_sum_data_3_reg[19]_i_58_n_5\,
      I3 => \hist_sum_data_20__0_n_102\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_68_n_0\
    );
\hist_sum_data_3[19]_i_69\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_104\,
      I1 => \hist_sum_data_3_reg[19]_i_58_n_7\,
      I2 => \hist_sum_data_3_reg[19]_i_58_n_6\,
      I3 => \hist_sum_data_20__0_n_103\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_69_n_0\
    );
\hist_sum_data_3[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"880F8FF880080F88"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_93\,
      I2 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I3 => \hist_sum_data_3_reg[19]_i_19_n_5\,
      I4 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I5 => \hist_sum_data_3_reg[19]_i_19_n_6\,
      O => \hist_sum_data_3[19]_i_7_n_0\
    );
\hist_sum_data_3[19]_i_70\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44BC3C3"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_105\,
      I1 => \hist_sum_data_3_reg[19]_i_72_n_4\,
      I2 => \hist_sum_data_3_reg[19]_i_58_n_7\,
      I3 => \hist_sum_data_20__0_n_104\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_70_n_0\
    );
\hist_sum_data_3[19]_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44B4B4B"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(16),
      I1 => \hist_sum_data_3_reg[19]_i_72_n_5\,
      I2 => \hist_sum_data_3_reg[19]_i_72_n_4\,
      I3 => \hist_sum_data_20__0_n_105\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[19]_i_71_n_0\
    );
\hist_sum_data_3[19]_i_73\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[12]_i_2_n_4\,
      I1 => \hist_sum_data_3_reg[12]_i_2_n_6\,
      O => \hist_sum_data_3[19]_i_73_n_0\
    );
\hist_sum_data_3[19]_i_74\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[12]_i_2_n_5\,
      I1 => \hist_sum_data_3_reg[12]_i_2_n_7\,
      O => \hist_sum_data_3[19]_i_74_n_0\
    );
\hist_sum_data_3[19]_i_75\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[12]_i_2_n_6\,
      I1 => \hist_sum_data_3_reg[8]_i_2_n_4\,
      O => \hist_sum_data_3[19]_i_75_n_0\
    );
\hist_sum_data_3[19]_i_76\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[12]_i_2_n_7\,
      I1 => \hist_sum_data_3_reg[8]_i_2_n_5\,
      O => \hist_sum_data_3[19]_i_76_n_0\
    );
\hist_sum_data_3[19]_i_78\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_72_n_6\,
      I1 => \hist_sum_data_2_reg__0\(15),
      O => \hist_sum_data_3[19]_i_78_n_0\
    );
\hist_sum_data_3[19]_i_79\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_72_n_7\,
      I1 => \hist_sum_data_2_reg__0\(14),
      O => \hist_sum_data_3[19]_i_79_n_0\
    );
\hist_sum_data_3[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"880F8FF880080F88"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_94\,
      I2 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I3 => \hist_sum_data_3_reg[19]_i_19_n_6\,
      I4 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I5 => \hist_sum_data_3_reg[19]_i_19_n_7\,
      O => \hist_sum_data_3[19]_i_8_n_0\
    );
\hist_sum_data_3[19]_i_80\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_86_n_4\,
      I1 => \hist_sum_data_2_reg__0\(13),
      O => \hist_sum_data_3[19]_i_80_n_0\
    );
\hist_sum_data_3[19]_i_81\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_86_n_5\,
      I1 => \hist_sum_data_2_reg__0\(12),
      O => \hist_sum_data_3[19]_i_81_n_0\
    );
\hist_sum_data_3[19]_i_82\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(15),
      I1 => \hist_sum_data_3_reg[19]_i_72_n_6\,
      I2 => \hist_sum_data_3_reg[19]_i_72_n_5\,
      I3 => \hist_sum_data_2_reg__0\(16),
      O => \hist_sum_data_3[19]_i_82_n_0\
    );
\hist_sum_data_3[19]_i_83\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(14),
      I1 => \hist_sum_data_3_reg[19]_i_72_n_7\,
      I2 => \hist_sum_data_3_reg[19]_i_72_n_6\,
      I3 => \hist_sum_data_2_reg__0\(15),
      O => \hist_sum_data_3[19]_i_83_n_0\
    );
\hist_sum_data_3[19]_i_84\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(13),
      I1 => \hist_sum_data_3_reg[19]_i_86_n_4\,
      I2 => \hist_sum_data_3_reg[19]_i_72_n_7\,
      I3 => \hist_sum_data_2_reg__0\(14),
      O => \hist_sum_data_3[19]_i_84_n_0\
    );
\hist_sum_data_3[19]_i_85\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(12),
      I1 => \hist_sum_data_3_reg[19]_i_86_n_5\,
      I2 => \hist_sum_data_3_reg[19]_i_86_n_4\,
      I3 => \hist_sum_data_2_reg__0\(13),
      O => \hist_sum_data_3[19]_i_85_n_0\
    );
\hist_sum_data_3[19]_i_87\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_2_n_4\,
      I1 => \hist_sum_data_3_reg[8]_i_2_n_6\,
      O => \hist_sum_data_3[19]_i_87_n_0\
    );
\hist_sum_data_3[19]_i_88\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_2_n_5\,
      I1 => \hist_sum_data_3_reg[8]_i_2_n_7\,
      O => \hist_sum_data_3[19]_i_88_n_0\
    );
\hist_sum_data_3[19]_i_89\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_2_n_6\,
      I1 => \hist_sum_data_3_reg[4]_i_2_n_4\,
      O => \hist_sum_data_3[19]_i_89_n_0\
    );
\hist_sum_data_3[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C837807F01FE13EC"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_19_n_5\,
      I1 => \hist_sum_data_2_reg__0\(30),
      I2 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I3 => \hist_sum_data_3_reg[19]_i_22_n_3\,
      I4 => \hist_sum_data_3_reg[19]_i_18_n_1\,
      I5 => \hist_sum_data_3_reg[19]_i_19_n_4\,
      O => \hist_sum_data_3[19]_i_9_n_0\
    );
\hist_sum_data_3[19]_i_90\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_2_n_7\,
      I1 => \hist_sum_data_3_reg[4]_i_2_n_5\,
      O => \hist_sum_data_3[19]_i_90_n_0\
    );
\hist_sum_data_3[19]_i_91\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_86_n_6\,
      I1 => \hist_sum_data_2_reg__0\(11),
      O => \hist_sum_data_3[19]_i_91_n_0\
    );
\hist_sum_data_3[19]_i_92\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_86_n_7\,
      I1 => \hist_sum_data_2_reg__0\(10),
      O => \hist_sum_data_3[19]_i_92_n_0\
    );
\hist_sum_data_3[19]_i_93\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_2_n_4\,
      I1 => \hist_sum_data_2_reg__0\(9),
      O => \hist_sum_data_3[19]_i_93_n_0\
    );
\hist_sum_data_3[19]_i_94\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(11),
      I1 => \hist_sum_data_3_reg[19]_i_86_n_6\,
      I2 => \hist_sum_data_3_reg[19]_i_86_n_5\,
      I3 => \hist_sum_data_2_reg__0\(12),
      O => \hist_sum_data_3[19]_i_94_n_0\
    );
\hist_sum_data_3[19]_i_95\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(10),
      I1 => \hist_sum_data_3_reg[19]_i_86_n_7\,
      I2 => \hist_sum_data_3_reg[19]_i_86_n_6\,
      I3 => \hist_sum_data_2_reg__0\(11),
      O => \hist_sum_data_3[19]_i_95_n_0\
    );
\hist_sum_data_3[19]_i_96\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(9),
      I1 => \hist_sum_data_3_reg[0]_i_2_n_4\,
      I2 => \hist_sum_data_3_reg[19]_i_86_n_7\,
      I3 => \hist_sum_data_2_reg__0\(10),
      O => \hist_sum_data_3[19]_i_96_n_0\
    );
\hist_sum_data_3[19]_i_97\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(9),
      I1 => \hist_sum_data_3_reg[0]_i_2_n_4\,
      O => \hist_sum_data_3[19]_i_97_n_0\
    );
\hist_sum_data_3[19]_i_98\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_2_n_4\,
      I1 => \hist_sum_data_3_reg[4]_i_2_n_6\,
      O => \hist_sum_data_3[19]_i_98_n_0\
    );
\hist_sum_data_3[19]_i_99\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_2_n_5\,
      I1 => \hist_sum_data_3_reg[4]_i_2_n_7\,
      O => \hist_sum_data_3[19]_i_99_n_0\
    );
\hist_sum_data_3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_2_n_7\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[3]_i_2_n_6\,
      O => \hist_sum_data_3[1]_i_1_n_0\
    );
\hist_sum_data_3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_2_n_6\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[3]_i_2_n_5\,
      O => \hist_sum_data_3[2]_i_1_n_0\
    );
\hist_sum_data_3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_2_n_5\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[3]_i_2_n_4\,
      O => \hist_sum_data_3[3]_i_1_n_0\
    );
\hist_sum_data_3[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_i_2_n_4\,
      O => \hist_sum_data_3[3]_i_3_n_0\
    );
\hist_sum_data_3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_2_n_4\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[7]_i_2_n_7\,
      O => \hist_sum_data_3[4]_i_1_n_0\
    );
\hist_sum_data_3[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[4]_i_6_n_0\,
      I1 => \hist_sum_data_3[4]_i_16_n_0\,
      I2 => \hist_sum_data_2_reg__0\(13),
      I3 => \hist_sum_data_3_reg[4]_i_14_n_6\,
      I4 => \hist_sum_data_3_reg[4]_i_13_n_6\,
      I5 => \hist_sum_data_3_reg[4]_i_12_n_6\,
      O => \hist_sum_data_3[4]_i_10_n_0\
    );
\hist_sum_data_3[4]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_12_n_7\,
      I1 => \hist_sum_data_3_reg[8]_i_14_n_7\,
      I2 => \hist_sum_data_3_reg[8]_i_13_n_7\,
      O => \hist_sum_data_3[4]_i_11_n_0\
    );
\hist_sum_data_3[4]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_12_n_4\,
      I1 => \hist_sum_data_3_reg[4]_i_14_n_4\,
      I2 => \hist_sum_data_3_reg[4]_i_13_n_4\,
      O => \hist_sum_data_3[4]_i_15_n_0\
    );
\hist_sum_data_3[4]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_12_n_5\,
      I1 => \hist_sum_data_3_reg[4]_i_14_n_5\,
      I2 => \hist_sum_data_3_reg[4]_i_13_n_5\,
      O => \hist_sum_data_3[4]_i_16_n_0\
    );
\hist_sum_data_3[4]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[4]_i_12_n_6\,
      I1 => \hist_sum_data_3_reg[4]_i_14_n_6\,
      I2 => \hist_sum_data_3_reg[4]_i_13_n_6\,
      O => \hist_sum_data_3[4]_i_17_n_0\
    );
\hist_sum_data_3[4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718EFFFF8E71FFFF"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_94\,
      I1 => \hist_sum_data_20__0_n_96\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_20__0_n_95\,
      I4 => \hist_sum_data_3_reg[0]_0\,
      I5 => \hist_sum_data_20__0_n_93\,
      O => \hist_sum_data_3[4]_i_18_n_0\
    );
\hist_sum_data_3[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(27),
      I1 => \hist_sum_data_2_reg__0\(25),
      I2 => \hist_sum_data_2_reg__0\(29),
      I3 => \hist_sum_data_2_reg__0\(30),
      I4 => \hist_sum_data_2_reg__0\(26),
      I5 => \hist_sum_data_2_reg__0\(28),
      O => \hist_sum_data_3[4]_i_19_n_0\
    );
\hist_sum_data_3[4]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(26),
      I1 => \hist_sum_data_2_reg__0\(24),
      I2 => \hist_sum_data_2_reg__0\(28),
      I3 => \hist_sum_data_2_reg__0\(29),
      I4 => \hist_sum_data_2_reg__0\(25),
      I5 => \hist_sum_data_2_reg__0\(27),
      O => \hist_sum_data_3[4]_i_20_n_0\
    );
\hist_sum_data_3[4]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(25),
      I1 => \hist_sum_data_2_reg__0\(23),
      I2 => \hist_sum_data_2_reg__0\(27),
      I3 => \hist_sum_data_2_reg__0\(28),
      I4 => \hist_sum_data_2_reg__0\(24),
      I5 => \hist_sum_data_2_reg__0\(26),
      O => \hist_sum_data_3[4]_i_21_n_0\
    );
\hist_sum_data_3[4]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_100\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_102\,
      I3 => \hist_sum_data_20__0_n_97\,
      O => \hist_sum_data_3[4]_i_22_n_0\
    );
\hist_sum_data_3[4]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_101\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_103\,
      I3 => \hist_sum_data_20__0_n_98\,
      O => \hist_sum_data_3[4]_i_23_n_0\
    );
\hist_sum_data_3[4]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_102\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_104\,
      I3 => \hist_sum_data_20__0_n_99\,
      O => \hist_sum_data_3[4]_i_24_n_0\
    );
\hist_sum_data_3[4]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_103\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_105\,
      I3 => \hist_sum_data_20__0_n_100\,
      O => \hist_sum_data_3[4]_i_25_n_0\
    );
\hist_sum_data_3[4]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(25),
      I1 => \hist_sum_data_2_reg__0\(20),
      I2 => \hist_sum_data_2_reg__0\(22),
      I3 => \hist_sum_data_2_reg__0\(21),
      I4 => \hist_sum_data_2_reg__0\(23),
      I5 => \hist_sum_data_2_reg__0\(26),
      O => \hist_sum_data_3[4]_i_26_n_0\
    );
\hist_sum_data_3[4]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(24),
      I1 => \hist_sum_data_2_reg__0\(19),
      I2 => \hist_sum_data_2_reg__0\(21),
      I3 => \hist_sum_data_2_reg__0\(20),
      I4 => \hist_sum_data_2_reg__0\(22),
      I5 => \hist_sum_data_2_reg__0\(25),
      O => \hist_sum_data_3[4]_i_27_n_0\
    );
\hist_sum_data_3[4]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(23),
      I1 => \hist_sum_data_2_reg__0\(18),
      I2 => \hist_sum_data_2_reg__0\(20),
      I3 => \hist_sum_data_2_reg__0\(19),
      I4 => \hist_sum_data_2_reg__0\(21),
      I5 => \hist_sum_data_2_reg__0\(24),
      O => \hist_sum_data_3[4]_i_28_n_0\
    );
\hist_sum_data_3[4]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(22),
      I1 => \hist_sum_data_2_reg__0\(17),
      I2 => \hist_sum_data_2_reg__0\(19),
      I3 => \hist_sum_data_2_reg__0\(18),
      I4 => \hist_sum_data_2_reg__0\(20),
      I5 => \hist_sum_data_2_reg__0\(23),
      O => \hist_sum_data_3[4]_i_29_n_0\
    );
\hist_sum_data_3[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(15),
      I1 => \hist_sum_data_3[4]_i_11_n_0\,
      I2 => \hist_sum_data_3_reg[4]_i_12_n_4\,
      I3 => \hist_sum_data_3_reg[4]_i_13_n_4\,
      I4 => \hist_sum_data_3_reg[4]_i_14_n_4\,
      O => \hist_sum_data_3[4]_i_3_n_0\
    );
\hist_sum_data_3[4]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F770"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_104\,
      I2 => \hist_sum_data_2_reg__0\(14),
      I3 => \hist_sum_data_2_reg__0\(16),
      O => \hist_sum_data_3[4]_i_30_n_0\
    );
\hist_sum_data_3[4]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F770"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_105\,
      I2 => \hist_sum_data_2_reg__0\(13),
      I3 => \hist_sum_data_2_reg__0\(15),
      O => \hist_sum_data_3[4]_i_31_n_0\
    );
\hist_sum_data_3[4]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(16),
      I1 => \hist_sum_data_2_reg__0\(12),
      I2 => \hist_sum_data_2_reg__0\(14),
      O => \hist_sum_data_3[4]_i_32_n_0\
    );
\hist_sum_data_3[4]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(15),
      I1 => \hist_sum_data_2_reg__0\(11),
      I2 => \hist_sum_data_2_reg__0\(13),
      O => \hist_sum_data_3[4]_i_33_n_0\
    );
\hist_sum_data_3[4]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(16),
      I1 => \hist_sum_data_2_reg__0\(14),
      I2 => \hist_sum_data_2_reg__0\(18),
      I3 => \hist_sum_data_2_reg__0\(19),
      I4 => \hist_sum_data_2_reg__0\(15),
      I5 => \hist_sum_data_2_reg__0\(17),
      O => \hist_sum_data_3[4]_i_34_n_0\
    );
\hist_sum_data_3[4]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(15),
      I1 => \hist_sum_data_2_reg__0\(13),
      I2 => \hist_sum_data_2_reg__0\(17),
      I3 => \hist_sum_data_2_reg__0\(18),
      I4 => \hist_sum_data_2_reg__0\(14),
      I5 => \hist_sum_data_2_reg__0\(16),
      O => \hist_sum_data_3[4]_i_35_n_0\
    );
\hist_sum_data_3[4]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(14),
      I1 => \hist_sum_data_2_reg__0\(12),
      I2 => \hist_sum_data_2_reg__0\(16),
      I3 => \hist_sum_data_2_reg__0\(17),
      I4 => \hist_sum_data_2_reg__0\(13),
      I5 => \hist_sum_data_2_reg__0\(15),
      O => \hist_sum_data_3[4]_i_36_n_0\
    );
\hist_sum_data_3[4]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(13),
      I1 => \hist_sum_data_2_reg__0\(11),
      I2 => \hist_sum_data_2_reg__0\(15),
      I3 => \hist_sum_data_2_reg__0\(16),
      I4 => \hist_sum_data_2_reg__0\(12),
      I5 => \hist_sum_data_2_reg__0\(14),
      O => \hist_sum_data_3[4]_i_37_n_0\
    );
\hist_sum_data_3[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(14),
      I1 => \hist_sum_data_3[4]_i_15_n_0\,
      I2 => \hist_sum_data_3_reg[4]_i_12_n_5\,
      I3 => \hist_sum_data_3_reg[4]_i_13_n_5\,
      I4 => \hist_sum_data_3_reg[4]_i_14_n_5\,
      O => \hist_sum_data_3[4]_i_4_n_0\
    );
\hist_sum_data_3[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(13),
      I1 => \hist_sum_data_3[4]_i_16_n_0\,
      I2 => \hist_sum_data_3_reg[4]_i_12_n_6\,
      I3 => \hist_sum_data_3_reg[4]_i_13_n_6\,
      I4 => \hist_sum_data_3_reg[4]_i_14_n_6\,
      O => \hist_sum_data_3[4]_i_5_n_0\
    );
\hist_sum_data_3[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(12),
      I1 => \hist_sum_data_3[4]_i_17_n_0\,
      I2 => \hist_sum_data_3_reg[4]_i_12_n_7\,
      I3 => \hist_sum_data_3_reg[4]_i_13_n_7\,
      I4 => \hist_sum_data_3_reg[4]_i_14_n_7\,
      O => \hist_sum_data_3[4]_i_6_n_0\
    );
\hist_sum_data_3[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[4]_i_3_n_0\,
      I1 => \hist_sum_data_3[8]_i_17_n_0\,
      I2 => \hist_sum_data_2_reg__0\(16),
      I3 => \hist_sum_data_3_reg[8]_i_14_n_7\,
      I4 => \hist_sum_data_3_reg[8]_i_13_n_7\,
      I5 => \hist_sum_data_3_reg[8]_i_12_n_7\,
      O => \hist_sum_data_3[4]_i_7_n_0\
    );
\hist_sum_data_3[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[4]_i_4_n_0\,
      I1 => \hist_sum_data_3[4]_i_11_n_0\,
      I2 => \hist_sum_data_2_reg__0\(15),
      I3 => \hist_sum_data_3_reg[4]_i_14_n_4\,
      I4 => \hist_sum_data_3_reg[4]_i_13_n_4\,
      I5 => \hist_sum_data_3_reg[4]_i_12_n_4\,
      O => \hist_sum_data_3[4]_i_8_n_0\
    );
\hist_sum_data_3[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[4]_i_5_n_0\,
      I1 => \hist_sum_data_3[4]_i_15_n_0\,
      I2 => \hist_sum_data_2_reg__0\(14),
      I3 => \hist_sum_data_3_reg[4]_i_14_n_5\,
      I4 => \hist_sum_data_3_reg[4]_i_13_n_5\,
      I5 => \hist_sum_data_3_reg[4]_i_12_n_5\,
      O => \hist_sum_data_3[4]_i_9_n_0\
    );
\hist_sum_data_3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_2_n_7\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[7]_i_2_n_6\,
      O => \hist_sum_data_3[5]_i_1_n_0\
    );
\hist_sum_data_3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_2_n_6\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[7]_i_2_n_5\,
      O => \hist_sum_data_3[6]_i_1_n_0\
    );
\hist_sum_data_3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_2_n_5\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[7]_i_2_n_4\,
      O => \hist_sum_data_3[7]_i_1_n_0\
    );
\hist_sum_data_3[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_2_n_4\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[11]_i_2_n_7\,
      O => \hist_sum_data_3[8]_i_1_n_0\
    );
\hist_sum_data_3[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[8]_i_6_n_0\,
      I1 => \hist_sum_data_3[8]_i_16_n_0\,
      I2 => \hist_sum_data_2_reg__0\(17),
      I3 => \hist_sum_data_3_reg[8]_i_14_n_6\,
      I4 => \hist_sum_data_3_reg[8]_i_13_n_6\,
      I5 => \hist_sum_data_3_reg[8]_i_12_n_6\,
      O => \hist_sum_data_3[8]_i_10_n_0\
    );
\hist_sum_data_3[8]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I1 => \hist_sum_data_3_reg[12]_i_13_n_7\,
      I2 => \hist_sum_data_3_reg[12]_i_12_n_7\,
      O => \hist_sum_data_3[8]_i_11_n_0\
    );
\hist_sum_data_3[8]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_12_n_4\,
      I1 => \hist_sum_data_3_reg[8]_i_14_n_4\,
      I2 => \hist_sum_data_3_reg[8]_i_13_n_4\,
      O => \hist_sum_data_3[8]_i_15_n_0\
    );
\hist_sum_data_3[8]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_12_n_5\,
      I1 => \hist_sum_data_3_reg[8]_i_14_n_5\,
      I2 => \hist_sum_data_3_reg[8]_i_13_n_5\,
      O => \hist_sum_data_3[8]_i_16_n_0\
    );
\hist_sum_data_3[8]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_3_reg[8]_i_12_n_6\,
      I1 => \hist_sum_data_3_reg[8]_i_14_n_6\,
      I2 => \hist_sum_data_3_reg[8]_i_13_n_6\,
      O => \hist_sum_data_3[8]_i_17_n_0\
    );
\hist_sum_data_3[8]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      I1 => \hist_sum_data_3_reg[12]_i_13_n_6\,
      I2 => \hist_sum_data_3_reg[12]_i_12_n_6\,
      O => \hist_sum_data_3[8]_i_18_n_0\
    );
\hist_sum_data_3[8]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_103\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(19)
    );
\hist_sum_data_3[8]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_104\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(18)
    );
\hist_sum_data_3[8]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_105\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_2_reg__0\(17)
    );
\hist_sum_data_3[8]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_92\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[8]_i_22_n_0\
    );
\hist_sum_data_3[8]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      O => \hist_sum_data_3[8]_i_23_n_0\
    );
\hist_sum_data_3[8]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_92\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_94\,
      O => \hist_sum_data_3[8]_i_24_n_0\
    );
\hist_sum_data_3[8]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_95\,
      O => \hist_sum_data_3[8]_i_25_n_0\
    );
\hist_sum_data_3[8]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_92\,
      O => \hist_sum_data_3[8]_i_26_n_0\
    );
\hist_sum_data_3[8]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B7"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_93\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_92\,
      O => \hist_sum_data_3[8]_i_27_n_0\
    );
\hist_sum_data_3[8]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF1F"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_94\,
      I1 => \hist_sum_data_20__0_n_92\,
      I2 => \hist_sum_data_3_reg[0]_0\,
      I3 => \hist_sum_data_20__0_n_93\,
      O => \hist_sum_data_3[8]_i_28_n_0\
    );
\hist_sum_data_3[8]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EFFE1FF"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_95\,
      I1 => \hist_sum_data_20__0_n_93\,
      I2 => \hist_sum_data_20__0_n_94\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_20__0_n_92\,
      O => \hist_sum_data_3[8]_i_29_n_0\
    );
\hist_sum_data_3[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F880F8808080"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_103\,
      I2 => \hist_sum_data_3[8]_i_11_n_0\,
      I3 => \hist_sum_data_3_reg[8]_i_12_n_4\,
      I4 => \hist_sum_data_3_reg[8]_i_13_n_4\,
      I5 => \hist_sum_data_3_reg[8]_i_14_n_4\,
      O => \hist_sum_data_3[8]_i_3_n_0\
    );
\hist_sum_data_3[8]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_96\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_98\,
      I3 => \hist_sum_data_20__0_n_93\,
      O => \hist_sum_data_3[8]_i_30_n_0\
    );
\hist_sum_data_3[8]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_97\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_99\,
      I3 => \hist_sum_data_20__0_n_94\,
      O => \hist_sum_data_3[8]_i_31_n_0\
    );
\hist_sum_data_3[8]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_98\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_100\,
      I3 => \hist_sum_data_20__0_n_95\,
      O => \hist_sum_data_3[8]_i_32_n_0\
    );
\hist_sum_data_3[8]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_99\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_101\,
      I3 => \hist_sum_data_20__0_n_96\,
      O => \hist_sum_data_3[8]_i_33_n_0\
    );
\hist_sum_data_3[8]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(29),
      I1 => \hist_sum_data_2_reg__0\(24),
      I2 => \hist_sum_data_2_reg__0\(26),
      I3 => \hist_sum_data_2_reg__0\(25),
      I4 => \hist_sum_data_2_reg__0\(27),
      I5 => \hist_sum_data_2_reg__0\(30),
      O => \hist_sum_data_3[8]_i_34_n_0\
    );
\hist_sum_data_3[8]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(28),
      I1 => \hist_sum_data_2_reg__0\(23),
      I2 => \hist_sum_data_2_reg__0\(25),
      I3 => \hist_sum_data_2_reg__0\(24),
      I4 => \hist_sum_data_2_reg__0\(26),
      I5 => \hist_sum_data_2_reg__0\(29),
      O => \hist_sum_data_3[8]_i_35_n_0\
    );
\hist_sum_data_3[8]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(27),
      I1 => \hist_sum_data_2_reg__0\(22),
      I2 => \hist_sum_data_2_reg__0\(24),
      I3 => \hist_sum_data_2_reg__0\(23),
      I4 => \hist_sum_data_2_reg__0\(25),
      I5 => \hist_sum_data_2_reg__0\(28),
      O => \hist_sum_data_3[8]_i_36_n_0\
    );
\hist_sum_data_3[8]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(26),
      I1 => \hist_sum_data_2_reg__0\(21),
      I2 => \hist_sum_data_2_reg__0\(23),
      I3 => \hist_sum_data_2_reg__0\(22),
      I4 => \hist_sum_data_2_reg__0\(24),
      I5 => \hist_sum_data_2_reg__0\(27),
      O => \hist_sum_data_3[8]_i_37_n_0\
    );
\hist_sum_data_3[8]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_100\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_104\,
      I3 => \hist_sum_data_20__0_n_102\,
      O => \hist_sum_data_3[8]_i_38_n_0\
    );
\hist_sum_data_3[8]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C440"
    )
        port map (
      I0 => \hist_sum_data_20__0_n_101\,
      I1 => \hist_sum_data_3_reg[0]_0\,
      I2 => \hist_sum_data_20__0_n_105\,
      I3 => \hist_sum_data_20__0_n_103\,
      O => \hist_sum_data_3[8]_i_39_n_0\
    );
\hist_sum_data_3[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F880F8808080"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_104\,
      I2 => \hist_sum_data_3[8]_i_15_n_0\,
      I3 => \hist_sum_data_3_reg[8]_i_12_n_5\,
      I4 => \hist_sum_data_3_reg[8]_i_13_n_5\,
      I5 => \hist_sum_data_3_reg[8]_i_14_n_5\,
      O => \hist_sum_data_3[8]_i_4_n_0\
    );
\hist_sum_data_3[8]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F270"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_102\,
      I2 => \hist_sum_data_2_reg__0\(16),
      I3 => \hist_sum_data_20__0_n_104\,
      O => \hist_sum_data_3[8]_i_40_n_0\
    );
\hist_sum_data_3[8]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F270"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_103\,
      I2 => \hist_sum_data_2_reg__0\(15),
      I3 => \hist_sum_data_20__0_n_105\,
      O => \hist_sum_data_3[8]_i_41_n_0\
    );
\hist_sum_data_3[8]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(20),
      I1 => \hist_sum_data_2_reg__0\(18),
      I2 => \hist_sum_data_2_reg__0\(22),
      I3 => \hist_sum_data_2_reg__0\(23),
      I4 => \hist_sum_data_2_reg__0\(19),
      I5 => \hist_sum_data_2_reg__0\(21),
      O => \hist_sum_data_3[8]_i_42_n_0\
    );
\hist_sum_data_3[8]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(19),
      I1 => \hist_sum_data_2_reg__0\(17),
      I2 => \hist_sum_data_2_reg__0\(21),
      I3 => \hist_sum_data_2_reg__0\(22),
      I4 => \hist_sum_data_2_reg__0\(18),
      I5 => \hist_sum_data_2_reg__0\(20),
      O => \hist_sum_data_3[8]_i_43_n_0\
    );
\hist_sum_data_3[8]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(18),
      I1 => \hist_sum_data_2_reg__0\(16),
      I2 => \hist_sum_data_2_reg__0\(20),
      I3 => \hist_sum_data_2_reg__0\(21),
      I4 => \hist_sum_data_2_reg__0\(17),
      I5 => \hist_sum_data_2_reg__0\(19),
      O => \hist_sum_data_3[8]_i_44_n_0\
    );
\hist_sum_data_3[8]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(17),
      I1 => \hist_sum_data_2_reg__0\(15),
      I2 => \hist_sum_data_2_reg__0\(19),
      I3 => \hist_sum_data_2_reg__0\(20),
      I4 => \hist_sum_data_2_reg__0\(16),
      I5 => \hist_sum_data_2_reg__0\(18),
      O => \hist_sum_data_3[8]_i_45_n_0\
    );
\hist_sum_data_3[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F880F8808080"
    )
        port map (
      I0 => \hist_sum_data_3_reg[0]_0\,
      I1 => \hist_sum_data_20__0_n_105\,
      I2 => \hist_sum_data_3[8]_i_16_n_0\,
      I3 => \hist_sum_data_3_reg[8]_i_12_n_6\,
      I4 => \hist_sum_data_3_reg[8]_i_13_n_6\,
      I5 => \hist_sum_data_3_reg[8]_i_14_n_6\,
      O => \hist_sum_data_3[8]_i_5_n_0\
    );
\hist_sum_data_3[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \hist_sum_data_2_reg__0\(16),
      I1 => \hist_sum_data_3[8]_i_17_n_0\,
      I2 => \hist_sum_data_3_reg[8]_i_12_n_7\,
      I3 => \hist_sum_data_3_reg[8]_i_13_n_7\,
      I4 => \hist_sum_data_3_reg[8]_i_14_n_7\,
      O => \hist_sum_data_3[8]_i_6_n_0\
    );
\hist_sum_data_3[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969669696996"
    )
        port map (
      I0 => \hist_sum_data_3[8]_i_3_n_0\,
      I1 => \hist_sum_data_3[8]_i_18_n_0\,
      I2 => \hist_sum_data_2_reg__0\(20),
      I3 => \hist_sum_data_3_reg[12]_i_13_n_7\,
      I4 => \hist_sum_data_3_reg[12]_i_12_n_7\,
      I5 => \hist_sum_data_3_reg[19]_i_20_n_3\,
      O => \hist_sum_data_3[8]_i_7_n_0\
    );
\hist_sum_data_3[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[8]_i_4_n_0\,
      I1 => \hist_sum_data_3[8]_i_11_n_0\,
      I2 => \hist_sum_data_2_reg__0\(19),
      I3 => \hist_sum_data_3_reg[8]_i_14_n_4\,
      I4 => \hist_sum_data_3_reg[8]_i_13_n_4\,
      I5 => \hist_sum_data_3_reg[8]_i_12_n_4\,
      O => \hist_sum_data_3[8]_i_8_n_0\
    );
\hist_sum_data_3[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_3[8]_i_5_n_0\,
      I1 => \hist_sum_data_3[8]_i_15_n_0\,
      I2 => \hist_sum_data_2_reg__0\(18),
      I3 => \hist_sum_data_3_reg[8]_i_14_n_5\,
      I4 => \hist_sum_data_3_reg[8]_i_13_n_5\,
      I5 => \hist_sum_data_3_reg[8]_i_12_n_5\,
      O => \hist_sum_data_3[8]_i_9_n_0\
    );
\hist_sum_data_3[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABBBB8AAA8888"
    )
        port map (
      I0 => \hist_sum_data_3_reg[12]_i_2_n_7\,
      I1 => \hist_sum_data_3_reg[19]_i_3_n_2\,
      I2 => \hist_sum_data_20__0_n_92\,
      I3 => \hist_sum_data_3_reg[0]_0\,
      I4 => \hist_sum_data_3_reg[19]_i_5_n_7\,
      I5 => \hist_sum_data_3_reg[11]_i_2_n_6\,
      O => \hist_sum_data_3[9]_i_1_n_0\
    );
\hist_sum_data_3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[0]_i_1_n_0\,
      Q => hist_sum_data_3(0)
    );
\hist_sum_data_3_reg[0]_i_108\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_3_reg[0]_i_108_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_108_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_108_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_108_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \hist_sum_data_2_reg__0\(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => \hist_sum_data_3_reg[0]_i_108_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_108_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_108_n_6\,
      O(0) => \NLW_hist_sum_data_3_reg[0]_i_108_O_UNCONNECTED\(0),
      S(3) => \hist_sum_data_3[0]_i_141_n_0\,
      S(2) => \hist_sum_data_3[0]_i_142_n_0\,
      S(1) => \hist_sum_data_3[0]_i_143_n_0\,
      S(0) => \hist_sum_data_2_reg__0\(0)
    );
\hist_sum_data_3_reg[0]_i_109\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_139_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_109_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_109_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_109_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_109_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_144_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_145_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_146_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_147_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_109_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_109_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_109_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_109_n_7\,
      S(3) => \hist_sum_data_3[0]_i_148_n_0\,
      S(2) => \hist_sum_data_3[0]_i_149_n_0\,
      S(1) => \hist_sum_data_3[0]_i_150_n_0\,
      S(0) => \hist_sum_data_3[0]_i_151_n_0\
    );
\hist_sum_data_3_reg[0]_i_110\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_140_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_110_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_110_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_110_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_110_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_56_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_57_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_58_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_59_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_110_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_110_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_110_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_110_n_7\,
      S(3) => \hist_sum_data_3[0]_i_152_n_0\,
      S(2) => \hist_sum_data_3[0]_i_153_n_0\,
      S(1) => \hist_sum_data_3[0]_i_154_n_0\,
      S(0) => \hist_sum_data_3[0]_i_155_n_0\
    );
\hist_sum_data_3_reg[0]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_28_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_12_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_12_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_12_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_29_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_30_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_31_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_32_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[0]_i_12_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_3[0]_i_33_n_0\,
      S(2) => \hist_sum_data_3[0]_i_34_n_0\,
      S(1) => \hist_sum_data_3[0]_i_35_n_0\,
      S(0) => \hist_sum_data_3[0]_i_36_n_0\
    );
\hist_sum_data_3_reg[0]_i_138\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_3_reg[0]_i_138_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_138_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_138_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_138_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \hist_sum_data_2_reg__0\(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3 downto 1) => \NLW_hist_sum_data_3_reg[0]_i_138_O_UNCONNECTED\(3 downto 1),
      O(0) => \hist_sum_data_3_reg[0]_i_138_n_7\,
      S(3) => \hist_sum_data_3[0]_i_157_n_0\,
      S(2) => \hist_sum_data_3[0]_i_158_n_0\,
      S(1) => \hist_sum_data_3[0]_i_159_n_0\,
      S(0) => \hist_sum_data_2_reg__0\(0)
    );
\hist_sum_data_3_reg[0]_i_139\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_3_reg[0]_i_139_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_139_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_139_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_139_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_160_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_161_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_162_n_0\,
      DI(0) => '0',
      O(3) => \hist_sum_data_3_reg[0]_i_139_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_139_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_139_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_139_n_7\,
      S(3) => \hist_sum_data_3[0]_i_163_n_0\,
      S(2) => \hist_sum_data_3[0]_i_164_n_0\,
      S(1) => \hist_sum_data_3[0]_i_165_n_0\,
      S(0) => \hist_sum_data_3[0]_i_166_n_0\
    );
\hist_sum_data_3_reg[0]_i_140\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_156_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_140_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_140_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_140_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_140_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_91_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_92_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_93_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_94_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_140_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_140_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_140_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_140_n_7\,
      S(3) => \hist_sum_data_3[0]_i_167_n_0\,
      S(2) => \hist_sum_data_3[0]_i_168_n_0\,
      S(1) => \hist_sum_data_3[0]_i_169_n_0\,
      S(0) => \hist_sum_data_3[0]_i_170_n_0\
    );
\hist_sum_data_3_reg[0]_i_156\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_138_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_156_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_156_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_156_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_156_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_123_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_124_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_171_n_0\,
      DI(0) => \hist_sum_data_2_reg__0\(2),
      O(3) => \hist_sum_data_3_reg[0]_i_156_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_156_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_156_n_6\,
      O(0) => \NLW_hist_sum_data_3_reg[0]_i_156_O_UNCONNECTED\(0),
      S(3) => \hist_sum_data_3[0]_i_172_n_0\,
      S(2) => \hist_sum_data_3[0]_i_173_n_0\,
      S(1) => \hist_sum_data_3[0]_i_174_n_0\,
      S(0) => \hist_sum_data_3[0]_i_175_n_0\
    );
\hist_sum_data_3_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_3_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_2_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_2_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_2_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_4_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_5_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_6_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_7_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_2_n_4\,
      O(2 downto 0) => \NLW_hist_sum_data_3_reg[0]_i_2_O_UNCONNECTED\(2 downto 0),
      S(3) => \hist_sum_data_3[0]_i_8_n_0\,
      S(2) => \hist_sum_data_3[0]_i_9_n_0\,
      S(1) => \hist_sum_data_3[0]_i_10_n_0\,
      S(0) => \hist_sum_data_3[0]_i_11_n_0\
    );
\hist_sum_data_3_reg[0]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_38_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_22_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_22_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_22_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_22_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[12]_i_29_n_0\,
      DI(2) => \hist_sum_data_3[12]_i_30_n_0\,
      DI(1) => \hist_sum_data_3[12]_i_31_n_0\,
      DI(0) => \hist_sum_data_3[12]_i_32_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_22_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_22_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_22_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_22_n_7\,
      S(3) => \hist_sum_data_3[0]_i_44_n_0\,
      S(2) => \hist_sum_data_3[0]_i_45_n_0\,
      S(1) => \hist_sum_data_3[0]_i_46_n_0\,
      S(0) => \hist_sum_data_3[0]_i_47_n_0\
    );
\hist_sum_data_3_reg[0]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_39_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_23_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_23_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_23_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_23_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_48_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_49_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_50_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_51_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_23_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_23_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_23_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_23_n_7\,
      S(3) => \hist_sum_data_3[0]_i_52_n_0\,
      S(2) => \hist_sum_data_3[0]_i_53_n_0\,
      S(1) => \hist_sum_data_3[0]_i_54_n_0\,
      S(0) => \hist_sum_data_3[0]_i_55_n_0\
    );
\hist_sum_data_3_reg[0]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_40_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_24_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_24_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_24_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_24_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_56_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_57_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_58_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_59_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_24_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_24_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_24_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_24_n_7\,
      S(3) => \hist_sum_data_3[0]_i_60_n_0\,
      S(2) => \hist_sum_data_3[0]_i_61_n_0\,
      S(1) => \hist_sum_data_3[0]_i_62_n_0\,
      S(0) => \hist_sum_data_3[0]_i_63_n_0\
    );
\hist_sum_data_3_reg[0]_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_64_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_28_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_28_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_28_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_28_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_65_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_66_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_67_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_68_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[0]_i_28_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_3[0]_i_69_n_0\,
      S(2) => \hist_sum_data_3[0]_i_70_n_0\,
      S(1) => \hist_sum_data_3[0]_i_71_n_0\,
      S(0) => \hist_sum_data_3[0]_i_72_n_0\
    );
\hist_sum_data_3_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_12_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_3_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_3_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_3_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_13_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_14_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_15_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_16_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[0]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_3[0]_i_17_n_0\,
      S(2) => \hist_sum_data_3[0]_i_18_n_0\,
      S(1) => \hist_sum_data_3[0]_i_19_n_0\,
      S(0) => \hist_sum_data_3[0]_i_20_n_0\
    );
\hist_sum_data_3_reg[0]_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_74_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_38_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_38_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_38_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_38_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[8]_i_38_n_0\,
      DI(2) => \hist_sum_data_3[8]_i_39_n_0\,
      DI(1) => \hist_sum_data_3[8]_i_40_n_0\,
      DI(0) => \hist_sum_data_3[8]_i_41_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_38_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_38_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_38_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_38_n_7\,
      S(3) => \hist_sum_data_3[0]_i_79_n_0\,
      S(2) => \hist_sum_data_3[0]_i_80_n_0\,
      S(1) => \hist_sum_data_3[0]_i_81_n_0\,
      S(0) => \hist_sum_data_3[0]_i_82_n_0\
    );
\hist_sum_data_3_reg[0]_i_39\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_75_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_39_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_39_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_39_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_39_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_83_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_84_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_85_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_86_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_39_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_39_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_39_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_39_n_7\,
      S(3) => \hist_sum_data_3[0]_i_87_n_0\,
      S(2) => \hist_sum_data_3[0]_i_88_n_0\,
      S(1) => \hist_sum_data_3[0]_i_89_n_0\,
      S(0) => \hist_sum_data_3[0]_i_90_n_0\
    );
\hist_sum_data_3_reg[0]_i_40\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_76_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_40_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_40_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_40_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_40_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_91_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_92_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_93_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_94_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_40_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_40_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_40_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_40_n_7\,
      S(3) => \hist_sum_data_3[0]_i_95_n_0\,
      S(2) => \hist_sum_data_3[0]_i_96_n_0\,
      S(1) => \hist_sum_data_3[0]_i_97_n_0\,
      S(0) => \hist_sum_data_3[0]_i_98_n_0\
    );
\hist_sum_data_3_reg[0]_i_64\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_99_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_64_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_64_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_64_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_64_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_100_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_101_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_102_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_103_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[0]_i_64_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_3[0]_i_104_n_0\,
      S(2) => \hist_sum_data_3[0]_i_105_n_0\,
      S(1) => \hist_sum_data_3[0]_i_106_n_0\,
      S(0) => \hist_sum_data_3[0]_i_107_n_0\
    );
\hist_sum_data_3_reg[0]_i_74\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_110_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_74_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_74_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_74_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_74_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[4]_i_30_n_0\,
      DI(2) => \hist_sum_data_3[4]_i_31_n_0\,
      DI(1) => \hist_sum_data_3[4]_i_32_n_0\,
      DI(0) => \hist_sum_data_3[4]_i_33_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_74_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_74_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_74_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_74_n_7\,
      S(3) => \hist_sum_data_3[0]_i_111_n_0\,
      S(2) => \hist_sum_data_3[0]_i_112_n_0\,
      S(1) => \hist_sum_data_3[0]_i_113_n_0\,
      S(0) => \hist_sum_data_3[0]_i_114_n_0\
    );
\hist_sum_data_3_reg[0]_i_75\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_109_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_75_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_75_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_75_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_75_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_115_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_116_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_117_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_118_n_0\,
      O(3) => \hist_sum_data_3_reg[0]_i_75_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_75_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_75_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_75_n_7\,
      S(3) => \hist_sum_data_3[0]_i_119_n_0\,
      S(2) => \hist_sum_data_3[0]_i_120_n_0\,
      S(1) => \hist_sum_data_3[0]_i_121_n_0\,
      S(0) => \hist_sum_data_3[0]_i_122_n_0\
    );
\hist_sum_data_3_reg[0]_i_76\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_108_n_0\,
      CO(3) => \hist_sum_data_3_reg[0]_i_76_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_76_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_76_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_76_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_123_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_124_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_125_n_0\,
      DI(0) => \hist_sum_data_2_reg__0\(2),
      O(3) => \hist_sum_data_3_reg[0]_i_76_n_4\,
      O(2) => \hist_sum_data_3_reg[0]_i_76_n_5\,
      O(1) => \hist_sum_data_3_reg[0]_i_76_n_6\,
      O(0) => \hist_sum_data_3_reg[0]_i_76_n_7\,
      S(3) => \hist_sum_data_3[0]_i_126_n_0\,
      S(2) => \hist_sum_data_3[0]_i_127_n_0\,
      S(1) => \hist_sum_data_3[0]_i_128_n_0\,
      S(0) => \hist_sum_data_3[0]_i_129_n_0\
    );
\hist_sum_data_3_reg[0]_i_99\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_3_reg[0]_i_99_n_0\,
      CO(2) => \hist_sum_data_3_reg[0]_i_99_n_1\,
      CO(1) => \hist_sum_data_3_reg[0]_i_99_n_2\,
      CO(0) => \hist_sum_data_3_reg[0]_i_99_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[0]_i_130_n_0\,
      DI(2) => \hist_sum_data_3[0]_i_131_n_0\,
      DI(1) => \hist_sum_data_3[0]_i_132_n_0\,
      DI(0) => \hist_sum_data_3[0]_i_133_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[0]_i_99_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_3[0]_i_134_n_0\,
      S(2) => \hist_sum_data_3[0]_i_135_n_0\,
      S(1) => \hist_sum_data_3[0]_i_136_n_0\,
      S(0) => \hist_sum_data_3[0]_i_137_n_0\
    );
\hist_sum_data_3_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[10]_i_1_n_0\,
      Q => hist_sum_data_3(10)
    );
\hist_sum_data_3_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[11]_i_1_n_0\,
      Q => hist_sum_data_3(11)
    );
\hist_sum_data_3_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[7]_i_2_n_0\,
      CO(3) => \hist_sum_data_3_reg[11]_i_2_n_0\,
      CO(2) => \hist_sum_data_3_reg[11]_i_2_n_1\,
      CO(1) => \hist_sum_data_3_reg[11]_i_2_n_2\,
      CO(0) => \hist_sum_data_3_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hist_sum_data_3_reg[11]_i_2_n_4\,
      O(2) => \hist_sum_data_3_reg[11]_i_2_n_5\,
      O(1) => \hist_sum_data_3_reg[11]_i_2_n_6\,
      O(0) => \hist_sum_data_3_reg[11]_i_2_n_7\,
      S(3) => \hist_sum_data_3_reg[12]_i_2_n_5\,
      S(2) => \hist_sum_data_3_reg[12]_i_2_n_6\,
      S(1) => \hist_sum_data_3_reg[12]_i_2_n_7\,
      S(0) => \hist_sum_data_3_reg[8]_i_2_n_4\
    );
\hist_sum_data_3_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[12]_i_1_n_0\,
      Q => hist_sum_data_3(12)
    );
\hist_sum_data_3_reg[12]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[8]_i_13_n_0\,
      CO(3) => \hist_sum_data_3_reg[12]_i_12_n_0\,
      CO(2) => \hist_sum_data_3_reg[12]_i_12_n_1\,
      CO(1) => \hist_sum_data_3_reg[12]_i_12_n_2\,
      CO(0) => \hist_sum_data_3_reg[12]_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[12]_i_21_n_0\,
      DI(2) => \hist_sum_data_3[12]_i_22_n_0\,
      DI(1) => \hist_sum_data_3[12]_i_23_n_0\,
      DI(0) => \hist_sum_data_3[12]_i_24_n_0\,
      O(3) => \hist_sum_data_3_reg[12]_i_12_n_4\,
      O(2) => \hist_sum_data_3_reg[12]_i_12_n_5\,
      O(1) => \hist_sum_data_3_reg[12]_i_12_n_6\,
      O(0) => \hist_sum_data_3_reg[12]_i_12_n_7\,
      S(3) => \hist_sum_data_3[12]_i_25_n_0\,
      S(2) => \hist_sum_data_3[12]_i_26_n_0\,
      S(1) => \hist_sum_data_3[12]_i_27_n_0\,
      S(0) => \hist_sum_data_3[12]_i_28_n_0\
    );
\hist_sum_data_3_reg[12]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[8]_i_14_n_0\,
      CO(3) => \hist_sum_data_3_reg[12]_i_13_n_0\,
      CO(2) => \hist_sum_data_3_reg[12]_i_13_n_1\,
      CO(1) => \hist_sum_data_3_reg[12]_i_13_n_2\,
      CO(0) => \hist_sum_data_3_reg[12]_i_13_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[12]_i_29_n_0\,
      DI(2) => \hist_sum_data_3[12]_i_30_n_0\,
      DI(1) => \hist_sum_data_3[12]_i_31_n_0\,
      DI(0) => \hist_sum_data_3[12]_i_32_n_0\,
      O(3) => \hist_sum_data_3_reg[12]_i_13_n_4\,
      O(2) => \hist_sum_data_3_reg[12]_i_13_n_5\,
      O(1) => \hist_sum_data_3_reg[12]_i_13_n_6\,
      O(0) => \hist_sum_data_3_reg[12]_i_13_n_7\,
      S(3) => \hist_sum_data_3[12]_i_33_n_0\,
      S(2) => \hist_sum_data_3[12]_i_34_n_0\,
      S(1) => \hist_sum_data_3[12]_i_35_n_0\,
      S(0) => \hist_sum_data_3[12]_i_36_n_0\
    );
\hist_sum_data_3_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[8]_i_2_n_0\,
      CO(3) => \hist_sum_data_3_reg[12]_i_2_n_0\,
      CO(2) => \hist_sum_data_3_reg[12]_i_2_n_1\,
      CO(1) => \hist_sum_data_3_reg[12]_i_2_n_2\,
      CO(0) => \hist_sum_data_3_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[12]_i_3_n_0\,
      DI(2) => \hist_sum_data_3[12]_i_4_n_0\,
      DI(1) => \hist_sum_data_3[12]_i_5_n_0\,
      DI(0) => \hist_sum_data_3[12]_i_6_n_0\,
      O(3) => \hist_sum_data_3_reg[12]_i_2_n_4\,
      O(2) => \hist_sum_data_3_reg[12]_i_2_n_5\,
      O(1) => \hist_sum_data_3_reg[12]_i_2_n_6\,
      O(0) => \hist_sum_data_3_reg[12]_i_2_n_7\,
      S(3) => \hist_sum_data_3[12]_i_7_n_0\,
      S(2) => \hist_sum_data_3[12]_i_8_n_0\,
      S(1) => \hist_sum_data_3[12]_i_9_n_0\,
      S(0) => \hist_sum_data_3[12]_i_10_n_0\
    );
\hist_sum_data_3_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[13]_i_1_n_0\,
      Q => hist_sum_data_3(13)
    );
\hist_sum_data_3_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[14]_i_1_n_0\,
      Q => hist_sum_data_3(14)
    );
\hist_sum_data_3_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[15]_i_1_n_0\,
      Q => hist_sum_data_3(15)
    );
\hist_sum_data_3_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[11]_i_2_n_0\,
      CO(3) => \hist_sum_data_3_reg[15]_i_2_n_0\,
      CO(2) => \hist_sum_data_3_reg[15]_i_2_n_1\,
      CO(1) => \hist_sum_data_3_reg[15]_i_2_n_2\,
      CO(0) => \hist_sum_data_3_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hist_sum_data_3_reg[15]_i_2_n_4\,
      O(2) => \hist_sum_data_3_reg[15]_i_2_n_5\,
      O(1) => \hist_sum_data_3_reg[15]_i_2_n_6\,
      O(0) => \hist_sum_data_3_reg[15]_i_2_n_7\,
      S(3) => \hist_sum_data_3_reg[16]_i_2_n_5\,
      S(2) => \hist_sum_data_3_reg[16]_i_2_n_6\,
      S(1) => \hist_sum_data_3_reg[16]_i_2_n_7\,
      S(0) => \hist_sum_data_3_reg[12]_i_2_n_4\
    );
\hist_sum_data_3_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[16]_i_1_n_0\,
      Q => hist_sum_data_3(16)
    );
\hist_sum_data_3_reg[16]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[12]_i_13_n_0\,
      CO(3) => \hist_sum_data_3_reg[16]_i_11_n_0\,
      CO(2) => \hist_sum_data_3_reg[16]_i_11_n_1\,
      CO(1) => \hist_sum_data_3_reg[16]_i_11_n_2\,
      CO(0) => \hist_sum_data_3_reg[16]_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[16]_i_18_n_0\,
      DI(2) => \hist_sum_data_3[16]_i_19_n_0\,
      DI(1) => \hist_sum_data_3[16]_i_20_n_0\,
      DI(0) => \hist_sum_data_3[16]_i_21_n_0\,
      O(3) => \hist_sum_data_3_reg[16]_i_11_n_4\,
      O(2) => \hist_sum_data_3_reg[16]_i_11_n_5\,
      O(1) => \hist_sum_data_3_reg[16]_i_11_n_6\,
      O(0) => \hist_sum_data_3_reg[16]_i_11_n_7\,
      S(3) => \hist_sum_data_3[16]_i_22_n_0\,
      S(2) => \hist_sum_data_3[16]_i_23_n_0\,
      S(1) => \hist_sum_data_3[16]_i_24_n_0\,
      S(0) => \hist_sum_data_3[16]_i_25_n_0\
    );
\hist_sum_data_3_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[12]_i_2_n_0\,
      CO(3) => \hist_sum_data_3_reg[16]_i_2_n_0\,
      CO(2) => \hist_sum_data_3_reg[16]_i_2_n_1\,
      CO(1) => \hist_sum_data_3_reg[16]_i_2_n_2\,
      CO(0) => \hist_sum_data_3_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[16]_i_3_n_0\,
      DI(2) => \hist_sum_data_3[16]_i_4_n_0\,
      DI(1) => \hist_sum_data_3[16]_i_5_n_0\,
      DI(0) => \hist_sum_data_3[16]_i_6_n_0\,
      O(3) => \hist_sum_data_3_reg[16]_i_2_n_4\,
      O(2) => \hist_sum_data_3_reg[16]_i_2_n_5\,
      O(1) => \hist_sum_data_3_reg[16]_i_2_n_6\,
      O(0) => \hist_sum_data_3_reg[16]_i_2_n_7\,
      S(3) => \hist_sum_data_3[16]_i_7_n_0\,
      S(2) => \hist_sum_data_3[16]_i_8_n_0\,
      S(1) => \hist_sum_data_3[16]_i_9_n_0\,
      S(0) => \hist_sum_data_3[16]_i_10_n_0\
    );
\hist_sum_data_3_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[17]_i_1_n_0\,
      Q => hist_sum_data_3(17)
    );
\hist_sum_data_3_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[18]_i_1_n_0\,
      Q => hist_sum_data_3(18)
    );
\hist_sum_data_3_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[19]_i_1_n_0\,
      Q => hist_sum_data_3(19)
    );
\hist_sum_data_3_reg[19]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_24_n_0\,
      CO(3) => \hist_sum_data_3_reg[19]_i_12_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_12_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_12_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[19]_i_25_n_0\,
      DI(2) => \hist_sum_data_3[19]_i_26_n_0\,
      DI(1) => \hist_sum_data_3[19]_i_27_n_0\,
      DI(0) => \hist_sum_data_3[19]_i_28_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[19]_i_12_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_3[19]_i_29_n_0\,
      S(2) => \hist_sum_data_3[19]_i_30_n_0\,
      S(1) => \hist_sum_data_3[19]_i_31_n_0\,
      S(0) => \hist_sum_data_3[19]_i_32_n_0\
    );
\hist_sum_data_3_reg[19]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_33_n_0\,
      CO(3) => \hist_sum_data_3_reg[19]_i_17_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_17_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_17_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_17_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \hist_sum_data_3_reg[19]_i_2_n_5\,
      DI(1) => \hist_sum_data_3_reg[19]_i_2_n_6\,
      DI(0) => \hist_sum_data_3_reg[19]_i_2_n_7\,
      O(3) => \hist_sum_data_3_reg[19]_i_17_n_4\,
      O(2) => \hist_sum_data_3_reg[19]_i_17_n_5\,
      O(1) => \hist_sum_data_3_reg[19]_i_17_n_6\,
      O(0) => \hist_sum_data_3_reg[19]_i_17_n_7\,
      S(3) => \hist_sum_data_3_reg[19]_i_2_n_6\,
      S(2) => \hist_sum_data_3[19]_i_34_n_0\,
      S(1) => \hist_sum_data_3[19]_i_35_n_0\,
      S(0) => \hist_sum_data_3[19]_i_36_n_0\
    );
\hist_sum_data_3_reg[19]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[12]_i_12_n_0\,
      CO(3) => \NLW_hist_sum_data_3_reg[19]_i_18_CO_UNCONNECTED\(3),
      CO(2) => \hist_sum_data_3_reg[19]_i_18_n_1\,
      CO(1) => \NLW_hist_sum_data_3_reg[19]_i_18_CO_UNCONNECTED\(1),
      CO(0) => \hist_sum_data_3_reg[19]_i_18_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \hist_sum_data_3[19]_i_37_n_0\,
      DI(0) => \hist_sum_data_3[19]_i_38_n_0\,
      O(3 downto 2) => \NLW_hist_sum_data_3_reg[19]_i_18_O_UNCONNECTED\(3 downto 2),
      O(1) => \hist_sum_data_3_reg[19]_i_18_n_6\,
      O(0) => \hist_sum_data_3_reg[19]_i_18_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \hist_sum_data_3[19]_i_39_n_0\,
      S(0) => \hist_sum_data_3[19]_i_40_n_0\
    );
\hist_sum_data_3_reg[19]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[16]_i_11_n_0\,
      CO(3) => \hist_sum_data_3_reg[19]_i_19_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_19_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_19_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[19]_i_41_n_0\,
      DI(2) => \hist_sum_data_3[19]_i_42_n_0\,
      DI(1) => \hist_sum_data_3[19]_i_43_n_0\,
      DI(0) => \hist_sum_data_3[19]_i_44_n_0\,
      O(3) => \hist_sum_data_3_reg[19]_i_19_n_4\,
      O(2) => \hist_sum_data_3_reg[19]_i_19_n_5\,
      O(1) => \hist_sum_data_3_reg[19]_i_19_n_6\,
      O(0) => \hist_sum_data_3_reg[19]_i_19_n_7\,
      S(3) => \hist_sum_data_3[19]_i_45_n_0\,
      S(2) => \hist_sum_data_3[19]_i_46_n_0\,
      S(1) => \hist_sum_data_3[19]_i_47_n_0\,
      S(0) => \hist_sum_data_3[19]_i_48_n_0\
    );
\hist_sum_data_3_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[16]_i_2_n_0\,
      CO(3 downto 2) => \NLW_hist_sum_data_3_reg[19]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \hist_sum_data_3_reg[19]_i_2_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \hist_sum_data_3[19]_i_7_n_0\,
      DI(0) => \hist_sum_data_3[19]_i_8_n_0\,
      O(3) => \NLW_hist_sum_data_3_reg[19]_i_2_O_UNCONNECTED\(3),
      O(2) => \hist_sum_data_3_reg[19]_i_2_n_5\,
      O(1) => \hist_sum_data_3_reg[19]_i_2_n_6\,
      O(0) => \hist_sum_data_3_reg[19]_i_2_n_7\,
      S(3) => '0',
      S(2) => \hist_sum_data_3[19]_i_9_n_0\,
      S(1) => \hist_sum_data_3[19]_i_10_n_0\,
      S(0) => \hist_sum_data_3[19]_i_11_n_0\
    );
\hist_sum_data_3_reg[19]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[8]_i_12_n_0\,
      CO(3 downto 1) => \NLW_hist_sum_data_3_reg[19]_i_20_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \hist_sum_data_3_reg[19]_i_20_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[19]_i_20_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\hist_sum_data_3_reg[19]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_19_n_0\,
      CO(3 downto 1) => \NLW_hist_sum_data_3_reg[19]_i_22_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \hist_sum_data_3_reg[19]_i_22_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[19]_i_22_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\hist_sum_data_3_reg[19]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_49_n_0\,
      CO(3) => \hist_sum_data_3_reg[19]_i_24_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_24_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_24_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_24_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[19]_i_50_n_0\,
      DI(2) => \hist_sum_data_3[19]_i_51_n_0\,
      DI(1) => \hist_sum_data_3[19]_i_52_n_0\,
      DI(0) => \hist_sum_data_3[19]_i_53_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[19]_i_24_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_3[19]_i_54_n_0\,
      S(2) => \hist_sum_data_3[19]_i_55_n_0\,
      S(1) => \hist_sum_data_3[19]_i_56_n_0\,
      S(0) => \hist_sum_data_3[19]_i_57_n_0\
    );
\hist_sum_data_3_reg[19]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_12_n_0\,
      CO(3 downto 2) => \NLW_hist_sum_data_3_reg[19]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \hist_sum_data_3_reg[19]_i_3_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \hist_sum_data_3[19]_i_13_n_0\,
      DI(0) => \hist_sum_data_3[19]_i_14_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[19]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \hist_sum_data_3[19]_i_15_n_0\,
      S(0) => \hist_sum_data_3[19]_i_16_n_0\
    );
\hist_sum_data_3_reg[19]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_58_n_0\,
      CO(3) => \hist_sum_data_3_reg[19]_i_33_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_33_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_33_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_33_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3_reg[16]_i_2_n_4\,
      DI(2) => \hist_sum_data_3_reg[16]_i_2_n_5\,
      DI(1) => \hist_sum_data_3_reg[16]_i_2_n_6\,
      DI(0) => \hist_sum_data_3_reg[16]_i_2_n_7\,
      O(3) => \hist_sum_data_3_reg[19]_i_33_n_4\,
      O(2) => \hist_sum_data_3_reg[19]_i_33_n_5\,
      O(1) => \hist_sum_data_3_reg[19]_i_33_n_6\,
      O(0) => \hist_sum_data_3_reg[19]_i_33_n_7\,
      S(3) => \hist_sum_data_3[19]_i_59_n_0\,
      S(2) => \hist_sum_data_3[19]_i_60_n_0\,
      S(1) => \hist_sum_data_3[19]_i_61_n_0\,
      S(0) => \hist_sum_data_3[19]_i_62_n_0\
    );
\hist_sum_data_3_reg[19]_i_49\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_63_n_0\,
      CO(3) => \hist_sum_data_3_reg[19]_i_49_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_49_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_49_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_49_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[19]_i_64_n_0\,
      DI(2) => \hist_sum_data_3[19]_i_65_n_0\,
      DI(1) => \hist_sum_data_3[19]_i_66_n_0\,
      DI(0) => \hist_sum_data_3[19]_i_67_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[19]_i_49_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_3[19]_i_68_n_0\,
      S(2) => \hist_sum_data_3[19]_i_69_n_0\,
      S(1) => \hist_sum_data_3[19]_i_70_n_0\,
      S(0) => \hist_sum_data_3[19]_i_71_n_0\
    );
\hist_sum_data_3_reg[19]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_17_n_0\,
      CO(3 downto 0) => \NLW_hist_sum_data_3_reg[19]_i_5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_hist_sum_data_3_reg[19]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \hist_sum_data_3_reg[19]_i_5_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \hist_sum_data_3_reg[19]_i_2_n_5\
    );
\hist_sum_data_3_reg[19]_i_58\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_72_n_0\,
      CO(3) => \hist_sum_data_3_reg[19]_i_58_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_58_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_58_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_58_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3_reg[12]_i_2_n_4\,
      DI(2) => \hist_sum_data_3_reg[12]_i_2_n_5\,
      DI(1) => \hist_sum_data_3_reg[12]_i_2_n_6\,
      DI(0) => \hist_sum_data_3_reg[12]_i_2_n_7\,
      O(3) => \hist_sum_data_3_reg[19]_i_58_n_4\,
      O(2) => \hist_sum_data_3_reg[19]_i_58_n_5\,
      O(1) => \hist_sum_data_3_reg[19]_i_58_n_6\,
      O(0) => \hist_sum_data_3_reg[19]_i_58_n_7\,
      S(3) => \hist_sum_data_3[19]_i_73_n_0\,
      S(2) => \hist_sum_data_3[19]_i_74_n_0\,
      S(1) => \hist_sum_data_3[19]_i_75_n_0\,
      S(0) => \hist_sum_data_3[19]_i_76_n_0\
    );
\hist_sum_data_3_reg[19]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[15]_i_2_n_0\,
      CO(3) => \NLW_hist_sum_data_3_reg[19]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \hist_sum_data_3_reg[19]_i_6_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_6_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hist_sum_data_3_reg[19]_i_6_n_4\,
      O(2) => \hist_sum_data_3_reg[19]_i_6_n_5\,
      O(1) => \hist_sum_data_3_reg[19]_i_6_n_6\,
      O(0) => \hist_sum_data_3_reg[19]_i_6_n_7\,
      S(3) => \hist_sum_data_3_reg[19]_i_2_n_5\,
      S(2) => \hist_sum_data_3_reg[19]_i_2_n_6\,
      S(1) => \hist_sum_data_3_reg[19]_i_2_n_7\,
      S(0) => \hist_sum_data_3_reg[16]_i_2_n_4\
    );
\hist_sum_data_3_reg[19]_i_63\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_77_n_0\,
      CO(3) => \hist_sum_data_3_reg[19]_i_63_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_63_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_63_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_63_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[19]_i_78_n_0\,
      DI(2) => \hist_sum_data_3[19]_i_79_n_0\,
      DI(1) => \hist_sum_data_3[19]_i_80_n_0\,
      DI(0) => \hist_sum_data_3[19]_i_81_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[19]_i_63_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_3[19]_i_82_n_0\,
      S(2) => \hist_sum_data_3[19]_i_83_n_0\,
      S(1) => \hist_sum_data_3[19]_i_84_n_0\,
      S(0) => \hist_sum_data_3[19]_i_85_n_0\
    );
\hist_sum_data_3_reg[19]_i_72\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[19]_i_86_n_0\,
      CO(3) => \hist_sum_data_3_reg[19]_i_72_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_72_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_72_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_72_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3_reg[8]_i_2_n_4\,
      DI(2) => \hist_sum_data_3_reg[8]_i_2_n_5\,
      DI(1) => \hist_sum_data_3_reg[8]_i_2_n_6\,
      DI(0) => \hist_sum_data_3_reg[8]_i_2_n_7\,
      O(3) => \hist_sum_data_3_reg[19]_i_72_n_4\,
      O(2) => \hist_sum_data_3_reg[19]_i_72_n_5\,
      O(1) => \hist_sum_data_3_reg[19]_i_72_n_6\,
      O(0) => \hist_sum_data_3_reg[19]_i_72_n_7\,
      S(3) => \hist_sum_data_3[19]_i_87_n_0\,
      S(2) => \hist_sum_data_3[19]_i_88_n_0\,
      S(1) => \hist_sum_data_3[19]_i_89_n_0\,
      S(0) => \hist_sum_data_3[19]_i_90_n_0\
    );
\hist_sum_data_3_reg[19]_i_77\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_3_reg[19]_i_77_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_77_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_77_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_77_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[19]_i_91_n_0\,
      DI(2) => \hist_sum_data_3[19]_i_92_n_0\,
      DI(1) => \hist_sum_data_3[19]_i_93_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_hist_sum_data_3_reg[19]_i_77_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_3[19]_i_94_n_0\,
      S(2) => \hist_sum_data_3[19]_i_95_n_0\,
      S(1) => \hist_sum_data_3[19]_i_96_n_0\,
      S(0) => \hist_sum_data_3[19]_i_97_n_0\
    );
\hist_sum_data_3_reg[19]_i_86\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_3_reg[19]_i_86_n_0\,
      CO(2) => \hist_sum_data_3_reg[19]_i_86_n_1\,
      CO(1) => \hist_sum_data_3_reg[19]_i_86_n_2\,
      CO(0) => \hist_sum_data_3_reg[19]_i_86_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3_reg[4]_i_2_n_4\,
      DI(2) => \hist_sum_data_3_reg[4]_i_2_n_5\,
      DI(1) => \hist_sum_data_3_reg[4]_i_2_n_6\,
      DI(0) => '0',
      O(3) => \hist_sum_data_3_reg[19]_i_86_n_4\,
      O(2) => \hist_sum_data_3_reg[19]_i_86_n_5\,
      O(1) => \hist_sum_data_3_reg[19]_i_86_n_6\,
      O(0) => \hist_sum_data_3_reg[19]_i_86_n_7\,
      S(3) => \hist_sum_data_3[19]_i_98_n_0\,
      S(2) => \hist_sum_data_3[19]_i_99_n_0\,
      S(1) => \hist_sum_data_3[19]_i_100_n_0\,
      S(0) => \hist_sum_data_3_reg[4]_i_2_n_7\
    );
\hist_sum_data_3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[1]_i_1_n_0\,
      Q => hist_sum_data_3(1)
    );
\hist_sum_data_3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[2]_i_1_n_0\,
      Q => hist_sum_data_3(2)
    );
\hist_sum_data_3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[3]_i_1_n_0\,
      Q => hist_sum_data_3(3)
    );
\hist_sum_data_3_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_3_reg[3]_i_2_n_0\,
      CO(2) => \hist_sum_data_3_reg[3]_i_2_n_1\,
      CO(1) => \hist_sum_data_3_reg[3]_i_2_n_2\,
      CO(0) => \hist_sum_data_3_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \hist_sum_data_3_reg[3]_i_2_n_4\,
      O(2) => \hist_sum_data_3_reg[3]_i_2_n_5\,
      O(1) => \hist_sum_data_3_reg[3]_i_2_n_6\,
      O(0) => \hist_sum_data_3_reg[3]_i_2_n_7\,
      S(3) => \hist_sum_data_3_reg[4]_i_2_n_5\,
      S(2) => \hist_sum_data_3_reg[4]_i_2_n_6\,
      S(1) => \hist_sum_data_3_reg[4]_i_2_n_7\,
      S(0) => \hist_sum_data_3[3]_i_3_n_0\
    );
\hist_sum_data_3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[4]_i_1_n_0\,
      Q => hist_sum_data_3(4)
    );
\hist_sum_data_3_reg[4]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_22_n_0\,
      CO(3) => \hist_sum_data_3_reg[4]_i_12_n_0\,
      CO(2) => \hist_sum_data_3_reg[4]_i_12_n_1\,
      CO(1) => \hist_sum_data_3_reg[4]_i_12_n_2\,
      CO(0) => \hist_sum_data_3_reg[4]_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[16]_i_18_n_0\,
      DI(2) => \hist_sum_data_3[16]_i_19_n_0\,
      DI(1) => \hist_sum_data_3[16]_i_20_n_0\,
      DI(0) => \hist_sum_data_3[16]_i_21_n_0\,
      O(3) => \hist_sum_data_3_reg[4]_i_12_n_4\,
      O(2) => \hist_sum_data_3_reg[4]_i_12_n_5\,
      O(1) => \hist_sum_data_3_reg[4]_i_12_n_6\,
      O(0) => \hist_sum_data_3_reg[4]_i_12_n_7\,
      S(3) => \hist_sum_data_3[4]_i_18_n_0\,
      S(2) => \hist_sum_data_3[4]_i_19_n_0\,
      S(1) => \hist_sum_data_3[4]_i_20_n_0\,
      S(0) => \hist_sum_data_3[4]_i_21_n_0\
    );
\hist_sum_data_3_reg[4]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_23_n_0\,
      CO(3) => \hist_sum_data_3_reg[4]_i_13_n_0\,
      CO(2) => \hist_sum_data_3_reg[4]_i_13_n_1\,
      CO(1) => \hist_sum_data_3_reg[4]_i_13_n_2\,
      CO(0) => \hist_sum_data_3_reg[4]_i_13_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[4]_i_22_n_0\,
      DI(2) => \hist_sum_data_3[4]_i_23_n_0\,
      DI(1) => \hist_sum_data_3[4]_i_24_n_0\,
      DI(0) => \hist_sum_data_3[4]_i_25_n_0\,
      O(3) => \hist_sum_data_3_reg[4]_i_13_n_4\,
      O(2) => \hist_sum_data_3_reg[4]_i_13_n_5\,
      O(1) => \hist_sum_data_3_reg[4]_i_13_n_6\,
      O(0) => \hist_sum_data_3_reg[4]_i_13_n_7\,
      S(3) => \hist_sum_data_3[4]_i_26_n_0\,
      S(2) => \hist_sum_data_3[4]_i_27_n_0\,
      S(1) => \hist_sum_data_3[4]_i_28_n_0\,
      S(0) => \hist_sum_data_3[4]_i_29_n_0\
    );
\hist_sum_data_3_reg[4]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_24_n_0\,
      CO(3) => \hist_sum_data_3_reg[4]_i_14_n_0\,
      CO(2) => \hist_sum_data_3_reg[4]_i_14_n_1\,
      CO(1) => \hist_sum_data_3_reg[4]_i_14_n_2\,
      CO(0) => \hist_sum_data_3_reg[4]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[4]_i_30_n_0\,
      DI(2) => \hist_sum_data_3[4]_i_31_n_0\,
      DI(1) => \hist_sum_data_3[4]_i_32_n_0\,
      DI(0) => \hist_sum_data_3[4]_i_33_n_0\,
      O(3) => \hist_sum_data_3_reg[4]_i_14_n_4\,
      O(2) => \hist_sum_data_3_reg[4]_i_14_n_5\,
      O(1) => \hist_sum_data_3_reg[4]_i_14_n_6\,
      O(0) => \hist_sum_data_3_reg[4]_i_14_n_7\,
      S(3) => \hist_sum_data_3[4]_i_34_n_0\,
      S(2) => \hist_sum_data_3[4]_i_35_n_0\,
      S(1) => \hist_sum_data_3[4]_i_36_n_0\,
      S(0) => \hist_sum_data_3[4]_i_37_n_0\
    );
\hist_sum_data_3_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[0]_i_2_n_0\,
      CO(3) => \hist_sum_data_3_reg[4]_i_2_n_0\,
      CO(2) => \hist_sum_data_3_reg[4]_i_2_n_1\,
      CO(1) => \hist_sum_data_3_reg[4]_i_2_n_2\,
      CO(0) => \hist_sum_data_3_reg[4]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[4]_i_3_n_0\,
      DI(2) => \hist_sum_data_3[4]_i_4_n_0\,
      DI(1) => \hist_sum_data_3[4]_i_5_n_0\,
      DI(0) => \hist_sum_data_3[4]_i_6_n_0\,
      O(3) => \hist_sum_data_3_reg[4]_i_2_n_4\,
      O(2) => \hist_sum_data_3_reg[4]_i_2_n_5\,
      O(1) => \hist_sum_data_3_reg[4]_i_2_n_6\,
      O(0) => \hist_sum_data_3_reg[4]_i_2_n_7\,
      S(3) => \hist_sum_data_3[4]_i_7_n_0\,
      S(2) => \hist_sum_data_3[4]_i_8_n_0\,
      S(1) => \hist_sum_data_3[4]_i_9_n_0\,
      S(0) => \hist_sum_data_3[4]_i_10_n_0\
    );
\hist_sum_data_3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[5]_i_1_n_0\,
      Q => hist_sum_data_3(5)
    );
\hist_sum_data_3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[6]_i_1_n_0\,
      Q => hist_sum_data_3(6)
    );
\hist_sum_data_3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[7]_i_1_n_0\,
      Q => hist_sum_data_3(7)
    );
\hist_sum_data_3_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[3]_i_2_n_0\,
      CO(3) => \hist_sum_data_3_reg[7]_i_2_n_0\,
      CO(2) => \hist_sum_data_3_reg[7]_i_2_n_1\,
      CO(1) => \hist_sum_data_3_reg[7]_i_2_n_2\,
      CO(0) => \hist_sum_data_3_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hist_sum_data_3_reg[7]_i_2_n_4\,
      O(2) => \hist_sum_data_3_reg[7]_i_2_n_5\,
      O(1) => \hist_sum_data_3_reg[7]_i_2_n_6\,
      O(0) => \hist_sum_data_3_reg[7]_i_2_n_7\,
      S(3) => \hist_sum_data_3_reg[8]_i_2_n_5\,
      S(2) => \hist_sum_data_3_reg[8]_i_2_n_6\,
      S(1) => \hist_sum_data_3_reg[8]_i_2_n_7\,
      S(0) => \hist_sum_data_3_reg[4]_i_2_n_4\
    );
\hist_sum_data_3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[8]_i_1_n_0\,
      Q => hist_sum_data_3(8)
    );
\hist_sum_data_3_reg[8]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[4]_i_12_n_0\,
      CO(3) => \hist_sum_data_3_reg[8]_i_12_n_0\,
      CO(2) => \hist_sum_data_3_reg[8]_i_12_n_1\,
      CO(1) => \hist_sum_data_3_reg[8]_i_12_n_2\,
      CO(0) => \hist_sum_data_3_reg[8]_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[8]_i_22_n_0\,
      DI(2) => \hist_sum_data_3[8]_i_23_n_0\,
      DI(1) => \hist_sum_data_3[8]_i_24_n_0\,
      DI(0) => \hist_sum_data_3[8]_i_25_n_0\,
      O(3) => \hist_sum_data_3_reg[8]_i_12_n_4\,
      O(2) => \hist_sum_data_3_reg[8]_i_12_n_5\,
      O(1) => \hist_sum_data_3_reg[8]_i_12_n_6\,
      O(0) => \hist_sum_data_3_reg[8]_i_12_n_7\,
      S(3) => \hist_sum_data_3[8]_i_26_n_0\,
      S(2) => \hist_sum_data_3[8]_i_27_n_0\,
      S(1) => \hist_sum_data_3[8]_i_28_n_0\,
      S(0) => \hist_sum_data_3[8]_i_29_n_0\
    );
\hist_sum_data_3_reg[8]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[4]_i_13_n_0\,
      CO(3) => \hist_sum_data_3_reg[8]_i_13_n_0\,
      CO(2) => \hist_sum_data_3_reg[8]_i_13_n_1\,
      CO(1) => \hist_sum_data_3_reg[8]_i_13_n_2\,
      CO(0) => \hist_sum_data_3_reg[8]_i_13_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[8]_i_30_n_0\,
      DI(2) => \hist_sum_data_3[8]_i_31_n_0\,
      DI(1) => \hist_sum_data_3[8]_i_32_n_0\,
      DI(0) => \hist_sum_data_3[8]_i_33_n_0\,
      O(3) => \hist_sum_data_3_reg[8]_i_13_n_4\,
      O(2) => \hist_sum_data_3_reg[8]_i_13_n_5\,
      O(1) => \hist_sum_data_3_reg[8]_i_13_n_6\,
      O(0) => \hist_sum_data_3_reg[8]_i_13_n_7\,
      S(3) => \hist_sum_data_3[8]_i_34_n_0\,
      S(2) => \hist_sum_data_3[8]_i_35_n_0\,
      S(1) => \hist_sum_data_3[8]_i_36_n_0\,
      S(0) => \hist_sum_data_3[8]_i_37_n_0\
    );
\hist_sum_data_3_reg[8]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[4]_i_14_n_0\,
      CO(3) => \hist_sum_data_3_reg[8]_i_14_n_0\,
      CO(2) => \hist_sum_data_3_reg[8]_i_14_n_1\,
      CO(1) => \hist_sum_data_3_reg[8]_i_14_n_2\,
      CO(0) => \hist_sum_data_3_reg[8]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[8]_i_38_n_0\,
      DI(2) => \hist_sum_data_3[8]_i_39_n_0\,
      DI(1) => \hist_sum_data_3[8]_i_40_n_0\,
      DI(0) => \hist_sum_data_3[8]_i_41_n_0\,
      O(3) => \hist_sum_data_3_reg[8]_i_14_n_4\,
      O(2) => \hist_sum_data_3_reg[8]_i_14_n_5\,
      O(1) => \hist_sum_data_3_reg[8]_i_14_n_6\,
      O(0) => \hist_sum_data_3_reg[8]_i_14_n_7\,
      S(3) => \hist_sum_data_3[8]_i_42_n_0\,
      S(2) => \hist_sum_data_3[8]_i_43_n_0\,
      S(1) => \hist_sum_data_3[8]_i_44_n_0\,
      S(0) => \hist_sum_data_3[8]_i_45_n_0\
    );
\hist_sum_data_3_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_3_reg[4]_i_2_n_0\,
      CO(3) => \hist_sum_data_3_reg[8]_i_2_n_0\,
      CO(2) => \hist_sum_data_3_reg[8]_i_2_n_1\,
      CO(1) => \hist_sum_data_3_reg[8]_i_2_n_2\,
      CO(0) => \hist_sum_data_3_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_3[8]_i_3_n_0\,
      DI(2) => \hist_sum_data_3[8]_i_4_n_0\,
      DI(1) => \hist_sum_data_3[8]_i_5_n_0\,
      DI(0) => \hist_sum_data_3[8]_i_6_n_0\,
      O(3) => \hist_sum_data_3_reg[8]_i_2_n_4\,
      O(2) => \hist_sum_data_3_reg[8]_i_2_n_5\,
      O(1) => \hist_sum_data_3_reg[8]_i_2_n_6\,
      O(0) => \hist_sum_data_3_reg[8]_i_2_n_7\,
      S(3) => \hist_sum_data_3[8]_i_7_n_0\,
      S(2) => \hist_sum_data_3[8]_i_8_n_0\,
      S(1) => \hist_sum_data_3[8]_i_9_n_0\,
      S(0) => \hist_sum_data_3[8]_i_10_n_0\
    );
\hist_sum_data_3_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_3[9]_i_1_n_0\,
      Q => hist_sum_data_3(9)
    );
\hist_sum_data_4[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_7\,
      I1 => \hist_sum_data_4_reg[7]_i_3_n_1\,
      I2 => \hist_sum_data_4_reg[7]_i_4_n_1\,
      I3 => \hist_sum_data_4_reg[3]_i_3_n_7\,
      O => \hist_sum_data_4[0]_i_1_n_0\
    );
\hist_sum_data_4[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_6\,
      I1 => \hist_sum_data_4_reg[7]_i_3_n_1\,
      I2 => \hist_sum_data_4_reg[7]_i_4_n_1\,
      I3 => \hist_sum_data_4_reg[3]_i_3_n_6\,
      O => \hist_sum_data_4[1]_i_1_n_0\
    );
\hist_sum_data_4[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_5\,
      I1 => \hist_sum_data_4_reg[7]_i_3_n_1\,
      I2 => \hist_sum_data_4_reg[7]_i_4_n_1\,
      I3 => \hist_sum_data_4_reg[3]_i_3_n_5\,
      O => \hist_sum_data_4[2]_i_1_n_0\
    );
\hist_sum_data_4[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_4\,
      I1 => \hist_sum_data_4_reg[7]_i_3_n_1\,
      I2 => \hist_sum_data_4_reg[7]_i_4_n_1\,
      I3 => \hist_sum_data_4_reg[3]_i_3_n_4\,
      O => \hist_sum_data_4[3]_i_1_n_0\
    );
\hist_sum_data_4[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => hist_sum_data_3(13),
      I1 => hist_sum_data_3(17),
      I2 => hist_sum_data_3(16),
      I3 => hist_sum_data_3(12),
      I4 => \hist_sum_data_4[3]_i_6_n_0\,
      O => \hist_sum_data_4[3]_i_10_n_0\
    );
\hist_sum_data_4[3]_i_100\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_sum_data_3(6),
      I1 => hist_sum_data_3(2),
      O => \hist_sum_data_4[3]_i_100_n_0\
    );
\hist_sum_data_4[3]_i_101\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_sum_data_3(5),
      I1 => hist_sum_data_3(1),
      O => \hist_sum_data_4[3]_i_101_n_0\
    );
\hist_sum_data_4[3]_i_102\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_sum_data_3(4),
      I1 => hist_sum_data_3(0),
      O => \hist_sum_data_4[3]_i_102_n_0\
    );
\hist_sum_data_4[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => hist_sum_data_3(12),
      I1 => hist_sum_data_3(16),
      I2 => hist_sum_data_3(15),
      I3 => hist_sum_data_3(11),
      I4 => \hist_sum_data_4[3]_i_7_n_0\,
      O => \hist_sum_data_4[3]_i_11_n_0\
    );
\hist_sum_data_4[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_8_n_0\,
      I1 => hist_sum_data_3(11),
      I2 => hist_sum_data_3(15),
      I3 => hist_sum_data_3(19),
      I4 => hist_sum_data_3(10),
      I5 => hist_sum_data_3(14),
      O => \hist_sum_data_4[3]_i_12_n_0\
    );
\hist_sum_data_4[3]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_7\,
      O => \hist_sum_data_4[3]_i_13_n_0\
    );
\hist_sum_data_4[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEBEBE28BE282828"
    )
        port map (
      I0 => hist_sum_data_3(17),
      I1 => hist_sum_data_3(9),
      I2 => hist_sum_data_3(13),
      I3 => hist_sum_data_3(12),
      I4 => hist_sum_data_3(8),
      I5 => \hist_sum_data_4_reg[3]_i_32_n_2\,
      O => \hist_sum_data_4[3]_i_15_n_0\
    );
\hist_sum_data_4[3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => hist_sum_data_3(16),
      I1 => \hist_sum_data_4[3]_i_33_n_0\,
      I2 => hist_sum_data_3(11),
      I3 => hist_sum_data_3(7),
      I4 => \hist_sum_data_4_reg[3]_i_32_n_7\,
      O => \hist_sum_data_4[3]_i_16_n_0\
    );
\hist_sum_data_4[3]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => hist_sum_data_3(15),
      I1 => \hist_sum_data_4[3]_i_34_n_0\,
      I2 => hist_sum_data_3(10),
      I3 => hist_sum_data_3(6),
      I4 => \hist_sum_data_4_reg[3]_i_35_n_4\,
      O => \hist_sum_data_4[3]_i_17_n_0\
    );
\hist_sum_data_4[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => hist_sum_data_3(14),
      I1 => \hist_sum_data_4[3]_i_36_n_0\,
      I2 => hist_sum_data_3(9),
      I3 => hist_sum_data_3(5),
      I4 => \hist_sum_data_4_reg[3]_i_35_n_5\,
      O => \hist_sum_data_4[3]_i_18_n_0\
    );
\hist_sum_data_4[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_15_n_0\,
      I1 => hist_sum_data_3(10),
      I2 => hist_sum_data_3(14),
      I3 => hist_sum_data_3(18),
      I4 => hist_sum_data_3(9),
      I5 => hist_sum_data_3(13),
      O => \hist_sum_data_4[3]_i_19_n_0\
    );
\hist_sum_data_4[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_16_n_0\,
      I1 => \hist_sum_data_4[3]_i_37_n_0\,
      I2 => hist_sum_data_3(17),
      I3 => \hist_sum_data_4_reg[3]_i_32_n_2\,
      I4 => hist_sum_data_3(8),
      I5 => hist_sum_data_3(12),
      O => \hist_sum_data_4[3]_i_20_n_0\
    );
\hist_sum_data_4[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_17_n_0\,
      I1 => \hist_sum_data_4[3]_i_33_n_0\,
      I2 => hist_sum_data_3(16),
      I3 => \hist_sum_data_4_reg[3]_i_32_n_7\,
      I4 => hist_sum_data_3(7),
      I5 => hist_sum_data_3(11),
      O => \hist_sum_data_4[3]_i_21_n_0\
    );
\hist_sum_data_4[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_18_n_0\,
      I1 => \hist_sum_data_4[3]_i_34_n_0\,
      I2 => hist_sum_data_3(15),
      I3 => \hist_sum_data_4_reg[3]_i_35_n_4\,
      I4 => hist_sum_data_3(6),
      I5 => hist_sum_data_3(10),
      O => \hist_sum_data_4[3]_i_22_n_0\
    );
\hist_sum_data_4[3]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => hist_sum_data_3(13),
      I1 => \hist_sum_data_4[3]_i_47_n_0\,
      I2 => hist_sum_data_3(8),
      I3 => hist_sum_data_3(4),
      I4 => \hist_sum_data_4_reg[3]_i_35_n_6\,
      O => \hist_sum_data_4[3]_i_24_n_0\
    );
\hist_sum_data_4[3]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => hist_sum_data_3(12),
      I1 => \hist_sum_data_4[3]_i_48_n_0\,
      I2 => hist_sum_data_3(7),
      I3 => hist_sum_data_3(3),
      I4 => \hist_sum_data_4_reg[3]_i_35_n_7\,
      O => \hist_sum_data_4[3]_i_25_n_0\
    );
\hist_sum_data_4[3]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => hist_sum_data_3(11),
      I1 => \hist_sum_data_4[3]_i_49_n_0\,
      I2 => hist_sum_data_3(6),
      I3 => hist_sum_data_3(2),
      I4 => \hist_sum_data_4_reg[3]_i_50_n_4\,
      O => \hist_sum_data_4[3]_i_26_n_0\
    );
\hist_sum_data_4[3]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => hist_sum_data_3(10),
      I1 => \hist_sum_data_4[3]_i_51_n_0\,
      I2 => hist_sum_data_3(5),
      I3 => hist_sum_data_3(1),
      I4 => \hist_sum_data_4_reg[3]_i_50_n_5\,
      O => \hist_sum_data_4[3]_i_27_n_0\
    );
\hist_sum_data_4[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_24_n_0\,
      I1 => \hist_sum_data_4[3]_i_36_n_0\,
      I2 => hist_sum_data_3(14),
      I3 => \hist_sum_data_4_reg[3]_i_35_n_5\,
      I4 => hist_sum_data_3(5),
      I5 => hist_sum_data_3(9),
      O => \hist_sum_data_4[3]_i_28_n_0\
    );
\hist_sum_data_4[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_25_n_0\,
      I1 => \hist_sum_data_4[3]_i_47_n_0\,
      I2 => hist_sum_data_3(13),
      I3 => \hist_sum_data_4_reg[3]_i_35_n_6\,
      I4 => hist_sum_data_3(4),
      I5 => hist_sum_data_3(8),
      O => \hist_sum_data_4[3]_i_29_n_0\
    );
\hist_sum_data_4[3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_26_n_0\,
      I1 => \hist_sum_data_4[3]_i_48_n_0\,
      I2 => hist_sum_data_3(12),
      I3 => \hist_sum_data_4_reg[3]_i_35_n_7\,
      I4 => hist_sum_data_3(3),
      I5 => hist_sum_data_3(7),
      O => \hist_sum_data_4[3]_i_30_n_0\
    );
\hist_sum_data_4[3]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_27_n_0\,
      I1 => \hist_sum_data_4[3]_i_49_n_0\,
      I2 => hist_sum_data_3(11),
      I3 => \hist_sum_data_4_reg[3]_i_50_n_4\,
      I4 => hist_sum_data_3(2),
      I5 => hist_sum_data_3(6),
      O => \hist_sum_data_4[3]_i_31_n_0\
    );
\hist_sum_data_4[3]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(12),
      I1 => \hist_sum_data_4_reg[3]_i_32_n_2\,
      I2 => hist_sum_data_3(8),
      O => \hist_sum_data_4[3]_i_33_n_0\
    );
\hist_sum_data_4[3]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(11),
      I1 => \hist_sum_data_4_reg[3]_i_32_n_7\,
      I2 => hist_sum_data_3(7),
      O => \hist_sum_data_4[3]_i_34_n_0\
    );
\hist_sum_data_4[3]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(10),
      I1 => \hist_sum_data_4_reg[3]_i_35_n_4\,
      I2 => hist_sum_data_3(6),
      O => \hist_sum_data_4[3]_i_36_n_0\
    );
\hist_sum_data_4[3]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_sum_data_3(13),
      I1 => hist_sum_data_3(9),
      O => \hist_sum_data_4[3]_i_37_n_0\
    );
\hist_sum_data_4[3]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => hist_sum_data_3(9),
      I1 => \hist_sum_data_4[3]_i_62_n_0\,
      I2 => hist_sum_data_3(4),
      I3 => hist_sum_data_3(0),
      I4 => \hist_sum_data_4_reg[3]_i_50_n_6\,
      O => \hist_sum_data_4[3]_i_39_n_0\
    );
\hist_sum_data_4[3]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => hist_sum_data_3(4),
      I1 => hist_sum_data_3(0),
      I2 => \hist_sum_data_4_reg[3]_i_50_n_6\,
      I3 => hist_sum_data_3(9),
      I4 => \hist_sum_data_4[3]_i_62_n_0\,
      O => \hist_sum_data_4[3]_i_40_n_0\
    );
\hist_sum_data_4[3]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_sum_data_3(0),
      I1 => \hist_sum_data_4_reg[3]_i_50_n_6\,
      I2 => hist_sum_data_3(4),
      I3 => hist_sum_data_3(8),
      O => \hist_sum_data_4[3]_i_41_n_0\
    );
\hist_sum_data_4[3]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_63_n_4\,
      I1 => hist_sum_data_3(2),
      I2 => hist_sum_data_3(6),
      O => \hist_sum_data_4[3]_i_42_n_0\
    );
\hist_sum_data_4[3]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_39_n_0\,
      I1 => \hist_sum_data_4[3]_i_51_n_0\,
      I2 => hist_sum_data_3(10),
      I3 => \hist_sum_data_4_reg[3]_i_50_n_5\,
      I4 => hist_sum_data_3(1),
      I5 => hist_sum_data_3(5),
      O => \hist_sum_data_4[3]_i_43_n_0\
    );
\hist_sum_data_4[3]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_62_n_0\,
      I1 => hist_sum_data_3(9),
      I2 => hist_sum_data_3(4),
      I3 => \hist_sum_data_4_reg[3]_i_50_n_6\,
      I4 => hist_sum_data_3(0),
      I5 => hist_sum_data_3(8),
      O => \hist_sum_data_4[3]_i_44_n_0\
    );
\hist_sum_data_4[3]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_41_n_0\,
      I1 => hist_sum_data_3(7),
      I2 => hist_sum_data_3(3),
      I3 => \hist_sum_data_4_reg[3]_i_50_n_7\,
      O => \hist_sum_data_4[3]_i_45_n_0\
    );
\hist_sum_data_4[3]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_42_n_0\,
      I1 => hist_sum_data_3(3),
      I2 => \hist_sum_data_4_reg[3]_i_50_n_7\,
      I3 => hist_sum_data_3(7),
      O => \hist_sum_data_4[3]_i_46_n_0\
    );
\hist_sum_data_4[3]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(9),
      I1 => \hist_sum_data_4_reg[3]_i_35_n_5\,
      I2 => hist_sum_data_3(5),
      O => \hist_sum_data_4[3]_i_47_n_0\
    );
\hist_sum_data_4[3]_i_48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(8),
      I1 => \hist_sum_data_4_reg[3]_i_35_n_6\,
      I2 => hist_sum_data_3(4),
      O => \hist_sum_data_4[3]_i_48_n_0\
    );
\hist_sum_data_4[3]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(7),
      I1 => \hist_sum_data_4_reg[3]_i_35_n_7\,
      I2 => hist_sum_data_3(3),
      O => \hist_sum_data_4[3]_i_49_n_0\
    );
\hist_sum_data_4[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => hist_sum_data_3(13),
      I1 => hist_sum_data_3(17),
      I2 => hist_sum_data_3(16),
      I3 => hist_sum_data_3(12),
      O => \hist_sum_data_4[3]_i_5_n_0\
    );
\hist_sum_data_4[3]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(6),
      I1 => \hist_sum_data_4_reg[3]_i_50_n_4\,
      I2 => hist_sum_data_3(2),
      O => \hist_sum_data_4[3]_i_51_n_0\
    );
\hist_sum_data_4[3]_i_52\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hist_sum_data_3(18),
      I1 => hist_sum_data_3(14),
      O => \hist_sum_data_4[3]_i_52_n_0\
    );
\hist_sum_data_4[3]_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => hist_sum_data_3(19),
      I1 => hist_sum_data_3(15),
      I2 => hist_sum_data_3(16),
      O => \hist_sum_data_4[3]_i_53_n_0\
    );
\hist_sum_data_4[3]_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => hist_sum_data_3(18),
      I1 => hist_sum_data_3(14),
      I2 => hist_sum_data_3(15),
      I3 => hist_sum_data_3(19),
      O => \hist_sum_data_4[3]_i_54_n_0\
    );
\hist_sum_data_4[3]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_63_n_5\,
      I1 => hist_sum_data_3(1),
      I2 => hist_sum_data_3(5),
      O => \hist_sum_data_4[3]_i_56_n_0\
    );
\hist_sum_data_4[3]_i_57\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(5),
      I1 => \hist_sum_data_4_reg[3]_i_63_n_5\,
      I2 => hist_sum_data_3(1),
      O => \hist_sum_data_4[3]_i_57_n_0\
    );
\hist_sum_data_4[3]_i_58\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_63_n_4\,
      I1 => hist_sum_data_3(2),
      I2 => hist_sum_data_3(6),
      I3 => \hist_sum_data_4[3]_i_56_n_0\,
      O => \hist_sum_data_4[3]_i_58_n_0\
    );
\hist_sum_data_4[3]_i_59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_63_n_5\,
      I1 => hist_sum_data_3(1),
      I2 => hist_sum_data_3(5),
      I3 => hist_sum_data_3(0),
      I4 => \hist_sum_data_4_reg[3]_i_63_n_6\,
      O => \hist_sum_data_4[3]_i_59_n_0\
    );
\hist_sum_data_4[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => hist_sum_data_3(12),
      I1 => hist_sum_data_3(16),
      I2 => hist_sum_data_3(15),
      I3 => hist_sum_data_3(11),
      O => \hist_sum_data_4[3]_i_6_n_0\
    );
\hist_sum_data_4[3]_i_60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_63_n_6\,
      I1 => hist_sum_data_3(0),
      I2 => hist_sum_data_3(4),
      O => \hist_sum_data_4[3]_i_60_n_0\
    );
\hist_sum_data_4[3]_i_61\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_sum_data_3(3),
      I1 => \hist_sum_data_4_reg[3]_i_63_n_7\,
      O => \hist_sum_data_4[3]_i_61_n_0\
    );
\hist_sum_data_4[3]_i_62\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(5),
      I1 => \hist_sum_data_4_reg[3]_i_50_n_5\,
      I2 => hist_sum_data_3(1),
      O => \hist_sum_data_4[3]_i_62_n_0\
    );
\hist_sum_data_4[3]_i_64\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hist_sum_data_3(17),
      I1 => hist_sum_data_3(13),
      O => \hist_sum_data_4[3]_i_64_n_0\
    );
\hist_sum_data_4[3]_i_65\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hist_sum_data_3(16),
      I1 => hist_sum_data_3(12),
      O => \hist_sum_data_4[3]_i_65_n_0\
    );
\hist_sum_data_4[3]_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(11),
      I1 => hist_sum_data_3(15),
      I2 => hist_sum_data_3(19),
      O => \hist_sum_data_4[3]_i_66_n_0\
    );
\hist_sum_data_4[3]_i_67\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(10),
      I1 => hist_sum_data_3(14),
      I2 => hist_sum_data_3(18),
      O => \hist_sum_data_4[3]_i_67_n_0\
    );
\hist_sum_data_4[3]_i_68\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => hist_sum_data_3(17),
      I1 => hist_sum_data_3(13),
      I2 => hist_sum_data_3(14),
      I3 => hist_sum_data_3(18),
      O => \hist_sum_data_4[3]_i_68_n_0\
    );
\hist_sum_data_4[3]_i_69\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => hist_sum_data_3(16),
      I1 => hist_sum_data_3(12),
      I2 => hist_sum_data_3(13),
      I3 => hist_sum_data_3(17),
      O => \hist_sum_data_4[3]_i_69_n_0\
    );
\hist_sum_data_4[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE282828"
    )
        port map (
      I0 => hist_sum_data_3(19),
      I1 => hist_sum_data_3(11),
      I2 => hist_sum_data_3(15),
      I3 => hist_sum_data_3(14),
      I4 => hist_sum_data_3(10),
      O => \hist_sum_data_4[3]_i_7_n_0\
    );
\hist_sum_data_4[3]_i_70\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => hist_sum_data_3(19),
      I1 => hist_sum_data_3(15),
      I2 => hist_sum_data_3(11),
      I3 => hist_sum_data_3(12),
      I4 => hist_sum_data_3(16),
      O => \hist_sum_data_4[3]_i_70_n_0\
    );
\hist_sum_data_4[3]_i_71\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hist_sum_data_4[3]_i_67_n_0\,
      I1 => hist_sum_data_3(15),
      I2 => hist_sum_data_3(11),
      I3 => hist_sum_data_3(19),
      O => \hist_sum_data_4[3]_i_71_n_0\
    );
\hist_sum_data_4[3]_i_72\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_sum_data_3(2),
      I1 => \hist_sum_data_4_reg[3]_i_75_n_4\,
      O => \hist_sum_data_4[3]_i_72_n_0\
    );
\hist_sum_data_4[3]_i_73\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_sum_data_3(1),
      I1 => \hist_sum_data_4_reg[3]_i_75_n_5\,
      O => \hist_sum_data_4[3]_i_73_n_0\
    );
\hist_sum_data_4[3]_i_74\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_sum_data_3(0),
      I1 => \hist_sum_data_4_reg[3]_i_75_n_6\,
      O => \hist_sum_data_4[3]_i_74_n_0\
    );
\hist_sum_data_4[3]_i_76\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(9),
      I1 => hist_sum_data_3(13),
      I2 => hist_sum_data_3(17),
      O => \hist_sum_data_4[3]_i_76_n_0\
    );
\hist_sum_data_4[3]_i_77\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(8),
      I1 => hist_sum_data_3(12),
      I2 => hist_sum_data_3(16),
      O => \hist_sum_data_4[3]_i_77_n_0\
    );
\hist_sum_data_4[3]_i_78\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(7),
      I1 => hist_sum_data_3(11),
      I2 => hist_sum_data_3(15),
      O => \hist_sum_data_4[3]_i_78_n_0\
    );
\hist_sum_data_4[3]_i_79\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(6),
      I1 => hist_sum_data_3(10),
      I2 => hist_sum_data_3(14),
      O => \hist_sum_data_4[3]_i_79_n_0\
    );
\hist_sum_data_4[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE282828"
    )
        port map (
      I0 => hist_sum_data_3(18),
      I1 => hist_sum_data_3(10),
      I2 => hist_sum_data_3(14),
      I3 => hist_sum_data_3(13),
      I4 => hist_sum_data_3(9),
      O => \hist_sum_data_4[3]_i_8_n_0\
    );
\hist_sum_data_4[3]_i_80\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_sum_data_3(10),
      I1 => hist_sum_data_3(14),
      I2 => hist_sum_data_3(18),
      I3 => \hist_sum_data_4[3]_i_76_n_0\,
      O => \hist_sum_data_4[3]_i_80_n_0\
    );
\hist_sum_data_4[3]_i_81\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_sum_data_3(9),
      I1 => hist_sum_data_3(13),
      I2 => hist_sum_data_3(17),
      I3 => \hist_sum_data_4[3]_i_77_n_0\,
      O => \hist_sum_data_4[3]_i_81_n_0\
    );
\hist_sum_data_4[3]_i_82\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_sum_data_3(8),
      I1 => hist_sum_data_3(12),
      I2 => hist_sum_data_3(16),
      I3 => \hist_sum_data_4[3]_i_78_n_0\,
      O => \hist_sum_data_4[3]_i_82_n_0\
    );
\hist_sum_data_4[3]_i_83\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_sum_data_3(7),
      I1 => hist_sum_data_3(11),
      I2 => hist_sum_data_3(15),
      I3 => \hist_sum_data_4[3]_i_79_n_0\,
      O => \hist_sum_data_4[3]_i_83_n_0\
    );
\hist_sum_data_4[3]_i_85\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(5),
      I1 => hist_sum_data_3(9),
      I2 => hist_sum_data_3(13),
      O => \hist_sum_data_4[3]_i_85_n_0\
    );
\hist_sum_data_4[3]_i_86\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(4),
      I1 => hist_sum_data_3(8),
      I2 => hist_sum_data_3(12),
      O => \hist_sum_data_4[3]_i_86_n_0\
    );
\hist_sum_data_4[3]_i_87\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(3),
      I1 => hist_sum_data_3(7),
      I2 => hist_sum_data_3(11),
      O => \hist_sum_data_4[3]_i_87_n_0\
    );
\hist_sum_data_4[3]_i_88\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(2),
      I1 => hist_sum_data_3(6),
      I2 => hist_sum_data_3(10),
      O => \hist_sum_data_4[3]_i_88_n_0\
    );
\hist_sum_data_4[3]_i_89\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_sum_data_3(6),
      I1 => hist_sum_data_3(10),
      I2 => hist_sum_data_3(14),
      I3 => \hist_sum_data_4[3]_i_85_n_0\,
      O => \hist_sum_data_4[3]_i_89_n_0\
    );
\hist_sum_data_4[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => hist_sum_data_3(14),
      I1 => hist_sum_data_3(18),
      I2 => hist_sum_data_3(17),
      I3 => hist_sum_data_3(13),
      I4 => \hist_sum_data_4[3]_i_5_n_0\,
      O => \hist_sum_data_4[3]_i_9_n_0\
    );
\hist_sum_data_4[3]_i_90\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_sum_data_3(5),
      I1 => hist_sum_data_3(9),
      I2 => hist_sum_data_3(13),
      I3 => \hist_sum_data_4[3]_i_86_n_0\,
      O => \hist_sum_data_4[3]_i_90_n_0\
    );
\hist_sum_data_4[3]_i_91\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_sum_data_3(4),
      I1 => hist_sum_data_3(8),
      I2 => hist_sum_data_3(12),
      I3 => \hist_sum_data_4[3]_i_87_n_0\,
      O => \hist_sum_data_4[3]_i_91_n_0\
    );
\hist_sum_data_4[3]_i_92\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_sum_data_3(3),
      I1 => hist_sum_data_3(7),
      I2 => hist_sum_data_3(11),
      I3 => \hist_sum_data_4[3]_i_88_n_0\,
      O => \hist_sum_data_4[3]_i_92_n_0\
    );
\hist_sum_data_4[3]_i_94\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => hist_sum_data_3(1),
      I1 => hist_sum_data_3(5),
      I2 => hist_sum_data_3(9),
      O => \hist_sum_data_4[3]_i_94_n_0\
    );
\hist_sum_data_4[3]_i_95\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(9),
      I1 => hist_sum_data_3(1),
      I2 => hist_sum_data_3(5),
      O => \hist_sum_data_4[3]_i_95_n_0\
    );
\hist_sum_data_4[3]_i_96\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => hist_sum_data_3(2),
      I1 => hist_sum_data_3(6),
      I2 => hist_sum_data_3(10),
      I3 => \hist_sum_data_4[3]_i_94_n_0\,
      O => \hist_sum_data_4[3]_i_96_n_0\
    );
\hist_sum_data_4[3]_i_97\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => hist_sum_data_3(1),
      I1 => hist_sum_data_3(5),
      I2 => hist_sum_data_3(9),
      I3 => hist_sum_data_3(4),
      I4 => hist_sum_data_3(0),
      O => \hist_sum_data_4[3]_i_97_n_0\
    );
\hist_sum_data_4[3]_i_98\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => hist_sum_data_3(0),
      I1 => hist_sum_data_3(4),
      I2 => hist_sum_data_3(8),
      O => \hist_sum_data_4[3]_i_98_n_0\
    );
\hist_sum_data_4[3]_i_99\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_sum_data_3(7),
      I1 => hist_sum_data_3(3),
      O => \hist_sum_data_4[3]_i_99_n_0\
    );
\hist_sum_data_4[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_2_n_7\,
      I1 => \hist_sum_data_4_reg[7]_i_3_n_1\,
      I2 => \hist_sum_data_4_reg[7]_i_4_n_1\,
      I3 => \hist_sum_data_4_reg[7]_i_5_n_7\,
      O => \hist_sum_data_4[4]_i_1_n_0\
    );
\hist_sum_data_4[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_2_n_6\,
      I1 => \hist_sum_data_4_reg[7]_i_3_n_1\,
      I2 => \hist_sum_data_4_reg[7]_i_4_n_1\,
      I3 => \hist_sum_data_4_reg[7]_i_5_n_6\,
      O => \hist_sum_data_4[5]_i_1_n_0\
    );
\hist_sum_data_4[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_2_n_5\,
      I1 => \hist_sum_data_4_reg[7]_i_3_n_1\,
      I2 => \hist_sum_data_4_reg[7]_i_4_n_1\,
      I3 => \hist_sum_data_4_reg[7]_i_5_n_5\,
      O => \hist_sum_data_4[6]_i_1_n_0\
    );
\hist_sum_data_4[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_2_n_4\,
      I1 => \hist_sum_data_4_reg[7]_i_3_n_1\,
      I2 => \hist_sum_data_4_reg[7]_i_4_n_1\,
      I3 => \hist_sum_data_4_reg[7]_i_5_n_4\,
      O => \hist_sum_data_4[7]_i_1_n_0\
    );
\hist_sum_data_4[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \hist_sum_data_4[7]_i_7_n_0\,
      I1 => hist_sum_data_3(19),
      I2 => hist_sum_data_3(15),
      I3 => hist_sum_data_3(14),
      I4 => hist_sum_data_3(18),
      O => \hist_sum_data_4[7]_i_10_n_0\
    );
\hist_sum_data_4[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_4_n_7\,
      I1 => hist_sum_data_3(19),
      O => \hist_sum_data_4[7]_i_12_n_0\
    );
\hist_sum_data_4[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_17_n_4\,
      I1 => hist_sum_data_3(18),
      O => \hist_sum_data_4[7]_i_13_n_0\
    );
\hist_sum_data_4[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_4_n_6\,
      I1 => \hist_sum_data_4_reg[7]_i_4_n_1\,
      O => \hist_sum_data_4[7]_i_14_n_0\
    );
\hist_sum_data_4[7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => hist_sum_data_3(19),
      I1 => \hist_sum_data_4_reg[7]_i_4_n_7\,
      I2 => \hist_sum_data_4_reg[7]_i_4_n_6\,
      O => \hist_sum_data_4[7]_i_15_n_0\
    );
\hist_sum_data_4[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => hist_sum_data_3(18),
      I1 => \hist_sum_data_4_reg[7]_i_17_n_4\,
      I2 => \hist_sum_data_4_reg[7]_i_4_n_7\,
      I3 => hist_sum_data_3(19),
      O => \hist_sum_data_4[7]_i_16_n_0\
    );
\hist_sum_data_4[7]_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_18_n_2\,
      O => \hist_sum_data_4[7]_i_19_n_0\
    );
\hist_sum_data_4[7]_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_18_n_7\,
      O => \hist_sum_data_4[7]_i_20_n_0\
    );
\hist_sum_data_4[7]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_17_n_5\,
      I1 => hist_sum_data_3(17),
      O => \hist_sum_data_4[7]_i_22_n_0\
    );
\hist_sum_data_4[7]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_17_n_6\,
      I1 => hist_sum_data_3(16),
      O => \hist_sum_data_4[7]_i_23_n_0\
    );
\hist_sum_data_4[7]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_17_n_7\,
      I1 => hist_sum_data_3(15),
      O => \hist_sum_data_4[7]_i_24_n_0\
    );
\hist_sum_data_4[7]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_30_n_4\,
      I1 => hist_sum_data_3(14),
      O => \hist_sum_data_4[7]_i_25_n_0\
    );
\hist_sum_data_4[7]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => hist_sum_data_3(17),
      I1 => \hist_sum_data_4_reg[7]_i_17_n_5\,
      I2 => \hist_sum_data_4_reg[7]_i_17_n_4\,
      I3 => hist_sum_data_3(18),
      O => \hist_sum_data_4[7]_i_26_n_0\
    );
\hist_sum_data_4[7]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => hist_sum_data_3(16),
      I1 => \hist_sum_data_4_reg[7]_i_17_n_6\,
      I2 => \hist_sum_data_4_reg[7]_i_17_n_5\,
      I3 => hist_sum_data_3(17),
      O => \hist_sum_data_4[7]_i_27_n_0\
    );
\hist_sum_data_4[7]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => hist_sum_data_3(15),
      I1 => \hist_sum_data_4_reg[7]_i_17_n_7\,
      I2 => \hist_sum_data_4_reg[7]_i_17_n_6\,
      I3 => hist_sum_data_3(16),
      O => \hist_sum_data_4[7]_i_28_n_0\
    );
\hist_sum_data_4[7]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => hist_sum_data_3(14),
      I1 => \hist_sum_data_4_reg[7]_i_30_n_4\,
      I2 => \hist_sum_data_4_reg[7]_i_17_n_7\,
      I3 => hist_sum_data_3(15),
      O => \hist_sum_data_4[7]_i_29_n_0\
    );
\hist_sum_data_4[7]_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_2_n_4\,
      O => \hist_sum_data_4[7]_i_31_n_0\
    );
\hist_sum_data_4[7]_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_2_n_5\,
      O => \hist_sum_data_4[7]_i_32_n_0\
    );
\hist_sum_data_4[7]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_2_n_6\,
      I1 => \hist_sum_data_4_reg[7]_i_18_n_2\,
      O => \hist_sum_data_4[7]_i_33_n_0\
    );
\hist_sum_data_4[7]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_2_n_7\,
      I1 => \hist_sum_data_4_reg[7]_i_18_n_7\,
      O => \hist_sum_data_4[7]_i_34_n_0\
    );
\hist_sum_data_4[7]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_30_n_5\,
      I1 => hist_sum_data_3(13),
      O => \hist_sum_data_4[7]_i_36_n_0\
    );
\hist_sum_data_4[7]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_30_n_6\,
      I1 => hist_sum_data_3(12),
      O => \hist_sum_data_4[7]_i_37_n_0\
    );
\hist_sum_data_4[7]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_30_n_7\,
      I1 => hist_sum_data_3(11),
      O => \hist_sum_data_4[7]_i_38_n_0\
    );
\hist_sum_data_4[7]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_44_n_4\,
      I1 => hist_sum_data_3(10),
      O => \hist_sum_data_4[7]_i_39_n_0\
    );
\hist_sum_data_4[7]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => hist_sum_data_3(13),
      I1 => \hist_sum_data_4_reg[7]_i_30_n_5\,
      I2 => \hist_sum_data_4_reg[7]_i_30_n_4\,
      I3 => hist_sum_data_3(14),
      O => \hist_sum_data_4[7]_i_40_n_0\
    );
\hist_sum_data_4[7]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => hist_sum_data_3(12),
      I1 => \hist_sum_data_4_reg[7]_i_30_n_6\,
      I2 => \hist_sum_data_4_reg[7]_i_30_n_5\,
      I3 => hist_sum_data_3(13),
      O => \hist_sum_data_4[7]_i_41_n_0\
    );
\hist_sum_data_4[7]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => hist_sum_data_3(11),
      I1 => \hist_sum_data_4_reg[7]_i_30_n_7\,
      I2 => \hist_sum_data_4_reg[7]_i_30_n_6\,
      I3 => hist_sum_data_3(12),
      O => \hist_sum_data_4[7]_i_42_n_0\
    );
\hist_sum_data_4[7]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => hist_sum_data_3(10),
      I1 => \hist_sum_data_4_reg[7]_i_44_n_4\,
      I2 => \hist_sum_data_4_reg[7]_i_30_n_7\,
      I3 => hist_sum_data_3(11),
      O => \hist_sum_data_4[7]_i_43_n_0\
    );
\hist_sum_data_4[7]_i_45\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_4\,
      I1 => \hist_sum_data_4_reg[7]_i_2_n_4\,
      O => \hist_sum_data_4[7]_i_45_n_0\
    );
\hist_sum_data_4[7]_i_46\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_5\,
      I1 => \hist_sum_data_4_reg[7]_i_2_n_5\,
      O => \hist_sum_data_4[7]_i_46_n_0\
    );
\hist_sum_data_4[7]_i_47\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_6\,
      I1 => \hist_sum_data_4_reg[7]_i_2_n_6\,
      O => \hist_sum_data_4[7]_i_47_n_0\
    );
\hist_sum_data_4[7]_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_7\,
      I1 => \hist_sum_data_4_reg[7]_i_2_n_7\,
      O => \hist_sum_data_4[7]_i_48_n_0\
    );
\hist_sum_data_4[7]_i_49\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_44_n_5\,
      I1 => hist_sum_data_3(9),
      O => \hist_sum_data_4[7]_i_49_n_0\
    );
\hist_sum_data_4[7]_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_44_n_6\,
      I1 => hist_sum_data_3(8),
      O => \hist_sum_data_4[7]_i_50_n_0\
    );
\hist_sum_data_4[7]_i_51\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \hist_sum_data_4_reg[7]_i_44_n_7\,
      I1 => hist_sum_data_3(7),
      O => \hist_sum_data_4[7]_i_51_n_0\
    );
\hist_sum_data_4[7]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => hist_sum_data_3(9),
      I1 => \hist_sum_data_4_reg[7]_i_44_n_5\,
      I2 => \hist_sum_data_4_reg[7]_i_44_n_4\,
      I3 => hist_sum_data_3(10),
      O => \hist_sum_data_4[7]_i_52_n_0\
    );
\hist_sum_data_4[7]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => hist_sum_data_3(8),
      I1 => \hist_sum_data_4_reg[7]_i_44_n_6\,
      I2 => \hist_sum_data_4_reg[7]_i_44_n_5\,
      I3 => hist_sum_data_3(9),
      O => \hist_sum_data_4[7]_i_53_n_0\
    );
\hist_sum_data_4[7]_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => hist_sum_data_3(7),
      I1 => \hist_sum_data_4_reg[7]_i_44_n_7\,
      I2 => \hist_sum_data_4_reg[7]_i_44_n_6\,
      I3 => hist_sum_data_3(8),
      O => \hist_sum_data_4[7]_i_54_n_0\
    );
\hist_sum_data_4[7]_i_55\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hist_sum_data_3(7),
      I1 => \hist_sum_data_4_reg[7]_i_44_n_7\,
      O => \hist_sum_data_4[7]_i_55_n_0\
    );
\hist_sum_data_4[7]_i_56\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_4\,
      O => \hist_sum_data_4[7]_i_56_n_0\
    );
\hist_sum_data_4[7]_i_57\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_5\,
      O => \hist_sum_data_4[7]_i_57_n_0\
    );
\hist_sum_data_4[7]_i_58\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hist_sum_data_4_reg[3]_i_2_n_6\,
      O => \hist_sum_data_4[7]_i_58_n_0\
    );
\hist_sum_data_4[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => hist_sum_data_3(19),
      I1 => hist_sum_data_3(15),
      I2 => hist_sum_data_3(14),
      I3 => hist_sum_data_3(18),
      O => \hist_sum_data_4[7]_i_6_n_0\
    );
\hist_sum_data_4[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => hist_sum_data_3(14),
      I1 => hist_sum_data_3(18),
      I2 => hist_sum_data_3(17),
      I3 => hist_sum_data_3(13),
      O => \hist_sum_data_4[7]_i_7_n_0\
    );
\hist_sum_data_4[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => hist_sum_data_3(16),
      I1 => hist_sum_data_3(15),
      I2 => hist_sum_data_3(19),
      I3 => hist_sum_data_3(17),
      O => \hist_sum_data_4[7]_i_8_n_0\
    );
\hist_sum_data_4[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F7878F0"
    )
        port map (
      I0 => hist_sum_data_3(14),
      I1 => hist_sum_data_3(18),
      I2 => hist_sum_data_3(16),
      I3 => hist_sum_data_3(15),
      I4 => hist_sum_data_3(19),
      O => \hist_sum_data_4[7]_i_9_n_0\
    );
\hist_sum_data_4_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_4[0]_i_1_n_0\,
      Q => \hist_sum_data_4_reg_n_0_[0]\
    );
\hist_sum_data_4_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_4[1]_i_1_n_0\,
      Q => \hist_sum_data_4_reg_n_0_[1]\
    );
\hist_sum_data_4_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_4[2]_i_1_n_0\,
      Q => \hist_sum_data_4_reg_n_0_[2]\
    );
\hist_sum_data_4_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_4[3]_i_1_n_0\,
      Q => \hist_sum_data_4_reg_n_0_[3]\
    );
\hist_sum_data_4_reg[3]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_23_n_0\,
      CO(3) => \hist_sum_data_4_reg[3]_i_14_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_14_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_14_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[3]_i_24_n_0\,
      DI(2) => \hist_sum_data_4[3]_i_25_n_0\,
      DI(1) => \hist_sum_data_4[3]_i_26_n_0\,
      DI(0) => \hist_sum_data_4[3]_i_27_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[3]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_4[3]_i_28_n_0\,
      S(2) => \hist_sum_data_4[3]_i_29_n_0\,
      S(1) => \hist_sum_data_4[3]_i_30_n_0\,
      S(0) => \hist_sum_data_4[3]_i_31_n_0\
    );
\hist_sum_data_4_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_4_n_0\,
      CO(3) => \hist_sum_data_4_reg[3]_i_2_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_2_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_2_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[3]_i_5_n_0\,
      DI(2) => \hist_sum_data_4[3]_i_6_n_0\,
      DI(1) => \hist_sum_data_4[3]_i_7_n_0\,
      DI(0) => \hist_sum_data_4[3]_i_8_n_0\,
      O(3) => \hist_sum_data_4_reg[3]_i_2_n_4\,
      O(2) => \hist_sum_data_4_reg[3]_i_2_n_5\,
      O(1) => \hist_sum_data_4_reg[3]_i_2_n_6\,
      O(0) => \hist_sum_data_4_reg[3]_i_2_n_7\,
      S(3) => \hist_sum_data_4[3]_i_9_n_0\,
      S(2) => \hist_sum_data_4[3]_i_10_n_0\,
      S(1) => \hist_sum_data_4[3]_i_11_n_0\,
      S(0) => \hist_sum_data_4[3]_i_12_n_0\
    );
\hist_sum_data_4_reg[3]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_38_n_0\,
      CO(3) => \hist_sum_data_4_reg[3]_i_23_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_23_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_23_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_23_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[3]_i_39_n_0\,
      DI(2) => \hist_sum_data_4[3]_i_40_n_0\,
      DI(1) => \hist_sum_data_4[3]_i_41_n_0\,
      DI(0) => \hist_sum_data_4[3]_i_42_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[3]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_4[3]_i_43_n_0\,
      S(2) => \hist_sum_data_4[3]_i_44_n_0\,
      S(1) => \hist_sum_data_4[3]_i_45_n_0\,
      S(0) => \hist_sum_data_4[3]_i_46_n_0\
    );
\hist_sum_data_4_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_4_reg[3]_i_3_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_3_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_3_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \hist_sum_data_4_reg[3]_i_3_n_4\,
      O(2) => \hist_sum_data_4_reg[3]_i_3_n_5\,
      O(1) => \hist_sum_data_4_reg[3]_i_3_n_6\,
      O(0) => \hist_sum_data_4_reg[3]_i_3_n_7\,
      S(3) => \hist_sum_data_4_reg[3]_i_2_n_4\,
      S(2) => \hist_sum_data_4_reg[3]_i_2_n_5\,
      S(1) => \hist_sum_data_4_reg[3]_i_2_n_6\,
      S(0) => \hist_sum_data_4[3]_i_13_n_0\
    );
\hist_sum_data_4_reg[3]_i_32\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_35_n_0\,
      CO(3 downto 2) => \NLW_hist_sum_data_4_reg[3]_i_32_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \hist_sum_data_4_reg[3]_i_32_n_2\,
      CO(0) => \NLW_hist_sum_data_4_reg[3]_i_32_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_hist_sum_data_4_reg[3]_i_32_O_UNCONNECTED\(3 downto 1),
      O(0) => \hist_sum_data_4_reg[3]_i_32_n_7\,
      S(3 downto 1) => B"001",
      S(0) => hist_sum_data_3(19)
    );
\hist_sum_data_4_reg[3]_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_50_n_0\,
      CO(3) => \hist_sum_data_4_reg[3]_i_35_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_35_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_35_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_35_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => hist_sum_data_3(16),
      DI(0) => \hist_sum_data_4[3]_i_52_n_0\,
      O(3) => \hist_sum_data_4_reg[3]_i_35_n_4\,
      O(2) => \hist_sum_data_4_reg[3]_i_35_n_5\,
      O(1) => \hist_sum_data_4_reg[3]_i_35_n_6\,
      O(0) => \hist_sum_data_4_reg[3]_i_35_n_7\,
      S(3 downto 2) => hist_sum_data_3(18 downto 17),
      S(1) => \hist_sum_data_4[3]_i_53_n_0\,
      S(0) => \hist_sum_data_4[3]_i_54_n_0\
    );
\hist_sum_data_4_reg[3]_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_55_n_0\,
      CO(3) => \hist_sum_data_4_reg[3]_i_38_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_38_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_38_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_38_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[3]_i_56_n_0\,
      DI(2) => \hist_sum_data_4[3]_i_57_n_0\,
      DI(1 downto 0) => hist_sum_data_3(4 downto 3),
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[3]_i_38_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_4[3]_i_58_n_0\,
      S(2) => \hist_sum_data_4[3]_i_59_n_0\,
      S(1) => \hist_sum_data_4[3]_i_60_n_0\,
      S(0) => \hist_sum_data_4[3]_i_61_n_0\
    );
\hist_sum_data_4_reg[3]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_14_n_0\,
      CO(3) => \hist_sum_data_4_reg[3]_i_4_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_4_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_4_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[3]_i_15_n_0\,
      DI(2) => \hist_sum_data_4[3]_i_16_n_0\,
      DI(1) => \hist_sum_data_4[3]_i_17_n_0\,
      DI(0) => \hist_sum_data_4[3]_i_18_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[3]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_4[3]_i_19_n_0\,
      S(2) => \hist_sum_data_4[3]_i_20_n_0\,
      S(1) => \hist_sum_data_4[3]_i_21_n_0\,
      S(0) => \hist_sum_data_4[3]_i_22_n_0\
    );
\hist_sum_data_4_reg[3]_i_50\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_63_n_0\,
      CO(3) => \hist_sum_data_4_reg[3]_i_50_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_50_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_50_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_50_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[3]_i_64_n_0\,
      DI(2) => \hist_sum_data_4[3]_i_65_n_0\,
      DI(1) => \hist_sum_data_4[3]_i_66_n_0\,
      DI(0) => \hist_sum_data_4[3]_i_67_n_0\,
      O(3) => \hist_sum_data_4_reg[3]_i_50_n_4\,
      O(2) => \hist_sum_data_4_reg[3]_i_50_n_5\,
      O(1) => \hist_sum_data_4_reg[3]_i_50_n_6\,
      O(0) => \hist_sum_data_4_reg[3]_i_50_n_7\,
      S(3) => \hist_sum_data_4[3]_i_68_n_0\,
      S(2) => \hist_sum_data_4[3]_i_69_n_0\,
      S(1) => \hist_sum_data_4[3]_i_70_n_0\,
      S(0) => \hist_sum_data_4[3]_i_71_n_0\
    );
\hist_sum_data_4_reg[3]_i_55\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_4_reg[3]_i_55_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_55_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_55_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_55_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => hist_sum_data_3(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[3]_i_55_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_4[3]_i_72_n_0\,
      S(2) => \hist_sum_data_4[3]_i_73_n_0\,
      S(1) => \hist_sum_data_4[3]_i_74_n_0\,
      S(0) => \hist_sum_data_4_reg[3]_i_75_n_7\
    );
\hist_sum_data_4_reg[3]_i_63\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_75_n_0\,
      CO(3) => \hist_sum_data_4_reg[3]_i_63_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_63_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_63_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_63_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[3]_i_76_n_0\,
      DI(2) => \hist_sum_data_4[3]_i_77_n_0\,
      DI(1) => \hist_sum_data_4[3]_i_78_n_0\,
      DI(0) => \hist_sum_data_4[3]_i_79_n_0\,
      O(3) => \hist_sum_data_4_reg[3]_i_63_n_4\,
      O(2) => \hist_sum_data_4_reg[3]_i_63_n_5\,
      O(1) => \hist_sum_data_4_reg[3]_i_63_n_6\,
      O(0) => \hist_sum_data_4_reg[3]_i_63_n_7\,
      S(3) => \hist_sum_data_4[3]_i_80_n_0\,
      S(2) => \hist_sum_data_4[3]_i_81_n_0\,
      S(1) => \hist_sum_data_4[3]_i_82_n_0\,
      S(0) => \hist_sum_data_4[3]_i_83_n_0\
    );
\hist_sum_data_4_reg[3]_i_75\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_84_n_0\,
      CO(3) => \hist_sum_data_4_reg[3]_i_75_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_75_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_75_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_75_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[3]_i_85_n_0\,
      DI(2) => \hist_sum_data_4[3]_i_86_n_0\,
      DI(1) => \hist_sum_data_4[3]_i_87_n_0\,
      DI(0) => \hist_sum_data_4[3]_i_88_n_0\,
      O(3) => \hist_sum_data_4_reg[3]_i_75_n_4\,
      O(2) => \hist_sum_data_4_reg[3]_i_75_n_5\,
      O(1) => \hist_sum_data_4_reg[3]_i_75_n_6\,
      O(0) => \hist_sum_data_4_reg[3]_i_75_n_7\,
      S(3) => \hist_sum_data_4[3]_i_89_n_0\,
      S(2) => \hist_sum_data_4[3]_i_90_n_0\,
      S(1) => \hist_sum_data_4[3]_i_91_n_0\,
      S(0) => \hist_sum_data_4[3]_i_92_n_0\
    );
\hist_sum_data_4_reg[3]_i_84\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_93_n_0\,
      CO(3) => \hist_sum_data_4_reg[3]_i_84_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_84_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_84_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_84_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[3]_i_94_n_0\,
      DI(2) => \hist_sum_data_4[3]_i_95_n_0\,
      DI(1 downto 0) => hist_sum_data_3(8 downto 7),
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[3]_i_84_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_4[3]_i_96_n_0\,
      S(2) => \hist_sum_data_4[3]_i_97_n_0\,
      S(1) => \hist_sum_data_4[3]_i_98_n_0\,
      S(0) => \hist_sum_data_4[3]_i_99_n_0\
    );
\hist_sum_data_4_reg[3]_i_93\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_4_reg[3]_i_93_n_0\,
      CO(2) => \hist_sum_data_4_reg[3]_i_93_n_1\,
      CO(1) => \hist_sum_data_4_reg[3]_i_93_n_2\,
      CO(0) => \hist_sum_data_4_reg[3]_i_93_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => hist_sum_data_3(6 downto 4),
      DI(0) => '0',
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[3]_i_93_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_4[3]_i_100_n_0\,
      S(2) => \hist_sum_data_4[3]_i_101_n_0\,
      S(1) => \hist_sum_data_4[3]_i_102_n_0\,
      S(0) => hist_sum_data_3(3)
    );
\hist_sum_data_4_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_4[4]_i_1_n_0\,
      Q => \hist_sum_data_4_reg_n_0_[4]\
    );
\hist_sum_data_4_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_4[5]_i_1_n_0\,
      Q => \hist_sum_data_4_reg_n_0_[5]\
    );
\hist_sum_data_4_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_4[6]_i_1_n_0\,
      Q => \hist_sum_data_4_reg_n_0_[6]\
    );
\hist_sum_data_4_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_4[7]_i_1_n_0\,
      Q => \hist_sum_data_4_reg_n_0_[7]\
    );
\hist_sum_data_4_reg[7]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[7]_i_21_n_0\,
      CO(3) => \hist_sum_data_4_reg[7]_i_11_n_0\,
      CO(2) => \hist_sum_data_4_reg[7]_i_11_n_1\,
      CO(1) => \hist_sum_data_4_reg[7]_i_11_n_2\,
      CO(0) => \hist_sum_data_4_reg[7]_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[7]_i_22_n_0\,
      DI(2) => \hist_sum_data_4[7]_i_23_n_0\,
      DI(1) => \hist_sum_data_4[7]_i_24_n_0\,
      DI(0) => \hist_sum_data_4[7]_i_25_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[7]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_4[7]_i_26_n_0\,
      S(2) => \hist_sum_data_4[7]_i_27_n_0\,
      S(1) => \hist_sum_data_4[7]_i_28_n_0\,
      S(0) => \hist_sum_data_4[7]_i_29_n_0\
    );
\hist_sum_data_4_reg[7]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[7]_i_30_n_0\,
      CO(3) => \hist_sum_data_4_reg[7]_i_17_n_0\,
      CO(2) => \hist_sum_data_4_reg[7]_i_17_n_1\,
      CO(1) => \hist_sum_data_4_reg[7]_i_17_n_2\,
      CO(0) => \hist_sum_data_4_reg[7]_i_17_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4_reg[7]_i_2_n_4\,
      DI(2) => \hist_sum_data_4_reg[7]_i_2_n_5\,
      DI(1) => \hist_sum_data_4_reg[7]_i_2_n_6\,
      DI(0) => \hist_sum_data_4_reg[7]_i_2_n_7\,
      O(3) => \hist_sum_data_4_reg[7]_i_17_n_4\,
      O(2) => \hist_sum_data_4_reg[7]_i_17_n_5\,
      O(1) => \hist_sum_data_4_reg[7]_i_17_n_6\,
      O(0) => \hist_sum_data_4_reg[7]_i_17_n_7\,
      S(3) => \hist_sum_data_4[7]_i_31_n_0\,
      S(2) => \hist_sum_data_4[7]_i_32_n_0\,
      S(1) => \hist_sum_data_4[7]_i_33_n_0\,
      S(0) => \hist_sum_data_4[7]_i_34_n_0\
    );
\hist_sum_data_4_reg[7]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[7]_i_2_n_0\,
      CO(3 downto 2) => \NLW_hist_sum_data_4_reg[7]_i_18_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \hist_sum_data_4_reg[7]_i_18_n_2\,
      CO(0) => \NLW_hist_sum_data_4_reg[7]_i_18_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_hist_sum_data_4_reg[7]_i_18_O_UNCONNECTED\(3 downto 1),
      O(0) => \hist_sum_data_4_reg[7]_i_18_n_7\,
      S(3 downto 1) => B"001",
      S(0) => hist_sum_data_3(19)
    );
\hist_sum_data_4_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_2_n_0\,
      CO(3) => \hist_sum_data_4_reg[7]_i_2_n_0\,
      CO(2) => \hist_sum_data_4_reg[7]_i_2_n_1\,
      CO(1) => \hist_sum_data_4_reg[7]_i_2_n_2\,
      CO(0) => \hist_sum_data_4_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => hist_sum_data_3(17),
      DI(1) => \hist_sum_data_4[7]_i_6_n_0\,
      DI(0) => \hist_sum_data_4[7]_i_7_n_0\,
      O(3) => \hist_sum_data_4_reg[7]_i_2_n_4\,
      O(2) => \hist_sum_data_4_reg[7]_i_2_n_5\,
      O(1) => \hist_sum_data_4_reg[7]_i_2_n_6\,
      O(0) => \hist_sum_data_4_reg[7]_i_2_n_7\,
      S(3) => hist_sum_data_3(18),
      S(2) => \hist_sum_data_4[7]_i_8_n_0\,
      S(1) => \hist_sum_data_4[7]_i_9_n_0\,
      S(0) => \hist_sum_data_4[7]_i_10_n_0\
    );
\hist_sum_data_4_reg[7]_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[7]_i_35_n_0\,
      CO(3) => \hist_sum_data_4_reg[7]_i_21_n_0\,
      CO(2) => \hist_sum_data_4_reg[7]_i_21_n_1\,
      CO(1) => \hist_sum_data_4_reg[7]_i_21_n_2\,
      CO(0) => \hist_sum_data_4_reg[7]_i_21_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[7]_i_36_n_0\,
      DI(2) => \hist_sum_data_4[7]_i_37_n_0\,
      DI(1) => \hist_sum_data_4[7]_i_38_n_0\,
      DI(0) => \hist_sum_data_4[7]_i_39_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[7]_i_21_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_4[7]_i_40_n_0\,
      S(2) => \hist_sum_data_4[7]_i_41_n_0\,
      S(1) => \hist_sum_data_4[7]_i_42_n_0\,
      S(0) => \hist_sum_data_4[7]_i_43_n_0\
    );
\hist_sum_data_4_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[7]_i_11_n_0\,
      CO(3) => \NLW_hist_sum_data_4_reg[7]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \hist_sum_data_4_reg[7]_i_3_n_1\,
      CO(1) => \hist_sum_data_4_reg[7]_i_3_n_2\,
      CO(0) => \hist_sum_data_4_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \hist_sum_data_4_reg[7]_i_4_n_6\,
      DI(1) => \hist_sum_data_4[7]_i_12_n_0\,
      DI(0) => \hist_sum_data_4[7]_i_13_n_0\,
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[7]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \hist_sum_data_4[7]_i_14_n_0\,
      S(1) => \hist_sum_data_4[7]_i_15_n_0\,
      S(0) => \hist_sum_data_4[7]_i_16_n_0\
    );
\hist_sum_data_4_reg[7]_i_30\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[7]_i_44_n_0\,
      CO(3) => \hist_sum_data_4_reg[7]_i_30_n_0\,
      CO(2) => \hist_sum_data_4_reg[7]_i_30_n_1\,
      CO(1) => \hist_sum_data_4_reg[7]_i_30_n_2\,
      CO(0) => \hist_sum_data_4_reg[7]_i_30_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4_reg[3]_i_2_n_4\,
      DI(2) => \hist_sum_data_4_reg[3]_i_2_n_5\,
      DI(1) => \hist_sum_data_4_reg[3]_i_2_n_6\,
      DI(0) => \hist_sum_data_4_reg[3]_i_2_n_7\,
      O(3) => \hist_sum_data_4_reg[7]_i_30_n_4\,
      O(2) => \hist_sum_data_4_reg[7]_i_30_n_5\,
      O(1) => \hist_sum_data_4_reg[7]_i_30_n_6\,
      O(0) => \hist_sum_data_4_reg[7]_i_30_n_7\,
      S(3) => \hist_sum_data_4[7]_i_45_n_0\,
      S(2) => \hist_sum_data_4[7]_i_46_n_0\,
      S(1) => \hist_sum_data_4[7]_i_47_n_0\,
      S(0) => \hist_sum_data_4[7]_i_48_n_0\
    );
\hist_sum_data_4_reg[7]_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_4_reg[7]_i_35_n_0\,
      CO(2) => \hist_sum_data_4_reg[7]_i_35_n_1\,
      CO(1) => \hist_sum_data_4_reg[7]_i_35_n_2\,
      CO(0) => \hist_sum_data_4_reg[7]_i_35_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4[7]_i_49_n_0\,
      DI(2) => \hist_sum_data_4[7]_i_50_n_0\,
      DI(1) => \hist_sum_data_4[7]_i_51_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_hist_sum_data_4_reg[7]_i_35_O_UNCONNECTED\(3 downto 0),
      S(3) => \hist_sum_data_4[7]_i_52_n_0\,
      S(2) => \hist_sum_data_4[7]_i_53_n_0\,
      S(1) => \hist_sum_data_4[7]_i_54_n_0\,
      S(0) => \hist_sum_data_4[7]_i_55_n_0\
    );
\hist_sum_data_4_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[7]_i_17_n_0\,
      CO(3) => \NLW_hist_sum_data_4_reg[7]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \hist_sum_data_4_reg[7]_i_4_n_1\,
      CO(1) => \NLW_hist_sum_data_4_reg[7]_i_4_CO_UNCONNECTED\(1),
      CO(0) => \hist_sum_data_4_reg[7]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \hist_sum_data_4_reg[7]_i_18_n_2\,
      DI(0) => \hist_sum_data_4_reg[7]_i_18_n_7\,
      O(3 downto 2) => \NLW_hist_sum_data_4_reg[7]_i_4_O_UNCONNECTED\(3 downto 2),
      O(1) => \hist_sum_data_4_reg[7]_i_4_n_6\,
      O(0) => \hist_sum_data_4_reg[7]_i_4_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \hist_sum_data_4[7]_i_19_n_0\,
      S(0) => \hist_sum_data_4[7]_i_20_n_0\
    );
\hist_sum_data_4_reg[7]_i_44\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_4_reg[7]_i_44_n_0\,
      CO(2) => \hist_sum_data_4_reg[7]_i_44_n_1\,
      CO(1) => \hist_sum_data_4_reg[7]_i_44_n_2\,
      CO(0) => \hist_sum_data_4_reg[7]_i_44_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \hist_sum_data_4_reg[7]_i_44_n_4\,
      O(2) => \hist_sum_data_4_reg[7]_i_44_n_5\,
      O(1) => \hist_sum_data_4_reg[7]_i_44_n_6\,
      O(0) => \hist_sum_data_4_reg[7]_i_44_n_7\,
      S(3) => \hist_sum_data_4[7]_i_56_n_0\,
      S(2) => \hist_sum_data_4[7]_i_57_n_0\,
      S(1) => \hist_sum_data_4[7]_i_58_n_0\,
      S(0) => \hist_sum_data_4_reg[3]_i_2_n_7\
    );
\hist_sum_data_4_reg[7]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_4_reg[3]_i_3_n_0\,
      CO(3) => \NLW_hist_sum_data_4_reg[7]_i_5_CO_UNCONNECTED\(3),
      CO(2) => \hist_sum_data_4_reg[7]_i_5_n_1\,
      CO(1) => \hist_sum_data_4_reg[7]_i_5_n_2\,
      CO(0) => \hist_sum_data_4_reg[7]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hist_sum_data_4_reg[7]_i_5_n_4\,
      O(2) => \hist_sum_data_4_reg[7]_i_5_n_5\,
      O(1) => \hist_sum_data_4_reg[7]_i_5_n_6\,
      O(0) => \hist_sum_data_4_reg[7]_i_5_n_7\,
      S(3) => \hist_sum_data_4_reg[7]_i_2_n_4\,
      S(2) => \hist_sum_data_4_reg[7]_i_2_n_5\,
      S(1) => \hist_sum_data_4_reg[7]_i_2_n_6\,
      S(0) => \hist_sum_data_4_reg[7]_i_2_n_7\
    );
\hist_sum_data_5[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_4_reg_n_0_[3]\,
      I1 => hist_sum_data_20_0(3),
      O => \hist_sum_data_5[3]_i_2_n_0\
    );
\hist_sum_data_5[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_4_reg_n_0_[2]\,
      I1 => hist_sum_data_20_0(2),
      O => \hist_sum_data_5[3]_i_3_n_0\
    );
\hist_sum_data_5[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_4_reg_n_0_[1]\,
      I1 => hist_sum_data_20_0(1),
      O => \hist_sum_data_5[3]_i_4_n_0\
    );
\hist_sum_data_5[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_4_reg_n_0_[0]\,
      I1 => hist_sum_data_20_0(0),
      O => \hist_sum_data_5[3]_i_5_n_0\
    );
\hist_sum_data_5[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_4_reg_n_0_[7]\,
      I1 => hist_sum_data_20_0(7),
      O => \hist_sum_data_5[7]_i_2_n_0\
    );
\hist_sum_data_5[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_4_reg_n_0_[6]\,
      I1 => hist_sum_data_20_0(6),
      O => \hist_sum_data_5[7]_i_3_n_0\
    );
\hist_sum_data_5[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_4_reg_n_0_[5]\,
      I1 => hist_sum_data_20_0(5),
      O => \hist_sum_data_5[7]_i_4_n_0\
    );
\hist_sum_data_5[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hist_sum_data_4_reg_n_0_[4]\,
      I1 => hist_sum_data_20_0(4),
      O => \hist_sum_data_5[7]_i_5_n_0\
    );
\hist_sum_data_5_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_5_reg[3]_i_1_n_7\,
      Q => hist_sum_data_5(0)
    );
\hist_sum_data_5_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_5_reg[3]_i_1_n_6\,
      Q => hist_sum_data_5(1)
    );
\hist_sum_data_5_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_5_reg[3]_i_1_n_5\,
      Q => hist_sum_data_5(2)
    );
\hist_sum_data_5_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_5_reg[3]_i_1_n_4\,
      Q => hist_sum_data_5(3)
    );
\hist_sum_data_5_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_sum_data_5_reg[3]_i_1_n_0\,
      CO(2) => \hist_sum_data_5_reg[3]_i_1_n_1\,
      CO(1) => \hist_sum_data_5_reg[3]_i_1_n_2\,
      CO(0) => \hist_sum_data_5_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \hist_sum_data_4_reg_n_0_[3]\,
      DI(2) => \hist_sum_data_4_reg_n_0_[2]\,
      DI(1) => \hist_sum_data_4_reg_n_0_[1]\,
      DI(0) => \hist_sum_data_4_reg_n_0_[0]\,
      O(3) => \hist_sum_data_5_reg[3]_i_1_n_4\,
      O(2) => \hist_sum_data_5_reg[3]_i_1_n_5\,
      O(1) => \hist_sum_data_5_reg[3]_i_1_n_6\,
      O(0) => \hist_sum_data_5_reg[3]_i_1_n_7\,
      S(3) => \hist_sum_data_5[3]_i_2_n_0\,
      S(2) => \hist_sum_data_5[3]_i_3_n_0\,
      S(1) => \hist_sum_data_5[3]_i_4_n_0\,
      S(0) => \hist_sum_data_5[3]_i_5_n_0\
    );
\hist_sum_data_5_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_5_reg[7]_i_1_n_7\,
      Q => hist_sum_data_5(4)
    );
\hist_sum_data_5_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_5_reg[7]_i_1_n_6\,
      Q => hist_sum_data_5(5)
    );
\hist_sum_data_5_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_5_reg[7]_i_1_n_5\,
      Q => hist_sum_data_5(6)
    );
\hist_sum_data_5_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => \hist_sum_data_5_reg[7]_i_1_n_4\,
      Q => hist_sum_data_5(7)
    );
\hist_sum_data_5_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_sum_data_5_reg[3]_i_1_n_0\,
      CO(3) => \NLW_hist_sum_data_5_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \hist_sum_data_5_reg[7]_i_1_n_1\,
      CO(1) => \hist_sum_data_5_reg[7]_i_1_n_2\,
      CO(0) => \hist_sum_data_5_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \hist_sum_data_4_reg_n_0_[6]\,
      DI(1) => \hist_sum_data_4_reg_n_0_[5]\,
      DI(0) => \hist_sum_data_4_reg_n_0_[4]\,
      O(3) => \hist_sum_data_5_reg[7]_i_1_n_4\,
      O(2) => \hist_sum_data_5_reg[7]_i_1_n_5\,
      O(1) => \hist_sum_data_5_reg[7]_i_1_n_6\,
      O(0) => \hist_sum_data_5_reg[7]_i_1_n_7\,
      S(3) => \hist_sum_data_5[7]_i_2_n_0\,
      S(2) => \hist_sum_data_5[7]_i_3_n_0\,
      S(1) => \hist_sum_data_5[7]_i_4_n_0\,
      S(0) => \hist_sum_data_5[7]_i_5_n_0\
    );
hist_sum_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \hist_addr_reg__0\(4),
      I1 => \hist_addr_reg__0\(2),
      I2 => \hist_addr_reg__0\(0),
      I3 => \hist_addr_reg__0\(1),
      I4 => \hist_addr_reg__0\(3),
      I5 => \hist_addr_reg__0\(5),
      O => hist_sum_done_i_2_n_0
    );
hist_sum_done_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_ram_data_n_3,
      Q => hist_sum_done
    );
hist_sum_runn_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hist_sum_done,
      O => hist_sum_runn_0_i_1_n_0
    );
hist_sum_runn_0_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_runn_0_i_1_n_0,
      Q => hist_sum_runn_0
    );
hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => hist_sum_runn_0,
      Q => hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c_n_0
    );
hist_sum_runn_4_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hist_sum_runn_4_reg_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0,
      I1 => hist_sum_addr_3_reg_c_n_0,
      O => hist_sum_runn_4_reg_gate_n_0
    );
hist_sum_runn_4_reg_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c_n_0,
      Q => hist_sum_runn_4_reg_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0,
      R => '0'
    );
hist_sum_runn_5_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \^s_hist_equ_en_reg\,
      D => hist_sum_runn_4_reg_gate_n_0,
      Q => hist_sum_runn_5
    );
href_r_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => out_href,
      Q => hist_equ_href,
      R => '0'
    );
href_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => hist_equ_href,
      I1 => s_hist_equ_en,
      I2 => out_href,
      O => in_href
    );
vsync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => out_vsync,
      Q => hist_equ_vsync,
      R => '0'
    );
\vsync_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => hist_equ_vsync,
      I1 => s_hist_equ_en,
      I2 => out_vsync,
      O => in_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_vip_sobel is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    in_href : out STD_LOGIC;
    in_vsync : out STD_LOGIC;
    pclk : in STD_LOGIC;
    hist_equ_href_o : in STD_LOGIC;
    hist_equ_vsync_o : in STD_LOGIC;
    s_module_reset : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_sobel_en : in STD_LOGIC;
    \in_r_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end design_1_xil_vip_0_0_vip_sobel;

architecture STRUCTURE of design_1_xil_vip_0_0_vip_sobel is
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
  signal gx1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gx12 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \gx1[3]_i_2_n_0\ : STD_LOGIC;
  signal \gx1[3]_i_3_n_0\ : STD_LOGIC;
  signal \gx1[3]_i_4_n_0\ : STD_LOGIC;
  signal \gx1[3]_i_5_n_0\ : STD_LOGIC;
  signal \gx1[3]_i_6_n_0\ : STD_LOGIC;
  signal \gx1[3]_i_7_n_0\ : STD_LOGIC;
  signal \gx1[7]_i_2_n_0\ : STD_LOGIC;
  signal \gx1[7]_i_3_n_0\ : STD_LOGIC;
  signal \gx1[7]_i_4_n_0\ : STD_LOGIC;
  signal \gx1[7]_i_5_n_0\ : STD_LOGIC;
  signal \gx1[7]_i_6_n_0\ : STD_LOGIC;
  signal \gx1[7]_i_7_n_0\ : STD_LOGIC;
  signal \gx1[7]_i_8_n_0\ : STD_LOGIC;
  signal \gx1[7]_i_9_n_0\ : STD_LOGIC;
  signal \gx1[9]_i_2_n_0\ : STD_LOGIC;
  signal \gx1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gx1_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gx1_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gx1_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gx1_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \gx1_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \gx1_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \gx1_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \gx1_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gx1_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gx1_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gx1_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gx1_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gx1_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gx1_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gx1_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \gx1_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \gx1_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal gx2 : STD_LOGIC;
  signal gx3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gx32 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \gx3[3]_i_2_n_0\ : STD_LOGIC;
  signal \gx3[3]_i_3_n_0\ : STD_LOGIC;
  signal \gx3[3]_i_4_n_0\ : STD_LOGIC;
  signal \gx3[3]_i_5_n_0\ : STD_LOGIC;
  signal \gx3[3]_i_6_n_0\ : STD_LOGIC;
  signal \gx3[3]_i_7_n_0\ : STD_LOGIC;
  signal \gx3[7]_i_2_n_0\ : STD_LOGIC;
  signal \gx3[7]_i_3_n_0\ : STD_LOGIC;
  signal \gx3[7]_i_4_n_0\ : STD_LOGIC;
  signal \gx3[7]_i_5_n_0\ : STD_LOGIC;
  signal \gx3[7]_i_6_n_0\ : STD_LOGIC;
  signal \gx3[7]_i_7_n_0\ : STD_LOGIC;
  signal \gx3[7]_i_8_n_0\ : STD_LOGIC;
  signal \gx3[7]_i_9_n_0\ : STD_LOGIC;
  signal \gx3[9]_i_2_n_0\ : STD_LOGIC;
  signal \gx3_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gx3_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gx3_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gx3_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gx3_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \gx3_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \gx3_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \gx3_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \gx3_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gx3_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gx3_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gx3_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gx3_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gx3_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gx3_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gx3_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \gx3_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \gx3_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \gx[3]_i_2_n_0\ : STD_LOGIC;
  signal \gx[3]_i_3_n_0\ : STD_LOGIC;
  signal \gx[3]_i_4_n_0\ : STD_LOGIC;
  signal \gx[3]_i_5_n_0\ : STD_LOGIC;
  signal \gx[3]_i_6_n_0\ : STD_LOGIC;
  signal \gx[3]_i_7_n_0\ : STD_LOGIC;
  signal \gx[3]_i_8_n_0\ : STD_LOGIC;
  signal \gx[3]_i_9_n_0\ : STD_LOGIC;
  signal \gx[7]_i_2_n_0\ : STD_LOGIC;
  signal \gx[7]_i_3_n_0\ : STD_LOGIC;
  signal \gx[7]_i_4_n_0\ : STD_LOGIC;
  signal \gx[7]_i_5_n_0\ : STD_LOGIC;
  signal \gx[7]_i_6_n_0\ : STD_LOGIC;
  signal \gx[7]_i_7_n_0\ : STD_LOGIC;
  signal \gx[7]_i_8_n_0\ : STD_LOGIC;
  signal \gx[7]_i_9_n_0\ : STD_LOGIC;
  signal \gx[9]_i_10_n_0\ : STD_LOGIC;
  signal \gx[9]_i_11_n_0\ : STD_LOGIC;
  signal \gx[9]_i_12_n_0\ : STD_LOGIC;
  signal \gx[9]_i_13_n_0\ : STD_LOGIC;
  signal \gx[9]_i_14_n_0\ : STD_LOGIC;
  signal \gx[9]_i_15_n_0\ : STD_LOGIC;
  signal \gx[9]_i_16_n_0\ : STD_LOGIC;
  signal \gx[9]_i_2_n_0\ : STD_LOGIC;
  signal \gx[9]_i_3_n_0\ : STD_LOGIC;
  signal \gx[9]_i_4_n_0\ : STD_LOGIC;
  signal \gx[9]_i_7_n_0\ : STD_LOGIC;
  signal \gx[9]_i_8_n_0\ : STD_LOGIC;
  signal \gx[9]_i_9_n_0\ : STD_LOGIC;
  signal \gx_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gx_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gx_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gx_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gx_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gx_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gx_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gx_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gx_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \gx_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \gx_reg[9]_i_6_n_1\ : STD_LOGIC;
  signal \gx_reg[9]_i_6_n_2\ : STD_LOGIC;
  signal \gx_reg[9]_i_6_n_3\ : STD_LOGIC;
  signal gy : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gy0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gy1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gy12 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \gy1[3]_i_2_n_0\ : STD_LOGIC;
  signal \gy1[3]_i_3_n_0\ : STD_LOGIC;
  signal \gy1[3]_i_4_n_0\ : STD_LOGIC;
  signal \gy1[3]_i_5_n_0\ : STD_LOGIC;
  signal \gy1[3]_i_6_n_0\ : STD_LOGIC;
  signal \gy1[3]_i_7_n_0\ : STD_LOGIC;
  signal \gy1[7]_i_2_n_0\ : STD_LOGIC;
  signal \gy1[7]_i_3_n_0\ : STD_LOGIC;
  signal \gy1[7]_i_4_n_0\ : STD_LOGIC;
  signal \gy1[7]_i_5_n_0\ : STD_LOGIC;
  signal \gy1[7]_i_6_n_0\ : STD_LOGIC;
  signal \gy1[7]_i_7_n_0\ : STD_LOGIC;
  signal \gy1[7]_i_8_n_0\ : STD_LOGIC;
  signal \gy1[7]_i_9_n_0\ : STD_LOGIC;
  signal \gy1[9]_i_2_n_0\ : STD_LOGIC;
  signal \gy1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gy1_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gy1_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gy1_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gy1_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \gy1_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \gy1_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \gy1_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \gy1_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gy1_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gy1_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gy1_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gy1_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gy1_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gy1_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gy1_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \gy1_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \gy1_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal gy2 : STD_LOGIC;
  signal gy3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gy32 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \gy3[3]_i_2_n_0\ : STD_LOGIC;
  signal \gy3[3]_i_3_n_0\ : STD_LOGIC;
  signal \gy3[3]_i_4_n_0\ : STD_LOGIC;
  signal \gy3[3]_i_5_n_0\ : STD_LOGIC;
  signal \gy3[3]_i_6_n_0\ : STD_LOGIC;
  signal \gy3[3]_i_7_n_0\ : STD_LOGIC;
  signal \gy3[7]_i_2_n_0\ : STD_LOGIC;
  signal \gy3[7]_i_3_n_0\ : STD_LOGIC;
  signal \gy3[7]_i_4_n_0\ : STD_LOGIC;
  signal \gy3[7]_i_5_n_0\ : STD_LOGIC;
  signal \gy3[7]_i_6_n_0\ : STD_LOGIC;
  signal \gy3[7]_i_7_n_0\ : STD_LOGIC;
  signal \gy3[7]_i_8_n_0\ : STD_LOGIC;
  signal \gy3[7]_i_9_n_0\ : STD_LOGIC;
  signal \gy3[9]_i_2_n_0\ : STD_LOGIC;
  signal \gy3_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gy3_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gy3_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gy3_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gy3_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gy3_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gy3_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gy3_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gy[3]_i_6_n_0\ : STD_LOGIC;
  signal \gy[3]_i_7_n_0\ : STD_LOGIC;
  signal \gy[3]_i_8_n_0\ : STD_LOGIC;
  signal \gy[3]_i_9_n_0\ : STD_LOGIC;
  signal \gy[7]_i_6_n_0\ : STD_LOGIC;
  signal \gy[7]_i_7_n_0\ : STD_LOGIC;
  signal \gy[7]_i_8_n_0\ : STD_LOGIC;
  signal \gy[7]_i_9_n_0\ : STD_LOGIC;
  signal \gy[9]_i_10_n_0\ : STD_LOGIC;
  signal \gy[9]_i_11_n_0\ : STD_LOGIC;
  signal \gy[9]_i_12_n_0\ : STD_LOGIC;
  signal \gy[9]_i_13_n_0\ : STD_LOGIC;
  signal \gy[9]_i_14_n_0\ : STD_LOGIC;
  signal \gy[9]_i_15_n_0\ : STD_LOGIC;
  signal \gy[9]_i_16_n_0\ : STD_LOGIC;
  signal \gy[9]_i_3_n_0\ : STD_LOGIC;
  signal \gy[9]_i_4_n_0\ : STD_LOGIC;
  signal \gy[9]_i_7_n_0\ : STD_LOGIC;
  signal \gy[9]_i_8_n_0\ : STD_LOGIC;
  signal \gy[9]_i_9_n_0\ : STD_LOGIC;
  signal \gy_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gy_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gy_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gy_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gy_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gy_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gy_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gy_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gy_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \gy_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \gy_reg[9]_i_6_n_1\ : STD_LOGIC;
  signal \gy_reg[9]_i_6_n_2\ : STD_LOGIC;
  signal \gy_reg[9]_i_6_n_3\ : STD_LOGIC;
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
  signal \NLW_gx1_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gx1_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gx3_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gx3_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gx_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gx_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gx_reg[9]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gx_reg[9]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gx_reg[9]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gy1_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gy1_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gy3_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gy3_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gy_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gy_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gy_reg[9]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gy_reg[9]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gy_reg[9]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_reg[16]_i_1__0\ : label is "soft_lutpair65";
  attribute HLUTNM : string;
  attribute HLUTNM of \gx1[3]_i_2\ : label is "lutpair34";
  attribute HLUTNM of \gx1[3]_i_4\ : label is "lutpair35";
  attribute HLUTNM of \gx1[3]_i_5\ : label is "lutpair34";
  attribute HLUTNM of \gx1[7]_i_2\ : label is "lutpair38";
  attribute HLUTNM of \gx1[7]_i_3\ : label is "lutpair37";
  attribute HLUTNM of \gx1[7]_i_4\ : label is "lutpair36";
  attribute HLUTNM of \gx1[7]_i_5\ : label is "lutpair35";
  attribute HLUTNM of \gx1[7]_i_7\ : label is "lutpair38";
  attribute HLUTNM of \gx1[7]_i_8\ : label is "lutpair37";
  attribute HLUTNM of \gx1[7]_i_9\ : label is "lutpair36";
  attribute HLUTNM of \gx3[3]_i_2\ : label is "lutpair29";
  attribute HLUTNM of \gx3[3]_i_4\ : label is "lutpair30";
  attribute HLUTNM of \gx3[3]_i_5\ : label is "lutpair29";
  attribute HLUTNM of \gx3[7]_i_2\ : label is "lutpair33";
  attribute HLUTNM of \gx3[7]_i_3\ : label is "lutpair32";
  attribute HLUTNM of \gx3[7]_i_4\ : label is "lutpair31";
  attribute HLUTNM of \gx3[7]_i_5\ : label is "lutpair30";
  attribute HLUTNM of \gx3[7]_i_7\ : label is "lutpair33";
  attribute HLUTNM of \gx3[7]_i_8\ : label is "lutpair32";
  attribute HLUTNM of \gx3[7]_i_9\ : label is "lutpair31";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gx_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gx_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gx_reg[9]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \gy1[3]_i_2\ : label is "lutpair24";
  attribute HLUTNM of \gy1[3]_i_4\ : label is "lutpair25";
  attribute HLUTNM of \gy1[3]_i_5\ : label is "lutpair24";
  attribute HLUTNM of \gy1[7]_i_2\ : label is "lutpair28";
  attribute HLUTNM of \gy1[7]_i_3\ : label is "lutpair27";
  attribute HLUTNM of \gy1[7]_i_4\ : label is "lutpair26";
  attribute HLUTNM of \gy1[7]_i_5\ : label is "lutpair25";
  attribute HLUTNM of \gy1[7]_i_7\ : label is "lutpair28";
  attribute HLUTNM of \gy1[7]_i_8\ : label is "lutpair27";
  attribute HLUTNM of \gy1[7]_i_9\ : label is "lutpair26";
  attribute HLUTNM of \gy3[3]_i_2\ : label is "lutpair19";
  attribute HLUTNM of \gy3[3]_i_4\ : label is "lutpair20";
  attribute HLUTNM of \gy3[3]_i_5\ : label is "lutpair19";
  attribute HLUTNM of \gy3[7]_i_2\ : label is "lutpair23";
  attribute HLUTNM of \gy3[7]_i_3\ : label is "lutpair22";
  attribute HLUTNM of \gy3[7]_i_4\ : label is "lutpair21";
  attribute HLUTNM of \gy3[7]_i_5\ : label is "lutpair20";
  attribute HLUTNM of \gy3[7]_i_7\ : label is "lutpair23";
  attribute HLUTNM of \gy3[7]_i_8\ : label is "lutpair22";
  attribute HLUTNM of \gy3[7]_i_9\ : label is "lutpair21";
  attribute METHODOLOGY_DRC_VIOS of \gy_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gy_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gy_reg[9]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/href_dly_reg ";
  attribute srl_name : string;
  attribute srl_name of \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 ";
  attribute SOFT_HLUTNM of href_dly_reg_gate : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \href_reg_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \out[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \out[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \out[2]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \out[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \out[4]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \out[5]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \out[6]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \out[7]_i_1\ : label is "soft_lutpair63";
  attribute srl_bus_name of \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/vsync_dly_reg ";
  attribute srl_name of \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\ : label is "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 ";
  attribute SOFT_HLUTNM of vsync_dly_reg_gate : label is "soft_lutpair68";
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
\gx1[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx12(2),
      I1 => p31(2),
      I2 => p11(2),
      O => \gx1[3]_i_2_n_0\
    );
\gx1[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p11(2),
      I1 => gx12(2),
      I2 => p31(2),
      O => \gx1[3]_i_3_n_0\
    );
\gx1[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx12(3),
      I1 => p31(3),
      I2 => p11(3),
      I3 => \gx1[3]_i_2_n_0\,
      O => \gx1[3]_i_4_n_0\
    );
\gx1[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => gx12(2),
      I1 => p31(2),
      I2 => p11(2),
      I3 => p31(1),
      I4 => gx12(1),
      O => \gx1[3]_i_5_n_0\
    );
\gx1[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gx12(1),
      I1 => p31(1),
      I2 => p11(1),
      O => \gx1[3]_i_6_n_0\
    );
\gx1[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p11(0),
      I1 => p31(0),
      O => \gx1[3]_i_7_n_0\
    );
\gx1[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx12(6),
      I1 => p31(6),
      I2 => p11(6),
      O => \gx1[7]_i_2_n_0\
    );
\gx1[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx12(5),
      I1 => p31(5),
      I2 => p11(5),
      O => \gx1[7]_i_3_n_0\
    );
\gx1[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx12(4),
      I1 => p31(4),
      I2 => p11(4),
      O => \gx1[7]_i_4_n_0\
    );
\gx1[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx12(3),
      I1 => p31(3),
      I2 => p11(3),
      O => \gx1[7]_i_5_n_0\
    );
\gx1[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gx1[7]_i_2_n_0\,
      I1 => p31(7),
      I2 => gx12(7),
      I3 => p11(7),
      O => \gx1[7]_i_6_n_0\
    );
\gx1[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx12(6),
      I1 => p31(6),
      I2 => p11(6),
      I3 => \gx1[7]_i_3_n_0\,
      O => \gx1[7]_i_7_n_0\
    );
\gx1[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx12(5),
      I1 => p31(5),
      I2 => p11(5),
      I3 => \gx1[7]_i_4_n_0\,
      O => \gx1[7]_i_8_n_0\
    );
\gx1[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx12(4),
      I1 => p31(4),
      I2 => p11(4),
      I3 => \gx1[7]_i_5_n_0\,
      O => \gx1[7]_i_9_n_0\
    );
\gx1[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => p11(7),
      I1 => p31(7),
      I2 => gx12(7),
      I3 => gx12(8),
      O => \gx1[9]_i_2_n_0\
    );
\gx1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx1_reg[3]_i_1_n_7\,
      Q => gx1(0)
    );
\gx1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx1_reg[3]_i_1_n_6\,
      Q => gx1(1)
    );
\gx1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx1_reg[3]_i_1_n_5\,
      Q => gx1(2)
    );
\gx1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx1_reg[3]_i_1_n_4\,
      Q => gx1(3)
    );
\gx1_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gx1_reg[3]_i_1_n_0\,
      CO(2) => \gx1_reg[3]_i_1_n_1\,
      CO(1) => \gx1_reg[3]_i_1_n_2\,
      CO(0) => \gx1_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gx1[3]_i_2_n_0\,
      DI(2) => \gx1[3]_i_3_n_0\,
      DI(1 downto 0) => p11(1 downto 0),
      O(3) => \gx1_reg[3]_i_1_n_4\,
      O(2) => \gx1_reg[3]_i_1_n_5\,
      O(1) => \gx1_reg[3]_i_1_n_6\,
      O(0) => \gx1_reg[3]_i_1_n_7\,
      S(3) => \gx1[3]_i_4_n_0\,
      S(2) => \gx1[3]_i_5_n_0\,
      S(1) => \gx1[3]_i_6_n_0\,
      S(0) => \gx1[3]_i_7_n_0\
    );
\gx1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx1_reg[7]_i_1_n_7\,
      Q => gx1(4)
    );
\gx1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx1_reg[7]_i_1_n_6\,
      Q => gx1(5)
    );
\gx1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx1_reg[7]_i_1_n_5\,
      Q => gx1(6)
    );
\gx1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx1_reg[7]_i_1_n_4\,
      Q => gx1(7)
    );
\gx1_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx1_reg[3]_i_1_n_0\,
      CO(3) => \gx1_reg[7]_i_1_n_0\,
      CO(2) => \gx1_reg[7]_i_1_n_1\,
      CO(1) => \gx1_reg[7]_i_1_n_2\,
      CO(0) => \gx1_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gx1[7]_i_2_n_0\,
      DI(2) => \gx1[7]_i_3_n_0\,
      DI(1) => \gx1[7]_i_4_n_0\,
      DI(0) => \gx1[7]_i_5_n_0\,
      O(3) => \gx1_reg[7]_i_1_n_4\,
      O(2) => \gx1_reg[7]_i_1_n_5\,
      O(1) => \gx1_reg[7]_i_1_n_6\,
      O(0) => \gx1_reg[7]_i_1_n_7\,
      S(3) => \gx1[7]_i_6_n_0\,
      S(2) => \gx1[7]_i_7_n_0\,
      S(1) => \gx1[7]_i_8_n_0\,
      S(0) => \gx1[7]_i_9_n_0\
    );
\gx1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx1_reg[9]_i_1_n_7\,
      Q => gx1(8)
    );
\gx1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx1_reg[9]_i_1_n_2\,
      Q => gx1(9)
    );
\gx1_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx1_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_gx1_reg[9]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gx1_reg[9]_i_1_n_2\,
      CO(0) => \NLW_gx1_reg[9]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => gx12(8),
      O(3 downto 1) => \NLW_gx1_reg[9]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gx1_reg[9]_i_1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \gx1[9]_i_2_n_0\
    );
\gx3[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx32(2),
      I1 => p33(2),
      I2 => p13(2),
      O => \gx3[3]_i_2_n_0\
    );
\gx3[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p13(2),
      I1 => gx32(2),
      I2 => p33(2),
      O => \gx3[3]_i_3_n_0\
    );
\gx3[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx32(3),
      I1 => p33(3),
      I2 => p13(3),
      I3 => \gx3[3]_i_2_n_0\,
      O => \gx3[3]_i_4_n_0\
    );
\gx3[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => gx32(2),
      I1 => p33(2),
      I2 => p13(2),
      I3 => p33(1),
      I4 => gx32(1),
      O => \gx3[3]_i_5_n_0\
    );
\gx3[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gx32(1),
      I1 => p33(1),
      I2 => p13(1),
      O => \gx3[3]_i_6_n_0\
    );
\gx3[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p13(0),
      I1 => p33(0),
      O => \gx3[3]_i_7_n_0\
    );
\gx3[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx32(6),
      I1 => p33(6),
      I2 => p13(6),
      O => \gx3[7]_i_2_n_0\
    );
\gx3[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx32(5),
      I1 => p33(5),
      I2 => p13(5),
      O => \gx3[7]_i_3_n_0\
    );
\gx3[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx32(4),
      I1 => p33(4),
      I2 => p13(4),
      O => \gx3[7]_i_4_n_0\
    );
\gx3[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gx32(3),
      I1 => p33(3),
      I2 => p13(3),
      O => \gx3[7]_i_5_n_0\
    );
\gx3[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gx3[7]_i_2_n_0\,
      I1 => p33(7),
      I2 => gx32(7),
      I3 => p13(7),
      O => \gx3[7]_i_6_n_0\
    );
\gx3[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx32(6),
      I1 => p33(6),
      I2 => p13(6),
      I3 => \gx3[7]_i_3_n_0\,
      O => \gx3[7]_i_7_n_0\
    );
\gx3[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx32(5),
      I1 => p33(5),
      I2 => p13(5),
      I3 => \gx3[7]_i_4_n_0\,
      O => \gx3[7]_i_8_n_0\
    );
\gx3[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gx32(4),
      I1 => p33(4),
      I2 => p13(4),
      I3 => \gx3[7]_i_5_n_0\,
      O => \gx3[7]_i_9_n_0\
    );
\gx3[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => p13(7),
      I1 => p33(7),
      I2 => gx32(7),
      I3 => gx32(8),
      O => \gx3[9]_i_2_n_0\
    );
\gx3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx3_reg[3]_i_1_n_7\,
      Q => gx3(0)
    );
\gx3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx3_reg[3]_i_1_n_6\,
      Q => gx3(1)
    );
\gx3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx3_reg[3]_i_1_n_5\,
      Q => gx3(2)
    );
\gx3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx3_reg[3]_i_1_n_4\,
      Q => gx3(3)
    );
\gx3_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gx3_reg[3]_i_1_n_0\,
      CO(2) => \gx3_reg[3]_i_1_n_1\,
      CO(1) => \gx3_reg[3]_i_1_n_2\,
      CO(0) => \gx3_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gx3[3]_i_2_n_0\,
      DI(2) => \gx3[3]_i_3_n_0\,
      DI(1 downto 0) => p13(1 downto 0),
      O(3) => \gx3_reg[3]_i_1_n_4\,
      O(2) => \gx3_reg[3]_i_1_n_5\,
      O(1) => \gx3_reg[3]_i_1_n_6\,
      O(0) => \gx3_reg[3]_i_1_n_7\,
      S(3) => \gx3[3]_i_4_n_0\,
      S(2) => \gx3[3]_i_5_n_0\,
      S(1) => \gx3[3]_i_6_n_0\,
      S(0) => \gx3[3]_i_7_n_0\
    );
\gx3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx3_reg[7]_i_1_n_7\,
      Q => gx3(4)
    );
\gx3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx3_reg[7]_i_1_n_6\,
      Q => gx3(5)
    );
\gx3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx3_reg[7]_i_1_n_5\,
      Q => gx3(6)
    );
\gx3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx3_reg[7]_i_1_n_4\,
      Q => gx3(7)
    );
\gx3_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx3_reg[3]_i_1_n_0\,
      CO(3) => \gx3_reg[7]_i_1_n_0\,
      CO(2) => \gx3_reg[7]_i_1_n_1\,
      CO(1) => \gx3_reg[7]_i_1_n_2\,
      CO(0) => \gx3_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gx3[7]_i_2_n_0\,
      DI(2) => \gx3[7]_i_3_n_0\,
      DI(1) => \gx3[7]_i_4_n_0\,
      DI(0) => \gx3[7]_i_5_n_0\,
      O(3) => \gx3_reg[7]_i_1_n_4\,
      O(2) => \gx3_reg[7]_i_1_n_5\,
      O(1) => \gx3_reg[7]_i_1_n_6\,
      O(0) => \gx3_reg[7]_i_1_n_7\,
      S(3) => \gx3[7]_i_6_n_0\,
      S(2) => \gx3[7]_i_7_n_0\,
      S(1) => \gx3[7]_i_8_n_0\,
      S(0) => \gx3[7]_i_9_n_0\
    );
\gx3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx3_reg[9]_i_1_n_7\,
      Q => gx3(8)
    );
\gx3_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gx3_reg[9]_i_1_n_2\,
      Q => gx3(9)
    );
\gx3_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx3_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_gx3_reg[9]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gx3_reg[9]_i_1_n_2\,
      CO(0) => \NLW_gx3_reg[9]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => gx32(8),
      O(3 downto 1) => \NLW_gx3_reg[9]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gx3_reg[9]_i_1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \gx3[9]_i_2_n_0\
    );
\gx[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(3),
      I1 => gx1(3),
      I2 => gx2,
      O => \gx[3]_i_2_n_0\
    );
\gx[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(2),
      I1 => gx1(2),
      I2 => gx2,
      O => \gx[3]_i_3_n_0\
    );
\gx[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(1),
      I1 => gx1(1),
      I2 => gx2,
      O => \gx[3]_i_4_n_0\
    );
\gx[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(0),
      I1 => gx1(0),
      I2 => gx2,
      O => \gx[3]_i_5_n_0\
    );
\gx[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(3),
      I1 => gx1(3),
      O => \gx[3]_i_6_n_0\
    );
\gx[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(2),
      I1 => gx1(2),
      O => \gx[3]_i_7_n_0\
    );
\gx[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(1),
      I1 => gx1(1),
      O => \gx[3]_i_8_n_0\
    );
\gx[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(0),
      I1 => gx1(0),
      O => \gx[3]_i_9_n_0\
    );
\gx[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(7),
      I1 => gx1(7),
      I2 => gx2,
      O => \gx[7]_i_2_n_0\
    );
\gx[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(6),
      I1 => gx1(6),
      I2 => gx2,
      O => \gx[7]_i_3_n_0\
    );
\gx[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(5),
      I1 => gx1(5),
      I2 => gx2,
      O => \gx[7]_i_4_n_0\
    );
\gx[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(4),
      I1 => gx1(4),
      I2 => gx2,
      O => \gx[7]_i_5_n_0\
    );
\gx[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(7),
      I1 => gx1(7),
      O => \gx[7]_i_6_n_0\
    );
\gx[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(6),
      I1 => gx1(6),
      O => \gx[7]_i_7_n_0\
    );
\gx[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(5),
      I1 => gx1(5),
      O => \gx[7]_i_8_n_0\
    );
\gx[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(4),
      I1 => gx1(4),
      O => \gx[7]_i_9_n_0\
    );
\gx[9]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gx1(4),
      I1 => gx3(4),
      I2 => gx3(5),
      I3 => gx1(5),
      O => \gx[9]_i_10_n_0\
    );
\gx[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gx1(2),
      I1 => gx3(2),
      I2 => gx3(3),
      I3 => gx1(3),
      O => \gx[9]_i_11_n_0\
    );
\gx[9]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gx1(0),
      I1 => gx3(0),
      I2 => gx3(1),
      I3 => gx1(1),
      O => \gx[9]_i_12_n_0\
    );
\gx[9]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gx1(6),
      I1 => gx3(6),
      I2 => gx1(7),
      I3 => gx3(7),
      O => \gx[9]_i_13_n_0\
    );
\gx[9]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gx1(4),
      I1 => gx3(4),
      I2 => gx1(5),
      I3 => gx3(5),
      O => \gx[9]_i_14_n_0\
    );
\gx[9]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gx1(2),
      I1 => gx3(2),
      I2 => gx1(3),
      I3 => gx3(3),
      O => \gx[9]_i_15_n_0\
    );
\gx[9]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gx1(0),
      I1 => gx3(0),
      I2 => gx1(1),
      I3 => gx3(1),
      O => \gx[9]_i_16_n_0\
    );
\gx[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gx3(8),
      I1 => gx1(8),
      I2 => gx2,
      O => \gx[9]_i_2_n_0\
    );
\gx[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(9),
      I1 => gx1(9),
      O => \gx[9]_i_3_n_0\
    );
\gx[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gx3(8),
      I1 => gx1(8),
      O => \gx[9]_i_4_n_0\
    );
\gx[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gx1(8),
      I1 => gx3(8),
      I2 => gx3(9),
      I3 => gx1(9),
      O => \gx[9]_i_7_n_0\
    );
\gx[9]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gx1(8),
      I1 => gx3(8),
      I2 => gx1(9),
      I3 => gx3(9),
      O => \gx[9]_i_8_n_0\
    );
\gx[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gx1(6),
      I1 => gx3(6),
      I2 => gx3(7),
      I3 => gx1(7),
      O => \gx[9]_i_9_n_0\
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
\gx_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gx_reg[3]_i_1_n_0\,
      CO(2) => \gx_reg[3]_i_1_n_1\,
      CO(1) => \gx_reg[3]_i_1_n_2\,
      CO(0) => \gx_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3) => \gx[3]_i_2_n_0\,
      DI(2) => \gx[3]_i_3_n_0\,
      DI(1) => \gx[3]_i_4_n_0\,
      DI(0) => \gx[3]_i_5_n_0\,
      O(3 downto 0) => gx0(3 downto 0),
      S(3) => \gx[3]_i_6_n_0\,
      S(2) => \gx[3]_i_7_n_0\,
      S(1) => \gx[3]_i_8_n_0\,
      S(0) => \gx[3]_i_9_n_0\
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
\gx_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx_reg[3]_i_1_n_0\,
      CO(3) => \gx_reg[7]_i_1_n_0\,
      CO(2) => \gx_reg[7]_i_1_n_1\,
      CO(1) => \gx_reg[7]_i_1_n_2\,
      CO(0) => \gx_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gx[7]_i_2_n_0\,
      DI(2) => \gx[7]_i_3_n_0\,
      DI(1) => \gx[7]_i_4_n_0\,
      DI(0) => \gx[7]_i_5_n_0\,
      O(3 downto 0) => gx0(7 downto 4),
      S(3) => \gx[7]_i_6_n_0\,
      S(2) => \gx[7]_i_7_n_0\,
      S(1) => \gx[7]_i_8_n_0\,
      S(0) => \gx[7]_i_9_n_0\
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
\gx_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_gx_reg[9]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gx_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gx[9]_i_2_n_0\,
      O(3 downto 2) => \NLW_gx_reg[9]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => gx0(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \gx[9]_i_3_n_0\,
      S(0) => \gx[9]_i_4_n_0\
    );
\gx_reg[9]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \gx_reg[9]_i_6_n_0\,
      CO(3 downto 1) => \NLW_gx_reg[9]_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => gx2,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gx[9]_i_7_n_0\,
      O(3 downto 0) => \NLW_gx_reg[9]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gx[9]_i_8_n_0\
    );
\gx_reg[9]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gx_reg[9]_i_6_n_0\,
      CO(2) => \gx_reg[9]_i_6_n_1\,
      CO(1) => \gx_reg[9]_i_6_n_2\,
      CO(0) => \gx_reg[9]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \gx[9]_i_9_n_0\,
      DI(2) => \gx[9]_i_10_n_0\,
      DI(1) => \gx[9]_i_11_n_0\,
      DI(0) => \gx[9]_i_12_n_0\,
      O(3 downto 0) => \NLW_gx_reg[9]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \gx[9]_i_13_n_0\,
      S(2) => \gx[9]_i_14_n_0\,
      S(1) => \gx[9]_i_15_n_0\,
      S(0) => \gx[9]_i_16_n_0\
    );
\gy1[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy12(2),
      I1 => p13(2),
      I2 => p11(2),
      O => \gy1[3]_i_2_n_0\
    );
\gy1[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p11(2),
      I1 => gy12(2),
      I2 => p13(2),
      O => \gy1[3]_i_3_n_0\
    );
\gy1[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy12(3),
      I1 => p13(3),
      I2 => p11(3),
      I3 => \gy1[3]_i_2_n_0\,
      O => \gy1[3]_i_4_n_0\
    );
\gy1[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => gy12(2),
      I1 => p13(2),
      I2 => p11(2),
      I3 => p13(1),
      I4 => gy12(1),
      O => \gy1[3]_i_5_n_0\
    );
\gy1[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gy12(1),
      I1 => p13(1),
      I2 => p11(1),
      O => \gy1[3]_i_6_n_0\
    );
\gy1[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p11(0),
      I1 => p13(0),
      O => \gy1[3]_i_7_n_0\
    );
\gy1[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy12(6),
      I1 => p13(6),
      I2 => p11(6),
      O => \gy1[7]_i_2_n_0\
    );
\gy1[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy12(5),
      I1 => p13(5),
      I2 => p11(5),
      O => \gy1[7]_i_3_n_0\
    );
\gy1[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy12(4),
      I1 => p13(4),
      I2 => p11(4),
      O => \gy1[7]_i_4_n_0\
    );
\gy1[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy12(3),
      I1 => p13(3),
      I2 => p11(3),
      O => \gy1[7]_i_5_n_0\
    );
\gy1[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gy1[7]_i_2_n_0\,
      I1 => p13(7),
      I2 => gy12(7),
      I3 => p11(7),
      O => \gy1[7]_i_6_n_0\
    );
\gy1[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy12(6),
      I1 => p13(6),
      I2 => p11(6),
      I3 => \gy1[7]_i_3_n_0\,
      O => \gy1[7]_i_7_n_0\
    );
\gy1[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy12(5),
      I1 => p13(5),
      I2 => p11(5),
      I3 => \gy1[7]_i_4_n_0\,
      O => \gy1[7]_i_8_n_0\
    );
\gy1[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy12(4),
      I1 => p13(4),
      I2 => p11(4),
      I3 => \gy1[7]_i_5_n_0\,
      O => \gy1[7]_i_9_n_0\
    );
\gy1[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => p11(7),
      I1 => p13(7),
      I2 => gy12(7),
      I3 => gy12(8),
      O => \gy1[9]_i_2_n_0\
    );
\gy1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy1_reg[3]_i_1_n_7\,
      Q => gy1(0)
    );
\gy1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy1_reg[3]_i_1_n_6\,
      Q => gy1(1)
    );
\gy1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy1_reg[3]_i_1_n_5\,
      Q => gy1(2)
    );
\gy1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy1_reg[3]_i_1_n_4\,
      Q => gy1(3)
    );
\gy1_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gy1_reg[3]_i_1_n_0\,
      CO(2) => \gy1_reg[3]_i_1_n_1\,
      CO(1) => \gy1_reg[3]_i_1_n_2\,
      CO(0) => \gy1_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gy1[3]_i_2_n_0\,
      DI(2) => \gy1[3]_i_3_n_0\,
      DI(1 downto 0) => p11(1 downto 0),
      O(3) => \gy1_reg[3]_i_1_n_4\,
      O(2) => \gy1_reg[3]_i_1_n_5\,
      O(1) => \gy1_reg[3]_i_1_n_6\,
      O(0) => \gy1_reg[3]_i_1_n_7\,
      S(3) => \gy1[3]_i_4_n_0\,
      S(2) => \gy1[3]_i_5_n_0\,
      S(1) => \gy1[3]_i_6_n_0\,
      S(0) => \gy1[3]_i_7_n_0\
    );
\gy1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy1_reg[7]_i_1_n_7\,
      Q => gy1(4)
    );
\gy1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy1_reg[7]_i_1_n_6\,
      Q => gy1(5)
    );
\gy1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy1_reg[7]_i_1_n_5\,
      Q => gy1(6)
    );
\gy1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy1_reg[7]_i_1_n_4\,
      Q => gy1(7)
    );
\gy1_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy1_reg[3]_i_1_n_0\,
      CO(3) => \gy1_reg[7]_i_1_n_0\,
      CO(2) => \gy1_reg[7]_i_1_n_1\,
      CO(1) => \gy1_reg[7]_i_1_n_2\,
      CO(0) => \gy1_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gy1[7]_i_2_n_0\,
      DI(2) => \gy1[7]_i_3_n_0\,
      DI(1) => \gy1[7]_i_4_n_0\,
      DI(0) => \gy1[7]_i_5_n_0\,
      O(3) => \gy1_reg[7]_i_1_n_4\,
      O(2) => \gy1_reg[7]_i_1_n_5\,
      O(1) => \gy1_reg[7]_i_1_n_6\,
      O(0) => \gy1_reg[7]_i_1_n_7\,
      S(3) => \gy1[7]_i_6_n_0\,
      S(2) => \gy1[7]_i_7_n_0\,
      S(1) => \gy1[7]_i_8_n_0\,
      S(0) => \gy1[7]_i_9_n_0\
    );
\gy1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy1_reg[9]_i_1_n_7\,
      Q => gy1(8)
    );
\gy1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \p31[7]_i_1_n_0\,
      D => \gy1_reg[9]_i_1_n_2\,
      Q => gy1(9)
    );
\gy1_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy1_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_gy1_reg[9]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gy1_reg[9]_i_1_n_2\,
      CO(0) => \NLW_gy1_reg[9]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => gy12(8),
      O(3 downto 1) => \NLW_gy1_reg[9]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gy1_reg[9]_i_1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \gy1[9]_i_2_n_0\
    );
\gy3[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy32(2),
      I1 => p33(2),
      I2 => p31(2),
      O => \gy3[3]_i_2_n_0\
    );
\gy3[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p31(2),
      I1 => gy32(2),
      I2 => p33(2),
      O => \gy3[3]_i_3_n_0\
    );
\gy3[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy32(3),
      I1 => p33(3),
      I2 => p31(3),
      I3 => \gy3[3]_i_2_n_0\,
      O => \gy3[3]_i_4_n_0\
    );
\gy3[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => gy32(2),
      I1 => p33(2),
      I2 => p31(2),
      I3 => p33(1),
      I4 => gy32(1),
      O => \gy3[3]_i_5_n_0\
    );
\gy3[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gy32(1),
      I1 => p33(1),
      I2 => p31(1),
      O => \gy3[3]_i_6_n_0\
    );
\gy3[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p31(0),
      I1 => p33(0),
      O => \gy3[3]_i_7_n_0\
    );
\gy3[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy32(6),
      I1 => p33(6),
      I2 => p31(6),
      O => \gy3[7]_i_2_n_0\
    );
\gy3[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy32(5),
      I1 => p33(5),
      I2 => p31(5),
      O => \gy3[7]_i_3_n_0\
    );
\gy3[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy32(4),
      I1 => p33(4),
      I2 => p31(4),
      O => \gy3[7]_i_4_n_0\
    );
\gy3[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => gy32(3),
      I1 => p33(3),
      I2 => p31(3),
      O => \gy3[7]_i_5_n_0\
    );
\gy3[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gy3[7]_i_2_n_0\,
      I1 => p33(7),
      I2 => gy32(7),
      I3 => p31(7),
      O => \gy3[7]_i_6_n_0\
    );
\gy3[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy32(6),
      I1 => p33(6),
      I2 => p31(6),
      I3 => \gy3[7]_i_3_n_0\,
      O => \gy3[7]_i_7_n_0\
    );
\gy3[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy32(5),
      I1 => p33(5),
      I2 => p31(5),
      I3 => \gy3[7]_i_4_n_0\,
      O => \gy3[7]_i_8_n_0\
    );
\gy3[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gy32(4),
      I1 => p33(4),
      I2 => p31(4),
      I3 => \gy3[7]_i_5_n_0\,
      O => \gy3[7]_i_9_n_0\
    );
\gy3[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => p31(7),
      I1 => p33(7),
      I2 => gy32(7),
      I3 => gy32(8),
      O => \gy3[9]_i_2_n_0\
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
\gy3_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gy3_reg[3]_i_1_n_0\,
      CO(2) => \gy3_reg[3]_i_1_n_1\,
      CO(1) => \gy3_reg[3]_i_1_n_2\,
      CO(0) => \gy3_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gy3[3]_i_2_n_0\,
      DI(2) => \gy3[3]_i_3_n_0\,
      DI(1 downto 0) => p31(1 downto 0),
      O(3 downto 0) => p_0_in(3 downto 0),
      S(3) => \gy3[3]_i_4_n_0\,
      S(2) => \gy3[3]_i_5_n_0\,
      S(1) => \gy3[3]_i_6_n_0\,
      S(0) => \gy3[3]_i_7_n_0\
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
\gy3_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy3_reg[3]_i_1_n_0\,
      CO(3) => \gy3_reg[7]_i_1_n_0\,
      CO(2) => \gy3_reg[7]_i_1_n_1\,
      CO(1) => \gy3_reg[7]_i_1_n_2\,
      CO(0) => \gy3_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gy3[7]_i_2_n_0\,
      DI(2) => \gy3[7]_i_3_n_0\,
      DI(1) => \gy3[7]_i_4_n_0\,
      DI(0) => \gy3[7]_i_5_n_0\,
      O(3 downto 0) => p_0_in(7 downto 4),
      S(3) => \gy3[7]_i_6_n_0\,
      S(2) => \gy3[7]_i_7_n_0\,
      S(1) => \gy3[7]_i_8_n_0\,
      S(0) => \gy3[7]_i_9_n_0\
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
\gy3_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy3_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_gy3_reg[9]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => p_0_in(9),
      CO(0) => \NLW_gy3_reg[9]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => gy32(8),
      O(3 downto 1) => \NLW_gy3_reg[9]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => p_0_in(8),
      S(3 downto 1) => B"001",
      S(0) => \gy3[9]_i_2_n_0\
    );
\gy[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(3),
      I1 => gy1(3),
      I2 => gy2,
      O => p_1_in(3)
    );
\gy[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(2),
      I1 => gy1(2),
      I2 => gy2,
      O => p_1_in(2)
    );
\gy[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(1),
      I1 => gy1(1),
      I2 => gy2,
      O => p_1_in(1)
    );
\gy[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(0),
      I1 => gy1(0),
      I2 => gy2,
      O => p_1_in(0)
    );
\gy[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(3),
      I1 => gy1(3),
      O => \gy[3]_i_6_n_0\
    );
\gy[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(2),
      I1 => gy1(2),
      O => \gy[3]_i_7_n_0\
    );
\gy[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(1),
      I1 => gy1(1),
      O => \gy[3]_i_8_n_0\
    );
\gy[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(0),
      I1 => gy1(0),
      O => \gy[3]_i_9_n_0\
    );
\gy[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(7),
      I1 => gy1(7),
      I2 => gy2,
      O => p_1_in(7)
    );
\gy[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(6),
      I1 => gy1(6),
      I2 => gy2,
      O => p_1_in(6)
    );
\gy[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(5),
      I1 => gy1(5),
      I2 => gy2,
      O => p_1_in(5)
    );
\gy[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(4),
      I1 => gy1(4),
      I2 => gy2,
      O => p_1_in(4)
    );
\gy[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(7),
      I1 => gy1(7),
      O => \gy[7]_i_6_n_0\
    );
\gy[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(6),
      I1 => gy1(6),
      O => \gy[7]_i_7_n_0\
    );
\gy[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(5),
      I1 => gy1(5),
      O => \gy[7]_i_8_n_0\
    );
\gy[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(4),
      I1 => gy1(4),
      O => \gy[7]_i_9_n_0\
    );
\gy[9]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gy1(4),
      I1 => gy3(4),
      I2 => gy3(5),
      I3 => gy1(5),
      O => \gy[9]_i_10_n_0\
    );
\gy[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gy1(2),
      I1 => gy3(2),
      I2 => gy3(3),
      I3 => gy1(3),
      O => \gy[9]_i_11_n_0\
    );
\gy[9]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gy1(0),
      I1 => gy3(0),
      I2 => gy3(1),
      I3 => gy1(1),
      O => \gy[9]_i_12_n_0\
    );
\gy[9]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gy1(6),
      I1 => gy3(6),
      I2 => gy1(7),
      I3 => gy3(7),
      O => \gy[9]_i_13_n_0\
    );
\gy[9]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gy1(4),
      I1 => gy3(4),
      I2 => gy1(5),
      I3 => gy3(5),
      O => \gy[9]_i_14_n_0\
    );
\gy[9]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gy1(2),
      I1 => gy3(2),
      I2 => gy1(3),
      I3 => gy3(3),
      O => \gy[9]_i_15_n_0\
    );
\gy[9]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gy1(0),
      I1 => gy3(0),
      I2 => gy1(1),
      I3 => gy3(1),
      O => \gy[9]_i_16_n_0\
    );
\gy[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => gy3(8),
      I1 => gy1(8),
      I2 => gy2,
      O => p_1_in(8)
    );
\gy[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(9),
      I1 => gy1(9),
      O => \gy[9]_i_3_n_0\
    );
\gy[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gy3(8),
      I1 => gy1(8),
      O => \gy[9]_i_4_n_0\
    );
\gy[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gy1(8),
      I1 => gy3(8),
      I2 => gy3(9),
      I3 => gy1(9),
      O => \gy[9]_i_7_n_0\
    );
\gy[9]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gy1(8),
      I1 => gy3(8),
      I2 => gy1(9),
      I3 => gy3(9),
      O => \gy[9]_i_8_n_0\
    );
\gy[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => gy1(6),
      I1 => gy3(6),
      I2 => gy3(7),
      I3 => gy1(7),
      O => \gy[9]_i_9_n_0\
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
\gy_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gy_reg[3]_i_1_n_0\,
      CO(2) => \gy_reg[3]_i_1_n_1\,
      CO(1) => \gy_reg[3]_i_1_n_2\,
      CO(0) => \gy_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => p_1_in(3 downto 0),
      O(3 downto 0) => gy0(3 downto 0),
      S(3) => \gy[3]_i_6_n_0\,
      S(2) => \gy[3]_i_7_n_0\,
      S(1) => \gy[3]_i_8_n_0\,
      S(0) => \gy[3]_i_9_n_0\
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
\gy_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy_reg[3]_i_1_n_0\,
      CO(3) => \gy_reg[7]_i_1_n_0\,
      CO(2) => \gy_reg[7]_i_1_n_1\,
      CO(1) => \gy_reg[7]_i_1_n_2\,
      CO(0) => \gy_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(7 downto 4),
      O(3 downto 0) => gy0(7 downto 4),
      S(3) => \gy[7]_i_6_n_0\,
      S(2) => \gy[7]_i_7_n_0\,
      S(1) => \gy[7]_i_8_n_0\,
      S(0) => \gy[7]_i_9_n_0\
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
\gy_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_gy_reg[9]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gy_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_1_in(8),
      O(3 downto 2) => \NLW_gy_reg[9]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => gy0(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \gy[9]_i_3_n_0\,
      S(0) => \gy[9]_i_4_n_0\
    );
\gy_reg[9]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \gy_reg[9]_i_6_n_0\,
      CO(3 downto 1) => \NLW_gy_reg[9]_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => gy2,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gy[9]_i_7_n_0\,
      O(3 downto 0) => \NLW_gy_reg[9]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gy[9]_i_8_n_0\
    );
\gy_reg[9]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gy_reg[9]_i_6_n_0\,
      CO(2) => \gy_reg[9]_i_6_n_1\,
      CO(1) => \gy_reg[9]_i_6_n_2\,
      CO(0) => \gy_reg[9]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \gy[9]_i_9_n_0\,
      DI(2) => \gy[9]_i_10_n_0\,
      DI(1) => \gy[9]_i_11_n_0\,
      DI(0) => \gy[9]_i_12_n_0\,
      O(3 downto 0) => \NLW_gy_reg[9]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \gy[9]_i_13_n_0\,
      S(2) => \gy[9]_i_14_n_0\,
      S(1) => \gy[9]_i_15_n_0\,
      S(0) => \gy[9]_i_16_n_0\
    );
\href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => pclk,
      D => hist_equ_href_o,
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
\href_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sobel_href,
      I1 => s_sobel_en,
      I2 => hist_equ_href_o,
      O => in_href
    );
line2buf: entity work.design_1_xil_vip_0_0_shift_register
     port map (
      D(7) => line2buf_n_0,
      D(6) => line2buf_n_1,
      D(5) => line2buf_n_2,
      D(4) => line2buf_n_3,
      D(3) => line2buf_n_4,
      D(2) => line2buf_n_5,
      D(1) => line2buf_n_6,
      D(0) => line2buf_n_7,
      hist_equ_href_o => hist_equ_href_o,
      \in_r_reg[7]_0\(7 downto 0) => \in_r_reg[7]\(7 downto 0),
      mem_reg(7 downto 0) => tap1x(7 downto 0),
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
      D => hist_equ_vsync_o,
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
\vsync_reg_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sobel_vsync,
      I1 => s_sobel_en,
      I2 => hist_equ_vsync_o,
      O => in_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_vip_top is
  port (
    s_hist_equ_en_reg : out STD_LOGIC;
    s_module_reset_reg : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    out_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    out_href : out STD_LOGIC;
    out_pclk : out STD_LOGIC;
    pclk : in STD_LOGIC;
    \hist_sum_data_3_reg[0]\ : in STD_LOGIC;
    s_sobel_en : in STD_LOGIC;
    \ZOUT_reg[19]\ : in STD_LOGIC;
    s_module_reset : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_yuv2rgb_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    hist_sum_data_20 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_34 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_62 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_40 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_72 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pix_cnt_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    href_reg_reg_i_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    href_reg_reg_i_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_crop_en : in STD_LOGIC;
    s_dscale_en : in STD_LOGIC;
    in_href : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    in_yuv : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_hist_equ_en : in STD_LOGIC;
    \line_cnt_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_xil_vip_0_0_vip_top;

architecture STRUCTURE of design_1_xil_vip_0_0_vip_top is
  signal crop_g_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal crop_href_o : STD_LOGIC;
  signal crop_r_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hist_equ_href_o : STD_LOGIC;
  signal hist_equ_u : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hist_equ_v : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hist_equ_vsync_o : STD_LOGIC;
  signal hist_equ_y_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \hist_ram_data/cur_ram02_out\ : STD_LOGIC;
  signal in_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal in_data_12 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal in_data_5 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal in_data_9 : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal in_href_0 : STD_LOGIC;
  signal in_href_11 : STD_LOGIC;
  signal in_href_4 : STD_LOGIC;
  signal in_href_8 : STD_LOGIC;
  signal in_href_o : STD_LOGIC;
  signal in_u_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_vsync_10 : STD_LOGIC;
  signal in_vsync_3 : STD_LOGIC;
  signal in_vsync_7 : STD_LOGIC;
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
  signal mux_hist_equ_i0_n_10 : STD_LOGIC;
  signal mux_hist_equ_i0_n_11 : STD_LOGIC;
  signal mux_hist_equ_i0_n_12 : STD_LOGIC;
  signal mux_hist_equ_i0_n_13 : STD_LOGIC;
  signal mux_hist_equ_i0_n_14 : STD_LOGIC;
  signal mux_hist_equ_i0_n_15 : STD_LOGIC;
  signal mux_hist_equ_i0_n_16 : STD_LOGIC;
  signal mux_hist_equ_i0_n_17 : STD_LOGIC;
  signal mux_hist_equ_i0_n_2 : STD_LOGIC;
  signal mux_hist_equ_i0_n_3 : STD_LOGIC;
  signal mux_hist_equ_i0_n_4 : STD_LOGIC;
  signal mux_hist_equ_i0_n_5 : STD_LOGIC;
  signal mux_hist_equ_i0_n_6 : STD_LOGIC;
  signal mux_hist_equ_i0_n_7 : STD_LOGIC;
  signal mux_hist_equ_i0_n_8 : STD_LOGIC;
  signal mux_hist_equ_i0_n_9 : STD_LOGIC;
  signal mux_in_n_34 : STD_LOGIC;
  signal mux_in_n_35 : STD_LOGIC;
  signal mux_in_n_36 : STD_LOGIC;
  signal mux_in_n_37 : STD_LOGIC;
  signal mux_in_n_38 : STD_LOGIC;
  signal mux_in_n_39 : STD_LOGIC;
  signal mux_in_n_40 : STD_LOGIC;
  signal mux_in_n_41 : STD_LOGIC;
  signal mux_sobel_i0_n_18 : STD_LOGIC;
  signal mux_sobel_i0_n_19 : STD_LOGIC;
  signal mux_sobel_i0_n_20 : STD_LOGIC;
  signal mux_sobel_i0_n_21 : STD_LOGIC;
  signal mux_sobel_i0_n_22 : STD_LOGIC;
  signal mux_sobel_i0_n_23 : STD_LOGIC;
  signal mux_sobel_i0_n_24 : STD_LOGIC;
  signal mux_sobel_i0_n_25 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_1 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_21 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_22 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_23 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_24 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_25 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_26 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_27 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_28 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_3 : STD_LOGIC;
  signal mux_yuv2rgb_i0_n_4 : STD_LOGIC;
  signal \^out_vsync\ : STD_LOGIC;
  signal prev_href : STD_LOGIC;
  signal prev_href_1 : STD_LOGIC;
  signal prev_vsync : STD_LOGIC;
  signal prev_vsync_2 : STD_LOGIC;
  signal prev_vsync_6 : STD_LOGIC;
  signal sobel_href_o : STD_LOGIC;
  signal sobel_u_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sobel_vsync_o : STD_LOGIC;
  signal sobel_y_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal yuv2rgb_g_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal yuv2rgb_href_o : STD_LOGIC;
  signal yuv2rgb_r_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal yuv2rgb_vsync_o : STD_LOGIC;
begin
  out_vsync <= \^out_vsync\;
crop_i0: entity work.design_1_xil_vip_0_0_vip_crop
     port map (
      D(23 downto 0) => in_data(23 downto 0),
      DI(0) => mux_yuv2rgb_i0_n_4,
      O(3 downto 0) => O(3 downto 0),
      href_reg_reg_i_11_0(3 downto 0) => href_reg_reg_i_11(3 downto 0),
      href_reg_reg_i_34_0(3 downto 0) => href_reg_reg_i_34(3 downto 0),
      href_reg_reg_i_3_0(3 downto 0) => href_reg_reg_i_3(3 downto 0),
      href_reg_reg_i_40_0(3 downto 0) => href_reg_reg_i_40(3 downto 0),
      href_reg_reg_i_4_0(15 downto 0) => href_reg_reg_i_4(15 downto 0),
      href_reg_reg_i_5_0(15 downto 0) => href_reg_reg_i_5(15 downto 0),
      href_reg_reg_i_62_0(3 downto 0) => href_reg_reg_i_62(3 downto 0),
      href_reg_reg_i_6_0(3 downto 0) => href_reg_reg_i_6(3 downto 0),
      href_reg_reg_i_72_0(3 downto 0) => href_reg_reg_i_72(3 downto 0),
      in_href => in_href_0,
      \line_cnt_reg[15]_0\ => mux_yuv2rgb_i0_n_3,
      out_data(23 downto 16) => yuv2rgb_r_o(7 downto 0),
      out_data(15 downto 8) => yuv2rgb_g_o(7 downto 0),
      out_data(7) => mux_yuv2rgb_i0_n_21,
      out_data(6) => mux_yuv2rgb_i0_n_22,
      out_data(5) => mux_yuv2rgb_i0_n_23,
      out_data(4) => mux_yuv2rgb_i0_n_24,
      out_data(3) => mux_yuv2rgb_i0_n_25,
      out_data(2) => mux_yuv2rgb_i0_n_26,
      out_data(1) => mux_yuv2rgb_i0_n_27,
      out_data(0) => mux_yuv2rgb_i0_n_28,
      out_href => yuv2rgb_href_o,
      out_vsync => yuv2rgb_vsync_o,
      pclk => pclk,
      prev_href => prev_href,
      prev_vsync => prev_vsync,
      rst_n => rst_n,
      s_crop_en => s_crop_en,
      s_module_reset => s_module_reset
    );
dscale_i0: entity work.design_1_xil_vip_0_0_vip_dscale
     port map (
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
      \line_cnt_reg[0]_0\(3 downto 0) => \line_cnt_reg[0]\(3 downto 0),
      out_href => out_href,
      out_pclk => out_pclk,
      out_rgb(23 downto 0) => out_rgb(23 downto 0),
      pclk => pclk,
      \pix_cnt_reg[1]_0\(3 downto 0) => \pix_cnt_reg[1]\(3 downto 0),
      prev_href => prev_href_1,
      prev_vsync => prev_vsync_2,
      prev_vsync_reg_0 => \^out_vsync\,
      rst_n => rst_n,
      s_dscale_en => s_dscale_en,
      s_module_reset => s_module_reset
    );
hist_equ_i0: entity work.design_1_xil_vip_0_0_vip_hist_equ
     port map (
      D(7 downto 0) => in_data_5(23 downto 16),
      Q(7 downto 0) => Q(7 downto 0),
      cur_ram02_out => \hist_ram_data/cur_ram02_out\,
      hist_sum_data_20_0(7 downto 0) => hist_sum_data_20(7 downto 0),
      \hist_sum_data_3_reg[0]_0\ => \hist_sum_data_3_reg[0]\,
      in_href => in_href_4,
      in_vsync => in_vsync_3,
      out_data(7 downto 0) => in_y_o(7 downto 0),
      out_href => in_href_o,
      out_vsync => in_vsync_o,
      pclk => pclk,
      prev_vsync => prev_vsync_6,
      rst_n => rst_n,
      s_hist_equ_en => s_hist_equ_en,
      s_hist_equ_en_reg => s_hist_equ_en_reg,
      s_module_reset => s_module_reset
    );
\hist_equ_u_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => in_u_o(0),
      Q => hist_equ_u(0),
      R => '0'
    );
\hist_equ_u_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => in_u_o(1),
      Q => hist_equ_u(1),
      R => '0'
    );
\hist_equ_u_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => in_u_o(2),
      Q => hist_equ_u(2),
      R => '0'
    );
\hist_equ_u_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => in_u_o(3),
      Q => hist_equ_u(3),
      R => '0'
    );
\hist_equ_u_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => in_u_o(4),
      Q => hist_equ_u(4),
      R => '0'
    );
\hist_equ_u_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => in_u_o(5),
      Q => hist_equ_u(5),
      R => '0'
    );
\hist_equ_u_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => in_u_o(6),
      Q => hist_equ_u(6),
      R => '0'
    );
\hist_equ_u_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => in_u_o(7),
      Q => hist_equ_u(7),
      R => '0'
    );
\hist_equ_v_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => mux_in_n_41,
      Q => hist_equ_v(0),
      R => '0'
    );
\hist_equ_v_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => mux_in_n_40,
      Q => hist_equ_v(1),
      R => '0'
    );
\hist_equ_v_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => mux_in_n_39,
      Q => hist_equ_v(2),
      R => '0'
    );
\hist_equ_v_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => mux_in_n_38,
      Q => hist_equ_v(3),
      R => '0'
    );
\hist_equ_v_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => mux_in_n_37,
      Q => hist_equ_v(4),
      R => '0'
    );
\hist_equ_v_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => mux_in_n_36,
      Q => hist_equ_v(5),
      R => '0'
    );
\hist_equ_v_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => mux_in_n_35,
      Q => hist_equ_v(6),
      R => '0'
    );
\hist_equ_v_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => mux_in_n_34,
      Q => hist_equ_v(7),
      R => '0'
    );
mux_crop_i0: entity work.design_1_xil_vip_0_0_vid_mux
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
      \data_reg_reg[0]_0\ => mux_yuv2rgb_i0_n_1,
      in_href => in_href_0,
      out_vsync => \^out_vsync\,
      pclk => pclk,
      prev_href => prev_href_1,
      prev_vsync => prev_vsync_2,
      vsync_reg_reg_0 => yuv2rgb_vsync_o
    );
mux_hist_equ_i0: entity work.design_1_xil_vip_0_0_vid_mux_0
     port map (
      D(15) => mux_hist_equ_i0_n_2,
      D(14) => mux_hist_equ_i0_n_3,
      D(13) => mux_hist_equ_i0_n_4,
      D(12) => mux_hist_equ_i0_n_5,
      D(11) => mux_hist_equ_i0_n_6,
      D(10) => mux_hist_equ_i0_n_7,
      D(9) => mux_hist_equ_i0_n_8,
      D(8) => mux_hist_equ_i0_n_9,
      D(7) => mux_hist_equ_i0_n_10,
      D(6) => mux_hist_equ_i0_n_11,
      D(5) => mux_hist_equ_i0_n_12,
      D(4) => mux_hist_equ_i0_n_13,
      D(3) => mux_hist_equ_i0_n_14,
      D(2) => mux_hist_equ_i0_n_15,
      D(1) => mux_hist_equ_i0_n_16,
      D(0) => mux_hist_equ_i0_n_17,
      Q(7 downto 0) => hist_equ_y_o(7 downto 0),
      \data_reg_reg[0]_0\ => mux_yuv2rgb_i0_n_1,
      \data_reg_reg[23]_0\(23 downto 0) => in_data_5(23 downto 0),
      hist_equ_href_o => hist_equ_href_o,
      hist_equ_vsync_o => hist_equ_vsync_o,
      in_href => in_href_4,
      in_vsync => in_vsync_3,
      pclk => pclk,
      s_sobel_en => s_sobel_en
    );
mux_in: entity work.design_1_xil_vip_0_0_vid_mux_1
     port map (
      Q(7 downto 0) => hist_equ_v(7 downto 0),
      cur_ram02_out => \hist_ram_data/cur_ram02_out\,
      \data_reg_reg[15]_0\(7 downto 0) => hist_equ_u(7 downto 0),
      \data_reg_reg[23]_0\(23 downto 16) => in_y_o(7 downto 0),
      \data_reg_reg[23]_0\(15 downto 8) => in_u_o(7 downto 0),
      \data_reg_reg[23]_0\(7) => mux_in_n_34,
      \data_reg_reg[23]_0\(6) => mux_in_n_35,
      \data_reg_reg[23]_0\(5) => mux_in_n_36,
      \data_reg_reg[23]_0\(4) => mux_in_n_37,
      \data_reg_reg[23]_0\(3) => mux_in_n_38,
      \data_reg_reg[23]_0\(2) => mux_in_n_39,
      \data_reg_reg[23]_0\(1) => mux_in_n_40,
      \data_reg_reg[23]_0\(0) => mux_in_n_41,
      \hist_equ_u_r_reg[7]\(15 downto 0) => in_data_5(15 downto 0),
      href_reg_reg_0 => mux_yuv2rgb_i0_n_1,
      in_href => in_href,
      in_vsync => in_vsync,
      in_yuv(23 downto 0) => in_yuv(23 downto 0),
      out_href => in_href_o,
      out_vsync => in_vsync_o,
      pclk => pclk,
      prev_vsync => prev_vsync_6,
      s_hist_equ_en => s_hist_equ_en
    );
mux_sobel_i0: entity work.design_1_xil_vip_0_0_vid_mux_2
     port map (
      D(23 downto 16) => in_data_9(23 downto 16),
      D(15) => mux_hist_equ_i0_n_2,
      D(14) => mux_hist_equ_i0_n_3,
      D(13) => mux_hist_equ_i0_n_4,
      D(12) => mux_hist_equ_i0_n_5,
      D(11) => mux_hist_equ_i0_n_6,
      D(10) => mux_hist_equ_i0_n_7,
      D(9) => mux_hist_equ_i0_n_8,
      D(8) => mux_hist_equ_i0_n_9,
      D(7) => mux_hist_equ_i0_n_10,
      D(6) => mux_hist_equ_i0_n_11,
      D(5) => mux_hist_equ_i0_n_12,
      D(4) => mux_hist_equ_i0_n_13,
      D(3) => mux_hist_equ_i0_n_14,
      D(2) => mux_hist_equ_i0_n_15,
      D(1) => mux_hist_equ_i0_n_16,
      D(0) => mux_hist_equ_i0_n_17,
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
      \data_reg_reg[0]_0\ => mux_yuv2rgb_i0_n_1,
      in_href => in_href_8,
      in_vsync => in_vsync_7,
      out_href => sobel_href_o,
      out_vsync => sobel_vsync_o,
      pclk => pclk
    );
mux_yuv2rgb_i0: entity work.design_1_xil_vip_0_0_vid_mux_3
     port map (
      D(23 downto 0) => in_data_12(23 downto 0),
      DI(0) => mux_yuv2rgb_i0_n_4,
      Q(23 downto 16) => yuv2rgb_r_o(7 downto 0),
      Q(15 downto 8) => yuv2rgb_g_o(7 downto 0),
      Q(7) => mux_yuv2rgb_i0_n_21,
      Q(6) => mux_yuv2rgb_i0_n_22,
      Q(5) => mux_yuv2rgb_i0_n_23,
      Q(4) => mux_yuv2rgb_i0_n_24,
      Q(3) => mux_yuv2rgb_i0_n_25,
      Q(2) => mux_yuv2rgb_i0_n_26,
      Q(1) => mux_yuv2rgb_i0_n_27,
      Q(0) => mux_yuv2rgb_i0_n_28,
      href_reg_reg_0 => mux_yuv2rgb_i0_n_3,
      in_href => in_href_11,
      in_vsync => in_vsync_10,
      out_href => yuv2rgb_href_o,
      pclk => pclk,
      prev_href => prev_href,
      prev_vsync => prev_vsync,
      rst_n => rst_n,
      s_module_reset => s_module_reset,
      s_module_reset_reg => mux_yuv2rgb_i0_n_1,
      vsync_reg_reg_0 => yuv2rgb_vsync_o
    );
sobel_i0: entity work.design_1_xil_vip_0_0_vip_sobel
     port map (
      D(7 downto 0) => in_data_9(23 downto 16),
      hist_equ_href_o => hist_equ_href_o,
      hist_equ_vsync_o => hist_equ_vsync_o,
      in_href => in_href_8,
      \in_r_reg[7]\(7 downto 0) => hist_equ_y_o(7 downto 0),
      in_vsync => in_vsync_7,
      pclk => pclk,
      rst_n => rst_n,
      s_module_reset => s_module_reset,
      s_sobel_en => s_sobel_en
    );
yuv2rgb_i0: entity work.design_1_xil_vip_0_0_vip_yuv2rgb
     port map (
      D(23 downto 0) => in_data_12(23 downto 0),
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
      in_href => in_href_11,
      in_vsync => in_vsync_10,
      out_href => sobel_href_o,
      out_vsync => sobel_vsync_o,
      pclk => pclk,
      rst_n => rst_n,
      s_module_reset => s_module_reset,
      s_module_reset_reg => s_module_reset_reg,
      s_yuv2rgb_en => s_yuv2rgb_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_xil_vip_v1_0_S00_AXI is
  port (
    s_hist_equ_en_reg_0 : out STD_LOGIC;
    s_module_reset_reg_0 : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    out_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    out_href : out STD_LOGIC;
    out_pclk : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    irq : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    pclk : in STD_LOGIC;
    \hist_sum_data_3_reg[0]\ : in STD_LOGIC;
    \ZOUT_reg[19]\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    in_href : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    in_yuv : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end design_1_xil_vip_0_0_xil_vip_v1_0_S00_AXI;

architecture STRUCTURE of design_1_xil_vip_0_0_xil_vip_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal crop_h : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal crop_h_6 : STD_LOGIC;
  signal crop_w : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal crop_w_5 : STD_LOGIC;
  signal crop_x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal crop_x_3 : STD_LOGIC;
  signal crop_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal crop_y_4 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dscale_h : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dscale_h_7 : STD_LOGIC;
  signal dscale_v : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dscale_v_8 : STD_LOGIC;
  signal equ_max : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal equ_max_2 : STD_LOGIC;
  signal equ_min : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal equ_min_1 : STD_LOGIC;
  signal frame_start : STD_LOGIC;
  signal hist_equ_en : STD_LOGIC;
  signal href_reg_i_101_n_0 : STD_LOGIC;
  signal href_reg_i_102_n_0 : STD_LOGIC;
  signal href_reg_i_103_n_0 : STD_LOGIC;
  signal href_reg_i_104_n_0 : STD_LOGIC;
  signal href_reg_i_106_n_0 : STD_LOGIC;
  signal href_reg_i_107_n_0 : STD_LOGIC;
  signal href_reg_i_108_n_0 : STD_LOGIC;
  signal href_reg_i_109_n_0 : STD_LOGIC;
  signal href_reg_i_110_n_0 : STD_LOGIC;
  signal href_reg_i_111_n_0 : STD_LOGIC;
  signal href_reg_i_112_n_0 : STD_LOGIC;
  signal href_reg_i_113_n_0 : STD_LOGIC;
  signal href_reg_i_114_n_0 : STD_LOGIC;
  signal href_reg_i_115_n_0 : STD_LOGIC;
  signal href_reg_i_116_n_0 : STD_LOGIC;
  signal href_reg_i_117_n_0 : STD_LOGIC;
  signal href_reg_i_68_n_0 : STD_LOGIC;
  signal href_reg_i_69_n_0 : STD_LOGIC;
  signal href_reg_i_70_n_0 : STD_LOGIC;
  signal href_reg_i_71_n_0 : STD_LOGIC;
  signal href_reg_i_78_n_0 : STD_LOGIC;
  signal href_reg_i_79_n_0 : STD_LOGIC;
  signal href_reg_i_80_n_0 : STD_LOGIC;
  signal href_reg_i_81_n_0 : STD_LOGIC;
  signal href_reg_i_87_n_0 : STD_LOGIC;
  signal href_reg_i_88_n_0 : STD_LOGIC;
  signal href_reg_i_89_n_0 : STD_LOGIC;
  signal href_reg_i_90_n_0 : STD_LOGIC;
  signal href_reg_i_96_n_0 : STD_LOGIC;
  signal href_reg_i_97_n_0 : STD_LOGIC;
  signal href_reg_i_98_n_0 : STD_LOGIC;
  signal href_reg_i_99_n_0 : STD_LOGIC;
  signal href_reg_reg_i_100_n_0 : STD_LOGIC;
  signal href_reg_reg_i_100_n_1 : STD_LOGIC;
  signal href_reg_reg_i_100_n_2 : STD_LOGIC;
  signal href_reg_reg_i_100_n_3 : STD_LOGIC;
  signal href_reg_reg_i_100_n_4 : STD_LOGIC;
  signal href_reg_reg_i_100_n_5 : STD_LOGIC;
  signal href_reg_reg_i_100_n_6 : STD_LOGIC;
  signal href_reg_reg_i_100_n_7 : STD_LOGIC;
  signal href_reg_reg_i_105_n_0 : STD_LOGIC;
  signal href_reg_reg_i_105_n_1 : STD_LOGIC;
  signal href_reg_reg_i_105_n_2 : STD_LOGIC;
  signal href_reg_reg_i_105_n_3 : STD_LOGIC;
  signal href_reg_reg_i_105_n_4 : STD_LOGIC;
  signal href_reg_reg_i_105_n_5 : STD_LOGIC;
  signal href_reg_reg_i_105_n_6 : STD_LOGIC;
  signal href_reg_reg_i_105_n_7 : STD_LOGIC;
  signal href_reg_reg_i_39_n_1 : STD_LOGIC;
  signal href_reg_reg_i_39_n_2 : STD_LOGIC;
  signal href_reg_reg_i_39_n_3 : STD_LOGIC;
  signal href_reg_reg_i_39_n_4 : STD_LOGIC;
  signal href_reg_reg_i_39_n_5 : STD_LOGIC;
  signal href_reg_reg_i_39_n_6 : STD_LOGIC;
  signal href_reg_reg_i_39_n_7 : STD_LOGIC;
  signal href_reg_reg_i_45_n_1 : STD_LOGIC;
  signal href_reg_reg_i_45_n_2 : STD_LOGIC;
  signal href_reg_reg_i_45_n_3 : STD_LOGIC;
  signal href_reg_reg_i_45_n_4 : STD_LOGIC;
  signal href_reg_reg_i_45_n_5 : STD_LOGIC;
  signal href_reg_reg_i_45_n_6 : STD_LOGIC;
  signal href_reg_reg_i_45_n_7 : STD_LOGIC;
  signal href_reg_reg_i_67_n_0 : STD_LOGIC;
  signal href_reg_reg_i_67_n_1 : STD_LOGIC;
  signal href_reg_reg_i_67_n_2 : STD_LOGIC;
  signal href_reg_reg_i_67_n_3 : STD_LOGIC;
  signal href_reg_reg_i_67_n_4 : STD_LOGIC;
  signal href_reg_reg_i_67_n_5 : STD_LOGIC;
  signal href_reg_reg_i_67_n_6 : STD_LOGIC;
  signal href_reg_reg_i_67_n_7 : STD_LOGIC;
  signal href_reg_reg_i_77_n_0 : STD_LOGIC;
  signal href_reg_reg_i_77_n_1 : STD_LOGIC;
  signal href_reg_reg_i_77_n_2 : STD_LOGIC;
  signal href_reg_reg_i_77_n_3 : STD_LOGIC;
  signal href_reg_reg_i_77_n_4 : STD_LOGIC;
  signal href_reg_reg_i_77_n_5 : STD_LOGIC;
  signal href_reg_reg_i_77_n_6 : STD_LOGIC;
  signal href_reg_reg_i_77_n_7 : STD_LOGIC;
  signal href_reg_reg_i_86_n_0 : STD_LOGIC;
  signal href_reg_reg_i_86_n_1 : STD_LOGIC;
  signal href_reg_reg_i_86_n_2 : STD_LOGIC;
  signal href_reg_reg_i_86_n_3 : STD_LOGIC;
  signal href_reg_reg_i_86_n_4 : STD_LOGIC;
  signal href_reg_reg_i_86_n_5 : STD_LOGIC;
  signal href_reg_reg_i_86_n_6 : STD_LOGIC;
  signal href_reg_reg_i_86_n_7 : STD_LOGIC;
  signal href_reg_reg_i_95_n_0 : STD_LOGIC;
  signal href_reg_reg_i_95_n_1 : STD_LOGIC;
  signal href_reg_reg_i_95_n_2 : STD_LOGIC;
  signal href_reg_reg_i_95_n_3 : STD_LOGIC;
  signal href_reg_reg_i_95_n_4 : STD_LOGIC;
  signal href_reg_reg_i_95_n_5 : STD_LOGIC;
  signal href_reg_reg_i_95_n_6 : STD_LOGIC;
  signal href_reg_reg_i_95_n_7 : STD_LOGIC;
  signal \int_frame_done__2\ : STD_LOGIC;
  signal int_frame_done_i_1_n_0 : STD_LOGIC;
  signal int_frame_done_reg_n_0 : STD_LOGIC;
  signal int_mask_frame_done_i_1_n_0 : STD_LOGIC;
  signal int_mask_frame_done_i_2_n_0 : STD_LOGIC;
  signal int_mask_frame_done_reg_n_0 : STD_LOGIC;
  signal module_reset : STD_LOGIC;
  signal module_reset_i_1_n_0 : STD_LOGIC;
  signal module_reset_i_2_n_0 : STD_LOGIC;
  signal \^out_vsync\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal prev_vsync : STD_LOGIC;
  signal prev_vsync_r : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal s_crop_en : STD_LOGIC;
  signal s_crop_h : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_crop_w : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_crop_x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_crop_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_dscale_en : STD_LOGIC;
  signal s_dscale_h : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_dscale_v : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_equ_max : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_equ_min : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_hist_equ_en : STD_LOGIC;
  signal s_module_reset : STD_LOGIC;
  signal s_sobel_en : STD_LOGIC;
  signal s_yuv2rgb_en : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal NLW_href_reg_reg_i_39_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_href_reg_reg_i_45_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \axi_rdata[14]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_3\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of int_frame_done_i_2 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of int_frame_done_i_3 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of int_mask_frame_done_i_2 : label is "soft_lutpair92";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
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
      S => p_0_in
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
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in_0(0),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in_0(1),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => p_0_in_0(2),
      R => p_0_in
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => p_0_in_0(3),
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
      R => p_0_in
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
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACF0AC0"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \axi_rdata[0]_i_4_n_0\,
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(0),
      I1 => crop_w(0),
      I2 => sel0(1),
      I3 => crop_y(0),
      I4 => sel0(0),
      I5 => crop_x(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => int_mask_frame_done_reg_n_0,
      I1 => int_frame_done_reg_n_0,
      I2 => sel0(1),
      I3 => dscale_v(0),
      I4 => sel0(0),
      I5 => dscale_h(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => equ_max(0),
      I1 => equ_min(0),
      I2 => sel0(1),
      I3 => data1(0),
      I4 => sel0(0),
      I5 => module_reset,
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(3),
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(10),
      I1 => crop_w(10),
      I2 => sel0(1),
      I3 => crop_y(10),
      I4 => sel0(0),
      I5 => crop_x(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(3),
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(11),
      I1 => crop_w(11),
      I2 => sel0(1),
      I3 => crop_y(11),
      I4 => sel0(0),
      I5 => crop_x(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(3),
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(12),
      I1 => crop_w(12),
      I2 => sel0(1),
      I3 => crop_y(12),
      I4 => sel0(0),
      I5 => crop_x(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(3),
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(13),
      I1 => crop_w(13),
      I2 => sel0(1),
      I3 => crop_y(13),
      I4 => sel0(0),
      I5 => crop_x(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(3),
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(14),
      I1 => crop_w(14),
      I2 => sel0(1),
      I3 => crop_y(14),
      I4 => sel0(0),
      I5 => crop_x(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(3),
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(15),
      I1 => crop_w(15),
      I2 => sel0(1),
      I3 => crop_y(15),
      I4 => sel0(0),
      I5 => crop_x(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCEEFC"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      I2 => \axi_rdata[1]_i_4_n_0\,
      I3 => sel0(2),
      I4 => sel0(3),
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(1),
      I1 => crop_w(1),
      I2 => sel0(1),
      I3 => crop_y(1),
      I4 => sel0(0),
      I5 => crop_x(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E20000"
    )
        port map (
      I0 => dscale_h(1),
      I1 => sel0(0),
      I2 => dscale_v(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => sel0(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => equ_max(1),
      I1 => equ_min(1),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data1(1),
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00CA"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \axi_rdata[2]_i_4_n_0\,
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => equ_max(2),
      I1 => equ_min(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data1(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(2),
      I1 => crop_w(2),
      I2 => sel0(1),
      I3 => crop_y(2),
      I4 => sel0(0),
      I5 => crop_x(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E20000"
    )
        port map (
      I0 => dscale_h(2),
      I1 => sel0(0),
      I2 => dscale_v(2),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => sel0(1),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCEEFC"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata[3]_i_3_n_0\,
      I2 => \axi_rdata[3]_i_4_n_0\,
      I3 => sel0(2),
      I4 => sel0(3),
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(3),
      I1 => crop_w(3),
      I2 => sel0(1),
      I3 => crop_y(3),
      I4 => sel0(0),
      I5 => crop_x(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E20000"
    )
        port map (
      I0 => dscale_h(3),
      I1 => sel0(0),
      I2 => dscale_v(3),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => sel0(1),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => equ_max(3),
      I1 => equ_min(3),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data1(3),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => \axi_rdata[4]_i_3_n_0\,
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => equ_max(4),
      I1 => equ_min(4),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data1(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(4),
      I1 => crop_w(4),
      I2 => sel0(1),
      I3 => crop_y(4),
      I4 => sel0(0),
      I5 => crop_x(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => equ_max(5),
      I2 => sel0(0),
      I3 => equ_min(5),
      I4 => \axi_rdata[7]_i_3_n_0\,
      I5 => \axi_rdata[5]_i_2_n_0\,
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(5),
      I1 => crop_w(5),
      I2 => sel0(1),
      I3 => crop_y(5),
      I4 => sel0(0),
      I5 => crop_x(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => equ_max(6),
      I2 => sel0(0),
      I3 => equ_min(6),
      I4 => \axi_rdata[7]_i_3_n_0\,
      I5 => \axi_rdata[6]_i_2_n_0\,
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(6),
      I1 => crop_w(6),
      I2 => sel0(1),
      I3 => crop_y(6),
      I4 => sel0(0),
      I5 => crop_x(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => equ_max(7),
      I2 => sel0(0),
      I3 => equ_min(7),
      I4 => \axi_rdata[7]_i_3_n_0\,
      I5 => \axi_rdata[7]_i_4_n_0\,
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(1),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(7),
      I1 => crop_w(7),
      I2 => sel0(1),
      I3 => crop_y(7),
      I4 => sel0(0),
      I5 => crop_x(7),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(3),
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(8),
      I1 => crop_w(8),
      I2 => sel0(1),
      I3 => crop_y(8),
      I4 => sel0(0),
      I5 => crop_x(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(3),
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crop_h(9),
      I1 => crop_w(9),
      I2 => sel0(1),
      I3 => crop_y(9),
      I4 => sel0(0),
      I5 => crop_x(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => p_0_in
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
      R => p_0_in
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
\crop_h[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(3),
      I4 => p_0_in_0(2),
      O => crop_h_6
    );
\crop_h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(0),
      Q => crop_h(0),
      R => p_0_in
    );
\crop_h_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(10),
      Q => crop_h(10),
      S => p_0_in
    );
\crop_h_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(11),
      Q => crop_h(11),
      R => p_0_in
    );
\crop_h_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(12),
      Q => crop_h(12),
      R => p_0_in
    );
\crop_h_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(13),
      Q => crop_h(13),
      R => p_0_in
    );
\crop_h_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(14),
      Q => crop_h(14),
      R => p_0_in
    );
\crop_h_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(15),
      Q => crop_h(15),
      R => p_0_in
    );
\crop_h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(1),
      Q => crop_h(1),
      R => p_0_in
    );
\crop_h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(2),
      Q => crop_h(2),
      R => p_0_in
    );
\crop_h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(3),
      Q => crop_h(3),
      R => p_0_in
    );
\crop_h_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(4),
      Q => crop_h(4),
      R => p_0_in
    );
\crop_h_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(5),
      Q => crop_h(5),
      R => p_0_in
    );
\crop_h_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(6),
      Q => crop_h(6),
      R => p_0_in
    );
\crop_h_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(7),
      Q => crop_h(7),
      S => p_0_in
    );
\crop_h_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(8),
      Q => crop_h(8),
      S => p_0_in
    );
\crop_h_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_h_6,
      D => s00_axi_wdata(9),
      Q => crop_h(9),
      S => p_0_in
    );
\crop_w[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(3),
      O => crop_w_5
    );
\crop_w_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(0),
      Q => crop_w(0),
      R => p_0_in
    );
\crop_w_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(10),
      Q => crop_w(10),
      R => p_0_in
    );
\crop_w_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(11),
      Q => crop_w(11),
      S => p_0_in
    );
\crop_w_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(12),
      Q => crop_w(12),
      R => p_0_in
    );
\crop_w_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(13),
      Q => crop_w(13),
      R => p_0_in
    );
\crop_w_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(14),
      Q => crop_w(14),
      R => p_0_in
    );
\crop_w_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(15),
      Q => crop_w(15),
      R => p_0_in
    );
\crop_w_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(1),
      Q => crop_w(1),
      R => p_0_in
    );
\crop_w_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(2),
      Q => crop_w(2),
      R => p_0_in
    );
\crop_w_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(3),
      Q => crop_w(3),
      R => p_0_in
    );
\crop_w_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(4),
      Q => crop_w(4),
      R => p_0_in
    );
\crop_w_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(5),
      Q => crop_w(5),
      R => p_0_in
    );
\crop_w_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(6),
      Q => crop_w(6),
      R => p_0_in
    );
\crop_w_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(7),
      Q => crop_w(7),
      R => p_0_in
    );
\crop_w_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(8),
      Q => crop_w(8),
      R => p_0_in
    );
\crop_w_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => crop_w_5,
      D => s00_axi_wdata(9),
      Q => crop_w(9),
      S => p_0_in
    );
\crop_x[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(3),
      O => crop_x_3
    );
\crop_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(0),
      Q => crop_x(0),
      R => p_0_in
    );
\crop_x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(10),
      Q => crop_x(10),
      R => p_0_in
    );
\crop_x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(11),
      Q => crop_x(11),
      R => p_0_in
    );
\crop_x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(12),
      Q => crop_x(12),
      R => p_0_in
    );
\crop_x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(13),
      Q => crop_x(13),
      R => p_0_in
    );
\crop_x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(14),
      Q => crop_x(14),
      R => p_0_in
    );
\crop_x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(15),
      Q => crop_x(15),
      R => p_0_in
    );
\crop_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(1),
      Q => crop_x(1),
      R => p_0_in
    );
\crop_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(2),
      Q => crop_x(2),
      R => p_0_in
    );
\crop_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(3),
      Q => crop_x(3),
      R => p_0_in
    );
\crop_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(4),
      Q => crop_x(4),
      R => p_0_in
    );
\crop_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(5),
      Q => crop_x(5),
      R => p_0_in
    );
\crop_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(6),
      Q => crop_x(6),
      R => p_0_in
    );
\crop_x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(7),
      Q => crop_x(7),
      R => p_0_in
    );
\crop_x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(8),
      Q => crop_x(8),
      R => p_0_in
    );
\crop_x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_x_3,
      D => s00_axi_wdata(9),
      Q => crop_x(9),
      R => p_0_in
    );
\crop_y[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(3),
      O => crop_y_4
    );
\crop_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(0),
      Q => crop_y(0),
      R => p_0_in
    );
\crop_y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(10),
      Q => crop_y(10),
      R => p_0_in
    );
\crop_y_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(11),
      Q => crop_y(11),
      R => p_0_in
    );
\crop_y_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(12),
      Q => crop_y(12),
      R => p_0_in
    );
\crop_y_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(13),
      Q => crop_y(13),
      R => p_0_in
    );
\crop_y_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(14),
      Q => crop_y(14),
      R => p_0_in
    );
\crop_y_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(15),
      Q => crop_y(15),
      R => p_0_in
    );
\crop_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(1),
      Q => crop_y(1),
      R => p_0_in
    );
\crop_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(2),
      Q => crop_y(2),
      R => p_0_in
    );
\crop_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(3),
      Q => crop_y(3),
      R => p_0_in
    );
\crop_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(4),
      Q => crop_y(4),
      R => p_0_in
    );
\crop_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(5),
      Q => crop_y(5),
      R => p_0_in
    );
\crop_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(6),
      Q => crop_y(6),
      R => p_0_in
    );
\crop_y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(7),
      Q => crop_y(7),
      R => p_0_in
    );
\crop_y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(8),
      Q => crop_y(8),
      R => p_0_in
    );
\crop_y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => crop_y_4,
      D => s00_axi_wdata(9),
      Q => crop_y(9),
      R => p_0_in
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
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(0),
      O => dscale_h_7
    );
\dscale_h_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => dscale_h_7,
      D => s00_axi_wdata(0),
      Q => dscale_h(0),
      S => p_0_in
    );
\dscale_h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_h_7,
      D => s00_axi_wdata(1),
      Q => dscale_h(1),
      R => p_0_in
    );
\dscale_h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_h_7,
      D => s00_axi_wdata(2),
      Q => dscale_h(2),
      R => p_0_in
    );
\dscale_h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_h_7,
      D => s00_axi_wdata(3),
      Q => dscale_h(3),
      R => p_0_in
    );
\dscale_v[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(1),
      O => dscale_v_8
    );
\dscale_v_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => dscale_v_8,
      D => s00_axi_wdata(0),
      Q => dscale_v(0),
      S => p_0_in
    );
\dscale_v_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_v_8,
      D => s00_axi_wdata(1),
      Q => dscale_v(1),
      R => p_0_in
    );
\dscale_v_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_v_8,
      D => s00_axi_wdata(2),
      Q => dscale_v(2),
      R => p_0_in
    );
\dscale_v_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => dscale_v_8,
      D => s00_axi_wdata(3),
      Q => dscale_v(3),
      R => p_0_in
    );
\equ_max[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(3),
      O => equ_max_2
    );
\equ_max_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_2,
      D => s00_axi_wdata(0),
      Q => equ_max(0),
      R => p_0_in
    );
\equ_max_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_2,
      D => s00_axi_wdata(1),
      Q => equ_max(1),
      R => p_0_in
    );
\equ_max_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_2,
      D => s00_axi_wdata(2),
      Q => equ_max(2),
      S => p_0_in
    );
\equ_max_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_2,
      D => s00_axi_wdata(3),
      Q => equ_max(3),
      S => p_0_in
    );
\equ_max_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_2,
      D => s00_axi_wdata(4),
      Q => equ_max(4),
      S => p_0_in
    );
\equ_max_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_2,
      D => s00_axi_wdata(5),
      Q => equ_max(5),
      R => p_0_in
    );
\equ_max_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_2,
      D => s00_axi_wdata(6),
      Q => equ_max(6),
      S => p_0_in
    );
\equ_max_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_max_2,
      D => s00_axi_wdata(7),
      Q => equ_max(7),
      S => p_0_in
    );
\equ_min[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(3),
      O => equ_min_1
    );
\equ_min_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_1,
      D => s00_axi_wdata(0),
      Q => equ_min(0),
      R => p_0_in
    );
\equ_min_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_1,
      D => s00_axi_wdata(1),
      Q => equ_min(1),
      R => p_0_in
    );
\equ_min_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_1,
      D => s00_axi_wdata(2),
      Q => equ_min(2),
      R => p_0_in
    );
\equ_min_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_1,
      D => s00_axi_wdata(3),
      Q => equ_min(3),
      S => p_0_in
    );
\equ_min_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_1,
      D => s00_axi_wdata(4),
      Q => equ_min(4),
      R => p_0_in
    );
\equ_min_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_1,
      D => s00_axi_wdata(5),
      Q => equ_min(5),
      S => p_0_in
    );
\equ_min_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_1,
      D => s00_axi_wdata(6),
      Q => equ_min(6),
      R => p_0_in
    );
\equ_min_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => equ_min_1,
      D => s00_axi_wdata(7),
      Q => equ_min(7),
      R => p_0_in
    );
hist_equ_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(3),
      I4 => \slv_reg_wren__2\,
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
href_reg_i_101: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(7),
      I1 => s_crop_w(7),
      O => href_reg_i_101_n_0
    );
href_reg_i_102: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(6),
      I1 => s_crop_w(6),
      O => href_reg_i_102_n_0
    );
href_reg_i_103: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(5),
      I1 => s_crop_w(5),
      O => href_reg_i_103_n_0
    );
href_reg_i_104: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(4),
      I1 => s_crop_w(4),
      O => href_reg_i_104_n_0
    );
href_reg_i_106: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(7),
      I1 => s_crop_h(7),
      O => href_reg_i_106_n_0
    );
href_reg_i_107: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(6),
      I1 => s_crop_h(6),
      O => href_reg_i_107_n_0
    );
href_reg_i_108: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(5),
      I1 => s_crop_h(5),
      O => href_reg_i_108_n_0
    );
href_reg_i_109: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(4),
      I1 => s_crop_h(4),
      O => href_reg_i_109_n_0
    );
href_reg_i_110: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(3),
      I1 => s_crop_w(3),
      O => href_reg_i_110_n_0
    );
href_reg_i_111: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(2),
      I1 => s_crop_w(2),
      O => href_reg_i_111_n_0
    );
href_reg_i_112: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(1),
      I1 => s_crop_w(1),
      O => href_reg_i_112_n_0
    );
href_reg_i_113: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(0),
      I1 => s_crop_w(0),
      O => href_reg_i_113_n_0
    );
href_reg_i_114: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(3),
      I1 => s_crop_h(3),
      O => href_reg_i_114_n_0
    );
href_reg_i_115: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(2),
      I1 => s_crop_h(2),
      O => href_reg_i_115_n_0
    );
href_reg_i_116: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(1),
      I1 => s_crop_h(1),
      O => href_reg_i_116_n_0
    );
href_reg_i_117: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(0),
      I1 => s_crop_h(0),
      O => href_reg_i_117_n_0
    );
href_reg_i_68: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(15),
      I1 => s_crop_w(15),
      O => href_reg_i_68_n_0
    );
href_reg_i_69: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(14),
      I1 => s_crop_w(14),
      O => href_reg_i_69_n_0
    );
href_reg_i_70: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(13),
      I1 => s_crop_w(13),
      O => href_reg_i_70_n_0
    );
href_reg_i_71: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(12),
      I1 => s_crop_w(12),
      O => href_reg_i_71_n_0
    );
href_reg_i_78: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(15),
      I1 => s_crop_h(15),
      O => href_reg_i_78_n_0
    );
href_reg_i_79: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(14),
      I1 => s_crop_h(14),
      O => href_reg_i_79_n_0
    );
href_reg_i_80: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(13),
      I1 => s_crop_h(13),
      O => href_reg_i_80_n_0
    );
href_reg_i_81: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(12),
      I1 => s_crop_h(12),
      O => href_reg_i_81_n_0
    );
href_reg_i_87: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(11),
      I1 => s_crop_w(11),
      O => href_reg_i_87_n_0
    );
href_reg_i_88: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(10),
      I1 => s_crop_w(10),
      O => href_reg_i_88_n_0
    );
href_reg_i_89: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(9),
      I1 => s_crop_w(9),
      O => href_reg_i_89_n_0
    );
href_reg_i_90: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_x(8),
      I1 => s_crop_w(8),
      O => href_reg_i_90_n_0
    );
href_reg_i_96: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(11),
      I1 => s_crop_h(11),
      O => href_reg_i_96_n_0
    );
href_reg_i_97: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(10),
      I1 => s_crop_h(10),
      O => href_reg_i_97_n_0
    );
href_reg_i_98: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(9),
      I1 => s_crop_h(9),
      O => href_reg_i_98_n_0
    );
href_reg_i_99: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_crop_y(8),
      I1 => s_crop_h(8),
      O => href_reg_i_99_n_0
    );
href_reg_reg_i_100: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => href_reg_reg_i_100_n_0,
      CO(2) => href_reg_reg_i_100_n_1,
      CO(1) => href_reg_reg_i_100_n_2,
      CO(0) => href_reg_reg_i_100_n_3,
      CYINIT => '0',
      DI(3 downto 0) => s_crop_x(3 downto 0),
      O(3) => href_reg_reg_i_100_n_4,
      O(2) => href_reg_reg_i_100_n_5,
      O(1) => href_reg_reg_i_100_n_6,
      O(0) => href_reg_reg_i_100_n_7,
      S(3) => href_reg_i_110_n_0,
      S(2) => href_reg_i_111_n_0,
      S(1) => href_reg_i_112_n_0,
      S(0) => href_reg_i_113_n_0
    );
href_reg_reg_i_105: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => href_reg_reg_i_105_n_0,
      CO(2) => href_reg_reg_i_105_n_1,
      CO(1) => href_reg_reg_i_105_n_2,
      CO(0) => href_reg_reg_i_105_n_3,
      CYINIT => '0',
      DI(3 downto 0) => s_crop_y(3 downto 0),
      O(3) => href_reg_reg_i_105_n_4,
      O(2) => href_reg_reg_i_105_n_5,
      O(1) => href_reg_reg_i_105_n_6,
      O(0) => href_reg_reg_i_105_n_7,
      S(3) => href_reg_i_114_n_0,
      S(2) => href_reg_i_115_n_0,
      S(1) => href_reg_i_116_n_0,
      S(0) => href_reg_i_117_n_0
    );
href_reg_reg_i_39: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_67_n_0,
      CO(3) => NLW_href_reg_reg_i_39_CO_UNCONNECTED(3),
      CO(2) => href_reg_reg_i_39_n_1,
      CO(1) => href_reg_reg_i_39_n_2,
      CO(0) => href_reg_reg_i_39_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_crop_x(14 downto 12),
      O(3) => href_reg_reg_i_39_n_4,
      O(2) => href_reg_reg_i_39_n_5,
      O(1) => href_reg_reg_i_39_n_6,
      O(0) => href_reg_reg_i_39_n_7,
      S(3) => href_reg_i_68_n_0,
      S(2) => href_reg_i_69_n_0,
      S(1) => href_reg_i_70_n_0,
      S(0) => href_reg_i_71_n_0
    );
href_reg_reg_i_45: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_77_n_0,
      CO(3) => NLW_href_reg_reg_i_45_CO_UNCONNECTED(3),
      CO(2) => href_reg_reg_i_45_n_1,
      CO(1) => href_reg_reg_i_45_n_2,
      CO(0) => href_reg_reg_i_45_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_crop_y(14 downto 12),
      O(3) => href_reg_reg_i_45_n_4,
      O(2) => href_reg_reg_i_45_n_5,
      O(1) => href_reg_reg_i_45_n_6,
      O(0) => href_reg_reg_i_45_n_7,
      S(3) => href_reg_i_78_n_0,
      S(2) => href_reg_i_79_n_0,
      S(1) => href_reg_i_80_n_0,
      S(0) => href_reg_i_81_n_0
    );
href_reg_reg_i_67: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_86_n_0,
      CO(3) => href_reg_reg_i_67_n_0,
      CO(2) => href_reg_reg_i_67_n_1,
      CO(1) => href_reg_reg_i_67_n_2,
      CO(0) => href_reg_reg_i_67_n_3,
      CYINIT => '0',
      DI(3 downto 0) => s_crop_x(11 downto 8),
      O(3) => href_reg_reg_i_67_n_4,
      O(2) => href_reg_reg_i_67_n_5,
      O(1) => href_reg_reg_i_67_n_6,
      O(0) => href_reg_reg_i_67_n_7,
      S(3) => href_reg_i_87_n_0,
      S(2) => href_reg_i_88_n_0,
      S(1) => href_reg_i_89_n_0,
      S(0) => href_reg_i_90_n_0
    );
href_reg_reg_i_77: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_95_n_0,
      CO(3) => href_reg_reg_i_77_n_0,
      CO(2) => href_reg_reg_i_77_n_1,
      CO(1) => href_reg_reg_i_77_n_2,
      CO(0) => href_reg_reg_i_77_n_3,
      CYINIT => '0',
      DI(3 downto 0) => s_crop_y(11 downto 8),
      O(3) => href_reg_reg_i_77_n_4,
      O(2) => href_reg_reg_i_77_n_5,
      O(1) => href_reg_reg_i_77_n_6,
      O(0) => href_reg_reg_i_77_n_7,
      S(3) => href_reg_i_96_n_0,
      S(2) => href_reg_i_97_n_0,
      S(1) => href_reg_i_98_n_0,
      S(0) => href_reg_i_99_n_0
    );
href_reg_reg_i_86: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_100_n_0,
      CO(3) => href_reg_reg_i_86_n_0,
      CO(2) => href_reg_reg_i_86_n_1,
      CO(1) => href_reg_reg_i_86_n_2,
      CO(0) => href_reg_reg_i_86_n_3,
      CYINIT => '0',
      DI(3 downto 0) => s_crop_x(7 downto 4),
      O(3) => href_reg_reg_i_86_n_4,
      O(2) => href_reg_reg_i_86_n_5,
      O(1) => href_reg_reg_i_86_n_6,
      O(0) => href_reg_reg_i_86_n_7,
      S(3) => href_reg_i_101_n_0,
      S(2) => href_reg_i_102_n_0,
      S(1) => href_reg_i_103_n_0,
      S(0) => href_reg_i_104_n_0
    );
href_reg_reg_i_95: unisim.vcomponents.CARRY4
     port map (
      CI => href_reg_reg_i_105_n_0,
      CO(3) => href_reg_reg_i_95_n_0,
      CO(2) => href_reg_reg_i_95_n_1,
      CO(1) => href_reg_reg_i_95_n_2,
      CO(0) => href_reg_reg_i_95_n_3,
      CYINIT => '0',
      DI(3 downto 0) => s_crop_y(7 downto 4),
      O(3) => href_reg_reg_i_95_n_4,
      O(2) => href_reg_reg_i_95_n_5,
      O(1) => href_reg_reg_i_95_n_6,
      O(0) => href_reg_reg_i_95_n_7,
      S(3) => href_reg_i_106_n_0,
      S(2) => href_reg_i_107_n_0,
      S(1) => href_reg_i_108_n_0,
      S(0) => href_reg_i_109_n_0
    );
int_frame_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F770F00"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => \int_frame_done__2\,
      I2 => prev_vsync,
      I3 => \^out_vsync\,
      I4 => int_frame_done_reg_n_0,
      O => int_frame_done_i_1_n_0
    );
int_frame_done_i_2: unisim.vcomponents.LUT4
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
int_frame_done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(3),
      O => \int_frame_done__2\
    );
int_frame_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_frame_done_i_1_n_0,
      Q => int_frame_done_reg_n_0,
      R => p_0_in
    );
int_mask_frame_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => int_mask_frame_done_i_2_n_0,
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(3),
      I4 => \slv_reg_wren__2\,
      I5 => int_mask_frame_done_reg_n_0,
      O => int_mask_frame_done_i_1_n_0
    );
int_mask_frame_done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      O => int_mask_frame_done_i_2_n_0
    );
int_mask_frame_done_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_mask_frame_done_i_1_n_0,
      Q => int_mask_frame_done_reg_n_0,
      S => p_0_in
    );
irq_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => int_frame_done_reg_n_0,
      I1 => int_mask_frame_done_reg_n_0,
      O => irq
    );
module_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => module_reset_i_2_n_0,
      I4 => \slv_reg_wren__2\,
      I5 => module_reset,
      O => module_reset_i_1_n_0
    );
module_reset_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(3),
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
\s_equ_max_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_max(0),
      Q => s_equ_max(0),
      R => '0'
    );
\s_equ_max_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_max(1),
      Q => s_equ_max(1),
      R => '0'
    );
\s_equ_max_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_max(2),
      Q => s_equ_max(2),
      R => '0'
    );
\s_equ_max_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_max(3),
      Q => s_equ_max(3),
      R => '0'
    );
\s_equ_max_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_max(4),
      Q => s_equ_max(4),
      R => '0'
    );
\s_equ_max_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_max(5),
      Q => s_equ_max(5),
      R => '0'
    );
\s_equ_max_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_max(6),
      Q => s_equ_max(6),
      R => '0'
    );
\s_equ_max_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_max(7),
      Q => s_equ_max(7),
      R => '0'
    );
\s_equ_min_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_min(0),
      Q => s_equ_min(0),
      R => '0'
    );
\s_equ_min_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_min(1),
      Q => s_equ_min(1),
      R => '0'
    );
\s_equ_min_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_min(2),
      Q => s_equ_min(2),
      R => '0'
    );
\s_equ_min_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_min(3),
      Q => s_equ_min(3),
      R => '0'
    );
\s_equ_min_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_min(4),
      Q => s_equ_min(4),
      R => '0'
    );
\s_equ_min_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_min(5),
      Q => s_equ_min(5),
      R => '0'
    );
\s_equ_min_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_min(6),
      Q => s_equ_min(6),
      R => '0'
    );
\s_equ_min_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => equ_min(7),
      Q => s_equ_min(7),
      R => '0'
    );
s_hist_equ_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_vsync_r,
      I1 => in_vsync,
      O => frame_start
    );
s_hist_equ_en_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => frame_start,
      D => data1(0),
      Q => s_hist_equ_en,
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
sobel_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => hist_equ_en,
      D => s00_axi_wdata(1),
      Q => data1(1),
      R => p_0_in
    );
vip_top_i0: entity work.design_1_xil_vip_0_0_vip_top
     port map (
      O(3) => href_reg_reg_i_39_n_4,
      O(2) => href_reg_reg_i_39_n_5,
      O(1) => href_reg_reg_i_39_n_6,
      O(0) => href_reg_reg_i_39_n_7,
      Q(7 downto 0) => s_equ_max(7 downto 0),
      \ZOUT_reg[19]\ => \ZOUT_reg[19]\,
      hist_sum_data_20(7 downto 0) => s_equ_min(7 downto 0),
      \hist_sum_data_3_reg[0]\ => \hist_sum_data_3_reg[0]\,
      href_reg_reg_i_11(3) => href_reg_reg_i_77_n_4,
      href_reg_reg_i_11(2) => href_reg_reg_i_77_n_5,
      href_reg_reg_i_11(1) => href_reg_reg_i_77_n_6,
      href_reg_reg_i_11(0) => href_reg_reg_i_77_n_7,
      href_reg_reg_i_3(3) => href_reg_reg_i_45_n_4,
      href_reg_reg_i_3(2) => href_reg_reg_i_45_n_5,
      href_reg_reg_i_3(1) => href_reg_reg_i_45_n_6,
      href_reg_reg_i_3(0) => href_reg_reg_i_45_n_7,
      href_reg_reg_i_34(3) => href_reg_reg_i_86_n_4,
      href_reg_reg_i_34(2) => href_reg_reg_i_86_n_5,
      href_reg_reg_i_34(1) => href_reg_reg_i_86_n_6,
      href_reg_reg_i_34(0) => href_reg_reg_i_86_n_7,
      href_reg_reg_i_4(15 downto 0) => s_crop_y(15 downto 0),
      href_reg_reg_i_40(3) => href_reg_reg_i_95_n_4,
      href_reg_reg_i_40(2) => href_reg_reg_i_95_n_5,
      href_reg_reg_i_40(1) => href_reg_reg_i_95_n_6,
      href_reg_reg_i_40(0) => href_reg_reg_i_95_n_7,
      href_reg_reg_i_5(15 downto 0) => s_crop_x(15 downto 0),
      href_reg_reg_i_6(3) => href_reg_reg_i_67_n_4,
      href_reg_reg_i_6(2) => href_reg_reg_i_67_n_5,
      href_reg_reg_i_6(1) => href_reg_reg_i_67_n_6,
      href_reg_reg_i_6(0) => href_reg_reg_i_67_n_7,
      href_reg_reg_i_62(3) => href_reg_reg_i_100_n_4,
      href_reg_reg_i_62(2) => href_reg_reg_i_100_n_5,
      href_reg_reg_i_62(1) => href_reg_reg_i_100_n_6,
      href_reg_reg_i_62(0) => href_reg_reg_i_100_n_7,
      href_reg_reg_i_72(3) => href_reg_reg_i_105_n_4,
      href_reg_reg_i_72(2) => href_reg_reg_i_105_n_5,
      href_reg_reg_i_72(1) => href_reg_reg_i_105_n_6,
      href_reg_reg_i_72(0) => href_reg_reg_i_105_n_7,
      in_href => in_href,
      in_vsync => in_vsync,
      in_yuv(23 downto 0) => in_yuv(23 downto 0),
      \line_cnt_reg[0]\(3 downto 0) => s_dscale_v(3 downto 0),
      out_href => out_href,
      out_pclk => out_pclk,
      out_rgb(23 downto 0) => out_rgb(23 downto 0),
      out_vsync => \^out_vsync\,
      pclk => pclk,
      \pix_cnt_reg[1]\(3 downto 0) => s_dscale_h(3 downto 0),
      rst_n => rst_n,
      s_crop_en => s_crop_en,
      s_dscale_en => s_dscale_en,
      s_hist_equ_en => s_hist_equ_en,
      s_hist_equ_en_reg => s_hist_equ_en_reg_0,
      s_module_reset => s_module_reset,
      s_module_reset_reg => s_module_reset_reg_0,
      s_sobel_en => s_sobel_en,
      s_yuv2rgb_en => s_yuv2rgb_en
    );
yuv2rgb_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => hist_equ_en,
      D => s00_axi_wdata(2),
      Q => data1(2),
      S => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0_xil_vip_v1_0 is
  port (
    s_hist_equ_en_reg : out STD_LOGIC;
    s_module_reset_reg : out STD_LOGIC;
    out_vsync : out STD_LOGIC;
    out_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    out_href : out STD_LOGIC;
    out_pclk : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    irq : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    pclk : in STD_LOGIC;
    \hist_sum_data_3_reg[0]\ : in STD_LOGIC;
    \ZOUT_reg[19]\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    in_href : in STD_LOGIC;
    in_vsync : in STD_LOGIC;
    in_yuv : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end design_1_xil_vip_0_0_xil_vip_v1_0;

architecture STRUCTURE of design_1_xil_vip_0_0_xil_vip_v1_0 is
begin
xil_vip_v1_0_S00_AXI_inst: entity work.design_1_xil_vip_0_0_xil_vip_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      \ZOUT_reg[19]\ => \ZOUT_reg[19]\,
      \hist_sum_data_3_reg[0]\ => \hist_sum_data_3_reg[0]\,
      in_href => in_href,
      in_vsync => in_vsync,
      in_yuv(23 downto 0) => in_yuv(23 downto 0),
      irq => irq,
      out_href => out_href,
      out_pclk => out_pclk,
      out_rgb(23 downto 0) => out_rgb(23 downto 0),
      out_vsync => out_vsync,
      pclk => pclk,
      rst_n => rst_n,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(3 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(3 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(15 downto 0) => s00_axi_rdata(15 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s_hist_equ_en_reg_0 => s_hist_equ_en_reg,
      s_module_reset_reg_0 => s_module_reset_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xil_vip_0_0 is
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
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
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
  attribute NotValidForBitStream of design_1_xil_vip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_xil_vip_0_0 : entity is "design_1_xil_vip_0_0,xil_vip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xil_vip_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_xil_vip_0_0 : entity is "xil_vip_v1_0,Vivado 2018.3";
end design_1_xil_vip_0_0;

architecture STRUCTURE of design_1_xil_vip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \XOUT_reg[19]_i_7_n_0\ : STD_LOGIC;
  signal \hist_sum_data_3_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal inst_n_0 : STD_LOGIC;
  signal inst_n_1 : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_href : signal is "xilinx.com:interface:vid_io:1.0 yuv ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of in_vsync : signal is "xilinx.com:interface:vid_io:1.0 yuv VSYNC";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of out_href : signal is "xilinx.com:interface:vid_io:1.0 rgb ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of out_pclk : signal is "xilinx.com:signal:clock:1.0 out_pclk CLK";
  attribute X_INTERFACE_PARAMETER of out_pclk : signal is "XIL_INTERFACENAME out_pclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_xil_vip_0_0_out_pclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_vsync : signal is "xilinx.com:interface:vid_io:1.0 rgb VSYNC";
  attribute X_INTERFACE_INFO of pclk : signal is "xilinx.com:signal:clock:1.0 pclk CLK";
  attribute X_INTERFACE_PARAMETER of pclk : signal is "XIL_INTERFACENAME pclk, ASSOCIATED_RESET rst_n, FREQ_HZ 96000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15 downto 0) <= \^s00_axi_rdata\(15 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\XOUT_reg[19]_i_7\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => inst_n_1,
      D => '1',
      Q => \XOUT_reg[19]_i_7_n_0\
    );
\hist_sum_data_3_reg[19]_i_4\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => inst_n_0,
      D => '1',
      Q => \hist_sum_data_3_reg[19]_i_4_n_0\
    );
inst: entity work.design_1_xil_vip_0_0_xil_vip_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      \ZOUT_reg[19]\ => \XOUT_reg[19]_i_7_n_0\,
      \hist_sum_data_3_reg[0]\ => \hist_sum_data_3_reg[19]_i_4_n_0\,
      in_href => in_href,
      in_vsync => in_vsync,
      in_yuv(23 downto 0) => in_yuv(23 downto 0),
      irq => irq,
      out_href => out_href,
      out_pclk => out_pclk,
      out_rgb(23 downto 0) => out_rgb(23 downto 0),
      out_vsync => out_vsync,
      pclk => pclk,
      rst_n => rst_n,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(5 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(15 downto 0) => \^s00_axi_rdata\(15 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s_hist_equ_en_reg => inst_n_0,
      s_module_reset_reg => inst_n_1
    );
end STRUCTURE;
