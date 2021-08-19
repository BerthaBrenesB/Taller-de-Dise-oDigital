module DecoBinarioBCD_tb();
  logic A0,A1,A2,A3,B0,B1,B2,B3,B4;
  
  conversorBinarioBCD modulo(A0,A1,A2,A3,B0,B1,B2,B3,B4);
  
  initial begin
	$display("Iniciando simulacion numero ");
	A3 = 0;
	A2 = 0;
	A1 = 0;
	A0 = 0;
	#5
	assert( B4 ===0) else $error("B4 0000 failed");
	assert( B3 ===0) else $error("B3 0000 failed");
	assert( B2 ===0) else $error("B2 0000 failed");
	assert( B1 ===0) else $error("B1 0000 failed");
	assert( B0 ===0) else $error("B0 0000 failed");
	
	#40
	$display("Numero 2");
	A3 = 0;
	A2 = 0;
	A1 = 1;
	A0 = 0;
	#5
	assert( B4 ===0) else $error("B4 0010 failed");
	assert( B3 ===0) else $error("B3 0010 failed");
	assert( B2 ===0) else $error("B2 0010 failed");
	assert( B1 ===1) else $error("B1 0010 failed");
	assert( B0 ===0) else $error("B0 0010 failed");
	
	#40
	$display("Numero 4");
	A3 = 0;
	A2 = 1;
	A1 = 0;
	A0 = 0;
	#5
	assert( B4 ===0) else $error("B4 0100 failed");
	assert( B3 ===0) else $error("B3 0100 failed");
	assert( B2 ===1) else $error("B2 0100 failed");
	assert( B1 ===0) else $error("B1 0100 failed");
	assert( B0 ===0) else $error("B0 0100 failed");
	
	#40
	$display("Numero 7");
	A3 = 0;
	A2 = 1;
	A1 = 1;
	A0 = 1;
	#5
	assert( B4 ===0) else $error("B4 0111 failed");
	assert( B3 ===0) else $error("B3 0111 failed");
	assert( B2 ===1) else $error("B2 0111 failed");
	assert( B1 ===1) else $error("B1 0111 failed");
	assert( B0 ===1) else $error("B0 0111 failed");
	
	#40
	$display("Numero 8");
	A3 = 1;
	A2 = 0;
	A1 = 0;
	A0 = 0;
	#5
	assert( B4 ===0) else $error("B4 1000 failed");
	assert( B3 ===1) else $error("B3 1000 failed");
	assert( B2 ===0) else $error("B2 1000 failed");
	assert( B1 ===0) else $error("B1 1000 failed");
	assert( B0 ===0) else $error("B0 1000 failed");
	
	#40
	$display("Numero 11");
	A3 = 1;
	A2 = 0;
	A1 = 1;
	A0 = 1;
	#5
	assert( B4 ===1) else $error("B4 1011 failed");
	assert( B3 ===0) else $error("B3 1011 failed");
	assert( B2 ===0) else $error("B2 1011 failed");
	assert( B1 ===0) else $error("B1 1011 failed");
	assert( B0 ===1) else $error("B0 1011 failed");
	
	#40
	$display("Numero 12");
	A3 = 1;
	A2 = 1;
	A1 = 0;
	A0 = 0;
	#5
	assert( B4 ===1) else $error("B4 1100 failed");
	assert( B3 ===0) else $error("B3 1100 failed");
	assert( B2 ===0) else $error("B2 1100 failed");
	assert( B1 ===1) else $error("B1 1100 failed");
	assert( B0 ===0) else $error("B0 1100 failed");
  end
endmodule 