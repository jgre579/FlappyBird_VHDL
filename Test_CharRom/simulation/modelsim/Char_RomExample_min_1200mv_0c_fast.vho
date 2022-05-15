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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/14/2022 18:40:37"

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

ENTITY 	Char_RomExample IS
    PORT (
	red_out : OUT std_logic;
	clk : IN std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic
	);
END Char_RomExample;

-- Design Ports Information
-- red_out	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Char_RomExample IS
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
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|process_0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|Add1~10_combout\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|Add1~16_combout\ : std_logic;
SIGNAL \inst3|process_0~2_combout\ : std_logic;
SIGNAL \inst3|process_0~3_combout\ : std_logic;
SIGNAL \inst3|process_0~5_combout\ : std_logic;
SIGNAL \inst3|process_0~9_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan12~0_combout\ : std_logic;
SIGNAL \inst1|address[1]~4_combout\ : std_logic;
SIGNAL \inst1|address[1]~5_combout\ : std_logic;
SIGNAL \inst1|LessThan16~0_combout\ : std_logic;
SIGNAL \inst1|address[3]~7_combout\ : std_logic;
SIGNAL \inst1|address[0]~8_combout\ : std_logic;
SIGNAL \inst1|address[3]~9_combout\ : std_logic;
SIGNAL \inst3|pixel_row[6]~feeder_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|h_count~2_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|h_count~0_combout\ : std_logic;
SIGNAL \inst3|process_0~0_combout\ : std_logic;
SIGNAL \inst3|video_on_h~q\ : std_logic;
SIGNAL \inst3|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst3|v_count[4]~11_combout\ : std_logic;
SIGNAL \inst3|process_0~10_combout\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|h_count~1_combout\ : std_logic;
SIGNAL \inst3|process_0~11_combout\ : std_logic;
SIGNAL \inst3|v_count~7_combout\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst3|process_0~7_combout\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~9\ : std_logic;
SIGNAL \inst3|Add1~11\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst3|process_0~8_combout\ : std_logic;
SIGNAL \inst3|v_count[4]~0_combout\ : std_logic;
SIGNAL \inst3|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst3|Add1~15\ : std_logic;
SIGNAL \inst3|Add1~17\ : std_logic;
SIGNAL \inst3|Add1~18_combout\ : std_logic;
SIGNAL \inst3|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst3|process_0~12_combout\ : std_logic;
SIGNAL \inst3|v_count[9]~1_combout\ : std_logic;
SIGNAL \inst3|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst3|LessThan7~0_combout\ : std_logic;
SIGNAL \inst3|LessThan7~1_combout\ : std_logic;
SIGNAL \inst3|video_on_v~q\ : std_logic;
SIGNAL \inst3|red_out~0_combout\ : std_logic;
SIGNAL \inst3|v_count~8_combout\ : std_logic;
SIGNAL \inst3|pixel_row[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|pixel_row[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~2clkctrl_outclk\ : std_logic;
SIGNAL \inst3|v_count[3]~10_combout\ : std_logic;
SIGNAL \inst1|address[0]~2_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|address[0]~3_combout\ : std_logic;
SIGNAL \inst1|address[2]~6_combout\ : std_logic;
SIGNAL \inst1|address[2]~11_combout\ : std_logic;
SIGNAL \inst1|address[4]~10_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst3|red_out~1_combout\ : std_logic;
SIGNAL \inst3|red_out~q\ : std_logic;
SIGNAL \inst3|green_out~feeder_combout\ : std_logic;
SIGNAL \inst3|green_out~q\ : std_logic;
SIGNAL \inst3|process_0~1_combout\ : std_logic;
SIGNAL \inst3|process_0~4_combout\ : std_logic;
SIGNAL \inst3|horiz_sync~q\ : std_logic;
SIGNAL \inst3|horiz_sync_out~q\ : std_logic;
SIGNAL \inst3|process_0~6_combout\ : std_logic;
SIGNAL \inst3|vert_sync~q\ : std_logic;
SIGNAL \inst3|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst3|vert_sync_out~q\ : std_logic;
SIGNAL \inst3|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|font_col\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|font_row\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|address\ : std_logic_vector(5 DOWNTO 0);

BEGIN

red_out <= ww_red_out;
ww_clk <= clk;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|address\(4) & \inst1|address\(3) & \inst1|address\(2) & \inst1|address\(1) & \inst1|address\(0) & \inst1|font_row\(2) & \inst1|font_row\(1) & 
\inst1|font_row\(0));

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst1|process_0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|process_0~2_combout\);

