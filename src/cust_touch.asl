
















Device (TSPI)
{
    Method(_HID)
    {
        If ((TCSS == One))
        {
            Return ("MSHW0162")
        }
        Else
        {
            Return ("MSHW0134")
        }
    }

    Name(_CID, "PNP0C51")

    Alias (\_SB.PSUB, _SUB)
    Name (_UID, 0)
    Name(_DEP, Package()
        {
        \_SB.PEP0,
        \_SB.SPI6,
        \_SB.GIO0
        })

    Method(_CRS, 0x0, NotSerialized)
    {
        Name(RBUF, ResourceTemplate ()
        {

            SPISerialBus(
                0,
                ,
                ,
                8,
                ,
                25000000,
                ClockPolarityLow,
                ClockPhaseFirst,
                "\\_SB.SPI6",
                ,
                ,
                ,
                )


            GpioInt(Edge, ActiveHigh, Exclusive, PullNone, 0, "\\_SB.GIO0", 0 , ResourceConsumer, , ) {125}


            GpioIo(Exclusive, PullNone, 0, 0, , "\\_SB.GIO0", ,) {89}
        })

        Return(RBUF)
    }








    Function(_DSM,{BuffObj, IntObj},{BuffObj, IntObj, IntObj, PkgObj}){

        switch(ToBuffer(Arg0)) {

            case(ToUUID("6E2AC436-0FCF-41AF-A265-B32A220DCFAB")) {

                switch(ToInteger(Arg2)) {
                    case(0) {

                        switch(ToInteger(Arg1)) {
                            case (1) {

                                Return(Buffer(One) { 0x03 })
                            }
                            default {

                                Return(Buffer(One) { 0x00 })
                            }
                        }
                    }
                    case(1) {
                        Return (0x1)
                    }
                    default {

                    }
                }
            }
            default { Return (Buffer(){0x00}); }
        }
    }


    Name(PGID, Buffer(10) {"\\_SB.TSPI"})

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

    Device(COL1)
    {
        Name(_ADR, 1)
    }

    Device(COL2)
    {
        Name(_ADR, 2)


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

    Device(COL3)
    {
        Name(_ADR, 3)


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

    Device(COL4)
    {
        Name(_ADR, 4)
    }
}




Device(TFWU)
{
    Name(_HID, "MSHW0145")
    Name(_UID, 0)
    Name(_DEP, Package()
    {
        \_SB.TSPI
    })
}
