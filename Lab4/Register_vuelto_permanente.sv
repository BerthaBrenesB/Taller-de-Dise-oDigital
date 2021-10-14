module Register_vuelto_permanente(input clk, rst, cancel, input logic [2:0] sel,
					 input logic [3:0]vuelto_in,
					 output logic  [3:0]vuelto_out);
												
always_ff @ (posedge clk or posedge rst)
	if (rst) vuelto_out = 4'd0;
	else if(vuelto_in!=0 && (cancel || sel != 3'b000))
		vuelto_out=vuelto_in;
	else if(~(cancel || sel != 3'b000))
		vuelto_out=4'd0;

endmodule 