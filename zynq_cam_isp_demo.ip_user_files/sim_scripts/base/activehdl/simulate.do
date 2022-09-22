onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+base -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L lib_pkg_v1_0_2 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_iic_v2_1_0 -L axi_intc_v4_1_15 -L xlconstant_v1_1_7 -L smartconnect_v1_0 -L axi_register_slice_v2_1_24 -L fifo_generator_v13_2_5 -L lib_fifo_v1_0_14 -L blk_mem_gen_v8_4_4 -L lib_bmg_v1_0_13 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_26 -L axi_vdma_v6_3_12 -L generic_baseblocks_v2_1_0 -L axi_data_fifo_v2_1_23 -L axi_crossbar_v2_1_25 -L xlconcat_v2_1_4 -L axi_protocol_converter_v2_1_24 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.base xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {base.udo}

run -all

endsim

quit -force
