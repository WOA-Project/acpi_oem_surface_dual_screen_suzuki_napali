











Scope(\_SB.PEP0)
{
    Method(LDRS){
        return(NDRS)
    }

    Name( NDRS,

        package(){
            "DEFAULT_RESOURCES",

             package()
            {
                "OPTIMIZATION",
                "CPU_CNOC_VOTE",
                "BOOT",

                package()
                {
                    "RESOURCES",

                    package() {"BUSARB", package() {3, "ICBID_MASTER_APPSS_PROC", "ICBID_SLAVE_CLK_CTL", 1, 1, "SUPPRESSIBLE" }},

                    package()
                    {
                        "PMICVREGVOTE",
                        package()
                        {
                            "PPP_RESOURCE_ID_BUCK_BOOST1_B",
                            12,
                            0,
                            0,
                            2,
                            "HLOS_DRV",
                            "SUPPRESSIBLE",
                        }
                    },

                    Package(){"CLOCK",  Package(){"gcc_disp_ahb_clk",  1}},
                    Package(){"CLOCK",  Package(){"gcc_disp_ahb_clk",  9,8}},
                    Package(){"CLOCK",  Package(){"gcc_disp_ahb_clk",  9,12}},
                },
            },
        })
}
