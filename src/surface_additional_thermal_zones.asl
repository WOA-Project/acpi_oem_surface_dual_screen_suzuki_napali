


ThermalZone (AMX1)
{
    Name (_HID, "QCOM0299")
    Name (_UID, 20)
    Name(_TZD, Package (){\_SB.PEP0})
	Method(_DEP) {
        Return (Package() {\_SB.PEP0, \_SB.ADC1})
    }

    Name (_TC1, 2)
    Name (_TC2, 2)
    Name (_TSP, 10)
    Name (_MTL, 100)
    Method (_PSV, 0, NotSerialized)
    {
        Return (3111)
    }
}




ThermalZone (AMX2)
{
    Name (_HID, "QCOM029A")
    Name (_UID, 21)
    Name(_TZD, Package (){\_SB.PEP0})
	Method(_DEP) {
        Return (Package() {\_SB.PEP0, \_SB.ADC1})
    }

    Name (_TC1, 2)
    Name (_TC2, 2)
    Name (_TSP, 10)
    Name (_MTL, 100)
    Method (_PSV, 0, NotSerialized)
    {
        Return (3111)
    }
}




ThermalZone (AMX3)
{
    Name (_HID, "QCOM029B")
    Name (_UID, 22)

	Method(_DEP) {
        Return (Package() {\_SB.PEP0, \_SB.ADC1})
    }
}




ThermalZone (AMX4)
{
    Name (_HID, "QCOM029C")
    Name (_UID, 23)

	Method(_DEP) {
        Return (Package() {\_SB.PEP0, \_SB.ADC1})
    }
}




ThermalZone (AMX5)
{
    Name (_HID, "QCOM029D")
    Name (_UID, 24)
    Name (_CRT, 3258)
    Name(_TZD, Package (){\_SB.PEP0})
	Method(_DEP) {
        Return (Package() {\_SB.PEP0, \_SB.ADC1})
    }
    Name (_TC1, 2)
    Name (_TC2, 2)
    Name (_TSP, 10)
    Name (_MTL, 100)
    Method (_PSV, 0, NotSerialized)
    {
        Return (3111)
    }
}




ThermalZone (PMOD)
{
    Name (_HID, "QCOM029E")
    Name (_UID, 29)

	Method(_DEP) {
        Return (Package() {\_SB.PEP0, \_SB.ADC1})
    }
}




ThermalZone (PMI1)
{
    Name (_HID, "QCOM02A0")
    Name (_UID, 12)
    Name (_TZP, 300)

	Method(_DEP) {
        Return (Package() {\_SB.PEP0, \_SB.ADC1})
    }
}




ThermalZone (PMI2)
{
    Name (_HID, "QCOM02EE")
    Name (_UID, 13)
    Name (_TZP, 300)

	Method(_DEP) {
        Return (Package() {\_SB.PEP0, \_SB.ADC1})
    }
}




ThermalZone (AUX)
{
    Name (_HID, "QCOM029F")
    Name (_UID, 14)
    Name (_TZP, 300)

	Method(_DEP) {
        Return (Package() {\_SB.PEP0, \_SB.ADC1})
    }
}