\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: M9K_X25_Y19_N0
\inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "char_rom:inst|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y19_N8
\inst3|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = \inst3|v_count\(0) $ (VCC)
-- \inst3|Add1~1\ = CARRY(\inst3|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(0),
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X23_Y19_N10
\inst3|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst3|v_count\(1) & (!\inst3|Add1~1\)) # (!\inst3|v_count\(1) & ((\inst3|Add1~1\) # (GND)))
-- \inst3|Add1~3\ = CARRY((!\inst3|Add1~1\) # (!\inst3|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(1),
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: LCCOMB_X23_Y19_N14
\inst3|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst3|v_count\(3) & (!\inst3|Add1~5\)) # (!\inst3|v_count\(3) & ((\inst3|Add1~5\) # (GND)))
-- \inst3|Add1~7\ = CARRY((!\inst3|Add1~5\) # (!\inst3|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(3),
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCCOMB_X23_Y19_N16
\inst3|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = (\inst3|v_count\(4) & (\inst3|Add1~7\ $ (GND))) # (!\inst3|v_count\(4) & (!\inst3|Add1~7\ & VCC))
-- \inst3|Add1~9\ = CARRY((\inst3|v_count\(4) & !\inst3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(4),
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\,
	cout => \inst3|Add1~9\);

-- Location: LCCOMB_X23_Y19_N18
\inst3|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~10_combout\ = (\inst3|v_count\(5) & (!\inst3|Add1~9\)) # (!\inst3|v_count\(5) & ((\inst3|Add1~9\) # (GND)))
-- \inst3|Add1~11\ = CARRY((!\inst3|Add1~9\) # (!\inst3|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(5),
	datad => VCC,
	cin => \inst3|Add1~9\,
	combout => \inst3|Add1~10_combout\,
	cout => \inst3|Add1~11\);

-- Location: LCCOMB_X23_Y19_N20
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

-- Location: LCCOMB_X23_Y19_N24
\inst3|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~16_combout\ = (\inst3|v_count\(8) & (\inst3|Add1~15\ $ (GND))) # (!\inst3|v_count\(8) & (!\inst3|Add1~15\ & VCC))
-- \inst3|Add1~17\ = CARRY((\inst3|v_count\(8) & !\inst3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(8),
	datad => VCC,
	cin => \inst3|Add1~15\,
	combout => \inst3|Add1~16_combout\,
	cout => \inst3|Add1~17\);

-- Location: FF_X24_Y19_N7
\inst3|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|pixel_row[6]~feeder_combout\,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(6));

-- Location: FF_X28_Y19_N31
\inst3|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(3),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(3));

-- Location: LCCOMB_X26_Y20_N22
\inst3|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~2_combout\ = (\inst3|h_count\(2)) # ((!\inst3|h_count\(5) & (\inst3|h_count\(0) & \inst3|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(5),
	datab => \inst3|h_count\(0),
	datac => \inst3|h_count\(2),
	datad => \inst3|h_count\(1),
	combout => \inst3|process_0~2_combout\);

