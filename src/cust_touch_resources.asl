









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
                        "PPP_RESOURCE_ID_LDO2_A",           // Voltage Regulator ID
                        1,                                  // Voltage Regulator type = LDO
                        1200000,                            // Voltage 1.2V        : microvolts ( V )
                        1,                                  // Enable = Enable
                        0,                                  // Power Mode = LPM
                        0,                                  // Head Room
                    }
                },

                Package(){"DELAY", Package(){5}},

                Package ()
                {
                    "TLMMGPIO",                         // Identifier: PMIC GPIO. Top Level Mode Mux (TLMM)
                    Package ()
                    {
                        127,                            // Pin Number: GPIO_127
                        1,                              // State / OutVal: 0 == Low, 1 == High
                        0,                              // Function Select: 0 == Generic I/O Pin, non-zero == Alternate Function
                        1,                              // Direction: 0 == Input, 1 == Output
                        0,                              // Pull Type: 0 == No Pull, 1 == Pull Down, 2 == Keeper, 3 == Pull Up
                        0,                              // Strength: 0 == 2 mA, 1 == 4 mA, 2 == 6 mA, 3 == 8 mA, 4 == 10 mA, 5 == 12 mA, 4 == 14 mA, 7 == 16 mA
                    }
                },

                Package(){"DELAY", Package(){2}},

                Package ()
                {
                    "PMICGPIO",
                    Package ()
                    {
                        "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT",
                        0,  // PM8998
                        13, // GPIO #14
                        0,  // PM_GPIO_OUT_BUFFER_CONFIG_CMOS
                        0,  // PM_GPIO_VIN0
                        4,  // EN_AND_SOURCE_SEL, 4: ?
                        2,  // PM_GPIO_OUT_BUFFER_?
                        4,  // PM_GPIO_I_SOURCE_PULL_DOWN_10uA
                    }
                },

                Package(){"DELAY", Package(){2}},

                Package ()
                {
                    "TLMMGPIO",                         // Identifier: PMIC GPIO. Top Level Mode Mux (TLMM)
                    Package ()
                    {
                        89,                             // Pin Number: GPIO_89
                        1,                              // State / OutVal: 0 == Low, 1 == High
                        0,                              // Function Select: 0 == Generic I/O Pin, non-zero == Alternate Function
                        1,                              // Direction: 0 == Input, 1 == Output
                        0,                              // Pull Type: 0 == No Pull, 1 == Pull Down, 2 == Keeper, 3 == Pull Up
                        0,                              // Strength: 0 == 2 mA, 1 == 4 mA, 2 == 6 mA, 3 == 8 mA, 4 == 10 mA, 5 == 12 mA, 4 == 14 mA, 7 == 16 mA
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
                    "TLMMGPIO",                         // Identifier: PMIC GPIO. Top Level Mode Mux (TLMM)
                    Package ()
                    {
                        89,                             // Pin Number: GPIO_89
                        0,                              // State / OutVal: 0 == Low, 1 == High
                        0,                              // Function Select: 0 == Generic I/O Pin, non-zero == Alternate Function
                        1,                              // Direction: 0 == Input, 1 == Output
                        0,                              // Pull Type: 0 == No Pull, 1 == Pull Down, 2 == Keeper, 3 == Pull Up
                        0,                              // Strength: 0 == 2 mA, 1 == 4 mA, 2 == 6 mA, 3 == 8 mA, 4 == 10 mA, 5 == 12 mA, 4 == 14 mA, 7 == 16 mA
                    }
                },

                Package ()
                {
                    "PMICGPIO",
                    Package ()
                    {
                        "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT",
                        0,  // PM8998
                        13, // GPIO #14
                        0,  // PM_GPIO_OUT_BUFFER_CONFIG_CMOS
                        0,  // PM_GPIO_VIN0
                        0,  // EN_AND_SOURCE_SEL, 1: LOW
                        2,  // PM_GPIO_OUT_BUFFER_?
                        4,  // PM_GPIO_I_SOURCE_PULL_DOWN_10uA
                    }
                },

                Package ()
                {
                    "TLMMGPIO",                         // Identifier: PMIC GPIO. Top Level Mode Mux (TLMM)
                    Package ()
                    {
                        127,                            // Pin Number: GPIO_127
                        0,                              // State / OutVal: 0 == Low, 1 == High
                        0,                              // Function Select: 0 == Generic I/O Pin, non-zero == Alternate Function
                        1,                              // Direction: 0 == Input, 1 == Output
                        0,                              // Pull Type: 0 == No Pull, 1 == Pull Down, 2 == Keeper, 3 == Pull Up
                        0,                              // Strength: 0 == 2 mA, 1 == 4 mA, 2 == 6 mA, 3 == 8 mA, 4 == 10 mA, 5 == 12 mA, 4 == 14 mA, 7 == 16 mA
                    }
                },

                Package ()
                {
                    "PMICVREGVOTE",
                    Package ()
                    {
                        "PPP_RESOURCE_ID_LDO2_A",           // Voltage Regulator ID
                        1,                                  // Voltage Regulator type = LDO
                        0,                                  // Voltage 1.2V        : microvolts ( V )
                        0,                                  // Enable = Disable
                        0,                                  // Power Mode = LPM
                        0,                                  // Head Room
                    }
                }
            }
        }
    })
}
