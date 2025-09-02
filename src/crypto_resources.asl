












Scope(\_SB_.PEP0)
{


    Method(CRMD)
    {
        Return(CRCC)
    }


    Name(CRCC,
    Package ()
    {

        Package()
        {
            "DEVICE",
            "\\_SB.QBCC",

            Package()
            {
                "COMPONENT",
                0x0,
                Package()
                {
                    "FSTATE",
                    0x0,


                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_APPSS_PROC", "ICBID_SLAVE_PRNG", 800000000, 0}},



		            package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_prng_ahb_clk",
                            1,
                            0,
                            1,
                        }
                    },
                },
                Package()
                {
                    "FSTATE",
                    0x1,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_APPSS_PROC", "ICBID_SLAVE_PRNG", 0, 0}},

		            package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_prng_ahb_clk",
                            2,
                            0,
                            1,
                        }
                    },
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




                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce2_ahb_clk",
                            1,
                            0,
                            1,
                        }
                    },
                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce2_axi_clk",
                            1,
                            0,
                            1,
                        }
                    },
                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce2_clk",
                            1,
                            0,
                            1,
                        }
                    },


                    package(){"PSTATE_ADJUST", Package () { 0, 0 }},
                },

                Package()
                {
                    "FSTATE",
                    0x1,




                    package(){"PSTATE_ADJUST", Package () { 0, 3 }},

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                                "gcc_ce2_ahb_clk",
                                2,
                                0,
                                1,
                        }
                    },

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                                "gcc_ce2_axi_clk",
                                2,
                                0,
                                1,
                        }
                    },
                    package()
                    {
                        "CLOCK",
                        package()
                        {
                                "gcc_ce2_clk",
                                2,
                                0,
                                1,
                        }
                    },
                },

                Package()
                {
                    "PSTATE",
                    0x0,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE1", "ICBID_SLAVE_EBI1", 200000000, 200000000}},

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce2_clk",
                            3,
                            171430000,
                            1,
                        }
                    },
                },
                Package()
                {
                    "PSTATE",
                    0x1,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE1", "ICBID_SLAVE_EBI1", 100000000, 100000000}},

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce2_clk",
                            3,
                            85710000,
                            1,
                        }
                    },
                },
                Package()
                {
                    "PSTATE",
                    0x2,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE1", "ICBID_SLAVE_EBI1", 50000000, 50000000}},

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce2_clk",
                            3,
                            42860000,
                            1,
                        }
                    },
                },
                Package()
                {
                    "PSTATE",
                    0x3,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE1", "ICBID_SLAVE_EBI1", 0, 0}},

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce2_clk",
                            3,
                            42860000,
                            1,
                        }
                    },
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


                    package(){ "REQUIRED_RESOURCE", package(){ 1, "/clk/ce1", 1 } },


                    package(){"PSTATE_ADJUST", Package () { 0, 0 }},
                },
                Package()
                {
                    "FSTATE",
                    0x1,


                    package(){"PSTATE_ADJUST", Package () { 0, 3 }},




                },
                Package()
                {
                    "PSTATE",
                    0x0,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE0", "ICBID_SLAVE_EBI1", 200000000, 200000000}},


                    package(){ "REQUIRED_RESOURCE", package(){ 1, "/clk/ce1", 171430 } },
                },
                Package()
                {
                    "PSTATE",
                    0x1,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE0", "ICBID_SLAVE_EBI1", 100000000, 100000000}},


                    package(){ "REQUIRED_RESOURCE", package(){ 1, "/clk/ce1", 85710 } },
                },
                Package()
                {
                    "PSTATE",
                    0x2,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE0", "ICBID_SLAVE_EBI1", 50000000, 50000000}},


                    package(){ "REQUIRED_RESOURCE", package(){ 1, "/clk/ce1", 42860 } },
                },
                Package()
                {
                    "PSTATE",
                    0x3,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE0", "ICBID_SLAVE_EBI1", 0, 0}},


                    package(){ "REQUIRED_RESOURCE", package(){ 1, "/clk/ce1", 0 } },
                },
	        },

            Package()
            {
                "COMPONENT",
                0x3,
                Package()
                {
                    "FSTATE",
                    0x0,




                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce3_ahb_clk",
                            1,
                            0,
                            1,
                        }
                    },
                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce3_axi_clk",
                            1,
                            0,
                            1,
                        }
                    },
                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce3_clk",
                            1,
                            0,
                            1,
                        }
                    },


                    package(){"PSTATE_ADJUST", Package () { 0, 0 }},
                },

                Package()
                {
                    "FSTATE",
                    0x1,




                    package(){"PSTATE_ADJUST", Package () { 0, 3 }},

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                                "gcc_ce3_ahb_clk",
                                2,
                                0,
                                1,
                        }
                    },

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                                "gcc_ce3_axi_clk",
                                2,
                                0,
                                1,
                        }
                    },
                    package()
                    {
                        "CLOCK",
                        package()
                        {
                                "gcc_ce3_clk",
                                2,
                                0,
                                1,
                        }
                    },
                },

                Package()
                {
                    "PSTATE",
                    0x0,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE2", "ICBID_SLAVE_EBI1", 200000000, 200000000}},

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce3_clk",
                            3,
                            171430000,
                            1,
                        }
                    },
                },
                Package()
                {
                    "PSTATE",
                    0x1,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE2", "ICBID_SLAVE_EBI1", 100000000, 100000000}},

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce3_clk",
                            3,
                            85710000,
                            1,
                        }
                    },
                },
                Package()
                {
                    "PSTATE",
                    0x2,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE2", "ICBID_SLAVE_EBI1", 50000000, 50000000}},

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce3_clk",
                            3,
                            42860000,
                            1,
                        }
                    },
                },
                Package()
                {
                    "PSTATE",
                    0x3,

                    package() {"BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE2", "ICBID_SLAVE_EBI1", 0, 0}},

                    package()
                    {
                        "CLOCK",
                        package()
                        {
                            "gcc_ce3_clk",
                            3,
                            42860000,
                            1,
                        }
                    },
                },
            },
	    }
    })
}
