













Scope(\_SB.PEP0)
{

    Name(DVMP,
    Package()
    {




       Package()
       {
          "PPP_RESOURCE_ID_PMIC_GPIO_DV1",
          "PPP_RESOURCE_TYPE_DISCRETE_PMIC_GPIO",
          Package()
          {
             "PM_DISCRETE_VREG_STATE_ON",
             package()
             {
                0,
                8,
                0,
                0,
                1,
                0,
                1,
                0,
                1,
                5,
             },
          },
          Package()
          {
             "PM_DISCRETE_VREG_STATE_OFF",
             package()
             {
                0,
                8,
                0,
                0,
                0,
                0,
                1,
                0,
                1,
                5,
             },
          },
       },

       Package()
       {
          "PPP_RESOURCE_ID_PMIC_MPP_DV1",
          "PPP_RESOURCE_TYPE_DISCRETE_PMIC_MPP",
          Package()
          {
             "PM_DISCRETE_VREG_STATE_ON",
             package()
             {
                0,
                3,
                0,
                2,
                1,
                0,
             },
          },
          Package()
          {
             "PM_DISCRETE_VREG_STATE_OFF",
             package()
             {
                0,
                3,
                0,
                2,
                0,
                0,
             },
          },
       },
    })


    Method(DVMM)
    {
        Return(DVMP)
    }
}
