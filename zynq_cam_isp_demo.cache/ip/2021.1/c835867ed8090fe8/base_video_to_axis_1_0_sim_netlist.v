// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Sep 18 22:50:13 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_video_to_axis_1_0_sim_netlist.v
// Design      : base_video_to_axis_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo
   (DOBDO,
    vid_rstn_0,
    overflow,
    m_axis_tvalid,
    vid_clk,
    aclk,
    DIADI,
    aresetn,
    vid_rstn,
    prev_active_video,
    vid_active_video,
    m_axis_tready);
  output [25:0]DOBDO;
  output vid_rstn_0;
  output overflow;
  output m_axis_tvalid;
  input vid_clk;
  input aclk;
  input [24:0]DIADI;
  input aresetn;
  input vid_rstn;
  input prev_active_video;
  input vid_active_video;
  input m_axis_tready;

  wire [24:0]DIADI;
  wire [25:0]DOBDO;
  wire aclk;
  wire aresetn;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire overflow;
  wire [10:0]p_0_in;
  wire [10:0]p_0_in__0;
  wire prev_active_video;
  wire [10:0]r2w_rptr1;
  wire [10:0]r2w_rptr2;
  wire \raddr[10]_i_2_n_0 ;
  wire [9:0]raddr_reg;
  wire [10:10]raddr_reg__0;
  wire ram_n_28;
  wire ram_n_29;
  wire ram_n_30;
  wire ram_n_31;
  wire ram_n_32;
  wire ram_n_33;
  wire ram_n_34;
  wire ram_n_35;
  wire rd_flag;
  wire rempty;
  wire rempty_carry_n_1;
  wire rempty_carry_n_2;
  wire rempty_carry_n_3;
  wire [9:0]rptr;
  wire vid_active_video;
  wire vid_clk;
  wire vid_rstn;
  wire vid_rstn_0;
  wire [10:0]w2r_wptr1;
  wire \w2r_wptr1[10]_i_1_n_0 ;
  wire [10:0]w2r_wptr2;
  wire \waddr[10]_i_2_n_0 ;
  wire [9:0]waddr_reg;
  wire [10:10]waddr_reg__0;
  wire wfull_carry_n_1;
  wire wfull_carry_n_2;
  wire wfull_carry_n_3;
  wire [9:0]wptr;
  wire wr_flag;
  wire [3:0]NLW_rempty_carry_O_UNCONNECTED;
  wire [3:0]NLW_wfull_carry_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_INST_0
       (.I0(rempty),
        .O(m_axis_tvalid));
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
       (.I0(vid_rstn),
        .O(vid_rstn_0));
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
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[0]),
        .Q(r2w_rptr1[0]));
  FDCE \r2w_rptr1_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(raddr_reg__0),
        .Q(r2w_rptr1[10]));
  FDCE \r2w_rptr1_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[1]),
        .Q(r2w_rptr1[1]));
  FDCE \r2w_rptr1_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[2]),
        .Q(r2w_rptr1[2]));
  FDCE \r2w_rptr1_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[3]),
        .Q(r2w_rptr1[3]));
  FDCE \r2w_rptr1_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[4]),
        .Q(r2w_rptr1[4]));
  FDCE \r2w_rptr1_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[5]),
        .Q(r2w_rptr1[5]));
  FDCE \r2w_rptr1_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[6]),
        .Q(r2w_rptr1[6]));
  FDCE \r2w_rptr1_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[7]),
        .Q(r2w_rptr1[7]));
  FDCE \r2w_rptr1_reg[8] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[8]),
        .Q(r2w_rptr1[8]));
  FDCE \r2w_rptr1_reg[9] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[9]),
        .Q(r2w_rptr1[9]));
  FDCE \r2w_rptr2_reg[0] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[0]),
        .Q(r2w_rptr2[0]));
  FDCE \r2w_rptr2_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[10]),
        .Q(r2w_rptr2[10]));
  FDCE \r2w_rptr2_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[1]),
        .Q(r2w_rptr2[1]));
  FDCE \r2w_rptr2_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[2]),
        .Q(r2w_rptr2[2]));
  FDCE \r2w_rptr2_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[3]),
        .Q(r2w_rptr2[3]));
  FDCE \r2w_rptr2_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[4]),
        .Q(r2w_rptr2[4]));
  FDCE \r2w_rptr2_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[5]),
        .Q(r2w_rptr2[5]));
  FDCE \r2w_rptr2_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[6]),
        .Q(r2w_rptr2[6]));
  FDCE \r2w_rptr2_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[7]),
        .Q(r2w_rptr2[7]));
  FDCE \r2w_rptr2_reg[8] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[8]),
        .Q(r2w_rptr2[8]));
  FDCE \r2w_rptr2_reg[9] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
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
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(raddr_reg[0]));
  FDCE \raddr_reg[10] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[10]),
        .Q(raddr_reg__0));
  FDCE \raddr_reg[1] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(raddr_reg[1]));
  FDCE \raddr_reg[2] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(raddr_reg[2]));
  FDCE \raddr_reg[3] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(raddr_reg[3]));
  FDCE \raddr_reg[4] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(raddr_reg[4]));
  FDCE \raddr_reg[5] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(raddr_reg[5]));
  FDCE \raddr_reg[6] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(raddr_reg[6]));
  FDCE \raddr_reg[7] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(raddr_reg[7]));
  FDCE \raddr_reg[8] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[8]),
        .Q(raddr_reg[8]));
  FDCE \raddr_reg[9] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(p_0_in__0[9]),
        .Q(raddr_reg[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram ram
       (.CO(rempty),
        .DIADI(DIADI),
        .DOBDO(DOBDO),
        .Q(r2w_rptr2),
        .S({ram_n_28,ram_n_29,ram_n_30,ram_n_31}),
        .aclk(aclk),
        .m_axis_tready(m_axis_tready),
        .overflow(overflow),
        .prev_active_video(prev_active_video),
        .raddr_reg(raddr_reg),
        .raddr_reg__0(raddr_reg__0),
        .rd_flag(rd_flag),
        .rempty_carry(w2r_wptr2),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .\w2r_wptr2_reg[9] ({ram_n_32,ram_n_33,ram_n_34,ram_n_35}),
        .waddr_reg(waddr_reg),
        .waddr_reg__0(waddr_reg__0),
        .wr_flag(wr_flag));
  CARRY4 rempty_carry
       (.CI(1'b0),
        .CO({rempty,rempty_carry_n_1,rempty_carry_n_2,rempty_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rempty_carry_O_UNCONNECTED[3:0]),
        .S({ram_n_32,ram_n_33,ram_n_34,ram_n_35}));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[0]_i_1 
       (.I0(waddr_reg[1]),
        .I1(waddr_reg[0]),
        .O(wptr[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \w2r_wptr1[10]_i_1 
       (.I0(aresetn),
        .O(\w2r_wptr1[10]_i_1_n_0 ));
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
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(wptr[0]),
        .Q(w2r_wptr1[0]));
  FDCE \w2r_wptr1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(waddr_reg__0),
        .Q(w2r_wptr1[10]));
  FDCE \w2r_wptr1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(wptr[1]),
        .Q(w2r_wptr1[1]));
  FDCE \w2r_wptr1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(wptr[2]),
        .Q(w2r_wptr1[2]));
  FDCE \w2r_wptr1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(wptr[3]),
        .Q(w2r_wptr1[3]));
  FDCE \w2r_wptr1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(wptr[4]),
        .Q(w2r_wptr1[4]));
  FDCE \w2r_wptr1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(wptr[5]),
        .Q(w2r_wptr1[5]));
  FDCE \w2r_wptr1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(wptr[6]),
        .Q(w2r_wptr1[6]));
  FDCE \w2r_wptr1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(wptr[7]),
        .Q(w2r_wptr1[7]));
  FDCE \w2r_wptr1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(wptr[8]),
        .Q(w2r_wptr1[8]));
  FDCE \w2r_wptr1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(wptr[9]),
        .Q(w2r_wptr1[9]));
  FDCE \w2r_wptr2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(w2r_wptr1[0]),
        .Q(w2r_wptr2[0]));
  FDCE \w2r_wptr2_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(w2r_wptr1[10]),
        .Q(w2r_wptr2[10]));
  FDCE \w2r_wptr2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(w2r_wptr1[1]),
        .Q(w2r_wptr2[1]));
  FDCE \w2r_wptr2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(w2r_wptr1[2]),
        .Q(w2r_wptr2[2]));
  FDCE \w2r_wptr2_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(w2r_wptr1[3]),
        .Q(w2r_wptr2[3]));
  FDCE \w2r_wptr2_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(w2r_wptr1[4]),
        .Q(w2r_wptr2[4]));
  FDCE \w2r_wptr2_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(w2r_wptr1[5]),
        .Q(w2r_wptr2[5]));
  FDCE \w2r_wptr2_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(w2r_wptr1[6]),
        .Q(w2r_wptr2[6]));
  FDCE \w2r_wptr2_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(w2r_wptr1[7]),
        .Q(w2r_wptr2[7]));
  FDCE \w2r_wptr2_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
        .D(w2r_wptr1[8]),
        .Q(w2r_wptr2[8]));
  FDCE \w2r_wptr2_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[10]_i_1_n_0 ),
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
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[0]),
        .Q(waddr_reg[0]));
  FDCE \waddr_reg[10] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[10]),
        .Q(waddr_reg__0));
  FDCE \waddr_reg[1] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[1]),
        .Q(waddr_reg[1]));
  FDCE \waddr_reg[2] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[2]),
        .Q(waddr_reg[2]));
  FDCE \waddr_reg[3] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[3]),
        .Q(waddr_reg[3]));
  FDCE \waddr_reg[4] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[4]),
        .Q(waddr_reg[4]));
  FDCE \waddr_reg[5] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[5]),
        .Q(waddr_reg[5]));
  FDCE \waddr_reg[6] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[6]),
        .Q(waddr_reg[6]));
  FDCE \waddr_reg[7] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[7]),
        .Q(waddr_reg[7]));
  FDCE \waddr_reg[8] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[8]),
        .Q(waddr_reg[8]));
  FDCE \waddr_reg[9] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[9]),
        .Q(waddr_reg[9]));
  CARRY4 wfull_carry
       (.CI(1'b0),
        .CO({overflow,wfull_carry_n_1,wfull_carry_n_2,wfull_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_wfull_carry_O_UNCONNECTED[3:0]),
        .S({ram_n_28,ram_n_29,ram_n_30,ram_n_31}));
endmodule

(* CHECK_LICENSE_TYPE = "base_video_to_axis_1_0,video_to_axis_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "video_to_axis_v1_0,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (vid_clk,
    vid_rstn,
    vid_vsync,
    vid_active_video,
    vid_data,
    aclk,
    aresetn,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    m_axis_tuser,
    overflow);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_clk, ASSOCIATED_RESET vid_rstn, ASSOCIATED_BUSIF vid_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_xil_vip_0_0_out_pclk, INSERT_VIP 0" *) input vid_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vid_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_in VSYNC" *) input vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_in ACTIVE_VIDEO" *) input vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_in DATA" *) input [23:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF m_axis, FREQ_HZ 120000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [23:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 120000000, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tuser;
  output overflow;

  wire aclk;
  wire aresetn;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire overflow;
  wire vid_active_video;
  wire vid_clk;
  wire [23:0]vid_data;
  wire vid_rstn;
  wire vid_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis_v1_0 inst
       (.DOBDO({m_axis_tuser,m_axis_tlast,m_axis_tdata}),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(overflow),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .vid_data(vid_data),
        .vid_rstn(vid_rstn),
        .vid_vsync(vid_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram
   (DOBDO,
    wr_flag,
    rd_flag,
    S,
    \w2r_wptr2_reg[9] ,
    vid_clk,
    aclk,
    waddr_reg,
    raddr_reg,
    DIADI,
    prev_active_video,
    overflow,
    vid_active_video,
    Q,
    waddr_reg__0,
    m_axis_tready,
    CO,
    rempty_carry,
    raddr_reg__0);
  output [25:0]DOBDO;
  output wr_flag;
  output rd_flag;
  output [3:0]S;
  output [3:0]\w2r_wptr2_reg[9] ;
  input vid_clk;
  input aclk;
  input [9:0]waddr_reg;
  input [9:0]raddr_reg;
  input [24:0]DIADI;
  input prev_active_video;
  input overflow;
  input vid_active_video;
  input [10:0]Q;
  input [0:0]waddr_reg__0;
  input m_axis_tready;
  input [0:0]CO;
  input [10:0]rempty_carry;
  input [0:0]raddr_reg__0;

  wire [0:0]CO;
  wire [24:0]DIADI;
  wire [25:0]DOBDO;
  wire [10:0]Q;
  wire [3:0]S;
  wire aclk;
  wire m_axis_tready;
  wire overflow;
  wire [24:24]p_0_out;
  wire prev_active_video;
  wire [9:0]raddr_reg;
  wire [0:0]raddr_reg__0;
  wire rd_flag;
  wire [10:0]rempty_carry;
  wire rempty_carry_i_5_n_0;
  wire rempty_carry_i_6_n_0;
  wire rempty_carry_i_7_n_0;
  wire vid_active_video;
  wire vid_clk;
  wire [3:0]\w2r_wptr2_reg[9] ;
  wire [9:0]waddr_reg;
  wire [0:0]waddr_reg__0;
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
  (* RTL_RAM_NAME = "inst/video_to_axis_inst/fifo/ram/mem" *) 
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
        .CLKARDCLK(vid_clk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI[24],p_0_out,DIADI[23:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:26],DOBDO}),
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
       (.I0(prev_active_video),
        .I1(overflow),
        .O(wr_flag));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_2
       (.I0(m_axis_tready),
        .I1(CO),
        .O(rd_flag));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_3
       (.I0(prev_active_video),
        .I1(vid_active_video),
        .O(p_0_out));
  LUT4 #(
    .INIT(16'h6009)) 
    rempty_carry_i_1
       (.I0(rempty_carry[9]),
        .I1(raddr_reg[9]),
        .I2(rempty_carry[10]),
        .I3(raddr_reg__0),
        .O(\w2r_wptr2_reg[9] [3]));
  LUT4 #(
    .INIT(16'h6900)) 
    rempty_carry_i_2
       (.I0(rempty_carry[6]),
        .I1(raddr_reg[7]),
        .I2(raddr_reg[6]),
        .I3(rempty_carry_i_5_n_0),
        .O(\w2r_wptr2_reg[9] [2]));
  LUT4 #(
    .INIT(16'h6900)) 
    rempty_carry_i_3
       (.I0(rempty_carry[3]),
        .I1(raddr_reg[4]),
        .I2(raddr_reg[3]),
        .I3(rempty_carry_i_6_n_0),
        .O(\w2r_wptr2_reg[9] [1]));
  LUT4 #(
    .INIT(16'h6900)) 
    rempty_carry_i_4
       (.I0(rempty_carry[0]),
        .I1(raddr_reg[1]),
        .I2(raddr_reg[0]),
        .I3(rempty_carry_i_7_n_0),
        .O(\w2r_wptr2_reg[9] [0]));
  LUT5 #(
    .INIT(32'h06609009)) 
    rempty_carry_i_5
       (.I0(rempty_carry[7]),
        .I1(raddr_reg[7]),
        .I2(rempty_carry[8]),
        .I3(raddr_reg[9]),
        .I4(raddr_reg[8]),
        .O(rempty_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h06609009)) 
    rempty_carry_i_6
       (.I0(rempty_carry[4]),
        .I1(raddr_reg[4]),
        .I2(rempty_carry[5]),
        .I3(raddr_reg[6]),
        .I4(raddr_reg[5]),
        .O(rempty_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h06609009)) 
    rempty_carry_i_7
       (.I0(rempty_carry[1]),
        .I1(raddr_reg[1]),
        .I2(rempty_carry[2]),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis
   (DOBDO,
    overflow,
    m_axis_tvalid,
    vid_clk,
    aclk,
    vid_active_video,
    vid_data,
    vid_vsync,
    m_axis_tready,
    aresetn,
    vid_rstn);
  output [25:0]DOBDO;
  output overflow;
  output m_axis_tvalid;
  input vid_clk;
  input aclk;
  input vid_active_video;
  input [23:0]vid_data;
  input vid_vsync;
  input m_axis_tready;
  input aresetn;
  input vid_rstn;

  wire [25:0]DOBDO;
  wire aclk;
  wire aresetn;
  wire fifo_n_26;
  wire frmsync;
  wire frmsync_i_1_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire overflow;
  wire prev_active_video;
  wire [23:0]prev_data;
  wire prev_vsync;
  wire vid_active_video;
  wire vid_clk;
  wire [23:0]vid_data;
  wire vid_rstn;
  wire vid_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo fifo
       (.DIADI({frmsync,prev_data}),
        .DOBDO(DOBDO),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(overflow),
        .prev_active_video(prev_active_video),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .vid_rstn(vid_rstn),
        .vid_rstn_0(fifo_n_26));
  LUT4 #(
    .INIT(16'h6F66)) 
    frmsync_i_1
       (.I0(vid_vsync),
        .I1(prev_vsync),
        .I2(prev_active_video),
        .I3(frmsync),
        .O(frmsync_i_1_n_0));
  FDCE frmsync_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(frmsync_i_1_n_0),
        .Q(frmsync));
  FDCE prev_active_video_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_active_video),
        .Q(prev_active_video));
  FDCE \prev_data_reg[0] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[0]),
        .Q(prev_data[0]));
  FDCE \prev_data_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[10]),
        .Q(prev_data[10]));
  FDCE \prev_data_reg[11] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[11]),
        .Q(prev_data[11]));
  FDCE \prev_data_reg[12] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[12]),
        .Q(prev_data[12]));
  FDCE \prev_data_reg[13] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[13]),
        .Q(prev_data[13]));
  FDCE \prev_data_reg[14] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[14]),
        .Q(prev_data[14]));
  FDCE \prev_data_reg[15] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[15]),
        .Q(prev_data[15]));
  FDCE \prev_data_reg[16] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[16]),
        .Q(prev_data[16]));
  FDCE \prev_data_reg[17] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[17]),
        .Q(prev_data[17]));
  FDCE \prev_data_reg[18] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[18]),
        .Q(prev_data[18]));
  FDCE \prev_data_reg[19] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[19]),
        .Q(prev_data[19]));
  FDCE \prev_data_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[1]),
        .Q(prev_data[1]));
  FDCE \prev_data_reg[20] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[20]),
        .Q(prev_data[20]));
  FDCE \prev_data_reg[21] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[21]),
        .Q(prev_data[21]));
  FDCE \prev_data_reg[22] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[22]),
        .Q(prev_data[22]));
  FDCE \prev_data_reg[23] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[23]),
        .Q(prev_data[23]));
  FDCE \prev_data_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[2]),
        .Q(prev_data[2]));
  FDCE \prev_data_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[3]),
        .Q(prev_data[3]));
  FDCE \prev_data_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[4]),
        .Q(prev_data[4]));
  FDCE \prev_data_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[5]),
        .Q(prev_data[5]));
  FDCE \prev_data_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[6]),
        .Q(prev_data[6]));
  FDCE \prev_data_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[7]),
        .Q(prev_data[7]));
  FDCE \prev_data_reg[8] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[8]),
        .Q(prev_data[8]));
  FDCE \prev_data_reg[9] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_data[9]),
        .Q(prev_data[9]));
  FDCE prev_vsync_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_26),
        .D(vid_vsync),
        .Q(prev_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis_v1_0
   (DOBDO,
    overflow,
    m_axis_tvalid,
    vid_clk,
    aclk,
    vid_active_video,
    vid_data,
    vid_vsync,
    m_axis_tready,
    aresetn,
    vid_rstn);
  output [25:0]DOBDO;
  output overflow;
  output m_axis_tvalid;
  input vid_clk;
  input aclk;
  input vid_active_video;
  input [23:0]vid_data;
  input vid_vsync;
  input m_axis_tready;
  input aresetn;
  input vid_rstn;

  wire [25:0]DOBDO;
  wire aclk;
  wire aresetn;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire overflow;
  wire vid_active_video;
  wire vid_clk;
  wire [23:0]vid_data;
  wire vid_rstn;
  wire vid_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis video_to_axis_inst
       (.DOBDO(DOBDO),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(overflow),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .vid_data(vid_data),
        .vid_rstn(vid_rstn),
        .vid_vsync(vid_vsync));
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
