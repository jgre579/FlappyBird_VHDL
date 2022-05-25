library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

entity fsm is

	port(
		clk, reset, start_btn, pause_btn, is_dead: in std_logic;
		game_enable, game_reset : out std_logic;
		text_mode : out std_logic_vector(2 downto 0)
	);
	
end fsm;

architecture behav of fsm is

type state_type is (entry_state, play_state, pause_state, dead_state, pause_debounce1, pause_debounce2 );
signal state, next_state : state_type;

begin 
sync_process : process(clk) is 
begin 
	if(rising_edge(clk)) then 
		if(reset = '0') then
			state <= entry_state;
		else 
			state <= next_state;
		end if;
	end if;
end process;

output_decode : process (state) is 
begin 
	case state is
		when entry_state =>
			game_enable <= '0';
			game_reset <= '1';
			text_mode <= "111";
		when play_state =>
			game_enable <= '1';
			game_reset <= '0';
			text_mode <= "001";
		when pause_state => 
			game_enable <= '0';
			game_reset <= '0';
			text_mode <= "000";
		when dead_state =>
			game_enable <= '0';
			game_reset <= '1';
			text_mode <="010";		
		when pause_debounce1 =>
			game_enable <= '0';
			game_reset <= '0';
			text_mode <= "000";
		when pause_debounce2 =>
			game_enable <= '0';
			game_reset <= '0';
			text_mode <= "000";
			--text_mode <= "000";		
		
		end case;
end process;

next_state_decode : process (state, start_btn, pause_btn, is_dead, reset) is 
begin 
	case (state) is 
		when entry_state =>
			-- Start button pressed (active low)
			if(start_btn = '0') then 
				next_state <= play_state;
			else
				next_state <= entry_state;
			end if;
		when play_state =>
			-- Pause button pressed and bird is not dead
			if(pause_btn = '0' and is_dead ='0') then 
				next_state <= pause_debounce1;
			elsif(pause_btn = '1' and is_dead = '0') then 
				next_state <= play_state;
			elsif(is_dead = '1') then 
				next_state <= dead_state;
			else 
				next_state <= play_state;
			end if; 
		when pause_debounce1 =>	
			-- Make sure button is released first
			if(pause_btn = '1') then 
				next_state <= pause_state;
			else 
				next_state <= pause_debounce1;
			end if; 
		when pause_state =>
			-- Pause button pressed
			if(pause_btn = '0') then 
				next_state <= pause_debounce2;
			else
				next_state <= pause_state;
			end if;
		when pause_debounce2 =>
			-- Pause button pressed
			if(pause_btn = '1') then 
				next_state <= play_state;
			else
				next_state <= pause_debounce2;
			end if;
		when dead_state =>
			if(reset = '0') then 
				next_state <= entry_state;
			else 
				next_state <= dead_state;
			end if;
	end case;
end process;
				
					
end architecture;			
			



















			