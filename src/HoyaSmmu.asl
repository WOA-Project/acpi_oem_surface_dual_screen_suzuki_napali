








        Device (MMU0)
        {


            Name (_HID, "QCOM0212")
            Alias(\_SB.PSUB, _SUB)
            Name (_UID, 0)
            Name (_DEP, Package ()
            {
                \_SB_.MMU1
            })


            Method (_CRS, 0x0, NotSerialized)
            {
                Return (ResourceTemplate ()
                {

                    Memory32Fixed (ReadWrite, 0x15000000, 0x7FFB8)

                    Memory32Fixed (ReadWrite, 0x1F46000, 0x4)

                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {128}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {129}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {130}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {131}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {132}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {133}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {134}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {135}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {136}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {137}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {138}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {139}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {140}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {141}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {142}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {143}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {144}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {145}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {146}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {147}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {148}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {149}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {150}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {213}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {214}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {215}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {216}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {217}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {218}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {219}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {220}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {221}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {222}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {223}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {224}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {347}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {348}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {349}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {350}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {351}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {352}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {353}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {354}



























                })
            }
        }

        Device (MMU1)
        {


            Name (_HID, "QCOM0212")
            Alias(\_SB.PSUB, _SUB)
            Name (_UID, 1)
            Name (_DEP, Package()
            {
                \_SB_.PEP0
            })




            Method (_CRS, 0x0, NotSerialized)
            {
                Return (ResourceTemplate ()
                {

                    Memory32Fixed (ReadWrite, 0x05040000, 0x10000)
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {396}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {397}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {398}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {399}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {400}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {401}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {402}
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {403}
                })
            }
        }


        Device (IMM0)
        {


            Name (_HID, "QCOM030B")
            Alias(\_SB.PSUB, _SUB)
            Name (_UID, 0)
        }

        Device (IMM1)
        {


            Name (_HID, "QCOM030B")
            Alias(\_SB.PSUB, _SUB)
            Name (_UID, 1)
        }
