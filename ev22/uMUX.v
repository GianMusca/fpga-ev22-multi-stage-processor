// uMUX

module uMUX(
    input R_write,
    input R_read,
    input [19:0] Inst,
    input [5:0] uInstA,
    input [5:0] uInstC,
    
    output reg [5:0] busA,
    output reg [5:0] busC
);

always @(R_write or R_read or Inst or uInstA or uInstC) begin
    if (!R_write && !R_read) begin
        busA <= uInstA;
        busC <= uInstC;
    end
    else if(R_write && !R_read)begin
        busA <= uInstA;
        busC <= Inst[5:0];
    end
    else if(!R_write && R_read)begin
        busA <= Inst[5:0];
        busC <= uInstC;
    end
    else begin //if(R_write && R_read)begin
        if (Inst[15]) begin
            busA <= Inst[5:0];
            busC <= Inst[11:6];
        end
        else begin
            busA <= Inst[5:0];
            busC <= Inst[5:0];
        end
    end
end
endmodule
