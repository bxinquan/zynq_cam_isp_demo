
`timescale 1 ns / 1 ps

	module xil_isp_lite_v1_0_S00_AXI #
	(
		// Users to add parameters here
		parameter IO_BITS = 8,
		parameter EXT_BITS = 0,
		parameter WIDTH = 1280,
		parameter HEIGHT = 960,
		parameter BAYER = 0, //0:RGGB 1:GRBG 2:GBRG 3:BGGR
		parameter STAT_BITS = 32,
		parameter FEATURE_FULL = 0, //全特性开启(会降低频率)
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 2+2+IO_BITS+EXT_BITS+2 // 高两位:2'b00-配置及状态寄存器 2'b01-AE的直方图统计(B,Gb,Gr,R) 2'b10-AWB的直方图统计(R,G,B)
	)
	(
		// Users to add ports here
		input pclk,
		input rst_n,

		input in_href,
		input in_vsync,
		input [IO_BITS-1:0] in_raw,
		
		output out_href,
		output out_vsync,
		output [IO_BITS*3-1:0] out_yuv,

		output irq,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output reg [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);
	
	localparam BITS = IO_BITS + EXT_BITS;

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;
	
	wire [1:0] axi_araddr_area_bits = axi_araddr[(2+2+BITS+2-1)-:2];
	wire [1:0] axi_awaddr_area_bits = axi_awaddr[(2+2+BITS+2-1)-:2];

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 6;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 32
	localparam REG_RESET = 0;
	localparam REG_TOP_EN = 1;
	localparam REG_DPC_THRESHOLD = 2;
	localparam REG_BLC_R = 3;
	localparam REG_BLC_GR = 4;
	localparam REG_BLC_GB = 5;
	localparam REG_BLC_B = 6;
	localparam REG_NR_LEVEL = 7;
	localparam REG_DGAIN_GAIN = 8;
	localparam REG_DGAIN_OFFSET = 9;
	localparam REG_WB_RGAIN = 10;
	localparam REG_WB_GGAIN = 11;
	localparam REG_WB_BGAIN = 12;
	localparam REG_CCM_RR = 13;
	localparam REG_CCM_RG = 14;
	localparam REG_CCM_RB = 15;
	localparam REG_CCM_GR = 16;
	localparam REG_CCM_GG = 17;
	localparam REG_CCM_GB = 18;
	localparam REG_CCM_BR = 19;
	localparam REG_CCM_BG = 20;
	localparam REG_CCM_BB = 21;
	localparam REG_STAT_AE_RECT_X = 22;
	localparam REG_STAT_AE_RECT_Y = 23;
	localparam REG_STAT_AE_RECT_W = 24;
	localparam REG_STAT_AE_RECT_H = 25;
	localparam REG_STAT_AE_PIX_CNT_L = 26;
	localparam REG_STAT_AE_PIX_CNT_H = 27;
	localparam REG_STAT_AE_SUM_L = 28;
	localparam REG_STAT_AE_SUM_H = 29;
	localparam REG_STAT_AWB_MIN = 30;
	localparam REG_STAT_AWB_MAX = 31;
	localparam REG_STAT_AWB_PIX_CNT_L = 32;
	localparam REG_STAT_AWB_PIX_CNT_H = 33;
	localparam REG_STAT_AWB_SUM_R_L = 34;
	localparam REG_STAT_AWB_SUM_R_H = 35;
	localparam REG_STAT_AWB_SUM_G_L = 36;
	localparam REG_STAT_AWB_SUM_G_H = 37;
	localparam REG_STAT_AWB_SUM_B_L = 38;
	localparam REG_STAT_AWB_SUM_B_H = 39;
	localparam REG_INT_STATUS = 40;
	localparam REG_INT_MASK = 41;
	
	reg module_reset;
	reg dpc_en, blc_en, bnr_en, dgain_en, demosic_en, wb_en, ccm_en, csc_en, gamma_en, ee_en, stat_ae_en, stat_awb_en;

	reg [BITS-1:0] dpc_threshold;
	reg [BITS-1:0] blc_r, blc_gr, blc_gb, blc_b;
	reg [3:0] nr_level;
	reg [7:0] dgain_gain;
	reg [BITS-1:0] dgain_offset;
	reg [7:0] wb_rgain, wb_ggain, wb_bgain;
	reg [7:0] ccm_rr, ccm_rg, ccm_rb;
	reg [7:0] ccm_gr, ccm_gg, ccm_gb;
	reg [7:0] ccm_br, ccm_bg, ccm_bb;

	reg [15:0] stat_ae_rect_x, stat_ae_rect_y, stat_ae_rect_w, stat_ae_rect_h;
	wire stat_ae_done;
	wire [STAT_BITS-1:0] stat_ae_pix_cnt, stat_ae_sum;

	reg [BITS-1:0] stat_awb_min, stat_awb_max;
	wire stat_awb_done;
	wire [STAT_BITS-1:0] stat_awb_pix_cnt, stat_awb_sum_r, stat_awb_sum_g, stat_awb_sum_b;
	
	reg int_frame_done, int_ae_done, int_awb_done;
	reg int_mask_frame_done, int_mask_ae_done, int_mask_awb_done;
	
	assign irq = int_frame_done&(~int_mask_frame_done) | int_ae_done&(~int_mask_ae_done) | int_awb_done&(~int_mask_awb_done);

	reg prev_vsync;
	always @ (posedge S_AXI_ACLK) prev_vsync <= out_vsync;

	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	//assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
			module_reset <= 1;
			dpc_en <= 1;
			blc_en <= 1;
			bnr_en <= 1;
			dgain_en <= 0;
			demosic_en <= 1;
			wb_en <= 1;
			ccm_en <= 1;
			csc_en <= 1;
			gamma_en <= 1;
			ee_en <= 1;
			stat_ae_en <= 1;
			stat_awb_en <= 1;
			dpc_threshold <= 8'd20 << (BITS-8);
			blc_r <= 8'd16 << (BITS-8);
			blc_gr <= 8'd16 << (BITS-8);
			blc_gb <= 8'd16 << (BITS-8);
			blc_b <= 8'd16 << (BITS-8);
			nr_level <= 4'd2;
			dgain_gain <= 8'h10;
			dgain_offset <= 0;
			wb_rgain <= 8'h10;
			wb_ggain <= 8'h10;
			wb_bgain <= 8'h10;
			ccm_rr <=  8'sh1a;
			ccm_rg <= -8'sh05;
			ccm_rb <= -8'sh05;
			ccm_gr <= -8'sh05;
			ccm_gg <=  8'sh1a;
			ccm_gb <= -8'sh05;
			ccm_br <= -8'sh05;
			ccm_bg <= -8'sh05;
			ccm_bb <=  8'sh1a;
			stat_ae_rect_x = 0;
			stat_ae_rect_y = 0;
			stat_ae_rect_w = WIDTH;
			stat_ae_rect_h = HEIGHT;
			stat_awb_min <=  8'd10 << (BITS-8);
			stat_awb_max <=  8'd220 << (BITS-8);
			int_frame_done <= 0;
			int_ae_done <= 0;
			int_awb_done <= 0;
			int_mask_frame_done <= 1;
			int_mask_ae_done <= 1;
			int_mask_awb_done <= 1;
	    end 
	  else begin
	    if (slv_reg_wren && axi_awaddr_area_bits == 2'b00)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
				REG_RESET: module_reset <= S_AXI_WDATA[0];
				REG_TOP_EN: {stat_awb_en, stat_ae_en, ee_en, gamma_en, csc_en, ccm_en, wb_en, demosic_en, dgain_en, bnr_en, blc_en, dpc_en} <= S_AXI_WDATA[11:0];
				REG_DPC_THRESHOLD: dpc_threshold <= S_AXI_WDATA[BITS-1:0];
				REG_BLC_R: blc_r <= S_AXI_WDATA[BITS-1:0];
				REG_BLC_GR: blc_gr <= S_AXI_WDATA[BITS-1:0];
				REG_BLC_GB: blc_gb <= S_AXI_WDATA[BITS-1:0];
				REG_BLC_B: blc_b <= S_AXI_WDATA[BITS-1:0];
				REG_NR_LEVEL: nr_level <= S_AXI_WDATA[3:0];
				REG_DGAIN_GAIN: dgain_gain <= S_AXI_WDATA[7:0];
				REG_DGAIN_OFFSET: dgain_offset <= S_AXI_WDATA[BITS-1:0];
				REG_WB_RGAIN: wb_rgain <= S_AXI_WDATA[7:0];
				REG_WB_GGAIN: wb_ggain <= S_AXI_WDATA[7:0];
				REG_WB_BGAIN: wb_bgain <= S_AXI_WDATA[7:0];
				REG_CCM_RR: ccm_rr <= S_AXI_WDATA[7:0];
				REG_CCM_RG: ccm_rg <= S_AXI_WDATA[7:0];
				REG_CCM_RB: ccm_rb <= S_AXI_WDATA[7:0];
				REG_CCM_GR: ccm_gr <= S_AXI_WDATA[7:0];
				REG_CCM_GG: ccm_gg <= S_AXI_WDATA[7:0];
				REG_CCM_GB: ccm_gb <= S_AXI_WDATA[7:0];
				REG_CCM_BR: ccm_br <= S_AXI_WDATA[7:0];
				REG_CCM_BG: ccm_bg <= S_AXI_WDATA[7:0];
				REG_CCM_BB: ccm_bb <= S_AXI_WDATA[7:0];
				REG_STAT_AE_RECT_X: stat_ae_rect_x <= S_AXI_WDATA[15:0];
				REG_STAT_AE_RECT_Y: stat_ae_rect_y <= S_AXI_WDATA[15:0];
				REG_STAT_AE_RECT_W: stat_ae_rect_w <= S_AXI_WDATA[15:0];
				REG_STAT_AE_RECT_H: stat_ae_rect_h <= S_AXI_WDATA[15:0];
				REG_STAT_AWB_MIN: stat_awb_min <= S_AXI_WDATA[BITS-1:0];
				REG_STAT_AWB_MAX: stat_awb_max <= S_AXI_WDATA[BITS-1:0];
				REG_STAT_AE_PIX_CNT_L:;
				REG_STAT_AE_PIX_CNT_H:;
				REG_STAT_AE_SUM_L:;
				REG_STAT_AE_SUM_H:;
				REG_STAT_AWB_PIX_CNT_L:;
				REG_STAT_AWB_PIX_CNT_H:;
				REG_STAT_AWB_SUM_R_L:;
				REG_STAT_AWB_SUM_R_H:;
				REG_STAT_AWB_SUM_G_L:;
				REG_STAT_AWB_SUM_G_H:;
				REG_STAT_AWB_SUM_B_L:;
				REG_STAT_AWB_SUM_B_H:;
				REG_INT_STATUS: {int_awb_done, int_ae_done, int_frame_done} <= 3'd0;
				REG_INT_MASK: {int_mask_awb_done, int_mask_ae_done, int_mask_frame_done} <= S_AXI_WDATA[2:0];
				default:;
	        endcase
	      end
		if (stat_ae_done) int_ae_done <= 1'b1;
		if (stat_awb_done) int_awb_done <= 1'b1;
		if (out_vsync & (~prev_vsync)) int_frame_done <= 1'b1;
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
			REG_RESET: reg_data_out <= {31'd0, module_reset};
			REG_TOP_EN: reg_data_out <= {20'd0, stat_awb_en, stat_ae_en, ee_en, gamma_en, csc_en, ccm_en, wb_en, demosic_en, dgain_en, bnr_en, blc_en, dpc_en};
			REG_DPC_THRESHOLD: reg_data_out <= dpc_threshold;
			REG_BLC_R: reg_data_out <= blc_r;
			REG_BLC_GR: reg_data_out <= blc_gr;
			REG_BLC_GB: reg_data_out <= blc_gb;
			REG_BLC_B: reg_data_out <= blc_b;
			REG_NR_LEVEL: reg_data_out <= {28'd0, nr_level};
			REG_DGAIN_GAIN: reg_data_out <= {24'd0, dgain_gain};
			REG_DGAIN_OFFSET: reg_data_out <= dgain_offset;
			REG_WB_RGAIN: reg_data_out <= {24'd0, wb_rgain};
			REG_WB_GGAIN: reg_data_out <= {24'd0, wb_ggain};
			REG_WB_BGAIN: reg_data_out <= {24'd0, wb_bgain};
			REG_CCM_RR: reg_data_out <= {24'd0, ccm_rr};
			REG_CCM_RG: reg_data_out <= {24'd0, ccm_rg};
			REG_CCM_RB: reg_data_out <= {24'd0, ccm_rb};
			REG_CCM_GR: reg_data_out <= {24'd0, ccm_gr};
			REG_CCM_GG: reg_data_out <= {24'd0, ccm_gg};
			REG_CCM_GB: reg_data_out <= {24'd0, ccm_gb};
			REG_CCM_BR: reg_data_out <= {24'd0, ccm_br};
			REG_CCM_BG: reg_data_out <= {24'd0, ccm_bg};
			REG_CCM_BB: reg_data_out <= {24'd0, ccm_bb};
			REG_STAT_AE_RECT_X: reg_data_out <= stat_ae_rect_x;
			REG_STAT_AE_RECT_Y: reg_data_out <= stat_ae_rect_y;
			REG_STAT_AE_RECT_W: reg_data_out <= stat_ae_rect_w;
			REG_STAT_AE_RECT_H: reg_data_out <= stat_ae_rect_h;
			REG_STAT_AWB_MIN: reg_data_out <= stat_awb_min;
			REG_STAT_AWB_MAX: reg_data_out <= stat_awb_max;
			REG_STAT_AE_PIX_CNT_L: reg_data_out <= stat_ae_pix_cnt;
			REG_STAT_AE_SUM_L: reg_data_out <= stat_ae_sum;
			REG_STAT_AWB_PIX_CNT_L: reg_data_out <= stat_awb_pix_cnt;
			REG_STAT_AWB_SUM_R_L: reg_data_out <= stat_awb_sum_r;
			REG_STAT_AWB_SUM_G_L: reg_data_out <= stat_awb_sum_g;
			REG_STAT_AWB_SUM_B_L: reg_data_out <= stat_awb_sum_b;
			REG_STAT_AE_PIX_CNT_H: reg_data_out <= (STAT_BITS > C_S_AXI_DATA_WIDTH) ? stat_ae_pix_cnt[STAT_BITS-1:C_S_AXI_DATA_WIDTH] : 0;
			REG_STAT_AE_SUM_H: reg_data_out <= (STAT_BITS > C_S_AXI_DATA_WIDTH) ? stat_ae_sum[STAT_BITS-1:C_S_AXI_DATA_WIDTH] : 0;
			REG_STAT_AWB_PIX_CNT_H: reg_data_out <= (STAT_BITS > C_S_AXI_DATA_WIDTH) ? stat_awb_pix_cnt[STAT_BITS-1:C_S_AXI_DATA_WIDTH] : 0;
			REG_STAT_AWB_SUM_R_H: reg_data_out <= (STAT_BITS > C_S_AXI_DATA_WIDTH) ? stat_awb_sum_r[STAT_BITS-1:C_S_AXI_DATA_WIDTH] : 0;
			REG_STAT_AWB_SUM_G_H: reg_data_out <= (STAT_BITS > C_S_AXI_DATA_WIDTH) ? stat_awb_sum_g[STAT_BITS-1:C_S_AXI_DATA_WIDTH] : 0;
			REG_STAT_AWB_SUM_B_H: reg_data_out <= (STAT_BITS > C_S_AXI_DATA_WIDTH) ? stat_awb_sum_b[STAT_BITS-1:C_S_AXI_DATA_WIDTH] : 0;
			REG_INT_STATUS: reg_data_out <= {29'd0, int_awb_done, int_ae_done, int_frame_done};
			REG_INT_MASK: reg_data_out <= {29'd0, int_mask_awb_done, int_mask_ae_done, int_mask_frame_done};
			default: reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here
	// shadow config registers
	reg s_module_reset;
	reg s_dpc_en, s_blc_en, s_bnr_en, s_dgain_en, s_demosic_en, s_wb_en, s_ccm_en, s_csc_en, s_gamma_en, s_ee_en, s_stat_ae_en, s_stat_awb_en;

	reg [BITS-1:0] s_dpc_threshold;
	reg [BITS-1:0] s_blc_r, s_blc_gr, s_blc_gb, s_blc_b;
	reg [3:0] s_nr_level;
	reg [7:0] s_dgain_gain;
	reg [BITS-1:0] s_dgain_offset;
	reg [7:0] s_wb_rgain, s_wb_ggain, s_wb_bgain;
	reg [7:0] s_ccm_rr, s_ccm_rg, s_ccm_rb;
	reg [7:0] s_ccm_gr, s_ccm_gg, s_ccm_gb;
	reg [7:0] s_ccm_br, s_ccm_bg, s_ccm_bb;
	reg [15:0] s_stat_ae_rect_x, s_stat_ae_rect_y, s_stat_ae_rect_w, s_stat_ae_rect_h;
	reg [BITS-1:0] s_stat_awb_min, s_stat_awb_max;
	
	reg prev_vsync_r;
	always @ (posedge pclk) prev_vsync_r <= in_vsync;

	wire frame_start = (~in_vsync) & prev_vsync_r;
	wire reset_n = rst_n & (~s_module_reset);

	wire stat_ae_hist_clk = FEATURE_FULL ? S_AXI_ACLK : 0;
	wire stat_ae_hist_out = FEATURE_FULL ? (slv_reg_rden && axi_araddr_area_bits == 2'b01) : 0;
	wire [BITS+1:0] stat_ae_hist_addr = FEATURE_FULL ? axi_araddr[ADDR_LSB+BITS+1:ADDR_LSB] : 0;
	wire [STAT_BITS-1:0] stat_ae_hist_data;

	wire stat_awb_hist_clk = FEATURE_FULL ? S_AXI_ACLK : 0;
	wire stat_awb_hist_out = FEATURE_FULL ? (slv_reg_rden && axi_araddr_area_bits == 2'b10) : 0;
	wire [BITS+1:0] stat_awb_hist_addr = FEATURE_FULL ? axi_araddr[ADDR_LSB+BITS+1:ADDR_LSB] : 0;
	wire [STAT_BITS-1:0] stat_awb_hist_data;

	//link AE/AWB hist ram to S_AXI_RDATA
	always @ (*) begin
		case (axi_araddr_area_bits)
			2'b00 : S_AXI_RDATA = axi_rdata;
			2'b01 : S_AXI_RDATA = FEATURE_FULL ? stat_ae_hist_data : 0;
			2'b10 : S_AXI_RDATA = FEATURE_FULL ? stat_awb_hist_data : 0;
			default: S_AXI_RDATA = 0;
		endcase
	end

	always @ (posedge pclk) begin
		s_module_reset <= module_reset;
		if (frame_start) begin
			s_dpc_en <= dpc_en;
			s_blc_en <= blc_en;
			s_bnr_en <= bnr_en;
			s_dgain_en <= dgain_en;
			s_demosic_en <= demosic_en;
			s_wb_en <= wb_en;
			s_ccm_en <= ccm_en;
			s_csc_en <= csc_en;
			s_gamma_en <= gamma_en;
			s_ee_en <= ee_en;
			s_stat_ae_en <= stat_ae_en;
			s_stat_awb_en <= stat_awb_en;
			s_dpc_threshold <= dpc_threshold;
			s_blc_r <= blc_r;
			s_blc_gr <= blc_gr;
			s_blc_gb <= blc_gb;
			s_blc_b <= blc_b;
			s_nr_level <= nr_level;
			s_dgain_gain <= dgain_gain;
			s_dgain_offset <= dgain_offset;
			s_wb_rgain <= wb_rgain;
			s_wb_ggain <= wb_ggain;
			s_wb_bgain <= wb_bgain;
			s_ccm_rr <= ccm_rr;
			s_ccm_rg <= ccm_rg;
			s_ccm_rb <= ccm_rb;
			s_ccm_gr <= ccm_gr;
			s_ccm_gg <= ccm_gg;
			s_ccm_gb <= ccm_gb;
			s_ccm_br <= ccm_br;
			s_ccm_bg <= ccm_bg;
			s_ccm_bb <= ccm_bb;
			s_stat_ae_rect_x <= stat_ae_rect_x;
			s_stat_ae_rect_y <= stat_ae_rect_y;
			s_stat_ae_rect_w <= stat_ae_rect_w;
			s_stat_ae_rect_h <= stat_ae_rect_h;
			s_stat_awb_min <= stat_awb_min;
			s_stat_awb_max <= stat_awb_max;
		end
		else begin
			s_dpc_en <= s_dpc_en;
			s_blc_en <= s_blc_en;
			s_bnr_en <= s_bnr_en;
			s_dgain_en <= s_dgain_en;
			s_demosic_en <= s_demosic_en;
			s_wb_en <= s_wb_en;
			s_ccm_en <= s_ccm_en;
			s_csc_en <= s_csc_en;
			s_gamma_en <= s_gamma_en;
			s_ee_en <= s_ee_en;
			s_stat_ae_en <= s_stat_ae_en;
			s_stat_awb_en <= s_stat_awb_en;
			s_dpc_threshold <= s_dpc_threshold;
			s_blc_b <= s_blc_b;
			s_blc_gb <= s_blc_gb;
			s_blc_gr <= s_blc_gr;
			s_blc_r <= s_blc_r;
			s_nr_level <= s_nr_level;
			s_dgain_gain <= s_dgain_gain;
			s_dgain_offset <= s_dgain_offset;
			s_wb_rgain <= s_wb_rgain;
			s_wb_ggain <= s_wb_ggain;
			s_wb_bgain <= s_wb_bgain;
			s_ccm_rr <= s_ccm_rr;
			s_ccm_rg <= s_ccm_rg;
			s_ccm_rb <= s_ccm_rb;
			s_ccm_gr <= s_ccm_gr;
			s_ccm_gg <= s_ccm_gg;
			s_ccm_gb <= s_ccm_gb;
			s_ccm_br <= s_ccm_br;
			s_ccm_bg <= s_ccm_bg;
			s_ccm_bb <= s_ccm_bb;
			s_stat_ae_rect_x <= s_stat_ae_rect_x;
			s_stat_ae_rect_y <= s_stat_ae_rect_y;
			s_stat_ae_rect_w <= s_stat_ae_rect_w;
			s_stat_ae_rect_h <= s_stat_ae_rect_h;
			s_stat_awb_min <= s_stat_awb_min;
			s_stat_awb_max <= s_stat_awb_max;
		end
	end

	wire [BITS-1:0] out_y, out_u, out_v;
	assign out_yuv = {out_y[BITS-1:EXT_BITS], out_u[BITS-1:EXT_BITS], out_v[BITS-1:EXT_BITS]};
	isp_top #(BITS, WIDTH, HEIGHT, BAYER, STAT_BITS) isp_top_i0 (
			.pclk(pclk),
			.rst_n(reset_n),
		
			.in_href(in_href),
			.in_vsync(in_vsync),
			.in_raw((EXT_BITS > 0) ? {in_raw, in_raw[EXT_BITS-1:0]} : in_raw),
		
			.out_href(out_href),
			.out_vsync(out_vsync),
			.out_y(out_y),
			.out_u(out_u),
			.out_v(out_v),

			.dpc_en(s_dpc_en), 
			.blc_en(s_blc_en), 
			.bnr_en(s_bnr_en),
			.dgain_en(s_dgain_en),
			.demosic_en(s_demosic_en),
			.wb_en(s_wb_en),
			.ccm_en(s_ccm_en),
			.csc_en(s_csc_en),
			.gamma_en(s_gamma_en),
			.ee_en(s_ee_en),
			.stat_ae_en(s_stat_ae_en),
			.stat_awb_en(s_stat_awb_en),

			.dpc_threshold(s_dpc_threshold),
			.blc_r(s_blc_r), .blc_gr(s_blc_gr), .blc_gb(s_blc_gb), .blc_b(s_blc_b),
			.nr_level(s_nr_level),
			.dgain_gain(s_dgain_gain), .dgain_offset(s_dgain_offset),
			.wb_rgain(s_wb_rgain), .wb_ggain(s_wb_ggain), .wb_bgain(s_wb_bgain),
			.ccm_rr(s_ccm_rr), .ccm_rg(s_ccm_rg), .ccm_rb(s_ccm_rb),
			.ccm_gr(s_ccm_gr), .ccm_gg(s_ccm_gg), .ccm_gb(s_ccm_gb),
			.ccm_br(s_ccm_br), .ccm_bg(s_ccm_bg), .ccm_bb(s_ccm_bb),

			.stat_ae_rect_x(s_stat_ae_rect_x), .stat_ae_rect_y(s_stat_ae_rect_y), .stat_ae_rect_w(s_stat_ae_rect_w), .stat_ae_rect_h(s_stat_ae_rect_h),
			.stat_ae_done(stat_ae_done),
			.stat_ae_pix_cnt(stat_ae_pix_cnt), .stat_ae_sum(stat_ae_sum),
			.stat_ae_hist_clk(stat_ae_hist_clk),
			.stat_ae_hist_out(stat_ae_hist_out),
			.stat_ae_hist_addr(stat_ae_hist_addr),
			.stat_ae_hist_data(stat_ae_hist_data),

			.stat_awb_min(s_stat_awb_min), .stat_awb_max(s_stat_awb_max),
			.stat_awb_done(stat_awb_done),
			.stat_awb_pix_cnt(stat_awb_pix_cnt), .stat_awb_sum_r(stat_awb_sum_r), .stat_awb_sum_g(stat_awb_sum_g), .stat_awb_sum_b(stat_awb_sum_b),
			.stat_awb_hist_clk(stat_awb_hist_clk),
			.stat_awb_hist_out(stat_awb_hist_out),
			.stat_awb_hist_addr(stat_awb_hist_addr),
			.stat_awb_hist_data(stat_awb_hist_data)
		);
	// User logic ends

	endmodule