-- Location: LCCOMB_X26_Y20_N8
\inst3|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~3_combout\ = (\inst3|h_count\(4) & ((\inst3|h_count\(3)) # (\inst3|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(3),
	datab => \inst3|h_count\(4),
	datac => \inst3|process_0~2_combout\,
	combout => \inst3|process_0~3_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst3|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~5_combout\ = ((\inst3|v_count\(1) $ (!\inst3|v_count\(0))) # (!\inst3|v_count\(3))) # (!\inst3|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(2),
	datab => \inst3|v_count\(1),
	datac => \inst3|v_count\(0),
	datad => \inst3|v_count\(3),
	combout => \inst3|process_0~5_combout\);

-- Location: LCCOMB_X26_Y20_N10
\inst3|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~9_combout\ = ((!\inst3|h_count\(2) & ((!\inst3|h_count\(1)) # (!\inst3|h_count\(0))))) # (!\inst3|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(3),
	datab => \inst3|h_count\(0),
	datac => \inst3|h_count\(2),
	datad => \inst3|h_count\(1),
	combout => \inst3|process_0~9_combout\);

-- Location: LCCOMB_X26_Y20_N26
\inst3|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (\inst3|h_count\(8)) # (((\inst3|h_count\(2)) # (!\inst3|h_count\(7))) # (!\inst3|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datab => \inst3|h_count\(5),
	datac => \inst3|h_count\(2),
	datad => \inst3|h_count\(7),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y20_N2
\inst3|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (\inst3|Equal1~0_combout\) # (((\inst3|h_count\(6)) # (!\inst3|h_count\(9))) # (!\inst3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~0_combout\,
	datab => \inst3|Equal0~0_combout\,
	datac => \inst3|h_count\(9),
	datad => \inst3|h_count\(6),
	combout => \inst3|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y20_N12
\inst3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|h_count\(8) & (!\inst3|h_count\(5) & (\inst3|h_count\(2) & !\inst3|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datab => \inst3|h_count\(5),
	datac => \inst3|h_count\(2),
	datad => \inst3|h_count\(7),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y19_N10
\inst1|LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan12~0_combout\ = (\inst3|pixel_column\(6) & \inst3|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(6),
	datad => \inst3|pixel_column\(7),
	combout => \inst1|LessThan12~0_combout\);

-- Location: LCCOMB_X26_Y19_N4
\inst1|address[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address[1]~4_combout\ = \inst3|pixel_column\(6) $ (((!\inst3|pixel_column\(5) & \inst3|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(6),
	datac => \inst3|pixel_column\(5),
	datad => \inst3|pixel_column\(4),
	combout => \inst1|address[1]~4_combout\);

-- Location: LCCOMB_X26_Y19_N20
\inst1|address[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address[1]~5_combout\ = (\inst3|pixel_column\(8) & (\inst3|pixel_column\(7) & (\inst1|address[1]~4_combout\ & !\inst3|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(8),
	datab => \inst3|pixel_column\(7),
	datac => \inst1|address[1]~4_combout\,
	datad => \inst3|pixel_column\(9),
	combout => \inst1|address[1]~5_combout\);

-- Location: LCCOMB_X26_Y19_N26
\inst1|LessThan16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan16~0_combout\ = (((!\inst1|LessThan12~0_combout\) # (!\inst3|pixel_column\(8))) # (!\inst3|pixel_column\(5))) # (!\inst3|pixel_column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(4),
	datab => \inst3|pixel_column\(5),
	datac => \inst3|pixel_column\(8),
	datad => \inst1|LessThan12~0_combout\,
	combout => \inst1|LessThan16~0_combout\);

-- Location: LCCOMB_X27_Y19_N12
\inst1|address[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address[3]~7_combout\ = (\inst3|pixel_column\(6) & ((\inst3|pixel_column\(4)) # (\inst3|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(4),
	datac => \inst3|pixel_column\(5),
	datad => \inst3|pixel_column\(6),
	combout => \inst1|address[3]~7_combout\);

-- Location: LCCOMB_X26_Y19_N18
\inst1|address[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address[0]~8_combout\ = (\inst3|pixel_column\(7) & ((\inst3|pixel_column\(4) & (\inst3|pixel_column\(5) & !\inst3|pixel_column\(6))) # (!\inst3|pixel_column\(4) & (!\inst3|pixel_column\(5) & \inst3|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(4),
	datab => \inst3|pixel_column\(7),
	datac => \inst3|pixel_column\(5),
	datad => \inst3|pixel_column\(6),
	combout => \inst1|address[0]~8_combout\);

-- Location: LCCOMB_X26_Y19_N8
\inst1|address[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address[3]~9_combout\ = (\inst1|LessThan16~0_combout\ & ((\inst1|address[3]~7_combout\) # ((\inst1|address[0]~8_combout\ & \inst1|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|address[3]~7_combout\,
	datab => \inst1|LessThan16~0_combout\,
	datac => \inst1|address[0]~8_combout\,
	datad => \inst1|process_0~0_combout\,
	combout => \inst1|address[3]~9_combout\);

-- Location: LCCOMB_X28_Y19_N30
\inst1|font_col[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|font_col\(2) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((\inst3|pixel_column\(3)))) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|font_col\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|font_col\(2),
	datac => \inst3|pixel_column\(3),
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|font_col\(2));

-- Location: LCCOMB_X24_Y19_N6
\inst3|pixel_row[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pixel_row[6]~feeder_combout\ = \inst3|v_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|v_count\(6),
	combout => \inst3|pixel_row[6]~feeder_combout\);

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
	i => GND,
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
\inst2|altpll_component|auto_generated|pll1\ : cycloneiii_pll
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
	fbin => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y20_N10
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

-- Location: LCCOMB_X27_Y20_N12
\inst3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|h_count\(1) & (!\inst3|Add0~1\)) # (!\inst3|h_count\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X27_Y20_N14
\inst3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|h_count\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|h_count\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|h_count\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: FF_X27_Y20_N15
\inst3|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(2));

-- Location: LCCOMB_X27_Y20_N16
\inst3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|h_count\(3) & (!\inst3|Add0~5\)) # (!\inst3|h_count\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: FF_X27_Y20_N17
\inst3|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(3));

-- Location: LCCOMB_X27_Y20_N18
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

-- Location: FF_X27_Y20_N19
\inst3|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(4));

-- Location: LCCOMB_X27_Y20_N20
\inst3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|h_count\(5) & (!\inst3|Add0~9\)) # (!\inst3|h_count\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X27_Y20_N8
\inst3|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|h_count~2_combout\ = (!\inst3|Equal0~2_combout\ & \inst3|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~2_combout\,
	datad => \inst3|Add0~10_combout\,
	combout => \inst3|h_count~2_combout\);

-- Location: FF_X27_Y20_N9
\inst3|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(5));

-- Location: LCCOMB_X27_Y20_N22
\inst3|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|h_count\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|h_count\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|h_count\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X27_Y20_N24
\inst3|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|h_count\(7) & (!\inst3|Add0~13\)) # (!\inst3|h_count\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|h_count\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: FF_X27_Y20_N25
\inst3|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(7));

-- Location: LCCOMB_X27_Y20_N26
\inst3|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|h_count\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|h_count\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|h_count\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X27_Y20_N28
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

-- Location: LCCOMB_X27_Y20_N4
\inst3|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|h_count~0_combout\ = (!\inst3|Equal0~2_combout\ & \inst3|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~2_combout\,
	datad => \inst3|Add0~18_combout\,
	combout => \inst3|h_count~0_combout\);

-- Location: FF_X27_Y20_N5
\inst3|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(9));

-- Location: LCCOMB_X26_Y20_N30
\inst3|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~0_combout\ = ((!\inst3|h_count\(8) & !\inst3|h_count\(7))) # (!\inst3|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datab => \inst3|h_count\(7),
	datac => \inst3|h_count\(9),
	combout => \inst3|process_0~0_combout\);

-- Location: FF_X28_Y19_N29
\inst3|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|video_on_h~q\);

-- Location: LCCOMB_X23_Y19_N2
\inst3|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[6]~4_combout\ = (\inst3|Add1~12_combout\ & ((\inst3|v_count[4]~0_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(6))))) # (!\inst3|Add1~12_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~12_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(6),
	datad => \inst3|v_count[4]~0_combout\,
	combout => \inst3|v_count[6]~4_combout\);

-- Location: FF_X23_Y19_N3
\inst3|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(6));

-- Location: LCCOMB_X23_Y19_N0
\inst3|v_count[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[4]~11_combout\ = (\inst3|Add1~8_combout\ & ((\inst3|v_count[4]~0_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(4))))) # (!\inst3|Add1~8_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~8_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(4),
	datad => \inst3|v_count[4]~0_combout\,
	combout => \inst3|v_count[4]~11_combout\);

-- Location: FF_X23_Y19_N1
\inst3|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(4));

-- Location: LCCOMB_X26_Y20_N24
\inst3|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~10_combout\ = (\inst3|h_count\(5) & \inst3|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|h_count\(5),
	datad => \inst3|h_count\(4),
	combout => \inst3|process_0~10_combout\);

-- Location: FF_X27_Y20_N11
\inst3|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(0));

