module method_sub_tb #(
	parameter N=4);
	
	 reg a,b,bin;

 wire bout,d; 

  method_full_substractor instantiation(.a(a), .b(b), .bin(bin),.d(d), .bout(bout));

  initial

    begin

      $dumpfile("xyz.vcd");

      $dumpvars;

      a=4'b0000;

      b=4'b0000;
		bin = 0;

      #100 $finish;

    end

always #40 a=~a;

always #20 b=~b;
always #20 bin=~bin;

     always @(a or b)

     $monitor("A=%d B=%d Bin=%d D = %d Bout = %d", a, b, bin, d, bout); 

endmodule