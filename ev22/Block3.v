module Block3 (A, B, busA, busB,
		   	 R00, R01, R02, R03, R04, R05, R06, R07, R08, R09, 
		       R10, R11, R12, R13, R14, R15, R16, R17, R18, R19,
		       R20, R21, R22, R23, R24, R25, R26, R27, R28, R29,
		       R30, R31, R32, R33 ,R34, R35, R36, R37, R38, R39, 
		       R40, R41, R42, R43, R44, R45, R46, R47, R48, R49,
		       R50, R51, R52, R53, R54, R55, R56, R57, R58, R59,
		       R60, R61);

input [5:0] A;
input [5:0] B;
output reg [15:0] busA;
output reg [15:0] busB;

input [15:0] R00;  input [15:0] R01;  input [15:0] R02;  input [15:0] R03;  input [15:0] R04;
input [15:0] R05;  input [15:0] R06;  input [15:0] R07;  input [15:0] R08;  input [15:0] R09;
input [15:0] R10; input [15:0] R11; input [15:0] R12; input [15:0] R13; input [15:0] R14;
input [15:0] R15; input [15:0] R16; input [15:0] R17; input [15:0] R18; input [15:0] R19;
input [15:0] R20; input [15:0] R21; input [15:0] R22; input [15:0] R23; input [15:0] R24;
input [15:0] R25; input [15:0] R26; input [15:0] R27; input [15:0] R28; input [15:0] R29;
input [15:0] R30; input [15:0] R31; input [15:0] R32; input [15:0] R33; input [15:0] R34;
input [15:0] R35; input [15:0] R36; input [15:0] R37; input [15:0] R38; input [15:0] R39;
input [15:0] R40; input [15:0] R41; input [15:0] R42; input [15:0] R43; input [15:0] R44;
input [15:0] R45; input [15:0] R46; input [15:0] R47; input [15:0] R48; input [15:0] R49;
input [15:0] R50; input [15:0] R51; input [15:0] R52; input [15:0] R53; input [15:0] R54;
input [15:0] R55; input [15:0] R56; input [15:0] R57; input [15:0] R58; input [15:0] R59;
input [15:0] R60; input [15:0] R61; 

always @(A, R00, R01, R02, R03, R04, 
			R05, R06, R07, R08, R09, R10,
			R11, R12, R13, R14, R15, R16, 
			R17, R18, R19, R20, R21, R22,
			R23, R24, R25, R26, R27, R28,
			R29, R30, R31, R32, R33, R34,
			R35, R36, R37, R38, R39, R40, 
			R41, R42, R43, R44, R45, R46,
			R47, R48, R49, R50, R51, R52,
			R53, R54, R55, R56, R57, R58, 
			R59, R60, R61) begin
  	case(A)
  	6'b000000: begin busA = R00; end
  	6'b000001: begin busA = R01; end
  	6'b000010: begin busA = R02; end
  	6'b000011: begin busA = R03; end
  	6'b000100: begin busA = R04; end
  	6'b000101: begin busA = R05; end
  	6'b000110: begin busA = R06; end
  	6'b000111: begin busA = R07; end
  	6'b001000: begin busA = R08; end
  	6'b001001: begin busA = R09; end 
  	6'b001010: begin busA = R10; end 
  	6'b001011: begin busA = R11; end
  	6'b001100: begin busA = R12; end
  	6'b001101: begin busA = R13; end
  	6'b001110: begin busA = R14; end
  	6'b001111: begin busA = R15; end 
  	6'b010000: begin busA = R16; end 
  	6'b010001: begin busA = R17; end 
  	6'b010010: begin busA = R18; end 
  	6'b010011: begin busA = R19; end 
  	6'b010100: begin busA = R20; end 
  	6'b010101: begin busA = R21; end 
  	6'b010110: begin busA = R22; end
  	6'b010111: begin busA = R23; end 
  	6'b011000: begin busA = R24; end 
  	6'b011001: begin busA = R25; end 
  	6'b011010: begin busA = R26; end 
  	6'b011011: begin busA = R27; end 
  	6'b011100: begin busA = R28; end
  	6'b011101: begin busA = R29; end 
  	6'b011110: begin busA = R30; end 
   6'b011111: begin busA = R31; end 
   6'b100000: begin busA = R32; end 
   6'b100001: begin busA = R33; end 
   6'b100010: begin busA = R34; end
   6'b100011: begin busA = R35; end
   6'b100100: begin busA = R36; end
   6'b100101: begin busA = R37; end 
   6'b100110: begin busA = R38; end 
   6'b100111: begin busA = R39; end
   6'b101000: begin busA = R40; end 
   6'b101001: begin busA = R41; end
   6'b101010: begin busA = R42; end 
   6'b101011: begin busA = R43; end
   6'b101100: begin busA = R44; end
   6'b101101: begin busA = R45; end 
   6'b101110: begin busA = R46; end
   6'b101111: begin busA = R47; end
   6'b110000: begin busA = R48; end
   6'b110001: begin busA = R49; end
   6'b110010: begin busA = R50; end
   6'b110011: begin busA = R51; end 
   6'b110100: begin busA = R52; end
   6'b110101: begin busA = R53; end
   6'b110110: begin busA = R54; end 
   6'b110111: begin busA = R55; end 
   6'b111000: begin busA = R56; end 
   6'b111001: begin busA = R57; end
   6'b111010: begin busA = R58; end
   6'b111011: begin busA = R59; end
   6'b111100: begin busA = R60; end 
   6'b111101: begin busA = R61; end 
	6'b111110: begin busA = 16'b0000000000000000; end 
   6'b111111: begin busA = 16'b0000000000000000; end
