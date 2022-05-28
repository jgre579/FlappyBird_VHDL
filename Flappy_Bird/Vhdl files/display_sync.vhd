LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity display_sync is
	port (ball_on, text_on, pipe_on, vert_sync, clk, lives_on, enable, powerup_on: in std_logic;
			red,green,blue, is_pipe_collided, timer_enable, is_powerup_collided: out std_logic);
end display_sync;

Architecture arc of display_sync is

signal powerup_collision : std_logic := '0';
begin	

	red <=	'1' when lives_on = '1' and enable = '1' 	else
				'0' when text_on = '1' else
				'1' when powerup_on = '1' and powerup_collision = '0' else
				'1' when ball_on = '1' else
				'0' when pipe_on = '1' else
				'1';
				
	green <= '0' when lives_on = '1' and enable = '1' else
				'0' when text_on = '1' else 
				'1' when powerup_on = '1' and powerup_collision = '0' else
				'0' or powerup_collision when ball_on = '1'  else
				'1' when pipe_on = '1' else			
				'1';
				
	blue <=  '1' when lives_on = '1' and enable = '1' else
				'0' when text_on = '1' else
				'0' when powerup_on = '1' and powerup_collision = '0'  else
				'0' when ball_on = '1' else	
				'0' when pipe_on = '1' else	
				'1';
				
	
	
	process (vert_sync, clk) is 
	
		variable temp_col : std_logic := '0';
		variable v_pipe_collision : std_logic := '0';
		variable v_powerup_collision : std_logic := '0';
	
		begin 
			
			if(rising_edge(clk)) then 
			
				if(ball_on = '1' and pipe_on = '1') then 
					temp_col:='1';
				end if;
				
				if(powerup_on = '1' and ball_on = '1') then 
					
					powerup_collision <= '1';
				end if;
			
			
			end if;
			
			if(vert_sync = '1' and rising_edge(clk) and powerup_collision = '0') then 
			
				if(temp_col = '1') then
					v_pipe_collision := '1';
					temp_col := '0';
				else 
					v_pipe_collision :='0';		
				end if;
			end if;
--			
							
				
			is_pipe_collided <= v_pipe_collision;
			is_powerup_collided <= powerup_collision;	
			
			
			
		
		
	end process;
end architecture arc;