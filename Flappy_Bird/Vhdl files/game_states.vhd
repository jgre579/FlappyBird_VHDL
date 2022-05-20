library ieee;
use ieee.std_logic_1164.all; 

entity game_states is
port(
	clk        			: in std_logic;
	pb1		  			: in std_logic;
	sw0 					: in std_logic;
	mode_sel				: in std_logic;
	bt1,bt2				: in std_logic;
	state_out         : out std_logic_vector(1 downto 0);
	reset					: out std_logic;
	mode					: out std_logic;
	pause					: out std_logic
);
end game_states;

architecture arc of game_states  is 

	
begin   
	process(clk)
	begin
		if (clk'event and clk = '1') then 
	end process;

	process(current_state,mode_sel)
	begin 
		end process;

end arc; 