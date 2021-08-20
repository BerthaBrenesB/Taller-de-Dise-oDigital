entity sumador4bits is
   port( 
	-- Inputs
		A, B : in bit_vector(3 downto 0);
		Cin : in bit;
		
	--Outputs
      S : out bit_vector(3 downto 0);
		Cout : out bit);
end entity sumador4bits;
 
architecture behaviour of sumador4bits is
component sumador1bit is
  port( A, B, Cin : in bit;
        S, Cout : out bit);
end component sumador1bit;

for all: sumador1bit use entity
	work.sumador1bit(behaviour);

signal C1, C2, C3, C4: bit; -- carry bits from the adders
 
begin
S0: sumador1bit port map(A(0),B(0),Cin, S(0),C1);
S1: sumador1bit port map(A(1),B(1),C1, S(1),C2);
S2: sumador1bit port map(A(2),B(2),C2, S(2),C3);
S3: sumador1bit port map(A(3),B(3),C3, S(3),C4);

Cout <= C4;

end architecture behaviour;