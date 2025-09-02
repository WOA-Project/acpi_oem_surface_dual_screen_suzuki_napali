


Device (TPXY)
{
    Name (_HID, "MSFTTPXY")
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, 0)
    Name (_DEP, Package ()
    {
        \_SB.SEN2,
        \_SB.SEN3,
        \_SB.PMBM
    })

    Device(\_SB.TPXY.ANG0)
    {
        Name(_ADR, 0)
    }

    Device(\_SB.TPXY.RSC0)
    {
        Name(_ADR, 1)
    }

    Device(\_SB.TPXY.VTS0)
    {
        Name(_ADR, 2)
    }

    Name (_CRS, ResourceTemplate ()
    {
        GpioInt(Edge, ActiveBoth, Shared, PullUp, 500, "\\_SB.GIO0", 0, ResourceConsumer, , ){119}
        GpioIo(Shared, PullUp, 500, 0, IoRestrictionInputOnly, "\\_SB.GIO0", 0, ResourceConsumer, , ){119}
        GpioIo(Shared, PullUp, 500, 0, IoRestrictionInputOnly, "\\_SB.GIO0", 0, ResourceConsumer, , ){126}
    })








    Function(_DSM,{BuffObj, IntObj},{BuffObj, IntObj, IntObj, PkgObj}){
        If ((Arg0 == ToUUID("60e802c9-29f4-479a-bd42-fa5cacc0a385")))
        {
            If (Arg2 == 0)
            {
                If ((Arg1 == 0))
                {
                    Return (Buffer(){0x1F});
                }
            }
            If (Arg2 == 1)
            {
                If (Arg1 == 0)
                {
                    Name (PBUF, Package(0x2D)
                    {
                        "TXY0",
                        0,
                        0,
                        "BAT0",
                        1,
                        1,
                        "VTS0",
                        2,
                        2,
                    })
                    Return (PBUF)
                }
            }
            If (Arg2 == 2)
            {
                If ((Arg1 == 0))
                {
                    Name (CBUF, Package(0x01)
                    {
                        0x03
                    })
                    Return (CBUF)
                }
            }
            If (Arg2 == 3)
            {
                If (Arg1 == 0)
                {
                    Name (VBUF, Package()
                    {
                        3063,
                        31,
                        30,
                        42,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        3,
                        3,
                        3,
                    })
                    Return (VBUF)
                }
            }
            If (Arg2 == 4)
            {
                If (Arg1 == 0)
                {
                    Name (RBUF, Package()
                    {
                        50,
                        1,
                        25,
                        10
                    })
                    Return (RBUF)
                }
            }
            Return (Buffer(){0x00});
        }
        Else
        {
            Return (Buffer(){0x00});
        }
    }
}