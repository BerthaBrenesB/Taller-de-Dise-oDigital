module contador_n_bits_tb #(
	parameter N=4);
	
	logic clk, clr; 
	reg [N-1:0] Q;
	
	contador_n_bits contador(clk, clr, Q);
	always #2 clk = ~clk;
	initial begin
	$display("Iniiciando la simulacion");
	
	// 9
	clk = 0;
	clr = 0;
	#20

	// 10
	clk = 0;
	clr = 1;
	#20
	assert(Q==0) else $error("clear failed");
	
	// 11
	clk = 1;
	clr = 1;
	#20
	assert(Q==1) else $error("clock(1) failed");
	
	// 0
	clk = 0;
	clr = 1;
	#20
	
	// 1
	clk = 1;
	clr = 1;
	#20
	assert(Q==2) else $error("clock(2) failed");
	
	// 2
	clk = 0;
	clr = 1;
	#20
	
	// 3
	clk = 1;
	clr = 1;
	#20
	assert(Q==3) else $error("clock(3) failed");
	
	// 4
	clk = 0;
	clr = 1;
	#20
	
	// 5
	clk = 1;
	clr = 1;
	#20
	assert(Q==4) else $error("clock(4) failed");
	
	// 6
	clk = 0;
	clr = 1;
	#20
	
	// 7
	clk = 1;
	clr = 1;
	#20
	assert(Q==5) else $error("clock(5) failed");
	
	// 8
	clk = 0;
	clr = 1;
	#20
	
	// 9
	clk = 1;
	clr = 0;
	#20
	assert(Q==0) else $error("clock(0) failed");
	
	// 10
	clk = 0;
	clr = 1;
	#20
	
	// 11
	clk = 1;
	clr = 1;
	
	end
	
endmodule