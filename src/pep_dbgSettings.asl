Scope(\_SB.PEP0)
{
    Method(LDBG){
        return(NDBG)
    }

    Name( NDBG,
                package(){
            "DEBUGGERS",
            package()
            {
                "TYPE",
                "SERIAL",
                package()
                {
                    "INSTANCES",
                    "\\_SB.UARD",
                },

                package()
                {
                    "DEBUG_ON",
                                        Package(){"CLOCK",  Package(){"gcc_qupv3_wrap_1_m_ahb_clk",  1}},
                    Package(){"CLOCK",  Package(){"gcc_qupv3_wrap_1_m_ahb_clk",  9,8}},
                    Package(){"CLOCK",  Package(){"gcc_qupv3_wrap_1_m_ahb_clk",  9,12}},

                    Package(){"CLOCK",  Package(){"gcc_qupv3_wrap_1_s_ahb_clk",  1}},
                    Package(){"CLOCK",  Package(){"gcc_qupv3_wrap_1_s_ahb_clk",  9,8 }},
                    Package(){"CLOCK",  Package(){"gcc_qupv3_wrap_1_s_ahb_clk",  9,12 }},


                    Package(){"CLOCK",  Package(){"gcc_qupv3_wrap1_s1_clk",  1}},
                    Package(){"CLOCK",  Package(){"gcc_qupv3_wrap1_s1_clk",  9,8}},
                    Package(){"CLOCK",  Package(){"gcc_qupv3_wrap1_s1_clk",  9,12}},

                    Package() {"BUSARB", Package() {3, "ICBID_MASTER_BLSP_2", "ICBID_SLAVE_EBI1", 10000000,1666,"HLOS_DRV", "SUPPRESSIBLE"}},
                    Package() {"BUSARB", Package() {3, "ICBID_MASTER_APPSS_PROC", "ICBID_SLAVE_BLSP_2", 10000000,5000000,"HLOS_DRV", "SUPPRESSIBLE"}},
                },

                package()
                {
                    "DEBUG_OFF",
                }
            },


            package()
            {
                "TYPE",
                "USB2.0",
                package()
                {
                    "INSTANCES",
                    "\\_SB.USB1",


                },

                package()
                {
                    "DEBUG_ON",

                    package()
                    {

                        "PMICVREGVOTE",
                        package()
                        {
                            "PPP_RESOURCE_ID_LDO12_A",
                            1,
                            1800000,
                            1,
                            7,
                            0,
                        },
                    },
                    package()
                    {

                          "PMICVREGVOTE",
                        package()
                        {
                            "PPP_RESOURCE_ID_LDO24_A",
                            1,
                            3075000,
                            1,
                            7,
                            0,
                        },
                    },
                    package()
                    {

                       "PMICVREGVOTE",
                       package()
                       {
                            "PPP_RESOURCE_ID_LDO26_A",
                            1,
                            1200000,
                            1,
                            7,
                            0,
                        },
                    },
                    package()
                    {

                        "PMICVREGVOTE",
                        package()
                        {
                            "PPP_RESOURCE_ID_LDO1_A",
                            1,
                            880000,
                            1,
                            7,
                            0,
                        },
                    },

                    package()
                    {
                        "FOOTSWITCH",
                        package()
                        {
                            "usb30_sec_gdsc",
                            1,
                        },
                    },


                    package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 9, 12,}},

                    package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 1}},


                    package() { "CLOCK", package() { "gcc_usb3_sec_phy_pipe_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_usb3_sec_phy_pipe_clk", 9, 12,}},

                    package() { "CLOCK", package() { "gcc_usb3_sec_phy_pipe_clk", 1}},


                    package() { "CLOCK", package() { "gcc_aggre_usb3_sec_axi_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_aggre_usb3_sec_axi_clk", 9, 12,}},

                    package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk", 8, 120, 9}},


                    package() { "CLOCK", package() { "gcc_cfg_noc_usb3_sec_axi_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_cfg_noc_usb3_sec_axi_clk", 9, 12,}},


                    package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 8, 120, 9}},


                    package() { "CLOCK", package() { "gcc_usb30_sec_master_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_usb30_sec_master_clk", 9, 12,}},

                    package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 8, 120, 9}},


                    package() { "CLOCK", package() { "gcc_usb3_sec_phy_aux_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_usb3_sec_phy_aux_clk", 9, 12,}},

                    package() {"CLOCK", package() {"gcc_usb3_sec_phy_aux_clk", 8, 1200, 7}},


                    package() { "CLOCK", package() { "gcc_usb_phy_cfg_ahb2phy_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_usb_phy_cfg_ahb2phy_clk", 9, 12,}},

                    package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 1}},




                    package()
                    {
                        "BUSARB",
                        package()
                        {
                            3,
                            "ICBID_MASTER_APPSS_PROC",
                            "ICBID_SLAVE_USB3_1",
                            400000000,
                            0,
                            "HLOS_DRV",
                            "SUPPRESSIBLE",
                         }
                    },




                    package()
                    {
                        "BUSARB",
                        Package()
                        {
                            3,
                            "ICBID_MASTER_USB3_1",
                            "ICBID_SLAVE_EBI1",
                            671088640,
                            671088640,
                            "HLOS_DRV",
                            "SUPPRESSIBLE",
                        }
                    },


                    package() {"NPARESOURCE",Package() {1, "/arc/client/rail_cx", 256, "SUPPRESSIBLE"}},
                },
                package()
                {
                    "DEBUG_OFF",
                }
            },

            package()
            {
                "TYPE",
                "USB3.0",
                package()
                {
                    "INSTANCES",
                    "\\_SB.URS0",
                },

                package()
                {
                    "DEBUG_ON",


                    package()
                    {

                        "PMICVREGVOTE",
                        package()
                        {
                            "PPP_RESOURCE_ID_LDO12_A",
                            1,
                            1800000,
                            1,
                            7,
                            0,
                        },
                    },
                    package()
                    {

                          "PMICVREGVOTE",
                        package()
                        {
                            "PPP_RESOURCE_ID_LDO24_A",
                            1,
                            3075000,
                            1,
                            7,
                            0,
                        },
                    },
                    package()
                    {

                       "PMICVREGVOTE",
                       package()
                       {
                          "PPP_RESOURCE_ID_LDO26_A",
                          1,
                          1200000,
                          1,
                          7,
                          0,
                        },
                    },
                    package()
                    {

                        "PMICVREGVOTE",
                        package()
                        {
                            "PPP_RESOURCE_ID_LDO1_A",
                            1,
                            880000,
                            1,
                            7,
                            0,
                        },
                    },


                    package()
                    {
                        "FOOTSWITCH",
                        package()
                        {
                            "usb30_prim_gdsc",
                            1,
                        },
                    },


                    package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 1}},

                    package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 9, 12,}},


                    package() { "CLOCK", package() { "gcc_usb3_prim_phy_pipe_clk", 1}},

                    package() { "CLOCK", package() { "gcc_usb3_prim_phy_pipe_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_usb3_prim_phy_pipe_clk", 9, 12,}},


                    package() { "CLOCK", package() { "gcc_aggre_usb3_prim_axi_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_aggre_usb3_prim_axi_clk", 9, 12,}},

                    package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk",  8, 120, 9}},


                    package() { "CLOCK", package() { "gcc_cfg_noc_usb3_prim_axi_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_cfg_noc_usb3_prim_axi_clk", 9, 12,}},


                    package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 8, 120, 9}},


                    package() { "CLOCK", package() { "gcc_usb30_prim_master_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_usb30_prim_master_clk", 9, 12,}},

                    package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 8, 120, 9}},


                    package() { "CLOCK", package() { "gcc_usb3_prim_phy_aux_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_usb3_prim_phy_aux_clk", 9, 12,}},

                    package() {"CLOCK", package() {"gcc_usb3_prim_phy_aux_clk", 8, 1200, 7}},


                    package() { "CLOCK", package() { "gcc_usb_phy_cfg_ahb2phy_clk", 9, 8,}},

                    package() { "CLOCK", package() { "gcc_usb_phy_cfg_ahb2phy_clk", 9, 12,}},

                    package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 1}},




                    package()
                    {
                        "BUSARB",
                        package()
                        {
                            3,
                            "ICBID_MASTER_APPSS_PROC",
                            "ICBID_SLAVE_USB3_0",
                            400000000,
                            0,
                            "HLOS_DRV",
                            "SUPPRESSIBLE",
                         }
                    },




                    package()
                    {
                        "BUSARB",
                        Package()
                        {
                            3,
                            "ICBID_MASTER_USB3_0",
                            "ICBID_SLAVE_EBI1",
                            671088640,
                            671088640,
                            "HLOS_DRV",
                            "SUPPRESSIBLE",
                        }
                    },


                    package() {"NPARESOURCE",Package() {1, "/arc/client/rail_cx", 256}},

                },
                package()
                {
                    "DEBUG_OFF",
                }
            },
        })
}
