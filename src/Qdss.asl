













Device (QDSS)
{
    Name (_DEP, Package () { \_SB_.PEP0 })

    Name (_HID, "QCOM028C")
	Alias(\_SB.PSUB, _SUB)
    Name (_UID, 0)

    Method (_CRS, 0x0, NotSerialized)
    {
        Return
        (
            ResourceTemplate ()
            {





                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {302}

                Memory32Fixed (ReadWrite, 0x06000000, 0x00049000)

                Memory32Fixed (ReadWrite, 0x16000000, 0x1000000)



                Memory32Fixed (ReadWrite, 0x07000000, 0x00901000)
	        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {67}
            }
        )
    }





    Method (QBAL)
    {
        Return (0x0C2B000)
    }
    Method (XULC)
    {
        Return (0x2)
    }

    Method (XUPC)
    {
        Return (0x8)
    }

    Method (X3LN)
    {
        Return (0x1)
    }
    METHOD (CPID)
    {
        Return (\_SB_.SOID)
    }





    Method (CHPD)
    {
        Return (0x00000000)
    }





    Method (PSIL)
    {
        Return (0)
    }






    Method (PWRV)
    {
        Return (0x1)
    }












    Method (ETMV)
    {
        Return (0x4)
    }
















    Method (OFFS)
    {
        Return
        (
            Package ()
            {

                Package () { "CSR",         0x00001000, 0x00001000, 0x0,        0x06000000},
                Package () { "STM",         0x00002000, 0x00001000, 0x0,        0x06000000},
                Package () { "QATB_FUNNEL", 0x00005000, 0x00001000, 0x3,        0x06000000},
                Package () { "TGU",         0x0000E000, 0x00001000, 0x0,        0x06000000},
                Package () { "CTI0",        0x00010000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI1",        0x00011000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI2",        0x00012000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI3",        0x00013000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI4",        0x00014000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI5",        0x00015000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI6",        0x00016000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI7",        0x00017000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI8",        0x00018000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI9",        0x00019000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI10",       0x0001A000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI11",       0x0001B000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI12",       0x0001C000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI13",       0x0001D000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI14",       0x0001E000, 0x00001000, 0x1,        0x06000000},
                Package () { "CTI15",       0x0001F000, 0x00001000, 0x1,        0x06000000},
                Package () { "TPIU",        0x00040000, 0x00001000, 0x0,        0x06000000},
                Package () { "IN_FUN0",        0x00041000, 0x00001000, 0x3,        0x06000000},
                Package () { "IN_FUN1",        0x00042000, 0x00001000, 0x3,        0x06000000},
                Package () { "IN_FUN2",        0x00043000, 0x00001000, 0x3,        0x06000000},
                Package () { "MERG_FUN",       0x00045000, 0x00001000, 0x3,        0x06000000},
                Package () { "ETR",         0x00048000, 0x00001000, 0x0,        0x06000000},
                Package () { "MSS_QATBFUN",    0x00832000, 0x00001000, 0x3,        0x06000000},
                Package () { "LPASS_QATBFUN",  0x00845000, 0x00001000, 0x3,        0x06000000},
                Package () { "TURING_QATBFUN", 0x00861000, 0x00001000, 0x3,        0x06000000},
                Package () { "SPSS_QATBFUN",   0x00883000, 0x00001000, 0x3,        0x06000000},
                Package () { "GPU_FUN",        0x00943000, 0x00001000, 0x3,        0x06000000},
                Package () { "GPU_QATBFUN",    0x00944000, 0x00001000, 0x3,        0x06000000},
                Package () { "WCSS_FUN",       0x0099E000, 0x00001000, 0x3,        0x06000000},
                Package () { "DLST_QATBFUN",   0x009C1000, 0x00001000, 0x3,        0x06000000},
                Package () { "DL0_QATBFUNNEL", 0x009E2000, 0x00001000, 0x3,        0x06000000},
                Package () { "DL1_QATBFUNNEL", 0x009E7000, 0x00001000, 0x3,        0x06000000},
                Package () { "SWAO_CTI0",      0x00B04000, 0x00001000, 0x1,        0x06000000},
                Package () { "SWAO_CTI1",      0x00B05000, 0x00001000, 0x1,        0x06000000},
                Package () { "SWAO_CTI2",      0x00B06000, 0x00001000, 0x1,        0x06000000},
                Package () { "SWAO_CTI3",      0x00B07000, 0x00001000, 0x1,        0x06000000},
                Package () { "SWAO_FUN0",      0x00B08000, 0x00001000, 0x3,        0x06000000},
                Package () { "SWAO_CSR",       0x00B0E000, 0x00001000, 0x0,        0x06000000},
                Package () { "SSC_FUN0",       0x00B14000, 0x00001000, 0x3,        0x06000000},
                Package () { "DLMM_QATBFUN",   0x00C0B000, 0x00001000, 0x3,        0x06000000},




                Package () { "ETM_0",          0x00440000, 0x00001000, 0x2,        0x07000000},
                Package () { "ETM_1",          0x00540000, 0x00001000, 0x2,        0x07000000},
                Package () { "ETM_2",          0x00640000, 0x00001000, 0x2,        0x07000000},
                Package () { "ETM_3",          0x00740000, 0x00001000, 0x2,        0x07000000},
                Package () { "ETM_4",          0x00040000, 0x00001000, 0x2,        0x07000000},
                Package () { "ETM_5",          0x00140000, 0x00001000, 0x2,        0x07000000},
                Package () { "ETM_6",          0x00240000, 0x00001000, 0x2,        0x07000000},
                Package () { "ETM_7",          0x00340000, 0x00001000, 0x2,        0x07000000},

                Package () { "CPU_FUN0",       0x00800000, 0x00001000, 0x3,        0x07000000},
                Package () { "CPU_FUN1",       0x00810000, 0x00001000, 0x3,        0x07000000},

                Package () { "APSS_CTI0",      0x008E0000, 0x00001000, 0x1,        0x07000000},
                Package () { "APSS_CTI1",      0x008F0000, 0x00001000, 0x1,        0x07000000},
                Package () { "APSS_CTI2",      0x00900000, 0x00001000, 0x1,        0x07000000},
            }
        )
    }





    Method (S2FP)
    {
        Return
        (
            Package ()
            {
                Package ()
                {
                    "STM",
                    Package () { "MERG_FUN",    0 },
                    Package () { "IN_FUN0",     7 },
                },
                Package ()
                {
                    "ETM",
                    Package () { "MERG_FUN",    2 },
                    Package () { "IN_FUN2",     5 },
                    Package () { "CPU_FUN1",    0 },
                    Package () { "CPU_FUN0",    0 },
                    Package () { "CPU_FUN0",    1 },
                    Package () { "CPU_FUN0",    2 },
                    Package () { "CPU_FUN0",    3 },
                    Package () { "CPU_FUN0",    4 },
                    Package () { "CPU_FUN0",    5 },
                    Package () { "CPU_FUN0",    6 },
                    Package () { "CPU_FUN0",    7 },
                    Package () { "CPU_FUN1",    1 },
                },
                Package ()
                {
                    "BUS",
                    Package () { "MERG_FUN",       0 },
                    Package () { "IN_FUN0",        6 },
                    Package () { "QATB_FUNNEL",    2 },
                    Package () { "GPU_QATBFUN",    1 },
                    Package () { "QATB_FUNNEL",    3 },
                    Package () { "DLMM_QATBFUN",   2 },
                    Package () { "DLMM_QATBFUN",   3 },
                    Package () { "DLMM_QATBFUN",   4 },
                    Package () { "DLMM_QATBFUN",   5 },
                    Package () { "DLMM_QATBFUN",   6 },
                    Package () { "DLMM_QATBFUN",   7 },

                    Package () { "QATB_FUNNEL",    4 },
                    Package () { "DL0_QATBFUNNEL", 1 },
                    Package () { "DL0_QATBFUNNEL", 2 },
                    Package () { "DL0_QATBFUNNEL", 3 },
                    Package () { "DL0_QATBFUNNEL", 4 },
                    Package () { "DL0_QATBFUNNEL", 5 },
                    Package () { "DL0_QATBFUNNEL", 6 },
                    Package () { "DL0_QATBFUNNEL", 7 },

                    Package () { "DL1_QATBFUNNEL", 0 },
                    Package () { "DL1_QATBFUNNEL", 1 },
                    Package () { "DL1_QATBFUNNEL", 2 },

                    Package () { "QATB_FUNNEL",    5 },
                    Package () { "DLST_QATBFUN",   1 },
                    Package () { "WCSS_FUN",       0 },
                    Package () { "DLST_QATBFUN",   2 },

                    Package () { "QATB_FUNNEL",    6 },
                    Package () { "LPASS_QATBFUN",  1 },

                    Package () { "QATB_FUNNEL",    7 },
                    Package () { "TURING_QATBFUN", 1 },
                    Package () { "IN_FUN0",        2 },

                    Package () { "IN_FUN0",        3 },
                    Package () { "SPSS_QATBFUN",   2 },

                    Package () { "IN_FUN0",        5 },

                    Package () { "MERG_FUN",    1 },
                    Package () { "IN_FUN1",        2 },

                    Package () { "MERG_FUN",    2 },
                    Package () { "IN_FUN2",        0 },

                    Package () { "IN_FUN2",        1 },
                    Package () { "SWAO_FUN0",      1 },

                    Package () { "SWAO_FUN0",      6 },
                    Package () { "SSC_FUN0",       1 },
                    Package () { "SSC_FUN0",       3 },
                    Package () { "SSC_FUN0",       4 },

                    Package () { "IN_FUN2",        5 },
                    Package () { "CPU_FUN1",       3 },
                    Package () { "CPU_FUN1",       4 },
                    Package () { "CPU_FUN1",       5 },
                    Package () { "CPU_FUN1",       6 },
                },
                Package ()
                {
                    "GFX",
                    Package () { "MERG_FUN",       2 },
                    Package () { "IN_FUN2",        6 },

                    Package () { "MERG_FUN",       0 },
                    Package () { "IN_FUN0",        6 },
                    Package () { "QATB_FUNNEL",    2 },
                    Package () { "GPU_QATBFUN",    1 },
                },
                Package ()
                {
                    "MODEMQ6ETM",
                    Package () { "MERG_FUN",       2 },
                    Package () { "IN_FUN2",        0 },
                },
                Package ()
                {
                    "QDSS",
                    Package () { "MERG_FUN",       0 },
                    Package () { "IN_FUN0",        6 },
                    Package () { "QATB_FUNNEL",    0 },

                    Package () { "GPU_QATBFUN",    0 },

                    Package () { "DLMM_QATBFUN",   1 },

                    Package () { "DL0_QATBFUNNEL", 0 },

                    Package () { "LPASS_QATBFUN",  0 },

                    Package () { "TURING_QATBFUN", 0 },

                },
                Package ()
                {
                    "APSS",
                    Package () { "MERG_FUN",       2 },
                    Package () { "IN_FUN2",        5 },
                    Package () { "CPU_FUN1",       0 },
                    Package () { "CPU_FUN1",       1 },
                    Package () { "CPU_FUN1",       2 },
                    Package () { "CPU_FUN1",       3 },
                    Package () { "CPU_FUN1",       4 },
                    Package () { "CPU_FUN1",       5 },
                    Package () { "CPU_FUN1",       6 },
                    Package () { "CPU_FUN0",       0 },
                    Package () { "CPU_FUN0",       1 },
                    Package () { "CPU_FUN0",       2 },
                    Package () { "CPU_FUN0",       3 },
                    Package () { "CPU_FUN0",       4 },
                    Package () { "CPU_FUN0",       5 },
                    Package () { "CPU_FUN0",       6 },
                    Package () { "CPU_FUN0",       7 },
                },
                Package ()
                {
                    "MSS",
                    Package () { "MERG_FUN",       2 },
                    Package () { "IN_FUN2",        2 },
                    Package () { "MSS_QATBFUN",    1 },
                },
                Package ()
                {
                    "NAV",
                    Package () { "MERG_FUN",       1 },
                    Package () { "IN_FUN1",        2 },
                },
                Package ()
                {
                    "OLC",
                    Package () { "MERG_FUN",       2 },
                    Package () { "IN_FUN2",        5 },
                    Package () { "CPU_FUN1",       2 },
                },
                Package ()
                {
                    "SP",
                    Package () { "MERG_FUN",       0 },
                    Package () { "IN_FUN0",        3 },
                    Package () { "SPSS_QATBFUN",   0 },
                },
                Package ()
                {
                    "SWAO",
                    Package () { "MERG_FUN",       2 },
                    Package () { "IN_FUN2",        1 },
                    Package () { "SWAO_FUN0",      7 },
                },
                Package ()
                {
                    "LLMGOLD",
                    Package () { "MERG_FUN",       2 },
                    Package () { "IN_FUN2",        5 },
                    Package () { "CPU_FUN1",       6 },
                },
                Package ()
                {
                    "LLMSILVER",
                    Package () { "MERG_FUN",       2 },
                    Package () { "IN_FUN2",        5 },
                    Package () { "CPU_FUN1",       5 },
                },
                Package ()
                {
                    "MSSDL",
                    Package () { "MERG_FUN",       2 },
                    Package () { "IN_FUN2",        2 },
                    Package () { "MSS_QATBFUN",    0 },
                },
            }
        )
    }











    Method (HWEV)
    {
        Return
        (
            Package ()
            {

                Package () { 0x06001020,  0x10,  0x0,   1},
                Package () { 0x010BA020,  0x80,  0x0,   0},
            }
        )
    }
}


Include("qdss_qpmda.asl")

Include("qdss_tmc.asl")

Include("qdss_replicator.asl")

Include("qdss_tgu.asl")

Include("qdss_remote_etm.asl")
Include("qdss_verifyclocks.asl")
