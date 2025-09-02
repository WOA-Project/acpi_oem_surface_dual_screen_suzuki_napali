
















Scope(\_SB.PEP0)
{

    Method(LVDD){
		return(NVDD)
	}
	Name( NVDD, package(){
		package(){
			"/arc/client/rail_cx",
			"RAIL_VOLTAGE_LEVEL_NOMINAL",
		},
		package(){
			"/arc/client/display/rail_cx",
			"RAIL_VOLTAGE_LEVEL_OFF",
		},
		package(){
			"/arc/client/rail_mx",
			"RAIL_VOLTAGE_LEVEL_NOMINAL",
		},
		package(){
			"/arc/client/display/rail_mx",
			"RAIL_VOLTAGE_LEVEL_OFF",
		},
		package(){
			"/arc/client/rail_xo",
			"XO_LEVEL_ON",
		},
		package(){
			"/arc/client/display/rail_xo",
			"XO_LEVEL_CRYSTAL_OFF",
		},
	})
}
