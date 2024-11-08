
module FF_stack(data_in, 
					 CLK, 
					 data_out);

input CLK;
input [15:0] data_in;
output reg [15:0] data_out;

always @ (posedge CLK) begin
	data_out = data_in;
end

endmodule

