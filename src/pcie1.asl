






OperationRegion(CP08, SystemMemory, 0x01C08000, 0x1004)
Field(CP08, DWordAcc, NoLock, Preserve){
	PSC1, 32,
	Offset(0x20),
	PPC1, 32,
	PPS1, 32,
	Offset(0x1b0),
	PLT1, 32,
	Offset(0x358),
	PSL1, 32,
	Offset(0x360),
	LBW0, 32,
	HBW0, 32,
	LLW0, 32,
	HLW0, 32,
	LBR0, 32,
	HBR0, 32,
	LLR0, 32,
	HLR0, 32,
	PEB1, 32,
	Offset(0x398),
	LBW1, 32,
	HBW1, 32,
	LLW1, 32,
	HLW1, 32,
	LBR1, 32,
	HBR1, 32,
	LLR1, 32,
	HLR1, 32,
	Offset(0x1000),
	PDT1, 32,
}


OperationRegion(CP09, SystemMemory, 0x01C0A000, 0x26C)
Field(CP09, DWordAcc, NoLock, Preserve){
	Offset (0x014),
	HSEC, 32,
	HAP1, 32,
	HAP2, 32,
	HSP1, 32,
	HSP2, 32,
	HSS1, 32,
	HSS2, 32,
	Offset (0x034),
	HSM1, 32,
	HSM2, 32,
	Offset (0x054),
	HECE, 32,
	HCE1, 32,
	HSCC, 32,
	HSBE, 32,
	HPLE, 32,
	HCPI, 32,
	C1M0, 32,
	C2M0, 32,
	C3M0, 32,
	C1M1, 32,
	C2M1, 32,
	C3M1, 32,
	Offset (0x0B4),
	HCM0, 32,
	HCM1, 32,
	Offset (0x0C0),
	HPR0, 32,
	HPR1, 32,
	HPR2, 32,
	HPC0, 32,
	HPC1, 32,
	HPC2, 32,
	Offset (0x0DC),
	HSES, 32,
	Offset (0x0F0),
	HRC2, 32,
	Offset (0x0F8),
	HCLC, 32,
	Offset (0x100),
	HRM0, 32,
	Offset (0x108),
	HRM1, 32,
	Offset (0x11C),
	S1M0, 32,
	S2M0, 32,
	S3M0, 32,
	S1M1, 32,
	S2M1, 32,
	S3M1, 32,
	Offset (0x150),
	G0M0, 32,
	Offset (0x158),
	G0M1, 32,
	Offset (0x178),
	HCVT, 32,
	Offset (0x1CC),
	HCCS, 32,
	HCHS, 32,
	Offset (0x1E0),
	HCDV, 32,
	Offset (0x1E8),
	HCCE, 32,
	Offset (0x1F0),
	HCCC, 32,
	Offset (0x1FC),
	HMCS, 32,
	Offset (0x21C),
	HDM1, 32,
	Offset (0x224),
	HCCM, 32,
	HVD1, 32,
	HVD2, 32,
}


OperationRegion(CP10, SystemMemory, 0x01C0A800, 0x2F0)
Field(CP10, DWordAcc, NoLock, Preserve){
	Offset (0x00C),
	L0C0, 32,
	L0C1, 32,
	L0C2, 32,
	Offset (0x018),
	L0TE, 32,
	Offset (0x060),
	L0BM, 32,
	L0LM, 32,
	Offset (0x07C),
	L0PR, 32,
	Offset (0x0C0),
	L0L0, 32,
	L0L1, 32,
	L0L2, 32,
	Offset (0x0D0),
	L0R1, 32,
	L0R2, 32,
	L0M0, 32,
	L0M1, 32,
	L0M2, 32,
	Offset (0x0FC),
	L0CD, 32,
	L0VD, 32,
	Offset (0x108),
	L0X0, 32,
	Offset (0x114),
	L0TT, 32,
	L0OT, 32,
	L0RT, 32,
	L0ET, 32,
	L0VG, 32,
	L0DG, 32,
	Offset (0x130),
	L0EG, 32,
	L0OG, 32,
	L0PG, 32,
	L0IN, 32,
	Offset (0x154),
	L0EI, 32,
	Offset (0x160),
	L0DI, 32,
	Offset (0x168),
	L0B0, 32,
	L0B1, 32,
	Offset (0x178),
	L0T1, 32,
	Offset (0x180),
	L0RC, 32,
	L0F0, 32,
	L0F1, 32,
	L0F2, 32,
	L0S0, 32,
	L0S1, 32,
	L0S2, 32,
	L0SC, 32,
	Offset (0x1A4),
	L0RB, 32,
	Offset (0x1C0),
	L0P0, 32,
	L0P1, 32,
	L0P2, 32,
	Offset (0x230),
	L0SE, 32,
	L0SN, 32,
	L0SD, 32,
	Offset (0x2A4),
	L0DC, 32,
	L0ST, 32,
	L0RE, 32,
	L0PC, 32,
	Offset (0x2B8),
	L0N0, 32,
	Offset (0x2C0),
	L0ER, 32,
	L0HI, 32,
	Offset (0x2CC),
	L0RR, 32,
}


