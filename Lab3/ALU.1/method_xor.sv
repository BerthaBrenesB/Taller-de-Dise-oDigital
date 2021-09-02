module method_xor#(parameter N=4)(A,B,Q);
	
	input logic [N-1:0] A;
	input logic [N-1:0] B;
	output logic Q;
	
	assign Q = A ^ B-;
	
endmodule
