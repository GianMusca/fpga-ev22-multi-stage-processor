
/*****************************************************************************
 *
 * @file     incrementer.v
 * 
 * @brief    Control block for ifu
 * 
 * @author   Gian
 * 
 ******************************************************************************/

module incrmenter (
	in,
	out
);


/*************************/
/* Parameter Definitions */
/*************************/
parameter BUS_WIDTH = 32;


/***************/
/* Input Ports */
/***************/
input wire[BUS_WIDTH-1:0] in;

/****************/
/* Output Ports */
/****************/
output reg[BUS_WIDTH-1:0] out;



/************/
/* Function */
/************/
always @ (in) begin
	out <= in + 1;
end


endmodule