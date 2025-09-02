









Scope(\_SB_.PEP0)
{
    Method(NFMX)
    {
        Return(NFXC)
    }

    Name(NFXC,
    Package ()
    {
        Package()
        {
            "DEVICE", "\\_SB.NFC1",

            Package()
            {
                "COMPONENT", 0,

                Package() {"FSTATE",  0},
            },

            Package()
            {
                "DSTATE", 0,

                Package ()
                {
                    "PMICVREGVOTE",
                    Package ()
                    {
                        "PPP_RESOURCE_ID_SMPS4_A",
                        0x02,
                        0x001B7740,
                        1,
                        0,
                        0
                    }
                },
                Package ()
                {
                    "PMICGPIO",
                    Package ()
                    {
                        "IOCTL_PM_GPIO_CONFIG_DIGITAL_INPUT",
                        0,
                        0x14,
                        0x04,
                        0,
                        0
                    }
                },
                Package ()
                {
                    "PMICVREGVOTE",
                    Package ()
                    {
                        "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK3_A",
                        0x06,
                        1
                    }
                },
                Package ()
                {
                    "DELAY",
                    Package ()
                    {
                        0x05
                    }
                }
            },

            Package()
            {
                "DSTATE", 1
            },

            Package()
            {
                "DSTATE", 2
            },

            Package()
            {
                "DSTATE", 3,

                Package ()
                {
                    "PMICVREGVOTE",
                    Package ()
                    {
                        "PPP_RESOURCE_ID_SMPS4_A",
                        0x02,
                        0,
                        0,
                        0,
                        0
                    }
                },
                Package ()
                {
                    "PMICVREGVOTE",
                    Package ()
                    {
                        "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK3_A",
                        0x06,
                        0
                    }
                }
            }
        }
    })
}
