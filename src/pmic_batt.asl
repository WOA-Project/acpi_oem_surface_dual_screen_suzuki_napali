






Include("cust_pmic_batt.asl")




Device (PEIC)
{
    Name (_HID, "QCOM02D3")
    Alias(\_SB.PSUB, _SUB)

    Method (_CRS, 0x0, NotSerialized) {
        Name (RBUF, ResourceTemplate () {

            I2CSerialBus(0x44,, 400000, AddressingMode7Bit, "\\_SB.IC11",,,,)


            I2CSerialBus(0x55,, 400000, AddressingMode7Bit, "\\_SB.IC12",,,,)


            I2CSerialBus(0x55,, 400000, AddressingMode7Bit, "\\_SB.IC11",,,,)
        })
        Return (RBUF)
    }

    Method (PMCF) {
        Name (CFG0,
        Package(){

        0,
        2,

        1,
        2,
        100,

        2,
        2,
        340
        })
        Return (CFG0)
    }
}




Device (PMBT)
{
    Name (_HID, "QCOM0264")
    Alias(\_SB.PSUB, _SUB)
    Name (_DEP, Package(0x3)
    {
        \_SB_.PMIC,
        \_SB_.ADC1,
        \_SB_.PEIC
    })

    Method (_STA)
    {
        Return (0xB)
    }

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {






            GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {329}

            GpioInt(Edge, ActiveHigh, Exclusive, PullUp, 0, "\\_SB.PM01",,,,) {331}
            GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {237}




            GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {224}
        })

        Local0 = RBUF
        If (TEV3 ())
        {
            ConcatenateResTemplate (Local0, ResourceTemplate ()
            {
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,, RawDataBuffer(){0x00, 0x00, 0x00, 0x0B}) {482}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.GIOE",,,,) {3}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,, RawDataBuffer(){0x00, 0x00, 0x00, 0x0B}) {487}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,, RawDataBuffer(){0x00, 0x00, 0x00, 0x0B}) {490}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,,) {481}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,,) {484}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,,) {485}
            }, Local1)
        }
        Else
        {
            ConcatenateResTemplate (Local0, ResourceTemplate ()
            {
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,, RawDataBuffer(){0x00, 0x00, 0x00, 0x0B}) {482}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.GIOE",,,,) {3}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,, RawDataBuffer(){0x00, 0x00, 0x00, 0x0B}) {487}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,, RawDataBuffer(){0x00, 0x00, 0x00, 0x0B}) {490}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,,) {481}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,,) {484}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,,) {485}
                GpioIo(Exclusive, PullNone, 0, 0, IoRestrictionOutputOnly, "\\_SB.PM01",,,,) {488}
            }, Local1)
        }

        Return (Local1)
    }


    Method (BMNR)
    {
        Name (CFG0,
        Package()
        {
            1,
            0,
            1,
            0,
            "CUST_PMIC"
        })
        Store(CUST, Index(CFG0, 4))
        Return (CFG0)
    }


    Method (BTIM) {
        Name (CFG0,
        Package()
        {
            3000,
            1000,
            60000,
            10000,
            0,
            0,
            28080000,
            0,
        })
        Return (CFG0)
    }


    Method (BBAT)
    {
        Name (CFG0,
        Package()
        {
            1,
            0x4C494F4E,
            0xFFFFFFFF,
            0xFFFFFFFF,
            0xFFFFFFFF,
            0xFFFFFFFF,
            "M1067691",
            "SMP",
            "M1067691_5550931203CN",
            "5550931203CN",
            01,
            01,
            2018
        })

        If (TEV3 ())
        {

            Multiply(7,BFCC,Local0)
            Local0 += 0x32
            Divide(Local0, 100, Local1, Local2)

            Multiply(12,BFCC,Local0)
            Local0 += 0x32
            Divide(Local0, 100, Local1, Local3)
        }
        Else
        {

            Multiply(PCT1,BFCC,Local0)
            Local0 += 0x32
            Divide(Local0, 100, Local1, Local2)

            Multiply(PCT2,BFCC,Local0)
            Local0 += 0x32
            Divide(Local0, 100, Local1, Local3)
        }
        Store(BFCC, Index(CFG0, 2))
        Store(BFCC, Index(CFG0, 3))
        Store(Local2, Index(CFG0, 4))
        Store(Local3, Index(CFG0, 5))
        Return (CFG0)
    }


    Method (BPCH)
    {
        Name (CFG0,
        Package()
        {
            0,
            0,
            1500
        })
        Return (CFG0)
    }


    Method (BFCH)
    {
            Name (CFG0,
            Package()
            {
                    1,
                    5,
                    5000,
                    900,
            })
            Return (CFG0)
    }


    Method (BCCC)
    {
            Name (CFG0,
            Package()
            {
                    1,
                    0,
                    0
            })
            Return (CFG0)
    }


    Method (BRCH)
    {
            Name (CFG0,
            Package()
            {
                    100,
                    0
            })
            Return (CFG0)
    }


    Method (_BQI)
    {
            Name (CFG0,
            Package()
            {
                    0,
            })
            Return (CFG0)
    }


    Method (BIRQ)
    {
            Name (CFG0,
            Package()
            {






                    "VbatLow",

                    "BattMissing",
                    "AiclDone",




                    "JeitaLimit"
            })
            Return (CFG0)
    }


    Method (BPLT)
    {
            Name (CFG0,
            Package()
            {
                    1024,
                    0xFFFFFFFF,
                    0xFFFFFFFF,
                    0xFFFFFFFF,
                    0xFFFFFFFF,
                    1,
                    50,
                    50,
                    5000,
                    8,
                    1,
                    80,
                    0xFFFFFFEC,
                    72,
                    100,
                    30,
                    5,
                    6,
                    500,
                    126,
                    400,
                    0xFFFFFFFF,
                    750,
                    1,
                    2,
                    50,
                    10,
                    0,
                    0xFFFFFFEC,
                    10,
                    10,
                    10,
                    10,
                    1,
                    150,
                    100,
                    5,
                    10,
                    0x02,
                    0x33,
                    0x02,
                    0x0A,
                    0,
                    0,
                    70,
                    50,
                    60
            })
            Store(VNOM, Index(CFG0, 1))
            Store(VLOW, Index(CFG0, 2))
            Store(EMPT, Index(CFG0, 3))
            Store(DCMA, Index(CFG0, 4))
            Store(BOCP, Index(CFG0, 21))
            Store(IFGD, Index(CFG0, 25))
            Store(VFGD, Index(CFG0, 26))
            Return (CFG0)
    }


    Method (BPTM)
    {
            Name (CFG0,
            Package()
            {
                    15000,
                    0,
            })
            Return (CFG0)
    }





    Name (BCT1, Package()
    {
        4390,
        2265,
        0,
        20,
        45,
        60,
        200,
        0,


        0,
        0,


    })


    Method (BJTA)
    {
            Name (CFG0,
            Package()
            {
                    1,
                    0,
                    Package(0xa){0,0,0,0,0,0,0,0,0,0}
            })

            Store(VDD1, Index(\_SB_.PMBT.BCT1, 0))
            Store(FCC1, Index(\_SB_.PMBT.BCT1, 1))
            Store(HCLI, Index(\_SB_.PMBT.BCT1, 2))
            Store(SCLI, Index(\_SB_.PMBT.BCT1, 3))
            Store(SHLI, Index(\_SB_.PMBT.BCT1, 4))
            Store(HHLI, Index(\_SB_.PMBT.BCT1, 5))
            Store(FVC1, Index(\_SB_.PMBT.BCT1, 6))
            Store(CCC1, Index(\_SB_.PMBT.BCT1, 9))


            Store(\_SB_.PMBT.BCT1, Index(CFG0, 2))
            Return (CFG0)
    }


    Method (BAT1)
    {
            Name (CFG0,
            Package()
            {
                    0,
                    0xFFFFFFEC,
                    65,
                    Package(4){0,0,0,0},
                    Package(0xa){0,0,0,0,0,0,0,0,0,0}
            })







            Store(\_SB_.PMBT.BCT1, Index(CFG0, 4))

            Return (CFG0)
    }


    Method (BEHC)
    {






            Name (CFG0,
            Package()
            {
                    1,
                    0x8,
                    0x1,
                    0x0,
                    0x0,
                    0x2,
                    0x2,
                    0x4
            })
            Return (CFG0)
    }


    Method (CTMC)
    {
            Name (CFG0,
            Package()
            {
                    2000,
                    14000,
                    0xFFFFFFFF,
                    0xFFFFFFFF,
                    240000,
                    450000,
                    1,
            })
            Store(RID2, Index(CFG0, 2))
            Store(RID3, Index(CFG0, 3))
            Return (CFG0)
    }


    Method (BMPC)
    {
            Name (CFG0,
            Package()
            {
                    1,
                    1,
                    7000,

                    1000,
                    75,
                    0,
                    0,
                    90,
                    1,
                    100,
                    0,
                    Package(0x4)
                    {
                            0,
                            0,
                            0,
                            0,
                    }
            })

            If ((BATP == 0))
            {
                Store(0, Index(CFG0, 0))
            }

            Return (CFG0)
    }

    Method(ANDC)
    {
        Name (CFG0,
        Package()
        {
            0xFF,
            160,
            10,
            10,
            5,
            2,
            Package()
            {
                515,
                50,
                70,
                80,
                70,
                100,
                50,
                0,
                25,
                45,
                60,
                1,
                200,
                20,
                25,
            },
            Package()
            {
                1750,
                50,
                100,
                80,
                70,
                100,
                50,
                0,
                25,
                45,
                60,
                1,
                200,
                20,
                25,
            }
        })
        Store(\_SB_.BDID, Index(CFG0, 0))
        Return (CFG0)
    }
}




