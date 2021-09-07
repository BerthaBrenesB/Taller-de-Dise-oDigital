module method_left_shift#(parameter N=4)(A,Q);
	
	input [N-1:0] A;
	output [N-1:0] Q;
	
	assign Q = A << 1;
	
endmodule