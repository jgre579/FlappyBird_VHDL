LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY pipe_controller
 IS
	PORT(
		enable, clk, next_pipe, reset, timer_q, vert_sync 	: in std_logic;
		enable1, enable2, enable3, pipe_timer_enable 		: out std_logic

		);		
END pipe_controller;

architecture behavior of pipe_controller is




BEGIN     

process (clk) is

variable t_enable1 : std_logic := '0';
variable t_enable2 : std_logic := '0';
variable t_enable3 : std_logic := '0';
variable current_highest_pipe : integer range 0 to 3:= 0 ;

begin 
			
			if(rising_edge(vert_sync)) then 
				
					-- If all pipes are off turn pipe 1 var high 
					if (	t_enable1 = '0' and
							t_enable2 = '0' and 
							t_enable3 = '0') then 
							t_enable1 := '1';
					end if;
							
					-- When the next pipe has been requested generate next based on current highest pipe
					if(next_pipe = '1') then 
						
						case current_highest_pipe is 
							when 0 => 
								t_enable1 := '1';
								t_enable2 := '0';
								t_enable3 := '0';
							when 1 => 
								t_enable1 := '1';
								t_enable2 := '1';
								t_enable3 := '0';
							when 2 => 
								t_enable1 := '1';
								t_enable2 := '1';
								t_enable3 := '1';
							when others =>
								t_enable1 := '1';
								t_enable2 := '1';
								t_enable3 := '1';
						end case;
						
						-- Increment current highest pipe with max 3
						if(current_highest_pipe <= 2) then 
							current_highest_pipe := current_highest_pipe + 1;
						end if;
					end if;
								
				
				if(reset ='1') then 
						t_enable1 := '0';
						t_enable2 := '0';
						t_enable3 := '0';
						current_highest_pipe := 0;
						pipe_timer_enable <= '0';
				end if;
				
				-- Pipes cant be on unless game enable is also high
				enable1 <= t_enable1 and enable;
				enable2 <= t_enable2 and enable;
				enable3 <= t_enable3 and enable;
				
			end if;
end process;

END behavior;

