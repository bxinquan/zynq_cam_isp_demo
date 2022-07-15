# (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.


## INFO: AXI-Lite to&fro MMAP clock domain Register & Misc crossings in axi_vdma
set_false_path -to [get_pins -leaf -of_objects [get_cells -hier *cdc_tig* -filter {is_sequential}] -filter {NAME=~*/D}]

## INFO: CDC Crossing in axi_vdma
set_false_path -from [get_cells -hier *cdc_from* -filter {is_sequential && (PRIMITIVE_GROUP!=CLOCK && PRIMITIVE_GROUP!=CLK)}] -to [get_cells -hier *cdc_to* -filter {is_sequential && (PRIMITIVE_GROUP!=CLOCK && PRIMITIVE_GROUP!=CLK) }]


##################################################################################################################################
## INFO: No CDC present in axi-vdma
## INFO: When C_PRMRY_IS_ACLK_ASYNC = 0, axi-vdma MANDATORY REQUIREMENT IS THAT ALL axi-vdma CLOCK PORTS MUST BE CONNECTED TO THE SAME CLOCK SOURCE HAVING SAME FREQUENCY i.e. THERE IS ONLY ONE CLOCK-DOMAIN IN THE ENTIRE axi-vdma DESIGN
## INFO: PLEASE ENSURE THIS REQUIREMENT IS MET.

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_ASYNC_LITE_ACCESS.ip2axi_rddata_captured_mm2s_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_ASYNC_LITE_ACCESS.ip2axi_rddata_captured_s2mm_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_MM2S_ONLY_ASYNC_LITE_ACCESS.ip2axi_rddata_captured_mm2s_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_MM2S_ONLY_ASYNC_LITE_ACCESS.axi2ip_rdaddr_captured_mm2s_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_MM2S_ONLY_ASYNC_LITE_ACCESS.axi2ip_wraddr_captured_mm2s_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_MM2S_ONLY_ASYNC_LITE_ACCESS.mm2s_axi2ip_wrdata_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_vdma" -tags "9601"\
-desc "The CDC-1 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_MM2S_ONLY_ASYNC_LITE_ACCESS.mm2s_axi2ip_wrdata_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_S2MM_ONLY_ASYNC_LITE_ACCESS.ip2axi_rddata_captured_s2mm_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_S2MM_ONLY_ASYNC_LITE_ACCESS.ip2axi_rddata_captured_s2mm_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_S2MM_ONLY_ASYNC_LITE_ACCESS.axi2ip_rdaddr_captured_s2mm_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_S2MM_ONLY_ASYNC_LITE_ACCESS.axi2ip_wraddr_captured_s2mm_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_S2MM_ONLY_ASYNC_LITE_ACCESS.s2mm_axi2ip_wrdata_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_vdma" -tags "9601"\
-desc "The CDC-1 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_S2MM_ONLY_ASYNC_LITE_ACCESS.s2mm_axi2ip_wrdata_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_MM2S_LITE_CROSSINGS.GEN_MM2S_CROSSINGS_ASYNC.mm2s_chnl_current_frame_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_S2MM_LITE_CROSSINGS.GEN_S2MM_CROSSINGS_ASYNC.s2mm_capture_dm_done_vsize_counter_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_S2MM_LITE_CROSSINGS.GEN_S2MM_CROSSINGS_ASYNC.s2mm_capture_hsize_at_uf_err_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_S2MM_LITE_CROSSINGS.GEN_S2MM_CROSSINGS_ASYNC.s2mm_capture_hsize_at_uf_err_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_MM2S_LITE_CROSSINGS.GEN_MM2S_CROSSINGS_ASYNC.mm2s_ip2axi_frame_ptr_ref_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_MM2S_LITE_CROSSINGS.GEN_MM2S_CROSSINGS_ASYNC.mm2s_ip2axi_frame_store_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_S2MM_LITE_CROSSINGS.GEN_S2MM_CROSSINGS_ASYNC.s2mm_chnl_current_frame_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_S2MM_LITE_CROSSINGS.GEN_S2MM_CROSSINGS_ASYNC.s2mm_genlock_pair_frame_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_S2MM_LITE_CROSSINGS.GEN_S2MM_CROSSINGS_ASYNC.s2mm_genlock_pair_frame_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_S2MM_LITE_CROSSINGS.GEN_S2MM_CROSSINGS_ASYNC.s2mm_ip2axi_frame_ptr_ref_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. This value changes only on frame boundaries." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_S2MM_LITE_CROSSINGS.GEN_S2MM_CROSSINGS_ASYNC.s2mm_ip2axi_frame_store_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_ASYNC_LITE_ACCESS.axi2ip_rdaddr_captured_mm2s_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_ASYNC_LITE_ACCESS.axi2ip_rdaddr_captured_s2mm_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_ASYNC_LITE_ACCESS.axi2ip_wraddr_captured_mm2s_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_ASYNC_LITE_ACCESS.axi2ip_wraddr_captured_s2mm_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_ASYNC_LITE_ACCESS.mm2s_axi2ip_wrdata_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_vdma" -tags "9601"\
-desc "The CDC-1 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_ASYNC_LITE_ACCESS.mm2s_axi2ip_wrdata_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_vdma" -tags "9601"\
-desc "The CDC-4 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_ASYNC_LITE_ACCESS.s2mm_axi2ip_wrdata_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_vdma" -tags "9601"\
-desc "The CDC-1 warning is waived as it is safe in the context of AXI VDMA. The Address and Data value do not change until AXI transaction is complete." \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_LITE_IS_ASYNC.GEN_ASYNC_LITE_ACCESS.s2mm_axi2ip_wrdata_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_vdma" -tags "9601"\
-desc "The CDC-1 warning is waived as it is safe in the context of AXI VDMA. This value does not change frequently" \
-to [get_pins -hier -quiet -filter {NAME =~*AXI_LITE_REG_INTERFACE_I/GEN_MM2S_LITE_CROSSINGS.GEN_MM2S_CROSSINGS_ASYNC.mm2s_genlock_pair_frame_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-6} -user "axi_vdma" -tags "9601"\
-desc "The CDC-6 warning is waived as it is safe in the context of AXI VDMA." \
-to [get_pins -hier -quiet -filter {NAME =~*GEN_SPRT_FOR_S2MM.S2MM_LINEBUFFER_I/GEN_NO_FSYNC_LOGIC.GEN_FOR_ASYNC.crnt_vsize_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-6} -user "axi_vdma" -tags "9601"\
-desc "The CDC-6 warning is waived as it is safe in the context of AXI VDMA." \
-to [get_pins -hier -quiet -filter {NAME =~*GEN_SPRT_FOR_MM2S.MM2S_LINEBUFFER_I/GEN_LINEBUF_NO_SOF.GEN_FOR_ASYNC.crnt_vsize_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-6} -user "axi_vdma" -tags "9601"\
-desc "The CDC-6 warning is waived as it is safe in the context of AXI VDMA." \
-to [get_pins -hier -quiet -filter {NAME =~*GEN_SPRT_FOR_MM2S.MM2S_LINEBUFFER_I/GEN_LINEBUF_FLUSH_SOF.GEN_FOR_ASYNC.crnt_vsize_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-6} -user "axi_vdma" -tags "9601"\
-desc "The CDC-6 warning is waived as it is safe in the context of AXI VDMA." \
-to [get_pins -hier -quiet -filter {NAME =~*GEN_SPRT_FOR_MM2S.MM2S_VID_CDC_I/GEN_CDC_FOR_ASYNC.frame_ptr_out_d1_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-6} -user "axi_vdma" -tags "9601"\
-desc "The CDC-6 warning is waived as it is safe in the context of AXI VDMA." \
-to [get_pins -hier -quiet -filter {NAME =~*GEN_SPRT_FOR_S2MM.S2MM_LINEBUFFER_I/GEN_S2MM_FLUSH_SOF_LOGIC.GEN_FOR_ASYNC_FLUSH_SOF.crnt_vsize_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-6} -user "axi_vdma" -tags "9601"\
-desc "The CDC-6 warning is waived as it is safe in the context of AXI VDMA." \
-to [get_pins -hier -quiet -filter {NAME =~*GEN_SPRT_FOR_S2MM.S2MM_VID_CDC_I/GEN_CDC_FOR_ASYNC.frame_ptr_out_d1_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-6} -user "axi_vdma" -tags "9601"\
-desc "The CDC-6 warning is waived as it is safe in the context of AXI VDMA." \
-to [get_pins -hier -quiet -filter {NAME =~*GEN_SPRT_FOR_MM2S.MM2S_VID_CDC_I/GEN_CDC_FOR_ASYNC.GEN_FOR_INTERNAL_GENLOCK.othrchnl_frame_ptr_in_d1_cdc_tig_reg[*]/D}]

create_waiver -internal -scope -type CDC -id {CDC-6} -user "axi_vdma" -tags "9601"\
-desc "The CDC-6 warning is waived as it is safe in the context of AXI VDMA." \
-to [get_pins -hier -quiet -filter {NAME =~*GEN_SPRT_FOR_S2MM.S2MM_VID_CDC_I/GEN_CDC_FOR_ASYNC.GEN_FOR_INTERNAL_GENLOCK.othrchnl_frame_ptr_in_d1_cdc_tig_reg[*]/D}]
