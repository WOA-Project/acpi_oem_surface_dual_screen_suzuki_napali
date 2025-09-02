Scope(\_SB.PEP0)
{

    Method(UIDL)
    {
        Return(NIDL)
    }

    Name(NIDL,
    package(){
        "MICROPEP_IDLE",
        0x1,

        package(){
            "LPR",
            "KryoSilver0",
            0x0,
            0x0,

            package(){
                "MODE",
                "C1",
                0,
                0,
                0,
                0,
                0x00000000,

            },

            package(){
                "MODE",
                "C2d",
                1000,
                4000,
                0x0,
                0,
                0x00000002,

            },

            package(){
                "MODE",
                "C3",
                3000,
                4500,
                0x3,
                0,
                0x40000003,

            },

            package(){
                "MODE",
                "C3_NI",
                3000,
                4500,
                0x13,
                0,
                0x40000004,

            },

        },

        package(){
            "LPR",
            "KryoSilver1",
            0x1,
            0x0,

            package(){
                "MODE",
                "C1",
                0,
                0,
                0,
                0,
                0x00000000,

            },

            package(){
                "MODE",
                "C2d",
                1000,
                4000,
                0x0,
                0,
                0x00000002,

            },

            package(){
                "MODE",
                "C3",
                3000,
                4500,
                0x3,
                0,
                0x40000003,

            },

            package(){
                "MODE",
                "C3_NI",
                3000,
                4500,
                0x13,
                0,
                0x40000004,

            },

        },

        package(){
            "LPR",
            "KryoSilver2",
            0x2,
            0x0,

            package(){
                "MODE",
                "C1",
                0,
                0,
                0,
                0,
                0x00000000,

            },

            package(){
                "MODE",
                "C2d",
                1000,
                4000,
                0x0,
                0,
                0x00000002,

            },

            package(){
                "MODE",
                "C3",
                3000,
                4500,
                0x3,
                0,
                0x40000003,

            },

            package(){
                "MODE",
                "C3_NI",
                3000,
                4500,
                0x13,
                0,
                0x40000004,

            },

        },

        package(){
            "LPR",
            "KryoSilver3",
            0x3,
            0x0,

            package(){
                "MODE",
                "C1",
                0,
                0,
                0,
                0,
                0x00000000,

            },

            package(){
                "MODE",
                "C2d",
                1000,
                4000,
                0x0,
                0,
                0x00000002,

            },

            package(){
                "MODE",
                "C3",
                3000,
                4500,
                0x3,
                0,
                0x40000003,

            },

            package(){
                "MODE",
                "C3_NI",
                3000,
                4500,
                0x13,
                0,
                0x40000004,

            },

        },

        package(){
            "LPR",
            "KryoGold0",
            0x4,
            0x0,

            package(){
                "MODE",
                "C1",
                0,
                0,
                0,
                0,
                0x00000000,

            },

            package(){
                "MODE",
                "C2d",
                800,
                6000,
                0x10,
                0,
                0x00000002,

            },

            package(){
                "MODE",
                "C3",
                900,
                70000,
                0x13,
                0,
                0x40000003,

            },

            package(){
                "MODE",
                "C3_NI",
                900,
                70000,
                0x13,
                0,
                0x40000004,

            },

        },

        package(){
            "LPR",
            "KryoGold1",
            0x5,
            0x0,

            package(){
                "MODE",
                "C1",
                0,
                0,
                0,
                0,
                0x00000000,

            },

            package(){
                "MODE",
                "C2d",
                800,
                6000,
                0x10,
                0,
                0x00000002,

            },

            package(){
                "MODE",
                "C3",
                900,
                70000,
                0x13,
                0,
                0x40000003,

            },

            package(){
                "MODE",
                "C3_NI",
                900,
                70000,
                0x13,
                0,
                0x40000004,

            },

        },

        package(){
            "LPR",
            "KryoGold2",
            0x6,
            0x0,

            package(){
                "MODE",
                "C1",
                0,
                0,
                0,
                0,
                0x00000000,

            },

            package(){
                "MODE",
                "C2d",
                800,
                6000,
                0x10,
                0,
                0x00000002,

            },

            package(){
                "MODE",
                "C3",
                900,
                70000,
                0x13,
                0,
                0x40000003,

            },

            package(){
                "MODE",
                "C3_NI",
                900,
                70000,
                0x13,
                0,
                0x40000004,

            },

        },

        package(){
            "LPR",
            "KryoGold3",
            0x7,
            0x0,

            package(){
                "MODE",
                "C1",
                0,
                0,
                0,
                0,
                0x00000000,

            },

            package(){
                "MODE",
                "C2d",
                800,
                6000,
                0x10,
                0,
                0x00000002,

            },

            package(){
                "MODE",
                "C3",
                900,
                70000,
                0x13,
                0,
                0x40000003,

            },

            package(){
                "MODE",
                "C3_NI",
                900,
                70000,
                0x13,
                0,
                0x40000004,

            },

        },

        package(){
            "LPR",
            "L2_Silver",
            0xFFFFFFFF,
            0x1000000,

            package(){
                "MODE",
                "D2d",
                1300,
                3000,
                0x10,
                0,
                0x20,
                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver0",
                        "C1",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver0",
                        "C2d",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver0",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver0",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver1",
                        "C1",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver1",
                        "C2d",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver1",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver1",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver2",
                        "C1",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver2",
                        "C2d",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver2",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver2",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver3",
                        "C1",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver3",
                        "C2d",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver3",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver3",
                        "C3_NI",
                        7,
                    },

                },


            },

            package(){
                "MODE",
                "D2e",
                1500,
                3500,
                0x10,
                0,
                0x30,
                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver0",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver0",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver1",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver1",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver2",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver2",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver3",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver3",
                        "C3_NI",
                        7,
                    },

                },


            },

            package(){
                "MODE",
                "D4",
                9000,
                64000,
                0x10,
                0,
                0x40,
                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver0",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver0",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver1",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver1",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver2",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver2",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoSilver3",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoSilver3",
                        "C3_NI",
                        7,
                    },

                },


            },

        },

        package(){
            "LPR",
            "L2_Gold",
            0xFFFFFFFF,
            0x1000000,

            package(){
                "MODE",
                "D2d",
                2000,
                9000,
                0x10,
                0,
                0x20,
                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C1",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C2d",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold1",
                        "C1",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C2d",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold1",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold1",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold2",
                        "C1",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C2d",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold2",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold2",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold3",
                        "C1",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C2d",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold3",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold3",
                        "C3_NI",
                        7,
                    },

                },


            },

            package(){
                "MODE",
                "D2e",
                4000,
                10000,
                0x10,
                0,
                0x30,
                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold1",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold1",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold2",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold2",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold3",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold3",
                        "C3_NI",
                        7,
                    },

                },


            },

            package(){
                "MODE",
                "D4",
                12000,
                60000,
                0x10,
                0,
                0x40,
                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold0",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold1",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold1",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold2",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold2",
                        "C3_NI",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "KryoGold3",
                        "C3",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "KryoGold3",
                        "C3_NI",
                        7,
                    },

                },


            },

        },

        package(){
            "LPR",
            "CCI",
            0xFFFFFFFF,
            0x2000000,

            package(){
                "MODE",
                "E1",
                5000,
                26000,
                0x10,
                0,
                0x100,
                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "L2_Silver",
                        "D2e",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "L2_Silver",
                        "D4",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "L2_Gold",
                        "D2e",
                        7,
                    },

                    package(){
                        "DEPENDENCY",
                        "L2_Gold",
                        "D4",
                        7,
                    },

                },


            },

            package(){
                "MODE",
                "E3",
                11000,
                30000,
                0x10,
                0,
                0x400,
                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "L2_Silver",
                        "D4",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "L2_Gold",
                        "D4",
                        7,
                    },

                },


            },

            package(){
                "MODE",
                "E3+RPM",
                11500,
                35000,
                0x10,
                0,
                0x500,
                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "L2_Silver",
                        "D4",
                        7,
                    },

                },

                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "L2_Gold",
                        "D4",
                        7,
                    },

                },


            },

        },

        package(){
            "LPR",
            "platform",
            0xFFFFFFFF,
            0x0,

            package(){
                "MODE",
                "xo",
                5000,
                330000,
                32,
                0x10,
                0xFFFFFE00,
                package(){
                    "DEPENDENCY_CONTAINER",

                    package(){
                        "DEPENDENCY",
                        "CCI",
                        "E3+RPM",
                        7,
                    },

                },


            },

        },

    })

}
