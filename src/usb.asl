




Name(QUFN, 0x0 )











Name(DPP0, Buffer(){0x0})




Device(URS0)
{

    Method (URSI) {
    If(Lequal(\_SB.QUFN, 0x0)) {
        return("QCOM0304")
      }
    Else{
        return ("QCOM0305")
      }
    }

    Alias(URSI, _HID)

    Name(_CID, "PNP0CA1")
    Alias(\_SB.PSUB, _SUB)
    Name (_UID, 0)
    Name(_CCA, Zero)
    Name(_DEP, Package(0x1)
    {
        \_SB_.PEP0
    })

    Name(_CRS, ResourceTemplate() {
        Memory32Fixed(ReadWrite, 0x0A600000, 0x000FFFFF)
    })


    Device(USB0)
    {
        Name(_ADR, 0)
        Name(_S0W, 3)



        Name(_PLD, Package()
        {
            Buffer()
            {
                0x82,
                0x00,0x00,0x00,
                0x00,0x00,0x00,0x00,
                0x69,
                0x0c,
                0x80,0x00,
                0x00,0x00,0x00,0x00,
                0xFF,0xFF,0xFF,0xFF
            }
        })

        Name(_UPC, Package()
        {
            0x01,
            0x09,
            0x00000000,
            0x00000000
        })
        Name(_CRS, ResourceTemplate() {

            Interrupt(ResourceConsumer, Level, ActiveHigh, Shared, , , ) {0xA5}

            Interrupt(ResourceConsumer, Level, ActiveHigh, SharedAndWake, , , ) {0x17A}

            Interrupt(ResourceConsumer, Level, ActiveHigh, SharedAndWake, , , ) {0x206}

            Interrupt(ResourceConsumer, Edge, ActiveHigh, SharedAndWake, , , ) {0x208}

            Interrupt(ResourceConsumer, Edge, ActiveHigh, SharedAndWake, , , ) {0x209}
        })

        Method(_STA)
        {
            Return (0xf)
        }


        Method(DPM0, 0x1, NotSerialized) {

            Store(Arg0, \_SB.DPP0)
            Notify(\_SB.PEP0, 0xA0)
        }


        Method(CCVL) {

            Return(\_SB.CCST)
        }

        Method(HSEN) {

            Return(\_SB.HSFL)
       }



       Name (HSEI, ResourceTemplate ()
       {
          GpioIo (Exclusive,PullNone,0,0, ,"\\_SB.GIO0", ,) {69}
       })


       Scope(\_SB.GIO0) {
          OperationRegion(HLEN, GeneralPurposeIO, 0, 1)
       }


       Field(\_SB.GIO0.HLEN, ByteAcc, NoLock, Preserve)
       {

          Connection (\_SB.URS0.USB0.HSEI),
          MOD1, 1
       }






        Method (_DSM, 0x4, NotSerialized)
        {

            switch(ToBuffer(Arg0)) {

                case(ToUUID("CE2EE385-00E6-48CB-9F05-2EDB927C4899")) {

                    switch(ToInteger(Arg2)) {

                        case(0) {

                            switch(ToInteger(Arg1)) {

                                case(0) { Return(Buffer(){0x1D}); Break; }

                                default { Return(Buffer(){0x01}); Break; }
                            }

                            Return (Buffer(){0x00}); Break;
                        }






                        case(2) { Return(0x0); Break; }




                        case(3) { Return(0x1); Break; }


                        case(4) { Return(0x2); Break; }

                        default { Return (Buffer(){0x00}); Break; }
                    }
                }
                default { Return (Buffer(){0x00}); Break; }
            }
        }











        Method(PHYC, 0x0, NotSerialized) {
           Name (CFG0, Package()
           {





           })
           Return (CFG0)
        }

        Device(RHUB)
        {
            Name(_ADR, 0)






            Method (_DSM, 0x4, NotSerialized)
            {

                switch(ToBuffer(Arg0)) {

                    case(ToUUID("A9A82A56-95A1-4B4A-B014-3BE47DF1B7D5"))
                    {

                        switch(ToInteger(Arg1))
                        {
                            case(1)
                            {
                                switch(ToInteger(Arg2))
                                {

                                    case(1)
                                    {
                                        Store (0x01, \_SB.URS0.USB0.MOD1)
                                        Return (Buffer(){0x01})
                                    }

                                    case(0)
                                    {
                                        Store (0x00, \_SB.URS0.USB0.MOD1)
                                        Return (Buffer(){0x01})
                                    }

                                    default { Return (Buffer(){0x00})}
                                }
                            }
                            default { Return (Buffer(){0x00}) }
                        }
                    }

                    default { Return (Buffer(){0x00}); Break; }
                }
            }
        }

    }


    Device(UFN0)
    {
        Name(_ADR, 1)
        Name(_S0W, 3)


        Name(_PLD, Package()
        {
            Buffer()
            {
                0x82,
                0x00,0x00,0x00,
                0x00,0x00,0x00,0x00,
                0x69,
                0x0c,
                0x80,0x00,
                0x00,0x00,0x00,0x00,
                0xFF,0xFF,0xFF,0xFF
            }
        })

        Name(_UPC, Package()
        {
            0x01,
            0x09,
            0x00000000,
            0x00000000
        })
        Name(_CRS, ResourceTemplate() {

            Interrupt(ResourceConsumer, Level, ActiveHigh, Shared, , , ) {0xA5}

            Interrupt(ResourceConsumer, Level, ActiveHigh, SharedAndWake, , , ) {0xA2}
        })


        Method(CCVL) {

            Return(\_SB.CCST)
        }






        Method (_DSM, 0x4, NotSerialized)
        {

            switch(ToBuffer(Arg0)) {

                case(ToUUID("FE56CFEB-49D5-4378-A8A2-2978DBE54AD2")) {

                    switch(ToInteger(Arg2)) {

                        case(0) {

                            switch(ToInteger(Arg1)) {

                                case(0) { Return(Buffer(){0x03}); Break; }
                                default { Return(Buffer(){0x01}); Break; }
                            }

                            Return (Buffer(){0x00}); Break;
                        }



                        case(1) { Return(32); Break; }

                        default { Return (Buffer(){0x00}); Break; }
                    }
                }


                case(ToUUID("18DE299F-9476-4FC9-B43B-8AEB713ED751")) {

                    switch(ToInteger(Arg2)) {

                        case(0) {

                            switch(ToInteger(Arg1)) {

                                case(0) { Return(Buffer(){0x03}); Break; }
                                default { Return(Buffer(){0x01}); Break; }
                            }

                            Return (Buffer(){0x00}); Break;
                        }










                        case(1) { Return(0x39); Break; }

                        default { Return (Buffer(){0x00}); Break; }
                    }
                }

                default { Return (Buffer(){0x00}); Break; }
            }
        }












        Method(PHYC, 0x0, NotSerialized) {
           Name (CFG0, Package()
           {





           })
           Return (CFG0)
        }
    }
}





