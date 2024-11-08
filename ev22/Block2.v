module Block2 (C, busC, memory, data_bus,
		   	   E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, 
		       E10, E11, E12, E13, E14, E15, E16, E17, E18, E19,
		       E20, E21, E22, E23, E24, E25, E26, E27, E28, E29,
		       E30, E31, E32, E33 ,E34, E35, E36, E37, E38, E39, 
		       E40, E41, E42, E43, E44, E45, E46, E47, E48, E49,
		       E50, E51, E52, E53, E54, E55, E56, E57, E58, E59,
		       E60, E61);

input [5:0] C;
input [15:0] memory;
output reg [15:0] data_bus;
input [15:0] busC;

output reg E0;  output reg E1;  output reg E2;  output reg E3;  output reg E4;
output reg E5;  output reg E6;  output reg E7;  output reg E8;  output reg E9;
output reg E10; output reg E11; output reg E12; output reg E13; output reg E14;
output reg E15; output reg E16; output reg E17; output reg E18; output reg E19;
output reg E20; output reg E21; output reg E22; output reg E23; output reg E24;
output reg E25; output reg E26; output reg E27; output reg E28; output reg E29;
output reg E30; output reg E31; output reg E32; output reg E33; output reg E34;
output reg E35; output reg E36; output reg E37; output reg E38; output reg E39;
output reg E40; output reg E41; output reg E42; output reg E43; output reg E44;
output reg E45; output reg E46; output reg E47; output reg E48; output reg E49;
output reg E50; output reg E51; output reg E52; output reg E53; output reg E54;
output reg E55; output reg E56; output reg E57; output reg E58; output reg E59;
output reg E60; output reg E61; 

always @(C, busC, memory) begin
E0 = 1'b0;  E1 = 1'b0;  E2 = 1'b0;  E3 = 1'b0;  E4 = 1'b0;
E5 = 1'b0;  E6 = 1'b0;  E7 = 1'b0;  E8 = 1'b0;  E9 = 1'b0;
E10 = 1'b0; E11 = 1'b0; E12 = 1'b0;;E13 = 1'b0; E14 = 1'b0;
E15 = 1'b0; E16 = 1'b0; E17 = 1'b0; E18 = 1'b0; E19 = 1'b0;
E20 = 1'b0; E21 = 1'b0; E22 = 1'b0; E23 = 1'b0; E24 = 1'b0;
E25 = 1'b0; E26 = 1'b0; E27 = 1'b0; E28 = 1'b0; E29 = 1'b0;
E30 = 1'b0; E31 = 1'b0; E32 = 1'b0; E33 = 1'b0; E34 = 1'b0;
E35 = 1'b0; E36 = 1'b0; E37 = 1'b0; E38 = 1'b0; E39 = 1'b0;
E40 = 1'b0; E41 = 1'b0; E42 = 1'b0; E43 = 1'b0; E44 = 1'b0;
E45 = 1'b0; E46 = 1'b0; E47 = 1'b0; E48 = 1'b0; E49 = 1'b0;
E50 = 1'b0; E51 = 1'b0; E52 = 1'b0; E53 = 1'b0; E54 = 1'b0;
E55 = 1'b0; E56 = 1'b0; E57 = 1'b0; E58 = 1'b0; E59 = 1'b0;
E60 = 1'b0; E61 = 1'b0; 
  	case(C)
   6'b000000: begin E0 = 1'b1; end
   6'b000001: begin E1 = 1'b1; end
   6'b000010: begin E2 = 1'b1; end 
   6'b000011: begin E3 = 1'b1; end
   6'b000100: begin E4 = 1'b1; end 
   6'b000101: begin E5 = 1'b1; end 
   6'b000110: begin E6 = 1'b1; end 
   6'b000111: begin E7 = 1'b1; end
   6'b001000: begin E8 = 1'b1; end
   6'b001001: begin E9 = 1'b1; end 
   6'b001010: begin E10 = 1'b1; end
   6'b001011: begin E11 = 1'b1; end
   6'b001100: begin E12 = 1'b1; end
   6'b001101: begin E13 = 1'b1; end
   6'b001110: begin E14 = 1'b1; end
   6'b001111: begin E15 = 1'b1; end
   6'b010000: begin E16 = 1'b1; end
   6'b010001: begin E17 = 1'b1; end
   6'b010010: begin E18 = 1'b1; end
   6'b010011: begin E19 = 1'b1; end
   6'b010100: begin E20 = 1'b1; end
   6'b010101: begin E21 = 1'b1; end
   6'b010110: begin E22 = 1'b1; end
   6'b010111: begin E23 = 1'b1; end
   6'b011000: begin E24 = 1'b1; end
   6'b011001: begin E25 = 1'b1; end
   6'b011010: begin E26 = 1'b1; end
   6'b011011: begin E27 = 1'b1; end
   6'b011100: begin E28 = 1'b1; end
   6'b011101: begin E29 = 1'b1; end
   6'b011110: begin E30 = 1'b1; end
   6'b011111: begin E31 = 1'b1; end
   6'b100000: begin E32 = 1'b1; end
   6'b100001: begin E33 = 1'b1; end
   6'b100010: begin E34 = 1'b1; end
   6'b100011: begin E35 = 1'b1; end
   6'b100100: begin E36 = 1'b1; end
   6'b100101: begin E37 = 1'b1; end
   6'b100110: begin E38 = 1'b1; end
   6'b100111: begin E39 = 1'b1; end
   6'b101000: begin E40 = 1'b1; end
   6'b101001: begin E41 = 1'b1; end
   6'b101010: begin E42 = 1'b1; end
   6'b101011: begin E43 = 1'b1; end
   6'b101100: begin E44 = 1'b1; end
   6'b101101: begin E45 = 1'b1; end
   6'b101110: begin E46 = 1'b1; end
   6'b101111: begin E47 = 1'b1; end
   6'b110000: begin E48 = 1'b1; end
   6'b110001: begin E49 = 1'b1; end
   6'b110010: begin E50 = 1'b1; end
   6'b110011: begin E51 = 1'b1; end 
   6'b110100: begin E52 = 1'b1; end
   6'b110101: begin E53 = 1'b1; end 
   6'b110110: begin E54 = 1'b1; end
   6'b110111: begin E55 = 1'b1; end
   6'b111000: begin E56 = 1'b1; end 
   6'b111001: begin E57 = 1'b1; end
   6'b111010: begin E58 = 1'b1; end
   6'b111011: begin E59 = 1'b1; end
   6'b111100: begin E60 = 1'b1; end 
   6'b111101: begin E61 = 1'b1; end
   6'b111110: begin E61 = 1'b1; end // Para el caso de C = 61 y C = 62 se activa W
	6'b111111: begin ; end // Para el caso C = 63 no se activa nada
	 endcase
	 
	case(C)
	6'b111110: begin data_bus = memory; end // Para el caso C = 61 publica memory en el bus.
	default: begin data_bus = busC; end // para el resto de los casos publica busC
	 endcase 
	
end

endmodule