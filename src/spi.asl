

         SPI1 - EPM



        Device (SPI1)

        {

            Name (_HID, "QCOM021E")

			Alias(\_SB.PSUB, _SUB)

            Name (_UID, 1)

            Name (_DEP, Package(){\_SB_.PEP0, \_SB_.BAM3})

            Name (_CCA, 0)



            Method (_CRS)

            {

                Name (RBUF, )

                {

                    Memory32ite, 0xf9923000, 0x00000800)

                    Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive) {127}

                })

                Return (RBUF)

            }

            Method (FNOC)

            {

                 Name(RBUF, Buffer()

                 {

                     0x01,

                     0x00,

                     0x40,

                     0x90,

                     0xf9,

                     0x0d,

                     0x0c,

                     0x00,

                     0x01

                })

                Return (RBUF)

            }

        }
