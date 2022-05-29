LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY powerup_gen IS
	PORT
		(
		clk, vert_sync, enable, reset : in std_logic;
		pixel_row, pixel_column: IN std_logic_vector(9 DOWNTO 0);
		speed: IN std_logic_vector(2 DOWNTO 0);
		rand_num : in std_logic_vector(7 downto 0);
		score_ones : in std_logic_vector(5 downto 0);
		powerup_on : out std_logic
		
		
			);		
END powerup_gen;

architecture behavior of powerup_gen is

constant DEFAULT_WIDTH : std_logic_vector(9 DOWNTO 0) :=  CONV_STD_LOGIC_VECTOR(8, 10);
constant START_POS : std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(640,11);

SIGNAL powerup_x_pos	: std_logic_vector(10 DOWNTO 0);
SiGNAL powerup_y_pos	: std_logic_vector(10 DOWNTO 0);
SiGNAL powerup_x_motion	: std_logic_vector(9 DOWNTO 0);
SIGNAL size_x : std_logic_vector(9 DOWNTO 0) := DEFAULT_WIDTH;  
SIGNAL size_y : std_logic_vector(9 DOWNTO 0);
signal powerup_enable : std_logic;
BEGIN     

size_y <= CONV_STD_LOGIC_VECTOR(8, 10);
powerup_on <= '1' when (('0' & powerup_x_pos <= '0' & pixel_column) and ('0' & pixel_column <= '0' & powerup_x_pos + size_x) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & powerup_y_pos <= pixel_row) and ('0' & pixel_row <= powerup_y_pos + size_y)) else	-- y_pos - size <= pixel_row <= y_pos + size
			'0' ;  


Move_Powerup: process (clk) 

variable powerup_off_screen : std_logic := '1';

begin
	-- Move pipes once every vert_sync 
	-- will only move if switch is enabled
	if (rising_edge(vert_sync)) then 
	
		-- Enable powerups when the player score ends in a 1 or a 6, enable is on and no powerup is on screen. 
		if((score_ones = "110001" or score_ones = "110110")  and enable = '1' and powerup_off_screen = '1' ) then 
			-- Set powerup random y level
			powerup_y_pos <= ("000" & rand_num);
			powerup_enable <= '1';
			powerup_off_screen := '0';
		end if;
					
		if(powerup_enable = '1' and enable = '1') then 
		
			
			powerup_x_motion <= "0000000" & speed;
			
			if(powerup_x_pos <= CONV_STD_LOGIC_VECTOR(0, 10)) then 
			
				
				if(size_x = CONV_STD_LOGIC_VECTOR(0, 10)) then 
					powerup_x_pos <= START_POS;
					size_x <= DEFAULT_WIDTH;
					powerup_enable <='0';
					powerup_off_screen := '1';
				
				else 
					size_x <= size_x - powerup_x_motion;
				end if;
			
			
			else 
				powerup_x_pos <= powerup_x_pos - powerup_x_motion;
				size_x <= DEFAULT_WIDTH;
			end if;
			
			
		else 
			powerup_x_motion <= CONV_STD_LOGIC_VECTOR(0, 10);
		end if;
		
		
		
		
			
			
			
			if(reset = '1') then 
				-- resetting pipes after pressing the reset button
				powerup_x_pos <= START_POS;
				size_x <= DEFAULT_WIDTH;
				powerup_enable <= '0';
				powerup_off_screen := '1';
			end if;
		
		
		
		
				
								
		end if; 
	
	
	
	
	
	
end process Move_Powerup;			
			
			
			

END behavior;