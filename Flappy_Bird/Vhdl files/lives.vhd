LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity lives is
	port (
	
	clk, reset, life_lost, timer_end : in std_logic;
	pixel_row, pixel_column : in std_logic_vector(9 downto 0);
	lives_on, game_over, s_life_taken, timer_enable, led2 : out std_logic;
	timer_number : out integer
	
	);
end lives;

Architecture arc of lives is

signal size : std_logic_vector(9 downto 0);
signal life1_x_pos : std_logic_vector(9 downto 0);
signal life2_x_pos : std_logic_vector(9 downto 0);
signal life3_x_pos : std_logic_vector(9 downto 0);
signal lives_y_pos : std_logic_vector(9 downto 0);
signal life1_on, life2_on, life3_on : std_logic;
signal loose_life : std_logic;
signal current_lives : integer range 0 to 3 := 3;
begin	

size <= CONV_STD_LOGIC_VECTOR(8,10);
 --ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
life1_x_pos <= CONV_STD_LOGIC_VECTOR(42,10);
life2_x_pos <= CONV_STD_LOGIC_VECTOR(72,10);
life3_x_pos <= CONV_STD_LOGIC_VECTOR(102,10);
lives_y_pos <= CONV_STD_LOGIC_VECTOR(55,10);

timer_number <= 12000000;
	
life1_on <= '1' when ( ('0' & life1_x_pos <= pixel_column + size) and ('0' & pixel_column <= life1_x_pos + size) 	-- x_pos <= pixel_column <= x_pos + size
					and ('0' & lives_y_pos <= pixel_row + size) and ('0' & pixel_row <= lives_y_pos + size) )  else	-- y_pos <= pixel_row <= y_pos + size
			'0';
			
life2_on <= '1' when ( ('0' & life2_x_pos <= pixel_column + size) and ('0' & pixel_column <= life2_x_pos + size) 	-- x_pos <= pixel_column <= x_pos + size
					and ('0' & lives_y_pos <= pixel_row + size) and ('0' & pixel_row <= lives_y_pos + size) )  else	-- y_pos <= pixel_row <= y_pos + size
			'0';	
			
life3_on <= '1' when ( ('0' & life3_x_pos <= pixel_column + size) and ('0' & pixel_column <= life3_x_pos + size) 	-- x_pos <= pixel_column <= x_pos + size
					and ('0' & lives_y_pos <= pixel_row + size) and ('0' & pixel_row <= lives_y_pos + size) )  else	-- y_pos <= pixel_row <= y_pos + size
			'0';

process (clk, reset) is


variable life_taken : std_logic := '0';

begin
	
	
	if(rising_edge(clk)) then 
	
		
		if(life_lost = '1') then 
			led2 <= '1';
			loose_life <='1';
			timer_enable <= '1';

		end if;

		if(timer_end = '1') then 
			timer_enable <= '0';
			loose_life <='0';
			led2 <= '0';
		end if;
		
--		if(reset = '1') then 
--			loose_life <= '1';
--		end if;
	
		
		
			
	end if;
end process;

process (loose_life) is 
variable v_current_lives : integer range 0 to 3 := 3;
variable v_game_over : std_logic := '0';
begin 
	if(loose_life = '1') then 
			if(v_current_lives > 1) then 
				
				v_current_lives := v_current_lives - 1;
			else 
				v_game_over := '1';
			end if; 
	end if;
	
	if(reset = '1') then 
			v_current_lives := 3;
			v_game_over := '0';
	end if;
	

	
	
	case v_current_lives is 
			when 3 =>
				lives_on <= life3_on or life2_on or life1_on;
			when 2 =>
				lives_on <= life2_on or life1_on;
			when 1 =>
				lives_on <= life1_on;
			when 0 =>
				lives_on <= '0';
		end case;
	current_lives <= v_current_lives;
	game_over <= v_game_over;
	
end process;	


	
		

			
			
		

				

end architecture arc;
		