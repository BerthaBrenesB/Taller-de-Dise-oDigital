module Register(input clk, rst,
					 input D,
					 output logic Q);
												
always_ff @ (negedge clk or posedge rst)
	if (rst) Q = 0;
	else
		Q=D;

endmodule 