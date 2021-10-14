`timescale 10us/1us

module lab_compac_tb();

	logic clk, reset,M1,M2, cancel;
	logic [2:0] sel, bebida;
	logic [1:0] state;
	logic to;
	logic [3:0] Q, R, vuelto, vuelto_perm;
	
	logic agua, cafe, leche, chocolate, azucar, off;
	
	lab_compact machine(clk, reset,M1,M2,cancel, sel,  Q,R,vuelto, vuelto_perm, to,bebida,state,agua, cafe, leche, chocolate, azucar, off);
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
		sel = 3'b001;
		
		#150
		//cancel=0;
		sel = 3'd0;
	
		
	end
endmodule