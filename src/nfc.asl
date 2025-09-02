







Device (NFC1)
{
    Name (_HID, "MSHW0135")
    Name (_DEP, Package (0x03)
    {
        \_SB.PEP0,
        \_SB.I2C4,
        \_SB.GIO0
    })

    Method (_PLD, 0, Serialized)
    {
        Name (PLDP, Package ()
        {
            Buffer (0x14)
            {
                                0x82, 0x00, 0x00, 0x00, 0x29, 0x00, 0x29, 0x00,
                0x68, 0x09, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,
                0xDF, 0x04, 0x37, 0x02
            }
        })
        Return (PLDP)
    }

    Name(_CRS, ResourceTemplate()
    {
        I2CSerialBus(0x28, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.I2C4", 0, ResourceConsumer, , )
        GpioInt(Edge, ActiveHigh, Exclusive, PullDown, 0, "\\_SB.GIO0", 0, ResourceConsumer, , ) {63}
    })
        Scope(GIO0)
        {
           OperationRegion (NFPO, GeneralPurposeIO, Zero, 2)
        }
        Field(\_SB_.GIO0.NFPO, ByteAcc, NoLock, Preserve)
        {
            Connection(
            GpioIo (Shared, PullNone, 0x0000, 0x0000, IoRestrictionNone,
                "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                )
                {
                    0x000C
                }
            ),
            MGPE, 1,
            Connection(
            GpioIo (Shared, PullNone, 0x0000, 0x0000, IoRestrictionNone,
                "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                )
                {
                    0x0032
                }
            ),
            MGP4, 1
        }
           Method(POON, 0x0, NotSerialized)
            {
                If (TEV3 ())
                {
                Store(One, MGPE)
                }
                Else
                {
                Store(One, MGP4)
                }
            }

            Method(POOF, 0x0, NotSerialized)
            {
                If (TEV3 ())
                {
                Store(Zero, MGPE)
                }
                Else
                {
                Store(Zero, MGP4)
                }
            }

    Name(NFCF, ResourceTemplate()
    {
        GpioIO (Exclusive, PullNone, 0, 0, IoRestrictionNone, "\\_SB.GIO0", 0, ResourceConsumer, , ) {62}
    })
        Scope(GIO0)
        {
            OperationRegion (NFFO, GeneralPurposeIO, Zero, One)
        }
        Field(\_SB_.GIO0.NFFO, ByteAcc, NoLock, Preserve)
        {
            Connection (\_SB.NFC1.NFCF),
            MGFE, 1
        }
            Method(FWON, 0x0, NotSerialized)
            {
                Store(One, MGFE)
            }
            Method(FWOF, 0x0, NotSerialized)
            {
                Store(Zero, MGFE)
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                Store("Method NFC _DSM begin", Debug)
                If(LEqual(Arg0, Buffer(0x10)
                {
                    0xc4, 0xf6, 0xe7, 0xa2, 0x38, 0x96, 0x85, 0x44, 0x9f, 0x12, 0x6b, 0x4e,
                    0x20, 0xb6, 0x0d, 0x63
                }))
                {
                   If(LEqual(Arg2, Zero))
                   {
                        Store("Method NFC _DSM QUERY", Debug)
                        If(LEqual(Arg1, One))
                        {
                            Return(Buffer(One)
                            {
                                0x0f
                            })
                        }
                    }
                    If(LEqual(Arg2, One))
                    {
                        Store("Method NFC _DSM SETFWMODE", Debug)



                        If(LEqual(Arg3, One))
                        {
                    \_SB.NFC1.POOF ()
                    \_SB.NFC1.FWON ()
                    Sleep (One)
                    \_SB.NFC1.POON ()
                    Sleep (0x14)
                }



                        If(LEqual(Arg3, Zero))
                        {
                    \_SB.NFC1.POOF ()
                    \_SB.NFC1.FWOF ()
                    Sleep (One)
                    \_SB.NFC1.POON ()
                    Sleep (0x14)
                }
            }
                   If(LEqual(Arg2, 0x2))
                   {
                        Store("Method NFC _DSM SETPOWERMODE", Debug)
                        If(LEqual(Arg3, One))
                        {
                            \_SB_.NFC1.POON()
                             Sleep(0x14)
                        }
                        If(LEqual(Arg3, Zero))
                        {
                            \_SB_.NFC1.POOF()
                            Sleep(0x14)
                        }
                    }
                        If(LEqual(Arg2, 0x3))
                        {
                            Store("Method NFC _DSM EEPROM Config", Debug)
                            Return(Buffer(0x0114)
                            {
                                0x4D, 0x65, 0x72, 0x6C, 0x69, 0x6E, 0x00, 0x00,
                                0x00, 0x00, 0x00, 0x20, 0x10, 0x01, 0x17, 0x00,
                                0x40, 0x01, 0x01, 0x41, 0x01, 0x02, 0x43, 0x01,
                                0x43, 0x12, 0x01, 0x02, 0x42, 0x01, 0x0F, 0xEC,
                                0x01, 0x01, 0xED, 0x01, 0x01, 0x03, 0x01, 0x01,
                                0xF2, 0x01, 0x01, 0x3A, 0x08, 0x00, 0x00, 0x59,
                                0x01, 0x59, 0x01, 0x59, 0x01, 0x0D, 0x03, 0x24,
                                0x03, 0x81, 0x34, 0xD2, 0x23, 0x04, 0x18, 0x4A,
                                0x40, 0x00, 0x20, 0x00, 0x01, 0x28, 0x20, 0x60,
                                0x02, 0x32, 0x20, 0x70, 0x02, 0x3A, 0x00, 0x40,
                                0x02, 0x4F, 0x00, 0x60, 0x02, 0x86, 0x00, 0x48,
                                0x02, 0xA0, 0x00, 0x48, 0x00, 0xC0, 0x00, 0x08,
                                0x00, 0xD7, 0x00, 0x18, 0x00, 0x0D, 0x01, 0x28,
                                0x02, 0x00, 0x00, 0x18, 0x02, 0x00, 0x20, 0x00,
                                0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20, 0x00,
                                0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20, 0x00,
                                0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20, 0x00,
                                0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20, 0x00,
                                0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20, 0x00,
                                0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20, 0x00,
                                0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                0x00, 0x47, 0x00, 0x20, 0x00, 0x01, 0x28, 0x20,
                                0x60, 0x02, 0x32, 0x20, 0x70, 0x02, 0x3A, 0x00,
                                0x40, 0x02, 0x4F, 0x00, 0x60, 0x02, 0x86, 0x00,
                                0x48, 0x02, 0xA0, 0x00, 0x48, 0x00, 0xC0, 0x00,
                                0x08, 0x00, 0xD7, 0x00, 0x18, 0x00, 0x0D, 0x01,
                                0x28, 0x02, 0x00, 0x00, 0x18, 0x02, 0x00, 0x20,
                                0x00, 0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20,
                                0x00, 0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20,
                                0x00, 0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20,
                                0x00, 0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20,
                                0x00, 0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20,
                                0x00, 0x01, 0x00, 0x20, 0x00, 0x01, 0x00, 0x20,
                                0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x38, 0x04,
                                0x0E, 0x0B, 0x0B, 0x00
                            })
                        }
                }
            }
}
