//
// Surface Display Panel
//
Device (DISP)
{
    Name (_HID, "MSHW0160")
    Name (_UID, 0)

    Name (_DEP, Package ()
    {
        \_SB.PEP0
    })

    Method (_CRS, 0, NotSerialized)
    {
        Name (RBF1, ResourceTemplate()
        {
            GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionNone, "\\_SB.GIOE", 0, ResourceConsumer,,){4}
            GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionNone, "\\_SB.GIO0", 0, ResourceConsumer,,){6}
        })
        Return (RBF1)
    }

    Method (_DSM, 4, NotSerialized)
    {
        If ((Arg0 == ToUUID ("79554422-22b5-47c4-a3f0-9ea36fce44e8")))
        {
            If ((Arg2 == 0))
            {
                If ((Arg1 == 0))
                {
                    Return (Buffer (0x01)
                    {
                         3
                    })
                }
            }
            If ((Arg2 == 1))
            {
                If ((Arg1 == 0))
                {
                    Name (PFG1, Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                    })
                    CreateDWordField (PFG1, 0, DAT1)
                    CreateDWordField (PFG1, 4, DAT2)
                    DAT1 = \_SB.FG1E._TMP ()
                    DAT2 = \_SB.FG2E._TMP ()
                    Return (PFG1)
                }
            }
            Else
            {
                Return (Buffer (0x01)
                {
                     0xFF
                })
            }
        }
        Else
        {
            Return (Buffer (0x01)
            {
                 0x00
            })
        }
    }
}