Name(HPDB, 0x00000000)














Name(PINA, 0x00000000)





Name(CCST, Buffer(){0x02})





Name(HSFL, Buffer(){0x00})









Name(USBC, Buffer(){0x0B})





Device(UCP0)
{
    Name(_HID, "QCOM02D0")
    Name(_DEP, Package(0x3)
    {
        \_SB_.PEP0,
        \_SB_.PTCC,
        \_SB_.URS0
    })

        Device(CON0)
        {




            Name(_ADR, 0x00000000)


            Name(_PLD, Package()
            {
                Buffer()
                {
                    0x82,
                    0x00,0x00,0x00,
                    0x00,0x00,0x00,0x00,
                    0x69,
                    0x0c,
                    0x80,0x00,
                    0x00,0x00,0x00,0x00,
                    0xFF,0xFF,0xFF,0xFF
                }
            })

            Name(_UPC, Package()
            {
                0x01,
                0x09,
                0x00000000,
                0x00000000
            })
            Name(_DSD, Package()
            {

                ToUUID("6b856e62-40f4-4688-bd46-5e888a2260de"),






                Package()
                {
                    Package() {1, 4},
                    Package() {2, 3},
                    Package() {3, 0},
                    Package() {4, 1},
                    Package() {5, 3},
                    Package()
                    {
                        6,
                        Package()
                        {
                            0x00019096
                        }
                    },
                    Package()
                    {
                        7,
                        Package ()
                        {
                            0x0001912C,
                            0x0002D0C8,

                        }
                    },
                    Package()
                    {
                        8,
                        Package()
                        {
                            0xFF01, 0x3C86

                        }
                    },
                    Package()
                    {
                        9,
                        1
                    },
                    Package()
                    {
                        0xA,
                        1
                    }
                }
            })
        }






    Method (_DSM, 0x4, NotSerialized)
    {

        switch(ToBuffer(Arg0)) {

            case(ToUUID("18DE299F-9476-4FC9-B43B-8AEB713ED751")) {

                switch(ToInteger(Arg2)) {

                    case(0) {

                        switch(ToInteger(Arg1)) {

                            case(0) { Return(Buffer(){0x01}); Break; }
                            default { Return(Buffer(){0x01}); Break; }
                        }

                        Return (Buffer(){0x00}); Break;
                    }


                    case(1) {
                        switch(ToInteger(Arg3)) {

                        case (0) { Return(Package(){0x36019050}); Break; }

                        case (1) { Return(Package(){0x3601912C}); Break; }

                        default  { Return (Package(){0x00}); Break; }
                        }
                    }
                    default { Return (Buffer(){0x00}); Break; }
                }
            }

            default { Return (Buffer(){0x00}); Break; }
        }
    }



    Method(CCOT, 0x2, NotSerialized) {

        Store(Arg0, \_SB.CCST)
        Store(Arg1, \_SB.HSFL)
    }


    Method(CCVL) {

        Return(\_SB.CCST)
    }

     Method(HPDS, 0x0, NotSerialized) {

      Notify(\_SB.GPU0, 0x94)
    }

    Method(HPDF, 0x2, NotSerialized) {

        Store(Arg0, \_SB.HPDB)

        Store(Arg1, \_SB.PINA)

        Notify(\_SB.GPU0, \_SB.HPDB)
    }



    Method(HPDV) {

        Return(\_SB.HPDB)
    }


    Method(PINV) {

        Return(\_SB.PINA)
    }

}


Device (USB1)
{
    Name (_DEP, Package(0x1)
    {
        \_SB_.PEP0
    })
    Name (_HID, "QCOM02BA")
    Name (_UID, 1)


    Name(STVL, 0x0)

    Method (_STA) {
        Return (STVL)
    }
}





Device (USBA)
{
    Name (_DEP, Package(0x1)
    {
        \_SB_.IMM0
    })
    Name (_HID, "QCOM0300")
    Alias(\_SB.PSUB, _SUB)
}



