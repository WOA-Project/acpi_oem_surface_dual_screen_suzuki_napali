



















Device (GPU0)
{
    Name (_HID, "QCOM027E")
    Alias(\_SB.PSUB, _SUB)
    Name (_CID, "ACPI\QCOM027E")
    Name (_UID, 0)
    Name (_CLS, 0x0003000000000000)
    Name (_HRV, 0x07C)




    Device (MON0)
    {


        Name(_ADR, 0)


        Method(_PLD, 0, Serialized) {
            Name(PLDP, Package() {
                Buffer(0x14) {
                                        0x82, 0x00, 0x00, 0x00, 0x58, 0x03, 0x75, 0x04,
                    0x61, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    0x8D, 0x00, 0x16, 0x00
                }
            })
            Return(PLDP)
        }
    }

    Device (MON1)
    {


        Name(_ADR, 1)


        Method(_PLD, 0, Serialized) {
            Name(PLDP, Package() {
                Buffer(0x14) {
                                        0x82, 0x00, 0x00, 0x00, 0x58, 0x03, 0x75, 0x04,
                    0x61, 0x0D, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,
                    0x8D, 0x00, 0x16, 0x00
                }
            })
            Return(PLDP)
        }
    }

    Name (_DEP, Package()
    {
        \_SB_.MMU0,
        \_SB_.MMU1,
        \_SB_.IMM0,
        \_SB_.IMM1,
        \_SB_.PEP0,
        \_SB_.PMIC,
        \_SB_.PILC,
        \_SB_.RPEN,
        \_SB_.TREE,
        \_SB_.SCM0,
    })

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {


            Memory32Fixed(ReadWrite, 0x0AE00000, 0x00140000)



            Memory32Fixed(ReadWrite, 0x088E0000, 0x000F4000)



            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {115}



            Memory32Fixed(ReadWrite, 0x05000000, 0x0003F010)



            Memory32Fixed(ReadWrite, 0x05060000, 0x0003F000)



            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {332}



            Memory32Fixed(ReadWrite, 0x0B280000, 0x0000FFFF)



            Memory32Fixed(ReadWrite, 0x0B480000, 0x00010000)



            Memory32Fixed(ReadWrite, 0x05090000, 0x00009000)



            Memory32Fixed(ReadWrite, 0x0C200000, 0x0000FFFF)



            Memory32Fixed(ReadWrite, 0x0AA00000, 0x00200000)



            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {206}



            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {207}




            GpioIo(Shared, PullUp, 0, 0, , "\\_SB.GIO0", ,) {51}
        })
        Return (RBUF)
    }








    Method (RESI, 0x0, NotSerialized)
    {
        Name (RINF, Package()
        {
            3,
            0,



            Package()
            {
                "RESOURCE",
                "MDP_REGS",
                "DISPLAY",
            },



            Package()
            {
                "RESOURCE",
                "DP_PHY_REGS",
                "DISPLAY",
            },



            Package()
            {
                "RESOURCE",
                "VSYNC_INTERRUPT",
                "DISPLAY",
            },



            Package()
            {
                "RESOURCE",
                "GFX_REGS",
                "GRAPHICS",
            },



            Package()
            {
                "RESOURCE",
                "GFX_REG_CONT",
                "GRAPHICS",
            },



            Package()
            {
                "RESOURCE",
                "GFX_INTERRUPT",
                "GRAPHICS",
            },



            Package()
            {
                "RESOURCE",
                "GPU_PDC_SEQ_MEM",
                "GRAPHICS",
            },



            Package()
            {
                "RESOURCE",
                "GPU_PDC_REGS",
                "GRAPHICS",
            },



            Package()
            {
                "RESOURCE",
                "GPU_CC",
                "GRAPHICS",
            },



            Package()
            {
                "RESOURCE",
                "GPU_RPMH_CPRF",
                "GRAPHICS",
            },



            Package()
            {
                "RESOURCE",
                "VIDEO_REGS",
                "VIDEO",
            },



            Package()
            {
                "RESOURCE",
                "VIDC_INTERRUPT",
                "VIDEO",
            },



            Package()
            {
                "RESOURCE",
                "VIDC_WD_INTERRUPT",
                "VIDEO",
            },




            Package()
            {
                "RESOURCE",
                "DP_AUX",
                "DISPLAY",
            },
        })

        Return (RINF)
    }











    Method (ENGS)
    {
        Name (EBUF, Package()
        {
            3,
            2,
            0x003B0028,









            Package()
            {
                "ENGINES",
                6,

                Package()
                {
                    "ENGINE",
                    "GRAPHICS",
                    "Adreno6X",
                    1,
                    2,
                    0,
                    Package()
                    {
                        "MMUINFO",
                        "Miniport",
                        "ArmSmmuV2",
                        2,
                        49,
                        "V8L",
                        "SMMUID",             ToUUID("9833C712-3292-4FFB-B0F4-2BD20E1F7F66"),
                        "SMMUINTERFACEID",    ToUUID("00000000-0000-0000-0000-000000000000"),


                        Package()
                        {
                            "PAGETABLEUSAGE",
                            4,
                            "GraphicsGlobalPT",     0, 0x03030000   ,
                            "GraphicsPerProcessPT", 0, 0x03030000   ,
                            "GraphicsSecurePT",     1, 0x030A0000   ,
                            "GraphicsGmuPT",        3, 0x03030002   ,
                        },
                    },
                    Package()
                    {
                        "PERF_CONTROLS",
                        Package()
                        {
                            1,
                        },
                        Package()
                        {
                            3,
                            Package()
                            {
                                "LimitForPassiveCooling",
                                0x00000001,
                            },
                        },
                        Package()
                        {
                            4,
                            Package()
                            {
                                "LimitForPassiveCooling",
                                0x00000001,
                            },
                        },
                    },
                    Package()
                    {
                        "THERMAL_DOMAINS",
                        "GPU",
                    },
                    Package()
                    {
                        "PROPERTIES",
                        3,
                        Package()
                        {
                            "GmemBaseAddr",
                            0x00000000,
                        },
                        Package()
                        {
                            "GmemSize",
                            0x00100000,
                        },
                        Package()
                        {
                            "SMMUCount",
                            0x00000001,
                        },
                    },
                },

                Package()
                {
                    "ENGINE",
                    "MDPBLT",
                    "MDP5.x",
                    2,
                    1,
                    0,
                    Package()
                    {
                        "SHAREDSMMU",
                        "ROTATOR",
                    },
                    Package()
                    {
                        "PERF_CONTROLS",
                        Package()
                        {
                            2,
                            Package()
                            {
                                "LimitForPassiveCooling",
                                0x00000001,
                            },
                        },
                        Package()
                        {
                            3,
                            Package()
                            {
                                "LimitForPassiveCooling",
                                0x00000001,
                            },
                        },
                    },
                    Package()
                    {
                        "THERMAL_DOMAINS",
                        "GPU",
                    },
                },

                Package()
                {
                    "ENGINE",
                    "ROTATOR",
                    "MDP5.x",
                    3,
                    1,
                    0,
                    Package()
                    {
                        "MMUINFO",
                        "Miniport",
                        "ArmSmmuV2",
                        2,
                        32,
                        "V7S",
                        "SMMUID",             ToUUID("36079AE4-78E8-452D-AF50-0CFF78B2F1CA"),
                        "SMMUINTERFACEID",    ToUUID("00000000-0000-0000-0000-000000000000"),


                        Package()
                        {
                            "PAGETABLEUSAGE",
                            2,
                            "MdpNonSecurePT",
                            "MdpSecurePT",
                        },
                    },
                    Package()
                    {
                        "PERF_CONTROLS",
                        Package()
                        {
                            2,
                            Package()
                            {
                                "LimitForPassiveCooling",
                                0x00000001,
                            },
                        },
                        Package()
                        {
                            3,
                            Package()
                            {
                                "LimitForPassiveCooling",
                                0x00000001,
                            },
                        },
                    },
                    Package()
                    {
                        "THERMAL_DOMAINS",
                        "GPU",
                    },
                },

                Package()
                {
                    "ENGINE",
                    "VIDEO",
                    "Venus",
                    4,
                    1,
                    0,
                    Package()
                    {
                        "MMUINFO",
                        "Engine",
                        "ArmSmmuV2",
                        2,
                        32,
                        "V7S",
                        "SMMUID",             ToUUID("665E0F8E-ADD3-49D1-91BC-5540C5F57FBA"),
                        "SMMUINTERFACEID",    ToUUID("1C3FC0E8-0B11-4EE0-BE89-3E21420A865F"),


                        Package()
                        {
                            "PAGETABLEUSAGE",
                            5,
                            "VideoNonSecurePT",
                            "VideoSecurePT1",
                            "VideoSecurePT2",
                            "VideoSecurePT3",
                            "VideoSecurePT4",
                        },
                    },
                    Package()
                    {
                        "PERF_CONTROLS",
                        Package()
                        {
                            2,
                        },
                        Package()
                        {
                            3,
                        },
                    },
                    Package()
                    {
                        "THERMAL_DOMAINS",
                    },
                    Package()
                    {
                        "PROPERTIES",
                        1,
                        Package()
                        {
                            "DecMaxFps",
                            0x0000003C,
                        },
                    },
                },

                Package()
                {
                    "ENGINE",
                    "CRYPTO",
                    "Crypto1.0",
                    5,
                    1,
                    0,
                    Package()
                    {
                        "MMUINFO",
                        "Miniport",
                        "ArmSmmuV2",
                        2,
                        32,
                        "V7S",
                        "SMMUID",             ToUUID("36079AE4-78E8-452D-AF50-0CFF78B2F1CA"),
                        "SMMUINTERFACEID",    ToUUID("00000000-0000-0000-0000-000000000000"),


                        Package()
                        {
                            "PAGETABLEUSAGE",
                            2,
                            "CryptoNonSecurePT",
                            "CryptoSecurePT",
                        },
                    },
                    Package()
                    {
                        "PERF_CONTROLS",
                        Package()
                        {
                            2,
                        },
                    },
                    Package()
                    {
                        "THERMAL_DOMAINS",
                    },
                },

                Package()
                {
                    "ENGINE",
                    "VIDEO_ENCODER",
                    "Venus",
                    6,
                    1,
                    0,
                    Package()
                    {
                        "PERF_CONTROLS",
                        Package()
                        {
                            2,
                        },
                        Package()
                        {
                            3,
                        },
                    },
                    Package()
                    {
                        "THERMAL_DOMAINS",
                    },
                },
            },








            Package()
            {
                "DISPLAYS",
                "MDP5.x",
                3,

                Package()
                {
                    "DISPLAY",
                    "INTERNAL1",

                    0,
                    1,
                    0,

                    Package()
                    {
                        "PERF_CONTROLS",
                        Package()
                        {
                            2,
                        },
                        Package()
                        {
                            3,
                        },
                        Package()
                        {
                            4,
                        },
                    },
                    Package()
                    {
                        "THERMAL_DOMAINS",
                    },
                },
                Package()
                {
                    "DISPLAY",
                    "INTERNAL2",

                    7,
                    1,
                    0,

                    Package()
                    {
                        "PERF_CONTROLS",
                        Package()
                        {
                            2,
                        },
                        Package()
                        {
                            3,
                        },
                        Package()
                        {
                            4,
                        },
                    },
                    Package()
                    {
                        "THERMAL_DOMAINS",
                    },
                },
                Package()
                {
                    "DISPLAY",
                    "EXTERNAL1",

                    8,
                    1,
                    0,

                    Package()
                    {
                        "PERF_CONTROLS",
                        Package()
                        {
                            2,
                        },
                        Package()
                        {
                            3,
                        },
                    },
                    Package()
                    {
                        "THERMAL_DOMAINS",
                    },
                },

                Package()
                {
                    "RESOURCES",
                    Package()
                    {
                        "MMUINFO",
                        "Miniport",
                        "ArmSmmuV2",
                        2,
                        32,
                        "V7S",
                        "SMMUID",             ToUUID("36079AE4-78E8-452D-AF50-0CFF78B2F1CA"),
                        "SMMUINTERFACEID",    ToUUID("00000000-0000-0000-0000-000000000000"),


                        Package()
                        {
                            "PAGETABLEUSAGE",
                            2,
                            "MdpNonSecurePT",
                            "MdpSecurePT",
                        },
                    },
                },
                Package()
                {
                    "PRIMARY_SOURCE_MODES",
                    13,
                    Package()
                    {
                        640,
                        480,
                    },
                    Package()
                    {
                        800,
                        600,
                    },
                    Package()
                    {
                        1280,
                        720,
                    },
                    Package()
                    {
                        1024,
                        768,
                    },
                    Package()
                    {
                        1152,
                        768,
                    },
                    Package()
                    {
                        1280,
                        768,
                    },
                    Package()
                    {
                        1360,
                        768,
                    },
                    Package()
                    {
                        1366,
                        768,
                    },
                    Package()
                    {
                        1600,
                        900,
                    },
                    Package()
                    {
                        1280,
                        1024,
                    },
                    Package()
                    {
                        1920,
                        1080,
                    },
                    Package()
                    {
                        1920,
                        1200,
                    },
                    Package()
                    {
                        1920,
                        1280,
                    },
                                    },
            },








            Package()
            {
                "PAGETABLES",
                13,
                Package()
                {
                    "GraphicsGlobalPT",
                    1,
                    0,
                    1,
                    1,
                    0x8000000000,
                    0x800000000,
                },
                Package()
                {
                    "GraphicsPerProcessPT",
                    0,
                    0,
                    0,
                    0,
                    0x00400000,
                    0x7FFFC00000,
                },
                Package()
                {
                    "GraphicsSecurePT",
                    0,
                    1,
                    0,
                    1,
                    0x8800000000,
                    0xC0000000,
                },
                Package()
                {
                    "GraphicsGmuPT",
                    0,
                    0,
                    0,
                    0,
                    0x60000000,
                    0x20000000,
                },
                Package()
                {
                    "MdpNonSecurePT",
                    0,
                    0,
                    0,
                    0,
                    0x80100000,
                    0x7FF00000,
                },
                Package()
                {
                    "MdpSecurePT",
                    0,
                    1,
                    0,
                    1,
                    0x80000000,
                    0x80000000,
                },
                Package()
                {
                    "VideoNonSecurePT",
                    0,
                    0,
                    0,
                    1,
                    0x00100000,
                    0xBFF00000,
                    0x0000001B,
                    0,
                },
                Package()
                {
                    "VideoSecurePT1",
                    0,
                    1,
                    0,
                    1,
                    0xC0000000,
                    0x10000000,
                    0x00000009,
                    1,
                },
                Package()
                {
                    "VideoSecurePT2",
                    0,
                    1,
                    0,
                    1,
                    0xD0000000,
                    0x10000000,
                    0x00000007,
                    2,
                },
                Package()
                {
                    "VideoSecurePT3",
                    0,
                    1,
                    0,
                    1,
                    0xE0000000,
                    0x10000000,
                    0x00000002,
                    3,
                },
                Package()
                {
                    "VideoSecurePT4",
                    0,
                    1,
                    0,
                    1,
                    0xF0000000,
                    0x10000000,
                    0x0000002A,
                    4,
                },
                Package()
                {
                    "CryptoNonSecurePT",
                    0,
                    0,
                    0,
                    0,
                    0x00100000,
                    0x7FF00000,
                },
                Package()
                {
                    "CryptoSecurePT",
                    0,
                    1,
                    0,
                    1,
                    0x80000000,
                    0x80000000,
                },
            },
        })

        Return (EBUF)
    }





    Method (TMDT)
    {
        Name (RBUF, Package()
        {
            1,
            0,



            Package()
            {
                "THERMAL_DOMAINS",
                1,




                Package() { "GPU",         "GPU0",         Package() { "GRAPHICS", "MDPBLT", "ROTATOR", } },
            }
        })

        Return (RBUF)
    }








    Method (PMCL)
    {
        Name (RBUF, Package()
        {
            3,
            1,
            10,





            Package()
            {
                "COMPONENT",
                0,
                Buffer()
                {
                    0x91, 0x59, 0x13, 0x2C, 0x91, 0x43, 0x33, 0x46,
                    0x90, 0xB1, 0xFA, 0x96, 0xF2, 0xE2, 0xCC, 0x04
                },

                "PRIMDISPLAY_POWER_STATES",
                "HW_BLOCK_MDP",

                Package()
                {
                    "DISPLAY",
                    "INTERNAL1",
                },

                2,
                5,




                Package() { "FSTATE",  0,    "ALL_ON",          0,           0,       2  },
                Package() { "FSTATE",  1,   "PWR_OFF",          1,           1,       1  },





                Package()
                {
                    "PSTATE_SET",
                    0,
                    "INTERNAL1_RESET",
                    "*",
                    "RESET",
                    2,
                    0,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    1,
                    "INTERNAL1_FOOTSWITCH_OVERRIDE",
                    "*",
                    "FOOTSWITCH_OVERRIDE",
                    2,
                    0xFFFFFFFF,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },








                Package()
                {
                    "PSTATE_SET",
                    2,
                    "INTERNAL1_SCAN_CONTROL",
                    "*",
                    "DISPLAY_SOURCE_SCAN_CTRL",
                    5,
                    0,
                    0,




                    Package() { "PSTATE",   0,            4,     2 },
                    Package() { "PSTATE",   1,            3,     2 },
                    Package() { "PSTATE",   2,            2,     2 },
                    Package() { "PSTATE",   3,            1,     2 },
                    Package() { "PSTATE",   4,            0,     2 },
                },















                Package()
                {
                    "PSTATE_SET",
                    3,
                    "INTERNAL1_CORE_CLOCK_CONTROL",
                    "*",
                    "CORE_CLOCK",
                    13,
                    4,
                    0,




                    Package() { "PSTATE",   0,    430000000,     1 },
                    Package() { "PSTATE",   1,    412500000,     1 },
                    Package() { "PSTATE",   2,    344000000,     2 },
                    Package() { "PSTATE",   3,    300000000,     2 },
                    Package() { "PSTATE",   4,    275000000,     2 },
                    Package() { "PSTATE",   5,    200000000,     2 },
                    Package() { "PSTATE",   6,    171428571,     3 },
                    Package() { "PSTATE",   7,    165000000,     3 },
                    Package() { "PSTATE",   8,    150000000,     3 },
                    Package() { "PSTATE",   9,    100000000,     3 },
                    Package() { "PSTATE",  10,     85710000,     3 },
                    Package() { "PSTATE",  11,     19200000,     3 },
                    Package() { "PSTATE",  12,            0,     3 },
                },





                Package()
                {
                    "PSTATE_SET",
                    4,
                    "INTERNAL1_EBI_BANDWIDTH",
                    "*",
                    "BANDWIDTH",
                    43,
                    28,
                    0,




                    Package() { "PSTATE",   0,   13326000000,     0 },
                    Package() { "PSTATE",   1,   12926000000,     0 },
                    Package() { "PSTATE",   2,   12526000000,     0 },
                    Package() { "PSTATE",   3,   12126000000,     0 },
                    Package() { "PSTATE",   4,   11726000000,     0 },
                    Package() { "PSTATE",   5,   11326000000,     0 },
                    Package() { "PSTATE",   6,   10926000000,     0 },
                    Package() { "PSTATE",   7,   10526000000,     0 },
                    Package() { "PSTATE",   8,   10126000000,     1 },
                    Package() { "PSTATE",   9,   9600000000,     1 },
                    Package() { "PSTATE",  10,   9200000000,     1 },
                    Package() { "PSTATE",  11,   8800000000,     1 },
                    Package() { "PSTATE",  12,   8400000000,     1 },
                    Package() { "PSTATE",  13,   8000000000,     1 },
                    Package() { "PSTATE",  14,   7600000000,     1 },
                    Package() { "PSTATE",  15,   7200000000,     1 },
                    Package() { "PSTATE",  16,   6800000000,     1 },
                    Package() { "PSTATE",  17,   6400000000,     1 },
                    Package() { "PSTATE",  18,   6000000000,     1 },
                    Package() { "PSTATE",  19,   5600000000,     1 },
                    Package() { "PSTATE",  20,   5200000000,     2 },
                    Package() { "PSTATE",  21,   4800000000,     2 },
                    Package() { "PSTATE",  22,   4400000000,     2 },
                    Package() { "PSTATE",  23,   4000000000,     2 },
                    Package() { "PSTATE",  24,   3600000000,     2 },
                    Package() { "PSTATE",  25,   3200000000,     2 },
                    Package() { "PSTATE",  26,   2800000000,     2 },
                    Package() { "PSTATE",  27,   2400000000,     2 },
                    Package() { "PSTATE",  28,   2000000000,     2 },
                    Package() { "PSTATE",  29,   1600000000,     2 },
                    Package() { "PSTATE",  30,   1500000000,     2 },
                    Package() { "PSTATE",  31,   1400000000,     2 },
                    Package() { "PSTATE",  32,   1300000000,     2 },
                    Package() { "PSTATE",  33,   1200000000,     2 },
                    Package() { "PSTATE",  34,   1100000000,     2 },
                    Package() { "PSTATE",  35,   1000000000,     2 },
                    Package() { "PSTATE",  36,    900000000,     2 },
                    Package() { "PSTATE",  37,    800000000,     2 },
                    Package() { "PSTATE",  38,    700000000,     2 },
                    Package() { "PSTATE",  39,    600000000,     2 },
                    Package() { "PSTATE",  40,    500000000,     2 },
                    Package() { "PSTATE",  41,    400000000,     2 },
                    Package() { "PSTATE",  42,            0,     2 },
                },


            },





            Package()
            {
                "COMPONENT",
                1,
                Buffer()
                {
                    0xB5, 0xF1, 0xBD, 0x30, 0xF7, 0x28, 0x0C, 0x4C,
                    0xAC, 0x47, 0x27, 0x3D, 0xD1, 0x40, 0x1E, 0x11
                },

                "GRAPHICS_POWER_STATES",
                "HW_BLOCK_GRAPHICS",

                Package()
                {
                    "ENGINE",
                    "GRAPHICS",
                },

                3,
                5,




                Package() { "FSTATE",  0,    "ALL_ON",          0,           0,       3  },
                Package() { "FSTATE",  1,   "PWR_OFF",      10000,          10,       2  },
                Package() { "FSTATE",  2,   "PWR_OFF",      10001,          10,       1  },





                Package()
                {
                    "PSTATE_SET",
                    0,
                    "GRAPHICS_RESET",
                    "*",
                    "RESET",
                    2,
                    0,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    1,
                    "CX_HS_MGMT",
                    "*",
                    "INTERNAL",
                    3,
                    0,
                    0,




                    Package() { "PSTATE",   0,            2,     2 },
                    Package() { "PSTATE",   1,            1,     2 },
                    Package() { "PSTATE",   2,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    2,
                    "GRAPHICS_FOOTSWITCH_OVERRIDE",
                    "*",
                    "FOOTSWITCH_OVERRIDE",
                    2,
                    1,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },







                Package()
                {
                    "ENGINE_PSTATE_SET",
                    3,
                },





                Package()
                {
                    "ENGINE_PSTATE_SET",
                    4,
                    "GRAPHICS_BW_CONTROL",
                    "BANDWIDTH",
                    13,
                    0,
                    TRUE,
                    4,
                    3,




                    Package() { "PSTATE",   0,   7216000000,    384,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   1,   6220000000,    256,    Package() { "GPU",  86, } },
                    Package() { "PSTATE",   2,   5184000000,    256,    Package() { "GPU",  72, } },
                    Package() { "PSTATE",   3,   4068000000,    192,    Package() { "GPU",  56, } },
                    Package() { "PSTATE",   4,   3072000000,    128,    Package() { "GPU",  42, } },
                    Package() { "PSTATE",   5,   2724000000,    128,    Package() { "GPU",  38, } },
                    Package() { "PSTATE",   6,   2188000000,    128,    Package() { "GPU",  30, } },
                    Package() { "PSTATE",   7,   1648000000,    64,    Package() { "GPU",  23, } },
                    Package() { "PSTATE",   8,   1200000000,    48,    Package() { "GPU",  17, } },
                    Package() { "PSTATE",   9,    800000000,    48,    Package() { "GPU",  11, } },
                    Package() { "PSTATE",  10,    600000000,    48,    Package() { "GPU",   8, } },
                    Package() { "PSTATE",  11,    400000000,    48,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  12,            0,     0,    Package() { "GPU",   0, } },
                },

            },





            Package()
            {
                "COMPONENT",
                2,
                Buffer()
                {
                    0xDD, 0x2A, 0xCA, 0x07, 0x87, 0xDF, 0xE1, 0x49,
                    0x85, 0x83, 0x08, 0x68, 0x7D, 0xC8, 0x1C, 0x8E
                },

                "MDPBLT_POWER_STATES",
                "HW_BLOCK_MDP",

                Package()
                {
                    "ENGINE",
                    "MDPBLT",
                },

                3,
                4,




                Package() { "FSTATE",  0,    "ALL_ON",          0,           0,       3  },
                Package() { "FSTATE",  1,   "CLK_OFF",      10000,           0,       2  },
                Package() { "FSTATE",  2,   "PWR_OFF",     100000,           0,       1  },





                Package()
                {
                    "PSTATE_SET",
                    0,
                    "MDPBLT_RESET",
                    "*",
                    "RESET",
                    2,
                    0,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    1,
                    "MDPBLT_FOOTSWITCH_OVERRIDE",
                    "*",
                    "FOOTSWITCH_OVERRIDE",
                    2,
                    0xFFFFFFFF,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },














                Package()
                {
                    "PSTATE_SET",
                    2,
                    "MDPBLT_CORE_CLOCK_CONTROL",
                    "*",
                    "CORE_CLOCK",
                    13,
                    8,
                    0,




                    Package() { "PSTATE",   0,    430000000,     1,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   1,    412500000,     1,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   2,    344000000,     2,    Package() { "GPU",  66, } },
                    Package() { "PSTATE",   3,    300000000,     2,    Package() { "GPU",  66, } },
                    Package() { "PSTATE",   4,    275000000,     2,    Package() { "GPU",  66, } },
                    Package() { "PSTATE",   5,    200000000,     2,    Package() { "GPU",  66, } },
                    Package() { "PSTATE",   6,    171428571,     3,    Package() { "GPU",  33, } },
                    Package() { "PSTATE",   7,    165000000,     3,    Package() { "GPU",  33, } },
                    Package() { "PSTATE",   8,    150000000,     3,    Package() { "GPU",  33, } },
                    Package() { "PSTATE",   9,    100000000,     3,    Package() { "GPU",  33, } },
                    Package() { "PSTATE",  10,     85710000,     3,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  11,     19200000,     3,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  12,            0,     3,    Package() { "GPU",   0, } },
                },














                Package()
                {
                    "PSTATE_SET",
                    3,
                    "MDPBLT_AXI_BANDWIDTH_CONTROL",
                    "*",
                    "BANDWIDTH",
                    50,
                    0xFFFFFFFF,
                    0,




                    Package() { "PSTATE",   0,   13326000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   1,   12926000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   2,   12526000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   3,   12126000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   4,   11726000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   5,   11326000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   6,   10926000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   7,   10526000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   8,   10126000000,     1,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   9,   9726000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  10,   9326000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  11,   8926000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  12,   8526000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  13,   8126000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  14,   7726000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  15,   7326000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  16,   6926000000,     1,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  17,   6526000000,     1,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  18,   6126000000,     1,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  19,   5726000000,     1,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  20,   5326000000,     2,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  21,   4926000000,     2,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  22,   4526000000,     2,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  23,   4126000000,     2,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  24,   3726000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  25,   3326000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  26,   2926000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  27,   2526000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  28,   2400000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  29,   2300000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  30,   2200000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  31,   2100000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  32,   2000000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  33,   1900000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  34,   1800000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  35,   1700000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  36,   1600000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  37,   1500000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  38,   1400000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  39,   1300000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  40,   1200000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  41,   1100000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  42,   1000000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  43,    900000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  44,    800000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  45,    700000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  46,    600000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  47,    500000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  48,    400000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  49,            0,     2,    Package() { "GPU",   0, } },
                },


            },





            Package()
            {
                "COMPONENT",
                3,
                Buffer()
                {
                    0xF5, 0xFB, 0x5F, 0x4D, 0x91, 0xD7, 0xCD, 0x41,
                    0x89, 0xCB, 0x01, 0x54, 0x12, 0x9B, 0xA6, 0x07
                },

                "ROTATOR_POWER_STATES",
                "HW_BLOCK_ROTATOR",

                Package()
                {
                    "ENGINE",
                    "ROTATOR",
                },

                3,
                4,




                Package() { "FSTATE",  0,    "ALL_ON",          0,           0,       3  },
                Package() { "FSTATE",  1,   "CLK_OFF",      10000,           0,       2  },
                Package() { "FSTATE",  2,   "PWR_OFF",     100000,           0,       1  },





                Package()
                {
                    "PSTATE_SET",
                    0,
                    "ROTATOR_RESET",
                    "*",
                    "RESET",
                    2,
                    0,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    1,
                    "ROTATOR_FOOTSWITCH_OVERRIDE",
                    "*",
                    "FOOTSWITCH_OVERRIDE",
                    2,
                    0xFFFFFFFF,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },















                Package()
                {
                    "PSTATE_SET",
                    2,
                    "ROTATOR_CORE_CLOCK_CONTROL",
                    "*",
                    "CORE_CLOCK",
                    8,
                    5,
                    0,




                    Package() { "PSTATE",   0,    430000000,     1,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   1,    412500000,     1,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   2,    344000000,     2,    Package() { "GPU",  66, } },
                    Package() { "PSTATE",   3,    300000000,     2,    Package() { "GPU",  66, } },
                    Package() { "PSTATE",   4,    171428571,     3,    Package() { "GPU",  33, } },
                    Package() { "PSTATE",   5,    165000000,     3,    Package() { "GPU",  33, } },
                    Package() { "PSTATE",   6,     19200000,     3,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",   7,            0,     3,    Package() { "GPU",   0, } },
                },














                Package()
                {
                    "PSTATE_SET",
                    3,
                    "ROTATOR_AXI_BANDWIDTH_CONTROL",
                    "*",
                    "BANDWIDTH",
                    50,
                    0xFFFFFFFF,
                    0,




                    Package() { "PSTATE",   0,   13326000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   1,   12926000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   2,   12526000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   3,   12126000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   4,   11726000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   5,   11326000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   6,   10926000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   7,   10526000000,     0,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   8,   10126000000,     1,    Package() { "GPU", 100, } },
                    Package() { "PSTATE",   9,   9726000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  10,   9326000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  11,   8926000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  12,   8526000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  13,   8126000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  14,   7726000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  15,   7326000000,     1,    Package() { "GPU",  75, } },
                    Package() { "PSTATE",  16,   6926000000,     1,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  17,   6526000000,     1,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  18,   6126000000,     1,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  19,   5726000000,     1,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  20,   5326000000,     2,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  21,   4926000000,     2,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  22,   4526000000,     2,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  23,   4126000000,     2,    Package() { "GPU",  50, } },
                    Package() { "PSTATE",  24,   3726000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  25,   3326000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  26,   2926000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  27,   2526000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  28,   2400000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  29,   2300000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  30,   2200000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  31,   2100000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  32,   2000000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  33,   1900000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  34,   1800000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  35,   1700000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  36,   1600000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  37,   1500000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  38,   1400000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  39,   1300000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  40,   1200000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  41,   1100000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  42,   1000000000,     2,    Package() { "GPU",  25, } },
                    Package() { "PSTATE",  43,    900000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  44,    800000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  45,    700000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  46,    600000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  47,    500000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  48,    400000000,     2,    Package() { "GPU",   0, } },
                    Package() { "PSTATE",  49,            0,     2,    Package() { "GPU",   0, } },
                },


            },





            Package()
            {
                "COMPONENT",
                4,
                Buffer()
                {
                    0x1A, 0xBB, 0xE1, 0xD0, 0x3D, 0x70, 0xE8, 0x4B,
                    0xB4, 0x50, 0x64, 0xA4, 0xFB, 0xFC, 0xA6, 0xA8
                },

                "VIDEO_POWER_STATES",
                "HW_BLOCK_VIDEO",

                Package()
                {
                    "ENGINE",
                    "VIDEO",
                },

                3,
                4,




                Package() { "FSTATE",  0,    "ALL_ON",          0,           0,       3  },
                Package() { "FSTATE",  1,   "CLK_OFF",      10000,           0,       2  },
                Package() { "FSTATE",  2,   "PWR_OFF",     100000,           0,       1  },





                Package()
                {
                    "PSTATE_SET",
                    0,
                    "VIDEO_RESET",
                    "*",
                    "RESET",
                    2,
                    0,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    1,
                    "VIDEO_FOOTSWITCH_OVERRIDE",
                    "*",
                    "FOOTSWITCH_OVERRIDE",
                    2,
                    1,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },











                Package()
                {
                    "PSTATE_SET",
                    2,
                    "VIDEO_CORE_CLOCK_CONTROL",
                    "*",
                    "CORE_CLOCK",
                    7,
                    4,
                    0,




                    Package() { "PSTATE",   0,    533000000,     0 },
                    Package() { "PSTATE",   1,    444000000,     1 },
                    Package() { "PSTATE",   2,    380000000,     2 },
                    Package() { "PSTATE",   3,    320000000,     2 },
                    Package() { "PSTATE",   4,    200000000,     2 },
                    Package() { "PSTATE",   5,    100000000,     2 },
                    Package() { "PSTATE",   6,            0,     3 },
                },










                Package()
                {
                    "PSTATE_SET",
                    3,
                    "VIDEO_AXI_PORT_BW",
                    "*",
                    "BANDWIDTH",
                    111,
                    108,
                    0,




                    Package() { "PSTATE",   0,   22000000000,     0 },
                    Package() { "PSTATE",   1,   21800000000,     0 },
                    Package() { "PSTATE",   2,   21600000000,     0 },
                    Package() { "PSTATE",   3,   21400000000,     0 },
                    Package() { "PSTATE",   4,   21200000000,     0 },
                    Package() { "PSTATE",   5,   21000000000,     0 },
                    Package() { "PSTATE",   6,   20800000000,     0 },
                    Package() { "PSTATE",   7,   20600000000,     0 },
                    Package() { "PSTATE",   8,   20400000000,     0 },
                    Package() { "PSTATE",   9,   20200000000,     0 },
                    Package() { "PSTATE",  10,   20000000000,     0 },
                    Package() { "PSTATE",  11,   19800000000,     0 },
                    Package() { "PSTATE",  12,   19600000000,     0 },
                    Package() { "PSTATE",  13,   19400000000,     0 },
                    Package() { "PSTATE",  14,   19200000000,     0 },
                    Package() { "PSTATE",  15,   19000000000,     0 },
                    Package() { "PSTATE",  16,   18800000000,     0 },
                    Package() { "PSTATE",  17,   18600000000,     0 },
                    Package() { "PSTATE",  18,   18400000000,     0 },
                    Package() { "PSTATE",  19,   18200000000,     0 },
                    Package() { "PSTATE",  20,   18000000000,     0 },
                    Package() { "PSTATE",  21,   17800000000,     0 },
                    Package() { "PSTATE",  22,   17600000000,     0 },
                    Package() { "PSTATE",  23,   17400000000,     0 },
                    Package() { "PSTATE",  24,   17200000000,     0 },
                    Package() { "PSTATE",  25,   17000000000,     0 },
                    Package() { "PSTATE",  26,   16800000000,     0 },
                    Package() { "PSTATE",  27,   16600000000,     0 },
                    Package() { "PSTATE",  28,   16400000000,     0 },
                    Package() { "PSTATE",  29,   16200000000,     0 },
                    Package() { "PSTATE",  30,   16000000000,     0 },
                    Package() { "PSTATE",  31,   15800000000,     0 },
                    Package() { "PSTATE",  32,   15600000000,     0 },
                    Package() { "PSTATE",  33,   15400000000,     0 },
                    Package() { "PSTATE",  34,   15200000000,     0 },
                    Package() { "PSTATE",  35,   15000000000,     0 },
                    Package() { "PSTATE",  36,   14800000000,     0 },
                    Package() { "PSTATE",  37,   14600000000,     0 },
                    Package() { "PSTATE",  38,   14400000000,     0 },
                    Package() { "PSTATE",  39,   14200000000,     0 },
                    Package() { "PSTATE",  40,   14000000000,     0 },
                    Package() { "PSTATE",  41,   13800000000,     0 },
                    Package() { "PSTATE",  42,   13600000000,     0 },
                    Package() { "PSTATE",  43,   13400000000,     0 },
                    Package() { "PSTATE",  44,   13200000000,     0 },
                    Package() { "PSTATE",  45,   13000000000,     0 },
                    Package() { "PSTATE",  46,   12800000000,     0 },
                    Package() { "PSTATE",  47,   12600000000,     0 },
                    Package() { "PSTATE",  48,   12400000000,     0 },
                    Package() { "PSTATE",  49,   12200000000,     0 },
                    Package() { "PSTATE",  50,   12000000000,     0 },
                    Package() { "PSTATE",  51,   11800000000,     0 },
                    Package() { "PSTATE",  52,   11600000000,     0 },
                    Package() { "PSTATE",  53,   11400000000,     0 },
                    Package() { "PSTATE",  54,   11200000000,     0 },
                    Package() { "PSTATE",  55,   11000000000,     0 },
                    Package() { "PSTATE",  56,   10800000000,     0 },
                    Package() { "PSTATE",  57,   10600000000,     0 },
                    Package() { "PSTATE",  58,   10400000000,     0 },
                    Package() { "PSTATE",  59,   10200000000,     0 },
                    Package() { "PSTATE",  60,   10000000000,     0 },
                    Package() { "PSTATE",  61,   9800000000,     0 },
                    Package() { "PSTATE",  62,   9600000000,     0 },
                    Package() { "PSTATE",  63,   9400000000,     0 },
                    Package() { "PSTATE",  64,   9200000000,     0 },
                    Package() { "PSTATE",  65,   9000000000,     0 },
                    Package() { "PSTATE",  66,   8800000000,     0 },
                    Package() { "PSTATE",  67,   8600000000,     0 },
                    Package() { "PSTATE",  68,   8400000000,     0 },
                    Package() { "PSTATE",  69,   8200000000,     0 },
                    Package() { "PSTATE",  70,   8000000000,     0 },
                    Package() { "PSTATE",  71,   7800000000,     0 },
                    Package() { "PSTATE",  72,   7600000000,     0 },
                    Package() { "PSTATE",  73,   7400000000,     0 },
                    Package() { "PSTATE",  74,   7200000000,     0 },
                    Package() { "PSTATE",  75,   7000000000,     0 },
                    Package() { "PSTATE",  76,   6800000000,     0 },
                    Package() { "PSTATE",  77,   6600000000,     0 },
                    Package() { "PSTATE",  78,   6400000000,     0 },
                    Package() { "PSTATE",  79,   6200000000,     0 },
                    Package() { "PSTATE",  80,   6000000000,     0 },
                    Package() { "PSTATE",  81,   5800000000,     0 },
                    Package() { "PSTATE",  82,   5600000000,     0 },
                    Package() { "PSTATE",  83,   5400000000,     0 },
                    Package() { "PSTATE",  84,   5200000000,     0 },
                    Package() { "PSTATE",  85,   5000000000,     0 },
                    Package() { "PSTATE",  86,   4800000000,     0 },
                    Package() { "PSTATE",  87,   4600000000,     0 },
                    Package() { "PSTATE",  88,   4400000000,     0 },
                    Package() { "PSTATE",  89,   4200000000,     0 },
                    Package() { "PSTATE",  90,   4000000000,     0 },
                    Package() { "PSTATE",  91,   3800000000,     0 },
                    Package() { "PSTATE",  92,   3600000000,     0 },
                    Package() { "PSTATE",  93,   3400000000,     0 },
                    Package() { "PSTATE",  94,   3200000000,     0 },
                    Package() { "PSTATE",  95,   3000000000,     0 },
                    Package() { "PSTATE",  96,   2800000000,     0 },
                    Package() { "PSTATE",  97,   2600000000,     0 },
                    Package() { "PSTATE",  98,   2400000000,     0 },
                    Package() { "PSTATE",  99,   2200000000,     0 },
                    Package() { "PSTATE",  100,   2000000000,     0 },
                    Package() { "PSTATE",  101,   1800000000,     0 },
                    Package() { "PSTATE",  102,   1600000000,     0 },
                    Package() { "PSTATE",  103,   1400000000,     0 },
                    Package() { "PSTATE",  104,   1200000000,     0 },
                    Package() { "PSTATE",  105,   1000000000,     0 },
                    Package() { "PSTATE",  106,    800000000,     1 },
                    Package() { "PSTATE",  107,    600000000,     1 },
                    Package() { "PSTATE",  108,    400000000,     2 },
                    Package() { "PSTATE",  109,    200000000,     2 },
                    Package() { "PSTATE",  110,            0,     2 },
                },


            },





            Package()
            {
                "COMPONENT",
                5,
                Buffer()
                {
                    0xFA, 0x73, 0x4D, 0xCC, 0xC2, 0xC3, 0x7E, 0x4C,
                    0xA2, 0x17, 0xD4, 0x68, 0xF4, 0x61, 0x1B, 0xBD
                },

                "CRYPTO_POWER_STATES",
                "HW_BLOCK_NONE",

                Package()
                {
                    "ENGINE",
                    "CRYPTO",
                },

                2,
                3,




                Package() { "FSTATE",  0,    "ALL_ON",          0,           0,       3  },
                Package() { "FSTATE",  1,   "PWR_OFF",     100000,           0,       1  },





                Package()
                {
                    "PSTATE_SET",
                    0,
                    "CRYPTO_RESET",
                    "*",
                    "RESET",
                    2,
                    0,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    1,
                    "CRYPTO_FOOTSWITCH_OVERRIDE",
                    "*",
                    "FOOTSWITCH_OVERRIDE",
                    2,
                    1,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    2,
                    "CRYPTO_CORE_CLOCK_CONTROL",
                    "*",
                    "CORE_CLOCK",
                    1,
                    0,
                    0,




                    Package() { "PSTATE",   0,            0,     0 },
                },


            },





            Package()
            {
                "COMPONENT",
                6,
                Buffer()
                {
                    0x96, 0x50, 0xBE, 0xE6, 0xEC, 0x55, 0x91, 0x48,
                    0x88, 0x4B, 0x07, 0x60, 0xBF, 0xC5, 0x33, 0xB6
                },

                "VIDEO_ENCODER_POWER_STATES",
                "HW_BLOCK_VIDEO",

                Package()
                {
                    "ENGINE",
                    "VIDEO_ENCODER",
                },

                3,
                4,




                Package() { "FSTATE",  0,    "ALL_ON",          0,           0,       3  },
                Package() { "FSTATE",  1,   "CLK_OFF",      10000,           0,       2  },
                Package() { "FSTATE",  2,   "PWR_OFF",     100000,           0,       1  },





                Package()
                {
                    "PSTATE_SET",
                    0,
                    "VIDEO_ENCODER_RESET",
                    "*",
                    "RESET",
                    2,
                    0,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    1,
                    "VIDEO_ENCODER_FOOTSWITCH_OVERRIDE",
                    "*",
                    "FOOTSWITCH_OVERRIDE",
                    2,
                    1,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },











                Package()
                {
                    "PSTATE_SET",
                    2,
                    "VIDEO_ENCODER_CORE_CLOCK_CONTROL",
                    "*",
                    "CORE_CLOCK",
                    7,
                    4,
                    0,




                    Package() { "PSTATE",   0,    533000000,     0 },
                    Package() { "PSTATE",   1,    444000000,     1 },
                    Package() { "PSTATE",   2,    404000000,     2 },
                    Package() { "PSTATE",   3,    330000000,     2 },
                    Package() { "PSTATE",   4,    200000000,     2 },
                    Package() { "PSTATE",   5,    100000000,     2 },
                    Package() { "PSTATE",   6,            0,     3 },
                },










                Package()
                {
                    "PSTATE_SET",
                    3,
                    "VIDEO_ENCODER_AXI_PORT_BW",
                    "*",
                    "BANDWIDTH",
                    111,
                    108,
                    0,




                    Package() { "PSTATE",   0,   22000000000,     0 },
                    Package() { "PSTATE",   1,   21800000000,     0 },
                    Package() { "PSTATE",   2,   21600000000,     0 },
                    Package() { "PSTATE",   3,   21400000000,     0 },
                    Package() { "PSTATE",   4,   21200000000,     0 },
                    Package() { "PSTATE",   5,   21000000000,     0 },
                    Package() { "PSTATE",   6,   20800000000,     0 },
                    Package() { "PSTATE",   7,   20600000000,     0 },
                    Package() { "PSTATE",   8,   20400000000,     0 },
                    Package() { "PSTATE",   9,   20200000000,     0 },
                    Package() { "PSTATE",  10,   20000000000,     0 },
                    Package() { "PSTATE",  11,   19800000000,     0 },
                    Package() { "PSTATE",  12,   19600000000,     0 },
                    Package() { "PSTATE",  13,   19400000000,     0 },
                    Package() { "PSTATE",  14,   19200000000,     0 },
                    Package() { "PSTATE",  15,   19000000000,     0 },
                    Package() { "PSTATE",  16,   18800000000,     0 },
                    Package() { "PSTATE",  17,   18600000000,     0 },
                    Package() { "PSTATE",  18,   18400000000,     0 },
                    Package() { "PSTATE",  19,   18200000000,     0 },
                    Package() { "PSTATE",  20,   18000000000,     0 },
                    Package() { "PSTATE",  21,   17800000000,     0 },
                    Package() { "PSTATE",  22,   17600000000,     0 },
                    Package() { "PSTATE",  23,   17400000000,     0 },
                    Package() { "PSTATE",  24,   17200000000,     0 },
                    Package() { "PSTATE",  25,   17000000000,     0 },
                    Package() { "PSTATE",  26,   16800000000,     0 },
                    Package() { "PSTATE",  27,   16600000000,     0 },
                    Package() { "PSTATE",  28,   16400000000,     0 },
                    Package() { "PSTATE",  29,   16200000000,     0 },
                    Package() { "PSTATE",  30,   16000000000,     0 },
                    Package() { "PSTATE",  31,   15800000000,     0 },
                    Package() { "PSTATE",  32,   15600000000,     0 },
                    Package() { "PSTATE",  33,   15400000000,     0 },
                    Package() { "PSTATE",  34,   15200000000,     0 },
                    Package() { "PSTATE",  35,   15000000000,     0 },
                    Package() { "PSTATE",  36,   14800000000,     0 },
                    Package() { "PSTATE",  37,   14600000000,     0 },
                    Package() { "PSTATE",  38,   14400000000,     0 },
                    Package() { "PSTATE",  39,   14200000000,     0 },
                    Package() { "PSTATE",  40,   14000000000,     0 },
                    Package() { "PSTATE",  41,   13800000000,     0 },
                    Package() { "PSTATE",  42,   13600000000,     0 },
                    Package() { "PSTATE",  43,   13400000000,     0 },
                    Package() { "PSTATE",  44,   13200000000,     0 },
                    Package() { "PSTATE",  45,   13000000000,     0 },
                    Package() { "PSTATE",  46,   12800000000,     0 },
                    Package() { "PSTATE",  47,   12600000000,     0 },
                    Package() { "PSTATE",  48,   12400000000,     0 },
                    Package() { "PSTATE",  49,   12200000000,     0 },
                    Package() { "PSTATE",  50,   12000000000,     0 },
                    Package() { "PSTATE",  51,   11800000000,     0 },
                    Package() { "PSTATE",  52,   11600000000,     0 },
                    Package() { "PSTATE",  53,   11400000000,     0 },
                    Package() { "PSTATE",  54,   11200000000,     0 },
                    Package() { "PSTATE",  55,   11000000000,     0 },
                    Package() { "PSTATE",  56,   10800000000,     0 },
                    Package() { "PSTATE",  57,   10600000000,     0 },
                    Package() { "PSTATE",  58,   10400000000,     0 },
                    Package() { "PSTATE",  59,   10200000000,     0 },
                    Package() { "PSTATE",  60,   10000000000,     0 },
                    Package() { "PSTATE",  61,   9800000000,     0 },
                    Package() { "PSTATE",  62,   9600000000,     0 },
                    Package() { "PSTATE",  63,   9400000000,     0 },
                    Package() { "PSTATE",  64,   9200000000,     0 },
                    Package() { "PSTATE",  65,   9000000000,     0 },
                    Package() { "PSTATE",  66,   8800000000,     0 },
                    Package() { "PSTATE",  67,   8600000000,     0 },
                    Package() { "PSTATE",  68,   8400000000,     0 },
                    Package() { "PSTATE",  69,   8200000000,     0 },
                    Package() { "PSTATE",  70,   8000000000,     0 },
                    Package() { "PSTATE",  71,   7800000000,     0 },
                    Package() { "PSTATE",  72,   7600000000,     0 },
                    Package() { "PSTATE",  73,   7400000000,     0 },
                    Package() { "PSTATE",  74,   7200000000,     0 },
                    Package() { "PSTATE",  75,   7000000000,     0 },
                    Package() { "PSTATE",  76,   6800000000,     0 },
                    Package() { "PSTATE",  77,   6600000000,     0 },
                    Package() { "PSTATE",  78,   6400000000,     0 },
                    Package() { "PSTATE",  79,   6200000000,     0 },
                    Package() { "PSTATE",  80,   6000000000,     0 },
                    Package() { "PSTATE",  81,   5800000000,     0 },
                    Package() { "PSTATE",  82,   5600000000,     0 },
                    Package() { "PSTATE",  83,   5400000000,     0 },
                    Package() { "PSTATE",  84,   5200000000,     0 },
                    Package() { "PSTATE",  85,   5000000000,     0 },
                    Package() { "PSTATE",  86,   4800000000,     0 },
                    Package() { "PSTATE",  87,   4600000000,     0 },
                    Package() { "PSTATE",  88,   4400000000,     0 },
                    Package() { "PSTATE",  89,   4200000000,     0 },
                    Package() { "PSTATE",  90,   4000000000,     0 },
                    Package() { "PSTATE",  91,   3800000000,     0 },
                    Package() { "PSTATE",  92,   3600000000,     0 },
                    Package() { "PSTATE",  93,   3400000000,     0 },
                    Package() { "PSTATE",  94,   3200000000,     0 },
                    Package() { "PSTATE",  95,   3000000000,     0 },
                    Package() { "PSTATE",  96,   2800000000,     0 },
                    Package() { "PSTATE",  97,   2600000000,     0 },
                    Package() { "PSTATE",  98,   2400000000,     0 },
                    Package() { "PSTATE",  99,   2200000000,     0 },
                    Package() { "PSTATE",  100,   2000000000,     0 },
                    Package() { "PSTATE",  101,   1800000000,     0 },
                    Package() { "PSTATE",  102,   1600000000,     0 },
                    Package() { "PSTATE",  103,   1400000000,     0 },
                    Package() { "PSTATE",  104,   1200000000,     0 },
                    Package() { "PSTATE",  105,   1000000000,     0 },
                    Package() { "PSTATE",  106,    800000000,     1 },
                    Package() { "PSTATE",  107,    600000000,     1 },
                    Package() { "PSTATE",  108,    400000000,     2 },
                    Package() { "PSTATE",  109,    200000000,     2 },
                    Package() { "PSTATE",  110,            0,     2 },
                },


                Package()
                {
                    "PROVIDERS",
                    1,
                    Package()
                    {
                        4,
                    },
                },
            },





            Package()
            {
                "COMPONENT",
                7,
                Buffer()
                {
                    0x28, 0xE6, 0x2B, 0xC4, 0xBC, 0xD6, 0x55, 0x47,
                    0xBF, 0xD5, 0x5A, 0xF7, 0x76, 0x79, 0x72, 0x28
                },

                "SECDISPLAY_POWER_STATES",
                "HW_BLOCK_MDP",

                Package()
                {
                    "DISPLAY",
                    "INTERNAL2",
                },

                2,
                5,




                Package() { "FSTATE",  0,    "ALL_ON",          0,           0,       2  },
                Package() { "FSTATE",  1,   "PWR_OFF",          1,           1,       1  },





                Package()
                {
                    "PSTATE_SET",
                    0,
                    "INTERNAL2_RESET",
                    "*",
                    "RESET",
                    2,
                    0,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    1,
                    "INTERNAL2_FOOTSWITCH_OVERRIDE",
                    "*",
                    "FOOTSWITCH_OVERRIDE",
                    2,
                    0xFFFFFFFF,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },








                Package()
                {
                    "PSTATE_SET",
                    2,
                    "INTERNAL2_SCAN_CONTROL",
                    "*",
                    "DISPLAY_SOURCE_SCAN_CTRL",
                    5,
                    0,
                    0,




                    Package() { "PSTATE",   0,            4,     2 },
                    Package() { "PSTATE",   1,            3,     2 },
                    Package() { "PSTATE",   2,            2,     2 },
                    Package() { "PSTATE",   3,            1,     2 },
                    Package() { "PSTATE",   4,            0,     2 },
                },















                Package()
                {
                    "PSTATE_SET",
                    3,
                    "INTERNAL2_CORE_CLOCK_CONTROL",
                    "*",
                    "CORE_CLOCK",
                    13,
                    4,
                    0,




                    Package() { "PSTATE",   0,    430000000,     1 },
                    Package() { "PSTATE",   1,    412500000,     1 },
                    Package() { "PSTATE",   2,    344000000,     2 },
                    Package() { "PSTATE",   3,    300000000,     2 },
                    Package() { "PSTATE",   4,    275000000,     2 },
                    Package() { "PSTATE",   5,    200000000,     2 },
                    Package() { "PSTATE",   6,    171428571,     3 },
                    Package() { "PSTATE",   7,    165000000,     3 },
                    Package() { "PSTATE",   8,    150000000,     3 },
                    Package() { "PSTATE",   9,    100000000,     3 },
                    Package() { "PSTATE",  10,     85710000,     3 },
                    Package() { "PSTATE",  11,     19200000,     3 },
                    Package() { "PSTATE",  12,            0,     3 },
                },





                Package()
                {
                    "PSTATE_SET",
                    4,
                    "INTERNAL2_EBI_BANDWIDTH",
                    "*",
                    "BANDWIDTH",
                    43,
                    28,
                    0,




                    Package() { "PSTATE",   0,   13326000000,     0 },
                    Package() { "PSTATE",   1,   12926000000,     0 },
                    Package() { "PSTATE",   2,   12526000000,     0 },
                    Package() { "PSTATE",   3,   12126000000,     0 },
                    Package() { "PSTATE",   4,   11726000000,     0 },
                    Package() { "PSTATE",   5,   11326000000,     0 },
                    Package() { "PSTATE",   6,   10926000000,     0 },
                    Package() { "PSTATE",   7,   10526000000,     0 },
                    Package() { "PSTATE",   8,   10126000000,     1 },
                    Package() { "PSTATE",   9,   9600000000,     1 },
                    Package() { "PSTATE",  10,   9200000000,     1 },
                    Package() { "PSTATE",  11,   8800000000,     1 },
                    Package() { "PSTATE",  12,   8400000000,     1 },
                    Package() { "PSTATE",  13,   8000000000,     1 },
                    Package() { "PSTATE",  14,   7600000000,     1 },
                    Package() { "PSTATE",  15,   7200000000,     1 },
                    Package() { "PSTATE",  16,   6800000000,     1 },
                    Package() { "PSTATE",  17,   6400000000,     1 },
                    Package() { "PSTATE",  18,   6000000000,     1 },
                    Package() { "PSTATE",  19,   5600000000,     1 },
                    Package() { "PSTATE",  20,   5200000000,     2 },
                    Package() { "PSTATE",  21,   4800000000,     2 },
                    Package() { "PSTATE",  22,   4400000000,     2 },
                    Package() { "PSTATE",  23,   4000000000,     2 },
                    Package() { "PSTATE",  24,   3600000000,     2 },
                    Package() { "PSTATE",  25,   3200000000,     2 },
                    Package() { "PSTATE",  26,   2800000000,     2 },
                    Package() { "PSTATE",  27,   2400000000,     2 },
                    Package() { "PSTATE",  28,   2000000000,     2 },
                    Package() { "PSTATE",  29,   1600000000,     2 },
                    Package() { "PSTATE",  30,   1500000000,     2 },
                    Package() { "PSTATE",  31,   1400000000,     2 },
                    Package() { "PSTATE",  32,   1300000000,     2 },
                    Package() { "PSTATE",  33,   1200000000,     2 },
                    Package() { "PSTATE",  34,   1100000000,     2 },
                    Package() { "PSTATE",  35,   1000000000,     2 },
                    Package() { "PSTATE",  36,    900000000,     2 },
                    Package() { "PSTATE",  37,    800000000,     2 },
                    Package() { "PSTATE",  38,    700000000,     2 },
                    Package() { "PSTATE",  39,    600000000,     2 },
                    Package() { "PSTATE",  40,    500000000,     2 },
                    Package() { "PSTATE",  41,    400000000,     2 },
                    Package() { "PSTATE",  42,            0,     2 },
                },


            },





            Package()
            {
                "COMPONENT",
                8,
                Buffer()
                {
                    0xD2, 0xAE, 0x8D, 0x81, 0x63, 0x9E, 0xD5, 0x49,
                    0xBD, 0x12, 0xB0, 0x95, 0x1F, 0x7B, 0x0F, 0x6B
                },

                "DP_POWER_STATES",
                "HW_BLOCK_MDP",

                Package()
                {
                    "DISPLAY",
                    "EXTERNAL1",
                },

                2,
                4,




                Package() { "FSTATE",  0,    "ALL_ON",          0,           0,       2  },
                Package() { "FSTATE",  1,   "PWR_OFF",          1,           1,       1  },





                Package()
                {
                    "PSTATE_SET",
                    0,
                    "EXTERNAL1_RESET",
                    "*",
                    "RESET",
                    2,
                    0,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },





                Package()
                {
                    "PSTATE_SET",
                    1,
                    "EXTERNAL1_FOOTSWITCH_OVERRIDE",
                    "*",
                    "FOOTSWITCH_OVERRIDE",
                    2,
                    0xFFFFFFFF,
                    0,




                    Package() { "PSTATE",   0,            1,     2 },
                    Package() { "PSTATE",   1,            0,     2 },
                },















                Package()
                {
                    "PSTATE_SET",
                    2,
                    "EXTERNAL1_CORE_CLOCK_CONTROL",
                    "*",
                    "CORE_CLOCK",
                    13,
                    4,
                    0,




                    Package() { "PSTATE",   0,    430000000,     1 },
                    Package() { "PSTATE",   1,    412500000,     1 },
                    Package() { "PSTATE",   2,    344000000,     2 },
                    Package() { "PSTATE",   3,    300000000,     2 },
                    Package() { "PSTATE",   4,    275000000,     2 },
                    Package() { "PSTATE",   5,    200000000,     2 },
                    Package() { "PSTATE",   6,    171428571,     3 },
                    Package() { "PSTATE",   7,    165000000,     3 },
                    Package() { "PSTATE",   8,    150000000,     3 },
                    Package() { "PSTATE",   9,    100000000,     3 },
                    Package() { "PSTATE",  10,     85710000,     3 },
                    Package() { "PSTATE",  11,     19200000,     3 },
                    Package() { "PSTATE",  12,            0,     3 },
                },






























                Package()
                {
                    "PSTATE_SET",
                    3,
                    "EXTERNAL1_EBI_BANDWIDTH",
                    "*",
                    "BANDWIDTH",
                    43,
                    28,
                    0,




                    Package() { "PSTATE",   0,   13326000000,     0 },
                    Package() { "PSTATE",   1,   12926000000,     0 },
                    Package() { "PSTATE",   2,   12526000000,     0 },
                    Package() { "PSTATE",   3,   12126000000,     0 },
                    Package() { "PSTATE",   4,   11726000000,     0 },
                    Package() { "PSTATE",   5,   11326000000,     0 },
                    Package() { "PSTATE",   6,   10926000000,     0 },
                    Package() { "PSTATE",   7,   10526000000,     0 },
                    Package() { "PSTATE",   8,   10126000000,     1 },
                    Package() { "PSTATE",   9,   9600000000,     1 },
                    Package() { "PSTATE",  10,   9200000000,     1 },
                    Package() { "PSTATE",  11,   8800000000,     1 },
                    Package() { "PSTATE",  12,   8400000000,     1 },
                    Package() { "PSTATE",  13,   8000000000,     1 },
                    Package() { "PSTATE",  14,   7600000000,     1 },
                    Package() { "PSTATE",  15,   7200000000,     1 },
                    Package() { "PSTATE",  16,   6800000000,     1 },
                    Package() { "PSTATE",  17,   6400000000,     1 },
                    Package() { "PSTATE",  18,   6000000000,     1 },
                    Package() { "PSTATE",  19,   5600000000,     1 },
                    Package() { "PSTATE",  20,   5200000000,     2 },
                    Package() { "PSTATE",  21,   4800000000,     2 },
                    Package() { "PSTATE",  22,   4400000000,     2 },
                    Package() { "PSTATE",  23,   4000000000,     2 },
                    Package() { "PSTATE",  24,   3600000000,     2 },
                    Package() { "PSTATE",  25,   3200000000,     2 },
                    Package() { "PSTATE",  26,   2800000000,     2 },
                    Package() { "PSTATE",  27,   2400000000,     2 },
                    Package() { "PSTATE",  28,   2000000000,     2 },
                    Package() { "PSTATE",  29,   1600000000,     2 },
                    Package() { "PSTATE",  30,   1500000000,     2 },
                    Package() { "PSTATE",  31,   1400000000,     2 },
                    Package() { "PSTATE",  32,   1300000000,     2 },
                    Package() { "PSTATE",  33,   1200000000,     2 },
                    Package() { "PSTATE",  34,   1100000000,     2 },
                    Package() { "PSTATE",  35,   1000000000,     2 },
                    Package() { "PSTATE",  36,    900000000,     2 },
                    Package() { "PSTATE",  37,    800000000,     2 },
                    Package() { "PSTATE",  38,    700000000,     2 },
                    Package() { "PSTATE",  39,    600000000,     2 },
                    Package() { "PSTATE",  40,    500000000,     2 },
                    Package() { "PSTATE",  41,    400000000,     2 },
                    Package() { "PSTATE",  42,            0,     2 },
                },


            },





            Package()
            {
                "COMPONENT",
                9,
                Buffer()
                {
                    0xDF, 0x0B, 0xD4, 0x8D, 0xBD, 0x6F, 0xED, 0x45,
                    0x85, 0x38, 0x71, 0x1D, 0x43, 0x4B, 0x6B, 0xA1
                },

                "ALWAYS_ACTIVE_WP",
                "HW_BLOCK_NONE",

                Package()
                {
                    "UNMANAGED",
                },

                1,
                0,




                Package() { "FSTATE",  0,    "ALL_ON",          0,           0,       1  },


            },
        })













        Name (P001,






            Package()
            {
                "ENGINE_PSTATE_SET",
                3,
                "GRAPHICS_FREQ_CONTROL",
                "CORE_CLOCK",
                9,
                1,
                TRUE,
                5,
                3,




                Package() { "PSTATE",   0,    710000000,     0,    Package() { "GPU", 100, },    Package() {              416            , } },
                Package() { "PSTATE",   1,    675000000,     1,    Package() { "GPU",  91, },    Package() {              384            , } },
                Package() { "PSTATE",   2,    596000000,     2,    Package() { "GPU",  81, },    Package() {              320            , } },
                Package() { "PSTATE",   3,    520000000,     3,    Package() { "GPU",  71, },    Package() {              256            , } },
                Package() { "PSTATE",   4,    414000000,     4,    Package() { "GPU",  56, },    Package() {              192            , } },
                Package() { "PSTATE",   5,    342000000,     5,    Package() { "GPU",  47, },    Package() {              128            , } },
                Package() { "PSTATE",   6,    247000000,     6,    Package() { "GPU",  35, },    Package() {              64            , } },
                Package() { "PSTATE",   7,    180000000,     7,    Package() { "GPU",   0, },    Package() {              48            , } },
                Package() { "PSTATE",   8,            0,     8,    Package() { "GPU",   0, },    Package() {              0            , } },
            }
        )






        Name (P002,






            Package()
            {
                "ENGINE_PSTATE_SET",
                3,
                "GRAPHICS_FREQ_CONTROL",
                "CORE_CLOCK",
                2,
                1,
                TRUE,
                0,
                0,




                Package() { "PSTATE",   0,    280000000,     0,    Package() { "GPU",   0, },    Package() {              128            , } },
                Package() { "PSTATE",   1,            0,     1,    Package() { "GPU",   0, },    Package() {              0            , } },
            }
        )










        If (LGreaterEqual(\_SB.SIDV,0x00020000))
        {


            Store(P001, Index(DeRefOf(Index(RBUF, 4)), 14))
        }
        Else
        {


            Store(P002, Index(DeRefOf(Index(RBUF, 4)), 14))
        }

        Return (RBUF)
    }



    Include("display.asl")



    Include("display2.asl")



    Include("displayext.asl")

    NAME(_DOD, Package()
    {
        0x00024321,
    })



    Device (AVS0)
    {


        Name(_ADR, 0x00024321)

        Method (_CRS, 0x0, NotSerialized)
        {
            Name (RBUF, ResourceTemplate ()
            {
            })
            Return (RBUF)
        }

        Name (_DEP, Package(0x3)
        {
             \_SB_.MMU0,
             \_SB_.IMM0,
             \_SB_.VFE0
        })
    }






    Method (_STA, 0x0)
    {
        Return (0x0f)
    }






    Method (CHDV)
    {
      Name (CHIF, Package()
      {
          1,
          Package()
          {
              "CHILDDEV",
              0,
              0x24321,
              "QCOM_AVStream_850",
              0,
              "Qualcomm Camera AVStream Mini Driver",

              Package()
              {
                  "COMPATIBLEIDS",
                  2,
                  "VEN_QCOM&DEV__AVSTREAM",
                  "QCOM_AVSTREAM",
              },
          },
      })
      Return (CHIF)
    }





    Method (DPCC, 2, NotSerialized)
    {




      return (\_SB_.CCST)
    }

















    Method (DPIN, 2, NotSerialized)
    {




      return (\_SB_.PINA)
    }

    Method (REGR)
    {
        Name (RBUF, Package()
        {
            Package()
            {
                "ForceMaxPerf",
                0,
            },
            Package()
            {
                "ForceStablePowerSettings",
                0,
            },
            Package()
            {
                "ForceActive",
                0,
            },
            Package()
            {
                "DeferForceActive",
                0,
            },
            Package()
            {
                "PreventPowerCollapse",
                0,
            },
            Package()
            {
                "DisableThermalMitigation",
                0,
            },
            Package()
            {
                "DisableTzMDSSRestore",
                1,
            },
            Package()
            {
                "UseLowPTForGfxPerProcess",
                1,
            },
            Package()
            {
                "DisableCDI",
                1,
            },
            Package()
            {
                "GPU64bAddrEnabled",
                1,
            },
            Package()
            {
                "MaxPreemptionOffsets",
                128,
            },
            Package()
            {
                "MaxRequiredDmaQueueEntry",
                8,
            },
            Package()
            {
                "SupportsSecureInAperture",
                1,
            },
            Package()
            {
                "ZeroFlagSupportInPTE",
                1,
            },
            Package()
            {
                "SupportsCacheCoherency",
                1,
            },
            Package()
            {
                "SupportsSHMBridge",
                0,
            },
            Package()
            {
                "SecureCarveoutSize",
                2097152,
            },
            Package()
            {
                "UBWCEnable",
                0,
            },
            Package()
            {
                "allowDrmAbove1080p",
                1,
            },
            Package()
            {
                "ZeroPageLowAddr",
                0x85F00000,
            },
            Package()
            {
                "ZeroPageHighAddr",
                0x0,
            },
            Package()
            {
                "KeepUefiBuffer",
                1,
            },
            Package()
            {
                "GRAPHICS",
                Package()
                {
                    "ForceActive",
                    0,
                },
                Package()
                {
                    "EnableSystemCache",
                    1,
                },
                Package()
                {
                    "EnableSysCacheForGpuhtw",
                    1,
                },
                Package()
                {
                    "DCVS",
                    Package()
                    {
                        "Enable",
                        1,
                    },
                    Package()
                    {
                        "IncreaseFilterBw",
                        131072,
                    },
                    Package()
                    {
                        "DecreaseFilterBw",
                        13107,
                    },
                    Package()
                    {
                        "TargetBusyPct",
                        85,
                    },
                    Package()
                    {
                        "SampleRate",
                        60,
                    },
                    Package()
                    {
                        "TargetBusyPctOffscreen",
                        75,
                    },
                    Package()
                    {
                        "SampleRateOffscreen",
                        20,
                    },
                    Package()
                    {
                        "GpuResetValue",
                        290000000,
                    },
                    Package()
                    {
                        "BusResetValue",
                        1200,
                    },
                },
                Package()
                {
                    "A6x",
                    Package()
                    {
                        "SleepMode",
                        0,
                    },
                    Package()
                    {
                        "DisableICG",
                        0,
                    },
                    Package()
                    {
                        "DisableGmuCG",
                        0,
                    },
                    Package()
                    {
                        "EnableFallbackToDisableSecureMode",
                        0,
                    },
                    Package()
                    {
                        "DisableCPCrashDump",
                        0,
                    },
                },
            },
            Package()
            {
                "VIDEO",
                Package()
                {
                    "ForceActive",
                    0,
                },
                Package()
                {
                    "PreventPowerCollapse",
                    0,
                },
                Package()
                {
                    "EnableSystemCache",
                    1,
                },
            },
            Package()
            {
                "CRYPTO",
                Package()
                {
                    "EnableCryptoVA",
                    1,
                },
            },
            Package()
            {
                "VIDEO_ENCODER",
                Package()
                {
                    "ForceActive",
                    0,
                },
                Package()
                {
                    "PreventPowerCollapse",
                    0,
                },
            },
            Package()
            {
                "DISPLAY",
                Package()
                {
                    "DisableMiracast",
                    1,
                },
                Package()
                {
                    "EnableOEMDriverDependency",
                    1,
                },
                Package()
                {
                    "EnableBridgeDriverDependency",
                    0,
                },
                Package()
                {
                    "DisableRotator",
                    0,
                },
                Package()
                {
                    "DisableMDPBLT",
                    1,
                },
                Package()
                {
                    "DisableExternal",
                    0,
                },
            },
        })

        Return (RBUF)
    }
}
