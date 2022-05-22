LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity game_controller is
	port (clk, game_enable, is_pipe_collided, is_powerup_collided, is_mouse_clicked, btn2, timer_end: in std_logic;
			game_over, score, jump, reset, enable, led0, led1, led2, led3, timer_enable: out std_logic);
end game_controller;

Architecture arc of game_controller is
signal is_playing : std_logic := '1';
begin	

enable <= game_enable;
led3 <= game_enable;

jump <= is_mouse_clicked when game_enable = '1' and is_playing = '1' else '0';


process (is_pipe_collided) is

variable lives : std_logic_vector(1 downto 0) := "11";
variable debounce_counter : integer := 0;

begin 

	
	
	--if (rising_edge(clk)) then 
	
	if(game_enable = '1' and is_playing = '1') then 
	-- Play the game
	
		
		if(is_pipe_collided = '1') then 
			led2 <= '1';
			timer_enable <= '1';
			
		end if;
		
		if(timer_end = '1') then 
			led2 <= '0';
			timer_enable <='0';
		end if;
		
		if(btn2 = '0') then 
			led2<='0';
		end if;
	
		
		
		
--		if(is_pipe_collided = '1') then 
--			
--			lives := lives - "01";
--			if(lives = "01") then 
--			-- Game is over
--				--is_playing <= '0';
--				
--			end if;
--		end if; 
	end if;
	
--	case lives is
--	
--		when "11" => 
--			led0 <= '1';
--			led1 <= '1';
--			led2 <= '1';
--		when "10" =>
--			led0 <= '1';
--			led1 <= '1';
--			led2 <= '0';
--		when "01" =>
--			led0 <= '1';
--			led1 <= '0';
--			led2 <= '0';
--		when "00" =>
--			led0 <= '0';
--			led1 <= '1';
--			led2 <= '0';
--	end case;
	
	
	
	--end if;
end process;


				
			
			
	



end architecture arc;
		