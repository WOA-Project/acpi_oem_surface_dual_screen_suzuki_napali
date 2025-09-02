











Scope(\_SB_.PEP0)
{

    Method(BPMD)
    {
        Return(BPCC)
    }

    Method(LPMD)
    {
        Return(LPCC)
    }

    Name(BPCC,
    Package ()
    {
        Package()
        {
            "DEVICE",
            "\\_SB.UFS0",
            Package()
            {
                "COMPONENT",
                0x0,
                Package()
                {
                    "FSTATE",
                    0x0,
                    Package() { "PSTATE_ADJUST", Package() { 0, 0 } },
                    Package() { "PSTATE_ADJUST", Package() { 1, 0 } },
                    Package() { "PSTATE_ADJUST", Package() { 2, 0 } },
                },
                Package()
                {
                    "FSTATE",
                    0x1,
                    Package() { "PSTATE_ADJUST", Package() { 2, 1 } },
                    Package() { "PSTATE_ADJUST", Package() { 1, 1 } },
                    Package() { "PSTATE_ADJUST", Package() { 0, 1 } },
                },

                Package()
                {
                    "PSTATE_SET",
                    0x0,

                    Package()
                    {
                        "PSTATE",
                        0x0,
                        Package() { "FOOTSWITCH", Package() { "ufs_phy_gdsc", 1 }},
                    },
                    Package()
                    {
                        "PSTATE",
                        0x1,
                        Package() { "FOOTSWITCH", Package() { "ufs_phy_gdsc", 2 }},
                    },
                },

                Package()
                {
                    "PSTATE_SET",
                    0x1,

                    Package()
                    {
                        "PSTATE",
                        0x0,

                        Package() {"CLOCK", package() {"gcc_ufs_phy_axi_clk", 8, 200000000, 2}},
                        package() {"CLOCK", package() {"gcc_ufs_phy_unipro_core_clk", 8, 150000000, 2}},
                        package() {"CLOCK", package() {"gcc_ufs_phy_ice_core_clk", 8, 300000000, 2}},

		                Package() {"CLOCK", Package() {"gcc_aggre_ufs_phy_axi_clk", 1,}},
                        Package() {"CLOCK", Package() {"gcc_ufs_phy_ahb_clk", 1,}},
                        Package() {"CLOCK", Package() {"gcc_ufs_phy_phy_aux_clk", 1,}},
                        Package() {"CLOCK", Package() {"gcc_ufs_phy_tx_symbol_0_clk", 1,}},
                        Package() {"CLOCK", Package() {"gcc_ufs_phy_rx_symbol_0_clk", 1,}},
		                Package() {"CLOCK", Package() {"gcc_ufs_phy_rx_symbol_1_clk", 1,}},
		                Package() {"CLOCK", Package() {"gcc_ufs_mem_clkref_en", 1,}},
                    },
                    Package()
                    {
                        "PSTATE",
                        0x1,

                        Package() {"CLOCK", Package() {"gcc_aggre_ufs_phy_axi_clk", 2,}},
                        Package() {"CLOCK", Package() {"gcc_ufs_phy_ahb_clk", 2,}},
                        Package() {"CLOCK", Package() {"gcc_ufs_phy_phy_aux_clk", 2,}},
                        Package() {"CLOCK", Package() {"gcc_ufs_phy_tx_symbol_0_clk", 2,}},
                        Package() {"CLOCK", Package() {"gcc_ufs_phy_rx_symbol_0_clk", 2,}},
		                Package() {"CLOCK", Package() {"gcc_ufs_phy_rx_symbol_1_clk", 2,}},
                        package() {"CLOCK", package() {"gcc_ufs_phy_ice_core_clk", 2,}},
                        package() {"CLOCK", package() {"gcc_ufs_phy_unipro_core_clk", 2,}},
                        package() {"CLOCK", package() {"gcc_ufs_phy_axi_clk", 2,}},
		                package() {"CLOCK", package() {"gcc_ufs_mem_clkref_en", 2,}},
                    },
                },

                Package()
                {
                    "PSTATE_SET",
                    0x2,

                    Package()
                    {
                        "PSTATE",
                        0x0,
                        Package() {"BUSARB", Package() { 3, "ICBID_MASTER_UFS_MEM",   "ICBID_SLAVE_EBI1",   900000000,   900000000}},
                        Package() {"BUSARB", Package() { 3, "ICBID_MASTER_APPSS_PROC",   "ICBID_SLAVE_UFS_MEM_CFG",   299000000,   0}},
                    },
                    Package()
                    {
                        "PSTATE",
                        0x1,
                        Package() {"BUSARB", Package() { 3, "ICBID_MASTER_APPSS_PROC",   "ICBID_SLAVE_UFS_MEM_CFG",   0,   0}},
                        Package() {"BUSARB", Package() { 3, "ICBID_MASTER_UFS_MEM",   "ICBID_SLAVE_EBI1",   0,   0}},
                    },
                },
            },

            Package()
            {
                "DSTATE",
                0x0,

				Package() {"PSTATE_ADJUST", Package() { 2, 0 } },

                Package() {"PSTATE_ADJUST", Package() { 0, 0 } },


                Package()
                {
                         "PMICVREGVOTE",
                         Package()
                         {
                             "PPP_RESOURCE_ID_LDO20_A",
                             1,
                             2960000,
                             1,
                             7,
                             0,
                         },
                },


                Package()
                 {
                         "PMICVREGVOTE",
                         Package()
                         {
                             "PPP_RESOURCE_ID_LDO2_A",
                             1,
                             1200000,
                             1,
                             7,
                             0,
                         },
                },


                Package()
                {
                         "PMICVREGVOTE",
                         Package()
                         {
                             "PPP_RESOURCE_ID_SMPS4_A",
                             2,
                             1800000,
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
                             "PPP_RESOURCE_ID_LDO26_A",
                             1,
                             1200000,
                             1,
                             7,
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
                            7,
                            0,
                        },
                },

                Package() {"DELAY", package() { 35 }},

                Package() {"PSTATE_ADJUST", Package() { 1, 0 } },
            },
            Package()
            {
                "DSTATE",
                0x3,

                Package() {"PSTATE_ADJUST", Package() { 1, 1 } },

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
                         },
                 },

                Package()
                {
                         "PMICVREGVOTE",
                         Package()
                         {
                             "PPP_RESOURCE_ID_LDO20_A",
                             1,
                             0,
                             0,
                             0,
                             0,
                         },
                },

                Package() {"DELAY", Package() { 0x23 } },

                Package() {"PSTATE_ADJUST", Package() { 0, 1 } },

				Package() {"PSTATE_ADJUST", Package() { 2, 1 } },
            },
        },
        Package()
        {
            "DEVICE",
            "\\_SB.SDC2",
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

                Package()
                {
                    "PSTATE_SET",
                    0x0,









                    Package(){"PSTATE",       0, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",       1, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",       2, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",       3, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",       4, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",       5, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",       6, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",       7, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",       8, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",       9, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",      11, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",      12, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",      13, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",      14, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",      15, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",      16, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",      17, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",      18, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",      19, Package(){"DELAY", package() { 1 }}},
                    Package(){"PSTATE",      20,
                        Package()
                        {
                            "PMICVREGVOTE",
                            Package()
                            {
                                "PPP_RESOURCE_ID_LDO21_A",
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
                                "PPP_RESOURCE_ID_LDO13_A",
                                1,
                                0,
                                0,
                                0,
                                0,
                            },
                        },
                        Package() {"DELAY", package() { 35 }},
                        Package()
                        {
                            "PMICVREGVOTE",
                            Package()
                            {
                                "PPP_RESOURCE_ID_LDO21_A",
                                1,
                                2960000,
                                1,
                                7,
                                0,
                            },
                        },
                        Package()
                        {
                            "PMICVREGVOTE",
                            Package()
                            {
                                "PPP_RESOURCE_ID_LDO13_A",
                                1,
                                2960000,
                                1,
                                7,
                                0,
                            },
                        },
                        Package() {"DELAY", package() { 35 }},
                    },
                    Package(){"PSTATE",      21,
                        Package()
                        {
                            "PMICVREGVOTE",
                            Package()
                            {
                                "PPP_RESOURCE_ID_LDO13_A",
                                1,
                                1850000,
                                1,
                                7,
                                0,
                            },
                        },
                        Package() {"DELAY", package() { 35 }},
                    },
                    Package(){"PSTATE",      22,
                        Package()
                        {
                            "PMICVREGVOTE",
                            Package()
                            {
                                "PPP_RESOURCE_ID_LDO21_A",
                                1,
                                2960000,
                                1,
                                7,
                                0,
                            },
                        },
                        Package()
                        {
                            "PMICVREGVOTE",
                            Package()
                            {
                                "PPP_RESOURCE_ID_LDO13_A",
                                1,
                                2960000,
                                1,
                                7,
                                0,
                            },
                        },
                        Package() {"DELAY", package() { 35 }},
                    },
                    Package(){"PSTATE",      23,
                        Package()
                        {
                            "PMICVREGVOTE",
                            Package()
                            {
                                "PPP_RESOURCE_ID_LDO21_A",
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
                                "PPP_RESOURCE_ID_LDO13_A",
                                1,
                                0,
                                0,
                                0,
                                0,
                            },
                        },
                        Package() {"DELAY", package() { 35 }},
                    },
                },






                 Package()
                 {
                     "PSTATE_SET",
                     0x1,

                     Package()
                     {
                         "PSTATE",
                         0x0,
                         package() {"CLOCK", package() {"gcc_sdcc2_apps_clk", 2}},
                     },
                     Package()
                     {
                         "PSTATE",
                         0x1,
                         package() {"CLOCK", package() {"gcc_sdcc2_apps_clk", 8, 20000000, 2}},
                     },
                     Package()
                     {
                         "PSTATE",
                         0x2,
                         package() {"CLOCK", package() {"gcc_sdcc2_apps_clk", 8, 100000000, 2}},
                     },
                     Package()
                     {
                         "PSTATE",
                         0x3,
                         package() {"CLOCK", package() {"gcc_sdcc2_apps_clk", 8, 201500000, 2}},
                     },
                },






                Package()
                {
                    "PSTATE_SET",
                    0x2,

                    Package()
                    {
                        "PSTATE",
                        0x0,
                        package() {"BUSARB", Package() { 3,     "ICBID_MASTER_SDCC_2",   "ICBID_SLAVE_EBI1",   400000000,   200000000}},
                    },

                    Package()
                    {
                        "PSTATE",
                        0x1,
                        package() {"BUSARB", Package() { 3,     "ICBID_MASTER_SDCC_2",   "ICBID_SLAVE_EBI1",   200000000,   100000000}},
                    },

                    Package()
                    {
                        "PSTATE",
                        0x2,
                        package() {"BUSARB", Package() { 3,     "ICBID_MASTER_SDCC_2",   "ICBID_SLAVE_EBI1",   40000000,   20000000}},
                    },

                    Package()
                    {
                        "PSTATE",
                        0x3,
                        package() {"BUSARB", Package() { 3,     "ICBID_MASTER_SDCC_2",   "ICBID_SLAVE_EBI1",   0,   0}},
                    },
                },





                Package()
                {
                    "PSTATE_SET",
                    0x3,

                    Package()
                    {
                        "PSTATE",
                        0x0,
                        Package() { "PSTATE_ADJUST", Package() { 1, 3 } },
                        Package() { "PSTATE_ADJUST", Package() { 2, 0 } },
                    },
                    Package()
                    {
                       "PSTATE",
                        0x1,
                        Package() { "PSTATE_ADJUST", Package() { 1, 2 } },
                        Package() { "PSTATE_ADJUST", Package() { 2, 1 } },
                    },
                    Package()
                    {
                        "PSTATE",
                        0x2,
                        Package() { "PSTATE_ADJUST", Package() { 1, 1 } },
                        Package() { "PSTATE_ADJUST", Package() { 2, 2 } },
                    },
                },



                Package()
                {
                    "PSTATE_SET",
                    0x4,

                    Package()
                    {
                        "PSTATE",
                        0x0,
                        package() {"CLOCK", package() {"gcc_sdcc2_ahb_clk", 1,}},
                    },
                    Package()
                    {
                       "PSTATE",
                        0x1,
                        package() {"CLOCK", package() {"gcc_sdcc2_ahb_clk", 2}},
                    },
                },
            },

            Package()
            {
                "DSTATE",
                0x0,

                Package() {"PSTATE_ADJUST", Package () { 0, 22 }},
                package() {"TLMMPORT", package() { 0x99A000, 0x7FFF, 0x1FE4 }},
                Package() {"PSTATE_ADJUST", Package() { 2, 0 }},
                Package() {"PSTATE_ADJUST", Package() { 4, 0 }},
                Package() {"PSTATE_ADJUST", Package() { 1, 3 }},
            },
            Package()
            {
                "DSTATE",
                0x3,

                Package() {"PSTATE_ADJUST", Package() { 1, 0 }},
                Package() {"PSTATE_ADJUST", Package() { 4, 1 }},
                Package() {"PSTATE_ADJUST", Package() { 2, 3 }},
                package() {"TLMMPORT", package() { 0x99A000, 0x7FFF, 0xA00 }},
                Package() {"PSTATE_ADJUST", Package () { 0, 23 }},
            },
        },


        Package()
        {
            "DEVICE",
            "\\_SB.ADSP.SLM1",
            Package()
            {
                "COMPONENT",
                0x0,
                Package()
                {
                    "FSTATE",
                    0x0,
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
            "\\_SB.ADSP.SLM2",
            Package()
            {
                "COMPONENT",
                0x0,
                Package()
                {
                    "FSTATE",
                    0x0,
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

   Name(LPCC,
    package ()
    {
      Package()
      {
          "DEVICE",
          "\\_SB.UCP0",
          Package()
          {
              "COMPONENT",0,
              Package(){"FSTATE", 0 },
              Package()
              {
                  "PSTATE", 0,

                  package()
                  {
                      "NPARESOURCE",
                    Package() {1, "/arc/client/rail_cx", 256}
                  },



                package()
                {
                    "BUSARB",
                    package()
                    {
                    3,
                      "ICBID_MASTER_APPSS_PROC",
                    "ICBID_SLAVE_USB3_0",
                    400000000,
                    0
                    }
                },

                package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 1}},
              },
              Package()
              {
                  "PSTATE", 1,




                    package()
                    {
                        "BUSARB",
                        package()
                        {
                            3,
                            "ICBID_MASTER_APPSS_PROC",
                            "ICBID_SLAVE_USB3_0",
                            0,
                            0
                        }
                    },


                    package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},


                  package()
                  {
                      "NPARESOURCE",
                    Package() {1, "/arc/client/rail_cx", 0}
                  },

            },
          },

          package() {
              "DSTATE", 0x0,
          },
          package() {
              "DSTATE", 0x1,
          },
          package() {
              "DSTATE", 0x2,
          },
          package() {
              "DSTATE", 0x3,
          },
      },



      Package()
      {
          "DEVICE",
          "\\_SB.PTCC",
          Package()
          {
              "COMPONENT",0,
              Package(){"FSTATE", 0 },
              Package()
              {
                  "PSTATE", 0,

                  package()
                  {
                      "PMICVREGVOTE",
                      package()
                      {
                          "PPP_RESOURCE_ID_LDO24_A",
                          1,
                          3075000,
                          1,
                          1,
                          0,
                      },
                  },
                  package()
                  {
                      "PMICVREGVOTE",
                      package()
                      {
                          "PPP_RESOURCE_ID_LDO12_A",
                          1,
                          1800000,
                          1,
                          1,
                          0,
                      },
                  },
              },
              Package()
              {
                  "PSTATE", 1,

                  package()
                  {
                      "PMICVREGVOTE",
                      package()
                      {
                          "PPP_RESOURCE_ID_LDO24_A",
                          1,
                          0,
                          0,
                          0,
                          0,
                      },
                  },
                  package()
                  {
                      "PMICVREGVOTE",
                      package()
                      {
                          "PPP_RESOURCE_ID_LDO12_A",
                          1,
                          0,
                          0,
                          0,
                          0,
                      },
                  },
              },
          },

          package() {
              "DSTATE", 0x0,
          },
          package() {
              "DSTATE", 0x1,
          },
          package() {
              "DSTATE", 0x2,
          },
          package() {
              "DSTATE", 0x3,
          },
      },
      Package()
      {
        "DEVICE",
        "\\_SB.URS0",
        Package()
        {
          "COMPONENT",
          Zero,
          Package() {"FSTATE", 0},
          Package() {"PSTATE", 0},
          Package() {"PSTATE", 1}
        },
        Package() {"DSTATE", 0 },
        Package() {"DSTATE", 1 },
        Package() {"DSTATE", 2 },
        Package() {"DSTATE", 3 }
      },



      Package()
      {
        "DEVICE",
        "\\_SB.URS0.USB0",
        Package()
        {
          "COMPONENT",
          0x0,
          Package() { "FSTATE", 0x0, },
          package()
          {
            "PSTATE",
            0x0,

            package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 9, 8,}},

            package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 9, 12,}},



            package() { "CLOCK", package() { "gcc_usb3_prim_phy_pipe_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb3_prim_phy_pipe_clk", 9, 8,}},
          },
          package()
          {
            "PRELOAD_PSTATE",
            0,
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




          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk",  8, 120, 9}},



          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb30_prim_mock_utmi_clk", 8, 19200, 7}},


          package() {"CLOCK", package() {"gcc_usb3_prim_phy_aux_clk", 8, 1200, 7}},




          package()
          {
            "BUSARB",
            Package()
            {
              3,
              "ICBID_MASTER_USB3_0",
              "ICBID_SLAVE_EBI1",
              671088640,
              671088640
            }
          },


          package()
          {
            "NPARESOURCE",
            Package() {1, "/arc/client/rail_cx", 256}

          },




          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              400000000,

              0
            }
          },

          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 1}},


          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 1}},
        },
        package()
        {
          "DSTATE",
          0x1,


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 3, 9600, 5}},


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_prim_mock_utmi_clk", 2}},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},



          package()
          {
            "CLOCK",
            package() { "gcc_usb3_prim_phy_aux_clk", 2}
          },


          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 2}},



          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_USB3_0",
              "ICBID_SLAVE_EBI1",
              0,
              0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() { 1, "/arc/client/rail_cx", 0}
          },

          package()
          {
            "PMICVREGVOTE",
            package()
            {

              "PPP_RESOURCE_ID_LDO12_A",
              1,
              1800000,
              1,
              5,
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
              5,
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
              5,
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
              5,
              0,
            },
          },
        },
        package()
        {
          "DSTATE",
          0x2,


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 3, 9600000, 1}},


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_prim_mock_utmi_clk", 2}},


          package(){"CLOCK", package() {"gcc_usb3_prim_phy_aux_clk", 2 }},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 2}},



          package()
          {
            "FOOTSWITCH",
            package()
            {
              "usb30_prim_gdsc",
              1,
            },
          },


          package()
          {
            "BUSARB",
            Package()
            {
              3,
              "ICBID_MASTER_USB3_0",
              "ICBID_SLAVE_EBI1",
               0,
               0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() { 1, "/arc/client/rail_cx", 0}
          },


          package()
          {
            "PMICVREGVOTE",
            package()
            {

              "PPP_RESOURCE_ID_LDO12_A",
              1,
              1800000,
              1,
              5,
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
              5,
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
              5,
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
              5,
              0,
            },
          },

        },
        package()
        {
          "DSTATE",
          0x3,


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 3, 9600000, 1}},


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_prim_mock_utmi_clk", 2}},


          package(){"CLOCK", package() {"gcc_usb3_prim_phy_aux_clk", 2 }},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 2}},


          package()
          {
            "FOOTSWITCH",
            package()
            {
              "usb30_prim_gdsc",
              2,
            },
          },


          package()
          {
            "BUSARB",
             package()
             {
               3,
               "ICBID_MASTER_USB3_0",
               "ICBID_SLAVE_EBI1",
               0,
               0
             }
           },


          package() {"NPARESOURCE", package() {1, "/arc/client/rail_cx", 0}},


          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO24_A",
              1,
              0,
              0,
              5,
              0,
            },
          },
          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO12_A",
              1,
              0,
              0,
              5,
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
              0,
              0,
              5,
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
              0,
              0,
              5,
              0,
            },
          },
        },

        package()
        {
          "ABANDON_DSTATE",
          3
        },
      },



      package()
      {
        "DEVICE",
        "\\_SB.URS0.UFN0",
        package()
        {
          "COMPONENT",
          0x0,

          package()
          {
            "FSTATE",
            0x0,
          },
          package()
          {
            "PSTATE",
            0x0,

            package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 9, 8,}},

            package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 9, 12,}},




            package() { "CLOCK", package() { "gcc_usb3_prim_phy_pipe_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb3_prim_phy_pipe_clk", 9, 8,}},
          },
          package()
          {
            "PRELOAD_PSTATE",
            0,
          },
        },

        package()
        {
          "DSTATE",
          0x0,

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


          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk",  8, 120, 9}},



          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb3_prim_phy_aux_clk", 8, 1200, 7}},




          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              400000000,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 1}},




          package()
          {
            "BUSARB",
            Package()
            {
              3,
              "ICBID_MASTER_USB3_0",
              "ICBID_SLAVE_EBI1",
              671088640,
              671088640
            }
          },


          package()
          {
            "NPARESOURCE",
            Package() {1, "/arc/client/rail_cx", 256}
          },


          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 1}},

        },
        package()
        {

          "DSTATE",
          0x1,
        },
        package()
        {
          "DSTATE",
          0x2,



          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 3, 9600, 5}},


          package() {"CLOCK", package() { "gcc_usb30_prim_master_clk", 2 } },


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb3_prim_phy_aux_clk", 2}},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 2}},




          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_USB3_0",
              "ICBID_SLAVE_EBI1",
              0,
              0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() {1, "/arc/client/rail_cx", 256}
          },

          package()
          {
            "PMICVREGVOTE",
            package()
            {

              "PPP_RESOURCE_ID_LDO12_A",
              1,
              1800000,
              1,
              5,
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
              5,
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
              0,
              0,
              5,
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
              0,
              0,
              5,
              0,
            },
          },
        },
        package()
        {

          "DSTATE",
          0x3,


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 3, 9600000, 1}},


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk", 2}},


          package(){"CLOCK", package() {"gcc_usb3_prim_phy_aux_clk", 2 }},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},




          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 2}},



          package()
          {
            "FOOTSWITCH",
            package()
              {
                "usb30_prim_gdsc",
                2,
              },
          },


          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_USB3_0",
              "ICBID_SLAVE_EBI1",
              0,
              0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() { 1, "/arc/client/rail_cx", 0}
          },

          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO24_A",
              1,
              0,
              0,
              5,
              0,
            },
          },
          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO12_A",
              1,
              0,
              0,
              5,
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
              0,
              0,
              5,
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
              0,
              0,
              5,
              0,
            },
          },
        },

        package()
        {
          "ABANDON_DSTATE",
          3
        },
      },


      Package()
      {
        "DEVICE",
        "\\_SB.USB0",
        Package()
        {
          "COMPONENT",
          0x0,
          Package() { "FSTATE", 0x0, },
          package()
          {
            "PSTATE",
            0x0,

            package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 9, 8,}},

            package() { "CLOCK", package() { "gcc_usb30_prim_sleep_clk", 9, 12,}},



            package() { "CLOCK", package() { "gcc_usb3_prim_phy_pipe_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb3_prim_phy_pipe_clk", 9, 8,}},
          },
          package()
          {
            "PRELOAD_PSTATE",
            0,
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




          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk",  8, 120, 9}},



          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb30_prim_mock_utmi_clk", 8, 19200, 7}},


          package() {"CLOCK", package() {"gcc_usb3_prim_phy_aux_clk", 8, 1200, 7}},




          package()
          {
            "BUSARB",
            Package()
            {
              3,
              "ICBID_MASTER_USB3_0",
              "ICBID_SLAVE_EBI1",
              671088640,
              671088640
            }
          },


          package()
          {
            "NPARESOURCE",
            Package() {1, "/arc/client/rail_cx", 256}

          },




          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              400000000,

              0
            }
          },

          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 1}},


          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 1}},
        },
        package()
        {
          "DSTATE",
          0x1,


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 3, 9600, 5}},


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_prim_mock_utmi_clk", 2}},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},



          package()
          {
            "CLOCK",
            package() { "gcc_usb3_prim_phy_aux_clk", 2}
          },


          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 2}},



          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_USB3_0",
              "ICBID_SLAVE_EBI1",
              0,
              0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() { 1, "/arc/client/rail_cx", 0}
          },

          package()
          {
            "PMICVREGVOTE",
            package()
            {

              "PPP_RESOURCE_ID_LDO12_A",
              1,
              1800000,
              1,
              5,
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
              5,
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
              5,
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
              5,
              0,
            },
          },
        },
        package()
        {
          "DSTATE",
          0x2,


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 3, 9600000, 1}},


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_prim_mock_utmi_clk", 2}},


          package(){"CLOCK", package() {"gcc_usb3_prim_phy_aux_clk", 2 }},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},





          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 2}},



          package()
          {
            "FOOTSWITCH",
            package()
            {
              "usb30_prim_gdsc",
              1,
            },
          },


          package()
          {
            "BUSARB",
            Package()
            {
              3,
              "ICBID_MASTER_USB3_0",
              "ICBID_SLAVE_EBI1",
               0,
               0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() { 1, "/arc/client/rail_cx", 0}
          },


          package()
          {
            "PMICVREGVOTE",
            package()
            {

              "PPP_RESOURCE_ID_LDO12_A",
              1,
              1800000,
              1,
              5,
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
              5,
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
              5,
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
              5,
              0,
            },
          },

        },
        package()
        {
          "DSTATE",
          0x3,


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 3, 9600000, 1}},


          package() {"CLOCK", package() {"gcc_usb30_prim_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_prim_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_prim_mock_utmi_clk", 2}},


          package(){"CLOCK", package() {"gcc_usb3_prim_phy_aux_clk", 2 }},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_0",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb3_prim_clkref_en", 2}},


          package()
          {
            "FOOTSWITCH",
            package()
            {
              "usb30_prim_gdsc",
              2,
            },
          },


          package()
          {
            "BUSARB",
             package()
             {
               3,
               "ICBID_MASTER_USB3_0",
               "ICBID_SLAVE_EBI1",
               0,
               0
             }
           },


          package() {"NPARESOURCE", package() {1, "/arc/client/rail_cx", 0}},


          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO24_A",
              1,
              0,
              0,
              5,
              0,
            },
          },
          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO12_A",
              1,
              0,
              0,
              5,
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
              0,
              0,
              5,
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
              0,
              0,
              5,
              0,
            },
          },
        },

        package()
        {
          "ABANDON_DSTATE",
          3
        },
      },


      Package()
      {
        "DEVICE",
        "\\_SB.USB1",
        Package()
        {
          "COMPONENT",
          0x0,
          Package() { "FSTATE", 0x0, },
          package()
          {
            "PSTATE",
            0x0,

            package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 9, 8,}},

            package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 9, 12,}},



            package() { "CLOCK", package() { "gcc_usb3_sec_phy_pipe_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb3_sec_phy_pipe_clk", 9, 8,}},
          },
          package()
          {
            "PRELOAD_PSTATE",
            0,
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




          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk",  8, 120, 9}},



          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb30_sec_mock_utmi_clk", 8, 19200, 7}},


          package() {"CLOCK", package() {"gcc_usb3_sec_phy_aux_clk", 8, 1200, 7}},




          package()
          {
            "BUSARB",
            Package()
            {
              3,
              "ICBID_MASTER_USB3_1",
              "ICBID_SLAVE_EBI1",
              671088640,
              671088640
            }
          },


          package()
          {
            "NPARESOURCE",
            Package() {1, "/arc/client/rail_cx", 256}

          },




          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              400000000,

              0
            }
          },

          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 1}},


          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 1}},

        },
        package()
        {
          "DSTATE",
          0x1,


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 3, 9600, 5}},


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_sec_mock_utmi_clk", 2}},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},



          package()
          {
            "CLOCK",
            package() { "gcc_usb3_sec_phy_aux_clk", 2}
          },



          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 2}},



          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_USB3_1",
              "ICBID_SLAVE_EBI1",
              0,
              0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() { 1, "/arc/client/rail_cx", 0}
          },

          package()
          {
            "PMICVREGVOTE",
            package()
            {

              "PPP_RESOURCE_ID_LDO12_A",
              1,
              1800000,
              1,
              5,
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
              5,
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
              5,
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
              5,
              0,
            },
          },
        },
        package()
        {
          "DSTATE",
          0x2,


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 3, 9600000, 1}},


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_sec_mock_utmi_clk", 2}},


          package(){"CLOCK", package() {"gcc_usb3_sec_phy_aux_clk", 2 }},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},





          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 2}},


          package()
          {
            "FOOTSWITCH",
            package()
            {
              "usb30_sec_gdsc",
              1,
            },
          },


          package()
          {
            "BUSARB",
            Package()
            {
              3,
              "ICBID_MASTER_USB3_1",
              "ICBID_SLAVE_EBI1",
               0,
               0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() { 1, "/arc/client/rail_cx", 0}
          },


          package()
          {
            "PMICVREGVOTE",
            package()
            {

              "PPP_RESOURCE_ID_LDO12_A",
              1,
              1800000,
              1,
              5,
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
              5,
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
              5,
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
              5,
              0,
            },
          },

        },
        package()
        {
          "DSTATE",
          0x3,


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 3, 9600000, 1}},


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_sec_mock_utmi_clk", 2}},


          package(){"CLOCK", package() {"gcc_usb3_sec_phy_aux_clk", 2 }},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},



          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 2}},


          package()
          {
            "FOOTSWITCH",
            package()
            {
              "usb30_sec_gdsc",
              2,
            },
          },


          package()
          {
            "BUSARB",
             package()
             {
               3,
               "ICBID_MASTER_USB3_1",
               "ICBID_SLAVE_EBI1",
               0,
               0
             }
           },


          package() {"NPARESOURCE", package() {1, "/arc/client/rail_cx", 0}},


          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO24_A",
              1,
              0,
              0,
              5,
              0,
            },
          },
          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO12_A",
              1,
              0,
              0,
              5,
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
              0,
              0,
              5,
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
              0,
              0,
              5,
              0,
            },
          },
        },

        package()
        {
          "ABANDON_DSTATE",
          3
        },
      },

      Package()
      {
        "DEVICE",
        "\\_SB.URS1",
        Package()
        {
          "COMPONENT",
          Zero,
          Package() {"FSTATE", 0},
          Package()
          {
              "PSTATE",
              0,
              package()
              {
                  "PMICGPIO",
                  Package()
                  {
                      "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT",
                      1,
                      9,
                      0,
                      0,
                      0,
                      1,
                      4,
                  },
              },
          },
          Package()
          {
              "PSTATE",
              1,
              package()
              {
                  "PMICGPIO",
                  Package()
                  {
                      "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT",
                      1,
                      9,
                      0,
                      0,
                      1,
                      3,
                      5,
                  },
              },
           }
        },
        Package() {"DSTATE", 0 },
        Package() {"DSTATE", 1 },
        Package() {"DSTATE", 2 },
        Package() {"DSTATE", 3 }
      },



      Package()
      {
        "DEVICE",
        "\\_SB.URS1.USB1",
        Package()
        {
          "COMPONENT",
          0x0,
          Package() { "FSTATE", 0x0, },
          package()
          {
            "PSTATE",
            0x0,

            package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 9, 8,}},

            package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 9, 12,}},



            package() { "CLOCK", package() { "gcc_usb3_sec_phy_pipe_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb3_sec_phy_pipe_clk", 9, 8,}},
          },
          package()
          {
            "PRELOAD_PSTATE",
            0,
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




          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk",  8, 120, 9}},



          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb30_sec_mock_utmi_clk", 8, 19200, 7}},


          package() {"CLOCK", package() {"gcc_usb3_sec_phy_aux_clk", 8, 1200, 7}},




          package()
          {
            "BUSARB",
            Package()
            {
              3,
              "ICBID_MASTER_USB3_1",
              "ICBID_SLAVE_EBI1",
              671088640,
              671088640
            }
          },


          package()
          {
            "NPARESOURCE",
            Package() {1, "/arc/client/rail_cx", 256}

          },




          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              400000000,

              0
            }
          },

          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 1}},


          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 1}},

        },
        package()
        {
          "DSTATE",
          0x1,


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 3, 9600, 5}},


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_sec_mock_utmi_clk", 2}},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},



          package()
          {
            "CLOCK",
            package() { "gcc_usb3_sec_phy_aux_clk", 2}
          },


          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 2}},



          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_USB3_1",
              "ICBID_SLAVE_EBI1",
              0,
              0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() { 1, "/arc/client/rail_cx", 0}
          },

          package()
          {
            "PMICVREGVOTE",
            package()
            {

              "PPP_RESOURCE_ID_LDO12_A",
              1,
              1800000,
              1,
              5,
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
              5,
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
              5,
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
              5,
              0,
            },
          },
        },
        package()
        {
          "DSTATE",
          0x2,


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 3, 9600000, 1}},


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_sec_mock_utmi_clk", 2}},


          package(){"CLOCK", package() {"gcc_usb3_sec_phy_aux_clk", 2 }},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},





          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 2}},



          package()
          {
            "FOOTSWITCH",
            package()
            {
              "usb30_sec_gdsc",
              1,
            },
          },


          package()
          {
            "BUSARB",
            Package()
            {
              3,
              "ICBID_MASTER_USB3_1",
              "ICBID_SLAVE_EBI1",
               0,
               0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() { 1, "/arc/client/rail_cx", 0}
          },


          package()
          {
            "PMICVREGVOTE",
            package()
            {

              "PPP_RESOURCE_ID_LDO12_A",
              1,
              1800000,
              1,
              5,
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
              5,
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
              5,
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
              5,
              0,
            },
          },

        },
        package()
        {
          "DSTATE",
          0x3,


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 3, 9600000, 1}},


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb30_sec_mock_utmi_clk", 2}},


          package(){"CLOCK", package() {"gcc_usb3_sec_phy_aux_clk", 2 }},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},





          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 2}},



          package()
          {
            "FOOTSWITCH",
            package()
            {
              "usb30_sec_gdsc",
              2,
            },
          },


          package()
          {
            "BUSARB",
             package()
             {
               3,
               "ICBID_MASTER_USB3_1",
               "ICBID_SLAVE_EBI1",
               0,
               0
             }
           },


          package() {"NPARESOURCE", package() {1, "/arc/client/rail_cx", 0}},


          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO24_A",
              1,
              0,
              0,
              5,
              0,
            },
          },
          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO12_A",
              1,
              0,
              0,
              5,
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
              0,
              0,
              5,
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
              0,
              0,
              5,
              0,
            },
          },
        },

        package()
        {
          "ABANDON_DSTATE",
          3
        },
      },



      package()
      {
        "DEVICE",
        "\\_SB.URS1.UFN1",
        package()
        {
          "COMPONENT",
          0x0,

          package()
          {
            "FSTATE",
            0x0,
          },
          package()
          {
            "PSTATE",
            0x0,

            package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 9, 8,}},

            package() { "CLOCK", package() { "gcc_usb30_sec_sleep_clk", 9, 12,}},




            package() { "CLOCK", package() { "gcc_usb3_sec_phy_pipe_clk", 1}},

            package() { "CLOCK", package() { "gcc_usb3_sec_phy_pipe_clk", 9, 8,}},
          },
          package()
          {
            "PRELOAD_PSTATE",
            0,
          },
        },

        package()
        {
          "DSTATE",
          0x0,

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


          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk",  8, 120, 9}},



          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 8, 120, 9}},


          package() {"CLOCK", package() {"gcc_usb3_sec_phy_aux_clk", 8, 1200, 7}},




          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              400000000,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 1}},




          package()
          {
            "BUSARB",
            Package()
            {
              3,
              "ICBID_MASTER_USB3_1",
              "ICBID_SLAVE_EBI1",
              671088640,
              671088640
            }
          },


          package()
          {
            "NPARESOURCE",
            Package() {1, "/arc/client/rail_cx", 256}
          },


          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 1}},

        },
        package()
        {

          "DSTATE",
          0x1,
        },
        package()
        {
          "DSTATE",
          0x2,



          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 3, 9600, 5}},


          package() {"CLOCK", package() { "gcc_usb30_sec_master_clk", 2 } },


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_usb3_sec_phy_aux_clk", 2}},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},



          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 2}},




          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_USB3_1",
              "ICBID_SLAVE_EBI1",
              0,
              0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() {1, "/arc/client/rail_cx", 256}
          },

          package()
          {
            "PMICVREGVOTE",
            package()
            {

              "PPP_RESOURCE_ID_LDO12_A",
              1,
              1800000,
              1,
              5,
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
              5,
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
              0,
              0,
              5,
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
              0,
              0,
              5,
              0,
            },
          },
        },
        package()
        {

          "DSTATE",
          0x3,


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 3, 9600000, 1}},


          package() {"CLOCK", package() {"gcc_usb30_sec_master_clk", 2}},


          package() {"CLOCK", package() {"gcc_cfg_noc_usb3_sec_axi_clk", 2}},


          package() {"CLOCK", package() {"gcc_aggre_usb3_sec_axi_clk", 2}},


          package(){"CLOCK", package() {"gcc_usb3_sec_phy_aux_clk", 2 }},





          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_APPSS_PROC",
              "ICBID_SLAVE_USB3_1",
              0,
              0
            }
          },


          package() {"CLOCK", package() {"gcc_usb_phy_cfg_ahb2phy_clk", 2}},




          package() {"CLOCK", package() {"gcc_usb3_sec_clkref_en", 2}},


          package()
          {
            "FOOTSWITCH",
            package()
              {
                "usb30_sec_gdsc",
                2,
              },
          },


          package()
          {
            "BUSARB",
            package()
            {
              3,
              "ICBID_MASTER_USB3_1",
              "ICBID_SLAVE_EBI1",
              0,
              0
            }
          },


          package()
          {
            "NPARESOURCE",
            package() { 1, "/arc/client/rail_cx", 0}
          },

          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO24_A",
              1,
              0,
              0,
              5,
              0,
            },
          },
          package()
          {
            "PMICVREGVOTE",
            package()
            {
              "PPP_RESOURCE_ID_LDO12_A",
              1,
              0,
              0,
              5,
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
              0,
              0,
              5,
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
              0,
              0,
              5,
              0,
            },
          },
        },

        package()
        {
          "ABANDON_DSTATE",
          3
        },
      },
    })
}
