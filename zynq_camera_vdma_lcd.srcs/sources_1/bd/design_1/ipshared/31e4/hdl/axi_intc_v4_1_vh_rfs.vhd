-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------
-- *******************************************************************
--
-------------------------------------------------------------------------------
-- Filename   : double_synchronizer.vhd
-- Version    : v3.0
-- Description: The double_synchronizer is having the double flop synchronization logic
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
-------------------------------------------------------------------------------
-- Author:     NLR
-- History:
--   NLR      3/21/2011   Initial version
-- ^^^^^^^
--  ^^^^^^^
--  SK     10/10/12
--
--  1. Added cascade mode support in v1.03.a version of the core
-- 2.  Updated major version of the core
-- ~~~~~~
-- ~~~~~~
--  SK       12/16/12      -- v3.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI LITE IPIF to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0
--  4. No Logic Updates
-- ^^^^^^
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*N"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      RESET_2 signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      counter signals:                        "*cntr*", "*count*"
--      ports:                                  - Names in Uppercase
--      processes:                              "*_REG", "*_CMB"
--      component instantiations:               "<ENTITY_>MODULE<#|_FUNC>
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library axi_intc_v4_1_12;
use axi_intc_v4_1_12.all;

library unisim;
use unisim.vcomponents.FDR;
-------------------------------------------------------------------------------

entity double_synchronizer is
  generic (
      C_DWIDTH : integer range 1 to 32 := 1
  );
  port (
     CLK_2             : in std_logic;
     RESET_2_n         : in std_logic;   -- active_low
     DATA_IN           : in std_logic_vector(C_DWIDTH-1 downto 0);
     SYNC_DATA_OUT     : out std_logic_vector(C_DWIDTH-1 downto 0)
    );
end entity;
-------------------------------------------------------------------------------

architecture RTL of double_synchronizer is

  signal RESET_2_p      : std_logic;
  signal data_in_d1     : std_logic_vector(C_DWIDTH-1 downto 0);
-----
begin
-----
 -- active high Reset
 RESET_2_p <= not RESET_2_n;

    REG_GEN : for i in 0 to (C_DWIDTH - 1) generate

         BLOCK_GEN: block

                 attribute ASYNC_REG : string;
                 attribute ASYNC_REG of FIRST_FLOP_i : label is "TRUE";
         begin

                 FIRST_FLOP_i: component FDR
                   port map (
                              Q  => data_in_d1(i),
                              C  => CLK_2,
                              D  => DATA_IN(i),
                              R  => RESET_2_p
                            );

                 SECOND_FLOP_i: component FDR
                   port map (
                              Q  => SYNC_DATA_OUT(i),
                              C  => CLK_2,
                              D  => data_in_d1(i),
                              R  => RESET_2_p
                            );

         end block BLOCK_GEN;

    end generate REG_GEN;
-------------------------------------------------------------------------------
end RTL;
-------------------------------------------------------------------------------


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012, 2017 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:      shared_ram_ivar.vhd
-- Version:       v4.1
-- Description:   This file is a DPRAM which is used in the design for the
--                IVAR and IVEAR registers using the generics C_DPRAM_DEPTH,
--                C_ADDR_LINES, and C_WE_WIDTH.
-- VHDL-Standard: VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--               -- axi_intc
--                  -- intc_core
--                     -- shared_ram_ivar
-------------------------------------------------------------------------------
-- Author:          PBB
-- History:
--  PBB    07/01/10    initial release
-- ^^^^^^^
-- ^^^^^^^
--  SK     10/10/12
--
--  1. Added cascade mode support in v1.03.a version of the core
--  2. Updated major version of the core
-- ~~~~~~
-- ~~~~~~
--  SK       12/16/12      -- v3.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI LITE IPIF to v2.0 in X.Y format
--  3. updated the proc common version to v4_0
--  4. No Logic Updates
-- ~~~~~~
--  SA     11/20/17
--
--  1. Added support for interrupt vector extended address
-- ^^^^^^
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

library axi_intc_v4_1_12;
use axi_intc_v4_1_12.all;

-------------------------------------------------------------------------------
-- Definition of Generics:
--    C_WIDTH              -- Data width
--    C_DPRAM_DEPTH        -- Depth of the DPRAM
--    C_ADDR_LINES         -- No of Address lines
--    C_WE_WIDTH           -- Write enable width
--    C_RESET_VALUE        -- Reset values of DPRAM
-------------------------------------------------------------------------------
-- Definition of Ports:
--    Addra                -- Port-A address
--    Addrb                -- Port-B address
--    Clka                 -- Port-A clock
--    Clkb                 -- Port-B clock
--    Dina                 -- Port-A data input
--    Dinb                 -- Port-B data input
--    Ena                  -- Port-A chip enable
--    Enb                  -- Port-B chip enable
--    Wea                  -- Port-A write enable
--    Web                  -- Port-B write enable
--    Douta                -- Port-A data output
--    Doutb                -- Port-B data output
--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Entity section
-------------------------------------------------------------------------------
entity shared_ram_ivar IS
  generic
  (
    C_WIDTH       : integer                       := 32;
    C_DPRAM_DEPTH : integer range 16 to 4096      := 16;
    C_ADDR_LINES  : integer range 0 to 15         := 4;
    C_WE_WIDTH    : integer range 1 to 2          := 1;
    C_RESET_VALUE : std_logic_vector(63 downto 0) := X"0000000000000010"
  );

  port
  (
    Addra         : in std_logic_VECTOR(C_ADDR_LINES - 1 downto 0);
    Addrb         : in std_logic_VECTOR(C_ADDR_LINES - 1 downto 0);
    Clka          : in std_logic;
    Clkb          : in std_logic;
    Dina          : in std_logic_VECTOR(C_WIDTH - 1 downto 0);
    Wea           : in std_logic_vector(C_WE_WIDTH - 1 downto 0);
    Douta         : out std_logic_VECTOR(C_WIDTH - 1 downto 0);
    Doutb         : out std_logic_VECTOR(C_WIDTH - 1 downto 0)
  );
end shared_ram_ivar;

architecture byte_data_ram_a of shared_ram_ivar is

  function ramWidth (I : integer) return integer is
  begin
    if I * 32 > C_WIDTH - 32 then
      return C_WIDTH - I * 32;
    end if;
    return 32;
  end function ramWidth;

-------------------------------------------------------------------------------
-- Begin architecture
-------------------------------------------------------------------------------
begin

  ram_i: for I in 0 to C_WE_WIDTH - 1 generate
    constant C_RAM_WIDTH : integer := ramWidth(I);

    subtype dataRange is integer range I * 32 + C_RAM_WIDTH - 1 downto I * 32;

    type ramType is array (0 to C_DPRAM_DEPTH - 1) of std_logic_vector(C_RAM_WIDTH - 1 downto 0);

    signal ram : ramType := (others => C_RESET_VALUE(dataRange));

    attribute ram_style : string;
    attribute ram_style of ram : signal is "distributed";
  begin
    -------------------------------------------------------------------------------
    -- DPRAM Port A Interface
    -------------------------------------------------------------------------------
    PORT_A_PROCESS:  process(Clka)
      begin
        if Clka'event and Clka = '1' then
          if (Wea(I) = '1') then
            ram(conv_integer(Addra)) <= Dina(dataRange);
          end if;
          Douta(dataRange) <= ram(conv_integer(Addra));
        end if;
      end process;

    -------------------------------------------------------------------------------
    -- DPRAM Port B Interface
    -------------------------------------------------------------------------------
    PORT_B_PROCESS:  process(Clkb)
      begin
        if Clkb'event and Clkb = '1' then
          Doutb(dataRange) <= ram(conv_integer(Addrb));
        end if;
      end process;
  end generate ram_i;

end byte_data_ram_a;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- *******************************************************************
--
-------------------------------------------------------------------------------
-- Filename   : pulse_synchronizer.vhd
-- Version    : v3.0
-- Description: The pulse_synchronizer is having the double flop synchronization logic
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
-------------------------------------------------------------------------------
-- Author:     NLR
-- History:
--   NLR      3/21/2011   Initial version
-- ^^^^^^^
--  ^^^^^^^
--  SK     10/10/12
--
--  1. Added cascade mode support in v1.03.a version of the core
-- 2.  Updated major version of the core
-- ~~~~~~
-- ~~~~~~
--  SK       12/16/12      -- v3.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI LITE IPIF to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0
--  4. No Logic Updates
-- ^^^^^^
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*N"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      counter signals:                        "*cntr*", "*count*"
--      ports:                                  - Names in Uppercase
--      processes:                              "*_REG", "*_CMB"
--      component instantiations:               "<ENTITY_>MODULE<#|_FUNC>
-------------------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;

library axi_intc_v4_1_12;
    use axi_intc_v4_1_12.all;

entity pulse_synchronizer is
  port (
     CLK_1             : in std_logic;
     RESET_1_n         : in std_logic;   -- active low reset
     DATA_IN           : in std_logic;
     CLK_2             : in std_logic;
     RESET_2_n         : in std_logic;   -- active low reset
     SYNC_DATA_OUT     : out std_logic
    );
end entity;

architecture RTL of pulse_synchronizer is
  signal data_in_toggle          : std_logic;
  signal data_in_toggle_sync     : std_logic;
  signal data_in_toggle_sync_d1  : std_logic;
  signal data_in_toggle_sync_vec : std_logic_vector(0 downto 0);

  --------------------------------------------------------------------------------------
  -- Function to convert std_logic to std_logic_vector
  --------------------------------------------------------------------------------------
  Function scalar_to_vector (scalar_in : std_logic) return std_logic_vector is
  variable vec_out                : std_logic_vector(0 downto 0) := "0";
  begin
      vec_out(0) := scalar_in;
  return vec_out;
  end function scalar_to_vector;

