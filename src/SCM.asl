






Device (SCM0)
{
    Name (_HID, "QCOM0214")
	Alias(\_SB.PSUB, _SUB)
    Name (_UID, 0)
}




Device (TREE)
{
    Name (_HID, "QCOM02BB")
	Alias(\_SB.PSUB, _SUB)
    Name (_UID, 0)

	 Method (MCGT)
    {
        Name(TPKG, Package()
        {
            Package ()
            {

                0x00000000,

				0x00000000,

				0x00000000,

				0x00000000
            }
        })


        Store (TPMA, Index(DeRefOf(Index (TPPK, 0)), 0))
		Store (TDTV, Index(DeRefOf(Index (TPPK, 0)), 1))
		Store (TCMA, Index(DeRefOf(Index (TPPK, 0)), 2))
		Store (TCML, Index(DeRefOf(Index (TPPK, 0)), 3))

        Return (TPKG)
    }
}