OperationRegion(CP11, SystemMemory, 0x01C0B000, 0x2F0)
Field(CP11, DWordAcc, NoLock, Preserve){
	Offset (0x00C),
	L1C0, 32,
	L1C1, 32,
	L1C2, 32,
	Offset (0x018),
	L1TE, 32,
	Offset (0x060),
	L1BM, 32,
	L1LM, 32,
	Offset (0x07C),
	L1PR, 32,
	Offset (0x0C0),
	L1L0, 32,
	L1L1, 32,
	L1L2, 32,
	Offset (0x0D0),
	L1R1, 32,
	L1R2, 32,
	L1M0, 32,
	L1M1, 32,
	L1M2, 32,
	Offset (0x0FC),
	L1CD, 32,
	L1VD, 32,
	Offset (0x108),
	L1X0, 32,
	Offset (0x114),
	L1TT, 32,
	L1OT, 32,
	L1RT, 32,
	L1ET, 32,
	L1VG, 32,
	L1DG, 32,
	Offset (0x130),
	L1EG, 32,
	L1OG, 32,
	L1PG, 32,
	L1IN, 32,
	Offset (0x154),
	L1EI, 32,
	Offset (0x160),
	L1DI, 32,
	Offset (0x168),
	L1B0, 32,
	L1B1, 32,
	Offset (0x178),
	L1T1, 32,
	Offset (0x180),
	L1RC, 32,
	L1F0, 32,
	L1F1, 32,
	L1F2, 32,
	L1S0, 32,
	L1S1, 32,
	L1S2, 32,
	L1SC, 32,
	Offset (0x1A4),
	L1RB, 32,
	Offset (0x1C0),
	L1P0, 32,
	L1P1, 32,
	L1P2, 32,
	Offset (0x230),
	L1SE, 32,
	L1SN, 32,
	L1SD, 32,
	Offset (0x2A4),
	L1DC, 32,
	L1ST, 32,
	L1RE, 32,
	L1PC, 32,
	Offset (0x2B8),
	L1N0, 32,
	Offset (0x2C0),
	L1ER, 32,
	L1HI, 32,
	Offset (0x2CC),
	L1RR, 32,
}


OperationRegion(CP12, SystemMemory, 0x01C0B800, 0x2DC)
Field(CP12, DWordAcc, NoLock, Preserve){
	Offset (0x000),
	HPSR, 32,
	HPDC, 32,
	HSTC, 32,
	Offset (0x02C),
	HTM3, 32,
	Offset (0x040),
	HTP3, 32,
	Offset (0x054),
	HTM6, 32,
	Offset (0x068),
	HTP6, 32,
	Offset (0x15C),
	HPSG, 32,
	Offset (0x174),
	HTRC, 32,
	Offset (0x2AC),
	HPST, 32,
}


OperationRegion(CP13, SystemMemory, 0x40000000, 0x1000)
Field(CP13, DWordAcc, NoLock, Preserve){
	Offset(0x004),
	SCR1, 32,
	CRI1, 32,
	Offset(0x010),
	R1B0, 32,
	R1B1, 32,
	BNR1, 32,
	Offset(0x07C),
	LCA1, 32,
	LCS1, 32,
	SCA1, 32,
	Offset(0x088),
	SLC1, 32,
	Offset(0x0A0),
	LC21, 32,
	Offset(0x154),
	P1PR, 32,
	Offset(0x710),
	GPLC, 32,
	Offset(0x80C),
	G32C, 32,
	Offset(0x8A8),
	GEQC, 32,
	GMDC, 32,
	Offset(0x8BC),
	CSW1, 32,
	Offset(0x900),
	IAV1, 32,
	CR11, 32,
	CR21, 32,
	ILB1, 32,
	IUB1, 32,
	ILR1, 32,
	ILT1, 32,
	IUT1, 32,
	Offset(0xF24),
	ESC1, 32,
	EST1, 32,
	Offset(0xFC4),
	ECS1, 32,
}


