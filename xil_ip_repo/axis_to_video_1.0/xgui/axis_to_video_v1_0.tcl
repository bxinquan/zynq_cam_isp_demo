# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DATA_BITS" -parent ${Page_0}
  set ADDR_BITS [ipgui::add_param $IPINST -name "ADDR_BITS" -parent ${Page_0}]
  set_property tooltip {FIFO SIZE = 2 ^ ADDR_BITS} ${ADDR_BITS}
  ipgui::add_param $IPINST -name "H_FRONT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_PULSE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_BACK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_DISP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_FRONT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_PULSE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_BACK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_DISP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_POL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_POL" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_BITS { PARAM_VALUE.ADDR_BITS } {
	# Procedure called to update ADDR_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_BITS { PARAM_VALUE.ADDR_BITS } {
	# Procedure called to validate ADDR_BITS
	return true
}

proc update_PARAM_VALUE.DATA_BITS { PARAM_VALUE.DATA_BITS } {
	# Procedure called to update DATA_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_BITS { PARAM_VALUE.DATA_BITS } {
	# Procedure called to validate DATA_BITS
	return true
}

proc update_PARAM_VALUE.H_BACK { PARAM_VALUE.H_BACK } {
	# Procedure called to update H_BACK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_BACK { PARAM_VALUE.H_BACK } {
	# Procedure called to validate H_BACK
	return true
}

proc update_PARAM_VALUE.H_DISP { PARAM_VALUE.H_DISP } {
	# Procedure called to update H_DISP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_DISP { PARAM_VALUE.H_DISP } {
	# Procedure called to validate H_DISP
	return true
}

proc update_PARAM_VALUE.H_FRONT { PARAM_VALUE.H_FRONT } {
	# Procedure called to update H_FRONT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_FRONT { PARAM_VALUE.H_FRONT } {
	# Procedure called to validate H_FRONT
	return true
}

proc update_PARAM_VALUE.H_POL { PARAM_VALUE.H_POL } {
	# Procedure called to update H_POL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_POL { PARAM_VALUE.H_POL } {
	# Procedure called to validate H_POL
	return true
}

proc update_PARAM_VALUE.H_PULSE { PARAM_VALUE.H_PULSE } {
	# Procedure called to update H_PULSE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_PULSE { PARAM_VALUE.H_PULSE } {
	# Procedure called to validate H_PULSE
	return true
}

proc update_PARAM_VALUE.V_BACK { PARAM_VALUE.V_BACK } {
	# Procedure called to update V_BACK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_BACK { PARAM_VALUE.V_BACK } {
	# Procedure called to validate V_BACK
	return true
}

proc update_PARAM_VALUE.V_DISP { PARAM_VALUE.V_DISP } {
	# Procedure called to update V_DISP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_DISP { PARAM_VALUE.V_DISP } {
	# Procedure called to validate V_DISP
	return true
}

proc update_PARAM_VALUE.V_FRONT { PARAM_VALUE.V_FRONT } {
	# Procedure called to update V_FRONT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_FRONT { PARAM_VALUE.V_FRONT } {
	# Procedure called to validate V_FRONT
	return true
}

proc update_PARAM_VALUE.V_POL { PARAM_VALUE.V_POL } {
	# Procedure called to update V_POL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_POL { PARAM_VALUE.V_POL } {
	# Procedure called to validate V_POL
	return true
}

proc update_PARAM_VALUE.V_PULSE { PARAM_VALUE.V_PULSE } {
	# Procedure called to update V_PULSE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_PULSE { PARAM_VALUE.V_PULSE } {
	# Procedure called to validate V_PULSE
	return true
}


proc update_MODELPARAM_VALUE.DATA_BITS { MODELPARAM_VALUE.DATA_BITS PARAM_VALUE.DATA_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_BITS}] ${MODELPARAM_VALUE.DATA_BITS}
}

proc update_MODELPARAM_VALUE.ADDR_BITS { MODELPARAM_VALUE.ADDR_BITS PARAM_VALUE.ADDR_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_BITS}] ${MODELPARAM_VALUE.ADDR_BITS}
}

proc update_MODELPARAM_VALUE.H_FRONT { MODELPARAM_VALUE.H_FRONT PARAM_VALUE.H_FRONT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_FRONT}] ${MODELPARAM_VALUE.H_FRONT}
}

proc update_MODELPARAM_VALUE.H_PULSE { MODELPARAM_VALUE.H_PULSE PARAM_VALUE.H_PULSE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_PULSE}] ${MODELPARAM_VALUE.H_PULSE}
}

proc update_MODELPARAM_VALUE.H_BACK { MODELPARAM_VALUE.H_BACK PARAM_VALUE.H_BACK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_BACK}] ${MODELPARAM_VALUE.H_BACK}
}

proc update_MODELPARAM_VALUE.H_DISP { MODELPARAM_VALUE.H_DISP PARAM_VALUE.H_DISP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_DISP}] ${MODELPARAM_VALUE.H_DISP}
}

proc update_MODELPARAM_VALUE.V_FRONT { MODELPARAM_VALUE.V_FRONT PARAM_VALUE.V_FRONT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_FRONT}] ${MODELPARAM_VALUE.V_FRONT}
}

proc update_MODELPARAM_VALUE.V_PULSE { MODELPARAM_VALUE.V_PULSE PARAM_VALUE.V_PULSE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_PULSE}] ${MODELPARAM_VALUE.V_PULSE}
}

proc update_MODELPARAM_VALUE.V_BACK { MODELPARAM_VALUE.V_BACK PARAM_VALUE.V_BACK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_BACK}] ${MODELPARAM_VALUE.V_BACK}
}

proc update_MODELPARAM_VALUE.V_DISP { MODELPARAM_VALUE.V_DISP PARAM_VALUE.V_DISP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_DISP}] ${MODELPARAM_VALUE.V_DISP}
}

proc update_MODELPARAM_VALUE.H_POL { MODELPARAM_VALUE.H_POL PARAM_VALUE.H_POL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_POL}] ${MODELPARAM_VALUE.H_POL}
}

proc update_MODELPARAM_VALUE.V_POL { MODELPARAM_VALUE.V_POL PARAM_VALUE.V_POL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_POL}] ${MODELPARAM_VALUE.V_POL}
}

