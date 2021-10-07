module FSM_Preparadora(input logic [2:0] sel, 
											input logic clk, rst,
											input logic [2:0] segundos,
											input logic [1:0] t_agua, t_cafe, t_leche, t_chocolate, t_azucar,
											output logic agua, cafe, leche, chocolate, azucar, rst_segundos, finish);
					
	
logic [1:0] state, next_state;

// estado actual
always_ff @(posedge clk or posedge rst)
	if(rst) state = 3'b000;
	else
		state = next_state;

// siguiente estado
always_comb
	case(state)
	3'b000: next_state = (sel == 3'b000 ? 3'b000 : 3'b001);
	3'b001: next_state = ( segundos == t_agua ? 3'b010 : 3'b001);
	3'b010: next_state = ( segundos == t_cafe ? 3'b011 : 3'b010);
	3'b011: next_state = ( segundos == t_leche ? 3'b100 : 3'b011);
	3'b100: next_state = ( segundos == t_chocolate ? 3'b101 : 3'b100);
	3'b101: next_state = ( segundos == t_azucar ? 3'b000 : 3'b101);
	default: next_state = 3'b000;
	endcase

// outputs

assign agua 		= (state == 3'b001);
assign cafe 		= (state == 3'b010);
assign leche 		= (state == 3'b011);
assign chocolate 	= (state == 3'b100);
assign azucar 		= (state == 3'b101);

assign rst_segundos = ~(state == next_state); // resetear counter de segundos cuando se cambia de estado
assign finish = (next_state == 3'b000) & (state == 3'b000); // está en estado de conclusión 

endmodule
