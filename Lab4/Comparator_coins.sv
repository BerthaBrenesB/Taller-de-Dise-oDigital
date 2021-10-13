module Comparator_coins (input logic [3:0]Reg,input logic [2:0] sel, 
													output logic equal,vuelto);

always_comb
	case(sel)
	3'b000: equal = 0;
	3'b001: if(Reg >= 4'b1) begin equal = 1; end else equal = 0;
	3'b010: if(Reg >= 4'd4) begin equal = 1; end else equal = 0;
	3'b011: if(Reg >= 4'd5) begin equal = 1; end else equal = 0;
	3'b100: if(Reg >= 4'd7) begin equal = 1; end else equal = 0;
	default: equal = 0;
	endcase					
	
endmodule 