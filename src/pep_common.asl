



Device (PEP0)
{
    Name (_HID, "QCOM0237")
    Name (_CID, "PNP0D80")

	Include("thz.asl")

    Method(_CRS)
    {

            Return
            (
                ResourceTemplate ()
                {


                    Interrupt(ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, , , ) {538}

                    Interrupt(ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, , , ) {540}

                    Interrupt(ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, , , ) {539}

                    Interrupt(ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, , , ) {541}


					Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {37}



					Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {161}





                    Interrupt(ResourceConsumer, Edge, ActiveHigh, Exclusive, , , ) {421}








						Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {64}


						Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {65}


					Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {613}
                }
            )
        }



    Field(\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
    {
                Connection(I2CSerialBus( 0x0001,,0x0,, "\\_SB.ABD",,,,)),
        AccessAs(BufferAcc, AttribRawBytes(21)),
        FLD0, 168
    }

    Method(GEPT)
    {
        Name(BUFF, Buffer(4){})
        CreateByteField(BUFF, 0x00, STAT)
        CreateWordField(BUFF, 0x02, DATA)
        Store(0x1, DATA)
        Return(DATA)
    }

	Name(ROST, 0x0)

    Method(NPUR, 0x1, NotSerialized)
    {
        Store(Arg0, Index(\_SB_.AGR0._PUR, 1))
        Notify(\_SB_.AGR0, 0x80)
    }



    Method(INTR, 0x0, NotSerialized) {
      Name(RBUF, Package()
          {

          0x00000002,

          0x00000001,

          0x00000003,

          0x00000001,



          0x00000006,

          0x17911008,

          0x00000001,

          0x00000000,



          0x86000000,

          0x00200000,

          0x00000000,

          0x00000000,



          0x0C300000,

          0x00001000,

          0x00000000,

          0x00000000,



          0x01fd4000,

          0x00000008,

          0x00000000,

          0x00000000,



          0x1799000C,

          0x00000000,

          0x00000000,

          0x00000000,
          })
      Return (RBUF)
    }

    Method(CRTC)
    {
        return (CTRX)
    }

    Name(CTRX,
        Package()
        {


            "NSTC",
            "HLCB",
            "MMVD",
            "DSGP",
            "CCGP",
            "MTPS",
            "CPGP",
            "DMPP",
			"VRDL",
            "GBDL",
            "SRDL",
        }
    )

    Method(STND)
    {
        return (STNX)
    }

    Name(STNX,
        Package()
        {









			"DMPO",
            "DMSB",
            "DMQP",
            "DMMS",
            "DMPA",
            "DMPC",
            "DMPB",
            "DM0G",
            "DM1G",
            "DM2G",
            "DM3G",
            "DM4G",
            "DM5G",
            "DM6G",
            "DM7G",
            "DM8G",
            "DM9G",
            "DMPS",

            "DMPL",

            "DMDQ",

            "DMPI",
            "DMWE",
            "XMPC",
            "XMPL",

            "DMEP",
            "XMFN",
            "XMMP",
            "XMCW"
        }
    )




    Method(CTPM){
        Name( CTPN, package(){
			"CORE_TOPOLOGY",
            8
        })

        return(CTPN)
    }


    Name(CCFG,
        Package ()
        {

            Package ()
            {
                "\\_SB.SYSM.CLUS.CPU0",
                0x10,
            },
            Package ()
            {
                "\\_SB.SYSM.CLUS.CPU1",
                0x11,
            },
            Package ()
            {
                "\\_SB.SYSM.CLUS.CPU2",
                0x12,
            },
            Package ()
            {
                "\\_SB.SYSM.CLUS.CPU3",
                0x13,
            },
			Package ()
            {
                "\\_SB.SYSM.CLUS.CPU4",
                0x14,
            },
			Package ()
            {
                "\\_SB.SYSM.CLUS.CPU5",
                0x15,
            },
			Package ()
            {
                "\\_SB.SYSM.CLUS.CPU6",
                0x16,
            },
			Package ()
            {
                "\\_SB.SYSM.CLUS.CPU7",
                0x17,
            },
        })




    Method(PGCC)
    {
        Return(CCFG)
    }


    Name(DRVC,
        Package ()
        {

            Package ()
            {
                "HLOS_DRV",
                0x2,
				"/icb/arbiter",
            },
            Package ()
            {
                "DISPLAY_DRV",
                0x9,
				"/icb/arbiter/display",
            },
        })



    Method(LDRV)
    {
        Return(DRVC)
    }


    Name(DCVS,0x0)


    Method(PGDS)
    {
        Return(DCVS)
    }


    Name (PPPP,
    Package()
    {


		Package () { "PPP_RESOURCE_ID_SMPS1_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_SMPS2_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_SMPS3_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_SMPS4_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_SMPS5_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_SMPS6_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },

		Package () { "PPP_RESOURCE_ID_SMPS7_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_SMPS9_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },

		Package () { "PPP_RESOURCE_ID_SMPS1_C",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_SMPS2_C",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_SMPS3_C",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },

		Package () { "PPP_RESOURCE_ID_LDO1_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO2_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO3_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO4_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO5_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO6_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO7_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO8_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO9_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO10_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO11_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO12_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO13_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO14_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO15_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO16_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO17_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO18_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO19_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO20_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO21_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO22_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO23_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO24_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO25_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO26_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO27_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LDO28_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },

		Package () { "PPP_RESOURCE_ID_LVS1_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_LVS2_A",					"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },

		Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK3_A",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },

		Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK1_A",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK2_A",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK3_A",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },

		Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK1_A",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK2_A",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
		Package () { "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK3_A",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },

        Package () { "PPP_RESOURCE_ID_BUCK_BOOST1_B",	        "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH",	"PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF" },
    })



    Method(PPPM)
    {
        Return (PPPP)
    }


    Name (PRRP,
    Package()
    {


        "PPP_RESOURCE_RANGE_INFO_SMPS_A",          "PPP_RESOURCE_ID_SMPS1_A",                  "PPP_RESOURCE_ID_SMPS13_A",
        "PPP_RESOURCE_RANGE_INFO_SMPS_C",          "PPP_RESOURCE_ID_SMPS1_C",                  "PPP_RESOURCE_ID_SMPS4_C",
        "PPP_RESOURCE_RANGE_INFO_LDO_A",           "PPP_RESOURCE_ID_LDO1_A",                   "PPP_RESOURCE_ID_LDO28_A",
        "PPP_RESOURCE_RANGE_INFO_LVS_A",           "PPP_RESOURCE_ID_LVS1_A",                   "PPP_RESOURCE_ID_LVS2_A",
        "PPP_RESOURCE_RANGE_INFO_CXO_BUFFERS_A",   "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A",     "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK3_A",
        "PPP_RESOURCE_RANGE_INFO_BUCK_BOOST_B",    "PPP_RESOURCE_ID_BUCK_BOOST1_B",            "PPP_RESOURCE_ID_BUCK_BOOST1_B",
    })


    Method(PPRR)
    {
        Return (PRRP)
    }



    Method(PGSD)
    {
        Return(SDFR)
    }


    Name(FPDP,0x0)


    Method(FPMD)
    {
        Return(FPDP)
    }





    Name(PPPC,0x0)


    Method(PGPC)
    {
        Return(PPPC)
    }









    Method(DPRF) {

        Return(\_SB.DPP0)
    }




    Method(DMRF) {

            Return(\_SB.DPP1)
    }

}





































Include("pep_libPdc.asl")
Include("pep_libPCU.asl")
Include("pep_vddresources.asl")
Include("pep_lmh.asl")
Include("pep_dvreg.asl")
Include("pep_dbgSettings.asl")
Include("pep_defaults.asl")
Include("pep_idle.asl")
Include("pep_cprh.asl")
Include("pep_dcvscfg.asl")

Include("pep_tsens.asl")


Include("audio_resources.asl")
Include("graphics_resources.asl")
Include("HoyaSmmu_resources.asl")

Include("oem_resources.asl")
Include("subsys_resources.asl")
Include("pep_resources.asl")
Include("corebsp_resources.asl")
Include("ipa_resources.asl")

Include("wcnss_resources.asl")

Include("qdss_resources.asl")
Include("pcie_resources.asl")
