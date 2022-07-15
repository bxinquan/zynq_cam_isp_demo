// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
`default_nettype none

module h264_v_frmbuf_wr_0_0_mm_video_m_axi
#(parameter
    CONSERVATIVE            = 0,
    NUM_READ_OUTSTANDING    = 2,
    NUM_WRITE_OUTSTANDING   = 2,
    MAX_READ_BURST_LENGTH   = 16,
    MAX_WRITE_BURST_LENGTH  = 16,
    C_M_AXI_ID_WIDTH        = 1,
    C_M_AXI_ADDR_WIDTH      = 32,
    C_TARGET_ADDR           = 32'h00000000,
    C_M_AXI_DATA_WIDTH      = 32,
    C_M_AXI_AWUSER_WIDTH    = 1,
    C_M_AXI_ARUSER_WIDTH    = 1,
    C_M_AXI_WUSER_WIDTH     = 1,
    C_M_AXI_RUSER_WIDTH     = 1,
    C_M_AXI_BUSER_WIDTH     = 1,
    C_USER_VALUE            = 1'b0,
    C_PROT_VALUE            = 3'b000,
    C_CACHE_VALUE           = 4'b0011,
    USER_DW                 = 16,
    USER_AW                 = 32,
    USER_MAXREQS            = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESET,
    input  wire                         ACLK_EN,
    // write address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        AWID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      AWADDR,
    output wire [7:0]                   AWLEN,
    output wire [2:0]                   AWSIZE,
    output wire [1:0]                   AWBURST,
    output wire [1:0]                   AWLOCK,
    output wire [3:0]                   AWCACHE,
    output wire [2:0]                   AWPROT,
    output wire [3:0]                   AWQOS,
    output wire [3:0]                   AWREGION,
    output wire [C_M_AXI_AWUSER_WIDTH-1:0]    AWUSER,
    output wire                         AWVALID,
    input  wire                         AWREADY,
    // write data channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        WID,
    output wire [C_M_AXI_DATA_WIDTH-1:0]      WDATA,
    output wire [C_M_AXI_DATA_WIDTH/8-1:0]    WSTRB,
    output wire                         WLAST,
    output wire [C_M_AXI_WUSER_WIDTH-1:0]     WUSER,
    output wire                         WVALID,
    input  wire                         WREADY,
    // write response channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]        BID,
    input  wire [1:0]                   BRESP,
    input  wire [C_M_AXI_BUSER_WIDTH-1:0]     BUSER,
    input  wire                         BVALID,
    output wire                         BREADY,
    // read address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        ARID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      ARADDR,
    output wire [7:0]                   ARLEN,
    output wire [2:0]                   ARSIZE,
    output wire [1:0]                   ARBURST,
    output wire [1:0]                   ARLOCK,
    output wire [3:0]                   ARCACHE,
    output wire [2:0]                   ARPROT,
    output wire [3:0]                   ARQOS,
    output wire [3:0]                   ARREGION,
    output wire [C_M_AXI_ARUSER_WIDTH-1:0]    ARUSER,
    output wire                         ARVALID,
    input  wire                         ARREADY,
    // read data channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]        RID,
    input  wire [C_M_AXI_DATA_WIDTH-1:0]      RDATA,
    input  wire [1:0]                   RRESP,
    input  wire                         RLAST,
    input  wire [C_M_AXI_RUSER_WIDTH-1:0]     RUSER,
    input  wire                         RVALID,
    output wire                         RREADY,

    // internal bus ports
    // write address
    input  wire [C_M_AXI_ID_WIDTH-1:0]        I_AWID,
    input  wire [USER_AW-1:0]           I_AWADDR,
    input  wire [31:0]                  I_AWLEN,
    input  wire [2:0]                   I_AWSIZE,
    input  wire [1:0]                   I_AWBURST,
    input  wire [1:0]                   I_AWLOCK,
    input  wire [3:0]                   I_AWCACHE,
    input  wire [2:0]                   I_AWPROT,
    input  wire [3:0]                   I_AWQOS,
    input  wire [3:0]                   I_AWREGION,
    input  wire [C_M_AXI_AWUSER_WIDTH-1:0]    I_AWUSER,
    input  wire                         I_AWVALID,
    output wire                         I_AWREADY,
    // write data
    input  wire [C_M_AXI_ID_WIDTH-1:0]        I_WID,
    input  wire [USER_DW-1:0]           I_WDATA,
    input  wire                         I_WLAST,
    input  wire [USER_DW/8-1:0]         I_WSTRB,
    input  wire [C_M_AXI_WUSER_WIDTH-1:0]     I_WUSER,
    input  wire                         I_WVALID,
    output wire                         I_WREADY,
    // write response
    output wire [C_M_AXI_ID_WIDTH-1:0]        I_BID,
    output wire [1:0]                   I_BRESP,
    output wire [C_M_AXI_BUSER_WIDTH-1:0]     I_BUSER,
    output wire                         I_BVALID,
    input  wire                         I_BREADY,
    // read address
    input  wire [C_M_AXI_ID_WIDTH-1:0]        I_ARID,
    input  wire [USER_AW-1:0]           I_ARADDR,
    input  wire [31:0]                  I_ARLEN,
    input  wire [2:0]                   I_ARSIZE,
    input  wire [1:0]                   I_ARBURST,
    input  wire [1:0]                   I_ARLOCK,
    input  wire [3:0]                   I_ARCACHE,
    input  wire [2:0]                   I_ARPROT,
    input  wire [3:0]                   I_ARQOS,
    input  wire [3:0]                   I_ARREGION,
    input  wire [C_M_AXI_ARUSER_WIDTH-1:0]    I_ARUSER,
    input  wire                         I_ARVALID,
    output wire                         I_ARREADY,
    // read data
    output wire [C_M_AXI_ID_WIDTH-1:0]        I_RID,
    output wire [USER_DW-1:0]           I_RDATA,
    output wire [1:0]                   I_RRESP,
    output wire                         I_RLAST,
    output wire [C_M_AXI_RUSER_WIDTH-1:0]     I_RUSER,
    output wire                         I_RVALID,
    input  wire                         I_RREADY,
    // flush signal
    input  wire                         flush,
    output wire                         flush_done
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
wire  [C_M_AXI_ADDR_WIDTH-1:0]      AWADDR_Dummy;
wire  [7:0]                         AWLEN_Dummy;
wire                                AWVALID_Dummy;
wire                                AWREADY_Dummy;
wire  [C_M_AXI_DATA_WIDTH-1:0]      WDATA_Dummy;
wire  [C_M_AXI_DATA_WIDTH/8-1:0]    WSTRB_Dummy;
wire                                WLAST_Dummy;
wire                                WVALID_Dummy;
wire                                WREADY_Dummy;
wire                                w_flush_done;
wire                                r_flush_done;
assign I_BID = 1'b0;
assign I_BUSER = C_USER_VALUE;
assign I_RID = 1'b0;
assign I_RLAST = 1'b0;
assign I_RUSER = C_USER_VALUE;
assign flush_done = w_flush_done & r_flush_done;
//------------------------Instantiation------------------

// h264_v_frmbuf_wr_0_0_mm_video_m_axi_write
h264_v_frmbuf_wr_0_0_mm_video_m_axi_write #(
    .NUM_WRITE_OUTSTANDING   ( NUM_WRITE_OUTSTANDING ),
    .MAX_WRITE_BURST_LENGTH  ( MAX_WRITE_BURST_LENGTH ),
    .C_M_AXI_ID_WIDTH        ( C_M_AXI_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH      ( C_M_AXI_ADDR_WIDTH ),
    .C_TARGET_ADDR           ( C_TARGET_ADDR ),
    .C_M_AXI_DATA_WIDTH      ( C_M_AXI_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH    ( C_M_AXI_AWUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH     ( C_M_AXI_WUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH     ( C_M_AXI_BUSER_WIDTH ),
    .C_USER_VALUE            ( C_USER_VALUE ),
    .C_PROT_VALUE            ( C_PROT_VALUE ),
    .C_CACHE_VALUE           ( C_CACHE_VALUE ),
    .USER_DW                 ( USER_DW ),
    .USER_AW                 ( USER_AW ),
    .USER_MAXREQS            ( USER_MAXREQS )
) bus_write (
    .ACLK              ( ACLK ),
    .ARESET            ( ARESET ),
    .ACLK_EN           ( ACLK_EN ),
    .out_BUS_AWID              ( AWID ),
    .out_BUS_AWSIZE            ( AWSIZE ),
    .out_BUS_AWBURST           ( AWBURST ),
    .out_BUS_AWLOCK            ( AWLOCK ),
    .out_BUS_AWCACHE           ( AWCACHE ),
    .out_BUS_AWPROT            ( AWPROT ),
    .out_BUS_AWQOS             ( AWQOS ),
    .out_BUS_AWREGION          ( AWREGION ),
    .out_BUS_AWUSER            ( AWUSER ),
    .out_TOP_AWADDR            ( AWADDR_Dummy ),
    .out_TOP_AWLEN             ( AWLEN_Dummy ),
    .out_TOP_AWVALID           ( AWVALID_Dummy ),
    .in_TOP_AWREADY            ( AWREADY_Dummy ),
    .out_BUS_WID               ( WID),
    .out_BUS_WUSER             ( WUSER),
    .out_TOP_WDATA             ( WDATA_Dummy ),
    .out_TOP_WSTRB             ( WSTRB_Dummy ),
    .out_TOP_WLAST             ( WLAST_Dummy ),
    .out_TOP_WVALID            ( WVALID_Dummy ),
    .in_TOP_WREADY             ( WREADY_Dummy ),
    .in_BUS_BID                ( BID ),
    .in_BUS_BRESP              ( BRESP ),
    .in_BUS_BUSER              ( BUSER ),
    .in_BUS_BVALID             ( BVALID ),
    .out_BUS_BREADY            ( BREADY ),
    .in_HLS_AWVALID            ( I_AWVALID ),
    .out_HLS_AWREADY           ( I_AWREADY ),
    .in_HLS_AWADDR             ( I_AWADDR ),
    .in_HLS_AWLEN              ( I_AWLEN ),
    .in_HLS_AWCACHE            ( I_AWCACHE ),
    .in_HLS_AWPROT             ( I_AWPROT ),
    .in_HLS_AWQOS              ( I_AWQOS ),
    .in_HLS_AWREGION           ( I_AWREGION ),
    .in_HLS_AWUSER             ( I_AWUSER ),
    .in_HLS_WVALID             ( I_WVALID ),
    .out_HLS_WREADY            ( I_WREADY ),
    .in_HLS_WSTRB              ( I_WSTRB ),
    .in_HLS_WUSER              ( I_WUSER ),
    .in_HLS_WDATA              ( I_WDATA ),
    .out_HLS_BVALID            ( I_BVALID ),
    .in_HLS_BREADY             ( I_BREADY ),
    .out_HLS_BRESP             ( I_BRESP ),
    .flush             ( flush ),
    .w_flush_done      ( w_flush_done )
);

// h264_v_frmbuf_wr_0_0_mm_video_m_axi_read
h264_v_frmbuf_wr_0_0_mm_video_m_axi_read #(
    .NUM_READ_OUTSTANDING     ( NUM_READ_OUTSTANDING ),
    .MAX_READ_BURST_LENGTH    ( MAX_READ_BURST_LENGTH ),
    .C_M_AXI_ID_WIDTH         ( C_M_AXI_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH       ( C_M_AXI_ADDR_WIDTH ),
    .C_TARGET_ADDR            ( C_TARGET_ADDR ),
    .C_M_AXI_DATA_WIDTH       ( C_M_AXI_DATA_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH     ( C_M_AXI_ARUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH      ( C_M_AXI_RUSER_WIDTH ),
    .C_USER_VALUE             ( C_USER_VALUE ),
    .C_PROT_VALUE             ( C_PROT_VALUE ),
    .C_CACHE_VALUE            ( C_CACHE_VALUE ),
    .USER_DW                  ( USER_DW ),
    .USER_AW                  ( USER_AW ),
    .USER_MAXREQS             ( USER_MAXREQS )
) bus_read (
    .ACLK              ( ACLK ),
    .ARESET            ( ARESET ),
    .ACLK_EN           ( ACLK_EN ),
    .out_BUS_ARID              ( ARID ),
    .out_BUS_ARADDR            ( ARADDR ),
    .out_BUS_ARLEN             ( ARLEN ),
    .out_BUS_ARSIZE            ( ARSIZE ),
    .out_BUS_ARBURST           ( ARBURST ),
    .out_BUS_ARLOCK            ( ARLOCK ),
    .out_BUS_ARCACHE           ( ARCACHE ),
    .out_BUS_ARPROT            ( ARPROT ),
    .out_BUS_ARQOS             ( ARQOS ),
    .out_BUS_ARREGION          ( ARREGION ),
    .out_BUS_ARUSER            ( ARUSER ),
    .out_BUS_ARVALID           ( ARVALID ),
    .in_BUS_ARREADY            ( ARREADY ),
    .in_BUS_RID                ( RID ),
    .in_BUS_RDATA              ( RDATA ),
    .in_BUS_RRESP              ( RRESP ),
    .in_BUS_RLAST              ( RLAST ),
    .in_BUS_RUSER              ( RUSER ),
    .in_BUS_RVALID             ( RVALID ),
    .out_BUS_RREADY            ( RREADY ),
    .in_HLS_ARVALID            ( I_ARVALID ),
    .out_HLS_ARREADY           ( I_ARREADY ),
    .in_HLS_ARADDR             ( I_ARADDR ),
    .in_HLS_ARLEN              ( I_ARLEN ),
    .in_HLS_ARCACHE            ( I_ARCACHE ),
    .in_HLS_ARPROT             ( I_ARPROT ),
    .in_HLS_ARQOS              ( I_ARQOS ),
    .in_HLS_ARREGION           ( I_ARREGION ),
    .in_HLS_ARUSER             ( I_ARUSER ),
    .out_HLS_RVALID            ( I_RVALID ),
    .in_HLS_RREADY             ( I_RREADY ),
    .out_HLS_RDATA             ( I_RDATA ),
    .out_HLS_RRESP             ( I_RRESP ),
    .flush                     ( flush ),
    .r_flush_done              ( r_flush_done )
);

// Write Address channel throttling unit
h264_v_frmbuf_wr_0_0_mm_video_m_axi_throttle #(
    .USED_FIX(0),
    .ADDR_WIDTH(C_M_AXI_ADDR_WIDTH),
    .DATA_WIDTH(C_M_AXI_DATA_WIDTH),
    .DEPTH(MAX_WRITE_BURST_LENGTH),
    .USER_MAXREQS(NUM_WRITE_OUTSTANDING),
    .CONSERVATIVE(CONSERVATIVE),
    .AVERAGE_MODE(0)
) wreq_throttle (
    .clk(ACLK),
    .reset(ARESET),
    .ce(ACLK_EN),
    .in_TOP_AWADDR(AWADDR_Dummy),
    .in_TOP_AWLEN(AWLEN_Dummy),
    .in_TOP_AWVALID(AWVALID_Dummy),
    .out_TOP_AWREADY(AWREADY_Dummy),
    .out_BUS_AWADDR(AWADDR),
    .out_BUS_AWLEN(AWLEN),
    .out_BUS_AWVALID(AWVALID),
    .in_BUS_AWREADY(AWREADY),
    .in_TOP_WDATA(WDATA_Dummy),
    .in_TOP_WSTRB(WSTRB_Dummy),
    .in_TOP_WLAST(WLAST_Dummy),
    .in_TOP_WVALID(WVALID_Dummy),
    .out_TOP_WREADY(WREADY_Dummy),
    .out_BUS_WDATA(WDATA),
    .out_BUS_WSTRB(WSTRB),
    .out_BUS_WLAST(WLAST),
    .out_BUS_WVALID(WVALID),
    .in_BUS_WREADY(WREADY)
);
// END of write Address channel throttling unit

endmodule
`default_nettype wire