-- Location: FF_X27_Y20_N13
\inst3|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(1));

-- Location: LCCOMB_X26_Y20_N16
\inst3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|h_count\(3) & (\inst3|h_count\(4) & (\inst3|h_count\(0) & \inst3|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(3),
	datab => \inst3|h_count\(4),
	datac => \inst3|h_count\(0),
	datad => \inst3|h_count\(1),
	combout => \inst3|Equal0~0_combout\);

-- Location: FF_X27_Y20_N23
\inst3|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(6));

-- Location: LCCOMB_X26_Y20_N14
\inst3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (\inst3|Equal0~1_combout\ & (\inst3|Equal0~0_combout\ & (\inst3|h_count\(9) & !\inst3|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~1_combout\,
	datab => \inst3|Equal0~0_combout\,
	datac => \inst3|h_count\(9),
	datad => \inst3|h_count\(6),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y20_N30
\inst3|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|h_count~1_combout\ = (\inst3|Add0~16_combout\ & !\inst3|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~16_combout\,
	datad => \inst3|Equal0~2_combout\,
	combout => \inst3|h_count~1_combout\);

-- Location: FF_X27_Y20_N31
\inst3|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|h_count\(8));

-- Location: LCCOMB_X26_Y20_N18
\inst3|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~11_combout\ = (!\inst3|h_count\(8) & (!\inst3|h_count\(6) & ((\inst3|process_0~9_combout\) # (!\inst3|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~9_combout\,
	datab => \inst3|process_0~10_combout\,
	datac => \inst3|h_count\(8),
	datad => \inst3|h_count\(6),
	combout => \inst3|process_0~11_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst3|v_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count~7_combout\ = (\inst3|Add1~0_combout\ & ((\inst3|process_0~12_combout\) # ((\inst3|process_0~8_combout\) # (\inst3|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~0_combout\,
	datab => \inst3|process_0~12_combout\,
	datac => \inst3|process_0~8_combout\,
	datad => \inst3|process_0~11_combout\,
	combout => \inst3|v_count~7_combout\);

-- Location: FF_X23_Y20_N1
\inst3|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count~7_combout\,
	ena => \inst3|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(0));

-- Location: LCCOMB_X23_Y19_N12
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

-- Location: LCCOMB_X24_Y19_N30
\inst3|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[2]~9_combout\ = (\inst3|v_count[9]~1_combout\ & (\inst3|v_count[4]~0_combout\ & ((\inst3|Add1~4_combout\)))) # (!\inst3|v_count[9]~1_combout\ & ((\inst3|v_count\(2)) # ((\inst3|v_count[4]~0_combout\ & \inst3|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[9]~1_combout\,
	datab => \inst3|v_count[4]~0_combout\,
	datac => \inst3|v_count\(2),
	datad => \inst3|Add1~4_combout\,
	combout => \inst3|v_count[2]~9_combout\);

-- Location: FF_X24_Y19_N31
\inst3|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(2));

-- Location: LCCOMB_X23_Y19_N30
\inst3|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~7_combout\ = (!\inst3|v_count\(4) & (!\inst3|v_count\(5) & ((!\inst3|v_count\(2)) # (!\inst3|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(3),
	datab => \inst3|v_count\(4),
	datac => \inst3|v_count\(2),
	datad => \inst3|v_count\(5),
	combout => \inst3|process_0~7_combout\);

-- Location: LCCOMB_X23_Y19_N22
\inst3|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = (\inst3|v_count\(7) & (!\inst3|Add1~13\)) # (!\inst3|v_count\(7) & ((\inst3|Add1~13\) # (GND)))
-- \inst3|Add1~15\ = CARRY((!\inst3|Add1~13\) # (!\inst3|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(7),
	datad => VCC,
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~14_combout\,
	cout => \inst3|Add1~15\);

-- Location: LCCOMB_X24_Y19_N22
\inst3|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[7]~5_combout\ = (\inst3|v_count[9]~1_combout\ & (\inst3|Add1~14_combout\ & ((\inst3|v_count[4]~0_combout\)))) # (!\inst3|v_count[9]~1_combout\ & ((\inst3|v_count\(7)) # ((\inst3|Add1~14_combout\ & \inst3|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[9]~1_combout\,
	datab => \inst3|Add1~14_combout\,
	datac => \inst3|v_count\(7),
	datad => \inst3|v_count[4]~0_combout\,
	combout => \inst3|v_count[7]~5_combout\);

-- Location: FF_X24_Y19_N23
\inst3|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(7));

-- Location: LCCOMB_X22_Y19_N0
\inst3|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~8_combout\ = (!\inst3|v_count\(8) & (!\inst3|v_count\(6) & (\inst3|process_0~7_combout\ & !\inst3|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(8),
	datab => \inst3|v_count\(6),
	datac => \inst3|process_0~7_combout\,
	datad => \inst3|v_count\(7),
	combout => \inst3|process_0~8_combout\);

-- Location: LCCOMB_X23_Y20_N8
\inst3|v_count[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[4]~0_combout\ = (!\inst3|Equal1~1_combout\ & ((\inst3|process_0~12_combout\) # ((\inst3|process_0~8_combout\) # (\inst3|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~1_combout\,
	datab => \inst3|process_0~12_combout\,
	datac => \inst3|process_0~8_combout\,
	datad => \inst3|process_0~11_combout\,
	combout => \inst3|v_count[4]~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\inst3|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[8]~6_combout\ = (\inst3|Add1~16_combout\ & ((\inst3|v_count[4]~0_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(8))))) # (!\inst3|Add1~16_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~16_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(8),
	datad => \inst3|v_count[4]~0_combout\,
	combout => \inst3|v_count[8]~6_combout\);

-- Location: FF_X23_Y19_N5
\inst3|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(8));

-- Location: LCCOMB_X23_Y19_N26
\inst3|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add1~18_combout\ = \inst3|v_count\(9) $ (\inst3|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|v_count\(9),
	cin => \inst3|Add1~17\,
	combout => \inst3|Add1~18_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst3|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[9]~2_combout\ = (\inst3|v_count[9]~1_combout\ & (\inst3|Add1~18_combout\ & ((\inst3|v_count[4]~0_combout\)))) # (!\inst3|v_count[9]~1_combout\ & ((\inst3|v_count\(9)) # ((\inst3|Add1~18_combout\ & \inst3|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count[9]~1_combout\,
	datab => \inst3|Add1~18_combout\,
	datac => \inst3|v_count\(9),
	datad => \inst3|v_count[4]~0_combout\,
	combout => \inst3|v_count[9]~2_combout\);

-- Location: FF_X24_Y19_N1
\inst3|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(9));

-- Location: LCCOMB_X26_Y20_N20
\inst3|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~12_combout\ = (((!\inst3|h_count\(8) & !\inst3|h_count\(7))) # (!\inst3|v_count\(9))) # (!\inst3|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datab => \inst3|h_count\(7),
	datac => \inst3|h_count\(9),
	datad => \inst3|v_count\(9),
	combout => \inst3|process_0~12_combout\);

-- Location: LCCOMB_X23_Y20_N26
\inst3|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[9]~1_combout\ = ((!\inst3|process_0~12_combout\ & (!\inst3|process_0~8_combout\ & !\inst3|process_0~11_combout\))) # (!\inst3|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~1_combout\,
	datab => \inst3|process_0~12_combout\,
	datac => \inst3|process_0~8_combout\,
	datad => \inst3|process_0~11_combout\,
	combout => \inst3|v_count[9]~1_combout\);

-- Location: LCCOMB_X23_Y19_N28
\inst3|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[5]~3_combout\ = (\inst3|Add1~10_combout\ & ((\inst3|v_count[4]~0_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(5))))) # (!\inst3|Add1~10_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~10_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(5),
	datad => \inst3|v_count[4]~0_combout\,
	combout => \inst3|v_count[5]~3_combout\);

-- Location: FF_X23_Y19_N29
\inst3|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(5));

