LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY pipe_gen IS
	PORT
		( pb1, pb2, clk, vert_sync, mouse_click	: IN std_logic;
          pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
			pipe_on: OUT std_logic);		
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

BEGIN           


-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
pipe_x_pos <= CONV_STD_LOGIC_VECTOR(500,11);
pipe_width <= CONV_STD_LOGIC_VECTOR(50,10);
pipe_top_height <= CONV_STD_LOGIC_VECTOR(150,10);
pipe_top_y_pos <= CONV_STD_LOGIC_VECTOR(200,10);

pipe_bot_height <= CONV_STD_LOGIC_VECTOR(490-300,10);
pipe_bot_y_pos <= CONV_STD_LOGIC_VECTOR(300,10);

pipe_top_on <= '1' when ( ('0' & pipe_x_pos <= '0' & pixel_column + pipe_width) and ('0' & pixel_column <= '0' & pipe_x_pos + pipe_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pixel_row <= pipe_top_y_pos) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe_bot_on <= '1' when ( ('0' & pipe_x_pos <= '0' & pixel_column + pipe_width) and ('0' & pixel_column <= '0' & pipe_x_pos + pipe_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pipe_bot_y_pos <= pixel_row) ) else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe_on <= pipe_bot_on or pipe_top_on;


-- Colours for pixel data on video signal
-- Changing the background and ball colour by pushbuttons
--Red <=  pb1;
--Green <= (not pb2) and (not ball_on);
--Blue <=  not ball_on;



--Move_Ball: process (vert_sync) 
--variable ball_hit_top : std_logic := '0'; 	
--variable ball_hit_bot : std_logic := '0'; 
--begin
--	-- Move ball once every vertical sync
--	if (rising_edge(vert_sync)) then			
--	
--		-- Bounce off top or bottom of the screen
--		if ( ('0' & ball_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size) ) then
--			ball_hit_bot := '1';
--		elsif (ball_y_pos <= size) then 
--			
--			ball_hit_top := '1';
--		else 
--			ball_hit_top := '0';
--			ball_hit_bot := '0';
--		end if;
--		
--		--Gravity
--		
--		if(ball_hit_top = '1') then 
--			ball_y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
--		
--		elsif(mouse_click = '1') then 
--			--move upward
--				ball_y_motion <= - CONV_STD_LOGIC_VECTOR(9,10);
--				ball_hit_bot := '0';
--		else 
--			if (ball_hit_bot = '1') then 
--					
--					ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
--			else 
--					ball_y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
--			end if;
--		end if;
--		
--	
--		
--		
--		-- Compute next ball Y position
--		ball_y_pos <= ball_y_pos + ball_y_motion;
--		
--		top <= ball_hit_top;
--		bot <= ball_hit_bot;
--	end if;
--end process Move_Ball;

END behavior;

