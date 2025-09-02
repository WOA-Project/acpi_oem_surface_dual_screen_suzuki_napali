

Device(ADC1)
{
      Name(_DEP, Package(0x2)
   {
      \_SB_.SPMI,
      \_SB_.PMIC
   })

      Name(_HID, "QCOM0221")
   Alias(\_SB.PSUB, _SUB)
   Name(_UID, 0)

      Method(_CRS)
   {
            Name (INTB, ResourceTemplate()
      {


         GpioInt(Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0, "\\_SB.PM01", , , , RawDataBuffer(){0x2}) {32}



         GpioInt(Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0, "\\_SB.PM01", , , , RawDataBuffer(){0x2}) {40}



         GpioInt(Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0, "\\_SB.PM01", , , , RawDataBuffer(){0x2}) {360}
      })

            Name(NAM, Buffer() {"\\_SB.SPMI"})


      Name(VUSR, Buffer()
      {
            0x8E,
            0x13, 0x00,
            0x01,
            0x00,
            0xC1,
            0x02,
            0x00, 0x31,
            0x01,
            0x00, 0x00


      })


      Name(VBTM, Buffer()
      {
            0x8E,
            0x13, 0x00,
            0x01,
            0x00,
            0xC1,
            0x02,
            0x00, 0x34,
            0x01,
            0x00, 0x00


      })


      Name(FGRR, Buffer()
      {
            0x8E,
            0x13, 0x00,
            0x01,
            0x00,
            0xC1,
            0x02,
            0x02, 0x45,
            0x01,
            0x00, 0x00


      })







      Concatenate(VUSR, NAM, Local1)
      Concatenate(VBTM, NAM, Local2)
      Concatenate(FGRR, NAM, Local3)
      Concatenate(Local1, Local2, Local4)
      Concatenate(Local3, INTB, Local5)
      Concatenate(Local4, Local5, Local0)

      Return(Local0)
   }

         Method (ADDV)
   {
      Return (Package()
      {
               Method (GENP)
   {
      Return (Package()
      {
            Method (PTCF, 1)
   {
            ShiftRight (Arg0, 1, Local0)
      Subtract (Local0, 273160, Local0)
      Return (Local0)
   }

      Method (PTCI, 1)
   {
      Add (Arg0, 273160, Local0)
      ShiftLeft (Local0, 1, Local0)
      Return (Local0)
   }

      Method (VGIO)
   {
      Return (Package()
      {
         Package()
         {
                  Method (VTGN)
   {
      Return (Package()
      {
               Method (GENF)
   {
      Return (Package()
      {
            Method (FCHN)
   {
      Return (Package()
      {
                  Package()
         {
                     Package()
         {
                     Package()
         {
                     Package()
         {
                     Package()
         {
                     Package()
         {
                     Package()
         {
                     Package()
         {
                     Package()
         {
                     Package()
         {
                     Package()
         {
                     Package()
         {
               Method (FGDT)
   {
      Return (Package()
      {
         Package(){ 450, 0xFFFF3CB0},
         Package(){ 870, 160000}
      })
   }

         Method (FGCT)
   {
      Return (Package()
      {
         Package(){ 1587, 0xFFFF3CB0},
         Package(){  792, 160000}
      })
   }
}

Include("cust_adc.asl")