module h264_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice
#(parameter
    N = 8   // data width
) (
    // system signals
    input  wire         sclk,
    input  wire         reset,
    // slave side
    input  wire [N-1:0] s_data,
    input  wire         s_valid,
    output wire         s_ready,
    // master side
    output wire [N-1:0] m_data,
    output wire         m_valid,
    input  wire         m_ready
);
//------------------------Parameter----------------------
// state
localparam [1:0]
    ZERO = 2'b10,
    ONE  = 2'b11,
    TWO  = 2'b01;
//------------------------Local signal-------------------
reg  [N-1:0] data_p1;
reg  [N-1:0] data_p2;
wire         load_p1;
wire         load_p2;
wire         load_p1_from_p2;
reg          s_ready_t;
reg  [1:0]   state;
reg  [1:0]   next;
//------------------------Body---------------------------
assign s_ready = s_ready_t;
assign m_data  = data_p1;
assign m_valid = state[0];

assign load_p1 = (state == ZERO && s_valid) ||
                 (state == ONE && s_valid && m_ready) ||
                 (state == TWO && m_ready);
assign load_p2 = s_valid & s_ready;
assign load_p1_from_p2 = (state == TWO);

// data_p1
always @(posedge sclk) begin
    if (load_p1) begin
        if (load_p1_from_p2)
            data_p1 <= data_p2;
        else
            data_p1 <= s_data;
    end
end

// data_p2
always @(posedge sclk) begin
    if (load_p2) data_p2 <= s_data;
end

// s_ready_t
always @(posedge sclk) begin
    if (reset)
        s_ready_t <= 1'b0;
    else if (state == ZERO)
        s_ready_t <= 1'b1;
    else if (state == ONE && next == TWO)
        s_ready_t <= 1'b0;
    else if (state == TWO && next == ONE)
        s_ready_t <= 1'b1;
end

// state
always @(posedge sclk) begin
    if (reset)
        state <= ZERO;
    else
        state <= next;
end

// next
always @(*) begin
    case (state)
        ZERO:
            if (s_valid & s_ready)
                next = ONE;
            else
                next = ZERO;
        ONE:
            if (~s_valid & m_ready)
                next = ZERO;
            else if (s_valid & ~m_ready)
                next = TWO;
            else
                next = ONE;
        TWO:
            if (m_ready)
                next = ONE;
            else
                next = TWO;
        default:
            next = ZERO;
    endcase
end

endmodule

