Scope(\_SB.PEP0)
{
	Method(LPCU){
        return(NPCU)
    }

    Name( NPCU, package(){
			"PCU_CONFIG",
            9,
            1,
            package(){
                "PCU_CLUSTER_CONFIG",
                9,
            },
            package(){
                "PCU_PHYS_CONFIG",
                0x17E00040,
                0x17E10040,
				0x17E20040,
				0x17E30040,
                0x17E40040,
                0x17E50040,
				0x17E60040,
				0x17E70040,
                0x17810104,
            }
		})
}
