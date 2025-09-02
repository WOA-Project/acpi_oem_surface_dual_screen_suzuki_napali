






Device (GIO0)
{
	Name (_HID, "QCOM0217")
	Alias(\_SB.PSUB, _SUB)
	Name (_UID, 0)

	Method (_CRS, 0x0, NotSerialized) {
		Name (RBUF, ResourceTemplate ()
		{

			Memory32Fixed (ReadWrite, 0x03400000, 0x00C00000)


			Interrupt(ResourceConsumer, Level, ActiveHigh, Shared, , , ) {240}
			Interrupt(ResourceConsumer, Level, ActiveHigh, Shared, , , ) {240}
			Interrupt(ResourceConsumer, Level, ActiveHigh, Shared, , , ) {240}
			Interrupt(ResourceConsumer, Edge, ActiveBoth, Shared, , , ) {648}
			Interrupt(ResourceConsumer, Edge, ActiveBoth, Shared, , , ) {568}

		})
		Return (RBUF)
	}

	Method(OFNI, 0x0, NotSerialized) {
		Name(RBUF, Buffer()
		{
			0x96,
			0x00
		})
		Return (RBUF)
	}

	Name(GABL, Zero)
	Method(_REG, 0x2, NotSerialized)
	{
		If(LEqual(Arg0, 0x8))
		{
			Store(Arg1, GABL)
		}
	}

    OperationRegion(ORHL, GeneralPurposeIo, 0, 2)
    Field (ORHL, ByteAcc, NoLock, Preserve)
    {
        Connection(GpioIo(Shared, PullUp, 500, 0, IoRestrictionInputOnly, "\\_SB.GIO0", 0, ResourceConsumer, ,) {123}),
        GPH0, 1
    }

    Name(_AEI, ResourceTemplate()
    {
        GpioInt(Edge, ActiveBoth, Shared, PullUp, 500, "\\_SB.GIO0", 0, ResourceConsumer, ,) {123}
    })

    Method(_E7B, 0, Serialized)
    {
        Notify(\_SB.LID0, 0x80)
    }
}
