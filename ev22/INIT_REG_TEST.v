// INIT_REG_TEST

module INIT_REG_TEST(
	CLK,
	out);
	input CLK;
	output reg [15:0] out = 16'hF1B0;

	always @(posedge CLK) begin
	
	out <= out+1;
	
	end
	
endmodule
