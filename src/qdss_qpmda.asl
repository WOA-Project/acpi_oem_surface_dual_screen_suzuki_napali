










Scope(\_SB.QDSS)
{




    Method (TPDA)
    {
        Return
        (
			Package()
			{

				Package() {  "QDSS",      0},
				Package() {  "APSS",      6},
				Package() {  "MSS",       1},
				Package() {  "NAV",       4},
				Package() {  "OLC",       9},
				Package() {  "SP",        3},
				Package() {  "SWAO",      5},
				Package() {  "LLMGOLD",   8},
				Package() {  "LLMSILVER", 7},
				Package() {  "MSSDL",     2},
			}
        )
    }

    Method (TPDM)
    {
        Return
        (
			Package()
			{

				Package() {  "VSENSE",      10},

				Package() {  "PRNG",        12},
				Package() {  "QM",          17},
				Package() {  "PIMEM",       13},
				Package() {  "KryoB",        1},
				Package() {  "MSS1",         2},
				Package() {  "NAV",          3},
				Package() {  "OLC",          4},
				Package() {  "SP",           5},
				Package() {  "RPMH0",        6},
				Package() {  "RPMH1",       21},
				Package() {  "DDR",         18},
				Package() {  "MSS0",         9},
				Package() {  "MMSS",        23},
				Package() {  "LPASS",       11},
				Package() {  "TURING",      14},
				Package() {  "LLMGOLD",      7},
				Package() {  "LLMSILVER",    8},
			}
        )
    }

    Method (AGGC)
    {
        Return
        (
            Package()
            {
                Package()
                {
                    0,
                    0x06004000,
                    0x1000,
                    65,
                    Package()
                    {
                        "BC",
                        Package() { 10, 32},
                        Package() { 13, 32},
                    },
                    Package()
                    {
                        "DSB",
                        Package() {  0, 32},
                        Package() {  2, 32},
                        Package() {  3, 32},
                        Package() {  5, 32},
                        Package() {  6, 32},
                        Package() { 10, 32},
                        Package() { 11, 32},
                        Package() { 13, 32},
                    },
                    Package()
                    {
                        "CMB",
                        Package() {  3, 64},
                        Package() {  7, 64},
                        Package() {  8,  8},
                        Package() {  9, 64},
                        Package() { 13, 64},
                    },
                },

                Package()
                {
                    1,
                    0x07862000,
                    0x1000,
                    66,
                    Package()
                    {
                        "DSB",
                        Package() { 0, 32},
                    },
                },

                Package()
                {
                    2,
                    0x06833000,
                    0x1000,
                    67,
                    Package()
                    {
                        "DSB",
                        Package() { 0, 64},
                    },
                    Package()
                    {
                        "CMB",
                        Package() { 0, 64},
                    },
                },

                Package()
                {
                    3,
                    0x06991000,
                    0x1000,
                    68,
                    Package()
                    {
                        "CMB",
                        Package() { 0, 32},
                    },
                },

                Package()
                {
                    4,
                    0x07832000,
                    0x1000,
                    69,
                    Package()
                    {
                        "CMB",
                        Package() { 0, 64},
                    },
                },

                Package()
                {
                    5,
                    0x06882000,
                    0x1000,
                    70,
                    Package()
                    {
                        "DSB",
                        Package() { 0, 32},
                    },
                },

                Package()
                {
                    6,
                    0x06B01000,
                    0x1000,
                    71,
                    Package()
                    {
                        "DSB",
                        Package() { 1, 32},
                    },
                    Package()
                    {
                        "CMB",
                        Package() { 0, 64},
                    },
                },

                Package()
                {
                    7,
                    0x078D0000,
                    0x1000,
                    73,
                    Package()
                    {
                        "CMB",
                        Package() { 0, 32},
                    },
                },

                Package()
                {
                    8,
                    0x078C0000,
                    0x1000,
                    72,
                    Package()
                    {
                        "CMB",
                        Package() { 0, 32},
                    },
                },

                Package()
                {
                    9,
                    0x06831000,
                    0x1000,
                    67,
                    Package()
                    {
                        "DSB",
                        Package() { 0, 32},
                    },
                    Package()
                    {
                        "CMB",
                        Package() { 0, 64},
                    },
                },
            }
        )
    }

    Method (MONC)
    {
        Return
        (
            Package()
            {
                Package()
                {
                    0,
                    0x06840000,
                    0x1000,
                    0,
                    7,
                    0,
                },














                Package()
                {
                    1,
                    0x0684C000,
                    0x1000,
                    0,
                    9,
                    0,
                },

                Package()
                {
                    2,
                    0x069D0000,
                    0x1000,
                    0,
                    10,
                    0,
                },

                Package()
                {
                    3,
                    0x06850000,
                    0x1000,
                    0,
                    13,
                    0,
                },

                Package()
                {
                    4,
                    0x07860000,
                    0x1000,
                    1,
                    0,
                    0,
                },

                Package()
                {
                    5,
                    0x06834000,
                    0x1000,
                    2,
                    0,
                    0,
                },

                Package()
                {
                    6,
                    0x06990000,
                    0x1000,
                    3,
                    0,
                    0,
                },

                Package()
                {
                    7,
                    0x07830000,
                    0x1000,
                    4,
                    0,
                    0,
                },

                Package()
                {
                    8,
                    0x06880000,
                    0x1000,
                    5,
                    0,
                    0,
                },

                Package()
                {
                    9,
                    0x06B02000,
                    0x1000,
                    6,
                    0,
                    0,
                },

                Package()
                {
                    10,
                    0x06B03000,
                    0x1000,
                    6,
                    1,
                    1,
                },

                Package()
                {
                    11,
                    0x069E0000,
                    0x1000,
                    0,
                    3,
                    1,
                },

                Package()
                {
                    12,
                    0x06830000,
                    0x1000,
                    9,
                    0,
                    0,
                },

                Package()
                {
                    13,
                    0x06C08000,
                    0x1000,
                    0,
                    2,
                    1,
                },

                Package()
                {
                    14,
                    0x06844000,
                    0x1000,
                    0,
                    5,
                    1,
                },

                Package()
                {
                    15,
                    0x06860000,
                    0x1000,
                    0,
                    6,
                    1,
                },

                Package()
                {
                    16,
                    0x078B0000,
                    0x1000,
                    7,
                    0,
                    0,
                },

                Package()
                {
                    17,
                    0x078A0000,
                    0x1000,
                    8,
                    0,
                    0,
                },
            }
        )
    }
}
