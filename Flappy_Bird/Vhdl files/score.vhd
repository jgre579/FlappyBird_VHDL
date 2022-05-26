LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY score
 IS
	PORT(
				
		pipe_passed, reset, vert_sync, is_pipe_collided: in std_logic;
		score_ones,score_tens, score_hundreds, game_mode	: OUT std_logic_vector(5 downto 0)
		
		);		
END score;

architecture behavior of score is


SIGNAL current_score_ones							: std_logic_vector(5 DOWNTO 0) := "110000";  
SIGNAL current_score_tens 							: std_logic_vector(5 DOWNTO 0) := "110000";  
SIGNAL current_score_hundreds 					: std_logic_vector(5 DOWNTO 0) := "110000"; 
signal s_pipe_passed :std_logic :='0';


BEGIN    


process (vert_sync, pipe_passed) is

	variable v_current_score_ones							: std_logic_vector(5 DOWNTO 0) := "110000";  
	variable v_current_score_tens 							: std_logic_vector(5 DOWNTO 0) := "110000";  
	variable v_current_score_hundreds 					: std_logic_vector(5 DOWNTO 0) := "110000"; 


begin 
		
		
		if(rising_edge(vert_sync)) then 
			
			if(pipe_passed = '1') then 
				s_pipe_passed <= '1';
			end if;
			
			if(reset = '0' and s_pipe_passed = '1' and is_pipe_collided = '0') then 
				if(v_current_score_ones < "111001")then 
					v_current_score_ones := v_current_score_ones + "000001";
				elsif(v_current_score_tens < "111001")then
					v_current_score_ones := "110000";
					v_current_score_tens := v_current_score_tens + "000001";
				elsif(v_current_score_hundreds < "111001")then
					v_current_score_tens := "110000";
					v_current_score_hundreds := v_current_score_hundreds + "000001";
				end if;
				s_pipe_passed <= '0';
			elsif (reset = '1') then 
		
				v_current_score_ones := "110000";
				v_current_score_tens := "110000";
				v_current_score_hundreds := "110000"; 
			
					
			end if;
		end if;
		
		score_ones <= v_current_score_ones ;
		score_tens <= v_current_score_tens ;
		score_hundreds <= v_current_score_hundreds;
		
end process;
END behavior;

