/* 
 * Do not change Module name 
*/
module ALU_16(input [15:0] busA, input [15:0] busB, input CY, input [3:0] ALU_op, output reg  CYout, output reg [15:0] Zout);

always @ (busA, busB, CY, ALU_op) begin
    case (ALU_op)
        0:      begin Zout = busA;               CYout = CY; end
        1:      begin Zout = busB;               CYout = CY; end
        2:      begin Zout = ~busA;              CYout = CY; end
        3:      begin Zout = ~busB;              CYout = CY; end

        4:      begin Zout = busA + busB;        CYout =busA[15]&&busB[15] || busA[15]&&!Zout[15] || !Zout[15]&&busB[15];   end
        5:      begin Zout = busA + busB + CY;   CYout = busA[15]&&busB[15] || busA[15]&&!Zout[15] ||!Zout[15]&&busB[15];   end
        6:      begin Zout = busA | busB;        CYout = CY; end
        7:      begin Zout = busA & busB;        CYout = CY; end

        8:      begin Zout = 0;                  CYout = CY; end
        9:      begin Zout = 1;                  CYout = CY; end
        10:     begin Zout = 16'hFFFF;           CYout = CY; end

        11:     begin Zout = 0;                  CYout = 0;  end
        12:     begin Zout = 1;                  CYout = 1;  end

        13:     begin Zout = busA + 1;           CYout = (Zout == 0);       end
        14:     begin Zout = busA - 1;           CYout = (Zout == 16'hFFFF); end
        default:begin Zout = 0;                  CYout = CY; end
    endcase
end
endmodule