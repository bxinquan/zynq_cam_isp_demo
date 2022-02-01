connect -url tcp:127.0.0.1:3121
source D:/Work/fpga/zynq_camera_vdma_lcd/zynq_camera_vdma_lcd.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210512180081"} -index 0
loadhw -hw D:/Work/fpga/zynq_camera_vdma_lcd/zynq_camera_vdma_lcd.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210512180081"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210512180081"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210512180081"} -index 0
dow D:/Work/fpga/zynq_camera_vdma_lcd/zynq_camera_vdma_lcd.sdk/zynq_camera_vdma_lcd_bsp_xintc_example_1/Debug/zynq_camera_vdma_lcd_bsp_xintc_example_1.elf
configparams force-mem-access 0
bpadd -addr &main