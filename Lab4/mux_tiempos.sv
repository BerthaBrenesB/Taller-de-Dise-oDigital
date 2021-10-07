module mux_tiempos(input logic [2:0] sel
						output logic [1:0] t_agua, t_cafe, t_leche, t_chocolate, t_azucar)


always_comb
	case(sel)
		3'b001: begin t_agua = 2'd2; t_cafe = 2'd3; t_leche = 2'd0; t_chocolate = 2'd0; t_azucar = 2'd1; end
		3'b010: begin t_agua = 2'd2; t_cafe = 2'd2; t_leche = 2'd1; t_chocolate = 2'd0; t_azucar = 2'd1; end
		3'b011: begin t_agua = 2'd2; t_cafe = 2'd1; t_leche = 2'd2; t_chocolate = 2'd0; t_azucar = 2'd1; end
		3'b100: begin t_agua = 2'd1; t_cafe = 2'd1; t_leche = 2'd1; t_chocolate = 2'd2; t_azucar = 2'd1; end
		default: begin t_agua = 2'd0; t_cafe = 2'd0; t_leche = 2'd0; t_chocolate = 2'd0; t_azucar = 2'd0; end
	endcase
						
endmodule
