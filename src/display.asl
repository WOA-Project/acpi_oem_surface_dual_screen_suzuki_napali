










Method (_ROM, 3, NotSerialized) {


   Include("panelcfg.asl")








   Switch (  ToInteger (Arg2) )
   {
        Case (0x003406) {
            Debug = "LG Meta2 Panel Configuration"
            Store (PCFG, Local2)
        }

        Default {
            Store (PCFG, Local2)
        }
   }



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
















Method (PIGC, 2, NotSerialized) {









    Name (RBUF, Buffer() {0x0} )


    Return(RBUF)
}



































Method (PPCC, 2, NotSerialized) {









    Name (RBUF, Buffer() {0x0} )


    Return(RBUF)
}




















Method (PGCT, 2, NotSerialized) {









    Name (RBUF, Buffer() {0x0} )


    Return(RBUF)
}















Method (PLGC, 3, NotSerialized) {









    Name (TBUF, Buffer() {0x0} )




   If (LGreaterEqual(Arg1, Sizeof(TBUF)))
   {
       Return( Buffer(){0x0} )
   }
   Else
   {

       Store(Arg1, Local1)
   }



   If (LGreater(Arg2, 0x1000))
   {
       Store(0x1000, Local2)
   }
   else
   {
       Store(Arg2, Local2)
   }


   if (LGreater(Add(Local1, Local2), Sizeof(TBUF)))
   {

       Subtract(Sizeof(TBUF), Local1, Local2);
   }


   CreateField(TBUF, Multiply(0x8, Local1), Multiply(0x8, Local2), RBUF)


    Return(RBUF)
}













Method (HSIC, 2, NotSerialized) {









    Name (RBUF, Buffer() {0x0} )


    Return(RBUF)
}





























Method (PGMT, 2, NotSerialized) {









    Name (TBUF, Buffer() {0x0} )




   If (LGreaterEqual(Arg0, Sizeof(TBUF)))
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


   if (LGreater(Add(Local0, Local1), Sizeof(TBUF)))
   {

       Subtract(Sizeof(TBUF), Local0, Local1);
   }


   CreateField(TBUF, Multiply(0x8, Local0), Multiply(0x8, Local1), RBUF)



    Return(RBUF)
}












































Method (PWGM, 2, NotSerialized) {









    Name (TBUF, Buffer() {0x0} )




   If (LGreaterEqual(Arg0, Sizeof(TBUF)))
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


   if (LGreater(Add(Local0, Local1), Sizeof(TBUF)))
   {

       Subtract(Sizeof(TBUF), Local0, Local1);
   }


   CreateField(TBUF, Multiply(0x8, Local0), Multiply(0x8, Local1), RBUF)



    Return(RBUF)
}

























Method (PGRT, 2, NotSerialized) {








    Name (RBUF, Buffer() {0x0})


    Return(RBUF)
}























Method (PBRT, 2, NotSerialized) {








    Name (RBUF, Buffer() {0x0})


    Return(RBUF)
}



































Method (PBRC, 2, NotSerialized) {








   Name (RBUF, Buffer() {0x00,0x00})


    Return(RBUF)
}































Method (DITH, 2, NotSerialized) {








    Name (RBUF, Buffer() {0x0} )


    Return(RBUF)
}


Include("backlightcfg.asl")
