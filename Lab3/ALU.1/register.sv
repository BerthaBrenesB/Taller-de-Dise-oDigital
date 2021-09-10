module register#(parameter N=4)(IN,OUT,CLK);
	
	input logic [N-1:0] IN;
	input logic CLK;
	output reg [N-1:0] OUT;
	
	always @(posedge CLK) begin
		OUT <= IN;
	end
	
endmodule
