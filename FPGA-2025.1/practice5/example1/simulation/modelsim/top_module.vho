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

-- DATE "06/12/2025 13:20:01"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_module IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	btn_inc : IN std_logic;
	btn_dec : IN std_logic;
	pwm_out : OUT std_logic;
	sawtooth_out : OUT std_logic_vector(7 DOWNTO 0);
	dac_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END top_module;

-- Design Ports Information
-- pwm_out	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sawtooth_out[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sawtooth_out[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sawtooth_out[2]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sawtooth_out[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sawtooth_out[4]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sawtooth_out[5]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sawtooth_out[6]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sawtooth_out[7]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dac_data[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dac_data[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dac_data[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dac_data[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dac_data[4]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dac_data[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dac_data[6]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dac_data[7]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn_inc	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn_dec	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_module IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_btn_inc : std_logic;
SIGNAL ww_btn_dec : std_logic;
SIGNAL ww_pwm_out : std_logic;
SIGNAL ww_sawtooth_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dac_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1_CLK_PRESCALER|s_clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3_PWM_CONTROLLER|Add1~4_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~6_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~10_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~12_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~0_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~2_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~8_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|Add0~1\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|Add0~2_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|Add0~3\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|Add0~4_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|Add0~5\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|Add0~6_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|Add0~7\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|Add0~8_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|process_1~0_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|Equal0~0_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|s_count~1_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|s_count~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \btn_inc~combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_btn_inc_prev~0_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_btn_inc_prev~regout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~0_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~1\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~3\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~4_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle[2]~2_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~7\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~9\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~10_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle[5]~5_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~1\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~2_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle[1]~1_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~3\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~5\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~7\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~8_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle[4]~4_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle~12_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle[6]~15_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~5\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~6_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle[3]~3_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~11\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~12_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle[6]~6_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|LessThan2~1_combout\ : std_logic;
SIGNAL \btn_dec~combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_btn_dec_prev~0_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_btn_dec_prev~regout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|LessThan2~0_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle[0]~0_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle~11_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle~16_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~9\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~11\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~13\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add1~14_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~13\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|Add0~14_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle~17_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle~14_combout\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[0]~21_combout\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~8\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~9_combout\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~10\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~12\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~13_combout\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~14\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~16\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]~17_combout\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]~18\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[7]~19_combout\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~11_combout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|LessThan0~1_cout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|LessThan0~3_cout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|LessThan0~5_cout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|LessThan0~7_cout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|LessThan0~9_cout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|LessThan0~11_cout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|LessThan0~13_cout\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|LessThan0~14_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|Add0~0_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|s_count~0_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|s_clk_out~0_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|s_clk_out~regout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|s_clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~7_combout\ : std_logic;
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~15_combout\ : std_logic;
SIGNAL \U1_CLK_PRESCALER|s_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3_PWM_CONTROLLER|s_duty_cycle\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \U3_PWM_CONTROLLER|ALT_INV_s_duty_cycle\ : std_logic_vector(7 DOWNTO 7);

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_btn_inc <= btn_inc;
ww_btn_dec <= btn_dec;
pwm_out <= ww_pwm_out;
sawtooth_out <= ww_sawtooth_out;
dac_data <= ww_dac_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);

\U1_CLK_PRESCALER|s_clk_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \U1_CLK_PRESCALER|s_clk_out~regout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;
\U3_PWM_CONTROLLER|ALT_INV_s_duty_cycle\(7) <= NOT \U3_PWM_CONTROLLER|s_duty_cycle\(7);

-- Location: LCCOMB_X31_Y19_N4
\U3_PWM_CONTROLLER|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add1~4_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(2) & ((GND) # (!\U3_PWM_CONTROLLER|Add1~3\))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(2) & (\U3_PWM_CONTROLLER|Add1~3\ $ (GND)))
-- \U3_PWM_CONTROLLER|Add1~5\ = CARRY((\U3_PWM_CONTROLLER|s_duty_cycle\(2)) # (!\U3_PWM_CONTROLLER|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(2),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add1~3\,
	combout => \U3_PWM_CONTROLLER|Add1~4_combout\,
	cout => \U3_PWM_CONTROLLER|Add1~5\);

-- Location: LCCOMB_X31_Y19_N6
\U3_PWM_CONTROLLER|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add1~6_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(3) & (\U3_PWM_CONTROLLER|Add1~5\ & VCC)) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(3) & (!\U3_PWM_CONTROLLER|Add1~5\))
-- \U3_PWM_CONTROLLER|Add1~7\ = CARRY((!\U3_PWM_CONTROLLER|s_duty_cycle\(3) & !\U3_PWM_CONTROLLER|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(3),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add1~5\,
	combout => \U3_PWM_CONTROLLER|Add1~6_combout\,
	cout => \U3_PWM_CONTROLLER|Add1~7\);

-- Location: LCCOMB_X31_Y19_N10
\U3_PWM_CONTROLLER|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add1~10_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(5) & (\U3_PWM_CONTROLLER|Add1~9\ & VCC)) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(5) & (!\U3_PWM_CONTROLLER|Add1~9\))
-- \U3_PWM_CONTROLLER|Add1~11\ = CARRY((!\U3_PWM_CONTROLLER|s_duty_cycle\(5) & !\U3_PWM_CONTROLLER|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(5),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add1~9\,
	combout => \U3_PWM_CONTROLLER|Add1~10_combout\,
	cout => \U3_PWM_CONTROLLER|Add1~11\);

-- Location: LCCOMB_X31_Y19_N12
\U3_PWM_CONTROLLER|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add1~12_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(6) & ((GND) # (!\U3_PWM_CONTROLLER|Add1~11\))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(6) & (\U3_PWM_CONTROLLER|Add1~11\ $ (GND)))
-- \U3_PWM_CONTROLLER|Add1~13\ = CARRY((\U3_PWM_CONTROLLER|s_duty_cycle\(6)) # (!\U3_PWM_CONTROLLER|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(6),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add1~11\,
	combout => \U3_PWM_CONTROLLER|Add1~12_combout\,
	cout => \U3_PWM_CONTROLLER|Add1~13\);

-- Location: LCCOMB_X30_Y19_N12
\U3_PWM_CONTROLLER|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add0~0_combout\ = \U3_PWM_CONTROLLER|s_duty_cycle\(0) $ (VCC)
-- \U3_PWM_CONTROLLER|Add0~1\ = CARRY(\U3_PWM_CONTROLLER|s_duty_cycle\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(0),
	datad => VCC,
	combout => \U3_PWM_CONTROLLER|Add0~0_combout\,
	cout => \U3_PWM_CONTROLLER|Add0~1\);

-- Location: LCCOMB_X30_Y19_N14
\U3_PWM_CONTROLLER|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add0~2_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(1) & (!\U3_PWM_CONTROLLER|Add0~1\)) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(1) & ((\U3_PWM_CONTROLLER|Add0~1\) # (GND)))
-- \U3_PWM_CONTROLLER|Add0~3\ = CARRY((!\U3_PWM_CONTROLLER|Add0~1\) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(1),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add0~1\,
	combout => \U3_PWM_CONTROLLER|Add0~2_combout\,
	cout => \U3_PWM_CONTROLLER|Add0~3\);

-- Location: LCCOMB_X30_Y19_N20
\U3_PWM_CONTROLLER|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add0~8_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(4) & (\U3_PWM_CONTROLLER|Add0~7\ $ (GND))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(4) & (!\U3_PWM_CONTROLLER|Add0~7\ & VCC))
-- \U3_PWM_CONTROLLER|Add0~9\ = CARRY((\U3_PWM_CONTROLLER|s_duty_cycle\(4) & !\U3_PWM_CONTROLLER|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(4),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add0~7\,
	combout => \U3_PWM_CONTROLLER|Add0~8_combout\,
	cout => \U3_PWM_CONTROLLER|Add0~9\);

-- Location: LCCOMB_X1_Y13_N10
\U1_CLK_PRESCALER|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_CLK_PRESCALER|Add0~0_combout\ = \U1_CLK_PRESCALER|s_count\(0) $ (VCC)
-- \U1_CLK_PRESCALER|Add0~1\ = CARRY(\U1_CLK_PRESCALER|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_CLK_PRESCALER|s_count\(0),
	datad => VCC,
	combout => \U1_CLK_PRESCALER|Add0~0_combout\,
	cout => \U1_CLK_PRESCALER|Add0~1\);

-- Location: LCCOMB_X1_Y13_N12
\U1_CLK_PRESCALER|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_CLK_PRESCALER|Add0~2_combout\ = (\U1_CLK_PRESCALER|s_count\(1) & (!\U1_CLK_PRESCALER|Add0~1\)) # (!\U1_CLK_PRESCALER|s_count\(1) & ((\U1_CLK_PRESCALER|Add0~1\) # (GND)))
-- \U1_CLK_PRESCALER|Add0~3\ = CARRY((!\U1_CLK_PRESCALER|Add0~1\) # (!\U1_CLK_PRESCALER|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_CLK_PRESCALER|s_count\(1),
	datad => VCC,
	cin => \U1_CLK_PRESCALER|Add0~1\,
	combout => \U1_CLK_PRESCALER|Add0~2_combout\,
	cout => \U1_CLK_PRESCALER|Add0~3\);

-- Location: LCCOMB_X1_Y13_N14
\U1_CLK_PRESCALER|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_CLK_PRESCALER|Add0~4_combout\ = (\U1_CLK_PRESCALER|s_count\(2) & (\U1_CLK_PRESCALER|Add0~3\ $ (GND))) # (!\U1_CLK_PRESCALER|s_count\(2) & (!\U1_CLK_PRESCALER|Add0~3\ & VCC))
-- \U1_CLK_PRESCALER|Add0~5\ = CARRY((\U1_CLK_PRESCALER|s_count\(2) & !\U1_CLK_PRESCALER|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_CLK_PRESCALER|s_count\(2),
	datad => VCC,
	cin => \U1_CLK_PRESCALER|Add0~3\,
	combout => \U1_CLK_PRESCALER|Add0~4_combout\,
	cout => \U1_CLK_PRESCALER|Add0~5\);

-- Location: LCCOMB_X1_Y13_N16
\U1_CLK_PRESCALER|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_CLK_PRESCALER|Add0~6_combout\ = (\U1_CLK_PRESCALER|s_count\(3) & (!\U1_CLK_PRESCALER|Add0~5\)) # (!\U1_CLK_PRESCALER|s_count\(3) & ((\U1_CLK_PRESCALER|Add0~5\) # (GND)))
-- \U1_CLK_PRESCALER|Add0~7\ = CARRY((!\U1_CLK_PRESCALER|Add0~5\) # (!\U1_CLK_PRESCALER|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_CLK_PRESCALER|s_count\(3),
	datad => VCC,
	cin => \U1_CLK_PRESCALER|Add0~5\,
	combout => \U1_CLK_PRESCALER|Add0~6_combout\,
	cout => \U1_CLK_PRESCALER|Add0~7\);

-- Location: LCCOMB_X1_Y13_N18
\U1_CLK_PRESCALER|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_CLK_PRESCALER|Add0~8_combout\ = \U1_CLK_PRESCALER|Add0~7\ $ (!\U1_CLK_PRESCALER|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1_CLK_PRESCALER|s_count\(4),
	cin => \U1_CLK_PRESCALER|Add0~7\,
	combout => \U1_CLK_PRESCALER|Add0~8_combout\);

-- Location: LCCOMB_X29_Y19_N30
\U3_PWM_CONTROLLER|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|process_1~0_combout\ = (!\btn_inc~combout\ & !\U3_PWM_CONTROLLER|s_btn_inc_prev~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_inc~combout\,
	datad => \U3_PWM_CONTROLLER|s_btn_inc_prev~regout\,
	combout => \U3_PWM_CONTROLLER|process_1~0_combout\);

-- Location: LCFF_X1_Y13_N27
\U1_CLK_PRESCALER|s_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U1_CLK_PRESCALER|s_count~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1_CLK_PRESCALER|s_count\(4));

-- Location: LCFF_X1_Y13_N23
\U1_CLK_PRESCALER|s_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U1_CLK_PRESCALER|s_count~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1_CLK_PRESCALER|s_count\(1));

-- Location: LCFF_X1_Y13_N17
\U1_CLK_PRESCALER|s_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U1_CLK_PRESCALER|Add0~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1_CLK_PRESCALER|s_count\(3));

-- Location: LCFF_X1_Y13_N15
\U1_CLK_PRESCALER|s_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U1_CLK_PRESCALER|Add0~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1_CLK_PRESCALER|s_count\(2));

-- Location: LCCOMB_X1_Y13_N20
\U1_CLK_PRESCALER|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_CLK_PRESCALER|Equal0~0_combout\ = (!\U1_CLK_PRESCALER|s_count\(3) & (\U1_CLK_PRESCALER|s_count\(1) & (!\U1_CLK_PRESCALER|s_count\(2) & \U1_CLK_PRESCALER|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_CLK_PRESCALER|s_count\(3),
	datab => \U1_CLK_PRESCALER|s_count\(1),
	datac => \U1_CLK_PRESCALER|s_count\(2),
	datad => \U1_CLK_PRESCALER|s_count\(4),
	combout => \U1_CLK_PRESCALER|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y13_N26
\U1_CLK_PRESCALER|s_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_CLK_PRESCALER|s_count~1_combout\ = \U1_CLK_PRESCALER|Add0~8_combout\ $ (((!\U1_CLK_PRESCALER|s_count\(0) & \U1_CLK_PRESCALER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_CLK_PRESCALER|s_count\(0),
	datac => \U1_CLK_PRESCALER|Equal0~0_combout\,
	datad => \U1_CLK_PRESCALER|Add0~8_combout\,
	combout => \U1_CLK_PRESCALER|s_count~1_combout\);

-- Location: LCCOMB_X1_Y13_N22
\U1_CLK_PRESCALER|s_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_CLK_PRESCALER|s_count~2_combout\ = \U1_CLK_PRESCALER|Add0~2_combout\ $ (((!\U1_CLK_PRESCALER|s_count\(0) & \U1_CLK_PRESCALER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_CLK_PRESCALER|s_count\(0),
	datac => \U1_CLK_PRESCALER|Equal0~0_combout\,
	datad => \U1_CLK_PRESCALER|Add0~2_combout\,
	combout => \U1_CLK_PRESCALER|s_count~2_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn_inc~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_btn_inc,
	combout => \btn_inc~combout\);

-- Location: LCCOMB_X29_Y19_N28
\U3_PWM_CONTROLLER|s_btn_inc_prev~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_btn_inc_prev~0_combout\ = !\btn_inc~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_inc~combout\,
	combout => \U3_PWM_CONTROLLER|s_btn_inc_prev~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: LCFF_X29_Y19_N29
\U3_PWM_CONTROLLER|s_btn_inc_prev\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U3_PWM_CONTROLLER|s_btn_inc_prev~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3_PWM_CONTROLLER|s_btn_inc_prev~regout\);

-- Location: LCCOMB_X31_Y19_N0
\U3_PWM_CONTROLLER|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add1~0_combout\ = \U3_PWM_CONTROLLER|s_duty_cycle\(0) $ (VCC)
-- \U3_PWM_CONTROLLER|Add1~1\ = CARRY(\U3_PWM_CONTROLLER|s_duty_cycle\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(0),
	datad => VCC,
	combout => \U3_PWM_CONTROLLER|Add1~0_combout\,
	cout => \U3_PWM_CONTROLLER|Add1~1\);

-- Location: LCCOMB_X30_Y19_N16
\U3_PWM_CONTROLLER|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add0~4_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(2) & (\U3_PWM_CONTROLLER|Add0~3\ $ (GND))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(2) & (!\U3_PWM_CONTROLLER|Add0~3\ & VCC))
-- \U3_PWM_CONTROLLER|Add0~5\ = CARRY((\U3_PWM_CONTROLLER|s_duty_cycle\(2) & !\U3_PWM_CONTROLLER|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(2),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add0~3\,
	combout => \U3_PWM_CONTROLLER|Add0~4_combout\,
	cout => \U3_PWM_CONTROLLER|Add0~5\);

-- Location: LCCOMB_X31_Y19_N24
\U3_PWM_CONTROLLER|s_duty_cycle[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle[2]~2_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & (\U3_PWM_CONTROLLER|Add1~4_combout\)) # (!\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & ((\U3_PWM_CONTROLLER|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|Add1~4_combout\,
	datab => \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\,
	datad => \U3_PWM_CONTROLLER|Add0~4_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle[2]~2_combout\);

-- Location: LCCOMB_X30_Y19_N18
\U3_PWM_CONTROLLER|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add0~6_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(3) & (!\U3_PWM_CONTROLLER|Add0~5\)) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(3) & ((\U3_PWM_CONTROLLER|Add0~5\) # (GND)))
-- \U3_PWM_CONTROLLER|Add0~7\ = CARRY((!\U3_PWM_CONTROLLER|Add0~5\) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(3),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add0~5\,
	combout => \U3_PWM_CONTROLLER|Add0~6_combout\,
	cout => \U3_PWM_CONTROLLER|Add0~7\);

-- Location: LCCOMB_X30_Y19_N22
\U3_PWM_CONTROLLER|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add0~10_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(5) & (!\U3_PWM_CONTROLLER|Add0~9\)) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(5) & ((\U3_PWM_CONTROLLER|Add0~9\) # (GND)))
-- \U3_PWM_CONTROLLER|Add0~11\ = CARRY((!\U3_PWM_CONTROLLER|Add0~9\) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(5),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add0~9\,
	combout => \U3_PWM_CONTROLLER|Add0~10_combout\,
	cout => \U3_PWM_CONTROLLER|Add0~11\);

-- Location: LCCOMB_X31_Y19_N30
\U3_PWM_CONTROLLER|s_duty_cycle[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle[5]~5_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & (\U3_PWM_CONTROLLER|Add1~10_combout\)) # (!\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & ((\U3_PWM_CONTROLLER|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|Add1~10_combout\,
	datab => \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\,
	datad => \U3_PWM_CONTROLLER|Add0~10_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle[5]~5_combout\);

-- Location: LCFF_X31_Y19_N31
\U3_PWM_CONTROLLER|s_duty_cycle[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U3_PWM_CONTROLLER|s_duty_cycle[5]~5_combout\,
	sdata => \U3_PWM_CONTROLLER|s_duty_cycle\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \U3_PWM_CONTROLLER|s_duty_cycle[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3_PWM_CONTROLLER|s_duty_cycle\(5));

-- Location: LCCOMB_X31_Y19_N2
\U3_PWM_CONTROLLER|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add1~2_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(1) & (\U3_PWM_CONTROLLER|Add1~1\ & VCC)) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(1) & (!\U3_PWM_CONTROLLER|Add1~1\))
-- \U3_PWM_CONTROLLER|Add1~3\ = CARRY((!\U3_PWM_CONTROLLER|s_duty_cycle\(1) & !\U3_PWM_CONTROLLER|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(1),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add1~1\,
	combout => \U3_PWM_CONTROLLER|Add1~2_combout\,
	cout => \U3_PWM_CONTROLLER|Add1~3\);

-- Location: LCCOMB_X31_Y19_N26
\U3_PWM_CONTROLLER|s_duty_cycle[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle[1]~1_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & ((\U3_PWM_CONTROLLER|Add1~2_combout\))) # (!\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & (\U3_PWM_CONTROLLER|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|Add0~2_combout\,
	datab => \U3_PWM_CONTROLLER|Add1~2_combout\,
	datad => \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle[1]~1_combout\);

-- Location: LCFF_X31_Y19_N27
\U3_PWM_CONTROLLER|s_duty_cycle[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U3_PWM_CONTROLLER|s_duty_cycle[1]~1_combout\,
	sdata => \U3_PWM_CONTROLLER|s_duty_cycle\(1),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \U3_PWM_CONTROLLER|s_duty_cycle[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3_PWM_CONTROLLER|s_duty_cycle\(1));

-- Location: LCCOMB_X31_Y19_N8
\U3_PWM_CONTROLLER|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add1~8_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(4) & ((GND) # (!\U3_PWM_CONTROLLER|Add1~7\))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(4) & (\U3_PWM_CONTROLLER|Add1~7\ $ (GND)))
-- \U3_PWM_CONTROLLER|Add1~9\ = CARRY((\U3_PWM_CONTROLLER|s_duty_cycle\(4)) # (!\U3_PWM_CONTROLLER|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(4),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add1~7\,
	combout => \U3_PWM_CONTROLLER|Add1~8_combout\,
	cout => \U3_PWM_CONTROLLER|Add1~9\);

-- Location: LCCOMB_X31_Y19_N20
\U3_PWM_CONTROLLER|s_duty_cycle[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle[4]~4_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & ((\U3_PWM_CONTROLLER|Add1~8_combout\))) # (!\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & (\U3_PWM_CONTROLLER|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|Add0~8_combout\,
	datab => \U3_PWM_CONTROLLER|Add1~8_combout\,
	datad => \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle[4]~4_combout\);

-- Location: LCFF_X31_Y19_N21
\U3_PWM_CONTROLLER|s_duty_cycle[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U3_PWM_CONTROLLER|s_duty_cycle[4]~4_combout\,
	sdata => \U3_PWM_CONTROLLER|s_duty_cycle\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \U3_PWM_CONTROLLER|s_duty_cycle[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3_PWM_CONTROLLER|s_duty_cycle\(4));

-- Location: LCCOMB_X30_Y19_N4
\U3_PWM_CONTROLLER|s_duty_cycle~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle~12_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(6) & (\U3_PWM_CONTROLLER|s_duty_cycle\(5) & (\U3_PWM_CONTROLLER|s_duty_cycle\(4) & \U3_PWM_CONTROLLER|s_duty_cycle\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(6),
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(5),
	datac => \U3_PWM_CONTROLLER|s_duty_cycle\(4),
	datad => \U3_PWM_CONTROLLER|s_duty_cycle\(3),
	combout => \U3_PWM_CONTROLLER|s_duty_cycle~12_combout\);

-- Location: LCCOMB_X30_Y19_N30
\U3_PWM_CONTROLLER|s_duty_cycle[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle[6]~15_combout\ = (!\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & (((\U3_PWM_CONTROLLER|s_duty_cycle~11_combout\ & \U3_PWM_CONTROLLER|s_duty_cycle~12_combout\)) # (!\U3_PWM_CONTROLLER|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|process_1~0_combout\,
	datab => \U3_PWM_CONTROLLER|s_duty_cycle~11_combout\,
	datac => \U3_PWM_CONTROLLER|s_duty_cycle~12_combout\,
	datad => \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle[6]~15_combout\);

-- Location: LCFF_X31_Y19_N25
\U3_PWM_CONTROLLER|s_duty_cycle[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U3_PWM_CONTROLLER|s_duty_cycle[2]~2_combout\,
	sdata => \U3_PWM_CONTROLLER|s_duty_cycle\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \U3_PWM_CONTROLLER|s_duty_cycle[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3_PWM_CONTROLLER|s_duty_cycle\(2));

-- Location: LCCOMB_X31_Y19_N22
\U3_PWM_CONTROLLER|s_duty_cycle[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle[3]~3_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & (\U3_PWM_CONTROLLER|Add1~6_combout\)) # (!\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & ((\U3_PWM_CONTROLLER|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|Add1~6_combout\,
	datab => \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\,
	datad => \U3_PWM_CONTROLLER|Add0~6_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle[3]~3_combout\);

-- Location: LCFF_X31_Y19_N23
\U3_PWM_CONTROLLER|s_duty_cycle[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U3_PWM_CONTROLLER|s_duty_cycle[3]~3_combout\,
	sdata => \U3_PWM_CONTROLLER|s_duty_cycle\(3),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \U3_PWM_CONTROLLER|s_duty_cycle[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3_PWM_CONTROLLER|s_duty_cycle\(3));

-- Location: LCCOMB_X30_Y19_N24
\U3_PWM_CONTROLLER|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add0~12_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(6) & (\U3_PWM_CONTROLLER|Add0~11\ $ (GND))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(6) & (!\U3_PWM_CONTROLLER|Add0~11\ & VCC))
-- \U3_PWM_CONTROLLER|Add0~13\ = CARRY((\U3_PWM_CONTROLLER|s_duty_cycle\(6) & !\U3_PWM_CONTROLLER|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(6),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|Add0~11\,
	combout => \U3_PWM_CONTROLLER|Add0~12_combout\,
	cout => \U3_PWM_CONTROLLER|Add0~13\);

-- Location: LCCOMB_X31_Y19_N16
\U3_PWM_CONTROLLER|s_duty_cycle[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle[6]~6_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & (\U3_PWM_CONTROLLER|Add1~12_combout\)) # (!\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & ((\U3_PWM_CONTROLLER|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|Add1~12_combout\,
	datab => \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\,
	datad => \U3_PWM_CONTROLLER|Add0~12_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle[6]~6_combout\);

-- Location: LCFF_X31_Y19_N17
\U3_PWM_CONTROLLER|s_duty_cycle[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U3_PWM_CONTROLLER|s_duty_cycle[6]~6_combout\,
	sdata => \U3_PWM_CONTROLLER|s_duty_cycle\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \U3_PWM_CONTROLLER|s_duty_cycle[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3_PWM_CONTROLLER|s_duty_cycle\(6));

-- Location: LCCOMB_X31_Y19_N18
\U3_PWM_CONTROLLER|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|LessThan2~1_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(4)) # ((\U3_PWM_CONTROLLER|s_duty_cycle\(3)) # ((\U3_PWM_CONTROLLER|s_duty_cycle\(6)) # (\U3_PWM_CONTROLLER|s_duty_cycle\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(4),
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(3),
	datac => \U3_PWM_CONTROLLER|s_duty_cycle\(6),
	datad => \U3_PWM_CONTROLLER|s_duty_cycle\(5),
	combout => \U3_PWM_CONTROLLER|LessThan2~1_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn_dec~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_btn_dec,
	combout => \btn_dec~combout\);

-- Location: LCCOMB_X30_Y19_N10
\U3_PWM_CONTROLLER|s_btn_dec_prev~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_btn_dec_prev~0_combout\ = !\btn_dec~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_dec~combout\,
	combout => \U3_PWM_CONTROLLER|s_btn_dec_prev~0_combout\);

-- Location: LCFF_X30_Y19_N29
\U3_PWM_CONTROLLER|s_btn_dec_prev\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U3_PWM_CONTROLLER|s_btn_dec_prev~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3_PWM_CONTROLLER|s_btn_dec_prev~regout\);

-- Location: LCCOMB_X30_Y19_N6
\U3_PWM_CONTROLLER|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|LessThan2~0_combout\ = ((\U3_PWM_CONTROLLER|s_duty_cycle\(0)) # ((\U3_PWM_CONTROLLER|s_duty_cycle\(1)) # (\U3_PWM_CONTROLLER|s_duty_cycle\(2)))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(7),
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(0),
	datac => \U3_PWM_CONTROLLER|s_duty_cycle\(1),
	datad => \U3_PWM_CONTROLLER|s_duty_cycle\(2),
	combout => \U3_PWM_CONTROLLER|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y19_N28
\U3_PWM_CONTROLLER|s_duty_cycle~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ = (!\btn_dec~combout\ & (!\U3_PWM_CONTROLLER|s_btn_dec_prev~regout\ & ((\U3_PWM_CONTROLLER|LessThan2~1_combout\) # (\U3_PWM_CONTROLLER|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_dec~combout\,
	datab => \U3_PWM_CONTROLLER|LessThan2~1_combout\,
	datac => \U3_PWM_CONTROLLER|s_btn_dec_prev~regout\,
	datad => \U3_PWM_CONTROLLER|LessThan2~0_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\);

-- Location: LCCOMB_X31_Y19_N28
\U3_PWM_CONTROLLER|s_duty_cycle[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle[0]~0_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & ((\U3_PWM_CONTROLLER|Add1~0_combout\))) # (!\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & (\U3_PWM_CONTROLLER|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|Add0~0_combout\,
	datab => \U3_PWM_CONTROLLER|Add1~0_combout\,
	datad => \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle[0]~0_combout\);

-- Location: LCFF_X31_Y19_N29
\U3_PWM_CONTROLLER|s_duty_cycle[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U3_PWM_CONTROLLER|s_duty_cycle[0]~0_combout\,
	sdata => \U3_PWM_CONTROLLER|s_duty_cycle\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => \U3_PWM_CONTROLLER|s_duty_cycle[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3_PWM_CONTROLLER|s_duty_cycle\(0));

-- Location: LCCOMB_X30_Y19_N2
\U3_PWM_CONTROLLER|s_duty_cycle~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle~11_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(1) & (!\U3_PWM_CONTROLLER|s_duty_cycle\(7) & (\U3_PWM_CONTROLLER|s_duty_cycle\(0) & \U3_PWM_CONTROLLER|s_duty_cycle\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(1),
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(7),
	datac => \U3_PWM_CONTROLLER|s_duty_cycle\(0),
	datad => \U3_PWM_CONTROLLER|s_duty_cycle\(2),
	combout => \U3_PWM_CONTROLLER|s_duty_cycle~11_combout\);

-- Location: LCCOMB_X29_Y19_N16
\U3_PWM_CONTROLLER|s_duty_cycle~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle~16_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle~12_combout\ & (!\U3_PWM_CONTROLLER|s_btn_inc_prev~regout\ & (!\btn_inc~combout\ & \U3_PWM_CONTROLLER|s_duty_cycle~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle~12_combout\,
	datab => \U3_PWM_CONTROLLER|s_btn_inc_prev~regout\,
	datac => \btn_inc~combout\,
	datad => \U3_PWM_CONTROLLER|s_duty_cycle~11_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle~16_combout\);

-- Location: LCCOMB_X31_Y19_N14
\U3_PWM_CONTROLLER|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add1~14_combout\ = \U3_PWM_CONTROLLER|Add1~13\ $ (\U3_PWM_CONTROLLER|s_duty_cycle\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3_PWM_CONTROLLER|s_duty_cycle\(7),
	cin => \U3_PWM_CONTROLLER|Add1~13\,
	combout => \U3_PWM_CONTROLLER|Add1~14_combout\);

-- Location: LCCOMB_X30_Y19_N26
\U3_PWM_CONTROLLER|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|Add0~14_combout\ = \U3_PWM_CONTROLLER|s_duty_cycle\(7) $ (!\U3_PWM_CONTROLLER|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(7),
	cin => \U3_PWM_CONTROLLER|Add0~13\,
	combout => \U3_PWM_CONTROLLER|Add0~14_combout\);

-- Location: LCCOMB_X30_Y19_N0
\U3_PWM_CONTROLLER|s_duty_cycle~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle~17_combout\ = (\btn_inc~combout\ & (((!\U3_PWM_CONTROLLER|s_duty_cycle\(7))))) # (!\btn_inc~combout\ & ((\U3_PWM_CONTROLLER|s_btn_inc_prev~regout\ & (!\U3_PWM_CONTROLLER|s_duty_cycle\(7))) # 
-- (!\U3_PWM_CONTROLLER|s_btn_inc_prev~regout\ & ((\U3_PWM_CONTROLLER|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~combout\,
	datab => \U3_PWM_CONTROLLER|s_btn_inc_prev~regout\,
	datac => \U3_PWM_CONTROLLER|s_duty_cycle\(7),
	datad => \U3_PWM_CONTROLLER|Add0~14_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle~17_combout\);

-- Location: LCCOMB_X30_Y19_N8
\U3_PWM_CONTROLLER|s_duty_cycle~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|s_duty_cycle~14_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & (((!\U3_PWM_CONTROLLER|Add1~14_combout\)))) # (!\U3_PWM_CONTROLLER|s_duty_cycle~13_combout\ & (!\U3_PWM_CONTROLLER|s_duty_cycle~16_combout\ & 
-- ((!\U3_PWM_CONTROLLER|s_duty_cycle~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle~13_combout\,
	datab => \U3_PWM_CONTROLLER|s_duty_cycle~16_combout\,
	datac => \U3_PWM_CONTROLLER|Add1~14_combout\,
	datad => \U3_PWM_CONTROLLER|s_duty_cycle~17_combout\,
	combout => \U3_PWM_CONTROLLER|s_duty_cycle~14_combout\);

-- Location: LCFF_X30_Y19_N9
\U3_PWM_CONTROLLER|s_duty_cycle[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U3_PWM_CONTROLLER|s_duty_cycle~14_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3_PWM_CONTROLLER|s_duty_cycle\(7));

-- Location: LCCOMB_X30_Y26_N30
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[0]~21_combout\ = !\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(0),
	combout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[0]~21_combout\);

-- Location: LCFF_X30_Y26_N31
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U1_CLK_PRESCALER|s_clk_out~clkctrl_outclk\,
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[0]~21_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(0));

-- Location: LCCOMB_X30_Y26_N16
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~7_combout\ = (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(1) & (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(0) $ (VCC))) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(1) & (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(0) & 
-- VCC))
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~8\ = CARRY((\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(1) & \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(1),
	datab => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(0),
	datad => VCC,
	combout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~7_combout\,
	cout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~8\);

-- Location: LCCOMB_X30_Y26_N18
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~9_combout\ = (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(2) & (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~8\)) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(2) & ((\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~8\) # 
-- (GND)))
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~10\ = CARRY((!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~8\) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(2),
	datad => VCC,
	cin => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~8\,
	combout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~9_combout\,
	cout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~10\);

-- Location: LCFF_X30_Y26_N19
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U1_CLK_PRESCALER|s_clk_out~clkctrl_outclk\,
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~9_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(2));

-- Location: LCCOMB_X30_Y26_N20
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~11_combout\ = (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(3) & (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~10\ $ (GND))) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(3) & 
-- (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~10\ & VCC))
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~12\ = CARRY((\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(3) & !\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(3),
	datad => VCC,
	cin => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[2]~10\,
	combout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~11_combout\,
	cout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~12\);

-- Location: LCCOMB_X30_Y26_N22
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~13_combout\ = (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(4) & (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~12\)) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(4) & ((\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~12\) 
-- # (GND)))
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~14\ = CARRY((!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~12\) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(4),
	datad => VCC,
	cin => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~12\,
	combout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~13_combout\,
	cout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~14\);

-- Location: LCFF_X30_Y26_N23
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U1_CLK_PRESCALER|s_clk_out~clkctrl_outclk\,
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~13_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(4));

-- Location: LCCOMB_X30_Y26_N24
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~15_combout\ = (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(5) & (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~14\ $ (GND))) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(5) & 
-- (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~14\ & VCC))
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~16\ = CARRY((\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(5) & !\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(5),
	datad => VCC,
	cin => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[4]~14\,
	combout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~15_combout\,
	cout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~16\);

-- Location: LCCOMB_X30_Y26_N26
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]~17_combout\ = (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(6) & (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~16\)) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(6) & ((\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~16\) 
-- # (GND)))
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]~18\ = CARRY((!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~16\) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(6),
	datad => VCC,
	cin => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~16\,
	combout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]~17_combout\,
	cout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]~18\);

-- Location: LCFF_X30_Y26_N27
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U1_CLK_PRESCALER|s_clk_out~clkctrl_outclk\,
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]~17_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(6));

-- Location: LCCOMB_X30_Y26_N28
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[7]~19_combout\ = \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]~18\ $ (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(7),
	cin => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[6]~18\,
	combout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[7]~19_combout\);

-- Location: LCFF_X30_Y26_N29
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U1_CLK_PRESCALER|s_clk_out~clkctrl_outclk\,
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[7]~19_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(7));

-- Location: LCFF_X30_Y26_N21
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U1_CLK_PRESCALER|s_clk_out~clkctrl_outclk\,
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[3]~11_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(3));

-- Location: LCCOMB_X30_Y26_N0
\U3_PWM_CONTROLLER|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|LessThan0~1_cout\ = CARRY((!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(0) & \U3_PWM_CONTROLLER|s_duty_cycle\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(0),
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(0),
	datad => VCC,
	cout => \U3_PWM_CONTROLLER|LessThan0~1_cout\);

-- Location: LCCOMB_X30_Y26_N2
\U3_PWM_CONTROLLER|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|LessThan0~3_cout\ = CARRY((\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(1) & ((!\U3_PWM_CONTROLLER|LessThan0~1_cout\) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(1)))) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(1) & 
-- (!\U3_PWM_CONTROLLER|s_duty_cycle\(1) & !\U3_PWM_CONTROLLER|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(1),
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(1),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|LessThan0~1_cout\,
	cout => \U3_PWM_CONTROLLER|LessThan0~3_cout\);

-- Location: LCCOMB_X30_Y26_N4
\U3_PWM_CONTROLLER|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|LessThan0~5_cout\ = CARRY((\U3_PWM_CONTROLLER|s_duty_cycle\(2) & ((!\U3_PWM_CONTROLLER|LessThan0~3_cout\) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(2)))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(2) & 
-- (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(2) & !\U3_PWM_CONTROLLER|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(2),
	datab => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(2),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|LessThan0~3_cout\,
	cout => \U3_PWM_CONTROLLER|LessThan0~5_cout\);

-- Location: LCCOMB_X30_Y26_N6
\U3_PWM_CONTROLLER|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|LessThan0~7_cout\ = CARRY((\U3_PWM_CONTROLLER|s_duty_cycle\(3) & (\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(3) & !\U3_PWM_CONTROLLER|LessThan0~5_cout\)) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(3) & 
-- ((\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(3)) # (!\U3_PWM_CONTROLLER|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(3),
	datab => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(3),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|LessThan0~5_cout\,
	cout => \U3_PWM_CONTROLLER|LessThan0~7_cout\);

-- Location: LCCOMB_X30_Y26_N8
\U3_PWM_CONTROLLER|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|LessThan0~9_cout\ = CARRY((\U3_PWM_CONTROLLER|s_duty_cycle\(4) & ((!\U3_PWM_CONTROLLER|LessThan0~7_cout\) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(4)))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(4) & 
-- (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(4) & !\U3_PWM_CONTROLLER|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(4),
	datab => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(4),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|LessThan0~7_cout\,
	cout => \U3_PWM_CONTROLLER|LessThan0~9_cout\);

-- Location: LCCOMB_X30_Y26_N10
\U3_PWM_CONTROLLER|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|LessThan0~11_cout\ = CARRY((\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(5) & ((!\U3_PWM_CONTROLLER|LessThan0~9_cout\) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(5)))) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(5) & 
-- (!\U3_PWM_CONTROLLER|s_duty_cycle\(5) & !\U3_PWM_CONTROLLER|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(5),
	datab => \U3_PWM_CONTROLLER|s_duty_cycle\(5),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|LessThan0~9_cout\,
	cout => \U3_PWM_CONTROLLER|LessThan0~11_cout\);

-- Location: LCCOMB_X30_Y26_N12
\U3_PWM_CONTROLLER|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|LessThan0~13_cout\ = CARRY((\U3_PWM_CONTROLLER|s_duty_cycle\(6) & ((!\U3_PWM_CONTROLLER|LessThan0~11_cout\) # (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(6)))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(6) & 
-- (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(6) & !\U3_PWM_CONTROLLER|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(6),
	datab => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(6),
	datad => VCC,
	cin => \U3_PWM_CONTROLLER|LessThan0~11_cout\,
	cout => \U3_PWM_CONTROLLER|LessThan0~13_cout\);

-- Location: LCCOMB_X30_Y26_N14
\U3_PWM_CONTROLLER|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U3_PWM_CONTROLLER|LessThan0~14_combout\ = (\U3_PWM_CONTROLLER|s_duty_cycle\(7) & (\U3_PWM_CONTROLLER|LessThan0~13_cout\ & !\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(7))) # (!\U3_PWM_CONTROLLER|s_duty_cycle\(7) & ((\U3_PWM_CONTROLLER|LessThan0~13_cout\) # 
-- (!\U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3_PWM_CONTROLLER|s_duty_cycle\(7),
	datad => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(7),
	cin => \U3_PWM_CONTROLLER|LessThan0~13_cout\,
	combout => \U3_PWM_CONTROLLER|LessThan0~14_combout\);

-- Location: LCCOMB_X1_Y13_N8
\U1_CLK_PRESCALER|s_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_CLK_PRESCALER|s_count~0_combout\ = \U1_CLK_PRESCALER|Add0~0_combout\ $ (((\U1_CLK_PRESCALER|Equal0~0_combout\ & !\U1_CLK_PRESCALER|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_CLK_PRESCALER|Equal0~0_combout\,
	datac => \U1_CLK_PRESCALER|s_count\(0),
	datad => \U1_CLK_PRESCALER|Add0~0_combout\,
	combout => \U1_CLK_PRESCALER|s_count~0_combout\);

-- Location: LCFF_X1_Y13_N9
\U1_CLK_PRESCALER|s_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U1_CLK_PRESCALER|s_count~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1_CLK_PRESCALER|s_count\(0));

-- Location: LCCOMB_X1_Y13_N28
\U1_CLK_PRESCALER|s_clk_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_CLK_PRESCALER|s_clk_out~0_combout\ = \U1_CLK_PRESCALER|s_clk_out~regout\ $ (((\U1_CLK_PRESCALER|Equal0~0_combout\ & !\U1_CLK_PRESCALER|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_CLK_PRESCALER|Equal0~0_combout\,
	datac => \U1_CLK_PRESCALER|s_clk_out~regout\,
	datad => \U1_CLK_PRESCALER|s_count\(0),
	combout => \U1_CLK_PRESCALER|s_clk_out~0_combout\);

-- Location: LCFF_X1_Y13_N29
\U1_CLK_PRESCALER|s_clk_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U1_CLK_PRESCALER|s_clk_out~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1_CLK_PRESCALER|s_clk_out~regout\);

-- Location: CLKCTRL_G2
\U1_CLK_PRESCALER|s_clk_out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1_CLK_PRESCALER|s_clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1_CLK_PRESCALER|s_clk_out~clkctrl_outclk\);

-- Location: LCFF_X30_Y26_N17
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U1_CLK_PRESCALER|s_clk_out~clkctrl_outclk\,
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[1]~7_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(1));

-- Location: LCFF_X30_Y26_N25
\U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U1_CLK_PRESCALER|s_clk_out~clkctrl_outclk\,
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count[5]~15_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(5));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pwm_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U3_PWM_CONTROLLER|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pwm_out);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sawtooth_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sawtooth_out(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sawtooth_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sawtooth_out(1));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sawtooth_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sawtooth_out(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sawtooth_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sawtooth_out(3));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sawtooth_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sawtooth_out(4));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sawtooth_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sawtooth_out(5));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sawtooth_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sawtooth_out(6));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sawtooth_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U2_SAWTOOTH_GENERATOR|s_sawtooth_count\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sawtooth_out(7));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dac_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U3_PWM_CONTROLLER|s_duty_cycle\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dac_data(0));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dac_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U3_PWM_CONTROLLER|s_duty_cycle\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dac_data(1));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dac_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U3_PWM_CONTROLLER|s_duty_cycle\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dac_data(2));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dac_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U3_PWM_CONTROLLER|s_duty_cycle\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dac_data(3));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dac_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U3_PWM_CONTROLLER|s_duty_cycle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dac_data(4));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dac_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U3_PWM_CONTROLLER|s_duty_cycle\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dac_data(5));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dac_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U3_PWM_CONTROLLER|s_duty_cycle\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dac_data(6));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dac_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U3_PWM_CONTROLLER|ALT_INV_s_duty_cycle\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dac_data(7));
END structure;


