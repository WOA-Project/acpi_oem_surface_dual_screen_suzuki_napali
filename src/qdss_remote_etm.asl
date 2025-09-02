










Scope(\_SB.QDSS)
{



    Method (RETM)
    {
        Return
        (
            Package()
            {



                Package() {  "MODEMQ6ETM",          1},
                Package() {  "SPSSETM",            12},
            }
        )
    }

    Method (RECF)
    {
        Return
        (
            Package()
            {
                Package()
                {
                    0,
                    1,
                    2,
                },
                Package()
                {
                    1,
                    0,
                    0,
                },
            }
        )
    }
}
