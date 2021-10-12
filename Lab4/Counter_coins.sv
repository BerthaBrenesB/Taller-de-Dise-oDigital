module Counter_coins (input clk, rst, input logic [1:0]M,
												output logic Q);
												
always_ff @ (negedge clk or posedge rst)
	if (rst) Q = 0;
	else begin
		if (M[0]) Q = Q + 100;
		else if (M[1]) Q = Q + 500;
	end
endmodule 