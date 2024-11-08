
/*****************************************************************************
 *
 * @file     register.v
 * 
 * @brief    Register with asynchronous reset, active high enable and positive edge clock
 * 
 * @author   Gian
 * 
 ******************************************************************************/

module register_asynret (
	d, 
	q, 
	clk, 
	nreset, 
	en
);


/*************************/
/* Parameter Definitions */
/*************************/
parameter BUS_WIDTH = 32;


/***************/
/* Input Ports */
/***************/
input wire[BUS_WIDTH-1:0] d;
input wire clk;
input wire nreset;
input wire en;


/****************/
/* Output Ports */
/****************/
output reg[BUS_WIDTH-1:0] q;



/***************/
/* Input Ports */
/***************/
always @ (posedge clk,negedge nreset) begin
	if(~nreset) begin
		q <= 0;
	end
	else if (clk && en) begin
		q <= d;
	end
end


endmodule
