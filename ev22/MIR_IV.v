module MIR_4
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
reg [1:0] SH;
reg [6:0] T;
reg [5:0] busA;
reg [5:0] busB;
reg [5:0] busC;


//Constant variables for fourth nybble opcode instructions
assign MICROINST[iKMX:iKMX] = MOViw_u[iKMX:iKMX];		//KMx -> For fourth nybble opcode instructions, KMx is always 0
assign MICROINST[iM_H:iM_L] = MOViw_u[iM_H:iM_L]; 		//M -> For fourth nybble opcode instructions, M is always 0

//Creation of Microinstruction
assign MICROINST[iALUC_H:iALUC_L] = ALU;
assign MICROINST[iSH_H:iSH_L] = SH;
assign MICROINST[iBUSA_H:iBUSA_L] = busA;
assign MICROINST[iBUSB_H:iBUSB_L] = busB;
assign MICROINST[iBUSC_H:iBUSC_L] = busC;
assign MICROINST[iT_H:iT_L] = T;


always @ (INST)
	begin
		OPCODE = INST[7:4];								//Opcode is fourth Nybble from instruction
		case (OPCODE)
		4'b0000: begin			//Instruction without opcode in fourth nybble
			ALU  <= NOP_u[iALUC_H:iALUC_L];
			SH 	 <= NOP_u[iSH_H:iSH_L];
			busA <= NOP_u[iBUSA_H:iBUSA_L];
			busB <= NOP_u[iBUSB_H:iBUSB_L];
			busC <= NOP_u[iBUSC_H:iBUSC_L];
			T 	 <= NOP_u[iT_H:iT_L];
			end
			
		CLC_i[7:4]: begin			//CLC 
			ALU  <= CLC_u[iALUC_H:iALUC_L];
			SH 	 <= CLC_u[iSH_H:iSH_L];
			busA <= CLC_u[iBUSA_H:iBUSA_L];
			busB <= CLC_u[iBUSB_H:iBUSB_L];
			busC <= CLC_u[iBUSC_H:iBUSC_L];
			T 	 <= CLC_u[iT_H:iT_L];
			end
			
		SEC_i[7:4]: begin			//SEC 
			ALU  <= SEC_u[iALUC_H:iALUC_L];
			SH 	 <= SEC_u[iSH_H:iSH_L];
			busA <= SEC_u[iBUSA_H:iBUSA_L];
			busB <= SEC_u[iBUSB_H:iBUSB_L];
			busC <= SEC_u[iBUSC_H:iBUSC_L];
			T 	 <= SEC_u[iT_H:iT_L];
			end
			
		CPLw_i[7:4]: begin			//CPL w
			ALU  <= CPLw_u[iALUC_H:iALUC_L];
			SH 	 <= CPLw_u[iSH_H:iSH_L];
			busA <= CPLw_u[iBUSA_H:iBUSA_L];
			busB <= CPLw_u[iBUSB_H:iBUSB_L];
			busC <= CPLw_u[iBUSC_H:iBUSC_L];
			T 	 <= CPLw_u[iT_H:iT_L];
			end
			
		SHLw_i[7:4]: begin			//SHL w
			ALU  <= SHLw_u[iALUC_H:iALUC_L];
			SH 	 <= SHLw_u[iSH_H:iSH_L];
			busA <= SHLw_u[iBUSA_H:iBUSA_L];
			busB <= SHLw_u[iBUSB_H:iBUSB_L];
			busC <= SHLw_u[iBUSC_H:iBUSC_L];
			T 	 <= SHLw_u[iT_H:iT_L];
			end
			
		SHRw_i[7:4]: begin			//SHR w
			ALU  <= SHRw_u[iALUC_H:iALUC_L];
			SH 	 <= SHRw_u[iSH_H:iSH_L];
			busA <= SHRw_u[iBUSA_H:iBUSA_L];
			busB <= SHRw_u[iBUSB_H:iBUSB_L];
			busC <= SHRw_u[iBUSC_H:iBUSC_L];
			T 	 <= SHRw_u[iT_H:iT_L];
			end
			
		ASRw_i[7:4]: begin			//ASR w
			ALU  <= ASRw_u[iALUC_H:iALUC_L];
			SH 	 <= ASRw_u[iSH_H:iSH_L];
			busA <= ASRw_u[iBUSA_H:iBUSA_L];
			busB <= ASRw_u[iBUSB_H:iBUSB_L];
			busC <= ASRw_u[iBUSC_H:iBUSC_L];
			T 	 <= ASRw_u[iT_H:iT_L];
			end
			
		INCw_i[7:4]: begin			//INC w
			ALU  <= INCw_u[iALUC_H:iALUC_L];
			SH 	 <= INCw_u[iSH_H:iSH_L];
			busA <= INCw_u[iBUSA_H:iBUSA_L];
			busB <= INCw_u[iBUSB_H:iBUSB_L];
			busC <= INCw_u[iBUSC_H:iBUSC_L];
			T 	 <= INCw_u[iT_H:iT_L];
			end

		DECw_i[7:4]: begin			//DEC w
			ALU  <= DECw_u[iALUC_H:iALUC_L];
			SH 	 <= DECw_u[iSH_H:iSH_L];
			busA <= DECw_u[iBUSA_H:iBUSA_L];
			busB <= DECw_u[iBUSB_H:iBUSB_L];
			busC <= DECw_u[iBUSC_H:iBUSC_L];
			T 	 <= DECw_u[iT_H:iT_L];
			end
			
		NOP_i[7:4]: begin			//NOP 
			ALU  <= NOP_u[iALUC_H:iALUC_L];
			SH 	 <= NOP_u[iSH_H:iSH_L];
			busA <= NOP_u[iBUSA_H:iBUSA_L];
			busB <= NOP_u[iBUSB_H:iBUSB_L];
			busC <= NOP_u[iBUSC_H:iBUSC_L];
			T 	 <= NOP_u[iT_H:iT_L];
			end
			
		default: begin
			ALU  <= NOP_u[iALUC_H:iALUC_L];
			SH 	 <= NOP_u[iSH_H:iSH_L];
			busA <= NOP_u[iBUSA_H:iBUSA_L];
			busB <= NOP_u[iBUSB_H:iBUSB_L];
			busC <= NOP_u[iBUSC_H:iBUSC_L];
			T 	 <= NOP_u[iT_H:iT_L];
			end

		endcase
	end

endmodule