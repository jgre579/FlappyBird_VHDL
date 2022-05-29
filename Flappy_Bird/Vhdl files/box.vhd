LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY box IS
	PORT
		(
		vert_sync, mouse_click, enable, reset						: IN std_logic;	
		text_mode															: IN std_logic_vector(2 downto 0);
      pixel_row, pixel_column											: IN std_logic_vector(9 DOWNTO 0);
		box_on, touched_bot												: OUT std_logic);
		  		
END box;

architecture behavior of box is


SIGNAL size 											: std_logic_vector(9 DOWNTO 0);  
SIGNAL box_y_pos										: std_logic_vector(9 DOWNTO 0);
SiGNAL box_x_pos										: std_logic_vector(10 DOWNTO 0);
SIGNAL box_y_motion									: std_logic_vector(9 DOWNTO 0);
constant DEFAULT_WIDTH : std_logic_vector(9 DOWNTO 0) :=  CONV_STD_LOGIC_VECTOR(8, 10);
constant X_POS : std_logic_vector(10 DOWNTO 0) :=  CONV_STD_LOGIC_VECTOR(300, 11);

BEGIN           



size <= DEFAULT_WIDTH;
box_x_pos <= X_POS;

box_on <= '1' when ((text_mode = "000" or text_mode = "001") and ('0' & box_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & box_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & box_y_pos <= pixel_row + size) and ('0' & pixel_row <= box_y_pos + size))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0' ;

			
Move_Box: process (vert_sync) 
variable ball_hit_top : std_logic := '0';
constant FLY_MOTION : std_logic_vector(9 DOWNTO 0) :=  CONV_STD_LOGIC_VECTOR(9,10);
constant GRAVITY_MOTION : std_logic_vector(9 DOWNTO 0) :=  CONV_STD_LOGIC_VECTOR(2,10); 	 
begin

	-- Move box only on vertical sync 
	if (rising_edge(vert_sync)) then	
		
		if(reset = '1') then 
			-- Reset boxes position so don't auto die on respawn
			box_y_pos <= CONV_STD_LOGIC_VECTOR(200,10);
			touched_bot <= '0';
		end if;
		
		if(enable = '1') then 
			
			if ((box_y_pos >= CONV_STD_LOGIC_VECTOR(479,10)) ) then
				-- If box hits bottom of the screen
				touched_bot <= '1';
			elsif (box_y_pos <= CONV_STD_LOGIC_VECTOR(2,10)) then
				-- If ball hits top of the screen 
				box_y_pos <= CONV_STD_LOGIC_VECTOR(0,10);
				ball_hit_top := '1';
			else 
				ball_hit_top := '0';
				
			end if;
			
			
			
			--Apply Gravity	
			if(mouse_click = '1' and ball_hit_top = '0') then 
				--move upward on click
					box_y_motion <= - FLY_MOTION;
			else 
				-- Otherwise fall down 
				box_y_motion <= GRAVITY_MOTION;
			end if;
			
			-- Compute next ball Y position
			box_y_pos <= box_y_pos + box_y_motion;
			
			
			end if;	
		
	end if;
end process Move_Box;

END behavior;

