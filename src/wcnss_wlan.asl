








Device (QWLN)
{
    Name(_ADR, 0)
    Name(_DEP, Package(2)
    {
        \_SB.PEP0,
        \_SB.MMU0
    })
    Name(_PRW, Package() {0,0})
    Name(_S0W, 2)
    Name(_S4W, 2)
    Name(_PRR, Package(0x1) { \_SB.AMSS.QWLN.WRST })

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {

            Memory32Fixed (ReadWrite, 0x18800000, 0x800000)
            Memory32Fixed (ReadWrite,  0xC250000,     0x10)
            Memory32Fixed (ReadWrite, 0x8C400000, 0x100000)

            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {446}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {447}
            Interrupt(ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, , , ) {448}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {449}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {450}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {451}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {452}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {453}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {454}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {455}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {456}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive       , , , ) {457}
        })
        Return (RBUF)
    }


    Method (WMSA)
    {
        Return(Package ()
        {
            0x100000
        })
    }

    Method (_PS0, 0, NotSerialized)
    {
    }
    Method (_PS2, 0, NotSerialized)
    {
    }
    Method (_PS3, 0, NotSerialized)
    {
    }

    OperationRegion (WOPR, 0x80, Zero, 0x10)
    Field (WOPR, DWordAcc, NoLock, Preserve)
    {
        Offset (0x04),
        WTRG,   32
    }

    PowerResource(WRST, 0x5, 0x0)
    {




        Method(_ON, 0x0, NotSerialized)
        {
        }
        Method(_OFF, 0x0, NotSerialized)
        {
        }
        Method(_STA, 0x0, NotSerialized)
        {
            Return(0xf)
        }
        Method(_RST, 0x0, NotSerialized)
        {
            WTRG = 0xABCD
        }
    }
}


Scope(\_SB)
{
    Device (COEX)
    {
        Name (_HID, "QCOM0295")
        Alias(\_SB.PSUB, _SUB)
    }
}
