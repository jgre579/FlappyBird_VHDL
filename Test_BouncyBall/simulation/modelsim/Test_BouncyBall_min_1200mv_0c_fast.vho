-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "05/09/2022 13:11:47"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Test_BouncyBall IS
    PORT (
	red_out : OUT std_logic;
	clk : IN std_logic;
	pb1 : IN std_logic;
	pb2 : IN std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic
	);
END Test_BouncyBall;

-- Design Ports Information
-- red_out	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Test_BouncyBall IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_pb2 : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Add2~1\ : std_logic;
SIGNAL \inst2|Add2~0_combout\ : std_logic;
SIGNAL \inst2|Add2~3\ : std_logic;
SIGNAL \inst2|Add2~2_combout\ : std_logic;
SIGNAL \inst2|Add2~5\ : std_logic;
SIGNAL \inst2|Add2~4_combout\ : std_logic;
SIGNAL \inst2|Add2~7\ : std_logic;
SIGNAL \inst2|Add2~6_combout\ : std_logic;
SIGNAL \inst2|Add2~9\ : std_logic;
SIGNAL \inst2|Add2~8_combout\ : std_logic;
SIGNAL \inst2|Add2~10_combout\ : std_logic;
SIGNAL \inst2|LessThan2~1_cout\ : std_logic;
SIGNAL \inst2|LessThan2~3_cout\ : std_logic;
SIGNAL \inst2|LessThan2~5_cout\ : std_logic;
SIGNAL \inst2|LessThan2~7_cout\ : std_logic;
SIGNAL \inst2|LessThan2~9_cout\ : std_logic;
SIGNAL \inst2|LessThan2~11_cout\ : std_logic;
SIGNAL \inst2|LessThan2~13_cout\ : std_logic;
SIGNAL \inst2|LessThan2~15_cout\ : std_logic;
SIGNAL \inst2|LessThan2~16_combout\ : std_logic;
SIGNAL \inst2|Add3~0_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|video_on_v~q\ : std_logic;
SIGNAL \inst3|green_out~1_combout\ : std_logic;
SIGNAL \inst2|ball_on~1_combout\ : std_logic;
SIGNAL \inst3|process_0~2_combout\ : std_logic;
SIGNAL \inst3|process_0~3_combout\ : std_logic;
SIGNAL \inst2|ball_y_motion[2]~0_combout\ : std_logic;
SIGNAL \inst2|ball_y_motion[2]~1_combout\ : std_logic;
SIGNAL \inst2|ball_y_motion[2]~2_combout\ : std_logic;
SIGNAL \inst2|ball_y_motion[2]~3_combout\ : std_logic;
SIGNAL \inst3|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|video_on_v~feeder_combout\ : std_logic;
SIGNAL \inst3|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|h_count~2_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|h_count~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|h_count~1_combout\ : std_logic;
SIGNAL \inst3|process_0~0_combout\ : std_logic;
SIGNAL \inst3|video_on_h~q\ : std_logic;
SIGNAL \inst3|red_out~0_combout\ : std_logic;
SIGNAL \inst3|red_out~q\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
SIGNAL \inst3|green_out~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~9\ : std_logic;
SIGNAL \inst3|Add1~11\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst3|Add1~15\ : std_logic;
SIGNAL \inst3|Add1~17\ : std_logic;
SIGNAL \inst3|Add1~18_combout\ : std_logic;
SIGNAL \inst3|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst3|process_0~12_combout\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|process_0~9_combout\ : std_logic;
SIGNAL \inst3|process_0~10_combout\ : std_logic;
SIGNAL \inst3|process_0~11_combout\ : std_logic;
SIGNAL \inst3|v_count~10_combout\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst3|v_count[3]~8_combout\ : std_logic;
SIGNAL \inst3|Add1~10_combout\ : std_logic;
SIGNAL \inst3|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst3|process_0~7_combout\ : std_logic;
SIGNAL \inst3|process_0~8_combout\ : std_logic;
SIGNAL \inst3|v_count[9]~1_combout\ : std_logic;
SIGNAL \inst3|Add1~16_combout\ : std_logic;
SIGNAL \inst3|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst3|pixel_row[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|LessThan7~0_combout\ : std_logic;
SIGNAL \inst3|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|ball_y_pos[1]~9_combout\ : std_logic;
SIGNAL \inst2|ball_y_pos[1]~10\ : std_logic;
SIGNAL \inst2|ball_y_pos[2]~11_combout\ : std_logic;
SIGNAL \inst2|ball_y_pos[2]~12\ : std_logic;
SIGNAL \inst2|ball_y_pos[3]~13_combout\ : std_logic;
SIGNAL \inst2|ball_y_pos[3]~14\ : std_logic;
SIGNAL \inst2|ball_y_pos[4]~15_combout\ : std_logic;
SIGNAL \inst2|ball_y_pos[4]~16\ : std_logic;
SIGNAL \inst2|ball_y_pos[5]~17_combout\ : std_logic;
SIGNAL \inst2|ball_y_pos[5]~18\ : std_logic;
SIGNAL \inst2|ball_y_pos[6]~19_combout\ : std_logic;
SIGNAL \inst2|ball_y_pos[6]~20\ : std_logic;
SIGNAL \inst2|ball_y_pos[7]~21_combout\ : std_logic;
SIGNAL \inst2|ball_y_pos[7]~22\ : std_logic;
SIGNAL \inst2|ball_y_pos[8]~23_combout\ : std_logic;
SIGNAL \inst2|Add3~1\ : std_logic;
SIGNAL \inst2|Add3~3\ : std_logic;
SIGNAL \inst2|Add3~5\ : std_logic;
SIGNAL \inst2|Add3~7\ : std_logic;
SIGNAL \inst2|Add3~8_combout\ : std_logic;
SIGNAL \inst2|Add3~6_combout\ : std_logic;
SIGNAL \inst2|Add3~4_combout\ : std_logic;
SIGNAL \inst2|Add3~2_combout\ : std_logic;
SIGNAL \inst3|v_count[4]~7_combout\ : std_logic;
SIGNAL \inst2|LessThan3~1_cout\ : std_logic;
SIGNAL \inst2|LessThan3~3_cout\ : std_logic;
SIGNAL \inst2|LessThan3~5_cout\ : std_logic;
SIGNAL \inst2|LessThan3~7_cout\ : std_logic;
SIGNAL \inst2|LessThan3~9_cout\ : std_logic;
SIGNAL \inst2|LessThan3~11_cout\ : std_logic;
SIGNAL \inst2|LessThan3~13_cout\ : std_logic;
SIGNAL \inst2|LessThan3~15_cout\ : std_logic;
SIGNAL \inst2|LessThan3~16_combout\ : std_logic;
SIGNAL \inst3|green_out~2_combout\ : std_logic;
SIGNAL \inst3|green_out~3_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|ball_on~0_combout\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst3|green_out~4_combout\ : std_logic;
SIGNAL \inst2|ball_y_pos[8]~24\ : std_logic;
SIGNAL \inst2|ball_y_pos[9]~25_combout\ : std_logic;
SIGNAL \inst2|Add3~9\ : std_logic;
SIGNAL \inst2|Add3~10_combout\ : std_logic;
SIGNAL \inst3|green_out~5_combout\ : std_logic;
SIGNAL \inst3|green_out~6_combout\ : std_logic;
SIGNAL \inst3|green_out~7_combout\ : std_logic;
SIGNAL \inst3|green_out~8_combout\ : std_logic;
SIGNAL \inst3|green_out~q\ : std_logic;
SIGNAL \inst3|blue_out~q\ : std_logic;
SIGNAL \inst3|process_0~1_combout\ : std_logic;
SIGNAL \inst3|process_0~4_combout\ : std_logic;
SIGNAL \inst3|horiz_sync~q\ : std_logic;
SIGNAL \inst3|horiz_sync_out~q\ : std_logic;
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|v_count~11_combout\ : std_logic;
SIGNAL \inst3|process_0~5_combout\ : std_logic;
SIGNAL \inst3|process_0~6_combout\ : std_logic;
SIGNAL \inst3|vert_sync~q\ : std_logic;
SIGNAL \inst3|vert_sync_out~q\ : std_logic;
SIGNAL \inst3|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ball_y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|pixel_row\ : std_logic_vector(9 DOWNTO 0);

BEGIN

red_out <= ww_red_out;
ww_clk <= clk;
ww_pb1 <= pb1;
ww_pb2 <= pb2;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst3|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|vert_sync_out~q\);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: LCCOMB_X29_Y12_N18
\inst2|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~0_combout\ = (\inst3|pixel_row\(3) & (\inst3|pixel_row\(4) $ (VCC))) # (!\inst3|pixel_row\(3) & (\inst3|pixel_row\(4) & VCC))
-- \inst2|Add2~1\ = CARRY((\inst3|pixel_row\(3) & \inst3|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(3),
	datab => \inst3|pixel_row\(4),
	datad => VCC,
	combout => \inst2|Add2~0_combout\,
	cout => \inst2|Add2~1\);

-- Location: LCCOMB_X29_Y12_N20
\inst2|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~2_combout\ = (\inst3|pixel_row\(5) & (!\inst2|Add2~1\)) # (!\inst3|pixel_row\(5) & ((\inst2|Add2~1\) # (GND)))
-- \inst2|Add2~3\ = CARRY((!\inst2|Add2~1\) # (!\inst3|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_row\(5),
	datad => VCC,
	cin => \inst2|Add2~1\,
	combout => \inst2|Add2~2_combout\,
	cout => \inst2|Add2~3\);

-- Location: LCCOMB_X29_Y12_N22
\inst2|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~4_combout\ = (\inst3|pixel_row\(6) & (\inst2|Add2~3\ $ (GND))) # (!\inst3|pixel_row\(6) & (!\inst2|Add2~3\ & VCC))
-- \inst2|Add2~5\ = CARRY((\inst3|pixel_row\(6) & !\inst2|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_row\(6),
	datad => VCC,
	cin => \inst2|Add2~3\,
	combout => \inst2|Add2~4_combout\,
	cout => \inst2|Add2~5\);

-- Location: LCCOMB_X29_Y12_N24
\inst2|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~6_combout\ = (\inst3|pixel_row\(7) & (!\inst2|Add2~5\)) # (!\inst3|pixel_row\(7) & ((\inst2|Add2~5\) # (GND)))
-- \inst2|Add2~7\ = CARRY((!\inst2|Add2~5\) # (!\inst3|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_row\(7),
	datad => VCC,
	cin => \inst2|Add2~5\,
	combout => \inst2|Add2~6_combout\,
	cout => \inst2|Add2~7\);

-- Location: LCCOMB_X29_Y12_N26
\inst2|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~8_combout\ = (\inst3|pixel_row\(8) & (\inst2|Add2~7\ $ (GND))) # (!\inst3|pixel_row\(8) & (!\inst2|Add2~7\ & VCC))
-- \inst2|Add2~9\ = CARRY((\inst3|pixel_row\(8) & !\inst2|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(8),
	datad => VCC,
	cin => \inst2|Add2~7\,
	combout => \inst2|Add2~8_combout\,
	cout => \inst2|Add2~9\);

-- Location: LCCOMB_X29_Y12_N28
\inst2|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~10_combout\ = \inst2|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Add2~9\,
	combout => \inst2|Add2~10_combout\);

-- Location: LCCOMB_X29_Y12_N0
\inst2|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_cout\ = CARRY((!\inst3|pixel_row\(1) & \inst2|ball_y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(1),
	datab => \inst2|ball_y_pos\(1),
	datad => VCC,
	cout => \inst2|LessThan2~1_cout\);

-- Location: LCCOMB_X29_Y12_N2
\inst2|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~3_cout\ = CARRY((\inst2|ball_y_pos\(2) & (\inst3|pixel_row\(2) & !\inst2|LessThan2~1_cout\)) # (!\inst2|ball_y_pos\(2) & ((\inst3|pixel_row\(2)) # (!\inst2|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(2),
	datab => \inst3|pixel_row\(2),
	datad => VCC,
	cin => \inst2|LessThan2~1_cout\,
	cout => \inst2|LessThan2~3_cout\);

-- Location: LCCOMB_X29_Y12_N4
\inst2|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~5_cout\ = CARRY((\inst3|pixel_row\(3) & ((\inst2|ball_y_pos\(3)) # (!\inst2|LessThan2~3_cout\))) # (!\inst3|pixel_row\(3) & (\inst2|ball_y_pos\(3) & !\inst2|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(3),
	datab => \inst2|ball_y_pos\(3),
	datad => VCC,
	cin => \inst2|LessThan2~3_cout\,
	cout => \inst2|LessThan2~5_cout\);

-- Location: LCCOMB_X29_Y12_N6
\inst2|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~7_cout\ = CARRY((\inst2|ball_y_pos\(4) & (\inst2|Add2~0_combout\ & !\inst2|LessThan2~5_cout\)) # (!\inst2|ball_y_pos\(4) & ((\inst2|Add2~0_combout\) # (!\inst2|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(4),
	datab => \inst2|Add2~0_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~5_cout\,
	cout => \inst2|LessThan2~7_cout\);

-- Location: LCCOMB_X29_Y12_N8
\inst2|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~9_cout\ = CARRY((\inst2|ball_y_pos\(5) & ((!\inst2|LessThan2~7_cout\) # (!\inst2|Add2~2_combout\))) # (!\inst2|ball_y_pos\(5) & (!\inst2|Add2~2_combout\ & !\inst2|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(5),
	datab => \inst2|Add2~2_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~7_cout\,
	cout => \inst2|LessThan2~9_cout\);

-- Location: LCCOMB_X29_Y12_N10
\inst2|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~11_cout\ = CARRY((\inst2|Add2~4_combout\ & ((!\inst2|LessThan2~9_cout\) # (!\inst2|ball_y_pos\(6)))) # (!\inst2|Add2~4_combout\ & (!\inst2|ball_y_pos\(6) & !\inst2|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~4_combout\,
	datab => \inst2|ball_y_pos\(6),
	datad => VCC,
	cin => \inst2|LessThan2~9_cout\,
	cout => \inst2|LessThan2~11_cout\);

-- Location: LCCOMB_X29_Y12_N12
\inst2|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~13_cout\ = CARRY((\inst2|ball_y_pos\(7) & ((!\inst2|LessThan2~11_cout\) # (!\inst2|Add2~6_combout\))) # (!\inst2|ball_y_pos\(7) & (!\inst2|Add2~6_combout\ & !\inst2|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(7),
	datab => \inst2|Add2~6_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~11_cout\,
	cout => \inst2|LessThan2~13_cout\);

-- Location: LCCOMB_X29_Y12_N14
\inst2|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~15_cout\ = CARRY((\inst2|ball_y_pos\(8) & (\inst2|Add2~8_combout\ & !\inst2|LessThan2~13_cout\)) # (!\inst2|ball_y_pos\(8) & ((\inst2|Add2~8_combout\) # (!\inst2|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(8),
	datab => \inst2|Add2~8_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~13_cout\,
	cout => \inst2|LessThan2~15_cout\);

-- Location: LCCOMB_X29_Y12_N16
\inst2|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~16_combout\ = (\inst2|Add2~10_combout\ & (!\inst2|LessThan2~15_cout\ & \inst2|ball_y_pos\(9))) # (!\inst2|Add2~10_combout\ & ((\inst2|ball_y_pos\(9)) # (!\inst2|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add2~10_combout\,
	datad => \inst2|ball_y_pos\(9),
	cin => \inst2|LessThan2~15_cout\,
	combout => \inst2|LessThan2~16_combout\);

-- Location: LCCOMB_X31_Y12_N20
\inst2|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~0_combout\ = (\inst2|ball_y_pos\(4) & (\inst2|ball_y_pos\(3) $ (VCC))) # (!\inst2|ball_y_pos\(4) & (\inst2|ball_y_pos\(3) & VCC))
-- \inst2|Add3~1\ = CARRY((\inst2|ball_y_pos\(4) & \inst2|ball_y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(4),
	datab => \inst2|ball_y_pos\(3),
	datad => VCC,
	combout => \inst2|Add3~0_combout\,
	cout => \inst2|Add3~1\);

-- Location: LCCOMB_X32_Y13_N8
\inst2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst3|pixel_column\(8) & (\inst2|Add0~7\ $ (GND))) # (!\inst3|pixel_column\(8) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst3|pixel_column\(8) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(8),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X30_Y13_N12
\inst3|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = (\inst3|v_count\(4) & (\inst3|Add1~7\ $ (GND))) # (!\inst3|v_count\(4) & (!\inst3|Add1~7\ & VCC))
-- \inst3|Add1~9\ = CARRY((\inst3|v_count\(4) & !\inst3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(4),
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\,
	cout => \inst3|Add1~9\);

-- Location: FF_X32_Y12_N13
\inst3|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|video_on_v~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|video_on_v~q\);

-- Location: FF_X30_Y12_N23
\inst3|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(7),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(7));

-- Location: FF_X30_Y12_N19
\inst3|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(6),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(6));

-- Location: FF_X30_Y12_N13
\inst3|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(5),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(5));

-- Location: FF_X30_Y12_N31
\inst3|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|pixel_row[1]~feeder_combout\,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(1));

-- Location: FF_X30_Y12_N7
\inst3|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(0),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(0));

-- Location: FF_X32_Y13_N7
\inst3|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(7),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(7));

-- Location: FF_X32_Y13_N31
\inst3|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(1),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(1));

-- Location: FF_X32_Y13_N21
\inst3|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(2),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(2));

-- Location: FF_X32_Y13_N27
\inst3|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(0),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(0));

-- Location: LCCOMB_X32_Y13_N26
\inst3|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~1_combout\ = (\inst3|pixel_column\(3)) # ((\inst3|pixel_column\(1) & (\inst3|pixel_column\(0) & \inst3|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(1),
	datab => \inst3|pixel_column\(3),
	datac => \inst3|pixel_column\(0),
	datad => \inst3|pixel_column\(2),
	combout => \inst3|green_out~1_combout\);

