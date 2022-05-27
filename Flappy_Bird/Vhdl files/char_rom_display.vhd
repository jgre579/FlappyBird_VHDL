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
	 high_score_ones						:IN std_logic_vector(5 downto 0);
	 high_score_tens						:IN std_logic_vector(5 downto 0);
	 high_score_hundreds			:IN std_logic_vector(5 downto 0);
	 row, col 						:IN std_logic_vector(9 downto 0);
	 address  						:OUT std_logic_vector(5 downto 0);
	 font_row, font_col 			:OUT std_logic_vector(2 downto 0));
End entity char_rom_display;

architecture arc of char_rom_display is
	begin
		process(clk)

			begin
	
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
							if(row >= "0000010000" and row < "0000100000" and col >= "100000000" and col < "110010000") then 
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
							font_row <= row(3 downto 1);
							font_col <= col(3 downto 1);
						end if; 
					
					elsif(text_mode = "010")then
						if(row >= "100000000" and row < "100010000" and col >= "100000000" and col < "110010000") then 
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
					
						if(row >= "100010000" and row < "100100000" and col >= "11010000" and col < "111000000") then
							
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
				
				end if; 
			end process;
end architecture arc;