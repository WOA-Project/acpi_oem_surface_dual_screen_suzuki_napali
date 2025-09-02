


Device (WLCN)
{
    Name (_UID, 0)
    Method (_HID)
    {
        If (TEV4())
        {

            Return ("MSHW0163")
        }
        Else
        {

            Return ("MSHW0161")
        }
    }

    Method (_STA)
    {

        If (TEV1())
        {
            Return (0x0)
        }
        Else
        {
            Return (0xf)
        }
    }

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            I2CSerialBus(0x28, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC11", 0, ResourceConsumer, , )
            GpioInt(Edge, ActiveHigh, Exclusive, PullDown, 0, "\\_SB.GIO0", 0, ResourceConsumer, , ){122}
            GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.GIOE", 0, ResourceConsumer, , ){7}
        })
        Return (RBUF)
    }


    Name(PGID, Buffer(10) {"\\_SB.WLCN"})

    Name(DBUF, Buffer(DBFL) {})
    CreateByteField(DBUF, 0x0, STAT)

    CreateByteField(DBUF, 2, DVAL)
    CreateField(DBUF, 24, 160, DEID)

    Method (_S1D, 0) { Return (3) }
    Method (_S2D, 0) { Return (3) }
    Method (_S3D, 0) { Return (3) }

    Method (_PS0, 0x0, NotSerialized)
    {
        Store(Buffer(ESNL){}, DEID)
        Store(0, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }

    Method (_PS3, 0x0, NotSerialized)
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