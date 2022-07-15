# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Work\fpga\zynq_cam_isp_demo\zynq_cam_isp_demo.vitis\dualcam_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Work\fpga\zynq_cam_isp_demo\zynq_cam_isp_demo.vitis\dualcam_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {dualcam_wrapper}\
-hw {D:\Work\fpga\zynq_cam_isp_demo\zynq_cam_isp_demo.vitis\dualcam_wrapper.xsa}\
-out {D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {dualcam_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
bsp reload
bsp setlib -name xilffs -ver 4.5
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform active {dualcam_wrapper}
platform config -updatehw {D:/Work/fpga/zynq_cam_isp_demo/zynq_cam_isp_demo.vitis/dualcam_wrapper.xsa}
platform clean
platform clean
platform generate