endcase
end

always @(B, R00, R01, R02, R03, R04, 
			R05, R06, R07, R08, R09, R10,
			R11, R12, R13, R14, R15, R16, 
			R17, R18, R19, R20, R21, R22,
			R23, R24, R25, R26, R27, R28,
			R29, R30, R31, R32, R33, R34,
			R35, R36, R37, R38, R39, R40, 
			R41, R42, R43, R44, R45, R46,
			R47, R48, R49, R50, R51, R52,
			R53, R54, R55, R56, R57, R58, 
			R59, R60, R61) begin
  	case(B)
  	6'b000000: begin busB = R00; end
  	6'b000001: begin busB = R01; end
  	6'b000010: begin busB = R02; end
  	6'b000011: begin busB = R03; end
  	6'b000100: begin busB = R04; end
  	6'b000101: begin busB = R05; end
  	6'b000110: begin busB = R06; end
  	6'b000111: begin busB = R07; end
  	6'b001000: begin busB = R08; end
  	6'b001001: begin busB = R09; end 
  	6'b001010: begin busB = R10; end 
  	6'b001011: begin busB = R11; end
  	6'b001100: begin busB = R12; end
  	6'b001101: begin busB = R13; end
  	6'b001110: begin busB = R14; end
  	6'b001111: begin busB = R15; end 
  	6'b010000: begin busB = R16; end 
  	6'b010001: begin busB = R17; end 
  	6'b010010: begin busB = R18; end 
  	6'b010011: begin busB = R19; end 
  	6'b010100: begin busB = R20; end 
  	6'b010101: begin busB = R21; end 
  	6'b010110: begin busB = R22; end
  	6'b010111: begin busB = R23; end 
  	6'b011000: begin busB = R24; end 
  	6'b011001: begin busB = R25; end 
  	6'b011010: begin busB = R26; end 
  	6'b011011: begin busB = R27; end 
  	6'b011100: begin busB = R28; end
  	6'b011101: begin busB = R29; end 
  	6'b011110: begin busB = R30; end 
   6'b011111: begin busB = R31; end 
   6'b100000: begin busB = R32; end 
   6'b100001: begin busB = R33; end 
   6'b100010: begin busB = R34; end
   6'b100011: begin busB = R35; end
   6'b100100: begin busB = R36; end
   6'b100101: begin busB = R37; end 
   6'b100110: begin busB = R38; end 
   6'b100111: begin busB = R39; end
   6'b101000: begin busB = R40; end 
   6'b101001: begin busB = R41; end
   6'b101010: begin busB = R42; end 
   6'b101011: begin busB = R43; end
   6'b101100: begin busB = R44; end
   6'b101101: begin busB = R45; end 
   6'b101110: begin busB = R46; end
   6'b101111: begin busB = R47; end
   6'b110000: begin busB = R48; end
   6'b110001: begin busB = R49; end
   6'b110010: begin busB = R50; end
   6'b110011: begin busB = R51; end 
   6'b110100: begin busB = R52; end
   6'b110101: begin busB = R53; end
   6'b110110: begin busB = R54; end 
   6'b110111: begin busB = R55; end 
   6'b111000: begin busB = R56; end 
   6'b111001: begin busB = R57; end
   6'b111010: begin busB = R58; end
   6'b111011: begin busB = R59; end
   6'b111100: begin busB = R60; end 
   6'b111101: begin busB = R61; end 
	6'b111110: begin busB = 16'b0000000000000000; end 
   6'b111111: begin busB = 16'b0000000000000000; end
 endcase
 end

 endmodule
 
 
