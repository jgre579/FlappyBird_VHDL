
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY pipe_gen IS
	PORT
		(clk, vert_sync, enable, reset 			: IN std_logic;
         pixel_row, pixel_column					: IN std_logic_vector(9 DOWNTO 0);
			rand_num_out 								: IN std_logic_vector(7 DOWNTO 0);
			speed 										: IN std_logic_vector(2 DOWNTO 0);
			pipe_on, next_pipe_on, pipe_passed 	: OUT std_logic
			);		
END pipe_gen;

architecture behavior of pipe_gen is

SIGNAL pipe_width 			: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe_top_height 		: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_bot_height 		: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe_top_y_pos		: std_logic_vector(9 DOWNTO 0) := "0000000000";
SIGNAL pipe_bot_y_pos		: std_logic_vector(9 DOWNTO 0) := "0000000000";
SIGNAL pipe_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL pipe_x_motion			: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_top_on, pipe_bot_on : std_logic;
SIGNAL pipe_fade_x			: std_logic_vector(9 DOWNTO 0);


BEGIN           


--0110010000


---- Pipe coordinates start at its top lefts hadn corner to simplifiy calculations. 

pipe_top_on <= '1' when ( ('0' & pixel_column >= '0' & pipe_x_pos) and ('0' & pixel_column <= '0' & pipe_x_pos + pipe_width) 	-- x_pos <= pixel_column <= x_pos + size
					and ('0' & pixel_row <= pipe_top_y_pos))  else	-- y_pos <= pixel_row <= y_pos + size
			'0';

pipe_bot_on <= '1' when ( ('0' & pixel_column >= '0' & pipe_x_pos) and ('0' & pixel_column <= '0' & pipe_x_pos + pipe_width) 	-- x_pos <= pixel_column <= x_pos + size
					and ('0' & pipe_bot_y_pos <= pixel_row)) else	-- y_pos <= pixel_row <= y_pos + size
			'0';

pipe_on <= (pipe_bot_on or pipe_top_on);


Move_Pipes: process (clk) 

variable count : std_logic := '0';
variable v_next_pipe_on : std_logic := '0';
variable v_pipe_passed : std_logic := '0';
variable v_top :  std_logic_vector(9 DOWNTO 0);
variable v_bot :  std_logic_vector(9 DOWNTO 0);
variable v_rand : std_logic_vector(7 DOWNTO 0);

constant GAP_SIZE : std_logic_vector(9 DOWNTO 0) :=  CONV_STD_LOGIC_VECTOR(100, 10);
constant PIPE_PASSED_THRESHHOLD : std_logic_vector(10 DOWNTO 0) :=  CONV_STD_LOGIC_VECTOR(240, 11);
constant NEXT_PIPE_THRESHHOLD : std_logic_vector(10 DOWNTO 0) :=  CONV_STD_LOGIC_VECTOR(408, 11);
constant DEFAULT_WIDTH : std_logic_vector(9 DOWNTO 0) :=  CONV_STD_LOGIC_VECTOR(50, 10);
 -- By keeping the pipes positions a multiple of all speeds, a range dosent need to be checked for pipe_passed and next passed signlas, hence 648 rather than 640
constant PIPE_START_POS : std_logic_vector(10 DOWNTO 0) :=  CONV_STD_LOGIC_VECTOR(648,11); 
begin
	-- Move pipes once every vert_sync 
	if (rising_edge(vert_sync)) then 
	
		
		if(enable = '1') then 
			-- On startup or when pipes are fully off the screen, get another random number for pos
			if(pipe_width = CONV_STD_LOGIC_VECTOR(0, 11) or v_top = "0000000000") then 
				v_rand := rand_num_out;
				v_top := ("00" & v_rand);
				-- Add gap size to v_top to get the bottom pipe position v_bot
				v_bot := v_top + GAP_SIZE;
				 
			
			end if;
			
			
				
			if(count = '1') then
				
				pipe_x_motion <= "0000000" & speed;
				
				count := '0';
			else 
				pipe_x_motion <= CONV_STD_LOGIC_VECTOR(0,10);
				count := '1';
			end if;
				
		
			
		
		
--		pipe1  ___________________________________________________________________
			if(pipe_x_pos <= CONV_STD_LOGIC_VECTOR(0, 10)) then 
				
				-- If pipe width is now 0 	
				if(pipe_width <= CONV_STD_LOGIC_VECTOR(0, 10)) then 
					-- Reset pipes position and width 
					pipe_x_pos <= PIPE_START_POS;
					pipe_width <= DEFAULT_WIDTH;
				
				else 
					-- When x_pos = 0, shrink pipe width to gice the illusion of the pipe disappearing off screen
					pipe_width <= pipe_width - pipe_x_motion;
				end if;
				
				
			else 
				-- Move pipes normally
				pipe_x_pos <= pipe_x_pos - pipe_x_motion;
				pipe_width <= DEFAULT_WIDTH;
			end if;
			

			-- Use pipe postion for the emmision of game signals.
			if(pipe_x_pos = NEXT_PIPE_THRESHHOLD)then
				v_next_pipe_on := '1';
			else 
				v_next_pipe_on := '0';
			end if;
		
			if(pipe_x_pos = PIPE_PASSED_THRESHHOLD) then 
				v_pipe_passed := '1';
			else 
				v_pipe_passed :='0';
			end if;
			
			end if;
			
			if(reset = '1') then 
				-- resetting pipes after pressing the reset button
				pipe_x_pos <= PIPE_START_POS;
				pipe_width <= DEFAULT_WIDTH;
				v_next_pipe_on := '0';
				v_pipe_passed := '0';
			end if;
		
		
		
		
			next_pipe_on <= v_next_pipe_on;
			pipe_passed <= v_pipe_passed;
			pipe_top_y_pos <= v_top;
			pipe_bot_y_pos	<= v_bot;
								
		end if; 
	
	
	
	
	
	
end process Move_Pipes;

END behavior;