Device (PMBM)
{
    Name (_HID, "QCOM0263")
    Alias(\_SB.PSUB, _SUB)
    Name (_DEP, Package(0x1)
    {
        \_SB_.PMBT
    })

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {

        })
        Return (RBUF)
    }

    Method (_STA)
    {
        Return (0xB)
    }
}




Device (PBM2)
{
    Name (_HID, "QCOM0060")
    Alias(\_SB.PSUB, _SUB)
    Name (_DEP, Package(0x1)
    {
        \_SB_.PMBT
    })

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {

        })
        Return (RBUF)
    }

    Method (_STA)
    {
        Return (0xB)
    }
}




Device (BCL1) {
    Name (_HID, "QCOM02D6")
    Alias(\_SB.PSUB, _SUB)
    Name (_DEP, Package(0x1)
    {
       \_SB_.PMIC
    })

    Method (_STA)
    {
        Return (0xB)
    }

    Method (_CRS, 0x0, NotSerialized) {
       Name (RBUF, ResourceTemplate () {
          GpioInt(Edge, ActiveBoth, Shared, PullUp, 0, "\\_SB.PM01",,,,RawDataBuffer(){0x08}) {64}
          GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {65}
          GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {66}
          GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {67}



          GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {75}
          GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {336}
          GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {337}
          GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {339}
          GpioInt(Edge, ActiveHigh, Shared, PullUp, 0, "\\_SB.PM01",,,,) {340}


          GpioInt(Edge, ActiveBoth, Shared, PullUp, 0, "\\_SB.PM01",,,,RawDataBuffer(){0x08}) {344}
          GpioInt(Edge, ActiveBoth, Shared, PullUp, 0, "\\_SB.PM01",,,,RawDataBuffer(){0x08}) {345}
          GpioInt(Edge, ActiveBoth, Shared, PullUp, 0, "\\_SB.PM01",,,,RawDataBuffer(){0x08}) {346}

       })
       Return (RBUF)
    }

      Method (BCLS) {
          Name (CFG0,
          Package(){
              3,
              7,
              5000,
              80,
              90,
              2800,
              2600,
              3200,
              2750,
              2500,
              10,
              1,
              2000,
              14000
          })
          Return (CFG0)
      }

      Method (BCLQ) {
          Name (CFG0,
          Package(){
              "VCOMP_LOW0",
              "VCOMP_LOW1",
              "VCOMP_LOW2",
              "VCOMP_HI",




              "BAN_ALARM",
              "IBATT_HI",
              "IBATT_THI",
              "VBATT_LOW",
              "VBATT_TLOW",


              "LMH_LVL0",
              "LMH_LVL1",
              "LMH_LVL2",
          })
          Return (CFG0)
    }
}




