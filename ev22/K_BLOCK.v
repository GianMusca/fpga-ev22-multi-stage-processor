// K_BLOCK

module K_BLOCK(
    input CLK,
    input [15:0] K_in,
    output reg [15:0] K_out,
	 input EN
);

always @(posedge CLK)begin
if(EN)
    K_out <= K_in;
else
	K_out <= K_out;
end
endmodule