module h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo
#(parameter
    DATA_BITS  = 8,
    DEPTH      = 16,
    DEPTH_BITS = 4
)(
    input  wire                 sclk,
    input  wire                 reset,
    input  wire                 sclk_en,
    output reg                  empty_n,
    output reg                  full_n,
    input  wire                 rdreq,
    input  wire                 wrreq,
    output reg  [DATA_BITS-1:0] q,
    input  wire [DATA_BITS-1:0] data
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
wire                  push;
wire                  pop;
wire                  full_cond;
reg                   data_vld;
reg  [DEPTH_BITS-1:0] pout;
reg  [DATA_BITS-1:0]  mem[0:DEPTH-1];
//------------------------Body---------------------------
assign push = full_n & wrreq;
assign pop  = data_vld & (~(empty_n & ~rdreq));
generate
if (DEPTH >= 2) begin
assign full_cond = push && ~pop && pout == DEPTH - 2 && data_vld;
end else begin
assign full_cond = push && ~pop;
end
endgenerate

// q
always @(posedge sclk)
begin
    if (reset)
        q <= 0;
    else if (sclk_en) begin
        if (~(empty_n & ~rdreq))
            q <= mem[pout];
    end
end

// empty_n
always @(posedge sclk)
begin
    if (reset)
        empty_n <= 1'b0;
    else if (sclk_en) begin
        if (~(empty_n & ~rdreq))
            empty_n <= data_vld;
    end
end

// data_vld
always @(posedge sclk)
begin
    if (reset)
        data_vld <= 1'b0;
    else if (sclk_en) begin
        if (push)
            data_vld <= 1'b1;
        else if (~push && pop && pout == 1'b0)
            data_vld <= 1'b0;
    end
end

// full_n
always @(posedge sclk)
begin
    if (reset)
        full_n <= 1'b1;
    else if (sclk_en) begin
        if (pop)
            full_n <= 1'b1;
        else if (full_cond)
            full_n <= 1'b0;
    end
end

// pout
always @(posedge sclk)
begin
    if (reset)
        pout <= 1'b0;
    else if (sclk_en) begin
        if (push & ~pop & data_vld)
            pout <= pout + 1'b1;
        else if (~push && pop && pout != 1'b0)
            pout <= pout - 1'b1;
    end
end

integer i;
always @(posedge sclk)
begin
    if (sclk_en) begin
        if (push) begin
            for (i = 0; i < DEPTH - 1; i = i + 1) begin
                mem[i+1] <= mem[i];
            end
            mem[0] <= data;
        end
    end
end
endmodule

module h264_v_frmbuf_wr_0_0_mm_video_m_axi_buffer
#(parameter
    DATA_WIDTH = 32,
    ADDR_WIDTH = 5,
    DEPTH      = 32
) (
    // system signal
    input  wire                  clk,
    input  wire                  reset,
    input  wire                  sclk_en,

    // write
    output wire                  if_full_n,
    input  wire                  if_write_ce,
    input  wire                  if_write,
    input  wire [DATA_WIDTH-1:0] if_din,

    // read
    output wire                  if_empty_n,
    input  wire                  if_read_ce,
    input  wire                  if_read,
    output wire [DATA_WIDTH-1:0] if_dout
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
(* ram_style = "block" *)
reg  [DATA_WIDTH-1:0] mem[0:DEPTH-1];
reg  [DATA_WIDTH-1:0] q_buf = 1'b0;
reg  [ADDR_WIDTH-1:0] waddr = 1'b0;
reg  [ADDR_WIDTH-1:0] raddr = 1'b0;
wire [ADDR_WIDTH-1:0] wnext;
wire [ADDR_WIDTH-1:0] rnext;
wire                  push;
wire                  pop;
reg  [ADDR_WIDTH-1:0] mOutPtr = 1'b0;
reg                   full_n = 1'b1;
reg                   empty_n = 1'b0;
reg  [DATA_WIDTH-1:0] q_tmp = 1'b0;
reg                   show_ahead = 1'b0;
reg  [DATA_WIDTH-1:0] dout_buf = 1'b0;
reg                   dout_valid = 1'b0;


//------------------------Instantiation------------------

//------------------------Task and function--------------

//------------------------Body---------------------------
assign if_full_n  = full_n;
assign if_empty_n = dout_valid;
assign if_dout    = dout_buf;
assign push       = full_n & if_write_ce & (if_write === 1'b1);
assign pop        = empty_n & if_read_ce & (~dout_valid | if_read);
assign wnext      = !push                ? waddr :
                    (waddr == DEPTH - 1) ? 1'b0  :
                    waddr + 1'b1;
assign rnext      = !pop                 ? raddr :
                    (raddr == DEPTH - 1) ? 1'b0  :
                    raddr + 1'b1;

// waddr
always @(posedge clk) begin
    if (reset == 1'b1)
        waddr <= 1'b0;
    else if (sclk_en)
        waddr <= wnext;
end

// raddr
always @(posedge clk) begin
    if (reset == 1'b1)
        raddr <= 1'b0;
    else if (sclk_en)
        raddr <= rnext;
end

// mOutPtr
always @(posedge clk) begin
    if (reset == 1'b1)
        mOutPtr <= 1'b0;
    else if (sclk_en)
        if (push & ~pop)
            mOutPtr <= mOutPtr + 1'b1;
        else if (~push & pop)
            mOutPtr <= mOutPtr - 1'b1;
end

// full_n
always @(posedge clk) begin
    if (reset == 1'b1)
        full_n <= 1'b1;
    else if (sclk_en)
        if (push & ~pop)
            full_n <= (mOutPtr != DEPTH - 1);
        else if (~push & pop)
            full_n <= 1'b1;
end

// empty_n
always @(posedge clk) begin
    if (reset == 1'b1)
        empty_n <= 1'b0;
    else if (sclk_en)
        if (push & ~pop)
            empty_n <= 1'b1;
        else if (~push & pop)
            empty_n <= (mOutPtr != 1'b1);
end

// mem
always @(posedge clk) begin
    if (push)
        mem[waddr] <= if_din;
end

// q_buf
always @(posedge clk) begin
    q_buf <= mem[rnext];
end

// q_tmp
always @(posedge clk) begin
    if (reset == 1'b1)
        q_tmp <= 1'b0;
    else if (sclk_en)
        if (push)
            q_tmp <= if_din;
end

// show_ahead
always @(posedge clk) begin
    if (reset == 1'b1)
        show_ahead <= 1'b0;
    else if (sclk_en)
        if (push && mOutPtr == pop)
            show_ahead <= 1'b1;
        else
            show_ahead <= 1'b0;
end

// dout_buf
always @(posedge clk) begin
    if (reset == 1'b1)
        dout_buf <= 1'b0;
    else if (sclk_en)
        if (pop)
            dout_buf <= show_ahead? q_tmp : q_buf;
end

// dout_valid
always @(posedge clk) begin
    if (reset == 1'b1)
        dout_valid <= 1'b0;
    else if (sclk_en)
        if (pop)
            dout_valid <= 1'b1;
        else if (if_read_ce & if_read)
            dout_valid <= 1'b0;
end

endmodule
`timescale 1ns/1ps

module h264_v_frmbuf_wr_0_0_mm_video_m_axi_decoder
#(parameter
    DIN_WIDTH       = 3
)(
    input  wire [DIN_WIDTH-1:0]         din,
    output reg  [2**DIN_WIDTH-1:0]      dout
);
    integer i;
    always @(din) begin
        dout = {2**DIN_WIDTH{1'b0}};
        for (i=0; i < din; i = i + 1)
            dout[i] = 1'b1;
    end
endmodule


module h264_v_frmbuf_wr_0_0_mm_video_m_axi_throttle
#(parameter
    USED_FIX       = 0,
    FIX_VALUE      = 4,
    ADDR_WIDTH     = 32,
    DATA_WIDTH     = 32,
    DEPTH          = 16,
    USER_MAXREQS   = 16,
    CONSERVATIVE   = 0, 
    AVERAGE_MODE   = 0 
)(
    input  wire                      clk,
    input  wire                      reset,
    input  wire                      ce,
    input  wire [ADDR_WIDTH-1:0]     in_TOP_AWADDR,
    input  wire [7:0]                in_TOP_AWLEN,
    input  wire                        in_TOP_AWVALID,
    output wire                        out_TOP_AWREADY,
    output wire [ADDR_WIDTH-1:0]     out_BUS_AWADDR,
    output wire [7:0]                out_BUS_AWLEN,
    output wire                        out_BUS_AWVALID,
    input  wire                        in_BUS_AWREADY,
    input  wire [DATA_WIDTH-1:0]     in_TOP_WDATA,
    input  wire [DATA_WIDTH/8-1:0]   in_TOP_WSTRB,
    input  wire                        in_TOP_WLAST,
    input  wire                        in_TOP_WVALID,
    output wire                        out_TOP_WREADY,
    output wire [DATA_WIDTH-1:0]     out_BUS_WDATA,
    output wire [DATA_WIDTH/8-1:0]   out_BUS_WSTRB,
    output wire                        out_BUS_WLAST,
    output wire                        out_BUS_WVALID,
    input  wire                        in_BUS_WREADY
);

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

generate
if (CONSERVATIVE == 0) begin
localparam threshold = (USED_FIX)? FIX_VALUE-1 : 0;

wire                req_en;
wire                handshake;
wire  [7:0]         load_init;
reg   [8:0]         throttl_cnt;

// AW Channel
assign out_BUS_AWADDR       = in_TOP_AWADDR;
assign out_BUS_AWLEN        = in_TOP_AWLEN;

// W Channel
assign out_BUS_WDATA       = in_TOP_WDATA;
assign out_BUS_WSTRB       = in_TOP_WSTRB;
assign out_BUS_WLAST       = in_TOP_WLAST;
assign out_BUS_WVALID = in_TOP_WVALID & (throttl_cnt > 0);
assign out_TOP_WREADY = in_BUS_WREADY & (throttl_cnt > 0);

if (USED_FIX) begin
    assign load_init = FIX_VALUE-1;
    assign handshake = 1'b1;
end else if (AVERAGE_MODE) begin
    assign load_init = in_TOP_AWLEN;
    assign handshake = 1'b1;
end else begin
    assign load_init = in_TOP_AWLEN;
    assign handshake = out_BUS_WVALID & in_BUS_WREADY;
end

assign out_BUS_AWVALID = in_TOP_AWVALID & req_en;
assign out_TOP_AWREADY = in_BUS_AWREADY & req_en;
assign req_en = (throttl_cnt == 0) | (throttl_cnt == 1 & handshake);

always @(posedge clk)
begin
    if (reset)
        throttl_cnt <= 0;
    else if (ce) begin
        if (in_TOP_AWLEN >= threshold && req_en && in_TOP_AWVALID && in_BUS_AWREADY)
            throttl_cnt <= load_init + 1'b1; //load
        else if (throttl_cnt > 0 && handshake)
            throttl_cnt <= throttl_cnt - 1'b1;
    end
end

end // AGGRESSIVE end
else begin
localparam CNT_WIDTH = ((DEPTH < 4)? 2 : log2(DEPTH)) + 1;

// Instantiation for reg slice for AW channel
wire                        rs_req_ready;
wire                        rs_req_valid;
wire [ADDR_WIDTH + 7 : 0]   rs_req_in;
wire [ADDR_WIDTH + 7 : 0]   rs_req_out;

h264_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice #(
    .N(ADDR_WIDTH + 8)
) rs_req (
    .sclk(clk),
    .reset(reset),
    .s_data(rs_req_in),
    .s_valid(rs_req_valid),
    .s_ready(rs_req_ready),
    .m_data(rs_req_out),
    .m_valid(out_BUS_AWVALID),
    .m_ready(in_BUS_AWREADY));

wire  [DATA_WIDTH + DATA_WIDTH/8 : 0]   data_in;
wire  [DATA_WIDTH + DATA_WIDTH/8 : 0]   data_out;
wire  [ADDR_WIDTH + 7 : 0]              req_in;
reg                                     req_en;
wire                                    data_en;
wire                                    fifo_valid;
wire                                    read_fifo;
wire                                    req_fifo_valid;
wire                                    read_req;
wire                                    data_push;
wire                                    data_pop;
reg                                     flying_req;
reg   [CNT_WIDTH-1 : 0]                 last_cnt;

//AW Channel
assign req_in   = {in_TOP_AWLEN, in_TOP_AWADDR};
assign out_BUS_AWADDR = rs_req_out[ADDR_WIDTH-1 : 0];
assign out_BUS_AWLEN  = rs_req_out[ADDR_WIDTH+7 : ADDR_WIDTH];
assign rs_req_valid = req_fifo_valid & req_en;

assign read_req      = rs_req_ready & req_en;

always @(*)
begin
    if (~flying_req & data_en)
        req_en <= 1;
    else if (flying_req & (out_BUS_WLAST & data_pop) & (last_cnt[CNT_WIDTH-1:1] != 0))
        req_en <= 1;
    else
        req_en <= 0;
end

always @(posedge clk)
begin
    if (reset)
        flying_req <= 0;
    else if (ce) begin
        if (rs_req_valid & rs_req_ready)
            flying_req <= 1;
        else if (out_BUS_WLAST & data_pop)
            flying_req <= 0;
    end
end

h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
    .DATA_BITS(ADDR_WIDTH + 8),
    .DEPTH(USER_MAXREQS),
    .DEPTH_BITS(log2(USER_MAXREQS))
) req_fifo (
    .sclk(clk),
    .reset(reset),
    .sclk_en(ce),
    .empty_n(req_fifo_valid),
    .full_n(out_TOP_AWREADY),
    .rdreq(read_req),
    .wrreq(in_TOP_AWVALID),
    .q(rs_req_in),
    .data(req_in));

//W Channel
assign data_in  = {in_TOP_WLAST, in_TOP_WSTRB, in_TOP_WDATA};
assign out_BUS_WDATA = data_out[DATA_WIDTH-1 : 0];
assign out_BUS_WSTRB = data_out[DATA_WIDTH+DATA_WIDTH/8-1 : DATA_WIDTH];
assign out_BUS_WLAST = data_out[DATA_WIDTH+DATA_WIDTH/8];
assign out_BUS_WVALID = fifo_valid & data_en & flying_req;

assign data_en   = last_cnt != 0;
assign data_push = in_TOP_WVALID & out_TOP_WREADY;
assign data_pop  = fifo_valid & read_fifo;
assign read_fifo = in_BUS_WREADY & data_en & flying_req;

always @(posedge clk)
begin
    if (reset)
        last_cnt <= 0;
    else if (ce) begin
        if ((in_TOP_WLAST & data_push) && ~(out_BUS_WLAST & data_pop))
            last_cnt <= last_cnt + 1;
        else if (~(in_TOP_WLAST & data_push) && (out_BUS_WLAST & data_pop))
            last_cnt <= last_cnt - 1;
    end
end

h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
    .DATA_BITS(DATA_WIDTH + DATA_WIDTH/8 + 1),
    .DEPTH(DEPTH),
    .DEPTH_BITS(log2(DEPTH))
) data_fifo (
    .sclk(clk),
    .reset(reset),
    .sclk_en(ce),
    .empty_n(fifo_valid),
    .full_n(out_TOP_WREADY),
    .rdreq(read_fifo),
    .wrreq(in_TOP_WVALID),
    .q(data_out),
    .data(data_in));

end
endgenerate

endmodule

`timescale 1ns/1ps

module h264_v_frmbuf_wr_0_0_mm_video_m_axi_read
#(parameter
    NUM_READ_OUTSTANDING      = 2,
    MAX_READ_BURST_LENGTH     = 16,
    C_M_AXI_ID_WIDTH          = 1,
    C_M_AXI_ADDR_WIDTH        = 32,
    C_TARGET_ADDR             = 32'h00000000,
    C_M_AXI_DATA_WIDTH        = 32,
    C_M_AXI_ARUSER_WIDTH      = 1,
    C_M_AXI_RUSER_WIDTH       = 1,
    C_USER_VALUE              = 1'b0,
    C_PROT_VALUE              = 3'b000,
    C_CACHE_VALUE             = 4'b0011,
    USER_DW                   = 16,
    USER_AW                   = 32,
    USER_MAXREQS              = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESET,
    input  wire                         ACLK_EN,
    // read address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        out_BUS_ARID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      out_BUS_ARADDR,
    output wire [7:0]                         out_BUS_ARLEN,
    output wire [2:0]                         out_BUS_ARSIZE,
    output wire [1:0]                         out_BUS_ARBURST,
    output wire [1:0]                         out_BUS_ARLOCK,
    output wire [3:0]                         out_BUS_ARCACHE,
    output wire [2:0]                         out_BUS_ARPROT,
    output wire [3:0]                         out_BUS_ARQOS,
    output wire [3:0]                         out_BUS_ARREGION,
    output wire [C_M_AXI_ARUSER_WIDTH-1:0]    out_BUS_ARUSER,
    output wire                                 out_BUS_ARVALID,
    input  wire                                 in_BUS_ARREADY,
    // read data channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]        in_BUS_RID,
    input  wire [C_M_AXI_DATA_WIDTH-1:0]      in_BUS_RDATA,
    input  wire [1:0]                         in_BUS_RRESP,
    input  wire                                 in_BUS_RLAST,
    input  wire [C_M_AXI_RUSER_WIDTH-1:0]     in_BUS_RUSER,
    input  wire                                 in_BUS_RVALID,
    output wire                                 out_BUS_RREADY,
    // read
    input  wire                                 in_HLS_ARVALID,
    output wire                                 out_HLS_ARREADY,
    input  wire [USER_AW-1:0]                 in_HLS_ARADDR,
    input  wire [31:0]                        in_HLS_ARLEN,
    input  wire [3:0]                         in_HLS_ARCACHE,
    input  wire [2:0]                         in_HLS_ARPROT,
    input  wire [3:0]                         in_HLS_ARQOS,
    input  wire [3:0]                         in_HLS_ARREGION,
    input  wire [C_M_AXI_ARUSER_WIDTH-1:0]    in_HLS_ARUSER,
    output wire [USER_DW-1:0]                 out_HLS_RDATA,
    output wire [1:0]                         out_HLS_RRESP,
    output wire                                 out_HLS_RVALID,
    input  wire                                 in_HLS_RREADY,
    // flush signal
    input  wire                                 flush,
    output wire                                 r_flush_done
);

//------------------------Parameter----------------------
localparam
    USER_DATA_WIDTH = calc_data_width(USER_DW),
    USER_DATA_BYTES = USER_DATA_WIDTH / 8,
    USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
    BUS_DATA_WIDTH  = C_M_AXI_DATA_WIDTH,
    BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
    BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
    NUM_READ_WIDTH = log2(MAX_READ_BURST_LENGTH),
    TARGET_ADDR     = C_TARGET_ADDR & (32'hffffffff << USER_ADDR_ALIGN),
    BOUNDARY_BEATS  = {12-BUS_ADDR_ALIGN{1'b1}};

//------------------------Task and function--------------
function integer calc_data_width;
    input integer x;
    integer y;
begin
    y = 8;
    while (y < x) y = y * 2;
    calc_data_width = y;
end
endfunction

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

//------------------------Local signal-------------------
    // AR channel
    wire [USER_AW + 31:0]                   rreq_data;
    wire [USER_AW + 31:0]                   rs2f_rreq_data;
    wire                                      rs2f_rreq_valid;
    wire                                      rs2f_rreq_ack;
    wire [USER_AW + 31:0]                   fifo_rreq_data;
    wire [USER_AW - 1:0]                    tmp_addr;
    wire [31:0]                             tmp_len;
    reg  [31:0]                             align_len;
    wire [7:0]                              arlen_tmp;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]               araddr_tmp;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]               start_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]               start_addr_buf;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]               end_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]               end_addr_buf;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]               sect_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]               sect_addr_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             sect_end;
    reg  [BUS_ADDR_ALIGN - 1:0]             sect_end_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             burst_end;
    wire [11 - BUS_ADDR_ALIGN:0]            start_to_4k;
    wire [11 - BUS_ADDR_ALIGN:0]            sect_len;
    reg  [11 - BUS_ADDR_ALIGN:0]            sect_len_buf;
    reg  [11 - BUS_ADDR_ALIGN:0]            beat_len_buf;
    reg  [C_M_AXI_ADDR_WIDTH - 13:0]              sect_cnt;
    wire [1:0]                              ar2r_ardata;
    wire                                    fifo_rctl_r;
    wire                                    zero_len_event;
    wire                                    negative_len_event;
    reg                                     invalid_len_event;
    reg                                     invalid_len_event_reg1;
    reg                                     invalid_len_event_reg2;
    wire                                    readRequestFIFONotEmpty;
    reg                                     readRequestFIFONotEmptyReg;
    wire                                    fifo_burst_w;
    wire                                    fifo_resp_w;
    reg                                     ARVALID_Dummy;
    wire                                    ready_for_sect;
    wire                                    next_rreq;
    wire                                    ready_for_rreq;
    reg                                     rreq_handling;
    wire                                    first_sect;
    wire                                    last_sect;
    wire                                    next_sect;
    // R channel
    wire    [BUS_DATA_WIDTH + 2:0]          fifo_rresp_rdata;
    wire    [BUS_DATA_WIDTH + 2:0]          data_pack;
    wire    [BUS_DATA_WIDTH - 1:0]          tmp_data;
    wire    [USER_DW + 1:0]                 rs_rrsp_rdata;
    wire    [USER_DW + 1:0]                 rdata_data_pack;
    reg     [7:0]                           len_cnt;
    wire    [1:0]                           ar2r_rdata;
    wire    [1:0]                           tmp_resp;
    reg     [1:0]                           resp_buf;
    wire                                    tmp_last;
    wire                                    tmp_last_2;
    wire                                    need_rlast;
    wire                                    fifo_rctl_ready;
    wire                                    beat_valid;
    wire                                    next_beat;
    wire                                    burst_valid;
    wire                                    fifo_burst_ready;
    wire                                    next_burst;
    wire                                    rdata_ack_t;
    reg                                     rdata_valid_t;
    wire                                    out_HLS_ARREADY_wo_flush;
    wire                                    in_HLS_RREADY_w_flush;

//------------------------AR channel begin---------------
//------------------------Instantiation------------------
    h264_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice #(
        .N(USER_AW + 32)
    ) rs_rreq (
        .sclk(ACLK),
        .reset(ARESET),
        .s_data(rreq_data),
        .s_valid(in_HLS_ARVALID),
        .s_ready(out_HLS_ARREADY_wo_flush),
        .m_data(rs2f_rreq_data),
        .m_valid(rs2f_rreq_valid),
        .m_ready(rs2f_rreq_ack));

    h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
        .DATA_BITS(USER_AW + 32),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_rreq (
        .sclk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .full_n(rs2f_rreq_ack),
        .wrreq(rs2f_rreq_valid),
        .data(rs2f_rreq_data),
        .empty_n(readRequestFIFONotEmpty),
        .rdreq(next_rreq),
        .q(fifo_rreq_data));

//------------------------Body---------------------------
    assign rreq_data   = {in_HLS_ARLEN, in_HLS_ARADDR};
    assign tmp_addr    = fifo_rreq_data[USER_AW - 1:0];
    assign tmp_len     = fifo_rreq_data[USER_AW + 31:USER_AW];
    assign end_addr    = start_addr + align_len;
    assign ready_for_rreq = last_sect & next_sect | ~rreq_handling;
    assign next_rreq      = (readRequestFIFONotEmpty | readRequestFIFONotEmptyReg) & ready_for_rreq;
    assign zero_len_event = readRequestFIFONotEmpty? (tmp_len == 32'b0) : 0;
    assign negative_len_event = readRequestFIFONotEmpty? tmp_len[31] : 0;

    always @(posedge ACLK)
    begin
        if (ARESET) begin
            align_len   <= 0;
            start_addr <= 0;
        end
        else if (ACLK_EN) begin
            if(readRequestFIFONotEmpty && ready_for_rreq) begin
                align_len   <= (tmp_len << USER_ADDR_ALIGN) - 1;
                start_addr <= TARGET_ADDR + (tmp_addr << USER_ADDR_ALIGN);
            end
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET) begin
            readRequestFIFONotEmptyReg <= 1'b0;
            invalid_len_event <= 1'b0;
            start_addr_buf <= 0;
            end_addr_buf <= 0;
            beat_len_buf <= 0;
            invalid_len_event_reg1 <= 0;
        end
        else if (ACLK_EN) begin
            if(next_rreq) begin
                readRequestFIFONotEmptyReg <= readRequestFIFONotEmpty;
                start_addr_buf <= start_addr;
                end_addr_buf <= end_addr;
                beat_len_buf <= (align_len[11:0] + start_addr[BUS_ADDR_ALIGN-1:0]) >> BUS_ADDR_ALIGN;
                invalid_len_event <= zero_len_event | negative_len_event;
                invalid_len_event_reg1 <= invalid_len_event;
            end
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            rreq_handling <= 1'b0;
        else if (ACLK_EN) begin
            if (readRequestFIFONotEmptyReg && ~rreq_handling && ~invalid_len_event)
                rreq_handling <= 1'b1;
            else if ((~readRequestFIFONotEmptyReg || invalid_len_event) && last_sect && next_sect)
                rreq_handling <= 1'b0;
        end
    end

    assign first_sect = (sect_cnt == start_addr_buf[C_M_AXI_ADDR_WIDTH-1:12]);
    assign last_sect  = (sect_cnt == end_addr_buf[C_M_AXI_ADDR_WIDTH-1:12]);
    assign next_sect  = rreq_handling & ready_for_sect;

    assign sect_addr  = (first_sect)? start_addr_buf : {sect_cnt, {12{1'b0}}};
    assign start_to_4k = BOUNDARY_BEATS - start_addr_buf[11:BUS_ADDR_ALIGN];
    assign sect_len    = ( first_sect &&  last_sect)? beat_len_buf :
                         ( first_sect && ~last_sect)? start_to_4k:
                         (~first_sect &&  last_sect)? end_addr_buf[11:BUS_ADDR_ALIGN] :
                                                      BOUNDARY_BEATS;
    assign sect_end = (last_sect)? end_addr_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};

    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_cnt <= 0;
        else if (ACLK_EN) begin
            if (next_rreq)
                sect_cnt <= start_addr[C_M_AXI_ADDR_WIDTH-1:12];
            else if (next_sect)
                sect_cnt <= sect_cnt + 1;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET) begin
            sect_addr_buf <= 0;
            sect_len_buf <= 0;
            sect_end_buf <= 0;
            invalid_len_event_reg2 <= 0;
        end
        else if (ACLK_EN) begin
            if (next_sect) begin
                sect_addr_buf <= sect_addr;
                sect_len_buf <= sect_len;
                sect_end_buf <= sect_end;
                invalid_len_event_reg2 <= invalid_len_event_reg1;
            end
        end
    end

    assign out_BUS_ARID     = 0;
    assign out_BUS_ARSIZE   = BUS_ADDR_ALIGN;
    assign out_BUS_ARBURST  = 2'b01;
    assign out_BUS_ARLOCK   = 2'b00;
    assign out_BUS_ARCACHE  = C_CACHE_VALUE;
    assign out_BUS_ARPROT   = C_PROT_VALUE;
    assign out_BUS_ARUSER   = C_USER_VALUE;
    assign out_BUS_ARQOS    = in_HLS_ARQOS;
    assign out_BUS_ARREGION = in_HLS_ARREGION;

    generate
    if (BUS_DATA_BYTES >= 4096/MAX_READ_BURST_LENGTH) begin : must_one_burst
        assign out_BUS_ARADDR  = {sect_addr_buf[C_M_AXI_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
        assign out_BUS_ARLEN   = sect_len_buf;
        assign out_BUS_ARVALID = ARVALID_Dummy;

        assign ready_for_sect = ~(ARVALID_Dummy && ~in_BUS_ARREADY) && fifo_burst_ready && fifo_rctl_ready;

        always @(posedge ACLK)
        begin
            if (ARESET)
                ARVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_sect && invalid_len_event_reg1)
                    ARVALID_Dummy <= 1'b0;
                else if (next_sect)
                    ARVALID_Dummy <= 1'b1;
                else if (~next_sect && in_BUS_ARREADY)
                    ARVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_rctl_r  = next_sect;
        assign ar2r_ardata  = {last_sect, 1'b0};

        assign fifo_burst_w = next_sect;
        assign araddr_tmp   = sect_addr[C_M_AXI_ADDR_WIDTH - 1:0];
        assign arlen_tmp    = sect_len;
        assign burst_end    = sect_end;
    end
    else begin : could_multi_bursts
        reg  [C_M_AXI_ADDR_WIDTH - 1:0]                 araddr_buf;
        reg  [7:0]                                      arlen_buf;
        reg  [11 - NUM_READ_WIDTH - BUS_ADDR_ALIGN:0]   loop_cnt;
        reg                                             sect_handling;
        wire                                            last_loop;
        wire                                            next_loop;
        wire                                            ready_for_loop;

        assign out_BUS_ARADDR  = araddr_buf;
        assign out_BUS_ARLEN   = arlen_buf;
        assign out_BUS_ARVALID = ARVALID_Dummy;

        assign last_loop      = (loop_cnt == sect_len_buf[11 - BUS_ADDR_ALIGN : NUM_READ_WIDTH]);
        assign next_loop      = sect_handling && ready_for_loop;
        assign ready_for_loop = ~(ARVALID_Dummy && ~in_BUS_ARREADY) && fifo_burst_ready && fifo_rctl_ready;
        assign ready_for_sect = ~(sect_handling && ~(last_loop && next_loop));

        always @(posedge ACLK)
        begin
            if (ARESET)
                sect_handling <= 1'b0;
            else if (ACLK_EN) begin
                if (rreq_handling && ~sect_handling)
                    sect_handling <= 1'b1;
                else if (~rreq_handling && last_loop && next_loop)
                    sect_handling <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                loop_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_sect)
                    loop_cnt <= 0;
                else if (next_loop)
                    loop_cnt <= loop_cnt + 1;
            end
        end

        assign araddr_tmp = (loop_cnt == 0)? sect_addr_buf[C_M_AXI_ADDR_WIDTH - 1:0] : (araddr_buf + ((arlen_buf + 1) << BUS_ADDR_ALIGN));
        always @(posedge ACLK)
        begin
            if (ARESET)
                araddr_buf <= 0;
            else if (ACLK_EN) begin
                if (next_loop)
                    araddr_buf <= {araddr_tmp[C_M_AXI_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
            end
        end

        assign arlen_tmp  = (NUM_READ_WIDTH == 0) ? 0 :
                            (last_loop)? sect_len_buf[NUM_READ_WIDTH - 1:0] : { NUM_READ_WIDTH{1'b1} };
        always @(posedge ACLK)
        begin
            if (ARESET)
                arlen_buf <= 0;
            else if (ACLK_EN) begin
                if (next_loop)
                    arlen_buf <= arlen_tmp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                ARVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_loop && invalid_len_event_reg2)
                    ARVALID_Dummy <= 1'b0;
                else if (next_loop)
                    ARVALID_Dummy <= 1'b1;
                else if (~next_loop && in_BUS_ARREADY)
                    ARVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_rctl_r = next_loop;
        assign ar2r_ardata = {last_loop, 1'b0};

        assign fifo_burst_w = next_loop;
        assign burst_end    = (last_loop)? sect_end_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    end
    endgenerate

    assign out_HLS_ARREADY = (flush)? 0 : out_HLS_ARREADY_wo_flush; 
//------------------------AR channel end-----------------

//------------------------R channel begin----------------
//------------------------Instantiation------------------
    h264_v_frmbuf_wr_0_0_mm_video_m_axi_buffer #(
        .DATA_WIDTH(BUS_DATA_WIDTH + 3),
        .DEPTH(NUM_READ_OUTSTANDING * MAX_READ_BURST_LENGTH),
        .ADDR_WIDTH(log2(NUM_READ_OUTSTANDING * MAX_READ_BURST_LENGTH))
    ) buff_rdata (
        .clk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .if_full_n(out_BUS_RREADY),
        .if_write_ce(1'b1),
        .if_write(in_BUS_RVALID),
        .if_din(fifo_rresp_rdata),
        .if_empty_n(beat_valid),
        .if_read_ce(1'b1),
        .if_read(next_beat),
        .if_dout(data_pack));

    h264_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice #(
        .N(USER_DW + 2)
    ) rs_rdata (
        .sclk(ACLK),
        .reset(ARESET),
        .s_data(rs_rrsp_rdata),
        .s_valid(rdata_valid_t),
        .s_ready(rdata_ack_t),
        .m_data(rdata_data_pack),
        .m_valid(out_HLS_RVALID),
        .m_ready(in_HLS_RREADY_w_flush));

    h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
        .DATA_BITS(2),
        .DEPTH(NUM_READ_OUTSTANDING-1),
        .DEPTH_BITS(log2(NUM_READ_OUTSTANDING-1))
    ) fifo_rctl (
        .sclk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .empty_n(need_rlast),
        .full_n(fifo_rctl_ready),
        .rdreq(tmp_last_2),
        .wrreq(fifo_rctl_r),
        .q(ar2r_rdata),
        .data(ar2r_ardata));

    assign fifo_rresp_rdata = {in_BUS_RLAST, in_BUS_RRESP, in_BUS_RDATA};
    assign tmp_data         = data_pack[BUS_DATA_WIDTH - 1:0];
    assign tmp_resp         = data_pack[BUS_DATA_WIDTH + 1:BUS_DATA_WIDTH];
    assign tmp_last         = data_pack[BUS_DATA_WIDTH + 2] && beat_valid;
    assign tmp_last_2       = tmp_last && next_beat;

    generate
    if (USER_DATA_WIDTH == BUS_DATA_WIDTH) begin : bus_equal_gen
        reg  [BUS_DATA_WIDTH - 1:0]         data_buf;
        wire                                ready_for_data;

        assign rs_rrsp_rdata = {resp_buf, data_buf[USER_DW - 1:0]};
        assign out_HLS_RRESP          = rdata_data_pack[USER_DW + 1:USER_DW];
        assign out_HLS_RDATA    = rdata_data_pack[USER_DW - 1:0];

        assign fifo_burst_ready = 1'b1;
        assign next_beat        = beat_valid && ready_for_data;
        assign ready_for_data   = ~(rdata_valid_t && ~rdata_ack_t);

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (next_beat)
                    data_buf <= tmp_data;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                resp_buf <= 2'b00;
            else if (ACLK_EN) begin
                if (next_beat)
                    resp_buf <= tmp_resp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                rdata_valid_t <= 1'b0;
            else if (ACLK_EN) begin
                if (next_beat)
                    rdata_valid_t <= 1'b1;
                else if (ready_for_data)
                    rdata_valid_t <= 1'b0;
            end
        end
    end
    else if (USER_DATA_WIDTH < BUS_DATA_WIDTH) begin : bus_wide_gen
        localparam
        TOTAL_SPLIT     = BUS_DATA_WIDTH / USER_DATA_WIDTH,
            SPLIT_ALIGN     = log2(TOTAL_SPLIT);

        wire [2*SPLIT_ALIGN + 7:0]      tmp_burst_info;
        wire [2*SPLIT_ALIGN + 7:0]      burst_pack;
        reg  [BUS_DATA_WIDTH - 1:0]     data_buf;
        wire [SPLIT_ALIGN - 1:0]        split_cnt;
        reg  [SPLIT_ALIGN - 1:0]        split_cnt_buf;
        wire [SPLIT_ALIGN - 1:0]        head_split;
        wire [SPLIT_ALIGN - 1:0]        tail_split;
        wire [7:0]                      arlen_tmp_t;
        wire [7:0]                      burst_len;
        wire                            first_beat;
        wire                            last_beat;
        wire                            first_split;
        wire                            next_split;
        wire                            last_split;
        wire                            ready_for_data;

        h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
            .DATA_BITS(2*SPLIT_ALIGN + 8),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset(ARESET),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_pack),
            .data(tmp_burst_info));

        assign rs_rrsp_rdata = {resp_buf, data_buf[USER_DW - 1:0]};
        assign out_HLS_RRESP          = rdata_data_pack[USER_DW + 1:USER_DW];
        assign out_HLS_RDATA    = rdata_data_pack[USER_DW - 1:0];

        assign arlen_tmp_t    = arlen_tmp;
        assign tmp_burst_info = {araddr_tmp[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], burst_end[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], arlen_tmp_t};
        assign head_split     = burst_pack[2*SPLIT_ALIGN + 7:8 + SPLIT_ALIGN];
        assign tail_split     = burst_pack[SPLIT_ALIGN + 7:8];
        assign burst_len      = burst_pack[7:0];

        assign next_beat        = last_split;
        assign next_burst       = last_beat && last_split;
        assign ready_for_data   = ~(rdata_valid_t && ~rdata_ack_t);

        assign first_beat = (len_cnt == 0) && burst_valid && beat_valid;
        assign last_beat  = (len_cnt == burst_len) && burst_valid && beat_valid;

        assign first_split = (~first_beat)? (split_cnt == 0 && beat_valid && ready_for_data) : ((split_cnt == head_split) && ready_for_data);
        assign last_split  = (~last_beat)? (split_cnt == (TOTAL_SPLIT - 1) && ready_for_data) : ((split_cnt == tail_split) && ready_for_data);
        assign next_split  = (~first_beat)? ((split_cnt != 0) && ready_for_data) : ((split_cnt != head_split) && ready_for_data);

        assign split_cnt = (first_beat && (split_cnt_buf == 0))? head_split : split_cnt_buf;
        always @(posedge ACLK)
        begin
            if (ARESET)
                split_cnt_buf <= 0;
            else if (ACLK_EN) begin
                if (last_split)
                    split_cnt_buf <= 0;
                else if (first_split || next_split)
                    split_cnt_buf <= split_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                len_cnt <= 0;
            else if (ACLK_EN) begin
                if (last_beat && last_split)
                    len_cnt <= 0;
                else if (last_split)
                    len_cnt <= len_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (first_split && first_beat)
                    data_buf <= tmp_data >> (head_split * USER_DATA_WIDTH);
                else if (first_split)
                    data_buf <= tmp_data;
                else if (next_split)
                    data_buf <= data_buf >> USER_DATA_WIDTH;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                resp_buf <= 2'b00;
            else if (ACLK_EN) begin
                if (first_split)
                    resp_buf <= tmp_resp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                rdata_valid_t <= 0;
            else if (ACLK_EN) begin
                if (first_split)
                    rdata_valid_t <= 1;
                else if (~(first_split || next_split) && ready_for_data)
                    rdata_valid_t <= 0;
            end
        end

    end
    else begin: bus_narrow_gen
        localparam
            TOTAL_PADS      = USER_DATA_WIDTH / BUS_DATA_WIDTH,
            PAD_ALIGN       = log2(TOTAL_PADS);

        reg  [USER_DATA_WIDTH - 1:0]        data_buf;
        wire [TOTAL_PADS - 1:0]             pad_oh;
        reg  [TOTAL_PADS - 1:0]             pad_oh_reg;
        wire                                ready_for_data;
        wire                                next_pad;
        reg                                 first_pad;
        wire                                last_pad;
        wire                                next_data;

        assign rs_rrsp_rdata = {resp_buf, data_buf[USER_DW - 1:0]};
        assign out_HLS_RRESP          = rdata_data_pack[USER_DW + 1:USER_DW];
        assign out_HLS_RDATA    = rdata_data_pack[USER_DW - 1:0];

        assign fifo_burst_ready = 1'b1;
        assign next_beat        = next_pad;
        assign ready_for_data   = ~(rdata_valid_t && ~rdata_ack_t);

        assign next_pad  = beat_valid && ready_for_data;
        assign last_pad  = pad_oh[TOTAL_PADS - 1];
        assign next_data = last_pad && ready_for_data;

        always @(posedge ACLK)
        begin
            if (ARESET)
                first_pad <= 1;
            else if (ACLK_EN) begin
                if (next_pad && ~last_pad)
                    first_pad <= 0;
                else if (next_pad && last_pad)
                    first_pad <= 1;
            end
        end

        assign pad_oh = (beat_valid == 0)?  0 :
                        (first_pad)?        1 :
                                            pad_oh_reg;
        always @(posedge ACLK)
        begin
            if (ARESET)
                pad_oh_reg <= 0;
            else if (ACLK_EN) begin
                if (next_pad)
                    pad_oh_reg <= {pad_oh[TOTAL_PADS - 2:0], 1'b0};
            end
        end

        genvar  i;
        for (i = 1; i <= TOTAL_PADS; i = i + 1) begin : data_gen
            always @(posedge ACLK)
            begin
                if (ACLK_EN) begin
                    if (pad_oh[i-1] == 1'b1 && ready_for_data)
                        data_buf[i*BUS_DATA_WIDTH - 1:(i-1)*BUS_DATA_WIDTH] <= tmp_data;
                end
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                resp_buf <= 2'b00;
            else if (ACLK_EN) begin
                if (next_beat && (resp_buf[0] ==1'b0))
                    resp_buf <= tmp_resp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                rdata_valid_t <= 0;
            else if (ACLK_EN) begin
                if (next_data)
                    rdata_valid_t <= 1;
                else if (ready_for_data)
                    rdata_valid_t <= 0;
            end
        end
    end
    endgenerate

    assign in_HLS_RREADY_w_flush = flush | in_HLS_RREADY;
    assign r_flush_done = (flush)? ~need_rlast : 0;
//------------------------Body---------------------------
//------------------------R channel end------------------
endmodule

module h264_v_frmbuf_wr_0_0_mm_video_m_axi_write
#(parameter
    NUM_WRITE_OUTSTANDING     = 2,
    MAX_WRITE_BURST_LENGTH    = 16,
    C_M_AXI_ID_WIDTH          = 1,
    C_M_AXI_ADDR_WIDTH        = 32,
    C_TARGET_ADDR             = 32'h00000000,
    C_M_AXI_DATA_WIDTH        = 32,
    C_M_AXI_AWUSER_WIDTH      = 1,
    C_M_AXI_WUSER_WIDTH       = 1,
    C_M_AXI_BUSER_WIDTH       = 1,
    C_USER_VALUE              = 1'b0,
    C_PROT_VALUE              = 3'b000,
    C_CACHE_VALUE             = 4'b0011,
    USER_DW                   = 16,
    USER_AW                   = 32,
    USER_MAXREQS              = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESET,
    input  wire                         ACLK_EN,
    // write address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        out_BUS_AWID,
    output wire [2:0]                         out_BUS_AWSIZE,
    output wire [1:0]                         out_BUS_AWBURST,
    output wire [1:0]                         out_BUS_AWLOCK,
    output wire [3:0]                         out_BUS_AWCACHE,
    output wire [2:0]                         out_BUS_AWPROT,
    output wire [3:0]                         out_BUS_AWQOS,
    output wire [3:0]                         out_BUS_AWREGION,
    output wire [C_M_AXI_AWUSER_WIDTH-1:0]    out_BUS_AWUSER,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      out_TOP_AWADDR,
    output wire [7:0]                         out_TOP_AWLEN,
    output wire                                 out_TOP_AWVALID,
    input  wire                                 in_TOP_AWREADY,
    // write data channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        out_BUS_WID,
    output wire [C_M_AXI_WUSER_WIDTH-1:0]     out_BUS_WUSER,
    output wire [C_M_AXI_DATA_WIDTH-1:0]      out_TOP_WDATA,
    output wire [C_M_AXI_DATA_WIDTH/8-1:0]    out_TOP_WSTRB,
    output wire                                 out_TOP_WLAST,
    output wire                                 out_TOP_WVALID,
    input  wire                                 in_TOP_WREADY,
    // write response channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]        in_BUS_BID,
    input  wire [1:0]                         in_BUS_BRESP,
    input  wire [C_M_AXI_BUSER_WIDTH-1:0]     in_BUS_BUSER,
    input  wire                                 in_BUS_BVALID,
    output wire                                 out_BUS_BREADY,
    // write request
    input  wire                                 in_HLS_AWVALID,
    output wire                                 out_HLS_AWREADY,
    input  wire [USER_AW-1:0]                 in_HLS_AWADDR,
    input  wire [31:0]                        in_HLS_AWLEN,
    input  wire [3:0]                         in_HLS_AWCACHE,
    input  wire [2:0]                         in_HLS_AWPROT,
    input  wire [3:0]                         in_HLS_AWQOS,
    input  wire [3:0]                         in_HLS_AWREGION,
    input  wire [C_M_AXI_AWUSER_WIDTH-1:0]    in_HLS_AWUSER,
    input  wire                                 in_HLS_WVALID,
    output wire                                 out_HLS_WREADY,
    input  wire [USER_DW/8-1:0]               in_HLS_WSTRB,
    input  wire [C_M_AXI_WUSER_WIDTH-1:0]     in_HLS_WUSER,
    input  wire [USER_DW-1:0]                 in_HLS_WDATA,
    output wire                                 out_HLS_BVALID,
    input  wire                                 in_HLS_BREADY,
    output wire [1:0]                         out_HLS_BRESP,
    // flush signal
    input  wire                                 flush,
    output wire                                 w_flush_done
);

//------------------------Parameter----------------------
localparam
    USER_DATA_WIDTH = calc_data_width(USER_DW),
    USER_DATA_BYTES = USER_DATA_WIDTH / 8,
    USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
    BUS_DATA_WIDTH  = C_M_AXI_DATA_WIDTH,
    BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
    BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
    NUM_WRITE_WIDTH = log2(MAX_WRITE_BURST_LENGTH),
    TARGET_ADDR     = C_TARGET_ADDR & (32'hffffffff << USER_ADDR_ALIGN),
    BOUNDARY_BEATS  = {12-BUS_ADDR_ALIGN{1'b1}};

//------------------------Task and function--------------
function integer calc_data_width;
    input integer x;
    integer y;
begin
    y = 8;
    while (y < x) y = y * 2;
    calc_data_width = y;
end
endfunction

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

//------------------------Local signal-------------------
    // AW channel
    wire [USER_AW + 31:0]                   wreq_data;
    wire [USER_AW + 31:0]                   rs2f_wreq_data;
    wire                                      rs2f_wreq_valid;
    wire                                      rs2f_wreq_ack;
    wire [USER_AW + 31:0]                   fifo_wreq_data;
    wire [USER_AW - 1:0]                    tmp_addr;
    wire [31:0]                             tmp_len;
    reg  [31:0]                             align_len;
    wire [7:0]                              awlen_tmp;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]         awaddr_tmp;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]         start_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]         start_addr_buf;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]         end_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]         end_addr_buf;
    wire [C_M_AXI_ADDR_WIDTH - 1:0]         sect_addr;
    reg  [C_M_AXI_ADDR_WIDTH - 1:0]         sect_addr_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             sect_end;
    reg  [BUS_ADDR_ALIGN - 1:0]             sect_end_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             burst_end;
    wire [11 - BUS_ADDR_ALIGN:0]            start_to_4k;
    wire [11 - BUS_ADDR_ALIGN:0]            sect_len;
    reg  [11 - BUS_ADDR_ALIGN:0]            sect_len_buf;
    reg  [11 - BUS_ADDR_ALIGN:0]            beat_len_buf;
    wire [1:0]                              aw2b_awdata;
    reg  [C_M_AXI_ADDR_WIDTH - 13:0]        sect_cnt;
    wire                                    zero_len_event;
    wire                                    negative_len_event;
    reg                                     invalid_len_event;
    reg                                     invalid_len_event_reg1;
    reg                                     invalid_len_event_reg2;
    wire                                    fifo_wreq_valid;
    reg                                     fifo_wreq_valid_buf;
    wire                                    fifo_wreq_read;
    wire                                    fifo_burst_w;
    wire                                    fifo_resp_w;
    reg                                     AWVALID_Dummy;
    reg                                     last_sect_buf;
    wire                                    ready_for_sect;
    wire                                    next_wreq;
    wire                                    ready_for_wreq;
    reg                                     wreq_handling;
    wire                                    first_sect;
    wire                                    last_sect;
    wire                                    next_sect;
    wire                                    out_HLS_AWREADY_wo_flush;
    // W channel
    wire    [USER_DW + USER_DW/8 - 1:0]     fifo_wdata_wstrb;
    wire    [USER_DW + USER_DW/8 - 1:0]     data_pack;
    wire    [USER_DATA_WIDTH - 1:0]         tmp_data;
    wire    [USER_DATA_BYTES - 1:0]         tmp_strb;
    reg     [7:0]                           len_cnt;
    wire    [7:0]                           burst_len;
    wire                                    beat_valid;
    wire                                    next_data;
    wire                                    burst_valid;
    wire                                    fifo_burst_ready;
    wire                                    next_burst;
    wire                                    data_valid;
    reg                                     WVALID_Dummy;
    reg                                     WLAST_Dummy;
    wire                                    in_HLS_WVALID_w_flush;
    //B channel
    wire    [1:0]                           aw2b_bdata;
    reg     [1:0]                           bresp_tmp;
    reg                                     next_resp;
    wire                                    last_resp;
    wire                                    invalid_event;
    wire                                    fifo_resp_ready;
    wire                                    need_wrsp;
    wire                                    resp_match;
    wire                                    resp_ready;

//------------------------AW channel begin---------------
//------------------------Instantiation------------------
    h264_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice #(
        .N(USER_AW + 32)
    ) rs_wreq (
        .sclk(ACLK),
        .reset(ARESET),
        .s_data(wreq_data),
        .s_valid(in_HLS_AWVALID),
        .s_ready(out_HLS_AWREADY_wo_flush),
        .m_data(rs2f_wreq_data),
        .m_valid(rs2f_wreq_valid),
        .m_ready(rs2f_wreq_ack));

    h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
        .DATA_BITS(USER_AW + 32),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_wreq (
        .sclk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .full_n(rs2f_wreq_ack),
        .wrreq(rs2f_wreq_valid),
        .data(rs2f_wreq_data),
        .empty_n(fifo_wreq_valid),
        .rdreq(fifo_wreq_read),
        .q(fifo_wreq_data));

//------------------------Body---------------------------
    assign wreq_data   = {in_HLS_AWLEN, in_HLS_AWADDR};
    assign tmp_addr    = fifo_wreq_data[USER_AW - 1:0];
    assign tmp_len     = fifo_wreq_data[USER_AW + 31:USER_AW];

    assign zero_len_event = fifo_wreq_valid? (tmp_len == 32'b0) : 0;
    assign negative_len_event = fifo_wreq_valid? tmp_len[31] : 0;

    assign end_addr    = start_addr + align_len;

    always @(posedge ACLK)
    begin
        if (ARESET)
            align_len   <= 0;
        else if (ACLK_EN) begin
            if(fifo_wreq_valid && ready_for_wreq) begin
                if (zero_len_event || negative_len_event)
                    align_len   <= 32'b0;
                else
                    align_len   <= (tmp_len << USER_ADDR_ALIGN) - 1;
            end
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            start_addr <= 0;
        else if (ACLK_EN) begin
            if(fifo_wreq_valid && ready_for_wreq)
                start_addr <= TARGET_ADDR + (tmp_addr << USER_ADDR_ALIGN);
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            fifo_wreq_valid_buf <= 1'b0;
        else if (ACLK_EN) begin
            if(next_wreq)
                fifo_wreq_valid_buf <= fifo_wreq_valid;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            invalid_len_event <= 1'b0;
        else if (ACLK_EN) begin
            if(next_wreq)
                invalid_len_event <= zero_len_event || negative_len_event;
        end
    end

    assign next_wreq      = (fifo_wreq_valid || fifo_wreq_valid_buf) && ready_for_wreq;
    assign ready_for_wreq = ~(wreq_handling && ~(last_sect && next_sect));
    assign fifo_wreq_read = next_wreq;

    always @(posedge ACLK)
    begin
        if (ARESET)
            wreq_handling <= 1'b0;
        else if (ACLK_EN) begin
            if (fifo_wreq_valid_buf && ~wreq_handling)
                wreq_handling <= 1'b1;
            else if (~fifo_wreq_valid_buf && last_sect && next_sect)
                wreq_handling <= 1'b0;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            start_addr_buf <= 0;
        else if (ACLK_EN) begin
            if (next_wreq)
                start_addr_buf <= start_addr;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            end_addr_buf <= 0;
        else if (ACLK_EN) begin
            if (next_wreq)
                end_addr_buf <= end_addr;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            beat_len_buf <= 0;
        else if (ACLK_EN) begin
            if (next_wreq)
                beat_len_buf <= (align_len[11:0] + start_addr[BUS_ADDR_ALIGN-1:0]) >> BUS_ADDR_ALIGN;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_cnt <= 0;
        else if (ACLK_EN) begin
            if (next_wreq)
                sect_cnt <= start_addr[C_M_AXI_ADDR_WIDTH-1:12];
            else if (next_sect)
                sect_cnt <= sect_cnt + 1;
        end
    end

    // event registers
    always @(posedge ACLK)
    begin
        if (ARESET)
            invalid_len_event_reg1 <= 0;
        else if (ACLK_EN) begin
            if (next_wreq) begin
                 invalid_len_event_reg1 <= invalid_len_event;
            end
        end
    end
    // end event registers

    assign first_sect = (sect_cnt == start_addr_buf[C_M_AXI_ADDR_WIDTH-1:12]);
    assign last_sect  = (sect_cnt == end_addr_buf[C_M_AXI_ADDR_WIDTH-1:12]);
    assign next_sect  = wreq_handling && ready_for_sect;

    assign sect_addr  = (first_sect)? start_addr_buf : {sect_cnt, {12{1'b0}}};
    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_addr_buf <= 0;
        else if (ACLK_EN) begin
            if (next_sect)
                sect_addr_buf <= sect_addr;
        end
    end

    assign start_to_4k = BOUNDARY_BEATS - start_addr_buf[11:BUS_ADDR_ALIGN];
    assign sect_len    = ( first_sect &&  last_sect)? beat_len_buf :
                         ( first_sect && ~last_sect)? start_to_4k:
                         (~first_sect &&  last_sect)? end_addr_buf[11:BUS_ADDR_ALIGN] :
                                                      BOUNDARY_BEATS;

    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_len_buf <= 0;
        else if (ACLK_EN) begin
            if (next_sect)
                sect_len_buf <= sect_len;
        end
    end

    assign sect_end = (last_sect)? end_addr_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_end_buf <= 0;
        else if (ACLK_EN) begin
            if (next_sect)
                sect_end_buf <= sect_end;
        end
    end

    // event registers
    always @(posedge ACLK)
    begin
        if (ARESET)
            invalid_len_event_reg2 <= 0;
        else if (ACLK_EN) begin
            if(next_sect) begin
                invalid_len_event_reg2 <= invalid_len_event_reg1;
            end
        end
    end 
    // end event registers

    assign out_BUS_AWID     = 0;
    assign out_BUS_AWSIZE   = BUS_ADDR_ALIGN;
    assign out_BUS_AWBURST  = 2'b01;
    assign out_BUS_AWLOCK   = 2'b00;
    assign out_BUS_AWCACHE  = C_CACHE_VALUE;
    assign out_BUS_AWPROT   = C_PROT_VALUE;
    assign out_BUS_AWUSER   = C_USER_VALUE;
    assign out_BUS_AWQOS    = in_HLS_AWQOS;
    assign out_BUS_AWREGION = in_HLS_AWREGION;

    generate
    if (BUS_DATA_BYTES >= 4096/MAX_WRITE_BURST_LENGTH) begin : must_one_burst
        assign out_TOP_AWADDR  = {sect_addr_buf[C_M_AXI_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
        assign out_TOP_AWLEN   = sect_len_buf;
        assign out_TOP_AWVALID = AWVALID_Dummy;

        assign ready_for_sect = ~(AWVALID_Dummy && ~in_TOP_AWREADY) && fifo_burst_ready && fifo_resp_ready;

        always @(posedge ACLK)
        begin
            if (ARESET)
                AWVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_sect && invalid_len_event_reg1)
                    AWVALID_Dummy <= 1'b0;
                else if (next_sect)
                    AWVALID_Dummy <= 1'b1;
                else if (~next_sect && in_TOP_AWREADY)
                    AWVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_resp_w = next_sect;
        assign aw2b_awdata = {last_sect, invalid_len_event_reg1};

        assign fifo_burst_w = ~invalid_len_event_reg1 & next_sect;
        assign awaddr_tmp   = sect_addr[C_M_AXI_ADDR_WIDTH - 1:0];
        assign awlen_tmp    = sect_len;
        assign burst_end    = sect_end;
    end
    else begin : could_multi_bursts
        reg  [C_M_AXI_ADDR_WIDTH - 1:0]                     awaddr_buf;
        reg  [7:0]                                          awlen_buf;
        reg  [11 - NUM_WRITE_WIDTH - BUS_ADDR_ALIGN : 0]    loop_cnt;
        reg                                                 sect_handling;
        wire                                                last_loop;
        wire                                                next_loop;
        wire                                                ready_for_loop;

        assign out_TOP_AWADDR  = awaddr_buf;
        assign out_TOP_AWLEN   = awlen_buf;
        assign out_TOP_AWVALID = AWVALID_Dummy;

        assign last_loop      = (loop_cnt == sect_len_buf[11 - BUS_ADDR_ALIGN : NUM_WRITE_WIDTH]);
        assign next_loop      = sect_handling && ready_for_loop;
        assign ready_for_loop = ~(AWVALID_Dummy && ~in_TOP_AWREADY) && fifo_resp_ready && fifo_burst_ready;
        assign ready_for_sect = ~(sect_handling && ~(last_loop && next_loop));

        always @(posedge ACLK)
        begin
            if (ARESET)
                sect_handling <= 1'b0;
            else if (ACLK_EN) begin
                if (wreq_handling && ~sect_handling)
                    sect_handling <= 1'b1;
                else if (~wreq_handling && last_loop && next_loop)
                    sect_handling <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                loop_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_sect)
                    loop_cnt <= 0;
                else if (next_loop)
                    loop_cnt <= loop_cnt + 1;
            end
        end

        assign awaddr_tmp = (loop_cnt == 0)? sect_addr_buf[C_M_AXI_ADDR_WIDTH - 1:0] : (awaddr_buf + ((awlen_buf + 1) << BUS_ADDR_ALIGN));
        always @(posedge ACLK)
        begin
            if (ARESET)
                awaddr_buf <= 0;
            else if (ACLK_EN) begin
                if (next_loop)
                    awaddr_buf <= {awaddr_tmp[C_M_AXI_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
            end
        end

        assign awlen_tmp  = (NUM_WRITE_WIDTH == 0)? 0 :
                            (last_loop)? sect_len_buf[NUM_WRITE_WIDTH - 1:0] : { NUM_WRITE_WIDTH{1'b1} };
        always @(posedge ACLK)
        begin
            if (ARESET)
                awlen_buf <= 0;
            else if (ACLK_EN) begin
                if (next_loop)
                    awlen_buf <= awlen_tmp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                AWVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_loop && invalid_len_event_reg2)
                    AWVALID_Dummy <= 1'b0;
                else if (next_loop)
                    AWVALID_Dummy <= 1'b1;
                else if (~next_loop && in_TOP_AWREADY)
                    AWVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_resp_w = next_loop;
        assign aw2b_awdata = {(last_loop & last_sect_buf), invalid_len_event_reg2};
        always @(posedge ACLK)
        begin
            if (ARESET)
                last_sect_buf <= 0;
            else if (ACLK_EN) begin
                if (next_sect && last_sect)
                    last_sect_buf <= 1;
                else if (next_sect)
                    last_sect_buf <= 0;
            end
        end

        assign fifo_burst_w = ~invalid_len_event_reg2 & next_loop;
        assign burst_end    = (last_loop)? sect_end_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    end
    endgenerate

    assign out_HLS_AWREADY = (flush)? 0 : out_HLS_AWREADY_wo_flush;
//------------------------AW channel end-----------------

//------------------------W channel begin----------------
//------------------------Instantiation------------------
    h264_v_frmbuf_wr_0_0_mm_video_m_axi_buffer #(
        .DATA_WIDTH(USER_DW + USER_DW/8),
        .DEPTH(NUM_WRITE_OUTSTANDING * MAX_WRITE_BURST_LENGTH),
        .ADDR_WIDTH(log2(NUM_WRITE_OUTSTANDING * MAX_WRITE_BURST_LENGTH))
    ) buff_wdata (
        .clk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .if_full_n(out_HLS_WREADY),
        .if_write_ce(1'b1),
        .if_write(in_HLS_WVALID_w_flush),
        .if_din(fifo_wdata_wstrb),
        .if_empty_n(data_valid),
        .if_read_ce(1'b1),
        .if_read(next_data),
        .if_dout(data_pack)
    );

//------------------------Body---------------------------
    assign fifo_wdata_wstrb = {in_HLS_WSTRB, in_HLS_WDATA};
    assign tmp_data         = data_pack[USER_DW - 1:0];
    assign tmp_strb         = data_pack[USER_DW + USER_DW/8 - 1:USER_DW];

    assign out_BUS_WID   = 0;
    assign out_BUS_WUSER = C_USER_VALUE;

    generate
    if (USER_DATA_WIDTH == BUS_DATA_WIDTH) begin : bus_equal_gen
        reg  [BUS_DATA_WIDTH - 1:0]         data_buf;
        reg  [BUS_DATA_BYTES - 1:0]         strb_buf;
        wire [7:0]                          tmp_burst_info;
        wire                                ready_for_data;

        h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
            .DATA_BITS(8),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset(ARESET),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_len),
            .data(tmp_burst_info));

        assign out_TOP_WDATA   = data_buf;
        assign out_TOP_WSTRB   = strb_buf;
        assign out_TOP_WLAST   = WLAST_Dummy;
        assign out_TOP_WVALID  = WVALID_Dummy;

        assign tmp_burst_info = awlen_tmp;

        assign next_data        = burst_valid && data_valid && ready_for_data;
        assign next_burst       = (len_cnt == burst_len) && next_data;
        assign ready_for_data   = ~(WVALID_Dummy && ~in_TOP_WREADY);

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (next_data)
                    data_buf <= tmp_data;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                strb_buf <= 0;
            else if (ACLK_EN) begin
                if (next_data)
                    strb_buf <= tmp_strb;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_data)
                    WVALID_Dummy <= 1'b1;
                else if (ready_for_data)
                    WVALID_Dummy <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WLAST_Dummy <= 0;
            else if (ACLK_EN) begin
                if (next_burst)
                    WLAST_Dummy <= 1;
                else if (ready_for_data)
                    WLAST_Dummy <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                len_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_burst)
                    len_cnt <= 0;
                else if (next_data)
                    len_cnt <= len_cnt + 1;
            end
        end

    end
    else if (USER_DATA_WIDTH > BUS_DATA_WIDTH) begin : bus_narrow_gen
        localparam
            TOTAL_SPLIT     = USER_DATA_WIDTH / BUS_DATA_WIDTH,
            SPLIT_ALIGN     = log2(TOTAL_SPLIT);

        reg  [USER_DATA_WIDTH - 1:0]                data_buf;
        reg  [USER_DATA_BYTES - 1:0]                strb_buf;
        reg  [SPLIT_ALIGN - 1:0]                    split_cnt;
        wire [7:0]                                  tmp_burst_info;
        wire                                        first_split;
        wire                                        next_split;
        wire                                        last_split;
        wire                                        ready_for_data;

        h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
            .DATA_BITS(8),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset(ARESET),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_len),
            .data(tmp_burst_info));

        assign out_TOP_WDATA   = data_buf[BUS_DATA_WIDTH - 1:0];
        assign out_TOP_WSTRB   = strb_buf[BUS_DATA_BYTES - 1:0];
        assign out_TOP_WLAST   = WLAST_Dummy;
        assign out_TOP_WVALID  = WVALID_Dummy;

        assign tmp_burst_info = awlen_tmp;

        assign next_data        = first_split;
        assign next_burst       = (len_cnt == burst_len) && burst_valid && last_split;
        assign ready_for_data   = ~(WVALID_Dummy && ~in_TOP_WREADY);

        assign first_split = (split_cnt == 0) && data_valid && burst_valid && ready_for_data;
        assign last_split  = (split_cnt == (TOTAL_SPLIT - 1)) && ready_for_data;
        assign next_split  = (split_cnt != 0) && ready_for_data;

        always @(posedge ACLK)
        begin
            if (ARESET)
                split_cnt <= 0;
            else if (ACLK_EN) begin
                if (last_split)
                    split_cnt <= 0;
                else if (first_split || next_split)
                    split_cnt <= split_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                len_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_burst)
                    len_cnt <= 0;
                else if (next_data || next_split)
                    len_cnt <= len_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (next_data)
                    data_buf <= tmp_data;
                else if (next_split)
                    data_buf <= data_buf >> BUS_DATA_WIDTH;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                strb_buf <= 0;
            else if (ACLK_EN) begin
                if (next_data)
                    strb_buf <= tmp_strb;
                else if (next_split)
                    strb_buf <= strb_buf >> BUS_DATA_BYTES;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WVALID_Dummy <= 0;
            else if (ACLK_EN) begin
                if (next_data)
                    WVALID_Dummy <= 1;
                else if (~(first_split || next_split) && ready_for_data)
                    WVALID_Dummy <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WLAST_Dummy <= 0;
            else if (ACLK_EN) begin
                if (next_burst && last_split)
                    WLAST_Dummy <= 1;
                else if (ready_for_data)
                    WLAST_Dummy <= 0;
            end
        end

    end
    else begin: bus_wide_gen
        localparam
            TOTAL_PADS      = BUS_DATA_WIDTH / USER_DATA_WIDTH,
            PAD_ALIGN       = log2(TOTAL_PADS);

        reg  [BUS_DATA_WIDTH - 1:0]                 data_buf;
        reg  [BUS_DATA_BYTES - 1:0]                 strb_buf;
        wire [2*PAD_ALIGN + 7:0]                    burst_pack;
        wire [2*PAD_ALIGN + 7:0]                    tmp_burst_info;
        wire [PAD_ALIGN - 1:0]                      head_pads;
        wire [PAD_ALIGN - 1:0]                      tail_pads;
        wire [TOTAL_PADS - 1:0]                     add_head;
        wire [TOTAL_PADS - 1:0]                     add_tail;
        wire [TOTAL_PADS - 1:0]                     pad_oh;
        reg  [TOTAL_PADS - 1:0]                     pad_oh_reg;
        wire [TOTAL_PADS - 1:0]                     head_pad_sel;
        wire [0:TOTAL_PADS - 1]                     tail_pad_sel;
        wire [7:0]                                  awlen_tmp_t;
        wire                                        ready_for_data;
        wire                                        next_pad;
        reg                                         first_pad;
        wire                                        last_pad;
        wire                                        first_beat;
        wire                                        last_beat;
        wire                                        next_beat;

        h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
            .DATA_BITS(8 + 2*PAD_ALIGN),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset(ARESET),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_pack),
            .data(tmp_burst_info));

        assign out_TOP_WDATA   = data_buf;
        assign out_TOP_WSTRB   = strb_buf;
        assign out_TOP_WLAST   = WLAST_Dummy;
        assign out_TOP_WVALID  = WVALID_Dummy;

        assign awlen_tmp_t = awlen_tmp;
        assign tmp_burst_info = {awaddr_tmp[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], burst_end[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], awlen_tmp_t};

        h264_v_frmbuf_wr_0_0_mm_video_m_axi_decoder #(
            .DIN_WIDTH(PAD_ALIGN)
        ) head_pad_decoder (
            .din(head_pads),
            .dout(head_pad_sel));

        h264_v_frmbuf_wr_0_0_mm_video_m_axi_decoder #(
            .DIN_WIDTH(PAD_ALIGN)
        ) tail_pad_decoder (
            .din(tail_pads),
            .dout(tail_pad_sel));

        assign head_pads = burst_pack[2*PAD_ALIGN + 7:8 + PAD_ALIGN];
        assign tail_pads = ~burst_pack[PAD_ALIGN + 7:8];
        assign burst_len = burst_pack[7:0];

        assign next_data        = next_pad;
        assign next_burst       = last_beat && next_beat;
        assign ready_for_data   = ~(WVALID_Dummy && ~in_TOP_WREADY);

        assign first_beat = (len_cnt == 0) && burst_valid;
        assign last_beat  = (len_cnt == burst_len) && burst_valid;
        assign next_beat  = burst_valid && last_pad && ready_for_data;

        assign next_pad  = burst_valid && data_valid && ready_for_data;
        assign last_pad  = (last_beat)? pad_oh[TOTAL_PADS - tail_pads - 1] : pad_oh[TOTAL_PADS - 1];

        always @(posedge ACLK)
        begin
            if (ARESET)
                first_pad <= 1;
            else if (ACLK_EN) begin
                if (next_pad && ~last_pad)
                    first_pad <= 0;
                else if (next_pad && last_pad)
                    first_pad <= 1;
            end
        end

        assign pad_oh = (data_valid == 0)?          0 :
                        (first_pad && first_beat)?  1 << head_pads :
                        (first_pad)?                1 :
                                                    pad_oh_reg;
        always @(posedge ACLK)
        begin
            if (ARESET)
                pad_oh_reg <= 0;
            else if (ACLK_EN) begin
                if (next_pad)
                    pad_oh_reg <= {pad_oh[TOTAL_PADS - 2:0], 1'b0};
            end
        end

        genvar  i;
        for (i = 1; i <= TOTAL_PADS; i = i + 1) begin : data_gen
            assign add_head[i-1] = head_pad_sel[i-1] && first_beat;
            assign add_tail[i-1] = tail_pad_sel[i-1] && last_beat;

            always @(posedge ACLK)
            begin
                if (ACLK_EN) begin
                    if ((add_head[i-1] || add_tail[i-1]) && ready_for_data)
                        data_buf[i*USER_DATA_WIDTH - 1:(i-1)*USER_DATA_WIDTH] <= 0;
                    else if (pad_oh[i-1] == 1'b1 && ready_for_data)
                        data_buf[i*USER_DATA_WIDTH - 1:(i-1)*USER_DATA_WIDTH] <= tmp_data;
                end
            end

            always @(posedge ACLK)
            begin
                if (ARESET)
                    strb_buf[i*USER_DATA_BYTES - 1:(i-1)*USER_DATA_BYTES] <= 0;
                else if (ACLK_EN) begin
                    if ((add_head[i-1] || add_tail[i-1]) && ready_for_data)
                        strb_buf[i*USER_DATA_BYTES - 1:(i-1)*USER_DATA_BYTES] <= 0;
                    else if (pad_oh[i-1] == 1'b1 && ready_for_data)
                        strb_buf[i*USER_DATA_BYTES - 1:(i-1)*USER_DATA_BYTES] <= tmp_strb;
                end
            end

        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WVALID_Dummy <= 0;
            else if (ACLK_EN) begin
                if (next_beat)
                    WVALID_Dummy <= 1;
                else if (ready_for_data)
                    WVALID_Dummy <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                WLAST_Dummy <= 0;
            else if (ACLK_EN) begin
                if (next_burst)
                    WLAST_Dummy <= 1;
                else if (ready_for_data)
                    WLAST_Dummy <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                len_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_burst)
                    len_cnt <= 0;
                else if (next_beat)
                    len_cnt <= len_cnt + 1;
            end
        end

    end
    endgenerate

    assign in_HLS_WVALID_w_flush = flush | in_HLS_WVALID;
//------------------------W channel end------------------

//------------------------B channel begin----------------
//------------------------Instantiation------------------
    h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
        .DATA_BITS(2),
        .DEPTH(NUM_WRITE_OUTSTANDING-1),
        .DEPTH_BITS(log2(NUM_WRITE_OUTSTANDING-1))
    ) fifo_resp (
        .sclk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .empty_n(need_wrsp),
        .full_n(fifo_resp_ready),
        .rdreq(next_resp),
        .wrreq(fifo_resp_w),
        .q(aw2b_bdata),
        .data(aw2b_awdata));

    h264_v_frmbuf_wr_0_0_mm_video_m_axi_fifo #(
        .DATA_BITS(2),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_resp_to_user (
        .sclk(ACLK),
        .reset(ARESET),
        .sclk_en(ACLK_EN),
        .empty_n(out_HLS_BVALID),
        .full_n(resp_ready),
        .rdreq(in_HLS_BREADY),
        .wrreq(resp_match),
        .q(out_HLS_BRESP),
        .data(bresp_tmp));

//------------------------Body---------------------------
    assign out_BUS_BREADY = resp_ready;
    assign last_resp = aw2b_bdata[1];
    assign invalid_event = aw2b_bdata[0];
    assign resp_match = (next_resp && (last_resp || invalid_event)) && need_wrsp;

    always @(posedge ACLK)
    begin
        if (ARESET)
            next_resp <= 1'b0;
        else if (ACLK_EN) begin
            next_resp <= in_BUS_BVALID && resp_ready || (invalid_event && need_wrsp && ~next_resp);
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            bresp_tmp <= 2'b00;
        else if (ACLK_EN) begin
            if (resp_match && ~next_resp)           // last resp and no resp for next cycle: reset to 0
                bresp_tmp <= 2'b00;
            else if (resp_match && next_resp)       // last resp but has resp for next cycle
                bresp_tmp <= in_BUS_BRESP;
            else if (in_BUS_BVALID && resp_ready && ~bresp_tmp[1])
                bresp_tmp <= in_BUS_BRESP;
        end
    end

    assign w_flush_done = (flush)? ~need_wrsp : 0;
//------------------------B channel end------------------
endmodule
