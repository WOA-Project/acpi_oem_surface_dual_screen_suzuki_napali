











Scope(\_SB_.PEP0)
{


    Method(SPMD)
    {
        Return(SPCC)
    }


    Name(SPCC,
    Package ()
    {
        Package()
        {
            "DEVICE",
            "\\_SB.AMSS",
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








                    Package() { "CLOCK", Package() { "gcc_boot_rom_ahb_clk",            1,}},
                    Package() { "CLOCK", Package() { "gcc_mss_cfg_ahb_clk",             1,}},
                    Package() { "CLOCK", Package() { "gcc_mss_q6_memnoc_axi_clk",       1,}},
                    Package() { "CLOCK", Package() { "gcc_mss_snoc_axi_clk",            1,}},
                    Package() { "CLOCK", Package() { "gcc_mss_mfab_axis_clk",           1,}},
                    Package() { "CLOCK", Package() { "gcc_prng_ahb_clk",                1,}},
                    Package() { "CLOCK", Package() { "gcc_mss_axis2_clk",               1,}},




                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_SMPS2_C",
                            2,
                            752000,
                            1,
                            0,
                            0,
                        },
                    },

                    Package()
                    {
                        "NPARESOURCE",
                        Package()
                        {
                               1,
                               "/arc/client/rail_cx",
                               384,
                            },
                        },

                    Package()
                    {
                        "NPARESOURCE",
                        Package()
                        {
                            1,
                            "/arc/client/rail_mx",
                            384,
                        },
                    },

                    Package()
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
                    "PSTATE",
                    1,









                    Package() { "CLOCK", Package() { "gcc_prng_ahb_clk",                2,}},

					Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_SMPS2_C",
                            2,
                            0,
                            0,
                            0,
                            0,
                        },
                    },

                    Package()
                    {
                       "NPARESOURCE",
                       Package()
                       {
                           1,
                           "/arc/client/rail_cx",
                           0,
                       },
                    },

                    Package()
                    {
                       "NPARESOURCE",
                       Package()
                       {
                           1,
                           "/arc/client/rail_mx",
                           0,
                       },
                    },

                    Package()
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
                Package()
                {
                    "PSTATE",
                    2,








                    Package() { "CLOCK", Package() { "gcc_boot_rom_ahb_clk",            2,}},
                    Package() { "CLOCK", Package() { "gcc_prng_ahb_clk",                2,}},

                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_SMPS2_C",
                            2,
                            0,
                            0,
                            0,
                            0,
                        },
                    },

                },
            },
            Package()
            {
                "DSTATE",
                0x0,
            },
            Package()
            {
                "DSTATE",
                0x3,
            }
        },



        Package()
        {
            "DEVICE",
            "\\_SB.ADSP",
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
                },
                Package(){
                    "PSTATE",
                    1,
                },
            },
            Package()
            {
                "DSTATE",
                0x0,
            },
            Package()
            {
                "DSTATE",
                0x3,
            },
        },



        Package()
        {
            "DEVICE",
            "\\_SB.SCSS",
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

                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_LDO27_A",
                            1,
                            0,
                            1,
                            1,
                            0,
                        },
                    },

                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_LDO4_A",
                            1,
                            0,
                            1,
                            1,
                            0,
                        },
                    },

                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_LVS2_A",
                            4,
                            1800000,
                            1,
                        },
                    },

                    Package()
                    {
                        "BUSARB",
                        Package()
                        {
                            3,
                            "ICBID_MASTER_APPSS_PROC",
                            "ICBID_SLAVE_CLK_CTL",
                            1,
                            1,
                        },
                    },
                },
                Package()
                {
                    "PSTATE",
                    0x1,

                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_LDO27_A",
                            1,
                            0,
                            1,
                            0,
                            0,
                        },
                    },

                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_LDO4_A",
                            1,
                            0,
                            1,
                            0,
                            0,
                        },
                    },

                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_LVS2_A",
                            4,
                            0,
                            0,
                        },
                    },

                    Package()
                    {
                        "BUSARB",
                        Package()
                        {
                            3,
                            "ICBID_MASTER_APPSS_PROC",
                            "ICBID_SLAVE_CLK_CTL",
                            0,
                            0,
                         },
                    },
                },
                Package(){
                    "PSTATE",
                    2,

                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_LDO27_A",
                            1,
                            0,
                            0,
                            0,
                            0,
                        },
                    },

                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_LDO4_A",
                            1,
                            0,
                            0,
                            0,
                            0,
                        },
                    },

                    Package()
                    {
                        "PMICVREGVOTE",
                        Package()
                        {
                            "PPP_RESOURCE_ID_LVS2_A",
                            4,
                            0,
                            0,
                        },
                    },

                    Package()
                    {
                        "BUSARB",
                        Package()
                        {
                            3,
                            "ICBID_MASTER_APPSS_PROC",
                            "ICBID_SLAVE_CLK_CTL",
                            0,
                            0,
                         },
                    },
                },
            },
            Package()
            {
                "DSTATE",
                0x0,
            },
            Package()
            {
                "DSTATE",
                0x3,
            },
        },



        Package()
        {
            "DEVICE",
            "\\_SB.CDSP",
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
                },
                Package(){
                    "PSTATE",
                    1,
                },
            },
            Package()
            {
                "DSTATE",
                0x0,
            },
            Package()
            {
                "DSTATE",
                0x3,
            },
        },

    })

}