-- Location: LCCOMB_X24_Y19_N20
\inst3|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LessThan7~0_combout\ = (\inst3|v_count\(6) & (\inst3|v_count\(5) & (\inst3|v_count\(8) & \inst3|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|v_count\(6),
	datab => \inst3|v_count\(5),
	datac => \inst3|v_count\(8),
	datad => \inst3|v_count\(7),
	combout => \inst3|LessThan7~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\inst3|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LessThan7~1_combout\ = (!\inst3|LessThan7~0_combout\ & !\inst3|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LessThan7~0_combout\,
	datad => \inst3|v_count\(9),
	combout => \inst3|LessThan7~1_combout\);

-- Location: FF_X24_Y19_N27
\inst3|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|video_on_v~q\);

-- Location: LCCOMB_X28_Y19_N28
\inst3|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|red_out~0_combout\ = (\inst3|video_on_h~q\ & \inst3|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|video_on_h~q\,
	datad => \inst3|video_on_v~q\,
	combout => \inst3|red_out~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\inst3|v_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count~8_combout\ = (\inst3|Add1~2_combout\ & ((\inst3|process_0~12_combout\) # ((\inst3|process_0~8_combout\) # (\inst3|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~2_combout\,
	datab => \inst3|process_0~12_combout\,
	datac => \inst3|process_0~8_combout\,
	datad => \inst3|process_0~11_combout\,
	combout => \inst3|v_count~8_combout\);

-- Location: FF_X23_Y20_N31
\inst3|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count~8_combout\,
	ena => \inst3|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(1));

-- Location: FF_X24_Y19_N9
\inst3|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(1),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(1));

-- Location: LCCOMB_X24_Y19_N24
\inst3|pixel_row[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pixel_row[5]~feeder_combout\ = \inst3|v_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|v_count\(5),
	combout => \inst3|pixel_row[5]~feeder_combout\);

-- Location: FF_X24_Y19_N25
\inst3|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|pixel_row[5]~feeder_combout\,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(5));

-- Location: FF_X24_Y19_N19
\inst3|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(8),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(8));

