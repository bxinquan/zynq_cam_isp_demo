// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Sep 28 23:55:13 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.gen/sources_1/bd/base/ip/base_axis_to_video_1_0/base_axis_to_video_1_0_sim_netlist.v
// Design      : base_axis_to_video_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "base_axis_to_video_1_0,axis_to_video_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_to_video_v1_0,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module base_axis_to_video_1_0
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    s_axis_tuser,
    vid_clk,
    vid_rstn,
    vid_hsync,
    vid_vsync,
    vid_active_video,
    vid_data,
    locked,
    underflow);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF s_axis, FREQ_HZ 120000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [23:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 120000000, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_clk, ASSOCIATED_RESET vid_rstn, ASSOCIATED_BUSIF video_out, FREQ_HZ 33333333, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input vid_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vid_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out HSYNC" *) output vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out ACTIVE_VIDEO" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out DATA" *) output [23:0]vid_data;
  output locked;
  output underflow;

  wire aclk;
  wire aresetn;
  wire locked;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire underflow;
  wire vid_active_video;
  wire vid_clk;
  wire [23:0]vid_data;
  wire vid_hsync;
  wire vid_rstn;
  wire vid_vsync;

  base_axis_to_video_1_0_axis_to_video_v1_0 inst
       (.DIADI({s_axis_tuser,s_axis_tlast,s_axis_tdata}),
        .aclk(aclk),
        .aresetn(aresetn),
        .locked(locked),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .underflow(underflow),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .vid_data(vid_data),
        .vid_hsync(vid_hsync),
        .vid_rstn(vid_rstn),
        .vid_vsync(vid_vsync));
endmodule

(* ORIG_REF_NAME = "async_fifo" *) 
module base_axis_to_video_1_0_async_fifo
   (DOBDO,
    vid_rstn_0,
    wfull,
    s_axis_tready,
    underflow,
    aclk,
    vid_clk,
    DIADI,
    aresetn,
    vid_rstn,
    s_axis_tvalid,
    active_video_w,
    mem_reg);
  output [24:0]DOBDO;
  output vid_rstn_0;
  output wfull;
  output s_axis_tready;
  output underflow;
  input aclk;
  input vid_clk;
  input [25:0]DIADI;
  input aresetn;
  input vid_rstn;
  input s_axis_tvalid;
  input active_video_w;
  input mem_reg;

  wire [25:0]DIADI;
  wire [24:0]DOBDO;
  wire aclk;
  wire active_video_w;
  wire aresetn;
  wire mem_reg;
  wire [10:0]p_0_in;
  wire [10:0]p_0_in__0;
  wire [10:0]r2w_rptr1;
  wire \r2w_rptr1[10]_i_1_n_0 ;
  wire [10:0]r2w_rptr2;
  wire \raddr[10]_i_2_n_0 ;
  wire [9:0]raddr_reg;
  wire [10:10]raddr_reg__0;
  wire ram_n_27;
  wire ram_n_28;
  wire ram_n_29;
  wire ram_n_30;
  wire ram_n_31;
  wire ram_n_32;
  wire ram_n_33;
  wire ram_n_34;
  wire rd_flag;
  wire rempty_carry_n_1;
  wire rempty_carry_n_2;
  wire rempty_carry_n_3;
  wire [9:0]rptr;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire underflow;
  wire vid_clk;
  wire vid_rstn;
  wire vid_rstn_0;
  wire [10:0]w2r_wptr1;
  wire [10:0]w2r_wptr2;
  wire \waddr[10]_i_2_n_0 ;
  wire [9:0]waddr_reg;
  wire [10:10]waddr_reg__0;
  wire wfull;
  wire wfull_carry_n_1;
  wire wfull_carry_n_2;
  wire wfull_carry_n_3;
  wire [9:0]wptr;
  wire wr_flag;
  wire [3:0]NLW_rempty_carry_O_UNCONNECTED;
  wire [3:0]NLW_wfull_carry_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    locked_r_i_2
       (.I0(vid_rstn),
        .O(vid_rstn_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[0]_i_1 
       (.I0(raddr_reg[1]),
        .I1(raddr_reg[0]),
        .O(rptr[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \r2w_rptr1[10]_i_1 
       (.I0(aresetn),
        .O(\r2w_rptr1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[1]_i_1 
       (.I0(raddr_reg[2]),
        .I1(raddr_reg[1]),
        .O(rptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[2]_i_1 
       (.I0(raddr_reg[3]),
        .I1(raddr_reg[2]),
        .O(rptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[3]_i_1 
       (.I0(raddr_reg[4]),
        .I1(raddr_reg[3]),
        .O(rptr[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[4]_i_1 
       (.I0(raddr_reg[5]),
        .I1(raddr_reg[4]),
        .O(rptr[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[5]_i_1 
       (.I0(raddr_reg[6]),
        .I1(raddr_reg[5]),
        .O(rptr[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[6]_i_1 
       (.I0(raddr_reg[7]),
        .I1(raddr_reg[6]),
        .O(rptr[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[7]_i_1 
       (.I0(raddr_reg[8]),
        .I1(raddr_reg[7]),
        .O(rptr[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[8]_i_1 
       (.I0(raddr_reg[9]),
        .I1(raddr_reg[8]),
        .O(rptr[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[9]_i_1 
       (.I0(raddr_reg__0),
        .I1(raddr_reg[9]),
        .O(rptr[9]));
  FDCE \r2w_rptr1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(rptr[0]),
        .Q(r2w_rptr1[0]));
  FDCE \r2w_rptr1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(raddr_reg__0),
        .Q(r2w_rptr1[10]));
  FDCE \r2w_rptr1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(rptr[1]),
        .Q(r2w_rptr1[1]));
  FDCE \r2w_rptr1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(rptr[2]),
        .Q(r2w_rptr1[2]));
  FDCE \r2w_rptr1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(rptr[3]),
        .Q(r2w_rptr1[3]));
  FDCE \r2w_rptr1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(rptr[4]),
        .Q(r2w_rptr1[4]));
  FDCE \r2w_rptr1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(rptr[5]),
        .Q(r2w_rptr1[5]));
  FDCE \r2w_rptr1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(rptr[6]),
        .Q(r2w_rptr1[6]));
  FDCE \r2w_rptr1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(rptr[7]),
        .Q(r2w_rptr1[7]));
  FDCE \r2w_rptr1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(rptr[8]),
        .Q(r2w_rptr1[8]));
  FDCE \r2w_rptr1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(rptr[9]),
        .Q(r2w_rptr1[9]));
  FDCE \r2w_rptr2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[0]),
        .Q(r2w_rptr2[0]));
  FDCE \r2w_rptr2_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[10]),
        .Q(r2w_rptr2[10]));
  FDCE \r2w_rptr2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[1]),
        .Q(r2w_rptr2[1]));
  FDCE \r2w_rptr2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[2]),
        .Q(r2w_rptr2[2]));
  FDCE \r2w_rptr2_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[3]),
        .Q(r2w_rptr2[3]));
  FDCE \r2w_rptr2_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[4]),
        .Q(r2w_rptr2[4]));
  FDCE \r2w_rptr2_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[5]),
        .Q(r2w_rptr2[5]));
  FDCE \r2w_rptr2_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[6]),
        .Q(r2w_rptr2[6]));
  FDCE \r2w_rptr2_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[7]),
        .Q(r2w_rptr2[7]));
  FDCE \r2w_rptr2_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[8]),
        .Q(r2w_rptr2[8]));
  FDCE \r2w_rptr2_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(r2w_rptr1[9]),
        .Q(r2w_rptr2[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \raddr[0]_i_1 
       (.I0(raddr_reg[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \raddr[10]_i_1 
       (.I0(raddr_reg[8]),
        .I1(raddr_reg[6]),
        .I2(\raddr[10]_i_2_n_0 ),
        .I3(raddr_reg[7]),
        .I4(raddr_reg[9]),
        .I5(raddr_reg__0),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \raddr[10]_i_2 
       (.I0(raddr_reg[5]),
        .I1(raddr_reg[3]),
        .I2(raddr_reg[1]),
        .I3(raddr_reg[0]),
        .I4(raddr_reg[2]),
        .I5(raddr_reg[4]),
        .O(\raddr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \raddr[1]_i_1 
       (.I0(raddr_reg[0]),
        .I1(raddr_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \raddr[2]_i_1 
       (.I0(raddr_reg[0]),
        .I1(raddr_reg[1]),
        .I2(raddr_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \raddr[3]_i_1 
       (.I0(raddr_reg[1]),
        .I1(raddr_reg[0]),
        .I2(raddr_reg[2]),
        .I3(raddr_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \raddr[4]_i_1 
       (.I0(raddr_reg[2]),
        .I1(raddr_reg[0]),
        .I2(raddr_reg[1]),
        .I3(raddr_reg[3]),
        .I4(raddr_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \raddr[5]_i_1 
       (.I0(raddr_reg[3]),
        .I1(raddr_reg[1]),
        .I2(raddr_reg[0]),
        .I3(raddr_reg[2]),
        .I4(raddr_reg[4]),
        .I5(raddr_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \raddr[6]_i_1 
       (.I0(\raddr[10]_i_2_n_0 ),
        .I1(raddr_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \raddr[7]_i_1 
       (.I0(\raddr[10]_i_2_n_0 ),
        .I1(raddr_reg[6]),
        .I2(raddr_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \raddr[8]_i_1 
       (.I0(raddr_reg[6]),
        .I1(\raddr[10]_i_2_n_0 ),
        .I2(raddr_reg[7]),
        .I3(raddr_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \raddr[9]_i_1 
       (.I0(raddr_reg[7]),
        .I1(\raddr[10]_i_2_n_0 ),
        .I2(raddr_reg[6]),
        .I3(raddr_reg[8]),
        .I4(raddr_reg[9]),
        .O(p_0_in__0[9]));
  FDCE \raddr_reg[0] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[0]),
        .Q(raddr_reg[0]));
  FDCE \raddr_reg[10] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[10]),
        .Q(raddr_reg__0));
  FDCE \raddr_reg[1] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[1]),
        .Q(raddr_reg[1]));
  FDCE \raddr_reg[2] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[2]),
        .Q(raddr_reg[2]));
  FDCE \raddr_reg[3] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[3]),
        .Q(raddr_reg[3]));
  FDCE \raddr_reg[4] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[4]),
        .Q(raddr_reg[4]));
  FDCE \raddr_reg[5] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[5]),
        .Q(raddr_reg[5]));
  FDCE \raddr_reg[6] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[6]),
        .Q(raddr_reg[6]));
  FDCE \raddr_reg[7] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[7]),
        .Q(raddr_reg[7]));
  FDCE \raddr_reg[8] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[8]),
        .Q(raddr_reg[8]));
  FDCE \raddr_reg[9] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in__0[9]),
        .Q(raddr_reg[9]));
  base_axis_to_video_1_0_full_dp_ram ram
       (.DIADI(DIADI),
        .DOBDO(DOBDO),
        .Q(r2w_rptr2),
        .S({ram_n_27,ram_n_28,ram_n_29,ram_n_30}),
        .aclk(aclk),
        .active_video_w(active_video_w),
        .mem_reg_0(mem_reg),
        .raddr_reg(raddr_reg),
        .raddr_reg__0(raddr_reg__0),
        .rd_flag(rd_flag),
        .s_axis_tvalid(s_axis_tvalid),
        .underflow(underflow),
        .underflow_0(w2r_wptr2),
        .vid_clk(vid_clk),
        .\w2r_wptr2_reg[9] ({ram_n_31,ram_n_32,ram_n_33,ram_n_34}),
        .waddr_reg(waddr_reg),
        .waddr_reg__0(waddr_reg__0),
        .wfull(wfull),
        .wr_flag(wr_flag));
  CARRY4 rempty_carry
       (.CI(1'b0),
        .CO({underflow,rempty_carry_n_1,rempty_carry_n_2,rempty_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rempty_carry_O_UNCONNECTED[3:0]),
        .S({ram_n_31,ram_n_32,ram_n_33,ram_n_34}));
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_INST_0
       (.I0(wfull),
        .O(s_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[0]_i_1 
       (.I0(waddr_reg[1]),
        .I1(waddr_reg[0]),
        .O(wptr[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[1]_i_1 
       (.I0(waddr_reg[2]),
        .I1(waddr_reg[1]),
        .O(wptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[2]_i_1 
       (.I0(waddr_reg[3]),
        .I1(waddr_reg[2]),
        .O(wptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[3]_i_1 
       (.I0(waddr_reg[4]),
        .I1(waddr_reg[3]),
        .O(wptr[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[4]_i_1 
       (.I0(waddr_reg[5]),
        .I1(waddr_reg[4]),
        .O(wptr[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[5]_i_1 
       (.I0(waddr_reg[6]),
        .I1(waddr_reg[5]),
        .O(wptr[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[6]_i_1 
       (.I0(waddr_reg[7]),
        .I1(waddr_reg[6]),
        .O(wptr[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[7]_i_1 
       (.I0(waddr_reg[8]),
        .I1(waddr_reg[7]),
        .O(wptr[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[8]_i_1 
       (.I0(waddr_reg[9]),
        .I1(waddr_reg[8]),
        .O(wptr[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[9]_i_1 
       (.I0(waddr_reg__0),
        .I1(waddr_reg[9]),
        .O(wptr[9]));
  FDCE \w2r_wptr1_reg[0] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[0]),
        .Q(w2r_wptr1[0]));
  FDCE \w2r_wptr1_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(waddr_reg__0),
        .Q(w2r_wptr1[10]));
  FDCE \w2r_wptr1_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[1]),
        .Q(w2r_wptr1[1]));
  FDCE \w2r_wptr1_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[2]),
        .Q(w2r_wptr1[2]));
  FDCE \w2r_wptr1_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[3]),
        .Q(w2r_wptr1[3]));
  FDCE \w2r_wptr1_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[4]),
        .Q(w2r_wptr1[4]));
  FDCE \w2r_wptr1_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[5]),
        .Q(w2r_wptr1[5]));
  FDCE \w2r_wptr1_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[6]),
        .Q(w2r_wptr1[6]));
  FDCE \w2r_wptr1_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[7]),
        .Q(w2r_wptr1[7]));
  FDCE \w2r_wptr1_reg[8] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[8]),
        .Q(w2r_wptr1[8]));
  FDCE \w2r_wptr1_reg[9] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[9]),
        .Q(w2r_wptr1[9]));
  FDCE \w2r_wptr2_reg[0] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[0]),
        .Q(w2r_wptr2[0]));
  FDCE \w2r_wptr2_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[10]),
        .Q(w2r_wptr2[10]));
  FDCE \w2r_wptr2_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[1]),
        .Q(w2r_wptr2[1]));
  FDCE \w2r_wptr2_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[2]),
        .Q(w2r_wptr2[2]));
  FDCE \w2r_wptr2_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[3]),
        .Q(w2r_wptr2[3]));
  FDCE \w2r_wptr2_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[4]),
        .Q(w2r_wptr2[4]));
  FDCE \w2r_wptr2_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[5]),
        .Q(w2r_wptr2[5]));
  FDCE \w2r_wptr2_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[6]),
        .Q(w2r_wptr2[6]));
  FDCE \w2r_wptr2_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[7]),
        .Q(w2r_wptr2[7]));
  FDCE \w2r_wptr2_reg[8] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[8]),
        .Q(w2r_wptr2[8]));
  FDCE \w2r_wptr2_reg[9] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[9]),
        .Q(w2r_wptr2[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_1 
       (.I0(waddr_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \waddr[10]_i_1 
       (.I0(waddr_reg[8]),
        .I1(waddr_reg[6]),
        .I2(\waddr[10]_i_2_n_0 ),
        .I3(waddr_reg[7]),
        .I4(waddr_reg[9]),
        .I5(waddr_reg__0),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \waddr[10]_i_2 
       (.I0(waddr_reg[5]),
        .I1(waddr_reg[3]),
        .I2(waddr_reg[1]),
        .I3(waddr_reg[0]),
        .I4(waddr_reg[2]),
        .I5(waddr_reg[4]),
        .O(\waddr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \waddr[1]_i_1 
       (.I0(waddr_reg[0]),
        .I1(waddr_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \waddr[2]_i_1 
       (.I0(waddr_reg[0]),
        .I1(waddr_reg[1]),
        .I2(waddr_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \waddr[3]_i_1 
       (.I0(waddr_reg[1]),
        .I1(waddr_reg[0]),
        .I2(waddr_reg[2]),
        .I3(waddr_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \waddr[4]_i_1 
       (.I0(waddr_reg[2]),
        .I1(waddr_reg[0]),
        .I2(waddr_reg[1]),
        .I3(waddr_reg[3]),
        .I4(waddr_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \waddr[5]_i_1 
       (.I0(waddr_reg[3]),
        .I1(waddr_reg[1]),
        .I2(waddr_reg[0]),
        .I3(waddr_reg[2]),
        .I4(waddr_reg[4]),
        .I5(waddr_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \waddr[6]_i_1 
       (.I0(\waddr[10]_i_2_n_0 ),
        .I1(waddr_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \waddr[7]_i_1 
       (.I0(\waddr[10]_i_2_n_0 ),
        .I1(waddr_reg[6]),
        .I2(waddr_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \waddr[8]_i_1 
       (.I0(waddr_reg[6]),
        .I1(\waddr[10]_i_2_n_0 ),
        .I2(waddr_reg[7]),
        .I3(waddr_reg[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \waddr[9]_i_1 
       (.I0(waddr_reg[7]),
        .I1(\waddr[10]_i_2_n_0 ),
        .I2(waddr_reg[6]),
        .I3(waddr_reg[8]),
        .I4(waddr_reg[9]),
        .O(p_0_in[9]));
  FDCE \waddr_reg[0] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(waddr_reg[0]));
  FDCE \waddr_reg[10] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(waddr_reg__0));
  FDCE \waddr_reg[1] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(waddr_reg[1]));
  FDCE \waddr_reg[2] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(waddr_reg[2]));
  FDCE \waddr_reg[3] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(waddr_reg[3]));
  FDCE \waddr_reg[4] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(waddr_reg[4]));
  FDCE \waddr_reg[5] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(waddr_reg[5]));
  FDCE \waddr_reg[6] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(waddr_reg[6]));
  FDCE \waddr_reg[7] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(waddr_reg[7]));
  FDCE \waddr_reg[8] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(waddr_reg[8]));
  FDCE \waddr_reg[9] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[10]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(waddr_reg[9]));
  CARRY4 wfull_carry
       (.CI(1'b0),
        .CO({wfull,wfull_carry_n_1,wfull_carry_n_2,wfull_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_wfull_carry_O_UNCONNECTED[3:0]),
        .S({ram_n_27,ram_n_28,ram_n_29,ram_n_30}));
endmodule

(* ORIG_REF_NAME = "axis_to_video" *) 
module base_axis_to_video_1_0_axis_to_video
   (locked,
    vid_data,
    vid_hsync,
    vid_vsync,
    vid_active_video,
    s_axis_tready,
    underflow,
    vid_rstn,
    aclk,
    vid_clk,
    DIADI,
    s_axis_tvalid,
    aresetn);
  output locked;
  output [23:0]vid_data;
  output vid_hsync;
  output vid_vsync;
  output vid_active_video;
  output s_axis_tready;
  output underflow;
  input vid_rstn;
  input aclk;
  input vid_clk;
  input [25:0]DIADI;
  input s_axis_tvalid;
  input aresetn;

  wire [25:0]DIADI;
  wire aclk;
  wire active_video_w;
  wire aresetn;
  wire fifo_n_25;
  wire frmsync_req_reg_n_0;
  wire locked;
  wire locked_r_i_1_n_0;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire timing_n_2;
  wire timing_n_3;
  wire tuser;
  wire underflow;
  wire vid_active_video;
  wire vid_clk;
  wire [23:0]vid_data;
  wire vid_hsync;
  wire vid_rstn;
  wire vid_vsync;
  wire vsync_w;
  wire w2r_wfull1;
  wire w2r_wfull2;
  wire wfull;

  FDRE active_video_r_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(active_video_w),
        .Q(vid_active_video),
        .R(1'b0));
  base_axis_to_video_1_0_async_fifo fifo
       (.DIADI(DIADI),
        .DOBDO({tuser,vid_data}),
        .aclk(aclk),
        .active_video_w(active_video_w),
        .aresetn(aresetn),
        .mem_reg(frmsync_req_reg_n_0),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .underflow(underflow),
        .vid_clk(vid_clk),
        .vid_rstn(vid_rstn),
        .vid_rstn_0(fifo_n_25),
        .wfull(wfull));
  FDPE frmsync_req_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(timing_n_3),
        .PRE(fifo_n_25),
        .Q(frmsync_req_reg_n_0));
  FDRE hsync_r_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(timing_n_2),
        .Q(vid_hsync),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    locked_r_i_1
       (.I0(w2r_wfull2),
        .I1(locked),
        .O(locked_r_i_1_n_0));
  FDCE locked_r_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_25),
        .D(locked_r_i_1_n_0),
        .Q(locked));
  base_axis_to_video_1_0_video_timing_gen timing
       (.DOBDO(tuser),
        .active_video_w(active_video_w),
        .frmsync_req_reg(frmsync_req_reg_n_0),
        .locked(locked),
        .mem_reg(timing_n_3),
        .vid_clk(vid_clk),
        .vid_hsync_reg_0(timing_n_2),
        .vid_rstn(vid_rstn),
        .vid_vsync(vid_vsync),
        .vsync_w(vsync_w));
  FDRE vsync_r_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(vsync_w),
        .Q(vid_vsync),
        .R(1'b0));
  FDCE w2r_wfull1_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_25),
        .D(wfull),
        .Q(w2r_wfull1));
  FDCE w2r_wfull2_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_25),
        .D(w2r_wfull1),
        .Q(w2r_wfull2));
endmodule

(* ORIG_REF_NAME = "axis_to_video_v1_0" *) 
module base_axis_to_video_1_0_axis_to_video_v1_0
   (locked,
    vid_data,
    vid_hsync,
    vid_vsync,
    vid_active_video,
    s_axis_tready,
    underflow,
    vid_rstn,
    aclk,
    vid_clk,
    DIADI,
    s_axis_tvalid,
    aresetn);
  output locked;
  output [23:0]vid_data;
  output vid_hsync;
  output vid_vsync;
  output vid_active_video;
  output s_axis_tready;
  output underflow;
  input vid_rstn;
  input aclk;
  input vid_clk;
  input [25:0]DIADI;
  input s_axis_tvalid;
  input aresetn;

  wire [25:0]DIADI;
  wire aclk;
  wire aresetn;
  wire locked;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire underflow;
  wire vid_active_video;
  wire vid_clk;
  wire [23:0]vid_data;
  wire vid_hsync;
  wire vid_rstn;
  wire vid_vsync;

  base_axis_to_video_1_0_axis_to_video axis_to_video_inst
       (.DIADI(DIADI),
        .aclk(aclk),
        .aresetn(aresetn),
        .locked(locked),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .underflow(underflow),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .vid_data(vid_data),
        .vid_hsync(vid_hsync),
        .vid_rstn(vid_rstn),
        .vid_vsync(vid_vsync));
endmodule

(* ORIG_REF_NAME = "full_dp_ram" *) 
module base_axis_to_video_1_0_full_dp_ram
   (DOBDO,
    wr_flag,
    rd_flag,
    S,
    \w2r_wptr2_reg[9] ,
    aclk,
    vid_clk,
    waddr_reg,
    raddr_reg,
    DIADI,
    s_axis_tvalid,
    wfull,
    Q,
    waddr_reg__0,
    active_video_w,
    mem_reg_0,
    underflow,
    underflow_0,
    raddr_reg__0);
  output [24:0]DOBDO;
  output wr_flag;
  output rd_flag;
  output [3:0]S;
  output [3:0]\w2r_wptr2_reg[9] ;
  input aclk;
  input vid_clk;
  input [9:0]waddr_reg;
  input [9:0]raddr_reg;
  input [25:0]DIADI;
  input s_axis_tvalid;
  input wfull;
  input [10:0]Q;
  input [0:0]waddr_reg__0;
  input active_video_w;
  input mem_reg_0;
  input underflow;
  input [10:0]underflow_0;
  input [0:0]raddr_reg__0;

  wire [25:0]DIADI;
  wire [24:0]DOBDO;
  wire [10:0]Q;
  wire [3:0]S;
  wire aclk;
  wire active_video_w;
  wire mem_reg_0;
  wire mem_reg_n_43;
  wire [9:0]raddr_reg;
  wire [0:0]raddr_reg__0;
  wire rd_flag;
  wire rempty_carry_i_5_n_0;
  wire rempty_carry_i_6_n_0;
  wire rempty_carry_i_7_n_0;
  wire s_axis_tvalid;
  wire underflow;
  wire [10:0]underflow_0;
  wire vid_clk;
  wire [3:0]\w2r_wptr2_reg[9] ;
  wire [9:0]waddr_reg;
  wire [0:0]waddr_reg__0;
  wire wfull;
  wire wfull_carry_i_5_n_0;
  wire wfull_carry_i_6_n_0;
  wire wfull_carry_i_7_n_0;
  wire wr_flag;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:26]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d26" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d26" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst/axis_to_video_inst/fifo/ram/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "25" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,waddr_reg,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,raddr_reg,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(vid_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:26],DOBDO[24],mem_reg_n_43,DOBDO[23:0]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(wr_flag),
        .ENBWREN(rd_flag),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({1'b1,1'b1,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_1
       (.I0(s_axis_tvalid),
        .I1(wfull),
        .O(wr_flag));
  LUT4 #(
    .INIT(16'h002E)) 
    mem_reg_i_2
       (.I0(active_video_w),
        .I1(mem_reg_0),
        .I2(DOBDO[24]),
        .I3(underflow),
        .O(rd_flag));
  LUT4 #(
    .INIT(16'h6009)) 
    rempty_carry_i_1
       (.I0(underflow_0[9]),
        .I1(raddr_reg[9]),
        .I2(underflow_0[10]),
        .I3(raddr_reg__0),
        .O(\w2r_wptr2_reg[9] [3]));
  LUT4 #(
    .INIT(16'h6900)) 
    rempty_carry_i_2
       (.I0(underflow_0[6]),
        .I1(raddr_reg[7]),
        .I2(raddr_reg[6]),
        .I3(rempty_carry_i_5_n_0),
        .O(\w2r_wptr2_reg[9] [2]));
  LUT4 #(
    .INIT(16'h6900)) 
    rempty_carry_i_3
       (.I0(underflow_0[3]),
        .I1(raddr_reg[4]),
        .I2(raddr_reg[3]),
        .I3(rempty_carry_i_6_n_0),
        .O(\w2r_wptr2_reg[9] [1]));
  LUT4 #(
    .INIT(16'h6900)) 
    rempty_carry_i_4
       (.I0(underflow_0[0]),
        .I1(raddr_reg[1]),
        .I2(raddr_reg[0]),
        .I3(rempty_carry_i_7_n_0),
        .O(\w2r_wptr2_reg[9] [0]));
  LUT5 #(
    .INIT(32'h06609009)) 
    rempty_carry_i_5
       (.I0(underflow_0[7]),
        .I1(raddr_reg[7]),
        .I2(underflow_0[8]),
        .I3(raddr_reg[9]),
        .I4(raddr_reg[8]),
        .O(rempty_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h06609009)) 
    rempty_carry_i_6
       (.I0(underflow_0[4]),
        .I1(raddr_reg[4]),
        .I2(underflow_0[5]),
        .I3(raddr_reg[6]),
        .I4(raddr_reg[5]),
        .O(rempty_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h06609009)) 
    rempty_carry_i_7
       (.I0(underflow_0[1]),
        .I1(raddr_reg[1]),
        .I2(underflow_0[2]),
        .I3(raddr_reg[3]),
        .I4(raddr_reg[2]),
        .O(rempty_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0690)) 
    wfull_carry_i_1
       (.I0(waddr_reg[9]),
        .I1(Q[9]),
        .I2(waddr_reg__0),
        .I3(Q[10]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h6900)) 
    wfull_carry_i_2
       (.I0(waddr_reg[7]),
        .I1(waddr_reg[6]),
        .I2(Q[6]),
        .I3(wfull_carry_i_5_n_0),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h6900)) 
    wfull_carry_i_3
       (.I0(waddr_reg[4]),
        .I1(waddr_reg[3]),
        .I2(Q[3]),
        .I3(wfull_carry_i_6_n_0),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h6900)) 
    wfull_carry_i_4
       (.I0(waddr_reg[1]),
        .I1(waddr_reg[0]),
        .I2(Q[0]),
        .I3(wfull_carry_i_7_n_0),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h06906009)) 
    wfull_carry_i_5
       (.I0(waddr_reg[7]),
        .I1(Q[7]),
        .I2(waddr_reg[9]),
        .I3(waddr_reg[8]),
        .I4(Q[8]),
        .O(wfull_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h06906009)) 
    wfull_carry_i_6
       (.I0(waddr_reg[4]),
        .I1(Q[4]),
        .I2(waddr_reg[6]),
        .I3(waddr_reg[5]),
        .I4(Q[5]),
        .O(wfull_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h06906009)) 
    wfull_carry_i_7
       (.I0(waddr_reg[1]),
        .I1(Q[1]),
        .I2(waddr_reg[3]),
        .I3(waddr_reg[2]),
        .I4(Q[2]),
        .O(wfull_carry_i_7_n_0));
endmodule

(* ORIG_REF_NAME = "video_timing_gen" *) 
module base_axis_to_video_1_0_video_timing_gen
   (active_video_w,
    vsync_w,
    vid_hsync_reg_0,
    mem_reg,
    vid_clk,
    vid_rstn,
    locked,
    DOBDO,
    frmsync_req_reg,
    vid_vsync);
  output active_video_w;
  output vsync_w;
  output vid_hsync_reg_0;
  output mem_reg;
  input vid_clk;
  input vid_rstn;
  input locked;
  input [0:0]DOBDO;
  input frmsync_req_reg;
  input vid_vsync;

  wire [0:0]DOBDO;
  wire active_video_w;
  wire frmsync_req_reg;
  wire line_cnt;
  wire \line_cnt[0]_i_1_n_0 ;
  wire \line_cnt[1]_i_1_n_0 ;
  wire \line_cnt[2]_i_1_n_0 ;
  wire \line_cnt[3]_i_1_n_0 ;
  wire \line_cnt[4]_i_1_n_0 ;
  wire \line_cnt[5]_i_1_n_0 ;
  wire \line_cnt[5]_i_2_n_0 ;
  wire \line_cnt[6]_i_1_n_0 ;
  wire \line_cnt[7]_i_1_n_0 ;
  wire \line_cnt[8]_i_1_n_0 ;
  wire \line_cnt[9]_i_2_n_0 ;
  wire \line_cnt[9]_i_3_n_0 ;
  wire \line_cnt[9]_i_4_n_0 ;
  wire \line_cnt[9]_i_5_n_0 ;
  wire \line_cnt_reg_n_0_[0] ;
  wire \line_cnt_reg_n_0_[1] ;
  wire \line_cnt_reg_n_0_[2] ;
  wire \line_cnt_reg_n_0_[3] ;
  wire \line_cnt_reg_n_0_[4] ;
  wire \line_cnt_reg_n_0_[5] ;
  wire \line_cnt_reg_n_0_[6] ;
  wire \line_cnt_reg_n_0_[7] ;
  wire \line_cnt_reg_n_0_[8] ;
  wire \line_cnt_reg_n_0_[9] ;
  wire locked;
  wire mem_reg;
  wire [10:0]pix_cnt;
  wire \pix_cnt[0]_i_1_n_0 ;
  wire \pix_cnt[0]_i_2_n_0 ;
  wire \pix_cnt[10]_i_1_n_0 ;
  wire \pix_cnt[10]_i_2_n_0 ;
  wire \pix_cnt[10]_i_3_n_0 ;
  wire \pix_cnt[10]_i_4_n_0 ;
  wire \pix_cnt[10]_i_5_n_0 ;
  wire \pix_cnt[10]_i_6_n_0 ;
  wire \pix_cnt[1]_i_1_n_0 ;
  wire \pix_cnt[2]_i_1_n_0 ;
  wire \pix_cnt[3]_i_1_n_0 ;
  wire \pix_cnt[4]_i_1_n_0 ;
  wire \pix_cnt[5]_i_1_n_0 ;
  wire \pix_cnt[6]_i_1_n_0 ;
  wire \pix_cnt[7]_i_1_n_0 ;
  wire \pix_cnt[8]_i_1_n_0 ;
  wire \pix_cnt[8]_i_2_n_0 ;
  wire \pix_cnt[9]_i_1_n_0 ;
  wire vid_active_video0;
  wire vid_active_video_i_2_n_0;
  wire vid_active_video_i_3_n_0;
  wire vid_active_video_i_4_n_0;
  wire vid_clk;
  wire vid_hsync_i_1_n_0;
  wire vid_hsync_reg_0;
  wire vid_rstn;
  wire vid_vsync;
  wire vid_vsync0;
  wire vsync_w;

  LUT5 #(
    .INIT(32'h707F7F70)) 
    frmsync_req_i_1
       (.I0(DOBDO),
        .I1(active_video_w),
        .I2(frmsync_req_reg),
        .I3(vsync_w),
        .I4(vid_vsync),
        .O(mem_reg));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_cnt[0]_i_1 
       (.I0(\line_cnt[9]_i_3_n_0 ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .O(\line_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \line_cnt[1]_i_1 
       (.I0(\line_cnt[9]_i_3_n_0 ),
        .I1(\line_cnt_reg_n_0_[1] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .O(\line_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \line_cnt[2]_i_1 
       (.I0(\line_cnt[9]_i_3_n_0 ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .I3(\line_cnt_reg_n_0_[1] ),
        .O(\line_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \line_cnt[3]_i_1 
       (.I0(\line_cnt[9]_i_3_n_0 ),
        .I1(\line_cnt_reg_n_0_[3] ),
        .I2(\line_cnt_reg_n_0_[1] ),
        .I3(\line_cnt_reg_n_0_[0] ),
        .I4(\line_cnt_reg_n_0_[2] ),
        .O(\line_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \line_cnt[4]_i_1 
       (.I0(\line_cnt[9]_i_3_n_0 ),
        .I1(\line_cnt_reg_n_0_[4] ),
        .I2(\line_cnt_reg_n_0_[1] ),
        .I3(\line_cnt_reg_n_0_[0] ),
        .I4(\line_cnt_reg_n_0_[3] ),
        .I5(\line_cnt_reg_n_0_[2] ),
        .O(\line_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \line_cnt[5]_i_1 
       (.I0(\line_cnt[9]_i_3_n_0 ),
        .I1(\line_cnt_reg_n_0_[5] ),
        .I2(\line_cnt[5]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[4] ),
        .O(\line_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \line_cnt[5]_i_2 
       (.I0(\line_cnt_reg_n_0_[1] ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .I2(\line_cnt_reg_n_0_[3] ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .O(\line_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \line_cnt[6]_i_1 
       (.I0(\line_cnt[9]_i_3_n_0 ),
        .I1(\line_cnt_reg_n_0_[6] ),
        .I2(\line_cnt[9]_i_4_n_0 ),
        .O(\line_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \line_cnt[7]_i_1 
       (.I0(\line_cnt[9]_i_3_n_0 ),
        .I1(\line_cnt_reg_n_0_[7] ),
        .I2(\line_cnt[9]_i_4_n_0 ),
        .I3(\line_cnt_reg_n_0_[6] ),
        .O(\line_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \line_cnt[8]_i_1 
       (.I0(\line_cnt[9]_i_3_n_0 ),
        .I1(\line_cnt_reg_n_0_[8] ),
        .I2(\line_cnt_reg_n_0_[7] ),
        .I3(\line_cnt_reg_n_0_[6] ),
        .I4(\line_cnt[9]_i_4_n_0 ),
        .O(\line_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \line_cnt[9]_i_1 
       (.I0(\pix_cnt[0]_i_2_n_0 ),
        .I1(pix_cnt[5]),
        .I2(pix_cnt[10]),
        .I3(pix_cnt[9]),
        .I4(pix_cnt[8]),
        .I5(\pix_cnt[8]_i_2_n_0 ),
        .O(line_cnt));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \line_cnt[9]_i_2 
       (.I0(\line_cnt[9]_i_3_n_0 ),
        .I1(\line_cnt_reg_n_0_[9] ),
        .I2(\line_cnt_reg_n_0_[6] ),
        .I3(\line_cnt_reg_n_0_[7] ),
        .I4(\line_cnt_reg_n_0_[8] ),
        .I5(\line_cnt[9]_i_4_n_0 ),
        .O(\line_cnt[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \line_cnt[9]_i_3 
       (.I0(\line_cnt_reg_n_0_[6] ),
        .I1(\line_cnt_reg_n_0_[5] ),
        .I2(\line_cnt_reg_n_0_[4] ),
        .I3(\line_cnt[9]_i_5_n_0 ),
        .I4(\line_cnt_reg_n_0_[9] ),
        .O(\line_cnt[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \line_cnt[9]_i_4 
       (.I0(\line_cnt_reg_n_0_[5] ),
        .I1(\line_cnt_reg_n_0_[4] ),
        .I2(\line_cnt_reg_n_0_[2] ),
        .I3(\line_cnt_reg_n_0_[3] ),
        .I4(\line_cnt_reg_n_0_[0] ),
        .I5(\line_cnt_reg_n_0_[1] ),
        .O(\line_cnt[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \line_cnt[9]_i_5 
       (.I0(\line_cnt_reg_n_0_[3] ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[8] ),
        .I3(\line_cnt_reg_n_0_[7] ),
        .O(\line_cnt[9]_i_5_n_0 ));
  FDCE \line_cnt_reg[0] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[0]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[0] ));
  FDCE \line_cnt_reg[1] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[1]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[1] ));
  FDCE \line_cnt_reg[2] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[2]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[2] ));
  FDCE \line_cnt_reg[3] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[3]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[3] ));
  FDCE \line_cnt_reg[4] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[4]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[4] ));
  FDCE \line_cnt_reg[5] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[5]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[5] ));
  FDCE \line_cnt_reg[6] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[6]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[6] ));
  FDCE \line_cnt_reg[7] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[7]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[7] ));
  FDCE \line_cnt_reg[8] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[8]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[8] ));
  FDCE \line_cnt_reg[9] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[9]_i_2_n_0 ),
        .Q(\line_cnt_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h000000000002FFFF)) 
    \pix_cnt[0]_i_1 
       (.I0(\pix_cnt[0]_i_2_n_0 ),
        .I1(pix_cnt[5]),
        .I2(pix_cnt[9]),
        .I3(pix_cnt[8]),
        .I4(pix_cnt[10]),
        .I5(pix_cnt[0]),
        .O(\pix_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \pix_cnt[0]_i_2 
       (.I0(pix_cnt[6]),
        .I1(pix_cnt[7]),
        .O(\pix_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pix_cnt[10]_i_1 
       (.I0(\pix_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[10]),
        .I2(\pix_cnt[10]_i_4_n_0 ),
        .I3(pix_cnt[8]),
        .I4(pix_cnt[9]),
        .I5(\pix_cnt[10]_i_5_n_0 ),
        .O(\pix_cnt[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \pix_cnt[10]_i_2 
       (.I0(vid_rstn),
        .I1(locked),
        .O(\pix_cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \pix_cnt[10]_i_3 
       (.I0(\pix_cnt[8]_i_2_n_0 ),
        .I1(pix_cnt[5]),
        .I2(pix_cnt[6]),
        .I3(pix_cnt[7]),
        .I4(\pix_cnt[10]_i_6_n_0 ),
        .I5(pix_cnt[10]),
        .O(\pix_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[10]_i_4 
       (.I0(pix_cnt[5]),
        .I1(pix_cnt[7]),
        .O(\pix_cnt[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pix_cnt[10]_i_5 
       (.I0(pix_cnt[6]),
        .I1(pix_cnt[4]),
        .I2(pix_cnt[2]),
        .I3(pix_cnt[0]),
        .I4(pix_cnt[1]),
        .I5(pix_cnt[3]),
        .O(\pix_cnt[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pix_cnt[10]_i_6 
       (.I0(pix_cnt[8]),
        .I1(pix_cnt[9]),
        .O(\pix_cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \pix_cnt[1]_i_1 
       (.I0(\pix_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[1]),
        .I2(pix_cnt[0]),
        .O(\pix_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \pix_cnt[2]_i_1 
       (.I0(\pix_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[2]),
        .I2(pix_cnt[0]),
        .I3(pix_cnt[1]),
        .O(\pix_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \pix_cnt[3]_i_1 
       (.I0(\pix_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[3]),
        .I2(pix_cnt[1]),
        .I3(pix_cnt[0]),
        .I4(pix_cnt[2]),
        .O(\pix_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pix_cnt[4]_i_1 
       (.I0(\pix_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[4]),
        .I2(pix_cnt[2]),
        .I3(pix_cnt[0]),
        .I4(pix_cnt[1]),
        .I5(pix_cnt[3]),
        .O(\pix_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \pix_cnt[5]_i_1 
       (.I0(\pix_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[5]),
        .I2(\pix_cnt[8]_i_2_n_0 ),
        .O(\pix_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8828)) 
    \pix_cnt[6]_i_1 
       (.I0(\pix_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[6]),
        .I2(pix_cnt[5]),
        .I3(\pix_cnt[8]_i_2_n_0 ),
        .O(\pix_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h82888888)) 
    \pix_cnt[7]_i_1 
       (.I0(\pix_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[7]),
        .I2(\pix_cnt[8]_i_2_n_0 ),
        .I3(pix_cnt[6]),
        .I4(pix_cnt[5]),
        .O(\pix_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8288888888888888)) 
    \pix_cnt[8]_i_1 
       (.I0(\pix_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[8]),
        .I2(\pix_cnt[8]_i_2_n_0 ),
        .I3(pix_cnt[6]),
        .I4(pix_cnt[7]),
        .I5(pix_cnt[5]),
        .O(\pix_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \pix_cnt[8]_i_2 
       (.I0(pix_cnt[3]),
        .I1(pix_cnt[1]),
        .I2(pix_cnt[0]),
        .I3(pix_cnt[2]),
        .I4(pix_cnt[4]),
        .O(\pix_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pix_cnt[9]_i_1 
       (.I0(\pix_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[9]),
        .I2(pix_cnt[8]),
        .I3(pix_cnt[5]),
        .I4(pix_cnt[7]),
        .I5(\pix_cnt[10]_i_5_n_0 ),
        .O(\pix_cnt[9]_i_1_n_0 ));
  FDCE \pix_cnt_reg[0] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[0]_i_1_n_0 ),
        .Q(pix_cnt[0]));
  FDCE \pix_cnt_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[10]_i_1_n_0 ),
        .Q(pix_cnt[10]));
  FDCE \pix_cnt_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[1]_i_1_n_0 ),
        .Q(pix_cnt[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[2]_i_1_n_0 ),
        .Q(pix_cnt[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[3]_i_1_n_0 ),
        .Q(pix_cnt[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[4]_i_1_n_0 ),
        .Q(pix_cnt[4]));
  FDCE \pix_cnt_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[5]_i_1_n_0 ),
        .Q(pix_cnt[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[6]_i_1_n_0 ),
        .Q(pix_cnt[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[7]_i_1_n_0 ),
        .Q(pix_cnt[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[8]_i_1_n_0 ),
        .Q(pix_cnt[8]));
  FDCE \pix_cnt_reg[9] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(\pix_cnt[9]_i_1_n_0 ),
        .Q(pix_cnt[9]));
  LUT5 #(
    .INIT(32'hFF00EA00)) 
    vid_active_video_i_1
       (.I0(vid_active_video_i_2_n_0),
        .I1(\line_cnt_reg_n_0_[5] ),
        .I2(\line_cnt_reg_n_0_[4] ),
        .I3(vid_active_video_i_3_n_0),
        .I4(vid_active_video_i_4_n_0),
        .O(vid_active_video0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    vid_active_video_i_2
       (.I0(\line_cnt_reg_n_0_[7] ),
        .I1(\line_cnt_reg_n_0_[6] ),
        .I2(\line_cnt_reg_n_0_[9] ),
        .I3(\line_cnt_reg_n_0_[8] ),
        .O(vid_active_video_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    vid_active_video_i_3
       (.I0(pix_cnt[9]),
        .I1(pix_cnt[8]),
        .I2(pix_cnt[10]),
        .O(vid_active_video_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    vid_active_video_i_4
       (.I0(\line_cnt_reg_n_0_[2] ),
        .I1(\line_cnt_reg_n_0_[3] ),
        .I2(\line_cnt_reg_n_0_[5] ),
        .I3(\line_cnt_reg_n_0_[1] ),
        .I4(\line_cnt_reg_n_0_[0] ),
        .O(vid_active_video_i_4_n_0));
  FDCE vid_active_video_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(vid_active_video0),
        .Q(active_video_w));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0001F)) 
    vid_hsync_i_1
       (.I0(pix_cnt[3]),
        .I1(pix_cnt[4]),
        .I2(pix_cnt[5]),
        .I3(pix_cnt[6]),
        .I4(pix_cnt[7]),
        .I5(vid_active_video_i_3_n_0),
        .O(vid_hsync_i_1_n_0));
  FDPE vid_hsync_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(vid_hsync_i_1_n_0),
        .PRE(\pix_cnt[10]_i_2_n_0 ),
        .Q(vid_hsync_reg_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    vid_vsync_i_1
       (.I0(\line_cnt_reg_n_0_[4] ),
        .I1(\line_cnt_reg_n_0_[5] ),
        .I2(\line_cnt_reg_n_0_[2] ),
        .I3(\line_cnt_reg_n_0_[3] ),
        .I4(\line_cnt_reg_n_0_[1] ),
        .I5(vid_active_video_i_2_n_0),
        .O(vid_vsync0));
  FDCE vid_vsync_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[10]_i_2_n_0 ),
        .D(vid_vsync0),
        .Q(vsync_w));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
