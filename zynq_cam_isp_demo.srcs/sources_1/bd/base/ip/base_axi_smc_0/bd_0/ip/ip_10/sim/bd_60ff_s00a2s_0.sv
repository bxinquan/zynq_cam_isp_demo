// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:sc_axi2sc:1.0
// IP Revision: 7

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_60ff_s00a2s_0 (
  aclk,
  s_sc_r_req,
  s_sc_r_info,
  s_sc_r_send,
  s_sc_r_recv,
  s_sc_r_payld,
  m_sc_ar_req,
  m_sc_ar_info,
  m_sc_ar_send,
  m_sc_ar_recv,
  m_sc_ar_payld,
  s_axi_arid,
  s_axi_araddr,
  s_axi_arlen,
  s_axi_arlock,
  s_axi_arcache,
  s_axi_arprot,
  s_axi_arqos,
  s_axi_aruser,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rid,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rlast,
  s_axi_ruser,
  s_axi_rvalid,
  s_axi_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXI:M_AR_SC:M_AW_SC:M_W_SC:S_R_SC:S_B_SC, FREQ_HZ 120000000, PHASE 0.000, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC_R REQ" *)
input wire s_sc_r_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC_R INFO" *)
input wire [0 : 0] s_sc_r_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC_R SEND" *)
input wire s_sc_r_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC_R RECV" *)
output wire s_sc_r_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC_R PAYLD" *)
input wire [89 : 0] s_sc_r_payld;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_AR REQ" *)
output wire m_sc_ar_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_AR INFO" *)
output wire [0 : 0] m_sc_ar_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_AR SEND" *)
output wire m_sc_ar_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_AR RECV" *)
input wire m_sc_ar_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_AR PAYLD" *)
output wire [141 : 0] m_sc_ar_payld;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *)
input wire [2 : 0] s_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [31 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *)
input wire [7 : 0] s_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *)
input wire [0 : 0] s_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *)
input wire [3 : 0] s_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
input wire [2 : 0] s_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *)
input wire [3 : 0] s_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARUSER" *)
input wire [1023 : 0] s_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *)
output wire [2 : 0] s_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [63 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *)
output wire s_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RUSER" *)
output wire [1023 : 0] s_axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 120000000, ID_WIDTH 3, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 1024, WUSER_WIDTH 0, RUSER_WIDTH 1024, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS\
 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire s_axi_rready;

  sc_axi2sc_v1_0_7_top #(
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_ID_WIDTH(3),
    .C_AXI_RDATA_WIDTH(64),
    .C_AXI_WDATA_WIDTH(64),
    .C_SC_ADDR_WIDTH(32),
    .C_SC_ID_WIDTH(3),
    .C_SC_RDATA_WIDTH(64),
    .C_SC_WDATA_WIDTH(64),
    .C_SC_RUSER_BITS_PER_BYTE(0),
    .C_SC_WUSER_BITS_PER_BYTE(0),
    .C_SC_ARUSER_WIDTH(0),
    .C_SC_AWUSER_WIDTH(0),
    .C_SC_BUSER_WIDTH(0),
    .C_MSC_ROUTE_WIDTH(1),
    .C_SSC_ROUTE_WIDTH(6),
    .C_AWPAYLD_WIDTH(142),
    .C_ARPAYLD_WIDTH(142),
    .C_WPAYLD_WIDTH(88),
    .C_RPAYLD_WIDTH(90),
    .C_BPAYLD_WIDTH(12)
  ) inst (
    .aclk(aclk),
    .s_sc_r_req(s_sc_r_req),
    .s_sc_r_info(s_sc_r_info),
    .s_sc_r_send(s_sc_r_send),
    .s_sc_r_recv(s_sc_r_recv),
    .s_sc_r_payld(s_sc_r_payld),
    .s_sc_b_req(1'D0),
    .s_sc_b_info(1'D0),
    .s_sc_b_send(1'D0),
    .s_sc_b_recv(),
    .s_sc_b_payld(12'D0),
    .m_sc_ar_req(m_sc_ar_req),
    .m_sc_ar_info(m_sc_ar_info),
    .m_sc_ar_send(m_sc_ar_send),
    .m_sc_ar_recv(m_sc_ar_recv),
    .m_sc_ar_payld(m_sc_ar_payld),
    .m_sc_aw_req(),
    .m_sc_aw_info(),
    .m_sc_aw_send(),
    .m_sc_aw_recv(1'D0),
    .m_sc_aw_payld(),
    .m_sc_w_req(),
    .m_sc_w_info(),
    .m_sc_w_send(),
    .m_sc_w_recv(1'D0),
    .m_sc_w_payld(),
    .s_axi_awid(3'H0),
    .s_axi_awaddr(32'H00000000),
    .s_axi_awlen(8'H0),
    .s_axi_awlock(1'H0),
    .s_axi_awcache(4'H0),
    .s_axi_awprot(3'H0),
    .s_axi_awqos(4'H0),
    .s_axi_awuser(1024'H0),
    .s_axi_awvalid(1'H0),
    .s_axi_awready(),
    .s_axi_wdata(64'H0000000000000000),
    .s_axi_wstrb(8'HFF),
    .s_axi_wlast(1'H1),
    .s_axi_wuser(1024'H0),
    .s_axi_wvalid(1'H0),
    .s_axi_wready(),
    .s_axi_bid(),
    .s_axi_bresp(),
    .s_axi_buser(),
    .s_axi_bvalid(),
    .s_axi_bready(1'H0),
    .s_axi_arid(s_axi_arid),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arlen(s_axi_arlen),
    .s_axi_arlock(s_axi_arlock),
    .s_axi_arcache(s_axi_arcache),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arqos(s_axi_arqos),
    .s_axi_aruser(s_axi_aruser),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rid(s_axi_rid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rlast(s_axi_rlast),
    .s_axi_ruser(s_axi_ruser),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready)
  );
endmodule
