






OperationRegion(CP00, SystemMemory, 0x13000000, 0x24)
Field(CP00, DWordAcc, NoLock, Preserve){
	MVIO, 32,
	MV01, 32,
	MV02, 32,
	MV03, 32,
	MV04, 32,
	MV11, 32,
	MV12, 32,
	MV13, 32,
	MV14, 32,
}


OperationRegion(CP01, SystemMemory, 0x01C00000, 0x1004)
Field(CP01, DWordAcc, NoLock, Preserve){
	PSC0, 32,
	Offset(0x20),
	PPC0, 32,
	PPS0, 32,
	Offset(0x1b0),
	PLT0, 32,
	Offset(0x358),
	PSL0, 32,
	Offset(0x360),
	WBL0, 32,
	WBH0, 32,
	WLL0, 32,
	WLH0, 32,
	RBL0, 32,
	RBH0, 32,
	RLL0, 32,
	RLH0, 32,
	PPEB, 32,
	Offset(0x398),
	WBL1, 32,
	WBH1, 32,
	WLL1, 32,
	WLH1, 32,
	RBL1, 32,
	RBH1, 32,
	RLL1, 32,
	RLH1, 32,
	Offset(0x1000),
	PDT0, 32,
}


OperationRegion(CP02, SystemMemory, 0x01C06000, 0x188)
Field(CP02, DWordAcc, NoLock, Preserve){
	Offset (0x00C),
	QCB1, 32,
	QSEC, 32,
	QAP1, 32,
	QAP2, 32,
	QSP1, 32,
	QSP2, 32,
	QSS1, 32,
	QSS2, 32,
	Offset (0x034),
	QECE, 32,
	QCE1, 32,
	QSCC, 32,
	QSBE, 32,
	Offset (0x048),
	QCPI, 32,
	Offset (0x05C),
	QCED, 32,
	QCP0, 32,
	Offset (0x068),
	QPR0, 32,
	Offset (0x070),
	QPC0, 32,
	Offset (0x080),
	QSES, 32,
	Offset (0x088),
	QCRC, 32,
	Offset (0x090),
	QCLC, 32,
	Offset (0x098),
	QC1M, 32,
	QC2M, 32,
	QC3M, 32,
	Offset (0x0B0),
	QSM0, 32,
	Offset (0x0B8),
	QS1M, 32,
	QS2M, 32,
	QS3M, 32,
	Offset (0x0D8),
	QIG0, 32,
	QIG1, 32,
	Offset (0x0F0),
	QCVT, 32,
	QVT1, 32,
	QVT2, 32,
	Offset (0x11C),
	QTT1, 32,
	QTT2, 32,
	Offset (0x138),
	QCCS, 32,
	QCHS, 32,
	Offset (0x148),
	QCD0, 32,
	Offset (0x154),
	QCCN, 32,
	Offset (0x15C),
	QCCC, 32,
	Offset (0x164),
	QMCS, 32,
	Offset (0x184),
	QCCM, 32,
}


OperationRegion(CP03, SystemMemory, 0x01C06200, 0xA8)
Field(CP03, DWordAcc, NoLock, Preserve){
	Offset (0x044),
	QTOT, 32,
	Offset (0x060),
	QTDE, 32,
	Offset (0x08C),
	QTM1, 32,
	Offset (0x0A4),
	QTL2, 32,
}


OperationRegion(CP04, SystemMemory, 0x01C06400, 0x16C)
Field(CP04, DWordAcc, NoLock, Preserve){
	Offset (0x00C),
	QRSH, 32,
	Offset (0x014),
	QRSG, 32,
	Offset (0x034),
	QRUS, 32,
	Offset (0x03C),
	QRFL, 32,
	Offset (0x044),
	QRPC, 32,
	Offset (0x0D4),
	QRC2, 32,
	QRC3, 32,
	QRC4, 32,
	Offset (0x0F8),
	QRA1, 32,
	QRA2, 32,
	Offset (0x100),
	QRSE, 32,
	QRSC, 32,
	Offset (0x10C),
	QRDC, 32,
	Offset (0x11C),
	QRIM, 32,
	Offset (0x164),
	QRM0, 32,
	QRM1, 32,
}


