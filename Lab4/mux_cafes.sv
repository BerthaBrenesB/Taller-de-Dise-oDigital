module mux_cafes(input logic [3:0] cafes,
						output logic [2:0] sel);


always_comb
	case(cafes)
		4'b0001: sel = 3'b001;
		4'b0010: sel = 3'b010;
		4'b0011: sel = 3'b011;
		4'b0100: sel = 3'b100;
		default: sel = 3'b000;
	endcase
						
endmodule