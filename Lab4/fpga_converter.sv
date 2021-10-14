//`timescale 10us/1us

module fpga_converter(input logic clk, rst,M1,M2, cancel, //switch
						  input logic expreso,cafe_leche,cappu,mocca, // push bottom
						  output logic agua, cafe, leche, chocolate, azucar, off, //leds
						  output logic [3:0] sel,
						  output logic a1,b1,c1,d1,e1,f1,g1,a2,b2,c2,d2,e2,f2,g2);//display vuelto y suma
		logic [3:0] selS;
		logic [3:0] total,vuelto_perm;
		assign sel[0] = expreso;
		assign sel[1] = cafe_leche;
		assign sel[3] = mocca;
		assign sel[2] = cappu;
		
		lab_compact coffee_machine(clk, rst,M1,M2, cancel,sel, total, vuelto_perm, agua, cafe, leche, chocolate, azucar, off);
		
		logic [6:0] segments1;
		assign a1 = segments1[6];
		assign b1 = segments1[5];
		assign c1 = segments1[4];
		assign d1 = segments1[3];
		assign e1 = segments1[2];
		assign f1 = segments1[1];
		assign g1 = segments1[0];
		sevenseg modulo1Seg(total,segments1);
		
		logic [6:0] segments2;
		assign a2 = segments2[6];
		assign b2 = segments2[5];
		assign c2 = segments2[4];
		assign d2 = segments2[3];
		assign e2 = segments2[2];
		assign f2 = segments2[1];
		assign g2 = segments2[0];
		sevenseg modulo1Seg2(vuelto_perm,segments2);
		
		
endmodule