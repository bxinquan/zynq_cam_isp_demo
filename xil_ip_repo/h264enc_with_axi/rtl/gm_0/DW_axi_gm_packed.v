//-------------------------------------------------------------------
//
//  Filename    : DW_axi_gm_packed.v

//  Created     : 2017-4-15
//  Description : packed-version of DW files
//                auto generated
//
//-------------------------------------------------------------------




// ---------------------------------------------------------------------
//
//                   (C) COPYRIGHT 2005-2011 SYNOPSYS INC.
//                             ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to Synopsys Inc.  Your use or disclosure of this software
//  is subject to the terms and conditions of a written license agreement
//  between you or your company, and Synopsys, Inc.
//
//  The entire notice above must be reproduced on all authorized copies.
// 
// -------------------------------------------------------------------------


// Name:         GM_AW
// Default:      32
// Values:       32, ..., 64
// 
// Address width on AXI and GIF interfaces.
`define GM_AW 32


// Name:         GM_DW
// Default:      32
// Values:       8 16 32 64 128 256 512
// 
// Data width on AXI and GIF interfaces.  
//  No distinction is made in between read and write channels.
`define GM_DW 64


// Name:         GM_ID
// Default:      4
// Values:       1 2 3 4 5 6 7 8 9 10 11 12
// 
// Width of transaction ID field of the AXI and GIF interface.
`define GM_ID 4


// Name:         GM_BW
// Default:      4
// Values:       4 5 6 7 8
// 
// Width of the burst length field of the AXI and GIF interface.
`define GM_BW 4


// Name:         GM_LOWPWR_HS_IF
// Default:      false
// Values:       false (0), true (1)
// 
// GM_LOWPWR_HS_IF 
// If true, the low-power handshaking interface-csysreq, csysack, and 
// cactive signals and associated control logic is implemented. 
// If false, no support for low-power handshaking interface is provided.
`define GM_LOWPWR_HS_IF 0



// Name:         GM_LOWPWR_NOPX_CNT
// Default:      0
// Values:       0, ..., 4294967295
// Enabled:      GM_LOWPWR_HS_IF==1
// 
// GM_LOWPWR_NOPX_CNT 
// Number of AXI clock cycles to wait before cactive signal de-asserts, 
// when there are no pending transactions. 
// Note that if csysreq de-asserts while waiting this number of cycles, cactive will 
// immediately de-assert. If a new transaction is initiated during the wait period, the 
// counting will be halted, cactive will not de-assert, and the counting will be 
// reinitiated when there are no pending transactions. 
// Available only if GM_LOWPWR_HS_IF is true
`define GM_LOWPWR_NOPX_CNT 32'd0

//Creates a define for enabling legacy low power interface

`define GM_LOWPWR_NOPX_CNT_W 1


// Name:         GM_LOWPWR_LEGACY_IF
// Default:      0
// Values:       0, 1
// Enabled:      GM_LOWPWR_HS_IF==1
// 
// Legacy low power interface selection
`define GM_LOWPWR_LEGACY_IF 0

//Creates a define for enabling low power interface

// `define GM_HAS_LOWPWR_HS_IF

//Creates a define for enabling legacy low power interface

// `define GM_HAS_LOWPWR_LEGACY_IF

//Creates a define for calculating the maximum number of pending read transactions

// Name:         GM_MAX_PENDTRANS_READ
// Default:      4
// Values:       1, ..., 32
// Enabled:      GM_LOWPWR_HS_IF==1
// 
// GM_MAX_PENDTRANS_READ 
// Maximum number of AXI read transactions that may be outstanding 
// at any time 
// Available only if GM_LOWPWR_HS_IF is true
`define GM_MAX_PENDTRANS_READ 4

//Creates a define for calculating the maximum number of pending write transactions

// Name:         GM_MAX_PENDTRANS_WRITE
// Default:      4
// Values:       1, ..., 32
// Enabled:      GM_LOWPWR_HS_IF==1
// 
// GM_MAX_PENDTRANS_WRITE 
// Maximum number of AXI write transactions that may be outstanding 
// at any time 
// Available only if GM_LOWPWR_HS_IF is true
`define GM_MAX_PENDTRANS_WRITE 4

//Creates a define for calculating the width of the counter needed to 
//keep track of pending requests

`define GM_CNT_PENDTRANS_READ_W 3

//Creates a define for calculating the width of the counter needed to 
//keep track of pending requests

`define GM_CNT_PENDTRANS_WRITE_W 3


`define GM_WW (`GM_DW / 8 )


// Name:         GM_DIRECT_AXI_READY
// Default:      true
// Values:       false (0), true (1)
// 
// If true, AXI awready, wready, and rready inputs are 
//  combinationally connected to the GIF saccept output. 
//  If false, these inputs are registered, inserting one 
//  cycle of latency.
`define GM_DIRECT_AXI_READY 1


// Name:         GM_REQ_BUFFER
// Default:      1
// Values:       1 2 3 4
// 
// Depth of GIF request buffer. Higher values allow GIF  
//  requests to be buffered, rather than stalled, if the AXI 
//  address channel stalls DW_axi_gm transactions. Higher  
//  values also increase gate count. 
//  If GM_DIRECT_GIF_READY is false, recommended to set to 2 
//  or higher in order to avoid performance degradation.
`define GM_REQ_BUFFER 1

`define GM_REQ_BUFFER_AW (`GM_REQ_BUFFER/3)+1


