-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_10 -sv \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_12 -sv \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/f42d/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_processing_system7_0_0/sim/base_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_rst_ps7_0_100M_0/sim/base_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ipshared/31a1/src/asyn_rst_syn.v" \
  "../../../bd/base/ipshared/31a1/src/dvi_encoder.v" \
  "../../../bd/base/ipshared/31a1/src/serializer_10_to_1.v" \
  "../../../bd/base/ipshared/31a1/src/dvi_transmitter_top.v" \
  "../../../bd/base/ip/base_DVI_Transmitter_0_0/sim/base_DVI_Transmitter_0_0.v" \
-endlib
-makelib xcelium_lib/v_vid_in_axi4s_v4_0_9 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_v_vid_in_axi4s_2_0/sim/base_v_vid_in_axi4s_2_0.v" \
  "../../../bd/base/ip/base_v_vid_in_axi4s_1_0/sim/base_v_vid_in_axi4s_1_0.v" \
  "../../../bd/base/ip/base_v_vid_in_axi4s_0_0/sim/base_v_vid_in_axi4s_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_rst_ps7_0_50M_0/sim/base_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_iic_v2_1_0 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/68d2/hdl/axi_iic_v2_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axi_iic_0/sim/base_axi_iic_0.vhd" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_15 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/47b8/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axi_intc_0_0/sim/base_axi_intc_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_0/sim/bd_60ff_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_1/sim/bd_60ff_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/80cc/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_2/sim/bd_60ff_arsw_0.sv" \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_3/sim/bd_60ff_rsw_0.sv" \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_4/sim/bd_60ff_awsw_0.sv" \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_5/sim/bd_60ff_wsw_0.sv" \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_6/sim/bd_60ff_bsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_7/sim/bd_60ff_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_8/sim/bd_60ff_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_9/sim/bd_60ff_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_10/sim/bd_60ff_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/22b9/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
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
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_46/sim/bd_60ff_m00s2a_0.sv" \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_47/sim/bd_60ff_m00arn_0.sv" \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_48/sim/bd_60ff_m00rn_0.sv" \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_49/sim/bd_60ff_m00awn_0.sv" \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_50/sim/bd_60ff_m00wn_0.sv" \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_51/sim/bd_60ff_m00bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/ip/ip_52/sim/bd_60ff_m00e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axi_smc_0/bd_0/sim/bd_60ff.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_24 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axi_smc_0/sim/base_axi_smc_0.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_14 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_13 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_26 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/1e21/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_12 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/66f2/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_12 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/66f2/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_axi_vdma_0_0/sim/base_axi_vdma_0_0.vhd" \
  "../../../bd/base/ip/base_axi_vdma_1_0/sim/base_axi_vdma_1_0.vhd" \
  "../../../bd/base/ip/base_axi_vdma_2_0/sim/base_axi_vdma_2_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_clk_wiz_0_0/base_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/base/ip/base_clk_wiz_0_0/base_clk_wiz_0_0.v" \
  "../../../bd/base/ip/base_clk_wiz_1_0/base_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/base/ip/base_clk_wiz_1_0/base_clk_wiz_1_0.v" \
  "../../../bd/base/ip/base_cmos_pwdn_0/sim/base_cmos_pwdn_0.v" \
  "../../../bd/base/ip/base_cmos_rst_n_0/sim/base_cmos_rst_n_0.v" \
  "../../../bd/base/ip/base_lcd_bl_0/sim/base_lcd_bl_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_23 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_25 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_xbar_0/sim/base_xbar_0.v" \
-endlib
-makelib xcelium_lib/v_tc_v6_1_13 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/v_axi4s_vid_out_v4_0_12 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/2f8d/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_v_axi4s_vid_out_0_0/sim/base_v_axi4s_vid_out_0_0.v" \
  "../../../bd/base/ip/base_v_axi4s_vid_out_1_0/sim/base_v_axi4s_vid_out_1_0.v" \
  "../../../bd/base/ip/base_v_axi4s_vid_out_2_0/sim/base_v_axi4s_vid_out_2_0.v" \
-endlib
-makelib xcelium_lib/v_tc_v6_2_2 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/7f10/hdl/v_tc_v6_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_v_tc_0_0/sim/base_v_tc_0_0.vhd" \
  "../../../bd/base/ip/base_v_tc_1_0/sim/base_v_tc_1_0.vhd" \
  "../../../bd/base/ip/base_v_tc_2_0/sim/base_v_tc_2_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_xlconcat_0_0/sim/base_xlconcat_0_0.v" \
  "../../../bd/base/ipshared/0912/hdl/dvp_raw_timing_colorbar.v" \
  "../../../bd/base/ipshared/0912/hdl/xil_camif_v1_0_S00_AXI.v" \
  "../../../bd/base/ipshared/0912/hdl/xil_camif_v1_0.v" \
  "../../../bd/base/ip/base_xil_camif_0_0/sim/base_xil_camif_0_0.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_2dnr.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_blc.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_bnr.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_ccm.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_csc.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_demosaic.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_dgain.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_dpc.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_ee.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_gamma.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_stat_ae.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_stat_awb.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_top.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_utils.v" \
  "../../../bd/base/ipshared/9ff0/hdl/isp_lite/isp_wb.v" \
  "../../../bd/base/ipshared/9ff0/hdl/xil_isp_lite_v1_0_S00_AXI.v" \
  "../../../bd/base/ipshared/9ff0/hdl/xil_isp_lite_v1_0.v" \
  "../../../bd/base/ip/base_xil_isp_lite_0_0/sim/base_xil_isp_lite_0_0.v" \
  "../../../bd/base/ipshared/60e6/hdl/vip/vip_crop.v" \
  "../../../bd/base/ipshared/60e6/hdl/vip/vip_dscale.v" \
  "../../../bd/base/ipshared/60e6/hdl/vip/vip_hist_equ.v" \
  "../../../bd/base/ipshared/60e6/hdl/vip/vip_osd.v" \
  "../../../bd/base/ipshared/60e6/hdl/vip/vip_sobel.v" \
  "../../../bd/base/ipshared/60e6/hdl/vip/vip_top.v" \
  "../../../bd/base/ipshared/60e6/hdl/vip/vip_yuv2rgb.v" \
  "../../../bd/base/ipshared/60e6/hdl/vip/vip_yuv444to422.v" \
  "../../../bd/base/ipshared/60e6/hdl/xil_vip_v1_0_S00_AXI.v" \
  "../../../bd/base/ipshared/60e6/hdl/xil_vip_v1_0.v" \
  "../../../bd/base/ip/base_xil_vip_0_0/sim/base_xil_vip_0_0.v" \
  "../../../bd/base/ip/base_xil_vip_1_0/sim/base_xil_vip_1_0.v" \
  "../../../bd/base/sim/base.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_24 \
  "../../../../zynq_cam_isp_demo.gen/sources_1/bd/base/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/base/ip/base_auto_pc_0/sim/base_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

