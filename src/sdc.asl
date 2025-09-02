






Device (SDC2)
{
   Name (_DEP, Package(0x2) {
       \_SB_.PEP0,
       \_SB_.GIO0
   })

   Name (_HID, "QCOM2466")
   Alias(\_SB.PSUB, _SUB)
   Name (_CID, "ACPI\QCOM2466")
   Name (_UID, 1)
   Name (_CCA, 0)

   Method (_CRS, 0x0, NotSerialized) {
       Name (RBUF, ResourceTemplate ()
       {

           Memory32Fixed (ReadWrite, 0x8804000, 0x00001000)

           Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {236}


           GpioInt(Edge, ActiveBoth, SharedAndWake, PullUp, 30000, "\\_SB.GIO0", ,) {192}
           Gpioio(Shared, PullUp, 0, 0, , "\\_SB.GIO0", ,) {126}
       })
       Return (RBUF)
   }

   Method(_DIS)
   {

   }
   Method (_STA)
   {
       Return(0xF)
   }
}
