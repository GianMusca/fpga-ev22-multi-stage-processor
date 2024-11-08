module FF_WE_stack(CLK,
						 push,
                   wren
						 );
input CLK;
input push;
output reg wren;

always @ (posedge CLK) begin
	if(push)
		wren = 1;
	else
		wren = 0;
end

endmodule