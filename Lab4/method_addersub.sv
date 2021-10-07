module method_addersub#(parameter N=4)(input logic [N-1:0] A, B, 
												input logic cin, select,
												output logic [N-1:0] S, 
												output logic cout);

	logic suma, resta, cout1, cout2;


	method_adder #(N) sumador (.a(A), .b(B), .cin(cin), .s(suma), .cout(cout1));
	method_substractor #(N) restador (.a(A), .b(B), .cin(cin), .s(resta), .cout(cout2));
	
	always_comb begin
	if(select == 0)
		{S,cout} = {suma, cout1};
	if(select == 1)
		{S,cout} = {resta, cout2};
	end

endmodule
