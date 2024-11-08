module MIR_2
#(
`include "uINST_LIST.vh"
,
`include "INST_LIST.vh"
)
(
	INST, 
	MICROINST
);

/****************/
/* Input Ports */
/****************/
input wire[19:0] INST;

/****************/
/* Output Ports */
/****************/
output wire[33:0] MICROINST;

//Intermediate Variables
reg [3:0] OPCODE;
reg [3:0] ALU;
reg [6:0] T;
reg [5:0] busB;


assign MICROINST[iBUSA_H:iBUSA_L]	= MOVij_u[iBUSA_H:iBUSA_L]; //Bus A (6 bits) -> For second nybble opcode instructions, bus A is not used	(its always the same)
assign MICROINST[iBUSC_H:iBUSC_L] 	= MOVij_u[iBUSC_H:iBUSC_L]; //Bus B (6 bits) -> For second nybble opcode instructions, bus C is not used	(its always the same)
assign MICROINST[iSH_H:iSH_L] 		= MOVij_u[iSH_H:iSH_L]; 	//Shifter 		 -> For second nybble opcode instructions, shifter is always 0
assign MICROINST[iKMX:iKMX] 		= MOVij_u[iKMX:iKMX]; 		//KMx 			 -> For second nybble opcode instructions, KMx is always 0
assign MICROINST[iM_H:iM_L] 		= MOVij_u[iM_H:iM_L]; 		//M 			 -> For second nybble opcode instructions, M is always 0


//Creation of Microinstruction
assign MICROINST[iALUC_H:iALUC_L] = ALU;
assign MICROINST[iBUSB_H:iBUSB_L] = busB;
assign MICROINST[iT_H:iT_L] = T;


always @ (INST)
	begin
		OPCODE = INST[15:12];	//Opcode is the second Nybble from instruction
		case (OPCODE)
		4'b0000: begin			//Instruction without opcode in first nybble
			ALU <= NOP_u[iALUC_H:iALUC_L];
			busB <= NOP_u[iBUSB_H:iBUSB_L];
			T <= NOP_u[iT_H:iT_L];
			end
			
		MOVij_i[15:12]: begin			//MOV i,j
			ALU <= MOVij_u[iALUC_H:iALUC_L];
			busB <= MOVij_u[iBUSB_H:iBUSB_L];
			T <= MOVij_u[iT_H:iT_L];
			end
			
		ADDij_i[15:12]: begin			//ADD i,j
			ALU <= ADDij_u[iALUC_H:iALUC_L];
			busB <= ADDij_u[iBUSB_H:iBUSB_L];
			T <= ADDij_u[iT_H:iT_L];
			end	

		default: begin
			ALU <= NOP_u[iALUC_H:iALUC_L];
			busB <= NOP_u[iBUSB_H:iBUSB_L];
			T <= NOP_u[iT_H:iT_L];
			end

		endcase
	end

endmodule