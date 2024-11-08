// FF_16

module FF_16(
    input CLK,
    input [15:0]in,
    output reg [15:0] out
);

always @(posedge CLK)
    out <= in;
endmodule