-- Location: LCCOMB_X32_Y13_N20
\inst2|ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_on~1_combout\ = ((\inst3|pixel_column\(3)) # (!\inst3|pixel_column\(2))) # (!\inst3|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(1),
	datac => \inst3|pixel_column\(2),
	datad => \inst3|pixel_column\(3),
	combout => \inst2|ball_on~1_combout\);

-- Location: FF_X32_Y12_N3
\inst2|ball_y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst2|ball_y_motion[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ball_y_motion\(2));

-- Location: LCCOMB_X32_Y13_N24
\inst3|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~2_combout\ = (\inst3|h_count\(3)) # ((\inst3|h_count\(0) & (!\inst3|h_count\(5) & \inst3|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(3),
	datab => \inst3|h_count\(0),
	datac => \inst3|h_count\(5),
	datad => \inst3|h_count\(1),
	combout => \inst3|process_0~2_combout\);

-- Location: LCCOMB_X31_Y13_N6
\inst3|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~3_combout\ = (\inst3|h_count\(4) & ((\inst3|h_count\(2)) # (\inst3|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(4),
	datac => \inst3|h_count\(2),
	datad => \inst3|process_0~2_combout\,
	combout => \inst3|process_0~3_combout\);

-- Location: LCCOMB_X32_Y12_N24
\inst2|ball_y_motion[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_motion[2]~0_combout\ = (\inst2|ball_y_pos\(6) & ((\inst2|ball_y_motion\(2)) # ((\inst2|ball_y_pos\(8) & \inst2|ball_y_pos\(7))))) # (!\inst2|ball_y_pos\(6) & (\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(8)) # (\inst2|ball_y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(6),
	datab => \inst2|ball_y_motion\(2),
	datac => \inst2|ball_y_pos\(8),
	datad => \inst2|ball_y_pos\(7),
	combout => \inst2|ball_y_motion[2]~0_combout\);

-- Location: LCCOMB_X31_Y12_N18
\inst2|ball_y_motion[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_motion[2]~1_combout\ = (\inst2|ball_y_pos\(3) & ((\inst2|ball_y_pos\(2)) # ((\inst2|ball_y_pos\(1)) # (\inst2|ball_y_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(2),
	datab => \inst2|ball_y_pos\(1),
	datac => \inst2|ball_y_pos\(3),
	datad => \inst2|ball_y_pos\(8),
	combout => \inst2|ball_y_motion[2]~1_combout\);

-- Location: LCCOMB_X32_Y12_N10
\inst2|ball_y_motion[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_motion[2]~2_combout\ = (\inst2|ball_y_pos\(5)) # ((\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(4)) # (\inst2|ball_y_motion[2]~1_combout\))) # (!\inst2|ball_y_motion\(2) & (\inst2|ball_y_pos\(4) & \inst2|ball_y_motion[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(5),
	datab => \inst2|ball_y_motion\(2),
	datac => \inst2|ball_y_pos\(4),
	datad => \inst2|ball_y_motion[2]~1_combout\,
	combout => \inst2|ball_y_motion[2]~2_combout\);

-- Location: LCCOMB_X32_Y12_N2
\inst2|ball_y_motion[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_motion[2]~3_combout\ = (\inst2|ball_y_pos\(9)) # ((\inst2|ball_y_motion[2]~0_combout\ & ((\inst2|ball_y_motion\(2)) # (\inst2|ball_y_motion[2]~2_combout\))) # (!\inst2|ball_y_motion[2]~0_combout\ & (\inst2|ball_y_motion\(2) & 
-- \inst2|ball_y_motion[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(9),
	datab => \inst2|ball_y_motion[2]~0_combout\,
	datac => \inst2|ball_y_motion\(2),
	datad => \inst2|ball_y_motion[2]~2_combout\,
	combout => \inst2|ball_y_motion[2]~3_combout\);

-- Location: CLKCTRL_G6
\inst3|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|vert_sync_out~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y12_N12
\inst3|video_on_v~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|video_on_v~feeder_combout\ = \inst3|LessThan7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|LessThan7~1_combout\,
	combout => \inst3|video_on_v~feeder_combout\);

-- Location: LCCOMB_X30_Y12_N30
\inst3|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pixel_row[1]~feeder_combout\ = \inst3|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|v_count\(1),
	combout => \inst3|pixel_row[1]~feeder_combout\);

-- Location: IOOBUF_X41_Y21_N23
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|red_out~q\,
	devoe => ww_devoe,
	o => ww_red_out);

-- Location: IOOBUF_X41_Y20_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|green_out~q\,
	devoe => ww_devoe,
	o => ww_green_out);

-- Location: IOOBUF_X41_Y21_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|blue_out~q\,
	devoe => ww_devoe,
	o => ww_blue_out);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\inst|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3403,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N15
\pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb1,
	o => \pb1~input_o\);

