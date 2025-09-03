//
// Temperature Sensor Interface for Fuel Gauge (R2)
//
Scope (\_SB.IC12)
{
    Name (FGTS, ResourceTemplate ()
    {
        I2CSerialBus(0x55, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC12", 0, ResourceConsumer, , )
    })

    OperationRegion (ORFG, GenericSerialBus, 0, 0x0100)

    Field (ORFG, BufferAcc, NoLock, Preserve)
    {
        Connection (FGTS), 
        AccessAs (BufferAcc, AttribWord), 
        Offset (0x28), 
        TMP1,   8
    }

    Field (ORFG, BufferAcc, NoLock, Preserve)
    {
        Connection (FGTS), 
        AccessAs (BufferAcc, AttribWord), 
        Offset (0x06), 
        TMP2,   8
    }

    Name (AVBL, Zero)

    Method (_REG, 2, NotSerialized)
    {
        If ((Arg0 == 0x09))
        {
            ^AVBL = Arg1
        }
    }
}

//
// Temperature Sensor Interface for Fuel Gauge (C3)
//
Scope (\_SB.IC11)
{
    Name (FGTS, ResourceTemplate ()
    {
        I2CSerialBus(0x55, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC11", 0, ResourceConsumer, , )
    })

    OperationRegion (ORFG, GenericSerialBus, 0, 0x0100)

    Field (ORFG, BufferAcc, NoLock, Preserve)
    {
        Connection (FGTS), 
        AccessAs (BufferAcc, AttribWord), 
        Offset (0x28), 
        TMP1,   8
    }

    Field (ORFG, BufferAcc, NoLock, Preserve)
    {
        Connection (FGTS), 
        AccessAs (BufferAcc, AttribWord), 
        Offset (0x06), 
        TMP2,   8
    }
}

Scope (\_SB)
{
    //
    // Thermal Zone for Fuel Gauge (R2) Internal
    //
    ThermalZone (FG1I)
    {
        Name (_DEP, Package ()
        {
            \_SB.IC12
        })

        Name (BFTS, Buffer (0x04)
        {
             0xFF
        })

        CreateByteField (BFTS, 0, STA1)
        CreateByteField (BFTS, 1, LEN1)
        CreateWordField (BFTS, 2, DATA)

        Method (_TMP, 0, Serialized)
        {
            If ((\_SB.IC12.AVBL == One))
            {
                BFTS = \_SB.IC12.TMP1
                Return (DATA)
            }

            Return (0x0AAC)
        }
    }

    //
    // Thermal Zone for Fuel Gauge (R2) External
    //
    ThermalZone (FG1E)
    {
        Name (_DEP, Package ()
        {
            \_SB.IC12
        })

        Name (BFTS, Buffer (0x04)
        {
             0xFF
        })

        CreateByteField (BFTS, Zero, STA1)
        CreateByteField (BFTS, One, LEN1)
        CreateWordField (BFTS, 0x02, DATA)

        Method (_TMP, 0, Serialized)
        {
            If ((\_SB.IC12.AVBL == One))
            {
                BFTS = \_SB.IC12.TMP2
                Return (DATA)
            }

            Return (2732)
        }
    }

    //
    // Thermal Zone for Fuel Gauge (C3) Internal
    //
    ThermalZone (FG2I)
    {
        Name (_DEP, Package ()
        {
            \_SB.IC11
        })

        Name (BFTS, Buffer (0x04)
        {
             0xFF
        })

        CreateByteField (BFTS, 0, STA1)
        CreateByteField (BFTS, 1, LEN1)
        CreateWordField (BFTS, 2, DATA)

        Method (_TMP, 0, Serialized)
        {
            If ((\_SB.IC11.AVBL == One))
            {
                BFTS = \_SB.IC11.TMP1
                Return (DATA)
            }

            Return (2732)
        }
    }

    //
    // Thermal Zone for Fuel Gauge (C3) External
    //
    ThermalZone (FG2E)
    {
        Name (_DEP, Package ()
        {
            \_SB.IC11
        })

        Name (BFTS, Buffer (0x04)
        {
             0xFF
        })

        CreateByteField (BFTS, 0, STA1)
        CreateByteField (BFTS, 1, LEN1)
        CreateWordField (BFTS, 2, DATA)

        Method (_TMP, 0, Serialized)
        {
            If ((\_SB.IC11.AVBL == One))
            {
                BFTS = \_SB.IC11.TMP2
                Return (DATA)
            }

            Return (2732)
        }
    }
}