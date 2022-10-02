-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Oct  3 01:57:14 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.gen/sources_1/bd/base/ip/base_video_to_axis_1_0/base_video_to_axis_1_0_stub.vhdl
-- Design      : base_video_to_axis_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity base_video_to_axis_1_0 is
  Port ( 
    vid_clk : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    vid_ce : in STD_LOGIC;
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

end base_video_to_axis_1_0;

architecture stub of base_video_to_axis_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vid_clk,vid_rstn,vid_ce,vid_vsync,vid_active_video,vid_data[23:0],aclk,aresetn,m_axis_tdata[23:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tuser,overflow";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "video_to_axis_v1_0,Vivado 2021.1";
begin
end;
