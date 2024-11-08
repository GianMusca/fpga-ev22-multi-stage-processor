module Register (CLK,
					  WE,
					  data_bus,
					  B3);
input CLK;
input WE;
input [15:0] data_bus;
output reg [15:0] B3;

always @ (posedge CLK) begin
	if(WE)
		B3 = data_bus;
end

endmodule
