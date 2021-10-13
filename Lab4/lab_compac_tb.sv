module lab_compac_tb();

	logic clk, reset,M1,M2;
	logic [2:0] sel;
	logic agua, cafe, leche, chocolate, azucar,vuelto;
	
	lab_compact machine(clk, reset,M1,M2,sel,agua, cafe, leche, chocolate, azucar,vuelto);
	always begin
								
		#10
		
		clk = ~clk;
			
	end
	
	initial begin
		clk = 0;
		reset = 1;		
		
		#10
		
		reset = 0;
		M1 = 1;
		M2 = 1;
		
		#20
		sel = 3'b001;
		
		#20
		reset = 1;
		
	end
endmodule