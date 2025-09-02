Scope(\_SB_.PEP0)
{

    Method(BTMD)
    {
        Return(BTCC)
    }
    Name(BTCC,
    Package ()
    {
	Package()
        {
            "DEVICE",
            "\\_SB.BAT0",
            Package()
            {
                "COMPONENT",
                0x0,
                Package()
                {
                    "FSTATE",
                    0x0,
                },
                 Package()
                 {
                    "PSTATE",
                    0x0,
                    package() {"CLOCK", package() {"gcc_bam_dma_ahb_clk", 1, 100000000, 1}},
                 },

                 Package()
                 {
                    "PSTATE",
                    0x1,
                    package() {"CLOCK", package() {"gcc_bam_dma_ahb_clk", 2, 100000000, 1}},
                 },
            },
        },
	})
}