OperationRegion(CP14, SystemMemory, 0x03971000, 0x10)
Field(CP14, DWordAcc, NoLock, Preserve){
	C113, 32,
	I113, 32,
	N113, 32,
	S113, 32,
}


OperationRegion(CP15, SystemMemory, 0x16B000, 0x1020)
Field(CP15, DWordAcc, NoLock, Preserve){
	GP0B, 32,
	Offset(0x101C),
	G0PB, 32,
}


OperationRegion(CP16, SystemMemory, 0x18D000, 0x1030)
Field(CP16, DWordAcc, NoLock, Preserve){
	GP1B, 32,
	Offset(0x1014),
	G1LB, 32,
	Offset(0x101C),
	G1PB, 32,
	Offset(0x1020),
	G1NB, 32,
}


Method(PPU1, 0x0, Serialized) {
	Name(TOUT, Zero)
	Store (0x04, PDT1)
	Store (0x03, HPDC)
	Store (0x27, HSES)
	Store (0x01, HSEC)
	Store (0x31, HSP1)
	Store (0x01, HSP2)
	Store (0xDE, HSS1)
	Store (0x07, HSS2)
	Store (0x4C, HSM1)
	Store (0x06, HSM2)
	Store (0x18, HECE)
	Store (0xB0, HCE1)
	Store (0x8C, C1M0)
	Store (0x20, C2M0)
	Store (0x14, C1M1)
	Store (0x34, C2M1)
	Store (0x06, HCM0)
	Store (0x06, HCM1)
	Store (0x16, HPR0)
	Store (0x16, HPR1)
	Store (0x36, HPC0)
	Store (0x36, HPC1)
	Store (0x05, HRC2)
	Store (0x42, HCLC)
	Store (0x82, HRM0)
	Store (0x68, HRM1)
	Store (0x55, S1M0)
	Store (0x55, S2M0)
	Store (0x03, S3M0)
	Store (0xAB, S1M1)
	Store (0xAA, S2M1)
	Store (0x02, S3M1)
	Store (0x3F, G0M0)
	Store (0x3F, G0M1)
	Store (0x10, HCVT)
	Store (0x00, HCCS)
	Store (0x30, HCHS)
	Store (0x04, HCDV)
	Store (0x73, HCCE)
	Store (0x1C, HCCC)
	Store (0x15, HMCS)
	Store (0x04, HDM1)
	Store (0x01, HCCM)
	Store (0x22, HVD1)
	Store (0x00, HVD2)
	Store (0x00, L0C0)
	Store (0x0D, L0TE)
	Store (0x01, L0BM)
	Store (0x3A, L0LM)
	Store (0x2F, L0PR)
	Store (0x09, L0L0)
	Store (0x09, L0L1)
	Store (0x1A, L0L2)
	Store (0x01, L0R1)
	Store (0x07, L0R2)
	Store (0x31, L0M0)
	Store (0x31, L0M1)
	Store (0x03, L0M2)
	Store (0x02, L0CD)
	Store (0x01, L0VD)
	Store (0x12, L0X0)
	Store (0x25, L0TT)
	Store (0x00, L0OT)
	Store (0x05, L0RT)
	Store (0x01, L0ET)
	Store (0x26, L0VG)
	Store (0x12, L0DG)
	Store (0x04, L0EG)
	Store (0x04, L0OG)
	Store (0x09, L0PG)
	Store (0x15, L0EI)
	Store (0x32, L0DI)
	Store (0x7F, L0B0)
	Store (0x07, L0B1)
	Store (0x04, L0T1)
	Store (0x70, L0RC)
	Store (0x08, L0F0)
	Store (0x08, L0F1)
	Store (0x09, L0F2)
	Store (0x04, L0S0)
	Store (0x04, L0S1)
	Store (0x02, L0S2)
	Store (0x0C, L0SC)
	Store (0x02, L0RB)
	Store (0x5C, L0P0)
	Store (0x3E, L0P1)
	Store (0x3F, L0P2)
	Store (0x21, L0SE)
	Store (0xA0, L0SN)
	Store (0x08, L0SD)
	Store (0x01, L0DC)
	Store (0xC3, L0RE)
	Store (0x00, L0PC)
	Store (0x8C, L0N0)
	Store (0x7F, L0ER)
	Store (0x2A, L0HI)
	Store (0x0C, L0C1)
	Store (0x00, L0C2)
	Store (0x02, L0RR)
	Store (0x20, L0IN)
	Store (0x00, L1C0)
	Store (0x0D, L1TE)
	Store (0x01, L1BM)
	Store (0x3A, L1LM)
	Store (0x2F, L1PR)
	Store (0x09, L1L0)
	Store (0x09, L1L1)
	Store (0x1A, L1L2)
	Store (0x01, L1R1)
	Store (0x07, L1R2)
	Store (0x31, L1M0)
	Store (0x31, L1M1)
	Store (0x03, L1M2)
	Store (0x02, L1CD)
	Store (0x01, L1VD)
	Store (0x12, L1X0)
	Store (0x25, L1TT)
	Store (0x00, L1OT)
	Store (0x05, L1RT)
	Store (0x01, L1ET)
	Store (0x26, L1VG)
	Store (0x12, L1DG)
	Store (0x04, L1EG)
	Store (0x04, L1OG)
	Store (0x09, L1PG)
	Store (0x15, L1EI)
	Store (0x32, L1DI)
	Store (0x7F, L1B0)
	Store (0x07, L1B1)
	Store (0x04, L1T1)
	Store (0x70, L1RC)
	Store (0x08, L1F0)
	Store (0x08, L1F1)
	Store (0x09, L1F2)
	Store (0x04, L1S0)
	Store (0x04, L1S1)
	Store (0x02, L1S2)
	Store (0x0C, L1SC)
	Store (0x02, L1RB)
	Store (0x5C, L1P0)
	Store (0x3E, L1P1)
	Store (0x3F, L1P2)
	Store (0x21, L1SE)
	Store (0xA0, L1SN)
	Store (0x08, L1SD)
	Store (0x01, L1DC)
	Store (0xC3, L1RE)
	Store (0x00, L1PC)
	Store (0x8C, L1N0)
	Store (0x7F, L1ER)
	Store (0x2A, L1HI)
	Store (0x0C, L1C1)
	Store (0x00, L1C2)
	Store (0x02, L1RR)
	Store (0x20, L1IN)
	Store (0x3F, HPSG)
	Store (0x58, HTRC)
	Store (0x19, HTM3)
	Store (0x07, HTP3)
	Store (0x17, HTM6)
	Store (0x09, HTP6)


	If (LGreaterEqual (\_SB.SIDV,0x00020000))
	{
	}

	Store (0x00, HPSR)
	Store (0x01, L0ST)
	Store (0x01, L1ST)
	Store (0x01, HSTC)

	Store (HPST, Local0)

	While(And (Local0 , 0x40))
	{
		Sleep(1)
		Increment(TOUT)
		If (LEqual(TOUT, 0xF))
		{
			Break
		}
		Store (HPST, Local0)
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


Method(LTS1, 0x0, Serialized) {
	Name(TOUT, Zero)

	Store (G32C, Local0)
	AND (Local0, 0xFFFFE0FF, Local0)
	OR (Local0, 0x0100, Local0)
	Store (Local0, G32C)

	Store (0x155A0, GMDC)

	Store (GEQC, Local0)
	AND (Local0, 0xFFFFFFEF, Local0)
	Store (Local0, GEQC)

	Store (0x01, CSW1)
	Store (0x77777777, P1PR)
	Store (0x00, CSW1)

	Store (GPLC, Local0)
	AND (Local0, 0xFFC0F0FF, Local0)
	OR  (Local0, 0x00030300, Local0)
	Store (Local0, GPLC)

	Store (0x100, PLT1)
	Store (EST1, Local0)
	While(LNotEqual(And(Local0 , 0x400), 0x400))
	{
		Sleep(1)
		Increment(TOUT)
		If (LEqual(TOUT, 0x96))
		{
			Break
		}
		Store (EST1, Local0)
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


Method(IAT1, 0x0, Serialized) {
	Store (0x01, IAV1)
	Store (0x40100000, ILB1)
	Store (0x00, IUB1)
	Store (0x401FFFFF, ILR1)
	Store (0x01000000, ILT1)
	Store (0x00, IUT1)
	Store (0x04, CR11)
	Store (0x80000000, CR21)
	Store (0x010100, BNR1)
}




Method(REB1, 0x2, Serialized) {
	Store (PSC1, Local0)

	AND (Local0, 0xFBFFFFFF, Local0)
	Store (Local0, PSC1)


	Store (Arg0, LBW0)
	Store (0x00, HBW0)
	Store (Arg1, LLW0)
	Store (0x00, HLW0)
	Store (Arg0, LBR0)
	Store (0x00, HBR0)
	Store (Arg1, LLR0)
	Store (0x00, HLR0)

	Store (PSC1, Local0)

	OR (Local0, 0x04000000, Local0)
	Store (Local0, PSC1)
}




Method(EEB1, 0x2, Serialized) {
	Store (PSC1, Local0)

	AND (Local0, 0xBFFFFFFF, Local0)
	Store (Local0, PSC1)


	Store (Arg0, LBW1)
	Store (0x00, HBW1)
	Store (Arg1, LLW1)
	Store (0x00, HLW1)
	Store (Arg0, LBR1)
	Store (0x00, HBR1)
	Store (Arg1, LLR1)
	Store (0x00, HLR1)

	Store (PSC1, Local0)

	OR (Local0, 0x40000000, Local0)
	Store (Local0, PSC1)
}


Name(E1LT, 0x400FFFFF)


Method(MSC1, 0x0, Serialized) {

	Store (SCR1, Local0)
	OR (Local0, 0x2, Local0)
	Store (Local0, SCR1)


	Store (0x20000000, PSL1)


	Store(PPC1, Local0)
	AND (Local0, 0xFFFFFFDF, Local0)
	Store (Local0, PPC1)


	Store (0x01, CSW1)


	Store(LCA1, Local0)

	OR(Local0, 0x00400000, Local0)

	OR(Local0, 0x00000C00, Local0)
	Store(Local0 , LCA1)


	Store (CRI1, Local0)
	AND (Local0, 0xFFFF, Local0)
	OR (Local0, 0x06040000, Local0)
	Store (Local0, CRI1)


	Store (SCA1, Local0)
	AND (Local0, 0xFFFFFFBF, Local0)
	Store (Local0, SCA1)


	Store (0x00, CSW1)


	Store (0x1, ECS1)

	Store (0x0, R1B0)
	Store (0x0, R1B1)

	Store (0x0, ECS1)


	Store (0x40000000, PEB1)

	REB1 (0x40001000, \_SB.E1LT)

	EEB1 (0x40101000, 0x401FFFFF)
}

Name(G1D3, Zero)
PowerResource(P1ON, 0x5, 0) {
	Name (_DEP, Package(0x1) {
		\_SB.GIO0
	})
	Method(_STA){Return(0)}
	Method(_ON) {

		If(G1D3)
		{
			Store (0x00, G1D3)


			Store(0x1, GP1B)
			Sleep(1)
			Store(0x0, GP1B)


			Store(0x1, G1PB)
			Sleep(1)
			Store(0x0, G1PB)


			if ( \_SB.PPU1() )
			{

				Store("PHY Init Failed for Port 1", Debug)


				While (One)
				{
				}
			}

			If(LEqual(\_SB.GIO0.GABL, 0x1))
			{
				Store (0x00, \_SB.PCI1.MOD2)
			}

			Sleep(10)

			If(LEqual(\_SB.GIO0.GABL, 0x1))
			{
				Store (0x1, \_SB.PCI1.MOD2)
			}


			If( \_SB.LTS1() )
			{



				Store(0x401FFFFF, \_SB.E1LT)
			}
			Else
			{
				Store(0x400FFFFF, \_SB.E1LT)
			}


			\_SB.IAT1()


			\_SB.MSC1()
		}
	}
	Method(_OFF) {
		If(LEqual(G1D3, 0x0))
		{
			BreakPoint
			Name(PTO0, Zero)
			Store(1,G1D3)
			Store(PSC1 , Local0)
			OR(Local0, 0x10, Local0)
			Store(Local0, PSC1)
			Store(ESC1, Local0)
			OR(Local0, 0x10, Local0)
			Store(Local0 , ESC1)

			Store (PPS1, Local0)
			While(LNotEqual(And(Local0 , 0x20, Local0), 0x20))
			{
				Sleep(10)
				Add(PTO0, 0x1, PTO0)
				If(LEqual(PTO0, 0xA))
				{
					Break
				}
				Store (PPS1, Local0)
			}

			If(LEqual(\_SB.GIO0.GABL, 0x1))
			{
				Store (0x0, \_SB.PCI1.MOD2)
			}


			Store (0x00, HPSR)
			Store (0x00, L0ST)
			Store (0x00, L1ST)
			Store (0x00, HSTC)
		}
	}
}

PowerResource(P1OF, 0x5, 0) {
	Name (_DEP, Package(0x1) {
		\_SB.GIO0
	})
	Method(_STA){Return(0)}
	Method(_ON) {

	}
	Method(_OFF) {

	}
	Method(_RST, 0x0, Serialized) {

		Store(0x1, GP1B)
		Sleep(1)
		Store(0x0, GP1B)


		Store(0x1, G1PB)
		Sleep(1)
		Store(0x0, G1PB)


		if ( \_SB.PPU1() )
		{

			Store("PHY Init Failed for Port 1", Debug)


			While (One)
			{
			}
		}

		If(LEqual(\_SB.GIO0.GABL, 0x1))
		{
			Store (0x00, \_SB.PCI1.MOD2)
		}

		Sleep(10)

		If(LEqual(\_SB.GIO0.GABL, 0x1))
		{
			Store (0x1, \_SB.PCI1.MOD2)
		}


		If( \_SB.LTS1() )
		{



			Store(0x401FFFFF, \_SB.E1LT)
		}
		Else
		{
			Store(0x400FFFFF, \_SB.E1LT)
		}


		\_SB.IAT1()


		\_SB.MSC1()
	}
}

Device (PCI1) {
	Name (_DEP, Package(0x1) {
		 \_SB.PEP0
	})
	Name(_HID,EISAID("PNP0A08"))
	Alias(\_SB.PSUB, _SUB)
	Name(_CID,EISAID("PNP0A03"))
	Name(_UID, 0x1)
	Name(_SEG, 0x1)
	Name(_BBN, 0x0)
	Name(_PRT, Package(){
		Package(){0x0FFFF, 0, 0, 466},
		Package(){0x0FFFF, 1, 0, 467},
		Package(){0x0FFFF, 2, 0, 470},
		Package(){0x0FFFF, 3, 0, 471}
	})


	Method (_CCA, 0)
	{
		Return (One)
	}

	Method(_STA, 0)
	{
		Return (0x00)
	}

	Method(_PSC) {
		Return(Zero)
	}

	Method (_CRS, 0x0, NotSerialized) {
		Name (RBUF, ResourceTemplate ()
		{

			Memory32Fixed (ReadWrite, 0x40200000, 0x01FDF000)
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
							2
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

	Name (RST1, ResourceTemplate ()
	{
		GpioIo (Exclusive,PullNone,0,0, ,"\\_SB.GIO0", ,) {102}
	})

	Scope(\_SB.GIO0) {
		OperationRegion(P1PR, GeneralPurposeIO, 0, 1)
	}
	Field(\_SB.GIO0.P1PR, ByteAcc, NoLock, Preserve)
	{
		Connection (\_SB.PCI1.RST1),
		MOD2, 1
	}

	Name(_PR0, Package(){
		\_SB.P1ON
	})
	Name(_PR3, Package(){
		\_SB.P1ON
	})


	Device(RP1) {
		Name(_ADR, 0x0)

		Name(_PR0, Package(){
			\_SB.P1OF
		})
		Name(_PR3, Package(){
			\_SB.P1OF
		})
		Name(_PRR, Package(){
			\_SB.P1OF
		})

		Name (_DSD, Package () {
			ToUUID("6211E2C0-58A3-4AF3-90E1-927A4E0C55A4"),
			Package () {
				Package (2) {"HotPlugSupportInD3", 1},
			}
		})

		Name(_S0W, 4)

		Method (_CRS, 0x0, NotSerialized) {
			Name (RBUF, ResourceTemplate ()
			{

				GpioInt(Edge, ActiveLow,  ExclusiveAndWake, PullUp, 0, "\\_SB.GIO0", 0 , ResourceConsumer, , ) {104}

				GpioInt(Edge, ActiveBoth, ExclusiveAndWake, PullUp, 0, "\\_SB.GIO0", 0 , ResourceConsumer, , ) {113}
			})
			Return (RBUF)
		}

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
