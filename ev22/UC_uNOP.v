// UC_uNOP

module UC_uNOP
#(
`include "uINST_LIST.vh"
)
(
    input HOLD,
    input [5:0] busA_in,
    input [5:0] busB_in,
    input [5:0] busC_in,
    input [3:0] ALUC_in,
    input [1:0] SH_in,
    input KMx_in,
    input [6:0] T_in,
    input [1:0] M_in,
    
    output reg [5:0] busA,
    output reg [5:0] busB,
    output reg [5:0] busC,
    output reg [3:0] ALUC,
    output reg [1:0] SH,
    output reg KMx,
    output reg [6:0] T,
    output reg [1:0] M
);

always @(HOLD or busA_in or busB_in or busC_in or ALUC_in
              or SH_in   or KMx_in  or T_in    or M_in) begin
    if(!HOLD) begin
        busA <= busA_in;
        busB <= busB_in;
        busC <= busC_in;
        ALUC <= ALUC_in;
        SH   <= SH_in;
        KMx  <= KMx_in;
        T    <= T_in;
        M    <= M_in;
    end
    else begin
        busA <= NOP_u[iBUSA_H:iBUSA_L];
        busB <= NOP_u[iBUSB_H:iBUSB_L];
        busC <= NOP_u[iBUSC_H:iBUSC_L];
        ALUC <= NOP_u[iALUC_H:iALUC_L];
        SH   <= NOP_u[iSH_H:  iSH_L  ];
        KMx  <= NOP_u[iKMX];
        T    <= NOP_u[iT_H:   iT_L   ];
        M    <= NOP_u[iM_H:   iM_L   ];
    end
end
endmodule