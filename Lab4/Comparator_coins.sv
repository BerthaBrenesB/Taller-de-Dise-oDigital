module Comparator_coins (input logic [3:0] Reg, 
									input logic [4:0] precio, 
													output logic equal);
	assign equal = Reg >= precio;
	
endmodule 