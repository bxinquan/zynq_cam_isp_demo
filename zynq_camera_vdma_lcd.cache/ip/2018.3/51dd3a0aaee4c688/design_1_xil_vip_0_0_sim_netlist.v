// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Dec 27 00:15:07 2021
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_xil_vip_0_0_sim_netlist.v
// Design      : design_1_xil_vip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_xil_vip_0_0,xil_vip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xil_vip_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pclk,
    rst_n,
    in_href,
    in_vsync,
    in_yuv,
    out_pclk,
    out_href,
    out_vsync,
    out_rgb,
    irq,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pclk, ASSOCIATED_RESET rst_n, FREQ_HZ 96000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 yuv ACTIVE_VIDEO" *) input in_href;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 yuv VSYNC" *) input in_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 yuv DATA" *) input [23:0]in_yuv;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 out_pclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_pclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_xil_vip_0_0_out_pclk, INSERT_VIP 0" *) output out_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 rgb ACTIVE_VIDEO" *) output out_href;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 rgb VSYNC" *) output out_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 rgb DATA" *) output [23:0]out_rgb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire \XOUT_reg[19]_i_7_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_4_n_0 ;
  wire in_href;
  wire in_vsync;
  wire [23:0]in_yuv;
  wire inst_n_0;
  wire inst_n_1;
  wire irq;
  wire out_href;
  wire out_pclk;
  wire [23:0]out_rgb;
  wire out_vsync;
  wire pclk;
  wire rst_n;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [15:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15:0] = \^s00_axi_rdata [15:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDCE \XOUT_reg[19]_i_7 
       (.C(pclk),
        .CE(1'b1),
        .CLR(inst_n_1),
        .D(1'b1),
        .Q(\XOUT_reg[19]_i_7_n_0 ));
  FDCE \hist_sum_data_3_reg[19]_i_4 
       (.C(pclk),
        .CE(1'b1),
        .CLR(inst_n_0),
        .D(1'b1),
        .Q(\hist_sum_data_3_reg[19]_i_4_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .\ZOUT_reg[19] (\XOUT_reg[19]_i_7_n_0 ),
        .\hist_sum_data_3_reg[0] (\hist_sum_data_3_reg[19]_i_4_n_0 ),
        .in_href(in_href),
        .in_vsync(in_vsync),
        .in_yuv(in_yuv),
        .irq(irq),
        .out_href(out_href),
        .out_pclk(out_pclk),
        .out_rgb(out_rgb),
        .out_vsync(out_vsync),
        .pclk(pclk),
        .rst_n(rst_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[15:0]),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_hist_equ_en_reg(inst_n_0),
        .s_module_reset_reg(inst_n_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hist_ram
   (prev_flip_trigger_reg_0,
    s_hist_equ_en_reg,
    E,
    prev_flip_trigger_reg_1,
    D,
    O,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    pclk,
    out_vsync,
    hist_sum_done,
    hist_sum_done_reg,
    Q,
    cur_ram02_out,
    \hist_addr_reg[5] ,
    hist_equ_href,
    hist_sum_runn_0,
    out_href,
    A,
    out_data,
    s_hist_equ_en,
    rst_n,
    s_module_reset);
  output prev_flip_trigger_reg_0;
  output s_hist_equ_en_reg;
  output [0:0]E;
  output prev_flip_trigger_reg_1;
  output [6:0]D;
  output [3:0]O;
  output [3:0]mem_reg;
  output [3:0]mem_reg_0;
  output [3:0]mem_reg_1;
  output [3:0]mem_reg_2;
  output [2:0]mem_reg_3;
  input pclk;
  input out_vsync;
  input hist_sum_done;
  input hist_sum_done_reg;
  input [7:0]Q;
  input cur_ram02_out;
  input \hist_addr_reg[5] ;
  input hist_equ_href;
  input hist_sum_runn_0;
  input out_href;
  input [22:0]A;
  input [7:0]out_data;
  input s_hist_equ_en;
  input rst_n;
  input s_module_reset;

  wire [22:0]A;
  wire [6:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [7:0]Q;
  wire \_inferred__1/i__carry__0_n_0 ;
  wire \_inferred__1/i__carry__0_n_1 ;
  wire \_inferred__1/i__carry__0_n_2 ;
  wire \_inferred__1/i__carry__0_n_3 ;
  wire \_inferred__1/i__carry__0_n_4 ;
  wire \_inferred__1/i__carry__0_n_5 ;
  wire \_inferred__1/i__carry__0_n_6 ;
  wire \_inferred__1/i__carry__0_n_7 ;
  wire \_inferred__1/i__carry__1_n_0 ;
  wire \_inferred__1/i__carry__1_n_1 ;
  wire \_inferred__1/i__carry__1_n_2 ;
  wire \_inferred__1/i__carry__1_n_3 ;
  wire \_inferred__1/i__carry__1_n_4 ;
  wire \_inferred__1/i__carry__1_n_5 ;
  wire \_inferred__1/i__carry__1_n_6 ;
  wire \_inferred__1/i__carry__1_n_7 ;
  wire \_inferred__1/i__carry__2_n_0 ;
  wire \_inferred__1/i__carry__2_n_1 ;
  wire \_inferred__1/i__carry__2_n_2 ;
  wire \_inferred__1/i__carry__2_n_3 ;
  wire \_inferred__1/i__carry__2_n_4 ;
  wire \_inferred__1/i__carry__2_n_5 ;
  wire \_inferred__1/i__carry__2_n_6 ;
  wire \_inferred__1/i__carry__2_n_7 ;
  wire \_inferred__1/i__carry__3_n_0 ;
  wire \_inferred__1/i__carry__3_n_1 ;
  wire \_inferred__1/i__carry__3_n_2 ;
  wire \_inferred__1/i__carry__3_n_3 ;
  wire \_inferred__1/i__carry__3_n_4 ;
  wire \_inferred__1/i__carry__3_n_5 ;
  wire \_inferred__1/i__carry__3_n_6 ;
  wire \_inferred__1/i__carry__3_n_7 ;
  wire \_inferred__1/i__carry__4_n_3 ;
  wire \_inferred__1/i__carry__4_n_6 ;
  wire \_inferred__1/i__carry__4_n_7 ;
  wire \_inferred__1/i__carry_n_0 ;
  wire \_inferred__1/i__carry_n_1 ;
  wire \_inferred__1/i__carry_n_2 ;
  wire \_inferred__1/i__carry_n_3 ;
  wire \_inferred__1/i__carry_n_4 ;
  wire \_inferred__1/i__carry_n_5 ;
  wire \_inferred__1/i__carry_n_6 ;
  wire \_inferred__1/i__carry_n_7 ;
  wire \cur_clr_addr[2]_i_1_n_0 ;
  wire \cur_clr_addr[3]_i_1_n_0 ;
  wire \cur_clr_addr[4]_i_1_n_0 ;
  wire \cur_clr_addr[5]_i_1_n_0 ;
  wire \cur_clr_addr[5]_i_2_n_0 ;
  wire \cur_clr_addr[6]_i_1_n_0 ;
  wire \cur_clr_addr[7]_i_1_n_0 ;
  wire \cur_clr_addr[7]_i_2_n_0 ;
  wire [7:0]cur_clr_addr_reg__0;
  wire cur_clr_done;
  wire cur_clr_done_i_1_n_0;
  wire cur_clr_done_i_2_n_0;
  wire [22:1]cur_data;
  wire [22:0]cur_data_r;
  wire cur_ram;
  wire cur_ram02_out;
  wire cur_ram_i_1_n_0;
  wire [7:0]cur_rdaddr_r;
  wire [7:0]cur_wraddr;
  wire [7:0]cur_wraddr_r;
  wire \hist_addr_reg[5] ;
  wire hist_equ_href;
  wire hist_sum_done;
  wire hist_sum_done_reg;
  wire hist_sum_runn_0;
  wire [3:0]mem_reg;
  wire [3:0]mem_reg_0;
  wire [3:0]mem_reg_1;
  wire [3:0]mem_reg_2;
  wire [2:0]mem_reg_3;
  wire mem_reg_i_42_n_0;
  wire mem_reg_i_43_n_0;
  wire mem_reg_i_44_n_0;
  wire [7:0]out_data;
  wire out_href;
  wire out_vsync;
  wire [1:0]p_0_in;
  wire [22:0]p_0_in__1;
  wire pclk;
  wire prev_flip_trigger_reg_0;
  wire prev_flip_trigger_reg_1;
  wire ram0_n_23;
  wire ram0_n_24;
  wire ram0_n_25;
  wire ram0_n_26;
  wire ram0_n_27;
  wire ram0_n_28;
  wire ram0_n_29;
  wire ram0_n_30;
  wire ram0_n_31;
  wire ram0_n_32;
  wire ram0_n_33;
  wire ram0_n_34;
  wire ram0_n_35;
  wire ram0_n_36;
  wire ram0_n_37;
  wire ram0_n_38;
  wire ram0_n_39;
  wire ram0_n_40;
  wire ram0_n_41;
  wire ram0_n_42;
  wire ram0_n_43;
  wire ram0_n_44;
  wire ram0_n_45;
  wire [22:0]ram0_q;
  wire ram1_n_23;
  wire [22:0]ram1_q;
  wire rst_n;
  wire s_hist_equ_en;
  wire s_hist_equ_en_reg;
  wire s_module_reset;
  wire [3:1]\NLW__inferred__1/i__carry__4_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__1/i__carry__4_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(p_0_in__1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\_inferred__1/i__carry_n_4 ,\_inferred__1/i__carry_n_5 ,\_inferred__1/i__carry_n_6 ,\_inferred__1/i__carry_n_7 }),
        .S(p_0_in__1[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\_inferred__1/i__carry__0_n_0 ,\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\_inferred__1/i__carry__0_n_4 ,\_inferred__1/i__carry__0_n_5 ,\_inferred__1/i__carry__0_n_6 ,\_inferred__1/i__carry__0_n_7 }),
        .S(p_0_in__1[8:5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__1 
       (.CI(\_inferred__1/i__carry__0_n_0 ),
        .CO({\_inferred__1/i__carry__1_n_0 ,\_inferred__1/i__carry__1_n_1 ,\_inferred__1/i__carry__1_n_2 ,\_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\_inferred__1/i__carry__1_n_4 ,\_inferred__1/i__carry__1_n_5 ,\_inferred__1/i__carry__1_n_6 ,\_inferred__1/i__carry__1_n_7 }),
        .S(p_0_in__1[12:9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__2 
       (.CI(\_inferred__1/i__carry__1_n_0 ),
        .CO({\_inferred__1/i__carry__2_n_0 ,\_inferred__1/i__carry__2_n_1 ,\_inferred__1/i__carry__2_n_2 ,\_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\_inferred__1/i__carry__2_n_4 ,\_inferred__1/i__carry__2_n_5 ,\_inferred__1/i__carry__2_n_6 ,\_inferred__1/i__carry__2_n_7 }),
        .S(p_0_in__1[16:13]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__3 
       (.CI(\_inferred__1/i__carry__2_n_0 ),
        .CO({\_inferred__1/i__carry__3_n_0 ,\_inferred__1/i__carry__3_n_1 ,\_inferred__1/i__carry__3_n_2 ,\_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\_inferred__1/i__carry__3_n_4 ,\_inferred__1/i__carry__3_n_5 ,\_inferred__1/i__carry__3_n_6 ,\_inferred__1/i__carry__3_n_7 }),
        .S(p_0_in__1[20:17]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__4 
       (.CI(\_inferred__1/i__carry__3_n_0 ),
        .CO({\NLW__inferred__1/i__carry__4_CO_UNCONNECTED [3:1],\_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW__inferred__1/i__carry__4_O_UNCONNECTED [3:2],\_inferred__1/i__carry__4_n_6 ,\_inferred__1/i__carry__4_n_7 }),
        .S({1'b0,1'b0,p_0_in__1[22:21]}));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \cur_clr_addr[0]_i_1 
       (.I0(cur_clr_addr_reg__0[0]),
        .I1(prev_flip_trigger_reg_0),
        .I2(out_vsync),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6066)) 
    \cur_clr_addr[1]_i_1 
       (.I0(cur_clr_addr_reg__0[1]),
        .I1(cur_clr_addr_reg__0[0]),
        .I2(prev_flip_trigger_reg_0),
        .I3(out_vsync),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0BBBB000)) 
    \cur_clr_addr[2]_i_1 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(cur_clr_addr_reg__0[0]),
        .I3(cur_clr_addr_reg__0[1]),
        .I4(cur_clr_addr_reg__0[2]),
        .O(\cur_clr_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0BBBBBBBB0000000)) 
    \cur_clr_addr[3]_i_1 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(cur_clr_addr_reg__0[1]),
        .I3(cur_clr_addr_reg__0[0]),
        .I4(cur_clr_addr_reg__0[2]),
        .I5(cur_clr_addr_reg__0[3]),
        .O(\cur_clr_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \cur_clr_addr[4]_i_1 
       (.I0(cur_ram02_out),
        .I1(cur_clr_addr_reg__0[2]),
        .I2(cur_clr_addr_reg__0[0]),
        .I3(cur_clr_addr_reg__0[1]),
        .I4(cur_clr_addr_reg__0[3]),
        .I5(cur_clr_addr_reg__0[4]),
        .O(\cur_clr_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \cur_clr_addr[5]_i_1 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(\cur_clr_addr[5]_i_2_n_0 ),
        .I3(cur_clr_addr_reg__0[5]),
        .O(\cur_clr_addr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cur_clr_addr[5]_i_2 
       (.I0(cur_clr_addr_reg__0[3]),
        .I1(cur_clr_addr_reg__0[1]),
        .I2(cur_clr_addr_reg__0[0]),
        .I3(cur_clr_addr_reg__0[2]),
        .I4(cur_clr_addr_reg__0[4]),
        .O(\cur_clr_addr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \cur_clr_addr[6]_i_1 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(cur_clr_done_i_2_n_0),
        .I3(cur_clr_addr_reg__0[6]),
        .O(\cur_clr_addr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \cur_clr_addr[7]_i_1 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(cur_clr_done),
        .O(\cur_clr_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBB0B00B0)) 
    \cur_clr_addr[7]_i_2 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(cur_clr_addr_reg__0[6]),
        .I3(cur_clr_done_i_2_n_0),
        .I4(cur_clr_addr_reg__0[7]),
        .O(\cur_clr_addr[7]_i_2_n_0 ));
  FDCE \cur_clr_addr_reg[0] 
       (.C(pclk),
        .CE(\cur_clr_addr[7]_i_1_n_0 ),
        .CLR(s_hist_equ_en_reg),
        .D(p_0_in[0]),
        .Q(cur_clr_addr_reg__0[0]));
  FDCE \cur_clr_addr_reg[1] 
       (.C(pclk),
        .CE(\cur_clr_addr[7]_i_1_n_0 ),
        .CLR(s_hist_equ_en_reg),
        .D(p_0_in[1]),
        .Q(cur_clr_addr_reg__0[1]));
  FDCE \cur_clr_addr_reg[2] 
       (.C(pclk),
        .CE(\cur_clr_addr[7]_i_1_n_0 ),
        .CLR(s_hist_equ_en_reg),
        .D(\cur_clr_addr[2]_i_1_n_0 ),
        .Q(cur_clr_addr_reg__0[2]));
  FDCE \cur_clr_addr_reg[3] 
       (.C(pclk),
        .CE(\cur_clr_addr[7]_i_1_n_0 ),
        .CLR(s_hist_equ_en_reg),
        .D(\cur_clr_addr[3]_i_1_n_0 ),
        .Q(cur_clr_addr_reg__0[3]));
  FDCE \cur_clr_addr_reg[4] 
       (.C(pclk),
        .CE(\cur_clr_addr[7]_i_1_n_0 ),
        .CLR(s_hist_equ_en_reg),
        .D(\cur_clr_addr[4]_i_1_n_0 ),
        .Q(cur_clr_addr_reg__0[4]));
  FDCE \cur_clr_addr_reg[5] 
       (.C(pclk),
        .CE(\cur_clr_addr[7]_i_1_n_0 ),
        .CLR(s_hist_equ_en_reg),
        .D(\cur_clr_addr[5]_i_1_n_0 ),
        .Q(cur_clr_addr_reg__0[5]));
  FDCE \cur_clr_addr_reg[6] 
       (.C(pclk),
        .CE(\cur_clr_addr[7]_i_1_n_0 ),
        .CLR(s_hist_equ_en_reg),
        .D(\cur_clr_addr[6]_i_1_n_0 ),
        .Q(cur_clr_addr_reg__0[6]));
  FDCE \cur_clr_addr_reg[7] 
       (.C(pclk),
        .CE(\cur_clr_addr[7]_i_1_n_0 ),
        .CLR(s_hist_equ_en_reg),
        .D(\cur_clr_addr[7]_i_2_n_0 ),
        .Q(cur_clr_addr_reg__0[7]));
  LUT6 #(
    .INIT(64'hBBBBBBBB0B000000)) 
    cur_clr_done_i_1
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(cur_clr_done_i_2_n_0),
        .I3(cur_clr_addr_reg__0[6]),
        .I4(cur_clr_addr_reg__0[7]),
        .I5(cur_clr_done),
        .O(cur_clr_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    cur_clr_done_i_2
       (.I0(cur_clr_addr_reg__0[4]),
        .I1(cur_clr_addr_reg__0[2]),
        .I2(cur_clr_addr_reg__0[0]),
        .I3(cur_clr_addr_reg__0[1]),
        .I4(cur_clr_addr_reg__0[3]),
        .I5(cur_clr_addr_reg__0[5]),
        .O(cur_clr_done_i_2_n_0));
  FDCE cur_clr_done_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(cur_clr_done_i_1_n_0),
        .Q(cur_clr_done));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[10]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__1_n_6 ),
        .O(cur_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[11]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__1_n_5 ),
        .O(cur_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[12]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__1_n_4 ),
        .O(cur_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[13]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__2_n_7 ),
        .O(cur_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[14]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__2_n_6 ),
        .O(cur_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[15]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__2_n_5 ),
        .O(cur_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[16]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__2_n_4 ),
        .O(cur_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[17]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__3_n_7 ),
        .O(cur_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[18]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__3_n_6 ),
        .O(cur_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[19]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__3_n_5 ),
        .O(cur_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[1]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry_n_7 ),
        .O(cur_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[20]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__3_n_4 ),
        .O(cur_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[21]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__4_n_7 ),
        .O(cur_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[22]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__4_n_6 ),
        .O(cur_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[2]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry_n_6 ),
        .O(cur_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[3]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry_n_5 ),
        .O(cur_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[4]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry_n_4 ),
        .O(cur_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[5]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__0_n_7 ),
        .O(cur_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[6]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__0_n_6 ),
        .O(cur_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[7]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__0_n_5 ),
        .O(cur_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[8]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__0_n_4 ),
        .O(cur_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cur_data_r[9]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__1_n_7 ),
        .O(cur_data[9]));
  FDRE \cur_data_r_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(ram1_n_23),
        .Q(cur_data_r[0]),
        .R(1'b0));
  FDRE \cur_data_r_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[10]),
        .Q(cur_data_r[10]),
        .R(1'b0));
  FDRE \cur_data_r_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[11]),
        .Q(cur_data_r[11]),
        .R(1'b0));
  FDRE \cur_data_r_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[12]),
        .Q(cur_data_r[12]),
        .R(1'b0));
  FDRE \cur_data_r_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[13]),
        .Q(cur_data_r[13]),
        .R(1'b0));
  FDRE \cur_data_r_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[14]),
        .Q(cur_data_r[14]),
        .R(1'b0));
  FDRE \cur_data_r_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[15]),
        .Q(cur_data_r[15]),
        .R(1'b0));
  FDRE \cur_data_r_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[16]),
        .Q(cur_data_r[16]),
        .R(1'b0));
  FDRE \cur_data_r_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[17]),
        .Q(cur_data_r[17]),
        .R(1'b0));
  FDRE \cur_data_r_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[18]),
        .Q(cur_data_r[18]),
        .R(1'b0));
  FDRE \cur_data_r_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[19]),
        .Q(cur_data_r[19]),
        .R(1'b0));
  FDRE \cur_data_r_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[1]),
        .Q(cur_data_r[1]),
        .R(1'b0));
  FDRE \cur_data_r_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[20]),
        .Q(cur_data_r[20]),
        .R(1'b0));
  FDRE \cur_data_r_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[21]),
        .Q(cur_data_r[21]),
        .R(1'b0));
  FDRE \cur_data_r_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[22]),
        .Q(cur_data_r[22]),
        .R(1'b0));
  FDRE \cur_data_r_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[2]),
        .Q(cur_data_r[2]),
        .R(1'b0));
  FDRE \cur_data_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[3]),
        .Q(cur_data_r[3]),
        .R(1'b0));
  FDRE \cur_data_r_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[4]),
        .Q(cur_data_r[4]),
        .R(1'b0));
  FDRE \cur_data_r_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[5]),
        .Q(cur_data_r[5]),
        .R(1'b0));
  FDRE \cur_data_r_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[6]),
        .Q(cur_data_r[6]),
        .R(1'b0));
  FDRE \cur_data_r_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[7]),
        .Q(cur_data_r[7]),
        .R(1'b0));
  FDRE \cur_data_r_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[8]),
        .Q(cur_data_r[8]),
        .R(1'b0));
  FDRE \cur_data_r_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_data[9]),
        .Q(cur_data_r[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    cur_ram_i_1
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(cur_ram),
        .O(cur_ram_i_1_n_0));
  FDCE cur_ram_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(cur_ram_i_1_n_0),
        .Q(cur_ram));
  FDRE \cur_rdaddr_r_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(out_data[0]),
        .Q(cur_rdaddr_r[0]),
        .R(1'b0));
  FDRE \cur_rdaddr_r_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(out_data[1]),
        .Q(cur_rdaddr_r[1]),
        .R(1'b0));
  FDRE \cur_rdaddr_r_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(out_data[2]),
        .Q(cur_rdaddr_r[2]),
        .R(1'b0));
  FDRE \cur_rdaddr_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(out_data[3]),
        .Q(cur_rdaddr_r[3]),
        .R(1'b0));
  FDRE \cur_rdaddr_r_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(out_data[4]),
        .Q(cur_rdaddr_r[4]),
        .R(1'b0));
  FDRE \cur_rdaddr_r_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(out_data[5]),
        .Q(cur_rdaddr_r[5]),
        .R(1'b0));
  FDRE \cur_rdaddr_r_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(out_data[6]),
        .Q(cur_rdaddr_r[6]),
        .R(1'b0));
  FDRE \cur_rdaddr_r_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(out_data[7]),
        .Q(cur_rdaddr_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cur_wraddr_r[0]_i_1 
       (.I0(cur_rdaddr_r[0]),
        .I1(cur_clr_done),
        .I2(cur_clr_addr_reg__0[0]),
        .O(cur_wraddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cur_wraddr_r[1]_i_1 
       (.I0(cur_rdaddr_r[1]),
        .I1(cur_clr_done),
        .I2(cur_clr_addr_reg__0[1]),
        .O(cur_wraddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cur_wraddr_r[2]_i_1 
       (.I0(cur_rdaddr_r[2]),
        .I1(cur_clr_done),
        .I2(cur_clr_addr_reg__0[2]),
        .O(cur_wraddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cur_wraddr_r[3]_i_1 
       (.I0(cur_rdaddr_r[3]),
        .I1(cur_clr_done),
        .I2(cur_clr_addr_reg__0[3]),
        .O(cur_wraddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cur_wraddr_r[4]_i_1 
       (.I0(cur_rdaddr_r[4]),
        .I1(cur_clr_done),
        .I2(cur_clr_addr_reg__0[4]),
        .O(cur_wraddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cur_wraddr_r[5]_i_1 
       (.I0(cur_rdaddr_r[5]),
        .I1(cur_clr_done),
        .I2(cur_clr_addr_reg__0[5]),
        .O(cur_wraddr[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cur_wraddr_r[6]_i_1 
       (.I0(cur_rdaddr_r[6]),
        .I1(cur_clr_done),
        .I2(cur_clr_addr_reg__0[6]),
        .O(cur_wraddr[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cur_wraddr_r[7]_i_1 
       (.I0(cur_rdaddr_r[7]),
        .I1(cur_clr_done),
        .I2(cur_clr_addr_reg__0[7]),
        .O(cur_wraddr[7]));
  FDRE \cur_wraddr_r_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_wraddr[0]),
        .Q(cur_wraddr_r[0]),
        .R(1'b0));
  FDRE \cur_wraddr_r_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_wraddr[1]),
        .Q(cur_wraddr_r[1]),
        .R(1'b0));
  FDRE \cur_wraddr_r_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_wraddr[2]),
        .Q(cur_wraddr_r[2]),
        .R(1'b0));
  FDRE \cur_wraddr_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_wraddr[3]),
        .Q(cur_wraddr_r[3]),
        .R(1'b0));
  FDRE \cur_wraddr_r_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_wraddr[4]),
        .Q(cur_wraddr_r[4]),
        .R(1'b0));
  FDRE \cur_wraddr_r_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_wraddr[5]),
        .Q(cur_wraddr_r[5]),
        .R(1'b0));
  FDRE \cur_wraddr_r_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_wraddr[6]),
        .Q(cur_wraddr_r[6]),
        .R(1'b0));
  FDRE \cur_wraddr_r_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(cur_wraddr[7]),
        .Q(cur_wraddr_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \hist_addr[0]_i_1 
       (.I0(Q[0]),
        .I1(prev_flip_trigger_reg_0),
        .I2(out_vsync),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6066)) 
    \hist_addr[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(prev_flip_trigger_reg_0),
        .I3(out_vsync),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0BBBB000)) 
    \hist_addr[2]_i_1 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0BBBBBBBB0000000)) 
    \hist_addr[3]_i_1 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \hist_addr[5]_i_1 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(\hist_addr_reg[5] ),
        .I3(Q[5]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \hist_addr[6]_i_1 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(hist_sum_done_reg),
        .I3(Q[6]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \hist_addr[7]_i_1 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(hist_sum_done),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBB0B00B0)) 
    \hist_addr[7]_i_2 
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(Q[6]),
        .I3(hist_sum_done_reg),
        .I4(Q[7]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBBBBBBBB0B000000)) 
    hist_sum_done_i_1
       (.I0(prev_flip_trigger_reg_0),
        .I1(out_vsync),
        .I2(hist_sum_done_reg),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(hist_sum_done),
        .O(prev_flip_trigger_reg_1));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    mem_reg_i_42
       (.I0(cur_wraddr_r[7]),
        .I1(cur_wraddr[7]),
        .I2(cur_wraddr_r[6]),
        .I3(cur_wraddr[6]),
        .I4(mem_reg_i_43_n_0),
        .I5(mem_reg_i_44_n_0),
        .O(mem_reg_i_42_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    mem_reg_i_43
       (.I0(cur_wraddr[0]),
        .I1(cur_wraddr_r[0]),
        .I2(cur_wraddr_r[2]),
        .I3(cur_wraddr[2]),
        .I4(cur_wraddr_r[1]),
        .I5(cur_wraddr[1]),
        .O(mem_reg_i_43_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    mem_reg_i_44
       (.I0(cur_wraddr[3]),
        .I1(cur_wraddr_r[3]),
        .I2(cur_wraddr_r[4]),
        .I3(cur_wraddr[4]),
        .I4(cur_wraddr_r[5]),
        .I5(cur_wraddr[5]),
        .O(mem_reg_i_44_n_0));
  LUT3 #(
    .INIT(8'hF7)) 
    prev_flip_trigger_i_1
       (.I0(s_hist_equ_en),
        .I1(rst_n),
        .I2(s_module_reset),
        .O(s_hist_equ_en_reg));
  FDCE prev_flip_trigger_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(out_vsync),
        .Q(prev_flip_trigger_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram ram0
       (.A(A),
        .O({\_inferred__1/i__carry__4_n_6 ,\_inferred__1/i__carry__4_n_7 }),
        .Q(cur_data_r[0]),
        .S({ram0_n_23,ram0_n_24,ram0_n_25}),
        .cur_clr_done(cur_clr_done),
        .cur_ram(cur_ram),
        .hist_equ_href(hist_equ_href),
        .hist_sum_done(hist_sum_done),
        .hist_sum_runn_0(hist_sum_runn_0),
        .mem_reg_0({ram0_n_26,ram0_n_27,ram0_n_28,ram0_n_29}),
        .mem_reg_1({ram0_n_30,ram0_n_31,ram0_n_32,ram0_n_33}),
        .mem_reg_10({\_inferred__1/i__carry__1_n_4 ,\_inferred__1/i__carry__1_n_5 ,\_inferred__1/i__carry__1_n_6 ,\_inferred__1/i__carry__1_n_7 }),
        .mem_reg_11({\_inferred__1/i__carry__0_n_4 ,\_inferred__1/i__carry__0_n_5 ,\_inferred__1/i__carry__0_n_6 ,\_inferred__1/i__carry__0_n_7 }),
        .mem_reg_12({\_inferred__1/i__carry_n_4 ,\_inferred__1/i__carry_n_5 ,\_inferred__1/i__carry_n_6 ,\_inferred__1/i__carry_n_7 }),
        .mem_reg_13(Q),
        .mem_reg_2({ram0_n_34,ram0_n_35,ram0_n_36,ram0_n_37}),
        .mem_reg_3({ram0_n_38,ram0_n_39,ram0_n_40,ram0_n_41}),
        .mem_reg_4({ram0_n_42,ram0_n_43,ram0_n_44,ram0_n_45}),
        .mem_reg_5(mem_reg_i_42_n_0),
        .mem_reg_6(cur_clr_addr_reg__0),
        .mem_reg_7(cur_rdaddr_r),
        .mem_reg_8({\_inferred__1/i__carry__3_n_4 ,\_inferred__1/i__carry__3_n_5 ,\_inferred__1/i__carry__3_n_6 ,\_inferred__1/i__carry__3_n_7 }),
        .mem_reg_9({\_inferred__1/i__carry__2_n_4 ,\_inferred__1/i__carry__2_n_5 ,\_inferred__1/i__carry__2_n_6 ,\_inferred__1/i__carry__2_n_7 }),
        .out_data(out_data),
        .out_href(out_href),
        .pclk(pclk),
        .ram0_q(ram0_q),
        .ram1_q(ram1_q));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_5 ram1
       (.D(ram1_n_23),
        .O({\_inferred__1/i__carry__4_n_6 ,\_inferred__1/i__carry__4_n_7 }),
        .Q(cur_clr_addr_reg__0),
        .S({ram0_n_23,ram0_n_24,ram0_n_25}),
        .\_inferred__1/i__carry__4 (cur_data_r),
        .cur_clr_done(cur_clr_done),
        .\cur_data_r_reg[0] (mem_reg_i_42_n_0),
        .cur_ram(cur_ram),
        .hist_equ_href(hist_equ_href),
        .\hist_sum_data_1_reg[11] ({ram0_n_34,ram0_n_35,ram0_n_36,ram0_n_37}),
        .\hist_sum_data_1_reg[15] ({ram0_n_38,ram0_n_39,ram0_n_40,ram0_n_41}),
        .\hist_sum_data_1_reg[19] ({ram0_n_42,ram0_n_43,ram0_n_44,ram0_n_45}),
        .\hist_sum_data_1_reg[3] ({ram0_n_26,ram0_n_27,ram0_n_28,ram0_n_29}),
        .\hist_sum_data_1_reg[7] ({ram0_n_30,ram0_n_31,ram0_n_32,ram0_n_33}),
        .hist_sum_done(hist_sum_done),
        .hist_sum_runn_0(hist_sum_runn_0),
        .mem_reg_0(O),
        .mem_reg_1(mem_reg),
        .mem_reg_10({\_inferred__1/i__carry__0_n_4 ,\_inferred__1/i__carry__0_n_5 ,\_inferred__1/i__carry__0_n_6 ,\_inferred__1/i__carry__0_n_7 }),
        .mem_reg_11({\_inferred__1/i__carry_n_4 ,\_inferred__1/i__carry_n_5 ,\_inferred__1/i__carry_n_6 ,\_inferred__1/i__carry_n_7 }),
        .mem_reg_12(Q),
        .mem_reg_2(mem_reg_0),
        .mem_reg_3(mem_reg_1),
        .mem_reg_4(mem_reg_2),
        .mem_reg_5(mem_reg_3),
        .mem_reg_6(cur_rdaddr_r),
        .mem_reg_7({\_inferred__1/i__carry__3_n_4 ,\_inferred__1/i__carry__3_n_5 ,\_inferred__1/i__carry__3_n_6 ,\_inferred__1/i__carry__3_n_7 }),
        .mem_reg_8({\_inferred__1/i__carry__2_n_4 ,\_inferred__1/i__carry__2_n_5 ,\_inferred__1/i__carry__2_n_6 ,\_inferred__1/i__carry__2_n_7 }),
        .mem_reg_9({\_inferred__1/i__carry__1_n_4 ,\_inferred__1/i__carry__1_n_5 ,\_inferred__1/i__carry__1_n_6 ,\_inferred__1/i__carry__1_n_7 }),
        .out_data(out_data),
        .out_href(out_href),
        .p_0_in__1(p_0_in__1),
        .pclk(pclk),
        .ram0_q(ram0_q),
        .ram1_q(ram1_q));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register
   (D,
    mem_reg,
    pclk,
    hist_equ_href_o,
    \in_r_reg[7]_0 );
  output [7:0]D;
  output [7:0]mem_reg;
  input pclk;
  input hist_equ_href_o;
  input [7:0]\in_r_reg[7]_0 ;

  wire [7:0]D;
  wire \gen_ram_inst[0].u_ram_n_10 ;
  wire \gen_ram_inst[0].u_ram_n_8 ;
  wire \gen_ram_inst[0].u_ram_n_9 ;
  wire \gen_ram_inst[1].u_ram_n_16 ;
  wire hist_equ_href_o;
  wire [7:0]in_r;
  wire [7:0]\in_r_reg[7]_0 ;
  wire [7:0]mem_reg;
  wire pclk;
  wire [8:1]pos;
  wire pos_r;
  wire \pos_r[0]_i_3_n_0 ;
  wire [11:0]pos_r_reg;
  wire \pos_r_reg[0]_i_2_n_0 ;
  wire \pos_r_reg[0]_i_2_n_1 ;
  wire \pos_r_reg[0]_i_2_n_2 ;
  wire \pos_r_reg[0]_i_2_n_3 ;
  wire \pos_r_reg[0]_i_2_n_4 ;
  wire \pos_r_reg[0]_i_2_n_5 ;
  wire \pos_r_reg[0]_i_2_n_6 ;
  wire \pos_r_reg[0]_i_2_n_7 ;
  wire \pos_r_reg[4]_i_1_n_0 ;
  wire \pos_r_reg[4]_i_1_n_1 ;
  wire \pos_r_reg[4]_i_1_n_2 ;
  wire \pos_r_reg[4]_i_1_n_3 ;
  wire \pos_r_reg[4]_i_1_n_4 ;
  wire \pos_r_reg[4]_i_1_n_5 ;
  wire \pos_r_reg[4]_i_1_n_6 ;
  wire \pos_r_reg[4]_i_1_n_7 ;
  wire \pos_r_reg[8]_i_1_n_1 ;
  wire \pos_r_reg[8]_i_1_n_2 ;
  wire \pos_r_reg[8]_i_1_n_3 ;
  wire \pos_r_reg[8]_i_1_n_4 ;
  wire \pos_r_reg[8]_i_1_n_5 ;
  wire \pos_r_reg[8]_i_1_n_6 ;
  wire \pos_r_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_pos_r_reg[8]_i_1_CO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1 \gen_ram_inst[0].u_ram 
       (.ADDRBWRADDR({pos_r_reg[11],pos}),
        .D(D),
        .Q(in_r),
        .hist_equ_href_o(hist_equ_href_o),
        .mem_reg_0(\gen_ram_inst[1].u_ram_n_16 ),
        .out({pos_r_reg[10:9],pos_r_reg[0]}),
        .pclk(pclk),
        .\pos_r_reg[10] ({\gen_ram_inst[0].u_ram_n_8 ,\gen_ram_inst[0].u_ram_n_9 ,\gen_ram_inst[0].u_ram_n_10 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1_4 \gen_ram_inst[1].u_ram 
       (.ADDRBWRADDR(pos),
        .D(D),
        .hist_equ_href_o(hist_equ_href_o),
        .mem_reg_0(mem_reg),
        .mem_reg_1({\gen_ram_inst[0].u_ram_n_8 ,\gen_ram_inst[0].u_ram_n_9 ,\gen_ram_inst[0].u_ram_n_10 }),
        .out(pos_r_reg),
        .pclk(pclk),
        .\pos_r_reg[3] (\gen_ram_inst[1].u_ram_n_16 ));
  FDRE \in_r_reg[0] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\in_r_reg[7]_0 [0]),
        .Q(in_r[0]),
        .R(1'b0));
  FDRE \in_r_reg[1] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\in_r_reg[7]_0 [1]),
        .Q(in_r[1]),
        .R(1'b0));
  FDRE \in_r_reg[2] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\in_r_reg[7]_0 [2]),
        .Q(in_r[2]),
        .R(1'b0));
  FDRE \in_r_reg[3] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\in_r_reg[7]_0 [3]),
        .Q(in_r[3]),
        .R(1'b0));
  FDRE \in_r_reg[4] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\in_r_reg[7]_0 [4]),
        .Q(in_r[4]),
        .R(1'b0));
  FDRE \in_r_reg[5] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\in_r_reg[7]_0 [5]),
        .Q(in_r[5]),
        .R(1'b0));
  FDRE \in_r_reg[6] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\in_r_reg[7]_0 [6]),
        .Q(in_r[6]),
        .R(1'b0));
  FDRE \in_r_reg[7] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\in_r_reg[7]_0 [7]),
        .Q(in_r[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88888880)) 
    \pos_r[0]_i_1 
       (.I0(hist_equ_href_o),
        .I1(pos_r_reg[11]),
        .I2(pos_r_reg[10]),
        .I3(pos_r_reg[9]),
        .I4(\gen_ram_inst[1].u_ram_n_16 ),
        .O(pos_r));
  LUT1 #(
    .INIT(2'h1)) 
    \pos_r[0]_i_3 
       (.I0(pos_r_reg[0]),
        .O(\pos_r[0]_i_3_n_0 ));
  FDRE \pos_r_reg[0] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[0]_i_2_n_7 ),
        .Q(pos_r_reg[0]),
        .R(pos_r));
  CARRY4 \pos_r_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pos_r_reg[0]_i_2_n_0 ,\pos_r_reg[0]_i_2_n_1 ,\pos_r_reg[0]_i_2_n_2 ,\pos_r_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pos_r_reg[0]_i_2_n_4 ,\pos_r_reg[0]_i_2_n_5 ,\pos_r_reg[0]_i_2_n_6 ,\pos_r_reg[0]_i_2_n_7 }),
        .S({pos_r_reg[3:1],\pos_r[0]_i_3_n_0 }));
  FDRE \pos_r_reg[10] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[8]_i_1_n_5 ),
        .Q(pos_r_reg[10]),
        .R(pos_r));
  FDRE \pos_r_reg[11] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[8]_i_1_n_4 ),
        .Q(pos_r_reg[11]),
        .R(pos_r));
  FDRE \pos_r_reg[1] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[0]_i_2_n_6 ),
        .Q(pos_r_reg[1]),
        .R(pos_r));
  FDRE \pos_r_reg[2] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[0]_i_2_n_5 ),
        .Q(pos_r_reg[2]),
        .R(pos_r));
  FDRE \pos_r_reg[3] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[0]_i_2_n_4 ),
        .Q(pos_r_reg[3]),
        .R(pos_r));
  FDRE \pos_r_reg[4] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[4]_i_1_n_7 ),
        .Q(pos_r_reg[4]),
        .R(pos_r));
  CARRY4 \pos_r_reg[4]_i_1 
       (.CI(\pos_r_reg[0]_i_2_n_0 ),
        .CO({\pos_r_reg[4]_i_1_n_0 ,\pos_r_reg[4]_i_1_n_1 ,\pos_r_reg[4]_i_1_n_2 ,\pos_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_r_reg[4]_i_1_n_4 ,\pos_r_reg[4]_i_1_n_5 ,\pos_r_reg[4]_i_1_n_6 ,\pos_r_reg[4]_i_1_n_7 }),
        .S(pos_r_reg[7:4]));
  FDRE \pos_r_reg[5] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[4]_i_1_n_6 ),
        .Q(pos_r_reg[5]),
        .R(pos_r));
  FDRE \pos_r_reg[6] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[4]_i_1_n_5 ),
        .Q(pos_r_reg[6]),
        .R(pos_r));
  FDRE \pos_r_reg[7] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[4]_i_1_n_4 ),
        .Q(pos_r_reg[7]),
        .R(pos_r));
  FDRE \pos_r_reg[8] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[8]_i_1_n_7 ),
        .Q(pos_r_reg[8]),
        .R(pos_r));
  CARRY4 \pos_r_reg[8]_i_1 
       (.CI(\pos_r_reg[4]_i_1_n_0 ),
        .CO({\NLW_pos_r_reg[8]_i_1_CO_UNCONNECTED [3],\pos_r_reg[8]_i_1_n_1 ,\pos_r_reg[8]_i_1_n_2 ,\pos_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pos_r_reg[8]_i_1_n_4 ,\pos_r_reg[8]_i_1_n_5 ,\pos_r_reg[8]_i_1_n_6 ,\pos_r_reg[8]_i_1_n_7 }),
        .S(pos_r_reg[11:8]));
  FDRE \pos_r_reg[9] 
       (.C(pclk),
        .CE(hist_equ_href_o),
        .D(\pos_r_reg[8]_i_1_n_6 ),
        .Q(pos_r_reg[9]),
        .R(pos_r));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram
   (ram0_q,
    S,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    pclk,
    cur_ram,
    hist_equ_href,
    cur_clr_done,
    Q,
    mem_reg_5,
    hist_sum_done,
    out_href,
    mem_reg_6,
    mem_reg_7,
    A,
    hist_sum_runn_0,
    ram1_q,
    O,
    mem_reg_8,
    mem_reg_9,
    mem_reg_10,
    mem_reg_11,
    mem_reg_12,
    mem_reg_13,
    out_data);
  output [22:0]ram0_q;
  output [2:0]S;
  output [3:0]mem_reg_0;
  output [3:0]mem_reg_1;
  output [3:0]mem_reg_2;
  output [3:0]mem_reg_3;
  output [3:0]mem_reg_4;
  input pclk;
  input cur_ram;
  input hist_equ_href;
  input cur_clr_done;
  input [0:0]Q;
  input mem_reg_5;
  input hist_sum_done;
  input out_href;
  input [7:0]mem_reg_6;
  input [7:0]mem_reg_7;
  input [22:0]A;
  input hist_sum_runn_0;
  input [22:0]ram1_q;
  input [1:0]O;
  input [3:0]mem_reg_8;
  input [3:0]mem_reg_9;
  input [3:0]mem_reg_10;
  input [3:0]mem_reg_11;
  input [3:0]mem_reg_12;
  input [7:0]mem_reg_13;
  input [7:0]out_data;

  wire [22:0]A;
  wire [1:0]O;
  wire [0:0]Q;
  wire [2:0]S;
  wire cur_clr_done;
  wire cur_ram;
  wire hist_equ_href;
  wire hist_sum_done;
  wire hist_sum_runn_0;
  wire [3:0]mem_reg_0;
  wire [3:0]mem_reg_1;
  wire [3:0]mem_reg_10;
  wire [3:0]mem_reg_11;
  wire [3:0]mem_reg_12;
  wire [7:0]mem_reg_13;
  wire [3:0]mem_reg_2;
  wire [3:0]mem_reg_3;
  wire [3:0]mem_reg_4;
  wire mem_reg_5;
  wire [7:0]mem_reg_6;
  wire [7:0]mem_reg_7;
  wire [3:0]mem_reg_8;
  wire [3:0]mem_reg_9;
  wire mem_reg_i_33__0_n_0;
  wire mem_reg_i_41__0_n_0;
  wire [7:0]out_data;
  wire out_href;
  wire pclk;
  wire [22:1]ram0_data;
  wire [22:0]ram0_q;
  wire [7:0]ram0_rdaddr;
  wire ram0_rden;
  wire [7:0]ram0_wraddr;
  wire [22:0]ram1_q;
  wire [15:7]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[0]_i_6 
       (.I0(ram0_q[3]),
        .I1(cur_ram),
        .I2(ram1_q[3]),
        .I3(A[3]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_0[3]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[0]_i_7 
       (.I0(ram0_q[2]),
        .I1(cur_ram),
        .I2(ram1_q[2]),
        .I3(A[2]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_0[2]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[0]_i_8 
       (.I0(ram0_q[1]),
        .I1(cur_ram),
        .I2(ram1_q[1]),
        .I3(A[1]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_0[1]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[0]_i_9 
       (.I0(ram0_q[0]),
        .I1(cur_ram),
        .I2(ram1_q[0]),
        .I3(A[0]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_0[0]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[12]_i_6 
       (.I0(ram0_q[15]),
        .I1(cur_ram),
        .I2(ram1_q[15]),
        .I3(A[15]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_3[3]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[12]_i_7 
       (.I0(ram0_q[14]),
        .I1(cur_ram),
        .I2(ram1_q[14]),
        .I3(A[14]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_3[2]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[12]_i_8 
       (.I0(ram0_q[13]),
        .I1(cur_ram),
        .I2(ram1_q[13]),
        .I3(A[13]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_3[1]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[12]_i_9 
       (.I0(ram0_q[12]),
        .I1(cur_ram),
        .I2(ram1_q[12]),
        .I3(A[12]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_3[0]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[16]_i_6 
       (.I0(ram0_q[19]),
        .I1(cur_ram),
        .I2(ram1_q[19]),
        .I3(A[19]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_4[3]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[16]_i_7 
       (.I0(ram0_q[18]),
        .I1(cur_ram),
        .I2(ram1_q[18]),
        .I3(A[18]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_4[2]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[16]_i_8 
       (.I0(ram0_q[17]),
        .I1(cur_ram),
        .I2(ram1_q[17]),
        .I3(A[17]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_4[1]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[16]_i_9 
       (.I0(ram0_q[16]),
        .I1(cur_ram),
        .I2(ram1_q[16]),
        .I3(A[16]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_4[0]));
  LUT5 #(
    .INIT(32'h48444888)) 
    \hist_sum_data_1[20]_i_4 
       (.I0(A[22]),
        .I1(hist_sum_runn_0),
        .I2(ram0_q[22]),
        .I3(cur_ram),
        .I4(ram1_q[22]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[20]_i_5 
       (.I0(ram0_q[21]),
        .I1(cur_ram),
        .I2(ram1_q[21]),
        .I3(A[21]),
        .I4(hist_sum_runn_0),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[20]_i_6 
       (.I0(ram0_q[20]),
        .I1(cur_ram),
        .I2(ram1_q[20]),
        .I3(A[20]),
        .I4(hist_sum_runn_0),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[4]_i_6 
       (.I0(ram0_q[7]),
        .I1(cur_ram),
        .I2(ram1_q[7]),
        .I3(A[7]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_1[3]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[4]_i_7 
       (.I0(ram0_q[6]),
        .I1(cur_ram),
        .I2(ram1_q[6]),
        .I3(A[6]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_1[2]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[4]_i_8 
       (.I0(ram0_q[5]),
        .I1(cur_ram),
        .I2(ram1_q[5]),
        .I3(A[5]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_1[1]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[4]_i_9 
       (.I0(ram0_q[4]),
        .I1(cur_ram),
        .I2(ram1_q[4]),
        .I3(A[4]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_1[0]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[8]_i_6 
       (.I0(ram0_q[11]),
        .I1(cur_ram),
        .I2(ram1_q[11]),
        .I3(A[11]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_2[3]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[8]_i_7 
       (.I0(ram0_q[10]),
        .I1(cur_ram),
        .I2(ram1_q[10]),
        .I3(A[10]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_2[2]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[8]_i_8 
       (.I0(ram0_q[9]),
        .I1(cur_ram),
        .I2(ram1_q[9]),
        .I3(A[9]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_2[1]));
  LUT5 #(
    .INIT(32'h47B80000)) 
    \hist_sum_data_1[8]_i_9 
       (.I0(ram0_q[8]),
        .I1(cur_ram),
        .I2(ram1_q[8]),
        .I3(A[8]),
        .I4(hist_sum_runn_0),
        .O(mem_reg_2[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d23" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d23" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "5888" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "22" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "22" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,ram0_rdaddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ram0_wraddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(pclk),
        .CLKBWRCLK(pclk),
        .DIADI({ram0_data[15:1],mem_reg_i_33__0_n_0}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ram0_data[22:16]}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(ram0_q[15:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[15:7],ram0_q[22:16]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(ram0_rden),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({mem_reg_i_41__0_n_0,mem_reg_i_41__0_n_0,mem_reg_i_41__0_n_0,mem_reg_i_41__0_n_0}));
  LUT3 #(
    .INIT(8'h74)) 
    mem_reg_i_1
       (.I0(hist_sum_done),
        .I1(cur_ram),
        .I2(out_href),
        .O(ram0_rden));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_i_10
       (.I0(mem_reg_6[7]),
        .I1(cur_clr_done),
        .I2(mem_reg_7[7]),
        .I3(cur_ram),
        .O(ram0_wraddr[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_i_11
       (.I0(mem_reg_6[6]),
        .I1(cur_clr_done),
        .I2(mem_reg_7[6]),
        .I3(cur_ram),
        .O(ram0_wraddr[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_i_12
       (.I0(mem_reg_6[5]),
        .I1(cur_clr_done),
        .I2(mem_reg_7[5]),
        .I3(cur_ram),
        .O(ram0_wraddr[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_i_13
       (.I0(mem_reg_6[4]),
        .I1(cur_clr_done),
        .I2(mem_reg_7[4]),
        .I3(cur_ram),
        .O(ram0_wraddr[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_i_14
       (.I0(mem_reg_6[3]),
        .I1(cur_clr_done),
        .I2(mem_reg_7[3]),
        .I3(cur_ram),
        .O(ram0_wraddr[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_i_15
       (.I0(mem_reg_6[2]),
        .I1(cur_clr_done),
        .I2(mem_reg_7[2]),
        .I3(cur_ram),
        .O(ram0_wraddr[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_i_16
       (.I0(mem_reg_6[1]),
        .I1(cur_clr_done),
        .I2(mem_reg_7[1]),
        .I3(cur_ram),
        .O(ram0_wraddr[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_i_17
       (.I0(mem_reg_6[0]),
        .I1(cur_clr_done),
        .I2(mem_reg_7[0]),
        .I3(cur_ram),
        .O(ram0_wraddr[0]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_18
       (.I0(mem_reg_9[2]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[15]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_19
       (.I0(mem_reg_9[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[14]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_20
       (.I0(mem_reg_9[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[13]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_21
       (.I0(mem_reg_10[3]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[12]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_22
       (.I0(mem_reg_10[2]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[11]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_23
       (.I0(mem_reg_10[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[10]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_24
       (.I0(mem_reg_10[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[9]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_25
       (.I0(mem_reg_11[3]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[8]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_26
       (.I0(mem_reg_11[2]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[7]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_27
       (.I0(mem_reg_11[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[6]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_28
       (.I0(mem_reg_11[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[5]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_29
       (.I0(mem_reg_12[3]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_2__0
       (.I0(mem_reg_13[7]),
        .I1(cur_ram),
        .I2(out_data[7]),
        .O(ram0_rdaddr[7]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_30
       (.I0(mem_reg_12[2]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[3]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_31
       (.I0(mem_reg_12[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[2]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_32
       (.I0(mem_reg_12[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[1]));
  LUT5 #(
    .INIT(32'h0020002A)) 
    mem_reg_i_33__0
       (.I0(cur_clr_done),
        .I1(Q),
        .I2(mem_reg_5),
        .I3(cur_ram),
        .I4(ram0_q[0]),
        .O(mem_reg_i_33__0_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_34
       (.I0(O[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[22]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_35
       (.I0(O[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[21]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_36
       (.I0(mem_reg_8[3]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[20]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_37
       (.I0(mem_reg_8[2]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[19]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_38
       (.I0(mem_reg_8[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[18]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_39
       (.I0(mem_reg_8[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_3__0
       (.I0(mem_reg_13[6]),
        .I1(cur_ram),
        .I2(out_data[6]),
        .O(ram0_rdaddr[6]));
  LUT3 #(
    .INIT(8'h08)) 
    mem_reg_i_40
       (.I0(mem_reg_9[3]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(ram0_data[16]));
  LUT3 #(
    .INIT(8'h45)) 
    mem_reg_i_41__0
       (.I0(cur_ram),
        .I1(hist_equ_href),
        .I2(cur_clr_done),
        .O(mem_reg_i_41__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_4__0
       (.I0(mem_reg_13[5]),
        .I1(cur_ram),
        .I2(out_data[5]),
        .O(ram0_rdaddr[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_5__0
       (.I0(mem_reg_13[4]),
        .I1(cur_ram),
        .I2(out_data[4]),
        .O(ram0_rdaddr[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_6__0
       (.I0(mem_reg_13[3]),
        .I1(cur_ram),
        .I2(out_data[3]),
        .O(ram0_rdaddr[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_7__0
       (.I0(mem_reg_13[2]),
        .I1(cur_ram),
        .I2(out_data[2]),
        .O(ram0_rdaddr[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_8__0
       (.I0(mem_reg_13[1]),
        .I1(cur_ram),
        .I2(out_data[1]),
        .O(ram0_rdaddr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_9__0
       (.I0(mem_reg_13[0]),
        .I1(cur_ram),
        .I2(out_data[0]),
        .O(ram0_rdaddr[0]));
endmodule

(* ORIG_REF_NAME = "simple_dp_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram_5
   (ram1_q,
    D,
    p_0_in__1,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    pclk,
    Q,
    cur_clr_done,
    mem_reg_6,
    cur_ram,
    \_inferred__1/i__carry__4 ,
    \cur_data_r_reg[0] ,
    ram0_q,
    hist_sum_runn_0,
    O,
    mem_reg_7,
    mem_reg_8,
    mem_reg_9,
    mem_reg_10,
    mem_reg_11,
    hist_equ_href,
    out_href,
    hist_sum_done,
    out_data,
    mem_reg_12,
    \hist_sum_data_1_reg[3] ,
    \hist_sum_data_1_reg[7] ,
    \hist_sum_data_1_reg[11] ,
    \hist_sum_data_1_reg[15] ,
    \hist_sum_data_1_reg[19] ,
    S);
  output [22:0]ram1_q;
  output [0:0]D;
  output [22:0]p_0_in__1;
  output [3:0]mem_reg_0;
  output [3:0]mem_reg_1;
  output [3:0]mem_reg_2;
  output [3:0]mem_reg_3;
  output [3:0]mem_reg_4;
  output [2:0]mem_reg_5;
  input pclk;
  input [7:0]Q;
  input cur_clr_done;
  input [7:0]mem_reg_6;
  input cur_ram;
  input [22:0]\_inferred__1/i__carry__4 ;
  input \cur_data_r_reg[0] ;
  input [22:0]ram0_q;
  input hist_sum_runn_0;
  input [1:0]O;
  input [3:0]mem_reg_7;
  input [3:0]mem_reg_8;
  input [3:0]mem_reg_9;
  input [3:0]mem_reg_10;
  input [3:0]mem_reg_11;
  input hist_equ_href;
  input out_href;
  input hist_sum_done;
  input [7:0]out_data;
  input [7:0]mem_reg_12;
  input [3:0]\hist_sum_data_1_reg[3] ;
  input [3:0]\hist_sum_data_1_reg[7] ;
  input [3:0]\hist_sum_data_1_reg[11] ;
  input [3:0]\hist_sum_data_1_reg[15] ;
  input [3:0]\hist_sum_data_1_reg[19] ;
  input [2:0]S;

  wire [0:0]D;
  wire [1:0]O;
  wire [7:0]Q;
  wire [2:0]S;
  wire [22:0]\_inferred__1/i__carry__4 ;
  wire cur_clr_done;
  wire \cur_data_r_reg[0] ;
  wire cur_ram;
  wire hist_equ_href;
  wire \hist_sum_data_1[0]_i_2_n_0 ;
  wire \hist_sum_data_1[0]_i_3_n_0 ;
  wire \hist_sum_data_1[0]_i_4_n_0 ;
  wire \hist_sum_data_1[0]_i_5_n_0 ;
  wire \hist_sum_data_1[12]_i_2_n_0 ;
  wire \hist_sum_data_1[12]_i_3_n_0 ;
  wire \hist_sum_data_1[12]_i_4_n_0 ;
  wire \hist_sum_data_1[12]_i_5_n_0 ;
  wire \hist_sum_data_1[16]_i_2_n_0 ;
  wire \hist_sum_data_1[16]_i_3_n_0 ;
  wire \hist_sum_data_1[16]_i_4_n_0 ;
  wire \hist_sum_data_1[16]_i_5_n_0 ;
  wire \hist_sum_data_1[20]_i_2_n_0 ;
  wire \hist_sum_data_1[20]_i_3_n_0 ;
  wire \hist_sum_data_1[4]_i_2_n_0 ;
  wire \hist_sum_data_1[4]_i_3_n_0 ;
  wire \hist_sum_data_1[4]_i_4_n_0 ;
  wire \hist_sum_data_1[4]_i_5_n_0 ;
  wire \hist_sum_data_1[8]_i_2_n_0 ;
  wire \hist_sum_data_1[8]_i_3_n_0 ;
  wire \hist_sum_data_1[8]_i_4_n_0 ;
  wire \hist_sum_data_1[8]_i_5_n_0 ;
  wire \hist_sum_data_1_reg[0]_i_1_n_0 ;
  wire \hist_sum_data_1_reg[0]_i_1_n_1 ;
  wire \hist_sum_data_1_reg[0]_i_1_n_2 ;
  wire \hist_sum_data_1_reg[0]_i_1_n_3 ;
  wire [3:0]\hist_sum_data_1_reg[11] ;
  wire \hist_sum_data_1_reg[12]_i_1_n_0 ;
  wire \hist_sum_data_1_reg[12]_i_1_n_1 ;
  wire \hist_sum_data_1_reg[12]_i_1_n_2 ;
  wire \hist_sum_data_1_reg[12]_i_1_n_3 ;
  wire [3:0]\hist_sum_data_1_reg[15] ;
  wire \hist_sum_data_1_reg[16]_i_1_n_0 ;
  wire \hist_sum_data_1_reg[16]_i_1_n_1 ;
  wire \hist_sum_data_1_reg[16]_i_1_n_2 ;
  wire \hist_sum_data_1_reg[16]_i_1_n_3 ;
  wire [3:0]\hist_sum_data_1_reg[19] ;
  wire \hist_sum_data_1_reg[20]_i_1_n_2 ;
  wire \hist_sum_data_1_reg[20]_i_1_n_3 ;
  wire [3:0]\hist_sum_data_1_reg[3] ;
  wire \hist_sum_data_1_reg[4]_i_1_n_0 ;
  wire \hist_sum_data_1_reg[4]_i_1_n_1 ;
  wire \hist_sum_data_1_reg[4]_i_1_n_2 ;
  wire \hist_sum_data_1_reg[4]_i_1_n_3 ;
  wire [3:0]\hist_sum_data_1_reg[7] ;
  wire \hist_sum_data_1_reg[8]_i_1_n_0 ;
  wire \hist_sum_data_1_reg[8]_i_1_n_1 ;
  wire \hist_sum_data_1_reg[8]_i_1_n_2 ;
  wire \hist_sum_data_1_reg[8]_i_1_n_3 ;
  wire hist_sum_done;
  wire hist_sum_runn_0;
  wire [3:0]mem_reg_0;
  wire [3:0]mem_reg_1;
  wire [3:0]mem_reg_10;
  wire [3:0]mem_reg_11;
  wire [7:0]mem_reg_12;
  wire [3:0]mem_reg_2;
  wire [3:0]mem_reg_3;
  wire [3:0]mem_reg_4;
  wire [2:0]mem_reg_5;
  wire [7:0]mem_reg_6;
  wire [3:0]mem_reg_7;
  wire [3:0]mem_reg_8;
  wire [3:0]mem_reg_9;
  wire mem_reg_i_10__0_n_0;
  wire mem_reg_i_11__0_n_0;
  wire mem_reg_i_12__1_n_0;
  wire mem_reg_i_13__1_n_0;
  wire mem_reg_i_14__0_n_0;
  wire mem_reg_i_15__0_n_0;
  wire mem_reg_i_16__0_n_0;
  wire mem_reg_i_17__0_n_0;
  wire mem_reg_i_18__0_n_0;
  wire mem_reg_i_19__0_n_0;
  wire mem_reg_i_20__0_n_0;
  wire mem_reg_i_21__0_n_0;
  wire mem_reg_i_22__0_n_0;
  wire mem_reg_i_23__0_n_0;
  wire mem_reg_i_24__0_n_0;
  wire mem_reg_i_25__0_n_0;
  wire mem_reg_i_26__0_n_0;
  wire mem_reg_i_27__0_n_0;
  wire mem_reg_i_28__0_n_0;
  wire mem_reg_i_29__0_n_0;
  wire mem_reg_i_30__0_n_0;
  wire mem_reg_i_31__0_n_0;
  wire mem_reg_i_32__0_n_0;
  wire mem_reg_i_34__0_n_0;
  wire mem_reg_i_35__0_n_0;
  wire mem_reg_i_36__0_n_0;
  wire mem_reg_i_37__0_n_0;
  wire mem_reg_i_38__0_n_0;
  wire mem_reg_i_39__0_n_0;
  wire mem_reg_i_40__0_n_0;
  wire [7:0]out_data;
  wire out_href;
  wire [22:0]p_0_in__1;
  wire pclk;
  wire [22:0]ram0_q;
  wire [0:0]ram1_data;
  wire [22:0]ram1_q;
  wire [7:0]ram1_rdaddr;
  wire ram1_rden;
  wire ram1_wren;
  wire [3:2]\NLW_hist_sum_data_1_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_hist_sum_data_1_reg[20]_i_1_O_UNCONNECTED ;
  wire [15:7]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'h202A2020202A2A2A)) 
    \cur_data_r[0]_i_1 
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__4 [0]),
        .I2(\cur_data_r_reg[0] ),
        .I3(ram1_q[0]),
        .I4(cur_ram),
        .I5(ram0_q[0]),
        .O(D));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[0]_i_2 
       (.I0(ram1_q[3]),
        .I1(cur_ram),
        .I2(ram0_q[3]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[0]_i_3 
       (.I0(ram1_q[2]),
        .I1(cur_ram),
        .I2(ram0_q[2]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[0]_i_4 
       (.I0(ram1_q[1]),
        .I1(cur_ram),
        .I2(ram0_q[1]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[0]_i_5 
       (.I0(ram1_q[0]),
        .I1(cur_ram),
        .I2(ram0_q[0]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[12]_i_2 
       (.I0(ram1_q[15]),
        .I1(cur_ram),
        .I2(ram0_q[15]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[12]_i_3 
       (.I0(ram1_q[14]),
        .I1(cur_ram),
        .I2(ram0_q[14]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[12]_i_4 
       (.I0(ram1_q[13]),
        .I1(cur_ram),
        .I2(ram0_q[13]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[12]_i_5 
       (.I0(ram1_q[12]),
        .I1(cur_ram),
        .I2(ram0_q[12]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[16]_i_2 
       (.I0(ram1_q[19]),
        .I1(cur_ram),
        .I2(ram0_q[19]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[16]_i_3 
       (.I0(ram1_q[18]),
        .I1(cur_ram),
        .I2(ram0_q[18]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[16]_i_4 
       (.I0(ram1_q[17]),
        .I1(cur_ram),
        .I2(ram0_q[17]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[16]_i_5 
       (.I0(ram1_q[16]),
        .I1(cur_ram),
        .I2(ram0_q[16]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[20]_i_2 
       (.I0(ram1_q[21]),
        .I1(cur_ram),
        .I2(ram0_q[21]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[20]_i_3 
       (.I0(ram1_q[20]),
        .I1(cur_ram),
        .I2(ram0_q[20]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[4]_i_2 
       (.I0(ram1_q[7]),
        .I1(cur_ram),
        .I2(ram0_q[7]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[4]_i_3 
       (.I0(ram1_q[6]),
        .I1(cur_ram),
        .I2(ram0_q[6]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[4]_i_4 
       (.I0(ram1_q[5]),
        .I1(cur_ram),
        .I2(ram0_q[5]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[4]_i_5 
       (.I0(ram1_q[4]),
        .I1(cur_ram),
        .I2(ram0_q[4]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[8]_i_2 
       (.I0(ram1_q[11]),
        .I1(cur_ram),
        .I2(ram0_q[11]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[8]_i_3 
       (.I0(ram1_q[10]),
        .I1(cur_ram),
        .I2(ram0_q[10]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[8]_i_4 
       (.I0(ram1_q[9]),
        .I1(cur_ram),
        .I2(ram0_q[9]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \hist_sum_data_1[8]_i_5 
       (.I0(ram1_q[8]),
        .I1(cur_ram),
        .I2(ram0_q[8]),
        .I3(hist_sum_runn_0),
        .O(\hist_sum_data_1[8]_i_5_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \hist_sum_data_1_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\hist_sum_data_1_reg[0]_i_1_n_0 ,\hist_sum_data_1_reg[0]_i_1_n_1 ,\hist_sum_data_1_reg[0]_i_1_n_2 ,\hist_sum_data_1_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_1[0]_i_2_n_0 ,\hist_sum_data_1[0]_i_3_n_0 ,\hist_sum_data_1[0]_i_4_n_0 ,\hist_sum_data_1[0]_i_5_n_0 }),
        .O(mem_reg_0),
        .S(\hist_sum_data_1_reg[3] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \hist_sum_data_1_reg[12]_i_1 
       (.CI(\hist_sum_data_1_reg[8]_i_1_n_0 ),
        .CO({\hist_sum_data_1_reg[12]_i_1_n_0 ,\hist_sum_data_1_reg[12]_i_1_n_1 ,\hist_sum_data_1_reg[12]_i_1_n_2 ,\hist_sum_data_1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_1[12]_i_2_n_0 ,\hist_sum_data_1[12]_i_3_n_0 ,\hist_sum_data_1[12]_i_4_n_0 ,\hist_sum_data_1[12]_i_5_n_0 }),
        .O(mem_reg_3),
        .S(\hist_sum_data_1_reg[15] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \hist_sum_data_1_reg[16]_i_1 
       (.CI(\hist_sum_data_1_reg[12]_i_1_n_0 ),
        .CO({\hist_sum_data_1_reg[16]_i_1_n_0 ,\hist_sum_data_1_reg[16]_i_1_n_1 ,\hist_sum_data_1_reg[16]_i_1_n_2 ,\hist_sum_data_1_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_1[16]_i_2_n_0 ,\hist_sum_data_1[16]_i_3_n_0 ,\hist_sum_data_1[16]_i_4_n_0 ,\hist_sum_data_1[16]_i_5_n_0 }),
        .O(mem_reg_4),
        .S(\hist_sum_data_1_reg[19] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \hist_sum_data_1_reg[20]_i_1 
       (.CI(\hist_sum_data_1_reg[16]_i_1_n_0 ),
        .CO({\NLW_hist_sum_data_1_reg[20]_i_1_CO_UNCONNECTED [3:2],\hist_sum_data_1_reg[20]_i_1_n_2 ,\hist_sum_data_1_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\hist_sum_data_1[20]_i_2_n_0 ,\hist_sum_data_1[20]_i_3_n_0 }),
        .O({\NLW_hist_sum_data_1_reg[20]_i_1_O_UNCONNECTED [3],mem_reg_5}),
        .S({1'b0,S}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \hist_sum_data_1_reg[4]_i_1 
       (.CI(\hist_sum_data_1_reg[0]_i_1_n_0 ),
        .CO({\hist_sum_data_1_reg[4]_i_1_n_0 ,\hist_sum_data_1_reg[4]_i_1_n_1 ,\hist_sum_data_1_reg[4]_i_1_n_2 ,\hist_sum_data_1_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_1[4]_i_2_n_0 ,\hist_sum_data_1[4]_i_3_n_0 ,\hist_sum_data_1[4]_i_4_n_0 ,\hist_sum_data_1[4]_i_5_n_0 }),
        .O(mem_reg_1),
        .S(\hist_sum_data_1_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \hist_sum_data_1_reg[8]_i_1 
       (.CI(\hist_sum_data_1_reg[4]_i_1_n_0 ),
        .CO({\hist_sum_data_1_reg[8]_i_1_n_0 ,\hist_sum_data_1_reg[8]_i_1_n_1 ,\hist_sum_data_1_reg[8]_i_1_n_2 ,\hist_sum_data_1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_1[8]_i_2_n_0 ,\hist_sum_data_1[8]_i_3_n_0 ,\hist_sum_data_1[8]_i_4_n_0 ,\hist_sum_data_1[8]_i_5_n_0 }),
        .O(mem_reg_2),
        .S(\hist_sum_data_1_reg[11] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__0_i_1
       (.I0(\_inferred__1/i__carry__4 [8]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[8]),
        .I3(cur_ram),
        .I4(ram0_q[8]),
        .O(p_0_in__1[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__0_i_2
       (.I0(\_inferred__1/i__carry__4 [7]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[7]),
        .I3(cur_ram),
        .I4(ram0_q[7]),
        .O(p_0_in__1[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__0_i_3
       (.I0(\_inferred__1/i__carry__4 [6]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[6]),
        .I3(cur_ram),
        .I4(ram0_q[6]),
        .O(p_0_in__1[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__0_i_4
       (.I0(\_inferred__1/i__carry__4 [5]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[5]),
        .I3(cur_ram),
        .I4(ram0_q[5]),
        .O(p_0_in__1[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__1_i_1
       (.I0(\_inferred__1/i__carry__4 [12]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[12]),
        .I3(cur_ram),
        .I4(ram0_q[12]),
        .O(p_0_in__1[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__1_i_2
       (.I0(\_inferred__1/i__carry__4 [11]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[11]),
        .I3(cur_ram),
        .I4(ram0_q[11]),
        .O(p_0_in__1[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__1_i_3
       (.I0(\_inferred__1/i__carry__4 [10]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[10]),
        .I3(cur_ram),
        .I4(ram0_q[10]),
        .O(p_0_in__1[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__1_i_4
       (.I0(\_inferred__1/i__carry__4 [9]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[9]),
        .I3(cur_ram),
        .I4(ram0_q[9]),
        .O(p_0_in__1[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__2_i_1
       (.I0(\_inferred__1/i__carry__4 [16]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[16]),
        .I3(cur_ram),
        .I4(ram0_q[16]),
        .O(p_0_in__1[16]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__2_i_2
       (.I0(\_inferred__1/i__carry__4 [15]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[15]),
        .I3(cur_ram),
        .I4(ram0_q[15]),
        .O(p_0_in__1[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__2_i_3
       (.I0(\_inferred__1/i__carry__4 [14]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[14]),
        .I3(cur_ram),
        .I4(ram0_q[14]),
        .O(p_0_in__1[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__2_i_4
       (.I0(\_inferred__1/i__carry__4 [13]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[13]),
        .I3(cur_ram),
        .I4(ram0_q[13]),
        .O(p_0_in__1[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__3_i_1
       (.I0(\_inferred__1/i__carry__4 [20]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[20]),
        .I3(cur_ram),
        .I4(ram0_q[20]),
        .O(p_0_in__1[20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__3_i_2
       (.I0(\_inferred__1/i__carry__4 [19]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[19]),
        .I3(cur_ram),
        .I4(ram0_q[19]),
        .O(p_0_in__1[19]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__3_i_3
       (.I0(\_inferred__1/i__carry__4 [18]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[18]),
        .I3(cur_ram),
        .I4(ram0_q[18]),
        .O(p_0_in__1[18]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__3_i_4
       (.I0(\_inferred__1/i__carry__4 [17]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[17]),
        .I3(cur_ram),
        .I4(ram0_q[17]),
        .O(p_0_in__1[17]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__4_i_1
       (.I0(\_inferred__1/i__carry__4 [22]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[22]),
        .I3(cur_ram),
        .I4(ram0_q[22]),
        .O(p_0_in__1[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__4_i_2
       (.I0(\_inferred__1/i__carry__4 [21]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[21]),
        .I3(cur_ram),
        .I4(ram0_q[21]),
        .O(p_0_in__1[21]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_1
       (.I0(\_inferred__1/i__carry__4 [0]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[0]),
        .I3(cur_ram),
        .I4(ram0_q[0]),
        .O(p_0_in__1[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_2
       (.I0(\_inferred__1/i__carry__4 [4]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[4]),
        .I3(cur_ram),
        .I4(ram0_q[4]),
        .O(p_0_in__1[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_3
       (.I0(\_inferred__1/i__carry__4 [3]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[3]),
        .I3(cur_ram),
        .I4(ram0_q[3]),
        .O(p_0_in__1[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_4
       (.I0(\_inferred__1/i__carry__4 [2]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[2]),
        .I3(cur_ram),
        .I4(ram0_q[2]),
        .O(p_0_in__1[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry_i_5
       (.I0(\_inferred__1/i__carry__4 [1]),
        .I1(\cur_data_r_reg[0] ),
        .I2(ram1_q[1]),
        .I3(cur_ram),
        .I4(ram0_q[1]),
        .O(p_0_in__1[1]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d23" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d23" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "5888" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "22" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "22" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,ram1_rdaddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,mem_reg_i_10__0_n_0,mem_reg_i_11__0_n_0,mem_reg_i_12__1_n_0,mem_reg_i_13__1_n_0,mem_reg_i_14__0_n_0,mem_reg_i_15__0_n_0,mem_reg_i_16__0_n_0,mem_reg_i_17__0_n_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(pclk),
        .CLKBWRCLK(pclk),
        .DIADI({mem_reg_i_18__0_n_0,mem_reg_i_19__0_n_0,mem_reg_i_20__0_n_0,mem_reg_i_21__0_n_0,mem_reg_i_22__0_n_0,mem_reg_i_23__0_n_0,mem_reg_i_24__0_n_0,mem_reg_i_25__0_n_0,mem_reg_i_26__0_n_0,mem_reg_i_27__0_n_0,mem_reg_i_28__0_n_0,mem_reg_i_29__0_n_0,mem_reg_i_30__0_n_0,mem_reg_i_31__0_n_0,mem_reg_i_32__0_n_0,ram1_data}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_i_34__0_n_0,mem_reg_i_35__0_n_0,mem_reg_i_36__0_n_0,mem_reg_i_37__0_n_0,mem_reg_i_38__0_n_0,mem_reg_i_39__0_n_0,mem_reg_i_40__0_n_0}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(ram1_q[15:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[15:7],ram1_q[22:16]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(ram1_rden),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({ram1_wren,ram1_wren,ram1_wren,ram1_wren}));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_10__0
       (.I0(Q[7]),
        .I1(cur_clr_done),
        .I2(mem_reg_6[7]),
        .I3(cur_ram),
        .O(mem_reg_i_10__0_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_11__0
       (.I0(Q[6]),
        .I1(cur_clr_done),
        .I2(mem_reg_6[6]),
        .I3(cur_ram),
        .O(mem_reg_i_11__0_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_12__1
       (.I0(Q[5]),
        .I1(cur_clr_done),
        .I2(mem_reg_6[5]),
        .I3(cur_ram),
        .O(mem_reg_i_12__1_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_13__1
       (.I0(Q[4]),
        .I1(cur_clr_done),
        .I2(mem_reg_6[4]),
        .I3(cur_ram),
        .O(mem_reg_i_13__1_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_14__0
       (.I0(Q[3]),
        .I1(cur_clr_done),
        .I2(mem_reg_6[3]),
        .I3(cur_ram),
        .O(mem_reg_i_14__0_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_15__0
       (.I0(Q[2]),
        .I1(cur_clr_done),
        .I2(mem_reg_6[2]),
        .I3(cur_ram),
        .O(mem_reg_i_15__0_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_16__0
       (.I0(Q[1]),
        .I1(cur_clr_done),
        .I2(mem_reg_6[1]),
        .I3(cur_ram),
        .O(mem_reg_i_16__0_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    mem_reg_i_17__0
       (.I0(Q[0]),
        .I1(cur_clr_done),
        .I2(mem_reg_6[0]),
        .I3(cur_ram),
        .O(mem_reg_i_17__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_18__0
       (.I0(mem_reg_8[2]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_18__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_19__0
       (.I0(mem_reg_8[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_19__0_n_0));
  LUT3 #(
    .INIT(8'h8B)) 
    mem_reg_i_1__0
       (.I0(out_href),
        .I1(cur_ram),
        .I2(hist_sum_done),
        .O(ram1_rden));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_2
       (.I0(out_data[7]),
        .I1(cur_ram),
        .I2(mem_reg_12[7]),
        .O(ram1_rdaddr[7]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_20__0
       (.I0(mem_reg_8[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_20__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_21__0
       (.I0(mem_reg_9[3]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_21__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_22__0
       (.I0(mem_reg_9[2]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_22__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_23__0
       (.I0(mem_reg_9[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_23__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_24__0
       (.I0(mem_reg_9[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_24__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_25__0
       (.I0(mem_reg_10[3]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_25__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_26__0
       (.I0(mem_reg_10[2]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_26__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_27__0
       (.I0(mem_reg_10[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_27__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_28__0
       (.I0(mem_reg_10[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_28__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_29__0
       (.I0(mem_reg_11[3]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_29__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_3
       (.I0(out_data[6]),
        .I1(cur_ram),
        .I2(mem_reg_12[6]),
        .O(ram1_rdaddr[6]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_30__0
       (.I0(mem_reg_11[2]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_30__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_31__0
       (.I0(mem_reg_11[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_31__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_32__0
       (.I0(mem_reg_11[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_32__0_n_0));
  LUT5 #(
    .INIT(32'h202A0000)) 
    mem_reg_i_33
       (.I0(cur_clr_done),
        .I1(\_inferred__1/i__carry__4 [0]),
        .I2(\cur_data_r_reg[0] ),
        .I3(ram1_q[0]),
        .I4(cur_ram),
        .O(ram1_data));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_34__0
       (.I0(O[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_34__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_35__0
       (.I0(O[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_35__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_36__0
       (.I0(mem_reg_7[3]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_36__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_37__0
       (.I0(mem_reg_7[2]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_37__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_38__0
       (.I0(mem_reg_7[1]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_38__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_39__0
       (.I0(mem_reg_7[0]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_39__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_4
       (.I0(out_data[5]),
        .I1(cur_ram),
        .I2(mem_reg_12[5]),
        .O(ram1_rdaddr[5]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_40__0
       (.I0(mem_reg_8[3]),
        .I1(cur_clr_done),
        .I2(cur_ram),
        .O(mem_reg_i_40__0_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    mem_reg_i_41
       (.I0(cur_ram),
        .I1(hist_equ_href),
        .I2(cur_clr_done),
        .O(ram1_wren));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_5
       (.I0(out_data[4]),
        .I1(cur_ram),
        .I2(mem_reg_12[4]),
        .O(ram1_rdaddr[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_6
       (.I0(out_data[3]),
        .I1(cur_ram),
        .I2(mem_reg_12[3]),
        .O(ram1_rdaddr[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_7
       (.I0(out_data[2]),
        .I1(cur_ram),
        .I2(mem_reg_12[2]),
        .O(ram1_rdaddr[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_8
       (.I0(out_data[1]),
        .I1(cur_ram),
        .I2(mem_reg_12[1]),
        .O(ram1_rdaddr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_9
       (.I0(out_data[0]),
        .I1(cur_ram),
        .I2(mem_reg_12[0]),
        .O(ram1_rdaddr[0]));
endmodule

(* ORIG_REF_NAME = "simple_dp_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized0
   (D,
    pclk,
    hist_sum_runn_5,
    out_href,
    ADDRARDADDR,
    out_data,
    Q,
    hist_equ_href,
    s_hist_equ_en);
  output [7:0]D;
  input pclk;
  input hist_sum_runn_5;
  input out_href;
  input [7:0]ADDRARDADDR;
  input [7:0]out_data;
  input [7:0]Q;
  input hist_equ_href;
  input s_hist_equ_en;

  wire [7:0]ADDRARDADDR;
  wire [7:0]D;
  wire [7:0]Q;
  wire hist_equ_href;
  wire [7:0]hist_q;
  wire hist_sum_runn_5;
  wire [7:0]out_data;
  wire out_href;
  wire pclk;
  wire s_hist_equ_en;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[16]_i_1 
       (.I0(hist_equ_href),
        .I1(hist_q[0]),
        .I2(out_data[0]),
        .I3(s_hist_equ_en),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[17]_i_1 
       (.I0(hist_equ_href),
        .I1(hist_q[1]),
        .I2(out_data[1]),
        .I3(s_hist_equ_en),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[18]_i_1 
       (.I0(hist_equ_href),
        .I1(hist_q[2]),
        .I2(out_data[2]),
        .I3(s_hist_equ_en),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[19]_i_1 
       (.I0(hist_equ_href),
        .I1(hist_q[3]),
        .I2(out_data[3]),
        .I3(s_hist_equ_en),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[20]_i_1 
       (.I0(hist_equ_href),
        .I1(hist_q[4]),
        .I2(out_data[4]),
        .I3(s_hist_equ_en),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[21]_i_1 
       (.I0(hist_equ_href),
        .I1(hist_q[5]),
        .I2(out_data[5]),
        .I3(s_hist_equ_en),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[22]_i_1 
       (.I0(hist_equ_href),
        .I1(hist_q[6]),
        .I2(out_data[6]),
        .I3(s_hist_equ_en),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[23]_i_1 
       (.I0(hist_equ_href),
        .I1(hist_q[7]),
        .I2(out_data[7]),
        .I3(s_hist_equ_en),
        .O(D[7]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,out_data,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(pclk),
        .CLKBWRCLK(pclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[15:8],hist_q}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(hist_sum_runn_5),
        .ENBWREN(out_href),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "simple_dp_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1
   (D,
    \pos_r_reg[10] ,
    pclk,
    hist_equ_href_o,
    ADDRBWRADDR,
    Q,
    out,
    mem_reg_0);
  output [7:0]D;
  output [2:0]\pos_r_reg[10] ;
  input pclk;
  input hist_equ_href_o;
  input [8:0]ADDRBWRADDR;
  input [7:0]Q;
  input [2:0]out;
  input mem_reg_0;

  wire [8:0]ADDRBWRADDR;
  wire [7:0]D;
  wire [7:0]Q;
  wire hist_equ_href_o;
  wire mem_reg_0;
  wire [2:0]out;
  wire pclk;
  wire [2:0]\pos_r_reg[10] ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "20472" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
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
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,ADDRBWRADDR[8],\pos_r_reg[10] [2:1],ADDRBWRADDR[7:0],\pos_r_reg[10] [0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR[8],\pos_r_reg[10] [2:1],ADDRBWRADDR[7:0],\pos_r_reg[10] [0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(pclk),
        .CLKBWRCLK(pclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],D}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(hist_equ_href_o),
        .ENBWREN(hist_equ_href_o),
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
        .WEA({hist_equ_href_o,hist_equ_href_o,hist_equ_href_o,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h0100FF00)) 
    mem_reg_i_11__1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(mem_reg_0),
        .I3(out[0]),
        .I4(ADDRBWRADDR[8]),
        .O(\pos_r_reg[10] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_1__1
       (.I0(out[2]),
        .I1(ADDRBWRADDR[8]),
        .O(\pos_r_reg[10] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_2__1
       (.I0(out[1]),
        .I1(ADDRBWRADDR[8]),
        .O(\pos_r_reg[10] [1]));
endmodule

(* ORIG_REF_NAME = "simple_dp_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized1_4
   (mem_reg_0,
    ADDRBWRADDR,
    \pos_r_reg[3] ,
    pclk,
    hist_equ_href_o,
    out,
    mem_reg_1,
    D);
  output [7:0]mem_reg_0;
  output [7:0]ADDRBWRADDR;
  output \pos_r_reg[3] ;
  input pclk;
  input hist_equ_href_o;
  input [11:0]out;
  input [2:0]mem_reg_1;
  input [7:0]D;

  wire [7:0]ADDRBWRADDR;
  wire [7:0]D;
  wire hist_equ_href_o;
  wire [7:0]mem_reg_0;
  wire [2:0]mem_reg_1;
  wire mem_reg_i_13__0_n_0;
  wire [11:0]out;
  wire pclk;
  wire \pos_r_reg[3] ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "20472" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
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
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,out[11],mem_reg_1[2:1],ADDRBWRADDR,mem_reg_1[0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out[11],mem_reg_1[2:1],ADDRBWRADDR,mem_reg_1[0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(pclk),
        .CLKBWRCLK(pclk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],mem_reg_0}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(hist_equ_href_o),
        .ENBWREN(hist_equ_href_o),
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
        .WEA({hist_equ_href_o,hist_equ_href_o,hist_equ_href_o,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEE0000)) 
    mem_reg_i_10__1
       (.I0(out[9]),
        .I1(out[10]),
        .I2(\pos_r_reg[3] ),
        .I3(out[0]),
        .I4(out[11]),
        .I5(out[1]),
        .O(ADDRBWRADDR[0]));
  LUT5 #(
    .INIT(32'h00008000)) 
    mem_reg_i_12__0
       (.I0(out[3]),
        .I1(out[4]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(mem_reg_i_13__0_n_0),
        .O(\pos_r_reg[3] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    mem_reg_i_13__0
       (.I0(out[6]),
        .I1(out[5]),
        .I2(out[8]),
        .I3(out[7]),
        .O(mem_reg_i_13__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEE0000)) 
    mem_reg_i_3__1
       (.I0(out[9]),
        .I1(out[10]),
        .I2(\pos_r_reg[3] ),
        .I3(out[0]),
        .I4(out[11]),
        .I5(out[8]),
        .O(ADDRBWRADDR[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEE0000)) 
    mem_reg_i_4__1
       (.I0(out[9]),
        .I1(out[10]),
        .I2(\pos_r_reg[3] ),
        .I3(out[0]),
        .I4(out[11]),
        .I5(out[7]),
        .O(ADDRBWRADDR[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEE0000)) 
    mem_reg_i_5__1
       (.I0(out[9]),
        .I1(out[10]),
        .I2(\pos_r_reg[3] ),
        .I3(out[0]),
        .I4(out[11]),
        .I5(out[6]),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEE0000)) 
    mem_reg_i_6__1
       (.I0(out[9]),
        .I1(out[10]),
        .I2(\pos_r_reg[3] ),
        .I3(out[0]),
        .I4(out[11]),
        .I5(out[5]),
        .O(ADDRBWRADDR[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEE0000)) 
    mem_reg_i_7__1
       (.I0(out[9]),
        .I1(out[10]),
        .I2(\pos_r_reg[3] ),
        .I3(out[0]),
        .I4(out[11]),
        .I5(out[4]),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEE0000)) 
    mem_reg_i_8__1
       (.I0(out[9]),
        .I1(out[10]),
        .I2(\pos_r_reg[3] ),
        .I3(out[0]),
        .I4(out[11]),
        .I5(out[3]),
        .O(ADDRBWRADDR[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEE0000)) 
    mem_reg_i_9__1
       (.I0(out[9]),
        .I1(out[10]),
        .I2(\pos_r_reg[3] ),
        .I3(out[0]),
        .I4(out[11]),
        .I5(out[2]),
        .O(ADDRBWRADDR[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux
   (crop_href_o,
    out_vsync,
    E,
    Q,
    in_href,
    pclk,
    \data_reg_reg[0]_0 ,
    vsync_reg_reg_0,
    prev_vsync,
    prev_href,
    D);
  output crop_href_o;
  output out_vsync;
  output [0:0]E;
  output [23:0]Q;
  input in_href;
  input pclk;
  input \data_reg_reg[0]_0 ;
  input vsync_reg_reg_0;
  input prev_vsync;
  input prev_href;
  input [23:0]D;

  wire [23:0]D;
  wire [0:0]E;
  wire [23:0]Q;
  wire crop_href_o;
  wire \data_reg_reg[0]_0 ;
  wire in_href;
  wire out_vsync;
  wire pclk;
  wire prev_href;
  wire prev_vsync;
  wire vsync_reg_reg_0;

  FDCE \data_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \data_reg_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \data_reg_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \data_reg_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \data_reg_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \data_reg_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \data_reg_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \data_reg_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \data_reg_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \data_reg_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \data_reg_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \data_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \data_reg_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \data_reg_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \data_reg_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \data_reg_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \data_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \data_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \data_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \data_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \data_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \data_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \data_reg_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \data_reg_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[9]),
        .Q(Q[9]));
  FDCE href_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_href),
        .Q(crop_href_o));
  LUT4 #(
    .INIT(16'h4F44)) 
    \line_cnt[3]_i_1 
       (.I0(out_vsync),
        .I1(prev_vsync),
        .I2(crop_href_o),
        .I3(prev_href),
        .O(E));
  FDCE vsync_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(vsync_reg_reg_0),
        .Q(out_vsync));
endmodule

(* ORIG_REF_NAME = "vid_mux" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_0
   (hist_equ_href_o,
    hist_equ_vsync_o,
    D,
    Q,
    in_href,
    pclk,
    \data_reg_reg[0]_0 ,
    in_vsync,
    s_sobel_en,
    \data_reg_reg[23]_0 );
  output hist_equ_href_o;
  output hist_equ_vsync_o;
  output [15:0]D;
  output [7:0]Q;
  input in_href;
  input pclk;
  input \data_reg_reg[0]_0 ;
  input in_vsync;
  input s_sobel_en;
  input [23:0]\data_reg_reg[23]_0 ;

  wire [15:0]D;
  wire [7:0]Q;
  wire \data_reg_reg[0]_0 ;
  wire [23:0]\data_reg_reg[23]_0 ;
  wire \data_reg_reg_n_0_[0] ;
  wire \data_reg_reg_n_0_[1] ;
  wire \data_reg_reg_n_0_[2] ;
  wire \data_reg_reg_n_0_[3] ;
  wire \data_reg_reg_n_0_[4] ;
  wire \data_reg_reg_n_0_[5] ;
  wire \data_reg_reg_n_0_[6] ;
  wire \data_reg_reg_n_0_[7] ;
  wire hist_equ_href_o;
  wire [7:0]hist_equ_u_o;
  wire hist_equ_vsync_o;
  wire in_href;
  wire in_vsync;
  wire pclk;
  wire s_sobel_en;

  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[0]_i_1__2 
       (.I0(\data_reg_reg_n_0_[0] ),
        .I1(s_sobel_en),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[10]_i_1__2 
       (.I0(hist_equ_u_o[2]),
        .I1(s_sobel_en),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[11]_i_1__2 
       (.I0(hist_equ_u_o[3]),
        .I1(s_sobel_en),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[12]_i_1__2 
       (.I0(hist_equ_u_o[4]),
        .I1(s_sobel_en),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[13]_i_1__2 
       (.I0(hist_equ_u_o[5]),
        .I1(s_sobel_en),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[14]_i_1__2 
       (.I0(hist_equ_u_o[6]),
        .I1(s_sobel_en),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_reg[15]_i_1__2 
       (.I0(hist_equ_u_o[7]),
        .I1(s_sobel_en),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[1]_i_1__2 
       (.I0(\data_reg_reg_n_0_[1] ),
        .I1(s_sobel_en),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[2]_i_1__2 
       (.I0(\data_reg_reg_n_0_[2] ),
        .I1(s_sobel_en),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[3]_i_1__2 
       (.I0(\data_reg_reg_n_0_[3] ),
        .I1(s_sobel_en),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[4]_i_1__2 
       (.I0(\data_reg_reg_n_0_[4] ),
        .I1(s_sobel_en),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[5]_i_1__2 
       (.I0(\data_reg_reg_n_0_[5] ),
        .I1(s_sobel_en),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[6]_i_1__2 
       (.I0(\data_reg_reg_n_0_[6] ),
        .I1(s_sobel_en),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_reg[7]_i_1__2 
       (.I0(\data_reg_reg_n_0_[7] ),
        .I1(s_sobel_en),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[8]_i_1__2 
       (.I0(hist_equ_u_o[0]),
        .I1(s_sobel_en),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg[9]_i_1__2 
       (.I0(hist_equ_u_o[1]),
        .I1(s_sobel_en),
        .O(D[9]));
  FDCE \data_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [0]),
        .Q(\data_reg_reg_n_0_[0] ));
  FDCE \data_reg_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [10]),
        .Q(hist_equ_u_o[2]));
  FDCE \data_reg_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [11]),
        .Q(hist_equ_u_o[3]));
  FDCE \data_reg_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [12]),
        .Q(hist_equ_u_o[4]));
  FDCE \data_reg_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [13]),
        .Q(hist_equ_u_o[5]));
  FDCE \data_reg_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [14]),
        .Q(hist_equ_u_o[6]));
  FDCE \data_reg_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [15]),
        .Q(hist_equ_u_o[7]));
  FDCE \data_reg_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [16]),
        .Q(Q[0]));
  FDCE \data_reg_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [17]),
        .Q(Q[1]));
  FDCE \data_reg_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [18]),
        .Q(Q[2]));
  FDCE \data_reg_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [19]),
        .Q(Q[3]));
  FDCE \data_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [1]),
        .Q(\data_reg_reg_n_0_[1] ));
  FDCE \data_reg_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [20]),
        .Q(Q[4]));
  FDCE \data_reg_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [21]),
        .Q(Q[5]));
  FDCE \data_reg_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [22]),
        .Q(Q[6]));
  FDCE \data_reg_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [23]),
        .Q(Q[7]));
  FDCE \data_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [2]),
        .Q(\data_reg_reg_n_0_[2] ));
  FDCE \data_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [3]),
        .Q(\data_reg_reg_n_0_[3] ));
  FDCE \data_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [4]),
        .Q(\data_reg_reg_n_0_[4] ));
  FDCE \data_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [5]),
        .Q(\data_reg_reg_n_0_[5] ));
  FDCE \data_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [6]),
        .Q(\data_reg_reg_n_0_[6] ));
  FDCE \data_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [7]),
        .Q(\data_reg_reg_n_0_[7] ));
  FDCE \data_reg_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [8]),
        .Q(hist_equ_u_o[0]));
  FDCE \data_reg_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(\data_reg_reg[23]_0 [9]),
        .Q(hist_equ_u_o[1]));
  FDCE href_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_href),
        .Q(hist_equ_href_o));
  FDCE vsync_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_vsync),
        .Q(hist_equ_vsync_o));
endmodule

(* ORIG_REF_NAME = "vid_mux" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_1
   (out_href,
    out_vsync,
    \hist_equ_u_r_reg[7] ,
    \data_reg_reg[23]_0 ,
    cur_ram02_out,
    in_href,
    pclk,
    href_reg_reg_0,
    in_vsync,
    Q,
    s_hist_equ_en,
    \data_reg_reg[15]_0 ,
    prev_vsync,
    in_yuv);
  output out_href;
  output out_vsync;
  output [15:0]\hist_equ_u_r_reg[7] ;
  output [23:0]\data_reg_reg[23]_0 ;
  output cur_ram02_out;
  input in_href;
  input pclk;
  input href_reg_reg_0;
  input in_vsync;
  input [7:0]Q;
  input s_hist_equ_en;
  input [7:0]\data_reg_reg[15]_0 ;
  input prev_vsync;
  input [23:0]in_yuv;

  wire [7:0]Q;
  wire cur_ram02_out;
  wire [7:0]\data_reg_reg[15]_0 ;
  wire [23:0]\data_reg_reg[23]_0 ;
  wire [15:0]\hist_equ_u_r_reg[7] ;
  wire href_reg_reg_0;
  wire in_href;
  wire in_vsync;
  wire [23:0]in_yuv;
  wire out_href;
  wire out_vsync;
  wire pclk;
  wire prev_vsync;
  wire s_hist_equ_en;

  LUT2 #(
    .INIT(4'h2)) 
    \cur_clr_addr[4]_i_2 
       (.I0(out_vsync),
        .I1(prev_vsync),
        .O(cur_ram02_out));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(\data_reg_reg[23]_0 [0]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[10]_i_1 
       (.I0(\data_reg_reg[15]_0 [2]),
        .I1(\data_reg_reg[23]_0 [10]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [10]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[11]_i_1 
       (.I0(\data_reg_reg[15]_0 [3]),
        .I1(\data_reg_reg[23]_0 [11]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [11]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[12]_i_1 
       (.I0(\data_reg_reg[15]_0 [4]),
        .I1(\data_reg_reg[23]_0 [12]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [12]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[13]_i_1 
       (.I0(\data_reg_reg[15]_0 [5]),
        .I1(\data_reg_reg[23]_0 [13]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [13]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[14]_i_1 
       (.I0(\data_reg_reg[15]_0 [6]),
        .I1(\data_reg_reg[23]_0 [14]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [14]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[15]_i_1 
       (.I0(\data_reg_reg[15]_0 [7]),
        .I1(\data_reg_reg[23]_0 [15]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [15]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(\data_reg_reg[23]_0 [1]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(\data_reg_reg[23]_0 [2]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(\data_reg_reg[23]_0 [3]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(\data_reg_reg[23]_0 [4]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[5]_i_1 
       (.I0(Q[5]),
        .I1(\data_reg_reg[23]_0 [5]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(\data_reg_reg[23]_0 [6]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[7]_i_1 
       (.I0(Q[7]),
        .I1(\data_reg_reg[23]_0 [7]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[8]_i_1 
       (.I0(\data_reg_reg[15]_0 [0]),
        .I1(\data_reg_reg[23]_0 [8]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [8]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_reg[9]_i_1 
       (.I0(\data_reg_reg[15]_0 [1]),
        .I1(\data_reg_reg[23]_0 [9]),
        .I2(s_hist_equ_en),
        .O(\hist_equ_u_r_reg[7] [9]));
  FDCE \data_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[0]),
        .Q(\data_reg_reg[23]_0 [0]));
  FDCE \data_reg_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[10]),
        .Q(\data_reg_reg[23]_0 [10]));
  FDCE \data_reg_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[11]),
        .Q(\data_reg_reg[23]_0 [11]));
  FDCE \data_reg_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[12]),
        .Q(\data_reg_reg[23]_0 [12]));
  FDCE \data_reg_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[13]),
        .Q(\data_reg_reg[23]_0 [13]));
  FDCE \data_reg_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[14]),
        .Q(\data_reg_reg[23]_0 [14]));
  FDCE \data_reg_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[15]),
        .Q(\data_reg_reg[23]_0 [15]));
  FDCE \data_reg_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[16]),
        .Q(\data_reg_reg[23]_0 [16]));
  FDCE \data_reg_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[17]),
        .Q(\data_reg_reg[23]_0 [17]));
  FDCE \data_reg_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[18]),
        .Q(\data_reg_reg[23]_0 [18]));
  FDCE \data_reg_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[19]),
        .Q(\data_reg_reg[23]_0 [19]));
  FDCE \data_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[1]),
        .Q(\data_reg_reg[23]_0 [1]));
  FDCE \data_reg_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[20]),
        .Q(\data_reg_reg[23]_0 [20]));
  FDCE \data_reg_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[21]),
        .Q(\data_reg_reg[23]_0 [21]));
  FDCE \data_reg_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[22]),
        .Q(\data_reg_reg[23]_0 [22]));
  FDCE \data_reg_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[23]),
        .Q(\data_reg_reg[23]_0 [23]));
  FDCE \data_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[2]),
        .Q(\data_reg_reg[23]_0 [2]));
  FDCE \data_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[3]),
        .Q(\data_reg_reg[23]_0 [3]));
  FDCE \data_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[4]),
        .Q(\data_reg_reg[23]_0 [4]));
  FDCE \data_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[5]),
        .Q(\data_reg_reg[23]_0 [5]));
  FDCE \data_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[6]),
        .Q(\data_reg_reg[23]_0 [6]));
  FDCE \data_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[7]),
        .Q(\data_reg_reg[23]_0 [7]));
  FDCE \data_reg_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[8]),
        .Q(\data_reg_reg[23]_0 [8]));
  FDCE \data_reg_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_yuv[9]),
        .Q(\data_reg_reg[23]_0 [9]));
  FDCE href_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_href),
        .Q(out_href));
  FDCE vsync_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(href_reg_reg_0),
        .D(in_vsync),
        .Q(out_vsync));
endmodule

(* ORIG_REF_NAME = "vid_mux" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_2
   (out_href,
    out_vsync,
    Q,
    in_href,
    pclk,
    \data_reg_reg[0]_0 ,
    in_vsync,
    D);
  output out_href;
  output out_vsync;
  output [23:0]Q;
  input in_href;
  input pclk;
  input \data_reg_reg[0]_0 ;
  input in_vsync;
  input [23:0]D;

  wire [23:0]D;
  wire [23:0]Q;
  wire \data_reg_reg[0]_0 ;
  wire in_href;
  wire in_vsync;
  wire out_href;
  wire out_vsync;
  wire pclk;

  FDCE \data_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \data_reg_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \data_reg_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \data_reg_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \data_reg_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \data_reg_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \data_reg_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \data_reg_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \data_reg_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \data_reg_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \data_reg_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \data_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \data_reg_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \data_reg_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \data_reg_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \data_reg_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \data_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \data_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \data_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \data_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \data_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \data_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \data_reg_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \data_reg_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(D[9]),
        .Q(Q[9]));
  FDCE href_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_href),
        .Q(out_href));
  FDCE vsync_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\data_reg_reg[0]_0 ),
        .D(in_vsync),
        .Q(out_vsync));
endmodule

(* ORIG_REF_NAME = "vid_mux" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_3
   (out_href,
    s_module_reset_reg,
    vsync_reg_reg_0,
    href_reg_reg_0,
    DI,
    Q,
    in_href,
    pclk,
    in_vsync,
    prev_href,
    prev_vsync,
    s_module_reset,
    rst_n,
    D);
  output out_href;
  output s_module_reset_reg;
  output vsync_reg_reg_0;
  output href_reg_reg_0;
  output [0:0]DI;
  output [23:0]Q;
  input in_href;
  input pclk;
  input in_vsync;
  input prev_href;
  input prev_vsync;
  input s_module_reset;
  input rst_n;
  input [23:0]D;

  wire [23:0]D;
  wire [0:0]DI;
  wire [23:0]Q;
  wire href_reg_reg_0;
  wire in_href;
  wire in_vsync;
  wire out_href;
  wire pclk;
  wire prev_href;
  wire prev_vsync;
  wire rst_n;
  wire s_module_reset;
  wire s_module_reset_reg;
  wire vsync_reg_reg_0;

  FDCE \data_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \data_reg_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \data_reg_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \data_reg_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \data_reg_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \data_reg_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \data_reg_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \data_reg_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \data_reg_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \data_reg_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \data_reg_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \data_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \data_reg_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \data_reg_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \data_reg_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \data_reg_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \data_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \data_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \data_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \data_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \data_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \data_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \data_reg_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \data_reg_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(D[9]),
        .Q(Q[9]));
  FDCE href_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(in_href),
        .Q(out_href));
  LUT4 #(
    .INIT(16'h44F4)) 
    \line_cnt[0]_i_1 
       (.I0(out_href),
        .I1(prev_href),
        .I2(prev_vsync),
        .I3(vsync_reg_reg_0),
        .O(href_reg_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    \line_cnt[0]_i_3 
       (.I0(vsync_reg_reg_0),
        .I1(prev_vsync),
        .O(DI));
  LUT2 #(
    .INIT(4'hB)) 
    vsync_reg_i_1
       (.I0(s_module_reset),
        .I1(rst_n),
        .O(s_module_reset_reg));
  FDCE vsync_reg_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(in_vsync),
        .Q(vsync_reg_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_crop
   (prev_href,
    prev_vsync,
    D,
    in_href,
    out_href,
    pclk,
    out_vsync,
    \line_cnt_reg[15]_0 ,
    O,
    href_reg_reg_i_6_0,
    href_reg_reg_i_34_0,
    href_reg_reg_i_62_0,
    href_reg_reg_i_3_0,
    href_reg_reg_i_11_0,
    href_reg_reg_i_40_0,
    href_reg_reg_i_72_0,
    href_reg_reg_i_4_0,
    href_reg_reg_i_5_0,
    DI,
    s_crop_en,
    rst_n,
    s_module_reset,
    out_data);
  output prev_href;
  output prev_vsync;
  output [23:0]D;
  output in_href;
  input out_href;
  input pclk;
  input out_vsync;
  input \line_cnt_reg[15]_0 ;
  input [3:0]O;
  input [3:0]href_reg_reg_i_6_0;
  input [3:0]href_reg_reg_i_34_0;
  input [3:0]href_reg_reg_i_62_0;
  input [3:0]href_reg_reg_i_3_0;
  input [3:0]href_reg_reg_i_11_0;
  input [3:0]href_reg_reg_i_40_0;
  input [3:0]href_reg_reg_i_72_0;
  input [15:0]href_reg_reg_i_4_0;
  input [15:0]href_reg_reg_i_5_0;
  input [0:0]DI;
  input s_crop_en;
  input rst_n;
  input s_module_reset;
  input [23:0]out_data;

  wire [23:0]D;
  wire [0:0]DI;
  wire [3:0]O;
  wire crop_href;
  wire [23:0]data_r;
  wire href_reg_i_10_n_0;
  wire href_reg_i_12_n_0;
  wire href_reg_i_13_n_0;
  wire href_reg_i_14_n_0;
  wire href_reg_i_15_n_0;
  wire href_reg_i_17_n_0;
  wire href_reg_i_18_n_0;
  wire href_reg_i_19_n_0;
  wire href_reg_i_20_n_0;
  wire href_reg_i_21_n_0;
  wire href_reg_i_22_n_0;
  wire href_reg_i_23_n_0;
  wire href_reg_i_24_n_0;
  wire href_reg_i_26_n_0;
  wire href_reg_i_27_n_0;
  wire href_reg_i_28_n_0;
  wire href_reg_i_29_n_0;
  wire href_reg_i_30_n_0;
  wire href_reg_i_31_n_0;
  wire href_reg_i_32_n_0;
  wire href_reg_i_33_n_0;
  wire href_reg_i_35_n_0;
  wire href_reg_i_36_n_0;
  wire href_reg_i_37_n_0;
  wire href_reg_i_38_n_0;
  wire href_reg_i_41_n_0;
  wire href_reg_i_42_n_0;
  wire href_reg_i_43_n_0;
  wire href_reg_i_44_n_0;
  wire href_reg_i_46_n_0;
  wire href_reg_i_47_n_0;
  wire href_reg_i_48_n_0;
  wire href_reg_i_49_n_0;
  wire href_reg_i_50_n_0;
  wire href_reg_i_51_n_0;
  wire href_reg_i_52_n_0;
  wire href_reg_i_53_n_0;
  wire href_reg_i_54_n_0;
  wire href_reg_i_55_n_0;
  wire href_reg_i_56_n_0;
  wire href_reg_i_57_n_0;
  wire href_reg_i_58_n_0;
  wire href_reg_i_59_n_0;
  wire href_reg_i_60_n_0;
  wire href_reg_i_61_n_0;
  wire href_reg_i_63_n_0;
  wire href_reg_i_64_n_0;
  wire href_reg_i_65_n_0;
  wire href_reg_i_66_n_0;
  wire href_reg_i_73_n_0;
  wire href_reg_i_74_n_0;
  wire href_reg_i_75_n_0;
  wire href_reg_i_76_n_0;
  wire href_reg_i_7_n_0;
  wire href_reg_i_82_n_0;
  wire href_reg_i_83_n_0;
  wire href_reg_i_84_n_0;
  wire href_reg_i_85_n_0;
  wire href_reg_i_8_n_0;
  wire href_reg_i_91_n_0;
  wire href_reg_i_92_n_0;
  wire href_reg_i_93_n_0;
  wire href_reg_i_94_n_0;
  wire href_reg_i_9_n_0;
  wire [3:0]href_reg_reg_i_11_0;
  wire href_reg_reg_i_11_n_0;
  wire href_reg_reg_i_11_n_1;
  wire href_reg_reg_i_11_n_2;
  wire href_reg_reg_i_11_n_3;
  wire href_reg_reg_i_16_n_0;
  wire href_reg_reg_i_16_n_1;
  wire href_reg_reg_i_16_n_2;
  wire href_reg_reg_i_16_n_3;
  wire href_reg_reg_i_25_n_0;
  wire href_reg_reg_i_25_n_1;
  wire href_reg_reg_i_25_n_2;
  wire href_reg_reg_i_25_n_3;
  wire href_reg_reg_i_2_n_0;
  wire href_reg_reg_i_2_n_1;
  wire href_reg_reg_i_2_n_2;
  wire href_reg_reg_i_2_n_3;
  wire [3:0]href_reg_reg_i_34_0;
  wire href_reg_reg_i_34_n_0;
  wire href_reg_reg_i_34_n_1;
  wire href_reg_reg_i_34_n_2;
  wire href_reg_reg_i_34_n_3;
  wire [3:0]href_reg_reg_i_3_0;
  wire href_reg_reg_i_3_n_0;
  wire href_reg_reg_i_3_n_1;
  wire href_reg_reg_i_3_n_2;
  wire href_reg_reg_i_3_n_3;
  wire [3:0]href_reg_reg_i_40_0;
  wire href_reg_reg_i_40_n_0;
  wire href_reg_reg_i_40_n_1;
  wire href_reg_reg_i_40_n_2;
  wire href_reg_reg_i_40_n_3;
  wire [15:0]href_reg_reg_i_4_0;
  wire href_reg_reg_i_4_n_0;
  wire href_reg_reg_i_4_n_1;
  wire href_reg_reg_i_4_n_2;
  wire href_reg_reg_i_4_n_3;
  wire [15:0]href_reg_reg_i_5_0;
  wire href_reg_reg_i_5_n_1;
  wire href_reg_reg_i_5_n_2;
  wire href_reg_reg_i_5_n_3;
  wire [3:0]href_reg_reg_i_62_0;
  wire href_reg_reg_i_62_n_0;
  wire href_reg_reg_i_62_n_1;
  wire href_reg_reg_i_62_n_2;
  wire href_reg_reg_i_62_n_3;
  wire [3:0]href_reg_reg_i_6_0;
  wire href_reg_reg_i_6_n_0;
  wire href_reg_reg_i_6_n_1;
  wire href_reg_reg_i_6_n_2;
  wire href_reg_reg_i_6_n_3;
  wire [3:0]href_reg_reg_i_72_0;
  wire href_reg_reg_i_72_n_0;
  wire href_reg_reg_i_72_n_1;
  wire href_reg_reg_i_72_n_2;
  wire href_reg_reg_i_72_n_3;
  wire in_href;
  wire \line_cnt[0]_i_4_n_0 ;
  wire \line_cnt[0]_i_5_n_0 ;
  wire \line_cnt[0]_i_6_n_0 ;
  wire \line_cnt[0]_i_7_n_0 ;
  wire \line_cnt[12]_i_2_n_0 ;
  wire \line_cnt[12]_i_3_n_0 ;
  wire \line_cnt[12]_i_4_n_0 ;
  wire \line_cnt[12]_i_5_n_0 ;
  wire \line_cnt[4]_i_2_n_0 ;
  wire \line_cnt[4]_i_3_n_0 ;
  wire \line_cnt[4]_i_4_n_0 ;
  wire \line_cnt[4]_i_5_n_0 ;
  wire \line_cnt[8]_i_2_n_0 ;
  wire \line_cnt[8]_i_3_n_0 ;
  wire \line_cnt[8]_i_4_n_0 ;
  wire \line_cnt[8]_i_5_n_0 ;
  wire [15:0]line_cnt_reg;
  wire \line_cnt_reg[0]_i_2_n_0 ;
  wire \line_cnt_reg[0]_i_2_n_1 ;
  wire \line_cnt_reg[0]_i_2_n_2 ;
  wire \line_cnt_reg[0]_i_2_n_3 ;
  wire \line_cnt_reg[0]_i_2_n_4 ;
  wire \line_cnt_reg[0]_i_2_n_5 ;
  wire \line_cnt_reg[0]_i_2_n_6 ;
  wire \line_cnt_reg[0]_i_2_n_7 ;
  wire \line_cnt_reg[12]_i_1_n_1 ;
  wire \line_cnt_reg[12]_i_1_n_2 ;
  wire \line_cnt_reg[12]_i_1_n_3 ;
  wire \line_cnt_reg[12]_i_1_n_4 ;
  wire \line_cnt_reg[12]_i_1_n_5 ;
  wire \line_cnt_reg[12]_i_1_n_6 ;
  wire \line_cnt_reg[12]_i_1_n_7 ;
  wire \line_cnt_reg[15]_0 ;
  wire \line_cnt_reg[4]_i_1_n_0 ;
  wire \line_cnt_reg[4]_i_1_n_1 ;
  wire \line_cnt_reg[4]_i_1_n_2 ;
  wire \line_cnt_reg[4]_i_1_n_3 ;
  wire \line_cnt_reg[4]_i_1_n_4 ;
  wire \line_cnt_reg[4]_i_1_n_5 ;
  wire \line_cnt_reg[4]_i_1_n_6 ;
  wire \line_cnt_reg[4]_i_1_n_7 ;
  wire \line_cnt_reg[8]_i_1_n_0 ;
  wire \line_cnt_reg[8]_i_1_n_1 ;
  wire \line_cnt_reg[8]_i_1_n_2 ;
  wire \line_cnt_reg[8]_i_1_n_3 ;
  wire \line_cnt_reg[8]_i_1_n_4 ;
  wire \line_cnt_reg[8]_i_1_n_5 ;
  wire \line_cnt_reg[8]_i_1_n_6 ;
  wire \line_cnt_reg[8]_i_1_n_7 ;
  wire [23:0]out_data;
  wire out_href;
  wire out_href20_in;
  wire out_vsync;
  wire pclk;
  wire \pix_cnt[0]_i_10_n_0 ;
  wire \pix_cnt[0]_i_1_n_0 ;
  wire \pix_cnt[0]_i_3_n_0 ;
  wire \pix_cnt[0]_i_4_n_0 ;
  wire \pix_cnt[0]_i_5_n_0 ;
  wire \pix_cnt[0]_i_6_n_0 ;
  wire \pix_cnt[0]_i_7_n_0 ;
  wire \pix_cnt[0]_i_8_n_0 ;
  wire \pix_cnt[0]_i_9_n_0 ;
  wire \pix_cnt[12]_i_2_n_0 ;
  wire \pix_cnt[12]_i_3_n_0 ;
  wire \pix_cnt[12]_i_4_n_0 ;
  wire \pix_cnt[12]_i_5_n_0 ;
  wire \pix_cnt[4]_i_2_n_0 ;
  wire \pix_cnt[4]_i_3_n_0 ;
  wire \pix_cnt[4]_i_4_n_0 ;
  wire \pix_cnt[4]_i_5_n_0 ;
  wire \pix_cnt[8]_i_2_n_0 ;
  wire \pix_cnt[8]_i_3_n_0 ;
  wire \pix_cnt[8]_i_4_n_0 ;
  wire \pix_cnt[8]_i_5_n_0 ;
  wire [15:0]pix_cnt_reg;
  wire \pix_cnt_reg[0]_i_2_n_0 ;
  wire \pix_cnt_reg[0]_i_2_n_1 ;
  wire \pix_cnt_reg[0]_i_2_n_2 ;
  wire \pix_cnt_reg[0]_i_2_n_3 ;
  wire \pix_cnt_reg[0]_i_2_n_4 ;
  wire \pix_cnt_reg[0]_i_2_n_5 ;
  wire \pix_cnt_reg[0]_i_2_n_6 ;
  wire \pix_cnt_reg[0]_i_2_n_7 ;
  wire \pix_cnt_reg[12]_i_1_n_1 ;
  wire \pix_cnt_reg[12]_i_1_n_2 ;
  wire \pix_cnt_reg[12]_i_1_n_3 ;
  wire \pix_cnt_reg[12]_i_1_n_4 ;
  wire \pix_cnt_reg[12]_i_1_n_5 ;
  wire \pix_cnt_reg[12]_i_1_n_6 ;
  wire \pix_cnt_reg[12]_i_1_n_7 ;
  wire \pix_cnt_reg[4]_i_1_n_0 ;
  wire \pix_cnt_reg[4]_i_1_n_1 ;
  wire \pix_cnt_reg[4]_i_1_n_2 ;
  wire \pix_cnt_reg[4]_i_1_n_3 ;
  wire \pix_cnt_reg[4]_i_1_n_4 ;
  wire \pix_cnt_reg[4]_i_1_n_5 ;
  wire \pix_cnt_reg[4]_i_1_n_6 ;
  wire \pix_cnt_reg[4]_i_1_n_7 ;
  wire \pix_cnt_reg[8]_i_1_n_0 ;
  wire \pix_cnt_reg[8]_i_1_n_1 ;
  wire \pix_cnt_reg[8]_i_1_n_2 ;
  wire \pix_cnt_reg[8]_i_1_n_3 ;
  wire \pix_cnt_reg[8]_i_1_n_4 ;
  wire \pix_cnt_reg[8]_i_1_n_5 ;
  wire \pix_cnt_reg[8]_i_1_n_6 ;
  wire \pix_cnt_reg[8]_i_1_n_7 ;
  wire prev_href;
  wire prev_href_i_1_n_0;
  wire prev_vsync;
  wire rst_n;
  wire s_crop_en;
  wire s_module_reset;
  wire [3:0]NLW_href_reg_reg_i_11_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_16_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_25_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_34_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_40_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_5_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_6_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_62_O_UNCONNECTED;
  wire [3:0]NLW_href_reg_reg_i_72_O_UNCONNECTED;
  wire [3:3]\NLW_line_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pix_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  FDCE \data_r_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[0]),
        .Q(data_r[0]));
  FDCE \data_r_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[10]),
        .Q(data_r[10]));
  FDCE \data_r_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[11]),
        .Q(data_r[11]));
  FDCE \data_r_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[12]),
        .Q(data_r[12]));
  FDCE \data_r_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[13]),
        .Q(data_r[13]));
  FDCE \data_r_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[14]),
        .Q(data_r[14]));
  FDCE \data_r_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[15]),
        .Q(data_r[15]));
  FDCE \data_r_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[16]),
        .Q(data_r[16]));
  FDCE \data_r_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[17]),
        .Q(data_r[17]));
  FDCE \data_r_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[18]),
        .Q(data_r[18]));
  FDCE \data_r_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[19]),
        .Q(data_r[19]));
  FDCE \data_r_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[1]),
        .Q(data_r[1]));
  FDCE \data_r_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[20]),
        .Q(data_r[20]));
  FDCE \data_r_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[21]),
        .Q(data_r[21]));
  FDCE \data_r_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[22]),
        .Q(data_r[22]));
  FDCE \data_r_reg[23] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[23]),
        .Q(data_r[23]));
  FDCE \data_r_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[2]),
        .Q(data_r[2]));
  FDCE \data_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[3]),
        .Q(data_r[3]));
  FDCE \data_r_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[4]),
        .Q(data_r[4]));
  FDCE \data_r_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[5]),
        .Q(data_r[5]));
  FDCE \data_r_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[6]),
        .Q(data_r[6]));
  FDCE \data_r_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[7]),
        .Q(data_r[7]));
  FDCE \data_r_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[8]),
        .Q(data_r[8]));
  FDCE \data_r_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_data[9]),
        .Q(data_r[9]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[0]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[0]),
        .I2(out_data[0]),
        .I3(s_crop_en),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[10]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[10]),
        .I2(out_data[10]),
        .I3(s_crop_en),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[11]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[11]),
        .I2(out_data[11]),
        .I3(s_crop_en),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[12]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[12]),
        .I2(out_data[12]),
        .I3(s_crop_en),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[13]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[13]),
        .I2(out_data[13]),
        .I3(s_crop_en),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[14]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[14]),
        .I2(out_data[14]),
        .I3(s_crop_en),
        .O(D[14]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[15]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[15]),
        .I2(out_data[15]),
        .I3(s_crop_en),
        .O(D[15]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[16]_i_1__2 
       (.I0(crop_href),
        .I1(data_r[16]),
        .I2(out_data[16]),
        .I3(s_crop_en),
        .O(D[16]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[17]_i_1__2 
       (.I0(crop_href),
        .I1(data_r[17]),
        .I2(out_data[17]),
        .I3(s_crop_en),
        .O(D[17]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[18]_i_1__2 
       (.I0(crop_href),
        .I1(data_r[18]),
        .I2(out_data[18]),
        .I3(s_crop_en),
        .O(D[18]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[19]_i_1__2 
       (.I0(crop_href),
        .I1(data_r[19]),
        .I2(out_data[19]),
        .I3(s_crop_en),
        .O(D[19]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[1]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[1]),
        .I2(out_data[1]),
        .I3(s_crop_en),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[20]_i_1__2 
       (.I0(crop_href),
        .I1(data_r[20]),
        .I2(out_data[20]),
        .I3(s_crop_en),
        .O(D[20]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[21]_i_1__2 
       (.I0(crop_href),
        .I1(data_r[21]),
        .I2(out_data[21]),
        .I3(s_crop_en),
        .O(D[21]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[22]_i_1__2 
       (.I0(crop_href),
        .I1(data_r[22]),
        .I2(out_data[22]),
        .I3(s_crop_en),
        .O(D[22]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[23]_i_1__2 
       (.I0(crop_href),
        .I1(data_r[23]),
        .I2(out_data[23]),
        .I3(s_crop_en),
        .O(D[23]));
  LUT4 #(
    .INIT(16'h1000)) 
    \data_reg[23]_i_2 
       (.I0(href_reg_reg_i_2_n_0),
        .I1(href_reg_reg_i_3_n_0),
        .I2(href_reg_reg_i_4_n_0),
        .I3(out_href20_in),
        .O(crop_href));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[2]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[2]),
        .I2(out_data[2]),
        .I3(s_crop_en),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[3]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[3]),
        .I2(out_data[3]),
        .I3(s_crop_en),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[4]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[4]),
        .I2(out_data[4]),
        .I3(s_crop_en),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[5]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[5]),
        .I2(out_data[5]),
        .I3(s_crop_en),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[6]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[6]),
        .I2(out_data[6]),
        .I3(s_crop_en),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[7]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[7]),
        .I2(out_data[7]),
        .I3(s_crop_en),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[8]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[8]),
        .I2(out_data[8]),
        .I3(s_crop_en),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[9]_i_1__1 
       (.I0(crop_href),
        .I1(data_r[9]),
        .I2(out_data[9]),
        .I3(s_crop_en),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_10
       (.I0(pix_cnt_reg[12]),
        .I1(O[0]),
        .O(href_reg_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_12
       (.I0(line_cnt_reg[15]),
        .I1(href_reg_reg_i_3_0[3]),
        .O(href_reg_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_13
       (.I0(line_cnt_reg[14]),
        .I1(href_reg_reg_i_3_0[2]),
        .O(href_reg_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_14
       (.I0(line_cnt_reg[13]),
        .I1(href_reg_reg_i_3_0[1]),
        .O(href_reg_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_15
       (.I0(line_cnt_reg[12]),
        .I1(href_reg_reg_i_3_0[0]),
        .O(href_reg_i_15_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_17
       (.I0(line_cnt_reg[15]),
        .I1(href_reg_reg_i_4_0[15]),
        .I2(line_cnt_reg[14]),
        .I3(href_reg_reg_i_4_0[14]),
        .O(href_reg_i_17_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_18
       (.I0(line_cnt_reg[13]),
        .I1(href_reg_reg_i_4_0[13]),
        .I2(line_cnt_reg[12]),
        .I3(href_reg_reg_i_4_0[12]),
        .O(href_reg_i_18_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_19
       (.I0(line_cnt_reg[11]),
        .I1(href_reg_reg_i_4_0[11]),
        .I2(line_cnt_reg[10]),
        .I3(href_reg_reg_i_4_0[10]),
        .O(href_reg_i_19_n_0));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    href_reg_i_1__2
       (.I0(href_reg_reg_i_2_n_0),
        .I1(href_reg_reg_i_3_n_0),
        .I2(href_reg_reg_i_4_n_0),
        .I3(out_href20_in),
        .I4(s_crop_en),
        .I5(out_href),
        .O(in_href));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_20
       (.I0(line_cnt_reg[9]),
        .I1(href_reg_reg_i_4_0[9]),
        .I2(line_cnt_reg[8]),
        .I3(href_reg_reg_i_4_0[8]),
        .O(href_reg_i_20_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_21
       (.I0(href_reg_reg_i_4_0[15]),
        .I1(line_cnt_reg[15]),
        .I2(href_reg_reg_i_4_0[14]),
        .I3(line_cnt_reg[14]),
        .O(href_reg_i_21_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_22
       (.I0(href_reg_reg_i_4_0[13]),
        .I1(line_cnt_reg[13]),
        .I2(href_reg_reg_i_4_0[12]),
        .I3(line_cnt_reg[12]),
        .O(href_reg_i_22_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_23
       (.I0(href_reg_reg_i_4_0[11]),
        .I1(line_cnt_reg[11]),
        .I2(href_reg_reg_i_4_0[10]),
        .I3(line_cnt_reg[10]),
        .O(href_reg_i_23_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_24
       (.I0(href_reg_reg_i_4_0[9]),
        .I1(line_cnt_reg[9]),
        .I2(href_reg_reg_i_4_0[8]),
        .I3(line_cnt_reg[8]),
        .O(href_reg_i_24_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_26
       (.I0(pix_cnt_reg[15]),
        .I1(href_reg_reg_i_5_0[15]),
        .I2(pix_cnt_reg[14]),
        .I3(href_reg_reg_i_5_0[14]),
        .O(href_reg_i_26_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_27
       (.I0(pix_cnt_reg[13]),
        .I1(href_reg_reg_i_5_0[13]),
        .I2(pix_cnt_reg[12]),
        .I3(href_reg_reg_i_5_0[12]),
        .O(href_reg_i_27_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_28
       (.I0(pix_cnt_reg[11]),
        .I1(href_reg_reg_i_5_0[11]),
        .I2(pix_cnt_reg[10]),
        .I3(href_reg_reg_i_5_0[10]),
        .O(href_reg_i_28_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_29
       (.I0(pix_cnt_reg[9]),
        .I1(href_reg_reg_i_5_0[9]),
        .I2(pix_cnt_reg[8]),
        .I3(href_reg_reg_i_5_0[8]),
        .O(href_reg_i_29_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_30
       (.I0(href_reg_reg_i_5_0[15]),
        .I1(pix_cnt_reg[15]),
        .I2(href_reg_reg_i_5_0[14]),
        .I3(pix_cnt_reg[14]),
        .O(href_reg_i_30_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_31
       (.I0(href_reg_reg_i_5_0[13]),
        .I1(pix_cnt_reg[13]),
        .I2(href_reg_reg_i_5_0[12]),
        .I3(pix_cnt_reg[12]),
        .O(href_reg_i_31_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_32
       (.I0(href_reg_reg_i_5_0[11]),
        .I1(pix_cnt_reg[11]),
        .I2(href_reg_reg_i_5_0[10]),
        .I3(pix_cnt_reg[10]),
        .O(href_reg_i_32_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_33
       (.I0(href_reg_reg_i_5_0[9]),
        .I1(pix_cnt_reg[9]),
        .I2(href_reg_reg_i_5_0[8]),
        .I3(pix_cnt_reg[8]),
        .O(href_reg_i_33_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_35
       (.I0(pix_cnt_reg[11]),
        .I1(href_reg_reg_i_6_0[3]),
        .O(href_reg_i_35_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_36
       (.I0(pix_cnt_reg[10]),
        .I1(href_reg_reg_i_6_0[2]),
        .O(href_reg_i_36_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_37
       (.I0(pix_cnt_reg[9]),
        .I1(href_reg_reg_i_6_0[1]),
        .O(href_reg_i_37_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_38
       (.I0(pix_cnt_reg[8]),
        .I1(href_reg_reg_i_6_0[0]),
        .O(href_reg_i_38_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_41
       (.I0(line_cnt_reg[11]),
        .I1(href_reg_reg_i_11_0[3]),
        .O(href_reg_i_41_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_42
       (.I0(line_cnt_reg[10]),
        .I1(href_reg_reg_i_11_0[2]),
        .O(href_reg_i_42_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_43
       (.I0(line_cnt_reg[9]),
        .I1(href_reg_reg_i_11_0[1]),
        .O(href_reg_i_43_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_44
       (.I0(line_cnt_reg[8]),
        .I1(href_reg_reg_i_11_0[0]),
        .O(href_reg_i_44_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_46
       (.I0(line_cnt_reg[7]),
        .I1(href_reg_reg_i_4_0[7]),
        .I2(line_cnt_reg[6]),
        .I3(href_reg_reg_i_4_0[6]),
        .O(href_reg_i_46_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_47
       (.I0(line_cnt_reg[5]),
        .I1(href_reg_reg_i_4_0[5]),
        .I2(line_cnt_reg[4]),
        .I3(href_reg_reg_i_4_0[4]),
        .O(href_reg_i_47_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_48
       (.I0(line_cnt_reg[3]),
        .I1(href_reg_reg_i_4_0[3]),
        .I2(line_cnt_reg[2]),
        .I3(href_reg_reg_i_4_0[2]),
        .O(href_reg_i_48_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_49
       (.I0(line_cnt_reg[1]),
        .I1(href_reg_reg_i_4_0[1]),
        .I2(line_cnt_reg[0]),
        .I3(href_reg_reg_i_4_0[0]),
        .O(href_reg_i_49_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_50
       (.I0(href_reg_reg_i_4_0[7]),
        .I1(line_cnt_reg[7]),
        .I2(href_reg_reg_i_4_0[6]),
        .I3(line_cnt_reg[6]),
        .O(href_reg_i_50_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_51
       (.I0(href_reg_reg_i_4_0[5]),
        .I1(line_cnt_reg[5]),
        .I2(href_reg_reg_i_4_0[4]),
        .I3(line_cnt_reg[4]),
        .O(href_reg_i_51_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_52
       (.I0(href_reg_reg_i_4_0[3]),
        .I1(line_cnt_reg[3]),
        .I2(href_reg_reg_i_4_0[2]),
        .I3(line_cnt_reg[2]),
        .O(href_reg_i_52_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_53
       (.I0(href_reg_reg_i_4_0[1]),
        .I1(line_cnt_reg[1]),
        .I2(href_reg_reg_i_4_0[0]),
        .I3(line_cnt_reg[0]),
        .O(href_reg_i_53_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_54
       (.I0(pix_cnt_reg[7]),
        .I1(href_reg_reg_i_5_0[7]),
        .I2(pix_cnt_reg[6]),
        .I3(href_reg_reg_i_5_0[6]),
        .O(href_reg_i_54_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_55
       (.I0(pix_cnt_reg[5]),
        .I1(href_reg_reg_i_5_0[5]),
        .I2(pix_cnt_reg[4]),
        .I3(href_reg_reg_i_5_0[4]),
        .O(href_reg_i_55_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_56
       (.I0(pix_cnt_reg[3]),
        .I1(href_reg_reg_i_5_0[3]),
        .I2(pix_cnt_reg[2]),
        .I3(href_reg_reg_i_5_0[2]),
        .O(href_reg_i_56_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    href_reg_i_57
       (.I0(pix_cnt_reg[1]),
        .I1(href_reg_reg_i_5_0[1]),
        .I2(pix_cnt_reg[0]),
        .I3(href_reg_reg_i_5_0[0]),
        .O(href_reg_i_57_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_58
       (.I0(href_reg_reg_i_5_0[7]),
        .I1(pix_cnt_reg[7]),
        .I2(href_reg_reg_i_5_0[6]),
        .I3(pix_cnt_reg[6]),
        .O(href_reg_i_58_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_59
       (.I0(href_reg_reg_i_5_0[5]),
        .I1(pix_cnt_reg[5]),
        .I2(href_reg_reg_i_5_0[4]),
        .I3(pix_cnt_reg[4]),
        .O(href_reg_i_59_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_60
       (.I0(href_reg_reg_i_5_0[3]),
        .I1(pix_cnt_reg[3]),
        .I2(href_reg_reg_i_5_0[2]),
        .I3(pix_cnt_reg[2]),
        .O(href_reg_i_60_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    href_reg_i_61
       (.I0(href_reg_reg_i_5_0[1]),
        .I1(pix_cnt_reg[1]),
        .I2(href_reg_reg_i_5_0[0]),
        .I3(pix_cnt_reg[0]),
        .O(href_reg_i_61_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_63
       (.I0(pix_cnt_reg[7]),
        .I1(href_reg_reg_i_34_0[3]),
        .O(href_reg_i_63_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_64
       (.I0(pix_cnt_reg[6]),
        .I1(href_reg_reg_i_34_0[2]),
        .O(href_reg_i_64_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_65
       (.I0(pix_cnt_reg[5]),
        .I1(href_reg_reg_i_34_0[1]),
        .O(href_reg_i_65_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_66
       (.I0(pix_cnt_reg[4]),
        .I1(href_reg_reg_i_34_0[0]),
        .O(href_reg_i_66_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_7
       (.I0(pix_cnt_reg[15]),
        .I1(O[3]),
        .O(href_reg_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_73
       (.I0(line_cnt_reg[7]),
        .I1(href_reg_reg_i_40_0[3]),
        .O(href_reg_i_73_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_74
       (.I0(line_cnt_reg[6]),
        .I1(href_reg_reg_i_40_0[2]),
        .O(href_reg_i_74_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_75
       (.I0(line_cnt_reg[5]),
        .I1(href_reg_reg_i_40_0[1]),
        .O(href_reg_i_75_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_76
       (.I0(line_cnt_reg[4]),
        .I1(href_reg_reg_i_40_0[0]),
        .O(href_reg_i_76_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_8
       (.I0(pix_cnt_reg[14]),
        .I1(O[2]),
        .O(href_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_82
       (.I0(pix_cnt_reg[3]),
        .I1(href_reg_reg_i_62_0[3]),
        .O(href_reg_i_82_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_83
       (.I0(pix_cnt_reg[2]),
        .I1(href_reg_reg_i_62_0[2]),
        .O(href_reg_i_83_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_84
       (.I0(pix_cnt_reg[1]),
        .I1(href_reg_reg_i_62_0[1]),
        .O(href_reg_i_84_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_85
       (.I0(pix_cnt_reg[0]),
        .I1(href_reg_reg_i_62_0[0]),
        .O(href_reg_i_85_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_9
       (.I0(pix_cnt_reg[13]),
        .I1(O[1]),
        .O(href_reg_i_9_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_91
       (.I0(line_cnt_reg[3]),
        .I1(href_reg_reg_i_72_0[3]),
        .O(href_reg_i_91_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_92
       (.I0(line_cnt_reg[2]),
        .I1(href_reg_reg_i_72_0[2]),
        .O(href_reg_i_92_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_93
       (.I0(line_cnt_reg[1]),
        .I1(href_reg_reg_i_72_0[1]),
        .O(href_reg_i_93_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    href_reg_i_94
       (.I0(line_cnt_reg[0]),
        .I1(href_reg_reg_i_72_0[0]),
        .O(href_reg_i_94_n_0));
  CARRY4 href_reg_reg_i_11
       (.CI(href_reg_reg_i_40_n_0),
        .CO({href_reg_reg_i_11_n_0,href_reg_reg_i_11_n_1,href_reg_reg_i_11_n_2,href_reg_reg_i_11_n_3}),
        .CYINIT(1'b0),
        .DI(line_cnt_reg[11:8]),
        .O(NLW_href_reg_reg_i_11_O_UNCONNECTED[3:0]),
        .S({href_reg_i_41_n_0,href_reg_i_42_n_0,href_reg_i_43_n_0,href_reg_i_44_n_0}));
  CARRY4 href_reg_reg_i_16
       (.CI(1'b0),
        .CO({href_reg_reg_i_16_n_0,href_reg_reg_i_16_n_1,href_reg_reg_i_16_n_2,href_reg_reg_i_16_n_3}),
        .CYINIT(1'b1),
        .DI({href_reg_i_46_n_0,href_reg_i_47_n_0,href_reg_i_48_n_0,href_reg_i_49_n_0}),
        .O(NLW_href_reg_reg_i_16_O_UNCONNECTED[3:0]),
        .S({href_reg_i_50_n_0,href_reg_i_51_n_0,href_reg_i_52_n_0,href_reg_i_53_n_0}));
  CARRY4 href_reg_reg_i_2
       (.CI(href_reg_reg_i_6_n_0),
        .CO({href_reg_reg_i_2_n_0,href_reg_reg_i_2_n_1,href_reg_reg_i_2_n_2,href_reg_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(pix_cnt_reg[15:12]),
        .O(NLW_href_reg_reg_i_2_O_UNCONNECTED[3:0]),
        .S({href_reg_i_7_n_0,href_reg_i_8_n_0,href_reg_i_9_n_0,href_reg_i_10_n_0}));
  CARRY4 href_reg_reg_i_25
       (.CI(1'b0),
        .CO({href_reg_reg_i_25_n_0,href_reg_reg_i_25_n_1,href_reg_reg_i_25_n_2,href_reg_reg_i_25_n_3}),
        .CYINIT(1'b1),
        .DI({href_reg_i_54_n_0,href_reg_i_55_n_0,href_reg_i_56_n_0,href_reg_i_57_n_0}),
        .O(NLW_href_reg_reg_i_25_O_UNCONNECTED[3:0]),
        .S({href_reg_i_58_n_0,href_reg_i_59_n_0,href_reg_i_60_n_0,href_reg_i_61_n_0}));
  CARRY4 href_reg_reg_i_3
       (.CI(href_reg_reg_i_11_n_0),
        .CO({href_reg_reg_i_3_n_0,href_reg_reg_i_3_n_1,href_reg_reg_i_3_n_2,href_reg_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(line_cnt_reg[15:12]),
        .O(NLW_href_reg_reg_i_3_O_UNCONNECTED[3:0]),
        .S({href_reg_i_12_n_0,href_reg_i_13_n_0,href_reg_i_14_n_0,href_reg_i_15_n_0}));
  CARRY4 href_reg_reg_i_34
       (.CI(href_reg_reg_i_62_n_0),
        .CO({href_reg_reg_i_34_n_0,href_reg_reg_i_34_n_1,href_reg_reg_i_34_n_2,href_reg_reg_i_34_n_3}),
        .CYINIT(1'b0),
        .DI(pix_cnt_reg[7:4]),
        .O(NLW_href_reg_reg_i_34_O_UNCONNECTED[3:0]),
        .S({href_reg_i_63_n_0,href_reg_i_64_n_0,href_reg_i_65_n_0,href_reg_i_66_n_0}));
  CARRY4 href_reg_reg_i_4
       (.CI(href_reg_reg_i_16_n_0),
        .CO({href_reg_reg_i_4_n_0,href_reg_reg_i_4_n_1,href_reg_reg_i_4_n_2,href_reg_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({href_reg_i_17_n_0,href_reg_i_18_n_0,href_reg_i_19_n_0,href_reg_i_20_n_0}),
        .O(NLW_href_reg_reg_i_4_O_UNCONNECTED[3:0]),
        .S({href_reg_i_21_n_0,href_reg_i_22_n_0,href_reg_i_23_n_0,href_reg_i_24_n_0}));
  CARRY4 href_reg_reg_i_40
       (.CI(href_reg_reg_i_72_n_0),
        .CO({href_reg_reg_i_40_n_0,href_reg_reg_i_40_n_1,href_reg_reg_i_40_n_2,href_reg_reg_i_40_n_3}),
        .CYINIT(1'b0),
        .DI(line_cnt_reg[7:4]),
        .O(NLW_href_reg_reg_i_40_O_UNCONNECTED[3:0]),
        .S({href_reg_i_73_n_0,href_reg_i_74_n_0,href_reg_i_75_n_0,href_reg_i_76_n_0}));
  CARRY4 href_reg_reg_i_5
       (.CI(href_reg_reg_i_25_n_0),
        .CO({out_href20_in,href_reg_reg_i_5_n_1,href_reg_reg_i_5_n_2,href_reg_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({href_reg_i_26_n_0,href_reg_i_27_n_0,href_reg_i_28_n_0,href_reg_i_29_n_0}),
        .O(NLW_href_reg_reg_i_5_O_UNCONNECTED[3:0]),
        .S({href_reg_i_30_n_0,href_reg_i_31_n_0,href_reg_i_32_n_0,href_reg_i_33_n_0}));
  CARRY4 href_reg_reg_i_6
       (.CI(href_reg_reg_i_34_n_0),
        .CO({href_reg_reg_i_6_n_0,href_reg_reg_i_6_n_1,href_reg_reg_i_6_n_2,href_reg_reg_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(pix_cnt_reg[11:8]),
        .O(NLW_href_reg_reg_i_6_O_UNCONNECTED[3:0]),
        .S({href_reg_i_35_n_0,href_reg_i_36_n_0,href_reg_i_37_n_0,href_reg_i_38_n_0}));
  CARRY4 href_reg_reg_i_62
       (.CI(1'b0),
        .CO({href_reg_reg_i_62_n_0,href_reg_reg_i_62_n_1,href_reg_reg_i_62_n_2,href_reg_reg_i_62_n_3}),
        .CYINIT(1'b1),
        .DI(pix_cnt_reg[3:0]),
        .O(NLW_href_reg_reg_i_62_O_UNCONNECTED[3:0]),
        .S({href_reg_i_82_n_0,href_reg_i_83_n_0,href_reg_i_84_n_0,href_reg_i_85_n_0}));
  CARRY4 href_reg_reg_i_72
       (.CI(1'b0),
        .CO({href_reg_reg_i_72_n_0,href_reg_reg_i_72_n_1,href_reg_reg_i_72_n_2,href_reg_reg_i_72_n_3}),
        .CYINIT(1'b1),
        .DI(line_cnt_reg[3:0]),
        .O(NLW_href_reg_reg_i_72_O_UNCONNECTED[3:0]),
        .S({href_reg_i_91_n_0,href_reg_i_92_n_0,href_reg_i_93_n_0,href_reg_i_94_n_0}));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[0]_i_4 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[3]),
        .O(\line_cnt[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[0]_i_5 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[2]),
        .O(\line_cnt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[0]_i_6 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[1]),
        .O(\line_cnt[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h51)) 
    \line_cnt[0]_i_7 
       (.I0(line_cnt_reg[0]),
        .I1(prev_vsync),
        .I2(out_vsync),
        .O(\line_cnt[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[12]_i_2 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[15]),
        .O(\line_cnt[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[12]_i_3 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[14]),
        .O(\line_cnt[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[12]_i_4 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[13]),
        .O(\line_cnt[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[12]_i_5 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[12]),
        .O(\line_cnt[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[4]_i_2 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[7]),
        .O(\line_cnt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[4]_i_3 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[6]),
        .O(\line_cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[4]_i_4 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[5]),
        .O(\line_cnt[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[4]_i_5 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[4]),
        .O(\line_cnt[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[8]_i_2 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[11]),
        .O(\line_cnt[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[8]_i_3 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[10]),
        .O(\line_cnt[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[8]_i_4 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[9]),
        .O(\line_cnt[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \line_cnt[8]_i_5 
       (.I0(prev_vsync),
        .I1(out_vsync),
        .I2(line_cnt_reg[8]),
        .O(\line_cnt[8]_i_5_n_0 ));
  FDPE \line_cnt_reg[0] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[0]_i_2_n_7 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[0]));
  CARRY4 \line_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\line_cnt_reg[0]_i_2_n_0 ,\line_cnt_reg[0]_i_2_n_1 ,\line_cnt_reg[0]_i_2_n_2 ,\line_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\line_cnt_reg[0]_i_2_n_4 ,\line_cnt_reg[0]_i_2_n_5 ,\line_cnt_reg[0]_i_2_n_6 ,\line_cnt_reg[0]_i_2_n_7 }),
        .S({\line_cnt[0]_i_4_n_0 ,\line_cnt[0]_i_5_n_0 ,\line_cnt[0]_i_6_n_0 ,\line_cnt[0]_i_7_n_0 }));
  FDPE \line_cnt_reg[10] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[8]_i_1_n_5 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[10]));
  FDPE \line_cnt_reg[11] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[8]_i_1_n_4 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[11]));
  FDPE \line_cnt_reg[12] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[12]_i_1_n_7 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[12]));
  CARRY4 \line_cnt_reg[12]_i_1 
       (.CI(\line_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_line_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\line_cnt_reg[12]_i_1_n_1 ,\line_cnt_reg[12]_i_1_n_2 ,\line_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_cnt_reg[12]_i_1_n_4 ,\line_cnt_reg[12]_i_1_n_5 ,\line_cnt_reg[12]_i_1_n_6 ,\line_cnt_reg[12]_i_1_n_7 }),
        .S({\line_cnt[12]_i_2_n_0 ,\line_cnt[12]_i_3_n_0 ,\line_cnt[12]_i_4_n_0 ,\line_cnt[12]_i_5_n_0 }));
  FDPE \line_cnt_reg[13] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[12]_i_1_n_6 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[13]));
  FDPE \line_cnt_reg[14] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[12]_i_1_n_5 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[14]));
  FDPE \line_cnt_reg[15] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[12]_i_1_n_4 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[15]));
  FDPE \line_cnt_reg[1] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[0]_i_2_n_6 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[1]));
  FDPE \line_cnt_reg[2] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[0]_i_2_n_5 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[2]));
  FDPE \line_cnt_reg[3] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[0]_i_2_n_4 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[3]));
  FDPE \line_cnt_reg[4] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[4]_i_1_n_7 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[4]));
  CARRY4 \line_cnt_reg[4]_i_1 
       (.CI(\line_cnt_reg[0]_i_2_n_0 ),
        .CO({\line_cnt_reg[4]_i_1_n_0 ,\line_cnt_reg[4]_i_1_n_1 ,\line_cnt_reg[4]_i_1_n_2 ,\line_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_cnt_reg[4]_i_1_n_4 ,\line_cnt_reg[4]_i_1_n_5 ,\line_cnt_reg[4]_i_1_n_6 ,\line_cnt_reg[4]_i_1_n_7 }),
        .S({\line_cnt[4]_i_2_n_0 ,\line_cnt[4]_i_3_n_0 ,\line_cnt[4]_i_4_n_0 ,\line_cnt[4]_i_5_n_0 }));
  FDPE \line_cnt_reg[5] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[4]_i_1_n_6 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[5]));
  FDPE \line_cnt_reg[6] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[4]_i_1_n_5 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[6]));
  FDPE \line_cnt_reg[7] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[4]_i_1_n_4 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[7]));
  FDPE \line_cnt_reg[8] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[8]_i_1_n_7 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[8]));
  CARRY4 \line_cnt_reg[8]_i_1 
       (.CI(\line_cnt_reg[4]_i_1_n_0 ),
        .CO({\line_cnt_reg[8]_i_1_n_0 ,\line_cnt_reg[8]_i_1_n_1 ,\line_cnt_reg[8]_i_1_n_2 ,\line_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_cnt_reg[8]_i_1_n_4 ,\line_cnt_reg[8]_i_1_n_5 ,\line_cnt_reg[8]_i_1_n_6 ,\line_cnt_reg[8]_i_1_n_7 }),
        .S({\line_cnt[8]_i_2_n_0 ,\line_cnt[8]_i_3_n_0 ,\line_cnt[8]_i_4_n_0 ,\line_cnt[8]_i_5_n_0 }));
  FDPE \line_cnt_reg[9] 
       (.C(pclk),
        .CE(\line_cnt_reg[15]_0 ),
        .D(\line_cnt_reg[8]_i_1_n_6 ),
        .PRE(prev_href_i_1_n_0),
        .Q(line_cnt_reg[9]));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \pix_cnt[0]_i_1 
       (.I0(pix_cnt_reg[4]),
        .I1(pix_cnt_reg[3]),
        .I2(pix_cnt_reg[0]),
        .I3(\pix_cnt[0]_i_3_n_0 ),
        .I4(\pix_cnt[0]_i_4_n_0 ),
        .O(\pix_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7F77FFFF)) 
    \pix_cnt[0]_i_10 
       (.I0(pix_cnt_reg[14]),
        .I1(pix_cnt_reg[13]),
        .I2(prev_href),
        .I3(out_href),
        .I4(pix_cnt_reg[15]),
        .O(\pix_cnt[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \pix_cnt[0]_i_3 
       (.I0(pix_cnt_reg[2]),
        .I1(pix_cnt_reg[1]),
        .I2(pix_cnt_reg[11]),
        .I3(pix_cnt_reg[12]),
        .I4(\pix_cnt[0]_i_10_n_0 ),
        .O(\pix_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pix_cnt[0]_i_4 
       (.I0(pix_cnt_reg[9]),
        .I1(pix_cnt_reg[10]),
        .I2(pix_cnt_reg[7]),
        .I3(pix_cnt_reg[8]),
        .I4(pix_cnt_reg[6]),
        .I5(pix_cnt_reg[5]),
        .O(\pix_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pix_cnt[0]_i_5 
       (.I0(prev_href),
        .I1(out_href),
        .O(\pix_cnt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[0]_i_6 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[3]),
        .O(\pix_cnt[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[0]_i_7 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[2]),
        .O(\pix_cnt[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[0]_i_8 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[1]),
        .O(\pix_cnt[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h51)) 
    \pix_cnt[0]_i_9 
       (.I0(pix_cnt_reg[0]),
        .I1(out_href),
        .I2(prev_href),
        .O(\pix_cnt[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB0)) 
    \pix_cnt[12]_i_2 
       (.I0(prev_href),
        .I1(out_href),
        .I2(pix_cnt_reg[15]),
        .O(\pix_cnt[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[12]_i_3 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[14]),
        .O(\pix_cnt[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[12]_i_4 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[13]),
        .O(\pix_cnt[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[12]_i_5 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[12]),
        .O(\pix_cnt[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[4]_i_2 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[7]),
        .O(\pix_cnt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[4]_i_3 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[6]),
        .O(\pix_cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[4]_i_4 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[5]),
        .O(\pix_cnt[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[4]_i_5 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[4]),
        .O(\pix_cnt[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[8]_i_2 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[11]),
        .O(\pix_cnt[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[8]_i_3 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[10]),
        .O(\pix_cnt[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[8]_i_4 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[9]),
        .O(\pix_cnt[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \pix_cnt[8]_i_5 
       (.I0(out_href),
        .I1(prev_href),
        .I2(pix_cnt_reg[8]),
        .O(\pix_cnt[8]_i_5_n_0 ));
  FDCE \pix_cnt_reg[0] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_7 ),
        .Q(pix_cnt_reg[0]));
  CARRY4 \pix_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pix_cnt_reg[0]_i_2_n_0 ,\pix_cnt_reg[0]_i_2_n_1 ,\pix_cnt_reg[0]_i_2_n_2 ,\pix_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pix_cnt[0]_i_5_n_0 }),
        .O({\pix_cnt_reg[0]_i_2_n_4 ,\pix_cnt_reg[0]_i_2_n_5 ,\pix_cnt_reg[0]_i_2_n_6 ,\pix_cnt_reg[0]_i_2_n_7 }),
        .S({\pix_cnt[0]_i_6_n_0 ,\pix_cnt[0]_i_7_n_0 ,\pix_cnt[0]_i_8_n_0 ,\pix_cnt[0]_i_9_n_0 }));
  FDCE \pix_cnt_reg[10] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_5 ),
        .Q(pix_cnt_reg[10]));
  FDCE \pix_cnt_reg[11] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_4 ),
        .Q(pix_cnt_reg[11]));
  FDCE \pix_cnt_reg[12] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_7 ),
        .Q(pix_cnt_reg[12]));
  CARRY4 \pix_cnt_reg[12]_i_1 
       (.CI(\pix_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pix_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\pix_cnt_reg[12]_i_1_n_1 ,\pix_cnt_reg[12]_i_1_n_2 ,\pix_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[12]_i_1_n_4 ,\pix_cnt_reg[12]_i_1_n_5 ,\pix_cnt_reg[12]_i_1_n_6 ,\pix_cnt_reg[12]_i_1_n_7 }),
        .S({\pix_cnt[12]_i_2_n_0 ,\pix_cnt[12]_i_3_n_0 ,\pix_cnt[12]_i_4_n_0 ,\pix_cnt[12]_i_5_n_0 }));
  FDCE \pix_cnt_reg[13] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_6 ),
        .Q(pix_cnt_reg[13]));
  FDCE \pix_cnt_reg[14] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_5 ),
        .Q(pix_cnt_reg[14]));
  FDCE \pix_cnt_reg[15] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[12]_i_1_n_4 ),
        .Q(pix_cnt_reg[15]));
  FDCE \pix_cnt_reg[1] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_6 ),
        .Q(pix_cnt_reg[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_5 ),
        .Q(pix_cnt_reg[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[0]_i_2_n_4 ),
        .Q(pix_cnt_reg[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_7 ),
        .Q(pix_cnt_reg[4]));
  CARRY4 \pix_cnt_reg[4]_i_1 
       (.CI(\pix_cnt_reg[0]_i_2_n_0 ),
        .CO({\pix_cnt_reg[4]_i_1_n_0 ,\pix_cnt_reg[4]_i_1_n_1 ,\pix_cnt_reg[4]_i_1_n_2 ,\pix_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[4]_i_1_n_4 ,\pix_cnt_reg[4]_i_1_n_5 ,\pix_cnt_reg[4]_i_1_n_6 ,\pix_cnt_reg[4]_i_1_n_7 }),
        .S({\pix_cnt[4]_i_2_n_0 ,\pix_cnt[4]_i_3_n_0 ,\pix_cnt[4]_i_4_n_0 ,\pix_cnt[4]_i_5_n_0 }));
  FDCE \pix_cnt_reg[5] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_6 ),
        .Q(pix_cnt_reg[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_5 ),
        .Q(pix_cnt_reg[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[4]_i_1_n_4 ),
        .Q(pix_cnt_reg[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_7 ),
        .Q(pix_cnt_reg[8]));
  CARRY4 \pix_cnt_reg[8]_i_1 
       (.CI(\pix_cnt_reg[4]_i_1_n_0 ),
        .CO({\pix_cnt_reg[8]_i_1_n_0 ,\pix_cnt_reg[8]_i_1_n_1 ,\pix_cnt_reg[8]_i_1_n_2 ,\pix_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pix_cnt_reg[8]_i_1_n_4 ,\pix_cnt_reg[8]_i_1_n_5 ,\pix_cnt_reg[8]_i_1_n_6 ,\pix_cnt_reg[8]_i_1_n_7 }),
        .S({\pix_cnt[8]_i_2_n_0 ,\pix_cnt[8]_i_3_n_0 ,\pix_cnt[8]_i_4_n_0 ,\pix_cnt[8]_i_5_n_0 }));
  FDCE \pix_cnt_reg[9] 
       (.C(pclk),
        .CE(\pix_cnt[0]_i_1_n_0 ),
        .CLR(prev_href_i_1_n_0),
        .D(\pix_cnt_reg[8]_i_1_n_6 ),
        .Q(pix_cnt_reg[9]));
  LUT3 #(
    .INIT(8'hF7)) 
    prev_href_i_1
       (.I0(s_crop_en),
        .I1(rst_n),
        .I2(s_module_reset),
        .O(prev_href_i_1_n_0));
  FDCE prev_href_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_href),
        .Q(prev_href));
  FDCE prev_vsync_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(prev_href_i_1_n_0),
        .D(out_vsync),
        .Q(prev_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_dscale
   (prev_vsync,
    prev_href,
    out_rgb,
    out_href,
    out_pclk,
    pclk,
    prev_vsync_reg_0,
    crop_href_o,
    \pix_cnt_reg[1]_0 ,
    \line_cnt_reg[0]_0 ,
    s_dscale_en,
    rst_n,
    s_module_reset,
    E,
    Q);
  output prev_vsync;
  output prev_href;
  output [23:0]out_rgb;
  output out_href;
  output out_pclk;
  input pclk;
  input prev_vsync_reg_0;
  input crop_href_o;
  input [3:0]\pix_cnt_reg[1]_0 ;
  input [3:0]\line_cnt_reg[0]_0 ;
  input s_dscale_en;
  input rst_n;
  input s_module_reset;
  input [0:0]E;
  input [23:0]Q;

  wire [0:0]E;
  wire [23:0]Q;
  wire crop_href_o;
  wire [23:0]data_r;
  wire data_r0;
  wire data_r1;
  wire dscale_pclk;
  wire [3:0]line_cnt;
  wire line_cnt1;
  wire \line_cnt[0]_i_1__0_n_0 ;
  wire \line_cnt[1]_i_1_n_0 ;
  wire \line_cnt[2]_i_1_n_0 ;
  wire \line_cnt[3]_i_2_n_0 ;
  wire \line_cnt[3]_i_4_n_0 ;
  wire \line_cnt[3]_i_5_n_0 ;
  wire [3:0]\line_cnt_reg[0]_0 ;
  wire out_href;
  wire out_pclk;
  wire out_pclk_r_i_2_n_0;
  wire [23:0]out_rgb;
  wire \out_rgb[23]_INST_0_i_1_n_0 ;
  wire p_0_in;
  wire pclk;
  wire \pix_cnt[0]_i_1__0_n_0 ;
  wire \pix_cnt[1]_i_1_n_0 ;
  wire \pix_cnt[2]_i_1_n_0 ;
  wire \pix_cnt[3]_i_1_n_0 ;
  wire \pix_cnt[3]_i_2_n_0 ;
  wire [3:0]pix_cnt_reg;
  wire [3:0]\pix_cnt_reg[1]_0 ;
  wire prev_href;
  wire prev_vsync;
  wire prev_vsync_reg_0;
  wire rst_n;
  wire s_dscale_en;
  wire s_module_reset;

  LUT5 #(
    .INIT(32'h00010000)) 
    \data_r[23]_i_1 
       (.I0(pix_cnt_reg[1]),
        .I1(pix_cnt_reg[0]),
        .I2(pix_cnt_reg[3]),
        .I3(pix_cnt_reg[2]),
        .I4(data_r1),
        .O(data_r0));
  LUT4 #(
    .INIT(16'h0001)) 
    \data_r[23]_i_2 
       (.I0(line_cnt[2]),
        .I1(line_cnt[3]),
        .I2(line_cnt[1]),
        .I3(line_cnt[0]),
        .O(data_r1));
  FDCE \data_r_reg[0] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[0]),
        .Q(data_r[0]));
  FDCE \data_r_reg[10] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[10]),
        .Q(data_r[10]));
  FDCE \data_r_reg[11] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[11]),
        .Q(data_r[11]));
  FDCE \data_r_reg[12] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[12]),
        .Q(data_r[12]));
  FDCE \data_r_reg[13] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[13]),
        .Q(data_r[13]));
  FDCE \data_r_reg[14] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[14]),
        .Q(data_r[14]));
  FDCE \data_r_reg[15] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[15]),
        .Q(data_r[15]));
  FDCE \data_r_reg[16] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[16]),
        .Q(data_r[16]));
  FDCE \data_r_reg[17] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[17]),
        .Q(data_r[17]));
  FDCE \data_r_reg[18] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[18]),
        .Q(data_r[18]));
  FDCE \data_r_reg[19] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[19]),
        .Q(data_r[19]));
  FDCE \data_r_reg[1] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[1]),
        .Q(data_r[1]));
  FDCE \data_r_reg[20] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[20]),
        .Q(data_r[20]));
  FDCE \data_r_reg[21] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[21]),
        .Q(data_r[21]));
  FDCE \data_r_reg[22] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[22]),
        .Q(data_r[22]));
  FDCE \data_r_reg[23] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[23]),
        .Q(data_r[23]));
  FDCE \data_r_reg[2] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[2]),
        .Q(data_r[2]));
  FDCE \data_r_reg[3] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[3]),
        .Q(data_r[3]));
  FDCE \data_r_reg[4] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[4]),
        .Q(data_r[4]));
  FDCE \data_r_reg[5] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[5]),
        .Q(data_r[5]));
  FDCE \data_r_reg[6] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[6]),
        .Q(data_r[6]));
  FDCE \data_r_reg[7] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[7]),
        .Q(data_r[7]));
  FDCE \data_r_reg[8] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[8]),
        .Q(data_r[8]));
  FDCE \data_r_reg[9] 
       (.C(pclk),
        .CE(data_r0),
        .CLR(out_pclk_r_i_2_n_0),
        .D(Q[9]),
        .Q(data_r[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \line_cnt[0]_i_1__0 
       (.I0(line_cnt[0]),
        .I1(line_cnt1),
        .I2(prev_vsync_reg_0),
        .I3(prev_vsync),
        .O(\line_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h14001414)) 
    \line_cnt[1]_i_1 
       (.I0(line_cnt1),
        .I1(line_cnt[0]),
        .I2(line_cnt[1]),
        .I3(prev_vsync_reg_0),
        .I4(prev_vsync),
        .O(\line_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1540000015401540)) 
    \line_cnt[2]_i_1 
       (.I0(line_cnt1),
        .I1(line_cnt[0]),
        .I2(line_cnt[1]),
        .I3(line_cnt[2]),
        .I4(prev_vsync_reg_0),
        .I5(prev_vsync),
        .O(\line_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015554000)) 
    \line_cnt[3]_i_2 
       (.I0(line_cnt1),
        .I1(line_cnt[1]),
        .I2(line_cnt[0]),
        .I3(line_cnt[2]),
        .I4(line_cnt[3]),
        .I5(\line_cnt[3]_i_4_n_0 ),
        .O(\line_cnt[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \line_cnt[3]_i_3 
       (.I0(line_cnt[3]),
        .I1(\line_cnt_reg[0]_0 [3]),
        .I2(\line_cnt[3]_i_5_n_0 ),
        .O(line_cnt1));
  LUT2 #(
    .INIT(4'h2)) 
    \line_cnt[3]_i_4 
       (.I0(prev_vsync),
        .I1(prev_vsync_reg_0),
        .O(\line_cnt[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \line_cnt[3]_i_5 
       (.I0(line_cnt[0]),
        .I1(\line_cnt_reg[0]_0 [0]),
        .I2(\line_cnt_reg[0]_0 [2]),
        .I3(line_cnt[2]),
        .I4(\line_cnt_reg[0]_0 [1]),
        .I5(line_cnt[1]),
        .O(\line_cnt[3]_i_5_n_0 ));
  FDCE \line_cnt_reg[0] 
       (.C(pclk),
        .CE(E),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\line_cnt[0]_i_1__0_n_0 ),
        .Q(line_cnt[0]));
  FDCE \line_cnt_reg[1] 
       (.C(pclk),
        .CE(E),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\line_cnt[1]_i_1_n_0 ),
        .Q(line_cnt[1]));
  FDCE \line_cnt_reg[2] 
       (.C(pclk),
        .CE(E),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\line_cnt[2]_i_1_n_0 ),
        .Q(line_cnt[2]));
  FDCE \line_cnt_reg[3] 
       (.C(pclk),
        .CE(E),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\line_cnt[3]_i_2_n_0 ),
        .Q(line_cnt[3]));
  LUT6 #(
    .INIT(64'h0001FFFF00000000)) 
    out_href_INST_0
       (.I0(line_cnt[0]),
        .I1(line_cnt[1]),
        .I2(line_cnt[3]),
        .I3(line_cnt[2]),
        .I4(s_dscale_en),
        .I5(crop_href_o),
        .O(out_href));
  LUT3 #(
    .INIT(8'hB8)) 
    out_pclk_INST_0
       (.I0(dscale_pclk),
        .I1(s_dscale_en),
        .I2(pclk),
        .O(out_pclk));
  LUT4 #(
    .INIT(16'h0001)) 
    out_pclk_r_i_1
       (.I0(pix_cnt_reg[2]),
        .I1(pix_cnt_reg[3]),
        .I2(pix_cnt_reg[1]),
        .I3(pix_cnt_reg[0]),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hF7)) 
    out_pclk_r_i_2
       (.I0(s_dscale_en),
        .I1(rst_n),
        .I2(s_module_reset),
        .O(out_pclk_r_i_2_n_0));
  FDCE out_pclk_r_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(p_0_in),
        .Q(dscale_pclk));
  LUT4 #(
    .INIT(16'h88F0)) 
    \out_rgb[0]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[0]),
        .I2(Q[0]),
        .I3(s_dscale_en),
        .O(out_rgb[0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[10]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[10]),
        .I2(s_dscale_en),
        .I3(Q[10]),
        .O(out_rgb[10]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[11]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[11]),
        .I2(s_dscale_en),
        .I3(Q[11]),
        .O(out_rgb[11]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[12]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[12]),
        .I2(s_dscale_en),
        .I3(Q[12]),
        .O(out_rgb[12]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[13]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[13]),
        .I2(s_dscale_en),
        .I3(Q[13]),
        .O(out_rgb[13]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[14]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[14]),
        .I2(s_dscale_en),
        .I3(Q[14]),
        .O(out_rgb[14]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[15]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[15]),
        .I2(s_dscale_en),
        .I3(Q[15]),
        .O(out_rgb[15]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[16]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[16]),
        .I2(s_dscale_en),
        .I3(Q[16]),
        .O(out_rgb[16]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[17]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[17]),
        .I2(s_dscale_en),
        .I3(Q[17]),
        .O(out_rgb[17]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[18]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[18]),
        .I2(s_dscale_en),
        .I3(Q[18]),
        .O(out_rgb[18]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[19]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[19]),
        .I2(s_dscale_en),
        .I3(Q[19]),
        .O(out_rgb[19]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \out_rgb[1]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[1]),
        .I2(Q[1]),
        .I3(s_dscale_en),
        .O(out_rgb[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[20]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[20]),
        .I2(s_dscale_en),
        .I3(Q[20]),
        .O(out_rgb[20]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[21]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[21]),
        .I2(s_dscale_en),
        .I3(Q[21]),
        .O(out_rgb[21]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[22]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[22]),
        .I2(s_dscale_en),
        .I3(Q[22]),
        .O(out_rgb[22]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[23]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[23]),
        .I2(s_dscale_en),
        .I3(Q[23]),
        .O(out_rgb[23]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \out_rgb[23]_INST_0_i_1 
       (.I0(line_cnt[2]),
        .I1(line_cnt[3]),
        .I2(line_cnt[1]),
        .I3(line_cnt[0]),
        .I4(crop_href_o),
        .I5(prev_vsync_reg_0),
        .O(\out_rgb[23]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88F0)) 
    \out_rgb[2]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[2]),
        .I2(Q[2]),
        .I3(s_dscale_en),
        .O(out_rgb[2]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \out_rgb[3]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[3]),
        .I2(Q[3]),
        .I3(s_dscale_en),
        .O(out_rgb[3]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \out_rgb[4]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[4]),
        .I2(Q[4]),
        .I3(s_dscale_en),
        .O(out_rgb[4]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \out_rgb[5]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[5]),
        .I2(Q[5]),
        .I3(s_dscale_en),
        .O(out_rgb[5]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \out_rgb[6]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[6]),
        .I2(Q[6]),
        .I3(s_dscale_en),
        .O(out_rgb[6]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \out_rgb[7]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[7]),
        .I2(Q[7]),
        .I3(s_dscale_en),
        .O(out_rgb[7]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[8]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[8]),
        .I2(s_dscale_en),
        .I3(Q[8]),
        .O(out_rgb[8]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \out_rgb[9]_INST_0 
       (.I0(\out_rgb[23]_INST_0_i_1_n_0 ),
        .I1(data_r[9]),
        .I2(s_dscale_en),
        .I3(Q[9]),
        .O(out_rgb[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006F)) 
    \pix_cnt[0]_i_1__0 
       (.I0(pix_cnt_reg[3]),
        .I1(\pix_cnt_reg[1]_0 [3]),
        .I2(\pix_cnt[3]_i_2_n_0 ),
        .I3(pix_cnt_reg[0]),
        .O(\pix_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h006F6F00)) 
    \pix_cnt[1]_i_1 
       (.I0(pix_cnt_reg[3]),
        .I1(\pix_cnt_reg[1]_0 [3]),
        .I2(\pix_cnt[3]_i_2_n_0 ),
        .I3(pix_cnt_reg[1]),
        .I4(pix_cnt_reg[0]),
        .O(\pix_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h006F6F006F006F00)) 
    \pix_cnt[2]_i_1 
       (.I0(pix_cnt_reg[3]),
        .I1(\pix_cnt_reg[1]_0 [3]),
        .I2(\pix_cnt[3]_i_2_n_0 ),
        .I3(pix_cnt_reg[2]),
        .I4(pix_cnt_reg[1]),
        .I5(pix_cnt_reg[0]),
        .O(\pix_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h452A2A2A2A2A2A2A)) 
    \pix_cnt[3]_i_1 
       (.I0(pix_cnt_reg[3]),
        .I1(\pix_cnt_reg[1]_0 [3]),
        .I2(\pix_cnt[3]_i_2_n_0 ),
        .I3(pix_cnt_reg[2]),
        .I4(pix_cnt_reg[0]),
        .I5(pix_cnt_reg[1]),
        .O(\pix_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \pix_cnt[3]_i_2 
       (.I0(pix_cnt_reg[0]),
        .I1(\pix_cnt_reg[1]_0 [0]),
        .I2(\pix_cnt_reg[1]_0 [2]),
        .I3(pix_cnt_reg[2]),
        .I4(\pix_cnt_reg[1]_0 [1]),
        .I5(pix_cnt_reg[1]),
        .O(\pix_cnt[3]_i_2_n_0 ));
  FDCE \pix_cnt_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\pix_cnt[0]_i_1__0_n_0 ),
        .Q(pix_cnt_reg[0]));
  FDCE \pix_cnt_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\pix_cnt[1]_i_1_n_0 ),
        .Q(pix_cnt_reg[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\pix_cnt[2]_i_1_n_0 ),
        .Q(pix_cnt_reg[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(\pix_cnt[3]_i_1_n_0 ),
        .Q(pix_cnt_reg[3]));
  FDCE prev_href_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(crop_href_o),
        .Q(prev_href));
  FDCE prev_vsync_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(out_pclk_r_i_2_n_0),
        .D(prev_vsync_reg_0),
        .Q(prev_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_hist_equ
   (s_hist_equ_en_reg,
    prev_vsync,
    D,
    in_href,
    in_vsync,
    pclk,
    out_href,
    out_data,
    out_vsync,
    \hist_sum_data_3_reg[0]_0 ,
    cur_ram02_out,
    Q,
    hist_sum_data_20_0,
    s_hist_equ_en,
    rst_n,
    s_module_reset);
  output s_hist_equ_en_reg;
  output prev_vsync;
  output [7:0]D;
  output in_href;
  output in_vsync;
  input pclk;
  input out_href;
  input [7:0]out_data;
  input out_vsync;
  input \hist_sum_data_3_reg[0]_0 ;
  input cur_ram02_out;
  input [7:0]Q;
  input [7:0]hist_sum_data_20_0;
  input s_hist_equ_en;
  input rst_n;
  input s_module_reset;

  wire [7:0]D;
  wire [7:0]Q;
  wire cur_ram02_out;
  wire \hist_addr[4]_i_1_n_0 ;
  wire \hist_addr[5]_i_2_n_0 ;
  wire [7:0]hist_addr_reg__0;
  wire hist_equ_href;
  wire hist_equ_vsync;
  wire hist_ram_data_n_11;
  wire hist_ram_data_n_12;
  wire hist_ram_data_n_13;
  wire hist_ram_data_n_14;
  wire hist_ram_data_n_15;
  wire hist_ram_data_n_16;
  wire hist_ram_data_n_17;
  wire hist_ram_data_n_18;
  wire hist_ram_data_n_19;
  wire hist_ram_data_n_2;
  wire hist_ram_data_n_20;
  wire hist_ram_data_n_21;
  wire hist_ram_data_n_22;
  wire hist_ram_data_n_23;
  wire hist_ram_data_n_24;
  wire hist_ram_data_n_25;
  wire hist_ram_data_n_26;
  wire hist_ram_data_n_27;
  wire hist_ram_data_n_28;
  wire hist_ram_data_n_29;
  wire hist_ram_data_n_3;
  wire hist_ram_data_n_30;
  wire hist_ram_data_n_31;
  wire hist_ram_data_n_32;
  wire hist_ram_data_n_33;
  wire hist_ram_data_n_4;
  wire hist_ram_data_n_5;
  wire hist_ram_data_n_6;
  wire hist_ram_data_n_7;
  wire hist_ram_data_n_8;
  wire hist_sum_addr_0_reg_c_n_0;
  wire hist_sum_addr_1_reg_c_n_0;
  wire hist_sum_addr_2_reg_c_n_0;
  wire \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ;
  wire \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ;
  wire \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ;
  wire \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ;
  wire \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ;
  wire \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ;
  wire \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ;
  wire \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ;
  wire \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ;
  wire \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ;
  wire \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ;
  wire \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ;
  wire \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ;
  wire \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ;
  wire \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ;
  wire \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ;
  wire hist_sum_addr_3_reg_c_n_0;
  wire \hist_sum_addr_4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ;
  wire \hist_sum_addr_4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ;
  wire \hist_sum_addr_4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ;
  wire \hist_sum_addr_4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ;
  wire \hist_sum_addr_4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ;
  wire \hist_sum_addr_4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ;
  wire \hist_sum_addr_4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ;
  wire \hist_sum_addr_4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ;
  wire hist_sum_addr_4_reg_c_n_0;
  wire hist_sum_addr_4_reg_gate__0_n_0;
  wire hist_sum_addr_4_reg_gate__1_n_0;
  wire hist_sum_addr_4_reg_gate__2_n_0;
  wire hist_sum_addr_4_reg_gate__3_n_0;
  wire hist_sum_addr_4_reg_gate__4_n_0;
  wire hist_sum_addr_4_reg_gate__5_n_0;
  wire hist_sum_addr_4_reg_gate__6_n_0;
  wire hist_sum_addr_4_reg_gate_n_0;
  wire [7:0]hist_sum_addr_5;
  wire [22:0]hist_sum_data_1_reg;
  wire [7:0]hist_sum_data_20_0;
  wire hist_sum_data_20__0_n_100;
  wire hist_sum_data_20__0_n_101;
  wire hist_sum_data_20__0_n_102;
  wire hist_sum_data_20__0_n_103;
  wire hist_sum_data_20__0_n_104;
  wire hist_sum_data_20__0_n_105;
  wire hist_sum_data_20__0_n_58;
  wire hist_sum_data_20__0_n_59;
  wire hist_sum_data_20__0_n_60;
  wire hist_sum_data_20__0_n_61;
  wire hist_sum_data_20__0_n_62;
  wire hist_sum_data_20__0_n_63;
  wire hist_sum_data_20__0_n_64;
  wire hist_sum_data_20__0_n_65;
  wire hist_sum_data_20__0_n_66;
  wire hist_sum_data_20__0_n_67;
  wire hist_sum_data_20__0_n_68;
  wire hist_sum_data_20__0_n_69;
  wire hist_sum_data_20__0_n_70;
  wire hist_sum_data_20__0_n_71;
  wire hist_sum_data_20__0_n_72;
  wire hist_sum_data_20__0_n_73;
  wire hist_sum_data_20__0_n_74;
  wire hist_sum_data_20__0_n_75;
  wire hist_sum_data_20__0_n_76;
  wire hist_sum_data_20__0_n_77;
  wire hist_sum_data_20__0_n_78;
  wire hist_sum_data_20__0_n_79;
  wire hist_sum_data_20__0_n_80;
  wire hist_sum_data_20__0_n_81;
  wire hist_sum_data_20__0_n_82;
  wire hist_sum_data_20__0_n_83;
  wire hist_sum_data_20__0_n_84;
  wire hist_sum_data_20__0_n_85;
  wire hist_sum_data_20__0_n_86;
  wire hist_sum_data_20__0_n_87;
  wire hist_sum_data_20__0_n_88;
  wire hist_sum_data_20__0_n_89;
  wire hist_sum_data_20__0_n_90;
  wire hist_sum_data_20__0_n_91;
  wire hist_sum_data_20__0_n_92;
  wire hist_sum_data_20__0_n_93;
  wire hist_sum_data_20__0_n_94;
  wire hist_sum_data_20__0_n_95;
  wire hist_sum_data_20__0_n_96;
  wire hist_sum_data_20__0_n_97;
  wire hist_sum_data_20__0_n_98;
  wire hist_sum_data_20__0_n_99;
  wire hist_sum_data_20_i_10_n_0;
  wire hist_sum_data_20_i_11_n_0;
  wire hist_sum_data_20_i_2_n_0;
  wire hist_sum_data_20_i_2_n_1;
  wire hist_sum_data_20_i_2_n_2;
  wire hist_sum_data_20_i_2_n_3;
  wire hist_sum_data_20_i_3_n_0;
  wire hist_sum_data_20_i_3_n_1;
  wire hist_sum_data_20_i_3_n_2;
  wire hist_sum_data_20_i_3_n_3;
  wire hist_sum_data_20_i_4_n_0;
  wire hist_sum_data_20_i_5_n_0;
  wire hist_sum_data_20_i_6_n_0;
  wire hist_sum_data_20_i_7_n_0;
  wire hist_sum_data_20_i_8_n_0;
  wire hist_sum_data_20_i_9_n_0;
  wire hist_sum_data_20_n_100;
  wire hist_sum_data_20_n_101;
  wire hist_sum_data_20_n_102;
  wire hist_sum_data_20_n_103;
  wire hist_sum_data_20_n_104;
  wire hist_sum_data_20_n_105;
  wire hist_sum_data_20_n_106;
  wire hist_sum_data_20_n_107;
  wire hist_sum_data_20_n_108;
  wire hist_sum_data_20_n_109;
  wire hist_sum_data_20_n_110;
  wire hist_sum_data_20_n_111;
  wire hist_sum_data_20_n_112;
  wire hist_sum_data_20_n_113;
  wire hist_sum_data_20_n_114;
  wire hist_sum_data_20_n_115;
  wire hist_sum_data_20_n_116;
  wire hist_sum_data_20_n_117;
  wire hist_sum_data_20_n_118;
  wire hist_sum_data_20_n_119;
  wire hist_sum_data_20_n_120;
  wire hist_sum_data_20_n_121;
  wire hist_sum_data_20_n_122;
  wire hist_sum_data_20_n_123;
  wire hist_sum_data_20_n_124;
  wire hist_sum_data_20_n_125;
  wire hist_sum_data_20_n_126;
  wire hist_sum_data_20_n_127;
  wire hist_sum_data_20_n_128;
  wire hist_sum_data_20_n_129;
  wire hist_sum_data_20_n_130;
  wire hist_sum_data_20_n_131;
  wire hist_sum_data_20_n_132;
  wire hist_sum_data_20_n_133;
  wire hist_sum_data_20_n_134;
  wire hist_sum_data_20_n_135;
  wire hist_sum_data_20_n_136;
  wire hist_sum_data_20_n_137;
  wire hist_sum_data_20_n_138;
  wire hist_sum_data_20_n_139;
  wire hist_sum_data_20_n_140;
  wire hist_sum_data_20_n_141;
  wire hist_sum_data_20_n_142;
  wire hist_sum_data_20_n_143;
  wire hist_sum_data_20_n_144;
  wire hist_sum_data_20_n_145;
  wire hist_sum_data_20_n_146;
  wire hist_sum_data_20_n_147;
  wire hist_sum_data_20_n_148;
  wire hist_sum_data_20_n_149;
  wire hist_sum_data_20_n_150;
  wire hist_sum_data_20_n_151;
  wire hist_sum_data_20_n_152;
  wire hist_sum_data_20_n_153;
  wire hist_sum_data_20_n_58;
  wire hist_sum_data_20_n_59;
  wire hist_sum_data_20_n_60;
  wire hist_sum_data_20_n_61;
  wire hist_sum_data_20_n_62;
  wire hist_sum_data_20_n_63;
  wire hist_sum_data_20_n_64;
  wire hist_sum_data_20_n_65;
  wire hist_sum_data_20_n_66;
  wire hist_sum_data_20_n_67;
  wire hist_sum_data_20_n_68;
  wire hist_sum_data_20_n_69;
  wire hist_sum_data_20_n_70;
  wire hist_sum_data_20_n_71;
  wire hist_sum_data_20_n_72;
  wire hist_sum_data_20_n_73;
  wire hist_sum_data_20_n_74;
  wire hist_sum_data_20_n_75;
  wire hist_sum_data_20_n_76;
  wire hist_sum_data_20_n_77;
  wire hist_sum_data_20_n_78;
  wire hist_sum_data_20_n_79;
  wire hist_sum_data_20_n_80;
  wire hist_sum_data_20_n_81;
  wire hist_sum_data_20_n_82;
  wire hist_sum_data_20_n_83;
  wire hist_sum_data_20_n_84;
  wire hist_sum_data_20_n_85;
  wire hist_sum_data_20_n_86;
  wire hist_sum_data_20_n_87;
  wire hist_sum_data_20_n_88;
  wire hist_sum_data_20_n_89;
  wire hist_sum_data_20_n_90;
  wire hist_sum_data_20_n_91;
  wire hist_sum_data_20_n_92;
  wire hist_sum_data_20_n_93;
  wire hist_sum_data_20_n_94;
  wire hist_sum_data_20_n_95;
  wire hist_sum_data_20_n_96;
  wire hist_sum_data_20_n_97;
  wire hist_sum_data_20_n_98;
  wire hist_sum_data_20_n_99;
  wire [30:0]hist_sum_data_21;
  wire [30:0]hist_sum_data_2_reg__0;
  wire [19:0]hist_sum_data_3;
  wire \hist_sum_data_3[0]_i_100_n_0 ;
  wire \hist_sum_data_3[0]_i_101_n_0 ;
  wire \hist_sum_data_3[0]_i_102_n_0 ;
  wire \hist_sum_data_3[0]_i_103_n_0 ;
  wire \hist_sum_data_3[0]_i_104_n_0 ;
  wire \hist_sum_data_3[0]_i_105_n_0 ;
  wire \hist_sum_data_3[0]_i_106_n_0 ;
  wire \hist_sum_data_3[0]_i_107_n_0 ;
  wire \hist_sum_data_3[0]_i_10_n_0 ;
  wire \hist_sum_data_3[0]_i_111_n_0 ;
  wire \hist_sum_data_3[0]_i_112_n_0 ;
  wire \hist_sum_data_3[0]_i_113_n_0 ;
  wire \hist_sum_data_3[0]_i_114_n_0 ;
  wire \hist_sum_data_3[0]_i_115_n_0 ;
  wire \hist_sum_data_3[0]_i_116_n_0 ;
  wire \hist_sum_data_3[0]_i_117_n_0 ;
  wire \hist_sum_data_3[0]_i_118_n_0 ;
  wire \hist_sum_data_3[0]_i_119_n_0 ;
  wire \hist_sum_data_3[0]_i_11_n_0 ;
  wire \hist_sum_data_3[0]_i_120_n_0 ;
  wire \hist_sum_data_3[0]_i_121_n_0 ;
  wire \hist_sum_data_3[0]_i_122_n_0 ;
  wire \hist_sum_data_3[0]_i_123_n_0 ;
  wire \hist_sum_data_3[0]_i_124_n_0 ;
  wire \hist_sum_data_3[0]_i_125_n_0 ;
  wire \hist_sum_data_3[0]_i_126_n_0 ;
  wire \hist_sum_data_3[0]_i_127_n_0 ;
  wire \hist_sum_data_3[0]_i_128_n_0 ;
  wire \hist_sum_data_3[0]_i_129_n_0 ;
  wire \hist_sum_data_3[0]_i_130_n_0 ;
  wire \hist_sum_data_3[0]_i_131_n_0 ;
  wire \hist_sum_data_3[0]_i_132_n_0 ;
  wire \hist_sum_data_3[0]_i_133_n_0 ;
  wire \hist_sum_data_3[0]_i_134_n_0 ;
  wire \hist_sum_data_3[0]_i_135_n_0 ;
  wire \hist_sum_data_3[0]_i_136_n_0 ;
  wire \hist_sum_data_3[0]_i_137_n_0 ;
  wire \hist_sum_data_3[0]_i_13_n_0 ;
  wire \hist_sum_data_3[0]_i_141_n_0 ;
  wire \hist_sum_data_3[0]_i_142_n_0 ;
  wire \hist_sum_data_3[0]_i_143_n_0 ;
  wire \hist_sum_data_3[0]_i_144_n_0 ;
  wire \hist_sum_data_3[0]_i_145_n_0 ;
  wire \hist_sum_data_3[0]_i_146_n_0 ;
  wire \hist_sum_data_3[0]_i_147_n_0 ;
  wire \hist_sum_data_3[0]_i_148_n_0 ;
  wire \hist_sum_data_3[0]_i_149_n_0 ;
  wire \hist_sum_data_3[0]_i_14_n_0 ;
  wire \hist_sum_data_3[0]_i_150_n_0 ;
  wire \hist_sum_data_3[0]_i_151_n_0 ;
  wire \hist_sum_data_3[0]_i_152_n_0 ;
  wire \hist_sum_data_3[0]_i_153_n_0 ;
  wire \hist_sum_data_3[0]_i_154_n_0 ;
  wire \hist_sum_data_3[0]_i_155_n_0 ;
  wire \hist_sum_data_3[0]_i_157_n_0 ;
  wire \hist_sum_data_3[0]_i_158_n_0 ;
  wire \hist_sum_data_3[0]_i_159_n_0 ;
  wire \hist_sum_data_3[0]_i_15_n_0 ;
  wire \hist_sum_data_3[0]_i_160_n_0 ;
  wire \hist_sum_data_3[0]_i_161_n_0 ;
  wire \hist_sum_data_3[0]_i_162_n_0 ;
  wire \hist_sum_data_3[0]_i_163_n_0 ;
  wire \hist_sum_data_3[0]_i_164_n_0 ;
  wire \hist_sum_data_3[0]_i_165_n_0 ;
  wire \hist_sum_data_3[0]_i_166_n_0 ;
  wire \hist_sum_data_3[0]_i_167_n_0 ;
  wire \hist_sum_data_3[0]_i_168_n_0 ;
  wire \hist_sum_data_3[0]_i_169_n_0 ;
  wire \hist_sum_data_3[0]_i_16_n_0 ;
  wire \hist_sum_data_3[0]_i_170_n_0 ;
  wire \hist_sum_data_3[0]_i_171_n_0 ;
  wire \hist_sum_data_3[0]_i_172_n_0 ;
  wire \hist_sum_data_3[0]_i_173_n_0 ;
  wire \hist_sum_data_3[0]_i_174_n_0 ;
  wire \hist_sum_data_3[0]_i_175_n_0 ;
  wire \hist_sum_data_3[0]_i_17_n_0 ;
  wire \hist_sum_data_3[0]_i_18_n_0 ;
  wire \hist_sum_data_3[0]_i_19_n_0 ;
  wire \hist_sum_data_3[0]_i_1_n_0 ;
  wire \hist_sum_data_3[0]_i_20_n_0 ;
  wire \hist_sum_data_3[0]_i_21_n_0 ;
  wire \hist_sum_data_3[0]_i_25_n_0 ;
  wire \hist_sum_data_3[0]_i_26_n_0 ;
  wire \hist_sum_data_3[0]_i_27_n_0 ;
  wire \hist_sum_data_3[0]_i_29_n_0 ;
  wire \hist_sum_data_3[0]_i_30_n_0 ;
  wire \hist_sum_data_3[0]_i_31_n_0 ;
  wire \hist_sum_data_3[0]_i_32_n_0 ;
  wire \hist_sum_data_3[0]_i_33_n_0 ;
  wire \hist_sum_data_3[0]_i_34_n_0 ;
  wire \hist_sum_data_3[0]_i_35_n_0 ;
  wire \hist_sum_data_3[0]_i_36_n_0 ;
  wire \hist_sum_data_3[0]_i_37_n_0 ;
  wire \hist_sum_data_3[0]_i_41_n_0 ;
  wire \hist_sum_data_3[0]_i_42_n_0 ;
  wire \hist_sum_data_3[0]_i_43_n_0 ;
  wire \hist_sum_data_3[0]_i_44_n_0 ;
  wire \hist_sum_data_3[0]_i_45_n_0 ;
  wire \hist_sum_data_3[0]_i_46_n_0 ;
  wire \hist_sum_data_3[0]_i_47_n_0 ;
  wire \hist_sum_data_3[0]_i_48_n_0 ;
  wire \hist_sum_data_3[0]_i_49_n_0 ;
  wire \hist_sum_data_3[0]_i_4_n_0 ;
  wire \hist_sum_data_3[0]_i_50_n_0 ;
  wire \hist_sum_data_3[0]_i_51_n_0 ;
  wire \hist_sum_data_3[0]_i_52_n_0 ;
  wire \hist_sum_data_3[0]_i_53_n_0 ;
  wire \hist_sum_data_3[0]_i_54_n_0 ;
  wire \hist_sum_data_3[0]_i_55_n_0 ;
  wire \hist_sum_data_3[0]_i_56_n_0 ;
  wire \hist_sum_data_3[0]_i_57_n_0 ;
  wire \hist_sum_data_3[0]_i_58_n_0 ;
  wire \hist_sum_data_3[0]_i_59_n_0 ;
  wire \hist_sum_data_3[0]_i_5_n_0 ;
  wire \hist_sum_data_3[0]_i_60_n_0 ;
  wire \hist_sum_data_3[0]_i_61_n_0 ;
  wire \hist_sum_data_3[0]_i_62_n_0 ;
  wire \hist_sum_data_3[0]_i_63_n_0 ;
  wire \hist_sum_data_3[0]_i_65_n_0 ;
  wire \hist_sum_data_3[0]_i_66_n_0 ;
  wire \hist_sum_data_3[0]_i_67_n_0 ;
  wire \hist_sum_data_3[0]_i_68_n_0 ;
  wire \hist_sum_data_3[0]_i_69_n_0 ;
  wire \hist_sum_data_3[0]_i_6_n_0 ;
  wire \hist_sum_data_3[0]_i_70_n_0 ;
  wire \hist_sum_data_3[0]_i_71_n_0 ;
  wire \hist_sum_data_3[0]_i_72_n_0 ;
  wire \hist_sum_data_3[0]_i_73_n_0 ;
  wire \hist_sum_data_3[0]_i_77_n_0 ;
  wire \hist_sum_data_3[0]_i_78_n_0 ;
  wire \hist_sum_data_3[0]_i_79_n_0 ;
  wire \hist_sum_data_3[0]_i_7_n_0 ;
  wire \hist_sum_data_3[0]_i_80_n_0 ;
  wire \hist_sum_data_3[0]_i_81_n_0 ;
  wire \hist_sum_data_3[0]_i_82_n_0 ;
  wire \hist_sum_data_3[0]_i_83_n_0 ;
  wire \hist_sum_data_3[0]_i_84_n_0 ;
  wire \hist_sum_data_3[0]_i_85_n_0 ;
  wire \hist_sum_data_3[0]_i_86_n_0 ;
  wire \hist_sum_data_3[0]_i_87_n_0 ;
  wire \hist_sum_data_3[0]_i_88_n_0 ;
  wire \hist_sum_data_3[0]_i_89_n_0 ;
  wire \hist_sum_data_3[0]_i_8_n_0 ;
  wire \hist_sum_data_3[0]_i_90_n_0 ;
  wire \hist_sum_data_3[0]_i_91_n_0 ;
  wire \hist_sum_data_3[0]_i_92_n_0 ;
  wire \hist_sum_data_3[0]_i_93_n_0 ;
  wire \hist_sum_data_3[0]_i_94_n_0 ;
  wire \hist_sum_data_3[0]_i_95_n_0 ;
  wire \hist_sum_data_3[0]_i_96_n_0 ;
  wire \hist_sum_data_3[0]_i_97_n_0 ;
  wire \hist_sum_data_3[0]_i_98_n_0 ;
  wire \hist_sum_data_3[0]_i_9_n_0 ;
  wire \hist_sum_data_3[10]_i_1_n_0 ;
  wire \hist_sum_data_3[11]_i_1_n_0 ;
  wire \hist_sum_data_3[12]_i_10_n_0 ;
  wire \hist_sum_data_3[12]_i_17_n_0 ;
  wire \hist_sum_data_3[12]_i_18_n_0 ;
  wire \hist_sum_data_3[12]_i_19_n_0 ;
  wire \hist_sum_data_3[12]_i_1_n_0 ;
  wire \hist_sum_data_3[12]_i_20_n_0 ;
  wire \hist_sum_data_3[12]_i_21_n_0 ;
  wire \hist_sum_data_3[12]_i_22_n_0 ;
  wire \hist_sum_data_3[12]_i_23_n_0 ;
  wire \hist_sum_data_3[12]_i_24_n_0 ;
  wire \hist_sum_data_3[12]_i_25_n_0 ;
  wire \hist_sum_data_3[12]_i_26_n_0 ;
  wire \hist_sum_data_3[12]_i_27_n_0 ;
  wire \hist_sum_data_3[12]_i_28_n_0 ;
  wire \hist_sum_data_3[12]_i_29_n_0 ;
  wire \hist_sum_data_3[12]_i_30_n_0 ;
  wire \hist_sum_data_3[12]_i_31_n_0 ;
  wire \hist_sum_data_3[12]_i_32_n_0 ;
  wire \hist_sum_data_3[12]_i_33_n_0 ;
  wire \hist_sum_data_3[12]_i_34_n_0 ;
  wire \hist_sum_data_3[12]_i_35_n_0 ;
  wire \hist_sum_data_3[12]_i_36_n_0 ;
  wire \hist_sum_data_3[12]_i_3_n_0 ;
  wire \hist_sum_data_3[12]_i_4_n_0 ;
  wire \hist_sum_data_3[12]_i_5_n_0 ;
  wire \hist_sum_data_3[12]_i_6_n_0 ;
  wire \hist_sum_data_3[12]_i_7_n_0 ;
  wire \hist_sum_data_3[12]_i_8_n_0 ;
  wire \hist_sum_data_3[12]_i_9_n_0 ;
  wire \hist_sum_data_3[13]_i_1_n_0 ;
  wire \hist_sum_data_3[14]_i_1_n_0 ;
  wire \hist_sum_data_3[15]_i_1_n_0 ;
  wire \hist_sum_data_3[16]_i_10_n_0 ;
  wire \hist_sum_data_3[16]_i_17_n_0 ;
  wire \hist_sum_data_3[16]_i_18_n_0 ;
  wire \hist_sum_data_3[16]_i_19_n_0 ;
  wire \hist_sum_data_3[16]_i_1_n_0 ;
  wire \hist_sum_data_3[16]_i_20_n_0 ;
  wire \hist_sum_data_3[16]_i_21_n_0 ;
  wire \hist_sum_data_3[16]_i_22_n_0 ;
  wire \hist_sum_data_3[16]_i_23_n_0 ;
  wire \hist_sum_data_3[16]_i_24_n_0 ;
  wire \hist_sum_data_3[16]_i_25_n_0 ;
  wire \hist_sum_data_3[16]_i_3_n_0 ;
  wire \hist_sum_data_3[16]_i_4_n_0 ;
  wire \hist_sum_data_3[16]_i_5_n_0 ;
  wire \hist_sum_data_3[16]_i_6_n_0 ;
  wire \hist_sum_data_3[16]_i_7_n_0 ;
  wire \hist_sum_data_3[16]_i_8_n_0 ;
  wire \hist_sum_data_3[16]_i_9_n_0 ;
  wire \hist_sum_data_3[17]_i_1_n_0 ;
  wire \hist_sum_data_3[18]_i_1_n_0 ;
  wire \hist_sum_data_3[19]_i_100_n_0 ;
  wire \hist_sum_data_3[19]_i_10_n_0 ;
  wire \hist_sum_data_3[19]_i_11_n_0 ;
  wire \hist_sum_data_3[19]_i_13_n_0 ;
  wire \hist_sum_data_3[19]_i_14_n_0 ;
  wire \hist_sum_data_3[19]_i_15_n_0 ;
  wire \hist_sum_data_3[19]_i_16_n_0 ;
  wire \hist_sum_data_3[19]_i_1_n_0 ;
  wire \hist_sum_data_3[19]_i_25_n_0 ;
  wire \hist_sum_data_3[19]_i_26_n_0 ;
  wire \hist_sum_data_3[19]_i_27_n_0 ;
  wire \hist_sum_data_3[19]_i_28_n_0 ;
  wire \hist_sum_data_3[19]_i_29_n_0 ;
  wire \hist_sum_data_3[19]_i_30_n_0 ;
  wire \hist_sum_data_3[19]_i_31_n_0 ;
  wire \hist_sum_data_3[19]_i_32_n_0 ;
  wire \hist_sum_data_3[19]_i_34_n_0 ;
  wire \hist_sum_data_3[19]_i_35_n_0 ;
  wire \hist_sum_data_3[19]_i_36_n_0 ;
  wire \hist_sum_data_3[19]_i_37_n_0 ;
  wire \hist_sum_data_3[19]_i_38_n_0 ;
  wire \hist_sum_data_3[19]_i_39_n_0 ;
  wire \hist_sum_data_3[19]_i_40_n_0 ;
  wire \hist_sum_data_3[19]_i_41_n_0 ;
  wire \hist_sum_data_3[19]_i_42_n_0 ;
  wire \hist_sum_data_3[19]_i_43_n_0 ;
  wire \hist_sum_data_3[19]_i_44_n_0 ;
  wire \hist_sum_data_3[19]_i_45_n_0 ;
  wire \hist_sum_data_3[19]_i_46_n_0 ;
  wire \hist_sum_data_3[19]_i_47_n_0 ;
  wire \hist_sum_data_3[19]_i_48_n_0 ;
  wire \hist_sum_data_3[19]_i_50_n_0 ;
  wire \hist_sum_data_3[19]_i_51_n_0 ;
  wire \hist_sum_data_3[19]_i_52_n_0 ;
  wire \hist_sum_data_3[19]_i_53_n_0 ;
  wire \hist_sum_data_3[19]_i_54_n_0 ;
  wire \hist_sum_data_3[19]_i_55_n_0 ;
  wire \hist_sum_data_3[19]_i_56_n_0 ;
  wire \hist_sum_data_3[19]_i_57_n_0 ;
  wire \hist_sum_data_3[19]_i_59_n_0 ;
  wire \hist_sum_data_3[19]_i_60_n_0 ;
  wire \hist_sum_data_3[19]_i_61_n_0 ;
  wire \hist_sum_data_3[19]_i_62_n_0 ;
  wire \hist_sum_data_3[19]_i_64_n_0 ;
  wire \hist_sum_data_3[19]_i_65_n_0 ;
  wire \hist_sum_data_3[19]_i_66_n_0 ;
  wire \hist_sum_data_3[19]_i_67_n_0 ;
  wire \hist_sum_data_3[19]_i_68_n_0 ;
  wire \hist_sum_data_3[19]_i_69_n_0 ;
  wire \hist_sum_data_3[19]_i_70_n_0 ;
  wire \hist_sum_data_3[19]_i_71_n_0 ;
  wire \hist_sum_data_3[19]_i_73_n_0 ;
  wire \hist_sum_data_3[19]_i_74_n_0 ;
  wire \hist_sum_data_3[19]_i_75_n_0 ;
  wire \hist_sum_data_3[19]_i_76_n_0 ;
  wire \hist_sum_data_3[19]_i_78_n_0 ;
  wire \hist_sum_data_3[19]_i_79_n_0 ;
  wire \hist_sum_data_3[19]_i_7_n_0 ;
  wire \hist_sum_data_3[19]_i_80_n_0 ;
  wire \hist_sum_data_3[19]_i_81_n_0 ;
  wire \hist_sum_data_3[19]_i_82_n_0 ;
  wire \hist_sum_data_3[19]_i_83_n_0 ;
  wire \hist_sum_data_3[19]_i_84_n_0 ;
  wire \hist_sum_data_3[19]_i_85_n_0 ;
  wire \hist_sum_data_3[19]_i_87_n_0 ;
  wire \hist_sum_data_3[19]_i_88_n_0 ;
  wire \hist_sum_data_3[19]_i_89_n_0 ;
  wire \hist_sum_data_3[19]_i_8_n_0 ;
  wire \hist_sum_data_3[19]_i_90_n_0 ;
  wire \hist_sum_data_3[19]_i_91_n_0 ;
  wire \hist_sum_data_3[19]_i_92_n_0 ;
  wire \hist_sum_data_3[19]_i_93_n_0 ;
  wire \hist_sum_data_3[19]_i_94_n_0 ;
  wire \hist_sum_data_3[19]_i_95_n_0 ;
  wire \hist_sum_data_3[19]_i_96_n_0 ;
  wire \hist_sum_data_3[19]_i_97_n_0 ;
  wire \hist_sum_data_3[19]_i_98_n_0 ;
  wire \hist_sum_data_3[19]_i_99_n_0 ;
  wire \hist_sum_data_3[19]_i_9_n_0 ;
  wire \hist_sum_data_3[1]_i_1_n_0 ;
  wire \hist_sum_data_3[2]_i_1_n_0 ;
  wire \hist_sum_data_3[3]_i_1_n_0 ;
  wire \hist_sum_data_3[3]_i_3_n_0 ;
  wire \hist_sum_data_3[4]_i_10_n_0 ;
  wire \hist_sum_data_3[4]_i_11_n_0 ;
  wire \hist_sum_data_3[4]_i_15_n_0 ;
  wire \hist_sum_data_3[4]_i_16_n_0 ;
  wire \hist_sum_data_3[4]_i_17_n_0 ;
  wire \hist_sum_data_3[4]_i_18_n_0 ;
  wire \hist_sum_data_3[4]_i_19_n_0 ;
  wire \hist_sum_data_3[4]_i_1_n_0 ;
  wire \hist_sum_data_3[4]_i_20_n_0 ;
  wire \hist_sum_data_3[4]_i_21_n_0 ;
  wire \hist_sum_data_3[4]_i_22_n_0 ;
  wire \hist_sum_data_3[4]_i_23_n_0 ;
  wire \hist_sum_data_3[4]_i_24_n_0 ;
  wire \hist_sum_data_3[4]_i_25_n_0 ;
  wire \hist_sum_data_3[4]_i_26_n_0 ;
  wire \hist_sum_data_3[4]_i_27_n_0 ;
  wire \hist_sum_data_3[4]_i_28_n_0 ;
  wire \hist_sum_data_3[4]_i_29_n_0 ;
  wire \hist_sum_data_3[4]_i_30_n_0 ;
  wire \hist_sum_data_3[4]_i_31_n_0 ;
  wire \hist_sum_data_3[4]_i_32_n_0 ;
  wire \hist_sum_data_3[4]_i_33_n_0 ;
  wire \hist_sum_data_3[4]_i_34_n_0 ;
  wire \hist_sum_data_3[4]_i_35_n_0 ;
  wire \hist_sum_data_3[4]_i_36_n_0 ;
  wire \hist_sum_data_3[4]_i_37_n_0 ;
  wire \hist_sum_data_3[4]_i_3_n_0 ;
  wire \hist_sum_data_3[4]_i_4_n_0 ;
  wire \hist_sum_data_3[4]_i_5_n_0 ;
  wire \hist_sum_data_3[4]_i_6_n_0 ;
  wire \hist_sum_data_3[4]_i_7_n_0 ;
  wire \hist_sum_data_3[4]_i_8_n_0 ;
  wire \hist_sum_data_3[4]_i_9_n_0 ;
  wire \hist_sum_data_3[5]_i_1_n_0 ;
  wire \hist_sum_data_3[6]_i_1_n_0 ;
  wire \hist_sum_data_3[7]_i_1_n_0 ;
  wire \hist_sum_data_3[8]_i_10_n_0 ;
  wire \hist_sum_data_3[8]_i_11_n_0 ;
  wire \hist_sum_data_3[8]_i_15_n_0 ;
  wire \hist_sum_data_3[8]_i_16_n_0 ;
  wire \hist_sum_data_3[8]_i_17_n_0 ;
  wire \hist_sum_data_3[8]_i_18_n_0 ;
  wire \hist_sum_data_3[8]_i_1_n_0 ;
  wire \hist_sum_data_3[8]_i_22_n_0 ;
  wire \hist_sum_data_3[8]_i_23_n_0 ;
  wire \hist_sum_data_3[8]_i_24_n_0 ;
  wire \hist_sum_data_3[8]_i_25_n_0 ;
  wire \hist_sum_data_3[8]_i_26_n_0 ;
  wire \hist_sum_data_3[8]_i_27_n_0 ;
  wire \hist_sum_data_3[8]_i_28_n_0 ;
  wire \hist_sum_data_3[8]_i_29_n_0 ;
  wire \hist_sum_data_3[8]_i_30_n_0 ;
  wire \hist_sum_data_3[8]_i_31_n_0 ;
  wire \hist_sum_data_3[8]_i_32_n_0 ;
  wire \hist_sum_data_3[8]_i_33_n_0 ;
  wire \hist_sum_data_3[8]_i_34_n_0 ;
  wire \hist_sum_data_3[8]_i_35_n_0 ;
  wire \hist_sum_data_3[8]_i_36_n_0 ;
  wire \hist_sum_data_3[8]_i_37_n_0 ;
  wire \hist_sum_data_3[8]_i_38_n_0 ;
  wire \hist_sum_data_3[8]_i_39_n_0 ;
  wire \hist_sum_data_3[8]_i_3_n_0 ;
  wire \hist_sum_data_3[8]_i_40_n_0 ;
  wire \hist_sum_data_3[8]_i_41_n_0 ;
  wire \hist_sum_data_3[8]_i_42_n_0 ;
  wire \hist_sum_data_3[8]_i_43_n_0 ;
  wire \hist_sum_data_3[8]_i_44_n_0 ;
  wire \hist_sum_data_3[8]_i_45_n_0 ;
  wire \hist_sum_data_3[8]_i_4_n_0 ;
  wire \hist_sum_data_3[8]_i_5_n_0 ;
  wire \hist_sum_data_3[8]_i_6_n_0 ;
  wire \hist_sum_data_3[8]_i_7_n_0 ;
  wire \hist_sum_data_3[8]_i_8_n_0 ;
  wire \hist_sum_data_3[8]_i_9_n_0 ;
  wire \hist_sum_data_3[9]_i_1_n_0 ;
  wire \hist_sum_data_3_reg[0]_0 ;
  wire \hist_sum_data_3_reg[0]_i_108_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_108_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_108_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_108_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_108_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_108_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_108_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_109_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_109_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_109_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_109_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_109_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_109_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_109_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_109_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_110_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_110_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_110_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_110_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_110_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_110_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_110_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_110_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_12_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_12_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_12_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_12_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_138_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_138_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_138_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_138_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_138_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_139_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_139_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_139_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_139_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_139_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_139_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_139_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_139_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_140_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_140_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_140_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_140_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_140_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_140_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_140_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_140_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_156_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_156_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_156_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_156_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_156_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_156_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_156_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_22_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_22_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_22_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_22_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_22_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_22_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_22_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_22_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_23_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_23_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_23_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_23_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_23_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_23_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_23_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_23_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_24_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_24_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_24_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_24_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_24_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_24_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_24_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_24_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_28_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_28_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_28_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_28_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_2_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_2_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_2_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_2_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_2_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_38_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_38_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_38_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_38_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_38_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_38_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_38_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_38_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_39_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_39_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_39_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_39_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_39_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_39_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_39_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_39_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_3_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_3_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_3_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_3_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_40_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_40_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_40_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_40_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_40_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_40_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_40_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_40_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_64_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_64_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_64_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_64_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_74_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_74_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_74_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_74_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_74_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_74_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_74_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_74_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_75_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_75_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_75_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_75_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_75_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_75_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_75_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_75_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_76_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_76_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_76_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_76_n_3 ;
  wire \hist_sum_data_3_reg[0]_i_76_n_4 ;
  wire \hist_sum_data_3_reg[0]_i_76_n_5 ;
  wire \hist_sum_data_3_reg[0]_i_76_n_6 ;
  wire \hist_sum_data_3_reg[0]_i_76_n_7 ;
  wire \hist_sum_data_3_reg[0]_i_99_n_0 ;
  wire \hist_sum_data_3_reg[0]_i_99_n_1 ;
  wire \hist_sum_data_3_reg[0]_i_99_n_2 ;
  wire \hist_sum_data_3_reg[0]_i_99_n_3 ;
  wire \hist_sum_data_3_reg[11]_i_2_n_0 ;
  wire \hist_sum_data_3_reg[11]_i_2_n_1 ;
  wire \hist_sum_data_3_reg[11]_i_2_n_2 ;
  wire \hist_sum_data_3_reg[11]_i_2_n_3 ;
  wire \hist_sum_data_3_reg[11]_i_2_n_4 ;
  wire \hist_sum_data_3_reg[11]_i_2_n_5 ;
  wire \hist_sum_data_3_reg[11]_i_2_n_6 ;
  wire \hist_sum_data_3_reg[11]_i_2_n_7 ;
  wire \hist_sum_data_3_reg[12]_i_12_n_0 ;
  wire \hist_sum_data_3_reg[12]_i_12_n_1 ;
  wire \hist_sum_data_3_reg[12]_i_12_n_2 ;
  wire \hist_sum_data_3_reg[12]_i_12_n_3 ;
  wire \hist_sum_data_3_reg[12]_i_12_n_4 ;
  wire \hist_sum_data_3_reg[12]_i_12_n_5 ;
  wire \hist_sum_data_3_reg[12]_i_12_n_6 ;
  wire \hist_sum_data_3_reg[12]_i_12_n_7 ;
  wire \hist_sum_data_3_reg[12]_i_13_n_0 ;
  wire \hist_sum_data_3_reg[12]_i_13_n_1 ;
  wire \hist_sum_data_3_reg[12]_i_13_n_2 ;
  wire \hist_sum_data_3_reg[12]_i_13_n_3 ;
  wire \hist_sum_data_3_reg[12]_i_13_n_4 ;
  wire \hist_sum_data_3_reg[12]_i_13_n_5 ;
  wire \hist_sum_data_3_reg[12]_i_13_n_6 ;
  wire \hist_sum_data_3_reg[12]_i_13_n_7 ;
  wire \hist_sum_data_3_reg[12]_i_2_n_0 ;
  wire \hist_sum_data_3_reg[12]_i_2_n_1 ;
  wire \hist_sum_data_3_reg[12]_i_2_n_2 ;
  wire \hist_sum_data_3_reg[12]_i_2_n_3 ;
  wire \hist_sum_data_3_reg[12]_i_2_n_4 ;
  wire \hist_sum_data_3_reg[12]_i_2_n_5 ;
  wire \hist_sum_data_3_reg[12]_i_2_n_6 ;
  wire \hist_sum_data_3_reg[12]_i_2_n_7 ;
  wire \hist_sum_data_3_reg[15]_i_2_n_0 ;
  wire \hist_sum_data_3_reg[15]_i_2_n_1 ;
  wire \hist_sum_data_3_reg[15]_i_2_n_2 ;
  wire \hist_sum_data_3_reg[15]_i_2_n_3 ;
  wire \hist_sum_data_3_reg[15]_i_2_n_4 ;
  wire \hist_sum_data_3_reg[15]_i_2_n_5 ;
  wire \hist_sum_data_3_reg[15]_i_2_n_6 ;
  wire \hist_sum_data_3_reg[15]_i_2_n_7 ;
  wire \hist_sum_data_3_reg[16]_i_11_n_0 ;
  wire \hist_sum_data_3_reg[16]_i_11_n_1 ;
  wire \hist_sum_data_3_reg[16]_i_11_n_2 ;
  wire \hist_sum_data_3_reg[16]_i_11_n_3 ;
  wire \hist_sum_data_3_reg[16]_i_11_n_4 ;
  wire \hist_sum_data_3_reg[16]_i_11_n_5 ;
  wire \hist_sum_data_3_reg[16]_i_11_n_6 ;
  wire \hist_sum_data_3_reg[16]_i_11_n_7 ;
  wire \hist_sum_data_3_reg[16]_i_2_n_0 ;
  wire \hist_sum_data_3_reg[16]_i_2_n_1 ;
  wire \hist_sum_data_3_reg[16]_i_2_n_2 ;
  wire \hist_sum_data_3_reg[16]_i_2_n_3 ;
  wire \hist_sum_data_3_reg[16]_i_2_n_4 ;
  wire \hist_sum_data_3_reg[16]_i_2_n_5 ;
  wire \hist_sum_data_3_reg[16]_i_2_n_6 ;
  wire \hist_sum_data_3_reg[16]_i_2_n_7 ;
  wire \hist_sum_data_3_reg[19]_i_12_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_12_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_12_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_12_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_17_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_17_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_17_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_17_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_17_n_4 ;
  wire \hist_sum_data_3_reg[19]_i_17_n_5 ;
  wire \hist_sum_data_3_reg[19]_i_17_n_6 ;
  wire \hist_sum_data_3_reg[19]_i_17_n_7 ;
  wire \hist_sum_data_3_reg[19]_i_18_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_18_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_18_n_6 ;
  wire \hist_sum_data_3_reg[19]_i_18_n_7 ;
  wire \hist_sum_data_3_reg[19]_i_19_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_19_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_19_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_19_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_19_n_4 ;
  wire \hist_sum_data_3_reg[19]_i_19_n_5 ;
  wire \hist_sum_data_3_reg[19]_i_19_n_6 ;
  wire \hist_sum_data_3_reg[19]_i_19_n_7 ;
  wire \hist_sum_data_3_reg[19]_i_20_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_22_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_24_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_24_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_24_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_24_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_2_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_2_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_2_n_5 ;
  wire \hist_sum_data_3_reg[19]_i_2_n_6 ;
  wire \hist_sum_data_3_reg[19]_i_2_n_7 ;
  wire \hist_sum_data_3_reg[19]_i_33_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_33_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_33_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_33_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_33_n_4 ;
  wire \hist_sum_data_3_reg[19]_i_33_n_5 ;
  wire \hist_sum_data_3_reg[19]_i_33_n_6 ;
  wire \hist_sum_data_3_reg[19]_i_33_n_7 ;
  wire \hist_sum_data_3_reg[19]_i_3_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_3_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_49_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_49_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_49_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_49_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_58_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_58_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_58_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_58_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_58_n_4 ;
  wire \hist_sum_data_3_reg[19]_i_58_n_5 ;
  wire \hist_sum_data_3_reg[19]_i_58_n_6 ;
  wire \hist_sum_data_3_reg[19]_i_58_n_7 ;
  wire \hist_sum_data_3_reg[19]_i_5_n_7 ;
  wire \hist_sum_data_3_reg[19]_i_63_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_63_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_63_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_63_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_6_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_6_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_6_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_6_n_4 ;
  wire \hist_sum_data_3_reg[19]_i_6_n_5 ;
  wire \hist_sum_data_3_reg[19]_i_6_n_6 ;
  wire \hist_sum_data_3_reg[19]_i_6_n_7 ;
  wire \hist_sum_data_3_reg[19]_i_72_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_72_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_72_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_72_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_72_n_4 ;
  wire \hist_sum_data_3_reg[19]_i_72_n_5 ;
  wire \hist_sum_data_3_reg[19]_i_72_n_6 ;
  wire \hist_sum_data_3_reg[19]_i_72_n_7 ;
  wire \hist_sum_data_3_reg[19]_i_77_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_77_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_77_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_77_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_86_n_0 ;
  wire \hist_sum_data_3_reg[19]_i_86_n_1 ;
  wire \hist_sum_data_3_reg[19]_i_86_n_2 ;
  wire \hist_sum_data_3_reg[19]_i_86_n_3 ;
  wire \hist_sum_data_3_reg[19]_i_86_n_4 ;
  wire \hist_sum_data_3_reg[19]_i_86_n_5 ;
  wire \hist_sum_data_3_reg[19]_i_86_n_6 ;
  wire \hist_sum_data_3_reg[19]_i_86_n_7 ;
  wire \hist_sum_data_3_reg[3]_i_2_n_0 ;
  wire \hist_sum_data_3_reg[3]_i_2_n_1 ;
  wire \hist_sum_data_3_reg[3]_i_2_n_2 ;
  wire \hist_sum_data_3_reg[3]_i_2_n_3 ;
  wire \hist_sum_data_3_reg[3]_i_2_n_4 ;
  wire \hist_sum_data_3_reg[3]_i_2_n_5 ;
  wire \hist_sum_data_3_reg[3]_i_2_n_6 ;
  wire \hist_sum_data_3_reg[3]_i_2_n_7 ;
  wire \hist_sum_data_3_reg[4]_i_12_n_0 ;
  wire \hist_sum_data_3_reg[4]_i_12_n_1 ;
  wire \hist_sum_data_3_reg[4]_i_12_n_2 ;
  wire \hist_sum_data_3_reg[4]_i_12_n_3 ;
  wire \hist_sum_data_3_reg[4]_i_12_n_4 ;
  wire \hist_sum_data_3_reg[4]_i_12_n_5 ;
  wire \hist_sum_data_3_reg[4]_i_12_n_6 ;
  wire \hist_sum_data_3_reg[4]_i_12_n_7 ;
  wire \hist_sum_data_3_reg[4]_i_13_n_0 ;
  wire \hist_sum_data_3_reg[4]_i_13_n_1 ;
  wire \hist_sum_data_3_reg[4]_i_13_n_2 ;
  wire \hist_sum_data_3_reg[4]_i_13_n_3 ;
  wire \hist_sum_data_3_reg[4]_i_13_n_4 ;
  wire \hist_sum_data_3_reg[4]_i_13_n_5 ;
  wire \hist_sum_data_3_reg[4]_i_13_n_6 ;
  wire \hist_sum_data_3_reg[4]_i_13_n_7 ;
  wire \hist_sum_data_3_reg[4]_i_14_n_0 ;
  wire \hist_sum_data_3_reg[4]_i_14_n_1 ;
  wire \hist_sum_data_3_reg[4]_i_14_n_2 ;
  wire \hist_sum_data_3_reg[4]_i_14_n_3 ;
  wire \hist_sum_data_3_reg[4]_i_14_n_4 ;
  wire \hist_sum_data_3_reg[4]_i_14_n_5 ;
  wire \hist_sum_data_3_reg[4]_i_14_n_6 ;
  wire \hist_sum_data_3_reg[4]_i_14_n_7 ;
  wire \hist_sum_data_3_reg[4]_i_2_n_0 ;
  wire \hist_sum_data_3_reg[4]_i_2_n_1 ;
  wire \hist_sum_data_3_reg[4]_i_2_n_2 ;
  wire \hist_sum_data_3_reg[4]_i_2_n_3 ;
  wire \hist_sum_data_3_reg[4]_i_2_n_4 ;
  wire \hist_sum_data_3_reg[4]_i_2_n_5 ;
  wire \hist_sum_data_3_reg[4]_i_2_n_6 ;
  wire \hist_sum_data_3_reg[4]_i_2_n_7 ;
  wire \hist_sum_data_3_reg[7]_i_2_n_0 ;
  wire \hist_sum_data_3_reg[7]_i_2_n_1 ;
  wire \hist_sum_data_3_reg[7]_i_2_n_2 ;
  wire \hist_sum_data_3_reg[7]_i_2_n_3 ;
  wire \hist_sum_data_3_reg[7]_i_2_n_4 ;
  wire \hist_sum_data_3_reg[7]_i_2_n_5 ;
  wire \hist_sum_data_3_reg[7]_i_2_n_6 ;
  wire \hist_sum_data_3_reg[7]_i_2_n_7 ;
  wire \hist_sum_data_3_reg[8]_i_12_n_0 ;
  wire \hist_sum_data_3_reg[8]_i_12_n_1 ;
  wire \hist_sum_data_3_reg[8]_i_12_n_2 ;
  wire \hist_sum_data_3_reg[8]_i_12_n_3 ;
  wire \hist_sum_data_3_reg[8]_i_12_n_4 ;
  wire \hist_sum_data_3_reg[8]_i_12_n_5 ;
  wire \hist_sum_data_3_reg[8]_i_12_n_6 ;
  wire \hist_sum_data_3_reg[8]_i_12_n_7 ;
  wire \hist_sum_data_3_reg[8]_i_13_n_0 ;
  wire \hist_sum_data_3_reg[8]_i_13_n_1 ;
  wire \hist_sum_data_3_reg[8]_i_13_n_2 ;
  wire \hist_sum_data_3_reg[8]_i_13_n_3 ;
  wire \hist_sum_data_3_reg[8]_i_13_n_4 ;
  wire \hist_sum_data_3_reg[8]_i_13_n_5 ;
  wire \hist_sum_data_3_reg[8]_i_13_n_6 ;
  wire \hist_sum_data_3_reg[8]_i_13_n_7 ;
  wire \hist_sum_data_3_reg[8]_i_14_n_0 ;
  wire \hist_sum_data_3_reg[8]_i_14_n_1 ;
  wire \hist_sum_data_3_reg[8]_i_14_n_2 ;
  wire \hist_sum_data_3_reg[8]_i_14_n_3 ;
  wire \hist_sum_data_3_reg[8]_i_14_n_4 ;
  wire \hist_sum_data_3_reg[8]_i_14_n_5 ;
  wire \hist_sum_data_3_reg[8]_i_14_n_6 ;
  wire \hist_sum_data_3_reg[8]_i_14_n_7 ;
  wire \hist_sum_data_3_reg[8]_i_2_n_0 ;
  wire \hist_sum_data_3_reg[8]_i_2_n_1 ;
  wire \hist_sum_data_3_reg[8]_i_2_n_2 ;
  wire \hist_sum_data_3_reg[8]_i_2_n_3 ;
  wire \hist_sum_data_3_reg[8]_i_2_n_4 ;
  wire \hist_sum_data_3_reg[8]_i_2_n_5 ;
  wire \hist_sum_data_3_reg[8]_i_2_n_6 ;
  wire \hist_sum_data_3_reg[8]_i_2_n_7 ;
  wire \hist_sum_data_4[0]_i_1_n_0 ;
  wire \hist_sum_data_4[1]_i_1_n_0 ;
  wire \hist_sum_data_4[2]_i_1_n_0 ;
  wire \hist_sum_data_4[3]_i_100_n_0 ;
  wire \hist_sum_data_4[3]_i_101_n_0 ;
  wire \hist_sum_data_4[3]_i_102_n_0 ;
  wire \hist_sum_data_4[3]_i_10_n_0 ;
  wire \hist_sum_data_4[3]_i_11_n_0 ;
  wire \hist_sum_data_4[3]_i_12_n_0 ;
  wire \hist_sum_data_4[3]_i_13_n_0 ;
  wire \hist_sum_data_4[3]_i_15_n_0 ;
  wire \hist_sum_data_4[3]_i_16_n_0 ;
  wire \hist_sum_data_4[3]_i_17_n_0 ;
  wire \hist_sum_data_4[3]_i_18_n_0 ;
  wire \hist_sum_data_4[3]_i_19_n_0 ;
  wire \hist_sum_data_4[3]_i_1_n_0 ;
  wire \hist_sum_data_4[3]_i_20_n_0 ;
  wire \hist_sum_data_4[3]_i_21_n_0 ;
  wire \hist_sum_data_4[3]_i_22_n_0 ;
  wire \hist_sum_data_4[3]_i_24_n_0 ;
  wire \hist_sum_data_4[3]_i_25_n_0 ;
  wire \hist_sum_data_4[3]_i_26_n_0 ;
  wire \hist_sum_data_4[3]_i_27_n_0 ;
  wire \hist_sum_data_4[3]_i_28_n_0 ;
  wire \hist_sum_data_4[3]_i_29_n_0 ;
  wire \hist_sum_data_4[3]_i_30_n_0 ;
  wire \hist_sum_data_4[3]_i_31_n_0 ;
  wire \hist_sum_data_4[3]_i_33_n_0 ;
  wire \hist_sum_data_4[3]_i_34_n_0 ;
  wire \hist_sum_data_4[3]_i_36_n_0 ;
  wire \hist_sum_data_4[3]_i_37_n_0 ;
  wire \hist_sum_data_4[3]_i_39_n_0 ;
  wire \hist_sum_data_4[3]_i_40_n_0 ;
  wire \hist_sum_data_4[3]_i_41_n_0 ;
  wire \hist_sum_data_4[3]_i_42_n_0 ;
  wire \hist_sum_data_4[3]_i_43_n_0 ;
  wire \hist_sum_data_4[3]_i_44_n_0 ;
  wire \hist_sum_data_4[3]_i_45_n_0 ;
  wire \hist_sum_data_4[3]_i_46_n_0 ;
  wire \hist_sum_data_4[3]_i_47_n_0 ;
  wire \hist_sum_data_4[3]_i_48_n_0 ;
  wire \hist_sum_data_4[3]_i_49_n_0 ;
  wire \hist_sum_data_4[3]_i_51_n_0 ;
  wire \hist_sum_data_4[3]_i_52_n_0 ;
  wire \hist_sum_data_4[3]_i_53_n_0 ;
  wire \hist_sum_data_4[3]_i_54_n_0 ;
  wire \hist_sum_data_4[3]_i_56_n_0 ;
  wire \hist_sum_data_4[3]_i_57_n_0 ;
  wire \hist_sum_data_4[3]_i_58_n_0 ;
  wire \hist_sum_data_4[3]_i_59_n_0 ;
  wire \hist_sum_data_4[3]_i_5_n_0 ;
  wire \hist_sum_data_4[3]_i_60_n_0 ;
  wire \hist_sum_data_4[3]_i_61_n_0 ;
  wire \hist_sum_data_4[3]_i_62_n_0 ;
  wire \hist_sum_data_4[3]_i_64_n_0 ;
  wire \hist_sum_data_4[3]_i_65_n_0 ;
  wire \hist_sum_data_4[3]_i_66_n_0 ;
  wire \hist_sum_data_4[3]_i_67_n_0 ;
  wire \hist_sum_data_4[3]_i_68_n_0 ;
  wire \hist_sum_data_4[3]_i_69_n_0 ;
  wire \hist_sum_data_4[3]_i_6_n_0 ;
  wire \hist_sum_data_4[3]_i_70_n_0 ;
  wire \hist_sum_data_4[3]_i_71_n_0 ;
  wire \hist_sum_data_4[3]_i_72_n_0 ;
  wire \hist_sum_data_4[3]_i_73_n_0 ;
  wire \hist_sum_data_4[3]_i_74_n_0 ;
  wire \hist_sum_data_4[3]_i_76_n_0 ;
  wire \hist_sum_data_4[3]_i_77_n_0 ;
  wire \hist_sum_data_4[3]_i_78_n_0 ;
  wire \hist_sum_data_4[3]_i_79_n_0 ;
  wire \hist_sum_data_4[3]_i_7_n_0 ;
  wire \hist_sum_data_4[3]_i_80_n_0 ;
  wire \hist_sum_data_4[3]_i_81_n_0 ;
  wire \hist_sum_data_4[3]_i_82_n_0 ;
  wire \hist_sum_data_4[3]_i_83_n_0 ;
  wire \hist_sum_data_4[3]_i_85_n_0 ;
  wire \hist_sum_data_4[3]_i_86_n_0 ;
  wire \hist_sum_data_4[3]_i_87_n_0 ;
  wire \hist_sum_data_4[3]_i_88_n_0 ;
  wire \hist_sum_data_4[3]_i_89_n_0 ;
  wire \hist_sum_data_4[3]_i_8_n_0 ;
  wire \hist_sum_data_4[3]_i_90_n_0 ;
  wire \hist_sum_data_4[3]_i_91_n_0 ;
  wire \hist_sum_data_4[3]_i_92_n_0 ;
  wire \hist_sum_data_4[3]_i_94_n_0 ;
  wire \hist_sum_data_4[3]_i_95_n_0 ;
  wire \hist_sum_data_4[3]_i_96_n_0 ;
  wire \hist_sum_data_4[3]_i_97_n_0 ;
  wire \hist_sum_data_4[3]_i_98_n_0 ;
  wire \hist_sum_data_4[3]_i_99_n_0 ;
  wire \hist_sum_data_4[3]_i_9_n_0 ;
  wire \hist_sum_data_4[4]_i_1_n_0 ;
  wire \hist_sum_data_4[5]_i_1_n_0 ;
  wire \hist_sum_data_4[6]_i_1_n_0 ;
  wire \hist_sum_data_4[7]_i_10_n_0 ;
  wire \hist_sum_data_4[7]_i_12_n_0 ;
  wire \hist_sum_data_4[7]_i_13_n_0 ;
  wire \hist_sum_data_4[7]_i_14_n_0 ;
  wire \hist_sum_data_4[7]_i_15_n_0 ;
  wire \hist_sum_data_4[7]_i_16_n_0 ;
  wire \hist_sum_data_4[7]_i_19_n_0 ;
  wire \hist_sum_data_4[7]_i_1_n_0 ;
  wire \hist_sum_data_4[7]_i_20_n_0 ;
  wire \hist_sum_data_4[7]_i_22_n_0 ;
  wire \hist_sum_data_4[7]_i_23_n_0 ;
  wire \hist_sum_data_4[7]_i_24_n_0 ;
  wire \hist_sum_data_4[7]_i_25_n_0 ;
  wire \hist_sum_data_4[7]_i_26_n_0 ;
  wire \hist_sum_data_4[7]_i_27_n_0 ;
  wire \hist_sum_data_4[7]_i_28_n_0 ;
  wire \hist_sum_data_4[7]_i_29_n_0 ;
  wire \hist_sum_data_4[7]_i_31_n_0 ;
  wire \hist_sum_data_4[7]_i_32_n_0 ;
  wire \hist_sum_data_4[7]_i_33_n_0 ;
  wire \hist_sum_data_4[7]_i_34_n_0 ;
  wire \hist_sum_data_4[7]_i_36_n_0 ;
  wire \hist_sum_data_4[7]_i_37_n_0 ;
  wire \hist_sum_data_4[7]_i_38_n_0 ;
  wire \hist_sum_data_4[7]_i_39_n_0 ;
  wire \hist_sum_data_4[7]_i_40_n_0 ;
  wire \hist_sum_data_4[7]_i_41_n_0 ;
  wire \hist_sum_data_4[7]_i_42_n_0 ;
  wire \hist_sum_data_4[7]_i_43_n_0 ;
  wire \hist_sum_data_4[7]_i_45_n_0 ;
  wire \hist_sum_data_4[7]_i_46_n_0 ;
  wire \hist_sum_data_4[7]_i_47_n_0 ;
  wire \hist_sum_data_4[7]_i_48_n_0 ;
  wire \hist_sum_data_4[7]_i_49_n_0 ;
  wire \hist_sum_data_4[7]_i_50_n_0 ;
  wire \hist_sum_data_4[7]_i_51_n_0 ;
  wire \hist_sum_data_4[7]_i_52_n_0 ;
  wire \hist_sum_data_4[7]_i_53_n_0 ;
  wire \hist_sum_data_4[7]_i_54_n_0 ;
  wire \hist_sum_data_4[7]_i_55_n_0 ;
  wire \hist_sum_data_4[7]_i_56_n_0 ;
  wire \hist_sum_data_4[7]_i_57_n_0 ;
  wire \hist_sum_data_4[7]_i_58_n_0 ;
  wire \hist_sum_data_4[7]_i_6_n_0 ;
  wire \hist_sum_data_4[7]_i_7_n_0 ;
  wire \hist_sum_data_4[7]_i_8_n_0 ;
  wire \hist_sum_data_4[7]_i_9_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_14_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_14_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_14_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_14_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_23_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_23_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_23_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_23_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_2_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_2_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_2_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_2_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_2_n_4 ;
  wire \hist_sum_data_4_reg[3]_i_2_n_5 ;
  wire \hist_sum_data_4_reg[3]_i_2_n_6 ;
  wire \hist_sum_data_4_reg[3]_i_2_n_7 ;
  wire \hist_sum_data_4_reg[3]_i_32_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_32_n_7 ;
  wire \hist_sum_data_4_reg[3]_i_35_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_35_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_35_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_35_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_35_n_4 ;
  wire \hist_sum_data_4_reg[3]_i_35_n_5 ;
  wire \hist_sum_data_4_reg[3]_i_35_n_6 ;
  wire \hist_sum_data_4_reg[3]_i_35_n_7 ;
  wire \hist_sum_data_4_reg[3]_i_38_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_38_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_38_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_38_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_3_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_3_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_3_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_3_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_3_n_4 ;
  wire \hist_sum_data_4_reg[3]_i_3_n_5 ;
  wire \hist_sum_data_4_reg[3]_i_3_n_6 ;
  wire \hist_sum_data_4_reg[3]_i_3_n_7 ;
  wire \hist_sum_data_4_reg[3]_i_4_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_4_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_4_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_4_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_50_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_50_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_50_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_50_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_50_n_4 ;
  wire \hist_sum_data_4_reg[3]_i_50_n_5 ;
  wire \hist_sum_data_4_reg[3]_i_50_n_6 ;
  wire \hist_sum_data_4_reg[3]_i_50_n_7 ;
  wire \hist_sum_data_4_reg[3]_i_55_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_55_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_55_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_55_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_63_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_63_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_63_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_63_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_63_n_4 ;
  wire \hist_sum_data_4_reg[3]_i_63_n_5 ;
  wire \hist_sum_data_4_reg[3]_i_63_n_6 ;
  wire \hist_sum_data_4_reg[3]_i_63_n_7 ;
  wire \hist_sum_data_4_reg[3]_i_75_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_75_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_75_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_75_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_75_n_4 ;
  wire \hist_sum_data_4_reg[3]_i_75_n_5 ;
  wire \hist_sum_data_4_reg[3]_i_75_n_6 ;
  wire \hist_sum_data_4_reg[3]_i_75_n_7 ;
  wire \hist_sum_data_4_reg[3]_i_84_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_84_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_84_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_84_n_3 ;
  wire \hist_sum_data_4_reg[3]_i_93_n_0 ;
  wire \hist_sum_data_4_reg[3]_i_93_n_1 ;
  wire \hist_sum_data_4_reg[3]_i_93_n_2 ;
  wire \hist_sum_data_4_reg[3]_i_93_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_11_n_0 ;
  wire \hist_sum_data_4_reg[7]_i_11_n_1 ;
  wire \hist_sum_data_4_reg[7]_i_11_n_2 ;
  wire \hist_sum_data_4_reg[7]_i_11_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_17_n_0 ;
  wire \hist_sum_data_4_reg[7]_i_17_n_1 ;
  wire \hist_sum_data_4_reg[7]_i_17_n_2 ;
  wire \hist_sum_data_4_reg[7]_i_17_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_17_n_4 ;
  wire \hist_sum_data_4_reg[7]_i_17_n_5 ;
  wire \hist_sum_data_4_reg[7]_i_17_n_6 ;
  wire \hist_sum_data_4_reg[7]_i_17_n_7 ;
  wire \hist_sum_data_4_reg[7]_i_18_n_2 ;
  wire \hist_sum_data_4_reg[7]_i_18_n_7 ;
  wire \hist_sum_data_4_reg[7]_i_21_n_0 ;
  wire \hist_sum_data_4_reg[7]_i_21_n_1 ;
  wire \hist_sum_data_4_reg[7]_i_21_n_2 ;
  wire \hist_sum_data_4_reg[7]_i_21_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_2_n_0 ;
  wire \hist_sum_data_4_reg[7]_i_2_n_1 ;
  wire \hist_sum_data_4_reg[7]_i_2_n_2 ;
  wire \hist_sum_data_4_reg[7]_i_2_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_2_n_4 ;
  wire \hist_sum_data_4_reg[7]_i_2_n_5 ;
  wire \hist_sum_data_4_reg[7]_i_2_n_6 ;
  wire \hist_sum_data_4_reg[7]_i_2_n_7 ;
  wire \hist_sum_data_4_reg[7]_i_30_n_0 ;
  wire \hist_sum_data_4_reg[7]_i_30_n_1 ;
  wire \hist_sum_data_4_reg[7]_i_30_n_2 ;
  wire \hist_sum_data_4_reg[7]_i_30_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_30_n_4 ;
  wire \hist_sum_data_4_reg[7]_i_30_n_5 ;
  wire \hist_sum_data_4_reg[7]_i_30_n_6 ;
  wire \hist_sum_data_4_reg[7]_i_30_n_7 ;
  wire \hist_sum_data_4_reg[7]_i_35_n_0 ;
  wire \hist_sum_data_4_reg[7]_i_35_n_1 ;
  wire \hist_sum_data_4_reg[7]_i_35_n_2 ;
  wire \hist_sum_data_4_reg[7]_i_35_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_3_n_1 ;
  wire \hist_sum_data_4_reg[7]_i_3_n_2 ;
  wire \hist_sum_data_4_reg[7]_i_3_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_44_n_0 ;
  wire \hist_sum_data_4_reg[7]_i_44_n_1 ;
  wire \hist_sum_data_4_reg[7]_i_44_n_2 ;
  wire \hist_sum_data_4_reg[7]_i_44_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_44_n_4 ;
  wire \hist_sum_data_4_reg[7]_i_44_n_5 ;
  wire \hist_sum_data_4_reg[7]_i_44_n_6 ;
  wire \hist_sum_data_4_reg[7]_i_44_n_7 ;
  wire \hist_sum_data_4_reg[7]_i_4_n_1 ;
  wire \hist_sum_data_4_reg[7]_i_4_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_4_n_6 ;
  wire \hist_sum_data_4_reg[7]_i_4_n_7 ;
  wire \hist_sum_data_4_reg[7]_i_5_n_1 ;
  wire \hist_sum_data_4_reg[7]_i_5_n_2 ;
  wire \hist_sum_data_4_reg[7]_i_5_n_3 ;
  wire \hist_sum_data_4_reg[7]_i_5_n_4 ;
  wire \hist_sum_data_4_reg[7]_i_5_n_5 ;
  wire \hist_sum_data_4_reg[7]_i_5_n_6 ;
  wire \hist_sum_data_4_reg[7]_i_5_n_7 ;
  wire \hist_sum_data_4_reg_n_0_[0] ;
  wire \hist_sum_data_4_reg_n_0_[1] ;
  wire \hist_sum_data_4_reg_n_0_[2] ;
  wire \hist_sum_data_4_reg_n_0_[3] ;
  wire \hist_sum_data_4_reg_n_0_[4] ;
  wire \hist_sum_data_4_reg_n_0_[5] ;
  wire \hist_sum_data_4_reg_n_0_[6] ;
  wire \hist_sum_data_4_reg_n_0_[7] ;
  wire [7:0]hist_sum_data_5;
  wire \hist_sum_data_5[3]_i_2_n_0 ;
  wire \hist_sum_data_5[3]_i_3_n_0 ;
  wire \hist_sum_data_5[3]_i_4_n_0 ;
  wire \hist_sum_data_5[3]_i_5_n_0 ;
  wire \hist_sum_data_5[7]_i_2_n_0 ;
  wire \hist_sum_data_5[7]_i_3_n_0 ;
  wire \hist_sum_data_5[7]_i_4_n_0 ;
  wire \hist_sum_data_5[7]_i_5_n_0 ;
  wire \hist_sum_data_5_reg[3]_i_1_n_0 ;
  wire \hist_sum_data_5_reg[3]_i_1_n_1 ;
  wire \hist_sum_data_5_reg[3]_i_1_n_2 ;
  wire \hist_sum_data_5_reg[3]_i_1_n_3 ;
  wire \hist_sum_data_5_reg[3]_i_1_n_4 ;
  wire \hist_sum_data_5_reg[3]_i_1_n_5 ;
  wire \hist_sum_data_5_reg[3]_i_1_n_6 ;
  wire \hist_sum_data_5_reg[3]_i_1_n_7 ;
  wire \hist_sum_data_5_reg[7]_i_1_n_1 ;
  wire \hist_sum_data_5_reg[7]_i_1_n_2 ;
  wire \hist_sum_data_5_reg[7]_i_1_n_3 ;
  wire \hist_sum_data_5_reg[7]_i_1_n_4 ;
  wire \hist_sum_data_5_reg[7]_i_1_n_5 ;
  wire \hist_sum_data_5_reg[7]_i_1_n_6 ;
  wire \hist_sum_data_5_reg[7]_i_1_n_7 ;
  wire hist_sum_done;
  wire hist_sum_done_i_2_n_0;
  wire hist_sum_runn_0;
  wire hist_sum_runn_0_i_1_n_0;
  wire hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c_n_0;
  wire hist_sum_runn_4_reg_gate_n_0;
  wire hist_sum_runn_4_reg_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0;
  wire hist_sum_runn_5;
  wire in_href;
  wire in_vsync;
  wire [7:0]out_data;
  wire out_href;
  wire out_vsync;
  wire [1:0]p_0_in__0;
  wire pclk;
  wire prev_vsync;
  wire rst_n;
  wire s_hist_equ_en;
  wire s_hist_equ_en_reg;
  wire s_module_reset;
  wire NLW_hist_sum_data_20_CARRYCASCOUT_UNCONNECTED;
  wire NLW_hist_sum_data_20_MULTSIGNOUT_UNCONNECTED;
  wire NLW_hist_sum_data_20_OVERFLOW_UNCONNECTED;
  wire NLW_hist_sum_data_20_PATTERNBDETECT_UNCONNECTED;
  wire NLW_hist_sum_data_20_PATTERNDETECT_UNCONNECTED;
  wire NLW_hist_sum_data_20_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_hist_sum_data_20_ACOUT_UNCONNECTED;
  wire [17:0]NLW_hist_sum_data_20_BCOUT_UNCONNECTED;
  wire [3:0]NLW_hist_sum_data_20_CARRYOUT_UNCONNECTED;
  wire NLW_hist_sum_data_20__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_hist_sum_data_20__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_hist_sum_data_20__0_OVERFLOW_UNCONNECTED;
  wire NLW_hist_sum_data_20__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_hist_sum_data_20__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_hist_sum_data_20__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_hist_sum_data_20__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_hist_sum_data_20__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_hist_sum_data_20__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_hist_sum_data_20__0_PCOUT_UNCONNECTED;
  wire [3:0]NLW_hist_sum_data_20_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_hist_sum_data_20_i_1_O_UNCONNECTED;
  wire [0:0]\NLW_hist_sum_data_3_reg[0]_i_108_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:1]\NLW_hist_sum_data_3_reg[0]_i_138_O_UNCONNECTED ;
  wire [0:0]\NLW_hist_sum_data_3_reg[0]_i_156_O_UNCONNECTED ;
  wire [2:0]\NLW_hist_sum_data_3_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[0]_i_28_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[0]_i_64_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[0]_i_99_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[19]_i_12_O_UNCONNECTED ;
  wire [3:1]\NLW_hist_sum_data_3_reg[19]_i_18_CO_UNCONNECTED ;
  wire [3:2]\NLW_hist_sum_data_3_reg[19]_i_18_O_UNCONNECTED ;
  wire [3:2]\NLW_hist_sum_data_3_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_hist_sum_data_3_reg[19]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_hist_sum_data_3_reg[19]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[19]_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_hist_sum_data_3_reg[19]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[19]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[19]_i_24_O_UNCONNECTED ;
  wire [3:2]\NLW_hist_sum_data_3_reg[19]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[19]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[19]_i_49_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[19]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_hist_sum_data_3_reg[19]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_hist_sum_data_3_reg[19]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[19]_i_63_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_3_reg[19]_i_77_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[3]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[3]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[3]_i_32_CO_UNCONNECTED ;
  wire [3:1]\NLW_hist_sum_data_4_reg[3]_i_32_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[3]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[3]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[3]_i_55_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[3]_i_84_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[3]_i_93_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[7]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[7]_i_18_CO_UNCONNECTED ;
  wire [3:1]\NLW_hist_sum_data_4_reg[7]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[7]_i_21_O_UNCONNECTED ;
  wire [3:3]\NLW_hist_sum_data_4_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[7]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_hist_sum_data_4_reg[7]_i_35_O_UNCONNECTED ;
  wire [3:1]\NLW_hist_sum_data_4_reg[7]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_hist_sum_data_4_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_hist_sum_data_4_reg[7]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_hist_sum_data_5_reg[7]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \hist_addr[4]_i_1 
       (.I0(cur_ram02_out),
        .I1(hist_addr_reg__0[2]),
        .I2(hist_addr_reg__0[0]),
        .I3(hist_addr_reg__0[1]),
        .I4(hist_addr_reg__0[3]),
        .I5(hist_addr_reg__0[4]),
        .O(\hist_addr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \hist_addr[5]_i_2 
       (.I0(hist_addr_reg__0[3]),
        .I1(hist_addr_reg__0[1]),
        .I2(hist_addr_reg__0[0]),
        .I3(hist_addr_reg__0[2]),
        .I4(hist_addr_reg__0[4]),
        .O(\hist_addr[5]_i_2_n_0 ));
  FDCE \hist_addr_reg[0] 
       (.C(pclk),
        .CE(hist_ram_data_n_2),
        .CLR(s_hist_equ_en_reg),
        .D(p_0_in__0[0]),
        .Q(hist_addr_reg__0[0]));
  FDCE \hist_addr_reg[1] 
       (.C(pclk),
        .CE(hist_ram_data_n_2),
        .CLR(s_hist_equ_en_reg),
        .D(p_0_in__0[1]),
        .Q(hist_addr_reg__0[1]));
  FDCE \hist_addr_reg[2] 
       (.C(pclk),
        .CE(hist_ram_data_n_2),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_8),
        .Q(hist_addr_reg__0[2]));
  FDCE \hist_addr_reg[3] 
       (.C(pclk),
        .CE(hist_ram_data_n_2),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_7),
        .Q(hist_addr_reg__0[3]));
  FDCE \hist_addr_reg[4] 
       (.C(pclk),
        .CE(hist_ram_data_n_2),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_addr[4]_i_1_n_0 ),
        .Q(hist_addr_reg__0[4]));
  FDCE \hist_addr_reg[5] 
       (.C(pclk),
        .CE(hist_ram_data_n_2),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_6),
        .Q(hist_addr_reg__0[5]));
  FDCE \hist_addr_reg[6] 
       (.C(pclk),
        .CE(hist_ram_data_n_2),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_5),
        .Q(hist_addr_reg__0[6]));
  FDCE \hist_addr_reg[7] 
       (.C(pclk),
        .CE(hist_ram_data_n_2),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_4),
        .Q(hist_addr_reg__0[7]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dp_ram__parameterized0 hist_map_ram
       (.ADDRARDADDR(hist_sum_addr_5),
        .D(D),
        .Q(hist_sum_data_5),
        .hist_equ_href(hist_equ_href),
        .hist_sum_runn_5(hist_sum_runn_5),
        .out_data(out_data),
        .out_href(out_href),
        .pclk(pclk),
        .s_hist_equ_en(s_hist_equ_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hist_ram hist_ram_data
       (.A(hist_sum_data_1_reg),
        .D({hist_ram_data_n_4,hist_ram_data_n_5,hist_ram_data_n_6,hist_ram_data_n_7,hist_ram_data_n_8,p_0_in__0}),
        .E(hist_ram_data_n_2),
        .O({hist_ram_data_n_11,hist_ram_data_n_12,hist_ram_data_n_13,hist_ram_data_n_14}),
        .Q(hist_addr_reg__0),
        .cur_ram02_out(cur_ram02_out),
        .\hist_addr_reg[5] (\hist_addr[5]_i_2_n_0 ),
        .hist_equ_href(hist_equ_href),
        .hist_sum_done(hist_sum_done),
        .hist_sum_done_reg(hist_sum_done_i_2_n_0),
        .hist_sum_runn_0(hist_sum_runn_0),
        .mem_reg({hist_ram_data_n_15,hist_ram_data_n_16,hist_ram_data_n_17,hist_ram_data_n_18}),
        .mem_reg_0({hist_ram_data_n_19,hist_ram_data_n_20,hist_ram_data_n_21,hist_ram_data_n_22}),
        .mem_reg_1({hist_ram_data_n_23,hist_ram_data_n_24,hist_ram_data_n_25,hist_ram_data_n_26}),
        .mem_reg_2({hist_ram_data_n_27,hist_ram_data_n_28,hist_ram_data_n_29,hist_ram_data_n_30}),
        .mem_reg_3({hist_ram_data_n_31,hist_ram_data_n_32,hist_ram_data_n_33}),
        .out_data(out_data),
        .out_href(out_href),
        .out_vsync(out_vsync),
        .pclk(pclk),
        .prev_flip_trigger_reg_0(prev_vsync),
        .prev_flip_trigger_reg_1(hist_ram_data_n_3),
        .rst_n(rst_n),
        .s_hist_equ_en(s_hist_equ_en),
        .s_hist_equ_en_reg(s_hist_equ_en_reg),
        .s_module_reset(s_module_reset));
  FDCE hist_sum_addr_0_reg_c
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(1'b1),
        .Q(hist_sum_addr_0_reg_c_n_0));
  FDCE hist_sum_addr_1_reg_c
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_0_reg_c_n_0),
        .Q(hist_sum_addr_1_reg_c_n_0));
  FDCE hist_sum_addr_2_reg_c
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_1_reg_c_n_0),
        .Q(hist_sum_addr_2_reg_c_n_0));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c " *) 
  SRL16E \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(\hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ),
        .Q(\hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1 
       (.I0(hist_addr_reg__0[0]),
        .I1(hist_sum_done),
        .O(\hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c " *) 
  SRL16E \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(\hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ),
        .Q(\hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1 
       (.I0(hist_addr_reg__0[1]),
        .I1(hist_sum_done),
        .O(\hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c " *) 
  SRL16E \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(\hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ),
        .Q(\hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1 
       (.I0(hist_addr_reg__0[2]),
        .I1(hist_sum_done),
        .O(\hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c " *) 
  SRL16E \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(\hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ),
        .Q(\hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1 
       (.I0(hist_addr_reg__0[3]),
        .I1(hist_sum_done),
        .O(\hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c " *) 
  SRL16E \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(\hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ),
        .Q(\hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1 
       (.I0(hist_addr_reg__0[4]),
        .I1(hist_sum_done),
        .O(\hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c " *) 
  SRL16E \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(\hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ),
        .Q(\hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1 
       (.I0(hist_addr_reg__0[5]),
        .I1(hist_sum_done),
        .O(\hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c " *) 
  SRL16E \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(\hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ),
        .Q(\hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1 
       (.I0(hist_addr_reg__0[6]),
        .I1(hist_sum_done),
        .O(\hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c " *) 
  SRL16E \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(\hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ),
        .Q(\hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1 
       (.I0(hist_addr_reg__0[7]),
        .I1(hist_sum_done),
        .O(\hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_i_1_n_0 ));
  FDCE hist_sum_addr_3_reg_c
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_2_reg_c_n_0),
        .Q(hist_sum_addr_3_reg_c_n_0));
  FDRE \hist_sum_addr_4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c 
       (.C(pclk),
        .CE(1'b1),
        .D(\hist_sum_addr_3_reg[0]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ),
        .Q(\hist_sum_addr_4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \hist_sum_addr_4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c 
       (.C(pclk),
        .CE(1'b1),
        .D(\hist_sum_addr_3_reg[1]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ),
        .Q(\hist_sum_addr_4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \hist_sum_addr_4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c 
       (.C(pclk),
        .CE(1'b1),
        .D(\hist_sum_addr_3_reg[2]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ),
        .Q(\hist_sum_addr_4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \hist_sum_addr_4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c 
       (.C(pclk),
        .CE(1'b1),
        .D(\hist_sum_addr_3_reg[3]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ),
        .Q(\hist_sum_addr_4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \hist_sum_addr_4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c 
       (.C(pclk),
        .CE(1'b1),
        .D(\hist_sum_addr_3_reg[4]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ),
        .Q(\hist_sum_addr_4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \hist_sum_addr_4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c 
       (.C(pclk),
        .CE(1'b1),
        .D(\hist_sum_addr_3_reg[5]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ),
        .Q(\hist_sum_addr_4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \hist_sum_addr_4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c 
       (.C(pclk),
        .CE(1'b1),
        .D(\hist_sum_addr_3_reg[6]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ),
        .Q(\hist_sum_addr_4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .R(1'b0));
  FDRE \hist_sum_addr_4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c 
       (.C(pclk),
        .CE(1'b1),
        .D(\hist_sum_addr_3_reg[7]_srl4_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0 ),
        .Q(\hist_sum_addr_4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .R(1'b0));
  FDCE hist_sum_addr_4_reg_c
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_3_reg_c_n_0),
        .Q(hist_sum_addr_4_reg_c_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    hist_sum_addr_4_reg_gate
       (.I0(\hist_sum_addr_4_reg[7]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .I1(hist_sum_addr_4_reg_c_n_0),
        .O(hist_sum_addr_4_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    hist_sum_addr_4_reg_gate__0
       (.I0(\hist_sum_addr_4_reg[6]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .I1(hist_sum_addr_4_reg_c_n_0),
        .O(hist_sum_addr_4_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    hist_sum_addr_4_reg_gate__1
       (.I0(\hist_sum_addr_4_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .I1(hist_sum_addr_4_reg_c_n_0),
        .O(hist_sum_addr_4_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    hist_sum_addr_4_reg_gate__2
       (.I0(\hist_sum_addr_4_reg[4]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .I1(hist_sum_addr_4_reg_c_n_0),
        .O(hist_sum_addr_4_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    hist_sum_addr_4_reg_gate__3
       (.I0(\hist_sum_addr_4_reg[3]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .I1(hist_sum_addr_4_reg_c_n_0),
        .O(hist_sum_addr_4_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    hist_sum_addr_4_reg_gate__4
       (.I0(\hist_sum_addr_4_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .I1(hist_sum_addr_4_reg_c_n_0),
        .O(hist_sum_addr_4_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    hist_sum_addr_4_reg_gate__5
       (.I0(\hist_sum_addr_4_reg[1]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .I1(hist_sum_addr_4_reg_c_n_0),
        .O(hist_sum_addr_4_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    hist_sum_addr_4_reg_gate__6
       (.I0(\hist_sum_addr_4_reg[0]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_4_reg_c_n_0 ),
        .I1(hist_sum_addr_4_reg_c_n_0),
        .O(hist_sum_addr_4_reg_gate__6_n_0));
  FDCE \hist_sum_addr_5_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_4_reg_gate__6_n_0),
        .Q(hist_sum_addr_5[0]));
  FDCE \hist_sum_addr_5_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_4_reg_gate__5_n_0),
        .Q(hist_sum_addr_5[1]));
  FDCE \hist_sum_addr_5_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_4_reg_gate__4_n_0),
        .Q(hist_sum_addr_5[2]));
  FDCE \hist_sum_addr_5_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_4_reg_gate__3_n_0),
        .Q(hist_sum_addr_5[3]));
  FDCE \hist_sum_addr_5_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_4_reg_gate__2_n_0),
        .Q(hist_sum_addr_5[4]));
  FDCE \hist_sum_addr_5_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_4_reg_gate__1_n_0),
        .Q(hist_sum_addr_5[5]));
  FDCE \hist_sum_addr_5_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_4_reg_gate__0_n_0),
        .Q(hist_sum_addr_5[6]));
  FDCE \hist_sum_addr_5_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_addr_4_reg_gate_n_0),
        .Q(hist_sum_addr_5[7]));
  FDCE \hist_sum_data_1_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_14),
        .Q(hist_sum_data_1_reg[0]));
  FDCE \hist_sum_data_1_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_20),
        .Q(hist_sum_data_1_reg[10]));
  FDCE \hist_sum_data_1_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_19),
        .Q(hist_sum_data_1_reg[11]));
  FDCE \hist_sum_data_1_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_26),
        .Q(hist_sum_data_1_reg[12]));
  FDCE \hist_sum_data_1_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_25),
        .Q(hist_sum_data_1_reg[13]));
  FDCE \hist_sum_data_1_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_24),
        .Q(hist_sum_data_1_reg[14]));
  FDCE \hist_sum_data_1_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_23),
        .Q(hist_sum_data_1_reg[15]));
  FDCE \hist_sum_data_1_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_30),
        .Q(hist_sum_data_1_reg[16]));
  FDCE \hist_sum_data_1_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_29),
        .Q(hist_sum_data_1_reg[17]));
  FDCE \hist_sum_data_1_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_28),
        .Q(hist_sum_data_1_reg[18]));
  FDCE \hist_sum_data_1_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_27),
        .Q(hist_sum_data_1_reg[19]));
  FDCE \hist_sum_data_1_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_13),
        .Q(hist_sum_data_1_reg[1]));
  FDCE \hist_sum_data_1_reg[20] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_33),
        .Q(hist_sum_data_1_reg[20]));
  FDCE \hist_sum_data_1_reg[21] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_32),
        .Q(hist_sum_data_1_reg[21]));
  FDCE \hist_sum_data_1_reg[22] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_31),
        .Q(hist_sum_data_1_reg[22]));
  FDCE \hist_sum_data_1_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_12),
        .Q(hist_sum_data_1_reg[2]));
  FDCE \hist_sum_data_1_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_11),
        .Q(hist_sum_data_1_reg[3]));
  FDCE \hist_sum_data_1_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_18),
        .Q(hist_sum_data_1_reg[4]));
  FDCE \hist_sum_data_1_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_17),
        .Q(hist_sum_data_1_reg[5]));
  FDCE \hist_sum_data_1_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_16),
        .Q(hist_sum_data_1_reg[6]));
  FDCE \hist_sum_data_1_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_15),
        .Q(hist_sum_data_1_reg[7]));
  FDCE \hist_sum_data_1_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_22),
        .Q(hist_sum_data_1_reg[8]));
  FDCE \hist_sum_data_1_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_21),
        .Q(hist_sum_data_1_reg[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    hist_sum_data_20
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hist_sum_data_1_reg}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_hist_sum_data_20_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[7:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_hist_sum_data_20_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_hist_sum_data_20_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_hist_sum_data_20_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_hist_sum_data_20_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_hist_sum_data_20_OVERFLOW_UNCONNECTED),
        .P({hist_sum_data_20_n_58,hist_sum_data_20_n_59,hist_sum_data_20_n_60,hist_sum_data_20_n_61,hist_sum_data_20_n_62,hist_sum_data_20_n_63,hist_sum_data_20_n_64,hist_sum_data_20_n_65,hist_sum_data_20_n_66,hist_sum_data_20_n_67,hist_sum_data_20_n_68,hist_sum_data_20_n_69,hist_sum_data_20_n_70,hist_sum_data_20_n_71,hist_sum_data_20_n_72,hist_sum_data_20_n_73,hist_sum_data_20_n_74,hist_sum_data_20_n_75,hist_sum_data_20_n_76,hist_sum_data_20_n_77,hist_sum_data_20_n_78,hist_sum_data_20_n_79,hist_sum_data_20_n_80,hist_sum_data_20_n_81,hist_sum_data_20_n_82,hist_sum_data_20_n_83,hist_sum_data_20_n_84,hist_sum_data_20_n_85,hist_sum_data_20_n_86,hist_sum_data_20_n_87,hist_sum_data_20_n_88,hist_sum_data_20_n_89,hist_sum_data_20_n_90,hist_sum_data_20_n_91,hist_sum_data_20_n_92,hist_sum_data_20_n_93,hist_sum_data_20_n_94,hist_sum_data_20_n_95,hist_sum_data_20_n_96,hist_sum_data_20_n_97,hist_sum_data_20_n_98,hist_sum_data_20_n_99,hist_sum_data_20_n_100,hist_sum_data_20_n_101,hist_sum_data_20_n_102,hist_sum_data_20_n_103,hist_sum_data_20_n_104,hist_sum_data_20_n_105}),
        .PATTERNBDETECT(NLW_hist_sum_data_20_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_hist_sum_data_20_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({hist_sum_data_20_n_106,hist_sum_data_20_n_107,hist_sum_data_20_n_108,hist_sum_data_20_n_109,hist_sum_data_20_n_110,hist_sum_data_20_n_111,hist_sum_data_20_n_112,hist_sum_data_20_n_113,hist_sum_data_20_n_114,hist_sum_data_20_n_115,hist_sum_data_20_n_116,hist_sum_data_20_n_117,hist_sum_data_20_n_118,hist_sum_data_20_n_119,hist_sum_data_20_n_120,hist_sum_data_20_n_121,hist_sum_data_20_n_122,hist_sum_data_20_n_123,hist_sum_data_20_n_124,hist_sum_data_20_n_125,hist_sum_data_20_n_126,hist_sum_data_20_n_127,hist_sum_data_20_n_128,hist_sum_data_20_n_129,hist_sum_data_20_n_130,hist_sum_data_20_n_131,hist_sum_data_20_n_132,hist_sum_data_20_n_133,hist_sum_data_20_n_134,hist_sum_data_20_n_135,hist_sum_data_20_n_136,hist_sum_data_20_n_137,hist_sum_data_20_n_138,hist_sum_data_20_n_139,hist_sum_data_20_n_140,hist_sum_data_20_n_141,hist_sum_data_20_n_142,hist_sum_data_20_n_143,hist_sum_data_20_n_144,hist_sum_data_20_n_145,hist_sum_data_20_n_146,hist_sum_data_20_n_147,hist_sum_data_20_n_148,hist_sum_data_20_n_149,hist_sum_data_20_n_150,hist_sum_data_20_n_151,hist_sum_data_20_n_152,hist_sum_data_20_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_hist_sum_data_20_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    hist_sum_data_20__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hist_sum_data_1_reg}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_hist_sum_data_20__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30],hist_sum_data_21[30]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_hist_sum_data_20__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_hist_sum_data_20__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_hist_sum_data_20__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_hist_sum_data_20__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_hist_sum_data_20__0_OVERFLOW_UNCONNECTED),
        .P({hist_sum_data_20__0_n_58,hist_sum_data_20__0_n_59,hist_sum_data_20__0_n_60,hist_sum_data_20__0_n_61,hist_sum_data_20__0_n_62,hist_sum_data_20__0_n_63,hist_sum_data_20__0_n_64,hist_sum_data_20__0_n_65,hist_sum_data_20__0_n_66,hist_sum_data_20__0_n_67,hist_sum_data_20__0_n_68,hist_sum_data_20__0_n_69,hist_sum_data_20__0_n_70,hist_sum_data_20__0_n_71,hist_sum_data_20__0_n_72,hist_sum_data_20__0_n_73,hist_sum_data_20__0_n_74,hist_sum_data_20__0_n_75,hist_sum_data_20__0_n_76,hist_sum_data_20__0_n_77,hist_sum_data_20__0_n_78,hist_sum_data_20__0_n_79,hist_sum_data_20__0_n_80,hist_sum_data_20__0_n_81,hist_sum_data_20__0_n_82,hist_sum_data_20__0_n_83,hist_sum_data_20__0_n_84,hist_sum_data_20__0_n_85,hist_sum_data_20__0_n_86,hist_sum_data_20__0_n_87,hist_sum_data_20__0_n_88,hist_sum_data_20__0_n_89,hist_sum_data_20__0_n_90,hist_sum_data_20__0_n_91,hist_sum_data_20__0_n_92,hist_sum_data_20__0_n_93,hist_sum_data_20__0_n_94,hist_sum_data_20__0_n_95,hist_sum_data_20__0_n_96,hist_sum_data_20__0_n_97,hist_sum_data_20__0_n_98,hist_sum_data_20__0_n_99,hist_sum_data_20__0_n_100,hist_sum_data_20__0_n_101,hist_sum_data_20__0_n_102,hist_sum_data_20__0_n_103,hist_sum_data_20__0_n_104,hist_sum_data_20__0_n_105}),
        .PATTERNBDETECT(NLW_hist_sum_data_20__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_hist_sum_data_20__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({hist_sum_data_20_n_106,hist_sum_data_20_n_107,hist_sum_data_20_n_108,hist_sum_data_20_n_109,hist_sum_data_20_n_110,hist_sum_data_20_n_111,hist_sum_data_20_n_112,hist_sum_data_20_n_113,hist_sum_data_20_n_114,hist_sum_data_20_n_115,hist_sum_data_20_n_116,hist_sum_data_20_n_117,hist_sum_data_20_n_118,hist_sum_data_20_n_119,hist_sum_data_20_n_120,hist_sum_data_20_n_121,hist_sum_data_20_n_122,hist_sum_data_20_n_123,hist_sum_data_20_n_124,hist_sum_data_20_n_125,hist_sum_data_20_n_126,hist_sum_data_20_n_127,hist_sum_data_20_n_128,hist_sum_data_20_n_129,hist_sum_data_20_n_130,hist_sum_data_20_n_131,hist_sum_data_20_n_132,hist_sum_data_20_n_133,hist_sum_data_20_n_134,hist_sum_data_20_n_135,hist_sum_data_20_n_136,hist_sum_data_20_n_137,hist_sum_data_20_n_138,hist_sum_data_20_n_139,hist_sum_data_20_n_140,hist_sum_data_20_n_141,hist_sum_data_20_n_142,hist_sum_data_20_n_143,hist_sum_data_20_n_144,hist_sum_data_20_n_145,hist_sum_data_20_n_146,hist_sum_data_20_n_147,hist_sum_data_20_n_148,hist_sum_data_20_n_149,hist_sum_data_20_n_150,hist_sum_data_20_n_151,hist_sum_data_20_n_152,hist_sum_data_20_n_153}),
        .PCOUT(NLW_hist_sum_data_20__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_hist_sum_data_20__0_UNDERFLOW_UNCONNECTED));
  CARRY4 hist_sum_data_20_i_1
       (.CI(hist_sum_data_20_i_2_n_0),
        .CO(NLW_hist_sum_data_20_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_hist_sum_data_20_i_1_O_UNCONNECTED[3:1],hist_sum_data_21[30]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    hist_sum_data_20_i_10
       (.I0(Q[1]),
        .I1(hist_sum_data_20_0[1]),
        .O(hist_sum_data_20_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    hist_sum_data_20_i_11
       (.I0(Q[0]),
        .I1(hist_sum_data_20_0[0]),
        .O(hist_sum_data_20_i_11_n_0));
  CARRY4 hist_sum_data_20_i_2
       (.CI(hist_sum_data_20_i_3_n_0),
        .CO({hist_sum_data_20_i_2_n_0,hist_sum_data_20_i_2_n_1,hist_sum_data_20_i_2_n_2,hist_sum_data_20_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(hist_sum_data_21[7:4]),
        .S({hist_sum_data_20_i_4_n_0,hist_sum_data_20_i_5_n_0,hist_sum_data_20_i_6_n_0,hist_sum_data_20_i_7_n_0}));
  CARRY4 hist_sum_data_20_i_3
       (.CI(1'b0),
        .CO({hist_sum_data_20_i_3_n_0,hist_sum_data_20_i_3_n_1,hist_sum_data_20_i_3_n_2,hist_sum_data_20_i_3_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(hist_sum_data_21[3:0]),
        .S({hist_sum_data_20_i_8_n_0,hist_sum_data_20_i_9_n_0,hist_sum_data_20_i_10_n_0,hist_sum_data_20_i_11_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    hist_sum_data_20_i_4
       (.I0(Q[7]),
        .I1(hist_sum_data_20_0[7]),
        .O(hist_sum_data_20_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    hist_sum_data_20_i_5
       (.I0(Q[6]),
        .I1(hist_sum_data_20_0[6]),
        .O(hist_sum_data_20_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    hist_sum_data_20_i_6
       (.I0(Q[5]),
        .I1(hist_sum_data_20_0[5]),
        .O(hist_sum_data_20_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    hist_sum_data_20_i_7
       (.I0(Q[4]),
        .I1(hist_sum_data_20_0[4]),
        .O(hist_sum_data_20_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    hist_sum_data_20_i_8
       (.I0(Q[3]),
        .I1(hist_sum_data_20_0[3]),
        .O(hist_sum_data_20_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    hist_sum_data_20_i_9
       (.I0(Q[2]),
        .I1(hist_sum_data_20_0[2]),
        .O(hist_sum_data_20_i_9_n_0));
  FDCE \hist_sum_data_2_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_105),
        .Q(hist_sum_data_2_reg__0[0]));
  FDCE \hist_sum_data_2_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_95),
        .Q(hist_sum_data_2_reg__0[10]));
  FDCE \hist_sum_data_2_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_94),
        .Q(hist_sum_data_2_reg__0[11]));
  FDCE \hist_sum_data_2_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_93),
        .Q(hist_sum_data_2_reg__0[12]));
  FDCE \hist_sum_data_2_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_92),
        .Q(hist_sum_data_2_reg__0[13]));
  FDCE \hist_sum_data_2_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_91),
        .Q(hist_sum_data_2_reg__0[14]));
  FDCE \hist_sum_data_2_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_90),
        .Q(hist_sum_data_2_reg__0[15]));
  FDCE \hist_sum_data_2_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_89),
        .Q(hist_sum_data_2_reg__0[16]));
  FDCE \hist_sum_data_2_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_104),
        .Q(hist_sum_data_2_reg__0[1]));
  FDCE \hist_sum_data_2_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_103),
        .Q(hist_sum_data_2_reg__0[2]));
  FDCE \hist_sum_data_2_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_102),
        .Q(hist_sum_data_2_reg__0[3]));
  FDCE \hist_sum_data_2_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_101),
        .Q(hist_sum_data_2_reg__0[4]));
  FDCE \hist_sum_data_2_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_100),
        .Q(hist_sum_data_2_reg__0[5]));
  FDCE \hist_sum_data_2_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_99),
        .Q(hist_sum_data_2_reg__0[6]));
  FDCE \hist_sum_data_2_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_98),
        .Q(hist_sum_data_2_reg__0[7]));
  FDCE \hist_sum_data_2_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_97),
        .Q(hist_sum_data_2_reg__0[8]));
  FDCE \hist_sum_data_2_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_data_20_n_96),
        .Q(hist_sum_data_2_reg__0[9]));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[0]_i_1 
       (.I0(\hist_sum_data_3_reg[0]_i_2_n_4 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[3]_i_2_n_7 ),
        .O(\hist_sum_data_3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_10 
       (.I0(\hist_sum_data_3[0]_i_6_n_0 ),
        .I1(\hist_sum_data_3[0]_i_25_n_0 ),
        .I2(hist_sum_data_2_reg__0[10]),
        .I3(\hist_sum_data_3_reg[0]_i_24_n_5 ),
        .I4(\hist_sum_data_3_reg[0]_i_23_n_5 ),
        .I5(\hist_sum_data_3_reg[0]_i_22_n_5 ),
        .O(\hist_sum_data_3[0]_i_10_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_3[0]_i_100 
       (.I0(\hist_sum_data_3_reg[0]_i_138_n_7 ),
        .I1(\hist_sum_data_3_reg[0]_i_109_n_7 ),
        .I2(\hist_sum_data_3_reg[0]_i_110_n_7 ),
        .O(\hist_sum_data_3[0]_i_100_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[0]_i_101 
       (.I0(\hist_sum_data_3_reg[0]_i_139_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_i_140_n_4 ),
        .O(\hist_sum_data_3[0]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[0]_i_102 
       (.I0(\hist_sum_data_3_reg[0]_i_140_n_5 ),
        .I1(\hist_sum_data_3_reg[0]_i_139_n_5 ),
        .O(\hist_sum_data_3[0]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[0]_i_103 
       (.I0(\hist_sum_data_3_reg[0]_i_140_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_i_139_n_6 ),
        .O(\hist_sum_data_3[0]_i_103_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_3[0]_i_104 
       (.I0(\hist_sum_data_3_reg[0]_i_108_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_i_109_n_6 ),
        .I2(\hist_sum_data_3_reg[0]_i_110_n_6 ),
        .I3(\hist_sum_data_3[0]_i_100_n_0 ),
        .O(\hist_sum_data_3[0]_i_104_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_3[0]_i_105 
       (.I0(\hist_sum_data_3_reg[0]_i_138_n_7 ),
        .I1(\hist_sum_data_3_reg[0]_i_109_n_7 ),
        .I2(\hist_sum_data_3_reg[0]_i_110_n_7 ),
        .I3(\hist_sum_data_3[0]_i_101_n_0 ),
        .O(\hist_sum_data_3[0]_i_105_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \hist_sum_data_3[0]_i_106 
       (.I0(\hist_sum_data_3_reg[0]_i_139_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_i_140_n_4 ),
        .I2(\hist_sum_data_3_reg[0]_i_140_n_5 ),
        .I3(\hist_sum_data_3_reg[0]_i_139_n_5 ),
        .O(\hist_sum_data_3[0]_i_106_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \hist_sum_data_3[0]_i_107 
       (.I0(\hist_sum_data_3_reg[0]_i_140_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_i_139_n_6 ),
        .I2(\hist_sum_data_3_reg[0]_i_139_n_5 ),
        .I3(\hist_sum_data_3_reg[0]_i_140_n_5 ),
        .O(\hist_sum_data_3[0]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_11 
       (.I0(\hist_sum_data_3[0]_i_7_n_0 ),
        .I1(\hist_sum_data_3[0]_i_26_n_0 ),
        .I2(hist_sum_data_2_reg__0[9]),
        .I3(\hist_sum_data_3_reg[0]_i_24_n_6 ),
        .I4(\hist_sum_data_3_reg[0]_i_23_n_6 ),
        .I5(\hist_sum_data_3_reg[0]_i_22_n_6 ),
        .O(\hist_sum_data_3[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_111 
       (.I0(hist_sum_data_2_reg__0[16]),
        .I1(hist_sum_data_2_reg__0[14]),
        .I2(hist_sum_data_2_reg__0[18]),
        .I3(hist_sum_data_2_reg__0[19]),
        .I4(hist_sum_data_2_reg__0[15]),
        .I5(hist_sum_data_2_reg__0[17]),
        .O(\hist_sum_data_3[0]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_112 
       (.I0(hist_sum_data_2_reg__0[15]),
        .I1(hist_sum_data_2_reg__0[13]),
        .I2(hist_sum_data_2_reg__0[17]),
        .I3(hist_sum_data_2_reg__0[18]),
        .I4(hist_sum_data_2_reg__0[14]),
        .I5(hist_sum_data_2_reg__0[16]),
        .O(\hist_sum_data_3[0]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_113 
       (.I0(hist_sum_data_2_reg__0[14]),
        .I1(hist_sum_data_2_reg__0[12]),
        .I2(hist_sum_data_2_reg__0[16]),
        .I3(hist_sum_data_2_reg__0[17]),
        .I4(hist_sum_data_2_reg__0[13]),
        .I5(hist_sum_data_2_reg__0[15]),
        .O(\hist_sum_data_3[0]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_114 
       (.I0(hist_sum_data_2_reg__0[13]),
        .I1(hist_sum_data_2_reg__0[11]),
        .I2(hist_sum_data_2_reg__0[15]),
        .I3(hist_sum_data_2_reg__0[16]),
        .I4(hist_sum_data_2_reg__0[12]),
        .I5(hist_sum_data_2_reg__0[14]),
        .O(\hist_sum_data_3[0]_i_114_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_115 
       (.I0(hist_sum_data_2_reg__0[10]),
        .I1(hist_sum_data_2_reg__0[8]),
        .I2(hist_sum_data_2_reg__0[13]),
        .O(\hist_sum_data_3[0]_i_115_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_116 
       (.I0(hist_sum_data_2_reg__0[9]),
        .I1(hist_sum_data_2_reg__0[7]),
        .I2(hist_sum_data_2_reg__0[12]),
        .O(\hist_sum_data_3[0]_i_116_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_117 
       (.I0(hist_sum_data_2_reg__0[8]),
        .I1(hist_sum_data_2_reg__0[6]),
        .I2(hist_sum_data_2_reg__0[11]),
        .O(\hist_sum_data_3[0]_i_117_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_118 
       (.I0(hist_sum_data_2_reg__0[7]),
        .I1(hist_sum_data_2_reg__0[5]),
        .I2(hist_sum_data_2_reg__0[10]),
        .O(\hist_sum_data_3[0]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_119 
       (.I0(hist_sum_data_2_reg__0[13]),
        .I1(hist_sum_data_2_reg__0[8]),
        .I2(hist_sum_data_2_reg__0[10]),
        .I3(hist_sum_data_2_reg__0[9]),
        .I4(hist_sum_data_2_reg__0[11]),
        .I5(hist_sum_data_2_reg__0[14]),
        .O(\hist_sum_data_3[0]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_120 
       (.I0(hist_sum_data_2_reg__0[12]),
        .I1(hist_sum_data_2_reg__0[7]),
        .I2(hist_sum_data_2_reg__0[9]),
        .I3(hist_sum_data_2_reg__0[8]),
        .I4(hist_sum_data_2_reg__0[10]),
        .I5(hist_sum_data_2_reg__0[13]),
        .O(\hist_sum_data_3[0]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_121 
       (.I0(hist_sum_data_2_reg__0[11]),
        .I1(hist_sum_data_2_reg__0[6]),
        .I2(hist_sum_data_2_reg__0[8]),
        .I3(hist_sum_data_2_reg__0[7]),
        .I4(hist_sum_data_2_reg__0[9]),
        .I5(hist_sum_data_2_reg__0[12]),
        .O(\hist_sum_data_3[0]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_122 
       (.I0(hist_sum_data_2_reg__0[10]),
        .I1(hist_sum_data_2_reg__0[5]),
        .I2(hist_sum_data_2_reg__0[7]),
        .I3(hist_sum_data_2_reg__0[6]),
        .I4(hist_sum_data_2_reg__0[8]),
        .I5(hist_sum_data_2_reg__0[11]),
        .O(\hist_sum_data_3[0]_i_122_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_123 
       (.I0(hist_sum_data_2_reg__0[6]),
        .I1(hist_sum_data_2_reg__0[2]),
        .I2(hist_sum_data_2_reg__0[4]),
        .O(\hist_sum_data_3[0]_i_123_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_124 
       (.I0(hist_sum_data_2_reg__0[5]),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(hist_sum_data_2_reg__0[3]),
        .O(\hist_sum_data_3[0]_i_124_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[0]_i_125 
       (.I0(hist_sum_data_2_reg__0[5]),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(hist_sum_data_2_reg__0[3]),
        .O(\hist_sum_data_3[0]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_126 
       (.I0(hist_sum_data_2_reg__0[4]),
        .I1(hist_sum_data_2_reg__0[2]),
        .I2(hist_sum_data_2_reg__0[6]),
        .I3(hist_sum_data_2_reg__0[7]),
        .I4(hist_sum_data_2_reg__0[3]),
        .I5(hist_sum_data_2_reg__0[5]),
        .O(\hist_sum_data_3[0]_i_126_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_127 
       (.I0(hist_sum_data_2_reg__0[3]),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(hist_sum_data_2_reg__0[5]),
        .I3(hist_sum_data_2_reg__0[6]),
        .I4(hist_sum_data_2_reg__0[2]),
        .I5(hist_sum_data_2_reg__0[4]),
        .O(\hist_sum_data_3[0]_i_127_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \hist_sum_data_3[0]_i_128 
       (.I0(hist_sum_data_2_reg__0[5]),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(hist_sum_data_2_reg__0[3]),
        .I3(hist_sum_data_2_reg__0[4]),
        .I4(hist_sum_data_2_reg__0[0]),
        .O(\hist_sum_data_3[0]_i_128_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[0]_i_129 
       (.I0(hist_sum_data_2_reg__0[0]),
        .I1(hist_sum_data_2_reg__0[4]),
        .I2(hist_sum_data_2_reg__0[2]),
        .O(\hist_sum_data_3[0]_i_129_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_13 
       (.I0(hist_sum_data_2_reg__0[7]),
        .I1(\hist_sum_data_3[0]_i_37_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_38_n_4 ),
        .I3(\hist_sum_data_3_reg[0]_i_39_n_4 ),
        .I4(\hist_sum_data_3_reg[0]_i_40_n_4 ),
        .O(\hist_sum_data_3[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[0]_i_130 
       (.I0(\hist_sum_data_3_reg[0]_i_140_n_7 ),
        .I1(\hist_sum_data_3_reg[0]_i_139_n_7 ),
        .O(\hist_sum_data_3[0]_i_130_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[0]_i_131 
       (.I0(\hist_sum_data_3_reg[0]_i_156_n_4 ),
        .I1(hist_sum_data_2_reg__0[2]),
        .O(\hist_sum_data_3[0]_i_131_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[0]_i_132 
       (.I0(\hist_sum_data_3_reg[0]_i_156_n_5 ),
        .I1(hist_sum_data_2_reg__0[1]),
        .O(\hist_sum_data_3[0]_i_132_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[0]_i_133 
       (.I0(\hist_sum_data_3_reg[0]_i_156_n_6 ),
        .I1(hist_sum_data_2_reg__0[0]),
        .O(\hist_sum_data_3[0]_i_133_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \hist_sum_data_3[0]_i_134 
       (.I0(\hist_sum_data_3_reg[0]_i_140_n_7 ),
        .I1(\hist_sum_data_3_reg[0]_i_139_n_7 ),
        .I2(\hist_sum_data_3_reg[0]_i_139_n_6 ),
        .I3(\hist_sum_data_3_reg[0]_i_140_n_6 ),
        .O(\hist_sum_data_3[0]_i_134_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \hist_sum_data_3[0]_i_135 
       (.I0(\hist_sum_data_3_reg[0]_i_156_n_4 ),
        .I1(hist_sum_data_2_reg__0[2]),
        .I2(\hist_sum_data_3_reg[0]_i_139_n_7 ),
        .I3(\hist_sum_data_3_reg[0]_i_140_n_7 ),
        .O(\hist_sum_data_3[0]_i_135_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \hist_sum_data_3[0]_i_136 
       (.I0(\hist_sum_data_3_reg[0]_i_156_n_5 ),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(hist_sum_data_2_reg__0[2]),
        .I3(\hist_sum_data_3_reg[0]_i_156_n_4 ),
        .O(\hist_sum_data_3[0]_i_136_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \hist_sum_data_3[0]_i_137 
       (.I0(\hist_sum_data_3_reg[0]_i_156_n_6 ),
        .I1(hist_sum_data_2_reg__0[0]),
        .I2(hist_sum_data_2_reg__0[1]),
        .I3(\hist_sum_data_3_reg[0]_i_156_n_5 ),
        .O(\hist_sum_data_3[0]_i_137_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_14 
       (.I0(hist_sum_data_2_reg__0[6]),
        .I1(\hist_sum_data_3[0]_i_41_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_38_n_5 ),
        .I3(\hist_sum_data_3_reg[0]_i_39_n_5 ),
        .I4(\hist_sum_data_3_reg[0]_i_40_n_5 ),
        .O(\hist_sum_data_3[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hist_sum_data_3[0]_i_141 
       (.I0(hist_sum_data_2_reg__0[1]),
        .I1(hist_sum_data_2_reg__0[3]),
        .O(\hist_sum_data_3[0]_i_141_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hist_sum_data_3[0]_i_142 
       (.I0(hist_sum_data_2_reg__0[0]),
        .I1(hist_sum_data_2_reg__0[2]),
        .O(\hist_sum_data_3[0]_i_142_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_3[0]_i_143 
       (.I0(hist_sum_data_2_reg__0[1]),
        .O(\hist_sum_data_3[0]_i_143_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_144 
       (.I0(hist_sum_data_2_reg__0[6]),
        .I1(hist_sum_data_2_reg__0[4]),
        .I2(hist_sum_data_2_reg__0[9]),
        .O(\hist_sum_data_3[0]_i_144_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_145 
       (.I0(hist_sum_data_2_reg__0[5]),
        .I1(hist_sum_data_2_reg__0[3]),
        .I2(hist_sum_data_2_reg__0[8]),
        .O(\hist_sum_data_3[0]_i_145_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_146 
       (.I0(hist_sum_data_2_reg__0[4]),
        .I1(hist_sum_data_2_reg__0[2]),
        .I2(hist_sum_data_2_reg__0[7]),
        .O(\hist_sum_data_3[0]_i_146_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_147 
       (.I0(hist_sum_data_2_reg__0[3]),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(hist_sum_data_2_reg__0[6]),
        .O(\hist_sum_data_3[0]_i_147_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_148 
       (.I0(hist_sum_data_2_reg__0[9]),
        .I1(hist_sum_data_2_reg__0[4]),
        .I2(hist_sum_data_2_reg__0[6]),
        .I3(hist_sum_data_2_reg__0[5]),
        .I4(hist_sum_data_2_reg__0[7]),
        .I5(hist_sum_data_2_reg__0[10]),
        .O(\hist_sum_data_3[0]_i_148_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_149 
       (.I0(hist_sum_data_2_reg__0[8]),
        .I1(hist_sum_data_2_reg__0[3]),
        .I2(hist_sum_data_2_reg__0[5]),
        .I3(hist_sum_data_2_reg__0[4]),
        .I4(hist_sum_data_2_reg__0[6]),
        .I5(hist_sum_data_2_reg__0[9]),
        .O(\hist_sum_data_3[0]_i_149_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_15 
       (.I0(hist_sum_data_2_reg__0[5]),
        .I1(\hist_sum_data_3[0]_i_42_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_38_n_6 ),
        .I3(\hist_sum_data_3_reg[0]_i_39_n_6 ),
        .I4(\hist_sum_data_3_reg[0]_i_40_n_6 ),
        .O(\hist_sum_data_3[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_150 
       (.I0(hist_sum_data_2_reg__0[7]),
        .I1(hist_sum_data_2_reg__0[2]),
        .I2(hist_sum_data_2_reg__0[4]),
        .I3(hist_sum_data_2_reg__0[3]),
        .I4(hist_sum_data_2_reg__0[5]),
        .I5(hist_sum_data_2_reg__0[8]),
        .O(\hist_sum_data_3[0]_i_150_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_151 
       (.I0(hist_sum_data_2_reg__0[6]),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(hist_sum_data_2_reg__0[3]),
        .I3(hist_sum_data_2_reg__0[2]),
        .I4(hist_sum_data_2_reg__0[4]),
        .I5(hist_sum_data_2_reg__0[7]),
        .O(\hist_sum_data_3[0]_i_151_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_152 
       (.I0(hist_sum_data_2_reg__0[12]),
        .I1(hist_sum_data_2_reg__0[10]),
        .I2(hist_sum_data_2_reg__0[14]),
        .I3(hist_sum_data_2_reg__0[15]),
        .I4(hist_sum_data_2_reg__0[11]),
        .I5(hist_sum_data_2_reg__0[13]),
        .O(\hist_sum_data_3[0]_i_152_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_153 
       (.I0(hist_sum_data_2_reg__0[11]),
        .I1(hist_sum_data_2_reg__0[9]),
        .I2(hist_sum_data_2_reg__0[13]),
        .I3(hist_sum_data_2_reg__0[14]),
        .I4(hist_sum_data_2_reg__0[10]),
        .I5(hist_sum_data_2_reg__0[12]),
        .O(\hist_sum_data_3[0]_i_153_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_154 
       (.I0(hist_sum_data_2_reg__0[10]),
        .I1(hist_sum_data_2_reg__0[8]),
        .I2(hist_sum_data_2_reg__0[12]),
        .I3(hist_sum_data_2_reg__0[13]),
        .I4(hist_sum_data_2_reg__0[9]),
        .I5(hist_sum_data_2_reg__0[11]),
        .O(\hist_sum_data_3[0]_i_154_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_155 
       (.I0(hist_sum_data_2_reg__0[9]),
        .I1(hist_sum_data_2_reg__0[7]),
        .I2(hist_sum_data_2_reg__0[11]),
        .I3(hist_sum_data_2_reg__0[12]),
        .I4(hist_sum_data_2_reg__0[8]),
        .I5(hist_sum_data_2_reg__0[10]),
        .O(\hist_sum_data_3[0]_i_155_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hist_sum_data_3[0]_i_157 
       (.I0(hist_sum_data_2_reg__0[1]),
        .I1(hist_sum_data_2_reg__0[3]),
        .O(\hist_sum_data_3[0]_i_157_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hist_sum_data_3[0]_i_158 
       (.I0(hist_sum_data_2_reg__0[0]),
        .I1(hist_sum_data_2_reg__0[2]),
        .O(\hist_sum_data_3[0]_i_158_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_3[0]_i_159 
       (.I0(hist_sum_data_2_reg__0[1]),
        .O(\hist_sum_data_3[0]_i_159_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_16 
       (.I0(hist_sum_data_2_reg__0[4]),
        .I1(\hist_sum_data_3[0]_i_43_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_38_n_7 ),
        .I3(\hist_sum_data_3_reg[0]_i_39_n_7 ),
        .I4(\hist_sum_data_3_reg[0]_i_40_n_7 ),
        .O(\hist_sum_data_3[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_160 
       (.I0(hist_sum_data_2_reg__0[2]),
        .I1(hist_sum_data_2_reg__0[0]),
        .I2(hist_sum_data_2_reg__0[5]),
        .O(\hist_sum_data_3[0]_i_160_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[0]_i_161 
       (.I0(hist_sum_data_2_reg__0[2]),
        .I1(hist_sum_data_2_reg__0[0]),
        .I2(hist_sum_data_2_reg__0[5]),
        .O(\hist_sum_data_3[0]_i_161_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hist_sum_data_3[0]_i_162 
       (.I0(hist_sum_data_2_reg__0[3]),
        .I1(hist_sum_data_2_reg__0[0]),
        .O(\hist_sum_data_3[0]_i_162_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_163 
       (.I0(hist_sum_data_2_reg__0[5]),
        .I1(hist_sum_data_2_reg__0[0]),
        .I2(hist_sum_data_2_reg__0[2]),
        .I3(hist_sum_data_2_reg__0[3]),
        .I4(hist_sum_data_2_reg__0[1]),
        .I5(hist_sum_data_2_reg__0[6]),
        .O(\hist_sum_data_3[0]_i_163_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \hist_sum_data_3[0]_i_164 
       (.I0(hist_sum_data_2_reg__0[2]),
        .I1(hist_sum_data_2_reg__0[0]),
        .I2(hist_sum_data_2_reg__0[5]),
        .I3(hist_sum_data_2_reg__0[1]),
        .I4(hist_sum_data_2_reg__0[4]),
        .O(\hist_sum_data_3[0]_i_164_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \hist_sum_data_3[0]_i_165 
       (.I0(hist_sum_data_2_reg__0[0]),
        .I1(hist_sum_data_2_reg__0[3]),
        .I2(hist_sum_data_2_reg__0[1]),
        .I3(hist_sum_data_2_reg__0[4]),
        .O(\hist_sum_data_3[0]_i_165_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[0]_i_166 
       (.I0(hist_sum_data_2_reg__0[3]),
        .I1(hist_sum_data_2_reg__0[0]),
        .O(\hist_sum_data_3[0]_i_166_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_167 
       (.I0(hist_sum_data_2_reg__0[8]),
        .I1(hist_sum_data_2_reg__0[6]),
        .I2(hist_sum_data_2_reg__0[10]),
        .I3(hist_sum_data_2_reg__0[11]),
        .I4(hist_sum_data_2_reg__0[7]),
        .I5(hist_sum_data_2_reg__0[9]),
        .O(\hist_sum_data_3[0]_i_167_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_168 
       (.I0(hist_sum_data_2_reg__0[7]),
        .I1(hist_sum_data_2_reg__0[5]),
        .I2(hist_sum_data_2_reg__0[9]),
        .I3(hist_sum_data_2_reg__0[10]),
        .I4(hist_sum_data_2_reg__0[6]),
        .I5(hist_sum_data_2_reg__0[8]),
        .O(\hist_sum_data_3[0]_i_168_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_169 
       (.I0(hist_sum_data_2_reg__0[6]),
        .I1(hist_sum_data_2_reg__0[4]),
        .I2(hist_sum_data_2_reg__0[8]),
        .I3(hist_sum_data_2_reg__0[9]),
        .I4(hist_sum_data_2_reg__0[5]),
        .I5(hist_sum_data_2_reg__0[7]),
        .O(\hist_sum_data_3[0]_i_169_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_17 
       (.I0(\hist_sum_data_3[0]_i_13_n_0 ),
        .I1(\hist_sum_data_3[0]_i_27_n_0 ),
        .I2(hist_sum_data_2_reg__0[8]),
        .I3(\hist_sum_data_3_reg[0]_i_24_n_7 ),
        .I4(\hist_sum_data_3_reg[0]_i_23_n_7 ),
        .I5(\hist_sum_data_3_reg[0]_i_22_n_7 ),
        .O(\hist_sum_data_3[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_170 
       (.I0(hist_sum_data_2_reg__0[5]),
        .I1(hist_sum_data_2_reg__0[3]),
        .I2(hist_sum_data_2_reg__0[7]),
        .I3(hist_sum_data_2_reg__0[8]),
        .I4(hist_sum_data_2_reg__0[4]),
        .I5(hist_sum_data_2_reg__0[6]),
        .O(\hist_sum_data_3[0]_i_170_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[0]_i_171 
       (.I0(hist_sum_data_2_reg__0[5]),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(hist_sum_data_2_reg__0[3]),
        .O(\hist_sum_data_3[0]_i_171_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_172 
       (.I0(hist_sum_data_2_reg__0[4]),
        .I1(hist_sum_data_2_reg__0[2]),
        .I2(hist_sum_data_2_reg__0[6]),
        .I3(hist_sum_data_2_reg__0[7]),
        .I4(hist_sum_data_2_reg__0[3]),
        .I5(hist_sum_data_2_reg__0[5]),
        .O(\hist_sum_data_3[0]_i_172_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_173 
       (.I0(hist_sum_data_2_reg__0[3]),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(hist_sum_data_2_reg__0[5]),
        .I3(hist_sum_data_2_reg__0[6]),
        .I4(hist_sum_data_2_reg__0[2]),
        .I5(hist_sum_data_2_reg__0[4]),
        .O(\hist_sum_data_3[0]_i_173_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \hist_sum_data_3[0]_i_174 
       (.I0(hist_sum_data_2_reg__0[5]),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(hist_sum_data_2_reg__0[3]),
        .I3(hist_sum_data_2_reg__0[4]),
        .I4(hist_sum_data_2_reg__0[0]),
        .O(\hist_sum_data_3[0]_i_174_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[0]_i_175 
       (.I0(hist_sum_data_2_reg__0[0]),
        .I1(hist_sum_data_2_reg__0[4]),
        .I2(hist_sum_data_2_reg__0[2]),
        .O(\hist_sum_data_3[0]_i_175_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_18 
       (.I0(\hist_sum_data_3[0]_i_14_n_0 ),
        .I1(\hist_sum_data_3[0]_i_37_n_0 ),
        .I2(hist_sum_data_2_reg__0[7]),
        .I3(\hist_sum_data_3_reg[0]_i_40_n_4 ),
        .I4(\hist_sum_data_3_reg[0]_i_39_n_4 ),
        .I5(\hist_sum_data_3_reg[0]_i_38_n_4 ),
        .O(\hist_sum_data_3[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_19 
       (.I0(\hist_sum_data_3[0]_i_15_n_0 ),
        .I1(\hist_sum_data_3[0]_i_41_n_0 ),
        .I2(hist_sum_data_2_reg__0[6]),
        .I3(\hist_sum_data_3_reg[0]_i_40_n_5 ),
        .I4(\hist_sum_data_3_reg[0]_i_39_n_5 ),
        .I5(\hist_sum_data_3_reg[0]_i_38_n_5 ),
        .O(\hist_sum_data_3[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_20 
       (.I0(\hist_sum_data_3[0]_i_16_n_0 ),
        .I1(\hist_sum_data_3[0]_i_42_n_0 ),
        .I2(hist_sum_data_2_reg__0[5]),
        .I3(\hist_sum_data_3_reg[0]_i_40_n_6 ),
        .I4(\hist_sum_data_3_reg[0]_i_39_n_6 ),
        .I5(\hist_sum_data_3_reg[0]_i_38_n_6 ),
        .O(\hist_sum_data_3[0]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_21 
       (.I0(\hist_sum_data_3_reg[4]_i_12_n_7 ),
        .I1(\hist_sum_data_3_reg[4]_i_14_n_7 ),
        .I2(\hist_sum_data_3_reg[4]_i_13_n_7 ),
        .O(\hist_sum_data_3[0]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_25 
       (.I0(\hist_sum_data_3_reg[0]_i_22_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_i_24_n_4 ),
        .I2(\hist_sum_data_3_reg[0]_i_23_n_4 ),
        .O(\hist_sum_data_3[0]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_26 
       (.I0(\hist_sum_data_3_reg[0]_i_22_n_5 ),
        .I1(\hist_sum_data_3_reg[0]_i_24_n_5 ),
        .I2(\hist_sum_data_3_reg[0]_i_23_n_5 ),
        .O(\hist_sum_data_3[0]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_27 
       (.I0(\hist_sum_data_3_reg[0]_i_22_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_i_24_n_6 ),
        .I2(\hist_sum_data_3_reg[0]_i_23_n_6 ),
        .O(\hist_sum_data_3[0]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_29 
       (.I0(hist_sum_data_2_reg__0[3]),
        .I1(\hist_sum_data_3[0]_i_73_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_74_n_4 ),
        .I3(\hist_sum_data_3_reg[0]_i_75_n_4 ),
        .I4(\hist_sum_data_3_reg[0]_i_76_n_4 ),
        .O(\hist_sum_data_3[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_30 
       (.I0(hist_sum_data_2_reg__0[2]),
        .I1(\hist_sum_data_3[0]_i_77_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_74_n_5 ),
        .I3(\hist_sum_data_3_reg[0]_i_75_n_5 ),
        .I4(\hist_sum_data_3_reg[0]_i_76_n_5 ),
        .O(\hist_sum_data_3[0]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_31 
       (.I0(hist_sum_data_2_reg__0[1]),
        .I1(\hist_sum_data_3[0]_i_78_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_74_n_6 ),
        .I3(\hist_sum_data_3_reg[0]_i_75_n_6 ),
        .I4(\hist_sum_data_3_reg[0]_i_76_n_6 ),
        .O(\hist_sum_data_3[0]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \hist_sum_data_3[0]_i_32 
       (.I0(\hist_sum_data_3_reg[0]_i_74_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_i_75_n_6 ),
        .I2(\hist_sum_data_3_reg[0]_i_76_n_6 ),
        .I3(hist_sum_data_2_reg__0[1]),
        .I4(\hist_sum_data_3[0]_i_78_n_0 ),
        .O(\hist_sum_data_3[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_33 
       (.I0(\hist_sum_data_3[0]_i_29_n_0 ),
        .I1(\hist_sum_data_3[0]_i_43_n_0 ),
        .I2(hist_sum_data_2_reg__0[4]),
        .I3(\hist_sum_data_3_reg[0]_i_40_n_7 ),
        .I4(\hist_sum_data_3_reg[0]_i_39_n_7 ),
        .I5(\hist_sum_data_3_reg[0]_i_38_n_7 ),
        .O(\hist_sum_data_3[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_34 
       (.I0(\hist_sum_data_3[0]_i_30_n_0 ),
        .I1(\hist_sum_data_3[0]_i_73_n_0 ),
        .I2(hist_sum_data_2_reg__0[3]),
        .I3(\hist_sum_data_3_reg[0]_i_76_n_4 ),
        .I4(\hist_sum_data_3_reg[0]_i_75_n_4 ),
        .I5(\hist_sum_data_3_reg[0]_i_74_n_4 ),
        .O(\hist_sum_data_3[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_35 
       (.I0(\hist_sum_data_3[0]_i_31_n_0 ),
        .I1(\hist_sum_data_3[0]_i_77_n_0 ),
        .I2(hist_sum_data_2_reg__0[2]),
        .I3(\hist_sum_data_3_reg[0]_i_76_n_5 ),
        .I4(\hist_sum_data_3_reg[0]_i_75_n_5 ),
        .I5(\hist_sum_data_3_reg[0]_i_74_n_5 ),
        .O(\hist_sum_data_3[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \hist_sum_data_3[0]_i_36 
       (.I0(\hist_sum_data_3[0]_i_78_n_0 ),
        .I1(hist_sum_data_2_reg__0[1]),
        .I2(\hist_sum_data_3_reg[0]_i_74_n_6 ),
        .I3(\hist_sum_data_3_reg[0]_i_76_n_6 ),
        .I4(\hist_sum_data_3_reg[0]_i_75_n_6 ),
        .I5(hist_sum_data_2_reg__0[0]),
        .O(\hist_sum_data_3[0]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_37 
       (.I0(\hist_sum_data_3_reg[0]_i_22_n_7 ),
        .I1(\hist_sum_data_3_reg[0]_i_24_n_7 ),
        .I2(\hist_sum_data_3_reg[0]_i_23_n_7 ),
        .O(\hist_sum_data_3[0]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_4 
       (.I0(hist_sum_data_2_reg__0[11]),
        .I1(\hist_sum_data_3[0]_i_21_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_22_n_4 ),
        .I3(\hist_sum_data_3_reg[0]_i_23_n_4 ),
        .I4(\hist_sum_data_3_reg[0]_i_24_n_4 ),
        .O(\hist_sum_data_3[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_41 
       (.I0(\hist_sum_data_3_reg[0]_i_38_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_i_40_n_4 ),
        .I2(\hist_sum_data_3_reg[0]_i_39_n_4 ),
        .O(\hist_sum_data_3[0]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_42 
       (.I0(\hist_sum_data_3_reg[0]_i_38_n_5 ),
        .I1(\hist_sum_data_3_reg[0]_i_40_n_5 ),
        .I2(\hist_sum_data_3_reg[0]_i_39_n_5 ),
        .O(\hist_sum_data_3[0]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_43 
       (.I0(\hist_sum_data_3_reg[0]_i_38_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_i_40_n_6 ),
        .I2(\hist_sum_data_3_reg[0]_i_39_n_6 ),
        .O(\hist_sum_data_3[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_44 
       (.I0(hist_sum_data_2_reg__0[24]),
        .I1(hist_sum_data_2_reg__0[22]),
        .I2(hist_sum_data_2_reg__0[26]),
        .I3(hist_sum_data_2_reg__0[27]),
        .I4(hist_sum_data_2_reg__0[23]),
        .I5(hist_sum_data_2_reg__0[25]),
        .O(\hist_sum_data_3[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_45 
       (.I0(hist_sum_data_2_reg__0[23]),
        .I1(hist_sum_data_2_reg__0[21]),
        .I2(hist_sum_data_2_reg__0[25]),
        .I3(hist_sum_data_2_reg__0[26]),
        .I4(hist_sum_data_2_reg__0[22]),
        .I5(hist_sum_data_2_reg__0[24]),
        .O(\hist_sum_data_3[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_46 
       (.I0(hist_sum_data_2_reg__0[22]),
        .I1(hist_sum_data_2_reg__0[20]),
        .I2(hist_sum_data_2_reg__0[24]),
        .I3(hist_sum_data_2_reg__0[25]),
        .I4(hist_sum_data_2_reg__0[21]),
        .I5(hist_sum_data_2_reg__0[23]),
        .O(\hist_sum_data_3[0]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_47 
       (.I0(hist_sum_data_2_reg__0[21]),
        .I1(hist_sum_data_2_reg__0[19]),
        .I2(hist_sum_data_2_reg__0[23]),
        .I3(hist_sum_data_2_reg__0[24]),
        .I4(hist_sum_data_2_reg__0[20]),
        .I5(hist_sum_data_2_reg__0[22]),
        .O(\hist_sum_data_3[0]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hF270)) 
    \hist_sum_data_3[0]_i_48 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_104),
        .I2(hist_sum_data_2_reg__0[16]),
        .I3(hist_sum_data_20__0_n_101),
        .O(\hist_sum_data_3[0]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'hF270)) 
    \hist_sum_data_3[0]_i_49 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_105),
        .I2(hist_sum_data_2_reg__0[15]),
        .I3(hist_sum_data_20__0_n_102),
        .O(\hist_sum_data_3[0]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_5 
       (.I0(hist_sum_data_2_reg__0[10]),
        .I1(\hist_sum_data_3[0]_i_25_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_22_n_5 ),
        .I3(\hist_sum_data_3_reg[0]_i_23_n_5 ),
        .I4(\hist_sum_data_3_reg[0]_i_24_n_5 ),
        .O(\hist_sum_data_3[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hD444)) 
    \hist_sum_data_3[0]_i_50 
       (.I0(hist_sum_data_2_reg__0[16]),
        .I1(hist_sum_data_2_reg__0[14]),
        .I2(\hist_sum_data_3_reg[0]_0 ),
        .I3(hist_sum_data_20__0_n_103),
        .O(\hist_sum_data_3[0]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hD444)) 
    \hist_sum_data_3[0]_i_51 
       (.I0(hist_sum_data_2_reg__0[15]),
        .I1(hist_sum_data_2_reg__0[13]),
        .I2(\hist_sum_data_3_reg[0]_0 ),
        .I3(hist_sum_data_20__0_n_104),
        .O(\hist_sum_data_3[0]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_52 
       (.I0(hist_sum_data_2_reg__0[21]),
        .I1(hist_sum_data_2_reg__0[16]),
        .I2(hist_sum_data_2_reg__0[18]),
        .I3(hist_sum_data_2_reg__0[17]),
        .I4(hist_sum_data_2_reg__0[19]),
        .I5(hist_sum_data_2_reg__0[22]),
        .O(\hist_sum_data_3[0]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_53 
       (.I0(hist_sum_data_2_reg__0[20]),
        .I1(hist_sum_data_2_reg__0[15]),
        .I2(hist_sum_data_2_reg__0[17]),
        .I3(hist_sum_data_2_reg__0[16]),
        .I4(hist_sum_data_2_reg__0[18]),
        .I5(hist_sum_data_2_reg__0[21]),
        .O(\hist_sum_data_3[0]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_54 
       (.I0(hist_sum_data_2_reg__0[19]),
        .I1(hist_sum_data_2_reg__0[14]),
        .I2(hist_sum_data_2_reg__0[16]),
        .I3(hist_sum_data_2_reg__0[15]),
        .I4(hist_sum_data_2_reg__0[17]),
        .I5(hist_sum_data_2_reg__0[20]),
        .O(\hist_sum_data_3[0]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_55 
       (.I0(hist_sum_data_2_reg__0[18]),
        .I1(hist_sum_data_2_reg__0[13]),
        .I2(hist_sum_data_2_reg__0[15]),
        .I3(hist_sum_data_2_reg__0[14]),
        .I4(hist_sum_data_2_reg__0[16]),
        .I5(hist_sum_data_2_reg__0[19]),
        .O(\hist_sum_data_3[0]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_56 
       (.I0(hist_sum_data_2_reg__0[14]),
        .I1(hist_sum_data_2_reg__0[10]),
        .I2(hist_sum_data_2_reg__0[12]),
        .O(\hist_sum_data_3[0]_i_56_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_57 
       (.I0(hist_sum_data_2_reg__0[13]),
        .I1(hist_sum_data_2_reg__0[9]),
        .I2(hist_sum_data_2_reg__0[11]),
        .O(\hist_sum_data_3[0]_i_57_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_58 
       (.I0(hist_sum_data_2_reg__0[12]),
        .I1(hist_sum_data_2_reg__0[8]),
        .I2(hist_sum_data_2_reg__0[10]),
        .O(\hist_sum_data_3[0]_i_58_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_59 
       (.I0(hist_sum_data_2_reg__0[11]),
        .I1(hist_sum_data_2_reg__0[7]),
        .I2(hist_sum_data_2_reg__0[9]),
        .O(\hist_sum_data_3[0]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_6 
       (.I0(hist_sum_data_2_reg__0[9]),
        .I1(\hist_sum_data_3[0]_i_26_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_22_n_6 ),
        .I3(\hist_sum_data_3_reg[0]_i_23_n_6 ),
        .I4(\hist_sum_data_3_reg[0]_i_24_n_6 ),
        .O(\hist_sum_data_3[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_60 
       (.I0(hist_sum_data_2_reg__0[12]),
        .I1(hist_sum_data_2_reg__0[10]),
        .I2(hist_sum_data_2_reg__0[14]),
        .I3(hist_sum_data_2_reg__0[15]),
        .I4(hist_sum_data_2_reg__0[11]),
        .I5(hist_sum_data_2_reg__0[13]),
        .O(\hist_sum_data_3[0]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_61 
       (.I0(hist_sum_data_2_reg__0[11]),
        .I1(hist_sum_data_2_reg__0[9]),
        .I2(hist_sum_data_2_reg__0[13]),
        .I3(hist_sum_data_2_reg__0[14]),
        .I4(hist_sum_data_2_reg__0[10]),
        .I5(hist_sum_data_2_reg__0[12]),
        .O(\hist_sum_data_3[0]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_62 
       (.I0(hist_sum_data_2_reg__0[10]),
        .I1(hist_sum_data_2_reg__0[8]),
        .I2(hist_sum_data_2_reg__0[12]),
        .I3(hist_sum_data_2_reg__0[13]),
        .I4(hist_sum_data_2_reg__0[9]),
        .I5(hist_sum_data_2_reg__0[11]),
        .O(\hist_sum_data_3[0]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_63 
       (.I0(hist_sum_data_2_reg__0[9]),
        .I1(hist_sum_data_2_reg__0[7]),
        .I2(hist_sum_data_2_reg__0[11]),
        .I3(hist_sum_data_2_reg__0[12]),
        .I4(hist_sum_data_2_reg__0[8]),
        .I5(hist_sum_data_2_reg__0[10]),
        .O(\hist_sum_data_3[0]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_3[0]_i_65 
       (.I0(\hist_sum_data_3_reg[0]_i_75_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_i_76_n_6 ),
        .I2(\hist_sum_data_3_reg[0]_i_74_n_6 ),
        .I3(hist_sum_data_2_reg__0[0]),
        .O(\hist_sum_data_3[0]_i_65_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_3[0]_i_66 
       (.I0(\hist_sum_data_3_reg[0]_i_108_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_i_109_n_4 ),
        .I2(\hist_sum_data_3_reg[0]_i_110_n_4 ),
        .O(\hist_sum_data_3[0]_i_66_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_3[0]_i_67 
       (.I0(\hist_sum_data_3_reg[0]_i_108_n_5 ),
        .I1(\hist_sum_data_3_reg[0]_i_109_n_5 ),
        .I2(\hist_sum_data_3_reg[0]_i_110_n_5 ),
        .O(\hist_sum_data_3[0]_i_67_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_3[0]_i_68 
       (.I0(\hist_sum_data_3_reg[0]_i_108_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_i_109_n_6 ),
        .I2(\hist_sum_data_3_reg[0]_i_110_n_6 ),
        .O(\hist_sum_data_3[0]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \hist_sum_data_3[0]_i_69 
       (.I0(\hist_sum_data_3[0]_i_65_n_0 ),
        .I1(\hist_sum_data_3_reg[0]_i_74_n_7 ),
        .I2(\hist_sum_data_3_reg[0]_i_75_n_7 ),
        .I3(\hist_sum_data_3_reg[0]_i_76_n_7 ),
        .O(\hist_sum_data_3[0]_i_69_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[0]_i_7 
       (.I0(hist_sum_data_2_reg__0[8]),
        .I1(\hist_sum_data_3[0]_i_27_n_0 ),
        .I2(\hist_sum_data_3_reg[0]_i_22_n_7 ),
        .I3(\hist_sum_data_3_reg[0]_i_23_n_7 ),
        .I4(\hist_sum_data_3_reg[0]_i_24_n_7 ),
        .O(\hist_sum_data_3[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_3[0]_i_70 
       (.I0(\hist_sum_data_3[0]_i_66_n_0 ),
        .I1(\hist_sum_data_3_reg[0]_i_75_n_7 ),
        .I2(\hist_sum_data_3_reg[0]_i_76_n_7 ),
        .I3(\hist_sum_data_3_reg[0]_i_74_n_7 ),
        .O(\hist_sum_data_3[0]_i_70_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_3[0]_i_71 
       (.I0(\hist_sum_data_3_reg[0]_i_108_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_i_109_n_4 ),
        .I2(\hist_sum_data_3_reg[0]_i_110_n_4 ),
        .I3(\hist_sum_data_3[0]_i_67_n_0 ),
        .O(\hist_sum_data_3[0]_i_71_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_3[0]_i_72 
       (.I0(\hist_sum_data_3_reg[0]_i_108_n_5 ),
        .I1(\hist_sum_data_3_reg[0]_i_109_n_5 ),
        .I2(\hist_sum_data_3_reg[0]_i_110_n_5 ),
        .I3(\hist_sum_data_3[0]_i_68_n_0 ),
        .O(\hist_sum_data_3[0]_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_73 
       (.I0(\hist_sum_data_3_reg[0]_i_38_n_7 ),
        .I1(\hist_sum_data_3_reg[0]_i_40_n_7 ),
        .I2(\hist_sum_data_3_reg[0]_i_39_n_7 ),
        .O(\hist_sum_data_3[0]_i_73_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_77 
       (.I0(\hist_sum_data_3_reg[0]_i_74_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_i_76_n_4 ),
        .I2(\hist_sum_data_3_reg[0]_i_75_n_4 ),
        .O(\hist_sum_data_3[0]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[0]_i_78 
       (.I0(\hist_sum_data_3_reg[0]_i_74_n_5 ),
        .I1(\hist_sum_data_3_reg[0]_i_76_n_5 ),
        .I2(\hist_sum_data_3_reg[0]_i_75_n_5 ),
        .O(\hist_sum_data_3[0]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_79 
       (.I0(hist_sum_data_2_reg__0[20]),
        .I1(hist_sum_data_2_reg__0[18]),
        .I2(hist_sum_data_2_reg__0[22]),
        .I3(hist_sum_data_2_reg__0[23]),
        .I4(hist_sum_data_2_reg__0[19]),
        .I5(hist_sum_data_2_reg__0[21]),
        .O(\hist_sum_data_3[0]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_8 
       (.I0(\hist_sum_data_3[0]_i_4_n_0 ),
        .I1(\hist_sum_data_3[4]_i_17_n_0 ),
        .I2(hist_sum_data_2_reg__0[12]),
        .I3(\hist_sum_data_3_reg[4]_i_14_n_7 ),
        .I4(\hist_sum_data_3_reg[4]_i_13_n_7 ),
        .I5(\hist_sum_data_3_reg[4]_i_12_n_7 ),
        .O(\hist_sum_data_3[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_80 
       (.I0(hist_sum_data_2_reg__0[19]),
        .I1(hist_sum_data_2_reg__0[17]),
        .I2(hist_sum_data_2_reg__0[21]),
        .I3(hist_sum_data_2_reg__0[22]),
        .I4(hist_sum_data_2_reg__0[18]),
        .I5(hist_sum_data_2_reg__0[20]),
        .O(\hist_sum_data_3[0]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_81 
       (.I0(hist_sum_data_2_reg__0[18]),
        .I1(hist_sum_data_2_reg__0[16]),
        .I2(hist_sum_data_2_reg__0[20]),
        .I3(hist_sum_data_2_reg__0[21]),
        .I4(hist_sum_data_2_reg__0[17]),
        .I5(hist_sum_data_2_reg__0[19]),
        .O(\hist_sum_data_3[0]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_82 
       (.I0(hist_sum_data_2_reg__0[17]),
        .I1(hist_sum_data_2_reg__0[15]),
        .I2(hist_sum_data_2_reg__0[19]),
        .I3(hist_sum_data_2_reg__0[20]),
        .I4(hist_sum_data_2_reg__0[16]),
        .I5(hist_sum_data_2_reg__0[18]),
        .O(\hist_sum_data_3[0]_i_82_n_0 ));
  LUT4 #(
    .INIT(16'hD444)) 
    \hist_sum_data_3[0]_i_83 
       (.I0(hist_sum_data_2_reg__0[14]),
        .I1(hist_sum_data_2_reg__0[12]),
        .I2(\hist_sum_data_3_reg[0]_0 ),
        .I3(hist_sum_data_20__0_n_105),
        .O(\hist_sum_data_3[0]_i_83_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_84 
       (.I0(hist_sum_data_2_reg__0[13]),
        .I1(hist_sum_data_2_reg__0[11]),
        .I2(hist_sum_data_2_reg__0[16]),
        .O(\hist_sum_data_3[0]_i_84_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_85 
       (.I0(hist_sum_data_2_reg__0[12]),
        .I1(hist_sum_data_2_reg__0[10]),
        .I2(hist_sum_data_2_reg__0[15]),
        .O(\hist_sum_data_3[0]_i_85_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_86 
       (.I0(hist_sum_data_2_reg__0[11]),
        .I1(hist_sum_data_2_reg__0[9]),
        .I2(hist_sum_data_2_reg__0[14]),
        .O(\hist_sum_data_3[0]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_87 
       (.I0(hist_sum_data_2_reg__0[17]),
        .I1(hist_sum_data_2_reg__0[12]),
        .I2(hist_sum_data_2_reg__0[14]),
        .I3(hist_sum_data_2_reg__0[13]),
        .I4(hist_sum_data_2_reg__0[15]),
        .I5(hist_sum_data_2_reg__0[18]),
        .O(\hist_sum_data_3[0]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_88 
       (.I0(hist_sum_data_2_reg__0[16]),
        .I1(hist_sum_data_2_reg__0[11]),
        .I2(hist_sum_data_2_reg__0[13]),
        .I3(hist_sum_data_2_reg__0[12]),
        .I4(hist_sum_data_2_reg__0[14]),
        .I5(hist_sum_data_2_reg__0[17]),
        .O(\hist_sum_data_3[0]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_89 
       (.I0(hist_sum_data_2_reg__0[15]),
        .I1(hist_sum_data_2_reg__0[10]),
        .I2(hist_sum_data_2_reg__0[12]),
        .I3(hist_sum_data_2_reg__0[11]),
        .I4(hist_sum_data_2_reg__0[13]),
        .I5(hist_sum_data_2_reg__0[16]),
        .O(\hist_sum_data_3[0]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[0]_i_9 
       (.I0(\hist_sum_data_3[0]_i_5_n_0 ),
        .I1(\hist_sum_data_3[0]_i_21_n_0 ),
        .I2(hist_sum_data_2_reg__0[11]),
        .I3(\hist_sum_data_3_reg[0]_i_24_n_4 ),
        .I4(\hist_sum_data_3_reg[0]_i_23_n_4 ),
        .I5(\hist_sum_data_3_reg[0]_i_22_n_4 ),
        .O(\hist_sum_data_3[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_90 
       (.I0(hist_sum_data_2_reg__0[14]),
        .I1(hist_sum_data_2_reg__0[9]),
        .I2(hist_sum_data_2_reg__0[11]),
        .I3(hist_sum_data_2_reg__0[10]),
        .I4(hist_sum_data_2_reg__0[12]),
        .I5(hist_sum_data_2_reg__0[15]),
        .O(\hist_sum_data_3[0]_i_90_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_91 
       (.I0(hist_sum_data_2_reg__0[10]),
        .I1(hist_sum_data_2_reg__0[6]),
        .I2(hist_sum_data_2_reg__0[8]),
        .O(\hist_sum_data_3[0]_i_91_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_92 
       (.I0(hist_sum_data_2_reg__0[9]),
        .I1(hist_sum_data_2_reg__0[5]),
        .I2(hist_sum_data_2_reg__0[7]),
        .O(\hist_sum_data_3[0]_i_92_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_93 
       (.I0(hist_sum_data_2_reg__0[8]),
        .I1(hist_sum_data_2_reg__0[4]),
        .I2(hist_sum_data_2_reg__0[6]),
        .O(\hist_sum_data_3[0]_i_93_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[0]_i_94 
       (.I0(hist_sum_data_2_reg__0[7]),
        .I1(hist_sum_data_2_reg__0[3]),
        .I2(hist_sum_data_2_reg__0[5]),
        .O(\hist_sum_data_3[0]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_95 
       (.I0(hist_sum_data_2_reg__0[8]),
        .I1(hist_sum_data_2_reg__0[6]),
        .I2(hist_sum_data_2_reg__0[10]),
        .I3(hist_sum_data_2_reg__0[11]),
        .I4(hist_sum_data_2_reg__0[7]),
        .I5(hist_sum_data_2_reg__0[9]),
        .O(\hist_sum_data_3[0]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_96 
       (.I0(hist_sum_data_2_reg__0[7]),
        .I1(hist_sum_data_2_reg__0[5]),
        .I2(hist_sum_data_2_reg__0[9]),
        .I3(hist_sum_data_2_reg__0[10]),
        .I4(hist_sum_data_2_reg__0[6]),
        .I5(hist_sum_data_2_reg__0[8]),
        .O(\hist_sum_data_3[0]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_97 
       (.I0(hist_sum_data_2_reg__0[6]),
        .I1(hist_sum_data_2_reg__0[4]),
        .I2(hist_sum_data_2_reg__0[8]),
        .I3(hist_sum_data_2_reg__0[9]),
        .I4(hist_sum_data_2_reg__0[5]),
        .I5(hist_sum_data_2_reg__0[7]),
        .O(\hist_sum_data_3[0]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[0]_i_98 
       (.I0(hist_sum_data_2_reg__0[5]),
        .I1(hist_sum_data_2_reg__0[3]),
        .I2(hist_sum_data_2_reg__0[7]),
        .I3(hist_sum_data_2_reg__0[8]),
        .I4(hist_sum_data_2_reg__0[4]),
        .I5(hist_sum_data_2_reg__0[6]),
        .O(\hist_sum_data_3[0]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[10]_i_1 
       (.I0(\hist_sum_data_3_reg[12]_i_2_n_6 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[11]_i_2_n_5 ),
        .O(\hist_sum_data_3[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[11]_i_1 
       (.I0(\hist_sum_data_3_reg[12]_i_2_n_5 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[11]_i_2_n_4 ),
        .O(\hist_sum_data_3[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[12]_i_1 
       (.I0(\hist_sum_data_3_reg[12]_i_2_n_4 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[15]_i_2_n_7 ),
        .O(\hist_sum_data_3[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \hist_sum_data_3[12]_i_10 
       (.I0(\hist_sum_data_3[12]_i_6_n_0 ),
        .I1(\hist_sum_data_3[12]_i_20_n_0 ),
        .I2(hist_sum_data_2_reg__0[21]),
        .I3(\hist_sum_data_3_reg[12]_i_13_n_6 ),
        .I4(\hist_sum_data_3_reg[12]_i_12_n_6 ),
        .I5(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .O(\hist_sum_data_3[12]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[12]_i_11 
       (.I0(hist_sum_data_20__0_n_99),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[12]_i_14 
       (.I0(hist_sum_data_20__0_n_100),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[22]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[12]_i_15 
       (.I0(hist_sum_data_20__0_n_101),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[21]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[12]_i_16 
       (.I0(hist_sum_data_20__0_n_102),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[12]_i_17 
       (.I0(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I1(\hist_sum_data_3_reg[16]_i_11_n_6 ),
        .I2(\hist_sum_data_3_reg[19]_i_18_n_6 ),
        .O(\hist_sum_data_3[12]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[12]_i_18 
       (.I0(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I1(\hist_sum_data_3_reg[16]_i_11_n_7 ),
        .I2(\hist_sum_data_3_reg[19]_i_18_n_7 ),
        .O(\hist_sum_data_3[12]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[12]_i_19 
       (.I0(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I1(\hist_sum_data_3_reg[12]_i_13_n_4 ),
        .I2(\hist_sum_data_3_reg[12]_i_12_n_4 ),
        .O(\hist_sum_data_3[12]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[12]_i_20 
       (.I0(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I1(\hist_sum_data_3_reg[12]_i_13_n_5 ),
        .I2(\hist_sum_data_3_reg[12]_i_12_n_5 ),
        .O(\hist_sum_data_3[12]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \hist_sum_data_3[12]_i_21 
       (.I0(hist_sum_data_20__0_n_94),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_92),
        .O(\hist_sum_data_3[12]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \hist_sum_data_3[12]_i_22 
       (.I0(hist_sum_data_20__0_n_95),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_93),
        .O(\hist_sum_data_3[12]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \hist_sum_data_3[12]_i_23 
       (.I0(hist_sum_data_20__0_n_96),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_94),
        .O(\hist_sum_data_3[12]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[12]_i_24 
       (.I0(hist_sum_data_20__0_n_95),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_97),
        .I3(hist_sum_data_20__0_n_92),
        .O(\hist_sum_data_3[12]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h4FBF)) 
    \hist_sum_data_3[12]_i_25 
       (.I0(hist_sum_data_20__0_n_92),
        .I1(hist_sum_data_20__0_n_94),
        .I2(\hist_sum_data_3_reg[0]_0 ),
        .I3(hist_sum_data_20__0_n_93),
        .O(\hist_sum_data_3[12]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB4FF4BFF)) 
    \hist_sum_data_3[12]_i_26 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(hist_sum_data_20__0_n_95),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(hist_sum_data_20__0_n_94),
        .O(\hist_sum_data_3[12]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB4FF4BFF)) 
    \hist_sum_data_3[12]_i_27 
       (.I0(hist_sum_data_20__0_n_94),
        .I1(hist_sum_data_20__0_n_96),
        .I2(hist_sum_data_20__0_n_93),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(hist_sum_data_20__0_n_95),
        .O(\hist_sum_data_3[12]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h718EFFFF8E71FFFF)) 
    \hist_sum_data_3[12]_i_28 
       (.I0(hist_sum_data_20__0_n_92),
        .I1(hist_sum_data_20__0_n_97),
        .I2(hist_sum_data_20__0_n_95),
        .I3(hist_sum_data_20__0_n_94),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .I5(hist_sum_data_20__0_n_96),
        .O(\hist_sum_data_3[12]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[12]_i_29 
       (.I0(hist_sum_data_20__0_n_96),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_100),
        .I3(hist_sum_data_20__0_n_98),
        .O(\hist_sum_data_3[12]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hBEEB28EB28EB2882)) 
    \hist_sum_data_3[12]_i_3 
       (.I0(hist_sum_data_2_reg__0[23]),
        .I1(\hist_sum_data_3_reg[19]_i_18_n_7 ),
        .I2(\hist_sum_data_3_reg[16]_i_11_n_7 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(\hist_sum_data_3_reg[12]_i_12_n_4 ),
        .I5(\hist_sum_data_3_reg[12]_i_13_n_4 ),
        .O(\hist_sum_data_3[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[12]_i_30 
       (.I0(hist_sum_data_20__0_n_97),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_101),
        .I3(hist_sum_data_20__0_n_99),
        .O(\hist_sum_data_3[12]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[12]_i_31 
       (.I0(hist_sum_data_20__0_n_98),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_102),
        .I3(hist_sum_data_20__0_n_100),
        .O(\hist_sum_data_3[12]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[12]_i_32 
       (.I0(hist_sum_data_20__0_n_99),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_103),
        .I3(hist_sum_data_20__0_n_101),
        .O(\hist_sum_data_3[12]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[12]_i_33 
       (.I0(hist_sum_data_2_reg__0[24]),
        .I1(hist_sum_data_2_reg__0[22]),
        .I2(hist_sum_data_2_reg__0[26]),
        .I3(hist_sum_data_2_reg__0[27]),
        .I4(hist_sum_data_2_reg__0[23]),
        .I5(hist_sum_data_2_reg__0[25]),
        .O(\hist_sum_data_3[12]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[12]_i_34 
       (.I0(hist_sum_data_2_reg__0[23]),
        .I1(hist_sum_data_2_reg__0[21]),
        .I2(hist_sum_data_2_reg__0[25]),
        .I3(hist_sum_data_2_reg__0[26]),
        .I4(hist_sum_data_2_reg__0[22]),
        .I5(hist_sum_data_2_reg__0[24]),
        .O(\hist_sum_data_3[12]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[12]_i_35 
       (.I0(hist_sum_data_2_reg__0[22]),
        .I1(hist_sum_data_2_reg__0[20]),
        .I2(hist_sum_data_2_reg__0[24]),
        .I3(hist_sum_data_2_reg__0[25]),
        .I4(hist_sum_data_2_reg__0[21]),
        .I5(hist_sum_data_2_reg__0[23]),
        .O(\hist_sum_data_3[12]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[12]_i_36 
       (.I0(hist_sum_data_2_reg__0[21]),
        .I1(hist_sum_data_2_reg__0[19]),
        .I2(hist_sum_data_2_reg__0[23]),
        .I3(hist_sum_data_2_reg__0[24]),
        .I4(hist_sum_data_2_reg__0[20]),
        .I5(hist_sum_data_2_reg__0[22]),
        .O(\hist_sum_data_3[12]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hBEEB28EB28EB2882)) 
    \hist_sum_data_3[12]_i_4 
       (.I0(hist_sum_data_2_reg__0[22]),
        .I1(\hist_sum_data_3_reg[12]_i_12_n_4 ),
        .I2(\hist_sum_data_3_reg[12]_i_13_n_4 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(\hist_sum_data_3_reg[12]_i_12_n_5 ),
        .I5(\hist_sum_data_3_reg[12]_i_13_n_5 ),
        .O(\hist_sum_data_3[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBEEB28EB28EB2882)) 
    \hist_sum_data_3[12]_i_5 
       (.I0(hist_sum_data_2_reg__0[21]),
        .I1(\hist_sum_data_3_reg[12]_i_12_n_5 ),
        .I2(\hist_sum_data_3_reg[12]_i_13_n_5 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(\hist_sum_data_3_reg[12]_i_12_n_6 ),
        .I5(\hist_sum_data_3_reg[12]_i_13_n_6 ),
        .O(\hist_sum_data_3[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBEEB28EB28EB2882)) 
    \hist_sum_data_3[12]_i_6 
       (.I0(hist_sum_data_2_reg__0[20]),
        .I1(\hist_sum_data_3_reg[12]_i_12_n_6 ),
        .I2(\hist_sum_data_3_reg[12]_i_13_n_6 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(\hist_sum_data_3_reg[12]_i_12_n_7 ),
        .I5(\hist_sum_data_3_reg[12]_i_13_n_7 ),
        .O(\hist_sum_data_3[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \hist_sum_data_3[12]_i_7 
       (.I0(\hist_sum_data_3[12]_i_3_n_0 ),
        .I1(\hist_sum_data_3[12]_i_17_n_0 ),
        .I2(hist_sum_data_2_reg__0[24]),
        .I3(\hist_sum_data_3_reg[16]_i_11_n_7 ),
        .I4(\hist_sum_data_3_reg[19]_i_18_n_7 ),
        .I5(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .O(\hist_sum_data_3[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \hist_sum_data_3[12]_i_8 
       (.I0(\hist_sum_data_3[12]_i_4_n_0 ),
        .I1(\hist_sum_data_3[12]_i_18_n_0 ),
        .I2(hist_sum_data_2_reg__0[23]),
        .I3(\hist_sum_data_3_reg[12]_i_13_n_4 ),
        .I4(\hist_sum_data_3_reg[12]_i_12_n_4 ),
        .I5(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .O(\hist_sum_data_3[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \hist_sum_data_3[12]_i_9 
       (.I0(\hist_sum_data_3[12]_i_5_n_0 ),
        .I1(\hist_sum_data_3[12]_i_19_n_0 ),
        .I2(hist_sum_data_2_reg__0[22]),
        .I3(\hist_sum_data_3_reg[12]_i_13_n_5 ),
        .I4(\hist_sum_data_3_reg[12]_i_12_n_5 ),
        .I5(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .O(\hist_sum_data_3[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[13]_i_1 
       (.I0(\hist_sum_data_3_reg[16]_i_2_n_7 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[15]_i_2_n_6 ),
        .O(\hist_sum_data_3[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[14]_i_1 
       (.I0(\hist_sum_data_3_reg[16]_i_2_n_6 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[15]_i_2_n_5 ),
        .O(\hist_sum_data_3[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[15]_i_1 
       (.I0(\hist_sum_data_3_reg[16]_i_2_n_5 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[15]_i_2_n_4 ),
        .O(\hist_sum_data_3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[16]_i_1 
       (.I0(\hist_sum_data_3_reg[16]_i_2_n_4 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[19]_i_6_n_7 ),
        .O(\hist_sum_data_3[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \hist_sum_data_3[16]_i_10 
       (.I0(\hist_sum_data_3[16]_i_6_n_0 ),
        .I1(\hist_sum_data_3[16]_i_17_n_0 ),
        .I2(hist_sum_data_2_reg__0[25]),
        .I3(\hist_sum_data_3_reg[16]_i_11_n_6 ),
        .I4(\hist_sum_data_3_reg[19]_i_18_n_6 ),
        .I5(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .O(\hist_sum_data_3[16]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[16]_i_12 
       (.I0(hist_sum_data_20__0_n_97),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[25]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[16]_i_13 
       (.I0(hist_sum_data_20__0_n_98),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[24]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[16]_i_14 
       (.I0(hist_sum_data_20__0_n_94),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[28]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[16]_i_15 
       (.I0(hist_sum_data_20__0_n_95),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[27]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[16]_i_16 
       (.I0(hist_sum_data_20__0_n_96),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[16]_i_17 
       (.I0(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I1(\hist_sum_data_3_reg[16]_i_11_n_5 ),
        .I2(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .O(\hist_sum_data_3[16]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[16]_i_18 
       (.I0(hist_sum_data_20__0_n_92),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_96),
        .I3(hist_sum_data_20__0_n_94),
        .O(\hist_sum_data_3[16]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[16]_i_19 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_97),
        .I3(hist_sum_data_20__0_n_95),
        .O(\hist_sum_data_3[16]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[16]_i_20 
       (.I0(hist_sum_data_20__0_n_94),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_98),
        .I3(hist_sum_data_20__0_n_96),
        .O(\hist_sum_data_3[16]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[16]_i_21 
       (.I0(hist_sum_data_20__0_n_95),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_99),
        .I3(hist_sum_data_20__0_n_97),
        .O(\hist_sum_data_3[16]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h718EFFFF8E71FFFF)) 
    \hist_sum_data_3[16]_i_22 
       (.I0(hist_sum_data_20__0_n_94),
        .I1(hist_sum_data_20__0_n_96),
        .I2(hist_sum_data_20__0_n_92),
        .I3(hist_sum_data_20__0_n_95),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .I5(hist_sum_data_20__0_n_93),
        .O(\hist_sum_data_3[16]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[16]_i_23 
       (.I0(hist_sum_data_2_reg__0[27]),
        .I1(hist_sum_data_2_reg__0[25]),
        .I2(hist_sum_data_2_reg__0[29]),
        .I3(hist_sum_data_2_reg__0[30]),
        .I4(hist_sum_data_2_reg__0[26]),
        .I5(hist_sum_data_2_reg__0[28]),
        .O(\hist_sum_data_3[16]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[16]_i_24 
       (.I0(hist_sum_data_2_reg__0[26]),
        .I1(hist_sum_data_2_reg__0[24]),
        .I2(hist_sum_data_2_reg__0[28]),
        .I3(hist_sum_data_2_reg__0[29]),
        .I4(hist_sum_data_2_reg__0[25]),
        .I5(hist_sum_data_2_reg__0[27]),
        .O(\hist_sum_data_3[16]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[16]_i_25 
       (.I0(hist_sum_data_2_reg__0[25]),
        .I1(hist_sum_data_2_reg__0[23]),
        .I2(hist_sum_data_2_reg__0[27]),
        .I3(hist_sum_data_2_reg__0[28]),
        .I4(hist_sum_data_2_reg__0[24]),
        .I5(hist_sum_data_2_reg__0[26]),
        .O(\hist_sum_data_3[16]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h880F8FF880080F88)) 
    \hist_sum_data_3[16]_i_3 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_95),
        .I2(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I3(\hist_sum_data_3_reg[19]_i_19_n_7 ),
        .I4(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I5(\hist_sum_data_3_reg[16]_i_11_n_4 ),
        .O(\hist_sum_data_3[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h880F8FF880080F88)) 
    \hist_sum_data_3[16]_i_4 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_96),
        .I2(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I3(\hist_sum_data_3_reg[16]_i_11_n_4 ),
        .I4(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I5(\hist_sum_data_3_reg[16]_i_11_n_5 ),
        .O(\hist_sum_data_3[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEBBE82BE82BE8228)) 
    \hist_sum_data_3[16]_i_5 
       (.I0(hist_sum_data_2_reg__0[25]),
        .I1(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I2(\hist_sum_data_3_reg[16]_i_11_n_5 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(\hist_sum_data_3_reg[19]_i_18_n_6 ),
        .I5(\hist_sum_data_3_reg[16]_i_11_n_6 ),
        .O(\hist_sum_data_3[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBEEB28EB28EB2882)) 
    \hist_sum_data_3[16]_i_6 
       (.I0(hist_sum_data_2_reg__0[24]),
        .I1(\hist_sum_data_3_reg[19]_i_18_n_6 ),
        .I2(\hist_sum_data_3_reg[16]_i_11_n_6 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(\hist_sum_data_3_reg[19]_i_18_n_7 ),
        .I5(\hist_sum_data_3_reg[16]_i_11_n_7 ),
        .O(\hist_sum_data_3[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA5965A69965A69A5)) 
    \hist_sum_data_3[16]_i_7 
       (.I0(\hist_sum_data_3[16]_i_3_n_0 ),
        .I1(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I2(\hist_sum_data_3_reg[19]_i_19_n_6 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(hist_sum_data_2_reg__0[28]),
        .I5(\hist_sum_data_3_reg[19]_i_19_n_7 ),
        .O(\hist_sum_data_3[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA5965A69965A69A5)) 
    \hist_sum_data_3[16]_i_8 
       (.I0(\hist_sum_data_3[16]_i_4_n_0 ),
        .I1(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I2(\hist_sum_data_3_reg[19]_i_19_n_7 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(hist_sum_data_2_reg__0[27]),
        .I5(\hist_sum_data_3_reg[16]_i_11_n_4 ),
        .O(\hist_sum_data_3[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA5965A69965A69A5)) 
    \hist_sum_data_3[16]_i_9 
       (.I0(\hist_sum_data_3[16]_i_5_n_0 ),
        .I1(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I2(\hist_sum_data_3_reg[16]_i_11_n_4 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(hist_sum_data_2_reg__0[26]),
        .I5(\hist_sum_data_3_reg[16]_i_11_n_5 ),
        .O(\hist_sum_data_3[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[17]_i_1 
       (.I0(\hist_sum_data_3_reg[19]_i_2_n_7 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[19]_i_6_n_6 ),
        .O(\hist_sum_data_3[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[18]_i_1 
       (.I0(\hist_sum_data_3_reg[19]_i_2_n_6 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[19]_i_6_n_5 ),
        .O(\hist_sum_data_3[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[19]_i_1 
       (.I0(\hist_sum_data_3_reg[19]_i_2_n_5 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[19]_i_6_n_4 ),
        .O(\hist_sum_data_3[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA5965A69965A69A5)) 
    \hist_sum_data_3[19]_i_10 
       (.I0(\hist_sum_data_3[19]_i_7_n_0 ),
        .I1(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I2(\hist_sum_data_3_reg[19]_i_19_n_4 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(hist_sum_data_2_reg__0[30]),
        .I5(\hist_sum_data_3_reg[19]_i_19_n_5 ),
        .O(\hist_sum_data_3[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_100 
       (.I0(\hist_sum_data_3_reg[4]_i_2_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_i_2_n_4 ),
        .O(\hist_sum_data_3[19]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hA5965A69965A69A5)) 
    \hist_sum_data_3[19]_i_11 
       (.I0(\hist_sum_data_3[19]_i_8_n_0 ),
        .I1(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I2(\hist_sum_data_3_reg[19]_i_19_n_5 ),
        .I3(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I4(hist_sum_data_2_reg__0[29]),
        .I5(\hist_sum_data_3_reg[19]_i_19_n_6 ),
        .O(\hist_sum_data_3[19]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_13 
       (.I0(\hist_sum_data_3_reg[19]_i_17_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_93),
        .O(\hist_sum_data_3[19]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_14 
       (.I0(\hist_sum_data_3_reg[19]_i_17_n_5 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_94),
        .O(\hist_sum_data_3[19]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_15 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[19]_i_17_n_4 ),
        .I2(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I3(hist_sum_data_20__0_n_92),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_16 
       (.I0(hist_sum_data_20__0_n_94),
        .I1(\hist_sum_data_3_reg[19]_i_17_n_5 ),
        .I2(\hist_sum_data_3_reg[19]_i_17_n_4 ),
        .I3(hist_sum_data_20__0_n_93),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[19]_i_21 
       (.I0(hist_sum_data_20__0_n_92),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[30]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[19]_i_23 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[29]));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_25 
       (.I0(\hist_sum_data_3_reg[19]_i_17_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_95),
        .O(\hist_sum_data_3[19]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_26 
       (.I0(\hist_sum_data_3_reg[19]_i_17_n_7 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_96),
        .O(\hist_sum_data_3[19]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_27 
       (.I0(\hist_sum_data_3_reg[19]_i_33_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_97),
        .O(\hist_sum_data_3[19]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_28 
       (.I0(\hist_sum_data_3_reg[19]_i_33_n_5 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_98),
        .O(\hist_sum_data_3[19]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_29 
       (.I0(hist_sum_data_20__0_n_95),
        .I1(\hist_sum_data_3_reg[19]_i_17_n_6 ),
        .I2(\hist_sum_data_3_reg[19]_i_17_n_5 ),
        .I3(hist_sum_data_20__0_n_94),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_30 
       (.I0(hist_sum_data_20__0_n_96),
        .I1(\hist_sum_data_3_reg[19]_i_17_n_7 ),
        .I2(\hist_sum_data_3_reg[19]_i_17_n_6 ),
        .I3(hist_sum_data_20__0_n_95),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_31 
       (.I0(hist_sum_data_20__0_n_97),
        .I1(\hist_sum_data_3_reg[19]_i_33_n_4 ),
        .I2(\hist_sum_data_3_reg[19]_i_17_n_7 ),
        .I3(hist_sum_data_20__0_n_96),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_32 
       (.I0(hist_sum_data_20__0_n_98),
        .I1(\hist_sum_data_3_reg[19]_i_33_n_5 ),
        .I2(\hist_sum_data_3_reg[19]_i_33_n_4 ),
        .I3(hist_sum_data_20__0_n_97),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_34 
       (.I0(\hist_sum_data_3_reg[19]_i_2_n_5 ),
        .I1(\hist_sum_data_3_reg[19]_i_2_n_7 ),
        .O(\hist_sum_data_3[19]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_35 
       (.I0(\hist_sum_data_3_reg[19]_i_2_n_6 ),
        .I1(\hist_sum_data_3_reg[16]_i_2_n_4 ),
        .O(\hist_sum_data_3[19]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_36 
       (.I0(\hist_sum_data_3_reg[19]_i_2_n_7 ),
        .I1(\hist_sum_data_3_reg[16]_i_2_n_5 ),
        .O(\hist_sum_data_3[19]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[19]_i_37 
       (.I0(hist_sum_data_20__0_n_92),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[19]_i_38 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \hist_sum_data_3[19]_i_39 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_92),
        .O(\hist_sum_data_3[19]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \hist_sum_data_3[19]_i_40 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_92),
        .O(\hist_sum_data_3[19]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[19]_i_41 
       (.I0(hist_sum_data_20__0_n_92),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[19]_i_42 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \hist_sum_data_3[19]_i_43 
       (.I0(hist_sum_data_20__0_n_92),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_94),
        .O(\hist_sum_data_3[19]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \hist_sum_data_3[19]_i_44 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_95),
        .O(\hist_sum_data_3[19]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \hist_sum_data_3[19]_i_45 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_92),
        .O(\hist_sum_data_3[19]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \hist_sum_data_3[19]_i_46 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_92),
        .O(\hist_sum_data_3[19]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hEF1F)) 
    \hist_sum_data_3[19]_i_47 
       (.I0(hist_sum_data_20__0_n_94),
        .I1(hist_sum_data_20__0_n_92),
        .I2(\hist_sum_data_3_reg[0]_0 ),
        .I3(hist_sum_data_20__0_n_93),
        .O(\hist_sum_data_3[19]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h1EFFE1FF)) 
    \hist_sum_data_3[19]_i_48 
       (.I0(hist_sum_data_20__0_n_95),
        .I1(hist_sum_data_20__0_n_93),
        .I2(hist_sum_data_20__0_n_94),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(hist_sum_data_20__0_n_92),
        .O(\hist_sum_data_3[19]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_50 
       (.I0(\hist_sum_data_3_reg[19]_i_33_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_99),
        .O(\hist_sum_data_3[19]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_51 
       (.I0(\hist_sum_data_3_reg[19]_i_33_n_7 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_100),
        .O(\hist_sum_data_3[19]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_52 
       (.I0(\hist_sum_data_3_reg[19]_i_58_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_101),
        .O(\hist_sum_data_3[19]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_53 
       (.I0(\hist_sum_data_3_reg[19]_i_58_n_5 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_102),
        .O(\hist_sum_data_3[19]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_54 
       (.I0(hist_sum_data_20__0_n_99),
        .I1(\hist_sum_data_3_reg[19]_i_33_n_6 ),
        .I2(\hist_sum_data_3_reg[19]_i_33_n_5 ),
        .I3(hist_sum_data_20__0_n_98),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_55 
       (.I0(hist_sum_data_20__0_n_100),
        .I1(\hist_sum_data_3_reg[19]_i_33_n_7 ),
        .I2(\hist_sum_data_3_reg[19]_i_33_n_6 ),
        .I3(hist_sum_data_20__0_n_99),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_56 
       (.I0(hist_sum_data_20__0_n_101),
        .I1(\hist_sum_data_3_reg[19]_i_58_n_4 ),
        .I2(\hist_sum_data_3_reg[19]_i_33_n_7 ),
        .I3(hist_sum_data_20__0_n_100),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_57 
       (.I0(hist_sum_data_20__0_n_102),
        .I1(\hist_sum_data_3_reg[19]_i_58_n_5 ),
        .I2(\hist_sum_data_3_reg[19]_i_58_n_4 ),
        .I3(hist_sum_data_20__0_n_101),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_59 
       (.I0(\hist_sum_data_3_reg[16]_i_2_n_4 ),
        .I1(\hist_sum_data_3_reg[16]_i_2_n_6 ),
        .O(\hist_sum_data_3[19]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_60 
       (.I0(\hist_sum_data_3_reg[16]_i_2_n_5 ),
        .I1(\hist_sum_data_3_reg[16]_i_2_n_7 ),
        .O(\hist_sum_data_3[19]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_61 
       (.I0(\hist_sum_data_3_reg[16]_i_2_n_6 ),
        .I1(\hist_sum_data_3_reg[12]_i_2_n_4 ),
        .O(\hist_sum_data_3[19]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_62 
       (.I0(\hist_sum_data_3_reg[16]_i_2_n_7 ),
        .I1(\hist_sum_data_3_reg[12]_i_2_n_5 ),
        .O(\hist_sum_data_3[19]_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_64 
       (.I0(\hist_sum_data_3_reg[19]_i_58_n_6 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_103),
        .O(\hist_sum_data_3[19]_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_65 
       (.I0(\hist_sum_data_3_reg[19]_i_58_n_7 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_104),
        .O(\hist_sum_data_3[19]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \hist_sum_data_3[19]_i_66 
       (.I0(\hist_sum_data_3_reg[19]_i_72_n_4 ),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_105),
        .O(\hist_sum_data_3[19]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_3[19]_i_67 
       (.I0(\hist_sum_data_3_reg[19]_i_72_n_5 ),
        .I1(hist_sum_data_2_reg__0[16]),
        .O(\hist_sum_data_3[19]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_68 
       (.I0(hist_sum_data_20__0_n_103),
        .I1(\hist_sum_data_3_reg[19]_i_58_n_6 ),
        .I2(\hist_sum_data_3_reg[19]_i_58_n_5 ),
        .I3(hist_sum_data_20__0_n_102),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_69 
       (.I0(hist_sum_data_20__0_n_104),
        .I1(\hist_sum_data_3_reg[19]_i_58_n_7 ),
        .I2(\hist_sum_data_3_reg[19]_i_58_n_6 ),
        .I3(hist_sum_data_20__0_n_103),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h880F8FF880080F88)) 
    \hist_sum_data_3[19]_i_7 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_93),
        .I2(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I3(\hist_sum_data_3_reg[19]_i_19_n_5 ),
        .I4(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I5(\hist_sum_data_3_reg[19]_i_19_n_6 ),
        .O(\hist_sum_data_3[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB44BC3C3)) 
    \hist_sum_data_3[19]_i_70 
       (.I0(hist_sum_data_20__0_n_105),
        .I1(\hist_sum_data_3_reg[19]_i_72_n_4 ),
        .I2(\hist_sum_data_3_reg[19]_i_58_n_7 ),
        .I3(hist_sum_data_20__0_n_104),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hB44B4B4B)) 
    \hist_sum_data_3[19]_i_71 
       (.I0(hist_sum_data_2_reg__0[16]),
        .I1(\hist_sum_data_3_reg[19]_i_72_n_5 ),
        .I2(\hist_sum_data_3_reg[19]_i_72_n_4 ),
        .I3(hist_sum_data_20__0_n_105),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[19]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_73 
       (.I0(\hist_sum_data_3_reg[12]_i_2_n_4 ),
        .I1(\hist_sum_data_3_reg[12]_i_2_n_6 ),
        .O(\hist_sum_data_3[19]_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_74 
       (.I0(\hist_sum_data_3_reg[12]_i_2_n_5 ),
        .I1(\hist_sum_data_3_reg[12]_i_2_n_7 ),
        .O(\hist_sum_data_3[19]_i_74_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_75 
       (.I0(\hist_sum_data_3_reg[12]_i_2_n_6 ),
        .I1(\hist_sum_data_3_reg[8]_i_2_n_4 ),
        .O(\hist_sum_data_3[19]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_76 
       (.I0(\hist_sum_data_3_reg[12]_i_2_n_7 ),
        .I1(\hist_sum_data_3_reg[8]_i_2_n_5 ),
        .O(\hist_sum_data_3[19]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_3[19]_i_78 
       (.I0(\hist_sum_data_3_reg[19]_i_72_n_6 ),
        .I1(hist_sum_data_2_reg__0[15]),
        .O(\hist_sum_data_3[19]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_3[19]_i_79 
       (.I0(\hist_sum_data_3_reg[19]_i_72_n_7 ),
        .I1(hist_sum_data_2_reg__0[14]),
        .O(\hist_sum_data_3[19]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h880F8FF880080F88)) 
    \hist_sum_data_3[19]_i_8 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_94),
        .I2(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I3(\hist_sum_data_3_reg[19]_i_19_n_6 ),
        .I4(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I5(\hist_sum_data_3_reg[19]_i_19_n_7 ),
        .O(\hist_sum_data_3[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_3[19]_i_80 
       (.I0(\hist_sum_data_3_reg[19]_i_86_n_4 ),
        .I1(hist_sum_data_2_reg__0[13]),
        .O(\hist_sum_data_3[19]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_3[19]_i_81 
       (.I0(\hist_sum_data_3_reg[19]_i_86_n_5 ),
        .I1(hist_sum_data_2_reg__0[12]),
        .O(\hist_sum_data_3[19]_i_81_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_3[19]_i_82 
       (.I0(hist_sum_data_2_reg__0[15]),
        .I1(\hist_sum_data_3_reg[19]_i_72_n_6 ),
        .I2(\hist_sum_data_3_reg[19]_i_72_n_5 ),
        .I3(hist_sum_data_2_reg__0[16]),
        .O(\hist_sum_data_3[19]_i_82_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_3[19]_i_83 
       (.I0(hist_sum_data_2_reg__0[14]),
        .I1(\hist_sum_data_3_reg[19]_i_72_n_7 ),
        .I2(\hist_sum_data_3_reg[19]_i_72_n_6 ),
        .I3(hist_sum_data_2_reg__0[15]),
        .O(\hist_sum_data_3[19]_i_83_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_3[19]_i_84 
       (.I0(hist_sum_data_2_reg__0[13]),
        .I1(\hist_sum_data_3_reg[19]_i_86_n_4 ),
        .I2(\hist_sum_data_3_reg[19]_i_72_n_7 ),
        .I3(hist_sum_data_2_reg__0[14]),
        .O(\hist_sum_data_3[19]_i_84_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_3[19]_i_85 
       (.I0(hist_sum_data_2_reg__0[12]),
        .I1(\hist_sum_data_3_reg[19]_i_86_n_5 ),
        .I2(\hist_sum_data_3_reg[19]_i_86_n_4 ),
        .I3(hist_sum_data_2_reg__0[13]),
        .O(\hist_sum_data_3[19]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_87 
       (.I0(\hist_sum_data_3_reg[8]_i_2_n_4 ),
        .I1(\hist_sum_data_3_reg[8]_i_2_n_6 ),
        .O(\hist_sum_data_3[19]_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_88 
       (.I0(\hist_sum_data_3_reg[8]_i_2_n_5 ),
        .I1(\hist_sum_data_3_reg[8]_i_2_n_7 ),
        .O(\hist_sum_data_3[19]_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_89 
       (.I0(\hist_sum_data_3_reg[8]_i_2_n_6 ),
        .I1(\hist_sum_data_3_reg[4]_i_2_n_4 ),
        .O(\hist_sum_data_3[19]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hC837807F01FE13EC)) 
    \hist_sum_data_3[19]_i_9 
       (.I0(\hist_sum_data_3_reg[19]_i_19_n_5 ),
        .I1(hist_sum_data_2_reg__0[30]),
        .I2(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I3(\hist_sum_data_3_reg[19]_i_22_n_3 ),
        .I4(\hist_sum_data_3_reg[19]_i_18_n_1 ),
        .I5(\hist_sum_data_3_reg[19]_i_19_n_4 ),
        .O(\hist_sum_data_3[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_90 
       (.I0(\hist_sum_data_3_reg[8]_i_2_n_7 ),
        .I1(\hist_sum_data_3_reg[4]_i_2_n_5 ),
        .O(\hist_sum_data_3[19]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hist_sum_data_3[19]_i_91 
       (.I0(\hist_sum_data_3_reg[19]_i_86_n_6 ),
        .I1(hist_sum_data_2_reg__0[11]),
        .O(\hist_sum_data_3[19]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_3[19]_i_92 
       (.I0(\hist_sum_data_3_reg[19]_i_86_n_7 ),
        .I1(hist_sum_data_2_reg__0[10]),
        .O(\hist_sum_data_3[19]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hist_sum_data_3[19]_i_93 
       (.I0(\hist_sum_data_3_reg[0]_i_2_n_4 ),
        .I1(hist_sum_data_2_reg__0[9]),
        .O(\hist_sum_data_3[19]_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \hist_sum_data_3[19]_i_94 
       (.I0(hist_sum_data_2_reg__0[11]),
        .I1(\hist_sum_data_3_reg[19]_i_86_n_6 ),
        .I2(\hist_sum_data_3_reg[19]_i_86_n_5 ),
        .I3(hist_sum_data_2_reg__0[12]),
        .O(\hist_sum_data_3[19]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \hist_sum_data_3[19]_i_95 
       (.I0(hist_sum_data_2_reg__0[10]),
        .I1(\hist_sum_data_3_reg[19]_i_86_n_7 ),
        .I2(\hist_sum_data_3_reg[19]_i_86_n_6 ),
        .I3(hist_sum_data_2_reg__0[11]),
        .O(\hist_sum_data_3[19]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \hist_sum_data_3[19]_i_96 
       (.I0(hist_sum_data_2_reg__0[9]),
        .I1(\hist_sum_data_3_reg[0]_i_2_n_4 ),
        .I2(\hist_sum_data_3_reg[19]_i_86_n_7 ),
        .I3(hist_sum_data_2_reg__0[10]),
        .O(\hist_sum_data_3[19]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_97 
       (.I0(hist_sum_data_2_reg__0[9]),
        .I1(\hist_sum_data_3_reg[0]_i_2_n_4 ),
        .O(\hist_sum_data_3[19]_i_97_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_98 
       (.I0(\hist_sum_data_3_reg[4]_i_2_n_4 ),
        .I1(\hist_sum_data_3_reg[4]_i_2_n_6 ),
        .O(\hist_sum_data_3[19]_i_98_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_3[19]_i_99 
       (.I0(\hist_sum_data_3_reg[4]_i_2_n_5 ),
        .I1(\hist_sum_data_3_reg[4]_i_2_n_7 ),
        .O(\hist_sum_data_3[19]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[1]_i_1 
       (.I0(\hist_sum_data_3_reg[4]_i_2_n_7 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[3]_i_2_n_6 ),
        .O(\hist_sum_data_3[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[2]_i_1 
       (.I0(\hist_sum_data_3_reg[4]_i_2_n_6 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[3]_i_2_n_5 ),
        .O(\hist_sum_data_3[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[3]_i_1 
       (.I0(\hist_sum_data_3_reg[4]_i_2_n_5 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[3]_i_2_n_4 ),
        .O(\hist_sum_data_3[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_3[3]_i_3 
       (.I0(\hist_sum_data_3_reg[0]_i_2_n_4 ),
        .O(\hist_sum_data_3[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[4]_i_1 
       (.I0(\hist_sum_data_3_reg[4]_i_2_n_4 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[7]_i_2_n_7 ),
        .O(\hist_sum_data_3[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[4]_i_10 
       (.I0(\hist_sum_data_3[4]_i_6_n_0 ),
        .I1(\hist_sum_data_3[4]_i_16_n_0 ),
        .I2(hist_sum_data_2_reg__0[13]),
        .I3(\hist_sum_data_3_reg[4]_i_14_n_6 ),
        .I4(\hist_sum_data_3_reg[4]_i_13_n_6 ),
        .I5(\hist_sum_data_3_reg[4]_i_12_n_6 ),
        .O(\hist_sum_data_3[4]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[4]_i_11 
       (.I0(\hist_sum_data_3_reg[8]_i_12_n_7 ),
        .I1(\hist_sum_data_3_reg[8]_i_14_n_7 ),
        .I2(\hist_sum_data_3_reg[8]_i_13_n_7 ),
        .O(\hist_sum_data_3[4]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[4]_i_15 
       (.I0(\hist_sum_data_3_reg[4]_i_12_n_4 ),
        .I1(\hist_sum_data_3_reg[4]_i_14_n_4 ),
        .I2(\hist_sum_data_3_reg[4]_i_13_n_4 ),
        .O(\hist_sum_data_3[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[4]_i_16 
       (.I0(\hist_sum_data_3_reg[4]_i_12_n_5 ),
        .I1(\hist_sum_data_3_reg[4]_i_14_n_5 ),
        .I2(\hist_sum_data_3_reg[4]_i_13_n_5 ),
        .O(\hist_sum_data_3[4]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[4]_i_17 
       (.I0(\hist_sum_data_3_reg[4]_i_12_n_6 ),
        .I1(\hist_sum_data_3_reg[4]_i_14_n_6 ),
        .I2(\hist_sum_data_3_reg[4]_i_13_n_6 ),
        .O(\hist_sum_data_3[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h718EFFFF8E71FFFF)) 
    \hist_sum_data_3[4]_i_18 
       (.I0(hist_sum_data_20__0_n_94),
        .I1(hist_sum_data_20__0_n_96),
        .I2(hist_sum_data_20__0_n_92),
        .I3(hist_sum_data_20__0_n_95),
        .I4(\hist_sum_data_3_reg[0]_0 ),
        .I5(hist_sum_data_20__0_n_93),
        .O(\hist_sum_data_3[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_19 
       (.I0(hist_sum_data_2_reg__0[27]),
        .I1(hist_sum_data_2_reg__0[25]),
        .I2(hist_sum_data_2_reg__0[29]),
        .I3(hist_sum_data_2_reg__0[30]),
        .I4(hist_sum_data_2_reg__0[26]),
        .I5(hist_sum_data_2_reg__0[28]),
        .O(\hist_sum_data_3[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_20 
       (.I0(hist_sum_data_2_reg__0[26]),
        .I1(hist_sum_data_2_reg__0[24]),
        .I2(hist_sum_data_2_reg__0[28]),
        .I3(hist_sum_data_2_reg__0[29]),
        .I4(hist_sum_data_2_reg__0[25]),
        .I5(hist_sum_data_2_reg__0[27]),
        .O(\hist_sum_data_3[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_21 
       (.I0(hist_sum_data_2_reg__0[25]),
        .I1(hist_sum_data_2_reg__0[23]),
        .I2(hist_sum_data_2_reg__0[27]),
        .I3(hist_sum_data_2_reg__0[28]),
        .I4(hist_sum_data_2_reg__0[24]),
        .I5(hist_sum_data_2_reg__0[26]),
        .O(\hist_sum_data_3[4]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[4]_i_22 
       (.I0(hist_sum_data_20__0_n_100),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_102),
        .I3(hist_sum_data_20__0_n_97),
        .O(\hist_sum_data_3[4]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[4]_i_23 
       (.I0(hist_sum_data_20__0_n_101),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_103),
        .I3(hist_sum_data_20__0_n_98),
        .O(\hist_sum_data_3[4]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[4]_i_24 
       (.I0(hist_sum_data_20__0_n_102),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_104),
        .I3(hist_sum_data_20__0_n_99),
        .O(\hist_sum_data_3[4]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[4]_i_25 
       (.I0(hist_sum_data_20__0_n_103),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_105),
        .I3(hist_sum_data_20__0_n_100),
        .O(\hist_sum_data_3[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_26 
       (.I0(hist_sum_data_2_reg__0[25]),
        .I1(hist_sum_data_2_reg__0[20]),
        .I2(hist_sum_data_2_reg__0[22]),
        .I3(hist_sum_data_2_reg__0[21]),
        .I4(hist_sum_data_2_reg__0[23]),
        .I5(hist_sum_data_2_reg__0[26]),
        .O(\hist_sum_data_3[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_27 
       (.I0(hist_sum_data_2_reg__0[24]),
        .I1(hist_sum_data_2_reg__0[19]),
        .I2(hist_sum_data_2_reg__0[21]),
        .I3(hist_sum_data_2_reg__0[20]),
        .I4(hist_sum_data_2_reg__0[22]),
        .I5(hist_sum_data_2_reg__0[25]),
        .O(\hist_sum_data_3[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_28 
       (.I0(hist_sum_data_2_reg__0[23]),
        .I1(hist_sum_data_2_reg__0[18]),
        .I2(hist_sum_data_2_reg__0[20]),
        .I3(hist_sum_data_2_reg__0[19]),
        .I4(hist_sum_data_2_reg__0[21]),
        .I5(hist_sum_data_2_reg__0[24]),
        .O(\hist_sum_data_3[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_29 
       (.I0(hist_sum_data_2_reg__0[22]),
        .I1(hist_sum_data_2_reg__0[17]),
        .I2(hist_sum_data_2_reg__0[19]),
        .I3(hist_sum_data_2_reg__0[18]),
        .I4(hist_sum_data_2_reg__0[20]),
        .I5(hist_sum_data_2_reg__0[23]),
        .O(\hist_sum_data_3[4]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[4]_i_3 
       (.I0(hist_sum_data_2_reg__0[15]),
        .I1(\hist_sum_data_3[4]_i_11_n_0 ),
        .I2(\hist_sum_data_3_reg[4]_i_12_n_4 ),
        .I3(\hist_sum_data_3_reg[4]_i_13_n_4 ),
        .I4(\hist_sum_data_3_reg[4]_i_14_n_4 ),
        .O(\hist_sum_data_3[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF770)) 
    \hist_sum_data_3[4]_i_30 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_104),
        .I2(hist_sum_data_2_reg__0[14]),
        .I3(hist_sum_data_2_reg__0[16]),
        .O(\hist_sum_data_3[4]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF770)) 
    \hist_sum_data_3[4]_i_31 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_105),
        .I2(hist_sum_data_2_reg__0[13]),
        .I3(hist_sum_data_2_reg__0[15]),
        .O(\hist_sum_data_3[4]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[4]_i_32 
       (.I0(hist_sum_data_2_reg__0[16]),
        .I1(hist_sum_data_2_reg__0[12]),
        .I2(hist_sum_data_2_reg__0[14]),
        .O(\hist_sum_data_3[4]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \hist_sum_data_3[4]_i_33 
       (.I0(hist_sum_data_2_reg__0[15]),
        .I1(hist_sum_data_2_reg__0[11]),
        .I2(hist_sum_data_2_reg__0[13]),
        .O(\hist_sum_data_3[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_34 
       (.I0(hist_sum_data_2_reg__0[16]),
        .I1(hist_sum_data_2_reg__0[14]),
        .I2(hist_sum_data_2_reg__0[18]),
        .I3(hist_sum_data_2_reg__0[19]),
        .I4(hist_sum_data_2_reg__0[15]),
        .I5(hist_sum_data_2_reg__0[17]),
        .O(\hist_sum_data_3[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_35 
       (.I0(hist_sum_data_2_reg__0[15]),
        .I1(hist_sum_data_2_reg__0[13]),
        .I2(hist_sum_data_2_reg__0[17]),
        .I3(hist_sum_data_2_reg__0[18]),
        .I4(hist_sum_data_2_reg__0[14]),
        .I5(hist_sum_data_2_reg__0[16]),
        .O(\hist_sum_data_3[4]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_36 
       (.I0(hist_sum_data_2_reg__0[14]),
        .I1(hist_sum_data_2_reg__0[12]),
        .I2(hist_sum_data_2_reg__0[16]),
        .I3(hist_sum_data_2_reg__0[17]),
        .I4(hist_sum_data_2_reg__0[13]),
        .I5(hist_sum_data_2_reg__0[15]),
        .O(\hist_sum_data_3[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[4]_i_37 
       (.I0(hist_sum_data_2_reg__0[13]),
        .I1(hist_sum_data_2_reg__0[11]),
        .I2(hist_sum_data_2_reg__0[15]),
        .I3(hist_sum_data_2_reg__0[16]),
        .I4(hist_sum_data_2_reg__0[12]),
        .I5(hist_sum_data_2_reg__0[14]),
        .O(\hist_sum_data_3[4]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[4]_i_4 
       (.I0(hist_sum_data_2_reg__0[14]),
        .I1(\hist_sum_data_3[4]_i_15_n_0 ),
        .I2(\hist_sum_data_3_reg[4]_i_12_n_5 ),
        .I3(\hist_sum_data_3_reg[4]_i_13_n_5 ),
        .I4(\hist_sum_data_3_reg[4]_i_14_n_5 ),
        .O(\hist_sum_data_3[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[4]_i_5 
       (.I0(hist_sum_data_2_reg__0[13]),
        .I1(\hist_sum_data_3[4]_i_16_n_0 ),
        .I2(\hist_sum_data_3_reg[4]_i_12_n_6 ),
        .I3(\hist_sum_data_3_reg[4]_i_13_n_6 ),
        .I4(\hist_sum_data_3_reg[4]_i_14_n_6 ),
        .O(\hist_sum_data_3[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[4]_i_6 
       (.I0(hist_sum_data_2_reg__0[12]),
        .I1(\hist_sum_data_3[4]_i_17_n_0 ),
        .I2(\hist_sum_data_3_reg[4]_i_12_n_7 ),
        .I3(\hist_sum_data_3_reg[4]_i_13_n_7 ),
        .I4(\hist_sum_data_3_reg[4]_i_14_n_7 ),
        .O(\hist_sum_data_3[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[4]_i_7 
       (.I0(\hist_sum_data_3[4]_i_3_n_0 ),
        .I1(\hist_sum_data_3[8]_i_17_n_0 ),
        .I2(hist_sum_data_2_reg__0[16]),
        .I3(\hist_sum_data_3_reg[8]_i_14_n_7 ),
        .I4(\hist_sum_data_3_reg[8]_i_13_n_7 ),
        .I5(\hist_sum_data_3_reg[8]_i_12_n_7 ),
        .O(\hist_sum_data_3[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[4]_i_8 
       (.I0(\hist_sum_data_3[4]_i_4_n_0 ),
        .I1(\hist_sum_data_3[4]_i_11_n_0 ),
        .I2(hist_sum_data_2_reg__0[15]),
        .I3(\hist_sum_data_3_reg[4]_i_14_n_4 ),
        .I4(\hist_sum_data_3_reg[4]_i_13_n_4 ),
        .I5(\hist_sum_data_3_reg[4]_i_12_n_4 ),
        .O(\hist_sum_data_3[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[4]_i_9 
       (.I0(\hist_sum_data_3[4]_i_5_n_0 ),
        .I1(\hist_sum_data_3[4]_i_15_n_0 ),
        .I2(hist_sum_data_2_reg__0[14]),
        .I3(\hist_sum_data_3_reg[4]_i_14_n_5 ),
        .I4(\hist_sum_data_3_reg[4]_i_13_n_5 ),
        .I5(\hist_sum_data_3_reg[4]_i_12_n_5 ),
        .O(\hist_sum_data_3[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[5]_i_1 
       (.I0(\hist_sum_data_3_reg[8]_i_2_n_7 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[7]_i_2_n_6 ),
        .O(\hist_sum_data_3[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[6]_i_1 
       (.I0(\hist_sum_data_3_reg[8]_i_2_n_6 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[7]_i_2_n_5 ),
        .O(\hist_sum_data_3[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[7]_i_1 
       (.I0(\hist_sum_data_3_reg[8]_i_2_n_5 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[7]_i_2_n_4 ),
        .O(\hist_sum_data_3[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[8]_i_1 
       (.I0(\hist_sum_data_3_reg[8]_i_2_n_4 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[11]_i_2_n_7 ),
        .O(\hist_sum_data_3[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[8]_i_10 
       (.I0(\hist_sum_data_3[8]_i_6_n_0 ),
        .I1(\hist_sum_data_3[8]_i_16_n_0 ),
        .I2(hist_sum_data_2_reg__0[17]),
        .I3(\hist_sum_data_3_reg[8]_i_14_n_6 ),
        .I4(\hist_sum_data_3_reg[8]_i_13_n_6 ),
        .I5(\hist_sum_data_3_reg[8]_i_12_n_6 ),
        .O(\hist_sum_data_3[8]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[8]_i_11 
       (.I0(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I1(\hist_sum_data_3_reg[12]_i_13_n_7 ),
        .I2(\hist_sum_data_3_reg[12]_i_12_n_7 ),
        .O(\hist_sum_data_3[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[8]_i_15 
       (.I0(\hist_sum_data_3_reg[8]_i_12_n_4 ),
        .I1(\hist_sum_data_3_reg[8]_i_14_n_4 ),
        .I2(\hist_sum_data_3_reg[8]_i_13_n_4 ),
        .O(\hist_sum_data_3[8]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[8]_i_16 
       (.I0(\hist_sum_data_3_reg[8]_i_12_n_5 ),
        .I1(\hist_sum_data_3_reg[8]_i_14_n_5 ),
        .I2(\hist_sum_data_3_reg[8]_i_13_n_5 ),
        .O(\hist_sum_data_3[8]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_3[8]_i_17 
       (.I0(\hist_sum_data_3_reg[8]_i_12_n_6 ),
        .I1(\hist_sum_data_3_reg[8]_i_14_n_6 ),
        .I2(\hist_sum_data_3_reg[8]_i_13_n_6 ),
        .O(\hist_sum_data_3[8]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \hist_sum_data_3[8]_i_18 
       (.I0(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .I1(\hist_sum_data_3_reg[12]_i_13_n_6 ),
        .I2(\hist_sum_data_3_reg[12]_i_12_n_6 ),
        .O(\hist_sum_data_3[8]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[8]_i_19 
       (.I0(hist_sum_data_20__0_n_103),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[8]_i_20 
       (.I0(hist_sum_data_20__0_n_104),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[8]_i_21 
       (.I0(hist_sum_data_20__0_n_105),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(hist_sum_data_2_reg__0[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[8]_i_22 
       (.I0(hist_sum_data_20__0_n_92),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[8]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_3[8]_i_23 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .O(\hist_sum_data_3[8]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \hist_sum_data_3[8]_i_24 
       (.I0(hist_sum_data_20__0_n_92),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_94),
        .O(\hist_sum_data_3[8]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \hist_sum_data_3[8]_i_25 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_95),
        .O(\hist_sum_data_3[8]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \hist_sum_data_3[8]_i_26 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_92),
        .O(\hist_sum_data_3[8]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \hist_sum_data_3[8]_i_27 
       (.I0(hist_sum_data_20__0_n_93),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_92),
        .O(\hist_sum_data_3[8]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hEF1F)) 
    \hist_sum_data_3[8]_i_28 
       (.I0(hist_sum_data_20__0_n_94),
        .I1(hist_sum_data_20__0_n_92),
        .I2(\hist_sum_data_3_reg[0]_0 ),
        .I3(hist_sum_data_20__0_n_93),
        .O(\hist_sum_data_3[8]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h1EFFE1FF)) 
    \hist_sum_data_3[8]_i_29 
       (.I0(hist_sum_data_20__0_n_95),
        .I1(hist_sum_data_20__0_n_93),
        .I2(hist_sum_data_20__0_n_94),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(hist_sum_data_20__0_n_92),
        .O(\hist_sum_data_3[8]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F880F8808080)) 
    \hist_sum_data_3[8]_i_3 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_103),
        .I2(\hist_sum_data_3[8]_i_11_n_0 ),
        .I3(\hist_sum_data_3_reg[8]_i_12_n_4 ),
        .I4(\hist_sum_data_3_reg[8]_i_13_n_4 ),
        .I5(\hist_sum_data_3_reg[8]_i_14_n_4 ),
        .O(\hist_sum_data_3[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[8]_i_30 
       (.I0(hist_sum_data_20__0_n_96),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_98),
        .I3(hist_sum_data_20__0_n_93),
        .O(\hist_sum_data_3[8]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[8]_i_31 
       (.I0(hist_sum_data_20__0_n_97),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_99),
        .I3(hist_sum_data_20__0_n_94),
        .O(\hist_sum_data_3[8]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[8]_i_32 
       (.I0(hist_sum_data_20__0_n_98),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_100),
        .I3(hist_sum_data_20__0_n_95),
        .O(\hist_sum_data_3[8]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[8]_i_33 
       (.I0(hist_sum_data_20__0_n_99),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_101),
        .I3(hist_sum_data_20__0_n_96),
        .O(\hist_sum_data_3[8]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[8]_i_34 
       (.I0(hist_sum_data_2_reg__0[29]),
        .I1(hist_sum_data_2_reg__0[24]),
        .I2(hist_sum_data_2_reg__0[26]),
        .I3(hist_sum_data_2_reg__0[25]),
        .I4(hist_sum_data_2_reg__0[27]),
        .I5(hist_sum_data_2_reg__0[30]),
        .O(\hist_sum_data_3[8]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[8]_i_35 
       (.I0(hist_sum_data_2_reg__0[28]),
        .I1(hist_sum_data_2_reg__0[23]),
        .I2(hist_sum_data_2_reg__0[25]),
        .I3(hist_sum_data_2_reg__0[24]),
        .I4(hist_sum_data_2_reg__0[26]),
        .I5(hist_sum_data_2_reg__0[29]),
        .O(\hist_sum_data_3[8]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[8]_i_36 
       (.I0(hist_sum_data_2_reg__0[27]),
        .I1(hist_sum_data_2_reg__0[22]),
        .I2(hist_sum_data_2_reg__0[24]),
        .I3(hist_sum_data_2_reg__0[23]),
        .I4(hist_sum_data_2_reg__0[25]),
        .I5(hist_sum_data_2_reg__0[28]),
        .O(\hist_sum_data_3[8]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[8]_i_37 
       (.I0(hist_sum_data_2_reg__0[26]),
        .I1(hist_sum_data_2_reg__0[21]),
        .I2(hist_sum_data_2_reg__0[23]),
        .I3(hist_sum_data_2_reg__0[22]),
        .I4(hist_sum_data_2_reg__0[24]),
        .I5(hist_sum_data_2_reg__0[27]),
        .O(\hist_sum_data_3[8]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[8]_i_38 
       (.I0(hist_sum_data_20__0_n_100),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_104),
        .I3(hist_sum_data_20__0_n_102),
        .O(\hist_sum_data_3[8]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hC440)) 
    \hist_sum_data_3[8]_i_39 
       (.I0(hist_sum_data_20__0_n_101),
        .I1(\hist_sum_data_3_reg[0]_0 ),
        .I2(hist_sum_data_20__0_n_105),
        .I3(hist_sum_data_20__0_n_103),
        .O(\hist_sum_data_3[8]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F880F8808080)) 
    \hist_sum_data_3[8]_i_4 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_104),
        .I2(\hist_sum_data_3[8]_i_15_n_0 ),
        .I3(\hist_sum_data_3_reg[8]_i_12_n_5 ),
        .I4(\hist_sum_data_3_reg[8]_i_13_n_5 ),
        .I5(\hist_sum_data_3_reg[8]_i_14_n_5 ),
        .O(\hist_sum_data_3[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF270)) 
    \hist_sum_data_3[8]_i_40 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_102),
        .I2(hist_sum_data_2_reg__0[16]),
        .I3(hist_sum_data_20__0_n_104),
        .O(\hist_sum_data_3[8]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hF270)) 
    \hist_sum_data_3[8]_i_41 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_103),
        .I2(hist_sum_data_2_reg__0[15]),
        .I3(hist_sum_data_20__0_n_105),
        .O(\hist_sum_data_3[8]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[8]_i_42 
       (.I0(hist_sum_data_2_reg__0[20]),
        .I1(hist_sum_data_2_reg__0[18]),
        .I2(hist_sum_data_2_reg__0[22]),
        .I3(hist_sum_data_2_reg__0[23]),
        .I4(hist_sum_data_2_reg__0[19]),
        .I5(hist_sum_data_2_reg__0[21]),
        .O(\hist_sum_data_3[8]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[8]_i_43 
       (.I0(hist_sum_data_2_reg__0[19]),
        .I1(hist_sum_data_2_reg__0[17]),
        .I2(hist_sum_data_2_reg__0[21]),
        .I3(hist_sum_data_2_reg__0[22]),
        .I4(hist_sum_data_2_reg__0[18]),
        .I5(hist_sum_data_2_reg__0[20]),
        .O(\hist_sum_data_3[8]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[8]_i_44 
       (.I0(hist_sum_data_2_reg__0[18]),
        .I1(hist_sum_data_2_reg__0[16]),
        .I2(hist_sum_data_2_reg__0[20]),
        .I3(hist_sum_data_2_reg__0[21]),
        .I4(hist_sum_data_2_reg__0[17]),
        .I5(hist_sum_data_2_reg__0[19]),
        .O(\hist_sum_data_3[8]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \hist_sum_data_3[8]_i_45 
       (.I0(hist_sum_data_2_reg__0[17]),
        .I1(hist_sum_data_2_reg__0[15]),
        .I2(hist_sum_data_2_reg__0[19]),
        .I3(hist_sum_data_2_reg__0[20]),
        .I4(hist_sum_data_2_reg__0[16]),
        .I5(hist_sum_data_2_reg__0[18]),
        .O(\hist_sum_data_3[8]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F880F8808080)) 
    \hist_sum_data_3[8]_i_5 
       (.I0(\hist_sum_data_3_reg[0]_0 ),
        .I1(hist_sum_data_20__0_n_105),
        .I2(\hist_sum_data_3[8]_i_16_n_0 ),
        .I3(\hist_sum_data_3_reg[8]_i_12_n_6 ),
        .I4(\hist_sum_data_3_reg[8]_i_13_n_6 ),
        .I5(\hist_sum_data_3_reg[8]_i_14_n_6 ),
        .O(\hist_sum_data_3[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_3[8]_i_6 
       (.I0(hist_sum_data_2_reg__0[16]),
        .I1(\hist_sum_data_3[8]_i_17_n_0 ),
        .I2(\hist_sum_data_3_reg[8]_i_12_n_7 ),
        .I3(\hist_sum_data_3_reg[8]_i_13_n_7 ),
        .I4(\hist_sum_data_3_reg[8]_i_14_n_7 ),
        .O(\hist_sum_data_3[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \hist_sum_data_3[8]_i_7 
       (.I0(\hist_sum_data_3[8]_i_3_n_0 ),
        .I1(\hist_sum_data_3[8]_i_18_n_0 ),
        .I2(hist_sum_data_2_reg__0[20]),
        .I3(\hist_sum_data_3_reg[12]_i_13_n_7 ),
        .I4(\hist_sum_data_3_reg[12]_i_12_n_7 ),
        .I5(\hist_sum_data_3_reg[19]_i_20_n_3 ),
        .O(\hist_sum_data_3[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[8]_i_8 
       (.I0(\hist_sum_data_3[8]_i_4_n_0 ),
        .I1(\hist_sum_data_3[8]_i_11_n_0 ),
        .I2(hist_sum_data_2_reg__0[19]),
        .I3(\hist_sum_data_3_reg[8]_i_14_n_4 ),
        .I4(\hist_sum_data_3_reg[8]_i_13_n_4 ),
        .I5(\hist_sum_data_3_reg[8]_i_12_n_4 ),
        .O(\hist_sum_data_3[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_3[8]_i_9 
       (.I0(\hist_sum_data_3[8]_i_5_n_0 ),
        .I1(\hist_sum_data_3[8]_i_15_n_0 ),
        .I2(hist_sum_data_2_reg__0[18]),
        .I3(\hist_sum_data_3_reg[8]_i_14_n_5 ),
        .I4(\hist_sum_data_3_reg[8]_i_13_n_5 ),
        .I5(\hist_sum_data_3_reg[8]_i_12_n_5 ),
        .O(\hist_sum_data_3[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBB8AAA8888)) 
    \hist_sum_data_3[9]_i_1 
       (.I0(\hist_sum_data_3_reg[12]_i_2_n_7 ),
        .I1(\hist_sum_data_3_reg[19]_i_3_n_2 ),
        .I2(hist_sum_data_20__0_n_92),
        .I3(\hist_sum_data_3_reg[0]_0 ),
        .I4(\hist_sum_data_3_reg[19]_i_5_n_7 ),
        .I5(\hist_sum_data_3_reg[11]_i_2_n_6 ),
        .O(\hist_sum_data_3[9]_i_1_n_0 ));
  FDCE \hist_sum_data_3_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[0]_i_1_n_0 ),
        .Q(hist_sum_data_3[0]));
  CARRY4 \hist_sum_data_3_reg[0]_i_108 
       (.CI(1'b0),
        .CO({\hist_sum_data_3_reg[0]_i_108_n_0 ,\hist_sum_data_3_reg[0]_i_108_n_1 ,\hist_sum_data_3_reg[0]_i_108_n_2 ,\hist_sum_data_3_reg[0]_i_108_n_3 }),
        .CYINIT(1'b0),
        .DI({hist_sum_data_2_reg__0[1:0],1'b0,1'b1}),
        .O({\hist_sum_data_3_reg[0]_i_108_n_4 ,\hist_sum_data_3_reg[0]_i_108_n_5 ,\hist_sum_data_3_reg[0]_i_108_n_6 ,\NLW_hist_sum_data_3_reg[0]_i_108_O_UNCONNECTED [0]}),
        .S({\hist_sum_data_3[0]_i_141_n_0 ,\hist_sum_data_3[0]_i_142_n_0 ,\hist_sum_data_3[0]_i_143_n_0 ,hist_sum_data_2_reg__0[0]}));
  CARRY4 \hist_sum_data_3_reg[0]_i_109 
       (.CI(\hist_sum_data_3_reg[0]_i_139_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_109_n_0 ,\hist_sum_data_3_reg[0]_i_109_n_1 ,\hist_sum_data_3_reg[0]_i_109_n_2 ,\hist_sum_data_3_reg[0]_i_109_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_144_n_0 ,\hist_sum_data_3[0]_i_145_n_0 ,\hist_sum_data_3[0]_i_146_n_0 ,\hist_sum_data_3[0]_i_147_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_109_n_4 ,\hist_sum_data_3_reg[0]_i_109_n_5 ,\hist_sum_data_3_reg[0]_i_109_n_6 ,\hist_sum_data_3_reg[0]_i_109_n_7 }),
        .S({\hist_sum_data_3[0]_i_148_n_0 ,\hist_sum_data_3[0]_i_149_n_0 ,\hist_sum_data_3[0]_i_150_n_0 ,\hist_sum_data_3[0]_i_151_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_110 
       (.CI(\hist_sum_data_3_reg[0]_i_140_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_110_n_0 ,\hist_sum_data_3_reg[0]_i_110_n_1 ,\hist_sum_data_3_reg[0]_i_110_n_2 ,\hist_sum_data_3_reg[0]_i_110_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_56_n_0 ,\hist_sum_data_3[0]_i_57_n_0 ,\hist_sum_data_3[0]_i_58_n_0 ,\hist_sum_data_3[0]_i_59_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_110_n_4 ,\hist_sum_data_3_reg[0]_i_110_n_5 ,\hist_sum_data_3_reg[0]_i_110_n_6 ,\hist_sum_data_3_reg[0]_i_110_n_7 }),
        .S({\hist_sum_data_3[0]_i_152_n_0 ,\hist_sum_data_3[0]_i_153_n_0 ,\hist_sum_data_3[0]_i_154_n_0 ,\hist_sum_data_3[0]_i_155_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_12 
       (.CI(\hist_sum_data_3_reg[0]_i_28_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_12_n_0 ,\hist_sum_data_3_reg[0]_i_12_n_1 ,\hist_sum_data_3_reg[0]_i_12_n_2 ,\hist_sum_data_3_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_29_n_0 ,\hist_sum_data_3[0]_i_30_n_0 ,\hist_sum_data_3[0]_i_31_n_0 ,\hist_sum_data_3[0]_i_32_n_0 }),
        .O(\NLW_hist_sum_data_3_reg[0]_i_12_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_3[0]_i_33_n_0 ,\hist_sum_data_3[0]_i_34_n_0 ,\hist_sum_data_3[0]_i_35_n_0 ,\hist_sum_data_3[0]_i_36_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_138 
       (.CI(1'b0),
        .CO({\hist_sum_data_3_reg[0]_i_138_n_0 ,\hist_sum_data_3_reg[0]_i_138_n_1 ,\hist_sum_data_3_reg[0]_i_138_n_2 ,\hist_sum_data_3_reg[0]_i_138_n_3 }),
        .CYINIT(1'b0),
        .DI({hist_sum_data_2_reg__0[1:0],1'b0,1'b1}),
        .O({\NLW_hist_sum_data_3_reg[0]_i_138_O_UNCONNECTED [3:1],\hist_sum_data_3_reg[0]_i_138_n_7 }),
        .S({\hist_sum_data_3[0]_i_157_n_0 ,\hist_sum_data_3[0]_i_158_n_0 ,\hist_sum_data_3[0]_i_159_n_0 ,hist_sum_data_2_reg__0[0]}));
  CARRY4 \hist_sum_data_3_reg[0]_i_139 
       (.CI(1'b0),
        .CO({\hist_sum_data_3_reg[0]_i_139_n_0 ,\hist_sum_data_3_reg[0]_i_139_n_1 ,\hist_sum_data_3_reg[0]_i_139_n_2 ,\hist_sum_data_3_reg[0]_i_139_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_160_n_0 ,\hist_sum_data_3[0]_i_161_n_0 ,\hist_sum_data_3[0]_i_162_n_0 ,1'b0}),
        .O({\hist_sum_data_3_reg[0]_i_139_n_4 ,\hist_sum_data_3_reg[0]_i_139_n_5 ,\hist_sum_data_3_reg[0]_i_139_n_6 ,\hist_sum_data_3_reg[0]_i_139_n_7 }),
        .S({\hist_sum_data_3[0]_i_163_n_0 ,\hist_sum_data_3[0]_i_164_n_0 ,\hist_sum_data_3[0]_i_165_n_0 ,\hist_sum_data_3[0]_i_166_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_140 
       (.CI(\hist_sum_data_3_reg[0]_i_156_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_140_n_0 ,\hist_sum_data_3_reg[0]_i_140_n_1 ,\hist_sum_data_3_reg[0]_i_140_n_2 ,\hist_sum_data_3_reg[0]_i_140_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_91_n_0 ,\hist_sum_data_3[0]_i_92_n_0 ,\hist_sum_data_3[0]_i_93_n_0 ,\hist_sum_data_3[0]_i_94_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_140_n_4 ,\hist_sum_data_3_reg[0]_i_140_n_5 ,\hist_sum_data_3_reg[0]_i_140_n_6 ,\hist_sum_data_3_reg[0]_i_140_n_7 }),
        .S({\hist_sum_data_3[0]_i_167_n_0 ,\hist_sum_data_3[0]_i_168_n_0 ,\hist_sum_data_3[0]_i_169_n_0 ,\hist_sum_data_3[0]_i_170_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_156 
       (.CI(\hist_sum_data_3_reg[0]_i_138_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_156_n_0 ,\hist_sum_data_3_reg[0]_i_156_n_1 ,\hist_sum_data_3_reg[0]_i_156_n_2 ,\hist_sum_data_3_reg[0]_i_156_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_123_n_0 ,\hist_sum_data_3[0]_i_124_n_0 ,\hist_sum_data_3[0]_i_171_n_0 ,hist_sum_data_2_reg__0[2]}),
        .O({\hist_sum_data_3_reg[0]_i_156_n_4 ,\hist_sum_data_3_reg[0]_i_156_n_5 ,\hist_sum_data_3_reg[0]_i_156_n_6 ,\NLW_hist_sum_data_3_reg[0]_i_156_O_UNCONNECTED [0]}),
        .S({\hist_sum_data_3[0]_i_172_n_0 ,\hist_sum_data_3[0]_i_173_n_0 ,\hist_sum_data_3[0]_i_174_n_0 ,\hist_sum_data_3[0]_i_175_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_2 
       (.CI(\hist_sum_data_3_reg[0]_i_3_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_2_n_0 ,\hist_sum_data_3_reg[0]_i_2_n_1 ,\hist_sum_data_3_reg[0]_i_2_n_2 ,\hist_sum_data_3_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_4_n_0 ,\hist_sum_data_3[0]_i_5_n_0 ,\hist_sum_data_3[0]_i_6_n_0 ,\hist_sum_data_3[0]_i_7_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_2_n_4 ,\NLW_hist_sum_data_3_reg[0]_i_2_O_UNCONNECTED [2:0]}),
        .S({\hist_sum_data_3[0]_i_8_n_0 ,\hist_sum_data_3[0]_i_9_n_0 ,\hist_sum_data_3[0]_i_10_n_0 ,\hist_sum_data_3[0]_i_11_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_22 
       (.CI(\hist_sum_data_3_reg[0]_i_38_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_22_n_0 ,\hist_sum_data_3_reg[0]_i_22_n_1 ,\hist_sum_data_3_reg[0]_i_22_n_2 ,\hist_sum_data_3_reg[0]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[12]_i_29_n_0 ,\hist_sum_data_3[12]_i_30_n_0 ,\hist_sum_data_3[12]_i_31_n_0 ,\hist_sum_data_3[12]_i_32_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_22_n_4 ,\hist_sum_data_3_reg[0]_i_22_n_5 ,\hist_sum_data_3_reg[0]_i_22_n_6 ,\hist_sum_data_3_reg[0]_i_22_n_7 }),
        .S({\hist_sum_data_3[0]_i_44_n_0 ,\hist_sum_data_3[0]_i_45_n_0 ,\hist_sum_data_3[0]_i_46_n_0 ,\hist_sum_data_3[0]_i_47_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_23 
       (.CI(\hist_sum_data_3_reg[0]_i_39_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_23_n_0 ,\hist_sum_data_3_reg[0]_i_23_n_1 ,\hist_sum_data_3_reg[0]_i_23_n_2 ,\hist_sum_data_3_reg[0]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_48_n_0 ,\hist_sum_data_3[0]_i_49_n_0 ,\hist_sum_data_3[0]_i_50_n_0 ,\hist_sum_data_3[0]_i_51_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_23_n_4 ,\hist_sum_data_3_reg[0]_i_23_n_5 ,\hist_sum_data_3_reg[0]_i_23_n_6 ,\hist_sum_data_3_reg[0]_i_23_n_7 }),
        .S({\hist_sum_data_3[0]_i_52_n_0 ,\hist_sum_data_3[0]_i_53_n_0 ,\hist_sum_data_3[0]_i_54_n_0 ,\hist_sum_data_3[0]_i_55_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_24 
       (.CI(\hist_sum_data_3_reg[0]_i_40_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_24_n_0 ,\hist_sum_data_3_reg[0]_i_24_n_1 ,\hist_sum_data_3_reg[0]_i_24_n_2 ,\hist_sum_data_3_reg[0]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_56_n_0 ,\hist_sum_data_3[0]_i_57_n_0 ,\hist_sum_data_3[0]_i_58_n_0 ,\hist_sum_data_3[0]_i_59_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_24_n_4 ,\hist_sum_data_3_reg[0]_i_24_n_5 ,\hist_sum_data_3_reg[0]_i_24_n_6 ,\hist_sum_data_3_reg[0]_i_24_n_7 }),
        .S({\hist_sum_data_3[0]_i_60_n_0 ,\hist_sum_data_3[0]_i_61_n_0 ,\hist_sum_data_3[0]_i_62_n_0 ,\hist_sum_data_3[0]_i_63_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_28 
       (.CI(\hist_sum_data_3_reg[0]_i_64_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_28_n_0 ,\hist_sum_data_3_reg[0]_i_28_n_1 ,\hist_sum_data_3_reg[0]_i_28_n_2 ,\hist_sum_data_3_reg[0]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_65_n_0 ,\hist_sum_data_3[0]_i_66_n_0 ,\hist_sum_data_3[0]_i_67_n_0 ,\hist_sum_data_3[0]_i_68_n_0 }),
        .O(\NLW_hist_sum_data_3_reg[0]_i_28_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_3[0]_i_69_n_0 ,\hist_sum_data_3[0]_i_70_n_0 ,\hist_sum_data_3[0]_i_71_n_0 ,\hist_sum_data_3[0]_i_72_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_3 
       (.CI(\hist_sum_data_3_reg[0]_i_12_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_3_n_0 ,\hist_sum_data_3_reg[0]_i_3_n_1 ,\hist_sum_data_3_reg[0]_i_3_n_2 ,\hist_sum_data_3_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_13_n_0 ,\hist_sum_data_3[0]_i_14_n_0 ,\hist_sum_data_3[0]_i_15_n_0 ,\hist_sum_data_3[0]_i_16_n_0 }),
        .O(\NLW_hist_sum_data_3_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_3[0]_i_17_n_0 ,\hist_sum_data_3[0]_i_18_n_0 ,\hist_sum_data_3[0]_i_19_n_0 ,\hist_sum_data_3[0]_i_20_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_38 
       (.CI(\hist_sum_data_3_reg[0]_i_74_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_38_n_0 ,\hist_sum_data_3_reg[0]_i_38_n_1 ,\hist_sum_data_3_reg[0]_i_38_n_2 ,\hist_sum_data_3_reg[0]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[8]_i_38_n_0 ,\hist_sum_data_3[8]_i_39_n_0 ,\hist_sum_data_3[8]_i_40_n_0 ,\hist_sum_data_3[8]_i_41_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_38_n_4 ,\hist_sum_data_3_reg[0]_i_38_n_5 ,\hist_sum_data_3_reg[0]_i_38_n_6 ,\hist_sum_data_3_reg[0]_i_38_n_7 }),
        .S({\hist_sum_data_3[0]_i_79_n_0 ,\hist_sum_data_3[0]_i_80_n_0 ,\hist_sum_data_3[0]_i_81_n_0 ,\hist_sum_data_3[0]_i_82_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_39 
       (.CI(\hist_sum_data_3_reg[0]_i_75_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_39_n_0 ,\hist_sum_data_3_reg[0]_i_39_n_1 ,\hist_sum_data_3_reg[0]_i_39_n_2 ,\hist_sum_data_3_reg[0]_i_39_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_83_n_0 ,\hist_sum_data_3[0]_i_84_n_0 ,\hist_sum_data_3[0]_i_85_n_0 ,\hist_sum_data_3[0]_i_86_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_39_n_4 ,\hist_sum_data_3_reg[0]_i_39_n_5 ,\hist_sum_data_3_reg[0]_i_39_n_6 ,\hist_sum_data_3_reg[0]_i_39_n_7 }),
        .S({\hist_sum_data_3[0]_i_87_n_0 ,\hist_sum_data_3[0]_i_88_n_0 ,\hist_sum_data_3[0]_i_89_n_0 ,\hist_sum_data_3[0]_i_90_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_40 
       (.CI(\hist_sum_data_3_reg[0]_i_76_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_40_n_0 ,\hist_sum_data_3_reg[0]_i_40_n_1 ,\hist_sum_data_3_reg[0]_i_40_n_2 ,\hist_sum_data_3_reg[0]_i_40_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_91_n_0 ,\hist_sum_data_3[0]_i_92_n_0 ,\hist_sum_data_3[0]_i_93_n_0 ,\hist_sum_data_3[0]_i_94_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_40_n_4 ,\hist_sum_data_3_reg[0]_i_40_n_5 ,\hist_sum_data_3_reg[0]_i_40_n_6 ,\hist_sum_data_3_reg[0]_i_40_n_7 }),
        .S({\hist_sum_data_3[0]_i_95_n_0 ,\hist_sum_data_3[0]_i_96_n_0 ,\hist_sum_data_3[0]_i_97_n_0 ,\hist_sum_data_3[0]_i_98_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_64 
       (.CI(\hist_sum_data_3_reg[0]_i_99_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_64_n_0 ,\hist_sum_data_3_reg[0]_i_64_n_1 ,\hist_sum_data_3_reg[0]_i_64_n_2 ,\hist_sum_data_3_reg[0]_i_64_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_100_n_0 ,\hist_sum_data_3[0]_i_101_n_0 ,\hist_sum_data_3[0]_i_102_n_0 ,\hist_sum_data_3[0]_i_103_n_0 }),
        .O(\NLW_hist_sum_data_3_reg[0]_i_64_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_3[0]_i_104_n_0 ,\hist_sum_data_3[0]_i_105_n_0 ,\hist_sum_data_3[0]_i_106_n_0 ,\hist_sum_data_3[0]_i_107_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_74 
       (.CI(\hist_sum_data_3_reg[0]_i_110_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_74_n_0 ,\hist_sum_data_3_reg[0]_i_74_n_1 ,\hist_sum_data_3_reg[0]_i_74_n_2 ,\hist_sum_data_3_reg[0]_i_74_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[4]_i_30_n_0 ,\hist_sum_data_3[4]_i_31_n_0 ,\hist_sum_data_3[4]_i_32_n_0 ,\hist_sum_data_3[4]_i_33_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_74_n_4 ,\hist_sum_data_3_reg[0]_i_74_n_5 ,\hist_sum_data_3_reg[0]_i_74_n_6 ,\hist_sum_data_3_reg[0]_i_74_n_7 }),
        .S({\hist_sum_data_3[0]_i_111_n_0 ,\hist_sum_data_3[0]_i_112_n_0 ,\hist_sum_data_3[0]_i_113_n_0 ,\hist_sum_data_3[0]_i_114_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_75 
       (.CI(\hist_sum_data_3_reg[0]_i_109_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_75_n_0 ,\hist_sum_data_3_reg[0]_i_75_n_1 ,\hist_sum_data_3_reg[0]_i_75_n_2 ,\hist_sum_data_3_reg[0]_i_75_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_115_n_0 ,\hist_sum_data_3[0]_i_116_n_0 ,\hist_sum_data_3[0]_i_117_n_0 ,\hist_sum_data_3[0]_i_118_n_0 }),
        .O({\hist_sum_data_3_reg[0]_i_75_n_4 ,\hist_sum_data_3_reg[0]_i_75_n_5 ,\hist_sum_data_3_reg[0]_i_75_n_6 ,\hist_sum_data_3_reg[0]_i_75_n_7 }),
        .S({\hist_sum_data_3[0]_i_119_n_0 ,\hist_sum_data_3[0]_i_120_n_0 ,\hist_sum_data_3[0]_i_121_n_0 ,\hist_sum_data_3[0]_i_122_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_76 
       (.CI(\hist_sum_data_3_reg[0]_i_108_n_0 ),
        .CO({\hist_sum_data_3_reg[0]_i_76_n_0 ,\hist_sum_data_3_reg[0]_i_76_n_1 ,\hist_sum_data_3_reg[0]_i_76_n_2 ,\hist_sum_data_3_reg[0]_i_76_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_123_n_0 ,\hist_sum_data_3[0]_i_124_n_0 ,\hist_sum_data_3[0]_i_125_n_0 ,hist_sum_data_2_reg__0[2]}),
        .O({\hist_sum_data_3_reg[0]_i_76_n_4 ,\hist_sum_data_3_reg[0]_i_76_n_5 ,\hist_sum_data_3_reg[0]_i_76_n_6 ,\hist_sum_data_3_reg[0]_i_76_n_7 }),
        .S({\hist_sum_data_3[0]_i_126_n_0 ,\hist_sum_data_3[0]_i_127_n_0 ,\hist_sum_data_3[0]_i_128_n_0 ,\hist_sum_data_3[0]_i_129_n_0 }));
  CARRY4 \hist_sum_data_3_reg[0]_i_99 
       (.CI(1'b0),
        .CO({\hist_sum_data_3_reg[0]_i_99_n_0 ,\hist_sum_data_3_reg[0]_i_99_n_1 ,\hist_sum_data_3_reg[0]_i_99_n_2 ,\hist_sum_data_3_reg[0]_i_99_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[0]_i_130_n_0 ,\hist_sum_data_3[0]_i_131_n_0 ,\hist_sum_data_3[0]_i_132_n_0 ,\hist_sum_data_3[0]_i_133_n_0 }),
        .O(\NLW_hist_sum_data_3_reg[0]_i_99_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_3[0]_i_134_n_0 ,\hist_sum_data_3[0]_i_135_n_0 ,\hist_sum_data_3[0]_i_136_n_0 ,\hist_sum_data_3[0]_i_137_n_0 }));
  FDCE \hist_sum_data_3_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[10]_i_1_n_0 ),
        .Q(hist_sum_data_3[10]));
  FDCE \hist_sum_data_3_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[11]_i_1_n_0 ),
        .Q(hist_sum_data_3[11]));
  CARRY4 \hist_sum_data_3_reg[11]_i_2 
       (.CI(\hist_sum_data_3_reg[7]_i_2_n_0 ),
        .CO({\hist_sum_data_3_reg[11]_i_2_n_0 ,\hist_sum_data_3_reg[11]_i_2_n_1 ,\hist_sum_data_3_reg[11]_i_2_n_2 ,\hist_sum_data_3_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hist_sum_data_3_reg[11]_i_2_n_4 ,\hist_sum_data_3_reg[11]_i_2_n_5 ,\hist_sum_data_3_reg[11]_i_2_n_6 ,\hist_sum_data_3_reg[11]_i_2_n_7 }),
        .S({\hist_sum_data_3_reg[12]_i_2_n_5 ,\hist_sum_data_3_reg[12]_i_2_n_6 ,\hist_sum_data_3_reg[12]_i_2_n_7 ,\hist_sum_data_3_reg[8]_i_2_n_4 }));
  FDCE \hist_sum_data_3_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[12]_i_1_n_0 ),
        .Q(hist_sum_data_3[12]));
  CARRY4 \hist_sum_data_3_reg[12]_i_12 
       (.CI(\hist_sum_data_3_reg[8]_i_13_n_0 ),
        .CO({\hist_sum_data_3_reg[12]_i_12_n_0 ,\hist_sum_data_3_reg[12]_i_12_n_1 ,\hist_sum_data_3_reg[12]_i_12_n_2 ,\hist_sum_data_3_reg[12]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[12]_i_21_n_0 ,\hist_sum_data_3[12]_i_22_n_0 ,\hist_sum_data_3[12]_i_23_n_0 ,\hist_sum_data_3[12]_i_24_n_0 }),
        .O({\hist_sum_data_3_reg[12]_i_12_n_4 ,\hist_sum_data_3_reg[12]_i_12_n_5 ,\hist_sum_data_3_reg[12]_i_12_n_6 ,\hist_sum_data_3_reg[12]_i_12_n_7 }),
        .S({\hist_sum_data_3[12]_i_25_n_0 ,\hist_sum_data_3[12]_i_26_n_0 ,\hist_sum_data_3[12]_i_27_n_0 ,\hist_sum_data_3[12]_i_28_n_0 }));
  CARRY4 \hist_sum_data_3_reg[12]_i_13 
       (.CI(\hist_sum_data_3_reg[8]_i_14_n_0 ),
        .CO({\hist_sum_data_3_reg[12]_i_13_n_0 ,\hist_sum_data_3_reg[12]_i_13_n_1 ,\hist_sum_data_3_reg[12]_i_13_n_2 ,\hist_sum_data_3_reg[12]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[12]_i_29_n_0 ,\hist_sum_data_3[12]_i_30_n_0 ,\hist_sum_data_3[12]_i_31_n_0 ,\hist_sum_data_3[12]_i_32_n_0 }),
        .O({\hist_sum_data_3_reg[12]_i_13_n_4 ,\hist_sum_data_3_reg[12]_i_13_n_5 ,\hist_sum_data_3_reg[12]_i_13_n_6 ,\hist_sum_data_3_reg[12]_i_13_n_7 }),
        .S({\hist_sum_data_3[12]_i_33_n_0 ,\hist_sum_data_3[12]_i_34_n_0 ,\hist_sum_data_3[12]_i_35_n_0 ,\hist_sum_data_3[12]_i_36_n_0 }));
  CARRY4 \hist_sum_data_3_reg[12]_i_2 
       (.CI(\hist_sum_data_3_reg[8]_i_2_n_0 ),
        .CO({\hist_sum_data_3_reg[12]_i_2_n_0 ,\hist_sum_data_3_reg[12]_i_2_n_1 ,\hist_sum_data_3_reg[12]_i_2_n_2 ,\hist_sum_data_3_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[12]_i_3_n_0 ,\hist_sum_data_3[12]_i_4_n_0 ,\hist_sum_data_3[12]_i_5_n_0 ,\hist_sum_data_3[12]_i_6_n_0 }),
        .O({\hist_sum_data_3_reg[12]_i_2_n_4 ,\hist_sum_data_3_reg[12]_i_2_n_5 ,\hist_sum_data_3_reg[12]_i_2_n_6 ,\hist_sum_data_3_reg[12]_i_2_n_7 }),
        .S({\hist_sum_data_3[12]_i_7_n_0 ,\hist_sum_data_3[12]_i_8_n_0 ,\hist_sum_data_3[12]_i_9_n_0 ,\hist_sum_data_3[12]_i_10_n_0 }));
  FDCE \hist_sum_data_3_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[13]_i_1_n_0 ),
        .Q(hist_sum_data_3[13]));
  FDCE \hist_sum_data_3_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[14]_i_1_n_0 ),
        .Q(hist_sum_data_3[14]));
  FDCE \hist_sum_data_3_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[15]_i_1_n_0 ),
        .Q(hist_sum_data_3[15]));
  CARRY4 \hist_sum_data_3_reg[15]_i_2 
       (.CI(\hist_sum_data_3_reg[11]_i_2_n_0 ),
        .CO({\hist_sum_data_3_reg[15]_i_2_n_0 ,\hist_sum_data_3_reg[15]_i_2_n_1 ,\hist_sum_data_3_reg[15]_i_2_n_2 ,\hist_sum_data_3_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hist_sum_data_3_reg[15]_i_2_n_4 ,\hist_sum_data_3_reg[15]_i_2_n_5 ,\hist_sum_data_3_reg[15]_i_2_n_6 ,\hist_sum_data_3_reg[15]_i_2_n_7 }),
        .S({\hist_sum_data_3_reg[16]_i_2_n_5 ,\hist_sum_data_3_reg[16]_i_2_n_6 ,\hist_sum_data_3_reg[16]_i_2_n_7 ,\hist_sum_data_3_reg[12]_i_2_n_4 }));
  FDCE \hist_sum_data_3_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[16]_i_1_n_0 ),
        .Q(hist_sum_data_3[16]));
  CARRY4 \hist_sum_data_3_reg[16]_i_11 
       (.CI(\hist_sum_data_3_reg[12]_i_13_n_0 ),
        .CO({\hist_sum_data_3_reg[16]_i_11_n_0 ,\hist_sum_data_3_reg[16]_i_11_n_1 ,\hist_sum_data_3_reg[16]_i_11_n_2 ,\hist_sum_data_3_reg[16]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[16]_i_18_n_0 ,\hist_sum_data_3[16]_i_19_n_0 ,\hist_sum_data_3[16]_i_20_n_0 ,\hist_sum_data_3[16]_i_21_n_0 }),
        .O({\hist_sum_data_3_reg[16]_i_11_n_4 ,\hist_sum_data_3_reg[16]_i_11_n_5 ,\hist_sum_data_3_reg[16]_i_11_n_6 ,\hist_sum_data_3_reg[16]_i_11_n_7 }),
        .S({\hist_sum_data_3[16]_i_22_n_0 ,\hist_sum_data_3[16]_i_23_n_0 ,\hist_sum_data_3[16]_i_24_n_0 ,\hist_sum_data_3[16]_i_25_n_0 }));
  CARRY4 \hist_sum_data_3_reg[16]_i_2 
       (.CI(\hist_sum_data_3_reg[12]_i_2_n_0 ),
        .CO({\hist_sum_data_3_reg[16]_i_2_n_0 ,\hist_sum_data_3_reg[16]_i_2_n_1 ,\hist_sum_data_3_reg[16]_i_2_n_2 ,\hist_sum_data_3_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[16]_i_3_n_0 ,\hist_sum_data_3[16]_i_4_n_0 ,\hist_sum_data_3[16]_i_5_n_0 ,\hist_sum_data_3[16]_i_6_n_0 }),
        .O({\hist_sum_data_3_reg[16]_i_2_n_4 ,\hist_sum_data_3_reg[16]_i_2_n_5 ,\hist_sum_data_3_reg[16]_i_2_n_6 ,\hist_sum_data_3_reg[16]_i_2_n_7 }),
        .S({\hist_sum_data_3[16]_i_7_n_0 ,\hist_sum_data_3[16]_i_8_n_0 ,\hist_sum_data_3[16]_i_9_n_0 ,\hist_sum_data_3[16]_i_10_n_0 }));
  FDCE \hist_sum_data_3_reg[17] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[17]_i_1_n_0 ),
        .Q(hist_sum_data_3[17]));
  FDCE \hist_sum_data_3_reg[18] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[18]_i_1_n_0 ),
        .Q(hist_sum_data_3[18]));
  FDCE \hist_sum_data_3_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[19]_i_1_n_0 ),
        .Q(hist_sum_data_3[19]));
  CARRY4 \hist_sum_data_3_reg[19]_i_12 
       (.CI(\hist_sum_data_3_reg[19]_i_24_n_0 ),
        .CO({\hist_sum_data_3_reg[19]_i_12_n_0 ,\hist_sum_data_3_reg[19]_i_12_n_1 ,\hist_sum_data_3_reg[19]_i_12_n_2 ,\hist_sum_data_3_reg[19]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[19]_i_25_n_0 ,\hist_sum_data_3[19]_i_26_n_0 ,\hist_sum_data_3[19]_i_27_n_0 ,\hist_sum_data_3[19]_i_28_n_0 }),
        .O(\NLW_hist_sum_data_3_reg[19]_i_12_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_3[19]_i_29_n_0 ,\hist_sum_data_3[19]_i_30_n_0 ,\hist_sum_data_3[19]_i_31_n_0 ,\hist_sum_data_3[19]_i_32_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_17 
       (.CI(\hist_sum_data_3_reg[19]_i_33_n_0 ),
        .CO({\hist_sum_data_3_reg[19]_i_17_n_0 ,\hist_sum_data_3_reg[19]_i_17_n_1 ,\hist_sum_data_3_reg[19]_i_17_n_2 ,\hist_sum_data_3_reg[19]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\hist_sum_data_3_reg[19]_i_2_n_5 ,\hist_sum_data_3_reg[19]_i_2_n_6 ,\hist_sum_data_3_reg[19]_i_2_n_7 }),
        .O({\hist_sum_data_3_reg[19]_i_17_n_4 ,\hist_sum_data_3_reg[19]_i_17_n_5 ,\hist_sum_data_3_reg[19]_i_17_n_6 ,\hist_sum_data_3_reg[19]_i_17_n_7 }),
        .S({\hist_sum_data_3_reg[19]_i_2_n_6 ,\hist_sum_data_3[19]_i_34_n_0 ,\hist_sum_data_3[19]_i_35_n_0 ,\hist_sum_data_3[19]_i_36_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_18 
       (.CI(\hist_sum_data_3_reg[12]_i_12_n_0 ),
        .CO({\NLW_hist_sum_data_3_reg[19]_i_18_CO_UNCONNECTED [3],\hist_sum_data_3_reg[19]_i_18_n_1 ,\NLW_hist_sum_data_3_reg[19]_i_18_CO_UNCONNECTED [1],\hist_sum_data_3_reg[19]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\hist_sum_data_3[19]_i_37_n_0 ,\hist_sum_data_3[19]_i_38_n_0 }),
        .O({\NLW_hist_sum_data_3_reg[19]_i_18_O_UNCONNECTED [3:2],\hist_sum_data_3_reg[19]_i_18_n_6 ,\hist_sum_data_3_reg[19]_i_18_n_7 }),
        .S({1'b0,1'b1,\hist_sum_data_3[19]_i_39_n_0 ,\hist_sum_data_3[19]_i_40_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_19 
       (.CI(\hist_sum_data_3_reg[16]_i_11_n_0 ),
        .CO({\hist_sum_data_3_reg[19]_i_19_n_0 ,\hist_sum_data_3_reg[19]_i_19_n_1 ,\hist_sum_data_3_reg[19]_i_19_n_2 ,\hist_sum_data_3_reg[19]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[19]_i_41_n_0 ,\hist_sum_data_3[19]_i_42_n_0 ,\hist_sum_data_3[19]_i_43_n_0 ,\hist_sum_data_3[19]_i_44_n_0 }),
        .O({\hist_sum_data_3_reg[19]_i_19_n_4 ,\hist_sum_data_3_reg[19]_i_19_n_5 ,\hist_sum_data_3_reg[19]_i_19_n_6 ,\hist_sum_data_3_reg[19]_i_19_n_7 }),
        .S({\hist_sum_data_3[19]_i_45_n_0 ,\hist_sum_data_3[19]_i_46_n_0 ,\hist_sum_data_3[19]_i_47_n_0 ,\hist_sum_data_3[19]_i_48_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_2 
       (.CI(\hist_sum_data_3_reg[16]_i_2_n_0 ),
        .CO({\NLW_hist_sum_data_3_reg[19]_i_2_CO_UNCONNECTED [3:2],\hist_sum_data_3_reg[19]_i_2_n_2 ,\hist_sum_data_3_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\hist_sum_data_3[19]_i_7_n_0 ,\hist_sum_data_3[19]_i_8_n_0 }),
        .O({\NLW_hist_sum_data_3_reg[19]_i_2_O_UNCONNECTED [3],\hist_sum_data_3_reg[19]_i_2_n_5 ,\hist_sum_data_3_reg[19]_i_2_n_6 ,\hist_sum_data_3_reg[19]_i_2_n_7 }),
        .S({1'b0,\hist_sum_data_3[19]_i_9_n_0 ,\hist_sum_data_3[19]_i_10_n_0 ,\hist_sum_data_3[19]_i_11_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_20 
       (.CI(\hist_sum_data_3_reg[8]_i_12_n_0 ),
        .CO({\NLW_hist_sum_data_3_reg[19]_i_20_CO_UNCONNECTED [3:1],\hist_sum_data_3_reg[19]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_hist_sum_data_3_reg[19]_i_20_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \hist_sum_data_3_reg[19]_i_22 
       (.CI(\hist_sum_data_3_reg[19]_i_19_n_0 ),
        .CO({\NLW_hist_sum_data_3_reg[19]_i_22_CO_UNCONNECTED [3:1],\hist_sum_data_3_reg[19]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_hist_sum_data_3_reg[19]_i_22_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \hist_sum_data_3_reg[19]_i_24 
       (.CI(\hist_sum_data_3_reg[19]_i_49_n_0 ),
        .CO({\hist_sum_data_3_reg[19]_i_24_n_0 ,\hist_sum_data_3_reg[19]_i_24_n_1 ,\hist_sum_data_3_reg[19]_i_24_n_2 ,\hist_sum_data_3_reg[19]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[19]_i_50_n_0 ,\hist_sum_data_3[19]_i_51_n_0 ,\hist_sum_data_3[19]_i_52_n_0 ,\hist_sum_data_3[19]_i_53_n_0 }),
        .O(\NLW_hist_sum_data_3_reg[19]_i_24_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_3[19]_i_54_n_0 ,\hist_sum_data_3[19]_i_55_n_0 ,\hist_sum_data_3[19]_i_56_n_0 ,\hist_sum_data_3[19]_i_57_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_3 
       (.CI(\hist_sum_data_3_reg[19]_i_12_n_0 ),
        .CO({\NLW_hist_sum_data_3_reg[19]_i_3_CO_UNCONNECTED [3:2],\hist_sum_data_3_reg[19]_i_3_n_2 ,\hist_sum_data_3_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\hist_sum_data_3[19]_i_13_n_0 ,\hist_sum_data_3[19]_i_14_n_0 }),
        .O(\NLW_hist_sum_data_3_reg[19]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\hist_sum_data_3[19]_i_15_n_0 ,\hist_sum_data_3[19]_i_16_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_33 
       (.CI(\hist_sum_data_3_reg[19]_i_58_n_0 ),
        .CO({\hist_sum_data_3_reg[19]_i_33_n_0 ,\hist_sum_data_3_reg[19]_i_33_n_1 ,\hist_sum_data_3_reg[19]_i_33_n_2 ,\hist_sum_data_3_reg[19]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3_reg[16]_i_2_n_4 ,\hist_sum_data_3_reg[16]_i_2_n_5 ,\hist_sum_data_3_reg[16]_i_2_n_6 ,\hist_sum_data_3_reg[16]_i_2_n_7 }),
        .O({\hist_sum_data_3_reg[19]_i_33_n_4 ,\hist_sum_data_3_reg[19]_i_33_n_5 ,\hist_sum_data_3_reg[19]_i_33_n_6 ,\hist_sum_data_3_reg[19]_i_33_n_7 }),
        .S({\hist_sum_data_3[19]_i_59_n_0 ,\hist_sum_data_3[19]_i_60_n_0 ,\hist_sum_data_3[19]_i_61_n_0 ,\hist_sum_data_3[19]_i_62_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_49 
       (.CI(\hist_sum_data_3_reg[19]_i_63_n_0 ),
        .CO({\hist_sum_data_3_reg[19]_i_49_n_0 ,\hist_sum_data_3_reg[19]_i_49_n_1 ,\hist_sum_data_3_reg[19]_i_49_n_2 ,\hist_sum_data_3_reg[19]_i_49_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[19]_i_64_n_0 ,\hist_sum_data_3[19]_i_65_n_0 ,\hist_sum_data_3[19]_i_66_n_0 ,\hist_sum_data_3[19]_i_67_n_0 }),
        .O(\NLW_hist_sum_data_3_reg[19]_i_49_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_3[19]_i_68_n_0 ,\hist_sum_data_3[19]_i_69_n_0 ,\hist_sum_data_3[19]_i_70_n_0 ,\hist_sum_data_3[19]_i_71_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_5 
       (.CI(\hist_sum_data_3_reg[19]_i_17_n_0 ),
        .CO(\NLW_hist_sum_data_3_reg[19]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_hist_sum_data_3_reg[19]_i_5_O_UNCONNECTED [3:1],\hist_sum_data_3_reg[19]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b0,\hist_sum_data_3_reg[19]_i_2_n_5 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_58 
       (.CI(\hist_sum_data_3_reg[19]_i_72_n_0 ),
        .CO({\hist_sum_data_3_reg[19]_i_58_n_0 ,\hist_sum_data_3_reg[19]_i_58_n_1 ,\hist_sum_data_3_reg[19]_i_58_n_2 ,\hist_sum_data_3_reg[19]_i_58_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3_reg[12]_i_2_n_4 ,\hist_sum_data_3_reg[12]_i_2_n_5 ,\hist_sum_data_3_reg[12]_i_2_n_6 ,\hist_sum_data_3_reg[12]_i_2_n_7 }),
        .O({\hist_sum_data_3_reg[19]_i_58_n_4 ,\hist_sum_data_3_reg[19]_i_58_n_5 ,\hist_sum_data_3_reg[19]_i_58_n_6 ,\hist_sum_data_3_reg[19]_i_58_n_7 }),
        .S({\hist_sum_data_3[19]_i_73_n_0 ,\hist_sum_data_3[19]_i_74_n_0 ,\hist_sum_data_3[19]_i_75_n_0 ,\hist_sum_data_3[19]_i_76_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_6 
       (.CI(\hist_sum_data_3_reg[15]_i_2_n_0 ),
        .CO({\NLW_hist_sum_data_3_reg[19]_i_6_CO_UNCONNECTED [3],\hist_sum_data_3_reg[19]_i_6_n_1 ,\hist_sum_data_3_reg[19]_i_6_n_2 ,\hist_sum_data_3_reg[19]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hist_sum_data_3_reg[19]_i_6_n_4 ,\hist_sum_data_3_reg[19]_i_6_n_5 ,\hist_sum_data_3_reg[19]_i_6_n_6 ,\hist_sum_data_3_reg[19]_i_6_n_7 }),
        .S({\hist_sum_data_3_reg[19]_i_2_n_5 ,\hist_sum_data_3_reg[19]_i_2_n_6 ,\hist_sum_data_3_reg[19]_i_2_n_7 ,\hist_sum_data_3_reg[16]_i_2_n_4 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_63 
       (.CI(\hist_sum_data_3_reg[19]_i_77_n_0 ),
        .CO({\hist_sum_data_3_reg[19]_i_63_n_0 ,\hist_sum_data_3_reg[19]_i_63_n_1 ,\hist_sum_data_3_reg[19]_i_63_n_2 ,\hist_sum_data_3_reg[19]_i_63_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[19]_i_78_n_0 ,\hist_sum_data_3[19]_i_79_n_0 ,\hist_sum_data_3[19]_i_80_n_0 ,\hist_sum_data_3[19]_i_81_n_0 }),
        .O(\NLW_hist_sum_data_3_reg[19]_i_63_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_3[19]_i_82_n_0 ,\hist_sum_data_3[19]_i_83_n_0 ,\hist_sum_data_3[19]_i_84_n_0 ,\hist_sum_data_3[19]_i_85_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_72 
       (.CI(\hist_sum_data_3_reg[19]_i_86_n_0 ),
        .CO({\hist_sum_data_3_reg[19]_i_72_n_0 ,\hist_sum_data_3_reg[19]_i_72_n_1 ,\hist_sum_data_3_reg[19]_i_72_n_2 ,\hist_sum_data_3_reg[19]_i_72_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3_reg[8]_i_2_n_4 ,\hist_sum_data_3_reg[8]_i_2_n_5 ,\hist_sum_data_3_reg[8]_i_2_n_6 ,\hist_sum_data_3_reg[8]_i_2_n_7 }),
        .O({\hist_sum_data_3_reg[19]_i_72_n_4 ,\hist_sum_data_3_reg[19]_i_72_n_5 ,\hist_sum_data_3_reg[19]_i_72_n_6 ,\hist_sum_data_3_reg[19]_i_72_n_7 }),
        .S({\hist_sum_data_3[19]_i_87_n_0 ,\hist_sum_data_3[19]_i_88_n_0 ,\hist_sum_data_3[19]_i_89_n_0 ,\hist_sum_data_3[19]_i_90_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_77 
       (.CI(1'b0),
        .CO({\hist_sum_data_3_reg[19]_i_77_n_0 ,\hist_sum_data_3_reg[19]_i_77_n_1 ,\hist_sum_data_3_reg[19]_i_77_n_2 ,\hist_sum_data_3_reg[19]_i_77_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[19]_i_91_n_0 ,\hist_sum_data_3[19]_i_92_n_0 ,\hist_sum_data_3[19]_i_93_n_0 ,1'b0}),
        .O(\NLW_hist_sum_data_3_reg[19]_i_77_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_3[19]_i_94_n_0 ,\hist_sum_data_3[19]_i_95_n_0 ,\hist_sum_data_3[19]_i_96_n_0 ,\hist_sum_data_3[19]_i_97_n_0 }));
  CARRY4 \hist_sum_data_3_reg[19]_i_86 
       (.CI(1'b0),
        .CO({\hist_sum_data_3_reg[19]_i_86_n_0 ,\hist_sum_data_3_reg[19]_i_86_n_1 ,\hist_sum_data_3_reg[19]_i_86_n_2 ,\hist_sum_data_3_reg[19]_i_86_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3_reg[4]_i_2_n_4 ,\hist_sum_data_3_reg[4]_i_2_n_5 ,\hist_sum_data_3_reg[4]_i_2_n_6 ,1'b0}),
        .O({\hist_sum_data_3_reg[19]_i_86_n_4 ,\hist_sum_data_3_reg[19]_i_86_n_5 ,\hist_sum_data_3_reg[19]_i_86_n_6 ,\hist_sum_data_3_reg[19]_i_86_n_7 }),
        .S({\hist_sum_data_3[19]_i_98_n_0 ,\hist_sum_data_3[19]_i_99_n_0 ,\hist_sum_data_3[19]_i_100_n_0 ,\hist_sum_data_3_reg[4]_i_2_n_7 }));
  FDCE \hist_sum_data_3_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[1]_i_1_n_0 ),
        .Q(hist_sum_data_3[1]));
  FDCE \hist_sum_data_3_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[2]_i_1_n_0 ),
        .Q(hist_sum_data_3[2]));
  FDCE \hist_sum_data_3_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[3]_i_1_n_0 ),
        .Q(hist_sum_data_3[3]));
  CARRY4 \hist_sum_data_3_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\hist_sum_data_3_reg[3]_i_2_n_0 ,\hist_sum_data_3_reg[3]_i_2_n_1 ,\hist_sum_data_3_reg[3]_i_2_n_2 ,\hist_sum_data_3_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hist_sum_data_3_reg[3]_i_2_n_4 ,\hist_sum_data_3_reg[3]_i_2_n_5 ,\hist_sum_data_3_reg[3]_i_2_n_6 ,\hist_sum_data_3_reg[3]_i_2_n_7 }),
        .S({\hist_sum_data_3_reg[4]_i_2_n_5 ,\hist_sum_data_3_reg[4]_i_2_n_6 ,\hist_sum_data_3_reg[4]_i_2_n_7 ,\hist_sum_data_3[3]_i_3_n_0 }));
  FDCE \hist_sum_data_3_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[4]_i_1_n_0 ),
        .Q(hist_sum_data_3[4]));
  CARRY4 \hist_sum_data_3_reg[4]_i_12 
       (.CI(\hist_sum_data_3_reg[0]_i_22_n_0 ),
        .CO({\hist_sum_data_3_reg[4]_i_12_n_0 ,\hist_sum_data_3_reg[4]_i_12_n_1 ,\hist_sum_data_3_reg[4]_i_12_n_2 ,\hist_sum_data_3_reg[4]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[16]_i_18_n_0 ,\hist_sum_data_3[16]_i_19_n_0 ,\hist_sum_data_3[16]_i_20_n_0 ,\hist_sum_data_3[16]_i_21_n_0 }),
        .O({\hist_sum_data_3_reg[4]_i_12_n_4 ,\hist_sum_data_3_reg[4]_i_12_n_5 ,\hist_sum_data_3_reg[4]_i_12_n_6 ,\hist_sum_data_3_reg[4]_i_12_n_7 }),
        .S({\hist_sum_data_3[4]_i_18_n_0 ,\hist_sum_data_3[4]_i_19_n_0 ,\hist_sum_data_3[4]_i_20_n_0 ,\hist_sum_data_3[4]_i_21_n_0 }));
  CARRY4 \hist_sum_data_3_reg[4]_i_13 
       (.CI(\hist_sum_data_3_reg[0]_i_23_n_0 ),
        .CO({\hist_sum_data_3_reg[4]_i_13_n_0 ,\hist_sum_data_3_reg[4]_i_13_n_1 ,\hist_sum_data_3_reg[4]_i_13_n_2 ,\hist_sum_data_3_reg[4]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[4]_i_22_n_0 ,\hist_sum_data_3[4]_i_23_n_0 ,\hist_sum_data_3[4]_i_24_n_0 ,\hist_sum_data_3[4]_i_25_n_0 }),
        .O({\hist_sum_data_3_reg[4]_i_13_n_4 ,\hist_sum_data_3_reg[4]_i_13_n_5 ,\hist_sum_data_3_reg[4]_i_13_n_6 ,\hist_sum_data_3_reg[4]_i_13_n_7 }),
        .S({\hist_sum_data_3[4]_i_26_n_0 ,\hist_sum_data_3[4]_i_27_n_0 ,\hist_sum_data_3[4]_i_28_n_0 ,\hist_sum_data_3[4]_i_29_n_0 }));
  CARRY4 \hist_sum_data_3_reg[4]_i_14 
       (.CI(\hist_sum_data_3_reg[0]_i_24_n_0 ),
        .CO({\hist_sum_data_3_reg[4]_i_14_n_0 ,\hist_sum_data_3_reg[4]_i_14_n_1 ,\hist_sum_data_3_reg[4]_i_14_n_2 ,\hist_sum_data_3_reg[4]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[4]_i_30_n_0 ,\hist_sum_data_3[4]_i_31_n_0 ,\hist_sum_data_3[4]_i_32_n_0 ,\hist_sum_data_3[4]_i_33_n_0 }),
        .O({\hist_sum_data_3_reg[4]_i_14_n_4 ,\hist_sum_data_3_reg[4]_i_14_n_5 ,\hist_sum_data_3_reg[4]_i_14_n_6 ,\hist_sum_data_3_reg[4]_i_14_n_7 }),
        .S({\hist_sum_data_3[4]_i_34_n_0 ,\hist_sum_data_3[4]_i_35_n_0 ,\hist_sum_data_3[4]_i_36_n_0 ,\hist_sum_data_3[4]_i_37_n_0 }));
  CARRY4 \hist_sum_data_3_reg[4]_i_2 
       (.CI(\hist_sum_data_3_reg[0]_i_2_n_0 ),
        .CO({\hist_sum_data_3_reg[4]_i_2_n_0 ,\hist_sum_data_3_reg[4]_i_2_n_1 ,\hist_sum_data_3_reg[4]_i_2_n_2 ,\hist_sum_data_3_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[4]_i_3_n_0 ,\hist_sum_data_3[4]_i_4_n_0 ,\hist_sum_data_3[4]_i_5_n_0 ,\hist_sum_data_3[4]_i_6_n_0 }),
        .O({\hist_sum_data_3_reg[4]_i_2_n_4 ,\hist_sum_data_3_reg[4]_i_2_n_5 ,\hist_sum_data_3_reg[4]_i_2_n_6 ,\hist_sum_data_3_reg[4]_i_2_n_7 }),
        .S({\hist_sum_data_3[4]_i_7_n_0 ,\hist_sum_data_3[4]_i_8_n_0 ,\hist_sum_data_3[4]_i_9_n_0 ,\hist_sum_data_3[4]_i_10_n_0 }));
  FDCE \hist_sum_data_3_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[5]_i_1_n_0 ),
        .Q(hist_sum_data_3[5]));
  FDCE \hist_sum_data_3_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[6]_i_1_n_0 ),
        .Q(hist_sum_data_3[6]));
  FDCE \hist_sum_data_3_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[7]_i_1_n_0 ),
        .Q(hist_sum_data_3[7]));
  CARRY4 \hist_sum_data_3_reg[7]_i_2 
       (.CI(\hist_sum_data_3_reg[3]_i_2_n_0 ),
        .CO({\hist_sum_data_3_reg[7]_i_2_n_0 ,\hist_sum_data_3_reg[7]_i_2_n_1 ,\hist_sum_data_3_reg[7]_i_2_n_2 ,\hist_sum_data_3_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hist_sum_data_3_reg[7]_i_2_n_4 ,\hist_sum_data_3_reg[7]_i_2_n_5 ,\hist_sum_data_3_reg[7]_i_2_n_6 ,\hist_sum_data_3_reg[7]_i_2_n_7 }),
        .S({\hist_sum_data_3_reg[8]_i_2_n_5 ,\hist_sum_data_3_reg[8]_i_2_n_6 ,\hist_sum_data_3_reg[8]_i_2_n_7 ,\hist_sum_data_3_reg[4]_i_2_n_4 }));
  FDCE \hist_sum_data_3_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[8]_i_1_n_0 ),
        .Q(hist_sum_data_3[8]));
  CARRY4 \hist_sum_data_3_reg[8]_i_12 
       (.CI(\hist_sum_data_3_reg[4]_i_12_n_0 ),
        .CO({\hist_sum_data_3_reg[8]_i_12_n_0 ,\hist_sum_data_3_reg[8]_i_12_n_1 ,\hist_sum_data_3_reg[8]_i_12_n_2 ,\hist_sum_data_3_reg[8]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[8]_i_22_n_0 ,\hist_sum_data_3[8]_i_23_n_0 ,\hist_sum_data_3[8]_i_24_n_0 ,\hist_sum_data_3[8]_i_25_n_0 }),
        .O({\hist_sum_data_3_reg[8]_i_12_n_4 ,\hist_sum_data_3_reg[8]_i_12_n_5 ,\hist_sum_data_3_reg[8]_i_12_n_6 ,\hist_sum_data_3_reg[8]_i_12_n_7 }),
        .S({\hist_sum_data_3[8]_i_26_n_0 ,\hist_sum_data_3[8]_i_27_n_0 ,\hist_sum_data_3[8]_i_28_n_0 ,\hist_sum_data_3[8]_i_29_n_0 }));
  CARRY4 \hist_sum_data_3_reg[8]_i_13 
       (.CI(\hist_sum_data_3_reg[4]_i_13_n_0 ),
        .CO({\hist_sum_data_3_reg[8]_i_13_n_0 ,\hist_sum_data_3_reg[8]_i_13_n_1 ,\hist_sum_data_3_reg[8]_i_13_n_2 ,\hist_sum_data_3_reg[8]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[8]_i_30_n_0 ,\hist_sum_data_3[8]_i_31_n_0 ,\hist_sum_data_3[8]_i_32_n_0 ,\hist_sum_data_3[8]_i_33_n_0 }),
        .O({\hist_sum_data_3_reg[8]_i_13_n_4 ,\hist_sum_data_3_reg[8]_i_13_n_5 ,\hist_sum_data_3_reg[8]_i_13_n_6 ,\hist_sum_data_3_reg[8]_i_13_n_7 }),
        .S({\hist_sum_data_3[8]_i_34_n_0 ,\hist_sum_data_3[8]_i_35_n_0 ,\hist_sum_data_3[8]_i_36_n_0 ,\hist_sum_data_3[8]_i_37_n_0 }));
  CARRY4 \hist_sum_data_3_reg[8]_i_14 
       (.CI(\hist_sum_data_3_reg[4]_i_14_n_0 ),
        .CO({\hist_sum_data_3_reg[8]_i_14_n_0 ,\hist_sum_data_3_reg[8]_i_14_n_1 ,\hist_sum_data_3_reg[8]_i_14_n_2 ,\hist_sum_data_3_reg[8]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[8]_i_38_n_0 ,\hist_sum_data_3[8]_i_39_n_0 ,\hist_sum_data_3[8]_i_40_n_0 ,\hist_sum_data_3[8]_i_41_n_0 }),
        .O({\hist_sum_data_3_reg[8]_i_14_n_4 ,\hist_sum_data_3_reg[8]_i_14_n_5 ,\hist_sum_data_3_reg[8]_i_14_n_6 ,\hist_sum_data_3_reg[8]_i_14_n_7 }),
        .S({\hist_sum_data_3[8]_i_42_n_0 ,\hist_sum_data_3[8]_i_43_n_0 ,\hist_sum_data_3[8]_i_44_n_0 ,\hist_sum_data_3[8]_i_45_n_0 }));
  CARRY4 \hist_sum_data_3_reg[8]_i_2 
       (.CI(\hist_sum_data_3_reg[4]_i_2_n_0 ),
        .CO({\hist_sum_data_3_reg[8]_i_2_n_0 ,\hist_sum_data_3_reg[8]_i_2_n_1 ,\hist_sum_data_3_reg[8]_i_2_n_2 ,\hist_sum_data_3_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_3[8]_i_3_n_0 ,\hist_sum_data_3[8]_i_4_n_0 ,\hist_sum_data_3[8]_i_5_n_0 ,\hist_sum_data_3[8]_i_6_n_0 }),
        .O({\hist_sum_data_3_reg[8]_i_2_n_4 ,\hist_sum_data_3_reg[8]_i_2_n_5 ,\hist_sum_data_3_reg[8]_i_2_n_6 ,\hist_sum_data_3_reg[8]_i_2_n_7 }),
        .S({\hist_sum_data_3[8]_i_7_n_0 ,\hist_sum_data_3[8]_i_8_n_0 ,\hist_sum_data_3[8]_i_9_n_0 ,\hist_sum_data_3[8]_i_10_n_0 }));
  FDCE \hist_sum_data_3_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_3[9]_i_1_n_0 ),
        .Q(hist_sum_data_3[9]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hist_sum_data_4[0]_i_1 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_7 ),
        .I1(\hist_sum_data_4_reg[7]_i_3_n_1 ),
        .I2(\hist_sum_data_4_reg[7]_i_4_n_1 ),
        .I3(\hist_sum_data_4_reg[3]_i_3_n_7 ),
        .O(\hist_sum_data_4[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hist_sum_data_4[1]_i_1 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_6 ),
        .I1(\hist_sum_data_4_reg[7]_i_3_n_1 ),
        .I2(\hist_sum_data_4_reg[7]_i_4_n_1 ),
        .I3(\hist_sum_data_4_reg[3]_i_3_n_6 ),
        .O(\hist_sum_data_4[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hist_sum_data_4[2]_i_1 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_5 ),
        .I1(\hist_sum_data_4_reg[7]_i_3_n_1 ),
        .I2(\hist_sum_data_4_reg[7]_i_4_n_1 ),
        .I3(\hist_sum_data_4_reg[3]_i_3_n_5 ),
        .O(\hist_sum_data_4[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hist_sum_data_4[3]_i_1 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_4 ),
        .I1(\hist_sum_data_4_reg[7]_i_3_n_1 ),
        .I2(\hist_sum_data_4_reg[7]_i_4_n_1 ),
        .I3(\hist_sum_data_4_reg[3]_i_3_n_4 ),
        .O(\hist_sum_data_4[3]_i_1_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT5 #(
    .INIT(32'h69999666)) 
    \hist_sum_data_4[3]_i_10 
       (.I0(hist_sum_data_3[13]),
        .I1(hist_sum_data_3[17]),
        .I2(hist_sum_data_3[16]),
        .I3(hist_sum_data_3[12]),
        .I4(\hist_sum_data_4[3]_i_6_n_0 ),
        .O(\hist_sum_data_4[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[3]_i_100 
       (.I0(hist_sum_data_3[6]),
        .I1(hist_sum_data_3[2]),
        .O(\hist_sum_data_4[3]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[3]_i_101 
       (.I0(hist_sum_data_3[5]),
        .I1(hist_sum_data_3[1]),
        .O(\hist_sum_data_4[3]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[3]_i_102 
       (.I0(hist_sum_data_3[4]),
        .I1(hist_sum_data_3[0]),
        .O(\hist_sum_data_4[3]_i_102_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT5 #(
    .INIT(32'h69999666)) 
    \hist_sum_data_4[3]_i_11 
       (.I0(hist_sum_data_3[12]),
        .I1(hist_sum_data_3[16]),
        .I2(hist_sum_data_3[15]),
        .I3(hist_sum_data_3[11]),
        .I4(\hist_sum_data_4[3]_i_7_n_0 ),
        .O(\hist_sum_data_4[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \hist_sum_data_4[3]_i_12 
       (.I0(\hist_sum_data_4[3]_i_8_n_0 ),
        .I1(hist_sum_data_3[11]),
        .I2(hist_sum_data_3[15]),
        .I3(hist_sum_data_3[19]),
        .I4(hist_sum_data_3[10]),
        .I5(hist_sum_data_3[14]),
        .O(\hist_sum_data_4[3]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_4[3]_i_13 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_7 ),
        .O(\hist_sum_data_4[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEBE28BE282828)) 
    \hist_sum_data_4[3]_i_15 
       (.I0(hist_sum_data_3[17]),
        .I1(hist_sum_data_3[9]),
        .I2(hist_sum_data_3[13]),
        .I3(hist_sum_data_3[12]),
        .I4(hist_sum_data_3[8]),
        .I5(\hist_sum_data_4_reg[3]_i_32_n_2 ),
        .O(\hist_sum_data_4[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_4[3]_i_16 
       (.I0(hist_sum_data_3[16]),
        .I1(\hist_sum_data_4[3]_i_33_n_0 ),
        .I2(hist_sum_data_3[11]),
        .I3(hist_sum_data_3[7]),
        .I4(\hist_sum_data_4_reg[3]_i_32_n_7 ),
        .O(\hist_sum_data_4[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_4[3]_i_17 
       (.I0(hist_sum_data_3[15]),
        .I1(\hist_sum_data_4[3]_i_34_n_0 ),
        .I2(hist_sum_data_3[10]),
        .I3(hist_sum_data_3[6]),
        .I4(\hist_sum_data_4_reg[3]_i_35_n_4 ),
        .O(\hist_sum_data_4[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_4[3]_i_18 
       (.I0(hist_sum_data_3[14]),
        .I1(\hist_sum_data_4[3]_i_36_n_0 ),
        .I2(hist_sum_data_3[9]),
        .I3(hist_sum_data_3[5]),
        .I4(\hist_sum_data_4_reg[3]_i_35_n_5 ),
        .O(\hist_sum_data_4[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \hist_sum_data_4[3]_i_19 
       (.I0(\hist_sum_data_4[3]_i_15_n_0 ),
        .I1(hist_sum_data_3[10]),
        .I2(hist_sum_data_3[14]),
        .I3(hist_sum_data_3[18]),
        .I4(hist_sum_data_3[9]),
        .I5(hist_sum_data_3[13]),
        .O(\hist_sum_data_4[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_4[3]_i_20 
       (.I0(\hist_sum_data_4[3]_i_16_n_0 ),
        .I1(\hist_sum_data_4[3]_i_37_n_0 ),
        .I2(hist_sum_data_3[17]),
        .I3(\hist_sum_data_4_reg[3]_i_32_n_2 ),
        .I4(hist_sum_data_3[8]),
        .I5(hist_sum_data_3[12]),
        .O(\hist_sum_data_4[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_4[3]_i_21 
       (.I0(\hist_sum_data_4[3]_i_17_n_0 ),
        .I1(\hist_sum_data_4[3]_i_33_n_0 ),
        .I2(hist_sum_data_3[16]),
        .I3(\hist_sum_data_4_reg[3]_i_32_n_7 ),
        .I4(hist_sum_data_3[7]),
        .I5(hist_sum_data_3[11]),
        .O(\hist_sum_data_4[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_4[3]_i_22 
       (.I0(\hist_sum_data_4[3]_i_18_n_0 ),
        .I1(\hist_sum_data_4[3]_i_34_n_0 ),
        .I2(hist_sum_data_3[15]),
        .I3(\hist_sum_data_4_reg[3]_i_35_n_4 ),
        .I4(hist_sum_data_3[6]),
        .I5(hist_sum_data_3[10]),
        .O(\hist_sum_data_4[3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_4[3]_i_24 
       (.I0(hist_sum_data_3[13]),
        .I1(\hist_sum_data_4[3]_i_47_n_0 ),
        .I2(hist_sum_data_3[8]),
        .I3(hist_sum_data_3[4]),
        .I4(\hist_sum_data_4_reg[3]_i_35_n_6 ),
        .O(\hist_sum_data_4[3]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_4[3]_i_25 
       (.I0(hist_sum_data_3[12]),
        .I1(\hist_sum_data_4[3]_i_48_n_0 ),
        .I2(hist_sum_data_3[7]),
        .I3(hist_sum_data_3[3]),
        .I4(\hist_sum_data_4_reg[3]_i_35_n_7 ),
        .O(\hist_sum_data_4[3]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_4[3]_i_26 
       (.I0(hist_sum_data_3[11]),
        .I1(\hist_sum_data_4[3]_i_49_n_0 ),
        .I2(hist_sum_data_3[6]),
        .I3(hist_sum_data_3[2]),
        .I4(\hist_sum_data_4_reg[3]_i_50_n_4 ),
        .O(\hist_sum_data_4[3]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_4[3]_i_27 
       (.I0(hist_sum_data_3[10]),
        .I1(\hist_sum_data_4[3]_i_51_n_0 ),
        .I2(hist_sum_data_3[5]),
        .I3(hist_sum_data_3[1]),
        .I4(\hist_sum_data_4_reg[3]_i_50_n_5 ),
        .O(\hist_sum_data_4[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_4[3]_i_28 
       (.I0(\hist_sum_data_4[3]_i_24_n_0 ),
        .I1(\hist_sum_data_4[3]_i_36_n_0 ),
        .I2(hist_sum_data_3[14]),
        .I3(\hist_sum_data_4_reg[3]_i_35_n_5 ),
        .I4(hist_sum_data_3[5]),
        .I5(hist_sum_data_3[9]),
        .O(\hist_sum_data_4[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_4[3]_i_29 
       (.I0(\hist_sum_data_4[3]_i_25_n_0 ),
        .I1(\hist_sum_data_4[3]_i_47_n_0 ),
        .I2(hist_sum_data_3[13]),
        .I3(\hist_sum_data_4_reg[3]_i_35_n_6 ),
        .I4(hist_sum_data_3[4]),
        .I5(hist_sum_data_3[8]),
        .O(\hist_sum_data_4[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_4[3]_i_30 
       (.I0(\hist_sum_data_4[3]_i_26_n_0 ),
        .I1(\hist_sum_data_4[3]_i_48_n_0 ),
        .I2(hist_sum_data_3[12]),
        .I3(\hist_sum_data_4_reg[3]_i_35_n_7 ),
        .I4(hist_sum_data_3[3]),
        .I5(hist_sum_data_3[7]),
        .O(\hist_sum_data_4[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_4[3]_i_31 
       (.I0(\hist_sum_data_4[3]_i_27_n_0 ),
        .I1(\hist_sum_data_4[3]_i_49_n_0 ),
        .I2(hist_sum_data_3[11]),
        .I3(\hist_sum_data_4_reg[3]_i_50_n_4 ),
        .I4(hist_sum_data_3[2]),
        .I5(hist_sum_data_3[6]),
        .O(\hist_sum_data_4[3]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_33 
       (.I0(hist_sum_data_3[12]),
        .I1(\hist_sum_data_4_reg[3]_i_32_n_2 ),
        .I2(hist_sum_data_3[8]),
        .O(\hist_sum_data_4[3]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_34 
       (.I0(hist_sum_data_3[11]),
        .I1(\hist_sum_data_4_reg[3]_i_32_n_7 ),
        .I2(hist_sum_data_3[7]),
        .O(\hist_sum_data_4[3]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_36 
       (.I0(hist_sum_data_3[10]),
        .I1(\hist_sum_data_4_reg[3]_i_35_n_4 ),
        .I2(hist_sum_data_3[6]),
        .O(\hist_sum_data_4[3]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[3]_i_37 
       (.I0(hist_sum_data_3[13]),
        .I1(hist_sum_data_3[9]),
        .O(\hist_sum_data_4[3]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \hist_sum_data_4[3]_i_39 
       (.I0(hist_sum_data_3[9]),
        .I1(\hist_sum_data_4[3]_i_62_n_0 ),
        .I2(hist_sum_data_3[4]),
        .I3(hist_sum_data_3[0]),
        .I4(\hist_sum_data_4_reg[3]_i_50_n_6 ),
        .O(\hist_sum_data_4[3]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \hist_sum_data_4[3]_i_40 
       (.I0(hist_sum_data_3[4]),
        .I1(hist_sum_data_3[0]),
        .I2(\hist_sum_data_4_reg[3]_i_50_n_6 ),
        .I3(hist_sum_data_3[9]),
        .I4(\hist_sum_data_4[3]_i_62_n_0 ),
        .O(\hist_sum_data_4[3]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_41 
       (.I0(hist_sum_data_3[0]),
        .I1(\hist_sum_data_4_reg[3]_i_50_n_6 ),
        .I2(hist_sum_data_3[4]),
        .I3(hist_sum_data_3[8]),
        .O(\hist_sum_data_4[3]_i_41_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_42 
       (.I0(\hist_sum_data_4_reg[3]_i_63_n_4 ),
        .I1(hist_sum_data_3[2]),
        .I2(hist_sum_data_3[6]),
        .O(\hist_sum_data_4[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \hist_sum_data_4[3]_i_43 
       (.I0(\hist_sum_data_4[3]_i_39_n_0 ),
        .I1(\hist_sum_data_4[3]_i_51_n_0 ),
        .I2(hist_sum_data_3[10]),
        .I3(\hist_sum_data_4_reg[3]_i_50_n_5 ),
        .I4(hist_sum_data_3[1]),
        .I5(hist_sum_data_3[5]),
        .O(\hist_sum_data_4[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \hist_sum_data_4[3]_i_44 
       (.I0(\hist_sum_data_4[3]_i_62_n_0 ),
        .I1(hist_sum_data_3[9]),
        .I2(hist_sum_data_3[4]),
        .I3(\hist_sum_data_4_reg[3]_i_50_n_6 ),
        .I4(hist_sum_data_3[0]),
        .I5(hist_sum_data_3[8]),
        .O(\hist_sum_data_4[3]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \hist_sum_data_4[3]_i_45 
       (.I0(\hist_sum_data_4[3]_i_41_n_0 ),
        .I1(hist_sum_data_3[7]),
        .I2(hist_sum_data_3[3]),
        .I3(\hist_sum_data_4_reg[3]_i_50_n_7 ),
        .O(\hist_sum_data_4[3]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_46 
       (.I0(\hist_sum_data_4[3]_i_42_n_0 ),
        .I1(hist_sum_data_3[3]),
        .I2(\hist_sum_data_4_reg[3]_i_50_n_7 ),
        .I3(hist_sum_data_3[7]),
        .O(\hist_sum_data_4[3]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_47 
       (.I0(hist_sum_data_3[9]),
        .I1(\hist_sum_data_4_reg[3]_i_35_n_5 ),
        .I2(hist_sum_data_3[5]),
        .O(\hist_sum_data_4[3]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_48 
       (.I0(hist_sum_data_3[8]),
        .I1(\hist_sum_data_4_reg[3]_i_35_n_6 ),
        .I2(hist_sum_data_3[4]),
        .O(\hist_sum_data_4[3]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_49 
       (.I0(hist_sum_data_3[7]),
        .I1(\hist_sum_data_4_reg[3]_i_35_n_7 ),
        .I2(hist_sum_data_3[3]),
        .O(\hist_sum_data_4[3]_i_49_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \hist_sum_data_4[3]_i_5 
       (.I0(hist_sum_data_3[13]),
        .I1(hist_sum_data_3[17]),
        .I2(hist_sum_data_3[16]),
        .I3(hist_sum_data_3[12]),
        .O(\hist_sum_data_4[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_51 
       (.I0(hist_sum_data_3[6]),
        .I1(\hist_sum_data_4_reg[3]_i_50_n_4 ),
        .I2(hist_sum_data_3[2]),
        .O(\hist_sum_data_4[3]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_4[3]_i_52 
       (.I0(hist_sum_data_3[18]),
        .I1(hist_sum_data_3[14]),
        .O(\hist_sum_data_4[3]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \hist_sum_data_4[3]_i_53 
       (.I0(hist_sum_data_3[19]),
        .I1(hist_sum_data_3[15]),
        .I2(hist_sum_data_3[16]),
        .O(\hist_sum_data_4[3]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \hist_sum_data_4[3]_i_54 
       (.I0(hist_sum_data_3[18]),
        .I1(hist_sum_data_3[14]),
        .I2(hist_sum_data_3[15]),
        .I3(hist_sum_data_3[19]),
        .O(\hist_sum_data_4[3]_i_54_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_56 
       (.I0(\hist_sum_data_4_reg[3]_i_63_n_5 ),
        .I1(hist_sum_data_3[1]),
        .I2(hist_sum_data_3[5]),
        .O(\hist_sum_data_4[3]_i_56_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_57 
       (.I0(hist_sum_data_3[5]),
        .I1(\hist_sum_data_4_reg[3]_i_63_n_5 ),
        .I2(hist_sum_data_3[1]),
        .O(\hist_sum_data_4[3]_i_57_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_58 
       (.I0(\hist_sum_data_4_reg[3]_i_63_n_4 ),
        .I1(hist_sum_data_3[2]),
        .I2(hist_sum_data_3[6]),
        .I3(\hist_sum_data_4[3]_i_56_n_0 ),
        .O(\hist_sum_data_4[3]_i_58_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \hist_sum_data_4[3]_i_59 
       (.I0(\hist_sum_data_4_reg[3]_i_63_n_5 ),
        .I1(hist_sum_data_3[1]),
        .I2(hist_sum_data_3[5]),
        .I3(hist_sum_data_3[0]),
        .I4(\hist_sum_data_4_reg[3]_i_63_n_6 ),
        .O(\hist_sum_data_4[3]_i_59_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \hist_sum_data_4[3]_i_6 
       (.I0(hist_sum_data_3[12]),
        .I1(hist_sum_data_3[16]),
        .I2(hist_sum_data_3[15]),
        .I3(hist_sum_data_3[11]),
        .O(\hist_sum_data_4[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_60 
       (.I0(\hist_sum_data_4_reg[3]_i_63_n_6 ),
        .I1(hist_sum_data_3[0]),
        .I2(hist_sum_data_3[4]),
        .O(\hist_sum_data_4[3]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[3]_i_61 
       (.I0(hist_sum_data_3[3]),
        .I1(\hist_sum_data_4_reg[3]_i_63_n_7 ),
        .O(\hist_sum_data_4[3]_i_61_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_62 
       (.I0(hist_sum_data_3[5]),
        .I1(\hist_sum_data_4_reg[3]_i_50_n_5 ),
        .I2(hist_sum_data_3[1]),
        .O(\hist_sum_data_4[3]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_4[3]_i_64 
       (.I0(hist_sum_data_3[17]),
        .I1(hist_sum_data_3[13]),
        .O(\hist_sum_data_4[3]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \hist_sum_data_4[3]_i_65 
       (.I0(hist_sum_data_3[16]),
        .I1(hist_sum_data_3[12]),
        .O(\hist_sum_data_4[3]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_66 
       (.I0(hist_sum_data_3[11]),
        .I1(hist_sum_data_3[15]),
        .I2(hist_sum_data_3[19]),
        .O(\hist_sum_data_4[3]_i_66_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_67 
       (.I0(hist_sum_data_3[10]),
        .I1(hist_sum_data_3[14]),
        .I2(hist_sum_data_3[18]),
        .O(\hist_sum_data_4[3]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \hist_sum_data_4[3]_i_68 
       (.I0(hist_sum_data_3[17]),
        .I1(hist_sum_data_3[13]),
        .I2(hist_sum_data_3[14]),
        .I3(hist_sum_data_3[18]),
        .O(\hist_sum_data_4[3]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \hist_sum_data_4[3]_i_69 
       (.I0(hist_sum_data_3[16]),
        .I1(hist_sum_data_3[12]),
        .I2(hist_sum_data_3[13]),
        .I3(hist_sum_data_3[17]),
        .O(\hist_sum_data_4[3]_i_69_n_0 ));
  LUT5 #(
    .INIT(32'hBE282828)) 
    \hist_sum_data_4[3]_i_7 
       (.I0(hist_sum_data_3[19]),
        .I1(hist_sum_data_3[11]),
        .I2(hist_sum_data_3[15]),
        .I3(hist_sum_data_3[14]),
        .I4(hist_sum_data_3[10]),
        .O(\hist_sum_data_4[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \hist_sum_data_4[3]_i_70 
       (.I0(hist_sum_data_3[19]),
        .I1(hist_sum_data_3[15]),
        .I2(hist_sum_data_3[11]),
        .I3(hist_sum_data_3[12]),
        .I4(hist_sum_data_3[16]),
        .O(\hist_sum_data_4[3]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_71 
       (.I0(\hist_sum_data_4[3]_i_67_n_0 ),
        .I1(hist_sum_data_3[15]),
        .I2(hist_sum_data_3[11]),
        .I3(hist_sum_data_3[19]),
        .O(\hist_sum_data_4[3]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[3]_i_72 
       (.I0(hist_sum_data_3[2]),
        .I1(\hist_sum_data_4_reg[3]_i_75_n_4 ),
        .O(\hist_sum_data_4[3]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[3]_i_73 
       (.I0(hist_sum_data_3[1]),
        .I1(\hist_sum_data_4_reg[3]_i_75_n_5 ),
        .O(\hist_sum_data_4[3]_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[3]_i_74 
       (.I0(hist_sum_data_3[0]),
        .I1(\hist_sum_data_4_reg[3]_i_75_n_6 ),
        .O(\hist_sum_data_4[3]_i_74_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_76 
       (.I0(hist_sum_data_3[9]),
        .I1(hist_sum_data_3[13]),
        .I2(hist_sum_data_3[17]),
        .O(\hist_sum_data_4[3]_i_76_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_77 
       (.I0(hist_sum_data_3[8]),
        .I1(hist_sum_data_3[12]),
        .I2(hist_sum_data_3[16]),
        .O(\hist_sum_data_4[3]_i_77_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_78 
       (.I0(hist_sum_data_3[7]),
        .I1(hist_sum_data_3[11]),
        .I2(hist_sum_data_3[15]),
        .O(\hist_sum_data_4[3]_i_78_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_79 
       (.I0(hist_sum_data_3[6]),
        .I1(hist_sum_data_3[10]),
        .I2(hist_sum_data_3[14]),
        .O(\hist_sum_data_4[3]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hBE282828)) 
    \hist_sum_data_4[3]_i_8 
       (.I0(hist_sum_data_3[18]),
        .I1(hist_sum_data_3[10]),
        .I2(hist_sum_data_3[14]),
        .I3(hist_sum_data_3[13]),
        .I4(hist_sum_data_3[9]),
        .O(\hist_sum_data_4[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_80 
       (.I0(hist_sum_data_3[10]),
        .I1(hist_sum_data_3[14]),
        .I2(hist_sum_data_3[18]),
        .I3(\hist_sum_data_4[3]_i_76_n_0 ),
        .O(\hist_sum_data_4[3]_i_80_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_81 
       (.I0(hist_sum_data_3[9]),
        .I1(hist_sum_data_3[13]),
        .I2(hist_sum_data_3[17]),
        .I3(\hist_sum_data_4[3]_i_77_n_0 ),
        .O(\hist_sum_data_4[3]_i_81_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_82 
       (.I0(hist_sum_data_3[8]),
        .I1(hist_sum_data_3[12]),
        .I2(hist_sum_data_3[16]),
        .I3(\hist_sum_data_4[3]_i_78_n_0 ),
        .O(\hist_sum_data_4[3]_i_82_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_83 
       (.I0(hist_sum_data_3[7]),
        .I1(hist_sum_data_3[11]),
        .I2(hist_sum_data_3[15]),
        .I3(\hist_sum_data_4[3]_i_79_n_0 ),
        .O(\hist_sum_data_4[3]_i_83_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_85 
       (.I0(hist_sum_data_3[5]),
        .I1(hist_sum_data_3[9]),
        .I2(hist_sum_data_3[13]),
        .O(\hist_sum_data_4[3]_i_85_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_86 
       (.I0(hist_sum_data_3[4]),
        .I1(hist_sum_data_3[8]),
        .I2(hist_sum_data_3[12]),
        .O(\hist_sum_data_4[3]_i_86_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_87 
       (.I0(hist_sum_data_3[3]),
        .I1(hist_sum_data_3[7]),
        .I2(hist_sum_data_3[11]),
        .O(\hist_sum_data_4[3]_i_87_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_88 
       (.I0(hist_sum_data_3[2]),
        .I1(hist_sum_data_3[6]),
        .I2(hist_sum_data_3[10]),
        .O(\hist_sum_data_4[3]_i_88_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_89 
       (.I0(hist_sum_data_3[6]),
        .I1(hist_sum_data_3[10]),
        .I2(hist_sum_data_3[14]),
        .I3(\hist_sum_data_4[3]_i_85_n_0 ),
        .O(\hist_sum_data_4[3]_i_89_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT5 #(
    .INIT(32'h69999666)) 
    \hist_sum_data_4[3]_i_9 
       (.I0(hist_sum_data_3[14]),
        .I1(hist_sum_data_3[18]),
        .I2(hist_sum_data_3[17]),
        .I3(hist_sum_data_3[13]),
        .I4(\hist_sum_data_4[3]_i_5_n_0 ),
        .O(\hist_sum_data_4[3]_i_9_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_90 
       (.I0(hist_sum_data_3[5]),
        .I1(hist_sum_data_3[9]),
        .I2(hist_sum_data_3[13]),
        .I3(\hist_sum_data_4[3]_i_86_n_0 ),
        .O(\hist_sum_data_4[3]_i_90_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_91 
       (.I0(hist_sum_data_3[4]),
        .I1(hist_sum_data_3[8]),
        .I2(hist_sum_data_3[12]),
        .I3(\hist_sum_data_4[3]_i_87_n_0 ),
        .O(\hist_sum_data_4[3]_i_91_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_92 
       (.I0(hist_sum_data_3[3]),
        .I1(hist_sum_data_3[7]),
        .I2(hist_sum_data_3[11]),
        .I3(\hist_sum_data_4[3]_i_88_n_0 ),
        .O(\hist_sum_data_4[3]_i_92_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \hist_sum_data_4[3]_i_94 
       (.I0(hist_sum_data_3[1]),
        .I1(hist_sum_data_3[5]),
        .I2(hist_sum_data_3[9]),
        .O(\hist_sum_data_4[3]_i_94_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_95 
       (.I0(hist_sum_data_3[9]),
        .I1(hist_sum_data_3[1]),
        .I2(hist_sum_data_3[5]),
        .O(\hist_sum_data_4[3]_i_95_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hist_sum_data_4[3]_i_96 
       (.I0(hist_sum_data_3[2]),
        .I1(hist_sum_data_3[6]),
        .I2(hist_sum_data_3[10]),
        .I3(\hist_sum_data_4[3]_i_94_n_0 ),
        .O(\hist_sum_data_4[3]_i_96_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \hist_sum_data_4[3]_i_97 
       (.I0(hist_sum_data_3[1]),
        .I1(hist_sum_data_3[5]),
        .I2(hist_sum_data_3[9]),
        .I3(hist_sum_data_3[4]),
        .I4(hist_sum_data_3[0]),
        .O(\hist_sum_data_4[3]_i_97_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \hist_sum_data_4[3]_i_98 
       (.I0(hist_sum_data_3[0]),
        .I1(hist_sum_data_3[4]),
        .I2(hist_sum_data_3[8]),
        .O(\hist_sum_data_4[3]_i_98_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[3]_i_99 
       (.I0(hist_sum_data_3[7]),
        .I1(hist_sum_data_3[3]),
        .O(\hist_sum_data_4[3]_i_99_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hist_sum_data_4[4]_i_1 
       (.I0(\hist_sum_data_4_reg[7]_i_2_n_7 ),
        .I1(\hist_sum_data_4_reg[7]_i_3_n_1 ),
        .I2(\hist_sum_data_4_reg[7]_i_4_n_1 ),
        .I3(\hist_sum_data_4_reg[7]_i_5_n_7 ),
        .O(\hist_sum_data_4[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hist_sum_data_4[5]_i_1 
       (.I0(\hist_sum_data_4_reg[7]_i_2_n_6 ),
        .I1(\hist_sum_data_4_reg[7]_i_3_n_1 ),
        .I2(\hist_sum_data_4_reg[7]_i_4_n_1 ),
        .I3(\hist_sum_data_4_reg[7]_i_5_n_6 ),
        .O(\hist_sum_data_4[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hist_sum_data_4[6]_i_1 
       (.I0(\hist_sum_data_4_reg[7]_i_2_n_5 ),
        .I1(\hist_sum_data_4_reg[7]_i_3_n_1 ),
        .I2(\hist_sum_data_4_reg[7]_i_4_n_1 ),
        .I3(\hist_sum_data_4_reg[7]_i_5_n_5 ),
        .O(\hist_sum_data_4[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hist_sum_data_4[7]_i_1 
       (.I0(\hist_sum_data_4_reg[7]_i_2_n_4 ),
        .I1(\hist_sum_data_4_reg[7]_i_3_n_1 ),
        .I2(\hist_sum_data_4_reg[7]_i_4_n_1 ),
        .I3(\hist_sum_data_4_reg[7]_i_5_n_4 ),
        .O(\hist_sum_data_4[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \hist_sum_data_4[7]_i_10 
       (.I0(\hist_sum_data_4[7]_i_7_n_0 ),
        .I1(hist_sum_data_3[19]),
        .I2(hist_sum_data_3[15]),
        .I3(hist_sum_data_3[14]),
        .I4(hist_sum_data_3[18]),
        .O(\hist_sum_data_4[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_4[7]_i_12 
       (.I0(\hist_sum_data_4_reg[7]_i_4_n_7 ),
        .I1(hist_sum_data_3[19]),
        .O(\hist_sum_data_4[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_4[7]_i_13 
       (.I0(\hist_sum_data_4_reg[7]_i_17_n_4 ),
        .I1(hist_sum_data_3[18]),
        .O(\hist_sum_data_4[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[7]_i_14 
       (.I0(\hist_sum_data_4_reg[7]_i_4_n_6 ),
        .I1(\hist_sum_data_4_reg[7]_i_4_n_1 ),
        .O(\hist_sum_data_4[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \hist_sum_data_4[7]_i_15 
       (.I0(hist_sum_data_3[19]),
        .I1(\hist_sum_data_4_reg[7]_i_4_n_7 ),
        .I2(\hist_sum_data_4_reg[7]_i_4_n_6 ),
        .O(\hist_sum_data_4[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_4[7]_i_16 
       (.I0(hist_sum_data_3[18]),
        .I1(\hist_sum_data_4_reg[7]_i_17_n_4 ),
        .I2(\hist_sum_data_4_reg[7]_i_4_n_7 ),
        .I3(hist_sum_data_3[19]),
        .O(\hist_sum_data_4[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_4[7]_i_19 
       (.I0(\hist_sum_data_4_reg[7]_i_18_n_2 ),
        .O(\hist_sum_data_4[7]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_4[7]_i_20 
       (.I0(\hist_sum_data_4_reg[7]_i_18_n_7 ),
        .O(\hist_sum_data_4[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_4[7]_i_22 
       (.I0(\hist_sum_data_4_reg[7]_i_17_n_5 ),
        .I1(hist_sum_data_3[17]),
        .O(\hist_sum_data_4[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_4[7]_i_23 
       (.I0(\hist_sum_data_4_reg[7]_i_17_n_6 ),
        .I1(hist_sum_data_3[16]),
        .O(\hist_sum_data_4[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_4[7]_i_24 
       (.I0(\hist_sum_data_4_reg[7]_i_17_n_7 ),
        .I1(hist_sum_data_3[15]),
        .O(\hist_sum_data_4[7]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_4[7]_i_25 
       (.I0(\hist_sum_data_4_reg[7]_i_30_n_4 ),
        .I1(hist_sum_data_3[14]),
        .O(\hist_sum_data_4[7]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_4[7]_i_26 
       (.I0(hist_sum_data_3[17]),
        .I1(\hist_sum_data_4_reg[7]_i_17_n_5 ),
        .I2(\hist_sum_data_4_reg[7]_i_17_n_4 ),
        .I3(hist_sum_data_3[18]),
        .O(\hist_sum_data_4[7]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_4[7]_i_27 
       (.I0(hist_sum_data_3[16]),
        .I1(\hist_sum_data_4_reg[7]_i_17_n_6 ),
        .I2(\hist_sum_data_4_reg[7]_i_17_n_5 ),
        .I3(hist_sum_data_3[17]),
        .O(\hist_sum_data_4[7]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_4[7]_i_28 
       (.I0(hist_sum_data_3[15]),
        .I1(\hist_sum_data_4_reg[7]_i_17_n_7 ),
        .I2(\hist_sum_data_4_reg[7]_i_17_n_6 ),
        .I3(hist_sum_data_3[16]),
        .O(\hist_sum_data_4[7]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_4[7]_i_29 
       (.I0(hist_sum_data_3[14]),
        .I1(\hist_sum_data_4_reg[7]_i_30_n_4 ),
        .I2(\hist_sum_data_4_reg[7]_i_17_n_7 ),
        .I3(hist_sum_data_3[15]),
        .O(\hist_sum_data_4[7]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_4[7]_i_31 
       (.I0(\hist_sum_data_4_reg[7]_i_2_n_4 ),
        .O(\hist_sum_data_4[7]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_4[7]_i_32 
       (.I0(\hist_sum_data_4_reg[7]_i_2_n_5 ),
        .O(\hist_sum_data_4[7]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hist_sum_data_4[7]_i_33 
       (.I0(\hist_sum_data_4_reg[7]_i_2_n_6 ),
        .I1(\hist_sum_data_4_reg[7]_i_18_n_2 ),
        .O(\hist_sum_data_4[7]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hist_sum_data_4[7]_i_34 
       (.I0(\hist_sum_data_4_reg[7]_i_2_n_7 ),
        .I1(\hist_sum_data_4_reg[7]_i_18_n_7 ),
        .O(\hist_sum_data_4[7]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_4[7]_i_36 
       (.I0(\hist_sum_data_4_reg[7]_i_30_n_5 ),
        .I1(hist_sum_data_3[13]),
        .O(\hist_sum_data_4[7]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_4[7]_i_37 
       (.I0(\hist_sum_data_4_reg[7]_i_30_n_6 ),
        .I1(hist_sum_data_3[12]),
        .O(\hist_sum_data_4[7]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hist_sum_data_4[7]_i_38 
       (.I0(\hist_sum_data_4_reg[7]_i_30_n_7 ),
        .I1(hist_sum_data_3[11]),
        .O(\hist_sum_data_4[7]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hist_sum_data_4[7]_i_39 
       (.I0(\hist_sum_data_4_reg[7]_i_44_n_4 ),
        .I1(hist_sum_data_3[10]),
        .O(\hist_sum_data_4[7]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_4[7]_i_40 
       (.I0(hist_sum_data_3[13]),
        .I1(\hist_sum_data_4_reg[7]_i_30_n_5 ),
        .I2(\hist_sum_data_4_reg[7]_i_30_n_4 ),
        .I3(hist_sum_data_3[14]),
        .O(\hist_sum_data_4[7]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_4[7]_i_41 
       (.I0(hist_sum_data_3[12]),
        .I1(\hist_sum_data_4_reg[7]_i_30_n_6 ),
        .I2(\hist_sum_data_4_reg[7]_i_30_n_5 ),
        .I3(hist_sum_data_3[13]),
        .O(\hist_sum_data_4[7]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \hist_sum_data_4[7]_i_42 
       (.I0(hist_sum_data_3[11]),
        .I1(\hist_sum_data_4_reg[7]_i_30_n_7 ),
        .I2(\hist_sum_data_4_reg[7]_i_30_n_6 ),
        .I3(hist_sum_data_3[12]),
        .O(\hist_sum_data_4[7]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \hist_sum_data_4[7]_i_43 
       (.I0(hist_sum_data_3[10]),
        .I1(\hist_sum_data_4_reg[7]_i_44_n_4 ),
        .I2(\hist_sum_data_4_reg[7]_i_30_n_7 ),
        .I3(hist_sum_data_3[11]),
        .O(\hist_sum_data_4[7]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hist_sum_data_4[7]_i_45 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_4 ),
        .I1(\hist_sum_data_4_reg[7]_i_2_n_4 ),
        .O(\hist_sum_data_4[7]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hist_sum_data_4[7]_i_46 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_5 ),
        .I1(\hist_sum_data_4_reg[7]_i_2_n_5 ),
        .O(\hist_sum_data_4[7]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hist_sum_data_4[7]_i_47 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_6 ),
        .I1(\hist_sum_data_4_reg[7]_i_2_n_6 ),
        .O(\hist_sum_data_4[7]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hist_sum_data_4[7]_i_48 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_7 ),
        .I1(\hist_sum_data_4_reg[7]_i_2_n_7 ),
        .O(\hist_sum_data_4[7]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hist_sum_data_4[7]_i_49 
       (.I0(\hist_sum_data_4_reg[7]_i_44_n_5 ),
        .I1(hist_sum_data_3[9]),
        .O(\hist_sum_data_4[7]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hist_sum_data_4[7]_i_50 
       (.I0(\hist_sum_data_4_reg[7]_i_44_n_6 ),
        .I1(hist_sum_data_3[8]),
        .O(\hist_sum_data_4[7]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hist_sum_data_4[7]_i_51 
       (.I0(\hist_sum_data_4_reg[7]_i_44_n_7 ),
        .I1(hist_sum_data_3[7]),
        .O(\hist_sum_data_4[7]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \hist_sum_data_4[7]_i_52 
       (.I0(hist_sum_data_3[9]),
        .I1(\hist_sum_data_4_reg[7]_i_44_n_5 ),
        .I2(\hist_sum_data_4_reg[7]_i_44_n_4 ),
        .I3(hist_sum_data_3[10]),
        .O(\hist_sum_data_4[7]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \hist_sum_data_4[7]_i_53 
       (.I0(hist_sum_data_3[8]),
        .I1(\hist_sum_data_4_reg[7]_i_44_n_6 ),
        .I2(\hist_sum_data_4_reg[7]_i_44_n_5 ),
        .I3(hist_sum_data_3[9]),
        .O(\hist_sum_data_4[7]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \hist_sum_data_4[7]_i_54 
       (.I0(hist_sum_data_3[7]),
        .I1(\hist_sum_data_4_reg[7]_i_44_n_7 ),
        .I2(\hist_sum_data_4_reg[7]_i_44_n_6 ),
        .I3(hist_sum_data_3[8]),
        .O(\hist_sum_data_4[7]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_4[7]_i_55 
       (.I0(hist_sum_data_3[7]),
        .I1(\hist_sum_data_4_reg[7]_i_44_n_7 ),
        .O(\hist_sum_data_4[7]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_4[7]_i_56 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_4 ),
        .O(\hist_sum_data_4[7]_i_56_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_4[7]_i_57 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_5 ),
        .O(\hist_sum_data_4[7]_i_57_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_sum_data_4[7]_i_58 
       (.I0(\hist_sum_data_4_reg[3]_i_2_n_6 ),
        .O(\hist_sum_data_4[7]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \hist_sum_data_4[7]_i_6 
       (.I0(hist_sum_data_3[19]),
        .I1(hist_sum_data_3[15]),
        .I2(hist_sum_data_3[14]),
        .I3(hist_sum_data_3[18]),
        .O(\hist_sum_data_4[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \hist_sum_data_4[7]_i_7 
       (.I0(hist_sum_data_3[14]),
        .I1(hist_sum_data_3[18]),
        .I2(hist_sum_data_3[17]),
        .I3(hist_sum_data_3[13]),
        .O(\hist_sum_data_4[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \hist_sum_data_4[7]_i_8 
       (.I0(hist_sum_data_3[16]),
        .I1(hist_sum_data_3[15]),
        .I2(hist_sum_data_3[19]),
        .I3(hist_sum_data_3[17]),
        .O(\hist_sum_data_4[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0F7878F0)) 
    \hist_sum_data_4[7]_i_9 
       (.I0(hist_sum_data_3[14]),
        .I1(hist_sum_data_3[18]),
        .I2(hist_sum_data_3[16]),
        .I3(hist_sum_data_3[15]),
        .I4(hist_sum_data_3[19]),
        .O(\hist_sum_data_4[7]_i_9_n_0 ));
  FDCE \hist_sum_data_4_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_4[0]_i_1_n_0 ),
        .Q(\hist_sum_data_4_reg_n_0_[0] ));
  FDCE \hist_sum_data_4_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_4[1]_i_1_n_0 ),
        .Q(\hist_sum_data_4_reg_n_0_[1] ));
  FDCE \hist_sum_data_4_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_4[2]_i_1_n_0 ),
        .Q(\hist_sum_data_4_reg_n_0_[2] ));
  FDCE \hist_sum_data_4_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_4[3]_i_1_n_0 ),
        .Q(\hist_sum_data_4_reg_n_0_[3] ));
  CARRY4 \hist_sum_data_4_reg[3]_i_14 
       (.CI(\hist_sum_data_4_reg[3]_i_23_n_0 ),
        .CO({\hist_sum_data_4_reg[3]_i_14_n_0 ,\hist_sum_data_4_reg[3]_i_14_n_1 ,\hist_sum_data_4_reg[3]_i_14_n_2 ,\hist_sum_data_4_reg[3]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[3]_i_24_n_0 ,\hist_sum_data_4[3]_i_25_n_0 ,\hist_sum_data_4[3]_i_26_n_0 ,\hist_sum_data_4[3]_i_27_n_0 }),
        .O(\NLW_hist_sum_data_4_reg[3]_i_14_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_4[3]_i_28_n_0 ,\hist_sum_data_4[3]_i_29_n_0 ,\hist_sum_data_4[3]_i_30_n_0 ,\hist_sum_data_4[3]_i_31_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_2 
       (.CI(\hist_sum_data_4_reg[3]_i_4_n_0 ),
        .CO({\hist_sum_data_4_reg[3]_i_2_n_0 ,\hist_sum_data_4_reg[3]_i_2_n_1 ,\hist_sum_data_4_reg[3]_i_2_n_2 ,\hist_sum_data_4_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[3]_i_5_n_0 ,\hist_sum_data_4[3]_i_6_n_0 ,\hist_sum_data_4[3]_i_7_n_0 ,\hist_sum_data_4[3]_i_8_n_0 }),
        .O({\hist_sum_data_4_reg[3]_i_2_n_4 ,\hist_sum_data_4_reg[3]_i_2_n_5 ,\hist_sum_data_4_reg[3]_i_2_n_6 ,\hist_sum_data_4_reg[3]_i_2_n_7 }),
        .S({\hist_sum_data_4[3]_i_9_n_0 ,\hist_sum_data_4[3]_i_10_n_0 ,\hist_sum_data_4[3]_i_11_n_0 ,\hist_sum_data_4[3]_i_12_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_23 
       (.CI(\hist_sum_data_4_reg[3]_i_38_n_0 ),
        .CO({\hist_sum_data_4_reg[3]_i_23_n_0 ,\hist_sum_data_4_reg[3]_i_23_n_1 ,\hist_sum_data_4_reg[3]_i_23_n_2 ,\hist_sum_data_4_reg[3]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[3]_i_39_n_0 ,\hist_sum_data_4[3]_i_40_n_0 ,\hist_sum_data_4[3]_i_41_n_0 ,\hist_sum_data_4[3]_i_42_n_0 }),
        .O(\NLW_hist_sum_data_4_reg[3]_i_23_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_4[3]_i_43_n_0 ,\hist_sum_data_4[3]_i_44_n_0 ,\hist_sum_data_4[3]_i_45_n_0 ,\hist_sum_data_4[3]_i_46_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\hist_sum_data_4_reg[3]_i_3_n_0 ,\hist_sum_data_4_reg[3]_i_3_n_1 ,\hist_sum_data_4_reg[3]_i_3_n_2 ,\hist_sum_data_4_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hist_sum_data_4_reg[3]_i_3_n_4 ,\hist_sum_data_4_reg[3]_i_3_n_5 ,\hist_sum_data_4_reg[3]_i_3_n_6 ,\hist_sum_data_4_reg[3]_i_3_n_7 }),
        .S({\hist_sum_data_4_reg[3]_i_2_n_4 ,\hist_sum_data_4_reg[3]_i_2_n_5 ,\hist_sum_data_4_reg[3]_i_2_n_6 ,\hist_sum_data_4[3]_i_13_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_32 
       (.CI(\hist_sum_data_4_reg[3]_i_35_n_0 ),
        .CO({\NLW_hist_sum_data_4_reg[3]_i_32_CO_UNCONNECTED [3:2],\hist_sum_data_4_reg[3]_i_32_n_2 ,\NLW_hist_sum_data_4_reg[3]_i_32_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_hist_sum_data_4_reg[3]_i_32_O_UNCONNECTED [3:1],\hist_sum_data_4_reg[3]_i_32_n_7 }),
        .S({1'b0,1'b0,1'b1,hist_sum_data_3[19]}));
  CARRY4 \hist_sum_data_4_reg[3]_i_35 
       (.CI(\hist_sum_data_4_reg[3]_i_50_n_0 ),
        .CO({\hist_sum_data_4_reg[3]_i_35_n_0 ,\hist_sum_data_4_reg[3]_i_35_n_1 ,\hist_sum_data_4_reg[3]_i_35_n_2 ,\hist_sum_data_4_reg[3]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,hist_sum_data_3[16],\hist_sum_data_4[3]_i_52_n_0 }),
        .O({\hist_sum_data_4_reg[3]_i_35_n_4 ,\hist_sum_data_4_reg[3]_i_35_n_5 ,\hist_sum_data_4_reg[3]_i_35_n_6 ,\hist_sum_data_4_reg[3]_i_35_n_7 }),
        .S({hist_sum_data_3[18:17],\hist_sum_data_4[3]_i_53_n_0 ,\hist_sum_data_4[3]_i_54_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_38 
       (.CI(\hist_sum_data_4_reg[3]_i_55_n_0 ),
        .CO({\hist_sum_data_4_reg[3]_i_38_n_0 ,\hist_sum_data_4_reg[3]_i_38_n_1 ,\hist_sum_data_4_reg[3]_i_38_n_2 ,\hist_sum_data_4_reg[3]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[3]_i_56_n_0 ,\hist_sum_data_4[3]_i_57_n_0 ,hist_sum_data_3[4:3]}),
        .O(\NLW_hist_sum_data_4_reg[3]_i_38_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_4[3]_i_58_n_0 ,\hist_sum_data_4[3]_i_59_n_0 ,\hist_sum_data_4[3]_i_60_n_0 ,\hist_sum_data_4[3]_i_61_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_4 
       (.CI(\hist_sum_data_4_reg[3]_i_14_n_0 ),
        .CO({\hist_sum_data_4_reg[3]_i_4_n_0 ,\hist_sum_data_4_reg[3]_i_4_n_1 ,\hist_sum_data_4_reg[3]_i_4_n_2 ,\hist_sum_data_4_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[3]_i_15_n_0 ,\hist_sum_data_4[3]_i_16_n_0 ,\hist_sum_data_4[3]_i_17_n_0 ,\hist_sum_data_4[3]_i_18_n_0 }),
        .O(\NLW_hist_sum_data_4_reg[3]_i_4_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_4[3]_i_19_n_0 ,\hist_sum_data_4[3]_i_20_n_0 ,\hist_sum_data_4[3]_i_21_n_0 ,\hist_sum_data_4[3]_i_22_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_50 
       (.CI(\hist_sum_data_4_reg[3]_i_63_n_0 ),
        .CO({\hist_sum_data_4_reg[3]_i_50_n_0 ,\hist_sum_data_4_reg[3]_i_50_n_1 ,\hist_sum_data_4_reg[3]_i_50_n_2 ,\hist_sum_data_4_reg[3]_i_50_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[3]_i_64_n_0 ,\hist_sum_data_4[3]_i_65_n_0 ,\hist_sum_data_4[3]_i_66_n_0 ,\hist_sum_data_4[3]_i_67_n_0 }),
        .O({\hist_sum_data_4_reg[3]_i_50_n_4 ,\hist_sum_data_4_reg[3]_i_50_n_5 ,\hist_sum_data_4_reg[3]_i_50_n_6 ,\hist_sum_data_4_reg[3]_i_50_n_7 }),
        .S({\hist_sum_data_4[3]_i_68_n_0 ,\hist_sum_data_4[3]_i_69_n_0 ,\hist_sum_data_4[3]_i_70_n_0 ,\hist_sum_data_4[3]_i_71_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_55 
       (.CI(1'b0),
        .CO({\hist_sum_data_4_reg[3]_i_55_n_0 ,\hist_sum_data_4_reg[3]_i_55_n_1 ,\hist_sum_data_4_reg[3]_i_55_n_2 ,\hist_sum_data_4_reg[3]_i_55_n_3 }),
        .CYINIT(1'b0),
        .DI({hist_sum_data_3[2:0],1'b0}),
        .O(\NLW_hist_sum_data_4_reg[3]_i_55_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_4[3]_i_72_n_0 ,\hist_sum_data_4[3]_i_73_n_0 ,\hist_sum_data_4[3]_i_74_n_0 ,\hist_sum_data_4_reg[3]_i_75_n_7 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_63 
       (.CI(\hist_sum_data_4_reg[3]_i_75_n_0 ),
        .CO({\hist_sum_data_4_reg[3]_i_63_n_0 ,\hist_sum_data_4_reg[3]_i_63_n_1 ,\hist_sum_data_4_reg[3]_i_63_n_2 ,\hist_sum_data_4_reg[3]_i_63_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[3]_i_76_n_0 ,\hist_sum_data_4[3]_i_77_n_0 ,\hist_sum_data_4[3]_i_78_n_0 ,\hist_sum_data_4[3]_i_79_n_0 }),
        .O({\hist_sum_data_4_reg[3]_i_63_n_4 ,\hist_sum_data_4_reg[3]_i_63_n_5 ,\hist_sum_data_4_reg[3]_i_63_n_6 ,\hist_sum_data_4_reg[3]_i_63_n_7 }),
        .S({\hist_sum_data_4[3]_i_80_n_0 ,\hist_sum_data_4[3]_i_81_n_0 ,\hist_sum_data_4[3]_i_82_n_0 ,\hist_sum_data_4[3]_i_83_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_75 
       (.CI(\hist_sum_data_4_reg[3]_i_84_n_0 ),
        .CO({\hist_sum_data_4_reg[3]_i_75_n_0 ,\hist_sum_data_4_reg[3]_i_75_n_1 ,\hist_sum_data_4_reg[3]_i_75_n_2 ,\hist_sum_data_4_reg[3]_i_75_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[3]_i_85_n_0 ,\hist_sum_data_4[3]_i_86_n_0 ,\hist_sum_data_4[3]_i_87_n_0 ,\hist_sum_data_4[3]_i_88_n_0 }),
        .O({\hist_sum_data_4_reg[3]_i_75_n_4 ,\hist_sum_data_4_reg[3]_i_75_n_5 ,\hist_sum_data_4_reg[3]_i_75_n_6 ,\hist_sum_data_4_reg[3]_i_75_n_7 }),
        .S({\hist_sum_data_4[3]_i_89_n_0 ,\hist_sum_data_4[3]_i_90_n_0 ,\hist_sum_data_4[3]_i_91_n_0 ,\hist_sum_data_4[3]_i_92_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_84 
       (.CI(\hist_sum_data_4_reg[3]_i_93_n_0 ),
        .CO({\hist_sum_data_4_reg[3]_i_84_n_0 ,\hist_sum_data_4_reg[3]_i_84_n_1 ,\hist_sum_data_4_reg[3]_i_84_n_2 ,\hist_sum_data_4_reg[3]_i_84_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[3]_i_94_n_0 ,\hist_sum_data_4[3]_i_95_n_0 ,hist_sum_data_3[8:7]}),
        .O(\NLW_hist_sum_data_4_reg[3]_i_84_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_4[3]_i_96_n_0 ,\hist_sum_data_4[3]_i_97_n_0 ,\hist_sum_data_4[3]_i_98_n_0 ,\hist_sum_data_4[3]_i_99_n_0 }));
  CARRY4 \hist_sum_data_4_reg[3]_i_93 
       (.CI(1'b0),
        .CO({\hist_sum_data_4_reg[3]_i_93_n_0 ,\hist_sum_data_4_reg[3]_i_93_n_1 ,\hist_sum_data_4_reg[3]_i_93_n_2 ,\hist_sum_data_4_reg[3]_i_93_n_3 }),
        .CYINIT(1'b0),
        .DI({hist_sum_data_3[6:4],1'b0}),
        .O(\NLW_hist_sum_data_4_reg[3]_i_93_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_4[3]_i_100_n_0 ,\hist_sum_data_4[3]_i_101_n_0 ,\hist_sum_data_4[3]_i_102_n_0 ,hist_sum_data_3[3]}));
  FDCE \hist_sum_data_4_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_4[4]_i_1_n_0 ),
        .Q(\hist_sum_data_4_reg_n_0_[4] ));
  FDCE \hist_sum_data_4_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_4[5]_i_1_n_0 ),
        .Q(\hist_sum_data_4_reg_n_0_[5] ));
  FDCE \hist_sum_data_4_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_4[6]_i_1_n_0 ),
        .Q(\hist_sum_data_4_reg_n_0_[6] ));
  FDCE \hist_sum_data_4_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_4[7]_i_1_n_0 ),
        .Q(\hist_sum_data_4_reg_n_0_[7] ));
  CARRY4 \hist_sum_data_4_reg[7]_i_11 
       (.CI(\hist_sum_data_4_reg[7]_i_21_n_0 ),
        .CO({\hist_sum_data_4_reg[7]_i_11_n_0 ,\hist_sum_data_4_reg[7]_i_11_n_1 ,\hist_sum_data_4_reg[7]_i_11_n_2 ,\hist_sum_data_4_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[7]_i_22_n_0 ,\hist_sum_data_4[7]_i_23_n_0 ,\hist_sum_data_4[7]_i_24_n_0 ,\hist_sum_data_4[7]_i_25_n_0 }),
        .O(\NLW_hist_sum_data_4_reg[7]_i_11_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_4[7]_i_26_n_0 ,\hist_sum_data_4[7]_i_27_n_0 ,\hist_sum_data_4[7]_i_28_n_0 ,\hist_sum_data_4[7]_i_29_n_0 }));
  CARRY4 \hist_sum_data_4_reg[7]_i_17 
       (.CI(\hist_sum_data_4_reg[7]_i_30_n_0 ),
        .CO({\hist_sum_data_4_reg[7]_i_17_n_0 ,\hist_sum_data_4_reg[7]_i_17_n_1 ,\hist_sum_data_4_reg[7]_i_17_n_2 ,\hist_sum_data_4_reg[7]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4_reg[7]_i_2_n_4 ,\hist_sum_data_4_reg[7]_i_2_n_5 ,\hist_sum_data_4_reg[7]_i_2_n_6 ,\hist_sum_data_4_reg[7]_i_2_n_7 }),
        .O({\hist_sum_data_4_reg[7]_i_17_n_4 ,\hist_sum_data_4_reg[7]_i_17_n_5 ,\hist_sum_data_4_reg[7]_i_17_n_6 ,\hist_sum_data_4_reg[7]_i_17_n_7 }),
        .S({\hist_sum_data_4[7]_i_31_n_0 ,\hist_sum_data_4[7]_i_32_n_0 ,\hist_sum_data_4[7]_i_33_n_0 ,\hist_sum_data_4[7]_i_34_n_0 }));
  CARRY4 \hist_sum_data_4_reg[7]_i_18 
       (.CI(\hist_sum_data_4_reg[7]_i_2_n_0 ),
        .CO({\NLW_hist_sum_data_4_reg[7]_i_18_CO_UNCONNECTED [3:2],\hist_sum_data_4_reg[7]_i_18_n_2 ,\NLW_hist_sum_data_4_reg[7]_i_18_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_hist_sum_data_4_reg[7]_i_18_O_UNCONNECTED [3:1],\hist_sum_data_4_reg[7]_i_18_n_7 }),
        .S({1'b0,1'b0,1'b1,hist_sum_data_3[19]}));
  CARRY4 \hist_sum_data_4_reg[7]_i_2 
       (.CI(\hist_sum_data_4_reg[3]_i_2_n_0 ),
        .CO({\hist_sum_data_4_reg[7]_i_2_n_0 ,\hist_sum_data_4_reg[7]_i_2_n_1 ,\hist_sum_data_4_reg[7]_i_2_n_2 ,\hist_sum_data_4_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,hist_sum_data_3[17],\hist_sum_data_4[7]_i_6_n_0 ,\hist_sum_data_4[7]_i_7_n_0 }),
        .O({\hist_sum_data_4_reg[7]_i_2_n_4 ,\hist_sum_data_4_reg[7]_i_2_n_5 ,\hist_sum_data_4_reg[7]_i_2_n_6 ,\hist_sum_data_4_reg[7]_i_2_n_7 }),
        .S({hist_sum_data_3[18],\hist_sum_data_4[7]_i_8_n_0 ,\hist_sum_data_4[7]_i_9_n_0 ,\hist_sum_data_4[7]_i_10_n_0 }));
  CARRY4 \hist_sum_data_4_reg[7]_i_21 
       (.CI(\hist_sum_data_4_reg[7]_i_35_n_0 ),
        .CO({\hist_sum_data_4_reg[7]_i_21_n_0 ,\hist_sum_data_4_reg[7]_i_21_n_1 ,\hist_sum_data_4_reg[7]_i_21_n_2 ,\hist_sum_data_4_reg[7]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[7]_i_36_n_0 ,\hist_sum_data_4[7]_i_37_n_0 ,\hist_sum_data_4[7]_i_38_n_0 ,\hist_sum_data_4[7]_i_39_n_0 }),
        .O(\NLW_hist_sum_data_4_reg[7]_i_21_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_4[7]_i_40_n_0 ,\hist_sum_data_4[7]_i_41_n_0 ,\hist_sum_data_4[7]_i_42_n_0 ,\hist_sum_data_4[7]_i_43_n_0 }));
  CARRY4 \hist_sum_data_4_reg[7]_i_3 
       (.CI(\hist_sum_data_4_reg[7]_i_11_n_0 ),
        .CO({\NLW_hist_sum_data_4_reg[7]_i_3_CO_UNCONNECTED [3],\hist_sum_data_4_reg[7]_i_3_n_1 ,\hist_sum_data_4_reg[7]_i_3_n_2 ,\hist_sum_data_4_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\hist_sum_data_4_reg[7]_i_4_n_6 ,\hist_sum_data_4[7]_i_12_n_0 ,\hist_sum_data_4[7]_i_13_n_0 }),
        .O(\NLW_hist_sum_data_4_reg[7]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\hist_sum_data_4[7]_i_14_n_0 ,\hist_sum_data_4[7]_i_15_n_0 ,\hist_sum_data_4[7]_i_16_n_0 }));
  CARRY4 \hist_sum_data_4_reg[7]_i_30 
       (.CI(\hist_sum_data_4_reg[7]_i_44_n_0 ),
        .CO({\hist_sum_data_4_reg[7]_i_30_n_0 ,\hist_sum_data_4_reg[7]_i_30_n_1 ,\hist_sum_data_4_reg[7]_i_30_n_2 ,\hist_sum_data_4_reg[7]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4_reg[3]_i_2_n_4 ,\hist_sum_data_4_reg[3]_i_2_n_5 ,\hist_sum_data_4_reg[3]_i_2_n_6 ,\hist_sum_data_4_reg[3]_i_2_n_7 }),
        .O({\hist_sum_data_4_reg[7]_i_30_n_4 ,\hist_sum_data_4_reg[7]_i_30_n_5 ,\hist_sum_data_4_reg[7]_i_30_n_6 ,\hist_sum_data_4_reg[7]_i_30_n_7 }),
        .S({\hist_sum_data_4[7]_i_45_n_0 ,\hist_sum_data_4[7]_i_46_n_0 ,\hist_sum_data_4[7]_i_47_n_0 ,\hist_sum_data_4[7]_i_48_n_0 }));
  CARRY4 \hist_sum_data_4_reg[7]_i_35 
       (.CI(1'b0),
        .CO({\hist_sum_data_4_reg[7]_i_35_n_0 ,\hist_sum_data_4_reg[7]_i_35_n_1 ,\hist_sum_data_4_reg[7]_i_35_n_2 ,\hist_sum_data_4_reg[7]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4[7]_i_49_n_0 ,\hist_sum_data_4[7]_i_50_n_0 ,\hist_sum_data_4[7]_i_51_n_0 ,1'b0}),
        .O(\NLW_hist_sum_data_4_reg[7]_i_35_O_UNCONNECTED [3:0]),
        .S({\hist_sum_data_4[7]_i_52_n_0 ,\hist_sum_data_4[7]_i_53_n_0 ,\hist_sum_data_4[7]_i_54_n_0 ,\hist_sum_data_4[7]_i_55_n_0 }));
  CARRY4 \hist_sum_data_4_reg[7]_i_4 
       (.CI(\hist_sum_data_4_reg[7]_i_17_n_0 ),
        .CO({\NLW_hist_sum_data_4_reg[7]_i_4_CO_UNCONNECTED [3],\hist_sum_data_4_reg[7]_i_4_n_1 ,\NLW_hist_sum_data_4_reg[7]_i_4_CO_UNCONNECTED [1],\hist_sum_data_4_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\hist_sum_data_4_reg[7]_i_18_n_2 ,\hist_sum_data_4_reg[7]_i_18_n_7 }),
        .O({\NLW_hist_sum_data_4_reg[7]_i_4_O_UNCONNECTED [3:2],\hist_sum_data_4_reg[7]_i_4_n_6 ,\hist_sum_data_4_reg[7]_i_4_n_7 }),
        .S({1'b0,1'b1,\hist_sum_data_4[7]_i_19_n_0 ,\hist_sum_data_4[7]_i_20_n_0 }));
  CARRY4 \hist_sum_data_4_reg[7]_i_44 
       (.CI(1'b0),
        .CO({\hist_sum_data_4_reg[7]_i_44_n_0 ,\hist_sum_data_4_reg[7]_i_44_n_1 ,\hist_sum_data_4_reg[7]_i_44_n_2 ,\hist_sum_data_4_reg[7]_i_44_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hist_sum_data_4_reg[7]_i_44_n_4 ,\hist_sum_data_4_reg[7]_i_44_n_5 ,\hist_sum_data_4_reg[7]_i_44_n_6 ,\hist_sum_data_4_reg[7]_i_44_n_7 }),
        .S({\hist_sum_data_4[7]_i_56_n_0 ,\hist_sum_data_4[7]_i_57_n_0 ,\hist_sum_data_4[7]_i_58_n_0 ,\hist_sum_data_4_reg[3]_i_2_n_7 }));
  CARRY4 \hist_sum_data_4_reg[7]_i_5 
       (.CI(\hist_sum_data_4_reg[3]_i_3_n_0 ),
        .CO({\NLW_hist_sum_data_4_reg[7]_i_5_CO_UNCONNECTED [3],\hist_sum_data_4_reg[7]_i_5_n_1 ,\hist_sum_data_4_reg[7]_i_5_n_2 ,\hist_sum_data_4_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hist_sum_data_4_reg[7]_i_5_n_4 ,\hist_sum_data_4_reg[7]_i_5_n_5 ,\hist_sum_data_4_reg[7]_i_5_n_6 ,\hist_sum_data_4_reg[7]_i_5_n_7 }),
        .S({\hist_sum_data_4_reg[7]_i_2_n_4 ,\hist_sum_data_4_reg[7]_i_2_n_5 ,\hist_sum_data_4_reg[7]_i_2_n_6 ,\hist_sum_data_4_reg[7]_i_2_n_7 }));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_5[3]_i_2 
       (.I0(\hist_sum_data_4_reg_n_0_[3] ),
        .I1(hist_sum_data_20_0[3]),
        .O(\hist_sum_data_5[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_5[3]_i_3 
       (.I0(\hist_sum_data_4_reg_n_0_[2] ),
        .I1(hist_sum_data_20_0[2]),
        .O(\hist_sum_data_5[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_5[3]_i_4 
       (.I0(\hist_sum_data_4_reg_n_0_[1] ),
        .I1(hist_sum_data_20_0[1]),
        .O(\hist_sum_data_5[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_5[3]_i_5 
       (.I0(\hist_sum_data_4_reg_n_0_[0] ),
        .I1(hist_sum_data_20_0[0]),
        .O(\hist_sum_data_5[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_5[7]_i_2 
       (.I0(\hist_sum_data_4_reg_n_0_[7] ),
        .I1(hist_sum_data_20_0[7]),
        .O(\hist_sum_data_5[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_5[7]_i_3 
       (.I0(\hist_sum_data_4_reg_n_0_[6] ),
        .I1(hist_sum_data_20_0[6]),
        .O(\hist_sum_data_5[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_5[7]_i_4 
       (.I0(\hist_sum_data_4_reg_n_0_[5] ),
        .I1(hist_sum_data_20_0[5]),
        .O(\hist_sum_data_5[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hist_sum_data_5[7]_i_5 
       (.I0(\hist_sum_data_4_reg_n_0_[4] ),
        .I1(hist_sum_data_20_0[4]),
        .O(\hist_sum_data_5[7]_i_5_n_0 ));
  FDCE \hist_sum_data_5_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_5_reg[3]_i_1_n_7 ),
        .Q(hist_sum_data_5[0]));
  FDCE \hist_sum_data_5_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_5_reg[3]_i_1_n_6 ),
        .Q(hist_sum_data_5[1]));
  FDCE \hist_sum_data_5_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_5_reg[3]_i_1_n_5 ),
        .Q(hist_sum_data_5[2]));
  FDCE \hist_sum_data_5_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_5_reg[3]_i_1_n_4 ),
        .Q(hist_sum_data_5[3]));
  CARRY4 \hist_sum_data_5_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\hist_sum_data_5_reg[3]_i_1_n_0 ,\hist_sum_data_5_reg[3]_i_1_n_1 ,\hist_sum_data_5_reg[3]_i_1_n_2 ,\hist_sum_data_5_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\hist_sum_data_4_reg_n_0_[3] ,\hist_sum_data_4_reg_n_0_[2] ,\hist_sum_data_4_reg_n_0_[1] ,\hist_sum_data_4_reg_n_0_[0] }),
        .O({\hist_sum_data_5_reg[3]_i_1_n_4 ,\hist_sum_data_5_reg[3]_i_1_n_5 ,\hist_sum_data_5_reg[3]_i_1_n_6 ,\hist_sum_data_5_reg[3]_i_1_n_7 }),
        .S({\hist_sum_data_5[3]_i_2_n_0 ,\hist_sum_data_5[3]_i_3_n_0 ,\hist_sum_data_5[3]_i_4_n_0 ,\hist_sum_data_5[3]_i_5_n_0 }));
  FDCE \hist_sum_data_5_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_5_reg[7]_i_1_n_7 ),
        .Q(hist_sum_data_5[4]));
  FDCE \hist_sum_data_5_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_5_reg[7]_i_1_n_6 ),
        .Q(hist_sum_data_5[5]));
  FDCE \hist_sum_data_5_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_5_reg[7]_i_1_n_5 ),
        .Q(hist_sum_data_5[6]));
  FDCE \hist_sum_data_5_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(\hist_sum_data_5_reg[7]_i_1_n_4 ),
        .Q(hist_sum_data_5[7]));
  CARRY4 \hist_sum_data_5_reg[7]_i_1 
       (.CI(\hist_sum_data_5_reg[3]_i_1_n_0 ),
        .CO({\NLW_hist_sum_data_5_reg[7]_i_1_CO_UNCONNECTED [3],\hist_sum_data_5_reg[7]_i_1_n_1 ,\hist_sum_data_5_reg[7]_i_1_n_2 ,\hist_sum_data_5_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\hist_sum_data_4_reg_n_0_[6] ,\hist_sum_data_4_reg_n_0_[5] ,\hist_sum_data_4_reg_n_0_[4] }),
        .O({\hist_sum_data_5_reg[7]_i_1_n_4 ,\hist_sum_data_5_reg[7]_i_1_n_5 ,\hist_sum_data_5_reg[7]_i_1_n_6 ,\hist_sum_data_5_reg[7]_i_1_n_7 }),
        .S({\hist_sum_data_5[7]_i_2_n_0 ,\hist_sum_data_5[7]_i_3_n_0 ,\hist_sum_data_5[7]_i_4_n_0 ,\hist_sum_data_5[7]_i_5_n_0 }));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    hist_sum_done_i_2
       (.I0(hist_addr_reg__0[4]),
        .I1(hist_addr_reg__0[2]),
        .I2(hist_addr_reg__0[0]),
        .I3(hist_addr_reg__0[1]),
        .I4(hist_addr_reg__0[3]),
        .I5(hist_addr_reg__0[5]),
        .O(hist_sum_done_i_2_n_0));
  FDCE hist_sum_done_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_ram_data_n_3),
        .Q(hist_sum_done));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    hist_sum_runn_0_i_1
       (.I0(hist_sum_done),
        .O(hist_sum_runn_0_i_1_n_0));
  FDCE hist_sum_runn_0_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_runn_0_i_1_n_0),
        .Q(hist_sum_runn_0));
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/hist_equ_i0/hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c " *) 
  SRL16E hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(hist_sum_runn_0),
        .Q(hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    hist_sum_runn_4_reg_gate
       (.I0(hist_sum_runn_4_reg_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0),
        .I1(hist_sum_addr_3_reg_c_n_0),
        .O(hist_sum_runn_4_reg_gate_n_0));
  FDRE hist_sum_runn_4_reg_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c
       (.C(pclk),
        .CE(1'b1),
        .D(hist_sum_runn_3_reg_srl3_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_2_reg_c_n_0),
        .Q(hist_sum_runn_4_reg_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_hist_equ_i0_hist_sum_addr_3_reg_c_n_0),
        .R(1'b0));
  FDCE hist_sum_runn_5_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_hist_equ_en_reg),
        .D(hist_sum_runn_4_reg_gate_n_0),
        .Q(hist_sum_runn_5));
  FDRE href_r_reg
       (.C(pclk),
        .CE(1'b1),
        .D(out_href),
        .Q(hist_equ_href),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    href_reg_i_1
       (.I0(hist_equ_href),
        .I1(s_hist_equ_en),
        .I2(out_href),
        .O(in_href));
  FDRE vsync_r_reg
       (.C(pclk),
        .CE(1'b1),
        .D(out_vsync),
        .Q(hist_equ_vsync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    vsync_reg_i_1__0
       (.I0(hist_equ_vsync),
        .I1(s_hist_equ_en),
        .I2(out_vsync),
        .O(in_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_sobel
   (D,
    in_href,
    in_vsync,
    pclk,
    hist_equ_href_o,
    hist_equ_vsync_o,
    s_module_reset,
    rst_n,
    s_sobel_en,
    \in_r_reg[7] );
  output [7:0]D;
  output in_href;
  output in_vsync;
  input pclk;
  input hist_equ_href_o;
  input hist_equ_vsync_o;
  input s_module_reset;
  input rst_n;
  input s_sobel_en;
  input [7:0]\in_r_reg[7] ;

  wire [7:0]D;
  wire \g[10]_i_2_n_0 ;
  wire \g[10]_i_3_n_0 ;
  wire \g[3]_i_2_n_0 ;
  wire \g[3]_i_3_n_0 ;
  wire \g[3]_i_4_n_0 ;
  wire \g[3]_i_5_n_0 ;
  wire \g[7]_i_2_n_0 ;
  wire \g[7]_i_3_n_0 ;
  wire \g[7]_i_4_n_0 ;
  wire \g[7]_i_5_n_0 ;
  wire \g_reg[10]_i_1_n_1 ;
  wire \g_reg[10]_i_1_n_3 ;
  wire \g_reg[10]_i_1_n_6 ;
  wire \g_reg[10]_i_1_n_7 ;
  wire \g_reg[3]_i_1_n_0 ;
  wire \g_reg[3]_i_1_n_1 ;
  wire \g_reg[3]_i_1_n_2 ;
  wire \g_reg[3]_i_1_n_3 ;
  wire \g_reg[3]_i_1_n_4 ;
  wire \g_reg[3]_i_1_n_5 ;
  wire \g_reg[3]_i_1_n_6 ;
  wire \g_reg[3]_i_1_n_7 ;
  wire \g_reg[7]_i_1_n_0 ;
  wire \g_reg[7]_i_1_n_1 ;
  wire \g_reg[7]_i_1_n_2 ;
  wire \g_reg[7]_i_1_n_3 ;
  wire \g_reg[7]_i_1_n_4 ;
  wire \g_reg[7]_i_1_n_5 ;
  wire \g_reg[7]_i_1_n_6 ;
  wire \g_reg[7]_i_1_n_7 ;
  wire \g_reg_n_0_[0] ;
  wire \g_reg_n_0_[10] ;
  wire \g_reg_n_0_[1] ;
  wire \g_reg_n_0_[2] ;
  wire \g_reg_n_0_[3] ;
  wire \g_reg_n_0_[4] ;
  wire \g_reg_n_0_[5] ;
  wire \g_reg_n_0_[6] ;
  wire \g_reg_n_0_[7] ;
  wire \g_reg_n_0_[8] ;
  wire \g_reg_n_0_[9] ;
  wire [9:0]gx;
  wire [9:0]gx0;
  wire [9:0]gx1;
  wire [8:1]gx12;
  wire \gx1[3]_i_2_n_0 ;
  wire \gx1[3]_i_3_n_0 ;
  wire \gx1[3]_i_4_n_0 ;
  wire \gx1[3]_i_5_n_0 ;
  wire \gx1[3]_i_6_n_0 ;
  wire \gx1[3]_i_7_n_0 ;
  wire \gx1[7]_i_2_n_0 ;
  wire \gx1[7]_i_3_n_0 ;
  wire \gx1[7]_i_4_n_0 ;
  wire \gx1[7]_i_5_n_0 ;
  wire \gx1[7]_i_6_n_0 ;
  wire \gx1[7]_i_7_n_0 ;
  wire \gx1[7]_i_8_n_0 ;
  wire \gx1[7]_i_9_n_0 ;
  wire \gx1[9]_i_2_n_0 ;
  wire \gx1_reg[3]_i_1_n_0 ;
  wire \gx1_reg[3]_i_1_n_1 ;
  wire \gx1_reg[3]_i_1_n_2 ;
  wire \gx1_reg[3]_i_1_n_3 ;
  wire \gx1_reg[3]_i_1_n_4 ;
  wire \gx1_reg[3]_i_1_n_5 ;
  wire \gx1_reg[3]_i_1_n_6 ;
  wire \gx1_reg[3]_i_1_n_7 ;
  wire \gx1_reg[7]_i_1_n_0 ;
  wire \gx1_reg[7]_i_1_n_1 ;
  wire \gx1_reg[7]_i_1_n_2 ;
  wire \gx1_reg[7]_i_1_n_3 ;
  wire \gx1_reg[7]_i_1_n_4 ;
  wire \gx1_reg[7]_i_1_n_5 ;
  wire \gx1_reg[7]_i_1_n_6 ;
  wire \gx1_reg[7]_i_1_n_7 ;
  wire \gx1_reg[9]_i_1_n_2 ;
  wire \gx1_reg[9]_i_1_n_7 ;
  wire gx2;
  wire [9:0]gx3;
  wire [8:1]gx32;
  wire \gx3[3]_i_2_n_0 ;
  wire \gx3[3]_i_3_n_0 ;
  wire \gx3[3]_i_4_n_0 ;
  wire \gx3[3]_i_5_n_0 ;
  wire \gx3[3]_i_6_n_0 ;
  wire \gx3[3]_i_7_n_0 ;
  wire \gx3[7]_i_2_n_0 ;
  wire \gx3[7]_i_3_n_0 ;
  wire \gx3[7]_i_4_n_0 ;
  wire \gx3[7]_i_5_n_0 ;
  wire \gx3[7]_i_6_n_0 ;
  wire \gx3[7]_i_7_n_0 ;
  wire \gx3[7]_i_8_n_0 ;
  wire \gx3[7]_i_9_n_0 ;
  wire \gx3[9]_i_2_n_0 ;
  wire \gx3_reg[3]_i_1_n_0 ;
  wire \gx3_reg[3]_i_1_n_1 ;
  wire \gx3_reg[3]_i_1_n_2 ;
  wire \gx3_reg[3]_i_1_n_3 ;
  wire \gx3_reg[3]_i_1_n_4 ;
  wire \gx3_reg[3]_i_1_n_5 ;
  wire \gx3_reg[3]_i_1_n_6 ;
  wire \gx3_reg[3]_i_1_n_7 ;
  wire \gx3_reg[7]_i_1_n_0 ;
  wire \gx3_reg[7]_i_1_n_1 ;
  wire \gx3_reg[7]_i_1_n_2 ;
  wire \gx3_reg[7]_i_1_n_3 ;
  wire \gx3_reg[7]_i_1_n_4 ;
  wire \gx3_reg[7]_i_1_n_5 ;
  wire \gx3_reg[7]_i_1_n_6 ;
  wire \gx3_reg[7]_i_1_n_7 ;
  wire \gx3_reg[9]_i_1_n_2 ;
  wire \gx3_reg[9]_i_1_n_7 ;
  wire \gx[3]_i_2_n_0 ;
  wire \gx[3]_i_3_n_0 ;
  wire \gx[3]_i_4_n_0 ;
  wire \gx[3]_i_5_n_0 ;
  wire \gx[3]_i_6_n_0 ;
  wire \gx[3]_i_7_n_0 ;
  wire \gx[3]_i_8_n_0 ;
  wire \gx[3]_i_9_n_0 ;
  wire \gx[7]_i_2_n_0 ;
  wire \gx[7]_i_3_n_0 ;
  wire \gx[7]_i_4_n_0 ;
  wire \gx[7]_i_5_n_0 ;
  wire \gx[7]_i_6_n_0 ;
  wire \gx[7]_i_7_n_0 ;
  wire \gx[7]_i_8_n_0 ;
  wire \gx[7]_i_9_n_0 ;
  wire \gx[9]_i_10_n_0 ;
  wire \gx[9]_i_11_n_0 ;
  wire \gx[9]_i_12_n_0 ;
  wire \gx[9]_i_13_n_0 ;
  wire \gx[9]_i_14_n_0 ;
  wire \gx[9]_i_15_n_0 ;
  wire \gx[9]_i_16_n_0 ;
  wire \gx[9]_i_2_n_0 ;
  wire \gx[9]_i_3_n_0 ;
  wire \gx[9]_i_4_n_0 ;
  wire \gx[9]_i_7_n_0 ;
  wire \gx[9]_i_8_n_0 ;
  wire \gx[9]_i_9_n_0 ;
  wire \gx_reg[3]_i_1_n_0 ;
  wire \gx_reg[3]_i_1_n_1 ;
  wire \gx_reg[3]_i_1_n_2 ;
  wire \gx_reg[3]_i_1_n_3 ;
  wire \gx_reg[7]_i_1_n_0 ;
  wire \gx_reg[7]_i_1_n_1 ;
  wire \gx_reg[7]_i_1_n_2 ;
  wire \gx_reg[7]_i_1_n_3 ;
  wire \gx_reg[9]_i_1_n_3 ;
  wire \gx_reg[9]_i_6_n_0 ;
  wire \gx_reg[9]_i_6_n_1 ;
  wire \gx_reg[9]_i_6_n_2 ;
  wire \gx_reg[9]_i_6_n_3 ;
  wire [9:0]gy;
  wire [9:0]gy0;
  wire [9:0]gy1;
  wire [8:1]gy12;
  wire \gy1[3]_i_2_n_0 ;
  wire \gy1[3]_i_3_n_0 ;
  wire \gy1[3]_i_4_n_0 ;
  wire \gy1[3]_i_5_n_0 ;
  wire \gy1[3]_i_6_n_0 ;
  wire \gy1[3]_i_7_n_0 ;
  wire \gy1[7]_i_2_n_0 ;
  wire \gy1[7]_i_3_n_0 ;
  wire \gy1[7]_i_4_n_0 ;
  wire \gy1[7]_i_5_n_0 ;
  wire \gy1[7]_i_6_n_0 ;
  wire \gy1[7]_i_7_n_0 ;
  wire \gy1[7]_i_8_n_0 ;
  wire \gy1[7]_i_9_n_0 ;
  wire \gy1[9]_i_2_n_0 ;
  wire \gy1_reg[3]_i_1_n_0 ;
  wire \gy1_reg[3]_i_1_n_1 ;
  wire \gy1_reg[3]_i_1_n_2 ;
  wire \gy1_reg[3]_i_1_n_3 ;
  wire \gy1_reg[3]_i_1_n_4 ;
  wire \gy1_reg[3]_i_1_n_5 ;
  wire \gy1_reg[3]_i_1_n_6 ;
  wire \gy1_reg[3]_i_1_n_7 ;
  wire \gy1_reg[7]_i_1_n_0 ;
  wire \gy1_reg[7]_i_1_n_1 ;
  wire \gy1_reg[7]_i_1_n_2 ;
  wire \gy1_reg[7]_i_1_n_3 ;
  wire \gy1_reg[7]_i_1_n_4 ;
  wire \gy1_reg[7]_i_1_n_5 ;
  wire \gy1_reg[7]_i_1_n_6 ;
  wire \gy1_reg[7]_i_1_n_7 ;
  wire \gy1_reg[9]_i_1_n_2 ;
  wire \gy1_reg[9]_i_1_n_7 ;
  wire gy2;
  wire [9:0]gy3;
  wire [8:1]gy32;
  wire \gy3[3]_i_2_n_0 ;
  wire \gy3[3]_i_3_n_0 ;
  wire \gy3[3]_i_4_n_0 ;
  wire \gy3[3]_i_5_n_0 ;
  wire \gy3[3]_i_6_n_0 ;
  wire \gy3[3]_i_7_n_0 ;
  wire \gy3[7]_i_2_n_0 ;
  wire \gy3[7]_i_3_n_0 ;
  wire \gy3[7]_i_4_n_0 ;
  wire \gy3[7]_i_5_n_0 ;
  wire \gy3[7]_i_6_n_0 ;
  wire \gy3[7]_i_7_n_0 ;
  wire \gy3[7]_i_8_n_0 ;
  wire \gy3[7]_i_9_n_0 ;
  wire \gy3[9]_i_2_n_0 ;
  wire \gy3_reg[3]_i_1_n_0 ;
  wire \gy3_reg[3]_i_1_n_1 ;
  wire \gy3_reg[3]_i_1_n_2 ;
  wire \gy3_reg[3]_i_1_n_3 ;
  wire \gy3_reg[7]_i_1_n_0 ;
  wire \gy3_reg[7]_i_1_n_1 ;
  wire \gy3_reg[7]_i_1_n_2 ;
  wire \gy3_reg[7]_i_1_n_3 ;
  wire \gy[3]_i_6_n_0 ;
  wire \gy[3]_i_7_n_0 ;
  wire \gy[3]_i_8_n_0 ;
  wire \gy[3]_i_9_n_0 ;
  wire \gy[7]_i_6_n_0 ;
  wire \gy[7]_i_7_n_0 ;
  wire \gy[7]_i_8_n_0 ;
  wire \gy[7]_i_9_n_0 ;
  wire \gy[9]_i_10_n_0 ;
  wire \gy[9]_i_11_n_0 ;
  wire \gy[9]_i_12_n_0 ;
  wire \gy[9]_i_13_n_0 ;
  wire \gy[9]_i_14_n_0 ;
  wire \gy[9]_i_15_n_0 ;
  wire \gy[9]_i_16_n_0 ;
  wire \gy[9]_i_3_n_0 ;
  wire \gy[9]_i_4_n_0 ;
  wire \gy[9]_i_7_n_0 ;
  wire \gy[9]_i_8_n_0 ;
  wire \gy[9]_i_9_n_0 ;
  wire \gy_reg[3]_i_1_n_0 ;
  wire \gy_reg[3]_i_1_n_1 ;
  wire \gy_reg[3]_i_1_n_2 ;
  wire \gy_reg[3]_i_1_n_3 ;
  wire \gy_reg[7]_i_1_n_0 ;
  wire \gy_reg[7]_i_1_n_1 ;
  wire \gy_reg[7]_i_1_n_2 ;
  wire \gy_reg[7]_i_1_n_3 ;
  wire \gy_reg[9]_i_1_n_3 ;
  wire \gy_reg[9]_i_6_n_0 ;
  wire \gy_reg[9]_i_6_n_1 ;
  wire \gy_reg[9]_i_6_n_2 ;
  wire \gy_reg[9]_i_6_n_3 ;
  wire hist_equ_href_o;
  wire hist_equ_vsync_o;
  wire \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ;
  wire \href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ;
  wire href_dly_reg_c_0_n_0;
  wire href_dly_reg_c_1_n_0;
  wire href_dly_reg_c_2_n_0;
  wire href_dly_reg_c_3_n_0;
  wire href_dly_reg_c_4_n_0;
  wire href_dly_reg_c_n_0;
  wire href_dly_reg_gate_n_0;
  wire in_href;
  wire [7:0]\in_r_reg[7] ;
  wire in_vsync;
  wire line2buf_n_0;
  wire line2buf_n_1;
  wire line2buf_n_2;
  wire line2buf_n_3;
  wire line2buf_n_4;
  wire line2buf_n_5;
  wire line2buf_n_6;
  wire line2buf_n_7;
  wire [7:0]out;
  wire \out[0]_i_1_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[3]_i_1_n_0 ;
  wire \out[4]_i_1_n_0 ;
  wire \out[5]_i_1_n_0 ;
  wire \out[6]_i_1_n_0 ;
  wire \out[7]_i_1_n_0 ;
  wire [7:0]p11;
  wire [7:0]p13;
  wire [7:0]p22;
  wire [7:0]p31;
  wire \p31[7]_i_1_n_0 ;
  wire [7:0]p33;
  wire [9:0]p_0_in;
  wire [8:0]p_1_in;
  wire pclk;
  wire rst_n;
  wire s_module_reset;
  wire s_sobel_en;
  wire sobel_href;
  wire sobel_vsync;
  wire [7:0]tap1x;
  wire \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ;
  wire \vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ;
  wire vsync_dly_reg_gate_n_0;
  wire [3:1]\NLW_g_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_reg[10]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_gx1_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gx1_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_gx3_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gx3_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_gx_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gx_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_gx_reg[9]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_gx_reg[9]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_gx_reg[9]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_gy1_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gy1_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_gy3_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gy3_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_gy_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gy_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_gy_reg[9]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_gy_reg[9]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_gy_reg[9]_i_6_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[16]_i_1__0 
       (.I0(sobel_href),
        .I1(out[0]),
        .I2(\in_r_reg[7] [0]),
        .I3(s_sobel_en),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[17]_i_1__0 
       (.I0(sobel_href),
        .I1(out[1]),
        .I2(\in_r_reg[7] [1]),
        .I3(s_sobel_en),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[18]_i_1__0 
       (.I0(sobel_href),
        .I1(out[2]),
        .I2(\in_r_reg[7] [2]),
        .I3(s_sobel_en),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[19]_i_1__0 
       (.I0(sobel_href),
        .I1(out[3]),
        .I2(\in_r_reg[7] [3]),
        .I3(s_sobel_en),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[20]_i_1__0 
       (.I0(sobel_href),
        .I1(out[4]),
        .I2(\in_r_reg[7] [4]),
        .I3(s_sobel_en),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[21]_i_1__0 
       (.I0(sobel_href),
        .I1(out[5]),
        .I2(\in_r_reg[7] [5]),
        .I3(s_sobel_en),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[22]_i_1__0 
       (.I0(sobel_href),
        .I1(out[6]),
        .I2(\in_r_reg[7] [6]),
        .I3(s_sobel_en),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[23]_i_1__0 
       (.I0(sobel_href),
        .I1(out[7]),
        .I2(\in_r_reg[7] [7]),
        .I3(s_sobel_en),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \g[10]_i_2 
       (.I0(gx[9]),
        .I1(gy[9]),
        .O(\g[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[10]_i_3 
       (.I0(gx[8]),
        .I1(gy[8]),
        .O(\g[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[3]_i_2 
       (.I0(gx[3]),
        .I1(gy[3]),
        .O(\g[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[3]_i_3 
       (.I0(gx[2]),
        .I1(gy[2]),
        .O(\g[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[3]_i_4 
       (.I0(gx[1]),
        .I1(gy[1]),
        .O(\g[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[3]_i_5 
       (.I0(gx[0]),
        .I1(gy[0]),
        .O(\g[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[7]_i_2 
       (.I0(gx[7]),
        .I1(gy[7]),
        .O(\g[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[7]_i_3 
       (.I0(gx[6]),
        .I1(gy[6]),
        .O(\g[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[7]_i_4 
       (.I0(gx[5]),
        .I1(gy[5]),
        .O(\g[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[7]_i_5 
       (.I0(gx[4]),
        .I1(gy[4]),
        .O(\g[7]_i_5_n_0 ));
  FDCE \g_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[3]_i_1_n_7 ),
        .Q(\g_reg_n_0_[0] ));
  FDCE \g_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[10]_i_1_n_1 ),
        .Q(\g_reg_n_0_[10] ));
  CARRY4 \g_reg[10]_i_1 
       (.CI(\g_reg[7]_i_1_n_0 ),
        .CO({\NLW_g_reg[10]_i_1_CO_UNCONNECTED [3],\g_reg[10]_i_1_n_1 ,\NLW_g_reg[10]_i_1_CO_UNCONNECTED [1],\g_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,gx[9:8]}),
        .O({\NLW_g_reg[10]_i_1_O_UNCONNECTED [3:2],\g_reg[10]_i_1_n_6 ,\g_reg[10]_i_1_n_7 }),
        .S({1'b0,1'b1,\g[10]_i_2_n_0 ,\g[10]_i_3_n_0 }));
  FDCE \g_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[3]_i_1_n_6 ),
        .Q(\g_reg_n_0_[1] ));
  FDCE \g_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[3]_i_1_n_5 ),
        .Q(\g_reg_n_0_[2] ));
  FDCE \g_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[3]_i_1_n_4 ),
        .Q(\g_reg_n_0_[3] ));
  CARRY4 \g_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\g_reg[3]_i_1_n_0 ,\g_reg[3]_i_1_n_1 ,\g_reg[3]_i_1_n_2 ,\g_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(gx[3:0]),
        .O({\g_reg[3]_i_1_n_4 ,\g_reg[3]_i_1_n_5 ,\g_reg[3]_i_1_n_6 ,\g_reg[3]_i_1_n_7 }),
        .S({\g[3]_i_2_n_0 ,\g[3]_i_3_n_0 ,\g[3]_i_4_n_0 ,\g[3]_i_5_n_0 }));
  FDCE \g_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[7]_i_1_n_7 ),
        .Q(\g_reg_n_0_[4] ));
  FDCE \g_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[7]_i_1_n_6 ),
        .Q(\g_reg_n_0_[5] ));
  FDCE \g_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[7]_i_1_n_5 ),
        .Q(\g_reg_n_0_[6] ));
  FDCE \g_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[7]_i_1_n_4 ),
        .Q(\g_reg_n_0_[7] ));
  CARRY4 \g_reg[7]_i_1 
       (.CI(\g_reg[3]_i_1_n_0 ),
        .CO({\g_reg[7]_i_1_n_0 ,\g_reg[7]_i_1_n_1 ,\g_reg[7]_i_1_n_2 ,\g_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(gx[7:4]),
        .O({\g_reg[7]_i_1_n_4 ,\g_reg[7]_i_1_n_5 ,\g_reg[7]_i_1_n_6 ,\g_reg[7]_i_1_n_7 }),
        .S({\g[7]_i_2_n_0 ,\g[7]_i_3_n_0 ,\g[7]_i_4_n_0 ,\g[7]_i_5_n_0 }));
  FDCE \g_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[10]_i_1_n_7 ),
        .Q(\g_reg_n_0_[8] ));
  FDCE \g_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\g_reg[10]_i_1_n_6 ),
        .Q(\g_reg_n_0_[9] ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gx1[3]_i_2 
       (.I0(gx12[2]),
        .I1(p31[2]),
        .I2(p11[2]),
        .O(\gx1[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gx1[3]_i_3 
       (.I0(p11[2]),
        .I1(gx12[2]),
        .I2(p31[2]),
        .O(\gx1[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gx1[3]_i_4 
       (.I0(gx12[3]),
        .I1(p31[3]),
        .I2(p11[3]),
        .I3(\gx1[3]_i_2_n_0 ),
        .O(\gx1[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \gx1[3]_i_5 
       (.I0(gx12[2]),
        .I1(p31[2]),
        .I2(p11[2]),
        .I3(p31[1]),
        .I4(gx12[1]),
        .O(\gx1[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gx1[3]_i_6 
       (.I0(gx12[1]),
        .I1(p31[1]),
        .I2(p11[1]),
        .O(\gx1[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gx1[3]_i_7 
       (.I0(p11[0]),
        .I1(p31[0]),
        .O(\gx1[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gx1[7]_i_2 
       (.I0(gx12[6]),
        .I1(p31[6]),
        .I2(p11[6]),
        .O(\gx1[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gx1[7]_i_3 
       (.I0(gx12[5]),
        .I1(p31[5]),
        .I2(p11[5]),
        .O(\gx1[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gx1[7]_i_4 
       (.I0(gx12[4]),
        .I1(p31[4]),
        .I2(p11[4]),
        .O(\gx1[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gx1[7]_i_5 
       (.I0(gx12[3]),
        .I1(p31[3]),
        .I2(p11[3]),
        .O(\gx1[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \gx1[7]_i_6 
       (.I0(\gx1[7]_i_2_n_0 ),
        .I1(p31[7]),
        .I2(gx12[7]),
        .I3(p11[7]),
        .O(\gx1[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gx1[7]_i_7 
       (.I0(gx12[6]),
        .I1(p31[6]),
        .I2(p11[6]),
        .I3(\gx1[7]_i_3_n_0 ),
        .O(\gx1[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gx1[7]_i_8 
       (.I0(gx12[5]),
        .I1(p31[5]),
        .I2(p11[5]),
        .I3(\gx1[7]_i_4_n_0 ),
        .O(\gx1[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gx1[7]_i_9 
       (.I0(gx12[4]),
        .I1(p31[4]),
        .I2(p11[4]),
        .I3(\gx1[7]_i_5_n_0 ),
        .O(\gx1[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \gx1[9]_i_2 
       (.I0(p11[7]),
        .I1(p31[7]),
        .I2(gx12[7]),
        .I3(gx12[8]),
        .O(\gx1[9]_i_2_n_0 ));
  FDCE \gx1_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx1_reg[3]_i_1_n_7 ),
        .Q(gx1[0]));
  FDCE \gx1_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx1_reg[3]_i_1_n_6 ),
        .Q(gx1[1]));
  FDCE \gx1_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx1_reg[3]_i_1_n_5 ),
        .Q(gx1[2]));
  FDCE \gx1_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx1_reg[3]_i_1_n_4 ),
        .Q(gx1[3]));
  CARRY4 \gx1_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gx1_reg[3]_i_1_n_0 ,\gx1_reg[3]_i_1_n_1 ,\gx1_reg[3]_i_1_n_2 ,\gx1_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gx1[3]_i_2_n_0 ,\gx1[3]_i_3_n_0 ,p11[1:0]}),
        .O({\gx1_reg[3]_i_1_n_4 ,\gx1_reg[3]_i_1_n_5 ,\gx1_reg[3]_i_1_n_6 ,\gx1_reg[3]_i_1_n_7 }),
        .S({\gx1[3]_i_4_n_0 ,\gx1[3]_i_5_n_0 ,\gx1[3]_i_6_n_0 ,\gx1[3]_i_7_n_0 }));
  FDCE \gx1_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx1_reg[7]_i_1_n_7 ),
        .Q(gx1[4]));
  FDCE \gx1_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx1_reg[7]_i_1_n_6 ),
        .Q(gx1[5]));
  FDCE \gx1_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx1_reg[7]_i_1_n_5 ),
        .Q(gx1[6]));
  FDCE \gx1_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx1_reg[7]_i_1_n_4 ),
        .Q(gx1[7]));
  CARRY4 \gx1_reg[7]_i_1 
       (.CI(\gx1_reg[3]_i_1_n_0 ),
        .CO({\gx1_reg[7]_i_1_n_0 ,\gx1_reg[7]_i_1_n_1 ,\gx1_reg[7]_i_1_n_2 ,\gx1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gx1[7]_i_2_n_0 ,\gx1[7]_i_3_n_0 ,\gx1[7]_i_4_n_0 ,\gx1[7]_i_5_n_0 }),
        .O({\gx1_reg[7]_i_1_n_4 ,\gx1_reg[7]_i_1_n_5 ,\gx1_reg[7]_i_1_n_6 ,\gx1_reg[7]_i_1_n_7 }),
        .S({\gx1[7]_i_6_n_0 ,\gx1[7]_i_7_n_0 ,\gx1[7]_i_8_n_0 ,\gx1[7]_i_9_n_0 }));
  FDCE \gx1_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx1_reg[9]_i_1_n_7 ),
        .Q(gx1[8]));
  FDCE \gx1_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx1_reg[9]_i_1_n_2 ),
        .Q(gx1[9]));
  CARRY4 \gx1_reg[9]_i_1 
       (.CI(\gx1_reg[7]_i_1_n_0 ),
        .CO({\NLW_gx1_reg[9]_i_1_CO_UNCONNECTED [3:2],\gx1_reg[9]_i_1_n_2 ,\NLW_gx1_reg[9]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gx12[8]}),
        .O({\NLW_gx1_reg[9]_i_1_O_UNCONNECTED [3:1],\gx1_reg[9]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,\gx1[9]_i_2_n_0 }));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gx3[3]_i_2 
       (.I0(gx32[2]),
        .I1(p33[2]),
        .I2(p13[2]),
        .O(\gx3[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gx3[3]_i_3 
       (.I0(p13[2]),
        .I1(gx32[2]),
        .I2(p33[2]),
        .O(\gx3[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gx3[3]_i_4 
       (.I0(gx32[3]),
        .I1(p33[3]),
        .I2(p13[3]),
        .I3(\gx3[3]_i_2_n_0 ),
        .O(\gx3[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \gx3[3]_i_5 
       (.I0(gx32[2]),
        .I1(p33[2]),
        .I2(p13[2]),
        .I3(p33[1]),
        .I4(gx32[1]),
        .O(\gx3[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gx3[3]_i_6 
       (.I0(gx32[1]),
        .I1(p33[1]),
        .I2(p13[1]),
        .O(\gx3[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gx3[3]_i_7 
       (.I0(p13[0]),
        .I1(p33[0]),
        .O(\gx3[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gx3[7]_i_2 
       (.I0(gx32[6]),
        .I1(p33[6]),
        .I2(p13[6]),
        .O(\gx3[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gx3[7]_i_3 
       (.I0(gx32[5]),
        .I1(p33[5]),
        .I2(p13[5]),
        .O(\gx3[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gx3[7]_i_4 
       (.I0(gx32[4]),
        .I1(p33[4]),
        .I2(p13[4]),
        .O(\gx3[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gx3[7]_i_5 
       (.I0(gx32[3]),
        .I1(p33[3]),
        .I2(p13[3]),
        .O(\gx3[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \gx3[7]_i_6 
       (.I0(\gx3[7]_i_2_n_0 ),
        .I1(p33[7]),
        .I2(gx32[7]),
        .I3(p13[7]),
        .O(\gx3[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gx3[7]_i_7 
       (.I0(gx32[6]),
        .I1(p33[6]),
        .I2(p13[6]),
        .I3(\gx3[7]_i_3_n_0 ),
        .O(\gx3[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gx3[7]_i_8 
       (.I0(gx32[5]),
        .I1(p33[5]),
        .I2(p13[5]),
        .I3(\gx3[7]_i_4_n_0 ),
        .O(\gx3[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gx3[7]_i_9 
       (.I0(gx32[4]),
        .I1(p33[4]),
        .I2(p13[4]),
        .I3(\gx3[7]_i_5_n_0 ),
        .O(\gx3[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \gx3[9]_i_2 
       (.I0(p13[7]),
        .I1(p33[7]),
        .I2(gx32[7]),
        .I3(gx32[8]),
        .O(\gx3[9]_i_2_n_0 ));
  FDCE \gx3_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx3_reg[3]_i_1_n_7 ),
        .Q(gx3[0]));
  FDCE \gx3_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx3_reg[3]_i_1_n_6 ),
        .Q(gx3[1]));
  FDCE \gx3_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx3_reg[3]_i_1_n_5 ),
        .Q(gx3[2]));
  FDCE \gx3_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx3_reg[3]_i_1_n_4 ),
        .Q(gx3[3]));
  CARRY4 \gx3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gx3_reg[3]_i_1_n_0 ,\gx3_reg[3]_i_1_n_1 ,\gx3_reg[3]_i_1_n_2 ,\gx3_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gx3[3]_i_2_n_0 ,\gx3[3]_i_3_n_0 ,p13[1:0]}),
        .O({\gx3_reg[3]_i_1_n_4 ,\gx3_reg[3]_i_1_n_5 ,\gx3_reg[3]_i_1_n_6 ,\gx3_reg[3]_i_1_n_7 }),
        .S({\gx3[3]_i_4_n_0 ,\gx3[3]_i_5_n_0 ,\gx3[3]_i_6_n_0 ,\gx3[3]_i_7_n_0 }));
  FDCE \gx3_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx3_reg[7]_i_1_n_7 ),
        .Q(gx3[4]));
  FDCE \gx3_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx3_reg[7]_i_1_n_6 ),
        .Q(gx3[5]));
  FDCE \gx3_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx3_reg[7]_i_1_n_5 ),
        .Q(gx3[6]));
  FDCE \gx3_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx3_reg[7]_i_1_n_4 ),
        .Q(gx3[7]));
  CARRY4 \gx3_reg[7]_i_1 
       (.CI(\gx3_reg[3]_i_1_n_0 ),
        .CO({\gx3_reg[7]_i_1_n_0 ,\gx3_reg[7]_i_1_n_1 ,\gx3_reg[7]_i_1_n_2 ,\gx3_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gx3[7]_i_2_n_0 ,\gx3[7]_i_3_n_0 ,\gx3[7]_i_4_n_0 ,\gx3[7]_i_5_n_0 }),
        .O({\gx3_reg[7]_i_1_n_4 ,\gx3_reg[7]_i_1_n_5 ,\gx3_reg[7]_i_1_n_6 ,\gx3_reg[7]_i_1_n_7 }),
        .S({\gx3[7]_i_6_n_0 ,\gx3[7]_i_7_n_0 ,\gx3[7]_i_8_n_0 ,\gx3[7]_i_9_n_0 }));
  FDCE \gx3_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx3_reg[9]_i_1_n_7 ),
        .Q(gx3[8]));
  FDCE \gx3_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gx3_reg[9]_i_1_n_2 ),
        .Q(gx3[9]));
  CARRY4 \gx3_reg[9]_i_1 
       (.CI(\gx3_reg[7]_i_1_n_0 ),
        .CO({\NLW_gx3_reg[9]_i_1_CO_UNCONNECTED [3:2],\gx3_reg[9]_i_1_n_2 ,\NLW_gx3_reg[9]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gx32[8]}),
        .O({\NLW_gx3_reg[9]_i_1_O_UNCONNECTED [3:1],\gx3_reg[9]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,\gx3[9]_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h53)) 
    \gx[3]_i_2 
       (.I0(gx3[3]),
        .I1(gx1[3]),
        .I2(gx2),
        .O(\gx[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \gx[3]_i_3 
       (.I0(gx3[2]),
        .I1(gx1[2]),
        .I2(gx2),
        .O(\gx[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \gx[3]_i_4 
       (.I0(gx3[1]),
        .I1(gx1[1]),
        .I2(gx2),
        .O(\gx[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \gx[3]_i_5 
       (.I0(gx3[0]),
        .I1(gx1[0]),
        .I2(gx2),
        .O(\gx[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gx[3]_i_6 
       (.I0(gx3[3]),
        .I1(gx1[3]),
        .O(\gx[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gx[3]_i_7 
       (.I0(gx3[2]),
        .I1(gx1[2]),
        .O(\gx[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gx[3]_i_8 
       (.I0(gx3[1]),
        .I1(gx1[1]),
        .O(\gx[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gx[3]_i_9 
       (.I0(gx3[0]),
        .I1(gx1[0]),
        .O(\gx[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \gx[7]_i_2 
       (.I0(gx3[7]),
        .I1(gx1[7]),
        .I2(gx2),
        .O(\gx[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \gx[7]_i_3 
       (.I0(gx3[6]),
        .I1(gx1[6]),
        .I2(gx2),
        .O(\gx[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \gx[7]_i_4 
       (.I0(gx3[5]),
        .I1(gx1[5]),
        .I2(gx2),
        .O(\gx[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \gx[7]_i_5 
       (.I0(gx3[4]),
        .I1(gx1[4]),
        .I2(gx2),
        .O(\gx[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gx[7]_i_6 
       (.I0(gx3[7]),
        .I1(gx1[7]),
        .O(\gx[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gx[7]_i_7 
       (.I0(gx3[6]),
        .I1(gx1[6]),
        .O(\gx[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gx[7]_i_8 
       (.I0(gx3[5]),
        .I1(gx1[5]),
        .O(\gx[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gx[7]_i_9 
       (.I0(gx3[4]),
        .I1(gx1[4]),
        .O(\gx[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gx[9]_i_10 
       (.I0(gx1[4]),
        .I1(gx3[4]),
        .I2(gx3[5]),
        .I3(gx1[5]),
        .O(\gx[9]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gx[9]_i_11 
       (.I0(gx1[2]),
        .I1(gx3[2]),
        .I2(gx3[3]),
        .I3(gx1[3]),
        .O(\gx[9]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gx[9]_i_12 
       (.I0(gx1[0]),
        .I1(gx3[0]),
        .I2(gx3[1]),
        .I3(gx1[1]),
        .O(\gx[9]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gx[9]_i_13 
       (.I0(gx1[6]),
        .I1(gx3[6]),
        .I2(gx1[7]),
        .I3(gx3[7]),
        .O(\gx[9]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gx[9]_i_14 
       (.I0(gx1[4]),
        .I1(gx3[4]),
        .I2(gx1[5]),
        .I3(gx3[5]),
        .O(\gx[9]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gx[9]_i_15 
       (.I0(gx1[2]),
        .I1(gx3[2]),
        .I2(gx1[3]),
        .I3(gx3[3]),
        .O(\gx[9]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gx[9]_i_16 
       (.I0(gx1[0]),
        .I1(gx3[0]),
        .I2(gx1[1]),
        .I3(gx3[1]),
        .O(\gx[9]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \gx[9]_i_2 
       (.I0(gx3[8]),
        .I1(gx1[8]),
        .I2(gx2),
        .O(\gx[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gx[9]_i_3 
       (.I0(gx3[9]),
        .I1(gx1[9]),
        .O(\gx[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gx[9]_i_4 
       (.I0(gx3[8]),
        .I1(gx1[8]),
        .O(\gx[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gx[9]_i_7 
       (.I0(gx1[8]),
        .I1(gx3[8]),
        .I2(gx3[9]),
        .I3(gx1[9]),
        .O(\gx[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gx[9]_i_8 
       (.I0(gx1[8]),
        .I1(gx3[8]),
        .I2(gx1[9]),
        .I3(gx3[9]),
        .O(\gx[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gx[9]_i_9 
       (.I0(gx1[6]),
        .I1(gx3[6]),
        .I2(gx3[7]),
        .I3(gx1[7]),
        .O(\gx[9]_i_9_n_0 ));
  FDCE \gx_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[0]),
        .Q(gx[0]));
  FDCE \gx_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[1]),
        .Q(gx[1]));
  FDCE \gx_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[2]),
        .Q(gx[2]));
  FDCE \gx_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[3]),
        .Q(gx[3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gx_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gx_reg[3]_i_1_n_0 ,\gx_reg[3]_i_1_n_1 ,\gx_reg[3]_i_1_n_2 ,\gx_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\gx[3]_i_2_n_0 ,\gx[3]_i_3_n_0 ,\gx[3]_i_4_n_0 ,\gx[3]_i_5_n_0 }),
        .O(gx0[3:0]),
        .S({\gx[3]_i_6_n_0 ,\gx[3]_i_7_n_0 ,\gx[3]_i_8_n_0 ,\gx[3]_i_9_n_0 }));
  FDCE \gx_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[4]),
        .Q(gx[4]));
  FDCE \gx_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[5]),
        .Q(gx[5]));
  FDCE \gx_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[6]),
        .Q(gx[6]));
  FDCE \gx_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[7]),
        .Q(gx[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gx_reg[7]_i_1 
       (.CI(\gx_reg[3]_i_1_n_0 ),
        .CO({\gx_reg[7]_i_1_n_0 ,\gx_reg[7]_i_1_n_1 ,\gx_reg[7]_i_1_n_2 ,\gx_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gx[7]_i_2_n_0 ,\gx[7]_i_3_n_0 ,\gx[7]_i_4_n_0 ,\gx[7]_i_5_n_0 }),
        .O(gx0[7:4]),
        .S({\gx[7]_i_6_n_0 ,\gx[7]_i_7_n_0 ,\gx[7]_i_8_n_0 ,\gx[7]_i_9_n_0 }));
  FDCE \gx_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[8]),
        .Q(gx[8]));
  FDCE \gx_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx0[9]),
        .Q(gx[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gx_reg[9]_i_1 
       (.CI(\gx_reg[7]_i_1_n_0 ),
        .CO({\NLW_gx_reg[9]_i_1_CO_UNCONNECTED [3:1],\gx_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\gx[9]_i_2_n_0 }),
        .O({\NLW_gx_reg[9]_i_1_O_UNCONNECTED [3:2],gx0[9:8]}),
        .S({1'b0,1'b0,\gx[9]_i_3_n_0 ,\gx[9]_i_4_n_0 }));
  CARRY4 \gx_reg[9]_i_5 
       (.CI(\gx_reg[9]_i_6_n_0 ),
        .CO({\NLW_gx_reg[9]_i_5_CO_UNCONNECTED [3:1],gx2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\gx[9]_i_7_n_0 }),
        .O(\NLW_gx_reg[9]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\gx[9]_i_8_n_0 }));
  CARRY4 \gx_reg[9]_i_6 
       (.CI(1'b0),
        .CO({\gx_reg[9]_i_6_n_0 ,\gx_reg[9]_i_6_n_1 ,\gx_reg[9]_i_6_n_2 ,\gx_reg[9]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\gx[9]_i_9_n_0 ,\gx[9]_i_10_n_0 ,\gx[9]_i_11_n_0 ,\gx[9]_i_12_n_0 }),
        .O(\NLW_gx_reg[9]_i_6_O_UNCONNECTED [3:0]),
        .S({\gx[9]_i_13_n_0 ,\gx[9]_i_14_n_0 ,\gx[9]_i_15_n_0 ,\gx[9]_i_16_n_0 }));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gy1[3]_i_2 
       (.I0(gy12[2]),
        .I1(p13[2]),
        .I2(p11[2]),
        .O(\gy1[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gy1[3]_i_3 
       (.I0(p11[2]),
        .I1(gy12[2]),
        .I2(p13[2]),
        .O(\gy1[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gy1[3]_i_4 
       (.I0(gy12[3]),
        .I1(p13[3]),
        .I2(p11[3]),
        .I3(\gy1[3]_i_2_n_0 ),
        .O(\gy1[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \gy1[3]_i_5 
       (.I0(gy12[2]),
        .I1(p13[2]),
        .I2(p11[2]),
        .I3(p13[1]),
        .I4(gy12[1]),
        .O(\gy1[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gy1[3]_i_6 
       (.I0(gy12[1]),
        .I1(p13[1]),
        .I2(p11[1]),
        .O(\gy1[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gy1[3]_i_7 
       (.I0(p11[0]),
        .I1(p13[0]),
        .O(\gy1[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gy1[7]_i_2 
       (.I0(gy12[6]),
        .I1(p13[6]),
        .I2(p11[6]),
        .O(\gy1[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gy1[7]_i_3 
       (.I0(gy12[5]),
        .I1(p13[5]),
        .I2(p11[5]),
        .O(\gy1[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gy1[7]_i_4 
       (.I0(gy12[4]),
        .I1(p13[4]),
        .I2(p11[4]),
        .O(\gy1[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gy1[7]_i_5 
       (.I0(gy12[3]),
        .I1(p13[3]),
        .I2(p11[3]),
        .O(\gy1[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \gy1[7]_i_6 
       (.I0(\gy1[7]_i_2_n_0 ),
        .I1(p13[7]),
        .I2(gy12[7]),
        .I3(p11[7]),
        .O(\gy1[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gy1[7]_i_7 
       (.I0(gy12[6]),
        .I1(p13[6]),
        .I2(p11[6]),
        .I3(\gy1[7]_i_3_n_0 ),
        .O(\gy1[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gy1[7]_i_8 
       (.I0(gy12[5]),
        .I1(p13[5]),
        .I2(p11[5]),
        .I3(\gy1[7]_i_4_n_0 ),
        .O(\gy1[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gy1[7]_i_9 
       (.I0(gy12[4]),
        .I1(p13[4]),
        .I2(p11[4]),
        .I3(\gy1[7]_i_5_n_0 ),
        .O(\gy1[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \gy1[9]_i_2 
       (.I0(p11[7]),
        .I1(p13[7]),
        .I2(gy12[7]),
        .I3(gy12[8]),
        .O(\gy1[9]_i_2_n_0 ));
  FDCE \gy1_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gy1_reg[3]_i_1_n_7 ),
        .Q(gy1[0]));
  FDCE \gy1_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gy1_reg[3]_i_1_n_6 ),
        .Q(gy1[1]));
  FDCE \gy1_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gy1_reg[3]_i_1_n_5 ),
        .Q(gy1[2]));
  FDCE \gy1_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gy1_reg[3]_i_1_n_4 ),
        .Q(gy1[3]));
  CARRY4 \gy1_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gy1_reg[3]_i_1_n_0 ,\gy1_reg[3]_i_1_n_1 ,\gy1_reg[3]_i_1_n_2 ,\gy1_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gy1[3]_i_2_n_0 ,\gy1[3]_i_3_n_0 ,p11[1:0]}),
        .O({\gy1_reg[3]_i_1_n_4 ,\gy1_reg[3]_i_1_n_5 ,\gy1_reg[3]_i_1_n_6 ,\gy1_reg[3]_i_1_n_7 }),
        .S({\gy1[3]_i_4_n_0 ,\gy1[3]_i_5_n_0 ,\gy1[3]_i_6_n_0 ,\gy1[3]_i_7_n_0 }));
  FDCE \gy1_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gy1_reg[7]_i_1_n_7 ),
        .Q(gy1[4]));
  FDCE \gy1_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gy1_reg[7]_i_1_n_6 ),
        .Q(gy1[5]));
  FDCE \gy1_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gy1_reg[7]_i_1_n_5 ),
        .Q(gy1[6]));
  FDCE \gy1_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gy1_reg[7]_i_1_n_4 ),
        .Q(gy1[7]));
  CARRY4 \gy1_reg[7]_i_1 
       (.CI(\gy1_reg[3]_i_1_n_0 ),
        .CO({\gy1_reg[7]_i_1_n_0 ,\gy1_reg[7]_i_1_n_1 ,\gy1_reg[7]_i_1_n_2 ,\gy1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gy1[7]_i_2_n_0 ,\gy1[7]_i_3_n_0 ,\gy1[7]_i_4_n_0 ,\gy1[7]_i_5_n_0 }),
        .O({\gy1_reg[7]_i_1_n_4 ,\gy1_reg[7]_i_1_n_5 ,\gy1_reg[7]_i_1_n_6 ,\gy1_reg[7]_i_1_n_7 }),
        .S({\gy1[7]_i_6_n_0 ,\gy1[7]_i_7_n_0 ,\gy1[7]_i_8_n_0 ,\gy1[7]_i_9_n_0 }));
  FDCE \gy1_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gy1_reg[9]_i_1_n_7 ),
        .Q(gy1[8]));
  FDCE \gy1_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\gy1_reg[9]_i_1_n_2 ),
        .Q(gy1[9]));
  CARRY4 \gy1_reg[9]_i_1 
       (.CI(\gy1_reg[7]_i_1_n_0 ),
        .CO({\NLW_gy1_reg[9]_i_1_CO_UNCONNECTED [3:2],\gy1_reg[9]_i_1_n_2 ,\NLW_gy1_reg[9]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gy12[8]}),
        .O({\NLW_gy1_reg[9]_i_1_O_UNCONNECTED [3:1],\gy1_reg[9]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,\gy1[9]_i_2_n_0 }));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gy3[3]_i_2 
       (.I0(gy32[2]),
        .I1(p33[2]),
        .I2(p31[2]),
        .O(\gy3[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gy3[3]_i_3 
       (.I0(p31[2]),
        .I1(gy32[2]),
        .I2(p33[2]),
        .O(\gy3[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gy3[3]_i_4 
       (.I0(gy32[3]),
        .I1(p33[3]),
        .I2(p31[3]),
        .I3(\gy3[3]_i_2_n_0 ),
        .O(\gy3[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \gy3[3]_i_5 
       (.I0(gy32[2]),
        .I1(p33[2]),
        .I2(p31[2]),
        .I3(p33[1]),
        .I4(gy32[1]),
        .O(\gy3[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gy3[3]_i_6 
       (.I0(gy32[1]),
        .I1(p33[1]),
        .I2(p31[1]),
        .O(\gy3[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gy3[3]_i_7 
       (.I0(p31[0]),
        .I1(p33[0]),
        .O(\gy3[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gy3[7]_i_2 
       (.I0(gy32[6]),
        .I1(p33[6]),
        .I2(p31[6]),
        .O(\gy3[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gy3[7]_i_3 
       (.I0(gy32[5]),
        .I1(p33[5]),
        .I2(p31[5]),
        .O(\gy3[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gy3[7]_i_4 
       (.I0(gy32[4]),
        .I1(p33[4]),
        .I2(p31[4]),
        .O(\gy3[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gy3[7]_i_5 
       (.I0(gy32[3]),
        .I1(p33[3]),
        .I2(p31[3]),
        .O(\gy3[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \gy3[7]_i_6 
       (.I0(\gy3[7]_i_2_n_0 ),
        .I1(p33[7]),
        .I2(gy32[7]),
        .I3(p31[7]),
        .O(\gy3[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gy3[7]_i_7 
       (.I0(gy32[6]),
        .I1(p33[6]),
        .I2(p31[6]),
        .I3(\gy3[7]_i_3_n_0 ),
        .O(\gy3[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gy3[7]_i_8 
       (.I0(gy32[5]),
        .I1(p33[5]),
        .I2(p31[5]),
        .I3(\gy3[7]_i_4_n_0 ),
        .O(\gy3[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gy3[7]_i_9 
       (.I0(gy32[4]),
        .I1(p33[4]),
        .I2(p31[4]),
        .I3(\gy3[7]_i_5_n_0 ),
        .O(\gy3[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \gy3[9]_i_2 
       (.I0(p31[7]),
        .I1(p33[7]),
        .I2(gy32[7]),
        .I3(gy32[8]),
        .O(\gy3[9]_i_2_n_0 ));
  FDCE \gy3_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(gy3[0]));
  FDCE \gy3_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(gy3[1]));
  FDCE \gy3_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(gy3[2]));
  FDCE \gy3_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(gy3[3]));
  CARRY4 \gy3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gy3_reg[3]_i_1_n_0 ,\gy3_reg[3]_i_1_n_1 ,\gy3_reg[3]_i_1_n_2 ,\gy3_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gy3[3]_i_2_n_0 ,\gy3[3]_i_3_n_0 ,p31[1:0]}),
        .O(p_0_in[3:0]),
        .S({\gy3[3]_i_4_n_0 ,\gy3[3]_i_5_n_0 ,\gy3[3]_i_6_n_0 ,\gy3[3]_i_7_n_0 }));
  FDCE \gy3_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(gy3[4]));
  FDCE \gy3_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(gy3[5]));
  FDCE \gy3_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(gy3[6]));
  FDCE \gy3_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(gy3[7]));
  CARRY4 \gy3_reg[7]_i_1 
       (.CI(\gy3_reg[3]_i_1_n_0 ),
        .CO({\gy3_reg[7]_i_1_n_0 ,\gy3_reg[7]_i_1_n_1 ,\gy3_reg[7]_i_1_n_2 ,\gy3_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gy3[7]_i_2_n_0 ,\gy3[7]_i_3_n_0 ,\gy3[7]_i_4_n_0 ,\gy3[7]_i_5_n_0 }),
        .O(p_0_in[7:4]),
        .S({\gy3[7]_i_6_n_0 ,\gy3[7]_i_7_n_0 ,\gy3[7]_i_8_n_0 ,\gy3[7]_i_9_n_0 }));
  FDCE \gy3_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(gy3[8]));
  FDCE \gy3_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(gy3[9]));
  CARRY4 \gy3_reg[9]_i_1 
       (.CI(\gy3_reg[7]_i_1_n_0 ),
        .CO({\NLW_gy3_reg[9]_i_1_CO_UNCONNECTED [3:2],p_0_in[9],\NLW_gy3_reg[9]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gy32[8]}),
        .O({\NLW_gy3_reg[9]_i_1_O_UNCONNECTED [3:1],p_0_in[8]}),
        .S({1'b0,1'b0,1'b1,\gy3[9]_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h53)) 
    \gy[3]_i_2 
       (.I0(gy3[3]),
        .I1(gy1[3]),
        .I2(gy2),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'h53)) 
    \gy[3]_i_3 
       (.I0(gy3[2]),
        .I1(gy1[2]),
        .I2(gy2),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'h53)) 
    \gy[3]_i_4 
       (.I0(gy3[1]),
        .I1(gy1[1]),
        .I2(gy2),
        .O(p_1_in[1]));
  LUT3 #(
    .INIT(8'h53)) 
    \gy[3]_i_5 
       (.I0(gy3[0]),
        .I1(gy1[0]),
        .I2(gy2),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gy[3]_i_6 
       (.I0(gy3[3]),
        .I1(gy1[3]),
        .O(\gy[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gy[3]_i_7 
       (.I0(gy3[2]),
        .I1(gy1[2]),
        .O(\gy[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gy[3]_i_8 
       (.I0(gy3[1]),
        .I1(gy1[1]),
        .O(\gy[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gy[3]_i_9 
       (.I0(gy3[0]),
        .I1(gy1[0]),
        .O(\gy[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \gy[7]_i_2 
       (.I0(gy3[7]),
        .I1(gy1[7]),
        .I2(gy2),
        .O(p_1_in[7]));
  LUT3 #(
    .INIT(8'h53)) 
    \gy[7]_i_3 
       (.I0(gy3[6]),
        .I1(gy1[6]),
        .I2(gy2),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'h53)) 
    \gy[7]_i_4 
       (.I0(gy3[5]),
        .I1(gy1[5]),
        .I2(gy2),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'h53)) 
    \gy[7]_i_5 
       (.I0(gy3[4]),
        .I1(gy1[4]),
        .I2(gy2),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gy[7]_i_6 
       (.I0(gy3[7]),
        .I1(gy1[7]),
        .O(\gy[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gy[7]_i_7 
       (.I0(gy3[6]),
        .I1(gy1[6]),
        .O(\gy[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gy[7]_i_8 
       (.I0(gy3[5]),
        .I1(gy1[5]),
        .O(\gy[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gy[7]_i_9 
       (.I0(gy3[4]),
        .I1(gy1[4]),
        .O(\gy[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gy[9]_i_10 
       (.I0(gy1[4]),
        .I1(gy3[4]),
        .I2(gy3[5]),
        .I3(gy1[5]),
        .O(\gy[9]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gy[9]_i_11 
       (.I0(gy1[2]),
        .I1(gy3[2]),
        .I2(gy3[3]),
        .I3(gy1[3]),
        .O(\gy[9]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gy[9]_i_12 
       (.I0(gy1[0]),
        .I1(gy3[0]),
        .I2(gy3[1]),
        .I3(gy1[1]),
        .O(\gy[9]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gy[9]_i_13 
       (.I0(gy1[6]),
        .I1(gy3[6]),
        .I2(gy1[7]),
        .I3(gy3[7]),
        .O(\gy[9]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gy[9]_i_14 
       (.I0(gy1[4]),
        .I1(gy3[4]),
        .I2(gy1[5]),
        .I3(gy3[5]),
        .O(\gy[9]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gy[9]_i_15 
       (.I0(gy1[2]),
        .I1(gy3[2]),
        .I2(gy1[3]),
        .I3(gy3[3]),
        .O(\gy[9]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gy[9]_i_16 
       (.I0(gy1[0]),
        .I1(gy3[0]),
        .I2(gy1[1]),
        .I3(gy3[1]),
        .O(\gy[9]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \gy[9]_i_2 
       (.I0(gy3[8]),
        .I1(gy1[8]),
        .I2(gy2),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h9)) 
    \gy[9]_i_3 
       (.I0(gy3[9]),
        .I1(gy1[9]),
        .O(\gy[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gy[9]_i_4 
       (.I0(gy3[8]),
        .I1(gy1[8]),
        .O(\gy[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gy[9]_i_7 
       (.I0(gy1[8]),
        .I1(gy3[8]),
        .I2(gy3[9]),
        .I3(gy1[9]),
        .O(\gy[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gy[9]_i_8 
       (.I0(gy1[8]),
        .I1(gy3[8]),
        .I2(gy1[9]),
        .I3(gy3[9]),
        .O(\gy[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gy[9]_i_9 
       (.I0(gy1[6]),
        .I1(gy3[6]),
        .I2(gy3[7]),
        .I3(gy1[7]),
        .O(\gy[9]_i_9_n_0 ));
  FDCE \gy_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[0]),
        .Q(gy[0]));
  FDCE \gy_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[1]),
        .Q(gy[1]));
  FDCE \gy_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[2]),
        .Q(gy[2]));
  FDCE \gy_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[3]),
        .Q(gy[3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gy_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gy_reg[3]_i_1_n_0 ,\gy_reg[3]_i_1_n_1 ,\gy_reg[3]_i_1_n_2 ,\gy_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O(gy0[3:0]),
        .S({\gy[3]_i_6_n_0 ,\gy[3]_i_7_n_0 ,\gy[3]_i_8_n_0 ,\gy[3]_i_9_n_0 }));
  FDCE \gy_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[4]),
        .Q(gy[4]));
  FDCE \gy_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[5]),
        .Q(gy[5]));
  FDCE \gy_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[6]),
        .Q(gy[6]));
  FDCE \gy_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[7]),
        .Q(gy[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gy_reg[7]_i_1 
       (.CI(\gy_reg[3]_i_1_n_0 ),
        .CO({\gy_reg[7]_i_1_n_0 ,\gy_reg[7]_i_1_n_1 ,\gy_reg[7]_i_1_n_2 ,\gy_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in[7:4]),
        .O(gy0[7:4]),
        .S({\gy[7]_i_6_n_0 ,\gy[7]_i_7_n_0 ,\gy[7]_i_8_n_0 ,\gy[7]_i_9_n_0 }));
  FDCE \gy_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[8]),
        .Q(gy[8]));
  FDCE \gy_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy0[9]),
        .Q(gy[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gy_reg[9]_i_1 
       (.CI(\gy_reg[7]_i_1_n_0 ),
        .CO({\NLW_gy_reg[9]_i_1_CO_UNCONNECTED [3:1],\gy_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[8]}),
        .O({\NLW_gy_reg[9]_i_1_O_UNCONNECTED [3:2],gy0[9:8]}),
        .S({1'b0,1'b0,\gy[9]_i_3_n_0 ,\gy[9]_i_4_n_0 }));
  CARRY4 \gy_reg[9]_i_5 
       (.CI(\gy_reg[9]_i_6_n_0 ),
        .CO({\NLW_gy_reg[9]_i_5_CO_UNCONNECTED [3:1],gy2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\gy[9]_i_7_n_0 }),
        .O(\NLW_gy_reg[9]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\gy[9]_i_8_n_0 }));
  CARRY4 \gy_reg[9]_i_6 
       (.CI(1'b0),
        .CO({\gy_reg[9]_i_6_n_0 ,\gy_reg[9]_i_6_n_1 ,\gy_reg[9]_i_6_n_2 ,\gy_reg[9]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\gy[9]_i_9_n_0 ,\gy[9]_i_10_n_0 ,\gy[9]_i_11_n_0 ,\gy[9]_i_12_n_0 }),
        .O(\NLW_gy_reg[9]_i_6_O_UNCONNECTED [3:0]),
        .S({\gy[9]_i_13_n_0 ,\gy[9]_i_14_n_0 ,\gy[9]_i_15_n_0 ,\gy[9]_i_16_n_0 }));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/href_dly_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 " *) 
  SRL16E \href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(hist_equ_href_o),
        .Q(\href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ));
  FDRE \href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4 
       (.C(pclk),
        .CE(1'b1),
        .D(\href_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ),
        .Q(\href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ),
        .R(1'b0));
  FDCE \href_dly_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_gate_n_0),
        .Q(sobel_href));
  FDCE href_dly_reg_c
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(1'b1),
        .Q(href_dly_reg_c_n_0));
  FDCE href_dly_reg_c_0
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_c_n_0),
        .Q(href_dly_reg_c_0_n_0));
  FDCE href_dly_reg_c_1
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_c_0_n_0),
        .Q(href_dly_reg_c_1_n_0));
  FDCE href_dly_reg_c_2
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_c_1_n_0),
        .Q(href_dly_reg_c_2_n_0));
  FDCE href_dly_reg_c_3
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_c_2_n_0),
        .Q(href_dly_reg_c_3_n_0));
  FDCE href_dly_reg_c_4
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(href_dly_reg_c_3_n_0),
        .Q(href_dly_reg_c_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    href_dly_reg_gate
       (.I0(\href_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ),
        .I1(href_dly_reg_c_4_n_0),
        .O(href_dly_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    href_reg_i_1__0
       (.I0(sobel_href),
        .I1(s_sobel_en),
        .I2(hist_equ_href_o),
        .O(in_href));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register line2buf
       (.D({line2buf_n_0,line2buf_n_1,line2buf_n_2,line2buf_n_3,line2buf_n_4,line2buf_n_5,line2buf_n_6,line2buf_n_7}),
        .hist_equ_href_o(hist_equ_href_o),
        .\in_r_reg[7]_0 (\in_r_reg[7] ),
        .mem_reg(tap1x),
        .pclk(pclk));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[0]_i_1 
       (.I0(\g_reg_n_0_[0] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[1]_i_1 
       (.I0(\g_reg_n_0_[1] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[2]_i_1 
       (.I0(\g_reg_n_0_[2] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[3]_i_1 
       (.I0(\g_reg_n_0_[3] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[4]_i_1 
       (.I0(\g_reg_n_0_[4] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[5]_i_1 
       (.I0(\g_reg_n_0_[5] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[6]_i_1 
       (.I0(\g_reg_n_0_[6] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[7]_i_1 
       (.I0(\g_reg_n_0_[7] ),
        .I1(\g_reg_n_0_[9] ),
        .I2(\g_reg_n_0_[10] ),
        .I3(\g_reg_n_0_[8] ),
        .O(\out[7]_i_1_n_0 ));
  FDCE \out_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[0]_i_1_n_0 ),
        .Q(out[0]));
  FDCE \out_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[1]_i_1_n_0 ),
        .Q(out[1]));
  FDCE \out_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[2]_i_1_n_0 ),
        .Q(out[2]));
  FDCE \out_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[3]_i_1_n_0 ),
        .Q(out[3]));
  FDCE \out_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[4]_i_1_n_0 ),
        .Q(out[4]));
  FDCE \out_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[5]_i_1_n_0 ),
        .Q(out[5]));
  FDCE \out_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[6]_i_1_n_0 ),
        .Q(out[6]));
  FDCE \out_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\out[7]_i_1_n_0 ),
        .Q(out[7]));
  FDCE \p11_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [0]),
        .Q(p11[0]));
  FDCE \p11_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [1]),
        .Q(p11[1]));
  FDCE \p11_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [2]),
        .Q(p11[2]));
  FDCE \p11_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [3]),
        .Q(p11[3]));
  FDCE \p11_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [4]),
        .Q(p11[4]));
  FDCE \p11_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [5]),
        .Q(p11[5]));
  FDCE \p11_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [6]),
        .Q(p11[6]));
  FDCE \p11_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(\in_r_reg[7] [7]),
        .Q(p11[7]));
  FDCE \p12_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[0]),
        .Q(gy12[1]));
  FDCE \p12_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[1]),
        .Q(gy12[2]));
  FDCE \p12_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[2]),
        .Q(gy12[3]));
  FDCE \p12_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[3]),
        .Q(gy12[4]));
  FDCE \p12_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[4]),
        .Q(gy12[5]));
  FDCE \p12_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[5]),
        .Q(gy12[6]));
  FDCE \p12_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[6]),
        .Q(gy12[7]));
  FDCE \p12_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p11[7]),
        .Q(gy12[8]));
  FDCE \p13_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[1]),
        .Q(p13[0]));
  FDCE \p13_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[2]),
        .Q(p13[1]));
  FDCE \p13_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[3]),
        .Q(p13[2]));
  FDCE \p13_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[4]),
        .Q(p13[3]));
  FDCE \p13_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[5]),
        .Q(p13[4]));
  FDCE \p13_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[6]),
        .Q(p13[5]));
  FDCE \p13_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[7]),
        .Q(p13[6]));
  FDCE \p13_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy12[8]),
        .Q(p13[7]));
  FDCE \p21_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_7),
        .Q(gx12[1]));
  FDCE \p21_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_6),
        .Q(gx12[2]));
  FDCE \p21_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_5),
        .Q(gx12[3]));
  FDCE \p21_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_4),
        .Q(gx12[4]));
  FDCE \p21_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_3),
        .Q(gx12[5]));
  FDCE \p21_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_2),
        .Q(gx12[6]));
  FDCE \p21_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_1),
        .Q(gx12[7]));
  FDCE \p21_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(line2buf_n_0),
        .Q(gx12[8]));
  FDCE \p22_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[1]),
        .Q(p22[0]));
  FDCE \p22_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[2]),
        .Q(p22[1]));
  FDCE \p22_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[3]),
        .Q(p22[2]));
  FDCE \p22_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[4]),
        .Q(p22[3]));
  FDCE \p22_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[5]),
        .Q(p22[4]));
  FDCE \p22_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[6]),
        .Q(p22[5]));
  FDCE \p22_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[7]),
        .Q(p22[6]));
  FDCE \p22_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gx12[8]),
        .Q(p22[7]));
  FDCE \p23_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[0]),
        .Q(gx32[1]));
  FDCE \p23_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[1]),
        .Q(gx32[2]));
  FDCE \p23_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[2]),
        .Q(gx32[3]));
  FDCE \p23_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[3]),
        .Q(gx32[4]));
  FDCE \p23_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[4]),
        .Q(gx32[5]));
  FDCE \p23_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[5]),
        .Q(gx32[6]));
  FDCE \p23_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[6]),
        .Q(gx32[7]));
  FDCE \p23_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p22[7]),
        .Q(gx32[8]));
  LUT3 #(
    .INIT(8'hBF)) 
    \p31[7]_i_1 
       (.I0(s_module_reset),
        .I1(rst_n),
        .I2(s_sobel_en),
        .O(\p31[7]_i_1_n_0 ));
  FDCE \p31_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[0]),
        .Q(p31[0]));
  FDCE \p31_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[1]),
        .Q(p31[1]));
  FDCE \p31_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[2]),
        .Q(p31[2]));
  FDCE \p31_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[3]),
        .Q(p31[3]));
  FDCE \p31_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[4]),
        .Q(p31[4]));
  FDCE \p31_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[5]),
        .Q(p31[5]));
  FDCE \p31_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[6]),
        .Q(p31[6]));
  FDCE \p31_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(tap1x[7]),
        .Q(p31[7]));
  FDCE \p32_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[0]),
        .Q(gy32[1]));
  FDCE \p32_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[1]),
        .Q(gy32[2]));
  FDCE \p32_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[2]),
        .Q(gy32[3]));
  FDCE \p32_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[3]),
        .Q(gy32[4]));
  FDCE \p32_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[4]),
        .Q(gy32[5]));
  FDCE \p32_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[5]),
        .Q(gy32[6]));
  FDCE \p32_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[6]),
        .Q(gy32[7]));
  FDCE \p32_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(p31[7]),
        .Q(gy32[8]));
  FDCE \p33_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[1]),
        .Q(p33[0]));
  FDCE \p33_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[2]),
        .Q(p33[1]));
  FDCE \p33_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[3]),
        .Q(p33[2]));
  FDCE \p33_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[4]),
        .Q(p33[3]));
  FDCE \p33_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[5]),
        .Q(p33[4]));
  FDCE \p33_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[6]),
        .Q(p33[5]));
  FDCE \p33_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[7]),
        .Q(p33[6]));
  FDCE \p33_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(gy32[8]),
        .Q(p33[7]));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/vsync_dly_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/sobel_i0/vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 " *) 
  SRL16E \vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(hist_equ_vsync_o),
        .Q(\vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ));
  FDRE \vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4 
       (.C(pclk),
        .CE(1'b1),
        .D(\vsync_dly_reg[4]_srl5_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_3_n_0 ),
        .Q(\vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ),
        .R(1'b0));
  FDCE \vsync_dly_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(\p31[7]_i_1_n_0 ),
        .D(vsync_dly_reg_gate_n_0),
        .Q(sobel_vsync));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    vsync_dly_reg_gate
       (.I0(\vsync_dly_reg[5]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_sobel_i0_href_dly_reg_c_4_n_0 ),
        .I1(href_dly_reg_c_4_n_0),
        .O(vsync_dly_reg_gate_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    vsync_reg_i_1__1
       (.I0(sobel_vsync),
        .I1(s_sobel_en),
        .I2(hist_equ_vsync_o),
        .O(in_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_top
   (s_hist_equ_en_reg,
    s_module_reset_reg,
    out_vsync,
    out_rgb,
    out_href,
    out_pclk,
    pclk,
    \hist_sum_data_3_reg[0] ,
    s_sobel_en,
    \ZOUT_reg[19] ,
    s_module_reset,
    rst_n,
    s_yuv2rgb_en,
    Q,
    hist_sum_data_20,
    O,
    href_reg_reg_i_6,
    href_reg_reg_i_34,
    href_reg_reg_i_62,
    href_reg_reg_i_3,
    href_reg_reg_i_11,
    href_reg_reg_i_40,
    href_reg_reg_i_72,
    \pix_cnt_reg[1] ,
    href_reg_reg_i_4,
    href_reg_reg_i_5,
    s_crop_en,
    s_dscale_en,
    in_href,
    in_vsync,
    in_yuv,
    s_hist_equ_en,
    \line_cnt_reg[0] );
  output s_hist_equ_en_reg;
  output s_module_reset_reg;
  output out_vsync;
  output [23:0]out_rgb;
  output out_href;
  output out_pclk;
  input pclk;
  input \hist_sum_data_3_reg[0] ;
  input s_sobel_en;
  input \ZOUT_reg[19] ;
  input s_module_reset;
  input rst_n;
  input s_yuv2rgb_en;
  input [7:0]Q;
  input [7:0]hist_sum_data_20;
  input [3:0]O;
  input [3:0]href_reg_reg_i_6;
  input [3:0]href_reg_reg_i_34;
  input [3:0]href_reg_reg_i_62;
  input [3:0]href_reg_reg_i_3;
  input [3:0]href_reg_reg_i_11;
  input [3:0]href_reg_reg_i_40;
  input [3:0]href_reg_reg_i_72;
  input [3:0]\pix_cnt_reg[1] ;
  input [15:0]href_reg_reg_i_4;
  input [15:0]href_reg_reg_i_5;
  input s_crop_en;
  input s_dscale_en;
  input in_href;
  input in_vsync;
  input [23:0]in_yuv;
  input s_hist_equ_en;
  input [3:0]\line_cnt_reg[0] ;

  wire [3:0]O;
  wire [7:0]Q;
  wire \ZOUT_reg[19] ;
  wire [7:0]crop_g_o;
  wire crop_href_o;
  wire [7:0]crop_r_o;
  wire hist_equ_href_o;
  wire [7:0]hist_equ_u;
  wire [7:0]hist_equ_v;
  wire hist_equ_vsync_o;
  wire [7:0]hist_equ_y_o;
  wire \hist_ram_data/cur_ram02_out ;
  wire [7:0]hist_sum_data_20;
  wire \hist_sum_data_3_reg[0] ;
  wire [3:0]href_reg_reg_i_11;
  wire [3:0]href_reg_reg_i_3;
  wire [3:0]href_reg_reg_i_34;
  wire [15:0]href_reg_reg_i_4;
  wire [3:0]href_reg_reg_i_40;
  wire [15:0]href_reg_reg_i_5;
  wire [3:0]href_reg_reg_i_6;
  wire [3:0]href_reg_reg_i_62;
  wire [3:0]href_reg_reg_i_72;
  wire [23:0]in_data;
  wire [23:0]in_data_12;
  wire [23:0]in_data_5;
  wire [23:16]in_data_9;
  wire in_href;
  wire in_href_0;
  wire in_href_11;
  wire in_href_4;
  wire in_href_8;
  wire in_href_o;
  wire [7:0]in_u_o;
  wire in_vsync;
  wire in_vsync_10;
  wire in_vsync_3;
  wire in_vsync_7;
  wire in_vsync_o;
  wire [7:0]in_y_o;
  wire [23:0]in_yuv;
  wire [3:0]\line_cnt_reg[0] ;
  wire mux_crop_i0_n_19;
  wire mux_crop_i0_n_2;
  wire mux_crop_i0_n_20;
  wire mux_crop_i0_n_21;
  wire mux_crop_i0_n_22;
  wire mux_crop_i0_n_23;
  wire mux_crop_i0_n_24;
  wire mux_crop_i0_n_25;
  wire mux_crop_i0_n_26;
  wire mux_hist_equ_i0_n_10;
  wire mux_hist_equ_i0_n_11;
  wire mux_hist_equ_i0_n_12;
  wire mux_hist_equ_i0_n_13;
  wire mux_hist_equ_i0_n_14;
  wire mux_hist_equ_i0_n_15;
  wire mux_hist_equ_i0_n_16;
  wire mux_hist_equ_i0_n_17;
  wire mux_hist_equ_i0_n_2;
  wire mux_hist_equ_i0_n_3;
  wire mux_hist_equ_i0_n_4;
  wire mux_hist_equ_i0_n_5;
  wire mux_hist_equ_i0_n_6;
  wire mux_hist_equ_i0_n_7;
  wire mux_hist_equ_i0_n_8;
  wire mux_hist_equ_i0_n_9;
  wire mux_in_n_34;
  wire mux_in_n_35;
  wire mux_in_n_36;
  wire mux_in_n_37;
  wire mux_in_n_38;
  wire mux_in_n_39;
  wire mux_in_n_40;
  wire mux_in_n_41;
  wire mux_sobel_i0_n_18;
  wire mux_sobel_i0_n_19;
  wire mux_sobel_i0_n_20;
  wire mux_sobel_i0_n_21;
  wire mux_sobel_i0_n_22;
  wire mux_sobel_i0_n_23;
  wire mux_sobel_i0_n_24;
  wire mux_sobel_i0_n_25;
  wire mux_yuv2rgb_i0_n_1;
  wire mux_yuv2rgb_i0_n_21;
  wire mux_yuv2rgb_i0_n_22;
  wire mux_yuv2rgb_i0_n_23;
  wire mux_yuv2rgb_i0_n_24;
  wire mux_yuv2rgb_i0_n_25;
  wire mux_yuv2rgb_i0_n_26;
  wire mux_yuv2rgb_i0_n_27;
  wire mux_yuv2rgb_i0_n_28;
  wire mux_yuv2rgb_i0_n_3;
  wire mux_yuv2rgb_i0_n_4;
  wire out_href;
  wire out_pclk;
  wire [23:0]out_rgb;
  wire out_vsync;
  wire pclk;
  wire [3:0]\pix_cnt_reg[1] ;
  wire prev_href;
  wire prev_href_1;
  wire prev_vsync;
  wire prev_vsync_2;
  wire prev_vsync_6;
  wire rst_n;
  wire s_crop_en;
  wire s_dscale_en;
  wire s_hist_equ_en;
  wire s_hist_equ_en_reg;
  wire s_module_reset;
  wire s_module_reset_reg;
  wire s_sobel_en;
  wire s_yuv2rgb_en;
  wire sobel_href_o;
  wire [7:0]sobel_u_o;
  wire sobel_vsync_o;
  wire [7:0]sobel_y_o;
  wire [7:0]yuv2rgb_g_o;
  wire yuv2rgb_href_o;
  wire [7:0]yuv2rgb_r_o;
  wire yuv2rgb_vsync_o;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_crop crop_i0
       (.D(in_data),
        .DI(mux_yuv2rgb_i0_n_4),
        .O(O),
        .href_reg_reg_i_11_0(href_reg_reg_i_11),
        .href_reg_reg_i_34_0(href_reg_reg_i_34),
        .href_reg_reg_i_3_0(href_reg_reg_i_3),
        .href_reg_reg_i_40_0(href_reg_reg_i_40),
        .href_reg_reg_i_4_0(href_reg_reg_i_4),
        .href_reg_reg_i_5_0(href_reg_reg_i_5),
        .href_reg_reg_i_62_0(href_reg_reg_i_62),
        .href_reg_reg_i_6_0(href_reg_reg_i_6),
        .href_reg_reg_i_72_0(href_reg_reg_i_72),
        .in_href(in_href_0),
        .\line_cnt_reg[15]_0 (mux_yuv2rgb_i0_n_3),
        .out_data({yuv2rgb_r_o,yuv2rgb_g_o,mux_yuv2rgb_i0_n_21,mux_yuv2rgb_i0_n_22,mux_yuv2rgb_i0_n_23,mux_yuv2rgb_i0_n_24,mux_yuv2rgb_i0_n_25,mux_yuv2rgb_i0_n_26,mux_yuv2rgb_i0_n_27,mux_yuv2rgb_i0_n_28}),
        .out_href(yuv2rgb_href_o),
        .out_vsync(yuv2rgb_vsync_o),
        .pclk(pclk),
        .prev_href(prev_href),
        .prev_vsync(prev_vsync),
        .rst_n(rst_n),
        .s_crop_en(s_crop_en),
        .s_module_reset(s_module_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_dscale dscale_i0
       (.E(mux_crop_i0_n_2),
        .Q({crop_r_o,crop_g_o,mux_crop_i0_n_19,mux_crop_i0_n_20,mux_crop_i0_n_21,mux_crop_i0_n_22,mux_crop_i0_n_23,mux_crop_i0_n_24,mux_crop_i0_n_25,mux_crop_i0_n_26}),
        .crop_href_o(crop_href_o),
        .\line_cnt_reg[0]_0 (\line_cnt_reg[0] ),
        .out_href(out_href),
        .out_pclk(out_pclk),
        .out_rgb(out_rgb),
        .pclk(pclk),
        .\pix_cnt_reg[1]_0 (\pix_cnt_reg[1] ),
        .prev_href(prev_href_1),
        .prev_vsync(prev_vsync_2),
        .prev_vsync_reg_0(out_vsync),
        .rst_n(rst_n),
        .s_dscale_en(s_dscale_en),
        .s_module_reset(s_module_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_hist_equ hist_equ_i0
       (.D(in_data_5[23:16]),
        .Q(Q),
        .cur_ram02_out(\hist_ram_data/cur_ram02_out ),
        .hist_sum_data_20_0(hist_sum_data_20),
        .\hist_sum_data_3_reg[0]_0 (\hist_sum_data_3_reg[0] ),
        .in_href(in_href_4),
        .in_vsync(in_vsync_3),
        .out_data(in_y_o),
        .out_href(in_href_o),
        .out_vsync(in_vsync_o),
        .pclk(pclk),
        .prev_vsync(prev_vsync_6),
        .rst_n(rst_n),
        .s_hist_equ_en(s_hist_equ_en),
        .s_hist_equ_en_reg(s_hist_equ_en_reg),
        .s_module_reset(s_module_reset));
  FDRE \hist_equ_u_r_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(in_u_o[0]),
        .Q(hist_equ_u[0]),
        .R(1'b0));
  FDRE \hist_equ_u_r_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(in_u_o[1]),
        .Q(hist_equ_u[1]),
        .R(1'b0));
  FDRE \hist_equ_u_r_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(in_u_o[2]),
        .Q(hist_equ_u[2]),
        .R(1'b0));
  FDRE \hist_equ_u_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(in_u_o[3]),
        .Q(hist_equ_u[3]),
        .R(1'b0));
  FDRE \hist_equ_u_r_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(in_u_o[4]),
        .Q(hist_equ_u[4]),
        .R(1'b0));
  FDRE \hist_equ_u_r_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(in_u_o[5]),
        .Q(hist_equ_u[5]),
        .R(1'b0));
  FDRE \hist_equ_u_r_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(in_u_o[6]),
        .Q(hist_equ_u[6]),
        .R(1'b0));
  FDRE \hist_equ_u_r_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(in_u_o[7]),
        .Q(hist_equ_u[7]),
        .R(1'b0));
  FDRE \hist_equ_v_r_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(mux_in_n_41),
        .Q(hist_equ_v[0]),
        .R(1'b0));
  FDRE \hist_equ_v_r_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(mux_in_n_40),
        .Q(hist_equ_v[1]),
        .R(1'b0));
  FDRE \hist_equ_v_r_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(mux_in_n_39),
        .Q(hist_equ_v[2]),
        .R(1'b0));
  FDRE \hist_equ_v_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(mux_in_n_38),
        .Q(hist_equ_v[3]),
        .R(1'b0));
  FDRE \hist_equ_v_r_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(mux_in_n_37),
        .Q(hist_equ_v[4]),
        .R(1'b0));
  FDRE \hist_equ_v_r_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(mux_in_n_36),
        .Q(hist_equ_v[5]),
        .R(1'b0));
  FDRE \hist_equ_v_r_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(mux_in_n_35),
        .Q(hist_equ_v[6]),
        .R(1'b0));
  FDRE \hist_equ_v_r_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(mux_in_n_34),
        .Q(hist_equ_v[7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux mux_crop_i0
       (.D(in_data),
        .E(mux_crop_i0_n_2),
        .Q({crop_r_o,crop_g_o,mux_crop_i0_n_19,mux_crop_i0_n_20,mux_crop_i0_n_21,mux_crop_i0_n_22,mux_crop_i0_n_23,mux_crop_i0_n_24,mux_crop_i0_n_25,mux_crop_i0_n_26}),
        .crop_href_o(crop_href_o),
        .\data_reg_reg[0]_0 (mux_yuv2rgb_i0_n_1),
        .in_href(in_href_0),
        .out_vsync(out_vsync),
        .pclk(pclk),
        .prev_href(prev_href_1),
        .prev_vsync(prev_vsync_2),
        .vsync_reg_reg_0(yuv2rgb_vsync_o));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_0 mux_hist_equ_i0
       (.D({mux_hist_equ_i0_n_2,mux_hist_equ_i0_n_3,mux_hist_equ_i0_n_4,mux_hist_equ_i0_n_5,mux_hist_equ_i0_n_6,mux_hist_equ_i0_n_7,mux_hist_equ_i0_n_8,mux_hist_equ_i0_n_9,mux_hist_equ_i0_n_10,mux_hist_equ_i0_n_11,mux_hist_equ_i0_n_12,mux_hist_equ_i0_n_13,mux_hist_equ_i0_n_14,mux_hist_equ_i0_n_15,mux_hist_equ_i0_n_16,mux_hist_equ_i0_n_17}),
        .Q(hist_equ_y_o),
        .\data_reg_reg[0]_0 (mux_yuv2rgb_i0_n_1),
        .\data_reg_reg[23]_0 (in_data_5),
        .hist_equ_href_o(hist_equ_href_o),
        .hist_equ_vsync_o(hist_equ_vsync_o),
        .in_href(in_href_4),
        .in_vsync(in_vsync_3),
        .pclk(pclk),
        .s_sobel_en(s_sobel_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_1 mux_in
       (.Q(hist_equ_v),
        .cur_ram02_out(\hist_ram_data/cur_ram02_out ),
        .\data_reg_reg[15]_0 (hist_equ_u),
        .\data_reg_reg[23]_0 ({in_y_o,in_u_o,mux_in_n_34,mux_in_n_35,mux_in_n_36,mux_in_n_37,mux_in_n_38,mux_in_n_39,mux_in_n_40,mux_in_n_41}),
        .\hist_equ_u_r_reg[7] (in_data_5[15:0]),
        .href_reg_reg_0(mux_yuv2rgb_i0_n_1),
        .in_href(in_href),
        .in_vsync(in_vsync),
        .in_yuv(in_yuv),
        .out_href(in_href_o),
        .out_vsync(in_vsync_o),
        .pclk(pclk),
        .prev_vsync(prev_vsync_6),
        .s_hist_equ_en(s_hist_equ_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_2 mux_sobel_i0
       (.D({in_data_9,mux_hist_equ_i0_n_2,mux_hist_equ_i0_n_3,mux_hist_equ_i0_n_4,mux_hist_equ_i0_n_5,mux_hist_equ_i0_n_6,mux_hist_equ_i0_n_7,mux_hist_equ_i0_n_8,mux_hist_equ_i0_n_9,mux_hist_equ_i0_n_10,mux_hist_equ_i0_n_11,mux_hist_equ_i0_n_12,mux_hist_equ_i0_n_13,mux_hist_equ_i0_n_14,mux_hist_equ_i0_n_15,mux_hist_equ_i0_n_16,mux_hist_equ_i0_n_17}),
        .Q({sobel_y_o,sobel_u_o,mux_sobel_i0_n_18,mux_sobel_i0_n_19,mux_sobel_i0_n_20,mux_sobel_i0_n_21,mux_sobel_i0_n_22,mux_sobel_i0_n_23,mux_sobel_i0_n_24,mux_sobel_i0_n_25}),
        .\data_reg_reg[0]_0 (mux_yuv2rgb_i0_n_1),
        .in_href(in_href_8),
        .in_vsync(in_vsync_7),
        .out_href(sobel_href_o),
        .out_vsync(sobel_vsync_o),
        .pclk(pclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vid_mux_3 mux_yuv2rgb_i0
       (.D(in_data_12),
        .DI(mux_yuv2rgb_i0_n_4),
        .Q({yuv2rgb_r_o,yuv2rgb_g_o,mux_yuv2rgb_i0_n_21,mux_yuv2rgb_i0_n_22,mux_yuv2rgb_i0_n_23,mux_yuv2rgb_i0_n_24,mux_yuv2rgb_i0_n_25,mux_yuv2rgb_i0_n_26,mux_yuv2rgb_i0_n_27,mux_yuv2rgb_i0_n_28}),
        .href_reg_reg_0(mux_yuv2rgb_i0_n_3),
        .in_href(in_href_11),
        .in_vsync(in_vsync_10),
        .out_href(yuv2rgb_href_o),
        .pclk(pclk),
        .prev_href(prev_href),
        .prev_vsync(prev_vsync),
        .rst_n(rst_n),
        .s_module_reset(s_module_reset),
        .s_module_reset_reg(mux_yuv2rgb_i0_n_1),
        .vsync_reg_reg_0(yuv2rgb_vsync_o));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_sobel sobel_i0
       (.D(in_data_9),
        .hist_equ_href_o(hist_equ_href_o),
        .hist_equ_vsync_o(hist_equ_vsync_o),
        .in_href(in_href_8),
        .\in_r_reg[7] (hist_equ_y_o),
        .in_vsync(in_vsync_7),
        .pclk(pclk),
        .rst_n(rst_n),
        .s_module_reset(s_module_reset),
        .s_sobel_en(s_sobel_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_yuv2rgb yuv2rgb_i0
       (.D(in_data_12),
        .Q({sobel_y_o,sobel_u_o,mux_sobel_i0_n_18,mux_sobel_i0_n_19,mux_sobel_i0_n_20,mux_sobel_i0_n_21,mux_sobel_i0_n_22,mux_sobel_i0_n_23,mux_sobel_i0_n_24,mux_sobel_i0_n_25}),
        .\ZOUT_reg[19]_0 (\ZOUT_reg[19] ),
        .in_href(in_href_11),
        .in_vsync(in_vsync_10),
        .out_href(sobel_href_o),
        .out_vsync(sobel_vsync_o),
        .pclk(pclk),
        .rst_n(rst_n),
        .s_module_reset(s_module_reset),
        .s_module_reset_reg(s_module_reset_reg),
        .s_yuv2rgb_en(s_yuv2rgb_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_yuv2rgb
   (s_module_reset_reg,
    D,
    in_href,
    in_vsync,
    pclk,
    out_href,
    out_vsync,
    \ZOUT_reg[19]_0 ,
    s_module_reset,
    rst_n,
    s_yuv2rgb_en,
    Q);
  output s_module_reset_reg;
  output [23:0]D;
  output in_href;
  output in_vsync;
  input pclk;
  input out_href;
  input out_vsync;
  input \ZOUT_reg[19]_0 ;
  input s_module_reset;
  input rst_n;
  input s_yuv2rgb_en;
  input [23:0]Q;

  wire [7:0]B;
  wire \B[0]_i_1_n_0 ;
  wire \B[1]_i_1_n_0 ;
  wire \B[2]_i_1_n_0 ;
  wire \B[3]_i_1_n_0 ;
  wire \B[4]_i_1_n_0 ;
  wire \B[5]_i_1_n_0 ;
  wire \B[6]_i_1_n_0 ;
  wire \B[7]_i_1_n_0 ;
  wire [23:0]D;
  wire [7:0]G;
  wire \G[0]_i_1_n_0 ;
  wire \G[1]_i_1_n_0 ;
  wire \G[2]_i_1_n_0 ;
  wire \G[3]_i_1_n_0 ;
  wire \G[4]_i_1_n_0 ;
  wire \G[5]_i_1_n_0 ;
  wire \G[6]_i_1_n_0 ;
  wire \G[7]_i_1_n_0 ;
  wire [23:0]Q;
  wire [7:0]R;
  wire \XOUT[19]_i_2_n_0 ;
  wire \XOUT[19]_i_3_n_0 ;
  wire \XOUT[19]_i_4_n_0 ;
  wire \XOUT[19]_i_5_n_0 ;
  wire \XOUT[19]_i_6_n_0 ;
  wire \XOUT[2]_i_10_n_0 ;
  wire \XOUT[2]_i_12_n_0 ;
  wire \XOUT[2]_i_13_n_0 ;
  wire \XOUT[2]_i_14_n_0 ;
  wire \XOUT[2]_i_15_n_0 ;
  wire \XOUT[2]_i_16_n_0 ;
  wire \XOUT[2]_i_17_n_0 ;
  wire \XOUT[2]_i_18_n_0 ;
  wire \XOUT[2]_i_19_n_0 ;
  wire \XOUT[2]_i_21_n_0 ;
  wire \XOUT[2]_i_22_n_0 ;
  wire \XOUT[2]_i_23_n_0 ;
  wire \XOUT[2]_i_24_n_0 ;
  wire \XOUT[2]_i_25_n_0 ;
  wire \XOUT[2]_i_26_n_0 ;
  wire \XOUT[2]_i_27_n_0 ;
  wire \XOUT[2]_i_3_n_0 ;
  wire \XOUT[2]_i_4_n_0 ;
  wire \XOUT[2]_i_5_n_0 ;
  wire \XOUT[2]_i_6_n_0 ;
  wire \XOUT[2]_i_7_n_0 ;
  wire \XOUT[2]_i_8_n_0 ;
  wire \XOUT[2]_i_9_n_0 ;
  wire \XOUT[6]_i_2_n_0 ;
  wire \XOUT[6]_i_3_n_0 ;
  wire \XOUT[6]_i_4_n_0 ;
  wire \XOUT[6]_i_5_n_0 ;
  wire \XOUT[6]_i_6_n_0 ;
  wire \XOUT[6]_i_7_n_0 ;
  wire \XOUT[6]_i_8_n_0 ;
  wire \XOUT[6]_i_9_n_0 ;
  wire \XOUT_reg[19]_i_1_n_1 ;
  wire \XOUT_reg[19]_i_1_n_2 ;
  wire \XOUT_reg[19]_i_1_n_3 ;
  wire \XOUT_reg[19]_i_1_n_5 ;
  wire \XOUT_reg[19]_i_1_n_6 ;
  wire \XOUT_reg[19]_i_1_n_7 ;
  wire \XOUT_reg[2]_i_11_n_0 ;
  wire \XOUT_reg[2]_i_11_n_1 ;
  wire \XOUT_reg[2]_i_11_n_2 ;
  wire \XOUT_reg[2]_i_11_n_3 ;
  wire \XOUT_reg[2]_i_1_n_0 ;
  wire \XOUT_reg[2]_i_1_n_1 ;
  wire \XOUT_reg[2]_i_1_n_2 ;
  wire \XOUT_reg[2]_i_1_n_3 ;
  wire \XOUT_reg[2]_i_1_n_4 ;
  wire \XOUT_reg[2]_i_1_n_5 ;
  wire \XOUT_reg[2]_i_1_n_6 ;
  wire \XOUT_reg[2]_i_2_n_0 ;
  wire \XOUT_reg[2]_i_2_n_1 ;
  wire \XOUT_reg[2]_i_2_n_2 ;
  wire \XOUT_reg[2]_i_2_n_3 ;
  wire \XOUT_reg[6]_i_1_n_0 ;
  wire \XOUT_reg[6]_i_1_n_1 ;
  wire \XOUT_reg[6]_i_1_n_2 ;
  wire \XOUT_reg[6]_i_1_n_3 ;
  wire \XOUT_reg[6]_i_1_n_4 ;
  wire \XOUT_reg[6]_i_1_n_5 ;
  wire \XOUT_reg[6]_i_1_n_6 ;
  wire \XOUT_reg[6]_i_1_n_7 ;
  wire \XOUT_reg_n_0_[0] ;
  wire \XOUT_reg_n_0_[19] ;
  wire \XOUT_reg_n_0_[1] ;
  wire \XOUT_reg_n_0_[2] ;
  wire \XOUT_reg_n_0_[3] ;
  wire \XOUT_reg_n_0_[4] ;
  wire \XOUT_reg_n_0_[5] ;
  wire \XOUT_reg_n_0_[6] ;
  wire \XOUT_reg_n_0_[7] ;
  wire \XOUT_reg_n_0_[8] ;
  wire \XOUT_reg_n_0_[9] ;
  wire [19:9]YOUT1;
  wire \YOUT[19]_i_3_n_0 ;
  wire \YOUT[19]_i_4_n_0 ;
  wire \YOUT[19]_i_5_n_0 ;
  wire \YOUT[19]_i_6_n_0 ;
  wire \YOUT[3]_i_10_n_0 ;
  wire \YOUT[3]_i_12_n_0 ;
  wire \YOUT[3]_i_13_n_0 ;
  wire \YOUT[3]_i_14_n_0 ;
  wire \YOUT[3]_i_15_n_0 ;
  wire \YOUT[3]_i_16_n_0 ;
  wire \YOUT[3]_i_17_n_0 ;
  wire \YOUT[3]_i_18_n_0 ;
  wire \YOUT[3]_i_19_n_0 ;
  wire \YOUT[3]_i_22_n_0 ;
  wire \YOUT[3]_i_25_n_0 ;
  wire \YOUT[3]_i_26_n_0 ;
  wire \YOUT[3]_i_27_n_0 ;
  wire \YOUT[3]_i_28_n_0 ;
  wire \YOUT[3]_i_29_n_0 ;
  wire \YOUT[3]_i_30_n_0 ;
  wire \YOUT[3]_i_31_n_0 ;
  wire \YOUT[3]_i_3_n_0 ;
  wire \YOUT[3]_i_4_n_0 ;
  wire \YOUT[3]_i_5_n_0 ;
  wire \YOUT[3]_i_6_n_0 ;
  wire \YOUT[3]_i_7_n_0 ;
  wire \YOUT[3]_i_8_n_0 ;
  wire \YOUT[3]_i_9_n_0 ;
  wire \YOUT[7]_i_14_n_0 ;
  wire \YOUT[7]_i_16_n_0 ;
  wire \YOUT[7]_i_17_n_0 ;
  wire \YOUT[7]_i_18_n_0 ;
  wire \YOUT[7]_i_2_n_0 ;
  wire \YOUT[7]_i_3_n_0 ;
  wire \YOUT[7]_i_4_n_0 ;
  wire \YOUT[7]_i_5_n_0 ;
  wire \YOUT[7]_i_6_n_0 ;
  wire \YOUT[7]_i_7_n_0 ;
  wire \YOUT[7]_i_8_n_0 ;
  wire \YOUT[7]_i_9_n_0 ;
  wire \YOUT_reg[19]_i_1_n_2 ;
  wire \YOUT_reg[19]_i_1_n_3 ;
  wire \YOUT_reg[3]_i_11_n_0 ;
  wire \YOUT_reg[3]_i_11_n_1 ;
  wire \YOUT_reg[3]_i_11_n_2 ;
  wire \YOUT_reg[3]_i_11_n_3 ;
  wire \YOUT_reg[3]_i_1_n_0 ;
  wire \YOUT_reg[3]_i_1_n_1 ;
  wire \YOUT_reg[3]_i_1_n_2 ;
  wire \YOUT_reg[3]_i_1_n_3 ;
  wire \YOUT_reg[3]_i_2_n_0 ;
  wire \YOUT_reg[3]_i_2_n_1 ;
  wire \YOUT_reg[3]_i_2_n_2 ;
  wire \YOUT_reg[3]_i_2_n_3 ;
  wire \YOUT_reg[7]_i_1_n_0 ;
  wire \YOUT_reg[7]_i_1_n_1 ;
  wire \YOUT_reg[7]_i_1_n_2 ;
  wire \YOUT_reg[7]_i_1_n_3 ;
  wire \YOUT_reg_n_0_[0] ;
  wire \YOUT_reg_n_0_[19] ;
  wire \YOUT_reg_n_0_[1] ;
  wire \YOUT_reg_n_0_[2] ;
  wire \YOUT_reg_n_0_[3] ;
  wire \YOUT_reg_n_0_[4] ;
  wire \YOUT_reg_n_0_[5] ;
  wire \YOUT_reg_n_0_[6] ;
  wire \YOUT_reg_n_0_[7] ;
  wire \YOUT_reg_n_0_[8] ;
  wire \YOUT_reg_n_0_[9] ;
  wire [19:9]ZOUT1;
  wire \ZOUT[19]_i_2_n_0 ;
  wire \ZOUT[19]_i_3_n_0 ;
  wire \ZOUT[19]_i_4_n_0 ;
  wire \ZOUT[19]_i_5_n_0 ;
  wire \ZOUT[19]_i_6_n_0 ;
  wire \ZOUT[19]_i_7_n_0 ;
  wire \ZOUT[19]_i_8_n_0 ;
  wire \ZOUT[2]_i_10_n_0 ;
  wire \ZOUT[2]_i_12_n_0 ;
  wire \ZOUT[2]_i_13_n_0 ;
  wire \ZOUT[2]_i_14_n_0 ;
  wire \ZOUT[2]_i_15_n_0 ;
  wire \ZOUT[2]_i_16_n_0 ;
  wire \ZOUT[2]_i_17_n_0 ;
  wire \ZOUT[2]_i_18_n_0 ;
  wire \ZOUT[2]_i_19_n_0 ;
  wire \ZOUT[2]_i_24_n_0 ;
  wire \ZOUT[2]_i_25_n_0 ;
  wire \ZOUT[2]_i_26_n_0 ;
  wire \ZOUT[2]_i_27_n_0 ;
  wire \ZOUT[2]_i_3_n_0 ;
  wire \ZOUT[2]_i_4_n_0 ;
  wire \ZOUT[2]_i_5_n_0 ;
  wire \ZOUT[2]_i_6_n_0 ;
  wire \ZOUT[2]_i_7_n_0 ;
  wire \ZOUT[2]_i_8_n_0 ;
  wire \ZOUT[2]_i_9_n_0 ;
  wire \ZOUT[6]_i_2_n_0 ;
  wire \ZOUT[6]_i_3_n_0 ;
  wire \ZOUT[6]_i_4_n_0 ;
  wire \ZOUT[6]_i_5_n_0 ;
  wire \ZOUT[6]_i_6_n_0 ;
  wire \ZOUT[6]_i_7_n_0 ;
  wire \ZOUT[6]_i_8_n_0 ;
  wire \ZOUT[6]_i_9_n_0 ;
  wire \ZOUT_reg[19]_0 ;
  wire \ZOUT_reg[19]_i_1_n_1 ;
  wire \ZOUT_reg[19]_i_1_n_2 ;
  wire \ZOUT_reg[19]_i_1_n_3 ;
  wire \ZOUT_reg[2]_i_11_n_0 ;
  wire \ZOUT_reg[2]_i_11_n_1 ;
  wire \ZOUT_reg[2]_i_11_n_2 ;
  wire \ZOUT_reg[2]_i_11_n_3 ;
  wire \ZOUT_reg[2]_i_1_n_0 ;
  wire \ZOUT_reg[2]_i_1_n_1 ;
  wire \ZOUT_reg[2]_i_1_n_2 ;
  wire \ZOUT_reg[2]_i_1_n_3 ;
  wire \ZOUT_reg[2]_i_2_n_0 ;
  wire \ZOUT_reg[2]_i_2_n_1 ;
  wire \ZOUT_reg[2]_i_2_n_2 ;
  wire \ZOUT_reg[2]_i_2_n_3 ;
  wire \ZOUT_reg[6]_i_1_n_0 ;
  wire \ZOUT_reg[6]_i_1_n_1 ;
  wire \ZOUT_reg[6]_i_1_n_2 ;
  wire \ZOUT_reg[6]_i_1_n_3 ;
  wire \ZOUT_reg_n_0_[0] ;
  wire \ZOUT_reg_n_0_[19] ;
  wire \ZOUT_reg_n_0_[1] ;
  wire \ZOUT_reg_n_0_[2] ;
  wire \ZOUT_reg_n_0_[3] ;
  wire \ZOUT_reg_n_0_[4] ;
  wire \ZOUT_reg_n_0_[5] ;
  wire \ZOUT_reg_n_0_[6] ;
  wire \ZOUT_reg_n_0_[7] ;
  wire \ZOUT_reg_n_0_[8] ;
  wire \ZOUT_reg_n_0_[9] ;
  wire \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ;
  wire \href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ;
  wire href_r_reg_c_5_n_0;
  wire href_r_reg_c_6_n_0;
  wire href_r_reg_c_n_0;
  wire href_r_reg_gate_n_0;
  wire [15:3]img_Cb_r1;
  wire [15:6]img_Cb_r10;
  wire \img_Cb_r1[13]_i_2_n_0 ;
  wire \img_Cb_r1[13]_i_3_n_0 ;
  wire \img_Cb_r1[13]_i_4_n_0 ;
  wire \img_Cb_r1[13]_i_5_n_0 ;
  wire \img_Cb_r1[13]_i_6_n_0 ;
  wire \img_Cb_r1[13]_i_7_n_0 ;
  wire \img_Cb_r1[13]_i_8_n_0 ;
  wire \img_Cb_r1[13]_i_9_n_0 ;
  wire \img_Cb_r1[15]_i_2_n_0 ;
  wire \img_Cb_r1[15]_i_3_n_0 ;
  wire \img_Cb_r1[15]_i_4_n_0 ;
  wire \img_Cb_r1[9]_i_2_n_0 ;
  wire \img_Cb_r1[9]_i_3_n_0 ;
  wire \img_Cb_r1[9]_i_4_n_0 ;
  wire \img_Cb_r1[9]_i_5_n_0 ;
  wire \img_Cb_r1[9]_i_6_n_0 ;
  wire \img_Cb_r1[9]_i_7_n_0 ;
  wire \img_Cb_r1[9]_i_8_n_0 ;
  wire \img_Cb_r1_reg[13]_i_1_n_0 ;
  wire \img_Cb_r1_reg[13]_i_1_n_1 ;
  wire \img_Cb_r1_reg[13]_i_1_n_2 ;
  wire \img_Cb_r1_reg[13]_i_1_n_3 ;
  wire \img_Cb_r1_reg[15]_i_1_n_3 ;
  wire \img_Cb_r1_reg[9]_i_1_n_0 ;
  wire \img_Cb_r1_reg[9]_i_1_n_1 ;
  wire \img_Cb_r1_reg[9]_i_1_n_2 ;
  wire \img_Cb_r1_reg[9]_i_1_n_3 ;
  wire [2:2]img_Cb_r2;
  wire img_Cb_r20_n_100;
  wire img_Cb_r20_n_101;
  wire img_Cb_r20_n_102;
  wire img_Cb_r20_n_103;
  wire img_Cb_r20_n_104;
  wire img_Cb_r20_n_105;
  wire img_Cb_r20_n_87;
  wire img_Cb_r20_n_88;
  wire img_Cb_r20_n_89;
  wire img_Cb_r20_n_90;
  wire img_Cb_r20_n_91;
  wire img_Cb_r20_n_92;
  wire img_Cb_r20_n_93;
  wire img_Cb_r20_n_94;
  wire img_Cb_r20_n_95;
  wire img_Cb_r20_n_96;
  wire img_Cb_r20_n_97;
  wire img_Cb_r20_n_98;
  wire img_Cb_r20_n_99;
  wire [2:2]img_Cr_r1;
  wire img_Cr_r10_n_100;
  wire img_Cr_r10_n_101;
  wire img_Cr_r10_n_102;
  wire img_Cr_r10_n_103;
  wire img_Cr_r10_n_104;
  wire img_Cr_r10_n_105;
  wire img_Cr_r10_n_88;
  wire img_Cr_r10_n_89;
  wire img_Cr_r10_n_90;
  wire img_Cr_r10_n_91;
  wire img_Cr_r10_n_92;
  wire img_Cr_r10_n_93;
  wire img_Cr_r10_n_94;
  wire img_Cr_r10_n_95;
  wire img_Cr_r10_n_96;
  wire img_Cr_r10_n_97;
  wire img_Cr_r10_n_98;
  wire img_Cr_r10_n_99;
  wire [16:5]img_Cr_r2;
  wire [16:5]img_Cr_r20;
  wire \img_Cr_r2[11]_i_2_n_0 ;
  wire \img_Cr_r2[11]_i_3_n_0 ;
  wire \img_Cr_r2[11]_i_4_n_0 ;
  wire \img_Cr_r2[11]_i_5_n_0 ;
  wire \img_Cr_r2[15]_i_10_n_0 ;
  wire \img_Cr_r2[15]_i_11_n_0 ;
  wire \img_Cr_r2[15]_i_3_n_0 ;
  wire \img_Cr_r2[15]_i_5_n_0 ;
  wire \img_Cr_r2[15]_i_6_n_0 ;
  wire \img_Cr_r2[15]_i_7_n_0 ;
  wire \img_Cr_r2[15]_i_8_n_0 ;
  wire \img_Cr_r2[15]_i_9_n_0 ;
  wire \img_Cr_r2[16]_i_3_n_0 ;
  wire \img_Cr_r2[16]_i_4_n_0 ;
  wire \img_Cr_r2[7]_i_2_n_0 ;
  wire \img_Cr_r2_reg[11]_i_1_n_0 ;
  wire \img_Cr_r2_reg[11]_i_1_n_1 ;
  wire \img_Cr_r2_reg[11]_i_1_n_2 ;
  wire \img_Cr_r2_reg[11]_i_1_n_3 ;
  wire \img_Cr_r2_reg[15]_i_1_n_0 ;
  wire \img_Cr_r2_reg[15]_i_1_n_1 ;
  wire \img_Cr_r2_reg[15]_i_1_n_2 ;
  wire \img_Cr_r2_reg[15]_i_1_n_3 ;
  wire \img_Cr_r2_reg[15]_i_2_n_0 ;
  wire \img_Cr_r2_reg[15]_i_2_n_1 ;
  wire \img_Cr_r2_reg[15]_i_2_n_2 ;
  wire \img_Cr_r2_reg[15]_i_2_n_3 ;
  wire \img_Cr_r2_reg[15]_i_2_n_4 ;
  wire \img_Cr_r2_reg[15]_i_2_n_5 ;
  wire \img_Cr_r2_reg[15]_i_2_n_6 ;
  wire \img_Cr_r2_reg[15]_i_2_n_7 ;
  wire \img_Cr_r2_reg[15]_i_4_n_0 ;
  wire \img_Cr_r2_reg[15]_i_4_n_1 ;
  wire \img_Cr_r2_reg[15]_i_4_n_2 ;
  wire \img_Cr_r2_reg[15]_i_4_n_3 ;
  wire \img_Cr_r2_reg[15]_i_4_n_4 ;
  wire \img_Cr_r2_reg[15]_i_4_n_5 ;
  wire \img_Cr_r2_reg[15]_i_4_n_6 ;
  wire \img_Cr_r2_reg[15]_i_4_n_7 ;
  wire \img_Cr_r2_reg[16]_i_2_n_3 ;
  wire \img_Cr_r2_reg[16]_i_2_n_6 ;
  wire \img_Cr_r2_reg[16]_i_2_n_7 ;
  wire \img_Cr_r2_reg[7]_i_1_n_0 ;
  wire \img_Cr_r2_reg[7]_i_1_n_1 ;
  wire \img_Cr_r2_reg[7]_i_1_n_2 ;
  wire \img_Cr_r2_reg[7]_i_1_n_3 ;
  wire [17:0]img_Y_r1;
  wire img_Y_r10_n_100;
  wire img_Y_r10_n_101;
  wire img_Y_r10_n_102;
  wire img_Y_r10_n_103;
  wire img_Y_r10_n_104;
  wire img_Y_r10_n_105;
  wire img_Y_r10_n_88;
  wire img_Y_r10_n_89;
  wire img_Y_r10_n_90;
  wire img_Y_r10_n_91;
  wire img_Y_r10_n_92;
  wire img_Y_r10_n_93;
  wire img_Y_r10_n_94;
  wire img_Y_r10_n_95;
  wire img_Y_r10_n_96;
  wire img_Y_r10_n_97;
  wire img_Y_r10_n_98;
  wire img_Y_r10_n_99;
  wire in_href;
  wire [7:0]in_u_reg;
  wire [7:0]in_v_reg;
  wire in_vsync;
  wire [7:0]in_y_reg;
  wire out_href;
  wire out_vsync;
  wire [7:0]p_0_in;
  wire p_0_in0;
  wire pclk;
  wire rst_n;
  wire s_module_reset;
  wire s_module_reset_reg;
  wire s_yuv2rgb_en;
  wire \vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ;
  wire \vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ;
  wire vsync_r_reg_gate_n_0;
  wire yuv2rgb_href;
  wire yuv2rgb_vsync;
  wire [3:3]\NLW_XOUT_reg[19]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_XOUT_reg[2]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_XOUT_reg[2]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_XOUT_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_YOUT_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_YOUT_reg[19]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_YOUT_reg[3]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_YOUT_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_ZOUT_reg[19]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_ZOUT_reg[2]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ZOUT_reg[2]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_ZOUT_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_img_Cb_r1_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_img_Cb_r1_reg[15]_i_1_O_UNCONNECTED ;
  wire NLW_img_Cb_r20_CARRYCASCOUT_UNCONNECTED;
  wire NLW_img_Cb_r20_MULTSIGNOUT_UNCONNECTED;
  wire NLW_img_Cb_r20_OVERFLOW_UNCONNECTED;
  wire NLW_img_Cb_r20_PATTERNBDETECT_UNCONNECTED;
  wire NLW_img_Cb_r20_PATTERNDETECT_UNCONNECTED;
  wire NLW_img_Cb_r20_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_img_Cb_r20_ACOUT_UNCONNECTED;
  wire [17:0]NLW_img_Cb_r20_BCOUT_UNCONNECTED;
  wire [3:0]NLW_img_Cb_r20_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_img_Cb_r20_P_UNCONNECTED;
  wire [47:0]NLW_img_Cb_r20_PCOUT_UNCONNECTED;
  wire NLW_img_Cr_r10_CARRYCASCOUT_UNCONNECTED;
  wire NLW_img_Cr_r10_MULTSIGNOUT_UNCONNECTED;
  wire NLW_img_Cr_r10_OVERFLOW_UNCONNECTED;
  wire NLW_img_Cr_r10_PATTERNBDETECT_UNCONNECTED;
  wire NLW_img_Cr_r10_PATTERNDETECT_UNCONNECTED;
  wire NLW_img_Cr_r10_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_img_Cr_r10_ACOUT_UNCONNECTED;
  wire [17:0]NLW_img_Cr_r10_BCOUT_UNCONNECTED;
  wire [3:0]NLW_img_Cr_r10_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_img_Cr_r10_P_UNCONNECTED;
  wire [47:0]NLW_img_Cr_r10_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_img_Cr_r2_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_img_Cr_r2_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_img_Cr_r2_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_img_Cr_r2_reg[16]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_img_Cr_r2_reg[7]_i_1_O_UNCONNECTED ;
  wire NLW_img_Y_r10_CARRYCASCOUT_UNCONNECTED;
  wire NLW_img_Y_r10_MULTSIGNOUT_UNCONNECTED;
  wire NLW_img_Y_r10_OVERFLOW_UNCONNECTED;
  wire NLW_img_Y_r10_PATTERNBDETECT_UNCONNECTED;
  wire NLW_img_Y_r10_PATTERNDETECT_UNCONNECTED;
  wire NLW_img_Y_r10_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_img_Y_r10_ACOUT_UNCONNECTED;
  wire [17:0]NLW_img_Y_r10_BCOUT_UNCONNECTED;
  wire [3:0]NLW_img_Y_r10_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_img_Y_r10_P_UNCONNECTED;
  wire [47:0]NLW_img_Y_r10_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[0]_i_1 
       (.I0(\ZOUT_reg_n_0_[0] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[1]_i_1 
       (.I0(\ZOUT_reg_n_0_[1] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[2]_i_1 
       (.I0(\ZOUT_reg_n_0_[2] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[3]_i_1 
       (.I0(\ZOUT_reg_n_0_[3] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[4]_i_1 
       (.I0(\ZOUT_reg_n_0_[4] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[5]_i_1 
       (.I0(\ZOUT_reg_n_0_[5] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[6]_i_1 
       (.I0(\ZOUT_reg_n_0_[6] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \B[7]_i_1 
       (.I0(\ZOUT_reg_n_0_[7] ),
        .I1(\ZOUT_reg_n_0_[8] ),
        .I2(\ZOUT_reg_n_0_[9] ),
        .I3(\ZOUT_reg_n_0_[19] ),
        .O(\B[7]_i_1_n_0 ));
  FDCE \B_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\B[0]_i_1_n_0 ),
        .Q(B[0]));
  FDCE \B_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\B[1]_i_1_n_0 ),
        .Q(B[1]));
  FDCE \B_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\B[2]_i_1_n_0 ),
        .Q(B[2]));
  FDCE \B_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\B[3]_i_1_n_0 ),
        .Q(B[3]));
  FDCE \B_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\B[4]_i_1_n_0 ),
        .Q(B[4]));
  FDCE \B_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\B[5]_i_1_n_0 ),
        .Q(B[5]));
  FDCE \B_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\B[6]_i_1_n_0 ),
        .Q(B[6]));
  FDCE \B_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\B[7]_i_1_n_0 ),
        .Q(B[7]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[0]_i_1 
       (.I0(\YOUT_reg_n_0_[0] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[1]_i_1 
       (.I0(\YOUT_reg_n_0_[1] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[2]_i_1 
       (.I0(\YOUT_reg_n_0_[2] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[3]_i_1 
       (.I0(\YOUT_reg_n_0_[3] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[4]_i_1 
       (.I0(\YOUT_reg_n_0_[4] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[5]_i_1 
       (.I0(\YOUT_reg_n_0_[5] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[6]_i_1 
       (.I0(\YOUT_reg_n_0_[6] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \G[7]_i_1 
       (.I0(\YOUT_reg_n_0_[7] ),
        .I1(\YOUT_reg_n_0_[8] ),
        .I2(\YOUT_reg_n_0_[9] ),
        .I3(\YOUT_reg_n_0_[19] ),
        .O(\G[7]_i_1_n_0 ));
  FDCE \G_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\G[0]_i_1_n_0 ),
        .Q(G[0]));
  FDCE \G_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\G[1]_i_1_n_0 ),
        .Q(G[1]));
  FDCE \G_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\G[2]_i_1_n_0 ),
        .Q(G[2]));
  FDCE \G_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\G[3]_i_1_n_0 ),
        .Q(G[3]));
  FDCE \G_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\G[4]_i_1_n_0 ),
        .Q(G[4]));
  FDCE \G_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\G[5]_i_1_n_0 ),
        .Q(G[5]));
  FDCE \G_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\G[6]_i_1_n_0 ),
        .Q(G[6]));
  FDCE \G_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\G[7]_i_1_n_0 ),
        .Q(G[7]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[0]_i_1 
       (.I0(\XOUT_reg_n_0_[0] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[1]_i_1 
       (.I0(\XOUT_reg_n_0_[1] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[2]_i_1 
       (.I0(\XOUT_reg_n_0_[2] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[3]_i_1 
       (.I0(\XOUT_reg_n_0_[3] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[4]_i_1 
       (.I0(\XOUT_reg_n_0_[4] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[5]_i_1 
       (.I0(\XOUT_reg_n_0_[5] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[6]_i_1 
       (.I0(\XOUT_reg_n_0_[6] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \R[7]_i_1 
       (.I0(\XOUT_reg_n_0_[7] ),
        .I1(\XOUT_reg_n_0_[8] ),
        .I2(\XOUT_reg_n_0_[9] ),
        .I3(\XOUT_reg_n_0_[19] ),
        .O(p_0_in[7]));
  FDCE \R_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(p_0_in[0]),
        .Q(R[0]));
  FDCE \R_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(p_0_in[1]),
        .Q(R[1]));
  FDCE \R_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(p_0_in[2]),
        .Q(R[2]));
  FDCE \R_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(p_0_in[3]),
        .Q(R[3]));
  FDCE \R_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(p_0_in[4]),
        .Q(R[4]));
  FDCE \R_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(p_0_in[5]),
        .Q(R[5]));
  FDCE \R_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(p_0_in[6]),
        .Q(R[6]));
  FDCE \R_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(p_0_in[7]),
        .Q(R[7]));
  LUT3 #(
    .INIT(8'hB7)) 
    \XOUT[19]_i_2 
       (.I0(img_Cr_r10_n_88),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_88),
        .O(\XOUT[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \XOUT[19]_i_3 
       (.I0(img_Cr_r10_n_90),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_90),
        .O(\XOUT[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h37)) 
    \XOUT[19]_i_4 
       (.I0(img_Y_r10_n_88),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_88),
        .O(\XOUT[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    \XOUT[19]_i_5 
       (.I0(img_Cr_r10_n_88),
        .I1(img_Y_r10_n_88),
        .I2(img_Y_r10_n_89),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cr_r10_n_89),
        .O(\XOUT[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h87007800)) 
    \XOUT[19]_i_6 
       (.I0(img_Y_r10_n_90),
        .I1(img_Cr_r10_n_90),
        .I2(img_Cr_r10_n_89),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_89),
        .O(\XOUT[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h87007800)) 
    \XOUT[2]_i_10 
       (.I0(img_Y_r10_n_98),
        .I1(img_Cr_r10_n_98),
        .I2(img_Cr_r10_n_97),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_97),
        .O(\XOUT[2]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \XOUT[2]_i_12 
       (.I0(img_Cr_r10_n_99),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_99),
        .O(\XOUT[2]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \XOUT[2]_i_13 
       (.I0(img_Y_r10_n_100),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_100),
        .O(\XOUT[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \XOUT[2]_i_14 
       (.I0(img_Cr_r10_n_100),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_100),
        .O(\XOUT[2]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \XOUT[2]_i_15 
       (.I0(img_Y_r10_n_102),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_102),
        .O(\XOUT[2]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h87007800)) 
    \XOUT[2]_i_16 
       (.I0(img_Y_r10_n_99),
        .I1(img_Cr_r10_n_99),
        .I2(img_Cr_r10_n_98),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_98),
        .O(\XOUT[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    \XOUT[2]_i_17 
       (.I0(img_Cr_r10_n_100),
        .I1(img_Y_r10_n_100),
        .I2(img_Cr_r10_n_99),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_99),
        .O(\XOUT[2]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    \XOUT[2]_i_18 
       (.I0(img_Cr_r10_n_100),
        .I1(img_Y_r10_n_100),
        .I2(img_Y_r10_n_101),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cr_r10_n_101),
        .O(\XOUT[2]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    \XOUT[2]_i_19 
       (.I0(img_Cr_r10_n_102),
        .I1(img_Y_r10_n_102),
        .I2(img_Cr_r10_n_101),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_101),
        .O(\XOUT[2]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \XOUT[2]_i_20 
       (.I0(img_Cr_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Cr_r1));
  LUT2 #(
    .INIT(4'h8)) 
    \XOUT[2]_i_21 
       (.I0(img_Y_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(\XOUT[2]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \XOUT[2]_i_22 
       (.I0(img_Y_r10_n_104),
        .I1(\ZOUT_reg[19]_0 ),
        .O(\XOUT[2]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \XOUT[2]_i_23 
       (.I0(img_Y_r10_n_105),
        .I1(\ZOUT_reg[19]_0 ),
        .O(\XOUT[2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h6F9F)) 
    \XOUT[2]_i_24 
       (.I0(img_Cr_r10_n_102),
        .I1(img_Y_r10_n_102),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Cr_r10_n_103),
        .O(\XOUT[2]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \XOUT[2]_i_25 
       (.I0(img_Cr_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_103),
        .O(\XOUT[2]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \XOUT[2]_i_26 
       (.I0(img_Y_r10_n_104),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_104),
        .O(\XOUT[2]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \XOUT[2]_i_27 
       (.I0(img_Y_r10_n_105),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_105),
        .O(\XOUT[2]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \XOUT[2]_i_3 
       (.I0(img_Cr_r10_n_95),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_95),
        .O(\XOUT[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \XOUT[2]_i_4 
       (.I0(img_Y_r10_n_96),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_96),
        .O(\XOUT[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \XOUT[2]_i_5 
       (.I0(img_Cr_r10_n_96),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_96),
        .O(\XOUT[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \XOUT[2]_i_6 
       (.I0(img_Cr_r10_n_98),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_98),
        .O(\XOUT[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h87007800)) 
    \XOUT[2]_i_7 
       (.I0(img_Y_r10_n_95),
        .I1(img_Cr_r10_n_95),
        .I2(img_Cr_r10_n_94),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_94),
        .O(\XOUT[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    \XOUT[2]_i_8 
       (.I0(img_Cr_r10_n_96),
        .I1(img_Y_r10_n_96),
        .I2(img_Cr_r10_n_95),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_95),
        .O(\XOUT[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    \XOUT[2]_i_9 
       (.I0(img_Cr_r10_n_96),
        .I1(img_Y_r10_n_96),
        .I2(img_Y_r10_n_97),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cr_r10_n_97),
        .O(\XOUT[2]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \XOUT[6]_i_2 
       (.I0(img_Y_r10_n_91),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cr_r10_n_91),
        .O(\XOUT[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \XOUT[6]_i_3 
       (.I0(img_Cr_r10_n_91),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_91),
        .O(\XOUT[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \XOUT[6]_i_4 
       (.I0(img_Cr_r10_n_93),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_93),
        .O(\XOUT[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \XOUT[6]_i_5 
       (.I0(img_Cr_r10_n_94),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_94),
        .O(\XOUT[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    \XOUT[6]_i_6 
       (.I0(img_Cr_r10_n_91),
        .I1(img_Y_r10_n_91),
        .I2(img_Cr_r10_n_90),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_90),
        .O(\XOUT[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    \XOUT[6]_i_7 
       (.I0(img_Cr_r10_n_91),
        .I1(img_Y_r10_n_91),
        .I2(img_Y_r10_n_92),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cr_r10_n_92),
        .O(\XOUT[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h87007800)) 
    \XOUT[6]_i_8 
       (.I0(img_Y_r10_n_93),
        .I1(img_Cr_r10_n_93),
        .I2(img_Cr_r10_n_92),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_92),
        .O(\XOUT[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h87007800)) 
    \XOUT[6]_i_9 
       (.I0(img_Y_r10_n_94),
        .I1(img_Cr_r10_n_94),
        .I2(img_Cr_r10_n_93),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_93),
        .O(\XOUT[6]_i_9_n_0 ));
  FDCE \XOUT_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\XOUT_reg[2]_i_1_n_6 ),
        .Q(\XOUT_reg_n_0_[0] ));
  FDCE \XOUT_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(p_0_in0),
        .Q(\XOUT_reg_n_0_[19] ));
  CARRY4 \XOUT_reg[19]_i_1 
       (.CI(\XOUT_reg[6]_i_1_n_0 ),
        .CO({\NLW_XOUT_reg[19]_i_1_CO_UNCONNECTED [3],\XOUT_reg[19]_i_1_n_1 ,\XOUT_reg[19]_i_1_n_2 ,\XOUT_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,\XOUT[19]_i_2_n_0 ,\XOUT[19]_i_3_n_0 }),
        .O({p_0_in0,\XOUT_reg[19]_i_1_n_5 ,\XOUT_reg[19]_i_1_n_6 ,\XOUT_reg[19]_i_1_n_7 }),
        .S({1'b1,\XOUT[19]_i_4_n_0 ,\XOUT[19]_i_5_n_0 ,\XOUT[19]_i_6_n_0 }));
  FDCE \XOUT_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\XOUT_reg[2]_i_1_n_5 ),
        .Q(\XOUT_reg_n_0_[1] ));
  FDCE \XOUT_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\XOUT_reg[2]_i_1_n_4 ),
        .Q(\XOUT_reg_n_0_[2] ));
  CARRY4 \XOUT_reg[2]_i_1 
       (.CI(\XOUT_reg[2]_i_2_n_0 ),
        .CO({\XOUT_reg[2]_i_1_n_0 ,\XOUT_reg[2]_i_1_n_1 ,\XOUT_reg[2]_i_1_n_2 ,\XOUT_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\XOUT[2]_i_3_n_0 ,\XOUT[2]_i_4_n_0 ,\XOUT[2]_i_5_n_0 ,\XOUT[2]_i_6_n_0 }),
        .O({\XOUT_reg[2]_i_1_n_4 ,\XOUT_reg[2]_i_1_n_5 ,\XOUT_reg[2]_i_1_n_6 ,\NLW_XOUT_reg[2]_i_1_O_UNCONNECTED [0]}),
        .S({\XOUT[2]_i_7_n_0 ,\XOUT[2]_i_8_n_0 ,\XOUT[2]_i_9_n_0 ,\XOUT[2]_i_10_n_0 }));
  CARRY4 \XOUT_reg[2]_i_11 
       (.CI(1'b0),
        .CO({\XOUT_reg[2]_i_11_n_0 ,\XOUT_reg[2]_i_11_n_1 ,\XOUT_reg[2]_i_11_n_2 ,\XOUT_reg[2]_i_11_n_3 }),
        .CYINIT(1'b1),
        .DI({img_Cr_r1,\XOUT[2]_i_21_n_0 ,\XOUT[2]_i_22_n_0 ,\XOUT[2]_i_23_n_0 }),
        .O(\NLW_XOUT_reg[2]_i_11_O_UNCONNECTED [3:0]),
        .S({\XOUT[2]_i_24_n_0 ,\XOUT[2]_i_25_n_0 ,\XOUT[2]_i_26_n_0 ,\XOUT[2]_i_27_n_0 }));
  CARRY4 \XOUT_reg[2]_i_2 
       (.CI(\XOUT_reg[2]_i_11_n_0 ),
        .CO({\XOUT_reg[2]_i_2_n_0 ,\XOUT_reg[2]_i_2_n_1 ,\XOUT_reg[2]_i_2_n_2 ,\XOUT_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\XOUT[2]_i_12_n_0 ,\XOUT[2]_i_13_n_0 ,\XOUT[2]_i_14_n_0 ,\XOUT[2]_i_15_n_0 }),
        .O(\NLW_XOUT_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\XOUT[2]_i_16_n_0 ,\XOUT[2]_i_17_n_0 ,\XOUT[2]_i_18_n_0 ,\XOUT[2]_i_19_n_0 }));
  FDCE \XOUT_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\XOUT_reg[6]_i_1_n_7 ),
        .Q(\XOUT_reg_n_0_[3] ));
  FDCE \XOUT_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\XOUT_reg[6]_i_1_n_6 ),
        .Q(\XOUT_reg_n_0_[4] ));
  FDCE \XOUT_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\XOUT_reg[6]_i_1_n_5 ),
        .Q(\XOUT_reg_n_0_[5] ));
  FDCE \XOUT_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\XOUT_reg[6]_i_1_n_4 ),
        .Q(\XOUT_reg_n_0_[6] ));
  CARRY4 \XOUT_reg[6]_i_1 
       (.CI(\XOUT_reg[2]_i_1_n_0 ),
        .CO({\XOUT_reg[6]_i_1_n_0 ,\XOUT_reg[6]_i_1_n_1 ,\XOUT_reg[6]_i_1_n_2 ,\XOUT_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\XOUT[6]_i_2_n_0 ,\XOUT[6]_i_3_n_0 ,\XOUT[6]_i_4_n_0 ,\XOUT[6]_i_5_n_0 }),
        .O({\XOUT_reg[6]_i_1_n_4 ,\XOUT_reg[6]_i_1_n_5 ,\XOUT_reg[6]_i_1_n_6 ,\XOUT_reg[6]_i_1_n_7 }),
        .S({\XOUT[6]_i_6_n_0 ,\XOUT[6]_i_7_n_0 ,\XOUT[6]_i_8_n_0 ,\XOUT[6]_i_9_n_0 }));
  FDCE \XOUT_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\XOUT_reg[19]_i_1_n_7 ),
        .Q(\XOUT_reg_n_0_[7] ));
  FDCE \XOUT_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\XOUT_reg[19]_i_1_n_6 ),
        .Q(\XOUT_reg_n_0_[8] ));
  FDCE \XOUT_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(\XOUT_reg[19]_i_1_n_5 ),
        .Q(\XOUT_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[19]_i_2 
       (.I0(img_Y_r10_n_88),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[17]));
  LUT6 #(
    .INIT(64'h4040C440C440D5D5)) 
    \YOUT[19]_i_3 
       (.I0(img_Cr_r2[16]),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_89),
        .I3(img_Y_r10_n_90),
        .I4(img_Cr_r2[15]),
        .I5(img_Cb_r1[15]),
        .O(\YOUT[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \YOUT[19]_i_4 
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_88),
        .O(\YOUT[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8EF571F5)) 
    \YOUT[19]_i_5 
       (.I0(\YOUT[19]_i_6_n_0 ),
        .I1(img_Y_r10_n_89),
        .I2(img_Cr_r2[16]),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_88),
        .O(\YOUT[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h7111)) 
    \YOUT[19]_i_6 
       (.I0(img_Cb_r1[15]),
        .I1(img_Cr_r2[15]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_90),
        .O(\YOUT[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h95AAAA95AA9595AA)) 
    \YOUT[3]_i_10 
       (.I0(\YOUT[3]_i_6_n_0 ),
        .I1(img_Cr_r2[7]),
        .I2(img_Cb_r1[7]),
        .I3(img_Y_r1[8]),
        .I4(img_Cb_r1[8]),
        .I5(img_Cr_r2[8]),
        .O(\YOUT[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9000F999F999F999)) 
    \YOUT[3]_i_12 
       (.I0(img_Cb_r1[7]),
        .I1(img_Cr_r2[7]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_98),
        .I4(img_Cb_r1[6]),
        .I5(img_Cr_r2[6]),
        .O(\YOUT[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9000F999F999F999)) 
    \YOUT[3]_i_13 
       (.I0(img_Cb_r1[6]),
        .I1(img_Cr_r2[6]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_99),
        .I4(img_Cb_r1[5]),
        .I5(img_Cr_r2[5]),
        .O(\YOUT[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF88F)) 
    \YOUT[3]_i_14 
       (.I0(img_Y_r10_n_100),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r1[5]),
        .I3(img_Cr_r2[5]),
        .O(\YOUT[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \YOUT[3]_i_15 
       (.I0(img_Y_r10_n_101),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r1[4]),
        .O(\YOUT[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996699669)) 
    \YOUT[3]_i_16 
       (.I0(\YOUT[3]_i_12_n_0 ),
        .I1(img_Y_r1[8]),
        .I2(img_Cb_r1[8]),
        .I3(img_Cr_r2[8]),
        .I4(img_Cr_r2[7]),
        .I5(img_Cb_r1[7]),
        .O(\YOUT[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \YOUT[3]_i_17 
       (.I0(\YOUT[3]_i_13_n_0 ),
        .I1(img_Cb_r1[7]),
        .I2(img_Cr_r2[7]),
        .I3(img_Y_r1[7]),
        .I4(img_Cr_r2[6]),
        .I5(img_Cb_r1[6]),
        .O(\YOUT[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \YOUT[3]_i_18 
       (.I0(\YOUT[3]_i_14_n_0 ),
        .I1(img_Cb_r1[6]),
        .I2(img_Cr_r2[6]),
        .I3(img_Y_r1[6]),
        .I4(img_Cr_r2[5]),
        .I5(img_Cb_r1[5]),
        .O(\YOUT[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2D55D2AAD2AA2D55)) 
    \YOUT[3]_i_19 
       (.I0(img_Cb_r1[4]),
        .I1(img_Y_r10_n_101),
        .I2(img_Y_r10_n_100),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cr_r2[5]),
        .I5(img_Cb_r1[5]),
        .O(\YOUT[3]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[3]_i_20 
       (.I0(img_Y_r10_n_96),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[9]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[3]_i_21 
       (.I0(img_Y_r10_n_97),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \YOUT[3]_i_22 
       (.I0(img_Cr_r2[9]),
        .I1(img_Cb_r1[9]),
        .O(\YOUT[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[3]_i_23 
       (.I0(img_Y_r10_n_94),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[11]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[3]_i_24 
       (.I0(img_Y_r10_n_95),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[10]));
  LUT3 #(
    .INIT(8'h8F)) 
    \YOUT[3]_i_25 
       (.I0(img_Y_r10_n_102),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r1[3]),
        .O(\YOUT[3]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[3]_i_26 
       (.I0(img_Y_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(\YOUT[3]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \YOUT[3]_i_27 
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_103),
        .O(\YOUT[3]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hD2AA2D55)) 
    \YOUT[3]_i_28 
       (.I0(img_Cb_r1[3]),
        .I1(img_Y_r10_n_102),
        .I2(img_Y_r10_n_101),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r1[4]),
        .O(\YOUT[3]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9C6C)) 
    \YOUT[3]_i_29 
       (.I0(img_Y_r10_n_102),
        .I1(img_Cb_r1[3]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_103),
        .O(\YOUT[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h9000F999F999F999)) 
    \YOUT[3]_i_3 
       (.I0(img_Cb_r1[11]),
        .I1(img_Cr_r2[11]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_94),
        .I4(img_Cb_r1[10]),
        .I5(img_Cr_r2[10]),
        .O(\YOUT[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[3]_i_30 
       (.I0(img_Y_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(\YOUT[3]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \YOUT[3]_i_31 
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_104),
        .O(\YOUT[3]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[3]_i_32 
       (.I0(img_Y_r10_n_98),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[7]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[3]_i_33 
       (.I0(img_Y_r10_n_99),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[6]));
  LUT6 #(
    .INIT(64'h9000F999F999F999)) 
    \YOUT[3]_i_4 
       (.I0(img_Cb_r1[10]),
        .I1(img_Cr_r2[10]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_95),
        .I4(img_Cb_r1[9]),
        .I5(img_Cr_r2[9]),
        .O(\YOUT[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9090F990F990F9F9)) 
    \YOUT[3]_i_5 
       (.I0(img_Cb_r1[9]),
        .I1(img_Cr_r2[9]),
        .I2(img_Y_r1[9]),
        .I3(img_Y_r1[8]),
        .I4(img_Cr_r2[8]),
        .I5(img_Cb_r1[8]),
        .O(\YOUT[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD42B03032BD4FCFC)) 
    \YOUT[3]_i_6 
       (.I0(img_Y_r10_n_97),
        .I1(img_Cr_r2[8]),
        .I2(img_Cb_r1[8]),
        .I3(img_Y_r10_n_96),
        .I4(\ZOUT_reg[19]_0 ),
        .I5(\YOUT[3]_i_22_n_0 ),
        .O(\YOUT[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996699669)) 
    \YOUT[3]_i_7 
       (.I0(\YOUT[3]_i_3_n_0 ),
        .I1(img_Y_r1[12]),
        .I2(img_Cb_r1[12]),
        .I3(img_Cr_r2[12]),
        .I4(img_Cr_r2[11]),
        .I5(img_Cb_r1[11]),
        .O(\YOUT[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \YOUT[3]_i_8 
       (.I0(\YOUT[3]_i_4_n_0 ),
        .I1(img_Cb_r1[11]),
        .I2(img_Cr_r2[11]),
        .I3(img_Y_r1[11]),
        .I4(img_Cr_r2[10]),
        .I5(img_Cb_r1[10]),
        .O(\YOUT[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \YOUT[3]_i_9 
       (.I0(\YOUT[3]_i_5_n_0 ),
        .I1(img_Cb_r1[10]),
        .I2(img_Cr_r2[10]),
        .I3(img_Y_r1[10]),
        .I4(img_Cr_r2[9]),
        .I5(img_Cb_r1[9]),
        .O(\YOUT[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[7]_i_10 
       (.I0(img_Y_r10_n_91),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[14]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[7]_i_11 
       (.I0(img_Y_r10_n_92),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[13]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[7]_i_12 
       (.I0(img_Y_r10_n_93),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[12]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[7]_i_13 
       (.I0(img_Y_r10_n_89),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[16]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h7111)) 
    \YOUT[7]_i_14 
       (.I0(img_Cb_r1[14]),
        .I1(img_Cr_r2[14]),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_91),
        .O(\YOUT[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \YOUT[7]_i_15 
       (.I0(img_Y_r10_n_90),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[15]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \YOUT[7]_i_16 
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_90),
        .I2(img_Cb_r1[15]),
        .I3(img_Cr_r2[15]),
        .O(\YOUT[7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \YOUT[7]_i_17 
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_91),
        .I2(img_Cb_r1[14]),
        .I3(img_Cr_r2[14]),
        .O(\YOUT[7]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \YOUT[7]_i_18 
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Y_r10_n_92),
        .I2(img_Cb_r1[13]),
        .I3(img_Cr_r2[13]),
        .O(\YOUT[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hD42B03032BD4FCFC)) 
    \YOUT[7]_i_2 
       (.I0(img_Y_r10_n_90),
        .I1(img_Cr_r2[15]),
        .I2(img_Cb_r1[15]),
        .I3(img_Y_r10_n_89),
        .I4(\ZOUT_reg[19]_0 ),
        .I5(img_Cr_r2[16]),
        .O(\YOUT[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000960096009696)) 
    \YOUT[7]_i_3 
       (.I0(img_Cr_r2[14]),
        .I1(img_Cb_r1[14]),
        .I2(img_Y_r1[14]),
        .I3(img_Y_r1[13]),
        .I4(img_Cr_r2[13]),
        .I5(img_Cb_r1[13]),
        .O(\YOUT[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000960096009696)) 
    \YOUT[7]_i_4 
       (.I0(img_Cr_r2[13]),
        .I1(img_Cb_r1[13]),
        .I2(img_Y_r1[13]),
        .I3(img_Y_r1[12]),
        .I4(img_Cr_r2[12]),
        .I5(img_Cb_r1[12]),
        .O(\YOUT[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000966696669666)) 
    \YOUT[7]_i_5 
       (.I0(img_Cr_r2[12]),
        .I1(img_Cb_r1[12]),
        .I2(img_Y_r10_n_93),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r1[11]),
        .I5(img_Cr_r2[11]),
        .O(\YOUT[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6999666966699666)) 
    \YOUT[7]_i_6 
       (.I0(img_Cr_r2[16]),
        .I1(img_Y_r1[16]),
        .I2(\YOUT[7]_i_14_n_0 ),
        .I3(img_Y_r1[15]),
        .I4(img_Cb_r1[15]),
        .I5(img_Cr_r2[15]),
        .O(\YOUT[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6999666966696669)) 
    \YOUT[7]_i_7 
       (.I0(\YOUT[7]_i_3_n_0 ),
        .I1(\YOUT[7]_i_16_n_0 ),
        .I2(img_Cb_r1[14]),
        .I3(img_Cr_r2[14]),
        .I4(\ZOUT_reg[19]_0 ),
        .I5(img_Y_r10_n_91),
        .O(\YOUT[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6999666966696669)) 
    \YOUT[7]_i_8 
       (.I0(\YOUT[7]_i_4_n_0 ),
        .I1(\YOUT[7]_i_17_n_0 ),
        .I2(img_Cb_r1[13]),
        .I3(img_Cr_r2[13]),
        .I4(\ZOUT_reg[19]_0 ),
        .I5(img_Y_r10_n_92),
        .O(\YOUT[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6999666966696669)) 
    \YOUT[7]_i_9 
       (.I0(\YOUT[7]_i_5_n_0 ),
        .I1(\YOUT[7]_i_18_n_0 ),
        .I2(img_Cb_r1[12]),
        .I3(img_Cr_r2[12]),
        .I4(\ZOUT_reg[19]_0 ),
        .I5(img_Y_r10_n_93),
        .O(\YOUT[7]_i_9_n_0 ));
  FDCE \YOUT_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[9]),
        .Q(\YOUT_reg_n_0_[0] ));
  FDCE \YOUT_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[19]),
        .Q(\YOUT_reg_n_0_[19] ));
  CARRY4 \YOUT_reg[19]_i_1 
       (.CI(\YOUT_reg[7]_i_1_n_0 ),
        .CO({\NLW_YOUT_reg[19]_i_1_CO_UNCONNECTED [3:2],\YOUT_reg[19]_i_1_n_2 ,\YOUT_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,img_Y_r1[17],\YOUT[19]_i_3_n_0 }),
        .O({\NLW_YOUT_reg[19]_i_1_O_UNCONNECTED [3],YOUT1[19:17]}),
        .S({1'b0,1'b1,\YOUT[19]_i_4_n_0 ,\YOUT[19]_i_5_n_0 }));
  FDCE \YOUT_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[10]),
        .Q(\YOUT_reg_n_0_[1] ));
  FDCE \YOUT_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[11]),
        .Q(\YOUT_reg_n_0_[2] ));
  FDCE \YOUT_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[12]),
        .Q(\YOUT_reg_n_0_[3] ));
  CARRY4 \YOUT_reg[3]_i_1 
       (.CI(\YOUT_reg[3]_i_2_n_0 ),
        .CO({\YOUT_reg[3]_i_1_n_0 ,\YOUT_reg[3]_i_1_n_1 ,\YOUT_reg[3]_i_1_n_2 ,\YOUT_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\YOUT[3]_i_3_n_0 ,\YOUT[3]_i_4_n_0 ,\YOUT[3]_i_5_n_0 ,\YOUT[3]_i_6_n_0 }),
        .O(YOUT1[12:9]),
        .S({\YOUT[3]_i_7_n_0 ,\YOUT[3]_i_8_n_0 ,\YOUT[3]_i_9_n_0 ,\YOUT[3]_i_10_n_0 }));
  CARRY4 \YOUT_reg[3]_i_11 
       (.CI(1'b0),
        .CO({\YOUT_reg[3]_i_11_n_0 ,\YOUT_reg[3]_i_11_n_1 ,\YOUT_reg[3]_i_11_n_2 ,\YOUT_reg[3]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\YOUT[3]_i_25_n_0 ,\YOUT[3]_i_26_n_0 ,\YOUT[3]_i_27_n_0 ,1'b1}),
        .O(\NLW_YOUT_reg[3]_i_11_O_UNCONNECTED [3:0]),
        .S({\YOUT[3]_i_28_n_0 ,\YOUT[3]_i_29_n_0 ,\YOUT[3]_i_30_n_0 ,\YOUT[3]_i_31_n_0 }));
  CARRY4 \YOUT_reg[3]_i_2 
       (.CI(\YOUT_reg[3]_i_11_n_0 ),
        .CO({\YOUT_reg[3]_i_2_n_0 ,\YOUT_reg[3]_i_2_n_1 ,\YOUT_reg[3]_i_2_n_2 ,\YOUT_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\YOUT[3]_i_12_n_0 ,\YOUT[3]_i_13_n_0 ,\YOUT[3]_i_14_n_0 ,\YOUT[3]_i_15_n_0 }),
        .O(\NLW_YOUT_reg[3]_i_2_O_UNCONNECTED [3:0]),
        .S({\YOUT[3]_i_16_n_0 ,\YOUT[3]_i_17_n_0 ,\YOUT[3]_i_18_n_0 ,\YOUT[3]_i_19_n_0 }));
  FDCE \YOUT_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[13]),
        .Q(\YOUT_reg_n_0_[4] ));
  FDCE \YOUT_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[14]),
        .Q(\YOUT_reg_n_0_[5] ));
  FDCE \YOUT_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[15]),
        .Q(\YOUT_reg_n_0_[6] ));
  FDCE \YOUT_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[16]),
        .Q(\YOUT_reg_n_0_[7] ));
  CARRY4 \YOUT_reg[7]_i_1 
       (.CI(\YOUT_reg[3]_i_1_n_0 ),
        .CO({\YOUT_reg[7]_i_1_n_0 ,\YOUT_reg[7]_i_1_n_1 ,\YOUT_reg[7]_i_1_n_2 ,\YOUT_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\YOUT[7]_i_2_n_0 ,\YOUT[7]_i_3_n_0 ,\YOUT[7]_i_4_n_0 ,\YOUT[7]_i_5_n_0 }),
        .O(YOUT1[16:13]),
        .S({\YOUT[7]_i_6_n_0 ,\YOUT[7]_i_7_n_0 ,\YOUT[7]_i_8_n_0 ,\YOUT[7]_i_9_n_0 }));
  FDCE \YOUT_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[17]),
        .Q(\YOUT_reg_n_0_[8] ));
  FDCE \YOUT_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(YOUT1[18]),
        .Q(\YOUT_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h7)) 
    \ZOUT[19]_i_2 
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Cb_r20_n_87),
        .O(\ZOUT[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \ZOUT[19]_i_3 
       (.I0(img_Y_r10_n_89),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_89),
        .O(\ZOUT[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \ZOUT[19]_i_4 
       (.I0(img_Y_r10_n_90),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_90),
        .O(\ZOUT[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ZOUT[19]_i_5 
       (.I0(\ZOUT_reg[19]_0 ),
        .I1(img_Cb_r20_n_87),
        .O(\ZOUT[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9F5F)) 
    \ZOUT[19]_i_6 
       (.I0(img_Cb_r20_n_87),
        .I1(img_Y_r10_n_88),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Cb_r20_n_88),
        .O(\ZOUT[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    \ZOUT[19]_i_7 
       (.I0(img_Cb_r20_n_89),
        .I1(img_Y_r10_n_89),
        .I2(img_Cb_r20_n_88),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_88),
        .O(\ZOUT[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h1EFFE1FF)) 
    \ZOUT[19]_i_8 
       (.I0(img_Cb_r20_n_90),
        .I1(img_Y_r10_n_90),
        .I2(img_Cb_r20_n_89),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_89),
        .O(\ZOUT[19]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h87007800)) 
    \ZOUT[2]_i_10 
       (.I0(img_Y_r10_n_98),
        .I1(img_Cb_r20_n_98),
        .I2(img_Cb_r20_n_97),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_97),
        .O(\ZOUT[2]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \ZOUT[2]_i_12 
       (.I0(img_Cb_r20_n_99),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_99),
        .O(\ZOUT[2]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \ZOUT[2]_i_13 
       (.I0(img_Y_r10_n_100),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_100),
        .O(\ZOUT[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \ZOUT[2]_i_14 
       (.I0(img_Cb_r20_n_100),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_100),
        .O(\ZOUT[2]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \ZOUT[2]_i_15 
       (.I0(img_Cb_r20_n_102),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_102),
        .O(\ZOUT[2]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h87007800)) 
    \ZOUT[2]_i_16 
       (.I0(img_Y_r10_n_99),
        .I1(img_Cb_r20_n_99),
        .I2(img_Cb_r20_n_98),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_98),
        .O(\ZOUT[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    \ZOUT[2]_i_17 
       (.I0(img_Cb_r20_n_100),
        .I1(img_Y_r10_n_100),
        .I2(img_Cb_r20_n_99),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_99),
        .O(\ZOUT[2]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    \ZOUT[2]_i_18 
       (.I0(img_Cb_r20_n_100),
        .I1(img_Y_r10_n_100),
        .I2(img_Y_r10_n_101),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r20_n_101),
        .O(\ZOUT[2]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h87007800)) 
    \ZOUT[2]_i_19 
       (.I0(img_Y_r10_n_102),
        .I1(img_Cb_r20_n_102),
        .I2(img_Cb_r20_n_101),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_101),
        .O(\ZOUT[2]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ZOUT[2]_i_20 
       (.I0(img_Cb_r20_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Cb_r2));
  LUT2 #(
    .INIT(4'h8)) 
    \ZOUT[2]_i_21 
       (.I0(img_Y_r10_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \ZOUT[2]_i_22 
       (.I0(img_Y_r10_n_104),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \ZOUT[2]_i_23 
       (.I0(img_Y_r10_n_105),
        .I1(\ZOUT_reg[19]_0 ),
        .O(img_Y_r1[0]));
  LUT4 #(
    .INIT(16'h9060)) 
    \ZOUT[2]_i_24 
       (.I0(img_Cb_r20_n_103),
        .I1(img_Cb_r20_n_102),
        .I2(\ZOUT_reg[19]_0 ),
        .I3(img_Y_r10_n_102),
        .O(\ZOUT[2]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \ZOUT[2]_i_25 
       (.I0(img_Cb_r20_n_103),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_103),
        .O(\ZOUT[2]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \ZOUT[2]_i_26 
       (.I0(img_Y_r10_n_104),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_104),
        .O(\ZOUT[2]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \ZOUT[2]_i_27 
       (.I0(img_Y_r10_n_105),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_105),
        .O(\ZOUT[2]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \ZOUT[2]_i_3 
       (.I0(img_Y_r10_n_95),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_95),
        .O(\ZOUT[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \ZOUT[2]_i_4 
       (.I0(img_Y_r10_n_96),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_96),
        .O(\ZOUT[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \ZOUT[2]_i_5 
       (.I0(img_Cb_r20_n_96),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_96),
        .O(\ZOUT[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \ZOUT[2]_i_6 
       (.I0(img_Cb_r20_n_98),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_98),
        .O(\ZOUT[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    \ZOUT[2]_i_7 
       (.I0(img_Cb_r20_n_95),
        .I1(img_Y_r10_n_95),
        .I2(img_Cb_r20_n_94),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_94),
        .O(\ZOUT[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h1EFFE1FF)) 
    \ZOUT[2]_i_8 
       (.I0(img_Cb_r20_n_96),
        .I1(img_Y_r10_n_96),
        .I2(img_Cb_r20_n_95),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_95),
        .O(\ZOUT[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    \ZOUT[2]_i_9 
       (.I0(img_Cb_r20_n_96),
        .I1(img_Y_r10_n_96),
        .I2(img_Y_r10_n_97),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r20_n_97),
        .O(\ZOUT[2]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \ZOUT[6]_i_2 
       (.I0(img_Y_r10_n_91),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_91),
        .O(\ZOUT[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \ZOUT[6]_i_3 
       (.I0(img_Cb_r20_n_91),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_91),
        .O(\ZOUT[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \ZOUT[6]_i_4 
       (.I0(img_Y_r10_n_93),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Cb_r20_n_93),
        .O(\ZOUT[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB7)) 
    \ZOUT[6]_i_5 
       (.I0(img_Cb_r20_n_93),
        .I1(\ZOUT_reg[19]_0 ),
        .I2(img_Y_r10_n_93),
        .O(\ZOUT[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h1EFFE1FF)) 
    \ZOUT[6]_i_6 
       (.I0(img_Cb_r20_n_91),
        .I1(img_Y_r10_n_91),
        .I2(img_Cb_r20_n_90),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_90),
        .O(\ZOUT[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    \ZOUT[6]_i_7 
       (.I0(img_Cb_r20_n_91),
        .I1(img_Y_r10_n_91),
        .I2(img_Y_r10_n_92),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r20_n_92),
        .O(\ZOUT[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE1001E00)) 
    \ZOUT[6]_i_8 
       (.I0(img_Cb_r20_n_93),
        .I1(img_Y_r10_n_93),
        .I2(img_Cb_r20_n_92),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Y_r10_n_92),
        .O(\ZOUT[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h69FF99FF)) 
    \ZOUT[6]_i_9 
       (.I0(img_Cb_r20_n_93),
        .I1(img_Y_r10_n_93),
        .I2(img_Y_r10_n_94),
        .I3(\ZOUT_reg[19]_0 ),
        .I4(img_Cb_r20_n_94),
        .O(\ZOUT[6]_i_9_n_0 ));
  FDCE \ZOUT_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[9]),
        .Q(\ZOUT_reg_n_0_[0] ));
  FDCE \ZOUT_reg[19] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[19]),
        .Q(\ZOUT_reg_n_0_[19] ));
  CARRY4 \ZOUT_reg[19]_i_1 
       (.CI(\ZOUT_reg[6]_i_1_n_0 ),
        .CO({\NLW_ZOUT_reg[19]_i_1_CO_UNCONNECTED [3],\ZOUT_reg[19]_i_1_n_1 ,\ZOUT_reg[19]_i_1_n_2 ,\ZOUT_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\ZOUT[19]_i_2_n_0 ,\ZOUT[19]_i_3_n_0 ,\ZOUT[19]_i_4_n_0 }),
        .O(ZOUT1[19:16]),
        .S({\ZOUT[19]_i_5_n_0 ,\ZOUT[19]_i_6_n_0 ,\ZOUT[19]_i_7_n_0 ,\ZOUT[19]_i_8_n_0 }));
  FDCE \ZOUT_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[10]),
        .Q(\ZOUT_reg_n_0_[1] ));
  FDCE \ZOUT_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[11]),
        .Q(\ZOUT_reg_n_0_[2] ));
  CARRY4 \ZOUT_reg[2]_i_1 
       (.CI(\ZOUT_reg[2]_i_2_n_0 ),
        .CO({\ZOUT_reg[2]_i_1_n_0 ,\ZOUT_reg[2]_i_1_n_1 ,\ZOUT_reg[2]_i_1_n_2 ,\ZOUT_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ZOUT[2]_i_3_n_0 ,\ZOUT[2]_i_4_n_0 ,\ZOUT[2]_i_5_n_0 ,\ZOUT[2]_i_6_n_0 }),
        .O({ZOUT1[11:9],\NLW_ZOUT_reg[2]_i_1_O_UNCONNECTED [0]}),
        .S({\ZOUT[2]_i_7_n_0 ,\ZOUT[2]_i_8_n_0 ,\ZOUT[2]_i_9_n_0 ,\ZOUT[2]_i_10_n_0 }));
  CARRY4 \ZOUT_reg[2]_i_11 
       (.CI(1'b0),
        .CO({\ZOUT_reg[2]_i_11_n_0 ,\ZOUT_reg[2]_i_11_n_1 ,\ZOUT_reg[2]_i_11_n_2 ,\ZOUT_reg[2]_i_11_n_3 }),
        .CYINIT(1'b1),
        .DI({img_Cb_r2,img_Y_r1[2:0]}),
        .O(\NLW_ZOUT_reg[2]_i_11_O_UNCONNECTED [3:0]),
        .S({\ZOUT[2]_i_24_n_0 ,\ZOUT[2]_i_25_n_0 ,\ZOUT[2]_i_26_n_0 ,\ZOUT[2]_i_27_n_0 }));
  CARRY4 \ZOUT_reg[2]_i_2 
       (.CI(\ZOUT_reg[2]_i_11_n_0 ),
        .CO({\ZOUT_reg[2]_i_2_n_0 ,\ZOUT_reg[2]_i_2_n_1 ,\ZOUT_reg[2]_i_2_n_2 ,\ZOUT_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\ZOUT[2]_i_12_n_0 ,\ZOUT[2]_i_13_n_0 ,\ZOUT[2]_i_14_n_0 ,\ZOUT[2]_i_15_n_0 }),
        .O(\NLW_ZOUT_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\ZOUT[2]_i_16_n_0 ,\ZOUT[2]_i_17_n_0 ,\ZOUT[2]_i_18_n_0 ,\ZOUT[2]_i_19_n_0 }));
  FDCE \ZOUT_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[12]),
        .Q(\ZOUT_reg_n_0_[3] ));
  FDCE \ZOUT_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[13]),
        .Q(\ZOUT_reg_n_0_[4] ));
  FDCE \ZOUT_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[14]),
        .Q(\ZOUT_reg_n_0_[5] ));
  FDCE \ZOUT_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[15]),
        .Q(\ZOUT_reg_n_0_[6] ));
  CARRY4 \ZOUT_reg[6]_i_1 
       (.CI(\ZOUT_reg[2]_i_1_n_0 ),
        .CO({\ZOUT_reg[6]_i_1_n_0 ,\ZOUT_reg[6]_i_1_n_1 ,\ZOUT_reg[6]_i_1_n_2 ,\ZOUT_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ZOUT[6]_i_2_n_0 ,\ZOUT[6]_i_3_n_0 ,\ZOUT[6]_i_4_n_0 ,\ZOUT[6]_i_5_n_0 }),
        .O(ZOUT1[15:12]),
        .S({\ZOUT[6]_i_6_n_0 ,\ZOUT[6]_i_7_n_0 ,\ZOUT[6]_i_8_n_0 ,\ZOUT[6]_i_9_n_0 }));
  FDCE \ZOUT_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[16]),
        .Q(\ZOUT_reg_n_0_[7] ));
  FDCE \ZOUT_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[17]),
        .Q(\ZOUT_reg_n_0_[8] ));
  FDCE \ZOUT_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(ZOUT1[18]),
        .Q(\ZOUT_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[0]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(B[0]),
        .I2(Q[0]),
        .I3(s_yuv2rgb_en),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[10]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(G[2]),
        .I2(Q[10]),
        .I3(s_yuv2rgb_en),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[11]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(G[3]),
        .I2(Q[11]),
        .I3(s_yuv2rgb_en),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[12]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(G[4]),
        .I2(Q[12]),
        .I3(s_yuv2rgb_en),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[13]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(G[5]),
        .I2(Q[13]),
        .I3(s_yuv2rgb_en),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[14]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(G[6]),
        .I2(Q[14]),
        .I3(s_yuv2rgb_en),
        .O(D[14]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[15]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(G[7]),
        .I2(Q[15]),
        .I3(s_yuv2rgb_en),
        .O(D[15]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[16]_i_1__1 
       (.I0(yuv2rgb_href),
        .I1(R[0]),
        .I2(Q[16]),
        .I3(s_yuv2rgb_en),
        .O(D[16]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[17]_i_1__1 
       (.I0(yuv2rgb_href),
        .I1(R[1]),
        .I2(Q[17]),
        .I3(s_yuv2rgb_en),
        .O(D[17]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[18]_i_1__1 
       (.I0(yuv2rgb_href),
        .I1(R[2]),
        .I2(Q[18]),
        .I3(s_yuv2rgb_en),
        .O(D[18]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[19]_i_1__1 
       (.I0(yuv2rgb_href),
        .I1(R[3]),
        .I2(Q[19]),
        .I3(s_yuv2rgb_en),
        .O(D[19]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[1]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(B[1]),
        .I2(Q[1]),
        .I3(s_yuv2rgb_en),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[20]_i_1__1 
       (.I0(yuv2rgb_href),
        .I1(R[4]),
        .I2(Q[20]),
        .I3(s_yuv2rgb_en),
        .O(D[20]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[21]_i_1__1 
       (.I0(yuv2rgb_href),
        .I1(R[5]),
        .I2(Q[21]),
        .I3(s_yuv2rgb_en),
        .O(D[21]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[22]_i_1__1 
       (.I0(yuv2rgb_href),
        .I1(R[6]),
        .I2(Q[22]),
        .I3(s_yuv2rgb_en),
        .O(D[22]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[23]_i_1__1 
       (.I0(yuv2rgb_href),
        .I1(R[7]),
        .I2(Q[23]),
        .I3(s_yuv2rgb_en),
        .O(D[23]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[2]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(B[2]),
        .I2(Q[2]),
        .I3(s_yuv2rgb_en),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[3]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(B[3]),
        .I2(Q[3]),
        .I3(s_yuv2rgb_en),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[4]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(B[4]),
        .I2(Q[4]),
        .I3(s_yuv2rgb_en),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[5]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(B[5]),
        .I2(Q[5]),
        .I3(s_yuv2rgb_en),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[6]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(B[6]),
        .I2(Q[6]),
        .I3(s_yuv2rgb_en),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[7]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(B[7]),
        .I2(Q[7]),
        .I3(s_yuv2rgb_en),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[8]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(G[0]),
        .I2(Q[8]),
        .I3(s_yuv2rgb_en),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \data_reg[9]_i_1__0 
       (.I0(yuv2rgb_href),
        .I1(G[1]),
        .I2(Q[9]),
        .I3(s_yuv2rgb_en),
        .O(D[9]));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/href_r_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 " *) 
  SRL16E \href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(out_href),
        .Q(\href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ));
  FDRE \href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6 
       (.C(pclk),
        .CE(1'b1),
        .D(\href_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ),
        .Q(\href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ),
        .R(1'b0));
  FDCE \href_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(href_r_reg_gate_n_0),
        .Q(yuv2rgb_href));
  FDCE href_r_reg_c
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(1'b1),
        .Q(href_r_reg_c_n_0));
  FDCE href_r_reg_c_5
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(href_r_reg_c_n_0),
        .Q(href_r_reg_c_5_n_0));
  FDCE href_r_reg_c_6
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(href_r_reg_c_5_n_0),
        .Q(href_r_reg_c_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    href_r_reg_gate
       (.I0(\href_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ),
        .I1(href_r_reg_c_6_n_0),
        .O(href_r_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    href_reg_i_1__1
       (.I0(yuv2rgb_href),
        .I1(s_yuv2rgb_en),
        .I2(out_href),
        .O(in_href));
  LUT2 #(
    .INIT(4'h2)) 
    \img_Cb_r1[13]_i_2 
       (.I0(in_u_reg[4]),
        .I1(in_u_reg[6]),
        .O(\img_Cb_r1[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \img_Cb_r1[13]_i_3 
       (.I0(in_u_reg[3]),
        .I1(in_u_reg[5]),
        .O(\img_Cb_r1[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \img_Cb_r1[13]_i_4 
       (.I0(in_u_reg[4]),
        .I1(in_u_reg[7]),
        .I2(in_u_reg[2]),
        .O(\img_Cb_r1[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \img_Cb_r1[13]_i_5 
       (.I0(in_u_reg[3]),
        .I1(in_u_reg[6]),
        .I2(in_u_reg[1]),
        .O(\img_Cb_r1[13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \img_Cb_r1[13]_i_6 
       (.I0(in_u_reg[6]),
        .I1(in_u_reg[4]),
        .I2(in_u_reg[7]),
        .I3(in_u_reg[5]),
        .O(\img_Cb_r1[13]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \img_Cb_r1[13]_i_7 
       (.I0(in_u_reg[5]),
        .I1(in_u_reg[3]),
        .I2(in_u_reg[6]),
        .I3(in_u_reg[4]),
        .O(\img_Cb_r1[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \img_Cb_r1[13]_i_8 
       (.I0(in_u_reg[2]),
        .I1(in_u_reg[7]),
        .I2(in_u_reg[4]),
        .I3(in_u_reg[5]),
        .I4(in_u_reg[3]),
        .O(\img_Cb_r1[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \img_Cb_r1[13]_i_9 
       (.I0(in_u_reg[1]),
        .I1(in_u_reg[6]),
        .I2(in_u_reg[3]),
        .I3(in_u_reg[4]),
        .I4(in_u_reg[7]),
        .I5(in_u_reg[2]),
        .O(\img_Cb_r1[13]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \img_Cb_r1[15]_i_2 
       (.I0(in_u_reg[5]),
        .I1(in_u_reg[7]),
        .O(\img_Cb_r1[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cb_r1[15]_i_3 
       (.I0(in_u_reg[6]),
        .I1(in_u_reg[7]),
        .O(\img_Cb_r1[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \img_Cb_r1[15]_i_4 
       (.I0(in_u_reg[7]),
        .I1(in_u_reg[5]),
        .I2(in_u_reg[6]),
        .O(\img_Cb_r1[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \img_Cb_r1[9]_i_2 
       (.I0(in_u_reg[2]),
        .I1(in_u_reg[5]),
        .I2(in_u_reg[0]),
        .O(\img_Cb_r1[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \img_Cb_r1[9]_i_3 
       (.I0(in_u_reg[2]),
        .I1(in_u_reg[5]),
        .I2(in_u_reg[0]),
        .O(\img_Cb_r1[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \img_Cb_r1[9]_i_4 
       (.I0(in_u_reg[3]),
        .I1(in_u_reg[0]),
        .O(\img_Cb_r1[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \img_Cb_r1[9]_i_5 
       (.I0(in_u_reg[0]),
        .I1(in_u_reg[5]),
        .I2(in_u_reg[2]),
        .I3(in_u_reg[3]),
        .I4(in_u_reg[6]),
        .I5(in_u_reg[1]),
        .O(\img_Cb_r1[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \img_Cb_r1[9]_i_6 
       (.I0(in_u_reg[2]),
        .I1(in_u_reg[5]),
        .I2(in_u_reg[0]),
        .I3(in_u_reg[1]),
        .I4(in_u_reg[4]),
        .O(\img_Cb_r1[9]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \img_Cb_r1[9]_i_7 
       (.I0(in_u_reg[0]),
        .I1(in_u_reg[3]),
        .I2(in_u_reg[4]),
        .I3(in_u_reg[1]),
        .O(\img_Cb_r1[9]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cb_r1[9]_i_8 
       (.I0(in_u_reg[0]),
        .I1(in_u_reg[3]),
        .O(\img_Cb_r1[9]_i_8_n_0 ));
  FDCE \img_Cb_r1_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cb_r10[10]),
        .Q(img_Cb_r1[10]));
  FDCE \img_Cb_r1_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cb_r10[11]),
        .Q(img_Cb_r1[11]));
  FDCE \img_Cb_r1_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cb_r10[12]),
        .Q(img_Cb_r1[12]));
  FDCE \img_Cb_r1_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cb_r10[13]),
        .Q(img_Cb_r1[13]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \img_Cb_r1_reg[13]_i_1 
       (.CI(\img_Cb_r1_reg[9]_i_1_n_0 ),
        .CO({\img_Cb_r1_reg[13]_i_1_n_0 ,\img_Cb_r1_reg[13]_i_1_n_1 ,\img_Cb_r1_reg[13]_i_1_n_2 ,\img_Cb_r1_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\img_Cb_r1[13]_i_2_n_0 ,\img_Cb_r1[13]_i_3_n_0 ,\img_Cb_r1[13]_i_4_n_0 ,\img_Cb_r1[13]_i_5_n_0 }),
        .O(img_Cb_r10[13:10]),
        .S({\img_Cb_r1[13]_i_6_n_0 ,\img_Cb_r1[13]_i_7_n_0 ,\img_Cb_r1[13]_i_8_n_0 ,\img_Cb_r1[13]_i_9_n_0 }));
  FDCE \img_Cb_r1_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cb_r10[14]),
        .Q(img_Cb_r1[14]));
  FDCE \img_Cb_r1_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cb_r10[15]),
        .Q(img_Cb_r1[15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \img_Cb_r1_reg[15]_i_1 
       (.CI(\img_Cb_r1_reg[13]_i_1_n_0 ),
        .CO({\NLW_img_Cb_r1_reg[15]_i_1_CO_UNCONNECTED [3:1],\img_Cb_r1_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\img_Cb_r1[15]_i_2_n_0 }),
        .O({\NLW_img_Cb_r1_reg[15]_i_1_O_UNCONNECTED [3:2],img_Cb_r10[15:14]}),
        .S({1'b0,1'b0,\img_Cb_r1[15]_i_3_n_0 ,\img_Cb_r1[15]_i_4_n_0 }));
  FDCE \img_Cb_r1_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(in_u_reg[0]),
        .Q(img_Cb_r1[3]));
  FDCE \img_Cb_r1_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(in_u_reg[1]),
        .Q(img_Cb_r1[4]));
  FDCE \img_Cb_r1_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(in_u_reg[2]),
        .Q(img_Cb_r1[5]));
  FDCE \img_Cb_r1_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cb_r10[6]),
        .Q(img_Cb_r1[6]));
  FDCE \img_Cb_r1_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cb_r10[7]),
        .Q(img_Cb_r1[7]));
  FDCE \img_Cb_r1_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cb_r10[8]),
        .Q(img_Cb_r1[8]));
  FDCE \img_Cb_r1_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cb_r10[9]),
        .Q(img_Cb_r1[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \img_Cb_r1_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\img_Cb_r1_reg[9]_i_1_n_0 ,\img_Cb_r1_reg[9]_i_1_n_1 ,\img_Cb_r1_reg[9]_i_1_n_2 ,\img_Cb_r1_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\img_Cb_r1[9]_i_2_n_0 ,\img_Cb_r1[9]_i_3_n_0 ,\img_Cb_r1[9]_i_4_n_0 ,1'b0}),
        .O(img_Cb_r10[9:6]),
        .S({\img_Cb_r1[9]_i_5_n_0 ,\img_Cb_r1[9]_i_6_n_0 ,\img_Cb_r1[9]_i_7_n_0 ,\img_Cb_r1[9]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    img_Cb_r20
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_u_reg}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_img_Cb_r20_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_img_Cb_r20_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_img_Cb_r20_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_img_Cb_r20_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_img_Cb_r20_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_img_Cb_r20_OVERFLOW_UNCONNECTED),
        .P({NLW_img_Cb_r20_P_UNCONNECTED[47:19],img_Cb_r20_n_87,img_Cb_r20_n_88,img_Cb_r20_n_89,img_Cb_r20_n_90,img_Cb_r20_n_91,img_Cb_r20_n_92,img_Cb_r20_n_93,img_Cb_r20_n_94,img_Cb_r20_n_95,img_Cb_r20_n_96,img_Cb_r20_n_97,img_Cb_r20_n_98,img_Cb_r20_n_99,img_Cb_r20_n_100,img_Cb_r20_n_101,img_Cb_r20_n_102,img_Cb_r20_n_103,img_Cb_r20_n_104,img_Cb_r20_n_105}),
        .PATTERNBDETECT(NLW_img_Cb_r20_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_img_Cb_r20_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_img_Cb_r20_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_img_Cb_r20_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    img_Cr_r10
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_v_reg}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_img_Cr_r10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_img_Cr_r10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_img_Cr_r10_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_img_Cr_r10_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_img_Cr_r10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_img_Cr_r10_OVERFLOW_UNCONNECTED),
        .P({NLW_img_Cr_r10_P_UNCONNECTED[47:18],img_Cr_r10_n_88,img_Cr_r10_n_89,img_Cr_r10_n_90,img_Cr_r10_n_91,img_Cr_r10_n_92,img_Cr_r10_n_93,img_Cr_r10_n_94,img_Cr_r10_n_95,img_Cr_r10_n_96,img_Cr_r10_n_97,img_Cr_r10_n_98,img_Cr_r10_n_99,img_Cr_r10_n_100,img_Cr_r10_n_101,img_Cr_r10_n_102,img_Cr_r10_n_103,img_Cr_r10_n_104,img_Cr_r10_n_105}),
        .PATTERNBDETECT(NLW_img_Cr_r10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_img_Cr_r10_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_img_Cr_r10_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_img_Cr_r10_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[11]_i_2 
       (.I0(in_v_reg[6]),
        .I1(\img_Cr_r2_reg[15]_i_2_n_7 ),
        .O(\img_Cr_r2[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[11]_i_3 
       (.I0(in_v_reg[5]),
        .I1(\img_Cr_r2_reg[15]_i_4_n_4 ),
        .O(\img_Cr_r2[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[11]_i_4 
       (.I0(in_v_reg[4]),
        .I1(\img_Cr_r2_reg[15]_i_4_n_5 ),
        .O(\img_Cr_r2[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[11]_i_5 
       (.I0(in_v_reg[3]),
        .I1(\img_Cr_r2_reg[15]_i_4_n_6 ),
        .O(\img_Cr_r2[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_10 
       (.I0(in_v_reg[0]),
        .I1(in_v_reg[2]),
        .O(\img_Cr_r2[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \img_Cr_r2[15]_i_11 
       (.I0(in_v_reg[1]),
        .O(\img_Cr_r2[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[15]_i_3 
       (.I0(in_v_reg[7]),
        .I1(\img_Cr_r2_reg[15]_i_2_n_6 ),
        .O(\img_Cr_r2[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_5 
       (.I0(in_v_reg[5]),
        .I1(in_v_reg[7]),
        .O(\img_Cr_r2[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_6 
       (.I0(in_v_reg[4]),
        .I1(in_v_reg[6]),
        .O(\img_Cr_r2[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_7 
       (.I0(in_v_reg[3]),
        .I1(in_v_reg[5]),
        .O(\img_Cr_r2[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_8 
       (.I0(in_v_reg[2]),
        .I1(in_v_reg[4]),
        .O(\img_Cr_r2[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \img_Cr_r2[15]_i_9 
       (.I0(in_v_reg[1]),
        .I1(in_v_reg[3]),
        .O(\img_Cr_r2[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \img_Cr_r2[16]_i_3 
       (.I0(in_v_reg[7]),
        .O(\img_Cr_r2[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \img_Cr_r2[16]_i_4 
       (.I0(in_v_reg[6]),
        .O(\img_Cr_r2[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \img_Cr_r2[7]_i_2 
       (.I0(in_v_reg[2]),
        .I1(\img_Cr_r2_reg[15]_i_4_n_7 ),
        .O(\img_Cr_r2[7]_i_2_n_0 ));
  FDCE \img_Cr_r2_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[10]),
        .Q(img_Cr_r2[10]));
  FDCE \img_Cr_r2_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[11]),
        .Q(img_Cr_r2[11]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[11]_i_1 
       (.CI(\img_Cr_r2_reg[7]_i_1_n_0 ),
        .CO({\img_Cr_r2_reg[11]_i_1_n_0 ,\img_Cr_r2_reg[11]_i_1_n_1 ,\img_Cr_r2_reg[11]_i_1_n_2 ,\img_Cr_r2_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in_v_reg[6:3]),
        .O(img_Cr_r20[11:8]),
        .S({\img_Cr_r2[11]_i_2_n_0 ,\img_Cr_r2[11]_i_3_n_0 ,\img_Cr_r2[11]_i_4_n_0 ,\img_Cr_r2[11]_i_5_n_0 }));
  FDCE \img_Cr_r2_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[12]),
        .Q(img_Cr_r2[12]));
  FDCE \img_Cr_r2_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[13]),
        .Q(img_Cr_r2[13]));
  FDCE \img_Cr_r2_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[14]),
        .Q(img_Cr_r2[14]));
  FDCE \img_Cr_r2_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[15]),
        .Q(img_Cr_r2[15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[15]_i_1 
       (.CI(\img_Cr_r2_reg[11]_i_1_n_0 ),
        .CO({\img_Cr_r2_reg[15]_i_1_n_0 ,\img_Cr_r2_reg[15]_i_1_n_1 ,\img_Cr_r2_reg[15]_i_1_n_2 ,\img_Cr_r2_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in_v_reg[7]}),
        .O(img_Cr_r20[15:12]),
        .S({\img_Cr_r2_reg[16]_i_2_n_7 ,\img_Cr_r2_reg[15]_i_2_n_4 ,\img_Cr_r2_reg[15]_i_2_n_5 ,\img_Cr_r2[15]_i_3_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[15]_i_2 
       (.CI(\img_Cr_r2_reg[15]_i_4_n_0 ),
        .CO({\img_Cr_r2_reg[15]_i_2_n_0 ,\img_Cr_r2_reg[15]_i_2_n_1 ,\img_Cr_r2_reg[15]_i_2_n_2 ,\img_Cr_r2_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(in_v_reg[5:2]),
        .O({\img_Cr_r2_reg[15]_i_2_n_4 ,\img_Cr_r2_reg[15]_i_2_n_5 ,\img_Cr_r2_reg[15]_i_2_n_6 ,\img_Cr_r2_reg[15]_i_2_n_7 }),
        .S({\img_Cr_r2[15]_i_5_n_0 ,\img_Cr_r2[15]_i_6_n_0 ,\img_Cr_r2[15]_i_7_n_0 ,\img_Cr_r2[15]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[15]_i_4 
       (.CI(1'b0),
        .CO({\img_Cr_r2_reg[15]_i_4_n_0 ,\img_Cr_r2_reg[15]_i_4_n_1 ,\img_Cr_r2_reg[15]_i_4_n_2 ,\img_Cr_r2_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({in_v_reg[1:0],1'b0,1'b1}),
        .O({\img_Cr_r2_reg[15]_i_4_n_4 ,\img_Cr_r2_reg[15]_i_4_n_5 ,\img_Cr_r2_reg[15]_i_4_n_6 ,\img_Cr_r2_reg[15]_i_4_n_7 }),
        .S({\img_Cr_r2[15]_i_9_n_0 ,\img_Cr_r2[15]_i_10_n_0 ,\img_Cr_r2[15]_i_11_n_0 ,in_v_reg[0]}));
  FDCE \img_Cr_r2_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[16]),
        .Q(img_Cr_r2[16]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[16]_i_1 
       (.CI(\img_Cr_r2_reg[15]_i_1_n_0 ),
        .CO(\NLW_img_Cr_r2_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_img_Cr_r2_reg[16]_i_1_O_UNCONNECTED [3:1],img_Cr_r20[16]}),
        .S({1'b0,1'b0,1'b0,\img_Cr_r2_reg[16]_i_2_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[16]_i_2 
       (.CI(\img_Cr_r2_reg[15]_i_2_n_0 ),
        .CO({\NLW_img_Cr_r2_reg[16]_i_2_CO_UNCONNECTED [3:1],\img_Cr_r2_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in_v_reg[6]}),
        .O({\NLW_img_Cr_r2_reg[16]_i_2_O_UNCONNECTED [3:2],\img_Cr_r2_reg[16]_i_2_n_6 ,\img_Cr_r2_reg[16]_i_2_n_7 }),
        .S({1'b0,1'b0,\img_Cr_r2[16]_i_3_n_0 ,\img_Cr_r2[16]_i_4_n_0 }));
  FDCE \img_Cr_r2_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[5]),
        .Q(img_Cr_r2[5]));
  FDCE \img_Cr_r2_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[6]),
        .Q(img_Cr_r2[6]));
  FDCE \img_Cr_r2_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[7]),
        .Q(img_Cr_r2[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x8}}" *) 
  CARRY4 \img_Cr_r2_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\img_Cr_r2_reg[7]_i_1_n_0 ,\img_Cr_r2_reg[7]_i_1_n_1 ,\img_Cr_r2_reg[7]_i_1_n_2 ,\img_Cr_r2_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({in_v_reg[2:0],1'b0}),
        .O({img_Cr_r20[7:5],\NLW_img_Cr_r2_reg[7]_i_1_O_UNCONNECTED [0]}),
        .S({\img_Cr_r2[7]_i_2_n_0 ,in_v_reg[1:0],1'b0}));
  FDCE \img_Cr_r2_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[8]),
        .Q(img_Cr_r2[8]));
  FDCE \img_Cr_r2_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(img_Cr_r20[9]),
        .Q(img_Cr_r2[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    img_Y_r10
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_y_reg}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_img_Y_r10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_img_Y_r10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_img_Y_r10_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_img_Y_r10_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_img_Y_r10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_img_Y_r10_OVERFLOW_UNCONNECTED),
        .P({NLW_img_Y_r10_P_UNCONNECTED[47:18],img_Y_r10_n_88,img_Y_r10_n_89,img_Y_r10_n_90,img_Y_r10_n_91,img_Y_r10_n_92,img_Y_r10_n_93,img_Y_r10_n_94,img_Y_r10_n_95,img_Y_r10_n_96,img_Y_r10_n_97,img_Y_r10_n_98,img_Y_r10_n_99,img_Y_r10_n_100,img_Y_r10_n_101,img_Y_r10_n_102,img_Y_r10_n_103,img_Y_r10_n_104,img_Y_r10_n_105}),
        .PATTERNBDETECT(NLW_img_Y_r10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_img_Y_r10_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_img_Y_r10_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_img_Y_r10_UNDERFLOW_UNCONNECTED));
  FDCE \in_u_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[8]),
        .Q(in_u_reg[0]));
  FDCE \in_u_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[9]),
        .Q(in_u_reg[1]));
  FDCE \in_u_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[10]),
        .Q(in_u_reg[2]));
  FDCE \in_u_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[11]),
        .Q(in_u_reg[3]));
  FDCE \in_u_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[12]),
        .Q(in_u_reg[4]));
  FDCE \in_u_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[13]),
        .Q(in_u_reg[5]));
  FDCE \in_u_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[14]),
        .Q(in_u_reg[6]));
  FDCE \in_u_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[15]),
        .Q(in_u_reg[7]));
  LUT3 #(
    .INIT(8'hBF)) 
    \in_v_reg[7]_i_1 
       (.I0(s_module_reset),
        .I1(rst_n),
        .I2(s_yuv2rgb_en),
        .O(s_module_reset_reg));
  FDCE \in_v_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[0]),
        .Q(in_v_reg[0]));
  FDCE \in_v_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[1]),
        .Q(in_v_reg[1]));
  FDCE \in_v_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[2]),
        .Q(in_v_reg[2]));
  FDCE \in_v_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[3]),
        .Q(in_v_reg[3]));
  FDCE \in_v_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[4]),
        .Q(in_v_reg[4]));
  FDCE \in_v_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[5]),
        .Q(in_v_reg[5]));
  FDCE \in_v_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[6]),
        .Q(in_v_reg[6]));
  FDCE \in_v_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[7]),
        .Q(in_v_reg[7]));
  FDCE \in_y_reg_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[16]),
        .Q(in_y_reg[0]));
  FDCE \in_y_reg_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[17]),
        .Q(in_y_reg[1]));
  FDCE \in_y_reg_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[18]),
        .Q(in_y_reg[2]));
  FDCE \in_y_reg_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[19]),
        .Q(in_y_reg[3]));
  FDCE \in_y_reg_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[20]),
        .Q(in_y_reg[4]));
  FDCE \in_y_reg_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[21]),
        .Q(in_y_reg[5]));
  FDCE \in_y_reg_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[22]),
        .Q(in_y_reg[6]));
  FDCE \in_y_reg_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(Q[23]),
        .Q(in_y_reg[7]));
  (* srl_bus_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/vsync_r_reg " *) 
  (* srl_name = "\inst/xil_vip_v1_0_S00_AXI_inst/vip_top_i0/yuv2rgb_i0/vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 " *) 
  SRL16E \vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pclk),
        .D(out_vsync),
        .Q(\vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ));
  FDRE \vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6 
       (.C(pclk),
        .CE(1'b1),
        .D(\vsync_r_reg[1]_srl2_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_5_n_0 ),
        .Q(\vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ),
        .R(1'b0));
  FDCE \vsync_r_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .CLR(s_module_reset_reg),
        .D(vsync_r_reg_gate_n_0),
        .Q(yuv2rgb_vsync));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    vsync_r_reg_gate
       (.I0(\vsync_r_reg[2]_inst_xil_vip_v1_0_S00_AXI_inst_vip_top_i0_yuv2rgb_i0_href_r_reg_c_6_n_0 ),
        .I1(href_r_reg_c_6_n_0),
        .O(vsync_r_reg_gate_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    vsync_reg_i_1__2
       (.I0(yuv2rgb_vsync),
        .I1(s_yuv2rgb_en),
        .I2(out_vsync),
        .O(in_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0
   (s_hist_equ_en_reg,
    s_module_reset_reg,
    out_vsync,
    out_rgb,
    out_href,
    out_pclk,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    irq,
    s00_axi_rvalid,
    s00_axi_bvalid,
    pclk,
    \hist_sum_data_3_reg[0] ,
    \ZOUT_reg[19] ,
    rst_n,
    in_href,
    in_vsync,
    in_yuv,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s_hist_equ_en_reg;
  output s_module_reset_reg;
  output out_vsync;
  output [23:0]out_rgb;
  output out_href;
  output out_pclk;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [15:0]s00_axi_rdata;
  output irq;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input pclk;
  input \hist_sum_data_3_reg[0] ;
  input \ZOUT_reg[19] ;
  input rst_n;
  input in_href;
  input in_vsync;
  input [23:0]in_yuv;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [15:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire \ZOUT_reg[19] ;
  wire \hist_sum_data_3_reg[0] ;
  wire in_href;
  wire in_vsync;
  wire [23:0]in_yuv;
  wire irq;
  wire out_href;
  wire out_pclk;
  wire [23:0]out_rgb;
  wire out_vsync;
  wire pclk;
  wire rst_n;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [15:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [15:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire s_hist_equ_en_reg;
  wire s_module_reset_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0_S00_AXI xil_vip_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .\ZOUT_reg[19] (\ZOUT_reg[19] ),
        .\hist_sum_data_3_reg[0] (\hist_sum_data_3_reg[0] ),
        .in_href(in_href),
        .in_vsync(in_vsync),
        .in_yuv(in_yuv),
        .irq(irq),
        .out_href(out_href),
        .out_pclk(out_pclk),
        .out_rgb(out_rgb),
        .out_vsync(out_vsync),
        .pclk(pclk),
        .rst_n(rst_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_hist_equ_en_reg_0(s_hist_equ_en_reg),
        .s_module_reset_reg_0(s_module_reset_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xil_vip_v1_0_S00_AXI
   (s_hist_equ_en_reg_0,
    s_module_reset_reg_0,
    out_vsync,
    out_rgb,
    out_href,
    out_pclk,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    irq,
    s00_axi_rvalid,
    s00_axi_bvalid,
    pclk,
    \hist_sum_data_3_reg[0] ,
    \ZOUT_reg[19] ,
    rst_n,
    in_href,
    in_vsync,
    in_yuv,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s_hist_equ_en_reg_0;
  output s_module_reset_reg_0;
  output out_vsync;
  output [23:0]out_rgb;
  output out_href;
  output out_pclk;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [15:0]s00_axi_rdata;
  output irq;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input pclk;
  input \hist_sum_data_3_reg[0] ;
  input \ZOUT_reg[19] ;
  input rst_n;
  input in_href;
  input in_vsync;
  input [23:0]in_yuv;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [15:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire \ZOUT_reg[19] ;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [15:0]crop_h;
  wire crop_h_6;
  wire [15:0]crop_w;
  wire crop_w_5;
  wire [15:0]crop_x;
  wire crop_x_3;
  wire [15:0]crop_y;
  wire crop_y_4;
  wire [4:0]data1;
  wire [3:0]dscale_h;
  wire dscale_h_7;
  wire [3:0]dscale_v;
  wire dscale_v_8;
  wire [7:0]equ_max;
  wire equ_max_2;
  wire [7:0]equ_min;
  wire equ_min_1;
  wire frame_start;
  wire hist_equ_en;
  wire \hist_sum_data_3_reg[0] ;
  wire href_reg_i_101_n_0;
  wire href_reg_i_102_n_0;
  wire href_reg_i_103_n_0;
  wire href_reg_i_104_n_0;
  wire href_reg_i_106_n_0;
  wire href_reg_i_107_n_0;
  wire href_reg_i_108_n_0;
  wire href_reg_i_109_n_0;
  wire href_reg_i_110_n_0;
  wire href_reg_i_111_n_0;
  wire href_reg_i_112_n_0;
  wire href_reg_i_113_n_0;
  wire href_reg_i_114_n_0;
  wire href_reg_i_115_n_0;
  wire href_reg_i_116_n_0;
  wire href_reg_i_117_n_0;
  wire href_reg_i_68_n_0;
  wire href_reg_i_69_n_0;
  wire href_reg_i_70_n_0;
  wire href_reg_i_71_n_0;
  wire href_reg_i_78_n_0;
  wire href_reg_i_79_n_0;
  wire href_reg_i_80_n_0;
  wire href_reg_i_81_n_0;
  wire href_reg_i_87_n_0;
  wire href_reg_i_88_n_0;
  wire href_reg_i_89_n_0;
  wire href_reg_i_90_n_0;
  wire href_reg_i_96_n_0;
  wire href_reg_i_97_n_0;
  wire href_reg_i_98_n_0;
  wire href_reg_i_99_n_0;
  wire href_reg_reg_i_100_n_0;
  wire href_reg_reg_i_100_n_1;
  wire href_reg_reg_i_100_n_2;
  wire href_reg_reg_i_100_n_3;
  wire href_reg_reg_i_100_n_4;
  wire href_reg_reg_i_100_n_5;
  wire href_reg_reg_i_100_n_6;
  wire href_reg_reg_i_100_n_7;
  wire href_reg_reg_i_105_n_0;
  wire href_reg_reg_i_105_n_1;
  wire href_reg_reg_i_105_n_2;
  wire href_reg_reg_i_105_n_3;
  wire href_reg_reg_i_105_n_4;
  wire href_reg_reg_i_105_n_5;
  wire href_reg_reg_i_105_n_6;
  wire href_reg_reg_i_105_n_7;
  wire href_reg_reg_i_39_n_1;
  wire href_reg_reg_i_39_n_2;
  wire href_reg_reg_i_39_n_3;
  wire href_reg_reg_i_39_n_4;
  wire href_reg_reg_i_39_n_5;
  wire href_reg_reg_i_39_n_6;
  wire href_reg_reg_i_39_n_7;
  wire href_reg_reg_i_45_n_1;
  wire href_reg_reg_i_45_n_2;
  wire href_reg_reg_i_45_n_3;
  wire href_reg_reg_i_45_n_4;
  wire href_reg_reg_i_45_n_5;
  wire href_reg_reg_i_45_n_6;
  wire href_reg_reg_i_45_n_7;
  wire href_reg_reg_i_67_n_0;
  wire href_reg_reg_i_67_n_1;
  wire href_reg_reg_i_67_n_2;
  wire href_reg_reg_i_67_n_3;
  wire href_reg_reg_i_67_n_4;
  wire href_reg_reg_i_67_n_5;
  wire href_reg_reg_i_67_n_6;
  wire href_reg_reg_i_67_n_7;
  wire href_reg_reg_i_77_n_0;
  wire href_reg_reg_i_77_n_1;
  wire href_reg_reg_i_77_n_2;
  wire href_reg_reg_i_77_n_3;
  wire href_reg_reg_i_77_n_4;
  wire href_reg_reg_i_77_n_5;
  wire href_reg_reg_i_77_n_6;
  wire href_reg_reg_i_77_n_7;
  wire href_reg_reg_i_86_n_0;
  wire href_reg_reg_i_86_n_1;
  wire href_reg_reg_i_86_n_2;
  wire href_reg_reg_i_86_n_3;
  wire href_reg_reg_i_86_n_4;
  wire href_reg_reg_i_86_n_5;
  wire href_reg_reg_i_86_n_6;
  wire href_reg_reg_i_86_n_7;
  wire href_reg_reg_i_95_n_0;
  wire href_reg_reg_i_95_n_1;
  wire href_reg_reg_i_95_n_2;
  wire href_reg_reg_i_95_n_3;
  wire href_reg_reg_i_95_n_4;
  wire href_reg_reg_i_95_n_5;
  wire href_reg_reg_i_95_n_6;
  wire href_reg_reg_i_95_n_7;
  wire in_href;
  wire in_vsync;
  wire [23:0]in_yuv;
  wire int_frame_done__2;
  wire int_frame_done_i_1_n_0;
  wire int_frame_done_reg_n_0;
  wire int_mask_frame_done_i_1_n_0;
  wire int_mask_frame_done_i_2_n_0;
  wire int_mask_frame_done_reg_n_0;
  wire irq;
  wire module_reset;
  wire module_reset_i_1_n_0;
  wire module_reset_i_2_n_0;
  wire out_href;
  wire out_pclk;
  wire [23:0]out_rgb;
  wire out_vsync;
  wire p_0_in;
  wire [3:0]p_0_in_0;
  wire pclk;
  wire prev_vsync;
  wire prev_vsync_r;
  wire [15:0]reg_data_out;
  wire rst_n;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [15:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [15:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire s_crop_en;
  wire [15:0]s_crop_h;
  wire [15:0]s_crop_w;
  wire [15:0]s_crop_x;
  wire [15:0]s_crop_y;
  wire s_dscale_en;
  wire [3:0]s_dscale_h;
  wire [3:0]s_dscale_v;
  wire [7:0]s_equ_max;
  wire [7:0]s_equ_min;
  wire s_hist_equ_en;
  wire s_hist_equ_en_reg_0;
  wire s_module_reset;
  wire s_module_reset_reg_0;
  wire s_sobel_en;
  wire s_yuv2rgb_en;
  wire [3:0]sel0;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;
  wire [3:3]NLW_href_reg_reg_i_39_CO_UNCONNECTED;
  wire [3:3]NLW_href_reg_reg_i_45_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in_0[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in_0[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in_0[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in_0[3]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h0ACF0AC0)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(crop_h[0]),
        .I1(crop_w[0]),
        .I2(sel0[1]),
        .I3(crop_y[0]),
        .I4(sel0[0]),
        .I5(crop_x[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(int_mask_frame_done_reg_n_0),
        .I1(int_frame_done_reg_n_0),
        .I2(sel0[1]),
        .I3(dscale_v[0]),
        .I4(sel0[0]),
        .I5(dscale_h[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(equ_max[0]),
        .I1(equ_min[0]),
        .I2(sel0[1]),
        .I3(data1[0]),
        .I4(sel0[0]),
        .I5(module_reset),
        .O(\axi_rdata[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(crop_h[10]),
        .I1(crop_w[10]),
        .I2(sel0[1]),
        .I3(crop_y[10]),
        .I4(sel0[0]),
        .I5(crop_x[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(crop_h[11]),
        .I1(crop_w[11]),
        .I2(sel0[1]),
        .I3(crop_y[11]),
        .I4(sel0[0]),
        .I5(crop_x[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(crop_h[12]),
        .I1(crop_w[12]),
        .I2(sel0[1]),
        .I3(crop_y[12]),
        .I4(sel0[0]),
        .I5(crop_x[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(crop_h[13]),
        .I1(crop_w[13]),
        .I2(sel0[1]),
        .I3(crop_y[13]),
        .I4(sel0[0]),
        .I5(crop_x[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(crop_h[14]),
        .I1(crop_w[14]),
        .I2(sel0[1]),
        .I3(crop_y[14]),
        .I4(sel0[0]),
        .I5(crop_x[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(crop_h[15]),
        .I1(crop_w[15]),
        .I2(sel0[1]),
        .I3(crop_y[15]),
        .I4(sel0[0]),
        .I5(crop_x[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCEEFC)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .I2(\axi_rdata[1]_i_4_n_0 ),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(crop_h[1]),
        .I1(crop_w[1]),
        .I2(sel0[1]),
        .I3(crop_y[1]),
        .I4(sel0[0]),
        .I5(crop_x[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \axi_rdata[1]_i_3 
       (.I0(dscale_h[1]),
        .I1(sel0[0]),
        .I2(dscale_v[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(sel0[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(equ_max[1]),
        .I1(equ_min[1]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data1[1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hFFFF00CA)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\axi_rdata[2]_i_4_n_0 ),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(equ_max[2]),
        .I1(equ_min[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data1[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(crop_h[2]),
        .I1(crop_w[2]),
        .I2(sel0[1]),
        .I3(crop_y[2]),
        .I4(sel0[0]),
        .I5(crop_x[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \axi_rdata[2]_i_4 
       (.I0(dscale_h[2]),
        .I1(sel0[0]),
        .I2(dscale_v[2]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(sel0[1]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCEEFC)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .I2(\axi_rdata[3]_i_4_n_0 ),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(crop_h[3]),
        .I1(crop_w[3]),
        .I2(sel0[1]),
        .I3(crop_y[3]),
        .I4(sel0[0]),
        .I5(crop_x[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \axi_rdata[3]_i_3 
       (.I0(dscale_h[3]),
        .I1(sel0[0]),
        .I2(dscale_v[3]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(sel0[1]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(equ_max[3]),
        .I1(equ_min[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data1[3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h3202)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(equ_max[4]),
        .I1(equ_min[4]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data1[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(crop_h[4]),
        .I1(crop_w[4]),
        .I2(sel0[1]),
        .I3(crop_y[4]),
        .I4(sel0[0]),
        .I5(crop_x[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(equ_max[5]),
        .I2(sel0[0]),
        .I3(equ_min[5]),
        .I4(\axi_rdata[7]_i_3_n_0 ),
        .I5(\axi_rdata[5]_i_2_n_0 ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(crop_h[5]),
        .I1(crop_w[5]),
        .I2(sel0[1]),
        .I3(crop_y[5]),
        .I4(sel0[0]),
        .I5(crop_x[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(equ_max[6]),
        .I2(sel0[0]),
        .I3(equ_min[6]),
        .I4(\axi_rdata[7]_i_3_n_0 ),
        .I5(\axi_rdata[6]_i_2_n_0 ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(crop_h[6]),
        .I1(crop_w[6]),
        .I2(sel0[1]),
        .I3(crop_y[6]),
        .I4(sel0[0]),
        .I5(crop_x[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(equ_max[7]),
        .I2(sel0[0]),
        .I3(equ_min[7]),
        .I4(\axi_rdata[7]_i_3_n_0 ),
        .I5(\axi_rdata[7]_i_4_n_0 ),
        .O(reg_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \axi_rdata[7]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \axi_rdata[7]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(crop_h[7]),
        .I1(crop_w[7]),
        .I2(sel0[1]),
        .I3(crop_y[7]),
        .I4(sel0[0]),
        .I5(crop_x[7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(crop_h[8]),
        .I1(crop_w[8]),
        .I2(sel0[1]),
        .I3(crop_y[8]),
        .I4(sel0[0]),
        .I5(crop_x[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(crop_h[9]),
        .I1(crop_w[9]),
        .I2(sel0[1]),
        .I3(crop_y[9]),
        .I4(sel0[0]),
        .I5(crop_x[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  FDRE crop_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[3]),
        .Q(data1[3]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00800000)) 
    \crop_h[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .O(crop_h_6));
  FDRE \crop_h_reg[0] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[0]),
        .Q(crop_h[0]),
        .R(p_0_in));
  FDSE \crop_h_reg[10] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[10]),
        .Q(crop_h[10]),
        .S(p_0_in));
  FDRE \crop_h_reg[11] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[11]),
        .Q(crop_h[11]),
        .R(p_0_in));
  FDRE \crop_h_reg[12] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[12]),
        .Q(crop_h[12]),
        .R(p_0_in));
  FDRE \crop_h_reg[13] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[13]),
        .Q(crop_h[13]),
        .R(p_0_in));
  FDRE \crop_h_reg[14] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[14]),
        .Q(crop_h[14]),
        .R(p_0_in));
  FDRE \crop_h_reg[15] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[15]),
        .Q(crop_h[15]),
        .R(p_0_in));
  FDRE \crop_h_reg[1] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[1]),
        .Q(crop_h[1]),
        .R(p_0_in));
  FDRE \crop_h_reg[2] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[2]),
        .Q(crop_h[2]),
        .R(p_0_in));
  FDRE \crop_h_reg[3] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[3]),
        .Q(crop_h[3]),
        .R(p_0_in));
  FDRE \crop_h_reg[4] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[4]),
        .Q(crop_h[4]),
        .R(p_0_in));
  FDRE \crop_h_reg[5] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[5]),
        .Q(crop_h[5]),
        .R(p_0_in));
  FDRE \crop_h_reg[6] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[6]),
        .Q(crop_h[6]),
        .R(p_0_in));
  FDSE \crop_h_reg[7] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[7]),
        .Q(crop_h[7]),
        .S(p_0_in));
  FDSE \crop_h_reg[8] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[8]),
        .Q(crop_h[8]),
        .S(p_0_in));
  FDSE \crop_h_reg[9] 
       (.C(s00_axi_aclk),
        .CE(crop_h_6),
        .D(s00_axi_wdata[9]),
        .Q(crop_h[9]),
        .S(p_0_in));
  LUT5 #(
    .INIT(32'h00000080)) 
    \crop_w[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[3]),
        .O(crop_w_5));
  FDRE \crop_w_reg[0] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[0]),
        .Q(crop_w[0]),
        .R(p_0_in));
  FDRE \crop_w_reg[10] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[10]),
        .Q(crop_w[10]),
        .R(p_0_in));
  FDSE \crop_w_reg[11] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[11]),
        .Q(crop_w[11]),
        .S(p_0_in));
  FDRE \crop_w_reg[12] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[12]),
        .Q(crop_w[12]),
        .R(p_0_in));
  FDRE \crop_w_reg[13] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[13]),
        .Q(crop_w[13]),
        .R(p_0_in));
  FDRE \crop_w_reg[14] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[14]),
        .Q(crop_w[14]),
        .R(p_0_in));
  FDRE \crop_w_reg[15] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[15]),
        .Q(crop_w[15]),
        .R(p_0_in));
  FDRE \crop_w_reg[1] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[1]),
        .Q(crop_w[1]),
        .R(p_0_in));
  FDRE \crop_w_reg[2] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[2]),
        .Q(crop_w[2]),
        .R(p_0_in));
  FDRE \crop_w_reg[3] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[3]),
        .Q(crop_w[3]),
        .R(p_0_in));
  FDRE \crop_w_reg[4] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[4]),
        .Q(crop_w[4]),
        .R(p_0_in));
  FDRE \crop_w_reg[5] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[5]),
        .Q(crop_w[5]),
        .R(p_0_in));
  FDRE \crop_w_reg[6] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[6]),
        .Q(crop_w[6]),
        .R(p_0_in));
  FDRE \crop_w_reg[7] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[7]),
        .Q(crop_w[7]),
        .R(p_0_in));
  FDRE \crop_w_reg[8] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[8]),
        .Q(crop_w[8]),
        .R(p_0_in));
  FDSE \crop_w_reg[9] 
       (.C(s00_axi_aclk),
        .CE(crop_w_5),
        .D(s00_axi_wdata[9]),
        .Q(crop_w[9]),
        .S(p_0_in));
  LUT5 #(
    .INIT(32'h00000020)) 
    \crop_x[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[3]),
        .O(crop_x_3));
  FDRE \crop_x_reg[0] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[0]),
        .Q(crop_x[0]),
        .R(p_0_in));
  FDRE \crop_x_reg[10] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[10]),
        .Q(crop_x[10]),
        .R(p_0_in));
  FDRE \crop_x_reg[11] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[11]),
        .Q(crop_x[11]),
        .R(p_0_in));
  FDRE \crop_x_reg[12] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[12]),
        .Q(crop_x[12]),
        .R(p_0_in));
  FDRE \crop_x_reg[13] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[13]),
        .Q(crop_x[13]),
        .R(p_0_in));
  FDRE \crop_x_reg[14] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[14]),
        .Q(crop_x[14]),
        .R(p_0_in));
  FDRE \crop_x_reg[15] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[15]),
        .Q(crop_x[15]),
        .R(p_0_in));
  FDRE \crop_x_reg[1] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[1]),
        .Q(crop_x[1]),
        .R(p_0_in));
  FDRE \crop_x_reg[2] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[2]),
        .Q(crop_x[2]),
        .R(p_0_in));
  FDRE \crop_x_reg[3] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[3]),
        .Q(crop_x[3]),
        .R(p_0_in));
  FDRE \crop_x_reg[4] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[4]),
        .Q(crop_x[4]),
        .R(p_0_in));
  FDRE \crop_x_reg[5] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[5]),
        .Q(crop_x[5]),
        .R(p_0_in));
  FDRE \crop_x_reg[6] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[6]),
        .Q(crop_x[6]),
        .R(p_0_in));
  FDRE \crop_x_reg[7] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[7]),
        .Q(crop_x[7]),
        .R(p_0_in));
  FDRE \crop_x_reg[8] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[8]),
        .Q(crop_x[8]),
        .R(p_0_in));
  FDRE \crop_x_reg[9] 
       (.C(s00_axi_aclk),
        .CE(crop_x_3),
        .D(s00_axi_wdata[9]),
        .Q(crop_x[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000080)) 
    \crop_y[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[3]),
        .O(crop_y_4));
  FDRE \crop_y_reg[0] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[0]),
        .Q(crop_y[0]),
        .R(p_0_in));
  FDRE \crop_y_reg[10] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[10]),
        .Q(crop_y[10]),
        .R(p_0_in));
  FDRE \crop_y_reg[11] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[11]),
        .Q(crop_y[11]),
        .R(p_0_in));
  FDRE \crop_y_reg[12] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[12]),
        .Q(crop_y[12]),
        .R(p_0_in));
  FDRE \crop_y_reg[13] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[13]),
        .Q(crop_y[13]),
        .R(p_0_in));
  FDRE \crop_y_reg[14] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[14]),
        .Q(crop_y[14]),
        .R(p_0_in));
  FDRE \crop_y_reg[15] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[15]),
        .Q(crop_y[15]),
        .R(p_0_in));
  FDRE \crop_y_reg[1] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[1]),
        .Q(crop_y[1]),
        .R(p_0_in));
  FDRE \crop_y_reg[2] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[2]),
        .Q(crop_y[2]),
        .R(p_0_in));
  FDRE \crop_y_reg[3] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[3]),
        .Q(crop_y[3]),
        .R(p_0_in));
  FDRE \crop_y_reg[4] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[4]),
        .Q(crop_y[4]),
        .R(p_0_in));
  FDRE \crop_y_reg[5] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[5]),
        .Q(crop_y[5]),
        .R(p_0_in));
  FDRE \crop_y_reg[6] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[6]),
        .Q(crop_y[6]),
        .R(p_0_in));
  FDRE \crop_y_reg[7] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[7]),
        .Q(crop_y[7]),
        .R(p_0_in));
  FDRE \crop_y_reg[8] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[8]),
        .Q(crop_y[8]),
        .R(p_0_in));
  FDRE \crop_y_reg[9] 
       (.C(s00_axi_aclk),
        .CE(crop_y_4),
        .D(s00_axi_wdata[9]),
        .Q(crop_y[9]),
        .R(p_0_in));
  FDRE dscale_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[4]),
        .Q(data1[4]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000020)) 
    \dscale_h[3]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[0]),
        .O(dscale_h_7));
  FDSE \dscale_h_reg[0] 
       (.C(s00_axi_aclk),
        .CE(dscale_h_7),
        .D(s00_axi_wdata[0]),
        .Q(dscale_h[0]),
        .S(p_0_in));
  FDRE \dscale_h_reg[1] 
       (.C(s00_axi_aclk),
        .CE(dscale_h_7),
        .D(s00_axi_wdata[1]),
        .Q(dscale_h[1]),
        .R(p_0_in));
  FDRE \dscale_h_reg[2] 
       (.C(s00_axi_aclk),
        .CE(dscale_h_7),
        .D(s00_axi_wdata[2]),
        .Q(dscale_h[2]),
        .R(p_0_in));
  FDRE \dscale_h_reg[3] 
       (.C(s00_axi_aclk),
        .CE(dscale_h_7),
        .D(s00_axi_wdata[3]),
        .Q(dscale_h[3]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000080)) 
    \dscale_v[3]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .O(dscale_v_8));
  FDSE \dscale_v_reg[0] 
       (.C(s00_axi_aclk),
        .CE(dscale_v_8),
        .D(s00_axi_wdata[0]),
        .Q(dscale_v[0]),
        .S(p_0_in));
  FDRE \dscale_v_reg[1] 
       (.C(s00_axi_aclk),
        .CE(dscale_v_8),
        .D(s00_axi_wdata[1]),
        .Q(dscale_v[1]),
        .R(p_0_in));
  FDRE \dscale_v_reg[2] 
       (.C(s00_axi_aclk),
        .CE(dscale_v_8),
        .D(s00_axi_wdata[2]),
        .Q(dscale_v[2]),
        .R(p_0_in));
  FDRE \dscale_v_reg[3] 
       (.C(s00_axi_aclk),
        .CE(dscale_v_8),
        .D(s00_axi_wdata[3]),
        .Q(dscale_v[3]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000080)) 
    \equ_max[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[3]),
        .O(equ_max_2));
  FDRE \equ_max_reg[0] 
       (.C(s00_axi_aclk),
        .CE(equ_max_2),
        .D(s00_axi_wdata[0]),
        .Q(equ_max[0]),
        .R(p_0_in));
  FDRE \equ_max_reg[1] 
       (.C(s00_axi_aclk),
        .CE(equ_max_2),
        .D(s00_axi_wdata[1]),
        .Q(equ_max[1]),
        .R(p_0_in));
  FDSE \equ_max_reg[2] 
       (.C(s00_axi_aclk),
        .CE(equ_max_2),
        .D(s00_axi_wdata[2]),
        .Q(equ_max[2]),
        .S(p_0_in));
  FDSE \equ_max_reg[3] 
       (.C(s00_axi_aclk),
        .CE(equ_max_2),
        .D(s00_axi_wdata[3]),
        .Q(equ_max[3]),
        .S(p_0_in));
  FDSE \equ_max_reg[4] 
       (.C(s00_axi_aclk),
        .CE(equ_max_2),
        .D(s00_axi_wdata[4]),
        .Q(equ_max[4]),
        .S(p_0_in));
  FDRE \equ_max_reg[5] 
       (.C(s00_axi_aclk),
        .CE(equ_max_2),
        .D(s00_axi_wdata[5]),
        .Q(equ_max[5]),
        .R(p_0_in));
  FDSE \equ_max_reg[6] 
       (.C(s00_axi_aclk),
        .CE(equ_max_2),
        .D(s00_axi_wdata[6]),
        .Q(equ_max[6]),
        .S(p_0_in));
  FDSE \equ_max_reg[7] 
       (.C(s00_axi_aclk),
        .CE(equ_max_2),
        .D(s00_axi_wdata[7]),
        .Q(equ_max[7]),
        .S(p_0_in));
  LUT5 #(
    .INIT(32'h00000020)) 
    \equ_min[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[3]),
        .O(equ_min_1));
  FDRE \equ_min_reg[0] 
       (.C(s00_axi_aclk),
        .CE(equ_min_1),
        .D(s00_axi_wdata[0]),
        .Q(equ_min[0]),
        .R(p_0_in));
  FDRE \equ_min_reg[1] 
       (.C(s00_axi_aclk),
        .CE(equ_min_1),
        .D(s00_axi_wdata[1]),
        .Q(equ_min[1]),
        .R(p_0_in));
  FDRE \equ_min_reg[2] 
       (.C(s00_axi_aclk),
        .CE(equ_min_1),
        .D(s00_axi_wdata[2]),
        .Q(equ_min[2]),
        .R(p_0_in));
  FDSE \equ_min_reg[3] 
       (.C(s00_axi_aclk),
        .CE(equ_min_1),
        .D(s00_axi_wdata[3]),
        .Q(equ_min[3]),
        .S(p_0_in));
  FDRE \equ_min_reg[4] 
       (.C(s00_axi_aclk),
        .CE(equ_min_1),
        .D(s00_axi_wdata[4]),
        .Q(equ_min[4]),
        .R(p_0_in));
  FDSE \equ_min_reg[5] 
       (.C(s00_axi_aclk),
        .CE(equ_min_1),
        .D(s00_axi_wdata[5]),
        .Q(equ_min[5]),
        .S(p_0_in));
  FDRE \equ_min_reg[6] 
       (.C(s00_axi_aclk),
        .CE(equ_min_1),
        .D(s00_axi_wdata[6]),
        .Q(equ_min[6]),
        .R(p_0_in));
  FDRE \equ_min_reg[7] 
       (.C(s00_axi_aclk),
        .CE(equ_min_1),
        .D(s00_axi_wdata[7]),
        .Q(equ_min[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00040000)) 
    hist_equ_en_i_1
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .I4(slv_reg_wren__2),
        .O(hist_equ_en));
  FDRE hist_equ_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[0]),
        .Q(data1[0]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_101
       (.I0(s_crop_x[7]),
        .I1(s_crop_w[7]),
        .O(href_reg_i_101_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_102
       (.I0(s_crop_x[6]),
        .I1(s_crop_w[6]),
        .O(href_reg_i_102_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_103
       (.I0(s_crop_x[5]),
        .I1(s_crop_w[5]),
        .O(href_reg_i_103_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_104
       (.I0(s_crop_x[4]),
        .I1(s_crop_w[4]),
        .O(href_reg_i_104_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_106
       (.I0(s_crop_y[7]),
        .I1(s_crop_h[7]),
        .O(href_reg_i_106_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_107
       (.I0(s_crop_y[6]),
        .I1(s_crop_h[6]),
        .O(href_reg_i_107_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_108
       (.I0(s_crop_y[5]),
        .I1(s_crop_h[5]),
        .O(href_reg_i_108_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_109
       (.I0(s_crop_y[4]),
        .I1(s_crop_h[4]),
        .O(href_reg_i_109_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_110
       (.I0(s_crop_x[3]),
        .I1(s_crop_w[3]),
        .O(href_reg_i_110_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_111
       (.I0(s_crop_x[2]),
        .I1(s_crop_w[2]),
        .O(href_reg_i_111_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_112
       (.I0(s_crop_x[1]),
        .I1(s_crop_w[1]),
        .O(href_reg_i_112_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_113
       (.I0(s_crop_x[0]),
        .I1(s_crop_w[0]),
        .O(href_reg_i_113_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_114
       (.I0(s_crop_y[3]),
        .I1(s_crop_h[3]),
        .O(href_reg_i_114_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_115
       (.I0(s_crop_y[2]),
        .I1(s_crop_h[2]),
        .O(href_reg_i_115_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_116
       (.I0(s_crop_y[1]),
        .I1(s_crop_h[1]),
        .O(href_reg_i_116_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_117
       (.I0(s_crop_y[0]),
        .I1(s_crop_h[0]),
        .O(href_reg_i_117_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_68
       (.I0(s_crop_x[15]),
        .I1(s_crop_w[15]),
        .O(href_reg_i_68_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_69
       (.I0(s_crop_x[14]),
        .I1(s_crop_w[14]),
        .O(href_reg_i_69_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_70
       (.I0(s_crop_x[13]),
        .I1(s_crop_w[13]),
        .O(href_reg_i_70_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_71
       (.I0(s_crop_x[12]),
        .I1(s_crop_w[12]),
        .O(href_reg_i_71_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_78
       (.I0(s_crop_y[15]),
        .I1(s_crop_h[15]),
        .O(href_reg_i_78_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_79
       (.I0(s_crop_y[14]),
        .I1(s_crop_h[14]),
        .O(href_reg_i_79_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_80
       (.I0(s_crop_y[13]),
        .I1(s_crop_h[13]),
        .O(href_reg_i_80_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_81
       (.I0(s_crop_y[12]),
        .I1(s_crop_h[12]),
        .O(href_reg_i_81_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_87
       (.I0(s_crop_x[11]),
        .I1(s_crop_w[11]),
        .O(href_reg_i_87_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_88
       (.I0(s_crop_x[10]),
        .I1(s_crop_w[10]),
        .O(href_reg_i_88_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_89
       (.I0(s_crop_x[9]),
        .I1(s_crop_w[9]),
        .O(href_reg_i_89_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_90
       (.I0(s_crop_x[8]),
        .I1(s_crop_w[8]),
        .O(href_reg_i_90_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_96
       (.I0(s_crop_y[11]),
        .I1(s_crop_h[11]),
        .O(href_reg_i_96_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_97
       (.I0(s_crop_y[10]),
        .I1(s_crop_h[10]),
        .O(href_reg_i_97_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_98
       (.I0(s_crop_y[9]),
        .I1(s_crop_h[9]),
        .O(href_reg_i_98_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    href_reg_i_99
       (.I0(s_crop_y[8]),
        .I1(s_crop_h[8]),
        .O(href_reg_i_99_n_0));
  CARRY4 href_reg_reg_i_100
       (.CI(1'b0),
        .CO({href_reg_reg_i_100_n_0,href_reg_reg_i_100_n_1,href_reg_reg_i_100_n_2,href_reg_reg_i_100_n_3}),
        .CYINIT(1'b0),
        .DI(s_crop_x[3:0]),
        .O({href_reg_reg_i_100_n_4,href_reg_reg_i_100_n_5,href_reg_reg_i_100_n_6,href_reg_reg_i_100_n_7}),
        .S({href_reg_i_110_n_0,href_reg_i_111_n_0,href_reg_i_112_n_0,href_reg_i_113_n_0}));
  CARRY4 href_reg_reg_i_105
       (.CI(1'b0),
        .CO({href_reg_reg_i_105_n_0,href_reg_reg_i_105_n_1,href_reg_reg_i_105_n_2,href_reg_reg_i_105_n_3}),
        .CYINIT(1'b0),
        .DI(s_crop_y[3:0]),
        .O({href_reg_reg_i_105_n_4,href_reg_reg_i_105_n_5,href_reg_reg_i_105_n_6,href_reg_reg_i_105_n_7}),
        .S({href_reg_i_114_n_0,href_reg_i_115_n_0,href_reg_i_116_n_0,href_reg_i_117_n_0}));
  CARRY4 href_reg_reg_i_39
       (.CI(href_reg_reg_i_67_n_0),
        .CO({NLW_href_reg_reg_i_39_CO_UNCONNECTED[3],href_reg_reg_i_39_n_1,href_reg_reg_i_39_n_2,href_reg_reg_i_39_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_crop_x[14:12]}),
        .O({href_reg_reg_i_39_n_4,href_reg_reg_i_39_n_5,href_reg_reg_i_39_n_6,href_reg_reg_i_39_n_7}),
        .S({href_reg_i_68_n_0,href_reg_i_69_n_0,href_reg_i_70_n_0,href_reg_i_71_n_0}));
  CARRY4 href_reg_reg_i_45
       (.CI(href_reg_reg_i_77_n_0),
        .CO({NLW_href_reg_reg_i_45_CO_UNCONNECTED[3],href_reg_reg_i_45_n_1,href_reg_reg_i_45_n_2,href_reg_reg_i_45_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_crop_y[14:12]}),
        .O({href_reg_reg_i_45_n_4,href_reg_reg_i_45_n_5,href_reg_reg_i_45_n_6,href_reg_reg_i_45_n_7}),
        .S({href_reg_i_78_n_0,href_reg_i_79_n_0,href_reg_i_80_n_0,href_reg_i_81_n_0}));
  CARRY4 href_reg_reg_i_67
       (.CI(href_reg_reg_i_86_n_0),
        .CO({href_reg_reg_i_67_n_0,href_reg_reg_i_67_n_1,href_reg_reg_i_67_n_2,href_reg_reg_i_67_n_3}),
        .CYINIT(1'b0),
        .DI(s_crop_x[11:8]),
        .O({href_reg_reg_i_67_n_4,href_reg_reg_i_67_n_5,href_reg_reg_i_67_n_6,href_reg_reg_i_67_n_7}),
        .S({href_reg_i_87_n_0,href_reg_i_88_n_0,href_reg_i_89_n_0,href_reg_i_90_n_0}));
  CARRY4 href_reg_reg_i_77
       (.CI(href_reg_reg_i_95_n_0),
        .CO({href_reg_reg_i_77_n_0,href_reg_reg_i_77_n_1,href_reg_reg_i_77_n_2,href_reg_reg_i_77_n_3}),
        .CYINIT(1'b0),
        .DI(s_crop_y[11:8]),
        .O({href_reg_reg_i_77_n_4,href_reg_reg_i_77_n_5,href_reg_reg_i_77_n_6,href_reg_reg_i_77_n_7}),
        .S({href_reg_i_96_n_0,href_reg_i_97_n_0,href_reg_i_98_n_0,href_reg_i_99_n_0}));
  CARRY4 href_reg_reg_i_86
       (.CI(href_reg_reg_i_100_n_0),
        .CO({href_reg_reg_i_86_n_0,href_reg_reg_i_86_n_1,href_reg_reg_i_86_n_2,href_reg_reg_i_86_n_3}),
        .CYINIT(1'b0),
        .DI(s_crop_x[7:4]),
        .O({href_reg_reg_i_86_n_4,href_reg_reg_i_86_n_5,href_reg_reg_i_86_n_6,href_reg_reg_i_86_n_7}),
        .S({href_reg_i_101_n_0,href_reg_i_102_n_0,href_reg_i_103_n_0,href_reg_i_104_n_0}));
  CARRY4 href_reg_reg_i_95
       (.CI(href_reg_reg_i_105_n_0),
        .CO({href_reg_reg_i_95_n_0,href_reg_reg_i_95_n_1,href_reg_reg_i_95_n_2,href_reg_reg_i_95_n_3}),
        .CYINIT(1'b0),
        .DI(s_crop_y[7:4]),
        .O({href_reg_reg_i_95_n_4,href_reg_reg_i_95_n_5,href_reg_reg_i_95_n_6,href_reg_reg_i_95_n_7}),
        .S({href_reg_i_106_n_0,href_reg_i_107_n_0,href_reg_i_108_n_0,href_reg_i_109_n_0}));
  LUT5 #(
    .INIT(32'h7F770F00)) 
    int_frame_done_i_1
       (.I0(slv_reg_wren__2),
        .I1(int_frame_done__2),
        .I2(prev_vsync),
        .I3(out_vsync),
        .I4(int_frame_done_reg_n_0),
        .O(int_frame_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    int_frame_done_i_2
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    int_frame_done_i_3
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[3]),
        .O(int_frame_done__2));
  FDRE int_frame_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_frame_done_i_1_n_0),
        .Q(int_frame_done_reg_n_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    int_mask_frame_done_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(int_mask_frame_done_i_2_n_0),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .I4(slv_reg_wren__2),
        .I5(int_mask_frame_done_reg_n_0),
        .O(int_mask_frame_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h7)) 
    int_mask_frame_done_i_2
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .O(int_mask_frame_done_i_2_n_0));
  FDSE int_mask_frame_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_mask_frame_done_i_1_n_0),
        .Q(int_mask_frame_done_reg_n_0),
        .S(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    irq_INST_0
       (.I0(int_frame_done_reg_n_0),
        .I1(int_mask_frame_done_reg_n_0),
        .O(irq));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    module_reset_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(module_reset_i_2_n_0),
        .I4(slv_reg_wren__2),
        .I5(module_reset),
        .O(module_reset_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    module_reset_i_2
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .O(module_reset_i_2_n_0));
  FDSE module_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(module_reset_i_1_n_0),
        .Q(module_reset),
        .S(p_0_in));
  FDRE prev_vsync_r_reg
       (.C(pclk),
        .CE(1'b1),
        .D(in_vsync),
        .Q(prev_vsync_r),
        .R(1'b0));
  FDRE prev_vsync_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_vsync),
        .Q(prev_vsync),
        .R(1'b0));
  FDRE s_crop_en_reg
       (.C(pclk),
        .CE(frame_start),
        .D(data1[3]),
        .Q(s_crop_en),
        .R(1'b0));
  FDRE \s_crop_h_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[0]),
        .Q(s_crop_h[0]),
        .R(1'b0));
  FDRE \s_crop_h_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[10]),
        .Q(s_crop_h[10]),
        .R(1'b0));
  FDRE \s_crop_h_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[11]),
        .Q(s_crop_h[11]),
        .R(1'b0));
  FDRE \s_crop_h_reg[12] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[12]),
        .Q(s_crop_h[12]),
        .R(1'b0));
  FDRE \s_crop_h_reg[13] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[13]),
        .Q(s_crop_h[13]),
        .R(1'b0));
  FDRE \s_crop_h_reg[14] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[14]),
        .Q(s_crop_h[14]),
        .R(1'b0));
  FDRE \s_crop_h_reg[15] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[15]),
        .Q(s_crop_h[15]),
        .R(1'b0));
  FDRE \s_crop_h_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[1]),
        .Q(s_crop_h[1]),
        .R(1'b0));
  FDRE \s_crop_h_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[2]),
        .Q(s_crop_h[2]),
        .R(1'b0));
  FDRE \s_crop_h_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[3]),
        .Q(s_crop_h[3]),
        .R(1'b0));
  FDRE \s_crop_h_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[4]),
        .Q(s_crop_h[4]),
        .R(1'b0));
  FDRE \s_crop_h_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[5]),
        .Q(s_crop_h[5]),
        .R(1'b0));
  FDRE \s_crop_h_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[6]),
        .Q(s_crop_h[6]),
        .R(1'b0));
  FDRE \s_crop_h_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[7]),
        .Q(s_crop_h[7]),
        .R(1'b0));
  FDRE \s_crop_h_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[8]),
        .Q(s_crop_h[8]),
        .R(1'b0));
  FDRE \s_crop_h_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_h[9]),
        .Q(s_crop_h[9]),
        .R(1'b0));
  FDRE \s_crop_w_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[0]),
        .Q(s_crop_w[0]),
        .R(1'b0));
  FDRE \s_crop_w_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[10]),
        .Q(s_crop_w[10]),
        .R(1'b0));
  FDRE \s_crop_w_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[11]),
        .Q(s_crop_w[11]),
        .R(1'b0));
  FDRE \s_crop_w_reg[12] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[12]),
        .Q(s_crop_w[12]),
        .R(1'b0));
  FDRE \s_crop_w_reg[13] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[13]),
        .Q(s_crop_w[13]),
        .R(1'b0));
  FDRE \s_crop_w_reg[14] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[14]),
        .Q(s_crop_w[14]),
        .R(1'b0));
  FDRE \s_crop_w_reg[15] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[15]),
        .Q(s_crop_w[15]),
        .R(1'b0));
  FDRE \s_crop_w_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[1]),
        .Q(s_crop_w[1]),
        .R(1'b0));
  FDRE \s_crop_w_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[2]),
        .Q(s_crop_w[2]),
        .R(1'b0));
  FDRE \s_crop_w_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[3]),
        .Q(s_crop_w[3]),
        .R(1'b0));
  FDRE \s_crop_w_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[4]),
        .Q(s_crop_w[4]),
        .R(1'b0));
  FDRE \s_crop_w_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[5]),
        .Q(s_crop_w[5]),
        .R(1'b0));
  FDRE \s_crop_w_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[6]),
        .Q(s_crop_w[6]),
        .R(1'b0));
  FDRE \s_crop_w_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[7]),
        .Q(s_crop_w[7]),
        .R(1'b0));
  FDRE \s_crop_w_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[8]),
        .Q(s_crop_w[8]),
        .R(1'b0));
  FDRE \s_crop_w_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_w[9]),
        .Q(s_crop_w[9]),
        .R(1'b0));
  FDRE \s_crop_x_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[0]),
        .Q(s_crop_x[0]),
        .R(1'b0));
  FDRE \s_crop_x_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[10]),
        .Q(s_crop_x[10]),
        .R(1'b0));
  FDRE \s_crop_x_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[11]),
        .Q(s_crop_x[11]),
        .R(1'b0));
  FDRE \s_crop_x_reg[12] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[12]),
        .Q(s_crop_x[12]),
        .R(1'b0));
  FDRE \s_crop_x_reg[13] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[13]),
        .Q(s_crop_x[13]),
        .R(1'b0));
  FDRE \s_crop_x_reg[14] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[14]),
        .Q(s_crop_x[14]),
        .R(1'b0));
  FDRE \s_crop_x_reg[15] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[15]),
        .Q(s_crop_x[15]),
        .R(1'b0));
  FDRE \s_crop_x_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[1]),
        .Q(s_crop_x[1]),
        .R(1'b0));
  FDRE \s_crop_x_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[2]),
        .Q(s_crop_x[2]),
        .R(1'b0));
  FDRE \s_crop_x_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[3]),
        .Q(s_crop_x[3]),
        .R(1'b0));
  FDRE \s_crop_x_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[4]),
        .Q(s_crop_x[4]),
        .R(1'b0));
  FDRE \s_crop_x_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[5]),
        .Q(s_crop_x[5]),
        .R(1'b0));
  FDRE \s_crop_x_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[6]),
        .Q(s_crop_x[6]),
        .R(1'b0));
  FDRE \s_crop_x_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[7]),
        .Q(s_crop_x[7]),
        .R(1'b0));
  FDRE \s_crop_x_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[8]),
        .Q(s_crop_x[8]),
        .R(1'b0));
  FDRE \s_crop_x_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_x[9]),
        .Q(s_crop_x[9]),
        .R(1'b0));
  FDRE \s_crop_y_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[0]),
        .Q(s_crop_y[0]),
        .R(1'b0));
  FDRE \s_crop_y_reg[10] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[10]),
        .Q(s_crop_y[10]),
        .R(1'b0));
  FDRE \s_crop_y_reg[11] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[11]),
        .Q(s_crop_y[11]),
        .R(1'b0));
  FDRE \s_crop_y_reg[12] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[12]),
        .Q(s_crop_y[12]),
        .R(1'b0));
  FDRE \s_crop_y_reg[13] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[13]),
        .Q(s_crop_y[13]),
        .R(1'b0));
  FDRE \s_crop_y_reg[14] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[14]),
        .Q(s_crop_y[14]),
        .R(1'b0));
  FDRE \s_crop_y_reg[15] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[15]),
        .Q(s_crop_y[15]),
        .R(1'b0));
  FDRE \s_crop_y_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[1]),
        .Q(s_crop_y[1]),
        .R(1'b0));
  FDRE \s_crop_y_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[2]),
        .Q(s_crop_y[2]),
        .R(1'b0));
  FDRE \s_crop_y_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[3]),
        .Q(s_crop_y[3]),
        .R(1'b0));
  FDRE \s_crop_y_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[4]),
        .Q(s_crop_y[4]),
        .R(1'b0));
  FDRE \s_crop_y_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[5]),
        .Q(s_crop_y[5]),
        .R(1'b0));
  FDRE \s_crop_y_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[6]),
        .Q(s_crop_y[6]),
        .R(1'b0));
  FDRE \s_crop_y_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[7]),
        .Q(s_crop_y[7]),
        .R(1'b0));
  FDRE \s_crop_y_reg[8] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[8]),
        .Q(s_crop_y[8]),
        .R(1'b0));
  FDRE \s_crop_y_reg[9] 
       (.C(pclk),
        .CE(frame_start),
        .D(crop_y[9]),
        .Q(s_crop_y[9]),
        .R(1'b0));
  FDRE s_dscale_en_reg
       (.C(pclk),
        .CE(frame_start),
        .D(data1[4]),
        .Q(s_dscale_en),
        .R(1'b0));
  FDRE \s_dscale_h_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_h[0]),
        .Q(s_dscale_h[0]),
        .R(1'b0));
  FDRE \s_dscale_h_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_h[1]),
        .Q(s_dscale_h[1]),
        .R(1'b0));
  FDRE \s_dscale_h_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_h[2]),
        .Q(s_dscale_h[2]),
        .R(1'b0));
  FDRE \s_dscale_h_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_h[3]),
        .Q(s_dscale_h[3]),
        .R(1'b0));
  FDRE \s_dscale_v_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_v[0]),
        .Q(s_dscale_v[0]),
        .R(1'b0));
  FDRE \s_dscale_v_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_v[1]),
        .Q(s_dscale_v[1]),
        .R(1'b0));
  FDRE \s_dscale_v_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_v[2]),
        .Q(s_dscale_v[2]),
        .R(1'b0));
  FDRE \s_dscale_v_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(dscale_v[3]),
        .Q(s_dscale_v[3]),
        .R(1'b0));
  FDRE \s_equ_max_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_max[0]),
        .Q(s_equ_max[0]),
        .R(1'b0));
  FDRE \s_equ_max_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_max[1]),
        .Q(s_equ_max[1]),
        .R(1'b0));
  FDRE \s_equ_max_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_max[2]),
        .Q(s_equ_max[2]),
        .R(1'b0));
  FDRE \s_equ_max_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_max[3]),
        .Q(s_equ_max[3]),
        .R(1'b0));
  FDRE \s_equ_max_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_max[4]),
        .Q(s_equ_max[4]),
        .R(1'b0));
  FDRE \s_equ_max_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_max[5]),
        .Q(s_equ_max[5]),
        .R(1'b0));
  FDRE \s_equ_max_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_max[6]),
        .Q(s_equ_max[6]),
        .R(1'b0));
  FDRE \s_equ_max_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_max[7]),
        .Q(s_equ_max[7]),
        .R(1'b0));
  FDRE \s_equ_min_reg[0] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_min[0]),
        .Q(s_equ_min[0]),
        .R(1'b0));
  FDRE \s_equ_min_reg[1] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_min[1]),
        .Q(s_equ_min[1]),
        .R(1'b0));
  FDRE \s_equ_min_reg[2] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_min[2]),
        .Q(s_equ_min[2]),
        .R(1'b0));
  FDRE \s_equ_min_reg[3] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_min[3]),
        .Q(s_equ_min[3]),
        .R(1'b0));
  FDRE \s_equ_min_reg[4] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_min[4]),
        .Q(s_equ_min[4]),
        .R(1'b0));
  FDRE \s_equ_min_reg[5] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_min[5]),
        .Q(s_equ_min[5]),
        .R(1'b0));
  FDRE \s_equ_min_reg[6] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_min[6]),
        .Q(s_equ_min[6]),
        .R(1'b0));
  FDRE \s_equ_min_reg[7] 
       (.C(pclk),
        .CE(frame_start),
        .D(equ_min[7]),
        .Q(s_equ_min[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_hist_equ_en_i_1
       (.I0(prev_vsync_r),
        .I1(in_vsync),
        .O(frame_start));
  FDRE s_hist_equ_en_reg
       (.C(pclk),
        .CE(frame_start),
        .D(data1[0]),
        .Q(s_hist_equ_en),
        .R(1'b0));
  FDRE s_module_reset_reg
       (.C(pclk),
        .CE(1'b1),
        .D(module_reset),
        .Q(s_module_reset),
        .R(1'b0));
  FDRE s_sobel_en_reg
       (.C(pclk),
        .CE(frame_start),
        .D(data1[1]),
        .Q(s_sobel_en),
        .R(1'b0));
  FDRE s_yuv2rgb_en_reg
       (.C(pclk),
        .CE(frame_start),
        .D(data1[2]),
        .Q(s_yuv2rgb_en),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  FDRE sobel_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[1]),
        .Q(data1[1]),
        .R(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vip_top vip_top_i0
       (.O({href_reg_reg_i_39_n_4,href_reg_reg_i_39_n_5,href_reg_reg_i_39_n_6,href_reg_reg_i_39_n_7}),
        .Q(s_equ_max),
        .\ZOUT_reg[19] (\ZOUT_reg[19] ),
        .hist_sum_data_20(s_equ_min),
        .\hist_sum_data_3_reg[0] (\hist_sum_data_3_reg[0] ),
        .href_reg_reg_i_11({href_reg_reg_i_77_n_4,href_reg_reg_i_77_n_5,href_reg_reg_i_77_n_6,href_reg_reg_i_77_n_7}),
        .href_reg_reg_i_3({href_reg_reg_i_45_n_4,href_reg_reg_i_45_n_5,href_reg_reg_i_45_n_6,href_reg_reg_i_45_n_7}),
        .href_reg_reg_i_34({href_reg_reg_i_86_n_4,href_reg_reg_i_86_n_5,href_reg_reg_i_86_n_6,href_reg_reg_i_86_n_7}),
        .href_reg_reg_i_4(s_crop_y),
        .href_reg_reg_i_40({href_reg_reg_i_95_n_4,href_reg_reg_i_95_n_5,href_reg_reg_i_95_n_6,href_reg_reg_i_95_n_7}),
        .href_reg_reg_i_5(s_crop_x),
        .href_reg_reg_i_6({href_reg_reg_i_67_n_4,href_reg_reg_i_67_n_5,href_reg_reg_i_67_n_6,href_reg_reg_i_67_n_7}),
        .href_reg_reg_i_62({href_reg_reg_i_100_n_4,href_reg_reg_i_100_n_5,href_reg_reg_i_100_n_6,href_reg_reg_i_100_n_7}),
        .href_reg_reg_i_72({href_reg_reg_i_105_n_4,href_reg_reg_i_105_n_5,href_reg_reg_i_105_n_6,href_reg_reg_i_105_n_7}),
        .in_href(in_href),
        .in_vsync(in_vsync),
        .in_yuv(in_yuv),
        .\line_cnt_reg[0] (s_dscale_v),
        .out_href(out_href),
        .out_pclk(out_pclk),
        .out_rgb(out_rgb),
        .out_vsync(out_vsync),
        .pclk(pclk),
        .\pix_cnt_reg[1] (s_dscale_h),
        .rst_n(rst_n),
        .s_crop_en(s_crop_en),
        .s_dscale_en(s_dscale_en),
        .s_hist_equ_en(s_hist_equ_en),
        .s_hist_equ_en_reg(s_hist_equ_en_reg_0),
        .s_module_reset(s_module_reset),
        .s_module_reset_reg(s_module_reset_reg_0),
        .s_sobel_en(s_sobel_en),
        .s_yuv2rgb_en(s_yuv2rgb_en));
  FDSE yuv2rgb_en_reg
       (.C(s00_axi_aclk),
        .CE(hist_equ_en),
        .D(s00_axi_wdata[2]),
        .Q(data1[2]),
        .S(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
