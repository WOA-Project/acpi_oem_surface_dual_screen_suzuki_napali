
























Scope(\_SB_.PEP0)
{

    Method(CPMX)
    {
        Return (CPXC)
    }

    Name(CPXC,
    Package ()
    {

        Package()
        {
            "DEVICE",
            "\\_SB.FLSH",

            Package()
            {
                "COMPONENT",
                0x0,
                Package() { "FSTATE", 0x0, },
                Package() { "FSTATE", 0x1, },
            },
        },


        Package()
        {
            "DEVICE",
            "\\_SB.CAMP",

            Package()
            {
                "COMPONENT",
                0x0,

                Package()
                {
                    "FSTATE",
                    0x0,







                    package() { "CLOCK",      package() { "gcc_camera_xo_clk",   1} },
                    package() { "CLOCK",      package() { "gcc_camera_ahb_clk",  1} },

                    Package() { "FOOTSWITCH", Package() { "titan_top_gdsc",      1} },

					Package() { "PSTATE_ADJUST", Package() { 1, 35 } },
                    Package() { "PSTATE_ADJUST", Package() { 2, 35 } },

                    package() { "CLOCK",      package() { "gcc_camera_axi_clk",  1} },
                    package() { "CLOCK", package() { "cam_cc_soc_ahb_clk",     1 } },
                    package() { "CLOCK", package() { "cam_cc_cpas_ahb_clk",    1 } },
                    package() { "CLOCK", package() { "cam_cc_camnoc_axi_clk",  1} },







                   package() { "CLOCK", package() { "cam_cc_cci_clk",         1} },



                    Package() { "PSTATE_ADJUST", Package() { 0, 0 } },





                    package() { "TLMMGPIO", package() { 17,    1,    1,    1,    3,    0, }, },
                    package() { "TLMMGPIO", package() { 18,    1,    1,    1,    3,    0, }, },
                    package() { "TLMMGPIO", package() { 19,    1,    1,    1,    3,    0, }, },
                    package() { "TLMMGPIO", package() { 20,    1,    1,    1,    3,    0, }, },




                    package() { "TLMMGPIO", package() { 15,    1,    1,    1,    0,    2, }, },

                },

                Package()
                {
                    "FSTATE",
                    0x1,


                    package() { "TLMMGPIO", package() { 15,    0,    0,    0,    1,    2, }, },



                    package() { "TLMMGPIO", package() { 20,    0,    0,    0,    1,    0, }, },
                    package() { "TLMMGPIO", package() { 19,    0,    0,    0,    1,    0, }, },
                    package() { "TLMMGPIO", package() { 18,    0,    0,    0,    1,    0, }, },
                    package() { "TLMMGPIO", package() { 17,    0,    0,    0,    1,    0, }, },

                    package() { "CLOCK", package() { "cam_cc_cci_clk",         2 } },

                    package() { "CLOCK", package() { "cam_cc_camnoc_axi_clk",  2 } },
                    package() { "CLOCK", package() { "cam_cc_cpas_ahb_clk",    2 } },
                    package() { "CLOCK", package() { "cam_cc_soc_ahb_clk",     2 } },
                    package() { "CLOCK",      package() { "gcc_camera_axi_clk",  2 } },

                    Package() { "PSTATE_ADJUST", Package() { 2, 37 } },
                    Package() { "PSTATE_ADJUST", Package() { 1, 37 } },

                    Package() { "FOOTSWITCH", Package() { "titan_top_gdsc",      2 } },
                    package() { "CLOCK",      package() { "gcc_camera_ahb_clk",  2 } },
                    package() { "CLOCK",      package() { "gcc_camera_xo_clk",   2 } },
                },



                Package()
                {
                    "PSTATE_SET",
                    0,




                    Package() { "PSTATE", 0, package() { "CLOCK", package() { "cam_cc_cci_clk", 3, 37500000, 3, } }, },
                    Package() { "PSTATE", 1, package() { "CLOCK", package() { "cam_cc_cci_clk", 3, 19200000, 3, } }, },
                },

                Package()
                {
                    "PSTATE_SET",
                    1,


                    Package() { "PSTATE",  0, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP", 12000000000, 12000000000 } }, },
                    Package() { "PSTATE",  1, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP", 11500000000, 11500000000 } }, },
                    Package() { "PSTATE",  2, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP", 11000000000, 11000000000 } }, },
                    Package() { "PSTATE",  3, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP", 10500000000, 10500000000 } }, },
                    Package() { "PSTATE",  4, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP", 10000000000, 10000000000 } }, },
                    Package() { "PSTATE",  5, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  9500000000,  9500000000 } }, },
                    Package() { "PSTATE",  6, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  9000000000,  9000000000 } }, },
                    Package() { "PSTATE",  7, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  8500000000,  8500000000 } }, },
                    Package() { "PSTATE",  8, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  8000000000,  8000000000 } }, },
                    Package() { "PSTATE",  9, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  7500000000,  7500000000 } }, },
                    Package() { "PSTATE", 10, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  7000000000,  7000000000 } }, },
                    Package() { "PSTATE", 11, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  6500000000,  6500000000 } }, },
                    Package() { "PSTATE", 12, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  6000000000,  6000000000 } }, },
                    Package() { "PSTATE", 13, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  5500000000,  5500000000 } }, },
                    Package() { "PSTATE", 14, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  5000000000,  5000000000 } }, },
                    Package() { "PSTATE", 15, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  4500000000,  4500000000 } }, },
                    Package() { "PSTATE", 16, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  4000000000,  4000000000 } }, },
                    Package() { "PSTATE", 17, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  3500000000,  3500000000 } }, },
                    Package() { "PSTATE", 18, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  3300000000,  3300000000 } }, },
                    Package() { "PSTATE", 19, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  3100000000,  3100000000 } }, },
                    Package() { "PSTATE", 20, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  2900000000,  2900000000 } }, },
                    Package() { "PSTATE", 21, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  2700000000,  2700000000 } }, },
                    Package() { "PSTATE", 22, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  2500000000,  2500000000 } }, },
                    Package() { "PSTATE", 23, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  2300000000,  2300000000 } }, },
                    Package() { "PSTATE", 24, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  2100000000,  2100000000 } }, },
                    Package() { "PSTATE", 25, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  1900000000,  1900000000 } }, },
                    Package() { "PSTATE", 26, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  1700000000,  1700000000 } }, },
                    Package() { "PSTATE", 27, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  1500000000,  1500000000 } }, },
                    Package() { "PSTATE", 28, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  1300000000,  1300000000 } }, },
                    Package() { "PSTATE", 29, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  1100000000,  1100000000 } }, },
                    Package() { "PSTATE", 30, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   900000000,   900000000 } }, },
                    Package() { "PSTATE", 31, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   700000000,   700000000 } }, },
                    Package() { "PSTATE", 32, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   500000000,   500000000 } }, },
                    Package() { "PSTATE", 33, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   400000000,   400000000 } }, },
                    Package() { "PSTATE", 34, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   300000000,   300000000 } }, },
                    Package() { "PSTATE", 35, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   200000000,   200000000 } }, },
                    Package() { "PSTATE", 36, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   100000000,   100000000 } }, },
                    Package() { "PSTATE", 37, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",           0,           0 } }, },
                },

                Package()
                {
                    "PSTATE_SET",
                    2,


                    Package() { "PSTATE",  0, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1", 12000000000, 12000000000 } }, },
                    Package() { "PSTATE",  1, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1", 11500000000, 11500000000 } }, },
                    Package() { "PSTATE",  2, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1", 11000000000, 11000000000 } }, },
                    Package() { "PSTATE",  3, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1", 10500000000, 10500000000 } }, },
                    Package() { "PSTATE",  4, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1", 10000000000, 10000000000 } }, },
                    Package() { "PSTATE",  5, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  9500000000,  9500000000 } }, },
                    Package() { "PSTATE",  6, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  9000000000,  9000000000 } }, },
                    Package() { "PSTATE",  7, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  8500000000,  8500000000 } }, },
                    Package() { "PSTATE",  8, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  8000000000,  8000000000 } }, },
                    Package() { "PSTATE",  9, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  7500000000,  7500000000 } }, },
                    Package() { "PSTATE", 10, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  7000000000,  7000000000 } }, },
                    Package() { "PSTATE", 11, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  6500000000,  6500000000 } }, },
                    Package() { "PSTATE", 12, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  6000000000,  6000000000 } }, },
                    Package() { "PSTATE", 13, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  5500000000,  5500000000 } }, },
                    Package() { "PSTATE", 14, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  5000000000,  5000000000 } }, },
                    Package() { "PSTATE", 15, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  4500000000,  4500000000 } }, },
                    Package() { "PSTATE", 16, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  4000000000,  4000000000 } }, },
                    Package() { "PSTATE", 17, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  3500000000,  3500000000 } }, },
                    Package() { "PSTATE", 18, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  3300000000,  3300000000 } }, },
                    Package() { "PSTATE", 19, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  3100000000,  3100000000 } }, },
                    Package() { "PSTATE", 20, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  2900000000,  2900000000 } }, },
                    Package() { "PSTATE", 21, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  2700000000,  2700000000 } }, },
                    Package() { "PSTATE", 22, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  2500000000,  2500000000 } }, },
                    Package() { "PSTATE", 23, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  2300000000,  2300000000 } }, },
                    Package() { "PSTATE", 24, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  2100000000,  2100000000 } }, },
                    Package() { "PSTATE", 25, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  1900000000,  1900000000 } }, },
                    Package() { "PSTATE", 26, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  1700000000,  1700000000 } }, },
                    Package() { "PSTATE", 27, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  1500000000,  1500000000 } }, },
                    Package() { "PSTATE", 28, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  1300000000,  1300000000 } }, },
                    Package() { "PSTATE", 29, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  1100000000,  1100000000 } }, },
                    Package() { "PSTATE", 30, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   900000000,   900000000 } }, },
                    Package() { "PSTATE", 31, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   700000000,   700000000 } }, },
                    Package() { "PSTATE", 32, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   500000000,   500000000 } }, },
                    Package() { "PSTATE", 33, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   400000000,   400000000 } }, },
                    Package() { "PSTATE", 34, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   300000000,   300000000 } }, },
                    Package() { "PSTATE", 35, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   200000000,   200000000 } }, },
                    Package() { "PSTATE", 36, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   100000000,   100000000 } }, },
                    Package() { "PSTATE", 37, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",           0,           0 } }, },
                },
            },

            Package()
            {
                "COMPONENT",
                0x1,

                Package()
                {
                    "FSTATE",
                    0x0,
                    package() { "CLOCK",      package() { "gcc_camera_xo_clk",   1} },
                    package() { "CLOCK",      package() { "gcc_camera_ahb_clk",  1} },

                    Package() { "PSTATE_ADJUST", Package() { 3, 4 } },
                    Package() { "PSTATE_ADJUST", Package() { 2, 4 } },
                    Package() { "PSTATE_ADJUST", Package() { 1, 4 } },
                    Package() { "PSTATE_ADJUST", Package() { 0, 4 } },

                    Package() { "FOOTSWITCH", Package() { "titan_top_gdsc",      1} },
                    package() { "CLOCK",      package() { "gcc_camera_axi_clk",  1} },

                    package() { "CLOCK", package() { "cam_cc_soc_ahb_clk",     1 } },
                    package() { "CLOCK", package() { "cam_cc_cpas_ahb_clk",    1 } },
                    package() { "CLOCK", package() { "cam_cc_camnoc_axi_clk",  1} },
                    package() { "CLOCK", package() { "cam_cc_cci_clk",         1} },
                },

                Package()
                {
                    "FSTATE",
                    0x1,

                    package() { "CLOCK", package() { "cam_cc_cci_clk",         2 } },
                    package() { "CLOCK", package() { "cam_cc_camnoc_axi_clk",  2 } },
                    package() { "CLOCK", package() { "cam_cc_cpas_ahb_clk",    2 } },
                    package() { "CLOCK", package() { "cam_cc_soc_ahb_clk",     2 } },

                    package() { "CLOCK",      package() { "gcc_camera_axi_clk",  2 } },
                    Package() { "FOOTSWITCH", Package() { "titan_top_gdsc",      2 } },

                    Package() { "PSTATE_ADJUST", Package() { 0, 5 } },
                    Package() { "PSTATE_ADJUST", Package() { 1, 5 } },
                    Package() { "PSTATE_ADJUST", Package() { 2, 5 } },
                    Package() { "PSTATE_ADJUST", Package() { 3, 5 } },

                    package() { "CLOCK",      package() { "gcc_camera_ahb_clk",  2 } },
                    package() { "CLOCK",      package() { "gcc_camera_xo_clk",   2} },
                },
                Package()
                {
                    "PSTATE_SET",
                    0,
                    Package() { "PSTATE", 0,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0_UNCOMP",    "ICBID_SLAVE_CAMNOC_UNCOMP",      1100000000,    1100000000 } } },
                    Package() { "PSTATE", 1,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0_UNCOMP",    "ICBID_SLAVE_CAMNOC_UNCOMP",       400000000,     400000000 } } },
                    Package() { "PSTATE", 2,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0_UNCOMP",    "ICBID_SLAVE_CAMNOC_UNCOMP",       300000000,     300000000 } } },
                    Package() { "PSTATE", 3,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0_UNCOMP",    "ICBID_SLAVE_CAMNOC_UNCOMP",       200000000,     200000000 } } },
                    Package() { "PSTATE", 4,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0_UNCOMP",    "ICBID_SLAVE_CAMNOC_UNCOMP",       100000000,     100000000 } } },
                    Package() { "PSTATE", 5,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0_UNCOMP",    "ICBID_SLAVE_CAMNOC_UNCOMP",               0,             0 } } },
                },

                Package()
                {
                    "PSTATE_SET",
                    1,
                    Package() { "PSTATE", 0,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0",    "ICBID_SLAVE_EBI1",      1100000000,    1100000000 } } },
                    Package() { "PSTATE", 1,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0",    "ICBID_SLAVE_EBI1",       400000000,     400000000 } } },
                    Package() { "PSTATE", 2,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0",    "ICBID_SLAVE_EBI1",       300000000,     300000000 } } },
                    Package() { "PSTATE", 3,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0",    "ICBID_SLAVE_EBI1",       200000000,     200000000 } } },
                    Package() { "PSTATE", 4,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0",    "ICBID_SLAVE_EBI1",       100000000,     100000000 } } },
                    Package() { "PSTATE", 5,  Package() { "BUSARB", Package() { 3,    "ICBID_MASTER_CAMNOC_HF0",    "ICBID_SLAVE_EBI1",               0,             0 } } },
                },


                Package()
                {
                    "PSTATE_SET",
                    2,
                    Package() { "PSTATE", 0, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",  1100000000,  1100000000 } }, },
                    Package() { "PSTATE", 1, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   400000000,   400000000 } }, },
                    Package() { "PSTATE", 2, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   300000000,   300000000 } }, },
                    Package() { "PSTATE", 3, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   200000000,   200000000 } }, },
                    Package() { "PSTATE", 4, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",   100000000,   100000000 } }, },
                    Package() { "PSTATE", 5, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF_UNCOMP", "ICBID_SLAVE_CAMNOC_UNCOMP",           0,           0 } }, },
                },


                Package()
                {
                    "PSTATE_SET",
                    3,
                    Package() { "PSTATE", 0, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",  1100000000,  1100000000 } }, },
                    Package() { "PSTATE", 1, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   400000000,   400000000 } }, },
                    Package() { "PSTATE", 2, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   300000000,   300000000 } }, },
                    Package() { "PSTATE", 3, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   200000000,   200000000 } }, },
                    Package() { "PSTATE", 4, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",   100000000,   100000000 } }, },
                    Package() { "PSTATE", 5, Package() { "BUSARB", Package() { 3, "ICBID_MASTER_CAMNOC_SF", "ICBID_SLAVE_EBI1",           0,           0 } }, },
                },
            },

            Package()
            {
                "COMPONENT",
                0x2,
                Package()
                {
                    "FSTATE",
                    0x0,




                    package() { "TLMMGPIO", package() { 27, 1, 0, 1, 0, 0, }, },
                    package() { "DELAY", package() { 1, }, },
                },

                Package()
                {
                    "FSTATE",
                    0x1,


                    package() { "TLMMGPIO", package() { 27, 0, 0, 1, 0, 0, }, },
                    package() { "DELAY", package() { 1, }, },
                },
            },
        },







        Package()
        {
            "DEVICE",
            "\\_SB.CAMS",

            Package()
            {
                "DSTATE",
                0x0,

                package() { "CLOCK",      package() { "gcc_camera_xo_clk",   1} },
                package() { "CLOCK",      package() { "gcc_camera_ahb_clk",  1} },
                Package() { "FOOTSWITCH", Package() { "titan_top_gdsc",      1} },

                package() { "CLOCK",      package() { "gcc_camera_axi_clk",  1} },
                package() { "CLOCK", package() { "cam_cc_soc_ahb_clk",     1} },
                package() { "CLOCK", package() { "cam_cc_cpas_ahb_clk",    1} },
                package() { "CLOCK", package() { "cam_cc_camnoc_axi_clk",  1} },


                package()
                {
                    "TLMMGPIO",
                    package()
                    {
                        9,
                        0,
                        0,
                        1,
                        0,
                        0,
                    },
                },



                package() { "TLMMGPIO", package() { 8, 1, 0, 1, 0, 0, }, },



                package()
                {
                    "PMICVREGVOTE",
                    package()
                    {
                        "PPP_RESOURCE_ID_LVS1_A",
                        4,
                        1800000,
                        1,


                    },
                },

                package()
                {
                    "PMICVREGVOTE",
                    package()
                    {
                        "PPP_RESOURCE_ID_LDO22_A",
                        1,
                        2800000,
                        1,
                        7,
                        0
                    },
                },


                package() { "CLOCK", package() { "cam_cc_mclk2_clk", 8, 19200000, 3, } },


                package() { "TLMMGPIO", package() { 9, 1, 0, 1, 0, 0, }, },
                package() { "DELAY", package() { 1, }, },
            },

            Package()
            {
                "DSTATE",
                0x3,


                package() { "CLOCK", package() { "cam_cc_mclk2_clk", 12, 0, 3} },


                package() { "TLMMGPIO", package() { 9, 0, 0, 1, 0, 0, }, },

                package() { "PMICVREGVOTE", package() { "PPP_RESOURCE_ID_LDO22_A", 1, 0, 0, 0, 0}, },

                package() { "PMICVREGVOTE", package() { "PPP_RESOURCE_ID_LVS1_A", 4, 0, 0, }, },


                package() { "TLMMGPIO", package() { 8, 0, 0, 1, 0, 0, }, },

                package() { "CLOCK", package() { "cam_cc_cpas_ahb_clk",    2 } },
                package() { "CLOCK", package() { "cam_cc_soc_ahb_clk",     2 } },
                package() { "CLOCK",      package() { "gcc_camera_axi_clk",  2 } },

                Package() { "FOOTSWITCH", Package() { "titan_top_gdsc",      2 } },
                package() { "CLOCK",      package() { "gcc_camera_ahb_clk",  2 } },
                package() { "CLOCK",      package() { "gcc_camera_xo_clk",   2 } },
            },
        },






        Package()
        {
            "DEVICE",
            "\\_SB.CAMF",

            Package()
            {
                "DSTATE",
                0x0,

                package() { "PMICVREGVOTE", package() { "PPP_RESOURCE_ID_LVS1_A", 4, 1800000, 1, }, },

                package() { "CLOCK",      package() { "gcc_camera_xo_clk",   1} },
                package() { "CLOCK",      package() { "gcc_camera_ahb_clk",  1} },
                Package() { "FOOTSWITCH", Package() { "titan_top_gdsc",      1} },

                package() { "CLOCK",      package() { "gcc_camera_axi_clk",  1} },
                package() { "CLOCK", package() { "cam_cc_soc_ahb_clk",     1} },
                package() { "CLOCK", package() { "cam_cc_cpas_ahb_clk",    1} },
            },

            Package()
            {
                "DSTATE",
                0x3,


                package() { "PMICVREGVOTE", package() { "PPP_RESOURCE_ID_LVS1_A", 4, 0, 0, }, },

                package() { "CLOCK", package() { "cam_cc_cpas_ahb_clk",    2 } },
                package() { "CLOCK", package() { "cam_cc_soc_ahb_clk",     2 } },
                package() { "CLOCK",      package() { "gcc_camera_axi_clk",  2 } },

                Package() { "FOOTSWITCH", Package() { "titan_top_gdsc",      2 } },
                package() { "CLOCK",      package() { "gcc_camera_ahb_clk",  2 } },
                package() { "CLOCK",      package() { "gcc_camera_xo_clk",   2 } },
            },
        },




        Package()
        {
            "DEVICE",
            "\\_SB.CAMI",

            Package()
            {
                "DSTATE",
                0x0,

                package() { "CLOCK",      package() { "gcc_camera_xo_clk",   1} },
                package() { "CLOCK",      package() { "gcc_camera_ahb_clk",  1} },
                Package() { "FOOTSWITCH", Package() { "titan_top_gdsc",      1} },

                package() { "CLOCK",      package() { "gcc_camera_axi_clk",  1} },
                package() { "CLOCK", package() { "cam_cc_soc_ahb_clk",     1 } },
                package() { "CLOCK", package() { "cam_cc_cpas_ahb_clk",    1 } },
                package() { "CLOCK", package() { "cam_cc_camnoc_axi_clk",  1} },


                package() { "PMICVREGVOTE", package() { "PPP_RESOURCE_ID_LVS1_A", 4, 1800000, 1, }, },


                package() { "PMICGPIO", package() { "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT", 0, 8, 0, 1, 1, 3, 0, }, },

                package() { "DELAY", package() { 2, }, },


                package() { "TLMMGPIO", package() { 80, 1, 0, 1, 0, 0, }, },


                package() { "CLOCK", package() { "cam_cc_mclk0_clk", 8, 19200000, 3, } },
                package() { "DELAY", package() { 1, }, },
            },

            Package()
            {
                "DSTATE",
                0x3,


                package(){ "CLOCK", package(){ "cam_cc_mclk0_clk", 12, 0, 3} },


                package() { "TLMMGPIO", package() { 80, 0, 0, 1, 0, 0, }, },


                package() { "PMICGPIO", package() { "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT", 0, 8, 0, 1, 0, 3, 0, }, },


                package() { "PMICVREGVOTE", package() { "PPP_RESOURCE_ID_LVS1_A", 4, 0, 0, }, },

                package() { "CLOCK", package() { "cam_cc_camnoc_axi_clk",  2 } },
                package() { "CLOCK", package() { "cam_cc_cpas_ahb_clk",    2 } },
                package() { "CLOCK", package() { "cam_cc_soc_ahb_clk",     2 } },
                package() { "CLOCK",      package() { "gcc_camera_axi_clk",  2 } },

                Package() { "FOOTSWITCH", Package() { "titan_top_gdsc",      2 } },
                package() { "CLOCK",      package() { "gcc_camera_ahb_clk",  2 } },
                package() { "CLOCK",      package() { "gcc_camera_xo_clk",   2 } },
            },
        }
    })
}
