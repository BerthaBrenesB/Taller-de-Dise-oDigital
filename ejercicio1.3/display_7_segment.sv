module display_7_segment(input reg [5:0] S,
							    output logic A, B, C, D, E, F, G, A_1, B_1, C_1, D_1, E_1, F_1, G_1);
								 
	always_comb

		unique case(S)
		
			////////////////////// 00 -> 09
		
			// Case 0
			6'b000000 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 1; // 0 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 1; // 0 unidades
									
				end
			
			// Case 1
			6'b000001 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 1; // 0 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 1 unidades
				
				end
			
			// Case 2
			6'b000010 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 1; // 0 decenas
					A = 0; B = 0; C = 1; D = 0; E = 0; F = 1; G = 0; // 2 unidades
				
				end
			
			// Case 3
			6'b000011 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 1; // 0 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 1; G = 0; // 3 unidades
				
				end
			
			// Case 4
			6'b000100 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 1; // 0 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 0; G = 0; // 4 unidades
				
				end
			
			// Case 5
			6'b000101 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 1; // 0 decenas
					A = 0; B = 1; C = 0; D = 0; E = 1; F = 0; G = 0; // 5 unidades
				
				end
			
			// Case 6
			6'b000110 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 1; // 0 decenas
					A = 0; B = 1; C = 0; D = 0; E = 0; F = 0; G = 0; // 6 unidades
				
				end
			
			// Case 7
			6'b000111 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 1; // 0 decenas
					A = 0; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 7 unidades
				
				end
			
			// Case 8
			6'b001000 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 1; // 0 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 0; // 8 unidades
				
				end
			
			// Case 9
			6'b001001 : 
			
				begin
					
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 1; // 0 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 0; G = 0; // 9 unidades
				
				end
			
			
			////////////////////// 10 -> 19
			
			// Case 10
			6'b001010 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 1; G_1 = 1; // 1 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 1; // 0 unidades
									
				end
			
			// Case 11
			6'b001011 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 1; G_1 = 1; // 1 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 1 unidades
				
				end
			
			// Case 12
			6'b001100 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 1; G_1 = 1; // 1 decenas
					A = 0; B = 0; C = 1; D = 0; E = 0; F = 1; G = 0; // 2 unidades
				
				end
			
			// Case 13
			6'b001101 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 1; G_1 = 1; // 1 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 1; G = 0; // 3 unidades
				
				end
			
			// Case 14
			6'b001110 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 1; G_1 = 1; // 1 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 0; G = 0; // 4 unidades
				
				end
			
			// Case 15
			6'b001111 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 1; G_1 = 1; // 1 decenas
					A = 0; B = 1; C = 0; D = 0; E = 1; F = 0; G = 0; // 5 unidades
				
				end
			
			// Case 16
			6'b010000 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 1; G_1 = 1; // 1 decenas
					A = 0; B = 1; C = 0; D = 0; E = 0; F = 0; G = 0; // 6 unidades
				
				end
			
			// Case 17
			6'b010001 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 1; G_1 = 1; // 1 decenas
					A = 0; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 7 unidades
				
				end
			
			// Case 18
			6'b010010 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 1; G_1 = 1; // 1 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 0; // 8 unidades
				
				end
			
			// Case 19
			6'b010011 : 
			
				begin
					
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 1; G_1 = 1; // 1 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 0; G = 0; // 9 unidades
				
				end				

				
			////////////////////// 20 -> 29
			
			// Case 20
			6'b010100 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 1; D_1 = 0; E_1 = 0; F_1 = 1; G_1 = 0; // 2 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 1; // 0 unidades
									
				end
			
			// Case 21
			6'b010101 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 1; D_1 = 0; E_1 = 0; F_1 = 1; G_1 = 0; // 2 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 1 unidades
				
				end
			
			// Case 22
			6'b010110 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 1; D_1 = 0; E_1 = 0; F_1 = 1; G_1 = 0; // 2 decenas
					A = 0; B = 0; C = 1; D = 0; E = 0; F = 1; G = 0; // 2 unidades
				
				end
			
			// Case 23
			6'b010111 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 1; D_1 = 0; E_1 = 0; F_1 = 1; G_1 = 0; // 2 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 1; G = 0; // 3 unidades
				
				end
			
			// Case 24
			6'b011000 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 1; D_1 = 0; E_1 = 0; F_1 = 1; G_1 = 0; // 2 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 0; G = 0; // 4 unidades
				
				end
			
			// Case 25
			6'b011001 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 1; D_1 = 0; E_1 = 0; F_1 = 1; G_1 = 0; // 2 decenas
					A = 0; B = 1; C = 0; D = 0; E = 1; F = 0; G = 0; // 5 unidades
				
				end
			
			// Case 26
			6'b011010 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 1; D_1 = 0; E_1 = 0; F_1 = 1; G_1 = 0; // 2 decenas
					A = 0; B = 1; C = 0; D = 0; E = 0; F = 0; G = 0; // 6 unidades
				
				end
			
			// Case 27
			6'b011011 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 1; D_1 = 0; E_1 = 0; F_1 = 1; G_1 = 0; // 2 decenas
					A = 0; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 7 unidades
				
				end
			
			// Case 28
			6'b011100 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 1; D_1 = 0; E_1 = 0; F_1 = 1; G_1 = 0; // 2 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 0; // 8 unidades
				
				end
			
			// Case 29
			6'b011101 : 
			
				begin
					
					A_1 = 0; B_1 = 0; C_1 = 1; D_1 = 0; E_1 = 0; F_1 = 1; G_1 = 0; // 2 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 0; G = 0; // 9 unidades
				
				end
			
			////////////////////// 30 -> 39
			
			// Case 30
			6'b011110 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 1; G_1 = 0; // 3 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 1; // 0 unidades
									
				end
			
			// Case 31
			6'b011111 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 1; G_1 = 0; // 3 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 1 unidades
				
				end
			
			// Case 32
			6'b100000 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 1; G_1 = 0; // 3 decenas
					A = 0; B = 0; C = 1; D = 0; E = 0; F = 1; G = 0; // 2 unidades
				
				end
			
			// Case 33
			6'b100001 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 1; G_1 = 0; // 3 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 1; G = 0; // 3 unidades
				
				end
			
			// Case 34
			6'b100010 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 1; G_1 = 0; // 3 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 0; G = 0; // 4 unidades
				
				end
			
			// Case 35
			6'b100011 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 1; G_1 = 0; // 3 decenas
					A = 0; B = 1; C = 0; D = 0; E = 1; F = 0; G = 0; // 5 unidades
				
				end
			
			// Case 36
			6'b100100 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 1; G_1 = 0; // 3 decenas
					A = 0; B = 1; C = 0; D = 0; E = 0; F = 0; G = 0; // 6 unidades
				
				end
			
			// Case 37
			6'b100101 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 1; G_1 = 0; // 3 decenas
					A = 0; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 7 unidades
				
				end
			
			// Case 38
			6'b100110 : 
			
				begin
				
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 1; G_1 = 0; // 3 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 0; // 8 unidades
				
				end
			
			// Case 39
			6'b100111 : 
			
				begin
					
					A_1 = 0; B_1 = 0; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 1; G_1 = 0; // 3 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 0; G = 0; // 9 unidades
				
				end
			
			////////////////////// 40 -> 49
			
			// Case 40
			6'b101000 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 0; G_1 = 0; // 4 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 1; // 0 unidades
									
				end
			
			// Case 41
			6'b101001 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 0; G_1 = 0; // 4 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 1 unidades
				
				end
			
			// Case 42
			6'b101010 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 0; G_1 = 0; // 4 decenas
					A = 0; B = 0; C = 1; D = 0; E = 0; F = 1; G = 0; // 2 unidades
				
				end
			
			// Case 43
			6'b101011 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 0; G_1 = 0; // 4 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 1; G = 0; // 3 unidades
				
				end
			
			// Case 44
			6'b101100 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 0; G_1 = 0; // 4 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 0; G = 0; // 4 unidades
				
				end
			
			// Case 45
			6'b101101 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 0; G_1 = 0; // 4 decenas
					A = 0; B = 1; C = 0; D = 0; E = 1; F = 0; G = 0; // 5 unidades
				
				end
			
			// Case 46
			6'b101110 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 0; G_1 = 0; // 4 decenas
					A = 0; B = 1; C = 0; D = 0; E = 0; F = 0; G = 0; // 6 unidades
				
				end
			
			// Case 47
			6'b101111 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 0; G_1 = 0; // 4 decenas
					A = 0; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 7 unidades
				
				end
			
			// Case 48
			6'b110000 : 
			
				begin
				
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 0; G_1 = 0; // 4 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 0; // 8 unidades
				
				end
			
			// Case 49
			6'b110001 : 
			
				begin
					
					A_1 = 1; B_1 = 0; C_1 = 0; D_1 = 1; E_1 = 1; F_1 = 0; G_1 = 0; // 4 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 0; G = 0; // 9 unidades
				
				end
			
			////////////////////// 50 -> 59
			
			// Case 50
			6'b110010 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 0; G_1 = 0; // 5 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 1; // 0 unidades
									
				end
			
			// Case 51
			6'b110011 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 0; G_1 = 0; // 5 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 1 unidades
				
				end
			
			// Case 52
			6'b110100 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 0; G_1 = 0; // 5 decenas
					A = 0; B = 0; C = 1; D = 0; E = 0; F = 1; G = 0; // 2 unidades
				
				end
			
			// Case 53
			6'b110101 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 0; G_1 = 0; // 5 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 1; G = 0; // 3 unidades
				
				end
			
			// Case 54
			6'b110110 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 0; G_1 = 0; // 5 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 0; G = 0; // 4 unidades
				
				end
			
			// Case 55
			6'b110111 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 0; G_1 = 0; // 5 decenas
					A = 0; B = 1; C = 0; D = 0; E = 1; F = 0; G = 0; // 5 unidades
				
				end
			
			// Case 56
			6'b111000 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 0; G_1 = 0; // 5 decenas
					A = 0; B = 1; C = 0; D = 0; E = 0; F = 0; G = 0; // 6 unidades
				
				end
			
			// Case 57
			6'b111001 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 0; G_1 = 0; // 5 decenas
					A = 0; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 7 unidades
				
				end
			
			// Case 58
			6'b111010 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 0; G_1 = 0; // 5 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 0; // 8 unidades
				
				end
			
			// Case 59
			6'b111011 : 
			
				begin
					
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 1; F_1 = 0; G_1 = 0; // 5 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 0; G = 0; // 9 unidades
				
				end
			
			////////////////////// 60 -> 63
				
			// Case 60
			6'b111100 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 0; // 6 decenas
					A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 1; // 0 unidades
									
				end
			
			// Case 61
			6'b111101 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 0; // 6 decenas
					A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; // 1 unidades
				
				end
			
			// Case 62
			6'b111110 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 0; // 6 decenas
					A = 0; B = 0; C = 1; D = 0; E = 0; F = 1; G = 0; // 2 unidades
				
				end
			
			// Case 63
			6'b111111 : 
			
				begin
				
					A_1 = 0; B_1 = 1; C_1 = 0; D_1 = 0; E_1 = 0; F_1 = 0; G_1 = 0; // 6 decenas
					A = 0; B = 0; C = 0; D = 0; E = 1; F = 1; G = 0; // 3 unidades
				
				end
			
	endcase
					
endmodule
