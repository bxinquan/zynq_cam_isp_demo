# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  set C_S00_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH"]
  set_property tooltip {Width of S_AXI address bus} ${C_S00_AXI_ADDR_WIDTH}
  set C_S00_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S00_AXI_DATA_WIDTH}
  ipgui::add_param $IPINST -name "RAW_AUX_NUM"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}

  #Adding Page
  set ColorBarTiming [ipgui::add_page $IPINST -name "ColorBarTiming"]
  set_property tooltip {ColorBarTiming} ${ColorBarTiming}
  ipgui::add_param $IPINST -name "BITS" -parent ${ColorBarTiming}
  set COLORBAR_BAYER [ipgui::add_param $IPINST -name "COLORBAR_BAYER" -parent ${ColorBarTiming}]
  set_property tooltip {Colorbar Bayer(0:RGGB,1:GRBG,2:GBRG,3:BGGR)} ${COLORBAR_BAYER}
  ipgui::add_param $IPINST -name "COLORBAR_H_FRONT" -parent ${ColorBarTiming}
  ipgui::add_param $IPINST -name "COLORBAR_H_PULSE" -parent ${ColorBarTiming}
  ipgui::add_param $IPINST -name "COLORBAR_H_BACK" -parent ${ColorBarTiming}
  ipgui::add_param $IPINST -name "COLORBAR_H_DISP" -parent ${ColorBarTiming}
  ipgui::add_param $IPINST -name "COLORBAR_V_FRONT" -parent ${ColorBarTiming}
  ipgui::add_param $IPINST -name "COLORBAR_V_PULSE" -parent ${ColorBarTiming}
  ipgui::add_param $IPINST -name "COLORBAR_V_BACK" -parent ${ColorBarTiming}
  ipgui::add_param $IPINST -name "COLORBAR_V_DISP" -parent ${ColorBarTiming}


}

proc update_PARAM_VALUE.BITS { PARAM_VALUE.BITS } {
	# Procedure called to update BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BITS { PARAM_VALUE.BITS } {
	# Procedure called to validate BITS
	return true
}

proc update_PARAM_VALUE.COLORBAR_BAYER { PARAM_VALUE.COLORBAR_BAYER } {
	# Procedure called to update COLORBAR_BAYER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLORBAR_BAYER { PARAM_VALUE.COLORBAR_BAYER } {
	# Procedure called to validate COLORBAR_BAYER
	return true
}

proc update_PARAM_VALUE.COLORBAR_H_BACK { PARAM_VALUE.COLORBAR_H_BACK } {
	# Procedure called to update COLORBAR_H_BACK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLORBAR_H_BACK { PARAM_VALUE.COLORBAR_H_BACK } {
	# Procedure called to validate COLORBAR_H_BACK
	return true
}

proc update_PARAM_VALUE.COLORBAR_H_DISP { PARAM_VALUE.COLORBAR_H_DISP } {
	# Procedure called to update COLORBAR_H_DISP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLORBAR_H_DISP { PARAM_VALUE.COLORBAR_H_DISP } {
	# Procedure called to validate COLORBAR_H_DISP
	return true
}

proc update_PARAM_VALUE.COLORBAR_H_FRONT { PARAM_VALUE.COLORBAR_H_FRONT } {
	# Procedure called to update COLORBAR_H_FRONT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLORBAR_H_FRONT { PARAM_VALUE.COLORBAR_H_FRONT } {
	# Procedure called to validate COLORBAR_H_FRONT
	return true
}

proc update_PARAM_VALUE.COLORBAR_H_PULSE { PARAM_VALUE.COLORBAR_H_PULSE } {
	# Procedure called to update COLORBAR_H_PULSE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLORBAR_H_PULSE { PARAM_VALUE.COLORBAR_H_PULSE } {
	# Procedure called to validate COLORBAR_H_PULSE
	return true
}

proc update_PARAM_VALUE.COLORBAR_V_BACK { PARAM_VALUE.COLORBAR_V_BACK } {
	# Procedure called to update COLORBAR_V_BACK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLORBAR_V_BACK { PARAM_VALUE.COLORBAR_V_BACK } {
	# Procedure called to validate COLORBAR_V_BACK
	return true
}

