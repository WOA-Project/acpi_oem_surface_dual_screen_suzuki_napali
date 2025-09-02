Device (SYSM) {
        Name (_HID, "ACPI0010")
        Name (_UID, 0x100000)
		Name (_LPI, Package() {
				0,
				0x1000000,
				2,


				Package () {
					9500,
					6000,
					0,
					0x20,
					0,
					0,
					0x3300,
					ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
					ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
					"platform.F1"
				},

				Package () {
					10000,
					6600,
					1,
					0x20,
					0,
					0,
					0xC300,
					ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
					ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
					"platform.F2"
				}
			})

	Device (CLUS) {
			Name (_HID, "ACPI0010")
			Name (_UID, 0x10)
			Name (_LPI, Package() {
				0,
				0x1000000,
				2,


				Package () {
					5900,
					3000,
					0,
					0,
					0,
					0,
                    0x20,
					ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
					ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
					"L3Cluster.D2"
				},

				Package () {
					6000,
					3300,
					1,
					0,
					0,
					2,
                    0x40,
					ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
					ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
					"L3Cluster.D4"
				},

				})


	        Device (CPU0)
			{
				Name (_HID, "ACPI0007")
				Name (_UID, 0x0)
				Method(_STA){ Return (0xF) }

				Name (_LPI, Package() {
					0,
					0,
					4,


					Package () {
						0,
						0,
						1,
						0,
						0,
						0,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver0.C1"
					},

					Package () {
						400,
						100,
						0,
						0,
						0,
						1,

						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver0.C2"
					},

					Package () {
						5000,
						500,
						1,
						1,
						0,
						1,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver0.C3"
					},

					Package () {
						5100,
						550,
						1,
						1,
						0,
						2,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver0.C4"
					},

				})
			}

	Device (CPU1)
			{
				Name (_HID, "ACPI0007")
				Name (_UID, 0x1)
				Method(_STA){ Return (0xF) }

				Name (_LPI, Package() {
					0,
					0,
					4,


					Package () {
						0,
						0,
						1,
						0,
						0,
						0,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver1.C1"
					},

					Package () {
						400,
						100,
						0,
						0,
						0,
						1,

						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver1.C2"
					},

					Package () {
						5000,
						500,
						1,
						1,
						0,
						1,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver1.C3"
					},

					Package () {
						5100,
						550,
						1,
						1,
						0,
						2,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver1.C4"
					},

				})
			}

	Device (CPU2)
			{
				Name (_HID, "ACPI0007")
				Name (_UID, 0x2)
				Method(_STA){ Return (0xF) }

				Name (_LPI, Package() {
					0,
					0,
					4,


					Package () {
						0,
						0,
						1,
						0,
						0,
						0,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver2.C1"
					},

					Package () {
						400,
						100,
						0,
						0,
						0,
						1,

						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver2.C2"
					},

					Package () {
						5000,
						500,
						1,
						1,
						0,
						1,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver2.C3"
					},

					Package () {
						5100,
						550,
						1,
						1,
						0,
						2,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver2.C4"
					},

				})
			}

	Device (CPU3)
			{
				Name (_HID, "ACPI0007")
				Name (_UID, 0x3)
				Method(_STA){ Return (0xF) }

				Name (_LPI, Package() {
					0,
					0,
					4,


					Package () {
						0,
						0,
						1,
						0,
						0,
						0,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver3.C1"
					},

					Package () {
						400,
						100,
						0,
						0,
						0,
						1,

						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver3.C2"
					},

					Package () {
						5000,
						500,
						1,
						1,
						0,
						1,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver3.C3"
					},

					Package () {
						5100,
						550,
						1,
						1,
						0,
						2,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoSilver3.C4"
					},

				})
			}

	Device (CPU4)
			{
				Name (_HID, "ACPI0007")
				Name (_UID, 0x4)
				Method(_STA){ Return (0xF) }

				Name (_LPI, Package() {
					0,
					0,
					4,


					Package () {
						0,
						0,
						1,
						0,
						0,
						0,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold0.C1"
					},

					Package () {
						400,
						100,
						0,
						0,
						0,
						1,

						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold0.C2"
					},

					Package () {
						1000,
						650,
						1,
						1,
						0,
						1,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold0.C3"
					},

					Package () {
						1500,
						1100,
						1,
						1,
						0,
						2,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold0.C4"
					},

				})
			}

	Device (CPU5)
			{
				Name (_HID, "ACPI0007")
				Name (_UID, 0x5)
				Method(_STA){ Return (0xF) }

				Name (_LPI, Package() {
					0,
					0,
					4,


					Package () {
						0,
						0,
						1,
						0,
						0,
						0,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold1.C1"
					},

					Package () {
						400,
						100,
						0,
						0,
						0,
						1,

						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold1.C2"
					},

					Package () {
						1000,
						650,
						1,
						1,
						0,
						1,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold1.C3"
					},

					Package () {
						1500,
						1100,
						1,
						1,
						0,
						2,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold1.C4"
					},
				})
			}

	Device (CPU6)
			{
				Name (_HID, "ACPI0007")
				Name (_UID, 0x6)
				Method(_STA){ Return (0xF) }

				Name (_LPI, Package() {
					0,
					0,
					4,


					Package () {
						0,
						0,
						1,
						0,
						0,
						0,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold2.C1"
					},

					Package () {
						400,
						100,
						0,
						0,
						0,
						1,

						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold2.C2"
					},

					Package () {
						1000,
						650,
						1,
						1,
						0,
						1,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold2.C3"
					},

					Package () {
						1500,
						1100,
						1,
						1,
						0,
						2,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold2.C4"
					},
				})
			}

	Device (CPU7)
			{
				Name (_HID, "ACPI0007")
				Name (_UID, 0x7)
				Method(_STA){ Return (0xF) }

				Name (_LPI, Package() {
					0,
					0,
					4,


					Package () {
						0,
						0,
						1,
						0,
						0,
						0,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold3.C1"
					},

					Package () {
						400,
						100,
						0,
						0,
						0,
						1,

						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold3.C2"
					},

					Package () {
						1000,
						650,
						1,
						1,
						0,
						1,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold3.C3"
					},

					Package () {
						1500,
						1100,
						1,
						1,
						0,
						2,
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						ResourceTemplate(){Register(SystemMemory,0,0,0,0)},
						"KryoGold3.C4"
					},
				})
			}
	}
}
