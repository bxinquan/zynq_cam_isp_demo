vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_4
vlib activehdl/processing_system7_vip_v1_0_6
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/smartconnect_v1_0
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_18
vlib activehdl/fifo_generator_v13_2_3
vlib activehdl/axi_data_fifo_v2_1_17
vlib activehdl/axi_crossbar_v2_1_19
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/v_tc_v6_1_13
vlib activehdl/v_vid_in_axi4s_v4_0_9
vlib activehdl/v_axi4s_vid_out_v4_0_10
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_fifo_v1_0_12
vlib activehdl/blk_mem_gen_v8_4_2
vlib activehdl/lib_bmg_v1_0_11
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_datamover_v5_1_20
vlib activehdl/axi_vdma_v6_3_6
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_iic_v2_0_21
vlib activehdl/axi_intc_v4_1_12
vlib activehdl/axi_protocol_converter_v2_1_18

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 activehdl/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 activehdl/processing_system7_vip_v1_0_6
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 activehdl/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 activehdl/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 activehdl/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 activehdl/axi_crossbar_v2_1_19
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_13 activehdl/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 activehdl/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 activehdl/v_axi4s_vid_out_v4_0_10
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_12 activehdl/lib_fifo_v1_0_12
vmap blk_mem_gen_v8_4_2 activehdl/blk_mem_gen_v8_4_2
vmap lib_bmg_v1_0_11 activehdl/lib_bmg_v1_0_11
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_20 activehdl/axi_datamover_v5_1_20
vmap axi_vdma_v6_3_6 activehdl/axi_vdma_v6_3_6
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_iic_v2_0_21 activehdl/axi_iic_v2_0_21
vmap axi_intc_v4_1_12 activehdl/axi_intc_v4_1_12
vmap axi_protocol_converter_v2_1_18 activehdl/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_processing_system7_0_0/sim/base_processing_system7_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_cmos_pwdn_0/sim/base_cmos_pwdn_0.v" \
"../../../bd/base/ip/base_cmos_rst_n_0/sim/base_cmos_rst_n_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_xlconcat_0_0/sim/base_xlconcat_0_0.v" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/sim/bd_60ff.v" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_0/sim/bd_60ff_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_1/sim/bd_60ff_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_2/sim/bd_60ff_arsw_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_3/sim/bd_60ff_rsw_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_4/sim/bd_60ff_awsw_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_5/sim/bd_60ff_wsw_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_6/sim/bd_60ff_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_7/sim/bd_60ff_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_8/sim/bd_60ff_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_9/sim/bd_60ff_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_10/sim/bd_60ff_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_11/sim/bd_60ff_sarn_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_12/sim/bd_60ff_srn_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_13/sim/bd_60ff_s01mmu_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_14/sim/bd_60ff_s01tr_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_15/sim/bd_60ff_s01sic_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_16/sim/bd_60ff_s01a2s_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_17/sim/bd_60ff_sawn_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_18/sim/bd_60ff_swn_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_19/sim/bd_60ff_sbn_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_20/sim/bd_60ff_s02mmu_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_21/sim/bd_60ff_s02tr_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_22/sim/bd_60ff_s02sic_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_23/sim/bd_60ff_s02a2s_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_24/sim/bd_60ff_sarn_1.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_25/sim/bd_60ff_srn_1.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_26/sim/bd_60ff_s03mmu_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_27/sim/bd_60ff_s03tr_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_28/sim/bd_60ff_s03sic_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_29/sim/bd_60ff_s03a2s_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_30/sim/bd_60ff_sawn_1.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_31/sim/bd_60ff_swn_1.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_32/sim/bd_60ff_sbn_1.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_33/sim/bd_60ff_s04mmu_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_34/sim/bd_60ff_s04tr_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_35/sim/bd_60ff_s04sic_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_36/sim/bd_60ff_s04a2s_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_37/sim/bd_60ff_sarn_2.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_38/sim/bd_60ff_srn_2.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_39/sim/bd_60ff_s05mmu_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_40/sim/bd_60ff_s05tr_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_41/sim/bd_60ff_s05sic_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_42/sim/bd_60ff_s05a2s_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_43/sim/bd_60ff_sawn_2.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_44/sim/bd_60ff_swn_2.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_45/sim/bd_60ff_sbn_2.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_46/sim/bd_60ff_m00s2a_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_47/sim/bd_60ff_m00arn_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_48/sim/bd_60ff_m00rn_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_49/sim/bd_60ff_m00awn_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_50/sim/bd_60ff_m00wn_0.sv" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_51/sim/bd_60ff_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_52/sim/bd_60ff_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_axi_smc_0/sim/base_axi_smc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_rst_ps7_0_100M_0/sim/base_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_xbar_0/sim/base_xbar_0.v" \
"../../../bd/base/ip/base_lcd_bl_0/sim/base_lcd_bl_0.v" \
"../../../bd/base/ip/base_clk_wiz_0_0/base_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/base/ip/base_clk_wiz_0_0/base_clk_wiz_0_0.v" \
"../../../bd/base/ip/base_clk_wiz_1_0/base_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/base/ip/base_clk_wiz_1_0/base_clk_wiz_1_0.v" \
"../../../bd/base/ipshared/31a1/src/asyn_rst_syn.v" \
"../../../bd/base/ipshared/31a1/src/dvi_encoder.v" \
"../../../bd/base/ipshared/31a1/src/serializer_10_to_1.v" \
"../../../bd/base/ipshared/31a1/src/dvi_transmitter_top.v" \
"../../../bd/base/ip/base_DVI_Transmitter_0_0/sim/base_DVI_Transmitter_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_13 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_v_axi4s_vid_out_2_0/sim/base_v_axi4s_vid_out_2_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_v_tc_2_0/sim/base_v_tc_2_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_12 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_11 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_6  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_6 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_axi_vdma_2_0/sim/base_axi_vdma_2_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_v_vid_in_axi4s_2_0/sim/base_v_vid_in_axi4s_2_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_v_tc_1_0/sim/base_v_tc_1_0.vhd" \
"../../../bd/base/ip/base_axi_vdma_1_0/sim/base_axi_vdma_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_v_vid_in_axi4s_1_0/sim/base_v_vid_in_axi4s_1_0.v" \
"../../../bd/base/ip/base_v_axi4s_vid_out_1_0/sim/base_v_axi4s_vid_out_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_axi_vdma_0_0/sim/base_axi_vdma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_v_vid_in_axi4s_0_0/sim/base_v_vid_in_axi4s_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_v_tc_0_0/sim/base_v_tc_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_v_axi4s_vid_out_0_0/sim/base_v_axi4s_vid_out_0_0.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_0_21 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/304c/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_axi_iic_0/sim/base_axi_iic_0.vhd" \