-- Location: LCCOMB_X24_Y19_N28
\inst3|pixel_row[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pixel_row[7]~feeder_combout\ = \inst3|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|v_count\(7),
	combout => \inst3|pixel_row[7]~feeder_combout\);

-- Location: FF_X24_Y19_N29
\inst3|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|pixel_row[7]~feeder_combout\,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(7));

-- Location: LCCOMB_X24_Y19_N18
\inst1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (!\inst3|pixel_row\(6) & (!\inst3|pixel_row\(5) & (!\inst3|pixel_row\(8) & !\inst3|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_row\(6),
	datab => \inst3|pixel_row\(5),
	datac => \inst3|pixel_row\(8),
	datad => \inst3|pixel_row\(7),
	combout => \inst1|process_0~1_combout\);

-- Location: FF_X24_Y19_N13
\inst3|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(4),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(4));

-- Location: FF_X26_Y19_N7
\inst3|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(7),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(7));

-- Location: LCCOMB_X24_Y19_N12
\inst1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|process_0~0_combout\ & (\inst1|process_0~1_combout\ & (\inst3|pixel_row\(4) & \inst3|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|process_0~1_combout\,
	datac => \inst3|pixel_row\(4),
	datad => \inst3|pixel_column\(7),
	combout => \inst1|process_0~2_combout\);

-- Location: CLKCTRL_G14
\inst1|process_0~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|process_0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|process_0~2clkctrl_outclk\);

-- Location: LCCOMB_X24_Y19_N8
\inst1|font_row[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|font_row\(0) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((\inst3|pixel_row\(1)))) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|font_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|font_row\(0),
	datac => \inst3|pixel_row\(1),
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|font_row\(0));

-- Location: FF_X24_Y19_N15
\inst3|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(2),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(2));

-- Location: LCCOMB_X24_Y19_N14
\inst1|font_row[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|font_row\(1) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((\inst3|pixel_row\(2)))) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|font_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|font_row\(1),
	datac => \inst3|pixel_row\(2),
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|font_row\(1));

