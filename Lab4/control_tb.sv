`timescale 10us/1us

module control_tb();

	logic clk, rst, agua, cafe, leche, chocolate, azucar;
	logic [2:0] sel, state;
	
	control preparacion(clk, rst, sel ,agua, cafe, leche, chocolate, azucar, state);
	
	always begin					
		#10
		clk = ~clk;
	end
	
	initial begin
		clk=0;
		rst=1;
		sel=0;
		
		#20
		
		rst=0;
		
		#40
		
		sel=3'b100;
		
		#100
		finish;
		
	end
						 
						 
endmodule