-- Location: LCCOMB_X33_Y13_N6
\inst3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|h_count\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X33_Y13_N8
\inst3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|h_count\(1) & (!\inst3|Add0~1\)) # (!\inst3|h_count\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: FF_X33_Y13_N9
\inst3|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(1));

-- Location: LCCOMB_X33_Y13_N10
\inst3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|h_count\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|h_count\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|h_count\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: FF_X33_Y13_N11
\inst3|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(2));

-- Location: LCCOMB_X33_Y13_N12
\inst3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|h_count\(3) & (!\inst3|Add0~5\)) # (!\inst3|h_count\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X33_Y13_N14
\inst3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|h_count\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|h_count\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|h_count\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: FF_X33_Y13_N15
\inst3|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(4));

-- Location: LCCOMB_X33_Y13_N16
\inst3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|h_count\(5) & (!\inst3|Add0~9\)) # (!\inst3|h_count\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X33_Y13_N26
\inst3|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|h_count~2_combout\ = (!\inst3|Equal0~2_combout\ & \inst3|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Equal0~2_combout\,
	datad => \inst3|Add0~10_combout\,
	combout => \inst3|h_count~2_combout\);

-- Location: FF_X33_Y13_N27
\inst3|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(5));

-- Location: LCCOMB_X33_Y13_N18
\inst3|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|h_count\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|h_count\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|h_count\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: FF_X33_Y13_N19
\inst3|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(6));