Device(PTCC)
{
    Name (_HID, "QCOM02E6")
        Alias(\_SB.PSUB, _SUB)
    Name (_DEP, Package(0x1) {\_SB_.PMIC})
    Method (_CRS, 0x0, NotSerialized) {
      Name (RBUF, ResourceTemplate () {
        GpioInt(Edge, ActiveHigh, SharedAndWake, PullNone, 0, "\\_SB.PM01",,,,) {239}
        GpioInt(Edge, ActiveHigh, SharedAndWake, PullNone, 0, "\\_SB.PM01",,,,) {270}
        GpioInt(Edge, ActiveHigh, SharedAndWake, PullNone, 0, "\\_SB.PM01",,,,) {269}
        GpioInt(Edge, ActiveHigh, SharedAndWake, PullNone, 0, "\\_SB.PM01",,,,) {268}
        GpioInt(Edge, ActiveHigh, SharedAndWake, PullNone, 0, "\\_SB.PM01",,,,) {267}
        GpioInt(Edge, ActiveHigh, SharedAndWake, PullNone, 0, "\\_SB.PM01",,,,) {266}
        GpioInt(Edge, ActiveHigh, SharedAndWake, PullNone, 0, "\\_SB.PM01",,,,) {265}
        GpioInt(Edge, ActiveHigh, SharedAndWake, PullNone, 0, "\\_SB.PM01",,,,) {264}
        GpioInt(Edge, ActiveHigh, Exclusive, PullUp, 0, "\\_SB.PM01",,,,) {217}
        GpioInt(Edge, ActiveBoth, Exclusive, PullUp, 0, "\\_SB.PM01",,,,) {263}
        GpioInt(Edge, ActiveHigh, Exclusive, PullUp, 0, "\\_SB.PM01",,,,) {235}

      })
      Return (RBUF)
    }
}
