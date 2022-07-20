
`timescale 1 ns / 1 ps

	module xil_camif_v1_0_S00_AXI #
	(
		// Users to add parameters here
		parameter BITS = 8,
		parameter COLORBAR_BAYER = 0, //0:RGGB 1:GRBG 2:GBRG 3:BGGR
		parameter COLORBAR_H_FRONT = 50,
		parameter COLORBAR_H_PULSE = 100,
		parameter COLORBAR_H_BACK = 50,
		parameter COLORBAR_H_DISP = 1280,
		parameter COLORBAR_V_FRONT = 5,
		parameter COLORBAR_V_PULSE = 10,
		parameter COLORBAR_V_BACK = 5,
		parameter COLORBAR_V_DISP = 960,
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
		output            irq,

		input cam_xclk,
		input cam_pclk,
		input cam_href,
		input cam_vsync,
		input [BITS-1:0] cam_data,

		output out_pclk,
		output reg out_href,
		output reg out_vsync,
		output reg [BITS-1:0] out_raw,
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
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
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

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 2;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 8
	localparam REG_RESET = 0;
	localparam REG_WIDTH = 1;
	localparam REG_HEIGHT = 2;
	localparam REG_FRAME_CNT = 3;
	localparam REG_COLORBAR_EN = 4;
	localparam REG_INT_STATUS = 5;
	localparam REG_INT_MASK = 6;
	
	reg module_reset;
	reg [15:0] dvp_width;
	reg [15:0] dvp_height;
	reg [31:0] dvp_frame_cnt;
	reg colorbar_en;

	reg int_frame_start, int_frame_done;
	reg int_mask_frame_start, int_mask_frame_done;
	
	assign irq = int_frame_start&(~int_mask_frame_start) | int_frame_done&(~int_mask_frame_done);

	reg out_vsync_prev;
	always @ (posedge S_AXI_ACLK) out_vsync_prev <= out_vsync;
	wire frame_start = out_vsync_prev & (~out_vsync);
	wire frame_done  = out_vsync & (~out_vsync_prev);

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
	assign S_AXI_RDATA	= axi_rdata;
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
		colorbar_en <= 0;
		int_frame_start <= 0;
		int_frame_done <= 0;
		int_mask_frame_start <= 1;
		int_mask_frame_done <= 1;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
			REG_RESET: module_reset <= S_AXI_WDATA[0];
			REG_WIDTH: ;
			REG_HEIGHT: ;
			REG_FRAME_CNT: ;
			REG_COLORBAR_EN: colorbar_en <= S_AXI_WDATA[0];
			REG_INT_STATUS: {int_frame_done,int_frame_start} <= 2'd0;
			REG_INT_MASK: {int_mask_frame_done,int_mask_frame_start} <= S_AXI_WDATA[1:0];
			default:;
	        endcase
	      end
		if (frame_start) int_frame_start <= 1'b1;
		if (frame_done) int_frame_done <= 1'b1;
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
		REG_WIDTH: reg_data_out <= {16'd0, dvp_width};
		REG_HEIGHT: reg_data_out <= {16'd0, dvp_height};
		REG_FRAME_CNT: reg_data_out <= dvp_frame_cnt;
		REG_COLORBAR_EN: reg_data_out <= {31'd0, colorbar_en};
		REG_INT_STATUS: reg_data_out <= {30'd0, int_frame_done, int_frame_start};
		REG_INT_MASK: reg_data_out <= {30'd0, int_mask_frame_done, int_mask_frame_start};
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
	wire gen_pclk, gen_href, gen_vsync;
	wire [BITS-1:0] gen_db;

	dvp_raw_timing_colorbar
		#(
			.BITS(BITS),
			.BAYER(COLORBAR_BAYER),
			.H_FRONT(COLORBAR_H_FRONT),
			.H_PULSE(COLORBAR_H_PULSE),
			.H_BACK(COLORBAR_H_BACK),
			.H_DISP(COLORBAR_H_DISP),
			.V_FRONT(COLORBAR_V_FRONT),
			.V_PULSE(COLORBAR_V_PULSE),
			.V_BACK(COLORBAR_V_BACK),
			.V_DISP(COLORBAR_V_DISP),
			.H_POL(1'b0),
			.V_POL(1'b1)
		)
		dvp_colorbar_timing_generator
		(
			.xclk(cam_xclk),
			.reset_n(~module_reset),
			
			.dvp_pclk(gen_pclk),
			.dvp_href(gen_href),
			.dvp_hsync(),
			.dvp_vsync(gen_vsync),
			.dvp_raw(gen_db)
		);

	assign out_pclk = module_reset ? 1'b0 : (colorbar_en ? gen_pclk : cam_pclk);
	always @ (posedge out_pclk or posedge module_reset) begin
		if (module_reset) begin
			out_href <= 0;
			out_vsync <= 0;
			out_raw <= 0;
		end
		else if (colorbar_en) begin
			out_href <= gen_href;
			out_vsync <= gen_vsync;
			out_raw <= gen_db;
		end
		else begin
			out_href <= cam_href;
			out_vsync <= cam_vsync;
			out_raw <= cam_data;
		end
	end

	reg prev_href, prev_vsync;
	always @ (posedge out_pclk) begin
		prev_href <= out_href;
		prev_vsync <= out_vsync;
	end

	reg [15:0] pix_cnt;
	always @ (posedge out_pclk or posedge module_reset) begin
		if (module_reset)
			pix_cnt <= 0;
		else if (~prev_href & out_href)
			pix_cnt <= 1'b1;
		else if (out_href)
			pix_cnt <= pix_cnt + 1'b1;
		else
			pix_cnt <= pix_cnt;
	end

	reg [15:0] line_cnt;
	always @ (posedge out_pclk or posedge module_reset) begin
		if (module_reset)
			line_cnt <= 0;
		else if (~out_vsync & prev_vsync)
			line_cnt <= 0;
		else if (~out_href & prev_href)
			line_cnt <= line_cnt + 1'b1;
		else
			line_cnt <= line_cnt;
	end

	always @ (posedge out_pclk or posedge module_reset) begin
		if (module_reset) begin
			dvp_width <= 0;
			dvp_height <= 0;
			dvp_frame_cnt <= 0;
		end
		else if (~prev_vsync & out_vsync) begin
			dvp_width <= pix_cnt;
			dvp_height <= line_cnt;
			dvp_frame_cnt <= dvp_frame_cnt + 1'b1;
		end
		else begin
			dvp_width <= dvp_width;
			dvp_height <= dvp_height;
			dvp_frame_cnt <= dvp_frame_cnt;
		end
	end

	// User logic ends

	endmodule
