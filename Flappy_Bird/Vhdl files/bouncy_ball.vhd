LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bouncy_ball IS
	PORT
		(
		clk, vert_sync, mouse_click, enable, reset, game_over	: IN std_logic;	
      pixel_row, pixel_column										: IN std_logic_vector(9 DOWNTO 0);
		ball_on																: OUT std_logic);
		  		
END bouncy_ball;

architecture behavior of bouncy_ball is


SIGNAL size 											: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(300, 10);  
SIGNAL ball_y_pos										: std_logic_vector(9 DOWNTO 0);
SiGNAL ball_x_pos										: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion									: std_logic_vector(9 DOWNTO 0);
SIGNAL texts_on										: std_logic;


BEGIN           



size <= CONV_STD_LOGIC_VECTOR(8,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
ball_x_pos <= CONV_STD_LOGIC_VECTOR(300,11);

ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';


Move_Ball: process (vert_sync) 
variable ball_hit_top : std_logic := '0'; 	
variable ball_hit_bot : std_logic := '0'; 
variable count 		 : integer 	 := 0;
begin

	-- Move ball once every vertical sync, and only if enabled 
	if (rising_edge(vert_sync) and enable = '1') then			
		count := count + 1; 
		-- Bounce off top or bottom of the screen
		if ( ('0' & ball_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size) ) then
			ball_hit_bot := '1';
		elsif (ball_y_pos <= size) then 
			
			ball_hit_top := '1';
		else 
			ball_hit_top := '0';
			ball_hit_bot := '0';
		end if;
		
		--Gravity
		
		if(ball_hit_top = '1') then 
			ball_y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
		
		elsif(mouse_click = '1') then 
			--move upward
				ball_y_motion <= - CONV_STD_LOGIC_VECTOR(9,10);
				ball_hit_bot := '0';
		else 
			if (ball_hit_bot = '1') then 
					
					ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
			else 
					ball_y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
			end if;
		end if;
		
		-- Compute next ball Y position
		ball_y_pos <= ball_y_pos + ball_y_motion;
		

		
		
	end if;
end process Move_Ball;

END behavior;

