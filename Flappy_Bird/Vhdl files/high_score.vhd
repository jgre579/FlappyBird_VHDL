LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY high_score
 IS
	PORT(
		is_pipe_collided													: IN std_logic;
		score_ones,score_tens,score_hundreds						: IN std_logic_vector(5 downto 0);
		high_score_ones, high_score_tens, high_score_hundreds	: OUT std_logic_vector(5 downto 0)
		
		);		
END high_score;

architecture behavior of high_score is


BEGIN    


process (is_pipe_collided) is

	variable v_high_current_score_ones							: std_logic_vector(5 DOWNTO 0) := "110000";  
	variable v_high_current_score_tens 							: std_logic_vector(5 DOWNTO 0) := "110000";  
	variable v_high_current_score_hundreds 					: std_logic_vector(5 DOWNTO 0) := "110000"; 

begin 
		
		
		if(is_pipe_collided = '1') then 
			
			-- if score is three digits
			if(score_hundreds > v_high_current_score_hundreds)then
								v_high_current_score_ones := score_ones ;
								v_high_current_score_tens := score_tens ;
								v_high_current_score_hundreds := score_hundreds;
								
			-- if score is two digits 	
			elsif(score_tens > v_high_current_score_tens)then
				if(score_hundreds >= v_high_current_score_hundreds)then

								v_high_current_score_ones := score_ones ;
								v_high_current_score_tens := score_tens ;
								v_high_current_score_hundreds := score_hundreds;
				end if; 
				
			-- if score is one digit
			elsif(score_ones >= v_high_current_score_ones)then
				if(score_tens >= v_high_current_score_tens)then
					if(score_hundreds >= v_high_current_score_hundreds)then
								v_high_current_score_ones := score_ones ;
								v_high_current_score_tens := score_tens ;
								v_high_current_score_hundreds := score_hundreds;
					end if;
				end if; 
			end if; 
		
		high_score_ones <= v_high_current_score_ones ;
		high_score_tens <= v_high_current_score_tens ;
		high_score_hundreds <= v_high_current_score_hundreds;

		end if;
		
		

end process;




					
						


END behavior;

