
/*****************************************************************************
 *
 * @file     adder.v
 * 
 * @brief    
 * 
 * @author   Gian
 * 
 ******************************************************************************/

module adder (
	a, 
	b, 
	sum 
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


/****************/
/* Output Ports */
/****************/
output wire[BUS_WIDTH-1:0] sum;


/***************/
/* Input Ports */
/***************/
assign sum = a+b;

endmodule