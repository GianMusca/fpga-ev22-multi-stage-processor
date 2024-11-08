
module count_stack(RS,
					 CLK, 
					 CU, 
					 CD,
					 add);
input CLK;
input CU;
input CD;
input RS;
output reg [4:0] add;

always @ (posedge CLK) begin
	if(CU)
		add = add + 4'h0001;
	
	if(CD)
		add = add - 4'h0001;
		
	if(RS)
		add = 4'h0000;
end

endmodule