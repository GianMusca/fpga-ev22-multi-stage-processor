// KMUX_BLOCK

module KMUX_BLOCK(
    input KMx,
    input [15:0]reg_bus,
    input [15:0]K_bus,
    output reg [15:0]A_bus
);

always @(KMx or reg_bus or K_bus) begin
    if(KMx)
        A_bus <= K_bus;
    else
        A_bus <= reg_bus;
end
endmodule
