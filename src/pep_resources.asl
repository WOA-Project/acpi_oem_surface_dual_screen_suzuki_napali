












Scope(\_SB_.PEP0)
{


    Method(PPMD)
    {
        Return(PPCC)
    }

    Name(PPCC,
    Package ()
    {

        Package(){
            "DEVICE",
            "\\_SB.PRXY",
            Package(){
                "COMPONENT",
                0,

                Package(){ "FSTATE", 0, },
            },
        },

        Package(){
            "DEVICE",
            "\\_SB.STAT",
            Package(){
                "COMPONENT",
                0,

                Package(){ "FSTATE", 0, },
            },
        },

        Package()
        {

            "DEVICE",
            0x81,
            "\\_SB.GIO0",
            Package()
            {
                "COMPONENT",
                0,

                Package() {"FSTATE",0,},
            },
            Package()
            {
                "COMPONENT",
                1,

                Package() {"FSTATE",0},
            },
        },

    })

    Name(SDFR,
	Package()
	{

        Package(){
            "DEVICE",
            "\\_SB.SDFR",

            Package(){
                "COMPONENT",
                0,
                Package(){
                    "FSTATE",
                    0,


                },
                Package(){
                    "FSTATE",
                    1,


                },
                Package(){
                    "FSTATE",
                    2,



                },
                Package(){
                    "FSTATE",
                    3,

                },
            },
        },
        })
}
