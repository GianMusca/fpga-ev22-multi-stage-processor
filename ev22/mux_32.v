
/*****************************************************************************
 *
 * @file     mux.v
 * 
 * @brief    Simple multiplexer 2:1
 * 
 * @author   Gian
 * 
 ******************************************************************************/

module mux_32 (
	a, 
	b, 
	sel,
	out
);


/*************************/
/* Parameter Definitions */
/*************************/
parameter BUS_WIDTH = 32;


/***************/
/* Input Ports */
/***************/
input wire[BUS_WIDTH-1:0] a;
input wire[BUS_WIDTH-1:0] b;
input wire sel;


/****************/
/* Output Ports */
/****************/
output reg[BUS_WIDTH-1:0] out;


/***************/
/* Input Ports */
/***************/
//assign out = (sel)?b:a;
always @(a or b or sel)begin
	if (sel)
		out = b;
	else
		out = a;
end

endmodule