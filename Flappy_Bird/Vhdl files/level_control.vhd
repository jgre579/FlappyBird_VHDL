LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY level_control
 IS
	PORT(
				
		score_tens, score_hundreds	: in std_logic_vector(5 downto 0);
		game_mode, clk : in std_logic;
		speed : out std_logic_vector(2 DOWNTO 0);
		level_ones : out std_logic_vector(5 downto 0)
		
		);		
END level_control;

architecture behavior of level_control is

	signal current_level_ones	: std_logic_vector(5 DOWNTO 0) := "110001";  


BEGIN    

process  is


begin 
	
	wait until rising_edge(clk);
	
	-- TRAINING MODE
	if(game_mode = '0') then 
		speed <= CONV_STD_LOGIC_VECTOR(2, 3);
		
	else 
		-- GAME MODE
		if(score_hundreds >= "110001") then 
			speed <= CONV_STD_LOGIC_VECTOR(8, 3);
		else 
			case score_tens is 
			when "110000" => speed <= CONV_STD_LOGIC_VECTOR(2, 3);
			when "110001" => speed <= CONV_STD_LOGIC_VECTOR(4, 3);
			when others => speed <= CONV_STD_LOGIC_VECTOR(6, 3);
		end case;
		end if;
		
	end if;
	

	--CALCULATE LEVEL 
	if (score_tens > current_level_ones)then 
		if(current_level_ones /= "110011") then 
			current_level_ones <= current_level_ones + CONV_STD_LOGIC_VECTOR(1, 6);
		end if;
	end if; 
	
level_ones <= current_level_ones;


end process;





					
						


END behavior;

