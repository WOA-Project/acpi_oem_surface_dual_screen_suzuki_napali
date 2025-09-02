










Device (IPC0)
{
	Name (_DEP, Package(0x1)
	{
		\_SB_.GLNK
	})
	Name (_HID, "QCOM021C")
	Alias(\_SB.PSUB, _SUB)
}





Device (GLNK)
{
	Name (_DEP, Package(0x1)
	{
		\_SB_.RPEN
	})
  Name (_HID, "QCOM02F9")
  Alias(\_SB.PSUB, _SUB)
	Name (_UID, 0)

  Method (_CRS, 0x0, NotSerialized) {
	Name (RBUF, ResourceTemplate ()
		{


		Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {483}


		Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {190}


		Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {204}


		Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {608}


		Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {481}


		Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {188}


		Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {202}


		Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {606}

		})
	Return (RBUF)
  }

}
