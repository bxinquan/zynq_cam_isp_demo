# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXI_AW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_DW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_MIDW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_RID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_SIDW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_WID" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXI_AW { PARAM_VALUE.AXI_AW } {
	# Procedure called to update AXI_AW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_AW { PARAM_VALUE.AXI_AW } {
	# Procedure called to validate AXI_AW
	return true
}

proc update_PARAM_VALUE.AXI_DW { PARAM_VALUE.AXI_DW } {
	# Procedure called to update AXI_DW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_DW { PARAM_VALUE.AXI_DW } {
	# Procedure called to validate AXI_DW
	return true
}

proc update_PARAM_VALUE.AXI_MIDW { PARAM_VALUE.AXI_MIDW } {
	# Procedure called to update AXI_MIDW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_MIDW { PARAM_VALUE.AXI_MIDW } {
	# Procedure called to validate AXI_MIDW
	return true
}

proc update_PARAM_VALUE.AXI_RID { PARAM_VALUE.AXI_RID } {
	# Procedure called to update AXI_RID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_RID { PARAM_VALUE.AXI_RID } {
	# Procedure called to validate AXI_RID
	return true
}

proc update_PARAM_VALUE.AXI_SIDW { PARAM_VALUE.AXI_SIDW } {
	# Procedure called to update AXI_SIDW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_SIDW { PARAM_VALUE.AXI_SIDW } {
	# Procedure called to validate AXI_SIDW
	return true
}

proc update_PARAM_VALUE.AXI_WID { PARAM_VALUE.AXI_WID } {
	# Procedure called to update AXI_WID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_WID { PARAM_VALUE.AXI_WID } {
	# Procedure called to validate AXI_WID
	return true
}


proc update_MODELPARAM_VALUE.AXI_DW { MODELPARAM_VALUE.AXI_DW PARAM_VALUE.AXI_DW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_DW}] ${MODELPARAM_VALUE.AXI_DW}
}

proc update_MODELPARAM_VALUE.AXI_AW { MODELPARAM_VALUE.AXI_AW PARAM_VALUE.AXI_AW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_AW}] ${MODELPARAM_VALUE.AXI_AW}
}

proc update_MODELPARAM_VALUE.AXI_MIDW { MODELPARAM_VALUE.AXI_MIDW PARAM_VALUE.AXI_MIDW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_MIDW}] ${MODELPARAM_VALUE.AXI_MIDW}
}

proc update_MODELPARAM_VALUE.AXI_SIDW { MODELPARAM_VALUE.AXI_SIDW PARAM_VALUE.AXI_SIDW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_SIDW}] ${MODELPARAM_VALUE.AXI_SIDW}
}

proc update_MODELPARAM_VALUE.AXI_WID { MODELPARAM_VALUE.AXI_WID PARAM_VALUE.AXI_WID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_WID}] ${MODELPARAM_VALUE.AXI_WID}
}

proc update_MODELPARAM_VALUE.AXI_RID { MODELPARAM_VALUE.AXI_RID PARAM_VALUE.AXI_RID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_RID}] ${MODELPARAM_VALUE.AXI_RID}
}