// Name:         GM_WDATA_BUFFER
// Default:      1
// Values:       1 2 3 4
// 
// Depth of GIF write data buffer. Higher values allow GIF 
//  write data to be buffered, rather than stalled, if the AXI 
//  write data channel stalls DW_axi_gm transactions. Higher 
//  values also increase gate count. 
//  If GM_DIRECT_GIF_READY is false, recommended to be set 
//  to 2 or higher in order to avoid write performance 
//  degradation.
`define GM_WDATA_BUFFER 1

`define GM_WDATA_BUFFER_AW (`GM_WDATA_BUFFER/3)+1


// Name:         GM_DIRECT_GIF_READY
// Default:      true
// Values:       false (0), true (1)
// 
// If true, the mready input is combinationally connected to the 
//  rready/bready outputs.  
//  If false, the mready input is registered, inserting one cycle  
//  of latency.
`define GM_DIRECT_GIF_READY 1


// Name:         GM_RESP_BUFFER
// Default:      1
// Values:       1 2 3 4
// 
// Depth of combined AXI read and write response buffer. Higher values 
//  allow AXI responses to be buffered, rather than stalled, if the GIF 
//  response channel stalls DW_axi_gm transactions. Higher values also 
//  increase gate count.
`define GM_RESP_BUFFER 1

`define GM_RESP_BUFFER_AW (`GM_RESP_BUFFER/3)+1


// Name:         GM_BLOCK_READ
// Default:      false
// Values:       false (0), true (1)
// 
// If true, current GIF read request must complete (all read data 
//  received from AXI read data channel) before the next GIF request 
//  is accepted by DW_axi_gm. 
//  If false, GIF requests are allowed to be queued in the request 
//  buffer and transferred to the AXI read address channel before 
//  outstanding read requests complete.
`define GM_BLOCK_READ 0



// Name:         GM_BLOCK_WRITE
// Default:      false
// Values:       false (0), true (1)
// 
// If true, current GIF write request must complete (write reponse 
//  received from AXI write response channel) before the next GIF 
//  request is accepted by DW_axi_gm. 
//  If false, GIF requests are allowed to be queued in the request 
//  buffer and transferred to the AXI write address channel before 
//  outstanding write requests complete.
`define GM_BLOCK_WRITE 0


// -------------------------------------
// simulation parameters available in cC
// -------------------------------------


// Name:         SIM_ACLK_PERIOD
// Default:      10
// Values:       -2147483648, ..., 2147483647
// 
// This is a testbench parameter. The design does not depend on this parameter.  
// This parameter specifies the clock period of the AXI interface.
`define SIM_ACLK_PERIOD 10


// Name:         SIM_GCLK_PERIOD
// Default:      10
// Values:       10 20 30 40 50 60 70
// 
// This is a testbench parameter. The design does not depend on this parameter.  
// This parameter specifies the clock period of the generic interface GIF.
`define SIM_GCLK_PERIOD 10


// `define GM_ENCRYPT

//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------

 // Existence parameter definitions for BCM modules


`define RM_BCM01 0


`define RM_BCM02 0


`define RM_BCM03 0


`define RM_BCM05 0


`define RM_BCM06 0


`define RM_BCM07 0


`define RM_BCM08 0


`define RM_BCM09 0


`define RM_BCM10 0


`define RM_BCM11 0


`define RM_BCM12 0


`define RM_BCM15 0


`define RM_BCM16 0


`define RM_BCM21 0


`define RM_BCM22 0


`define RM_BCM23 0


`define RM_BCM24 0


`define RM_BCM25 0


`define RM_BCM26 0


`define RM_BCM27 0


`define RM_BCM28 0


`define RM_BCM29 0


`define RM_BCM30 0


`define RM_BCM31 0


`define RM_BCM32 0


`define RM_BCM43 0


`define RM_BCM44 0


`define RM_BCM46_A 0


`define RM_BCM46_B 0


`define RM_BCM46_C 0


`define RM_BCM46_D 0


`define RM_BCM47 0


`define RM_BCM51 0


`define RM_BCM52 0


`define RM_BCM53 0


`define RM_BCM54 0


`define RM_BCM55 0


`define RM_BCM57 0


`define RM_BCM58 0


`define RM_BCM59 0


`define RM_BCM64 0


`define RM_BCM65 0


`define RM_BCM66 0


`define RM_BCM71 0


`define RM_BCM72 0


`define RM_BCM73 0


`define RM_BCM76 0
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------

////////////////////////////////////////////////////////////////////////////////
//
//                  (C) COPYRIGHT 2004 - 2011 SYNOPSYS, INC.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to Synopsys, Inc.  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and Synopsys, Inc.
//
//  The entire notice above must be reproduced on all authorized copies.
//
// Filename    : DW_axi_gm_bcm57.v
// Author      : Rick Kelly    April 26, 2004
// Description : DW_axi_gm_bcm57.v Verilog module for DWbb
//
// DesignWare IP ID: e2f0bec1
//
////////////////////////////////////////////////////////////////////////////////




  module gm_0_DW_axi_gm_bcm57 (
	clk,
	rst_n,
	init_n,
	wr_n,
	data_in,
	wr_addr,
        rd_addr,
	data_out
	);

   parameter DATA_WIDTH = 4;	// RANGE 1 to 256
   parameter DEPTH = 8;		// RANGE 2 to 256
   parameter MEM_MODE = 0;	// RANGE 0 to 3
   parameter ADDR_WIDTH = 3;	// RANGE 1 to 8

   input 			clk;		// clock input
   input 			rst_n;		// active low async. reset
   input 			init_n;		// active low sync. reset
   input 			wr_n;		// active low RAM write enable
   input [DATA_WIDTH-1:0]	data_in;	// RAM write data input bus
   input [ADDR_WIDTH-1:0]	wr_addr;	// RAM write address bus
   input [ADDR_WIDTH-1:0]	rd_addr;	// RAM read address bus

   output [DATA_WIDTH-1:0]	data_out;	// RAM read data output bus


   reg [DATA_WIDTH-1:0]		mem [0 : DEPTH-1];

   reg [ADDR_WIDTH-1:0]		wr_addr_pipe;
   reg				we_pipe;
   reg [DATA_WIDTH-1:0]		data_in_pipe;
   reg [ADDR_WIDTH-1:0]		rd_addr_pipe;
   reg [DATA_WIDTH-1:0]		data_out_pipe;

  wire [ADDR_WIDTH-1:0]		write_addr;
  wire				write_en_n;
  wire [DATA_WIDTH-1:0]		write_data;
  wire [ADDR_WIDTH-1:0]		read_addr;
  wire [DATA_WIDTH-1:0]		read_data;
   
  // FM_2_22: Possible range overflow
  // Simulation will catch errors here if they exist.
  // leda FM_2_22 off
  assign read_data = mem[read_addr];
  // leda FM_2_22 on

  always @ (posedge clk or negedge rst_n) begin : PROC_mem_array_regs
    integer i;
    if (rst_n == 1'b0) begin
      for (i=0 ; i < DEPTH ; i=i+1)
	mem[i] <= {DATA_WIDTH{1'b0}};
    end else if (init_n == 1'b0) begin
      for (i=0 ; i < DEPTH ; i=i+1)
	mem[i] <= {DATA_WIDTH{1'b0}};
    end else begin
      if (write_en_n == 1'b0)
  // FM_2_22: Possible range overflow
  // Simulation will catch errors here if they exist.
  // leda FM_2_22 off
	mem[write_addr] <= write_data;
  // leda FM_2_22 on
    end
  end
  
  always @ (posedge clk or negedge rst_n) begin : PROC_retiming_regs
    if (rst_n == 1'b0) begin
      we_pipe <= 1'b0;
      wr_addr_pipe <= {ADDR_WIDTH{1'b0}};
      data_in_pipe <= {DATA_WIDTH{1'b0}};
      rd_addr_pipe <= {ADDR_WIDTH{1'b0}};
      data_out_pipe <= {DATA_WIDTH{1'b0}};
    end else if (init_n == 1'b0) begin
      we_pipe <= 1'b0;
      wr_addr_pipe <= {ADDR_WIDTH{1'b0}};
      data_in_pipe <= {DATA_WIDTH{1'b0}};
      rd_addr_pipe <= {ADDR_WIDTH{1'b0}};
      data_out_pipe <= {DATA_WIDTH{1'b0}};
    end else begin
      we_pipe <= wr_n;
      wr_addr_pipe <= wr_addr;
      data_in_pipe <= data_in;
      rd_addr_pipe <= rd_addr;
      data_out_pipe <= read_data;
    end
  end


  assign write_en_n = ((MEM_MODE & 2)==2)? we_pipe : wr_n;
  assign write_data = ((MEM_MODE & 2)==2)? data_in_pipe : data_in;
  assign write_addr = ((MEM_MODE & 2)==2)? wr_addr_pipe : wr_addr;
  assign read_addr  = ((MEM_MODE & 2)==2)? rd_addr_pipe : rd_addr;
  assign data_out = ((MEM_MODE & 1)==1)? data_out_pipe : read_data;
   
endmodule
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------

////////////////////////////////////////////////////////////////////////////////
//
//                  (C) COPYRIGHT 2004 - 2011 SYNOPSYS, INC.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to Synopsys, Inc.  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and Synopsys, Inc.
//
//  The entire notice above must be reproduced on all authorized copies.
//
// Filename    : DW_axi_gm_bcm06.v
// Author      : Rick Kelly         4/14/04
// Description : DW_axi_gm_bcm06.v Verilog module for DWbb
//
// DesignWare IP ID: 33a0015d
//
////////////////////////////////////////////////////////////////////////////////

module gm_0_DW_axi_gm_bcm06 (
    clk,
    rst_n,
    init_n,
    push_req_n,
    pop_req_n,
    diag_n,
    ae_level,
    af_thresh,
    we_n,
    empty,
    almost_empty,
    half_full,
    almost_full,
    full,
    error,
    wr_addr,
    rd_addr,
    wrd_count,
    nxt_empty_n,
    nxt_full,
    nxt_error
    );

parameter DEPTH  = 4;		// RANGE 2 to 16777216
parameter ERR_MODE  =  0 ;	// RANGE 0 to 2
parameter ADDR_WIDTH = 2;	// RANGE 1 to 24

input			clk;		// Input Clock (pos edge)
input			rst_n;		// Async reset (active low)
input			init_n;		// Sync reset (active low) (FIFO clear/flush)
input			push_req_n;	// Push request (active low)
input			pop_req_n;	// Pop Request (active low)
input			diag_n;		// Diagnostic sync. reset rd_addr (active low)
input  [ADDR_WIDTH-1:0]	ae_level;	// Almost empty level input bus
input  [ADDR_WIDTH-1:0]	af_thresh;	// Almost full threshold input bus
output			we_n;		// RAM Write Enable output (active low)
output			empty;		// FIFO Empty flag output (active high)
output			almost_empty;	// FIFO Almost Empty flag output (active high)
output			half_full;	// FIFO Half Full flag output (active high)
output			almost_full;	// FIFO almost Full flag output (active high)
output			full;		// FIFO full flag output (active high)
output			error;		// FIFO Error flag output (active high)
output [ADDR_WIDTH-1:0]	wr_addr;	// RAM Write Address output bus
output [ADDR_WIDTH-1:0]	rd_addr;	// RAM Read Address output bus
output [ADDR_WIDTH-1:0]	wrd_count;	// Words in FIFO (not always accurate at full)
output			nxt_empty_n;	// Look ahead empty flag (active low)
output			nxt_full;	// Look ahead full flag
output			nxt_error;	// Look ahead empty flag


wire			next_empty_n;
reg			empty_n;
wire			next_almost_empty_n;
reg			almost_empty_n;
wire			next_half_full;
reg			half_full_int;
wire			next_almost_full;
reg			almost_full_int;
wire			next_full;
reg			full_int;
wire			next_error;
reg			error_int;
wire   [ADDR_WIDTH-1:0]	next_wr_addr;
reg    [ADDR_WIDTH-1:0]	wr_addr_int;
wire			next_wr_addr_at_max;
reg			wr_addr_at_max;
wire   [ADDR_WIDTH-1:0]	next_rd_addr;
reg    [ADDR_WIDTH-1:0]	rd_addr_int;
wire			next_rd_addr_at_max;
reg			rd_addr_at_max;
wire   [ADDR_WIDTH-1:0]	next_word_count;
reg    [ADDR_WIDTH-1:0]	word_count;
reg    [ADDR_WIDTH-1:0]	advanced_word_count;

wire			advance_wr_addr;
wire   [ADDR_WIDTH:0]	advanced_wr_addr;
wire			advance_rd_addr;
wire   [ADDR_WIDTH:0]	advanced_rd_addr;
wire			inc_word_count;
wire			dec_word_count;

// N_10P_R_D: Use lower case for net name
// leda N_10P_R_D off
wire [31:0]	LastAddress;
wire [31:0]	AE_level_val;
wire [31:0]	HF_thresh_val;
wire [31:0]	AF_thresh_val;
// leda N_10P_R_D on


  assign LastAddress   =  DEPTH - 1;
  assign AE_level_val  =  ae_level;
  assign HF_thresh_val = (DEPTH + 1)/2;
  assign AF_thresh_val =  af_thresh;

  assign we_n = push_req_n | (full_int & pop_req_n);


  assign advance_wr_addr = ~(push_req_n | (full_int & pop_req_n));

  assign advance_rd_addr = ~pop_req_n  & empty_n;


  assign advanced_wr_addr = {wr_addr_int,advance_wr_addr} + 1;
  assign next_wr_addr = (wr_addr_at_max  &advance_wr_addr)?
				{ADDR_WIDTH{1'b0}} :
				advanced_wr_addr[ADDR_WIDTH:1];

  assign advanced_rd_addr = {rd_addr_int,advance_rd_addr} + 1;
  assign next_rd_addr = ((rd_addr_at_max & advance_rd_addr) ||
			    ((diag_n==1'b0)&&(ERR_MODE == 0)))?
				{ADDR_WIDTH{1'b0}} :
				advanced_rd_addr[ADDR_WIDTH:1];


  assign next_rd_addr_at_max = ((next_rd_addr & LastAddress[ADDR_WIDTH-1:0]) == LastAddress[ADDR_WIDTH-1:0])? 1'b1 : 1'b0;

  assign next_wr_addr_at_max = ((next_wr_addr & LastAddress[ADDR_WIDTH-1:0]) == LastAddress[ADDR_WIDTH-1:0])? 1'b1 : 1'b0;

  assign inc_word_count = ~push_req_n & pop_req_n & ~full_int |
			  ~push_req_n & ~empty_n;

  assign dec_word_count = push_req_n & ~pop_req_n & empty_n;

  always @ (word_count or dec_word_count) begin : PROC_infer_incdec
    if (dec_word_count)
      advanced_word_count = word_count - 1;
    else
      advanced_word_count = word_count + 1;
  end

  assign next_word_count = ((inc_word_count | dec_word_count) == 1'b0)?
				word_count : advanced_word_count;

  assign next_full =	((word_count == LastAddress[ADDR_WIDTH-1:0])? ~push_req_n & pop_req_n : 1'b0) |
			(full_int & push_req_n & pop_req_n) |
			(full_int & ~push_req_n);

  assign next_empty_n = (next_word_count == {ADDR_WIDTH{1'b0}})? next_full : 1'b1;


  assign next_half_full = (next_word_count >= HF_thresh_val[ADDR_WIDTH-1:0])? 1'b1 : next_full;


  assign next_almost_empty_n = ~(((next_word_count <= AE_level_val[ADDR_WIDTH-1:0])? 1'b1 : 1'b0) &
				((1<<ADDR_WIDTH == DEPTH)? ~next_full : 1'b1)) ;


  assign next_almost_full = (next_word_count >= AF_thresh_val[ADDR_WIDTH-1:0])? 1'b1 :
				next_full;


  assign next_error = (~pop_req_n & ~empty_n) |
			(~push_req_n & pop_req_n & full_int) |
			((ERR_MODE==0)? ((|(wr_addr_int ^ rd_addr_int)) ^ (empty_n & ~full_int)) : 1'b0) |
			((ERR_MODE==2)? 1'b0 : error_int);


  always @ (posedge clk or negedge rst_n) begin : PROC_registers
    if (rst_n == 1'b0) begin
      empty_n          <= 1'b0;
      almost_empty_n   <= 1'b0;
      half_full_int    <= 1'b0;
      almost_full_int  <= 1'b0;
      full_int         <= 1'b0;
      error_int        <= 1'b0;
      wr_addr_int      <= {ADDR_WIDTH{1'b0}};
      rd_addr_at_max   <= 1'b0;
      wr_addr_at_max   <= 1'b0;
      rd_addr_int      <= {ADDR_WIDTH{1'b0}};
      word_count       <= {ADDR_WIDTH{1'b0}};
    end else if (init_n == 1'b0) begin
      empty_n          <= 1'b0;
      almost_empty_n   <= 1'b0;
      half_full_int    <= 1'b0;
      almost_full_int  <= 1'b0;
      full_int         <= 1'b0;
      error_int        <= 1'b0;
      rd_addr_at_max   <= 1'b0;
      wr_addr_at_max   <= 1'b0;
      wr_addr_int      <= {ADDR_WIDTH{1'b0}};
      rd_addr_int      <= {ADDR_WIDTH{1'b0}};
      word_count       <= {ADDR_WIDTH{1'b0}};
    end else begin
      empty_n          <= next_empty_n;
      almost_empty_n   <= next_almost_empty_n;
      half_full_int    <= next_half_full;
      almost_full_int  <= next_almost_full;
      full_int         <= next_full;
      error_int        <= next_error;
      rd_addr_at_max   <= next_rd_addr_at_max;
      wr_addr_at_max   <= next_wr_addr_at_max;
      wr_addr_int      <= next_wr_addr;
      rd_addr_int      <= next_rd_addr;
      word_count       <= next_word_count;
    end
  end

  assign empty = ~empty_n;
  assign almost_empty = ~almost_empty_n;
  assign half_full = half_full_int;
  assign almost_full = almost_full_int;
  assign full = full_int;
  assign error = error_int;
  assign wr_addr = wr_addr_int;
  assign rd_addr = rd_addr_int;
  assign wrd_count = word_count;
  assign nxt_empty_n = next_empty_n | ~init_n;
  assign nxt_full    = next_full    &  init_n;
  assign nxt_error   = next_error   &  init_n;

endmodule

//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------

////////////////////////////////////////////////////////////////////////////////
//
//                  (C) COPYRIGHT 2004  - 2011 SYNOPSYS, INC.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to Synopsys, Inc.  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and Synopsys, Inc.
//
//  The entire notice above must be reproduced on all authorized copies.
//
// Filename    : DW_axi_gm_bcm65.v
// Author      : ALS         04/28/04
// Description : DW_axi_gm_bcm65.v Verilog module for DWbb
//
// DesignWare IP ID: 15e30698
//
////////////////////////////////////////////////////////////////////////////////


module gm_0_DW_axi_gm_bcm65 
    (clk, rst_n, init_n, push_req_n, pop_req_n, diag_n, data_in, empty, 
    almost_empty, half_full, almost_full, full, error, data_out
    );
parameter WIDTH  = 8;                   // RANGE 1 TO 256
parameter DEPTH  = 4;                   // RANGE 2 TO 256
parameter AE_LEVEL = 1;                 // RANGE 0 TO 255
parameter AF_LEVEL = 1;                 // RANGE 0 TO 255
parameter ERR_MODE  =  0 ;              // RANGE 0 TO 2
parameter RST_MODE  =  0 ;              // RANGE 0 TO 1
parameter ADDR_WIDTH = 2 ;              // RANGE 1 TO 8

 input			clk;		// clock input
 input			rst_n;		// active low async. reset
 input			init_n;		// active low sync. reset (FIFO flush)
 input			push_req_n;	// active low push request
 input			pop_req_n;	// active low pop request
 input			diag_n;		// active low diagnostic input
 input [WIDTH-1 : 0]	data_in;	// FIFO input data bus
 output			empty;		// empty status flag
 output			almost_empty;	// almost empty status flag
 output			half_full;	// half full status flag
 output			almost_full;	// almost full status flag
 output			full;		// full status flag
 output			error;		// error status flag
 output [WIDTH-1 : 0 ]  data_out;	// FIFO outptu data bus

 wire                ram_async_rst_n, ram_sync_rst_n;
 wire [ADDR_WIDTH-1 : 0] ram_rd_addr, ram_wr_addr;
 wire [31:00] ae_level_i;
 wire [31:00] af_thresh_i; 
 wire ram_we_n;
    
// Dummy wires - used to suppress unconnected ports warnings by Leda tool - BR - 2/22/2010
 wire nen_unconn, nf_unconn, n_error_unconn; 
 wire [ADDR_WIDTH-1:0] wrdc_unconn;
   
  assign ae_level_i = AE_LEVEL;
  assign af_thresh_i = DEPTH - AF_LEVEL; 

  assign ram_async_rst_n = (RST_MODE == 0) ? rst_n : 1'b1;
  assign ram_sync_rst_n  = (RST_MODE == 0) ? init_n : 1'b1;
  

  gm_0_DW_axi_gm_bcm06
   #(DEPTH, ERR_MODE, ADDR_WIDTH) U_FIFO_CTL(
			.clk(clk),
			.rst_n(rst_n),
                        .init_n(init_n),
			.push_req_n(push_req_n),
			.pop_req_n(pop_req_n),
            		.ae_level(ae_level_i[ADDR_WIDTH-1:0]),
            		.af_thresh(af_thresh_i[ADDR_WIDTH-1:0]),
			.diag_n(diag_n),
			.empty(empty),
			.almost_empty(almost_empty),
			.half_full(half_full),
			.almost_full(almost_full),
			.full(full),
			.error(error),
			.we_n(ram_we_n),
			.wr_addr(ram_wr_addr),
			.rd_addr(ram_rd_addr),
			.wrd_count(wrdc_unconn),
			.nxt_empty_n(nen_unconn),
			.nxt_full(nf_unconn),
			.nxt_error(n_error_unconn)
			);
    
  gm_0_DW_axi_gm_bcm57
   #(WIDTH, DEPTH, 0, ADDR_WIDTH) U_FIFO_MEM( 
			.clk(clk),
			.rst_n(ram_async_rst_n),
                        .init_n(ram_sync_rst_n),                                       
			.wr_n(ram_we_n),
			.rd_addr(ram_rd_addr),
			.wr_addr(ram_wr_addr),
			.data_in(data_in),
			.data_out(data_out)
			);


endmodule
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
// ---------------------------------------------------------------------
//
//                   (C) COPYRIGHT 2005-2011 SYNOPSYS INC.
//                             ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to Synopsys Inc.  Your use or disclosure of this software
//  is subject to the terms and conditions of a written license agreement
//  between you or your company, and Synopsys, Inc.
//
//  The entire notice above must be reproduced on all authorized copies.
// 
// ----------------------------------------------------------------------------
// Author: Christian Graber
// ----------------------------------------------------------------------------

module gm_0_DW_axi_gm_core (/*AUTOARG*/
  // Outputs
  saccept, sid, svalid, slast, sdata, sresp, awvalid, awid, awaddr, 
  awlen, awsize, awburst, awlock, awcache, awprot, wvalid, wlast, 
  wid, wdata, wstrb, bready, arvalid, arid, araddr, arlen, arsize, 
  arburst, arlock, arcache, arprot, rready, 
  // Inputs
  aclk, aresetn, gclken,
  mid, maddr, mread, mwrite, mlock, mlen, 
  msize, mburst, mcache, mprot, mdata, mwstrb, mready, awready, 
  wready, bvalid, bid, bresp, arready, rvalid, rid, rlast, rdata, 
  rresp
  );

  
  // --------------------------------------------------------------------------
  // Parameters
  // --------------------------------------------------------------------------

  // Low Power FSM
  
  // --------------------------------------------------------------------------
  // Ports
  // --------------------------------------------------------------------------
  
  // Global signals  
  input                             aclk;
  input                             aresetn;
  input                             gclken;
  
  // GIF request
  input [`GM_ID-1:0]                mid;
  input [`GM_AW-1:0]                maddr;
  input                             mread;
  input                             mwrite;
  input                             mlock;
  input [`GM_BW-1:0]                mlen;
  input [2:0]                       msize;
  input [1:0]                       mburst;
  input [3:0]                       mcache;
  input [2:0]                       mprot;
  input [`GM_DW-1:0]                mdata;
  input [`GM_WW-1:0]                mwstrb;
  output                            saccept;
  
  // GIF response
  output [`GM_ID-1:0]               sid;
  output                            svalid;
  output                            slast;
  output [`GM_DW-1:0]               sdata;
  output [2:0]                      sresp;
  input                             mready;
  
  // AXI write request
  output                            awvalid;
  output [`GM_ID-1:0]               awid;
  output [`GM_AW-1:0]               awaddr;
  output [`GM_BW-1:0]               awlen;
  output [2:0]                      awsize;
  output [1:0]                      awburst;
  output [1:0]                      awlock;
  output [3:0]                      awcache;
  output [2:0]                      awprot;
  input                             awready;
  
  // AXI write data
  output                            wvalid;
  output                            wlast;
  output [`GM_ID-1:0]               wid;
  output [`GM_DW-1:0]               wdata;
  output [`GM_WW-1:0]               wstrb;
  input                             wready;
  
  // AXI write response
  input                             bvalid;
  input [`GM_ID-1:0]                bid;
  input [1:0]                       bresp;
  output                            bready;  
  
  // AXI read request
  output                            arvalid;
  output [`GM_ID-1:0]               arid;
  output [`GM_AW-1:0]               araddr;
  output [`GM_BW-1:0]               arlen;
  output [2:0]                      arsize;
  output [1:0]                      arburst;
  output [1:0]                      arlock;
  output [3:0]                      arcache;
  output [2:0]                      arprot;
  input                             arready;
  
  // AXI read response & read data  
  input                             rvalid;
  input [`GM_ID-1:0]                rid;
  input                             rlast;
  input [`GM_DW-1:0]                rdata;
  input [1:0]                       rresp;
  output                            rready;
  
  
  
  // --------------------------------------------------------------------------
  // Internal Signals
  // --------------------------------------------------------------------------
  
  reg                                    saccept_r;  
  reg [`GM_BW-1:0]                       wburst_gif_count;
  reg                                    saccept_reqb_block;
  reg                                    rready_gc;
  reg                                    bready_gc;
  reg                                    read_active;
  reg                                    read_active_reset;
  reg                                    write_active;
  reg                                    write_active_reset;  
  reg [`GM_DW+`GM_ID+3:0]                respb_data_in;
  reg                                    gvalid;
  reg                                    mready_reg;
  reg                                    bselect;
  reg                                    wready_reg;
  reg                                    arready_reg;
  reg                                    awready_reg;
  reg [`GM_BW-1:0]                       wburst_axi_count;

  
  wire                                   saccept_reqb;
  wire                                   saccept_wb;
  wire                                   svalid;
  wire [2:0]                             sresp;
  wire                                   slast;
  wire                                   gready;  
  wire                                   respb_push_n;
  wire                                   respb_pop_n;
  wire                                   respb_push_gc_n;
  wire                                   respb_pop_gc_n;  
  wire                                   respb_empty;
  wire                                   respb_full;
  wire [`GM_DW+`GM_ID+3:0]               respb_data_out;
  wire [`GM_AW+`GM_ID+`GM_BW+14:0]       reqb_data_in;
  wire [`GM_AW+`GM_ID+`GM_BW+14:0]       reqb_data_out;
  wire                                   reqb_push_gc_n;
  wire                                   reqb_pop_n;
  wire                                   reqb_push_n;
  wire                                   reqb_empty;
  wire                                   reqb_full;  
  wire [`GM_ID+`GM_DW+`GM_WW+`GM_BW-1:0] wb_data_in;
  wire [`GM_ID+`GM_DW+`GM_WW+`GM_BW-1:0] wb_data_out;
  wire                                   wb_push_gc_n;
  wire                                   wb_pop_n;
  wire                                   wb_push_n;
  wire                                   wb_empty;
  wire                                   wb_full;
  wire [`GM_BW-1:0]                      wlen;  
  wire                                   wburst_gif_active;     

  
  // --------------------------------------------------------------------------
  // REQUEST PHASE
  // --------------------------------------------------------------------------
  
  // In this phase, request from the generic interface are pushed into
  // the request buffer and the write data buffer. Push & pop can only
  // be active once per gclk period. Signals with 'gc' identifier are
  // active during the entire gclk period.
  
  assign reqb_pop_n = ~((arvalid & arready) | (awvalid & awready));
  assign reqb_push_gc_n = ~((mread ^ mwrite) & ~wburst_gif_active & saccept);

  assign reqb_push_n = (gclken==1'b1) ? reqb_push_gc_n : 1'b1;
  assign reqb_data_in = {mid,mprot,mcache,mread,mwrite,mlock,mburst,msize,mlen,maddr};

  // leda W287 off
  // turn off check for unconnected port
  
  // REQUEST BUFFER
  gm_0_DW_axi_gm_bcm65
   #(`GM_AW+`GM_ID+`GM_BW+15,
                              `GM_REQ_BUFFER,
                              1,
                              `GM_REQ_BUFFER-1,
                              0,
                              0,
                              `GM_REQ_BUFFER_AW)
  req_buffer(
             .clk(aclk),
             .rst_n(aresetn),
             .init_n(1'b1),
             .push_req_n(reqb_push_n),
             .pop_req_n(reqb_pop_n),
             .diag_n(1'b1),
             .data_in(reqb_data_in),
             .empty(reqb_empty),
             .almost_empty(),
             .half_full(),
             .almost_full(),
             .full(reqb_full),
             .error(),
             .data_out(reqb_data_out)
             );
  // leda W287 on
  
  assign araddr = reqb_data_out[`GM_AW-1:0];
  assign arlen = reqb_data_out[`GM_AW+`GM_BW-1:`GM_AW];
  assign arsize = reqb_data_out[`GM_AW+`GM_BW+2:`GM_AW+`GM_BW];
  assign arburst = reqb_data_out[`GM_AW+`GM_BW+4:`GM_AW+`GM_BW+3];
  assign arlock = {reqb_data_out[`GM_AW+`GM_BW+5],1'b0};
  assign arcache = reqb_data_out[`GM_AW+`GM_BW+11:`GM_AW+`GM_BW+8];
  assign arprot = reqb_data_out[`GM_AW+`GM_BW+14:`GM_AW+`GM_BW+12];
  assign arid = reqb_data_out[`GM_AW+`GM_ID+`GM_BW+14:`GM_AW+`GM_BW+15];
  assign arvalid = ~reqb_empty & reqb_data_out[`GM_AW+`GM_BW+7];
  
  assign awaddr = reqb_data_out[`GM_AW-1:0];
  assign awlen = reqb_data_out[`GM_AW+`GM_BW-1:`GM_AW];
  assign awsize = reqb_data_out[`GM_AW+`GM_BW+2:`GM_AW+`GM_BW];
  assign awburst = reqb_data_out[`GM_AW+`GM_BW+4:`GM_AW+`GM_BW+3];
  assign awlock = {reqb_data_out[`GM_AW+`GM_BW+5],1'b0};
  assign awcache = reqb_data_out[`GM_AW+`GM_BW+11:`GM_AW+`GM_BW+8];
  assign awprot = reqb_data_out[`GM_AW+`GM_BW+14:`GM_AW+`GM_BW+12];
  assign awid = reqb_data_out[`GM_AW+`GM_ID+`GM_BW+14:`GM_AW+`GM_BW+15];                          
  assign awvalid = ~reqb_empty & reqb_data_out[`GM_AW+`GM_BW+6];

    
  // Enable direct feedthrough of arready and awready
  assign saccept_reqb = (`GM_DIRECT_AXI_READY) ? 
                        (~reqb_full | (reqb_full & arready & awready)) : 
                        ~reqb_full;
  
  assign wb_push_gc_n = ~(mwrite & saccept);
  assign wb_push_n = (gclken==1'b1) ? wb_push_gc_n : 1'b1;
  assign wb_pop_n = ~(wvalid & wready);

  assign wb_data_in = {mid,mlen,mwstrb,mdata};

  // Leda W287 off
  // Turn off check for unconnected port
  
  // WRITE DATA BUFFER
  gm_0_DW_axi_gm_bcm65
   #(`GM_ID+`GM_DW+`GM_WW+`GM_BW,
                              `GM_WDATA_BUFFER,
                              1,
                              `GM_WDATA_BUFFER-1,
                              0,
                              0,
                              `GM_WDATA_BUFFER_AW)
    wdata_buffer(
              .clk(aclk),
              .rst_n(aresetn),
              .init_n(1'b1),
              .push_req_n(wb_push_n),
              .pop_req_n(wb_pop_n),
              .diag_n(1'b1),
              .data_in(wb_data_in),
              .empty(wb_empty),
              .almost_empty(),
              .half_full(),
              .almost_full(),
              .full(wb_full),
              .error(),
              .data_out(wb_data_out)
              );
  // leda W287 on
  
  assign wdata = wb_data_out[`GM_DW-1:0];
  assign wstrb = wb_data_out[`GM_DW+`GM_WW-1:`GM_DW];
  assign wlen = wb_data_out[`GM_DW+`GM_WW+`GM_BW-1:`GM_DW+`GM_WW];
  assign wid = wb_data_out[`GM_ID+`GM_DW+`GM_WW+`GM_BW-1:`GM_DW+`GM_WW+`GM_BW];
  assign wvalid = ~wb_empty;  
  
  // Enable direct feedthrough of wready
  assign saccept_wb = (`GM_DIRECT_AXI_READY) ? 
                        (~wb_full | (wb_full & wready)) :  
                          ~wb_full;

  // Track reads in progress.
  always@(posedge aclk or negedge aresetn)
    begin
      if(~aresetn)
        read_active <= 1'b0;
      else
        begin
          if(gclken)
            begin
              if(mread & saccept)
                begin
                  read_active <= 1'b1;
                end
              else if(read_active_reset)
                begin
                  read_active <= 1'b0;
                end
            end // if (gclken)
        end // else: !if(~aresetn)
    end // always@ (posedge aclk or negedge aresetn)

  
  // Track writes in progress.
  always@(posedge aclk or negedge aresetn)
    begin
      if(~aresetn)
        write_active <= 1'b0;
      else
        begin
          if(gclken)
            begin
              if(mwrite & saccept)
                begin
                  write_active <= 1'b1;
                end
              else if(write_active_reset)
                begin
                  write_active <= 1'b0;
                end
            end // if (gclken)
        end // else: !if(~aresetn)
    end // always@ (posedge aclk or negedge aresetn)  
  

  // leda C_2C_R off
  // leda W456 off
  // turn off missing or redundant signal in sensitivity list
  // as configuration parameters may hide signals. Applies to both
  // C_2C_R amd W456
  
  // Compose 'saccept'.
  always@(/*AUTOSENSE*/read_active or read_active_reset
          or saccept_reqb or write_active or write_active_reset)
    /*AUTO_CONSTANT(`GM_BLOCK_READ)*/
    /*AUTO_CONSTANT(`GM_BLOCK_WRITE)*/
    begin
      // Enable read and/or write blocking.
      if(`GM_BLOCK_READ && `GM_BLOCK_WRITE)
        begin
          saccept_reqb_block = saccept_reqb & ~((read_active & ~read_active_reset)
                                                |(write_active & ~write_active_reset));
        end
      else if(`GM_BLOCK_READ)
        begin
          saccept_reqb_block = saccept_reqb & ~(read_active & ~read_active_reset);
        end
      else if(`GM_BLOCK_WRITE)
        begin
          saccept_reqb_block = saccept_reqb & ~(write_active & ~write_active_reset);
        end
      else
        begin
          saccept_reqb_block = saccept_reqb;
        end
    end // always@ (...
  //lede W456 on
  //leda C_2C_R on
  
  always@(/*AUTOSENSE*/saccept_reqb_block or saccept_wb
          or wburst_gif_active)
    begin
      if(wburst_gif_active)
        begin
          saccept_r = saccept_wb;
        end
      else
        begin
          // Acceptance of the 1st beat of read and write request requires
          // request and write data buffers to be ready. The advantage is
          // no loop from mread/mwrite back to saccept.
          saccept_r = saccept_reqb_block & saccept_wb;
        end
    end // always@ (...

  assign saccept = saccept_r;


  // Indicates write burst in progress on GIF side.
  always@(posedge aclk or negedge aresetn)
    begin
      if(~aresetn)
        wburst_gif_count <= 0;
      else
        begin
          if(gclken)
            begin
              if((wburst_gif_count==mlen) && (mwrite & saccept))
                begin
                  wburst_gif_count <= 0;
                end
              else if(mwrite & saccept)
                begin
                  wburst_gif_count <= wburst_gif_count + 1'b1;
                end
            end // if (gclken)
        end // else: !if(~aresetn)
    end // always@ (posedge aclk or negedge aresetn)

  assign wburst_gif_active = (wburst_gif_count!=0);
  

  // Indicates write burst in progress on AXI side.
  always@(posedge aclk or negedge aresetn)
    begin
      if(~aresetn)
        wburst_axi_count <= 0;
      else
        begin
          if((wburst_axi_count==wlen) && (wready & wvalid))
            begin
              wburst_axi_count <= 0;
            end
          else if(wready & wvalid)
            begin
              wburst_axi_count <= wburst_axi_count+1'b1;
            end
        end // else: !if(~aresetn)
    end // always@ (posedge aclk or negedge aresetn)

  assign wlast = (wburst_axi_count==wlen);   


  
  // -------------------------------------------------------------------
  // RESPONSE PHASE
  // -------------------------------------------------------------------
  
  // In this phase, responses from AXI are pushed into the response 
  // buffer. Push & pop can only be active once per gclk period. 
  // Signals with 'gc' identifier are active during the entire gclk 
  // period.

  
  // Determine which response to service first.
  // Toggle selection if read and write responses are available.
  always@(posedge aclk or negedge aresetn)
    begin
      if(~aresetn)
        bselect <= 1'b0;
      else
        if(rvalid & bvalid)
          begin
            if(bselect)
              bselect <= 1'b0;
            else
              bselect <= 1'b1;
          end
        else if(bvalid)
          bselect <= 1'b1;
        else
          bselect <= 1'b0;
    end // always@ (posedge aclk or negedge aresetn)


  // Select read/write reponse channel. Write responses can go
  // in between read bursts.
  always@(/*AUTOSENSE*/bid or bresp or bselect or bvalid or gready
          or rdata or rid or rlast or rresp or rvalid)
    begin
      if(bselect)
        begin
          respb_data_in =  {bid,1'b1,bresp,1'b1,rdata};
          gvalid = bvalid;
          rready_gc = 1'b0;
          bready_gc = gready;
        end
      else
        begin
          respb_data_in =  {rid,rlast,rresp,1'b0,rdata};
          gvalid = rvalid;
          rready_gc = gready;
          bready_gc = 1'b0;
        end // else: !if(bselect)
    end

  assign respb_push_gc_n = ~(gvalid & gready);
  assign respb_pop_gc_n = ~(svalid & mready);

  assign respb_push_n = (gclken==1'b1) ? respb_push_gc_n : 1'b1;
  assign respb_pop_n = (gclken==1'b1) ? respb_pop_gc_n : 1'b1;  

  // Leda W287 off
  // Turn of check for unconnected port

  // RESPONSE BUFFER
  gm_0_DW_axi_gm_bcm65
   #(`GM_DW+`GM_ID+4,
                              `GM_RESP_BUFFER,
                              1,
                              `GM_RESP_BUFFER-1,
                              0,
                              0,
                              `GM_RESP_BUFFER_AW)
      resp_buffer(
              .clk(aclk),
              .rst_n(aresetn),
              .init_n(1'b1),
              .push_req_n(respb_push_n),
              .pop_req_n(respb_pop_n),
              .diag_n(1'b1),
              .data_in(respb_data_in),
              .empty(respb_empty),
              .almost_empty(),
              .half_full(),
              .almost_full(),
              .full(respb_full),
              .error(),
              .data_out(respb_data_out)
              );
  // Leda W287 on
  
  
  // Enable direct feedthrough of mready.
  assign gready = (`GM_DIRECT_GIF_READY) ? 
                  (~respb_full | (respb_full & mready)) : (~respb_full);
  
  assign rready = (gclken==1'b1) ? rready_gc : 1'b0;
  assign bready = (gclken==1'b1) ? bready_gc : 1'b0;  

  assign svalid = ~respb_empty;
  assign sid = respb_data_out[`GM_DW+`GM_ID+3:`GM_DW+4];
  assign slast = respb_data_out[`GM_DW+3];
  assign sresp = {respb_data_out[`GM_DW+2:`GM_DW]};
  assign sdata = respb_data_out[`GM_DW-1:0];

  
  // For blocking reads read_active_reset indicates the
  // completion of the read response and allows new
  // requests to be accepted.
  always@(posedge aclk or negedge aresetn)
    begin
      if(~aresetn)
        begin
          read_active_reset <= 1'b0;
        end
      else
        if(gclken)
          begin
            if(rvalid & rready_gc & rlast)
              begin
                read_active_reset <= 1'b1;
              end
            else
              begin
                read_active_reset <= 1'b0;
              end
          end // if (gclken)
    end // always@ (posedge aclk or negedge aresetn)

  
  // For blocking writes write_active_reset indicates the
  // completion of the write response and allows new
  // requests to be accepted.
  always@(posedge aclk or negedge aresetn)
    begin
      if(~aresetn)
        begin
          write_active_reset <= 1'b0;
        end
      else
        if(gclken)
          begin
            if(bvalid & bready_gc)
              begin
                write_active_reset <= 1'b1;
              end
            else
              begin
                write_active_reset <= 1'b0;
              end
          end // if (gclken)
    end // always@ (posedge aclk or negedge aresetn)  


      
endmodule 




//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
// ---------------------------------------------------------------------
//
//                   (C) COPYRIGHT 2005-2011 SYNOPSYS INC.
//                             ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to Synopsys Inc.  Your use or disclosure of this software
//  is subject to the terms and conditions of a written license agreement
//  between you or your company, and Synopsys, Inc.
//
//  The entire notice above must be reproduced on all authorized copies.
//
// -------------------------------------------------------------------------
// Please refer to the databook for full details on the signals.
//
// These are found in the "Signal Description" section of the "Signals" chapter.
// There are details on the following
//   % Input Delays
//   % Output Delays
//   Any False Paths
//   Any Multicycle Paths
//   Any Asynchronous Signals
//

module gm_0_DW_axi_gm (/*AUTOARG*/
  // Outputs
  saccept, 
                  sid, 
                  svalid, 
                  slast, 
                  sdata, 
                  sresp, 
                  awid, 
                  awvalid, 
                  awaddr, 
                  awlen, 
                  awsize, 
                  awburst, 
                  awlock, 
                  awcache, 
                  awprot, 
                  wid, 
                  wvalid, 
                  wlast, 
                  wdata, 
                  wstrb, 
                  bready, 
                  arid, 
                  arvalid, 
                  araddr, 
                  arlen, 
                  arsize, 
                  arburst, 
                  arlock, 
                  arcache, 
                  arprot, 
                  rready,   
                  // Inputs
                  aclk, 
                  aresetn, 
                  gclken, 
                  mid, 
                  maddr, 
                  mread, 
                  mwrite, 
                  mlock, 
                  mlen, 
                  msize, 
                  mburst, 
                  mcache, 
                  mprot, 
                  mdata, 
                  mwstrb, 
                  mready, 
                  awready, 
                  wready, 
                  bid, 
                  bvalid, 
                  bresp, 
                  arready, 
                  rid, 
                  rvalid, 
                  rlast, 
                  rdata, 
                  rresp
                  );

  
  input                                       aclk;
  input                                       aresetn;
  input                                       gclken;

  
  // Generic Interface
  
  // GIF request
  input [`GM_ID-1:0]                          mid;
  input [`GM_AW-1:0]                          maddr;
  input                                       mread;
  input                                       mwrite;
  input                                       mlock;
  input [`GM_BW-1:0]                          mlen;
  input [2:0]                                 msize;
  input [1:0]                                 mburst;
  input [3:0]                                 mcache;
  input [2:0]                                 mprot;
  input [`GM_DW-1:0]                          mdata;
  input [`GM_WW-1:0]                          mwstrb;
  output                                      saccept;

  // GIF response
  output [`GM_ID-1:0]                         sid;
  output                                      svalid;
  output                                      slast;
  output [`GM_DW-1:0]                         sdata;
  output [2:0]                                sresp;
  input                                       mready;

  
  // AXI Master
  
  // AXI write request
  output [`GM_ID-1:0]                         awid;
  output                                      awvalid;
  output [`GM_AW-1:0]                         awaddr;
  output [`GM_BW-1:0]                         awlen;
  output [2:0]                                awsize;
  output [1:0]                                awburst;
  output [1:0]                                awlock;
  output [3:0]                                awcache;
  output [2:0]                                awprot;
  input                                       awready;

  // AXI write data
  output [`GM_ID-1:0]                         wid;
  output                                      wvalid;
  output                                      wlast;
  output [`GM_DW-1:0]                         wdata;
  output [`GM_WW-1:0]                         wstrb;
  input                                       wready;

  // AXI write response
  input [`GM_ID-1:0]                          bid;
  input                                       bvalid;
  input [1:0]                                 bresp;
  output                                      bready;  
  
  // AXI read request
  output [`GM_ID-1:0]                         arid;
  output                                      arvalid;
  output [`GM_AW-1:0]                         araddr;
  output [`GM_BW-1:0]                         arlen;
  output [2:0]                                arsize;
  output [1:0]                                arburst;
  output [1:0]                                arlock;
  output [3:0]                                arcache;
  output [2:0]                                arprot;  
  input                                       arready;

  // AXI read response & read data
  input [`GM_ID-1:0]                          rid;
  input                                       rvalid;
  input                                       rlast;
  input [`GM_DW-1:0]                          rdata;
  input [1:0]                                 rresp;
  output                                      rready;

  // AXI low power

  wire                                       aclk;
  wire                                       aresetn;
  wire                                       gclken;
  wire [`GM_ID-1:0]                          mid;
  wire [`GM_AW-1:0]                          maddr;
  wire                                       mread;
  wire                                       mwrite;
  wire                                       mlock;
  wire [`GM_BW-1:0]                          mlen;
  wire [2:0]                                 msize;
  wire [1:0]                                 mburst;
  wire [`GM_DW-1:0]                          mdata;
  wire [`GM_WW-1:0]                          mwstrb;
  wire                                       mready;
  wire                                       awready;
  wire                                       wready;
  wire                                       bvalid;
  wire [`GM_ID-1:0]                          bid;
  wire [1:0]                                 bresp;
  wire                                       arready;
  wire [`GM_ID-1:0]                          rid;
  wire                                       rvalid;
  wire                                       rlast;
  wire [`GM_DW-1:0]                          rdata;
  wire [1:0]                                 rresp;
  wire                                       csysreq;

  gm_0_DW_axi_gm_core
  
    core(
         .aclk(aclk),   
         .aresetn(aresetn),
         .gclken(gclken),
         .mid(mid),
         .maddr(maddr),  
         .mread(mread),  
         .mwrite(mwrite), 
         .mlock(mlock),  
         .mlen(mlen),   
         .msize(msize),  
         .mburst(mburst),
         .mcache(mcache),
         .mprot(mprot),
         .mdata(mdata),  
         .mwstrb(mwstrb), 
         .saccept(saccept),
         .svalid(svalid), 
         .slast(slast),
         .sid(sid),
         .sdata(sdata),  
         .sresp(sresp),  
         .mready(mready), 
         .awvalid(awvalid),
         .awid(awid),
         .awaddr(awaddr), 
         .awlen(awlen),  
         .awsize(awsize), 
         .awburst(awburst),
         .awlock(awlock),
         .awcache(awcache),
         .awprot(awprot),
         .awready(awready),
         .wvalid(wvalid), 
         .wlast(wlast),
         .wid(wid),
         .wdata(wdata),  
         .wstrb(wstrb),  
         .wready(wready), 
         .bvalid(bvalid),
         .bid(bid), 
         .bresp(bresp),  
         .bready(bready), 
         .arvalid(arvalid),
         .arid(arid),
         .araddr(araddr), 
         .arlen(arlen),  
         .arsize(arsize), 
         .arburst(arburst),
         .arlock(arlock),
         .arcache(arcache),
         .arprot(arprot), 
         .arready(arready),
         .rvalid(rvalid),
         .rid(rid),
         .rlast(rlast),  
         .rdata(rdata),  
         .rresp(rresp),  
         .rready(rready)        
         );

      
endmodule 


//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------

   `undef GM_AW
   `undef GM_DW
   `undef GM_ID
   `undef GM_BW
   `undef GM_LOWPWR_HS_IF
   `undef GM_LOWPWR_NOPX_CNT
   `undef GM_LOWPWR_NOPX_CNT_W
   `undef GM_LOWPWR_LEGACY_IF
   `undef GM_MAX_PENDTRANS_READ
   `undef GM_MAX_PENDTRANS_WRITE
   `undef GM_CNT_PENDTRANS_READ_W
   `undef GM_CNT_PENDTRANS_WRITE_W
   `undef GM_WW
   `undef GM_DIRECT_AXI_READY
   `undef GM_REQ_BUFFER
   `undef GM_REQ_BUFFER_AW
   `undef GM_WDATA_BUFFER
   `undef GM_WDATA_BUFFER_AW
   `undef GM_DIRECT_GIF_READY
   `undef GM_RESP_BUFFER
   `undef GM_RESP_BUFFER_AW
   `undef GM_BLOCK_READ
   `undef GM_BLOCK_WRITE
   `undef SIM_ACLK_PERIOD
   `undef SIM_GCLK_PERIOD
   `undef RM_BCM01
   `undef RM_BCM02
   `undef RM_BCM03
   `undef RM_BCM05
   `undef RM_BCM06
   `undef RM_BCM07
   `undef RM_BCM08
   `undef RM_BCM09
   `undef RM_BCM10
   `undef RM_BCM11
   `undef RM_BCM12
   `undef RM_BCM15
   `undef RM_BCM16
   `undef RM_BCM21
   `undef RM_BCM22
   `undef RM_BCM23
   `undef RM_BCM24
   `undef RM_BCM25
   `undef RM_BCM26
   `undef RM_BCM27
   `undef RM_BCM28
   `undef RM_BCM29
   `undef RM_BCM30
   `undef RM_BCM31
   `undef RM_BCM32
   `undef RM_BCM43
   `undef RM_BCM44
   `undef RM_BCM46_A
   `undef RM_BCM46_B
   `undef RM_BCM46_C
   `undef RM_BCM46_D
   `undef RM_BCM47
   `undef RM_BCM51
   `undef RM_BCM52
   `undef RM_BCM53
   `undef RM_BCM54
   `undef RM_BCM55
   `undef RM_BCM57
   `undef RM_BCM58
   `undef RM_BCM59
   `undef RM_BCM64
   `undef RM_BCM65
   `undef RM_BCM66
   `undef RM_BCM71
   `undef RM_BCM72
   `undef RM_BCM73
   `undef RM_BCM76
`define cb_dummy_parameter_definition 1
`undef  cb_dummy_parameter_definition
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
