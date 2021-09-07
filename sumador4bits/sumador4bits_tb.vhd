entity sumador4bits_tb is
end entity sumador4bits_tb;

architecture sim of sumador4bits_tb is
	signal A, B: bit_vector(3 downto 0); --input numbers
	signal S: bit_vector(3 downto 0); --sum output
	signal Cin, Cout: bit; -- carry i/o bits

begin
	--Instance of 4bit full adder
--	sumador : entity work.sumador4bits(behaviour) port map(
		A 		=> A,
		B 		=> B,
		Cin 	=> Cin,
		S 		=> S,
		Cout 	=> Cout);
		
	process is 
	constant period: time := 20 ns;
	begin
		A <= "0000";
		B <= "0000";
		wait for period;
		assert ((S = "0000") and (Cout = '0')) report "test failed for input combination 0000 0000" severity error;
		
		A <= "1010";
		B <= "1010";
		wait for period;
		assert ((S = "0100") and (Cout = '1')) report "test failed for input combination 1010 1010" severity error;
		
		A <= "1010";
		B <= "0101";
		wait for period;
		assert ((S = "1111") and (Cout = '0')) report "test failed for input combination 1010 0101" severity error;
		
		A <= "1100";
		B <= "0011";
		wait for period;
		assert ((S = "1111") and (Cout = '0')) report "test failed for input combination 1100 0011" severity error;
		
		A <= "0001";
		B <= "1111";
		wait for period;
		assert ((S = "0000") and (Cout = '1')) report "test failed for input combination 0001 1111" severity error;
		
		A <= "1111";
		B <= "1111";
		wait for period;
		assert ((S = "1110") and (Cout = '1')) report "test failed for input combination 1111 1111" severity error;
		
		A <= "1000";
		B <= "0001";
		wait for period;
		assert ((S = "1001") and (Cout = '0')) report "test failed for input combination 1000 0001" severity error;
		
		A <= "1001";
		B <= "1001";
		wait for period;
		assert ((S = "0010") and (Cout = '1')) report "test failed for input combination 1001 1001" severity error;
		
		if NOW > 180 ns then
			wait;
		end if;
	end process;

end architecture sim;