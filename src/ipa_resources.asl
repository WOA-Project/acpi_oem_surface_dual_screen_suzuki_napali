




















Scope(\_SB.PEP0)
{
    Method(IPMD){
        Return(IPSC)
    }

    Name(IPSC,
    Package()
    {
        Package()
        {
            "DEVICE",
            "\\_SB.IPA",
            Package()
            {
                "COMPONENT",
                0x0,
                Package()
                {
                    "FSTATE",
					0x0,
                    package()
                    {
                        "BUSARB",
                        Package()
                        {
                            3,
							"ICBID_MASTER_IPA_CORE",
                            "ICBID_SLAVE_IPA_CORE",
                            37400,
                            0,
                            "HLOS_DRV",
                        },
                    },
                },
                Package()
                {
                    "FSTATE",
                    0x1,
                    package()
                    {
                        "BUSARB",
                        Package()
                        {
                            3,
							"ICBID_MASTER_IPA_CORE",
                            "ICBID_SLAVE_IPA_CORE",
							0,
                            0,
                            "HLOS_DRV",
                        },
                    },
                },
            },
        },
    })
}
