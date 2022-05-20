library ieee;
    use ieee.std_logic_1164.all;

entity lfsr1 is
  port (
    reset  : in  std_logic;
    clk    : in  std_logic; 
    count  : out std_logic_vector (3 downto 0) -- lfsr output
  );
end entity;

architecture rtl of lfsr1 is
    signal count_i    	: std_logic_vector (3 downto 0);
    signal feedback 	: std_logic;

begin
    feedback <= not(count_i(3) xor count_i(2));		-- LFSR size 4

    process (reset, clk) 
	begin
        if (reset = '1') then
            count_i <= (others=>'0');
        elsif (rising_edge(clk)) then
			count_i <= count_i(2 downto 0) & feedback;
        end if;
    end process;
    count <= count_i;
end architecture;
