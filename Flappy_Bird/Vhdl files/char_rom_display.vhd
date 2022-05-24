LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

entity char_rom_display is
	port
	(clk								:IN std_logic ;
	 enable							:IN std_logic; 
	 death 							:IN std_logic; 
	 reset							:IN std_logic; 
	 score_ones						:IN std_logic_vector(5 downto 0);
	 score_tens						:IN std_logic_vector(5 downto 0);
	 score_hundreds				:IN std_logic_vector(5 downto 0);
	 row, col 						:IN std_logic_vector(9 downto 0);
	 address  						:OUT std_logic_vector(5 downto 0);
	 font_row, font_col 			:OUT std_logic_vector(2 downto 0));
End entity char_rom_display;

architecture arc of char_rom_display is
	begin
		process(clk, reset)
		
		variable modes : std_logic_vector(1 downto 0) := "11";

			begin
				
				if(rising_edge(clk))then
					if(enable = '0' and death = '0')then
							modes := "00";
				
					elsif(enable = '1' and death = '0')then
							modes := "01";		
							
					elsif(death = '1')then 
						modes := "10";
					end if;

--							--training
--						if(row >= "0000010000" and row < "0000100000" and col >= "0110000000" and col < "1000000000") then 
--							if(col >= "0110000000" and col < "0110010000") then
--								address <= "010100"; --T
--							end if;
--							
--							if(col >= "0110010000" and col < "0110100000") then
--								address <= "010010"; --R
--							end if;
--							
--							if(col >= "0110100000" and col < "0110110000") then
--								address <= "000001"; --A
--							end if;
--							
--							if(col >= "0110110000" and col < "0111000000") then
--								address <= "001001"; --I
--							end if;
--							
--							if(col >= "0111000000" and col < "0111010000") then
--								address <= "001110"; --N
--							end if;
--							
--							if(col >= "0111010000" and col < "0111100000") then
--								address <= "001001"; --I
--							end if;
--							
--							if(col >= "0111100000" and col < "0111110000") then
--								address <= "001110"; --N
--							end if;
--							
--							if(col >= "0111110000" and col < "1000000000") then
--								address <= "000111"; --G
--							end if;
--							
--							font_row <= row(3 downto 1);
--							font_col <= col(3 downto 1);
--					end if; 
				if(modes = "00")then
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
					elsif(modes = "01")then 
							if(row >= "0000010000" and row < "0000100000" and col >= "100010000" and col < "110110000") then 
							if(col >= "100010000" and col < "100100000") then
								address <= "010011"; --S
							end if;
							if(col >= "100100000" and col < "100110000") then
								address <= "000011"; --C
							end if;
							
							if(col >= "100110000" and col < "101000000") then
								address <= "001111"; --O
							end if;
							
							if(col >= "101000000" and col < "101010000") then
								address <= "010010"; --R
							end if;
							
							if(col >= "101010000" and col < "101100000") then
								address <= "000101"; --E
							end if;
							if(col >= "101100000" and col < "101110000") then
								address <= "100000"; -- space 
							end if;
							if(col >= "101110000" and col < "110000000") then
								address <= score_hundreds; -- thrid digit 
							end if;
							if(col >= "110000000" and col < "110010000") then
								address <= score_tens; -- second digit 
							end if;
							if(col >= "110010000" and col < "110100000") then
								address <= score_ones; -- first digit  
							end if;
							if(col >= "110100000" and col < "110110000") then
								address <= "100000"; -- space
							end if;
							font_row <= row(3 downto 1);
							font_col <= col(3 downto 1);
						end if; 
					
					elsif(modes = "10")then
						if(row >= "11110000" and row < "100000000" and col >= "100100000" and col < "110110000") then 
							if(col >= "100100000" and col < "100110000") then
								address <= "000111"; --G
							end if;
							
							if(col >= "100110000" and col < "101000000") then
								address <= "000001"; --A
							end if;
							
							if(col >= "101000000" and col < "101010000") then
								address <= "001101"; --M
							end if;
							
							if(col >= "101010000" and col < "101100000") then
								address <= "000101"; --E
							end if;
							if(col >= "101100000" and col < "101110000") then
								address <= "100000"; -- space 
							end if;
							if(col >= "101110000" and col < "110000000") then
								address <= "001111"; --O
							end if;
														
							if(col >= "110000000" and col < "110010000") then
								address <= "010110"; --V
							end if;
							
							if(col >= "110010000" and col < "110100000") then
								address <= "000101"; --E
							end if;
														
							if(col >= "110100000" and col < "110110000") then
								address <= "010010"; --R
							end if;
					font_row <= row(3 downto 1);
					font_col <= col(3 downto 1);
					end if; 
			end if; 
			
--			if(row >= "11110000" and row < "100000000" and col >= "11111000" and col < "110001000") then 
--							if(col >= "11111000" and col < "100001000") then
--								address <= "000111"; --G
--							end if;
--							
--							if(col >= "100001000" and col < "100011000") then
--								address <= "000001"; --A
--							end if;
--							
--							if(col >= "100011000" and col < "100101000") then
--								address <= "001101"; --M
--							end if;
--							
--							if(col >= "100101000" and col < "100111000") then
--								address <= "000101"; --E
--							end if;
--							
--							if(col >= "100111000" and col < "101001000") then
--								address <= "100000"; -- space 
--							end if;
--							
--							if(col >= "101001000" and col < "101011000") then
--								address <= "001111"; --O
--							end if;
--														
--							if(col >= "101011000" and col < "101101000") then
--								address <= "010110"; --V
--							end if;
--							
--							if(col >= "101101000" and col < "101111000") then
--								address <= "000101"; --E
--							end if;
--														
--							if(col >= "101111000" and col < "110001000") then
--								address <= "010010"; --R
--							end if;
				end if; 
			end process;
end architecture arc;