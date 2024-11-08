// SH_16

module SH_16(
    input signed [15:0] Zin,
    input [1:0] SH_op,
    output reg signed [15:0] Zout
);

always @ (Zin, SH_op) begin
    case (SH_op)
        0: Zout = Zin;
        1: Zout = Zin << 1;
        2: Zout = Zin >> 1;
        3: Zout = Zin >>>1;
    endcase
end
endmodule