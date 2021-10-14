//`timescale 10us/1us

module lab_compac_tb();

	logic clk, reset,M1,M2, cancel;
	logic [3:0] sel;
	logic [2:0] out_cafe;
	logic [1:0] state,segundos;
	logic to;
	logic [3:0] Q, R, vuelto, vuelto_perm;
	logic agua, cafe, leche, chocolate, azucar, off;
	
	lab_compact machine(clk, reset,M1,M2,cancel, sel,R, vuelto_perm, agua, cafe, leche, chocolate, azucar, off,segundos);
	always begin
								
		#10
		
		clk = ~clk;
			
	end
	
	initial begin
		clk = 0;
		reset = 1;		
		cancel = 0;
		
		#10
		
		reset = 0;
		M1 = 1;
		M2 = 1;
		
		#20
		M1 = 0;
		M2 = 0;
		
		#40
		//cancel = 1;
		sel = 4'b0001;
		
		#150
		//cancel=0;
		sel = 4'd0;
	
		
	end
endmodule