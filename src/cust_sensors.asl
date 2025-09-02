







Device (SEN2)
{
    Name (_DEP, Package(0x3)
    {
        \_SB_.IPC0,
        \_SB_.SCSS,
	    \_SB_.ARPC
    })
    Name (_HID, "QCOM0308")
	Alias(\_SB.PSUB, _SUB)
	Name (_CID, "QCOM02A2")


    Method(_PLD, 0, Serialized) {
        Name(PLDP, Package() {
            Buffer(0x14) {
                                0x82, 0x00, 0x00, 0x00, 0x84, 0x03, 0x7C, 0x01,
                0x60, 0x11, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,
                0x74, 0x04, 0x00, 0x00
            }
        })
        Return(PLDP)
    }
}


Device (SEN3)
{
    Name (_DEP, Package(0x4)
    {
        \_SB_.IPC0,
        \_SB_.SCSS,
        \_SB_.ARPC,
        \_SB_.SEN2
    })
    Name (_HID, "QCOM0309")
	Alias(\_SB.PSUB, _SUB)
    Name (_CID, "QCOM02A2")


    Method(_PLD, 0, Serialized) {
        Name(PLDP, Package() {
            Buffer(0x14) {
                                0x82, 0x00, 0x00, 0x00, 0x84, 0x03, 0x7C, 0x01,
                0x60, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                0x74, 0x04, 0x00, 0x00
            }
        })
        Return(PLDP)
    }
}

Device (SEN4)
{
    Name (_DEP, Package(0x5)
    {
        \_SB_.IPC0,
        \_SB_.SCSS,
        \_SB_.ARPC,
        \_SB_.SEN2,
        \_SB_.SEN3
    })
    Name (_HID, "MSHW0174")
	Alias(\_SB.PSUB, _SUB)
    Name (_CID, "QCOM02A2")
}
