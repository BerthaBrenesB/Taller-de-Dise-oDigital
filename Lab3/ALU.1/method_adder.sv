module method_adder#(parameter N=4)(input [N-1:0] a,input [N-1:0] b, input cin, output [N-1:0] s, output cout);


	logic p, g;
	
	assign {cout,s} = a + b + cin;
endmodule