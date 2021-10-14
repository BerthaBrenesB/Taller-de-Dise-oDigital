module lab_compact(input logic clk, rst,M1,M2, cancel,
						 input logic [3:0] cafes,
						 output logic [3:0] R, vuelto_perm,
						 output logic agua, cafe, leche, chocolate, azucar, off);
						 

		 
		 logic [1:0] moneda,segundos;
		 logic [2:0] bebida,sel;
		 logic [4:0] precio;
		 logic [3:0] resta,vuelto,total;
		 logic cout;
		 logic rst_R;
		 mux_cafes seleccion(cafes,sel);
		 mux_precio precios(sel, precio);
		 Comparator_coins comparador(R, precio ,to);
		 
		 method_substractor restador(R, ( cancel ? 4'b0000 : precio), 1'b0, resta, cout);
		 Register_vuelto reg_vuelto(clk, rst || (bebida==0 && cancel!=1) , resta, vuelto, rst_R);
		 Register_vuelto_permanente reg_vuelto_perm(clk, rst, cancel, sel, vuelto, vuelto_perm);
		 
		 FSMCompleta machine(clk,rst,M1,M2,to, off, sel,bebida,moneda,state);
		 Counter_coins contador(clk,rst || rst_R,moneda,total);
		 Register registro(clk, rst || rst_R, total,R);
		 
		 control preparacion(clk, rst, bebida,agua, cafe, leche, chocolate, azucar, off,segundos);
endmodule