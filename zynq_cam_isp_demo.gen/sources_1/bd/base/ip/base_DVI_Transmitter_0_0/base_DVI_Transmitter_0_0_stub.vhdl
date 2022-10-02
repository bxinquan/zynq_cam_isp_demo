-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Oct  3 01:57:16 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.gen/sources_1/bd/base/ip/base_DVI_Transmitter_0_0/base_DVI_Transmitter_0_0_stub.vhdl
-- Design      : base_DVI_Transmitter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity base_DVI_Transmitter_0_0 is
  Port ( 
    pclk : in STD_LOGIC;
    pclk_x5 : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    video_din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    video_hsync : in STD_LOGIC;
    video_vsync : in STD_LOGIC;
    video_de : in STD_LOGIC;
    tmds_clk_p : out STD_LOGIC;
    tmds_clk_n : out STD_LOGIC;
    tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_oen : out STD_LOGIC
  );

end base_DVI_Transmitter_0_0;

architecture stub of base_DVI_Transmitter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pclk,pclk_x5,reset_n,video_din[23:0],video_hsync,video_vsync,video_de,tmds_clk_p,tmds_clk_n,tmds_data_p[2:0],tmds_data_n[2:0],tmds_oen";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dvi_transmitter_top,Vivado 2021.1";
begin
end;
