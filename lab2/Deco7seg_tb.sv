module Deco7seg_tb();

	logic A,B,C,D,a,b,c,d,e,f,g;
	
	Deco7seg modulo(A,B,C,D,a,b,c,d,e,f,g);
	initial begin
	$display("Iniciando simulacion numero ");
	A= 0;
	B =0;
	C =0;
	D =0;
	#5
	assert( a ===1) else $error("B4 0000 failed");
	assert( b ===1) else $error("B3 0000 failed");
	assert( c ===1) else $error("B2 0000 failed");
	assert( d ===1) else $error("B1 0000 failed");
	assert( e ===1) else $error("B0 0000 failed");
	assert( f ===1) else $error("B1 0000 failed");
	assert( g ===1) else $error("B0 0000 failed");

	end
endmodule