





Include("surface_xbl_hob.asl")
Include("surface_esim.asl")
Include("surface_gpio.asl")
Include("surface_integration.asl")
Include("surface_lid.asl")
Include("surface_thermal_proxy.asl")
Include("surface_cabinets.asl")





Include("cust_camera.asl")
Include("cust_sensors.asl")

Include("surface_sar_manager.asl")
Include("surface_additional_thermal_zones.asl")
Include("surface_fuel_gauges_thermal_zones.asl")
Include("surface_charger_thermal_zones.asl")
Include("surface_thermal_proxy_thermal_zones.asl")
Include("surface_power_monitors.asl")
Include("nfc.asl")
Include("surface_biometrics.asl")
Include("surface_oem_panel.asl")
Include("surface_wireless_charging.asl")



Method (ADDR)
{
	If(Lequal(\_SB_.SVMJ, 1))
	{
		return(0x390B000)
	}
	ElseIf(Lequal(\_SB_.SVMJ, 2))
	{
		return(0x350B000)
	}
}

OperationRegion(NM11, SystemMemory, ADDR, 0x14)
Field(NM11, DWordAcc, NoLock, Preserve){
	PI1C, 32,
	PIN1, 32,
	PI1N, 32,
	PI1S, 32,
    PI1L, 32,
}





Method (_MID, 0, Serialized) {
    Name(NMID, Zero)
    Store(PIN1, NMID)
    Return (NMID)
}
