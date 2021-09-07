module method_right_shift#(parameter N=4)(A,Q);
	
	input logic [N-1:0] A;
	output logic [N-1:0] Q;
	
	assign Q = A >> 1;
	
endmodule
