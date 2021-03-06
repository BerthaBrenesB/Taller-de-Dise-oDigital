module conversorBinarioBCD(input logic A0,A1,A2,A3,
									output logic B0,B1,B2,B3,B4);
									
	logic a3,a2,a1,p,d,f,g;
	
	assign a1 = ~A1;
	assign a2 = ~A2;
	assign a3 = ~A3;
	
	assign p = a3 & A1;
	assign d = A3 & A2 & a1;
	assign f = A1 | a3;
	assign g = A2 | A1;
	
	assign B0 = A0;
	assign B1 = p | d;
	assign B2 = f & A2;
	assign B3 = A3 & a2 & a1;
	assign B4 = A3 & g;
endmodule