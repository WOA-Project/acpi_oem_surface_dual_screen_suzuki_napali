










Scope(\_SB.QDSS)
{


    Method (QREP)
    {
        Return
        (
            Package()
            {

				"REPLICATOR",
                "SWAO_REPLICATOR",
            }
        )
    }

    Method (REPC)
    {
        Return
        (
            Package()
            {
                Package()
                {
					0,
                    0x06046000,
                    0x1000,
                },

				Package()
                {
					1,
                    0x06B0A000,
                    0x1000,
                },
            }
        )
    }
}