OperationRegion(CP05, SystemMemory, 0x01C06600, 0x70)
Field(CP05, DWordAcc, NoLock, Preserve){
	Offset (0x02C),
	PMDC, 32,
	Offset (0x044),
	PAC1, 32,
	Offset (0x054),
	PMC2, 32,
	PMC3, 32,
	PMC4, 32,
	PMC5, 32,
}


OperationRegion(CP06, SystemMemory, 0x01C06800, 0x210)
Field(CP06, DWordAcc, NoLock, Preserve){
	PPSR, 32,
	PPDC, 32,
	PCST, 32,
	Offset (0x054),
	PERD, 32,
	Offset (0x06C),
	PSC4, 32,
	Offset (0x0A0),
	PDTA, 32,
	PLTA, 32,
	PLCD, 32,
	Offset (0x0C4),
	PFC1, 32,
	PFC2, 32,
	PFVL, 32,
	PFVH, 32,
	PFMC, 32,
	Offset (0x174),
	PPPS, 32,
	Offset (0x1A8),
	PSDM, 32,
	PODA, 32,
	PPSC, 32,
	Offset (0x1D8),
	PRSL, 32,
	PDAL, 32,
	PDAM, 32,
	Offset (0x20C),
	PRC1, 32,
}


OperationRegion(CP07, SystemMemory, 0x60000000, 0x1000)
Field(CP07, DWordAcc, NoLock, Preserve){
	Offset(0x4),
	SCR0, 32,
	CRI0, 32,
	Offset(0x10),
	R0B0, 32,
	R0B1, 32,
	BNR0, 32,
	Offset(0x7C),
	LCA0, 32,
	LCS0, 32,
	Offset(0x88),
	SLC0, 32,
	Offset(0xa0),
	LC20, 32,
	Offset(0x8bc),
	CSW0, 32,
	Offset(0x900),
	IAV0, 32,
	CR10, 32,
	CR20, 32,
	ILB0, 32,
	IUB0, 32,
	ILR0, 32,
	ILT0, 32,
	IUT0, 32,
	Offset(0xF24),
	ESC0, 32,
	EST0, 32,
	Offset(0xFC4),
	ECS0, 32,
}


