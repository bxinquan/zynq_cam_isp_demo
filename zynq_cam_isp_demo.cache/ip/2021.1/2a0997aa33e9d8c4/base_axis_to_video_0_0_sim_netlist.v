// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Oct  3 01:57:15 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_axis_to_video_0_0_sim_netlist.v
// Design      : base_axis_to_video_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo
   (vid_rstn_0,
    q_b,
    wfull,
    s_axis_tready,
    underflow,
    aresetn,
    vid_rstn,
    aclk,
    vid_clk,
    wdata_a,
    s_axis_tvalid,
    active_video_w,
    mem_reg_1);
  output vid_rstn_0;
  output [8:0]q_b;
  output wfull;
  output s_axis_tready;
  output underflow;
  input aresetn;
  input vid_rstn;
  input aclk;
  input vid_clk;
  input [9:0]wdata_a;
  input s_axis_tvalid;
  input active_video_w;
  input mem_reg_1;

  wire aclk;
  wire active_video_w;
  wire aresetn;
  wire mem_reg_1;
  wire [8:0]q_b;
  wire [12:0]r2w_rptr1;
  wire \r2w_rptr1[12]_i_1_n_0 ;
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
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire underflow;
  wire vid_clk;
  wire vid_rstn;
  wire vid_rstn_0;
  wire [12:0]w2r_wptr1;
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
  wire [9:0]wdata_a;
  wire wfull;
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
    locked_r_i_2
       (.I0(vid_rstn),
        .O(vid_rstn_0));
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
       (.I0(aresetn),
        .O(\r2w_rptr1[12]_i_1_n_0 ));
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
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[0]),
        .Q(r2w_rptr1[0]));
  FDCE \r2w_rptr1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[10]),
        .Q(r2w_rptr1[10]));
  FDCE \r2w_rptr1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[11]),
        .Q(r2w_rptr1[11]));
  FDCE \r2w_rptr1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(raddr_reg__0),
        .Q(r2w_rptr1[12]));
  FDCE \r2w_rptr1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[1]),
        .Q(r2w_rptr1[1]));
  FDCE \r2w_rptr1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[2]),
        .Q(r2w_rptr1[2]));
  FDCE \r2w_rptr1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[3]),
        .Q(r2w_rptr1[3]));
  FDCE \r2w_rptr1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[4]),
        .Q(r2w_rptr1[4]));
  FDCE \r2w_rptr1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[5]),
        .Q(r2w_rptr1[5]));
  FDCE \r2w_rptr1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[6]),
        .Q(r2w_rptr1[6]));
  FDCE \r2w_rptr1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[7]),
        .Q(r2w_rptr1[7]));
  FDCE \r2w_rptr1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[8]),
        .Q(r2w_rptr1[8]));
  FDCE \r2w_rptr1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(rptr[9]),
        .Q(r2w_rptr1[9]));
  FDCE \r2w_rptr2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[0]),
        .Q(r2w_rptr2[0]));
  FDCE \r2w_rptr2_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[10]),
        .Q(r2w_rptr2[10]));
  FDCE \r2w_rptr2_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[11]),
        .Q(r2w_rptr2[11]));
  FDCE \r2w_rptr2_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[12]),
        .Q(r2w_rptr2[12]));
  FDCE \r2w_rptr2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[1]),
        .Q(r2w_rptr2[1]));
  FDCE \r2w_rptr2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[2]),
        .Q(r2w_rptr2[2]));
  FDCE \r2w_rptr2_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[3]),
        .Q(r2w_rptr2[3]));
  FDCE \r2w_rptr2_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[4]),
        .Q(r2w_rptr2[4]));
  FDCE \r2w_rptr2_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[5]),
        .Q(r2w_rptr2[5]));
  FDCE \r2w_rptr2_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[6]),
        .Q(r2w_rptr2[6]));
  FDCE \r2w_rptr2_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[7]),
        .Q(r2w_rptr2[7]));
  FDCE \r2w_rptr2_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[8]),
        .Q(r2w_rptr2[8]));
  FDCE \r2w_rptr2_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(r2w_rptr1[9]),
        .Q(r2w_rptr2[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \raddr[0]_i_2 
       (.I0(raddr_reg[0]),
        .O(\raddr[0]_i_2_n_0 ));
  FDCE \raddr_reg[0] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
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
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(\raddr_reg[8]_i_1_n_5 ),
        .Q(raddr_reg[10]));
  FDCE \raddr_reg[11] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(\raddr_reg[8]_i_1_n_4 ),
        .Q(raddr_reg[11]));
  FDCE \raddr_reg[12] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
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
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(\raddr_reg[0]_i_1_n_6 ),
        .Q(raddr_reg[1]));
  FDCE \raddr_reg[2] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(\raddr_reg[0]_i_1_n_5 ),
        .Q(raddr_reg[2]));
  FDCE \raddr_reg[3] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(\raddr_reg[0]_i_1_n_4 ),
        .Q(raddr_reg[3]));
  FDCE \raddr_reg[4] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
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
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(\raddr_reg[4]_i_1_n_6 ),
        .Q(raddr_reg[5]));
  FDCE \raddr_reg[6] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(\raddr_reg[4]_i_1_n_5 ),
        .Q(raddr_reg[6]));
  FDCE \raddr_reg[7] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(\raddr_reg[4]_i_1_n_4 ),
        .Q(raddr_reg[7]));
  FDCE \raddr_reg[8] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
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
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(\raddr_reg[8]_i_1_n_6 ),
        .Q(raddr_reg[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram ram
       (.Q(w2r_wptr2[12]),
        .S(ram_n_0),
        .aclk(aclk),
        .active_video_w(active_video_w),
        .mem_reg_1_0(mem_reg_1),
        .q_b(q_b),
        .\r2w_rptr2_reg[12] (ram_n_2),
        .raddr_reg(raddr_reg),
        .raddr_reg__0(raddr_reg__0),
        .rd_flag(rd_flag),
        .s_axis_tvalid(s_axis_tvalid),
        .underflow(underflow),
        .vid_clk(vid_clk),
        .w2r_wfull1_reg(r2w_rptr2[12]),
        .waddr_reg(waddr_reg),
        .waddr_reg__0(waddr_reg__0),
        .wdata_a(wdata_a),
        .wfull(wfull),
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
        .CO({NLW_rempty_carry__0_CO_UNCONNECTED[3:1],underflow}),
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
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_INST_0
       (.I0(wfull),
        .O(s_axis_tready));
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
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[0]),
        .Q(w2r_wptr1[0]));
  FDCE \w2r_wptr1_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[10]),
        .Q(w2r_wptr1[10]));
  FDCE \w2r_wptr1_reg[11] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[11]),
        .Q(w2r_wptr1[11]));
  FDCE \w2r_wptr1_reg[12] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(waddr_reg__0),
        .Q(w2r_wptr1[12]));
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
  FDCE \w2r_wptr2_reg[11] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[11]),
        .Q(w2r_wptr2[11]));
  FDCE \w2r_wptr2_reg[12] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[12]),
        .Q(w2r_wptr2[12]));
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
    \waddr[0]_i_2 
       (.I0(waddr_reg[0]),
        .O(\waddr[0]_i_2_n_0 ));
  FDCE \waddr_reg[0] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
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
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(\waddr_reg[8]_i_1_n_5 ),
        .Q(waddr_reg[10]));
  FDCE \waddr_reg[11] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(\waddr_reg[8]_i_1_n_4 ),
        .Q(waddr_reg[11]));
  FDCE \waddr_reg[12] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
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
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(\waddr_reg[0]_i_1_n_6 ),
        .Q(waddr_reg[1]));
  FDCE \waddr_reg[2] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(\waddr_reg[0]_i_1_n_5 ),
        .Q(waddr_reg[2]));
  FDCE \waddr_reg[3] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(\waddr_reg[0]_i_1_n_4 ),
        .Q(waddr_reg[3]));
  FDCE \waddr_reg[4] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
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
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(\waddr_reg[4]_i_1_n_6 ),
        .Q(waddr_reg[5]));
  FDCE \waddr_reg[6] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(\waddr_reg[4]_i_1_n_5 ),
        .Q(waddr_reg[6]));
  FDCE \waddr_reg[7] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
        .D(\waddr_reg[4]_i_1_n_4 ),
        .Q(waddr_reg[7]));
  FDCE \waddr_reg[8] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
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
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[12]_i_1_n_0 ),
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
        .CO({NLW_wfull_carry__0_CO_UNCONNECTED[3:1],wfull}),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video
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
    wdata_a,
    s_axis_tvalid,
    aresetn);
  output locked;
  output [7:0]vid_data;
  output vid_hsync;
  output vid_vsync;
  output vid_active_video;
  output s_axis_tready;
  output underflow;
  input vid_rstn;
  input aclk;
  input vid_clk;
  input [9:0]wdata_a;
  input s_axis_tvalid;
  input aresetn;

  wire aclk;
  wire active_video_w;
  wire aresetn;
  wire fifo_n_0;
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
  wire [7:0]vid_data;
  wire vid_hsync;
  wire vid_rstn;
  wire vid_vsync;
  wire vsync_w;
  wire w2r_wfull1;
  wire w2r_wfull2;
  wire [9:0]wdata_a;
  wire wfull;

  FDRE active_video_r_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(active_video_w),
        .Q(vid_active_video),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo fifo
       (.aclk(aclk),
        .active_video_w(active_video_w),
        .aresetn(aresetn),
        .mem_reg_1(frmsync_req_reg_n_0),
        .q_b({tuser,vid_data}),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .underflow(underflow),
        .vid_clk(vid_clk),
        .vid_rstn(vid_rstn),
        .vid_rstn_0(fifo_n_0),
        .wdata_a(wdata_a),
        .wfull(wfull));
  FDPE frmsync_req_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(timing_n_3),
        .PRE(fifo_n_0),
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
        .CLR(fifo_n_0),
        .D(locked_r_i_1_n_0),
        .Q(locked));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen timing
       (.active_video_w(active_video_w),
        .frmsync_req_reg(frmsync_req_reg_n_0),
        .locked(locked),
        .mem_reg_1(timing_n_3),
        .q_b(tuser),
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
        .CLR(fifo_n_0),
        .D(wfull),
        .Q(w2r_wfull1));
  FDCE w2r_wfull2_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_0),
        .D(w2r_wfull1),
        .Q(w2r_wfull2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0
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
    wdata_a,
    s_axis_tvalid,
    aresetn);
  output locked;
  output [7:0]vid_data;
  output vid_hsync;
  output vid_vsync;
  output vid_active_video;
  output s_axis_tready;
  output underflow;
  input vid_rstn;
  input aclk;
  input vid_clk;
  input [9:0]wdata_a;
  input s_axis_tvalid;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire locked;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire underflow;
  wire vid_active_video;
  wire vid_clk;
  wire [7:0]vid_data;
  wire vid_hsync;
  wire vid_rstn;
  wire vid_vsync;
  wire [9:0]wdata_a;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video axis_to_video_inst
       (.aclk(aclk),
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
        .vid_vsync(vid_vsync),
        .wdata_a(wdata_a));
