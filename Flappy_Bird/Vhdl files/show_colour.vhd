LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity show_colour is
	port (red_ball,green_ball,blue_ball,red_text,green_text,blue_text, pb0: in std_logic;
			red,green,blue: out std_logic);
end show_colour;

Architecture arc of show_colour is
begin	
	process(pb0)
	begin 
			if(pb0 = '1')then
			red <= red_text;
			green <= green_text;
			else			
			red<=red_ball;
			green<=green_ball;
			blue<=blue_ball;
			end if;
	end process;

end architecture arc;
		