-- Location: LCCOMB_X33_Y13_N20
\inst3|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|h_count\(7) & (!\inst3|Add0~13\)) # (!\inst3|h_count\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: FF_X33_Y13_N21
\inst3|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(7));

-- Location: LCCOMB_X31_Y13_N14
\inst3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|h_count\(8) & (\inst3|h_count\(2) & (!\inst3|h_count\(5) & !\inst3|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datab => \inst3|h_count\(2),
	datac => \inst3|h_count\(5),
	datad => \inst3|h_count\(7),
	combout => \inst3|Equal0~1_combout\);

-- Location: FF_X33_Y13_N7
\inst3|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(0));

-- Location: LCCOMB_X33_Y13_N28
\inst3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|h_count\(3) & (\inst3|h_count\(4) & (\inst3|h_count\(1) & \inst3|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(3),
	datab => \inst3|h_count\(4),
	datac => \inst3|h_count\(1),
	datad => \inst3|h_count\(0),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y13_N22
\inst3|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|h_count\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|h_count\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|h_count\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X33_Y13_N24
\inst3|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = \inst3|h_count\(9) $ (\inst3|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(9),
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\);

-- Location: LCCOMB_X33_Y13_N4
\inst3|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|h_count~0_combout\ = (!\inst3|Equal0~2_combout\ & \inst3|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Equal0~2_combout\,
	datad => \inst3|Add0~18_combout\,
	combout => \inst3|h_count~0_combout\);

-- Location: FF_X33_Y13_N5
\inst3|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(9));

-- Location: LCCOMB_X31_Y13_N8
\inst3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|h_count\(6) & (\inst3|Equal0~1_combout\ & (\inst3|Equal0~0_combout\ & \inst3|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(6),
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|h_count\(9),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y13_N2
\inst3|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|h_count~1_combout\ = (!\inst3|Equal0~2_combout\ & \inst3|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~2_combout\,
	datac => \inst3|Add0~16_combout\,
	combout => \inst3|h_count~1_combout\);

-- Location: FF_X33_Y13_N3
\inst3|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(8));

-- Location: LCCOMB_X32_Y13_N22
\inst3|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~0_combout\ = ((!\inst3|h_count\(7) & !\inst3|h_count\(8))) # (!\inst3|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(7),
	datab => \inst3|h_count\(8),
	datad => \inst3|h_count\(9),
	combout => \inst3|process_0~0_combout\);

-- Location: FF_X32_Y13_N3
\inst3|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|video_on_h~q\);

-- Location: LCCOMB_X32_Y12_N18
\inst3|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|red_out~0_combout\ = (\inst3|video_on_v~q\ & (\pb1~input_o\ & \inst3|video_on_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|video_on_v~q\,
	datac => \pb1~input_o\,
	datad => \inst3|video_on_h~q\,
	combout => \inst3|red_out~0_combout\);

-- Location: FF_X32_Y13_N23
\inst3|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|red_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|red_out~q\);

-- Location: IOIBUF_X0_Y23_N1
\pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb2,
	o => \pb2~input_o\);

-- Location: LCCOMB_X32_Y12_N20
\inst3|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~0_combout\ = (\inst3|video_on_v~q\ & \inst3|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|video_on_v~q\,
	datad => \inst3|video_on_h~q\,
	combout => \inst3|green_out~0_combout\);

-- Location: LCCOMB_X31_Y13_N18
\inst3|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (\inst3|h_count\(8)) # ((\inst3|h_count\(2)) # ((!\inst3|h_count\(7)) # (!\inst3|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datab => \inst3|h_count\(2),
	datac => \inst3|h_count\(5),
	datad => \inst3|h_count\(7),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y13_N24
\inst3|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (\inst3|h_count\(6)) # ((\inst3|Equal1~0_combout\) # ((!\inst3|h_count\(9)) # (!\inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(6),
	datab => \inst3|Equal1~0_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|h_count\(9),
	combout => \inst3|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y13_N10
\inst3|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst3|v_count\(3) & (!\inst3|Add1~5\)) # (!\inst3|v_count\(3) & ((\inst3|Add1~5\) # (GND)))
-- \inst3|Add1~7\ = CARRY((!\inst3|Add1~5\) # (!\inst3|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(3),
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCCOMB_X30_Y13_N14
\inst3|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~10_combout\ = (\inst3|v_count\(5) & (!\inst3|Add1~9\)) # (!\inst3|v_count\(5) & ((\inst3|Add1~9\) # (GND)))
-- \inst3|Add1~11\ = CARRY((!\inst3|Add1~9\) # (!\inst3|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(5),
	datad => VCC,
	cin => \inst3|Add1~9\,
	combout => \inst3|Add1~10_combout\,
	cout => \inst3|Add1~11\);

-- Location: LCCOMB_X30_Y13_N16
\inst3|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~12_combout\ = (\inst3|v_count\(6) & (\inst3|Add1~11\ $ (GND))) # (!\inst3|v_count\(6) & (!\inst3|Add1~11\ & VCC))
-- \inst3|Add1~13\ = CARRY((\inst3|v_count\(6) & !\inst3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(6),
	datad => VCC,
	cin => \inst3|Add1~11\,
	combout => \inst3|Add1~12_combout\,
	cout => \inst3|Add1~13\);

-- Location: LCCOMB_X30_Y13_N28
\inst3|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[6]~4_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~12_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(6))))) # (!\inst3|v_count[2]~0_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(6),
	datad => \inst3|Add1~12_combout\,
	combout => \inst3|v_count[6]~4_combout\);

-- Location: FF_X30_Y13_N29
\inst3|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(6));

-- Location: LCCOMB_X30_Y13_N18
\inst3|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = (\inst3|v_count\(7) & (!\inst3|Add1~13\)) # (!\inst3|v_count\(7) & ((\inst3|Add1~13\) # (GND)))
-- \inst3|Add1~15\ = CARRY((!\inst3|Add1~13\) # (!\inst3|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(7),
	datad => VCC,
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~14_combout\,
	cout => \inst3|Add1~15\);

-- Location: LCCOMB_X29_Y13_N4
\inst3|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[7]~5_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~14_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(7))))) # (!\inst3|v_count[2]~0_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(7),
	datad => \inst3|Add1~14_combout\,
	combout => \inst3|v_count[7]~5_combout\);

-- Location: FF_X29_Y13_N5
\inst3|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(7));

-- Location: LCCOMB_X30_Y13_N20
\inst3|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~16_combout\ = (\inst3|v_count\(8) & (\inst3|Add1~15\ $ (GND))) # (!\inst3|v_count\(8) & (!\inst3|Add1~15\ & VCC))
-- \inst3|Add1~17\ = CARRY((\inst3|v_count\(8) & !\inst3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(8),
	datad => VCC,
	cin => \inst3|Add1~15\,
	combout => \inst3|Add1~16_combout\,
	cout => \inst3|Add1~17\);

-- Location: LCCOMB_X30_Y13_N22
\inst3|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~18_combout\ = \inst3|Add1~17\ $ (\inst3|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|v_count\(9),
	cin => \inst3|Add1~17\,
	combout => \inst3|Add1~18_combout\);

-- Location: LCCOMB_X30_Y13_N24
\inst3|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[9]~2_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~18_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(9))))) # (!\inst3|v_count[2]~0_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(9),
	datad => \inst3|Add1~18_combout\,
	combout => \inst3|v_count[9]~2_combout\);

-- Location: FF_X30_Y13_N25
\inst3|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(9));

