module contador_n_bits #(
    parameter N=6)
	 (clk, clr, Q);
	 
	 input logic clk;
	 input logic clr;
	 output reg [N-1:0] Q;

always @(posedge clk or negedge clr)
    if(!clr)Q<=0;        //Si se activa clr el siguiente valor de Q sera 0
	 else if (Q==2**N-1) Q<=0;
    else Q<=Q+1;        //De lo contrario el siguiente valor de Q sera Q+1.

endmodule