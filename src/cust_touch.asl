















//HIDSPI Touch Driver
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
            // SPI
            SPISerialBus(
                0,                // DeviceSelection: chip-select, GPIO, or other line selection
                ,                 // DeviceSelectionPolarity: defaults to PolarityLow (optional)
                ,                 // WireMode: defaults to FourWireMode (optional)
                8,                // DataBitLength
                ,                 // SlaveMode: defaults to ControllerInitiated (optional)
                25000000,         // ConnectionSpeed: in Hz
                ClockPolarityLow, // ClockPolarity
                ClockPhaseFirst,  // ClockPhase
                "\\_SB.SPI6",     // ResourceSource: SPI bus controller name
                ,                 // ResourceSourceIndex: defaults to 0 (optional)
                ,                 // ResourceUsage: defaults to ResourceConsumer (optional)
                ,                 // DescriptorName: creates name for offset of resource descriptor
                )                 // VendorData

            // TOUCH_ASSERT
            GpioInt(Edge, ActiveHigh, Exclusive, PullNone, 0, "\\_SB.GIO0", 0 , ResourceConsumer, , ) {125}

            // TOUCH_SLEEP
            GpioIo(Exclusive, PullNone, 0, 0, , "\\_SB.GIO0", ,) {89}
        })

        Return(RBUF)
    }

    // _DSM - Device-Specific Method
    //
    // Arg0: UUID Unique function identifier
    // Arg1: Integer Revision ID – Will be 3 for HidSpi V1
    // Arg2: Integer Function Index (0 = Return Supported Functions)
    // Arg3: Package Parameters
    //
    Function(_DSM,{BuffObj, IntObj},{BuffObj, IntObj, IntObj, PkgObj}){
        // UUID selector
        switch(ToBuffer(Arg0)) {
            // HIDSPI interface identifier
            case(ToUUID("6E2AC436-0FCF-41AF-A265-B32A220DCFAB")) {
                // Function selector
                switch(ToInteger(Arg2)) {
                    case(0) {
                        // Switch on the revision level
                        switch(ToInteger(Arg1)) {
                            case (1) {
                                // HidSpi v0 : Functions 0-1 inclusive are supported (0b00000011)
                                Return(Buffer(One) { 0x03 })
                            }
                            default {
                                // Unsupported revision
                                Return(Buffer(One) { 0x00 })
                            }
                        }
                    }
                    case(1) {
                        Return (0x1)
                    }
                    default {
                        // Unsupported function index
                    }
                } // Function
            } // {6E2AC436-0FCF-41AF-A265-B32A220DCFAB}
            default { Return (Buffer(){0x00}); }
        } // UUID
    } // _DSM

    // PEP Proxy Support
    Name(PGID, Buffer(10) {"\\_SB.TSPI"})       // Device ID buffer - PGID (Pep given ID)

    Name(DBUF, Buffer(DBFL) {})                 // Device ID buffer - PGID (Pep given ID)
    CreateByteField(DBUF, 0x0, STAT)            // STATUS 1 BYTE
                                                // HIDDEN 1 BYTE (SIZE)
    CreateByteField(DBUF, 2, DVAL)              // Packet value, 1 BYTES Device Status
    CreateField(DBUF, 24, 160, DEID)            // Device ID, 20 BYTES (160 Bits)

    Method (_S1D, 0) { Return (3) }             // S1 => D3
    Method (_S2D, 0) { Return (3) }             // S2 => D3
    Method (_S3D, 0) { Return (3) }             // S3 => D3

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
                        PLD_Width              = 856,
                        PLD_Height             = 1141,
                        PLD_UserVisible        = 1,
                        PLD_Dock               = 0,
                        PLD_Lid                = 0,
                        PLD_Panel              = "FRONT",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "CENTER",
                        PLD_Shape              = "VERTICALRECTANGLE",
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
                        PLD_VerticalOffset     = 141,
                        PLD_HorizontalOffset   = 22)
                    */
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
                        PLD_Width              = 856,
                        PLD_Height             = 1141,
                        PLD_UserVisible        = 1,
                        PLD_Dock               = 0,
                        PLD_Lid                = 0,
                        PLD_Panel              = "FRONT",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "CENTER",
                        PLD_Shape              = "VERTICALRECTANGLE",
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
                        PLD_VerticalOffset     = 141,
                        PLD_HorizontalOffset   = 22)
                    */
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

//
// Surface Touch Firmware Update
//
Device(TFWU)
{
    Name(_HID, "MSHW0145")
    Name(_UID, 0)
    Name(_DEP, Package()
    {
        \_SB.TSPI
    })
}
