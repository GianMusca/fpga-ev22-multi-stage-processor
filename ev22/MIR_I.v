module MIR_1
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
reg KMx;
reg [1:0] M;
reg [6:0] T;
reg [5:0] busB;
reg [5:0] busC;


assign MICROINST[iBUSA_H:iBUSA_L] = BSR_u[iBUSA_H:iBUSA_L]; //Bus A (6 bits) -> For first nybble opcode instructions, bus A is not used	(its always the same)
assign MICROINST[iSH_H:iSH_L] = BSR_u[iSH_H:  iSH_L  ]; 	//Shifter -> For first nybble opcode instructions, shifter is always 0


//Creation of Microinstruction
assign MICROINST[iALUC_H:iALUC_L] = ALU;
assign MICROINST[iKMX:iKMX] = KMx;
assign MICROINST[iM_H:iM_L] = M;
assign MICROINST[iBUSB_H:iBUSB_L] = busB;
assign MICROINST[iBUSC_H:iBUSC_L] = busC;
assign MICROINST[iT_H:iT_L] = T;


always @ (INST)
	begin
		OPCODE = INST[19:16]; 	//Opcode is first Nybble from instruction
		case (OPCODE)
		4'b0000: begin			//Instruction without opcode in first nybble
			ALU <= NOP_u[iALUC_H:iALUC_L];
			KMx <= NOP_u[iKMX];
			M <= NOP_u[iM_H:iM_L];
			busB <= NOP_u[iBUSB_H:iBUSB_L];
			busC <= NOP_u[iBUSC_H:iBUSC_L];
			T <= NOP_u[iT_H:iT_L];
			end
			
		BSR_i[19:16]: begin			//BSR S
			ALU <= BSR_u[iALUC_H:iALUC_L];
			KMx <= BSR_u[iKMX];
			M <= BSR_u[iM_H:iM_L];
			busB <= BSR_u[iBUSB_H:iBUSB_L];
			busC <= BSR_u[iBUSC_H:iBUSC_L];
			T <= BSR_u[iT_H:iT_L];
			end
			
		MOVMw_i[19:16]: begin			//MOV M,w
			ALU <= MOVMw_u[iALUC_H:iALUC_L];
			KMx <= MOVMw_u[iKMX];
			M <= MOVMw_u[iM_H:iM_L];
			busB <= MOVMw_u[iBUSB_H:iBUSB_L];
			busC <= MOVMw_u[iBUSC_H:iBUSC_L];
			T <= MOVMw_u[iT_H:iT_L];
			end
			
		MOVwM_i[19:16]: begin			//MOM w,M
			ALU <= MOVwM_u[iALUC_H:iALUC_L];
			KMx <= MOVwM_u[iKMX];
			M <= MOVwM_u[iM_H:iM_L];
			busB <= MOVwM_u[iBUSB_H:iBUSB_L];
			busC <= MOVwM_u[iBUSC_H:iBUSC_L];
			T <= MOVwM_u[iT_H:iT_L];
			end
			
		MOVwK_i[19:16]: begin			//MOK w,#K
			ALU <= MOVwK_u[iALUC_H:iALUC_L];
			KMx <= MOVwK_u[iKMX];
			M <= MOVwK_u[iM_H:iM_L];
			busB <= MOVwK_u[iBUSB_H:iBUSB_L];
			busC <= MOVwK_u[iBUSC_H:iBUSC_L];
			T <= MOVwK_u[iT_H:iT_L];
			end
			
		ANDwK_i[19:16]: begin			//AND w,#K 
			ALU <= ANDwK_u[iALUC_H:iALUC_L];
			KMx <= ANDwK_u[iKMX];
			M <= ANDwK_u[iM_H:iM_L];
			busB <= ANDwK_u[iBUSB_H:iBUSB_L];
			busC <= ANDwK_u[iBUSC_H:iBUSC_L];
			T <= ANDwK_u[iT_H:iT_L];
			end
			
		ORwK_i[19:16]: begin			//OR w,#K
			ALU <= ORwK_u[iALUC_H:iALUC_L];
			KMx <= ORwK_u[iKMX];
			M <= ORwK_u[iM_H:iM_L];
			busB <= ORwK_u[iBUSB_H:iBUSB_L];
			busC <= ORwK_u[iBUSC_H:iBUSC_L];
			T <= ORwK_u[iT_H:iT_L];
			end
			
		ADDwK_i[19:16]: begin			//ADD w,#K
			ALU <= ADDwK_u[iALUC_H:iALUC_L];
			KMx <= ADDwK_u[iKMX];
			M <= ADDwK_u[iM_H:iM_L];
			busB <= ADDwK_u[iBUSB_H:iBUSB_L];
			busC <= ADDwK_u[iBUSC_H:iBUSC_L];
			T <= ADDwK_u[iT_H:iT_L];
			end

		RET_i[19:16]: begin			//RET
			ALU <= RET_u[iALUC_H:iALUC_L];
			KMx <= RET_u[iKMX];
			M <= RET_u[iM_H:iM_L];
			busB <= RET_u[iBUSB_H:iBUSB_L];
			busC <= RET_u[iBUSC_H:iBUSC_L];
			T <= RET_u[iT_H:iT_L];
			end
			
		JMP_i[19:16]: begin			//JMP X 
			ALU <= JMP_u[iALUC_H:iALUC_L];
			KMx <= JMP_u[iKMX];
			M <= JMP_u[iM_H:iM_L];
			busB <= JMP_u[iBUSB_H:iBUSB_L];
			busC <= JMP_u[iBUSC_H:iBUSC_L];
			T <= JMP_u[iT_H:iT_L];
			end
			
		JZE_i[19:16]: begin			//JZE X
			ALU <= JZE_u[iALUC_H:iALUC_L];
			KMx <= JZE_u[iKMX];
			M <= JZE_u[iM_H:iM_L];
			busB <= JZE_u[iBUSB_H:iBUSB_L];
			busC <= JZE_u[iBUSC_H:iBUSC_L];
			T <= JZE_u[iT_H:iT_L];
			end
			
		JNE_i[19:16]: begin			//JNE X 
			ALU <= JNE_u[iALUC_H:iALUC_L];
			KMx <= JNE_u[iKMX];
			M <= JNE_u[iM_H:iM_L];
			busB <= JNE_u[iBUSB_H:iBUSB_L];
			busC <= JNE_u[iBUSC_H:iBUSC_L];
			T <= JNE_u[iT_H:iT_L];
			end
			
		JCY_i[19:16]: begin			//JCY X 
			ALU <= JCY_u[iALUC_H:iALUC_L];
			KMx <= JCY_u[iKMX];
			M <= JCY_u[iM_H:iM_L];
			busB <= JCY_u[iBUSB_H:iBUSB_L];
			busC <= JCY_u[iBUSC_H:iBUSC_L];
			T <= JCY_u[iT_H:iT_L];
			end

		default: begin
			ALU <= NOP_u[iALUC_H:iALUC_L];
			KMx <= NOP_u[iKMX];
			M <= NOP_u[iM_H:iM_L];
			busB <= NOP_u[iBUSB_H:iBUSB_L];
			busC <= NOP_u[iBUSC_H:iBUSC_L];
			T <= NOP_u[iT_H:iT_L];
			end

		endcase
	end

endmodule