LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity display_sync is
	port (ball_on, text_on, pipe_on, pipe2_on, pipe3_on: in std_logic;
			red,green,blue: out std_logic);
end display_sync;

Architecture arc of display_sync is
begin	
	red <= 	'1' when ball_on = '1' else
				'0' when text_on = '1' else
				'0' when pipe_on = '1' else 
				'0' when pipe2_on = '1'else
				'0' when pipe3_on = '1'else
				'1';
	green <= '0' when ball_on = '1' else
				'0' when text_on = '1' else 
				'1' when pipe_on = '1' else
				'1' when pipe2_on = '1'else 
				'1' when pipe3_on = '1'else 
				'1';
	blue <=  '0' when ball_on = '1' else	
				'0' when text_on = '1' else 
				'0' when pipe_on = '1' else
				'0' when pipe2_on = '1'else
				'0' when pipe3_on = '1'else
				'1';
				

end architecture arc;
		