Method(PPU0, 0x0, Serialized) {
	Name(TOUT, Zero)
	Store (0x04, PDT0)
	Store (0x01, PPDC)
	Store (0x14, QECE)
	Store (0x07, QCPI)
	Store (0x01, QCLC)
	Store (0x20, QCRC)
	Store (0x00, QCVT)
	Store (0x01, QVT2)
	Store (0xC9, QVT1)
	Store (0xFF, QTT1)
	Store (0x3F, QTT2)
	Store (0x01, QMCS)
	Store (0x00, QCCN)
	Store (0x0A, QCD0)
	Store (0x19, QCED)
	Store (0x90, QCE1)
	Store (0x82, QSM0)
	Store (0x02, QS3M)
	Store (0xEA, QS2M)
	Store (0xAB, QS1M)
	Store (0x00, QC3M)
	Store (0x0D, QC2M)
	Store (0x04, QC1M)
	Store (0x00, QCHS)
	Store (0x06, QCP0)
	Store (0x16, QPR0)
	Store (0x36, QPC0)
	Store (0x01, QCCM)
	Store (0x16, QCCC)
	Store (0x33, QCCS)
	Store (0x02, QSCC)
	Store (0x07, QSBE)
	Store (0x04, QSES)
	Store (0x00, QIG1)
	Store (0x3F, QIG0)
	Store (0x09, QCB1)
	Store (0x01, QSEC)
	Store (0x40, QSP1)
	Store (0x01, QSP2)
	Store (0x02, QAP1)
	Store (0x00, QAP2)
	Store (0x7E, QSS1)
	Store (0x15, QSS2)
	Store (0x02, QTOT)
	Store (0x12, QTL2)
	Store (0x10, QTDE)
	Store (0x06, QTM1)
	Store (0x03, QRSC)
	Store (0x1C, QRSE)
	Store (0x14, QRDC)
	Store (0x0E, QRC2)
	Store (0x04, QRC3)
	Store (0x1A, QRC4)
	Store (0x4B, QRUS)
	Store (0x04, QRSG)
	Store (0x04, QRSH)
	Store (0x71, QRA1)
	Store (0x59, QRM0)
	Store (0x59, QRM1)
	Store (0x80, QRA2)
	Store (0x40, QRIM)
	Store (0x71, QRPC)
	Store (0x40, QRFL)
	Store (0x04, PERD)
	Store (0x52, PMDC)
	Store (0x50, PMC2)
	Store (0x1A, PMC4)
	Store (0x06, PMC5)
	Store (0x83, PFC2)
	Store (0x09, PFVL)
	Store (0xA2, PFVH)
	Store (0x40, PFMC)
	Store (0x02, PFC1)
	Store (0x00, PODA)
	Store (0x01, PDTA)
	Store (0x00, PDAM)
	Store (0x20, PDAL)
	Store (0x00, PSDM)
	Store (0x01, PLTA)
	Store (0x73, PLCD)
	Store (0xAA, PRSL)
	Store (0x03, PPSC)
	Store (0x0D, PRC1)
	Store (0x00, PSC4)
	Store (0x00, PAC1)


	If (LGreaterEqual (\_SB.SIDV,0x00020000))
	{

	}

	Store (0x03, PPDC)
	Store (0x00, PPSR)
	Store (0x03, PCST)

	Store (PPPS, Local0)

	While(And (Local0 , 0x40))
	{
		Sleep(1)
		Increment(TOUT)
		If (LEqual(TOUT, 0xF))
		{
			Break
		}
		Store (PPPS, Local0)
	}

	If(LEqual(TOUT, 0xF))
	{

		Return(One)
	}
	Else
	{

		Return(Zero)
	}
}


Method(LTS0, 0x0, Serialized) {
	Name(TOUT, Zero)
	Store(LC20, Local0)
	OR(Local0, 0x40, Local0)
	Store(Local0, LC20)
	Store (0x100, PLT0)
	Store (EST0, Local0)
	While(LNotEqual(And(Local0 , 0x400), 0x400))
	{
		Sleep(1)
		Increment(TOUT)
		If (LEqual(TOUT, 0x96))
		{
			Break
		}
		Store (EST0, Local0)
	}

	If(LEqual(TOUT, 0x96))
	{

		Return(One)
	}
	Else
	{

		Return(Zero)
	}
}


Method(IAT0, 0x0, Serialized) {
	Store (0x01, IAV0)
	Store (0x60100000, ILB0)
	Store (0x00, IUB0)
	Store (0x601FFFFF, ILR0)
	Store (0x01000000, ILT0 )
	Store (0x00, IUT0)
	Store (0x04, CR10)
	Store (0x80000000, CR20)
	Store (0x010100, BNR0)
}




Method(REB0, 0x2, Serialized) {
	Store (PSC0, Local0)

	AND (Local0, 0xFBFFFFFF, Local0)
	Store (Local0, PSC0)


	Store (Arg0, WBL0)
	Store (0x00, WBH0)
	Store (Arg1, WLL0)
	Store (0x00, WLH0)
	Store (Arg0, RBL0)
	Store (0x00, RBH0)
	Store (Arg1, RLL0)
	Store (0x00, RLH0)

	Store (PSC0, Local0)

	OR (Local0, 0x04000000, Local0)
	Store (Local0, PSC0)
}




