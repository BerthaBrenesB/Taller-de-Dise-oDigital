module medicion_frecuencia#(parameter N=128)(input CLK,
	input [N-1:0] A,input [N-1:0] B,input [2:0] select,input cin, 
	output reg [N-1:0] R2cout,
	output reg [N-1:0] R2Q);
	
	
	reg [N-1:0] R1A;
	reg [N-1:0] R1B;
	reg [N-1:0] R1select;
	reg [N-1:0] R1cin;
	
	wire [N-1:0] Q;
	wire cout;
	
	method_ALU #(N)alu(R1A,R1B, R1select,R1cin, Q,cout);

	always @( posedge CLK)
	begin
		R1A <= A;
		R1B <= B;
		R1select <= select;
		R1cin <= cin;
	end
	
	always @( negedge CLK)
	begin
		R2Q <= Q;
		R2cout <= cout;
	end
endmodule