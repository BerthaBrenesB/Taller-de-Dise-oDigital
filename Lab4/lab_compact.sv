module lab_compact(input logic clk, rst,M1,M2,
						 input logic [2:0] sel,
						 output logic [3:0] Q,R,output logic to,output logic [2:0] bebida,output logic [1:0] state,
						 output logic agua, cafe, leche, chocolate, azucar, finish);
						 

		 
		 logic [1:0] sum;
		 //logic finish;
		 
		 FSMCompleta machine(clk,rst,M1,M2,to, finish, sel,bebida,sum,state);
		 Counter_coins contador(clk,rst,sum,Q);
		 Register registro(clk,rst,Q,R);
		 Comparator_coins comparador(R, sel,to,vuelto);
		 
		 control preparacion(clk, rst, bebida,agua, cafe, leche, chocolate, azucar, finish);
endmodule