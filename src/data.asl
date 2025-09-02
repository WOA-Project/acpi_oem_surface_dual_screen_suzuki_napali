











 Device (RVRM)
 {
	Name (_HID, "QCOM02A5")
  Method (_STA)
	{
        Return (0xB)
  }
 }




Device (DBUS)
{
	Name (_HID, "QCOM02F0")
	Alias(\_SB.PSUB, _SUB)
	Method (CHLD)
	{
		Return (Package()
		{





			Package() {"DBUS\\QCOM02AA", 0, 9, 1}
		})
	}
  Method (_STA)
	{
        Return (0xB)
  }
}






















































   Device (MBRG)
   {
     Name (_HID, "QCOM020D")
   }




   Device (RMAT)
   {
     Name (_HID, "QCOM0210")
   }




   Device (RMNT)
   {
     Name (_HID, "QCOM020E")
   }




   Device (DPLB)
   {
     Name (_HID, "QCOM02C2")
   }