endmodule

(* CHECK_LICENSE_TYPE = "base_axis_to_video_0_0,axis_to_video_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_to_video_v1_0,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 120000000, PHASE 0.0, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_clk, ASSOCIATED_RESET vid_rstn, ASSOCIATED_BUSIF video_out, FREQ_HZ 120000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input vid_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vid_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out HSYNC" *) output vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out ACTIVE_VIDEO" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out DATA" *) output [7:0]vid_data;
  output locked;
  output underflow;

  wire aclk;
  wire aresetn;
  wire locked;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire underflow;
  wire vid_active_video;
  wire vid_clk;
  wire [7:0]vid_data;
  wire vid_hsync;
  wire vid_rstn;
  wire vid_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0 inst
       (.aclk(aclk),
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
        .vid_vsync(vid_vsync),
        .wdata_a({s_axis_tuser,s_axis_tlast,s_axis_tdata}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram
   (S,
    wr_flag,
    \r2w_rptr2_reg[12] ,
    rd_flag,
    q_b,
    raddr_reg__0,
    Q,
    s_axis_tvalid,
    wfull,
    w2r_wfull1_reg,
    waddr_reg__0,
    active_video_w,
    mem_reg_1_0,
    underflow,
    aclk,
    vid_clk,
    waddr_reg,
    raddr_reg,
    wdata_a);
  output [0:0]S;
  output wr_flag;
  output [0:0]\r2w_rptr2_reg[12] ;
  output rd_flag;
  output [8:0]q_b;
  input [0:0]raddr_reg__0;
  input [0:0]Q;
  input s_axis_tvalid;
  input wfull;
  input [0:0]w2r_wfull1_reg;
  input [0:0]waddr_reg__0;
  input active_video_w;
  input mem_reg_1_0;
  input underflow;
  input aclk;
  input vid_clk;
  input [11:0]waddr_reg;
  input [11:0]raddr_reg;
  input [9:0]wdata_a;

  wire [0:0]Q;
  wire [0:0]S;
  wire aclk;
  wire active_video_w;
  wire mem_reg_0_n_75;
  wire mem_reg_1_0;
  wire [8:0]q_b;
  wire [0:0]\r2w_rptr2_reg[12] ;
  wire [11:0]raddr_reg;
  wire [0:0]raddr_reg__0;
  wire rd_flag;
  wire s_axis_tvalid;
  wire underflow;
  wire vid_clk;
  wire [0:0]w2r_wfull1_reg;
  wire [11:0]waddr_reg;
  wire [0:0]waddr_reg__0;
  wire [9:0]wdata_a;
  wire wfull;
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
  (* RTL_RAM_NAME = "inst/axis_to_video_inst/fifo/ram/mem" *) 
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
        .CLKARDCLK(aclk),
        .CLKBWRCLK(vid_clk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata_a[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,wdata_a[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],q_b[7:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],mem_reg_0_n_75}),
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
       (.I0(s_axis_tvalid),
        .I1(wfull),
        .O(wr_flag));
  LUT4 #(
    .INIT(16'h002E)) 
    mem_reg_0_i_2
       (.I0(active_video_w),
        .I1(mem_reg_1_0),
        .I2(q_b[8]),
        .I3(underflow),
        .O(rd_flag));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "inst/axis_to_video_inst/fifo/ram/mem" *) 
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
        .CLKARDCLK(aclk),
        .CLKBWRCLK(vid_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata_a[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[15:1],q_b[8]}),
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
       (.I0(w2r_wfull1_reg),
        .I1(waddr_reg__0),
        .O(\r2w_rptr2_reg[12] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen
   (active_video_w,
    vsync_w,
    vid_hsync_reg_0,
    mem_reg_1,
    vid_clk,
    vid_rstn,
    locked,
    q_b,
    frmsync_req_reg,
    vid_vsync);
  output active_video_w;
  output vsync_w;
  output vid_hsync_reg_0;
  output mem_reg_1;
  input vid_clk;
  input vid_rstn;
  input locked;
  input [0:0]q_b;
  input frmsync_req_reg;
  input vid_vsync;

  wire active_video_w;
  wire frmsync_req_reg;
  wire line_cnt;
  wire \line_cnt[0]_i_1_n_0 ;
  wire \line_cnt[10]_i_2_n_0 ;
  wire \line_cnt[10]_i_3_n_0 ;
  wire \line_cnt[10]_i_4_n_0 ;
  wire \line_cnt[10]_i_5_n_0 ;
  wire \line_cnt[10]_i_6_n_0 ;
  wire \line_cnt[10]_i_7_n_0 ;
  wire \line_cnt[1]_i_1_n_0 ;
  wire \line_cnt[2]_i_1_n_0 ;
  wire \line_cnt[3]_i_1_n_0 ;
  wire \line_cnt[4]_i_1_n_0 ;
  wire \line_cnt[5]_i_1_n_0 ;
  wire \line_cnt[5]_i_2_n_0 ;
  wire \line_cnt[6]_i_1_n_0 ;
  wire \line_cnt[7]_i_1_n_0 ;
  wire \line_cnt[7]_i_2_n_0 ;
  wire \line_cnt[8]_i_1_n_0 ;
  wire \line_cnt[9]_i_1_n_0 ;
  wire \line_cnt_reg_n_0_[0] ;
  wire \line_cnt_reg_n_0_[10] ;
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
  wire mem_reg_1;
  wire [11:0]pix_cnt;
  wire [11:1]pix_cnt0;
  wire \pix_cnt[0]_i_1_n_0 ;
  wire \pix_cnt[10]_i_1_n_0 ;
  wire \pix_cnt[11]_i_1_n_0 ;
  wire \pix_cnt[11]_i_2_n_0 ;
  wire \pix_cnt[11]_i_4_n_0 ;
  wire \pix_cnt[11]_i_5_n_0 ;
  wire \pix_cnt[1]_i_1_n_0 ;
  wire \pix_cnt[2]_i_1_n_0 ;
  wire \pix_cnt[3]_i_1_n_0 ;
  wire \pix_cnt[4]_i_1_n_0 ;
  wire \pix_cnt[5]_i_1_n_0 ;
  wire \pix_cnt[6]_i_1_n_0 ;
  wire \pix_cnt[7]_i_1_n_0 ;
  wire \pix_cnt[8]_i_1_n_0 ;
  wire \pix_cnt[9]_i_1_n_0 ;
  wire \pix_cnt_reg[11]_i_3_n_2 ;
  wire \pix_cnt_reg[11]_i_3_n_3 ;
  wire \pix_cnt_reg[4]_i_2_n_0 ;
  wire \pix_cnt_reg[4]_i_2_n_1 ;
  wire \pix_cnt_reg[4]_i_2_n_2 ;
  wire \pix_cnt_reg[4]_i_2_n_3 ;
  wire \pix_cnt_reg[8]_i_2_n_0 ;
  wire \pix_cnt_reg[8]_i_2_n_1 ;
  wire \pix_cnt_reg[8]_i_2_n_2 ;
  wire \pix_cnt_reg[8]_i_2_n_3 ;
  wire [0:0]q_b;
  wire vid_active_video0;
  wire vid_active_video_i_2_n_0;
  wire vid_active_video_i_3_n_0;
  wire vid_clk;
  wire vid_hsync_i_1_n_0;
  wire vid_hsync_i_2_n_0;
  wire vid_hsync_i_3_n_0;
  wire vid_hsync_i_4_n_0;
  wire vid_hsync_reg_0;
  wire vid_rstn;
  wire vid_vsync;
  wire vid_vsync0;
  wire vsync_w;
  wire [3:2]\NLW_pix_cnt_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_pix_cnt_reg[11]_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h707F7F70)) 
    frmsync_req_i_1
       (.I0(q_b),
        .I1(active_video_w),
        .I2(frmsync_req_reg),
        .I3(vsync_w),
        .I4(vid_vsync),
        .O(mem_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_cnt[0]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .O(\line_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \line_cnt[10]_i_1 
       (.I0(pix_cnt[0]),
        .I1(pix_cnt[1]),
        .I2(pix_cnt[2]),
        .I3(\line_cnt[10]_i_3_n_0 ),
        .I4(\line_cnt[10]_i_4_n_0 ),
        .O(line_cnt));
  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    \line_cnt[10]_i_2 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[8] ),
        .I2(\line_cnt_reg_n_0_[7] ),
        .I3(\line_cnt[10]_i_6_n_0 ),
        .I4(\line_cnt_reg_n_0_[9] ),
        .I5(\line_cnt_reg_n_0_[10] ),
        .O(\line_cnt[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \line_cnt[10]_i_3 
       (.I0(pix_cnt[5]),
        .I1(pix_cnt[6]),
        .I2(pix_cnt[7]),
        .O(\line_cnt[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \line_cnt[10]_i_4 
       (.I0(pix_cnt[4]),
        .I1(pix_cnt[3]),
        .I2(pix_cnt[9]),
        .I3(pix_cnt[11]),
        .I4(pix_cnt[10]),
        .I5(pix_cnt[8]),
        .O(\line_cnt[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAFF)) 
    \line_cnt[10]_i_5 
       (.I0(\line_cnt[10]_i_7_n_0 ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt[5]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[3] ),
        .I4(\line_cnt_reg_n_0_[6] ),
        .I5(\line_cnt_reg_n_0_[4] ),
        .O(\line_cnt[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \line_cnt[10]_i_6 
       (.I0(\line_cnt_reg_n_0_[6] ),
        .I1(\line_cnt_reg_n_0_[5] ),
        .I2(\line_cnt_reg_n_0_[3] ),
        .I3(\line_cnt[5]_i_2_n_0 ),
        .I4(\line_cnt_reg_n_0_[2] ),
        .I5(\line_cnt_reg_n_0_[4] ),
        .O(\line_cnt[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \line_cnt[10]_i_7 
       (.I0(\line_cnt_reg_n_0_[5] ),
        .I1(\line_cnt_reg_n_0_[6] ),
        .I2(\line_cnt_reg_n_0_[10] ),
        .I3(\line_cnt_reg_n_0_[9] ),
        .I4(\line_cnt_reg_n_0_[8] ),
        .I5(\line_cnt_reg_n_0_[7] ),
        .O(\line_cnt[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \line_cnt[1]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[1] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .O(\line_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \line_cnt[2]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[1] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .O(\line_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \line_cnt[3]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .I2(\line_cnt_reg_n_0_[1] ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .I4(\line_cnt_reg_n_0_[3] ),
        .O(\line_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \line_cnt[4]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[1] ),
        .I3(\line_cnt_reg_n_0_[0] ),
        .I4(\line_cnt_reg_n_0_[3] ),
        .I5(\line_cnt_reg_n_0_[4] ),
        .O(\line_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \line_cnt[5]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[3] ),
        .I2(\line_cnt[5]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .I4(\line_cnt_reg_n_0_[4] ),
        .I5(\line_cnt_reg_n_0_[5] ),
        .O(\line_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \line_cnt[5]_i_2 
       (.I0(\line_cnt_reg_n_0_[1] ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .O(\line_cnt[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \line_cnt[6]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[4] ),
        .I2(\line_cnt[7]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[5] ),
        .I4(\line_cnt_reg_n_0_[6] ),
        .O(\line_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \line_cnt[7]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[6] ),
        .I2(\line_cnt_reg_n_0_[5] ),
        .I3(\line_cnt[7]_i_2_n_0 ),
        .I4(\line_cnt_reg_n_0_[4] ),
        .I5(\line_cnt_reg_n_0_[7] ),
        .O(\line_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \line_cnt[7]_i_2 
       (.I0(\line_cnt_reg_n_0_[2] ),
        .I1(\line_cnt_reg_n_0_[1] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .I3(\line_cnt_reg_n_0_[3] ),
        .O(\line_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \line_cnt[8]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[7] ),
        .I2(\line_cnt[10]_i_6_n_0 ),
        .I3(\line_cnt_reg_n_0_[8] ),
        .O(\line_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \line_cnt[9]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt[10]_i_6_n_0 ),
        .I2(\line_cnt_reg_n_0_[7] ),
        .I3(\line_cnt_reg_n_0_[8] ),
        .I4(\line_cnt_reg_n_0_[9] ),
        .O(\line_cnt[9]_i_1_n_0 ));
  FDCE \line_cnt_reg[0] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[0]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[0] ));
  FDCE \line_cnt_reg[10] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[10]_i_2_n_0 ),
        .Q(\line_cnt_reg_n_0_[10] ));
  FDCE \line_cnt_reg[1] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[1]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[1] ));
  FDCE \line_cnt_reg[2] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[2]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[2] ));
  FDCE \line_cnt_reg[3] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[3]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[3] ));
  FDCE \line_cnt_reg[4] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[4]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[4] ));
  FDCE \line_cnt_reg[5] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[5]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[5] ));
  FDCE \line_cnt_reg[6] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[6]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[6] ));
  FDCE \line_cnt_reg[7] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[7]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[7] ));
  FDCE \line_cnt_reg[8] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[8]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[8] ));
  FDCE \line_cnt_reg[9] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[9]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \pix_cnt[0]_i_1 
       (.I0(pix_cnt[0]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[10]_i_1 
       (.I0(pix_cnt0[10]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[11]_i_1 
       (.I0(pix_cnt0[11]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \pix_cnt[11]_i_2 
       (.I0(vid_rstn),
        .I1(locked),
        .O(\pix_cnt[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F200FF000000)) 
    \pix_cnt[11]_i_4 
       (.I0(\line_cnt[10]_i_3_n_0 ),
        .I1(\pix_cnt[11]_i_5_n_0 ),
        .I2(pix_cnt[8]),
        .I3(pix_cnt[11]),
        .I4(pix_cnt[10]),
        .I5(pix_cnt[9]),
        .O(\pix_cnt[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h01111111)) 
    \pix_cnt[11]_i_5 
       (.I0(pix_cnt[4]),
        .I1(pix_cnt[3]),
        .I2(pix_cnt[2]),
        .I3(pix_cnt[1]),
        .I4(pix_cnt[0]),
        .O(\pix_cnt[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[1]_i_1 
       (.I0(pix_cnt0[1]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[2]_i_1 
       (.I0(pix_cnt0[2]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[3]_i_1 
       (.I0(pix_cnt0[3]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[4]_i_1 
       (.I0(pix_cnt0[4]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[5]_i_1 
       (.I0(pix_cnt0[5]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[6]_i_1 
       (.I0(pix_cnt0[6]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[7]_i_1 
       (.I0(pix_cnt0[7]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[8]_i_1 
       (.I0(pix_cnt0[8]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix_cnt[9]_i_1 
       (.I0(pix_cnt0[9]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .O(\pix_cnt[9]_i_1_n_0 ));
  FDCE \pix_cnt_reg[0] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[0]_i_1_n_0 ),
        .Q(pix_cnt[0]));
  FDCE \pix_cnt_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[10]_i_1_n_0 ),
        .Q(pix_cnt[10]));
  FDCE \pix_cnt_reg[11] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[11]_i_1_n_0 ),
        .Q(pix_cnt[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pix_cnt_reg[11]_i_3 
       (.CI(\pix_cnt_reg[8]_i_2_n_0 ),
        .CO({\NLW_pix_cnt_reg[11]_i_3_CO_UNCONNECTED [3:2],\pix_cnt_reg[11]_i_3_n_2 ,\pix_cnt_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pix_cnt_reg[11]_i_3_O_UNCONNECTED [3],pix_cnt0[11:9]}),
        .S({1'b0,pix_cnt[11:9]}));
  FDCE \pix_cnt_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[1]_i_1_n_0 ),
        .Q(pix_cnt[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[2]_i_1_n_0 ),
        .Q(pix_cnt[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[3]_i_1_n_0 ),
        .Q(pix_cnt[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[4]_i_1_n_0 ),
        .Q(pix_cnt[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pix_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\pix_cnt_reg[4]_i_2_n_0 ,\pix_cnt_reg[4]_i_2_n_1 ,\pix_cnt_reg[4]_i_2_n_2 ,\pix_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(pix_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pix_cnt0[4:1]),
        .S(pix_cnt[4:1]));
  FDCE \pix_cnt_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[5]_i_1_n_0 ),
        .Q(pix_cnt[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[6]_i_1_n_0 ),
        .Q(pix_cnt[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[7]_i_1_n_0 ),
        .Q(pix_cnt[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[8]_i_1_n_0 ),
        .Q(pix_cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pix_cnt_reg[8]_i_2 
       (.CI(\pix_cnt_reg[4]_i_2_n_0 ),
        .CO({\pix_cnt_reg[8]_i_2_n_0 ,\pix_cnt_reg[8]_i_2_n_1 ,\pix_cnt_reg[8]_i_2_n_2 ,\pix_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pix_cnt0[8:5]),
        .S(pix_cnt[8:5]));
  FDCE \pix_cnt_reg[9] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[9]_i_1_n_0 ),
        .Q(pix_cnt[9]));
  LUT5 #(
    .INIT(32'h0000EEEA)) 
    vid_active_video_i_1
       (.I0(vid_active_video_i_2_n_0),
        .I1(\line_cnt_reg_n_0_[4] ),
        .I2(\line_cnt_reg_n_0_[3] ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .I4(vid_active_video_i_3_n_0),
        .O(vid_active_video0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    vid_active_video_i_2
       (.I0(\line_cnt_reg_n_0_[5] ),
        .I1(\line_cnt_reg_n_0_[6] ),
        .I2(\line_cnt_reg_n_0_[10] ),
        .I3(\line_cnt_reg_n_0_[8] ),
        .I4(\line_cnt_reg_n_0_[9] ),
        .I5(\line_cnt_reg_n_0_[7] ),
        .O(vid_active_video_i_2_n_0));
  LUT6 #(
    .INIT(64'h000F0F0F010F0F0F)) 
    vid_active_video_i_3
       (.I0(pix_cnt[4]),
        .I1(pix_cnt[3]),
        .I2(vid_hsync_i_4_n_0),
        .I3(pix_cnt[7]),
        .I4(pix_cnt[6]),
        .I5(pix_cnt[5]),
        .O(vid_active_video_i_3_n_0));
  FDCE vid_active_video_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(vid_active_video0),
        .Q(active_video_w));
  LUT5 #(
    .INIT(32'hFFFF550C)) 
    vid_hsync_i_1
       (.I0(vid_hsync_i_2_n_0),
        .I1(vid_hsync_i_3_n_0),
        .I2(pix_cnt[6]),
        .I3(pix_cnt[7]),
        .I4(vid_hsync_i_4_n_0),
        .O(vid_hsync_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000557F)) 
    vid_hsync_i_2
       (.I0(pix_cnt[4]),
        .I1(pix_cnt[1]),
        .I2(pix_cnt[2]),
        .I3(pix_cnt[3]),
        .I4(pix_cnt[5]),
        .I5(pix_cnt[6]),
        .O(vid_hsync_i_2_n_0));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    vid_hsync_i_3
       (.I0(pix_cnt[2]),
        .I1(pix_cnt[1]),
        .I2(pix_cnt[3]),
        .I3(pix_cnt[4]),
        .I4(pix_cnt[5]),
        .O(vid_hsync_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    vid_hsync_i_4
       (.I0(pix_cnt[9]),
        .I1(pix_cnt[10]),
        .I2(pix_cnt[8]),
        .I3(pix_cnt[11]),
        .O(vid_hsync_i_4_n_0));
  FDPE vid_hsync_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(vid_hsync_i_1_n_0),
        .PRE(\pix_cnt[11]_i_2_n_0 ),
        .Q(vid_hsync_reg_0));
  LUT6 #(
    .INIT(64'h0000000015554440)) 
    vid_vsync_i_1
       (.I0(\line_cnt_reg_n_0_[4] ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[1] ),
        .I3(\line_cnt_reg_n_0_[0] ),
        .I4(\line_cnt_reg_n_0_[3] ),
        .I5(vid_active_video_i_2_n_0),
        .O(vid_vsync0));
  FDCE vid_vsync_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
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
