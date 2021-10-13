module Comparator_coins (input logic Reg,input logic [2:0] sel, 
													output logic equal,vuelto);

always_comb
	case(sel)
	3'b000: equal = 0;
	3'b001: if(Reg >= 300) begin equal = 1; vuelto = Reg -300; end  else equal = 0;
	3'b010: if(Reg >= 400) begin equal = 1; vuelto = Reg -400; end else equal = 0;
	3'b011: if(Reg >= 500) begin equal = 1; vuelto = Reg -500; end else equal = 0;
	3'b100: if(Reg >= 700) begin equal = 1; vuelto = Reg -700; end else equal = 0;
	default: equal = 0;
	endcase					
	
endmodule 