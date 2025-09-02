












Device (QGP0)
{



  Name (_HID, "QCOM02F4")
  Alias(\_SB.PSUB, _SUB)
  Name (_UID, 0)
  Name (_CCA, 0)

   Method (_CRS, 0x0, Serialized)
  {
    Name (RBUF, ResourceTemplate ()
    {

      Memory32Fixed (ReadWrite, 0x00804000, 0x50000)






      Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {281}







    })
    Return (RBUF)
  }

  Method (GPII, 0x0, Serialized)
  {
    Return( Package()
    {






























      Package ()
      {
        0x00,
        0x05,
        0x119
      }










































    })
  }
}

Device (QGP1)
{



  Name (_HID, "QCOM02F4")
  Alias(\_SB.PSUB, _SUB)
  Name (_UID, 1)
  Name (_CCA, 0)

  Method (_CRS, 0x0, Serialized)
  {
    Name (RBUF, ResourceTemplate ()
    {

      Memory32Fixed (ReadWrite, 0x00A04000, 0x50000)


      Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {312}

      Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {314}










    })
    Return (RBUF)
  }

  Method (GPII, 0x0, Serialized)
  {
    Return( Package()
    {






      Package ()
      {
        0x01,
        0x01,
        0x138
      },






      Package ()
      {
        0x01,
        0x03,
        0x13A
      }






















































    })
  }
}
