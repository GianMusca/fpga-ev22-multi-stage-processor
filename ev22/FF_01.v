// FF_01

module FF_01(
    input CLK,
    input in,
    output reg out
);

always @(posedge CLK)
    out <= in;
endmodule
