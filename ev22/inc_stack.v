
module inc_stack(PC_in,
		  PC_out);

input [15:0] PC_in;
output reg [15:0] PC_out;

always @ (PC_in) begin
	PC_out = PC_in + 4'h0001;
end 

endmodule