













Device (CAMP)
{
    Name (_DEP, Package(0x3)
    {
        \_SB_.PEP0,
        \_SB_.PMIC,
		\_SB_.PMAP
    })

    Name (_HID, "QCOM026F")
    Name (_UID, 27)

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {

            Memory32Fixed ( ReadWrite, 0x0AC40000, 0x0000006C )


            Memory32Fixed ( ReadWrite, 0x0AC42000, 0x00004E8C )


            Memory32Fixed ( ReadWrite, 0x0AC4A000, 0x00000C1C )


            Interrupt( ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) { 492 }
        })

        Return (RBUF)
    }

































    Method (PCFG, 0x0, Serialized)
    {
        Return
        (
            Package()
            {
                Package ()
                {
                    0x00000003,
                    0x00210503,
                    0x00100010,
                    0x00000000,
                    0x00000000,
                    0x00000000,
                    0x00000000,
                    0x00000000,
                    0x00000000
                }
            }
        )
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
                    "CAMP_CLK",

                    Package()
                    {
                        "PSTATE",
                        0,
                        37500000,
                        19200000,
                    },
                },

                Package()
                {
                    "PSTATE_SET",
                    1,
                    1,
                    "NRT_UNCOMP_BANDWIDTH",
                    Package()
                    {
                            "PSTATE",
                            0,
                           12000000000,
                           11500000000,
                           11000000000,
                           10500000000,
                           10000000000,
                            9500000000,
                            9000000000,
                            8500000000,
                            8000000000,
                            7500000000,
                            7000000000,
                            6500000000,
                            6000000000,
                            5500000000,
                            5000000000,
                            4500000000,
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
                    "NRT_BANDWIDTH",
                    Package()
                    {
                            "PSTATE",
                            0,
                           12000000000,
                           11500000000,
                           11000000000,
                           10500000000,
                           10000000000,
                            9500000000,
                            9000000000,
                            8500000000,
                            8000000000,
                            7500000000,
                            7000000000,
                            6500000000,
                            6000000000,
                            5500000000,
                            5000000000,
                            4500000000,
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
                    1,
                    "HF0_UNCOMP_BANDWIDTH",
                    Package()
                    {
                        "PSTATE",
                        0,
                        1100000000,
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
                    1,
                    1,
                    "HF0_BANDWIDTH",
                    Package()
                    {
                        "PSTATE",
                        0,
                        1100000000,
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
                    "NRT_UNCOMP_BANDWIDTH",
                    Package()
                    {
                        "PSTATE",
                        0,
                        1100000000,
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
                    3,
                    1,
                    "NRT_BANDWIDTH",
                    Package()
                    {
                        "PSTATE",
                        0,
                        1100000000,
                         400000000,
                         300000000,
                         200000000,
                         100000000,
                                 0,
                    },
                },
            },
        })

        Return (EBUF)
    }
}




