// Block1

module Block1(
    input CY,
    input [15:0] W,
    input [3:0] inst_MSN,
    output reg JUMP
);

always @(CY or W or inst_MSN) begin
    case(inst_MSN)

        4'h1,
        4'h8,
        4'hC:   JUMP <= 1;

        4'hD:   JUMP <= (W == 16'h0000);
        4'hE:   JUMP <= W[15];
        4'hF:   JUMP <= CY;

        default:JUMP <= 0;

    endcase
end

endmodule
