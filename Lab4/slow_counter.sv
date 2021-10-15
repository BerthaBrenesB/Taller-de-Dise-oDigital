module slow_counter#(parameter clk_half_period=10, parameter N=2) //clk_half_period asume un timescale de nano segundos
							(input logic clk, rst, enable,
							 output logic [N-1:0] Q);
	
localparam cycles = 500_000_000/clk_half_period; //500_000_000/clk_half_period;

reg [25:0] accum = 0;

always @(posedge clk) begin
	 if (rst) Q = 0;
	 else begin
		 accum <= (accum == 0 ? cycles : accum) - 1;
		 if (accum == 0)
				if (enable) Q = Q + 1'b1;
	end
end

endmodule
										
