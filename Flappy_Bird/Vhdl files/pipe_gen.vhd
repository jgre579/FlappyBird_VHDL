LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY pipe_gen IS
	PORT
		(clk, vert_sync, enable, reset	: IN std_logic;
          pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
			pipe_on, pipe2_on, pipe3_on: OUT std_logic);		
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

SIGNAL pipe2_width 			: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe2_top_height 		: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe2_bot_height 		: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe2_top_y_pos		: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe2_bot_y_pos		: std_logic_vector(9 DOWNTO 0);
SiGNAL pipe2_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL pipe2_x_motion			: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe2_top_on, pipe2_bot_on : std_logic;

SIGNAL pipe3_width 			: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe3_top_height 		: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe3_bot_height 		: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe3_top_y_pos		: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe3_bot_y_pos		: std_logic_vector(9 DOWNTO 0);
SiGNAL pipe3_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL pipe3_x_motion			: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe3_top_on, pipe3_bot_on : std_logic;

SiGNAL pipe_fade_x			: std_logic_vector(9 DOWNTO 0);

BEGIN           


-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball

-- pipe 1  ___________________________________________________________________
pipe_top_height <= CONV_STD_LOGIC_VECTOR(150,10);
pipe_top_y_pos <= CONV_STD_LOGIC_VECTOR(200,10);

pipe_bot_height <= CONV_STD_LOGIC_VECTOR(490-300,10);
pipe_bot_y_pos <= CONV_STD_LOGIC_VECTOR(300,10);

