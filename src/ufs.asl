




Device (UFS0)
{
 Name (_DEP, Package(0x1)
 {
     \_SB.PEP0,
 })

   Name (_HID, "QCOM24A5")
   Alias(\_SB.PSUB, _SUB)
   Name (_CID, "ACPI\QCOM24A5")
   Name (_UID, 0)
   Name (_CCA, 0)

   Method (_CRS, 0x0, NotSerialized) {
      Name (RBUF, ResourceTemplate ()
      {

          Memory32Fixed (ReadWrite, 0x1D84000, 0x14000)
          Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {297}
      })
      Return (RBUF)
   }


   Device (DEV0)
   {

      Method (_ADR)
      {
           Return (8)
      }


      Method (_RMV)
      {
           Return (0)
      }
   }
 }
