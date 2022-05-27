LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY pipe_gen IS
	PORT
		(clk, vert_sync, enable, reset, game_over : IN std_logic;
         pixel_row, pixel_column: IN std_logic_vector(9 DOWNTO 0);
			rand_num_out : IN std_logic_vector(7 DOWNTO 0);
			speed : in std_logic_vector(9 DOWNTO 0);
			pipe_on, next_pipe_on, pipe_passed : OUT std_logic;
			pipe_position :	OUT std_logic_vector(9 DOWNTO 0));		
END pipe_gen;

architecture behavior of pipe_gen is

SIGNAL pipe_width 			: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe_top_height 		: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_bot_height 		: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe_top_y_pos		: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_bot_y_pos		: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL pipe_x_motion			: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_top_on, pipe_bot_on : std_logic;
SIGNAL pipe_fade_x			: std_logic_vector(9 DOWNTO 0);

BEGIN           

pipe_position <= pipe_width; 
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball

-- pipe 1  ___________________________________________________________________

pipe_bot_y_pos <=("00" & rand_num_out) - "100101100";

pipe_top_y_pos <=("00" & rand_num_out);

pipe_top_on <= '1' when ( ('0' & pixel_column >= '0' & pipe_x_pos) and ('0' & pixel_column <= '0' & pipe_x_pos + pipe_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pixel_row <= pipe_top_y_pos))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe_bot_on <= '1' when ( ('0' & pixel_column >= '0' & pipe_x_pos) and ('0' & pixel_column <= '0' & pipe_x_pos + pipe_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pipe_bot_y_pos <= pixel_row)) else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe_on <= (pipe_bot_on or pipe_top_on);


Move_Pipes: process (clk) 

variable count : integer := 0;
variable v_next_pipe_on : std_logic := '0';
variable v_pipe_passed : std_logic := '0';

begin
	-- Move pipes once every vert_sync 
	-- will only move if switch is enabled
	if (rising_edge(vert_sync)) then 
					
		if(enable = '1') then 
		--pipe 1  ___________________________________________________________________
			if(count = 1) then -- moving pipes once
				
				pipe_x_motion <= speed;
				
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
		
			if(pipe_x_pos = CONV_STD_LOGIC_VECTOR(424, 11))then
				v_next_pipe_on := '1';
			else 
				v_next_pipe_on := '0';
			end if;
		
			if(pipe_x_pos = CONV_STD_LOGIC_VECTOR(304, 11)) then 
				v_pipe_passed := '1';
			else 
				v_pipe_passed :='0';
			end if;
			
			end if;
			
			if(reset = '1') then 
				-- resetting pipes after pressing the reset button
				pipe_x_pos <= CONV_STD_LOGIC_VECTOR(640,11);
				pipe_width <= CONV_STD_LOGIC_VECTOR(50, 10);
				v_next_pipe_on := '0';
				v_pipe_passed := '0';
			end if;
		
		
		
		
			next_pipe_on <= v_next_pipe_on;
			pipe_passed <= v_pipe_passed;
	
				
								
		end if; 
	
	
	
	
	
	
end process Move_Pipes;

END behavior;