//
// Nxp GpioExpander
//
Device (GIOE)
{
    Name (_HID, "PCAL6408")
    Name (_UID, 0)
    Method (_STA, 0, NotSerialized)
    {
        Return (0x0F)
    }
    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            I2CSerialBus(0x20, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC11", 0, ResourceConsumer, , )
        })
        Return (RBUF)
    }
}