-- Location: LCCOMB_X31_Y13_N20
\inst3|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~12_combout\ = (((!\inst3|h_count\(8) & !\inst3|h_count\(7))) # (!\inst3|v_count\(9))) # (!\inst3|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(9),
	datab => \inst3|v_count\(9),
	datac => \inst3|h_count\(8),
	datad => \inst3|h_count\(7),
	combout => \inst3|process_0~12_combout\);

-- Location: LCCOMB_X30_Y13_N4
\inst3|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = \inst3|v_count\(0) $ (VCC)
-- \inst3|Add1~1\ = CARRY(\inst3|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(0),
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X30_Y13_N6
\inst3|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst3|v_count\(1) & (!\inst3|Add1~1\)) # (!\inst3|v_count\(1) & ((\inst3|Add1~1\) # (GND)))
-- \inst3|Add1~3\ = CARRY((!\inst3|Add1~1\) # (!\inst3|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(1),
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: FF_X33_Y13_N13
\inst3|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(3));

-- Location: LCCOMB_X32_Y13_N16
\inst3|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~9_combout\ = ((!\inst3|h_count\(2) & ((!\inst3|h_count\(1)) # (!\inst3|h_count\(0))))) # (!\inst3|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(2),
	datab => \inst3|h_count\(0),
	datac => \inst3|h_count\(3),
	datad => \inst3|h_count\(1),
	combout => \inst3|process_0~9_combout\);

-- Location: LCCOMB_X31_Y13_N12
\inst3|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~10_combout\ = (\inst3|h_count\(5) & \inst3|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(5),
	datac => \inst3|h_count\(4),
	combout => \inst3|process_0~10_combout\);

-- Location: LCCOMB_X31_Y13_N10
\inst3|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~11_combout\ = (!\inst3|h_count\(6) & (!\inst3|h_count\(8) & ((\inst3|process_0~9_combout\) # (!\inst3|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(6),
	datab => \inst3|process_0~9_combout\,
	datac => \inst3|h_count\(8),
	datad => \inst3|process_0~10_combout\,
	combout => \inst3|process_0~11_combout\);

-- Location: LCCOMB_X31_Y13_N16
\inst3|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count~10_combout\ = (\inst3|Add1~2_combout\ & ((\inst3|process_0~8_combout\) # ((\inst3|process_0~12_combout\) # (\inst3|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~8_combout\,
	datab => \inst3|process_0~12_combout\,
	datac => \inst3|Add1~2_combout\,
	datad => \inst3|process_0~11_combout\,
	combout => \inst3|v_count~10_combout\);

-- Location: FF_X31_Y13_N17
\inst3|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count~10_combout\,
	ena => \inst3|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(1));

-- Location: LCCOMB_X30_Y13_N8
\inst3|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = (\inst3|v_count\(2) & (\inst3|Add1~3\ $ (GND))) # (!\inst3|v_count\(2) & (!\inst3|Add1~3\ & VCC))
-- \inst3|Add1~5\ = CARRY((\inst3|v_count\(2) & !\inst3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(2),
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~4_combout\,
	cout => \inst3|Add1~5\);

-- Location: LCCOMB_X31_Y13_N26
\inst3|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[2]~0_combout\ = (!\inst3|Equal1~1_combout\ & ((\inst3|process_0~11_combout\) # ((\inst3|process_0~8_combout\) # (\inst3|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~11_combout\,
	datab => \inst3|Equal1~1_combout\,
	datac => \inst3|process_0~8_combout\,
	datad => \inst3|process_0~12_combout\,
	combout => \inst3|v_count[2]~0_combout\);

-- Location: LCCOMB_X30_Y12_N26
\inst3|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[3]~8_combout\ = (\inst3|v_count[9]~1_combout\ & (\inst3|Add1~6_combout\ & ((\inst3|v_count[2]~0_combout\)))) # (!\inst3|v_count[9]~1_combout\ & ((\inst3|v_count\(3)) # ((\inst3|Add1~6_combout\ & \inst3|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[9]~1_combout\,
	datab => \inst3|Add1~6_combout\,
	datac => \inst3|v_count\(3),
	datad => \inst3|v_count[2]~0_combout\,
	combout => \inst3|v_count[3]~8_combout\);

-- Location: FF_X30_Y12_N27
\inst3|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(3));

-- Location: LCCOMB_X30_Y13_N30
\inst3|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[5]~3_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~10_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(5))))) # (!\inst3|v_count[2]~0_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(5),
	datad => \inst3|Add1~10_combout\,
	combout => \inst3|v_count[5]~3_combout\);

-- Location: FF_X30_Y13_N31
\inst3|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(5));

-- Location: LCCOMB_X33_Y13_N0
\inst3|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[2]~9_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~4_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(2))))) # (!\inst3|v_count[2]~0_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(2),
	datad => \inst3|Add1~4_combout\,
	combout => \inst3|v_count[2]~9_combout\);

-- Location: FF_X33_Y13_N1
\inst3|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(2));

-- Location: LCCOMB_X30_Y13_N0
\inst3|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~7_combout\ = (!\inst3|v_count\(4) & (!\inst3|v_count\(5) & ((!\inst3|v_count\(2)) # (!\inst3|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(4),
	datab => \inst3|v_count\(3),
	datac => \inst3|v_count\(5),
	datad => \inst3|v_count\(2),
	combout => \inst3|process_0~7_combout\);

-- Location: LCCOMB_X30_Y13_N26
\inst3|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~8_combout\ = (!\inst3|v_count\(8) & (\inst3|process_0~7_combout\ & (!\inst3|v_count\(7) & !\inst3|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(8),
	datab => \inst3|process_0~7_combout\,
	datac => \inst3|v_count\(7),
	datad => \inst3|v_count\(6),
	combout => \inst3|process_0~8_combout\);

-- Location: LCCOMB_X31_Y13_N0
\inst3|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[9]~1_combout\ = ((!\inst3|process_0~11_combout\ & (!\inst3|process_0~8_combout\ & !\inst3|process_0~12_combout\))) # (!\inst3|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~11_combout\,
	datab => \inst3|Equal1~1_combout\,
	datac => \inst3|process_0~8_combout\,
	datad => \inst3|process_0~12_combout\,
	combout => \inst3|v_count[9]~1_combout\);

-- Location: LCCOMB_X30_Y13_N2
\inst3|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[8]~6_combout\ = (\inst3|v_count[2]~0_combout\ & ((\inst3|Add1~16_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(8))))) # (!\inst3|v_count[2]~0_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[2]~0_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(8),
	datad => \inst3|Add1~16_combout\,
	combout => \inst3|v_count[8]~6_combout\);

-- Location: FF_X30_Y13_N3
\inst3|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(8));

-- Location: LCCOMB_X30_Y12_N2
\inst3|pixel_row[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pixel_row[8]~feeder_combout\ = \inst3|v_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|v_count\(8),
	combout => \inst3|pixel_row[8]~feeder_combout\);

