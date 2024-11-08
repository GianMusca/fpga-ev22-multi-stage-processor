// UC_NOP

module UC_NOP
#(
`include "INST_LIST.vh"
)
(
    input HOLD,
    input [19:0] Inst_in,
    
    output reg [19:0] Inst
);

always @(HOLD or Inst_in) begin
    if(!HOLD) begin
        Inst <= Inst_in;
    end
    else begin
        Inst <= NOP_i;
    end
end
endmodule
