// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Sep 18 22:50:13 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_video_to_axis_0_0_sim_netlist.v
// Design      : base_video_to_axis_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo
   (vid_rstn_0,
    q_b,
    overflow,
    m_axis_tvalid,
    aresetn,
    vid_rstn,
    vid_clk,
    aclk,
    wdata_a,
    prev_active_video,
    vid_active_video,
    m_axis_tready);
  output vid_rstn_0;
  output [9:0]q_b;
  output overflow;
  output m_axis_tvalid;
  input aresetn;
  input vid_rstn;
  input vid_clk;
  input aclk;
  input [8:0]wdata_a;
  input prev_active_video;
  input vid_active_video;
  input m_axis_tready;

  wire aclk;
  wire aresetn;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire overflow;
  wire prev_active_video;
  wire [9:0]q_b;
  wire [12:0]r2w_rptr1;
  wire [12:0]r2w_rptr2;
  wire \raddr[0]_i_2_n_0 ;
  wire [11:0]raddr_reg;
  wire \raddr_reg[0]_i_1_n_0 ;
  wire \raddr_reg[0]_i_1_n_1 ;
  wire \raddr_reg[0]_i_1_n_2 ;
  wire \raddr_reg[0]_i_1_n_3 ;
  wire \raddr_reg[0]_i_1_n_4 ;
  wire \raddr_reg[0]_i_1_n_5 ;
  wire \raddr_reg[0]_i_1_n_6 ;
  wire \raddr_reg[0]_i_1_n_7 ;
  wire \raddr_reg[12]_i_1_n_7 ;
  wire \raddr_reg[4]_i_1_n_0 ;
  wire \raddr_reg[4]_i_1_n_1 ;
  wire \raddr_reg[4]_i_1_n_2 ;
  wire \raddr_reg[4]_i_1_n_3 ;
  wire \raddr_reg[4]_i_1_n_4 ;
  wire \raddr_reg[4]_i_1_n_5 ;
  wire \raddr_reg[4]_i_1_n_6 ;
  wire \raddr_reg[4]_i_1_n_7 ;
  wire \raddr_reg[8]_i_1_n_0 ;
  wire \raddr_reg[8]_i_1_n_1 ;
  wire \raddr_reg[8]_i_1_n_2 ;
  wire \raddr_reg[8]_i_1_n_3 ;
  wire \raddr_reg[8]_i_1_n_4 ;
  wire \raddr_reg[8]_i_1_n_5 ;
  wire \raddr_reg[8]_i_1_n_6 ;
  wire \raddr_reg[8]_i_1_n_7 ;
  wire [12:12]raddr_reg__0;
  wire ram_n_0;
  wire ram_n_2;
  wire rd_flag;
  wire rempty;
  wire rempty_carry_i_1_n_0;
  wire rempty_carry_i_2_n_0;
  wire rempty_carry_i_3_n_0;
  wire rempty_carry_i_4_n_0;
  wire rempty_carry_i_5_n_0;
  wire rempty_carry_i_6_n_0;
  wire rempty_carry_i_7_n_0;
  wire rempty_carry_i_8_n_0;
  wire rempty_carry_n_0;
  wire rempty_carry_n_1;
  wire rempty_carry_n_2;
  wire rempty_carry_n_3;
  wire [11:0]rptr;
  wire vid_active_video;
  wire vid_clk;
  wire vid_rstn;
  wire vid_rstn_0;
  wire [12:0]w2r_wptr1;
  wire \w2r_wptr1[12]_i_1_n_0 ;
  wire [12:0]w2r_wptr2;
  wire \waddr[0]_i_2_n_0 ;
  wire [11:0]waddr_reg;
  wire \waddr_reg[0]_i_1_n_0 ;
  wire \waddr_reg[0]_i_1_n_1 ;
  wire \waddr_reg[0]_i_1_n_2 ;
  wire \waddr_reg[0]_i_1_n_3 ;
  wire \waddr_reg[0]_i_1_n_4 ;
  wire \waddr_reg[0]_i_1_n_5 ;
  wire \waddr_reg[0]_i_1_n_6 ;
  wire \waddr_reg[0]_i_1_n_7 ;
  wire \waddr_reg[12]_i_1_n_7 ;
  wire \waddr_reg[4]_i_1_n_0 ;
  wire \waddr_reg[4]_i_1_n_1 ;
  wire \waddr_reg[4]_i_1_n_2 ;
  wire \waddr_reg[4]_i_1_n_3 ;
  wire \waddr_reg[4]_i_1_n_4 ;
  wire \waddr_reg[4]_i_1_n_5 ;
  wire \waddr_reg[4]_i_1_n_6 ;
  wire \waddr_reg[4]_i_1_n_7 ;
  wire \waddr_reg[8]_i_1_n_0 ;
  wire \waddr_reg[8]_i_1_n_1 ;
  wire \waddr_reg[8]_i_1_n_2 ;
  wire \waddr_reg[8]_i_1_n_3 ;
  wire \waddr_reg[8]_i_1_n_4 ;
  wire \waddr_reg[8]_i_1_n_5 ;
  wire \waddr_reg[8]_i_1_n_6 ;
  wire \waddr_reg[8]_i_1_n_7 ;
  wire [12:12]waddr_reg__0;
  wire [8:0]wdata_a;
  wire wfull_carry_i_1_n_0;
  wire wfull_carry_i_2_n_0;
  wire wfull_carry_i_3_n_0;
  wire wfull_carry_i_4_n_0;
  wire wfull_carry_i_5_n_0;
  wire wfull_carry_i_6_n_0;
  wire wfull_carry_i_7_n_0;
  wire wfull_carry_i_8_n_0;
  wire wfull_carry_n_0;
  wire wfull_carry_n_1;
  wire wfull_carry_n_2;
  wire wfull_carry_n_3;
  wire [11:0]wptr;
  wire wr_flag;
  wire [3:0]\NLW_raddr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_raddr_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_rempty_carry_O_UNCONNECTED;
  wire [3:1]NLW_rempty_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rempty_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_waddr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_waddr_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_wfull_carry_O_UNCONNECTED;
  wire [3:1]NLW_wfull_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_wfull_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_INST_0
       (.I0(rempty),
        .O(m_axis_tvalid));
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[0]_i_1 
       (.I0(raddr_reg[1]),
        .I1(raddr_reg[0]),
        .O(rptr[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[10]_i_1 
       (.I0(raddr_reg[11]),
        .I1(raddr_reg[10]),
        .O(rptr[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[11]_i_1 
       (.I0(raddr_reg__0),
        .I1(raddr_reg[11]),
        .O(rptr[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \r2w_rptr1[12]_i_1 
       (.I0(vid_rstn),
        .O(vid_rstn_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[1]_i_1 
       (.I0(raddr_reg[2]),
        .I1(raddr_reg[1]),
        .O(rptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[2]_i_1 
       (.I0(raddr_reg[3]),
        .I1(raddr_reg[2]),
        .O(rptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[3]_i_1 
       (.I0(raddr_reg[4]),
        .I1(raddr_reg[3]),
        .O(rptr[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[4]_i_1 
       (.I0(raddr_reg[5]),
        .I1(raddr_reg[4]),
        .O(rptr[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[5]_i_1 
       (.I0(raddr_reg[6]),
        .I1(raddr_reg[5]),
        .O(rptr[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[6]_i_1 
       (.I0(raddr_reg[7]),
        .I1(raddr_reg[6]),
        .O(rptr[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[7]_i_1 
       (.I0(raddr_reg[8]),
        .I1(raddr_reg[7]),
        .O(rptr[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[8]_i_1 
       (.I0(raddr_reg[9]),
        .I1(raddr_reg[8]),
        .O(rptr[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[9]_i_1 
       (.I0(raddr_reg[10]),
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
        .D(rptr[10]),
        .Q(r2w_rptr1[10]));
  FDCE \r2w_rptr1_reg[11] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(rptr[11]),
        .Q(r2w_rptr1[11]));
  FDCE \r2w_rptr1_reg[12] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(raddr_reg__0),
        .Q(r2w_rptr1[12]));
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
  FDCE \r2w_rptr2_reg[11] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[11]),
        .Q(r2w_rptr2[11]));
  FDCE \r2w_rptr2_reg[12] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(r2w_rptr1[12]),
        .Q(r2w_rptr2[12]));
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
    \raddr[0]_i_2 
       (.I0(raddr_reg[0]),
        .O(\raddr[0]_i_2_n_0 ));
  FDCE \raddr_reg[0] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[0]_i_1_n_7 ),
        .Q(raddr_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \raddr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\raddr_reg[0]_i_1_n_0 ,\raddr_reg[0]_i_1_n_1 ,\raddr_reg[0]_i_1_n_2 ,\raddr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\raddr_reg[0]_i_1_n_4 ,\raddr_reg[0]_i_1_n_5 ,\raddr_reg[0]_i_1_n_6 ,\raddr_reg[0]_i_1_n_7 }),
        .S({raddr_reg[3:1],\raddr[0]_i_2_n_0 }));
  FDCE \raddr_reg[10] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[8]_i_1_n_5 ),
        .Q(raddr_reg[10]));
  FDCE \raddr_reg[11] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[8]_i_1_n_4 ),
        .Q(raddr_reg[11]));
  FDCE \raddr_reg[12] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[12]_i_1_n_7 ),
        .Q(raddr_reg__0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \raddr_reg[12]_i_1 
       (.CI(\raddr_reg[8]_i_1_n_0 ),
        .CO(\NLW_raddr_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_raddr_reg[12]_i_1_O_UNCONNECTED [3:1],\raddr_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,raddr_reg__0}));
  FDCE \raddr_reg[1] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[0]_i_1_n_6 ),
        .Q(raddr_reg[1]));
  FDCE \raddr_reg[2] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[0]_i_1_n_5 ),
        .Q(raddr_reg[2]));
  FDCE \raddr_reg[3] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[0]_i_1_n_4 ),
        .Q(raddr_reg[3]));
  FDCE \raddr_reg[4] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[4]_i_1_n_7 ),
        .Q(raddr_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \raddr_reg[4]_i_1 
       (.CI(\raddr_reg[0]_i_1_n_0 ),
        .CO({\raddr_reg[4]_i_1_n_0 ,\raddr_reg[4]_i_1_n_1 ,\raddr_reg[4]_i_1_n_2 ,\raddr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\raddr_reg[4]_i_1_n_4 ,\raddr_reg[4]_i_1_n_5 ,\raddr_reg[4]_i_1_n_6 ,\raddr_reg[4]_i_1_n_7 }),
        .S(raddr_reg[7:4]));
  FDCE \raddr_reg[5] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[4]_i_1_n_6 ),
        .Q(raddr_reg[5]));
  FDCE \raddr_reg[6] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[4]_i_1_n_5 ),
        .Q(raddr_reg[6]));
  FDCE \raddr_reg[7] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[4]_i_1_n_4 ),
        .Q(raddr_reg[7]));
  FDCE \raddr_reg[8] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[8]_i_1_n_7 ),
        .Q(raddr_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \raddr_reg[8]_i_1 
       (.CI(\raddr_reg[4]_i_1_n_0 ),
        .CO({\raddr_reg[8]_i_1_n_0 ,\raddr_reg[8]_i_1_n_1 ,\raddr_reg[8]_i_1_n_2 ,\raddr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\raddr_reg[8]_i_1_n_4 ,\raddr_reg[8]_i_1_n_5 ,\raddr_reg[8]_i_1_n_6 ,\raddr_reg[8]_i_1_n_7 }),
        .S(raddr_reg[11:8]));
  FDCE \raddr_reg[9] 
       (.C(aclk),
        .CE(rd_flag),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(\raddr_reg[8]_i_1_n_6 ),
        .Q(raddr_reg[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram ram
       (.CO(rempty),
        .Q(w2r_wptr2[12]),
        .S(ram_n_0),
        .aclk(aclk),
        .m_axis_tready(m_axis_tready),
        .overflow(overflow),
        .overflow_0(r2w_rptr2[12]),
        .prev_active_video(prev_active_video),
        .q_b(q_b),
        .\r2w_rptr2_reg[12] (ram_n_2),
        .raddr_reg(raddr_reg),
        .raddr_reg__0(raddr_reg__0),
        .rd_flag(rd_flag),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .waddr_reg(waddr_reg),
        .waddr_reg__0(waddr_reg__0),
        .wdata_a(wdata_a),
        .wr_flag(wr_flag));
  CARRY4 rempty_carry
       (.CI(1'b0),
        .CO({rempty_carry_n_0,rempty_carry_n_1,rempty_carry_n_2,rempty_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rempty_carry_O_UNCONNECTED[3:0]),
        .S({rempty_carry_i_1_n_0,rempty_carry_i_2_n_0,rempty_carry_i_3_n_0,rempty_carry_i_4_n_0}));
  CARRY4 rempty_carry__0
       (.CI(rempty_carry_n_0),
        .CO({NLW_rempty_carry__0_CO_UNCONNECTED[3:1],rempty}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rempty_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,ram_n_0}));
  LUT4 #(
    .INIT(16'h6900)) 
    rempty_carry_i_1
       (.I0(w2r_wptr2[9]),
        .I1(raddr_reg[10]),
        .I2(raddr_reg[9]),
        .I3(rempty_carry_i_5_n_0),
        .O(rempty_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    rempty_carry_i_2
       (.I0(w2r_wptr2[6]),
        .I1(raddr_reg[7]),
        .I2(raddr_reg[6]),
        .I3(rempty_carry_i_6_n_0),
        .O(rempty_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    rempty_carry_i_3
       (.I0(w2r_wptr2[3]),
        .I1(raddr_reg[4]),
        .I2(raddr_reg[3]),
        .I3(rempty_carry_i_7_n_0),
        .O(rempty_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    rempty_carry_i_4
       (.I0(w2r_wptr2[0]),
        .I1(raddr_reg[1]),
        .I2(raddr_reg[0]),
        .I3(rempty_carry_i_8_n_0),
        .O(rempty_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h06609009)) 
    rempty_carry_i_5
       (.I0(w2r_wptr2[10]),
        .I1(raddr_reg[10]),
        .I2(w2r_wptr2[11]),
        .I3(raddr_reg__0),
        .I4(raddr_reg[11]),
        .O(rempty_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h06609009)) 
    rempty_carry_i_6
       (.I0(w2r_wptr2[7]),
        .I1(raddr_reg[7]),
        .I2(w2r_wptr2[8]),
        .I3(raddr_reg[9]),
        .I4(raddr_reg[8]),
        .O(rempty_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h06609009)) 
    rempty_carry_i_7
       (.I0(w2r_wptr2[4]),
        .I1(raddr_reg[4]),
        .I2(w2r_wptr2[5]),
        .I3(raddr_reg[6]),
        .I4(raddr_reg[5]),
        .O(rempty_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h06609009)) 
    rempty_carry_i_8
       (.I0(w2r_wptr2[1]),
        .I1(raddr_reg[1]),
        .I2(w2r_wptr2[2]),
        .I3(raddr_reg[3]),
        .I4(raddr_reg[2]),
        .O(rempty_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[0]_i_1 
       (.I0(waddr_reg[1]),
        .I1(waddr_reg[0]),
        .O(wptr[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[10]_i_1 
       (.I0(waddr_reg[11]),
        .I1(waddr_reg[10]),
        .O(wptr[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[11]_i_1 
       (.I0(waddr_reg__0),
        .I1(waddr_reg[11]),
        .O(wptr[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \w2r_wptr1[12]_i_1 
       (.I0(aresetn),
        .O(\w2r_wptr1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[1]_i_1 
       (.I0(waddr_reg[2]),
        .I1(waddr_reg[1]),
        .O(wptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[2]_i_1 
       (.I0(waddr_reg[3]),
        .I1(waddr_reg[2]),
        .O(wptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[3]_i_1 
       (.I0(waddr_reg[4]),
        .I1(waddr_reg[3]),
        .O(wptr[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[4]_i_1 
       (.I0(waddr_reg[5]),
        .I1(waddr_reg[4]),
        .O(wptr[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[5]_i_1 
       (.I0(waddr_reg[6]),
        .I1(waddr_reg[5]),
        .O(wptr[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[6]_i_1 
       (.I0(waddr_reg[7]),
        .I1(waddr_reg[6]),
        .O(wptr[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[7]_i_1 
       (.I0(waddr_reg[8]),
        .I1(waddr_reg[7]),
        .O(wptr[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[8]_i_1 
       (.I0(waddr_reg[9]),
        .I1(waddr_reg[8]),
        .O(wptr[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[9]_i_1 
       (.I0(waddr_reg[10]),
        .I1(waddr_reg[9]),
        .O(wptr[9]));
  FDCE \w2r_wptr1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[0]),
        .Q(w2r_wptr1[0]));
  FDCE \w2r_wptr1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[10]),
        .Q(w2r_wptr1[10]));
  FDCE \w2r_wptr1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[11]),
        .Q(w2r_wptr1[11]));
  FDCE \w2r_wptr1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(waddr_reg__0),
        .Q(w2r_wptr1[12]));
  FDCE \w2r_wptr1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[1]),
        .Q(w2r_wptr1[1]));
  FDCE \w2r_wptr1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[2]),
        .Q(w2r_wptr1[2]));
  FDCE \w2r_wptr1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[3]),
        .Q(w2r_wptr1[3]));
  FDCE \w2r_wptr1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[4]),
        .Q(w2r_wptr1[4]));
  FDCE \w2r_wptr1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[5]),
        .Q(w2r_wptr1[5]));
  FDCE \w2r_wptr1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[6]),
        .Q(w2r_wptr1[6]));
  FDCE \w2r_wptr1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[7]),
        .Q(w2r_wptr1[7]));
  FDCE \w2r_wptr1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[8]),
        .Q(w2r_wptr1[8]));
  FDCE \w2r_wptr1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(wptr[9]),
        .Q(w2r_wptr1[9]));
  FDCE \w2r_wptr2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[0]),
        .Q(w2r_wptr2[0]));
  FDCE \w2r_wptr2_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[10]),
        .Q(w2r_wptr2[10]));
  FDCE \w2r_wptr2_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[11]),
        .Q(w2r_wptr2[11]));
  FDCE \w2r_wptr2_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[12]),
        .Q(w2r_wptr2[12]));
  FDCE \w2r_wptr2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[1]),
        .Q(w2r_wptr2[1]));
  FDCE \w2r_wptr2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[2]),
        .Q(w2r_wptr2[2]));
  FDCE \w2r_wptr2_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[3]),
        .Q(w2r_wptr2[3]));
  FDCE \w2r_wptr2_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[4]),
        .Q(w2r_wptr2[4]));
  FDCE \w2r_wptr2_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[5]),
        .Q(w2r_wptr2[5]));
  FDCE \w2r_wptr2_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[6]),
        .Q(w2r_wptr2[6]));
  FDCE \w2r_wptr2_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[7]),
        .Q(w2r_wptr2[7]));
  FDCE \w2r_wptr2_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[8]),
        .Q(w2r_wptr2[8]));
  FDCE \w2r_wptr2_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\w2r_wptr1[12]_i_1_n_0 ),
        .D(w2r_wptr1[9]),
        .Q(w2r_wptr2[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_2 
       (.I0(waddr_reg[0]),
        .O(\waddr[0]_i_2_n_0 ));
  FDCE \waddr_reg[0] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[0]_i_1_n_7 ),
        .Q(waddr_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \waddr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\waddr_reg[0]_i_1_n_0 ,\waddr_reg[0]_i_1_n_1 ,\waddr_reg[0]_i_1_n_2 ,\waddr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\waddr_reg[0]_i_1_n_4 ,\waddr_reg[0]_i_1_n_5 ,\waddr_reg[0]_i_1_n_6 ,\waddr_reg[0]_i_1_n_7 }),
        .S({waddr_reg[3:1],\waddr[0]_i_2_n_0 }));
  FDCE \waddr_reg[10] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[8]_i_1_n_5 ),
        .Q(waddr_reg[10]));
  FDCE \waddr_reg[11] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[8]_i_1_n_4 ),
        .Q(waddr_reg[11]));
  FDCE \waddr_reg[12] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[12]_i_1_n_7 ),
        .Q(waddr_reg__0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \waddr_reg[12]_i_1 
       (.CI(\waddr_reg[8]_i_1_n_0 ),
        .CO(\NLW_waddr_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_waddr_reg[12]_i_1_O_UNCONNECTED [3:1],\waddr_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,waddr_reg__0}));
  FDCE \waddr_reg[1] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[0]_i_1_n_6 ),
        .Q(waddr_reg[1]));
  FDCE \waddr_reg[2] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[0]_i_1_n_5 ),
        .Q(waddr_reg[2]));
  FDCE \waddr_reg[3] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[0]_i_1_n_4 ),
        .Q(waddr_reg[3]));
  FDCE \waddr_reg[4] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[4]_i_1_n_7 ),
        .Q(waddr_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \waddr_reg[4]_i_1 
       (.CI(\waddr_reg[0]_i_1_n_0 ),
        .CO({\waddr_reg[4]_i_1_n_0 ,\waddr_reg[4]_i_1_n_1 ,\waddr_reg[4]_i_1_n_2 ,\waddr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\waddr_reg[4]_i_1_n_4 ,\waddr_reg[4]_i_1_n_5 ,\waddr_reg[4]_i_1_n_6 ,\waddr_reg[4]_i_1_n_7 }),
        .S(waddr_reg[7:4]));
  FDCE \waddr_reg[5] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[4]_i_1_n_6 ),
        .Q(waddr_reg[5]));
  FDCE \waddr_reg[6] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[4]_i_1_n_5 ),
        .Q(waddr_reg[6]));
  FDCE \waddr_reg[7] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[4]_i_1_n_4 ),
        .Q(waddr_reg[7]));
  FDCE \waddr_reg[8] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[8]_i_1_n_7 ),
        .Q(waddr_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \waddr_reg[8]_i_1 
       (.CI(\waddr_reg[4]_i_1_n_0 ),
        .CO({\waddr_reg[8]_i_1_n_0 ,\waddr_reg[8]_i_1_n_1 ,\waddr_reg[8]_i_1_n_2 ,\waddr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\waddr_reg[8]_i_1_n_4 ,\waddr_reg[8]_i_1_n_5 ,\waddr_reg[8]_i_1_n_6 ,\waddr_reg[8]_i_1_n_7 }),
        .S(waddr_reg[11:8]));
  FDCE \waddr_reg[9] 
       (.C(vid_clk),
        .CE(wr_flag),
        .CLR(vid_rstn_0),
        .D(\waddr_reg[8]_i_1_n_6 ),
        .Q(waddr_reg[9]));
  CARRY4 wfull_carry
       (.CI(1'b0),
        .CO({wfull_carry_n_0,wfull_carry_n_1,wfull_carry_n_2,wfull_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_wfull_carry_O_UNCONNECTED[3:0]),
        .S({wfull_carry_i_1_n_0,wfull_carry_i_2_n_0,wfull_carry_i_3_n_0,wfull_carry_i_4_n_0}));
  CARRY4 wfull_carry__0
       (.CI(wfull_carry_n_0),
        .CO({NLW_wfull_carry__0_CO_UNCONNECTED[3:1],overflow}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_wfull_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,ram_n_2}));
  LUT4 #(
    .INIT(16'h6900)) 
    wfull_carry_i_1
       (.I0(waddr_reg[10]),
        .I1(waddr_reg[9]),
        .I2(r2w_rptr2[9]),
        .I3(wfull_carry_i_5_n_0),
        .O(wfull_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    wfull_carry_i_2
       (.I0(waddr_reg[7]),
        .I1(waddr_reg[6]),
        .I2(r2w_rptr2[6]),
        .I3(wfull_carry_i_6_n_0),
        .O(wfull_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    wfull_carry_i_3
       (.I0(waddr_reg[4]),
        .I1(waddr_reg[3]),
        .I2(r2w_rptr2[3]),
        .I3(wfull_carry_i_7_n_0),
        .O(wfull_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    wfull_carry_i_4
       (.I0(waddr_reg[1]),
        .I1(waddr_reg[0]),
        .I2(r2w_rptr2[0]),
        .I3(wfull_carry_i_8_n_0),
        .O(wfull_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h60090690)) 
    wfull_carry_i_5
       (.I0(waddr_reg[10]),
        .I1(r2w_rptr2[10]),
        .I2(waddr_reg__0),
        .I3(waddr_reg[11]),
        .I4(r2w_rptr2[11]),
        .O(wfull_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h06906009)) 
    wfull_carry_i_6
       (.I0(waddr_reg[7]),
        .I1(r2w_rptr2[7]),
        .I2(waddr_reg[9]),
        .I3(waddr_reg[8]),
        .I4(r2w_rptr2[8]),
        .O(wfull_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h06906009)) 
    wfull_carry_i_7
       (.I0(waddr_reg[4]),
        .I1(r2w_rptr2[4]),
        .I2(waddr_reg[6]),
        .I3(waddr_reg[5]),
        .I4(r2w_rptr2[5]),
        .O(wfull_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h06906009)) 
    wfull_carry_i_8
       (.I0(waddr_reg[1]),
        .I1(r2w_rptr2[1]),
        .I2(waddr_reg[3]),
        .I3(waddr_reg[2]),
        .I4(r2w_rptr2[2]),
        .O(wfull_carry_i_8_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "base_video_to_axis_0_0,video_to_axis_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "video_to_axis_v1_0,Vivado 2021.1" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_clk, ASSOCIATED_RESET vid_rstn, ASSOCIATED_BUSIF vid_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_xil_camif_0_0_out_pclk, INSERT_VIP 0" *) input vid_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vid_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_in VSYNC" *) input vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_in ACTIVE_VIDEO" *) input vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_in DATA" *) input [7:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF m_axis, FREQ_HZ 120000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 120000000, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tuser;
  output overflow;

  wire aclk;
  wire aresetn;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire overflow;
  wire vid_active_video;
  wire vid_clk;
  wire [7:0]vid_data;
  wire vid_rstn;
  wire vid_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis_v1_0 inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(overflow),
        .q_b({m_axis_tuser,m_axis_tlast,m_axis_tdata}),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .vid_data(vid_data),
        .vid_rstn(vid_rstn),
        .vid_vsync(vid_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram
   (S,
    wr_flag,
    \r2w_rptr2_reg[12] ,
    rd_flag,
    q_b,
    raddr_reg__0,
    Q,
    prev_active_video,
    overflow,
    vid_active_video,
    overflow_0,
    waddr_reg__0,
    m_axis_tready,
    CO,
    vid_clk,
    aclk,
    waddr_reg,
    raddr_reg,
    wdata_a);
  output [0:0]S;
  output wr_flag;
  output [0:0]\r2w_rptr2_reg[12] ;
  output rd_flag;
  output [9:0]q_b;
  input [0:0]raddr_reg__0;
  input [0:0]Q;
  input prev_active_video;
  input overflow;
  input vid_active_video;
  input [0:0]overflow_0;
  input [0:0]waddr_reg__0;
  input m_axis_tready;
  input [0:0]CO;
  input vid_clk;
  input aclk;
  input [11:0]waddr_reg;
  input [11:0]raddr_reg;
  input [8:0]wdata_a;

  wire [0:0]CO;
  wire [0:0]Q;
  wire [0:0]S;
  wire aclk;
  wire m_axis_tready;
  wire overflow;
  wire [0:0]overflow_0;
  wire [8:8]p_0_out;
  wire prev_active_video;
  wire [9:0]q_b;
  wire [0:0]\r2w_rptr2_reg[12] ;
  wire [11:0]raddr_reg;
  wire [0:0]raddr_reg__0;
  wire rd_flag;
  wire vid_active_video;
  wire vid_clk;
  wire [11:0]waddr_reg;
  wire [0:0]waddr_reg__0;
  wire [8:0]wdata_a;
  wire wr_flag;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire [15:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [15:1]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "inst/video_to_axis_inst/fifo/ram/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,waddr_reg,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,raddr_reg,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(vid_clk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata_a[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,p_0_out}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],q_b[7:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],q_b[8]}),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(wr_flag),
        .ENBWREN(rd_flag),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({wr_flag,wr_flag,wr_flag,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_1
       (.I0(prev_active_video),
        .I1(overflow),
        .O(wr_flag));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_2
       (.I0(m_axis_tready),
        .I1(CO),
        .O(rd_flag));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_3
       (.I0(prev_active_video),
        .I1(vid_active_video),
        .O(p_0_out));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "inst/video_to_axis_inst/fifo/ram/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    mem_reg_1
       (.ADDRARDADDR({waddr_reg,1'b1,1'b1}),
        .ADDRBWRADDR({raddr_reg,1'b1,1'b1}),
        .CLKARDCLK(vid_clk),
        .CLKBWRCLK(aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata_a[8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[15:1],q_b[9]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(wr_flag),
        .ENBWREN(rd_flag),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wr_flag,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h9)) 
    rempty_carry__0_i_1
       (.I0(raddr_reg__0),
        .I1(Q),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    wfull_carry__0_i_1
       (.I0(overflow_0),
        .I1(waddr_reg__0),
        .O(\r2w_rptr2_reg[12] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis
   (q_b,
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
  output [9:0]q_b;
  output overflow;
  output m_axis_tvalid;
  input vid_clk;
  input aclk;
  input vid_active_video;
  input [7:0]vid_data;
  input vid_vsync;
  input m_axis_tready;
  input aresetn;
  input vid_rstn;

  wire aclk;
  wire aresetn;
  wire fifo_n_0;
  wire frmsync;
  wire frmsync_i_1_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire overflow;
  wire prev_active_video;
  wire [7:0]prev_data;
  wire prev_vsync;
  wire [9:0]q_b;
  wire vid_active_video;
  wire vid_clk;
  wire [7:0]vid_data;
  wire vid_rstn;
  wire vid_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo fifo
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(overflow),
        .prev_active_video(prev_active_video),
        .q_b(q_b),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .vid_rstn(vid_rstn),
        .vid_rstn_0(fifo_n_0),
        .wdata_a({frmsync,prev_data}));
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
        .CLR(fifo_n_0),
        .D(frmsync_i_1_n_0),
        .Q(frmsync));
  FDCE prev_active_video_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(vid_active_video),
        .Q(prev_active_video));
  FDCE \prev_data_reg[0] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(vid_data[0]),
        .Q(prev_data[0]));
  FDCE \prev_data_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(vid_data[1]),
        .Q(prev_data[1]));
  FDCE \prev_data_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(vid_data[2]),
        .Q(prev_data[2]));
  FDCE \prev_data_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(vid_data[3]),
        .Q(prev_data[3]));
  FDCE \prev_data_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(vid_data[4]),
        .Q(prev_data[4]));
  FDCE \prev_data_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(vid_data[5]),
        .Q(prev_data[5]));
  FDCE \prev_data_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(vid_data[6]),
        .Q(prev_data[6]));
  FDCE \prev_data_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(vid_data[7]),
        .Q(prev_data[7]));
  FDCE prev_vsync_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(vid_vsync),
        .Q(prev_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis_v1_0
   (q_b,
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
  output [9:0]q_b;
  output overflow;
  output m_axis_tvalid;
  input vid_clk;
  input aclk;
  input vid_active_video;
  input [7:0]vid_data;
  input vid_vsync;
  input m_axis_tready;
  input aresetn;
  input vid_rstn;

  wire aclk;
  wire aresetn;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire overflow;
  wire [9:0]q_b;
  wire vid_active_video;
  wire vid_clk;
  wire [7:0]vid_data;
  wire vid_rstn;
  wire vid_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_to_axis video_to_axis_inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(overflow),
        .q_b(q_b),
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
