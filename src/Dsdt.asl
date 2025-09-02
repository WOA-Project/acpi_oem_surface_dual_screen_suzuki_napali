







DefinitionBlock("DSDT.AML", "DSDT", 0x02, "QCOMM ", "SDM850 ", 3)
{
    Scope(\_SB_) {

		Include("addSub.asl")
        Include("dsdt_common.asl")
		Include("cust_dsdt.asl")

        Include("usb.asl")


		Include("cust_thermal_zones.asl")





        Include("cust_hwn.asl")




        Include("cust_touch.asl")




        Include("cust_arraybutton.asl")




        Include("data.asl")




       Device (QDCI)
       {
          Name (_DEP, Package(0x1)
          {
             \_SB_.GLNK
          })
          Name (_HID, "QCOM0224")
		  Alias(\_SB.PSUB, _SUB)
       }









        Include("wcnss_bt.asl")































        Include("adc.asl")

   }

}
