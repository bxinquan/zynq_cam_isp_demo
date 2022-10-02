#125MHz
create_clock -period 8 -name cam_xclk [get_ports cam_xclk]
create_clock -period 8 -name cam_pclk [get_ports cam_pclk]
