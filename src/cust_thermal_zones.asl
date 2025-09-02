












        Device(AGR0)
        {
            Name(_HID, "ACPI000C")
            Name(_PUR, Package() {1, 0})
            Method(_OST, 0x3, NotSerialized)
            {
                Store(Arg2, \_SB_.PEP0.ROST)
            }
        }


















        ThermalZone (TZ0) {
            Name (_HID, "QCOM02B0")
            Name (_UID, 1)
            Name(_TZD, Package (){\_SB.SYSM.CLUS.CPU0, \_SB.SYSM.CLUS.CPU1, \_SB.SYSM.CLUS.CPU2, \_SB.SYSM.CLUS.CPU3})
			Method(_DEP) {
                Return (Package() {\_SB.PEP0})
            }
        }


        ThermalZone (TZ1) {
            Name (_HID, "QCOM02B0")
            Name (_UID, 2)
            Name(_TZD, Package (){\_SB.PEP0})
			Name(TPSV, 3830)
	        Method(_PSV) { Return (\_SB.TZ1.TPSV) }
			Name(_MTL, 20)


			Name(TTC1, 0)
			Method(_TC1) { Return (\_SB.TZ1.TTC1) }









			Name(TTC2, 1)
			Method(_TC2) { Return (\_SB.TZ1.TTC2) }







            Name(TTSP, 50)
			Method(_TSP) { Return (\_SB.TZ1.TTSP) }








            Name(_TZP, 0)

			Method(_DEP) {
                Return (Package() {\_SB.PEP0})
            }
        }





        ThermalZone (TZ2) {
            Name (_HID, "QCOM02B1")
            Name (_UID, 3)
            Name(_TZD, Package (){\_SB.SYSM.CLUS.CPU4, \_SB.SYSM.CLUS.CPU5, \_SB.SYSM.CLUS.CPU6, \_SB.SYSM.CLUS.CPU7})
			Method(_DEP) {
                Return (Package() {\_SB.PEP0})
            }
        }


        ThermalZone (TZ3) {
            Name (_HID, "QCOM02B1")
            Name (_UID, 4)
            Name(_TZD, Package (){\_SB.PEP0})

			Name(TPSV, 3830)
	        Method(_PSV) { Return (\_SB.TZ3.TPSV) }
			Name(TTC1, 0)
			Method(_TC1) { Return (\_SB.TZ3.TTC1) }
			Name(TTC2, 1)
			Method(_TC2) { Return (\_SB.TZ3.TTC2) }
            Name(TTSP, 1)
			Method(_TSP) { Return (\_SB.TZ3.TTSP) }
            Name(_MTL, 20)
            Name(_TZP, 0)

			Method(_DEP) {
                Return (Package() {\_SB.PEP0})
            }
        }










        ThermalZone (TZ20) {
            Name (_HID, "QCOM02AB")
            Name (_UID, 5)
            Name(_TZD, Package (){\_SB.GPU0})
            Name(TPSV, 3680)
	        Method(_PSV) { Return (\_SB.TZ20.TPSV) }
            Name(TTC1, 1)
			Method(_TC1) { Return (\_SB.TZ20.TTC1) }


            Name(TTC2, 2)
			Method(_TC2) { Return (\_SB.TZ20.TTC2) }

            Name(TTSP, 2)
			Method(_TSP) { Return (\_SB.TZ20.TTSP) }
            Name(_TZP, 0)
			Method(_DEP) {
                Return (Package() {\_SB.PEP0})
            }
        }


        ThermalZone (TZ21) {
            Name (_HID, "QCOM02AC")
            Name (_UID, 6)
            Name(_TZD, Package (){\_SB.GPU0})
            Name(TPSV, 3680)
	        Method(_PSV) { Return (\_SB.TZ21.TPSV) }
			Name(TTC1, 1)
			Method(_TC1) { Return (\_SB.TZ21.TTC1) }
            Name(TTC2, 2)
			Method(_TC2) { Return (\_SB.TZ21.TTC2) }
			Name(TTSP, 2)
			Method(_TSP) { Return (\_SB.TZ21.TTSP) }
            Name(_TZP, 0)
			Method(_DEP) {
                Return (Package() {\_SB.PEP0})
            }
        }


























        ThermalZone (TZ32) {
            Name (_HID, "QCOM02C9")
            Name (_UID, 0)
            Name(_TZD, Package (){\_SB.GPU0.AVS0})
            Name(TPSV, 3680)
            Method(_PSV) { Return (\_SB.TZ32.TPSV) }
            Name(TTC1, 1)
            Method(_TC1) { Return (\_SB.TZ32.TTC1) }


            Name(TTC2, 2)
            Method(_TC2) { Return (\_SB.TZ32.TTC2) }

            Name(TTSP, 10)
            Method(_TSP) { Return (\_SB.TZ32.TTSP) }
            Name(_TZP, 0)
            Method(_DEP) {
                Return (Package() {\_SB.PEP0})
            }
        }

        ThermalZone (TZ33) {
            Name (_HID, "QCOM02CB")
            Name (_UID, 8)
            Name(_TZD, Package (){\_SB.AMSS})

			Name(TPSV, 3680)
	        Method(_PSV) { Return (\_SB.TZ33.TPSV) }

			Name(TTC1, 1)
	        Method(_TC1) { Return (\_SB.TZ33.TTC1) }

			Name(TTC2, 2)
	        Method(_TC2) { Return (\_SB.TZ33.TTC2) }

			Name(TTSP, 10)
	        Method(_TSP) { Return (\_SB.TZ33.TTSP) }

            Name(_TZP, 0)
            Method(_DEP) {
            Return (Package() {\_SB.PEP0})
            }
        }


























        ThermalZone (TZ38) {
            Name (_HID, "QCOM029E")
            Name (_UID, 2)
            Name(_TZD, Package (){
                \_SB.PEP0})
		    Method(INVT) { Return (1) }
	        Method(_MTL) { Return (60) }
			Name(TPSV, 2830)
	        Method(_PSV) { Return (\_SB.TZ38.TPSV) }
			Name(TTC1, 4)
	        Method(_TC1) { Return (\_SB.TZ38.TTC1) }
			Name(TTC2, 3)
	        Method(_TC2) { Return (\_SB.TZ38.TTC2) }
			Name(TTSP, 10)
	        Method(_TSP) { Return (\_SB.TZ38.TTSP) }
            Name(_TZP, 0)
            Method(_DEP) {
                Return (Package() {\_SB.PEP0, \_SB.ADC1})
            }
        }





        ThermalZone (TZ40) {
            Name (_HID, "QCOM02AF")
            Name (_UID, 9)
            Name(_TZD, Package (){\_SB.COEX})

			Name(TPSV, 3580)
	        Method(_PSV) { Return (\_SB.TZ40.TPSV) }
			Name(TTC1, 1)
	        Method(_TC1) { Return (\_SB.TZ40.TTC1) }
			Name(TTC2, 5)
	        Method(_TC2) { Return (\_SB.TZ40.TTC2) }
			Name(TTSP, 30)
	        Method(_TSP) { Return (\_SB.TZ40.TTSP) }

            Name(_TZP, 0)
            Method(_DEP) {
                Return (Package() {\_SB.PEP0})
            }
        }

        ThermalZone (TZ41) {
            Name (_HID, "QCOM0295")
            Name (_UID, 10)




            Name(_TSP, 50)
            Name(_TZP, 0)
        }







		ThermalZone (TZ44) {
            Name (_HID, "QCOM02CC")
            Name (_UID, 0)
            Name(_TZD, Package (){\_SB.SYSM.CLUS.CPU4, \_SB.SYSM.CLUS.CPU5, \_SB.SYSM.CLUS.CPU6, \_SB.SYSM.CLUS.CPU7})
			Name(TPSV, 3680)
			Method(_PSV) { Return (\_SB.TZ44.TPSV) }
			Name(TTC1, 0)
			Method(_TC1) { Return (\_SB.TZ44.TTC1) }
			Name(TTC2, 1)
			Method(_TC2) { Return (\_SB.TZ44.TTC2) }
			Name(TTSP, 1)
			Method(_TSP) { Return (\_SB.TZ44.TTSP) }
            Name(_TZP, 0)
            Method(_DEP) {
            Return (Package() {\_SB.PEP0})
            }
        }













































    ThermalZone (TZ98) {
        Name (_HID, "QCOM0294")

        Name(_TZD, Package (){
            \_SB.GPU0.MON0, \_SB.GPU0})

		Name(TPSV, 3630)
	    Method(_PSV) { Return (\_SB.TZ98.TPSV) }
		Name(TTC1, 1)
	    Method(_TC1) { Return (\_SB.TZ98.TTC1) }

		Name(TTC2, 5)
	    Method(_TC2) { Return (\_SB.TZ98.TTC2) }
		Name(TTSP, 20)
	    Method(_TSP) { Return (\_SB.TZ98.TTSP) }

        Name(_TZP, 0)
		Method(_DEP) {
            Return (Package(0x2) {\_SB.PEP0,\_SB_.BCL1})
        }
    }










        ThermalZone (TZ99) {
            Name (_HID, "QCOM02B2")
            Name (_UID, 100)

			Name(TCRT, 3830)
	        Method(_CRT) { Return (\_SB.TZ99.TCRT) }
			Name(TTC1, 4)
	        Method(_TC1) { Return (\_SB.TZ99.TTC1) }
			Name(TTC2, 3)
	        Method(_TC2) { Return (\_SB.TZ99.TTC2) }
			Name(TTSP, 10)
	        Method(_TSP) { Return (\_SB.TZ99.TTSP) }
            Name(_TZP, 0)

			Method(_DEP) {
                Return (Package() {\_SB.PEP0})
            }
        }





















































































