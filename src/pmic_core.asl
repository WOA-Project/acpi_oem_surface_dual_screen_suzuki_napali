









Device (PMIC)
{
    Name (_DEP, Package(0x1)
    {
        \_SB_.SPMI
    })
    Name (_HID, "QCOM0266")
    Name (_CID, "PNP0CA3")

        Method (PMCF) {
        Name (CFG0,
        Package()
                {

                        3,
                        Package()
                        {
                                0,
                                1,
                        },
                        Package()
                        {
                                2,
                                3,
                        },
                        Package()
                        {
                                4,
                                5,
                        },
                })
        Return (CFG0)
    }
}




Device (PM01)
{
    Name (_HID, "QCOM0269")
    Alias(\_SB.PSUB, _SUB)
    Name (_UID, 1)
    Name (_DEP,
        Package(0x1) {
            \_SB_.PMIC
        }
    )

    Method (_CRS, 0x0, NotSerialized) {
        Name (RBUF,
            ResourceTemplate() {


                Interrupt(ResourceConsumer, Level, ActiveHigh, Shared, , ,) {513}
            }
        )
        Return (RBUF)
    }


    Method(_DSM, 0x4, NotSerialized) {

        switch(ToBuffer(Arg0))
        {

            case(ToUUID("4F248F40-D5E2-499F-834C-27758EA1CD3F"))
            {

                switch(ToInteger(Arg2))
                {

                    case(0)
                    {

                        return (Buffer() {0x3})
                    }





                    case(1)
                    {

                        Return (Package() {0, 1})
                    }

                    default
                    {

                    }
                }
            }

            default
            {

                Return(Buffer(One) { 0x00 })
            }
        }
    }
}




Device (PMAP)
{
	Name (_HID, "QCOM0268")
	Alias(\_SB.PSUB, _SUB)
	Name(_DEP, Package(0x3) {
			\_SB_.PMIC,
			\_SB.ABD,
			\_SB.SCM0
	})



	Method(GEPT)
	{
			Name(BUFF, Buffer(4){})
			CreateByteField(BUFF, 0x00, STAT)
			CreateWordField(BUFF, 0x02, DATA)
			Store(0x2, DATA)
			Return(DATA)
	}

	Method (_CRS, 0x0, NotSerialized)
	{
			Name (RBUF, ResourceTemplate ()
			{


					GpioInt(Edge, ActiveBoth, Exclusive, PullUp, 0, "\\_SB.PM01", , , ,) {448}






			})
			Return (RBUF)
	}
}




Device (PRTC)
{
	Name(_HID, "ACPI000E")
	Name(_DEP, Package() {"\\_SB.PMAP"})


	Method(_GCP)
	{
	   Return (0x04)
	}

	Field(\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
	{
			Connection(I2CSerialBus( 0x0002,,0x0,, "\\_SB.ABD",,,,)),
			AccessAs(BufferAcc, AttribRawBytes(24)),
			FLD0,192
	}

	Method(_GRT)
	{
			Name(BUFF, Buffer(26){})
			CreateField(BUFF, 16, 128, TME1)
			CreateField(BUFF, 144, 32, ACT1)
			CreateField(BUFF, 176, 32, ACW1)
			Store(FLD0, BUFF)
			Return(TME1)
	}

	Method(_SRT, 1)
	{
			Name(BUFF, Buffer(50){})
			CreateByteField(BUFF, 0x0, STAT)
			CreateField(BUFF, 16, 128, TME1)
			CreateField(BUFF, 144, 32, ACT1)
			CreateField(BUFF, 176, 32, ACW1)
			Store(0x0, ACT1)
			Store(Arg0, TME1)
			Store(0x0, ACW1)
			Store(Store(BUFF, FLD0),BUFF)


			If(LNotEqual(STAT,0x00)) {
					Return(1)
			}
			Return(0)
	}

































































}
