//-----------------------------------------------------------------------------
//  (c) Copyright 2015 Xilinx, Inc. All rights reserved.
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
//
//--------------------------------------------------------------------------
//  Module Description:
//  This file contains various utility modules used within the bridge.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_10_fifo_async #(
  parameter C_ADDR_WIDTH = 10,
  parameter C_DATA_WIDTH = 8
) (
  // System Signals
  input  wire WR_CLK,               // Write clock            
  input  wire RD_CLK,               // Read clock             
  input  wire RESET,                // Reset synchronous to WR_CLK

  // FIFO write signals
  input  wire [C_DATA_WIDTH-1:0]
              WR_DATA,              // Write data
  input  wire WR_EN,                // Write enable                
  output wire [C_ADDR_WIDTH:0]
              WR_DATA_COUNT,        // Write count
  output wire WR_BUSY,              // Write reset busy
  output wire WR_FULL,              // Full      
  output wire WR_OVERFLOW,          // Overflow

  // FIFO read signals
  output wire [C_DATA_WIDTH-1:0]
              RD_DATA,              // Read data
  input  wire RD_EN,                // Read enable              
  output wire [C_ADDR_WIDTH:0] 
              RD_DATA_COUNT,        // Read count
  output wire RD_BUSY,              // Read reset busy
  output wire RD_EMPTY,             // Empty                   
  output wire RD_UNDERFLOW          // Underflow
);