vcom -work axi_intc_v4_1_12 -93 \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_axi_intc_0_0/sim/base_axi_intc_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ipshared/b495/hdl/dvp_raw_timing_colorbar.v" \
"../../../bd/base/ipshared/b495/hdl/xil_camif_v1_0_S00_AXI.v" \
"../../../bd/base/ipshared/b495/hdl/xil_camif_v1_0.v" \
"../../../bd/base/ip/base_xil_camif_0_0/sim/base_xil_camif_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/base/ip/base_rst_ps7_0_50M_0/sim/base_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_2dnr.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_blc.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_bnr.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_ccm.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_csc.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_demosaic.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_dgain.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_dpc.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_ee.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_gamma.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_stat_ae.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_stat_awb.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_top.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_utils.v" \
"../../../bd/base/ipshared/eb7a/hdl/isp_lite/isp_wb.v" \
"../../../bd/base/ipshared/eb7a/hdl/xil_isp_lite_v1_0_S00_AXI.v" \
"../../../bd/base/ipshared/eb7a/hdl/xil_isp_lite_v1_0.v" \
"../../../bd/base/ip/base_xil_isp_lite_0_0/sim/base_xil_isp_lite_0_0.v" \
"../../../bd/base/ipshared/e7ba/hdl/vip/vip_crop.v" \
"../../../bd/base/ipshared/e7ba/hdl/vip/vip_dscale.v" \
"../../../bd/base/ipshared/e7ba/hdl/vip/vip_hist_equ.v" \
"../../../bd/base/ipshared/e7ba/hdl/vip/vip_osd.v" \
"../../../bd/base/ipshared/e7ba/hdl/vip/vip_sobel.v" \
"../../../bd/base/ipshared/e7ba/hdl/vip/vip_top.v" \
"../../../bd/base/ipshared/e7ba/hdl/vip/vip_yuv2rgb.v" \
"../../../bd/base/ipshared/e7ba/hdl/vip/vip_yuv444to422.v" \
"../../../bd/base/ipshared/e7ba/hdl/xil_vip_v1_0_S00_AXI.v" \
"../../../bd/base/ipshared/e7ba/hdl/xil_vip_v1_0.v" \
"../../../bd/base/ip/base_xil_vip_0_0/sim/base_xil_vip_0_0.v" \
"../../../bd/base/ip/base_xil_vip_1_0/sim/base_xil_vip_1_0.v" \
"../../../bd/base/sim/base.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/ec67/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/70cf/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/979d/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/b2d0/hdl/verilog" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/85a3" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ipshared/58e2/hdl" "+incdir+../../../../zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/base/ip/base_auto_pc_0/sim/base_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

