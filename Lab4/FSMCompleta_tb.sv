module FSMCompleta_tb();
	logic clk, reset,x,y,to;
	logic [2:0] sel;
	logic [1:0] sum;
	logic [2:0] bebida;
	
	FSMCompleta machine(clk,reset,x,y,to,sel,bebida,sum);
	always begin
								
		#10
		
		clk = ~clk;
			
	end
	
	initial begin
	
		clk = 0;
		reset = 1;		
		
		#10
		
		reset = 0;
		x = 1;
		y = 0;
		
		#10
		
		y = 1;
		x = 0;
		
		#10
		
		x = 1;
		y = 1;
		
		#20
		sel = 3'b001;
		
		#20
		to = 1;
		
		
		#10
		
		reset = 0;
	
	end
						 
						 
endmodule