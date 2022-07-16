
`timescale 1 ns / 1 ps

	module xil_isp_lite_v1_0 #
	(
		// Users to add parameters here
		parameter IO_BITS = 8,
		parameter EXT_BITS = 0,
		parameter WIDTH = 1280,
		parameter HEIGHT = 960,
		parameter BAYER = 0, //0:RGGB 1:GRBG 2:GBRG 3:BGGR
		parameter FEATURE_FULL = 1, //全特性开启(会降低频率)
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4+8+2 //area_id_bits + aera_addr+bits + 2
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


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	xil_isp_lite_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
		.IO_BITS(IO_BITS),
		.EXT_BITS(EXT_BITS),
		.WIDTH(WIDTH),
		.HEIGHT(HEIGHT),
		.BAYER(BAYER),
		.FEATURE_FULL(FEATURE_FULL)
	) xil_isp_lite_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.pclk(pclk),
		.rst_n(rst_n),
		.in_href(in_href),
		.in_vsync(in_vsync),
		.in_raw(in_raw),
		.out_href(out_href),
		.out_vsync(out_vsync),
		.out_yuv(out_yuv),
		.irq(irq)
	);

	// Add user logic here

	// User logic ends

	endmodule
