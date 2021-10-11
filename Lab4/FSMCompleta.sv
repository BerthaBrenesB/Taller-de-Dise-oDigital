module FSMCompleta(input logic clk,rst,x,y,b,to,
							output logic a,d,c);
							

logic [1:0] state, next_state;

// estado actual
always_ff @(posedge clk or posedge rst)
	if(rst) state = 3'b000;
	else
		state = next_state;

// siguiente estado
always_comb
	case(state)
	3'b000: if(x) next_state = 3'b010; else begin if(y) next_state =3'b001; else if(b) next_state = 3'b011; else next_state = 3'b000; end
	3'b001: if(x) next_state = 3'b010; else begin if(y) next_state =3'b001; else if(b) next_state = 3'b011; else next_state = 3'b000; end
	3'b010: if(x) next_state = 3'b010; else begin if(y) next_state =3'b001; else if(b) next_state = 3'b011; else next_state = 3'b000; end
	3'b011: if(to) next_state = 3'b100; else next_state = 3'b000;
	3'b100: next_state = 3'b000;
	default: next_state = 3'b000;
	endcase
	
// outputs
assign a = (state == 3'b001);
assign d = (state == 3'b011);
assign c = (state == 3'b100);
endmodule