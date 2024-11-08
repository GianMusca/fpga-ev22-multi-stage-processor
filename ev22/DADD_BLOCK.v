// DADD_BLOCK

module DADD_BLOCK(
    input CLK,
    input [15:0] DADD_in,
    output reg [15:0] DADD_out,
	 input EN
);

always @(posedge CLK)begin
if(EN)
    DADD_out <= DADD_in;
else
	DADD_out <= DADD_out;
end
endmodule