// xpm_fifo_async: Asynchronous FIFO
// Xilinx Parameterized Macro, Version 2017.3
xpm_fifo_async # (
  .FIFO_MEMORY_TYPE          ("auto"),           //string; "auto", "block", or "distributed";
  .ECC_MODE                  ("no_ecc"),         //string; "no_ecc" or "en_ecc";
  .RELATED_CLOCKS            (0),                //positive integer; 0 or 1
  .FIFO_WRITE_DEPTH          (2**C_ADDR_WIDTH),  //positive integer
  .WRITE_DATA_WIDTH          (C_DATA_WIDTH),     //positive integer
  .WR_DATA_COUNT_WIDTH       (C_ADDR_WIDTH+1),   //positive integer
  .PROG_FULL_THRESH          (),                 //positive integer
  .FULL_RESET_VALUE          (1),                //positive integer; 0 or 1
  .READ_MODE                 ("fwft"),           //string; "std" or "fwft";
  .FIFO_READ_LATENCY         (0),                //positive integer;
  .READ_DATA_WIDTH           (C_DATA_WIDTH),     //positive integer
  .RD_DATA_COUNT_WIDTH       (C_ADDR_WIDTH+1),   //positive integer
  .PROG_EMPTY_THRESH         (),                 //positive integer
  .DOUT_RESET_VALUE          ("0"),              //string
  .CDC_SYNC_STAGES           (4),                //positive integer
  .WAKEUP_TIME               (0)                 //positive integer; 0 or 2;
) XPM_FIFO_ASYNC_INST (
  .rst              (RESET),
  .wr_clk           (WR_CLK),
  .wr_en            (WR_EN),
  .din              (WR_DATA),
  .full             (WR_FULL),
  .overflow         (WR_OVERFLOW),
  .wr_rst_busy      (WR_BUSY),
  .rd_clk           (RD_CLK),
  .rd_en            (RD_EN),
  .dout             (RD_DATA),
  .empty            (RD_EMPTY),
  .underflow        (RD_UNDERFLOW),
  .rd_rst_busy      (RD_BUSY),
  .prog_full        (),
  .wr_data_count    (WR_DATA_COUNT),
  .prog_empty       (),
  .rd_data_count    (RD_DATA_COUNT),
  .sleep            (1'b0),
  .injectsbiterr    (1'b0),
  .injectdbiterr    (1'b0),
  .sbiterr          (),
  .dbiterr          ()
);

endmodule

module v_axi4s_vid_out_v4_0_10_fifo_sync #(
  parameter C_ADDR_WIDTH = 10,
  parameter C_DATA_WIDTH = 8
) (
  // System Signals
  input  wire CLK,                  // Clock            
  input  wire RESET,                // Reset synchronous to CLK

  // FIFO write signals
  input  wire [C_DATA_WIDTH-1:0]
              WR_DATA,              // Write data
  input  wire WR_EN,                // Write enable                
  output wire [C_ADDR_WIDTH:0]
              WR_DATA_COUNT,        // Write count
  output wire WR_BUSY,              // Write reset busy
  output wire WR_FULL,              // Full      
  output wire WR_OVERFLOW,          // Overflow

  // FIFO read signals
  output wire [C_DATA_WIDTH-1:0]
              RD_DATA,              // Read data
  input  wire RD_EN,                // Read enable              
  output wire [C_ADDR_WIDTH:0] 
              RD_DATA_COUNT,        // Read count
  output wire RD_BUSY,              // Read reset busy
  output wire RD_EMPTY,             // Empty                   
  output wire RD_UNDERFLOW          // Underflow
);

// xpm_fifo_sync: Synchronous FIFO
// Xilinx Parameterized Macro, Version 2017.3
xpm_fifo_sync # (
  .FIFO_MEMORY_TYPE          ("auto"),           //string; "auto", "block", or "distributed";
  .ECC_MODE                  ("no_ecc"),         //string; "no_ecc" or "en_ecc";
  .FIFO_WRITE_DEPTH          (2**C_ADDR_WIDTH),  //positive integer
  .WRITE_DATA_WIDTH          (C_DATA_WIDTH),     //positive integer
  .WR_DATA_COUNT_WIDTH       (C_ADDR_WIDTH+1),   //positive integer
  .PROG_FULL_THRESH          (),                 //positive integer
  .FULL_RESET_VALUE          (1),                //positive integer; 0 or 1
  .READ_MODE                 ("fwft"),           //string; "std" or "fwft";
  .FIFO_READ_LATENCY         (0),                //positive integer;
  .READ_DATA_WIDTH           (C_DATA_WIDTH),     //positive integer
  .RD_DATA_COUNT_WIDTH       (C_ADDR_WIDTH+1),   //positive integer
  .PROG_EMPTY_THRESH         (),                 //positive integer
  .DOUT_RESET_VALUE          ("0"),              //string
  .WAKEUP_TIME               (0)                 //positive integer; 0 or 2;
) XPM_FIFO_SYNC_INST (
  .rst              (RESET),
  .wr_clk           (CLK),
  .wr_en            (WR_EN),
  .din              (WR_DATA),
  .full             (WR_FULL),
  .overflow         (WR_OVERFLOW),
  .wr_rst_busy      (WR_BUSY),
  .rd_en            (RD_EN),
  .dout             (RD_DATA),
  .empty            (RD_EMPTY),
  .underflow        (RD_UNDERFLOW),
  .rd_rst_busy      (RD_BUSY),
  .prog_full        (),
  .wr_data_count    (WR_DATA_COUNT),
  .prog_empty       (),
  .rd_data_count    (RD_DATA_COUNT),
  .sleep            (1'b0),
  .injectsbiterr    (1'b0),
  .injectdbiterr    (1'b0),
  .sbiterr          (),
  .dbiterr          ()
);

endmodule

module v_axi4s_vid_out_v4_0_10_cdc_single #(
  parameter C_SYNC_FF = 4
) (
  input  wire CLK_IN,
  input  wire DAT_IN,
  output wire DAT_OUT
);

xpm_cdc_single #(
  .DEST_SYNC_FF   (C_SYNC_FF),
  .SIM_ASSERT_CHK (0), 
  .SRC_INPUT_REG  (0) 
) xpm_cdc_single_inst (
  .src_clk  (1'b0),  
  .src_in   (DAT_IN),
  .dest_clk (CLK_IN),
  .dest_out (DAT_OUT)
);

endmodule

`default_nettype wire


//-----------------------------------------------------------------------------
//  (c) Copyright 2015 Xilinx, Inc. All rights reserved.
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
//
//--------------------------------------------------------------------------
//  Module Description:
//  This module is the stream coupler for the AXI4-Stream to video-out bridge.
//  It instantiates a fifo used to absorb stalls in the AXI4-Stream input
//  and provides synchronous or asynchronous clock domains. Component width
//  conversion is provided by either trimming or padding the input. The 
//  AXI4-Stream input signals are used to control the fifo write enable. 
//  The synchronizer module is used to control the fifo read enable.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_10_coupler #(
  parameter C_FAMILY = "virtex6",
  parameter C_HAS_ASYNC_CLK = 0,                         // Enable asyncronous clock domains
  parameter C_ADDR_WIDTH = 10,                           // FIFO address width [5,10,11,12,13]
  parameter C_PIXELS_PER_CLOCK = 1,                      // Pixels per clock [1,2,4]
  parameter C_COMPONENTS_PER_PIXEL = 3,                  // Components per pixel [1,2,3,4]
  parameter C_S_AXIS_COMPONENT_WIDTH = 8,                // AXIS video component width [8,10,12,16]
  parameter C_NATIVE_COMPONENT_WIDTH = 8,                // Native video component width [8,10,12,16]
  parameter C_S_AXIS_TDATA_WIDTH = 24,                   // AXIS video tdata width
  parameter C_NATIVE_DATA_WIDTH = 24                     // Native video data width
) (
  // System Signals
  input  wire VIDEO_OUT_CLK,                             // Native video clock
  input  wire VID_CE,                                    // Native video clock enable
  input  wire VID_RESET,                                 // Native video reset

  input  wire ACLK,                                      // AXI4-Stream clock
  input  wire ACLKEN,                                    // AXI4-Stream clock enable
  input  wire ARESETN,                                   // AXI4-Stream resetn, active low

  // FIFO write signals
  input  wire [C_S_AXIS_TDATA_WIDTH+3-1:0] FIFO_WR_DATA, // FIFO write data
  input  wire FIFO_VALID,                                // FIFO valid
  output wire FIFO_READY,                                // FIFO ready

  // FIFO read signals
  output wire [C_NATIVE_DATA_WIDTH-1:0] FIFO_RD_DATA,    // FIFO read data
  output wire FIFO_EOL,                                  // FIFO end of line
  output wire FIFO_SOF,                                  // FIFO start of frame
  output wire FIFO_FIELD_ID,                             // FIFO field-id
  input  wire FIFO_RD_EN,                                // FIFO read enable
  output wire [C_ADDR_WIDTH:0] FIFO_LEVEL_WR,            // FIFO fill level write domain
  output wire [C_ADDR_WIDTH:0] FIFO_LEVEL_RD,            // FIFO fill level read domain

  // FIFO status signals
  output wire FIFO_EMPTY,                                // FIFO empty
  output wire FIFO_OVERFLOW,                             // FIFO overflow
  output wire FIFO_UNDERFLOW                             // FIFO underflow
);

  // Parameters
  localparam C_NUM_COMPONENTS       = C_PIXELS_PER_CLOCK * C_COMPONENTS_PER_PIXEL;
  localparam C_DO_TRIM              = C_S_AXIS_COMPONENT_WIDTH > C_NATIVE_COMPONENT_WIDTH;
  localparam C_DO_PAD               = C_S_AXIS_COMPONENT_WIDTH < C_NATIVE_COMPONENT_WIDTH;
  localparam C_DATA_WIDTH           = C_DO_TRIM ? ((C_NUM_COMPONENTS * C_NATIVE_COMPONENT_WIDTH) + 3) : ((C_NUM_COMPONENTS * C_S_AXIS_COMPONENT_WIDTH) + 3);
  localparam C_DIFF_COMPONENT_WIDTH = C_DO_TRIM ? C_S_AXIS_COMPONENT_WIDTH-C_NATIVE_COMPONENT_WIDTH : C_NATIVE_COMPONENT_WIDTH-C_S_AXIS_COMPONENT_WIDTH;

  // Wire and register declarations
  genvar                   i;
  wire [C_DATA_WIDTH-1:0]  din_i;      
  wire [C_DATA_WIDTH-1:0]  dout_i;      
  wire [C_NATIVE_DATA_WIDTH-1:0] dout_from_pad;      
  wire                     full_i;     
  wire                     wr_en_i;   
  wire                     rd_en_i;   
  wire                     wr_rst_busy_i;
  wire                     rd_rst_busy_i;
 
  // Assignments
  assign FIFO_RD_DATA   = dout_from_pad;
  assign FIFO_EOL       = dout_i[C_DATA_WIDTH-3];
  assign FIFO_SOF       = dout_i[C_DATA_WIDTH-2];
  assign FIFO_FIELD_ID  = dout_i[C_DATA_WIDTH-1];
  assign FIFO_READY     = ~full_i & ARESETN & ~wr_rst_busy_i;
  assign wr_en_i        = FIFO_VALID & FIFO_READY & ACLKEN & ARESETN; 
  assign rd_en_i        = FIFO_RD_EN & VID_CE;

  // Trim data input to FIFO
  generate
    if(C_DO_TRIM) begin : gen_trim_to_fifo
      for(i=0; i<C_NUM_COMPONENTS; i=i+1) begin : gen_trim_to_fifo_loop
        assign din_i[i*C_NATIVE_COMPONENT_WIDTH +: C_NATIVE_COMPONENT_WIDTH] = FIFO_WR_DATA[(i*C_S_AXIS_COMPONENT_WIDTH+C_DIFF_COMPONENT_WIDTH) +: C_NATIVE_COMPONENT_WIDTH];
      end
      assign din_i[C_DATA_WIDTH-1:C_DATA_WIDTH-3] = FIFO_WR_DATA[C_S_AXIS_TDATA_WIDTH+3-1:C_S_AXIS_TDATA_WIDTH+3-3];
    end else begin : gen_no_trim_to_fifo
      assign din_i = {FIFO_WR_DATA[C_S_AXIS_TDATA_WIDTH+3-1:C_S_AXIS_TDATA_WIDTH+3-3], FIFO_WR_DATA[C_DATA_WIDTH-4:0]};
    end
  endgenerate

  // Pad data output from FIFO
  generate
    if(C_DO_PAD) begin : gen_pad_from_fifo
      for(i=0; i<C_NUM_COMPONENTS; i=i+1) begin : gen_pad_from_fifo_loop
        assign dout_from_pad[i*C_NATIVE_COMPONENT_WIDTH +: C_NATIVE_COMPONENT_WIDTH] = {dout_i[i*C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],{C_DIFF_COMPONENT_WIDTH{1'b0}}};
      end
    end else begin : gen_no_pad_from_fifo
        assign dout_from_pad = dout_i;
    end
  endgenerate

  generate 
  if (C_HAS_ASYNC_CLK) begin : generate_async_fifo
    // Instantiate Asynchronous FIFO
    v_axi4s_vid_out_v4_0_10_fifo_async #(
      .C_ADDR_WIDTH(C_ADDR_WIDTH),
      .C_DATA_WIDTH(C_DATA_WIDTH)
    ) FIFO_INST (
      // System Signals
      .WR_CLK(ACLK),               
      .RD_CLK(VIDEO_OUT_CLK),     
      .RESET(~ARESETN),
    
      // FIFO write signals
      .WR_DATA        (din_i),
      .WR_EN          (wr_en_i), 
      .WR_DATA_COUNT  (FIFO_LEVEL_WR),         
      .WR_BUSY        (wr_rst_busy_i),
      .WR_FULL        (full_i),                                 
      .WR_OVERFLOW    (FIFO_OVERFLOW),
    
      // FIFO read signals
      .RD_DATA        (dout_i),  
      .RD_EN          (rd_en_i),                              
      .RD_DATA_COUNT  (FIFO_LEVEL_RD),
      .RD_BUSY        (rd_rst_busy_i),
      .RD_EMPTY       (FIFO_EMPTY),                                
      .RD_UNDERFLOW   (FIFO_UNDERFLOW)
    );
  end
  else begin : generate_sync_fifo
    // Instantiate Synchronous FIFO
    v_axi4s_vid_out_v4_0_10_fifo_sync #(
      .C_ADDR_WIDTH(C_ADDR_WIDTH),
      .C_DATA_WIDTH(C_DATA_WIDTH)
    ) FIFO_INST (
      // System Signals
      .CLK(ACLK),               
      .RESET(~ARESETN),
    
      // FIFO write signals
      .WR_DATA        (din_i),
      .WR_EN          (wr_en_i), 
      .WR_DATA_COUNT  (FIFO_LEVEL_WR),         
      .WR_BUSY        (wr_rst_busy_i),
      .WR_FULL        (full_i),                                 
      .WR_OVERFLOW    (FIFO_OVERFLOW),
    
      // FIFO read signals
      .RD_DATA        (dout_i),  
      .RD_EN          (rd_en_i),                              
      .RD_DATA_COUNT  (FIFO_LEVEL_RD),
      .RD_BUSY        (rd_rst_busy_i),
      .RD_EMPTY       (FIFO_EMPTY),                                
      .RD_UNDERFLOW   (FIFO_UNDERFLOW)
    );
  end
  endgenerate

endmodule

`default_nettype wire


//-----------------------------------------------------------------------------
//  (c) Copyright 2015 Xilinx, Inc. All rights reserved.
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
//
//----------------------------------------------------------
//--------------------------------------------------------------------------
//  Module Description:
//  This module is the synchronizer for the AXI4-Stream to video-out bridge.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype wire
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_10_sync #( 
  parameter C_ADDR_WIDTH = 10,                       // FIFO address width [5,10,11,12,13]
  parameter C_VTG_MASTER_SLAVE = 0,                  // VTC timing mode, 1:Master Mode, 0:Slave Mode
  parameter C_HYSTERESIS_LEVEL = 12,                 // Hysteresis level or intial fill level
  parameter C_SYNC_LOCK_THRESHOLD = 4                // Minimum of one frame required to acheive lock
) (
  input  wire                      VID_OUT_CLK,      // Native video clock
  input  wire                      VID_CE,           // Native video clock enable
  input  wire                      VID_RESET,        // Native video resetn

  // FIFO signals
  input  wire                      FIFO_SOF,         // FIFO start of frame
  input  wire                      FIFO_EOL,         // FIFO end of line
  input  wire                      FIFO_FIELD_ID,    // FIFO field-id
  input  wire [C_ADDR_WIDTH:0]     FIFO_RD_LEVEL,    // FIFO read Level
  input  wire                      FIFO_EMPTY,       // FIFO emtpy
  output wire                      FIFO_RD_EN,       // FIFO read enable 
  
  // VTG signals
  input  wire                      VTG_VSYNC,        // VTG vertical sync
  input  wire                      VTG_HSYNC,        // VTG horizontal sync
  input  wire                      VTG_FIELD_ID,     // VTG field-id
  input  wire                      VTG_ACTIVE_VIDEO, // VTG data enable
  output wire                      VTG_EN,           // VTG enable
 
  // Status signals
  output wire                      LOCKED,
  output wire [32-1:0]             STATUS
);

  // Local Parameters
  localparam [32-1:0] C_SYNC_VTG_LAG_MAX       = 2**C_ADDR_WIDTH;

  localparam [4-1:0]  C_SYNC_IDLE              = 0,  // Idle State

                      C_SYNC_CALN_SOF_VTG      = 1,  // Coarse Align, VTG SOF
                      C_SYNC_CALN_SOF_FIFO     = 2,  // Coarse Align, FIFO SOF

                      C_SYNC_FALN_EOL_LEADING  = 3,  // Fine Align, VTG Leading FIFO EOL
                      C_SYNC_FALN_EOL_LAGGING  = 4,  // Fine Align, VTG Lagging FIFO EOL
                      C_SYNC_FALN_SOF_LEADING  = 5,  // Fine Align, VTG Leading FIFO SOF
                      C_SYNC_FALN_SOF_LAGGING  = 6,  // Fine Align, VTG Lagging FIFO SOF
                      C_SYNC_FALN_ACTIVE       = 7,  // Fine Align, Running
                      C_SYNC_FALN_LOCK         = 8,  // Fine Align, Locked

                      C_SYNC_LALN_EOL_LEADING  = 9,  // Lost Align, VTG Leading FIFO EOL 
                      C_SYNC_LALN_EOL_LAGGING  = 10, // Lost Align, VTG Lagging FIFO EOL 
                      C_SYNC_LALN_SOF_LEADING  = 11, // Lost Align, VTG Leading FIFO SOF
                      C_SYNC_LALN_SOF_LAGGING  = 12; // Lost Align, VTG Lagging FIFO SOF
             
  // State Signals
  reg  [4-1:0]   state = C_SYNC_IDLE;
  reg  [4-1:0]   state_dly = C_SYNC_IDLE;
  reg  [4-1:0]   next_state;

  // Status Signals
  reg  [32-1:0]  status_reg = 32'h00000000;
  reg            locked;

  // FIFO SOF/EOL Signals
  reg  sof_ignore = 1'b1;
  reg  fifo_sof_dly = 1'b0; 
  reg  fifo_eol_dly = 1'b0;
  reg  fifo_fid_dly = 1'b0;
  reg  fifo_eol_re_dly = 1'b0;
  wire fifo_eol_fe = fifo_eol_dly & ~FIFO_EOL;
  wire fifo_eol_re = ~fifo_eol_dly & FIFO_EOL;
  wire fifo_sof_fe = fifo_sof_dly & ~FIFO_SOF;
  wire fifo_sof_re = ~fifo_sof_dly & FIFO_SOF;

  // FIFO Flush Signals
  wire fifo_flush_eol;
  wire fifo_force_rd = fifo_flush_eol;

  // VTG SOF/EOL Signals
  reg  vtg_de_dly = 1'b0;          
  reg  vtg_vsync_dly = 1'b0;          
  reg  vtg_vsync_bp = 1'b0;

  wire vtg_vsync_re = ~vtg_vsync_dly & VTG_VSYNC;
  wire vtg_vsync_fe = vtg_vsync_dly & ~VTG_VSYNC;
  wire vtg_de_re = ~vtg_de_dly & VTG_ACTIVE_VIDEO;
  wire vtg_de_fe = vtg_de_dly & ~VTG_ACTIVE_VIDEO;
  
  wire vtg_sof = vtg_de_re & vtg_vsync_bp;
  wire vtg_eol_dly = vtg_de_fe;
  reg  vtg_sof_dly = 1'b0;
  reg  vtg_fid_dly = 1'b0;

  // VTG Lag Signals
  reg  [32-1:0]  vtg_lag_threshold = C_HYSTERESIS_LEVEL; 
  reg  [32-1:0]  vtg_lag = 0; 

  // SOF Count Signals
  reg [8-1:0] vtg_sof_cnt = 8'h00;
  reg [8-1:0] fifo_sof_cnt = 8'h00;

  // EOL Count Signals
  reg [13-1:0] fifo_eol_cnt = 13'h0000;
  reg [13-1:0] fifo_eol_cnt_dly = 13'h0000;
  reg fifo_eol_error = 1'b0;
  
  // Pix Count Signals
  reg [13-1:0] fifo_pix_cnt = 13'h0000;
  reg [13-1:0] fifo_pix_cnt_dly = 13'h0000;
  reg fifo_pix_error = 1'b0;

  // Assignments
  assign fifo_flush_eol = (state == C_SYNC_FALN_EOL_LEADING); 
  assign LOCKED = locked;
  assign STATUS = status_reg;

  generate if(C_VTG_MASTER_SLAVE == 0) begin : gen_fifo_vtg_en_slave_mode
    assign VTG_EN = VID_CE &  
                    ((state == C_SYNC_IDLE) ||
                    (state == C_SYNC_FALN_ACTIVE) ||
                    (state == C_SYNC_FALN_EOL_LAGGING) ||
                    (state == C_SYNC_FALN_SOF_LAGGING) ||
                    (state == C_SYNC_FALN_LOCK));
  end else if(C_VTG_MASTER_SLAVE == 1) begin : gen_fifo_vtg_en_master_mode
    assign VTG_EN = VID_CE;
  end endgenerate

  generate if(C_VTG_MASTER_SLAVE == 0) begin : gen_fifo_rd_en_slave_mode
    assign FIFO_RD_EN = VID_CE & 
                        ((fifo_force_rd) ||
                        (state == C_SYNC_IDLE) ||
                        (state == C_SYNC_CALN_SOF_VTG) ||
                        ((state > C_SYNC_CALN_SOF_FIFO) & VTG_ACTIVE_VIDEO));
  end else if(C_VTG_MASTER_SLAVE == 1) begin : gen_fifo_rd_en_master_mode
    assign FIFO_RD_EN = VID_CE &
                        ((state == C_SYNC_IDLE) ||
                        ((state >= C_SYNC_FALN_EOL_LEADING) & VTG_ACTIVE_VIDEO));
  end endgenerate

  // Status Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET) begin
      status_reg <= 32'h00000000;
    end else if(VID_CE) begin
      state_dly <= state;
      if(state_dly != state) begin
        case(state)
        C_SYNC_IDLE:             status_reg[0]  <= 1'b1;
        C_SYNC_CALN_SOF_VTG:     status_reg[1]  <= 1'b1;
        C_SYNC_CALN_SOF_FIFO:    status_reg[2]  <= 1'b1;
        C_SYNC_FALN_EOL_LEADING: status_reg[3]  <= 1'b1;
        C_SYNC_FALN_EOL_LAGGING: status_reg[4]  <= 1'b1;
        C_SYNC_FALN_SOF_LEADING: status_reg[5]  <= 1'b1;
        C_SYNC_FALN_SOF_LAGGING: status_reg[6]  <= 1'b1;
        C_SYNC_FALN_ACTIVE:      status_reg[7]  <= 1'b1;
        C_SYNC_FALN_LOCK:        status_reg[8]  <= 1'b1;
        C_SYNC_LALN_EOL_LEADING: status_reg[9]  <= 1'b1;
        C_SYNC_LALN_EOL_LAGGING: status_reg[10] <= 1'b1;
        C_SYNC_LALN_SOF_LEADING: status_reg[11] <= 1'b1;
        C_SYNC_LALN_SOF_LAGGING: status_reg[12] <= 1'b1;
        endcase
      end
      status_reg[13] <= fifo_pix_error;
      status_reg[14] <= fifo_eol_error;
      status_reg[C_ADDR_WIDTH+16-1:16] <= vtg_lag;
    end
  end

  // FIFO Signal Delay Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET) begin
      fifo_sof_dly <= 1'b0; 
      fifo_eol_dly <= 1'b0;
      fifo_fid_dly <= 1'b0;
      fifo_eol_re_dly <= 1'b0;
    end else if(VID_CE) begin
      fifo_sof_dly <= FIFO_SOF; 
      fifo_eol_dly <= FIFO_EOL;
      fifo_fid_dly <= FIFO_FIELD_ID;
      fifo_eol_re_dly <= fifo_eol_re;
    end
  end

  // SOF Ignore
  // - Ignore the first SOF
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || state==C_SYNC_IDLE) begin
      sof_ignore <= 1'b1;
    end else if(VID_CE) begin
      if(fifo_eol_cnt > 13'h0000 && ~FIFO_FIELD_ID)
        sof_ignore <= 1'b0;
    end
  end
  
  // VTG Signal Delay Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET) begin
      vtg_de_dly <= 1'b0;
      vtg_vsync_dly <= 1'b0;
      vtg_sof_dly <= 1'b0;
      vtg_fid_dly <= 1'b0;
    end else if(VID_CE) begin
      vtg_de_dly <= VTG_ACTIVE_VIDEO;
      vtg_vsync_dly <= VTG_VSYNC;
      vtg_sof_dly <= vtg_sof;
      vtg_fid_dly <= VTG_FIELD_ID;
    end
  end

  // VTG Backporch Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || vtg_de_dly) begin
      vtg_vsync_bp <= 1'b0;
    end else if(VID_CE) begin
      if(vtg_vsync_fe)
        vtg_vsync_bp <= 1'b1;
    end
  end

  // VTG Lag Process
  // - During fine alignment track the VTG lag
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || state == C_SYNC_IDLE) begin
      vtg_lag <= vtg_lag_threshold;
    end else if(VID_CE) begin
      if((state == C_SYNC_FALN_EOL_LEADING) || (state == C_SYNC_FALN_SOF_LEADING)) begin
        vtg_lag <= vtg_lag + 1'b1;
      end
    end
  end

  // SOF Count Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || state < C_SYNC_FALN_ACTIVE) begin
      vtg_sof_cnt <= 8'h0;
      fifo_sof_cnt <= 8'h0;
    end else if(VID_CE) begin
      if(vtg_sof_dly)
        vtg_sof_cnt <= vtg_sof_cnt + 1'b1;
      if(fifo_sof_fe)
        fifo_sof_cnt <= fifo_sof_cnt + 1'b1;
    end
  end

  // EOL Count Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || state < C_SYNC_CALN_SOF_FIFO) begin
      fifo_eol_cnt <= 13'h0000;
      fifo_eol_cnt_dly <= 13'h0000;
    end else if(VID_CE) begin
      if(fifo_sof_fe) begin
        fifo_eol_cnt <= 13'h0000;
        fifo_eol_cnt_dly <= fifo_eol_cnt;
      end else if(fifo_eol_re_dly) begin
        fifo_eol_cnt <= fifo_eol_cnt + 1'b1;
      end
    end
  end

  // EOL Error Process
  // - Asserted when there is a mismatch in the number of lines 
  // between consecutive frames
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET) begin
      fifo_eol_error <= 1'b0;
    end else if(VID_CE) begin
      if(fifo_sof_fe && (fifo_eol_cnt_dly > 0) && (fifo_eol_cnt != fifo_eol_cnt_dly)) 
        fifo_eol_error <= 1'b1;
    end
  end

  // Pixel Count Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || state < C_SYNC_CALN_SOF_FIFO) begin
      fifo_pix_cnt <= 13'h0000;
      fifo_pix_cnt_dly <= 13'h0000;
    end else if(VID_CE) begin
      if(fifo_eol_re_dly) begin
        fifo_pix_cnt <= 13'h0000;
        if(fifo_eol_cnt > 0 || fifo_pix_cnt_dly > 0)
          fifo_pix_cnt_dly <= fifo_pix_cnt;
      end else if(FIFO_RD_EN && ~FIFO_EMPTY) begin
        fifo_pix_cnt <= fifo_pix_cnt + 1'b1;
      end
    end
  end

  // Pixel Error Process
  // - Asserted when there is a mismatch in the number of active pixels
  // between consecutive lines
  // - Cleared every SOF
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET) begin
      fifo_pix_error <= 1'b0;
    end else if(VID_CE) begin
      if(fifo_eol_re_dly && (fifo_pix_cnt_dly > 0) && (fifo_pix_cnt != fifo_pix_cnt_dly))
        fifo_pix_error <= 1'b1;
      else if(fifo_sof_fe)
        fifo_pix_error <= 1'b0;
    end
  end 

  // Current State Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET)
      state <= C_SYNC_IDLE;
    else if(VID_CE) 
      state <= next_state;
  end

  // Next State Process
  generate if(C_VTG_MASTER_SLAVE == 0) begin : gen_sync_slave_mode
    always @(*) begin
      next_state = C_SYNC_IDLE;
  
      if(VID_RESET) begin
        next_state = C_SYNC_IDLE;
      end else begin
        case(state) 
  
          // Wait for VTG SOF
          C_SYNC_IDLE: begin
            if(vtg_sof && ~VTG_FIELD_ID)
              next_state = C_SYNC_CALN_SOF_VTG;
            else
              next_state = C_SYNC_IDLE;
          end  
  
          // Wait for FIFO SOF
          // - If the intial fill level is set to zero skip directly to fine alignment
          C_SYNC_CALN_SOF_VTG: begin
            if(FIFO_SOF && ~FIFO_FIELD_ID && (vtg_lag_threshold > 0))
              next_state = C_SYNC_CALN_SOF_FIFO;
            else if(FIFO_SOF && ~FIFO_FIELD_ID)
              next_state = C_SYNC_FALN_ACTIVE;
            else
              next_state = C_SYNC_CALN_SOF_VTG;
          end
  
          // Wait for FIFO Fill 
          C_SYNC_CALN_SOF_FIFO: begin
            if(FIFO_RD_LEVEL >= vtg_lag_threshold)
              next_state = C_SYNC_FALN_ACTIVE;
            else
              next_state = C_SYNC_CALN_SOF_FIFO;
          end
          
          // Fine Align Active
          C_SYNC_FALN_ACTIVE: begin
            if(vtg_eol_dly && ~fifo_eol_re_dly)
              next_state = C_SYNC_FALN_EOL_LEADING;
            else if(~vtg_eol_dly && fifo_eol_re_dly && ~fifo_force_rd)
              next_state = C_SYNC_FALN_EOL_LAGGING;
            else if(vtg_sof_dly && ~fifo_sof_fe && ~sof_ignore)
              next_state = C_SYNC_FALN_SOF_LEADING;
            else if(~vtg_sof_dly && fifo_sof_fe && ~sof_ignore && ~fifo_force_rd)
              next_state = C_SYNC_FALN_SOF_LAGGING;
            else if((vtg_sof_dly && fifo_sof_fe) && (vtg_sof_cnt >= C_SYNC_LOCK_THRESHOLD-1) && (fifo_sof_cnt >= C_SYNC_LOCK_THRESHOLD-1))
              next_state = C_SYNC_FALN_LOCK;
            else
              next_state = C_SYNC_FALN_ACTIVE;
          end
  
          // VTG Leading EOL
          // - Flush out EOL from FIFO
          C_SYNC_FALN_EOL_LEADING: begin
            if(vtg_lag >= C_SYNC_VTG_LAG_MAX-1'b1)
              next_state = C_SYNC_IDLE;
            else if(fifo_eol_re_dly)
              next_state = C_SYNC_FALN_ACTIVE;
            else
              next_state = C_SYNC_FALN_EOL_LEADING;
          end
  
          // VTG Lagging EOL
          // - Indicates Early EOL caused by incorrect VTG settings or an extra
          // read during EOL flushing. An extra read can occur during EOL flushing
          // if the last pixel arrives immediately before the next active line.
          // - Since the source of the error is unknown continue as normal
          C_SYNC_FALN_EOL_LAGGING: begin
            next_state = C_SYNC_FALN_ACTIVE;
          end
  
          // VTG Leading SOF
          // - Lag VTG until FIFO SOF
          C_SYNC_FALN_SOF_LEADING: begin
            if(vtg_lag >= C_SYNC_VTG_LAG_MAX-1'b1)
              next_state = C_SYNC_IDLE;
            else if(fifo_sof_fe)
              next_state = C_SYNC_FALN_ACTIVE;
            else 
              next_state = C_SYNC_FALN_SOF_LEADING;
          end
  
          // VTG Lagging SOF
          // - Indicates Early SOF caused by incorrect VTG settings
          C_SYNC_FALN_SOF_LAGGING: begin
            next_state = C_SYNC_FALN_ACTIVE;
          end
  
          // VTG Locked 
          C_SYNC_FALN_LOCK: begin
            if(vtg_eol_dly & ~fifo_eol_re_dly)
              next_state = C_SYNC_LALN_EOL_LEADING;
            else if(~vtg_eol_dly & fifo_eol_re_dly)
              next_state = C_SYNC_LALN_EOL_LAGGING;
            else if(vtg_sof_dly && ~fifo_sof_fe)
              next_state = C_SYNC_LALN_SOF_LEADING;
            else if(~vtg_sof_dly && fifo_sof_fe)
              next_state = C_SYNC_LALN_SOF_LAGGING;
            else
              next_state = C_SYNC_FALN_LOCK;
          end
  
          // Lost Lock, VTG Leading EOL
          C_SYNC_LALN_EOL_LEADING: begin
            next_state = C_SYNC_IDLE;
          end
  
          // Lost Lock, VTG Lagging EOL
          // - Indicates Early EOL caused by incorrect VTG settings
          // - Should never occur since it would be caught during fine alignment
          C_SYNC_LALN_EOL_LAGGING: begin
            next_state = C_SYNC_IDLE;
          end

          // Lost Lock, VTG Leading SOF
          C_SYNC_LALN_SOF_LEADING: begin
            next_state = C_SYNC_IDLE;
          end

          // Lost Lock, VTG Lagging SOF
          // - Indicates Early SOF caused by incorrect VTG settings
          // - Should never occur since it would be caught during fine alignment
          C_SYNC_LALN_SOF_LAGGING: begin
            next_state = C_SYNC_IDLE;
          end
  
        endcase
      end
    end
  end else if(C_VTG_MASTER_SLAVE == 1) begin : gen_sync_master_mode
    always @(*) begin
      next_state = C_SYNC_IDLE;
  
      if(VID_RESET) begin
        next_state = C_SYNC_IDLE;
      end else begin
        case(state) 

          // Wait for FIFO SOF
          C_SYNC_IDLE: begin
            if(FIFO_SOF && ~FIFO_FIELD_ID)
              next_state = C_SYNC_CALN_SOF_FIFO;
            else
              next_state = C_SYNC_IDLE;
          end

          // Wait for FIFO Fill 
          C_SYNC_CALN_SOF_FIFO: begin
            if(FIFO_RD_LEVEL >= vtg_lag_threshold)
              next_state = C_SYNC_CALN_SOF_VTG;
            else
              next_state = C_SYNC_CALN_SOF_FIFO;
          end

          // Wait for VTG vsync
          C_SYNC_CALN_SOF_VTG: begin
            if(vtg_sof && ~VTG_FIELD_ID)
              next_state = C_SYNC_FALN_ACTIVE;
            else
              next_state = C_SYNC_CALN_SOF_VTG;
          end 

          // Fine Align Active
          C_SYNC_FALN_ACTIVE: begin
            if(vtg_eol_dly && ~fifo_eol_re_dly)
              next_state = C_SYNC_FALN_EOL_LEADING;
            else if(~vtg_eol_dly && fifo_eol_re_dly && ~fifo_force_rd)
              next_state = C_SYNC_FALN_EOL_LAGGING;
            else if(vtg_sof_dly && ~fifo_sof_fe && ~sof_ignore)
              next_state = C_SYNC_FALN_SOF_LEADING;
            else if(~vtg_sof_dly && fifo_sof_fe && ~sof_ignore && ~fifo_force_rd)
              next_state = C_SYNC_FALN_SOF_LAGGING;
            else if((vtg_sof_dly && fifo_sof_fe) && (vtg_sof_cnt >= C_SYNC_LOCK_THRESHOLD-1) && (fifo_sof_cnt >= C_SYNC_LOCK_THRESHOLD-1))
              next_state = C_SYNC_FALN_LOCK;
            else
              next_state = C_SYNC_FALN_ACTIVE;
          end

          // VTG Leading EOL
          // - Flush out EOL from FIFO
          C_SYNC_FALN_EOL_LEADING: begin
            if(vtg_lag >= C_SYNC_VTG_LAG_MAX-1'b1)
              next_state = C_SYNC_IDLE;
            else if(fifo_eol_re_dly)
              next_state = C_SYNC_FALN_ACTIVE;
            else
              next_state = C_SYNC_FALN_EOL_LEADING;
          end

          // VTG Lagging EOL
          // - Indicates Early EOL caused by incorrect VTG settings or an extra
          // read during EOL flushing. An extra read can occur during EOL flushing
          // if the last pixel arrives immediately before the next active line.
          // - Since the source of the error is unknown continue as normal
          C_SYNC_FALN_EOL_LAGGING: begin
            next_state = C_SYNC_FALN_ACTIVE;
          end
  
          // VTG Leading SOF
          // - Lag VTG until FIFO SOF
          C_SYNC_FALN_SOF_LEADING: begin
            if(vtg_lag >= C_SYNC_VTG_LAG_MAX-1'b1)
              next_state = C_SYNC_IDLE;
            else if(fifo_sof_fe)
              next_state = C_SYNC_FALN_ACTIVE;
            else 
              next_state = C_SYNC_FALN_SOF_LEADING;
          end
  
          // VTG Lagging SOF
          // - Indicates Early SOF caused by incorrect VTG settings
          C_SYNC_FALN_SOF_LAGGING: begin
            next_state = C_SYNC_FALN_ACTIVE;
          end
  
          // VTG Locked 
          C_SYNC_FALN_LOCK: begin
            if(vtg_eol_dly & ~fifo_eol_re_dly)
              next_state = C_SYNC_LALN_EOL_LEADING;
            else if(~vtg_eol_dly & fifo_eol_re_dly)
              next_state = C_SYNC_LALN_EOL_LAGGING;
            else if(vtg_sof_dly && ~fifo_sof_fe)
              next_state = C_SYNC_LALN_SOF_LEADING;
            else if(~vtg_sof_dly && fifo_sof_fe)
              next_state = C_SYNC_LALN_SOF_LAGGING;
            else
              next_state = C_SYNC_FALN_LOCK;
          end
  
          // Lost Lock, VTG Leading EOL
          C_SYNC_LALN_EOL_LEADING: begin
            next_state = C_SYNC_IDLE;
          end
  
          // Lost Lock, VTG Lagging EOL
          // - Indicates Early EOL caused by incorrect VTG settings
          // - Should never occur since it would be caught during fine alignment
          C_SYNC_LALN_EOL_LAGGING: begin
            next_state = C_SYNC_IDLE;
          end

          // Lost Lock, VTG Leading SOF
          C_SYNC_LALN_SOF_LEADING: begin
            next_state = C_SYNC_IDLE;
          end

          // Lost Lock, VTG Lagging SOF
          // - Indicates Early SOF caused by incorrect VTG settings
          // - Should never occur since it would be caught during fine alignment
          C_SYNC_LALN_SOF_LAGGING: begin
            next_state = C_SYNC_IDLE;
          end

        endcase 
      end
    end
  end endgenerate

  // Locked process
  always @(posedge VID_OUT_CLK) begin
    locked <= (state == C_SYNC_FALN_LOCK);
  end
  
endmodule

`default_nettype wire


//-----------------------------------------------------------------------------
//  (c) Copyright 2015 Xilinx, Inc. All rights reserved.
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
//
//--------------------------------------------------------------------------
//  Module Description:
//  This module is the data formatter for the AXI4-Stream to video-out bridge.
//  The delayed video timing generator input signals are passed to the output 
//  when the synchronizer is LOCKED.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_10_formatter #(
  parameter  C_NATIVE_DATA_WIDTH = 24
) (
  input  wire VID_OUT_CLK,        // Native video clock
  input  wire VID_CE,             // Native video clock enable
  input  wire VID_RESET,          // Native video reset

  // FIFO signals
  input  wire [C_NATIVE_DATA_WIDTH-1:0] FIFO_DATA, // FIFO read data
  input  wire FIFO_RD_EN,         // FIFO read enable

  // VTG timing signals
  input  wire VTG_VSYNC,          // VTG vertical sync
  input  wire VTG_HSYNC,          // VTG horizontal sync
  input  wire VTG_VBLANK,         // VTG vertical blank
  input  wire VTG_HBLANK,         // VTG horizontal blank
  input  wire VTG_ACTIVE_VIDEO,   // VTG active video
  input  wire VTG_FIELD_ID,       // VTG field-id

  // Synchronizer signals
  input  wire LOCKED,             // Synchronizer locked

  // Native video signals
  output  wire VID_ACTIVE_VIDEO,  // Native video data enable
  output  wire VID_VSYNC,         // Native video vertical sync
  output  wire VID_HSYNC,         // Native video horizontal sync
  output  wire VID_VBLANK,        // Native video vertical blank
  output  wire VID_HBLANK,        // Native video horizontal blank
  output  wire VID_FIELD_ID,      // Native video field-id
  output  wire [C_NATIVE_DATA_WIDTH-1:0] VID_DATA // Native video data
);

  // Signal Declarations
  reg [C_NATIVE_DATA_WIDTH -1:0] in_data_mux = {C_NATIVE_DATA_WIDTH{1'b0}}; // Output disabling mux
  reg in_de_mux              = 1'b0;  
  reg in_vsync_mux           = 1'b0;  
  reg in_hsync_mux           = 1'b0;  
  reg in_vblank_mux          = 1'b0;  
  reg in_hblank_mux          = 1'b0; 
  reg in_field_id_mux        = 1'b0; 
  reg fivid_reset_full_frame = 1'b0;  // activates at start of full frame after reset.
  reg vtg_vblank_1           = 1'b0;  // delayed vblank 
  reg vblank_rising          = 1'b0;  //detects rising edge of vblank 
  
  
  // Assignments
  assign VID_DATA           = in_data_mux;
  assign VID_VSYNC          = in_vsync_mux;
  assign VID_HSYNC          = in_hsync_mux;
  assign VID_VBLANK         = in_vblank_mux;
  assign VID_HBLANK         = in_hblank_mux;
  assign VID_ACTIVE_VIDEO   = in_de_mux;
  assign VID_FIELD_ID       = in_field_id_mux;

  // Detect rising edge of vblank
  always @ (posedge VID_OUT_CLK) begin
    if (VID_CE) begin
      vtg_vblank_1 <= VTG_VBLANK;
      vblank_rising <= VTG_VBLANK && !vtg_vblank_1;
    end
  end

  // Detect start of full frame after reset and LOCKED
  always @ (posedge VID_OUT_CLK)begin
    if (VID_RESET || !LOCKED) begin
     fivid_reset_full_frame <= 0;
    end else if (vblank_rising & VID_CE) begin
     fivid_reset_full_frame <= 1;
    end 
  end	 
  
  //  Input Mux.  Zero outputs when not LOCKED and not full frame
  always @ (posedge VID_OUT_CLK)begin
    if (!LOCKED || VID_RESET || !fivid_reset_full_frame) begin
      in_de_mux     <= 0;
      in_vsync_mux  <= 0;
      in_hsync_mux  <= 0;    
      in_vblank_mux <= 0;
      in_hblank_mux <= 0;
      in_field_id_mux <= 0;    
      in_data_mux   <= 0;
    end else if (VID_CE) begin
      in_de_mux     <= VTG_ACTIVE_VIDEO;
      in_vsync_mux  <= VTG_VSYNC;
      in_hsync_mux  <= VTG_HSYNC;
      in_vblank_mux <= VTG_VBLANK;
      in_hblank_mux <= VTG_HBLANK;
      in_field_id_mux <= VTG_FIELD_ID;
      if (FIFO_RD_EN)
        in_data_mux  <= FIFO_DATA;
    end
  end

endmodule

`default_nettype wire


//-----------------------------------------------------------------------------
//  (c) Copyright 2016 Xilinx, Inc. All rights reserved.
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
//
//--------------------------------------------------------------------------
//  Module Description:
//  This module repeats every pixel once, and is intended to be
//  used for video formats that require pixel repetition.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_10_repeat #(
  // Video Format
  parameter C_PIXELS_PER_CLOCK = 1,         // Pixels per clock [1,2,4]
  parameter C_COMPONENTS_PER_PIXEL = 3,     // Components per pixel [1,2,3,4]
  parameter C_S_AXIS_COMPONENT_WIDTH = 8,   // AXIS video component width [8,10,12,16]
  parameter C_S_AXIS_TDATA_WIDTH = 24       // AXIS video tdata width
) (
  input   wire ACLK,               
  input   wire ACLKEN,              
  input   wire ARESETN,              

  input   wire REPEAT_IN,

  // Slave Interface
  input   wire [C_S_AXIS_TDATA_WIDTH-1:0]
               TDATA_IN,
  input   wire TVALID_IN,       
  output  wire TREADY_OUT,      
  input   wire TUSER_IN,        
  input   wire TLAST_IN,        
  input   wire FID_IN,          

  // Master Interface
  output  wire [C_S_AXIS_TDATA_WIDTH-1:0]
               TDATA_OUT,
  output  wire TVALID_OUT,       
  input   wire TREADY_IN,      
  output  wire TUSER_OUT,        
  output  wire TLAST_OUT,        
  output  wire FID_OUT          
);

localparam C_BITS_PER_PIXEL = C_COMPONENTS_PER_PIXEL * C_S_AXIS_COMPONENT_WIDTH;
localparam C_BITS_PADDING   = C_S_AXIS_TDATA_WIDTH - (C_PIXELS_PER_CLOCK * C_COMPONENTS_PER_PIXEL * C_S_AXIS_COMPONENT_WIDTH);
localparam C_STATE_IDLE   = 0,
           C_STATE_ACTIVE = 1,
           C_STATE_EVEN   = 2,
           C_STATE_ODD    = 3,
           C_STATE_WAIT   = 4;

// Internal signals
reg [C_S_AXIS_TDATA_WIDTH-1:0]
          aclk_tdata;
reg       aclk_tuser;
reg       aclk_tlast;
reg       aclk_fid;

reg [C_S_AXIS_TDATA_WIDTH-1:0]
          aclk_tdata_dly;
reg       aclk_tuser_dly;
reg       aclk_tlast_dly;
reg       aclk_fid_dly;

wire      aclk_xfer_si;
wire      aclk_xfer_mi;
wire      aclk_repeat;

reg [2:0] aclk_state;
reg [2:0] aclk_next;

assign aclk_xfer_si = TVALID_IN  & TREADY_OUT;
assign aclk_xfer_mi = TVALID_OUT & TREADY_IN;

// Synchronize control input
v_axi4s_vid_out_v4_0_10_cdc_single
CDC_SINGLE_INST (
  .CLK_IN(ACLK),
  .DAT_IN(REPEAT_IN),
  .DAT_OUT(aclk_repeat)
);

// Register inputs
always @(posedge ACLK) begin
  if (~ARESETN) begin
    aclk_tdata <= 'd0;
    aclk_tuser <= 'd0;
    aclk_tlast <= 'd0;
    aclk_fid   <= 'd0;
  end
  else if (ACLKEN) begin
    if (aclk_xfer_si) begin
      if (aclk_next ==  C_STATE_WAIT) begin
        aclk_tdata_dly <= TDATA_IN;
        aclk_tuser_dly <= TUSER_IN;
        aclk_tlast_dly <= TLAST_IN;
        aclk_fid_dly   <= FID_IN;
      end
      else begin
        aclk_tdata <= TDATA_IN;
        aclk_tuser <= TUSER_IN;
        aclk_tlast <= TLAST_IN;
        aclk_fid   <= FID_IN;
      end
    end

    if (aclk_xfer_mi) begin
      if (aclk_state ==  C_STATE_WAIT) begin
        aclk_tdata <= aclk_tdata_dly;
        aclk_tuser <= aclk_tuser_dly;
        aclk_tlast <= aclk_tlast_dly;
        aclk_fid   <= aclk_fid_dly;
      end
    end

  end
end

// State machine
always @(posedge ACLK) begin
  if (~ARESETN) begin
    aclk_state <= 1'b0;
  end
  else if (ACLKEN) begin
    aclk_state <= aclk_next;
  end
end

always @(*) begin
  aclk_next = C_STATE_IDLE;

  case (aclk_state)
    // Idle
    // State machine is idle
    // Activate state machine only after first start of frame sample on SI
    C_STATE_IDLE:
      if (aclk_xfer_si & aclk_repeat & (TUSER_IN & ~FID_IN))
        aclk_next = C_STATE_EVEN;
      else 
        aclk_next = C_STATE_IDLE; 

    // Active
    // State machine waiting for sample on SI
    // Pipeline is empty
    C_STATE_ACTIVE:
      if (aclk_xfer_si) 
        aclk_next = C_STATE_EVEN;
      else
        aclk_next = C_STATE_ACTIVE;

    // Even sample
    // State machine waiting to push even sample on MI
    // Pipeline has one sample
    C_STATE_EVEN: 
      if (aclk_xfer_mi)
        aclk_next = C_STATE_ODD;
      else 
        aclk_next = C_STATE_EVEN; 

    // Odd sample
    // State machine waiting to push odd sample on MI
    // Pipeline has one sample
    C_STATE_ODD:
      // No stall or backpressure
      if (aclk_xfer_mi & aclk_xfer_si)
        aclk_next = C_STATE_EVEN;
      // Stall on SI
      else if (aclk_xfer_mi)
        aclk_next = C_STATE_ACTIVE;
      // Backpressure on MI
      else if (aclk_xfer_si)
        aclk_next = C_STATE_WAIT;
      // NOOP
      else
        aclk_next = C_STATE_ODD;

    // Wait for MI
    // State machine waiting to push odd sample on MI
    // There is already sample pending 
    // Pipeline has two samples
    C_STATE_WAIT:
      if (aclk_xfer_mi)
        aclk_next = C_STATE_EVEN;
      else 
        aclk_next = C_STATE_WAIT;

    default: ;
  endcase
end

// Output assignments
assign TVALID_OUT = (aclk_repeat) ? (aclk_state == C_STATE_EVEN || aclk_state == C_STATE_ODD || aclk_state == C_STATE_WAIT)
                                  : TVALID_IN;
assign TREADY_OUT = (aclk_repeat) ? (aclk_state == C_STATE_IDLE || aclk_state == C_STATE_ACTIVE || aclk_state == C_STATE_ODD)
                                  : TREADY_IN;
assign TUSER_OUT  = (aclk_repeat) ? (aclk_state == C_STATE_EVEN && aclk_tuser) 
                                  : TUSER_IN;
assign TLAST_OUT  = (aclk_repeat) ? ((aclk_state == C_STATE_ODD || aclk_state == C_STATE_WAIT) && aclk_tlast) 
                                  : TLAST_IN;
assign FID_OUT    = (aclk_repeat) ? (aclk_fid)
                                  : FID_IN;

generate 
if (C_PIXELS_PER_CLOCK == 1) begin: generate_tdata_1ppc
  assign TDATA_OUT = (aclk_repeat) ? aclk_tdata : TDATA_IN;
end
else if (C_PIXELS_PER_CLOCK == 2) begin: generate_tdata_2ppc
  assign TDATA_OUT = (aclk_repeat) ? ((aclk_state == C_STATE_EVEN) ? {{C_BITS_PADDING{1'b0}}, {2{aclk_tdata[1*C_BITS_PER_PIXEL-1:0]}}} 
                                                                   : {{C_BITS_PADDING{1'b0}}, {2{aclk_tdata[2*C_BITS_PER_PIXEL-1:C_BITS_PER_PIXEL]}}})
                                   : TDATA_IN;
end
else if (C_PIXELS_PER_CLOCK == 4) begin: generate_tdata_4ppc
  assign TDATA_OUT = (aclk_repeat) ? ((aclk_state == C_STATE_EVEN) ? {{C_BITS_PADDING{1'b0}}, {2{aclk_tdata[2*C_BITS_PER_PIXEL-1:1*C_BITS_PER_PIXEL]}}, {2{aclk_tdata[1*C_BITS_PER_PIXEL-1:0]}}}
                                                                   : {{C_BITS_PADDING{1'b0}}, {2{aclk_tdata[4*C_BITS_PER_PIXEL-1:3*C_BITS_PER_PIXEL]}}, {2{aclk_tdata[3*C_BITS_PER_PIXEL-1:2*C_BITS_PER_PIXEL]}}})
                                   : TDATA_IN;
end
endgenerate

endmodule

`default_nettype wire


//-----------------------------------------------------------------------------
//  (c) Copyright 2016 Xilinx, Inc. All rights reserved.
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
//
//--------------------------------------------------------------------------
//  Module Description:
//  This module remaps YUV 4:2:0 from 2 components at the input to 3
//  components at the output.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_10_remap #(
  parameter C_FAMILY                 = "virtex6",
  parameter C_PIXELS_PER_CLOCK       = 1,   // Pixels per clock [1,2,4, 8]
  parameter C_COMPONENTS_PER_PIXEL   = 3,   // Components per pixel [1,2,3,4]
  parameter C_S_AXIS_COMPONENT_WIDTH = 8,   // AXIS video component width [8,10,12,16]
  parameter C_S_AXIS_TDATA_WIDTH     = 24,  // AXIS video tdata width
  parameter C_ADDR_WIDTH             = 10   // FIFO address width 
) (
  input   wire ACLK,               
  input   wire ACLKEN,              
  input   wire ARESETN,              

  // Control
  input   wire REMAP_IN,

  // Slave Interface
  input   wire [C_S_AXIS_TDATA_WIDTH-1:0]
               TDATA_IN,
  input   wire TVALID_IN,       
  output  wire TREADY_OUT,      
  input   wire TUSER_IN,        
  input   wire TLAST_IN,        
  input   wire FID_IN,          

  // Master Interface
  output  wire [C_S_AXIS_TDATA_WIDTH-1:0]
               TDATA_OUT,
  output  wire TVALID_OUT,       
  input   wire TREADY_IN,      
  output  wire TUSER_OUT,        
  output  wire TLAST_OUT,        
  output  wire FID_OUT, 

  // Status
  output  wire FIFO_OVERFLOW_OUT,
  output  wire FIFO_UNDERFLOW_OUT
);

localparam C_BITS_PER_PIXEL = 2 * C_S_AXIS_COMPONENT_WIDTH;
localparam C_STATE_IDLE   = 0,
           C_STATE_ACTIVE = 1,
           C_STATE_EVEN   = 2,
           C_STATE_ODD    = 3,
           C_STATE_WAIT   = 4,
           C_STATE_ERROR  = 5;

// Internal signals
reg  [C_S_AXIS_TDATA_WIDTH-1:0]
     aclk_tdata_even, aclk_tdata_even_dly, aclk_tdata_odd;
reg  aclk_tuser, aclk_tuser_dly;
reg  aclk_tlast;
reg  aclk_fid, aclk_fid_dly;

reg  aclk_line_phase;
wire aclk_xfer_si;
wire aclk_xfer_mi;

wire [C_PIXELS_PER_CLOCK*C_S_AXIS_COMPONENT_WIDTH:0]
     aclk_wr_data;
reg  aclk_wr_en;
wire [C_PIXELS_PER_CLOCK*C_S_AXIS_COMPONENT_WIDTH:0]
     aclk_rd_data;
wire aclk_rd_en;
wire aclk_remap;

reg  [2:0] aclk_state;
reg  [2:0] aclk_next;

wire reset;
reg  [3:0] reset_pulse;

wire underflow;
wire overflow;
// Assignments
assign aclk_xfer_si = TVALID_IN  & TREADY_OUT;
assign aclk_xfer_mi = TVALID_OUT & TREADY_IN;
assign aclk_rd_en   = (aclk_state > C_STATE_IDLE) & aclk_line_phase & aclk_xfer_mi;
assign reset        = (~ARESETN) || (|reset_pulse);

// Synchronize control input
v_axi4s_vid_out_v4_0_10_cdc_single
CDC_SINGLE_INST (
  .CLK_IN(ACLK),
  .DAT_IN(REMAP_IN),
  .DAT_OUT(aclk_remap)
);

// Reset pulse
always @(posedge ACLK) begin
  // Load 
  if ((aclk_state == C_STATE_ERROR) ||
      (aclk_line_phase && aclk_tuser))
    reset_pulse <= 4'b1111;

  // Shift 
  else
    reset_pulse <= {1'b0, reset_pulse[3:1]};
end

// State machine
always @(posedge ACLK) begin
  if (reset) begin
    aclk_state <= C_STATE_IDLE;
  end else if (ACLKEN) begin
    aclk_state <= aclk_next;
  end
end

always @(*) begin
  aclk_next = C_STATE_IDLE;

  case (aclk_state) 
    // Idle
    // State machine is idle
    // Activate state machine only after first start of frame sample on SI
    C_STATE_IDLE:
      if (aclk_xfer_si & aclk_remap & (TUSER_IN & ~FID_IN)) 
        if (TLAST_IN)
          aclk_next = C_STATE_ERROR; // Early or Late EOL
        else 
          aclk_next = C_STATE_EVEN;
      else
        aclk_next = C_STATE_IDLE;

    // Active
    // State machine waiting for even sample on SI
    // Pipeline is empty
    C_STATE_ACTIVE:
      if (aclk_xfer_si)
        if (TLAST_IN)
          aclk_next = C_STATE_ERROR; // Early or Late EOL
        else
          aclk_next = C_STATE_EVEN;
      else
        aclk_next = C_STATE_ACTIVE;

    // Even sample
    // State machine waiting for odd sample on SI
    // Pipeline is even only
    C_STATE_EVEN:
      if (aclk_xfer_si)
        if (TUSER_IN) 
          aclk_next = C_STATE_ERROR; // Early or Late SOF
        else
          aclk_next = C_STATE_ODD;
      else 
        aclk_next = C_STATE_EVEN;

    // Odd sample
    // State machine waiting to push sample on MI
    // Pipeline is even/odd pair
    C_STATE_ODD:
      // No stall or backpressure
      if (aclk_xfer_si & aclk_xfer_mi)
        if (TLAST_IN)
          aclk_next = C_STATE_ERROR; // Early or Late EOL
        else
          aclk_next = C_STATE_EVEN;
      // Stall on SI
      else if (aclk_xfer_mi)
        aclk_next = C_STATE_ACTIVE;
      // Backpressure on MI
      else if (aclk_xfer_si)
        if (TLAST_IN)
          aclk_next = C_STATE_ERROR; // Early or Late EOL
        else
          aclk_next = C_STATE_WAIT;
      // NOOP
      else 
        aclk_next = C_STATE_ODD;

    // Wait for MI 
    // State machine waiting to push sample on MI
    // There is already another even sample pending from the next pair
    // Pipeline is full
    C_STATE_WAIT:
      if (aclk_xfer_mi)
        aclk_next = C_STATE_EVEN;
      else
        aclk_next = C_STATE_WAIT;

    // Error condition
    default:
      aclk_next = C_STATE_IDLE;

  endcase
end

// Register inputs
always @(posedge ACLK) begin
  if (reset) begin
    aclk_tuser <= 1'b0;
    aclk_tlast <= 1'b0;
    aclk_fid   <= 1'b0;
  end
  else if (ACLKEN) begin
    if (aclk_xfer_si) begin
      // Even sample
      if (aclk_state == C_STATE_IDLE || aclk_state == C_STATE_ACTIVE) begin
        aclk_tdata_even     <= TDATA_IN;
        aclk_tuser          <= TUSER_IN;
        aclk_fid            <= FID_IN;
      end
      // Odd sample
      else if (aclk_state == C_STATE_EVEN) begin
        aclk_tlast          <= TLAST_IN;
        aclk_tdata_odd      <= TDATA_IN;
      end
      // Check for backpressure
      else if (aclk_state == C_STATE_ODD) begin
        // No backpressure
        if (aclk_xfer_mi) begin
          aclk_tdata_even     <= TDATA_IN;
          aclk_tuser          <= TUSER_IN;
          aclk_fid            <= FID_IN;
        end 
        // Has backpressure, store even sample 
        else begin
          aclk_tdata_even_dly <= TDATA_IN;
          aclk_tuser_dly      <= TUSER_IN;
          aclk_fid_dly        <= FID_IN;
        end
      end
    end

    else if (aclk_xfer_mi) begin
      // Load stored even sample
      if (aclk_state == C_STATE_WAIT) begin
        aclk_tdata_even     <= aclk_tdata_even_dly;
        aclk_tuser          <= aclk_tuser_dly;
        aclk_fid            <= aclk_fid_dly;
      end
    end

  end
end

// Extract odd chroma to write into FIFO
generate 
if (C_PIXELS_PER_CLOCK == 1) begin : generate_1ppc_fifo_wr_data
  assign aclk_wr_data = {aclk_tlast,
                         aclk_tdata_odd [C_S_AXIS_COMPONENT_WIDTH                    +: C_S_AXIS_COMPONENT_WIDTH]};
end
else if (C_PIXELS_PER_CLOCK == 2) begin : generate_2ppc_fifo_wr_data
  assign aclk_wr_data = {aclk_tlast,
                         aclk_tdata_odd [1*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_even[1*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH]};
end
else if (C_PIXELS_PER_CLOCK == 4) begin : generate_4ppc_fifo_wr_data
  assign aclk_wr_data = {aclk_tlast,
                         aclk_tdata_odd [3*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_odd [1*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_even[3*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_even[1*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH]};
end
else if (C_PIXELS_PER_CLOCK == 8) begin : generate_8ppc_fifo_wr_data
  assign aclk_wr_data = {aclk_tlast,
                         aclk_tdata_odd [7*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_odd [5*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_odd [3*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_odd [1*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_even[7*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_even[5*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_even[3*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                         aclk_tdata_even[1*C_BITS_PER_PIXEL+C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH]};
end
endgenerate

// Generate the line phase
// Phase 0 - even line
// Phase 1 - odd line
always @(posedge ACLK) begin
  if (reset) begin
    aclk_line_phase <= 1'b0;
  end
  else if (ACLKEN) begin
    // Line phase
    if (aclk_state == C_STATE_IDLE)
      aclk_line_phase <= 1'b0;
    else if (aclk_xfer_mi & TLAST_OUT)
      aclk_line_phase <= aclk_line_phase + 1'b1;
  end
end

// FIFO write enable logic
always @(posedge ACLK) begin
  if (reset) begin
    aclk_wr_en <= 1'b0;
  end
  else if (ACLKEN) begin
    if (aclk_xfer_si & ~aclk_line_phase & (aclk_state == C_STATE_EVEN))
      aclk_wr_en <= 1'b1;
    else
      aclk_wr_en <= 1'b0;
  end
end

// Instantiate FIFO
// Used to buffer chroma samples for odd pixels on every even line
// The depth of the fifo needs to be half the line length
v_axi4s_vid_out_v4_0_10_fifo_sync #(
  .C_ADDR_WIDTH     (C_ADDR_WIDTH),
  .C_DATA_WIDTH     (C_PIXELS_PER_CLOCK*C_S_AXIS_COMPONENT_WIDTH+1)
) FIFO_INST (
  .CLK              (ACLK),                          
  .RESET            (reset),                        

  .WR_DATA          (aclk_wr_data),
  .WR_EN            (aclk_wr_en), 
  .WR_DATA_COUNT    (),         
  .WR_BUSY          (),
  .WR_FULL          (),                                 
  .WR_OVERFLOW      (overflow),

  .RD_DATA          (aclk_rd_data),  
  .RD_EN            (aclk_rd_en),                              
  .RD_DATA_COUNT    (),
  .RD_BUSY          (),
  .RD_EMPTY         (),                                
  .RD_UNDERFLOW     (underflow)                             
);

// Output assignments
assign TVALID_OUT = (aclk_remap) ? (aclk_state == C_STATE_ODD || aclk_state == C_STATE_WAIT)
                                 : TVALID_IN;
assign TREADY_OUT = (aclk_remap) ? (aclk_state != C_STATE_WAIT)
                                 : TREADY_IN;
assign TUSER_OUT  = (aclk_remap) ? (aclk_tuser)
                                 : TUSER_IN;
assign TLAST_OUT  = (aclk_remap) ? (aclk_line_phase ? aclk_rd_data[C_PIXELS_PER_CLOCK*C_S_AXIS_COMPONENT_WIDTH] : aclk_tlast)
                                 : TLAST_IN;
assign FID_OUT    = (aclk_remap) ? (aclk_fid)
                                 : FID_IN;

assign FIFO_UNDERFLOW_OUT    = (aclk_remap) ? (underflow)
                                 : 1'b0;
assign FIFO_OVERFLOW_OUT    = (aclk_remap) ? (overflow)
                                 : 1'b0;
generate 
if (C_PIXELS_PER_CLOCK == 1) begin: generate_tdata_1ppc
  assign TDATA_OUT = (aclk_remap) ? (aclk_line_phase ? {aclk_tdata_odd [0                        +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [0                        +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[0                        +: C_S_AXIS_COMPONENT_WIDTH]}
                                                     :
                                                       {aclk_tdata_odd [0                        +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[0                        +: 2*C_S_AXIS_COMPONENT_WIDTH]})
                                  :
                                    (TDATA_IN);
end
else if (C_PIXELS_PER_CLOCK == 2) begin: generate_tdata_2ppc
  assign TDATA_OUT = (aclk_remap) ? (aclk_line_phase ? {aclk_tdata_odd [1*C_BITS_PER_PIXEL       +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [0*C_BITS_PER_PIXEL       +: C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[1*C_BITS_PER_PIXEL       +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [0                        +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[0*C_BITS_PER_PIXEL       +: C_S_AXIS_COMPONENT_WIDTH]}
                                                     :
                                                       {aclk_tdata_odd [1*C_BITS_PER_PIXEL       +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [0*C_BITS_PER_PIXEL       +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[1*C_BITS_PER_PIXEL       +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[0*C_BITS_PER_PIXEL       +: 2*C_S_AXIS_COMPONENT_WIDTH]})
                                  :
                                    (TDATA_IN);
end
else if (C_PIXELS_PER_CLOCK == 4) begin: generate_tdata_4ppc
  assign TDATA_OUT = (aclk_remap) ? (aclk_line_phase ? {aclk_tdata_odd [3*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [3*C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [2*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_odd [1*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [2*C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [0*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[3*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [C_S_AXIS_COMPONENT_WIDTH   +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[2*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[1*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [0                          +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[0*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH]}
                                                     :
                                                       {aclk_tdata_odd [3*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [2*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_odd [1*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [0*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[3*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[2*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[1*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[0*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH]})
                                  :
                                    (TDATA_IN);
end
else if (C_PIXELS_PER_CLOCK == 8) begin: generate_tdata_8ppc
  assign TDATA_OUT = (aclk_remap) ? (aclk_line_phase ? {aclk_tdata_odd [7*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [7*C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [6*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                                                                                                 
                                                        aclk_tdata_odd [5*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [6*C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [4*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_odd [3*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [5*C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [2*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_odd [1*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [4*C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [0*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[7*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [3*C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[6*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[5*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [2*C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[4*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[3*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [C_S_AXIS_COMPONENT_WIDTH   +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[2*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[1*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_rd_data   [0                          +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[0*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH]}
                                                     :
                                                       {aclk_tdata_odd [7*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [6*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_odd [5*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [4*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_odd [3*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [2*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_odd [1*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_odd [0*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[7*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[6*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[5*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[4*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[3*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[2*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH],

                                                        aclk_tdata_even[1*C_BITS_PER_PIXEL         +: C_S_AXIS_COMPONENT_WIDTH],
                                                        aclk_tdata_even[0*C_BITS_PER_PIXEL         +: 2*C_S_AXIS_COMPONENT_WIDTH]})
                                  :
                                    (TDATA_IN);
end
endgenerate

endmodule

`default_nettype wire


//-----------------------------------------------------------------------------
//  (c) Copyright 2015 Xilinx, Inc. All rights reserved.
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
//
//--------------------------------------------------------------------------
//  Module Description:
//  This is the top level module for the AXI4-Stream to Video-Out bridge.
//  The bridge is used to convert AXI4-Stream input to native video by 
//  synchronizing to the video timing generator input signals. An internal
//  fifo is used to absorb stalls in the AXI4-Stream input. The fifo supports
//  synchronous or asynchronous clocking modes with configurable fifo detph. 
//  The write enable logic of the fifo is based on the AXI4-Stream input signals. 
//  When the fifo is full the ready signal is de-asserted forcing backpressure 
//  on the stream. The fifo read enable logic is controlled by the synchronizer
//  module. The synchronizer can be configured in master or slave mode and
//  an intial fill level can be assigned to aid synchronization. 
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//  Structure:
//    TOP_INST
//      COUPLER_INST
//        FIFO_INST
//      SYNC_INST
//      FORMATTER_INST
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_10 #(
  parameter C_FAMILY                     = "virtex6",         

  // Video Format
  parameter C_PIXELS_PER_CLOCK           = 1,   // Pixels per clock [1,2,4]
  parameter C_COMPONENTS_PER_PIXEL       = 3,   // Components per pixel [1,2,3,4]
  parameter C_S_AXIS_COMPONENT_WIDTH     = 8,   // AXIS video component width [8,10,12,16]
  parameter C_NATIVE_COMPONENT_WIDTH     = 8,   // Native video component width [8,10,12,16]
  parameter C_NATIVE_DATA_WIDTH          = 24,  // Native video data width
  parameter C_S_AXIS_TDATA_WIDTH         = 24,  // AXIS video tdata width

  // FIFO Settings
  parameter C_HAS_ASYNC_CLK              = 0,   // Enable asyncronous clock domains
  parameter C_ADDR_WIDTH                 = 10,  // FIFO address width [5,10,11,12,13]

  // Timing Mode 
  parameter C_VTG_MASTER_SLAVE           = 0,   // VTC timing mode, 1:Master Mode, 0:Slave Mode
  parameter C_HYSTERESIS_LEVEL           = 12,  // Hysteresis level or intial fill level
  parameter C_SYNC_LOCK_THRESHOLD        = 4,   // Minimum of one frame required to acheive lock

  // Pixel repeat/remap
  parameter C_INCLUDE_PIXEL_REPEAT       = 0,   // Enable support for pixel repetition
  parameter C_INCLUDE_PIXEL_REMAP_420    = 0,   // Enable support for pixel remapping of YUV 4:2:0
  parameter C_ADDR_WIDTH_PIXEL_REMAP_420 = 10   // Fifo address width for remapping of YUV 4:2:0
) (
  // AXI4-Stream signals
  input   wire aclk,                        // AXI4-Stream clock
  input   wire aclken,                      // AXI4-Stream clock enable
  input   wire aresetn,                     // AXI4-Stream reset active low
  input   wire [C_S_AXIS_TDATA_WIDTH-1:0] 
               s_axis_video_tdata,          // AXI4-Stream data
  input   wire s_axis_video_tvalid,         // AXI4-Stream valid 
  output  wire s_axis_video_tready,         // AXI4-Stream ready 
  input   wire s_axis_video_tuser,          // AXI4-Stream tuser (SOF)
  input   wire s_axis_video_tlast,          // AXI4-Stream tlast (EOL)
  input   wire fid,                         // Field-id input, sampled on SOF
  
  // Native video signals
  input   wire vid_io_out_clk,              // Native video clock
  input   wire vid_io_out_ce,               // Native video clock enable
  input   wire vid_io_out_reset,            // Native video reset, active high
  output  wire vid_active_video,            // Native video data enable
  output  wire vid_vsync,                   // Native video vertical sync
  output  wire vid_hsync,                   // Native video horizontal sync
  output  wire vid_vblank,                  // Native video vertical blank
  output  wire vid_hblank,                  // Native video horizontal blank
  output  wire vid_field_id,                // Native video field-id 
  output  wire [C_NATIVE_DATA_WIDTH-1:0]
               vid_data,                    // Native video data 
  
  // VTG signals
  input   wire vtg_vsync,                   // VTG vertical sync
  input   wire vtg_hsync,                   // VTG horizontal sync
  input   wire vtg_vblank,                  // VTG vertical blank
  input   wire vtg_hblank,                  // VTG horizontal blank
  input   wire vtg_active_video,            // VTG data enable
  input   wire vtg_field_id,                // VTG field-id 
  output  wire vtg_ce,                      // VTG clock enable

  // Status signals
  output  wire locked,                      // Syncronizer locked status 
  output  wire overflow,                    // FIFO overflow status
  output  wire underflow,                   // FIFO underflow status
  output  wire [C_ADDR_WIDTH:0]
               fifo_read_level,
  output  wire [32-1:0]
               status,                      // General status 

  // Control inputs
  input   wire repeat_en,                   // Enable pixel repetition
  input   wire remap_420_en                 // Enable pixel repetition
);

  // Signal declarations 
  wire                              vid_clk;
  wire                              vid_reset;
  wire                              vid_clken;
  wire [C_NATIVE_DATA_WIDTH -1:0]   fifo_data;
  wire                              fifo_eol;
  wire                              fifo_sof;
  wire                              fifo_fid;
  wire [C_ADDR_WIDTH:0]             fifo_level_rd;
  wire                              fifo_rd_en;
  wire                              fifo_empty;

  wire [C_S_AXIS_TDATA_WIDTH-1:0]   tdata_to_remap;
  wire                              tvalid_to_remap;
  wire                              tready_from_remap;
  wire                              tuser_to_remap;
  wire                              tlast_to_remap;
  wire                              fid_to_remap;

  wire [C_S_AXIS_TDATA_WIDTH-1:0]   tdata_from_remap;
  wire                              tvalid_from_remap;
  wire                              tready_to_remap;
  wire                              tuser_from_remap;
  wire                              tlast_from_remap;
  wire                              fid_from_remap;

  wire [C_S_AXIS_TDATA_WIDTH-1:0]   tdata_to_repeat;
  wire                              tvalid_to_repeat;
  wire                              tready_from_repeat;
  wire                              tuser_to_repeat;
  wire                              tlast_to_repeat;
  wire                              fid_to_repeat;

  wire [C_S_AXIS_TDATA_WIDTH-1:0]   tdata_from_repeat;
  wire                              tvalid_from_repeat;
  wire                              tready_to_repeat;
  wire                              tuser_from_repeat;
  wire                              tlast_from_repeat;
  wire                              fid_from_repeat;

  wire [C_S_AXIS_TDATA_WIDTH+3-1:0] fifo_data_to_coupler;
  wire                              fifo_valid_to_coupler;
  wire                              fifo_ready_from_coupler;

  wire                              fifo_overflow_from_coupler;
  wire                              fifo_underflow_from_coupler;
  wire                              fifo_overflow_from_remap;
  wire                              fifo_underflow_from_remap;
  wire                              fifo_underflow_from_remap_sync;

  wire                              locked_from_sync;
  reg                               locked_from_sync_dly;
  reg  [3:0]                        aclk_reset_pulse;
  wire                              aclk_reset;

  // Assignments
  assign vid_clk = (C_HAS_ASYNC_CLK) ? vid_io_out_clk : aclk;
  assign vid_reset = (C_HAS_ASYNC_CLK) ? vid_io_out_reset : ~aresetn;
  assign vid_clken = vid_io_out_ce;
  assign fifo_read_level = fifo_level_rd; 
  assign aclk_reset = (~aresetn) || (|aclk_reset_pulse);

  // Assignments for module connectivity
generate
if (C_INCLUDE_PIXEL_REMAP_420 && C_INCLUDE_PIXEL_REPEAT) begin: generate_repeat_and_remap_assignments
  assign tdata_to_remap        = s_axis_video_tdata;
  assign tvalid_to_remap       = s_axis_video_tvalid;
  assign tuser_to_remap        = s_axis_video_tuser;
  assign tlast_to_remap        = s_axis_video_tlast;
  assign fid_to_remap          = fid;
  assign s_axis_video_tready   = tready_from_remap;

  assign tdata_to_repeat       = tdata_from_remap;
  assign tvalid_to_repeat      = tvalid_from_remap;
  assign tuser_to_repeat       = tuser_from_remap;
  assign tlast_to_repeat       = tlast_from_remap;
  assign fid_to_repeat         = fid_from_remap;
  assign tready_to_remap       = tready_from_repeat;

  assign fifo_data_to_coupler  = {fid_from_repeat,tuser_from_repeat,tlast_from_repeat,tdata_from_repeat};
  assign fifo_valid_to_coupler = tvalid_from_repeat;
  assign tready_to_repeat      = fifo_ready_from_coupler;

  assign overflow              = fifo_overflow_from_coupler | fifo_overflow_from_remap;
  assign underflow             = fifo_underflow_from_coupler | fifo_underflow_from_remap_sync;
end
else if (C_INCLUDE_PIXEL_REMAP_420) begin: generate_remap_assignments
  assign tdata_to_remap        = s_axis_video_tdata;
  assign tvalid_to_remap       = s_axis_video_tvalid;
  assign tuser_to_remap        = s_axis_video_tuser;
  assign tlast_to_remap        = s_axis_video_tlast;
  assign fid_to_remap          = fid;
  assign s_axis_video_tready   = tready_from_remap;

  assign fifo_data_to_coupler  = {fid_from_remap,tuser_from_remap,tlast_from_remap,tdata_from_remap};
  assign fifo_valid_to_coupler = tvalid_from_remap;
  assign tready_to_remap       = fifo_ready_from_coupler;

  assign overflow              = fifo_overflow_from_coupler | fifo_overflow_from_remap;
  assign underflow             = fifo_underflow_from_coupler | fifo_underflow_from_remap_sync;
end
else if (C_INCLUDE_PIXEL_REPEAT) begin: generate_repeat_assignments
  assign tdata_to_repeat       = s_axis_video_tdata;
  assign tvalid_to_repeat      = s_axis_video_tvalid;
  assign tuser_to_repeat       = s_axis_video_tuser;
  assign tlast_to_repeat       = s_axis_video_tlast;
  assign fid_to_repeat         = fid;
  assign s_axis_video_tready   = tready_from_repeat;

  assign fifo_data_to_coupler  = {fid_from_repeat,tuser_from_repeat,tlast_from_repeat,tdata_from_repeat};
  assign fifo_valid_to_coupler = tvalid_from_repeat;
  assign tready_to_repeat      = fifo_ready_from_coupler;

  assign overflow              = fifo_overflow_from_coupler;
  assign underflow             = fifo_underflow_from_coupler;
end
else begin : generate_bypass_wires
  assign fifo_data_to_coupler  = {fid,s_axis_video_tuser,s_axis_video_tlast,s_axis_video_tdata};
  assign fifo_valid_to_coupler = s_axis_video_tvalid;
  assign s_axis_video_tready   = fifo_ready_from_coupler;

  assign overflow              = fifo_overflow_from_coupler;
  assign underflow             = fifo_underflow_from_coupler;
end
endgenerate

// Synchronize remapper fifo underflow to video clock domain
v_axi4s_vid_out_v4_0_10_cdc_single
CDC_SINGLE_REMAP_UNDERFLOW_INST (
  .CLK_IN(vid_clk),
  .DAT_IN(fifo_underflow_from_remap),
  .DAT_OUT(fifo_underflow_from_remap_sync)
);

// Synchronize locked from synchronizer to axis clock domain
v_axi4s_vid_out_v4_0_10_cdc_single
CDC_SINGLE_LOCKED_INST (
  .CLK_IN(aclk),
  .DAT_IN(locked),
  .DAT_OUT(locked_from_sync)
);

// Generate AXIS reset pulse on falling edge of locked
// signal synchronized from the native clock domain.
always @(posedge aclk) begin
  locked_from_sync_dly <= locked_from_sync;
  
  // Load on falling edge of locked
  if (locked_from_sync_dly && !locked_from_sync)
    aclk_reset_pulse <= 4'b1111;

  // Shift
  else 
    aclk_reset_pulse <= {1'b0, aclk_reset_pulse[3:1]};
end

  // Module instances
generate 
if (C_INCLUDE_PIXEL_REMAP_420) begin: generate_remap_module
  v_axi4s_vid_out_v4_0_10_remap #(
    .C_FAMILY                 (C_FAMILY),
    .C_PIXELS_PER_CLOCK       (C_PIXELS_PER_CLOCK),
    .C_COMPONENTS_PER_PIXEL   (C_COMPONENTS_PER_PIXEL),
    .C_S_AXIS_COMPONENT_WIDTH (C_S_AXIS_COMPONENT_WIDTH),
    .C_S_AXIS_TDATA_WIDTH     (C_S_AXIS_TDATA_WIDTH),
    .C_ADDR_WIDTH             (C_ADDR_WIDTH_PIXEL_REMAP_420)
  ) REMAP_420_INST (
    .ACLK                     (aclk),               
    .ACLKEN                   (aclken),              
    .ARESETN                  (~aclk_reset),
  
    .REMAP_IN                 (remap_420_en),
  
    .TDATA_IN                 (tdata_to_remap),
    .TVALID_IN                (tvalid_to_remap),       
    .TREADY_OUT               (tready_from_remap),      
    .TUSER_IN                 (tuser_to_remap),
    .TLAST_IN                 (tlast_to_remap),
    .FID_IN                   (fid_to_remap),
                                                   
    .TDATA_OUT                (tdata_from_remap),
    .TVALID_OUT               (tvalid_from_remap),
    .TREADY_IN                (tready_to_remap),
    .TUSER_OUT                (tuser_from_remap),
    .TLAST_OUT                (tlast_from_remap),
    .FID_OUT                  (fid_from_remap),

    .FIFO_OVERFLOW_OUT        (fifo_overflow_from_remap),
    .FIFO_UNDERFLOW_OUT       (fifo_underflow_from_remap)
  );
end
endgenerate

generate 
if (C_INCLUDE_PIXEL_REPEAT) begin: generate_repeat_module
  v_axi4s_vid_out_v4_0_10_repeat #(
    .C_PIXELS_PER_CLOCK       (C_PIXELS_PER_CLOCK),
    .C_COMPONENTS_PER_PIXEL   (C_COMPONENTS_PER_PIXEL),
    .C_S_AXIS_COMPONENT_WIDTH (C_S_AXIS_COMPONENT_WIDTH),
    .C_S_AXIS_TDATA_WIDTH     (C_S_AXIS_TDATA_WIDTH)
  ) REPEAT_INST (
    .ACLK                     (aclk),               
    .ACLKEN                   (aclken),              
    .ARESETN                  (~aclk_reset),              
  
    .REPEAT_IN                (repeat_en),
  
    .TDATA_IN                 (tdata_to_repeat),
    .TVALID_IN                (tvalid_to_repeat),       
    .TREADY_OUT               (tready_from_repeat),      
    .TUSER_IN                 (tuser_to_repeat),        
    .TLAST_IN                 (tlast_to_repeat),        
    .FID_IN                   (fid_to_repeat),          
  
    .TDATA_OUT                (tdata_from_repeat),
    .TVALID_OUT               (tvalid_from_repeat),       
    .TREADY_IN                (tready_to_repeat),      
    .TUSER_OUT                (tuser_from_repeat),        
    .TLAST_OUT                (tlast_from_repeat),        
    .FID_OUT                  (fid_from_repeat)
  );
end
endgenerate

  v_axi4s_vid_out_v4_0_10_coupler #(
    .C_FAMILY                 (C_FAMILY),
    .C_HAS_ASYNC_CLK          (C_HAS_ASYNC_CLK),
    .C_ADDR_WIDTH             (C_ADDR_WIDTH),
    .C_PIXELS_PER_CLOCK       (C_PIXELS_PER_CLOCK),
    .C_COMPONENTS_PER_PIXEL   (C_COMPONENTS_PER_PIXEL),
    .C_S_AXIS_COMPONENT_WIDTH (C_S_AXIS_COMPONENT_WIDTH),  
    .C_NATIVE_COMPONENT_WIDTH (C_NATIVE_COMPONENT_WIDTH),
    .C_S_AXIS_TDATA_WIDTH     (C_S_AXIS_TDATA_WIDTH), 
    .C_NATIVE_DATA_WIDTH      (C_NATIVE_DATA_WIDTH)
  ) COUPLER_INST (
    .VIDEO_OUT_CLK            (vid_clk),
    .VID_CE                   (vid_clken),
    .VID_RESET                (vid_reset),

    .ACLK                     (aclk),
    .ACLKEN                   (aclken),
    .ARESETN                  (aresetn),

    .FIFO_WR_DATA             (fifo_data_to_coupler),
    .FIFO_VALID               (fifo_valid_to_coupler),
    .FIFO_READY               (fifo_ready_from_coupler),
                 
    .FIFO_RD_DATA             (fifo_data),
    .FIFO_EOL                 (fifo_eol),
    .FIFO_SOF                 (fifo_sof),
    .FIFO_FIELD_ID            (fifo_fid),
    .FIFO_RD_EN               (fifo_rd_en),
    .FIFO_LEVEL_WR            (),
    .FIFO_LEVEL_RD            (fifo_level_rd),
    .FIFO_EMPTY               (fifo_empty),

    .FIFO_OVERFLOW            (fifo_overflow_from_coupler),
    .FIFO_UNDERFLOW           (fifo_underflow_from_coupler)
  );

  v_axi4s_vid_out_v4_0_10_sync #(
    .C_ADDR_WIDTH             (C_ADDR_WIDTH),  
    .C_HYSTERESIS_LEVEL       (C_HYSTERESIS_LEVEL),
    .C_VTG_MASTER_SLAVE       (C_VTG_MASTER_SLAVE),
    .C_SYNC_LOCK_THRESHOLD    (C_SYNC_LOCK_THRESHOLD)
  ) SYNC_INST (
    .VID_OUT_CLK              (vid_clk),   
    .VID_CE                   (vid_clken), 
    .VID_RESET                (vid_reset), 

    .FIFO_SOF                 (fifo_sof), 
    .FIFO_EOL                 (fifo_eol),
    .FIFO_FIELD_ID            (fifo_fid), 
    .FIFO_RD_LEVEL            (fifo_level_rd),
    .FIFO_EMPTY               (fifo_empty),
    .FIFO_RD_EN               (fifo_rd_en),   
    
    .VTG_VSYNC                (vtg_vsync),
    .VTG_HSYNC                (vtg_hsync),
    .VTG_FIELD_ID             (vtg_field_id),
    .VTG_ACTIVE_VIDEO         (vtg_active_video),
    .VTG_EN                   (vtg_ce),

    .LOCKED                   (locked),
    .STATUS                   (status)
  );

  v_axi4s_vid_out_v4_0_10_formatter #(
    .C_NATIVE_DATA_WIDTH(C_NATIVE_DATA_WIDTH)
  ) FORMATTER_INST (
    .VID_OUT_CLK              (vid_clk),
    .VID_CE                   (vid_clken),
    .VID_RESET                (vid_reset),

    .FIFO_DATA                (fifo_data),
    .FIFO_RD_EN               (fifo_rd_en),

    .VTG_VSYNC                (vtg_vsync),
    .VTG_HSYNC                (vtg_hsync),
    .VTG_VBLANK               (vtg_vblank),
    .VTG_HBLANK               (vtg_hblank),
    .VTG_ACTIVE_VIDEO         (vtg_active_video),
    .VTG_FIELD_ID             (vtg_field_id),

    .LOCKED                   (locked),
  
    .VID_ACTIVE_VIDEO         (vid_active_video),
    .VID_VSYNC                (vid_vsync),
    .VID_HSYNC                (vid_hsync),
    .VID_VBLANK               (vid_vblank),
    .VID_HBLANK               (vid_hblank),	
    .VID_FIELD_ID             (vid_field_id),
    .VID_DATA                 (vid_data)
  );

endmodule

`default_nettype wire


