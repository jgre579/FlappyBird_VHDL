LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity delay_counter is
	port (clk, enable, reset: in std_logic;
			number : in integer;
			q : out std_logic);
end delay_counter;

Architecture arc of delay_counter is
begin	
	
	process  is

	variable counter : integer := 0;
	variable t_q : std_logic := '0';
	
	begin 
		
		wait until rising_edge(clk);
		
		if(enable = '1') then 
			if(counter < number) then 
				counter := counter + 1;
				t_q := '0';
			else 
				counter := 0;
				t_q := '1';
			end if;
		else 
			t_q := '0';
		end if;
		
		q <= t_q;
		
		
	end process;
			
		
		
	

				

end architecture arc;
		