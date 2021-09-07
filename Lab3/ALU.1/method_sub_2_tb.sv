module method_sub_2_tb #(
	parameter N=4);
	reg [N-1:0] A;
	reg [N-1:0] B;
	reg [N-1:0] S;
	reg cin, cout;
	
	 method_subtraction sub(A,B,cin,S,cout);
	
	initial begin
	$display("Iniiciando la simulacion");
	// 9
	A = 4'b0000;
	B = 4'b0010;
	cin = 0;
	#20
	assert (S == 0) else  $error("test failed for input combination 0000 0000");
	
	A = 4'b0010;
	B = 4'b0000;
	cin = 0;
	#20
	assert (S == 4) else  $error("test failed for input combination 1010 1010");
	A = 4'b0011;
	B = 4'b0001;
	cin = 0;
	#20
	assert (S == 4) else  $error("test failed for input combination 1010 1010");
	
	end
endmodule