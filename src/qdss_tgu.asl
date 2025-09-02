










Scope(\_SB.QDSS)
{



    Method (QTGU)
    {
        Return
        (
            Package()
            {

                "SWAO_TGU",
            }
        )
    }

    Method (TGUC)
    {
        Return
        (
            Package()
            {
                Package()
                {
					0,
                    0x06B0C000,
                    0x1000,
                    0x3,
                    0x4,
                    0x5,
                },
            }
        )
    }
}