Method(EEB0, 0x2, Serialized) {
	Store (PSC0, Local0)

	AND (Local0, 0xBFFFFFFF, Local0)
	Store (Local0, PSC0)


	Store (Arg0, WBL1)
	Store (0x00, WBH1)
	Store (Arg1, WLL1)
	Store (0x00, WLH1)
	Store (Arg0, RBL1)
	Store (0x00, RBH1)
	Store (Arg1, RLL1)
	Store (0x00, RLH1)

	Store (PSC0, Local0)

	OR (Local0, 0x40000000, Local0)
	Store (Local0, PSC0)
}


Name(E0LT, 0x600FFFFF)


Method(MSC0, 0x0, Serialized) {

	Store (SCR0, Local0)
	OR (Local0, 0x2, Local0)
	Store (Local0, SCR0)


	Store (0x01000000, PSL0)


	Store(PPC0, Local0)
	AND (Local0, 0xFFFFFFDF, Local0)
	Store (Local0, PPC0)


	Store (0x01, CSW0)


	Store(LCA0, Local0)

	OR(Local0, 0x00400000, Local0)

	AND(Local0, 0xFFFFFBFF, Local0)

	OR(Local0, 0x00000800, Local0)
	Store(Local0 , LCA0)


	Store (CRI0, Local0)
	AND (Local0, 0xFFFF, Local0)
	OR (Local0, 0x06040000, Local0)
	Store (Local0, CRI0)


	Store (0x1, ECS0)

	Store (0x0, R0B0)
	Store (0x0, R0B1)

	Store (0x0, ECS0)


	Store (0x00, CSW0)


	Store (0x60000000, PPEB)

	REB0 (0x60001000, \_SB.E0LT)

	EEB0 (0x60101000, 0x601FFFFF)
}

Name(G0D3, Zero)
PowerResource(P0ON, 0x5, 0) {
	Name (_DEP, Package(0x1) {
		\_SB.GIO0
	})
	Method(_STA){Return(0)}
	Method(_ON) {
		If(G0D3)
		{
			Store(0x1, GP0B)
			Sleep(1)
			Store(0x0, GP0B)

			If(LEqual(\_SB.GIO0.GABL, 0x1))
			{
				Store (0x01, \_SB.PCI0.MOD1)
				Sleep(5)
				Store (0x00, \_SB.PCI0.MOD2)
			}

			Store (0x00, G0D3)


			if ( \_SB.PPU0() )
			{

				Store("PHY Init failed for Port 0", Debug)


				While (One)
				{
				}
			}

			Sleep(5)
			If(LEqual(\_SB.GIO0.GABL, 0x1))
			{
				Store (0x1, \_SB.PCI0.MOD2)
			}


			If( \_SB.LTS0() )
			{



				Store(0x601FFFFF, \_SB.E0LT)
			}
			Else
			{
				Store(0x600FFFFF, \_SB.E0LT)
			}


			\_SB.IAT0()


			\_SB.MSC0()
		}
	}
	Method(_OFF) {
		If(LEqual(G0D3, 0x0))
		{
			BreakPoint
			Name(PTO0, Zero)
			Store(1,G0D3)
			Store(PSC0 , Local0)
			OR(Local0, 0x10, Local0)
			Store(Local0, PSC0)
			Store(ESC0, Local0)
			OR(Local0, 0x10, Local0)
			Store(Local0 , ESC0)

			Store (PPS0, Local0)
			While(LNotEqual(And(Local0 , 0x20, Local0), 0x20))
			{
				Sleep(10)
				Add(PTO0, 0x1, PTO0)
				If(LEqual(PTO0, 0xA))
				{
					Break
				}
				Store (PPS0, Local0)
			}

			If(LEqual(\_SB.GIO0.GABL, 0x1))
			{
				Store (0x0, \_SB.PCI0.MOD2)
			}


			Store(0x0, PPDC)
			Store(0x0, PCST)
		}
	}
}

