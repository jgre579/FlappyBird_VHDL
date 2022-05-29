LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

entity char_rom_display is
	port
	(clk								:IN std_logic ;
	 text_mode						:IN std_logic_vector(2 downto 0) := "011"; 
	 score_ones						:IN std_logic_vector(5 downto 0);
	 score_tens						:IN std_logic_vector(5 downto 0);
	 score_hundreds				:IN std_logic_vector(5 downto 0);
	 level_ones							:IN std_logic_vector(5 downto 0);
	 level_tens							:IN std_logic_vector(5 downto 0);
	 high_score_ones						:IN std_logic_vector(5 downto 0);
	 high_score_tens						:IN std_logic_vector(5 downto 0);
	 high_score_hundreds			:IN std_logic_vector(5 downto 0);
	 row, col 						:IN std_logic_vector(9 downto 0);
	 game_mode						:IN std_logic; 
	 address  						:OUT std_logic_vector(5 downto 0);
	 font_row, font_col 			:OUT std_logic_vector(2 downto 0));
End entity char_rom_display;

architecture arc of char_rom_display is
	begin
		process(clk)

			begin
				if(rising_edge(clk))then
				if(text_mode = "000")then
						if(row >= "11110000" and row < "100000000" and col >= "100010000" and col < "101110000") then 
							if(col >= "100010000" and col < "100100000") then
								address <= "010000"; --P
							end if;
							
							if(col >= "100100000" and col < "100110000") then
								address <= "000001"; --A
							end if;
							
							if(col >= "100110000" and col < "101000000") then
								address <= "010101"; --U
							end if;
							
							if(col >= "101000000" and col < "101010000") then
								address <= "010011"; --S
							end if;
							
							if(col >= "101010000" and col < "101100000") then
								address <= "000101"; --E
							end if;
							
							if(col >= "101100000" and col < "101110000") then
								address <= "000100"; --D
							end if;		
							font_row <= row(3 downto 1);
							font_col <= col(3 downto 1);
						end if; 
					
					--score
					elsif(text_mode = "001")then 
							if(row >= "0000010000" and row < "0000100000" and col >= "100000000" and col < "110100000") then 
							if(col >= "100000000" and col < "100010000") then
								address <= "010011"; --S
							end if;
							if(col >= "100010000" and col < "100100000") then
								address <= "000011"; --C
							end if;
							
							if(col >= "100100000" and col < "100110000") then
								address <= "001111"; --O
							end if;
							
							if(col >= "100110000" and col < "101000000") then
								address <= "010010"; --R
							end if;
							
							if(col >= "101000000" and col < "101010000") then
								address <= "000101"; --E
							end if;
							if(col >= "101010000" and col < "101100000") then
								address <= "100000"; -- space 
							end if;
							if(col >= "101100000" and col < "101110000") then
								address <= score_hundreds; -- thrid digit 
							end if;
							if(col >= "101110000" and col < "110000000") then
								address <= score_tens; -- second digit 
							end if;
							if(col >= "110000000" and col < "110010000") then
								address <= score_ones; -- first digit  
							end if;
							if(col >= "110010000" and col < "110100000") then
								address <= "100000"; -- space 
							end if;

							font_row <= row(3 downto 1);
							font_col <= col(3 downto 1);
						end if; 
						
					if(row >= "0000010000" and row < "0000100000" and col >= "100000" and col < "1110000") then 

							if(col >= "100000" and col < "110000") then
								address <= "001100"; --L
							end if;
							if(col >= "110000" and col < "1000000") then
								address <= "001001"; --I
							end if;

							if(col >= "1000000" and col < "1010000") then
								address <= "010110"; --V
							end if;

							if(col >= "1010000" and col < "1100000") then
								address <= "000101"; --E
							end if;

							if(col >= "1100000" and col < "1110000") then
								address <= "010011"; --S
							end if;
							font_row <= row(3 downto 1);
							font_col <= col(3 downto 1);
							end if; 
							
							-- levels
					if(row >= "0000010000" and row < "0000100000" and col >= "111100000" and col < "1001100000") then 
					
							if(game_mode = '1') then 
								if(col >= "111100000" and col < "111110000") then
									address <= "001100"; --L
								end if;
								if(col >= "111110000" and col < "1000000000") then
									address <= "000101"; --E
								end if;

								if(col >= "1000000000" and col < "1000010000") then
									address <= "010110"; --V
								end if;

								if(col >= "1000010000" and col < "1000100000") then
									address <= "000101"; --E
								end if;

								if(col >= "1000100000" and col < "1000110000") then
									address <= "001100"; --L
								end if;
								
								if(col >= "1000110000" and col < "1001000000") then
									address <= "100000"; -- space 
								end if;
								if(col >= "1001000000" and col < "1001010000") then
									address <= level_tens; -- level tens 
								end if;
								if(col >= "1001010000" and col < "1001100000") then
									address <= level_ones; -- level ones 
								end if;

							font_row <= row(3 downto 1);
							font_col <= col(3 downto 1);
							end if; 
						end if;

							

					elsif(text_mode = "010")then
						if(row >= "100100000" and row < "100110000" and col >= "100000000" and col < "110100000") then 
							if(col >= "100000000" and col < "100010000") then
								address <= "010011"; --S
							end if;
							if(col >= "100010000" and col < "100100000") then
								address <= "000011"; --C
							end if;
							
							if(col >= "100100000" and col < "100110000") then
								address <= "001111"; --O
							end if;
							
							if(col >= "100110000" and col < "101000000") then
								address <= "010010"; --R
							end if;
							
							if(col >= "101000000" and col < "101010000") then
								address <= "000101"; --E
							end if;
							if(col >= "101010000" and col < "101100000") then
								address <= "100000"; -- space 
							end if;
							
							if(col >= "101100000" and col < "101110000") then
								address <= score_hundreds; -- thrid digit 
							end if;
							if(col >= "101110000" and col < "110000000") then
								address <= score_tens; -- second digit 
							end if;
							if(col >= "110000000" and col < "110010000") then
								address <= score_ones; -- first digit  
							end if;
							
							if(col >= "110010000" and col < "110100000") then
								address <= "100000"; -- space 
							end if;

							font_row <= row(3 downto 1);
							font_col <= col(3 downto 1);
						end if; 
						
						
						if(row >= "11110000" and row < "100000000" and col >= "100000000" and col < "110010000") then 
							if(col >= "100000000" and col < "100010000") then
								address <= "000111"; --G
							end if;
							
							if(col >= "100010000" and col < "100100000") then
								address <= "000001"; --A
							end if;
							
							if(col >= "100100000" and col < "100110000") then
								address <= "001101"; --M
							end if;
							
							if(col >= "100110000" and col < "101000000") then
								address <= "000101"; --E
							end if;
							if(col >= "101000000" and col < "101010000") then
								address <= "100000"; -- space 
							end if;
							if(col >= "101010000" and col < "101100000") then
								address <= "001111"; --O
							end if;
														
							if(col >= "101100000" and col < "101110000") then
								address <= "010110"; --V
							end if;
							
							if(col >= "101110000" and col < "110000000") then
								address <= "000101"; --E
							end if;
														
							if(col >= "110000000" and col < "110010000") then
								address <= "010010"; --R
							end if;
								font_row <= row(3 downto 1);
								font_col <= col(3 downto 1);
						end if;
					
						if(row >= "100110000" and row < "101000000" and col >= "11010000" and col < "111000000") then
							
							if(col >= "11010000" and col < "11100000") then
								address <= "001000"; -- H 
							end if;

							if(col >= "11100000" and col < "11110000") then
								address <= "001001"; -- I 
							end if;
							
							if(col >= "11110000" and col < "100000000") then
								address <= "000111"; -- G 
							end if;

							if(col >= "100000000" and col < "100010000") then
								address <= "001000"; -- H 
							end if;

							if(col >= "100010000" and col < "100100000") then
								address <= "100000"; -- space 
							end if;

							if(col >= "100100000" and col < "100110000") then
								address <= "010011"; --S
							end if;
							if(col >= "100110000" and col < "101000000") then
								address <= "000011"; --C
							end if;
							
							if(col >= "101000000" and col < "101010000") then
								address <= "001111"; --O
							end if;
							
							if(col >= "101010000" and col < "101100000") then
								address <= "010010"; --R
							end if;
							
							if(col >= "101100000" and col < "101110000") then
								address <= "000101"; --E
							end if;
							if(col >= "101110000" and col < "110000000") then
								address <= "100000"; -- space 
							end if;
							
							if(col >= "110000000" and col < "110010000") then
								address <= high_score_hundreds; -- thrid digit 
							end if;
							if(col >= "110010000" and col < "110100000") then
								address <= high_score_tens; -- second digit 
							end if;
							if(col >= "110100000" and col < "110110000") then
								address <= high_score_ones; -- first digit  
							end if;
							if(col >= "110110000" and col < "111000000") then
								address <= "100000"; -- space
							end if;

					font_row <= row(3 downto 1);
					font_col <= col(3 downto 1);
					end if; 
					
					if(row >= "101010000" and row < "101100000" and col >= "11010000" and col < "110100000") then 
							if(col >= "11010000" and col < "11100000") then
								address <= "010010"; --R
							end if;
							if(col >= "11100000" and col < "11110000") then
								address <= "000101"; --E
							end if;
							
							if(col >= "11110000" and col < "100000000") then
								address <= "010011"; --S
							end if;
							
							if(col >= "100000000" and col < "100010000") then
								address <= "000101"; --E
							end if;
							
							if(col >= "100010000" and col < "100100000") then
								address <= "010100"; --T
							end if;
							if(col >= "100100000" and col < "100110000") then
								address <= "100000"; -- space
							end if;
							
							if(col >= "100110000" and col < "101000000") then
								address <= "000010"; -- B
							end if;
							
							if(col >= "101000000" and col < "101010000") then
								address <= "010101"; -- U
							end if;
							
							if(col >= "101010000" and col < "101100000") then
								address <= "010100"; -- T
							end if;
							if(col >= "101100000" and col < "101110000") then
								address <= "010100"; -- T
							end if;
							if(col >= "101110000" and col < "110000000") then
								address <= "001111"; -- O
							end if;
							if(col >= "110000000" and col < "110010000") then
								address <= "001110"; -- N
							end if;
							if(col >= "110010000" and col < "110100000") then
								address <= "110000"; -- 0
							end if;
							font_row <= row(3 downto 1);
							font_col <= col(3 downto 1);
						end if; 

					
				elsif(text_mode = "111")then

						if(row >= "11110000" and row < "100000000" and col >= "11110000" and col < "110010000") then
							
							if(col >= "11110000" and col < "100000000") then
								address <= "000110"; -- F 
							end if;

							if(col >= "100000000" and col < "100010000") then
								address <= "001100"; -- L 
							end if;
							
							if(col >= "100010000" and col < "100100000") then
								address <= "000001"; -- A 
							end if;

							if(col >= "100100000" and col < "100110000") then
								address <= "010000"; -- P 
							end if;

							if(col >= "100110000" and col < "101000000") then
								address <= "010000"; -- P 
							end if;

							if(col >= "101000000" and col < "101010000") then
								address <= "011001"; -- Y
							end if;
							if(col >= "101010000" and col < "101100000") then
								address <= "100000"; -- space
							end if;
							
							if(col >= "101100000" and col < "101110000") then
								address <= "000010"; -- B
							end if;
							
							if(col >= "101110000" and col < "110000000") then
								address <= "001111"; -- O
							end if;
							
							if(col >= "110000000" and col < "110010000") then
								address <= "011000"; -- X
							end if;

					font_row <= row(3 downto 1);
					font_col <= col(3 downto 1);
					end if; 
					
					if(row >= "101110000" and row < "110000000" and col >= "10100000" and col < "111000000") then
							
							if(col >= "10100000" and col < "10110000") then
								address <= "010011"; -- S
							end if;

							if(col >= "10110000" and col < "11000000") then
								address <= "010100"; -- T
							end if;
							
							if(col >= "11000000" and col < "11010000") then
								address <= "000001"; -- A
							end if;

							if(col >= "11010000" and col < "11100000") then
								address <= "010010"; -- R
							end if;

							if(col >= "11100000" and col < "11110000") then
								address <= "010100"; -- T 
							end if;

							if(col >= "11110000" and col < "100000000") then
								address <= "100000"; -- Space
							end if;
							if(col >= "100000000" and col < "100010000") then
								address <= "000111"; -- G
							end if;
							
							if(col >= "100010000" and col < "100100000") then
								address <= "000001"; -- A
							end if;
							
							if(col >= "100100000" and col < "100110000") then
								address <= "001101"; -- M
							end if;
							
							if(col >= "100110000" and col < "101000000") then
								address <= "000101"; -- E
							end if;

							if(col >= "101000000" and col < "101010000") then
								address <= "100000"; -- space
							end if;
							
							if(col >= "101010000" and col < "101100000") then
								address <= "000010"; -- B
							end if;
							
							if(col >= "101100000" and col < "101110000") then
								address <= "010101"; -- U
							end if;
							
							if(col >= "101110000" and col < "110000000") then
								address <= "010100"; -- T
							end if;
							if(col >= "110000000" and col < "110010000") then
								address <= "010100"; -- T
							end if;
							if(col >= "110010000" and col < "110100000") then
								address <= "001111"; -- O
							end if;
							if(col >= "110100000" and col < "110110000") then
								address <= "001110"; -- N
							end if;
							if(col >= "110110000" and col < "111000000") then
								address <= "110010"; -- 2
							end if;


					font_row <= row(3 downto 1);
					font_col <= col(3 downto 1);
					end if; 
					
					if(row >= "100010000" and row < "100100000" and col >= "100000000" and col < "101100000") then
							if(col >= "100000000" and col < "100010000") then
								address <= "001110"; -- N
							end if;
							if(col >= "100010000" and col < "100100000") then
								address <= "001111"; -- O
							end if;
							if(col >= "100100000" and col < "100110000") then
								address <= "010010"; -- R
							end if;

							if(col >= "100110000" and col < "101000000") then
								address <= "001101"; -- M
							end if;
							if(col >= "101000000" and col < "101010000") then
								address <= "000001"; -- A
							end if;
							if(col >= "101010000" and col < "101100000") then
								address <= "001100"; -- L
							end if;


					font_row <= row(3 downto 1);
					font_col <= col(3 downto 1);
					end if; 

					if(game_mode = '1')then
						if(row >= "100010000" and row < "100100000" and col >= "11000000" and col < "100000000") then
							
							if(col >= "11000000" and col < "11010000") then
								address <= "010011"; -- S
							end if;
							
							if(col >= "11010000" and col < "11100000") then
								address <= "010111"; -- W
							end if;
							
							if(col >= "11100000" and col < "11110000") then
								address <= "110000"; -- 0
							end if;
							
							if(col >= "11110000" and col < "100000000") then
								address <= "011110"; -- UP
							end if;
					font_row <= row(3 downto 1);
					font_col <= col(3 downto 1);

					end if; 
					end if; 
		
					if(row >= "100100000" and row < "100110000" and col >= "100000000" and col < "110000000") then

							if(col >= "100000000" and col < "100010000") then
								address <= "010100"; -- T
							end if;
							if(col >= "100010000" and col < "100100000") then
								address <= "010010"; -- R
							end if;
							if(col >= "100100000" and col < "100110000") then
								address <= "000001"; -- A
							end if;

							if(col >= "100110000" and col < "101000000") then
								address <= "001001"; -- I
							end if;
							if(col >= "101000000" and col < "101010000") then
								address <= "001110"; -- N
							end if;
							if(col >= "101010000" and col < "101100000") then
								address <= "001001"; -- I
							end if;
							if(col >= "101100000" and col < "101110000") then
								address <= "001110"; -- N
							end if;
							if(col >= "101110000" and col < "110000000") then
								address <= "000111"; -- G
							end if;

					font_row <= row(3 downto 1);
					font_col <= col(3 downto 1);
					end if; 

					
					if(game_mode = '0')then
					if(row >= "100100000" and row < "100110000" and col >= "11000000" and col < "100000000") then
							
							if(col >= "11000000" and col < "11010000") then
								address <= "010011"; -- S
							end if;
							
							if(col >= "11010000" and col < "11100000") then
								address <= "010111"; -- W
							end if;
							
							if(col >= "11100000" and col < "11110000") then
								address <= "110000"; -- 0
							end if;
							
							if(col >= "11110000" and col < "100000000") then
								address <= "011100"; -- DOWN
							end if;
							
						font_row <= row(3 downto 1);
						font_col <= col(3 downto 1);
						end if; 
					end if; 
				end if; 
				end if;
			end process;
end architecture arc;