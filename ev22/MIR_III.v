module MIR_3
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
reg [5:0] busB;
reg [5:0] busC;


assign MICROINST[iBUSA_H:iBUSA_L] = MOViw_u[iBUSA_H:iBUSA_L]; 	//Bus A (6 bits) -> For third nybble opcode instructions, bus A is not used	(its always the same)
assign MICROINST[iKMX:iKMX] = MOViw_u[iKMX:iKMX];				//KMx -> For third nybble opcode instructions, KMx is always 0
assign MICROINST[iM_H:iM_L] = MOViw_u[iM_H:iM_L]; 				//M -> For third nybble opcode instructions, M is always 0

//Creation of Microinstruction
assign MICROINST[iALUC_H:iALUC_L] = ALU;
assign MICROINST[iSH_H:iSH_L] = SH;
assign MICROINST[iBUSB_H:iBUSB_L] = busB;
assign MICROINST[iBUSC_H:iBUSC_L] = busC;
assign MICROINST[iT_H:iT_L] = T;


always @ (INST)
	begin
		OPCODE = INST[11:8];	//Opcode is third Nybble from instruction
		case (OPCODE)
		4'b0000: begin			//Instruction without opcode in third nybble
			ALU <= NOP_u[iALUC_H:iALUC_L];
			SH <= NOP_u[iSH_H:iSH_L];
			busB <= NOP_u[iBUSB_H:iBUSB_L];
			busC <= NOP_u[iBUSC_H:iBUSC_L];
			T <= NOP_u[iT_H:iT_L];
			end
			
		MOViw_i[11:8]: begin			//MOV i,w
			ALU <= MOViw_u[iALUC_H:iALUC_L];
			SH <= MOViw_u[iSH_H:iSH_L];
			busB <= MOViw_u[iBUSB_H:iBUSB_L];
			busC <= MOViw_u[iBUSC_H:iBUSC_L];
			T <= MOViw_u[iT_H:iT_L];
			end
			
		MOVwj_i[11:8]: begin			//MOV w,j
			ALU <= MOVwj_u[iALUC_H:iALUC_L];
			SH <= MOVwj_u[iSH_H:iSH_L];
			busB <= MOVwj_u[iBUSB_H:iBUSB_L];
			busC <= MOVwj_u[iBUSC_H:iBUSC_L];
			T <= MOVwj_u[iT_H:iT_L];
			end
			
		ANDwj_i[11:8]: begin			//AND w,j
			ALU <= ANDwj_u[iALUC_H:iALUC_L];
			SH <= ANDwj_u[iSH_H:iSH_L];
			busB <= ANDwj_u[iBUSB_H:iBUSB_L];
			busC <= ANDwj_u[iBUSC_H:iBUSC_L];
			T <= ANDwj_u[iT_H:iT_L];
			end
			
		ORwj_i[11:8]: begin				//OR w,j
			ALU <= ORwj_u[iALUC_H:iALUC_L];
			SH <= ORwj_u[iSH_H:iSH_L];
			busB <= ORwj_u[iBUSB_H:iBUSB_L];
			busC <= ORwj_u[iBUSC_H:iBUSC_L];
			T <= ORwj_u[iT_H:iT_L];
			end
			
		ADDwj_i[11:8]: begin			//ADD w,j
			ALU <= ADDwj_u[iALUC_H:iALUC_L];
			SH <= ADDwj_u[iSH_H:iSH_L];
			busB <= ADDwj_u[iBUSB_H:iBUSB_L];
			busC <= ADDwj_u[iBUSC_H:iBUSC_L];
			T <= ADDwj_u[iT_H:iT_L];
			end
			
		CPLi_i[11:8]: begin				//CPL i
			ALU <= CPLi_u[iALUC_H:iALUC_L];
			SH <= CPLi_u[iSH_H:iSH_L];
			busB <= CPLi_u[iBUSB_H:iBUSB_L];
			busC <= CPLi_u[iBUSC_H:iBUSC_L];
			T <= CPLi_u[iT_H:iT_L];
			end
			
		SHLi_i[11:8]: begin				//SHL i
			ALU <= SHLi_u[iALUC_H:iALUC_L];
			SH <= SHLi_u[iSH_H:iSH_L];
			busB <= SHLi_u[iBUSB_H:iBUSB_L];
			busC <= SHLi_u[iBUSC_H:iBUSC_L];
			T <= SHLi_u[iT_H:iT_L];
			end

		SHRi_i[11:8]: begin				//SHR i
			ALU <= SHRi_u[iALUC_H:iALUC_L];
			SH <= SHRi_u[iSH_H:iSH_L];
			busB <= SHRi_u[iBUSB_H:iBUSB_L];
			busC <= SHRi_u[iBUSC_H:iBUSC_L];
			T <= SHRi_u[iT_H:iT_L];
			end
			
		ASRi_i[11:8]: begin				//ASR i 
			ALU <= ASRi_u[iALUC_H:iALUC_L];
			SH <= ASRi_u[iSH_H:iSH_L];
			busB <= ASRi_u[iBUSB_H:iBUSB_L];
			busC <= ASRi_u[iBUSC_H:iBUSC_L];
			T <= ASRi_u[iT_H:iT_L];
			end
			
		INCi_i[11:8]: begin				//INC i
			ALU <= INCi_u[iALUC_H:iALUC_L];
			SH <= INCi_u[iSH_H:iSH_L];
			busB <= INCi_u[iBUSB_H:iBUSB_L];
			busC <= INCi_u[iBUSC_H:iBUSC_L];
			T <= INCi_u[iT_H:iT_L];
			end
			
		DECi_i[11:8]: begin				//DEC i
			ALU <= DECi_u[iALUC_H:iALUC_L];
			SH <= DECi_u[iSH_H:iSH_L];
			busB <= DECi_u[iBUSB_H:iBUSB_L];
			busC <= DECi_u[iBUSC_H:iBUSC_L];
			T <= DECi_u[iT_H:iT_L];
			end
			
		default: begin
			ALU <= NOP_u[iALUC_H:iALUC_L];
			SH <= NOP_u[iSH_H:iSH_L];
			busB <= NOP_u[iBUSB_H:iBUSB_L];
			busC <= NOP_u[iBUSC_H:iBUSC_L];
			T <= NOP_u[iT_H:iT_L];
			end

		endcase
	end

endmodule