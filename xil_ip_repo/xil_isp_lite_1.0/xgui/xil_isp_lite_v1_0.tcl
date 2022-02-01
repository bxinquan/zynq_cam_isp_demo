# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH"
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH"
  ipgui::add_param $IPINST -name "YUV_AUX_NUM"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}

  #Adding Page
  set ISP [ipgui::add_page $IPINST -name "ISP"]
  ipgui::add_param $IPINST -name "IO_BITS" -parent ${ISP}
  ipgui::add_param $IPINST -name "EXT_BITS" -parent ${ISP}
  ipgui::add_param $IPINST -name "BAYER" -parent ${ISP}
  ipgui::add_param $IPINST -name "WIDTH" -parent ${ISP}
  ipgui::add_param $IPINST -name "HEIGHT" -parent ${ISP}
  ipgui::add_param $IPINST -name "STAT_BITS" -parent ${ISP}
  ipgui::add_param $IPINST -name "FEATURE_FULL" -parent ${ISP}


}

proc update_PARAM_VALUE.BAYER { PARAM_VALUE.BAYER } {
	# Procedure called to update BAYER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BAYER { PARAM_VALUE.BAYER } {
	# Procedure called to validate BAYER
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.EXT_BITS { PARAM_VALUE.EXT_BITS } {
	# Procedure called to update EXT_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EXT_BITS { PARAM_VALUE.EXT_BITS } {
	# Procedure called to validate EXT_BITS
	return true
}

proc update_PARAM_VALUE.FEATURE_FULL { PARAM_VALUE.FEATURE_FULL } {
	# Procedure called to update FEATURE_FULL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FEATURE_FULL { PARAM_VALUE.FEATURE_FULL } {
	# Procedure called to validate FEATURE_FULL
	return true
}

proc update_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to update HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to validate HEIGHT
	return true
}

proc update_PARAM_VALUE.IO_BITS { PARAM_VALUE.IO_BITS } {
	# Procedure called to update IO_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IO_BITS { PARAM_VALUE.IO_BITS } {
	# Procedure called to validate IO_BITS
	return true
}

proc update_PARAM_VALUE.STAT_BITS { PARAM_VALUE.STAT_BITS } {
	# Procedure called to update STAT_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STAT_BITS { PARAM_VALUE.STAT_BITS } {
	# Procedure called to validate STAT_BITS
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}

proc update_PARAM_VALUE.YUV_AUX_NUM { PARAM_VALUE.YUV_AUX_NUM } {
	# Procedure called to update YUV_AUX_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.YUV_AUX_NUM { PARAM_VALUE.YUV_AUX_NUM } {
	# Procedure called to validate YUV_AUX_NUM
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.IO_BITS { MODELPARAM_VALUE.IO_BITS PARAM_VALUE.IO_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IO_BITS}] ${MODELPARAM_VALUE.IO_BITS}
}

proc update_MODELPARAM_VALUE.EXT_BITS { MODELPARAM_VALUE.EXT_BITS PARAM_VALUE.EXT_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EXT_BITS}] ${MODELPARAM_VALUE.EXT_BITS}
}

proc update_MODELPARAM_VALUE.WIDTH { MODELPARAM_VALUE.WIDTH PARAM_VALUE.WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH}] ${MODELPARAM_VALUE.WIDTH}
}

proc update_MODELPARAM_VALUE.HEIGHT { MODELPARAM_VALUE.HEIGHT PARAM_VALUE.HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HEIGHT}] ${MODELPARAM_VALUE.HEIGHT}
}

proc update_MODELPARAM_VALUE.BAYER { MODELPARAM_VALUE.BAYER PARAM_VALUE.BAYER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BAYER}] ${MODELPARAM_VALUE.BAYER}
}

proc update_MODELPARAM_VALUE.STAT_BITS { MODELPARAM_VALUE.STAT_BITS PARAM_VALUE.STAT_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STAT_BITS}] ${MODELPARAM_VALUE.STAT_BITS}
}

proc update_MODELPARAM_VALUE.FEATURE_FULL { MODELPARAM_VALUE.FEATURE_FULL PARAM_VALUE.FEATURE_FULL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FEATURE_FULL}] ${MODELPARAM_VALUE.FEATURE_FULL}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

