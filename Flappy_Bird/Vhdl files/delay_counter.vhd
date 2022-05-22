LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity delay_counter is
	port (clk, enable, reset : in std_logic;
			q : out std_logic);
end delay_counter;

Architecture arc of delay_counter is
begin	
	
	process (clk) is

	variable counter : integer := 0;
	
	begin 
		if(reset = '1') then 
			counter := 500000;
			
		else 
			counter := 0;
		end if;
		
		if(enable = '1') then 
			counter := 500000;
		else 
			counter := 0;
		end if;
		
	
		if (rising_edge(clk)) then
			
			if (counter > 0 ) then 
				counter := counter - 1;
				q <= '1';
			else
				q <='0';
			end if; 
			
		end if;
	end process;
			
		
		
	

				

end architecture arc;
		