PowerResource(P0OF, 0x5, 0) {
	Name (_DEP, Package(0x1) {
		\_SB.GIO0
	})
	Method(_STA){Return(0)}
	Method(_ON) {

	}
	Method(_OFF) {

	}
	Method(_RST, 0x0, NotSerialized) {
		Store(0x1, GP0B)
		Sleep(1)
		Store(0x0, GP0B)

		If(LEqual(\_SB.GIO0.GABL, 0x1))
		{
			Store (0x00, \_SB.PCI0.MOD1)
			Sleep(1)
			Store (0x01, \_SB.PCI0.MOD1)
			Sleep(5)
			Store (0x00, \_SB.PCI0.MOD2)
		}

		Store (0x00, G0D3)


		if ( \_SB.PPU0() )
		{

			Store("PHY Init failed for Port 0", Debug)


			While (One)
			{
			}
		}

		Sleep(5)
		If(LEqual(\_SB.GIO0.GABL, 0x1))
		{
			Store (0x1, \_SB.PCI0.MOD2)
		}


		If( \_SB.LTS0() )
		{



			Store(0x601FFFFF, \_SB.E0LT)
		}
		Else
		{
			Store(0x600FFFFF, \_SB.E0LT)
		}


		\_SB.IAT0()


		\_SB.MSC0()
	}
}

