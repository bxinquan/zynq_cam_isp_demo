# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.cache/wt [current_project]
set_property parent.project_path D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths d:/Work/fpga/zynq_cam_isp_demo/xil_ip_repo [current_project]
update_ip_catalog
set_property ip_output_repo d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/hdl/base_wrapper.v
add_files D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/base.bd
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_processing_system7_0_0/base_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_1/bd_60ff_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_1/bd_60ff_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_2/bd_60ff_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_3/bd_60ff_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_4/bd_60ff_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_5/bd_60ff_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_6/bd_60ff_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_10/bd_60ff_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_11/bd_60ff_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_12/bd_60ff_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_16/bd_60ff_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_17/bd_60ff_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_18/bd_60ff_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_19/bd_60ff_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_23/bd_60ff_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_24/bd_60ff_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_25/bd_60ff_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_29/bd_60ff_s03a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_30/bd_60ff_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_31/bd_60ff_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_32/bd_60ff_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_36/bd_60ff_s04a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_37/bd_60ff_sarn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_38/bd_60ff_srn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_42/bd_60ff_s05a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_43/bd_60ff_sawn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_44/bd_60ff_swn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_45/bd_60ff_sbn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_46/bd_60ff_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_47/bd_60ff_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_48/bd_60ff_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_49/bd_60ff_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_50/bd_60ff_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/bd_0/ip/ip_51/bd_60ff_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_rst_ps7_0_100M_0/base_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_rst_ps7_0_100M_0/base_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_rst_ps7_0_100M_0/base_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_xbar_0/base_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_clk_wiz_0_0/base_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_clk_wiz_0_0/base_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_clk_wiz_0_0/base_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_clk_wiz_1_0/base_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_clk_wiz_1_0/base_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_clk_wiz_1_0/base_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_axi4s_vid_out_2_0/base_v_axi4s_vid_out_2_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_axi4s_vid_out_2_0/base_v_axi4s_vid_out_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_tc_2_0/base_v_tc_2_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_tc_2_0/base_v_tc_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_vdma_2_0/base_axi_vdma_2_0.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_vdma_2_0/base_axi_vdma_2_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_vdma_2_0/base_axi_vdma_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_vid_in_axi4s_2_0/base_v_vid_in_axi4s_2_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_vid_in_axi4s_2_0/base_v_vid_in_axi4s_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_tc_1_0/base_v_tc_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_tc_1_0/base_v_tc_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_vdma_1_0/base_axi_vdma_1_0.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_vdma_1_0/base_axi_vdma_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_vdma_1_0/base_axi_vdma_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_vid_in_axi4s_1_0/base_v_vid_in_axi4s_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_vid_in_axi4s_1_0/base_v_vid_in_axi4s_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_axi4s_vid_out_1_0/base_v_axi4s_vid_out_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_axi4s_vid_out_1_0/base_v_axi4s_vid_out_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_vdma_0_0/base_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_vdma_0_0/base_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_vdma_0_0/base_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_vid_in_axi4s_0_0/base_v_vid_in_axi4s_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_vid_in_axi4s_0_0/base_v_vid_in_axi4s_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_tc_0_0/base_v_tc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_tc_0_0/base_v_tc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_axi4s_vid_out_0_0/base_v_axi4s_vid_out_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_v_axi4s_vid_out_0_0/base_v_axi4s_vid_out_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_iic_0/base_axi_iic_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_iic_0/base_axi_iic_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_intc_0_0/base_axi_intc_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_intc_0_0/base_axi_intc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_axi_intc_0_0/base_axi_intc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_rst_ps7_0_50M_0/base_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_rst_ps7_0_50M_0/base_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_rst_ps7_0_50M_0/base_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/ip/base_auto_pc_0/base_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/sources_1/bd/base/base_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/constrs_base/new/base.xdc
set_property used_in_implementation false [get_files D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.srcs/constrs_base/new/base.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top base_wrapper -part xc7z020clg400-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef base_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file base_wrapper_utilization_synth.rpt -pb base_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]