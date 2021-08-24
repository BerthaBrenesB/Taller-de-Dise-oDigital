module Deco7seg(input logic A,B,C,D,
					output logic a,b,c,d,e,f,g);
	logic Aa,RB0,Lt,RB1,Bb,Cc,Dd, Dd1,Cc1,Bb1,Aa1,A1,A2,A3,a1,b1,B1,B2,B3,C1,C2,c1,D1,D2,D3,d1,E1,e1,F1,F2,F3,f1,G1,G2,g1;
	
	assign RB1 = 1;
	assign Lt = 1;
	assign Aa = ~(A & ~Lt);
	assign Bb = ~(~Lt & B);
	assign Cc = ~(~Lt & C);
	assign Dd = ~D;
	assign Aa1 = ~(Aa & ~RB0);
	assign Bb1 = ~(Bb & ~RB0);
	assign Cc1 = ~(Cc & ~RB0);
	assign Dd1 = ~(Dd & ~RB0);
	assign A1 = Bb1 & Dd1;
	assign A2 = Aa & Cc1;
	assign A3 = Aa1 & Bb & Cc & Dd;
	assign a1 = A1 & A2 & A3;
	assign a = ~a1;
	assign B1 = Bb1 & Dd1;
	assign B2 = Aa1 & Bb & Cc1;
	assign B3 = Aa & Bb1 & Cc1;
	assign b1 = B1 & B2 & B3;
	assign b = ~b1;
	assign C1 = Cc1 & Dd1;
	assign C2 = Aa & Bb1 & Cc;
	assign c1 = C1 & C2;
	assign c = ~c1;
	assign D1 = Aa1 & Bb & Cc;
	assign D2 = Aa & Bb & Cc1;
	assign D3 = Aa1 & Bb1 & Cc1;
	assign d1 = D1 & D2 & D3;
	assign d = ~d1;
	assign E1 = Bb & Cc1;
	assign e1 = ~Aa1 & E1;
	assign e = ~e1;
	assign F1 = Aa1 & Bb1;
	assign F2 = Bb1 & Cc;
	assign F3 = Dd & Cc & Aa1;
	assign f1 = F1 & F2 & F3;
	assign f = ~f1;
	assign G1 = Aa1 & Bb1 & Cc1;
	assign G2 = ~Lt & Dd & Cc & Bb;
	assign g1 = G1 & G2;
	assign g = ~g1;
	assign RB0 = ~(~Lt & RB1 & Dd & Cc & Cc1 & Aa);
	
endmodule
