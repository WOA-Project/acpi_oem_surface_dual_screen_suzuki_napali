









Scope(\_SB_.PEP0)
{



































    Method (GPMD)
    {
        Name (LIST, Package()
        {
            "METHOD_LIST",



            "DM0G",
            "DM1G",
            "DM2G",
            "DM3G",
            "DM4G",
            "DM5G",
            "DM6G",
            "DM7G",
            "DM8G",
            "DM9G",
        })

        Return (LIST)
    }





    Method (G0MD)
    {
        Name (GPCC, Package()
        {
            Package()
            {
                "DEVICE",
                "\\_SB.GPU0",

                Package()
                {
                    "COMPONENT",
                    0,








                    Package()
                    {
                        "FSTATE",
                        0,
                    },























                    Package()
                    {
                        "FSTATE",
                        1,



                        Package()
                        {
                            "ENTER",

                            Package() { "PSTATE_SAVE" },
                            Package() { "PSTATE_ADJUST", Package() { 3, 12 }},
                            Package() { "PSTATE_ADJUST", Package() { 4, 42 }},
                            Package() { "PSTATE_ADJUST", Package() { 2, 4 }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    2    }},





                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       2   }},
                            Package() { "CLOCK", Package() { "phy_refgen_south",      2   }},

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO1_A",
                                    1,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO14_A",
                                    1,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO26_A",
                                    1,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_SMPS6_A",
                                    2,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "TLMMGPIO",
                                Package()
                                {
                                     10,
                                      1,
                                      0,
                                      0,
                                      1,
                                      0,
                                },
                            },

                            Package()
                            {
                                "NPARESOURCE",
                                Package()
                                {
                                      0,
                                    "/arc/client/rail_cx",
                                     64,
                                },
                            },
                        },



                        Package()
                        {
                            "EXIT",





                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      1   }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    1    }},

                            Package() { "PSTATE_RESTORE" },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO1_A",
                                    1,
                                    880000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO14_A",
                                    1,
                                    1880000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO26_A",
                                    1,
                                    1200000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_SMPS6_A",
                                    2,
                                    800000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "TLMMGPIO",
                                Package()
                                {
                                     10,
                                      1,
                                      1,
                                      0,
                                      0,
                                      0,
                                },
                            },





                            Package() { "CLOCK", Package() { "phy_refgen_south",      1   }},

                            Package()
                            {
                                "NPARESOURCE",
                                Package()
                                {
                                      1,
                                    "/arc/client/rail_cx",
                                     64,
                                },
                            },
                        },
                    },








                    Package() { "INIT_FSTATE", 1 },
                    Package() { "PRELOAD_FSTATE", 0 },
                    Package() { "ABANDON_FSTATE", 0 },





                    Package()
                    {
                        "PSTATE_SET",
                        0,









                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        1,





                        Package()
                        {
                            "PSTATE",
                            0,





                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      1   }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    1    }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    2    }},





                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       2   }},
                        },
                    },







                    Package()
                    {
                        "PSTATE_SET",
                        2,









                        Package()
                        {
                            "PSTATE",
                            0,




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc0_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_intf_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc1_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_intf_clk", 1   }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc0_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_intf_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc1_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_intf_clk", 1   }},
                        },





                        Package()
                        {
                            "PSTATE",
                            2,




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},






                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc0_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_intf_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk1_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc1_clk",       2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_intf_clk", 2   }},
                        },





                        Package()
                        {
                            "PSTATE",
                            3,




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},






                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk0_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc0_clk",       2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_intf_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc1_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_intf_clk", 1   }},
                        },





                        Package()
                        {
                            "PSTATE",
                            4,





                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk0_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc0_clk",       2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_intf_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk1_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc1_clk",       2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_intf_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        2   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },














                    Package()
                    {
                        "PSTATE_SET",
                        3,





                        Package()
                        {
                            "PSTATE",
                            0,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       430000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  298000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            1,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       412500000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  298000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            2,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       344000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            3,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       300000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            4,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       275000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            5,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       200000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            6,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       171428571,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            7,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       165000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            8,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       150000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            9,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       100000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            10,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,        85710000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            11,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,        19200000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            12,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,               0,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 4 },
                        Package() { "PREPARE_PSTATE", 4 },
                        Package() { "ABANDON_PSTATE", 4 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        4,








                        Package() { "PSTATE",   0,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 13326000000, 13326000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 13326000000 }},
                        },
                        Package() { "PSTATE",   1,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 12926000000, 12926000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 12926000000 }},
                        },
                        Package() { "PSTATE",   2,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 12526000000, 12526000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 12526000000 }},
                        },
                        Package() { "PSTATE",   3,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 12126000000, 12126000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 12126000000 }},
                        },
                        Package() { "PSTATE",   4,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 11726000000, 11726000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 11726000000 }},
                        },
                        Package() { "PSTATE",   5,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 11326000000, 11326000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 11326000000 }},
                        },
                        Package() { "PSTATE",   6,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 10926000000, 10926000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 10926000000 }},
                        },
                        Package() { "PSTATE",   7,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 10526000000, 10526000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 10526000000 }},
                        },








                        Package() { "PSTATE",   8,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 10126000000, 10126000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 10126000000 }},
                        },
                        Package() { "PSTATE",   9,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 9600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 9600000000 }},
                        },
                        Package() { "PSTATE",  10,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 9200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 9200000000 }},
                        },
                        Package() { "PSTATE",  11,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 8800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 8800000000 }},
                        },
                        Package() { "PSTATE",  12,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 8400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 8400000000 }},
                        },
                        Package() { "PSTATE",  13,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 8000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 8000000000 }},
                        },
                        Package() { "PSTATE",  14,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 7600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 7600000000 }},
                        },
                        Package() { "PSTATE",  15,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 7200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 7200000000 }},
                        },
                        Package() { "PSTATE",  16,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 6800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 6800000000 }},
                        },
                        Package() { "PSTATE",  17,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 6400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 6400000000 }},
                        },
                        Package() { "PSTATE",  18,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 6000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 6000000000 }},
                        },
                        Package() { "PSTATE",  19,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 5600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 5600000000 }},
                        },








                        Package() { "PSTATE",  20,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 5200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 5200000000 }},
                        },
                        Package() { "PSTATE",  21,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 4800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 4800000000 }},
                        },
                        Package() { "PSTATE",  22,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 4400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 4400000000 }},
                        },
                        Package() { "PSTATE",  23,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 4000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 4000000000 }},
                        },
                        Package() { "PSTATE",  24,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 3600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 3600000000 }},
                        },
                        Package() { "PSTATE",  25,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 3200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 3200000000 }},
                        },
                        Package() { "PSTATE",  26,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 8400000000, 2800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 2800000000 }},
                        },
                        Package() { "PSTATE",  27,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 7200000000, 2400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 2400000000 }},
                        },
                        Package() { "PSTATE",  28,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 6000000000, 2000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 2000000000 }},
                        },
                        Package() { "PSTATE",  29,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1600000000 }},
                        },
                        Package() { "PSTATE",  30,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1500000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1500000000 }},
                        },
                        Package() { "PSTATE",  31,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1400000000 }},
                        },
                        Package() { "PSTATE",  32,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1300000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1300000000 }},
                        },
                        Package() { "PSTATE",  33,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1200000000 }},
                        },
                        Package() { "PSTATE",  34,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1100000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1100000000 }},
                        },
                        Package() { "PSTATE",  35,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1000000000 }},
                        },
                        Package() { "PSTATE",  36,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  900000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  900000000 }},
                        },
                        Package() { "PSTATE",  37,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  800000000 }},
                        },
                        Package() { "PSTATE",  38,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  700000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  700000000 }},
                        },
                        Package() { "PSTATE",  39,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  600000000 }},
                        },
                        Package() { "PSTATE",  40,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  500000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  500000000 }},
                        },
                        Package() { "PSTATE",  41,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  400000000 }},
                        },
                        Package() { "PSTATE",  42,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC",          0,          0 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",                     0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 28 },
                        Package() { "PREPARE_PSTATE", 28 },
                        Package() { "ABANDON_PSTATE", 28 },
                    },
                },
            },
        })

        Return (GPCC)
    }





    Method (G1MD)
    {
        Name (GPCC, Package()
        {
            Package()
            {
                "DEVICE",
                "\\_SB.GPU0",

                Package()
                {
                    "COMPONENT",
                    1,













                    Package()
                    {
                        "FSTATE",
                        0,



                        Package()
                        {
                            "ENTER",
                            Package() { "PSTATE_ADJUST", Package() { 1, 1 }},





                            Package() { "CLOCK", Package() { "gpu_cc_cxo_clk",         1   }},
                            Package() { "CLOCK", Package() { "gpu_cc_cx_gmu_clk",      1   }},
                            Package() { "CLOCK", Package() { "gcc_gpu_memnoc_gfx_clk", 1   }},
                            Package() { "CLOCK", Package() { "gpu_cc_gx_gfx3d_clk",    1   }},






                            Package() { "CLOCK", Package() { "gpu_cc_cx_gmu_clk",     3,       200000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_GFX3D",       "ICBID_SLAVE_EBI1",                1,          0 }},
                        },
                    },








                    Package()
                    {
                        "FSTATE",
                        1,



                        Package()
                        {
                            "ENTER",





                            Package() { "CLOCK", Package() { "gpu_cc_gx_gfx3d_clk",    2   }},
                            Package() { "CLOCK", Package() { "gcc_gpu_memnoc_gfx_clk", 2   }},
                            Package() { "CLOCK", Package() { "gpu_cc_cx_gmu_clk",      2   }},
                            Package() { "CLOCK", Package() { "gpu_cc_cxo_clk",         2   }},
                            Package() { "PSTATE_ADJUST", Package() { 1, 2 }},
                        },
                    },








                    Package()
                    {
                        "FSTATE",
                        2,



                        Package()
                        {
                            "ENTER",




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_GFX3D",       "ICBID_SLAVE_EBI1",                0,          0 }},





                            Package() { "CLOCK", Package() { "gpu_cc_gx_gfx3d_clk",    2   }},
                            Package() { "CLOCK", Package() { "gcc_gpu_memnoc_gfx_clk", 2   }},
                            Package() { "CLOCK", Package() { "gpu_cc_cx_gmu_clk",      2   }},
                            Package() { "CLOCK", Package() { "gpu_cc_cxo_clk",         2   }},
                            Package() { "PSTATE_ADJUST", Package() { 1, 2 }},
                        },
                    },








                    Package() { "INIT_FSTATE", 1 },
                    Package() { "PRELOAD_FSTATE", 1 },
                    Package() { "ABANDON_FSTATE", 1 },





                    Package()
                    {
                        "PSTATE_SET",
                        0,









                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,
                            Package() { "PSTATE_ADJUST", Package() { 1, 2 }},

                            Package()
                            {
                                "DELAY",
                                Package()
                                {
                                    1,
                                }
                            },
                            Package() { "PSTATE_ADJUST", Package() { 1, 1 }},
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        1,









                        Package()
                        {
                            "PSTATE",
                            0,
                        },






                        Package() { "PSTATE",   1,
                                                   Package() { "FOOTSWITCH", Package() { "cx_gdsc",           1    }},
                        },
                        Package() { "PSTATE",   2,
                                                   Package() { "FOOTSWITCH", Package() { "cx_gdsc",           2    }},
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        2,





                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,
                        },








                        Package() { "PRELOAD_PSTATE", 1 },
                        Package() { "PREPARE_PSTATE", 1 },
                        Package() { "ABANDON_PSTATE", 1 },
                    },
                },
            },
        })

        Return (GPCC)
    }





    Method (G2MD)
    {
        Name (GPCC, Package()
        {
            Package()
            {
                "DEVICE",
                "\\_SB.GPU0",

                Package()
                {
                    "COMPONENT",
                    2,









                    Package()
                    {
                        "FSTATE",
                        0,
                    },









                    Package()
                    {
                        "FSTATE",
                        1,



                        Package()
                        {
                            "ENTER",

                            Package() { "PSTATE_SAVE" },
                            Package() { "PSTATE_ADJUST", Package() { 2, 12 }},
                            Package() { "PSTATE_ADJUST", Package() { 3, 49 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        2   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},
                        },



                        Package()
                        {
                            "EXIT",




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},

                            Package() { "PSTATE_RESTORE" },
                        },
                    },









                    Package()
                    {
                        "FSTATE",
                        2,



                        Package()
                        {
                            "ENTER",

                            Package() { "PSTATE_SAVE" },
                            Package() { "PSTATE_ADJUST", Package() { 2, 12 }},
                            Package() { "PSTATE_ADJUST", Package() { 3, 49 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        2   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    2    }},





                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       2   }},
                        },



                        Package()
                        {
                            "EXIT",





                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      1   }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    1    }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},





                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},

                            Package() { "PSTATE_RESTORE" },
                        },
                    },








                    Package() { "INIT_FSTATE", 0 },
                    Package() { "PRELOAD_FSTATE", 2 },
                    Package() { "ABANDON_FSTATE", 2 },





                    Package()
                    {
                        "PSTATE_SET",
                        0,









                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        1,





                        Package()
                        {
                            "PSTATE",
                            0,





                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      1   }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    1    }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    2    }},





                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       2   }},
                        },
                    },













                    Package()
                    {
                        "PSTATE_SET",
                        2,





                        Package()
                        {
                            "PSTATE",
                            0,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       430000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  298000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            1,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       412500000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  298000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            2,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       344000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            3,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       300000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            4,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       275000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            5,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       200000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            6,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       171428571,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            7,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       165000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            8,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       150000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            9,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       100000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            10,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,        85710000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            11,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,        19200000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            12,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,               0,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 8 },
                        Package() { "PREPARE_PSTATE", 8 },
                        Package() { "ABANDON_PSTATE", 8 },
                    },













                    Package()
                    {
                        "PSTATE_SET",
                        3,








                        Package() { "PSTATE",   0,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       13326000000, 13326000000 }},
                        },
                        Package() { "PSTATE",   1,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       12926000000, 12926000000 }},
                        },
                        Package() { "PSTATE",   2,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       12526000000, 12526000000 }},
                        },
                        Package() { "PSTATE",   3,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       12126000000, 12126000000 }},
                        },
                        Package() { "PSTATE",   4,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       11726000000, 11726000000 }},
                        },
                        Package() { "PSTATE",   5,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       11326000000, 11326000000 }},
                        },
                        Package() { "PSTATE",   6,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       10926000000, 10926000000 }},
                        },
                        Package() { "PSTATE",   7,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       10526000000, 10526000000 }},
                        },








                        Package() { "PSTATE",   8,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       10126000000, 10126000000 }},
                        },
                        Package() { "PSTATE",   9,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       9726000000, 9726000000 }},
                        },
                        Package() { "PSTATE",  10,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       9326000000, 9326000000 }},
                        },
                        Package() { "PSTATE",  11,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       8926000000, 8926000000 }},
                        },
                        Package() { "PSTATE",  12,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       8526000000, 8526000000 }},
                        },
                        Package() { "PSTATE",  13,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       8126000000, 8126000000 }},
                        },
                        Package() { "PSTATE",  14,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       7726000000, 7726000000 }},
                        },
                        Package() { "PSTATE",  15,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       7326000000, 7326000000 }},
                        },
                        Package() { "PSTATE",  16,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       6926000000, 6926000000 }},
                        },
                        Package() { "PSTATE",  17,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       6526000000, 6526000000 }},
                        },
                        Package() { "PSTATE",  18,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       6126000000, 6126000000 }},
                        },
                        Package() { "PSTATE",  19,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       5726000000, 5726000000 }},
                        },








                        Package() { "PSTATE",  20,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       5326000000, 5326000000 }},
                        },
                        Package() { "PSTATE",  21,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       4926000000, 4926000000 }},
                        },
                        Package() { "PSTATE",  22,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       4526000000, 4526000000 }},
                        },
                        Package() { "PSTATE",  23,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       4126000000, 4126000000 }},
                        },
                        Package() { "PSTATE",  24,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       3726000000, 3726000000 }},
                        },
                        Package() { "PSTATE",  25,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       3326000000, 3326000000 }},
                        },
                        Package() { "PSTATE",  26,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       2926000000, 2926000000 }},
                        },
                        Package() { "PSTATE",  27,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       2526000000, 2526000000 }},
                        },
                        Package() { "PSTATE",  28,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       2400000000, 2400000000 }},
                        },
                        Package() { "PSTATE",  29,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       2300000000, 2300000000 }},
                        },
                        Package() { "PSTATE",  30,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       2200000000, 2200000000 }},
                        },
                        Package() { "PSTATE",  31,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       2100000000, 2100000000 }},
                        },
                        Package() { "PSTATE",  32,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       2000000000, 2000000000 }},
                        },
                        Package() { "PSTATE",  33,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       1900000000, 1900000000 }},
                        },
                        Package() { "PSTATE",  34,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       1800000000, 1800000000 }},
                        },
                        Package() { "PSTATE",  35,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       1700000000, 1700000000 }},
                        },
                        Package() { "PSTATE",  36,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       1600000000, 1600000000 }},
                        },
                        Package() { "PSTATE",  37,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       1500000000, 1500000000 }},
                        },
                        Package() { "PSTATE",  38,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       1400000000, 1400000000 }},
                        },
                        Package() { "PSTATE",  39,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       1300000000, 1300000000 }},
                        },
                        Package() { "PSTATE",  40,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       1200000000, 1200000000 }},
                        },
                        Package() { "PSTATE",  41,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       1100000000, 1100000000 }},
                        },
                        Package() { "PSTATE",  42,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",       1000000000, 1000000000 }},
                        },
                        Package() { "PSTATE",  43,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",        900000000,  900000000 }},
                        },
                        Package() { "PSTATE",  44,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",        800000000,  800000000 }},
                        },
                        Package() { "PSTATE",  45,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",        700000000,  700000000 }},
                        },
                        Package() { "PSTATE",  46,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",        600000000,  600000000 }},
                        },
                        Package() { "PSTATE",  47,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",        500000000,  500000000 }},
                        },
                        Package() { "PSTATE",  48,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",        400000000,  400000000 }},
                        },
                        Package() { "PSTATE",  49,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",        "ICBID_SLAVE_EBI1",                0,          0 }},
                        },
                    },
                },
            },
        })

        Return (GPCC)
    }





    Method (G3MD)
    {
        Name (GPCC, Package()
        {
            Package()
            {
                "DEVICE",
                "\\_SB.GPU0",

                Package()
                {
                    "COMPONENT",
                    3,









                    Package()
                    {
                        "FSTATE",
                        0,
                    },










                    Package()
                    {
                        "FSTATE",
                        1,



                        Package()
                        {
                            "ENTER",

                            Package() { "PSTATE_SAVE" },
                            Package() { "PSTATE_ADJUST", Package() { 2, 7 }},
                            Package() { "PSTATE_ADJUST", Package() { 3, 49 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        2   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},
                        },



                        Package()
                        {
                            "EXIT",




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",        1   }},

                            Package() { "PSTATE_RESTORE" },
                            Package() { "PSTATE_ADJUST", Package() { 2, 4 }},
                        },
                    },










                    Package()
                    {
                        "FSTATE",
                        2,



                        Package()
                        {
                            "ENTER",

                            Package() { "PSTATE_SAVE" },
                            Package() { "PSTATE_ADJUST", Package() { 2, 7 }},
                            Package() { "PSTATE_ADJUST", Package() { 3, 49 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        2   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    2    }},





                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       2   }},
                        },



                        Package()
                        {
                            "EXIT",





                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      1   }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    1    }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",        1   }},

                            Package() { "PSTATE_RESTORE" },
                            Package() { "PSTATE_ADJUST", Package() { 2, 4 }},
                        },
                    },








                    Package() { "INIT_FSTATE", 0 },
                    Package() { "PRELOAD_FSTATE", 2 },
                    Package() { "ABANDON_FSTATE", 2 },





                    Package()
                    {
                        "PSTATE_SET",
                        0,









                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        1,





                        Package()
                        {
                            "PSTATE",
                            0,





                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      1   }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    1    }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    2    }},





                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       2   }},
                        },
                    },














                    Package()
                    {
                        "PSTATE_SET",
                        2,





                        Package()
                        {
                            "PSTATE",
                            0,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",  3,       430000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  298000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            1,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",  3,       412500000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  298000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            2,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",  3,       344000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            3,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",  3,       300000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            4,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",  3,       171428571,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            5,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",  3,       165000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            6,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",  3,        19200000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            7,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_rot_clk",  3,               0,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 5 },
                        Package() { "PREPARE_PSTATE", 5 },
                        Package() { "ABANDON_PSTATE", 5 },
                    },













                    Package()
                    {
                        "PSTATE_SET",
                        3,








                        Package() { "PSTATE",   0,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       13326000000, 13326000000 }},
                        },
                        Package() { "PSTATE",   1,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       12926000000, 12926000000 }},
                        },
                        Package() { "PSTATE",   2,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       12526000000, 12526000000 }},
                        },
                        Package() { "PSTATE",   3,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       12126000000, 12126000000 }},
                        },
                        Package() { "PSTATE",   4,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       11726000000, 11726000000 }},
                        },
                        Package() { "PSTATE",   5,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       11326000000, 11326000000 }},
                        },
                        Package() { "PSTATE",   6,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       10926000000, 10926000000 }},
                        },
                        Package() { "PSTATE",   7,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       10526000000, 10526000000 }},
                        },








                        Package() { "PSTATE",   8,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       10126000000, 10126000000 }},
                        },
                        Package() { "PSTATE",   9,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       9726000000, 9726000000 }},
                        },
                        Package() { "PSTATE",  10,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       9326000000, 9326000000 }},
                        },
                        Package() { "PSTATE",  11,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       8926000000, 8926000000 }},
                        },
                        Package() { "PSTATE",  12,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       8526000000, 8526000000 }},
                        },
                        Package() { "PSTATE",  13,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       8126000000, 8126000000 }},
                        },
                        Package() { "PSTATE",  14,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       7726000000, 7726000000 }},
                        },
                        Package() { "PSTATE",  15,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       7326000000, 7326000000 }},
                        },
                        Package() { "PSTATE",  16,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       6926000000, 6926000000 }},
                        },
                        Package() { "PSTATE",  17,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       6526000000, 6526000000 }},
                        },
                        Package() { "PSTATE",  18,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       6126000000, 6126000000 }},
                        },
                        Package() { "PSTATE",  19,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       5726000000, 5726000000 }},
                        },








                        Package() { "PSTATE",  20,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       5326000000, 5326000000 }},
                        },
                        Package() { "PSTATE",  21,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       4926000000, 4926000000 }},
                        },
                        Package() { "PSTATE",  22,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       4526000000, 4526000000 }},
                        },
                        Package() { "PSTATE",  23,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       4126000000, 4126000000 }},
                        },
                        Package() { "PSTATE",  24,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       3726000000, 3726000000 }},
                        },
                        Package() { "PSTATE",  25,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       3326000000, 3326000000 }},
                        },
                        Package() { "PSTATE",  26,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       2926000000, 2926000000 }},
                        },
                        Package() { "PSTATE",  27,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       2526000000, 2526000000 }},
                        },
                        Package() { "PSTATE",  28,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       2400000000, 2400000000 }},
                        },
                        Package() { "PSTATE",  29,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       2300000000, 2300000000 }},
                        },
                        Package() { "PSTATE",  30,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       2200000000, 2200000000 }},
                        },
                        Package() { "PSTATE",  31,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       2100000000, 2100000000 }},
                        },
                        Package() { "PSTATE",  32,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       2000000000, 2000000000 }},
                        },
                        Package() { "PSTATE",  33,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       1900000000, 1900000000 }},
                        },
                        Package() { "PSTATE",  34,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       1800000000, 1800000000 }},
                        },
                        Package() { "PSTATE",  35,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       1700000000, 1700000000 }},
                        },
                        Package() { "PSTATE",  36,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       1600000000, 1600000000 }},
                        },
                        Package() { "PSTATE",  37,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       1500000000, 1500000000 }},
                        },
                        Package() { "PSTATE",  38,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       1400000000, 1400000000 }},
                        },
                        Package() { "PSTATE",  39,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       1300000000, 1300000000 }},
                        },
                        Package() { "PSTATE",  40,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       1200000000, 1200000000 }},
                        },
                        Package() { "PSTATE",  41,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       1100000000, 1100000000 }},
                        },
                        Package() { "PSTATE",  42,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",       1000000000, 1000000000 }},
                        },
                        Package() { "PSTATE",  43,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",        900000000,  900000000 }},
                        },
                        Package() { "PSTATE",  44,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",        800000000,  800000000 }},
                        },
                        Package() { "PSTATE",  45,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",        700000000,  700000000 }},
                        },
                        Package() { "PSTATE",  46,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",        600000000,  600000000 }},
                        },
                        Package() { "PSTATE",  47,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",        500000000,  500000000 }},
                        },
                        Package() { "PSTATE",  48,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",        400000000,  400000000 }},
                        },
                        Package() { "PSTATE",  49,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP1",        "ICBID_SLAVE_EBI1",                0,          0 }},
                        },
                    },
                },
            },
        })

        Return (GPCC)
    }





    Method (G4MD)
    {
        Name (GPCC, Package()
        {
            Package()
            {
                "DEVICE",
                "\\_SB.GPU0",

                Package()
                {
                    "COMPONENT",
                    4,











                    Package()
                    {
                        "FSTATE",
                        0,
                    },











                    Package()
                    {
                        "FSTATE",
                        1,



                        Package()
                        {
                            "ENTER",





                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",    2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",    2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk",  2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",           2   }},
                        },



                        Package()
                        {
                            "EXIT",





                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",           1   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",      1   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk",  1   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",    1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",    1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   1   }},
                        },
                    },













                    Package()
                    {
                        "FSTATE",
                        2,



                        Package()
                        {
                            "ENTER",

                            Package() { "PSTATE_SAVE" },
                            Package() { "PSTATE_ADJUST", Package() { 2, 6 }},
                            Package() { "PSTATE_ADJUST", Package() { 3, 110 }},





                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",    2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",    2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk",  2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",      2   }},






                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      4    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      2    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      4    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      2    }},
                            Package() { "FOOTSWITCH", Package() { "venus_gdsc",        2    }},





                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",     2   }},
                            Package() { "CLOCK", Package() { "gcc_video_axi_clk",     2   }},
                            Package() { "CLOCK", Package() { "gcc_video_xo_clk",      2   }},
                        },



                        Package()
                        {
                            "EXIT",





                            Package() { "CLOCK", Package() { "gcc_video_xo_clk",      1   }},
                            Package() { "CLOCK", Package() { "gcc_video_axi_clk",     1   }},
                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",     1   }},






                            Package() { "FOOTSWITCH", Package() { "venus_gdsc",        1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      3    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      3    }},
                            Package() { "PSTATE_ADJUST", Package() { 0, 0 }},





                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",      1   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk",  1   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",    1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",    1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   1   }},







                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   9,        18   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   9,        18   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 9,        18   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   9,        20   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   9,        20   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 9,        20   }},

                            Package() { "PSTATE_RESTORE" },
                        },
                    },








                    Package() { "INIT_FSTATE", 0 },
                    Package() { "PRELOAD_FSTATE", 2 },
                    Package() { "ABANDON_FSTATE", 2 },





                    Package()
                    {
                        "PSTATE_SET",
                        0,









                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,





                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",  10   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",   10   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",  10   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",   10   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk",10   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk", 10   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",     10   }},

                            Package()
                            {
                                "DELAY",
                                Package()
                                {
                                    1,
                                }
                            },





                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",     11   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk", 11   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk",11   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",   11   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",  11   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",   11   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",  11   }},
                        },








                        Package() { "PRELOAD_PSTATE", 1 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 1 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        1,





                        Package()
                        {
                            "PSTATE",
                            0,





                            Package() { "CLOCK", Package() { "gcc_video_xo_clk",      1   }},
                            Package() { "CLOCK", Package() { "gcc_video_axi_clk",     1   }},
                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",     1   }},






                            Package() { "FOOTSWITCH", Package() { "venus_gdsc",        1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      3    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      3    }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,






                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      4    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      2    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      4    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      2    }},
                            Package() { "FOOTSWITCH", Package() { "venus_gdsc",        2    }},





                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",     2   }},
                            Package() { "CLOCK", Package() { "gcc_video_axi_clk",     2   }},
                            Package() { "CLOCK", Package() { "gcc_video_xo_clk",      2   }},
                        },








                        Package() { "PRELOAD_PSTATE", 1 },
                        Package() { "PREPARE_PSTATE", 1 },
                        Package() { "ABANDON_PSTATE", 1 },
                    },










                    Package()
                    {
                        "PSTATE_SET",
                        2,





                        Package()
                        {
                            "PSTATE",
                            0,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       533000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       533000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       533000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",   300000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       444000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       444000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       444000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",   300000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            2,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       380000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       380000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       380000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",   150000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            3,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       320000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       320000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       320000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",   150000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            4,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       200000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       200000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       200000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",    75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            5,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       100000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       100000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       100000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",    75000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            6,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,               0,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,               0,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,               0,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",           0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 4 },
                        Package() { "PREPARE_PSTATE", 4 },
                        Package() { "ABANDON_PSTATE", 4 },
                    },









                    Package()
                    {
                        "PSTATE_SET",
                        3,








                        Package() { "PSTATE",   0,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       22000000000, 22000000000 }},
                        },
                        Package() { "PSTATE",   1,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       21800000000, 21800000000 }},
                        },
                        Package() { "PSTATE",   2,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       21600000000, 21600000000 }},
                        },
                        Package() { "PSTATE",   3,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       21400000000, 21400000000 }},
                        },
                        Package() { "PSTATE",   4,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       21200000000, 21200000000 }},
                        },
                        Package() { "PSTATE",   5,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       21000000000, 21000000000 }},
                        },
                        Package() { "PSTATE",   6,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       20800000000, 20800000000 }},
                        },
                        Package() { "PSTATE",   7,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       20600000000, 20600000000 }},
                        },
                        Package() { "PSTATE",   8,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       20400000000, 20400000000 }},
                        },
                        Package() { "PSTATE",   9,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       20200000000, 20200000000 }},
                        },
                        Package() { "PSTATE",  10,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       20000000000, 20000000000 }},
                        },
                        Package() { "PSTATE",  11,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       19800000000, 19800000000 }},
                        },
                        Package() { "PSTATE",  12,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       19600000000, 19600000000 }},
                        },
                        Package() { "PSTATE",  13,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       19400000000, 19400000000 }},
                        },
                        Package() { "PSTATE",  14,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       19200000000, 19200000000 }},
                        },
                        Package() { "PSTATE",  15,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       19000000000, 19000000000 }},
                        },
                        Package() { "PSTATE",  16,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       18800000000, 18800000000 }},
                        },
                        Package() { "PSTATE",  17,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       18600000000, 18600000000 }},
                        },
                        Package() { "PSTATE",  18,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       18400000000, 18400000000 }},
                        },
                        Package() { "PSTATE",  19,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       18200000000, 18200000000 }},
                        },
                        Package() { "PSTATE",  20,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       18000000000, 18000000000 }},
                        },
                        Package() { "PSTATE",  21,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       17800000000, 17800000000 }},
                        },
                        Package() { "PSTATE",  22,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       17600000000, 17600000000 }},
                        },
                        Package() { "PSTATE",  23,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       17400000000, 17400000000 }},
                        },
                        Package() { "PSTATE",  24,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       17200000000, 17200000000 }},
                        },
                        Package() { "PSTATE",  25,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       17000000000, 17000000000 }},
                        },
                        Package() { "PSTATE",  26,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       16800000000, 16800000000 }},
                        },
                        Package() { "PSTATE",  27,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       16600000000, 16600000000 }},
                        },
                        Package() { "PSTATE",  28,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       16400000000, 16400000000 }},
                        },
                        Package() { "PSTATE",  29,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       16200000000, 16200000000 }},
                        },
                        Package() { "PSTATE",  30,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       16000000000, 16000000000 }},
                        },
                        Package() { "PSTATE",  31,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       15800000000, 15800000000 }},
                        },
                        Package() { "PSTATE",  32,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       15600000000, 15600000000 }},
                        },
                        Package() { "PSTATE",  33,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       15400000000, 15400000000 }},
                        },
                        Package() { "PSTATE",  34,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       15200000000, 15200000000 }},
                        },
                        Package() { "PSTATE",  35,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       15000000000, 15000000000 }},
                        },
                        Package() { "PSTATE",  36,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       14800000000, 14800000000 }},
                        },
                        Package() { "PSTATE",  37,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       14600000000, 14600000000 }},
                        },
                        Package() { "PSTATE",  38,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       14400000000, 14400000000 }},
                        },
                        Package() { "PSTATE",  39,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       14200000000, 14200000000 }},
                        },
                        Package() { "PSTATE",  40,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       14000000000, 14000000000 }},
                        },
                        Package() { "PSTATE",  41,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       13800000000, 13800000000 }},
                        },
                        Package() { "PSTATE",  42,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       13600000000, 13600000000 }},
                        },
                        Package() { "PSTATE",  43,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       13400000000, 13400000000 }},
                        },
                        Package() { "PSTATE",  44,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       13200000000, 13200000000 }},
                        },
                        Package() { "PSTATE",  45,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       13000000000, 13000000000 }},
                        },
                        Package() { "PSTATE",  46,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       12800000000, 12800000000 }},
                        },
                        Package() { "PSTATE",  47,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       12600000000, 12600000000 }},
                        },
                        Package() { "PSTATE",  48,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       12400000000, 12400000000 }},
                        },
                        Package() { "PSTATE",  49,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       12200000000, 12200000000 }},
                        },
                        Package() { "PSTATE",  50,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       12000000000, 12000000000 }},
                        },
                        Package() { "PSTATE",  51,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       11800000000, 11800000000 }},
                        },
                        Package() { "PSTATE",  52,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       11600000000, 11600000000 }},
                        },
                        Package() { "PSTATE",  53,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       11400000000, 11400000000 }},
                        },
                        Package() { "PSTATE",  54,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       11200000000, 11200000000 }},
                        },
                        Package() { "PSTATE",  55,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       11000000000, 11000000000 }},
                        },
                        Package() { "PSTATE",  56,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       10800000000, 10800000000 }},
                        },
                        Package() { "PSTATE",  57,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       10600000000, 10600000000 }},
                        },
                        Package() { "PSTATE",  58,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       10400000000, 10400000000 }},
                        },
                        Package() { "PSTATE",  59,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       10200000000, 10200000000 }},
                        },
                        Package() { "PSTATE",  60,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       10000000000, 10000000000 }},
                        },
                        Package() { "PSTATE",  61,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       9800000000, 9800000000 }},
                        },
                        Package() { "PSTATE",  62,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       9600000000, 9600000000 }},
                        },
                        Package() { "PSTATE",  63,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       9400000000, 9400000000 }},
                        },
                        Package() { "PSTATE",  64,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       9200000000, 9200000000 }},
                        },
                        Package() { "PSTATE",  65,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       9000000000, 9000000000 }},
                        },
                        Package() { "PSTATE",  66,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       8800000000, 8800000000 }},
                        },
                        Package() { "PSTATE",  67,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       8600000000, 8600000000 }},
                        },
                        Package() { "PSTATE",  68,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       8400000000, 8400000000 }},
                        },
                        Package() { "PSTATE",  69,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       8200000000, 8200000000 }},
                        },
                        Package() { "PSTATE",  70,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       8000000000, 8000000000 }},
                        },
                        Package() { "PSTATE",  71,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       7800000000, 7800000000 }},
                        },
                        Package() { "PSTATE",  72,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       7600000000, 7600000000 }},
                        },
                        Package() { "PSTATE",  73,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       7400000000, 7400000000 }},
                        },
                        Package() { "PSTATE",  74,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       7200000000, 7200000000 }},
                        },
                        Package() { "PSTATE",  75,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       7000000000, 7000000000 }},
                        },
                        Package() { "PSTATE",  76,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       6800000000, 6800000000 }},
                        },
                        Package() { "PSTATE",  77,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       6600000000, 6600000000 }},
                        },
                        Package() { "PSTATE",  78,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       6400000000, 6400000000 }},
                        },
                        Package() { "PSTATE",  79,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       6200000000, 6200000000 }},
                        },
                        Package() { "PSTATE",  80,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       6000000000, 6000000000 }},
                        },
                        Package() { "PSTATE",  81,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       5800000000, 5800000000 }},
                        },
                        Package() { "PSTATE",  82,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       5600000000, 5600000000 }},
                        },
                        Package() { "PSTATE",  83,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       5400000000, 5400000000 }},
                        },
                        Package() { "PSTATE",  84,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       5200000000, 5200000000 }},
                        },
                        Package() { "PSTATE",  85,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       5000000000, 5000000000 }},
                        },
                        Package() { "PSTATE",  86,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       4800000000, 4800000000 }},
                        },
                        Package() { "PSTATE",  87,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       4600000000, 4600000000 }},
                        },
                        Package() { "PSTATE",  88,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       4400000000, 4400000000 }},
                        },
                        Package() { "PSTATE",  89,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       4200000000, 4200000000 }},
                        },
                        Package() { "PSTATE",  90,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       4000000000, 4000000000 }},
                        },
                        Package() { "PSTATE",  91,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       3800000000, 3800000000 }},
                        },
                        Package() { "PSTATE",  92,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       3600000000, 3600000000 }},
                        },
                        Package() { "PSTATE",  93,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       3400000000, 3400000000 }},
                        },
                        Package() { "PSTATE",  94,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       3200000000, 3200000000 }},
                        },
                        Package() { "PSTATE",  95,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       3000000000, 3000000000 }},
                        },
                        Package() { "PSTATE",  96,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       2800000000, 2800000000 }},
                        },
                        Package() { "PSTATE",  97,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       2600000000, 2600000000 }},
                        },
                        Package() { "PSTATE",  98,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       2400000000, 2400000000 }},
                        },
                        Package() { "PSTATE",  99,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       2200000000, 2200000000 }},
                        },
                        Package() { "PSTATE",  100,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       2000000000, 2000000000 }},
                        },
                        Package() { "PSTATE",  101,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       1800000000, 1800000000 }},
                        },
                        Package() { "PSTATE",  102,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       1600000000, 1600000000 }},
                        },
                        Package() { "PSTATE",  103,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       1400000000, 1400000000 }},
                        },
                        Package() { "PSTATE",  104,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       1200000000, 1200000000 }},
                        },
                        Package() { "PSTATE",  105,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",       1000000000, 1000000000 }},
                        },








                        Package() { "PSTATE",  106,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",        800000000,  800000000 }},
                        },
                        Package() { "PSTATE",  107,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",        600000000,  600000000 }},
                        },








                        Package() { "PSTATE",  108,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",        400000000,  400000000 }},
                        },
                        Package() { "PSTATE",  109,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",        200000000,  200000000 }},
                        },
                        Package() { "PSTATE",  110,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P0",    "ICBID_SLAVE_EBI1",                0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 108 },
                        Package() { "PREPARE_PSTATE", 108 },
                        Package() { "ABANDON_PSTATE", 108 },
                    },
                },
            },
        })

        Return (GPCC)
    }





    Method (G5MD)
    {
        Name (GPCC, Package()
        {
            Package()
            {
                "DEVICE",
                "\\_SB.GPU0",

                Package()
                {
                    "COMPONENT",
                    5,









                    Package()
                    {
                        "FSTATE",
                        0,
                    },








                    Package()
                    {
                        "FSTATE",
                        1,
                    },








                    Package() { "INIT_FSTATE", 0 },
                    Package() { "PRELOAD_FSTATE", 0 },
                    Package() { "ABANDON_FSTATE", 0 },





                    Package()
                    {
                        "PSTATE_SET",
                        0,









                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        1,





                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 1 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        2,





                        Package()
                        {
                            "PSTATE",
                            0,
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },
                },
            },
        })

        Return (GPCC)
    }





    Method (G6MD)
    {
        Name (GPCC, Package()
        {
            Package()
            {
                "DEVICE",
                "\\_SB.GPU0",

                Package()
                {
                    "COMPONENT",
                    6,











                    Package()
                    {
                        "FSTATE",
                        0,
                    },











                    Package()
                    {
                        "FSTATE",
                        1,



                        Package()
                        {
                            "ENTER",





                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",    2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",    2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk",  2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",           2   }},
                        },



                        Package()
                        {
                            "EXIT",





                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",           1   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",      1   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk",  1   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",    1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",    1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   1   }},
                        },
                    },












                    Package()
                    {
                        "FSTATE",
                        2,



                        Package()
                        {
                            "ENTER",

                            Package() { "PSTATE_SAVE" },
                            Package() { "PSTATE_ADJUST", Package() { 2, 6 }},
                            Package() { "PSTATE_ADJUST", Package() { 3, 110 }},





                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",    2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   2   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",    2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk",  2   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",      2   }},






                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      4    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      2    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      4    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      2    }},
                            Package() { "FOOTSWITCH", Package() { "venus_gdsc",        2    }},





                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",     2   }},
                            Package() { "CLOCK", Package() { "gcc_video_axi_clk",     2   }},
                            Package() { "CLOCK", Package() { "gcc_video_xo_clk",      2   }},
                        },



                        Package()
                        {
                            "EXIT",





                            Package() { "CLOCK", Package() { "gcc_video_xo_clk",      1   }},
                            Package() { "CLOCK", Package() { "gcc_video_axi_clk",     1   }},
                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",     1   }},






                            Package() { "FOOTSWITCH", Package() { "venus_gdsc",        1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      3    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      3    }},
                            Package() { "PSTATE_ADJUST", Package() { 0, 0 }},





                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",      1   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk",  1   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",    1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",    1   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   1   }},







                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   9,        18   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   9,        18   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 9,        18   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   9,        20   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   9,        20   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 9,        20   }},

                            Package() { "PSTATE_RESTORE" },
                        },
                    },








                    Package() { "INIT_FSTATE", 0 },
                    Package() { "PRELOAD_FSTATE", 2 },
                    Package() { "ABANDON_FSTATE", 2 },





                    Package()
                    {
                        "PSTATE_SET",
                        0,









                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,





                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",  10   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",   10   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",  10   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",   10   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk",10   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk", 10   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",     10   }},

                            Package()
                            {
                                "DELAY",
                                Package()
                                {
                                    1,
                                }
                            },





                            Package() { "CLOCK", Package() { "video_cc_venus_ahb_clk",     11   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_axi_clk", 11   }},
                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk",11   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_axi_clk",   11   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",  11   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_axi_clk",   11   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",  11   }},
                        },








                        Package() { "PRELOAD_PSTATE", 1 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 1 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        1,





                        Package()
                        {
                            "PSTATE",
                            0,





                            Package() { "CLOCK", Package() { "gcc_video_xo_clk",      1   }},
                            Package() { "CLOCK", Package() { "gcc_video_axi_clk",     1   }},
                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",     1   }},






                            Package() { "FOOTSWITCH", Package() { "venus_gdsc",        1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      3    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      1    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      3    }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,






                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      4    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec1_gdsc",      2    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      4    }},
                            Package() { "FOOTSWITCH", Package() { "vcodec0_gdsc",      2    }},
                            Package() { "FOOTSWITCH", Package() { "venus_gdsc",        2    }},





                            Package() { "CLOCK", Package() { "gcc_video_ahb_clk",     2   }},
                            Package() { "CLOCK", Package() { "gcc_video_axi_clk",     2   }},
                            Package() { "CLOCK", Package() { "gcc_video_xo_clk",      2   }},
                        },








                        Package() { "PRELOAD_PSTATE", 1 },
                        Package() { "PREPARE_PSTATE", 1 },
                        Package() { "ABANDON_PSTATE", 1 },
                    },










                    Package()
                    {
                        "PSTATE_SET",
                        2,





                        Package()
                        {
                            "PSTATE",
                            0,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       533000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       533000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       533000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",   300000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       444000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       444000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       444000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",   300000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            2,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       404000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       404000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       404000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",   150000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            3,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       330000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       330000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       330000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",   150000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            4,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       200000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       200000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       200000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",    75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            5,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,       100000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,       100000000,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,       100000000,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",    75000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            6,






                            Package() { "CLOCK", Package() { "video_cc_venus_ctl_core_clk", 3,               0,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec0_core_clk",   3,               0,       3   }},
                            Package() { "CLOCK", Package() { "video_cc_vcodec1_core_clk",   3,               0,       3   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_VENUS_CFG",           0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 4 },
                        Package() { "PREPARE_PSTATE", 4 },
                        Package() { "ABANDON_PSTATE", 4 },
                    },









                    Package()
                    {
                        "PSTATE_SET",
                        3,








                        Package() { "PSTATE",   0,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       22000000000,          0 }},
                        },
                        Package() { "PSTATE",   1,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       21800000000,          0 }},
                        },
                        Package() { "PSTATE",   2,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       21600000000,          0 }},
                        },
                        Package() { "PSTATE",   3,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       21400000000,          0 }},
                        },
                        Package() { "PSTATE",   4,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       21200000000,          0 }},
                        },
                        Package() { "PSTATE",   5,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       21000000000,          0 }},
                        },
                        Package() { "PSTATE",   6,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       20800000000,          0 }},
                        },
                        Package() { "PSTATE",   7,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       20600000000,          0 }},
                        },
                        Package() { "PSTATE",   8,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       20400000000,          0 }},
                        },
                        Package() { "PSTATE",   9,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       20200000000,          0 }},
                        },
                        Package() { "PSTATE",  10,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       20000000000,          0 }},
                        },
                        Package() { "PSTATE",  11,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       19800000000,          0 }},
                        },
                        Package() { "PSTATE",  12,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       19600000000,          0 }},
                        },
                        Package() { "PSTATE",  13,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       19400000000,          0 }},
                        },
                        Package() { "PSTATE",  14,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       19200000000,          0 }},
                        },
                        Package() { "PSTATE",  15,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       19000000000,          0 }},
                        },
                        Package() { "PSTATE",  16,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       18800000000,          0 }},
                        },
                        Package() { "PSTATE",  17,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       18600000000,          0 }},
                        },
                        Package() { "PSTATE",  18,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       18400000000,          0 }},
                        },
                        Package() { "PSTATE",  19,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       18200000000,          0 }},
                        },
                        Package() { "PSTATE",  20,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       18000000000,          0 }},
                        },
                        Package() { "PSTATE",  21,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       17800000000,          0 }},
                        },
                        Package() { "PSTATE",  22,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       17600000000,          0 }},
                        },
                        Package() { "PSTATE",  23,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       17400000000,          0 }},
                        },
                        Package() { "PSTATE",  24,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       17200000000,          0 }},
                        },
                        Package() { "PSTATE",  25,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       17000000000,          0 }},
                        },
                        Package() { "PSTATE",  26,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       16800000000,          0 }},
                        },
                        Package() { "PSTATE",  27,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       16600000000,          0 }},
                        },
                        Package() { "PSTATE",  28,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       16400000000,          0 }},
                        },
                        Package() { "PSTATE",  29,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       16200000000,          0 }},
                        },
                        Package() { "PSTATE",  30,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       16000000000,          0 }},
                        },
                        Package() { "PSTATE",  31,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       15800000000,          0 }},
                        },
                        Package() { "PSTATE",  32,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       15600000000,          0 }},
                        },
                        Package() { "PSTATE",  33,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       15400000000,          0 }},
                        },
                        Package() { "PSTATE",  34,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       15200000000,          0 }},
                        },
                        Package() { "PSTATE",  35,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       15000000000,          0 }},
                        },
                        Package() { "PSTATE",  36,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       14800000000,          0 }},
                        },
                        Package() { "PSTATE",  37,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       14600000000,          0 }},
                        },
                        Package() { "PSTATE",  38,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       14400000000,          0 }},
                        },
                        Package() { "PSTATE",  39,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       14200000000,          0 }},
                        },
                        Package() { "PSTATE",  40,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       14000000000,          0 }},
                        },
                        Package() { "PSTATE",  41,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       13800000000,          0 }},
                        },
                        Package() { "PSTATE",  42,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       13600000000,          0 }},
                        },
                        Package() { "PSTATE",  43,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       13400000000,          0 }},
                        },
                        Package() { "PSTATE",  44,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       13200000000,          0 }},
                        },
                        Package() { "PSTATE",  45,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       13000000000,          0 }},
                        },
                        Package() { "PSTATE",  46,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       12800000000,          0 }},
                        },
                        Package() { "PSTATE",  47,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       12600000000,          0 }},
                        },
                        Package() { "PSTATE",  48,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       12400000000,          0 }},
                        },
                        Package() { "PSTATE",  49,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       12200000000,          0 }},
                        },
                        Package() { "PSTATE",  50,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       12000000000,          0 }},
                        },
                        Package() { "PSTATE",  51,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       11800000000,          0 }},
                        },
                        Package() { "PSTATE",  52,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       11600000000,          0 }},
                        },
                        Package() { "PSTATE",  53,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       11400000000,          0 }},
                        },
                        Package() { "PSTATE",  54,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       11200000000,          0 }},
                        },
                        Package() { "PSTATE",  55,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       11000000000,          0 }},
                        },
                        Package() { "PSTATE",  56,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       10800000000,          0 }},
                        },
                        Package() { "PSTATE",  57,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       10600000000,          0 }},
                        },
                        Package() { "PSTATE",  58,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       10400000000,          0 }},
                        },
                        Package() { "PSTATE",  59,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       10200000000,          0 }},
                        },
                        Package() { "PSTATE",  60,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       10000000000,          0 }},
                        },
                        Package() { "PSTATE",  61,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       9800000000,          0 }},
                        },
                        Package() { "PSTATE",  62,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       9600000000,          0 }},
                        },
                        Package() { "PSTATE",  63,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       9400000000,          0 }},
                        },
                        Package() { "PSTATE",  64,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       9200000000,          0 }},
                        },
                        Package() { "PSTATE",  65,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       9000000000,          0 }},
                        },
                        Package() { "PSTATE",  66,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       8800000000,          0 }},
                        },
                        Package() { "PSTATE",  67,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       8600000000,          0 }},
                        },
                        Package() { "PSTATE",  68,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       8400000000,          0 }},
                        },
                        Package() { "PSTATE",  69,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       8200000000,          0 }},
                        },
                        Package() { "PSTATE",  70,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       8000000000,          0 }},
                        },
                        Package() { "PSTATE",  71,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       7800000000,          0 }},
                        },
                        Package() { "PSTATE",  72,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       7600000000,          0 }},
                        },
                        Package() { "PSTATE",  73,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       7400000000,          0 }},
                        },
                        Package() { "PSTATE",  74,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       7200000000,          0 }},
                        },
                        Package() { "PSTATE",  75,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       7000000000,          0 }},
                        },
                        Package() { "PSTATE",  76,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       6800000000,          0 }},
                        },
                        Package() { "PSTATE",  77,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       6600000000,          0 }},
                        },
                        Package() { "PSTATE",  78,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       6400000000,          0 }},
                        },
                        Package() { "PSTATE",  79,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       6200000000,          0 }},
                        },
                        Package() { "PSTATE",  80,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       6000000000,          0 }},
                        },
                        Package() { "PSTATE",  81,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       5800000000,          0 }},
                        },
                        Package() { "PSTATE",  82,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       5600000000,          0 }},
                        },
                        Package() { "PSTATE",  83,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       5400000000,          0 }},
                        },
                        Package() { "PSTATE",  84,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       5200000000,          0 }},
                        },
                        Package() { "PSTATE",  85,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       5000000000,          0 }},
                        },
                        Package() { "PSTATE",  86,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       4800000000,          0 }},
                        },
                        Package() { "PSTATE",  87,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       4600000000,          0 }},
                        },
                        Package() { "PSTATE",  88,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       4400000000,          0 }},
                        },
                        Package() { "PSTATE",  89,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       4200000000,          0 }},
                        },
                        Package() { "PSTATE",  90,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       4000000000,          0 }},
                        },
                        Package() { "PSTATE",  91,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       3800000000,          0 }},
                        },
                        Package() { "PSTATE",  92,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       3600000000,          0 }},
                        },
                        Package() { "PSTATE",  93,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       3400000000,          0 }},
                        },
                        Package() { "PSTATE",  94,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       3200000000,          0 }},
                        },
                        Package() { "PSTATE",  95,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       3000000000,          0 }},
                        },
                        Package() { "PSTATE",  96,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       2800000000,          0 }},
                        },
                        Package() { "PSTATE",  97,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       2600000000,          0 }},
                        },
                        Package() { "PSTATE",  98,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       2400000000,          0 }},
                        },
                        Package() { "PSTATE",  99,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       2200000000,          0 }},
                        },
                        Package() { "PSTATE",  100,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       2000000000,          0 }},
                        },
                        Package() { "PSTATE",  101,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       1800000000,          0 }},
                        },
                        Package() { "PSTATE",  102,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       1600000000,          0 }},
                        },
                        Package() { "PSTATE",  103,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       1400000000,          0 }},
                        },
                        Package() { "PSTATE",  104,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       1200000000,          0 }},
                        },
                        Package() { "PSTATE",  105,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",       1000000000,          0 }},
                        },








                        Package() { "PSTATE",  106,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",        800000000,          0 }},
                        },
                        Package() { "PSTATE",  107,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",        600000000,          0 }},
                        },








                        Package() { "PSTATE",  108,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",        400000000,          0 }},
                        },
                        Package() { "PSTATE",  109,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",        200000000,          0 }},
                        },
                        Package() { "PSTATE",  110,
                                                    Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_VIDEO_P1",    "ICBID_SLAVE_EBI1",                0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 108 },
                        Package() { "PREPARE_PSTATE", 108 },
                        Package() { "ABANDON_PSTATE", 108 },
                    },
                },
            },
        })

        Return (GPCC)
    }





    Method (G7MD)
    {
        Name (GPCC, Package()
        {
            Package()
            {
                "DEVICE",
                "\\_SB.GPU0",

                Package()
                {
                    "COMPONENT",
                    7,








                    Package()
                    {
                        "FSTATE",
                        0,
                    },




















                    Package()
                    {
                        "FSTATE",
                        1,



                        Package()
                        {
                            "ENTER",

                            Package() { "PSTATE_SAVE" },
                            Package() { "PSTATE_ADJUST", Package() { 3, 12 }},
                            Package() { "PSTATE_ADJUST", Package() { 4, 42 }},
                            Package() { "PSTATE_ADJUST", Package() { 2, 4 }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    2    }},





                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       2   }},
                            Package() { "CLOCK", Package() { "phy_refgen_south",      2   }},

                            Package()
                            {
                                "NPARESOURCE",
                                Package()
                                {
                                      0,
                                    "/arc/client/rail_cx",
                                     64,
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO1_A",
                                    1,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                }
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO14_A",
                                    1,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                }
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO19_A",
                                    1,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                }
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO26_A",
                                    1,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                }
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_SMPS6_A",
                                    2,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                }
                            },

                            Package()
                            {
                                "TLMMGPIO",
                                Package()
                                {
                                    11,
                                    1,
                                    0,
                                    0,
                                    1,
                                    0,
                                }
                            }
                        },



                        Package()
                        {
                            "EXIT",





                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      1   }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    1    }},





                            Package() { "CLOCK", Package() { "phy_refgen_south",      1   }},

                            Package()
                            {
                                "NPARESOURCE",
                                Package()
                                {
                                      1,
                                    "/arc/client/rail_cx",
                                     64,
                                },
                            },

                            Package() { "PSTATE_RESTORE" },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO1_A",
                                    1,
                                    880000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                }
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO14_A",
                                    1,
                                    1880000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                }
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO19_A",
                                    1,
                                    3000000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                }
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO26_A",
                                    1,
                                    1200000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                }
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_SMPS6_A",
                                    2,
                                    800000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                }
                            },

                            Package()
                            {
                                "TLMMGPIO",
                                Package()
                                {
                                    11,
                                    1,
                                    1,
                                    0,
                                    0,
                                    0,
                                }
                            }
                        },
                    },








                    Package() { "INIT_FSTATE", 1 },
                    Package() { "PRELOAD_FSTATE", 0 },
                    Package() { "ABANDON_FSTATE", 0 },





                    Package()
                    {
                        "PSTATE_SET",
                        0,









                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        1,





                        Package()
                        {
                            "PSTATE",
                            0,





                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      1   }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    1    }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    2    }},





                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       2   }},
                        },
                    },







                    Package()
                    {
                        "PSTATE_SET",
                        2,









                        Package()
                        {
                            "PSTATE",
                            0,




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc0_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_intf_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc1_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_intf_clk", 1   }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},





                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc0_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_intf_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc1_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_intf_clk", 1   }},
                        },





                        Package()
                        {
                            "PSTATE",
                            2,




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},






                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc0_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_intf_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk1_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc1_clk",       2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_intf_clk", 2   }},
                        },





                        Package()
                        {
                            "PSTATE",
                            3,




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},






                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk0_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc0_clk",       2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_intf_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc1_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_intf_clk", 1   }},
                        },





                        Package()
                        {
                            "PSTATE",
                            4,





                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",   2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk0_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc0_clk",       2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte0_intf_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_pclk1_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_esc1_clk",       2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_byte1_intf_clk", 2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",        2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_axi_clk",            2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",        2   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },














                    Package()
                    {
                        "PSTATE_SET",
                        3,





                        Package()
                        {
                            "PSTATE",
                            0,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       430000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  298000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            1,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       412500000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  298000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            2,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       344000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            3,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       300000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            4,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       275000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            5,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       200000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            6,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       171428571,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            7,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       165000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            8,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       150000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            9,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       100000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            10,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,        85710000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            11,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,        19200000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            12,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,               0,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 4 },
                        Package() { "PREPARE_PSTATE", 4 },
                        Package() { "ABANDON_PSTATE", 4 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        4,








                        Package() { "PSTATE",   0,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 13326000000, 13326000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 13326000000 }},
                        },
                        Package() { "PSTATE",   1,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 12926000000, 12926000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 12926000000 }},
                        },
                        Package() { "PSTATE",   2,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 12526000000, 12526000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 12526000000 }},
                        },
                        Package() { "PSTATE",   3,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 12126000000, 12126000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 12126000000 }},
                        },
                        Package() { "PSTATE",   4,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 11726000000, 11726000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 11726000000 }},
                        },
                        Package() { "PSTATE",   5,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 11326000000, 11326000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 11326000000 }},
                        },
                        Package() { "PSTATE",   6,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 10926000000, 10926000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 10926000000 }},
                        },
                        Package() { "PSTATE",   7,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 10526000000, 10526000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 10526000000 }},
                        },








                        Package() { "PSTATE",   8,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 10126000000, 10126000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 10126000000 }},
                        },
                        Package() { "PSTATE",   9,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 9600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 9600000000 }},
                        },
                        Package() { "PSTATE",  10,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 9200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 9200000000 }},
                        },
                        Package() { "PSTATE",  11,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 8800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 8800000000 }},
                        },
                        Package() { "PSTATE",  12,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 8400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 8400000000 }},
                        },
                        Package() { "PSTATE",  13,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 8000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 8000000000 }},
                        },
                        Package() { "PSTATE",  14,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 7600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 7600000000 }},
                        },
                        Package() { "PSTATE",  15,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 7200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 7200000000 }},
                        },
                        Package() { "PSTATE",  16,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 6800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 6800000000 }},
                        },
                        Package() { "PSTATE",  17,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 6400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 6400000000 }},
                        },
                        Package() { "PSTATE",  18,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 6000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 6000000000 }},
                        },
                        Package() { "PSTATE",  19,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 5600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 5600000000 }},
                        },








                        Package() { "PSTATE",  20,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 5200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 5200000000 }},
                        },
                        Package() { "PSTATE",  21,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 4800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 4800000000 }},
                        },
                        Package() { "PSTATE",  22,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 4400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 4400000000 }},
                        },
                        Package() { "PSTATE",  23,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 4000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 4000000000 }},
                        },
                        Package() { "PSTATE",  24,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 3600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 3600000000 }},
                        },
                        Package() { "PSTATE",  25,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 3200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 3200000000 }},
                        },
                        Package() { "PSTATE",  26,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 8400000000, 2800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 2800000000 }},
                        },
                        Package() { "PSTATE",  27,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 7200000000, 2400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 2400000000 }},
                        },
                        Package() { "PSTATE",  28,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 6000000000, 2000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 2000000000 }},
                        },
                        Package() { "PSTATE",  29,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1600000000 }},
                        },
                        Package() { "PSTATE",  30,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1500000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1500000000 }},
                        },
                        Package() { "PSTATE",  31,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1400000000 }},
                        },
                        Package() { "PSTATE",  32,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1300000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1300000000 }},
                        },
                        Package() { "PSTATE",  33,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1200000000 }},
                        },
                        Package() { "PSTATE",  34,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1100000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1100000000 }},
                        },
                        Package() { "PSTATE",  35,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1000000000 }},
                        },
                        Package() { "PSTATE",  36,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  900000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  900000000 }},
                        },
                        Package() { "PSTATE",  37,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  800000000 }},
                        },
                        Package() { "PSTATE",  38,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  700000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  700000000 }},
                        },
                        Package() { "PSTATE",  39,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  600000000 }},
                        },
                        Package() { "PSTATE",  40,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  500000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  500000000 }},
                        },
                        Package() { "PSTATE",  41,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  400000000 }},
                        },
                        Package() { "PSTATE",  42,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC",          0,          0 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",                     0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 28 },
                        Package() { "PREPARE_PSTATE", 28 },
                        Package() { "ABANDON_PSTATE", 28 },
                    },
                },
            },
        })

        Return (GPCC)
    }





    Method (G8MD)
    {
        Name (GPCC, Package()
        {
            Package()
            {
                "DEVICE",
                "\\_SB.GPU0",

                Package()
                {
                    "COMPONENT",
                    8,








                    Package()
                    {
                        "FSTATE",
                        0,
                    },



















                    Package()
                    {
                        "FSTATE",
                        1,



                        Package()
                        {
                            "ENTER",

                            Package()
                            {
                                "TLMMGPIO",
                                Package()
                                {
                                     38,
                                      1,
                                      0,
                                      0,
                                      0,
                                      0,
                                },
                            },

                            Package()
                            {
                                "TLMMGPIO",
                                Package()
                                {
                                    40,
                                    0,
                                    0,
                                    0,
                                    1,
                                    0,
                                }
                            },

                            Package()
                            {
                                "TLMMGPIO",
                                Package()
                                {
                                    27,
                                    0,
                                    0,
                                    0,
                                    1,
                                    0,
                                }
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO1_A",
                                    1,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO24_A",
                                    1,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO26_A",
                                    1,
                                    0,
                                    0,
                                    0,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },





                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",          2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",          2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",          2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",        2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",     2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk",   2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_dp_pixel_clk",     2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_dp_link_clk",      2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_dp_crypto_clk",    2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_dp_aux_clk",       2   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_dp_link_intf_clk", 2   }},
                            Package() { "CLOCK", Package() { "gcc_usb3_prim_clkref_en",       2   }},
                            Package() { "CLOCK", Package() { "gcc_usb_phy_cfg_ahb2phy_clk",   2   }},

                            Package() { "PSTATE_SAVE" },
                            Package() { "PSTATE_ADJUST", Package() { 2, 12 }},
                            Package() { "PSTATE_ADJUST", Package() { 3, 42 }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    2    }},





                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       2   }},
                        },



                        Package()
                        {
                            "EXIT",





                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      1   }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    1    }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},





                            Package() { "CLOCK", Package() { "gcc_usb_phy_cfg_ahb2phy_clk",   1   }},
                            Package() { "CLOCK", Package() { "gcc_usb3_prim_clkref_en",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_ahb_clk",          1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_axi_clk",          1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",          1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_vsync_clk",        1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_ahb_clk",     1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_rscc_vsync_clk",   1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_dp_pixel_clk",     1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_dp_link_clk",      1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_dp_crypto_clk",    1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_dp_aux_clk",       1   }},
                            Package() { "CLOCK", Package() { "disp_cc_mdss_dp_link_intf_clk", 1   }},

                            Package()
                            {
                                "TLMMGPIO",
                                Package()
                                {
                                     38,
                                      1,
                                      1,
                                      1,
                                      0,
                                      0,
                                },
                            },

                            Package()
                            {
                                "TLMMGPIO",
                                Package()
                                {
                                     40,
                                      0,
                                      0,
                                      1,
                                      0,
                                      0,
                                }
                            },

                            Package()
                            {
                                "TLMMGPIO",
                                Package()
                                {
                                     27,
                                      1,
                                      0,
                                      1,
                                      0,
                                      0,
                                }
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO26_A",
                                    1,
                                    1200000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO24_A",
                                    1,
                                    3075000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package()
                            {
                                "PMICVREGVOTE",
                                Package()
                                {
                                    "PPP_RESOURCE_ID_LDO1_A",
                                    1,
                                    880000,
                                    1,
                                    7,
                                    0,
                                    "HLOS_DRV",
                                    "REQUIRED",
                                },
                            },

                            Package() { "PSTATE_RESTORE" },
                        },
                    },








                    Package() { "INIT_FSTATE", 1 },
                    Package() { "PRELOAD_FSTATE", 0 },
                    Package() { "ABANDON_FSTATE", 0 },





                    Package()
                    {
                        "PSTATE_SET",
                        0,









                        Package()
                        {
                            "PSTATE",
                            0,
                        },





                        Package()
                        {
                            "PSTATE",
                            1,
                        },








                        Package() { "PRELOAD_PSTATE", 0 },
                        Package() { "PREPARE_PSTATE", 0 },
                        Package() { "ABANDON_PSTATE", 0 },
                    },




                    Package()
                    {
                        "PSTATE_SET",
                        1,





                        Package()
                        {
                            "PSTATE",
                            0,





                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       1   }},
                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      1   }},





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    1    }},
                        },





                        Package()
                        {
                            "PSTATE",
                            1,





                            Package() { "FOOTSWITCH", Package() { "mdss_core_gdsc",    2    }},





                            Package() { "CLOCK", Package() { "gcc_disp_ahb_clk",      2   }},
                            Package() { "CLOCK", Package() { "gcc_disp_xo_clk",       2   }},
                        },
                    },














                    Package()
                    {
                        "PSTATE_SET",
                        2,





                        Package()
                        {
                            "PSTATE",
                            0,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       430000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  298000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            1,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       412500000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  298000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            2,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       344000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            3,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       300000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            4,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       275000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            5,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       200000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",  148000000,          0 }},
                        },





                        Package()
                        {
                            "PSTATE",
                            6,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       171428571,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            7,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       165000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            8,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       150000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            9,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,       100000000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            10,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,        85710000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            11,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,        19200000,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",   75000000,          0 }},
                        },

                        Package()
                        {
                            "PSTATE",
                            12,






                            Package() { "CLOCK", Package() { "disp_cc_mdss_mdp_clk",  3,               0,       1   }},




                            Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_APPSS_PROC",  "ICBID_SLAVE_DISPLAY_CFG",          0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 4 },
                        Package() { "PREPARE_PSTATE", 4 },
                        Package() { "ABANDON_PSTATE", 4 },
                    },





























                    Package()
                    {
                        "PSTATE_SET",
                        3,








                        Package() { "PSTATE",   0,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 13326000000, 13326000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 13326000000 }},
                        },
                        Package() { "PSTATE",   1,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 12926000000, 12926000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 12926000000 }},
                        },
                        Package() { "PSTATE",   2,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 12526000000, 12526000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 12526000000 }},
                        },
                        Package() { "PSTATE",   3,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 12126000000, 12126000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 12126000000 }},
                        },
                        Package() { "PSTATE",   4,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 11726000000, 11726000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 11726000000 }},
                        },
                        Package() { "PSTATE",   5,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 11326000000, 11326000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 11326000000 }},
                        },
                        Package() { "PSTATE",   6,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 10926000000, 10926000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 10926000000 }},
                        },
                        Package() { "PSTATE",   7,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 10526000000, 10526000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 10526000000 }},
                        },








                        Package() { "PSTATE",   8,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 10126000000, 10126000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 10126000000 }},
                        },
                        Package() { "PSTATE",   9,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 9600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 9600000000 }},
                        },
                        Package() { "PSTATE",  10,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 9200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 9200000000 }},
                        },
                        Package() { "PSTATE",  11,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 8800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 8800000000 }},
                        },
                        Package() { "PSTATE",  12,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 8400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 8400000000 }},
                        },
                        Package() { "PSTATE",  13,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 8000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 8000000000 }},
                        },
                        Package() { "PSTATE",  14,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 7600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 7600000000 }},
                        },
                        Package() { "PSTATE",  15,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 7200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 7200000000 }},
                        },
                        Package() { "PSTATE",  16,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 6800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 6800000000 }},
                        },
                        Package() { "PSTATE",  17,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 6400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 6400000000 }},
                        },
                        Package() { "PSTATE",  18,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 6000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 6000000000 }},
                        },
                        Package() { "PSTATE",  19,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 5600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 5600000000 }},
                        },








                        Package() { "PSTATE",  20,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 5200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 5200000000 }},
                        },
                        Package() { "PSTATE",  21,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 4800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 4800000000 }},
                        },
                        Package() { "PSTATE",  22,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 4400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 4400000000 }},
                        },
                        Package() { "PSTATE",  23,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 4000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 4000000000 }},
                        },
                        Package() { "PSTATE",  24,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 3600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 3600000000 }},
                        },
                        Package() { "PSTATE",  25,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 9600000000, 3200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 3200000000 }},
                        },
                        Package() { "PSTATE",  26,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 8400000000, 2800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 2800000000 }},
                        },
                        Package() { "PSTATE",  27,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 7200000000, 2400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 2400000000 }},
                        },
                        Package() { "PSTATE",  28,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 6000000000, 2000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 2000000000 }},
                        },
                        Package() { "PSTATE",  29,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1600000000 }},
                        },
                        Package() { "PSTATE",  30,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1500000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1500000000 }},
                        },
                        Package() { "PSTATE",  31,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1400000000 }},
                        },
                        Package() { "PSTATE",  32,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1300000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1300000000 }},
                        },
                        Package() { "PSTATE",  33,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1200000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1200000000 }},
                        },
                        Package() { "PSTATE",  34,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1100000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1100000000 }},
                        },
                        Package() { "PSTATE",  35,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000, 1000000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000, 1000000000 }},
                        },
                        Package() { "PSTATE",  36,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  900000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  900000000 }},
                        },
                        Package() { "PSTATE",  37,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  800000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  800000000 }},
                        },
                        Package() { "PSTATE",  38,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  700000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  700000000 }},
                        },
                        Package() { "PSTATE",  39,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  600000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  600000000 }},
                        },
                        Package() { "PSTATE",  40,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  500000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  500000000 }},
                        },
                        Package() { "PSTATE",  41,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC", 4800000000,  400000000 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",             800000000,  400000000 }},
                        },
                        Package() { "PSTATE",  42,
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MDP0",            "ICBID_SLAVE_MNOC_HF_MEM_NOC",          0,          0 }},
                                                   Package() { "BUSARB", Package() { 3,     "ICBID_MASTER_MNOC_HF_MEM_NOC", "ICBID_SLAVE_EBI1",                     0,          0 }},
                        },








                        Package() { "PRELOAD_PSTATE", 28 },
                        Package() { "PREPARE_PSTATE", 28 },
                        Package() { "ABANDON_PSTATE", 28 },
                    },
                },
            },
        })

        Return (GPCC)
    }
























    Method (G9MD)
    {
        Name (GPCC, Package()
        {
            Package()
            {
                "DEVICE",
                "\\_SB.GPU0",

                Package()
                {
                    "COMPONENT",
                    9,






                    Package()
                    {
                        "FSTATE",
                        0,
                    },








                    Package() { "INIT_FSTATE", 0 },
                    Package() { "PRELOAD_FSTATE", 0 },
                    Package() { "ABANDON_FSTATE", 0 },

                },
            },
        })

        Return (GPCC)
    }
}
