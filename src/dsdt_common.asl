









Name(SOID, 0xffffffff)
Name(SIDS, "899800000000000")
Name(SIDV, 0xffffffff)
Name(SVMJ, 0xffff)
Name(SVMI, 0xffff)
Name(SDFE, 0xffff)
Name(SFES, "899800000000000")
Name(SIDM, 0xfffffffff)
Name(SOSN, 0xaaaaaaaabbbbbbbb)
Name (RMTB, 0xaaaaaaaa)
Name (RMTX, 0xbbbbbbbb)
Name (RFMB, 0xcccccccc)
Name (RFMS, 0xdddddddd)
Name (RFAB, 0xeeeeeeee)
Name (RFAS, 0x77777777)
Name (TPMA, 0x11111111)
Name (TDTV, 0x6654504D)
Name (TCMA, 0xDEADBEEF)
Name (TCML, 0xBEEFDEAD)
Name (SOSI, 0xdeadbeefffffffff)




Include("audio.asl")




        Include("ufs.asl")





		Include("abd.asl")

		 Name (ESNL, 20)
		 Name (DBFL, 23)




Include("pmic_core.asl")




Include("pmic_batt.asl")

        Include("pep.asl")
        Include("bam.asl")
        Include("buses.asl")

        Include("win_mproc.asl")
        Include("syscache.asl")
        Include("HoyaSmmu.asl")

        Include("graphics.asl")


        Include("SCM.asl");




        Include("spmi.asl")




        Include("qcgpio.asl")

        Include("pcie.asl")

        Include("cbsp_mproc.asl")

Include("adsprpc.asl")




        Include("rfs.asl")



        Include("testdev.asl")




        Include("ipa.asl")

        Include("gsi.asl")













        Device (QDIG)
        {
            Name (_DEP, Package(0x1)
            {
                \_SB_.GLNK
            })
           Name (_HID, "QCOM0225")
		   Alias(\_SB.PSUB, _SUB)
        }
        Include("qcdb.asl")

		Include("Pep_lpi.asl")




	Device (QRNG)
	{
		Name (_DEP, Package(0x1) {
			   \_SB_.PEP0,
		})
		Name (_HID, "QCOM02FE")
		Name (_UID, 0)
		Method (_CRS, 0x0, NotSerialized)
		{
			Name (RBUF, ResourceTemplate ()
			{

			  Memory32Fixed (ReadWrite, 0x00793000, 0x00001000)
			})
			Return (RBUF)
		}
	}





	Include("gps.asl")


























Include("qgpi.asl")

Include("qwpp.asl")





