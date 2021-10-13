module lab_compac_tb();

	logic clk, reset,M1,M2;
	logic [2:0] sel, bebida;
	logic [1:0] state;
	logic to;
	logic [3:0] Q, R;
lab_compact machine(clk, reset,M1,M2,sel,Q,R,to,bebida,state);
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
		M1 = 0;
		M2 = 0;
		sel = 3'b001;
		#30
		
		finish;
	
		
	end
endmodule