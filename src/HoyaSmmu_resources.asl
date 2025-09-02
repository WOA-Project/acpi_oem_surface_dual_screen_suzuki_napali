









Scope(\_SB.PEP0){

    Method(SMMD){
        Return(SMMC)
    }
    Name(SMMC,
    Package(){


        Package(){
            "DEVICE",
            "\\_SB.MMU0",




            Package(){
                "COMPONENT",
                0,
                Package(){
                    "FSTATE",
                    0,












                    Package() { "CLOCK", Package() { "gcc_hlos1_vote_mmu_tcu_clk",   1 }}

                },
                Package(){
                    "FSTATE",
                    1,






                    Package() { "CLOCK", Package() { "gcc_hlos1_vote_mmu_tcu_clk",       2 }},







                },
            },
        },


        Package(){
            "DEVICE",
            "\\_SB.MMU1",




            Package(){
                "COMPONENT",
                0,
                Package(){
                    "FSTATE",
                    0,







                    Package() { "FOOTSWITCH", Package() { "gcc_hlos1_vote_gpu_smmu_gds",   1 }},






                    Package() { "CLOCK", Package() { "gcc_hlos1_vote_gpu_smmu_clk",   1 }},

                },
                Package(){
                    "FSTATE",
                    1,






                    Package() { "CLOCK", Package() { "gcc_hlos1_vote_gpu_smmu_clk",   2 }},






                    Package() { "FOOTSWITCH", Package() { "gcc_hlos1_vote_gpu_smmu_gds",   2 }},

                },
            },
        },
    })
}
