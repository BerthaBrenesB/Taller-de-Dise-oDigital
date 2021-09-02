module method_adder#(parameter N=4)( a, b, cin, s, cout);

	input logic [N-1:0] a;
	input logic [N-1:0] b;
	input logic cin;
	output logic [N-1:0] s;
	output logic cout;
	logic p, g;
	
always_comb
begin
p = a ^ b; // blocking
g = a & b; // blocking
s = p ^ cin; // blocking
cout = g | (p & cin); // blocking
end
endmodule