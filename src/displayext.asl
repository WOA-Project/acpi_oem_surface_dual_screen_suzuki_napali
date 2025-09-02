











Method (ROE1, 3, NotSerialized) {


   Include("panelcfgext.asl")


   Store (PCFG, Local2)



   If (LGreaterEqual(Arg0, Sizeof(Local2)))
   {
      Return( Buffer(){0x0} )
   }
   Else
   {

      Store(Arg0, Local0)
   }


   If (LGreater(Arg1, 0x1000))
   {
      Store(0x1000, Local1)
   }
   else
   {
      Store(Arg1, Local1)
   }


   if (LGreater(Add(Local0, Local1), Sizeof(Local2)))
   {

       Subtract(Sizeof(Local2), Local0, Local1);
   }


   CreateField(Local2, Multiply(0x8, Local0), Multiply(0x8, Local1), RBUF)

   Return(RBUF)
}
