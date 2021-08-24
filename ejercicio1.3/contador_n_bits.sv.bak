module contaor_n_bits #(
    parameter N=4)
	 (clk, clr, Q);
	 
	 input logic clk;
	 input logic clr;
	 output reg [N-1:0] Q;

always @(posedge clk or posedge clr)
    if(clr)Q<=0;        //Si se activa clr el siguiente valor de Q sera 0
    else Q<=Q+1;        //De lo contrario el siguiente valor de Q sera Q+1.

endmodule