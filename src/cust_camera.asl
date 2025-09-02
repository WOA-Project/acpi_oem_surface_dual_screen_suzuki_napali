









Include("cust_camera_exasoc.asl")




Device (MPCS)
{
    Name (_DEP, Package(0x1)
    {
        \_SB_.CAMP
    })

    Name (_HID, "QCOM02E8")
    Name (_UID, 24)

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite, 0x0AC65000, 0x00000900)
            Memory32Fixed (ReadWrite, 0x0AC66000, 0x00000900)
            Memory32Fixed (ReadWrite, 0x0AC67000, 0x00000900)

            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {509}
            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {510}
            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {511}
        })

        Return (RBUF)
    }



}








Device (JPGE)
{
    Name (_DEP, Package(0x2)
    {
        \_SB_.CAMP,
        \_SB_.MMU0
    })

    Name (_HID, "QCOM0276")
    Name (_UID, 23)

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {

            Memory32Fixed ( ReadWrite, 0x0AC4E000, 0x0340 )


            Memory32Fixed ( ReadWrite, 0x0AC52000, 0x01B4 )


            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) { 506 }


            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) { 507 }
        })

        Return (RBUF)
    }

    Method (PERF)
    {
        Name (EBUF, Package()
        {
            Package()
            {
                "COMPONENT",
                0,

                Package()
                {
                    "PSTATE_SET",
                    0,
                    0,
                    "JPEG0_CLK",

                    Package()
                    {
                        "PSTATE",
                        0,
                        600000000,
                        600000000,
                        404000000,
                        200000000,
                    },
                 },
            },

            Package()
            {
                "COMPONENT",
                1,

                Package() { "PSTATE_SET", 0, 0, "DMA_CLK", Package() { "PSTATE", 0, 600000000, 600000000, 200000000,    }, },
            },
        })

        Return (EBUF)
    }
}




