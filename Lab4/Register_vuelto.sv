module Register_vuelto(input clk, rst,
					 input logic [3:0]D,
					 output logic  [3:0]Q,
					 output logic rst_R);
												
always_ff @ (negedge clk or posedge rst)

	if (rst) begin Q = 4'd0; rst_R = 1'b0; end
	else begin Q=D; rst_R = 1'b1; end

endmodule 