







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

    // Right
    Method(_PLD, 0, Serialized) {
        Name(PLDP, Package() {
            Buffer(0x14) {
                /*
                ToPLD (
                    PLD_Revision           = 2,
                    PLD_IgnoreColor        = 1,
                    PLD_Red                = 0,
                    PLD_Green              = 0,
                    PLD_Blue               = 0,
                    PLD_Width              = 900,
                    PLD_Height             = 380,
                    PLD_UserVisible        = 0,
                    PLD_Dock               = 0,
                    PLD_Lid                = 0,
                    PLD_Panel              = "FRONT",
                    PLD_VerticalPosition   = "CENTER",
                    PLD_HorizontalPosition = "CENTER",
                    PLD_Shape              = "HORIZONTALRECTANGLE",
                    PLD_GroupOrientation   = 0,
                    PLD_GroupToken         = 0,
                    PLD_GroupPosition      = 0,
                    PLD_Bay                = 0,
                    PLD_Ejectable          = 0,
                    PLD_EjectRequired      = 0,
                    PLD_CabinetNumber      = 1,
                    PLD_CardCageNumber     = 0,
                    PLD_Reference          = 0,
                    PLD_Rotation           = 0,
                    PLD_Order              = 0,
                    PLD_VerticalOffset     = 1140,
                    PLD_HorizontalOffset   = 0)
                */
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

    // Left
    Method(_PLD, 0, Serialized) {
        Name(PLDP, Package() {
            Buffer(0x14) {
                /*
                ToPLD (
                    PLD_Revision           = 2,
                    PLD_IgnoreColor        = 1,
                    PLD_Red                = 0,
                    PLD_Green              = 0,
                    PLD_Blue               = 0,
                    PLD_Width              = 900,
                    PLD_Height             = 380,
                    PLD_UserVisible        = 0,
                    PLD_Dock               = 0,
                    PLD_Lid                = 0,
                    PLD_Panel              = "FRONT",
                    PLD_VerticalPosition   = "CENTER",
                    PLD_HorizontalPosition = "CENTER",
                    PLD_Shape              = "HORIZONTALRECTANGLE",
                    PLD_GroupOrientation   = 0,
                    PLD_GroupToken         = 0,
                    PLD_GroupPosition      = 0,
                    PLD_Bay                = 0,
                    PLD_Ejectable          = 0,
                    PLD_EjectRequired      = 0,
                    PLD_CabinetNumber      = 0,
                    PLD_CardCageNumber     = 0,
                    PLD_Reference          = 0,
                    PLD_Rotation           = 0,
                    PLD_Order              = 0,
                    PLD_VerticalOffset     = 1140,
                    PLD_HorizontalOffset   = 0)
                */
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
