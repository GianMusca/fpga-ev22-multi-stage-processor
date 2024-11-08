// CY_BLOCK

module CY_BLOCK(
    input CLK,
    input CY_in,
    input CY_write4,
    output reg CY_out
);

always @(posedge CLK) begin
    if(CY_write4)
        CY_out <= CY_in;
    else
        CY_out <= CY_out;
end
endmodule
