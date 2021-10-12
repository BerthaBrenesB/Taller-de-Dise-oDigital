module Comparator_coins (input logic Reg,input logic [2:0] sel, 
													output logic equal);

always_comb
	case(sel)
	3'b000: equal = 0;
	3'b001: if(Reg == 300) equal = 1; else equal = 0;
	3'b010: if(Reg == 400) equal = 1; else equal = 0;
	3'b011: if(Reg == 500) equal = 1; else equal = 0;
	3'b100: if(Reg == 700) equal = 1; else equal = 0;
	default: equal = 0;
	endcase					

endmodule 