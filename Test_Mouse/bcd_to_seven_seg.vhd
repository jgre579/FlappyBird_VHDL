entity bcd_to_seven_seg is

	port(digit : in bit_vector(3 downto 0);
			digit_out : out bit_vector(6 downto 0));
end entity;

architecture behav of bcd_to_seven_seg is 
signal LED_out :  bit_vector(6 downto 0);
begin 
process(digit)
begin 
	case digit is 
		when "0000" => LED_out <="0000001";
		when "0001" => LED_out <="1001111";
		when "0010" => LED_out <="0010010";
		when "0011" => LED_out <="0000110";
		when "0100" => LED_out <="1001100";
		when "0101" => LED_out <="0100100";
		when "0110" => LED_out <="0100000";
		when "0111" => LED_out <="0001111";
		when "1000" => LED_out <="0000000";
		when "1001" => LED_out <="0000100";
		when others => LED_out <="1111111";
	end case;
end process;

digit_out <= not LED_out;

end architecture;