Device (VFE0)
{
    Name (_DEP, Package(0x3)
    {
        \_SB_.MMU0,
        \_SB_.PEP0,
        \_SB_.CAMP
    })

    Name (_HID, "QCOM0243")
    Name (_UID, 22)

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {

            Memory32Fixed (ReadWrite, 0xAC00000, 0x20000)


            Memory32Fixed (ReadWrite, 0xAC48000, 0x1000)


            Memory32Fixed (ReadWrite, 0xAC5A000, 0x4000)


            Memory32Fixed (ReadWrite, 0xAC6B000, 0x1000)


            Memory32Fixed (ReadOnly, 0xAC6F000, 0x8000)


            Memory32Fixed (ReadOnly, 0xAC87000, 0xA000)


            Memory32Fixed (ReadOnly, 0xAC91000, 0xA000)


            Memory32Fixed (ReadWrite, 0xACAF000, 0x5000)


            Memory32Fixed (ReadWrite, 0xACB6000, 0x5000)


            Memory32Fixed (ReadWrite, 0xACC4000, 0x5000)


            Memory32Fixed (ReadWrite, 0x8BF00000, 0x500000)



            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {493}


            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {495}



            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {497}


            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {499}


            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {501}


            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {494}


            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {496}


            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {498}


            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {500}


        })
        Return (RBUF)
    }
    Method (PERF)
    {
            Name (EBUF, Package()
            {






























            Package()
            {
                "COMPONENT",
                0,

                Package()
                {
                    "PSTATE_SET",
                    0,
                    0,
                    "IFE0_CLK",
                    Package()
                    {
                            "PSTATE",
                            0,

                            600000000,
                            480000000,
                            404000000,
                            0,
                    },
                },


                Package()
                {
                    "PSTATE_SET",
                    1,
                    1,
                    "HF0_UNCOMP_BANDWIDTH",
                    Package()
                    {
                           "PSTATE",
                           0,
                           38000000000,
                           35000000000,
                           28000000000,
                           23000000000,
                           20000000000,
                           16000000000,
                           14000000000,
                           12000000000,
                            4000000000,
                            3500000000,
                            3300000000,
                            3100000000,
                            2900000000,
                            2700000000,
                            2500000000,
                            2300000000,
                            2100000000,
                            1900000000,
                            1700000000,
                            1500000000,
                            1300000000,
                            1100000000,
                            900000000,
                            700000000,
                            500000000,
                            400000000,
                            300000000,
                            200000000,
                            100000000,
                            0,
                    },
                },
                Package()
                {
                    "PSTATE_SET",
                    2,
                    1,
                    "HF0_BANDWIDTH",
                    Package()
                    {
                            "PSTATE",
                            0,
                           38000000000,
                           35000000000,
                           28000000000,
                           23000000000,
                           20000000000,
                           16000000000,
                           14000000000,
                           12000000000,
                            4000000000,
                            3500000000,
                            3300000000,
                            3100000000,
                            2900000000,
                            2700000000,
                            2500000000,
                            2300000000,
                            2100000000,
                            1900000000,
                            1700000000,
                            1500000000,
                            1300000000,
                            1100000000,
                            900000000,
                            700000000,
                            500000000,
                            400000000,
                            300000000,
                            200000000,
                            100000000,
                            0,
                    },
                },


            },

            Package()
            {
                "COMPONENT",
                1,

                Package()
                {
                    "PSTATE_SET",
                    0,
                    0,
                    "IFE1_CLK",
                    Package()
                    {
                            "PSTATE",
                            0,

                            600000000,
                            480000000,
                            404000000,
                            0,
                    },
                },


                Package()
                {
                    "PSTATE_SET",
                    1,
                    1,
                    "HF1_UNCOMP_BANDWIDTH",
                    Package()
                    {
                           "PSTATE",
                           0,
                           38000000000,
                           35000000000,
                           28000000000,
                           23000000000,
                           20000000000,
                           16000000000,
                           14000000000,
                           12000000000,
                            4000000000,
                            3500000000,
                            3300000000,
                            3100000000,
                            2900000000,
                            2700000000,
                            2500000000,
                            2300000000,
                            2100000000,
                            1900000000,
                            1700000000,
                            1500000000,
                            1300000000,
                            1100000000,
                            900000000,
                            700000000,
                            500000000,
                            400000000,
                            300000000,
                            200000000,
                            100000000,
                            0,
                    },
                },
                Package()
                {
                    "PSTATE_SET",
                    2,
                    1,
                    "HF1_BANDWIDTH",
                    Package()
                    {
                           "PSTATE",
                           0,
                           38000000000,
                           35000000000,
                           28000000000,
                           23000000000,
                           20000000000,
                           16000000000,
                           14000000000,
                           12000000000,
                            4000000000,
                            3500000000,
                            3300000000,
                            3100000000,
                            2900000000,
                            2700000000,
                            2500000000,
                            2300000000,
                            2100000000,
                            1900000000,
                            1700000000,
                            1500000000,
                            1300000000,
                            1100000000,
                            900000000,
                            700000000,
                            500000000,
                            400000000,
                            300000000,
                            200000000,
                            100000000,
                            0,
                    },
                },


            },

            Package()
            {
                "COMPONENT",
                2,

                Package()
                {
                    "PSTATE_SET",
                    0,
                    0,
                    "IFE_LITE_CLK",
                    Package()
                    {
                            "PSTATE",
                            0,

                            600000000,
                            480000000,
                            404000000,
                            0,
                    },
                },





            },

            Package()
            {
                "COMPONENT",
                3,
                Package()
                {
                    "PSTATE_SET",
                    0,
                    0,
                    "ICP_CLK",
                    Package()
                    {
                            "PSTATE",
                            0,

                            600000000,
                            400000000,
                            0,
                    },
                },


            },

            Package()
            {
                "COMPONENT",
                4,
                Package()
                {
                    "PSTATE_SET",
                    0,
                    0,
                    "IPE0_CLK",
                    Package()
                    {
                            "PSTATE",
                            0,

                            600000000,
                            480000000,
                            404000000,
                            0,
                    },
                },
                Package()
                {
                    "PSTATE_SET",
                    1,
                    0,
                    "IPE1_CLK",
                    Package()
                    {
                            "PSTATE",
                            0,

                            600000000,
                            480000000,
                            404000000,
                            0,
                    },
                },





            },

            Package()
            {
                "COMPONENT",
                5,
                Package()
                {
                    "PSTATE_SET",
                    0,
                    0,
                    "BPS_CLK",
                    Package()
                    {
                            "PSTATE",
                            0,

                            600000000,
                            480000000,
                            404000000,
                            0,
                    },
                },




            },

            Package()
            {
                "COMPONENT",
                6,
                Package()
                {
                    "PSTATE_SET",
                    0,
                    0,
                    "LRME_CLK",
                    Package()
                    {
                            "PSTATE",
                            0,

                            400000000,
                            320000000,
                            269000000,
                            0,
                    },
                },



            },

            Package()
            {
                "COMPONENT",
                7,
                Package()
                {
                    "PSTATE_SET",
                    0,
                    0,
                    "FD_CLK",
                    Package()
                    {
                            "PSTATE",
                            0,

                            600000000,
                            538000000,
                            400000000,
                            0,
                    },
                },



            },

        })

        Return (EBUF)
    }
}
