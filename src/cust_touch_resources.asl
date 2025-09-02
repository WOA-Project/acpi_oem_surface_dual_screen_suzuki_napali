









Scope(\_SB_.PEP0)
{

  Method(LPMX)
  {
     Return(LPXC)
  }

  Name(LPXC,
    Package(){
        Package ()
        {
            "DEVICE", "\\_SB.TSPI",

            Package()
            {
                "COMPONENT", 0,

                Package () {"FSTATE",  0},
            },

            Package ()
            {
                "DSTATE", 0,

                Package ()
                {
                    "PMICVREGVOTE",
                    Package ()
                    {
                        "PPP_RESOURCE_ID_LDO2_A",
                        1,
                        1200000,
                        1,
                        0,
                        0,
                    }
                },

                Package(){"DELAY", Package(){5}},

                Package ()
                {
                    "TLMMGPIO",
                    Package ()
                    {
                        127,
                        1,
                        0,
                        1,
                        0,
                        0,
                    }
                },

                Package(){"DELAY", Package(){2}},

                Package ()
                {
                    "PMICGPIO",
                    Package ()
                    {
                        "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT",
                        0,
                        13,
                        0,
                        0,
                        4,
                        2,
                        4,
                    }
                },

                Package(){"DELAY", Package(){2}},

                Package ()
                {
                    "TLMMGPIO",
                    Package ()
                    {
                        89,
                        1,
                        0,
                        1,
                        0,
                        0,
                    }
                }
            },

            Package ()
            {
                "DSTATE", 1
            },

            Package ()
            {
                "DSTATE", 2
            },

            Package ()
            {
                "DSTATE", 3,

                Package ()
                {
                    "TLMMGPIO",
                    Package ()
                    {
                        89,
                        0,
                        0,
                        1,
                        0,
                        0,
                    }
                },

                Package ()
                {
                    "PMICGPIO",
                    Package ()
                    {
                        "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT",
                        0,
                        13,
                        0,
                        0,
                        0,
                        2,
                        4,
                    }
                },

                Package ()
                {
                    "TLMMGPIO",
                    Package ()
                    {
                        127,
                        0,
                        0,
                        1,
                        0,
                        0,
                    }
                },

                Package ()
                {
                    "PMICVREGVOTE",
                    Package ()
                    {
                        "PPP_RESOURCE_ID_LDO2_A",
                        1,
                        0,
                        0,
                        0,
                        0,
                    }
                }
            }
        }
    })
}
