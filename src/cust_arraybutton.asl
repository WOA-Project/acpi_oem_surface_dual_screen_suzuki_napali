












Device (BTNS)
{
     Name(_HID, "ACPI0011")

     Alias(\_SB.PSUB, _SUB)

     Name(_UID, 0)

     Method (_CRS, 0x0, NotSerialized)
     {
         Name (RBUF, ResourceTemplate ()
         {

              GpioInt(Edge, ActiveBoth, ExclusiveAndWake, PullDown, 0, "\\_SB.PM01", ,) {0}


              GpioInt(Edge, ActiveBoth, Exclusive, PullUp, 3000, "\\_SB.PM01", ,) {133}


              GpioInt(Edge, ActiveBoth, Exclusive, PullDown, 0, "\\_SB.PM01", ,) {1}

                       })
         Return (RBUF)
     }

     Name(_DSD, Package(2) {
        ToUUID("FA6BD625-9CE8-470D-A2C7-B3CA36C4282E"),
        Package() {
            Package(5) {0,1,0,0x01,0x0D},
            Package(5) {1,0,1,0x01,0x81},
            Package(5) {1,1,1,0x0C,0xE9},
            Package(5) {1,2,1,0x0C,0xEA},
                    },
     })
}