proc update_PARAM_VALUE.COLORBAR_V_DISP { PARAM_VALUE.COLORBAR_V_DISP } {
	# Procedure called to update COLORBAR_V_DISP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLORBAR_V_DISP { PARAM_VALUE.COLORBAR_V_DISP } {
	# Procedure called to validate COLORBAR_V_DISP
	return true
}

proc update_PARAM_VALUE.COLORBAR_V_FRONT { PARAM_VALUE.COLORBAR_V_FRONT } {
	# Procedure called to update COLORBAR_V_FRONT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLORBAR_V_FRONT { PARAM_VALUE.COLORBAR_V_FRONT } {
	# Procedure called to validate COLORBAR_V_FRONT
	return true
}

proc update_PARAM_VALUE.COLORBAR_V_PULSE { PARAM_VALUE.COLORBAR_V_PULSE } {
	# Procedure called to update COLORBAR_V_PULSE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLORBAR_V_PULSE { PARAM_VALUE.COLORBAR_V_PULSE } {
	# Procedure called to validate COLORBAR_V_PULSE
	return true
}

proc update_PARAM_VALUE.RAW_AUX_NUM { PARAM_VALUE.RAW_AUX_NUM } {
	# Procedure called to update RAW_AUX_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAW_AUX_NUM { PARAM_VALUE.RAW_AUX_NUM } {
	# Procedure called to validate RAW_AUX_NUM
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
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


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.BITS { MODELPARAM_VALUE.BITS PARAM_VALUE.BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BITS}] ${MODELPARAM_VALUE.BITS}
}

proc update_MODELPARAM_VALUE.COLORBAR_H_FRONT { MODELPARAM_VALUE.COLORBAR_H_FRONT PARAM_VALUE.COLORBAR_H_FRONT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLORBAR_H_FRONT}] ${MODELPARAM_VALUE.COLORBAR_H_FRONT}
}

proc update_MODELPARAM_VALUE.COLORBAR_H_PULSE { MODELPARAM_VALUE.COLORBAR_H_PULSE PARAM_VALUE.COLORBAR_H_PULSE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLORBAR_H_PULSE}] ${MODELPARAM_VALUE.COLORBAR_H_PULSE}
}

proc update_MODELPARAM_VALUE.COLORBAR_H_BACK { MODELPARAM_VALUE.COLORBAR_H_BACK PARAM_VALUE.COLORBAR_H_BACK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLORBAR_H_BACK}] ${MODELPARAM_VALUE.COLORBAR_H_BACK}
}

proc update_MODELPARAM_VALUE.COLORBAR_H_DISP { MODELPARAM_VALUE.COLORBAR_H_DISP PARAM_VALUE.COLORBAR_H_DISP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLORBAR_H_DISP}] ${MODELPARAM_VALUE.COLORBAR_H_DISP}
}

proc update_MODELPARAM_VALUE.COLORBAR_V_FRONT { MODELPARAM_VALUE.COLORBAR_V_FRONT PARAM_VALUE.COLORBAR_V_FRONT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLORBAR_V_FRONT}] ${MODELPARAM_VALUE.COLORBAR_V_FRONT}
}

proc update_MODELPARAM_VALUE.COLORBAR_V_PULSE { MODELPARAM_VALUE.COLORBAR_V_PULSE PARAM_VALUE.COLORBAR_V_PULSE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLORBAR_V_PULSE}] ${MODELPARAM_VALUE.COLORBAR_V_PULSE}
}

proc update_MODELPARAM_VALUE.COLORBAR_V_BACK { MODELPARAM_VALUE.COLORBAR_V_BACK PARAM_VALUE.COLORBAR_V_BACK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLORBAR_V_BACK}] ${MODELPARAM_VALUE.COLORBAR_V_BACK}
}

proc update_MODELPARAM_VALUE.COLORBAR_V_DISP { MODELPARAM_VALUE.COLORBAR_V_DISP PARAM_VALUE.COLORBAR_V_DISP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLORBAR_V_DISP}] ${MODELPARAM_VALUE.COLORBAR_V_DISP}
}

proc update_MODELPARAM_VALUE.COLORBAR_BAYER { MODELPARAM_VALUE.COLORBAR_BAYER PARAM_VALUE.COLORBAR_BAYER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLORBAR_BAYER}] ${MODELPARAM_VALUE.COLORBAR_BAYER}
}

