module Counter_coins (input clk, rst, input logic [1:0]M,
												output logic [3:0]Q);
												
always_ff @ (posedge clk or posedge rst)
	if (rst) Q = 0;
	else begin
		if (M[0]) Q = Q + 1;
		if (M[1]) Q = Q + 5;
		if (M[0] && M[1]) Q = Q +6;
	end
endmodule 