-- Location: LCCOMB_X30_Y12_N28
\inst3|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LessThan7~0_combout\ = (\inst3|v_count\(7) & (\inst3|v_count\(6) & (\inst3|v_count\(5) & \inst3|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(7),
	datab => \inst3|v_count\(6),
	datac => \inst3|v_count\(5),
	datad => \inst3|v_count\(8),
	combout => \inst3|LessThan7~0_combout\);

-- Location: LCCOMB_X32_Y12_N0
\inst3|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LessThan7~1_combout\ = (!\inst3|LessThan7~0_combout\ & !\inst3|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|LessThan7~0_combout\,
	datad => \inst3|v_count\(9),
	combout => \inst3|LessThan7~1_combout\);

-- Location: FF_X30_Y12_N3
\inst3|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|pixel_row[8]~feeder_combout\,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(8));

-- Location: LCCOMB_X31_Y12_N0
\inst2|ball_y_pos[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_pos[1]~9_combout\ = \inst2|ball_y_pos\(1) $ (VCC)
-- \inst2|ball_y_pos[1]~10\ = CARRY(\inst2|ball_y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ball_y_pos\(1),
	datad => VCC,
	combout => \inst2|ball_y_pos[1]~9_combout\,
	cout => \inst2|ball_y_pos[1]~10\);

-- Location: FF_X31_Y12_N1
\inst2|ball_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst2|ball_y_pos[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ball_y_pos\(1));

-- Location: LCCOMB_X31_Y12_N2
\inst2|ball_y_pos[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_pos[2]~11_combout\ = (\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(2) & (\inst2|ball_y_pos[1]~10\ & VCC)) # (!\inst2|ball_y_pos\(2) & (!\inst2|ball_y_pos[1]~10\)))) # (!\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(2) & 
-- (!\inst2|ball_y_pos[1]~10\)) # (!\inst2|ball_y_pos\(2) & ((\inst2|ball_y_pos[1]~10\) # (GND)))))
-- \inst2|ball_y_pos[2]~12\ = CARRY((\inst2|ball_y_motion\(2) & (!\inst2|ball_y_pos\(2) & !\inst2|ball_y_pos[1]~10\)) # (!\inst2|ball_y_motion\(2) & ((!\inst2|ball_y_pos[1]~10\) # (!\inst2|ball_y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_motion\(2),
	datab => \inst2|ball_y_pos\(2),
	datad => VCC,
	cin => \inst2|ball_y_pos[1]~10\,
	combout => \inst2|ball_y_pos[2]~11_combout\,
	cout => \inst2|ball_y_pos[2]~12\);

-- Location: FF_X31_Y12_N3
\inst2|ball_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst2|ball_y_pos[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ball_y_pos\(2));

-- Location: LCCOMB_X31_Y12_N4
\inst2|ball_y_pos[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_pos[3]~13_combout\ = ((\inst2|ball_y_motion\(2) $ (\inst2|ball_y_pos\(3) $ (!\inst2|ball_y_pos[2]~12\)))) # (GND)
-- \inst2|ball_y_pos[3]~14\ = CARRY((\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(3)) # (!\inst2|ball_y_pos[2]~12\))) # (!\inst2|ball_y_motion\(2) & (\inst2|ball_y_pos\(3) & !\inst2|ball_y_pos[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_motion\(2),
	datab => \inst2|ball_y_pos\(3),
	datad => VCC,
	cin => \inst2|ball_y_pos[2]~12\,
	combout => \inst2|ball_y_pos[3]~13_combout\,
	cout => \inst2|ball_y_pos[3]~14\);

-- Location: FF_X31_Y12_N5
\inst2|ball_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst2|ball_y_pos[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ball_y_pos\(3));

-- Location: LCCOMB_X31_Y12_N6
\inst2|ball_y_pos[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_pos[4]~15_combout\ = (\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(4) & (\inst2|ball_y_pos[3]~14\ & VCC)) # (!\inst2|ball_y_pos\(4) & (!\inst2|ball_y_pos[3]~14\)))) # (!\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(4) & 
-- (!\inst2|ball_y_pos[3]~14\)) # (!\inst2|ball_y_pos\(4) & ((\inst2|ball_y_pos[3]~14\) # (GND)))))
-- \inst2|ball_y_pos[4]~16\ = CARRY((\inst2|ball_y_motion\(2) & (!\inst2|ball_y_pos\(4) & !\inst2|ball_y_pos[3]~14\)) # (!\inst2|ball_y_motion\(2) & ((!\inst2|ball_y_pos[3]~14\) # (!\inst2|ball_y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_motion\(2),
	datab => \inst2|ball_y_pos\(4),
	datad => VCC,
	cin => \inst2|ball_y_pos[3]~14\,
	combout => \inst2|ball_y_pos[4]~15_combout\,
	cout => \inst2|ball_y_pos[4]~16\);

-- Location: FF_X31_Y12_N7
\inst2|ball_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst2|ball_y_pos[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ball_y_pos\(4));

-- Location: LCCOMB_X31_Y12_N8
\inst2|ball_y_pos[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_pos[5]~17_combout\ = ((\inst2|ball_y_motion\(2) $ (\inst2|ball_y_pos\(5) $ (!\inst2|ball_y_pos[4]~16\)))) # (GND)
-- \inst2|ball_y_pos[5]~18\ = CARRY((\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(5)) # (!\inst2|ball_y_pos[4]~16\))) # (!\inst2|ball_y_motion\(2) & (\inst2|ball_y_pos\(5) & !\inst2|ball_y_pos[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_motion\(2),
	datab => \inst2|ball_y_pos\(5),
	datad => VCC,
	cin => \inst2|ball_y_pos[4]~16\,
	combout => \inst2|ball_y_pos[5]~17_combout\,
	cout => \inst2|ball_y_pos[5]~18\);

-- Location: FF_X31_Y12_N9
\inst2|ball_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst2|ball_y_pos[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ball_y_pos\(5));

-- Location: LCCOMB_X31_Y12_N10
\inst2|ball_y_pos[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_pos[6]~19_combout\ = (\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(6) & (\inst2|ball_y_pos[5]~18\ & VCC)) # (!\inst2|ball_y_pos\(6) & (!\inst2|ball_y_pos[5]~18\)))) # (!\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(6) & 
-- (!\inst2|ball_y_pos[5]~18\)) # (!\inst2|ball_y_pos\(6) & ((\inst2|ball_y_pos[5]~18\) # (GND)))))
-- \inst2|ball_y_pos[6]~20\ = CARRY((\inst2|ball_y_motion\(2) & (!\inst2|ball_y_pos\(6) & !\inst2|ball_y_pos[5]~18\)) # (!\inst2|ball_y_motion\(2) & ((!\inst2|ball_y_pos[5]~18\) # (!\inst2|ball_y_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_motion\(2),
	datab => \inst2|ball_y_pos\(6),
	datad => VCC,
	cin => \inst2|ball_y_pos[5]~18\,
	combout => \inst2|ball_y_pos[6]~19_combout\,
	cout => \inst2|ball_y_pos[6]~20\);

-- Location: FF_X31_Y12_N11
\inst2|ball_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst2|ball_y_pos[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ball_y_pos\(6));

-- Location: LCCOMB_X31_Y12_N12
\inst2|ball_y_pos[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_pos[7]~21_combout\ = ((\inst2|ball_y_motion\(2) $ (\inst2|ball_y_pos\(7) $ (!\inst2|ball_y_pos[6]~20\)))) # (GND)
-- \inst2|ball_y_pos[7]~22\ = CARRY((\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(7)) # (!\inst2|ball_y_pos[6]~20\))) # (!\inst2|ball_y_motion\(2) & (\inst2|ball_y_pos\(7) & !\inst2|ball_y_pos[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_motion\(2),
	datab => \inst2|ball_y_pos\(7),
	datad => VCC,
	cin => \inst2|ball_y_pos[6]~20\,
	combout => \inst2|ball_y_pos[7]~21_combout\,
	cout => \inst2|ball_y_pos[7]~22\);

-- Location: FF_X31_Y12_N13
\inst2|ball_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst2|ball_y_pos[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ball_y_pos\(7));

-- Location: LCCOMB_X31_Y12_N14
\inst2|ball_y_pos[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_pos[8]~23_combout\ = (\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(8) & (\inst2|ball_y_pos[7]~22\ & VCC)) # (!\inst2|ball_y_pos\(8) & (!\inst2|ball_y_pos[7]~22\)))) # (!\inst2|ball_y_motion\(2) & ((\inst2|ball_y_pos\(8) & 
-- (!\inst2|ball_y_pos[7]~22\)) # (!\inst2|ball_y_pos\(8) & ((\inst2|ball_y_pos[7]~22\) # (GND)))))
-- \inst2|ball_y_pos[8]~24\ = CARRY((\inst2|ball_y_motion\(2) & (!\inst2|ball_y_pos\(8) & !\inst2|ball_y_pos[7]~22\)) # (!\inst2|ball_y_motion\(2) & ((!\inst2|ball_y_pos[7]~22\) # (!\inst2|ball_y_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_motion\(2),
	datab => \inst2|ball_y_pos\(8),
	datad => VCC,
	cin => \inst2|ball_y_pos[7]~22\,
	combout => \inst2|ball_y_pos[8]~23_combout\,
	cout => \inst2|ball_y_pos[8]~24\);

-- Location: FF_X31_Y12_N15
\inst2|ball_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst2|ball_y_pos[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ball_y_pos\(8));

-- Location: LCCOMB_X31_Y12_N22
\inst2|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~2_combout\ = (\inst2|ball_y_pos\(5) & (!\inst2|Add3~1\)) # (!\inst2|ball_y_pos\(5) & ((\inst2|Add3~1\) # (GND)))
-- \inst2|Add3~3\ = CARRY((!\inst2|Add3~1\) # (!\inst2|ball_y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ball_y_pos\(5),
	datad => VCC,
	cin => \inst2|Add3~1\,
	combout => \inst2|Add3~2_combout\,
	cout => \inst2|Add3~3\);

-- Location: LCCOMB_X31_Y12_N24
\inst2|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~4_combout\ = (\inst2|ball_y_pos\(6) & (\inst2|Add3~3\ $ (GND))) # (!\inst2|ball_y_pos\(6) & (!\inst2|Add3~3\ & VCC))
-- \inst2|Add3~5\ = CARRY((\inst2|ball_y_pos\(6) & !\inst2|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(6),
	datad => VCC,
	cin => \inst2|Add3~3\,
	combout => \inst2|Add3~4_combout\,
	cout => \inst2|Add3~5\);

-- Location: LCCOMB_X31_Y12_N26
\inst2|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~6_combout\ = (\inst2|ball_y_pos\(7) & (!\inst2|Add3~5\)) # (!\inst2|ball_y_pos\(7) & ((\inst2|Add3~5\) # (GND)))
-- \inst2|Add3~7\ = CARRY((!\inst2|Add3~5\) # (!\inst2|ball_y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(7),
	datad => VCC,
	cin => \inst2|Add3~5\,
	combout => \inst2|Add3~6_combout\,
	cout => \inst2|Add3~7\);

-- Location: LCCOMB_X31_Y12_N28
\inst2|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~8_combout\ = (\inst2|ball_y_pos\(8) & (\inst2|Add3~7\ $ (GND))) # (!\inst2|ball_y_pos\(8) & (!\inst2|Add3~7\ & VCC))
-- \inst2|Add3~9\ = CARRY((\inst2|ball_y_pos\(8) & !\inst2|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ball_y_pos\(8),
	datad => VCC,
	cin => \inst2|Add3~7\,
	combout => \inst2|Add3~8_combout\,
	cout => \inst2|Add3~9\);

-- Location: LCCOMB_X31_Y13_N22
\inst3|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[4]~7_combout\ = (\inst3|Add1~8_combout\ & ((\inst3|v_count[2]~0_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(4))))) # (!\inst3|Add1~8_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~8_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(4),
	datad => \inst3|v_count[2]~0_combout\,
	combout => \inst3|v_count[4]~7_combout\);

-- Location: FF_X31_Y13_N23
\inst3|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(4));

-- Location: FF_X30_Y12_N15
\inst3|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(4),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(4));

-- Location: FF_X30_Y12_N21
\inst3|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(3),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(3));

-- Location: FF_X30_Y12_N11
\inst3|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(2),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(2));

-- Location: LCCOMB_X30_Y12_N6
\inst2|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~1_cout\ = CARRY(\inst3|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(0),
	datad => VCC,
	cout => \inst2|LessThan3~1_cout\);

-- Location: LCCOMB_X30_Y12_N8
\inst2|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~3_cout\ = CARRY((\inst3|pixel_row\(1) & (\inst2|ball_y_pos\(1) & !\inst2|LessThan3~1_cout\)) # (!\inst3|pixel_row\(1) & ((\inst2|ball_y_pos\(1)) # (!\inst2|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(1),
	datab => \inst2|ball_y_pos\(1),
	datad => VCC,
	cin => \inst2|LessThan3~1_cout\,
	cout => \inst2|LessThan3~3_cout\);

-- Location: LCCOMB_X30_Y12_N10
\inst2|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~5_cout\ = CARRY((\inst2|ball_y_pos\(2) & (\inst3|pixel_row\(2) & !\inst2|LessThan3~3_cout\)) # (!\inst2|ball_y_pos\(2) & ((\inst3|pixel_row\(2)) # (!\inst2|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(2),
	datab => \inst3|pixel_row\(2),
	datad => VCC,
	cin => \inst2|LessThan3~3_cout\,
	cout => \inst2|LessThan3~5_cout\);

-- Location: LCCOMB_X30_Y12_N12
\inst2|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~7_cout\ = CARRY((\inst2|ball_y_pos\(3) & (!\inst3|pixel_row\(3) & !\inst2|LessThan3~5_cout\)) # (!\inst2|ball_y_pos\(3) & ((!\inst2|LessThan3~5_cout\) # (!\inst3|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_pos\(3),
	datab => \inst3|pixel_row\(3),
	datad => VCC,
	cin => \inst2|LessThan3~5_cout\,
	cout => \inst2|LessThan3~7_cout\);

-- Location: LCCOMB_X30_Y12_N14
\inst2|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~9_cout\ = CARRY((\inst2|Add3~0_combout\ & (\inst3|pixel_row\(4) & !\inst2|LessThan3~7_cout\)) # (!\inst2|Add3~0_combout\ & ((\inst3|pixel_row\(4)) # (!\inst2|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add3~0_combout\,
	datab => \inst3|pixel_row\(4),
	datad => VCC,
	cin => \inst2|LessThan3~7_cout\,
	cout => \inst2|LessThan3~9_cout\);

-- Location: LCCOMB_X30_Y12_N16
\inst2|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~11_cout\ = CARRY((\inst3|pixel_row\(5) & (\inst2|Add3~2_combout\ & !\inst2|LessThan3~9_cout\)) # (!\inst3|pixel_row\(5) & ((\inst2|Add3~2_combout\) # (!\inst2|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(5),
	datab => \inst2|Add3~2_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~9_cout\,
	cout => \inst2|LessThan3~11_cout\);

-- Location: LCCOMB_X30_Y12_N18
\inst2|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~13_cout\ = CARRY((\inst3|pixel_row\(6) & ((!\inst2|LessThan3~11_cout\) # (!\inst2|Add3~4_combout\))) # (!\inst3|pixel_row\(6) & (!\inst2|Add3~4_combout\ & !\inst2|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(6),
	datab => \inst2|Add3~4_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~11_cout\,
	cout => \inst2|LessThan3~13_cout\);

-- Location: LCCOMB_X30_Y12_N20
\inst2|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~15_cout\ = CARRY((\inst3|pixel_row\(7) & (\inst2|Add3~6_combout\ & !\inst2|LessThan3~13_cout\)) # (!\inst3|pixel_row\(7) & ((\inst2|Add3~6_combout\) # (!\inst2|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(7),
	datab => \inst2|Add3~6_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~13_cout\,
	cout => \inst2|LessThan3~15_cout\);

-- Location: LCCOMB_X30_Y12_N22
\inst2|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~16_combout\ = (\inst3|pixel_row\(8) & ((!\inst2|Add3~8_combout\) # (!\inst2|LessThan3~15_cout\))) # (!\inst3|pixel_row\(8) & (!\inst2|LessThan3~15_cout\ & !\inst2|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_row\(8),
	datad => \inst2|Add3~8_combout\,
	cin => \inst2|LessThan3~15_cout\,
	combout => \inst2|LessThan3~16_combout\);

-- Location: FF_X32_Y13_N5
\inst3|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(6),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(6));

-- Location: FF_X32_Y13_N19
\inst3|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(4),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(4));

-- Location: FF_X32_Y13_N25
\inst3|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(5),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(5));

-- Location: LCCOMB_X32_Y13_N18
\inst3|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~2_combout\ = (\inst3|pixel_column\(6) & ((\inst3|pixel_column\(5)) # ((\inst3|green_out~1_combout\ & \inst3|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|green_out~1_combout\,
	datab => \inst3|pixel_column\(6),
	datac => \inst3|pixel_column\(4),
	datad => \inst3|pixel_column\(5),
	combout => \inst3|green_out~2_combout\);

-- Location: FF_X32_Y13_N9
\inst3|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(8),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(8));

-- Location: FF_X32_Y13_N11
\inst3|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(9),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(9));