-- Location: LCCOMB_X23_Y19_N6
\inst3|v_count[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|v_count[3]~10_combout\ = (\inst3|Add1~6_combout\ & ((\inst3|v_count[4]~0_combout\) # ((!\inst3|v_count[9]~1_combout\ & \inst3|v_count\(3))))) # (!\inst3|Add1~6_combout\ & (!\inst3|v_count[9]~1_combout\ & (\inst3|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~6_combout\,
	datab => \inst3|v_count[9]~1_combout\,
	datac => \inst3|v_count\(3),
	datad => \inst3|v_count[4]~0_combout\,
	combout => \inst3|v_count[3]~10_combout\);

-- Location: FF_X23_Y19_N7
\inst3|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|v_count[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|v_count\(3));

-- Location: FF_X24_Y19_N11
\inst3|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|v_count\(3),
	sload => VCC,
	ena => \inst3|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(3));

-- Location: LCCOMB_X24_Y19_N10
\inst1|font_row[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|font_row\(2) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((\inst3|pixel_row\(3)))) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|font_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|font_row\(2),
	datac => \inst3|pixel_row\(3),
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|font_row\(2));

-- Location: FF_X26_Y19_N19
\inst3|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(5),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(5));

-- Location: FF_X26_Y19_N17
\inst3|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(6),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(6));

-- Location: LCCOMB_X26_Y19_N24
\inst1|address[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address[0]~2_combout\ = ((!\inst3|pixel_column\(5) & !\inst3|pixel_column\(6))) # (!\inst3|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(7),
	datab => \inst3|pixel_column\(5),
	datad => \inst3|pixel_column\(6),
	combout => \inst1|address[0]~2_combout\);

-- Location: FF_X26_Y19_N13
\inst3|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(4),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(4));

-- Location: FF_X26_Y19_N31
\inst3|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(9),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(9));

-- Location: FF_X26_Y19_N25
\inst3|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(8),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(8));

