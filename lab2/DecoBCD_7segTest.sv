module DecoBCD_7seg(input logic A,B,C,D,
							output logic a,b,c,d,e,f,g);
logic RBO, LT,RBI,D,E;

	assign D = A & B;
	assign E = D & RBO;
endmodule;