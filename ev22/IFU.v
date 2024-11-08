module IFU (PC, nPC, CLK, NRESET);

input CLK;
input [7:0] PC;
input NRESET;
output[7:0] nPC;

reg [7:0] Next;

always @ (posedge CLK, negedge NRESET) begin
	if(!NRESET) Next <= 0;
	else Next <= PC +  1;
end

assign nPC = Next;

endmodule