







Device (RPEN)
{
    Name (_HID, "QCOM026D")
	Alias(\_SB.PSUB, _SUB)
}




Device (PILC)
{
    Name (_HID, "QCOM023B")

    Method(PILX)
    {
        return (PILP)
    }

    Name(PILP,
        Package()
        {



            "OPCA",
        }
    )

    Method (ACPO)
    {
        Name(PKGG, Package()
        {
            Package ()
            {

                0x00000000,
                0x00000000,
                ToUUID ("BA58766D-ABF2-4402-88D7-90AB243F6C77")
            }
        })


        Store (RMTB, Index(DeRefOf(Index (PKGG, 0)), 0))
        Store (RMTX, Index(DeRefOf(Index (PKGG, 0)), 1))

        Return (PKGG)
    }

}





Device (CDI)
{
    Name (_DEP, Package(0x2)
    {
        \_SB_.PILC,
        \_SB_.RPEN
    })
    Name (_HID, "QCOM026C")
	Alias(\_SB.PSUB, _SUB)

    Method(_STA, 0)
    {
        return (0xf)
    }
}





Device (SCSS)
{
    Name (_DEP, Package(0x6)
    {
          \_SB_.PEP0,
          \_SB_.PILC,
          \_SB_.GLNK,
          \_SB_.IPC0,
          \_SB_.RPEN,
          \_SB_.SSDD,
    })

    Name (_HID, "QCOM02BE")
	Alias(\_SB.PSUB, _SUB)

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {



            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {409}
        })
        Return (RBUF)
    }


}




Device (ADSP)
{
    Name (_DEP, Package(0x7)
    {
          \_SB_.PEP0,
          \_SB_.PILC,
          \_SB_.GLNK,
          \_SB_.IPC0,
          \_SB_.RPEN,
          \_SB_.SSDD,
          \_SB_.PDSR,
    })
    Name (_HID, "QCOM023D")
    Alias(\_SB.PSUB, _SUB)



    Method (WDIR)
    {

        Return( Package ()
        {
            0x02,
            0x17A0011C,
            0x17A0019C,
            0x17A0021C
        })
    }

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {



            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {194}
        })
        Return (RBUF)
    }



    Include("slimbus.asl")
}





Device (AMSS)
{
    Name(_CCA, 0)
    Name (_DEP, Package(0x9)
    {
        \_SB_.PEP0,

	    \_SB_.IPA,
        \_SB_.GLNK,
        \_SB_.IPC0,
        \_SB_.PILC,
        \_SB_.RFS0,
        \_SB_.RPEN,
        \_SB_.SSDD,
        \_SB_.PDSR,
    })
    Name (_HID, "QCOM023E")

    Name (WLEN, 0x1)



    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {


            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {298}
        })
        Return (RBUF)
    }




    Method (WDIR)
    {
        Return( Package ()
        {

			0x00,
            0x17A0013C,
            0x17A001BC,
            0x17A002BC
        })
    }

	Method(_STA, 0)
    {
     return (0xf)
    }

    Include("wcnss_wlan.asl")
}




Device (QSM)
{
    Name (_HID, "QCOM02B9")

	Alias(\_SB.PSUB, _SUB)

    Name (_DEP, Package(0x4)
    {
        \_SB_.GLNK,
        \_SB_.IPC0,
        \_SB_.PILC,
        \_SB_.RPEN
    })




    Method (_CRS, 0x0, NotSerialized) {
        Name (RBUF, ResourceTemplate ()
        {


            Memory32Fixed(ReadWrite, 0x98f00000, 0x00600000)
        })
        Return (RBUF)
    }

    Method(_STA, 0)
    {
        return (0xf)
    }

}





Device (SSDD)
{
    Name (_HID, "QCOM02D1")

	Alias(\_SB.PSUB, _SUB)

    Name (_DEP, Package(0x2)
    {
        \_SB_.GLNK,
        \_SB_.TFTP
    })
}





Device (PDSR)
{
     Name (_HID, "QCOM02CE")

	 Alias(\_SB.PSUB, _SUB)

     Name (_DEP, Package(0x3)
     {
           \_SB_.PEP0,
           \_SB_.GLNK,
           \_SB_.IPC0,
     })
}










Device (TFTP)
{
     Name (_HID, "QCOM02F6")

	 Alias(\_SB.PSUB, _SUB)

     Name (_DEP, Package(0x1)
     {
           \_SB_.IPC0,
     })
}


Device (SSVC)
{
     Name (_DEP, Package(0x2)
    {
        \_SB_.IPC0,
        \_SB_.QDIG
    })
    Name (_HID, "QCOM0302")
    Alias(\_SB.PSUB, _SUB)
    Name (_CID, "ACPI\QCOM0302")
    Name (_UID, 0)
}



Include("plat_win_mproc.asl")
