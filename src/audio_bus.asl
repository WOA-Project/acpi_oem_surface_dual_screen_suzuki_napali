











Device (ADCM)
{




    Alias(\_SB.PSUB, _SUB)



    Name (_ADR, 0)



    Name (_DEP, Package()
    {
	\_SB_.MMU0,
	\_SB_.IMM0,
    })



        Method (CHLD)
        {
                Return (Package()
                {



                    "ADCM\\QCOM0240"
                })
        }



        Device (AUDD)
        {


            Name (_ADR, 0)
            Alias(\_SB.PSUB, _SUB)


            Name (_DEP, Package()
            {
                \_SB_.SPI9,
            })

            Method (_CRS, 0x0, NotSerialized)
            {
              Name (RBUF, ResourceTemplate ()
              {
                    GpioIo(Exclusive, PullNone, 0, 1600, , "\\_SB.GIO0", ,) {64}
                    GpioInt(Edge, ActiveHigh, Exclusive, PullDown, 0, "\\_SB.GIO0", ,) {256}

                    GpioIo(Shared, PullUp, 0, 200, IoRestrictionOutputOnly, "\\_SB.GIO0", ,) {49}
                    GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.GIOE", ,) {0}

                    SPISerialBus(
                        0,
                        ,
                        ,
                        8,
                        ,
                        24000000,
                        ClockPolarityLow,
                        ClockPhaseFirst,
                        "\\_SB.SPI9",
                        ,
                        ,
                        ,
                        RawDataBuffer(){
                            0x00,
                            0x00,
                            0x00,
                            0x00,
                            0x00,
                            0x00,
                            0x00,
                    })
            })
               Return (RBUF)
            }

            Method (CHLD)
            {

				Name(CH, Package()
				{


					"AUDD\\QCOM0277",


					"AUDD\\QCOM0262",
				})
                Return(CH)
            }




                Device (MBHC)
                {


                    Name (_ADR, 0)
                    Method (_CRS, 0x0, NotSerialized)
                    {
                            Name (RBUF, ResourceTemplate () {

                            })
                            Return (RBUF)
                    }
                }


                Device (QCRT)
                {



                    Name (_ADR, 1)
	        }
        }
}
