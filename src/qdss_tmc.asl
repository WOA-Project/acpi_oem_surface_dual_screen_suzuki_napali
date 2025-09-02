










Scope(\_SB.QDSS)
{



    Method (QTMC)
    {
        Return
        (
            Package()
            {

				"ETFETB",
                "SWAO_TMC",
            }
        )
    }

    Method (TMCC)
    {
        Return
        (
            Package()
            {
                Package()
                {
					0,
                    0x06047000,
                    0x1000,
                    0,
                },

				Package()
                {
					1,
                    0x06B09000,
                    0x1000,
                    6,
                },
            }
        )
    }
}
