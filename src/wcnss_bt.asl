









Device(BTH0)
{
    Name(_HID, "QCOM02B5")
        Alias(\_SB.PSUB, _SUB)
    Name(_DEP, Package(0x3)
    {
        \_SB_.PEP0,
        \_SB_.PMIC,
        \_SB_.UAR7
    })
    Name(_PRW, Package(0x2)
    {
        Zero,
        Zero
    })
    Name(_S4W, 0x2)
    Name(_S0W, 0x2)
    Method(_CRS, 0x0, NotSerialized)
    {
        Name(PBUF, ResourceTemplate()
        {
            UARTSerialBus(
                115200,
                DataBitsEight,
                StopBitsOne,
                0xC0,
                LittleEndian,
                ParityTypeNone,
                FlowControlHardware,
                0x20,
                0x20,
                "\\_SB.UAR7",
                0,
                ResourceConsumer,
                ,
                )


        })
        Return(PBUF)
    }
    Method(_STA, 0x0, NotSerialized)
    {
        Return(0xF)
    }
}
