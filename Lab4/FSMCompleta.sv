`timescale 10us/1us

module FSMCompleta(input logic clk,rst,m1,m2,Rc,
						 input logic [2:0]Sel,
						 output logic [2:0]boison,
						 output logic [1:0]sum,state);
							

logic [1:0] next_state;

// estado actual
always_ff @(posedge clk or posedge rst)
	if(rst) state = 2'b00;
	else
		state = next_state;

// siguiente estado
always_comb
	case(state)
	2'b00: if(m1 || m2) next_state = 2'b00; else next_state = 2'b01;
	2'b01: if(Sel) next_state = 2'b10; else next_state = 2'b00;
	2'b10: if(Rc) next_state = 2'b11; else next_state = 2'b00;
	2'b11: next_state = 2'b00;
	default: next_state = 2'b00;
	endcase
	
// outputs
assign sum[0] = m1;
assign sum[1] = m2;
assign boison = (state == 2'b11 ? Sel : 3'b00);

endmodule