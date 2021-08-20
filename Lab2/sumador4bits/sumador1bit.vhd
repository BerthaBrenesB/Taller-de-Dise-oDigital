entity sumador1bit is
   port( 
	--Inputs
		A, B, Cin : in bit;
	--Outputs
      S, Cout : out bit);
end entity sumador1bit;

architecture behaviour of sumador1bit is
begin
   S <= (A xor B) xor Cin;
   Cout <= (A and (B or Cin)) or (B and Cin);
end architecture behaviour;