LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity display_sync is
	port (ball_on, text_on, pipe_on, vert_sync, clk, lives_on, enable: in std_logic;
			red,green,blue, is_pipe_collided, timer_enable: out std_logic);
end display_sync;

Architecture arc of display_sync is

signal collision_occured : std_logic;
begin	

	red <= 	'1' when ball_on = '1' else
				'0' when text_on = '1' else
				'1' when lives_on = '1' else
				'0' when pipe_on = '1' and enable = '1' else
				'1';
	green <= '0' when ball_on = '1' else
				'0' when text_on = '1' else 
				'0' when lives_on = '1' else
				'1' when pipe_on = '1' and enable = '1' else
				'1';
	blue <=  '0' when ball_on = '1' else	
				'0' when text_on = '1' else
				'1' when lives_on = '1' else	
				'0' when pipe_on = '1' and enable = '1' else
				'1';
				
	
	
	process (vert_sync, clk) is 
	
		variable coll : std_logic := '0';
		variable collision : std_logic := '0';
	
		begin 
			
			if(rising_edge(clk)) then 
			
			if(ball_on = '1' and pipe_on = '1') then 
				coll:='1';
			end if;
			end if;
			
			if(vert_sync = '1' and rising_edge(clk)) then 
			
				if(coll = '1') then
					collision := '1';
					coll := '0';
				else 
					collision :='0';		
				end if;
			end if;
--			
							
				
			is_pipe_collided <= collision;
				
			
			
			
		
		
	end process;
end architecture arc;