Device (PCI0) {
	Name (_DEP, Package(0x1) {
		 \_SB.PEP0
	})
	Name(_HID,EISAID("PNP0A08"))
	Alias(\_SB.PSUB, _SUB)
	Name(_CID,EISAID("PNP0A03"))
	Name(_UID, 0x0)
	Name(_SEG, 0x0)
	Name(_BBN, 0x0)
	Name(_PRT, Package(){
		Package(){0x0FFFF, 0, 0, 181},
		Package(){0x0FFFF, 1, 0, 182},
		Package(){0x0FFFF, 2, 0, 183},
		Package(){0x0FFFF, 3, 0, 184}
	})


	Method (_CCA, 0)
	{
		Return (Zero)
	}


	Include("wlan_11ad.asl")

	Method(_PSC) {
		Return(Zero)
	}

	Method (_CRS, 0x0, NotSerialized) {
		Name (RBUF, ResourceTemplate ()
		{

			Memory32Fixed (ReadWrite, 0x60200000, 0x00DF0000)
			WordBusNumber (ResourceProducer,
				MinFixed,
				MaxFixed,
				,
				0,
				0,
				1,
				0,
				2)
		})

		Return (RBUF)
	}
	Name(SUPP, 0)
	Name(CTRL, 0)

	Method(_DSW, 0x3, NotSerialized) {

	}

	Method(_OSC, 4) {

		If(LEqual(Arg0,ToUUID("33DB4D5B-1FF7-401C-9657-7441C03DD766")))
		{

			CreateDWordField(Arg3,0,CDW1)
			CreateDWordField(Arg3,4,CDW2)
			CreateDWordField(Arg3,8,CDW3)


			Store(CDW2,SUPP)
			Store(CDW3,CTRL)






			If(LNotEqual(And(SUPP, 0x16), 0x16))
			{
				And(CTRL,0x1E)
			}

			And(CTRL,0x15,CTRL)

			If(LNotEqual(Arg1,One))
			{
				Or(CDW1,0x08,CDW1)
			}
			If(LNotEqual(CDW3,CTRL))
			{
				Or(CDW1,0x10,CDW1)
			}

			Store(CTRL,CDW3)
			Return(Arg3)
		}
		Else {
			Or(CDW1,4,CDW1)
			Return(Arg3)
		}
	}

	Method(_DSM, 0x4, NotSerialized) {
		If(LEqual(Arg0,ToUUID("E5C937D0-3553-4d7a-9117-EA4D19C3434D")))
		{

			switch(ToInteger(Arg2))
			{




			case(0)
			{

				return (Buffer() {0xFF, 0x03})
			}








			case(1)
			{

				Return (Package(2) {
							Package(1){
							1},
							Package(3){
							0,0x1,0x1}

				})
			}
			case(2)
			{

				Return (Package(1) {
							Package(4){
							1,3,0,7}

				})
			}
			case(3)
			{

				Return (Package(1) {
							0})


			}
			case(4)
			{

				Return (Package(2) {
							Package(1){0},
							Package(4){
							1,3,0,7}

				})
			}
			case(5)
			{

				Return (Package(1) {
							1
				})
			}
			case(6)
			{

				Return (Package(4) {
							Package(1){0},
							Package(1){0},
							Package(1){0},
							Package(1){0}

				})
			}
			case(7)
			{

				Return (Package(1) {
							1
				})
			}
			case(8)
			{
				Return (Package(1) {
						1
				})
			}
			case(9)
			{
				Return (Package(5) {
						0xFFFFFFFF,
						0xFFFFFFFF,
						0xFFFFFFFF,
						0x00000000,
						0xFFFFFFFF
				})
			}

			default
			{

			}

			}
		}
	}

	Name(_S0W, 4)

	Name (GWLE, ResourceTemplate ()
	{
		GpioIo (Exclusive,PullNone,0,0, ,"\\_SB.GIO0", ,) {39}
	})
	Name (GWLP, ResourceTemplate ()
	{
		GpioIo (Exclusive,PullNone,0,0, ,"\\_SB.GIO0", ,) {35}
	})
	Scope(\_SB.GIO0) {
		OperationRegion(WLEN, GeneralPurposeIO, 0, 1)
		OperationRegion(WLPR, GeneralPurposeIO, 0, 1)
	}

	Field(\_SB.GIO0.WLEN, ByteAcc, NoLock, Preserve)
	{
		Connection (\_SB.PCI0.GWLE),
		MOD1, 1
	}
	Field(\_SB.GIO0.WLPR, ByteAcc, NoLock, Preserve)
	{
		Connection (\_SB.PCI0.GWLP),
		MOD2, 1
	}

	Name(_PR0, Package(){
		\_SB.P0ON
	})
	Name(_PR3, Package(){
		\_SB.P0ON
	})


	Device(RP1) {
		Name(_ADR, 0x0)

		Name(_PR0, Package(){
			\_SB.P0OF
		})
		Name(_PR3, Package(){
			\_SB.P0OF
		})

		Name(_PRR, Package(){
			\_SB.P0OF
		})

		Name(_S0W, 4)

		Method (_CRS, 0x0, NotSerialized) {
			Name (RBUF, ResourceTemplate ()
			{
				GpioInt(Edge, ActiveLow, ExclusiveAndWake, PullUp, 0, "\\_SB.GIO0", 0 , ResourceConsumer, , ) {37}
			})
			Return (RBUF)
		}

		Name (_DSD, Package () {
			ToUUID("6211E2C0-58A3-4AF3-90E1-927A4E0C55A4"),
			Package () {
				Package (2) {"HotPlugSupportInD3", 1},
			}
		})

		Method(_DSM, 0x4, NotSerialized) {
			If(LEqual(Arg0,ToUUID("E5C937D0-3553-4d7a-9117-EA4D19C3434D")))
			{

				switch(ToInteger(Arg2))
				{
					case(0)
					{

						return (Buffer() {0x01, 0x03})
					}
					case(8)
					{
						Return (Package(1) {
							1
						})
					}
					case(9)
					{
						Return (Package(5) {
							0xFFFFFFFF,
							0xFFFFFFFF,
							0xFFFFFFFF,
							0x00000000,
							0xFFFFFFFF
						})
					}
					default
					{

					}
				}
			}
		}
    }
}

Include("pcie1.asl")
