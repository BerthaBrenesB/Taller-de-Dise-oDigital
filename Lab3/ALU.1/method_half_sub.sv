module half_subtrador#(parameter N=4)(a,b,S,count);

	input a,b;
	output S;
	output count;
	wire x;
	assign S = a ^ b;
	assign x = ~a;
	assign count = x & b;
endmodule