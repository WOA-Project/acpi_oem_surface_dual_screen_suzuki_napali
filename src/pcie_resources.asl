











Scope(\_SB_.PEP0)
{

    Method(PEMD)
    {
        Return (PEMC)
    }

    Name(PEMC,
    package()
    {
        Package()
        {
            "DEVICE",
            "\\_SB.PCI0",
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
                    "FSTATE",
                    0x1,
                },
            },
            Package()
            {
                "DSTATE",
                0x0,


                package()
                {
                    "PMICVREGVOTE",
                      package()
                      {
                        "PPP_RESOURCE_ID_LDO26_A",
                        1,
                        1200000,
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
                        "PPP_RESOURCE_ID_LDO1_A",
                        1,
                        880000,
                        1,
                        1,
                        0,
                    },
                },


                Package() { "FOOTSWITCH", Package() { "pcie_0_gdsc", 1}},


                package() {"BUSARB", Package() { 3, "ICBID_MASTER_APPSS_PROC", "ICBID_SLAVE_PCIE_0_CFG", 75000000, 0}},
                package() {"BUSARB", Package() { 3, "ICBID_MASTER_PCIE_0", "ICBID_SLAVE_EBI1", 400000000, 200000000}},

                package() {"CLOCK", package() {"gcc_aggre_noc_pcie_tbu_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_phy_refgen_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_phy_aux_clk", 1}},

                package() {"CLOCK", package() {"gcc_pcie_0_pipe_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_0_slv_axi_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_0_slv_q2a_axi_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_0_mstr_axi_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_0_cfg_ahb_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_0_aux_clk", 8, 19200000, 3}},
            },
            Package()
            {
                "DSTATE",
                0x1,
            },
            Package()
            {
                "DSTATE",
                0x2,
            },
            Package()
            {
                "DSTATE",
                0x3,
                package() {"CLOCK", package() {"gcc_pcie_0_pipe_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_0_aux_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_0_slv_axi_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_0_slv_q2a_axi_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_0_mstr_axi_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_0_cfg_ahb_clk", 2}},


                package() {"CLOCK", package() {"gcc_aggre_noc_pcie_tbu_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_phy_refgen_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_phy_aux_clk", 2}},


                package() {"BUSARB", Package() { 3, "ICBID_MASTER_APPSS_PROC", "ICBID_SLAVE_PCIE_0_CFG", 0, 0}},
                package() {"BUSARB", Package() { 3, "ICBID_MASTER_PCIE_0", "ICBID_SLAVE_EBI1", 0, 0}},


                Package() { "FOOTSWITCH", Package() { "pcie_0_gdsc", 2}},


                package()
                {
                    "PMICVREGVOTE",
                      package()
                      {
                        "PPP_RESOURCE_ID_LDO26_A",
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
                        "PPP_RESOURCE_ID_LDO1_A",
                        1,
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
            "DEVICE",
            "\\_SB.PCI0.RP1",

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
                    "FSTATE",
                    0x1,
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
                0x1,
            },
            Package()
            {
                "DSTATE",
                0x2,
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
            "\\_SB.PCI1",
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
                    "FSTATE",
                    0x1,
                },
            },
            Package()
            {
                "DSTATE",
                0x0,


                package()
                {
                    "PMICVREGVOTE",
                      package()
                      {
                        "PPP_RESOURCE_ID_LDO26_A",
                        1,
                        1200000,
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
                        "PPP_RESOURCE_ID_LDO1_A",
                        1,
                        880000,
                        1,
                        1,
                        0,
                    },
                },


                Package() { "FOOTSWITCH", Package() { "pcie_1_gdsc", 1}},


                package() {"BUSARB", Package() { 3, "ICBID_MASTER_APPSS_PROC", "ICBID_SLAVE_PCIE_1_CFG", 75000000, 0}},
                package() {"BUSARB", Package() { 3, "ICBID_MASTER_PCIE_1", "ICBID_SLAVE_EBI1", 400000000, 200000000}},

                                package() {"CLOCK", package() {"gcc_aggre_noc_pcie_tbu_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_phy_refgen_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_phy_aux_clk", 1}},

                package() {"CLOCK", package() {"gcc_pcie_1_pipe_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_1_slv_axi_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_1_slv_q2a_axi_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_1_mstr_axi_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_1_cfg_ahb_clk", 1}},
                package() {"CLOCK", package() {"gcc_pcie_1_aux_clk", 8, 19200000, 3}},
            },
            Package()
            {
                "DSTATE",
                0x1,
            },
            Package()
            {
                "DSTATE",
                0x2,
            },
            Package()
            {
                "DSTATE",
                0x3,
                package() {"CLOCK", package() {"gcc_pcie_1_pipe_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_1_aux_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_1_slv_axi_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_1_slv_q2a_axi_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_1_mstr_axi_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_1_cfg_ahb_clk", 2}},


                package() {"CLOCK", package() {"gcc_aggre_noc_pcie_tbu_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_phy_refgen_clk", 2}},
                package() {"CLOCK", package() {"gcc_pcie_phy_aux_clk", 2}},


                package() {"BUSARB", Package() { 3, "ICBID_MASTER_APPSS_PROC", "ICBID_SLAVE_PCIE_1_CFG", 0, 0}},
                package() {"BUSARB", Package() { 3, "ICBID_MASTER_PCIE_1", "ICBID_SLAVE_EBI1", 0, 0}},


                Package() { "FOOTSWITCH", Package() { "pcie_1_gdsc", 2}},

                package()
                {
                    "PMICVREGVOTE",
                      package()
                      {
                        "PPP_RESOURCE_ID_LDO26_A",
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
                        "PPP_RESOURCE_ID_LDO1_A",
                        1,
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
            "DEVICE",
            "\\_SB.PCI1.RP1",

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
                    "FSTATE",
                    0x1,
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
                0x1,
            },
            Package()
            {
                "DSTATE",
                0x2,
            },
            Package()
            {
                "DSTATE",
                0x3,
            },
        },
    })
}
