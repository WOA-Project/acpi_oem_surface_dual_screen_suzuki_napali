Scope(\_SB.PEP0)
{

	Name(NDCV,
	    Package ()
        {
	        Package()
	        {
		        "CHIP_INFO",
                321,
                1,
                0,

      		    2,

                Package()
		        {
                    "BIG",
			        4,
		            "apcs_gold_sysleaf_clk",
				    Package(){300, 1037, 1574},
				    3,
				    Package(){0, 9, 16},
		        },

                Package()
		        {
                    "LITTLE",
			        4,
		            "apcs_silver_sysleaf_clk",
				    Package(){300, 1210, 1594},
				    3,
				    Package(){0, 11, 16},
		        },

			    Package()
		        {
                    "L3_CACHE",
                    "apcs_l3_sysleaf_clk",
		        },
            },

			Package()
	        {
		        "CHIP_INFO",
                321,
                2,
                0,

      		    2,

                Package()
		        {
                    "BIG",
			        4,
		            "apcs_gold_sysleaf_clk",
				    Package(){826, 1363, 1460},
				    3,
				    Package(){0, 7, 15},
		        },

                Package()
		        {
                    "LITTLE",
			        4,
		            "apcs_silver_sysleaf_clk",
				    Package(){300, 1229, 1325},
				    3,
				    Package(){0, 11, 15},
		        },

			    Package()
		        {
                    "L3_CACHE",
                    "apcs_l3_sysleaf_clk",
		        },
            },

            Package()
	        {
		        "CHIP_INFO",
                341,
                1,
                0,

      		    2,

                Package()
		        {
                    "BIG",
			        4,
		            "apcs_gold_sysleaf_clk",
				    Package(){300, 1037, 1574},
				    3,
				    Package(){0, 9, 16},
		        },

                Package()
		        {
                    "LITTLE",
			        4,
		            "apcs_silver_sysleaf_clk",
				    Package(){300, 1210, 1594},
				    3,
				    Package(){0, 11, 16},
		        },

			    Package()
		        {
                    "L3_CACHE",
                    "apcs_l3_sysleaf_clk",
		        },
            },

            Package()
	        {
		        "CHIP_INFO",
                341,
                2,
                0,

      		    2,

                Package()
		        {
                    "BIG",
			        4,
		            "apcs_gold_sysleaf_clk",
				    Package(){826, 1363, 1460},
				    3,
				    Package(){0, 7, 15},
		        },

                Package()
		        {
                    "LITTLE",
			        4,
		            "apcs_silver_sysleaf_clk",
				    Package(){300, 1229, 1325},
				    3,
				    Package(){0, 11, 15},
		        },

			    Package()
		        {
                    "L3_CACHE",
                    "apcs_l3_sysleaf_clk",
		        },
            },

            Package()
	        {
		        "CHIP_INFO",
                348,
                2,
                0,

      		    2,

                Package()
		        {
                    "BIG",
			        4,
		            "apcs_gold_sysleaf_clk",
				    Package(){826, 1363, 1460},
				    3,
				    Package(){0, 7, 15},
		        },

                Package()
		        {
                    "LITTLE",
			        4,
		            "apcs_silver_sysleaf_clk",
				    Package(){300, 1229, 1325},
				    3,
				    Package(){0, 11, 15},
		        },

			    Package()
		        {
                    "L3_CACHE",
                    "apcs_l3_sysleaf_clk",
		        },
            },

        })


    Method(LDCV)
	{
        return(NDCV)
    }
}
