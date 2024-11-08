// TOS_MUX

module TOS_MUX(
    input [15:0] IAdd_in,
    input [15:0] TOS,
    input PULL,
    output reg [15:0] IAdd_out
);

always @(IAdd_in or TOS or PULL) begin
    if(PULL)
        IAdd_out <= TOS;
    else
        IAdd_out <= IAdd_in;
end
endmodule
