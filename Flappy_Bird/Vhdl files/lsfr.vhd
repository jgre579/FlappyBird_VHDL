library ieee;
    use ieee.std_logic_1164.all;
	 use ieee.std_logic_arith.all;
	 use ieee.std_logic_signed.all;
	 
-- random number generator

entity lfsr1 is
  port (
    clk    : in  std_logic; 
    rand_num_out  : out std_logic_vector (7 downto 0) -- lfsr output
  );
end lfsr1;

architecture behaviour of lfsr1 is
	signal rand_num: std_logic_vector (7 downto 0):= "01111111";

	begin
		process (clk) 
		variable temp : std_logic:= 0;
		begin
			if (rising_edge(clk)) then
            temp := rand_num(6) XOR rand_num(4) XOR rand_num(3) XOR rand_num(2) XOR rand_num(0);
				rand_num<= temp & rand_num(7 DOWNTO 1);
         end if;
      end process;
	rand_num_out <= rand_num;
end behaviour;
