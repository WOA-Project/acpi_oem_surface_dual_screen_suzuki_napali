















Device (GSI)
{

   Name (_DEP, Package () { \_SB_.PEP0 })

   Name(_HID, "QCOM02E7")
   Alias(\_SB.PSUB, _SUB)
   Name (_UID, 0)

   Method (_CRS, 0x0, NotSerialized)
   {
        Name (RBUF, ResourceTemplate ()
        {

            Memory32Fixed (ReadWrite, 0x1E00000, 0x30000)

            Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {464}
        })
        Return (RBUF)
   }
}