pipe_top_on <= '1' when ( ('0' & pixel_column >= '0' & pipe_x_pos) and ('0' & pixel_column <= '0' & pipe_x_pos + pipe_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pixel_row <= pipe_top_y_pos) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe_bot_on <= '1' when ( ('0' & pixel_column >= '0' & pipe_x_pos) and ('0' & pixel_column <= '0' & pipe_x_pos + pipe_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pipe_bot_y_pos <= pixel_row) ) else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe_on <= pipe_bot_on or pipe_top_on;

-- pipe 2 ___________________________________________________________________
pipe2_top_height <= CONV_STD_LOGIC_VECTOR(100,10);
pipe2_top_y_pos <= CONV_STD_LOGIC_VECTOR(200,10);

pipe2_bot_height <= CONV_STD_LOGIC_VECTOR(490-300,10);
pipe2_bot_y_pos <= CONV_STD_LOGIC_VECTOR(300,10);

pipe2_top_on <= '1' when ( ('0' & pixel_column >= '0' & pipe2_x_pos) and ('0' & pixel_column <= '0' & pipe2_x_pos + pipe2_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pixel_row <= pipe2_top_y_pos) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe2_bot_on <= '1' when ( ('0' & pixel_column >= '0' & pipe2_x_pos) and ('0' & pixel_column <= '0' & pipe2_x_pos + pipe2_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pipe2_bot_y_pos <= pixel_row) ) else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe2_on <= pipe2_bot_on or pipe2_top_on;

-- pipe 3 ___________________________________________________________________
pipe3_top_height <= CONV_STD_LOGIC_VECTOR(150,10);
pipe3_top_y_pos <= CONV_STD_LOGIC_VECTOR(200,10);

pipe3_bot_height <= CONV_STD_LOGIC_VECTOR(490-300,10);
pipe3_bot_y_pos <= CONV_STD_LOGIC_VECTOR(300,10);

pipe3_top_on <= '1' when ( ('0' & pixel_column >= '0' & pipe3_x_pos) and ('0' & pixel_column <= '0' & pipe3_x_pos + pipe3_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pixel_row <= pipe2_top_y_pos) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe3_bot_on <= '1' when ( ('0' & pixel_column >= '0' & pipe3_x_pos) and ('0' & pixel_column <= '0' & pipe3_x_pos + pipe3_width) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pipe2_bot_y_pos <= pixel_row) ) else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

pipe3_on <= pipe3_bot_on or pipe3_top_on;

Move_Pipes: process (vert_sync) 

variable count : integer := 0;
variable count2 : integer := 0;
variable count3 : integer := 0;
variable enable_pipe2 : integer := 0; 
variable enable_pipe3 : integer := 0; 


begin
	-- Move pipes once every vert_sync 
	if (rising_edge(vert_sync) and enable = '1') then			
	
		--pipe 1  ___________________________________________________________________
		if(count = 2) then -- moving pipes once
			pipe_x_motion <= CONV_STD_LOGIC_VECTOR(1,10);
			
			count := 0;
		else -- resetting pipe count after moving 
			pipe_x_motion <= CONV_STD_LOGIC_VECTOR(0,10);
			count := count + 1;
		end if;
		
		--pipe2  ___________________________________________________________________
		
		if(pipe_x_pos = CONV_STD_LOGIC_VECTOR(415, 11))then
			enable_pipe2 := 1; 
		end if; 
		
		if(enable_pipe2 = 1)then 
			if(count2 = 2) then 
				pipe2_x_motion <= CONV_STD_LOGIC_VECTOR(1,10);
				count2 := 0;
			else
				pipe2_x_motion <= CONV_STD_LOGIC_VECTOR(0,10);
				count2 := count2 + 1;
			end if;
		end if; 
		
		--pipe3  ___________________________________________________________________
		
		if(pipe2_x_pos = CONV_STD_LOGIC_VECTOR(415, 11))then
			enable_pipe3 := 1; 
		end if; 
		
		if(enable_pipe3 = 1)then 
			if(count3 = 2) then 
				pipe3_x_motion <= CONV_STD_LOGIC_VECTOR(1,10);
				count3 := 0;
			else
				pipe3_x_motion <= CONV_STD_LOGIC_VECTOR(0,10);
				count3 := count3 + 1;
			end if;
		end if; 

		--pipe_x_pos <= CONV_STD_LOGIC_VECTOR(400, 11);
		
		
		-- Compute next ball Y position
			
--		if(pipe_x_pos = CONV_STD_LOGIC_VECTOR(0, 10) ) then 
--			pipe_width <= pipe_width - CONV_STD_LOGIC_VECTOR(2, 10);
--		else
--			pipe_width <= CONV_STD_LOGIC_VECTOR(50,10);
--		end if;
--		
--		
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
		
-- 	pipe2   ___________________________________________________________________
		if(pipe2_x_pos <= CONV_STD_LOGIC_VECTOR(0, 10)) then 
			if(pipe2_width <= CONV_STD_LOGIC_VECTOR(0, 10)) then 
				pipe2_x_pos <= CONV_STD_LOGIC_VECTOR(640,11);
				pipe2_width <= CONV_STD_LOGIC_VECTOR(50, 10);
			else 
				pipe2_width <= pipe2_width - pipe2_x_motion;
			end if;
			
			
		else 
			pipe2_x_pos <= pipe2_x_pos - pipe2_x_motion;
			pipe2_width <= CONV_STD_LOGIC_VECTOR(50, 10);
		end if;

-- 	pipe3   ___________________________________________________________________
		if(pipe3_x_pos <= CONV_STD_LOGIC_VECTOR(0, 10)) then 
			if(pipe3_width <= CONV_STD_LOGIC_VECTOR(0, 10)) then 
				pipe3_x_pos <= CONV_STD_LOGIC_VECTOR(640,11);
				pipe3_width <= CONV_STD_LOGIC_VECTOR(50, 10);
			else 
				pipe3_width <= pipe3_width - pipe3_x_motion;
			end if;
			
			
		else 
			pipe3_x_pos <= pipe3_x_pos - pipe3_x_motion;
			pipe3_width <= CONV_STD_LOGIC_VECTOR(50, 10);
		end if;


	end if;
end process Move_Pipes;

END behavior;

