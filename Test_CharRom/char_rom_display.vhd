LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

entity char_rom_display is
	port
	(clk				:IN std_logic ;
	 row, col 				:in std_logic_vector(9 downto 0);
	 address  				:OUT std_logic_vector(5 downto 0);
	 font_row, font_col 	:out std_logic_vector(2 downto 0));
End entity char_rom_display;

architecture arc of char_rom_display is
	begin
		process(clk)
			begin
							--training
						if(row >= "0000010000" and row < "0000100000" and col >= "0110000000" and col < "1000000000") then 
							if(col >= "0110000000" and col < "0110010000") then
								address <= "010100"; --T
							end if;
							
							if(col >= "0110010000" and col < "0110100000") then
								address <= "010010"; --R
							end if;
							
							if(col >= "0110100000" and col < "0110110000") then
								address <= "000001"; --A
							end if;
							
							if(col >= "0110110000" and col < "0111000000") then
								address <= "001001"; --I
							end if;
							
							if(col >= "0111000000" and col < "0111010000") then
								address <= "001110"; --N
							end if;
							
							if(col >= "0111010000" and col < "0111100000") then
								address <= "001001"; --I
							end if;
							
							if(col >= "0111100000" and col < "0111110000") then
								address <= "001110"; --N
							end if;
							
							if(col >= "0111110000" and col < "1000000000") then
								address <= "000111"; --G
							end if;
							
							font_row <= row(3 downto 1);
							font_col <= col(3 downto 1);


					end if; 

		end process;
end architecture arc;