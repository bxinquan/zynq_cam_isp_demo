//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axis to vector
//   A generic module to merge all axis 'data' signals into one signal called payload.
//   This is strictly wires, so no clk, reset, aclken, valid/ready are required.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_infrastructure_v1_0_util_axis2vector
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_vdma_v6_3_6_axis_infrastructure_v1_0_util_axis2vector #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter integer C_TDATA_WIDTH = 32,
   parameter integer C_TID_WIDTH   = 1,
   parameter integer C_TDEST_WIDTH = 1,
   parameter integer C_TUSER_WIDTH = 1,
   parameter integer C_TPAYLOAD_WIDTH = 44,
   parameter [31:0]  C_SIGNAL_SET  = 32'hFF
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // inputs
   input  wire [C_TDATA_WIDTH-1:0]   TDATA,
   input  wire [C_TDATA_WIDTH/8-1:0] TSTRB,
   input  wire [C_TDATA_WIDTH/8-1:0] TKEEP,
   input  wire                       TLAST,
   input  wire [C_TID_WIDTH-1:0]     TID,
   input  wire [C_TDEST_WIDTH-1:0]   TDEST,
   input  wire [C_TUSER_WIDTH-1:0]   TUSER,

   // outputs
   output wire [C_TPAYLOAD_WIDTH-1:0] TPAYLOAD
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
//`include "axi_vdma_v6_3_6_axis_infrastructure_v1_0_axis_infrastructure.vh"
`include "axi_vdma_v6_3_6.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_TDATA_INDX = f_get_tdata_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TSTRB_INDX = f_get_tstrb_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TKEEP_INDX = f_get_tkeep_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TLAST_INDX = f_get_tlast_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TID_INDX   = f_get_tid_indx  (C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TDEST_INDX = f_get_tdest_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TUSER_INDX = f_get_tuser_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
generate
  if (C_SIGNAL_SET[G_INDX_SS_TDATA]) begin : gen_tdata
    assign TPAYLOAD[P_TDATA_INDX+:C_TDATA_WIDTH]   = TDATA;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TSTRB]) begin : gen_tstrb
    assign TPAYLOAD[P_TSTRB_INDX+:C_TDATA_WIDTH/8] = TSTRB;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TKEEP]) begin : gen_tkeep
    assign TPAYLOAD[P_TKEEP_INDX+:C_TDATA_WIDTH/8] = TKEEP;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TLAST]) begin : gen_tlast
    assign TPAYLOAD[P_TLAST_INDX+:1]               = TLAST;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TID]) begin : gen_tid
    assign TPAYLOAD[P_TID_INDX+:C_TID_WIDTH]       = TID;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TDEST]) begin : gen_tdest
    assign TPAYLOAD[P_TDEST_INDX+:C_TDEST_WIDTH]   = TDEST;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TUSER]) begin : gen_tuser
    assign TPAYLOAD[P_TUSER_INDX+:C_TUSER_WIDTH]   = TUSER;
  end
endgenerate
endmodule 

`default_nettype wire


//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axis to vector
//   A generic module to unmerge all axis 'data' signals from payload.
//   This is strictly wires, so no clk, reset, aclken, valid/ready are required.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_infrastructure_v1_0_util_vector2axis
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_vdma_v6_3_6_axis_infrastructure_v1_0_util_vector2axis #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter integer C_TDATA_WIDTH = 32,
   parameter integer C_TID_WIDTH   = 1,
   parameter integer C_TDEST_WIDTH = 1,
   parameter integer C_TUSER_WIDTH = 1,
   parameter integer C_TPAYLOAD_WIDTH = 44,
   parameter [31:0]  C_SIGNAL_SET  = 32'hFF
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // outputs
   input  wire [C_TPAYLOAD_WIDTH-1:0] TPAYLOAD,

   // inputs
   output wire [C_TDATA_WIDTH-1:0]   TDATA,
   output wire [C_TDATA_WIDTH/8-1:0] TSTRB,
   output wire [C_TDATA_WIDTH/8-1:0] TKEEP,
   output wire                       TLAST,
   output wire [C_TID_WIDTH-1:0]     TID,
   output wire [C_TDEST_WIDTH-1:0]   TDEST,
   output wire [C_TUSER_WIDTH-1:0]   TUSER
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
//`include "axi_vdma_v6_3_6_axis_infrastructure_v1_0_axis_infrastructure.vh"
`include "axi_vdma_v6_3_6.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_TDATA_INDX = f_get_tdata_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TSTRB_INDX = f_get_tstrb_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TKEEP_INDX = f_get_tkeep_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TLAST_INDX = f_get_tlast_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TID_INDX   = f_get_tid_indx  (C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TDEST_INDX = f_get_tdest_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TUSER_INDX = f_get_tuser_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
generate
  if (C_SIGNAL_SET[G_INDX_SS_TDATA]) begin : gen_tdata
    assign TDATA = TPAYLOAD[P_TDATA_INDX+:C_TDATA_WIDTH]  ;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TSTRB]) begin : gen_tstrb
    assign TSTRB = TPAYLOAD[P_TSTRB_INDX+:C_TDATA_WIDTH/8];
  end
  if (C_SIGNAL_SET[G_INDX_SS_TKEEP]) begin : gen_tkeep
    assign TKEEP = TPAYLOAD[P_TKEEP_INDX+:C_TDATA_WIDTH/8];
  end
  if (C_SIGNAL_SET[G_INDX_SS_TLAST]) begin : gen_tlast
    assign TLAST = TPAYLOAD[P_TLAST_INDX+:1]              ;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TID]) begin : gen_tid
    assign TID   = TPAYLOAD[P_TID_INDX+:C_TID_WIDTH]      ;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TDEST]) begin : gen_tdest
    assign TDEST = TPAYLOAD[P_TDEST_INDX+:C_TDEST_WIDTH]  ;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TUSER]) begin : gen_tuser
    assign TUSER = TPAYLOAD[P_TUSER_INDX+:C_TUSER_WIDTH]  ;
  end
endgenerate
endmodule 

`default_nettype wire


