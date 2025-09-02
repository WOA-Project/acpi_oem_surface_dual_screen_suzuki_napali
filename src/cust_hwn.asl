














Name(HWNH, 1)
Name(HWNL, 1)




Device (HWN1)
{
   Name (_HID, "QCOM02A9")
   Alias(\_SB.PSUB, _SUB)

    Method (_STA)
    {
        if(LEqual(\_SB_.HWNH, 0)) {
            Return (0)
        }
        else {
            Return (0x0F)
        }
    }

    Name (_DEP,
        Package(0x1)
        {
           \_SB_.PMIC
        }
    )

    Method (_CRS, 0x0, NotSerialized)
    {
        Name (RBUF,
            ResourceTemplate ()
            {

                GpioInt(Level, ActiveHigh, Exclusive, PullNone, 0, "\\_SB.PM01", , , , ) {400}



            }
        )
        Return(RBUF)
    }

        Method(HAPI, 0x0, NotSerialized)
    {
        Name (CFG0,
            Package()
            {
                1,
                1,
                0,
            }
        )
        Return (CFG0)
    }

        Method(HAPC, 0x0, NotSerialized)
    {
        Name (CFG0,
            Package()
            {

                0,
                2400,
                0,
                1,
                1,
                1,
                1,
                0,



                2,

                1,




                3,


                20,






                1,
                0x1B,
                0,




                1,
                6,


                0,
                0,
                975,

                3,

                1,
            }
        )
        Return (CFG0)
    }
}





Device (HWN0)
{
   Name (_HID, "QCOM02A8")
   Alias(\_SB.PSUB, _SUB)
   Name (_UID, 0)

   Method (_STA)
   {
       if(LEqual(\_SB_.HWNL, 0)) {
           Return (0)
       }
       else {
           Return (0x0F)
       }
   }


   Method(HWNL, 0x0, NotSerialized)
   {
      Name (CFG0,
      Package()
      {
         1,
         3,


         411,
         20,

         0x20,
         0x02,

         0x40,
         0x03,

         0x80,
         0x04,


         1,

         1,
         1,
         3,

         1,
         1,
       })
       Return (CFG0)
   }
}
