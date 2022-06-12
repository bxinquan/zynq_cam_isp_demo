
#----------------------摄像头接口的时钟---------------------------
#96M
create_clock -period 10.416 -name cam0_pclk [get_ports cam0_pclk]
create_clock -period 10.416 -name cam1_pclk [get_ports cam1_pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cam0_pclk_IBUF]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cam1_pclk_IBUF]
set_clock_groups -async -group [get_clocks cam0_pclk] -group [get_clocks cam1_pclk] \
        -group [get_clocks clk_fpga_0] -group [get_clocks clk_fpga_1] \
        -group [get_clocks camif_xclk_dualcam_clk_wiz_0_0]

#----------------------摄像头接口---------------------------
#camera1
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports cam0_rst_n]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports cam0_pwdn]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports {cam0_data[0]}]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {cam0_data[1]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {cam0_data[2]}]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports {cam0_data[3]}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {cam0_data[4]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {cam0_data[5]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {cam0_data[6]}]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {cam0_data[7]}]
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports cam0_active_video]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports cam0_vsync]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports cam0_pclk]

#camera2
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports cam1_rst_n]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports cam1_pwdn]
set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVCMOS33} [get_ports {cam1_data[0]}]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports {cam1_data[1]}]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {cam1_data[2]}]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {cam1_data[3]}]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports {cam1_data[4]}]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports {cam1_data[5]}]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports {cam1_data[6]}]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {cam1_data[7]}]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports cam1_active_video]
set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS33} [get_ports cam1_vsync]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports cam1_pclk]

#camera xclk
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports cam1_xclk]


#iic for camera1
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports iic0_scl_io]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports iic0_sda_io]
set_property PULLUP true [get_ports iic0_scl_io]
set_property PULLUP true [get_ports iic0_sda_io]
#iic for camera2
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports iic1_scl_io]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports iic1_sda_io]
set_property PULLUP true [get_ports iic1_scl_io]
set_property PULLUP true [get_ports iic1_sda_io]


#----------------------GPIO EMIO接口---------------------------
#PL_RESET
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {GPIO_EMIO_tri_io[0]}]
#PL_KEY0
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports {GPIO_EMIO_tri_io[1]}]
#PL_KEY1
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports {GPIO_EMIO_tri_io[2]}]
#PL_LED0
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {GPIO_EMIO_tri_io[3]}]
#PL_LED1
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports {GPIO_EMIO_tri_io[4]}]

#----------------------LCD接口---------------------------
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[0]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[1]}]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[2]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[3]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[4]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[5]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[6]}]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[7]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[8]}]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[9]}]
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[10]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[11]}]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[12]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[13]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[14]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[15]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[16]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[17]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[18]}]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[19]}]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[20]}]
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[21]}]
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[22]}]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[23]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports lcd_hs]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports lcd_vs]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports lcd_de]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports lcd_bl]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports lcd_clk]

#----------------------HDMI接口---------------------------
set_property -dict {IOSTANDARD TMDS_33  PACKAGE_PIN L14} [get_ports TMDS_tmds_clk_p]
set_property -dict {IOSTANDARD TMDS_33                 } [get_ports TMDS_tmds_clk_n]
set_property -dict {IOSTANDARD TMDS_33  PACKAGE_PIN K19} [get_ports {TMDS_tmds_data_p[0]}]
set_property -dict {IOSTANDARD TMDS_33                 } [get_ports {TMDS_tmds_data_n[0]}]
set_property -dict {IOSTANDARD TMDS_33  PACKAGE_PIN M14} [get_ports {TMDS_tmds_data_p[1]}]
set_property -dict {IOSTANDARD TMDS_33                 } [get_ports {TMDS_tmds_data_n[1]}]
set_property -dict {IOSTANDARD TMDS_33  PACKAGE_PIN L16} [get_ports {TMDS_tmds_data_p[2]}]
set_property -dict {IOSTANDARD TMDS_33                 } [get_ports {TMDS_tmds_data_n[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G17} [get_ports tmds_oen]

