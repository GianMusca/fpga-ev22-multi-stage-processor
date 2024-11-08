// INST_LIST

// X0000

parameter BSR_i   = 20'h10000,
parameter MOVMw_i = 20'h20000,
parameter MOVwM_i = 20'h30000,

parameter MOVwK_i = 20'h40000,
parameter ANDwK_i = 20'h50000,
parameter ORwK_i  = 20'h60000,
parameter ADDwK_i = 20'h70000,

parameter RET_i   = 20'h80000,

parameter JMP_i   = 20'hC0000,
parameter JZE_i   = 20'hD0000,
parameter JNE_i   = 20'hE0000,
parameter JCY_i   = 20'hF0000,

// 0X000

parameter MOVij_i = 20'h08000,
parameter ADDij_i = 20'h09000,

// 00X00

parameter MOViw_i = 20'h00100,

parameter MOVwj_i = 20'h00400,
parameter ANDwj_i = 20'h00500,
parameter ORwj_i  = 20'h00600,
parameter ADDwj_i = 20'h00700,

parameter CPLi_i  = 20'h00800,
parameter SHLi_i  = 20'h00900,
parameter SHRi_i  = 20'h00A00,
parameter ASRi_i  = 20'h00B00,

parameter INCi_i  = 20'h00C00,
parameter DECi_i  = 20'h00D00,

// 000X0

parameter CLC_i   = 20'h00020,
parameter SEC_i   = 20'h00030,

parameter CPLw_i  = 20'h00080,
parameter SHLw_i  = 20'h00090,
parameter SHRw_i  = 20'h000A0,
parameter ASRw_i  = 20'h000B0,

parameter INCw_i  = 20'h000C0,
parameter DECw_i  = 20'h000D0,

parameter NOP_i   = 20'h000F0
