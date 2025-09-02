












Scope(\_SB_.PEP0)
{

    Method(SSMD)
    {
        Return(CSCC)
    }

    Name(CSCC,
    Package ()
    {
        Package()
        {
            "DEVICE",
            "\\_SB.SSM",
            Package()
            {
                   "COMPONENT",
                   0x0,
                   Package()
                   {
                       "FSTATE",
                       0x0,
                       package() { "BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE0", "ICBID_SLAVE_EBI1", 200000000, 200000000}},
                       package(){ "REQUIRED_RESOURCE", package(){ 1, "/clk/ce1", 100000000 } },
                   },

                   Package()
                   {
                       "FSTATE",
                       0x1,


                       package() { "BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE0", "ICBID_SLAVE_EBI1", 0, 0}},
                       package(){ "REQUIRED_RESOURCE", package(){ 1, "/clk/ce1", 0 } },
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


                        package() { "BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE1", "ICBID_SLAVE_EBI1", 200000000, 200000000}},
                        package(){ "REQUIRED_RESOURCE", package(){ 1, "/clk/ce2", 100000000 } },
                },

                Package()
                {
                    "FSTATE",
                    0x1,


                        package() { "BUSARB", Package() { 3, "ICBID_MASTER_CRYPTO_CORE1", "ICBID_SLAVE_EBI1", 0, 0}},
                        package(){ "REQUIRED_RESOURCE", package(){ 1, "/clk/ce2", 0 } },
                },
            },
        },

    })

}
