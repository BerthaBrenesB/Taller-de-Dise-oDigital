module lab_compact(input logic clk, rst,M1,M2,
						 input logic [2:0] sel,
						 output logic agua, cafe, leche, chocolate, azucar);
						 

		 logic to,Q,R;
		 logic [2:0] bebida;
		 logic [1:0] sum;
		 FSMCompleta machine(clk,rst,x,y,to,sel,bebida,sum);
		 Counter_coins contador(clk,rst,sum,Q);
		 Register registro(clk,rst,Q,R);
		 Comparator_coins comparador(R, sel,to);
		 control preparacion(clk, rst,bebida,agua, cafe, leche, chocolate, azucar)
endmodule