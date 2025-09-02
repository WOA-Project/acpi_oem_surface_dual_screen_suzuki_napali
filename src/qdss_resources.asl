










































Scope(\_SB.PEP0)
{
    Method(QDMD){
        Return(QDSC)
    }

    Name(QDSC,
    Package()
    {
        Package()
        {
            "DEVICE",
            "\\_SB.QDSS",
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
                    Package() {"PSTATE_ADJUST", Package() {0, 0},},
                },
                Package()
                {
                    "PSTATE_SET",
                    0x0,

                    Package()
                    {
                        "PSTATE",
                        0x0,
                        package() {"NPARESOURCE", package() {1, "/clk/qdss", 0},},
                    },

                    Package()
                    {
                        "PSTATE",
                        0x1,
                        package() {"NPARESOURCE", package() {1, "/clk/qdss", 1},},
                    },

                    Package()
                    {
                        "PSTATE",
                        0x2,
                        package() {"NPARESOURCE", package() {1, "/clk/qdss", 2},},
                    },

                    Package()
                    {
                        "PSTATE",
                        0x3,
                        package() {"NPARESOURCE", package() {1, "/clk/qdss", 3},},
                    },
                },
                Package()
                {
                    "PSTATE_SET",
                    0x1,


                    package()
                    {
                        "PSTATE",
                        0x0,
                    },

                    package()
                    {
                        "PSTATE",
                        0x1,
                    },

                    package()
                    {
                        "PSTATE",
                        0x2,
                    },

                    package()
                    {
                        "PSTATE",
                        0x3,
                    },
                },







                Package()
                {
                    "PSTATE_SET",
                    0x2,

                    package()
                    {
                        "PSTATE",
                        0x0,
                        package() {"NPARESOURCE", package() {1, "/clk/qdss", 1},},
                    },

                    package()
                    {
                        "PSTATE",
                        0x1,
                        package() {"NPARESOURCE", package() {1, "/clk/qdss", 0},},
                    },
                },


                Package()
                {
                    "PSTATE_SET",
                    0x3,

                    package()
                    {
                        "PSTATE",
                        0x0,
                        package() {"TLMMPORT", package() {0x33000, 0x07FF, 0x01C8},},
                    },
                },
            },
        },
    })
}
