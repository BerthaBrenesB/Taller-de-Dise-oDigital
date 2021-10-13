module Register(input clk, rst,
					 input logic [3:0]D,
					 output logic  [3:0]Q);
												
always_ff @ (negedge clk or posedge rst)
	if (rst) Q = 0;
	else
		Q=D;

endmodule 