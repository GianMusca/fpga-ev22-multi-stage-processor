// PIPELINE_uINST_BLOCK

module PIPELINE_uINST_BLOCK(
	CLK, busA_in, busB_in, busC_in, ALUC_in, SH_in, KMx_in, T_in, M_in,
		  busA,	  busB,    busC,    ALUC,    SH,    KMx,    T,    M,
		  EN
);

    input CLK;
    input [5:0] busA_in;
    input [5:0] busB_in;
    input [5:0] busC_in;
    input [3:0] ALUC_in;
    input [1:0] SH_in;
    input KMx_in;
    input [6:0] T_in;
    input [1:0] M_in;
    
    output reg [5:0] busA = 6'b111111;
    output reg [5:0] busB = 6'b111111;
    output reg [5:0] busC = 6'b111111;
    output reg [3:0] ALUC = 4'b0000;
    output reg [1:0] SH = 2'b00;
    output reg KMx = 0;
    output reg [6:0] T = 7'b0000000;
    output reg [1:0] M = 2'b00;
	 
	 input EN;

always @(posedge CLK) begin
	if (EN) begin
    busA <= busA_in;
    busB <= busB_in;
    busC <= busC_in;
    ALUC <= ALUC_in;
    SH   <= SH_in;
    KMx  <= KMx_in;
    T    <= T_in;
    M    <= M_in;
	end
	else begin
    busA <= busA;
    busB <= busB;
    busC <= busC;
    ALUC <= ALUC;
    SH   <= SH;
    KMx  <= KMx;
    T    <= T;
    M    <= M;
	end
end
endmodule
