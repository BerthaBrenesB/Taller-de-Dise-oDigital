module Mux_2_to_1 #(parameter N = 8) (input [N-1:0] A,B,
													input sel,
													output [N-1:0] C);
													
assign c = sel ? B : A;

endmodule
