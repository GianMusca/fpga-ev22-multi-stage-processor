// DATA_MUX 

module DATA_MUX(
    input SELECT,
    input [15:0] DAdd_in,
    output reg [15:0] DAdd_out
);

always @(SELECT or DAdd_in) begin
    if(SELECT)
        DAdd_out <= DAdd_in;
    else
        DAdd_out <= 0;
end
endmodule
