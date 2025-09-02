


Device (FPS1)
{
    Name (_HID, "MSHW0133")
    Name (_UID, 0)

    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            GpioInt(Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0, "\\_SB.GIO0", 0, ResourceConsumer, , ){121}
            GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionNone, "\\_SB.GIO0", 0, ResourceConsumer, , ){35}
        })
        Return (RBUF)
    }
}