Device (CAMS)
{
    Name (_DEP, Package(0x1)
    {
        \_SB_.MPCS
    })

    Name (_HID, "QCOM0245")
    Name (_UID, 21)


    Method (_STA)
    {
        Return (0xf)
    }























    Method (SCFG, 0x0, Serialized)
    {
        Return
        (
            Package()
            {
                Package ()
                {
                    "com.ms.sensormodule.surface_rfc_imx351.bin",
                    "com.ms.tuning.surface_rfc_imx351.bin",
                    0x00160034,
                    0x03510016,
                    0x00000000
                }
            }
        )
    }


    Name(PGID, Buffer(10) {"\\_SB.CAMS"})

    Name(DBUF, Buffer(DBFL) {})
    CreateByteField(DBUF, 0x0, STAT)

    CreateByteField(DBUF, 2, DVAL)
    CreateField(DBUF, 24, 160, DEID)

    Method (_S1D, 0) { Return (3) }
    Method (_S2D, 0) { Return (3) }
    Method (_S3D, 0) { Return (3) }

    Method(_PS0, 0x0, NotSerialized)
    {
        Store(Buffer(ESNL){}, DEID)
        Store(0, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }

    Method(_PS3, 0x0, NotSerialized)
    {
        Store(Buffer(ESNL){}, DEID)
        Store(3, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }
}

Scope (\_SB.IC11)
{
    Name (PMCR, ResourceTemplate ()
    {
        I2CSerialBus(0x18, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC11", 0, ResourceConsumer, , )
    })

    OperationRegion (ORPM, GenericSerialBus, Zero, 0x0100)
    Field (ORPM, BufferAcc, NoLock, Preserve)
    {
        Connection (PMCR),
        Offset (0x02),
        AccessAs (BufferAcc, AttribByte),
        LDO2,   8,
        AccessAs (BufferAcc, AttribByte),
        LDO3,   8,
        Offset (0x08),
        AccessAs (BufferAcc, AttribByte),
        LDEN,   8
    }

    Name (AVBL, Zero)
    Method (_REG, 2, NotSerialized)
    {
        If ((Arg0 == 0x09))
        {
            ^AVBL = Arg1
        }
    }
}

Scope (\_SB.GIOE)
{
    OperationRegion (GPOC, GeneralPurposeIo, Zero, 0x02)
    Field (\_SB.GIOE.GPOC, ByteAcc, NoLock, Preserve)
    {
        Connection (
            GpioIo (Exclusive, PullNone, 0x0000, 0x0258, IoRestrictionOutputOnly,
                "\\_SB.GIOE", 0x00, ResourceConsumer, ,
                )
                {
                    0x0005
                }
        ),
        FFCR,   1,
        Connection (
            GpioIo (Exclusive, PullNone, 0x0000, 0x0258, IoRestrictionOutputOnly,
                "\\_SB.GIOE", 0x00, ResourceConsumer, ,
                )
                {
                    0x0006
                }
        ),
        FFCE,   1
    }
}




Device (CAMF)
{
    Name (_DEP, Package(0x3)
    {
        \_SB_.MPCS,
        \_SB_.GIOE,
        \_SB_.IC11
    })

    Name (_HID, "QCOM024A")
    Name (_UID, 26)


    Method (_STA)
    {
        Return (0xf)
    }

    Method (SCFG, 0x0, Serialized)
    {
        Return
        (
            Package()
            {
                Package ()
                {
                    "com.ms.sensormodule.surface_ffc_imx351.bin",
                    "com.ms.tuning.surface_ffc_imx351.bin",
                    0x00160034,
                    0x03510016,
                    0x00000000
                }
            }
        )
    }


    Name(PGID, Buffer(10) {"\\_SB.CAMF"})

    Name(DBUF, Buffer(DBFL) {})
    CreateByteField(DBUF, 0x0, STAT)

    CreateByteField(DBUF, 2, DVAL)
    CreateField(DBUF, 24, 160, DEID)

    Method (_S1D, 0) { Return (3) }
    Method (_S2D, 0) { Return (3) }
    Method (_S3D, 0) { Return (3) }

    Name (PMIB, Buffer (0x03){})
    CreateByteField (PMIB, Zero, PBST)
    CreateByteField (PMIB, 0x02, PBDT)
    Method(_PS0, 0x0, NotSerialized)
    {
        If ((\_SB.IC11.AVBL == One))
        {
            PBDT = 0x1A
            \_SB.IC11.LDO2 = PMIB
            PMIB = \_SB.IC11.LDEN
            If ((PBST == Zero))
            {
                If (TEV1 ())
                {
                    PBDT |= 0x04
                    \_SB.IC11.LDEN = PMIB
                    Sleep (One)
                    PBDT |= 0x06
                    \_SB.IC11.LDEN = PMIB
                }
                Else
                {
                    \_SB.GIOE.FFCE = One
                    Sleep (One)
                    PBDT |= 0x02
                    \_SB.IC11.LDEN = PMIB
                }
            }
        }

        \_SB.GIOE.FFCR = One

        Store(Buffer(ESNL){}, DEID)
        Store(0, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }

        Sleep (0x08)
    }

    Method(_PS3, 0x0, NotSerialized)
    {
        \_SB.GIOE.FFCR = Zero
        If ((\_SB.IC11.AVBL == One))
        {
            PMIB = \_SB.IC11.LDEN
            If ((PBST == Zero))
            {
                If (TEV1 ())
                {
                    PBDT &= 0xF9
                    \_SB.IC11.LDEN = PMIB
                }
                Else
                {
                    \_SB.GIOE.FFCE = Zero
                    Sleep (One)
                    PBDT &= 0xFD
                    \_SB.IC11.LDEN = PMIB
                }
            }
        }

        Store(Buffer(ESNL){}, DEID)
        Store(3, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }
}




Device (CAMI)
{
    Name (_DEP, Package(0x1)
    {
        \_SB_.MPCS
    })

    Name (_HID, "QCOM0247")
    Name (_UID, 28)


    Method (_STA)
    {
        Return (0x0)
    }

    Method (SCFG, 0x0, Serialized)
    {
        Return
        (
            Package()
            {
                Package ()
                {
                    "com.ms.sensormodule.surface_mono_ov7251.bin",
                    "com.ms.tuning.surface_mono_ov7251.bin",
                    0x001500C0,
                    0x7750300A,
                    0x00000000
                }
            }
        )
    }


    Name(PGID, Buffer(10) {"\\_SB.CAMI"})

    Name(DBUF, Buffer(DBFL) {})
    CreateByteField(DBUF, 0x0, STAT)

    CreateByteField(DBUF, 2, DVAL)
    CreateField(DBUF, 24, 160, DEID)

    Method (_S1D, 0) { Return (3) }
    Method (_S2D, 0) { Return (3) }
    Method (_S3D, 0) { Return (3) }

    Method(_PS0, 0x0, NotSerialized)
    {
        Store(Buffer(ESNL){}, DEID)
        Store(0, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }

    Method(_PS3, 0x0, NotSerialized)
    {
        Store(Buffer(ESNL){}, DEID)
        Store(3, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }
}




Device (FLSH)
{
    Name (_DEP, Package(0x1)
    {
        \_SB_.CAMP
    })

    Name (_HID, "QCOM025C")
    Name (_UID, 25)

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {



        })

        Return (RBUF)
    }
}
