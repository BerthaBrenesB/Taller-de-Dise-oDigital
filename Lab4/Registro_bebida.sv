module Registro_bebida(input clk, rst, finish,
					 input logic [2:0]sel,
					 output logic  [2:0]bebida);
												
always_ff @ (posedge clk or posedge rst)
	if (rst) bebida = 3'b000;
	else if (finish)
		bebida=sel;
endmodule 