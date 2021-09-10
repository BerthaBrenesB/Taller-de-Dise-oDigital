module compactALU#(parameter N=4)(
	input [N-1:0] A,input [N-1:0] B,input [2:0] select,input cin, 
	output cout,zero,carry_flag,overflow,negative ,output logic a1,b1,c1,d1,e1,f1,g1);
	
	
	logic [N-1:0] Q;
	method_ALU #(256) alu(A,B, select,cin, Q,cout);
	logic [6:0] segments1;
	logic [3:0] entry1;
	assign a1 = segments1[6];
	assign b1 = segments1[5];
	assign c1 = segments1[4];
	assign d1 = segments1[3];
	assign e1 = segments1[2];
	assign f1 = segments1[1];
	assign g1 = segments1[0];
	assign entry1 = Q;
	sevenseg modulo1Seg(entry1,segments1);
	always @(*)
	begin
		if(select == 3 && cout ==1)
		// overflow en la suma
			overflow = 1;
			carry_flag = 1;
			
		if(select == 4 && cout ==1)
		// negative con resta
			negative = 1;
			carry_flag = 1;
			
		if(Q == 0)
		// resultado de operacion zero
			zero = 1;
	end
endmodule