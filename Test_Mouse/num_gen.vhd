entity num_gen is

	port(
			digit_out : out bit_vector(3 downto 0));
end entity;

architecture behav of num_gen is 
begin 


digit_out <= "0101";

end architecture;