-- Location: LCCOMB_X32_Y13_N28
\inst3|green_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~3_combout\ = (\inst3|pixel_column\(9) & ((\inst3|pixel_column\(7)) # ((\inst3|green_out~2_combout\) # (\inst3|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(7),
	datab => \inst3|green_out~2_combout\,
	datac => \inst3|pixel_column\(8),
	datad => \inst3|pixel_column\(9),
	combout => \inst3|green_out~3_combout\);

-- Location: FF_X32_Y13_N17
\inst3|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(3),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(3));

-- Location: LCCOMB_X32_Y13_N0
\inst2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = (\inst3|pixel_column\(4) & (\inst3|pixel_column\(3) $ (VCC))) # (!\inst3|pixel_column\(4) & (\inst3|pixel_column\(3) & VCC))
-- \inst2|Add0~1\ = CARRY((\inst3|pixel_column\(4) & \inst3|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(4),
	datab => \inst3|pixel_column\(3),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X32_Y13_N2
\inst2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst3|pixel_column\(5) & (!\inst2|Add0~1\)) # (!\inst3|pixel_column\(5) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst3|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(5),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X32_Y13_N4
\inst2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst3|pixel_column\(6) & (\inst2|Add0~3\ $ (GND))) # (!\inst3|pixel_column\(6) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst3|pixel_column\(6) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(6),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X32_Y13_N6
\inst2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst3|pixel_column\(7) & (!\inst2|Add0~5\)) # (!\inst3|pixel_column\(7) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst3|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(7),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X32_Y13_N10
\inst2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst3|pixel_column\(9) & (!\inst2|Add0~9\)) # (!\inst3|pixel_column\(9) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst3|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(9),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X32_Y13_N12
\inst2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = !\inst2|Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\);

