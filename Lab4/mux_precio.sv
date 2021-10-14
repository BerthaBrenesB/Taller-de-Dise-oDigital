module mux_precio(input logic [2:0] sel,
						output logic [4:0] precio);


always_comb
	case(sel)
		3'b001: precio = 5'd1;
		3'b010: precio = 5'd4;
		3'b011: precio = 5'd5;
		3'b100: precio = 5'd7;
		default: precio = 5'b11111;
	endcase
						
endmodule
