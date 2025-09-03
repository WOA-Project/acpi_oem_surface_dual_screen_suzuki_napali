//
// Power Meter Max34417
//
Device (PA01)
{
    Name (_HID, "MAX34417")
    Name (_CID, "MAX34417")
    Name (_UID, 1)

    Method (_STA)
    {
        Return (0xf)
    }

    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            I2CSerialBus(0x1E, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC15", 0, ResourceConsumer, , )
            I2CSerialBus(0x2C, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC15", 0, ResourceConsumer, , )
        })
        Return (RBUF)
    }

    // PEP Proxy Support
    Name(PGID, Buffer(10) {"\\_SB.PA01"})       // Device ID buffer - PGID (Pep given ID)

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
        Debug = "Entering _PS0 for PA01"
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
        Debug = "Entering _PS3 for PA01"
        Store(Buffer(ESNL){}, DEID)
        Store(3, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }

    Method (_DSM, 4, NotSerialized)
    {
        If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7")))
        {
            If ((Arg2 == 1))
            {
                If ((Arg1 == 0))
                {
                    Name (PBUF, Package (0x08)
                    {
                        "DISPLAY_R2", 
                        0x32, 
                        "MBB_RF", 
                        0x14, 
                        "CPU_SILVER", 
                        0x32, 
                        "R2_TOTAL", 
                        0x0A
                    })
                    Return (PBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            If ((Arg2 == 0x02))
            {
                If ((Arg1 == 0))
                {
                    Name (CBUF, Package (0x1)
                    {
                        0x04
                    })
                    Return (CBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
        Else
        {
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
    }
}

//
// Power Meter Max34417
//
Device (PA02)
{
    Name (_HID, "MAX34417")
    Name (_CID, "MAX34417")
    Name (_UID, 2)

    Method (_STA)
    {
        Return (0xf)
    }

    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            I2CSerialBus(0x12, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC15", 0, ResourceConsumer, , )
            I2CSerialBus(0x2C, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC15", 0, ResourceConsumer, , )
        })
        Return (RBUF)
    }

    // PEP Proxy Support
    Name(PGID, Buffer(10) {"\\_SB.PA02"})       // Device ID buffer - PGID (Pep given ID)

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
        Debug = "Entering _PS0 for PA02"
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
        Debug = "Entering _PS3 for PA02"
        Store(Buffer(ESNL){}, DEID)
        Store(3, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }

    Method (_DSM, 4, NotSerialized)
    {
        If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7")))
        {
            If ((Arg2 == 1))
            {
                If ((Arg1 == 0))
                {
                    Name (PBUF, Package (0x08)
                    {
                        "CPU_GOLD", 
                        0x0A, 
                        "GPU_CORE", 
                        0x14, 
                        "DDR_CORE_1P1", 
                        0x19, 
                        "WIFI_RF_LNAS", 
                        0x14
                    })
                    Return (PBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            If ((Arg2 == 0x02))
            {
                If ((Arg1 == 0))
                {
                    Name (CBUF, Package (0x1)
                    {
                        0x04
                    })
                    Return (CBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
        Else
        {
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
    }
}

//
// Power Meter Max34417
//
Device (PA03)
{
    Name (_HID, "MAX34417")
    Name (_CID, "MAX34417")
    Name (_UID, 3)

    Method (_STA)
    {
        Return (0xf)
    }

    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            I2CSerialBus(0x10, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC15", 0, ResourceConsumer, , )
            I2CSerialBus(0x2C, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC15", 0, ResourceConsumer, , )
        })
        Return (RBUF)
    }

    // PEP Proxy Support
    Name(PGID, Buffer(10) {"\\_SB.PA03"})       // Device ID buffer - PGID (Pep given ID)

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
        Debug = "Entering _PS0 for PA03"
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
        Debug = "Entering _PS3 for PA03"
        Store(Buffer(ESNL){}, DEID)
        Store(3, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }

    Method (_DSM, 4, NotSerialized)
    {
        If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7")))
        {
            If ((Arg2 == 1))
            {
                If ((Arg1 == 0))
                {
                    Name (PBUF, Package (0x08)
                    {
                        "DIGITAL_CORE", 
                        0x0A, 
                        "WIFI_RF_2.5_FE", 
                        0x32, 
                        "SYSTEM_IO_1P8", 
                        0x19, 
                        "WIFI_SSC_CORE", 
                        0x32
                    })
                    Return (PBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            If ((Arg2 == 0x02))
            {
                If ((Arg1 == 0))
                {
                    Name (CBUF, Package (0x1)
                    {
                        0x04
                    })
                    Return (CBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
        Else
        {
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
    }
}

//
// Power Meter Max34417
//
Device (PA04)
{
    Name (_HID, "MAX34417")
    Name (_CID, "MAX34417")
    Name (_UID, 4)

    Method (_STA)
    {
        Return (0xf)
    }

    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            I2CSerialBus(0x1A, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC15", 0, ResourceConsumer, , )
            I2CSerialBus(0x2C, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC15", 0, ResourceConsumer, , )
        })
        Return (RBUF)
    }

    // PEP Proxy Support
    Name(PGID, Buffer(10) {"\\_SB.PA04"})       // Device ID buffer - PGID (Pep given ID)

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
        Debug = "Entering _PS0 for PA04"
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
        Debug = "Entering _PS3 for PA04"
        Store(Buffer(ESNL){}, DEID)
        Store(3, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }

    Method (_DSM, 4, NotSerialized)
    {
        If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7")))
        {
            If ((Arg2 == 1))
            {
                If ((Arg1 == 0))
                {
                    Name (PBUF, Package (0x08)
                    {
                        "MBB_CORE", 
                        0x32, 
                        "TOUCH_D5", 
                        0x64, 
                        "USBC_POWER_IN", 
                        0x0A, 
                        "SYSTEM_BOB_3P3", 
                        0x0A
                    })
                    Return (PBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            If ((Arg2 == 0x02))
            {
                If ((Arg1 == 0))
                {
                    Name (CBUF, Package (0x1)
                    {
                        0x04
                    })
                    Return (CBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
        Else
        {
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
    }
}

//
// Power Meter Max34417
//
Device (PA05)
{
    Name (_HID, "MAX34417")
    Name (_CID, "MAX34417")
    Name (_UID, 5)

    Method (_STA)
    {
        Return (0xf)
    }

    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            I2CSerialBus(0x16, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC15", 0, ResourceConsumer, , )
            I2CSerialBus(0x2C, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC15", 0, ResourceConsumer, , )
        })
        Return (RBUF)
    }

    // PEP Proxy Support
    Name(PGID, Buffer(10) {"\\_SB.PA05"})       // Device ID buffer - PGID (Pep given ID)

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
        Debug = "Entering _PS0 for PA05"
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
        Debug = "Entering _PS3 for PA05"
        Store(Buffer(ESNL){}, DEID)
        Store(3, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }

    Method (_DSM, 4, NotSerialized)
    {
        If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7")))
        {
            If ((Arg2 == 1))
            {
                If ((Arg1 == 0))
                {
                    Name (PBUF, Package (0x08)
                    {
                        "R2_R_CAM_1P05", 
                        0x64, 
                        "WIFI_RF_5G_FE", 
                        0x14, 
                        "UFS_1P8", 
                        0x0A, 
                        "SOC_MISC", 
                        0x0A
                    })
                    Return (PBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            If ((Arg2 == 0x02))
            {
                If ((Arg1 == 0))
                {
                    Name (CBUF, Package (0x1)
                    {
                        0x04
                    })
                    Return (CBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
        Else
        {
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
    }
}

//
// Power Meter Max34417
//
Device (PA06)
{
    Name (_HID, "MAX34417")
    Name (_CID, "MAX34417")
    Name (_UID, 6)

    Method (_STA)
    {
        Return (0xf)
    }

    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            I2CSerialBus(0x1C, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC11", 0, ResourceConsumer, , )
            I2CSerialBus(0x2C, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC11", 0, ResourceConsumer, , )
        })
        Return (RBUF)
    }

    // PEP Proxy Support
    Name(PGID, Buffer(10) {"\\_SB.PA06"})       // Device ID buffer - PGID (Pep given ID)

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
        Debug = "Entering _PS0 for PA06"
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
        Debug = "Entering _PS3 for PA06"
        Store(Buffer(ESNL){}, DEID)
        Store(3, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }

    Method (_DSM, 4, NotSerialized)
    {
        If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7")))
        {
            If ((Arg2 == 1))
            {
                If ((Arg1 == 0))
                {
                    Name (PBUF, Package (0x08)
                    {
                        "C3_TOTAL", 
                        0x14, 
                        "DISPLAY_C3", 
                        0x32, 
                        "C3_AUDIO_SPEAKERS", 
                        0x0A, 
                        "C3_FRONT_CAM_1P05", 
                        0x32
                    })
                    Return (PBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            If ((Arg2 == 0x02))
            {
                If ((Arg1 == 0))
                {
                    Name (CBUF, Package (0x1)
                    {
                        0x04
                    })
                    Return (CBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
        Else
        {
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
    }
}

//
// Power Meter Max34417
//
Device (PA07)
{
    Name (_HID, "MAX34417")
    Name (_CID, "MAX34417")
    Name (_UID, 7)

    Method (_STA)
    {
        Debug = "Board ID:"
        Debug = \_SB.BDID

        If (TEV1 ())
        {
            Return (0x0)
        }
        Else
        {
            Return (0xf)
        }
    }

    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            I2CSerialBus(0x14, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC11", 0, ResourceConsumer, , )
            I2CSerialBus(0x2C, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.IC11", 0, ResourceConsumer, , )
        })
        Return (RBUF)
    }

    // PEP Proxy Support
    Name(PGID, Buffer(10) {"\\_SB.PA07"})       // Device ID buffer - PGID (Pep given ID)

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
        Debug = "Entering _PS0 for PA07"
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
        Debug = "Entering _PS3 for PA07"
        Store(Buffer(ESNL){}, DEID)
        Store(3, DVAL)
        Store(PGID, DEID)
        If(\_SB.ABD.AVBL)
        {
            Store(DBUF, \_SB.PEP0.FLD0)
        }
    }

    Method (_DSM, 4, NotSerialized)
    {
        If ((Arg0 == ToUUID ("4993a436-e1ac-4dc7-b4f8-46a5008fb9e7")))
        {
            If ((Arg2 == 1))
            {
                If ((Arg1 == 0))
                {
                    Name (PBUF, Package (0x08)
                    {
                        "PEN_CHARGING_POWER", 
                        0x32, 
                        "C3_TOUCH_A5_1P8", 
                        0x32, 
                        "C3_TOUCH_A5_12V", 
                        0x64, 
                        "C3_CHARGING_POWER", 
                        0x14
                    })
                    Return (PBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            If ((Arg2 == 2))
            {
                If ((Arg1 == 0))
                {
                    Name (CBUF, Package (0x1)
                    {
                        0x04
                    })
                    Return (CBUF)
                }
                Else
                {
                    Return (Buffer (0x1)
                    {
                         0x00
                    })
                }
            }
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
        Else
        {
            Return (Buffer (0x1)
            {
                 0x00
            })
        }
    }
}