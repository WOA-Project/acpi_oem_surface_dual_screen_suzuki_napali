













Device (IPA)
{

   Name (_DEP, Package(0x6)
   {
        \_SB_.PEP0,
        \_SB_.RPEN,
        \_SB_.PILC,
        \_SB_.MMU0,
        \_SB_.GSI,
        \_SB_.GLNK,
   })

   Name(_HID, "QCOM02B3")
   Alias(\_SB.PSUB, _SUB)
   Name (_UID, 0)

   Method (_CRS, 0x0, NotSerialized)
   {
        Return
        (
           ResourceTemplate ()
           {

                Memory32Fixed (ReadWrite, 0x1E40000, 0x1FFFF)


                Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {343}
           }
        )
   }
}
