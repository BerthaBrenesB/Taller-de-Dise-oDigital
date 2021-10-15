//`timescale 10us/1us

module FSMCompleta(input logic clk,rst,m1,m2,Rc, finish,
             input logic [2:0]Sel,
             output logic [2:0]boison,
             output logic [1:0]sum, output logic [2:0] state);
              

logic [2:0] next_state;

// estado actual
always_ff @(posedge clk or posedge rst)
  if(rst) state = 3'b000;
  else
    state = next_state;

// siguiente estado
always_comb
  case(state)
  3'b000: if(m1 || m2) next_state = 3'b001; else next_state = 3'b010;
  3'b001:  if(m1 || m2) next_state = 3'b001; else next_state = 3'b000;
  3'b010: if(Sel && finish) next_state = 3'b011; else next_state = 3'b000;
  3'b011: if(Rc) next_state = 3'b100; else next_state = 3'b000;
  3'b100: next_state = 3'b000;
  default: next_state = 3'b000;
  endcase
  
// outputs
assign sum[0] = (m1 && ~(state == 3'b001 && next_state == 3'b001));
assign sum[1] = (m2 && ~(state == 3'b001 && next_state == 3'b001));
assign boison = (state == 3'b100 ? Sel : 3'b000);
endmodule