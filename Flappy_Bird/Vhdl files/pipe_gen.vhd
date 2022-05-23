LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY pipe_gen IS
	PORT
		(clk, vert_sync, enable, reset, game_over : IN std_logic;
          pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
			pipe_on, next_pipe_on : OUT std_logic);		
END pipe_gen;

architecture behavior of pipe_gen is

SIGNAL pipe_width 			: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe_top_height 		: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_bot_height 		: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe_top_y_pos		: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_bot_y_pos		: std_logic_vector(9 DOWNTO 0);
SiGNAL pipe_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL pipe_x_motion			: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_top_on, pipe_bot_on : std_logic;

SiGNAL pipe_fade_x			: std_logic_vector(9 DOWNTO 0);

BEGIN           


-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball

-- pipe 1  ___________________________________________________________________
pipe_top_height <= CONV_STD_LOGIC_VECTOR(150,10);
pipe_top_y_pos <= CONV_STD_LOGIC_VECTOR(50,10);

pipe_bot_height <= CONV_STD_LOGIC_VECTOR(490-300,10);
pipe_bot_y_pos <= CONV_STD_LOGIC_VECTOR(300,10);

pipe_top_on <= '1' when ( ('0' & pixel_column >= '0' & pipe_x_pos) and ('0' & pixel_column <= '0' & pipe_x_pos + pipe_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pixel_row <= pipe_top_y_pos))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe_bot_on <= '1' when ( ('0' & pixel_column >= '0' & pipe_x_pos) and ('0' & pixel_column <= '0' & pipe_x_pos + pipe_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pipe_bot_y_pos <= pixel_row)) else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe_on <= (pipe_bot_on or pipe_top_on);




Move_Pipes: process (vert_sync) 

variable count : integer := 0;


begin
	-- Move pipes once every vert_sync 
	-- will only move if switch is enabled
	if (rising_edge(vert_sync) and enable = '1') then			

		--pipe 1  ___________________________________________________________________
		if(count = 1) then -- moving pipes once
			pipe_x_motion <= CONV_STD_LOGIC_VECTOR(5,10);
			
			count := 0;
		else -- resetting pipe count after moving 
			pipe_x_motion <= CONV_STD_LOGIC_VECTOR(0,10);
			count := count + 1;
		end if;
		
		
--		pipe1  ___________________________________________________________________
		if(pipe_x_pos <= CONV_STD_LOGIC_VECTOR(0, 10)) then 
			
				
			if(pipe_width <= CONV_STD_LOGIC_VECTOR(0, 10)) then 
				pipe_x_pos <= CONV_STD_LOGIC_VECTOR(640,11);
				pipe_width <= CONV_STD_LOGIC_VECTOR(50, 10);
			
			else 
				pipe_width <= pipe_width - pipe_x_motion;
			end if;
			
			
		else 
			pipe_x_pos <= pipe_x_pos - pipe_x_motion;
			pipe_width <= CONV_STD_LOGIC_VECTOR(50, 10);
		end if;
		
		if(pipe_x_pos <= CONV_STD_LOGIC_VECTOR(415, 11))then
			next_pipe_on <= '1'; 
		else 
			--next_pipe_on <= '0';
		end if;
		
		
		
		-- resetting pipes after pressing the reset button
	elsif	(rising_edge(vert_sync) and reset = '1' and game_over = '1')then 
			pipe_x_pos <= CONV_STD_LOGIC_VECTOR(640,11);
			pipe_width <= CONV_STD_LOGIC_VECTOR(50, 10);
			next_pipe_on <= '0';
	elsif (enable = '0' and rising_edge(vert_sync)) then 
	
			--next_pipe_on <= '0';
			
							
	end if; 
end process Move_Pipes;

END behavior;