-- Location: LCCOMB_X26_Y19_N22
\inst1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (!\inst3|pixel_column\(9) & \inst3|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|pixel_column\(9),
	datad => \inst3|pixel_column\(8),
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X26_Y19_N12
\inst1|address[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address[0]~3_combout\ = (!\inst1|address[0]~2_combout\ & (\inst1|process_0~0_combout\ & ((\inst3|pixel_column\(4)) # (!\inst1|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan12~0_combout\,
	datab => \inst1|address[0]~2_combout\,
	datac => \inst3|pixel_column\(4),
	datad => \inst1|process_0~0_combout\,
	combout => \inst1|address[0]~3_combout\);

-- Location: LCCOMB_X26_Y19_N2
\inst1|address[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address\(0) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((\inst1|address[0]~3_combout\))) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|address\(0),
	datac => \inst1|address[0]~3_combout\,
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|address\(0));

-- Location: LCCOMB_X24_Y19_N2
\inst1|address[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address\(1) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|address[1]~5_combout\)) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((\inst1|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|address[1]~5_combout\,
	datab => \inst1|address\(1),
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|address\(1));

-- Location: LCCOMB_X26_Y19_N16
\inst1|address[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address[2]~6_combout\ = (\inst3|pixel_column\(5) & (!\inst3|pixel_column\(6))) # (!\inst3|pixel_column\(5) & ((\inst3|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pixel_column\(5),
	datac => \inst3|pixel_column\(6),
	datad => \inst3|pixel_column\(4),
	combout => \inst1|address[2]~6_combout\);

-- Location: LCCOMB_X26_Y19_N6
\inst1|address[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address[2]~11_combout\ = (((\inst3|pixel_column\(9)) # (!\inst3|pixel_column\(7))) # (!\inst1|address[2]~6_combout\)) # (!\inst3|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(8),
	datab => \inst1|address[2]~6_combout\,
	datac => \inst3|pixel_column\(7),
	datad => \inst3|pixel_column\(9),
	combout => \inst1|address[2]~11_combout\);

-- Location: LCCOMB_X26_Y19_N28
\inst1|address[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address\(2) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((\inst1|address[2]~11_combout\))) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|address\(2),
	datac => \inst1|address[2]~11_combout\,
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|address\(2));

-- Location: LCCOMB_X26_Y19_N14
\inst1|address[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address\(3) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|address[3]~9_combout\)) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((\inst1|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|address[3]~9_combout\,
	datac => \inst1|address\(3),
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|address\(3));

-- Location: LCCOMB_X26_Y19_N30
\inst1|address[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address[4]~10_combout\ = (\inst3|pixel_column\(8) & (!\inst1|address[0]~2_combout\ & !\inst3|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pixel_column\(8),
	datab => \inst1|address[0]~2_combout\,
	datac => \inst3|pixel_column\(9),
	combout => \inst1|address[4]~10_combout\);

-- Location: LCCOMB_X26_Y19_N0
\inst1|address[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|address\(4) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((!\inst1|address[4]~10_combout\))) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|address\(4),
	datac => \inst1|address[4]~10_combout\,
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|address\(4));

-- Location: FF_X28_Y19_N3
\inst3|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(1),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(1));

-- Location: LCCOMB_X28_Y19_N2
\inst1|font_col[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|font_col\(0) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((\inst3|pixel_column\(1)))) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|font_col\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|font_col\(0),
	datac => \inst3|pixel_column\(1),
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|font_col\(0));

-- Location: FF_X28_Y19_N9
\inst3|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|h_count\(2),
	sload => VCC,
	ena => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(2));

-- Location: LCCOMB_X28_Y19_N8
\inst1|font_col[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|font_col\(1) = (GLOBAL(\inst1|process_0~2clkctrl_outclk\) & ((\inst3|pixel_column\(2)))) # (!GLOBAL(\inst1|process_0~2clkctrl_outclk\) & (\inst1|font_col\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|font_col\(1),
	datac => \inst3|pixel_column\(2),
	datad => \inst1|process_0~2clkctrl_outclk\,
	combout => \inst1|font_col\(1));

-- Location: LCCOMB_X28_Y19_N6
\inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst1|font_col\(1) & (((\inst|altsyncram_component|auto_generated|q_a\(1)) # (\inst1|font_col\(0))))) # (!\inst1|font_col\(1) & (\inst|altsyncram_component|auto_generated|q_a\(3) & ((!\inst1|font_col\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst1|font_col\(1),
	datad => \inst1|font_col\(0),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y19_N4
\inst|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst1|font_col\(0) & ((\inst|Mux0~0_combout\ & (\inst|altsyncram_component|auto_generated|q_a\(0))) # (!\inst|Mux0~0_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(2)))))) # (!\inst1|font_col\(0) & 
-- (((\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst1|font_col\(0),
	datad => \inst|Mux0~0_combout\,
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y19_N10
\inst|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\inst1|font_col\(1) & (((\inst1|font_col\(0))))) # (!\inst1|font_col\(1) & ((\inst1|font_col\(0) & (\inst|altsyncram_component|auto_generated|q_a\(6))) # (!\inst1|font_col\(0) & 
-- ((\inst|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst1|font_col\(1),
	datad => \inst1|font_col\(0),
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y19_N0
\inst|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\inst1|font_col\(1) & ((\inst|Mux0~2_combout\ & (\inst|altsyncram_component|auto_generated|q_a\(4))) # (!\inst|Mux0~2_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(5)))))) # (!\inst1|font_col\(1) & 
-- (((\inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst1|font_col\(1),
	datad => \inst|Mux0~2_combout\,
	combout => \inst|Mux0~3_combout\);

-- Location: LCCOMB_X28_Y19_N24
\inst3|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|red_out~1_combout\ = (\inst3|red_out~0_combout\ & ((\inst1|font_col\(2) & (\inst|Mux0~1_combout\)) # (!\inst1|font_col\(2) & ((\inst|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|font_col\(2),
	datab => \inst3|red_out~0_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Mux0~3_combout\,
	combout => \inst3|red_out~1_combout\);

-- Location: FF_X28_Y19_N25
\inst3|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|red_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|red_out~q\);

-- Location: LCCOMB_X28_Y19_N26
\inst3|green_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|green_out~feeder_combout\ = \inst3|red_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|red_out~1_combout\,
	combout => \inst3|green_out~feeder_combout\);

-- Location: FF_X28_Y19_N27
\inst3|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|green_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|green_out~q\);

-- Location: LCCOMB_X26_Y20_N0
\inst3|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~1_combout\ = (!\inst3|h_count\(8) & (\inst3|h_count\(7) & \inst3|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|h_count\(8),
	datab => \inst3|h_count\(7),
	datac => \inst3|h_count\(9),
	combout => \inst3|process_0~1_combout\);

-- Location: LCCOMB_X26_Y20_N28
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

-- Location: FF_X26_Y20_N29
\inst3|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|horiz_sync~q\);

-- Location: FF_X26_Y18_N25
\inst3|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|horiz_sync_out~q\);

-- Location: LCCOMB_X24_Y19_N16
\inst3|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_0~6_combout\ = (\inst3|process_0~5_combout\) # ((\inst3|v_count\(9)) # ((\inst3|v_count\(4)) # (!\inst3|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~5_combout\,
	datab => \inst3|v_count\(9),
	datac => \inst3|v_count\(4),
	datad => \inst3|LessThan7~0_combout\,
	combout => \inst3|process_0~6_combout\);

-- Location: FF_X24_Y19_N17
\inst3|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vert_sync~q\);

-- Location: LCCOMB_X38_Y19_N16
\inst3|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|vert_sync_out~feeder_combout\ = \inst3|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|vert_sync~q\,
	combout => \inst3|vert_sync_out~feeder_combout\);

-- Location: FF_X38_Y19_N17
\inst3|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vert_sync_out~q\);
END structure;


