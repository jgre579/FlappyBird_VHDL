LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY level_control
 IS
	PORT(
				
		score_tens, score_hundreds	: in std_logic_vector(5 downto 0);
		game_mode, clk : in std_logic;
		speed : out std_logic_vector(9 DOWNTO 0)
		
		);		
END level_control;

architecture behavior of level_control is


BEGIN    
speed <= CONV_STD_LOGIC_VECTOR(9, 10);

process  is


begin 
	wait until rising_edge(clk);
	
	-- TRAINING MODE
--	if(game_mode = '0') then 
--	
--		speed <= CONV_STD_LOGIC_VECTOR(3, 10);
--		
--	else 
--		-- GAME MODE
--		if(score_hundreds >= "110001") then 
--			speed <= CONV_STD_LOGIC_VECTOR(9, 10);
--		else 
--			case score_tens is 
--			when "110000" => speed <= CONV_STD_LOGIC_VECTOR(3, 10);
--			when "110001" => speed <= CONV_STD_LOGIC_VECTOR(6, 10);
--			when others => speed <= CONV_STD_LOGIC_VECTOR(9, 10);
--		end case;
--		end if;
--	end if;
		
		
		
		
			
		

end process;





					
						


END behavior;

