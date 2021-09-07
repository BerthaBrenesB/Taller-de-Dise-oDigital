module method_full_substractor#(parameter N=4)(a,b,bin,d,bout);

	input a,b;
	input bin;
	output d;
	output bout;
	wire q,r;
	wire p;
	
	half_subtrador u4(a,b,p,q);
	half_subtrador u5(p,bin,d,r);
	assign bout = q | r;
	
	
endmodule