module method_ALU#(parameter N=4)(
	input [N-1:0] A,input [N-1:0] B,input [2:0] select,input cin, 
	output [N-1:0] S, output cout);
	wire [N - 1 : 0] diff;
   wire [N - 1 : 0] sum;
	wire [N - 1 : 0] Q1;
	wire [N - 1 : 0] Q2;
   wire co;
	wire co1;
	wire co2;
   wire co3;
	wire co4;
	method_and #(N)a1(.A(A), .B(B), .Q(co));
	method_or #(N)a2(.A(A), .B(B), .Q(co1));
	method_xor #(N)a3(.A(A), .B(B), .Q(co2));
	method_adder #(N)a4(.a(A), .b(B), .cin(cin), .s(sum), .cout(co3));
	method_subtraction #(N)a5(.a(A), .b(B), .cin(cin), .s(diff), .cout(co4));
	method_right_shift #(N)a6(.A(A), .Q(Q1));
	method_left_shift #(N)a7(.A(A), .Q(Q2));
	always @(*)
	begin
	if(select == 0)
		S = co;
	if(select == 1)
		S = co1;
	if(select == 2)
		S = co2;
	if(select == 3)
		{S,cout} = {sum, co3};
	if(select == 4)
		{S,cout} = {diff, co4};
	if(select == 5)
		S = Q1;
	if(select == 6)
		S = Q2;
	if(select == 7)
		{S,cout} = {sum, co3};

	end

endmodule