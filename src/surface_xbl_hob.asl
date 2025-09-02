Scope (\_SB) {
    OperationRegion(XACA, SystemMemory, 0x146BFA94, 0x64)
    Field(XACA, AnyAcc, Lock, Preserve)
    {
        BDID,   8,
        BATP,   8,
        TCSS,   8,
    }




    Method(TEV1)
    {
        Return ((\_SB.BDID == 0x04 || \_SB.BDID == 0x24) || (\_SB.BDID == 0x06 || \_SB.BDID == 0x26) || (\_SB.BDID == 0x07 || \_SB.BDID == 0x27))
    }




    Method(TEV3)
    {
        Return ((\_SB.BDID == 0x08 || \_SB.BDID == 0x28) || (\_SB.BDID == 0x09 || \_SB.BDID == 0x29) || (\_SB.BDID == 0x0A || \_SB.BDID == 0x2A))
    }




    Method(TEV4)
    {
        Return ((\_SB.BDID == 0x0B || \_SB.BDID == 0x2B) || (\_SB.BDID == 0x0C || \_SB.BDID == 0x2C))
    }
}