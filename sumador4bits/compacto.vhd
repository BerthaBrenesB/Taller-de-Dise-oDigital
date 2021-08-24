library IEEE; use IEEE.STD_LOGIC_1164.all;
entity compacto is
   port( 
  -- Inputs
    A, B : in bit_vector(3 downto 0);
    Cin : in bit;
    
  --Outputs
      segments1: out STD_LOGIC_VECTOR(6 downto 0);
    segments2 : out STD_LOGIC_VECTOR(6 downto 0));  
end entity compacto;
 
architecture behaviour of compacto is

signal S: bit_vector(3 downto 0); -- resultado suma
signal Cout: bit;
signal data2: STD_LOGIC_VECTOR(3 downto 0);
 
begin

  sumador: entity work.sumador4bits(behaviour) port map(
    A => A,
    B => B,
    Cin => Cin,
    S => S,
    Cout => Cout);
    
  data2 <= (3 downto 1 => '0', others => to_stdulogic(Cout)); 
  
  deco1: entity work.seven_seg_decoder(synth) port map(
    data => to_stdlogicvector(S),
    segments => segments1);
    
  deco2: entity work.seven_seg_decoder(synth) port map(
    data => data2,
    segments => segments2);

end architecture behaviour;