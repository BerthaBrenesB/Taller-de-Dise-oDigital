module experimento3 (
	input logic clk,clr,
	output logic a1,b1,c1,d1,e1,f1,g1,a2,b2,c2,d2,e2,f2,g2);
	
	reg [5:0] Q;
	
	contador_n_bits(clk, clr, Q[5:0]);
	logic [6:0] segments1;
	logic [3:0] entry1;
	assign a1 = segments1[6];
	assign b1 = segments1[5];
	assign c1 = segments1[4];
	assign d1 = segments1[3];
	assign e1 = segments1[2];
	assign f1 = segments1[1];
	assign g1 = segments1[0];
	assign entry1[3] = Q[3];
	assign entry1[2] = Q[2];
	assign entry1[1] = Q[1];
	assign entry1[0] = Q[0];
	sevenseg modulo1Seg(entry1,segments1);
	
	
	logic [6:0] segments2;
	logic [3:0] entry2;
	assign a2 = segments2[6];
	assign b2 = segments2[5];
	assign c2 = segments2[4];
	assign d2 = segments2[3];
	assign e2 = segments2[2];
	assign f2 = segments2[1];
	assign g2 = segments2[0];
	assign entry2[3] = 0;
	assign entry2[2] = 0;
	assign entry2[1] = Q[5];
	assign entry2[0] = Q[4];
	sevenseg modulo2Seg(entry2,segments2);
	
endmodule