-- Location: LCCOMB_X32_Y13_N30
\inst2|ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_on~0_combout\ = (\inst2|Add0~12_combout\) # (!\inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~10_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|ball_on~0_combout\);

-- Location: LCCOMB_X32_Y13_N14
\inst3|green_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~4_combout\ = (\inst2|Add0~4_combout\ & (((\inst2|Add0~0_combout\) # (\inst2|Add0~2_combout\)) # (!\inst2|ball_on~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_on~1_combout\,
	datab => \inst2|Add0~0_combout\,
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|Add0~2_combout\,
	combout => \inst3|green_out~4_combout\);

-- Location: LCCOMB_X31_Y12_N16
\inst2|ball_y_pos[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|ball_y_pos[9]~25_combout\ = \inst2|ball_y_motion\(2) $ (\inst2|ball_y_pos[8]~24\ $ (!\inst2|ball_y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ball_y_motion\(2),
	datad => \inst2|ball_y_pos\(9),
	cin => \inst2|ball_y_pos[8]~24\,
	combout => \inst2|ball_y_pos[9]~25_combout\);

-- Location: FF_X31_Y12_N17
\inst2|ball_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|vert_sync_out~clkctrl_outclk\,
	d => \inst2|ball_y_pos[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ball_y_pos\(9));

-- Location: LCCOMB_X31_Y12_N30
\inst2|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add3~10_combout\ = \inst2|Add3~9\ $ (\inst2|ball_y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ball_y_pos\(9),
	cin => \inst2|Add3~9\,
	combout => \inst2|Add3~10_combout\);

-- Location: LCCOMB_X32_Y12_N6
\inst3|green_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~5_combout\ = (!\inst2|Add3~10_combout\ & ((\inst2|Add0~8_combout\) # ((\inst2|Add0~6_combout\) # (\inst3|green_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~6_combout\,
	datac => \inst3|green_out~4_combout\,
	datad => \inst2|Add3~10_combout\,
	combout => \inst3|green_out~5_combout\);

-- Location: LCCOMB_X32_Y12_N28
\inst3|green_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~6_combout\ = (\inst2|Add2~10_combout\) # ((\inst3|green_out~3_combout\) # ((\inst2|ball_on~0_combout\) # (!\inst3|green_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~10_combout\,
	datab => \inst3|green_out~3_combout\,
	datac => \inst2|ball_on~0_combout\,
	datad => \inst3|green_out~5_combout\,
	combout => \inst3|green_out~6_combout\);

-- Location: LCCOMB_X30_Y12_N24
\inst3|green_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~7_combout\ = (\inst3|green_out~0_combout\ & ((\inst2|LessThan2~16_combout\) # ((\inst2|LessThan3~16_combout\) # (\inst3|green_out~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan2~16_combout\,
	datab => \inst3|green_out~0_combout\,
	datac => \inst2|LessThan3~16_combout\,
	datad => \inst3|green_out~6_combout\,
	combout => \inst3|green_out~7_combout\);

-- Location: LCCOMB_X30_Y12_N4
\inst3|green_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~8_combout\ = (!\pb2~input_o\ & \inst3|green_out~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb2~input_o\,
	datad => \inst3|green_out~7_combout\,
	combout => \inst3|green_out~8_combout\);

-- Location: FF_X30_Y12_N5
\inst3|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|green_out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|green_out~q\);

-- Location: FF_X30_Y12_N25
\inst3|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|green_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|blue_out~q\);

-- Location: LCCOMB_X31_Y13_N28
\inst3|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~1_combout\ = (\inst3|h_count\(7) & (!\inst3|h_count\(8) & \inst3|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(7),
	datac => \inst3|h_count\(8),
	datad => \inst3|h_count\(9),
	combout => \inst3|process_0~1_combout\);

-- Location: LCCOMB_X31_Y13_N4
\inst3|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~4_combout\ = ((\inst3|process_0~3_combout\ & (\inst3|h_count\(5) & \inst3|h_count\(6))) # (!\inst3|process_0~3_combout\ & (!\inst3|h_count\(5) & !\inst3|h_count\(6)))) # (!\inst3|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~3_combout\,
	datab => \inst3|process_0~1_combout\,
	datac => \inst3|h_count\(5),
	datad => \inst3|h_count\(6),
	combout => \inst3|process_0~4_combout\);

-- Location: FF_X31_Y13_N5
\inst3|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|horiz_sync~q\);

-- Location: FF_X36_Y13_N1
\inst3|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|horiz_sync_out~q\);

-- Location: LCCOMB_X31_Y13_N30
\inst3|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count~11_combout\ = (\inst3|Add1~0_combout\ & ((\inst3|process_0~8_combout\) # ((\inst3|process_0~12_combout\) # (\inst3|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~8_combout\,
	datab => \inst3|process_0~12_combout\,
	datac => \inst3|Add1~0_combout\,
	datad => \inst3|process_0~11_combout\,
	combout => \inst3|v_count~11_combout\);

-- Location: FF_X31_Y13_N31
\inst3|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count~11_combout\,
	ena => \inst3|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(0));

-- Location: LCCOMB_X30_Y12_N0
\inst3|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~5_combout\ = ((\inst3|v_count\(1) $ (!\inst3|v_count\(0))) # (!\inst3|v_count\(2))) # (!\inst3|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(1),
	datab => \inst3|v_count\(0),
	datac => \inst3|v_count\(3),
	datad => \inst3|v_count\(2),
	combout => \inst3|process_0~5_combout\);

-- Location: LCCOMB_X32_Y12_N22
\inst3|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~6_combout\ = ((\inst3|v_count\(4)) # ((\inst3|process_0~5_combout\) # (\inst3|v_count\(9)))) # (!\inst3|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan7~0_combout\,
	datab => \inst3|v_count\(4),
	datac => \inst3|process_0~5_combout\,
	datad => \inst3|v_count\(9),
	combout => \inst3|process_0~6_combout\);

-- Location: FF_X32_Y12_N23
\inst3|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vert_sync~q\);

-- Location: FF_X40_Y15_N17
\inst3|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vert_sync_out~q\);
END structure;