begin

  TOGGLE_DATA_IN_REG:process(CLK_1)
  begin
    if(CLK_1'event and CLK_1 = '1') then
      if(RESET_1_n = '0') then
        data_in_toggle <= '0';
      else
        data_in_toggle <= DATA_IN xor data_in_toggle;
      end if;
    end if;
  end process TOGGLE_DATA_IN_REG;

  DOUBLE_SYNC_I : entity axi_intc_v4_1_12.double_synchronizer
    generic map (
      C_DWIDTH => 1
    )
    port map (
        CLK_2         => CLK_2,
        RESET_2_n     => RESET_2_n,
        DATA_IN       => scalar_to_vector(data_in_toggle),
        SYNC_DATA_OUT => data_in_toggle_sync_vec
      );

  data_in_toggle_sync <= data_in_toggle_sync_vec(0);

  SYNC_DATA_REG:process(CLK_2)
  begin
    if(CLK_2'event and CLK_2 = '1') then
      if(RESET_2_n = '0') then
        data_in_toggle_sync_d1 <= '0';
      else
        data_in_toggle_sync_d1 <= data_in_toggle_sync;
      end if;
    end if;
  end process SYNC_DATA_REG;

  SYNC_DATA_OUT <= data_in_toggle_sync xor data_in_toggle_sync_d1;

end RTL;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2014, 2016 - 2018 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        intc_core.vhd
-- Version:         v3.1
-- Description:     Interrupt controller without a bus interface
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--           -- axi_intc.vhd  (wrapper for top level)
--               -- axi_lite_ipif.vhd
--               -- intc_core.vhd
--
-------------------------------------------------------------------------------
-- Author:      PB
-- History:
--  PB     07/29/09
--  ^^^^^^^
--  - Initial release of v1.00.a
--  PB     03/26/10
--
--  - updated based on the xps_intc_v2_01_a
-- ~~~~~~
--  - Initial release of v2.00.a
--  - Updated by pkaruna

--  ^^^^^^^
--  SK     10/10/12
--
--  1. Added cascade mode support in v1.03.a version of the core
--  2. Updated major version of the core
-- ~~~~~~
-- ~~~~~~
--  SK       12/16/12      -- v3.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI LITE IPIF to v2.0 in X.Y format
--  3. updated the proc common version to v4_0
--  4. No Logic Updates
-- ^^^^^^
-- ^^^^^^^
--  SA     03/25/13
--
--  1. Added software interrupt support in v3.1 version of the core
-- ~~~~~~
--  SA     09/05/13
--
--  1. Added support for nested interrupts using ILR register in v4.1
-- ~~~~~~
--  SA     11/20/17
--
--  1. Added support for interrupt vector extended address
-- ~~~~~~
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_cmb"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.log2;
use ieee.math_real.ceil;
use ieee.std_logic_misc.all;

library axi_intc_v4_1_12;
use axi_intc_v4_1_12.all;

-------------------------------------------------------------------------------
-- Definition of Generics:
--  -- Intc Parameters
--   C_DWIDTH                 -- Data bus width
--   C_NUM_INTR_INPUTS        -- Number of interrupt inputs
--   C_NUM_SW_INTR            -- Number of software interrupts
--   C_KIND_OF_INTR           -- Kind of interrupt (0-Level/1-Edge)
--   C_KIND_OF_EDGE           -- Kind of edge (0-falling/1-rising)
--   C_KIND_OF_LVL            -- Kind of level (0-low/1-high)
--   C_ASYNC_INTR             -- Interrupt is asynchronous (0-sync/1-async)
--   C_NUM_SYNC_FF            -- Number of synchronization flip-flops for async interrupts
--   C_HAS_IPR                -- Set to 1 if has Interrupt Pending Register
--   C_HAS_SIE                -- Set to 1 if has Set Interrupt Enable Bits Register
--   C_HAS_CIE                -- Set to 1 if has Clear Interrupt Enable Bits Register
--   C_HAS_IVR                -- Set to 1 if has Interrupt Vector Register
--   C_HAS_ILR                -- Set to 1 if has Interrupt Level Register for nested interrupt support
--   C_IRQ_IS_LEVEL           -- If set to 0 generates edge interrupt
--                            -- If set to 1 generates level interrupt
--   C_IRQ_ACTIVE             -- Defines the edge for output interrupt if
--                            -- C_IRQ_IS_LEVEL=0 (0-FALLING/1-RISING)
--                            -- Defines the level for output interrupt if
--                            -- C_IRQ_IS_LEVEL=1 (0-LOW/1-HIGH)
--   C_IVAR_RESET_VALUE       -- Reset value for the vectored interrupt registers in RAM
--   C_IVAR_WE_WIDTH          -- Write enable width for the vectored interrupt registers in RAM
--   C_ADDR_WIDTH             -- Interrupt address width
--   C_DISABLE_SYNCHRONIZERS  -- If the processor clock and axi clock are of same
--                               value then user can decide to disable this
--   C_MB_CLK_NOT_CONNECTED   -- If the processor clock is not connected or used in design
--   C_HAS_FAST               -- If user wants to choose the fast interrupt mode of the core
--                            -- then it is needed to have this paraemter set. Default is Standard Mode interrupt
--   C_ENABLE_ASYNC           -- This parameter is used only for Vivado standalone mode of the core, not used in RTL
--   C_EN_CASCADE_MODE        -- If no. of interrupts goes beyond 32, then this parameter need to set
--   C_CASCADE_MASTER         -- If cascade mode is set, then this parameter should be set to the first instance
--                            -- of the core which is connected to the processor
-------------------------------------------------------------------------------
-- Definition of Ports:
--  Clocks and reset
--   Clk                 -- Clock
--   Rst                 -- Reset
--  Intc Interface Signals
--   Intr                -- Input Interrupt request
--   Reg_addr            -- Address bus
--   Bus2ip_rdce         -- Read
--   Bus2ip_wrce         -- Write
--   Wr_data             -- Write data bus
--   Rd_data             -- Read data bus
--   Irq                 -- Output Interrupt request
--  Processor_clk        -- input same as processor clock
--  Processor_rst        -- input same as processor reset
--  Processor_ack        -- input Connected to processor ACK
--  Interrupt_address    -- output Connected to processor interrupt address pins
--  Interrupt_address_in -- Input this is coming from lower level module in case
--                       -- the cascade mode is set and all AXI INTC instances are marked
--                       -- as C_HAS_FAST = 1
--  Processor_ack_out    -- Output this is going to lower level module in case
--                       -- the cascade mode is set and all AXI INTC instances are marked
--                       -- as C_HAS_FAST = 1
-------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- Entity
------------------------------------------------------------------------------
entity intc_core is
    generic
    (
      C_FAMILY                : string  := "virtex7";
      C_DWIDTH                : integer := 32;
      C_NUM_INTR_INPUTS       : integer range 1 to 32 := 2;
      C_NUM_SW_INTR           : integer range 0 to 31 := 0;
      C_KIND_OF_INTR          : std_logic_vector(31 downto 0) := "11111111111111111111111111111111";
      C_KIND_OF_EDGE          : std_logic_vector(31 downto 0) := "11111111111111111111111111111111";
      C_KIND_OF_LVL           : std_logic_vector(31 downto 0) := "11111111111111111111111111111111";
      C_ASYNC_INTR            : std_logic_vector(31 downto 0) := "11111111111111111111111111111111";
      C_NUM_SYNC_FF           : integer range 0 to 7 := 2;
      C_HAS_IPR               : integer range 0 to 1 := 1;
      C_HAS_SIE               : integer range 0 to 1 := 1;
      C_HAS_CIE               : integer range 0 to 1 := 1;
      C_HAS_IVR               : integer range 0 to 1 := 1;
      C_HAS_ILR               : integer range 0 to 1 := 0;
      C_IRQ_IS_LEVEL          : integer range 0 to 1 := 1;
      C_IRQ_ACTIVE            : std_logic := '1';
      C_DISABLE_SYNCHRONIZERS : integer range 0 to 1 := 0;
      C_MB_CLK_NOT_CONNECTED  : integer range 0 to 1 := 0;
      C_HAS_FAST              : integer range 0 to 1 := 0;
      C_IVAR_RESET_VALUE      : std_logic_vector(63 downto 0) := X"0000000000000010";
      C_IVAR_WE_WIDTH         : integer range 1 to 2 := 1;
      C_ADDR_WIDTH            : integer range 32 to 64 := 32;
      C_EN_CASCADE_MODE       : integer range 0 to 1 := 0; -- default no cascade mode, if set enable cascade mode
      C_CASCADE_MASTER        : integer range 0 to 1 := 0  -- default slave, if set become cascade master and
                                                           -- connect ports to processor
    );
    port
    (
      Clk                  : in  std_logic;                                   --- AXI Clock
      Rst_n                : in  std_logic;                                   --- active low AXI Reset
      Intr                 : in  std_logic_vector(C_NUM_INTR_INPUTS - 1 downto 0);
      Reg_addr             : in  std_logic_vector(6 downto 0);
      Bus2ip_rdce          : in  std_logic_vector(0 to 18);
      Bus2ip_wrce          : in  std_logic_vector(0 to 18);
      Wr_data              : in  std_logic_vector(C_DWIDTH - 1 downto 0);
      Rd_data              : out std_logic_vector(C_DWIDTH - 1 downto 0);
      Processor_clk        : in  std_logic;                                   --- clock from processor
      processor_rst        : in  std_logic;                                   --- active high reset from processor
      Irq                  : out std_logic;
      Processor_ack        : in  std_logic_vector(1 downto 0);                --- added for fast interrupt mode
      Interrupt_address    : out std_logic_vector(C_ADDR_WIDTH - 1 downto 0); --- added for fast interrupt mode
      Interrupt_address_in : in  std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
      Processor_ack_out    : out std_logic_vector(1 downto 0)
    );

    -------------------------------------------------------------------------------
    -- Attributes
    -------------------------------------------------------------------------------

    attribute buffer_type: string;
    attribute buffer_type of Intr: signal is "none";

end intc_core;

------------------------------------------------------------------------------
-- Architecture
------------------------------------------------------------------------------
architecture imp of intc_core is

    -- Constant Declarations
    -- =====================
    constant C_NUM_INTR   : integer := C_NUM_INTR_INPUTS + C_NUM_SW_INTR;

    constant RESET_ACTIVE : std_logic := '0';

    constant INDEX_BIT    : INTEGER := INTEGER(CEIL(LOG2(REAL(C_NUM_INTR+1))));

    constant IVR_ALL_ONES : std_logic_vector(INDEX_BIT-1 downto 0) := (others => '1');

    function calc_ivar_ram_addr_bits (constant C_NUM_INTR : integer) return integer is
    begin
       if (C_NUM_INTR > 16) then
          return 5;
       else
          return 4;
       end if;
    end function calc_ivar_ram_addr_bits;

    function calc_ivar_ram_depth (constant C_NUM_INTR : integer) return integer is
    begin
       if (C_NUM_INTR > 16) then
          return 32;
       else
          return 16;
       end if;
    end function calc_ivar_ram_depth;

    constant IVAR_MEM_ADDR_LINES : integer := calc_ivar_ram_addr_bits (C_NUM_INTR);
    constant IVAR_MEM_DEPTH      : integer := calc_ivar_ram_depth (C_NUM_INTR);

    -- Signal declarations
    -- ===================
    signal processor_rst_n              : std_logic;

    signal ack_b01                      : std_logic;
    signal first_ack                    : std_logic;
    signal first_ack_active             : std_logic;
    signal second_ack                   : std_logic;
    signal first_ack_sync               : std_logic;
    signal second_ack_sync              : std_logic;
    signal second_ack_sync_d1           : std_logic;
    signal second_ack_sync_d2           : std_logic;
    signal second_ack_sync_d3           : std_logic;
    signal second_ack_sync_mb_clk       : std_logic;

    signal Irq_i                        : std_logic;

    signal ivr_data_in                  : std_logic_vector(INDEX_BIT - 1 downto 0);

    signal wr_data_int                  : std_logic_vector(C_NUM_INTR - 1 downto 0);
    signal mer_int                      : std_logic_vector(1 downto 0);
    signal mer                          : std_logic_vector(C_DWIDTH - 1 downto 0);
    signal sie                          : std_logic_vector(C_NUM_INTR - 1 downto 0);
    signal cie                          : std_logic_vector(C_NUM_INTR - 1 downto 0);
    signal iar                          : std_logic_vector(C_NUM_INTR - 1 downto 0);
    signal ier                          : std_logic_vector(C_NUM_INTR - 1 downto 0);
    signal isr_en                       : std_logic;
    signal hw_intr                      : std_logic_vector(C_NUM_INTR_INPUTS - 1 downto 0);
    signal isr_data_in                  : std_logic_vector(C_NUM_INTR_INPUTS - 1 downto 0);
    signal isr                          : std_logic_vector(C_NUM_INTR - 1 downto 0);
    signal ivr                          : std_logic_vector(INDEX_BIT - 1 downto 0);
    signal ivr_out                      : std_logic_vector(C_DWIDTH - 1 downto 0);
    signal ilr                          : std_logic_vector(INDEX_BIT downto 0);
    signal ilr_out                      : std_logic_vector(C_DWIDTH - 1 downto 0);
    signal imr                          : std_logic_vector(C_NUM_INTR - 1 downto 0);
    signal imr_out                      : std_logic_vector(C_DWIDTH - 1 downto 0);
    signal ipr                          : std_logic_vector(C_DWIDTH - 1 downto 0);
    signal irq_gen_i                    : std_logic;
    signal irq_gen                      : std_logic;
    signal irq_gen_sync                 : std_logic;
    signal read                         : std_logic;
    signal ier_out                      : std_logic_vector(C_DWIDTH - 1 downto 0);
    signal isr_out                      : std_logic_vector(C_DWIDTH - 1 downto 0);
    signal ack_or_i                     : std_logic;
    signal ack_or                       : std_logic;
    signal ack_or_sync                  : std_logic;
    signal read_ivar                    : std_logic_vector(C_IVAR_WE_WIDTH - 1 downto 0);
    signal write_ivar                   : std_logic_vector(C_IVAR_WE_WIDTH - 1 downto 0);
    signal isr_or                       : std_logic;

    signal ivar_index_mb_clk            : std_logic_vector(INDEX_BIT-1 downto 0);
    signal ivar_index_axi_clk           : std_logic_vector(INDEX_BIT-1 downto 0);

    signal in_idle                      : std_logic;
    signal in_idle_axi_clk              : std_logic;
    signal idle_and_irq                 : std_logic;
    signal idle_and_irq_d1              : std_logic;
    signal ivar_index_sample_en_i       : std_logic;
    signal ivar_index_sample_en         : std_logic;
    signal ivar_index_sample_en_mb_clk  : std_logic;
    signal irq_dis_sample_mb_clk        : std_logic;

    signal ivar_addr_axi_clk            : std_logic_vector(4 downto 0);
    signal ivar_rd_addr_mb_clk          : std_logic_vector(4 downto 0);

    signal mer_0_sync                   : std_logic;

    signal ivar_rd_data_axi_clk         : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
    signal ivar_rd_data_mb_clk          : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);

    signal isr_ored_30_0_bits           : std_logic;
    signal Interrupt_address_in_reg_int : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);

    signal intr_31_deassert_info        : std_logic;
    signal intr_31_deasserted_d1        : std_logic;
    signal intr_31_deasserted           : std_logic;

    --------------------------------------------------------------------------------------
    -- Function to convert std_logic to std_logic_vector
    --------------------------------------------------------------------------------------
    Function scalar_to_vector (scalar_in : std_logic) return std_logic_vector is
      variable vec_out : std_logic_vector(0 downto 0) := "0";
    begin
      vec_out(0) := scalar_in;
      return vec_out;
    end function scalar_to_vector;