//  (c) Copyright 2010-2011, 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// Register Slice
//   Generic single-channel AXI pipeline register on forward and/or reverse signal path
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axic_register_slice
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_vdma_v6_3_6_axis_register_slice_v1_0_axisc_register_slice #
  (
   parameter C_FAMILY     = "virtex7",
   parameter C_DATA_WIDTH = 32,
   parameter C_REG_CONFIG = 32'h00000000
   // C_REG_CONFIG:
   //   0 => BYPASS    = The channel is just wired through the module.
   //   1 => FWD_REV   = Both FWD and REV (fully-registered)
   //   2 => FWD       = The master VALID and payload signals are registrated. 
   //   3 => REV       = The slave ready signal is registrated
   //   4 => RESERVED (all outputs driven to 0).
   //   5 => RESERVED (all outputs driven to 0).
   //   6 => INPUTS    = Slave and Master side inputs are registrated.
   //   7 => LIGHT_WT  = 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
   )
  (
   // System Signals
   input wire ACLK,
   input wire ARESET,
   input wire ACLKEN,

   // Slave side
   input  wire [C_DATA_WIDTH-1:0] S_PAYLOAD_DATA,
   input  wire S_VALID,
   output wire S_READY,

   // Master side
   output  wire [C_DATA_WIDTH-1:0] M_PAYLOAD_DATA,
   output wire M_VALID,
   input  wire M_READY
   );

  (* use_clock_enable = "yes" *)

  generate
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 0
  // Bypass mode
  //
  ////////////////////////////////////////////////////////////////////
    if (C_REG_CONFIG == 32'h00000000)
    begin
      assign M_PAYLOAD_DATA = S_PAYLOAD_DATA;
      assign M_VALID        = S_VALID;
      assign S_READY        = M_READY;      
    end
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 1 (or 8)
  // Both FWD and REV mode
  //
  ////////////////////////////////////////////////////////////////////
    else if ((C_REG_CONFIG == 32'h00000001) || (C_REG_CONFIG == 32'h00000008))
    begin
      reg [1:0] state;
      localparam [1:0] 
        ZERO = 2'b10,
        ONE  = 2'b11,
        TWO  = 2'b01;
      
      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg [C_DATA_WIDTH-1:0] storage_data2;
      reg                    load_s1;
      wire                   load_s2;
      wire                   load_s1_from_s2;
      reg                    s_ready_i; //local signal of output
      wire                   m_valid_i; //local signal of output

      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      (* equivalent_register_removal = "no" *) reg [1:0] areset_d; // Reset delay register
      always @(posedge ACLK) begin
        if (ACLKEN) begin
          areset_d <= {areset_d[0], ARESET};
        end
      end
      
      // Load storage1 with either slave side data or from storage2
      always @(posedge ACLK) 
      begin
        if (ACLKEN) begin
          storage_data1 <= ~load_s1 ? storage_data1 : 
                           load_s1_from_s2 ? storage_data2 : 
                           S_PAYLOAD_DATA; 
        end
      end

      // Load storage2 with slave side data
      always @(posedge ACLK) 
      begin
        if (ACLKEN) begin
          storage_data2 <= load_s2 ? S_PAYLOAD_DATA : storage_data2;
        end
      end

      assign M_PAYLOAD_DATA = storage_data1;

      // Always load s2 on a valid transaction even if it's unnecessary
      assign load_s2 = S_VALID & s_ready_i;

      // Loading s1
      always @ *
      begin
        if ( ((state == ZERO) && (S_VALID == 1)) || // Load when empty on slave transaction
             // Load when ONE if we both have read and write at the same time
             ((state == ONE) && (S_VALID == 1) && (M_READY == 1)) ||
             // Load when TWO and we have a transaction on Master side
             ((state == TWO) && (M_READY == 1)))
          load_s1 = 1'b1;
        else
          load_s1 = 1'b0;
      end // always @ *

      assign load_s1_from_s2 = (state == TWO);
                       
      // State Machine for handling output signals
      always @(posedge ACLK) begin
        if (ARESET) begin
          s_ready_i <= 1'b0;
          state <= ZERO;
        end else if (ACLKEN && areset_d == 2'b10) begin
          s_ready_i <= 1'b1;
          state <= ZERO;
        end else if (ACLKEN && areset_d == 2'b00) begin
          case (state)
            // No transaction stored locally
            ZERO: if (S_VALID) state <= ONE; // Got one so move to ONE

            // One transaction stored locally
            ONE: begin
              if (M_READY & ~S_VALID) state <= ZERO; // Read out one so move to ZERO
              if (~M_READY & S_VALID) begin
                state <= TWO;  // Got another one so move to TWO
                s_ready_i <= 1'b0;
              end
            end

            // TWO transaction stored locally
            TWO: if (M_READY) begin
              state <= ONE; // Read out one so move to ONE
              s_ready_i <= 1'b1;
            end
          endcase // case (state)
        end
      end // always @ (posedge ACLK)
      
      assign m_valid_i = state[0];

    end // if (C_REG_CONFIG == 1)
    
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 2
  // Only FWD mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000002)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data;
      wire                   s_ready_i; //local signal of output
      reg                    m_valid_i; //local signal of output

      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      (* equivalent_register_removal = "no" *) reg [1:0] areset_d; // Reset delay register
      always @(posedge ACLK) begin
        if (ACLKEN) begin
          areset_d <= {areset_d[0], ARESET};
        end
      end
      
      // Save payload data whenever we have a transaction on the slave side
      always @(posedge ACLK) 
      begin
        if (ACLKEN)
          storage_data <= (S_VALID & s_ready_i) ? S_PAYLOAD_DATA : storage_data;
      end

      assign M_PAYLOAD_DATA = storage_data;
      
      // M_Valid set to high when we have a completed transfer on slave side
      // Is removed on a M_READY except if we have a new transfer on the slave side
      always @(posedge ACLK) begin
        if (areset_d) begin
          m_valid_i <= 1'b0;
        end 
        else if (ACLKEN) begin
            m_valid_i <= S_VALID ? 1'b1 :  // Always set m_valid_i when slave side is valid
                       M_READY ? 1'b0 :  // Clear (or keep) when no slave side is valid but master side is ready
                         m_valid_i;
        end
      end // always @ (posedge ACLK)
      
      // Slave Ready is either when Master side drives M_Ready or we have space in our storage data
      assign s_ready_i = (M_READY | ~m_valid_i) & ~|areset_d;

    end // if (C_REG_CONFIG == 2)
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 3
  // Only REV mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000003)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data;
      reg                    s_ready_i; //local signal of output
      reg                    has_valid_storage_i;
      reg                    has_valid_storage;

      (* equivalent_register_removal = "no" *) reg areset_d; // Reset delay register
      always @(posedge ACLK) begin
        if (ACLKEN) begin
          areset_d <= ARESET;
        end
      end
      
      // Save payload data whenever we have a transaction on the slave side
      always @(posedge ACLK) 
      begin
        if (ACLKEN)
          storage_data <= (S_VALID & s_ready_i) ? S_PAYLOAD_DATA : storage_data;
      end

      assign M_PAYLOAD_DATA = has_valid_storage ? storage_data : S_PAYLOAD_DATA;

      // Need to determine when we need to save a payload
      // Need a combinatorial signals since it will also effect S_READY
      always @ *
      begin
        // Set the value if we have a slave transaction but master side is not ready
        if (S_VALID & s_ready_i & ~M_READY)
          has_valid_storage_i = 1'b1;
        
        // Clear the value if it's set and Master side completes the transaction but we don't have a new slave side 
        // transaction 
        else if ( (has_valid_storage == 1) && (M_READY == 1) && ( (S_VALID == 0) || (s_ready_i == 0)))
          has_valid_storage_i = 1'b0;
        else
          has_valid_storage_i = has_valid_storage;
      end // always @ *

      always @(posedge ACLK) 
      begin
        if (ARESET) begin
          has_valid_storage <= 1'b0;
        end
        else if (ACLKEN) begin
          has_valid_storage <= has_valid_storage_i;
        end
      end

      // S_READY is either clocked M_READY or that we have room in local storage
      always @(posedge ACLK) begin
        if (ARESET) begin
          s_ready_i <= 1'b0;
        end
        else if (ACLKEN) begin
          s_ready_i <= M_READY | ~has_valid_storage_i;
        end
      end

      // assign local signal to its output signal
      assign S_READY = s_ready_i;

      // M_READY is either combinatorial S_READY or that we have valid data in local storage
      assign M_VALID = (S_VALID | has_valid_storage) & ~areset_d;
      
    end // if (C_REG_CONFIG == 3)
    
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 4 or 5 is NO LONGER SUPPORTED
  //
  ////////////////////////////////////////////////////////////////////
    else if ((C_REG_CONFIG == 32'h00000004) || (C_REG_CONFIG == 32'h00000005))
    begin
// synthesis translate_off
      initial begin  
        $display ("ERROR: For axi_register_slice, C_REG_CONFIG = 4 or 5 is RESERVED.");
      end
// synthesis translate_on
      assign M_PAYLOAD_DATA = 0;
      assign M_VALID        = 1'b0;
      assign S_READY        = 1'b0;    
    end  

  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 6
  // INPUTS mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000006)
    begin
      reg [1:0] state;
      reg [1:0] next_state;
      localparam [1:0] 
        ZERO = 2'b00,
        ONE  = 2'b01,
        TWO  = 2'b11;

      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg [C_DATA_WIDTH-1:0] storage_data2;
      reg                    s_valid_d;
      reg                    s_ready_d;
      reg                    m_ready_d;
      reg                    m_valid_d;
      reg                    load_s2;
      reg                    sel_s2;
      wire                   new_access;
      wire                   access_done;
      wire                   s_ready_i; //local signal of output
      reg                    s_ready_ii;
      reg                    m_valid_i; //local signal of output
      
      (* equivalent_register_removal = "no" *) reg areset_d; // Reset delay register
      always @(posedge ACLK) begin
        if (ACLKEN) begin
          areset_d <= ARESET;
        end
      end
      
      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;
      assign s_ready_i = s_ready_ii & ~areset_d;

      // Registrate input control signals
      always @(posedge ACLK) 
      begin
        if (ARESET) begin          
          s_valid_d <= 1'b0;
          s_ready_d <= 1'b0;
          m_ready_d <= 1'b0;
        end else if (ACLKEN) begin
          s_valid_d <= S_VALID;
          s_ready_d <= s_ready_i;
          m_ready_d <= M_READY;
        end
      end // always @ (posedge ACLK)

      // Load storage1 with slave side payload data when slave side ready is high
      always @(posedge ACLK) 
      begin
        if (ACLKEN)
          storage_data1 <= (s_ready_i) ? S_PAYLOAD_DATA : storage_data1;          
      end

      // Load storage2 with storage data 
      always @(posedge ACLK) 
      begin
        if (ACLKEN)
          storage_data2 <= load_s2 ? storage_data1 : storage_data2;
      end

      always @(posedge ACLK) 
      begin
        if (ARESET) 
          m_valid_d <= 1'b0;
        else if (ACLKEN)
          m_valid_d <= m_valid_i;
      end

      // Local help signals
      assign new_access  = s_ready_d & s_valid_d;
      assign access_done = m_ready_d & m_valid_d;


      // State Machine for handling output signals
      always @*
      begin
        next_state = state; // Stay in the same state unless we need to move to another state
        load_s2   = 0;
        sel_s2    = 0;
        m_valid_i = 0;
        s_ready_ii = 0;
        case (state)
            // No transaction stored locally
            ZERO: begin
              load_s2   = 0;
              sel_s2    = 0;
              m_valid_i = 0;
              s_ready_ii = 1;
              if (new_access) begin
                next_state = ONE; // Got one so move to ONE
                load_s2   = 1;
                m_valid_i = 0;
              end
              else begin
                next_state = next_state;
                load_s2   = load_s2;
                m_valid_i = m_valid_i;
              end

            end // case: ZERO

            // One transaction stored locally
            ONE: begin
              load_s2   = 0;
              sel_s2    = 1;
              m_valid_i = 1;
              s_ready_ii = 1;
              if (~new_access & access_done) begin
                next_state = ZERO; // Read out one so move to ZERO
                m_valid_i = 0;                      
              end
              else if (new_access & ~access_done) begin
                next_state = TWO;  // Got another one so move to TWO
                s_ready_ii = 0;
              end
              else if (new_access & access_done) begin
                load_s2   = 1;
                sel_s2    = 0;
              end
              else begin
                load_s2   = load_s2;
                sel_s2    = sel_s2;
              end


            end // case: ONE

            // TWO transaction stored locally
            TWO: begin
              load_s2   = 0;
              sel_s2    = 1;
              m_valid_i = 1;
              s_ready_ii = 0;
              if (access_done) begin 
                next_state = ONE; // Read out one so move to ONE
                s_ready_ii  = 1;
                load_s2    = 1;
                sel_s2     = 0;
              end
              else begin
                next_state = next_state;
                s_ready_ii  = s_ready_ii;
                load_s2    = load_s2;
                sel_s2     = sel_s2;
              end
            end // case: TWO
        endcase // case (state)
      end // always @ *


      // State Machine for handling output signals
      always @(posedge ACLK) 
      begin
        if (ARESET) 
          state <= ZERO;
        else if (ACLKEN)
          state <= next_state; // Stay in the same state unless we need to move to another state
      end
      
      // Master Payload mux
      assign M_PAYLOAD_DATA = sel_s2?storage_data2:storage_data1;

    end // if (C_REG_CONFIG == 6)
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 7
  // Light-weight mode.
  // 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
  // Operates same as 1-deep FIFO
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000007)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg                    s_ready_i; //local signal of output
      reg                    m_valid_i; //local signal of output

      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      (* equivalent_register_removal = "no" *) reg [1:0] areset_d; // Reset delay register
      always @(posedge ACLK) begin
        if (ACLKEN) begin
          areset_d <= {areset_d[0], ARESET};
        end
      end
      
      // Load storage1 with slave side data
      always @(posedge ACLK) 
      begin
        if (ARESET) begin
          s_ready_i <= 1'b0;
          m_valid_i <= 1'b0;
        end else if (ACLKEN && areset_d == 2'b10) begin
          s_ready_i <= 1'b1;
        end else if (ACLKEN && areset_d == 2'b00) begin
          if (m_valid_i & M_READY) begin
            s_ready_i <= 1'b1;
            m_valid_i <= 1'b0;
          end else if (S_VALID & s_ready_i) begin
            s_ready_i <= 1'b0;
            m_valid_i <= 1'b1;
          end
        end
        if (~m_valid_i) begin
          storage_data1 <= S_PAYLOAD_DATA;        
        end
      end
      assign M_PAYLOAD_DATA = storage_data1;
    end // if (C_REG_CONFIG == 7)
    
    else begin : default_case
      // Passthrough
      assign M_PAYLOAD_DATA = S_PAYLOAD_DATA;
      assign M_VALID        = S_VALID;
      assign S_READY        = M_READY;      
    end

  endgenerate
endmodule // axisc_register_slice


//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// Register Slice
//   Generic single-channel AXIS pipeline register on forward and/or reverse signal path.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_register_slice
//     util_axis2vector
//     axisc_register_slice
//     util_vector2axis
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_vdma_v6_3_6_axis_register_slice_v1_0_axis_register_slice #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY           = "virtex7",
   parameter integer C_AXIS_TDATA_WIDTH = 32,
   parameter integer C_AXIS_TID_WIDTH   = 1,
   parameter integer C_AXIS_TDEST_WIDTH = 1,
   parameter integer C_AXIS_TUSER_WIDTH = 1,
   parameter [31:0]  C_AXIS_SIGNAL_SET  = 32'hFF,
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter integer C_REG_CONFIG       = 0
   // C_REG_CONFIG:
   //   0 => BYPASS    = The channel is just wired through the module.
   //   1 => FWD_REV   = Both FWD and REV (fully-registered)
   //   2 => FWD       = The master VALID and payload signals are registrated. 
   //   3 => REV       = The slave ready signal is registrated
   //   4 => RESERVED (all outputs driven to 0).
   //   5 => RESERVED (all outputs driven to 0).
   //   6 => INPUTS    = Slave and Master side inputs are registrated.
   //   7 => LIGHT_WT  = 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESETN,
   input wire ACLKEN,

   // Slave side
   input  wire                            S_AXIS_TVALID,
   output wire                            S_AXIS_TREADY,
   input  wire [C_AXIS_TDATA_WIDTH-1:0]   S_AXIS_TDATA,
   input  wire [C_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TSTRB,
   input  wire [C_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TKEEP,
   input  wire                            S_AXIS_TLAST,
   input  wire [C_AXIS_TID_WIDTH-1:0]     S_AXIS_TID,
   input  wire [C_AXIS_TDEST_WIDTH-1:0]   S_AXIS_TDEST,
   input  wire [C_AXIS_TUSER_WIDTH-1:0]   S_AXIS_TUSER,

   // Master side
   output wire                            M_AXIS_TVALID,
   input  wire                            M_AXIS_TREADY,
   output wire [C_AXIS_TDATA_WIDTH-1:0]   M_AXIS_TDATA,
   output wire [C_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TSTRB,
   output wire [C_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TKEEP,
   output wire                            M_AXIS_TLAST,
   output wire [C_AXIS_TID_WIDTH-1:0]     M_AXIS_TID,
   output wire [C_AXIS_TDEST_WIDTH-1:0]   M_AXIS_TDEST,
   output wire [C_AXIS_TUSER_WIDTH-1:0]   M_AXIS_TUSER
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
//`include "axi_vdma_v6_3_6_axis_infrastructure_v1_0_axis_infrastructure.vh"
`include "axi_vdma_v6_3_6.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
  localparam P_TPAYLOAD_WIDTH = f_payload_width(C_AXIS_TDATA_WIDTH, C_AXIS_TID_WIDTH, 
                                                C_AXIS_TDEST_WIDTH, C_AXIS_TUSER_WIDTH, 
                                                C_AXIS_SIGNAL_SET);

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg                         areset_r;
wire [P_TPAYLOAD_WIDTH-1:0] S_AXIS_TPAYLOAD;
wire [P_TPAYLOAD_WIDTH-1:0] M_AXIS_TPAYLOAD;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
always @(posedge ACLK) begin
  areset_r <= ~ARESETN;
end

  axi_vdma_v6_3_6_axis_infrastructure_v1_0_util_axis2vector #(
    .C_TDATA_WIDTH    ( C_AXIS_TDATA_WIDTH ) ,
    .C_TID_WIDTH      ( C_AXIS_TID_WIDTH   ) ,
    .C_TDEST_WIDTH    ( C_AXIS_TDEST_WIDTH ) ,
    .C_TUSER_WIDTH    ( C_AXIS_TUSER_WIDTH ) ,
    .C_TPAYLOAD_WIDTH ( P_TPAYLOAD_WIDTH   ) ,
    .C_SIGNAL_SET     ( C_AXIS_SIGNAL_SET  ) 
  )
  util_axis2vector_0 (
    .TDATA    ( S_AXIS_TDATA    ) ,
    .TSTRB    ( S_AXIS_TSTRB    ) ,
    .TKEEP    ( S_AXIS_TKEEP    ) ,
    .TLAST    ( S_AXIS_TLAST    ) ,
    .TID      ( S_AXIS_TID      ) ,
    .TDEST    ( S_AXIS_TDEST    ) ,
    .TUSER    ( S_AXIS_TUSER    ) ,
    .TPAYLOAD ( S_AXIS_TPAYLOAD )
  );

  axi_vdma_v6_3_6_axis_register_slice_v1_0_axisc_register_slice #(
    .C_FAMILY     ( C_FAMILY         ) ,
    .C_DATA_WIDTH ( P_TPAYLOAD_WIDTH ) ,
    .C_REG_CONFIG ( C_REG_CONFIG     ) 
  )
  axisc_register_slice_0 (
    .ACLK           ( ACLK            ) ,
    .ARESET         ( areset_r        ) ,
    .ACLKEN         ( ACLKEN          ) ,
    .S_VALID        ( S_AXIS_TVALID   ) ,
    .S_READY        ( S_AXIS_TREADY   ) ,
    .S_PAYLOAD_DATA ( S_AXIS_TPAYLOAD ) ,

    .M_VALID        ( M_AXIS_TVALID   ) ,
    .M_READY        ( (C_AXIS_SIGNAL_SET[0] == 0) ? 1'b1 : M_AXIS_TREADY   ) ,
    .M_PAYLOAD_DATA ( M_AXIS_TPAYLOAD ) 
  );

  axi_vdma_v6_3_6_axis_infrastructure_v1_0_util_vector2axis #(
    .C_TDATA_WIDTH    ( C_AXIS_TDATA_WIDTH ) ,
    .C_TID_WIDTH      ( C_AXIS_TID_WIDTH   ) ,
    .C_TDEST_WIDTH    ( C_AXIS_TDEST_WIDTH ) ,
    .C_TUSER_WIDTH    ( C_AXIS_TUSER_WIDTH ) ,
    .C_TPAYLOAD_WIDTH ( P_TPAYLOAD_WIDTH   ) ,
    .C_SIGNAL_SET     ( C_AXIS_SIGNAL_SET  ) 
  )
  util_vector2axis_0 (
    .TPAYLOAD ( M_AXIS_TPAYLOAD ) ,
    .TDATA    ( M_AXIS_TDATA    ) ,
    .TSTRB    ( M_AXIS_TSTRB    ) ,
    .TKEEP    ( M_AXIS_TKEEP    ) ,
    .TLAST    ( M_AXIS_TLAST    ) ,
    .TID      ( M_AXIS_TID      ) ,
    .TDEST    ( M_AXIS_TDEST    ) ,
    .TUSER    ( M_AXIS_TUSER    ) 
  );


endmodule // axis_register_slice

`default_nettype wire


//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axisc_downsizer
//   Convert from SI data width < MI datawidth.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_vdma_v6_3_6_axis_dwidth_converter_v1_0_axisc_upsizer #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY             = "virtex7",
   parameter integer C_S_AXIS_TDATA_WIDTH = 32,
   parameter integer C_M_AXIS_TDATA_WIDTH = 96,
   parameter integer C_AXIS_TID_WIDTH     = 1,
   parameter integer C_AXIS_TDEST_WIDTH   = 1,
   parameter integer C_S_AXIS_TUSER_WIDTH = 1,
   parameter integer C_M_AXIS_TUSER_WIDTH = 3,
   parameter [31:0]  C_AXIS_SIGNAL_SET    = 32'hFF ,
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter integer C_RATIO = 3   // Should always be 1:C_RATIO (upsizer)
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESET,
   input wire ACLKEN,

   // Slave side
   input  wire                              S_AXIS_TVALID,
   output wire                              S_AXIS_TREADY,
   input  wire [C_S_AXIS_TDATA_WIDTH-1:0]   S_AXIS_TDATA,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TSTRB,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TKEEP,
   input  wire                              S_AXIS_TLAST,
   input  wire [C_AXIS_TID_WIDTH-1:0]       S_AXIS_TID,
   input  wire [C_AXIS_TDEST_WIDTH-1:0]     S_AXIS_TDEST,
   input  wire [C_S_AXIS_TUSER_WIDTH-1:0]   S_AXIS_TUSER,

   // Master side
   output wire                              M_AXIS_TVALID,
   input  wire                              M_AXIS_TREADY,
   output wire [C_M_AXIS_TDATA_WIDTH-1:0]   M_AXIS_TDATA,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TSTRB,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TKEEP,
   output wire                              M_AXIS_TLAST,
   output wire [C_AXIS_TID_WIDTH-1:0]       M_AXIS_TID,
   output wire [C_AXIS_TDEST_WIDTH-1:0]     M_AXIS_TDEST,
   output wire [C_M_AXIS_TUSER_WIDTH-1:0]   M_AXIS_TUSER
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
//`include "axi_vdma_v6_3_6_axis_infrastructure_v1_0_axis_infrastructure.vh"
`include "axi_vdma_v6_3_6.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_READY_EXIST = C_AXIS_SIGNAL_SET[0];
localparam P_DATA_EXIST  = C_AXIS_SIGNAL_SET[1];
localparam P_STRB_EXIST  = C_AXIS_SIGNAL_SET[2];
localparam P_KEEP_EXIST  = C_AXIS_SIGNAL_SET[3];
localparam P_LAST_EXIST  = C_AXIS_SIGNAL_SET[4];
localparam P_ID_EXIST    = C_AXIS_SIGNAL_SET[5];
localparam P_DEST_EXIST  = C_AXIS_SIGNAL_SET[6];
localparam P_USER_EXIST  = C_AXIS_SIGNAL_SET[7];
localparam P_S_AXIS_TSTRB_WIDTH = C_S_AXIS_TDATA_WIDTH/8;
localparam P_M_AXIS_TSTRB_WIDTH = C_M_AXIS_TDATA_WIDTH/8;

// State Machine possible states. Bits 1:0 used to encode output signals.
//                                     /--- M_AXIS_TVALID state
//                                     |/-- S_AXIS_TREADY state
localparam SM_RESET              = 3'b000; // De-assert Ready during reset
localparam SM_IDLE               = 3'b001; // R0 reg is empty
localparam SM_ACTIVE             = 3'b101; // R0 reg is active
localparam SM_END                = 3'b011; // R0 reg is empty and ACC reg is active
localparam SM_END_TO_ACTIVE      = 3'b010; // R0/ACC reg are both active.

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg  [2:0]                      state;

reg  [C_M_AXIS_TDATA_WIDTH-1:0] acc_data;
reg  [P_M_AXIS_TSTRB_WIDTH-1:0] acc_strb;
reg  [P_M_AXIS_TSTRB_WIDTH-1:0] acc_keep;
reg                             acc_last;
reg  [C_AXIS_TID_WIDTH-1:0]     acc_id;
reg  [C_AXIS_TDEST_WIDTH-1:0]   acc_dest;
reg  [C_M_AXIS_TUSER_WIDTH-1:0] acc_user;

wire [C_RATIO-1:0]              acc_reg_en;
reg  [C_RATIO-1:0]              r0_reg_sel;
wire                            next_xfer_is_end;

reg  [C_S_AXIS_TDATA_WIDTH-1:0] r0_data;
reg  [P_S_AXIS_TSTRB_WIDTH-1:0] r0_strb;
reg  [P_S_AXIS_TSTRB_WIDTH-1:0] r0_keep;
reg                             r0_last;
reg  [C_AXIS_TID_WIDTH-1:0]     r0_id;
reg  [C_AXIS_TDEST_WIDTH-1:0]   r0_dest;
reg  [C_S_AXIS_TUSER_WIDTH-1:0] r0_user;

wire                            id_match;
wire                            dest_match;
wire                            id_dest_mismatch;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

// S Ready/M Valid outputs are encoded in the current state.
assign S_AXIS_TREADY = state[0];
assign M_AXIS_TVALID = state[1];

// State machine controls M_AXIS_TVALID and S_AXIS_TREADY, and loading
always @(posedge ACLK) begin
  if (ARESET) begin
    state <= SM_RESET;
  end else if (ACLKEN) begin
    case (state)
      SM_RESET: begin
        state <= SM_IDLE;
      end
      
      SM_IDLE: begin
        if (S_AXIS_TVALID & id_dest_mismatch & ~r0_reg_sel[0]) begin
          state <= SM_END_TO_ACTIVE;
        end
        else if (S_AXIS_TVALID & next_xfer_is_end) begin
          state <= SM_END;
        end
        else if (S_AXIS_TVALID) begin
          state <= SM_ACTIVE;
        end
        else begin
          state <= SM_IDLE;
        end
      end

      SM_ACTIVE: begin 
        if (S_AXIS_TVALID & (id_dest_mismatch | r0_last)) begin
          state <= SM_END_TO_ACTIVE;
        end
        else if ((~S_AXIS_TVALID & r0_last) | (S_AXIS_TVALID & next_xfer_is_end)) begin
          state <= SM_END;
        end
        else if (S_AXIS_TVALID & ~next_xfer_is_end) begin
          state <= SM_ACTIVE;
        end
        else begin 
          state <= SM_IDLE;
        end
      end

      SM_END: begin
        if (M_AXIS_TREADY & S_AXIS_TVALID) begin
          state <= SM_ACTIVE;
        end
        else if ( ~M_AXIS_TREADY & S_AXIS_TVALID) begin
          state <= SM_END_TO_ACTIVE;
        end
        else if ( M_AXIS_TREADY & ~S_AXIS_TVALID) begin 
          state <= SM_IDLE;
        end
        else begin
          state <= SM_END;
        end
      end

      SM_END_TO_ACTIVE: begin
        if (M_AXIS_TREADY) begin
          state <= SM_ACTIVE;
        end
        else begin
          state <= SM_END_TO_ACTIVE;
        end
      end

      default: begin
        state <= SM_IDLE;
      end

    endcase // case (state)
  end
end 


assign M_AXIS_TDATA = acc_data;
assign M_AXIS_TSTRB = acc_strb;
assign M_AXIS_TKEEP = acc_keep;
assign M_AXIS_TUSER = acc_user;

generate 
  genvar i;
  // DATA/USER/STRB/KEEP accumulators
  always @(posedge ACLK) begin
    if (ACLKEN) begin
      acc_data[0*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH] <= acc_reg_en[0] ? r0_data
        : acc_data[0*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH];
      acc_user[0*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH] <= acc_reg_en[0] ? r0_user
        : acc_user[0*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH];
      acc_strb[0*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= acc_reg_en[0] ? r0_strb
        : acc_strb[0*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
      acc_keep[0*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= acc_reg_en[0] ? r0_keep
        : acc_keep[0*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
    end
  end
  for (i = 1; i < C_RATIO-1; i = i + 1) begin : gen_data_accumulator
    always @(posedge ACLK) begin
      if (ACLKEN) begin
        acc_data[i*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH] <= acc_reg_en[i] ? r0_data
          : acc_data[i*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH];
        acc_user[i*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH] <= acc_reg_en[i] ? r0_user
          : acc_user[i*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH];
        acc_strb[i*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= acc_reg_en[0] ? {P_S_AXIS_TSTRB_WIDTH{1'b0}} 
          : acc_reg_en[i] ? r0_strb : acc_strb[i*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
        acc_keep[i*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= acc_reg_en[0] ? {P_S_AXIS_TSTRB_WIDTH{1'b0}} 
          : acc_reg_en[i] ? r0_keep : acc_keep[i*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
      end
    end
  end
  always @(posedge ACLK) begin
    if (ACLKEN) begin
      acc_data[(C_RATIO-1)*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH] <= (state == SM_IDLE) | (state == SM_ACTIVE) 
        ? S_AXIS_TDATA : acc_data[(C_RATIO-1)*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH];
      acc_user[(C_RATIO-1)*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH] <= (state == SM_IDLE) | (state == SM_ACTIVE) 
        ? S_AXIS_TUSER : acc_user[(C_RATIO-1)*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH];
      acc_strb[(C_RATIO-1)*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= (acc_reg_en[0] && C_RATIO > 2) | (state == SM_ACTIVE & r0_last) | (id_dest_mismatch & (state == SM_ACTIVE | state == SM_IDLE))
        ? {P_S_AXIS_TSTRB_WIDTH{1'b0}} : (state == SM_IDLE) | (state == SM_ACTIVE) 
        ? S_AXIS_TSTRB : acc_strb[(C_RATIO-1)*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
      acc_keep[(C_RATIO-1)*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= (acc_reg_en[0] && C_RATIO > 2) | (state == SM_ACTIVE & r0_last) | (id_dest_mismatch & (state == SM_ACTIVE| state == SM_IDLE))
        ? {P_S_AXIS_TSTRB_WIDTH{1'b0}} : (state == SM_IDLE) | (state == SM_ACTIVE) 
        ? S_AXIS_TKEEP : acc_keep[(C_RATIO-1)*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
    end
  end

endgenerate

assign acc_reg_en = (state == SM_ACTIVE) ? r0_reg_sel : {C_RATIO{1'b0}};

// Accumulator selector (1 hot left barrel shifter)
always @(posedge ACLK) begin
  if (ARESET) begin
    r0_reg_sel[0] <= 1'b1;
    r0_reg_sel[1+:C_RATIO-1] <= {C_RATIO{1'b0}};
  end else if (ACLKEN) begin
    r0_reg_sel[0]            <= M_AXIS_TVALID & M_AXIS_TREADY ? 1'b1              
        : (state == SM_ACTIVE) ? 1'b0 : r0_reg_sel[0];
    r0_reg_sel[1+:C_RATIO-1] <= M_AXIS_TVALID & M_AXIS_TREADY ? {C_RATIO-1{1'b0}} 
        : (state == SM_ACTIVE) ? r0_reg_sel[0+:C_RATIO-1] : r0_reg_sel[1+:C_RATIO-1];
  end
end

assign next_xfer_is_end  = (r0_reg_sel[C_RATIO-2] && (state == SM_ACTIVE)) | r0_reg_sel[C_RATIO-1];

always @(posedge ACLK) begin 
  if (ACLKEN) begin
    r0_data <= S_AXIS_TREADY ? S_AXIS_TDATA : r0_data;
    r0_strb <= S_AXIS_TREADY ? S_AXIS_TSTRB : r0_strb;
    r0_keep <= S_AXIS_TREADY ? S_AXIS_TKEEP : r0_keep;
    r0_last <= (!P_LAST_EXIST) ? 1'b0 : S_AXIS_TREADY ? S_AXIS_TLAST : r0_last;
    r0_id   <= (S_AXIS_TREADY & S_AXIS_TVALID) ? S_AXIS_TID   : r0_id;
    r0_dest <= (S_AXIS_TREADY & S_AXIS_TVALID) ? S_AXIS_TDEST : r0_dest;
    r0_user <= S_AXIS_TREADY ? S_AXIS_TUSER : r0_user;
  end
end

assign M_AXIS_TLAST = acc_last;

always @(posedge ACLK) begin
  if (ACLKEN) begin
    acc_last <= (state == SM_END | state == SM_END_TO_ACTIVE) ? acc_last : 
                (state == SM_ACTIVE & r0_last ) ? 1'b1 :
                (id_dest_mismatch & (state == SM_IDLE)) ? 1'b0 : 
                (id_dest_mismatch & (state == SM_ACTIVE)) ? r0_last :
                 S_AXIS_TLAST;
  end
end

assign M_AXIS_TID   = acc_id;
assign M_AXIS_TDEST = acc_dest;

always @(posedge ACLK) begin
  if (ACLKEN) begin
    acc_id <= acc_reg_en[0] ? r0_id : acc_id;
    acc_dest <= acc_reg_en[0] ? r0_dest : acc_dest;
  end
end

assign id_match = P_ID_EXIST ? (S_AXIS_TID == r0_id) : 1'b1;
assign dest_match = P_DEST_EXIST ?  (S_AXIS_TDEST == r0_dest) : 1'b1;

assign id_dest_mismatch = (~id_match | ~dest_match) ? 1'b1 : 1'b0;

endmodule // axisc_upsizer

`default_nettype wire


//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axisc_downsizer
//   Convert from SI data width > MI datawidth.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_vdma_v6_3_6_axis_dwidth_converter_v1_0_axisc_downsizer #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY             = "virtex7",
   parameter integer C_S_AXIS_TDATA_WIDTH = 96,
   parameter integer C_M_AXIS_TDATA_WIDTH = 32,
   parameter integer C_AXIS_TID_WIDTH     = 1,
   parameter integer C_AXIS_TDEST_WIDTH   = 1,
   parameter integer C_S_AXIS_TUSER_WIDTH = 3,
   parameter integer C_M_AXIS_TUSER_WIDTH = 1,
   parameter [31:0]  C_AXIS_SIGNAL_SET    = 32'hFF ,
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter integer C_RATIO = 3   // Should always be C_RATIO:1 (downsizer)
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESET,
   input wire ACLKEN,

   // Slave side
   input  wire                              S_AXIS_TVALID,
   output wire                              S_AXIS_TREADY,
   input  wire [C_S_AXIS_TDATA_WIDTH-1:0]   S_AXIS_TDATA,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TSTRB,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TKEEP,
   input  wire                              S_AXIS_TLAST,
   input  wire [C_AXIS_TID_WIDTH-1:0]       S_AXIS_TID,
   input  wire [C_AXIS_TDEST_WIDTH-1:0]     S_AXIS_TDEST,
   input  wire [C_S_AXIS_TUSER_WIDTH-1:0]   S_AXIS_TUSER,

   // Master side
   output wire                              M_AXIS_TVALID,
   input  wire                              M_AXIS_TREADY,
   output wire [C_M_AXIS_TDATA_WIDTH-1:0]   M_AXIS_TDATA,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TSTRB,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TKEEP,
   output wire                              M_AXIS_TLAST,
   output wire [C_AXIS_TID_WIDTH-1:0]       M_AXIS_TID,
   output wire [C_AXIS_TDEST_WIDTH-1:0]     M_AXIS_TDEST,
   output wire [C_M_AXIS_TUSER_WIDTH-1:0]   M_AXIS_TUSER
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
//`include "axi_vdma_v6_3_6_axis_infrastructure_v1_0_axis_infrastructure.vh"
`include "axi_vdma_v6_3_6.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_S_AXIS_TSTRB_WIDTH = C_S_AXIS_TDATA_WIDTH/8;
localparam P_M_AXIS_TSTRB_WIDTH = C_M_AXIS_TDATA_WIDTH/8;
localparam P_RATIO_WIDTH = f_clogb2(C_RATIO);
// State Machine possible states.
localparam SM_RESET          = 3'b000;
localparam SM_IDLE           = 3'b001;
localparam SM_ACTIVE         = 3'b010;
localparam SM_END           = 3'b011;
localparam SM_END_TO_ACTIVE = 3'b110;

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg    [2:0]                    state;

wire [C_RATIO-1:0]              is_null;
wire [C_RATIO-1:0]              r0_is_end;

wire [C_M_AXIS_TDATA_WIDTH-1:0] data_out; 
wire [P_M_AXIS_TSTRB_WIDTH-1:0] strb_out;
wire [P_M_AXIS_TSTRB_WIDTH-1:0] keep_out;
wire                            last_out;
wire [C_AXIS_TID_WIDTH-1:0]     id_out;
wire [C_AXIS_TDEST_WIDTH-1:0]   dest_out;
wire [C_M_AXIS_TUSER_WIDTH-1:0] user_out;

reg  [C_S_AXIS_TDATA_WIDTH-1:0] r0_data;
reg  [P_S_AXIS_TSTRB_WIDTH-1:0] r0_strb;
reg  [P_S_AXIS_TSTRB_WIDTH-1:0] r0_keep;
reg                             r0_last;
reg  [C_AXIS_TID_WIDTH-1:0]     r0_id;
reg  [C_AXIS_TDEST_WIDTH-1:0]   r0_dest;
reg  [C_S_AXIS_TUSER_WIDTH-1:0] r0_user;
reg  [C_RATIO-1:0]              r0_is_null_r;

wire                            r0_load;

reg  [C_M_AXIS_TDATA_WIDTH-1:0] r1_data;
reg  [P_M_AXIS_TSTRB_WIDTH-1:0] r1_strb;
reg  [P_M_AXIS_TSTRB_WIDTH-1:0] r1_keep;
reg                             r1_last;
reg  [C_AXIS_TID_WIDTH-1:0]     r1_id;
reg  [C_AXIS_TDEST_WIDTH-1:0]   r1_dest;
reg  [C_M_AXIS_TUSER_WIDTH-1:0] r1_user;

wire                            r1_load;

reg  [P_RATIO_WIDTH-1:0]        r0_out_sel_r;
wire [P_RATIO_WIDTH-1:0]        r0_out_sel_ns;
wire                            sel_adv;
reg  [P_RATIO_WIDTH-1:0]        r0_out_sel_next_r;
wire [P_RATIO_WIDTH-1:0]        r0_out_sel_next_ns;
reg                             xfer_is_end;
reg                             next_xfer_is_end;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
// S Ready/M Valid outputs are encoded in the current state.
assign S_AXIS_TREADY = state[0];
assign M_AXIS_TVALID = state[1];

// State machine controls M_AXIS_TVALID and S_AXIS_TREADY, and loading
always @(posedge ACLK) begin
  if (ARESET) begin
    state <= SM_RESET;
  end else if (ACLKEN) begin
    case (state)
      SM_RESET: begin
        state <= SM_IDLE;
      end
      
      // No transactions
      SM_IDLE: begin
        if (S_AXIS_TVALID) begin
          state <= SM_ACTIVE;
        end
        else begin
          state <= SM_IDLE;
        end
      end

      // Active entry in holding register r0
      SM_ACTIVE: begin
        if (M_AXIS_TREADY & r0_is_end[0]) begin
          state <= SM_IDLE;
        end
        else if (M_AXIS_TREADY & next_xfer_is_end) begin
          state <= SM_END;
        end
        else begin
          state <= SM_ACTIVE;
        end
      end

      // Entry in last transfer register r1.
      SM_END: begin
        if (M_AXIS_TREADY & S_AXIS_TVALID) begin
          state <= SM_ACTIVE;
        end
        else if (M_AXIS_TREADY & ~S_AXIS_TVALID) begin
          state <= SM_IDLE;
        end
        else if (~M_AXIS_TREADY & S_AXIS_TVALID) begin
          state <= SM_END_TO_ACTIVE;
        end
        else begin
          state <= SM_END;
        end
      end
        
      SM_END_TO_ACTIVE: begin
        if (M_AXIS_TREADY) begin
          state <= SM_ACTIVE;
        end
        else begin
          state <= SM_END_TO_ACTIVE;
        end
      end

      default: begin
        state <= SM_IDLE;
      end

    endcase // case (state)
  end
end 

// Algorithm to figure out which beat is the last non-null transfer. Split into 2 steps.
// 1) Figuring out which output transfers are null before storing in r0.
//    (cycle steal to reduce critical path).
// 2) For transfer X, if transfer X+1 to transfer C_RATIO-1 is null, then transfer
//    X is the new END transfer for the split. Transfer C_RATIO-1 is always marked
//    as END.
genvar i; 
generate
  if (C_AXIS_SIGNAL_SET[G_INDX_SS_TKEEP]) begin : gen_tkeep_is_enabled
    for (i = 0; i < C_RATIO-1; i = i + 1) begin : gen_is_null 
      // 1)
      assign is_null[i] = ~(|S_AXIS_TKEEP[i*P_M_AXIS_TSTRB_WIDTH +: P_M_AXIS_TSTRB_WIDTH]);
      // 2)
      assign r0_is_end[i] =  (&r0_is_null_r[C_RATIO-1:i+1]);
    end
    assign is_null[C_RATIO-1] = ~(|S_AXIS_TKEEP[(C_RATIO-1)*P_M_AXIS_TSTRB_WIDTH +: P_M_AXIS_TSTRB_WIDTH]);
    assign r0_is_end[C_RATIO-1] = 1'b1;
  end
  else begin : gen_tkeep_is_disabled
    assign is_null = {C_RATIO{1'b0}};
    assign r0_is_end = {1'b1, {C_RATIO-1{1'b0}}};
  end
endgenerate

assign M_AXIS_TDATA = data_out[0+:C_M_AXIS_TDATA_WIDTH];
assign M_AXIS_TSTRB = strb_out[0+:P_M_AXIS_TSTRB_WIDTH];
assign M_AXIS_TKEEP = keep_out[0+:P_M_AXIS_TSTRB_WIDTH];
assign M_AXIS_TLAST = last_out;
assign M_AXIS_TID   = id_out[0+:C_AXIS_TID_WIDTH];
assign M_AXIS_TDEST = dest_out[0+:C_AXIS_TDEST_WIDTH];
assign M_AXIS_TUSER = user_out[0+:C_M_AXIS_TUSER_WIDTH];

// Select data output by shifting data right, upper most datum is always from r1
assign data_out = {r1_data, r0_data[0+:C_M_AXIS_TDATA_WIDTH*(C_RATIO-1)]} >> (C_M_AXIS_TDATA_WIDTH*r0_out_sel_r);
assign strb_out = {r1_strb, r0_strb[0+:P_M_AXIS_TSTRB_WIDTH*(C_RATIO-1)]} >> (P_M_AXIS_TSTRB_WIDTH*r0_out_sel_r);
assign keep_out = {r1_keep, r0_keep[0+:P_M_AXIS_TSTRB_WIDTH*(C_RATIO-1)]} >> (P_M_AXIS_TSTRB_WIDTH*r0_out_sel_r);
assign last_out = (state == SM_END || state == SM_END_TO_ACTIVE) ? r1_last : r0_last & r0_is_end[0];
assign id_out   = (state == SM_END || state == SM_END_TO_ACTIVE) ? r1_id : r0_id;
assign dest_out = (state == SM_END || state == SM_END_TO_ACTIVE) ? r1_dest : r0_dest;
assign user_out = {r1_user, r0_user[0+:C_M_AXIS_TUSER_WIDTH*(C_RATIO-1)]} >> (C_M_AXIS_TUSER_WIDTH*r0_out_sel_r);

// First register stores the incoming transfer.
always @(posedge ACLK) begin
  if (ACLKEN) begin
    r0_data    <= r0_load ? S_AXIS_TDATA : r0_data;
    r0_strb    <= r0_load ? S_AXIS_TSTRB : r0_strb;
    r0_keep    <= r0_load ? S_AXIS_TKEEP : r0_keep;
    r0_last    <= r0_load ? S_AXIS_TLAST : r0_last;
    r0_id      <= r0_load ? S_AXIS_TID   : r0_id  ;
    r0_dest    <= r0_load ? S_AXIS_TDEST : r0_dest;
    r0_user    <= r0_load ? S_AXIS_TUSER : r0_user;
  end
end

// r0_is_null_r must always be set to known values to avoid x propagations.
always @(posedge ACLK) begin
  if (ARESET) begin
    r0_is_null_r <= {C_RATIO{1'b0}};
  end
  else if (ACLKEN) begin
    r0_is_null_r <= r0_load & S_AXIS_TVALID ? is_null : r0_is_null_r;
  end
end

assign r0_load = (state == SM_IDLE) || (state == SM_END);
// Second register only stores a single slice of r0.
always @(posedge ACLK) begin
  if (ACLKEN) begin
    r1_data    <= r1_load ? r0_data >> (C_M_AXIS_TDATA_WIDTH*r0_out_sel_next_r) : r1_data;
    r1_strb    <= r1_load ? r0_strb >> (P_M_AXIS_TSTRB_WIDTH*r0_out_sel_next_r) : r1_strb;
    r1_keep    <= r1_load ? r0_keep >> (P_M_AXIS_TSTRB_WIDTH*r0_out_sel_next_r) : r1_keep;
    r1_last    <= r1_load ? r0_last : r1_last;
    r1_id      <= r1_load ? r0_id   : r1_id  ;
    r1_dest    <= r1_load ? r0_dest : r1_dest;
    r1_user    <= r1_load ? r0_user >> (C_M_AXIS_TUSER_WIDTH*r0_out_sel_next_r) : r1_user;
  end
end

assign r1_load = (state == SM_ACTIVE);

// Counter to select which datum to send.
always @(posedge ACLK) begin
  if (ARESET) begin
    r0_out_sel_r <= {P_RATIO_WIDTH{1'b0}};
  end else if (ACLKEN) begin
    r0_out_sel_r <= r0_out_sel_ns;
 end
end

assign r0_out_sel_ns = (xfer_is_end & sel_adv) || (state == SM_IDLE) ? {P_RATIO_WIDTH{1'b0}} 
                       : next_xfer_is_end & sel_adv ? C_RATIO[P_RATIO_WIDTH-1:0]-1'b1 
                       : sel_adv ? r0_out_sel_next_r : r0_out_sel_r; 

assign sel_adv = M_AXIS_TREADY;


// Count ahead to the next value
always @(posedge ACLK) begin
  if (ARESET) begin
    r0_out_sel_next_r <= {P_RATIO_WIDTH{1'b0}} + 1'b1;
  end else if (ACLKEN) begin
    r0_out_sel_next_r <= r0_out_sel_next_ns;
 end
end

assign r0_out_sel_next_ns = (xfer_is_end & sel_adv) || (state == SM_IDLE) ? {P_RATIO_WIDTH{1'b0}} + 1'b1
                            : ~next_xfer_is_end & sel_adv ? r0_out_sel_next_r + 1'b1
                            : r0_out_sel_next_r;

always @(*) begin
  xfer_is_end = r0_is_end[r0_out_sel_r];
end

always @(*) begin
  next_xfer_is_end = r0_is_end[r0_out_sel_next_r];
end

endmodule // axisc_downsizer

`default_nettype wire


//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axis_dwidth_converter
//   Converts data when C_S_AXIS_TDATA_WIDTH != C_M_AXIS_TDATA_WIDTH.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_dwidth_converter
//     register_slice (instantiated with upsizer)
//     axisc_upsizer
//     axisc_downsizer
//     register_slice (instantiated with downsizer)
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_vdma_v6_3_6_axis_dwidth_converter_v1_0_axis_dwidth_converter #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY           = "virtex7",
   parameter integer C_S_AXIS_TDATA_WIDTH = 32,
   parameter integer C_M_AXIS_TDATA_WIDTH = 32,
   parameter integer C_AXIS_TID_WIDTH   = 1,
   parameter integer C_AXIS_TDEST_WIDTH = 1,
//   parameter integer C_AXIS_TUSER_BITS_PER_BYTE = 1, // Must be > 0 for width converter
   parameter integer C_S_AXIS_TUSER_WIDTH = 1,
   parameter integer C_M_AXIS_TUSER_WIDTH = 1,
   parameter [31:0]  C_AXIS_SIGNAL_SET  = 32'hFF
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present (Required)
   //   [1] => TDATA present (Required, used to calculate ratios)
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present (Required if TLAST, TID,
   //   TDEST present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESETN,
   input wire ACLKEN,

   // Slave side
   input  wire                              S_AXIS_TVALID,
   output wire                              S_AXIS_TREADY,
   input  wire [C_S_AXIS_TDATA_WIDTH-1:0]   S_AXIS_TDATA,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TSTRB,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TKEEP,
   input  wire                              S_AXIS_TLAST,
   input  wire [C_AXIS_TID_WIDTH-1:0]       S_AXIS_TID,
   input  wire [C_AXIS_TDEST_WIDTH-1:0]     S_AXIS_TDEST,
   input  wire [C_S_AXIS_TUSER_WIDTH-1:0]   S_AXIS_TUSER,

   // Master side
   output wire                              M_AXIS_TVALID,
   input  wire                              M_AXIS_TREADY,
   output wire [C_M_AXIS_TDATA_WIDTH-1:0]   M_AXIS_TDATA,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TSTRB,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TKEEP,
   output wire                              M_AXIS_TLAST,
   output wire [C_AXIS_TID_WIDTH-1:0]       M_AXIS_TID,
   output wire [C_AXIS_TDEST_WIDTH-1:0]     M_AXIS_TDEST,
   output wire [C_M_AXIS_TUSER_WIDTH-1:0]   M_AXIS_TUSER
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
//`include "axi_vdma_v6_3_6_axis_infrastructure_v1_0_axis_infrastructure.vh"
`include "axi_vdma_v6_3_6.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
// TKEEP required if TID/TLAST/TDEST signals enabled
localparam [31:0]  P_SS_TKEEP_REQUIRED = (C_AXIS_SIGNAL_SET & (G_MASK_SS_TID | G_MASK_SS_TDEST | G_MASK_SS_TLAST)) 
                                          ? G_MASK_SS_TKEEP : 32'h0;
// TREADY/TDATA must always be present
localparam [31:0]  P_AXIS_SIGNAL_SET  = C_AXIS_SIGNAL_SET | G_MASK_SS_TREADY | G_MASK_SS_TDATA | P_SS_TKEEP_REQUIRED;
localparam P_S_RATIO = f_lcm(C_S_AXIS_TDATA_WIDTH, C_M_AXIS_TDATA_WIDTH) / C_S_AXIS_TDATA_WIDTH;
localparam P_M_RATIO = f_lcm(C_S_AXIS_TDATA_WIDTH, C_M_AXIS_TDATA_WIDTH) / C_M_AXIS_TDATA_WIDTH;
localparam P_D2_TDATA_WIDTH = C_S_AXIS_TDATA_WIDTH * P_S_RATIO;
// To protect against bad TUSER M/S ratios when not using TUSER, base all
// TUSER widths off of the calculated ratios and the slave tuser input width.
localparam P_D1_TUSER_WIDTH = C_AXIS_SIGNAL_SET[G_INDX_SS_TUSER] ? C_S_AXIS_TUSER_WIDTH : C_S_AXIS_TDATA_WIDTH/8;
localparam P_D2_TUSER_WIDTH = P_D1_TUSER_WIDTH * P_S_RATIO;
localparam P_D3_TUSER_WIDTH = P_D2_TUSER_WIDTH / P_M_RATIO;

localparam P_D1_REG_CONFIG = 0; // Disable
localparam P_D3_REG_CONFIG = 0; // Disable

////////////////////////////////////////////////////////////////////////////////
// DRCs
////////////////////////////////////////////////////////////////////////////////
// synthesis translate_off
integer retval;
integer retval_all;
initial
begin : DRC
  retval_all = 0;
  t_check_tdata_width(C_S_AXIS_TDATA_WIDTH, "C_S_AXIS_TDATA_WIDTH", "axis_dwidth_converter", G_TASK_SEVERITY_ERROR, retval);
  retval_all = retval_all | retval;

  t_check_tdata_width(C_M_AXIS_TDATA_WIDTH, "C_M_AXIS_TDATA_WIDTH", "axis_dwidth_converter", G_TASK_SEVERITY_ERROR, retval);
  retval_all = retval_all | retval;
  if (C_AXIS_SIGNAL_SET[G_INDX_SS_TUSER]) begin
    t_check_tuser_width(C_S_AXIS_TUSER_WIDTH, "C_S_AXIS_TUSER_WIDTH", C_S_AXIS_TDATA_WIDTH, "C_S_AXIS_TDATA_WIDTH", "axis_dwidth_converter", G_TASK_SEVERITY_ERROR, retval);
    retval_all = retval_all | retval;
    t_check_tuser_width(C_M_AXIS_TUSER_WIDTH, "C_M_AXIS_TUSER_WIDTH", C_M_AXIS_TDATA_WIDTH, "C_M_AXIS_TDATA_WIDTH", "axis_dwidth_converter", G_TASK_SEVERITY_ERROR, retval);
    retval_all = retval_all | retval;
  end
  if (retval_all > 0) begin
    $stop;
  end

end
// synthesis translate_on
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////

reg                               areset_r;

// Tie-offs for required signals if not present on inputs
wire                              tready_in;
wire [C_S_AXIS_TDATA_WIDTH-1:0]   tdata_in;
wire [C_S_AXIS_TDATA_WIDTH/8-1:0] tkeep_in;
wire [P_D1_TUSER_WIDTH-1:0]       tuser_in;

// Output of first register stage
wire                              d1_valid;
wire                              d1_ready;
wire [C_S_AXIS_TDATA_WIDTH-1:0]   d1_data;
wire [C_S_AXIS_TDATA_WIDTH/8-1:0] d1_strb;
wire [C_S_AXIS_TDATA_WIDTH/8-1:0] d1_keep;
wire                              d1_last;
wire [C_AXIS_TID_WIDTH-1:0]       d1_id;
wire [C_AXIS_TDEST_WIDTH-1:0]     d1_dest;
wire [P_D1_TUSER_WIDTH-1:0]       d1_user;

// Output of upsizer stage
wire                              d2_valid;
wire                              d2_ready;
wire [P_D2_TDATA_WIDTH-1:0]       d2_data;
wire [P_D2_TDATA_WIDTH/8-1:0]     d2_strb;
wire [P_D2_TDATA_WIDTH/8-1:0]     d2_keep;
wire                              d2_last;
wire [C_AXIS_TID_WIDTH-1:0]       d2_id;
wire [C_AXIS_TDEST_WIDTH-1:0]     d2_dest;
wire [P_D2_TUSER_WIDTH-1:0]       d2_user;

// Output of downsizer stage
wire                              d3_valid;
wire                              d3_ready;
wire [C_M_AXIS_TDATA_WIDTH-1:0]   d3_data;
wire [C_M_AXIS_TDATA_WIDTH/8-1:0] d3_strb;
wire [C_M_AXIS_TDATA_WIDTH/8-1:0] d3_keep;
wire                              d3_last;
wire [C_AXIS_TID_WIDTH-1:0]       d3_id;
wire [C_AXIS_TDEST_WIDTH-1:0]     d3_dest;
wire [P_D3_TUSER_WIDTH-1:0]       d3_user;
wire [P_D3_TUSER_WIDTH-1:0]       m_axis_tuser_out;



////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

always @(posedge ACLK) begin
  areset_r <= ~ARESETN;
end

// Tie-offs for required signals if not present on inputs
assign tready_in = C_AXIS_SIGNAL_SET[G_INDX_SS_TREADY] ? M_AXIS_TREADY : 1'b1;
assign tdata_in = C_AXIS_SIGNAL_SET[G_INDX_SS_TDATA] ? S_AXIS_TDATA : {C_S_AXIS_TDATA_WIDTH{1'b0}};
assign tkeep_in = C_AXIS_SIGNAL_SET[G_INDX_SS_TKEEP] ? S_AXIS_TKEEP : {(C_S_AXIS_TDATA_WIDTH/8){1'b1}};
assign tuser_in = C_AXIS_SIGNAL_SET[G_INDX_SS_TUSER] ? S_AXIS_TUSER : {P_D1_TUSER_WIDTH{1'b1}};

axi_vdma_v6_3_6_axis_register_slice_v1_0_axis_register_slice #(
  .C_FAMILY           ( C_FAMILY               ) ,
  .C_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH   ) ,
  .C_AXIS_TID_WIDTH   ( C_AXIS_TID_WIDTH       ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TDEST_WIDTH     ) ,
  .C_AXIS_TUSER_WIDTH ( P_D1_TUSER_WIDTH       ) ,
  .C_AXIS_SIGNAL_SET  ( P_AXIS_SIGNAL_SET      ) ,
  .C_REG_CONFIG       ( P_D1_REG_CONFIG        )
)
axis_register_slice_0
(
  .ACLK          ( ACLK          ) ,
  .ACLKEN        ( ACLKEN        ) ,
  .ARESETN       ( ARESETN       ) ,
  .S_AXIS_TVALID ( S_AXIS_TVALID ) ,
  .S_AXIS_TREADY ( S_AXIS_TREADY ) ,
  .S_AXIS_TDATA  ( tdata_in      ) ,
  .S_AXIS_TSTRB  ( S_AXIS_TSTRB  ) ,
  .S_AXIS_TKEEP  ( tkeep_in      ) ,
  .S_AXIS_TLAST  ( S_AXIS_TLAST  ) ,
  .S_AXIS_TID    ( S_AXIS_TID    ) ,
  .S_AXIS_TDEST  ( S_AXIS_TDEST  ) ,
  .S_AXIS_TUSER  ( tuser_in      ) ,
  .M_AXIS_TVALID ( d1_valid      ) ,
  .M_AXIS_TREADY ( d1_ready      ) ,
  .M_AXIS_TDATA  ( d1_data       ) ,
  .M_AXIS_TSTRB  ( d1_strb       ) ,
  .M_AXIS_TKEEP  ( d1_keep       ) ,
  .M_AXIS_TLAST  ( d1_last       ) ,
  .M_AXIS_TID    ( d1_id         ) ,
  .M_AXIS_TDEST  ( d1_dest       ) ,
  .M_AXIS_TUSER  ( d1_user       ) 
);


generate
  if (P_S_RATIO > 1) begin : gen_upsizer_conversion
    axi_vdma_v6_3_6_axis_dwidth_converter_v1_0_axisc_upsizer #(
      .C_FAMILY             ( C_FAMILY             ) ,
      .C_S_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH ) ,
      .C_M_AXIS_TDATA_WIDTH ( P_D2_TDATA_WIDTH     ) ,
      .C_AXIS_TID_WIDTH     ( C_AXIS_TID_WIDTH     ) ,
      .C_AXIS_TDEST_WIDTH   ( C_AXIS_TDEST_WIDTH   ) ,
      .C_S_AXIS_TUSER_WIDTH  ( P_D1_TUSER_WIDTH    ) ,
      .C_M_AXIS_TUSER_WIDTH  ( P_D2_TUSER_WIDTH    ) ,
      .C_AXIS_SIGNAL_SET    ( P_AXIS_SIGNAL_SET    ) ,
      .C_RATIO              ( P_S_RATIO            ) 
    )
    axisc_upsizer_0 (
      .ACLK          ( ACLK     ) ,
      .ARESET        ( areset_r ) ,
      .ACLKEN        ( ACLKEN   ) ,
      .S_AXIS_TVALID ( d1_valid ) ,
      .S_AXIS_TREADY ( d1_ready ) ,
      .S_AXIS_TDATA  ( d1_data  ) ,
      .S_AXIS_TSTRB  ( d1_strb  ) ,
      .S_AXIS_TKEEP  ( d1_keep  ) ,
      .S_AXIS_TLAST  ( d1_last  ) ,
      .S_AXIS_TID    ( d1_id    ) ,
      .S_AXIS_TDEST  ( d1_dest  ) ,
      .S_AXIS_TUSER  ( d1_user  ) ,
      .M_AXIS_TVALID ( d2_valid ) ,
      .M_AXIS_TREADY ( d2_ready ) ,
      .M_AXIS_TDATA  ( d2_data  ) ,
      .M_AXIS_TSTRB  ( d2_strb  ) ,
      .M_AXIS_TKEEP  ( d2_keep  ) ,
      .M_AXIS_TLAST  ( d2_last  ) ,
      .M_AXIS_TID    ( d2_id    ) ,
      .M_AXIS_TDEST  ( d2_dest  ) ,
      .M_AXIS_TUSER  ( d2_user  ) 
    );
  end
  else begin : gen_no_upsizer_passthru
    assign d2_valid = d1_valid;
    assign d1_ready = d2_ready;
    assign d2_data  = d1_data;
    assign d2_strb  = d1_strb;
    assign d2_keep  = d1_keep;
    assign d2_last  = d1_last;
    assign d2_id    = d1_id;
    assign d2_dest  = d1_dest;
    assign d2_user  = d1_user;
  end
  if (P_M_RATIO > 1) begin : gen_downsizer_conversion
    axi_vdma_v6_3_6_axis_dwidth_converter_v1_0_axisc_downsizer #(
      .C_FAMILY             ( C_FAMILY             ) ,
      .C_S_AXIS_TDATA_WIDTH ( P_D2_TDATA_WIDTH     ) ,
      .C_M_AXIS_TDATA_WIDTH ( C_M_AXIS_TDATA_WIDTH ) ,
      .C_AXIS_TID_WIDTH     ( C_AXIS_TID_WIDTH     ) ,
      .C_AXIS_TDEST_WIDTH   ( C_AXIS_TDEST_WIDTH   ) ,
      .C_S_AXIS_TUSER_WIDTH  ( P_D2_TUSER_WIDTH    ) ,
      .C_M_AXIS_TUSER_WIDTH  ( P_D3_TUSER_WIDTH    ) ,
      .C_AXIS_SIGNAL_SET    ( P_AXIS_SIGNAL_SET    ) ,
      .C_RATIO              ( P_M_RATIO            ) 
    )
    axisc_downsizer_0 (
      .ACLK          ( ACLK     ) ,
      .ARESET        ( areset_r ) ,
      .ACLKEN        ( ACLKEN   ) ,
      .S_AXIS_TVALID ( d2_valid ) ,
      .S_AXIS_TREADY ( d2_ready ) ,
      .S_AXIS_TDATA  ( d2_data  ) ,
      .S_AXIS_TSTRB  ( d2_strb  ) ,
      .S_AXIS_TKEEP  ( d2_keep  ) ,
      .S_AXIS_TLAST  ( d2_last  ) ,
      .S_AXIS_TID    ( d2_id    ) ,
      .S_AXIS_TDEST  ( d2_dest  ) ,
      .S_AXIS_TUSER  ( d2_user  ) ,
      .M_AXIS_TVALID ( d3_valid ) ,
      .M_AXIS_TREADY ( d3_ready ) ,
      .M_AXIS_TDATA  ( d3_data  ) ,
      .M_AXIS_TSTRB  ( d3_strb  ) ,
      .M_AXIS_TKEEP  ( d3_keep  ) ,
      .M_AXIS_TLAST  ( d3_last  ) ,
      .M_AXIS_TID    ( d3_id    ) ,
      .M_AXIS_TDEST  ( d3_dest  ) ,
      .M_AXIS_TUSER  ( d3_user  ) 
    );
  end
  else begin : gen_no_downsizer_passthru
    assign d3_valid = d2_valid;
    assign d2_ready = d3_ready;
    assign d3_data  = d2_data;
    assign d3_strb  = d2_strb;
    assign d3_keep  = d2_keep;
    assign d3_last  = d2_last;
    assign d3_id    = d2_id;
    assign d3_dest  = d2_dest;
    assign d3_user  = d2_user;
  end
endgenerate

axi_vdma_v6_3_6_axis_register_slice_v1_0_axis_register_slice #(
  .C_FAMILY           ( C_FAMILY             ) ,
  .C_AXIS_TDATA_WIDTH ( C_M_AXIS_TDATA_WIDTH ) ,
  .C_AXIS_TID_WIDTH   ( C_AXIS_TID_WIDTH     ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TDEST_WIDTH   ) ,
  .C_AXIS_TUSER_WIDTH ( P_D3_TUSER_WIDTH     ) ,
  .C_AXIS_SIGNAL_SET  ( P_AXIS_SIGNAL_SET    ) ,
  .C_REG_CONFIG       ( P_D3_REG_CONFIG      )
)
axis_register_slice_1
(
  .ACLK          ( ACLK          ) ,
  .ACLKEN        ( ACLKEN        ) ,
  .ARESETN       ( ARESETN       ) ,
  .S_AXIS_TVALID ( d3_valid      ) ,
  .S_AXIS_TREADY ( d3_ready      ) ,
  .S_AXIS_TDATA  ( d3_data       ) ,
  .S_AXIS_TSTRB  ( d3_strb       ) ,
  .S_AXIS_TKEEP  ( d3_keep       ) ,
  .S_AXIS_TLAST  ( d3_last       ) ,
  .S_AXIS_TID    ( d3_id         ) ,
  .S_AXIS_TDEST  ( d3_dest       ) ,
  .S_AXIS_TUSER  ( d3_user       ) ,
  .M_AXIS_TVALID ( M_AXIS_TVALID ) ,
  .M_AXIS_TREADY ( tready_in     ) ,
  .M_AXIS_TDATA  ( M_AXIS_TDATA  ) ,
  .M_AXIS_TSTRB  ( M_AXIS_TSTRB  ) ,
  .M_AXIS_TKEEP  ( M_AXIS_TKEEP  ) ,
  .M_AXIS_TLAST  ( M_AXIS_TLAST  ) ,
  .M_AXIS_TID    ( M_AXIS_TID    ) ,
  .M_AXIS_TDEST  ( M_AXIS_TDEST  ) ,
  .M_AXIS_TUSER  ( m_axis_tuser_out )
);

assign M_AXIS_TUSER = C_AXIS_SIGNAL_SET[G_INDX_SS_TUSER] ? m_axis_tuser_out[P_D3_TUSER_WIDTH-1:0] 
                                                    : {C_M_AXIS_TUSER_WIDTH{1'bx}};

endmodule // axis_dwidth_converter

`default_nettype wire


