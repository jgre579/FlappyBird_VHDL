library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_textio.all;
	use ieee.numeric_std.ALL;
    use std.textio.all;
    
entity tb_lfsr1 is
end entity;

architecture test of tb_lfsr1 is

    constant PERIOD  : time   := 20 ns;
	
    signal clk       : std_logic := '0';
    signal reset     : std_logic := '1';
    signal count     : std_logic_vector (3 downto 0);
    signal endSim	 : boolean   := false;

    component lfsr1 is
    port (
        reset     : in  std_logic;                       
        clk       : in  std_logic;               
        count     : out std_logic_vector (3 downto 0)   
    );
    end component;
    

begin
    clk     <= not clk after PERIOD/2;
    reset   <= '0' after  PERIOD*10;
	endSim  <= true after PERIOD*80;

	-- End the simulation
	process 
	begin
		if (endSim) then
			assert false 
				report "End of simulation." 
				severity failure; 
		end if;
		wait until (clk = '1');
	end process;	

    lfrs1_inst : lfsr1
    port map (
        clk      => clk,
        reset    => reset,
        count    => count
    );

end architecture;