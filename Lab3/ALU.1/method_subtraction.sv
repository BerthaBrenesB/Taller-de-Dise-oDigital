module method_subtraction#(parameter N=4)( a, b, cin, s, cout);

	input logic [N-1:0] a;
	input logic [N-1:0] b;
	input logic cin;
	output logic [N-1:0] s;
	output logic cout;
	logic p, g;
 
assign {cout, s} = (a-b)-cin;
endmodule