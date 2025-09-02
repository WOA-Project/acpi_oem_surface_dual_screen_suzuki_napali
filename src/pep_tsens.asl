Scope(\_SB.PEP0)
{
	Method(CTSN)
	{
		return (THSD)
	}

    Method(PEPH)
    {
       Return(Package()
       {
          "ACPI\\VEN_QCOM&DEV_0237",
       })
    }

	Method(BCLH)
    {
       Return(Package()
       {
          "ACPI\\VEN_QCOM&DEV_0294",
       })
    }


    Name(THSD,

		Package()
		{


			Package()
			{
				21,


				Package() {"ACPI\\VEN_QCOM&DEV_027F", 0},
				Package() {"ACPI\\VEN_QCOM&DEV_0280", 1},
				Package() {"ACPI\\VEN_QCOM&DEV_0281", 2},
				Package() {"ACPI\\VEN_QCOM&DEV_0282", 3},
				Package() {"ACPI\\VEN_QCOM&DEV_0283", 4},
				Package() {"ACPI\\VEN_QCOM&DEV_0284", 5},
				Package() {"ACPI\\VEN_QCOM&DEV_0285", 6},
				Package() {"ACPI\\VEN_QCOM&DEV_0286", 7},
				Package() {"ACPI\\VEN_QCOM&DEV_0287", 8},
				Package() {"ACPI\\VEN_QCOM&DEV_0288", 9},
				Package() {"ACPI\\VEN_QCOM&DEV_0289", 10},
				Package() {"ACPI\\VEN_QCOM&DEV_02AB", 11},
				Package() {"ACPI\\VEN_QCOM&DEV_02AC", 12},
				Package() {"ACPI\\VEN_QCOM&DEV_02AD", 13},
				package() {"ACPI\\VEN_QCOM&DEV_02AE", 14},
				Package() {"ACPI\\VEN_QCOM&DEV_02AF", 15},
				Package() {"ACPI\\VEN_QCOM&DEV_02C8", 16},
				Package() {"ACPI\\VEN_QCOM&DEV_02C9", 17},
				Package() {"ACPI\\VEN_QCOM&DEV_02CA", 18},
				Package() {"ACPI\\VEN_QCOM&DEV_02CB", 19},
				Package() {"ACPI\\VEN_QCOM&DEV_02CC", 20},
			},







			Package()
			{
				3,

				Package()
				{
					"ACPI\\VEN_QCOM&DEV_02B0",
					21,
					5,
					Package () {1, 2, 3, 4, 5},
				},

				Package()
				{
					"ACPI\\VEN_QCOM&DEV_02B1",
					22,
					5,
					Package () {6, 7, 8, 9, 10},
				},

				Package()
				{
					"ACPI\\VEN_QCOM&DEV_02B2",
					23,
					21,
					Package () {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20},
				},
			},




			Package ()
			{
				10,


				Package() {"SYS_THERM1",  "ACPI\\VEN_QCOM&DEV_0299", 0,                 0},
				Package() {"SYS_THERM2",  "ACPI\\VEN_QCOM&DEV_029A", 1,                 0 },
				Package() {"PA_THERM",    "ACPI\\VEN_QCOM&DEV_029B", 2,                 0 },
				Package() {"PA_THERM1",   "ACPI\\VEN_QCOM&DEV_029C", 3,                 0 },
				Package() {"SYS_THERM3",  "ACPI\\VEN_QCOM&DEV_029D", 4,                 0 },
				Package() {"PMIC_THERM",  "ACPI\\VEN_QCOM&DEV_029E", 5,                 0 },
				Package() {"SKIN_THERM",  "ACPI\\VEN_QCOM&DEV_029F", 6,                 1 },
				Package() {"PMIC_TEMP2",  "ACPI\\VEN_QCOM&DEV_02A0", 7,                 1 },
				Package() {"CHG_TEMP",    "ACPI\\VEN_QCOM&DEV_02EE", 8,                 1 },
				Package() {"BATT_THERM",  "ACPI\\VEN_QCOM&DEV_02EF", 9,                 1 },
			},


















			Package ()
			{
				1,
				Package ()
				{
					2,
					2780,
					2830,
					2,
					1,
				},
			},


			Package ()
			{
				4,
				Package ()
				{
						"cpuv_restriction_cold",
						1,
						0,
				},
				Package ()
				{
						"cpuv_restriction_cold",
						1,
						1,
				},
				Package ()
				{
						"cpuv_restriction_cold",
						1,
						0x43,
				},
				Package ()
				{
						"cpuv_restriction_cold",
						1,
						0x53,
				},
			},



			Package ()
			{
				0,
			},













			Package ()
			{
				7,
				Package() { 0,
							0,
							0,
						},
				Package() { 1,
							3,
							0,
						},
				Package() { 3,
							2,
							0,
						},
				Package() { 4,
							2,
							1,
						},
				Package() { 6,
							2,
							2,
						},
				Package() { 8,
							2,
							3,
						},
				Package() { 2,

							4,
							0,
						},
			}
		}
	)
}