begin

    -- Active low reset
    processor_rst_n <= not Processor_rst;

    read        <= bus2ip_rdce(0) or -- for ISR
                   bus2ip_rdce(1) or -- for IPR
                   bus2ip_rdce(2) or -- for IER
                   bus2ip_rdce(6) or -- for IVR
                   bus2ip_rdce(7) or -- for MER
                   bus2ip_rdce(8) or -- for IMR
                   bus2ip_rdce(9);   -- for ILR

    --------------------------------------------------------------------------
    -- GENERATING ALL REGISTERS
    --------------------------------------------------------------------------
    wr_data_int <= Wr_data(C_NUM_INTR - 1 downto 0);

    -------------------------------------------------------------------------
    -- GENERATING IVAR ENABLES
    -------------------------------------------------------------------------
    Using_One_WE : if C_IVAR_WE_WIDTH = 1 generate
    begin
      write_ivar(0)     <= bus2ip_wrce(16);
      read_ivar(0)      <= bus2ip_rdce(16);
      ivar_addr_axi_clk <= Reg_addr(4 downto 0);
    end generate Using_One_We;

    Using_Two_WE : if C_IVAR_WE_WIDTH = 2 generate
    begin
      write_ivar(0)     <= bus2ip_wrce(16) or bus2ip_wrce(17);
      write_ivar(1)     <= bus2ip_wrce(18);
      read_ivar(0)      <= bus2ip_rdce(16) or bus2ip_rdce(17);
      read_ivar(1)      <= bus2ip_rdce(18);
      ivar_addr_axi_clk <= Reg_addr(4 downto 0) when bus2ip_rdce(16) = '1' or bus2ip_wrce(16) = '1' else
                           Reg_addr(5 downto 1);
    end generate Using_Two_We;

    --------------------------------------------------------------------------
    -- Process for generating ACK enable and type and syncing them to ACLK
    --------------------------------------------------------------------------
    ACK_EN_SYNC_ON_MB_CLK_GEN: if ((C_HAS_FAST = 1) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
    begin

        NO_CASCADE_MASTER_MODE : if (C_EN_CASCADE_MODE = 0) and (C_CASCADE_MASTER = 0) generate
        begin
            -- Don't bypass the processor ack to output
            Processor_ack_out <= (others => '0');

            Processor_ack_EN_REG_P: process (Processor_ack) is
            begin
                ack_b01 <= (not Processor_ack(1)) and Processor_ack(0); -- ack = b01
            end process Processor_ack_EN_REG_P;

            first_ack_active_REG_P: process (Processor_clk) is
            begin
                if (Processor_clk'event and Processor_clk = '1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        first_ack_active <= '0';
                    else
                        if (ack_b01 = '1') then
                           first_ack_active <= '1';
                        elsif (Processor_ack(1) = '1') then
                           first_ack_active <= '0';
                        else
                           first_ack_active <= first_ack_active;
                        end if;
                    end if;
                end if;
            end process first_ack_active_REG_P;

            first_second_ack_REG_P: process (Processor_clk) is
            begin
                if (Processor_clk'event and Processor_clk = '1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        first_ack  <= '0';
                        second_ack <= '0';
                    else
                        first_ack  <= ack_b01;
                        second_ack <= first_ack_active and Processor_ack(1);
                    end if;
                end if;
            end process first_second_ack_REG_P;

            ACK_EN_SYNC_EN_GEN: if ((C_DISABLE_SYNCHRONIZERS = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
            begin
                -- Synchronize first_ack to AXI clock domain
                Processor_first_ack_EN_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
                port map (
                    CLK_1         => Processor_clk,
                    RESET_1_n     => processor_rst_n,
                    DATA_IN       => first_ack,
                    CLK_2         => Clk,
                    RESET_2_n     => Rst_n,
                    SYNC_DATA_OUT => first_ack_sync
                );

                -- Synchronize second_ack to AXI clock domain
                Processor_second_ack_EN_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
                port map (
                    CLK_1         => Processor_clk,
                    RESET_1_n     => processor_rst_n,
                    DATA_IN       => second_ack,
                    CLK_2         => Clk,
                    RESET_2_n     => Rst_n,
                    SYNC_DATA_OUT => second_ack_sync
                );
            end generate ACK_EN_SYNC_EN_GEN;

            ACK_EN_SYNC_DISABLE_GEN: if ((C_DISABLE_SYNCHRONIZERS = 1) or (C_MB_CLK_NOT_CONNECTED = 1)) generate
            begin
               first_ack_sync  <= first_ack;
               second_ack_sync <= second_ack;
            end generate ACK_EN_SYNC_DISABLE_GEN;

            second_ack_d2_reg_p: process (Clk) is
            begin
                if (Clk'event and Clk = '1') then
                    if (Rst_n = RESET_ACTIVE) then
                        second_ack_sync_d1  <= '0';
                        second_ack_sync_d2  <= '0';
                        second_ack_sync_d3  <= '0';
                    else
                        second_ack_sync_d1  <= second_ack_sync;
                        second_ack_sync_d2  <= second_ack_sync_d1;
                        second_ack_sync_d3  <= second_ack_sync_d2;
                    end if;
                end if;
            end process second_ack_d2_reg_p;

            SECOND_ACK_SYNC_EN_GEN: if ((C_DISABLE_SYNCHRONIZERS = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
            begin
                -- Synchronize Second_ack_sync_d2 back to processor clock domain
                Second_ack_EN_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
                port map (
                    CLK_1         => Clk,
                    RESET_1_n     => Rst_n,
                    DATA_IN       => second_ack_sync_d2,
                    CLK_2         => Processor_clk,
                    RESET_2_n     => processor_rst_n,
                    SYNC_DATA_OUT => second_ack_sync_mb_clk
                );
            end generate SECOND_ACK_SYNC_EN_GEN;

            SECOND_ACK_SYNC_DISABLE_GEN: if ((C_DISABLE_SYNCHRONIZERS = 1) or (C_MB_CLK_NOT_CONNECTED = 1)) generate
            begin
                second_ack_sync_mb_clk <= second_ack_sync_d2;
            end generate SECOND_ACK_SYNC_DISABLE_GEN;

        end generate NO_CASCADE_MASTER_MODE;

        CASCADE_MASTER_MODE_10 : if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 0) generate
        begin
            Processor_ack_out <= (Processor_ack(1) and (not isr_ored_30_0_bits)) & -- to avoid delay the processor is
                                 (Processor_ack(0) and (not isr_ored_30_0_bits));  -- simply passed to below modules
            ack_b01           <= (not Processor_ack(1)) and Processor_ack(0); -- ack = b01

            first_ack_active_REG_P: process (Processor_clk) is
            begin
                if (Processor_clk'event and Processor_clk = '1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        first_ack_active <= '0';
                    else
                        if (ack_b01 = '1')then
                           first_ack_active <= '1';
                        elsif((Processor_ack(1) = '1')
                              ) then
                           first_ack_active <= '0';
                        else
                           first_ack_active <= first_ack_active;
                        end if;
                    end if;
                end if;
            end process first_ack_active_REG_P;

            first_second_ack_REG_P: process (Processor_clk) is
            begin
                if (Processor_clk'event and Processor_clk = '1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        first_ack  <= '0';
                        second_ack <= '0';
                    else
                        first_ack  <= ack_b01;
                        second_ack <= first_ack_active and Processor_ack(1);
                    end if;
                end if;
            end process first_second_ack_REG_P;

            ACK_EN_SYNC_EN_GEN: if ((C_DISABLE_SYNCHRONIZERS = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
            begin
                -- Synchronize first_ack to AXI clock domain
                Processor_first_ack_EN_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
                port map (
                    CLK_1         => Processor_clk,
                    RESET_1_n     => processor_rst_n,
                    DATA_IN       => first_ack,
                    CLK_2         => Clk,
                    RESET_2_n     => Rst_n,
                    SYNC_DATA_OUT => first_ack_sync
                );

                -- Synchronize second_ack to AXI clock domain
                Processor_second_ack_EN_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
                port map (
                    CLK_1         => Processor_clk,
                    RESET_1_n     => processor_rst_n,
                    DATA_IN       => second_ack,
                    CLK_2         => Clk,
                    RESET_2_n     => Rst_n,
                    SYNC_DATA_OUT => second_ack_sync
                );
            end generate ACK_EN_SYNC_EN_GEN;

            ACK_EN_SYNC_DISABLE_GEN: if ((C_DISABLE_SYNCHRONIZERS = 1) or (C_MB_CLK_NOT_CONNECTED = 1)) generate
            begin
                first_ack_sync  <= first_ack;
                second_ack_sync <= second_ack;
            end generate ACK_EN_SYNC_DISABLE_GEN;

            second_ack_d2_reg_p: process (Clk) is
            begin
               if (Clk'event and Clk = '1') then
                   if (Rst_n = RESET_ACTIVE) then
                       second_ack_sync_d1  <= '0';
                       second_ack_sync_d2  <= '0';
                       second_ack_sync_d3  <= '0';
                   else
                       second_ack_sync_d1  <= second_ack_sync;
                       second_ack_sync_d2  <= second_ack_sync_d1;
                       second_ack_sync_d3  <= second_ack_sync_d2;
                   end if;
               end if;
            end process second_ack_d2_reg_p;

            SECOND_ACK_SYNC_EN_GEN: if ((C_DISABLE_SYNCHRONIZERS = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
            begin
                -- Synchronize Second_ack_sync_d2 back to processor clock domain
                Second_ack_EN_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
                port map (
                    CLK_1         => Clk,
                    RESET_1_n     => Rst_n,
                    DATA_IN       => second_ack_sync_d2,
                    CLK_2         => Processor_clk,
                    RESET_2_n     => processor_rst_n,
                    SYNC_DATA_OUT => second_ack_sync_mb_clk
                );
            end generate SECOND_ACK_SYNC_EN_GEN;

            SECOND_ACK_SYNC_DISABLE_GEN: if ((C_DISABLE_SYNCHRONIZERS = 1) or (C_MB_CLK_NOT_CONNECTED = 1)) generate
            begin
                second_ack_sync_mb_clk <= second_ack_sync_d2;
            end generate SECOND_ACK_SYNC_DISABLE_GEN;

        end generate CASCADE_MASTER_MODE_10;

        CASCADE_MASTER_MODE_11 : if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 1) generate
        begin
            Processor_ack_out <= (Processor_ack(1) and (not isr_ored_30_0_bits)) &
                                 (Processor_ack(0) and (not isr_ored_30_0_bits));
            ack_b01           <= (not Processor_ack(1)) and Processor_ack(0); -- ack = b01

            first_ack_active_REG_P: process (Processor_clk) is
            begin
                if (Processor_clk'event and Processor_clk = '1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        first_ack_active <= '0';
                    else
                        if (ack_b01 = '1')then
                           first_ack_active <= '1';
                        elsif((Processor_ack(1) = '1')
                              ) then
                           first_ack_active <= '0';
                        else
                           first_ack_active <= first_ack_active;
                        end if;
                    end if;
                end if;
            end process first_ack_active_REG_P;

            first_second_ack_REG_P: process (Processor_clk) is
            begin
                if (Processor_clk'event and Processor_clk = '1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        first_ack  <= '0';
                        second_ack <= '0';
                    else
                        first_ack  <= ack_b01;
                        second_ack <= first_ack_active and Processor_ack(1);
                    end if;
                end if;
            end process first_second_ack_REG_P;

            ACK_EN_SYNC_EN_GEN: if ((C_DISABLE_SYNCHRONIZERS = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
            begin
                -- Synchronize first_ack to AXI clock domain
                Processor_first_ack_EN_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
                port map (
                    CLK_1         => Processor_clk,
                    RESET_1_n     => processor_rst_n,
                    DATA_IN       => first_ack,
                    CLK_2         => Clk,
                    RESET_2_n     => Rst_n,
                    SYNC_DATA_OUT => first_ack_sync
                );

                -- Synchronize second_ack to AXI clock domain
                Processor_second_ack_EN_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
                port map (
                    CLK_1         => Processor_clk,
                    RESET_1_n     => processor_rst_n,
                    DATA_IN       => second_ack,
                    CLK_2         => Clk,
                    RESET_2_n     => Rst_n,
                    SYNC_DATA_OUT => second_ack_sync
                );
            end generate ACK_EN_SYNC_EN_GEN;

            ACK_EN_SYNC_DISABLE_GEN: if ((C_DISABLE_SYNCHRONIZERS = 1) or (C_MB_CLK_NOT_CONNECTED = 1)) generate
            begin
                first_ack_sync  <= first_ack;
                second_ack_sync <= second_ack;
            end generate ACK_EN_SYNC_DISABLE_GEN;

            second_ack_d2_reg_p: process (Clk) is
            begin
                if (Clk'event and Clk = '1') then
                    if (Rst_n = RESET_ACTIVE) then
                        second_ack_sync_d1  <= '0';
                        second_ack_sync_d2  <= '0';
                        second_ack_sync_d3  <= '0';
                    else
                        second_ack_sync_d1  <= second_ack_sync;
                        second_ack_sync_d2  <= second_ack_sync_d1;
                        second_ack_sync_d3  <= second_ack_sync_d2;
                    end if;
                end if;
            end process second_ack_d2_reg_p;

            SECOND_ACK_SYNC_EN_GEN: if ((C_DISABLE_SYNCHRONIZERS = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
            begin
                -- Synchronize Second_ack_sync_d2 back to processor clock domain
                Second_ack_EN_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
                port map (
                    CLK_1         => Clk,
                    RESET_1_n     => Rst_n,
                    DATA_IN       => second_ack_sync_d2,
                    CLK_2         => Processor_clk,
                    RESET_2_n     => processor_rst_n,
                    SYNC_DATA_OUT => second_ack_sync_mb_clk
                );
            end generate SECOND_ACK_SYNC_EN_GEN;

            SECOND_ACK_SYNC_DISABLE_GEN: if ((C_DISABLE_SYNCHRONIZERS = 1) or (C_MB_CLK_NOT_CONNECTED = 1)) generate
            begin
                second_ack_sync_mb_clk <= second_ack_sync_d2;
            end generate SECOND_ACK_SYNC_DISABLE_GEN;

        end generate CASCADE_MASTER_MODE_11;

    end generate ACK_EN_SYNC_ON_MB_CLK_GEN;

    --------------------------------------------------------------------------
    -- Process for generating ACK enable and type and syncing them to ACLK
    --------------------------------------------------------------------------
    ACK_EN_SYNC_ON_AXI_CLK_GEN: if ((C_HAS_FAST = 1) and (C_MB_CLK_NOT_CONNECTED = 1)) generate
    begin

       NO_CASCADE_MASTER : if (C_EN_CASCADE_MODE = 0) and (C_CASCADE_MASTER = 0) generate
       begin
          -- Don't bypass the processor ack to output
          Processor_ack_out <= (others => '0');

          Processor_ack_EN_REG_P: process (Processor_ack) is
          begin
              ack_b01 <= (not Processor_ack(1)) and Processor_ack(0); -- ack = b01
          end process Processor_ack_EN_REG_P;

          first_ack_active_REG_P: process (Clk) is
          begin
              if (Clk'event and Clk = '1') then
                  if (Rst_n = RESET_ACTIVE) then
                      first_ack_active <= '0';
                  else
                      if (ack_b01 = '1') then
                         first_ack_active <= '1';
                      elsif (Processor_ack(1) = '1') then
                         first_ack_active <= '0';
                      else
                         first_ack_active <= first_ack_active;
                      end if;
                  end if;
              end if;
          end process first_ack_active_REG_P;

          first_second_ack_REG_P: process (Clk) is
          begin
              if (Clk'event and Clk = '1') then
                  if (Rst_n = RESET_ACTIVE) then
                      first_ack  <= '0';
                      second_ack <= '0';
                  else
                      first_ack  <= ack_b01;
                      second_ack <= first_ack_active and Processor_ack(1);
                  end if;
              end if;
          end process first_second_ack_REG_P;

          first_ack_sync  <= first_ack;
          second_ack_sync <= second_ack;

          second_ack_d2_reg_p: process (Clk) is
          begin
              if (Clk'event and Clk = '1') then
                  if (Rst_n = RESET_ACTIVE) then
                      second_ack_sync_d1  <= '0';
                      second_ack_sync_d2  <= '0';
                      second_ack_sync_d3  <= '0';
                  else
                      second_ack_sync_d1  <= second_ack_sync;
                      second_ack_sync_d2  <= second_ack_sync_d1;
                      second_ack_sync_d3  <= second_ack_sync_d2;
                  end if;
              end if;
          end process second_ack_d2_reg_p;

          second_ack_sync_mb_clk <= second_ack_sync_d2;

       end generate NO_CASCADE_MASTER;

       CASCADE_MASTER_MODE_10 : if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 0) generate
       begin
          Processor_ack_out <= (Processor_ack(1) and (not isr_ored_30_0_bits)) &
                               (Processor_ack(0) and (not isr_ored_30_0_bits));
          ack_b01           <= (not Processor_ack(1)) and Processor_ack(0); -- ack = b01

          first_ack_active_REG_P: process (Clk) is
          begin
              if (Clk'event and Clk = '1') then
                  if (Rst_n = RESET_ACTIVE) then
                      first_ack_active <= '0';
                  else
                      if (ack_b01 = '1') then
                         first_ack_active <= '1';
                      elsif((Processor_ack(1) = '1')
                            )then
                         first_ack_active <= '0';
                      else
                         first_ack_active <= first_ack_active;
                      end if;
                  end if;
              end if;
          end process first_ack_active_REG_P;

          first_second_ack_REG_P: process (Clk) is
          begin
              if (Clk'event and Clk = '1') then
                  if (Rst_n = RESET_ACTIVE) then
                      first_ack  <= '0';
                      second_ack <= '0';
                  else
                      first_ack  <= ack_b01;
                      second_ack <= first_ack_active and Processor_ack(1);
                  end if;
              end if;
          end process first_second_ack_REG_P;

          first_ack_sync  <= first_ack;
          second_ack_sync <= second_ack;

          second_ack_d2_reg_p: process (Clk) is
          begin
              if (Clk'event and Clk = '1') then
                  if (Rst_n = RESET_ACTIVE) then
                      second_ack_sync_d1  <= '0';
                      second_ack_sync_d2  <= '0';
                      second_ack_sync_d3  <= '0';
                  else
                      second_ack_sync_d1  <= second_ack_sync;
                      second_ack_sync_d2  <= second_ack_sync_d1;
                      second_ack_sync_d3  <= second_ack_sync_d2;
                  end if;
              end if;
          end process second_ack_d2_reg_p;

          second_ack_sync_mb_clk <= second_ack_sync_d2;

       end generate CASCADE_MASTER_MODE_10;

       CASCADE_MASTER_MODE_11 : if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 1) generate
       begin
          Processor_ack_out <= (Processor_ack(1) and (not isr_ored_30_0_bits)) &
                               (Processor_ack(0) and (not isr_ored_30_0_bits));
          ack_b01           <= (not Processor_ack(1)) and Processor_ack(0); -- ack = b01

          first_ack_active_REG_P: process (Clk) is
          begin
              if (Clk'event and Clk = '1') then
                  if (Rst_n = RESET_ACTIVE) then
                      first_ack_active <= '0';
                  else
                      if (ack_b01 = '1') then
                         first_ack_active <= '1';
                      elsif (Processor_ack(1) = '1') then
                         first_ack_active <= '0';
                      else
                         first_ack_active <= first_ack_active;
                      end if;
                  end if;
              end if;
          end process first_ack_active_REG_P;

          first_second_ack_REG_P: process (Clk) is
          begin
              if (Clk'event and Clk = '1') then
                  if (Rst_n = RESET_ACTIVE) then
                      first_ack  <= '0';
                      second_ack <= '0';
                  else
                      first_ack  <= ack_b01;
                      second_ack <= first_ack_active and Processor_ack(1);
                  end if;
              end if;
          end process first_second_ack_REG_P;

          first_ack_sync  <= first_ack;
          second_ack_sync <= second_ack;

          second_ack_d2_reg_p: process (Clk) is
          begin
              if (Clk'event and Clk = '1') then
                  if (Rst_n = RESET_ACTIVE) then
                      second_ack_sync_d1  <= '0';
                      second_ack_sync_d2  <= '0';
                      second_ack_sync_d3  <= '0';
                  else
                      second_ack_sync_d1  <= second_ack_sync;
                      second_ack_sync_d2  <= second_ack_sync_d1;
                      second_ack_sync_d3  <= second_ack_sync_d2;
                  end if;
              end if;
          end process second_ack_d2_reg_p;

          second_ack_sync_mb_clk <= second_ack_sync_d2;

       end generate CASCADE_MASTER_MODE_11;

    end generate ACK_EN_SYNC_ON_AXI_CLK_GEN;

    SECOND_ACK_FAST_0_GEN: if (C_HAS_FAST = 0) generate
    begin
       second_ack_sync_mb_clk <= ack_or_sync;
       Processor_ack_out      <= (others => '0');
    end generate SECOND_ACK_FAST_0_GEN;

    --------------------------------------------------------------------------
    -- Process MER_ME_P for MER ME bit generation
    --------------------------------------------------------------------------
    MER_ME_P: process (Clk) is
    begin
       if (Clk'event and Clk = '1') then
           if (Rst_n = RESET_ACTIVE) then
               mer_int(0) <= '0';
           elsif (bus2ip_wrce(7) = '1') then
               mer_int(0) <= Wr_data(0);
           end if;
       end if;
    end process MER_ME_P;

    --------------------------------------------------------------------------
    -- Process MER_HIE_P for generating MER HIE bit
    --------------------------------------------------------------------------
    MER_HIE_P: process (Clk)is
    begin
       if (Clk'event and Clk = '1') then
           if (Rst_n = RESET_ACTIVE) then
               mer_int(1) <= '0';
           elsif ((bus2ip_wrce(7) = '1') and (mer_int(1) = '0')) then
               mer_int(1) <= Wr_data(1);
           end if;
       end if;
    end process MER_HIE_P;

    mer(1 downto 0) <= mer_int;
    mer(C_DWIDTH - 1 downto 2) <= (others => '0');

    ----------------------------------------------------------------------
    -- Generate SIE if (C_HAS_SIE = 1)
    ----------------------------------------------------------------------
    SIE_GEN: if (C_HAS_SIE = 1) generate
    begin
       SIE_BIT_GEN : for i in 0 to (C_NUM_INTR - 1) generate
       begin
           --------------------------------------------------------------
           -- Process SIE_P for generating SIE register
           --------------------------------------------------------------
           SIE_P: process (Clk) is
           begin
               if (Clk'event and Clk = '1') then
                   if ((Rst_n = RESET_ACTIVE) or (sie(i) = '1')) then
                       sie(i) <= '0';
                   elsif (bus2ip_wrce(4) = '1') then
                       sie(i) <= wr_data_int(i);
                   end if;
               end if;
           end process SIE_P;
       end generate SIE_BIT_GEN;
    end generate SIE_GEN;

    ----------------------------------------------------------------------
    -- Assign sie_out ALL ZEROS if (C_HAS_SIE = 0)
    ----------------------------------------------------------------------
    SIE_NO_GEN: if (C_HAS_SIE = 0) generate
    begin
       sie <= (others => '0');
    end generate SIE_NO_GEN;

    ----------------------------------------------------------------------
    -- Generate CIE if (C_HAS_CIE = 1)
    ----------------------------------------------------------------------
    CIE_GEN: if (C_HAS_CIE = 1) generate
    begin
       CIE_BIT_GEN : for i in 0 to (C_NUM_INTR - 1) generate
       begin
           ------------------------------------------------------------------
           -- Process CIE_P for generating CIE register
           ------------------------------------------------------------------
           CIE_P: process (Clk) is
           begin
               if (Clk'event and Clk = '1') then
                   if ((Rst_n = RESET_ACTIVE) or (cie(i) = '1')) then
                       cie(i) <= '0';
                   elsif (bus2ip_wrce(5) = '1') then
                       cie(i) <= wr_data_int(i);
                   end if;
               end if;
           end process CIE_P;
       end generate CIE_BIT_GEN;
    end generate CIE_GEN;

    ----------------------------------------------------------------------
    -- Assign cie_out ALL ZEROS if (C_HAS_CIE = 0)
    ----------------------------------------------------------------------
    CIE_NO_GEN: if (C_HAS_CIE = 0) generate
    begin
       cie <= (others => '0');
    end generate CIE_NO_GEN;

    -- Generating write enable & data input for ISR
    isr_en      <= mer(1) or bus2ip_wrce(0);
    isr_data_in <= hw_intr when mer(1) = '1' else
                   Wr_data(C_NUM_INTR_INPUTS - 1 downto 0);

    --------------------------------------------------------------------------
    -- Generate Registers of width equal C_NUM_INTR
    --------------------------------------------------------------------------
    REG_GEN : for i in 0 to (C_NUM_INTR - 1) generate
    begin

        IAR_NORMAL_MODE_GEN: if (C_HAS_FAST = 0) generate
        begin
             ----------------------------------------------------------------------
             -- Process FAST_IAR_BIT_P for generating IAR register
             ----------------------------------------------------------------------
             IAR_NORMAL_BIT_P:  process (Clk) is
             begin
                 if (Clk'event and Clk = '1') then
                     if (Rst_n = RESET_ACTIVE) or (iar(i) = '1') then
                         iar(i) <= '0';
                     elsif ((bus2ip_wrce(3) = '1')) then
                         iar(i) <= wr_data_int(i);
                     else
                         iar(i) <= '0';
                     end if;
                 end if;
             end process IAR_NORMAL_BIT_P;

        end generate IAR_NORMAL_MODE_GEN;

        IAR_FAST_MODE_GEN: if (C_HAS_FAST = 1) generate
        begin
             ----------------------------------------------------------------------
             -- Process FAST_IAR_BIT_P for generating IAR register
             ----------------------------------------------------------------------
             IAR_FAST_BIT_P:  process (Clk) is
             begin
                 if (Clk'event and Clk = '1') then
                     if (Rst_n = RESET_ACTIVE) or (iar(i) = '1') then
                         iar(i) <= '0';
                     elsif ((bus2ip_wrce(3) = '1') and (imr(i) = '0')) then
                         iar(i) <= wr_data_int(i);
                     elsif (imr(i) = '1') then
                       if (((C_KIND_OF_INTR(i) = '1') and (first_ack_sync = '1')) or
                           ((C_KIND_OF_INTR(i) = '0') and (second_ack_sync = '1'))) then
                           -- clearing IAR based on Processor_ack in FAST_INTERRUPT mode
                           if (i = TO_INTEGER(unsigned(ivar_index_axi_clk))) then
                             iar(i) <= '1';
                           else
                             iar(i) <= iar(i);
                           end if;
                       else
                         iar(i) <= iar(i);
                       end if;
                     else
                       iar(i) <= iar(i);
                     end if;
                 end if;
             end process IAR_FAST_BIT_P;

        end generate IAR_FAST_MODE_GEN;

        ----------------------------------------------------------------------
        -- Process IER_BIT_P for generating IER register
        ----------------------------------------------------------------------
        IER_BIT_P: process (Clk) is
        begin
            if (Clk'event and Clk = '1') then
                if ((Rst_n = RESET_ACTIVE) or (cie(i) = '1')) then
                    ier(i) <= '0';
                elsif (sie(i) = '1') then
                    ier(i) <= '1';
                elsif (bus2ip_wrce(2) = '1') then
                    ier(i) <= wr_data_int(i);
                end if;
            end if;
        end process IER_BIT_P;

        ----------------------------------------------------------------------
        -- Process ISR_P for generating ISR register
        ----------------------------------------------------------------------
        ISR_P: process (Clk) is
        begin
            if (Clk'event and Clk = '1') then
                if ((Rst_n = RESET_ACTIVE) or (iar(i) = '1'))  then
                    isr(i) <= '0';
                elsif (i < C_NUM_INTR_INPUTS) then
                  if (isr_en = '1') then
                    isr(i) <= isr_data_in(i);
                  end if;
                elsif (i >= C_NUM_INTR_INPUTS) then
                  if (bus2ip_wrce(0) = '1') then
                    isr(i) <= Wr_data(i);
                  end if;
                end if;
            end if;
        end process ISR_P;

        ----------------------------------------------------------------------
        -- Process IMR_P for generating IMR(Interrrupt Mode Register) Register
        ----------------------------------------------------------------------
        IMR_FAST_MODE_GEN: if (C_HAS_FAST = 1) generate
        begin
            IMR_P: process (Clk) is
            begin
                if (Clk'event and Clk = '1') then
                    if (Rst_n = RESET_ACTIVE) then
                        imr(i) <= '0';
                    elsif bus2ip_wrce(8) = '1'  then
                        imr(i) <= wr_data_int(i);
                    end if;
                end if;
            end process IMR_P;
        end generate IMR_FAST_MODE_GEN;

        IMR_NORMAL_MODE_GEN: if (C_HAS_FAST = 0) generate
        begin
          imr <= (others => '0');
        end generate IMR_NORMAL_MODE_GEN;

    end generate REG_GEN;

    ---------------------------------------------------------------------------
    -- Proces IVAR_REG_P for generating IVAR Registers
    ---------------------------------------------------------------------------
    IVAR_FAST_MODE_GEN: if (C_HAS_FAST = 1) generate
      signal ivar_wr_data : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
    begin
        ivar_wr_data(C_DWIDTH - 1 downto 0) <= wr_data;

        IVAR_EA: if C_ADDR_WIDTH > C_DWIDTH generate
        begin
          ivar_wr_data(C_ADDR_WIDTH - 1 downto C_DWIDTH) <= wr_data(C_ADDR_WIDTH - 1 - C_DWIDTH downto 0);
        end generate IVAR_EA;

        IVAR_REG_MEM_MB_CLK_GEN: if (C_MB_CLK_NOT_CONNECTED = 0) generate
        begin
            IVAR_REG_MEM_I: entity axi_intc_v4_1_12.shared_ram_ivar
                generic map (
                    C_WIDTH       => C_ADDR_WIDTH,
                    C_DPRAM_DEPTH => IVAR_MEM_DEPTH,
                    C_ADDR_LINES  => IVAR_MEM_ADDR_LINES,
                    C_WE_WIDTH    => C_IVAR_WE_WIDTH,
                    C_RESET_VALUE => C_IVAR_RESET_VALUE
                )
                port map (
                    Addra => ivar_addr_axi_clk(IVAR_MEM_ADDR_LINES-1 downto 0),
                    Addrb => ivar_rd_addr_mb_clk(IVAR_MEM_ADDR_LINES-1 downto 0),
                    Clka  => Clk,
                    Clkb  => Processor_clk,
                    Dina  => ivar_wr_data,
                    Wea   => write_ivar,
                    Douta => ivar_rd_data_axi_clk,
                    Doutb => ivar_rd_data_mb_clk
                );
        end generate IVAR_REG_MEM_MB_CLK_GEN;

        IVAR_REG_MEM_AXI_CLK_GEN: if (C_MB_CLK_NOT_CONNECTED = 1) generate
        begin
            IVAR_REG_MEM_I: entity axi_intc_v4_1_12.shared_ram_ivar
                generic map (
                    C_WIDTH       => C_ADDR_WIDTH,
                    C_DPRAM_DEPTH => IVAR_MEM_DEPTH,
                    C_ADDR_LINES  => IVAR_MEM_ADDR_LINES,
                    C_WE_WIDTH    => C_IVAR_WE_WIDTH,
                    C_RESET_VALUE => C_IVAR_RESET_VALUE
                )
                port map (
                    Addra => ivar_addr_axi_clk(IVAR_MEM_ADDR_LINES-1 downto 0),
                    Addrb => ivar_rd_addr_mb_clk(IVAR_MEM_ADDR_LINES-1 downto 0),
                    Clka  => Clk,
                    Clkb  => Clk,
                    Dina  => ivar_wr_data,
                    Wea   => write_ivar,
                    Douta => ivar_rd_data_axi_clk,
                    Doutb => ivar_rd_data_mb_clk
                );
        end generate IVAR_REG_MEM_AXI_CLK_GEN;
    end generate IVAR_FAST_MODE_GEN;

    -----------------------------------------------------------------------
    -- Generating ier_out & isr_out if C_NUM_INTR /= C_DWIDTH
    -----------------------------------------------------------------------
    REG_OUT_GEN_DWIDTH_NOT_EQ_NUM_INTR: if (C_NUM_INTR /= C_DWIDTH) generate
    begin
        ier_out(C_NUM_INTR - 1 downto 0) <= ier;
        ier_out(C_DWIDTH - 1 downto C_NUM_INTR) <= (others => '0');

        isr_out(C_NUM_INTR - 1 downto 0) <= isr;
        isr_out(C_DWIDTH - 1 downto C_NUM_INTR) <= (others => '0');

        imr_out(C_NUM_INTR - 1 downto 0) <= imr;
        imr_out(C_DWIDTH - 1 downto C_NUM_INTR) <= (others => '0');

        isr_ored_30_0_bits <= or_reduce(isr(C_NUM_INTR-1 downto 0));
    end generate REG_OUT_GEN_DWIDTH_NOT_EQ_NUM_INTR;

    ------------------------------------------------------------------------
    -- Generating ier_out & isr_out if C_NUM_INTR = C_DWIDTH
    ------------------------------------------------------------------------
    REG_OUT_GEN_DWIDTH_EQ_NUM_INTR: if (C_NUM_INTR = C_DWIDTH) generate
    begin
        ier_out <= ier;
        isr_out <= isr;
        imr_out <= imr;
        isr_ored_30_0_bits <= or_reduce(isr(C_NUM_INTR-2 downto 0));
    end generate REG_OUT_GEN_DWIDTH_EQ_NUM_INTR;

    ilr_out (INDEX_BIT-1 downto 0) <= ilr(INDEX_BIT - 1 downto 0);
    ilr_out (C_DWIDTH-1 downto INDEX_BIT) <= (others => '1') when ilr(INDEX_BIT) = '1' else
                                             (others => '0');

    ivr_out (INDEX_BIT-1 downto 0) <= ivr;
    ivr_out (C_DWIDTH-1 downto INDEX_BIT) <= (others => '1') when ((ivr = IVR_ALL_ONES)) else
                                             (others => '0');

    --------------------------------------------------------------------------
    -- Generate IPR if (C_HAS_IPR = 1)
    --------------------------------------------------------------------------
    IPR_GEN: if (C_HAS_IPR = 1) generate
    begin
        ----------------------------------------------------------------------
        -- Process IPR_P for generating IPR register
        ----------------------------------------------------------------------
        IPR_P: process (Clk) is
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    ipr <= (others => '0');
                else
                    ipr <= isr_out and ier_out;
                end if;
            end if;
        end process IPR_P;

    end generate IPR_GEN;

    --------------------------------------------------------------------------
    -- Assign IPR ALL ZEROS if (C_HAS_IPR = 0)
    --------------------------------------------------------------------------
    IPR_NO_GEN: if (C_HAS_IPR = 0) generate
    begin
        ipr <= (others => '0');
    end generate IPR_NO_GEN;

    --------------------------------------------------------------------------
    -- Generate IVR if (C_HAS_IVR = 1 or C_HAS_FAST = 1)
    --------------------------------------------------------------------------
    IVR_GEN: if ((C_HAS_IVR = 1) or (C_HAS_FAST = 1)) generate
    begin
        ----------------------------------------------------------------------
        -- Process IVR_DATA_GEN_P for generating interrupt vector address
        ----------------------------------------------------------------------
        IVR_DATA_GEN_P: process (isr, ier) is
            variable ivr_in : std_logic_vector(INDEX_BIT - 1 downto 0) := (others => '1');
        begin
            for i in natural range 0 to (C_NUM_INTR - 1) loop
                if ((isr(i) = '1') and (ier(i) = '1')) then
                    --ivr_in := CONV_STD_LOGIC_VECTOR(i, INDEX_BIT);
                    ivr_in := std_logic_vector(to_unsigned(i, INDEX_BIT));
                    exit;
                else
                    ivr_in := (others => '1');
                end if;
            end loop;
            ivr_data_in <= ivr_in;
        end process IVR_DATA_GEN_P;

        ----------------------------------------------------------------------
        -- Process IVR_P for generating IVR register
        ----------------------------------------------------------------------
        IVR_P: process (Clk) is
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    ivr <= (others => '1');
                else
                    ivr <= ivr_data_in;
                end if;
            end if;
        end process IVR_P;
    end generate IVR_GEN;

    --------------------------------------------------------------------------
    -- Assign IVR ALL ONES if (C_HAS_IVR = 0) and (C_HAS_FAST = 0)
    --------------------------------------------------------------------------
    IVR_NO_GEN: if ((C_HAS_IVR = 0) and (C_HAS_FAST = 0)) generate
    begin
        ivr <= (others => '1');
    end generate IVR_NO_GEN;

    --------------------------------------------------------------------------
    -- Generate ILR if (C_HAS_ILR = 1)
    --------------------------------------------------------------------------
    ILR_GEN: if (C_HAS_ILR = 1) generate
    begin
        ----------------------------------------------------------------------
        -- Process ILR_P for generating ILR register
        ----------------------------------------------------------------------
        ILR_P: process (Clk) is
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    ilr <= (others => '1');
                elsif (bus2ip_wrce(9) = '1') then
                    ilr <= Wr_data(INDEX_BIT downto 0);
                end if;
            end if;
        end process ILR_P;
    end generate ILR_GEN;

    --------------------------------------------------------------------------
    -- Assign ILR ALL ONES if (C_HAS_ILR = 0)
    --------------------------------------------------------------------------
    ILR_NO_GEN: if (C_HAS_ILR = 0) generate
    begin
        ilr <= (others => '1');
    end generate ILR_NO_GEN;

    --------------------------------------------------------------------------
    --                      DETECTING HW INTERRUPT
    --------------------------------------------------------------------------
    ---------------------------------------------------------------------------
    -- Detecting the interrupts
    ---------------------------------------------------------------------------
    INTR_DETECT_GEN: for i in 0 to C_NUM_INTR_INPUTS - 1 generate
        signal synced_intr : std_logic := '0';
    begin
        -----------------------------------------------------------------------
        -- Generating the synchronization flip-flops if C_ASYNC_INTR(i) = 1
        -----------------------------------------------------------------------
        ASYNC_GEN: if C_ASYNC_INTR(i) = '1' and C_NUM_SYNC_FF > 0 generate
            signal intr_ff : std_logic_vector(0 to C_NUM_SYNC_FF - 1) := (others => '0');
            attribute ASYNC_REG : string;
            attribute ASYNC_REG of intr_ff : signal is "TRUE";
        begin
            --------------------------------------------
            -- Process SYNC_P to synchronize hw_intr
            --------------------------------------------
            SYNC_P : process (Clk) is
            begin
                if Clk'event and Clk = '1' then
                  intr_ff(0) <= Intr(i);
                  for k in intr_ff'left to intr_ff'right - 1 loop
                    intr_ff(k + 1) <= intr_ff(k);
                  end loop;
                end if;
            end process SYNC_P;

            synced_intr <= intr_ff(intr_ff'right);
        end generate ASYNC_GEN;

        -----------------------------------------------------------------------
        -- No synchronization flip-flops if C_ASYNC_INTR(i) = 0
        -----------------------------------------------------------------------
        SYNC_GEN: if C_ASYNC_INTR(i) = '0' or C_NUM_SYNC_FF = 0 generate
        begin
            synced_intr <= Intr(i);
        end generate SYNC_GEN;

        -----------------------------------------------------------------------
        -- Generating the edge triggered interrupts if C_KIND_OF_INTR(i) = 1
        -----------------------------------------------------------------------
        EDGE_DETECT_GEN: if C_KIND_OF_INTR(i) = '1' generate
            signal intr_d1   : std_logic;
            signal intr_edge : std_logic;
        begin
            ----------------------------------------------------------------
            -- Process REG_INTR_EDGE_P to register the interrupt signal edge
            ----------------------------------------------------------------
            REG_INTR_EDGE_P : process (Clk) is
            begin
                if(Clk'event and Clk='1') then
                    if Rst_n = RESET_ACTIVE then
                        intr_d1 <= not C_KIND_OF_EDGE(i);
                    else
                        intr_d1 <= synced_intr;
                    end if;
                end if;
            end process REG_INTR_EDGE_P;

            -- Creating one-shot edge triggered interrupt
            intr_edge <= '1' when (synced_intr =     C_KIND_OF_EDGE(i)) and
                                  (intr_d1     = not C_KIND_OF_EDGE(i)) else
                         '0';

            -----------------------------------------------------------------
            -- Process DETECT_INTR_P to generate the edge triggered interrupt
            -----------------------------------------------------------------
            DETECT_INTR_P : process (Clk) is
            begin
                if Clk'event and Clk='1' then
                    if (Rst_n = RESET_ACTIVE) or (iar(i) = '1') then
                        hw_intr(i) <= '0';
                    elsif (intr_edge = '1') then
                        hw_intr(i) <= '1';
                    end if;
                end if;
            end process DETECT_INTR_P;

        end generate EDGE_DETECT_GEN;

        ----------------------------------------------------------------------
        -- Generating the Level trigeered interrupts if C_KIND_OF_INTR(i) = 0
        ----------------------------------------------------------------------
        LVL_DETECT_GEN: if C_KIND_OF_INTR(i) = '0' generate
        begin
            ------------------------------------------------------------------
            -- Process LVL_P to generate hw_intr (active high or low)
            ------------------------------------------------------------------
            LVL_P : process (Clk) is
            begin
                if Clk'event and Clk = '1' then
                    if (Rst_n = RESET_ACTIVE) or (iar(i) = '1') then
                        hw_intr(i) <= '0';
                    elsif synced_intr = C_KIND_OF_LVL(i) then
                        hw_intr(i) <= '1';
                    end if;
                end if;
            end process LVL_P;

        end generate LVL_DETECT_GEN;
    end generate INTR_DETECT_GEN;

    --------------------------------------------------------------------------
    -- Checking Active Interrupt/Interrupts
    --------------------------------------------------------------------------
    IRQ_ONE_INTR_GEN: if (C_NUM_INTR = 1) generate
    begin
        irq_gen_i<= isr(0) and ier(0) and ilr(0);
    end generate IRQ_ONE_INTR_GEN;

    IRQ_MULTI_INTR_GEN: if (C_NUM_INTR > 1) generate
    begin
        --------------------------------------------------------------
        -- Process IRQ_GEN_P to generate irq_gen
        --------------------------------------------------------------
        IRQ_GEN_P: process (isr, ier, ilr) is
            variable ilr_value   : integer;
            variable irq_gen_int : std_logic;
        begin
            ilr_value   := TO_INTEGER(unsigned( ilr(INDEX_BIT - 1 downto 0) ));
            irq_gen_int := '0';
            for i in 0 to (isr'length - 1) loop
                if (C_HAS_ILR = 1) then
                    exit when (i = ilr_value) and (ilr(INDEX_BIT) = '0');
                end if;
                irq_gen_int := irq_gen_int or (isr(i) and ier(i));
            end loop;
            irq_gen_i <= irq_gen_int;
        end process IRQ_GEN_P;

    end generate IRQ_MULTI_INTR_GEN;

    -- Registering irq_gen_i as it will be going through double synchronizer
    IRQ_GEN_REG_P : Process(Clk)is
    begin
        if (Clk'event and Clk = '1') then
            if (Rst_n = RESET_ACTIVE) then
                irq_gen   <= '0';
            else
                irq_gen   <= irq_gen_i;
            end if;
        end if;
    end process IRQ_GEN_REG_P;

    --------------------------------------------------------------
    -- Synchronizing irq_gen
    --------------------------------------------------------------
    IRQ_GEN_SYNC_GEN: if ((C_DISABLE_SYNCHRONIZERS = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
        signal irq_gen_sync_vec : std_logic_vector(0 downto 0);
    begin
        -- Synchronize irq_gen to Processor clock domain
        IRQ_GEN_DOUBLE_SYNC_I: entity axi_intc_v4_1_12.double_synchronizer
        generic map (
            C_DWIDTH => 1
        )
        port map (
            CLK_2         => Processor_clk,
            RESET_2_n     => processor_rst_n,
            DATA_IN       => scalar_to_vector(irq_gen),
            SYNC_DATA_OUT => irq_gen_sync_vec
        );

        irq_gen_sync <= irq_gen_sync_vec(0);
    end generate IRQ_GEN_SYNC_GEN;

    IRQ_GEN_SYNC_DISABLE_GEN: if ((C_DISABLE_SYNCHRONIZERS = 1) or (C_MB_CLK_NOT_CONNECTED = 1)) generate
    begin
        irq_gen_sync <= irq_gen;
    end generate IRQ_GEN_SYNC_DISABLE_GEN;

    ---------------------------------------------------------------
    -- Process to synchronize irq_gen and "ivar" to Processor Clock
    ---------------------------------------------------------------
    IVAR_INDEX_SYNC_GEN: if ((C_HAS_FAST = 1) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
    begin
        IN_IDLE_SYNC_EN_GEN: if (C_DISABLE_SYNCHRONIZERS = 0) generate
            signal in_idle_axi_clk_vec : std_logic_vector(0 downto 0);
        begin
            IN_IDLE_DOUBLE_SYNC_I: entity axi_intc_v4_1_12.double_synchronizer
            generic map (
                C_DWIDTH => 1
            )
            port map (
                CLK_2         => Clk,
                RESET_2_n     => Rst_n,
                DATA_IN       => scalar_to_vector(in_idle),
                SYNC_DATA_OUT => in_idle_axi_clk_vec
            );

            in_idle_axi_clk <= in_idle_axi_clk_vec(0);
        end generate IN_IDLE_SYNC_EN_GEN;

        IN_IDLE_SYNC_DISABLE_GEN: if (C_DISABLE_SYNCHRONIZERS = 1) generate
        begin
            in_idle_axi_clk <= in_idle;
        end generate IN_IDLE_SYNC_DISABLE_GEN;

        idle_and_irq <= in_idle_axi_clk and irq_gen_i and mer(0);

        IDLE_IRQ_DELAY_P : Process(Clk)
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    idle_and_irq_d1 <= '0';
                else
                    idle_and_irq_d1 <= idle_and_irq;
                end if;
            end if;
        end process IDLE_IRQ_DELAY_P;

        ivar_index_sample_en_i <= idle_and_irq and (not idle_and_irq_d1);

        SAMPLE_REG_P : Process(Clk)
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    ivar_index_sample_en <= '0';
                else
                    ivar_index_sample_en <= ivar_index_sample_en_i;
                end if;
            end if;
        end process SAMPLE_REG_P;

        IVAR_INDEX_SYNC_EN_GEN: if (C_DISABLE_SYNCHRONIZERS = 0) generate
        begin
            IRQ_GEN_EDGE_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
            port map (
                CLK_1         => Clk,
                RESET_1_n     => Rst_n,
                DATA_IN       => ivar_index_sample_en,
                CLK_2         => Processor_clk,
                RESET_2_n     => processor_rst_n,
                SYNC_DATA_OUT => ivar_index_sample_en_mb_clk
            );
        end generate IVAR_INDEX_SYNC_EN_GEN;

        IVAR_INDEX_SYNC_DISABLE_GEN: if (C_DISABLE_SYNCHRONIZERS = 1) generate
        begin
            ivar_index_sample_en_mb_clk <= ivar_index_sample_en;
        end generate IVAR_INDEX_SYNC_DISABLE_GEN;

        IVAR_INDEX_AXI_REG_P : Process(Clk)
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    ivar_index_axi_clk <= (others => '0');
                else
                    if (ivar_index_sample_en_i = '1') then
                       ivar_index_axi_clk <= ivr_data_in;
                    else
                       ivar_index_axi_clk <= ivar_index_axi_clk;
                    end if;
                end if;
            end if;
        end process IVAR_INDEX_AXI_REG_P;

        IVAR_INDEX_MB_REG_P : Process(Processor_clk)
        begin
            if (Processor_clk'event and Processor_clk = '1') then
                if (processor_rst_n = RESET_ACTIVE) then
                    ivar_index_mb_clk <= (others => '0');
                else
                    if (ivar_index_sample_en_mb_clk = '1') then
                       ivar_index_mb_clk <= ivar_index_axi_clk;
                    else
                       ivar_index_mb_clk <= ivar_index_mb_clk;
                    end if;
                end if;
            end if;
        end process IVAR_INDEX_MB_REG_P;

        ivar_rd_addr_mb_clk <= std_logic_vector(to_unsigned(TO_INTEGER(unsigned(ivar_index_mb_clk)), 5));
    end generate IVAR_INDEX_SYNC_GEN;

    ---------------------------------------------------------------------
    -- Process to synchronize irq_gen disable to Processor Clock with ILR
    ---------------------------------------------------------------------
    IRQ_DIS_SYNC_GEN: if ((C_HAS_FAST = 1) and (C_MB_CLK_NOT_CONNECTED = 0) and (C_HAS_ILR = 1)) generate
        signal irq_dis          : std_logic;
        signal irq_dis_d1       : std_logic;
        signal irq_dis_sample_i : std_logic;
        signal irq_dis_sample   : std_logic;
    begin
        irq_dis <= not irq_gen_i;

        IDLE_NOT_IRQ_DELAY_P : Process(Clk)
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    irq_dis_d1 <= '0';
                else
                    irq_dis_d1 <= irq_dis;
                end if;
            end if;
        end process IDLE_NOT_IRQ_DELAY_P;

        irq_dis_sample_i <= irq_dis and (not irq_dis_d1);

        SAMPLE_REG_P : Process(Clk)
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    irq_dis_sample <= '0';
                else
                    irq_dis_sample <= irq_dis_sample_i;
                end if;
            end if;
        end process SAMPLE_REG_P;

        IRQ_DIS_SYNC_EN_GEN: if (C_DISABLE_SYNCHRONIZERS = 0) generate
        begin
            IRQ_GEN_EDGE_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
            port map (
                CLK_1         => Clk,
                RESET_1_n     => Rst_n,
                DATA_IN       => irq_dis_sample,
                CLK_2         => Processor_clk,
                RESET_2_n     => processor_rst_n,
                SYNC_DATA_OUT => irq_dis_sample_mb_clk
            );
        end generate IRQ_DIS_SYNC_EN_GEN;

        IRQ_DIS_SYNC_DISABLE_GEN: if (C_DISABLE_SYNCHRONIZERS = 1) generate
        begin
            irq_dis_sample_mb_clk <= irq_dis_sample;
        end generate IRQ_DIS_SYNC_DISABLE_GEN;
    end generate IRQ_DIS_SYNC_GEN;

    ---------------------------------------------------------------
    -- Process to synchronize irq_gen and "ivar" to Processor Clock
    ---------------------------------------------------------------
    IVAR_INDEX_SYNC_ON_AXI_CLK_GEN: if ((C_HAS_FAST = 1) and (C_MB_CLK_NOT_CONNECTED = 1)) generate
    begin
        in_idle_axi_clk <= in_idle;

        idle_and_irq <= in_idle_axi_clk and irq_gen and mer(0);

        IDLE_IRQ_DELAY_P : Process(Clk)
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    idle_and_irq_d1 <= '0';
                else
                    idle_and_irq_d1 <= idle_and_irq;
                end if;
            end if;
        end process IDLE_IRQ_DELAY_P;

        ivar_index_sample_en_i <= idle_and_irq and (not idle_and_irq_d1);

        SAMPLE_REG_P : Process(Clk)
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    ivar_index_sample_en <= '0';
                else
                    ivar_index_sample_en <= ivar_index_sample_en_i;
                end if;
            end if;
        end process SAMPLE_REG_P;

        ivar_index_sample_en_mb_clk <= ivar_index_sample_en;

        IVAR_INDEX_AXI_REG_P : Process(Clk)
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    ivar_index_axi_clk <= (others => '0');
                else
                    if (ivar_index_sample_en_i = '1') then
                       ivar_index_axi_clk <= ivr;
                    else
                       ivar_index_axi_clk <= ivar_index_axi_clk;
                    end if;
                end if;
            end if;
        end process IVAR_INDEX_AXI_REG_P;

        ivar_index_mb_clk <= ivar_index_axi_clk;
        ivar_rd_addr_mb_clk <= std_logic_vector(to_unsigned(TO_INTEGER(unsigned(ivar_index_mb_clk)), 5));
    end generate IVAR_INDEX_SYNC_ON_AXI_CLK_GEN;

    ---------------------------------------------------------------------
    -- Process to synchronize irq_gen disable to Processor Clock with ILR
    ---------------------------------------------------------------------
    IRQ_DIS_SYNC_ON_AXI_CLK_GEN: if ((C_HAS_FAST = 1) and (C_MB_CLK_NOT_CONNECTED = 1) and (C_HAS_ILR = 1)) generate
        signal irq_dis          : std_logic;
        signal irq_dis_d1       : std_logic;
        signal irq_dis_sample_i : std_logic;
        signal irq_dis_sample   : std_logic;
    begin
        irq_dis <= not irq_gen;

        IDLE_IRQ_DELAY_P : Process(Clk)
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    irq_dis_d1 <= '0';
                else
                    irq_dis_d1 <= irq_dis;
                end if;
            end if;
        end process IDLE_IRQ_DELAY_P;

        irq_dis_sample_i <= irq_dis and (not irq_dis_d1);

        SAMPLE_REG_P : Process(Clk)
        begin
            if (Clk'event and Clk = '1') then
                if (Rst_n = RESET_ACTIVE) then
                    irq_dis_sample <= '0';
                else
                    irq_dis_sample <= irq_dis_sample_i;
                end if;
            end if;
        end process SAMPLE_REG_P;

        irq_dis_sample_mb_clk <= irq_dis_sample;
    end generate IRQ_DIS_SYNC_ON_AXI_CLK_GEN;

    NO_IRQ_DIS_SYNC: if (C_HAS_FAST = 0) or (C_HAS_ILR = 0) generate
    begin
        irq_dis_sample_mb_clk <= '0';
    end generate NO_IRQ_DIS_SYNC;

    ----------------------------------------------------------------------
    -- MER_0_DOUBLE_SYNC_I to synchronize MER(0) with Processor_clk
    ----------------------------------------------------------------------
    MER_SYNC_EN_GEN: if ((C_DISABLE_SYNCHRONIZERS = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
        signal mer_0_sync_vec : std_logic_vector(0 downto 0);
    begin
        -- Synchronize mer(0) to Processor clock domain
        MER_0_DOUBLE_SYNC_I: entity axi_intc_v4_1_12.double_synchronizer
        generic map (
            C_DWIDTH => 1
        )
        port map (
            CLK_2         => Processor_clk,
            RESET_2_n     => processor_rst_n,
            DATA_IN       => scalar_to_vector(mer(0)),
            SYNC_DATA_OUT => mer_0_sync_vec
        );

        mer_0_sync <= mer_0_sync_vec(0);
    end generate MER_SYNC_EN_GEN;

    MER_SYNC_DISABLE_GEN: if ((C_DISABLE_SYNCHRONIZERS = 1) or (C_MB_CLK_NOT_CONNECTED = 1)) generate
    begin
        mer_0_sync <= mer(0);
    end generate MER_SYNC_DISABLE_GEN;

    --------------------------------------------------------------------------
    -- Generating LEVEL interrupt if C_IRQ_IS_LEVEL = 1
    --------------------------------------------------------------------------
    IRQ_LEVEL_GEN: if (C_IRQ_IS_LEVEL = 1) generate
    begin
        -- Level IRQ generation if C_HAS_FAST is 1
        IRQ_LEVEL_FAST_ON_MB_CLK_GEN: if ((C_HAS_FAST = 1) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
            -- Type declaration
            type STATE_TYPE is (IDLE, GEN_LEVEL_IRQ, WAIT_ACK);
            -- Signal declaration
            signal current_state : STATE_TYPE;
        begin
            -- Generate in_idle signal
            GEN_IN_IDLE_P : process (Processor_clk)
            begin
                if(Processor_clk'event and Processor_clk='1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        in_idle <= '0';
                    else
                        if (current_state = IDLE) then
                             in_idle <= '1';
                        else
                             in_idle <= '0';
                        end if;
                    end if;
                end if;
            end process GEN_IN_IDLE_P;

            --------------------------------------------------------------
            -- The sequential process below maintains the current_state
            --------------------------------------------------------------
            GEN_CS_P : process (Processor_clk)
            begin
                if(Processor_clk'event and Processor_clk='1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        current_state <= IDLE;
                    else
                        case current_state is
                            when IDLE  =>
                                if ((ivar_index_sample_en_mb_clk = '1')) then
                                    current_state <= GEN_LEVEL_IRQ;
                                else
                                    current_state <= IDLE;
                                end if;
                            when GEN_LEVEL_IRQ =>
                                if (imr(TO_INTEGER(unsigned(ivar_index_mb_clk))) = '1') then
                                    if (first_ack = '1') then
                                       current_state <= WAIT_ACK;
                                    else
                                       current_state <= GEN_LEVEL_IRQ;
                                    end if;
                                else
                                    if (ack_or_sync = '1') or (irq_dis_sample_mb_clk = '1') then
                                        current_state <= IDLE;
                                    else
                                        current_state <= GEN_LEVEL_IRQ;
                                    end if;
                                end if;
                            when WAIT_ACK =>
                                if (second_ack_sync_mb_clk = '1') then
                                    current_state <= IDLE;
                                else
                                    current_state <= WAIT_ACK;
                                end if;
                            -- coverage off
                            when others =>
                                current_state <= IDLE;
                            -- coverage on
                        end case;
                    end if;
                end if;
            end process GEN_CS_P;

            --------------------------------------------------------------------
            -- Process IRQ_LEVEL_P for generating LEVEL interrupt
            --------------------------------------------------------------------
            Irq_i <= C_IRQ_ACTIVE when (current_state = GEN_LEVEL_IRQ) else
                     not C_IRQ_ACTIVE;

            GEN_LEVEL_IRQ_P : process (Processor_clk)
            begin
                if(Processor_clk'event and Processor_clk='1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        Irq      <= (not C_IRQ_ACTIVE);
                    else
                        Irq      <= Irq_i;
                    end if;
                end if;
            end process GEN_LEVEL_IRQ_P;

            NO_CASCADE_IVAR_ADDRESS: if (C_EN_CASCADE_MODE = 0) and (C_CASCADE_MASTER = 0) generate
            begin
                Interrupt_address <= ivar_rd_data_mb_clk;
            end generate NO_CASCADE_IVAR_ADDRESS;

            CASCADE_IVAR_ADDRESS: if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 0) generate
                signal Interrupt_address_in_reg : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
            begin
                REG_IP_INTR_ADDR_IN: process(Processor_clk)is
                begin
                    if(Processor_clk'event and Processor_clk='1') then
                        if (processor_rst_n = RESET_ACTIVE) then
                            Interrupt_address_in_reg <= (others => '0');
                        else
                            Interrupt_address_in_reg <= Interrupt_address_in;
                        end if;
                    end if;
                end process REG_IP_INTR_ADDR_IN;

                Interrupt_address_in_reg_int <= Interrupt_address_in_reg;

                Interrupt_address <= Interrupt_address_in_reg when ((isr(31) = '1') and
                                                                    (ier(31) = '1') and
                                                                    (isr_ored_30_0_bits = '0')) else
                                     ivar_rd_data_mb_clk;
            end generate CASCADE_IVAR_ADDRESS;

            CASCADE_IVAR_ADDRESS_MST_MD: if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 1) generate
                -- Local signal declaration
                signal Interrupt_address_in_reg : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
            begin
                REG_IP_INTR_ADDR_IN: process(Processor_clk)is
                begin
                    if(Processor_clk'event and Processor_clk='1') then
                        if (processor_rst_n = RESET_ACTIVE) then
                            Interrupt_address_in_reg <= (others => '0');
                        else
                            Interrupt_address_in_reg <= Interrupt_address_in;
                        end if;
                    end if;
                end process REG_IP_INTR_ADDR_IN;

                Interrupt_address_in_reg_int <= Interrupt_address_in_reg;

                Interrupt_address <= Interrupt_address_in_reg when ((isr(31) = '1') and
                                                                    (ier(31) = '1') and
                                                                    (isr_ored_30_0_bits = '0')) else
                                     ivar_rd_data_mb_clk;
            end generate CASCADE_IVAR_ADDRESS_MST_MD;
        end generate IRQ_LEVEL_FAST_ON_MB_CLK_GEN;

        IRQ_LEVEL_FAST_ON_AXI_CLK_GEN: if ((C_HAS_FAST = 1) and (C_MB_CLK_NOT_CONNECTED = 1)) generate
            -- Type declaration
            type STATE_TYPE is (IDLE, GEN_LEVEL_IRQ, WAIT_ACK);
            -- Signal declaration
            signal current_state : STATE_TYPE;
        begin
            -- Generate in_idle signal
            GEN_IN_IDLE_P : process (Clk)
            begin
                if(Clk'event and Clk='1') then
                    if (Rst_n = RESET_ACTIVE) then
                        in_idle <= '0';
                    else
                        if (current_state = IDLE) then
                             in_idle <= '1';
                        else
                             in_idle <= '0';
                        end if;
                    end if;
                end if;
            end process GEN_IN_IDLE_P;

            --------------------------------------------------------------
            -- The sequential process below maintains the current_state
            --------------------------------------------------------------
            GEN_CS_P : process (Clk)
            begin
                if(Clk'event and Clk='1') then
                    if (Rst_n = RESET_ACTIVE) then
                        current_state <= IDLE;
                    else
                        case current_state is
                            when IDLE =>
                                if (ivar_index_sample_en_mb_clk = '1') then
                                    current_state <= GEN_LEVEL_IRQ;
                                else
                                    current_state <= IDLE;
                                end if;
                            when GEN_LEVEL_IRQ =>
                                if (imr(TO_INTEGER(unsigned(ivar_index_mb_clk))) = '1') then
                                    if (first_ack = '1') then
                                       current_state <= WAIT_ACK;
                                    else
                                       current_state <= GEN_LEVEL_IRQ;
                                    end if;
                                else
                                    if (ack_or_sync = '1') or (irq_dis_sample_mb_clk = '1') then
                                        current_state <= IDLE;
                                    else
                                        current_state <= GEN_LEVEL_IRQ;
                                    end if;
                                end if;
                            when WAIT_ACK =>
                                if (second_ack_sync_mb_clk = '1') then
                                    current_state <= IDLE;
                                else
                                    current_state <= WAIT_ACK;
                                end if;
                            -- coverage off
                            when others =>
                                current_state <= IDLE;
                            -- coverage on
                        end case;
                    end if;
                end if;
            end process GEN_CS_P;

            --------------------------------------------------------------------
            -- Process IRQ_LEVEL_P for generating LEVEL interrupt
            --------------------------------------------------------------------
            Irq_i <= C_IRQ_ACTIVE when (current_state = GEN_LEVEL_IRQ) else
                     not C_IRQ_ACTIVE;

            GEN_LEVEL_IRQ_P : process (Clk)
            begin
                if(Clk'event and Clk='1') then
                    if (Rst_n = RESET_ACTIVE) then
                        Irq      <= (not C_IRQ_ACTIVE);
                    else
                        Irq      <= Irq_i;
                    end if;
                end if;
            end process GEN_LEVEL_IRQ_P;

            NO_CASCADE_IVAR_ADDRESS: if (C_EN_CASCADE_MODE = 0) and (C_CASCADE_MASTER = 0) generate
            begin
                Interrupt_address <= ivar_rd_data_mb_clk;
            end generate NO_CASCADE_IVAR_ADDRESS;

            CASCADE_IVAR_ADDRESS: if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 0) generate
                signal Interrupt_address_in_reg : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
            begin
                REG_IP_INTR_ADDR_IN: process(Clk)is
                begin
                    if(Clk'event and Clk='1') then
                        if (Rst_n = RESET_ACTIVE) then
                            Interrupt_address_in_reg <= (others => '0');
                        else
                            Interrupt_address_in_reg <= Interrupt_address_in;
                        end if;
                    end if;
                end process REG_IP_INTR_ADDR_IN;

                Interrupt_address_in_reg_int <= Interrupt_address_in_reg;

                Interrupt_address <= Interrupt_address_in_reg when ((isr(31) = '1') and
                                                                    (ier(31) = '1') and
                                                                    (isr_ored_30_0_bits = '0')) else
                                     ivar_rd_data_mb_clk;
            end generate CASCADE_IVAR_ADDRESS;

            CASCADE_IVAR_ADDRESS_MST_MD: if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 1) generate
                signal Interrupt_address_in_reg : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
            begin
                REG_IP_INTR_ADDR_IN: process(Clk)is
                begin
                    if(Clk'event and Clk='1') then
                        if (Rst_n = RESET_ACTIVE) then
                            Interrupt_address_in_reg <= (others => '0');
                        else
                            Interrupt_address_in_reg <= Interrupt_address_in;
                        end if;
                    end if;
                end process REG_IP_INTR_ADDR_IN;

                Interrupt_address_in_reg_int <= Interrupt_address_in_reg;

                Interrupt_address <= Interrupt_address_in_reg when ((isr(31) = '1') and
                                                                    (ier(31) = '1') and
                                                                    (isr_ored_30_0_bits = '0')) else
                                     ivar_rd_data_mb_clk;
            end generate CASCADE_IVAR_ADDRESS_MST_MD;
        end generate IRQ_LEVEL_FAST_ON_AXI_CLK_GEN;

        -- Level IRQ generation if C_HAS_FAST is 0
        IRQ_LEVEL_NORMAL_ON_MB_CLK_GEN: if ((C_HAS_FAST = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
        begin
            --------------------------------------------------------------------
            -- Process IRQ_LEVEL_P for generating LEVEL interrupt
            --------------------------------------------------------------------
            IRQ_LEVEL_P: process (Processor_clk) is
            begin
                if(Processor_clk'event and Processor_clk = '1') then
                    if ((processor_rst_n = RESET_ACTIVE) or (irq_gen_sync = '0')) then
                            Irq               <= not C_IRQ_ACTIVE;
                    elsif ((irq_gen_sync = '1') and (mer_0_sync = '1')) then
                            Irq               <= C_IRQ_ACTIVE;
                    end if;
                end if;
            end process IRQ_LEVEL_P;

            Interrupt_address <= (others => '0');
        end generate IRQ_LEVEL_NORMAL_ON_MB_CLK_GEN;

        IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN: if ((C_HAS_FAST = 0) and (C_MB_CLK_NOT_CONNECTED = 1)) generate
        begin
            --------------------------------------------------------------------
            -- Process IRQ_LEVEL_P for generating LEVEL interrupt
            --------------------------------------------------------------------
            IRQ_LEVEL_ON_AXI_P: process (Clk) is
            begin
                if(Clk'event and Clk = '1') then
                    if ((Rst_n = RESET_ACTIVE) or (irq_gen_sync = '0')) then
                            Irq               <= not C_IRQ_ACTIVE;
                    elsif ((irq_gen_sync = '1') and (mer_0_sync = '1')) then
                            Irq               <= C_IRQ_ACTIVE;
                    end if;
                end if;
            end process IRQ_LEVEL_ON_AXI_P;

            Interrupt_address <= (others => '0');
        end generate IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN;
    end generate IRQ_LEVEL_GEN;

    ----------------------------------------------------------------------
    -- Generating ack_or for C_NUM_INTR = 1
    ----------------------------------------------------------------------
    ACK_OR_ONE_INTR_GEN: if (C_NUM_INTR = 1) generate
    begin
        ack_or_i <= iar(0);
    end generate ACK_OR_ONE_INTR_GEN;

    ----------------------------------------------------------------------
    -- Generating ack_or for C_NUM_INTR > 1
    ----------------------------------------------------------------------
    ACK_OR_MULTI_INTR_GEN: if (C_NUM_INTR > 1) generate
    begin
        --------------------------------------------------------------
        -- Process ACK_OR_GEN_P to generate ack_or (ORed Acks)
        --------------------------------------------------------------
        ACK_OR_GEN_P: process (iar)
            variable ack_or_int : std_logic := '0';
        begin
            ack_or_int := iar(0);
            for i in 1 to (iar'length - 1) loop
                ack_or_int := ack_or_int or (iar(i));
            end loop;
            ack_or_i <= ack_or_int;
        end process ACK_OR_GEN_P;

    end generate ACK_OR_MULTI_INTR_GEN;

    ACK_OR_REG_P : Process(Clk)
    begin
        if (Clk'event and Clk = '1') then
            if (Rst_n = RESET_ACTIVE) then
                ack_or    <= '0';
            else
                ack_or    <= ack_or_i;
            end if;
        end if;
    end process ACK_OR_REG_P;

    ACK_OR_SYNC_EN_GEN: if ((C_DISABLE_SYNCHRONIZERS = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
    begin
        ACK_OR_PULSE_SYNC_I: entity axi_intc_v4_1_12.pulse_synchronizer
        port map (
            CLK_1         => Clk,
            RESET_1_n     => Rst_n,
            DATA_IN       => ack_or,
            CLK_2         => Processor_clk,
            RESET_2_n     => processor_rst_n,
            SYNC_DATA_OUT => ack_or_sync
        );
    end generate ACK_OR_SYNC_EN_GEN;

    ACK_OR_SYNC_DISABLE_GEN: if ((C_DISABLE_SYNCHRONIZERS = 1) or (C_MB_CLK_NOT_CONNECTED = 1)) generate
    begin
        ack_or_sync <= ack_or;
    end generate ACK_OR_SYNC_DISABLE_GEN;

    --------------------------------------------------------------------------
    -- Generating EDGE interrupt if C_IRQ_IS_LEVEL = 0
    --------------------------------------------------------------------------
    IRQ_EDGE_GEN: if (C_IRQ_IS_LEVEL = 0) generate
    begin

        IRQ_EDGE_FAST_GEN: if ((C_HAS_FAST = 1) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
            -- Type declaration
            type STATE_TYPE is (IDLE, GEN_PULSE, WAIT_ACK);
            -- Signal declaration
            signal current_state : STATE_TYPE;
        begin

            -- Generate in_idle signal
            GEN_IN_IDLE_P : process (Processor_clk)
            begin
                if(Processor_clk'event and Processor_clk='1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        in_idle <= '0';
                    else
                        if (current_state = IDLE) then
                             in_idle <= '1';
                        else
                             in_idle <= '0';
                        end if;
                    end if;
                end if;
            end process GEN_IN_IDLE_P;

            --------------------------------------------------------------
            -- The sequential process below maintains the current_state
            --------------------------------------------------------------
            GEN_CS_P : process (Processor_clk)
            begin
                if(Processor_clk'event and Processor_clk='1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        current_state <= IDLE;
                    else
                        case current_state is
                            when IDLE =>
                                if (ivar_index_sample_en_mb_clk = '1') then
                                    current_state <= GEN_PULSE;
                                else
                                    current_state <= IDLE;
                                end if;
                            when GEN_PULSE =>
                                if (imr(TO_INTEGER(unsigned(ivar_index_mb_clk))) = '1') then
                                    if (first_ack = '1') then
                                       current_state <= WAIT_ACK;
                                    else
                                       current_state <= GEN_PULSE;
                                    end if;
                                else
                                    if (ack_or_sync = '1') or (irq_dis_sample_mb_clk = '1') then
                                        current_state <= IDLE;
                                    else
                                        current_state <= GEN_PULSE;
                                    end if;
                                end if;
                            when WAIT_ACK =>
                                if (second_ack_sync_mb_clk = '1') then
                                    current_state <= IDLE;
                                else
                                    current_state <= WAIT_ACK;
                                end if;
                            -- coverage off
                            when others =>
                                current_state <= IDLE;
                            -- coverage on
                        end case;
                    end if;
                end if;
            end process GEN_CS_P;

            Irq_i <= C_IRQ_ACTIVE when (current_state = GEN_PULSE) else
                     (not C_IRQ_ACTIVE);

            GEN_IRQ_P : process (Processor_clk)
            begin
                if(Processor_clk'event and Processor_clk='1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        Irq      <= (not C_IRQ_ACTIVE);
                    else
                        Irq      <= Irq_i;
                    end if;
                end if;
            end process GEN_IRQ_P;

            NO_CASCADE_IVAR_ADDRESS: if (C_EN_CASCADE_MODE = 0) and (C_CASCADE_MASTER = 0) generate
            begin
                Interrupt_address <= ivar_rd_data_mb_clk;
            end generate NO_CASCADE_IVAR_ADDRESS;

            CASCADE_IVAR_ADDRESS: if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 0) generate
                signal Interrupt_address_in_reg : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
            begin

                REG_IP_INTR_ADDR_IN: process(Processor_clk)is
                begin
                    if(Processor_clk'event and Processor_clk='1') then
                        if (processor_rst_n = RESET_ACTIVE) then
                            Interrupt_address_in_reg <= (others => '0');
                        else
                            Interrupt_address_in_reg <= Interrupt_address_in;
                        end if;
                    end if;
                end process REG_IP_INTR_ADDR_IN;

                Interrupt_address_in_reg_int <= Interrupt_address_in_reg;

                Interrupt_address <= Interrupt_address_in_reg when ((isr(31) = '1') and
                                                                    (ier(31) = '1') and
                                                                    (isr_ored_30_0_bits = '0')) else
                                     ivar_rd_data_mb_clk;
            end generate CASCADE_IVAR_ADDRESS;

            CASCADE_IVAR_ADDRESS_MST_MD: if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 1) generate
                signal Interrupt_address_in_reg : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
            begin

                REG_IP_INTR_ADDR_IN: process(Processor_clk)is
                begin
                    if(Processor_clk'event and Processor_clk='1') then
                        if (processor_rst_n = RESET_ACTIVE) then
                            Interrupt_address_in_reg <= (others => '0');
                        else
                            Interrupt_address_in_reg <= Interrupt_address_in;
                        end if;
                    end if;
                end process REG_IP_INTR_ADDR_IN;

                Interrupt_address_in_reg_int <= Interrupt_address_in_reg;
                Interrupt_address <= Interrupt_address_in_reg when ((isr(31) = '1') and
                                                                    (ier(31) = '1') and
                                                                    (isr_ored_30_0_bits = '0')) else
                                     ivar_rd_data_mb_clk;
            end generate CASCADE_IVAR_ADDRESS_MST_MD;
        end generate IRQ_EDGE_FAST_GEN;

        IRQ_EDGE_FAST_ON_AXI_CLK_GEN: if ((C_HAS_FAST = 1) and (C_MB_CLK_NOT_CONNECTED = 1)) generate
            -- Type declaration
            type STATE_TYPE is (IDLE, GEN_PULSE, WAIT_ACK);
            -- Signal declaration
            signal current_state : STATE_TYPE;
        begin
            -- Generate in_idle signal
            GEN_IN_IDLE_P : process (Clk)
            begin
                if(Clk'event and Clk='1') then
                    if (Rst_n = RESET_ACTIVE) then
                        in_idle <= '0';
                    else
                        if (current_state = IDLE) then
                             in_idle <= '1';
                        else
                             in_idle <= '0';
                        end if;
                    end if;
                end if;
            end process GEN_IN_IDLE_P;

            --------------------------------------------------------------
            -- The sequential process below maintains the current_state
            --------------------------------------------------------------
            GEN_CS_P : process (Clk)
            begin
                if(Clk'event and Clk='1') then
                    if (Rst_n = RESET_ACTIVE) then
                        current_state <= IDLE;
                    else
                        case current_state is
                            when IDLE =>
                                if (ivar_index_sample_en_mb_clk = '1') then
                                    current_state <= GEN_PULSE;
                                else
                                    current_state <= IDLE;
                                end if;
                            when GEN_PULSE =>
                                if (imr(TO_INTEGER(unsigned(ivar_index_mb_clk))) = '1') then
                                    if (first_ack = '1') then
                                       current_state <= WAIT_ACK;
                                    else
                                       current_state <= GEN_PULSE;
                                    end if;
                                else
                                    if (ack_or_sync = '1') or (irq_dis_sample_mb_clk = '1') then
                                        current_state <= IDLE;
                                    else
                                        current_state <= GEN_PULSE;
                                    end if;
                                end if;
                            when WAIT_ACK =>
                                if (second_ack_sync_mb_clk = '1') then
                                    current_state <= IDLE;
                                else
                                    current_state <= WAIT_ACK;
                                end if;
                            -- coverage off
                            when others =>
                                current_state <= IDLE;
                            -- coverage on
                        end case;
                    end if;
                end if;
            end process GEN_CS_P;

            Irq_i <= C_IRQ_ACTIVE when (current_state = GEN_PULSE) else
                     (not C_IRQ_ACTIVE);

            GEN_IRQ_P : process (Clk)
            begin
                if(Clk'event and Clk='1') then
                    if (Rst_n = RESET_ACTIVE) then
                        Irq      <= (not C_IRQ_ACTIVE);
                    else
                        Irq      <= Irq_i;
                    end if;
                end if;
            end process GEN_IRQ_P;

            NO_CASCADE_IVAR_ADDRESS: if (C_EN_CASCADE_MODE = 0) and (C_CASCADE_MASTER = 0) generate
            begin
                Interrupt_address <= ivar_rd_data_mb_clk;
            end generate NO_CASCADE_IVAR_ADDRESS;

            CASCADE_IVAR_ADDRESS: if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 0) generate
                signal Interrupt_address_in_reg : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
            begin
                REG_IP_INTR_ADDR_IN: process(Clk)is
                begin
                    if(Clk'event and Clk='1') then
                        if (Rst_n = RESET_ACTIVE) then
                            Interrupt_address_in_reg <= (others => '0');
                        else
                            Interrupt_address_in_reg <= Interrupt_address_in;
                        end if;
                    end if;
                end process REG_IP_INTR_ADDR_IN;

                Interrupt_address_in_reg_int <= Interrupt_address_in_reg;

                Interrupt_address <= Interrupt_address_in_reg when ((isr(31) = '1') and
                                                                    (ier(31) = '1') and
                                                                    (isr_ored_30_0_bits = '0')) else
                                     ivar_rd_data_mb_clk;
            end generate CASCADE_IVAR_ADDRESS;

            CASCADE_IVAR_ADDRESS_MST_MD: if (C_EN_CASCADE_MODE = 1) and (C_CASCADE_MASTER = 1) generate
                signal Interrupt_address_in_reg : std_logic_vector(C_ADDR_WIDTH - 1 downto 0);
            begin

                REG_IP_INTR_ADDR_IN: process(Clk)is
                begin
                    if(Clk'event and Clk='1') then
                        if (Rst_n = RESET_ACTIVE) then
                            Interrupt_address_in_reg <= (others => '0');
                        else
                            Interrupt_address_in_reg <= Interrupt_address_in;
                        end if;
                    end if;
                end process REG_IP_INTR_ADDR_IN;

                Interrupt_address_in_reg_int <= Interrupt_address_in_reg;

                Interrupt_address <= Interrupt_address_in_reg when ((isr(31) = '1') and
                                                                    (ier(31) = '1') and
                                                                    (isr_ored_30_0_bits = '0')) else
                                     ivar_rd_data_mb_clk;
            end generate CASCADE_IVAR_ADDRESS_MST_MD;
        end generate IRQ_EDGE_FAST_ON_AXI_CLK_GEN;

        IRQ_EDGE_NO_MB_CLK_GEN: if ((C_HAS_FAST = 0) and (C_MB_CLK_NOT_CONNECTED = 1)) generate
            -- Type declaration
            type STATE_TYPE is (IDLE, GEN_PULSE, WAIT_ACK);
            -- Signal declaration
            signal current_state : STATE_TYPE;
        begin

            --------------------------------------------------------------
            --The sequential process below maintains the current_state
            --------------------------------------------------------------
            GEN_CS_P : process (Clk)
            begin
                if(Clk'event and Clk='1') then
                    if (Rst_n = RESET_ACTIVE) then
                        current_state <= IDLE;
                    else
                        case current_state is
                            when IDLE =>
                                if ((irq_gen_sync = '1') and (mer_0_sync = '1')) then
                                    current_state <= GEN_PULSE;
                                else
                                    current_state <= IDLE;
                                end if;
                            when GEN_PULSE =>
                                current_state <= WAIT_ACK;
                            when WAIT_ACK =>
                                if (ack_or_sync = '1') then
                                    current_state <= IDLE;
                                else
                                    current_state <= WAIT_ACK;
                                end if;
                            -- coverage off
                            when others =>
                                current_state <= IDLE;
                            -- coverage on
                        end case;
                    end if;
                end if;
            end process GEN_CS_P;

            GEN_IRQ_AND_ADDR_P : process (Clk)
            begin
                if(Clk'event and Clk='1') then
                    if (Rst_n = RESET_ACTIVE) then
                        Irq               <= (not C_IRQ_ACTIVE);
                    else
                        if (current_state = GEN_PULSE) then
                          Irq               <= C_IRQ_ACTIVE;
                        else
                          Irq               <= not C_IRQ_ACTIVE;
                        end if;
                    end if;
                end if;
            end process GEN_IRQ_AND_ADDR_P;

            Interrupt_address <= (others => '0');
        end generate IRQ_EDGE_NO_MB_CLK_GEN;

        IRQ_EDGE_MB_CLK_GEN: if ((C_HAS_FAST = 0) and (C_MB_CLK_NOT_CONNECTED = 0)) generate
            -- Type declaration
            type STATE_TYPE is (IDLE, GEN_PULSE, WAIT_ACK, WAIT_SYNC);
            -- Signal declaration
            signal current_state : STATE_TYPE;
        begin
            --------------------------------------------------------------
            --The sequential process below maintains the current_state
            --------------------------------------------------------------
            GEN_CS_P : process (Processor_clk)
            begin
                if(Processor_clk'event and Processor_clk='1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        current_state <= IDLE;
                    else
                        case current_state is
                            when IDLE =>
                                if ((irq_gen_sync = '1') and (mer_0_sync = '1')) then
                                    current_state <= GEN_PULSE;
                                else
                                    current_state <= IDLE;
                                end if;
                            when GEN_PULSE =>
                                current_state <= WAIT_ACK;
                            when WAIT_ACK =>
                                if (ack_or_sync = '1') then
                                    if (C_DISABLE_SYNCHRONIZERS = 1) then
                                         current_state <= IDLE;
                                    else
                                         current_state <= WAIT_SYNC;
                                    end if;
                                else
                                    current_state <= WAIT_ACK;
                                end if;
                            when WAIT_SYNC =>
                                current_state <= IDLE;
                            -- coverage off
                            when others =>
                                current_state <= IDLE;
                            -- coverage on
                        end case;
                    end if;
                end if;
            end process GEN_CS_P;

            GEN_IRQ_AND_ADDR_P : process (Processor_clk)
            begin
                if(Processor_clk'event and Processor_clk='1') then
                    if (processor_rst_n = RESET_ACTIVE) then
                        Irq               <= (not C_IRQ_ACTIVE);
                    else
                        if (current_state = GEN_PULSE) then
                          Irq               <= C_IRQ_ACTIVE;
                        else
                          Irq               <= not C_IRQ_ACTIVE;
                        end if;
                    end if;
                end if;
            end process GEN_IRQ_AND_ADDR_P;

            Interrupt_address <= (others => '0');

        end generate IRQ_EDGE_MB_CLK_GEN;
    end generate IRQ_EDGE_GEN;

    -- Read data in Normal mode (C_HAS_FAST = 0)
    OUTPUT_DATA_NORMAL_GEN: if (C_HAS_FAST = 0) generate
    begin
        ------------------------------------------------------------------------
        -- Process OUTPUT_DATA_GEN_P for generating Rd_data
        ------------------------------------------------------------------------
        OUTPUT_DATA_GEN_P: process (read, Reg_addr, isr_out, ipr, ier_out,
                                    ilr_out, ivr_out, mer) is
        -----
        begin
        -----
            Rd_data <= (others => '0');
            if (read = '1') then
                case Reg_addr(6 downto 0) is
                    when "0000000"  => Rd_data <= isr_out; -- ISR (R/W)
                    when "0000001"  => Rd_data <= ipr;     -- IPR (Read only)
                    when "0000010"  => Rd_data <= ier_out; -- IER (R/W)
                    when "0000110"  => Rd_data <= ivr_out; -- IVR (Read only)
                    when "0000111"  => Rd_data <= mer;     -- MER (R/W)
                    when "0001001"  => Rd_data <= ilr_out; -- ILR (R(W)
                                                           -- IAR, SIE, CIE (Write only)
                    -- coverage off
                    when others     => null;
                    -- coverage on
                end case;
            end if;
        end process OUTPUT_DATA_GEN_P;

    end generate OUTPUT_DATA_NORMAL_GEN;

    -- Read data in mixed mode (C_HAS_FAST = 1) and C_EN_CASCADE_MODE = 1 and C_CASCADE_MASTER = 1
    CASCADE_OP_DATA_FAST_GEN: if (C_HAS_FAST = 1)        and
                                 (C_EN_CASCADE_MODE = 1) generate
    begin
        ------------------------------------------------------------------------
        -- Process OUTPUT_DATA_GEN_P for generating Rd_data
        ------------------------------------------------------------------------
        OUTPUT_DATA_GEN_P: process (read,
                                    read_ivar,
                                    Reg_addr,
                                    isr_out,
                                    ipr,
                                    ier_out,
                                    ilr_out,
                                    ivr_out,
                                    mer,
                                    imr_out,
                                    ivar_rd_data_axi_clk,
                                    Interrupt_address_in_reg_int,
                                    ier,
                                    isr,
                                    isr_ored_30_0_bits) is
        begin
            Rd_data <= (others => '0');
            if (read = '1') then
                case Reg_addr(6 downto 0) is
                    when "0000000"  => Rd_data <= isr_out; -- ISR (R/W)
                    when "0000001"  => Rd_data <= ipr;     -- IPR (Read only)
                    when "0000010"  => Rd_data <= ier_out; -- IER (R/W)
                    when "0000110"  => Rd_data <= ivr_out; -- IVR (Read only)
                    when "0000111"  => Rd_data <= mer;     -- MER (R/W)
                    when "0001000"  => Rd_data <= imr_out; -- IMR (R/W)
                    when "0001001"  => Rd_data <= ilr_out; -- ILR (R(W)
                                                           -- IAR, SIE, CIE (Write only)
                    -- coverage off
                    when others     => null;
                    -- coverage on
                end case;
            elsif (read_ivar(0) = '1') then  -- read IVAR of 31st bit in case the interrupt is present
                if ((isr(31) = '1')   and    -- otherwise the processor has to initiate the transaction 
                    (ier(31) = '1')   and    -- for lower module separately to read IVAR of lower modules
                    (isr_ored_30_0_bits = '0')) then
                    Rd_data <= Interrupt_address_in_reg_int(Rd_data'range);
                else
                    Rd_data <= ivar_rd_data_axi_clk(Rd_data'range);
                end if;
            elsif (C_IVAR_WE_WIDTH > 1 and read_ivar(C_IVAR_WE_WIDTH - 1) = '1') then
                if ((isr(31) = '1')   and
                    (ier(31) = '1')   and
                    (isr_ored_30_0_bits = '0')) then
                    Rd_data(C_ADDR_WIDTH - 33 downto 0) <= Interrupt_address_in_reg_int(C_ADDR_WIDTH - 1 downto 32);
                else
                    Rd_data(C_ADDR_WIDTH - 33 downto 0) <= ivar_rd_data_axi_clk(C_ADDR_WIDTH - 1 downto 32);
                end if;
            end if;
        end process OUTPUT_DATA_GEN_P;

    end generate CASCADE_OP_DATA_FAST_GEN;

    NO_CASCADE_OP_DATA_FAST_GEN: if (C_HAS_FAST = 1)        and
                                    (C_CASCADE_MASTER = 0)  and
                                    (C_EN_CASCADE_MODE = 0) generate
    begin
        ------------------------------------------------------------------------
        -- Process OUTPUT_DATA_GEN_P for generating Rd_data
        ------------------------------------------------------------------------
        OUTPUT_DATA_GEN_P: process (read,
                                    read_ivar,
                                    Reg_addr,
                                    isr_out,
                                    ipr,
                                    ier_out,
                                    ilr_out,
                                    ivr_out,
                                    mer,
                                    imr_out,
                                    ivar_rd_data_axi_clk) is
        begin
            Rd_data <= (others => '0');
            if (read = '1') then
                case Reg_addr(6 downto 0) is
                    when "0000000"  => Rd_data <= isr_out; -- ISR (R/W)
                    when "0000001"  => Rd_data <= ipr;     -- IPR (Read only)
                    when "0000010"  => Rd_data <= ier_out; -- IER (R/W)
                    when "0000110"  => Rd_data <= ivr_out; -- IVR (Read only)
                    when "0000111"  => Rd_data <= mer;     -- MER (R/W)
                    when "0001000"  => Rd_data <= imr_out; -- IMR (R/W)
                    when "0001001"  => Rd_data <= ilr_out; -- ILR (R(W)
                                                           -- IAR, SIE, CIE (Write only)
                    -- coverage off
                    when others     => null;
                    -- coverage on
                end case;
            elsif (read_ivar(0) = '1') then
                Rd_data <= ivar_rd_data_axi_clk(Rd_data'range);
            elsif (C_IVAR_WE_WIDTH > 1 and read_ivar(C_IVAR_WE_WIDTH - 1) = '1') then
                Rd_data(C_ADDR_WIDTH - 33 downto 0) <= ivar_rd_data_axi_clk(C_ADDR_WIDTH - 1 downto 32);
            end if;
        end process OUTPUT_DATA_GEN_P;

    end generate NO_CASCADE_OP_DATA_FAST_GEN;

end imp;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2013, 2017 - 2018 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Filename:        axi_intc.vhd
-- Version:         v4.1
-- Description:     Interrupt controller interfaced to AXI.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--           -- axi_intc  (wrapper for top level)
--               -- axi_lite_ipif
--               -- intc_core
-------------------------------------------------------------------------------
-- Author:      PB
-- History:
--  PB     07/29/09
-- ^^^^^^^
--  - Initial release of v1.00.a
-- ~~~~~~
--  PB     03/26/10
--
--  - updated based on the xps_intc_v2_01_a
--  PB     09/21/10
--
--  - updated the axi_lite_ipif from v1.00.a to v1.01.a
-- ~~~~~~
-- ^^^^^^^
--  SK     10/10/12
--
--  1. Added cascade mode support
-- 2.  Updated major version of the core
-- ~~~~~~
-- ~~~~~~
--  SK       12/16/12      -- v3.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI LITE IPIF to v2.0 in X.Y format
--  3. updated the proc common version to v4_0
--  4. No Logic Updates
-- ^^^^^^
-- ^^^^^^
--  SA     03/25/13
--
--  1. Added software interrupt support
-- ~~~~~~
--  SA     09/05/13
--
--  1. Added support for nested interrupts using ILR register in v4.1
-- ~~~~~~
--  SA     12/26/15
--
--  1. Simplified cascade connections by adding Irq_in port
-- ~~~~~~
--  SA     11/20/17
--
--  1. Added support for interrupt vector extended address
-- ~~~~~~
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_cmb"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------
-- Library axi_lite_ipif_v3_0_4 is used because it contains the
-- axi_lite_ipif which interfaces intc_core to AXI.
-------------------------------------------------------------------------
library axi_lite_ipif_v3_0_4;
    use axi_lite_ipif_v3_0_4.axi_lite_ipif;
    use axi_lite_ipif_v3_0_4.ipif_pkg.all;

-------------------------------------------------------------------------
-- Library axi_intc_v4_1_12 is used because it contains the intc_core.
-- The complete interrupt controller logic is designed in intc_core.
-------------------------------------------------------------------------
library axi_intc_v4_1_12;
use axi_intc_v4_1_12.intc_core;

-------------------------------------------------------------------------------
-- Definition of Generics:
--  System Parameter
--   C_FAMILY                -- Target FPGA family
--  AXI Parameters
--   C_S_AXI_ADDR_WIDTH      -- AXI address bus width
--   C_S_AXI_DATA_WIDTH      -- AXI data bus width
--  Intc Parameters
--   C_NUM_INTR_INPUTS       -- Number of interrupt inputs
--   C_NUM_SW_INTR           -- Number of software interrupts
--   C_KIND_OF_INTR          -- Kind of interrupt (0-Level/1-Edge)
--   C_KIND_OF_EDGE          -- Kind of edge (0-falling/1-rising)
--   C_KIND_OF_LVL           -- Kind of level (0-low/1-high)
--   C_ASYNC_INTR            -- Interrupt is asynchronous (0-sync/1-async)
--   C_NUM_SYNC_FF           -- Number of synchronization flip-flops for async interrupts
--   C_HAS_IPR               -- Set to 1 if has Interrupt Pending Register
--   C_HAS_SIE               -- Set to 1 if has Set Interrupt Enable Bits Register
--   C_HAS_CIE               -- Set to 1 if has Clear Interrupt Enable Bits Register
--   C_HAS_IVR               -- Set to 1 if has Interrupt Vector Register
--   C_HAS_ILR               -- Set to 1 if has Interrupt Level Register for nested interrupt support
--   C_IRQ_IS_LEVEL          -- If set to 0 generates edge interrupt
--                           -- If set to 1 generates level interrupt
--   C_IRQ_ACTIVE            -- Defines the edge for output interrupt if
--                           -- C_IRQ_IS_LEVEL=0 (0-FALLING/1-RISING)
--                           -- Defines the level for output interrupt if
--                           -- C_IRQ_IS_LEVEL=1 (0-LOW/1-HIGH)
--   C_IVAR_RESET_VALUE      -- Reset value for the vectored interrupt registers in RAM
--   C_ADDR_WIDTH            -- Interrupt address width
--   C_DISABLE_SYNCHRONIZERS -- If the processor clock and axi clock are of same
--                              value then user can decide to disable this
--   C_MB_CLK_NOT_CONNECTED  -- If the processor clock is not connected or used in design
--   C_HAS_FAST              -- If user wants to choose the fast interrupt mode of the core
--                           -- then it is needed to have this paraemter set. Default is Standard Mode interrupt
--   C_ENABLE_ASYNC          -- This parameter is used only for Vivado standalone mode of the core, not used in RTL
--   C_EN_CASCADE_MODE       -- If no. of interrupts goes beyond 32, then this parameter need to set
--   C_CASCADE_MASTER        -- If cascade mode is set, then this parameter should be set to the first instance
--                           -- of the core which is connected to the processor
-------------------------------------------------------------------------------
-- Definition of Ports:
-- Clocks and reset
--  s_axi_aclk           -- AXI Clock
--  s_axi_aresetn        -- AXI Reset - Active Low Reset
-- Axi interface signals
--  s_axi_awaddr         -- AXI Write address
--  s_axi_awvalid        -- Write address valid
--  s_axi_awready        -- Write address ready
--  s_axi_wdata          -- Write data
--  s_axi_wstrb          -- Write strobes
--  s_axi_wvalid         -- Write valid
--  s_axi_wready         -- Write ready
--  s_axi_bresp          -- Write response
--  s_axi_bvalid         -- Write response valid
--  s_axi_bready         -- Response ready
--  s_axi_araddr         -- Read address
--  s_axi_arvalid        -- Read address valid
--  s_axi_arready        -- Read address ready
--  s_axi_rdata          -- Read data
--  s_axi_rresp          -- Read response
--  s_axi_rvalid         -- Read valid
--  s_axi_rready         -- Read ready
-- Intc Interface Signals
--  intr                 -- Input Interrupt request
--  irq                  -- Output Interrupt request
--  processor_clk        -- in put same as processor clock
--  processor_rst        -- in put same as processor reset
--  processor_ack        -- input Connected to processor ACK
--  interrupt_address    -- output Connected to processor interrupt address pins
--  interrupt_address_in -- Input this is coming from lower level module in case
--                       -- the cascade mode is set and all AXI INTC instances are marked
--                       -- as C_HAS_FAST = 1
--  processor_ack_out    -- Output this is going to lower level module in case
--                       -- the cascade mode is set and all AXI INTC instances are marked
--                       -- as C_HAS_FAST = 1
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Entity
-------------------------------------------------------------------------------
entity axi_intc is
  generic
  (
   -- System Parameter
   C_FAMILY                : string  := "virtex7";
   C_INSTANCE              : string  := "axi_intc_inst";
   -- AXI Parameters
   C_S_AXI_ADDR_WIDTH      : integer := 9;
   C_S_AXI_DATA_WIDTH      : integer := 32;
   -- Intc Parameters
   C_NUM_INTR_INPUTS       : integer range 1 to 32 := 2;
   C_NUM_SW_INTR           : integer range 0 to 31 := 0;
   C_KIND_OF_INTR          : std_logic_vector(31 downto 0) := "11111111111111111111111111111111";
   C_KIND_OF_EDGE          : std_logic_vector(31 downto 0) := "11111111111111111111111111111111";
   C_KIND_OF_LVL           : std_logic_vector(31 downto 0) := "11111111111111111111111111111111";
   C_ASYNC_INTR            : std_logic_vector(31 downto 0) := "11111111111111111111111111111111";
   C_NUM_SYNC_FF           : integer range 0 to 7 := 2;
   C_IVAR_RESET_VALUE      : std_logic_vector(63 downto 0) := X"0000000000000010";
   C_ADDR_WIDTH            : integer range 32 to 64 := 32;
   C_HAS_IPR               : integer range 0 to 1 := 1;
   C_HAS_SIE               : integer range 0 to 1 := 1;
   C_HAS_CIE               : integer range 0 to 1 := 1;
   C_HAS_IVR               : integer range 0 to 1 := 1;
   C_HAS_ILR               : integer range 0 to 1 := 0;
   C_IRQ_IS_LEVEL          : integer range 0 to 1 := 1;
   C_IRQ_ACTIVE            : std_logic            := '1';
   C_DISABLE_SYNCHRONIZERS : integer range 0 to 1 := 0;
   C_MB_CLK_NOT_CONNECTED  : integer range 0 to 1 := 1;
   C_HAS_FAST              : integer range 0 to 1 := 0;
   C_ENABLE_ASYNC          : integer range 0 to 1 := 0;  -- Unused in RTL but required in Vivado
   C_EN_CASCADE_MODE       : integer range 0 to 1 := 0;  -- Default no cascade mode, if set enable cascade mode
   C_CASCADE_MASTER        : integer range 0 to 1 := 0   -- Default slave, if set become cascade master and
                                                         -- connect ports to Processor
   );
   port
   (
    -- system signals
    s_axi_aclk           : in  std_logic;
    s_axi_aresetn        : in  std_logic;
    -- axi interface signals
    s_axi_awaddr         : in  std_logic_vector (C_S_AXI_ADDR_WIDTH-1 downto 0);
    s_axi_awvalid        : in  std_logic;
    s_axi_awready        : out std_logic;
    s_axi_wdata          : in  std_logic_vector (31 downto 0);
    s_axi_wstrb          : in  std_logic_vector (3 downto 0);
    s_axi_wvalid         : in  std_logic;
    s_axi_wready         : out std_logic;
    s_axi_bresp          : out std_logic_vector(1 downto 0);
    s_axi_bvalid         : out std_logic;
    s_axi_bready         : in  std_logic;
    s_axi_araddr         : in  std_logic_vector (C_S_AXI_ADDR_WIDTH-1 downto 0);
    s_axi_arvalid        : in  std_logic;
    s_axi_arready        : out std_logic;
    s_axi_rdata          : out std_logic_vector (31 downto 0);
    s_axi_rresp          : out std_logic_vector(1 downto 0);
    s_axi_rvalid         : out std_logic;
    s_axi_rready         : in  std_logic;
    -- Intc Interface signals
    intr                 : in  std_logic_vector(C_NUM_INTR_INPUTS-1 downto 0);
    processor_clk        : in  std_logic;
    processor_rst        : in  std_logic;
    irq                  : out std_logic;
    processor_ack        : in  std_logic_vector(1 downto 0);
    interrupt_address    : out std_logic_vector(C_ADDR_WIDTH-1 downto 0);
    -- Cascade Interface signals
    irq_in               : in std_logic;
    interrupt_address_in : in std_logic_vector(C_ADDR_WIDTH-1 downto 0);
    processor_ack_out    : out std_logic_vector(1 downto 0)
  );

  -----------------------------------------------------------------
  -- Start of PSFUtil MPD attributes
  -----------------------------------------------------------------
    -- SIGIS attribute for specifying clocks, interrupts, resets
    ATTRIBUTE IP_GROUP                    : string;
    ATTRIBUTE IP_GROUP of axi_intc        : entity is "LOGICORE";

    ATTRIBUTE IPTYPE                      : string;
    ATTRIBUTE IPTYPE of axi_intc          : entity is "PERIPHERAL";

    ATTRIBUTE HDL                         : string;
    ATTRIBUTE HDL of axi_intc             : entity is "VHDL";

    ATTRIBUTE STYLE                       : string;
    ATTRIBUTE STYLE of axi_intc           : entity is "HDL";

    ATTRIBUTE IMP_NETLIST                 : string;
    ATTRIBUTE IMP_NETLIST of axi_intc     : entity is "TRUE";

    ATTRIBUTE RUN_NGCBUILD                : string;
    ATTRIBUTE RUN_NGCBUILD of axi_intc    : entity is "TRUE";

    ATTRIBUTE SIGIS                       : string;
    ATTRIBUTE SIGIS of S_AXI_ACLK         : signal is "Clk";
    ATTRIBUTE SIGIS of S_AXI_ARESETN      : signal is "Rstn";

end axi_intc;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture imp of axi_intc is

  subtype word_type is std_logic_vector(31 downto 0);

  ---------------------------------------------------------------------------
  -- Constant Declarations
  ---------------------------------------------------------------------------
  function calc_ivar_we_width return integer is
  begin  -- function calc_ivar_we_width
    if C_ADDR_WIDTH > 32 then
      return 2;
    end if;
    return 1;
  end function calc_ivar_we_width;

  function calc_s_axi_min_size return word_type is
  begin  -- function calc_s_axi_min_size
    if C_ADDR_WIDTH > 32 then
      return X"000003FF";
    end if;
    return X"000001FF";
  end function calc_s_axi_min_size;

  function calc_num_intr_inputs return integer is
  begin  -- function calc_num_intr_inputs
    if C_EN_CASCADE_MODE = 1 and C_NUM_INTR_INPUTS = 31 then
      return 32;  -- add input for cascaded interrupt from Irq_in
    end if;
    return C_NUM_INTR_INPUTS;
  end function calc_num_intr_inputs;

  constant C_IVAR_WE_WIDTH      : integer := calc_ivar_we_width;
  constant C_S_AXI_MIN_SIZE     : word_type := calc_s_axi_min_size;
  constant ZERO_ADDR_PAD        : word_type := (others => '0');
  constant ARD_ID_ARRAY         : INTEGER_ARRAY_TYPE := (0 => 1);
  constant ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE := (
                                    ZERO_ADDR_PAD & X"00000000",
                                    ZERO_ADDR_PAD & X"0000003F",
                                    ZERO_ADDR_PAD & X"00000100",
                                    ZERO_ADDR_PAD & X"0000017F",
                                    ZERO_ADDR_PAD & X"00000200",
                                    ZERO_ADDR_PAD & X"000002FF"
                                  );
  constant ARD_NUM_CE_ARRAY     : INTEGER_ARRAY_TYPE := (16, 1, 2);
  constant C_USE_WSTRB          : integer := 1;
  constant C_DPHASE_TIMEOUT     : integer := 8;
  constant RESET_ACTIVE         : std_logic := '0';
  constant NUM_INTR_INPUTS      : integer := calc_num_intr_inputs;

  ---------------------------------------------------------------------------
  -- Signal Declarations
  ---------------------------------------------------------------------------
  signal register_addr       : std_logic_vector(6 downto 0);
  signal read_data           : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal write_data          : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal bus2ip_clk          : std_logic;
  signal bus2ip_resetn       : std_logic;
  signal bus2ip_addr         : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal bus2ip_rnw          : std_logic;
  signal bus2ip_rdce         : std_logic_vector(calc_num_ce(ARD_NUM_CE_ARRAY)-1 downto 0);
  signal bus2ip_wrce         : std_logic_vector(calc_num_ce(ARD_NUM_CE_ARRAY)-1 downto 0);
  signal bus2ip_be           : std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
  signal ip2bus_wrack        : std_logic;
  signal ip2bus_rdack        : std_logic;
  signal ip2bus_error        : std_logic;
  signal word_access         : std_logic;
  signal ip2bus_rdack_int    : std_logic;
  signal ip2bus_wrack_int    : std_logic;
  signal ip2bus_rdack_int_d1 : std_logic;
  signal ip2bus_wrack_int_d1 : std_logic;
  signal ip2bus_rdack_prev2  : std_logic;
  signal ip2bus_wrack_prev2  : std_logic;
  signal intr_i              : std_logic_vector(NUM_INTR_INPUTS-1 downto 0);

  function Or128_vec2stdlogic (vec_in : std_logic_vector) return std_logic is
    variable or_out : std_logic := '0';
  begin
    for i in vec_in'range loop
       or_out := vec_in(i) or or_out;
    end loop;
    return or_out;
  end function Or128_vec2stdlogic;

begin

   assert C_NUM_SW_INTR + C_NUM_INTR_INPUTS <= 32
     report "C_NUM_SW_INTR + C_NUM_INTR_INPUTS must be less than or equal to 32"
     severity error;

   register_addr    <= bus2ip_addr(8 downto 2);

   -- Internal ack signals
   ip2bus_rdack_int <= Or128_vec2stdlogic(bus2ip_rdce);
   ip2bus_wrack_int <= Or128_vec2stdlogic(bus2ip_wrce);

   -- Error signal generation
   word_access <= bus2ip_be(0) and
                  bus2ip_be(1) and
                  bus2ip_be(2) and
                  bus2ip_be(3);

   ip2bus_error <= not word_access;

   -- Intr input signal generation
   Combine_Intr: process (Intr, Irq_in) is
   begin  -- process Combine_Intr
     intr_i(C_NUM_INTR_INPUTS - 1 downto 0) <= Intr;
     if C_EN_CASCADE_MODE = 1 and C_NUM_INTR_INPUTS = 31 then
       intr_i(NUM_INTR_INPUTS - 1) <= Irq_in;
     end if;
   end process Combine_Intr;

   --------------------------------------------------------------------------
   -- Process DACK_DELAY_P for generating write and read data acknowledge
   -- signals.
   --------------------------------------------------------------------------
   DACK_DELAY_P: process (bus2ip_clk) is
   begin
     if bus2ip_clk'event and bus2ip_clk = '1' then
       if bus2ip_resetn = RESET_ACTIVE then
         ip2bus_rdack_int_d1 <= '0';
         ip2bus_wrack_int_d1 <= '0';
         ip2bus_rdack        <= '0';
         ip2bus_wrack        <= '0';
       else
         ip2bus_rdack_int_d1 <= ip2bus_rdack_int;
         ip2bus_wrack_int_d1 <= ip2bus_wrack_int;
         ip2bus_rdack        <= ip2bus_rdack_prev2;
         ip2bus_wrack        <= ip2bus_wrack_prev2;
       end if;
     end if;
   end process DACK_DELAY_P;

   -- Detecting rising edge by creating one shot
   ip2bus_rdack_prev2 <= ip2bus_rdack_int and (not ip2bus_rdack_int_d1);
   ip2bus_wrack_prev2 <= ip2bus_wrack_int and (not ip2bus_wrack_int_d1);

   ---------------------------------------------------------------------------
   -- Component Instantiations
   ---------------------------------------------------------------------------

   -----------------------------------------------------------------
   -- Instantiating intc_core from axi_intc_v4_1_12
   -----------------------------------------------------------------
   INTC_CORE_I : entity axi_intc_v4_1_12.intc_core
   generic map
     (
      C_FAMILY                => C_FAMILY,
      C_DWIDTH                => C_S_AXI_DATA_WIDTH,
      C_NUM_INTR_INPUTS       => NUM_INTR_INPUTS,
      C_NUM_SW_INTR           => C_NUM_SW_INTR,
      C_KIND_OF_INTR          => C_KIND_OF_INTR,
      C_KIND_OF_EDGE          => C_KIND_OF_EDGE,
      C_KIND_OF_LVL           => C_KIND_OF_LVL,
      C_ASYNC_INTR            => C_ASYNC_INTR,
      C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
      C_HAS_IPR               => C_HAS_IPR,
      C_HAS_SIE               => C_HAS_SIE,
      C_HAS_CIE               => C_HAS_CIE,
      C_HAS_IVR               => C_HAS_IVR,
      C_HAS_ILR               => C_HAS_ILR,
      C_IRQ_IS_LEVEL          => C_IRQ_IS_LEVEL,
      C_IRQ_ACTIVE            => C_IRQ_ACTIVE,
      C_DISABLE_SYNCHRONIZERS => C_DISABLE_SYNCHRONIZERS,
      C_MB_CLK_NOT_CONNECTED  => C_MB_CLK_NOT_CONNECTED,
      C_HAS_FAST              => C_HAS_FAST,
      C_IVAR_RESET_VALUE      => C_IVAR_RESET_VALUE,
      C_IVAR_WE_WIDTH         => C_IVAR_WE_WIDTH,
      C_ADDR_WIDTH            => C_ADDR_WIDTH,
      --
      C_EN_CASCADE_MODE       => C_EN_CASCADE_MODE,
      C_CASCADE_MASTER        => C_CASCADE_MASTER
      --
     )
   port map
     (
      -- Intc Interface Signals
      Clk                  => bus2ip_clk,
      Rst_n                => bus2ip_resetn,
      Intr                 => intr_i,
      Reg_addr             => register_addr,
      Bus2ip_rdce          => bus2ip_rdce,
      Bus2ip_wrce          => bus2ip_wrce,
      Wr_data              => write_data,
      Rd_data              => read_data,
      Processor_clk        => processor_clk,
      Processor_rst        => processor_rst,
      Irq                  => Irq,
      Processor_ack        => processor_ack,
      Interrupt_address    => interrupt_address,
      Interrupt_address_in => interrupt_address_in,
      Processor_ack_out    => processor_ack_out
     );

   -----------------------------------------------------------------
   --Instantiating axi_lite_ipif from axi_lite_ipif_v3_0_4
   -----------------------------------------------------------------
   AXI_LITE_IPIF_I : entity axi_lite_ipif_v3_0_4.axi_lite_ipif
   generic map
     (
      C_S_AXI_DATA_WIDTH     => C_S_AXI_DATA_WIDTH,
      C_S_AXI_ADDR_WIDTH     => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_MIN_SIZE       => C_S_AXI_MIN_SIZE,
      C_USE_WSTRB            => C_USE_WSTRB,
      C_DPHASE_TIMEOUT       => C_DPHASE_TIMEOUT,
      C_ARD_ADDR_RANGE_ARRAY => ARD_ADDR_RANGE_ARRAY,
      C_ARD_NUM_CE_ARRAY     => ARD_NUM_CE_ARRAY,
      C_FAMILY               => C_FAMILY
     )
   port map
     (
      -- System signals
      S_AXI_ACLK             => s_axi_aclk,
      S_AXI_ARESETN          => s_axi_aresetn,
      -- AXI interface signals
      S_AXI_AWADDR           => s_axi_awaddr,
      S_AXI_AWVALID          => s_axi_awvalid,
      S_AXI_AWREADY          => s_axi_awready,
      S_AXI_WDATA            => s_axi_wdata,
      S_AXI_WSTRB            => s_axi_wstrb,
      S_AXI_WVALID           => s_axi_wvalid,
      S_AXI_WREADY           => s_axi_wready,
      S_AXI_BRESP            => s_axi_bresp,
      S_AXI_BVALID           => s_axi_bvalid,
      S_AXI_BREADY           => s_axi_bready,
      S_AXI_ARADDR           => s_axi_araddr,
      S_AXI_ARVALID          => s_axi_arvalid,
      S_AXI_ARREADY          => s_axi_arready,
      S_AXI_RDATA            => s_axi_rdata,
      S_AXI_RRESP            => s_axi_rresp,
      S_AXI_RVALID           => s_axi_rvalid,
      S_AXI_RREADY           => s_axi_rready,
      -- Controls to the IP/IPIF modules
      Bus2IP_Clk             => bus2ip_clk,
      Bus2IP_Resetn          => bus2ip_resetn,
      Bus2IP_Addr            => bus2ip_addr,
      Bus2IP_RNW             => bus2ip_rnw,
      Bus2IP_BE              => bus2ip_be,
      Bus2IP_CS              => open,
      Bus2IP_RdCE            => bus2ip_rdce,
      Bus2IP_WrCE            => bus2ip_wrce,
      Bus2IP_Data            => write_data,
      IP2Bus_Data            => read_data,
      IP2Bus_WrAck           => ip2bus_wrack,
      IP2Bus_RdAck           => ip2bus_rdack,
      IP2Bus_Error           => ip2bus_error
    );

end imp;


