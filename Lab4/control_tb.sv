`timescale 10us/1us

module control_tb();

	logic clk, rst, agua, cafe, leche, chocolate, azucar, finish;
	logic [2:0] sel;
	
	control preparacion(clk, rst, sel ,agua, cafe, leche, chocolate, azucar, finish);
	
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
		
		sel=3'b001;
		
		#40
		sel=3'b000;
		
	end
						 
						 
endmodule