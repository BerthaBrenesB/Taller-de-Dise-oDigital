module mantenimiento_tb();
	
	logic clk, reset, M;
	
	logic [7:0] status;
	
	mantenimiento machine(clk, reset, M, status);
	
	always begin
								
		#10
		
		clk = ~clk;
			
	end
	
	initial begin
	
		clk = 0;
		reset = 1;		
		
		#10
		
		reset = 0;
		M = 0;
		
		#10
		
		M = 1;
		
		#10
		
		M = 0;
		
		#4500
		
		reset = 1;
		
		#10
		
		reset = 0;
	
	end

endmodule
